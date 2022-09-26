GO_PACKAGES=$(shell go list ./... | grep -v vendor)

.PHONY:
	lint \
	test \
	vet

# Get default value of $GOBIN if not explicitly set
GO_PATH=$(shell go env GOPATH)
ifeq (,$(shell go env GOBIN))
  GOBIN=${GO_PATH}/bin
else
  GOBIN=$(shell go env GOBIN)
endif

vet:
	go vet ${GO_PACKAGES}

# Run configured linters
lint:
	golangci-lint run --timeout 10m0s
