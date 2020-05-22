# Check if SMB1 is enabled
Get-WindowsOptionalFeature -Online -FeatureName "SMB1Protocol"

# Enable SMB1
# Enable-WindowsOptionalFeature -Online -FeatureName "SMB1Protocol" -All

# Disable SMB1
# Disable-WindowsOptionalFeature -Online -FeatureName "SMB1Protocol"