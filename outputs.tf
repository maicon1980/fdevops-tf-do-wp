
output "stack_wp_lb_ip" {
   value = module.wp_stack.wp_lb_ip
   description = "IP do Load Balancer"
}

output "stack_wp_vm_IPs" {
   value = module.wp_stack.wp_vm_IPs
   description = "IP das VMs Wordpress"
}

output "stack_nfs_vm_IP" {
   value = module.wp_stack.nfs_vm_IP
   description = "IP das VM NFS"
}

output "stack_wp_db_user" {
    value     = module.wp_stack.wp_db_user
    description = "User Banco de dados"

}

output "stack_wp_db_passwd" {
    value     = module.wp_stack.wp_db_passwd
    description = "Senha Banco de dados"
    sensitive = true
}