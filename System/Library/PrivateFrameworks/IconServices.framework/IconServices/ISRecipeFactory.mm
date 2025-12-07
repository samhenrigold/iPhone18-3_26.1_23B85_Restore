@interface ISRecipeFactory
+ (id)factoryWithDescriptor:(id)descriptor;
+ (id)factoryWithDescriptor:(id)descriptor resourceProvider:(id)provider;
- (BOOL)preferRichRecipe;
- (BOOL)shouldSegment;
- (ISRecipeFactory)initWithDescriptor:(id)descriptor resourceProvider:(id)provider;
- (id)_recipe;
- (id)_recipeFromDescriptor;
- (id)genericTaggedRecipe;
- (id)recipe;
- (id)recipeForDecoration:(id)decoration;
- (void)_recipe;
- (void)enableSegmentationForRecipe:(id)recipe;
- (void)pushDescriptorContentsToRecipe:(id)recipe;
@end

@implementation ISRecipeFactory

+ (id)factoryWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v4 = [[ISRecipeFactory alloc] initWithDescriptor:descriptorCopy resourceProvider:0];

  return v4;
}

+ (id)factoryWithDescriptor:(id)descriptor resourceProvider:(id)provider
{
  providerCopy = provider;
  descriptorCopy = descriptor;
  v7 = [[ISRecipeFactory alloc] initWithDescriptor:descriptorCopy resourceProvider:providerCopy];

  return v7;
}

- (ISRecipeFactory)initWithDescriptor:(id)descriptor resourceProvider:(id)provider
{
  descriptorCopy = descriptor;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = ISRecipeFactory;
  v9 = [(ISRecipeFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resourceProvider, provider);
    objc_storeStrong(&v10->_descriptor, descriptor);
  }

  return v10;
}

- (id)_recipeFromDescriptor
{
  descriptor = [(ISRecipeFactory *)self descriptor];
  _recipe = [descriptor _recipe];

  return _recipe;
}

- (id)_recipe
{
  descriptor = [(ISRecipeFactory *)self descriptor];
  shape = [descriptor shape];

  if (!shape || (-[ISRecipeFactory descriptor](self, "descriptor"), v5 = objc_claimAutoreleasedReturnValue(), [v5 _recipePreferRichRecipe:{-[ISRecipeFactory preferRichRecipe](self, "preferRichRecipe")}], suggestedRecipe2 = objc_claimAutoreleasedReturnValue(), v5, !suggestedRecipe2))
  {
    resourceProvider = [(ISRecipeFactory *)self resourceProvider];
    suggestedRecipe = [resourceProvider suggestedRecipe];

    if (!suggestedRecipe)
    {
      goto LABEL_7;
    }

    resourceProvider2 = [(ISRecipeFactory *)self resourceProvider];
    suggestedRecipe2 = [resourceProvider2 suggestedRecipe];

    v11 = _ISDefaultLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(ISRecipeFactory *)suggestedRecipe2 _recipe];
    }

    if (!suggestedRecipe2)
    {
LABEL_7:
      resourceProvider3 = [(ISRecipeFactory *)self resourceProvider];
      iconResource = [resourceProvider3 iconResource];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) != 0 && (v15 = objc_alloc_init(ISGenericRecipe)) != 0 || (-[ISRecipeFactory resourceProvider](self, "resourceProvider"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 isCompositedDocument], v16, v17) && (v15 = objc_alloc_init(ISDocumentRecipe)) != 0)
      {
        suggestedRecipe2 = v15;
        goto LABEL_24;
      }

      resourceProvider4 = [(ISRecipeFactory *)self resourceProvider];
      resourceType = [resourceProvider4 resourceType];

      if (!resourceType)
      {
        goto LABEL_21;
      }

      resourceProvider5 = [(ISRecipeFactory *)self resourceProvider];
      resourceType2 = [resourceProvider5 resourceType];

      if (resourceType2 == 2)
      {
        resourceProvider6 = [(ISRecipeFactory *)self resourceProvider];
        platform = [resourceProvider6 platform];
        descriptor2 = [(ISRecipeFactory *)self descriptor];
        v30 = [ISRecipeInfo documentRecipeForPlatform:platform descriptor:descriptor2];
LABEL_18:
        suggestedRecipe2 = v30;
        goto LABEL_19;
      }

      if (resourceType2 != 1)
      {
LABEL_21:
        v31 = _ISDefaultLog(v20);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          [(ISRecipeFactory *)v31 _recipe];
        }

        descriptor3 = [(ISRecipeFactory *)self descriptor];
        suggestedRecipe2 = [ISRecipeInfo genericRecipeWithAppliedDescriptorRecipeAttributes:descriptor3];

        goto LABEL_24;
      }

      descriptor4 = [(ISRecipeFactory *)self descriptor];
      platformStyle = [descriptor4 platformStyle];

      if (platformStyle)
      {
        resourceProvider6 = [(ISRecipeFactory *)self descriptor];
        platformStyle2 = [resourceProvider6 platformStyle];
        descriptor2 = [(ISRecipeFactory *)self descriptor];
        resourceProvider7 = [(ISRecipeFactory *)self resourceProvider];
        suggestedRecipe2 = +[ISRecipeInfo appRecipeForPlatformStyle:descriptor:resourcePlatform:preferRichRecipe:](ISRecipeInfo, "appRecipeForPlatformStyle:descriptor:resourcePlatform:preferRichRecipe:", platformStyle2, descriptor2, [resourceProvider7 platform], -[ISRecipeFactory preferRichRecipe](self, "preferRichRecipe"));

LABEL_19:
        goto LABEL_20;
      }

      resourceProvider8 = [(ISRecipeFactory *)self resourceProvider];
      if ([resourceProvider8 platform] == 2)
      {
        resourceProvider9 = [(ISRecipeFactory *)self resourceProvider];
        isPrecomposed = [resourceProvider9 isPrecomposed];

        if (isPrecomposed)
        {
          resourceProvider6 = [(ISRecipeFactory *)self descriptor];
          preferRichRecipe = [(ISRecipeFactory *)self preferRichRecipe];
          v49 = 1;
LABEL_49:
          suggestedRecipe2 = [ISRecipeInfo appRecipeForPlatform:v49 descriptor:resourceProvider6 preferRichRecipe:preferRichRecipe];
LABEL_20:

          if (suggestedRecipe2)
          {
            goto LABEL_24;
          }

          goto LABEL_21;
        }
      }

      else
      {
      }

      resourceProvider10 = [(ISRecipeFactory *)self resourceProvider];
      if ([resourceProvider10 platform] == 4)
      {
        v51 = +[ISPlatformInfo sharedInstance];
        if ([v51 nativePlatform] == 1)
        {
          resourceProvider11 = [(ISRecipeFactory *)self resourceProvider];
          isPrecomposed2 = [resourceProvider11 isPrecomposed];

          if ((isPrecomposed2 & 1) == 0)
          {
            resourceProvider6 = [(ISRecipeFactory *)self descriptor];
            preferRichRecipe = [(ISRecipeFactory *)self preferRichRecipe];
            v49 = 2;
            goto LABEL_49;
          }

          goto LABEL_52;
        }
      }

LABEL_52:
      resourceProvider6 = [(ISRecipeFactory *)self resourceProvider];
      platform2 = [resourceProvider6 platform];
      descriptor2 = [(ISRecipeFactory *)self descriptor];
      v30 = [ISRecipeInfo appRecipeForPlatform:platform2 descriptor:descriptor2 preferRichRecipe:[(ISRecipeFactory *)self preferRichRecipe]];
      goto LABEL_18;
    }
  }

LABEL_24:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    descriptor5 = [(ISRecipeFactory *)self descriptor];
    [suggestedRecipe2 setShouldDrawBorder:{objc_msgSend(descriptor5, "drawBorder")}];
  }

  resourceProvider12 = [(ISRecipeFactory *)self resourceProvider];
  if (![resourceProvider12 isGenericProvider])
  {

    goto LABEL_32;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    objc_opt_class();
    v35 = objc_opt_isKindOfClass();

    if ((v35 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  [suggestedRecipe2 setGeneric:1];
LABEL_32:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = suggestedRecipe2;
    [v36 setMaskBadgeResource:1];
    resourceProvider13 = [(ISRecipeFactory *)self resourceProvider];
    [v36 setBadgeWithSymbol:{objc_msgSend(resourceProvider13, "isBadgedWithSymbol")}];

    resourceProvider14 = [(ISRecipeFactory *)self resourceProvider];
    [v36 setPlatform:{objc_msgSend(resourceProvider14, "platform")}];

    resourceProvider15 = [(ISRecipeFactory *)self resourceProvider];
    textResource = [resourceProvider15 textResource];

    if (textResource)
    {
      [v36 setHasText:1];
    }

    resourceProvider16 = [(ISRecipeFactory *)self resourceProvider];
    backgroundResource = [resourceProvider16 backgroundResource];

    if (backgroundResource)
    {
      [v36 setHasBespokeBackground:1];
      resourceProvider17 = [(ISRecipeFactory *)self resourceProvider];
      [v36 setTreatLikeSymbol:{objc_msgSend(resourceProvider17, "treatLikeSymbol")}];
    }
  }

  return suggestedRecipe2;
}

- (id)recipe
{
  resourceProvider = [(ISRecipeFactory *)self resourceProvider];

  if (resourceProvider)
  {
    [(ISRecipeFactory *)self _recipe];
  }

  else
  {
    [(ISRecipeFactory *)self _recipeFromDescriptor];
  }
  v4 = ;
  [(ISRecipeFactory *)self pushDescriptorContentsToRecipe:v4];
  if ([(ISRecipeFactory *)self shouldSegment])
  {
    [(ISRecipeFactory *)self enableSegmentationForRecipe:v4];
  }

  return v4;
}

- (id)genericTaggedRecipe
{
  resourceProvider = [(ISRecipeFactory *)self resourceProvider];

  if (resourceProvider)
  {
    _recipe = [(ISRecipeFactory *)self _recipe];
  }

  else
  {
    descriptor = [(ISRecipeFactory *)self descriptor];
    _recipe = [descriptor _recipePreferRichRecipe:1];
  }

  if (objc_opt_respondsToSelector())
  {
    [_recipe setGeneric:1];
  }

  return _recipe;
}

- (BOOL)shouldSegment
{
  descriptor = [(ISRecipeFactory *)self descriptor];
  appearance = [descriptor appearance];
  if (appearance != 1)
  {
    descriptor2 = [(ISRecipeFactory *)self descriptor];
    if ([descriptor2 appearance] != 2)
    {
      v9 = 0;
LABEL_23:

      goto LABEL_24;
    }
  }

  resourceProvider = [(ISRecipeFactory *)self resourceProvider];
  if (![resourceProvider allowNonDefaultAppearances])
  {

    v9 = 0;
    if (appearance == 1)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  resourceProvider2 = [(ISRecipeFactory *)self resourceProvider];
  allowAlterationsToResourceArt = [resourceProvider2 allowAlterationsToResourceArt];

  if (appearance != 1)
  {

    if ((allowAlterationsToResourceArt & 1) == 0)
    {
      return 0;
    }

LABEL_11:
    resourceProvider3 = [(ISRecipeFactory *)self resourceProvider];
    descriptor = [resourceProvider3 iconResource];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = 1;
LABEL_24:

      return v9;
    }

    descriptor2 = descriptor;
    descriptor3 = [(ISRecipeFactory *)self descriptor];
    if ([descriptor3 appearance] == 1)
    {
      hasDarkResource = [descriptor2 hasDarkResource];

      if (hasDarkResource)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    descriptor4 = [(ISRecipeFactory *)self descriptor];
    if ([descriptor4 appearance] == 2)
    {
      hasTintableResource = [descriptor2 hasTintableResource];

      if (hasTintableResource)
      {
LABEL_19:
        v9 = 0;
LABEL_22:
        descriptor = descriptor2;
        goto LABEL_23;
      }
    }

    else
    {
    }

    v9 = 1;
    goto LABEL_22;
  }

  if (allowAlterationsToResourceArt)
  {
    goto LABEL_11;
  }

  return 0;
}

- (void)enableSegmentationForRecipe:(id)recipe
{
  recipeCopy = recipe;
  if (objc_opt_respondsToSelector())
  {
    [recipeCopy setSegment:1];
  }
}

- (void)pushDescriptorContentsToRecipe:(id)recipe
{
  recipeCopy = recipe;
  if (objc_opt_respondsToSelector())
  {
    descriptor = [(ISRecipeFactory *)self descriptor];
    [recipeCopy updateRecipeWithImageDescriptor:descriptor];
  }
}

- (BOOL)preferRichRecipe
{
  resourceProvider = [(ISRecipeFactory *)self resourceProvider];
  iconResource = [resourceProvider iconResource];
  v4 = [iconResource conformsToProtocol:&unk_1F1A69890];

  return v4 ^ 1;
}

- (id)recipeForDecoration:(id)decoration
{
  v48 = *MEMORY[0x1E69E9840];
  decorationCopy = decoration;
  if ([decorationCopy identifierKind] == 2)
  {
    identifier = [decorationCopy identifier];
    if (identifier)
    {
      v6 = [MEMORY[0x1E6982C40] typeWithIdentifier:identifier];
      goto LABEL_6;
    }
  }

  else
  {
    identifier = 0;
  }

  v6 = 0;
LABEL_6:
  position = [decorationCopy position];
  v8 = position;
  if (!position)
  {
    v11 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.icon-decoration.emboss"];
    v12 = [v6 conformsToType:v11];

    if (v12)
    {
      v10 = 1;
      v8 = 1;
      goto LABEL_22;
    }

    v13 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.icon-decoration-position.trailing-bottom"];
    v14 = [v6 conformsToType:v13];

    if (v14)
    {
      v10 = 0;
    }

    else
    {
      v15 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.icon-decoration-position.leading-bottom"];
      v16 = [v6 conformsToType:v15];

      if (v16)
      {
        v10 = 0;
        v8 = 2;
        goto LABEL_22;
      }

      v17 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.icon-decoration.system"];
      v18 = [v6 conformsToType:v17];

      if (v18 & 1) != 0 || ([identifier isEqualToString:@"com.apple.icon-decoration.folderbadge"])
      {
        v8 = 1;
        v10 = 1;
        goto LABEL_22;
      }

      v40 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.graphic-icon"];
      v41 = [v6 conformsToType:v40];

      if ((v41 & 1) == 0)
      {
        v42 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.application-icon"];
        v43 = [v6 conformsToType:v42];

        if (v43)
        {
          v8 = 3;
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_7;
      }

      v10 = 1;
    }

    v8 = 3;
    goto LABEL_22;
  }

LABEL_7:
  if ((v8 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v9 = _ISDefaultLog(position);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v44 = 134217984;
      v45 = v8;
      _os_log_impl(&dword_1A77B8000, v9, OS_LOG_TYPE_INFO, "Invalid position: %lu. Using default positioning instead..", &v44, 0xCu);
    }

    v8 = 0;
  }

  v10 = 1;
LABEL_22:
  mode = [decorationCopy mode];
  if (!mode)
  {
    v21 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.icon-decoration.emboss"];
    v22 = [v6 conformsToType:v21];

    if ((v22 & 1) == 0)
    {
      if (v8 < 2)
      {
        goto LABEL_25;
      }

      goto LABEL_38;
    }

LABEL_27:
    if (v8 >= 2)
    {
      v23 = _ISDefaultLog(mode);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v44 = 134218240;
        v45 = v8;
        v46 = 2048;
        v47 = 2;
        _os_log_impl(&dword_1A77B8000, v23, OS_LOG_TYPE_INFO, "Incompatible decoration position/mode combo: p:%lu,m:%lu. Preferring mode...", &v44, 0x16u);
      }
    }

    v20 = ISCenterEmbossRecipe;
    goto LABEL_32;
  }

  if (mode == 2)
  {
    goto LABEL_27;
  }

  if (v8 <= 1)
  {
LABEL_25:
    v20 = ISGenericRecipe;
LABEL_32:
    v24 = objc_alloc_init(v20);
LABEL_33:
    v25 = v24;
    goto LABEL_34;
  }

LABEL_38:
  resourceProvider = [(ISRecipeFactory *)self resourceProvider];
  _shouldTreatLikeApp = [resourceProvider _shouldTreatLikeApp];

  if (_shouldTreatLikeApp)
  {
    v29 = 1;
  }

  else
  {
    resourceProvider2 = [(ISRecipeFactory *)self resourceProvider];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      resourceProvider3 = [(ISRecipeFactory *)self resourceProvider];
      record = [resourceProvider3 record];

      objc_opt_class();
      v29 = objc_opt_isKindOfClass();
    }

    else
    {
      v29 = 0;
    }
  }

  resourceProvider4 = [(ISRecipeFactory *)self resourceProvider];
  _shouldTreatLikeFolder = [resourceProvider4 _shouldTreatLikeFolder];

  if ((v10 & v29) == 1)
  {
    if (v8 == 2)
    {
      v37 = _ISDefaultLog(v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        LOWORD(v44) = 0;
        _os_log_impl(&dword_1A77B8000, v37, OS_LOG_TYPE_INFO, "Invalid decoration position configuration for resource. Defaulting to trailing bottom...", &v44, 2u);
      }
    }

    v24 = objc_opt_new();
    goto LABEL_33;
  }

  v25 = objc_alloc_init(ISGenericRecipe);
  if (v8 == 2)
  {
    v38 = off_1E77C5F80;
  }

  else
  {
    if (v8 != 3)
    {
      goto LABEL_54;
    }

    v38 = off_1E77C5FE0;
  }

  v39 = objc_alloc_init(*v38);

  v25 = v39;
LABEL_54:
  if (objc_opt_respondsToSelector())
  {
    if (((v29 | _shouldTreatLikeFolder) & 1) == 0)
    {
      [(ISGenericRecipe *)v25 setPrimaryIconType:1];
    }

    if (_shouldTreatLikeFolder)
    {
      [(ISGenericRecipe *)v25 setPrimaryIconType:2];
    }
  }

LABEL_34:

  return v25;
}

- (void)_recipe
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_DEBUG, "Allowing provider to suggest recipe: %@", &v2, 0xCu);
}

@end