json.array!(@priv_policies) do |priv_policy|
  json.extract! priv_policy, :id, :store_name, :policy
  json.url priv_policy_url(priv_policy, format: :json)
end
