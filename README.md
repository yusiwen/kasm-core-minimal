## Features

- minimal image size, approximate only 900MB
- openbox windows manager, as simple as possible
- python3.12 included
- vim, iproute2, etc. tools are included
- no audio, printer, webcam, nvidia, web-browser, mail, etc. keeping everything simple

## Usage

```bash
docker run --rm -p 6901:6901 -e VNC_PW=password yusiwen/kasm-core-minimal:1.3.4
```

Access [https://localhost:6901](https://localhost:6901) in web browser.

The default usename is `kasm_user`, password is set by `VNC_PW`

If the container is planned to use network other than bridge, such as macvlan, it must be started as:

```bash
docker run --rm -p 6901:6901 -e VNC_PW=password -e KASM_NO_VETH=1 yusiwen/kasm-core-minimal:1.3.4
```

