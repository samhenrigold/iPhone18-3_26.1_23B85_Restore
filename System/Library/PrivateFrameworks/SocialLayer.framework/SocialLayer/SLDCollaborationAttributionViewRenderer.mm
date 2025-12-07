@interface SLDCollaborationAttributionViewRenderer
+ (id)accessibilityLabelForTag:(id)tag;
+ (id)collaboratorsStringForTag:(id)tag prefixingWith:(BOOL)with;
- (BOOL)shouldShowLabels;
- (BOOL)shouldShowSubtitle;
- (CGImage)newAvatarImage;
- (CGImage)newAvatarImageForConversationDrawingMetadata:(id)metadata allowSnowglobe:(BOOL)snowglobe allowMonogram:(BOOL)monogram;
- (CGImage)newAvatarImageForRecipientDrawingMetadata:(id)metadata allowMonogram:(BOOL)monogram;
- (CGImage)newGroupPhotoImageFromFileURL:(id)l;
- (CGImage)newImageFromData:(id)data;
- (CGImage)newMonogramImageForContact:(id)contact;
- (CGImage)newSnowglobeImageWithCGImages:(id)images;
- (CGRect)drawAvatarWithImageRef:(CGImage *)ref inContext:(CGContext *)context;
- (CGRect)drawGenericGlyphInContext:(CGContext *)context;
- (SLDCollaborationAttributionViewRenderer)initWithStyle:(id)style tag:(id)tag;
- (double)heightForLine:(__CTLine *)line withOptions:(unint64_t)options;
- (id)collaboratorsString;
- (id)withCollaboratorsString;
- (void)drawLine:(__CTLine *)line inRect:(CGRect)rect inContext:(CGContext *)context;
- (void)renderInContext:(CGContext *)context;
@end

@implementation SLDCollaborationAttributionViewRenderer

- (SLDCollaborationAttributionViewRenderer)initWithStyle:(id)style tag:(id)tag
{
  styleCopy = style;
  tagCopy = tag;
  v14.receiver = self;
  v14.super_class = SLDCollaborationAttributionViewRenderer;
  v9 = [(SLDCollaborationAttributionViewRenderer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_slotStyle, style);
    objc_storeStrong(&v10->_slotTag, tag);
    v10->_RTL = [styleCopy layoutDirection] == 1;
    v11 = [[SLCollaborationAttributionViewMetricsProvider alloc] initWithSlotStyle:styleCopy tag:tagCopy];
    metricsProvider = v10->_metricsProvider;
    v10->_metricsProvider = v11;
  }

  return v10;
}

- (void)renderInContext:(CGContext *)context
{
  v79 = *MEMORY[0x277D85DE8];
  v5 = SLDaemonLogHandle(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v73 = 138412290;
    selfCopy5 = self;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "[%@] SLDCollaborationAttributionViewRenderer about to render.", &v73, 0xCu);
  }

  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);
  newAvatarImage = [(SLDCollaborationAttributionViewRenderer *)self newAvatarImage];
  if (newAvatarImage)
  {
    v11 = newAvatarImage;
    [(SLDCollaborationAttributionViewRenderer *)self drawAvatarWithImageRef:newAvatarImage inContext:context];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    CFRelease(v11);
  }

  else
  {
    slotTag = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
    v21 = -[SLDCollaborationAttributionViewRenderer shouldShowGenericIconIfApplicableForVariant:](self, "shouldShowGenericIconIfApplicableForVariant:", [slotTag variant]);

    v23 = SLDaemonLogHandle(v22);
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
    if (v21)
    {
      if (v24)
      {
        v73 = 138412290;
        selfCopy5 = self;
        _os_log_impl(&dword_231772000, v23, OS_LOG_TYPE_INFO, "[%@] SLDCollaborationAttributionViewRenderer Showing generic glyph because avatar image was nil.", &v73, 0xCu);
      }

      [(SLDCollaborationAttributionViewRenderer *)self drawGenericGlyphInContext:context];
      v13 = v25;
      v15 = v26;
      v17 = v27;
      v19 = v28;
    }

    else
    {
      if (v24)
      {
        v73 = 138412290;
        selfCopy5 = self;
        _os_log_impl(&dword_231772000, v23, OS_LOG_TYPE_INFO, "[%@] SLDCollaborationAttributionViewRenderer Not drawing an avatar because avatar image was nil and generic icon was not supported for the current variant.", &v73, 0xCu);
      }

      v19 = v9;
      v17 = v8;
      v15 = v7;
      v13 = v6;
    }
  }

  if ([(SLDCollaborationAttributionViewRenderer *)self shouldShowLabels])
  {
    slotTag2 = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
    if ([slotTag2 variant] == 2)
    {
    }

    else
    {
      slotTag3 = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
      variant = [slotTag3 variant];

      if (variant != 5)
      {
        slotTag4 = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
        title = [slotTag4 title];

        if (title)
        {
          goto LABEL_17;
        }

        goto LABEL_19;
      }
    }

    title = [(SLDCollaborationAttributionViewRenderer *)self collaboratorsString];
    if (title)
    {
LABEL_17:
      metricsProvider = [(SLDCollaborationAttributionViewRenderer *)self metricsProvider];
      v34 = [metricsProvider singleLineTitleForString:title];

      goto LABEL_20;
    }

LABEL_19:
    v34 = 0;
LABEL_20:
    if ([(SLDCollaborationAttributionViewRenderer *)self shouldShowSubtitle])
    {
      withCollaboratorsString = [(SLDCollaborationAttributionViewRenderer *)self withCollaboratorsString];
      if (withCollaboratorsString)
      {
        metricsProvider2 = [(SLDCollaborationAttributionViewRenderer *)self metricsProvider];
        v38 = [metricsProvider2 singleLineSubtitleForString:withCollaboratorsString];
      }

      else
      {
        v38 = 0;
      }
    }

    else
    {
      v38 = 0;
    }

    v80.origin.x = v13;
    v80.origin.y = v15;
    v80.size.width = v17;
    v80.size.height = v19;
    v82.origin.x = v6;
    v82.origin.y = v7;
    v82.size.width = v8;
    v82.size.height = v9;
    v39 = 0.0;
    if (!CGRectEqualToRect(v80, v82))
    {
      metricsProvider3 = [(SLDCollaborationAttributionViewRenderer *)self metricsProvider];
      [metricsProvider3 avatarLabelSpace];
      v39 = v41;
    }

    v81.origin.x = v13;
    v81.origin.y = v15;
    v81.size.width = v17;
    v81.size.height = v19;
    MaxX = CGRectGetMaxX(v81);
    [(SLDCollaborationAttributionViewRenderer *)self heightForLine:v34 withOptions:8];
    v44 = v43;
    v45 = [(SLDCollaborationAttributionViewRenderer *)self heightForLine:v38 withOptions:8];
    v47 = v46;
    v48 = v44 + v46;
    if (v46 > 0.0)
    {
      metricsProvider4 = [(SLDCollaborationAttributionViewRenderer *)self metricsProvider];
      [metricsProvider4 titleSubtitleSpace];
      v48 = v48 + v50;
    }

    v51 = v39 + MaxX;
    if (v48 >= v19)
    {
      v52 = 0.0;
    }

    else
    {
      v52 = (v19 - v48) * 0.5;
    }

    if (v34)
    {
      metricsProvider5 = [(SLDCollaborationAttributionViewRenderer *)self metricsProvider];
      [metricsProvider5 drawingSize];
      v55 = v54 - v51;

      v56 = [(SLDCollaborationAttributionViewRenderer *)self drawLine:v34 inRect:context inContext:v51, v52, v55, v44];
      if (v38)
      {
LABEL_35:
        metricsProvider6 = [(SLDCollaborationAttributionViewRenderer *)self metricsProvider];
        [metricsProvider6 titleSubtitleSpace];
        v59 = v44 + v52 + v58;
        metricsProvider7 = [(SLDCollaborationAttributionViewRenderer *)self metricsProvider];
        [metricsProvider7 drawingSize];
        v62 = v61 - v51;

        [(SLDCollaborationAttributionViewRenderer *)self drawLine:v38 inRect:context inContext:v51, v59, v62, v47];
LABEL_42:

        return;
      }
    }

    else
    {
      v63 = SLDaemonLogHandle(v45);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        slotTag5 = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
        conversationDrawingMetadata = [slotTag5 conversationDrawingMetadata];
        slotTag6 = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
        collaboratorDisplayNames = [slotTag6 collaboratorDisplayNames];
        v73 = 138412802;
        selfCopy5 = self;
        v75 = 2112;
        v76 = conversationDrawingMetadata;
        v77 = 2112;
        v78 = collaboratorDisplayNames;
        _os_log_impl(&dword_231772000, v63, OS_LOG_TYPE_INFO, "[%@] SLDCollaborationAttributionViewRenderer failed to draw a title. conversationMetadata:%@ collaborationDisplayNames:%@.", &v73, 0x20u);
      }

      if (v38)
      {
        goto LABEL_35;
      }
    }

    v68 = SLDaemonLogHandle(v56);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
    {
      slotTag7 = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
      conversationDrawingMetadata2 = [slotTag7 conversationDrawingMetadata];
      slotTag8 = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
      collaboratorDisplayNames2 = [slotTag8 collaboratorDisplayNames];
      v73 = 138412802;
      selfCopy5 = self;
      v75 = 2112;
      v76 = conversationDrawingMetadata2;
      v77 = 2112;
      v78 = collaboratorDisplayNames2;
      _os_log_impl(&dword_231772000, v68, OS_LOG_TYPE_INFO, "[%@] SLDCollaborationAttributionViewRenderer failed to draw a subtitle. conversationMetadata:%@ collaborationDisplayNames:%@.", &v73, 0x20u);
    }

    goto LABEL_42;
  }
}

- (CGImage)newGroupPhotoImageFromFileURL:(id)l
{
  v18 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (lCopy)
  {
    v11 = 0;
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy options:1 error:&v11];
    v6 = v11;
    v7 = v6;
    if (v5)
    {
      v8 = SLDCreateGroupPhotoImageWithData(v5);
    }

    else
    {
      v9 = SLDaemonLogHandle(v6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        selfCopy = self;
        v14 = 2112;
        v15 = lCopy;
        v16 = 2112;
        v17 = v7;
        _os_log_error_impl(&dword_231772000, v9, OS_LOG_TYPE_ERROR, "[%@] SLDCollaborationAttributionViewRenderer failed to retrieve group photo data from file URL %@. error: %@", buf, 0x20u);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGImage)newSnowglobeImageWithCGImages:(id)images
{
  v26[1] = *MEMORY[0x277D85DE8];
  imagesCopy = images;
  maxContacts = [MEMORY[0x277CFBF18] maxContacts];
  v6 = imagesCopy;
  if ([imagesCopy count] > maxContacts)
  {
    v6 = [imagesCopy subarrayWithRange:{0, objc_msgSend(MEMORY[0x277CFBF18], "maxContacts")}];
  }

  v7 = [v6 count];
  MEMORY[0x28223BE20](v7);
  v10 = v26 - v9;
  if (v8 >= 0x200)
  {
    v11 = 512;
  }

  else
  {
    v11 = v8;
  }

  bzero(v26 - v9, v11);
  if ([v6 count])
  {
    v12 = 0;
    do
    {
      v13 = [v6 objectAtIndexedSubscript:v12];
      *&v10[8 * v12] = v13;

      ++v12;
    }

    while ([v6 count] > v12);
  }

  metricsProvider = [(SLDCollaborationAttributionViewRenderer *)self metricsProvider];
  [metricsProvider avatarDiameter];
  v16 = v15;

  v17 = MEMORY[0x277CFBF10];
  slotStyle = [(SLDCollaborationAttributionViewRenderer *)self slotStyle];
  v19 = [v17 renderingScopeWithPointSize:-[SLDCollaborationAttributionViewRenderer isRTL](self scale:"isRTL") rightToLeft:0 style:0 color:{v16, v16, objc_msgSend(slotStyle, "displayScale")}];

  v20 = MEMORY[0x277CFBF20];
  v21 = [v6 count];
  v22 = [v20 imageForAvatarImages:v10 badgeImages:0 badgeTypes:MEMORY[0x277CBEBF8] rect:v21 itemCount:v19 scope:{0.0, 0.0, v16, v16}];
  v23 = CFRetain(v22);
  if (!v22)
  {
    v24 = SLDaemonLogHandle(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(SLDCollaborationAttributionViewRenderer *)self newSnowglobeImageWithCGImages:imagesCopy, v24];
    }
  }

  return v22;
}

- (CGImage)newImageFromData:(id)data
{
  if (!data)
  {
    return 0;
  }

  dataCopy = data;
  bytes = [dataCopy bytes];
  v5 = [dataCopy length];

  v6 = CFDataCreate(0, bytes, v5);
  v7 = CGDataProviderCreateWithCFData(v6);
  ImageAtIndex = v7;
  if (v7)
  {
    v9 = CGImageSourceCreateWithDataProvider(v7, 0);
    CFRelease(ImageAtIndex);
    if (v9)
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v9, 0, 0);
      CFRelease(v9);
    }

    else
    {
      ImageAtIndex = 0;
    }
  }

  CFRelease(v6);
  return ImageAtIndex;
}

- (CGImage)newMonogramImageForContact:(id)contact
{
  contactCopy = contact;
  if (!contactCopy)
  {
LABEL_6:
    Image = 0;
    goto LABEL_7;
  }

  slotStyle = [(SLDCollaborationAttributionViewRenderer *)self slotStyle];
  displayScale = [slotStyle displayScale];

  metricsProvider = [(SLDCollaborationAttributionViewRenderer *)self metricsProvider];
  [metricsProvider avatarDiameter];
  v9 = v8;

  v10 = v9 * displayScale;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v12 = vcvtpd_s64_f64(v10);
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v14 = CGBitmapContextCreate(0, v12, v12, 8uLL, AlignedBytesPerRow, DeviceRGB, 1u);
  slotStyle2 = [(SLDCollaborationAttributionViewRenderer *)self slotStyle];
  SLDRenderContactMonogramInContextAtRect(slotStyle2, contactCopy, v14, 0, v10, 0.0, 0.0, v10, v10);

  Image = CGBitmapContextCreateImage(v14);
  CGContextRelease(v14);
  CGColorSpaceRelease(DeviceRGB);
  if (!Image)
  {
    v18 = SLDaemonLogHandle(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationAttributionViewRenderer newMonogramImageForContact:];
    }

    goto LABEL_6;
  }

LABEL_7:

  return Image;
}

- (CGImage)newAvatarImageForConversationDrawingMetadata:(id)metadata allowSnowglobe:(BOOL)snowglobe allowMonogram:(BOOL)monogram
{
  monogramCopy = monogram;
  snowglobeCopy = snowglobe;
  v38 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  if (![metadataCopy isGroupConversation])
  {
    recipientDrawingMetadata = [metadataCopy recipientDrawingMetadata];
    firstObject = [recipientDrawingMetadata firstObject];

    if (firstObject)
    {
      v17 = [(SLDCollaborationAttributionViewRenderer *)self newAvatarImageForRecipientDrawingMetadata:firstObject allowMonogram:monogramCopy];
LABEL_21:
      v13 = v17;
LABEL_28:

      goto LABEL_29;
    }

    v27 = SLDaemonLogHandle(v19);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      selfCopy3 = self;
      v36 = 2112;
      v37 = metadataCopy;
      _os_log_impl(&dword_231772000, v27, OS_LOG_TYPE_INFO, "[%@] SLDCollaborationAttributionViewRenderer Returning nil for avatar image because recipient drawing metadata was nil. %@.", buf, 0x16u);
    }

LABEL_27:
    v13 = 0;
    goto LABEL_28;
  }

  groupID = [metadataCopy groupID];
  if (!groupID || (v10 = groupID, [metadataCopy groupPhotoFileURL], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
  {
    if (snowglobeCopy)
    {
      firstObject = objc_alloc_init(MEMORY[0x277CBEB18]);
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      recipientDrawingMetadata2 = [metadataCopy recipientDrawingMetadata];
      v21 = [recipientDrawingMetadata2 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v30;
        do
        {
          v24 = 0;
          do
          {
            if (*v30 != v23)
            {
              objc_enumerationMutation(recipientDrawingMetadata2);
            }

            v25 = [(SLDCollaborationAttributionViewRenderer *)self newAvatarImageForRecipientDrawingMetadata:*(*(&v29 + 1) + 8 * v24) allowMonogram:1];
            if (v25)
            {
              v26 = v25;
              [firstObject addObject:v25];
              CFRelease(v26);
            }

            ++v24;
          }

          while (v22 != v24);
          v22 = [recipientDrawingMetadata2 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v22);
      }

      v17 = [(SLDCollaborationAttributionViewRenderer *)self newSnowglobeImageWithCGImages:firstObject];
      goto LABEL_21;
    }

    firstObject = SLDaemonLogHandle(groupID);
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      selfCopy3 = self;
      v36 = 2112;
      v37 = metadataCopy;
      _os_log_impl(&dword_231772000, firstObject, OS_LOG_TYPE_INFO, "[%@] SLDCollaborationAttributionViewRenderer Returning nil for avatar image because there was no group photo and snowglobes aren't allowed. %@.", buf, 0x16u);
    }

    goto LABEL_27;
  }

  groupID2 = [metadataCopy groupID];
  v13 = SLDCreateGroupPhotoImageWithGroupID(groupID2);

  if (!v13)
  {
    v15 = SLDaemonLogHandle(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      selfCopy3 = self;
      v36 = 2112;
      v37 = metadataCopy;
      _os_log_impl(&dword_231772000, v15, OS_LOG_TYPE_INFO, "[%@] SLDCollaborationAttributionViewRenderer Failed to get avatar image from IMSPI. Trying with groupPhotoFileURL. %@.", buf, 0x16u);
    }

    firstObject = [metadataCopy groupPhotoFileURL];
    v17 = [(SLDCollaborationAttributionViewRenderer *)self newGroupPhotoImageFromFileURL:firstObject];
    goto LABEL_21;
  }

LABEL_29:

  return v13;
}

- (CGImage)newAvatarImageForRecipientDrawingMetadata:(id)metadata allowMonogram:(BOOL)monogram
{
  monogramCopy = monogram;
  v18 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  contact = [metadataCopy contact];
  if (!contact)
  {
    v9 = SLDaemonLogHandle(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      selfCopy2 = self;
      v16 = 2112;
      v17 = metadataCopy;
      _os_log_impl(&dword_231772000, v9, OS_LOG_TYPE_INFO, "[%@] SLDCollaborationAttributionViewRenderer Returning nil for avatar image because recipient contact was nil. %@.", &v14, 0x16u);
    }

    goto LABEL_15;
  }

  contactImageData = [metadataCopy contactImageData];
  v9 = contactImageData;
  if (!contactImageData)
  {
    if (monogramCopy)
    {
LABEL_11:
      v10 = [(SLDCollaborationAttributionViewRenderer *)self newMonogramImageForContact:contact];
      goto LABEL_16;
    }

    v12 = SLDaemonLogHandle(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      selfCopy2 = self;
      v16 = 2112;
      v17 = metadataCopy;
      _os_log_impl(&dword_231772000, v12, OS_LOG_TYPE_INFO, "[%@] SLDCollaborationAttributionViewRenderer Returning nil for avatar image because there was no contact photo and monograms aren't allowed. %@.", &v14, 0x16u);
    }

LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  v10 = [(SLDCollaborationAttributionViewRenderer *)self newImageFromData:contactImageData];
  if (!v10 && monogramCopy)
  {
    v11 = SLDaemonLogHandle(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationAttributionViewRenderer newAvatarImageForRecipientDrawingMetadata:allowMonogram:];
    }

    goto LABEL_11;
  }

LABEL_16:

  return v10;
}

- (CGImage)newAvatarImage
{
  v32 = *MEMORY[0x277D85DE8];
  slotTag = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
  isPlaceholder = [slotTag isPlaceholder];

  if (isPlaceholder)
  {
    conversationDrawingMetadata = SLDaemonLogHandle(v5);
    if (os_log_type_enabled(conversationDrawingMetadata, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_231772000, conversationDrawingMetadata, OS_LOG_TYPE_INFO, "[%@] SLDCollaborationAttributionViewRenderer Returning nil for avatar image because slot tag isPlaceholder was YES.", buf, 0xCu);
    }

    goto LABEL_24;
  }

  slotTag2 = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
  conversationDrawingMetadata = [slotTag2 conversationDrawingMetadata];

  slotTag3 = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
  v9 = -[SLDCollaborationAttributionViewRenderer shouldShowSnowglobeIfApplicableForVariant:](self, "shouldShowSnowglobeIfApplicableForVariant:", [slotTag3 variant]);

  slotTag4 = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
  v11 = -[SLDCollaborationAttributionViewRenderer shouldShowMonogramIfApplicableForVariant:](self, "shouldShowMonogramIfApplicableForVariant:", [slotTag4 variant]);

  if ([conversationDrawingMetadata count]== 1)
  {
    firstObject = [conversationDrawingMetadata firstObject];
    v13 = [(SLDCollaborationAttributionViewRenderer *)self newAvatarImageForConversationDrawingMetadata:firstObject allowSnowglobe:v9 allowMonogram:v11];

    goto LABEL_25;
  }

  v14 = [conversationDrawingMetadata count];
  if (v14 < 2)
  {
    v22 = SLDaemonLogHandle(v14);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy3 = self;
      v23 = "[%@] SLDCollaborationAttributionViewRenderer Returning nil for avatar image because slot tag conversationDrawingMetadata was empty.";
LABEL_22:
      _os_log_impl(&dword_231772000, v22, OS_LOG_TYPE_INFO, v23, buf, 0xCu);
    }

LABEL_23:

LABEL_24:
    v13 = 0;
    goto LABEL_25;
  }

  if (!v9)
  {
    v22 = SLDaemonLogHandle(v14);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy3 = self;
      v23 = "[%@] SLDCollaborationAttributionViewRenderer Returning nil for avatar image because snowglobes were not allowed for the current variant.";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  conversationDrawingMetadata = conversationDrawingMetadata;
  v16 = [conversationDrawingMetadata countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(conversationDrawingMetadata);
        }

        v20 = [(SLDCollaborationAttributionViewRenderer *)self newAvatarImageForConversationDrawingMetadata:*(*(&v25 + 1) + 8 * i) allowSnowglobe:0 allowMonogram:1, v25];
        if (v20)
        {
          v21 = v20;
          [v15 addObject:v20];
          CFRelease(v21);
        }
      }

      v17 = [conversationDrawingMetadata countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v17);
  }

  v13 = [(SLDCollaborationAttributionViewRenderer *)self newSnowglobeImageWithCGImages:v15];
LABEL_25:

  return v13;
}

- (CGRect)drawGenericGlyphInContext:(CGContext *)context
{
  metricsProvider = [(SLDCollaborationAttributionViewRenderer *)self metricsProvider];
  [metricsProvider drawingSize];
  v7 = v6;
  v9 = v8;

  slotStyle = [(SLDCollaborationAttributionViewRenderer *)self slotStyle];
  displayScale = [slotStyle displayScale];

  slotTag = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
  placeholderGlyphConfiguration = [slotTag placeholderGlyphConfiguration];

  coreUISize = [placeholderGlyphConfiguration coreUISize];
  weight = [placeholderGlyphConfiguration weight];
  [placeholderGlyphConfiguration pointSize];
  if (v16 > 0.0)
  {
    [placeholderGlyphConfiguration pointSize];
    v19 = v20;
  }

  else
  {
    metricsProvider2 = [(SLDCollaborationAttributionViewRenderer *)self metricsProvider];
    [metricsProvider2 avatarDiameter];
    v19 = SLRoundToScale(v18, displayScale);
  }

  if (!weight)
  {
    weight = 4;
  }

  slotStyle2 = [(SLDCollaborationAttributionViewRenderer *)self slotStyle];
  v22 = SLDSystemVectorGlyphWithSlotStyle(slotStyle2, @"person.crop.circle.badge.checkmark", coreUISize, weight, v19);

  v23 = objc_alloc(MEMORY[0x277D77800]);
  slotStyle3 = [(SLDCollaborationAttributionViewRenderer *)self slotStyle];
  v25 = [v23 initWithVectorGlyph:v22 tintColor:{objc_msgSend(slotStyle3, "tintColor")}];

  [v22 contentBoundsUnrounded];
  v27 = v26;
  [v22 alignmentRectUnrounded];
  v29 = v27 - v28;
  [v22 baselineOffsetUnrounded];
  v31 = v29 - v30;
  [v22 capHeightUnrounded];
  v33 = (v31 + v31 - v32) * 0.5;
  [v22 contentBoundsUnrounded];
  v35 = (v7 - v34) * 0.5;
  [v22 contentBoundsUnrounded];
  v37 = (v9 - v36) * 0.5;
  [v22 contentBoundsUnrounded];
  v39 = v38;
  [v22 contentBoundsUnrounded];
  v41 = v40;
  [v22 contentBoundsUnrounded];
  v43 = v37 + v42 * 0.5 - v33;
  [v22 alignmentRectUnrounded];
  v45 = v35 + v44;
  [v22 alignmentRectUnrounded];
  v47 = v46 + v43;
  v48 = SLRoundToScale(v45, displayScale);
  v49 = SLRoundToScale(v47, displayScale);
  v50 = v35 + v48 - v45;
  v51 = v43 + v49 - v47;
  CGContextSaveGState(context);
  [v25 drawInContext:context atPoint:{v50, v51}];
  CGContextRestoreGState(context);

  v52 = v50;
  v53 = v51;
  v54 = v39;
  v55 = v41;
  result.size.height = v55;
  result.size.width = v54;
  result.origin.y = v53;
  result.origin.x = v52;
  return result;
}

- (CGRect)drawAvatarWithImageRef:(CGImage *)ref inContext:(CGContext *)context
{
  metricsProvider = [(SLDCollaborationAttributionViewRenderer *)self metricsProvider];
  [metricsProvider avatarDiameter];
  v9 = v8;

  metricsProvider2 = [(SLDCollaborationAttributionViewRenderer *)self metricsProvider];
  [metricsProvider2 drawingSize];
  v12 = v11 - v9;

  CGImageRetain(ref);
  CGContextSaveGState(context);
  metricsProvider3 = [(SLDCollaborationAttributionViewRenderer *)self metricsProvider];
  [metricsProvider3 drawingSize];
  CGContextTranslateCTM(context, 0.0, v14);

  CGContextScaleCTM(context, 1.0, -1.0);
  CGContextBeginPath(context);
  v19.origin.x = 0.0;
  v19.origin.y = v12;
  v19.size.width = v9;
  v19.size.height = v9;
  CGContextAddEllipseInRect(context, v19);
  CGContextClip(context);
  CGContextClosePath(context);
  v20.origin.x = 0.0;
  v20.origin.y = v12;
  v20.size.width = v9;
  v20.size.height = v9;
  CGContextDrawImage(context, v20, ref);
  CGContextRestoreGState(context);
  CGImageRelease(ref);
  v15 = 0.0;
  v16 = v12;
  v17 = v9;
  v18 = v9;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

+ (id)accessibilityLabelForTag:(id)tag
{
  tagCopy = tag;
  if ((![tagCopy variant] || objc_msgSend(tagCopy, "variant") == 3) && (objc_msgSend(tagCopy, "collaboratorDisplayNames"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v5))
  {
    v6 = [SLDCollaborationAttributionViewRenderer collaboratorsStringForTag:tagCopy prefixingWith:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldShowSubtitle
{
  slotTag = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
  variant = [slotTag variant];
  if (variant)
  {
    slotTag2 = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
    if ([slotTag2 variant] != 3)
    {
      v6 = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  slotTag3 = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
  collaboratorDisplayNames = [slotTag3 collaboratorDisplayNames];
  v6 = [collaboratorDisplayNames count] != 0;

  if (variant)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v6;
}

- (BOOL)shouldShowLabels
{
  slotTag = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
  if ([slotTag variant] == 1)
  {
    v4 = 0;
  }

  else
  {
    slotTag2 = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
    v4 = [slotTag2 variant] != 4;
  }

  return v4;
}

- (double)heightForLine:(__CTLine *)line withOptions:(unint64_t)options
{
  if (!line)
  {
    return 0.0;
  }

  v5 = 0.0;
  ascent = 0.0;
  CTLineGetTypographicBounds(line, &ascent, &v5, 0);
  return ascent + v5;
}

- (id)collaboratorsString
{
  slotTag = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
  v3 = [SLDCollaborationAttributionViewRenderer collaboratorsStringForTag:slotTag prefixingWith:0];

  return v3;
}

- (id)withCollaboratorsString
{
  slotTag = [(SLDCollaborationAttributionViewRenderer *)self slotTag];
  v3 = [SLDCollaborationAttributionViewRenderer collaboratorsStringForTag:slotTag prefixingWith:1];

  return v3;
}

+ (id)collaboratorsStringForTag:(id)tag prefixingWith:(BOOL)with
{
  collaboratorDisplayNames = [tag collaboratorDisplayNames];
  v6 = [collaboratorDisplayNames mutableCopy];

  if (![v6 count])
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = SLFrameworkBundle(0);
    v14 = v13;
    if (with)
    {
      v15 = @"With nobody";
    }

    else
    {
      v15 = @"nobody";
    }

    v19 = [v13 localizedStringForKey:v15 value:&stru_28468DAB8 table:@"SocialLayer"];
    firstObject2 = [v12 stringWithFormat:v19];
    goto LABEL_26;
  }

  if ([v6 count] != 1)
  {
    if ([v6 count] == 2)
    {
      v16 = MEMORY[0x277CCACA8];
      v17 = SLFrameworkBundle(2);
      v14 = v17;
      if (with)
      {
        v18 = @"With %@ and %@";
      }

      else
      {
        v18 = @"%@ and %@";
      }

      v19 = [v17 localizedStringForKey:v18 value:&stru_28468DAB8 table:@"SocialLayer"];
      v24 = [v6 objectAtIndexedSubscript:0];
      v25 = [v6 objectAtIndexedSubscript:1];
      [v16 stringWithFormat:v19, v24, v25, v29];
    }

    else
    {
      v20 = [v6 count];
      v21 = MEMORY[0x277CCACA8];
      v22 = SLFrameworkBundle(v20);
      v14 = v22;
      if (v20 == 3)
      {
        if (with)
        {
          v23 = @"With %@, %@ & %@";
        }

        else
        {
          v23 = @"%@, %@ & %@";
        }

        v19 = [v22 localizedStringForKey:v23 value:&stru_28468DAB8 table:@"SocialLayer"];
        v24 = [v6 objectAtIndexedSubscript:0];
        v25 = [v6 objectAtIndexedSubscript:1];
        v27 = [v6 objectAtIndexedSubscript:2];
        firstObject2 = [v21 stringWithFormat:v19, v24, v25, v27];

        goto LABEL_25;
      }

      if (with)
      {
        v26 = @"WITH_@_@_AND_N_OTHERS_FORMAT";
      }

      else
      {
        v26 = @"@_@_AND_N_OTHERS_FORMAT";
      }

      v19 = [v22 localizedStringForKey:v26 value:&stru_28468DAB8 table:@"SocialLayer"];
      v24 = [v6 objectAtIndexedSubscript:0];
      v25 = [v6 objectAtIndexedSubscript:1];
      [v21 stringWithFormat:v19, v24, v25, objc_msgSend(v6, "count") - 2];
    }
    firstObject2 = ;
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  if (with)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = SLFrameworkBundle(1);
    v9 = [v8 localizedStringForKey:@"With %@" value:&stru_28468DAB8 table:@"SocialLayer"];
    firstObject = [v6 firstObject];
    firstObject2 = [v7 stringWithFormat:v9, firstObject];
  }

  else
  {
    firstObject2 = [v6 firstObject];
  }

LABEL_27:

  return firstObject2;
}

- (void)drawLine:(__CTLine *)line inRect:(CGRect)rect inContext:(CGContext *)context
{
  y = rect.origin.y;
  x = rect.origin.x;
  CGContextSaveGState(context);
  CGContextSetFontRenderingStyle();
  memset(&v10, 0, sizeof(v10));
  CGAffineTransformMakeScale(&v10, 1.0, -1.0);
  v9 = v10;
  CGContextSetTextMatrix(context, &v9);
  BoundsWithOptions = CTLineGetBoundsWithOptions(line, 8uLL);
  CGContextTranslateCTM(context, x, BoundsWithOptions.origin.y + y + BoundsWithOptions.size.height);
  CTLineDraw(line, context);
  CGContextRestoreGState(context);
}

- (void)newSnowglobeImageWithCGImages:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2048;
  v7 = [a2 count];
  _os_log_error_impl(&dword_231772000, a3, OS_LOG_TYPE_ERROR, "[%@] SLDCollaborationAttributionViewRenderer Had images, but the snowglobe image ref was still nil. cgImages.count: %li", &v4, 0x16u);
}

@end