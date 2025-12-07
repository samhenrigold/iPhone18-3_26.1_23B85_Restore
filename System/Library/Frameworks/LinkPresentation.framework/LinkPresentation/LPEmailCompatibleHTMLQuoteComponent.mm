@interface LPEmailCompatibleHTMLQuoteComponent
+ (id)baseRules;
+ (id)ruleDictionaryForStyle:(id)style;
- (LPEmailCompatibleHTMLQuoteComponent)initWithText:(id)text style:(id)style themePath:(id)path generator:(id)generator;
@end

@implementation LPEmailCompatibleHTMLQuoteComponent

- (LPEmailCompatibleHTMLQuoteComponent)initWithText:(id)text style:(id)style themePath:(id)path generator:(id)generator
{
  textCopy = text;
  styleCopy = style;
  pathCopy = path;
  generatorCopy = generator;
  v57.receiver = self;
  v57.super_class = LPEmailCompatibleHTMLQuoteComponent;
  v13 = [(LPHTMLComponent *)&v57 initWithTagName:@"div" themePath:pathCopy generator:generatorCopy];
  if (v13)
  {
    LPWebLock();
    v14 = MEMORY[0x1E696AEC0];
    font = [styleCopy font];
    [font pointSize];
    v17 = [v14 stringWithFormat:@"%gpt", v16];
    cssResolver = [generatorCopy cssResolver];
    localVariables = [cssResolver localVariables];
    pathCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"local-%@-font-size", pathCopy];
    [localVariables setObject:v17 forKeyedSubscript:pathCopy];

    v21 = CSSAlignmentFromLPTextAlignment([styleCopy textAlignment]);
    cssResolver2 = [generatorCopy cssResolver];
    localVariables2 = [cssResolver2 localVariables];
    pathCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"local-%@-text-alignment", pathCopy];
    [localVariables2 setObject:v21 forKeyedSubscript:pathCopy2];

    color = [styleCopy color];
    _lp_CSSText = [color _lp_CSSText];
    cssResolver3 = [generatorCopy cssResolver];
    localVariables3 = [cssResolver3 localVariables];
    pathCopy3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"local-%@-color", pathCopy];
    [localVariables3 setObject:_lp_CSSText forKeyedSubscript:pathCopy3];

    rootWidth = [generatorCopy rootWidth];
    [rootWidth value];
    v32 = v31;
    padding = [styleCopy padding];
    leading = [padding leading];
    [leading value];
    v36 = v35;
    padding2 = [styleCopy padding];
    trailing = [padding2 trailing];
    [trailing value];
    v40 = v32 - v36 - v39;

    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%gpx", *&v40];
    cssResolver4 = [generatorCopy cssResolver];
    localVariables4 = [cssResolver4 localVariables];
    pathCopy4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"local-%@-width", pathCopy];
    [localVariables4 setObject:v41 forKeyedSubscript:pathCopy4];

    cssResolver5 = [generatorCopy cssResolver];
    v46 = [@"lp-rich-link-" stringByAppendingString:pathCopy];
    element = [(LPHTMLComponent *)v13 element];
    [cssResolver5 addStyle:v46 toElement:element inComponent:v13];

    element2 = [(LPHTMLComponent *)v13 element];
    generator = [(LPHTMLComponent *)v13 generator];
    parentDocument = [generator parentDocument];
    v51 = truncatedStringAtMaximumMetadataLength(textCopy);
    v52 = [parentDocument createTextNode:v51];
    v53 = [element2 appendChild:v52];

    v54 = v13;
  }

  return v13;
}

+ (id)baseRules
{
  v10[8] = *MEMORY[0x1E69E9840];
  v10[0] = @"hidden";
  v9[0] = @"overflow";
  v9[1] = @"color";
  v2 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-color"];
  v10[1] = v2;
  v9[2] = @"font-size";
  v3 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-font-size"];
  v10[2] = v3;
  v10[3] = @"300";
  v9[3] = @"font-weight";
  v9[4] = @"margin";
  v4 = [[LPCSSVariable alloc] initWithName:@"<theme-path>-padding"];
  v10[4] = v4;
  v9[5] = @"width";
  v5 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-width"];
  v10[5] = v5;
  v10[6] = @"break-word";
  v9[6] = @"word-wrap";
  v9[7] = @"text-align";
  v6 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-text-alignment"];
  v10[7] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:8];

  return v7;
}

+ (id)ruleDictionaryForStyle:(id)style
{
  baseRules = [self baseRules];

  return baseRules;
}

@end