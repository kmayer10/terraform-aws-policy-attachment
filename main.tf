resource "aws_iam_role_policy_attachment" "aws_iam_role_policy_attachment" {
  for_each = toset(local.policies)
  role = module.create_roles_for_eks_cluster["thinknyx_eks_cluster_role-eks"].role_name
  policy_arn = "arn:aws:iam::aws:policy/${each.value}"
}
  
