@interface GEOPDComponent
- (id)attribution;
- (id)commingledAttributions;
- (id)values;
- (id)versionDomains;
@end

@implementation GEOPDComponent

- (id)values
{
  if (self)
  {
    self = self[6];
    v1 = vars8;
  }

  return self;
}

- (id)commingledAttributions
{
  if (self)
  {
    self = self[3];
    v1 = vars8;
  }

  return self;
}

- (id)attribution
{
  if (self)
  {
    self = self[2];
    v1 = vars8;
  }

  return self;
}

- (id)versionDomains
{
  if (self)
  {
    self = self[7];
    v1 = vars8;
  }

  return self;
}

@end