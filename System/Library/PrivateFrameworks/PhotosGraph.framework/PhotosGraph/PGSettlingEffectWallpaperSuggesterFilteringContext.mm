@interface PGSettlingEffectWallpaperSuggesterFilteringContext
+ (BOOL)shouldRunSettlingEffectForAsset:(id)asset subtype:(unsigned __int16)subtype;
+ (double)minimumSettlingEffectScoreForSuggestionSubtype:(unsigned __int16)subtype mediaAnalysisVersion:(unint64_t)version;
- (id)initInOrientation:(int64_t)orientation;
- (void)_commonInitInOrientation:(int64_t)orientation;
@end

@implementation PGSettlingEffectWallpaperSuggesterFilteringContext

- (void)_commonInitInOrientation:(int64_t)orientation
{
  self->_orientation = orientation;
  *&self->_minimumWallpaperScore = xmmword_22F78BFD0;
  self->_ignoreClockOverlap = 1;
  *&self->_timeIntervalForCandidateDeduping = xmmword_22F78BFE0;
  self->_maximumCropZoomRatio = 999.0;
}

- (id)initInOrientation:(int64_t)orientation
{
  v7.receiver = self;
  v7.super_class = PGSettlingEffectWallpaperSuggesterFilteringContext;
  v4 = [(PGSettlingEffectWallpaperSuggesterFilteringContext *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(PGSettlingEffectWallpaperSuggesterFilteringContext *)v4 _commonInitInOrientation:orientation];
  }

  return v5;
}

+ (BOOL)shouldRunSettlingEffectForAsset:(id)asset subtype:(unsigned __int16)subtype
{
  subtypeCopy = subtype;
  v24 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  [PGSettlingEffectScoreHelper analyzedSettlingEffectScoreForAsset:assetCopy requestedOnDemand:0];
  v8 = v7;
  mediaAnalysisProperties = [assetCopy mediaAnalysisProperties];
  [self minimumSettlingEffectScoreForSuggestionSubtype:subtypeCopy mediaAnalysisVersion:{objc_msgSend(mediaAnalysisProperties, "mediaAnalysisVersion")}];
  v11 = v10;

  v12 = v8;
  v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v11 > v12)
  {
    if (v13)
    {
      uuid = [assetCopy uuid];
      v18 = 138412802;
      v19 = uuid;
      v20 = 2048;
      v21 = v12;
      v22 = 2048;
      v23 = v11;
      v15 = MEMORY[0x277D86220];
      v16 = "[PGSettlingEffectWallpaperContexts] Asset: %@, Skip running FRC (%.2f < %.2f)";
      goto LABEL_6;
    }
  }

  else if (v13)
  {
    uuid = [assetCopy uuid];
    v18 = 138412802;
    v19 = uuid;
    v20 = 2048;
    v21 = v12;
    v22 = 2048;
    v23 = v11;
    v15 = MEMORY[0x277D86220];
    v16 = "[PGSettlingEffectWallpaperContexts] Asset: %@, Should run FRC (%.2f >= %.2f)";
LABEL_6:
    _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, v16, &v18, 0x20u);
  }

  return v11 <= v12;
}

+ (double)minimumSettlingEffectScoreForSuggestionSubtype:(unsigned __int16)subtype mediaAnalysisVersion:(unint64_t)version
{
  v4 = [objc_alloc(MEMORY[0x277D3CAC8]) initWithMediaAnalysisVersion:version];
  settlingEffectScoreNode = [v4 settlingEffectScoreNode];
  if (settlingEffectScoreNode)
  {
    settlingEffectScoreNode2 = settlingEffectScoreNode;
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277D3CAC8]);
    v8 = [v7 initWithMediaAnalysisVersion:{objc_msgSend(MEMORY[0x277D3CAC8], "latestVersion")}];

    settlingEffectScoreNode2 = [v8 settlingEffectScoreNode];
    v4 = v8;
  }

  [settlingEffectScoreNode2 operatingPoint];
  v10 = v9;

  return v10;
}

@end