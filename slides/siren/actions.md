## SIREN

### Actions

``` js
{
    actions: [
        {
            name: 'register',
            title: 'Register for meetup',
            method: 'POST',
            href: 'http://meetup.api/../september/attendees',
            type: 'application/x-www-form-urlencoded',
            fields: [
                { name: 'personId', type: 'text' }
            ]
        }
    ]
}
```

note:
ah, something new, but why should mime type be required?

www-form-urlencoded is actually the default value

and the fields are somewhat detached from the entity