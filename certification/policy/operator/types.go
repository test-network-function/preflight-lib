package operator

import (
	"context"

	"github.com/test-network-function/preflight-lib/certification/operatorsdk"
)

type operatorSdk interface {
	BundleValidate(context.Context, string, operatorsdk.OperatorSdkBundleValidateOptions) (*operatorsdk.OperatorSdkBundleValidateReport, error)
	Scorecard(context.Context, string, operatorsdk.OperatorSdkScorecardOptions) (*operatorsdk.OperatorSdkScorecardReport, error)
}
