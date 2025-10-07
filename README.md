## Setup

1. Create a virtual environment

```
python -m venv .venv
```

2. Activate the virtual environment

```
source .venv/bin/activate
```

3. Verify the virtual environment is activated

```
which python
```

The output should be something like:
```
<path_to_your_virtual_environment>/.venv/bin/python
```

4. Install dependencies

```
python -m pip install uv
uv pip install -r requirements.txt
```
