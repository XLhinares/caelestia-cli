reinstall:
	@ sudo rm -r /usr/lib/python3.14/site-packages/caelestia*
	@ sudo rm /usr/bin/caelestia
	@ python -m build --wheel
	@ sudo python -m installer dist/*.whl
	@ sudo cp completions/caelestia.fish /usr/share/fish/vendor_completions.d/caelestia.fish
