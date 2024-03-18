
# Control the build verbosity
ifeq ("$(VERBOSE)","1")
    Q :=
    VECHO = @true
else
    Q := @
    VECHO = @printf
endif

fetch:
	./scripts/check_env.sh
	./scripts/MINIST_download.py ../dataset/

clean:
	rm -rf dataset/