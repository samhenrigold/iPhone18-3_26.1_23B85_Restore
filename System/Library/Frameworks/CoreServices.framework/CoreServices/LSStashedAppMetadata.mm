@interface LSStashedAppMetadata
- (LSStashedAppMetadata)initWithCoder:(id)coder;
- (LSStashedAppMetadata)initWithContext:(LSContext *)context unitID:(unsigned int)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LSStashedAppMetadata

- (LSStashedAppMetadata)initWithCoder:(id)coder
{
  v16.receiver = self;
  v16.super_class = LSStashedAppMetadata;
  v4 = [(LSStashedAppMetadata *)&v16 init];
  if (v4)
  {
    v5 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"exactBundleVersion"];
    exactBundleVersion = v4->_exactBundleVersion;
    v4->_exactBundleVersion = v5;

    v7 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"bundleShortVersion"];
    bundleShortVersion = v4->_bundleShortVersion;
    v4->_bundleShortVersion = v7;

    v9 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"dateStashed"];
    dateStashed = v4->_dateStashed;
    v4->_dateStashed = v9;

    v11 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"dateOriginallyInstalled"];
    dateOriginallyInstalled = v4->_dateOriginallyInstalled;
    v4->_dateOriginallyInstalled = v11;

    v13 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"signerOrganization"];
    signerOrganization = v4->_signerOrganization;
    v4->_signerOrganization = v13;

    v4->_validationState = [coder decodeIntForKey:@"validationState"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_exactBundleVersion forKey:@"exactBundleVersion"];
  [coder encodeObject:self->_bundleShortVersion forKey:@"bundleShortVersion"];
  [coder encodeObject:self->_dateStashed forKey:@"dateStashed"];
  [coder encodeObject:self->_dateOriginallyInstalled forKey:@"dateOriginallyInstalled"];
  [coder encodeObject:self->_signerOrganization forKey:@"signerOrganization"];
  validationState = self->_validationState;

  [coder encodeInt:validationState forKey:@"validationState"];
}

- (LSStashedAppMetadata)initWithContext:(LSContext *)context unitID:(unsigned int)d
{
  v5 = [_LSLazyPropertyList lazyPropertyListWithContext:context unit:*&d];
  if (v5)
  {
    v25.receiver = self;
    v25.super_class = LSStashedAppMetadata;
    v6 = [(LSStashedAppMetadata *)&v25 init];
    if (v6)
    {
      v7 = [v5 objectForKey:*MEMORY[0x1E695E500] ofClass:objc_opt_class()];
      exactBundleVersion = v6->_exactBundleVersion;
      v6->_exactBundleVersion = v7;

      v9 = [v5 objectForKey:*MEMORY[0x1E695E148] ofClass:objc_opt_class()];
      bundleShortVersion = v6->_bundleShortVersion;
      v6->_bundleShortVersion = v9;

      v11 = [v5 objectForKey:@"StashedAtTimestamp" ofClass:objc_opt_class()];
      longValue = [v11 longValue];

      v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:longValue];
      dateStashed = v6->_dateStashed;
      v6->_dateStashed = v13;

      v15 = [v5 objectForKey:@"StashOriginalInstallTimestamp" ofClass:objc_opt_class()];
      longValue2 = [v15 longValue];

      v17 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:longValue2];
      dateOriginallyInstalled = v6->_dateOriginallyInstalled;
      v6->_dateOriginallyInstalled = v17;

      v19 = [v5 objectForKey:@"SignerOrganization" ofClass:objc_opt_class()];
      signerOrganization = v6->_signerOrganization;
      v6->_signerOrganization = v19;

      self = objc_alloc_init(MEMORY[0x1E695DF90]);
      v21 = [v5 objectForKey:@"ProfileValidated" ofClass:objc_opt_class()];
      if (v21)
      {
        [(LSStashedAppMetadata *)self setObject:v21 forKeyedSubscript:@"ProfileValidated"];
      }

      v22 = [v5 objectForKey:@"UPPValidated" ofClass:objc_opt_class()];
      if (v22)
      {
        [(LSStashedAppMetadata *)self setObject:v22 forKeyedSubscript:@"UPPValidated"];
      }

      v23 = [v5 objectForKey:@"FreeProfileValidated" ofClass:objc_opt_class()];
      if (v23)
      {
        [(LSStashedAppMetadata *)self setObject:v23 forKeyedSubscript:@"FreeProfileValidated"];
      }

      v6->_validationState = _LSGetProfileValidationStateFromInstallDictionary(self);
    }

    else
    {
      self = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end