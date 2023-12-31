resource "null_resource" "update_kubeconfig" {
  depends_on = [aws_eks_cluster.demo]

  provisioner "local-exec" {
    command = "aws eks update-kubeconfig --region ap-northeast-2 --name demo"
  }
}