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

target "kasm-core-minimal_trixie-systemd" {
  context = "."
  dockerfile = "Dockerfile.systemd"
  tags = ["yusiwen/kasm-core-minimal:1.4.1-trixie-systemd"]
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

target "kasm-core-minimal-1_5_1" {
  context = "."
  dockerfile = "Dockerfile"
  tags = ["yusiwen/kasm-core-minimal:1.5.1"]
  args = {
    KASMVNC_COMMIT_ID = "582662953c819ade9ed4b620a5646546d8d7de7b"
    KASMVNC_BRANCH = "release"
    KASMVNC_VER = "1.5.1"
    PROFILE_SYNC_V2_COMMIT_ID = "506ba7a13d810b214fe76cb91e94abc7c559d8d7"
    PROFILE_SYNC_V2_BRANCH = "release_2.1.1"
  }
  no-cache = true
  platforms = ["linux/amd64", "linux/arm64"]
}

target "kasm-core-minimal-systemd-1_5_1" {
  context = "."
  dockerfile = "Dockerfile.systemd"
  tags = ["yusiwen/kasm-core-minimal:1.5.1-systemd"]
  args = {
    BASE_IMAGE = "antmelekhin/docker-systemd:ubuntu-24.04"
    KASMVNC_COMMIT_ID = "582662953c819ade9ed4b620a5646546d8d7de7b"
    KASMVNC_BRANCH = "release"
    KASMVNC_VER = "1.5.1"
    PROFILE_SYNC_V2_COMMIT_ID = "506ba7a13d810b214fe76cb91e94abc7c559d8d7"
    PROFILE_SYNC_V2_BRANCH = "release_2.1.1"
  }
  no-cache = true
  platforms = ["linux/amd64", "linux/arm64"]
}

target "kasm-core-minimal_trixie-1_5_1" {
  context = "."
  dockerfile = "Dockerfile"
  tags = ["yusiwen/kasm-core-minimal:1.5.1-trixie"]
  args = {
    KASMVNC_COMMIT_ID = "582662953c819ade9ed4b620a5646546d8d7de7b"
    KASMVNC_BRANCH = "release"
    KASMVNC_VER = "1.5.1"
    PROFILE_SYNC_V2_COMMIT_ID = "506ba7a13d810b214fe76cb91e94abc7c559d8d7"
    PROFILE_SYNC_V2_BRANCH = "release_2.1.1"
    BASE_IMAGE = "debian:trixie-slim"
    DISTRO = "debian"
  }
  no-cache = true
  platforms = ["linux/amd64", "linux/arm64"]
}

target "kasm-core-minimal_trixie-systemd-1_5_1" {
  context = "."
  dockerfile = "Dockerfile.systemd"
  tags = ["yusiwen/kasm-core-minimal:1.5.1-trixie-systemd"]
  args = {
    KASMVNC_COMMIT_ID = "582662953c819ade9ed4b620a5646546d8d7de7b"
    KASMVNC_BRANCH = "release"
    KASMVNC_VER = "1.5.1"
    PROFILE_SYNC_V2_COMMIT_ID = "506ba7a13d810b214fe76cb91e94abc7c559d8d7"
    PROFILE_SYNC_V2_BRANCH = "release_2.1.1"
    BASE_IMAGE = "debian:trixie-slim"
    DISTRO = "debian"
  }
  no-cache = true
  platforms = ["linux/amd64", "linux/arm64"]
}