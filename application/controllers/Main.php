<?php
class Main extends CI_Controller{
function index($ci){
    $query=$this->db->query("SELECT * FROM profesional WHERE  ci='$ci'");
    if ($query->num_rows()==0){
        header("Location: ".base_url());
    }
    $data['ci']=$ci;
    $this->load->view('templates/header');
    $this->load->view('main');
    $this->load->view('templates/footer');
}
}
