[![](http://dockeri.co/image/lp76/wordpress)](https://registry.hub.docker.com/u/lp76/wordpress/)

This image provides __Wordpress 4.3__ with WP Mail SMTP e WP Super Cache plugin installed.

You can combine with my data container to persist any changes.

This is an example using __Docker Compose__:

```
wp:
  image: lp76/wordpress
  links:
    - mysql:mysql
  ports:
    - "80"
  volumes_from:
    - paasdata
mysql:
  image: mysql
  volumes_from:
    - paasdata
  environment:
    - MYSQL_ROOT_PASSWORD=Password1
paasdata:
  image: lp76/data
  command: tail -f /dev/null
```
