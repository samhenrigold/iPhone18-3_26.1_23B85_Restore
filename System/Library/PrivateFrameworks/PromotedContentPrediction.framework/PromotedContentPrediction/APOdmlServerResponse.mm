@interface APOdmlServerResponse
- (APOdmlServerResponse)initWithCoder:(id)coder;
- (APOdmlServerResponse)initWithSLPResponse:(id)response;
- (APOdmlServerResponse)initWithSRPResponse:(id)response;
- (APOdmlServerResponse)initWithSRPResponseData:(id)data;
- (id)falseFeatureValue;
- (id)oneHotEncode:(id)encode trueKey:(id)key;
- (id)trueFeatureValue;
- (int)ageFromBirthYear:(id)year;
- (void)addAgeRange:(id)range birthYear:(id)year;
- (void)addCachedFeatures:(id)features deviceModel:(id)model;
- (void)addDeviceClass:(id)class newFeatureValues:(id)values;
- (void)addGender:(id)gender gender:(id)a4;
- (void)addStorefront:(id)storefront storefront:(id)a4;
- (void)addUserRating:(id)rating;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APOdmlServerResponse

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  featureValues = [(APOdmlServerResponse *)self featureValues];
  [coderCopy encodeObject:featureValues forKey:@"featureValues"];

  [coderCopy encodeBool:-[APOdmlServerResponse odmlEnabled](self forKey:{"odmlEnabled"), @"odmlEnabled"}];
}

- (APOdmlServerResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = APOdmlServerResponse;
  v5 = [(APOdmlServerResponse *)&v9 init];
  if (v5)
  {
    v5->_odmlEnabled = [coderCopy decodeBoolForKey:@"odmlEnabled"];
    v6 = [coderCopy decodeObjectForKey:@"featureValues"];
    featureValues = v5->_featureValues;
    v5->_featureValues = v6;
  }

  return v5;
}

- (APOdmlServerResponse)initWithSRPResponse:(id)response
{
  responseCopy = response;
  v9.receiver = self;
  v9.super_class = APOdmlServerResponse;
  v5 = [(APOdmlServerResponse *)&v9 init];
  if (v5)
  {
    v5->_odmlEnabled = [APOdmlSRPResponseParser isValidResponse:responseCopy];
    v6 = [APOdmlSRPResponseParser parseResponseForFeatureValues:responseCopy];
    featureValues = v5->_featureValues;
    v5->_featureValues = v6;
  }

  return v5;
}

- (APOdmlServerResponse)initWithSLPResponse:(id)response
{
  responseCopy = response;
  v9.receiver = self;
  v9.super_class = APOdmlServerResponse;
  v5 = [(APOdmlServerResponse *)&v9 init];
  if (v5)
  {
    v5->_odmlEnabled = [APOdmlSLPResponseParser isValidResponse:responseCopy];
    v6 = [APOdmlSLPResponseParser parseResponseForFeatureValues:responseCopy];
    featureValues = v5->_featureValues;
    v5->_featureValues = v6;
  }

  return v5;
}

- (APOdmlServerResponse)initWithSRPResponseData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = APOdmlServerResponse;
  v5 = [(APOdmlServerResponse *)&v10 init];
  if (v5)
  {
    v6 = [[ADOdmlResponseV2 alloc] initWithData:dataCopy];
    v5->_odmlEnabled = [APOdmlSRPResponseParser isValidResponse:v6];
    v7 = [APOdmlSRPResponseParser parseResponseForFeatureValues:v6];
    featureValues = v5->_featureValues;
    v5->_featureValues = v7;
  }

  return v5;
}

- (void)addUserRating:(id)rating
{
  v15[2] = *MEMORY[0x277D85DE8];
  ratingCopy = rating;
  v5 = objc_alloc(MEMORY[0x277CBEB38]);
  featureValues = [(APOdmlServerResponse *)self featureValues];
  v7 = [v5 initWithDictionary:featureValues];

  if (ratingCopy)
  {
    if ([ratingCopy BOOLValue])
    {
      v14 = @"userratingdisplay_off";
      v8 = kAPOdmlFeatureTypeUserRatingValueOn;
      v9 = kAPOdmlFeatureTypeUserRatingValueNull;
      v10 = &v14;
    }

    else
    {
      v13 = @"userratingdisplay_on";
      v8 = kAPOdmlFeatureTypeUserRatingValueOff;
      v9 = kAPOdmlFeatureTypeUserRatingValueNull;
      v10 = &v13;
    }
  }

  else
  {
    v15[0] = @"userratingdisplay_off";
    v8 = kAPOdmlFeatureTypeUserRatingValueNull;
    v9 = kAPOdmlFeatureTypeUserRatingValueOn;
    v10 = v15;
  }

  v10[1] = *v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v12 = [(APOdmlServerResponse *)self oneHotEncode:v11 trueKey:*v8];

  [v7 addEntriesFromDictionary:v12];
  [(APOdmlServerResponse *)self setFeatureValues:v7];
}

- (void)addCachedFeatures:(id)features deviceModel:(id)model
{
  v6 = MEMORY[0x277CBEB38];
  modelCopy = model;
  featuresCopy = features;
  v9 = [v6 alloc];
  featureValues = [(APOdmlServerResponse *)self featureValues];
  v17 = [v9 initWithDictionary:featureValues];

  [(APOdmlServerResponse *)self addDeviceClass:modelCopy newFeatureValues:v17];
  v11 = [featuresCopy objectForKey:@"it"];

  v12 = [v11 objectForKey:@"dm"];
  v13 = [v12 objectForKey:@"13"];
  [(APOdmlServerResponse *)self addAgeRange:v17 birthYear:v13];
  v14 = [v12 objectForKey:@"17"];
  [(APOdmlServerResponse *)self addGender:v17 gender:v14];
  v15 = [v12 objectForKey:@"35"];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v15];
  [(APOdmlServerResponse *)self addStorefront:v17 storefront:v16];
  [(APOdmlServerResponse *)self setFeatureValues:v17];
}

- (void)addDeviceClass:(id)class newFeatureValues:(id)values
{
  v18[3] = *MEMORY[0x277D85DE8];
  classCopy = class;
  valuesCopy = values;
  if (!classCopy)
  {
    v8 = kAPOdmlFeatureTypeDeviceClassNull;
    v18[0] = @"deviceclass_ipad";
    v9 = kAPOdmlFeatureTypeDeviceClassIphone;
    v10 = kAPOdmlFeatureTypeDeviceClassIpod;
    v11 = v18;
    goto LABEL_9;
  }

  if ([classCopy isEqualToString:@"iphone"])
  {
    v8 = kAPOdmlFeatureTypeDeviceClassIphone;
    v17 = @"deviceclass_ipad";
    v9 = kAPOdmlFeatureTypeDeviceClassNull;
    v10 = kAPOdmlFeatureTypeDeviceClassIpod;
    v11 = &v17;
LABEL_9:
    v12 = *v9;
    v11[1] = *v10;
    v11[2] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v14 = [(APOdmlServerResponse *)self oneHotEncode:v13 trueKey:*v8];

    [valuesCopy addEntriesFromDictionary:v14];
    goto LABEL_10;
  }

  if ([classCopy isEqualToString:@"ipad"])
  {
    v8 = kAPOdmlFeatureTypeDeviceClassIpad;
    v16 = @"deviceclass_iphone";
    v9 = kAPOdmlFeatureTypeDeviceClassNull;
    v10 = kAPOdmlFeatureTypeDeviceClassIpod;
    v11 = &v16;
    goto LABEL_9;
  }

  if ([classCopy isEqualToString:@"ipod"])
  {
    v8 = kAPOdmlFeatureTypeDeviceClassIpod;
    v15 = @"deviceclass_iphone";
    v9 = kAPOdmlFeatureTypeDeviceClassNull;
    v10 = kAPOdmlFeatureTypeDeviceClassIpad;
    v11 = &v15;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)addAgeRange:(id)range birthYear:(id)year
{
  v29[7] = *MEMORY[0x277D85DE8];
  rangeCopy = range;
  yearCopy = year;
  if (yearCopy)
  {
    v8 = [(APOdmlServerResponse *)self ageFromBirthYear:yearCopy];
    if (v8 > 17)
    {
      if (v8 > 0x18)
      {
        if (v8 > 0x22)
        {
          if (v8 > 0x2C)
          {
            if (v8 > 0x36)
            {
              if (v8 > 0x40)
              {
                v9 = kAPOdmlFeatureTypeAgeRange65XX;
                v10 = kAPOdmlFeatureTypeAgeRange5564;
                v11 = kAPOdmlFeatureTypeAgeRange4554;
                v12 = kAPOdmlFeatureTypeAgeRange3544;
                v13 = kAPOdmlFeatureTypeAgeRange2534;
                v22 = @"agerange_null";
                v14 = kAPOdmlFeatureTypeAgeRange1824;
                v16 = &v22;
              }

              else
              {
                v9 = kAPOdmlFeatureTypeAgeRange5564;
                v10 = kAPOdmlFeatureTypeAgeRange65XX;
                v11 = kAPOdmlFeatureTypeAgeRange4554;
                v12 = kAPOdmlFeatureTypeAgeRange3544;
                v13 = kAPOdmlFeatureTypeAgeRange2534;
                v23 = @"agerange_null";
                v14 = kAPOdmlFeatureTypeAgeRange1824;
                v16 = &v23;
              }

              v15 = kAPOdmlFeatureTypeAgeRange0017;
            }

            else
            {
              v9 = kAPOdmlFeatureTypeAgeRange4554;
              v10 = kAPOdmlFeatureTypeAgeRange65XX;
              v11 = kAPOdmlFeatureTypeAgeRange5564;
              v12 = kAPOdmlFeatureTypeAgeRange3544;
              v13 = kAPOdmlFeatureTypeAgeRange2534;
              v24 = @"agerange_null";
              v14 = kAPOdmlFeatureTypeAgeRange1824;
              v15 = kAPOdmlFeatureTypeAgeRange0017;
              v16 = &v24;
            }
          }

          else
          {
            v9 = kAPOdmlFeatureTypeAgeRange3544;
            v10 = kAPOdmlFeatureTypeAgeRange65XX;
            v11 = kAPOdmlFeatureTypeAgeRange5564;
            v12 = kAPOdmlFeatureTypeAgeRange4554;
            v13 = kAPOdmlFeatureTypeAgeRange2534;
            v25 = @"agerange_null";
            v14 = kAPOdmlFeatureTypeAgeRange1824;
            v15 = kAPOdmlFeatureTypeAgeRange0017;
            v16 = &v25;
          }
        }

        else
        {
          v9 = kAPOdmlFeatureTypeAgeRange2534;
          v10 = kAPOdmlFeatureTypeAgeRange65XX;
          v11 = kAPOdmlFeatureTypeAgeRange5564;
          v12 = kAPOdmlFeatureTypeAgeRange4554;
          v13 = kAPOdmlFeatureTypeAgeRange3544;
          v26 = @"agerange_null";
          v14 = kAPOdmlFeatureTypeAgeRange1824;
          v15 = kAPOdmlFeatureTypeAgeRange0017;
          v16 = &v26;
        }
      }

      else
      {
        v9 = kAPOdmlFeatureTypeAgeRange1824;
        v10 = kAPOdmlFeatureTypeAgeRange65XX;
        v11 = kAPOdmlFeatureTypeAgeRange5564;
        v12 = kAPOdmlFeatureTypeAgeRange4554;
        v13 = kAPOdmlFeatureTypeAgeRange3544;
        v27 = @"agerange_null";
        v14 = kAPOdmlFeatureTypeAgeRange2534;
        v15 = kAPOdmlFeatureTypeAgeRange0017;
        v16 = &v27;
      }
    }

    else
    {
      v9 = kAPOdmlFeatureTypeAgeRange0017;
      v10 = kAPOdmlFeatureTypeAgeRange65XX;
      v11 = kAPOdmlFeatureTypeAgeRange5564;
      v12 = kAPOdmlFeatureTypeAgeRange4554;
      v13 = kAPOdmlFeatureTypeAgeRange3544;
      v28 = @"agerange_null";
      v14 = kAPOdmlFeatureTypeAgeRange2534;
      v15 = kAPOdmlFeatureTypeAgeRange1824;
      v16 = &v28;
    }
  }

  else
  {
    v9 = kAPOdmlFeatureTypeAgeRangeNull;
    v10 = kAPOdmlFeatureTypeAgeRange65XX;
    v11 = kAPOdmlFeatureTypeAgeRange5564;
    v12 = kAPOdmlFeatureTypeAgeRange4554;
    v13 = kAPOdmlFeatureTypeAgeRange3544;
    v29[0] = @"agerange_a0017";
    v14 = kAPOdmlFeatureTypeAgeRange2534;
    v15 = kAPOdmlFeatureTypeAgeRange1824;
    v16 = v29;
  }

  v17 = *v14;
  v16[1] = *v15;
  v16[2] = v17;
  v18 = *v12;
  v16[3] = *v13;
  v16[4] = v18;
  v19 = *v10;
  v16[5] = *v11;
  v16[6] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v21 = [(APOdmlServerResponse *)self oneHotEncode:v20 trueKey:*v9];

  [rangeCopy addEntriesFromDictionary:v21];
}

- (void)addGender:(id)gender gender:(id)a4
{
  v17[2] = *MEMORY[0x277D85DE8];
  genderCopy = gender;
  v7 = a4;
  if (!v7)
  {
    v17[0] = @"gender_female";
    v17[1] = @"gender_male";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v9 = [(APOdmlServerResponse *)self oneHotEncode:v8 trueKey:@"gender_null"];

    [genderCopy addEntriesFromDictionary:v9];
  }

  if ([v7 isEqualToString:@"10"])
  {
    v16 = @"gender_female";
    v10 = kAPOdmlFeatureTypeGenderMale;
    v11 = kAPOdmlFeatureTypeGenderNull;
    v12 = &v16;
LABEL_7:
    v12[1] = *v11;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v14 = [(APOdmlServerResponse *)self oneHotEncode:v13 trueKey:*v10];

    [genderCopy addEntriesFromDictionary:v14];
    goto LABEL_8;
  }

  if ([v7 isEqualToString:@"11"])
  {
    v15 = @"gender_null";
    v10 = kAPOdmlFeatureTypeGenderFemale;
    v11 = kAPOdmlFeatureTypeGenderMale;
    v12 = &v15;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)addStorefront:(id)storefront storefront:(id)a4
{
  v44[13] = *MEMORY[0x277D85DE8];
  storefrontCopy = storefront;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    v9 = kAPOdmlFeatureTypeStorefrontNull;
    v10 = kAPOdmlFeatureTypeKRStorefront;
    v11 = kAPOdmlFeatureTypeJPStorefront;
    v12 = kAPOdmlFeatureTypeESStorefront;
    v13 = kAPOdmlFeatureTypeITStorefront;
    v14 = kAPOdmlFeatureTypeFRStorefront;
    v15 = kAPOdmlFeatureTypeDEStorefront;
    v16 = kAPOdmlFeatureTypeCAStorefront;
    v17 = kAPOdmlFeatureTypeMXStorefront;
    v18 = kAPOdmlFeatureTypeCHStorefront;
    v19 = kAPOdmlFeatureTypeNZStorefront;
    v44[0] = @"storefront_us143441";
    v20 = kAPOdmlFeatureTypeAUStorefront;
    v21 = kAPOdmlFeatureTypeGBStorefront;
    v22 = v44;
    goto LABEL_29;
  }

  if ([v7 isEqualToString:@"143441"])
  {
    v9 = kAPOdmlFeatureTypeUSStorefront;
    v10 = kAPOdmlFeatureTypeStorefrontNull;
    v11 = kAPOdmlFeatureTypeKRStorefront;
    v12 = kAPOdmlFeatureTypeJPStorefront;
    v13 = kAPOdmlFeatureTypeESStorefront;
    v14 = kAPOdmlFeatureTypeITStorefront;
    v15 = kAPOdmlFeatureTypeFRStorefront;
    v16 = kAPOdmlFeatureTypeDEStorefront;
    v17 = kAPOdmlFeatureTypeCAStorefront;
    v18 = kAPOdmlFeatureTypeMXStorefront;
    v19 = kAPOdmlFeatureTypeCHStorefront;
    v43 = @"storefront_gb143444";
    v20 = kAPOdmlFeatureTypeNZStorefront;
    v21 = kAPOdmlFeatureTypeAUStorefront;
    v22 = &v43;
LABEL_29:
    v23 = *v20;
    v22[1] = *v21;
    v22[2] = v23;
    v24 = *v18;
    v22[3] = *v19;
    v22[4] = v24;
    v25 = *v16;
    v22[5] = *v17;
    v22[6] = v25;
    v26 = *v14;
    v22[7] = *v15;
    v22[8] = v26;
    v27 = *v12;
    v22[9] = *v13;
    v22[10] = v27;
    v28 = *v10;
    v22[11] = *v11;
    v22[12] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v30 = [(APOdmlServerResponse *)self oneHotEncode:v29 trueKey:*v9];

    [storefrontCopy addEntriesFromDictionary:v30];
    goto LABEL_30;
  }

  if ([v8 isEqualToString:@"143444"])
  {
    v9 = kAPOdmlFeatureTypeGBStorefront;
    v10 = kAPOdmlFeatureTypeStorefrontNull;
    v11 = kAPOdmlFeatureTypeKRStorefront;
    v12 = kAPOdmlFeatureTypeJPStorefront;
    v13 = kAPOdmlFeatureTypeESStorefront;
    v14 = kAPOdmlFeatureTypeITStorefront;
    v15 = kAPOdmlFeatureTypeFRStorefront;
    v16 = kAPOdmlFeatureTypeDEStorefront;
    v17 = kAPOdmlFeatureTypeCAStorefront;
    v18 = kAPOdmlFeatureTypeMXStorefront;
    v19 = kAPOdmlFeatureTypeCHStorefront;
    v42 = @"storefront_us143441";
    v20 = kAPOdmlFeatureTypeNZStorefront;
    v21 = kAPOdmlFeatureTypeAUStorefront;
    v22 = &v42;
    goto LABEL_29;
  }

  if ([v8 isEqualToString:@"143460"])
  {
    v9 = kAPOdmlFeatureTypeAUStorefront;
    v10 = kAPOdmlFeatureTypeStorefrontNull;
    v11 = kAPOdmlFeatureTypeKRStorefront;
    v12 = kAPOdmlFeatureTypeJPStorefront;
    v13 = kAPOdmlFeatureTypeESStorefront;
    v14 = kAPOdmlFeatureTypeITStorefront;
    v15 = kAPOdmlFeatureTypeFRStorefront;
    v16 = kAPOdmlFeatureTypeDEStorefront;
    v17 = kAPOdmlFeatureTypeCAStorefront;
    v18 = kAPOdmlFeatureTypeMXStorefront;
    v19 = kAPOdmlFeatureTypeCHStorefront;
    v41 = @"storefront_us143441";
    v20 = kAPOdmlFeatureTypeNZStorefront;
    v21 = kAPOdmlFeatureTypeGBStorefront;
    v22 = &v41;
    goto LABEL_29;
  }

  if ([v8 isEqualToString:@"143461"])
  {
    v9 = kAPOdmlFeatureTypeNZStorefront;
    v10 = kAPOdmlFeatureTypeStorefrontNull;
    v11 = kAPOdmlFeatureTypeKRStorefront;
    v12 = kAPOdmlFeatureTypeJPStorefront;
    v13 = kAPOdmlFeatureTypeESStorefront;
    v14 = kAPOdmlFeatureTypeITStorefront;
    v15 = kAPOdmlFeatureTypeFRStorefront;
    v16 = kAPOdmlFeatureTypeDEStorefront;
    v17 = kAPOdmlFeatureTypeCAStorefront;
    v18 = kAPOdmlFeatureTypeMXStorefront;
    v19 = kAPOdmlFeatureTypeCHStorefront;
    v40 = @"storefront_us143441";
    v20 = kAPOdmlFeatureTypeAUStorefront;
    v21 = kAPOdmlFeatureTypeGBStorefront;
    v22 = &v40;
    goto LABEL_29;
  }

  if ([v8 isEqualToString:@"143459"])
  {
    v9 = kAPOdmlFeatureTypeCHStorefront;
    v10 = kAPOdmlFeatureTypeStorefrontNull;
    v11 = kAPOdmlFeatureTypeKRStorefront;
    v12 = kAPOdmlFeatureTypeJPStorefront;
    v13 = kAPOdmlFeatureTypeESStorefront;
    v14 = kAPOdmlFeatureTypeITStorefront;
    v15 = kAPOdmlFeatureTypeFRStorefront;
    v16 = kAPOdmlFeatureTypeDEStorefront;
    v17 = kAPOdmlFeatureTypeCAStorefront;
    v18 = kAPOdmlFeatureTypeMXStorefront;
    v19 = kAPOdmlFeatureTypeNZStorefront;
    v39 = @"storefront_us143441";
    v20 = kAPOdmlFeatureTypeAUStorefront;
    v21 = kAPOdmlFeatureTypeGBStorefront;
    v22 = &v39;
    goto LABEL_29;
  }

  if ([v8 isEqualToString:@"143468"])
  {
    v9 = kAPOdmlFeatureTypeMXStorefront;
    v10 = kAPOdmlFeatureTypeStorefrontNull;
    v11 = kAPOdmlFeatureTypeKRStorefront;
    v12 = kAPOdmlFeatureTypeJPStorefront;
    v13 = kAPOdmlFeatureTypeESStorefront;
    v14 = kAPOdmlFeatureTypeITStorefront;
    v15 = kAPOdmlFeatureTypeFRStorefront;
    v16 = kAPOdmlFeatureTypeDEStorefront;
    v17 = kAPOdmlFeatureTypeCAStorefront;
    v18 = kAPOdmlFeatureTypeCHStorefront;
    v19 = kAPOdmlFeatureTypeNZStorefront;
    v38 = @"storefront_us143441";
    v20 = kAPOdmlFeatureTypeAUStorefront;
    v21 = kAPOdmlFeatureTypeGBStorefront;
    v22 = &v38;
    goto LABEL_29;
  }

  if ([v8 isEqualToString:@"143455"])
  {
    v9 = kAPOdmlFeatureTypeCAStorefront;
    v10 = kAPOdmlFeatureTypeStorefrontNull;
    v11 = kAPOdmlFeatureTypeKRStorefront;
    v12 = kAPOdmlFeatureTypeJPStorefront;
    v13 = kAPOdmlFeatureTypeESStorefront;
    v14 = kAPOdmlFeatureTypeITStorefront;
    v15 = kAPOdmlFeatureTypeFRStorefront;
    v16 = kAPOdmlFeatureTypeDEStorefront;
    v17 = kAPOdmlFeatureTypeMXStorefront;
    v18 = kAPOdmlFeatureTypeCHStorefront;
    v19 = kAPOdmlFeatureTypeNZStorefront;
    v37 = @"storefront_us143441";
    v20 = kAPOdmlFeatureTypeAUStorefront;
    v21 = kAPOdmlFeatureTypeGBStorefront;
    v22 = &v37;
    goto LABEL_29;
  }

  if ([v8 isEqualToString:@"143443"])
  {
    v9 = kAPOdmlFeatureTypeDEStorefront;
    v10 = kAPOdmlFeatureTypeStorefrontNull;
    v11 = kAPOdmlFeatureTypeKRStorefront;
    v12 = kAPOdmlFeatureTypeJPStorefront;
    v13 = kAPOdmlFeatureTypeESStorefront;
    v14 = kAPOdmlFeatureTypeITStorefront;
    v15 = kAPOdmlFeatureTypeFRStorefront;
    v16 = kAPOdmlFeatureTypeCAStorefront;
    v17 = kAPOdmlFeatureTypeMXStorefront;
    v18 = kAPOdmlFeatureTypeCHStorefront;
    v19 = kAPOdmlFeatureTypeNZStorefront;
    v36 = @"storefront_us143441";
    v20 = kAPOdmlFeatureTypeAUStorefront;
    v21 = kAPOdmlFeatureTypeGBStorefront;
    v22 = &v36;
    goto LABEL_29;
  }

  if ([v8 isEqualToString:@"143442"])
  {
    v9 = kAPOdmlFeatureTypeFRStorefront;
    v10 = kAPOdmlFeatureTypeStorefrontNull;
    v11 = kAPOdmlFeatureTypeKRStorefront;
    v12 = kAPOdmlFeatureTypeJPStorefront;
    v13 = kAPOdmlFeatureTypeESStorefront;
    v14 = kAPOdmlFeatureTypeITStorefront;
    v15 = kAPOdmlFeatureTypeDEStorefront;
    v16 = kAPOdmlFeatureTypeCAStorefront;
    v17 = kAPOdmlFeatureTypeMXStorefront;
    v18 = kAPOdmlFeatureTypeCHStorefront;
    v19 = kAPOdmlFeatureTypeNZStorefront;
    v35 = @"storefront_us143441";
    v20 = kAPOdmlFeatureTypeAUStorefront;
    v21 = kAPOdmlFeatureTypeGBStorefront;
    v22 = &v35;
    goto LABEL_29;
  }

  if ([v8 isEqualToString:@"143450"])
  {
    v9 = kAPOdmlFeatureTypeITStorefront;
    v10 = kAPOdmlFeatureTypeStorefrontNull;
    v11 = kAPOdmlFeatureTypeKRStorefront;
    v12 = kAPOdmlFeatureTypeJPStorefront;
    v13 = kAPOdmlFeatureTypeESStorefront;
    v14 = kAPOdmlFeatureTypeFRStorefront;
    v15 = kAPOdmlFeatureTypeDEStorefront;
    v16 = kAPOdmlFeatureTypeCAStorefront;
    v17 = kAPOdmlFeatureTypeMXStorefront;
    v18 = kAPOdmlFeatureTypeCHStorefront;
    v19 = kAPOdmlFeatureTypeNZStorefront;
    v34 = @"storefront_us143441";
    v20 = kAPOdmlFeatureTypeAUStorefront;
    v21 = kAPOdmlFeatureTypeGBStorefront;
    v22 = &v34;
    goto LABEL_29;
  }

  if ([v8 isEqualToString:@"143454"])
  {
    v9 = kAPOdmlFeatureTypeESStorefront;
    v10 = kAPOdmlFeatureTypeStorefrontNull;
    v11 = kAPOdmlFeatureTypeKRStorefront;
    v12 = kAPOdmlFeatureTypeJPStorefront;
    v13 = kAPOdmlFeatureTypeITStorefront;
    v14 = kAPOdmlFeatureTypeFRStorefront;
    v15 = kAPOdmlFeatureTypeDEStorefront;
    v16 = kAPOdmlFeatureTypeCAStorefront;
    v17 = kAPOdmlFeatureTypeMXStorefront;
    v18 = kAPOdmlFeatureTypeCHStorefront;
    v19 = kAPOdmlFeatureTypeNZStorefront;
    v33 = @"storefront_us143441";
    v20 = kAPOdmlFeatureTypeAUStorefront;
    v21 = kAPOdmlFeatureTypeGBStorefront;
    v22 = &v33;
    goto LABEL_29;
  }

  if ([v8 isEqualToString:@"143462"])
  {
    v9 = kAPOdmlFeatureTypeJPStorefront;
    v10 = kAPOdmlFeatureTypeStorefrontNull;
    v11 = kAPOdmlFeatureTypeKRStorefront;
    v12 = kAPOdmlFeatureTypeESStorefront;
    v13 = kAPOdmlFeatureTypeITStorefront;
    v14 = kAPOdmlFeatureTypeFRStorefront;
    v15 = kAPOdmlFeatureTypeDEStorefront;
    v16 = kAPOdmlFeatureTypeCAStorefront;
    v17 = kAPOdmlFeatureTypeMXStorefront;
    v18 = kAPOdmlFeatureTypeCHStorefront;
    v19 = kAPOdmlFeatureTypeNZStorefront;
    v32 = @"storefront_us143441";
    v20 = kAPOdmlFeatureTypeAUStorefront;
    v21 = kAPOdmlFeatureTypeGBStorefront;
    v22 = &v32;
    goto LABEL_29;
  }

  if ([v8 isEqualToString:@"143466"])
  {
    v9 = kAPOdmlFeatureTypeKRStorefront;
    v10 = kAPOdmlFeatureTypeStorefrontNull;
    v11 = kAPOdmlFeatureTypeJPStorefront;
    v12 = kAPOdmlFeatureTypeESStorefront;
    v13 = kAPOdmlFeatureTypeITStorefront;
    v14 = kAPOdmlFeatureTypeFRStorefront;
    v15 = kAPOdmlFeatureTypeDEStorefront;
    v16 = kAPOdmlFeatureTypeCAStorefront;
    v17 = kAPOdmlFeatureTypeMXStorefront;
    v18 = kAPOdmlFeatureTypeCHStorefront;
    v19 = kAPOdmlFeatureTypeNZStorefront;
    v31 = @"storefront_us143441";
    v20 = kAPOdmlFeatureTypeAUStorefront;
    v21 = kAPOdmlFeatureTypeGBStorefront;
    v22 = &v31;
    goto LABEL_29;
  }

LABEL_30:
}

- (id)falseFeatureValue
{
  v2 = [MEMORY[0x277CBFF48] multiarrayFromArray:&unk_28736F260];
  v3 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v2];

  return v3;
}

- (id)trueFeatureValue
{
  v2 = [MEMORY[0x277CBFF48] multiarrayFromArray:&unk_28736F278];
  v3 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v2];

  return v3;
}

- (id)oneHotEncode:(id)encode trueKey:(id)key
{
  v24 = *MEMORY[0x277D85DE8];
  encodeCopy = encode;
  keyCopy = key;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  trueFeatureValue = [(APOdmlServerResponse *)self trueFeatureValue];
  [dictionary setValue:trueFeatureValue forKey:keyCopy];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = encodeCopy;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        falseFeatureValue = [(APOdmlServerResponse *)self falseFeatureValue];
        [dictionary setValue:falseFeatureValue forKey:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v17 = [dictionary copy];

  return v17;
}

- (int)ageFromBirthYear:(id)year
{
  v3 = MEMORY[0x277CBEA80];
  yearCopy = year;
  currentCalendar = [v3 currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [currentCalendar components:28 fromDate:date];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "year")}];
  LODWORD(date) = [v8 intValue];
  intValue = [yearCopy intValue];

  return date - intValue;
}

@end