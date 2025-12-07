@interface CMContinuityCaptureControl
- (CMContinuityCaptureControl)initWithCoder:(id)coder;
- (CMContinuityCaptureControl)initWithDictionaryRepresentation:(id)representation;
- (CMContinuityCaptureControl)initWithName:(id)name attributes:(id)attributes entity:(int64_t)entity minimumSupportedVersion:(id *)version value:(id)value;
- (NSString)debugDescription;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)value;
- (void)encodeWithCoder:(id)coder;
- (void)setValue:(id)value;
@end

@implementation CMContinuityCaptureControl

- (CMContinuityCaptureControl)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CMContinuityCaptureControl;
  v5 = [(CMContinuityCaptureControl *)&v15 init];
  if (v5 && (objc_opt_class(), [coderCopy decodeObjectOfClass:? forKey:?], v6 = objc_claimAutoreleasedReturnValue(), name = v5->_name, v5->_name = v6, name, objc_opt_class(), objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:"), v8 = objc_claimAutoreleasedReturnValue(), v9 = v5->_class, v5->_class = v8, v9, v5->_entity = objc_msgSend(coderCopy, "decodeInt64ForKey:"), v5->_minimumSupportedVersion.major = objc_msgSend(coderCopy, "decodeInt64ForKey:"), v5->_minimumSupportedVersion.minor = objc_msgSend(coderCopy, "decodeInt64ForKey:"), v5->_minimumSupportedVersion.patch = objc_msgSend(coderCopy, "decodeInt64ForKey:"), v5->_class))
  {
    v10 = v5;
    objc_sync_enter(v10);
    if ([(NSString *)v5->_class isEqualToString:?])
    {
      [coderCopy decodeCVPixelBufferForKey:? expectSourceMedia:?];
    }

    else
    {
      [coderCopy decodePropertyListForKey:?];
    }
    v11 = ;
    value = v10->_value;
    v10->_value = v11;

    objc_sync_exit(v10);
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (CMContinuityCaptureControl)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:?];
  if (!v5)
  {
    v6 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureControl initWithDictionaryRepresentation:v6];
    }

    goto LABEL_15;
  }

  v6 = [representationCopy objectForKeyedSubscript:?];
  v7 = [representationCopy objectForKeyedSubscript:?];
  selfCopy2 = v7;
  if (!v7)
  {
    [CMContinuityCaptureControl initWithDictionaryRepresentation:];
    goto LABEL_10;
  }

  [(CMContinuityCaptureControl *)v7 integerValue];
  v9 = [representationCopy objectForKeyedSubscript:?];

  if (v9)
  {
    v10 = [representationCopy objectForKeyedSubscript:?];
    [v10 intValue];
    v11 = [representationCopy objectForKeyedSubscript:?];

    [v11 intValue];
    v9 = [representationCopy objectForKeyedSubscript:?];

    [v9 intValue];
  }

  self = [CMContinuityCaptureControl initWithName:"initWithName:attributes:entity:minimumSupportedVersion:value:" attributes:? entity:? minimumSupportedVersion:? value:?];
  v12 = [representationCopy objectForKeyedSubscript:?];
  v13 = self->_class;
  self->_class = v12;

  if (self->_class)
  {
    v14 = [representationCopy objectForKeyedSubscript:?];

    if (v14)
    {
      if (![(NSString *)self->_class isEqualToString:?])
      {
        selfCopy = self;
        objc_sync_enter(selfCopy);
        v16 = [representationCopy objectForKeyedSubscript:?];
        value = selfCopy->_value;
        selfCopy->_value = v16;

        objc_sync_exit(selfCopy);
      }

      goto LABEL_9;
    }

    [(CMContinuityCaptureControl *)v9 initWithDictionaryRepresentation:selfCopy2];
LABEL_15:
    selfCopy2 = 0;
    goto LABEL_10;
  }

LABEL_9:
  self = self;

  selfCopy2 = self;
LABEL_10:

  return selfCopy2;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:? forKeyedSubscript:?];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  [dictionary setObject:? forKeyedSubscript:?];

  if (self->_attributes)
  {
    [dictionary setObject:? forKeyedSubscript:?];
  }

  if (self->_class)
  {
    [dictionary setObject:? forKeyedSubscript:?];
    if (![(NSString *)self->_class isEqualToString:?])
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      [dictionary setObject:? forKeyedSubscript:?];
      objc_sync_exit(selfCopy);
    }
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  [dictionary setObject:? forKeyedSubscript:?];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  [dictionary setObject:? forKeyedSubscript:?];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  [dictionary setObject:? forKeyedSubscript:?];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(CMContinuityCaptureControl *)self name];
  [coderCopy encodeObject:? forKey:?];

  [(CMContinuityCaptureControl *)self entity];
  [coderCopy encodeInt64:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
  v5 = [(NSString *)self->_class isEqualToString:?];
  value = [(CMContinuityCaptureControl *)self value];
  if (v5)
  {
    [coderCopy encodeCVPixelBuffer:? forKey:?];
  }

  else
  {
    [coderCopy encodeObject:? forKey:?];
  }

  [coderCopy encodeInt64:? forKey:?];
  [coderCopy encodeInt64:? forKey:?];
  [coderCopy encodeInt64:? forKey:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = selfCopy->_value;
  objc_sync_exit(selfCopy);

  v5 = [CMContinuityCaptureControl alloc];
  v8 = *&selfCopy->_minimumSupportedVersion.major;
  v6 = [CMContinuityCaptureControl initWithName:v5 attributes:"initWithName:attributes:entity:minimumSupportedVersion:value:" entity:v8 minimumSupportedVersion:selfCopy->_minimumSupportedVersion.patch value:?];

  return v6;
}

- (NSString)debugDescription
{
  name = [(CMContinuityCaptureControl *)self name];
  v4 = [name isEqualToString:?];

  v5 = MEMORY[0x277CCACA8];
  name2 = [(CMContinuityCaptureControl *)self name];
  entity = [(CMContinuityCaptureControl *)self entity];
  if (v4)
  {
    v8 = self->_class;
    value = [MEMORY[0x277CCACA8] stringWithFormat:self->_minimumSupportedVersion.major, self->_minimumSupportedVersion.minor, self->_minimumSupportedVersion.patch];
    v10 = [v5 stringWithFormat:name2, entity, v8, value];
  }

  else
  {
    value = [(CMContinuityCaptureControl *)self value];
    v11 = self->_class;
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:self->_minimumSupportedVersion.major, self->_minimumSupportedVersion.minor, self->_minimumSupportedVersion.patch];
    v10 = [v5 stringWithFormat:name2, entity, value, v11, v12];
  }

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CMContinuityCaptureControl *)self debugDescription];
  v7 = [v3 stringWithFormat:v5, self, v6];

  return v7;
}

- (id)value
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_value;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = self->_class;
      self->_class = v7;
LABEL_8:

LABEL_9:
      selfCopy = self;
      objc_sync_enter(selfCopy);
      objc_storeStrong(&selfCopy->_value, value);
      objc_sync_exit(selfCopy);

      goto LABEL_10;
    }

    v10 = CFGetTypeID(valueCopy);
    if (v10 == CVPixelBufferGetTypeID())
    {
      v8 = self->_class;
      self->_class = @"CVPixelBufferRef";
      goto LABEL_8;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v12 = CMContinuityCaptureLog(0);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (isKindOfClass)
    {
      if (v13)
      {
        v17 = 138412546;
        selfCopy3 = self;
        v19 = 2112;
        v20 = objc_opt_class();
        v14 = "%@ Unhandled value object type %@";
        v15 = v12;
        v16 = 22;
LABEL_18:
        _os_log_impl(&dword_242545000, v15, OS_LOG_TYPE_DEFAULT, v14, &v17, v16);
      }
    }

    else if (v13)
    {
      v17 = 138412290;
      selfCopy3 = self;
      v14 = "%@ Unhandled value unknown type";
      v15 = v12;
      v16 = 12;
      goto LABEL_18;
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (CMContinuityCaptureControl)initWithName:(id)name attributes:(id)attributes entity:(int64_t)entity minimumSupportedVersion:(id *)version value:(id)value
{
  nameCopy = name;
  attributesCopy = attributes;
  valueCopy = value;
  v21.receiver = self;
  v21.super_class = CMContinuityCaptureControl;
  v16 = [(CMContinuityCaptureControl *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_name, name);
    objc_storeStrong(&v17->_attributes, attributes);
    v17->_entity = entity;
    v18 = *&version->var0;
    v17->_minimumSupportedVersion.patch = version->var2;
    *&v17->_minimumSupportedVersion.major = v18;
    [(CMContinuityCaptureControl *)v17 setValue:?];
    v19 = v17;
  }

  return v17;
}

- (void)initWithDictionaryRepresentation:(void *)a1 .cold.1(void *a1, void *a2)
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_242545000, v4, OS_LOG_TYPE_ERROR, "Missing CMContinuityCaptureControlKey_Value", v5, 2u);
  }
}

- (void)initWithDictionaryRepresentation:.cold.2()
{
  v0 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_242545000, v0, OS_LOG_TYPE_ERROR, "Missing CMContinuityCaptureControlKey_Entity", v1, 2u);
  }
}

@end