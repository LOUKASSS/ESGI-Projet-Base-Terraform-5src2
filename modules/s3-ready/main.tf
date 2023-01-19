resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_s3_name
}

data "template_file" "s3_policy_file" {
  template = file("./policy.json")
  vars = {
    bucket_name = var.bucket_s3_name
    ec2_ip      = var.ec2_public_ip
  }
}

resource "aws_s3_bucket_policy" "s3_policy" {
  bucket = aws_s3_bucket.s3_bucket.id
  policy = data.template_file.s3_policy_file.rendered
  depends_on = [
    data.template_file.s3_policy_file,
    aws_s3_bucket.s3_bucket
  ]
}
