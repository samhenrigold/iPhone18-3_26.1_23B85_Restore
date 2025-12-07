@interface OTJoiningConfiguration
- (OTJoiningConfiguration)initWithCoder:(id)coder;
- (OTJoiningConfiguration)initWithProtocolType:(id)type uniqueDeviceID:(id)d uniqueClientID:(id)iD pairingUUID:(id)uID epoch:(unint64_t)epoch isInitiator:(BOOL)initiator;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OTJoiningConfiguration

- (OTJoiningConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = OTJoiningConfiguration;
  v5 = [(OTJoiningConfiguration *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protocolType"];
    protocolType = v5->_protocolType;
    v5->_protocolType = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueClientID"];
    uniqueClientID = v5->_uniqueClientID;
    v5->_uniqueClientID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueDeviceID"];
    uniqueDeviceID = v5->_uniqueDeviceID;
    v5->_uniqueDeviceID = v10;

    v5->_isInitiator = [coderCopy decodeBoolForKey:@"isInitiator"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairingUUID"];
    pairingUUID = v5->_pairingUUID;
    v5->_pairingUUID = v12;

    v5->_epoch = [coderCopy decodeInt64ForKey:@"epoch"];
    v5->_timeout = [coderCopy decodeInt64ForKey:@"timeout"];
    v5->_testsEnabled = [coderCopy decodeBoolForKey:@"testsEnabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  protocolType = self->_protocolType;
  coderCopy = coder;
  [coderCopy encodeObject:protocolType forKey:@"protocolType"];
  [coderCopy encodeObject:self->_uniqueClientID forKey:@"uniqueClientID"];
  [coderCopy encodeObject:self->_uniqueDeviceID forKey:@"uniqueDeviceID"];
  [coderCopy encodeBool:self->_isInitiator forKey:@"isInitiator"];
  [coderCopy encodeObject:self->_pairingUUID forKey:@"pairingUUID"];
  [coderCopy encodeInt64:self->_epoch forKey:@"epoch"];
  [coderCopy encodeInt64:self->_timeout forKey:@"timeout"];
  [coderCopy encodeBool:self->_testsEnabled forKey:@"testsEnabled"];
}

- (OTJoiningConfiguration)initWithProtocolType:(id)type uniqueDeviceID:(id)d uniqueClientID:(id)iD pairingUUID:(id)uID epoch:(unint64_t)epoch isInitiator:(BOOL)initiator
{
  initiatorCopy = initiator;
  typeCopy = type;
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  v21.receiver = self;
  v21.super_class = OTJoiningConfiguration;
  v18 = [(OTJoiningConfiguration *)&v21 init];
  v19 = v18;
  if (v18)
  {
    [(OTJoiningConfiguration *)v18 setProtocolType:typeCopy];
    [(OTJoiningConfiguration *)v19 setUniqueDeviceID:dCopy];
    [(OTJoiningConfiguration *)v19 setUniqueClientID:iDCopy];
    [(OTJoiningConfiguration *)v19 setIsInitiator:initiatorCopy];
    [(OTJoiningConfiguration *)v19 setPairingUUID:uIDCopy];
    [(OTJoiningConfiguration *)v19 setEpoch:epoch];
    [(OTJoiningConfiguration *)v19 setTestsEnabled:0];
    v19->_timeout = 0;
  }

  return v19;
}

@end