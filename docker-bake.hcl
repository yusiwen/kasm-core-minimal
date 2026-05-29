group "default" {
  targets = ["kasm-core-minimal"]
}

target "kasm-core-minimal" {
  context = "."
  dockerfile = "Dockerfile"
  tags = ["yusiwen/kasm-core-minimal:1.4.1"]
  args = {
    COMMIT_ID = "0a64d3381cf2ebfb53685c9c9c804e8a327bf0a3"
    BRANCH = "master"
    KASMVNC_VER = "1.4.1"
  }
  no-cache = true
  platforms = ["linux/amd64", "linux/arm64"]
}

target "kasm-core-minimal-systemd" {
  context = "."
  dockerfile = "Dockerfile.systemd"
  tags = ["yusiwen/kasm-core-minimal:1.4.1-systemd"]
  args = {
    BASE_IMAGE = "antmelekhin/docker-systemd:ubuntu-24.04"
    COMMIT_ID = "0a64d3381cf2ebfb53685c9c9c804e8a327bf0a3"
    BRANCH = "master"
    KASMVNC_VER = "1.4.1"
  }
  no-cache = true
  platforms = ["linux/amd64", "linux/arm64"]
}

target "kasm-core-minimal_trixie" {
  context = "."
  dockerfile = "Dockerfile"
  tags = ["yusiwen/kasm-core-minimal:1.4.1-trixie"]
  args = {
    COMMIT_ID = "0a64d3381cf2ebfb53685c9c9c804e8a327bf0a3"
    BRANCH = "master"
    KASMVNC_VER = "1.4.1"
    BASE_IMAGE = "debian:trixie-slim"
    DISTRO = "debian"
  }
  no-cache = true
  platforms = ["linux/amd64", "linux/arm64"]
}
