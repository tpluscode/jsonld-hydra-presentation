## SIREN

### Entity type and state

``` js
{
    class: [ 'meetup' ],
    properties: {
        meetupId: 'september',
        meetupGroup: 'meetjs.wroclaw',
        description: 'Wrześniowy meet.js',
        previous: 'august'
    },
    links: [
        {
            rel: [ 'self' ],
            href: 'http://meetup.api/groups/meetjs.wroclaw/meetup/september'
        }
    ]
}
```

note:
hm, class optional and has no real meaning

what's with that 'properties' object ?