<?php
defined("BASEPATH") or exit("No direct script access allowed");
class Api extends CI_Controller
{
    
    public function __construct()
    {
        parent::__construct();
        $this->load->model("api/Api_Model");
        header('Access-Control-Allow-Origin: *');
         header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
    }
    
    /* Api for Display all blogs detail */
    public function blogs()
        {
            $data["GetAllBlogs"] = $this->Api_Model->get_AllBlogs();
            //$result_json = array('status' => true, 'data' => $data["GetAllBlogs"]);
            header('Cache-Control: no-cache, must-revalidate');
            header('Content-type: application/json');
            echo json_encode($data["GetAllBlogs"]);
        }
      /* Api for Display all blogs detail */
    public function latestblogs()
        {
            $data["GetAllBlogs"] = $this->Api_Model->get_LatestBlogs();
            //$result_json = array('status' => true, 'data' => $data["GetAllBlogs"]);
            header('Cache-Control: no-cache, must-revalidate');
            header('Content-type: application/json');
            echo json_encode($data["GetAllBlogs"]);
        }    
     /*Function for get specific blog details by id */   
    public function blogbyid()
    {
        $id=trim($this->uri->segment(3));
        $data["GetBlogDetail"] = $this->Api_Model->get_bloginfo($id);
        //echo "<pre>";print_R($data["GetBlogDetail"]);
        header('Cache-Control: no-cache, must-revalidate');
        header('Content-type: application/json');
        echo json_encode($data["GetBlogDetail"]);
    }
        
        
        
        
        
        
        
        
        

    /* Api for Display all books detail */
    public function books()
        {
            $data["GetAllBlogs"] = $this->Api_Model->get_AllBlooks();
            //$result_json = array('status' => true, 'data' => $data["GetAllBlogs"]);
            header('Cache-Control: no-cache, must-revalidate');
            header('Content-type: application/json');
            echo json_encode($data["GetAllBlogs"]);
        }  
    
    /* Api for Display all books detail */
     public function companies()
     {
         $data["GetAllBlogs"] = $this->Api_Model->get_companies();
         //$result_json = array('status' => true, 'data' => $data["GetAllBlogs"]);
         header('Cache-Control: no-cache, must-revalidate');
         header('Content-type: application/json');
         echo json_encode($data["GetAllBlogs"]);
     }   
     
     /* Api for Display all books detail */
     public function subscribe()
     {
        $email = $this->input->get('email');
        $data["GetAllBlogs"] = $this->Api_Model->add_subscribe($email);
         if($data["GetAllBlogs"]=="1")
         {
            $result_json = array('status' => true, 'msg' => 'Thank you for subscribing to serge maurice lobreau!');
         }
         else
            {
              $result_json = array('status' => false, 'msg' => 'Your email already exists in our subscribers list');
            }
         echo json_encode($result_json);
     }   
     
        
        
        
        
        

}


















