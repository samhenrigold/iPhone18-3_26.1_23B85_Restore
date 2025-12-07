@interface LSBundleURLRelationshipPrecondition
- (BOOL)isMet;
- (LSBundleURLRelationshipPrecondition)initWithCoder:(id)coder;
- (LSBundleURLRelationshipPrecondition)initWithURL:(id)l bundleIdentifier:(id)identifier placeholderFetchBehavior:(int64_t)behavior requiredRelationship:(int64_t)relationship;
- (void)encodeWithCoder:(id)coder;
- (void)isMet;
@end

@implementation LSBundleURLRelationshipPrecondition

- (LSBundleURLRelationshipPrecondition)initWithURL:(id)l bundleIdentifier:(id)identifier placeholderFetchBehavior:(int64_t)behavior requiredRelationship:(int64_t)relationship
{
  lCopy = l;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = LSBundleURLRelationshipPrecondition;
  v12 = [(LSBundleURLRelationshipPrecondition *)&v18 init];
  if (v12)
  {
    v13 = [lCopy copy];
    url = v12->_url;
    v12->_url = v13;

    v15 = [identifierCopy copy];
    bundleIdentifier = v12->_bundleIdentifier;
    v12->_bundleIdentifier = v15;

    v12->_placeholderFetchBehavior = behavior;
    v12->_requiredRelationship = relationship;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_url forKey:@"url"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeInteger:self->_placeholderFetchBehavior forKey:@"placeholderFetchBehavior"];
  [coderCopy encodeInteger:self->_requiredRelationship forKey:@"requiredRelationship"];
}

- (LSBundleURLRelationshipPrecondition)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v7 = -[LSBundleURLRelationshipPrecondition initWithURL:bundleIdentifier:placeholderFetchBehavior:requiredRelationship:](self, "initWithURL:bundleIdentifier:placeholderFetchBehavior:requiredRelationship:", v5, v6, [coderCopy decodeIntegerForKey:@"placeholderFetchBehavior"], objc_msgSend(coderCopy, "decodeIntegerForKey:", @"requiredRelationship"));

  return v7;
}

- (BOOL)isMet
{
  v43[3] = *MEMORY[0x1E69E9840];
  v42 = 2;
  CurrentContext = _LSDatabaseContextGetCurrentContext(self);
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v3 = +[_LSDServiceDomain defaultServiceDomain];
  v4 = LaunchServices::Database::Context::_get(&CurrentContext, v3, 0);

  if (v4)
  {
    v5 = [LSApplicationRecord alloc];
    bundleIdentifier = self->_bundleIdentifier;
    placeholderFetchBehavior = self->_placeholderFetchBehavior;
    v37 = 0;
    v8 = [(LSApplicationRecord *)v5 _initWithNode:0 bundleIdentifier:bundleIdentifier placeholderBehavior:placeholderFetchBehavior systemPlaceholder:0 itemID:0 forceInBundleContainer:0 context:v4 error:&v37];
    v9 = v37;
    v10 = v9;
    if (v8)
    {
      v11 = [v8 URL];
      v12 = *MEMORY[0x1E695DAD0];
      v43[0] = *MEMORY[0x1E695DD70];
      v43[1] = v12;
      v13 = *MEMORY[0x1E695DB78];
      v43[2] = *MEMORY[0x1E695DB78];
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:3];
      url = self->_url;
      v36 = v10;
      v16 = [(NSURL *)url resourceValuesForKeys:v14 error:&v36];
      v17 = v36;

      if (v16)
      {
        v35 = v17;
        v18 = [v11 resourceValuesForKeys:v14 error:&v35];
        v19 = v35;

        if (v18)
        {
          v20 = [v16 objectForKey:v13];
          bOOLValue = [v20 BOOLValue];

          if (bOOLValue)
          {
            defaultManager = [MEMORY[0x1E696AC08] defaultManager];
            v23 = self->_url;
            v34 = v19;
            v24 = [defaultManager getRelationship:&v42 ofDirectoryAtURL:v23 toItemAtURL:v11 error:&v34];
            v25 = v34;

            v19 = v25;
          }

          else
          {
            v24 = 1;
            if ([v16 isEqual:v18])
            {
              v28 = 1;
            }

            else
            {
              v28 = 2;
            }

            v42 = v28;
          }
        }

        else
        {
          v24 = 0;
        }

        v17 = v19;
      }

      else
      {
        v24 = 0;
      }

      if (v24)
      {
        v29 = v42 == self->_requiredRelationship;
        goto LABEL_24;
      }
    }

    else
    {
      v17 = v9;
    }
  }

  else
  {
    v26 = +[_LSDServiceDomain defaultServiceDomain];
    v27 = LaunchServices::Database::Context::_get(&CurrentContext, v26, 0);

    if (v27)
    {
      v17 = 0;
    }

    else
    {
      v9 = v41;
      v17 = v9;
    }
  }

  v30 = _LSDefaultLog(v9);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    [(LSBundleURLRelationshipPrecondition *)self isMet];
  }

  v29 = 0;
LABEL_24:
  if (CurrentContext && v40 == 1)
  {
    _LSContextDestroy(CurrentContext);
  }

  v31 = v39;
  CurrentContext = 0;
  v39 = 0;

  v40 = 0;
  v32 = v41;
  v41 = 0;

  return v29;
}

- (void)isMet
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(self + 8);
  v4 = *(self + 16);
  v5 = 138412802;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Couldn't get URL relationship for %@ and %@: %@", &v5, 0x20u);
}

@end