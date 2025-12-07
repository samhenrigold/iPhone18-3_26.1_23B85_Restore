@interface SHMediaItemPropertyUtilities
+ (BOOL)isShazamKitDefinedMediaItemProperty:(id)property;
+ (Class)jsonRepresentationTypeForProperty:(id)property;
+ (Class)typeForShazamKitProperty:(id)property;
+ (int64_t)categoryForShazamKitProperty:(id)property;
+ (void)buildPropertySets;
@end

@implementation SHMediaItemPropertyUtilities

+ (int64_t)categoryForShazamKitProperty:(id)property
{
  propertyCopy = property;
  [self buildPropertySets];
  if ([stringProperties containsObject:propertyCopy])
  {
    v5 = 0;
  }

  else if ([URLProperties containsObject:propertyCopy])
  {
    v5 = 4;
  }

  else if ([dateProperties containsObject:propertyCopy])
  {
    v5 = 3;
  }

  else if ([numberProperties containsObject:propertyCopy])
  {
    v5 = 1;
  }

  else if ([stringArrayProperties containsObject:propertyCopy])
  {
    v5 = 5;
  }

  else if ([rangeArrayProperties containsObject:propertyCopy])
  {
    v5 = 6;
  }

  else if ([BOOLeanProperties containsObject:propertyCopy])
  {
    v5 = 2;
  }

  else if ([uuidProperties containsObject:propertyCopy])
  {
    v5 = 7;
  }

  else if ([signatureAlignmentArrayProperties containsObject:propertyCopy])
  {
    v5 = 8;
  }

  else if ([locationCoordinateValueProperties containsObject:propertyCopy])
  {
    v5 = 9;
  }

  else if ([codableDictionaryProperties containsObject:propertyCopy])
  {
    v5 = 10;
  }

  else
  {
    v5 = 11;
  }

  return v5;
}

+ (BOOL)isShazamKitDefinedMediaItemProperty:(id)property
{
  propertyCopy = property;
  [self buildPropertySets];
  LOBYTE(self) = [allProperties containsObject:propertyCopy];

  return self;
}

+ (Class)jsonRepresentationTypeForProperty:(id)property
{
  v3 = [self typeForShazamKitProperty:property];
  if (v3 == objc_opt_class() || v3 == objc_opt_class() || v3 == objc_opt_class())
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

+ (Class)typeForShazamKitProperty:(id)property
{
  propertyCopy = property;
  v5 = [self categoryForShazamKitProperty:propertyCopy];
  if (v5 <= 4)
  {
    if (v5 > 2 || (v5 - 1) < 2 || !v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= 7)
  {
    if ((v5 - 5) < 2 || v5 == 7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v5 <= 9 || v5 == 10)
    {
LABEL_16:
      self = objc_opt_class();
      goto LABEL_17;
    }

    if (v5 == 11)
    {
      v7 = MEMORY[0x277CBEAD8];
      v8 = *MEMORY[0x277CBE660];
      propertyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Encountered ShazamKit property that we did know the type of: %@", propertyCopy];
      v10 = [v7 exceptionWithName:v8 reason:propertyCopy userInfo:0];
      v11 = v10;

      objc_exception_throw(v10);
    }
  }

LABEL_17:

  return self;
}

+ (void)buildPropertySets
{
  if (buildPropertySets_onceToken != -1)
  {
    +[SHMediaItemPropertyUtilities buildPropertySets];
  }
}

void __49__SHMediaItemPropertyUtilities_buildPropertySets__block_invoke()
{
  v57[10] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v57[0] = @"sh_lyricsSnippet";
  v57[1] = @"sh_albumName";
  v57[2] = @"sh_isrc";
  v57[3] = @"sh_appleMusicID";
  v57[4] = @"sh_artist";
  v57[5] = @"sh_subtitle";
  v57[6] = @"sh_title";
  v57[7] = @"sh_shazamID";
  v57[8] = @"sh_syncedLyricsSnippet";
  v57[9] = @"sh_providerIdentifier";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:10];
  v2 = [v0 setWithArray:v1];
  v3 = stringProperties;
  stringProperties = v2;

  v4 = MEMORY[0x277CBEB98];
  v56[0] = @"sh_webURL";
  v56[1] = @"sh_appleMusicURL";
  v56[2] = @"sh_artworkURL";
  v56[3] = @"sh_videoURL";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:4];
  v6 = [v4 setWithArray:v5];
  v7 = URLProperties;
  URLProperties = v6;

  v8 = MEMORY[0x277CBEB98];
  v55[0] = @"sh_releaseDate";
  v55[1] = @"sh_audioStartDate";
  v55[2] = @"sh_creationDate";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:3];
  v10 = [v8 setWithArray:v9];
  v11 = dateProperties;
  dateProperties = v10;

  v12 = MEMORY[0x277CBEB98];
  v54[0] = @"sh_matchOffset";
  v54[1] = @"sh_speedSkew";
  v54[2] = @"sh_frequencySkew";
  v54[3] = @"sh_score";
  v54[4] = @"sh_shazamCount";
  v54[5] = @"sh_duration";
  v54[6] = @"sh_confidence";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:7];
  v14 = [v12 setWithArray:v13];
  v15 = numberProperties;
  numberProperties = v14;

  v16 = MEMORY[0x277CBEB98];
  v53[0] = @"sh_genres";
  v53[1] = @"sh_staticLyricLines";
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
  v18 = [v16 setWithArray:v17];
  v19 = stringArrayProperties;
  stringArrayProperties = v18;

  v20 = MEMORY[0x277CBEB98];
  v52[0] = @"sh_timeRanges";
  v52[1] = @"sh_timeRanges_Swift";
  v52[2] = @"sh_frequencySkewRanges";
  v52[3] = @"sh_frequencySkewRanges_Swift";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:4];
  v22 = [v20 setWithArray:v21];
  v23 = rangeArrayProperties;
  rangeArrayProperties = v22;

  v24 = MEMORY[0x277CBEB98];
  v51 = @"sh_signatureAlignments";
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
  v26 = [v24 setWithArray:v25];
  v27 = signatureAlignmentArrayProperties;
  signatureAlignmentArrayProperties = v26;

  v28 = MEMORY[0x277CBEB98];
  v50 = @"sh_explicitContent";
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
  v30 = [v28 setWithArray:v29];
  v31 = BOOLeanProperties;
  BOOLeanProperties = v30;

  v32 = MEMORY[0x277CBEB98];
  v49 = @"sh_identifier";
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
  v34 = [v32 setWithArray:v33];
  v35 = uuidProperties;
  uuidProperties = v34;

  v36 = MEMORY[0x277CBEB98];
  v48[0] = @"sh_matchLocationCoordinate_Swift";
  v48[1] = @"sh_matchLocationCoordinate";
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
  v38 = [v36 setWithArray:v37];
  v39 = locationCoordinateValueProperties;
  locationCoordinateValueProperties = v38;

  v40 = MEMORY[0x277CBEB98];
  v47 = @"sh_artworkDictionary";
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
  v42 = [v40 setWithArray:v41];
  v43 = codableDictionaryProperties;
  codableDictionaryProperties = v42;

  v44 = [MEMORY[0x277CBEB58] set];
  [v44 unionSet:stringProperties];
  [v44 unionSet:URLProperties];
  [v44 unionSet:dateProperties];
  [v44 unionSet:numberProperties];
  [v44 unionSet:stringArrayProperties];
  [v44 unionSet:rangeArrayProperties];
  [v44 unionSet:signatureAlignmentArrayProperties];
  [v44 unionSet:BOOLeanProperties];
  [v44 unionSet:uuidProperties];
  [v44 unionSet:locationCoordinateValueProperties];
  [v44 unionSet:codableDictionaryProperties];
  v45 = [v44 copy];
  v46 = allProperties;
  allProperties = v45;
}

@end