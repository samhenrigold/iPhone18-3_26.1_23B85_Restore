@interface PGWallpaperQuestion
- (PGWallpaperQuestion)initWithAssetUUID:(id)d suggestionSubtype:(unsigned __int16)subtype;
@end

@implementation PGWallpaperQuestion

- (PGWallpaperQuestion)initWithAssetUUID:(id)d suggestionSubtype:(unsigned __int16)subtype
{
  subtypeCopy = subtype;
  v16[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v14.receiver = self;
  v14.super_class = PGWallpaperQuestion;
  v8 = [(PGWallpaperQuestion *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_entityIdentifier, d);
    v9->_state = 0;
    v15 = @"suggestionSubtype";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:subtypeCopy];
    v16[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    additionalInfo = v9->_additionalInfo;
    v9->_additionalInfo = v11;
  }

  return v9;
}

@end