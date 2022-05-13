![Make Blocklist](https://github.com/smashah/smashblock/workflows/Make%20Blocklist/badge.svg)

[![Buy me a coffee][buymeacoffee-shield]][buymeacoffee]

# SMASHBLOCK

This repo is a simple wrapping of [hectorm/hblock](https://github.com/hectorm/hblock) designed to work with adgaurd that gets rebuilt every Monday morning.

Now the blocklist also includes [The Quantum Ad-List](https://gitlab.com/The_Quantum_Alpha/the-quantum-ad-list/-/tree/master) and removes any duplicates.

Simply add the following url to your adguard filter list:

`https://raw.githubusercontent.com/smashah/smashblock/master/blocklist.txt`

or if you want one with 127.0.0.1 redirects:

`https://raw.githubusercontent.com/smashah/smashblock/master/blocklist-r.txt`

## False Positives

This block list is designed to be overly protective. This means that sometimes a legitimate site ends up on the list. If you've identified a site that's not meant to be on the blocklist then please submit a PR with a change to [false-positives.txt](https://github.com/smashah/smashblock/blob/master/false-positives.txt)

Make sure to attach a urlscan.io report to your PR also e.g: (urlscan result for openwa.dev)[https://urlscan.io/result/931a5dc0-74ec-49ff-a7c4-18df1c4957bd]

Keep the commit formatting the same as the rest of the commits on this file:

[false-positives.txt commit history](https://github.com/smashah/smashblock/commits/master/false-positives.txt)

[buymeacoffee-shield]: https://www.buymeacoffee.com/assets/img/guidelines/download-assets-sm-2.svg
[buymeacoffee]: https://www.buymeacoffee.com/smashah
