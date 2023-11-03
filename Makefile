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