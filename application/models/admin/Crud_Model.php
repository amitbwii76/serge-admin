<?php
defined('BASEPATH') or exit('No direct script access allowed');

/* Created By : Amit Sharma
   Created At : 22-6-2022
   Description : model for admin modules 
  */ 
class Crud_Model extends CI_Model
{
    public function add_blogs($blogs)
    {
       // echo "<pre>";print_R($blogs);
        //exit;
        $image=$blogs['image'];
        $title=$blogs['title'];
        $description=$blogs['description'];
        $description_front=$blogs['description_front'];
        $ss=html_entity_decode($description_front);
        $date=date("Y-m-d H:i:s");
        
        $data2 = stripslashes($description_front);
        $data3 = htmlspecialchars($description_front);
         
        //$page_contents = strip_tags(html_entity_decode($description_front));
        $query = "INSERT INTO sl_blogs(title,image,description_front,description,CreatedAt) VALUES (?,?,?,?,?)";
        
        $this->db->query(
        $query,
        array($title,$image,$data2,$data3,$date)
        );
        
        $this->db->trans_complete();
        if ($this->db->trans_status() === false) {
            return false;
        } else {
            return true;
        }
    }
    
    
     public function update_blog_ById($blogs = "")
    {
       // echo "<pre>";print_R($blogs);
        //exit;
        $id = $blogs['id'];
        $title=$blogs['title'];
        $image=$blogs['image'];
        
        $description=$blogs['description'];
        $description_front=$blogs['description_front'];
        $ss=html_entity_decode($description_front);
        $date=date("Y-m-d H:i:s");
        
         $data2 = stripslashes($description_front);
        $data3 = htmlspecialchars($description_front);
         
        //$page_contents = strip_tags(html_entity_decode($description_front));
        $query = "UPDATE sl_blogs SET title=?,description=?,description_front=?,image=? WHERE id=?";
        
        $this->db->query(
        $query,
        array($title,$data3,$data2,$image,$id)
        );
        
        return true;
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    public function get_all_blogs()
    {
        $this->db->select(
            'sb.id,sb.title,sb.image,sb.description,sb.CreatedAt'
        );
        $this->db->from('sl_blogs sb');
        $this->db->order_by("sb.id", "DESC");
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            $row = $query->result_array();
            return $row;
        } else {
            return false;
        }
    }

    public function update_blog($id = "")
    {
        $this->db->select(
            'sb.id,sb.title,sb.image,sb.description,sb.description_front,sb.CreatedAt'
        );
        $this->db->from('sl_blogs sb');
        $this->db->where('sb.id', $id);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            $row = $query->row_array();
            return $row;
        } else {
            return false;
        }
    }
    public function checkpassword($email)
    {
		error_reporting(0);
        $this->db->select(
            'sa.email'
        );
        $this->db->from('sl_admin sa');
        $this->db->where('sa.email', $email);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            $row = $query->row_array();
			/*generating 6 digit random password */
			$newpassword = substr(str_shuffle("0123456789abcdefghijklmnopqrstvwxyz"), 0, 6);
			$data = array(
            'password' => md5($newpassword),
            'UpdatedAt' => date('Y-m-d H:i:s')
			);
			$this->db->where('id','1');
			$this->db->update('sl_admin', $data);
			
			/*sending email to users */
			$to = $email;
			$subject = "New Password";
			$txt = "Your New Password is ".$newpassword;
			$headers = "From: webmaster@example.com";
			mail($to,$subject,$txt,$headers);
			
			return true;
        } else {
            return false;
        }
    }


   

    public function delete_blog($id = "")
    {
        $this->db->where('id', $id);
        $this->db->delete('sl_blogs');
        if (!$this->db->affected_rows()) {
            return false;
        } else {
            return true;
        }
    }
    public function add_book($books)
    {
        $this->db->insert('sl_books', $books);
        $this->db->trans_complete();
        if ($this->db->trans_status() === false) {
            return false;
        } else {
            return true;
        }
    }

    public function get_all_books()
    {
        $this->db->select('sb.id,sb.link,sb.image,sb.CreatedAt');
        $this->db->from('sl_books sb');
        $this->db->order_by("sb.id", "DESC");
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            $row = $query->result_array();
            return $row;
        } else {
            return false;
        }
    }

    public function update_book($id = "")
    {
        $this->db->select('sb.id,sb.image,sb.title,sb.link,sb.description');
        $this->db->from('sl_books sb');
        $this->db->where('sb.id', $id);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            $row = $query->row_array();
            return $row;
        } else {
            return false;
        }
    }

    public function update_book_ById($books = "")
    {
        
       // echo "<pre>";print_R($books);    
        //exit;
        
         if(!empty($this->input->post('text'))){
                $books['link'] = trim($this->input->post('text'));
        }
        else
        {
             $books['link'] =NULL;
        }
        if(!empty($this->input->post('smalltext'))){
            $books['description'] = trim($this->input->post('smalltext'));
        }
        else
        {
             $books['description'] = NULL;
        }
         if(!empty($this->input->post('title'))){
                $books['title'] = trim($this->input->post('title'));
        }   
        $books['id'] = $_POST["bookId"]; 
        $books['image'] = $books['image'];
        $books['UpdatedAt'] = date("Y-m-d H:i:s");
        
        $id = $books['id'];
        $this->db->where('id', $id);
        $this->db->update('sl_books', $books);
       // echo $this->db->last_query();
        //exit;
        if ($this->db->affected_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }

    public function delete_book($id = "")
    {
        $this->db->where('id', $id);
        $this->db->delete('sl_books');
        if (!$this->db->affected_rows()) {
            return false;
        } else {
            return true;
        }
    }

    public function add_company($company)
    {
        $this->db->insert('sl_companies', $company);
        $this->db->trans_complete();
        if ($this->db->trans_status() === false) {
            return false;
        } else {
            return true;
        }
    }

    public function get_all_companies()
    {
        $this->db->select('sb.id,sb.image,sb.CreatedAt');
        $this->db->from('sl_companies sb');
        $this->db->order_by("sb.id", "DESC");
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            $row = $query->result_array();
            return $row;
        } else {
            return false;
        }
    }

    public function update_company($id = "")
    {
        $this->db->select('sb.id,sb.image');
        $this->db->from('sl_companies sb');
        $this->db->where('sb.id', $id);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            $row = $query->row_array();
            return $row;
        } else {
            return false;
        }
    }

    public function update_company_ById($company = "")
    {
        $data = array(
            'image' => $company['image'],
            'UpdatedAt' => date('Y-m-d H:i:s')
        );
        $id = $company['id'];
        $this->db->where('id', $id);
        $this->db->update('sl_companies', $data);
        if ($this->db->affected_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }

    public function delete_company($id = "")
    {
        $this->db->where('id', $id);
        $this->db->delete('sl_companies');
        if (!$this->db->affected_rows()) {
            return false;
        } else {
            return true;
        }
    }

    public function change_pwd($pwd = "")
    {
        $data = array(
            'password' => md5($pwd),
            'UpdatedAt' => date('Y-m-d H:i:s')
        );

        $this->db->where('role', "admin");
        $this->db->update('sl_admin', $data);
        if ($this->db->affected_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }
    public function get_TotalBlogs()
    {
        $this->db->select('sb.id');
        $this->db->from('sl_blogs sb');
        $query = $this->db->get();
        return $query->num_rows();
    }
    public function get_TotalCompanies()
    {
        $this->db->select('sb.id');
        $this->db->from('sl_companies sb');
        $query = $this->db->get();
        return $query->num_rows();
    }
    public function get_TotalBooks()
    {
        $this->db->select('sb.id');
        $this->db->from('sl_books sb');
        $query = $this->db->get();
        return $query->num_rows();
    }

    public function add_blogImage($blogImage)
    {
        $this->db->insert('sl_blog_gallery', $blogImage);
        $this->db->trans_complete();
        if ($this->db->trans_status() === false) {
            return false;
        } else {
            return true;
        }
    }

    public function get_all_images()
    {
        $this->db->select('sb.id,sb.image,sb.CreatedAt');
        $this->db->from('sl_blog_gallery sb');
        $this->db->order_by("sb.id", "DESC");
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            $row = $query->result_array();
            return $row;
        } else {
            return false;
        }
    }
}
