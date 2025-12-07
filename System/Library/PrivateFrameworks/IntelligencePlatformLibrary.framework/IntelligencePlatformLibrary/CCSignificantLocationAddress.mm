@interface CCSignificantLocationAddress
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCSignificantLocationAddress)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCSignificantLocationAddress)initWithThoroughfare:(id)thoroughfare subLocality:(id)locality locality:(id)a5 country:(id)country subPremises:(id)premises subThoroughfare:(id)subThoroughfare subAministrativeArea:(id)area administrativeArea:(id)self0 administrativeAreaCode:(id)self1 postalCode:(id)self2 countryCode:(id)self3 inlandWater:(id)self4 ocean:(id)self5 areasOfInterest:(id)self6 isIsland:(id)self7 iso3166CountryCode:(id)self8 iso3166SubdivisionCode:(id)self9 mergedThoroughfare:(id)mergedThoroughfare error:(id *)error;
- (NSArray)areasOfInterest;
- (NSArray)subPremises;
- (NSString)administrativeArea;
- (NSString)administrativeAreaCode;
- (NSString)country;
- (NSString)countryCode;
- (NSString)inlandWater;
- (NSString)iso3166CountryCode;
- (NSString)iso3166SubdivisionCode;
- (NSString)locality;
- (NSString)mergedThoroughfare;
- (NSString)ocean;
- (NSString)postalCode;
- (NSString)subAministrativeArea;
- (NSString)subLocality;
- (NSString)subThoroughfare;
- (NSString)thoroughfare;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCSignificantLocationAddress

- (CCSignificantLocationAddress)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v59 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  v57 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"thoroughfare"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"subLocality"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"locality"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"country"];
    v13 = [dictionaryCopy objectForKeyedSubscript:@"subPremises"];
    v50 = v9;
    if (v13)
    {
      v14 = v13;
      objc_opt_class();
      v56 = v8;
      v15 = CCValidateIsInstanceOfExpectedClass();
      v16 = v8;

      if ((v15 & 1) == 0)
      {
        CCSetError();
        v31 = 0;
        v8 = v16;
        v32 = v50;
LABEL_22:

        goto LABEL_23;
      }

      v41 = v16;
      v42 = v11;
      v49 = v12;
      v43 = v10;
      selfCopy2 = self;
      v17 = objc_opt_new();
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v14 = v14;
      v18 = [v14 countByEnumeratingWithState:&v52 objects:v58 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v53;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v53 != v20)
            {
              objc_enumerationMutation(v14);
            }

            v22 = *(*(&v52 + 1) + 8 * i);
            v23 = [CCSignificantLocationSubPremise alloc];
            v51 = 0;
            v24 = [(CCSignificantLocationSubPremise *)v23 initWithJSONDictionary:v22 error:&v51];
            v25 = v51;
            if (v24)
            {
              v26 = v25 == 0;
            }

            else
            {
              v26 = 0;
            }

            if (!v26)
            {
              v30 = v25;
              CCSetError();

              v31 = 0;
              self = selfCopy2;
              v12 = v49;
              v32 = v50;
              v11 = v42;
              goto LABEL_21;
            }

            [v17 addObject:v24];
          }

          v19 = [v14 countByEnumeratingWithState:&v52 objects:v58 count:16];
        }

        while (v19);
      }

      errorCopy2 = error;
    }

    else
    {
      errorCopy2 = error;
      v41 = v8;
      v49 = v12;
      v42 = v11;
      v43 = v10;
      selfCopy2 = self;
      v17 = 0;
    }

    v39 = [dictionaryCopy objectForKeyedSubscript:@"subThoroughfare"];
    v48 = [dictionaryCopy objectForKeyedSubscript:@"subAministrativeArea"];
    v47 = [dictionaryCopy objectForKeyedSubscript:@"administrativeArea"];
    v46 = [dictionaryCopy objectForKeyedSubscript:@"administrativeAreaCode"];
    v45 = [dictionaryCopy objectForKeyedSubscript:@"postalCode"];
    v38 = [dictionaryCopy objectForKeyedSubscript:@"countryCode"];
    v37 = [dictionaryCopy objectForKeyedSubscript:@"inlandWater"];
    v36 = [dictionaryCopy objectForKeyedSubscript:@"ocean"];
    v35 = [dictionaryCopy objectForKeyedSubscript:@"areasOfInterest"];
    v34 = [dictionaryCopy objectForKeyedSubscript:@"isIsland"];
    v27 = [dictionaryCopy objectForKeyedSubscript:@"iso3166CountryCode"];
    v28 = [dictionaryCopy objectForKeyedSubscript:@"iso3166SubdivisionCode"];
    v29 = [dictionaryCopy objectForKeyedSubscript:@"mergedThoroughfare"];
    v32 = v50;
    v11 = v42;
    v10 = v43;
    v31 = [[CCSignificantLocationAddress alloc] initWithThoroughfare:v50 subLocality:v43 locality:v42 country:v49 subPremises:v17 subThoroughfare:v39 subAministrativeArea:v48 administrativeArea:v47 administrativeAreaCode:v46 postalCode:v45 countryCode:v38 inlandWater:v37 ocean:v36 areasOfInterest:v35 isIsland:v34 iso3166CountryCode:v27 iso3166SubdivisionCode:v28 mergedThoroughfare:v29 error:errorCopy2];

    v14 = v17;
    v12 = v49;
    self = selfCopy2;
LABEL_21:
    v8 = v41;
    goto LABEL_22;
  }

  CCSetError();
  v31 = 0;
LABEL_23:

  return v31;
}

- (id)jsonDictionary
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_thoroughfare)
  {
    thoroughfare = [(CCSignificantLocationAddress *)self thoroughfare];
    [v3 setObject:thoroughfare forKeyedSubscript:@"thoroughfare"];
  }

  if (self->_subLocality)
  {
    subLocality = [(CCSignificantLocationAddress *)self subLocality];
    [v3 setObject:subLocality forKeyedSubscript:@"subLocality"];
  }

  if (self->_locality)
  {
    locality = [(CCSignificantLocationAddress *)self locality];
    [v3 setObject:locality forKeyedSubscript:@"locality"];
  }

  if (self->_country)
  {
    country = [(CCSignificantLocationAddress *)self country];
    [v3 setObject:country forKeyedSubscript:@"country"];
  }

  if (self->_subPremises)
  {
    v8 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    subPremises = [(CCSignificantLocationAddress *)self subPremises];
    v10 = [subPremises countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v31;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(subPremises);
          }

          jsonDictionary = [*(*(&v30 + 1) + 8 * i) jsonDictionary];
          [v8 addObject:jsonDictionary];
        }

        v11 = [subPremises countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"subPremises"];
  }

  if (self->_subThoroughfare)
  {
    subThoroughfare = [(CCSignificantLocationAddress *)self subThoroughfare];
    [v3 setObject:subThoroughfare forKeyedSubscript:@"subThoroughfare"];
  }

  if (self->_subAministrativeArea)
  {
    subAministrativeArea = [(CCSignificantLocationAddress *)self subAministrativeArea];
    [v3 setObject:subAministrativeArea forKeyedSubscript:@"subAministrativeArea"];
  }

  if (self->_administrativeArea)
  {
    administrativeArea = [(CCSignificantLocationAddress *)self administrativeArea];
    [v3 setObject:administrativeArea forKeyedSubscript:@"administrativeArea"];
  }

  if (self->_administrativeAreaCode)
  {
    administrativeAreaCode = [(CCSignificantLocationAddress *)self administrativeAreaCode];
    [v3 setObject:administrativeAreaCode forKeyedSubscript:@"administrativeAreaCode"];
  }

  if (self->_postalCode)
  {
    postalCode = [(CCSignificantLocationAddress *)self postalCode];
    [v3 setObject:postalCode forKeyedSubscript:@"postalCode"];
  }

  if (self->_countryCode)
  {
    countryCode = [(CCSignificantLocationAddress *)self countryCode];
    [v3 setObject:countryCode forKeyedSubscript:@"countryCode"];
  }

  if (self->_inlandWater)
  {
    inlandWater = [(CCSignificantLocationAddress *)self inlandWater];
    [v3 setObject:inlandWater forKeyedSubscript:@"inlandWater"];
  }

  if (self->_ocean)
  {
    ocean = [(CCSignificantLocationAddress *)self ocean];
    [v3 setObject:ocean forKeyedSubscript:@"ocean"];
  }

  if (self->_areasOfInterest)
  {
    areasOfInterest = [(CCSignificantLocationAddress *)self areasOfInterest];
    [v3 setObject:areasOfInterest forKeyedSubscript:@"areasOfInterest"];
  }

  if (self->_hasIsIsland)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[CCSignificantLocationAddress isIsland](self, "isIsland")}];
    [v3 setObject:v24 forKeyedSubscript:@"isIsland"];
  }

  if (self->_iso3166CountryCode)
  {
    iso3166CountryCode = [(CCSignificantLocationAddress *)self iso3166CountryCode];
    [v3 setObject:iso3166CountryCode forKeyedSubscript:@"iso3166CountryCode"];
  }

  if (self->_iso3166SubdivisionCode)
  {
    iso3166SubdivisionCode = [(CCSignificantLocationAddress *)self iso3166SubdivisionCode];
    [v3 setObject:iso3166SubdivisionCode forKeyedSubscript:@"iso3166SubdivisionCode"];
  }

  if (self->_mergedThoroughfare)
  {
    mergedThoroughfare = [(CCSignificantLocationAddress *)self mergedThoroughfare];
    [v3 setObject:mergedThoroughfare forKeyedSubscript:@"mergedThoroughfare"];
  }

  v28 = [v3 copy];

  return v28;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_thoroughfare)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15770 stringValue:self->_thoroughfare];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_subLocality)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15771 stringValue:self->_subLocality];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_locality)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15772 stringValue:self->_locality];
    blockCopy[2](blockCopy, v7);
  }

  if (self->_country)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15773 stringValue:self->_country];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_subPremises)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15774 repeatedSubMessageValue:self->_subPremises];
    blockCopy[2](blockCopy, v9);
  }

  if (self->_subThoroughfare)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15777 stringValue:self->_subThoroughfare];
    blockCopy[2](blockCopy, v10);
  }

  if (self->_subAministrativeArea)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15778 stringValue:self->_subAministrativeArea];
    blockCopy[2](blockCopy, v11);
  }

  if (self->_administrativeArea)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15779 stringValue:self->_administrativeArea];
    blockCopy[2](blockCopy, v12);
  }

  if (self->_administrativeAreaCode)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15780 stringValue:self->_administrativeAreaCode];
    blockCopy[2](blockCopy, v13);
  }

  if (self->_postalCode)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15781 stringValue:self->_postalCode];
    blockCopy[2](blockCopy, v14);
  }

  if (self->_countryCode)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15782 stringValue:self->_countryCode];
    blockCopy[2](blockCopy, v15);
  }

  if (self->_inlandWater)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15783 stringValue:self->_inlandWater];
    blockCopy[2](blockCopy, v16);
  }

  if (self->_ocean)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15784 stringValue:self->_ocean];
    blockCopy[2](blockCopy, v17);
  }

  if (self->_areasOfInterest)
  {
    v18 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15785 repeatedStringValue:self->_areasOfInterest];
    blockCopy[2](blockCopy, v18);
  }

  if (self->_hasIsIsland)
  {
    v19 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15786 BOOLValue:self->_isIsland];
    blockCopy[2](blockCopy, v19);
  }

  if (self->_iso3166CountryCode)
  {
    v20 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15787 stringValue:self->_iso3166CountryCode];
    blockCopy[2](blockCopy, v20);
  }

  if (self->_iso3166SubdivisionCode)
  {
    v21 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15788 stringValue:self->_iso3166SubdivisionCode];
    blockCopy[2](blockCopy, v21);
  }

  v22 = blockCopy;
  if (self->_mergedThoroughfare)
  {
    v23 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15789 stringValue:self->_mergedThoroughfare];
    blockCopy[2](blockCopy, v23);

    v22 = blockCopy;
  }
}

- (NSString)mergedThoroughfare
{
  v2 = [(NSString *)self->_mergedThoroughfare copy];

  return v2;
}

- (NSString)iso3166SubdivisionCode
{
  v2 = [(NSString *)self->_iso3166SubdivisionCode copy];

  return v2;
}

- (NSString)iso3166CountryCode
{
  v2 = [(NSString *)self->_iso3166CountryCode copy];

  return v2;
}

- (NSArray)areasOfInterest
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_areasOfInterest copyItems:1];

  return v2;
}

- (NSString)ocean
{
  v2 = [(NSString *)self->_ocean copy];

  return v2;
}

- (NSString)inlandWater
{
  v2 = [(NSString *)self->_inlandWater copy];

  return v2;
}

- (NSString)countryCode
{
  v2 = [(NSString *)self->_countryCode copy];

  return v2;
}

- (NSString)postalCode
{
  v2 = [(NSString *)self->_postalCode copy];

  return v2;
}

- (NSString)administrativeAreaCode
{
  v2 = [(NSString *)self->_administrativeAreaCode copy];

  return v2;
}

- (NSString)administrativeArea
{
  v2 = [(NSString *)self->_administrativeArea copy];

  return v2;
}

- (NSString)subAministrativeArea
{
  v2 = [(NSString *)self->_subAministrativeArea copy];

  return v2;
}

- (NSString)subThoroughfare
{
  v2 = [(NSString *)self->_subThoroughfare copy];

  return v2;
}

- (NSArray)subPremises
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_subPremises copyItems:1];

  return v2;
}

- (NSString)country
{
  v2 = [(NSString *)self->_country copy];

  return v2;
}

- (NSString)locality
{
  v2 = [(NSString *)self->_locality copy];

  return v2;
}

- (NSString)subLocality
{
  v2 = [(NSString *)self->_subLocality copy];

  return v2;
}

- (NSString)thoroughfare
{
  v2 = [(NSString *)self->_thoroughfare copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v8 = MEMORY[0x1E6993AB8];
  v9 = MEMORY[0x1E6993AB0];
  if (*&v7[*MEMORY[0x1E6993AB8]] >= *&v7[*MEMORY[0x1E6993AB0]])
  {
    v51 = 0;
    v52 = 0;
LABEL_71:
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v51 = 0;
    v52 = 0;
    v11 = MEMORY[0x1E6993AA8];
    v12 = MEMORY[0x1E6993AA0];
    do
    {
      if (*&v7[*v11])
      {
        v13 = 0;
      }

      else
      {
        v13 = v10 == 0;
      }

      if (!v13)
      {
        break;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v17 = *v8;
        v18 = *&v7[v17];
        if (v18 == -1 || v18 >= *&v7[*v9])
        {
          break;
        }

        v19 = *(*&v7[*v12] + v18);
        *&v7[v17] = v18 + 1;
        v16 |= (v19 & 0x7F) << v14;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v14 += 7;
        v20 = v15++ >= 9;
        if (v20)
        {
          v21 = 0;
          if (*&v7[*v11])
          {
            goto LABEL_71;
          }

          goto LABEL_21;
        }
      }

      *&v7[*v11] = 1;
LABEL_17:
      v22 = *&v7[*v11];
      if (v22)
      {
        v21 = 0;
      }

      else
      {
        v21 = v16;
      }

      if (v22)
      {
        goto LABEL_71;
      }

LABEL_21:
      switch((v21 >> 3))
      {
        case 1u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 24;
          goto LABEL_58;
        case 2u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 32;
          goto LABEL_58;
        case 3u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 40;
          goto LABEL_58;
        case 4u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 48;
          goto LABEL_58;
        case 5u:
          errorCopy2 = error;
          v32 = dataCopy;
          v33 = CCPBReaderReadDataNoCopy();
          if (!v51)
          {
            v51 = objc_opt_new();
          }

          v34 = [CCSignificantLocationSubPremise alloc];
          v53 = 0;
          v35 = [(CCItemMessage *)v34 initWithData:v33 error:&v53];
          v10 = v53;
          if (!v10 && v35)
          {
            [v51 addObject:v35];
          }

          goto LABEL_55;
        case 6u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 64;
          goto LABEL_58;
        case 7u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 72;
          goto LABEL_58;
        case 8u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 80;
          goto LABEL_58;
        case 9u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 88;
          goto LABEL_58;
        case 0xAu:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 96;
          goto LABEL_58;
        case 0xBu:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 104;
          goto LABEL_58;
        case 0xCu:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 112;
          goto LABEL_58;
        case 0xDu:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 120;
          goto LABEL_58;
        case 0xEu:
          v36 = CCPBReaderReadStringNoCopy();
          if (!v52)
          {
            v52 = objc_opt_new();
          }

          if (v36)
          {
            [v52 addObject:v36];
          }

          goto LABEL_59;
        case 0xFu:
          v25 = 0;
          v26 = 0;
          v27 = 0;
          break;
        case 0x10u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 136;
          goto LABEL_58;
        case 0x11u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 144;
          goto LABEL_58;
        case 0x12u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 152;
LABEL_58:
          v38 = *(&self->super.super.isa + v24);
          *(&self->super.super.isa + v24) = v23;

          goto LABEL_59;
        default:
          if (CCPBReaderSkipValueWithTag())
          {
LABEL_59:
            v10 = 0;
          }

          else
          {
            v37 = objc_opt_class();
            NSStringFromClass(v37);
            errorCopy2 = error;
            v33 = v32 = dataCopy;
            v10 = CCSkipFieldErrorForMessage();
LABEL_55:

            dataCopy = v32;
            error = errorCopy2;
          }

          continue;
      }

      while (1)
      {
        v28 = *v8;
        v29 = *&v7[v28];
        if (v29 == -1 || v29 >= *&v7[*v9])
        {
          break;
        }

        v30 = *(*&v7[*v12] + v29);
        *&v7[v28] = v29 + 1;
        v27 |= (v30 & 0x7F) << v25;
        if ((v30 & 0x80) == 0)
        {
          goto LABEL_63;
        }

        v25 += 7;
        v20 = v26++ >= 9;
        if (v20)
        {
          v31 = 0;
          goto LABEL_69;
        }
      }

      *&v7[*v11] = 1;
LABEL_63:
      v39 = *&v7[*v11] || v27 == 0;
      v31 = !v39;
LABEL_69:
      v10 = 0;
      self->_isIsland = v31;
      self->_hasIsIsland = 1;
    }

    while (*&v7[*v8] < *&v7[*v9]);
  }

  v40 = [v51 copy];
  subPremises = self->_subPremises;
  self->_subPremises = v40;

  v42 = [v52 copy];
  areasOfInterest = self->_areasOfInterest;
  self->_areasOfInterest = v42;

  if (v10)
  {
    CCSetError();
  }

  else
  {
    if (!*&v7[*MEMORY[0x1E6993AA8]])
    {
      v48 = 1;
      goto LABEL_77;
    }

    v44 = objc_opt_class();
    v45 = NSStringFromClass(v44);
    CCInvalidBufferErrorForMessage();
    v47 = v46 = dataCopy;
    CCSetError();

    dataCopy = v46;
  }

  v48 = 0;
LABEL_77:

  return v48;
}

- (CCSignificantLocationAddress)initWithThoroughfare:(id)thoroughfare subLocality:(id)locality locality:(id)a5 country:(id)country subPremises:(id)premises subThoroughfare:(id)subThoroughfare subAministrativeArea:(id)area administrativeArea:(id)self0 administrativeAreaCode:(id)self1 postalCode:(id)self2 countryCode:(id)self3 inlandWater:(id)self4 ocean:(id)self5 areasOfInterest:(id)self6 isIsland:(id)self7 iso3166CountryCode:(id)self8 iso3166SubdivisionCode:(id)self9 mergedThoroughfare:(id)mergedThoroughfare error:(id *)error
{
  v113 = *MEMORY[0x1E69E9840];
  thoroughfareCopy = thoroughfare;
  localityCopy = locality;
  v28 = a5;
  countryCopy = country;
  premisesCopy = premises;
  subThoroughfareCopy = subThoroughfare;
  areaCopy = area;
  administrativeAreaCopy = administrativeArea;
  codeCopy = code;
  postalCodeCopy = postalCode;
  countryCodeCopy = countryCode;
  waterCopy = water;
  oceanCopy = ocean;
  interestCopy = interest;
  islandCopy = island;
  iso3166CountryCodeCopy = iso3166CountryCode;
  subdivisionCodeCopy = subdivisionCode;
  mergedThoroughfareCopy = mergedThoroughfare;
  v32 = objc_opt_new();
  v75 = premisesCopy;
  if (thoroughfareCopy)
  {
    objc_opt_class();
    v110 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v34 = 0;
    if (!IsInstanceOfExpectedClass)
    {
LABEL_75:
      CCSetError();
      v50 = 0;
      selfCopy3 = self;
      goto LABEL_83;
    }

    CCPBDataWriterWriteStringField();
  }

  else
  {
    v34 = 0;
  }

  v74 = areaCopy;
  if (localityCopy)
  {
    objc_opt_class();
    v109 = v34;
    v35 = CCValidateIsInstanceOfExpectedClass();
    v36 = v34;

    if (!v35)
    {
      goto LABEL_74;
    }

    CCPBDataWriterWriteStringField();
    if (!v28)
    {
LABEL_8:
      v34 = v36;
      if (countryCopy)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v36 = v34;
    if (!v28)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  v108 = v36;
  v38 = CCValidateIsInstanceOfExpectedClass();
  v34 = v36;

  if (!v38)
  {
    goto LABEL_80;
  }

  CCPBDataWriterWriteStringField();
  if (countryCopy)
  {
LABEL_9:
    objc_opt_class();
    v107 = v34;
    v37 = CCValidateIsInstanceOfExpectedClass();
    v36 = v34;

    if (!v37)
    {
      goto LABEL_74;
    }

    CCPBDataWriterWriteStringField();
    if (!premisesCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_15:
  v36 = v34;
  if (!premisesCopy)
  {
LABEL_11:
    v34 = v36;
    goto LABEL_25;
  }

LABEL_16:
  objc_opt_class();
  v106 = v36;
  v39 = CCValidateArrayValues();
  v34 = v36;

  if (!v39)
  {
    goto LABEL_80;
  }

  v70 = thoroughfareCopy;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v40 = premisesCopy;
  v41 = [v40 countByEnumeratingWithState:&v102 objects:v112 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v103;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v103 != v43)
        {
          objc_enumerationMutation(v40);
        }

        data = [*(*(&v102 + 1) + 8 * i) data];
        CCPBDataWriterWriteDataField();
      }

      v42 = [v40 countByEnumeratingWithState:&v102 objects:v112 count:16];
    }

    while (v42);
  }

  thoroughfareCopy = v70;
LABEL_25:
  if (subThoroughfareCopy)
  {
    objc_opt_class();
    v101 = v34;
    v46 = CCValidateIsInstanceOfExpectedClass();
    v36 = v34;

    if (!v46)
    {
      goto LABEL_74;
    }

    v71 = v28;
    v47 = countryCopy;
    CCPBDataWriterWriteStringField();
  }

  else
  {
    v71 = v28;
    v47 = countryCopy;
    v36 = v34;
  }

  if (!v74)
  {
    v34 = v36;
    goto LABEL_33;
  }

  objc_opt_class();
  v100 = v36;
  v48 = CCValidateIsInstanceOfExpectedClass();
  v34 = v36;

  if (v48)
  {
    CCPBDataWriterWriteStringField();
LABEL_33:
    countryCopy = v47;
    if (administrativeAreaCopy)
    {
      objc_opt_class();
      v99 = v34;
      v49 = CCValidateIsInstanceOfExpectedClass();
      v36 = v34;

      v28 = v71;
      if (!v49)
      {
        goto LABEL_74;
      }

      CCPBDataWriterWriteStringField();
    }

    else
    {
      v36 = v34;
      v28 = v71;
    }

    if (codeCopy)
    {
      objc_opt_class();
      v98 = v36;
      v52 = CCValidateIsInstanceOfExpectedClass();
      v34 = v36;

      if (!v52)
      {
        goto LABEL_80;
      }

      CCPBDataWriterWriteStringField();
    }

    else
    {
      v34 = v36;
    }

    if (postalCodeCopy)
    {
      objc_opt_class();
      v97 = v34;
      v53 = CCValidateIsInstanceOfExpectedClass();
      v36 = v34;

      if (!v53)
      {
        goto LABEL_74;
      }

      CCPBDataWriterWriteStringField();
    }

    else
    {
      v36 = v34;
    }

    if (countryCodeCopy)
    {
      objc_opt_class();
      v96 = v36;
      v54 = CCValidateIsInstanceOfExpectedClass();
      v34 = v36;

      if (!v54)
      {
        goto LABEL_80;
      }

      CCPBDataWriterWriteStringField();
    }

    else
    {
      v34 = v36;
    }

    if (waterCopy)
    {
      objc_opt_class();
      v95 = v34;
      v55 = CCValidateIsInstanceOfExpectedClass();
      v36 = v34;

      if (!v55)
      {
        goto LABEL_74;
      }

      CCPBDataWriterWriteStringField();
    }

    else
    {
      v36 = v34;
    }

    if (oceanCopy)
    {
      objc_opt_class();
      v94 = v36;
      v56 = CCValidateIsInstanceOfExpectedClass();
      v34 = v36;

      if (!v56)
      {
        goto LABEL_80;
      }

      CCPBDataWriterWriteStringField();
    }

    else
    {
      v34 = v36;
    }

    if (interestCopy)
    {
      objc_opt_class();
      v93 = v34;
      v57 = CCValidateArrayValues();
      v36 = v34;

      if (!v57)
      {
        goto LABEL_74;
      }

      v34 = v36;
      v72 = thoroughfareCopy;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v58 = interestCopy;
      v59 = [v58 countByEnumeratingWithState:&v89 objects:v111 count:16];
      if (v59)
      {
        v60 = v59;
        v61 = *v90;
        do
        {
          for (j = 0; j != v60; ++j)
          {
            if (*v90 != v61)
            {
              objc_enumerationMutation(v58);
            }

            CCPBDataWriterWriteStringField();
          }

          v60 = [v58 countByEnumeratingWithState:&v89 objects:v111 count:16];
        }

        while (v60);
      }

      thoroughfareCopy = v72;
    }

    areaCopy = v74;
    if (!islandCopy)
    {
      goto LABEL_71;
    }

    objc_opt_class();
    v63 = v34;
    v73 = CCValidateIsInstanceOfExpectedClass();
    v34 = v34;

    if (v73)
    {
      [islandCopy BOOLValue];
      CCPBDataWriterWriteBOOLField();
LABEL_71:
      if (!iso3166CountryCodeCopy)
      {
        v36 = v34;
        goto LABEL_77;
      }

      objc_opt_class();
      v64 = CCValidateIsInstanceOfExpectedClass();
      v36 = v34;

      if (v64)
      {
        CCPBDataWriterWriteStringField();
LABEL_77:
        if (!subdivisionCodeCopy)
        {
          v34 = v36;
          goto LABEL_85;
        }

        objc_opt_class();
        v65 = CCValidateIsInstanceOfExpectedClass();
        v34 = v36;

        if (v65)
        {
          CCPBDataWriterWriteStringField();
LABEL_85:
          if (!mergedThoroughfareCopy)
          {
LABEL_88:
            immutableData = [v32 immutableData];
            selfCopy3 = [(CCItemMessage *)self initWithData:immutableData error:error];

            v50 = selfCopy3;
            goto LABEL_82;
          }

          objc_opt_class();
          v67 = CCValidateIsInstanceOfExpectedClass();
          v68 = v34;

          if (v67)
          {
            CCPBDataWriterWriteStringField();
            v34 = v68;
            goto LABEL_88;
          }

          CCSetError();
          v50 = 0;
          v34 = v68;
LABEL_81:
          selfCopy3 = self;
LABEL_82:
          areaCopy = v74;
          goto LABEL_83;
        }

LABEL_80:
        CCSetError();
        v50 = 0;
        goto LABEL_81;
      }

LABEL_74:
      CCSetError();
      v50 = 0;
      v34 = v36;
      goto LABEL_81;
    }

    goto LABEL_75;
  }

  CCSetError();
  v50 = 0;
  selfCopy3 = self;
  areaCopy = v74;
  countryCopy = v47;
  v28 = v71;
LABEL_83:

  return v50;
}

@end