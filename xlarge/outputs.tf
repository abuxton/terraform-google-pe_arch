# Output data used by Bolt to do further work, doing this allows for a clean and
# abstracted interface between cloud provider implementations
output "console" {
  value       = google_compute_instance.master[0].network_interface[0].access_config[0].nat_ip
  description = "This will by the external IP address assigned to the Puppet Enterprise console"
}
output "pool" {
  value       = module.loadbalancer.lb_dns_name
  description = "The GCP internal network FQDN of the Puppet Enterprise compiler pool"
}
