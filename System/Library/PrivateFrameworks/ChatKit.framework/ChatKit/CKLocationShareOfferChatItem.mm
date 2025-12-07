@interface CKLocationShareOfferChatItem
+ (id)placeholderPreviewCache;
+ (id)titleBarMaskImageForWidth:(double)width;
- (BOOL)shouldUpdatePreviewWithLocation:(id)location lastKnownLocation:(id)knownLocation previewURL:(id)l;
- (CKLocationShareOfferChatItem)initWithIMChatItem:(id)item maxWidth:(double)width;
- (IMHandle)sender;
- (NSString)locationText;
- (NSString)titleText;
- (id)_desaturatedImageForImage:(id)image;
- (id)_generatePlaceholderThumbnailFillToSize:(CGSize)size;
- (id)_generateThumbnailFillToSize:(CGSize)size contentAlignmentInsets:(UIEdgeInsets)insets withCoordinate:(CLLocationCoordinate2D)coordinate forState:(int64_t)state;
- (id)_placeholderCacheKey;
- (id)_previewCacheKey:(unint64_t)key;
- (id)modificationDateForPreview:(id)preview;
- (id)previewForWidth:(double)width orientation:(char)orientation;
- (id)previewURL;
- (id)previewURLForWidth:(unint64_t)width;
- (id)savedPreviewFromURL:(id)l;
- (id)time;
- (id)transcriptTraitCollection;
- (int64_t)offerState;
- (void)_generateMapPreview;
- (void)_handleLocationDidChangeNotification:(id)notification;
- (void)dealloc;
- (void)savePreview:(id)preview toURL:(id)l;
@end

@implementation CKLocationShareOfferChatItem

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKLocationShareOfferChatItem;
  [(CKLocationShareOfferChatItem *)&v4 dealloc];
}

- (CKLocationShareOfferChatItem)initWithIMChatItem:(id)item maxWidth:(double)width
{
  v13.receiver = self;
  v13.super_class = CKLocationShareOfferChatItem;
  v4 = [(CKChatItem *)&v13 initWithIMChatItem:item maxWidth:width];
  if (v4)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__handleLocationDidChangeNotification_ name:*MEMORY[0x1E69A5988] object:0];

    mEMORY[0x1E69A5B70] = [MEMORY[0x1E69A5B70] sharedInstance];
    sender = [(CKLocationShareOfferChatItem *)v4 sender];
    v8 = [mEMORY[0x1E69A5B70] findMyLocationForHandleOrSibling:sender];

    fmfLocation = [v8 fmfLocation];
    v10 = fmfLocation;
    if (fmfLocation)
    {
      location = [fmfLocation location];

      if (location)
      {
        [(CKLocationShareOfferChatItem *)v4 setLastKnownLocation:v10];
      }
    }
  }

  return v4;
}

- (id)time
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  time = [iMChatItem time];

  return time;
}

- (IMHandle)sender
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  sender = [iMChatItem sender];

  return sender;
}

- (int64_t)offerState
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  offerState = [iMChatItem offerState];

  return offerState;
}

- (NSString)titleText
{
  sender = [(CKLocationShareOfferChatItem *)self sender];
  _displayNameWithAbbreviation = [sender _displayNameWithAbbreviation];

  offerState = [(CKLocationShareOfferChatItem *)self offerState];
  if (!offerState)
  {
    v6 = @"SHARE_BUBBLE_ACTION_TEXT";
    goto LABEL_6;
  }

  offerState = [(CKLocationShareOfferChatItem *)self offerState];
  if (offerState == 1 || (offerState = [(CKLocationShareOfferChatItem *)self offerState], offerState == 2))
  {
    v6 = @"SHARE_BUBBLE_LOCATION_TEXT";
LABEL_6:
    v7 = MEMORY[0x1E696AEC0];
    v8 = CKFrameworkBundle(offerState);
    v9 = [v8 localizedStringForKey:v6 value:&stru_1F04268F8 table:@"ChatKit"];
    v10 = [v7 stringWithFormat:v9, _displayNameWithAbbreviation];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v13 = @"\u200F";
    }

    else
    {
      v13 = @"\u200E";
    }

    v14 = [(__CFString *)v13 stringByAppendingString:v10];

    goto LABEL_10;
  }

  v14 = 0;
LABEL_10:

  return v14;
}

- (NSString)locationText
{
  lastKnownLocation = [(CKLocationShareOfferChatItem *)self lastKnownLocation];
  shortAddress = [lastKnownLocation shortAddress];

  if (!shortAddress || (v4 = [shortAddress isEqualToString:&stru_1F04268F8], v4))
  {
    v5 = CKFrameworkBundle(v4);
    v6 = [v5 localizedStringForKey:@"LOCATING" value:&stru_1F04268F8 table:@"ChatKit"];

    shortAddress = v6;
  }

  return shortAddress;
}

- (id)previewForWidth:(double)width orientation:(char)orientation
{
  v33 = *MEMORY[0x1E69E9840];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v8 = (v7 * width);

  v9 = [(CKLocationShareOfferChatItem *)self _previewCacheKey:v8];
  v10 = +[CKPreviewDispatchCache transcriptPreviewCache];
  v11 = [v10 cachedPreviewForKey:v9];
  if (v11)
  {
    v12 = 0;
    goto LABEL_29;
  }

  v12 = [(CKLocationShareOfferChatItem *)self previewURLForWidth:v8];
  v11 = [(CKLocationShareOfferChatItem *)self savedPreviewFromURL:v12];
  if (!v11)
  {
    goto LABEL_15;
  }

  if ([(CKLocationShareOfferChatItem *)self offerState]== 2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [(CKLocationShareOfferChatItem *)self _desaturatedImageForImage:v11];

      v11 = v13;
    }
  }

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_DEBUG, "%@ preview read from disk.", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog(2u, @"%@ preview read from disk.", v15, v16, v17, v18, v19, v20, self);
  }

  [v10 setCachedPreview:v11 key:v9];
  if (!v11)
  {
LABEL_15:
    _placeholderCacheKey = [(CKLocationShareOfferChatItem *)self _placeholderCacheKey];
    v22 = +[CKLocationShareOfferChatItem placeholderPreviewCache];
    v11 = [v22 objectForKey:_placeholderCacheKey];

    if (v11)
    {
LABEL_28:

      goto LABEL_29;
    }

    if ([(CKLocationShareOfferChatItem *)self offerState]== 2)
    {
      v11 = [(CKLocationShareOfferChatItem *)self _desaturatedImageForImage:0];
      if (v11)
      {
        v23 = +[CKLocationShareOfferChatItem placeholderPreviewCache];
        [v23 setObject:v11 forKey:_placeholderCacheKey];

        goto LABEL_28;
      }

      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          selfCopy3 = self;
          _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "Preview is nil for location chat item: %@ and state: IMLocationShareOfferStateExpired", buf, 0xCu);
        }

LABEL_26:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        selfCopy3 = self;
        _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "Preview is nil for location chat item: %@", buf, 0xCu);
      }

      goto LABEL_26;
    }

    v11 = 0;
    goto LABEL_28;
  }

LABEL_29:
  if ([(CKLocationShareOfferChatItem *)self offerState]!= 2)
  {
    lastKnownLocation = [(CKLocationShareOfferChatItem *)self lastKnownLocation];
    v26 = lastKnownLocation == 0;

    if (v26)
    {
      goto LABEL_34;
    }

    if (!v12)
    {
      v12 = [(CKLocationShareOfferChatItem *)self previewURLForWidth:v8];
    }

    lastKnownLocation2 = [(CKLocationShareOfferChatItem *)self lastKnownLocation];
    lastKnownLocation3 = [(CKLocationShareOfferChatItem *)self lastKnownLocation];
    v29 = [(CKLocationShareOfferChatItem *)self shouldUpdatePreviewWithLocation:lastKnownLocation2 lastKnownLocation:lastKnownLocation3 previewURL:v12];

    if (v29)
    {
LABEL_34:
      [(CKLocationShareOfferChatItem *)self _generateMapPreview];
    }
  }

  return v11;
}

- (id)_previewCacheKey:(unint64_t)key
{
  v5 = MEMORY[0x1E696AEC0];
  sender = [(CKLocationShareOfferChatItem *)self sender];
  v7 = [sender ID];
  offerState = [(CKLocationShareOfferChatItem *)self offerState];
  balloonOrientation = [(CKBalloonChatItem *)self balloonOrientation];
  transcriptTraitCollection = [(CKLocationShareOfferChatItem *)self transcriptTraitCollection];
  v11 = [v5 stringWithFormat:@"%@-%d-%d-%d-%ld", v7, offerState, key, balloonOrientation, objc_msgSend(transcriptTraitCollection, "userInterfaceStyle")];

  return v11;
}

- (id)_placeholderCacheKey
{
  v3 = MEMORY[0x1E696AEC0];
  offerState = [(CKLocationShareOfferChatItem *)self offerState];
  transcriptTraitCollection = [(CKLocationShareOfferChatItem *)self transcriptTraitCollection];
  v6 = [v3 stringWithFormat:@"placeholder-%d-%ld", offerState, objc_msgSend(transcriptTraitCollection, "userInterfaceStyle")];

  return v6;
}

- (id)previewURL
{
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 previewMaxWidth];
  v5 = v4;

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v8 = (v5 * v7);

  return [(CKLocationShareOfferChatItem *)self previewURLForWidth:v8];
}

- (id)previewURLForWidth:(unint64_t)width
{
  sender = [(CKLocationShareOfferChatItem *)self sender];
  v6 = [sender ID];
  transcriptTraitCollection = [(CKLocationShareOfferChatItem *)self transcriptTraitCollection];
  v8 = CKLocationSharePreviewCachesFileURL(v6, width, @"jpeg", [transcriptTraitCollection userInterfaceStyle]);

  return v8;
}

- (void)_generateMapPreview
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 mapPreviewMaxWidth];
  v5 = v4;

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v8 = (v5 * v7);

  v9 = [(CKLocationShareOfferChatItem *)self _previewCacheKey:v8];
  v10 = +[CKPreviewDispatchCache transcriptPreviewCache];
  if ([v10 isGeneratingPreviewForKey:v9])
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(2);
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = self;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_DEBUG, "%@ is already generating preview. Abort.", &buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog(2u, @"%@ is already generating preview. Abort.", v12, v13, v14, v15, v16, v17, self);
    }
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v26 = 0x2020000000;
    v27 = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __51__CKLocationShareOfferChatItem__generateMapPreview__block_invoke;
    v24[3] = &unk_1E72EBC10;
    *&v24[6] = v5;
    v24[4] = self;
    v24[5] = &buf;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __51__CKLocationShareOfferChatItem__generateMapPreview__block_invoke_257;
    v18[3] = &unk_1E72EBC60;
    v19 = v10;
    v20 = v9;
    selfCopy = self;
    p_buf = &buf;
    v23 = v8;
    [v19 enqueueGenerationBlock:v24 completion:v18 withPriority:-1 forKey:v20];

    _Block_object_dispose(&buf, 8);
  }
}

id __51__CKLocationShareOfferChatItem__generateMapPreview__block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v36 = v5;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_DEBUG, "%@ generate preview.", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog(2u, @"%@ generate preview.", v6, v7, v8, v9, v10, v11, *(a1 + 32));
  }

  v12 = [MEMORY[0x1E69A5B70] sharedInstance];
  v13 = [*(a1 + 32) sender];
  v14 = [v12 findMyLocationForHandleOrSibling:v13];
  v15 = [v14 fmfLocation];

  if (v15)
  {
    [*(a1 + 32) setLastKnownLocation:v15];
    v16 = +[CKUIBehavior sharedBehaviors];
    [v16 locationOfferMapThumbnailFillSizeForWidth:*(a1 + 48)];
    v18 = v17;
    v20 = v19;

    v21 = +[CKUIBehavior sharedBehaviors];
    [v21 thumbnailContentAlignmentInsetsForOrientation:{objc_msgSend(*(a1 + 32), "balloonOrientation")}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v30 = *(a1 + 32);
    [v15 coordinate];
    v33 = [v30 _generateThumbnailFillToSize:objc_msgSend(*(a1 + 32) contentAlignmentInsets:"offerState") withCoordinate:v18 forState:{v20, v23, v25, v27, v29, v31, v32}];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

void __51__CKLocationShareOfferChatItem__generateMapPreview__block_invoke_257(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CKLocationShareOfferChatItem__generateMapPreview__block_invoke_2;
  block[3] = &unk_1E72EBC60;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 64);
  v5 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __51__CKLocationShareOfferChatItem__generateMapPreview__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedPreviewForKey:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__CKLocationShareOfferChatItem__generateMapPreview__block_invoke_3;
    v7[3] = &unk_1E72EBC38;
    v5 = *(a1 + 64);
    v7[4] = *(a1 + 48);
    v9 = v5;
    v8 = v2;
    [v4 enqueueSaveBlock:v7 withPriority:-1];
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      [v6 postNotificationName:@"CKPreviewDidChangeNotification" object:*(a1 + 48)];
    }
  }
}

void __51__CKLocationShareOfferChatItem__generateMapPreview__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) sender];
  v3 = [v2 ID];
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) transcriptTraitCollection];
  v6 = CKLocationSharePreviewCachesFileURL(v3, v4, @"jpeg", [v5 userInterfaceStyle]);

  [*(a1 + 32) savePreview:*(a1 + 40) toURL:v6];
}

- (id)_generateThumbnailFillToSize:(CGSize)size contentAlignmentInsets:(UIEdgeInsets)insets withCoordinate:(CLLocationCoordinate2D)coordinate forState:(int64_t)state
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = size.height;
  width = size.width;
  v100 = *MEMORY[0x1E69E9840];
  if (_generateThumbnailFillToSize_contentAlignmentInsets_withCoordinate_forState___pred_CLLocationCoordinate2DIsValidCoreLocation != -1)
  {
    [CKLocationShareOfferChatItem _generateThumbnailFillToSize:contentAlignmentInsets:withCoordinate:forState:];
  }

  v87 = 0;
  v88 = &v87;
  v89 = 0x3032000000;
  v90 = __Block_byref_object_copy__1;
  v91 = __Block_byref_object_dispose__1;
  v92 = 0;
  if ((_generateThumbnailFillToSize_contentAlignmentInsets_withCoordinate_forState___CLLocationCoordinate2DIsValid(latitude, longitude) & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(2);
      v61 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        LODWORD(v95) = 138412290;
        *(&v95 + 4) = self;
        _os_log_impl(&dword_19020E000, v61, OS_LOG_TYPE_INFO, "%@ has invalid coordinate. Abort preview generation.", &v95, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      _CKLogExternal(2u, @"%@ has invalid coordinate. Abort preview generation.", v62, v63, v64, v65, v66, v67, self);
    }

    goto LABEL_36;
  }

  v13 = objc_alloc_init(MEMORY[0x193AF5EC0](@"MKMapSnapshotOptions", @"MapKit"));
  [v13 setMapType:0];
  if (_generateThumbnailFillToSize_contentAlignmentInsets_withCoordinate_forState___pred_MKCoordinateRegionMakeWithDistanceMapKit != -1)
  {
    [CKLocationShareOfferChatItem _generateThumbnailFillToSize:contentAlignmentInsets:withCoordinate:forState:];
  }

  _generateThumbnailFillToSize_contentAlignmentInsets_withCoordinate_forState___MKCoordinateRegionMakeWithDistance(latitude, longitude, 500.0, 500.0);
  if (fabs(v17) <= 180.0 && fabs(v14) <= 90.0 && v15 >= 0.0 && v15 <= 180.0 && v16 >= 0.0 && v16 <= 360.0)
  {
    [v13 setRegion:?];
    v18 = +[CKUIBehavior sharedBehaviors];
    [v18 locationShareBalloonButtonHeight];
    v20 = v19;
    v21 = +[CKUIBehavior sharedBehaviors];
    [v21 locationShareBalloonLabelMaxHeightForOfferState:0];
    v23 = v22;

    v71 = v20 + v23;
    v24 = height + v20 + v23;
    [v13 setSize:{width, v24}];
    transcriptTraitCollection = [(CKLocationShareOfferChatItem *)self transcriptTraitCollection];
    [v13 setTraitCollection:transcriptTraitCollection];

    v26 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"fmf_disc"];
    *&v95 = 0;
    *(&v95 + 1) = &v95;
    v96 = 0x4010000000;
    v97 = &unk_190F92BB2;
    v98 = 0u;
    v99 = 0u;
    [v26 size];
    v28 = v27;
    v30 = v29;
    if (CKMainScreenScale_once_1 != -1)
    {
      [CKLocationShareOfferChatItem _generateThumbnailFillToSize:contentAlignmentInsets:withCoordinate:forState:];
    }

    v31 = left + *MEMORY[0x1E695EFF8];
    v32 = width - (left + right);
    v33 = top + bottom;
    v34 = top + *(MEMORY[0x1E695EFF8] + 8);
    v35 = v24 - v33;
    v36 = v31;
    v37 = *&CKMainScreenScale_sMainScreenScale_1;
    if (*&CKMainScreenScale_sMainScreenScale_1 == 0.0)
    {
      v37 = 1.0;
    }

    *&v98 = floor((v31 + (v32 - v28) * 0.5) * v37) / v37;
    *(&v98 + 1) = floor((v34 + (v35 - v30) * 0.5) * v37) / v37;
    *&v99 = v28;
    *(&v99 + 1) = v30;
    v38 = [CKEntity alloc];
    sender = [(CKLocationShareOfferChatItem *)self sender];
    v40 = [(CKEntity *)v38 initWithIMHandle:sender];

    locationShareBalloonContactImage = [(CKEntity *)v40 locationShareBalloonContactImage];
    v84[0] = 0;
    v84[1] = v84;
    v84[2] = 0x4010000000;
    v84[3] = &unk_190F92BB2;
    v85 = 0u;
    v86 = 0u;
    [locationShareBalloonContactImage size];
    v43 = v42;
    v45 = v44;
    if (CKMainScreenScale_once_1 != -1)
    {
      [CKLocationShareOfferChatItem _generateThumbnailFillToSize:contentAlignmentInsets:withCoordinate:forState:];
    }

    v46 = *&CKMainScreenScale_sMainScreenScale_1;
    if (*&CKMainScreenScale_sMainScreenScale_1 == 0.0)
    {
      v46 = 1.0;
    }

    *&v85 = floor((v36 + (v32 - v43) * 0.5) * v46) / v46;
    *(&v85 + 1) = floor((v34 + (v35 - v45) * 0.5) * v46) / v46;
    *&v86 = v43;
    *(&v86 + 1) = v45;
    v47 = [objc_alloc(MEMORY[0x193AF5EC0](@"MKMapSnapshotter" @"MapKit"))];
    v48 = dispatch_group_create();
    dispatch_group_enter(v48);
    v49 = +[CKPreviewDispatchCache mapThumbnailQueue];
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __108__CKLocationShareOfferChatItem__generateThumbnailFillToSize_contentAlignmentInsets_withCoordinate_forState___block_invoke_284;
    v74[3] = &unk_1E72EBC88;
    v81 = width;
    v82 = height;
    v83 = v71;
    v78 = &v87;
    v79 = &v95;
    v80 = v84;
    v50 = v26;
    v75 = v50;
    v51 = locationShareBalloonContactImage;
    v76 = v51;
    v52 = v48;
    v77 = v52;
    [v47 startWithQueue:v49 completionHandler:v74];

    v53 = dispatch_time(0, 10000000000);
    if (dispatch_group_wait(v52, v53))
    {
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(2);
        v54 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          selfCopy = self;
          _os_log_impl(&dword_19020E000, v54, OS_LOG_TYPE_INFO, "%@ thumbnail generation timed out.", buf, 0xCu);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
      {
        _CKLogExternal(2u, @"%@ thumbnail generation timed out.", v55, v56, v57, v58, v59, v60, self);
      }
    }

    _Block_object_dispose(v84, 8);
    _Block_object_dispose(&v95, 8);

LABEL_36:
    v68 = v88[5];
    goto LABEL_42;
  }

  if (IMOSLoggingEnabled())
  {
    v69 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
    {
      LOWORD(v95) = 0;
      _os_log_impl(&dword_19020E000, v69, OS_LOG_TYPE_INFO, "CKLocationShareOfferChatItem - Map region is invalid, bailing!", &v95, 2u);
    }
  }

  v68 = 0;
LABEL_42:
  _Block_object_dispose(&v87, 8);

  return v68;
}

uint64_t (*__108__CKLocationShareOfferChatItem__generateThumbnailFillToSize_contentAlignmentInsets_withCoordinate_forState___block_invoke())(double, double)
{
  result = MEMORY[0x193AF5ED0]("CLLocationCoordinate2DIsValid", @"CoreLocation");
  _generateThumbnailFillToSize_contentAlignmentInsets_withCoordinate_forState___CLLocationCoordinate2DIsValid = result;
  return result;
}

uint64_t (*__108__CKLocationShareOfferChatItem__generateThumbnailFillToSize_contentAlignmentInsets_withCoordinate_forState___block_invoke_272())(double, double, double, double)
{
  result = MEMORY[0x193AF5ED0]("MKCoordinateRegionMakeWithDistance", @"MapKit");
  _generateThumbnailFillToSize_contentAlignmentInsets_withCoordinate_forState___MKCoordinateRegionMakeWithDistance = result;
  return result;
}

void __108__CKLocationShareOfferChatItem__generateThumbnailFillToSize_contentAlignmentInsets_withCoordinate_forState___block_invoke_284(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v24 = 138412290;
      v25 = v6;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Got error back in CKLocationShareOfferChatItem for map snapshot: %@", &v24, 0xCu);
    }
  }

  v8 = [v5 image];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  UIGraphicsBeginImageContextWithOptions(*(a1 + 80), 0, 0.0);
  [*(*(*(a1 + 56) + 8) + 40) size];
  v12 = v11;
  v14 = v13;
  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  if (CKMainScreenScale_once_1 != -1)
  {
    [CKLocationShareOfferChatItem _generateThumbnailFillToSize:contentAlignmentInsets:withCoordinate:forState:];
  }

  v17 = *&CKMainScreenScale_sMainScreenScale_1;
  if (*&CKMainScreenScale_sMainScreenScale_1 == 0.0)
  {
    v17 = 1.0;
  }

  v18 = floor((*MEMORY[0x1E695EFF8] + (v15 - v12) * 0.5) * v17) / v17;
  v19 = floor((*(MEMORY[0x1E695EFF8] + 8) + (v16 - v14) * 0.5) * v17) / v17;
  v20 = *(a1 + 96);
  *(*(*(a1 + 64) + 8) + 40) = *(*(*(a1 + 64) + 8) + 40) - v20;
  *(*(*(a1 + 72) + 8) + 40) = *(*(*(a1 + 72) + 8) + 40) - *(a1 + 96);
  [*(*(*(a1 + 56) + 8) + 40) drawAtPoint:{v18, v19 - v20 * 0.5}];
  [*(a1 + 32) drawAtPoint:{*(*(*(a1 + 64) + 8) + 32), *(*(*(a1 + 64) + 8) + 40)}];
  [*(a1 + 40) drawAtPoint:{*(*(*(a1 + 72) + 8) + 32), *(*(*(a1 + 72) + 8) + 40)}];
  v21 = UIGraphicsGetImageFromCurrentImageContext();
  v22 = *(*(a1 + 56) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v21;

  UIGraphicsEndImageContext();
  dispatch_group_leave(*(a1 + 48));
}

- (id)transcriptTraitCollection
{
  v7.receiver = self;
  v7.super_class = CKLocationShareOfferChatItem;
  transcriptTraitCollection = [(CKChatItem *)&v7 transcriptTraitCollection];
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

- (id)_generatePlaceholderThumbnailFillToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v69 = *MEMORY[0x1E69E9840];
  transcriptTraitCollection = [(CKLocationShareOfferChatItem *)self transcriptTraitCollection];
  v7 = CKLocationSharePreviewPlaceHolderCacheFileURL(transcriptTraitCollection, width, @"jpeg");

  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__1;
  v63 = __Block_byref_object_dispose__1;
  v64 = 0;
  v58[0] = [(CKBalloonChatItem *)self balloonOrientation];
  transcriptTraitCollection2 = [(CKLocationShareOfferChatItem *)self transcriptTraitCollection];
  v58[1] = [transcriptTraitCollection2 userInterfaceStyle];

  v9 = [MEMORY[0x1E696B098] value:v58 withObjCType:"{?=cq}"];
  v10 = +[CKLocationMediaObject placeholderPreviewCache];
  v11 = [v10 objectForKey:v9];
  v12 = v60[5];
  v60[5] = v11;

  if (v60[5])
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(2);
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Found cached thumbnail in memory", buf, 2u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      _CKLogExternal(2u, @"Found cached thumbnail in memory", v14, v15, v16, v17, v18, v19, v54);
    }

LABEL_17:
    v30 = v60[5];
    goto LABEL_18;
  }

  v20 = [(CKLocationShareOfferChatItem *)self savedPreviewFromURL:v7];
  v21 = v60[5];
  v60[5] = v20;

  if (v60[5])
  {
    v22 = +[CKLocationMediaObject placeholderPreviewCache];
    [v22 setObject:v60[5] forKey:v9];

    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(2);
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "Found cached thumnail on disk.", buf, 2u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      _CKLogExternal(2u, @"Found cached thumnail on disk.", v24, v25, v26, v27, v28, v29, v54);
    }

    goto LABEL_17;
  }

  v32 = MEMORY[0x193AF5EC0](@"MKMapSnapshotOptions", @"MapKit");
  if (v32)
  {
    v33 = objc_alloc_init(v32);
    [v33 setMapType:105];
    transcriptTraitCollection3 = [(CKLocationShareOfferChatItem *)self transcriptTraitCollection];
    [v33 setTraitCollection:transcriptTraitCollection3];

    [v33 setSize:{width, height}];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    [v33 setScale:?];

    v36 = MEMORY[0x193AF5EC0](@"MKMapSnapshotter", @"MapKit");
    if (v36)
    {
      v37 = [[v36 alloc] initWithOptions:v33];
      v38 = dispatch_group_create();
      dispatch_group_enter(v38);
      v39 = dispatch_get_global_queue(0, 0);
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __72__CKLocationShareOfferChatItem__generatePlaceholderThumbnailFillToSize___block_invoke;
      v55[3] = &unk_1E72EBCB0;
      v57 = &v59;
      v40 = v38;
      v56 = v40;
      [v37 startWithQueue:v39 completionHandler:v55];

      v41 = dispatch_time(0, 5000000000);
      if (dispatch_group_wait(v40, v41))
      {
        if (IMOSLoggingEnabled())
        {
          CKLogCStringForType(2);
          v42 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            selfCopy = self;
            _os_log_impl(&dword_19020E000, v42, OS_LOG_TYPE_INFO, "%@ thumbnail generation timed out.", buf, 0xCu);
          }
        }

        if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
        {
          _CKLogExternal(2u, @"%@ thumbnail generation timed out.", v43, v44, v45, v46, v47, v48, self);
        }
      }

      v49 = v60[5];
      if (v49)
      {
        [(CKLocationShareOfferChatItem *)self savePreview:v49 toURL:v7];
        v50 = +[CKLocationMediaObject placeholderPreviewCache];
        [v50 setObject:v60[5] forKey:v9];

        v51 = v60[5];
      }

      else
      {
        v51 = 0;
      }

      v30 = v51;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v53 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          selfCopy = @"MKMapSnapshotter";
          v67 = 2112;
          v68 = @"MapKit";
          _os_log_impl(&dword_19020E000, v53, OS_LOG_TYPE_INFO, "Failed weak linking %@ from %@.", buf, 0x16u);
        }
      }

      v30 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v52 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        selfCopy = @"MKMapSnapshotOptions";
        v67 = 2112;
        v68 = @"MapKit";
        _os_log_impl(&dword_19020E000, v52, OS_LOG_TYPE_INFO, "Failed weak linking %@ from %@.", buf, 0x16u);
      }
    }

    v30 = 0;
  }

LABEL_18:

  _Block_object_dispose(&v59, 8);

  return v30;
}

void __72__CKLocationShareOfferChatItem__generatePlaceholderThumbnailFillToSize___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)savePreview:(id)preview toURL:(id)l
{
  previewCopy = preview;
  lCopy = l;
  if (lCopy)
  {
    v7 = previewCopy;
    v8 = lCopy;
    im_perform_with_task_assertion();
  }
}

void __50__CKLocationShareOfferChatItem_savePreview_toURL___block_invoke(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = CKUIImageJPEGRepresentationWithHardwareAcceleration(a1[4], 0.8);
  CKFreeSpaceWriteDataToURL(v2, a1[5], 1);
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = a1[5];
      v4 = a1[6];
      *buf = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_DEBUG, "%@ preview saved to %@.", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog(2u, @"%@ preview saved to %@.", v6, v7, v8, v9, v10, v11, a1[6]);
  }
}

- (id)savedPreviewFromURL:(id)l
{
  if (l)
  {
    v3 = MEMORY[0x1E695DEF0];
    lCopy = l;
    v5 = [[v3 alloc] initWithContentsOfURL:lCopy options:1 error:0];

    if (v5)
    {
      v6 = [MEMORY[0x1E69DCAB8] ckImageWithData:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)modificationDateForPreview:(id)preview
{
  v3 = MEMORY[0x1E696AC08];
  previewCopy = preview;
  defaultManager = [v3 defaultManager];
  path = [previewCopy path];

  v7 = [defaultManager attributesOfItemAtPath:path error:0];
  v8 = [v7 objectForKey:*MEMORY[0x1E696A350]];

  return v8;
}

- (void)_handleLocationDidChangeNotification:(id)notification
{
  object = [notification object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fmfHandle = [object fmfHandle];
  }

  else
  {
    fmfHandle = 0;
  }

  sender = [(CKLocationShareOfferChatItem *)self sender];
  findMySiblingHandles = [sender findMySiblingHandles];
  __im_fmfHandles = [findMySiblingHandles __im_fmfHandles];

  if (fmfHandle && [__im_fmfHandles containsObject:fmfHandle])
  {
    mEMORY[0x1E69A5B70] = [MEMORY[0x1E69A5B70] sharedInstance];
    sender2 = [(CKLocationShareOfferChatItem *)self sender];
    v10 = [mEMORY[0x1E69A5B70] findMyLocationForHandleOrSibling:sender2];
    fmfLocation = [v10 fmfLocation];

    lastKnownLocation = [(CKLocationShareOfferChatItem *)self lastKnownLocation];
    previewURL = [(CKLocationShareOfferChatItem *)self previewURL];
    LODWORD(v10) = [(CKLocationShareOfferChatItem *)self shouldUpdatePreviewWithLocation:fmfLocation lastKnownLocation:lastKnownLocation previewURL:previewURL];

    [(CKLocationShareOfferChatItem *)self setLastKnownLocation:fmfLocation];
    if (v10)
    {
      [(CKLocationShareOfferChatItem *)self _generateMapPreview];
    }
  }
}

- (BOOL)shouldUpdatePreviewWithLocation:(id)location lastKnownLocation:(id)knownLocation previewURL:(id)l
{
  locationCopy = location;
  knownLocationCopy = knownLocation;
  lCopy = l;
  if (locationCopy)
  {
    location = [locationCopy location];

    if (location)
    {
      if (knownLocationCopy && (+[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v12 = objc_claimAutoreleasedReturnValue(), [v12 locationValidInterval], v14 = v13, v12, objc_msgSend(locationCopy, "timestamp"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(knownLocationCopy, "timestamp"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "timeIntervalSinceDate:", v16), v18 = v17, v16, v15, v18 <= v14))
      {
        v19 = [(CKLocationShareOfferChatItem *)self modificationDateForPreview:lCopy];
        v20 = v19;
        if (v19)
        {
          distantPast = v19;
        }

        else
        {
          distantPast = [MEMORY[0x1E695DF00] distantPast];
        }

        v22 = distantPast;

        location = [MEMORY[0x1E695DF00] date];
        [location timeIntervalSinceDate:v22];
        v24 = v23;

        LOBYTE(location) = v24 > v14;
      }

      else
      {
        LOBYTE(location) = 1;
      }
    }
  }

  else
  {
    LOBYTE(location) = 0;
  }

  return location;
}

- (id)_desaturatedImageForImage:(id)image
{
  v3 = MEMORY[0x1E69DCEB0];
  imageCopy = image;
  mainScreen = [v3 mainScreen];
  [mainScreen scale];
  v7 = v6;

  [imageCopy size];
  v9 = v7 * v8;
  [imageCopy size];
  v11 = v7 * v10;
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v13 = CGBitmapContextCreate(0, v9, v11, 8uLL, 0, DeviceGray, 0);
  cGImage = [imageCopy CGImage];

  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = v9;
  v19.size.height = v11;
  CGContextDrawImage(v13, v19, cGImage);
  Image = CGBitmapContextCreateImage(v13);
  v16 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:Image scale:0 orientation:v7];
  CGColorSpaceRelease(DeviceGray);
  CGContextRelease(v13);
  if (Image)
  {
    CFRelease(Image);
  }

  return v16;
}

+ (id)titleBarMaskImageForWidth:(double)width
{
  v4 = *&titleBarMaskImageForWidth__sWidth;
  if (*&titleBarMaskImageForWidth__sWidth != width)
  {
    titleBarMaskImageForWidth__sWidth = *&width;
    v5 = +[CKUIBehavior sharedBehaviors];
    [v5 locationOfferMapThumbnailFillSizeForWidth:width];
    v7 = v6;
    v9 = v8;

    v10 = +[CKUIBehavior sharedBehaviors];
    [v10 locationShareBalloonButtonHeight];
    v12 = v11;
    v13 = +[CKUIBehavior sharedBehaviors];
    [v13 locationShareBalloonLabelMaxHeightForOfferState:0];
    v15 = v12 + v14;

    v22.width = v7;
    v22.height = v9;
    UIGraphicsBeginImageContextWithOptions(v22, 0, 0.0);
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [blackColor set];

    v23.origin.x = 0.0;
    v23.origin.y = v9 - v15;
    v23.size.width = v7;
    v23.size.height = v15;
    UIRectFill(v23);
    v17 = UIGraphicsGetImageFromCurrentImageContext();
    v18 = titleBarMaskImageForWidth__sTitleBarMaskImage;
    titleBarMaskImageForWidth__sTitleBarMaskImage = v17;

    UIGraphicsEndImageContext();
  }

  v19 = titleBarMaskImageForWidth__sTitleBarMaskImage;

  return v19;
}

+ (id)placeholderPreviewCache
{
  if (placeholderPreviewCache_once != -1)
  {
    +[CKLocationShareOfferChatItem placeholderPreviewCache];
  }

  v3 = placeholderPreviewCache_sPlaceholderPreviews;

  return v3;
}

void __55__CKLocationShareOfferChatItem_placeholderPreviewCache__block_invoke()
{
  v0 = CKCreateNSCache(0);
  v1 = placeholderPreviewCache_sPlaceholderPreviews;
  placeholderPreviewCache_sPlaceholderPreviews = v0;
}

@end