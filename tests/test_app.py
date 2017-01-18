from flask import url_for

from FlaskWithDocker.myapp.my_app import app


def test_app_hello_view():
    client = app.test_client()
    resp = client.get("/")
    assert resp.status_code == 200


def test_app_hello_json():
    client = app.test_client()
    resp = client.get("/")
    assert resp.get_data({'hello': 'world'})
