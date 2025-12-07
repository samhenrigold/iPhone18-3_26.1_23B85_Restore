@interface CKLocationMediaObject
+ (id)UTITypes;
+ (id)placeholderPreviewCache;
+ (id)placeholderPreviewForWidth:(double)width orientation:(char)orientation;
+ (id)vcardDataFromCLLocation:(id)location;
- (BOOL)isDroppedPin;
- (CGSize)bbSize;
- (CKLocationMediaObject)initWithTransfer:(id)transfer context:(id)context forceInlinePreview:(BOOL)preview;
- (CLLocationCoordinate2D)coordinate;
- (NSString)title;
- (id)attachmentSummary:(unint64_t)summary;
- (id)bbPreviewFillToSize:(CGSize)size;
- (id)generatePlaceholderThumbnailFillToSize:(CGSize)size contentAlignmentInsets:(UIEdgeInsets)insets;
- (id)generatePlaceholderThumbnailForWidth:(double)width orientation:(char)orientation;
- (id)generateThumbnailFillToSize:(CGSize)size contentAlignmentInsets:(UIEdgeInsets)insets;
- (id)mapItem;
- (id)pasteboardItemProvider;
- (id)previewCacheKeyWithOrientation:(char)orientation;
- (id)previewCachesFileURLWithOrientation:(char)orientation extension:(id)extension generateIntermediaries:(BOOL)intermediaries;
- (id)previewForWidth:(double)width orientation:(char)orientation;
- (id)previewItemTitle;
- (id)rtfDocumentItemsWithFormatString:(id)string selectedTextRange:(_NSRange)range;
- (id)transcriptTraitCollection;
- (id)vCardURLProperties;
- (void)coordinate;
@end

@implementation CKLocationMediaObject

- (id)mapItem
{
  v3 = MEMORY[0x193AF5EC0](@"MKPlacemark", @"MapKit");
  v4 = MEMORY[0x193AF5EC0](@"MKMapItem", @"MapKit");
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = v4;
    data = [(CKMediaObject *)self data];
    v33 = 0;
    v9 = [MEMORY[0x1E695CE30] contactsWithData:data error:&v33];
    if ([v9 count])
    {
      v32 = data;
      firstObject = [v9 firstObject];
      postalAddresses = [firstObject postalAddresses];
      if ([postalAddresses count])
      {
        v31 = [postalAddresses objectAtIndex:0];
      }

      else
      {
        v31 = 0;
      }

      phoneNumbers = [firstObject phoneNumbers];
      if ([phoneNumbers count])
      {
        v13 = [phoneNumbers objectAtIndex:0];
      }

      else
      {
        v13 = 0;
      }

      urlAddresses = [firstObject urlAddresses];
      if ([urlAddresses count])
      {
        lastObject = [urlAddresses lastObject];
      }

      else
      {
        lastObject = 0;
      }

      v14 = v31;
      data = v32;
    }

    else
    {
      lastObject = 0;
      v13 = 0;
      v14 = 0;
    }

    v17 = [v3 alloc];
    [(CKLocationMediaObject *)self coordinate];
    v19 = v18;
    v21 = v20;
    value = [v14 value];
    v23 = [v17 initWithCoordinate:value postalAddress:{v19, v21}];

    v6 = [[v7 alloc] initWithPlacemark:v23];
    value2 = [v13 value];
    stringValue = [value2 stringValue];
    [v6 setPhoneNumber:stringValue];

    if (lastObject)
    {
      v26 = MEMORY[0x1E695DFF8];
      value3 = [lastObject value];
      v28 = [v26 URLWithString:value3];
      [v6 setUrl:v28];
    }

    title = [(CKLocationMediaObject *)self title];
    [v6 setName:title];
  }

  return v6;
}

+ (id)vcardDataFromCLLocation:(id)location
{
  v28[1] = *MEMORY[0x1E69E9840];
  [location coordinate];
  v3 = [MEMORY[0x1E696AEC0] __ck_appleMapsURLStringForCoordinate:0 coordinateName:?];
  v4 = objc_alloc_init(MEMORY[0x1E695CD58]);
  if (v3 && [v3 length])
  {
    v5 = [v4 mutableCopy];
    urlAddresses = [v5 urlAddresses];
    v7 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:@"map url" value:v3];
    v8 = [urlAddresses arrayByAddingObject:v7];

    [v5 setUrlAddresses:v8];
    v9 = +[CKUIBehavior sharedBehaviors];
    locationRelativeDateFormatter = [v9 locationRelativeDateFormatter];

    date = [MEMORY[0x1E695DF00] date];
    v12 = [locationRelativeDateFormatter stringFromDate:date];

    v13 = MEMORY[0x1E696AEC0];
    v15 = CKFrameworkBundle(v14);
    v16 = [v15 localizedStringForKey:@"LOCATION_FOOTER_DETAILS_VIEW" value:&stru_1F04268F8 table:@"ChatKit"];
    v17 = [v13 stringWithFormat:v16, v12];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v20 = @"\u200F";
    }

    else
    {
      v20 = @"\u200E";
    }

    v21 = [(__CFString *)v20 stringByAppendingString:v17];

    [v5 setGivenName:v21];
    [v5 setUrlAddresses:v8];
    v22 = [v5 copy];

    v4 = v22;
  }

  v23 = MEMORY[0x1E695CE30];
  v28[0] = v4;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  v27 = 0;
  v25 = [v23 dataWithContacts:v24 error:&v27];

  return v25;
}

+ (id)placeholderPreviewForWidth:(double)width orientation:(char)orientation
{
  orientationCopy = orientation;
  v6 = objc_alloc_init(CKLocationMediaObject);
  v7 = [(CKLocationMediaObject *)v6 previewForWidth:orientationCopy orientation:width];

  return v7;
}

+ (id)UTITypes
{
  v6[2] = *MEMORY[0x1E69E9840];
  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963710], @"loc.vcf", *MEMORY[0x1E69638D8]);
  v3 = *MEMORY[0x1E69A6890];
  v6[0] = PreferredIdentifierForTag;
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

- (id)attachmentSummary:(unint64_t)summary
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = IMSharedUtilitiesFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"%lu Locations" value:&stru_1F04268F8 table:@"IMSharedUtilities"];
  summary = [v4 localizedStringWithFormat:v6, summary];

  return summary;
}

- (CKLocationMediaObject)initWithTransfer:(id)transfer context:(id)context forceInlinePreview:(BOOL)preview
{
  v9.receiver = self;
  v9.super_class = CKLocationMediaObject;
  v5 = [(CKMediaObject *)&v9 initWithTransfer:transfer context:context forceInlinePreview:preview];
  v7 = v5;
  if (v5)
  {
    [(CKLocationMediaObject *)v5 setCoordinate:__kCLLocationCoordinate2DInvalid(v5, v6)];
  }

  return v7;
}

- (NSString)title
{
  if ([(CKContactMediaObject *)self generatePreviewOutOfProcess])
  {
    contactMediaInfo = [(CKContactMediaObject *)self contactMediaInfo];
    v4 = contactMediaInfo;
    if (contactMediaInfo)
    {
      v5 = [contactMediaInfo objectForKeyedSubscript:@"contactFormatterTitle"];
      if (v5 || ([v4 objectForKeyedSubscript:@"organizationNameTitle"], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        organizationName = v5;
LABEL_12:
        if (![organizationName isEqualToString:@"Current Location"])
        {
          goto LABEL_28;
        }

        v13 = +[CKUIBehavior sharedBehaviors];
        locationRelativeDateFormatter = [v13 locationRelativeDateFormatter];

        time = [(CKMediaObject *)self time];
        goto LABEL_22;
      }
    }

    v36.receiver = self;
    v36.super_class = CKLocationMediaObject;
    title = [(CKContactMediaObject *)&v36 title];
    organizationName = title;
    if (v4)
    {
      goto LABEL_12;
    }

    v12 = [title isEqualToString:@"Current Location"];
    if (!v12)
    {
      goto LABEL_12;
    }

LABEL_17:
    locationRelativeDateFormatter = CKFrameworkBundle(v12);
    v17 = [locationRelativeDateFormatter localizedStringForKey:@"LOCATING" value:&stru_1F04268F8 table:@"ChatKit"];
LABEL_27:

    organizationName = v17;
    goto LABEL_28;
  }

  vCardSummary = [(CKContactMediaObject *)self vCardSummary];
  v4 = vCardSummary;
  if (vCardSummary && [vCardSummary contactCount])
  {
    avatarContacts = [v4 avatarContacts];
    firstObject = [avatarContacts firstObject];

    v10 = [MEMORY[0x1E695CD80] stringFromContact:firstObject style:0];
    if (v10)
    {
      organizationName = v10;

      goto LABEL_18;
    }

    organizationName = [firstObject organizationName];

    if (organizationName)
    {
      goto LABEL_18;
    }
  }

  v35.receiver = self;
  v35.super_class = CKLocationMediaObject;
  title2 = [(CKContactMediaObject *)&v35 title];
  organizationName = title2;
  if (!v4)
  {
    v12 = [title2 isEqualToString:@"Current Location"];
    if (v12)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  v18 = [organizationName isEqualToString:@"Current Location"];
  if ((v18 & 1) != 0 || (CKFrameworkBundle(v18), v19 = objc_claimAutoreleasedReturnValue(), [v19 localizedStringForKey:@"Current Location" value:&stru_1F04268F8 table:@"ChatKit"], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(organizationName, "isEqualToString:", v20), v20, v19, v21))
  {
    v22 = +[CKUIBehavior sharedBehaviors];
    locationRelativeDateFormatter = [v22 locationRelativeDateFormatter];

    time2 = [(CKMediaObject *)self time];
    v24 = [locationRelativeDateFormatter stringFromDate:time2];

    if (v24)
    {
LABEL_23:
      v27 = MEMORY[0x1E696AEC0];
      v28 = CKFrameworkBundle(v25);
      v29 = [v28 localizedStringForKey:@"LOCATION_FOOTER_DETAILS_VIEW" value:&stru_1F04268F8 table:@"ChatKit"];
      v30 = [v27 stringWithFormat:v29, v24];

      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

      if (userInterfaceLayoutDirection == 1)
      {
        v33 = @"\u200F";
      }

      else
      {
        v33 = @"\u200E";
      }

      v17 = [(__CFString *)v33 stringByAppendingString:v30];

      organizationName = v24;
      goto LABEL_27;
    }

    time = [MEMORY[0x1E695DF00] now];
LABEL_22:
    v26 = time;
    v24 = [locationRelativeDateFormatter stringFromDate:time];

    goto LABEL_23;
  }

LABEL_28:

  return organizationName;
}

- (id)previewCacheKeyWithOrientation:(char)orientation
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = CKOrientedPreviewCacheKey(self, orientation);
  transcriptTraitCollection = [(CKLocationMediaObject *)self transcriptTraitCollection];
  v7 = [v4 stringWithFormat:@"%@-%zd", v5, objc_msgSend(transcriptTraitCollection, "userInterfaceStyle")];

  return v7;
}

- (id)previewCachesFileURLWithOrientation:(char)orientation extension:(id)extension generateIntermediaries:(BOOL)intermediaries
{
  v12.receiver = self;
  v12.super_class = CKLocationMediaObject;
  v6 = [(CKMediaObject *)&v12 previewCachesFileURLWithOrientation:orientation extension:extension generateIntermediaries:intermediaries];
  v7 = MEMORY[0x1E696AEC0];
  transcriptTraitCollection = [(CKLocationMediaObject *)self transcriptTraitCollection];
  v9 = [v7 stringWithFormat:@"%ld", objc_msgSend(transcriptTraitCollection, "userInterfaceStyle")];

  v10 = IMAttachmentPreviewFileURLFromURLWithSuffix();

  return v10;
}

- (id)previewForWidth:(double)width orientation:(char)orientation
{
  orientationCopy = orientation;
  v41 = *MEMORY[0x1E69E9840];
  if ([(CKMediaObject *)self transcoderPreviewGenerationFailed])
  {
    v7 = 0;
    goto LABEL_17;
  }

  if (previewForWidth_orientation___pred_CLLocationCoordinate2DIsValidCoreLocation != -1)
  {
    [CKLocationMediaObject previewForWidth:orientation:];
  }

  v8 = [(CKLocationMediaObject *)self previewCacheKeyWithOrientation:orientationCopy];
  transfer = [(CKMediaObject *)self transfer];
  if (!-[CKMediaObject isPreviewable](self, "isPreviewable") || ([transfer isFileDataReady] & 1) == 0 && (objc_msgSend(transfer, "isRestoring") & 1) == 0)
  {
    *&buf = orientationCopy;
    *(&buf + 1) = [(CKLocationMediaObject *)self isDroppedPin];
    transcriptTraitCollection = [(CKLocationMediaObject *)self transcriptTraitCollection];
    *(&buf + 1) = [transcriptTraitCollection userInterfaceStyle];

    v11 = [MEMORY[0x1E696B098] value:&buf withObjCType:"{?=cBq}"];
    v12 = +[CKLocationMediaObject placeholderPreviewCache];
    v13 = [v12 objectForKey:v11];

    if (!v13)
    {
      v14 = [(CKLocationMediaObject *)self generatePlaceholderThumbnailForWidth:orientationCopy orientation:width];
      v39.receiver = self;
      v39.super_class = CKLocationMediaObject;
      v13 = [(CKMediaObject *)&v39 generatePreviewFromThumbnail:v14 width:orientationCopy orientation:width];

      if (v13)
      {
        if (v11)
        {
          v15 = +[CKLocationMediaObject placeholderPreviewCache];
          [v15 setObject:v13 forKey:v11];
        }
      }
    }

    v7 = v13;

    goto LABEL_16;
  }

  v38.receiver = self;
  v38.super_class = CKLocationMediaObject;
  v7 = [(CKMediaObject *)&v38 previewForWidth:orientationCopy orientation:width];
  if (!v7)
  {
    if ([(CKContactMediaObject *)self generatePreviewOutOfProcess])
    {
      [(CKMediaObject *)self generateOOPPreviewForWidth:orientationCopy orientation:width];
    }

    else if ((previewForWidth_orientation___CLLocationCoordinate2DIsValid)([(CKLocationMediaObject *)self coordinate]))
    {
      previewDispatchCache = [(CKContactMediaObject *)self previewDispatchCache];
      if ([previewDispatchCache isGeneratingPreviewForKey:v8])
      {
        if (IMOSLoggingEnabled())
        {
          CKLogCStringForType(2);
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = self;
            _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_DEBUG, "%@ is already generating preview. Abort.", &buf, 0xCu);
          }
        }

        if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
        {
          _CKLog(2u, @"%@ is already generating preview. Abort.", v19, v20, v21, v22, v23, v24, self);
        }
      }

      else
      {
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __53__CKLocationMediaObject_previewForWidth_orientation___block_invoke_257;
        v36[3] = &unk_1E72F00B0;
        v36[4] = self;
        *&v36[5] = width;
        v37 = orientationCopy;
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __53__CKLocationMediaObject_previewForWidth_orientation___block_invoke_271;
        v31[3] = &unk_1E72F2680;
        v32 = previewDispatchCache;
        v33 = v8;
        selfCopy = self;
        v35 = orientationCopy;
        [v32 enqueueGenerationBlock:v36 completion:v31 withPriority:-1 forKey:v33];
      }

      *&buf = orientationCopy;
      BYTE1(buf) = [(CKLocationMediaObject *)self isDroppedPin];
      transcriptTraitCollection2 = [(CKLocationMediaObject *)self transcriptTraitCollection];
      *(&buf + 1) = [transcriptTraitCollection2 userInterfaceStyle];

      v26 = [MEMORY[0x1E696B098] value:&buf withObjCType:"{?=cBq}"];
      v27 = +[CKLocationMediaObject placeholderPreviewCache];
      v7 = [v27 objectForKey:v26];

      if (!v7)
      {
        v28 = [(CKLocationMediaObject *)self generatePlaceholderThumbnailForWidth:orientationCopy orientation:width];
        v30.receiver = self;
        v30.super_class = CKLocationMediaObject;
        v7 = [(CKMediaObject *)&v30 generatePreviewFromThumbnail:v28 width:orientationCopy orientation:width];

        if (v7)
        {
          v29 = +[CKLocationMediaObject placeholderPreviewCache];
          [v29 setObject:v7 forKey:v26];
        }
      }

      goto LABEL_16;
    }

    v7 = 0;
  }

LABEL_16:

LABEL_17:

  return v7;
}

void *__53__CKLocationMediaObject_previewForWidth_orientation___block_invoke()
{
  result = MEMORY[0x193AF5ED0]("CLLocationCoordinate2DIsValid", @"CoreLocation");
  previewForWidth_orientation___CLLocationCoordinate2DIsValid = result;
  return result;
}

id __53__CKLocationMediaObject_previewForWidth_orientation___block_invoke_257(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v41 = v5;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_DEBUG, "%@ generate preview.", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog(2u, @"%@ generate preview.", v6, v7, v8, v9, v10, v11, *(a1 + 32));
  }

  v12 = +[CKUIBehavior sharedBehaviors];
  [v12 mapThumbnailFillSizeForWidth:*(a1 + 40)];
  v14 = v13;
  v16 = v15;

  v17 = +[CKUIBehavior sharedBehaviors];
  [v17 thumbnailContentAlignmentInsetsForOrientation:*(a1 + 48)];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [*(a1 + 32) generateThumbnailFillToSize:v14 contentAlignmentInsets:{v16, v19, v21, v23, v25}];
  v27 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [v27 startTimingForKey:@"CKLocationMediaObject_PreviewGenerationTime"];
  v28 = [*(a1 + 32) generatePreviewFromThumbnail:v26 width:*(a1 + 48) orientation:*(a1 + 40)];
  [v27 stopTimingForKey:@"CKLocationMediaObject_PreviewGenerationTime"];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v30 = [*(a1 + 32) UTIType];
      *buf = 138412546;
      v41 = v30;
      v42 = 2112;
      v43 = v27;
      _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_DEBUG, "Cache miss on UTI type %@ generated with timing: %@", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v31 = [*(a1 + 32) UTIType];
    _CKLog(2u, @"Cache miss on UTI type %@ generated with timing: %@", v32, v33, v34, v35, v36, v37, v31);
  }

  v38 = [MEMORY[0x1E69A8168] sharedInstance];
  [v38 trackEvent:*MEMORY[0x1E69A7580]];

  return v28;
}

void __53__CKLocationMediaObject_previewForWidth_orientation___block_invoke_271(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__CKLocationMediaObject_previewForWidth_orientation___block_invoke_2;
  v4[3] = &unk_1E72F2680;
  v5 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v6 = v2;
  v7 = v3;
  v8 = *(a1 + 56);
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

void __53__CKLocationMediaObject_previewForWidth_orientation___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedPreviewForKey:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __53__CKLocationMediaObject_previewForWidth_orientation___block_invoke_3;
    v5[3] = &unk_1E72F0088;
    v5[4] = *(a1 + 48);
    v7 = *(a1 + 56);
    v6 = v2;
    [v4 enqueueSaveBlock:v5 forMediaObject:*(a1 + 48) withPriority:0];
    [*(a1 + 48) postPreviewDidChangeNotifications];
  }
}

void __53__CKLocationMediaObject_previewForWidth_orientation___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = [v3 previewFilenameExtension];
  v7 = [v4 previewCachesFileURLWithOrientation:v5 extension:v6 generateIntermediaries:1];

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Saving local preview to %@", &v9, 0xCu);
    }
  }

  [v3 savePreview:*(a1 + 40) toURL:v7 forOrientation:*(a1 + 48)];
}

- (id)transcriptTraitCollection
{
  v7.receiver = self;
  v7.super_class = CKLocationMediaObject;
  transcriptTraitCollection = [(CKMediaObject *)&v7 transcriptTraitCollection];
  v3 = transcriptTraitCollection;
  if (transcriptTraitCollection)
  {
    traitCollection = transcriptTraitCollection;
  }

  else
  {
    keyWindow = [MEMORY[0x1E69DD2E8] keyWindow];
    traitCollection = [keyWindow traitCollection];
  }

  return traitCollection;
}

- (id)generateThumbnailFillToSize:(CGSize)size contentAlignmentInsets:(UIEdgeInsets)insets
{
  height = size.height;
  width = size.width;
  v57 = *MEMORY[0x1E69E9840];
  if (generateThumbnailFillToSize_contentAlignmentInsets___pred_CLLocationCoordinate2DIsValidCoreLocation != -1)
  {
    [CKLocationMediaObject generateThumbnailFillToSize:contentAlignmentInsets:];
  }

  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__38;
  v51 = __Block_byref_object_dispose__38;
  v52 = 0;
  coordinate = [(CKLocationMediaObject *)self coordinate];
  v9 = v8;
  v11 = v10;
  if ((generateThumbnailFillToSize_contentAlignmentInsets___CLLocationCoordinate2DIsValid(coordinate) & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(2);
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_19020E000, v32, OS_LOG_TYPE_INFO, "%@ has invalid coordinate. Abort preview generation.", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      _CKLogExternal(2u, @"%@ has invalid coordinate. Abort preview generation.", v33, v34, v35, v36, v37, v38, self);
    }

    goto LABEL_30;
  }

  v12 = MEMORY[0x193AF5EC0](@"MKMapSnapshotOptions", @"MapKit");
  if (v12)
  {
    v13 = objc_alloc_init(v12);
    [v13 setMapType:0];
    transcriptTraitCollection = [(CKLocationMediaObject *)self transcriptTraitCollection];
    [v13 setTraitCollection:transcriptTraitCollection];

    [v13 _setUseSnapshotService:1];
    if (generateThumbnailFillToSize_contentAlignmentInsets___pred_MKCoordinateRegionMakeWithDistanceMapKit != -1)
    {
      [CKLocationMediaObject generateThumbnailFillToSize:contentAlignmentInsets:];
    }

    generateThumbnailFillToSize_contentAlignmentInsets___MKCoordinateRegionMakeWithDistance(v9, v11, 500.0, 500.0);
    if (fabs(v18) > 180.0 || fabs(v15) > 90.0 || v16 < 0.0 || v16 > 180.0 || v17 < 0.0 || v17 > 360.0)
    {
      if (IMOSLoggingEnabled())
      {
        v40 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v40, OS_LOG_TYPE_INFO, "CKLocationMediaObject - Map region is invalid, bailing!", buf, 2u);
        }
      }
    }

    else
    {
      [v13 setRegion:?];
      [v13 setSize:{width, height}];
      v19 = MEMORY[0x193AF5EC0](@"MKMapSnapshotter", @"MapKit");
      if (v19)
      {
        v20 = [[v19 alloc] initWithOptions:v13];
        v21 = dispatch_group_create();
        dispatch_group_enter(v21);
        v22 = +[CKPreviewDispatchCache mapThumbnailQueue];
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __76__CKLocationMediaObject_generateThumbnailFillToSize_contentAlignmentInsets___block_invoke_296;
        v44[3] = &unk_1E72EBCB0;
        v46 = &v47;
        v23 = v21;
        v45 = v23;
        [v20 startWithQueue:v22 completionHandler:v44];

        v24 = dispatch_time(0, 20000000000);
        if (dispatch_group_wait(v23, v24))
        {
          if (IMOSLoggingEnabled())
          {
            CKLogCStringForType(2);
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              selfCopy2 = self;
              _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "%@ thumbnail generation timed out.", buf, 0xCu);
            }
          }

          if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
          {
            _CKLogExternal(2u, @"%@ thumbnail generation timed out.", v26, v27, v28, v29, v30, v31, self);
          }
        }

LABEL_30:
        v39 = v48[5];
        goto LABEL_46;
      }

      if (IMOSLoggingEnabled())
      {
        v42 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          selfCopy2 = @"MKMapSnapshotter";
          v55 = 2112;
          v56 = @"MapKit";
          _os_log_impl(&dword_19020E000, v42, OS_LOG_TYPE_INFO, "Failed weak linking %@ from %@.", buf, 0x16u);
        }
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v41 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      selfCopy2 = @"MKMapSnapshotOptions";
      v55 = 2112;
      v56 = @"MapKit";
      _os_log_impl(&dword_19020E000, v41, OS_LOG_TYPE_INFO, "Failed weak linking %@ from %@.", buf, 0x16u);
    }
  }

  v39 = 0;
LABEL_46:
  _Block_object_dispose(&v47, 8);

  return v39;
}

uint64_t (*__76__CKLocationMediaObject_generateThumbnailFillToSize_contentAlignmentInsets___block_invoke())(void)
{
  result = MEMORY[0x193AF5ED0]("CLLocationCoordinate2DIsValid", @"CoreLocation");
  generateThumbnailFillToSize_contentAlignmentInsets___CLLocationCoordinate2DIsValid = result;
  return result;
}

uint64_t (*__76__CKLocationMediaObject_generateThumbnailFillToSize_contentAlignmentInsets___block_invoke_288())(double, double, double, double)
{
  result = MEMORY[0x193AF5ED0]("MKCoordinateRegionMakeWithDistance", @"MapKit");
  generateThumbnailFillToSize_contentAlignmentInsets___MKCoordinateRegionMakeWithDistance = result;
  return result;
}

void __76__CKLocationMediaObject_generateThumbnailFillToSize_contentAlignmentInsets___block_invoke_296(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Got error back in CKLocationMediaObject for map snapshot: %@", &v11, 0xCu);
    }
  }

  v8 = [v5 image];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  dispatch_group_leave(*(a1 + 32));
}

- (CGSize)bbSize
{
  v2 = 270.0;
  v3 = 130.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)bbPreviewFillToSize:(CGSize)size
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(CKMediaObject *)self transcoderPreviewGenerationFailed:size.width])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        transferGUID = [(CKMediaObject *)self transferGUID];
        v12 = 138412290;
        v13 = transferGUID;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Transfer %@ was marked as failed for preview generation, not showing preview in notification", &v12, 0xCu);
      }
    }

    v6 = 0;
  }

  else
  {
    fileURL = [(CKMediaObject *)self fileURL];
    previewFilenameExtension = [(CKMediaObject *)self previewFilenameExtension];
    v9 = IMAttachmentPreviewFileURL();

    v6 = [(CKMediaObject *)self savedPreviewFromURL:v9 forOrientation:0];
    if (!v6 && IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Expected OOP preview for SB at %@, got nil", &v12, 0xCu);
      }
    }
  }

  return v6;
}

- (id)previewItemTitle
{
  v2 = CKFrameworkBundle(self);
  v3 = [v2 localizedStringForKey:@"PREVIEW_TITLE_LOCATION" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

- (CLLocationCoordinate2D)coordinate
{
  v33 = *MEMORY[0x1E69E9840];
  if (coordinate__pred_CLLocationCoordinate2DIsValidCoreLocation_0 != -1)
  {
    [CKLocationMediaObject coordinate];
  }

  if (coordinate__pred_CLLocationCoordinate2DMakeCoreLocation_0 != -1)
  {
    [CKLocationMediaObject coordinate];
  }

  v29[0] = 0;
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    v29[1] = MEMORY[0x1E69E9820];
    v29[2] = 3221225472;
    v29[3] = __TelephonyUtilitiesLibraryCore_block_invoke;
    v29[4] = &__block_descriptor_40_e5_v8__0l;
    v29[5] = v29;
    v31 = xmmword_1E72F3C58;
    v32 = 0;
    TelephonyUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    [(CKLocationMediaObject *)v29 coordinate];
  }

  if (v29[0])
  {
    free(v29[0]);
  }

  p_coordinate = &self->_coordinate;
  valid = coordinate__CLLocationCoordinate2DIsValid_0(self->_coordinate.latitude, self->_coordinate.longitude);
  if (!valid || (latitude = p_coordinate->latitude, p_coordinate->latitude == 0.0) || (longitude = self->_coordinate.longitude, longitude == 0.0))
  {
    v8 = __kCLLocationCoordinate2DInvalid(valid, v5);
    v10 = v9;
    [(CKLocationMediaObject *)self vCardURLProperties];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = v28 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [MEMORY[0x1E69A80F8] coordinatesFromString:{*(*(&v25 + 1) + 8 * i), v25}];
          if ([v16 count] == 2)
          {
            v17 = coordinate__CLLocationCoordinate2DMake_0;
            v18 = [v16 objectAtIndex:0];
            [v18 doubleValue];
            v20 = v19;
            v21 = [v16 objectAtIndex:1];
            doubleValue = [v21 doubleValue];
            v8 = v17(doubleValue, v20, v23);
            v10 = v24;

            goto LABEL_23;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_23:

    p_coordinate->latitude = v8;
    p_coordinate->longitude = v10;

    latitude = p_coordinate->latitude;
    longitude = p_coordinate->longitude;
  }

  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

uint64_t (*__35__CKLocationMediaObject_coordinate__block_invoke())(double, double)
{
  result = MEMORY[0x193AF5ED0]("CLLocationCoordinate2DIsValid", @"CoreLocation");
  coordinate__CLLocationCoordinate2DIsValid_0 = result;
  return result;
}

void *__35__CKLocationMediaObject_coordinate__block_invoke_2()
{
  result = MEMORY[0x193AF5ED0]("CLLocationCoordinate2DMake", @"CoreLocation");
  coordinate__CLLocationCoordinate2DMake_0 = result;
  return result;
}

- (id)vCardURLProperties
{
  v22 = *MEMORY[0x1E69E9840];
  data = [(CKMediaObject *)self data];
  if (data)
  {
    v20 = 0;
    v3 = [MEMORY[0x1E695CE30] contactsWithData:data error:&v20];
    v4 = v20;
    if ([v3 count])
    {
      firstObject = [v3 firstObject];
      urlAddresses = [firstObject urlAddresses];
    }

    else
    {
      urlAddresses = 0;
    }

    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = urlAddresses;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          value = [*(*(&v16 + 1) + 8 * i) value];
          [array addObject:value];
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v11);
    }

    v7 = [MEMORY[0x1E695DEC8] arrayWithArray:array];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)placeholderPreviewCache
{
  if (placeholderPreviewCache_once_0 != -1)
  {
    +[CKLocationMediaObject placeholderPreviewCache];
  }

  v3 = placeholderPreviewCache_sPlaceholderPreviews_0;

  return v3;
}

void __48__CKLocationMediaObject_placeholderPreviewCache__block_invoke()
{
  v0 = CKCreateNSCache(4);
  v1 = placeholderPreviewCache_sPlaceholderPreviews_0;
  placeholderPreviewCache_sPlaceholderPreviews_0 = v0;
}

- (BOOL)isDroppedPin
{
  v3 = CKIsRunningInMacCatalyst();
  filename = [(CKMediaObject *)self filename];
  v5 = filename;
  v6 = MEMORY[0x1E69A6E98];
  if (v3)
  {
    v6 = MEMORY[0x1E69A6A78];
  }

  v7 = [filename isEqualToString:*v6];

  return v7;
}

- (id)generatePlaceholderThumbnailForWidth:(double)width orientation:(char)orientation
{
  orientationCopy = orientation;
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 mapThumbnailFillSizeForWidth:width];
  v9 = v8;
  v11 = v10;

  v12 = +[CKUIBehavior sharedBehaviors];
  [v12 thumbnailContentAlignmentInsetsForOrientation:orientationCopy];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  return [(CKLocationMediaObject *)self generatePlaceholderThumbnailFillToSize:v9 contentAlignmentInsets:v11, v14, v16, v18, v20];
}

- (id)generatePlaceholderThumbnailFillToSize:(CGSize)size contentAlignmentInsets:(UIEdgeInsets)insets
{
  height = size.height;
  width = size.width;
  v55 = *MEMORY[0x1E69E9840];
  v7 = [(CKLocationMediaObject *)self transcriptTraitCollection:size.width];
  v8 = CKLocationSharePreviewPlaceHolderCacheFileURL(v7, width, @"jpeg");

  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__38;
  v49 = __Block_byref_object_dispose__38;
  v50 = 0;
  v9 = [(CKMediaObject *)self savedPreviewFromURL:v8 forOrientation:0];
  v10 = v46[5];
  v46[5] = v9;

  if (v46[5])
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(2);
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Found cached thumnail on disk.", buf, 2u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      _CKLogExternal(2u, @"Found cached thumnail on disk.", v12, v13, v14, v15, v16, v17, v41);
    }

    v18 = v46[5];
  }

  else
  {
    v19 = MEMORY[0x193AF5EC0](@"MKMapSnapshotOptions", @"MapKit");
    if (v19)
    {
      v20 = objc_alloc_init(v19);
      [v20 setMapType:105];
      transcriptTraitCollection = [(CKLocationMediaObject *)self transcriptTraitCollection];
      [v20 setTraitCollection:transcriptTraitCollection];

      [v20 setSize:{width, height}];
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen scale];
      [v20 setScale:?];

      v23 = MEMORY[0x193AF5EC0](@"MKMapSnapshotter", @"MapKit");
      if (v23)
      {
        v24 = [[v23 alloc] initWithOptions:v20];
        v25 = dispatch_group_create();
        dispatch_group_enter(v25);
        v26 = dispatch_get_global_queue(0, 0);
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __87__CKLocationMediaObject_generatePlaceholderThumbnailFillToSize_contentAlignmentInsets___block_invoke;
        v42[3] = &unk_1E72EBCB0;
        v44 = &v45;
        v27 = v25;
        v43 = v27;
        [v24 startWithQueue:v26 completionHandler:v42];

        v28 = dispatch_time(0, 5000000000);
        if (dispatch_group_wait(v27, v28))
        {
          if (IMOSLoggingEnabled())
          {
            CKLogCStringForType(2);
            v29 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              selfCopy = self;
              _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "%@ thumbnail generation timed out.", buf, 0xCu);
            }
          }

          if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
          {
            _CKLogExternal(2u, @"%@ thumbnail generation timed out.", v30, v31, v32, v33, v34, v35, self);
          }
        }

        v36 = v46[5];
        if (v36)
        {
          [(CKMediaObject *)self savePreview:v36 toURL:v8 forOrientation:0];
          v37 = v46[5];
        }

        else
        {
          v37 = 0;
        }

        v18 = v37;
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v39 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            selfCopy = @"MKMapSnapshotter";
            v53 = 2112;
            v54 = @"MapKit";
            _os_log_impl(&dword_19020E000, v39, OS_LOG_TYPE_INFO, "Failed weak linking %@ from %@.", buf, 0x16u);
          }
        }

        v18 = 0;
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v38 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          selfCopy = @"MKMapSnapshotOptions";
          v53 = 2112;
          v54 = @"MapKit";
          _os_log_impl(&dword_19020E000, v38, OS_LOG_TYPE_INFO, "Failed weak linking %@ from %@.", buf, 0x16u);
        }
      }

      v18 = 0;
    }
  }

  _Block_object_dispose(&v45, 8);

  return v18;
}

void __87__CKLocationMediaObject_generatePlaceholderThumbnailFillToSize_contentAlignmentInsets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Got error back in CKLocationMediaObject for map snapshot: %@", &v11, 0xCu);
    }
  }

  v8 = [v5 image];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  dispatch_group_leave(*(a1 + 32));
}

- (id)pasteboardItemProvider
{
  [(CKLocationMediaObject *)self coordinate];
  v4 = v3;
  v6 = v5;
  v7 = MEMORY[0x1E695DFF8];
  filename = [(CKMediaObject *)self filename];
  v9 = [v7 __ck_appleMapsURLForCoordinate:filename coordinateName:{v4, v6}];

  v10 = MEMORY[0x1E696ACA0];
  fileURL = [(CKMediaObject *)self fileURL];
  v12 = [v10 __ck_itemProviderForAppleMapsCoordinateURL:v9 vCardURL:fileURL];

  if (v12)
  {
    v13 = v12;
  }

  else if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Unexpected ItemProvider in LocationMediaObject", v16, 2u);
    }
  }

  return v12;
}

- (id)rtfDocumentItemsWithFormatString:(id)string selectedTextRange:(_NSRange)range
{
  v24[3] = *MEMORY[0x1E69E9840];
  [(CKLocationMediaObject *)self coordinate:string];
  v6 = v5;
  v8 = v7;
  v9 = MEMORY[0x1E695DFF8];
  filename = [(CKMediaObject *)self filename];
  v11 = [v9 __ck_appleMapsURLForCoordinate:filename coordinateName:{v6, v8}];

  v12 = objc_alloc(MEMORY[0x1E696AD40]);
  absoluteString = [v11 absoluteString];
  v14 = [v12 initWithString:absoluteString];

  v15 = [v14 length];
  v23[0] = *MEMORY[0x1E69A68A0];
  filename2 = [(CKMediaObject *)self filename];
  v24[0] = filename2;
  v23[1] = *MEMORY[0x1E69A6898];
  fileURL = [(CKMediaObject *)self fileURL];
  v24[1] = fileURL;
  v23[2] = *MEMORY[0x1E69A6890];
  uTIType = [(CKMediaObject *)self UTIType];
  v24[2] = uTIType;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];

  [v14 addAttribute:*MEMORY[0x1E69A6880] value:v19 range:{0, v15}];
  v22 = v14;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];

  return v20;
}

- (void)coordinate
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TelephonyUtilitiesLibrary(void)"];
  [currentHandler handleFailureInFunction:v3 file:@"CKLocationMediaObject.m" lineNumber:52 description:{@"%s", *self}];

  __break(1u);
}

@end