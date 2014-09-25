## Hydra

### API documentation discovery

```
GET /groups/meetjs.wroclaw/meetup/september HTTP/1.1
Host: meetup.api

====================================

HTTP/1.1 200 OK
...
Content-Type: application/ld+json
Link: <http://meetup.api/doc/>;
      rel="http://www.w3.org/ns/hydra/core#apiDocumentation"
```
