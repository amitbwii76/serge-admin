<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Api_Model extends CI_Model
	{
		public function get_AllBlogs()
			{
				$this->db->select('sb.id,sb.title,sb.image,sb.description,sb.description_front,sb.CreatedAt');
				$this->db->from('sl_blogs sb');
				$this->db->order_by("sb.id", "DESC");
				$this->db->limit("3");
				$query = $this->db->get();
				if ($query->num_rows() > 0) {
					$row = $query->result_array();
					return $row;
				} else {
					return false;
				}
			}
		public function get_AllBlooks()
			{
				$this->db->select('sb.id,sb.image,sb.link,sb.CreatedAt');
				$this->db->from('sl_books sb');
				$this->db->order_by("sb.id", "DESC");
				$this->db->limit("3");
				$query = $this->db->get();
				if ($query->num_rows() > 0) {
					$row = $query->result_array();
					return $row;
				} else {
					return false;
				}
			}		
		
		public function get_LatestBlogs()
			{
				$this->db->select('sb.id,sb.image,sb.link,sb.CreatedAt');
				$this->db->from('sl_books sb');
				$this->db->order_by("sb.id", "DESC");
				$this->db->limit("10");
				$query = $this->db->get();
				if ($query->num_rows() > 0) {
					$row = $query->result_array();
					return $row;
				} else {
					return false;
				}
			}
			
		public function get_companies()
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

        public function add_subscribe($email="")
            {
               // echo "<pre>";print_R($_POST);
                $email=trim($email);
                
                $this->db->select('sb.email');
                $this->db->from('sl_subscribers sb');
                $this->db->where('sb.email', $email);
                $query = $this->db->get();
                if ($query->num_rows() > 0) {
                   return false;
                } else {
                    $data = [
                            "email" => $email,
                            "CreatedAt" => date("Y-m-d H:i:s")
                        ];
                    $this->db->insert('sl_subscribers', $data);
                    
                    /*sending email to users */
        			$to = $email;
        			$subject = "Subscription";
        			$txt = "Thanks for being part of the community";
        			$headers = "From: webmaster@example.com";
        			mail($to,$subject,$txt,$headers);
        			return true;
                    
                }
            }
    
        public function get_bloginfo($id="")
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

	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	