isort:
    uvx isort --length-sort --profile black --line-length 120 idb/ scripts/ tests/

black:
    uvx black --line-length 120 idb/ scripts/ tests/

ruff:
    uvx ruff check --line-length 120 idb/ scripts/ tests/

mypy:
    uvx mypy --check-untyped-defs --ignore-missing-imports idb/ scripts/ tests/

lint:
    -just isort
    -just black
    # these aren't passing yet
    # -just ruff
    # -just mypy

test:
    uv run pytest tests/
