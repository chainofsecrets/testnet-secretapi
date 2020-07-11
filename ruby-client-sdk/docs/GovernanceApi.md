# SwaggerClient::GovernanceApi

All URIs are relative to *https://api.secrettestnet.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gov_parameters_deposit_get**](GovernanceApi.md#gov_parameters_deposit_get) | **GET** /gov/parameters/deposit | Query governance deposit parameters
[**gov_parameters_tallying_get**](GovernanceApi.md#gov_parameters_tallying_get) | **GET** /gov/parameters/tallying | Query governance tally parameters
[**gov_parameters_voting_get**](GovernanceApi.md#gov_parameters_voting_get) | **GET** /gov/parameters/voting | Query governance voting parameters
[**gov_proposals_get**](GovernanceApi.md#gov_proposals_get) | **GET** /gov/proposals | Query proposals
[**gov_proposals_param_change_post**](GovernanceApi.md#gov_proposals_param_change_post) | **POST** /gov/proposals/param_change | Generate a parameter change proposal transaction
[**gov_proposals_post**](GovernanceApi.md#gov_proposals_post) | **POST** /gov/proposals | Submit a proposal
[**gov_proposals_proposal_id_deposits_depositor_get**](GovernanceApi.md#gov_proposals_proposal_id_deposits_depositor_get) | **GET** /gov/proposals/{proposalId}/deposits/{depositor} | Query deposit
[**gov_proposals_proposal_id_deposits_get**](GovernanceApi.md#gov_proposals_proposal_id_deposits_get) | **GET** /gov/proposals/{proposalId}/deposits | Query deposits
[**gov_proposals_proposal_id_deposits_post**](GovernanceApi.md#gov_proposals_proposal_id_deposits_post) | **POST** /gov/proposals/{proposalId}/deposits | Deposit tokens to a proposal
[**gov_proposals_proposal_id_get**](GovernanceApi.md#gov_proposals_proposal_id_get) | **GET** /gov/proposals/{proposalId} | Query a proposal
[**gov_proposals_proposal_id_proposer_get**](GovernanceApi.md#gov_proposals_proposal_id_proposer_get) | **GET** /gov/proposals/{proposalId}/proposer | Query proposer
[**gov_proposals_proposal_id_tally_get**](GovernanceApi.md#gov_proposals_proposal_id_tally_get) | **GET** /gov/proposals/{proposalId}/tally | Get a proposal&#39;s tally result at the current time
[**gov_proposals_proposal_id_votes_get**](GovernanceApi.md#gov_proposals_proposal_id_votes_get) | **GET** /gov/proposals/{proposalId}/votes | Query voters
[**gov_proposals_proposal_id_votes_post**](GovernanceApi.md#gov_proposals_proposal_id_votes_post) | **POST** /gov/proposals/{proposalId}/votes | Vote a proposal
[**gov_proposals_proposal_id_votes_voter_get**](GovernanceApi.md#gov_proposals_proposal_id_votes_voter_get) | **GET** /gov/proposals/{proposalId}/votes/{voter} | Query vote


# **gov_parameters_deposit_get**
> InlineResponse2008 gov_parameters_deposit_get

Query governance deposit parameters

Query governance deposit parameters. The max_deposit_period units are in nanoseconds.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GovernanceApi.new

begin
  #Query governance deposit parameters
  result = api_instance.gov_parameters_deposit_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GovernanceApi->gov_parameters_deposit_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **gov_parameters_tallying_get**
> Object gov_parameters_tallying_get

Query governance tally parameters

Query governance tally parameters

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GovernanceApi.new

begin
  #Query governance tally parameters
  result = api_instance.gov_parameters_tallying_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GovernanceApi->gov_parameters_tallying_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **gov_parameters_voting_get**
> Object gov_parameters_voting_get

Query governance voting parameters

Query governance voting parameters. The voting_period units are in nanoseconds.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GovernanceApi.new

begin
  #Query governance voting parameters
  result = api_instance.gov_parameters_voting_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GovernanceApi->gov_parameters_voting_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **gov_proposals_get**
> Array&lt;TextProposal&gt; gov_proposals_get(opts)

Query proposals

Query proposals information with parameters

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GovernanceApi.new

opts = { 
  voter: 'voter_example', # String | voter address
  depositor: 'depositor_example', # String | depositor address
  status: 'status_example' # String | proposal status, valid values can be `\"deposit_period\"`, `\"voting_period\"`, `\"passed\"`, `\"rejected\"`
}

begin
  #Query proposals
  result = api_instance.gov_proposals_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GovernanceApi->gov_proposals_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voter** | **String**| voter address | [optional] 
 **depositor** | **String**| depositor address | [optional] 
 **status** | **String**| proposal status, valid values can be &#x60;\&quot;deposit_period\&quot;&#x60;, &#x60;\&quot;voting_period\&quot;&#x60;, &#x60;\&quot;passed\&quot;&#x60;, &#x60;\&quot;rejected\&quot;&#x60; | [optional] 

### Return type

[**Array&lt;TextProposal&gt;**](TextProposal.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **gov_proposals_param_change_post**
> StdTx gov_proposals_param_change_post(post_proposal_body)

Generate a parameter change proposal transaction

Generate a parameter change proposal transaction

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GovernanceApi.new

post_proposal_body = SwaggerClient::PostProposalBody1.new # PostProposalBody1 | The parameter change proposal body that contains all parameter changes


begin
  #Generate a parameter change proposal transaction
  result = api_instance.gov_proposals_param_change_post(post_proposal_body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GovernanceApi->gov_proposals_param_change_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_proposal_body** | [**PostProposalBody1**](PostProposalBody1.md)| The parameter change proposal body that contains all parameter changes | 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **gov_proposals_post**
> StdTx gov_proposals_post(post_proposal_body)

Submit a proposal

Send transaction to submit a proposal

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GovernanceApi.new

post_proposal_body = SwaggerClient::PostProposalBody.new # PostProposalBody | valid value of `\"proposal_type\"` can be `\"text\"`, `\"parameter_change\"`, `\"software_upgrade\"`


begin
  #Submit a proposal
  result = api_instance.gov_proposals_post(post_proposal_body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GovernanceApi->gov_proposals_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_proposal_body** | [**PostProposalBody**](PostProposalBody.md)| valid value of &#x60;\&quot;proposal_type\&quot;&#x60; can be &#x60;\&quot;text\&quot;&#x60;, &#x60;\&quot;parameter_change\&quot;&#x60;, &#x60;\&quot;software_upgrade\&quot;&#x60; | 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **gov_proposals_proposal_id_deposits_depositor_get**
> Deposit gov_proposals_proposal_id_deposits_depositor_get(proposal_id, depositor)

Query deposit

Query deposit by proposalId and depositor address

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GovernanceApi.new

proposal_id = 'proposal_id_example' # String | proposal id

depositor = 'depositor_example' # String | Bech32 depositor address


begin
  #Query deposit
  result = api_instance.gov_proposals_proposal_id_deposits_depositor_get(proposal_id, depositor)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GovernanceApi->gov_proposals_proposal_id_deposits_depositor_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proposal_id** | **String**| proposal id | 
 **depositor** | **String**| Bech32 depositor address | 

### Return type

[**Deposit**](Deposit.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **gov_proposals_proposal_id_deposits_get**
> Array&lt;Deposit&gt; gov_proposals_proposal_id_deposits_get(proposal_id)

Query deposits

Query deposits by proposalId

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GovernanceApi.new

proposal_id = 'proposal_id_example' # String | 


begin
  #Query deposits
  result = api_instance.gov_proposals_proposal_id_deposits_get(proposal_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GovernanceApi->gov_proposals_proposal_id_deposits_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proposal_id** | **String**|  | 

### Return type

[**Array&lt;Deposit&gt;**](Deposit.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **gov_proposals_proposal_id_deposits_post**
> StdTx gov_proposals_proposal_id_deposits_post(proposal_id, post_deposit_body)

Deposit tokens to a proposal

Send transaction to deposit tokens to a proposal

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GovernanceApi.new

proposal_id = 'proposal_id_example' # String | proposal id

post_deposit_body = SwaggerClient::PostDepositBody.new # PostDepositBody | 


begin
  #Deposit tokens to a proposal
  result = api_instance.gov_proposals_proposal_id_deposits_post(proposal_id, post_deposit_body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GovernanceApi->gov_proposals_proposal_id_deposits_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proposal_id** | **String**| proposal id | 
 **post_deposit_body** | [**PostDepositBody**](PostDepositBody.md)|  | 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **gov_proposals_proposal_id_get**
> TextProposal gov_proposals_proposal_id_get(proposal_id)

Query a proposal

Query a proposal by id

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GovernanceApi.new

proposal_id = 'proposal_id_example' # String | 


begin
  #Query a proposal
  result = api_instance.gov_proposals_proposal_id_get(proposal_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GovernanceApi->gov_proposals_proposal_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proposal_id** | **String**|  | 

### Return type

[**TextProposal**](TextProposal.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **gov_proposals_proposal_id_proposer_get**
> Proposer gov_proposals_proposal_id_proposer_get(proposal_id)

Query proposer

Query for the proposer for a proposal

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GovernanceApi.new

proposal_id = 'proposal_id_example' # String | 


begin
  #Query proposer
  result = api_instance.gov_proposals_proposal_id_proposer_get(proposal_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GovernanceApi->gov_proposals_proposal_id_proposer_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proposal_id** | **String**|  | 

### Return type

[**Proposer**](Proposer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **gov_proposals_proposal_id_tally_get**
> TallyResult gov_proposals_proposal_id_tally_get(proposal_id)

Get a proposal's tally result at the current time

Gets a proposal's tally result at the current time. If the proposal is pending deposits (i.e status 'DepositPeriod') it returns an empty tally result.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GovernanceApi.new

proposal_id = 'proposal_id_example' # String | proposal id


begin
  #Get a proposal's tally result at the current time
  result = api_instance.gov_proposals_proposal_id_tally_get(proposal_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GovernanceApi->gov_proposals_proposal_id_tally_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proposal_id** | **String**| proposal id | 

### Return type

[**TallyResult**](TallyResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **gov_proposals_proposal_id_votes_get**
> Array&lt;Vote&gt; gov_proposals_proposal_id_votes_get(proposal_id)

Query voters

Query voters information by proposalId

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GovernanceApi.new

proposal_id = 'proposal_id_example' # String | proposal id


begin
  #Query voters
  result = api_instance.gov_proposals_proposal_id_votes_get(proposal_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GovernanceApi->gov_proposals_proposal_id_votes_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proposal_id** | **String**| proposal id | 

### Return type

[**Array&lt;Vote&gt;**](Vote.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **gov_proposals_proposal_id_votes_post**
> StdTx gov_proposals_proposal_id_votes_post(proposal_id, post_vote_body)

Vote a proposal

Send transaction to vote a proposal

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GovernanceApi.new

proposal_id = 'proposal_id_example' # String | proposal id

post_vote_body = SwaggerClient::PostVoteBody.new # PostVoteBody | valid value of `\"option\"` field can be `\"yes\"`, `\"no\"`, `\"no_with_veto\"` and `\"abstain\"`


begin
  #Vote a proposal
  result = api_instance.gov_proposals_proposal_id_votes_post(proposal_id, post_vote_body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GovernanceApi->gov_proposals_proposal_id_votes_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proposal_id** | **String**| proposal id | 
 **post_vote_body** | [**PostVoteBody**](PostVoteBody.md)| valid value of &#x60;\&quot;option\&quot;&#x60; field can be &#x60;\&quot;yes\&quot;&#x60;, &#x60;\&quot;no\&quot;&#x60;, &#x60;\&quot;no_with_veto\&quot;&#x60; and &#x60;\&quot;abstain\&quot;&#x60; | 

### Return type

[**StdTx**](StdTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **gov_proposals_proposal_id_votes_voter_get**
> Vote gov_proposals_proposal_id_votes_voter_get(proposal_id, voter)

Query vote

Query vote information by proposal Id and voter address

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::GovernanceApi.new

proposal_id = 'proposal_id_example' # String | proposal id

voter = 'voter_example' # String | Bech32 voter address


begin
  #Query vote
  result = api_instance.gov_proposals_proposal_id_votes_voter_get(proposal_id, voter)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling GovernanceApi->gov_proposals_proposal_id_votes_voter_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proposal_id** | **String**| proposal id | 
 **voter** | **String**| Bech32 voter address | 

### Return type

[**Vote**](Vote.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



