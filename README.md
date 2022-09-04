# dev-machine

Automate and maintain developer machine setup. Provide your organization and developers with a non-invasive, local-only way to keep things in sync.

## Documentation

<https://actionscripted.github.io/dev-machine/>

## Quick Start

Clone and bootstrap your organization's `dev-machine`:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/do-stuff.sh)"

Organization name: My Organization
Organization slug: myorg

(...output from the setup...)

---

All set! Next, push this to your own repo and customize:

git remote add origin git@github.com:myorg/dev-machine.git
git push
```

Next, check out [getting started](https://actionscripted.github.io/dev-machine/usage/getting-started.html) and [customization](https://actionscripted.github.io/dev-machine/usage/customization.html).

## License

[MIT](./LICENSE)
