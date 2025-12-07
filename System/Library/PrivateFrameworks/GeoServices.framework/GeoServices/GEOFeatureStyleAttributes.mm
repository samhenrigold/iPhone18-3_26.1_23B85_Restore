@interface GEOFeatureStyleAttributes
+ (id)homeStyleAttributes;
+ (id)searchResultStyleAttributes;
+ (id)workStyleAttributes;
- (BOOL)hasAttributes;
- (BOOL)isLabelPOI;
- (BOOL)isTunnel;
- (GEOFeatureStyleAttributes)init;
- (const)data;
- (id).cxx_construct;
- (int)poiType;
- (unsigned)countAttrs;
@end

@implementation GEOFeatureStyleAttributes

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (GEOFeatureStyleAttributes)init
{
  v4.receiver = self;
  v4.super_class = GEOFeatureStyleAttributes;
  if ([(GEOFeatureStyleAttributes *)&v4 init])
  {
    _ZNSt3__115allocate_sharedB8ne200100I22FeatureStyleAttributesNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v3);
  }

  return 0;
}

+ (id)searchResultStyleAttributes
{
  v2 = [[self alloc] initWithAttributes:{65570, 1, 65572, 1, 5, 3, 0}];

  return v2;
}

- (BOOL)isLabelPOI
{
  if ([GEOFeatureStyleAttributes(PersonalizedItem) isLabelPOI]::onceToken != -1)
  {
    dispatch_once(&[GEOFeatureStyleAttributes(PersonalizedItem) isLabelPOI]::onceToken, &__block_literal_global_16847);
  }

  v7 = -1;
  if (![(GEOFeatureStyleAttributes *)self hasKey:6 value:&v7])
  {
    return 0;
  }

  v3 = [GEOFeatureStyleAttributes(PersonalizedItem) isLabelPOI]::labelPOITypes;
  v4 = [MEMORY[0x1E696AD98] numberWithInt:v7];
  v5 = [v3 containsObject:v4];

  return v5;
}

void __57__GEOFeatureStyleAttributes_PersonalizedItem__isLabelPOI__block_invoke()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = [GEOFeatureStyleAttributes(PersonalizedItem) isLabelPOI]::labelPOITypes;
  [GEOFeatureStyleAttributes(PersonalizedItem) isLabelPOI]::labelPOITypes = 0;

  v11 = _getValue(150, &GeoServicesConfig_FeatureStyleAttributePOITypesThatAreLabels_Metadata, 1, 0, 0, 0);
  if (v11)
  {
    v1 = [MEMORY[0x1E695DF70] array];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = v11;
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v4 = *v13;
      v5 = &selRef_initWithPlaceData_detourInfo_additionalPlaceDatas_;
      do
      {
        v6 = 0;
        v7 = v5;
        do
        {
          if (*v13 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v12 + 1) + 8 * v6);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v1 addObject:v8];
          }

          else
          {
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_14;
            }

            v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "integerValue")}];
            [v1 addObject:v9];
          }

          ++v6;
        }

        while (v3 != v6);
        v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
        v5 = v7;
      }

      while (v3);
    }

    v10 = [v1 copy];
    v2 = [GEOFeatureStyleAttributes(PersonalizedItem) isLabelPOI]::labelPOITypes;
    [GEOFeatureStyleAttributes(PersonalizedItem) isLabelPOI]::labelPOITypes = v10;
LABEL_14:
  }

  if (![GEOFeatureStyleAttributes(PersonalizedItem) isLabelPOI]::labelPOITypes)
  {
    [GEOFeatureStyleAttributes(PersonalizedItem) isLabelPOI]::labelPOITypes = &unk_1EFA22088;
  }
}

- (BOOL)hasAttributes
{
  ptr = self->_attributes.__ptr_;
  if (!ptr)
  {
    return 0;
  }

  if (*(ptr + 33))
  {
    return 1;
  }

  return *(ptr + 32) != 0;
}

- (int)poiType
{
  ptr = self->_attributes.__ptr_;
  if (ptr)
  {
    return FeatureStyleAttributes::poiType(ptr);
  }

  else
  {
    return -1;
  }
}

- (unsigned)countAttrs
{
  ptr = self->_attributes.__ptr_;
  if (ptr)
  {
    return *(ptr + 33);
  }

  else
  {
    return 0;
  }
}

- (const)data
{
  ptr = self->_attributes.__ptr_;
  if (ptr)
  {
    return *ptr;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isTunnel
{
  ptr = self->_attributes.__ptr_;
  if (!ptr)
  {
    return 0;
  }

  v3 = *(ptr + 33);
  if (!*(ptr + 33))
  {
    return 0;
  }

  v4 = 0;
  v5 = *ptr;
  v6 = v5;
  while (1)
  {
    v7 = *v6;
    v6 += 2;
    if (v7 == 14)
    {
      break;
    }

    if (v3 == ++v4)
    {
      return 0;
    }
  }

  return v5[2 * v4 + 1] == 1;
}

+ (id)workStyleAttributes
{
  v2 = [[self alloc] initWithAttributes:{5, 3, 6, 347, 65572, 1, 0}];

  return v2;
}

+ (id)homeStyleAttributes
{
  v2 = [[self alloc] initWithAttributes:{5, 3, 6, 346, 65572, 1, 0}];

  return v2;
}

@end