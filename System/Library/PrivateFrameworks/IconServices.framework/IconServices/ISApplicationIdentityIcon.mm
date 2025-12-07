@interface ISApplicationIdentityIcon
- (ISApplicationIdentityIcon)initWithApplicationIdentity:(id)identity;
- (ISApplicationIdentityIcon)initWithCoder:(id)coder;
- (id)_makeResourceProviderAllowIconResourceFallback:(BOOL)fallback;
- (id)_resourceForPersona:(unint64_t)persona;
- (id)description;
- (unint64_t)_personaType;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ISApplicationIdentityIcon

- (ISApplicationIdentityIcon)initWithApplicationIdentity:(id)identity
{
  v41 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  identityString = [identityCopy identityString];
  v8 = [v6 stringByAppendingPathComponent:identityString];

  v36 = 0;
  v9 = [identityCopy findApplicationRecordWithError:&v36];
  v10 = v36;
  v11 = v10;
  if (!v9)
  {
    alternateIconName = _ISDefaultLog(v10);
    if (!os_log_type_enabled(alternateIconName, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    identityString2 = [identityCopy identityString];
    localizedDescription = [v11 localizedDescription];
    *buf = 138412546;
    v38 = identityString2;
    v39 = 2112;
    v40 = localizedDescription;
    _os_log_impl(&dword_1A77B8000, alternateIconName, OS_LOG_TYPE_DEFAULT, "No record for identity: %@. Error: %@", buf, 0x16u);

    goto LABEL_15;
  }

  if ([v9 isPlaceholder])
  {
    v12 = [v9 URL];
    __is__contentModifiedDate = [v12 __is__contentModifiedDate];

    v14 = MEMORY[0x1E696AEC0];
    [__is__contentModifiedDate timeIntervalSinceReferenceDate];
    v16 = [v14 stringWithFormat:@"%f", v15];
    v17 = [v8 stringByAppendingPathComponent:v16];

    v19 = _ISDefaultLog(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [ISApplicationIdentityIcon initWithApplicationIdentity:];
    }

LABEL_11:
    goto LABEL_12;
  }

  persistentIdentifier = [v9 persistentIdentifier];

  if (persistentIdentifier)
  {
    v24 = MEMORY[0x1E696AFB0];
    persistentIdentifier2 = [v9 persistentIdentifier];
    v26 = [v24 _IF_UUIDWithData:persistentIdentifier2];
    uUIDString = [v26 UUIDString];
    v17 = [v8 stringByAppendingPathComponent:uUIDString];

    __is__contentModifiedDate = _ISDefaultLog(v28);
    if (os_log_type_enabled(__is__contentModifiedDate, OS_LOG_TYPE_DEBUG))
    {
      [ISApplicationIdentityIcon initWithApplicationIdentity:];
    }

    goto LABEL_11;
  }

  v17 = v8;
LABEL_12:
  alternateIconName = [v9 alternateIconName];
  if (alternateIconName)
  {
    v8 = [v17 stringByAppendingPathComponent:alternateIconName];

    identityString2 = _ISDefaultLog(v29);
    if (os_log_type_enabled(identityString2, OS_LOG_TYPE_DEBUG))
    {
      [ISApplicationIdentityIcon initWithApplicationIdentity:];
    }

LABEL_15:

    goto LABEL_17;
  }

  v8 = v17;
LABEL_17:

  v30 = [MEMORY[0x1E696AFB0] _IF_UUIDWithString:v8];
  v35.receiver = self;
  v35.super_class = ISApplicationIdentityIcon;
  v31 = [(ISConcreteIcon *)&v35 initWithDigest:v30];
  if (v31)
  {
    identityString3 = [identityCopy identityString];
    identityString = v31->_identityString;
    v31->_identityString = identityString3;
  }

  return v31;
}

- (ISApplicationIdentityIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ISApplicationIdentityIcon;
  v5 = [(ISConcreteIcon *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identityString"];
    identityString = v5->_identityString;
    v5->_identityString = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ISApplicationIdentityIcon;
  coderCopy = coder;
  [(ISConcreteIcon *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_identityString forKey:{@"identityString", v5.receiver, v5.super_class}];
}

- (id)_resourceForPersona:(unint64_t)persona
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [objc_alloc(MEMORY[0x1E69A8968]) initWithSystemColor:10];
  v11[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [v3 setSymbolColors:v5];

  v6 = [objc_alloc(MEMORY[0x1E69A8968]) initWithSystemColor:4];
  v10 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  [v3 setEnclosureColors:v7];

  [v3 setRenderingMode:3];
  v8 = [ISGraphicSymbolResource graphicSymbolResourceWithConfiguration:v3 symbolName:@"frying.pan" url:0];

  return v8;
}

- (unint64_t)_personaType
{
  v3 = objc_alloc(MEMORY[0x1E69635D8]);
  identityString = [(ISApplicationIdentityIcon *)self identityString];
  v5 = [v3 initWithIdentityString:identityString];

  personaType = [v5 personaType];
  return personaType;
}

- (id)_makeResourceProviderAllowIconResourceFallback:(BOOL)fallback
{
  fallbackCopy = fallback;
  v30 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E69635D8]);
  identityString = [(ISApplicationIdentityIcon *)self identityString];
  v7 = [v5 initWithIdentityString:identityString];

  [(ISApplicationIdentityIcon *)self _personaType];
  v25 = 0;
  v8 = [v7 findApplicationRecordWithError:&v25];
  v9 = v25;
  v10 = v9;
  if (v8)
  {
    v11 = v8;
    v12 = 1;
  }

  else
  {
    v13 = _ISDefaultLog(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [v10 localizedDescription];
      *buf = 138412546;
      selfCopy = self;
      v28 = 2112;
      v29 = localizedDescription;
      _os_log_impl(&dword_1A77B8000, v13, OS_LOG_TYPE_DEFAULT, "Unable to create resource provider for %@ - unable to find record. Error: %@", buf, 0x16u);
    }

    v15 = MEMORY[0x1E69636B0];
    identifier = [*MEMORY[0x1E6982CB0] identifier];
    v11 = [v15 typeRecordWithIdentifier:identifier];

    if (v11)
    {
      v17 = v11;
    }

    v12 = 0;
  }

  v18 = [[ISRecordResourceProvider alloc] initWithRecord:v11 options:0];
  v19 = v18;
  if (fallbackCopy)
  {
    iconResource = [(ISRecordResourceProvider *)v18 iconResource];

    if (!iconResource)
    {
      v22 = _ISDefaultLog(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [ISApplicationIdentityIcon _makeResourceProviderAllowIconResourceFallback:];
      }

      v23 = +[ISResourceProvider defaultAppIconResourceProvider];

      [(ISResourceProvider *)v23 setPlaceholder:1];
      v19 = v23;
    }
  }

  [(ISResourceProvider *)v19 setResourceType:v12];

  return v19;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  Class = object_getClass(self);
  Name = class_getName(Class);
  identityString = [(ISApplicationIdentityIcon *)self identityString];
  digest = [(ISConcreteIcon *)self digest];
  v8 = [v3 initWithFormat:@"<%s %p> identity: %@ digest: %@", Name, self, identityString, digest];

  return v8;
}

- (void)_makeResourceProviderAllowIconResourceFallback:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1A77B8000, v1, OS_LOG_TYPE_ERROR, "Failed to find icon resources for application identity %@ - %@. Creating placeholder provider", v2, 0x16u);
}

@end