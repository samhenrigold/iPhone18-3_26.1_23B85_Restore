@interface PUSharingHeaderController
+ (PUSharingHeaderController)new;
- (PUSharingHeaderController)init;
- (PUSharingHeaderController)initWithDataProvider:(id)provider;
- (PUSharingHeaderDataProvider)dataProvider;
- (id)_linkPresentationImageForPerson:(id)person;
- (id)_sharingHeaderStatus;
- (id)createTextAttachmentForGlyphImageWithName:(id)name;
- (void)updateIfNeeded;
@end

@implementation PUSharingHeaderController

- (PUSharingHeaderDataProvider)dataProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_dataProvider);

  return WeakRetained;
}

- (id)_linkPresentationImageForPerson:(id)person
{
  personCopy = person;
  if (!personCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSharingHeaderController.m" lineNumber:397 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  v6 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v7 = objc_opt_class();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__PUSharingHeaderController__linkPresentationImageForPerson___block_invoke;
  v12[3] = &unk_1E7B77020;
  v13 = personCopy;
  v8 = personCopy;
  [v6 registerObjectOfClass:v7 visibility:0 loadHandler:v12];
  v9 = [objc_alloc(MEMORY[0x1E696EC68]) initWithItemProvider:v6 properties:0 placeholderImage:0];

  return v9;
}

uint64_t __61__PUSharingHeaderController__linkPresentationImageForPerson___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E69C3780]);
  v5 = *(a1 + 32);
  PLPhysicalScreenScale();
  v7 = [v4 initWithPerson:v5 targetSize:40.0 displayScale:{40.0, v6}];
  [v7 setDeliveryMode:1];
  v8 = [MEMORY[0x1E69C3788] sharedManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__PUSharingHeaderController__linkPresentationImageForPerson___block_invoke_2;
  v11[3] = &unk_1E7B7F870;
  v12 = v3;
  v9 = v3;
  [v8 requestFaceCropForOptions:v7 resultHandler:v11];

  return 0;
}

void __61__PUSharingHeaderController__linkPresentationImageForPerson___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    v5 = [a3 objectForKeyedSubscript:*MEMORY[0x1E69C4108]];
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[PUSharingHeaderController _linkPresentationImageForPerson:]_block_invoke_2";
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "%s: Error fetching thumbnail image data: %@", &v7, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (id)createTextAttachmentForGlyphImageWithName:(id)name
{
  v3 = MEMORY[0x1E69DB878];
  v4 = *MEMORY[0x1E69DDCF8];
  nameCopy = name;
  v6 = [v3 preferredFontForTextStyle:v4];
  v7 = [MEMORY[0x1E69DCAD8] configurationWithFont:v6 scale:1];
  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:nameCopy withConfiguration:v7];

  v9 = [v8 imageWithRenderingMode:2];

  v10 = [objc_alloc(MEMORY[0x1E69DB7F0]) initWithData:0 ofType:0];
  [v10 setImage:v9];

  return v10;
}

- (id)_sharingHeaderStatus
{
  v176[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  dataProvider = [(PUSharingHeaderController *)self dataProvider];
  orderedSelectedAssets = [dataProvider orderedSelectedAssets];

  v174 = 0;
  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  dataProvider2 = [(PUSharingHeaderController *)self dataProvider];
  v7 = dataProvider2;
  if (dataProvider2)
  {
    objc_msgSend_assetTypeCount(dataProvider2);
  }

  else
  {
    v174 = 0;
    v172 = 0u;
    v173 = 0u;
    v170 = 0u;
    v171 = 0u;
  }

  v162 = *(&v172 + 1);
  dataProvider3 = [(PUSharingHeaderController *)self dataProvider];
  preferredExportFormat = [dataProvider3 preferredExportFormat];

  dataProvider4 = [(PUSharingHeaderController *)self dataProvider];
  shareAsCMM = [dataProvider4 shareAsCMM];

  if (shareAsCMM)
  {
    v11 = PXLocalizedString();
    [v3 addObject:v11];
  }

  dataProvider5 = [(PUSharingHeaderController *)self dataProvider];
  sendAsAssetBundles = [dataProvider5 sendAsAssetBundles];

  if (sendAsAssetBundles)
  {
    v14 = @"SHARING_HEADER_ALL_PHOTOS_DATA";
LABEL_12:
    v17 = PULocalizedString(v14);
    [v3 addObject:v17];

    goto LABEL_13;
  }

  dataProvider6 = [(PUSharingHeaderController *)self dataProvider];
  sendAsUnmodifiedOriginals = [dataProvider6 sendAsUnmodifiedOriginals];

  if (sendAsUnmodifiedOriginals)
  {
    if ([orderedSelectedAssets count] == 1)
    {
      v14 = @"SHARING_HEADER_UNMODIFIED_ORIGINALS";
    }

    else
    {
      v14 = @"SHARING_HEADER_UNMODIFIED_ORIGINALS_MULTIPLE";
    }

    goto LABEL_12;
  }

LABEL_13:
  if (![v3 count])
  {
    mEMORY[0x1E69C3A18] = [MEMORY[0x1E69C3A18] sharedInstance];
    showSingleVideoDurationInShareSheetHeader = [mEMORY[0x1E69C3A18] showSingleVideoDurationInShareSheetHeader];

    if (showSingleVideoDurationInShareSheetHeader)
    {
      if ([orderedSelectedAssets count] == 1 && *(&v170 + 1) && !v171)
      {
        firstObject = [orderedSelectedAssets firstObject];
        objc_msgSend_duration(firstObject);
        v21 = PXLocalizedVideoDuration();

        [v3 addObject:v21];
      }
    }
  }

  dataProvider7 = [(PUSharingHeaderController *)self dataProvider];
  excludeCaption = [dataProvider7 excludeCaption];
  if (*(&v173 + 1))
  {
    v24 = excludeCaption;
  }

  else
  {
    v24 = 1;
  }

  dataProvider8 = [(PUSharingHeaderController *)self dataProvider];
  [dataProvider8 excludeAccessibilityDescription];

  if (v24 == 1)
  {
    v26 = 0;
  }

  else
  {
    [v3 addObject:@"{CaptionIcon}"];
    v27 = [(PUSharingHeaderController *)self createTextAttachmentForGlyphImageWithName:@"quote.bubble"];
    image = [v27 image];
    [image baselineOffsetFromBottom];
    v30 = v29;
    [image alignmentRectInsets];
    v32 = v31 - v30 + 1.0;
    [v27 bounds];
    [image size];
    [v27 setBounds:{0.0, v32, v33, v34}];
    v26 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v27];
  }

  v35 = preferredExportFormat;
  if (!*(&v172 + 1))
  {
    goto LABEL_47;
  }

  dataProvider9 = [(PUSharingHeaderController *)self dataProvider];
  excludeLocation = [dataProvider9 excludeLocation];

  if (!excludeLocation)
  {
    firstObject2 = [orderedSelectedAssets firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      firstObject3 = [orderedSelectedAssets firstObject];
      photoLibrary = [firstObject3 photoLibrary];
      librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

      v46 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
      v176[0] = v46;
      v47 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"endDate" ascending:1];
      v176[1] = v47;
      v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v176 count:2];

      [librarySpecificFetchOptions setSortDescriptors:v48];
      v157 = librarySpecificFetchOptions;
      v158 = orderedSelectedAssets;
      v49 = [MEMORY[0x1E6978650] fetchAssetCollectionsContainingAssets:orderedSelectedAssets withType:3 options:librarySpecificFetchOptions];
      orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
      mEMORY[0x1E69C3A18]2 = [MEMORY[0x1E69C3A18] sharedInstance];
      sharingHeaderLocationDisplayStyle = [mEMORY[0x1E69C3A18]2 sharingHeaderLocationDisplayStyle];

      if (!sharingHeaderLocationDisplayStyle)
      {
LABEL_49:
        if (v162 == 1)
        {
          v65 = @"SHARING_HEADER_LOCATION_ON";
        }

        else
        {
          v65 = @"SHARING_HEADER_LOCATION_ON_MULTIPLE";
        }

        v39 = PULocalizedString(v65);
        orderedSelectedAssets = v158;
        goto LABEL_68;
      }

      v154 = v48;
      v155 = firstObject3;
      v156 = v26;
      v168 = 0u;
      v169 = 0u;
      v166 = 0u;
      v167 = 0u;
      obj = v49;
      v53 = [obj countByEnumeratingWithState:&v166 objects:v175 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v167;
        while (2)
        {
          for (i = 0; i != v54; ++i)
          {
            v57 = v3;
            if (*v167 != v55)
            {
              objc_enumerationMutation(obj);
            }

            localizedLocationNames = [*(*(&v166 + 1) + 8 * i) localizedLocationNames];
            [orderedSet addObjectsFromArray:localizedLocationNames];
            if ([orderedSet count] >= 2 && sharingHeaderLocationDisplayStyle == 1)
            {

              v35 = preferredExportFormat;
              firstObject3 = v155;
              v48 = v154;
              v26 = v156;
              goto LABEL_49;
            }

            v59 = v49;
            v60 = [orderedSet count];

            v61 = v60 >= 2;
            v49 = v59;
            v3 = v57;
            if (v61 && sharingHeaderLocationDisplayStyle == 2)
            {
              goto LABEL_45;
            }
          }

          v54 = [obj countByEnumeratingWithState:&v166 objects:v175 count:16];
          if (v54)
          {
            continue;
          }

          break;
        }
      }

LABEL_45:

      v62 = [orderedSet count];
      if ([orderedSet count])
      {
        v63 = [orderedSet objectAtIndexedSubscript:0];
      }

      else
      {
        v63 = 0;
      }

      orderedSelectedAssets = v158;
      v35 = preferredExportFormat;
      if ([orderedSet count] < 2)
      {
        v66 = 0;
      }

      else
      {
        v66 = [orderedSet objectAtIndexedSubscript:1];
      }

      v26 = v156;
      v163 = v63;
      if (v62 == 1)
      {
        if (v63)
        {
          v67 = v66;
          PULocalizedString(@"SHARING_HEADER_ONE_LOCATION");
          v69 = v68 = v49;
          v39 = PUStringWithValidatedFormat(v69, @"%@", v70, v71, v72, v73, v74, v75, v63);

          v66 = v67;
          v49 = v68;
LABEL_66:
          v48 = v154;
          firstObject3 = v155;
          goto LABEL_67;
        }
      }

      else if (v63 | v66)
      {
        if (v62 == 2)
        {
          v26 = v156;
          v48 = v154;
          if (v63 && v66)
          {
            v76 = v66;
            PULocalizedString(@"SHARING_HEADER_TWO_LOCATIONS");
            v77 = v165 = v49;
            v39 = PUStringWithValidatedFormat(v77, @"%@ %@", v78, v79, v80, v81, v82, v83, v63);

            v66 = v76;
            v49 = v165;
            firstObject3 = v155;
LABEL_67:

LABEL_68:
            v40 = @"location.fill";
            goto LABEL_69;
          }

          obja = v66;
          if (v63)
          {
            v120 = v63;
          }

          else
          {
            v120 = v66;
          }

          v121 = v120;
          if (v121)
          {
            v122 = PULocalizedString(@"SHARING_HEADER_ONE_LOCATION_AND_MORE");
            PUStringWithValidatedFormat(v122, @"%@", v123, v124, v125, v126, v127, v128, v121);
          }

          else
          {
            [MEMORY[0x1E696AAA8] currentHandler];
            v139 = v138 = v49;
            [v139 handleFailureInMethod:a2 object:self file:@"PUSharingHeaderController.m" lineNumber:314 description:{@"Invalid parameter not satisfying: %@", @"locationName"}];

            v49 = v138;
            v122 = PULocalizedString(@"SHARING_HEADER_ONE_LOCATION_AND_MORE");
            PUStringWithValidatedFormat(v122, @"%@", v140, v141, v142, v143, v144, v145, 0);
          }
          v39 = ;

          v35 = preferredExportFormat;
          firstObject3 = v155;
          v26 = v156;
        }

        else
        {
          if (v62 < 3)
          {
            v39 = 0;
            v26 = v156;
            goto LABEL_66;
          }

          firstObject3 = v155;
          if (v63 && v66)
          {
            v111 = v66;
            PULocalizedString(@"SHARING_HEADER_TWO_LOCATIONS_AND_N_MORE");
            v113 = v112 = v49;
            v39 = PUStringWithValidatedFormat(v113, @"%@ %@ %ld", v114, v115, v116, v117, v118, v119, v63);

            v66 = v111;
            v49 = v112;
            v26 = v156;
            v48 = v154;
            goto LABEL_67;
          }

          v129 = v63;
          obja = v66;
          if (!v63)
          {
            v129 = v66;
          }

          v130 = v129;
          if (v130)
          {
            v131 = PULocalizedString(@"SHARING_HEADER_ONE_LOCATION_AND_N_MORE");
            PUStringWithValidatedFormat(v131, @"%@ %ld", v132, v133, v134, v135, v136, v137, v130);
          }

          else
          {
            [MEMORY[0x1E696AAA8] currentHandler];
            v147 = v146 = v49;
            [v147 handleFailureInMethod:a2 object:self file:@"PUSharingHeaderController.m" lineNumber:322 description:{@"Invalid parameter not satisfying: %@", @"locationName"}];

            v49 = v146;
            v131 = PULocalizedString(@"SHARING_HEADER_ONE_LOCATION_AND_N_MORE");
            PUStringWithValidatedFormat(v131, @"%@ %ld", v148, v149, v150, v151, v152, v153, 0);
          }
          v39 = ;
          v26 = v156;

          v35 = preferredExportFormat;
          v48 = v154;
          firstObject3 = v155;
        }

        v66 = obja;
        goto LABEL_67;
      }

      v84 = v66;
      v39 = PULocalizedString(@"SHARING_HEADER_LOCATION_ON");
      v66 = v84;
      goto LABEL_66;
    }

LABEL_47:
    v64 = 0;
    goto LABEL_71;
  }

  if ([orderedSelectedAssets count] == 1)
  {
    v38 = @"SHARING_HEADER_LOCATION_OFF";
  }

  else
  {
    v38 = @"SHARING_HEADER_LOCATION_OFF_MULTIPLE";
  }

  v39 = PULocalizedString(v38);
  v40 = @"location.slash";
LABEL_69:
  v85 = PULocalizedString(@"SHARING_HEADER_LOCATION_STRING_WITH_LOCATION_ICON_PREFIX");
  v92 = PUStringWithValidatedFormat(v85, @"%@ %@", v86, v87, v88, v89, v90, v91, @"{LocationIcon}");

  v93 = [(PUSharingHeaderController *)self createTextAttachmentForGlyphImageWithName:v40];
  image2 = [v93 image];
  [image2 alignmentRectInsets];
  v96 = v95;
  [v93 bounds];
  [image2 size];
  [v93 setBounds:{0.0, v96, v97, v98}];
  v64 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v93];

  if (v92)
  {
    [v3 addObject:v92];
  }

LABEL_71:
  if (v35 == 2)
  {
    v99 = @"SHARING_HEADER_FORMAT_COMPATIBLE";
  }

  else
  {
    if (v35 != 1)
    {
      goto LABEL_76;
    }

    v99 = @"SHARING_HEADER_FORMAT_CURRENT";
  }

  v100 = PULocalizedString(v99);
  [v3 addObject:v100];

LABEL_76:
  if ([v3 count])
  {
    v101 = PULocalizedString(@"SHARING_HEADER_SUBTITLE_SEPARATOR");
    v102 = [v3 componentsJoinedByString:v101];
    v103 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v102];
    if (v26)
    {
      v104 = [v102 rangeOfString:@"{CaptionIcon}"];
      [v103 replaceCharactersInRange:v104 withAttributedString:{v105, v26}];
      v106 = [v102 stringByReplacingOccurrencesOfString:@"{CaptionIcon}" withString:@" "];

      v102 = v106;
    }

    if (v64)
    {
      v107 = [v102 rangeOfString:@"{LocationIcon}"];
      [v103 replaceCharactersInRange:v107 withAttributedString:{v108, v64}];
    }
  }

  else
  {
    v103 = v26;
  }

  v109 = v103;

  return v109;
}

- (void)updateIfNeeded
{
  v63[1] = *MEMORY[0x1E69E9840];
  dataProvider = [(PUSharingHeaderController *)self dataProvider];
  orderedSelectedAssets = [dataProvider orderedSelectedAssets];

  linkMetadata = [(PUSharingHeaderController *)self linkMetadata];
  if (!linkMetadata)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSharingHeaderController.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"linkMetadata"}];
  }

  specialization = [linkMetadata specialization];
  if (!specialization)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUSharingHeaderController.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"statusMetadata"}];
  }

  _sharingHeaderStatus = [(PUSharingHeaderController *)self _sharingHeaderStatus];
  [specialization setStatus:_sharingHeaderStatus];
  dataProvider2 = [(PUSharingHeaderController *)self dataProvider];
  headerTitle = [dataProvider2 headerTitle];

  MEMORY[0x1B8C6D660]([linkMetadata setTitle:headerTitle]);
  dataProvider3 = [(PUSharingHeaderController *)self dataProvider];
  shareAsCMM = [dataProvider3 shareAsCMM];

  if (shareAsCMM)
  {
    icloudLinkImage = self->_icloudLinkImage;
    if (!icloudLinkImage)
    {
      v14 = MEMORY[0x1E69DCAB8];
      v15 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
      v16 = [v14 systemImageNamed:@"link.icloud" withConfiguration:v15];

      v17 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v16];
      v18 = self->_icloudLinkImage;
      self->_icloudLinkImage = v17;

      icloudLinkImage = self->_icloudLinkImage;
    }

    v63[0] = icloudLinkImage;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:1];
    [linkMetadata setAlternateImages:v19];

    goto LABEL_54;
  }

  dataProvider4 = [(PUSharingHeaderController *)self dataProvider];
  keyAsset = [dataProvider4 keyAsset];

  v54 = a2;
  if (keyAsset)
  {
    v22 = [MEMORY[0x1E695DFB8] orderedSetWithObject:keyAsset];

    orderedSelectedAssets = v22;
  }

  alternateImages = [linkMetadata alternateImages];
  v57 = _sharingHeaderStatus;
  if ([alternateImages containsObject:self->_icloudLinkImage])
  {

    sharingHeaderFrontAsset = self->_sharingHeaderFrontAsset;
    self->_sharingHeaderFrontAsset = 0;

    sharingHeaderBackAsset = self->_sharingHeaderBackAsset;
    self->_sharingHeaderBackAsset = 0;

    alternateImages = 0;
    self->_showingUnmodifiedOriginalThumbnail = 0;
  }

  dataProvider5 = [(PUSharingHeaderController *)self dataProvider];
  person = [dataProvider5 person];

  firstObject = [orderedSelectedAssets firstObject];
  v56 = keyAsset;
  if ([orderedSelectedAssets count] < 2)
  {
    v28 = 0;
  }

  else
  {
    v28 = [orderedSelectedAssets objectAtIndexedSubscript:1];
  }

  v58 = orderedSelectedAssets;
  dataProvider6 = [(PUSharingHeaderController *)self dataProvider];
  sendAsUnmodifiedOriginals = [dataProvider6 sendAsUnmodifiedOriginals];

  v30 = self->_sharingHeaderFrontAsset;
  v31 = self->_sharingHeaderBackAsset;
  showingUnmodifiedOriginalThumbnail = self->_showingUnmodifiedOriginalThumbnail;
  v60 = v30;
  v61 = v31;
  if (firstObject | v30)
  {
    v33 = [firstObject isEqual:v30];
    v34 = v61;
    v35 = v33 ^ 1;
  }

  else
  {
    v34 = v31;
    v35 = 0;
  }

  v36 = v28 | v34;
  if (v28 | v34)
  {
    v36 = [v28 isEqual:v34] ^ 1;
  }

  if (showingUnmodifiedOriginalThumbnail != sendAsUnmodifiedOriginals)
  {
    v35 = firstObject != 0;
    v36 = v28 != 0;
  }

  v55 = v36;
  if (alternateImages)
  {
    v37 = [alternateImages mutableCopy];
  }

  else
  {
    v37 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  }

  v38 = v37;
  if (v35)
  {
    objc_storeStrong(&self->_sharingHeaderFrontAsset, firstObject);
    if (firstObject)
    {
      if ([firstObject isEqual:v61])
      {
        if ([alternateImages count] <= 1)
        {
          currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler3 handleFailureInMethod:v54 object:self file:@"PUSharingHeaderController.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"previousImagesStack.count > 1"}];
        }

        v39 = [alternateImages objectAtIndexedSubscript:1];
      }

      else
      {
        v39 = PXLinkPresentationImageForAsset();
      }
    }

    else
    {
      if (!person)
      {
        goto LABEL_36;
      }

      v39 = [(PUSharingHeaderController *)self _linkPresentationImageForPerson:person];
    }

    v40 = v39;
    if (v39)
    {
LABEL_40:
      [v38 setObject:v40 atIndexedSubscript:0];

      goto LABEL_41;
    }

LABEL_36:
    placeholderImage = self->_placeholderImage;
    if (placeholderImage)
    {
      v40 = placeholderImage;
    }

    else
    {
      v42 = MEMORY[0x1E69DCAB8];
      v43 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
      v44 = [v42 systemImageNamed:@"photo" withConfiguration:v43];

      v45 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v44];
      v46 = self->_placeholderImage;
      self->_placeholderImage = v45;

      v40 = self->_placeholderImage;
      if (!v40)
      {
        currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler4 handleFailureInMethod:v54 object:self file:@"PUSharingHeaderController.m" lineNumber:160 description:{@"Invalid parameter not satisfying: %@", @"frontImage"}];

        v40 = 0;
      }
    }

    goto LABEL_40;
  }

LABEL_41:
  orderedSelectedAssets = v58;
  if (v55)
  {
    objc_storeStrong(&self->_sharingHeaderBackAsset, v28);
    if (!v28)
    {
      goto LABEL_50;
    }

    if ([v28 isEqual:v60])
    {
      if (![alternateImages count])
      {
        currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler5 handleFailureInMethod:v54 object:self file:@"PUSharingHeaderController.m" lineNumber:170 description:{@"Invalid parameter not satisfying: %@", @"previousImagesStack.count > 0"}];
      }

      v47 = [alternateImages objectAtIndexedSubscript:0];
    }

    else
    {
      v47 = PXLinkPresentationImageForAsset();
    }

    v48 = v47;
    if (v47)
    {
      [v38 setObject:v47 atIndexedSubscript:1];
    }

    else
    {
LABEL_50:
      [v38 removeObjectAtIndex:1];
    }
  }

  self->_showingUnmodifiedOriginalThumbnail = sendAsUnmodifiedOriginals;
  if (([alternateImages isEqualToArray:v38] & 1) == 0)
  {
    [linkMetadata setAlternateImages:v38];
  }

  _sharingHeaderStatus = v57;
LABEL_54:
}

- (PUSharingHeaderController)initWithDataProvider:(id)provider
{
  providerCopy = provider;
  if (!providerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSharingHeaderController.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"dataProvider"}];
  }

  v13.receiver = self;
  v13.super_class = PUSharingHeaderController;
  v6 = [(PUSharingHeaderController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_dataProvider, providerCopy);
    v8 = objc_alloc_init(MEMORY[0x1E696EC28]);
    v9 = objc_alloc_init(MEMORY[0x1E696ECA0]);
    linkMetadata = v7->_linkMetadata;
    v7->_linkMetadata = v9;

    [(LPLinkMetadata *)v7->_linkMetadata setSpecialization:v8];
  }

  return v7;
}

- (PUSharingHeaderController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUSharingHeaderController.m" lineNumber:51 description:{@"%s is not available as initializer", "-[PUSharingHeaderController init]"}];

  abort();
}

+ (PUSharingHeaderController)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUSharingHeaderController.m" lineNumber:55 description:{@"%s is not available as initializer", "+[PUSharingHeaderController new]"}];

  abort();
}

@end