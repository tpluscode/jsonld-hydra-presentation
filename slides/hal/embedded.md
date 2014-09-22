## Hypertext Application Language

```
{
    _links: {
        self: { href: 'http://meetup.api/../september/attendees' },
        next: { href: 'http://meetup.api/../september/attendees?page=2' }
    },
    size: 1,
    _embedded: {
        attendees: [
            {
                _links: {
                    self: { href: 'http://meetup.api/users/t.pluskiewicz' }
                },
                fullName: 'Tomasz Pluskiewicz'
            }
        ]
    }
}
```

note:
hm, how do I add attendees?