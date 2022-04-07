DENO=deno run --no-remote --import-map=vendor/import_map.json

.PHONY: read-file
read-file:
	$(DENO) --allow-read read-file.ts ./run-net.ts

.PHONY: run-net
run-net:
	$(DENO) --allow-net run-net.ts https://blockclubchicago.org/feed

vendor:
	deno vendor run-net.ts read-file.ts
