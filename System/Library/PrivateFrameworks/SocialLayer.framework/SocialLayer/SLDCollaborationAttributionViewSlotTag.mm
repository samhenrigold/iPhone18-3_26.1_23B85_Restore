@interface SLDCollaborationAttributionViewSlotTag
+ (id)_personOtherThanPerson:(id)person inArray:(id)array;
+ (id)conversationDrawingMetadataForAttributions:(id)attributions;
+ (id)displayNamesForPersons:(id)persons;
+ (id)placeholderTagForMaxWidth:(double)width placeholderGlyphConfiguration:(id)configuration;
+ (id)recipientsForAttribution:(id)attribution;
+ (id)tagForTitle:(id)title attributions:(id)attributions placeholderGlyphConfiguration:(id)configuration maxWidth:(double)width variant:(int64_t)variant;
- (BOOL)isEqual:(id)equal;
- (SLDCollaborationAttributionViewSlotTag)initWithCoder:(id)coder;
- (SLDCollaborationAttributionViewSlotTag)initWithTitle:(id)title attributions:(id)attributions placeholderGlyphConfiguration:(id)configuration maxWidth:(double)width variant:(int64_t)variant isPlaceholder:(BOOL)placeholder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)resolvedStyleForStyle:(id)style;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SLDCollaborationAttributionViewSlotTag

+ (id)placeholderTagForMaxWidth:(double)width placeholderGlyphConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = [SLDCollaborationAttributionViewSlotTag alloc];
  v7 = [(SLDCollaborationAttributionViewSlotTag *)v6 initWithTitle:&stru_28468DAB8 attributions:MEMORY[0x277CBEBF8] placeholderGlyphConfiguration:configurationCopy maxWidth:1 variant:1 isPlaceholder:width];

  return v7;
}

+ (id)tagForTitle:(id)title attributions:(id)attributions placeholderGlyphConfiguration:(id)configuration maxWidth:(double)width variant:(int64_t)variant
{
  configurationCopy = configuration;
  attributionsCopy = attributions;
  titleCopy = title;
  v14 = [[SLDCollaborationAttributionViewSlotTag alloc] initWithTitle:titleCopy attributions:attributionsCopy placeholderGlyphConfiguration:configurationCopy maxWidth:variant variant:0 isPlaceholder:width];

  return v14;
}

- (SLDCollaborationAttributionViewSlotTag)initWithTitle:(id)title attributions:(id)attributions placeholderGlyphConfiguration:(id)configuration maxWidth:(double)width variant:(int64_t)variant isPlaceholder:(BOOL)placeholder
{
  v55 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  attributionsCopy = attributions;
  configurationCopy = configuration;
  v49.receiver = self;
  v49.super_class = SLDCollaborationAttributionViewSlotTag;
  v18 = [(SLDCollaborationAttributionViewSlotTag *)&v49 init];
  v19 = v18;
  if (v18)
  {
    v43 = configurationCopy;
    v44 = titleCopy;
    v18->_isPlaceholder = placeholder;
    objc_storeStrong(&v18->_placeholderGlyphConfiguration, configuration);
    objc_storeStrong(&v19->_title, title);
    v19->_maxWidth = width;
    *&v20 = width;
    v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
    widthNumber = v19->_widthNumber;
    v19->_widthNumber = v21;

    v19->_variant = variant;
    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v25 = attributionsCopy;
    v26 = [v25 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v46;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v46 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v45 + 1) + 8 * i);
          groupDisplayName = [v30 groupDisplayName];

          if (groupDisplayName)
          {
            groupDisplayName2 = [v30 groupDisplayName];
            [v23 addObject:groupDisplayName2];
          }

          else
          {
            groupDisplayName2 = [objc_opt_class() recipientsForAttribution:v30];
            [v24 addObjectsFromArray:groupDisplayName2];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v27);
    }

    v33 = objc_opt_class();
    allObjects = [v24 allObjects];
    v35 = [v33 displayNamesForPersons:allObjects];
    [v23 addObjectsFromArray:v35];

    v37 = SLDaemonLogHandle(v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v51 = v25;
      v52 = 2112;
      v53 = v24;
      _os_log_impl(&dword_231772000, v37, OS_LOG_TYPE_DEFAULT, "SLDCollaborationAttributionViewSlotTag attributions: %@ Generated people %@", buf, 0x16u);
    }

    v38 = [v23 copy];
    collaboratorDisplayNames = v19->_collaboratorDisplayNames;
    v19->_collaboratorDisplayNames = v38;

    v40 = [objc_opt_class() conversationDrawingMetadataForAttributions:v25];
    conversationDrawingMetadata = v19->_conversationDrawingMetadata;
    v19->_conversationDrawingMetadata = v40;

    configurationCopy = v43;
    titleCopy = v44;
  }

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  widthNumber = [(SLDCollaborationAttributionViewSlotTag *)self widthNumber];
  v5 = [v3 stringWithFormat:@"<SLDCollaborationAttributionViewSlotTag: %p> maxWidth:[%@]", self, widthNumber];

  return v5;
}

- (id)resolvedStyleForStyle:(id)style
{
  v15 = MEMORY[0x277D777E0];
  styleCopy = style;
  accessibilityButtonShapes = [styleCopy accessibilityButtonShapes];
  accessibilityContrast = [styleCopy accessibilityContrast];
  displayScale = [styleCopy displayScale];
  layoutDirection = [styleCopy layoutDirection];
  localization = [styleCopy localization];
  preferredContentSizeCategory = [styleCopy preferredContentSizeCategory];
  tintColor = [styleCopy tintColor];
  userInterfaceIdiom = [styleCopy userInterfaceIdiom];
  userInterfaceStyle = [styleCopy userInterfaceStyle];

  v13 = [v15 slotStyleWithAccessibilityButtonShapes:accessibilityButtonShapes accessibilityContrast:accessibilityContrast displayRange:1 displayScale:displayScale layoutDirection:layoutDirection legibilityWeight:0 localization:localization preferredContentSizeCategory:preferredContentSizeCategory tintColor:tintColor userInterfaceIdiom:userInterfaceIdiom userInterfaceStyle:userInterfaceStyle];

  return v13;
}

+ (id)conversationDrawingMetadataForAttributions:(id)attributions
{
  v66 = *MEMORY[0x277D85DE8];
  attributionsCopy = attributions;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = attributionsCopy;
  v47 = [obj countByEnumeratingWithState:&v54 objects:v65 count:16];
  if (v47)
  {
    v46 = *v55;
    *&v6 = 138412546;
    v42 = v6;
    v43 = v5;
    selfCopy = self;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v55 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v54 + 1) + 8 * i);
        v9 = [self recipientsForAttribution:{v8, v42}];
        v10 = [v9 count];
        if (!v10)
        {
          v11 = SLDaemonLogHandle(0);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            uniqueIdentifier = [v8 uniqueIdentifier];
            *buf = v42;
            selfCopy5 = self;
            v61 = 2112;
            v62 = uniqueIdentifier;
            _os_log_error_impl(&dword_231772000, v11, OS_LOG_TYPE_ERROR, "[%@] SLDCollaborationAttributionViewSlotTag Found no recipients for attribution with identifier %@", buf, 0x16u);
          }
        }

        v12 = SLDaemonLogHandle(v10);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          uniqueIdentifier2 = [v8 uniqueIdentifier];
          *buf = 138412802;
          selfCopy5 = self;
          v61 = 2112;
          v62 = uniqueIdentifier2;
          v63 = 2112;
          v64 = v9;
          _os_log_impl(&dword_231772000, v12, OS_LOG_TYPE_DEFAULT, "[%@] SLDCollaborationAttributionViewSlotTag ID: %@ found recipients %@", buf, 0x20u);
        }

        v48 = v8;
        v49 = v9;
        if ([v8 isGroupConversation] && objc_msgSend(v9, "count") >= 2)
        {
          firstObject = objc_alloc_init(MEMORY[0x277CBEB18]);
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v15 = v9;
          v16 = [v15 countByEnumeratingWithState:&v50 objects:v58 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v51;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v51 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v50 + 1) + 8 * j);
                v21 = [SLCollaborationAttributionRecipientDrawingMetadata alloc];
                contact = [v20 contact];
                thumbnailImageData = [v20 thumbnailImageData];
                v24 = [(SLCollaborationAttributionRecipientDrawingMetadata *)v21 initWithContact:contact contactImageData:thumbnailImageData];

                [firstObject addObject:v24];
              }

              v17 = [v15 countByEnumeratingWithState:&v50 objects:v58 count:16];
            }

            while (v17);
          }

          v25 = [SLCollaborationAttributionConversationDrawingMetadata alloc];
          groupPhotoPath = [v48 groupPhotoPath];
          groupID = [v48 groupID];
          uUIDString = [(SLCollaborationAttributionRecipientDrawingMetadata *)groupID UUIDString];
          v29 = [(SLCollaborationAttributionConversationDrawingMetadata *)v25 initWithGroupPhotoFileURL:groupPhotoPath recipientDrawingMetadata:firstObject groupID:uUIDString];

          v5 = v43;
          self = selfCopy;
        }

        else
        {
          v30 = [v9 count];
          if (v30 >= 2)
          {
            v31 = SLDaemonLogHandle(v30);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              uniqueIdentifier3 = [v8 uniqueIdentifier];
              *buf = v42;
              selfCopy5 = self;
              v61 = 2112;
              v62 = uniqueIdentifier3;
              _os_log_error_impl(&dword_231772000, v31, OS_LOG_TYPE_ERROR, "[%@] SLDCollaborationAttributionViewSlotTag Found more than one recipient, but attribution.isGroupConversation was NO. attribution.uniqueIdentifier: %@", buf, 0x16u);
            }
          }

          firstObject = [v9 firstObject];
          contact2 = [firstObject contact];
          groupPhotoPath = [contact2 thumbnailImageData];

          if (!groupPhotoPath)
          {
            groupPhotoPath = [firstObject thumbnailImageData];
          }

          v33 = [SLCollaborationAttributionRecipientDrawingMetadata alloc];
          contact3 = [firstObject contact];
          groupID = [(SLCollaborationAttributionRecipientDrawingMetadata *)v33 initWithContact:contact3 contactImageData:groupPhotoPath];

          v29 = [[SLCollaborationAttributionConversationDrawingMetadata alloc] initWithRecipientDrawingMetadata:groupID];
        }

        if (v29)
        {
          [v5 addObject:v29];
        }

        else
        {
          v36 = SLDaemonLogHandle(v35);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            uniqueIdentifier4 = [v48 uniqueIdentifier];
            *buf = v42;
            selfCopy5 = self;
            v61 = 2112;
            v62 = uniqueIdentifier4;
            _os_log_error_impl(&dword_231772000, v36, OS_LOG_TYPE_ERROR, "[%@] SLDCollaborationAttributionViewSlotTag conversationDrawingMetadata was nil! Skipping. attribution.uniqueIdentifier: %@", buf, 0x16u);
          }
        }
      }

      v47 = [obj countByEnumeratingWithState:&v54 objects:v65 count:16];
    }

    while (v47);
  }

  v40 = [v5 copy];

  return v40;
}

+ (id)_personOtherThanPerson:(id)person inArray:(id)array
{
  v17 = *MEMORY[0x277D85DE8];
  personCopy = person;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  arrayCopy = array;
  v7 = [arrayCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ((SLPersonIsEqualToPerson(v10, personCopy) & 1) == 0)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [arrayCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

+ (id)displayNamesForPersons:(id)persons
{
  v19 = *MEMORY[0x277D85DE8];
  personsCopy = persons;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = personsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        shortDisplayName = [v10 shortDisplayName];
        if (shortDisplayName)
        {
          [v4 addObject:shortDisplayName];
        }

        else
        {
          displayName = [v10 displayName];
          [v4 addObject:displayName];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)recipientsForAttribution:(id)attribution
{
  v22 = *MEMORY[0x277D85DE8];
  attributionCopy = attribution;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = +[SLPerson fetchMeContact];
  if ([attributionCopy isFromMe])
  {
    sender = [attributionCopy sender];
  }

  else
  {
    sender = 0;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = attributionCopy;
  relatedPersons = [attributionCopy relatedPersons];
  v8 = [relatedPersons countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(relatedPersons);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        contact = [v12 contact];
        if ([contact isEqual:v5])
        {
        }

        else
        {
          IsEqualToPerson = SLPersonIsEqualToPerson(sender, v12);

          if ((IsEqualToPerson & 1) == 0)
          {
            [v4 addObject:v12];
          }
        }
      }

      v9 = [relatedPersons countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return v4;
}

- (SLDCollaborationAttributionViewSlotTag)initWithCoder:(id)coder
{
  v22[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = SLDCollaborationAttributionViewSlotTag;
  v5 = [(SLDCollaborationAttributionViewSlotTag *)&v21 init];
  if (v5)
  {
    v5->_isPlaceholder = [coderCopy decodeBoolForKey:@"isPlaceholder"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = MEMORY[0x277CBEB98];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"collaboratorDisplayNames"];
    collaboratorDisplayNames = v5->_collaboratorDisplayNames;
    v5->_collaboratorDisplayNames = v11;

    [coderCopy decodeDoubleForKey:@"maxWidth"];
    v5->_maxWidth = v13;
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxWidthNumber"];
    widthNumber = v5->_widthNumber;
    v5->_widthNumber = v14;

    v5->_variant = [coderCopy decodeIntegerForKey:@"variant"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"conversationMetadata"];
    conversationDrawingMetadata = v5->_conversationDrawingMetadata;
    v5->_conversationDrawingMetadata = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbolConfigKey"];
    placeholderGlyphConfiguration = v5->_placeholderGlyphConfiguration;
    v5->_placeholderGlyphConfiguration = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[SLDCollaborationAttributionViewSlotTag isPlaceholder](self forKey:{"isPlaceholder"), @"isPlaceholder"}];
  title = [(SLDCollaborationAttributionViewSlotTag *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  collaboratorDisplayNames = [(SLDCollaborationAttributionViewSlotTag *)self collaboratorDisplayNames];
  [coderCopy encodeObject:collaboratorDisplayNames forKey:@"collaboratorDisplayNames"];

  [(SLDCollaborationAttributionViewSlotTag *)self maxWidth];
  [coderCopy encodeDouble:@"maxWidth" forKey:?];
  widthNumber = [(SLDCollaborationAttributionViewSlotTag *)self widthNumber];
  [coderCopy encodeObject:widthNumber forKey:@"maxWidthNumber"];

  [coderCopy encodeInteger:-[SLDCollaborationAttributionViewSlotTag variant](self forKey:{"variant"), @"variant"}];
  conversationDrawingMetadata = [(SLDCollaborationAttributionViewSlotTag *)self conversationDrawingMetadata];
  [coderCopy encodeObject:conversationDrawingMetadata forKey:@"conversationMetadata"];

  placeholderGlyphConfiguration = [(SLDCollaborationAttributionViewSlotTag *)self placeholderGlyphConfiguration];
  [coderCopy encodeObject:placeholderGlyphConfiguration forKey:@"symbolConfigKey"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setIsPlaceholder:{-[SLDCollaborationAttributionViewSlotTag isPlaceholder](self, "isPlaceholder")}];
  title = [(SLDCollaborationAttributionViewSlotTag *)self title];
  [v4 setTitle:title];

  collaboratorDisplayNames = [(SLDCollaborationAttributionViewSlotTag *)self collaboratorDisplayNames];
  [v4 setCollaboratorDisplayNames:collaboratorDisplayNames];

  [(SLDCollaborationAttributionViewSlotTag *)self maxWidth];
  [v4 setMaxWidth:?];
  widthNumber = [(SLDCollaborationAttributionViewSlotTag *)self widthNumber];
  [v4 setWidthNumber:widthNumber];

  [v4 setVariant:{-[SLDCollaborationAttributionViewSlotTag variant](self, "variant")}];
  conversationDrawingMetadata = [(SLDCollaborationAttributionViewSlotTag *)self conversationDrawingMetadata];
  [v4 setConversationDrawingMetadata:conversationDrawingMetadata];

  placeholderGlyphConfiguration = [(SLDCollaborationAttributionViewSlotTag *)self placeholderGlyphConfiguration];
  [v4 setPlaceholderGlyphConfiguration:placeholderGlyphConfiguration];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    v7 = v6;
    if (v6 == self)
    {
      v20 = 1;
LABEL_48:

      goto LABEL_49;
    }

    isPlaceholder = [(SLDCollaborationAttributionViewSlotTag *)v6 isPlaceholder];
    if (isPlaceholder != [(SLDCollaborationAttributionViewSlotTag *)self isPlaceholder])
    {
      goto LABEL_47;
    }

    [(SLDCollaborationAttributionViewSlotTag *)v7 maxWidth];
    v10 = v9;
    [(SLDCollaborationAttributionViewSlotTag *)self maxWidth];
    if (!SL_CGFloatApproximatelyEqualToFloat(v10, v11))
    {
      goto LABEL_47;
    }

    title = [(SLDCollaborationAttributionViewSlotTag *)self title];
    if (title || ([(SLDCollaborationAttributionViewSlotTag *)v7 title], (conversationDrawingMetadata = objc_claimAutoreleasedReturnValue()) != 0))
    {
      title2 = [(SLDCollaborationAttributionViewSlotTag *)self title];
      if (!title2)
      {
        goto LABEL_43;
      }

      v14 = title2;
      title3 = [(SLDCollaborationAttributionViewSlotTag *)v7 title];
      if (!title3)
      {
        goto LABEL_42;
      }

      v16 = title3;
      title4 = [(SLDCollaborationAttributionViewSlotTag *)self title];
      title5 = [(SLDCollaborationAttributionViewSlotTag *)v7 title];
      v19 = [title4 isEqualToString:title5];

      if (title)
      {

        if (!v19)
        {
          goto LABEL_47;
        }
      }

      else
      {

        if ((v19 & 1) == 0)
        {
          goto LABEL_47;
        }
      }
    }

    collaboratorDisplayNames = [(SLDCollaborationAttributionViewSlotTag *)self collaboratorDisplayNames];
    if (collaboratorDisplayNames || ([(SLDCollaborationAttributionViewSlotTag *)v7 collaboratorDisplayNames], (conversationDrawingMetadata = objc_claimAutoreleasedReturnValue()) != 0))
    {
      collaboratorDisplayNames2 = [(SLDCollaborationAttributionViewSlotTag *)self collaboratorDisplayNames];
      collaboratorDisplayNames3 = [(SLDCollaborationAttributionViewSlotTag *)v7 collaboratorDisplayNames];
      v24 = [collaboratorDisplayNames2 isEqualToArray:collaboratorDisplayNames3];

      if (collaboratorDisplayNames)
      {

        if (!v24)
        {
          goto LABEL_47;
        }
      }

      else
      {

        if ((v24 & 1) == 0)
        {
          goto LABEL_47;
        }
      }
    }

    title = [(SLDCollaborationAttributionViewSlotTag *)self widthNumber];
    if (title || ([(SLDCollaborationAttributionViewSlotTag *)v7 widthNumber], (conversationDrawingMetadata = objc_claimAutoreleasedReturnValue()) != 0))
    {
      widthNumber = [(SLDCollaborationAttributionViewSlotTag *)self widthNumber];
      if (!widthNumber)
      {
        goto LABEL_43;
      }

      v14 = widthNumber;
      widthNumber2 = [(SLDCollaborationAttributionViewSlotTag *)v7 widthNumber];
      if (!widthNumber2)
      {
        goto LABEL_42;
      }

      v27 = widthNumber2;
      widthNumber3 = [(SLDCollaborationAttributionViewSlotTag *)self widthNumber];
      widthNumber4 = [(SLDCollaborationAttributionViewSlotTag *)v7 widthNumber];
      v30 = [widthNumber3 isEqualToNumber:widthNumber4];

      if (title)
      {

        if (!v30)
        {
          goto LABEL_47;
        }
      }

      else
      {

        if ((v30 & 1) == 0)
        {
          goto LABEL_47;
        }
      }
    }

    variant = [(SLDCollaborationAttributionViewSlotTag *)self variant];
    if (variant != [(SLDCollaborationAttributionViewSlotTag *)v7 variant])
    {
      goto LABEL_47;
    }

    title = [(SLDCollaborationAttributionViewSlotTag *)self conversationDrawingMetadata];
    if (!title)
    {
      conversationDrawingMetadata = [(SLDCollaborationAttributionViewSlotTag *)v7 conversationDrawingMetadata];
      if (!conversationDrawingMetadata)
      {
LABEL_36:
        title = [(SLDCollaborationAttributionViewSlotTag *)self placeholderGlyphConfiguration];
        if (!title)
        {
          conversationDrawingMetadata = [(SLDCollaborationAttributionViewSlotTag *)v7 placeholderGlyphConfiguration];
          if (!conversationDrawingMetadata)
          {
            v20 = 1;
LABEL_54:

            goto LABEL_45;
          }
        }

        placeholderGlyphConfiguration = [(SLDCollaborationAttributionViewSlotTag *)self placeholderGlyphConfiguration];
        if (placeholderGlyphConfiguration)
        {
          v39 = placeholderGlyphConfiguration;
          placeholderGlyphConfiguration2 = [(SLDCollaborationAttributionViewSlotTag *)v7 placeholderGlyphConfiguration];
          if (placeholderGlyphConfiguration2)
          {
            v41 = placeholderGlyphConfiguration2;
            placeholderGlyphConfiguration3 = [(SLDCollaborationAttributionViewSlotTag *)self placeholderGlyphConfiguration];
            placeholderGlyphConfiguration4 = [(SLDCollaborationAttributionViewSlotTag *)v7 placeholderGlyphConfiguration];
            v20 = [placeholderGlyphConfiguration3 isEqual:placeholderGlyphConfiguration4];

            if (!title)
            {
              goto LABEL_54;
            }

LABEL_45:

            goto LABEL_48;
          }
        }

        v20 = 0;
        if (!title)
        {
          goto LABEL_54;
        }

        goto LABEL_45;
      }
    }

    conversationDrawingMetadata2 = [(SLDCollaborationAttributionViewSlotTag *)self conversationDrawingMetadata];
    if (!conversationDrawingMetadata2)
    {
LABEL_43:
      v20 = 0;
      if (!title)
      {
        title = conversationDrawingMetadata;
      }

      goto LABEL_45;
    }

    v14 = conversationDrawingMetadata2;
    conversationDrawingMetadata3 = [(SLDCollaborationAttributionViewSlotTag *)v7 conversationDrawingMetadata];
    if (conversationDrawingMetadata3)
    {
      v34 = conversationDrawingMetadata3;
      conversationDrawingMetadata4 = [(SLDCollaborationAttributionViewSlotTag *)self conversationDrawingMetadata];
      conversationDrawingMetadata5 = [(SLDCollaborationAttributionViewSlotTag *)v7 conversationDrawingMetadata];
      v37 = [conversationDrawingMetadata4 isEqualToArray:conversationDrawingMetadata5];

      if (title)
      {

        if (v37)
        {
          goto LABEL_36;
        }
      }

      else
      {

        if (v37)
        {
          goto LABEL_36;
        }
      }

LABEL_47:
      v20 = 0;
      goto LABEL_48;
    }

LABEL_42:

    goto LABEL_43;
  }

  v20 = 0;
LABEL_49:

  return v20;
}

- (unint64_t)hash
{
  widthNumber = [(SLDCollaborationAttributionViewSlotTag *)self widthNumber];
  v4 = [widthNumber hash];
  collaboratorDisplayNames = [(SLDCollaborationAttributionViewSlotTag *)self collaboratorDisplayNames];
  v6 = [collaboratorDisplayNames hash] ^ v4;
  v7 = v6 ^ [(SLDCollaborationAttributionViewSlotTag *)self variant];
  isPlaceholder = [(SLDCollaborationAttributionViewSlotTag *)self isPlaceholder];
  conversationDrawingMetadata = [(SLDCollaborationAttributionViewSlotTag *)self conversationDrawingMetadata];
  v10 = v7 ^ isPlaceholder ^ [conversationDrawingMetadata hash];
  title = [(SLDCollaborationAttributionViewSlotTag *)self title];
  v12 = [title hash];
  placeholderGlyphConfiguration = [(SLDCollaborationAttributionViewSlotTag *)self placeholderGlyphConfiguration];
  v14 = v12 ^ [placeholderGlyphConfiguration hash];

  return v10 ^ v14;
}

@end