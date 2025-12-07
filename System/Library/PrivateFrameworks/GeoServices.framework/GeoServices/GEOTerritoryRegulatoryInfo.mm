@interface GEOTerritoryRegulatoryInfo
- (unint64_t)hash;
@end

@implementation GEOTerritoryRegulatoryInfo

- (unint64_t)hash
{
  result = self->_uniqueIdentifier;
  if (!result)
  {
    v4 = (self->_disputed << 8) | (self->_coastalWaters << 10);
    v5 = v4 ^ [(NSString *)self->_iso3166CountryCode3 hash];
    v6 = ([(NSString *)self->_disputedTerritoryName hash]<< 8) ^ (v5 << 16);
    return v6 ^ [(NSArray *)self->_interestedPartyIso3166CountryCodes3 hash];
  }

  return result;
}

@end