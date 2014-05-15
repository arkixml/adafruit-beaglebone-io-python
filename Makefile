time:
	/usr/bin/ntpdate -b -s -u pool.ntp.org

publish: clean
	python3 setup.py sdist upload

clean:
	rm -rf Adafruit_BBIO.* build dist
	rm -f *.pyo
	rm -rf __pycache__
	rm -f *.egg
	rm -f overlays/*.pyo overlays/*.pyc
	rm -rf overlays/__pycache__
tests:
	py.test

build:
	python3 setup.py build --force

install: build
	python3 setup.py install --force
