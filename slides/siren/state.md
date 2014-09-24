## SIREN

### Entity type and state

``` js
{
    class: [ 'Meetup' ],
    properties: {
        meetupId: 'september',
        description: 'Wrześniowy meet.js'
    },
    links: [
        { rel: [ 'self' ], href: '/groups/meetjs.wroclaw/meetup/september' },
        { rel: [ 'previous' ], href: '/groups/meetjs.wroclaw/meetup/august' },
        { rel: [ 'meetupGroup' ], href: '/groups/meetjs.wroclaw' }
    ]
}
```

note:
hm, class optional and has no real meaning

what's with that 'properties' object ?