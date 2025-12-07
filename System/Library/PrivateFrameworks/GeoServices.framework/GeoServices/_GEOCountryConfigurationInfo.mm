@interface _GEOCountryConfigurationInfo
+ (id)get;
- (id)encodeAsDictionary;
- (void)set;
@end

@implementation _GEOCountryConfigurationInfo

+ (id)get
{
  v2 = _getValue(68, &GeoServicesConfig_DeviceCountryCodeSourced_Metadata, 1, 0, 0, 0);
  objc_opt_class();
  v3 = 0;
  if (objc_opt_isKindOfClass())
  {
    v3 = [[_GEOCountryConfigurationInfo alloc] initWithDictionary:v2];
  }

  return v3;
}

- (void)set
{
  encodeAsDictionary = [(_GEOCountryConfigurationInfo *)self encodeAsDictionary];
  _setValue(68, &GeoServicesConfig_DeviceCountryCodeSourced_Metadata, encodeAsDictionary, 1, 0);
}

- (id)encodeAsDictionary
{
  v10[4] = *MEMORY[0x1E69E9840];
  v10[0] = self->_countryCode;
  v9[0] = @"cc";
  v9[1] = @"source";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_source];
  dateOfLastUpdate = self->_dateOfLastUpdate;
  metadata = self->_metadata;
  v10[1] = v3;
  v10[2] = dateOfLastUpdate;
  v9[2] = @"date";
  v9[3] = @"metadata";
  if (metadata)
  {
    v6 = metadata;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  v10[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

@end