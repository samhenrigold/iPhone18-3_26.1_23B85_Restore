@interface _LTLocaleModalities
- (_LTLocaleModalities)initWithCoder:(id)coder;
- (_LTLocaleModalities)initWithModalitiesPerLocale:(id)locale;
- (_LTLocaleModalities)initWithSupportedLocales:(id)locales asrLocales:(id)asrLocales ttsLocales:(id)ttsLocales;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)modalitiesForLocale:(id)locale;
@end

@implementation _LTLocaleModalities

- (_LTLocaleModalities)initWithSupportedLocales:(id)locales asrLocales:(id)asrLocales ttsLocales:(id)ttsLocales
{
  v65 = *MEMORY[0x277D85DE8];
  localesCopy = locales;
  asrLocalesCopy = asrLocales;
  ttsLocalesCopy = ttsLocales;
  v59.receiver = self;
  v59.super_class = _LTLocaleModalities;
  v11 = [(_LTLocaleModalities *)&v59 init];
  v12 = v11;
  if (v11)
  {
    v46 = ttsLocalesCopy;
    v43 = v11;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v14 = localesCopy;
    v15 = [v14 countByEnumeratingWithState:&v55 objects:v64 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v56;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v56 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [dictionary setObject:&unk_284DC9990 forKeyedSubscript:*(*(&v55 + 1) + 8 * i)];
        }

        v16 = [v14 countByEnumeratingWithState:&v55 objects:v64 count:16];
      }

      while (v16);
    }

    v45 = localesCopy;

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v44 = asrLocalesCopy;
    v19 = asrLocalesCopy;
    v20 = [v19 countByEnumeratingWithState:&v51 objects:v63 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v52;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v52 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v51 + 1) + 8 * j);
          v26 = [dictionary objectForKeyedSubscript:v24];
          if (!v26)
          {
            v27 = _LTOSLogAssets(0, v25);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
            {
              *buf = 138543362;
              v62 = v24;
              _os_log_fault_impl(&dword_23AAF5000, v27, OS_LOG_TYPE_FAULT, "ASR locale is not present in supported locale list, %{public}@", buf, 0xCu);
            }
          }

          v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v26, "integerValue") | 1}];
          [dictionary setObject:v28 forKeyedSubscript:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v51 objects:v63 count:16];
      }

      while (v21);
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v29 = v46;
    v30 = [v29 countByEnumeratingWithState:&v47 objects:v60 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v48;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v48 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v47 + 1) + 8 * k);
          v36 = [dictionary objectForKeyedSubscript:v34];
          if (!v36)
          {
            v37 = _LTOSLogAssets(0, v35);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
            {
              *buf = 138543362;
              v62 = v34;
              _os_log_fault_impl(&dword_23AAF5000, v37, OS_LOG_TYPE_FAULT, "TTS locale is not present in supported locale list, %{public}@", buf, 0xCu);
            }
          }

          v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v36, "integerValue") | 2}];
          [dictionary setObject:v38 forKeyedSubscript:v34];
        }

        v31 = [v29 countByEnumeratingWithState:&v47 objects:v60 count:16];
      }

      while (v31);
    }

    v39 = [dictionary copy];
    v12 = v43;
    modalitiesPerLocale = v43->_modalitiesPerLocale;
    v43->_modalitiesPerLocale = v39;

    v41 = v43;
    asrLocalesCopy = v44;
    localesCopy = v45;
    ttsLocalesCopy = v46;
  }

  return v12;
}

- (_LTLocaleModalities)initWithModalitiesPerLocale:(id)locale
{
  localeCopy = locale;
  v10.receiver = self;
  v10.super_class = _LTLocaleModalities;
  v5 = [(_LTLocaleModalities *)&v10 init];
  if (v5)
  {
    v6 = [localeCopy copy];
    modalitiesPerLocale = v5->_modalitiesPerLocale;
    v5->_modalitiesPerLocale = v6;

    v8 = v5;
  }

  return v5;
}

- (unint64_t)modalitiesForLocale:(id)locale
{
  v3 = [(NSDictionary *)self->_modalitiesPerLocale objectForKeyedSubscript:locale];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (_LTLocaleModalities)initWithCoder:(id)coder
{
  v14[3] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _LTLocaleModalities;
  v5 = [(_LTLocaleModalities *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v14[2] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"modalitiesPerLocale"];
    modalitiesPerLocale = v5->_modalitiesPerLocale;
    v5->_modalitiesPerLocale = v9;

    v11 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_LTLocaleModalities alloc];
  modalitiesPerLocale = self->_modalitiesPerLocale;

  return [(_LTLocaleModalities *)v4 initWithModalitiesPerLocale:modalitiesPerLocale];
}

- (id)debugDescription
{
  v18 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  [string appendString:@"{\n"];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_modalitiesPerLocale;
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        _ltLocaleIdentifier = [v9 _ltLocaleIdentifier];
        v11 = [(NSDictionary *)self->_modalitiesPerLocale objectForKeyedSubscript:v9];
        [string appendFormat:@"\t%@: %@, \n", _ltLocaleIdentifier, v11, v13];
      }

      v6 = [(NSDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [string appendString:@"}"];

  return string;
}

@end