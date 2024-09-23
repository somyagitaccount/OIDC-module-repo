resource "aws_iam_openid_connect_provider" "github_actions" {
  url             = var.url
  client_id_list  = var.client_id_list
  thumbprint_list = [data.tls_certificate.oidc_thumbprint.certificates[0].sha1_fingerprint]
  
}
