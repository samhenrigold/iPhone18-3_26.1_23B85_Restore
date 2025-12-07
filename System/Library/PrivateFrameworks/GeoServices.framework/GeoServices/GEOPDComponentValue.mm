@interface GEOPDComponentValue
- (id)accessInfo;
- (id)address;
- (id)addressObject;
- (id)bounds;
- (id)captionedPhoto;
- (id)categorizedPhotos;
- (id)entity;
- (id)hours;
- (id)iso3166Code;
- (id)messageLink;
- (id)placeInfo;
- (id)rating;
- (id)review;
- (id)styleAttributes;
- (id)templatePlace;
@end

@implementation GEOPDComponentValue

- (id)entity
{
  if (self)
  {
    self = self[26];
    v1 = vars8;
  }

  return self;
}

- (id)placeInfo
{
  if (self)
  {
    self = self[54];
    v1 = vars8;
  }

  return self;
}

- (id)addressObject
{
  if (self)
  {
    self = self[6];
    v1 = vars8;
  }

  return self;
}

- (id)captionedPhoto
{
  if (self)
  {
    self = self[18];
    v1 = vars8;
  }

  return self;
}

- (id)styleAttributes
{
  if (self)
  {
    self = self[78];
    v1 = vars8;
  }

  return self;
}

- (id)templatePlace
{
  if (self)
  {
    self = self[80];
    v1 = vars8;
  }

  return self;
}

- (id)categorizedPhotos
{
  if (self)
  {
    self = self[19];
    v1 = vars8;
  }

  return self;
}

- (id)review
{
  if (self)
  {
    self = self[71];
    v1 = vars8;
  }

  return self;
}

- (id)accessInfo
{
  if (self)
  {
    self = self[3];
    v1 = vars8;
  }

  return self;
}

- (id)hours
{
  if (self)
  {
    self = self[40];
    v1 = vars8;
  }

  return self;
}

- (id)rating
{
  if (self)
  {
    self = self[65];
    v1 = vars8;
  }

  return self;
}

- (id)bounds
{
  if (self)
  {
    self = self[12];
    v1 = vars8;
  }

  return self;
}

- (id)address
{
  if (self)
  {
    self = self[8];
    v1 = vars8;
  }

  return self;
}

- (id)messageLink
{
  if (self)
  {
    self = self[47];
    v1 = vars8;
  }

  return self;
}

- (id)iso3166Code
{
  if (self)
  {
    self = self[42];
    v1 = vars8;
  }

  return self;
}

@end