package test

import (
	"testing"
	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestTerraformAWSInstance(t *testing.T) {
	t.Parallel()

	terraformOptions := &terraform.Options{
		TerraformDir: "../",
	}

	defer terraform.Destroy(t, terraformOptions)
	terraform.InitAndApply(t, terraformOptions)

	instanceType := terraform.Output(t, terraformOptions, "instance_type")
	createdBy := terraform.Output(t, terraformOptions, "created_by")

	assert.Equal(t, "t2.micro", instanceType)
	assert.Equal(t, "Palak", createdBy)
}
