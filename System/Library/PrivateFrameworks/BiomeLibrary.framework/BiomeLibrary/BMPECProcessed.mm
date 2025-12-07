@interface BMPECProcessed
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMPECProcessed)initWithArtAssetProcessedCount:(id)count natureAssetProcessedCount:(id)processedCount animalsAssetProcessedCount:(id)assetProcessedCount birdsAssetProcessedCount:(id)birdsAssetProcessedCount insectsAssetProcessedCount:(id)insectsAssetProcessedCount reptilesAssetProcessedCount:(id)reptilesAssetProcessedCount mammalsAssetProcessedCount:(id)mammalsAssetProcessedCount landmarkAssetProcessedCount:(id)self0 naturalLandmarkProcessedAssetCount:(id)self1 mediaAssetProcessedCount:(id)self2 bookAssetProcessedCount:(id)self3 albumAssetProcessedCount:(id)self4 catsAssetProcessedCount:(id)self5 dogsAssetProcessedCount:(id)self6 apparelAssetProcessedCount:(id)self7 foodAssetProcessedCount:(id)self8 storefrontAssetProcessedCount:(id)self9 signSymbolAssetProcessedCount:(id)symbolAssetProcessedCount laundryCareSymbolAssetProcessedCount:(id)careSymbolAssetProcessedCount autoSymbolAssetProcessedCount:(id)autoSymbolAssetProcessedCount brandLogoSymbolAssetProcessedCount:(id)logoSymbolAssetProcessedCount object2DAssetProcessedCount:(id)dAssetProcessedCount barcodeDetectionAssetProcessedCount:(id)detectionAssetProcessedCount sculptureAssetProcessedCount:(id)sculptureAssetProcessedCount skylineAssetProcessedCount:(id)skylineAssetProcessedCount artAssetSuccessesCount:(id)successesCount natureAssetSuccessesCount:(id)assetSuccessesCount animalsAssetSuccessesCount:(id)count0 birdsAssetSuccessesCount:(id)count1 insectsAssetSuccessesCount:(id)count2 reptilesAssetSuccessesCount:(id)count3 mammalsAssetSuccessesCount:(id)count4 landmarkAssetSuccessesCount:(id)count5 naturalLandmarkSuccessesAssetCount:(id)count6 mediaAssetSuccessesCount:(id)count7 bookAssetSuccessesCount:(id)count8 albumAssetSuccessesCount:(id)count9 catsAssetSuccessesCount:(id)processedCount0 dogsAssetSuccessesCount:(id)processedCount1 apparelAssetSuccessesCount:(id)processedCount2 foodAssetSuccessesCount:(id)processedCount3 storefrontAssetSuccessesCount:(id)processedCount4 signSymbolAssetSuccessesCount:(id)processedCount5 laundryCareSymbolAssetSuccessesCount:(id)processedCount6 autoSymbolAssetSuccessesCount:(id)processedCount7 brandLogoSymbolAssetSuccessesCount:(id)processedCount8 object2DAssetSuccessesCount:(id)processedCount9 barcodeDetectionAssetSuccessesCount:(id)assetProcessedCount0 sculptureAssetSuccessesCount:(id)assetProcessedCount1 skylineAssetSuccessesCount:(id)assetProcessedCount2;
- (BMPECProcessed)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMPECProcessed

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v56 = 0;
    goto LABEL_255;
  }

  v5 = equalCopy;
  if (-[BMPECProcessed hasArtAssetProcessedCount](self, "hasArtAssetProcessedCount") || [v5 hasArtAssetProcessedCount])
  {
    if (![(BMPECProcessed *)self hasArtAssetProcessedCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasArtAssetProcessedCount])
    {
      goto LABEL_252;
    }

    artAssetProcessedCount = [(BMPECProcessed *)self artAssetProcessedCount];
    if (artAssetProcessedCount != [v5 artAssetProcessedCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasNatureAssetProcessedCount](self, "hasNatureAssetProcessedCount") || [v5 hasNatureAssetProcessedCount])
  {
    if (![(BMPECProcessed *)self hasNatureAssetProcessedCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasNatureAssetProcessedCount])
    {
      goto LABEL_252;
    }

    natureAssetProcessedCount = [(BMPECProcessed *)self natureAssetProcessedCount];
    if (natureAssetProcessedCount != [v5 natureAssetProcessedCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasAnimalsAssetProcessedCount](self, "hasAnimalsAssetProcessedCount") || [v5 hasAnimalsAssetProcessedCount])
  {
    if (![(BMPECProcessed *)self hasAnimalsAssetProcessedCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasAnimalsAssetProcessedCount])
    {
      goto LABEL_252;
    }

    animalsAssetProcessedCount = [(BMPECProcessed *)self animalsAssetProcessedCount];
    if (animalsAssetProcessedCount != [v5 animalsAssetProcessedCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasBirdsAssetProcessedCount](self, "hasBirdsAssetProcessedCount") || [v5 hasBirdsAssetProcessedCount])
  {
    if (![(BMPECProcessed *)self hasBirdsAssetProcessedCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasBirdsAssetProcessedCount])
    {
      goto LABEL_252;
    }

    birdsAssetProcessedCount = [(BMPECProcessed *)self birdsAssetProcessedCount];
    if (birdsAssetProcessedCount != [v5 birdsAssetProcessedCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasInsectsAssetProcessedCount](self, "hasInsectsAssetProcessedCount") || [v5 hasInsectsAssetProcessedCount])
  {
    if (![(BMPECProcessed *)self hasInsectsAssetProcessedCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasInsectsAssetProcessedCount])
    {
      goto LABEL_252;
    }

    insectsAssetProcessedCount = [(BMPECProcessed *)self insectsAssetProcessedCount];
    if (insectsAssetProcessedCount != [v5 insectsAssetProcessedCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasReptilesAssetProcessedCount](self, "hasReptilesAssetProcessedCount") || [v5 hasReptilesAssetProcessedCount])
  {
    if (![(BMPECProcessed *)self hasReptilesAssetProcessedCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasReptilesAssetProcessedCount])
    {
      goto LABEL_252;
    }

    reptilesAssetProcessedCount = [(BMPECProcessed *)self reptilesAssetProcessedCount];
    if (reptilesAssetProcessedCount != [v5 reptilesAssetProcessedCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasMammalsAssetProcessedCount](self, "hasMammalsAssetProcessedCount") || [v5 hasMammalsAssetProcessedCount])
  {
    if (![(BMPECProcessed *)self hasMammalsAssetProcessedCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasMammalsAssetProcessedCount])
    {
      goto LABEL_252;
    }

    mammalsAssetProcessedCount = [(BMPECProcessed *)self mammalsAssetProcessedCount];
    if (mammalsAssetProcessedCount != [v5 mammalsAssetProcessedCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasLandmarkAssetProcessedCount](self, "hasLandmarkAssetProcessedCount") || [v5 hasLandmarkAssetProcessedCount])
  {
    if (![(BMPECProcessed *)self hasLandmarkAssetProcessedCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasLandmarkAssetProcessedCount])
    {
      goto LABEL_252;
    }

    landmarkAssetProcessedCount = [(BMPECProcessed *)self landmarkAssetProcessedCount];
    if (landmarkAssetProcessedCount != [v5 landmarkAssetProcessedCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasNaturalLandmarkProcessedAssetCount](self, "hasNaturalLandmarkProcessedAssetCount") || [v5 hasNaturalLandmarkProcessedAssetCount])
  {
    if (![(BMPECProcessed *)self hasNaturalLandmarkProcessedAssetCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasNaturalLandmarkProcessedAssetCount])
    {
      goto LABEL_252;
    }

    naturalLandmarkProcessedAssetCount = [(BMPECProcessed *)self naturalLandmarkProcessedAssetCount];
    if (naturalLandmarkProcessedAssetCount != [v5 naturalLandmarkProcessedAssetCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasMediaAssetProcessedCount](self, "hasMediaAssetProcessedCount") || [v5 hasMediaAssetProcessedCount])
  {
    if (![(BMPECProcessed *)self hasMediaAssetProcessedCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasMediaAssetProcessedCount])
    {
      goto LABEL_252;
    }

    mediaAssetProcessedCount = [(BMPECProcessed *)self mediaAssetProcessedCount];
    if (mediaAssetProcessedCount != [v5 mediaAssetProcessedCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasBookAssetProcessedCount](self, "hasBookAssetProcessedCount") || [v5 hasBookAssetProcessedCount])
  {
    if (![(BMPECProcessed *)self hasBookAssetProcessedCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasBookAssetProcessedCount])
    {
      goto LABEL_252;
    }

    bookAssetProcessedCount = [(BMPECProcessed *)self bookAssetProcessedCount];
    if (bookAssetProcessedCount != [v5 bookAssetProcessedCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasAlbumAssetProcessedCount](self, "hasAlbumAssetProcessedCount") || [v5 hasAlbumAssetProcessedCount])
  {
    if (![(BMPECProcessed *)self hasAlbumAssetProcessedCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasAlbumAssetProcessedCount])
    {
      goto LABEL_252;
    }

    albumAssetProcessedCount = [(BMPECProcessed *)self albumAssetProcessedCount];
    if (albumAssetProcessedCount != [v5 albumAssetProcessedCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasCatsAssetProcessedCount](self, "hasCatsAssetProcessedCount") || [v5 hasCatsAssetProcessedCount])
  {
    if (![(BMPECProcessed *)self hasCatsAssetProcessedCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasCatsAssetProcessedCount])
    {
      goto LABEL_252;
    }

    catsAssetProcessedCount = [(BMPECProcessed *)self catsAssetProcessedCount];
    if (catsAssetProcessedCount != [v5 catsAssetProcessedCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasDogsAssetProcessedCount](self, "hasDogsAssetProcessedCount") || [v5 hasDogsAssetProcessedCount])
  {
    if (![(BMPECProcessed *)self hasDogsAssetProcessedCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasDogsAssetProcessedCount])
    {
      goto LABEL_252;
    }

    dogsAssetProcessedCount = [(BMPECProcessed *)self dogsAssetProcessedCount];
    if (dogsAssetProcessedCount != [v5 dogsAssetProcessedCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasApparelAssetProcessedCount](self, "hasApparelAssetProcessedCount") || [v5 hasApparelAssetProcessedCount])
  {
    if (![(BMPECProcessed *)self hasApparelAssetProcessedCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasApparelAssetProcessedCount])
    {
      goto LABEL_252;
    }

    apparelAssetProcessedCount = [(BMPECProcessed *)self apparelAssetProcessedCount];
    if (apparelAssetProcessedCount != [v5 apparelAssetProcessedCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasFoodAssetProcessedCount](self, "hasFoodAssetProcessedCount") || [v5 hasFoodAssetProcessedCount])
  {
    if (![(BMPECProcessed *)self hasFoodAssetProcessedCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasFoodAssetProcessedCount])
    {
      goto LABEL_252;
    }

    foodAssetProcessedCount = [(BMPECProcessed *)self foodAssetProcessedCount];
    if (foodAssetProcessedCount != [v5 foodAssetProcessedCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasStorefrontAssetProcessedCount](self, "hasStorefrontAssetProcessedCount") || [v5 hasStorefrontAssetProcessedCount])
  {
    if (![(BMPECProcessed *)self hasStorefrontAssetProcessedCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasStorefrontAssetProcessedCount])
    {
      goto LABEL_252;
    }

    storefrontAssetProcessedCount = [(BMPECProcessed *)self storefrontAssetProcessedCount];
    if (storefrontAssetProcessedCount != [v5 storefrontAssetProcessedCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasSignSymbolAssetProcessedCount](self, "hasSignSymbolAssetProcessedCount") || [v5 hasSignSymbolAssetProcessedCount])
  {
    if (![(BMPECProcessed *)self hasSignSymbolAssetProcessedCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasSignSymbolAssetProcessedCount])
    {
      goto LABEL_252;
    }

    signSymbolAssetProcessedCount = [(BMPECProcessed *)self signSymbolAssetProcessedCount];
    if (signSymbolAssetProcessedCount != [v5 signSymbolAssetProcessedCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasLaundryCareSymbolAssetProcessedCount](self, "hasLaundryCareSymbolAssetProcessedCount") || [v5 hasLaundryCareSymbolAssetProcessedCount])
  {
    if (![(BMPECProcessed *)self hasLaundryCareSymbolAssetProcessedCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasLaundryCareSymbolAssetProcessedCount])
    {
      goto LABEL_252;
    }

    laundryCareSymbolAssetProcessedCount = [(BMPECProcessed *)self laundryCareSymbolAssetProcessedCount];
    if (laundryCareSymbolAssetProcessedCount != [v5 laundryCareSymbolAssetProcessedCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasAutoSymbolAssetProcessedCount](self, "hasAutoSymbolAssetProcessedCount") || [v5 hasAutoSymbolAssetProcessedCount])
  {
    if (![(BMPECProcessed *)self hasAutoSymbolAssetProcessedCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasAutoSymbolAssetProcessedCount])
    {
      goto LABEL_252;
    }

    autoSymbolAssetProcessedCount = [(BMPECProcessed *)self autoSymbolAssetProcessedCount];
    if (autoSymbolAssetProcessedCount != [v5 autoSymbolAssetProcessedCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasBrandLogoSymbolAssetProcessedCount](self, "hasBrandLogoSymbolAssetProcessedCount") || [v5 hasBrandLogoSymbolAssetProcessedCount])
  {
    if (![(BMPECProcessed *)self hasBrandLogoSymbolAssetProcessedCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasBrandLogoSymbolAssetProcessedCount])
    {
      goto LABEL_252;
    }

    brandLogoSymbolAssetProcessedCount = [(BMPECProcessed *)self brandLogoSymbolAssetProcessedCount];
    if (brandLogoSymbolAssetProcessedCount != [v5 brandLogoSymbolAssetProcessedCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasObject2DAssetProcessedCount](self, "hasObject2DAssetProcessedCount") || [v5 hasObject2DAssetProcessedCount])
  {
    if (![(BMPECProcessed *)self hasObject2DAssetProcessedCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasObject2DAssetProcessedCount])
    {
      goto LABEL_252;
    }

    object2DAssetProcessedCount = [(BMPECProcessed *)self object2DAssetProcessedCount];
    if (object2DAssetProcessedCount != [v5 object2DAssetProcessedCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasBarcodeDetectionAssetProcessedCount](self, "hasBarcodeDetectionAssetProcessedCount") || [v5 hasBarcodeDetectionAssetProcessedCount])
  {
    if (![(BMPECProcessed *)self hasBarcodeDetectionAssetProcessedCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasBarcodeDetectionAssetProcessedCount])
    {
      goto LABEL_252;
    }

    barcodeDetectionAssetProcessedCount = [(BMPECProcessed *)self barcodeDetectionAssetProcessedCount];
    if (barcodeDetectionAssetProcessedCount != [v5 barcodeDetectionAssetProcessedCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasSculptureAssetProcessedCount](self, "hasSculptureAssetProcessedCount") || [v5 hasSculptureAssetProcessedCount])
  {
    if (![(BMPECProcessed *)self hasSculptureAssetProcessedCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasSculptureAssetProcessedCount])
    {
      goto LABEL_252;
    }

    sculptureAssetProcessedCount = [(BMPECProcessed *)self sculptureAssetProcessedCount];
    if (sculptureAssetProcessedCount != [v5 sculptureAssetProcessedCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasSkylineAssetProcessedCount](self, "hasSkylineAssetProcessedCount") || [v5 hasSkylineAssetProcessedCount])
  {
    if (![(BMPECProcessed *)self hasSkylineAssetProcessedCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasSkylineAssetProcessedCount])
    {
      goto LABEL_252;
    }

    skylineAssetProcessedCount = [(BMPECProcessed *)self skylineAssetProcessedCount];
    if (skylineAssetProcessedCount != [v5 skylineAssetProcessedCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasArtAssetSuccessesCount](self, "hasArtAssetSuccessesCount") || [v5 hasArtAssetSuccessesCount])
  {
    if (![(BMPECProcessed *)self hasArtAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasArtAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    artAssetSuccessesCount = [(BMPECProcessed *)self artAssetSuccessesCount];
    if (artAssetSuccessesCount != [v5 artAssetSuccessesCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasNatureAssetSuccessesCount](self, "hasNatureAssetSuccessesCount") || [v5 hasNatureAssetSuccessesCount])
  {
    if (![(BMPECProcessed *)self hasNatureAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasNatureAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    natureAssetSuccessesCount = [(BMPECProcessed *)self natureAssetSuccessesCount];
    if (natureAssetSuccessesCount != [v5 natureAssetSuccessesCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasAnimalsAssetSuccessesCount](self, "hasAnimalsAssetSuccessesCount") || [v5 hasAnimalsAssetSuccessesCount])
  {
    if (![(BMPECProcessed *)self hasAnimalsAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasAnimalsAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    animalsAssetSuccessesCount = [(BMPECProcessed *)self animalsAssetSuccessesCount];
    if (animalsAssetSuccessesCount != [v5 animalsAssetSuccessesCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasBirdsAssetSuccessesCount](self, "hasBirdsAssetSuccessesCount") || [v5 hasBirdsAssetSuccessesCount])
  {
    if (![(BMPECProcessed *)self hasBirdsAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasBirdsAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    birdsAssetSuccessesCount = [(BMPECProcessed *)self birdsAssetSuccessesCount];
    if (birdsAssetSuccessesCount != [v5 birdsAssetSuccessesCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasInsectsAssetSuccessesCount](self, "hasInsectsAssetSuccessesCount") || [v5 hasInsectsAssetSuccessesCount])
  {
    if (![(BMPECProcessed *)self hasInsectsAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasInsectsAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    insectsAssetSuccessesCount = [(BMPECProcessed *)self insectsAssetSuccessesCount];
    if (insectsAssetSuccessesCount != [v5 insectsAssetSuccessesCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasReptilesAssetSuccessesCount](self, "hasReptilesAssetSuccessesCount") || [v5 hasReptilesAssetSuccessesCount])
  {
    if (![(BMPECProcessed *)self hasReptilesAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasReptilesAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    reptilesAssetSuccessesCount = [(BMPECProcessed *)self reptilesAssetSuccessesCount];
    if (reptilesAssetSuccessesCount != [v5 reptilesAssetSuccessesCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasMammalsAssetSuccessesCount](self, "hasMammalsAssetSuccessesCount") || [v5 hasMammalsAssetSuccessesCount])
  {
    if (![(BMPECProcessed *)self hasMammalsAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasMammalsAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    mammalsAssetSuccessesCount = [(BMPECProcessed *)self mammalsAssetSuccessesCount];
    if (mammalsAssetSuccessesCount != [v5 mammalsAssetSuccessesCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasLandmarkAssetSuccessesCount](self, "hasLandmarkAssetSuccessesCount") || [v5 hasLandmarkAssetSuccessesCount])
  {
    if (![(BMPECProcessed *)self hasLandmarkAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasLandmarkAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    landmarkAssetSuccessesCount = [(BMPECProcessed *)self landmarkAssetSuccessesCount];
    if (landmarkAssetSuccessesCount != [v5 landmarkAssetSuccessesCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasNaturalLandmarkSuccessesAssetCount](self, "hasNaturalLandmarkSuccessesAssetCount") || [v5 hasNaturalLandmarkSuccessesAssetCount])
  {
    if (![(BMPECProcessed *)self hasNaturalLandmarkSuccessesAssetCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasNaturalLandmarkSuccessesAssetCount])
    {
      goto LABEL_252;
    }

    naturalLandmarkSuccessesAssetCount = [(BMPECProcessed *)self naturalLandmarkSuccessesAssetCount];
    if (naturalLandmarkSuccessesAssetCount != [v5 naturalLandmarkSuccessesAssetCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasMediaAssetSuccessesCount](self, "hasMediaAssetSuccessesCount") || [v5 hasMediaAssetSuccessesCount])
  {
    if (![(BMPECProcessed *)self hasMediaAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasMediaAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    mediaAssetSuccessesCount = [(BMPECProcessed *)self mediaAssetSuccessesCount];
    if (mediaAssetSuccessesCount != [v5 mediaAssetSuccessesCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasBookAssetSuccessesCount](self, "hasBookAssetSuccessesCount") || [v5 hasBookAssetSuccessesCount])
  {
    if (![(BMPECProcessed *)self hasBookAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasBookAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    bookAssetSuccessesCount = [(BMPECProcessed *)self bookAssetSuccessesCount];
    if (bookAssetSuccessesCount != [v5 bookAssetSuccessesCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasAlbumAssetSuccessesCount](self, "hasAlbumAssetSuccessesCount") || [v5 hasAlbumAssetSuccessesCount])
  {
    if (![(BMPECProcessed *)self hasAlbumAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasAlbumAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    albumAssetSuccessesCount = [(BMPECProcessed *)self albumAssetSuccessesCount];
    if (albumAssetSuccessesCount != [v5 albumAssetSuccessesCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasCatsAssetSuccessesCount](self, "hasCatsAssetSuccessesCount") || [v5 hasCatsAssetSuccessesCount])
  {
    if (![(BMPECProcessed *)self hasCatsAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasCatsAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    catsAssetSuccessesCount = [(BMPECProcessed *)self catsAssetSuccessesCount];
    if (catsAssetSuccessesCount != [v5 catsAssetSuccessesCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasDogsAssetSuccessesCount](self, "hasDogsAssetSuccessesCount") || [v5 hasDogsAssetSuccessesCount])
  {
    if (![(BMPECProcessed *)self hasDogsAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasDogsAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    dogsAssetSuccessesCount = [(BMPECProcessed *)self dogsAssetSuccessesCount];
    if (dogsAssetSuccessesCount != [v5 dogsAssetSuccessesCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasApparelAssetSuccessesCount](self, "hasApparelAssetSuccessesCount") || [v5 hasApparelAssetSuccessesCount])
  {
    if (![(BMPECProcessed *)self hasApparelAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasApparelAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    apparelAssetSuccessesCount = [(BMPECProcessed *)self apparelAssetSuccessesCount];
    if (apparelAssetSuccessesCount != [v5 apparelAssetSuccessesCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasFoodAssetSuccessesCount](self, "hasFoodAssetSuccessesCount") || [v5 hasFoodAssetSuccessesCount])
  {
    if (![(BMPECProcessed *)self hasFoodAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasFoodAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    foodAssetSuccessesCount = [(BMPECProcessed *)self foodAssetSuccessesCount];
    if (foodAssetSuccessesCount != [v5 foodAssetSuccessesCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasStorefrontAssetSuccessesCount](self, "hasStorefrontAssetSuccessesCount") || [v5 hasStorefrontAssetSuccessesCount])
  {
    if (![(BMPECProcessed *)self hasStorefrontAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasStorefrontAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    storefrontAssetSuccessesCount = [(BMPECProcessed *)self storefrontAssetSuccessesCount];
    if (storefrontAssetSuccessesCount != [v5 storefrontAssetSuccessesCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasSignSymbolAssetSuccessesCount](self, "hasSignSymbolAssetSuccessesCount") || [v5 hasSignSymbolAssetSuccessesCount])
  {
    if (![(BMPECProcessed *)self hasSignSymbolAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasSignSymbolAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    signSymbolAssetSuccessesCount = [(BMPECProcessed *)self signSymbolAssetSuccessesCount];
    if (signSymbolAssetSuccessesCount != [v5 signSymbolAssetSuccessesCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasLaundryCareSymbolAssetSuccessesCount](self, "hasLaundryCareSymbolAssetSuccessesCount") || [v5 hasLaundryCareSymbolAssetSuccessesCount])
  {
    if (![(BMPECProcessed *)self hasLaundryCareSymbolAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasLaundryCareSymbolAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    laundryCareSymbolAssetSuccessesCount = [(BMPECProcessed *)self laundryCareSymbolAssetSuccessesCount];
    if (laundryCareSymbolAssetSuccessesCount != [v5 laundryCareSymbolAssetSuccessesCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasAutoSymbolAssetSuccessesCount](self, "hasAutoSymbolAssetSuccessesCount") || [v5 hasAutoSymbolAssetSuccessesCount])
  {
    if (![(BMPECProcessed *)self hasAutoSymbolAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasAutoSymbolAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    autoSymbolAssetSuccessesCount = [(BMPECProcessed *)self autoSymbolAssetSuccessesCount];
    if (autoSymbolAssetSuccessesCount != [v5 autoSymbolAssetSuccessesCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasBrandLogoSymbolAssetSuccessesCount](self, "hasBrandLogoSymbolAssetSuccessesCount") || [v5 hasBrandLogoSymbolAssetSuccessesCount])
  {
    if (![(BMPECProcessed *)self hasBrandLogoSymbolAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasBrandLogoSymbolAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    brandLogoSymbolAssetSuccessesCount = [(BMPECProcessed *)self brandLogoSymbolAssetSuccessesCount];
    if (brandLogoSymbolAssetSuccessesCount != [v5 brandLogoSymbolAssetSuccessesCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasObject2DAssetSuccessesCount](self, "hasObject2DAssetSuccessesCount") || [v5 hasObject2DAssetSuccessesCount])
  {
    if (![(BMPECProcessed *)self hasObject2DAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasObject2DAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    object2DAssetSuccessesCount = [(BMPECProcessed *)self object2DAssetSuccessesCount];
    if (object2DAssetSuccessesCount != [v5 object2DAssetSuccessesCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasBarcodeDetectionAssetSuccessesCount](self, "hasBarcodeDetectionAssetSuccessesCount") || [v5 hasBarcodeDetectionAssetSuccessesCount])
  {
    if (![(BMPECProcessed *)self hasBarcodeDetectionAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasBarcodeDetectionAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    barcodeDetectionAssetSuccessesCount = [(BMPECProcessed *)self barcodeDetectionAssetSuccessesCount];
    if (barcodeDetectionAssetSuccessesCount != [v5 barcodeDetectionAssetSuccessesCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMPECProcessed hasSculptureAssetSuccessesCount](self, "hasSculptureAssetSuccessesCount") || [v5 hasSculptureAssetSuccessesCount])
  {
    if (![(BMPECProcessed *)self hasSculptureAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasSculptureAssetSuccessesCount])
    {
      goto LABEL_252;
    }

    sculptureAssetSuccessesCount = [(BMPECProcessed *)self sculptureAssetSuccessesCount];
    if (sculptureAssetSuccessesCount != [v5 sculptureAssetSuccessesCount])
    {
      goto LABEL_252;
    }
  }

  if (!-[BMPECProcessed hasSkylineAssetSuccessesCount](self, "hasSkylineAssetSuccessesCount") && ![v5 hasSkylineAssetSuccessesCount])
  {
    v56 = 1;
    goto LABEL_253;
  }

  if (-[BMPECProcessed hasSkylineAssetSuccessesCount](self, "hasSkylineAssetSuccessesCount") && [v5 hasSkylineAssetSuccessesCount])
  {
    skylineAssetSuccessesCount = [(BMPECProcessed *)self skylineAssetSuccessesCount];
    v56 = skylineAssetSuccessesCount == [v5 skylineAssetSuccessesCount];
  }

  else
  {
LABEL_252:
    v56 = 0;
  }

LABEL_253:

LABEL_255:
  return v56;
}

- (id)jsonDictionary
{
  v157[50] = *MEMORY[0x1E69E9840];
  if ([(BMPECProcessed *)self hasArtAssetProcessedCount])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed artAssetProcessedCount](self, "artAssetProcessedCount")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMPECProcessed *)self hasNatureAssetProcessedCount])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed natureAssetProcessedCount](self, "natureAssetProcessedCount")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMPECProcessed *)self hasAnimalsAssetProcessedCount])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed animalsAssetProcessedCount](self, "animalsAssetProcessedCount")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMPECProcessed *)self hasBirdsAssetProcessedCount])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed birdsAssetProcessedCount](self, "birdsAssetProcessedCount")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMPECProcessed *)self hasInsectsAssetProcessedCount])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed insectsAssetProcessedCount](self, "insectsAssetProcessedCount")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMPECProcessed *)self hasReptilesAssetProcessedCount])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed reptilesAssetProcessedCount](self, "reptilesAssetProcessedCount")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMPECProcessed *)self hasMammalsAssetProcessedCount])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed mammalsAssetProcessedCount](self, "mammalsAssetProcessedCount")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMPECProcessed *)self hasLandmarkAssetProcessedCount])
  {
    v155 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed landmarkAssetProcessedCount](self, "landmarkAssetProcessedCount")}];
  }

  else
  {
    v155 = 0;
  }

  if ([(BMPECProcessed *)self hasNaturalLandmarkProcessedAssetCount])
  {
    v154 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed naturalLandmarkProcessedAssetCount](self, "naturalLandmarkProcessedAssetCount")}];
  }

  else
  {
    v154 = 0;
  }

  if ([(BMPECProcessed *)self hasMediaAssetProcessedCount])
  {
    v153 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed mediaAssetProcessedCount](self, "mediaAssetProcessedCount")}];
  }

  else
  {
    v153 = 0;
  }

  if ([(BMPECProcessed *)self hasBookAssetProcessedCount])
  {
    v152 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed bookAssetProcessedCount](self, "bookAssetProcessedCount")}];
  }

  else
  {
    v152 = 0;
  }

  if ([(BMPECProcessed *)self hasAlbumAssetProcessedCount])
  {
    v151 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed albumAssetProcessedCount](self, "albumAssetProcessedCount")}];
  }

  else
  {
    v151 = 0;
  }

  if ([(BMPECProcessed *)self hasCatsAssetProcessedCount])
  {
    v150 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed catsAssetProcessedCount](self, "catsAssetProcessedCount")}];
  }

  else
  {
    v150 = 0;
  }

  if ([(BMPECProcessed *)self hasDogsAssetProcessedCount])
  {
    v149 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed dogsAssetProcessedCount](self, "dogsAssetProcessedCount")}];
  }

  else
  {
    v149 = 0;
  }

  if ([(BMPECProcessed *)self hasApparelAssetProcessedCount])
  {
    v148 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed apparelAssetProcessedCount](self, "apparelAssetProcessedCount")}];
  }

  else
  {
    v148 = 0;
  }

  if ([(BMPECProcessed *)self hasFoodAssetProcessedCount])
  {
    v147 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed foodAssetProcessedCount](self, "foodAssetProcessedCount")}];
  }

  else
  {
    v147 = 0;
  }

  if ([(BMPECProcessed *)self hasStorefrontAssetProcessedCount])
  {
    v146 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed storefrontAssetProcessedCount](self, "storefrontAssetProcessedCount")}];
  }

  else
  {
    v146 = 0;
  }

  if ([(BMPECProcessed *)self hasSignSymbolAssetProcessedCount])
  {
    v145 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed signSymbolAssetProcessedCount](self, "signSymbolAssetProcessedCount")}];
  }

  else
  {
    v145 = 0;
  }

  if ([(BMPECProcessed *)self hasLaundryCareSymbolAssetProcessedCount])
  {
    v144 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed laundryCareSymbolAssetProcessedCount](self, "laundryCareSymbolAssetProcessedCount")}];
  }

  else
  {
    v144 = 0;
  }

  if ([(BMPECProcessed *)self hasAutoSymbolAssetProcessedCount])
  {
    v143 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed autoSymbolAssetProcessedCount](self, "autoSymbolAssetProcessedCount")}];
  }

  else
  {
    v143 = 0;
  }

  if ([(BMPECProcessed *)self hasBrandLogoSymbolAssetProcessedCount])
  {
    v142 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed brandLogoSymbolAssetProcessedCount](self, "brandLogoSymbolAssetProcessedCount")}];
  }

  else
  {
    v142 = 0;
  }

  if ([(BMPECProcessed *)self hasObject2DAssetProcessedCount])
  {
    v141 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed object2DAssetProcessedCount](self, "object2DAssetProcessedCount")}];
  }

  else
  {
    v141 = 0;
  }

  if ([(BMPECProcessed *)self hasBarcodeDetectionAssetProcessedCount])
  {
    v140 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed barcodeDetectionAssetProcessedCount](self, "barcodeDetectionAssetProcessedCount")}];
  }

  else
  {
    v140 = 0;
  }

  if ([(BMPECProcessed *)self hasSculptureAssetProcessedCount])
  {
    v139 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed sculptureAssetProcessedCount](self, "sculptureAssetProcessedCount")}];
  }

  else
  {
    v139 = 0;
  }

  if ([(BMPECProcessed *)self hasSkylineAssetProcessedCount])
  {
    v138 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed skylineAssetProcessedCount](self, "skylineAssetProcessedCount")}];
  }

  else
  {
    v138 = 0;
  }

  if ([(BMPECProcessed *)self hasArtAssetSuccessesCount])
  {
    v137 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed artAssetSuccessesCount](self, "artAssetSuccessesCount")}];
  }

  else
  {
    v137 = 0;
  }

  if ([(BMPECProcessed *)self hasNatureAssetSuccessesCount])
  {
    v136 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed natureAssetSuccessesCount](self, "natureAssetSuccessesCount")}];
  }

  else
  {
    v136 = 0;
  }

  if ([(BMPECProcessed *)self hasAnimalsAssetSuccessesCount])
  {
    v135 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed animalsAssetSuccessesCount](self, "animalsAssetSuccessesCount")}];
  }

  else
  {
    v135 = 0;
  }

  if ([(BMPECProcessed *)self hasBirdsAssetSuccessesCount])
  {
    v134 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed birdsAssetSuccessesCount](self, "birdsAssetSuccessesCount")}];
  }

  else
  {
    v134 = 0;
  }

  if ([(BMPECProcessed *)self hasInsectsAssetSuccessesCount])
  {
    v133 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed insectsAssetSuccessesCount](self, "insectsAssetSuccessesCount")}];
  }

  else
  {
    v133 = 0;
  }

  if ([(BMPECProcessed *)self hasReptilesAssetSuccessesCount])
  {
    v132 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed reptilesAssetSuccessesCount](self, "reptilesAssetSuccessesCount")}];
  }

  else
  {
    v132 = 0;
  }

  if ([(BMPECProcessed *)self hasMammalsAssetSuccessesCount])
  {
    v131 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed mammalsAssetSuccessesCount](self, "mammalsAssetSuccessesCount")}];
  }

  else
  {
    v131 = 0;
  }

  if ([(BMPECProcessed *)self hasLandmarkAssetSuccessesCount])
  {
    v130 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed landmarkAssetSuccessesCount](self, "landmarkAssetSuccessesCount")}];
  }

  else
  {
    v130 = 0;
  }

  if ([(BMPECProcessed *)self hasNaturalLandmarkSuccessesAssetCount])
  {
    v129 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed naturalLandmarkSuccessesAssetCount](self, "naturalLandmarkSuccessesAssetCount")}];
  }

  else
  {
    v129 = 0;
  }

  if ([(BMPECProcessed *)self hasMediaAssetSuccessesCount])
  {
    v128 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed mediaAssetSuccessesCount](self, "mediaAssetSuccessesCount")}];
  }

  else
  {
    v128 = 0;
  }

  if ([(BMPECProcessed *)self hasBookAssetSuccessesCount])
  {
    v127 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed bookAssetSuccessesCount](self, "bookAssetSuccessesCount")}];
  }

  else
  {
    v127 = 0;
  }

  if ([(BMPECProcessed *)self hasAlbumAssetSuccessesCount])
  {
    v126 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed albumAssetSuccessesCount](self, "albumAssetSuccessesCount")}];
  }

  else
  {
    v126 = 0;
  }

  if ([(BMPECProcessed *)self hasCatsAssetSuccessesCount])
  {
    v125 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed catsAssetSuccessesCount](self, "catsAssetSuccessesCount")}];
  }

  else
  {
    v125 = 0;
  }

  if ([(BMPECProcessed *)self hasDogsAssetSuccessesCount])
  {
    v124 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed dogsAssetSuccessesCount](self, "dogsAssetSuccessesCount")}];
  }

  else
  {
    v124 = 0;
  }

  if ([(BMPECProcessed *)self hasApparelAssetSuccessesCount])
  {
    v123 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed apparelAssetSuccessesCount](self, "apparelAssetSuccessesCount")}];
  }

  else
  {
    v123 = 0;
  }

  if ([(BMPECProcessed *)self hasFoodAssetSuccessesCount])
  {
    v122 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed foodAssetSuccessesCount](self, "foodAssetSuccessesCount")}];
  }

  else
  {
    v122 = 0;
  }

  if ([(BMPECProcessed *)self hasStorefrontAssetSuccessesCount])
  {
    v121 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed storefrontAssetSuccessesCount](self, "storefrontAssetSuccessesCount")}];
  }

  else
  {
    v121 = 0;
  }

  if ([(BMPECProcessed *)self hasSignSymbolAssetSuccessesCount])
  {
    v120 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed signSymbolAssetSuccessesCount](self, "signSymbolAssetSuccessesCount")}];
  }

  else
  {
    v120 = 0;
  }

  if ([(BMPECProcessed *)self hasLaundryCareSymbolAssetSuccessesCount])
  {
    v119 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed laundryCareSymbolAssetSuccessesCount](self, "laundryCareSymbolAssetSuccessesCount")}];
  }

  else
  {
    v119 = 0;
  }

  if ([(BMPECProcessed *)self hasAutoSymbolAssetSuccessesCount])
  {
    v118 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed autoSymbolAssetSuccessesCount](self, "autoSymbolAssetSuccessesCount")}];
  }

  else
  {
    v118 = 0;
  }

  if ([(BMPECProcessed *)self hasBrandLogoSymbolAssetSuccessesCount])
  {
    v117 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed brandLogoSymbolAssetSuccessesCount](self, "brandLogoSymbolAssetSuccessesCount")}];
  }

  else
  {
    v117 = 0;
  }

  if ([(BMPECProcessed *)self hasObject2DAssetSuccessesCount])
  {
    v116 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed object2DAssetSuccessesCount](self, "object2DAssetSuccessesCount")}];
  }

  else
  {
    v116 = 0;
  }

  if ([(BMPECProcessed *)self hasBarcodeDetectionAssetSuccessesCount])
  {
    v115 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed barcodeDetectionAssetSuccessesCount](self, "barcodeDetectionAssetSuccessesCount")}];
  }

  else
  {
    v115 = 0;
  }

  if ([(BMPECProcessed *)self hasSculptureAssetSuccessesCount])
  {
    v114 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed sculptureAssetSuccessesCount](self, "sculptureAssetSuccessesCount")}];
  }

  else
  {
    v114 = 0;
  }

  if ([(BMPECProcessed *)self hasSkylineAssetSuccessesCount])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed skylineAssetSuccessesCount](self, "skylineAssetSuccessesCount")}];
  }

  else
  {
    v10 = 0;
  }

  v156[0] = @"artAssetProcessedCount";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v105 = null;
  v157[0] = null;
  v156[1] = @"natureAssetProcessedCount";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v104 = null2;
  v157[1] = null2;
  v156[2] = @"animalsAssetProcessedCount";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v103 = null3;
  v157[2] = null3;
  v156[3] = @"birdsAssetProcessedCount";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v102 = null4;
  v157[3] = null4;
  v156[4] = @"insectsAssetProcessedCount";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v101 = null5;
  v157[4] = null5;
  v156[5] = @"reptilesAssetProcessedCount";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v100 = null6;
  v157[5] = null6;
  v156[6] = @"mammalsAssetProcessedCount";
  null7 = v9;
  if (!v9)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v99 = null7;
  v157[6] = null7;
  v156[7] = @"landmarkAssetProcessedCount";
  null8 = v155;
  if (!v155)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v157[7] = null8;
  v156[8] = @"naturalLandmarkProcessedAssetCount";
  null9 = v154;
  if (!v154)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v157[8] = null9;
  v156[9] = @"mediaAssetProcessedCount";
  null10 = v153;
  if (!v153)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v110 = null10;
  v157[9] = null10;
  v156[10] = @"bookAssetProcessedCount";
  null11 = v152;
  if (!v152)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v107 = v7;
  v109 = null11;
  v157[10] = null11;
  v156[11] = @"albumAssetProcessedCount";
  null12 = v151;
  if (!v151)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v6;
  v96 = null12;
  v157[11] = null12;
  v156[12] = @"catsAssetProcessedCount";
  null13 = v150;
  if (!v150)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null13;
  v157[12] = null13;
  v156[13] = @"dogsAssetProcessedCount";
  null14 = v149;
  if (!v149)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v95 = null14;
  v157[13] = null14;
  v156[14] = @"apparelAssetProcessedCount";
  null15 = v148;
  if (!v148)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v94 = null15;
  v157[14] = null15;
  v156[15] = @"foodAssetProcessedCount";
  null16 = v147;
  if (!v147)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v93 = null16;
  v157[15] = null16;
  v156[16] = @"storefrontAssetProcessedCount";
  null17 = v146;
  if (!v146)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v92 = null17;
  v157[16] = null17;
  v156[17] = @"signSymbolAssetProcessedCount";
  null18 = v145;
  if (!v145)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v91 = null18;
  v157[17] = null18;
  v156[18] = @"laundryCareSymbolAssetProcessedCount";
  null19 = v144;
  if (!v144)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v90 = null19;
  v157[18] = null19;
  v156[19] = @"autoSymbolAssetProcessedCount";
  null20 = v143;
  if (!v143)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v89 = null20;
  v157[19] = null20;
  v156[20] = @"brandLogoSymbolAssetProcessedCount";
  null21 = v142;
  if (!v142)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v88 = null21;
  v157[20] = null21;
  v156[21] = @"object2DAssetProcessedCount";
  null22 = v141;
  if (!v141)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v87 = null22;
  v157[21] = null22;
  v156[22] = @"barcodeDetectionAssetProcessedCount";
  null23 = v140;
  if (!v140)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v86 = null23;
  v157[22] = null23;
  v156[23] = @"sculptureAssetProcessedCount";
  null24 = v139;
  if (!v139)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v85 = null24;
  v157[23] = null24;
  v156[24] = @"skylineAssetProcessedCount";
  null25 = v138;
  if (!v138)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v84 = null25;
  v157[24] = null25;
  v156[25] = @"artAssetSuccessesCount";
  null26 = v137;
  if (!v137)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v83 = null26;
  v157[25] = null26;
  v156[26] = @"natureAssetSuccessesCount";
  null27 = v136;
  if (!v136)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v82 = null27;
  v157[26] = null27;
  v156[27] = @"animalsAssetSuccessesCount";
  null28 = v135;
  if (!v135)
  {
    null28 = [MEMORY[0x1E695DFB0] null];
  }

  v81 = null28;
  v157[27] = null28;
  v156[28] = @"birdsAssetSuccessesCount";
  null29 = v134;
  if (!v134)
  {
    null29 = [MEMORY[0x1E695DFB0] null];
  }

  v80 = null29;
  v157[28] = null29;
  v156[29] = @"insectsAssetSuccessesCount";
  null30 = v133;
  if (!v133)
  {
    null30 = [MEMORY[0x1E695DFB0] null];
  }

  v79 = null30;
  v157[29] = null30;
  v156[30] = @"reptilesAssetSuccessesCount";
  null31 = v132;
  if (!v132)
  {
    null31 = [MEMORY[0x1E695DFB0] null];
  }

  v78 = null31;
  v157[30] = null31;
  v156[31] = @"mammalsAssetSuccessesCount";
  null32 = v131;
  if (!v131)
  {
    null32 = [MEMORY[0x1E695DFB0] null];
  }

  v77 = null32;
  v157[31] = null32;
  v156[32] = @"landmarkAssetSuccessesCount";
  null33 = v130;
  if (!v130)
  {
    null33 = [MEMORY[0x1E695DFB0] null];
  }

  v76 = null33;
  v157[32] = null33;
  v156[33] = @"naturalLandmarkSuccessesAssetCount";
  null34 = v129;
  if (!v129)
  {
    null34 = [MEMORY[0x1E695DFB0] null];
  }

  v75 = null34;
  v157[33] = null34;
  v156[34] = @"mediaAssetSuccessesCount";
  null35 = v128;
  if (!v128)
  {
    null35 = [MEMORY[0x1E695DFB0] null];
  }

  v74 = null35;
  v157[34] = null35;
  v156[35] = @"bookAssetSuccessesCount";
  null36 = v127;
  if (!v127)
  {
    null36 = [MEMORY[0x1E695DFB0] null];
  }

  v73 = null36;
  v157[35] = null36;
  v156[36] = @"albumAssetSuccessesCount";
  null37 = v126;
  if (!v126)
  {
    null37 = [MEMORY[0x1E695DFB0] null];
  }

  v72 = null37;
  v157[36] = null37;
  v156[37] = @"catsAssetSuccessesCount";
  null38 = v125;
  if (!v125)
  {
    null38 = [MEMORY[0x1E695DFB0] null];
  }

  v71 = null38;
  v157[37] = null38;
  v156[38] = @"dogsAssetSuccessesCount";
  null39 = v124;
  if (!v124)
  {
    null39 = [MEMORY[0x1E695DFB0] null];
  }

  v112 = v3;
  v70 = null39;
  v157[38] = null39;
  v156[39] = @"apparelAssetSuccessesCount";
  null40 = v123;
  if (!v123)
  {
    null40 = [MEMORY[0x1E695DFB0] null];
  }

  v69 = null40;
  v157[39] = null40;
  v156[40] = @"foodAssetSuccessesCount";
  null41 = v122;
  if (!v122)
  {
    null41 = [MEMORY[0x1E695DFB0] null];
  }

  v68 = null41;
  v157[40] = null41;
  v156[41] = @"storefrontAssetSuccessesCount";
  null42 = v121;
  if (!v121)
  {
    null42 = [MEMORY[0x1E695DFB0] null];
  }

  v111 = v9;
  v67 = null42;
  v157[41] = null42;
  v156[42] = @"signSymbolAssetSuccessesCount";
  null43 = v120;
  if (!v120)
  {
    null43 = [MEMORY[0x1E695DFB0] null];
  }

  v97 = null9;
  v66 = null43;
  v157[42] = null43;
  v156[43] = @"laundryCareSymbolAssetSuccessesCount";
  null44 = v119;
  if (!v119)
  {
    null44 = [MEMORY[0x1E695DFB0] null];
  }

  v98 = null8;
  v65 = null44;
  v157[43] = null44;
  v156[44] = @"autoSymbolAssetSuccessesCount";
  null45 = v118;
  if (!v118)
  {
    null45 = [MEMORY[0x1E695DFB0] null];
  }

  v157[44] = null45;
  v156[45] = @"brandLogoSymbolAssetSuccessesCount";
  null46 = v117;
  if (!v117)
  {
    null46 = [MEMORY[0x1E695DFB0] null];
  }

  v113 = v10;
  v108 = v8;
  v157[45] = null46;
  v156[46] = @"object2DAssetSuccessesCount";
  null47 = v116;
  if (!v116)
  {
    null47 = [MEMORY[0x1E695DFB0] null];
  }

  v157[46] = null47;
  v156[47] = @"barcodeDetectionAssetSuccessesCount";
  null48 = v115;
  if (!v115)
  {
    null48 = [MEMORY[0x1E695DFB0] null];
  }

  v157[47] = null48;
  v156[48] = @"sculptureAssetSuccessesCount";
  null49 = v114;
  if (!v114)
  {
    null49 = [MEMORY[0x1E695DFB0] null];
  }

  v157[48] = null49;
  v156[49] = @"skylineAssetSuccessesCount";
  null50 = v113;
  if (!v113)
  {
    null50 = [MEMORY[0x1E695DFB0] null];
  }

  v157[49] = null50;
  v106 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v157 forKeys:v156 count:50];
  if (!v113)
  {
  }

  v63 = v25;
  if (!v114)
  {

    v63 = v25;
  }

  if (!v115)
  {

    v63 = v25;
  }

  if (!v116)
  {

    v63 = v25;
  }

  if (!v117)
  {

    v63 = v25;
  }

  if (!v118)
  {

    v63 = v25;
  }

  if (!v119)
  {

    v63 = v25;
  }

  if (!v120)
  {

    v63 = v25;
  }

  if (!v121)
  {

    v63 = v25;
  }

  if (!v122)
  {

    v63 = v25;
  }

  if (!v123)
  {

    v63 = v25;
  }

  if (!v124)
  {

    v63 = v25;
  }

  if (!v125)
  {

    v63 = v25;
  }

  if (!v126)
  {

    v63 = v25;
  }

  if (!v127)
  {

    v63 = v25;
  }

  if (!v128)
  {

    v63 = v25;
  }

  if (!v129)
  {

    v63 = v25;
  }

  if (!v130)
  {

    v63 = v25;
  }

  if (!v131)
  {

    v63 = v25;
  }

  if (!v132)
  {

    v63 = v25;
  }

  if (!v133)
  {

    v63 = v25;
  }

  if (!v134)
  {

    v63 = v25;
  }

  if (!v135)
  {

    v63 = v25;
  }

  if (!v136)
  {

    v63 = v25;
  }

  if (!v137)
  {

    v63 = v25;
  }

  if (!v138)
  {

    v63 = v25;
  }

  if (!v139)
  {

    v63 = v25;
  }

  if (!v140)
  {

    v63 = v25;
  }

  if (!v141)
  {

    v63 = v25;
  }

  if (!v142)
  {

    v63 = v25;
  }

  if (!v143)
  {

    v63 = v25;
  }

  if (!v144)
  {

    v63 = v25;
  }

  if (!v145)
  {

    v63 = v25;
  }

  if (!v146)
  {

    v63 = v25;
  }

  if (!v147)
  {

    v63 = v25;
  }

  if (!v148)
  {

    v63 = v25;
  }

  if (!v149)
  {

    v63 = v25;
  }

  if (!v150)
  {
  }

  if (!v151)
  {
  }

  if (!v152)
  {
  }

  if (!v153)
  {
  }

  if (!v154)
  {
  }

  if (v155)
  {
    if (v111)
    {
      goto LABEL_337;
    }
  }

  else
  {

    if (v111)
    {
LABEL_337:
      if (v108)
      {
        goto LABEL_338;
      }

      goto LABEL_348;
    }
  }

  if (v108)
  {
LABEL_338:
    if (v107)
    {
      goto LABEL_339;
    }

    goto LABEL_349;
  }

LABEL_348:

  if (v107)
  {
LABEL_339:
    if (v23)
    {
      goto LABEL_340;
    }

    goto LABEL_350;
  }

LABEL_349:

  if (v23)
  {
LABEL_340:
    if (v5)
    {
      goto LABEL_341;
    }

    goto LABEL_351;
  }

LABEL_350:

  if (v5)
  {
LABEL_341:
    if (v4)
    {
      goto LABEL_342;
    }

LABEL_352:

    if (v112)
    {
      goto LABEL_343;
    }

    goto LABEL_353;
  }

LABEL_351:

  if (!v4)
  {
    goto LABEL_352;
  }

LABEL_342:
  if (v112)
  {
    goto LABEL_343;
  }

LABEL_353:

LABEL_343:

  return v106;
}

- (BMPECProcessed)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v648[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"artAssetProcessedCount"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"natureAssetProcessedCount"];
    v547 = v9;
    v548 = v8;
    if (!v9 || (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v11 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
LABEL_7:
      v12 = [dictionaryCopy objectForKeyedSubscript:@"animalsAssetProcessedCount"];
      errorCopy = error;
      if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v543 = v11;
        v13 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v543 = v11;
        v13 = v12;
LABEL_10:
        v14 = [dictionaryCopy objectForKeyedSubscript:@"birdsAssetProcessedCount"];
        v538 = v13;
        if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v537 = v14;
          v544 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v537 = v14;
          v544 = v14;
LABEL_13:
          v15 = [dictionaryCopy objectForKeyedSubscript:@"insectsAssetProcessedCount"];
          v541 = v15;
          if (!v15 || (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v539 = 0;
            goto LABEL_16;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v539 = v16;
LABEL_16:
            v17 = [dictionaryCopy objectForKeyedSubscript:@"reptilesAssetProcessedCount"];
            selfCopy = self;
            v535 = v17;
            if (!v17 || (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v531 = 0;
              goto LABEL_19;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v531 = v18;
LABEL_19:
              v19 = [dictionaryCopy objectForKeyedSubscript:@"mammalsAssetProcessedCount"];
              v533 = v19;
              if (!v19 || (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v532 = 0;
                goto LABEL_22;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v532 = v20;
LABEL_22:
                v21 = [dictionaryCopy objectForKeyedSubscript:@"landmarkAssetProcessedCount"];
                v530 = v21;
                if (!v21 || (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  errorCopy2 = 0;
                  goto LABEL_25;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  errorCopy2 = v22;
LABEL_25:
                  v24 = [dictionaryCopy objectForKeyedSubscript:@"naturalLandmarkProcessedAssetCount"];
                  v529 = v24;
                  if (!v24 || (v25 = v24, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v26 = 0;
                    goto LABEL_28;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v26 = v25;
LABEL_28:
                    v27 = [dictionaryCopy objectForKeyedSubscript:@"mediaAssetProcessedCount"];
                    v524 = v27;
                    if (!v27 || (v28 = v27, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v29 = 0;
                      goto LABEL_31;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v29 = v28;
LABEL_31:
                      v30 = [dictionaryCopy objectForKeyedSubscript:@"bookAssetProcessedCount"];
                      v521 = v30;
                      if (!v30 || (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v32 = 0;
LABEL_34:
                        v33 = [dictionaryCopy objectForKeyedSubscript:@"albumAssetProcessedCount"];
                        v518 = v26;
                        v517 = v29;
                        v519 = v33;
                        if (!v33)
                        {
                          goto LABEL_77;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v33 = 0;
                          goto LABEL_77;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v33 = v33;
LABEL_77:
                          v63 = [dictionaryCopy objectForKeyedSubscript:@"catsAssetProcessedCount"];
                          v513 = v33;
                          if (!v63 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v64 = 0;
                            goto LABEL_80;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v64 = v63;
LABEL_80:
                            v65 = [dictionaryCopy objectForKeyedSubscript:@"dogsAssetProcessedCount"];
                            v515 = v32;
                            if (!v65 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v511 = 0;
                              goto LABEL_83;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v511 = v65;
LABEL_83:
                              v66 = [dictionaryCopy objectForKeyedSubscript:@"apparelAssetProcessedCount"];
                              v501 = v66;
                              if (!v66 || (v67 = v66, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v68 = v64;
                                v508 = 0;
                                goto LABEL_86;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v107 = v67;
                                v68 = v64;
                                v508 = v107;
LABEL_86:
                                v69 = [dictionaryCopy objectForKeyedSubscript:@"foodAssetProcessedCount"];
                                v504 = v69;
                                if (!v69 || (v70 = v69, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v502 = 0;
LABEL_89:
                                  v71 = [dictionaryCopy objectForKeyedSubscript:@"storefrontAssetProcessedCount"];
                                  v499 = v71;
                                  if (v71 && (v72 = v71, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                  {
                                    objc_opt_class();
                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                    {
                                      if (!errorCopy)
                                      {
                                        v497 = 0;
                                        v40 = 0;
                                        v47 = v537;
LABEL_459:
                                        v64 = v68;
                                        v67 = v501;
                                        goto LABEL_460;
                                      }

                                      v498 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v496 = *MEMORY[0x1E698F240];
                                      v615 = *MEMORY[0x1E696A578];
                                      v133 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"storefrontAssetProcessedCount"];
                                      v616 = v133;
                                      v134 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v616 forKeys:&v615 count:1];
                                      v135 = v496;
                                      v495 = v134;
                                      v136 = [v498 initWithDomain:v135 code:2 userInfo:?];
                                      v497 = 0;
                                      v40 = 0;
                                      *errorCopy = v136;
                                      goto LABEL_274;
                                    }

                                    v497 = v72;
                                  }

                                  else
                                  {
                                    v497 = 0;
                                  }

                                  v73 = [dictionaryCopy objectForKeyedSubscript:@"signSymbolAssetProcessedCount"];
                                  v492 = v63;
                                  v495 = v73;
                                  if (!v73 || (v74 = v73, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v75 = 0;
                                    goto LABEL_95;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v75 = v74;
LABEL_95:
                                    v76 = [dictionaryCopy objectForKeyedSubscript:@"laundryCareSymbolAssetProcessedCount"];
                                    v493 = v76;
                                    if (!v76 || (v77 = v76, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v490 = 0;
                                      goto LABEL_98;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v490 = v77;
LABEL_98:
                                      v78 = [dictionaryCopy objectForKeyedSubscript:@"autoSymbolAssetProcessedCount"];
                                      v488 = v78;
                                      if (!v78 || (v79 = v78, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v486 = 0;
                                        goto LABEL_101;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v486 = v79;
LABEL_101:
                                        v80 = [dictionaryCopy objectForKeyedSubscript:@"brandLogoSymbolAssetProcessedCount"];
                                        v81 = v68;
                                        v482 = v80;
                                        if (!v80 || (v82 = v80, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v484 = 0;
                                          goto LABEL_104;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v484 = v82;
LABEL_104:
                                          v83 = [dictionaryCopy objectForKeyedSubscript:@"object2DAssetProcessedCount"];
                                          v480 = v83;
                                          if (!v83 || (v84 = v83, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v471 = 0;
                                            goto LABEL_107;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v471 = v84;
LABEL_107:
                                            v85 = [dictionaryCopy objectForKeyedSubscript:@"barcodeDetectionAssetProcessedCount"];
                                            v473 = v65;
                                            v476 = v85;
                                            if (!v85 || (v86 = v85, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v87 = v81;
                                              v88 = v75;
                                              v474 = 0;
LABEL_110:
                                              v89 = [dictionaryCopy objectForKeyedSubscript:@"sculptureAssetProcessedCount"];
                                              v469 = v89;
                                              if (v89 && (v90 = v89, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                              {
                                                objc_opt_class();
                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                {
                                                  if (!errorCopy)
                                                  {
                                                    v467 = 0;
                                                    v40 = 0;
                                                    v47 = v537;
                                                    v75 = v88;
                                                    v81 = v87;
                                                    v65 = v473;
LABEL_451:
                                                    v194 = v471;
                                                    goto LABEL_452;
                                                  }

                                                  v468 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v466 = *MEMORY[0x1E698F240];
                                                  v601 = *MEMORY[0x1E696A578];
                                                  v75 = v88;
                                                  v209 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                  v359 = objc_opt_class();
                                                  v210 = v209;
                                                  v81 = v87;
                                                  v65 = v473;
                                                  v463 = [v210 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v359, @"sculptureAssetProcessedCount"];
                                                  v602 = v463;
                                                  v211 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v602 forKeys:&v601 count:1];
                                                  v212 = v466;
                                                  v465 = v211;
                                                  v213 = [v468 initWithDomain:v212 code:2 userInfo:?];
                                                  v467 = 0;
                                                  v40 = 0;
                                                  *errorCopy = v213;
                                                  v47 = v537;
                                                  goto LABEL_450;
                                                }

                                                v467 = v90;
                                              }

                                              else
                                              {
                                                v467 = 0;
                                              }

                                              v91 = [dictionaryCopy objectForKeyedSubscript:@"skylineAssetProcessedCount"];
                                              v465 = v91;
                                              if (!v91 || (v92 = v91, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v463 = 0;
LABEL_116:
                                                v93 = [dictionaryCopy objectForKeyedSubscript:@"artAssetSuccessesCount"];
                                                v75 = v88;
                                                v461 = v93;
                                                if (!v93)
                                                {
                                                  v459 = 0;
                                                  v81 = v87;
                                                  goto LABEL_186;
                                                }

                                                v94 = v93;
                                                objc_opt_class();
                                                v81 = v87;
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v459 = 0;
LABEL_186:
                                                  v65 = v473;
                                                  goto LABEL_187;
                                                }

                                                objc_opt_class();
                                                v65 = v473;
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v459 = v94;
LABEL_187:
                                                  v150 = [dictionaryCopy objectForKeyedSubscript:@"natureAssetSuccessesCount"];
                                                  v457 = v150;
                                                  if (!v150 || (v151 = v150, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                  {
                                                    v455 = 0;
                                                    goto LABEL_190;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v455 = v151;
LABEL_190:
                                                    v152 = [dictionaryCopy objectForKeyedSubscript:@"animalsAssetSuccessesCount"];
                                                    v453 = v152;
                                                    if (!v152 || (v153 = v152, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                    {
                                                      v447 = 0;
LABEL_193:
                                                      v154 = [dictionaryCopy objectForKeyedSubscript:@"birdsAssetSuccessesCount"];
                                                      v451 = v154;
                                                      if (v154 && (v155 = v154, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                      {
                                                        objc_opt_class();
                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                        {
                                                          if (!errorCopy)
                                                          {
                                                            v449 = 0;
                                                            v40 = 0;
                                                            v47 = v537;
LABEL_445:
                                                            v228 = v447;
                                                            goto LABEL_446;
                                                          }

                                                          v450 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v446 = *MEMORY[0x1E698F240];
                                                          v591 = *MEMORY[0x1E696A578];
                                                          v237 = v81;
                                                          v238 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                          v364 = objc_opt_class();
                                                          v239 = v238;
                                                          v81 = v237;
                                                          v240 = [v239 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v364, @"birdsAssetSuccessesCount"];
                                                          v592 = v240;
                                                          v241 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v592 forKeys:&v591 count:1];
                                                          v242 = v446;
                                                          v445 = v241;
                                                          v243 = [v450 initWithDomain:v242 code:2 userInfo:?];
                                                          v449 = 0;
                                                          v40 = 0;
                                                          *errorCopy = v243;
                                                          goto LABEL_342;
                                                        }

                                                        v449 = v155;
                                                      }

                                                      else
                                                      {
                                                        v449 = 0;
                                                      }

                                                      v156 = [dictionaryCopy objectForKeyedSubscript:@"insectsAssetSuccessesCount"];
                                                      v445 = v156;
                                                      if (!v156 || (v157 = v156, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                      {
                                                        v439 = 0;
LABEL_199:
                                                        v158 = [dictionaryCopy objectForKeyedSubscript:@"reptilesAssetSuccessesCount"];
                                                        v443 = v158;
                                                        if (v158 && (v159 = v158, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                        {
                                                          objc_opt_class();
                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                          {
                                                            if (!errorCopy)
                                                            {
                                                              v441 = 0;
                                                              v40 = 0;
                                                              v47 = v537;
LABEL_442:
                                                              v240 = v439;
                                                              goto LABEL_443;
                                                            }

                                                            v442 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v436 = *MEMORY[0x1E698F240];
                                                            v587 = *MEMORY[0x1E696A578];
                                                            v249 = v81;
                                                            v250 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                            v366 = objc_opt_class();
                                                            v251 = v250;
                                                            v81 = v249;
                                                            v437 = [v251 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v366, @"reptilesAssetSuccessesCount"];
                                                            v588 = v437;
                                                            v252 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v588 forKeys:&v587 count:1];
                                                            v253 = [v442 initWithDomain:v436 code:2 userInfo:v252];
                                                            v441 = 0;
                                                            v40 = 0;
                                                            *errorCopy = v253;
                                                            v47 = v537;
                                                            goto LABEL_441;
                                                          }

                                                          v441 = v159;
                                                        }

                                                        else
                                                        {
                                                          v441 = 0;
                                                        }

                                                        v160 = [dictionaryCopy objectForKeyedSubscript:@"mammalsAssetSuccessesCount"];
                                                        v435 = v160;
                                                        if (!v160 || (v161 = v160, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                        {
                                                          v437 = 0;
                                                          goto LABEL_205;
                                                        }

                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v437 = v161;
LABEL_205:
                                                          v162 = [dictionaryCopy objectForKeyedSubscript:@"landmarkAssetSuccessesCount"];
                                                          v433 = v162;
                                                          if (!v162 || (v163 = v162, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                          {
                                                            v431 = 0;
                                                            goto LABEL_208;
                                                          }

                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            v431 = v163;
LABEL_208:
                                                            v164 = [dictionaryCopy objectForKeyedSubscript:@"naturalLandmarkSuccessesAssetCount"];
                                                            v427 = v164;
                                                            if (!v164 || (v165 = v164, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                            {
                                                              v429 = 0;
LABEL_211:
                                                              v166 = [dictionaryCopy objectForKeyedSubscript:@"mediaAssetSuccessesCount"];
                                                              v423 = v166;
                                                              if (v166 && (v167 = v166, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                              {
                                                                objc_opt_class();
                                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                {
                                                                  if (!errorCopy)
                                                                  {
                                                                    v425 = 0;
                                                                    v40 = 0;
                                                                    v47 = v537;
                                                                    v252 = v435;
LABEL_437:
                                                                    v271 = v423;
                                                                    goto LABEL_438;
                                                                  }

                                                                  v426 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v420 = *MEMORY[0x1E698F240];
                                                                  v579 = *MEMORY[0x1E696A578];
                                                                  v272 = v81;
                                                                  v273 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                  v370 = objc_opt_class();
                                                                  v274 = v273;
                                                                  v81 = v272;
                                                                  v421 = [v274 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v370, @"mediaAssetSuccessesCount"];
                                                                  v580 = v421;
                                                                  v275 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v580 forKeys:&v579 count:1];
                                                                  v276 = [v426 initWithDomain:v420 code:2 userInfo:v275];
                                                                  v425 = 0;
                                                                  v40 = 0;
                                                                  *errorCopy = v276;
                                                                  v277 = v275;
                                                                  v47 = v537;
                                                                  v252 = v435;
LABEL_436:

                                                                  goto LABEL_437;
                                                                }

                                                                v425 = v167;
                                                              }

                                                              else
                                                              {
                                                                v425 = 0;
                                                              }

                                                              v168 = [dictionaryCopy objectForKeyedSubscript:@"bookAssetSuccessesCount"];
                                                              v419 = v168;
                                                              if (v168 && (v169 = v168, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                              {
                                                                objc_opt_class();
                                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                {
                                                                  if (!errorCopy)
                                                                  {
                                                                    v421 = 0;
                                                                    v40 = 0;
                                                                    v47 = v537;
                                                                    v252 = v435;
LABEL_435:
                                                                    v277 = v419;
                                                                    goto LABEL_436;
                                                                  }

                                                                  v422 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v416 = *MEMORY[0x1E698F240];
                                                                  v577 = *MEMORY[0x1E696A578];
                                                                  v278 = v81;
                                                                  v279 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                  v371 = objc_opt_class();
                                                                  v280 = v279;
                                                                  v81 = v278;
                                                                  v417 = [v280 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v371, @"bookAssetSuccessesCount"];
                                                                  v578 = v417;
                                                                  v281 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v578 forKeys:&v577 count:1];
                                                                  v282 = [v422 initWithDomain:v416 code:2 userInfo:v281];
                                                                  v421 = 0;
                                                                  v40 = 0;
                                                                  *errorCopy = v282;
                                                                  v283 = v281;
                                                                  v47 = v537;
                                                                  v252 = v435;
LABEL_434:

                                                                  goto LABEL_435;
                                                                }

                                                                v421 = v169;
                                                              }

                                                              else
                                                              {
                                                                v421 = 0;
                                                              }

                                                              v170 = [dictionaryCopy objectForKeyedSubscript:@"albumAssetSuccessesCount"];
                                                              v415 = v170;
                                                              if (v170 && (v171 = v170, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                              {
                                                                objc_opt_class();
                                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                {
                                                                  if (!errorCopy)
                                                                  {
                                                                    v417 = 0;
                                                                    v40 = 0;
                                                                    v47 = v537;
                                                                    v252 = v435;
LABEL_433:
                                                                    v283 = v415;
                                                                    goto LABEL_434;
                                                                  }

                                                                  v418 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v411 = *MEMORY[0x1E698F240];
                                                                  v575 = *MEMORY[0x1E696A578];
                                                                  v284 = v81;
                                                                  v285 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                  v372 = objc_opt_class();
                                                                  v286 = v285;
                                                                  v81 = v284;
                                                                  v287 = errorCopy2;
                                                                  v413 = [v286 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v372, @"albumAssetSuccessesCount"];
                                                                  v576 = v413;
                                                                  v288 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v576 forKeys:&v575 count:1];
                                                                  v289 = [v418 initWithDomain:v411 code:2 userInfo:v288];
                                                                  v417 = 0;
                                                                  v40 = 0;
                                                                  *errorCopy = v289;
                                                                  v47 = v537;
                                                                  v252 = v435;
                                                                  goto LABEL_432;
                                                                }

                                                                v417 = v171;
                                                              }

                                                              else
                                                              {
                                                                v417 = 0;
                                                              }

                                                              v172 = [dictionaryCopy objectForKeyedSubscript:@"catsAssetSuccessesCount"];
                                                              v409 = v172;
                                                              if (!v172 || (v173 = v172, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                              {
                                                                v413 = 0;
                                                                goto LABEL_223;
                                                              }

                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                v413 = v173;
LABEL_223:
                                                                v174 = [dictionaryCopy objectForKeyedSubscript:@"dogsAssetSuccessesCount"];
                                                                v407 = v174;
                                                                if (!v174 || (v175 = v174, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                {
                                                                  v410 = 0;
                                                                  goto LABEL_226;
                                                                }

                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v410 = v175;
LABEL_226:
                                                                  v176 = [dictionaryCopy objectForKeyedSubscript:@"apparelAssetSuccessesCount"];
                                                                  v403 = v176;
                                                                  if (!v176 || (v177 = v176, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                  {
                                                                    v405 = 0;
                                                                    goto LABEL_229;
                                                                  }

                                                                  objc_opt_class();
                                                                  if (objc_opt_isKindOfClass())
                                                                  {
                                                                    v405 = v177;
LABEL_229:
                                                                    v178 = [dictionaryCopy objectForKeyedSubscript:@"foodAssetSuccessesCount"];
                                                                    v399 = v178;
                                                                    if (!v178 || (v179 = v178, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                    {
                                                                      v401 = 0;
                                                                      goto LABEL_232;
                                                                    }

                                                                    objc_opt_class();
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      v401 = v179;
LABEL_232:
                                                                      v180 = [dictionaryCopy objectForKeyedSubscript:@"storefrontAssetSuccessesCount"];
                                                                      v395 = v81;
                                                                      v396 = v180;
                                                                      if (!v180 || (v181 = v180, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                      {
                                                                        v398 = 0;
LABEL_235:
                                                                        v182 = [dictionaryCopy objectForKeyedSubscript:@"signSymbolAssetSuccessesCount"];
                                                                        v479 = v12;
                                                                        v394 = v182;
                                                                        if (v182 && (v183 = v182, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                        {
                                                                          objc_opt_class();
                                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                          {
                                                                            v391 = v75;
                                                                            v287 = errorCopy2;
                                                                            if (!errorCopy)
                                                                            {
                                                                              v527 = 0;
                                                                              v40 = 0;
                                                                              v47 = v537;
                                                                              v288 = v409;
LABEL_426:
                                                                              v316 = v394;
                                                                              goto LABEL_427;
                                                                            }

                                                                            v317 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                            v318 = *MEMORY[0x1E698F240];
                                                                            v563 = *MEMORY[0x1E696A578];
                                                                            v523 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"signSymbolAssetSuccessesCount"];
                                                                            v564 = v523;
                                                                            v319 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v564 forKeys:&v563 count:1];
                                                                            v527 = 0;
                                                                            v40 = 0;
                                                                            *errorCopy = [v317 initWithDomain:v318 code:2 userInfo:v319];
                                                                            v320 = selfCopy;
                                                                            v47 = v537;
                                                                            v190 = v391;
                                                                            v288 = v409;
                                                                            goto LABEL_425;
                                                                          }

                                                                          v527 = v183;
                                                                        }

                                                                        else
                                                                        {
                                                                          v527 = 0;
                                                                        }

                                                                        v388 = [dictionaryCopy objectForKeyedSubscript:@"laundryCareSymbolAssetSuccessesCount"];
                                                                        if (!v388 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                        {
                                                                          v523 = 0;
LABEL_241:
                                                                          v387 = [dictionaryCopy objectForKeyedSubscript:@"autoSymbolAssetSuccessesCount"];
                                                                          if (v387 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                          {
                                                                            objc_opt_class();
                                                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                            {
                                                                              v393 = v75;
                                                                              v287 = errorCopy2;
                                                                              v330 = selfCopy;
                                                                              if (!errorCopy)
                                                                              {
                                                                                v389 = 0;
                                                                                v40 = 0;
                                                                                v320 = selfCopy;
                                                                                v47 = v537;
                                                                                v190 = v75;
                                                                                v288 = v409;
                                                                                v319 = v388;
                                                                                goto LABEL_424;
                                                                              }

                                                                              v331 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v332 = *MEMORY[0x1E698F240];
                                                                              v559 = *MEMORY[0x1E696A578];
                                                                              v386 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"autoSymbolAssetSuccessesCount"];
                                                                              v560 = v386;
                                                                              v385 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v560 forKeys:&v559 count:1];
                                                                              v389 = 0;
                                                                              v40 = 0;
                                                                              *errorCopy = [v331 initWithDomain:v332 code:2 userInfo:?];
                                                                              goto LABEL_479;
                                                                            }

                                                                            v389 = v387;
                                                                          }

                                                                          else
                                                                          {
                                                                            v389 = 0;
                                                                          }

                                                                          v184 = [dictionaryCopy objectForKeyedSubscript:@"brandLogoSymbolAssetSuccessesCount"];
                                                                          v385 = v184;
                                                                          if (!v184 || (v185 = v184, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                          {
                                                                            v386 = 0;
                                                                            goto LABEL_247;
                                                                          }

                                                                          objc_opt_class();
                                                                          if (objc_opt_isKindOfClass())
                                                                          {
                                                                            v386 = v185;
LABEL_247:
                                                                            v383 = [dictionaryCopy objectForKeyedSubscript:@"object2DAssetSuccessesCount"];
                                                                            if (!v383 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                            {
                                                                              v384 = 0;
                                                                              goto LABEL_250;
                                                                            }

                                                                            objc_opt_class();
                                                                            if (objc_opt_isKindOfClass())
                                                                            {
                                                                              v384 = v383;
LABEL_250:
                                                                              v381 = [dictionaryCopy objectForKeyedSubscript:@"barcodeDetectionAssetSuccessesCount"];
                                                                              if (!v381 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                              {
                                                                                v382 = 0;
                                                                                goto LABEL_253;
                                                                              }

                                                                              v377 = errorCopy2;
                                                                              objc_opt_class();
                                                                              if (objc_opt_isKindOfClass())
                                                                              {
                                                                                v382 = v381;
LABEL_253:
                                                                                v186 = [dictionaryCopy objectForKeyedSubscript:@"sculptureAssetSuccessesCount"];
                                                                                v378 = v186;
                                                                                if (!v186 || (v187 = v186, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                {
                                                                                  v380 = 0;
LABEL_256:
                                                                                  v188 = v437;
                                                                                  v189 = [dictionaryCopy objectForKeyedSubscript:@"skylineAssetSuccessesCount"];
                                                                                  v379 = v189;
                                                                                  if (!v189)
                                                                                  {
                                                                                    v190 = v75;
                                                                                    goto LABEL_390;
                                                                                  }

                                                                                  objc_opt_class();
                                                                                  if (objc_opt_isKindOfClass())
                                                                                  {
                                                                                    v190 = v75;
                                                                                    v189 = 0;
LABEL_390:
                                                                                    v47 = v537;
                                                                                    v323 = v463;
                                                                                    v324 = v459;
                                                                                    v325 = v455;
                                                                                    v326 = v449;
                                                                                    v327 = v471;
                                                                                    v328 = v441;
LABEL_391:
                                                                                    v329 = v189;
                                                                                    v441 = v328;
                                                                                    v449 = v326;
                                                                                    v455 = v325;
                                                                                    v459 = v324;
                                                                                    v463 = v323;
                                                                                    v471 = v327;
                                                                                    v40 = objc_retainAutoreleasedReturnValue( [BMPECProcessed initWithArtAssetProcessedCount:natureAssetProcessedCount:animalsAssetProcessedCount:birdsAssetProcessedCount:insectsAssetProcessedCount:reptilesAssetProcessedCount:mammalsAssetProcessedCount:landmarkAssetProcessedCount:naturalLandmarkProcessedAssetCount:mediaAssetProcessedCount:bookAssetProcessedCount:albumAssetProcessedCount:catsAssetProcessedCount:dogsAssetProcessedCount:apparelAssetProcessedCount:foodAssetProcessedCount:storefrontAssetProcessedCount:signSymbolAssetProcessedCount:laundryCareSymbolAssetProcessedCount:autoSymbolAssetProcessedCount:brandLogoSymbolAssetProcessedCount:object2DAssetProcessedCount:barcodeDetectionAssetProcessedCount:sculptureAssetProcessedCount:skylineAssetProcessedCount:artAssetSuccessesCount:natureAssetSuccessesCount:animalsAssetSuccessesCount:birdsAssetSuccessesCount:insectsAssetSuccessesCount:reptilesAssetSuccessesCount:mammalsAssetSuccessesCount:landmarkAssetSuccessesCount:naturalLandmarkSuccessesAssetCount:mediaAssetSuccessesCount:bookAssetSuccessesCount:albumAssetSuccessesCount:catsAssetSuccessesCount:dogsAssetSuccessesCount:apparelAssetSuccessesCount:foodAssetSuccessesCount:storefrontAssetSuccessesCount:signSymbolAssetSuccessesCount:laundryCareSymbolAssetSuccessesCount:autoSymbolAssetSuccessesCount:brandLogoSymbolAssetSuccessesCount:object2DAssetSuccessesCount:barcodeDetectionAssetSuccessesCount:sculptureAssetSuccessesCount:skylineAssetSuccessesCount:]( selfCopy,  "initWithArtAssetProcessedCount:natureAssetProcessedCount:animalsAssetProcessedCount:birdsAssetProcessedCount:insectsAssetProcessedCount:reptilesAssetProcessedCount:mammalsAssetProcessedCount:landmarkAssetProcessedCount:naturalLandmarkProcessedAssetCount:mediaAssetProcessedCount:bookAssetProcessedCount:albumAssetProcessedCount:catsAssetProcessedCount:dogsAssetProcessedCount:apparelAssetProcessedCount:foodAssetProcessedCount:storefrontAssetProcessedCount:signSymbolAssetProcessedCount:laundryCareSymbolAssetProcessedCount:autoSymbolAssetProcessedCount:brandLogoSymbolAssetProcessedCount:object2DAssetProcessedCount:barcodeDetectionAssetProcessedCount:sculptureAssetProcessedCount:skylineAssetProcessedCount:artAssetSuccessesCount:natureAssetSuccessesCount:animalsAssetSuccessesCount:birdsAssetSuccessesCount:insectsAssetSuccessesCount:reptilesAssetSuccessesCount:mammalsAssetSuccessesCount:landmarkAssetSuccessesCount:naturalLandmarkSuccessesAssetCount:mediaAssetSuccessesCount:bookAssetSuccessesCount:albumAssetSuccessesCount:catsAssetSuccessesCount:dogsAssetSuccessesCount:apparelAssetSuccessesCount:foodAssetSuccessesCount:storefrontAssetSuccessesCount:signSymbolAssetSuccessesCount:laundryCareSymbolAssetSuccessesCount:autoSymbolAssetSuccessesCount:brandLogoSymbolAssetSuccessesCount:object2DAssetSuccessesCount:barcodeDetectionAssetSuccessesCount:sculptureAssetSuccessesCount:skylineAssetSuccessesCount:",  v548,  v543,  v538,  v544,  v539,  v531,  v532,  errorCopy2,  v518,  v517,  v515,  v513,  v395,  v511,  v508,  v502,  v497,  v190,  v490,  v486,  v484,  v327,  v474,  v467,  v323,  v324,  v325,  v447,  v326,  v439,  v328,  v188,  v431,  v429,  v425,  v421,  v417,  v413,  v410,  v405,  v401,  v398,  v527,  v523,  v389,  v386,
                                                                                              v384,
                                                                                              v382,
                                                                                              v380,
                                                                                              v189));
                                                                                    v320 = v40;
LABEL_418:
                                                                                    v319 = v388;

LABEL_419:
LABEL_420:

LABEL_421:
                                                                                    v287 = errorCopy2;

LABEL_422:
                                                                                    goto LABEL_423;
                                                                                  }

                                                                                  v393 = v75;
                                                                                  v377 = errorCopy2;
                                                                                  v333 = selfCopy;
                                                                                  objc_opt_class();
                                                                                  if (objc_opt_isKindOfClass())
                                                                                  {
                                                                                    v189 = v379;
                                                                                    v47 = v537;
                                                                                    v190 = v75;
                                                                                    v327 = v471;
                                                                                    v323 = v463;
                                                                                    v324 = v459;
                                                                                    v325 = v455;
                                                                                    v326 = v449;
                                                                                    v328 = v441;
                                                                                    v188 = v437;
                                                                                    goto LABEL_391;
                                                                                  }

                                                                                  if (errorCopy)
                                                                                  {
                                                                                    v344 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                    v345 = *MEMORY[0x1E698F240];
                                                                                    v549 = *MEMORY[0x1E696A578];
                                                                                    v346 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"skylineAssetSuccessesCount"];
                                                                                    v550 = v346;
                                                                                    v347 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v550 forKeys:&v549 count:1];
                                                                                    *errorCopy = [v344 initWithDomain:v345 code:2 userInfo:v347];
                                                                                  }

                                                                                  v329 = 0;
                                                                                  v40 = 0;
LABEL_417:
                                                                                  v320 = v333;
                                                                                  v47 = v537;
                                                                                  errorCopy2 = v377;
                                                                                  v190 = v393;
                                                                                  goto LABEL_418;
                                                                                }

                                                                                v377 = errorCopy2;
                                                                                objc_opt_class();
                                                                                if (objc_opt_isKindOfClass())
                                                                                {
                                                                                  v380 = v187;
                                                                                  goto LABEL_256;
                                                                                }

                                                                                v393 = v75;
                                                                                v333 = selfCopy;
                                                                                if (errorCopy)
                                                                                {
                                                                                  v342 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                  v343 = *MEMORY[0x1E698F240];
                                                                                  v551 = *MEMORY[0x1E696A578];
                                                                                  v329 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"sculptureAssetSuccessesCount"];
                                                                                  v552 = v329;
                                                                                  v379 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v552 forKeys:&v551 count:1];
                                                                                  v380 = 0;
                                                                                  v40 = 0;
                                                                                  *errorCopy = [v342 initWithDomain:v343 code:2 userInfo:?];
                                                                                  goto LABEL_417;
                                                                                }

                                                                                v380 = 0;
                                                                                v40 = 0;
LABEL_485:
                                                                                v320 = v333;
                                                                                v47 = v537;
                                                                                errorCopy2 = v377;
                                                                                v190 = v393;
                                                                                v319 = v388;
                                                                                goto LABEL_419;
                                                                              }

                                                                              v393 = v75;
                                                                              v333 = selfCopy;
                                                                              if (errorCopy)
                                                                              {
                                                                                v339 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                v340 = *MEMORY[0x1E698F240];
                                                                                v553 = *MEMORY[0x1E696A578];
                                                                                v380 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"barcodeDetectionAssetSuccessesCount"];
                                                                                v554 = v380;
                                                                                v378 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v554 forKeys:&v553 count:1];
                                                                                v341 = [v339 initWithDomain:v340 code:2 userInfo:?];
                                                                                v382 = 0;
                                                                                v40 = 0;
                                                                                *errorCopy = v341;
                                                                                goto LABEL_485;
                                                                              }

                                                                              v382 = 0;
                                                                              v40 = 0;
                                                                              v320 = selfCopy;
                                                                              v47 = v537;
LABEL_483:
                                                                              v190 = v393;
                                                                              v319 = v388;
                                                                              goto LABEL_420;
                                                                            }

                                                                            v393 = v75;
                                                                            if (errorCopy)
                                                                            {
                                                                              v336 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v337 = *MEMORY[0x1E698F240];
                                                                              v555 = *MEMORY[0x1E696A578];
                                                                              v382 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"object2DAssetSuccessesCount"];
                                                                              v556 = v382;
                                                                              v381 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v556 forKeys:&v555 count:1];
                                                                              v338 = [v336 initWithDomain:v337 code:2 userInfo:?];
                                                                              v384 = 0;
                                                                              v40 = 0;
                                                                              *errorCopy = v338;
                                                                              v320 = selfCopy;
                                                                              v47 = v537;
                                                                              goto LABEL_483;
                                                                            }

                                                                            v384 = 0;
                                                                            v40 = 0;
                                                                            v320 = selfCopy;
                                                                            v47 = v537;
LABEL_481:
                                                                            v190 = v393;
                                                                            v319 = v388;
                                                                            goto LABEL_421;
                                                                          }

                                                                          v393 = v75;
                                                                          v287 = errorCopy2;
                                                                          v330 = selfCopy;
                                                                          if (errorCopy)
                                                                          {
                                                                            v334 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                            v335 = *MEMORY[0x1E698F240];
                                                                            v557 = *MEMORY[0x1E696A578];
                                                                            v384 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"brandLogoSymbolAssetSuccessesCount"];
                                                                            v558 = v384;
                                                                            v383 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v558 forKeys:&v557 count:1];
                                                                            v386 = 0;
                                                                            v40 = 0;
                                                                            *errorCopy = [v334 initWithDomain:v335 code:2 userInfo:?];
                                                                            v320 = selfCopy;
                                                                            v47 = v537;
                                                                            errorCopy2 = v287;
                                                                            goto LABEL_481;
                                                                          }

                                                                          v386 = 0;
                                                                          v40 = 0;
LABEL_479:
                                                                          v320 = v330;
                                                                          v47 = v537;
                                                                          v190 = v393;
                                                                          v319 = v388;
                                                                          goto LABEL_422;
                                                                        }

                                                                        objc_opt_class();
                                                                        if (objc_opt_isKindOfClass())
                                                                        {
                                                                          v523 = v388;
                                                                          goto LABEL_241;
                                                                        }

                                                                        v392 = v75;
                                                                        v287 = errorCopy2;
                                                                        if (errorCopy)
                                                                        {
                                                                          v321 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v322 = *MEMORY[0x1E698F240];
                                                                          v561 = *MEMORY[0x1E696A578];
                                                                          v319 = v388;
                                                                          v389 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"laundryCareSymbolAssetSuccessesCount"];
                                                                          v562 = v389;
                                                                          v387 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v562 forKeys:&v561 count:1];
                                                                          v523 = 0;
                                                                          v40 = 0;
                                                                          *errorCopy = [v321 initWithDomain:v322 code:2 userInfo:?];
                                                                          v320 = selfCopy;
                                                                          v47 = v537;
                                                                          v190 = v392;
LABEL_423:
                                                                          v288 = v409;
LABEL_424:

                                                                          goto LABEL_425;
                                                                        }

                                                                        v523 = 0;
                                                                        v40 = 0;
                                                                        v320 = selfCopy;
                                                                        v47 = v537;
                                                                        v190 = v75;
                                                                        v288 = v409;
                                                                        v319 = v388;
LABEL_425:
                                                                        selfCopy = v320;

                                                                        v12 = v479;
                                                                        v75 = v190;
                                                                        v81 = v395;
                                                                        goto LABEL_426;
                                                                      }

                                                                      objc_opt_class();
                                                                      if (objc_opt_isKindOfClass())
                                                                      {
                                                                        v398 = v181;
                                                                        goto LABEL_235;
                                                                      }

                                                                      v390 = v75;
                                                                      v287 = errorCopy2;
                                                                      if (errorCopy)
                                                                      {
                                                                        v314 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v315 = *MEMORY[0x1E698F240];
                                                                        v565 = *MEMORY[0x1E696A578];
                                                                        v527 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"storefrontAssetSuccessesCount"];
                                                                        v566 = v527;
                                                                        v316 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v566 forKeys:&v565 count:1];
                                                                        v398 = 0;
                                                                        v40 = 0;
                                                                        *errorCopy = [v314 initWithDomain:v315 code:2 userInfo:v316];
                                                                        v47 = v537;
                                                                        v75 = v390;
                                                                        v288 = v409;
LABEL_427:

                                                                        v252 = v435;
                                                                        goto LABEL_428;
                                                                      }

                                                                      v398 = 0;
                                                                      v40 = 0;
                                                                      v47 = v537;
LABEL_407:
                                                                      v252 = v435;
                                                                      v288 = v409;
LABEL_428:

                                                                      goto LABEL_429;
                                                                    }

                                                                    v287 = errorCopy2;
                                                                    if (errorCopy)
                                                                    {
                                                                      v402 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                      v397 = *MEMORY[0x1E698F240];
                                                                      v567 = *MEMORY[0x1E696A578];
                                                                      v308 = v81;
                                                                      v309 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                      v376 = objc_opt_class();
                                                                      v310 = v309;
                                                                      v81 = v308;
                                                                      v398 = [v310 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v376, @"foodAssetSuccessesCount"];
                                                                      v568 = v398;
                                                                      v311 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v568 forKeys:&v567 count:1];
                                                                      v312 = v397;
                                                                      v396 = v311;
                                                                      v313 = [v402 initWithDomain:v312 code:2 userInfo:?];
                                                                      v401 = 0;
                                                                      v40 = 0;
                                                                      *errorCopy = v313;
                                                                      v47 = v537;
                                                                      goto LABEL_407;
                                                                    }

                                                                    v401 = 0;
                                                                    v40 = 0;
LABEL_403:
                                                                    v47 = v537;
                                                                    v252 = v435;
                                                                    v288 = v409;
LABEL_429:

                                                                    goto LABEL_430;
                                                                  }

                                                                  v287 = errorCopy2;
                                                                  if (errorCopy)
                                                                  {
                                                                    v406 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                    v400 = *MEMORY[0x1E698F240];
                                                                    v569 = *MEMORY[0x1E696A578];
                                                                    v302 = v81;
                                                                    v303 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                    v375 = objc_opt_class();
                                                                    v304 = v303;
                                                                    v81 = v302;
                                                                    v401 = [v304 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v375, @"apparelAssetSuccessesCount"];
                                                                    v570 = v401;
                                                                    v305 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v570 forKeys:&v569 count:1];
                                                                    v306 = v400;
                                                                    v399 = v305;
                                                                    v307 = [v406 initWithDomain:v306 code:2 userInfo:?];
                                                                    v405 = 0;
                                                                    v40 = 0;
                                                                    *errorCopy = v307;
                                                                    goto LABEL_403;
                                                                  }

                                                                  v405 = 0;
                                                                  v40 = 0;
LABEL_397:
                                                                  v47 = v537;
                                                                  v252 = v435;
                                                                  v288 = v409;
LABEL_430:

                                                                  goto LABEL_431;
                                                                }

                                                                v287 = errorCopy2;
                                                                if (errorCopy)
                                                                {
                                                                  v412 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v404 = *MEMORY[0x1E698F240];
                                                                  v571 = *MEMORY[0x1E696A578];
                                                                  v296 = v81;
                                                                  v297 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                  v374 = objc_opt_class();
                                                                  v298 = v297;
                                                                  v81 = v296;
                                                                  v405 = [v298 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v374, @"dogsAssetSuccessesCount"];
                                                                  v572 = v405;
                                                                  v299 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v572 forKeys:&v571 count:1];
                                                                  v300 = v404;
                                                                  v403 = v299;
                                                                  v301 = [v412 initWithDomain:v300 code:2 userInfo:?];
                                                                  v410 = 0;
                                                                  v40 = 0;
                                                                  *errorCopy = v301;
                                                                  goto LABEL_397;
                                                                }

                                                                v410 = 0;
                                                                v40 = 0;
                                                                v47 = v537;
                                                                v252 = v435;
                                                                v288 = v409;
LABEL_431:

                                                                goto LABEL_432;
                                                              }

                                                              v287 = errorCopy2;
                                                              if (errorCopy)
                                                              {
                                                                v414 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                v408 = *MEMORY[0x1E698F240];
                                                                v573 = *MEMORY[0x1E696A578];
                                                                v290 = v81;
                                                                v291 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                v288 = v409;
                                                                v373 = objc_opt_class();
                                                                v292 = v291;
                                                                v81 = v290;
                                                                v410 = [v292 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v373, @"catsAssetSuccessesCount"];
                                                                v574 = v410;
                                                                v293 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v574 forKeys:&v573 count:1];
                                                                v294 = v408;
                                                                v407 = v293;
                                                                v295 = [v414 initWithDomain:v294 code:2 userInfo:?];
                                                                v413 = 0;
                                                                v40 = 0;
                                                                *errorCopy = v295;
                                                                v47 = v537;
                                                                v252 = v435;
                                                                goto LABEL_431;
                                                              }

                                                              v413 = 0;
                                                              v40 = 0;
                                                              v47 = v537;
                                                              v252 = v435;
                                                              v288 = v409;
LABEL_432:

                                                              errorCopy2 = v287;
                                                              v65 = v473;
                                                              goto LABEL_433;
                                                            }

                                                            objc_opt_class();
                                                            if (objc_opt_isKindOfClass())
                                                            {
                                                              v429 = v165;
                                                              goto LABEL_211;
                                                            }

                                                            if (errorCopy)
                                                            {
                                                              v430 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v424 = *MEMORY[0x1E698F240];
                                                              v581 = *MEMORY[0x1E696A578];
                                                              v266 = v81;
                                                              v267 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                              v369 = objc_opt_class();
                                                              v268 = v267;
                                                              v81 = v266;
                                                              v425 = [v268 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v369, @"naturalLandmarkSuccessesAssetCount"];
                                                              v582 = v425;
                                                              v269 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v582 forKeys:&v581 count:1];
                                                              v270 = [v430 initWithDomain:v424 code:2 userInfo:v269];
                                                              v429 = 0;
                                                              v40 = 0;
                                                              *errorCopy = v270;
                                                              v271 = v269;
                                                              v47 = v537;
                                                              v252 = v435;
LABEL_438:

                                                              goto LABEL_439;
                                                            }

                                                            v429 = 0;
                                                            v40 = 0;
LABEL_363:
                                                            v47 = v537;
                                                            v252 = v435;
LABEL_439:

                                                            goto LABEL_440;
                                                          }

                                                          if (errorCopy)
                                                          {
                                                            v432 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v428 = *MEMORY[0x1E698F240];
                                                            v583 = *MEMORY[0x1E696A578];
                                                            v260 = v81;
                                                            v261 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                            v368 = objc_opt_class();
                                                            v262 = v261;
                                                            v81 = v260;
                                                            v429 = [v262 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v368, @"landmarkAssetSuccessesCount"];
                                                            v584 = v429;
                                                            v263 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v584 forKeys:&v583 count:1];
                                                            v264 = v428;
                                                            v427 = v263;
                                                            v265 = [v432 initWithDomain:v264 code:2 userInfo:?];
                                                            v431 = 0;
                                                            v40 = 0;
                                                            *errorCopy = v265;
                                                            goto LABEL_363;
                                                          }

                                                          v431 = 0;
                                                          v40 = 0;
                                                          v47 = v537;
                                                          v252 = v435;
LABEL_440:

                                                          goto LABEL_441;
                                                        }

                                                        if (errorCopy)
                                                        {
                                                          v438 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v434 = *MEMORY[0x1E698F240];
                                                          v585 = *MEMORY[0x1E696A578];
                                                          v254 = v81;
                                                          v255 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                          v367 = objc_opt_class();
                                                          v256 = v255;
                                                          v81 = v254;
                                                          v252 = v435;
                                                          v431 = [v256 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v367, @"mammalsAssetSuccessesCount"];
                                                          v586 = v431;
                                                          v257 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v586 forKeys:&v585 count:1];
                                                          v258 = v434;
                                                          v433 = v257;
                                                          v259 = [v438 initWithDomain:v258 code:2 userInfo:?];
                                                          v437 = 0;
                                                          v40 = 0;
                                                          *errorCopy = v259;
                                                          v47 = v537;
                                                          goto LABEL_440;
                                                        }

                                                        v437 = 0;
                                                        v40 = 0;
                                                        v47 = v537;
                                                        v252 = v435;
LABEL_441:

                                                        goto LABEL_442;
                                                      }

                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v439 = v157;
                                                        goto LABEL_199;
                                                      }

                                                      if (errorCopy)
                                                      {
                                                        v444 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v440 = *MEMORY[0x1E698F240];
                                                        v589 = *MEMORY[0x1E696A578];
                                                        v244 = v81;
                                                        v245 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                        v365 = objc_opt_class();
                                                        v246 = v245;
                                                        v81 = v244;
                                                        v441 = [v246 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v365, @"insectsAssetSuccessesCount"];
                                                        v590 = v441;
                                                        v247 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v590 forKeys:&v589 count:1];
                                                        v248 = v444;
                                                        v443 = v247;
                                                        v240 = 0;
                                                        v40 = 0;
                                                        *errorCopy = [v248 initWithDomain:v440 code:2 userInfo:?];
                                                        v47 = v537;
LABEL_443:

                                                        goto LABEL_444;
                                                      }

                                                      v240 = 0;
                                                      v40 = 0;
LABEL_342:
                                                      v47 = v537;
LABEL_444:

                                                      goto LABEL_445;
                                                    }

                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v447 = v153;
                                                      goto LABEL_193;
                                                    }

                                                    if (errorCopy)
                                                    {
                                                      v452 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v448 = *MEMORY[0x1E698F240];
                                                      v593 = *MEMORY[0x1E696A578];
                                                      v232 = v81;
                                                      v233 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                      v363 = objc_opt_class();
                                                      v234 = v233;
                                                      v81 = v232;
                                                      v449 = [v234 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v363, @"animalsAssetSuccessesCount"];
                                                      v594 = v449;
                                                      v235 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v594 forKeys:&v593 count:1];
                                                      v236 = v452;
                                                      v451 = v235;
                                                      v228 = 0;
                                                      v40 = 0;
                                                      *errorCopy = [v236 initWithDomain:v448 code:2 userInfo:?];
                                                      v47 = v537;
LABEL_446:

                                                      goto LABEL_447;
                                                    }

                                                    v228 = 0;
                                                    v40 = 0;
LABEL_331:
                                                    v47 = v537;
LABEL_447:

                                                    goto LABEL_448;
                                                  }

                                                  if (errorCopy)
                                                  {
                                                    v456 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v454 = *MEMORY[0x1E698F240];
                                                    v595 = *MEMORY[0x1E696A578];
                                                    v225 = v81;
                                                    v226 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                    v362 = objc_opt_class();
                                                    v227 = v226;
                                                    v81 = v225;
                                                    v228 = [v227 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v362, @"natureAssetSuccessesCount"];
                                                    v596 = v228;
                                                    v229 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v596 forKeys:&v595 count:1];
                                                    v230 = v454;
                                                    v453 = v229;
                                                    v231 = [v456 initWithDomain:v230 code:2 userInfo:?];
                                                    v455 = 0;
                                                    v40 = 0;
                                                    *errorCopy = v231;
                                                    goto LABEL_331;
                                                  }

                                                  v455 = 0;
                                                  v40 = 0;
LABEL_325:
                                                  v47 = v537;
LABEL_448:

                                                  goto LABEL_449;
                                                }

                                                if (errorCopy)
                                                {
                                                  v460 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v458 = *MEMORY[0x1E698F240];
                                                  v597 = *MEMORY[0x1E696A578];
                                                  v219 = v81;
                                                  v220 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                  v361 = objc_opt_class();
                                                  v221 = v220;
                                                  v81 = v219;
                                                  v455 = [v221 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v361, @"artAssetSuccessesCount"];
                                                  v598 = v455;
                                                  v222 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v598 forKeys:&v597 count:1];
                                                  v223 = v458;
                                                  v457 = v222;
                                                  v224 = [v460 initWithDomain:v223 code:2 userInfo:?];
                                                  v459 = 0;
                                                  v40 = 0;
                                                  *errorCopy = v224;
                                                  goto LABEL_325;
                                                }

                                                v459 = 0;
                                                v40 = 0;
LABEL_319:
                                                v47 = v537;
LABEL_449:

                                                goto LABEL_450;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v463 = v92;
                                                goto LABEL_116;
                                              }

                                              if (errorCopy)
                                              {
                                                v464 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v462 = *MEMORY[0x1E698F240];
                                                v599 = *MEMORY[0x1E696A578];
                                                v75 = v88;
                                                v214 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                v360 = objc_opt_class();
                                                v215 = v214;
                                                v81 = v87;
                                                v65 = v473;
                                                v459 = [v215 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v360, @"skylineAssetProcessedCount"];
                                                v600 = v459;
                                                v216 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v600 forKeys:&v599 count:1];
                                                v217 = v462;
                                                v461 = v216;
                                                v218 = [v464 initWithDomain:v217 code:2 userInfo:?];
                                                v463 = 0;
                                                v40 = 0;
                                                *errorCopy = v218;
                                                goto LABEL_319;
                                              }

                                              v463 = 0;
                                              v40 = 0;
                                              v47 = v537;
                                              v75 = v88;
                                              v81 = v87;
                                              v65 = v473;
LABEL_450:

                                              goto LABEL_451;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v87 = v81;
                                              v88 = v75;
                                              v474 = v86;
                                              goto LABEL_110;
                                            }

                                            if (errorCopy)
                                            {
                                              v475 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v470 = *MEMORY[0x1E698F240];
                                              v603 = *MEMORY[0x1E696A578];
                                              v203 = v81;
                                              v204 = objc_alloc(MEMORY[0x1E696AEC0]);
                                              v358 = objc_opt_class();
                                              v205 = v204;
                                              v81 = v203;
                                              v194 = v471;
                                              v467 = [v205 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v358, @"barcodeDetectionAssetProcessedCount"];
                                              v604 = v467;
                                              v206 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v604 forKeys:&v603 count:1];
                                              v207 = v470;
                                              v469 = v206;
                                              v208 = [v475 initWithDomain:v207 code:2 userInfo:?];
                                              v474 = 0;
                                              v40 = 0;
                                              *errorCopy = v208;
                                              v47 = v537;
LABEL_452:

                                              goto LABEL_453;
                                            }

                                            v474 = 0;
                                            v40 = 0;
                                            v47 = v537;
                                            v194 = v471;
LABEL_453:

                                            goto LABEL_454;
                                          }

                                          if (errorCopy)
                                          {
                                            v477 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v472 = *MEMORY[0x1E698F240];
                                            v605 = *MEMORY[0x1E696A578];
                                            v198 = v81;
                                            v199 = objc_alloc(MEMORY[0x1E696AEC0]);
                                            v357 = objc_opt_class();
                                            v200 = v199;
                                            v81 = v198;
                                            v474 = [v200 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v357, @"object2DAssetProcessedCount"];
                                            v606 = v474;
                                            v201 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v606 forKeys:&v605 count:1];
                                            v202 = v477;
                                            v476 = v201;
                                            v194 = 0;
                                            v40 = 0;
                                            *errorCopy = [v202 initWithDomain:v472 code:2 userInfo:?];
                                            v47 = v537;
                                            goto LABEL_453;
                                          }

                                          v194 = 0;
                                          v40 = 0;
LABEL_298:
                                          v47 = v537;
LABEL_454:

                                          goto LABEL_455;
                                        }

                                        if (errorCopy)
                                        {
                                          v485 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v481 = *MEMORY[0x1E698F240];
                                          v607 = *MEMORY[0x1E696A578];
                                          v528 = dictionaryCopy;
                                          v191 = v81;
                                          v192 = objc_alloc(MEMORY[0x1E696AEC0]);
                                          v356 = objc_opt_class();
                                          v193 = v192;
                                          v81 = v191;
                                          dictionaryCopy = v528;
                                          v194 = [v193 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v356, @"brandLogoSymbolAssetProcessedCount"];
                                          v608 = v194;
                                          v195 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v608 forKeys:&v607 count:1];
                                          v196 = v481;
                                          v480 = v195;
                                          v197 = [v485 initWithDomain:v196 code:2 userInfo:?];
                                          v484 = 0;
                                          v40 = 0;
                                          *errorCopy = v197;
                                          goto LABEL_298;
                                        }

                                        v484 = 0;
                                        v40 = 0;
LABEL_292:
                                        v47 = v537;
LABEL_455:
                                        v68 = v81;

                                        goto LABEL_456;
                                      }

                                      if (errorCopy)
                                      {
                                        v487 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v483 = *MEMORY[0x1E698F240];
                                        v609 = *MEMORY[0x1E696A578];
                                        v145 = objc_alloc(MEMORY[0x1E696AEC0]);
                                        v355 = objc_opt_class();
                                        v146 = v145;
                                        v81 = v68;
                                        v484 = [v146 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v355, @"autoSymbolAssetProcessedCount"];
                                        v610 = v484;
                                        v147 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v610 forKeys:&v609 count:1];
                                        v148 = v483;
                                        v482 = v147;
                                        v149 = [v487 initWithDomain:v148 code:2 userInfo:?];
                                        v486 = 0;
                                        v40 = 0;
                                        *errorCopy = v149;
                                        goto LABEL_292;
                                      }

                                      v486 = 0;
                                      v40 = 0;
LABEL_286:
                                      v47 = v537;
LABEL_456:
                                      v133 = v75;

                                      goto LABEL_457;
                                    }

                                    if (errorCopy)
                                    {
                                      v491 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v489 = *MEMORY[0x1E698F240];
                                      v611 = *MEMORY[0x1E696A578];
                                      v478 = v12;
                                      v140 = objc_alloc(MEMORY[0x1E696AEC0]);
                                      v354 = objc_opt_class();
                                      v141 = v140;
                                      v12 = v478;
                                      v486 = [v141 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v354, @"laundryCareSymbolAssetProcessedCount"];
                                      v612 = v486;
                                      v142 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v612 forKeys:&v611 count:1];
                                      v143 = v489;
                                      v488 = v142;
                                      v144 = [v491 initWithDomain:v143 code:2 userInfo:?];
                                      v490 = 0;
                                      v40 = 0;
                                      *errorCopy = v144;
                                      goto LABEL_286;
                                    }

                                    v133 = v75;
                                    v490 = 0;
                                    v40 = 0;
LABEL_280:
                                    v47 = v537;
LABEL_457:

                                    v63 = v492;
                                    goto LABEL_458;
                                  }

                                  if (errorCopy)
                                  {
                                    v137 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v494 = *MEMORY[0x1E698F240];
                                    v613 = *MEMORY[0x1E696A578];
                                    v490 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"signSymbolAssetProcessedCount"];
                                    v614 = v490;
                                    v138 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v614 forKeys:&v613 count:1];
                                    v139 = v494;
                                    v493 = v138;
                                    v133 = 0;
                                    v40 = 0;
                                    *errorCopy = [v137 initWithDomain:v139 code:2 userInfo:?];
                                    goto LABEL_280;
                                  }

                                  v133 = 0;
                                  v40 = 0;
LABEL_274:
                                  v47 = v537;
LABEL_458:

                                  goto LABEL_459;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v502 = v70;
                                  goto LABEL_89;
                                }

                                if (errorCopy)
                                {
                                  v503 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v500 = *MEMORY[0x1E698F240];
                                  v617 = *MEMORY[0x1E696A578];
                                  v128 = objc_alloc(MEMORY[0x1E696AEC0]);
                                  v353 = objc_opt_class();
                                  v129 = v128;
                                  v64 = v68;
                                  v67 = v501;
                                  v497 = [v129 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v353, @"foodAssetProcessedCount"];
                                  v618 = v497;
                                  v130 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v618 forKeys:&v617 count:1];
                                  v131 = v500;
                                  v499 = v130;
                                  v132 = [v503 initWithDomain:v131 code:2 userInfo:?];
                                  v502 = 0;
                                  v40 = 0;
                                  *errorCopy = v132;
                                  v47 = v537;
LABEL_460:

                                  goto LABEL_461;
                                }

                                v502 = 0;
                                v40 = 0;
                                v47 = v537;
                                v64 = v68;
                                v67 = v501;
LABEL_461:

                                goto LABEL_462;
                              }

                              if (errorCopy)
                              {
                                v510 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v507 = *MEMORY[0x1E698F240];
                                v619 = *MEMORY[0x1E696A578];
                                v121 = v67;
                                v122 = v64;
                                v123 = objc_alloc(MEMORY[0x1E696AEC0]);
                                v352 = objc_opt_class();
                                v124 = v123;
                                v64 = v122;
                                v67 = v121;
                                v502 = [v124 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v352, @"apparelAssetProcessedCount"];
                                v620 = v502;
                                v125 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v620 forKeys:&v619 count:1];
                                v126 = v507;
                                v504 = v125;
                                v127 = [v510 initWithDomain:v126 code:2 userInfo:?];
                                v508 = 0;
                                v40 = 0;
                                *errorCopy = v127;
                                v47 = v537;
                                goto LABEL_461;
                              }

                              v508 = 0;
                              v40 = 0;
LABEL_184:
                              v47 = v537;
LABEL_462:

                              v32 = v515;
                              goto LABEL_463;
                            }

                            if (errorCopy)
                            {
                              v512 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v506 = *MEMORY[0x1E698F240];
                              v621 = *MEMORY[0x1E696A578];
                              v117 = v64;
                              v118 = objc_alloc(MEMORY[0x1E696AEC0]);
                              v351 = objc_opt_class();
                              v119 = v118;
                              v64 = v117;
                              v508 = [v119 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v351, @"dogsAssetProcessedCount"];
                              v622 = v508;
                              v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v622 forKeys:&v621 count:1];
                              v120 = [v512 initWithDomain:v506 code:2 userInfo:v67];
                              v511 = 0;
                              v40 = 0;
                              *errorCopy = v120;
                              goto LABEL_184;
                            }

                            v511 = 0;
                            v40 = 0;
LABEL_178:
                            v47 = v537;
LABEL_463:

                            v33 = v513;
                            goto LABEL_464;
                          }

                          if (errorCopy)
                          {
                            v509 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v505 = *MEMORY[0x1E698F240];
                            v623 = *MEMORY[0x1E696A578];
                            v511 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"catsAssetProcessedCount"];
                            v624 = v511;
                            v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v624 forKeys:&v623 count:1];
                            v64 = 0;
                            v40 = 0;
                            *errorCopy = [v509 initWithDomain:v505 code:2 userInfo:v65];
                            goto LABEL_178;
                          }

                          v64 = 0;
                          v40 = 0;
LABEL_172:
                          v47 = v537;
LABEL_464:

                          v26 = v518;
                          v29 = v517;
                          goto LABEL_465;
                        }

                        if (errorCopy)
                        {
                          v114 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v514 = *MEMORY[0x1E698F240];
                          v625 = *MEMORY[0x1E696A578];
                          v115 = errorCopy2;
                          v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"albumAssetProcessedCount"];
                          v626 = v64;
                          v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v626 forKeys:&v625 count:1];
                          v40 = 0;
                          *errorCopy = [v114 initWithDomain:v514 code:2 userInfo:v116];
                          v63 = v116;
                          errorCopy2 = v115;
                          v33 = 0;
                          goto LABEL_172;
                        }

                        v33 = 0;
                        v40 = 0;
                        v47 = v537;
LABEL_465:

                        goto LABEL_466;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v32 = v31;
                        goto LABEL_34;
                      }

                      if (errorCopy)
                      {
                        v520 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v516 = *MEMORY[0x1E698F240];
                        v627 = *MEMORY[0x1E696A578];
                        v526 = dictionaryCopy;
                        v108 = v26;
                        v109 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v350 = objc_opt_class();
                        v110 = v109;
                        v26 = v108;
                        dictionaryCopy = v526;
                        v111 = [v110 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v350, @"bookAssetProcessedCount"];
                        v628 = v111;
                        v112 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v628 forKeys:&v627 count:1];
                        v113 = v520;
                        v519 = v112;
                        v32 = 0;
                        v40 = 0;
                        *errorCopy = [v113 initWithDomain:v516 code:2 userInfo:?];
                        v33 = v111;
                        v47 = v537;
                        goto LABEL_465;
                      }

                      v40 = 0;
                      v47 = v537;
                      v32 = 0;
LABEL_466:

                      v13 = v538;
                      goto LABEL_467;
                    }

                    if (error)
                    {
                      v101 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v522 = *MEMORY[0x1E698F240];
                      v629 = *MEMORY[0x1E696A578];
                      v525 = dictionaryCopy;
                      v102 = v26;
                      v103 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v349 = objc_opt_class();
                      v104 = v103;
                      v26 = v102;
                      dictionaryCopy = v525;
                      v32 = [v104 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v349, @"mediaAssetProcessedCount"];
                      v630 = v32;
                      v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v630 forKeys:&v629 count:1];
                      v106 = v522;
                      v521 = v105;
                      v29 = 0;
                      v40 = 0;
                      *errorCopy = [v101 initWithDomain:v106 code:2 userInfo:?];
                      v47 = v537;
                      goto LABEL_466;
                    }

                    v40 = 0;
                    v47 = v537;
                    v29 = 0;
LABEL_467:

                    v51 = v531;
                    goto LABEL_468;
                  }

                  if (error)
                  {
                    v97 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v98 = *MEMORY[0x1E698F240];
                    v631 = *MEMORY[0x1E696A578];
                    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"naturalLandmarkProcessedAssetCount"];
                    v632 = v29;
                    v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v632 forKeys:&v631 count:1];
                    v100 = v98;
                    v13 = v538;
                    v524 = v99;
                    v26 = 0;
                    v40 = 0;
                    *errorCopy = [v97 initWithDomain:v100 code:2 userInfo:?];
                    v47 = v537;
                    goto LABEL_467;
                  }

                  v26 = 0;
                  v40 = 0;
                  v47 = v537;
                  v51 = v531;
LABEL_468:

                  goto LABEL_469;
                }

                errorCopy2 = error;
                if (error)
                {
                  v95 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v96 = *MEMORY[0x1E698F240];
                  v633 = *MEMORY[0x1E696A578];
                  v51 = v531;
                  v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"landmarkAssetProcessedCount"];
                  v634 = v26;
                  v529 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v634 forKeys:&v633 count:1];
                  v40 = 0;
                  *errorCopy = [v95 initWithDomain:v96 code:2 userInfo:?];
                  errorCopy2 = 0;
                  v47 = v537;
                  goto LABEL_468;
                }

                v40 = 0;
                v47 = v537;
                v51 = v531;
LABEL_469:

                goto LABEL_470;
              }

              if (error)
              {
                v58 = objc_alloc(MEMORY[0x1E696ABC0]);
                v59 = *MEMORY[0x1E698F240];
                v635 = *MEMORY[0x1E696A578];
                v51 = v531;
                v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"mammalsAssetProcessedCount"];
                v636 = v60;
                v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v636 forKeys:&v635 count:1];
                v62 = v59;
                v13 = v538;
                v530 = v61;
                v532 = 0;
                v40 = 0;
                *errorCopy = [v58 initWithDomain:v62 code:2 userInfo:?];
                errorCopy2 = v60;
                v47 = v537;
                goto LABEL_469;
              }

              v532 = 0;
              v40 = 0;
              v47 = v537;
              v51 = v531;
LABEL_470:

              self = selfCopy;
              goto LABEL_471;
            }

            if (error)
            {
              v55 = objc_alloc(MEMORY[0x1E696ABC0]);
              v56 = *MEMORY[0x1E698F240];
              v637 = *MEMORY[0x1E696A578];
              v532 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"reptilesAssetProcessedCount"];
              v638 = v532;
              v533 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v638 forKeys:&v637 count:1];
              v57 = [v55 initWithDomain:v56 code:2 userInfo:?];
              v51 = 0;
              v40 = 0;
              *error = v57;
              v47 = v537;
              goto LABEL_470;
            }

            v51 = 0;
            v40 = 0;
            v47 = v537;
LABEL_471:

            v11 = v543;
            goto LABEL_472;
          }

          if (error)
          {
            v540 = objc_alloc(MEMORY[0x1E696ABC0]);
            v536 = *MEMORY[0x1E698F240];
            v639 = *MEMORY[0x1E696A578];
            v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"insectsAssetProcessedCount"];
            v640 = v51;
            v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v640 forKeys:&v639 count:1];
            v53 = v536;
            v535 = v52;
            v54 = [v540 initWithDomain:v53 code:2 userInfo:?];
            v539 = 0;
            v40 = 0;
            *error = v54;
            v47 = v537;
            goto LABEL_471;
          }

          v539 = 0;
          v40 = 0;
          v47 = v537;
          v11 = v543;
LABEL_472:

          goto LABEL_473;
        }

        v47 = v14;
        if (error)
        {
          v545 = objc_alloc(MEMORY[0x1E696ABC0]);
          v542 = *MEMORY[0x1E698F240];
          v641 = *MEMORY[0x1E696A578];
          v11 = v543;
          v539 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"birdsAssetProcessedCount"];
          v642 = v539;
          v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v642 forKeys:&v641 count:1];
          v49 = v542;
          v541 = v48;
          v50 = [v545 initWithDomain:v49 code:2 userInfo:?];
          v544 = 0;
          v40 = 0;
          *error = v50;
          goto LABEL_472;
        }

        v544 = 0;
        v40 = 0;
        v11 = v543;
LABEL_473:

        goto LABEL_474;
      }

      if (error)
      {
        v45 = objc_alloc(MEMORY[0x1E696ABC0]);
        v46 = *MEMORY[0x1E698F240];
        v643 = *MEMORY[0x1E696A578];
        v544 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"animalsAssetProcessedCount"];
        v644 = v544;
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v644 forKeys:&v643 count:1];
        v13 = 0;
        v40 = 0;
        *errorCopy = [v45 initWithDomain:v46 code:2 userInfo:v47];
        goto LABEL_473;
      }

      v13 = 0;
      v40 = 0;
LABEL_474:

      v8 = v548;
      v10 = v547;
      goto LABEL_475;
    }

    if (error)
    {
      v41 = objc_alloc(MEMORY[0x1E696ABC0]);
      selfCopy2 = self;
      errorCopy3 = error;
      v44 = *MEMORY[0x1E698F240];
      v645 = *MEMORY[0x1E696A578];
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"natureAssetProcessedCount"];
      v646 = v13;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v646 forKeys:&v645 count:1];
      v11 = 0;
      v40 = 0;
      *errorCopy3 = [v41 initWithDomain:v44 code:2 userInfo:v12];
      self = selfCopy2;
      goto LABEL_474;
    }

    v11 = 0;
    v40 = 0;
LABEL_475:

    goto LABEL_476;
  }

  if (error)
  {
    v34 = objc_alloc(MEMORY[0x1E696ABC0]);
    selfCopy3 = self;
    errorCopy4 = error;
    v37 = *MEMORY[0x1E698F240];
    v647 = *MEMORY[0x1E696A578];
    v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"artAssetProcessedCount"];
    v648[0] = v38;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v648 forKeys:&v647 count:1];
    v39 = v34;
    v11 = v38;
    v8 = 0;
    v40 = 0;
    *errorCopy4 = [v39 initWithDomain:v37 code:2 userInfo:v10];
    self = selfCopy3;
    goto LABEL_475;
  }

  v8 = 0;
  v40 = 0;
LABEL_476:

  return v40;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPECProcessed *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasArtAssetProcessedCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNatureAssetProcessedCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasAnimalsAssetProcessedCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasBirdsAssetProcessedCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasInsectsAssetProcessedCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasReptilesAssetProcessedCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasMammalsAssetProcessedCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasLandmarkAssetProcessedCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNaturalLandmarkProcessedAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasMediaAssetProcessedCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasBookAssetProcessedCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasAlbumAssetProcessedCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasCatsAssetProcessedCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasDogsAssetProcessedCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasApparelAssetProcessedCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasFoodAssetProcessedCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasStorefrontAssetProcessedCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasSignSymbolAssetProcessedCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasLaundryCareSymbolAssetProcessedCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasAutoSymbolAssetProcessedCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasBrandLogoSymbolAssetProcessedCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasObject2DAssetProcessedCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasBarcodeDetectionAssetProcessedCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasSculptureAssetProcessedCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasSkylineAssetProcessedCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasArtAssetSuccessesCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNatureAssetSuccessesCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasAnimalsAssetSuccessesCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasBirdsAssetSuccessesCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasInsectsAssetSuccessesCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasReptilesAssetSuccessesCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasMammalsAssetSuccessesCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasLandmarkAssetSuccessesCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNaturalLandmarkSuccessesAssetCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasMediaAssetSuccessesCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasBookAssetSuccessesCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasAlbumAssetSuccessesCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasCatsAssetSuccessesCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasDogsAssetSuccessesCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasApparelAssetSuccessesCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasFoodAssetSuccessesCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasStorefrontAssetSuccessesCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasSignSymbolAssetSuccessesCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasLaundryCareSymbolAssetSuccessesCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasAutoSymbolAssetSuccessesCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasBrandLogoSymbolAssetSuccessesCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasObject2DAssetSuccessesCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasBarcodeDetectionAssetSuccessesCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasSculptureAssetSuccessesCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasSkylineAssetSuccessesCount)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v9.receiver = self;
  v9.super_class = BMPECProcessed;
  v5 = [(BMEventBase *)&v9 init];
  v6 = v5;
  if (v5 && !BMPECProcessedReadFrom(v5, fromCopy))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (NSString)description
{
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  v52 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed artAssetProcessedCount](self, "artAssetProcessedCount")}];
  v55 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed natureAssetProcessedCount](self, "natureAssetProcessedCount")}];
  v54 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed animalsAssetProcessedCount](self, "animalsAssetProcessedCount")}];
  v53 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed birdsAssetProcessedCount](self, "birdsAssetProcessedCount")}];
  v49 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed insectsAssetProcessedCount](self, "insectsAssetProcessedCount")}];
  v51 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed reptilesAssetProcessedCount](self, "reptilesAssetProcessedCount")}];
  v50 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed mammalsAssetProcessedCount](self, "mammalsAssetProcessedCount")}];
  v48 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed landmarkAssetProcessedCount](self, "landmarkAssetProcessedCount")}];
  v45 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed naturalLandmarkProcessedAssetCount](self, "naturalLandmarkProcessedAssetCount")}];
  v47 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed mediaAssetProcessedCount](self, "mediaAssetProcessedCount")}];
  v44 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed bookAssetProcessedCount](self, "bookAssetProcessedCount")}];
  v46 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed albumAssetProcessedCount](self, "albumAssetProcessedCount")}];
  v41 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed catsAssetProcessedCount](self, "catsAssetProcessedCount")}];
  v43 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed dogsAssetProcessedCount](self, "dogsAssetProcessedCount")}];
  v40 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed apparelAssetProcessedCount](self, "apparelAssetProcessedCount")}];
  v38 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed foodAssetProcessedCount](self, "foodAssetProcessedCount")}];
  v42 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed storefrontAssetProcessedCount](self, "storefrontAssetProcessedCount")}];
  v39 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed signSymbolAssetProcessedCount](self, "signSymbolAssetProcessedCount")}];
  v35 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed laundryCareSymbolAssetProcessedCount](self, "laundryCareSymbolAssetProcessedCount")}];
  v37 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed autoSymbolAssetProcessedCount](self, "autoSymbolAssetProcessedCount")}];
  v34 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed brandLogoSymbolAssetProcessedCount](self, "brandLogoSymbolAssetProcessedCount")}];
  v32 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed object2DAssetProcessedCount](self, "object2DAssetProcessedCount")}];
  v36 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed barcodeDetectionAssetProcessedCount](self, "barcodeDetectionAssetProcessedCount")}];
  v31 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed sculptureAssetProcessedCount](self, "sculptureAssetProcessedCount")}];
  v33 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed skylineAssetProcessedCount](self, "skylineAssetProcessedCount")}];
  v30 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed artAssetSuccessesCount](self, "artAssetSuccessesCount")}];
  v28 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed natureAssetSuccessesCount](self, "natureAssetSuccessesCount")}];
  v29 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed animalsAssetSuccessesCount](self, "animalsAssetSuccessesCount")}];
  v26 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed birdsAssetSuccessesCount](self, "birdsAssetSuccessesCount")}];
  v17 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed insectsAssetSuccessesCount](self, "insectsAssetSuccessesCount")}];
  v27 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed reptilesAssetSuccessesCount](self, "reptilesAssetSuccessesCount")}];
  v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed mammalsAssetSuccessesCount](self, "mammalsAssetSuccessesCount")}];
  v25 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed landmarkAssetSuccessesCount](self, "landmarkAssetSuccessesCount")}];
  v24 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed naturalLandmarkSuccessesAssetCount](self, "naturalLandmarkSuccessesAssetCount")}];
  v23 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed mediaAssetSuccessesCount](self, "mediaAssetSuccessesCount")}];
  v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed bookAssetSuccessesCount](self, "bookAssetSuccessesCount")}];
  v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed albumAssetSuccessesCount](self, "albumAssetSuccessesCount")}];
  v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed catsAssetSuccessesCount](self, "catsAssetSuccessesCount")}];
  v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed dogsAssetSuccessesCount](self, "dogsAssetSuccessesCount")}];
  v20 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed apparelAssetSuccessesCount](self, "apparelAssetSuccessesCount")}];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed foodAssetSuccessesCount](self, "foodAssetSuccessesCount")}];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed storefrontAssetSuccessesCount](self, "storefrontAssetSuccessesCount")}];
  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed signSymbolAssetSuccessesCount](self, "signSymbolAssetSuccessesCount")}];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed laundryCareSymbolAssetSuccessesCount](self, "laundryCareSymbolAssetSuccessesCount")}];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed autoSymbolAssetSuccessesCount](self, "autoSymbolAssetSuccessesCount")}];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed brandLogoSymbolAssetSuccessesCount](self, "brandLogoSymbolAssetSuccessesCount")}];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed object2DAssetSuccessesCount](self, "object2DAssetSuccessesCount")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed barcodeDetectionAssetSuccessesCount](self, "barcodeDetectionAssetSuccessesCount")}];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed sculptureAssetSuccessesCount](self, "sculptureAssetSuccessesCount")}];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPECProcessed skylineAssetSuccessesCount](self, "skylineAssetSuccessesCount")}];
  v19 = [v18 initWithFormat:@"BMPECProcessed with artAssetProcessedCount: %@, natureAssetProcessedCount: %@, animalsAssetProcessedCount: %@, birdsAssetProcessedCount: %@, insectsAssetProcessedCount: %@, reptilesAssetProcessedCount: %@, mammalsAssetProcessedCount: %@, landmarkAssetProcessedCount: %@, naturalLandmarkProcessedAssetCount: %@, mediaAssetProcessedCount: %@, bookAssetProcessedCount: %@, albumAssetProcessedCount: %@, catsAssetProcessedCount: %@, dogsAssetProcessedCount: %@, apparelAssetProcessedCount: %@, foodAssetProcessedCount: %@, storefrontAssetProcessedCount: %@, signSymbolAssetProcessedCount: %@, laundryCareSymbolAssetProcessedCount: %@, autoSymbolAssetProcessedCount: %@, brandLogoSymbolAssetProcessedCount: %@, object2DAssetProcessedCount: %@, barcodeDetectionAssetProcessedCount: %@, sculptureAssetProcessedCount: %@, skylineAssetProcessedCount: %@, artAssetSuccessesCount: %@, natureAssetSuccessesCount: %@, animalsAssetSuccessesCount: %@, birdsAssetSuccessesCount: %@, insectsAssetSuccessesCount: %@, reptilesAssetSuccessesCount: %@, mammalsAssetSuccessesCount: %@, landmarkAssetSuccessesCount: %@, naturalLandmarkSuccessesAssetCount: %@, mediaAssetSuccessesCount: %@, bookAssetSuccessesCount: %@, albumAssetSuccessesCount: %@, catsAssetSuccessesCount: %@, dogsAssetSuccessesCount: %@, apparelAssetSuccessesCount: %@, foodAssetSuccessesCount: %@, storefrontAssetSuccessesCount: %@, signSymbolAssetSuccessesCount: %@, laundryCareSymbolAssetSuccessesCount: %@, autoSymbolAssetSuccessesCount: %@, brandLogoSymbolAssetSuccessesCount: %@, object2DAssetSuccessesCount: %@, barcodeDetectionAssetSuccessesCount: %@, sculptureAssetSuccessesCount: %@, skylineAssetSuccessesCount: %@", v52, v55, v54, v53, v49, v51, v50, v48, v45, v47, v44, v46, v41, v43, v40, v38, v42, v39, v35, v37, v34, v32, v36, v31, v33, v30, v28, v29, v26, v17, v27, v16, v25, v24, v23, v15, v22, v14, v21, v20, v12, v11, v13, v10, v9, v3, v4, v5, v6, v7];

  return v19;
}

- (BMPECProcessed)initWithArtAssetProcessedCount:(id)count natureAssetProcessedCount:(id)processedCount animalsAssetProcessedCount:(id)assetProcessedCount birdsAssetProcessedCount:(id)birdsAssetProcessedCount insectsAssetProcessedCount:(id)insectsAssetProcessedCount reptilesAssetProcessedCount:(id)reptilesAssetProcessedCount mammalsAssetProcessedCount:(id)mammalsAssetProcessedCount landmarkAssetProcessedCount:(id)self0 naturalLandmarkProcessedAssetCount:(id)self1 mediaAssetProcessedCount:(id)self2 bookAssetProcessedCount:(id)self3 albumAssetProcessedCount:(id)self4 catsAssetProcessedCount:(id)self5 dogsAssetProcessedCount:(id)self6 apparelAssetProcessedCount:(id)self7 foodAssetProcessedCount:(id)self8 storefrontAssetProcessedCount:(id)self9 signSymbolAssetProcessedCount:(id)symbolAssetProcessedCount laundryCareSymbolAssetProcessedCount:(id)careSymbolAssetProcessedCount autoSymbolAssetProcessedCount:(id)autoSymbolAssetProcessedCount brandLogoSymbolAssetProcessedCount:(id)logoSymbolAssetProcessedCount object2DAssetProcessedCount:(id)dAssetProcessedCount barcodeDetectionAssetProcessedCount:(id)detectionAssetProcessedCount sculptureAssetProcessedCount:(id)sculptureAssetProcessedCount skylineAssetProcessedCount:(id)skylineAssetProcessedCount artAssetSuccessesCount:(id)successesCount natureAssetSuccessesCount:(id)assetSuccessesCount animalsAssetSuccessesCount:(id)count0 birdsAssetSuccessesCount:(id)count1 insectsAssetSuccessesCount:(id)count2 reptilesAssetSuccessesCount:(id)count3 mammalsAssetSuccessesCount:(id)count4 landmarkAssetSuccessesCount:(id)count5 naturalLandmarkSuccessesAssetCount:(id)count6 mediaAssetSuccessesCount:(id)count7 bookAssetSuccessesCount:(id)count8 albumAssetSuccessesCount:(id)count9 catsAssetSuccessesCount:(id)processedCount0 dogsAssetSuccessesCount:(id)processedCount1 apparelAssetSuccessesCount:(id)processedCount2 foodAssetSuccessesCount:(id)processedCount3 storefrontAssetSuccessesCount:(id)processedCount4 signSymbolAssetSuccessesCount:(id)processedCount5 laundryCareSymbolAssetSuccessesCount:(id)processedCount6 autoSymbolAssetSuccessesCount:(id)processedCount7 brandLogoSymbolAssetSuccessesCount:(id)processedCount8 object2DAssetSuccessesCount:(id)processedCount9 barcodeDetectionAssetSuccessesCount:(id)assetProcessedCount0 sculptureAssetSuccessesCount:(id)assetProcessedCount1 skylineAssetSuccessesCount:(id)assetProcessedCount2
{
  countCopy = count;
  processedCountCopy = processedCount;
  assetProcessedCountCopy = assetProcessedCount;
  birdsAssetProcessedCountCopy = birdsAssetProcessedCount;
  insectsAssetProcessedCountCopy = insectsAssetProcessedCount;
  reptilesAssetProcessedCountCopy = reptilesAssetProcessedCount;
  mammalsAssetProcessedCountCopy = mammalsAssetProcessedCount;
  landmarkAssetProcessedCountCopy = landmarkAssetProcessedCount;
  assetCountCopy = assetCount;
  mediaAssetProcessedCountCopy = mediaAssetProcessedCount;
  bookAssetProcessedCountCopy = bookAssetProcessedCount;
  albumAssetProcessedCountCopy = albumAssetProcessedCount;
  catsAssetProcessedCountCopy = catsAssetProcessedCount;
  dogsAssetProcessedCountCopy = dogsAssetProcessedCount;
  apparelAssetProcessedCountCopy = apparelAssetProcessedCount;
  foodAssetProcessedCountCopy = foodAssetProcessedCount;
  storefrontAssetProcessedCountCopy = storefrontAssetProcessedCount;
  symbolAssetProcessedCountCopy = symbolAssetProcessedCount;
  careSymbolAssetProcessedCountCopy = careSymbolAssetProcessedCount;
  autoSymbolAssetProcessedCountCopy = autoSymbolAssetProcessedCount;
  logoSymbolAssetProcessedCountCopy = logoSymbolAssetProcessedCount;
  dAssetProcessedCountCopy = dAssetProcessedCount;
  detectionAssetProcessedCountCopy = detectionAssetProcessedCount;
  sculptureAssetProcessedCountCopy = sculptureAssetProcessedCount;
  skylineAssetProcessedCountCopy = skylineAssetProcessedCount;
  successesCountCopy = successesCount;
  assetSuccessesCountCopy = assetSuccessesCount;
  animalsAssetSuccessesCountCopy = animalsAssetSuccessesCount;
  birdsAssetSuccessesCountCopy = birdsAssetSuccessesCount;
  insectsAssetSuccessesCountCopy = insectsAssetSuccessesCount;
  reptilesAssetSuccessesCountCopy = reptilesAssetSuccessesCount;
  mammalsAssetSuccessesCountCopy = mammalsAssetSuccessesCount;
  landmarkAssetSuccessesCountCopy = landmarkAssetSuccessesCount;
  successesAssetCountCopy = successesAssetCount;
  mediaAssetSuccessesCountCopy = mediaAssetSuccessesCount;
  bookAssetSuccessesCountCopy = bookAssetSuccessesCount;
  albumAssetSuccessesCountCopy = albumAssetSuccessesCount;
  catsAssetSuccessesCountCopy = catsAssetSuccessesCount;
  dogsAssetSuccessesCountCopy = dogsAssetSuccessesCount;
  apparelAssetSuccessesCountCopy = apparelAssetSuccessesCount;
  foodAssetSuccessesCountCopy = foodAssetSuccessesCount;
  storefrontAssetSuccessesCountCopy = storefrontAssetSuccessesCount;
  symbolAssetSuccessesCountCopy = symbolAssetSuccessesCount;
  careSymbolAssetSuccessesCountCopy = careSymbolAssetSuccessesCount;
  autoSymbolAssetSuccessesCountCopy = autoSymbolAssetSuccessesCount;
  logoSymbolAssetSuccessesCountCopy = logoSymbolAssetSuccessesCount;
  dAssetSuccessesCountCopy = dAssetSuccessesCount;
  detectionAssetSuccessesCountCopy = detectionAssetSuccessesCount;
  sculptureAssetSuccessesCountCopy = sculptureAssetSuccessesCount;
  skylineAssetSuccessesCountCopy = skylineAssetSuccessesCount;
  v161.receiver = self;
  v161.super_class = BMPECProcessed;
  v65 = [(BMEventBase *)&v161 init];

  if (v65)
  {
    v65->_dataVersion = [objc_opt_class() latestDataVersion];
    if (countCopy)
    {
      v65->_hasArtAssetProcessedCount = 1;
      intValue = [countCopy intValue];
    }

    else
    {
      v65->_hasArtAssetProcessedCount = 0;
      intValue = -1;
    }

    v65->_artAssetProcessedCount = intValue;
    if (processedCountCopy)
    {
      v65->_hasNatureAssetProcessedCount = 1;
      intValue2 = [processedCountCopy intValue];
    }

    else
    {
      v65->_hasNatureAssetProcessedCount = 0;
      intValue2 = -1;
    }

    v65->_natureAssetProcessedCount = intValue2;
    if (assetProcessedCountCopy)
    {
      v65->_hasAnimalsAssetProcessedCount = 1;
      intValue3 = [assetProcessedCountCopy intValue];
    }

    else
    {
      v65->_hasAnimalsAssetProcessedCount = 0;
      intValue3 = -1;
    }

    v65->_animalsAssetProcessedCount = intValue3;
    if (birdsAssetProcessedCountCopy)
    {
      v65->_hasBirdsAssetProcessedCount = 1;
      intValue4 = [birdsAssetProcessedCountCopy intValue];
    }

    else
    {
      v65->_hasBirdsAssetProcessedCount = 0;
      intValue4 = -1;
    }

    v65->_birdsAssetProcessedCount = intValue4;
    if (insectsAssetProcessedCountCopy)
    {
      v65->_hasInsectsAssetProcessedCount = 1;
      intValue5 = [insectsAssetProcessedCountCopy intValue];
    }

    else
    {
      v65->_hasInsectsAssetProcessedCount = 0;
      intValue5 = -1;
    }

    v65->_insectsAssetProcessedCount = intValue5;
    if (reptilesAssetProcessedCountCopy)
    {
      v65->_hasReptilesAssetProcessedCount = 1;
      intValue6 = [reptilesAssetProcessedCountCopy intValue];
    }

    else
    {
      v65->_hasReptilesAssetProcessedCount = 0;
      intValue6 = -1;
    }

    v65->_reptilesAssetProcessedCount = intValue6;
    if (mammalsAssetProcessedCountCopy)
    {
      v65->_hasMammalsAssetProcessedCount = 1;
      intValue7 = [mammalsAssetProcessedCountCopy intValue];
    }

    else
    {
      v65->_hasMammalsAssetProcessedCount = 0;
      intValue7 = -1;
    }

    v65->_mammalsAssetProcessedCount = intValue7;
    if (landmarkAssetProcessedCountCopy)
    {
      v65->_hasLandmarkAssetProcessedCount = 1;
      intValue8 = [landmarkAssetProcessedCountCopy intValue];
    }

    else
    {
      v65->_hasLandmarkAssetProcessedCount = 0;
      intValue8 = -1;
    }

    v65->_landmarkAssetProcessedCount = intValue8;
    if (assetCountCopy)
    {
      v65->_hasNaturalLandmarkProcessedAssetCount = 1;
      intValue9 = [assetCountCopy intValue];
    }

    else
    {
      v65->_hasNaturalLandmarkProcessedAssetCount = 0;
      intValue9 = -1;
    }

    v65->_naturalLandmarkProcessedAssetCount = intValue9;
    if (mediaAssetProcessedCountCopy)
    {
      v65->_hasMediaAssetProcessedCount = 1;
      intValue10 = [mediaAssetProcessedCountCopy intValue];
    }

    else
    {
      v65->_hasMediaAssetProcessedCount = 0;
      intValue10 = -1;
    }

    v65->_mediaAssetProcessedCount = intValue10;
    if (bookAssetProcessedCountCopy)
    {
      v65->_hasBookAssetProcessedCount = 1;
      intValue11 = [bookAssetProcessedCountCopy intValue];
    }

    else
    {
      v65->_hasBookAssetProcessedCount = 0;
      intValue11 = -1;
    }

    v65->_bookAssetProcessedCount = intValue11;
    if (albumAssetProcessedCountCopy)
    {
      v65->_hasAlbumAssetProcessedCount = 1;
      intValue12 = [albumAssetProcessedCountCopy intValue];
    }

    else
    {
      v65->_hasAlbumAssetProcessedCount = 0;
      intValue12 = -1;
    }

    v65->_albumAssetProcessedCount = intValue12;
    if (catsAssetProcessedCountCopy)
    {
      v65->_hasCatsAssetProcessedCount = 1;
      intValue13 = [catsAssetProcessedCountCopy intValue];
    }

    else
    {
      v65->_hasCatsAssetProcessedCount = 0;
      intValue13 = -1;
    }

    v65->_catsAssetProcessedCount = intValue13;
    if (dogsAssetProcessedCountCopy)
    {
      v65->_hasDogsAssetProcessedCount = 1;
      intValue14 = [dogsAssetProcessedCountCopy intValue];
    }

    else
    {
      v65->_hasDogsAssetProcessedCount = 0;
      intValue14 = -1;
    }

    v65->_dogsAssetProcessedCount = intValue14;
    if (apparelAssetProcessedCountCopy)
    {
      v65->_hasApparelAssetProcessedCount = 1;
      intValue15 = [apparelAssetProcessedCountCopy intValue];
    }

    else
    {
      v65->_hasApparelAssetProcessedCount = 0;
      intValue15 = -1;
    }

    v65->_apparelAssetProcessedCount = intValue15;
    if (foodAssetProcessedCountCopy)
    {
      v65->_hasFoodAssetProcessedCount = 1;
      intValue16 = [foodAssetProcessedCountCopy intValue];
    }

    else
    {
      v65->_hasFoodAssetProcessedCount = 0;
      intValue16 = -1;
    }

    v65->_foodAssetProcessedCount = intValue16;
    if (storefrontAssetProcessedCountCopy)
    {
      v65->_hasStorefrontAssetProcessedCount = 1;
      intValue17 = [storefrontAssetProcessedCountCopy intValue];
    }

    else
    {
      v65->_hasStorefrontAssetProcessedCount = 0;
      intValue17 = -1;
    }

    v65->_storefrontAssetProcessedCount = intValue17;
    if (symbolAssetProcessedCountCopy)
    {
      v65->_hasSignSymbolAssetProcessedCount = 1;
      intValue18 = [symbolAssetProcessedCountCopy intValue];
    }

    else
    {
      v65->_hasSignSymbolAssetProcessedCount = 0;
      intValue18 = -1;
    }

    v65->_signSymbolAssetProcessedCount = intValue18;
    if (careSymbolAssetProcessedCountCopy)
    {
      v65->_hasLaundryCareSymbolAssetProcessedCount = 1;
      intValue19 = [careSymbolAssetProcessedCountCopy intValue];
    }

    else
    {
      v65->_hasLaundryCareSymbolAssetProcessedCount = 0;
      intValue19 = -1;
    }

    v65->_laundryCareSymbolAssetProcessedCount = intValue19;
    if (autoSymbolAssetProcessedCountCopy)
    {
      v65->_hasAutoSymbolAssetProcessedCount = 1;
      intValue20 = [autoSymbolAssetProcessedCountCopy intValue];
    }

    else
    {
      v65->_hasAutoSymbolAssetProcessedCount = 0;
      intValue20 = -1;
    }

    v65->_autoSymbolAssetProcessedCount = intValue20;
    if (logoSymbolAssetProcessedCountCopy)
    {
      v65->_hasBrandLogoSymbolAssetProcessedCount = 1;
      intValue21 = [logoSymbolAssetProcessedCountCopy intValue];
    }

    else
    {
      v65->_hasBrandLogoSymbolAssetProcessedCount = 0;
      intValue21 = -1;
    }

    v65->_brandLogoSymbolAssetProcessedCount = intValue21;
    if (dAssetProcessedCountCopy)
    {
      v65->_hasObject2DAssetProcessedCount = 1;
      intValue22 = [dAssetProcessedCountCopy intValue];
    }

    else
    {
      v65->_hasObject2DAssetProcessedCount = 0;
      intValue22 = -1;
    }

    v65->_object2DAssetProcessedCount = intValue22;
    if (detectionAssetProcessedCountCopy)
    {
      v65->_hasBarcodeDetectionAssetProcessedCount = 1;
      intValue23 = [detectionAssetProcessedCountCopy intValue];
    }

    else
    {
      v65->_hasBarcodeDetectionAssetProcessedCount = 0;
      intValue23 = -1;
    }

    v65->_barcodeDetectionAssetProcessedCount = intValue23;
    if (sculptureAssetProcessedCountCopy)
    {
      v65->_hasSculptureAssetProcessedCount = 1;
      intValue24 = [sculptureAssetProcessedCountCopy intValue];
    }

    else
    {
      v65->_hasSculptureAssetProcessedCount = 0;
      intValue24 = -1;
    }

    v65->_sculptureAssetProcessedCount = intValue24;
    if (skylineAssetProcessedCountCopy)
    {
      v65->_hasSkylineAssetProcessedCount = 1;
      intValue25 = [skylineAssetProcessedCountCopy intValue];
    }

    else
    {
      v65->_hasSkylineAssetProcessedCount = 0;
      intValue25 = -1;
    }

    v65->_skylineAssetProcessedCount = intValue25;
    if (successesCountCopy)
    {
      v65->_hasArtAssetSuccessesCount = 1;
      intValue26 = [successesCountCopy intValue];
    }

    else
    {
      v65->_hasArtAssetSuccessesCount = 0;
      intValue26 = -1;
    }

    v65->_artAssetSuccessesCount = intValue26;
    if (assetSuccessesCountCopy)
    {
      v65->_hasNatureAssetSuccessesCount = 1;
      intValue27 = [assetSuccessesCountCopy intValue];
    }

    else
    {
      v65->_hasNatureAssetSuccessesCount = 0;
      intValue27 = -1;
    }

    v65->_natureAssetSuccessesCount = intValue27;
    if (animalsAssetSuccessesCountCopy)
    {
      v65->_hasAnimalsAssetSuccessesCount = 1;
      intValue28 = [animalsAssetSuccessesCountCopy intValue];
    }

    else
    {
      v65->_hasAnimalsAssetSuccessesCount = 0;
      intValue28 = -1;
    }

    v65->_animalsAssetSuccessesCount = intValue28;
    if (birdsAssetSuccessesCountCopy)
    {
      v65->_hasBirdsAssetSuccessesCount = 1;
      intValue29 = [birdsAssetSuccessesCountCopy intValue];
    }

    else
    {
      v65->_hasBirdsAssetSuccessesCount = 0;
      intValue29 = -1;
    }

    v65->_birdsAssetSuccessesCount = intValue29;
    if (insectsAssetSuccessesCountCopy)
    {
      v65->_hasInsectsAssetSuccessesCount = 1;
      intValue30 = [insectsAssetSuccessesCountCopy intValue];
    }

    else
    {
      v65->_hasInsectsAssetSuccessesCount = 0;
      intValue30 = -1;
    }

    v65->_insectsAssetSuccessesCount = intValue30;
    if (reptilesAssetSuccessesCountCopy)
    {
      v65->_hasReptilesAssetSuccessesCount = 1;
      intValue31 = [reptilesAssetSuccessesCountCopy intValue];
    }

    else
    {
      v65->_hasReptilesAssetSuccessesCount = 0;
      intValue31 = -1;
    }

    v65->_reptilesAssetSuccessesCount = intValue31;
    if (mammalsAssetSuccessesCountCopy)
    {
      v65->_hasMammalsAssetSuccessesCount = 1;
      intValue32 = [mammalsAssetSuccessesCountCopy intValue];
    }

    else
    {
      v65->_hasMammalsAssetSuccessesCount = 0;
      intValue32 = -1;
    }

    v65->_mammalsAssetSuccessesCount = intValue32;
    if (landmarkAssetSuccessesCountCopy)
    {
      v65->_hasLandmarkAssetSuccessesCount = 1;
      intValue33 = [landmarkAssetSuccessesCountCopy intValue];
    }

    else
    {
      v65->_hasLandmarkAssetSuccessesCount = 0;
      intValue33 = -1;
    }

    v65->_landmarkAssetSuccessesCount = intValue33;
    if (successesAssetCountCopy)
    {
      v65->_hasNaturalLandmarkSuccessesAssetCount = 1;
      intValue34 = [successesAssetCountCopy intValue];
    }

    else
    {
      v65->_hasNaturalLandmarkSuccessesAssetCount = 0;
      intValue34 = -1;
    }

    v65->_naturalLandmarkSuccessesAssetCount = intValue34;
    if (mediaAssetSuccessesCountCopy)
    {
      v65->_hasMediaAssetSuccessesCount = 1;
      intValue35 = [mediaAssetSuccessesCountCopy intValue];
    }

    else
    {
      v65->_hasMediaAssetSuccessesCount = 0;
      intValue35 = -1;
    }

    v65->_mediaAssetSuccessesCount = intValue35;
    if (bookAssetSuccessesCountCopy)
    {
      v65->_hasBookAssetSuccessesCount = 1;
      intValue36 = [bookAssetSuccessesCountCopy intValue];
    }

    else
    {
      v65->_hasBookAssetSuccessesCount = 0;
      intValue36 = -1;
    }

    v65->_bookAssetSuccessesCount = intValue36;
    if (albumAssetSuccessesCountCopy)
    {
      v65->_hasAlbumAssetSuccessesCount = 1;
      intValue37 = [albumAssetSuccessesCountCopy intValue];
    }

    else
    {
      v65->_hasAlbumAssetSuccessesCount = 0;
      intValue37 = -1;
    }

    v65->_albumAssetSuccessesCount = intValue37;
    if (catsAssetSuccessesCountCopy)
    {
      v65->_hasCatsAssetSuccessesCount = 1;
      intValue38 = [catsAssetSuccessesCountCopy intValue];
    }

    else
    {
      v65->_hasCatsAssetSuccessesCount = 0;
      intValue38 = -1;
    }

    v65->_catsAssetSuccessesCount = intValue38;
    if (dogsAssetSuccessesCountCopy)
    {
      v65->_hasDogsAssetSuccessesCount = 1;
      intValue39 = [dogsAssetSuccessesCountCopy intValue];
    }

    else
    {
      v65->_hasDogsAssetSuccessesCount = 0;
      intValue39 = -1;
    }

    v65->_dogsAssetSuccessesCount = intValue39;
    if (apparelAssetSuccessesCountCopy)
    {
      v65->_hasApparelAssetSuccessesCount = 1;
      intValue40 = [apparelAssetSuccessesCountCopy intValue];
    }

    else
    {
      v65->_hasApparelAssetSuccessesCount = 0;
      intValue40 = -1;
    }

    v65->_apparelAssetSuccessesCount = intValue40;
    if (foodAssetSuccessesCountCopy)
    {
      v65->_hasFoodAssetSuccessesCount = 1;
      intValue41 = [foodAssetSuccessesCountCopy intValue];
    }

    else
    {
      v65->_hasFoodAssetSuccessesCount = 0;
      intValue41 = -1;
    }

    v65->_foodAssetSuccessesCount = intValue41;
    if (storefrontAssetSuccessesCountCopy)
    {
      v65->_hasStorefrontAssetSuccessesCount = 1;
      intValue42 = [storefrontAssetSuccessesCountCopy intValue];
    }

    else
    {
      v65->_hasStorefrontAssetSuccessesCount = 0;
      intValue42 = -1;
    }

    v65->_storefrontAssetSuccessesCount = intValue42;
    if (symbolAssetSuccessesCountCopy)
    {
      v65->_hasSignSymbolAssetSuccessesCount = 1;
      intValue43 = [symbolAssetSuccessesCountCopy intValue];
    }

    else
    {
      v65->_hasSignSymbolAssetSuccessesCount = 0;
      intValue43 = -1;
    }

    v65->_signSymbolAssetSuccessesCount = intValue43;
    if (careSymbolAssetSuccessesCountCopy)
    {
      v65->_hasLaundryCareSymbolAssetSuccessesCount = 1;
      intValue44 = [careSymbolAssetSuccessesCountCopy intValue];
    }

    else
    {
      v65->_hasLaundryCareSymbolAssetSuccessesCount = 0;
      intValue44 = -1;
    }

    v65->_laundryCareSymbolAssetSuccessesCount = intValue44;
    if (autoSymbolAssetSuccessesCountCopy)
    {
      v65->_hasAutoSymbolAssetSuccessesCount = 1;
      intValue45 = [autoSymbolAssetSuccessesCountCopy intValue];
    }

    else
    {
      v65->_hasAutoSymbolAssetSuccessesCount = 0;
      intValue45 = -1;
    }

    v65->_autoSymbolAssetSuccessesCount = intValue45;
    if (logoSymbolAssetSuccessesCountCopy)
    {
      v65->_hasBrandLogoSymbolAssetSuccessesCount = 1;
      intValue46 = [logoSymbolAssetSuccessesCountCopy intValue];
    }

    else
    {
      v65->_hasBrandLogoSymbolAssetSuccessesCount = 0;
      intValue46 = -1;
    }

    v65->_brandLogoSymbolAssetSuccessesCount = intValue46;
    if (dAssetSuccessesCountCopy)
    {
      v65->_hasObject2DAssetSuccessesCount = 1;
      intValue47 = [dAssetSuccessesCountCopy intValue];
    }

    else
    {
      v65->_hasObject2DAssetSuccessesCount = 0;
      intValue47 = -1;
    }

    v65->_object2DAssetSuccessesCount = intValue47;
    if (detectionAssetSuccessesCountCopy)
    {
      v65->_hasBarcodeDetectionAssetSuccessesCount = 1;
      intValue48 = [detectionAssetSuccessesCountCopy intValue];
    }

    else
    {
      v65->_hasBarcodeDetectionAssetSuccessesCount = 0;
      intValue48 = -1;
    }

    v65->_barcodeDetectionAssetSuccessesCount = intValue48;
    if (sculptureAssetSuccessesCountCopy)
    {
      v65->_hasSculptureAssetSuccessesCount = 1;
      intValue49 = [sculptureAssetSuccessesCountCopy intValue];
    }

    else
    {
      v65->_hasSculptureAssetSuccessesCount = 0;
      intValue49 = -1;
    }

    v65->_sculptureAssetSuccessesCount = intValue49;
    if (skylineAssetSuccessesCountCopy)
    {
      v65->_hasSkylineAssetSuccessesCount = 1;
      intValue50 = [skylineAssetSuccessesCountCopy intValue];
    }

    else
    {
      v65->_hasSkylineAssetSuccessesCount = 0;
      intValue50 = -1;
    }

    v65->_skylineAssetSuccessesCount = intValue50;
  }

  v116 = v65;

  return v116;
}

+ (id)protoFields
{
  v54[50] = *MEMORY[0x1E69E9840];
  v53 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"artAssetProcessedCount" number:1 type:2 subMessageClass:0];
  v54[0] = v53;
  v52 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"natureAssetProcessedCount" number:2 type:2 subMessageClass:0];
  v54[1] = v52;
  v51 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"animalsAssetProcessedCount" number:3 type:2 subMessageClass:0];
  v54[2] = v51;
  v50 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"birdsAssetProcessedCount" number:4 type:2 subMessageClass:0];
  v54[3] = v50;
  v49 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"insectsAssetProcessedCount" number:5 type:2 subMessageClass:0];
  v54[4] = v49;
  v48 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"reptilesAssetProcessedCount" number:6 type:2 subMessageClass:0];
  v54[5] = v48;
  v47 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mammalsAssetProcessedCount" number:7 type:2 subMessageClass:0];
  v54[6] = v47;
  v46 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"landmarkAssetProcessedCount" number:8 type:2 subMessageClass:0];
  v54[7] = v46;
  v45 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"naturalLandmarkProcessedAssetCount" number:9 type:2 subMessageClass:0];
  v54[8] = v45;
  v44 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mediaAssetProcessedCount" number:10 type:2 subMessageClass:0];
  v54[9] = v44;
  v43 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bookAssetProcessedCount" number:11 type:2 subMessageClass:0];
  v54[10] = v43;
  v42 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"albumAssetProcessedCount" number:12 type:2 subMessageClass:0];
  v54[11] = v42;
  v41 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"catsAssetProcessedCount" number:13 type:2 subMessageClass:0];
  v54[12] = v41;
  v40 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dogsAssetProcessedCount" number:14 type:2 subMessageClass:0];
  v54[13] = v40;
  v39 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"apparelAssetProcessedCount" number:15 type:2 subMessageClass:0];
  v54[14] = v39;
  v38 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"foodAssetProcessedCount" number:16 type:2 subMessageClass:0];
  v54[15] = v38;
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"storefrontAssetProcessedCount" number:17 type:2 subMessageClass:0];
  v54[16] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"signSymbolAssetProcessedCount" number:18 type:2 subMessageClass:0];
  v54[17] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"laundryCareSymbolAssetProcessedCount" number:19 type:2 subMessageClass:0];
  v54[18] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"autoSymbolAssetProcessedCount" number:20 type:2 subMessageClass:0];
  v54[19] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brandLogoSymbolAssetProcessedCount" number:21 type:2 subMessageClass:0];
  v54[20] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"object2DAssetProcessedCount" number:22 type:2 subMessageClass:0];
  v54[21] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"barcodeDetectionAssetProcessedCount" number:23 type:2 subMessageClass:0];
  v54[22] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sculptureAssetProcessedCount" number:24 type:2 subMessageClass:0];
  v54[23] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"skylineAssetProcessedCount" number:25 type:2 subMessageClass:0];
  v54[24] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"artAssetSuccessesCount" number:26 type:2 subMessageClass:0];
  v54[25] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"natureAssetSuccessesCount" number:27 type:2 subMessageClass:0];
  v54[26] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"animalsAssetSuccessesCount" number:28 type:2 subMessageClass:0];
  v54[27] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"birdsAssetSuccessesCount" number:29 type:2 subMessageClass:0];
  v54[28] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"insectsAssetSuccessesCount" number:30 type:2 subMessageClass:0];
  v54[29] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"reptilesAssetSuccessesCount" number:31 type:2 subMessageClass:0];
  v54[30] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mammalsAssetSuccessesCount" number:32 type:2 subMessageClass:0];
  v54[31] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"landmarkAssetSuccessesCount" number:33 type:2 subMessageClass:0];
  v54[32] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"naturalLandmarkSuccessesAssetCount" number:34 type:2 subMessageClass:0];
  v54[33] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mediaAssetSuccessesCount" number:35 type:2 subMessageClass:0];
  v54[34] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bookAssetSuccessesCount" number:36 type:2 subMessageClass:0];
  v54[35] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"albumAssetSuccessesCount" number:37 type:2 subMessageClass:0];
  v54[36] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"catsAssetSuccessesCount" number:38 type:2 subMessageClass:0];
  v54[37] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dogsAssetSuccessesCount" number:39 type:2 subMessageClass:0];
  v54[38] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"apparelAssetSuccessesCount" number:40 type:2 subMessageClass:0];
  v54[39] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"foodAssetSuccessesCount" number:41 type:2 subMessageClass:0];
  v54[40] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"storefrontAssetSuccessesCount" number:42 type:2 subMessageClass:0];
  v54[41] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"signSymbolAssetSuccessesCount" number:43 type:2 subMessageClass:0];
  v54[42] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"laundryCareSymbolAssetSuccessesCount" number:44 type:2 subMessageClass:0];
  v54[43] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"autoSymbolAssetSuccessesCount" number:45 type:2 subMessageClass:0];
  v54[44] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"brandLogoSymbolAssetSuccessesCount" number:46 type:2 subMessageClass:0];
  v54[45] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"object2DAssetSuccessesCount" number:47 type:2 subMessageClass:0];
  v54[46] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"barcodeDetectionAssetSuccessesCount" number:48 type:2 subMessageClass:0];
  v54[47] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sculptureAssetSuccessesCount" number:49 type:2 subMessageClass:0];
  v54[48] = v10;
  v11 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"skylineAssetSuccessesCount" number:50 type:2 subMessageClass:0];
  v54[49] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:50];

  return v13;
}

+ (id)columns
{
  v54[50] = *MEMORY[0x1E69E9840];
  v52 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"artAssetProcessedCount" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:2 convertedType:0];
  v53 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"natureAssetProcessedCount" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:2 convertedType:0];
  v51 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"animalsAssetProcessedCount" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v50 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"birdsAssetProcessedCount" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v49 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"insectsAssetProcessedCount" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:2 convertedType:0];
  v48 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"reptilesAssetProcessedCount" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:2 convertedType:0];
  v47 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mammalsAssetProcessedCount" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:2 convertedType:0];
  v46 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"landmarkAssetProcessedCount" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:2 convertedType:0];
  v45 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"naturalLandmarkProcessedAssetCount" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:2 convertedType:0];
  v44 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mediaAssetProcessedCount" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:2 convertedType:0];
  v43 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bookAssetProcessedCount" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:2 convertedType:0];
  v42 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"albumAssetProcessedCount" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:2 convertedType:0];
  v41 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"catsAssetProcessedCount" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:2 convertedType:0];
  v40 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dogsAssetProcessedCount" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:2 convertedType:0];
  v39 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"apparelAssetProcessedCount" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:2 convertedType:0];
  v38 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"foodAssetProcessedCount" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:2 convertedType:0];
  v37 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"storefrontAssetProcessedCount" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:2 convertedType:0];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"signSymbolAssetProcessedCount" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:2 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"laundryCareSymbolAssetProcessedCount" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:2 convertedType:0];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"autoSymbolAssetProcessedCount" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:2 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brandLogoSymbolAssetProcessedCount" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:2 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"object2DAssetProcessedCount" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:2 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"barcodeDetectionAssetProcessedCount" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:2 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sculptureAssetProcessedCount" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:2 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"skylineAssetProcessedCount" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:2 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"artAssetSuccessesCount" dataType:0 requestOnly:0 fieldNumber:26 protoDataType:2 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"natureAssetSuccessesCount" dataType:0 requestOnly:0 fieldNumber:27 protoDataType:2 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"animalsAssetSuccessesCount" dataType:0 requestOnly:0 fieldNumber:28 protoDataType:2 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"birdsAssetSuccessesCount" dataType:0 requestOnly:0 fieldNumber:29 protoDataType:2 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"insectsAssetSuccessesCount" dataType:0 requestOnly:0 fieldNumber:30 protoDataType:2 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"reptilesAssetSuccessesCount" dataType:0 requestOnly:0 fieldNumber:31 protoDataType:2 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mammalsAssetSuccessesCount" dataType:0 requestOnly:0 fieldNumber:32 protoDataType:2 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"landmarkAssetSuccessesCount" dataType:0 requestOnly:0 fieldNumber:33 protoDataType:2 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"naturalLandmarkSuccessesAssetCount" dataType:0 requestOnly:0 fieldNumber:34 protoDataType:2 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mediaAssetSuccessesCount" dataType:0 requestOnly:0 fieldNumber:35 protoDataType:2 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bookAssetSuccessesCount" dataType:0 requestOnly:0 fieldNumber:36 protoDataType:2 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"albumAssetSuccessesCount" dataType:0 requestOnly:0 fieldNumber:37 protoDataType:2 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"catsAssetSuccessesCount" dataType:0 requestOnly:0 fieldNumber:38 protoDataType:2 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dogsAssetSuccessesCount" dataType:0 requestOnly:0 fieldNumber:39 protoDataType:2 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"apparelAssetSuccessesCount" dataType:0 requestOnly:0 fieldNumber:40 protoDataType:2 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"foodAssetSuccessesCount" dataType:0 requestOnly:0 fieldNumber:41 protoDataType:2 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"storefrontAssetSuccessesCount" dataType:0 requestOnly:0 fieldNumber:42 protoDataType:2 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"signSymbolAssetSuccessesCount" dataType:0 requestOnly:0 fieldNumber:43 protoDataType:2 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"laundryCareSymbolAssetSuccessesCount" dataType:0 requestOnly:0 fieldNumber:44 protoDataType:2 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"autoSymbolAssetSuccessesCount" dataType:0 requestOnly:0 fieldNumber:45 protoDataType:2 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"brandLogoSymbolAssetSuccessesCount" dataType:0 requestOnly:0 fieldNumber:46 protoDataType:2 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"object2DAssetSuccessesCount" dataType:0 requestOnly:0 fieldNumber:47 protoDataType:2 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"barcodeDetectionAssetSuccessesCount" dataType:0 requestOnly:0 fieldNumber:48 protoDataType:2 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sculptureAssetSuccessesCount" dataType:0 requestOnly:0 fieldNumber:49 protoDataType:2 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"skylineAssetSuccessesCount" dataType:0 requestOnly:0 fieldNumber:50 protoDataType:2 convertedType:0];
  v54[0] = v52;
  v54[1] = v53;
  v54[2] = v51;
  v54[3] = v50;
  v54[4] = v49;
  v54[5] = v48;
  v54[6] = v47;
  v54[7] = v46;
  v54[8] = v45;
  v54[9] = v44;
  v54[10] = v43;
  v54[11] = v42;
  v54[12] = v41;
  v54[13] = v40;
  v54[14] = v39;
  v54[15] = v38;
  v54[16] = v37;
  v54[17] = v36;
  v54[18] = v35;
  v54[19] = v34;
  v54[20] = v33;
  v54[21] = v32;
  v54[22] = v31;
  v54[23] = v30;
  v54[24] = v29;
  v54[25] = v28;
  v54[26] = v27;
  v54[27] = v26;
  v54[28] = v25;
  v54[29] = v24;
  v54[30] = v23;
  v54[31] = v22;
  v54[32] = v21;
  v54[33] = v20;
  v54[34] = v19;
  v54[35] = v18;
  v54[36] = v17;
  v54[37] = v16;
  v54[38] = v15;
  v54[39] = v14;
  v54[40] = v2;
  v54[41] = v3;
  v54[42] = v4;
  v54[43] = v5;
  v54[44] = v6;
  v54[45] = v7;
  v54[46] = v8;
  v54[47] = v9;
  v54[48] = v13;
  v54[49] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:50];

  return v12;
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

    v8 = [[BMPECProcessed alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[17] = 0;
    }
  }

  return v4;
}

@end