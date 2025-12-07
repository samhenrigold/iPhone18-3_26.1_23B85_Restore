@interface MCMClientCodeSignIndex
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToClientCodeSignIndex:(id)index;
- (MCMClientCodeSignIndex)initWithCDHash:(id)hash identifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MCMClientCodeSignIndex

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MCMClientCodeSignIndex alloc];
  cdhash = self->_cdhash;
  identifier = self->_identifier;

  return [(MCMClientCodeSignIndex *)v4 initWithCDHash:cdhash identifier:identifier];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MCMClientCodeSignIndex *)self isEqualToClientCodeSignIndex:equalCopy];

  return v5;
}

- (BOOL)isEqualToClientCodeSignIndex:(id)index
{
  indexCopy = index;
  if ([(NSData *)self->_cdhash isEqualToData:indexCopy[1]])
  {
    v5 = [(NSString *)self->_identifier isEqualToString:indexCopy[2]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MCMClientCodeSignIndex)initWithCDHash:(id)hash identifier:(id)identifier
{
  v13 = *MEMORY[0x1E69E9840];
  hashCopy = hash;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = MCMClientCodeSignIndex;
  v9 = [(MCMClientCodeSignIndex *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cdhash, hash);
    objc_storeStrong(&v10->_identifier, identifier);
  }

  return v10;
}

@end