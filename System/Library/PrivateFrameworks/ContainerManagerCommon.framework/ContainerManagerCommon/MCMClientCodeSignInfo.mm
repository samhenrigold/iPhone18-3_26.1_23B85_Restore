@interface MCMClientCodeSignInfo
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToClientCodeSignInfo:(id)info;
- (MCMClientCodeSignInfo)initWithCDHash:(id)hash entitlements:(id)entitlements identifier:(id)identifier teamIdentifier:(id)teamIdentifier status:(unint64_t)status;
- (id)clientCodeSignInfoByChangingCached:(BOOL)cached;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MCMClientCodeSignInfo

- (id)clientCodeSignInfoByChangingCached:(BOOL)cached
{
  v4 = [(MCMClientCodeSignInfo *)self copy];
  v4[8] = cached;

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 16), self->_entitlements);
    objc_storeStrong((v5 + 24), self->_identifier);
    *(v5 + 8) = self->_cached;
    *(v5 + 9) = self->_isSigned;
    *(v5 + 10) = self->_isSignatureValid;
    *(v5 + 11) = self->_isPlatformBinary;
    objc_storeStrong((v5 + 32), self->_teamIdentifier);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MCMClientCodeSignInfo *)self isEqualToClientCodeSignInfo:equalCopy];

  return v5;
}

- (BOOL)isEqualToClientCodeSignInfo:(id)info
{
  infoCopy = info;
  if ([(NSData *)self->_cdhash isEqualToData:infoCopy[5]])
  {
    v5 = [(NSString *)self->_identifier isEqualToString:infoCopy[3]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MCMClientCodeSignInfo)initWithCDHash:(id)hash entitlements:(id)entitlements identifier:(id)identifier teamIdentifier:(id)teamIdentifier status:(unint64_t)status
{
  statusCopy = status;
  v21 = *MEMORY[0x1E69E9840];
  hashCopy = hash;
  entitlementsCopy = entitlements;
  identifierCopy = identifier;
  teamIdentifierCopy = teamIdentifier;
  v20.receiver = self;
  v20.super_class = MCMClientCodeSignInfo;
  v17 = [(MCMClientCodeSignInfo *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_isSigned = statusCopy & 1;
    v17->_isSignatureValid = (statusCopy & 2) != 0;
    v17->_isPlatformBinary = (statusCopy & 4) != 0;
    objc_storeStrong(&v17->_cdhash, hash);
    objc_storeStrong(&v18->_entitlements, entitlements);
    objc_storeStrong(&v18->_identifier, identifier);
    objc_storeStrong(&v18->_teamIdentifier, teamIdentifier);
    v18->_cached = 0;
  }

  return v18;
}

@end