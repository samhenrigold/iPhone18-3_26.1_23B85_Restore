@interface SKGDataDetector
+ (id)sharedDetector;
- (BOOL)enumerateAirportCodesInStringUsingGeoScanner:(id)scanner entityBlock:(id)block;
- (BOOL)enumerateDetectedDataInString:(id)string locale:(id)locale referenceDate:(id)date referenceTimezone:(id)timezone entityCategories:(id)categories entityBlock:(id)block rangeBlock:(id)rangeBlock;
- (BOOL)enumerateLocationStrings:(id)strings locale:(id)locale entityBlock:(id)block;
- (BOOL)enumerateLocationsInString:(id)string locale:(id)locale latitude:(double)latitude longitude:(double)longitude entityBlock:(id)block;
- (BOOL)loadDetector;
- (SKGDataDetector)init;
- (id)_addressFromResult:(id)result;
- (id)_callPIRWithQuery:(id)query hitError:(BOOL *)error;
- (id)_currencyFromResult:(id)result;
- (id)_dateFromResult:(id)result referenceDate:(id)date referenceTimezone:(id)timezone;
- (id)_emailAddressFromResult:(id)result;
- (id)_flightFromResult:(id)result;
- (id)_linkFromResult:(id)result;
- (id)_lookupCitiesFromLocalCacheWithString:(id)string locale:(id)locale countries:(id)countries parents:(id)parents;
- (id)_lookupCountriesFromLocalCacheWithString:(id)string locale:(id)locale;
- (id)_lookupParentsFromLocalCacheWithString:(id)string locale:(id)locale countries:(id)countries;
- (id)_phoneNumberDigitsFromResult:(id)result;
- (id)_retrieveLocationFromLocalCache:(id)cache locale:(id)locale;
- (id)_retrieveLocationFromPIR:(id)r locale:(id)locale;
- (id)_trackingNumberFromResult:(id)result;
- (id)locationFromAddress:(id)address locale:(id)locale;
- (void)_lookupExpansionsFromLocalCacheWithLocation:(id)location locale:(id)locale;
- (void)dealloc;
@end

@implementation SKGDataDetector

+ (id)sharedDetector
{
  if (sharedDetector_onceToken != -1)
  {
    +[SKGDataDetector sharedDetector];
  }

  v3 = sharedDetector_gDetector;

  return v3;
}

void __33__SKGDataDetector_sharedDetector__block_invoke()
{
  v0 = objc_alloc_init(SKGDataDetector);
  v1 = sharedDetector_gDetector;
  sharedDetector_gDetector = v0;
}

- (SKGDataDetector)init
{
  v8.receiver = self;
  v8.super_class = SKGDataDetector;
  v2 = [(SKGDataDetector *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D04228]) initWithScannerType:0 passiveIntent:1];
    config = v2->_config;
    v2->_config = v3;

    v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"-()[]"];
    punctuation = v2->_punctuation;
    v2->_punctuation = v5;
  }

  return v2;
}

- (BOOL)loadDetector
{
  mEMORY[0x277CC3410] = [MEMORY[0x277CC3410] sharedInstance];
  isSemanticSearchAvailable = [mEMORY[0x277CC3410] isSemanticSearchAvailable];

  if (isSemanticSearchAvailable && _os_feature_enabled_impl() && !self->_pirClient)
  {
    v12 = [objc_alloc(MEMORY[0x277CFA598]) initWithUseCase:@"encryptedPQAGeo"];
    v13 = [objc_alloc(MEMORY[0x277CFA5B0]) initWithClientConfig:v12];
    pirClient = self->_pirClient;
    self->_pirClient = v13;

    v5 = self->_pirClient != 0;
  }

  else
  {
    v5 = 0;
  }

  if (!self->_geoIndex)
  {
    mEMORY[0x277D657A8] = [MEMORY[0x277D657A8] sharedProcessorListener];
    geoIndexResourcesURL = [mEMORY[0x277D657A8] geoIndexResourcesURL];

    if (geoIndexResourcesURL)
    {
      self->_geoIndex = SIGeoIndexCreateWithOptions();
    }
  }

  if (!self->_geoScanner)
  {
    mEMORY[0x277D657A8]2 = [MEMORY[0x277D657A8] sharedProcessorListener];
    geoPatternsResourcesURL = [mEMORY[0x277D657A8]2 geoPatternsResourcesURL];

    if (geoPatternsResourcesURL)
    {
      v10 = DDScannerCreateWithCacheFile();
      self->_geoScanner = v10;
      if (!v10)
      {
        self->_geoScanner = 0;
      }
    }
  }

  return (self->_geoIndex != 0 || v5) && self->_geoScanner != 0;
}

- (id)_addressFromResult:(id)result
{
  resultCopy = result;
  v4 = [(SKGEntity *)[SKGAddress alloc] initWithScore:1.0];
  value = [resultCopy value];
  [(SKGAddress *)v4 setAddress:value];

  lookupAddressScore(resultCopy, v4);
  [(SKGEntity *)v4 score];
  if (v6 <= 1.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v7;
}

- (id)locationFromAddress:(id)address locale:(id)locale
{
  addressCopy = address;
  localeCopy = locale;
  v8 = [(SKGDataDetector *)self _retrieveLocationFromLocalCache:addressCopy locale:localeCopy];
  if (!v8)
  {
    v8 = [(SKGDataDetector *)self _retrieveLocationFromPIR:addressCopy locale:localeCopy];
  }

  return v8;
}

- (id)_lookupCountriesFromLocalCacheWithString:(id)string locale:(id)locale
{
  stringCopy = string;
  localeCopy = locale;
  v7 = localeCopy;
  v8 = 0;
  if (stringCopy && localeCopy)
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = __Block_byref_object_copy__15;
    v16[4] = __Block_byref_object_dispose__15;
    v17 = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__15;
    v14 = __Block_byref_object_dispose__15;
    v15 = 0;
    SIGeoIndexEnumerateGeoEntriesForString();
    v8 = v11[5];
    _Block_object_dispose(&v10, 8);

    _Block_object_dispose(v16, 8);
  }

  return v8;
}

void *__67__SKGDataDetector__lookupCountriesFromLocalCacheWithString_locale___block_invoke(void *result, double *a2, double a3)
{
  if (!*(a2 + 1) && !*(a2 + 2))
  {
    v4 = result;
    v5 = [(SKGEntity *)[SKGLocation alloc] initWithScore:a3];
    v6 = *(v4[4] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(v4[4] + 8) + 40) setGeoID:0];
    [*(*(v4[4] + 8) + 40) setParentID:0];
    [*(*(v4[4] + 8) + 40) setCountryID:*a2];
    [*(*(v4[4] + 8) + 40) setLat:a2[2]];
    [*(*(v4[4] + 8) + 40) setLng:a2[5]];
    [*(*(v4[4] + 8) + 40) setMinLat:a2[3]];
    [*(*(v4[4] + 8) + 40) setMaxLat:a2[4]];
    [*(*(v4[4] + 8) + 40) setMinLng:a2[6]];
    [*(*(v4[4] + 8) + 40) setMaxLng:a2[7]];
    v8 = *(*(v4[5] + 8) + 40);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v10 = *(v4[5] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v8 = *(*(v4[5] + 8) + 40);
    }

    v12 = *(*(v4[4] + 8) + 40);

    return [v8 addObject:v12];
  }

  return result;
}

- (id)_lookupParentsFromLocalCacheWithString:(id)string locale:(id)locale countries:(id)countries
{
  stringCopy = string;
  localeCopy = locale;
  countriesCopy = countries;
  v10 = countriesCopy;
  v11 = 0;
  if (stringCopy && localeCopy)
  {
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x3032000000;
    v20[3] = __Block_byref_object_copy__15;
    v20[4] = __Block_byref_object_dispose__15;
    v21 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__15;
    v18 = __Block_byref_object_dispose__15;
    v19 = 0;
    v13 = countriesCopy;
    SIGeoIndexEnumerateGeoEntriesForString();
    v11 = v15[5];

    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(v20, 8);
  }

  return v11;
}

void __75__SKGDataDetector__lookupParentsFromLocalCacheWithString_locale_countries___block_invoke(uint64_t a1, double *a2, double a3)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a2 + 1) || !*(a2 + 2))
  {
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }

  else
  {
    v7 = [(SKGEntity *)[SKGLocation alloc] initWithScore:a3];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    [*(*(*(a1 + 48) + 8) + 40) setGeoID:0];
    [*(*(*(a1 + 48) + 8) + 40) setParentID:*a2];
    [*(*(*(a1 + 48) + 8) + 40) setCountryID:*(a2 + 2)];
    [*(*(*(a1 + 48) + 8) + 40) setLat:a2[2]];
    [*(*(*(a1 + 48) + 8) + 40) setLng:a2[5]];
    [*(*(*(a1 + 48) + 8) + 40) setMinLat:a2[3]];
    [*(*(*(a1 + 48) + 8) + 40) setMaxLat:a2[4]];
    [*(*(*(a1 + 48) + 8) + 40) setMinLng:a2[6]];
    [*(*(*(a1 + 48) + 8) + 40) setMaxLng:a2[7]];
    if ([*(a1 + 32) count])
    {
      v27 = 0uLL;
      v28 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v10 = *(a1 + 32);
      v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v26;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [*(*(&v25 + 1) + 8 * i) countryID];
            if (v15 == [*(*(*(a1 + 48) + 8) + 40) countryID])
            {
              v16 = *(*(*(a1 + 56) + 8) + 40);
              if (!v16)
              {
                v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
                v18 = *(*(a1 + 56) + 8);
                v19 = *(v18 + 40);
                *(v18 + 40) = v17;

                v16 = *(*(*(a1 + 56) + 8) + 40);
              }

              [v16 addObject:*(*(*(a1 + 48) + 8) + 40)];
              goto LABEL_19;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

LABEL_19:
    }

    else
    {
      [*(*(*(a1 + 48) + 8) + 40) countryID];
      if (SIGeoIndexLookupEntry())
      {
        v20 = [(SKGEntity *)[SKGLocation alloc] initWithScore:1.0];
        [(SKGLocation *)v20 setGeoID:0];
        [(SKGLocation *)v20 setParentID:0];
        [(SKGLocation *)v20 setCountryID:0];
        [(SKGLocation *)v20 setLat:0.0];
        [(SKGLocation *)v20 setLng:0.0];
        [(SKGLocation *)v20 setMinLat:0.0];
        [(SKGLocation *)v20 setMaxLat:0.0];
        [(SKGLocation *)v20 setMinLng:0.0];
        [(SKGLocation *)v20 setMaxLng:0.0];
        [*(a1 + 32) addObject:v20];
      }

      v21 = *(*(*(a1 + 56) + 8) + 40);
      if (!v21)
      {
        v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v23 = *(*(a1 + 56) + 8);
        v24 = *(v23 + 40);
        *(v23 + 40) = v22;

        v21 = *(*(*(a1 + 56) + 8) + 40);
      }

      [v21 addObject:*(*(*(a1 + 48) + 8) + 40)];
    }
  }
}

- (id)_lookupCitiesFromLocalCacheWithString:(id)string locale:(id)locale countries:(id)countries parents:(id)parents
{
  stringCopy = string;
  localeCopy = locale;
  countriesCopy = countries;
  parentsCopy = parents;
  v13 = 0;
  if (stringCopy && localeCopy)
  {
    if ([countriesCopy count] || objc_msgSend(parentsCopy, "count"))
    {
      v23[0] = 0;
      v23[1] = v23;
      v23[2] = 0x3032000000;
      v23[3] = __Block_byref_object_copy__15;
      v23[4] = __Block_byref_object_dispose__15;
      v24 = 0;
      v17 = 0;
      v18 = &v17;
      v19 = 0x3032000000;
      v20 = __Block_byref_object_copy__15;
      v21 = __Block_byref_object_dispose__15;
      v22 = 0;
      v15 = parentsCopy;
      v16 = countriesCopy;
      SIGeoIndexEnumerateGeoEntriesForString();
      v13 = v18[5];

      _Block_object_dispose(&v17, 8);
      _Block_object_dispose(v23, 8);
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

void __82__SKGDataDetector__lookupCitiesFromLocalCacheWithString_locale_countries_parents___block_invoke(uint64_t a1, double *a2, double a3)
{
  v40 = *MEMORY[0x277D85DE8];
  if (*a2 && *(a2 + 1) && *(a2 + 2))
  {
    v5 = [(SKGEntity *)[SKGLocation alloc] initWithScore:a3];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(a1 + 48) + 8) + 40) setGeoID:*a2];
    [*(*(*(a1 + 48) + 8) + 40) setParentID:*(a2 + 1)];
    [*(*(*(a1 + 48) + 8) + 40) setCountryID:*(a2 + 2)];
    [*(*(*(a1 + 48) + 8) + 40) setLat:a2[2]];
    [*(*(*(a1 + 48) + 8) + 40) setLng:a2[5]];
    [*(*(*(a1 + 48) + 8) + 40) setMinLat:a2[3]];
    [*(*(*(a1 + 48) + 8) + 40) setMaxLat:a2[4]];
    [*(*(*(a1 + 48) + 8) + 40) setMinLng:a2[6]];
    [*(*(*(a1 + 48) + 8) + 40) setMaxLng:a2[7]];
    if ([*(a1 + 32) count])
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v8 = *(a1 + 32);
      v9 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v35;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v35 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v34 + 1) + 8 * i);
            v14 = [v13 countryID];
            if (v14 == [*(*(*(a1 + 48) + 8) + 40) countryID] && objc_msgSend(v13, "isParent:", *(*(*(a1 + 48) + 8) + 40)))
            {
              v26 = *(*(*(a1 + 56) + 8) + 40);
              if (!v26)
              {
                v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
                v28 = *(*(a1 + 56) + 8);
                v29 = *(v28 + 40);
                *(v28 + 40) = v27;

                v26 = *(*(*(a1 + 56) + 8) + 40);
              }

              [v26 addObject:*(*(*(a1 + 48) + 8) + 40)];
              goto LABEL_34;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      if (![*(a1 + 40) count])
      {
        return;
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v8 = *(a1 + 40);
      v17 = [v8 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v31;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v31 != v19)
            {
              objc_enumerationMutation(v8);
            }

            v21 = [*(*(&v30 + 1) + 8 * j) countryID];
            if (v21 == [*(*(*(a1 + 48) + 8) + 40) countryID])
            {
              v22 = *(*(*(a1 + 56) + 8) + 40);
              if (!v22)
              {
                v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
                v24 = *(*(a1 + 56) + 8);
                v25 = *(v24 + 40);
                *(v24 + 40) = v23;

                v22 = *(*(*(a1 + 56) + 8) + 40);
              }

              [v22 addObject:*(*(*(a1 + 48) + 8) + 40)];
            }
          }

          v18 = [v8 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v18);
      }
    }

LABEL_34:
  }

  else
  {
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = 0;
  }
}

- (void)_lookupExpansionsFromLocalCacheWithLocation:(id)location locale:(id)locale
{
  locationCopy = location;
  localeCopy = locale;
  if ([locationCopy geoID])
  {
    [locationCopy geoID];
    v9 = locationCopy;
    SIGeoIndexEnumerateGeoExpansionsForID();
  }

  if ([locationCopy parentID])
  {
    [locationCopy parentID];
    v8 = locationCopy;
    SIGeoIndexEnumerateGeoExpansionsForID();
  }

  if ([locationCopy countryID])
  {
    [locationCopy countryID];
    v7 = locationCopy;
    SIGeoIndexEnumerateGeoExpansionsForID();
  }
}

- (id)_retrieveLocationFromLocalCache:(id)cache locale:(id)locale
{
  cacheCopy = cache;
  localeCopy = locale;
  if ((_os_feature_enabled_impl() & 1) == 0 && ![(SKGDataDetector *)self forceDataDetection]|| !self->_geoIndex)
  {
    v13 = 0;
    goto LABEL_37;
  }

  country = [cacheCopy country];

  if (country)
  {
    country2 = [cacheCopy country];
    v10 = normalizedLocationString(localeCopy, country2);

    v11 = [(SKGDataDetector *)self _lookupCountriesFromLocalCacheWithString:v10 locale:localeCopy];
    if (!v11)
    {
      if ([v10 length] < 5)
      {
        v11 = 0;
      }

      else
      {
        uppercaseString = [v10 uppercaseString];
        v11 = [(SKGDataDetector *)self _lookupCountriesFromLocalCacheWithString:uppercaseString locale:localeCopy];
      }
    }

    if (![v11 count])
    {

      v25 = 0;
      v14 = 0;
      goto LABEL_22;
    }

    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    allObjects = [v11 allObjects];
    [v14 addObjectsFromArray:allObjects];
  }

  else
  {
    v14 = 0;
  }

  area = [cacheCopy area];

  if (area)
  {
    v17 = objc_autoreleasePoolPush();
    area2 = [cacheCopy area];
    v19 = normalizedLocationString(localeCopy, area2);

    v41 = v14;
    v20 = [(SKGDataDetector *)self _lookupParentsFromLocalCacheWithString:v19 locale:localeCopy countries:v14];
    if (!v20)
    {

      objc_autoreleasePoolPop(v17);
      v25 = 0;
      v32 = 0;
      v13 = 0;
      goto LABEL_36;
    }

    v21 = v20;
    v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [v21 allObjects];
    v40 = localeCopy;
    v24 = v23 = v17;
    v25 = v22;
    [v22 addObjectsFromArray:v24];

    v26 = v23;
    localeCopy = v40;
    objc_autoreleasePoolPop(v26);
    v14 = v41;
  }

  else
  {
    v25 = 0;
  }

  city = [cacheCopy city];
  v28 = (country | area) != 0;
  if (!city)
  {
    v32 = 0;
    if (!v28)
    {
      v13 = 0;
      goto LABEL_36;
    }

    goto LABEL_25;
  }

  if (country | area)
  {
    v29 = objc_autoreleasePoolPush();
    city2 = [cacheCopy city];
    v31 = normalizedLocationString(localeCopy, city2);

    v32 = [(SKGDataDetector *)self _lookupCitiesFromLocalCacheWithString:v31 locale:localeCopy countries:v14 parents:v25];
    v33 = [v32 count];

    objc_autoreleasePoolPop(v29);
    if (!v33)
    {
      goto LABEL_23;
    }

LABEL_25:
    allObjects2 = [v32 allObjects];
    v35 = [allObjects2 sortedArrayUsingComparator:&__block_literal_global_83];

    if (!v35)
    {
      allObjects3 = [v25 allObjects];
      v35 = [allObjects3 sortedArrayUsingComparator:&__block_literal_global_85];

      if (!v35)
      {
        allObjects4 = [v14 allObjects];
        v35 = [allObjects4 sortedArrayUsingComparator:&__block_literal_global_87];
      }
    }

    if ([v35 count])
    {
      firstObject = [v35 firstObject];
    }

    else
    {
      firstObject = 0;
    }

    if ([firstObject geoID])
    {
      [(SKGDataDetector *)self _lookupExpansionsFromLocalCacheWithLocation:firstObject locale:localeCopy];
      [firstObject setAddress:cacheCopy];
    }

    v13 = firstObject;

    goto LABEL_36;
  }

LABEL_22:
  v32 = 0;
LABEL_23:
  v13 = 0;
LABEL_36:

LABEL_37:

  return v13;
}

uint64_t __58__SKGDataDetector__retrieveLocationFromLocalCache_locale___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 score];
  v6 = v5;
  [v4 score];
  v8 = v7;

  if (v6 <= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t __58__SKGDataDetector__retrieveLocationFromLocalCache_locale___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 score];
  v6 = v5;
  [v4 score];
  v8 = v7;

  if (v6 <= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t __58__SKGDataDetector__retrieveLocationFromLocalCache_locale___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 score];
  v6 = v5;
  [v4 score];
  v8 = v7;

  if (v6 <= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (id)_callPIRWithQuery:(id)query hitError:(BOOL *)error
{
  queryCopy = query;
  geoList = 0;
  if (queryCopy && self->_pirClient)
  {
    v8 = dispatch_semaphore_create(0);
    v9 = dispatch_time(0, 10000000000);
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__15;
    v33 = __Block_byref_object_dispose__15;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__15;
    v27 = __Block_byref_object_dispose__15;
    v28 = 0;
    pirClient = self->_pirClient;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __46__SKGDataDetector__callPIRWithQuery_hitError___block_invoke;
    v19[3] = &unk_27893E7F0;
    v21 = &v23;
    v22 = &v29;
    v11 = v8;
    v20 = v11;
    [(CMLKeywordPIRClient *)pirClient requestDataByStringKeyword:queryCopy completionHandler:v19];
    if (dispatch_semaphore_wait(v11, v9))
    {
      NSLog(&cfstr_TimedOutWaitin.isa);
    }

    else
    {
      if (!v30[5])
      {
        v13 = objc_alloc(MEMORY[0x277D37B28]);
        v14 = [v13 initWithData:v24[5]];
        if ([v14 hasGeoList])
        {
          geoList = [v14 geoList];
        }

        else if ([v14 hasCompressedGeoList])
        {
          compressedGeoList = [v14 compressedGeoList];
          v18 = 0;
          v16 = [compressedGeoList decompressedDataUsingAlgorithm:3 error:&v18];
          v17 = v18;

          if (v17)
          {
            NSLog(&cfstr_FailedToDecomp.isa, v17);
            geoList = 0;
            *error = 1;
          }

          else
          {
            geoList = [objc_alloc(MEMORY[0x277D37B30]) initWithData:v16];
          }
        }

        else
        {
          geoList = 0;
        }

        goto LABEL_8;
      }

      NSLog(&cfstr_FailedToQueryP.isa, v30[5]);
    }

    geoList = 0;
    *error = 1;
LABEL_8:

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v29, 8);
  }

  return geoList;
}

void __46__SKGDataDetector__callPIRWithQuery_hitError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_retrieveLocationFromPIR:(id)r locale:(id)locale
{
  v168 = *MEMORY[0x277D85DE8];
  rCopy = r;
  localeCopy = locale;
  mEMORY[0x277D657A8] = [MEMORY[0x277D657A8] sharedClientListener];
  parsecIsEnabled = [mEMORY[0x277D657A8] parsecIsEnabled];

  v110 = rCopy;
  firstObject2 = 0;
  if (!parsecIsEnabled)
  {
    goto LABEL_133;
  }

  if (!rCopy)
  {
    v10 = 0;
    goto LABEL_134;
  }

  v10 = 0;
  if (!self->_pirClient)
  {
    goto LABEL_134;
  }

  v108 = objc_autoreleasePoolPush();
  v158 = 0;
  country = [rCopy country];

  if (country)
  {
    country2 = [rCopy country];
    v13 = normalizedLocationString(localeCopy, country2);

    v14 = [(SKGDataDetector *)self _callPIRWithQuery:v13 hitError:&v158];
    v15 = convertGeoListToLocations(v14, @"Country");
    v16 = [v15 count];

    if (!v16)
    {
      v17 = 0;
      goto LABEL_54;
    }
  }

  else
  {
    v15 = 0;
  }

  v18 = v110;
  area = [v110 area];

  v119 = v15;
  selfCopy = self;
  if (area)
  {
    v20 = objc_autoreleasePoolPush();
    area2 = [v110 area];
    v22 = normalizedLocationString(localeCopy, area2);

    v23 = [(SKGDataDetector *)self _callPIRWithQuery:v22 hitError:&v158];
    v24 = convertGeoListToLocations(v23, @"State");
    v104 = v22;
    context = v20;
    v101 = [v24 count];
    v102 = v23;
    v100 = v24;
    if (v101)
    {
      v156 = 0u;
      v157 = 0u;
      v154 = 0u;
      v155 = 0u;
      obj = v24;
      v117 = [obj countByEnumeratingWithState:&v154 objects:v167 count:{16, v24}];
      v17 = 0;
      if (v117)
      {
        v115 = *v155;
        do
        {
          for (i = 0; i != v117; ++i)
          {
            if (*v155 != v115)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v154 + 1) + 8 * i);
            v150 = 0u;
            v151 = 0u;
            v152 = 0u;
            v153 = 0u;
            v124 = v15;
            v27 = [v124 countByEnumeratingWithState:&v150 objects:v166 count:16];
            if (v27)
            {
              v28 = v27;
              v120 = i;
              v122 = v17;
              v29 = *v151;
              while (2)
              {
                for (j = 0; j != v28; ++j)
                {
                  if (*v151 != v29)
                  {
                    objc_enumerationMutation(v124);
                  }

                  v31 = *(*(&v150 + 1) + 8 * j);
                  address = [v26 address];
                  countryCode = [address countryCode];
                  v34 = countryCode;
                  if (countryCode)
                  {
                    country3 = countryCode;
                  }

                  else
                  {
                    address2 = [v26 address];
                    country3 = [address2 country];
                  }

                  address3 = [v31 address];
                  countryCode2 = [address3 countryCode];
                  v39 = countryCode2;
                  if (countryCode2)
                  {
                    country4 = countryCode2;
                  }

                  else
                  {
                    address4 = [v31 address];
                    country4 = [address4 country];
                  }

                  if (country3 && country4 && [country3 isEqualToString:country4])
                  {
                    v148 = 0u;
                    v149 = 0u;
                    v146 = 0u;
                    v147 = 0u;
                    expansions = [v31 expansions];
                    v43 = [expansions countByEnumeratingWithState:&v146 objects:v165 count:16];
                    v17 = v122;
                    if (v43)
                    {
                      v44 = v43;
                      v45 = *v147;
                      do
                      {
                        for (k = 0; k != v44; ++k)
                        {
                          if (*v147 != v45)
                          {
                            objc_enumerationMutation(expansions);
                          }

                          [v26 addExpansion:*(*(&v146 + 1) + 8 * k)];
                        }

                        v44 = [expansions countByEnumeratingWithState:&v146 objects:v165 count:16];
                      }

                      while (v44);
                    }

                    if (!v122)
                    {
                      v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
                    }

                    [v17 addObject:v26];

                    v15 = v119;
                    goto LABEL_43;
                  }
                }

                v28 = [v124 countByEnumeratingWithState:&v150 objects:v166 count:16];
                if (v28)
                {
                  continue;
                }

                break;
              }

              v15 = v119;
              v17 = v122;
LABEL_43:
              i = v120;
            }
          }

          v117 = [obj countByEnumeratingWithState:&v154 objects:v167 count:16];
        }

        while (v117);
      }
    }

    else
    {
      v17 = 0;
    }

    objc_autoreleasePoolPop(context);
    if (!v101)
    {
LABEL_54:
      v50 = 0;
      v51 = 0;
      firstObject2 = 0;
      goto LABEL_131;
    }

    v18 = v110;
  }

  else
  {
    v17 = 0;
  }

  city = [v18 city];
  if (!city)
  {
    goto LABEL_124;
  }

  v48 = city;
  area3 = [v18 area];
  if (area3)
  {
  }

  else
  {
    country5 = [v18 country];

    if (!country5)
    {
      v50 = 0;
      goto LABEL_125;
    }
  }

  contexta = objc_autoreleasePoolPush();
  city2 = [v110 city];
  v54 = normalizedLocationString(localeCopy, city2);

  v105 = v54;
  v103 = [(SKGDataDetector *)selfCopy _callPIRWithQuery:v54 hitError:&v158];
  convertGeoListToLocations(v103, @"City");
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v112 = v145 = 0u;
  v118 = [v112 countByEnumeratingWithState:&v142 objects:v164 count:16];
  if (!v118)
  {
    v116 = 0;
    goto LABEL_121;
  }

  obja = *v143;
  v116 = 0;
  v123 = v17;
  do
  {
    for (m = 0; m != v118; ++m)
    {
      if (*v143 != obja)
      {
        objc_enumerationMutation(v112);
      }

      v56 = *(*(&v142 + 1) + 8 * m);
      if ([v17 count])
      {
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v125 = v17;
        v57 = [v125 countByEnumeratingWithState:&v138 objects:v163 count:16];
        if (v57)
        {
          v58 = v57;
          v121 = m;
          v59 = *v139;
          while (2)
          {
            for (n = 0; n != v58; ++n)
            {
              if (*v139 != v59)
              {
                objc_enumerationMutation(v125);
              }

              v61 = *(*(&v138 + 1) + 8 * n);
              address5 = [v56 address];
              areaCode = [address5 areaCode];
              v64 = areaCode;
              if (areaCode)
              {
                area4 = areaCode;
              }

              else
              {
                address6 = [v56 address];
                area4 = [address6 area];
              }

              address7 = [v61 address];
              areaCode2 = [address7 areaCode];
              v69 = areaCode2;
              if (areaCode2)
              {
                area5 = areaCode2;
              }

              else
              {
                address8 = [v61 address];
                area5 = [address8 area];
              }

              if (area4 && area5 && [area4 isEqualToString:area5])
              {
                v136 = 0u;
                v137 = 0u;
                v134 = 0u;
                v135 = 0u;
                expansions2 = [v61 expansions];
                v86 = [expansions2 countByEnumeratingWithState:&v134 objects:v162 count:16];
                v17 = v123;
                if (v86)
                {
                  v87 = v86;
                  v88 = *v135;
                  do
                  {
                    for (ii = 0; ii != v87; ++ii)
                    {
                      if (*v135 != v88)
                      {
                        objc_enumerationMutation(expansions2);
                      }

                      [v56 addExpansion:*(*(&v134 + 1) + 8 * ii)];
                    }

                    v87 = [expansions2 countByEnumeratingWithState:&v134 objects:v162 count:16];
                  }

                  while (v87);
                }

                goto LABEL_112;
              }
            }

            v58 = [v125 countByEnumeratingWithState:&v138 objects:v163 count:16];
            if (v58)
            {
              continue;
            }

            break;
          }

LABEL_96:
          v15 = v119;
          v17 = v123;
LABEL_115:
          m = v121;
        }
      }

      else
      {
        if (![v15 count])
        {
          continue;
        }

        v132 = 0u;
        v133 = 0u;
        v130 = 0u;
        v131 = 0u;
        v125 = v15;
        v72 = [v125 countByEnumeratingWithState:&v130 objects:v161 count:16];
        if (v72)
        {
          v73 = v72;
          v121 = m;
          v74 = *v131;
          while (2)
          {
            for (jj = 0; jj != v73; ++jj)
            {
              if (*v131 != v74)
              {
                objc_enumerationMutation(v125);
              }

              v76 = *(*(&v130 + 1) + 8 * jj);
              address9 = [v56 address];
              countryCode3 = [address9 countryCode];
              v79 = countryCode3;
              if (countryCode3)
              {
                area4 = countryCode3;
              }

              else
              {
                address10 = [v56 address];
                area4 = [address10 country];
              }

              address11 = [v76 address];
              countryCode4 = [address11 countryCode];
              v83 = countryCode4;
              if (countryCode4)
              {
                area5 = countryCode4;
              }

              else
              {
                address12 = [v76 address];
                area5 = [address12 country];
              }

              if (area4 && area5 && [area4 isEqualToString:area5])
              {
                v128 = 0u;
                v129 = 0u;
                v126 = 0u;
                v127 = 0u;
                expansions2 = [v76 expansions];
                v90 = [expansions2 countByEnumeratingWithState:&v126 objects:v160 count:16];
                v17 = v123;
                if (v90)
                {
                  v91 = v90;
                  v92 = *v127;
                  do
                  {
                    for (kk = 0; kk != v91; ++kk)
                    {
                      if (*v127 != v92)
                      {
                        objc_enumerationMutation(expansions2);
                      }

                      [v56 addExpansion:*(*(&v126 + 1) + 8 * kk)];
                    }

                    v91 = [expansions2 countByEnumeratingWithState:&v126 objects:v160 count:16];
                  }

                  while (v91);
                }

LABEL_112:

                v94 = v116;
                if (!v116)
                {
                  v94 = objc_alloc_init(MEMORY[0x277CBEB58]);
                }

                v116 = v94;
                [v94 addObject:v56];

                v15 = v119;
                goto LABEL_115;
              }
            }

            v73 = [v125 countByEnumeratingWithState:&v130 objects:v161 count:16];
            if (v73)
            {
              continue;
            }

            goto LABEL_96;
          }
        }
      }
    }

    v118 = [v112 countByEnumeratingWithState:&v142 objects:v164 count:16];
  }

  while (v118);
LABEL_121:

  objc_autoreleasePoolPop(contexta);
  if (v116)
  {
    allObjects = [v116 allObjects];
    country5 = [allObjects sortedArrayUsingComparator:&__block_literal_global_110];

    v50 = v116;
    if (country5)
    {
      goto LABEL_127;
    }

    goto LABEL_125;
  }

LABEL_124:
  v50 = 0;
  country5 = 0;
LABEL_125:
  if (v17)
  {
    allObjects2 = [v17 allObjects];
    country5 = [allObjects2 sortedArrayUsingComparator:&__block_literal_global_112];
  }

LABEL_127:
  if (!country5 && v15)
  {
    v97 = [v15 sortedArrayUsingComparator:&__block_literal_global_114];
    firstObject = [v97 firstObject];
    v159 = firstObject;
    country5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v159 count:1];
  }

  firstObject2 = [country5 firstObject];
  [firstObject2 setHitPIRError:v158];

  v51 = 1;
LABEL_131:

  objc_autoreleasePoolPop(v108);
  if (v51)
  {
    [firstObject2 setAddress:v110];
    firstObject2 = firstObject2;
    v10 = firstObject2;
    goto LABEL_134;
  }

LABEL_133:
  v10 = 0;
LABEL_134:

  return v10;
}

uint64_t __51__SKGDataDetector__retrieveLocationFromPIR_locale___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 score];
  v6 = v5;
  [v4 score];
  v8 = v7;

  if (v6 <= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t __51__SKGDataDetector__retrieveLocationFromPIR_locale___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 score];
  v6 = v5;
  [v4 score];
  v8 = v7;

  if (v6 <= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t __51__SKGDataDetector__retrieveLocationFromPIR_locale___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 score];
  v6 = v5;
  [v4 score];
  v8 = v7;

  if (v6 <= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (id)_dateFromResult:(id)result referenceDate:(id)date referenceTimezone:(id)timezone
{
  resultCopy = result;
  dateCopy = date;
  timezoneCopy = timezone;
  v18 = 1.0;
  v17 = 0;
  type = [resultCopy type];
  v11 = [type hasPrefix:@"Date"];

  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = [resultCopy dateFromReferenceDate:dateCopy referenceTimezone:timezoneCopy timezoneRef:0 allDayRef:&v17];
  v13 = v12;
  if (v17 == 1)
  {
    v18 = 2.0;
  }

  if (v12)
  {
    lookupDateScore(resultCopy, &v18);
    v14 = [SKGDate alloc];
    v15 = [(SKGEntity *)v14 initWithScore:v18];
    [(SKGDate *)v15 setDate:v13];
  }

  else
  {
LABEL_6:
    v15 = 0;
  }

  return v15;
}

- (id)_emailAddressFromResult:(id)result
{
  v11 = 0;
  v12 = 0;
  v3 = [result getMailValue:&v12 label:&v11];
  v4 = v12;
  v5 = v11;
  v6 = 0;
  if (v3)
  {
    v6 = [(SKGEntity *)[SKGEmailAddress alloc] initWithScore:1.0];
    lowercaseString = [v4 lowercaseString];
    [(SKGEmailAddress *)v6 setEmail:lowercaseString];

    email = [(SKGEmailAddress *)v6 email];
    v9 = [email componentsSeparatedByString:@"@"];
    [(SKGEmailAddress *)v6 setComponents:v9];
  }

  return v6;
}

- (id)_phoneNumberDigitsFromResult:(id)result
{
  v26[1] = *MEMORY[0x277D85DE8];
  v24 = 0;
  v25 = 0;
  v4 = [result getPhoneValue:&v25 label:&v24];
  v5 = v25;
  v6 = v24;
  v7 = 0;
  if (v4)
  {
    v8 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v5];
    if (v8)
    {
      if (v6)
      {
        if ([v6 isEqualToString:@"Other"])
        {
          v9 = 1.0;
        }

        else
        {
          v9 = 2.0;
        }
      }

      else
      {
        v9 = 1.0;
      }

      countryCode = [v8 countryCode];
      if (countryCode)
      {
        v11 = MEMORY[0x277CBDB70];
        countryCode2 = [v8 countryCode];
        v13 = [v11 dialingCodeForISOCountryCode:countryCode2];
      }

      else
      {
        v13 = 0;
      }

      unformattedInternationalStringValue = [v8 unformattedInternationalStringValue];
      v15 = [unformattedInternationalStringValue stringByRemovingCharactersFromSet:self->_punctuation];

      stringByRemovingWhitespace = [v15 stringByRemovingWhitespace];

      v17 = 0;
      v18 = 0x7FFFFFFFFFFFFFFFLL;
      if (v13 && stringByRemovingWhitespace)
      {
        v18 = [stringByRemovingWhitespace rangeOfString:v13];
      }

      if (v18 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = stringByRemovingWhitespace;
      }

      else
      {
        v19 = [stringByRemovingWhitespace stringByReplacingOccurrencesOfString:v13 withString:&stru_2846CE8D8 options:8 range:{v18, v17}];
      }

      v20 = v19;
      v7 = [(SKGEntity *)[SKGPhoneNumber alloc] initWithScore:v9];
      v21 = [v13 stringByReplacingOccurrencesOfString:@"+" withString:&stru_2846CE8D8];
      -[SKGPhoneNumber setCountryCodeValue:](v7, "setCountryCodeValue:", [v21 integerValue]);

      [(SKGPhoneNumber *)v7 setPhoneNumberValue:stringByRemovingWhitespace];
      if (v20)
      {
        v26[0] = v20;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
        [(SKGPhoneNumber *)v7 setSynonyms:v22];
      }

      else
      {
        [(SKGPhoneNumber *)v7 setSynonyms:0];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_flightFromResult:(id)result
{
  resultCopy = result;
  v11 = 0;
  v12 = 0;
  v4 = [resultCopy getFlightNumber:&v12 airline:&v11];
  v5 = v12;
  v6 = v11;
  v7 = 0;
  if (v4)
  {
    v7 = [(SKGEntity *)[SKGFlight alloc] initWithScore:1.0];
    value = [resultCopy value];
    [(SKGFlight *)v7 setFlight:value];

    if (v5)
    {
      if (v6)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v6, v5];
        [(SKGFlight *)v7 addComponent:v9];
      }
    }
  }

  return v7;
}

- (id)_linkFromResult:(id)result
{
  resultCopy = result;
  type = [resultCopy type];
  v5 = [&unk_2846E81A8 containsObject:type];

  if (v5)
  {
    v6 = MEMORY[0x277CBEBC0];
    value = [resultCopy value];
    v8 = [v6 URLWithString:value];

    host = [v8 host];

    if (host)
    {
      type2 = [resultCopy type];
      if ([type2 isEqualToString:@"HttpURL"])
      {
        v11 = 2.0;
      }

      else
      {
        v11 = 1.0;
      }

      v12 = [SKGLink alloc];
      value2 = [resultCopy value];
      host = -[SKGEntity initWithScore:](v12, "initWithScore:", v11 + [value2 length]);

      value3 = [resultCopy value];
      lowercaseString = [value3 lowercaseString];
      [(SKGLink *)host setLink:lowercaseString];

      host2 = [v8 host];
      lowercaseString2 = [host2 lowercaseString];
      [(SKGLink *)host setDomain:lowercaseString2];
    }
  }

  else
  {
    host = 0;
  }

  return host;
}

- (id)_trackingNumberFromResult:(id)result
{
  v10 = 0;
  v11 = 0;
  v3 = [result getTrackingNumber:&v11 carrier:&v10];
  v4 = v11;
  v5 = v10;
  v6 = v5;
  if (!v3 || (v4 ? (v7 = v5 == 0) : (v7 = 1), v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = [(SKGEntity *)[SKGTrackingNumber alloc] initWithScore:1.0];
    [(SKGTrackingNumber *)v8 setTrackingNumber:v4];
    [(SKGTrackingNumber *)v8 setCarrier:v6];
  }

  return v8;
}

- (id)_currencyFromResult:(id)result
{
  resultCopy = result;
  v12 = 0;
  v13 = 0.0;
  v4 = [resultCopy getMoneyAmount:&v13 currency:&v12];
  v5 = v12;
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    CurrencyCode = SICurrenciesGetCurrencyCode();
    if (CurrencyCode)
    {
      v9 = CurrencyCode;
      v7 = [(SKGEntity *)[SKGCurrency alloc] initWithScore:1.0];
      value = [resultCopy value];
      [(SKGCurrency *)v7 setAmount:value];

      [(SKGCurrency *)v7 setValue:v13];
      [(SKGCurrency *)v7 setCode:v9];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)enumerateDetectedDataInString:(id)string locale:(id)locale referenceDate:(id)date referenceTimezone:(id)timezone entityCategories:(id)categories entityBlock:(id)block rangeBlock:(id)rangeBlock
{
  v63 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  localeCopy = locale;
  dateCopy = date;
  timezoneCopy = timezone;
  categoriesCopy = categories;
  blockCopy = block;
  rangeBlockCopy = rangeBlock;
  if (!stringCopy || ![stringCopy length])
  {
    v46 = 1;
    goto LABEL_55;
  }

  v52 = timezoneCopy;
  v53 = dateCopy;
  v51 = localeCopy;
  [(SKGDataDetector *)self loadDetector];
  v61 = 0;
  context = objc_autoreleasePoolPush();
  v50 = stringCopy;
  [MEMORY[0x277D04220] scanString:stringCopy range:0 configuration:{objc_msgSend(stringCopy, "length"), self->_config}];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v20 = v60 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (!v21)
  {
    goto LABEL_53;
  }

  v22 = v21;
  v23 = *v58;
  v54 = v20;
  do
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v58 != v23)
      {
        objc_enumerationMutation(v20);
      }

      v25 = *(*(&v57 + 1) + 8 * i);
      if ([v25 category] == 4)
      {
        if (blockCopy && [categoriesCopy containsObject:&unk_2846E7BA8])
        {
          v26 = objc_autoreleasePoolPush();
          v27 = [(SKGDataDetector *)self _dateFromResult:v25 referenceDate:v53 referenceTimezone:v52];
          goto LABEL_12;
        }
      }

      else if ([v25 category] == 1)
      {
        if (blockCopy && [categoriesCopy containsObject:&unk_2846E7B60])
        {
          v26 = objc_autoreleasePoolPush();
          type = [v25 type];
          v30 = [type containsString:@"Email"];

          if (v30)
          {
            [(SKGDataDetector *)self _emailAddressFromResult:v25];
          }

          else
          {
            [(SKGDataDetector *)self _linkFromResult:v25];
          }
          v27 = ;
LABEL_12:
          v28 = v27;
          if (v27)
          {
            blockCopy[2](blockCopy, v27, &v61);
          }

          objc_autoreleasePoolPop(v26);
          v20 = v54;
        }
      }

      else if ([v25 category] == 2)
      {
        if (blockCopy && [categoriesCopy containsObject:&unk_2846E7B78])
        {
          v26 = objc_autoreleasePoolPush();
          v27 = [(SKGDataDetector *)self _phoneNumberDigitsFromResult:v25];
          goto LABEL_12;
        }
      }

      else
      {
        if ([v25 category] == 3)
        {
          if (blockCopy && [categoriesCopy containsObject:&unk_2846E7B90])
          {
            v31 = objc_autoreleasePoolPush();
            v32 = [(SKGDataDetector *)self _addressFromResult:v25];
            if (v32)
            {
              v33 = v31;
              if (v51 && ([(SKGDataDetector *)self locationFromAddress:v32 locale:?], (v34 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v35 = v34;
                blockCopy[2](blockCopy, v34, &v61);
              }

              else
              {
                blockCopy[2](blockCopy, v32, &v61);
              }

              v31 = v33;
            }

            v41 = v61;

            objc_autoreleasePoolPop(v31);
            v20 = v54;
            if (v41)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_49;
        }

        if ([v25 category] == 6)
        {
          if (blockCopy && [categoriesCopy containsObject:&unk_2846E7BD8])
          {
            v26 = objc_autoreleasePoolPush();
            v27 = [(SKGDataDetector *)self _currencyFromResult:v25];
            goto LABEL_12;
          }
        }

        else
        {
          if ([v25 category] != 5)
          {
            goto LABEL_50;
          }

          if (blockCopy && [categoriesCopy containsObject:&unk_2846E7BC0])
          {
            v26 = objc_autoreleasePoolPush();
            [v25 coreResult];
            if ((DDResultHasType() & 1) != 0 || ([v25 coreResult], DDResultHasType()))
            {
              v36 = objc_autoreleasePoolPush();
              v37 = [(SKGDataDetector *)self _flightFromResult:v25];
              if (v37)
              {
                blockCopy[2](blockCopy, v37, &v61);
              }

              objc_autoreleasePoolPop(v36);
              range = [v25 range];
              v39 = v38;
              type2 = [v25 type];
              rangeBlockCopy[2](rangeBlockCopy, range, v39, type2, &v61);
            }

            v27 = [(SKGDataDetector *)self _trackingNumberFromResult:v25];
            goto LABEL_12;
          }
        }
      }

LABEL_49:
      range2 = [v25 range];
      v44 = v43;
      type3 = [v25 type];
      rangeBlockCopy[2](rangeBlockCopy, range2, v44, type3, &v61);

LABEL_50:
      if (v61)
      {
        goto LABEL_53;
      }
    }

    v22 = [v20 countByEnumeratingWithState:&v57 objects:v62 count:16];
  }

  while (v22);
LABEL_53:

  objc_autoreleasePoolPop(context);
  v46 = v61 ^ 1;
  stringCopy = v50;
  localeCopy = v51;
  timezoneCopy = v52;
  dateCopy = v53;
LABEL_55:

  return v46 & 1;
}

- (BOOL)enumerateAirportCodesInStringUsingGeoScanner:(id)scanner entityBlock:(id)block
{
  v72 = *MEMORY[0x277D85DE8];
  scannerCopy = scanner;
  blockCopy = block;
  v70 = 0;
  v8 = 1;
  v63 = blockCopy;
  if (blockCopy)
  {
    if (self->_geoScanner)
    {
      if (DDScannerScanString())
      {
        v9 = DDScannerCopyResultsWithOptions();
        if (v9)
        {
          v10 = v9;
          selfCopy = self;
          v59 = scannerCopy;
          v57 = objc_autoreleasePoolPush();
          Count = CFArrayGetCount(v10);
          v56[1] = v56;
          MEMORY[0x28223BE20](Count);
          v13 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v13, v12);
          v58 = v10;
          v73.location = 0;
          v73.length = Count;
          v64 = v13;
          CFArrayGetValues(v10, v73, v13);
          v61 = Count;
          if (Count < 1)
          {
            array = 0;
          }

          else
          {
            array = 0;
            v15 = 0;
            do
            {
              Type = DDResultGetType();
              if (CFStringHasSuffix(Type, @"AirportCode"))
              {
                v17 = [(SKGEntity *)[SKGNamedLocation alloc] initWithScore:1.0];
                v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", DDResultGetMatchedString()];
                uppercaseString = [v18 uppercaseString];
                [(SKGNamedLocation *)v17 setLocation:uppercaseString];

                (*(v63 + 2))(v63, v17, &v70);
                if (!array)
                {
                  array = [MEMORY[0x277CBEB18] array];
                }

                location = [(SKGNamedLocation *)v17 location];
                [array addObject:location];

                v21 = v70;
                if (v21)
                {
                  break;
                }
              }

              SubResults = DDResultGetSubResults();
              if (SubResults)
              {
                v23 = SubResults;
                v24 = CFArrayGetCount(SubResults);
                if (v24)
                {
                  v25 = v24;
                  v26 = array;
                  v60 = v56;
                  MEMORY[0x28223BE20](v24);
                  v28 = v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
                  bzero(v28, v27);
                  v74.location = 0;
                  v74.length = v25;
                  CFArrayGetValues(v23, v74, v28);
                  if (v25 >= 1)
                  {
                    do
                    {
                      v29 = DDResultGetType();
                      if (CFStringHasSuffix(v29, @"AirportCode"))
                      {
                        v30 = [(SKGEntity *)[SKGNamedLocation alloc] initWithScore:2.0];
                        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", DDResultGetMatchedString()];
                        uppercaseString2 = [v31 uppercaseString];
                        [(SKGNamedLocation *)v30 setLocation:uppercaseString2];

                        (*(v63 + 2))(v63, v30, &v70);
                        array2 = v26;
                        if (!v26)
                        {
                          array2 = [MEMORY[0x277CBEB18] array];
                        }

                        location2 = [(SKGNamedLocation *)v30 location];
                        v26 = array2;
                        [array2 addObject:location2];

                        v35 = v70;
                        if (v35)
                        {
                          break;
                        }
                      }

                      v28 += 8;
                      --v25;
                    }

                    while (v25);
                  }

                  array = v26;
                }
              }

              if (v70)
              {
                break;
              }

              ++v15;
            }

            while (v15 != v61);
          }

          objc_autoreleasePoolPop(v57);
          CFRelease(v58);
          if (array)
          {
            v69 = 0;
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v60 = array;
            v64 = array;
            v36 = [v64 countByEnumeratingWithState:&v65 objects:v71 count:16];
            v37 = selfCopy;
            if (v36)
            {
              v38 = v36;
              v39 = *v66;
              v61 = v63 + 16;
              v40 = 1;
              do
              {
                for (i = 0; i != v38; ++i)
                {
                  if (*v66 != v39)
                  {
                    objc_enumerationMutation(v64);
                  }

                  v42 = *(*(&v65 + 1) + 8 * i);
                  lowercaseString = [v42 lowercaseString];
                  v44 = [(SKGDataDetector *)v37 _callPIRWithQuery:lowercaseString hitError:&v69];

                  if (v44)
                  {
                    v45 = convertGeoListToLocations(v44, @"transportation.airport");
                    if ([v45 count])
                    {
                      firstObject = [v45 firstObject];
                      [firstObject setHitPIRError:v69];
                      v47 = [(SKGEntity *)[SKGAirportLocation alloc] initWithScore:2.0];
                      [(SKGAirportLocation *)v47 setAirportCode:v42];
                      address = [firstObject address];
                      area = [address area];
                      [(SKGAirportLocation *)v47 setAirportRegion:area];

                      address2 = [firstObject address];
                      city = [address2 city];
                      [(SKGAirportLocation *)v47 setAirportLocality:city];

                      address3 = [firstObject address];
                      country = [address3 country];
                      [(SKGAirportLocation *)v47 setAirportCountry:country];

                      [(SKGAirportLocation *)v47 setIsDepartureAirport:v40 & 1];
                      v54 = v63;
                      (*(v63 + 2))(v63, v47, &v70);
                      (*(v54 + 2))(v54, firstObject, &v70);

                      v37 = selfCopy;
                      v40 = 0;
                    }
                  }
                }

                v38 = [v64 countByEnumeratingWithState:&v65 objects:v71 count:16];
              }

              while (v38);
            }

            array = v60;
          }

          v8 = v70 ^ 1;
          scannerCopy = v59;
        }
      }
    }
  }

  return v8 & 1;
}

- (BOOL)enumerateLocationsInString:(id)string locale:(id)locale latitude:(double)latitude longitude:(double)longitude entityBlock:(id)block
{
  stringCopy = string;
  localeCopy = locale;
  blockCopy = block;
  if (stringCopy && [stringCopy length])
  {
    v15 = [stringCopy length];
    v16 = 1;
    if (blockCopy)
    {
      if (v15 <= 0x64)
      {
        v29 = 0;
        [(SKGDataDetector *)self loadDetector];
        if (self->_geoIndex)
        {
          v17 = normalizedLocationString(localeCopy, stringCopy);
          if (v17)
          {
            v18 = v17;
            v23 = 0;
            v24 = &v23;
            v25 = 0x3032000000;
            v26 = __Block_byref_object_copy__15;
            v27 = __Block_byref_object_dispose__15;
            v28 = 0;
            v21 = MEMORY[0x277D85DD0];
            v22 = stringCopy;
            SIGeoIndexEnumerateGeoIDForString();
            v19 = v24[5];
            if (v19)
            {
              [(SKGDataDetector *)self _lookupExpansionsFromLocalCacheWithLocation:v19 locale:localeCopy, v21, 3221225472, __84__SKGDataDetector_enumerateLocationsInString_locale_latitude_longitude_entityBlock___block_invoke, &unk_27893E818, self, v22, &v23, *&latitude, *&longitude];
              blockCopy[2](blockCopy, v24[5], &v29);
            }

            _Block_object_dispose(&v23, 8);
            v16 = v29 ^ 1;
          }
        }
      }
    }
  }

  else
  {
    v16 = 1;
  }

  return v16 & 1;
}

void __84__SKGDataDetector_enumerateLocationsInString_locale_latitude_longitude_entityBlock___block_invoke(uint64_t a1, uint64_t a2, double a3)
{
  v17 = 0;
  if (SIGeoIndexLookupEntry())
  {
    v5 = *(*(*(a1 + 48) + 8) + 40);
    if (v5)
    {
      v6 = *(a1 + 56);
    }

    else
    {
      v6 = *(a1 + 56);
      if (round(0.0) == round(v6) && round(0.0) == round(*(a1 + 64)))
      {
        goto LABEL_9;
      }
    }

    v7 = 0.0 - v6;
    [v5 lat];
    if (v7 >= 0.0 - v8)
    {
      return;
    }

    v9 = 0.0 - *(a1 + 64);
    [*(*(*(a1 + 48) + 8) + 40) lng];
    if (v9 >= 0.0 - v10)
    {
      return;
    }

LABEL_9:
    v11 = [(SKGEntity *)[SKGLocation alloc] initWithScore:a3];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    [*(*(*(a1 + 48) + 8) + 40) setGeoID:v17];
    [*(*(*(a1 + 48) + 8) + 40) setParentID:HIDWORD(v17)];
    [*(*(*(a1 + 48) + 8) + 40) setCountryID:0];
    [*(*(*(a1 + 48) + 8) + 40) setLat:0.0];
    [*(*(*(a1 + 48) + 8) + 40) setLng:0.0];
    v14 = [(SKGEntity *)[SKGAddress alloc] initWithScore:1.0];
    [*(*(*(a1 + 48) + 8) + 40) setAddress:v14];

    v15 = *(a1 + 40);
    v16 = [*(*(*(a1 + 48) + 8) + 40) address];
    [v16 setAddress:v15];
  }
}

- (BOOL)enumerateLocationStrings:(id)strings locale:(id)locale entityBlock:(id)block
{
  stringsCopy = strings;
  localeCopy = locale;
  blockCopy = block;
  if (stringsCopy)
  {
    v11 = [stringsCopy length];
    v12 = 1;
    if (blockCopy)
    {
      if (v11)
      {
        v17 = 0;
        [(SKGDataDetector *)self loadDetector];
        if (self->_geoIndex)
        {
          v13 = normalizedLocationString(localeCopy, stringsCopy);
          if (v13 && SIGeoIndexContainsStringKeyForLocale())
          {
            v14 = [(SKGEntity *)[SKGNamedLocation alloc] initWithScore:1.0];
            localizedLowercaseString = [stringsCopy localizedLowercaseString];
            [(SKGNamedLocation *)v14 setLocation:localizedLowercaseString];

            blockCopy[2](blockCopy, v14, &v17);
          }

          v12 = v17 ^ 1;
        }
      }
    }
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

- (void)dealloc
{
  if (self->_geoIndex)
  {
    SIGeoIndexRelease();
  }

  geoScanner = self->_geoScanner;
  if (geoScanner)
  {
    CFRelease(geoScanner);
  }

  v4.receiver = self;
  v4.super_class = SKGDataDetector;
  [(SKGDataDetector *)&v4 dealloc];
}

@end