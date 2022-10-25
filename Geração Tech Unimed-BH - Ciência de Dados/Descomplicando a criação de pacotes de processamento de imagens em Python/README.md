# mac_vendors

Description. 
- The package mac_vendors is used to:
	
	- Vendor: 
		- get_by_single 
		- get_by_tuple
		- get_by_file
	- Api_vendors:
		- get_info

## Installation

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install package_name

```bash
pip install mac_vendors
```

## Usage 

#### Get information from a single mac
```python
from mac_vendors import Vendors

example = Vendors()
example.get_by_single('78:30:3b')
print(example.response)
```

#### Get the information through a file
- The file must have one mac per line
```python
from mac_vendors import Vendors

example = Vendors()
example.get_by_file('DIR/FILE')
print(example.response)
```

#### Get the information through a tuple
```python
from mac_vendors import Vendors

macs = ('78:30:3b', '00:19:46')

example = Vendors()
example.get_by_tuple(*macs)
print(example.response)
```

## Author
Edgar Reis

## License
[MIT](https://choosealicense.com/licenses/mit/)