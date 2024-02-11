## Docker

1. ```Error response from daemon: failed to create task for container: failed to create shim task: OCI runtime create failed: runc create failed: unable to start container process: error during container init: error mounting "/var/lib/docker/volumes/425eba127ec3ac59ffd78d63834dd827d94e5a3c42885c567f8251c383a9ef4c/_data" to rootfs at "/app/node_modules": mkdir /var/lib/docker/overlay2/485a8952883bececb3de50e7284025041c73eb1651d6ca49530e835196314ac9/merged/app/node_modules: read-only file system: unknown```

- [X] Resolved: create node_modules directory in the repository where the error occurred.

2. ```ERROR: Elasticsearch exited unexpectedly, with exit code 78```

```{"@timestamp":"2024-01-28T09:38:51.260Z", "log.level":"ERROR", "message":"node validation exception\n[1] bootstrap checks failed. You must address the points described in the following [1] lines before starting Elasticsearch. For more information see [https://www.elastic.co/guide/en/elasticsearch/reference/8.12/bootstrap-checks.html]\nbootstrap check failure [1] of [1]: max virtual memory areas vm.max_map_count [65530] is too low, increase to at least [262144]; for more information see [https://www.elastic.co/guide/en/elasticsearch/reference/8.12/_maximum_map_count_check.html]", "ecs.version": "1.2.0","service.name":"ES_ECS","event.dataset":"elasticsearch.server","process.thread.name":"main","log.logger":"org.elasticsearch.bootstrap.Elasticsearch","elasticsearch.node.name":"e563df7605de","elasticsearch.cluster.name":"docker-cluster"}```

- [X] Resolved: Need to increase VM memory (vm.max_map_count) - https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html#_set_vm_max_map_count_to_at_least_262144
