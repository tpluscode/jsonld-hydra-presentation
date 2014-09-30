## JSON-LD

### Basic keywords

``` js
{
    "@context": {
        "@base": "http://meetup.api/groups/",
        "meetup": "http://meetup.api/vocab/",
        "@vocab": "http://schema.org/",
        "meetupGroup": { "@id": "meetup:meetupGroup", "@type": "@id" },
        "previous": { "@id": "meetup:previous", "@type": "@id" },
        "attendees": { "@type": "@id" }
    },
    "@id": "meetjs.wroclaw/meetup/september",
    "@type": "Event",
    "meetupGroup": "meetjs.wroclaw",
    "description": "Wrześniowy meet.js",
    "previous": "meetjs.wroclaw/meetup/august",
    "attendees": "meetjs.wroclaw/meetup/september/attendees"
}
```
