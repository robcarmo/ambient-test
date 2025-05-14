
output "rds_endpoint" {
  value = aws_db_instance.postgres.endpoint
}

output "web_public_ip" {
  value = aws_instance.web.public_ip
}
