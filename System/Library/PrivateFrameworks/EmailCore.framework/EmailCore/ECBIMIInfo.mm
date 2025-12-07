@interface ECBIMIInfo
+ (id)bimiInfoForHeaders:(id)headers;
- (BOOL)isEqual:(id)equal;
- (ECBIMIInfo)initWithIndicator:(id)indicator location:(id)location evidenceLocation:(id)evidenceLocation indicatorHash:(id)hash hashAlgorithm:(id)algorithm;
- (id)_calculateHash;
@end

@implementation ECBIMIInfo

+ (id)bimiInfoForHeaders:(id)headers
{
  v3 = [_ECBIMIHeaderParser bimiInfoForHeaders:headers];

  return v3;
}

- (ECBIMIInfo)initWithIndicator:(id)indicator location:(id)location evidenceLocation:(id)evidenceLocation indicatorHash:(id)hash hashAlgorithm:(id)algorithm
{
  indicatorCopy = indicator;
  locationCopy = location;
  evidenceLocationCopy = evidenceLocation;
  hashCopy = hash;
  algorithmCopy = algorithm;
  v21.receiver = self;
  v21.super_class = ECBIMIInfo;
  v16 = [(ECBIMIInfo *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_indicator, indicator);
    objc_storeStrong(&v17->_location, location);
    objc_storeStrong(&v17->_evidenceLocation, evidenceLocation);
    objc_storeStrong(&v17->_indicatorHash, hash);
    objc_storeStrong(&v17->_hashAlgorithm, algorithm);
    [(ECBIMIInfo *)&v17->super.isa _calculateHash];
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else if (([(ECBIMIInfo *)equalCopy isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = equalCopy;
    indicator = [(ECBIMIInfo *)self indicator];
    indicator2 = [(ECBIMIInfo *)v5 indicator];
    if (EFObjectsAreEqual())
    {
      location = [(ECBIMIInfo *)self location];
      location2 = [(ECBIMIInfo *)v5 location];
      if (EFObjectsAreEqual())
      {
        evidenceLocation = [(ECBIMIInfo *)self evidenceLocation];
        evidenceLocation2 = [(ECBIMIInfo *)v5 evidenceLocation];
        if (EFObjectsAreEqual())
        {
          indicatorHash = [(ECBIMIInfo *)self indicatorHash];
          indicatorHash2 = [(ECBIMIInfo *)v5 indicatorHash];
          if (EFObjectsAreEqual())
          {
            hashAlgorithm = [(ECBIMIInfo *)self hashAlgorithm];
            hashAlgorithm2 = [(ECBIMIInfo *)v5 hashAlgorithm];
            v12 = EFObjectsAreEqual();
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_calculateHash
{
  if (result)
  {
    v1 = result;
    v2 = [result[2] hash];
    v3 = [v1[3] hash];
    v4 = [v1[4] hash];
    v5 = [v1[5] hash];
    result = [v1[6] hash];
    v1[1] = result + 1185921 * v2 + 35937 * v3 + 1089 * v4 + 33 * v5 + 0x3107FF0025;
  }

  return result;
}

@end