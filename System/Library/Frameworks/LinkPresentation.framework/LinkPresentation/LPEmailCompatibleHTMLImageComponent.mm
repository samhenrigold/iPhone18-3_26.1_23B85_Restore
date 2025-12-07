@interface LPEmailCompatibleHTMLImageComponent
+ (id)ruleDictionaryForStyle:(id)style;
- (LPEmailCompatibleHTMLImageComponent)initWithImage:(id)image style:(id)style themePath:(id)path generator:(id)generator;
@end

@implementation LPEmailCompatibleHTMLImageComponent

- (LPEmailCompatibleHTMLImageComponent)initWithImage:(id)image style:(id)style themePath:(id)path generator:(id)generator
{
  imageCopy = image;
  styleCopy = style;
  pathCopy = path;
  generatorCopy = generator;
  v79.receiver = self;
  v79.super_class = LPEmailCompatibleHTMLImageComponent;
  v13 = [(LPHTMLComponent *)&v79 initWithTagName:@"img" themePath:pathCopy generator:generatorCopy];
  if (v13)
  {
    LPWebLock();
    _alternateHTMLImageGenerator = [imageCopy _alternateHTMLImageGenerator];

    if (_alternateHTMLImageGenerator)
    {
      _alternateHTMLImageGenerator2 = [imageCopy _alternateHTMLImageGenerator];
      v16 = _alternateHTMLImageGenerator2[2]();

      imageCopy = v16;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __79__LPEmailCompatibleHTMLImageComponent_initWithImage_style_themePath_generator___block_invoke;
    aBlock[3] = &unk_1E7A357A0;
    v17 = pathCopy;
    v78 = v17;
    v74 = _Block_copy(aBlock);
    imageCopy = imageCopy;
    _remoteURLsForEmailCompatibleOutput = [imageCopy _remoteURLsForEmailCompatibleOutput];

    if (_remoteURLsForEmailCompatibleOutput)
    {
      element = [(LPHTMLComponent *)v13 element];
      _remoteURLsForEmailCompatibleOutput2 = [imageCopy _remoteURLsForEmailCompatibleOutput];
      firstObject = [_remoteURLsForEmailCompatibleOutput2 firstObject];
      v22 = [firstObject URL];
      absoluteString = [v22 absoluteString];
      [element setAttribute:@"src" value:absoluteString];

      element2 = [(LPHTMLComponent *)v13 element];
      _srcsetForRemoteURLs = [imageCopy _srcsetForRemoteURLs];
      [element2 setAttribute:@"srcset" value:_srcsetForRemoteURLs];
      v75 = imageCopy;
    }

    else
    {
      v75 = imageCopy;
      if ([styleCopy filter] == 4)
      {
        maskColor = [styleCopy maskColor];
        v75 = flatImageWithColor(imageCopy, maskColor);
      }

      element2 = [(LPHTMLComponent *)v13 element];
      _srcsetForRemoteURLs = [generatorCopy _URLForImage:v75];
      [element2 setAttribute:@"src" value:_srcsetForRemoteURLs];
    }

    element3 = [(LPHTMLComponent *)v13 element];
    properties = [imageCopy properties];
    accessibilityText = [properties accessibilityText];
    v73 = v17;
    [element3 setAttribute:@"alt" value:accessibilityText];

    fixedSize = [styleCopy fixedSize];
    if (fixedSize && ([styleCopy fixedSize], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "isEmpty"), v31, fixedSize, (v32 & 1) == 0))
    {
      fixedSize2 = [styleCopy fixedSize];
      width = [fixedSize2 width];

      fixedSize3 = [styleCopy fixedSize];
      height = [fixedSize3 height];
    }

    else
    {
      [v75 _pixelSize];
      v34 = v33;
      v36 = v35;
      rootWidth = [generatorCopy rootWidth];
      value = [rootWidth value];
      sizeFittingInsideSizeMaintainingAspectRatio(value, v34, v36, v39, 500.0);
      v41 = v40;
      v43 = v42;

      width = [[LPPointUnit alloc] initWithValue:v41];
      height = [[LPPointUnit alloc] initWithValue:v43];
    }

    _lp_CSSText = [(LPPointUnit *)width _lp_CSSText];
    cssResolver = [generatorCopy cssResolver];
    localVariables = [cssResolver localVariables];
    v51 = v74[2](v74, @"local", @"width");
    [localVariables setObject:_lp_CSSText forKeyedSubscript:v51];

    _lp_CSSText2 = [(LPPointUnit *)height _lp_CSSText];
    cssResolver2 = [generatorCopy cssResolver];
    localVariables2 = [cssResolver2 localVariables];
    v55 = v74[2](v74, @"local", @"height");
    [localVariables2 setObject:_lp_CSSText2 forKeyedSubscript:v55];

    filter = [styleCopy filter];
    v57 = 0.0;
    if (filter == 2)
    {
      [styleCopy darkeningAmount];
    }

    v58 = v57;
    if (v58 == 0.0)
    {
      v59 = &stru_1F2447CF0;
    }

    else
    {
      v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"brightness(%g)", (1.0 - v58)];
    }

    cssResolver3 = [generatorCopy cssResolver];
    localVariables3 = [cssResolver3 localVariables];
    v62 = v74[2](v74, @"local", @"filter");
    [localVariables3 setObject:v59 forKeyedSubscript:v62];

    if (v58 != 0.0)
    {
    }

    cssResolver4 = [generatorCopy cssResolver];
    v64 = [@"lp-rich-link-" stringByAppendingString:v73];
    element4 = [(LPHTMLComponent *)v13 element];
    [cssResolver4 addStyle:v64 toElement:element4 inComponent:v13];

    element5 = [(LPHTMLComponent *)v13 element];
    _lp_HTMLAttributeText = [(LPPointUnit *)width _lp_HTMLAttributeText];
    [element5 setAttribute:@"width" value:_lp_HTMLAttributeText];

    element6 = [(LPHTMLComponent *)v13 element];
    _lp_HTMLAttributeText2 = [(LPPointUnit *)height _lp_HTMLAttributeText];
    [element6 setAttribute:@"height" value:_lp_HTMLAttributeText2];

    element7 = [(LPHTMLComponent *)v13 element];
    [element7 setAttribute:@"draggable" value:@"false"];

    v71 = v13;
  }

  return v13;
}

id __79__LPEmailCompatibleHTMLImageComponent_initWithImage_style_themePath_generator___block_invoke(uint64_t a1, void *a2, void *a3)
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

+ (id)ruleDictionaryForStyle:(id)style
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = @"width";
  v3 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-width"];
  v9[0] = v3;
  v8[1] = @"height";
  v4 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-height"];
  v9[1] = v4;
  v8[2] = @"filter";
  v5 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-filter"];
  v9[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

@end