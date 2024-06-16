# ELK-ModSecurity-Nginx

## Slide
[https://www.canva.com/design/DAGDhiy1gf0/2V4PkfYPXrivlDYAZk7puw/edit](https://www.canva.com/design/DAGDhiy1gf0/2V4PkfYPXrivlDYAZk7puw/edit)

## Usage

**1. Clone the repository**

```sh
git clone --recurse-submodules https://github.com/lemauanhphong/ELK-ModSecurity-Nginx.git
cd ELK-ModSecurity-Nginx
```

**2. Build the Elastic's eBPF**

Navigate to the `ebpf` directory and build Elastic's eBPF:

```sh
cd ebpf
make build ARCH=x86_64
```

**3. Create log files**

Navigate back to the root of the repository and run the script to create the log files.

```sh
cd ..
./create_log_files.sh
```

**4. Run the services**

Run the services using Docker Compose:

```sh
docker compose up --build
```
