@interface IMFindMyLocation
+ (id)locationWithFMFLocation:(id)location;
+ (id)locationWithFMFLocation:(id)location fmlLocation:(id)fmlLocation;
+ (id)locationWithFMLLocation:(id)location;
- (BOOL)isEqual:(id)equal;
- (IMFindMyLocation)initWithFMFLocation:(id)location fmlLocation:(id)fmlLocation;
- (NSString)shortAddress;
- (unint64_t)hash;
@end

@implementation IMFindMyLocation

+ (id)locationWithFMFLocation:(id)location fmlLocation:(id)fmlLocation
{
  fmlLocationCopy = fmlLocation;
  locationCopy = location;
  v7 = [[IMFindMyLocation alloc] initWithFMFLocation:locationCopy fmlLocation:fmlLocationCopy];

  return v7;
}

+ (id)locationWithFMFLocation:(id)location
{
  locationCopy = location;
  v4 = [[IMFindMyLocation alloc] initWithFMFLocation:locationCopy fmlLocation:0];

  return v4;
}

+ (id)locationWithFMLLocation:(id)location
{
  locationCopy = location;
  v4 = [[IMFindMyLocation alloc] initWithFMFLocation:0 fmlLocation:locationCopy];

  return v4;
}

- (IMFindMyLocation)initWithFMFLocation:(id)location fmlLocation:(id)fmlLocation
{
  locationCopy = location;
  fmlLocationCopy = fmlLocation;
  v12.receiver = self;
  v12.super_class = IMFindMyLocation;
  v9 = [(IMFindMyLocation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fmfLocation, location);
    objc_storeStrong(&v10->_fmlLocation, fmlLocation);
  }

  return v10;
}

- (NSString)shortAddress
{
  fmlLocation = [(IMFindMyLocation *)self fmlLocation];
  if (fmlLocation)
  {
    v4 = fmlLocation;
    fmlLocation2 = [(IMFindMyLocation *)self fmlLocation];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      fmlLocation3 = [(IMFindMyLocation *)self fmlLocation];
      coarseAddressLabel = [fmlLocation3 coarseAddressLabel];
LABEL_6:
      v11 = coarseAddressLabel;

      goto LABEL_8;
    }
  }

  fmfLocation = [(IMFindMyLocation *)self fmfLocation];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    fmlLocation3 = [(IMFindMyLocation *)self fmfLocation];
    coarseAddressLabel = [fmlLocation3 shortAddress];
    goto LABEL_6;
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      fmfLocation = [(IMFindMyLocation *)self fmfLocation];
      if (fmfLocation || ([(IMFindMyLocation *)v6 fmfLocation], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        fmfLocation2 = [(IMFindMyLocation *)self fmfLocation];
        fmfLocation3 = [(IMFindMyLocation *)v6 fmfLocation];
        v10 = [fmfLocation2 isEqual:fmfLocation3];

        if (fmfLocation)
        {

          if (v10)
          {
            goto LABEL_7;
          }
        }

        else
        {

          if (v10)
          {
            goto LABEL_7;
          }
        }

        v14 = 0;
LABEL_18:

        goto LABEL_19;
      }

LABEL_7:
      fmlLocation = [(IMFindMyLocation *)self fmlLocation];
      if (fmlLocation || ([(IMFindMyLocation *)v6 fmlLocation], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        fmlLocation2 = [(IMFindMyLocation *)self fmlLocation];
        fmlLocation3 = [(IMFindMyLocation *)v6 fmlLocation];
        v14 = [fmlLocation2 isEqual:fmlLocation3];

        if (fmlLocation)
        {
LABEL_17:

          goto LABEL_18;
        }
      }

      else
      {
        v14 = 1;
      }

      goto LABEL_17;
    }

    v14 = 0;
  }

LABEL_19:

  return v14;
}

- (unint64_t)hash
{
  fmfLocation = [(IMFindMyLocation *)self fmfLocation];
  v4 = [fmfLocation hash];
  fmlLocation = [(IMFindMyLocation *)self fmlLocation];
  v6 = [fmlLocation hash];

  return v6 ^ v4;
}

@end