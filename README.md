# my-little-robot
Keyword-Driven tests example

Prepared for Test Automation University (module 1)

### FAQ
- Can't start `selenium-docker`:

    **NB!** workaround!
    
    Download required driver,
    e.g. [firefox](https://github.com/mozilla/geckodriver/releases/download/v0.27.0/geckodriver-v0.27.0-win64.zip)
    into working directory and than start the test. Then remove `remote_url=${REMOTE}` from `Open Browser` call.
