// Copyright (c) HashiCorp, Inc.
// SPDX-License-Identifier: BUSL-1.1

package stubs

import (
	"fmt"

	"github.com/hashicorp/terraform/internal/providers"
	"github.com/hashicorp/terraform/internal/tfdiags"
)

// erroredProvider is a stub provider that is used in place of a provider that
// failed the configuration step. Within the context of Stacks, an errored
// provider would have been configured by Stacks, and therefore should not be
// configured again, or used for any offline functionality.
type erroredProvider struct{}

var _ providers.Interface = &erroredProvider{}

func ErroredProvider() providers.Interface {
	return &erroredProvider{}
}

// ApplyResourceChange implements providers.Interface.
func (p *erroredProvider) ApplyResourceChange(providers.ApplyResourceChangeRequest) providers.ApplyResourceChangeResponse {
	var diags tfdiags.Diagnostics
	diags = diags.Append(tfdiags.AttributeValue(
		tfdiags.Error,
		"Provider configuration is invalid",
		"Cannot apply changes because this resource's associated provider configuration is invalid.",
		nil, // nil attribute path means the overall configuration block
	))
	return providers.ApplyResourceChangeResponse{
		Diagnostics: diags,
	}
}

func (p *erroredProvider) CallFunction(providers.CallFunctionRequest) providers.CallFunctionResponse {
	return providers.CallFunctionResponse{
		Err: fmt.Errorf("CallFunction shouldn't be called on an errored provider; this is a bug in Terraform - please report this error"),
	}
}

// Close implements providers.Interface.
func (p *erroredProvider) Close() error {
	return nil
}

// ConfigureProvider implements providers.Interface.
func (p *erroredProvider) ConfigureProvider(providers.ConfigureProviderRequest) providers.ConfigureProviderResponse {
	// This provider is used only in situations where ConfigureProvider on
	// a real provider fails and the recipient was expecting a configured
	// provider, so it doesn't make sense to configure it.
	panic("can't configure the stub provider")
}

// GetProviderSchema implements providers.Interface.
func (p *erroredProvider) GetProviderSchema() providers.GetProviderSchemaResponse {
	return providers.GetProviderSchemaResponse{}
}

func (p *erroredProvider) GetResourceIdentitySchemas() providers.GetResourceIdentitySchemasResponse {
	return providers.GetResourceIdentitySchemasResponse{}
}

// ImportResourceState implements providers.Interface.
func (p *erroredProvider) ImportResourceState(providers.ImportResourceStateRequest) providers.ImportResourceStateResponse {
	var diags tfdiags.Diagnostics
	diags = diags.Append(tfdiags.AttributeValue(
		tfdiags.Error,
		"Provider configuration is invalid",
		"Cannot import an existing object into this resource because its associated provider configuration is invalid.",
		nil, // nil attribute path means the overall configuration block
	))
	return providers.ImportResourceStateResponse{
		Diagnostics: diags,
	}
}

// MoveResourceState implements providers.Interface.
func (p *erroredProvider) MoveResourceState(providers.MoveResourceStateRequest) providers.MoveResourceStateResponse {
	var diags tfdiags.Diagnostics
	diags = diags.Append(tfdiags.AttributeValue(
		tfdiags.Error,
		"Called MoveResourceState on an errored provider",
		"Terraform called MoveResourceState on an errored provider. This is a bug in Terraform - please report this error.",
		nil, // nil attribute path means the overall configuration block
	))
	return providers.MoveResourceStateResponse{
		Diagnostics: diags,
	}
}

// PlanResourceChange implements providers.Interface.
func (p *erroredProvider) PlanResourceChange(providers.PlanResourceChangeRequest) providers.PlanResourceChangeResponse {
	var diags tfdiags.Diagnostics
	diags = diags.Append(tfdiags.AttributeValue(
		tfdiags.Error,
		"Provider configuration is invalid",
		"Cannot plan changes for this resource because its associated provider configuration is invalid.",
		nil, // nil attribute path means the overall configuration block
	))
	return providers.PlanResourceChangeResponse{
		Diagnostics: diags,
	}
}

// ReadDataSource implements providers.Interface.
func (p *erroredProvider) ReadDataSource(providers.ReadDataSourceRequest) providers.ReadDataSourceResponse {
	var diags tfdiags.Diagnostics
	diags = diags.Append(tfdiags.AttributeValue(
		tfdiags.Error,
		"Provider configuration is invalid",
		"Cannot read from this data source because its associated provider configuration is invalid.",
		nil, // nil attribute path means the overall configuration block
	))
	return providers.ReadDataSourceResponse{
		Diagnostics: diags,
	}
}

// ReadResource implements providers.Interface.
func (p *erroredProvider) ReadResource(req providers.ReadResourceRequest) providers.ReadResourceResponse {
	// For this one we'll just optimistically assume that the remote object
	// hasn't changed. In many cases we'll fail calling PlanResourceChange
	// right afterwards anyway, and even if not we'll get another opportunity
	// to refresh on a future run once the provider configuration is fixed.
	return providers.ReadResourceResponse{
		NewState: req.PriorState,
		Private:  req.Private,
	}
}

// OpenEphemeralResource implements providers.Interface.
func (p *erroredProvider) OpenEphemeralResource(providers.OpenEphemeralResourceRequest) providers.OpenEphemeralResourceResponse {
	var diags tfdiags.Diagnostics
	diags = diags.Append(tfdiags.AttributeValue(
		tfdiags.Error,
		"Provider configuration is invalid",
		"Cannot open this ephemeral resource instance because its associated provider configuration is invalid.",
		nil, // nil attribute path means the overall configuration block
	))
	return providers.OpenEphemeralResourceResponse{
		Diagnostics: diags,
	}
}

// RenewEphemeralResource implements providers.Interface.
func (p *erroredProvider) RenewEphemeralResource(providers.RenewEphemeralResourceRequest) providers.RenewEphemeralResourceResponse {
	// We don't have anything to do here because OpenEphemeralResource didn't really
	// actually "open" anything.
	return providers.RenewEphemeralResourceResponse{}
}

// CloseEphemeralResource implements providers.Interface.
func (p *erroredProvider) CloseEphemeralResource(providers.CloseEphemeralResourceRequest) providers.CloseEphemeralResourceResponse {
	// We don't have anything to do here because OpenEphemeralResource didn't really
	// actually "open" anything.
	return providers.CloseEphemeralResourceResponse{}
}

// Stop implements providers.Interface.
func (p *erroredProvider) Stop() error {
	// This stub provider never actually does any real work, so there's nothing
	// for us to stop.
	return nil
}

// UpgradeResourceState implements providers.Interface.
func (p *erroredProvider) UpgradeResourceState(providers.UpgradeResourceStateRequest) providers.UpgradeResourceStateResponse {
	// Ideally we'd just skip this altogether and echo back what the caller
	// provided, but the request is in a different serialization format than
	// the response and so only the real provider can deal with this one.
	var diags tfdiags.Diagnostics
	diags = diags.Append(tfdiags.AttributeValue(
		tfdiags.Error,
		"Provider configuration is invalid",
		"Cannot decode the prior state for this resource instance because its provider configuration is invalid.",
		nil, // nil attribute path means the overall configuration block
	))
	return providers.UpgradeResourceStateResponse{
		Diagnostics: diags,
	}
}

func (p *erroredProvider) UpgradeResourceIdentity(providers.UpgradeResourceIdentityRequest) providers.UpgradeResourceIdentityResponse {
	// Ideally we'd just skip this altogether and echo back what the caller
	// provided, but the request is in a different serialization format than
	// the response and so only the real provider can deal with this one.
	var diags tfdiags.Diagnostics
	diags = diags.Append(tfdiags.AttributeValue(
		tfdiags.Error,
		"Provider configuration is invalid",
		"Cannot decode the prior state for this resource instance because its provider configuration is invalid.",
		nil, // nil attribute path means the overall configuration block
	))
	return providers.UpgradeResourceIdentityResponse{
		Diagnostics: diags,
	}
}

// ValidateDataResourceConfig implements providers.Interface.
func (p *erroredProvider) ValidateDataResourceConfig(providers.ValidateDataResourceConfigRequest) providers.ValidateDataResourceConfigResponse {
	// We'll just optimistically assume the configuration is valid, so that
	// we can progress to planning and return an error there instead.
	return providers.ValidateDataResourceConfigResponse{
		Diagnostics: nil,
	}
}

// ValidateProviderConfig implements providers.Interface.
func (p *erroredProvider) ValidateProviderConfig(req providers.ValidateProviderConfigRequest) providers.ValidateProviderConfigResponse {
	// It doesn't make sense to call this one on stubProvider, because
	// we only use stubProvider for situations where ConfigureProvider failed
	// on a real provider and we should already have called
	// ValidateProviderConfig on that provider by then anyway.
	return providers.ValidateProviderConfigResponse{
		PreparedConfig: req.Config,
		Diagnostics:    nil,
	}
}

// ValidateEphemeralResourceConfig implements providers.Interface.
func (p *erroredProvider) ValidateEphemeralResourceConfig(providers.ValidateEphemeralResourceConfigRequest) providers.ValidateEphemeralResourceConfigResponse {

	return providers.ValidateEphemeralResourceConfigResponse{
		Diagnostics: nil,
	}
}

// ValidateResourceConfig implements providers.Interface.
func (p *erroredProvider) ValidateResourceConfig(providers.ValidateResourceConfigRequest) providers.ValidateResourceConfigResponse {
	// We'll just optimistically assume the configuration is valid, so that
	// we can progress to reading and return an error there instead.
	return providers.ValidateResourceConfigResponse{
		Diagnostics: nil,
	}
}

// ValidateListResourceConfig implements providers.Interface.
func (p *erroredProvider) ValidateListResourceConfig(providers.ValidateListResourceConfigRequest) providers.ValidateListResourceConfigResponse {
	return providers.ValidateListResourceConfigResponse{
		Diagnostics: nil,
	}
}

// ListResource implements providers.Interface.
func (p *erroredProvider) ListResource(req providers.ListResourceRequest) providers.ListResourceResponse {
	var resp providers.ListResourceResponse
	resp.Diagnostics = resp.Diagnostics.Append(tfdiags.AttributeValue(
		tfdiags.Error,
		"Provider configuration is invalid",
		"Cannot list this resource because its associated provider configuration is invalid.",
		nil, // nil attribute path means the overall configuration block
	))
	return resp
}

// ValidateStateStoreConfig implements providers.Interface.
func (p *erroredProvider) ValidateStateStoreConfig(providers.ValidateStateStoreConfigRequest) providers.ValidateStateStoreConfigResponse {
	return providers.ValidateStateStoreConfigResponse{
		Diagnostics: nil,
	}
}

// ConfigureStateStore implements providers.Interface.
func (p *erroredProvider) ConfigureStateStore(providers.ConfigureStateStoreRequest) providers.ConfigureStateStoreResponse {
	return providers.ConfigureStateStoreResponse{
		Diagnostics: nil,
	}
}

// GetStates implements providers.Interface.
func (p *erroredProvider) GetStates(providers.GetStatesRequest) providers.GetStatesResponse {
	var diags tfdiags.Diagnostics
	diags = diags.Append(tfdiags.AttributeValue(
		tfdiags.Error,
		"Provider configuration is invalid",
		"Cannot list states managed by this state store because its associated provider configuration is invalid.",
		nil, // nil attribute path means the overall configuration block
	))
	return providers.GetStatesResponse{
		Diagnostics: diags,
	}
}

// DeleteState implements providers.Interface.
func (p *erroredProvider) DeleteState(providers.DeleteStateRequest) providers.DeleteStateResponse {
	var diags tfdiags.Diagnostics
	diags = diags.Append(tfdiags.AttributeValue(
		tfdiags.Error,
		"Provider configuration is invalid",
		"Cannot delete state using this state store because its associated provider configuration is invalid.",
		nil, // nil attribute path means the overall configuration block
	))
	return providers.DeleteStateResponse{
		Diagnostics: diags,
	}
}

// PlanAction implements providers.Interface.
func (p *erroredProvider) PlanAction(providers.PlanActionRequest) providers.PlanActionResponse {
	var diags tfdiags.Diagnostics
	diags = diags.Append(tfdiags.AttributeValue(
		tfdiags.Error,
		"Provider configuration is invalid",
		"Cannot plan this action because its associated provider configuration is invalid.",
		nil, // nil attribute path means the overall configuration block
	))
	return providers.PlanActionResponse{
		Diagnostics: diags,
	}
}

// InvokeAction implements providers.Interface.
func (p *erroredProvider) InvokeAction(_ providers.InvokeActionRequest) providers.InvokeActionResponse {
	var diags tfdiags.Diagnostics
	diags = diags.Append(tfdiags.AttributeValue(
		tfdiags.Error,
		"Provider configuration is invalid",
		"Cannot invoke this action because its associated provider configuration is invalid.",
		nil, // nil attribute path means the overall configuration block
	))
	return providers.InvokeActionResponse{
		Diagnostics: diags,
	}
}

func (p *erroredProvider) ValidateActionConfig(_ providers.ValidateActionConfigRequest) providers.ValidateActionConfigResponse {
	var diags tfdiags.Diagnostics
	diags = diags.Append(tfdiags.AttributeValue(
		tfdiags.Error,
		"Provider configuration is invalid",
		"Cannot validate this action configuration because its associated provider configuration is invalid.",
		nil, // nil attribute path means the overall configuration block
	))
	return providers.ValidateActionConfigResponse{
		Diagnostics: diags,
	}
}
