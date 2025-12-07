@interface LPEmailCompatibleHTMLTextComponent
+ (id)baseRules;
+ (id)ruleDictionaryForStyle:(id)style;
- (LPEmailCompatibleHTMLTextComponent)initWithCaption:(id)caption style:(id)style themePath:(id)path generator:(id)generator;
@end

@implementation LPEmailCompatibleHTMLTextComponent

- (LPEmailCompatibleHTMLTextComponent)initWithCaption:(id)caption style:(id)style themePath:(id)path generator:(id)generator
{
  captionCopy = caption;
  styleCopy = style;
  pathCopy = path;
  generatorCopy = generator;
  v69.receiver = self;
  v69.super_class = LPEmailCompatibleHTMLTextComponent;
  v14 = [(LPHTMLComponent *)&v69 initWithTagName:@"div" themePath:pathCopy generator:generatorCopy];
  if (v14)
  {
    LPWebLock();
    attributedText = [captionCopy attributedText];
    v63 = captionCopy;
    v59 = generatorCopy;
    v60 = pathCopy;
    v16 = [styleCopy adjustedForString:attributedText];

    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __80__LPEmailCompatibleHTMLTextComponent_initWithCaption_style_themePath_generator___block_invoke;
    v64[3] = &unk_1E7A371A8;
    v17 = generatorCopy;
    v65 = v17;
    v18 = pathCopy;
    v66 = v18;
    v19 = captionCopy;
    v67 = v19;
    styleCopy = v16;
    v68 = styleCopy;
    v62 = __80__LPEmailCompatibleHTMLTextComponent_initWithCaption_style_themePath_generator___block_invoke(v64);
    _lp_CSSText = [v62 _lp_CSSText];
    [v19 textScale];
    v21 = v20;
    font = [styleCopy font];
    v23 = MEMORY[0x1E696AEC0];
    [font pointSize];
    v25 = [v23 stringWithFormat:@"%gpx", v21 * v24];

    cssResolver = [v17 cssResolver];
    localVariables = [cssResolver localVariables];
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"local-%@-font-size", v18];
    [localVariables setObject:v25 forKeyedSubscript:v28];

    v29 = CSSAlignmentFromLPTextAlignment([styleCopy textAlignment]);
    cssResolver2 = [v17 cssResolver];
    localVariables2 = [cssResolver2 localVariables];
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"local-%@-text-alignment", v18];
    [localVariables2 setObject:v29 forKeyedSubscript:v32];

    cssResolver3 = [v17 cssResolver];
    v34 = [@"lp-rich-link-" stringByAppendingString:v18];
    element = [(LPHTMLComponent *)v14 element];
    [cssResolver3 addStyle:v34 toElement:element inComponent:v14];

    generator = [(LPHTMLComponent *)v14 generator];
    parentDocument = [generator parentDocument];
    v38 = [parentDocument createElement:@"a"];

    [v38 setAttribute:@"rel" value:@"nofollow"];
    generator2 = [(LPHTMLComponent *)v14 generator];
    v40 = [generator2 URL];
    absoluteString = [v40 absoluteString];
    [v38 setAttribute:@"href" value:absoluteString];

    [v38 setAttribute:@"style" value:@"text-decoration: none"];
    [v38 setAttribute:@"draggable" value:@"false"];
    generator3 = [(LPHTMLComponent *)v14 generator];
    parentDocument2 = [generator3 parentDocument];
    v44 = [parentDocument2 createElement:@"font"];

    [v44 setAttribute:@"color" value:_lp_CSSText];
    v45 = MEMORY[0x1E696AEC0];
    v46 = [v62 _lp_CSSTextForcingUserInterfaceStyle:0];
    v47 = [v45 stringWithFormat:@"color: %@", v46];;
    [v44 setAttribute:@"style" value:v47];

    v48 = [v38 appendChild:v44];
    generator4 = [(LPHTMLComponent *)v14 generator];
    parentDocument3 = [generator4 parentDocument];
    text = [v19 text];
    v52 = truncatedStringAtMaximumMetadataLength(text);
    v53 = [parentDocument3 createTextNode:v52];
    v54 = [v44 appendChild:v53];

    element2 = [(LPHTMLComponent *)v14 element];
    v56 = [element2 appendChild:v38];

    v57 = v14;
    captionCopy = v63;
    generatorCopy = v59;
    pathCopy = v60;
  }

  return v14;
}

id __80__LPEmailCompatibleHTMLTextComponent_initWithCaption_style_themePath_generator___block_invoke(id *a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__LPEmailCompatibleHTMLTextComponent_initWithCaption_style_themePath_generator___block_invoke_2;
  aBlock[3] = &unk_1E7A37180;
  v9 = a1[4];
  v2 = _Block_copy(aBlock);
  if (([a1[5] containsString:@"mediaTopCaptionBar"] & 1) != 0 || objc_msgSend(a1[5], "containsString:", @"mediaBottomCaptionBar"))
  {
    v3 = +[LPTheme primaryLabelColor];
    v4 = v2[2](v2, v3);
LABEL_4:
    v5 = v4;

    goto LABEL_5;
  }

  v7 = [a1[6] color];

  if (!v7)
  {
    v3 = [a1[7] color];
    v4 = v2[2](v2, v3);
    goto LABEL_4;
  }

  v5 = [a1[6] color];
LABEL_5:

  return v5;
}

id __80__LPEmailCompatibleHTMLTextComponent_initWithCaption_style_themePath_generator___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dominantImageBackgroundColor];

  if (v4)
  {
    v5 = [*(a1 + 32) dominantImageBackgroundColor];
    v6 = [v5 _lp_luminosityLevelForUserInterfaceStyle] == 1;

    v7 = [v3 _lp_colorForcingUserInterfaceStyle:v6];
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v8;
}

+ (id)baseRules
{
  v8[6] = *MEMORY[0x1E69E9840];
  v8[0] = @"hidden";
  v7[0] = @"overflow";
  v7[1] = @"font-size";
  v2 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-font-size"];
  v8[1] = v2;
  v7[2] = @"font-weight";
  v3 = [[LPCSSVariable alloc] initWithName:@"<theme-path>-font-_lp_CSSFontWeight"];
  v8[2] = v3;
  v7[3] = @"text-align";
  v4 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-text-alignment"];
  v8[3] = v4;
  v8[4] = @"break-word";
  v7[4] = @"word-wrap";
  v7[5] = @"text-overflow";
  v8[5] = @"ellipsis";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];

  return v5;
}

+ (id)ruleDictionaryForStyle:(id)style
{
  baseRules = [self baseRules];

  return baseRules;
}

@end