## SIREN

### Embedded entities

``` js
{
    entities: [{
        class: [ 'member' ],
        rel: [ 'http://meetup.api/rels/attendee' ],
        properties: {
            personId: 't.pluskiewicz',
            fullName: 'Tomasz Pluskiewicz'
        },
        links:[
            {
                rel: [ 'self' ],
                href: 'http://meetup.api/../september/attendees'
            }
        ]
    }]
}
```

note:
embedded, again?