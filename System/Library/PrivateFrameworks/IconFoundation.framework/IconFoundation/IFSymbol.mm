@interface IFSymbol
+ (id)_coreGlyphsBundle;
+ (id)_coreGlyphsPrivateBundle;
- (BOOL)_shouldFlipFromSymbolImage:(id)image desiredDirection:(int64_t)direction;
- (BOOL)_useIconStack;
- (CUICatalog)catalog;
- (IFSymbol)initWithCoder:(id)coder;
- (IFSymbol)initWithSymbolName:(id)name bundleURL:(id)l;
- (id)_graphicVariantVectorGlyphForGraphicSymbolDescriptor:(id)descriptor resolvedRenderingMode:(int64_t *)mode allowXOffsetFlip:(BOOL)flip shouldFlipSymbolImage:(BOOL *)image;
- (id)_iconStackForGraphicSymbolDescriptor:(id)descriptor;
- (id)description;
- (id)imageForDescriptor:(id)descriptor;
- (id)imageForGraphicSymbolDescriptor:(id)descriptor;
- (id)imageForSize:(CGSize)size scale:(double)scale;
- (void)_flipImageInLayer:(id)layer requestedWidth:(double)width;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IFSymbol

- (IFSymbol)initWithSymbolName:(id)name bundleURL:(id)l
{
  nameCopy = name;
  lCopy = l;
  v12.receiver = self;
  v12.super_class = IFSymbol;
  v8 = [(IFSymbol *)&v12 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    objc_storeStrong(&v8->_bundleURL, l);
    v8->_lock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

- (IFSymbol)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleURL"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];

  v7 = [(IFSymbol *)self initWithSymbolName:v6 bundleURL:v5];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_name forKey:@"name"];
  bundleURL = self->_bundleURL;
  if (bundleURL)
  {
    [coderCopy encodeObject:bundleURL forKey:@"bundleURL"];
  }
}

- (CUICatalog)catalog
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_catalog)
  {
    v3 = [IFBundle bundleWithURL:self->_bundleURL];
    assetCatalogURL = [v3 assetCatalogURL];

    v5 = [objc_alloc(MEMORY[0x1E6999368]) initWithURL:assetCatalogURL error:0];
    catalog = self->_catalog;
    self->_catalog = v5;
  }

  os_unfair_lock_unlock(&self->_lock);
  v7 = self->_catalog;

  return v7;
}

+ (id)_coreGlyphsBundle
{
  if (_coreGlyphsBundle_onceToken != -1)
  {
    +[IFSymbol _coreGlyphsBundle];
  }

  v3 = _coreGlyphsBundle_bundle;

  return v3;
}

void __29__IFSymbol__coreGlyphsBundle__block_invoke()
{
  v0 = MEMORY[0x1E696AAE8];
  v3 = [MEMORY[0x1E695DFF8] coreGlyphsBundleURL];
  v1 = [v0 bundleWithURL:v3];
  v2 = _coreGlyphsBundle_bundle;
  _coreGlyphsBundle_bundle = v1;
}

+ (id)_coreGlyphsPrivateBundle
{
  if (_coreGlyphsPrivateBundle_onceToken != -1)
  {
    +[IFSymbol _coreGlyphsPrivateBundle];
  }

  v3 = _coreGlyphsPrivateBundle_bundle;

  return v3;
}

void __36__IFSymbol__coreGlyphsPrivateBundle__block_invoke()
{
  v0 = MEMORY[0x1E696AAE8];
  v3 = [MEMORY[0x1E695DFF8] coreGlyphsPrivateBundleURL];
  v1 = [v0 bundleWithURL:v3];
  v2 = _coreGlyphsPrivateBundle_bundle;
  _coreGlyphsPrivateBundle_bundle = v1;
}

- (id)imageForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  name = [(IFSymbol *)self name];

  if (name)
  {
    v9 = objc_alloc_init(IFSymbolImageDescriptor);
    [(IFSymbolImageDescriptor *)v9 setScale:scale];
    v10 = [(IFSymbol *)self imageForDescriptor:v9];
    v11 = v10;
    if (v10 && ([v10 vectorGlyph], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      vectorGlyph = [v11 vectorGlyph];
      [vectorGlyph alignmentRect];
      memset(&v26, 0, sizeof(v26));
      v16 = 1.0;
      v17 = v14 <= width;
      v18 = width / v14;
      if (v14 < width)
      {
        v19 = width / v14;
      }

      else
      {
        v19 = 1.0;
      }

      if (v17)
      {
        v18 = v19;
      }

      if (v15 > height || v15 < height)
      {
        v16 = height / v15;
      }

      if (v16 >= v18)
      {
        v16 = v18;
      }

      CGAffineTransformMakeScale(&v26, v16, v16);
      [vectorGlyph alignmentRect];
      v25 = v26;
      v29 = CGRectApplyAffineTransform(v28, &v25);
      v20 = [vectorGlyph rasterizeImageUsingScaleFactor:scale forTargetSize:{v29.size.width, v29.size.height}];
      if (v20)
      {
        v21 = v20;
        scale = [IFGraphicsContext bitmapContextWithSize:0 scale:width preset:height, scale];
        if ([(IFSymbol *)self _shouldFlipFromSymbolImage:v11 desiredDirection:[(IFSymbolImageDescriptor *)v9 layoutDirection]])
        {
          CGContextTranslateCTM([scale cgContext], width, 0.0);
          CGContextScaleCTM([scale cgContext], -1.0, 1.0);
        }

        [scale drawCGImage:v21 centeredInRect:{0.0, 0.0, width, height}];
        image = [scale image];
        CFRelease(v21);
      }

      else
      {
        image = 0;
      }
    }

    else
    {
      image = 0;
    }
  }

  else
  {
    image = 0;
  }

  return image;
}

- (id)imageForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    name = [(IFSymbol *)self name];
    [descriptorCopy setName:name];

    v6 = MEMORY[0x1E69C8710];
    name2 = [(IFSymbol *)self name];
    v8 = [v6 infoForName:name2 allowsPrivate:1 locale:0];

    if (v8)
    {
      name3 = [v8 name];
      name4 = [(IFSymbol *)self name];
      v11 = [name3 isEqualToString:name4];

      if ((v11 & 1) == 0)
      {
        name5 = [v8 name];
        [descriptorCopy setResolvedName:name5];
      }
    }
  }

  catalog = [(IFSymbol *)self catalog];
  name6 = [(IFSymbol *)self name];
  [descriptorCopy scale];
  v16 = v15;
  layoutDirection = [descriptorCopy layoutDirection];
  symbolSize = [descriptorCopy symbolSize];
  symbolWeight = [descriptorCopy symbolWeight];
  [descriptorCopy pointSize];
  v21 = [catalog namedVectorGlyphWithName:name6 scaleFactor:0 deviceIdiom:layoutDirection layoutDirection:symbolSize glyphSize:symbolWeight glyphWeight:0 glyphPointSize:v16 appearanceName:v20];

  if (v21)
  {
    goto LABEL_10;
  }

  v22 = objc_alloc(MEMORY[0x1E6999368]);
  v23 = +[IFSymbol _coreGlyphsBundle];
  v24 = [v22 initWithName:@"Assets" fromBundle:v23 error:0];

  name7 = [(IFSymbol *)self name];
  [descriptorCopy scale];
  v27 = v26;
  layoutDirection2 = [descriptorCopy layoutDirection];
  symbolSize2 = [descriptorCopy symbolSize];
  symbolWeight2 = [descriptorCopy symbolWeight];
  [descriptorCopy pointSize];
  v21 = [v24 namedVectorGlyphWithName:name7 scaleFactor:0 deviceIdiom:layoutDirection2 layoutDirection:symbolSize2 glyphSize:symbolWeight2 glyphWeight:0 glyphPointSize:v27 appearanceName:v31];

  if (v21)
  {
    catalog = v24;
LABEL_10:
    v41 = [IFSymbolImage alloc];
    tintColor = [descriptorCopy tintColor];
    v43 = [(IFSymbolImage *)v41 initWithNamedVectorGlyph:v21 tintColor:tintColor];

    goto LABEL_11;
  }

  v32 = objc_alloc(MEMORY[0x1E6999368]);
  v33 = +[IFSymbol _coreGlyphsPrivateBundle];
  catalog = [v32 initWithName:@"Assets" fromBundle:v33 error:0];

  name8 = [(IFSymbol *)self name];
  [descriptorCopy scale];
  v36 = v35;
  layoutDirection3 = [descriptorCopy layoutDirection];
  symbolSize3 = [descriptorCopy symbolSize];
  symbolWeight3 = [descriptorCopy symbolWeight];
  [descriptorCopy pointSize];
  v21 = [catalog namedVectorGlyphWithName:name8 scaleFactor:0 deviceIdiom:layoutDirection3 layoutDirection:symbolSize3 glyphSize:symbolWeight3 glyphWeight:0 glyphPointSize:v36 appearanceName:v40];

  if (v21)
  {
    goto LABEL_10;
  }

  v43 = 0;
LABEL_11:

  return v43;
}

- (id)imageForGraphicSymbolDescriptor:(id)descriptor
{
  v97[3] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  if ([descriptorCopy appearance] == 1 && !objc_msgSend(descriptorCopy, "appearanceVariant"))
  {
    [descriptorCopy setAppearanceVariant:1];
  }

  if ([(IFSymbol *)self _useIconStack])
  {
    v5 = [(IFSymbol *)self _iconStackForGraphicSymbolDescriptor:descriptorCopy];
    [descriptorCopy size];
    v7 = v6;
    v9 = v8;
    [descriptorCopy scale];
    v11 = v10;
    platform = [descriptorCopy platform];
    appearance = [descriptorCopy appearance];
    appearanceVariant = [descriptorCopy appearanceVariant];
    tintColor = [descriptorCopy tintColor];
    encapsulationShape = [descriptorCopy encapsulationShape];
    image = [v5 _IF_ImageWithSize:v11 scale:platform platform:appearance appearance:appearanceVariant appearanceVariant:tintColor tintColor:0 isLegacy:v7 encapsulationShape:{v9, encapsulationShape}];

    goto LABEL_6;
  }

  v83 = 0;
  v82 = 0;
  v19 = [(IFSymbol *)self _graphicVariantVectorGlyphForGraphicSymbolDescriptor:descriptorCopy resolvedRenderingMode:&v83 allowXOffsetFlip:1 shouldFlipSymbolImage:&v82];
  v5 = v19;
  image = 0;
  if (v19 && v83)
  {
    if (v83 > 2)
    {
      if (v83 == 3)
      {
        resolvedSymbolColors = [descriptorCopy resolvedSymbolColors];
        v54 = [resolvedSymbolColors objectAtIndexedSubscript:0];
        cgColor = [v54 cgColor];

        Alpha = CGColorGetAlpha(cgColor);
        CopyWithAlpha = CGColorCreateCopyWithAlpha(cgColor, Alpha * 0.5);
        v58 = CGColorCreateCopyWithAlpha(cgColor, Alpha * 0.3);
        v97[0] = cgColor;
        v97[1] = CopyWithAlpha;
        v97[2] = v58;
        v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:3];
        v80[0] = MEMORY[0x1E69E9820];
        v80[1] = 3221225472;
        v80[2] = __44__IFSymbol_imageForGraphicSymbolDescriptor___block_invoke;
        v80[3] = &unk_1E7ED98A0;
        v81 = v59;
        v60 = v59;
        v61 = MEMORY[0x1BFAE9070](v80);
        [descriptorCopy scale];
        v63 = v62;
        [descriptorCopy size];
        v26 = [v5 rasterizeImageUsingScaleFactor:v61 forTargetSize:v63 withHierarchyColorResolver:{v64, v65}];
        if (CopyWithAlpha)
        {
          CFRelease(CopyWithAlpha);
        }

        if (v58)
        {
          CFRelease(v58);
        }

        if (!v26)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v83 != 4)
        {
          goto LABEL_37;
        }

        v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        resolvedSymbolColors2 = [descriptorCopy resolvedSymbolColors];
        v29 = [resolvedSymbolColors2 countByEnumeratingWithState:&v74 objects:v96 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v75;
          do
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v75 != v31)
              {
                objc_enumerationMutation(resolvedSymbolColors2);
              }

              [v27 addObject:{objc_msgSend(*(*(&v74 + 1) + 8 * i), "cgColor")}];
            }

            v30 = [resolvedSymbolColors2 countByEnumeratingWithState:&v74 objects:v96 count:16];
          }

          while (v30);
        }

        [descriptorCopy scale];
        v34 = v33;
        [descriptorCopy size];
        v26 = [v5 rasterizeImageUsingScaleFactor:v27 forTargetSize:v34 withPaletteColors:{v35, v36}];

        if (!v26)
        {
          goto LABEL_37;
        }
      }
    }

    else if (v83 == 1)
    {
      [descriptorCopy scale];
      v38 = v37;
      [descriptorCopy size];
      v19 = [v5 rasterizeImageUsingScaleFactor:v38 forTargetSize:{v39, v40}];
      v26 = v19;
      if (!v19)
      {
LABEL_37:
        v66 = IFDefaultLog(v19);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          name = [(IFSymbol *)self name];
          v68 = v83;
          [descriptorCopy size];
          v70 = v69;
          [descriptorCopy size];
          v72 = v71;
          [descriptorCopy scale];
          *buf = 138413570;
          v85 = name;
          v86 = 2112;
          v87 = v5;
          v88 = 2048;
          v89 = v68;
          v90 = 2048;
          v91 = v70;
          v92 = 2048;
          v93 = v72;
          v94 = 2048;
          v95 = v73;
        }

        image = 0;
        goto LABEL_6;
      }
    }

    else
    {
      if (v83 != 2)
      {
        goto LABEL_37;
      }

      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __44__IFSymbol_imageForGraphicSymbolDescriptor___block_invoke_22;
      v78[3] = &unk_1E7ED98C8;
      v20 = descriptorCopy;
      v79 = v20;
      v21 = MEMORY[0x1BFAE9070](v78);
      [v20 scale];
      v23 = v22;
      [v20 size];
      v26 = [v5 rasterizeImageUsingScaleFactor:v21 forTargetSize:v23 withColorResolver:{v24, v25}];

      if (!v26)
      {
        goto LABEL_37;
      }
    }

    if (v82 == 1)
    {
      [descriptorCopy size];
      v42 = v41;
      v44 = v43;
      [descriptorCopy scale];
      v46 = [IFGraphicsContext bitmapContextWithSize:0 scale:v42 preset:v44, v45];
      cgContext = [v46 cgContext];
      [descriptorCopy size];
      CGContextTranslateCTM(cgContext, v48, 0.0);
      CGContextScaleCTM([v46 cgContext], -1.0, 1.0);
      [descriptorCopy size];
      v50 = v49;
      [descriptorCopy size];
      [v46 drawCGImage:v26 centeredInRect:{0.0, 0.0, v50, v51}];
      image = [v46 image];
    }

    else
    {
      v52 = [IFImage alloc];
      [descriptorCopy scale];
      image = [(IFImage *)v52 initWithCGImage:v26 scale:?];
    }

    CFRelease(v26);
  }

LABEL_6:

  return image;
}

uint64_t __44__IFSymbol_imageForGraphicSymbolDescriptor___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = [*(a1 + 32) count];
  if (v5 <= a3)
  {
    v7 = IFDefaultLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __44__IFSymbol_imageForGraphicSymbolDescriptor___block_invoke_cold_1(a3, v7);
    }

    return [*(a1 + 32) lastObject];
  }

  else
  {
    v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  }

  return v6;
}

uint64_t __44__IFSymbol_imageForGraphicSymbolDescriptor___block_invoke_22(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = -[IFColor _initWithColorStr:appearance:contrast:vibrancy:]([IFColor alloc], "_initWithColorStr:appearance:contrast:vibrancy:", v5, [*(a1 + 32) appearance], objc_msgSend(*(a1 + 32), "contrast"), objc_msgSend(*(a1 + 32), "vibrancy"));

  if (v6 && [v6 cgColor])
  {
    a3 = [v6 cgColor];
  }

  return a3;
}

- (id)_iconStackForGraphicSymbolDescriptor:(id)descriptor
{
  v115[3] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v99 = 0;
  v98 = 0;
  v5 = [(IFSymbol *)self _graphicVariantVectorGlyphForGraphicSymbolDescriptor:descriptorCopy resolvedRenderingMode:&v99 allowXOffsetFlip:0 shouldFlipSymbolImage:&v98];
  v6 = v5;
  v7 = 0;
  if (v5 && v99)
  {
    v8 = 0;
    if (v99 > 2)
    {
      if (v99 == 3)
      {
        resolvedSymbolColors = [descriptorCopy resolvedSymbolColors];
        v30 = [resolvedSymbolColors objectAtIndexedSubscript:0];
        cgColor = [v30 cgColor];

        Alpha = CGColorGetAlpha(cgColor);
        CopyWithAlpha = CGColorCreateCopyWithAlpha(cgColor, Alpha * 0.5);
        v34 = CGColorCreateCopyWithAlpha(cgColor, Alpha * 0.3);
        v115[0] = cgColor;
        v115[1] = CopyWithAlpha;
        v115[2] = v34;
        v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:3];
        v96[0] = MEMORY[0x1E69E9820];
        v96[1] = 3221225472;
        v96[2] = __49__IFSymbol__iconStackForGraphicSymbolDescriptor___block_invoke;
        v96[3] = &unk_1E7ED98A0;
        v97 = v35;
        v36 = v35;
        v37 = v6;
        v38 = MEMORY[0x1BFAE9070](v96);
        [descriptorCopy scale];
        v40 = v39;
        [descriptorCopy size];
        v41 = v37;
        v44 = [v37 layerStackWithDisplayScale:v38 forTargetSize:v40 withHierarchyColorResolver:{v42, v43}];
        if (CopyWithAlpha)
        {
          CFRelease(CopyWithAlpha);
        }

        if (v34)
        {
          CFRelease(v34);
        }

        v6 = v41;
        v8 = v44;
        if (!v44)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v99 != 4)
        {
          goto LABEL_27;
        }

        v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        resolvedSymbolColors2 = [descriptorCopy resolvedSymbolColors];
        v17 = [resolvedSymbolColors2 countByEnumeratingWithState:&v90 objects:v114 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v91;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v91 != v19)
              {
                objc_enumerationMutation(resolvedSymbolColors2);
              }

              [v15 addObject:{objc_msgSend(*(*(&v90 + 1) + 8 * i), "cgColor")}];
            }

            v18 = [resolvedSymbolColors2 countByEnumeratingWithState:&v90 objects:v114 count:16];
          }

          while (v18);
        }

        [descriptorCopy scale];
        v22 = v21;
        [descriptorCopy size];
        v8 = [v6 layerStackWithDisplayScale:v15 forTargetSize:v22 withPaletteColors:{v23, v24}];

        if (!v8)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v99 == 1)
    {
      [descriptorCopy scale];
      v26 = v25;
      [descriptorCopy size];
      v5 = [v6 layerStackWithDisplayScale:v26 forTargetSize:{v27, v28}];
      v8 = v5;
      if (!v5)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v99 != 2)
      {
        goto LABEL_27;
      }

      v94[0] = MEMORY[0x1E69E9820];
      v94[1] = 3221225472;
      v94[2] = __49__IFSymbol__iconStackForGraphicSymbolDescriptor___block_invoke_27;
      v94[3] = &unk_1E7ED98C8;
      v9 = descriptorCopy;
      v95 = v9;
      v10 = MEMORY[0x1BFAE9070](v94);
      [v9 scale];
      v12 = v11;
      [v9 size];
      v8 = [v6 layerStackWithDisplayScale:v10 forTargetSize:v12 withColorResolver:{v13, v14}];

      if (!v8)
      {
        goto LABEL_27;
      }
    }

    layers = [v8 layers];
    v46 = [layers count];

    if (v46 <= 1)
    {
LABEL_27:
      v47 = IFDefaultLog(v5);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        name = [(IFSymbol *)self name];
        v63 = v99;
        [descriptorCopy size];
        v65 = v64;
        [descriptorCopy size];
        v67 = v66;
        [descriptorCopy scale];
        *buf = 138413570;
        v103 = name;
        v104 = 2112;
        v105 = v6;
        v106 = 2048;
        v107 = v63;
        v108 = 2048;
        v109 = v65;
        v110 = 2048;
        v111 = v67;
        v112 = 2048;
        v113 = v68;
      }

      v7 = 0;
      goto LABEL_30;
    }

    if (v98 != 1)
    {
      v8 = v8;
      v7 = v8;
LABEL_30:

      goto LABEL_31;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v8;
    }

    else
    {
      v7 = [v8 mutableCopy];
      if (!v7)
      {
        layers2 = IFDefaultLog(0);
        if (os_log_type_enabled(layers2, OS_LOG_TYPE_ERROR))
        {
          name2 = [(IFSymbol *)self name];
          v70 = v99;
          [descriptorCopy size];
          v72 = v71;
          [descriptorCopy size];
          v74 = v73;
          [descriptorCopy scale];
          *buf = 138413570;
          v103 = name2;
          v104 = 2112;
          v105 = v6;
          v106 = 2048;
          v107 = v70;
          v108 = 2048;
          v109 = v72;
          v110 = 2048;
          v111 = v74;
          v112 = 2048;
          v113 = v75;
        }

        v7 = 0;
        goto LABEL_63;
      }
    }

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    layers2 = [v7 layers];
    v50 = [layers2 countByEnumeratingWithState:&v86 objects:v101 count:16];
    if (v50)
    {
      v51 = v50;
      v76 = v7;
      v77 = v8;
      v52 = *v87;
      v80 = layers2;
      v78 = v6;
      v79 = *v87;
      do
      {
        v53 = 0;
        v81 = v51;
        do
        {
          if (*v87 != v52)
          {
            objc_enumerationMutation(layers2);
          }

          v54 = *(*(&v86 + 1) + 8 * v53);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [descriptorCopy size];
            [(IFSymbol *)self _flipImageInLayer:v54 requestedWidth:?];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v55 = v54;
              v82 = 0u;
              v83 = 0u;
              v84 = 0u;
              v85 = 0u;
              layers3 = [v55 layers];
              v57 = [layers3 countByEnumeratingWithState:&v82 objects:v100 count:16];
              if (v57)
              {
                v58 = v57;
                v59 = *v83;
                do
                {
                  for (j = 0; j != v58; ++j)
                  {
                    if (*v83 != v59)
                    {
                      objc_enumerationMutation(layers3);
                    }

                    v61 = *(*(&v82 + 1) + 8 * j);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      [descriptorCopy size];
                      [(IFSymbol *)self _flipImageInLayer:v61 requestedWidth:?];
                    }
                  }

                  v58 = [layers3 countByEnumeratingWithState:&v82 objects:v100 count:16];
                }

                while (v58);
              }

              v52 = v79;
              layers2 = v80;
              v51 = v81;
            }
          }

          ++v53;
        }

        while (v53 != v51);
        v51 = [layers2 countByEnumeratingWithState:&v86 objects:v101 count:16];
      }

      while (v51);
      v8 = v77;
      v6 = v78;
      v7 = v76;
    }

LABEL_63:

    goto LABEL_30;
  }

LABEL_31:

  return v7;
}

uint64_t __49__IFSymbol__iconStackForGraphicSymbolDescriptor___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = [*(a1 + 32) count];
  if (v5 <= a3)
  {
    v7 = IFDefaultLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __44__IFSymbol_imageForGraphicSymbolDescriptor___block_invoke_cold_1(a3, v7);
    }

    return [*(a1 + 32) lastObject];
  }

  else
  {
    v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  }

  return v6;
}

uint64_t __49__IFSymbol__iconStackForGraphicSymbolDescriptor___block_invoke_27(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = -[IFColor _initWithColorStr:appearance:contrast:vibrancy:]([IFColor alloc], "_initWithColorStr:appearance:contrast:vibrancy:", v5, [*(a1 + 32) appearance], objc_msgSend(*(a1 + 32), "contrast"), objc_msgSend(*(a1 + 32), "vibrancy"));

  if (v6 && [v6 cgColor])
  {
    a3 = [v6 cgColor];
  }

  return a3;
}

- (void)_flipImageInLayer:(id)layer requestedWidth:(double)width
{
  layerCopy = layer;
  image = [layerCopy image];
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v19 = [IFGraphicsContext bitmapContextWithSize:0 scale:Width preset:Height, 1.0];
  CGContextTranslateCTM([v19 cgContext], Width, 0.0);
  CGContextScaleCTM([v19 cgContext], -1.0, 1.0);
  [v19 drawCGImage:objc_msgSend(layerCopy centeredInRect:{"image"), 0.0, 0.0, Width, Height}];
  image2 = [v19 image];
  [layerCopy setImage:{objc_msgSend(image2, "CGImage")}];
  [layerCopy frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [layerCopy frame];
  v17 = width - v16;
  [layerCopy frame];
  [layerCopy setFrame:{v17 - v18, v11, v13, v15}];
}

- (BOOL)_shouldFlipFromSymbolImage:(id)image desiredDirection:(int64_t)direction
{
  imageCopy = image;
  if (![imageCopy isFlippable])
  {
    goto LABEL_7;
  }

  if (direction != 4)
  {
    if (direction == 5 && [imageCopy layoutDirection] == 4)
    {
      goto LABEL_5;
    }

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  if ([imageCopy layoutDirection] != 5)
  {
    goto LABEL_7;
  }

LABEL_5:
  v6 = 1;
LABEL_8:

  return v6;
}

- (id)_graphicVariantVectorGlyphForGraphicSymbolDescriptor:(id)descriptor resolvedRenderingMode:(int64_t *)mode allowXOffsetFlip:(BOOL)flip shouldFlipSymbolImage:(BOOL *)image
{
  flipCopy = flip;
  v68 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v11 = [(IFSymbol *)self imageForDescriptor:descriptorCopy];
  if (v11)
  {
    name = [(IFSymbol *)self name];
    [descriptorCopy setName:name];

    if (-[IFSymbol _shouldFlipFromSymbolImage:desiredDirection:](self, "_shouldFlipFromSymbolImage:desiredDirection:", v11, [descriptorCopy layoutDirection]))
    {
      [descriptorCopy setFlipXOffsetOverride:flipCopy];
      *image = 1;
    }

    v13 = objc_alloc_init(MEMORY[0x1E6999438]);
    -[NSObject setShape:](v13, "setShape:", [descriptorCopy resolvedShape]);
    -[NSObject setFill:](v13, "setFill:", [descriptorCopy resolvedFill]);
    -[NSObject setContentEffect:](v13, "setContentEffect:", [descriptorCopy resolvedSymbolEffect]);
    -[NSObject setShapeEffect:](v13, "setShapeEffect:", [descriptorCopy resolvedEnclosureEffect]);
    [descriptorCopy symbolOffset];
    [v13 setImageOffset:?];
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    resolvedEnclosureColors = [descriptorCopy resolvedEnclosureColors];
    v16 = [resolvedEnclosureColors countByEnumeratingWithState:&v43 objects:v67 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v44;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v44 != v18)
          {
            objc_enumerationMutation(resolvedEnclosureColors);
          }

          [v14 addObject:{objc_msgSend(*(*(&v43 + 1) + 8 * i), "cgColor")}];
        }

        v17 = [resolvedEnclosureColors countByEnumeratingWithState:&v43 objects:v67 count:16];
      }

      while (v17);
    }

    [v13 setFillColors:v14];
    [descriptorCopy resolvedBorderWidth];
    [v13 setBorderWidth:?];
    resolvedBorderColor = [descriptorCopy resolvedBorderColor];
    -[NSObject setBorderColor:](v13, "setBorderColor:", [resolvedBorderColor cgColor]);

    vectorGlyph = [v11 vectorGlyph];
    v22 = [descriptorCopy resolvedRenderingModeFromSuggestedMode:{objc_msgSend(vectorGlyph, "preferredRenderingMode")}];

    if (v22 == 1)
    {
      resolvedSymbolColors = [descriptorCopy resolvedSymbolColors];
      v25 = [resolvedSymbolColors objectAtIndexedSubscript:0];
      -[NSObject setMonochromeForegroundColor:](v13, "setMonochromeForegroundColor:", [v25 cgColor]);
    }

    *mode = v22;
    v26 = IFDefaultLog(v23);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      name2 = [(IFSymbol *)self name];
      fillColors = [v13 fillColors];
      shape = [v13 shape];
      fill = [v13 fill];
      contentEffect = [v13 contentEffect];
      monochromeForegroundColor = [v13 monochromeForegroundColor];
      resolvedName = [descriptorCopy resolvedName];
      [v13 borderWidth];
      v36 = v35;
      borderColor = [v13 borderColor];
      *buf = 138414594;
      v48 = name2;
      v49 = 2112;
      v50 = v13;
      v51 = 2112;
      v52 = fillColors;
      v53 = 2048;
      v54 = shape;
      v55 = 2048;
      v56 = fill;
      v57 = 2048;
      v58 = contentEffect;
      v59 = 2112;
      v60 = monochromeForegroundColor;
      v61 = 2112;
      v62 = resolvedName;
      v63 = 2048;
      v64 = v36;
      v65 = 2112;
      v66 = borderColor;
    }

    vectorGlyph2 = [v11 vectorGlyph];
    v28 = [vectorGlyph2 graphicVariantWithOptions:v13];

    if (!v28)
    {
      v30 = IFDefaultLog(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [IFSymbol _graphicVariantVectorGlyphForGraphicSymbolDescriptor:v13 resolvedRenderingMode:v30 allowXOffsetFlip:? shouldFlipSymbolImage:?];
      }
    }
  }

  else
  {
    v13 = IFDefaultLog(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      name3 = [(IFSymbol *)self name];
      *buf = 138412290;
      v48 = name3;
    }

    v28 = 0;
  }

  return v28;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IFSymbol;
  v4 = [(IFSymbol *)&v8 description];
  name = [(IFSymbol *)self name];
  v6 = [v3 stringWithFormat:@"%@ - %@", v4, name];

  return v6;
}

- (BOOL)_useIconStack
{
  v2 = +[IFDefaults sharedInstance];
  iconStackAppIconsAllowed = [v2 iconStackAppIconsAllowed];

  return iconStackAppIconsAllowed;
}

void __44__IFSymbol_imageForGraphicSymbolDescriptor___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_1B9DEC000, a2, OS_LOG_TYPE_DEBUG, "The hierarchy has more levels then supplied colours. Level: %lu", &v2, 0xCu);
}

- (void)_graphicVariantVectorGlyphForGraphicSymbolDescriptor:(NSObject *)a3 resolvedRenderingMode:allowXOffsetFlip:shouldFlipSymbolImage:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 name];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1B9DEC000, a3, OS_LOG_TYPE_ERROR, "Failed to create graphic variant image for %@ with options %@", &v6, 0x16u);
}

@end