@interface SFCertificateProperties
- (SFCertificateProperties)initWithCertificate:(__SecCertificate *)certificate;
- (id)_cellInfosForSection:(id)section;
- (id)_copyPropertiesFromCertificate:(__SecCertificate *)certificate;
- (id)_sectionInfoForCertSection:(id)section title:(id)title;
- (id)_sectionsFromProperties:(id)properties;
- (id)_sendablePropertiesFromCertificate:(__SecCertificate *)certificate;
- (id)_sendablePropertiesFromProperties:(id)properties;
- (id)_sendablePropertyFromProperty:(id)property;
- (void)_setup:(id)_setup;
@end

@implementation SFCertificateProperties

- (SFCertificateProperties)initWithCertificate:(__SecCertificate *)certificate
{
  v9.receiver = self;
  v9.super_class = SFCertificateProperties;
  v4 = [(SFCertificateProperties *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(SFCertificateProperties *)v4 _sendablePropertiesFromCertificate:certificate];
    v7 = [(SFCertificateProperties *)v5 _sectionsFromProperties:v6];
    [(SFCertificateProperties *)v5 _setup:v7];
  }

  return v5;
}

- (void)_setup:(id)_setup
{
  v38 = *MEMORY[0x277D85DE8];
  _setupCopy = _setup;
  v24 = objc_opt_new();
  v23 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = _setupCopy;
  v26 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v26)
  {
    v25 = *v33;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v32 + 1) + 8 * i);
        v6 = objc_opt_new();
        v27 = v5;
        v7 = [v5 objectForKey:@"cell infos"];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v29;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v29 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v28 + 1) + 8 * j);
              v13 = [v12 objectForKey:@"cell title"];
              v14 = [v12 objectForKey:@"cell value"];
              v15 = v14;
              if (v13)
              {
                v16 = v14 == 0;
              }

              else
              {
                v16 = 1;
              }

              if (!v16)
              {
                [v6 addObject:v13];
                [v6 addObject:v15];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v9);
        }

        if ([v6 count])
        {
          [v24 addObject:v6];
          v17 = [v27 objectForKey:@"header title"];
          v18 = v17;
          v19 = &stru_284DAEE00;
          if (v17)
          {
            v19 = v17;
          }

          v20 = v19;

          [v23 addObject:v20];
        }
      }

      v26 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v26);
  }

  if ([v24 count])
  {
    objc_storeStrong(&self->_sections, v24);
    objc_storeStrong(&self->_sectionTitles, v23);
  }
}

- (id)_cellInfosForSection:(id)section
{
  v25 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  array = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = sectionCopy;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v10 = [v9 objectForKey:@"localized label"];
        v11 = [v9 objectForKey:@"type"];
        v12 = [v9 objectForKey:@"value"];
        if ([v11 isEqualToString:@"section"])
        {
          v13 = [(SFCertificateProperties *)self _cellInfosForSection:v12];
          [array addObjectsFromArray:v13];
        }

        else
        {
          if (([v11 isEqualToString:@"string"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"url") || objc_msgSend(v11, "isEqualToString:", @"data") || objc_msgSend(v11, "isEqualToString:", @"date"))
          {
            v14 = v12;
          }

          else
          {
            v14 = [v12 description];
          }

          v13 = v14;
          v15 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v10, @"cell title", v14, @"cell value", 0}];
          [array addObject:v15];
        }

        ++v8;
      }

      while (v6 != v8);
      v16 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      v6 = v16;
    }

    while (v16);
  }

  return array;
}

- (id)_sectionInfoForCertSection:(id)section title:(id)title
{
  v6 = MEMORY[0x277CBEAC0];
  titleCopy = title;
  v8 = [(SFCertificateProperties *)self _cellInfosForSection:section];
  v9 = [v6 dictionaryWithObjectsAndKeys:{v8, @"cell infos", titleCopy, @"header title", 0}];

  return v9;
}

- (id)_sectionsFromProperties:(id)properties
{
  selfCopy = self;
  v24 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  array = [MEMORY[0x277CBEB18] array];
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = propertiesCopy;
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [v8 objectForKey:{@"localized label", selfCopy}];
        v10 = [v8 objectForKey:@"type"];
        v11 = [v8 objectForKey:@"value"];
        if ([v10 isEqualToString:@"section"])
        {
          v12 = [(SFCertificateProperties *)selfCopy _sectionInfoForCertSection:v11 title:v9];
          [array addObject:v12];
        }

        else
        {
          [v16 addObject:v8];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  if ([v16 count])
  {
    v13 = [(SFCertificateProperties *)selfCopy _sectionInfoForCertSection:v16 title:0];
    [array addObject:v13];
  }

  return array;
}

- (id)_sendablePropertyFromProperty:(id)property
{
  propertyCopy = property;
  v5 = [propertyCopy objectForKey:*MEMORY[0x277CDC508]];
  if ([v5 isEqualToString:*MEMORY[0x277CDC538]])
  {
    v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:propertyCopy];

    v7 = *MEMORY[0x277CDC510];
    v8 = [propertyCopy objectForKey:*MEMORY[0x277CDC510]];
    absoluteString = [v8 absoluteString];
  }

  else
  {
    v6 = propertyCopy;
    if (![v5 isEqualToString:*MEMORY[0x277CDC528]])
    {
      goto LABEL_6;
    }

    v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:propertyCopy];

    v7 = *MEMORY[0x277CDC510];
    v8 = [propertyCopy objectForKey:*MEMORY[0x277CDC510]];
    absoluteString = [(SFCertificateProperties *)self _sendablePropertiesFromProperties:v8];
  }

  v10 = absoluteString;
  [v6 setObject:absoluteString forKey:v7];

LABEL_6:

  return v6;
}

- (id)_sendablePropertiesFromProperties:(id)properties
{
  v18 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(propertiesCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = propertiesCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(SFCertificateProperties *)self _sendablePropertyFromProperty:*(*(&v13 + 1) + 8 * i), v13];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_copyPropertiesFromCertificate:(__SecCertificate *)certificate
{
  if (certificate)
  {

    return MEMORY[0x28212B1B8](certificate, a2);
  }

  else
  {
    v4 = SFLogSFCertificateProperties(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SFCertificateProperties _copyPropertiesFromCertificate:v4];
    }

    return 0;
  }
}

- (id)_sendablePropertiesFromCertificate:(__SecCertificate *)certificate
{
  v4 = [(SFCertificateProperties *)self _copyPropertiesFromCertificate:certificate];
  v5 = [(SFCertificateProperties *)self _sendablePropertiesFromProperties:v4];

  return v5;
}

@end