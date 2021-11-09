provider "google" {
        project = "focus-ensign-328710"
        credentials = "/home/bishnubatas99/lab/keys.json"
        region = "us-central1"
}
resource "google_compute_instance" "myvm01" {
        name = "myfirstvm01"
        machine_type = "f1-micro"
        zone = "us-central1-a"
        network_interface {
                network = "default"
        }
        boot_disk {
                initialize_params {
                        image = "debian-cloud/debian-10"
        }
        }
}
resource "google_compute_instance" "myvm02" {
        name = "myfirstvm02"
        machine_type = "f1-micro"
        zone = "us-central1-a"
        network_interface {
                network = "default"
        }
        boot_disk {
                initialize_params {
                        image = "debian-cloud/debian-10"
        }
        }
}