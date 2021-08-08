output "primary_db_enpoint" {
  value = aws_db_instance.primary_db.endpoint
  description = "The endpoint of the primary database"
}

output "secondary_db_enpoint" {
  value = aws_db_instance.secondary_db.endpoint
  description = "The endpoint of the secondary database"
}