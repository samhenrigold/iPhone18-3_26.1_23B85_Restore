@interface CARScreenViewArea
+ (NSEdgeInsets)insetsForOEMUIWithDisplaySize:(CGSize)size safeFrame:(CGRect)frame viewAreaFrame:(CGRect)areaFrame;
+ (void)insetsForOEMUIWithDisplaySize:(double)size originInDisplay:(double)display safeFrame:(double)frame viewAreaFrame:(CGFloat)areaFrame;
- (BOOL)_wantsInternalOverrideInsets;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToViewArea:(id)area;
- (CARDisplayInfoProviding)displayInfoProvider;
- (CARScreenViewArea)initWithPropertySupplier:(id)supplier additionalInsets:(NSEdgeInsets)insets viewAreaDictionary:(id)dictionary wantsCornerMasks:(BOOL)masks displayInfoProvider:(id)provider;
- (CGRect)safeFrame;
- (CGRect)unadjustedSafeFrame;
- (CGRect)visibleFrame;
- (NSEdgeInsets)additionalInsets;
- (NSEdgeInsets)oemUIInsets;
- (id)description;
- (void)_updateEffectiveSafeFrame;
@end

@implementation CARScreenViewArea

- (CARDisplayInfoProviding)displayInfoProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_displayInfoProvider);

  return WeakRetained;
}

- (void)_updateEffectiveSafeFrame
{
  v72 = *MEMORY[0x1E69E9840];
  size = self->_unadjustedSafeFrame.size;
  self->_safeFrame.origin = self->_unadjustedSafeFrame.origin;
  self->_safeFrame.size = size;
  if (self->_shouldApplyDisplayInsets)
  {
    displayInfoProvider = [(CARScreenViewArea *)self displayInfoProvider];
    [displayInfoProvider displayPixelSize];
    v6 = v5;
    v8 = v7;

    v10 = CarGeneralLogging(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v73.width = v6;
      v73.height = v8;
      v11 = NSStringFromSize(v73);
      v12 = NSStringFromRect(self->_unadjustedSafeFrame);
      v13 = NSStringFromRect(self->_visibleFrame);
      *buf = 138412802;
      v67 = v11;
      v68 = 2112;
      v69 = v12;
      v70 = 2112;
      v71 = v13;
      _os_log_impl(&dword_1C81FC000, v10, OS_LOG_TYPE_DEFAULT, "Display (%@) supports view areas and does not want corner masks, applying insets to edges that need to be inset. Safe frame: (%@), viewArea frame: (%@)", buf, 0x20u);
    }

    [(CARScreenViewArea *)self oemUIInsets];
    top = v74.top;
    left = v74.left;
    bottom = v74.bottom;
    right = v74.right;
    v18 = *MEMORY[0x1E696A2A0];
    v19 = *(MEMORY[0x1E696A2A0] + 8);
    v20 = *(MEMORY[0x1E696A2A0] + 16);
    v21 = *(MEMORY[0x1E696A2A0] + 24);
    v78.top = *MEMORY[0x1E696A2A0];
    v78.left = v19;
    v78.bottom = v20;
    v78.right = v21;
    v22 = NSEdgeInsetsEqual(v74, v78);
    if (v22)
    {
      v23 = CarGeneralLogging(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = NSStringFromRect(self->_safeFrame);
        v25 = NSStringFromRect(self->_visibleFrame);
        *buf = 138412546;
        v67 = v24;
        v68 = 2112;
        v69 = v25;
        _os_log_impl(&dword_1C81FC000, v23, OS_LOG_TYPE_DEFAULT, "No insets will be applied: Safe frame: (%@), viewArea frame: (%@)", buf, 0x16u);
      }
    }

    else
    {
      v61 = v18;
      v62 = v21;
      v63 = v20;
      v26 = left + self->_safeFrame.origin.x;
      aRect = top + self->_safeFrame.origin.y;
      v27 = self->_safeFrame.size.width - (left + right);
      v28 = self->_safeFrame.size.height - (top + bottom);
      v29 = CarGeneralLogging(v22);
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
      if (v27 < 740.0 || v28 < 456.0)
      {
        if (v30)
        {
          v76.origin.x = v26;
          v76.size.width = v27;
          v76.origin.y = aRect;
          v76.size.height = v28;
          v34 = NSStringFromRect(v76);
          *buf = 138412290;
          v67 = v34;
          _os_log_impl(&dword_1C81FC000, v29, OS_LOG_TYPE_DEFAULT, "Visible frame inset with OEM insets is too small (%@), not applying insets", buf, 0xCu);
        }
      }

      else
      {
        if (v30)
        {
          v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Left: %.1f, right: %.1f, top: %.1f, bottom: %.1f", *&left, *&right, *&top, *&bottom];
          v32 = NSStringFromRect(self->_safeFrame);
          v75.origin.x = v26;
          v75.size.width = v27;
          v75.origin.y = aRect;
          v75.size.height = v28;
          v33 = NSStringFromRect(v75);
          *buf = 138412802;
          v67 = v31;
          v68 = 2112;
          v69 = v32;
          v70 = 2112;
          v71 = v33;
          _os_log_impl(&dword_1C81FC000, v29, OS_LOG_TYPE_DEFAULT, "Applying OEM UI insets: %@ before frame: %@, after frame: %@", buf, 0x20u);
        }

        self->_safeFrame.origin.x = v26;
        self->_safeFrame.origin.y = aRect;
        self->_safeFrame.size.width = v27;
        self->_safeFrame.size.height = v28;
      }

      v21 = v62;
      v20 = v63;
      v18 = v61;
    }
  }

  else
  {
    v18 = *MEMORY[0x1E696A2A0];
    v19 = *(MEMORY[0x1E696A2A0] + 8);
    v20 = *(MEMORY[0x1E696A2A0] + 16);
    v21 = *(MEMORY[0x1E696A2A0] + 24);
  }

  v79.top = v18;
  v79.left = v19;
  v79.bottom = v20;
  v79.right = v21;
  v35 = NSEdgeInsetsEqual(self->_additionalInsets, v79);
  if (!v35)
  {
    v36 = CarGeneralLogging(v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Left: %.1f, right: %.1f, top: %.1f, bottom: %.1f", *&self->_additionalInsets.left, *&self->_additionalInsets.right, *&self->_additionalInsets.top, *&self->_additionalInsets.bottom];
      *buf = 138412290;
      v67 = v37;
      _os_log_impl(&dword_1C81FC000, v36, OS_LOG_TYPE_DEFAULT, "Additional insets provided: %@", buf, 0xCu);
    }

    v39 = *&self->_additionalInsets.top;
    v40 = vaddq_f64(v39, *&self->_additionalInsets.bottom);
    v41 = vsubq_f64(self->_safeFrame.size, vextq_s8(v40, v40, 8uLL));
    if (v41.f64[0] >= 740.0)
    {
      v42 = v41.f64[1];
      if (v41.f64[1] >= 456.0)
      {
        aRecta = v41;
        v43 = self->_safeFrame.origin.x + v39.f64[1];
        v44 = self->_safeFrame.origin.y + v39.f64[0];
        v45 = CarGeneralLogging(v38);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = NSStringFromRect(self->_safeFrame);
          v77.origin.x = v43;
          v77.origin.y = v44;
          v77.size.width = aRecta.f64[0];
          v77.size.height = v42;
          v47 = NSStringFromRect(v77);
          *buf = 138412546;
          v67 = v46;
          v68 = 2112;
          v69 = v47;
          _os_log_impl(&dword_1C81FC000, v45, OS_LOG_TYPE_DEFAULT, "Applying additional insets: before frame: %@, after frame: %@", buf, 0x16u);
        }

        self->_safeFrame.origin.x = v43;
        self->_safeFrame.origin.y = v44;
        self->_safeFrame.size = aRecta;
      }
    }
  }

  if ([(CARScreenViewArea *)self _wantsInternalOverrideInsets])
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v49 = [standardUserDefaults valueForKey:@"CARCapabilitesInsets"];

    if (v49)
    {
      v50 = [v49 objectForKeyedSubscript:@"Top"];
      [v50 floatValue];
      v18 = v51;
      v52 = [v49 objectForKeyedSubscript:@"Left"];
      [v52 floatValue];
      v19 = v53;
      v54 = [v49 objectForKeyedSubscript:@"Bottom"];
      [v54 floatValue];
      v20 = v55;
      v56 = [v49 objectForKeyedSubscript:@"Right"];
      [v56 floatValue];
      v21 = v57;
    }

    v58 = v18 + self->_unadjustedSafeFrame.origin.y;
    v59 = self->_unadjustedSafeFrame.size.width - (v19 + v21);
    v60 = self->_unadjustedSafeFrame.size.height - (v18 + v20);
    self->_safeFrame.origin.x = v19 + self->_unadjustedSafeFrame.origin.x;
    self->_safeFrame.origin.y = v58;
    self->_safeFrame.size.width = v59;
    self->_safeFrame.size.height = v60;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v21.receiver = self;
  v21.super_class = CARScreenViewArea;
  v4 = [(CARScreenViewArea *)&v21 description];
  [(CARScreenViewArea *)self visibleFrame];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{x: %f, y: %f, w: %f, h: %f}", v5, v6, v7, v8];
  [(CARScreenViewArea *)self safeFrame];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{x: %f, y: %f, w: %f, h: %f}", v10, v11, v12, v13];
  displaysTransitionControl = [(CARScreenViewArea *)self displaysTransitionControl];
  statusBarEdge = [(CARScreenViewArea *)self statusBarEdge];
  supportsFocusTransfer = [(CARScreenViewArea *)self supportsFocusTransfer];
  v18 = "no";
  if (supportsFocusTransfer)
  {
    v18 = "yes";
  }

  v19 = [v3 stringWithFormat:@"%@ {visibleFrame: %@ safeFrame: %@ displaysTransitionControl: %d statusBarEdge: %lu supportsFocusTransfer: %s}", v4, v9, v14, displaysTransitionControl, statusBarEdge, v18];

  return v19;
}

- (CGRect)visibleFrame
{
  x = self->_visibleFrame.origin.x;
  y = self->_visibleFrame.origin.y;
  width = self->_visibleFrame.size.width;
  height = self->_visibleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)safeFrame
{
  x = self->_safeFrame.origin.x;
  y = self->_safeFrame.origin.y;
  width = self->_safeFrame.size.width;
  height = self->_safeFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CARScreenViewArea)initWithPropertySupplier:(id)supplier additionalInsets:(NSEdgeInsets)insets viewAreaDictionary:(id)dictionary wantsCornerMasks:(BOOL)masks displayInfoProvider:(id)provider
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  supplierCopy = supplier;
  dictionaryCopy = dictionary;
  providerCopy = provider;
  v48.receiver = self;
  v48.super_class = CARScreenViewArea;
  v18 = [(CARScreenViewArea *)&v48 init];
  v19 = v18;
  if (supplierCopy && v18)
  {
    objc_storeWeak(&v18->_displayInfoProvider, providerCopy);
    v20 = supplierCopy[2](supplierCopy, *MEMORY[0x1E6962478]);
    memset(&rect, 0, sizeof(rect));
    if (CGRectMakeWithDictionaryRepresentation(v20, &rect))
    {
      size = rect.size;
      v19->_visibleFrame.origin = rect.origin;
      v19->_visibleFrame.size = size;
    }

    else
    {
      v19->_visibleFrame.origin = 0u;
      v19->_visibleFrame.size = 0u;
    }

    v22 = supplierCopy[2](supplierCopy, *MEMORY[0x1E6962468]);
    memset(&rect, 0, sizeof(rect));
    if (CGRectMakeWithDictionaryRepresentation(v22, &rect))
    {
      v23 = rect.size;
      v19->_safeFrame.origin = rect.origin;
      v19->_safeFrame.size = v23;
    }

    else
    {
      v19->_safeFrame.origin = 0u;
      v19->_safeFrame.size = 0u;
    }

    v24 = supplierCopy[2](supplierCopy, *MEMORY[0x1E6962488]);
    if (v24)
    {
      objc_opt_class();
      v25 = v24;
      if (objc_opt_isKindOfClass())
      {
        bOOLValue = [v25 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }
    }

    else
    {
      bOOLValue = 0;
    }

    v19->_displaysTransitionControl = bOOLValue;
    v27 = supplierCopy[2](supplierCopy, *MEMORY[0x1E6962470]);
    v28 = [dictionaryCopy objectForKey:@"viewAreaSupportsFocusTransfer"];
    if (v28)
    {
      objc_opt_class();
      v29 = v28;
      if (objc_opt_isKindOfClass())
      {
        bOOLValue2 = [v29 BOOLValue];
      }

      else
      {
        bOOLValue2 = 0;
      }
    }

    else
    {
      bOOLValue2 = 0;
    }

    v19->_supportsFocusTransfer = bOOLValue2;
    v31 = [dictionaryCopy objectForKey:@"safeArea"];
    v32 = [v31 objectForKey:@"drawUIOutsideSafeArea"];
    if (v32)
    {
      objc_opt_class();
      v33 = v32;
      if (objc_opt_isKindOfClass())
      {
        bOOLValue3 = [v33 BOOLValue];
      }

      else
      {
        bOOLValue3 = 0;
      }
    }

    else
    {
      bOOLValue3 = 0;
    }

    v19->_supportsUIOutsideSafeArea = bOOLValue3;
    v35 = v19->_safeFrame.size;
    v19->_unadjustedSafeFrame.origin = v19->_safeFrame.origin;
    v19->_unadjustedSafeFrame.size = v35;
    v19->_additionalInsets.top = top;
    v19->_additionalInsets.left = left;
    v19->_additionalInsets.bottom = bottom;
    v19->_additionalInsets.right = right;
    v36 = !masks;
    if (!dictionaryCopy)
    {
      v36 = 0;
    }

    v19->_shouldApplyDisplayInsets = v36;
    [(CARScreenViewArea *)v19 _updateEffectiveSafeFrame];
    unsignedIntegerValue = [v27 unsignedIntegerValue];
    if (v27 && unsignedIntegerValue <= 2)
    {
      if (unsignedIntegerValue == 2)
      {
        v38 = 2;
        goto LABEL_39;
      }

      if (unsignedIntegerValue == 1)
      {
        v38 = 1;
LABEL_39:
        v19->_statusBarEdge = v38;
        goto LABEL_40;
      }
    }

    else
    {
      v39 = CarGeneralLogging(unsignedIntegerValue);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [(CARScreenViewArea *)v39 initWithPropertySupplier:v40 additionalInsets:v41 viewAreaDictionary:v42 wantsCornerMasks:v43 displayInfoProvider:v44, v45, v46];
      }
    }

    v19->_statusBarEdge = 0;
LABEL_40:
  }

  return v19;
}

- (NSEdgeInsets)oemUIInsets
{
  displayInfoProvider = [(CARScreenViewArea *)self displayInfoProvider];
  [displayInfoProvider originInDisplay];
  v5 = v4;
  v7 = v6;

  displayInfoProvider2 = [(CARScreenViewArea *)self displayInfoProvider];
  [displayInfoProvider2 displayPixelSize];
  v10 = v9;
  v12 = v11;

  [objc_opt_class() insetsForOEMUIWithDisplaySize:v10 originInDisplay:v12 safeFrame:v5 viewAreaFrame:{v7, self->_unadjustedSafeFrame.origin.x, self->_unadjustedSafeFrame.origin.y, self->_unadjustedSafeFrame.size.width, self->_unadjustedSafeFrame.size.height, *&self->_visibleFrame.origin.x, *&self->_visibleFrame.origin.y, *&self->_visibleFrame.size.width, *&self->_visibleFrame.size.height}];
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (BOOL)_wantsInternalOverrideInsets
{
  if (!CRIsInternalInstall(self, a2))
  {
    return 0;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults valueForKey:@"CARCapabilitesInsets"];
  v4 = v3 != 0;

  return v4;
}

+ (NSEdgeInsets)insetsForOEMUIWithDisplaySize:(CGSize)size safeFrame:(CGRect)frame viewAreaFrame:(CGRect)areaFrame
{
  [self insetsForOEMUIWithDisplaySize:size.width originInDisplay:size.height safeFrame:*MEMORY[0x1E695EFF8] viewAreaFrame:{*(MEMORY[0x1E695EFF8] + 8), frame.origin.x, frame.origin.y, frame.size.width, frame.size.height}];
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

+ (void)insetsForOEMUIWithDisplaySize:(double)size originInDisplay:(double)display safeFrame:(double)frame viewAreaFrame:(CGFloat)areaFrame
{
  v46 = *MEMORY[0x1E69E9840];
  v30 = display + a10;
  aRect = frame + a11;
  v15 = display + areaFrame;
  v16 = frame + a7;
  v17 = CarGeneralLogging(self);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = BSNSStringFromCGSize();
    v19 = BSNSStringFromCGPoint();
    v47.origin.x = a10;
    v47.origin.y = a11;
    v47.size.width = a12;
    v47.size.height = a13;
    v20 = NSStringFromRect(v47);
    v48.origin.x = areaFrame;
    v48.origin.y = a7;
    v48.size.width = a8;
    v48.size.height = a9;
    v21 = NSStringFromRect(v48);
    v49.origin.x = v30;
    v49.origin.y = aRect;
    v49.size.width = a12;
    v49.size.height = a13;
    v22 = NSStringFromRect(v49);
    v50.origin.x = v15;
    v50.origin.y = v16;
    v50.size.width = a8;
    v50.size.height = a9;
    v23 = NSStringFromRect(v50);
    *buf = 138413570;
    v35 = v18;
    v36 = 2112;
    v37 = v19;
    v38 = 2112;
    v39 = v20;
    v40 = 2112;
    v41 = v21;
    v42 = 2112;
    v43 = v22;
    v44 = 2112;
    v45 = v23;
    _os_log_impl(&dword_1C81FC000, v17, OS_LOG_TYPE_DEFAULT, "Display pixel size: %@, origin in display: %@, incoming view area frame: %@, safe frame: %@, adjusted view area frame: %@, safe frame: %@", buf, 0x3Eu);
  }

  BSFloatEqualToFloat();
  BSFloatEqualToFloat();
  BSFloatEqualToFloat();
  v24 = BSFloatEqualToFloat();
  v25 = CarGeneralLogging(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = NSStringFromBOOL();
    v27 = NSStringFromBOOL();
    v28 = NSStringFromBOOL();
    v29 = NSStringFromBOOL();
    *buf = 138413058;
    v35 = v26;
    v36 = 2112;
    v37 = v27;
    v38 = 2112;
    v39 = v28;
    v40 = 2112;
    v41 = v29;
    _os_log_impl(&dword_1C81FC000, v25, OS_LOG_TYPE_DEFAULT, "Display supports view area, should inset: left: %@, right: %@, top: %@, bottom: %@", buf, 0x2Au);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CARScreenViewArea *)self isEqualToViewArea:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToViewArea:(id)area
{
  areaCopy = area;
  [(CARScreenViewArea *)self visibleFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [areaCopy visibleFrame];
  v36.origin.x = v13;
  v36.origin.y = v14;
  v36.size.width = v15;
  v36.size.height = v16;
  v34.origin.x = v6;
  v34.origin.y = v8;
  v34.size.width = v10;
  v34.size.height = v12;
  if (CGRectEqualToRect(v34, v36) && (-[CARScreenViewArea safeFrame](self, "safeFrame"), v18 = v17, v20 = v19, v22 = v21, v24 = v23, [areaCopy safeFrame], v37.origin.x = v25, v37.origin.y = v26, v37.size.width = v27, v37.size.height = v28, v35.origin.x = v18, v35.origin.y = v20, v35.size.width = v22, v35.size.height = v24, CGRectEqualToRect(v35, v37)) && (v29 = -[CARScreenViewArea displaysTransitionControl](self, "displaysTransitionControl"), v29 == objc_msgSend(areaCopy, "displaysTransitionControl")) && (v30 = -[CARScreenViewArea statusBarEdge](self, "statusBarEdge"), v30 == objc_msgSend(areaCopy, "statusBarEdge")))
  {
    supportsFocusTransfer = [(CARScreenViewArea *)self supportsFocusTransfer];
    v32 = supportsFocusTransfer ^ [areaCopy supportsFocusTransfer] ^ 1;
  }

  else
  {
    LOBYTE(v32) = 0;
  }

  return v32;
}

- (CGRect)unadjustedSafeFrame
{
  x = self->_unadjustedSafeFrame.origin.x;
  y = self->_unadjustedSafeFrame.origin.y;
  width = self->_unadjustedSafeFrame.size.width;
  height = self->_unadjustedSafeFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (NSEdgeInsets)additionalInsets
{
  top = self->_additionalInsets.top;
  left = self->_additionalInsets.left;
  bottom = self->_additionalInsets.bottom;
  right = self->_additionalInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end