# Database comparisons

Prerequisites:

- Docker and Docker Compose
- Makefile

You can install via

```bash
apt-get install docker docker-compose-plugin makefile
```

## One Billion Row Challenge (1BRC)

This is a challenge that was going viral for parsing a simple text file with a billion rows in it as quickly as possible (see original [blog post](https://www.morling.dev/blog/one-billion-row-challenge/) and [website](https://1brc.dev/)).

### Generate the data file

Run the following to generate a file called `measurements.txt` with 1,000,000,000 rows of data:

```bash
make measurements
```

Note that this takes up about ~13.5 GB of disk space and a couple minutes to generate after the docker image is built (both the build and running of image happens in `make measurements`).
