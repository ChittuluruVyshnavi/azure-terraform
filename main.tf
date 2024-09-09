module "reource_group" {
  source = "./resource"


}

module "virtual_machine" {
  source     = "./virtualmachine"
  depends_on = [module.reource_group]



}
