# fluent-bit

Here is a sample fluent-bit config:


```shell
[SERVICE]
    Flush        1
    Log_Level    debug
    Parsers_File parsers.conf
    Daemon Off

[INPUT]
    Name tail
    Parser 	syslog-rfc3164
    Path        /var/log/*
    Path_Key 	filename
[OUTPUT]
    Name  es
    Match *
    Path /api
    Index syslog
    Type  journal
    Host lb02.localdomain
    Port 4080
    Generate_ID On
    HTTP_User admin
    HTTP_Passwd secret

[FILTER]
    Name parser
    Match *
    Key_Name data
    Parser syslog-rfc3164
```

