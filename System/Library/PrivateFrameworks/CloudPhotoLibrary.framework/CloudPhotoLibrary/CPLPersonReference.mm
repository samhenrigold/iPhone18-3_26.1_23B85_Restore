@interface CPLPersonReference
- (BOOL)isEqual:(id)equal;
- (CPLPersonReference)init;
- (CPLPersonReference)initWithCPLArchiver:(id)archiver;
- (CPLPersonReference)initWithCoder:(id)coder;
- (CPLPersonReference)initWithSerializedString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)plistArchiveWithCPLArchiver:(id)archiver;
- (id)serializedString;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPLPersonReference

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = self->_personIdentifier;
      personIdentifier = [(CPLPersonReference *)v5 personIdentifier];
      v8 = personIdentifier;
      if (v6 && personIdentifier)
      {
        v9 = [v6 isEqual:personIdentifier];

        if ((v9 & 1) == 0)
        {
LABEL_6:
          v10 = 0;
LABEL_16:

          goto LABEL_17;
        }
      }

      else
      {

        if (v6 | v8)
        {
          goto LABEL_6;
        }
      }

      v11 = self->_extraProperties;
      extraProperties = [(CPLPersonReference *)v5 extraProperties];
      v13 = extraProperties;
      v10 = v11 && extraProperties && ([v11 isEqual:extraProperties] & 1) != 0 || (v11 | v13) == 0;

      goto LABEL_16;
    }

    v10 = 0;
  }

LABEL_17:

  return v10;
}

- (id)serializedString
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@%@%@", @"id", @"=", self->_personIdentifier];
  if ([(NSDictionary *)self->_extraProperties count])
  {
    allKeys = [(NSDictionary *)self->_extraProperties allKeys];
    v5 = [allKeys sortedArrayUsingSelector:sel_compare_];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [(NSDictionary *)self->_extraProperties objectForKeyedSubscript:v11];
          [v3 appendFormat:@"%@%@%@%@", @";", v11, @"=", v12, v14];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  return v3;
}

- (CPLPersonReference)initWithSerializedString:(id)string
{
  v27 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v25.receiver = self;
  v25.super_class = CPLPersonReference;
  v20 = [(CPLPersonReference *)&v25 init];
  if (v20)
  {
    v18 = stringCopy;
    v5 = [stringCopy componentsSeparatedByString:@""];;
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v21 + 1) + 8 * i) componentsSeparatedByString:@"="];
          if ([v12 count] == 2)
          {
            v13 = [v12 objectAtIndex:0];
            v14 = [v13 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

            v15 = [v12 objectAtIndex:1];
            v16 = [v15 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

            if ([v14 isEqualToString:@"id"])
            {
              objc_storeStrong(&v20->_personIdentifier, v16);
            }

            else
            {
              [v19 setValue:v16 forKey:v14];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v9);
    }

    if ([v19 count])
    {
      objc_storeStrong(&v20->_extraProperties, v19);
    }

    stringCopy = v18;
  }

  return v20;
}

- (CPLPersonReference)init
{
  v3.receiver = self;
  v3.super_class = CPLPersonReference;
  return [(CPLPersonReference *)&v3 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  personIdentifier = [(CPLPersonReference *)self personIdentifier];
  [v4 setPersonIdentifier:personIdentifier];

  extraProperties = [(CPLPersonReference *)self extraProperties];
  [v4 setExtraProperties:extraProperties];

  return v4;
}

- (CPLPersonReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CPLPersonReference;
  v5 = [(CPLPersonReference *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"personIdentifier"];
    [(CPLPersonReference *)v5 setPersonIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extraProperties"];
    if (v7)
    {
      v8 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:0];
      if (v8)
      {
        [(CPLPersonReference *)v5 setExtraProperties:v8];
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  personIdentifier = [(CPLPersonReference *)self personIdentifier];
  if (personIdentifier)
  {
    [coderCopy encodeObject:personIdentifier forKey:@"personIdentifier"];
  }

  extraProperties = [(CPLPersonReference *)self extraProperties];
  if (extraProperties)
  {
    v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:extraProperties format:200 options:0 error:0];
    if (v6)
    {
      [coderCopy encodeObject:v6 forKey:@"extraProperties"];
    }
  }
}

- (CPLPersonReference)initWithCPLArchiver:(id)archiver
{
  v30 = *MEMORY[0x1E69E9840];
  archiverCopy = archiver;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        archiverContext = [archiverCopy archiverContext];
        v13 = objc_opt_class();
        v14 = archiverCopy[2];
        *buf = 138412802;
        v25 = archiverContext;
        v26 = 2112;
        v27 = v13;
        v28 = 2112;
        v29 = v14;
        v15 = v13;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "%@: Incorrect string for CPLPersonReference. Found %@: '%@'", buf, 0x20u);
      }
    }

    v16 = objc_opt_class();
    _CPLArchiverFailure(archiverCopy, @"Incorrect string for CPLPersonReference. Found %@: '%@'", v17, v18, v19, v20, v21, v22, v16);
  }

  v23.receiver = self;
  v23.super_class = CPLPersonReference;
  v5 = [(CPLPersonReference *)&v23 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [(CPLArchiver *)archiverCopy _decodeKey:v6 class:archiverCopy[2] inDictionary:?];
    v8 = objc_opt_class();
    v9 = [(CPLArchiver *)archiverCopy _decodeKey:v8 class:archiverCopy[2] inDictionary:?];
    [(CPLPersonReference *)v5 setPersonIdentifier:v7];
    [(CPLPersonReference *)v5 setExtraProperties:v9];
  }

  return v5;
}

- (id)plistArchiveWithCPLArchiver:(id)archiver
{
  archiverCopy = archiver;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  personIdentifier = [(CPLPersonReference *)self personIdentifier];
  if (personIdentifier)
  {
    v7 = [(CPLArchiver *)archiverCopy _encodeKey:?];
    [v5 setObject:personIdentifier forKeyedSubscript:v7];
  }

  extraProperties = [(CPLPersonReference *)self extraProperties];
  if (extraProperties)
  {
    v9 = [(CPLArchiver *)archiverCopy _encodeKey:?];
    [v5 setObject:extraProperties forKeyedSubscript:v9];
  }

  return v5;
}

@end