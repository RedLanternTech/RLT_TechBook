Unable to update pfSense

Was discovered the pfSense box was not updating, if I got into the console and ran
`pkg-static -d update`

It would give an error in all the off the logs stating there was a self-signed certificate.

This was probably caused by the addition of the ProtonVPN certificate.

Run `certctl rehash` and then rerun `pkg-static -d update` and that should clear the error
