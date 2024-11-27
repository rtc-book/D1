.PHONY: release

release:
	@echo "Building release ..."
	@bash git-archive-all.sh/git-archive-all.sh --format zip
	@echo "Moving zip to releases folder ..."
	@mv *.zip releases/
	@echo "Done!"