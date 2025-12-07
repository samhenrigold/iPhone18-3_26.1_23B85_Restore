@interface PABridgedTCCIdentity
- (BOOL)isEqual:(id)equal;
- (PABridgedTCCIdentity)initWithCoder:(id)coder;
- (PABridgedTCCIdentity)initWithTCCIdentity:(id)identity;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PABridgedTCCIdentity

- (PABridgedTCCIdentity)initWithTCCIdentity:(id)identity
{
  identityCopy = identity;
  v9.receiver = self;
  v9.super_class = PABridgedTCCIdentity;
  v6 = [(PABridgedTCCIdentity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identity, identity);
  }

  return v7;
}

- (PABridgedTCCIdentity)initWithCoder:(id)coder
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v17[0] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v7 = [v4 setWithArray:v6];
  v8 = MEMORY[0x1E695DFD8];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v10 = [v8 setWithArray:{v9, v16[0]}];
  v11 = [coderCopy decodeDictionaryWithKeysOfClasses:v7 objectsOfClasses:v10 forKey:@"identity"];

  if (!v11)
  {
    v12 = 0;
    goto LABEL_5;
  }

  v12 = tcc_identity_create_from_external_representation();
  if (!v12)
  {
LABEL_5:
    selfCopy = 0;
    goto LABEL_6;
  }

  self = [(PABridgedTCCIdentity *)self initWithTCCIdentity:v12];
  selfCopy = self;
LABEL_6:
  v14 = selfCopy;

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = tcc_identity_copy_external_representation();
  [coderCopy encodeObject:v4 forKey:@"identity"];
}

- (unint64_t)hash
{
  type = tcc_identity_get_type();
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:tcc_identity_get_identifier()];
  v4 = [v3 hash] - type + 32 * type;

  verifier_type = tcc_identity_get_verifier_type();
  v6 = verifier_type - v4 + 32 * v4;
  if (verifier_type)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:tcc_identity_get_verifier_code_requirement_string()];
    v6 = [v7 hash] - v6 + 32 * v6;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else if ([(PABridgedTCCIdentity *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = areTCCIdentitiesEqual(self->_identity, equalCopy->_identity);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v2 = tcc_object_copy_description();

  return v2;
}

@end