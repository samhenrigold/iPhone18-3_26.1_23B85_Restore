@interface GEOMapItemAssistant
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (id)_place;
@end

@implementation GEOMapItemAssistant

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  location = self->_location;
  if (location)
  {
    [(GEOLocation *)location coordinate];
  }

  else
  {
    v3 = -180.0;
    v4 = -180.0;
  }

  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (id)_place
{
  place = self->_place;
  if (!place)
  {
    v4 = [GEOPlace alloc];
    *&v5 = self->_normalizedUserRatingScore;
    LODWORD(v9) = self->_sampleSizeForUserRatingScore;
    v6 = [(GEOPlace *)v4 initWithLocation:self->_location addressDictionary:self->_addressDictionary name:self->_name businessURL:self->_businessURL phoneNumber:self->_phoneNumber muid:self->_muid attributionID:v5 sampleSizeForUserRatingScore:self->_attributionID normalizedUserRatingScore:v9];
    v7 = self->_place;
    self->_place = v6;

    place = self->_place;
  }

  return place;
}

@end