@interface ENRegionServerAgencyExposureNotificationConfiguration
+ (BOOL)getNotificationConfiguration:(id *)configuration fromDictionary:(id)dictionary locale:(id)locale index:(unsigned __int8)index;
- (ENRegionServerAgencyExposureNotificationConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ENRegionServerAgencyExposureNotificationConfiguration

id __114__ENRegionServerAgencyExposureNotificationConfiguration_getNotificationConfiguration_fromDictionary_locale_index___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:@"%@_%d_%@", v4, *(a1 + 48), *(a1 + 32)];

  CFStringGetTypeID();
  v6 = CFDictionaryGetTypedValue();

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  classificationName = self->_classificationName;
  coderCopy = coder;
  [coderCopy encodeObject:classificationName forKey:@"name"];
  [coderCopy encodeObject:self->_classificationURL forKey:@"URL"];
  [coderCopy encodeObject:self->_localizedExposureDetailBody forKey:@"expB"];
  [coderCopy encodeObject:self->_localizedNotificationBody forKey:@"noteB"];
  [coderCopy encodeObject:self->_localizedNotificationSubject forKey:@"noteT"];
}

+ (BOOL)getNotificationConfiguration:(id *)configuration fromDictionary:(id)dictionary locale:(id)locale index:(unsigned __int8)index
{
  indexCopy = index;
  dictionaryCopy = dictionary;
  localeCopy = locale;
  if (configuration && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    localeIdentifier = [localeCopy localeIdentifier];
    uppercaseString = [localeIdentifier uppercaseString];

    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __114__ENRegionServerAgencyExposureNotificationConfiguration_getNotificationConfiguration_fromDictionary_locale_index___block_invoke;
    v43[3] = &unk_278A4B3D8;
    v46 = indexCopy;
    v13 = uppercaseString;
    v44 = v13;
    v14 = dictionaryCopy;
    v45 = v14;
    v15 = MEMORY[0x2383EE560](v43);
    indexCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_%d", @"classificationName", indexCopy];
    CFStringGetTypeID();
    v42 = CFDictionaryGetTypedValue();
    if (v42)
    {
      indexCopy2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_%d", @"classificationURL", indexCopy];
      CFStringGetTypeID();
      v18 = CFDictionaryGetTypedValue();
      if (v18)
      {
        v19 = [MEMORY[0x277CBEBC0] URLWithString:v18];
        if (!v19)
        {
          LogInvalidValueForKey(v14, indexCopy2);
        }
      }

      else
      {
        v19 = 0;
      }

      v20 = (v15)[2](v15, @"exposureDetailsBodyText");
      if (v20)
      {
        v41 = indexCopy;
        configurationCopy = configuration;
        v22 = (v15)[2](v15, @"notificationBody");
        if (v22)
        {
          v40 = v13;
          v23 = localeCopy;
          v24 = dictionaryCopy;
          v25 = (v15)[2](v15, @"notificationSubject");
          v26 = v25 != 0;
          if (v25)
          {
            v27 = objc_alloc_init(ENRegionServerAgencyExposureNotificationConfiguration);
            v28 = [v42 copy];
            classificationName = v27->_classificationName;
            v27->_classificationName = v28;

            v30 = [v19 copy];
            classificationURL = v27->_classificationURL;
            v27->_classificationURL = v30;

            v32 = [v20 copy];
            localizedExposureDetailBody = v27->_localizedExposureDetailBody;
            v27->_localizedExposureDetailBody = v32;

            v34 = [v22 copy];
            localizedNotificationBody = v27->_localizedNotificationBody;
            v27->_localizedNotificationBody = v34;

            v36 = [v25 copy];
            localizedNotificationSubject = v27->_localizedNotificationSubject;
            v27->_localizedNotificationSubject = v36;

            v38 = v27;
            *configurationCopy = v27;

            v26 = v25 != 0;
          }

          dictionaryCopy = v24;
          localeCopy = v23;
          v13 = v40;
        }

        else
        {
          v26 = 0;
        }

        indexCopy = v41;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      *configuration = 0;
      v26 = 1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (ENRegionServerAgencyExposureNotificationConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expB"];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"noteB"];
      if (v7)
      {
        v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"noteT"];
        if (v8 && (v14.receiver = self, v14.super_class = ENRegionServerAgencyExposureNotificationConfiguration, v9 = [(ENRegionServerAgencyExposureNotificationConfiguration *)&v14 init], (self = v9) != 0))
        {
          objc_storeStrong(&v9->_classificationName, v5);
          v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
          classificationURL = self->_classificationURL;
          self->_classificationURL = v10;

          objc_storeStrong(&self->_localizedExposureDetailBody, v6);
          objc_storeStrong(&self->_localizedNotificationBody, v7);
          objc_storeStrong(&self->_localizedNotificationSubject, v8);
          self = self;
          selfCopy = self;
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end