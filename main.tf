resource "aws_iam_role_policy_attachment" "aws_iam_role_policy_attachment" {
  for_each = toset(local.policies)
  role = var.role
  policy_arn = "arn:aws:iam::aws:policy/${each.value}"
}
