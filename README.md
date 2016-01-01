# server-status
A little Bash script that checks if a server is UP or DOWN, and sends a mail with status update.

## Installation

### Dependencies

`fping` to check if the server answser to the ping. Available on Debian, Arch and Gentoo repositories, or on [fping.org](http://fping.org/)

`sendmail` or any mail sender. But you *must* make sure you can send mail with the `mail` command, or the script will be useless.

`cron` to run the script automatically.

### Download the script

```
wget https://raw.githubusercontent.com/Angristan/server-status/master/check.sh
chmod +x check.sh
```


## Usage

To run the script : `./check.sh` or `bash check.sh`

To run the script automatically :

`crontab -e`

Add:

`*/1 * * * * bash /path/to/check.sh`

This will run the script every minute.


## License

[GNU GPL v2.0](https://github.com/Angristan/server-status/blob/master/LICENSE)
