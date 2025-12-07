@interface PGPeopleWallpaperSuggestion
- (PGPeopleWallpaperSuggestion)initWithPersonLocalIdentifier:(id)identifier type:(unsigned __int16)type subtype:(unsigned __int16)subtype asset:(id)asset;
@end

@implementation PGPeopleWallpaperSuggestion

- (PGPeopleWallpaperSuggestion)initWithPersonLocalIdentifier:(id)identifier type:(unsigned __int16)type subtype:(unsigned __int16)subtype asset:(id)asset
{
  subtypeCopy = subtype;
  typeCopy = type;
  v16[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = PGPeopleWallpaperSuggestion;
  v11 = [(PGSingleAssetSuggestion *)&v15 initWithType:typeCopy subtype:subtypeCopy asset:asset];
  if (v11)
  {
    v16[0] = identifierCopy;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    suggestedPersonLocalIdentifiers = v11->_suggestedPersonLocalIdentifiers;
    v11->_suggestedPersonLocalIdentifiers = v12;
  }

  return v11;
}

@end