@interface LPEmailCompatibleHTMLIconComponent
+ (id)baseRules;
+ (id)ruleDictionaryForStyle:(id)style;
- (LPEmailCompatibleHTMLIconComponent)initWithImage:(id)image style:(id)style properties:(id)properties themePath:(id)path generator:(id)generator;
@end

@implementation LPEmailCompatibleHTMLIconComponent

- (LPEmailCompatibleHTMLIconComponent)initWithImage:(id)image style:(id)style properties:(id)properties themePath:(id)path generator:(id)generator
{
  imageCopy = image;
  styleCopy = style;
  propertiesCopy = properties;
  pathCopy = path;
  v87.receiver = self;
  v87.super_class = LPEmailCompatibleHTMLIconComponent;
  generatorCopy = generator;
  v15 = [(LPHTMLComponent *)&v87 initWithTagName:@"img" themePath:pathCopy generator:?];
  if (v15)
  {
    LPWebLock();
    _alternateHTMLImageGenerator = [imageCopy _alternateHTMLImageGenerator];

    v82 = pathCopy;
    if (_alternateHTMLImageGenerator)
    {
      _alternateHTMLImageGenerator2 = [imageCopy _alternateHTMLImageGenerator];
      v18 = _alternateHTMLImageGenerator2[2]();

      imageCopy = v18;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __89__LPEmailCompatibleHTMLIconComponent_initWithImage_style_properties_themePath_generator___block_invoke;
    aBlock[3] = &unk_1E7A357A0;
    v81 = pathCopy;
    v86 = v81;
    v19 = _Block_copy(aBlock);
    v20 = LPImageViewFilterResolve(imageCopy, propertiesCopy, styleCopy);
    _remoteURLsForEmailCompatibleOutput = [imageCopy _remoteURLsForEmailCompatibleOutput];

    if (_remoteURLsForEmailCompatibleOutput)
    {
      cornerRadius = [styleCopy cornerRadius];
      [cornerRadius value];
      v24 = v23;

      if (v24 != 0.0)
      {
        v25 = MEMORY[0x1E696AEC0];
        cornerRadius2 = [styleCopy cornerRadius];
        [cornerRadius2 value];
        v28 = [v25 stringWithFormat:@"%gpx", v27];
        cssResolver = [generatorCopy cssResolver];
        localVariables = [cssResolver localVariables];
        v31 = v19[2](v19, @"local", @"corner-radius");
        [localVariables setObject:v28 forKeyedSubscript:v31];
      }

      element = [(LPHTMLComponent *)v15 element];
      _remoteURLsForEmailCompatibleOutput2 = [imageCopy _remoteURLsForEmailCompatibleOutput];
      firstObject = [_remoteURLsForEmailCompatibleOutput2 firstObject];
      v35 = [firstObject URL];
      absoluteString = [v35 absoluteString];
      [element setAttribute:@"src" value:absoluteString];

      element2 = [(LPHTMLComponent *)v15 element];
      _srcsetForRemoteURLs = [imageCopy _srcsetForRemoteURLs];
      [element2 setAttribute:@"srcset" value:_srcsetForRemoteURLs];
      goto LABEL_15;
    }

    v39 = imageCopy;
    maskColor = [propertiesCopy maskColor];

    element2 = v39;
    if (maskColor)
    {
      maskColor2 = [propertiesCopy maskColor];
      element2 = flatImageWithColor(v39, maskColor2);
    }

    if (v20 <= 0xF)
    {
      if (((1 << v20) & 0xD008) != 0)
      {
        fixedSize = [styleCopy fixedSize];
        [fixedSize asSize];
        v44 = v43;
        v46 = v45;

        cornerRadius3 = [styleCopy cornerRadius];
        [cornerRadius3 value];
        v49 = v48;

        backgroundColor = [styleCopy backgroundColor];
        backgroundInset = [styleCopy backgroundInset];
        [backgroundInset value];
        v53 = squareImageWithCornerRadius(element2, backgroundColor, v44, v46, v49, 2.0, v52);

        element2 = backgroundColor;
      }

      else
      {
        if (v20 != 1)
        {
          goto LABEL_14;
        }

        [v39 _pixelSize];
        v74 = v73;
        [v39 _pixelSize];
        if (v74 == v75)
        {
          goto LABEL_14;
        }

        fixedSize2 = [styleCopy fixedSize];
        [fixedSize2 asSize];
        v78 = v77;
        v80 = v79;

        v53 = squareBitmapImageWithInlaidImage(element2, v78, v80, 2.0);
      }

      element2 = v53;
    }

LABEL_14:
    _srcsetForRemoteURLs = [(LPHTMLComponent *)v15 element];
    v54 = [generatorCopy _URLForImage:element2];
    [_srcsetForRemoteURLs setAttribute:@"src" value:v54];

LABEL_15:
    element3 = [(LPHTMLComponent *)v15 element];
    [element3 setAttribute:@"draggable" value:@"false"];

    v56 = [LPCSSVariable alloc];
    v57 = v19[2](v19, 0, @"fixedSize-width");
    v58 = [(LPCSSVariable *)v56 initWithName:v57];
    cssResolver2 = [generatorCopy cssResolver];
    localVariables2 = [cssResolver2 localVariables];
    v61 = v19[2](v19, @"local", @"size-width");
    [localVariables2 setObject:v58 forKeyedSubscript:v61];

    v62 = [LPCSSVariable alloc];
    v63 = v19[2](v19, 0, @"fixedSize-height");
    v64 = [(LPCSSVariable *)v62 initWithName:v63];
    cssResolver3 = [generatorCopy cssResolver];
    localVariables3 = [cssResolver3 localVariables];
    v67 = v19[2](v19, @"local", @"size-height");
    [localVariables3 setObject:v64 forKeyedSubscript:v67];

    cssResolver4 = [generatorCopy cssResolver];
    v69 = [@"lp-rich-link-" stringByAppendingString:v81];
    pathCopy = v82;
    element4 = [(LPHTMLComponent *)v15 element];
    [cssResolver4 addStyle:v69 toElement:element4 inComponent:v15];

    v71 = v15;
  }

  return v15;
}

id __89__LPEmailCompatibleHTMLIconComponent_initWithImage_style_properties_themePath_generator___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-%@", v5, *(a1 + 32), v6];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", *(a1 + 32), v6];
  }
  v7 = ;

  return v7;
}

+ (id)baseRules
{
  v8[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"inline-block";
  v7[0] = @"display";
  v7[1] = @"width";
  v2 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-size-width"];
  v8[1] = v2;
  v7[2] = @"height";
  v3 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-size-height"];
  v8[2] = v3;
  v8[3] = @"none !important";
  v7[3] = @"pointer-events";
  v7[4] = @"border-radius";
  v4 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-corner-radius"];
  v8[4] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];

  return v5;
}

+ (id)ruleDictionaryForStyle:(id)style
{
  baseRules = [self baseRules];

  return baseRules;
}

@end