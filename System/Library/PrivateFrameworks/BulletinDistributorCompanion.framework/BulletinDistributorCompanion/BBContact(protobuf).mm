@interface BBContact(protobuf)
+ (id)contactFromProtobuf:()protobuf;
- (id)blt_protobuf;
@end

@implementation BBContact(protobuf)

+ (id)contactFromProtobuf:()protobuf
{
  v16 = MEMORY[0x277CF3528];
  v3 = a3;
  handle = [v3 handle];
  handleType = [v3 handleType];
  serviceName = [v3 serviceName];
  displayName = [v3 displayName];
  displayNameSuggested = [v3 displayNameSuggested];
  customIdentifier = [v3 customIdentifier];
  cnContactIdentifier = [v3 cnContactIdentifier];
  cnContactFullname = [v3 cnContactFullname];
  cnContactIdentifierSuggested = [v3 cnContactIdentifierSuggested];

  LOBYTE(v15) = cnContactIdentifierSuggested;
  v13 = [v16 contactWithHandle:handle handleType:handleType serviceName:serviceName displayName:displayName displayNameSuggested:displayNameSuggested customIdentifier:customIdentifier cnContactIdentifier:cnContactIdentifier cnContactFullname:cnContactFullname cnContactIdentifierSuggested:v15];

  return v13;
}

- (id)blt_protobuf
{
  v3 = objc_opt_new();
  handle = [self handle];
  [v3 setHandle:handle];

  [v3 setHandleType:{objc_msgSend(self, "handleType")}];
  serviceName = [self serviceName];
  [v3 setServiceName:serviceName];

  displayName = [self displayName];
  [v3 setDisplayName:displayName];

  cnContactIdentifier = [self cnContactIdentifier];
  [v3 setCnContactIdentifier:cnContactIdentifier];

  cnContactFullname = [self cnContactFullname];
  [v3 setCnContactFullname:cnContactFullname];

  [v3 setCnContactIdentifierSuggested:{objc_msgSend(self, "isCNContactIdentifierSuggested")}];
  [v3 setDisplayNameSuggested:{objc_msgSend(self, "isDisplayNameSuggested")}];
  customIdentifier = [self customIdentifier];
  [v3 setCustomIdentifier:customIdentifier];

  return v3;
}

@end