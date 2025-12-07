@interface TDTextStyleRenditionSpec
- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document;
@end

@implementation TDTextStyleRenditionSpec

- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document
{
  production = [objc_msgSend(-[TDTextStyleRenditionSpec production](self production];
  v7 = objc_alloc(MEMORY[0x277D02668]);
  fontName = [(TDTextStyleRenditionSpec *)self fontName];
  [(TDTextStyleRenditionSpec *)self fontSize];
  v10 = v9;
  [(TDTextStyleRenditionSpec *)self maxPointSize];
  v12 = v11;
  [(TDTextStyleRenditionSpec *)self minPointSize];
  v14 = [v7 initWithTextStyleNamed:production fontName:fontName fontSize:-[TDTextStyleRenditionSpec scalingStyle](self maxPointSize:"scalingStyle") minPointSize:-[TDTextStyleRenditionSpec alignment](self scalingStyle:"alignment") alignment:{v10, v12, v13}];
  [v14 setRenditionProperties:{-[TDRenditionSpec propertiesAsDictionary](self, "propertiesAsDictionary")}];
  [v14 setPreserveForArchiveOnly:{-[TDTextStyleRenditionSpec preserveForArchiveOnly](self, "preserveForArchiveOnly")}];
  v15 = [v14 CSIRepresentationWithCompression:0];

  return v15;
}

@end