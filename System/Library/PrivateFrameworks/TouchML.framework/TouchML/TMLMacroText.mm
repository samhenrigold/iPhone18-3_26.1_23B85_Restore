@interface TMLMacroText
+ (id)macroTextWithMacroText:(id)text basePath:(id)path filename:(id)filename;
@end

@implementation TMLMacroText

+ (id)macroTextWithMacroText:(id)text basePath:(id)path filename:(id)filename
{
  filenameCopy = filename;
  pathCopy = path;
  textCopy = text;
  v10 = objc_alloc_init(TMLMacroText);
  [(TMLMacroText *)v10 setMacroText:textCopy];

  [(TMLMacroText *)v10 setBasePath:pathCopy];
  [(TMLMacroText *)v10 setFilename:filenameCopy];

  return v10;
}

@end