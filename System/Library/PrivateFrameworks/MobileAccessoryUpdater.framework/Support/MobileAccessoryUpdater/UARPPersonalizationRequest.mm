@interface UARPPersonalizationRequest
- (BOOL)executeWithResponse:(id)response;
- (NSNumber)ecid;
- (UARPPersonalizationRequest)initWithChipName:(id)name boardID:(id)d chipID:(id)iD securityDomain:(id)domain productionMode:(BOOL)mode securityMode:(BOOL)securityMode nonce:(id)nonce manifestEntries:(id)self0;
- (id)description;
- (id)keyForFieldName:(id)name default:(__CFString *)default;
- (id)personalizationParameterDict;
- (id)personalizationRequestDict;
- (id)requestTicketName;
- (id)responseTicketName;
- (void)convertManifestEntries:(id)entries productionMode:(BOOL)mode securityMode:(BOOL)securityMode;
- (void)dealloc;
@end

@implementation UARPPersonalizationRequest

- (UARPPersonalizationRequest)initWithChipName:(id)name boardID:(id)d chipID:(id)iD securityDomain:(id)domain productionMode:(BOOL)mode securityMode:(BOOL)securityMode nonce:(id)nonce manifestEntries:(id)self0
{
  securityModeCopy = securityMode;
  modeCopy = mode;
  v18.receiver = self;
  v18.super_class = UARPPersonalizationRequest;
  v16 = [(UARPPersonalizationRequest *)&v18 init];
  if (v16)
  {
    v16->_chipName = [name copy];
    v16->_boardID = d;
    v16->_chipID = iD;
    v16->_securityDomain = domain;
    [(UARPPersonalizationRequest *)v16 setProductionMode:modeCopy];
    [(UARPPersonalizationRequest *)v16 setSecurityMode:securityModeCopy];
    [(UARPPersonalizationRequest *)v16 setNonce:nonce];
    [(UARPPersonalizationRequest *)v16 convertManifestEntries:entries productionMode:modeCopy securityMode:securityModeCopy];
    v16->_authInstallRef = AMAuthInstallCreate();
    v16->_serverURL = [[NSURL alloc] initWithString:@"https://gs.apple.com:443"];
  }

  return v16;
}

- (void)dealloc
{
  authInstallRef = self->_authInstallRef;
  if (authInstallRef)
  {
    CFRelease(authInstallRef);
  }

  v4.receiver = self;
  v4.super_class = UARPPersonalizationRequest;
  [(UARPPersonalizationRequest *)&v4 dealloc];
}

- (id)keyForFieldName:(id)name default:(__CFString *)default
{
  if (([(NSString *)self->_chipName isEqual:@"Ap"]& 1) != 0)
  {
    return default;
  }

  else
  {
    return [NSString stringWithFormat:@"%@, %@", self->_chipName, name];
  }
}

- (NSNumber)ecid
{
  result = self->_ecid;
  if (result)
  {
    value = [(NSNumber *)result value];

    return [NSNumber numberWithUnsignedLongLong:value];
  }

  return result;
}

- (id)personalizationParameterDict
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithUnsignedInt:[(UARPPersonalizationNumberTuple32 *)self->_boardID value]];
  [v3 setObject:v4 forKeyedSubscript:kAMAuthInstallApParameterBoardID];
  v5 = [NSNumber numberWithUnsignedInt:[(UARPPersonalizationNumberTuple32 *)self->_chipID value]];
  [v3 setObject:v5 forKeyedSubscript:kAMAuthInstallApParameterChipID];
  v6 = [NSNumber numberWithUnsignedInt:[(UARPPersonalizationNumberTuple32 *)self->_securityDomain value]];
  [v3 setObject:v6 forKeyedSubscript:kAMAuthInstallApParameterSecurityDomain];
  v7 = [NSNumber numberWithBool:[(UARPPersonalizationNumberTupleBool *)self->_securityMode value]];
  [v3 setObject:v7 forKeyedSubscript:kAMAuthInstallApParameterSecurityMode];
  v8 = [NSNumber numberWithBool:[(UARPPersonalizationNumberTupleBool *)self->_productionMode value]];
  [v3 setObject:v8 forKeyedSubscript:kAMAuthInstallApParameterProductionMode];
  ecid = self->_ecid;
  if (ecid)
  {
    v10 = [NSNumber numberWithUnsignedLongLong:[(UARPPersonalizationNumberTuple64 *)ecid value]];
    [v3 setObject:v10 forKeyedSubscript:kAMAuthInstallApParameterECID];
  }

  value = [(UARPPersonalizationDataTuple *)self->_nonce value];
  [v3 setObject:value forKeyedSubscript:kAMAuthInstallApParameterApNonce];
  v12 = [NSNumber numberWithBool:self->_effectiveProductionMode];
  [v3 setObject:v12 forKeyedSubscript:kAMAuthInstallApParameterEffectiveProductionMode];
  v13 = [NSNumber numberWithBool:self->_effectiveSecurityMode];
  [v3 setObject:v13 forKeyedSubscript:kAMAuthInstallApParameterEffectiveSecurityMode];
  v14 = [NSNumber numberWithBool:[(UARPPersonalizationRequest *)self supportsImg4]];
  [v3 setObject:v14 forKeyedSubscript:kAMAuthInstallApParameterSupportsImg4];

  return [NSDictionary dictionaryWithDictionary:v3];
}

- (id)personalizationRequestDict
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", -[UARPPersonalizationNumberTuple32 value](self->_boardID, "value")), -[UARPPersonalizationNumberTuple32 key](self->_boardID, "key")}];
  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", -[UARPPersonalizationNumberTuple32 value](self->_chipID, "value")), -[UARPPersonalizationNumberTuple32 key](self->_chipID, "key")}];
  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", -[UARPPersonalizationNumberTuple32 value](self->_securityDomain, "value")), -[UARPPersonalizationNumberTuple32 key](self->_securityDomain, "key")}];
  [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", -[UARPPersonalizationNumberTupleBool value](self->_securityMode, "value")), -[UARPPersonalizationNumberTupleBool key](self->_securityMode, "key")}];
  [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", -[UARPPersonalizationNumberTupleBool value](self->_productionMode, "value")), -[UARPPersonalizationNumberTupleBool key](self->_productionMode, "key")}];
  [v3 setObject:-[UARPPersonalizationDataTuple value](self->_nonce forKeyedSubscript:{"value"), -[UARPPersonalizationDataTuple key](self->_nonce, "key")}];
  ecid = self->_ecid;
  if (ecid)
  {
    [v3 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", -[UARPPersonalizationNumberTuple64 value](ecid, "value")), -[UARPPersonalizationNumberTuple64 key](self->_ecid, "key")}];
  }

  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:{-[UARPPersonalizationRequest requestTicketName](self, "requestTicketName")}];

  return [NSDictionary dictionaryWithDictionary:v3];
}

- (id)requestTicketName
{
  if ([(UARPPersonalizationRequest *)self supportsImg4])
  {
    return kAMAuthInstallTagApRequestImg4Ticket;
  }

  else
  {
    return [NSString stringWithFormat:@"@%@, Ticket", self->_chipName];
  }
}

- (id)responseTicketName
{
  if ([(UARPPersonalizationRequest *)self supportsImg4])
  {
    return kAMAuthInstallTagApImg4Ticket;
  }

  else
  {
    return [NSString stringWithFormat:@"%@, Ticket", self->_chipName];
  }
}

- (void)convertManifestEntries:(id)entries productionMode:(BOOL)mode securityMode:(BOOL)securityMode
{
  securityModeCopy = securityMode;
  modeCopy = mode;
  v8 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = entries;
  v9 = [entries countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = -[UARPManifestEntry initWithName:digest:trusted:productionMode:securityMode:]([UARPManifestEntry alloc], "initWithName:digest:trusted:productionMode:securityMode:", [*(*(&v16 + 1) + 8 * v12) name], objc_msgSend(*(*(&v16 + 1) + 8 * v12), "digest"), objc_msgSend(*(*(&v16 + 1) + 8 * v12), "trusted"), modeCopy, securityModeCopy);
        [v8 addObject:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  self->_manifestEntries = [[NSArray alloc] initWithArray:v8];
}

- (id)description
{
  v3 = +[NSMutableString string];
  v4 = objc_opt_class();
  [v3 appendFormat:@"%@\n{\n", NSStringFromClass(v4)];
  [v3 appendFormat:@"\tChip name: %@\n", self->_chipName];
  [v3 appendFormat:@"\t%@\n", self->_boardID];
  [v3 appendFormat:@"\t%@\n", self->_chipID];
  [v3 appendFormat:@"\t%@\n", self->_securityDomain];
  [v3 appendFormat:@"\t%@\n", self->_productionMode];
  [v3 appendFormat:@"\t%@\n", self->_securityMode];
  [v3 appendFormat:@"\t%@\n", self->_nonce];
  if (self->_ecid)
  {
    [v3 appendFormat:@"\t%@\n", self->_ecid];
  }

  if (self->_useSingleSignOn)
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  [v3 appendFormat:@"\tSSO: %s\n", v5];
  [v3 appendFormat:@"\tServer: %@\n", self->_serverURL];
  [v3 appendString:@"\tManifest\n\t{\n"];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  manifestEntries = self->_manifestEntries;
  v7 = [(NSArray *)manifestEntries countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(manifestEntries);
        }

        [v3 appendFormat:@"%@\n", objc_msgSend(*(*(&v12 + 1) + 8 * v10), "descriptionWithTabDepth:", 2)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSArray *)manifestEntries countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [v3 appendString:@"\t}\n"];
  [v3 appendFormat:@"}"];
  return [NSString stringWithString:v3];
}

- (BOOL)executeWithResponse:(id)response
{
  if (AMAuthInstallSetSigningServerURL() || self->_useSingleSignOn && (AMAuthInstallSsoInitialize() || AMAuthInstallSsoEnable()))
  {
    return 0;
  }

  [(UARPPersonalizationRequest *)self personalizationParameterDict];
  if (AMAuthInstallApSetParameters())
  {
    return 0;
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002CF8C;
  v7[3] = &unk_100081C58;
  v7[4] = self;
  v7[5] = response;
  dispatch_async(global_queue, v7);
  return 1;
}

@end