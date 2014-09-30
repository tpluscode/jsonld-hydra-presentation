## Hydra

### Classes

``` js
{
    "@context": "http://www.w3.org/ns/hydra/context.jsonld",
    "@id": "http://meetup.api/vocab/Meetup",
    "@type": "Class",
    "supportedOperation": [ { "@type": "Operation" } ],
    "supportedProperty": [
        {
            "property": "http://meetup.api/vocab/attendees",
            "writable": false,
            "readable": true,
            "required": false,
            "supportedOperation": [ { "@type": "Operation" } ]
        }
    ]
}
```

note:
next: don't have to dereference classes every time