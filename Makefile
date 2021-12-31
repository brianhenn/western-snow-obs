ENV=western-snow-obs
	 
create_env:
	conda create --name ${ENV} --file spec-file.txt && ipython kernel install --user --name=${ENV}
    
update_deps:
	conda list -n ${ENV} --explicit > spec-file.txt

clean:
	rm -rf __pycache__


.PHONY: clean
