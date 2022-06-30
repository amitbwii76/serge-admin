<?php
defined("BASEPATH") or exit("No direct script access allowed");
class Admin extends CI_Controller
{
    /**
     *Created by : Amit Sharma
     *Created At : 20-6-2022
     *Description : For Admin Functions
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model("login/Signin_Model");
        $this->load->model("admin/Crud_Model");
        $this->load->helper("login");
    }
    
    /* Showing Admin dashboard */
    public function dashboard()
    {
        isLogin();
        $data["TotalBlogs"] = $this->Crud_Model->get_TotalBlogs();
       
        
        $data["TotalCompanies"] = $this->Crud_Model->get_TotalCompanies();
        $data["TotalBooks"] = $this->Crud_Model->get_TotalBooks();
       // print_R($data);
        
        //exit;
        $this->load->view("admin/dashboard", $data);
        
        
    }
    /* For add new blog */
    public function addnewblog()
    {
        isLogin();
        $this->form_validation->set_rules("title", "Title", "trim|required");
        if (empty($_FILES["file"]["name"])) {
            $this->form_validation->set_rules("file", "Image", "required");
        }
        $this->form_validation->set_rules(
            "editor1",
            "Content",
            "trim|required"
        );

        if ($this->form_validation->run() == false) {
            $this->load->view("admin/addnewblog");
        } else {
            if (isset($_POST["submit"])) {
                $data = $_POST["editor1"];
                $data = trim($data);
                $data = stripslashes($data);
                $data = htmlspecialchars($data);
                $contents = $data;
                //print_R($contents);
                // exit;
                $data = [];
                if (!empty($_FILES["file"]["name"])) {
                    // Set preference
                    $config["upload_path"] = "upload/blog";
                    $config["allowed_types"] = "jpg|jpeg|png|gif";
                    //$config['max_size'] = '100'; // max_size in kb
                    $config["file_name"] =
                        time() . "-" . $_FILES["file"]["name"];

                    $this->load->library("upload", $config);
                    // File upload
                    if ($this->upload->do_upload("file")) {
                        // Get data about the file
                        $uploadData = $this->upload->data();
                        $filename = $uploadData["file_name"];
                        $title = trim($_POST["title"]);
                        $content = $data;
                        
                        
                       //echo  $text = stripslashes($_POST['editor1']);
                       //echo "<br>";
                         $description_front = $_POST['editor1'];
                         //echo "<pre>";print_R($_POST);
                        
                       
                        $blogs = [
                            "title" => $title,
                            "image" => base_url()."upload/blog/".$filename,
                            "description_front" => $description_front,
                            "description" => $contents,
                            "CreatedAt" => date("Y-m-d H:i:s")
                        ];
                        /* Passing data to model */
                        $data["response"] = $this->Crud_Model->add_blogs(
                            $blogs
                        );
                        //$data['response'] = 'successfully uploaded ' . $filename;
                        if ($data["response"] == "1") {
                            $this->session->set_flashdata(
                                "success",
                                "Blog added successfully"
                            );
                            redirect("admin/addblog");
                        } else {
                            $this->session->set_flashdata(
                                "error",
                                "Something went wrong"
                            );
                            redirect("admin/addblog");
                        }
                    } else {
                        //$error = array('error' => $this->upload->display_errors());
                        $data["error"] = $this->upload->display_errors();
                        $msg = $data["error"];
                        $this->session->set_flashdata("fileerror", $msg);
                        redirect("admin/addblog");
                    }
                } else {
                    $msg = "Please select any file to upload";
                    $this->session->set_flashdata("fileerror", $msg);
                    redirect("admin/addblog");
                }
                //	echo "<pre>"; print_R($data);
            } else {
                $this->load->view("admin/addnewblog");
            }
        }
    }

    /*Getting all blogs and passing to view */
    public function allblogs()
    {
        isLogin();
        $data["result"] = $this->Crud_Model->get_all_blogs();
        $this->load->view("admin/allblogs", $data);
    }

    /*Getting all blogs and passing to view */
    public function editblog()
    {
        isLogin();
        $id = $this->uri->segment(3);
        $data["result"] = $this->Crud_Model->update_blog($id);
        $this->load->view("admin/updateblog", $data);
    }
    /* For display blog details */
    public function blogdetail()
    {
        isLogin();
        $id = $this->uri->segment(3);
        $data["result"] = $this->Crud_Model->update_blog($id);
        $this->load->view("admin/blogdetail", $data);
    }
 /* function for delete specific blog */
    public function deleteblog()
    {
        isLogin();
        $id = $this->uri->segment(3);
        $response["response"] = $this->Crud_Model->delete_blog($id);
        if ($response["response"] == "1") {
            $this->session->set_flashdata(
                "delete",
                "Blog deleted successfully"
            );
            redirect("admin/blogs");
        } else {
            $this->session->set_flashdata("error", "Something went wrong");
            redirect("admin/blogs");
        }
    }
/* function for update specific blog */
    public function updateblog()
    {
        isLogin();
        $id = $_POST["blogId"];
        if (!empty($_FILES["file"]["name"])) {
            /* uploading images */
            $config["upload_path"] = "upload/blog";
            $config["allowed_types"] = "jpg|jpeg|png|gif";
            //$config['max_size'] = '100'; // max_size in kb
            $config["file_name"] = time() . "-" . $_FILES["file"]["name"];
            $this->load->library("upload", $config);
            if (!$this->upload->do_upload("file")) {
                $data["error"] = $this->upload->display_errors();
                $msg = $data["error"];
                $this->session->set_flashdata("fileerror", $msg);
                redirect("admin/editblog/" . $id);
            } else {
                $uploadData = $this->upload->data();
                $filename = base_url()."upload/blog/".$uploadData["file_name"];
            }
        } else {
            $filename = $_POST["old"];
        }
        //echo "Filename is ".$filename;
        
        //exit;
        $data = $_POST["editor1"];
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        $contents = $data;

        $title = trim($_POST["title"]);
        $content = $data;

        $description_front = $_POST['editor1'];
     
     
        $blogs = [
            "id" => $_POST["blogId"],
            "title" => $title,
            "image" => $filename,
            "description" => $contents,
            "description_front" => $description_front,
            "UpdatedAt" => date("Y-m-d H:i:s")
        ];
        //echo "<pre>";print_R($blogs);
        //exit;
        /* Passing data to model */
        $response["response"] = $this->Crud_Model->update_blog_ById($blogs);
        if ($response["response"] == "1") {
            $this->session->set_flashdata(
                "update",
                "Blog updated successfully"
            );
            redirect("admin/blogs");
        } else {
            $this->session->set_flashdata("error", "Something went wrong");
            redirect("admin/blogs");
        }
    }

    public function addbook()
    {
        isLogin();
        if (isset($_POST["submit"])) {
            if (!empty($_FILES["file"]["name"])) {
                $config["upload_path"] = "upload/books";
                $config["allowed_types"] = "jpg|jpeg|png";
                //$config['max_size'] = '100'; // max_size in kb
                $config["file_name"] = time() . "-" . $_FILES["file"]["name"];
                $this->load->library("upload", $config);
                if (!$this->upload->do_upload("file")) {
                    $data["error"] = $this->upload->display_errors();
                    $msg = $data["error"];
                    $this->session->set_flashdata("fileerror", $msg);
                    redirect("admin/addbook");
                } else {
                    $uploadData = $this->upload->data();
                    $filename = base_url()."upload/books/".$uploadData["file_name"];
                    //echo "<pre>";print_R($_POST);
                    //exit;
                    $books = [
                        "image" => $filename,
                        "link" => trim($_POST['text']),
                        "description" => trim($_POST['smalltext']),
                        "CreatedAt" => date("Y-m-d H:i:s")
                    ];
                    /* Passing data to model */
                    $response["response"] = $this->Crud_Model->add_book($books);
                    if ($response["response"] == "1") {
                        $this->session->set_flashdata(
                            "success2",
                            "Book added successfully"
                        );
                        redirect("admin/addbook");
                    } else {
                        $this->session->set_flashdata(
                            "error",
                            "Something went wrong"
                        );
                        redirect("admin/addbook");
                    }
                }
            } else {
                /*IF user not upload any files then return error */
                $this->session->set_flashdata(
                    "empty",
                    "Please select any image"
                );
                redirect("admin/addbook");
            }
        } else {
            $this->load->view("admin/addbook");
        }
    }

    /*Getting all books and passing to view */
    public function allbooks()
    {
        isLogin();
        $data["result"] = $this->Crud_Model->get_all_books();
        $this->load->view("admin/allbooks", $data);
    }

    /*Getting all blogs and passing to view */
    public function editbook()
    {
        isLogin();
        $id = $this->uri->segment(3);
        $data["result"] = $this->Crud_Model->update_book($id);
        $this->load->view("admin/updatebook", $data);
    }
/*function for update book*/
    public function updatebook()
    {
        isLogin();
        $id = $_POST["bookId"];
        if (!empty($_FILES["file"]["name"])) {
            $config["upload_path"] = "upload/books";
            $config["allowed_types"] = "jpg|jpeg|png|gif";
            //$config['max_size'] = '100'; // max_size in kb
            $config["file_name"] = time() . "-" . $_FILES["file"]["name"];
            $this->load->library("upload", $config);
            if (!$this->upload->do_upload("file")) {
                $data["error"] = $this->upload->display_errors();
                $msg = $data["error"];
                $this->session->set_flashdata("fileerror", $msg);
                redirect("admin/editbook/" . $id);
            } else {
                $uploadData = $this->upload->data();
                $filename = $uploadData["file_name"];
            }
        } else {
            //echo "<pre>";print_R($_POST);
            $filename = $_POST["old"];
        }
        
        //echo "<pre>";print_R($_POST);
        //exit;
        
        if(!empty($this->input->post('text'))){
                $books['link'] = trim($this->input->post('text'));
        }
         if(!empty($this->input->post('title'))){
                $books['title'] = trim($this->input->post('title'));
        }
        if(!empty($this->input->post('smalltext'))){
            $books['description'] = trim($this->input->post('smalltext'));
        }
            
        $books['id'] = $_POST["bookId"]; 
        $books['image'] = $filename;
        $books['UpdatedAt'] = date("Y-m-d H:i:s");
         

        /* Passing data to model */
        $response["response"] = $this->Crud_Model->update_book_ById($books);
        if ($response["response"] == "1") {
            $this->session->set_flashdata(
                "update",
                "Book details updated successfully"
            );
            redirect("admin/allbooks");
        } else {
            $this->session->set_flashdata("error", "Something went wrong");
            redirect("admin/allbooks");
        }
    }
    /* for delete specific book */
    public function deletebook()
    {
        isLogin();
        $id = $this->uri->segment(3);
        $response["response"] = $this->Crud_Model->delete_book($id);
        if ($response["response"] == "1") {
            $this->session->set_flashdata(
                "delete",
                "Book info deleted successfully"
            );
            redirect("admin/allbooks");
        } else {
            $this->session->set_flashdata("error", "Something went wrong");
            redirect("admin/allbooks");
        }
    }
    /*function for add new company detail */
    public function addcompany()
    {
        isLogin();
        if (isset($_POST["submit"])) {
            if (!empty($_FILES["file"]["name"])) {
                $config["upload_path"] = "upload/company";
                $config["allowed_types"] = "jpg|jpeg|png";
                //$config['max_size'] = '100'; // max_size in kb
                $config["file_name"] = time() . "-" . $_FILES["file"]["name"];
                $this->load->library("upload", $config);
                if (!$this->upload->do_upload("file")) {
                    $data["error"] = $this->upload->display_errors();
                    $msg = $data["error"];
                    $this->session->set_flashdata("fileerror", $msg);
                    redirect("admin/addcompany");
                } else {
                    $uploadData = $this->upload->data();
                    $filename = $uploadData["file_name"];
                    $company = [
                        "image" => $filename,
                        "CreatedAt" => date("Y-m-d H:i:s")
                    ];
                    /* Passing data to model */
                    $response["response"] = $this->Crud_Model->add_company(
                        $company
                    );
                    if ($response["response"] == "1") {
                        $this->session->set_flashdata(
                            "success",
                            "company added successfully"
                        );
                        redirect("admin/addcompany");
                    } else {
                        $this->session->set_flashdata(
                            "error",
                            "Something went wrong"
                        );
                        redirect("admin/addcompany");
                    }
                }
            } else {
                /*IF user not upload any files then return error */
                $this->session->set_flashdata(
                    "empty",
                    "Please select any image"
                );
                redirect("admin/addcompany");
            }
        } else {
            $this->load->view("admin/addcompany");
        }
    }

    /*Getting all books and passing to view */
    public function allcompanies()
    {
        isLogin();
        $data["result"] = $this->Crud_Model->get_all_companies();
        $this->load->view("admin/allcompanies", $data);
    }

    /*Getting company details by id */
    public function editcompany()
    {
        isLogin();
        $id = $this->uri->segment(3);
        $data["result"] = $this->Crud_Model->update_company($id);
        $this->load->view("admin/updatecompany", $data);
    }

    public function updatecompany()
    {
        isLogin();
        if (!empty($_FILES["file"]["name"])) {
            $config["upload_path"] = "upload/company";
            $config["allowed_types"] = "jpg|jpeg|png|gif";
            //$config['max_size'] = '100'; // max_size in kb
            $config["file_name"] = time() . "-" . $_FILES["file"]["name"];
            $this->load->library("upload", $config);
            if (!$this->upload->do_upload("file")) {
                $data["error"] = $this->upload->display_errors();
                $msg = $data["error"];
                $this->session->set_flashdata("fileerror", $msg);
                redirect("admin/editcompany/" . $id);
            } else {
                $uploadData = $this->upload->data();
                $filename = $uploadData["file_name"];
            }
        } else {
            $filename = $_POST["old"];
        }
        $company = [
            "id" => $_POST["companyId"],
            "image" => $filename,
            "UpdatedAt" => date("Y-m-d H:i:s")
        ];

        /* Passing data to model */
        $response["response"] = $this->Crud_Model->update_company_ById(
            $company
        );
        if ($response["response"] == "1") {
            $this->session->set_flashdata(
                "update",
                "Company details updated successfully"
            );
            redirect("admin/allcompanies");
        } else {
            $this->session->set_flashdata("error", "Something went wrong");
            redirect("admin/allcompanies");
        }
    }
    /* function for delete specific company */
    public function deletecompany()
    {
        isLogin();
        $id = $this->uri->segment(3);
        $response["response"] = $this->Crud_Model->delete_company($id);
        if ($response["response"] == "1") {
            $this->session->set_flashdata(
                "delete",
                "Company info deleted successfully"
            );
            redirect("admin/allcompanies");
        } else {
            $this->session->set_flashdata("error", "Something went wrong");
            redirect("admin/allcompanies");
        }
    }
 /* function for change password */
    public function changepassword()
    {
        isLogin();
        if (isset($_POST["submit"])) {
            $pwd = trim($_POST["password"]);
            $response["response"] = $this->Crud_Model->change_pwd($pwd);
            if ($response["response"] == "1") {
                $this->session->set_flashdata(
                    "success",
                    "Password changed successfully"
                );
                redirect("admin/changepassword");
            } else {
                $this->session->set_flashdata("error", "Something went wrong");
                redirect("admin/changepassword");
            }
        } else {
            $this->load->view("admin/changepassword");
        }
    }

    /* logout function */
    public function logout()
    {
        $this->session->sess_destroy();
        redirect(base_url() . "admin/logout_message", "refresh");
    }

    public function logout_message()
    {
        $this->session->set_flashdata("message", "Successfully Logged Out!");
        redirect(base_url(), "refresh");
    }
    /* function for add new blog images */
    public function addblogimage()
    {
        isLogin();
        if (isset($_POST["submit"])) {
            if (!empty($_FILES["file"]["name"])) {
                $config["upload_path"] = "upload/blog-gallery";
                $config["allowed_types"] = "jpg|jpeg|png";
                //$config['max_size'] = '100'; // max_size in kb
                $config["file_name"] = time() . "-" . $_FILES["file"]["name"];
                $this->load->library("upload", $config);
                if (!$this->upload->do_upload("file")) {
                    $data["error"] = $this->upload->display_errors();
                    $msg = $data["error"];
                    $this->session->set_flashdata("fileerror", $msg);
                    redirect("admin/addblogimage");
                } else {
                    $uploadData = $this->upload->data();
                    $filename = $uploadData["file_name"];
                    $blogImage = [
                        "image" => $filename,
                        "CreatedAt" => date("Y-m-d H:i:s")
                    ];
                    /* Passing data to model */
                    $response["response"] = $this->Crud_Model->add_blogImage(
                        $blogImage
                    );
                    if ($response["response"] == "1") {
                        $this->session->set_flashdata(
                            "success",
                            "image added successfully"
                        );
                        redirect("admin/addblogimage");
                    } else {
                        $this->session->set_flashdata(
                            "error",
                            "Something went wrong"
                        );
                        redirect("admin/addblogimage");
                    }
                }
            } else {
                /*IF user not upload any files then return error */
                $this->session->set_flashdata(
                    "empty",
                    "Please select any image"
                );
                redirect("admin/addblogimage");
            }
        } else {
            $this->load->view("admin/addblogimage");
        }
    }
    /*display all images gallery */
    public function Images()
    {
        isLogin();
        $data["result"] = $this->Crud_Model->get_all_images();
        $this->load->view("admin/allimages", $data);
    }
	 /*if admin forget his password */
    public function forgetpassword()
    {
		if(isset($_POST['submit']))
			{
					$email=trim($_POST['email']);
					$data["result"] = $this->Crud_Model->checkpassword($email);
					if ($data["result"] == "1") {
					$this->session->set_flashdata(
						"updates",
						"An email has been sent to you with new password!"
					);
					redirect(base_url());
				} else {
					$this->session->set_flashdata("error", "Please enter correct email!");
					 $this->load->view("admin/forgetpassword");
				}
			}
		else
			{
				$this->load->view("admin/forgetpassword");
			}	
	}
	
}
