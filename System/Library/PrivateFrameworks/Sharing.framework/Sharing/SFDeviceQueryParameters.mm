@interface SFDeviceQueryParameters
- (BOOL)isEqual:(id)equal;
- (NSString)queryType;
- (SFDeviceQueryParameters)initWithDeviceAssetQuery:(id)query installedOnly:(BOOL)only imperfectMatch:(BOOL)match fallback:(BOOL)fallback;
- (id)description;
- (id)maAssetQueryDescription;
- (unint64_t)hash;
@end

@implementation SFDeviceQueryParameters

- (SFDeviceQueryParameters)initWithDeviceAssetQuery:(id)query installedOnly:(BOOL)only imperfectMatch:(BOOL)match fallback:(BOOL)fallback
{
  onlyCopy = only;
  queryCopy = query;
  v22.receiver = self;
  v22.super_class = SFDeviceQueryParameters;
  v11 = [(SFDeviceQueryParameters *)&v22 init];
  v12 = v11;
  if (v11)
  {
    v11->_installedOnly = onlyCopy;
    v11->_imperfectMatch = match;
    v11->_fallback = fallback;
    v13 = getMAAssetQueryClass;
    v14 = queryCopy;
    v15 = objc_alloc(v13());
    assetType = [v14 assetType];
    v17 = [v15 initWithType:assetType];

    if (onlyCopy)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    [v17 returnTypes:v18];
    effectiveProductType = [v14 effectiveProductType];

    SFDeviceAssetAddKeyValuePair(@"ProductType", effectiveProductType, v17);
    maQuery = v12->_maQuery;
    v12->_maQuery = v17;
  }

  return v12;
}

- (id)maAssetQueryDescription
{
  maQuery = [(SFDeviceQueryParameters *)self maQuery];
  v21 = 0;
  v3 = objc_opt_class();
  NSAppendPrintF(&v21, "<%@: %{ptr}", v3, maQuery);
  v4 = v21;
  v20 = v4;
  NSAppendPrintF(&v20, ", returnTypes: ");
  v5 = v20;

  returnTypes = [maQuery returnTypes];
  if (returnTypes == 2)
  {
    v17 = v5;
    v7 = &v17;
    NSAppendPrintF(&v17, "UnionOfCatalogInstalled");
  }

  else if (returnTypes == 1)
  {
    v18 = v5;
    v7 = &v18;
    NSAppendPrintF(&v18, "InstalledOnly");
  }

  else if (returnTypes)
  {
    v16 = v5;
    v7 = &v16;
    NSAppendPrintF(&v16, "?");
  }

  else
  {
    v19 = v5;
    v7 = &v19;
    NSAppendPrintF(&v19, "CatalogOnly");
  }

  v8 = *v7;

  v15 = v8;
  queryParams = [maQuery queryParams];
  NSAppendPrintF(&v15, ", queryParams: %##@", queryParams);
  v10 = v15;

  v14 = v10;
  NSAppendPrintF(&v14, ">");
  v11 = v14;
  v12 = v14;

  return v11;
}

- (id)description
{
  v15 = 0;
  v3 = objc_opt_class();
  NSAppendPrintF(&v15, "<%@: %{ptr}", v3, self);
  v4 = v15;
  v14 = v4;
  if ([(SFDeviceQueryParameters *)self installedOnly])
  {
    v5 = "yes";
  }

  else
  {
    v5 = "no";
  }

  NSAppendPrintF(&v14, ", installedOnly %s", v5);
  v6 = v14;

  v13 = v6;
  if ([(SFDeviceQueryParameters *)self fallback])
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  NSAppendPrintF(&v13, ", fallback %s", v7);
  v8 = v13;

  v12 = v8;
  NSAppendPrintF(&v12, ">");
  v9 = v12;
  v10 = v12;

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      maQuery = [(SFDeviceQueryParameters *)self maQuery];
      maQuery2 = [(SFDeviceQueryParameters *)v5 maQuery];
      v8 = maQuery;
      v9 = maQuery2;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        if ((v8 != 0) == (v9 == 0))
        {

          goto LABEL_13;
        }

        v11 = [v8 isEqual:v9];

        if (!v11)
        {
          goto LABEL_13;
        }
      }

      installedOnly = [(SFDeviceQueryParameters *)self installedOnly];
      if (installedOnly == [(SFDeviceQueryParameters *)v5 installedOnly])
      {
        fallback = [(SFDeviceQueryParameters *)self fallback];
        v12 = fallback ^ [(SFDeviceQueryParameters *)v5 fallback]^ 1;
LABEL_14:

        goto LABEL_15;
      }

LABEL_13:
      LOBYTE(v12) = 0;
      goto LABEL_14;
    }

    LOBYTE(v12) = 0;
  }

LABEL_15:

  return v12;
}

- (unint64_t)hash
{
  maQuery = [(SFDeviceQueryParameters *)self maQuery];
  v3 = [maQuery hash];

  return v3;
}

- (NSString)queryType
{
  if (self->_fallback)
  {
    v3 = @"fallback asset";
  }

  else
  {
    if (self->_imperfectMatch)
    {
      v5 = @" (imperfect)";
    }

    else
    {
      v5 = &stru_1F1D30528;
    }

    if (self->_installedOnly)
    {
      v6 = @"installed asset%@";
    }

    else
    {
      v6 = @"catalog asset%@";
    }

    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:v6, v5];
  }

  return v3;
}

@end