@interface GEOStructuredAddress
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation GEOStructuredAddress

- (void)dealloc
{
  PBRepeatedInt64Clear();
  v3.receiver = self;
  v3.super_class = GEOStructuredAddress;
  [(GEOStructuredAddress *)&v3 dealloc];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_country hash];
  v4 = [(NSString *)self->_countryCode hash]^ v3;
  v5 = [(NSString *)self->_administrativeArea hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_administrativeAreaCode hash];
  v7 = [(NSString *)self->_subAdministrativeArea hash];
  v8 = v7 ^ [(NSString *)self->_locality hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_postCode hash];
  v10 = [(NSString *)self->_subLocality hash];
  v11 = v10 ^ [(NSString *)self->_premises hash];
  v12 = v11 ^ [(NSString *)self->_thoroughfare hash];
  v13 = v9 ^ v12 ^ [(NSString *)self->_subThoroughfare hash];
  v14 = [(NSString *)self->_fullThoroughfare hash];
  v15 = v14 ^ [(NSString *)self->_postCodeExtension hash];
  v16 = v15 ^ [(NSMutableArray *)self->_areaOfInterests hash];
  v17 = v16 ^ [(NSString *)self->_inlandWater hash];
  v18 = v13 ^ v17 ^ [(NSString *)self->_ocean hash];
  v19 = [(NSMutableArray *)self->_dependentLocalitys hash];
  v20 = v19 ^ [(NSString *)self->_premise hash];
  v21 = v20 ^ [(NSMutableArray *)self->_subPremises hash];
  v22 = v21 ^ [(NSString *)self->_postCodeFull hash];
  return v18 ^ v22 ^ PBRepeatedInt64Hash();
}

@end