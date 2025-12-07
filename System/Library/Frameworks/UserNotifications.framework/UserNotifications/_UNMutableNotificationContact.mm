@interface _UNMutableNotificationContact
- (id)copyWithZone:(_NSZone *)zone;
- (void)setCnContactFullname:(id)fullname;
- (void)setCnContactIdentifier:(id)identifier;
- (void)setCustomIdentifier:(id)identifier;
- (void)setDisplayName:(id)name;
- (void)setHandle:(id)handle;
- (void)setServiceName:(id)name;
@end

@implementation _UNMutableNotificationContact

- (void)setHandle:(id)handle
{
  self->super._handle = [handle copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setServiceName:(id)name
{
  self->super._serviceName = [name copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setDisplayName:(id)name
{
  self->super._displayName = [name copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setCustomIdentifier:(id)identifier
{
  self->super._customIdentifier = [identifier copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setCnContactIdentifier:(id)identifier
{
  self->super._cnContactIdentifier = [identifier copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setCnContactFullname:(id)fullname
{
  self->super._cnContactFullname = [fullname copy];

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_UNNotificationContact allocWithZone:zone];
  handle = [(_UNNotificationContact *)self handle];
  handleType = [(_UNNotificationContact *)self handleType];
  serviceName = [(_UNNotificationContact *)self serviceName];
  displayName = [(_UNNotificationContact *)self displayName];
  isDisplayNameSuggested = [(_UNNotificationContact *)self isDisplayNameSuggested];
  customIdentifier = [(_UNNotificationContact *)self customIdentifier];
  cnContactIdentifier = [(_UNNotificationContact *)self cnContactIdentifier];
  cnContactFullname = [(_UNNotificationContact *)self cnContactFullname];
  LOBYTE(v15) = [(_UNNotificationContact *)self isCNContactIdentifierSuggested];
  v13 = [(_UNNotificationContact *)v4 _initWithhandle:handle handleType:handleType serviceName:serviceName displayName:displayName displayNameSuggested:isDisplayNameSuggested customIdentifier:customIdentifier cnContactIdentifier:cnContactIdentifier cnContactFullname:cnContactFullname cnContactIdentifierSuggested:v15];

  return v13;
}

@end