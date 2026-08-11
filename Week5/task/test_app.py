from app import add, greet


def test_add():
    assert add(2, 3) == 8


def test_greet():
    assert greet("Purva") == "Hello, Purva!"
