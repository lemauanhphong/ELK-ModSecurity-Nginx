# ELK-ModSecurity-Nginx

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

**3. Run the services**

Navigate back to the root of the repository and run the services using Docker Compose:

```sh
cd ..
touch ./logs/nginx/{access.log,error.log}
chmod 777 ./logs/nginx/{access.log,error.log}
docker compose up --build
```
