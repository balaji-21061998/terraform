resource "local_file" "pet" {
filename = "pets.txt"
content = "My cat is ${random_pet.mypet.id}"    
} 
resource "random_pet" "mypet" {
prefix = "MR"
separator = "."
length = "1"
}
output "mypet" {
  value = random_pet.mypet.id
}
