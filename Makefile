pushconfig:
	-kubectl delete configmap stashcache-redirector -n osg  # delete if already exists, ignore errors
	kubectl create configmap stashcache-redirector  -n osg --from-file=cache-redirector.cfg=cache-redirector.cfg
