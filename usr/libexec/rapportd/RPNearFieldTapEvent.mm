@interface RPNearFieldTapEvent
- (RPNearFieldTapEvent)initWithCoder:(id)coder;
- (RPNearFieldTapEvent)initWithIdentifier:(id)identifier applicationLabel:(id)label pkData:(id)data bonjourListenerUUID:(id)d isSameAccount:(BOOL)account contactID:(id)iD accountID:(id)accountID forceSingleBandAWDLMode:(BOOL)self0 knownIdentity:(BOOL)self1 isUnsupportedApplicationLabel:(BOOL)self2 flags:(unsigned int)self3;
- (id)descriptionWithLevel:(int)level;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RPNearFieldTapEvent

- (RPNearFieldTapEvent)initWithIdentifier:(id)identifier applicationLabel:(id)label pkData:(id)data bonjourListenerUUID:(id)d isSameAccount:(BOOL)account contactID:(id)iD accountID:(id)accountID forceSingleBandAWDLMode:(BOOL)self0 knownIdentity:(BOOL)self1 isUnsupportedApplicationLabel:(BOOL)self2 flags:(unsigned int)self3
{
  identifierCopy = identifier;
  labelCopy = label;
  dataCopy = data;
  dCopy = d;
  iDCopy = iD;
  accountIDCopy = accountID;
  v39.receiver = self;
  v39.super_class = RPNearFieldTapEvent;
  v25 = [(RPNearFieldTapEvent *)&v39 init];
  if (v25)
  {
    v26 = [identifierCopy copy];
    identifier = v25->_identifier;
    v25->_identifier = v26;

    v28 = [labelCopy copy];
    applicationLabel = v25->_applicationLabel;
    v25->_applicationLabel = v28;

    v30 = [dataCopy copy];
    pkData = v25->_pkData;
    v25->_pkData = v30;

    objc_storeStrong(&v25->_bonjourListenerUUID, d);
    v25->_isSameAccount = account;
    v32 = [iDCopy copy];
    contactID = v25->_contactID;
    v25->_contactID = v32;

    v34 = [accountIDCopy copy];
    accountID = v25->_accountID;
    v25->_accountID = v34;

    v25->_shouldForceSingleBandAWDLMode = mode;
    v36 = +[NSDate now];
    date = v25->_date;
    v25->_date = v36;

    v25->_isKnownIdentity = identity;
    v25->_isUnsupportedApplicationLabel = applicationLabel;
    v25->_flags = flags;
  }

  return v25;
}

- (RPNearFieldTapEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = RPNearFieldTapEvent;
  v5 = [(RPNearFieldTapEvent *)&v29 init];
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = coderCopy;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  v7 = v6;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  v8 = v7;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  v9 = v8;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  v10 = v9;
  if ([v10 containsValueForKey:@"isSameAccount"])
  {
    v5->_isSameAccount = [v10 decodeBoolForKey:@"isSameAccount"];
  }

  v11 = v10;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  v12 = v11;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  v13 = v12;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  v14 = v13;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  v15 = v14;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  v16 = v15;
  if ([v16 containsValueForKey:@"forceSingleBand"])
  {
    v5->_shouldForceSingleBandAWDLMode = [v16 decodeBoolForKey:@"forceSingleBand"];
  }

  v17 = v16;
  if ([v17 containsValueForKey:@"knownIdentity"])
  {
    v5->_isKnownIdentity = [v17 decodeBoolForKey:@"knownIdentity"];
  }

  v18 = v17;
  if ([v18 containsValueForKey:@"isUnsupportedApplicationLabel"])
  {
    v5->_isUnsupportedApplicationLabel = [v18 decodeBoolForKey:@"isUnsupportedApplicationLabel"];
  }

  v30 = 0;
  if (NSDecodeSInt64RangedIfPresent())
  {
    v5->_flags = v30;
  }

  if (!v5->_identifier || !v5->_applicationLabel || !v5->_date)
  {
    v26 = RPErrorF(4294960591, "Decode NearFieldTap with missing parameter", v19, v20, v21, v22, v23, v24, v28);
    [v18 failWithError:v26];

LABEL_17:
    v25 = 0;
    goto LABEL_18;
  }

  v25 = v5;
LABEL_18:

  return v25;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = self->_identifier;
  v15 = coderCopy;
  if (identifier)
  {
    [coderCopy encodeObject:identifier forKey:@"identifier"];
    coderCopy = v15;
  }

  applicationLabel = self->_applicationLabel;
  if (applicationLabel)
  {
    [v15 encodeObject:applicationLabel forKey:@"appLabel"];
    coderCopy = v15;
  }

  pkData = self->_pkData;
  if (pkData)
  {
    [v15 encodeObject:pkData forKey:@"pkDataKey"];
    coderCopy = v15;
  }

  date = self->_date;
  if (date)
  {
    [v15 encodeObject:date forKey:@"date"];
    coderCopy = v15;
  }

  if (self->_isSameAccount)
  {
    [v15 encodeBool:1 forKey:@"isSameAccount"];
    coderCopy = v15;
  }

  deviceName = self->_deviceName;
  if (deviceName)
  {
    [v15 encodeObject:deviceName forKey:@"deviceName"];
    coderCopy = v15;
  }

  deviceModel = self->_deviceModel;
  if (deviceModel)
  {
    [v15 encodeObject:deviceModel forKey:@"deviceModel"];
    coderCopy = v15;
  }

  accountID = self->_accountID;
  if (accountID)
  {
    [v15 encodeObject:accountID forKey:@"accountID"];
    coderCopy = v15;
  }

  contactID = self->_contactID;
  if (contactID)
  {
    [v15 encodeObject:contactID forKey:@"contactID"];
    coderCopy = v15;
  }

  bonjourListenerUUID = self->_bonjourListenerUUID;
  if (bonjourListenerUUID)
  {
    [v15 encodeObject:bonjourListenerUUID forKey:@"bonjourListenerUUIDKey"];
    coderCopy = v15;
  }

  if (self->_shouldForceSingleBandAWDLMode)
  {
    [v15 encodeBool:1 forKey:@"forceSingleBand"];
    coderCopy = v15;
  }

  if (self->_isKnownIdentity)
  {
    [v15 encodeBool:1 forKey:@"knownIdentity"];
    coderCopy = v15;
  }

  if (self->_isUnsupportedApplicationLabel)
  {
    [v15 encodeBool:1 forKey:@"isUnsupportedApplicationLabel"];
    coderCopy = v15;
  }

  flags = self->_flags;
  if (flags)
  {
    [v15 encodeInt64:flags forKey:@"flags"];
    coderCopy = v15;
  }
}

- (id)descriptionWithLevel:(int)level
{
  v22 = 0;
  NSAppendPrintF(&v22, "RPNearFieldTap ID %{mask}, appLabel %@, appDomain %@, date %@ sameAccount %d CNID %@", *&level, self->_identifier, self->_applicationLabel, self->_applicationDomain, self->_date, self->_isSameAccount, self->_contactID);
  v4 = v22;
  v5 = v4;
  flags = self->_flags;
  if (flags)
  {
    v21 = v4;
    NSAppendPrintF(&v21, ", flags  %#{flags}", flags, &unk_100149661);
    v7 = v21;

    v5 = v7;
  }

  v20 = v5;
  NSAppendPrintF(&v20, ", pkData <%.3@> %d B", self->_pkData, [(NSData *)self->_pkData length]);
  v8 = v20;

  v19 = v8;
  uUIDString = [(NSUUID *)self->_bonjourListenerUUID UUIDString];
  NSAppendPrintF(&v19, ", bonjourUUID '%{mask}'", uUIDString);
  v10 = v19;

  v18 = v10;
  NSAppendPrintF(&v18, ", forceSingleBand '%d'", self->_shouldForceSingleBandAWDLMode);
  v11 = v18;

  v17 = v11;
  NSAppendPrintF(&v17, ", isKnownIdentity '%d'", self->_isKnownIdentity);
  v12 = v17;

  v16 = v12;
  NSAppendPrintF(&v16, ", isUnsupportedApplicationLabel '%d'", self->_isUnsupportedApplicationLabel);
  v13 = v16;
  v14 = v16;

  return v13;
}

@end