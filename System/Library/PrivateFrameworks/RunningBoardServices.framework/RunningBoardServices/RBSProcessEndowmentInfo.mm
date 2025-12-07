@interface RBSProcessEndowmentInfo
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (RBSProcessEndowmentInfo)initWithRBSXPCCoder:(id)coder;
- (id)_initWithNamespace:(id)namespace environment:(id)environment encodedEndowment:(id)endowment;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSProcessEndowmentInfo

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = v4;
  v6 = @"payload:";
  if (!self->_encodedEndowment)
  {
    v6 = &stru_1F01CD8F0;
  }

  v7 = [v3 initWithFormat:@"<%@| namespace:%@ env:%@ %@ %lu>", v4, self->_endowmentNamespace, self->_environment, v6, self->_encodedEndowmentHash];

  return v7;
}

- (id)_initWithNamespace:(id)namespace environment:(id)environment encodedEndowment:(id)endowment
{
  namespaceCopy = namespace;
  environmentCopy = environment;
  endowmentCopy = endowment;
  v11 = endowmentCopy;
  if (!namespaceCopy)
  {
    v12 = rbs_state_log(endowmentCopy);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [RBSProcessEndowmentInfo _initWithNamespace:v12 environment:? encodedEndowment:?];
    }
  }

  v21.receiver = self;
  v21.super_class = RBSProcessEndowmentInfo;
  v13 = [(RBSProcessEndowmentInfo *)&v21 init];
  if (v13)
  {
    v14 = [namespaceCopy copy];
    endowmentNamespace = v13->_endowmentNamespace;
    v13->_endowmentNamespace = v14;

    v16 = [environmentCopy copy];
    environment = v13->_environment;
    v13->_environment = v16;

    objc_storeStrong(&v13->_encodedEndowment, endowment);
    v18 = [(OS_xpc_object *)v13->_encodedEndowment description];
    v13->_encodedEndowmentHash = [v18 hash];

    v19 = [(NSString *)v13->_endowmentNamespace hash];
    v13->_hash = [(NSString *)v13->_environment hash]^ v19;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_17;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_16;
  }

  if (self->_hash != equalCopy->_hash)
  {
    goto LABEL_16;
  }

  if (self->_encodedEndowment)
  {
    if (equalCopy->_encodedEndowment)
    {
      v6 = MEMORY[0x193AD5A20]();
      if (v6 != MEMORY[0x193AD5A20](equalCopy->_encodedEndowment) || !xpc_equal(self->_encodedEndowment, equalCopy->_encodedEndowment))
      {
        goto LABEL_16;
      }
    }
  }

  environment = self->_environment;
  v8 = equalCopy->_environment;
  if (environment != v8)
  {
    v9 = 0;
    if (!environment || !v8)
    {
      goto LABEL_18;
    }

    if (![(NSString *)environment isEqual:?])
    {
LABEL_16:
      v9 = 0;
      goto LABEL_18;
    }
  }

  endowmentNamespace = self->_endowmentNamespace;
  v11 = equalCopy->_endowmentNamespace;
  if (endowmentNamespace == v11)
  {
LABEL_17:
    v9 = 1;
    goto LABEL_18;
  }

  v9 = 0;
  if (endowmentNamespace && v11)
  {
    v9 = [(NSString *)endowmentNamespace isEqual:?];
  }

LABEL_18:

  return v9;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  endowmentNamespace = self->_endowmentNamespace;
  coderCopy = coder;
  [coderCopy encodeObject:endowmentNamespace forKey:@"namespace"];
  [coderCopy encodeObject:self->_environment forKey:@"environment"];
  v6 = RBSXPCPackObject(self->_encodedEndowment);
  [coderCopy encodeXPCObject:v6 forKey:@"encodedEndowment"];
}

- (RBSProcessEndowmentInfo)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"namespace"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"environment"];
  v7 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"encodedEndowment"];

  v8 = RBSXPCUnpackObject(v7);
  v9 = [(RBSProcessEndowmentInfo *)self _initWithNamespace:v5 environment:v6 encodedEndowment:v8];

  return v9;
}

@end