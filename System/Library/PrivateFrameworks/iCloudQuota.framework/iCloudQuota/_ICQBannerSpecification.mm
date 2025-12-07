@interface _ICQBannerSpecification
+ (id)bannerSpecificationSampleForLevel:(int64_t)level;
- (NSString)purchaseAttribution;
- (NSString)reason;
- (NSURL)dynamicUIRouteURL;
- (NSURL)serverUIURL;
- (_ICQBannerSpecification)initWithDetailBannerInfo:(id)info source:(id)source;
- (_ICQBannerSpecification)initWithServerDictionary:(id)dictionary;
- (id)_bannerSpecificationParams;
- (id)conciseTitleWithKey:(id)key;
- (id)iconPath;
- (id)messageWithKey:(id)key;
- (id)titleWithKey:(id)key;
- (void)_setDisplayConfigurations:(id)configurations;
- (void)setMessageWithServerMessage:(id)message;
@end

@implementation _ICQBannerSpecification

+ (id)bannerSpecificationSampleForLevel:(int64_t)level
{
  if (level == 3)
  {
    if (_BannerSpecificationSampleForFullLevel_onceToken != -1)
    {
      +[_ICQBannerSpecification(ICQDebugging) bannerSpecificationSampleForLevel:];
    }

    v3 = &_BannerSpecificationSampleForFullLevel_sBannerSpecification;
    goto LABEL_9;
  }

  if (level == 2)
  {
    if (_BannerSpecificationSampleForAlmostFullLevel_onceToken != -1)
    {
      +[_ICQBannerSpecification(ICQDebugging) bannerSpecificationSampleForLevel:];
    }

    v3 = &_BannerSpecificationSampleForAlmostFullLevel_sBannerSpecification;
LABEL_9:
    v4 = *v3;
    goto LABEL_11;
  }

  v4 = 0;
LABEL_11:

  return v4;
}

- (_ICQBannerSpecification)initWithServerDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = [(_ICQBannerSpecification *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serverDict, dictionary);
    *&v7->_isDetailBannerInfoAvailable = 0;
    bannerSource = v7->_bannerSource;
    v7->_bannerSource = @"ICQBannerSourceAppBannerInfo";

    v9 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy);
    [(_ICQBannerSpecification *)v7 setMessageWithServerMessage:v9];
  }

  return v7;
}

- (_ICQBannerSpecification)initWithDetailBannerInfo:(id)info source:(id)source
{
  v73 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  sourceCopy = source;
  v9 = [(_ICQBannerSpecification *)self init];
  v10 = v9;
  if (v9)
  {
    sourceCopy2 = source;
    v54 = sourceCopy;
    objc_storeStrong(&v9->_serverDict, info);
    v10->_isDetailBannerInfoAvailable = 1;
    v11 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
    v10->_placeholderExists = [v11 BOOLValue];

    v12 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
    [(_ICQBannerSpecification *)v10 setMessageWithServerMessage:v12];

    v53 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
    [(_ICQBannerSpecification *)v10 _setDisplayConfigurations:?];
    obj = objc_alloc_init(MEMORY[0x277CBEB38]);
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v13 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
    v14 = [v13 countByEnumeratingWithState:&v66 objects:v72 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v67;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v67 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v66 + 1) + 8 * i);
          v19 = objc_msgSend_objectForKeyedSubscript_(v18, sourceCopy2);
          v20 = objc_msgSend_objectForKeyedSubscript_(v18);
          [obj setObject:v19 forKey:v20];
        }

        v15 = [v13 countByEnumeratingWithState:&v66 objects:v72 count:16];
      }

      while (v15);
    }

    v56 = v10;
    objc_storeStrong(&v10->_messageTemplates, obj);
    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v22 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
    v23 = [v22 countByEnumeratingWithState:&v62 objects:v71 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v63;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v63 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v62 + 1) + 8 * j);
          v28 = objc_msgSend_objectForKeyedSubscript_(v27, sourceCopy2);
          v29 = objc_msgSend_objectForKeyedSubscript_(v27);
          [v21 setObject:v28 forKey:v29];
        }

        v24 = [v22 countByEnumeratingWithState:&v62 objects:v71 count:16];
      }

      while (v24);
    }

    objc_storeStrong(&v56->_titleTemplates, v21);
    v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v55 = infoCopy;
    v31 = objc_msgSend_objectForKeyedSubscript_(infoCopy);
    v32 = [v31 countByEnumeratingWithState:&v58 objects:v70 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v59;
      do
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v59 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v58 + 1) + 8 * k);
          v37 = objc_msgSend_objectForKeyedSubscript_(v36, sourceCopy2);
          v38 = objc_msgSend_objectForKeyedSubscript_(v36);
          [(NSDictionary *)v30 setObject:v37 forKey:v38];
        }

        v33 = [v31 countByEnumeratingWithState:&v58 objects:v70 count:16];
      }

      while (v33);
    }

    conciseTitleTemplates = v56->_conciseTitleTemplates;
    v56->_conciseTitleTemplates = v30;
    v40 = v30;

    infoCopy = v55;
    v41 = objc_msgSend_objectForKeyedSubscript_(v55);
    iconDetails = v56->_iconDetails;
    v56->_iconDetails = v41;

    objc_storeStrong(&v56->_bannerSource, sourceCopy2);
    v43 = [ICQIconSpecification alloc];
    v44 = objc_msgSend_objectForKeyedSubscript_(v55);
    v45 = [(ICQIconSpecification *)v43 initWithDictionary:v44];
    symbolSpecification = v56->_symbolSpecification;
    v56->_symbolSpecification = v45;

    v10 = v56;
    v47 = [ICQIconSpecification alloc];
    v48 = objc_msgSend_objectForKeyedSubscript_(v55);
    v49 = [(ICQIconSpecification *)v47 initWithDictionary:v48];
    iconSpecification = v56->_iconSpecification;
    v56->_iconSpecification = v49;

    sourceCopy = v54;
  }

  return v10;
}

- (void)setMessageWithServerMessage:(id)message
{
  v12 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_ICQBannerSpecification *)self setLinksFormat:messageCopy];
    [(_ICQBannerSpecification *)self setLinks:MEMORY[0x277CBEBF8]];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objc_msgSend_objectForKeyedSubscript_(messageCopy);
      [(_ICQBannerSpecification *)self setLinksFormat:v5];

      v6 = objc_msgSend_objectForKeyedSubscript_(messageCopy);
      v7 = _ICQLinksForServerMessageParameters(v6);
      [(_ICQBannerSpecification *)self setLinks:v7];

      v8 = [ICQLink _icqDismissLinkForServerMessageParameters:v6];
      [(_ICQBannerSpecification *)self setDismissLink:v8];
    }

    else
    {
      v9 = _ICQGetLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = messageCopy;
        _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "invalid banner spec server message:%@", &v10, 0xCu);
      }
    }
  }
}

- (void)_setDisplayConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  v4 = objc_msgSend_objectForKeyedSubscript_(configurationsCopy);
  if (v4)
  {
    v5 = v4;
    v6 = objc_msgSend_objectForKeyedSubscript_(configurationsCopy);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = objc_msgSend_objectForKeyedSubscript_(configurationsCopy);
      [(_ICQBannerSpecification *)self setDecayUntil:v8];
    }
  }

  v9 = objc_msgSend_objectForKeyedSubscript_(configurationsCopy);
  if (v9)
  {
    v10 = v9;
    v11 = objc_msgSend_objectForKeyedSubscript_(configurationsCopy);
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();

    if (v12)
    {
      v13 = objc_msgSend_objectForKeyedSubscript_(configurationsCopy);
      [(_ICQBannerSpecification *)self setSupressUntil:v13];
    }
  }
}

- (id)_bannerSpecificationParams
{
  if ([(_ICQBannerSpecification *)self isDetailBannerInfoAvailable])
  {
    v3 = @"bannerFooter.params";
  }

  else
  {
    v3 = @"mesg.params";
  }

  v4 = [(NSDictionary *)self->_serverDict valueForKeyPath:v3];

  return v4;
}

- (NSURL)serverUIURL
{
  v16 = *MEMORY[0x277D85DE8];
  [(_ICQBannerSpecification *)self _bannerSpecificationParams];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v11 + 1) + 8 * i) valueForKeyPath:{@"actParams.openUrl", v11}];
        if (v7)
        {
          v9 = v7;
          v8 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v7];

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (NSURL)dynamicUIRouteURL
{
  v16 = *MEMORY[0x277D85DE8];
  [(_ICQBannerSpecification *)self _bannerSpecificationParams];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v11 + 1) + 8 * i) valueForKeyPath:{@"actParams.route", v11}];
        if (v7)
        {
          v9 = v7;
          v8 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v7];

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (NSString)purchaseAttribution
{
  v15 = *MEMORY[0x277D85DE8];
  [(_ICQBannerSpecification *)self _bannerSpecificationParams];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) valueForKeyPath:{@"actParams.purchaseAttribution", v10}];
        if (v7)
        {
          v8 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)titleWithKey:(id)key
{
  keyCopy = key;
  if ([(_ICQBannerSpecification *)self isDetailBannerInfoAvailable])
  {
    titleTemplates = [(_ICQBannerSpecification *)self titleTemplates];
    objc_msgSend_objectForKeyedSubscript_(titleTemplates);

    titleTemplates2 = [(_ICQBannerSpecification *)self titleTemplates];
    v7 = objc_msgSend_objectForKeyedSubscript_(titleTemplates2);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)conciseTitleWithKey:(id)key
{
  keyCopy = key;
  if ([(_ICQBannerSpecification *)self isDetailBannerInfoAvailable])
  {
    conciseTitleTemplates = [(_ICQBannerSpecification *)self conciseTitleTemplates];
    objc_msgSend_objectForKeyedSubscript_(conciseTitleTemplates);

    conciseTitleTemplates2 = [(_ICQBannerSpecification *)self conciseTitleTemplates];
    v7 = objc_msgSend_objectForKeyedSubscript_(conciseTitleTemplates2);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)messageWithKey:(id)key
{
  keyCopy = key;
  if ([(_ICQBannerSpecification *)self isDetailBannerInfoAvailable])
  {
    messageTemplates = [(_ICQBannerSpecification *)self messageTemplates];
    objc_msgSend_objectForKeyedSubscript_(messageTemplates);

    messageTemplates2 = [(_ICQBannerSpecification *)self messageTemplates];
    v7 = objc_msgSend_objectForKeyedSubscript_(messageTemplates2);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)iconPath
{
  iconDetails = [(_ICQBannerSpecification *)self iconDetails];
  v3 = objc_msgSend_objectForKeyedSubscript_(iconDetails);

  return v3;
}

- (NSString)reason
{
  v2 = objc_msgSend_objectForKeyedSubscript_(self->_serverDict, a2, @"reason");
  v3 = [ICQOffer offerReasonForServerReason:v2];

  return v3;
}

@end