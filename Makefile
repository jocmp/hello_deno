.PHONY: read-file
read-file:
	run --allow-read read-file.ts ./run-net.ts

.PHONY: run-net
run-net:
	deno run --allow-net run-net.ts https://blockclubchicago.org/feed
