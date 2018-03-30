For the errror:

```
ValueError: Unable to configure formatter 'json': Cannot resolve 'awx.main.utils.formatters.LogstashFormatter': No module named Crypto.Cipher ansible tower
```

Do the following

```
# yum install python2-pip gcc -y
# pip install pycrypto
```

For the error

```
ValueError: Unable to configure handler 'callback_receiver': [Errno 13] Permission denied: '/var/log/tower/callback_receiver.log'
```

Do the following

```
# chmod 777 /var/log/tower -R
```
