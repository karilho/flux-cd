-include config.env

export
bootstrap:
	flux bootstrap github \
	  --components-extra=image-reflector-controller,image-automation-controller \
	  --owner=karilho \
	  --repository=flux-cd \
	  --branch=main \
	  --path=./ \
	  --read-write-key \
	  --personal

repo=
gitrepo:
	flux create secret git $(repo) \
        --url=https://github.com/karilho/$(repo) \
        --username=karilho \
        --password=$$GITHUB_TOKEN