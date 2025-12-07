@interface SLHighlight
+ (id)Sha256ForData:(id)data withSalt:(id)salt;
+ (id)errorForHighlightDomain:(id)domain andCode:(int64_t)code andUnderlyingError:(id *)error;
+ (id)requiredSpotlightAttributeKeys;
- (BOOL)isEqual:(id)equal;
- (SLHighlight)initWithAttribution:(id)attribution;
- (SLHighlight)initWithCSSearchableItem:(id)item error:(id *)error;
- (SLHighlight)initWithCSSearchableItemUniqueIdentifier:(id)identifier forContentType:(unsigned __int8)type error:(id *)error;
- (SLHighlight)initWithCoder:(id)coder;
- (SLHighlight)initWithDictionary:(id)dictionary;
- (SLHighlight)initWithPortraitHighlight:(id)highlight error:(id *)error;
- (id)_uniqueIdentifierForResourceURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)portraitHighlight;
- (unint64_t)hash;
- (void)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setAttributions:(id)attributions;
@end

@implementation SLHighlight

+ (id)Sha256ForData:(id)data withSalt:(id)salt
{
  v14 = *MEMORY[0x277D85DE8];
  saltCopy = salt;
  memset(&v12, 0, sizeof(v12));
  dataCopy = data;
  CC_SHA256_Init(&v12);
  v7 = dataCopy;
  bytes = [v7 bytes];
  v9 = [dataCopy length];

  CC_SHA256_Update(&v12, bytes, v9);
  if (saltCopy)
  {
    CC_SHA256_Update(&v12, [saltCopy bytes], objc_msgSend(saltCopy, "length"));
  }

  CC_SHA256_Final(md, &v12);
  v10 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:md length:32];

  return v10;
}

- (SLHighlight)initWithAttribution:(id)attribution
{
  v20[1] = *MEMORY[0x277D85DE8];
  attributionCopy = attribution;
  v19.receiver = self;
  v19.super_class = SLHighlight;
  v5 = [(SLHighlight *)&v19 init];
  v6 = v5;
  if (v5)
  {
    identifier = v5->_identifier;
    v5->_identifier = &stru_28468DAB8;

    v8 = [MEMORY[0x277CBEBC0] URLWithString:&stru_28468DAB8];
    resourceURL = v6->_resourceURL;
    v6->_resourceURL = v8;

    date = [MEMORY[0x277CBEAA8] date];
    timestamp = v6->_timestamp;
    v6->_timestamp = date;

    v20[0] = attributionCopy;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    attributions = v6->_attributions;
    v6->_attributions = v12;

    supplementaryData = v6->_supplementaryData;
    v6->_supplementaryData = MEMORY[0x277CBEC10];

    score = v6->_score;
    v6->_score = &unk_28469BCC0;

    v16 = [(NSDictionary *)v6->_supplementaryData valueForKey:@"com_apple_mobilesms_resolvedURL"];
    resolvedURL = v6->_resolvedURL;
    v6->_resolvedURL = v16;
  }

  return v6;
}

- (SLHighlight)initWithPortraitHighlight:(id)highlight error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  highlightCopy = highlight;
  v50.receiver = self;
  v50.super_class = SLHighlight;
  v7 = [(SLHighlight *)&v50 init];
  if (!v7)
  {
LABEL_32:
    v33 = v7;
    goto LABEL_33;
  }

  if (highlightCopy)
  {
    identifier = [highlightCopy identifier];
    v9 = [identifier length];

    if (v9)
    {
      identifier2 = [highlightCopy identifier];
      identifier = v7->_identifier;
      v7->_identifier = identifier2;

      resourceURL = [highlightCopy resourceURL];

      if (resourceURL)
      {
        resourceURL2 = [highlightCopy resourceURL];
        resourceURL = v7->_resourceURL;
        v7->_resourceURL = resourceURL2;

        timestamp = [highlightCopy timestamp];

        if (timestamp)
        {
          timestamp2 = [highlightCopy timestamp];
          timestamp = v7->_timestamp;
          v7->_timestamp = timestamp2;

          v18 = objc_opt_new();
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          obj = [highlightCopy attributionIdentifiers];
          v19 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
          if (v19)
          {
            v20 = v19;
            errorCopy = error;
            v21 = 0;
            v22 = *v47;
            while (2)
            {
              v23 = 0;
              v24 = v21;
              do
              {
                if (*v47 != v22)
                {
                  objc_enumerationMutation(obj);
                }

                v25 = *(*(&v46 + 1) + 8 * v23);
                v26 = [SLAttribution alloc];
                v45 = v24;
                v27 = [(SLAttribution *)v26 initWithIdentifier:v25 error:&v45];
                v21 = v45;

                if (!v27)
                {
                  if (errorCopy)
                  {
                    v44 = v21;
                    v30 = [objc_opt_class() errorForHighlightDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" andCode:5 andUnderlyingError:&v44];
                    v31 = v44;

                    v32 = v30;
                    *errorCopy = v30;
                    v21 = v31;
                  }

                  goto LABEL_27;
                }

                [v18 addObject:v27];

                ++v23;
                v24 = v21;
              }

              while (v20 != v23);
              v20 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
              if (v20)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v21 = 0;
          }

          objc_storeStrong(&v7->_attributions, v18);
          supplementaryData = [highlightCopy supplementaryData];
          supplementaryData = v7->_supplementaryData;
          v7->_supplementaryData = supplementaryData;

          score = [highlightCopy score];
          score = v7->_score;
          v7->_score = score;

          v38 = [(NSDictionary *)v7->_supplementaryData valueForKey:@"com_apple_mobilesms_resolvedURL"];

          if (v38)
          {
            v39 = [(NSDictionary *)v7->_supplementaryData valueForKey:@"com_apple_mobilesms_resolvedURL"];
            resolvedURL = v7->_resolvedURL;
            v7->_resolvedURL = v39;
          }

          goto LABEL_32;
        }

        if (error)
        {
          v28 = objc_opt_class();
          v29 = 4;
          goto LABEL_26;
        }

LABEL_27:
        v33 = 0;
        goto LABEL_33;
      }

      if (!error)
      {
        goto LABEL_27;
      }

      v28 = objc_opt_class();
      v29 = 3;
    }

    else
    {
      if (!error)
      {
        goto LABEL_27;
      }

      v28 = objc_opt_class();
      v29 = 2;
    }
  }

  else
  {
    if (!error)
    {
      goto LABEL_27;
    }

    v28 = objc_opt_class();
    v29 = 1;
  }

LABEL_26:
  [v28 errorForHighlightDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" andCode:v29 andUnderlyingError:0];
  *error = v33 = 0;
LABEL_33:

  return v33;
}

- (id)portraitHighlight
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  attributions = [(SLHighlight *)self attributions];
  v5 = [attributions countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(attributions);
        }

        uniqueIdentifier = [*(*(&v18 + 1) + 8 * i) uniqueIdentifier];
        [v3 addObject:uniqueIdentifier];
      }

      v6 = [attributions countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v10 = objc_alloc(MEMORY[0x277D3A4C0]);
  identifier = [(SLHighlight *)self identifier];
  resourceURL = [(SLHighlight *)self resourceURL];
  timestamp = [(SLHighlight *)self timestamp];
  supplementaryData = [(SLHighlight *)self supplementaryData];
  score = [(SLHighlight *)self score];
  v16 = [v10 initWithIdentifier:identifier resourceURL:resourceURL timestamp:timestamp attributionIdentifiers:v3 supplementaryData:supplementaryData score:score];

  return v16;
}

- (SLHighlight)initWithCSSearchableItem:(id)item error:(id *)error
{
  v49[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v48.receiver = self;
  v48.super_class = SLHighlight;
  v7 = [(SLHighlight *)&v48 init];
  if (!v7)
  {
    goto LABEL_35;
  }

  attributeSet = [itemCopy attributeSet];
  messageType = [attributeSet messageType];

  v10 = [messageType isEqualToString:@"lnk"];
  domainIdentifier = [itemCopy domainIdentifier];
  v12 = [domainIdentifier isEqualToString:@"attachmentDomain"];

  if ((v12 & 1) == 0 && (v10 & 1) == 0)
  {
    v14 = SLFrameworkLogHandle(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SLHighlight initWithCSSearchableItem:itemCopy error:?];
    }

    if (error)
    {
      *error = [objc_opt_class() errorForHighlightDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" andCode:6 andUnderlyingError:0];
    }

    goto LABEL_22;
  }

  attributeSet2 = [itemCopy attributeSet];
  contentURL = [attributeSet2 contentURL];
  if (contentURL || ([attributeSet2 URL], (contentURL = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v17 = contentURL;
    objc_storeStrong(&v7->_resourceURL, contentURL);
    v18 = [(SLHighlight *)v7 _uniqueIdentifierForResourceURL:v7->_resourceURL];
    if ([v18 length])
    {
      objc_storeStrong(&v7->_identifier, v18);
      supplementaryData = v7->_supplementaryData;
      v7->_supplementaryData = MEMORY[0x277CBEC10];

      v47 = 0;
      v20 = [[SLAttribution alloc] initWithCSSearchableItem:itemCopy error:&v47];
      v21 = v47;
      if (v20)
      {
        v49[0] = v20;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
        attributions = v7->_attributions;
        v7->_attributions = v22;

        contentCreationDate = [attributeSet2 contentCreationDate];
        if (contentCreationDate)
        {
          v44 = contentCreationDate;
          objc_storeStrong(&v7->_timestamp, contentCreationDate);
          customAttributeDictionary = [attributeSet2 customAttributeDictionary];
          v26 = [customAttributeDictionary objectForKey:@"com_apple_mobilesms_isSyndicatedContent"];

          v43 = v26;
          v7->_syndicationType = [v26 unsignedIntegerValue];
          customAttributeDictionary2 = [attributeSet2 customAttributeDictionary];
          v28 = [customAttributeDictionary2 objectForKey:@"com_apple_mobilesms_isSyndicatableMedia"];
          v7->_isSyndicatableMedia = [v28 BOOLValue];

          isLocal = [attributeSet2 isLocal];
          v7->_isLocalResource = [isLocal BOOLValue];

          contentType = [attributeSet2 contentType];
          v31 = contentType;
          v45 = v21;
          if (contentType)
          {
            v32 = contentType;
            resourceUTI = v7->_resourceUTI;
            v7->_resourceUTI = v32;
          }

          else
          {
            resourceUTI = SLFrameworkLogHandle(0);
            if (os_log_type_enabled(resourceUTI, OS_LOG_TYPE_ERROR))
            {
              [SLHighlight initWithCSSearchableItem:itemCopy error:?];
            }
          }

          customAttributeDictionary3 = [attributeSet2 customAttributeDictionary];
          v39 = [customAttributeDictionary3 objectForKey:@"com_apple_mobilesms_livePhotoComplementPath"];

          if (v39)
          {
            v40 = [MEMORY[0x277CBEBC0] fileURLWithPath:v39];
          }

          else
          {
            v40 = 0;
          }

          v21 = v45;
          livePhotoComplementURL = v7->_livePhotoComplementURL;
          v7->_livePhotoComplementURL = v40;

          contentCreationDate = v44;
        }

        else if (error)
        {
          *error = [objc_opt_class() errorForHighlightDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" andCode:4 andUnderlyingError:0];
        }

        if (!contentCreationDate)
        {
          goto LABEL_23;
        }

LABEL_35:
        v37 = v7;
        goto LABEL_36;
      }

      if (error)
      {
        v46 = v21;
        v34 = [objc_opt_class() errorForHighlightDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" andCode:5 andUnderlyingError:&v46];
        v35 = v46;

        v36 = v34;
        *error = v34;
        v21 = v35;
      }
    }

    else if (error)
    {
      *error = [objc_opt_class() errorForHighlightDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" andCode:2 andUnderlyingError:0];
    }
  }

  else if (error)
  {
    *error = [objc_opt_class() errorForHighlightDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" andCode:3 andUnderlyingError:0];
  }

LABEL_22:
LABEL_23:
  v37 = 0;
LABEL_36:

  return v37;
}

- (SLHighlight)initWithCSSearchableItemUniqueIdentifier:(id)identifier forContentType:(unsigned __int8)type error:(id *)error
{
  typeCopy = type;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v9 = +[SLHighlight requiredSpotlightAttributeKeys];
    allObjects = [v9 allObjects];

    v19 = 0;
    v11 = [SLCoreSpotlightUtilities fetchCSSearchableItemForUniqueIdentifier:identifierCopy forContentType:typeCopy withRequiredAttributes:allObjects error:&v19];
    v12 = v19;
    if (v11)
    {
      self = [(SLHighlight *)self initWithCSSearchableItem:v11 error:error];
      selfCopy = self;
    }

    else if (error)
    {
      v18 = v12;
      v14 = [objc_opt_class() errorForHighlightDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" andCode:7 andUnderlyingError:&v18];
      v15 = v18;

      v16 = v14;
      selfCopy = 0;
      *error = v14;
      v12 = v15;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else if (error)
  {
    [objc_opt_class() errorForHighlightDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" andCode:8 andUnderlyingError:0];
    *error = selfCopy = 0;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)requiredSpotlightAttributeKeys
{
  v13[19] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = *MEMORY[0x277CC2408];
  v13[0] = *MEMORY[0x277CC23A8];
  v13[1] = v3;
  v4 = *MEMORY[0x277CC24D8];
  v13[2] = *MEMORY[0x277CC24B0];
  v13[3] = v4;
  v5 = *MEMORY[0x277CC2500];
  v13[4] = *MEMORY[0x277CC24E0];
  v13[5] = v5;
  v6 = *MEMORY[0x277CC2678];
  v13[6] = *MEMORY[0x277CC2640];
  v13[7] = v6;
  v7 = *MEMORY[0x277CC2770];
  v13[8] = *MEMORY[0x277CC2688];
  v13[9] = v7;
  v8 = *MEMORY[0x277CC2E48];
  v13[10] = *MEMORY[0x277CC2C88];
  v13[11] = v8;
  v9 = *MEMORY[0x277CC3208];
  v13[12] = *MEMORY[0x277CC2FC0];
  v13[13] = v9;
  v13[14] = @"com_apple_mobilesms_livePhotoComplementPath";
  v13[15] = @"com_apple_mobilesms_groupPhotoPath";
  v13[16] = @"com_apple_mobilesms_isSyndicatedContent";
  v13[17] = @"com_apple_mobilesms_isSyndicatableMedia";
  v13[18] = *MEMORY[0x277CC3190];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:19];
  v11 = [v2 setWithArray:v10];

  return v11;
}

- (SLHighlight)initWithDictionary:(id)dictionary
{
  v50 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v48.receiver = self;
  v48.super_class = SLHighlight;
  v5 = [(SLHighlight *)&v48 init];
  if (!v5)
  {
LABEL_35:
    v22 = v5;
    goto LABEL_36;
  }

  v6 = [dictionaryCopy objectForKey:@"i"];
  if ([v6 length])
  {
    objc_storeStrong(&v5->_identifier, v6);
    v7 = [dictionaryCopy objectForKey:@"ru"];
    v8 = v7;
    if (v7)
    {
      v7 = [MEMORY[0x277CBEBC0] URLWithString:v7];
      if (v7)
      {
        v41 = v7;
        v43 = v8;
        objc_storeStrong(&v5->_resourceURL, v7);
        v9 = objc_opt_new();
        [dictionaryCopy objectForKey:@"a"];
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v10 = v47 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v45;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v45 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [[SLAttribution alloc] initWithDictionary:*(*(&v44 + 1) + 8 * i)];
              if (!v15)
              {
                v23 = SLFrameworkLogHandle(0);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  [SLHighlight initWithDictionary:];
                }

                goto LABEL_21;
              }

              v16 = v15;
              [v9 addObject:{v15, v41, v43, v44}];
            }

            v12 = [v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        objc_storeStrong(&v5->_attributions, v9);
        v17 = [dictionaryCopy objectForKey:@"t"];
        v18 = v17;
        if (v17)
        {
          v19 = v17;
          p_super = &v5->_timestamp->super;
          v5->_timestamp = v19;
        }

        else
        {
          p_super = SLFrameworkLogHandle(0);
          if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
          {
            [SLHighlight initWithDictionary:];
          }
        }

        v24 = [dictionaryCopy objectForKey:@"sd"];
        supplementaryData = v5->_supplementaryData;
        v5->_supplementaryData = v24;

        v26 = [dictionaryCopy objectForKey:@"rt"];
        resourceUTI = v5->_resourceUTI;
        v5->_resourceUTI = v26;

        v28 = [dictionaryCopy objectForKey:@"sc"];
        score = v5->_score;
        v5->_score = v28;

        v30 = [dictionaryCopy objectForKey:@"st"];
        v5->_syndicationType = [v30 unsignedIntegerValue];

        v31 = [dictionaryCopy objectForKey:@"m"];
        v5->_isSyndicatableMedia = [v31 BOOLValue];

        v32 = [dictionaryCopy objectForKey:@"lr"];
        v5->_isLocalResource = [v32 BOOLValue];

        v33 = [dictionaryCopy objectForKey:@"lp"];
        if (v33)
        {
          v34 = [MEMORY[0x277CBEBC0] fileURLWithPath:v33];
          livePhotoComplementURL = v5->_livePhotoComplementURL;
          v5->_livePhotoComplementURL = v34;
        }

        v36 = [dictionaryCopy objectForKey:{@"com_apple_mobilesms_resolvedURL", v41}];
        v37 = v36;
        if (v36 && ([MEMORY[0x277CBEBC0] fileURLWithPath:v36], (v36 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          resolvedURL = v5->_resolvedURL;
          v5->_resolvedURL = v36;
          v39 = v36;
        }

        else
        {
          v39 = SLFrameworkLogHandle(v36);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            [SLHighlight initWithDictionary:];
          }
        }

        goto LABEL_35;
      }
    }

    v21 = SLFrameworkLogHandle(v7);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [SLHighlight initWithDictionary:];
    }
  }

  else
  {
    v8 = SLFrameworkLogHandle(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SLHighlight initWithDictionary:];
    }
  }

LABEL_21:
  v22 = 0;
LABEL_36:

  return v22;
}

- (id)dictionaryRepresentation
{
  v49 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  identifier = [(SLHighlight *)self identifier];

  if (!identifier)
  {
    v41 = SLFrameworkLogHandle(v5);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [SLHighlight dictionaryRepresentation];
    }

LABEL_35:

LABEL_36:
    v40 = 0;
    goto LABEL_37;
  }

  identifier2 = [(SLHighlight *)self identifier];
  [dictionary setObject:identifier2 forKey:@"i"];

  resourceURL = [(SLHighlight *)self resourceURL];

  if (!resourceURL)
  {
    v41 = SLFrameworkLogHandle(v8);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [SLHighlight dictionaryRepresentation];
    }

    goto LABEL_35;
  }

  resourceURL2 = [(SLHighlight *)self resourceURL];
  absoluteString = [resourceURL2 absoluteString];
  [dictionary setObject:absoluteString forKey:@"ru"];

  timestamp = [(SLHighlight *)self timestamp];

  if (!timestamp)
  {
    v41 = SLFrameworkLogHandle(v12);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [SLHighlight dictionaryRepresentation];
    }

    goto LABEL_35;
  }

  timestamp2 = [(SLHighlight *)self timestamp];
  [dictionary setObject:timestamp2 forKey:@"t"];

  attributions = [(SLHighlight *)self attributions];

  if (!attributions)
  {
    v41 = SLFrameworkLogHandle(v15);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [SLHighlight dictionaryRepresentation];
    }

    goto LABEL_35;
  }

  array = [MEMORY[0x277CBEB18] array];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  attributions2 = [(SLHighlight *)self attributions];
  v18 = [attributions2 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v45;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v45 != v20)
        {
          objc_enumerationMutation(attributions2);
        }

        v22 = *(*(&v44 + 1) + 8 * i);
        dictionaryRepresentation = [v22 dictionaryRepresentation];
        if (!dictionaryRepresentation)
        {
          v42 = SLFrameworkLogHandle(0);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            [(SLHighlight *)v22 dictionaryRepresentation];
          }

          goto LABEL_36;
        }

        v24 = dictionaryRepresentation;
        [array addObject:dictionaryRepresentation];
      }

      v19 = [attributions2 countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  [dictionary setObject:array forKey:@"a"];
  v25 = [MEMORY[0x277CCABB0] numberWithBool:{-[SLHighlight isLocalResource](self, "isLocalResource")}];
  [dictionary setObject:v25 forKey:@"lr"];

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SLHighlight syndicationType](self, "syndicationType")}];
  [dictionary setObject:v26 forKey:@"st"];

  v27 = [MEMORY[0x277CCABB0] numberWithBool:{-[SLHighlight isSyndicatableMedia](self, "isSyndicatableMedia")}];
  [dictionary setObject:v27 forKey:@"m"];

  score = [(SLHighlight *)self score];

  if (score)
  {
    score2 = [(SLHighlight *)self score];
    [dictionary setObject:score2 forKey:@"sc"];
  }

  supplementaryData = [(SLHighlight *)self supplementaryData];

  if (supplementaryData)
  {
    supplementaryData2 = [(SLHighlight *)self supplementaryData];
    [dictionary setObject:supplementaryData2 forKey:@"sd"];
  }

  resolvedURL = [(SLHighlight *)self resolvedURL];

  if (resolvedURL)
  {
    resolvedURL2 = [(SLHighlight *)self resolvedURL];
    path = [resolvedURL2 path];
    [dictionary setObject:path forKey:@"rs"];
  }

  resourceUTI = [(SLHighlight *)self resourceUTI];

  if (resourceUTI)
  {
    resourceUTI2 = [(SLHighlight *)self resourceUTI];
    [dictionary setObject:resourceUTI2 forKey:@"rt"];
  }

  livePhotoComplementURL = [(SLHighlight *)self livePhotoComplementURL];

  if (livePhotoComplementURL)
  {
    livePhotoComplementURL2 = [(SLHighlight *)self livePhotoComplementURL];
    path2 = [livePhotoComplementURL2 path];
    [dictionary setObject:path2 forKey:@"lp"];
  }

  v40 = dictionary;
LABEL_37:

  return v40;
}

- (SLHighlight)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = SLHighlight;
  v5 = [(SLHighlight *)&v32 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"i"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ru"];
    resourceURL = v5->_resourceURL;
    v5->_resourceURL = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"a"];
    attributions = v5->_attributions;
    v5->_attributions = v13;

    v15 = objc_opt_class();
    v16 = [coderCopy decodeDictionaryWithKeysOfClass:v15 objectsOfClass:objc_opt_class() forKey:@"sd"];
    supplementaryData = v5->_supplementaryData;
    v5->_supplementaryData = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sc"];
    score = v5->_score;
    v5->_score = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"st"];
    v5->_syndicationType = [v20 unsignedIntegerValue];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"t"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"com_apple_mobilesms_resolvedURL"];
    resolvedURL = v5->_resolvedURL;
    v5->_resolvedURL = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"m"];
    v5->_isSyndicatableMedia = [v25 BOOLValue];

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lr"];
    v5->_isLocalResource = [v26 BOOLValue];

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rt"];
    resourceUTI = v5->_resourceUTI;
    v5->_resourceUTI = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lp"];
    livePhotoComplementURL = v5->_livePhotoComplementURL;
    v5->_livePhotoComplementURL = v29;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(SLHighlight *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"i"];

  resourceURL = [(SLHighlight *)self resourceURL];
  [coderCopy encodeObject:resourceURL forKey:@"ru"];

  attributions = [(SLHighlight *)self attributions];
  [coderCopy encodeObject:attributions forKey:@"a"];

  supplementaryData = [(SLHighlight *)self supplementaryData];
  [coderCopy encodeObject:supplementaryData forKey:@"sd"];

  resolvedURL = [(SLHighlight *)self resolvedURL];
  [coderCopy encodeObject:resolvedURL forKey:@"com_apple_mobilesms_resolvedURL"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SLHighlight syndicationType](self, "syndicationType")}];
  [coderCopy encodeObject:v10 forKey:@"st"];

  timestamp = [(SLHighlight *)self timestamp];
  [coderCopy encodeObject:timestamp forKey:@"t"];

  score = [(SLHighlight *)self score];
  [coderCopy encodeObject:score forKey:@"sc"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[SLHighlight isSyndicatableMedia](self, "isSyndicatableMedia")}];
  [coderCopy encodeObject:v13 forKey:@"m"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[SLHighlight isLocalResource](self, "isLocalResource")}];
  [coderCopy encodeObject:v14 forKey:@"lr"];

  resourceUTI = [(SLHighlight *)self resourceUTI];
  [coderCopy encodeObject:resourceUTI forKey:@"rt"];

  livePhotoComplementURL = [(SLHighlight *)self livePhotoComplementURL];
  [coderCopy encodeObject:livePhotoComplementURL forKey:@"lp"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SLHighlight alloc];
  dictionaryRepresentation = [(SLHighlight *)self dictionaryRepresentation];
  v6 = [(SLHighlight *)v4 initWithDictionary:dictionaryRepresentation];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    identifier = [(SLHighlight *)self identifier];
    if (identifier || ([v6 identifier], (resourceURL2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      identifier2 = [(SLHighlight *)self identifier];
      identifier3 = [v6 identifier];
      v10 = [identifier2 isEqualToString:identifier3];

      if (identifier)
      {

        if (!v10)
        {
          goto LABEL_20;
        }
      }

      else
      {

        if ((v10 & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    resourceURL = [(SLHighlight *)self resourceURL];
    if (!resourceURL)
    {
      resourceURL2 = [v6 resourceURL];
      if (!resourceURL2)
      {
        goto LABEL_15;
      }
    }

    resourceURL3 = [(SLHighlight *)self resourceURL];
    resourceURL4 = [v6 resourceURL];
    v15 = [resourceURL3 isEqual:resourceURL4];

    if (resourceURL)
    {

      if (!v15)
      {
        goto LABEL_20;
      }

LABEL_15:
      attributions = [(SLHighlight *)self attributions];
      v17 = [attributions count];
      if (v17 || ([v6 attributions], resourceURL2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(resourceURL2, "count")))
      {
        attributions2 = [(SLHighlight *)self attributions];
        v19 = [attributions2 count];
        attributions3 = [v6 attributions];
        v21 = [attributions3 count];

        if (!v17)
        {
        }

        if (v19 != v21)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }

      attributions4 = [(SLHighlight *)self attributions];
      attributions5 = [v6 attributions];
      v11 = [attributions4 isEqualToArray:attributions5];

      goto LABEL_21;
    }

    if (v15)
    {
      goto LABEL_15;
    }

LABEL_20:
    v11 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v11 = 0;
LABEL_22:

  return v11;
}

- (unint64_t)hash
{
  identifier = [(SLHighlight *)self identifier];
  v4 = [identifier hash];
  resourceURL = [(SLHighlight *)self resourceURL];
  v6 = [resourceURL hash] ^ v4;
  attributions = [(SLHighlight *)self attributions];
  v8 = [attributions hash];

  return v6 ^ v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(SLHighlight *)self identifier];
  resourceURL = [(SLHighlight *)self resourceURL];
  supplementaryData = [(SLHighlight *)self supplementaryData];
  v9 = [v3 stringWithFormat:@"[%@: identifier: %@  resourceURL: %@ supplementaryData: %@]", v5, identifier, resourceURL, supplementaryData];

  return v9;
}

- (void)setAttributions:(id)attributions
{
  attributionsCopy = attributions;
  if (attributionsCopy)
  {
    v6 = attributionsCopy;
    objc_storeStrong(&self->_attributions, attributions);
    attributionsCopy = v6;
  }
}

- (id)_uniqueIdentifierForResourceURL:(id)l
{
  absoluteString = [l absoluteString];
  v4 = [absoluteString dataUsingEncoding:4];

  v5 = [objc_opt_class() Sha256ForData:v4 withSalt:0];
  v6 = [v5 base64EncodedStringWithOptions:0];

  return v6;
}

+ (id)errorForHighlightDomain:(id)domain andCode:(int64_t)code andUnderlyingError:(id *)error
{
  v28[1] = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  v8 = 0;
  if (code <= 3)
  {
    switch(code)
    {
      case 1:
        v27 = *MEMORY[0x277CCA068];
        v28[0] = @"SLHighlight Init failed. Invalid or nil PPSocialHighlight.";
        v9 = MEMORY[0x277CBEAC0];
        v10 = v28;
        v11 = &v27;
        break;
      case 2:
        v25 = *MEMORY[0x277CCA068];
        v26 = @"SLHighlight Init failed. PPSocialHighlight contains an invalid or nil identifier.";
        v9 = MEMORY[0x277CBEAC0];
        v10 = &v26;
        v11 = &v25;
        break;
      case 3:
        v23 = *MEMORY[0x277CCA068];
        v24 = @"SLHighlight Init failed. PPSocialHighlight contains an invalid or nil URL.";
        v9 = MEMORY[0x277CBEAC0];
        v10 = &v24;
        v11 = &v23;
        break;
      default:
        goto LABEL_17;
    }
  }

  else if (code > 5)
  {
    if (code == 6)
    {
      v17 = *MEMORY[0x277CCA068];
      v18 = @"SLHighlight Init failed. CSSearchableItem contains an invalid or nil domain identifier.";
      v9 = MEMORY[0x277CBEAC0];
      v10 = &v18;
      v11 = &v17;
    }

    else
    {
      if (code != 7)
      {
        goto LABEL_17;
      }

      v15 = *MEMORY[0x277CCA068];
      v16 = @"SLHighlight Init failed. Failed to fetch CSSearchableItem.";
      v9 = MEMORY[0x277CBEAC0];
      v10 = &v16;
      v11 = &v15;
    }
  }

  else if (code == 4)
  {
    v21 = *MEMORY[0x277CCA068];
    v22 = @"SLHighlight Init failed. PPSocialHighlight contains an invalid or nil timestamp.";
    v9 = MEMORY[0x277CBEAC0];
    v10 = &v22;
    v11 = &v21;
  }

  else
  {
    v19 = *MEMORY[0x277CCA068];
    v20 = @"SLHighlight Init failed.  One of the attribution identifiers in PPSocialHighlight is invalid or nil.";
    v9 = MEMORY[0x277CBEAC0];
    v10 = &v20;
    v11 = &v19;
  }

  v8 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
LABEL_17:
  if (error)
  {
    v12 = [v8 mutableCopy];
    [v12 setObject:*error forKey:*MEMORY[0x277CCA7E8]];

    v8 = v12;
  }

  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:domainCopy code:code userInfo:v8];

  return v13;
}

- (void)initWithCSSearchableItem:(void *)a1 error:.cold.1(void *a1)
{
  v1 = [a1 domainIdentifier];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_2_1(&dword_231772000, v2, v3, "Attempted to initialize SLH using a CSSearchableItem outside the attachment/links domain. Failing initialization from CSSearchableItem. domain: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

- (void)initWithCSSearchableItem:(void *)a1 error:.cold.2(void *a1)
{
  v1 = [a1 uniqueIdentifier];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_2_1(&dword_231772000, v2, v3, "WARNING: Item with unique identifier %@ had a nil UTI.", v4, v5, v6, v7, v8, DWORD2(v8));
}

- (void)dictionaryRepresentation
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "SLH an SLA failed dictionary serialization. Failing dictionary serialization for the SLH as well. Offending SLA: %@", &v2, 0xCu);
}

@end