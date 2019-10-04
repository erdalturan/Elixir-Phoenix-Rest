# MyApp

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Create User with curl 
```bash
curl -H "Content-Type: application/json" -X POST \
-d '{"user":{"email":"user_name@email.com","password":"password"}}' \
http://localhost:4000/api/users \ -c cookies.txt -b cookies.txt

```
## Result
```bash

HTTP/1.1 201 Created
server: Cowboy
date: Fri, 04 Oct 2019 13:17:35 GMT
content-length: 139
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
vary: Origin
access-control-allow-origin: null
access-control-expose-headers: 
access-control-allow-credentials: true
location: /api/users/9

{"data":{"password":"$2b$12$HZAQV6eEY80EYX.2vFy8mewEi.UNXBf61qX7t44MzQbb4HLZp6gQi","is_active":false,"id":9,"email":"user_name@email.com"}}

```
## Login User with curl 
```bash
curl -H "Content-Type: application/json" -X POST \
-d '{"email":"user_name@email.com","password":"password"}' \
http://localhost:4000/api/users/sign_in \ -c cookies.txt -b cookies.txt

```
## Get All Users
```bash
curl -H "Content-Type: application/json" -X GET \
http://localhost:4000/api/users \ -c cookies.txt -b cookies.txt


```
## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
