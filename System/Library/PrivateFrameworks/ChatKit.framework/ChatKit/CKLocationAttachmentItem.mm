@interface CKLocationAttachmentItem
+ (id)UTITypes;
- (BOOL)isDroppedPin;
- (CKLocationAttachmentItem)initWithFileURL:(id)l size:(CGSize)size transferGUID:(id)d guid:(id)guid createdDate:(id)date;
- (CLLocationCoordinate2D)coordinate;
- (id)_generateThumbnailFillToSize:(CGSize)size;
- (id)vCardURLProperties;
- (void)generatePreviewWithCompletion:(id)completion;
@end

@implementation CKLocationAttachmentItem

+ (id)UTITypes
{
  v5[1] = *MEMORY[0x1E69E9840];
  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963710], @"loc.vcf", *MEMORY[0x1E69638D8]);
  v5[0] = PreferredIdentifierForTag;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (CKLocationAttachmentItem)initWithFileURL:(id)l size:(CGSize)size transferGUID:(id)d guid:(id)guid createdDate:(id)date
{
  height = size.height;
  width = size.width;
  v31 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  guidCopy = guid;
  dateCopy = date;
  v28.receiver = self;
  v28.super_class = CKLocationAttachmentItem;
  height = [(CKAttachmentItem *)&v28 initWithFileURL:lCopy size:dCopy transferGUID:guidCopy guid:dateCopy createdDate:0 shareURL:width, height];
  v19 = height;
  if (height)
  {
    [(CKLocationAttachmentItem *)height setCoordinate:__IMWeakkCLLocationCoordinate2DInvalid(height, v18)];
    v20 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:lCopy];
    if (v20)
    {
      v27 = 0;
      v21 = [MEMORY[0x1E695CE30] contactsWithData:v20 error:&v27];
      v22 = v27;
      if (v22)
      {
        absoluteString = [lCopy absoluteString];
        [absoluteString lastPathComponent];
      }

      else
      {
        absoluteString = [v21 firstObject];
        [absoluteString givenName];
      }
      v25 = ;

      [(CKLocationAttachmentItem *)v19 setLocationTitle:v25];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v30 = lCopy;
          _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "Initializing CKLocationAttachmentItem at URL %@ with nil data", buf, 0xCu);
        }
      }

      v20 = v19;
      v19 = 0;
    }
  }

  return v19;
}

- (void)generatePreviewWithCompletion:(id)completion
{
  completionCopy = completion;
  previewCache = [objc_opt_class() previewCache];
  v6 = CKAttachmentPreviewCacheKey(self);
  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 mapPreviewMaxWidth];
  v10 = v9;
  [(CKAttachmentItem *)self size];
  [v7 thumbnailFillSizeForWidth:v10 imageSize:{v11, v12}];
  v14 = v13;
  v16 = v15;

  if (([previewCache isGeneratingPreviewForKey:v6] & 1) == 0)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __58__CKLocationAttachmentItem_generatePreviewWithCompletion___block_invoke;
    v22[3] = &unk_1E72EE7C8;
    v22[4] = self;
    v22[5] = v14;
    v22[6] = v16;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __58__CKLocationAttachmentItem_generatePreviewWithCompletion___block_invoke_45;
    v17[3] = &unk_1E72EDE00;
    v18 = previewCache;
    v19 = v6;
    selfCopy = self;
    v21 = completionCopy;
    [v18 enqueueGenerationBlock:v22 completion:v17 withPriority:1 forKey:v19];
  }
}

id __58__CKLocationAttachmentItem_generatePreviewWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _generateThumbnailFillToSize:{*(a1 + 40), *(a1 + 48)}];

  return v4;
}

void __58__CKLocationAttachmentItem_generatePreviewWithCompletion___block_invoke_45(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__CKLocationAttachmentItem_generatePreviewWithCompletion___block_invoke_2;
  block[3] = &unk_1E72EDE00;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *(a1 + 48);
  v4 = *(&v6 + 1);
  *&v5 = v2;
  *(&v5 + 1) = v3;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __58__CKLocationAttachmentItem_generatePreviewWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedPreviewForKey:*(a1 + 40)];
  v4 = v2;
  if (v2)
  {
    [*(a1 + 48) _savePreview:v2];
    v2 = v4;
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    (*(v3 + 16))(v3, v4, v2);
    v2 = v4;
  }
}

- (id)_generateThumbnailFillToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v60 = *MEMORY[0x1E69E9840];
  if (_generateThumbnailFillToSize___pred_CLLocationCoordinate2DIsValidCoreLocation != -1)
  {
    [CKLocationAttachmentItem _generateThumbnailFillToSize:];
  }

  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__9;
  v53 = __Block_byref_object_dispose__9;
  v54 = 0;
  coordinate = [(CKLocationAttachmentItem *)self coordinate];
  v8 = v7;
  v10 = v9;
  if ((_generateThumbnailFillToSize___CLLocationCoordinate2DIsValid(coordinate) & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(2);
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "%@ has invalid coordinate. Abort preview generation.", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
    {
      _CKLogExternal(2u, @"%@ has invalid coordinate. Abort preview generation.", v21, v22, v23, v24, v25, v26, self);
    }

    goto LABEL_45;
  }

  v11 = MEMORY[0x193AF5EC0](@"MKMapSnapshotOptions", @"MapKit");
  if (v11)
  {
    v12 = objc_alloc_init(v11);
    [v12 setMapType:0];
    if (_generateThumbnailFillToSize___pred_MKCoordinateRegionMakeWithDistanceMapKit != -1)
    {
      [CKLocationAttachmentItem _generateThumbnailFillToSize:];
    }

    _generateThumbnailFillToSize___MKCoordinateRegionMakeWithDistance(v8, v10, 500.0, 500.0);
    if (fabs(v16) > 180.0 || fabs(v13) > 90.0 || v14 < 0.0 || v14 > 180.0 || v15 < 0.0 || v15 > 360.0)
    {
      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "CKLocationAttachmentItem - Map region is invalid, bailing!", buf, 2u);
        }
      }
    }

    else
    {
      [v12 setRegion:?];
      [v12 setSize:{width, height}];
      v17 = MEMORY[0x193AF5EC0](@"MKMapSnapshotFeatureAnnotation", @"MapKit");
      if (v17)
      {
        v18 = [[v17 alloc] initWithCoordinate:0 title:2 representation:{v8, v10}];
        v55 = v18;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
        [v12 _setCustomFeatureAnnotations:v19];
      }

      else if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          selfCopy2 = @"MKMapSnapshotFeatureAnnotation";
          v58 = 2112;
          v59 = @"MapKit";
          _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "Failed weak linking %@ from %@.", buf, 0x16u);
        }
      }

      v30 = MEMORY[0x193AF5EC0](@"MKMapSnapshotter", @"MapKit");
      if (v30)
      {
        v31 = [[v30 alloc] initWithOptions:v12];
        v32 = dispatch_group_create();
        dispatch_group_enter(v32);
        v33 = +[CKPreviewDispatchCache mapThumbnailQueue];
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __57__CKLocationAttachmentItem__generateThumbnailFillToSize___block_invoke_71;
        v46[3] = &unk_1E72EBCB0;
        v48 = &v49;
        v34 = v32;
        v47 = v34;
        [v31 startWithQueue:v33 completionHandler:v46];

        v35 = dispatch_time(0, 10000000000);
        if (dispatch_group_wait(v34, v35))
        {
          if (IMOSLoggingEnabled())
          {
            CKLogCStringForType(2);
            v36 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              selfCopy2 = self;
              _os_log_impl(&dword_19020E000, v36, OS_LOG_TYPE_INFO, "%@ thumbnail generation timed out.", buf, 0xCu);
            }
          }

          if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
          {
            _CKLogExternal(2u, @"%@ thumbnail generation timed out.", v37, v38, v39, v40, v41, v42, self);
          }
        }

LABEL_45:
        v43 = v50[5];
        goto LABEL_52;
      }

      if (IMOSLoggingEnabled())
      {
        v44 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          selfCopy2 = @"MKMapSnapshotter";
          v58 = 2112;
          v59 = @"MapKit";
          _os_log_impl(&dword_19020E000, v44, OS_LOG_TYPE_INFO, "Failed weak linking %@ from %@.", buf, 0x16u);
        }
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      selfCopy2 = @"MKMapSnapshotOptions";
      v58 = 2112;
      v59 = @"MapKit";
      _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "Failed weak linking %@ from %@.", buf, 0x16u);
    }
  }

  v43 = 0;
LABEL_52:
  _Block_object_dispose(&v49, 8);

  return v43;
}

uint64_t (*__57__CKLocationAttachmentItem__generateThumbnailFillToSize___block_invoke())(void)
{
  result = MEMORY[0x193AF5ED0]("CLLocationCoordinate2DIsValid", @"CoreLocation");
  _generateThumbnailFillToSize___CLLocationCoordinate2DIsValid = result;
  return result;
}

uint64_t (*__57__CKLocationAttachmentItem__generateThumbnailFillToSize___block_invoke_60())(double, double, double, double)
{
  result = MEMORY[0x193AF5ED0]("MKCoordinateRegionMakeWithDistance", @"MapKit");
  _generateThumbnailFillToSize___MKCoordinateRegionMakeWithDistance = result;
  return result;
}

void __57__CKLocationAttachmentItem__generateThumbnailFillToSize___block_invoke_71(uint64_t a1, void *a2, void *a3)
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
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Got error back in CKLocationAttachmentItem for map snapshot: %@", &v11, 0xCu);
    }
  }

  v8 = [v5 image];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  dispatch_group_leave(*(a1 + 32));
}

- (CLLocationCoordinate2D)coordinate
{
  v30 = *MEMORY[0x1E69E9840];
  if (coordinate__pred_CLLocationCoordinate2DIsValidCoreLocation != -1)
  {
    [CKLocationAttachmentItem coordinate];
  }

  if (coordinate__pred_CLLocationCoordinate2DMakeCoreLocation != -1)
  {
    [CKLocationAttachmentItem coordinate];
  }

  p_coordinate = &self->_coordinate;
  v4 = coordinate__CLLocationCoordinate2DIsValid(self->_coordinate.latitude, self->_coordinate.longitude);
  if ((v4 & 1) == 0)
  {
    v6 = __IMWeakkCLLocationCoordinate2DInvalid(v4, v5);
    v8 = v7;
    [(CKLocationAttachmentItem *)self vCardURLProperties];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = v28 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [MEMORY[0x1E69A80F8] coordinatesFromString:{*(*(&v25 + 1) + 8 * i), v25}];
          if ([v14 count] == 2)
          {
            v15 = coordinate__CLLocationCoordinate2DMake;
            v16 = [v14 objectAtIndex:0];
            [v16 doubleValue];
            v18 = v17;
            v19 = [v14 objectAtIndex:1];
            doubleValue = [v19 doubleValue];
            v6 = v15(doubleValue, v18, v21);
            v8 = v22;

            goto LABEL_16;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    p_coordinate->latitude = v6;
    p_coordinate->longitude = v8;
  }

  latitude = p_coordinate->latitude;
  longitude = p_coordinate->longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

uint64_t (*__38__CKLocationAttachmentItem_coordinate__block_invoke())(double, double)
{
  result = MEMORY[0x193AF5ED0]("CLLocationCoordinate2DIsValid", @"CoreLocation");
  coordinate__CLLocationCoordinate2DIsValid = result;
  return result;
}

void *__38__CKLocationAttachmentItem_coordinate__block_invoke_2()
{
  result = MEMORY[0x193AF5ED0]("CLLocationCoordinate2DMake", @"CoreLocation");
  coordinate__CLLocationCoordinate2DMake = result;
  return result;
}

- (id)vCardURLProperties
{
  fileURL = [(CKAttachmentItem *)self fileURL];
  if (fileURL)
  {
    v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:fileURL options:8 error:0];
    if (v3)
    {
      v8 = 0;
      v4 = [MEMORY[0x1E695CE30] contactsWithData:v3 error:&v8];
      if ([v4 count])
      {
        firstObject = [v4 firstObject];
        urlAddresses = [firstObject urlAddresses];
      }

      else
      {
        urlAddresses = 0;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
  }

  urlAddresses = 0;
LABEL_9:

  return urlAddresses;
}

- (BOOL)isDroppedPin
{
  fileURL = [(CKAttachmentItem *)self fileURL];
  lastPathComponent = [fileURL lastPathComponent];
  v4 = [lastPathComponent isEqualToString:*MEMORY[0x1E69A6E98]];

  return v4;
}

@end