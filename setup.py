import setuptools

with open("README.md", "r") as fh:
    long_description = fh.read()

setuptools.setup(
    name="epidoc_stylesheets_tests",
    version="0.0.1",
    author="Tom Elliott",
    author_email="tom.elliott@nyu.edu",
    description="A test environment of sorts for the EpiDoc Stylesheets",
    license='MIT',
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://epidoc.stoa.org",
    packages=setuptools.find_packages(),
    classifiers=[
        "Programming Language :: Python :: ",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    install_requires=['airtight', 'better_exceptions'],
    python_requires='>='
)
