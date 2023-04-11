# Django Starter

> All you need to start a new wep app based on Django

## Virtualenv

Create a virtualenv where you will download all of your requirements.

`python -m venv venv`

Activate the virtualenv

`source venv/bin/activate`

## Requirements

I use pip-tools to manage requirements 

`pip install pip-tools`

`pip-sync`

### Compile requirements

All first level requirements are tracked in `pyproject.toml`.

To generate the `requirements.txt` file run the following command : `pip-compile -o requirements.txt pyproject.toml`
