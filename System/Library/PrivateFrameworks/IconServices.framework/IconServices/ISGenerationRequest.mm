@interface ISGenerationRequest
- (ISGenerationRequest)init;
- (ISGenerationRequest)initWithCoder:(id)coder;
- (id)compositorElementsForDecorations:(id)decorations primaryIconResourceProvider:(id)provider imageDescriptor:(id)descriptor;
- (id)generateImageReturningRecordIdentifiers:(id *)identifiers;
- (id)iconSpecificationFromRecipe:(id)recipe;
- (void)encodeWithCoder:(id)coder;
- (void)sendAnalytics:(id)analytics compositor:(id)compositor imageDescriptor:(id)descriptor;
@end

@implementation ISGenerationRequest

- (ISGenerationRequest)init
{
  v10.receiver = self;
  v10.super_class = ISGenerationRequest;
  v2 = [(ISGenerationRequest *)&v10 init];
  if (v2)
  {
    v8 = 0;
    v9 = 0;
    [MEMORY[0x1E6963688] _is_getSequenceNumber:&v9 andUUID:&v8];
    v3 = v8;
    v4 = v8;
    v2->_lsDatabaseSequenceNumber = v9;
    objc_storeStrong(&v2->_lsDatabaseUUID, v3);
    if (!_lastAnalyticsStartDate)
    {
      v5 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:0.0];
      v6 = _lastAnalyticsStartDate;
      _lastAnalyticsStartDate = v5;
    }
  }

  return v2;
}

- (ISGenerationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ISGenerationRequest;
  v5 = [(ISGenerationRequest *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageDescriptor"];
    imageDescriptor = v5->_imageDescriptor;
    v5->_imageDescriptor = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lsDatabaseUUID"];
    lsDatabaseUUID = v5->_lsDatabaseUUID;
    v5->_lsDatabaseUUID = v10;

    v5->_lsDatabaseSequenceNumber = [coderCopy decodeInt64ForKey:@"lsDatabaseSequenceNumber"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  imageDescriptor = self->_imageDescriptor;
  coderCopy = coder;
  [coderCopy encodeObject:imageDescriptor forKey:@"imageDescriptor"];
  [coderCopy encodeObject:self->_icon forKey:@"icon"];
  [coderCopy encodeObject:self->_lsDatabaseUUID forKey:@"lsDatabaseUUID"];
  [coderCopy encodeInt64:self->_lsDatabaseSequenceNumber forKey:@"lsDatabaseSequenceNumber"];
}

- (void)sendAnalytics:(id)analytics compositor:(id)compositor imageDescriptor:(id)descriptor
{
  analyticsCopy = analytics;
  compositorCopy = compositor;
  descriptorCopy = descriptor;
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceDate:_lastAnalyticsStartDate];
  v13 = v12;

  v14 = +[ISDefaults sharedInstance];
  isIconSegmentationAnalyticsForAllIconsEnabled = [v14 isIconSegmentationAnalyticsForAllIconsEnabled];

  if ((isIconSegmentationAnalyticsForAllIconsEnabled & 1) != 0 || v13 > 604800.0)
  {
    _analyticsMessageCount = 0;
  }

  else if (_analyticsMessageCount > 9)
  {
    goto LABEL_18;
  }

  icon = [(ISGenerationRequest *)self icon];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    icon2 = [(ISGenerationRequest *)self icon];
    bundleIdentifier = [icon2 bundleIdentifier];

    if (([bundleIdentifier hasPrefix:@"com.apple"] & 1) == 0)
    {
      v20 = +[ISDefaults sharedInstance];
      if ([v20 isIconSegmentationAnalyticsForAllIconsEnabled])
      {

LABEL_11:
        icon3 = [(ISGenerationRequest *)self icon];
        bundleVersion = [icon3 bundleVersion];

        iconResource = [analyticsCopy iconResource];
        objc_opt_class();
        v25 = objc_opt_isKindOfClass();

        if (v25)
        {
          iconResource2 = [analyticsCopy iconResource];
          hasDarkResource = [iconResource2 hasDarkResource];
          hasTintableResource = [iconResource2 hasTintableResource];
        }

        else
        {
          hasTintableResource = 0;
          hasDarkResource = 0;
        }

        analyticsSegmented = [compositorCopy analyticsSegmented];
        appearance = [descriptorCopy appearance];
        v35 = MEMORY[0x1E69E9820];
        v36 = bundleIdentifier;
        v31 = bundleVersion;
        LOBYTE(v38) = analyticsSegmented;
        BYTE1(v38) = hasDarkResource;
        BYTE2(v38) = hasTintableResource;
        v37 = v31;
        AnalyticsSendEventLazy();
        v32 = _analyticsMessageCount;
        if (!_analyticsMessageCount)
        {
          date2 = [MEMORY[0x1E695DF00] date];
          v34 = _lastAnalyticsStartDate;
          _lastAnalyticsStartDate = date2;

          v32 = _analyticsMessageCount;
        }

        _analyticsMessageCount = v32 + 1;

        goto LABEL_17;
      }

      v21 = arc4random_uniform(3u);

      if (v21 == 1)
      {
        goto LABEL_11;
      }
    }

LABEL_17:
  }

LABEL_18:
}

id __76__ISGenerationRequest_Generation__sendAnalytics_compositor_imageDescriptor___block_invoke(uint64_t a1)
{
  v13[6] = *MEMORY[0x1E69E9840];
  v12[0] = @"Identifier";
  v2 = *(a1 + 32);
  v3 = v2;
  if (!v2)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v3;
  v12[1] = @"Version";
  v4 = *(a1 + 40);
  v5 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v5;
  v12[2] = @"Segmentable";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
  v13[2] = v6;
  v12[3] = @"HasDarkResources";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 57)];
  v13[3] = v7;
  v12[4] = @"HasTintedResources";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 58)];
  v13[4] = v8;
  v12[5] = @"HomeScreenStyle";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  v13[5] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:6];

  if (v4)
  {
    if (v2)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (v2)
    {
      goto LABEL_7;
    }
  }

LABEL_7:

  return v10;
}

- (id)generateImageReturningRecordIdentifiers:(id *)identifiers
{
  selfCopy = self;
  v127 = *MEMORY[0x1E69E9840];
  imageDescriptor = [(ISGenerationRequest *)self imageDescriptor];
  v5 = [imageDescriptor copy];

  icon = [(ISGenerationRequest *)selfCopy icon];
  v7 = icon;
  v110 = icon;
  if (v5)
  {
    v8 = _ISPrepareISIconSignpostLog(icon);
    v9 = os_signpost_enabled(v8);

    if (v9)
    {
      v107 = selfCopy;
      v111 = v5;
      v10 = [v7 _activeSignpostsForDescriptor:v5];
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v120 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v117 objects:v126 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v118;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v118 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v117 + 1) + 8 * i);
            unsignedLongLongValue = [v15 unsignedLongLongValue];
            if (unsignedLongLongValue)
            {
              v17 = _ISPrepareISIconSignpostLog(unsignedLongLongValue);
              v18 = os_signpost_enabled(v17);

              if (v18)
              {
                v20 = _ISPrepareISIconSignpostLog(v19);
                unsignedLongLongValue2 = [v15 unsignedLongLongValue];
                if ((unsignedLongLongValue2 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v22 = unsignedLongLongValue2;
                  if (os_signpost_enabled(v20))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_1A77B8000, v20, OS_SIGNPOST_EVENT, v22, "PrepareISIcon", "ISA_GENERATEING_IMAGE", buf, 2u);
                  }
                }
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v117 objects:v126 count:16];
        }

        while (v12);
      }

      v7 = v110;
      v5 = v111;
      selfCopy = v107;
    }
  }

  makeResourceProvider = [v7 makeResourceProvider];
  v24 = makeResourceProvider;
  if (makeResourceProvider)
  {
    [makeResourceProvider resolveIconResource];
    [v24 configureProviderFromDescriptor:v5];
    v25 = objc_alloc_init(ISCompositor);
    customRecipe = [v24 customRecipe];

    if (customRecipe)
    {
      customRecipe2 = [v24 customRecipe];
    }

    else
    {
      customRecipe2 = v24;
    }

    v29 = customRecipe2;
    v30 = [ISRecipeFactory factoryWithDescriptor:v5 resourceProvider:v24];
    recipe = [v30 recipe];

    if ([v24 isGenericProvider] && (objc_msgSend(v5, "shape") == 5 || objc_msgSend(v5, "shape") == 6))
    {
      v32 = MEMORY[0x1E69A8990];
      iconsetResourceBundle = [MEMORY[0x1E69A8960] iconsetResourceBundle];
      v34 = [v32 imageBagWithResourcesNamed:@"AppClipDefaultIcon" fromBundle:iconsetResourceBundle];
      [v24 setIconResource:v34];
    }

    if ([v5 shape] == 5 || objc_msgSend(v5, "shape") == 6 || (objc_msgSend(v24, "suggestedRecipe"), v35 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v35, (isKindOfClass & 1) != 0))
    {
      [(ISCompositor *)v25 setRenderingMode:2];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ISCompositor *)v25 setRenderingMode:2];
    }

    v37 = [(ISGenerationRequest *)selfCopy iconSpecificationFromRecipe:recipe];
    [v5 size];
    v39 = v38;
    v41 = v40;
    [v5 scale];
    v43 = [v37 imageSpecificationForSize:v39 scale:{v41, v42}];
    [v43 size];
    v45 = v44;
    [v37 maxSize];
    v105 = v37;
    if (v45 == v46 && ([v43 size], v48 = v47, objc_msgSend(v37, "maxSize"), v48 == v49))
    {
      [v43 scale];
      v51 = v50;
      [v37 maxScale];
      v102 = v51 == v52;
    }

    else
    {
      v102 = 0;
    }

    v112 = v43;
    iconResource = [v24 iconResource];
    objc_opt_class();
    v54 = objc_opt_isKindOfClass();

    if (v54)
    {
      iconResource2 = [v24 iconResource];
      [iconResource2 updateDescriptorWithImageDescriptor:v5];
    }

    v108 = v29;
    v104 = [[ISCompositorElement alloc] initWithRecipe:recipe resourceProvider:v29];
    [(ISCompositor *)v25 addElement:?];
    v56 = objc_opt_new();
    decorations = [v7 decorations];
    [v56 addObjectsFromArray:decorations];

    v58 = [ISIconDecoration decorationsFromDescriptor:v5];
    [v56 addObjectsFromArray:v58];

    v103 = v56;
    v59 = [(ISGenerationRequest *)selfCopy compositorElementsForDecorations:v56 primaryIconResourceProvider:v24 imageDescriptor:v5];
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v60 = [v59 countByEnumeratingWithState:&v113 objects:v125 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v114;
      do
      {
        for (j = 0; j != v61; ++j)
        {
          if (*v114 != v62)
          {
            objc_enumerationMutation(v59);
          }

          [(ISCompositor *)v25 addElement:*(*(&v113 + 1) + 8 * j)];
        }

        v61 = [v59 countByEnumeratingWithState:&v113 objects:v125 count:16];
      }

      while (v61);
    }

    [v112 size];
    v65 = v64;
    v67 = v66;
    [v112 scale];
    v69 = v68;
    if (([v5 specialIconOptions] & 4) != 0)
    {
      [v5 size];
      v65 = v70;
      v67 = v71;
      [v5 scale];
      v69 = v72;
    }

    objc_opt_class();
    v106 = recipe;
    v73 = objc_opt_isKindOfClass();
    v74 = round(v65 * 1.18);
    v75 = round(v67 * 1.18);
    if (v73)
    {
      v76 = v75;
    }

    else
    {
      v76 = v67;
    }

    if (v73)
    {
      v77 = v74;
    }

    else
    {
      v77 = v65;
    }

    iconResource3 = [v24 iconResource];
    v79 = [iconResource3 conformsToProtocol:&unk_1F1A69890];

    if (v79)
    {
      [(ISCompositor *)v25 setGraphicsContextPreset:1];
    }

    v80 = [(ISCompositor *)v25 imageForSize:v77 scale:v76, v69];
    [(ISGenerationRequest *)selfCopy sendAnalytics:v24 compositor:v25 imageDescriptor:v5];
    iconResource4 = [v24 iconResource];
    v82 = [iconResource4 conformsToProtocol:&unk_1F1A69910];

    if (v82)
    {
      iconResource5 = [v24 iconResource];
      v84 = [iconResource5 layerDataForSize:v77 scale:{v76, v69}];
    }

    else
    {
      v84 = 0;
    }

    v85 = objc_alloc(MEMORY[0x1E69A8988]);
    cGImage = [v80 CGImage];
    [v80 scale];
    v101 = v84;
    v87 = [v85 initWithCGImage:cGImage scale:v84 layerData:?];

    [v112 minimumSize];
    [v87 setMinimumSize:?];
    [v87 setIconSize:{v65, v67}];
    data = [v87 data];
    v89 = objc_alloc(MEMORY[0x1E69A8988]);
    validationToken = [v24 validationToken];
    v28 = [v89 initWithData:data uuid:0 validationToken:validationToken];

    iconResource6 = [v24 iconResource];
    LODWORD(validationToken) = [iconResource6 conformsToProtocol:&unk_1F1A69890];

    if (validationToken)
    {
      iconResource7 = [v24 iconResource];
      generationReport = [iconResource7 generationReport];
      [v28 setGenerationReport:generationReport];
    }

    else
    {
      iconResource7 = [v87 generationReport];
      [v28 setGenerationReport:iconResource7];
    }

    [v28 setLargest:v102];
    if (identifiers)
    {
      v94 = v5;
      sourceRecordIdentifiers = [v24 sourceRecordIdentifiers];
      if (sourceRecordIdentifiers && (v96 = sourceRecordIdentifiers, [v24 sourceRecordIdentifiers], v97 = objc_claimAutoreleasedReturnValue(), v98 = objc_msgSend(v97, "count"), v97, v96, v98))
      {
        *identifiers = [v24 sourceRecordIdentifiers];
      }

      else
      {
        v99 = _ISDefaultLog(sourceRecordIdentifiers);
        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v122 = v24;
          v123 = 2112;
          v124 = v110;
          _os_log_impl(&dword_1A77B8000, v99, OS_LOG_TYPE_DEFAULT, "Resource provider %@ for %@ has no record identifiers", buf, 0x16u);
        }
      }

      v5 = v94;
    }

    v7 = v110;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (id)iconSpecificationFromRecipe:(id)recipe
{
  recipeCopy = recipe;
  if (objc_opt_respondsToSelector())
  {
    [recipeCopy iconSpecification];
  }

  else
  {
    [MEMORY[0x1E69A8980] defaultIconSpecification];
  }
  v4 = ;

  return v4;
}

- (id)compositorElementsForDecorations:(id)decorations primaryIconResourceProvider:(id)provider imageDescriptor:(id)descriptor
{
  v65 = *MEMORY[0x1E69E9840];
  decorationsCopy = decorations;
  providerCopy = provider;
  descriptorCopy = descriptor;
  v51 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = decorationsCopy;
  v53 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v53)
  {
    v10 = *v55;
    v49 = providerCopy;
    v50 = *v55;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v55 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v54 + 1) + 8 * i);
        v13 = [ISRecipeFactory factoryWithDescriptor:descriptorCopy resourceProvider:providerCopy];
        v14 = [v13 recipeForDecoration:v12];

        identifierKind = [v12 identifierKind];
        if (identifierKind == 1)
        {
          v24 = MEMORY[0x1E6963620];
          identifier = [v12 identifier];
          v19 = [v24 bundleRecordWithBundleIdentifier:identifier allowPlaceholder:1 error:0];

          v18 = [[ISRecordResourceProvider alloc] initWithRecord:v19 options:0];
          [(ISResourceProvider *)v18 resolveIconResource];
          [(ISRecordResourceProvider *)v18 configureProviderFromDescriptor:descriptorCopy];
          if (!v14)
          {
            goto LABEL_32;
          }

          iconResource = [(ISRecordResourceProvider *)v18 iconResource];

          if (!iconResource)
          {
            goto LABEL_32;
          }

          iconResource2 = [(ISRecordResourceProvider *)v18 iconResource];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            iconResource3 = [(ISRecordResourceProvider *)v18 iconResource];
            [iconResource3 updateDescriptorWithImageDescriptor:descriptorCopy];
          }

          v30 = [_ISCompositorElement alloc];
          v60 = @"kISPrimaryResourceKey";
          iconResource4 = [(ISRecordResourceProvider *)v18 iconResource];
          v61 = iconResource4;
          v32 = MEMORY[0x1E695DF20];
          v33 = &v61;
          v34 = &v60;
          goto LABEL_31;
        }

        if (identifierKind != 3)
        {
          if (identifierKind != 2)
          {
            goto LABEL_34;
          }

          decorationResources = [providerCopy decorationResources];
          uuid = [v12 uuid];
          v18 = [decorationResources objectForKeyedSubscript:uuid];

          if (v18)
          {
            v19 = [[ISResourceProvider alloc] initWithResource:v18 templateResource:0];
          }

          else
          {
            v35 = MEMORY[0x1E69636B0];
            identifier2 = [v12 identifier];
            v37 = [v35 typeRecordWithIdentifier:identifier2];

            coreTypesBundleRecord = [MEMORY[0x1E6963620] coreTypesBundleRecord];
            bundleIdentifier = [coreTypesBundleRecord bundleIdentifier];

            v40 = [MEMORY[0x1E69636B0] typeRecordWithIdentifier:@"com.apple.icon-decoration.system"];
            if ([v37 conformsToTypeRecord:v40] && (objc_msgSend(v37, "declaringBundleRecord"), v41 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v41, "bundleIdentifier"), v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "isEqualToString:", bundleIdentifier), v42, v41, !v43))
            {
              v19 = 0;
            }

            else
            {
              identifier3 = [v37 identifier];
              v19 = [(ISResourceProvider *)ISRecordResourceProvider resourceProviderWithTypeIdentifier:identifier3 options:0];
            }

            providerCopy = v49;
            v10 = v50;
          }

          [(ISResourceProvider *)v19 resolveIconResource];
          [(ISResourceProvider *)v19 configureProviderFromDescriptor:descriptorCopy];
          if (!v14)
          {
            goto LABEL_32;
          }

          iconResource5 = [(ISResourceProvider *)v19 iconResource];

          if (!iconResource5)
          {
            goto LABEL_32;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(ISRecordResourceProvider *)v18 updateDescriptorWithImageDescriptor:descriptorCopy];
          }

          v30 = [_ISCompositorElement alloc];
          v62 = @"kISPrimaryResourceKey";
          iconResource4 = [(ISResourceProvider *)v19 iconResource];
          v63 = iconResource4;
          v32 = MEMORY[0x1E695DF20];
          v33 = &v63;
          v34 = &v62;
LABEL_31:
          v46 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:1];
          v47 = [(_ISCompositorElement *)v30 initWithRecipe:v14 resources:v46];

          [v51 addObject:v47];
          v10 = v50;
          goto LABEL_32;
        }

        compositorResource = [v12 compositorResource];
        v19 = compositorResource;
        if (v14)
        {
          v21 = compositorResource == 0;
        }

        else
        {
          v21 = 1;
        }

        if (v21)
        {
          goto LABEL_33;
        }

        v22 = [_ISCompositorElement alloc];
        v58 = @"kISPrimaryResourceKey";
        v59 = v19;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        v18 = [(_ISCompositorElement *)v22 initWithRecipe:v14 resources:v23];

        [v51 addObject:v18];
LABEL_32:

LABEL_33:
LABEL_34:
      }

      v53 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v53);
  }

  return v51;
}

@end