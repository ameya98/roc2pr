include .env

coverage:
		python2.7 -m coverage run -m pytest
		python3 -m coverage run --append -m pytest
		python3 -m coverage xml

codecov: coverage
		codecov --token=${CODECOV_TOKEN}