@interface BMPerBatchDomainSpecificAssetCounts
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMPerBatchDomainSpecificAssetCounts)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMPerBatchDomainSpecificAssetCounts)initWithParsedAssetCount:(id)count anyDomainAssetCount:(id)assetCount artAssetCount:(id)artAssetCount natureAssetCount:(id)natureAssetCount animalsAssetCount:(id)animalsAssetCount birdsAssetCount:(id)birdsAssetCount insectsAssetCount:(id)insectsAssetCount reptilesAssetCount:(id)self0 mammalsAssetCount:(id)self1 landmarkAssetCount:(id)self2 naturalLandmarkAssetCount:(id)self3 mediaAssetCount:(id)self4 bookAssetCount:(id)self5 albumAssetCount:(id)self6 catsAssetCount:(id)self7 dogsAssetCount:(id)self8 apparelAssetCount:(id)self9 foodAssetCount:(id)foodAssetCount storefrontAssetCount:(id)storefrontAssetCount signSymbolAssetCount:(id)symbolAssetCount laundryCareSymbolAssetCount:(id)careSymbolAssetCount autoSymbolAssetCount:(id)autoSymbolAssetCount brandLogoSymbolAssetCount:(id)logoSymbolAssetCount object2DAssetCount:(id)dAssetCount barcodeDetectionAssetCount:(id)detectionAssetCount sculptureAssetCount:(id)sculptureAssetCount skylineAssetCount:(id)skylineAssetCount;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMPerBatchDomainSpecificAssetCounts

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMPerBatchDomainSpecificAssetCounts hasParsedAssetCount](self, "hasParsedAssetCount") || [v5 hasParsedAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasParsedAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasParsedAssetCount])
      {
        goto LABEL_138;
      }

      parsedAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self parsedAssetCount];
      if (parsedAssetCount != [v5 parsedAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasAnyDomainAssetCount](self, "hasAnyDomainAssetCount") || [v5 hasAnyDomainAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasAnyDomainAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasAnyDomainAssetCount])
      {
        goto LABEL_138;
      }

      anyDomainAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self anyDomainAssetCount];
      if (anyDomainAssetCount != [v5 anyDomainAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasArtAssetCount](self, "hasArtAssetCount") || [v5 hasArtAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasArtAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasArtAssetCount])
      {
        goto LABEL_138;
      }

      artAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self artAssetCount];
      if (artAssetCount != [v5 artAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasNatureAssetCount](self, "hasNatureAssetCount") || [v5 hasNatureAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasNatureAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasNatureAssetCount])
      {
        goto LABEL_138;
      }

      natureAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self natureAssetCount];
      if (natureAssetCount != [v5 natureAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasAnimalsAssetCount](self, "hasAnimalsAssetCount") || [v5 hasAnimalsAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasAnimalsAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasAnimalsAssetCount])
      {
        goto LABEL_138;
      }

      animalsAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self animalsAssetCount];
      if (animalsAssetCount != [v5 animalsAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasBirdsAssetCount](self, "hasBirdsAssetCount") || [v5 hasBirdsAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasBirdsAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasBirdsAssetCount])
      {
        goto LABEL_138;
      }

      birdsAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self birdsAssetCount];
      if (birdsAssetCount != [v5 birdsAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasInsectsAssetCount](self, "hasInsectsAssetCount") || [v5 hasInsectsAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasInsectsAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasInsectsAssetCount])
      {
        goto LABEL_138;
      }

      insectsAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self insectsAssetCount];
      if (insectsAssetCount != [v5 insectsAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasReptilesAssetCount](self, "hasReptilesAssetCount") || [v5 hasReptilesAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasReptilesAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasReptilesAssetCount])
      {
        goto LABEL_138;
      }

      reptilesAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self reptilesAssetCount];
      if (reptilesAssetCount != [v5 reptilesAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasMammalsAssetCount](self, "hasMammalsAssetCount") || [v5 hasMammalsAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasMammalsAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasMammalsAssetCount])
      {
        goto LABEL_138;
      }

      mammalsAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self mammalsAssetCount];
      if (mammalsAssetCount != [v5 mammalsAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasLandmarkAssetCount](self, "hasLandmarkAssetCount") || [v5 hasLandmarkAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasLandmarkAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasLandmarkAssetCount])
      {
        goto LABEL_138;
      }

      landmarkAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self landmarkAssetCount];
      if (landmarkAssetCount != [v5 landmarkAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasNaturalLandmarkAssetCount](self, "hasNaturalLandmarkAssetCount") || [v5 hasNaturalLandmarkAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasNaturalLandmarkAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasNaturalLandmarkAssetCount])
      {
        goto LABEL_138;
      }

      naturalLandmarkAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self naturalLandmarkAssetCount];
      if (naturalLandmarkAssetCount != [v5 naturalLandmarkAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasMediaAssetCount](self, "hasMediaAssetCount") || [v5 hasMediaAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasMediaAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasMediaAssetCount])
      {
        goto LABEL_138;
      }

      mediaAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self mediaAssetCount];
      if (mediaAssetCount != [v5 mediaAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasBookAssetCount](self, "hasBookAssetCount") || [v5 hasBookAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasBookAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasBookAssetCount])
      {
        goto LABEL_138;
      }

      bookAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self bookAssetCount];
      if (bookAssetCount != [v5 bookAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasAlbumAssetCount](self, "hasAlbumAssetCount") || [v5 hasAlbumAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasAlbumAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasAlbumAssetCount])
      {
        goto LABEL_138;
      }

      albumAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self albumAssetCount];
      if (albumAssetCount != [v5 albumAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasCatsAssetCount](self, "hasCatsAssetCount") || [v5 hasCatsAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasCatsAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasCatsAssetCount])
      {
        goto LABEL_138;
      }

      catsAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self catsAssetCount];
      if (catsAssetCount != [v5 catsAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasDogsAssetCount](self, "hasDogsAssetCount") || [v5 hasDogsAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasDogsAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasDogsAssetCount])
      {
        goto LABEL_138;
      }

      dogsAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self dogsAssetCount];
      if (dogsAssetCount != [v5 dogsAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasApparelAssetCount](self, "hasApparelAssetCount") || [v5 hasApparelAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasApparelAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasApparelAssetCount])
      {
        goto LABEL_138;
      }

      apparelAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self apparelAssetCount];
      if (apparelAssetCount != [v5 apparelAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasFoodAssetCount](self, "hasFoodAssetCount") || [v5 hasFoodAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasFoodAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasFoodAssetCount])
      {
        goto LABEL_138;
      }

      foodAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self foodAssetCount];
      if (foodAssetCount != [v5 foodAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasStorefrontAssetCount](self, "hasStorefrontAssetCount") || [v5 hasStorefrontAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasStorefrontAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasStorefrontAssetCount])
      {
        goto LABEL_138;
      }

      storefrontAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self storefrontAssetCount];
      if (storefrontAssetCount != [v5 storefrontAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasSignSymbolAssetCount](self, "hasSignSymbolAssetCount") || [v5 hasSignSymbolAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasSignSymbolAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasSignSymbolAssetCount])
      {
        goto LABEL_138;
      }

      signSymbolAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self signSymbolAssetCount];
      if (signSymbolAssetCount != [v5 signSymbolAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasLaundryCareSymbolAssetCount](self, "hasLaundryCareSymbolAssetCount") || [v5 hasLaundryCareSymbolAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasLaundryCareSymbolAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasLaundryCareSymbolAssetCount])
      {
        goto LABEL_138;
      }

      laundryCareSymbolAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self laundryCareSymbolAssetCount];
      if (laundryCareSymbolAssetCount != [v5 laundryCareSymbolAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasAutoSymbolAssetCount](self, "hasAutoSymbolAssetCount") || [v5 hasAutoSymbolAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasAutoSymbolAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasAutoSymbolAssetCount])
      {
        goto LABEL_138;
      }

      autoSymbolAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self autoSymbolAssetCount];
      if (autoSymbolAssetCount != [v5 autoSymbolAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasBrandLogoSymbolAssetCount](self, "hasBrandLogoSymbolAssetCount") || [v5 hasBrandLogoSymbolAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasBrandLogoSymbolAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasBrandLogoSymbolAssetCount])
      {
        goto LABEL_138;
      }

      brandLogoSymbolAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self brandLogoSymbolAssetCount];
      if (brandLogoSymbolAssetCount != [v5 brandLogoSymbolAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasObject2DAssetCount](self, "hasObject2DAssetCount") || [v5 hasObject2DAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasObject2DAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasObject2DAssetCount])
      {
        goto LABEL_138;
      }

      object2DAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self object2DAssetCount];
      if (object2DAssetCount != [v5 object2DAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasBarcodeDetectionAssetCount](self, "hasBarcodeDetectionAssetCount") || [v5 hasBarcodeDetectionAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasBarcodeDetectionAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasBarcodeDetectionAssetCount])
      {
        goto LABEL_138;
      }

      barcodeDetectionAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self barcodeDetectionAssetCount];
      if (barcodeDetectionAssetCount != [v5 barcodeDetectionAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasSculptureAssetCount](self, "hasSculptureAssetCount") || [v5 hasSculptureAssetCount])
    {
      if (![(BMPerBatchDomainSpecificAssetCounts *)self hasSculptureAssetCount])
      {
        goto LABEL_138;
      }

      if (![v5 hasSculptureAssetCount])
      {
        goto LABEL_138;
      }

      sculptureAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self sculptureAssetCount];
      if (sculptureAssetCount != [v5 sculptureAssetCount])
      {
        goto LABEL_138;
      }
    }

    if (!-[BMPerBatchDomainSpecificAssetCounts hasSkylineAssetCount](self, "hasSkylineAssetCount") && ![v5 hasSkylineAssetCount])
    {
      v33 = 1;
      goto LABEL_139;
    }

    if (-[BMPerBatchDomainSpecificAssetCounts hasSkylineAssetCount](self, "hasSkylineAssetCount") && [v5 hasSkylineAssetCount])
    {
      skylineAssetCount = [(BMPerBatchDomainSpecificAssetCounts *)self skylineAssetCount];
      v33 = skylineAssetCount == [v5 skylineAssetCount];
    }

    else
    {
LABEL_138:
      v33 = 0;
    }

LABEL_139:

    goto LABEL_140;
  }

  v33 = 0;
LABEL_140:

  return v33;
}

- (id)jsonDictionary
{
  v90[27] = *MEMORY[0x1E69E9840];
  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasParsedAssetCount])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts parsedAssetCount](self, "parsedAssetCount")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasAnyDomainAssetCount])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts anyDomainAssetCount](self, "anyDomainAssetCount")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasArtAssetCount])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts artAssetCount](self, "artAssetCount")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasNatureAssetCount])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts natureAssetCount](self, "natureAssetCount")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasAnimalsAssetCount])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts animalsAssetCount](self, "animalsAssetCount")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasBirdsAssetCount])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts birdsAssetCount](self, "birdsAssetCount")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasInsectsAssetCount])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts insectsAssetCount](self, "insectsAssetCount")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasReptilesAssetCount])
  {
    v88 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts reptilesAssetCount](self, "reptilesAssetCount")}];
  }

  else
  {
    v88 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasMammalsAssetCount])
  {
    v87 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts mammalsAssetCount](self, "mammalsAssetCount")}];
  }

  else
  {
    v87 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasLandmarkAssetCount])
  {
    v86 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts landmarkAssetCount](self, "landmarkAssetCount")}];
  }

  else
  {
    v86 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasNaturalLandmarkAssetCount])
  {
    v85 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts naturalLandmarkAssetCount](self, "naturalLandmarkAssetCount")}];
  }

  else
  {
    v85 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasMediaAssetCount])
  {
    v84 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts mediaAssetCount](self, "mediaAssetCount")}];
  }

  else
  {
    v84 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasBookAssetCount])
  {
    v83 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts bookAssetCount](self, "bookAssetCount")}];
  }

  else
  {
    v83 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasAlbumAssetCount])
  {
    v82 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts albumAssetCount](self, "albumAssetCount")}];
  }

  else
  {
    v82 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasCatsAssetCount])
  {
    v81 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts catsAssetCount](self, "catsAssetCount")}];
  }

  else
  {
    v81 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasDogsAssetCount])
  {
    v80 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts dogsAssetCount](self, "dogsAssetCount")}];
  }

  else
  {
    v80 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasApparelAssetCount])
  {
    v79 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts apparelAssetCount](self, "apparelAssetCount")}];
  }

  else
  {
    v79 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasFoodAssetCount])
  {
    v78 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts foodAssetCount](self, "foodAssetCount")}];
  }

  else
  {
    v78 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasStorefrontAssetCount])
  {
    v77 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts storefrontAssetCount](self, "storefrontAssetCount")}];
  }

  else
  {
    v77 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasSignSymbolAssetCount])
  {
    v76 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts signSymbolAssetCount](self, "signSymbolAssetCount")}];
  }

  else
  {
    v76 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasLaundryCareSymbolAssetCount])
  {
    v75 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts laundryCareSymbolAssetCount](self, "laundryCareSymbolAssetCount")}];
  }

  else
  {
    v75 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasAutoSymbolAssetCount])
  {
    v74 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts autoSymbolAssetCount](self, "autoSymbolAssetCount")}];
  }

  else
  {
    v74 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasBrandLogoSymbolAssetCount])
  {
    v73 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts brandLogoSymbolAssetCount](self, "brandLogoSymbolAssetCount")}];
  }

  else
  {
    v73 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasObject2DAssetCount])
  {
    v72 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts object2DAssetCount](self, "object2DAssetCount")}];
  }

  else
  {
    v72 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasBarcodeDetectionAssetCount])
  {
    v71 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts barcodeDetectionAssetCount](self, "barcodeDetectionAssetCount")}];
  }

  else
  {
    v71 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasSculptureAssetCount])
  {
    v70 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts sculptureAssetCount](self, "sculptureAssetCount")}];
  }

  else
  {
    v70 = 0;
  }

  if ([(BMPerBatchDomainSpecificAssetCounts *)self hasSkylineAssetCount])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts skylineAssetCount](self, "skylineAssetCount")}];
  }

  else
  {
    v10 = 0;
  }

  v89[0] = @"parsedAssetCount";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v62 = null;
  v90[0] = null;
  v89[1] = @"anyDomainAssetCount";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = null2;
  v90[1] = null2;
  v89[2] = @"artAssetCount";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = null3;
  v90[2] = null3;
  v89[3] = @"natureAssetCount";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = null4;
  v90[3] = null4;
  v89[4] = @"animalsAssetCount";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = null5;
  v90[4] = null5;
  v89[5] = @"birdsAssetCount";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v57 = null6;
  v90[5] = null6;
  v89[6] = @"insectsAssetCount";
  null7 = v9;
  if (!v9)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = null7;
  v90[6] = null7;
  v89[7] = @"reptilesAssetCount";
  null8 = v88;
  if (!v88)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v90[7] = null8;
  v89[8] = @"mammalsAssetCount";
  null9 = v87;
  if (!v87)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v90[8] = null9;
  v89[9] = @"landmarkAssetCount";
  null10 = v86;
  if (!v86)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v64 = v9;
  v53 = null10;
  v90[9] = null10;
  v89[10] = @"naturalLandmarkAssetCount";
  null11 = v85;
  if (!v85)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v7;
  v66 = null11;
  v90[10] = null11;
  v89[11] = @"mediaAssetCount";
  null12 = v84;
  if (!v84)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v3;
  v65 = null12;
  v90[11] = null12;
  v89[12] = @"bookAssetCount";
  null13 = v83;
  if (!v83)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null13;
  v90[12] = null13;
  v89[13] = @"albumAssetCount";
  null14 = v82;
  if (!v82)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v52 = null14;
  v90[13] = null14;
  v89[14] = @"catsAssetCount";
  null15 = v81;
  if (!v81)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = null15;
  v90[14] = null15;
  v89[15] = @"dogsAssetCount";
  null16 = v80;
  if (!v80)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v50 = null16;
  v90[15] = null16;
  v89[16] = @"apparelAssetCount";
  null17 = v79;
  if (!v79)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v68 = v4;
  v49 = null17;
  v90[16] = null17;
  v89[17] = @"foodAssetCount";
  null18 = v78;
  if (!v78)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = null18;
  v90[17] = null18;
  v89[18] = @"storefrontAssetCount";
  null19 = v77;
  if (!v77)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = v5;
  v47 = null19;
  v90[18] = null19;
  v89[19] = @"signSymbolAssetCount";
  null20 = v76;
  if (!v76)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = null20;
  v90[19] = null20;
  v89[20] = @"laundryCareSymbolAssetCount";
  null21 = v75;
  if (!v75)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v69 = v10;
  v45 = null21;
  v90[20] = null21;
  v89[21] = @"autoSymbolAssetCount";
  null22 = v74;
  if (!v74)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v54 = null9;
  v44 = null22;
  v90[21] = null22;
  v89[22] = @"brandLogoSymbolAssetCount";
  null23 = v73;
  if (!v73)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v55 = null8;
  v90[22] = null23;
  v89[23] = @"object2DAssetCount";
  null24 = v72;
  if (!v72)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v22;
  v90[23] = null24;
  v89[24] = @"barcodeDetectionAssetCount";
  null25 = v71;
  if (!v71)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v90[24] = null25;
  v89[25] = @"sculptureAssetCount";
  null26 = v70;
  if (!v70)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v90[25] = null26;
  v89[26] = @"skylineAssetCount";
  null27 = v69;
  if (!v69)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v90[26] = null27;
  v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:v89 count:27];
  if (!v69)
  {
  }

  v42 = v26;
  if (!v70)
  {

    v42 = v26;
  }

  if (!v71)
  {

    v42 = v26;
  }

  if (!v72)
  {

    v42 = v26;
  }

  if (!v73)
  {

    v42 = v26;
  }

  if (!v74)
  {

    v42 = v26;
  }

  if (!v75)
  {

    v42 = v26;
  }

  if (!v76)
  {

    v42 = v26;
  }

  if (!v77)
  {

    v42 = v26;
  }

  if (!v78)
  {

    v42 = v26;
  }

  if (!v79)
  {

    v42 = v26;
  }

  if (!v80)
  {

    v42 = v26;
  }

  if (!v81)
  {

    v42 = v26;
  }

  if (!v82)
  {

    v42 = v26;
  }

  if (!v83)
  {
  }

  if (!v84)
  {
  }

  if (!v85)
  {
  }

  if (!v86)
  {
  }

  if (!v87)
  {
  }

  if (v88)
  {
    if (v64)
    {
      goto LABEL_176;
    }
  }

  else
  {

    if (v64)
    {
LABEL_176:
      if (v8)
      {
        goto LABEL_177;
      }

      goto LABEL_187;
    }
  }

  if (v8)
  {
LABEL_177:
    if (v38)
    {
      goto LABEL_178;
    }

    goto LABEL_188;
  }

LABEL_187:

  if (v38)
  {
LABEL_178:
    if (v6)
    {
      goto LABEL_179;
    }

    goto LABEL_189;
  }

LABEL_188:

  if (v6)
  {
LABEL_179:
    if (v67)
    {
      goto LABEL_180;
    }

    goto LABEL_190;
  }

LABEL_189:

  if (v67)
  {
LABEL_180:
    if (v68)
    {
      goto LABEL_181;
    }

LABEL_191:

    if (v24)
    {
      goto LABEL_182;
    }

    goto LABEL_192;
  }

LABEL_190:

  if (!v68)
  {
    goto LABEL_191;
  }

LABEL_181:
  if (v24)
  {
    goto LABEL_182;
  }

LABEL_192:

LABEL_182:

  return v63;
}

- (BMPerBatchDomainSpecificAssetCounts)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v300[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"parsedAssetCount"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v245 = 0;
LABEL_4:
    v7 = [dictionaryCopy objectForKeyedSubscript:@"anyDomainAssetCount"];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v244 = 0;
          v56 = 0;
          goto LABEL_120;
        }

        v60 = objc_alloc(MEMORY[0x1E696ABC0]);
        v61 = *MEMORY[0x1E698F240];
        v297 = *MEMORY[0x1E696A578];
        v243 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"anyDomainAssetCount"];
        v298 = v243;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v298 forKeys:&v297 count:1];
        v244 = 0;
        v56 = 0;
        *error = [v60 initWithDomain:v61 code:2 userInfo:v8];
        goto LABEL_119;
      }

      v244 = v7;
    }

    else
    {
      v244 = 0;
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"artAssetCount"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v243 = 0;
          v56 = 0;
          goto LABEL_119;
        }

        v62 = objc_alloc(MEMORY[0x1E696ABC0]);
        v63 = *MEMORY[0x1E698F240];
        v295 = *MEMORY[0x1E696A578];
        v241 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"artAssetCount"];
        v296 = v241;
        v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v296 forKeys:&v295 count:1];
        v243 = 0;
        v56 = 0;
        *error = [v62 initWithDomain:v63 code:2 userInfo:v54];
LABEL_118:

LABEL_119:
        goto LABEL_120;
      }

      v243 = v8;
    }

    else
    {
      v243 = 0;
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"natureAssetCount"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v54 = v9;
        if (!error)
        {
          v241 = 0;
          v56 = 0;
          goto LABEL_118;
        }

        v242 = objc_alloc(MEMORY[0x1E696ABC0]);
        v238 = *MEMORY[0x1E698F240];
        v293 = *MEMORY[0x1E696A578];
        errorCopy = error;
        v239 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"natureAssetCount"];
        v294 = v239;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v294 forKeys:&v293 count:1];
        v65 = [v242 initWithDomain:v238 code:2 userInfo:v10];
        v241 = 0;
        v56 = 0;
        *errorCopy = v65;
        goto LABEL_117;
      }

      errorCopy3 = error;
      v237 = v9;
      v241 = v9;
    }

    else
    {
      errorCopy3 = error;
      v237 = v9;
      v241 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"animalsAssetCount"];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v233 = v10;
        v10 = 0;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy3)
          {
            v239 = 0;
            v56 = 0;
            v54 = v237;
            goto LABEL_117;
          }

          v240 = objc_alloc(MEMORY[0x1E696ABC0]);
          v66 = *MEMORY[0x1E698F240];
          v291 = *MEMORY[0x1E696A578];
          v234 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"animalsAssetCount"];
          v292 = v234;
          v235 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v292 forKeys:&v291 count:1];
          v67 = [v240 initWithDomain:v66 code:2 userInfo:?];
          v239 = 0;
          v56 = 0;
          *errorCopy3 = v67;
          v54 = v237;
LABEL_116:

LABEL_117:
          goto LABEL_118;
        }

        v233 = v10;
        v10 = v10;
      }
    }

    else
    {
      v233 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"birdsAssetCount"];
    v239 = v10;
    v235 = v11;
    if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy3)
        {
          v234 = 0;
          v56 = 0;
          v54 = v237;
          v10 = v233;
          goto LABEL_116;
        }

        v68 = objc_alloc(MEMORY[0x1E696ABC0]);
        v69 = *MEMORY[0x1E698F240];
        v289 = *MEMORY[0x1E696A578];
        v231 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"birdsAssetCount"];
        v290 = v231;
        v232 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v290 forKeys:&v289 count:1];
        v234 = 0;
        v56 = 0;
        *errorCopy3 = [v68 initWithDomain:v69 code:2 userInfo:?];
        goto LABEL_175;
      }

      v234 = v12;
    }

    else
    {
      v234 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"insectsAssetCount"];
    v232 = v13;
    if (!v13 || (v14 = v13, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v231 = 0;
      goto LABEL_33;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v231 = v14;
LABEL_33:
      v15 = [dictionaryCopy objectForKeyedSubscript:@"reptilesAssetCount"];
      if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v225 = v15;
        v229 = 0;
LABEL_36:
        v16 = [dictionaryCopy objectForKeyedSubscript:@"mammalsAssetCount"];
        if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy3)
            {
              v227 = 0;
              v56 = 0;
              v54 = v237;
              v10 = v233;
              v15 = v225;
              goto LABEL_113;
            }

            v228 = objc_alloc(MEMORY[0x1E696ABC0]);
            v76 = v16;
            v77 = *MEMORY[0x1E698F240];
            v283 = *MEMORY[0x1E696A578];
            v222 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"mammalsAssetCount"];
            v284 = v222;
            v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v284 forKeys:&v283 count:1];
            v79 = v77;
            v16 = v76;
            v224 = v78;
            v80 = [v228 initWithDomain:v79 code:2 userInfo:?];
            v227 = 0;
            v56 = 0;
            *errorCopy3 = v80;
            goto LABEL_192;
          }

          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        v18 = [dictionaryCopy objectForKeyedSubscript:@"landmarkAssetCount"];
        v227 = v17;
        v224 = v18;
        if (!v18 || (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v222 = 0;
          goto LABEL_42;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v222 = v19;
LABEL_42:
          v20 = [dictionaryCopy objectForKeyedSubscript:@"naturalLandmarkAssetCount"];
          v221 = v20;
          if (!v20 || (v21 = v20, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v219 = 0;
            goto LABEL_45;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v219 = v21;
LABEL_45:
            v22 = [dictionaryCopy objectForKeyedSubscript:@"mediaAssetCount"];
            v218 = v22;
            if (!v22 || (v23 = v22, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v216 = 0;
              goto LABEL_48;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v216 = v23;
LABEL_48:
              v24 = [dictionaryCopy objectForKeyedSubscript:@"bookAssetCount"];
              v215 = v24;
              if (!v24 || (v25 = v24, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v213 = 0;
                goto LABEL_51;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v213 = v25;
LABEL_51:
                v26 = [dictionaryCopy objectForKeyedSubscript:@"albumAssetCount"];
                v212 = v26;
                if (!v26 || (v27 = v26, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v210 = 0;
                  goto LABEL_54;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v210 = v27;
LABEL_54:
                  v28 = [dictionaryCopy objectForKeyedSubscript:@"catsAssetCount"];
                  v207 = v28;
                  if (!v28 || (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v208 = 0;
                    goto LABEL_57;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v208 = v29;
LABEL_57:
                    v30 = [dictionaryCopy objectForKeyedSubscript:@"dogsAssetCount"];
                    v204 = v30;
                    if (!v30 || (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v205 = 0;
                      goto LABEL_60;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v205 = v31;
LABEL_60:
                      v32 = [dictionaryCopy objectForKeyedSubscript:@"apparelAssetCount"];
                      v201 = v32;
                      if (!v32 || (v33 = v32, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v202 = 0;
                        goto LABEL_63;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v202 = v33;
LABEL_63:
                        v34 = [dictionaryCopy objectForKeyedSubscript:@"foodAssetCount"];
                        v198 = v34;
                        if (!v34 || (v35 = v34, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v199 = 0;
                          goto LABEL_66;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v199 = v35;
LABEL_66:
                          v36 = [dictionaryCopy objectForKeyedSubscript:@"storefrontAssetCount"];
                          v195 = v36;
                          if (!v36 || (v37 = v36, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v196 = 0;
                            goto LABEL_69;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v196 = v37;
LABEL_69:
                            v38 = [dictionaryCopy objectForKeyedSubscript:@"signSymbolAssetCount"];
                            v192 = v38;
                            if (!v38 || (v39 = v38, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v193 = 0;
                              goto LABEL_72;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v193 = v39;
LABEL_72:
                              v40 = [dictionaryCopy objectForKeyedSubscript:@"laundryCareSymbolAssetCount"];
                              v189 = v40;
                              if (!v40 || (v41 = v40, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v190 = 0;
                                goto LABEL_75;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v190 = v41;
LABEL_75:
                                v42 = [dictionaryCopy objectForKeyedSubscript:@"autoSymbolAssetCount"];
                                v186 = v42;
                                if (!v42 || (v43 = v42, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v187 = 0;
                                  goto LABEL_78;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v187 = v43;
LABEL_78:
                                  v44 = [dictionaryCopy objectForKeyedSubscript:@"brandLogoSymbolAssetCount"];
                                  v183 = v44;
                                  if (!v44 || (v45 = v44, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v184 = 0;
                                    goto LABEL_81;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v184 = v45;
LABEL_81:
                                    v46 = [dictionaryCopy objectForKeyedSubscript:@"object2DAssetCount"];
                                    v178 = v46;
                                    if (!v46 || (v47 = v46, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v181 = 0;
                                      goto LABEL_84;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v181 = v47;
LABEL_84:
                                      v48 = [dictionaryCopy objectForKeyedSubscript:@"barcodeDetectionAssetCount"];
                                      v175 = v48;
                                      if (!v48 || (v49 = v48, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v179 = 0;
                                        goto LABEL_87;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v179 = v49;
LABEL_87:
                                        v50 = [dictionaryCopy objectForKeyedSubscript:@"sculptureAssetCount"];
                                        v174 = v50;
                                        if (!v50 || (v51 = v50, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v176 = 0;
                                          goto LABEL_90;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v176 = v51;
LABEL_90:
                                          v52 = [dictionaryCopy objectForKeyedSubscript:@"skylineAssetCount"];
                                          v173 = v52;
                                          if (v52)
                                          {
                                            v53 = v52;
                                            objc_opt_class();
                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                            {
                                              objc_opt_class();
                                              v54 = v237;
                                              if ((objc_opt_isKindOfClass() & 1) == 0)
                                              {
                                                if (errorCopy3)
                                                {
                                                  v166 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v167 = v16;
                                                  v168 = *MEMORY[0x1E698F240];
                                                  v247 = *MEMORY[0x1E696A578];
                                                  v169 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"skylineAssetCount"];
                                                  v248 = v169;
                                                  v170 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v248 forKeys:&v247 count:1];
                                                  v171 = v166;
                                                  v54 = v237;
                                                  v172 = v168;
                                                  v16 = v167;
                                                  *errorCopy3 = [v171 initWithDomain:v172 code:2 userInfo:v170];
                                                }

                                                v55 = 0;
                                                v56 = 0;
                                                goto LABEL_95;
                                              }

                                              v52 = v53;
                                              goto LABEL_94;
                                            }

                                            v52 = 0;
                                          }

                                          v54 = v237;
LABEL_94:
                                          v55 = v52;
                                          v56 = [(BMPerBatchDomainSpecificAssetCounts *)self initWithParsedAssetCount:v245 anyDomainAssetCount:v244 artAssetCount:v243 natureAssetCount:v241 animalsAssetCount:v10 birdsAssetCount:v234 insectsAssetCount:v231 reptilesAssetCount:v229 mammalsAssetCount:v17 landmarkAssetCount:v222 naturalLandmarkAssetCount:v219 mediaAssetCount:v216 bookAssetCount:v213 albumAssetCount:v210 catsAssetCount:v208 dogsAssetCount:v205 apparelAssetCount:v202 foodAssetCount:v199 storefrontAssetCount:v196 signSymbolAssetCount:v193 laundryCareSymbolAssetCount:v190 autoSymbolAssetCount:v187 brandLogoSymbolAssetCount:v184 object2DAssetCount:v181 barcodeDetectionAssetCount:v179 sculptureAssetCount:v176 skylineAssetCount:v52];
                                          self = v56;
LABEL_95:
                                          v10 = v233;
                                          v15 = v225;

LABEL_96:
LABEL_97:

LABEL_98:
LABEL_99:

LABEL_100:
LABEL_101:

LABEL_102:
LABEL_103:

LABEL_104:
LABEL_105:

LABEL_106:
LABEL_107:

LABEL_108:
LABEL_109:

LABEL_110:
LABEL_111:

LABEL_112:
LABEL_113:

LABEL_114:
LABEL_115:

                                          goto LABEL_116;
                                        }

                                        if (errorCopy3)
                                        {
                                          v177 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v161 = v16;
                                          v162 = *MEMORY[0x1E698F240];
                                          v249 = *MEMORY[0x1E696A578];
                                          v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"sculptureAssetCount"];
                                          v250 = v55;
                                          v163 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v250 forKeys:&v249 count:1];
                                          v164 = v162;
                                          v16 = v161;
                                          v173 = v163;
                                          v165 = [v177 initWithDomain:v164 code:2 userInfo:?];
                                          v176 = 0;
                                          v56 = 0;
                                          *errorCopy3 = v165;
                                          v54 = v237;
                                          goto LABEL_95;
                                        }

                                        v176 = 0;
                                        v56 = 0;
LABEL_265:
                                        v54 = v237;
                                        v10 = v233;
                                        v15 = v225;
                                        goto LABEL_96;
                                      }

                                      if (errorCopy3)
                                      {
                                        v180 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v156 = v16;
                                        v157 = *MEMORY[0x1E698F240];
                                        v251 = *MEMORY[0x1E696A578];
                                        v176 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"barcodeDetectionAssetCount"];
                                        v252 = v176;
                                        v158 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v252 forKeys:&v251 count:1];
                                        v159 = v157;
                                        v16 = v156;
                                        v174 = v158;
                                        v160 = [v180 initWithDomain:v159 code:2 userInfo:?];
                                        v179 = 0;
                                        v56 = 0;
                                        *errorCopy3 = v160;
                                        goto LABEL_265;
                                      }

                                      v179 = 0;
                                      v56 = 0;
LABEL_263:
                                      v54 = v237;
                                      v10 = v233;
                                      v15 = v225;
                                      goto LABEL_97;
                                    }

                                    if (errorCopy3)
                                    {
                                      v182 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v151 = v16;
                                      v152 = *MEMORY[0x1E698F240];
                                      v253 = *MEMORY[0x1E696A578];
                                      v179 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"object2DAssetCount"];
                                      v254 = v179;
                                      v153 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v254 forKeys:&v253 count:1];
                                      v154 = v152;
                                      v16 = v151;
                                      v175 = v153;
                                      v155 = [v182 initWithDomain:v154 code:2 userInfo:?];
                                      v181 = 0;
                                      v56 = 0;
                                      *errorCopy3 = v155;
                                      goto LABEL_263;
                                    }

                                    v181 = 0;
                                    v56 = 0;
LABEL_261:
                                    v54 = v237;
                                    v10 = v233;
                                    v15 = v225;
                                    goto LABEL_98;
                                  }

                                  if (errorCopy3)
                                  {
                                    v185 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v146 = v16;
                                    v147 = *MEMORY[0x1E698F240];
                                    v255 = *MEMORY[0x1E696A578];
                                    v181 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"brandLogoSymbolAssetCount"];
                                    v256 = v181;
                                    v148 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v256 forKeys:&v255 count:1];
                                    v149 = v147;
                                    v16 = v146;
                                    v178 = v148;
                                    v150 = [v185 initWithDomain:v149 code:2 userInfo:?];
                                    v184 = 0;
                                    v56 = 0;
                                    *errorCopy3 = v150;
                                    goto LABEL_261;
                                  }

                                  v184 = 0;
                                  v56 = 0;
LABEL_259:
                                  v54 = v237;
                                  v10 = v233;
                                  v15 = v225;
                                  goto LABEL_99;
                                }

                                if (errorCopy3)
                                {
                                  v188 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v141 = v16;
                                  v142 = *MEMORY[0x1E698F240];
                                  v257 = *MEMORY[0x1E696A578];
                                  v184 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"autoSymbolAssetCount"];
                                  v258 = v184;
                                  v143 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v258 forKeys:&v257 count:1];
                                  v144 = v142;
                                  v16 = v141;
                                  v183 = v143;
                                  v145 = [v188 initWithDomain:v144 code:2 userInfo:?];
                                  v187 = 0;
                                  v56 = 0;
                                  *errorCopy3 = v145;
                                  goto LABEL_259;
                                }

                                v187 = 0;
                                v56 = 0;
LABEL_257:
                                v54 = v237;
                                v10 = v233;
                                v15 = v225;
                                goto LABEL_100;
                              }

                              if (errorCopy3)
                              {
                                v191 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v136 = v16;
                                v137 = *MEMORY[0x1E698F240];
                                v259 = *MEMORY[0x1E696A578];
                                v187 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"laundryCareSymbolAssetCount"];
                                v260 = v187;
                                v138 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v260 forKeys:&v259 count:1];
                                v139 = v137;
                                v16 = v136;
                                v186 = v138;
                                v140 = [v191 initWithDomain:v139 code:2 userInfo:?];
                                v190 = 0;
                                v56 = 0;
                                *errorCopy3 = v140;
                                goto LABEL_257;
                              }

                              v190 = 0;
                              v56 = 0;
LABEL_252:
                              v54 = v237;
                              v10 = v233;
                              v15 = v225;
                              goto LABEL_101;
                            }

                            if (errorCopy3)
                            {
                              v194 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v131 = v16;
                              v132 = *MEMORY[0x1E698F240];
                              v261 = *MEMORY[0x1E696A578];
                              v190 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"signSymbolAssetCount"];
                              v262 = v190;
                              v133 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v262 forKeys:&v261 count:1];
                              v134 = v132;
                              v16 = v131;
                              v189 = v133;
                              v135 = [v194 initWithDomain:v134 code:2 userInfo:?];
                              v193 = 0;
                              v56 = 0;
                              *errorCopy3 = v135;
                              goto LABEL_252;
                            }

                            v193 = 0;
                            v56 = 0;
LABEL_248:
                            v54 = v237;
                            v10 = v233;
                            v15 = v225;
                            goto LABEL_102;
                          }

                          if (errorCopy3)
                          {
                            v197 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v126 = v16;
                            v127 = *MEMORY[0x1E698F240];
                            v263 = *MEMORY[0x1E696A578];
                            v193 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"storefrontAssetCount"];
                            v264 = v193;
                            v128 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v264 forKeys:&v263 count:1];
                            v129 = v127;
                            v16 = v126;
                            v192 = v128;
                            v130 = [v197 initWithDomain:v129 code:2 userInfo:?];
                            v196 = 0;
                            v56 = 0;
                            *errorCopy3 = v130;
                            goto LABEL_248;
                          }

                          v196 = 0;
                          v56 = 0;
LABEL_244:
                          v54 = v237;
                          v10 = v233;
                          v15 = v225;
                          goto LABEL_103;
                        }

                        if (errorCopy3)
                        {
                          v200 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v121 = v16;
                          v122 = *MEMORY[0x1E698F240];
                          v265 = *MEMORY[0x1E696A578];
                          v196 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"foodAssetCount"];
                          v266 = v196;
                          v123 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v266 forKeys:&v265 count:1];
                          v124 = v122;
                          v16 = v121;
                          v195 = v123;
                          v125 = [v200 initWithDomain:v124 code:2 userInfo:?];
                          v199 = 0;
                          v56 = 0;
                          *errorCopy3 = v125;
                          goto LABEL_244;
                        }

                        v199 = 0;
                        v56 = 0;
LABEL_240:
                        v54 = v237;
                        v10 = v233;
                        v15 = v225;
                        goto LABEL_104;
                      }

                      if (errorCopy3)
                      {
                        v203 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v116 = v16;
                        v117 = *MEMORY[0x1E698F240];
                        v267 = *MEMORY[0x1E696A578];
                        v199 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"apparelAssetCount"];
                        v268 = v199;
                        v118 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v268 forKeys:&v267 count:1];
                        v119 = v117;
                        v16 = v116;
                        v198 = v118;
                        v120 = [v203 initWithDomain:v119 code:2 userInfo:?];
                        v202 = 0;
                        v56 = 0;
                        *errorCopy3 = v120;
                        goto LABEL_240;
                      }

                      v202 = 0;
                      v56 = 0;
LABEL_234:
                      v54 = v237;
                      v10 = v233;
                      v15 = v225;
                      goto LABEL_105;
                    }

                    if (errorCopy3)
                    {
                      v206 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v111 = v16;
                      v112 = *MEMORY[0x1E698F240];
                      v269 = *MEMORY[0x1E696A578];
                      v202 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"dogsAssetCount"];
                      v270 = v202;
                      v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v270 forKeys:&v269 count:1];
                      v114 = v112;
                      v16 = v111;
                      v201 = v113;
                      v115 = [v206 initWithDomain:v114 code:2 userInfo:?];
                      v205 = 0;
                      v56 = 0;
                      *errorCopy3 = v115;
                      goto LABEL_234;
                    }

                    v205 = 0;
                    v56 = 0;
LABEL_228:
                    v54 = v237;
                    v10 = v233;
                    v15 = v225;
                    goto LABEL_106;
                  }

                  if (errorCopy3)
                  {
                    v209 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v106 = v16;
                    v107 = *MEMORY[0x1E698F240];
                    v271 = *MEMORY[0x1E696A578];
                    v205 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"catsAssetCount"];
                    v272 = v205;
                    v108 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v272 forKeys:&v271 count:1];
                    v109 = v107;
                    v16 = v106;
                    v204 = v108;
                    v110 = [v209 initWithDomain:v109 code:2 userInfo:?];
                    v208 = 0;
                    v56 = 0;
                    *errorCopy3 = v110;
                    goto LABEL_228;
                  }

                  v208 = 0;
                  v56 = 0;
LABEL_222:
                  v54 = v237;
                  v10 = v233;
                  v15 = v225;
                  goto LABEL_107;
                }

                if (errorCopy3)
                {
                  v211 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v101 = v16;
                  v102 = *MEMORY[0x1E698F240];
                  v273 = *MEMORY[0x1E696A578];
                  v208 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"albumAssetCount"];
                  v274 = v208;
                  v103 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v274 forKeys:&v273 count:1];
                  v104 = v102;
                  v16 = v101;
                  v207 = v103;
                  v105 = [v211 initWithDomain:v104 code:2 userInfo:?];
                  v210 = 0;
                  v56 = 0;
                  *errorCopy3 = v105;
                  goto LABEL_222;
                }

                v210 = 0;
                v56 = 0;
LABEL_216:
                v54 = v237;
                v10 = v233;
                v15 = v225;
                goto LABEL_108;
              }

              if (errorCopy3)
              {
                v214 = objc_alloc(MEMORY[0x1E696ABC0]);
                v96 = v16;
                v97 = *MEMORY[0x1E698F240];
                v275 = *MEMORY[0x1E696A578];
                v210 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"bookAssetCount"];
                v276 = v210;
                v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v276 forKeys:&v275 count:1];
                v99 = v97;
                v16 = v96;
                v212 = v98;
                v100 = [v214 initWithDomain:v99 code:2 userInfo:?];
                v213 = 0;
                v56 = 0;
                *errorCopy3 = v100;
                goto LABEL_216;
              }

              v213 = 0;
              v56 = 0;
LABEL_210:
              v54 = v237;
              v10 = v233;
              v15 = v225;
              goto LABEL_109;
            }

            if (errorCopy3)
            {
              v217 = objc_alloc(MEMORY[0x1E696ABC0]);
              v91 = v16;
              v92 = *MEMORY[0x1E698F240];
              v277 = *MEMORY[0x1E696A578];
              v213 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"mediaAssetCount"];
              v278 = v213;
              v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v278 forKeys:&v277 count:1];
              v94 = v92;
              v16 = v91;
              v215 = v93;
              v95 = [v217 initWithDomain:v94 code:2 userInfo:?];
              v216 = 0;
              v56 = 0;
              *errorCopy3 = v95;
              goto LABEL_210;
            }

            v216 = 0;
            v56 = 0;
LABEL_204:
            v54 = v237;
            v10 = v233;
            v15 = v225;
            goto LABEL_110;
          }

          if (errorCopy3)
          {
            v220 = objc_alloc(MEMORY[0x1E696ABC0]);
            v86 = v16;
            v87 = *MEMORY[0x1E698F240];
            v279 = *MEMORY[0x1E696A578];
            v216 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"naturalLandmarkAssetCount"];
            v280 = v216;
            v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v280 forKeys:&v279 count:1];
            v89 = v87;
            v16 = v86;
            v218 = v88;
            v90 = [v220 initWithDomain:v89 code:2 userInfo:?];
            v219 = 0;
            v56 = 0;
            *errorCopy3 = v90;
            goto LABEL_204;
          }

          v219 = 0;
          v56 = 0;
LABEL_198:
          v54 = v237;
          v10 = v233;
          v15 = v225;
          goto LABEL_111;
        }

        if (errorCopy3)
        {
          v223 = objc_alloc(MEMORY[0x1E696ABC0]);
          v81 = v16;
          v82 = *MEMORY[0x1E698F240];
          v281 = *MEMORY[0x1E696A578];
          v219 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"landmarkAssetCount"];
          v282 = v219;
          v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v282 forKeys:&v281 count:1];
          v84 = v82;
          v16 = v81;
          v221 = v83;
          v85 = [v223 initWithDomain:v84 code:2 userInfo:?];
          v222 = 0;
          v56 = 0;
          *errorCopy3 = v85;
          goto LABEL_198;
        }

        v222 = 0;
        v56 = 0;
LABEL_192:
        v54 = v237;
        v10 = v233;
        v15 = v225;
        goto LABEL_112;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v225 = v15;
        v229 = v15;
        goto LABEL_36;
      }

      if (errorCopy3)
      {
        v230 = objc_alloc(MEMORY[0x1E696ABC0]);
        v226 = *MEMORY[0x1E698F240];
        v285 = *MEMORY[0x1E696A578];
        v73 = v15;
        v227 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"reptilesAssetCount"];
        v286 = v227;
        v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v286 forKeys:&v285 count:1];
        v75 = [v230 initWithDomain:v226 code:2 userInfo:v74];
        v229 = 0;
        v56 = 0;
        *errorCopy3 = v75;
        v16 = v74;
        v15 = v73;
        v54 = v237;
        v10 = v233;
        goto LABEL_113;
      }

      v229 = 0;
      v56 = 0;
LABEL_181:
      v54 = v237;
      v10 = v233;
      goto LABEL_114;
    }

    if (errorCopy3)
    {
      v70 = objc_alloc(MEMORY[0x1E696ABC0]);
      v71 = *MEMORY[0x1E698F240];
      v287 = *MEMORY[0x1E696A578];
      v229 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"insectsAssetCount"];
      v288 = v229;
      v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v288 forKeys:&v287 count:1];
      v231 = 0;
      v56 = 0;
      *errorCopy3 = [v70 initWithDomain:v71 code:2 userInfo:v72];
      v15 = v72;
      goto LABEL_181;
    }

    v231 = 0;
    v56 = 0;
LABEL_175:
    v54 = v237;
    v10 = v233;
    goto LABEL_115;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v245 = v6;
    goto LABEL_4;
  }

  if (!error)
  {
    v245 = 0;
    v56 = 0;
    goto LABEL_121;
  }

  v58 = objc_alloc(MEMORY[0x1E696ABC0]);
  v59 = *MEMORY[0x1E698F240];
  v299 = *MEMORY[0x1E696A578];
  v244 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"parsedAssetCount"];
  v300[0] = v244;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v300 forKeys:&v299 count:1];
  v245 = 0;
  v56 = 0;
  *error = [v58 initWithDomain:v59 code:2 userInfo:v7];
LABEL_120:

LABEL_121:
  return v56;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPerBatchDomainSpecificAssetCounts *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasParsedAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasAnyDomainAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasArtAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNatureAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasAnimalsAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasBirdsAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasInsectsAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasReptilesAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasMammalsAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasLandmarkAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNaturalLandmarkAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasMediaAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasBookAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasAlbumAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasCatsAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasDogsAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasApparelAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasFoodAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasStorefrontAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasSignSymbolAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasLaundryCareSymbolAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasAutoSymbolAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasBrandLogoSymbolAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasObject2DAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasBarcodeDetectionAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasSculptureAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasSkylineAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v156.receiver = self;
  v156.super_class = BMPerBatchDomainSpecificAssetCounts;
  v5 = [(BMEventBase *)&v156 init];
  if (!v5)
  {
LABEL_297:
    v154 = v5;
    goto LABEL_298;
  }

  while (1)
  {
    position = [fromCopy position];
    if (position >= [fromCopy length] || (objc_msgSend(fromCopy, "hasError") & 1) != 0)
    {
      break;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v157 = 0;
      v10 = [fromCopy position] + 1;
      if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v9 |= (v157 & 0x7F) << v7;
      if ((v157 & 0x80) == 0)
      {
        break;
      }

      v7 += 7;
      if (v8++ >= 9)
      {
        v14 = 0;
        goto LABEL_16;
      }
    }

    v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
    if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
    {
      break;
    }

    switch((v14 >> 3))
    {
      case 1u:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v5->_hasParsedAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v18 = [fromCopy position] + 1;
          if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 1, v19 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v15;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v15 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__parsedAssetCount;
          v23 = v16++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__parsedAssetCount;
        goto LABEL_291;
      case 2u:
        v84 = 0;
        v85 = 0;
        v17 = 0;
        v5->_hasAnyDomainAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v86 = [fromCopy position] + 1;
          if (v86 >= [fromCopy position] && (v87 = objc_msgSend(fromCopy, "position") + 1, v87 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v84;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v84 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__anyDomainAssetCount;
          v23 = v85++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__anyDomainAssetCount;
        goto LABEL_291;
      case 3u:
        v64 = 0;
        v65 = 0;
        v17 = 0;
        v5->_hasArtAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v66 = [fromCopy position] + 1;
          if (v66 >= [fromCopy position] && (v67 = objc_msgSend(fromCopy, "position") + 1, v67 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v64;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v64 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__artAssetCount;
          v23 = v65++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__artAssetCount;
        goto LABEL_291;
      case 4u:
        v74 = 0;
        v75 = 0;
        v17 = 0;
        v5->_hasNatureAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v76 = [fromCopy position] + 1;
          if (v76 >= [fromCopy position] && (v77 = objc_msgSend(fromCopy, "position") + 1, v77 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v74;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v74 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__natureAssetCount;
          v23 = v75++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__natureAssetCount;
        goto LABEL_291;
      case 5u:
        v39 = 0;
        v40 = 0;
        v17 = 0;
        v5->_hasAnimalsAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v41 = [fromCopy position] + 1;
          if (v41 >= [fromCopy position] && (v42 = objc_msgSend(fromCopy, "position") + 1, v42 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v39;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v39 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__animalsAssetCount;
          v23 = v40++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__animalsAssetCount;
        goto LABEL_291;
      case 6u:
        v99 = 0;
        v100 = 0;
        v17 = 0;
        v5->_hasBirdsAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v101 = [fromCopy position] + 1;
          if (v101 >= [fromCopy position] && (v102 = objc_msgSend(fromCopy, "position") + 1, v102 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v99;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v99 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__birdsAssetCount;
          v23 = v100++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__birdsAssetCount;
        goto LABEL_291;
      case 7u:
        v114 = 0;
        v115 = 0;
        v17 = 0;
        v5->_hasInsectsAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v116 = [fromCopy position] + 1;
          if (v116 >= [fromCopy position] && (v117 = objc_msgSend(fromCopy, "position") + 1, v117 <= objc_msgSend(fromCopy, "length")))
          {
            data8 = [fromCopy data];
            [data8 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v114;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v114 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__insectsAssetCount;
          v23 = v115++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__insectsAssetCount;
        goto LABEL_291;
      case 8u:
        v79 = 0;
        v80 = 0;
        v17 = 0;
        v5->_hasReptilesAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v81 = [fromCopy position] + 1;
          if (v81 >= [fromCopy position] && (v82 = objc_msgSend(fromCopy, "position") + 1, v82 <= objc_msgSend(fromCopy, "length")))
          {
            data9 = [fromCopy data];
            [data9 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v79;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v79 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__reptilesAssetCount;
          v23 = v80++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__reptilesAssetCount;
        goto LABEL_291;
      case 9u:
        v129 = 0;
        v130 = 0;
        v17 = 0;
        v5->_hasMammalsAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v131 = [fromCopy position] + 1;
          if (v131 >= [fromCopy position] && (v132 = objc_msgSend(fromCopy, "position") + 1, v132 <= objc_msgSend(fromCopy, "length")))
          {
            data10 = [fromCopy data];
            [data10 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v129;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v129 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__mammalsAssetCount;
          v23 = v130++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__mammalsAssetCount;
        goto LABEL_291;
      case 0xAu:
        v49 = 0;
        v50 = 0;
        v17 = 0;
        v5->_hasLandmarkAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v51 = [fromCopy position] + 1;
          if (v51 >= [fromCopy position] && (v52 = objc_msgSend(fromCopy, "position") + 1, v52 <= objc_msgSend(fromCopy, "length")))
          {
            data11 = [fromCopy data];
            [data11 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v49;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v49 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__landmarkAssetCount;
          v23 = v50++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__landmarkAssetCount;
        goto LABEL_291;
      case 0xBu:
        v124 = 0;
        v125 = 0;
        v17 = 0;
        v5->_hasNaturalLandmarkAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v126 = [fromCopy position] + 1;
          if (v126 >= [fromCopy position] && (v127 = objc_msgSend(fromCopy, "position") + 1, v127 <= objc_msgSend(fromCopy, "length")))
          {
            data12 = [fromCopy data];
            [data12 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v124;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v124 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__naturalLandmarkAssetCount;
          v23 = v125++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__naturalLandmarkAssetCount;
        goto LABEL_291;
      case 0xCu:
        v34 = 0;
        v35 = 0;
        v17 = 0;
        v5->_hasMediaAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v36 = [fromCopy position] + 1;
          if (v36 >= [fromCopy position] && (v37 = objc_msgSend(fromCopy, "position") + 1, v37 <= objc_msgSend(fromCopy, "length")))
          {
            data13 = [fromCopy data];
            [data13 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v34;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v34 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__mediaAssetCount;
          v23 = v35++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__mediaAssetCount;
        goto LABEL_291;
      case 0xDu:
        v44 = 0;
        v45 = 0;
        v17 = 0;
        v5->_hasBookAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v46 = [fromCopy position] + 1;
          if (v46 >= [fromCopy position] && (v47 = objc_msgSend(fromCopy, "position") + 1, v47 <= objc_msgSend(fromCopy, "length")))
          {
            data14 = [fromCopy data];
            [data14 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v44;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v44 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__bookAssetCount;
          v23 = v45++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__bookAssetCount;
        goto LABEL_291;
      case 0xEu:
        v109 = 0;
        v110 = 0;
        v17 = 0;
        v5->_hasAlbumAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v111 = [fromCopy position] + 1;
          if (v111 >= [fromCopy position] && (v112 = objc_msgSend(fromCopy, "position") + 1, v112 <= objc_msgSend(fromCopy, "length")))
          {
            data15 = [fromCopy data];
            [data15 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v109;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v109 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__albumAssetCount;
          v23 = v110++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__albumAssetCount;
        goto LABEL_291;
      case 0xFu:
        v29 = 0;
        v30 = 0;
        v17 = 0;
        v5->_hasCatsAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v31 = [fromCopy position] + 1;
          if (v31 >= [fromCopy position] && (v32 = objc_msgSend(fromCopy, "position") + 1, v32 <= objc_msgSend(fromCopy, "length")))
          {
            data16 = [fromCopy data];
            [data16 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v29;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v29 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__catsAssetCount;
          v23 = v30++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__catsAssetCount;
        goto LABEL_291;
      case 0x10u:
        v69 = 0;
        v70 = 0;
        v17 = 0;
        v5->_hasDogsAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v71 = [fromCopy position] + 1;
          if (v71 >= [fromCopy position] && (v72 = objc_msgSend(fromCopy, "position") + 1, v72 <= objc_msgSend(fromCopy, "length")))
          {
            data17 = [fromCopy data];
            [data17 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v69;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v69 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__dogsAssetCount;
          v23 = v70++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__dogsAssetCount;
        goto LABEL_291;
      case 0x11u:
        v24 = 0;
        v25 = 0;
        v17 = 0;
        v5->_hasApparelAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v26 = [fromCopy position] + 1;
          if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
          {
            data18 = [fromCopy data];
            [data18 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v24;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v24 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__apparelAssetCount;
          v23 = v25++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__apparelAssetCount;
        goto LABEL_291;
      case 0x12u:
        v89 = 0;
        v90 = 0;
        v17 = 0;
        v5->_hasFoodAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v91 = [fromCopy position] + 1;
          if (v91 >= [fromCopy position] && (v92 = objc_msgSend(fromCopy, "position") + 1, v92 <= objc_msgSend(fromCopy, "length")))
          {
            data19 = [fromCopy data];
            [data19 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v89;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v89 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__foodAssetCount;
          v23 = v90++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__foodAssetCount;
        goto LABEL_291;
      case 0x13u:
        v119 = 0;
        v120 = 0;
        v17 = 0;
        v5->_hasStorefrontAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v121 = [fromCopy position] + 1;
          if (v121 >= [fromCopy position] && (v122 = objc_msgSend(fromCopy, "position") + 1, v122 <= objc_msgSend(fromCopy, "length")))
          {
            data20 = [fromCopy data];
            [data20 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v119;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v119 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__storefrontAssetCount;
          v23 = v120++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__storefrontAssetCount;
        goto LABEL_291;
      case 0x14u:
        v139 = 0;
        v140 = 0;
        v17 = 0;
        v5->_hasSignSymbolAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v141 = [fromCopy position] + 1;
          if (v141 >= [fromCopy position] && (v142 = objc_msgSend(fromCopy, "position") + 1, v142 <= objc_msgSend(fromCopy, "length")))
          {
            data21 = [fromCopy data];
            [data21 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v139;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v139 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__signSymbolAssetCount;
          v23 = v140++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__signSymbolAssetCount;
        goto LABEL_291;
      case 0x15u:
        v94 = 0;
        v95 = 0;
        v17 = 0;
        v5->_hasLaundryCareSymbolAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v96 = [fromCopy position] + 1;
          if (v96 >= [fromCopy position] && (v97 = objc_msgSend(fromCopy, "position") + 1, v97 <= objc_msgSend(fromCopy, "length")))
          {
            data22 = [fromCopy data];
            [data22 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v94;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v94 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__laundryCareSymbolAssetCount;
          v23 = v95++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__laundryCareSymbolAssetCount;
        goto LABEL_291;
      case 0x16u:
        v104 = 0;
        v105 = 0;
        v17 = 0;
        v5->_hasAutoSymbolAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v106 = [fromCopy position] + 1;
          if (v106 >= [fromCopy position] && (v107 = objc_msgSend(fromCopy, "position") + 1, v107 <= objc_msgSend(fromCopy, "length")))
          {
            data23 = [fromCopy data];
            [data23 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v104;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v104 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__autoSymbolAssetCount;
          v23 = v105++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__autoSymbolAssetCount;
        goto LABEL_291;
      case 0x17u:
        v134 = 0;
        v135 = 0;
        v17 = 0;
        v5->_hasBrandLogoSymbolAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v136 = [fromCopy position] + 1;
          if (v136 >= [fromCopy position] && (v137 = objc_msgSend(fromCopy, "position") + 1, v137 <= objc_msgSend(fromCopy, "length")))
          {
            data24 = [fromCopy data];
            [data24 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v134;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v134 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__brandLogoSymbolAssetCount;
          v23 = v135++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__brandLogoSymbolAssetCount;
        goto LABEL_291;
      case 0x18u:
        v144 = 0;
        v145 = 0;
        v17 = 0;
        v5->_hasObject2DAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v146 = [fromCopy position] + 1;
          if (v146 >= [fromCopy position] && (v147 = objc_msgSend(fromCopy, "position") + 1, v147 <= objc_msgSend(fromCopy, "length")))
          {
            data25 = [fromCopy data];
            [data25 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v144;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v144 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__object2DAssetCount;
          v23 = v145++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__object2DAssetCount;
        goto LABEL_291;
      case 0x19u:
        v59 = 0;
        v60 = 0;
        v17 = 0;
        v5->_hasBarcodeDetectionAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v61 = [fromCopy position] + 1;
          if (v61 >= [fromCopy position] && (v62 = objc_msgSend(fromCopy, "position") + 1, v62 <= objc_msgSend(fromCopy, "length")))
          {
            data26 = [fromCopy data];
            [data26 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v59;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v59 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__barcodeDetectionAssetCount;
          v23 = v60++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__barcodeDetectionAssetCount;
        goto LABEL_291;
      case 0x1Au:
        v54 = 0;
        v55 = 0;
        v17 = 0;
        v5->_hasSculptureAssetCount = 1;
        while (1)
        {
          v157 = 0;
          v56 = [fromCopy position] + 1;
          if (v56 >= [fromCopy position] && (v57 = objc_msgSend(fromCopy, "position") + 1, v57 <= objc_msgSend(fromCopy, "length")))
          {
            data27 = [fromCopy data];
            [data27 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v157 & 0x7F) << v54;
          if ((v157 & 0x80) == 0)
          {
            break;
          }

          v21 = 0;
          v54 += 7;
          v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__sculptureAssetCount;
          v23 = v55++ > 8;
          if (v23)
          {
            goto LABEL_294;
          }
        }

        v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__sculptureAssetCount;
        goto LABEL_291;
      case 0x1Bu:
        v149 = 0;
        v150 = 0;
        v17 = 0;
        v5->_hasSkylineAssetCount = 1;
        break;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_296;
        }

        continue;
    }

    while (1)
    {
      v157 = 0;
      v151 = [fromCopy position] + 1;
      if (v151 >= [fromCopy position] && (v152 = objc_msgSend(fromCopy, "position") + 1, v152 <= objc_msgSend(fromCopy, "length")))
      {
        data28 = [fromCopy data];
        [data28 getBytes:&v157 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v17 |= (v157 & 0x7F) << v149;
      if ((v157 & 0x80) == 0)
      {
        break;
      }

      v21 = 0;
      v149 += 7;
      v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__skylineAssetCount;
      v23 = v150++ > 8;
      if (v23)
      {
        goto LABEL_294;
      }
    }

    v22 = &OBJC_IVAR___BMPerBatchDomainSpecificAssetCounts__skylineAssetCount;
LABEL_291:
    if ([fromCopy hasError])
    {
      v21 = 0;
    }

    else
    {
      v21 = v17;
    }

LABEL_294:
    *(&v5->super.super.isa + *v22) = v21;
  }

  if (([fromCopy hasError] & 1) == 0)
  {
    goto LABEL_297;
  }

LABEL_296:
  v154 = 0;
LABEL_298:

  return v154;
}

- (NSString)description
{
  v19 = objc_alloc(MEMORY[0x1E696AEC0]);
  v32 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts parsedAssetCount](self, "parsedAssetCount")}];
  v31 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts anyDomainAssetCount](self, "anyDomainAssetCount")}];
  v30 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts artAssetCount](self, "artAssetCount")}];
  v29 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts natureAssetCount](self, "natureAssetCount")}];
  v28 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts animalsAssetCount](self, "animalsAssetCount")}];
  v27 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts birdsAssetCount](self, "birdsAssetCount")}];
  v26 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts insectsAssetCount](self, "insectsAssetCount")}];
  v25 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts reptilesAssetCount](self, "reptilesAssetCount")}];
  v24 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts mammalsAssetCount](self, "mammalsAssetCount")}];
  v23 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts landmarkAssetCount](self, "landmarkAssetCount")}];
  v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts naturalLandmarkAssetCount](self, "naturalLandmarkAssetCount")}];
  v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts mediaAssetCount](self, "mediaAssetCount")}];
  v18 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts bookAssetCount](self, "bookAssetCount")}];
  v17 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts albumAssetCount](self, "albumAssetCount")}];
  v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts catsAssetCount](self, "catsAssetCount")}];
  v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts dogsAssetCount](self, "dogsAssetCount")}];
  v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts apparelAssetCount](self, "apparelAssetCount")}];
  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts foodAssetCount](self, "foodAssetCount")}];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts storefrontAssetCount](self, "storefrontAssetCount")}];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts signSymbolAssetCount](self, "signSymbolAssetCount")}];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts laundryCareSymbolAssetCount](self, "laundryCareSymbolAssetCount")}];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts autoSymbolAssetCount](self, "autoSymbolAssetCount")}];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts brandLogoSymbolAssetCount](self, "brandLogoSymbolAssetCount")}];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts object2DAssetCount](self, "object2DAssetCount")}];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts barcodeDetectionAssetCount](self, "barcodeDetectionAssetCount")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts sculptureAssetCount](self, "sculptureAssetCount")}];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPerBatchDomainSpecificAssetCounts skylineAssetCount](self, "skylineAssetCount")}];
  v20 = [v19 initWithFormat:@"BMPerBatchDomainSpecificAssetCounts with parsedAssetCount: %@, anyDomainAssetCount: %@, artAssetCount: %@, natureAssetCount: %@, animalsAssetCount: %@, birdsAssetCount: %@, insectsAssetCount: %@, reptilesAssetCount: %@, mammalsAssetCount: %@, landmarkAssetCount: %@, naturalLandmarkAssetCount: %@, mediaAssetCount: %@, bookAssetCount: %@, albumAssetCount: %@, catsAssetCount: %@, dogsAssetCount: %@, apparelAssetCount: %@, foodAssetCount: %@, storefrontAssetCount: %@, signSymbolAssetCount: %@, laundryCareSymbolAssetCount: %@, autoSymbolAssetCount: %@, brandLogoSymbolAssetCount: %@, object2DAssetCount: %@, barcodeDetectionAssetCount: %@, sculptureAssetCount: %@, skylineAssetCount: %@", v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v18, v17, v16, v15, v14, v13, v12, v11, v10, v9, v8, v3, v4, v5, v6];

  return v20;
}

- (BMPerBatchDomainSpecificAssetCounts)initWithParsedAssetCount:(id)count anyDomainAssetCount:(id)assetCount artAssetCount:(id)artAssetCount natureAssetCount:(id)natureAssetCount animalsAssetCount:(id)animalsAssetCount birdsAssetCount:(id)birdsAssetCount insectsAssetCount:(id)insectsAssetCount reptilesAssetCount:(id)self0 mammalsAssetCount:(id)self1 landmarkAssetCount:(id)self2 naturalLandmarkAssetCount:(id)self3 mediaAssetCount:(id)self4 bookAssetCount:(id)self5 albumAssetCount:(id)self6 catsAssetCount:(id)self7 dogsAssetCount:(id)self8 apparelAssetCount:(id)self9 foodAssetCount:(id)foodAssetCount storefrontAssetCount:(id)storefrontAssetCount signSymbolAssetCount:(id)symbolAssetCount laundryCareSymbolAssetCount:(id)careSymbolAssetCount autoSymbolAssetCount:(id)autoSymbolAssetCount brandLogoSymbolAssetCount:(id)logoSymbolAssetCount object2DAssetCount:(id)dAssetCount barcodeDetectionAssetCount:(id)detectionAssetCount sculptureAssetCount:(id)sculptureAssetCount skylineAssetCount:(id)skylineAssetCount
{
  countCopy = count;
  assetCountCopy = assetCount;
  artAssetCountCopy = artAssetCount;
  natureAssetCountCopy = natureAssetCount;
  animalsAssetCountCopy = animalsAssetCount;
  birdsAssetCountCopy = birdsAssetCount;
  insectsAssetCountCopy = insectsAssetCount;
  reptilesAssetCountCopy = reptilesAssetCount;
  mammalsAssetCountCopy = mammalsAssetCount;
  landmarkAssetCountCopy = landmarkAssetCount;
  naturalLandmarkAssetCountCopy = naturalLandmarkAssetCount;
  mediaAssetCountCopy = mediaAssetCount;
  bookAssetCountCopy = bookAssetCount;
  albumAssetCountCopy = albumAssetCount;
  catsAssetCountCopy = catsAssetCount;
  dogsAssetCountCopy = dogsAssetCount;
  apparelAssetCountCopy = apparelAssetCount;
  foodAssetCountCopy = foodAssetCount;
  storefrontAssetCountCopy = storefrontAssetCount;
  symbolAssetCountCopy = symbolAssetCount;
  careSymbolAssetCountCopy = careSymbolAssetCount;
  autoSymbolAssetCountCopy = autoSymbolAssetCount;
  logoSymbolAssetCountCopy = logoSymbolAssetCount;
  dAssetCountCopy = dAssetCount;
  detectionAssetCountCopy = detectionAssetCount;
  sculptureAssetCountCopy = sculptureAssetCount;
  skylineAssetCountCopy = skylineAssetCount;
  v91.receiver = self;
  v91.super_class = BMPerBatchDomainSpecificAssetCounts;
  v43 = [(BMEventBase *)&v91 init];
  if (v43)
  {
    v43->_dataVersion = [objc_opt_class() latestDataVersion];
    if (countCopy)
    {
      v43->_hasParsedAssetCount = 1;
      intValue = [countCopy intValue];
    }

    else
    {
      v43->_hasParsedAssetCount = 0;
      intValue = -1;
    }

    v43->_parsedAssetCount = intValue;
    if (assetCountCopy)
    {
      v43->_hasAnyDomainAssetCount = 1;
      intValue2 = [assetCountCopy intValue];
    }

    else
    {
      v43->_hasAnyDomainAssetCount = 0;
      intValue2 = -1;
    }

    v43->_anyDomainAssetCount = intValue2;
    if (artAssetCountCopy)
    {
      v43->_hasArtAssetCount = 1;
      intValue3 = [artAssetCountCopy intValue];
    }

    else
    {
      v43->_hasArtAssetCount = 0;
      intValue3 = -1;
    }

    v43->_artAssetCount = intValue3;
    if (natureAssetCountCopy)
    {
      v43->_hasNatureAssetCount = 1;
      intValue4 = [natureAssetCountCopy intValue];
    }

    else
    {
      v43->_hasNatureAssetCount = 0;
      intValue4 = -1;
    }

    v43->_natureAssetCount = intValue4;
    if (animalsAssetCountCopy)
    {
      v43->_hasAnimalsAssetCount = 1;
      intValue5 = [animalsAssetCountCopy intValue];
    }

    else
    {
      v43->_hasAnimalsAssetCount = 0;
      intValue5 = -1;
    }

    v43->_animalsAssetCount = intValue5;
    if (birdsAssetCountCopy)
    {
      v43->_hasBirdsAssetCount = 1;
      intValue6 = [birdsAssetCountCopy intValue];
    }

    else
    {
      v43->_hasBirdsAssetCount = 0;
      intValue6 = -1;
    }

    v43->_birdsAssetCount = intValue6;
    if (insectsAssetCountCopy)
    {
      v43->_hasInsectsAssetCount = 1;
      intValue7 = [insectsAssetCountCopy intValue];
    }

    else
    {
      v43->_hasInsectsAssetCount = 0;
      intValue7 = -1;
    }

    v43->_insectsAssetCount = intValue7;
    if (reptilesAssetCountCopy)
    {
      v43->_hasReptilesAssetCount = 1;
      intValue8 = [reptilesAssetCountCopy intValue];
    }

    else
    {
      v43->_hasReptilesAssetCount = 0;
      intValue8 = -1;
    }

    v43->_reptilesAssetCount = intValue8;
    if (mammalsAssetCountCopy)
    {
      v43->_hasMammalsAssetCount = 1;
      intValue9 = [mammalsAssetCountCopy intValue];
    }

    else
    {
      v43->_hasMammalsAssetCount = 0;
      intValue9 = -1;
    }

    v43->_mammalsAssetCount = intValue9;
    if (landmarkAssetCountCopy)
    {
      v43->_hasLandmarkAssetCount = 1;
      intValue10 = [landmarkAssetCountCopy intValue];
    }

    else
    {
      v43->_hasLandmarkAssetCount = 0;
      intValue10 = -1;
    }

    v43->_landmarkAssetCount = intValue10;
    if (naturalLandmarkAssetCountCopy)
    {
      v43->_hasNaturalLandmarkAssetCount = 1;
      intValue11 = [naturalLandmarkAssetCountCopy intValue];
    }

    else
    {
      v43->_hasNaturalLandmarkAssetCount = 0;
      intValue11 = -1;
    }

    v43->_naturalLandmarkAssetCount = intValue11;
    if (mediaAssetCountCopy)
    {
      v43->_hasMediaAssetCount = 1;
      intValue12 = [mediaAssetCountCopy intValue];
    }

    else
    {
      v43->_hasMediaAssetCount = 0;
      intValue12 = -1;
    }

    v43->_mediaAssetCount = intValue12;
    if (bookAssetCountCopy)
    {
      v43->_hasBookAssetCount = 1;
      intValue13 = [bookAssetCountCopy intValue];
    }

    else
    {
      v43->_hasBookAssetCount = 0;
      intValue13 = -1;
    }

    v43->_bookAssetCount = intValue13;
    if (albumAssetCountCopy)
    {
      v43->_hasAlbumAssetCount = 1;
      intValue14 = [albumAssetCountCopy intValue];
    }

    else
    {
      v43->_hasAlbumAssetCount = 0;
      intValue14 = -1;
    }

    v43->_albumAssetCount = intValue14;
    if (catsAssetCountCopy)
    {
      v43->_hasCatsAssetCount = 1;
      intValue15 = [catsAssetCountCopy intValue];
    }

    else
    {
      v43->_hasCatsAssetCount = 0;
      intValue15 = -1;
    }

    v43->_catsAssetCount = intValue15;
    if (dogsAssetCountCopy)
    {
      v43->_hasDogsAssetCount = 1;
      intValue16 = [dogsAssetCountCopy intValue];
    }

    else
    {
      v43->_hasDogsAssetCount = 0;
      intValue16 = -1;
    }

    v43->_dogsAssetCount = intValue16;
    if (apparelAssetCountCopy)
    {
      v43->_hasApparelAssetCount = 1;
      intValue17 = [apparelAssetCountCopy intValue];
    }

    else
    {
      v43->_hasApparelAssetCount = 0;
      intValue17 = -1;
    }

    v43->_apparelAssetCount = intValue17;
    if (foodAssetCountCopy)
    {
      v43->_hasFoodAssetCount = 1;
      intValue18 = [foodAssetCountCopy intValue];
    }

    else
    {
      v43->_hasFoodAssetCount = 0;
      intValue18 = -1;
    }

    v43->_foodAssetCount = intValue18;
    if (storefrontAssetCountCopy)
    {
      v43->_hasStorefrontAssetCount = 1;
      intValue19 = [storefrontAssetCountCopy intValue];
    }

    else
    {
      v43->_hasStorefrontAssetCount = 0;
      intValue19 = -1;
    }

    v43->_storefrontAssetCount = intValue19;
    if (symbolAssetCountCopy)
    {
      v43->_hasSignSymbolAssetCount = 1;
      intValue20 = [symbolAssetCountCopy intValue];
    }

    else
    {
      v43->_hasSignSymbolAssetCount = 0;
      intValue20 = -1;
    }

    v43->_signSymbolAssetCount = intValue20;
    if (careSymbolAssetCountCopy)
    {
      v43->_hasLaundryCareSymbolAssetCount = 1;
      intValue21 = [careSymbolAssetCountCopy intValue];
    }

    else
    {
      v43->_hasLaundryCareSymbolAssetCount = 0;
      intValue21 = -1;
    }

    v43->_laundryCareSymbolAssetCount = intValue21;
    if (autoSymbolAssetCountCopy)
    {
      v43->_hasAutoSymbolAssetCount = 1;
      intValue22 = [autoSymbolAssetCountCopy intValue];
    }

    else
    {
      v43->_hasAutoSymbolAssetCount = 0;
      intValue22 = -1;
    }

    v43->_autoSymbolAssetCount = intValue22;
    if (logoSymbolAssetCountCopy)
    {
      v43->_hasBrandLogoSymbolAssetCount = 1;
      intValue23 = [logoSymbolAssetCountCopy intValue];
    }

    else
    {
      v43->_hasBrandLogoSymbolAssetCount = 0;
      intValue23 = -1;
    }

    v43->_brandLogoSymbolAssetCount = intValue23;
    if (dAssetCountCopy)
    {
      v43->_hasObject2DAssetCount = 1;
      intValue24 = [dAssetCountCopy intValue];
    }

    else
    {
      v43->_hasObject2DAssetCount = 0;
      intValue24 = -1;
    }

    v43->_object2DAssetCount = intValue24;
    if (detectionAssetCountCopy)
    {
      v43->_hasBarcodeDetectionAssetCount = 1;
      intValue25 = [detectionAssetCountCopy intValue];
    }

    else
    {
      v43->_hasBarcodeDetectionAssetCount = 0;
      intValue25 = -1;
    }

    v43->_barcodeDetectionAssetCount = intValue25;
    if (sculptureAssetCountCopy)
    {
      v43->_hasSculptureAssetCount = 1;
      intValue26 = [sculptureAssetCountCopy intValue];
    }

    else
    {
      v43->_hasSculptureAssetCount = 0;
      intValue26 = -1;
    }

    v43->_sculptureAssetCount = intValue26;
    if (skylineAssetCountCopy)
    {
      v43->_hasSkylineAssetCount = 1;
      intValue27 = [skylineAssetCountCopy intValue];
    }

    else
    {
      v43->_hasSkylineAssetCount = 0;
      intValue27 = -1;
    }

    v43->_skylineAssetCount = intValue27;
  }

  return v43;
}

+ (id)protoFields
{
  v31[27] = *MEMORY[0x1E69E9840];
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"parsedAssetCount" number:1 type:2 subMessageClass:0];
  v31[0] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"anyDomainAssetCount" number:2 type:2 subMessageClass:0];
  v31[1] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"artAssetCount" number:3 type:2 subMessageClass:0];
  v31[2] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"natureAssetCount" number:4 type:2 subMessageClass:0];
  v31[3] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"animalsAssetCount" number:5 type:2 subMessageClass:0];
  v31[4] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"birdsAssetCount" number:6 type:2 subMessageClass:0];
  v31[5] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"insectsAssetCount" number:7 type:2 subMessageClass:0];
  v31[6] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"reptilesAssetCount" number:8 type:2 subMessageClass:0];
  v31[7] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mammalsAssetCount" number:9 type:2 subMessageClass:0];
  v31[8] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"landmarkAssetCount" number:10 type:2 subMessageClass:0];
  v31[9] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"naturalLandmarkAssetCount" number:11 type:2 subMessageClass:0];
  v31[10] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mediaAssetCount" number:12 type:2 subMessageClass:0];
  v31[11] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bookAssetCount" number:13 type:2 subMessageClass:0];
  v31[12] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"albumAssetCount" number:14 type:2 subMessageClass:0];
  v31[13] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"catsAssetCount" number:15 type:2 subMessageClass:0];
  v31[14] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dogsAssetCount" number:16 type:2 subMessageClass:0];
  v31[15] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"apparelAssetCount" number:17 type:2 subMessageClass:0];
  v31[16] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"foodAssetCount" number:18 type:2 subMessageClass:0];
  v31[17] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"storefrontAssetCount" number:19 type:2 subMessageClass:0];
  v31[18] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"signSymbolAssetCount" number:20 type:2 subMessageClass:0];
  v31[19] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"laundryCareSymbolAssetCount" number:21 type:2 subMessageClass:0];
  v31[20] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"autoSymbolAssetCount" number:22 type:2 subMessageClass:0];
  v31[21] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brandLogoSymbolAssetCount" number:23 type:2 subMessageClass:0];
  v31[22] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"object2DAssetCount" number:24 type:2 subMessageClass:0];
  v31[23] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"barcodeDetectionAssetCount" number:25 type:2 subMessageClass:0];
  v31[24] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sculptureAssetCount" number:26 type:2 subMessageClass:0];
  v31[25] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"skylineAssetCount" number:27 type:2 subMessageClass:0];
  v31[26] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:27];

  return v11;
}

+ (id)columns
{
  v31[27] = *MEMORY[0x1E69E9840];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"parsedAssetCount" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:2 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"anyDomainAssetCount" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:2 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"artAssetCount" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"natureAssetCount" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"animalsAssetCount" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:2 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"birdsAssetCount" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:2 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"insectsAssetCount" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:2 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"reptilesAssetCount" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:2 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mammalsAssetCount" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:2 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"landmarkAssetCount" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:2 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"naturalLandmarkAssetCount" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:2 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mediaAssetCount" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:2 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bookAssetCount" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:2 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"albumAssetCount" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:2 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"catsAssetCount" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:2 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dogsAssetCount" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:2 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"apparelAssetCount" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:2 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"foodAssetCount" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:2 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"storefrontAssetCount" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:2 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"signSymbolAssetCount" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:2 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"laundryCareSymbolAssetCount" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:2 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"autoSymbolAssetCount" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:2 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brandLogoSymbolAssetCount" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:2 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"object2DAssetCount" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:2 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"barcodeDetectionAssetCount" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:2 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sculptureAssetCount" dataType:0 requestOnly:0 fieldNumber:26 protoDataType:2 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"skylineAssetCount" dataType:0 requestOnly:0 fieldNumber:27 protoDataType:2 convertedType:0];
  v31[0] = v30;
  v31[1] = v29;
  v31[2] = v28;
  v31[3] = v27;
  v31[4] = v26;
  v31[5] = v25;
  v31[6] = v24;
  v31[7] = v23;
  v31[8] = v22;
  v31[9] = v21;
  v31[10] = v20;
  v31[11] = v19;
  v31[12] = v18;
  v31[13] = v17;
  v31[14] = v16;
  v31[15] = v15;
  v31[16] = v14;
  v31[17] = v2;
  v31[18] = v3;
  v31[19] = v4;
  v31[20] = v13;
  v31[21] = v5;
  v31[22] = v6;
  v31[23] = v7;
  v31[24] = v8;
  v31[25] = v12;
  v31[26] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:27];

  return v11;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMPerBatchDomainSpecificAssetCounts alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[11] = 0;
    }
  }

  return v4;
}

@end