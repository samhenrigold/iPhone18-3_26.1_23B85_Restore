@interface IMFindMyHandle
+ (id)handleWithFMFHandle:(id)handle;
+ (id)handleWithFMLHandle:(id)handle;
+ (id)handleWithIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (IMFindMyHandle)initWithIdentifier:(id)identifier;
- (id)description;
- (unint64_t)hash;
@end

@implementation IMFindMyHandle

+ (id)handleWithFMFHandle:(id)handle
{
  handleCopy = handle;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([handleCopy identifier], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [IMFindMyHandle handleWithIdentifier:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)handleWithFMLHandle:(id)handle
{
  handleCopy = handle;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([handleCopy identifier], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [IMFindMyHandle handleWithIdentifier:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)handleWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[IMFindMyHandle alloc] initWithIdentifier:identifierCopy];

  return v4;
}

- (IMFindMyHandle)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = IMFindMyHandle;
  v6 = [(IMFindMyHandle *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isFindMyLocateSessionEnabled = [mEMORY[0x1E69A8070] isFindMyLocateSessionEnabled];

    if (isFindMyLocateSessionEnabled)
    {
      v10 = MEMORY[0x1AC56C550](@"FMLHandle", @"FindMyLocateObjCWrapper");
      if (v10)
      {
        v11 = v10;
        if (objc_opt_respondsToSelector())
        {
          v12 = [v11 handleWithIdentifier:identifierCopy];
          v13 = 24;
LABEL_9:
          v16 = *(&v7->super.isa + v13);
          *(&v7->super.isa + v13) = v12;
        }
      }
    }

    else
    {
      v14 = MEMORY[0x1AC56C550](@"FMFHandle", @"FMF");
      if (v14)
      {
        v15 = v14;
        if (objc_opt_respondsToSelector())
        {
          v12 = [v15 handleWithId:identifierCopy];
          v13 = 16;
          goto LABEL_9;
        }
      }
    }
  }

  return v7;
}

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
      v6 = equalCopy;
      identifier = [(IMFindMyHandle *)self identifier];
      if (identifier || ([(IMFindMyHandle *)v6 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        identifier2 = [(IMFindMyHandle *)self identifier];
        identifier3 = [(IMFindMyHandle *)v6 identifier];
        v10 = [identifier2 isEqualToString:identifier3];

        if (identifier)
        {
LABEL_11:

          goto LABEL_12;
        }
      }

      else
      {
        v10 = 1;
      }

      goto LABEL_11;
    }

    v10 = 0;
  }

LABEL_12:

  return v10;
}

- (unint64_t)hash
{
  fmfHandle = [(IMFindMyHandle *)self fmfHandle];
  v4 = [fmfHandle hash];
  fmlHandle = [(IMFindMyHandle *)self fmlHandle];
  v6 = [fmlHandle hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(IMFindMyHandle *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@ %p [%@]>", v4, self, identifier];

  return v6;
}

@end