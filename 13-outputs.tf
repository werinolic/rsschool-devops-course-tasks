output "bastion_public_ip" {
  description = "Public IP of the bastion host"
  value       = aws_instance.bastion.public_ip
}

output "master_private_ips" {
  description = "Private IPs of master nodes"
  value       = [for instance in aws_instance.master : instance.private_ip]
}

output "worker_private_ips" {
  description = "Private IPs of worker nodes"
  value       = [for instance in aws_instance.worker : instance.private_ip]
}
