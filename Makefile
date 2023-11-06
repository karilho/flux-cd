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
	flux create source git general-market-go \
		--url=https://github.com/karilho/general-market-go \
		--branch=main \
		--interval=1m \
		--export > ./general-market-go.yaml