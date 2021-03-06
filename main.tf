resource "google_storage_bucket" "sample-bucket-1" {
  name          = "image1"
  location      = "EU"
  force_destroy = true

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }

}
