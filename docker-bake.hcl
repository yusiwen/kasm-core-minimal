group "default" {
  targets = ["kasm-core-minimal"]
}

target "kasm-core-minimal" {
  context = "."
  dockerfile = "Dockerfile"
  tags = ["yusiwen/kasm-core-minimal:1.3.4"]
  args = {
  }
  no-cache = true
  platforms = ["linux/amd64", "linux/arm64"]
}

target "kasm-core-minimal-systemd" {
  context = "."
  dockerfile = "Dockerfile.systemd"
  tags = ["yusiwen/kasm-core-minimal:1.3.4-systemd"]
  args = {
    BASE_IMAGE = "antmelekhin/docker-systemd:ubuntu-24.04"
  }
  no-cache = true
  platforms = ["linux/amd64", "linux/arm64"]
}
