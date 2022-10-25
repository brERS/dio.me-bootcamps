from setuptools import find_packages, setup

with open("README.md", "r") as f:
    page_description = f.read()

with open("requirements.txt") as f:
    requirements = f.read().splitlines()

setup(
    name="mac-vendors",
    version="0.0.5",
    author="Edgar Reis",
    description="Get vendor information from a MAC address.",
    long_description=page_description,
    long_description_content_type="text/markdown",
    url="https://github.com/brERS/dio.me-bootcamps/tree/main/Gera%C3%A7%C3%A3o%20Tech%20Unimed-BH%20-%20Ci%C3%AAncia%20de%20Dados/Descomplicando%20a%20cria%C3%A7%C3%A3o%20de%20pacotes%20em%20Python",
    packages=find_packages(),
    install_requires=requirements,
    python_requires='>=3.8',
)
