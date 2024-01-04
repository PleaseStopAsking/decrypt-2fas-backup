# decrypt-2fas-backup

[2FAS app][1] encrypted export decryption tool.

## Usage

### Direct

Run first to get the dependency:

```sh
pip3 install --no-cache-dir -r requirements.txt
```

Run the tool:

```sh
./decrypt-2fas-backup.py passphrase 2fas-backup-20220408234614.2fas
```

### Docker

Build image:

```sh
docker build -t 2fas-backup-decrypt:v0.1 .
```

Run the tool:

```sh
docker run --rm -e PASSWORD=<replaceme> -v Backup_2024-01-04.2fas:/app/backup.2fas 2fas-backup-decrypt:v0.1
```

## Purpose of the script

Usage of 2FA secrets on a PC using tools like [oathtool][2],
especially in case of a smartphone failure.

[1]: https://2fas.com/
[2]: http://www.nongnu.org/oath-toolkit/
