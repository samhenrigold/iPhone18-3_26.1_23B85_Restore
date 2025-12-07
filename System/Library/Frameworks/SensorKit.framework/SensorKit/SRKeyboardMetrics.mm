@interface SRKeyboardMetrics
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (NSArray)deleteToDeletes;
- (NSArray)inputModes;
- (NSArray)longWordDownErrorDistance;
- (NSArray)longWordTouchDownDown;
- (NSArray)longWordTouchDownUp;
- (NSArray)longWordTouchUpDown;
- (NSArray)longWordUpErrorDistance;
- (NSArray)pathErrorDistanceRatio;
- (NSArray)sessionIdentifiers;
- (NSInteger)emojiCountForSentimentCategory:(SRKeyboardMetricsSentimentCategory)category;
- (NSInteger)totalAlteredWords;
- (NSInteger)totalAutoCorrections;
- (NSInteger)totalDeletes;
- (NSInteger)totalDrags;
- (NSInteger)totalEmojis;
- (NSInteger)totalHitTestCorrections;
- (NSInteger)totalInsertKeyCorrections;
- (NSInteger)totalNearKeyCorrections;
- (NSInteger)totalPathPauses;
- (NSInteger)totalPaths;
- (NSInteger)totalPauses;
- (NSInteger)totalRetroCorrections;
- (NSInteger)totalSkipTouchCorrections;
- (NSInteger)totalSpaceCorrections;
- (NSInteger)totalSubstitutionCorrections;
- (NSInteger)totalTaps;
- (NSInteger)totalTranspositionCorrections;
- (NSInteger)totalTypingEpisodes;
- (NSInteger)totalWords;
- (NSInteger)wordCountForSentimentCategory:(SRKeyboardMetricsSentimentCategory)category;
- (NSMeasurement)height;
- (NSMeasurement)totalPathLength;
- (NSMeasurement)width;
- (NSString)description;
- (NSTimeInterval)duration;
- (NSTimeInterval)totalPathTime;
- (NSTimeInterval)totalTypingDuration;
- (SRKeyboardMetrics)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (SRKeyboardMetrics)initWithCoder:(id)coder;
- (SRKeyboardMetrics)initWithInterval:(id)interval metaInformation:(id)information;
- (SRKeyboardProbabilityMetric)anyTapToCharKey;
- (SRKeyboardProbabilityMetric)anyTapToPlaneChangeKey;
- (SRKeyboardProbabilityMetric)charKeyToAnyTapKey;
- (SRKeyboardProbabilityMetric)charKeyToDelete;
- (SRKeyboardProbabilityMetric)charKeyToPlaneChangeKey;
- (SRKeyboardProbabilityMetric)charKeyToPrediction;
- (SRKeyboardProbabilityMetric)charKeyToSpaceKey;
- (SRKeyboardProbabilityMetric)deleteDownErrorDistance;
- (SRKeyboardProbabilityMetric)deleteToCharKey;
- (SRKeyboardProbabilityMetric)deleteToDelete;
- (SRKeyboardProbabilityMetric)deleteToPath;
- (SRKeyboardProbabilityMetric)deleteToPlaneChangeKey;
- (SRKeyboardProbabilityMetric)deleteToShiftKey;
- (SRKeyboardProbabilityMetric)deleteToSpaceKey;
- (SRKeyboardProbabilityMetric)deleteTouchDownUp;
- (SRKeyboardProbabilityMetric)deleteUpErrorDistance;
- (SRKeyboardProbabilityMetric)downErrorDistance;
- (SRKeyboardProbabilityMetric)pathToDelete;
- (SRKeyboardProbabilityMetric)pathToPath;
- (SRKeyboardProbabilityMetric)pathToSpace;
- (SRKeyboardProbabilityMetric)planeChangeKeyToCharKey;
- (SRKeyboardProbabilityMetric)planeChangeToAnyTap;
- (SRKeyboardProbabilityMetric)shortWordCharKeyDownErrorDistance;
- (SRKeyboardProbabilityMetric)shortWordCharKeyToCharKey;
- (SRKeyboardProbabilityMetric)shortWordCharKeyTouchDownUp;
- (SRKeyboardProbabilityMetric)shortWordCharKeyUpErrorDistance;
- (SRKeyboardProbabilityMetric)spaceDownErrorDistance;
- (SRKeyboardProbabilityMetric)spaceToCharKey;
- (SRKeyboardProbabilityMetric)spaceToDeleteKey;
- (SRKeyboardProbabilityMetric)spaceToPath;
- (SRKeyboardProbabilityMetric)spaceToPlaneChangeKey;
- (SRKeyboardProbabilityMetric)spaceToPredictionKey;
- (SRKeyboardProbabilityMetric)spaceToShiftKey;
- (SRKeyboardProbabilityMetric)spaceToSpaceKey;
- (SRKeyboardProbabilityMetric)spaceTouchDownUp;
- (SRKeyboardProbabilityMetric)spaceUpErrorDistance;
- (SRKeyboardProbabilityMetric)touchDownDown;
- (SRKeyboardProbabilityMetric)touchDownUp;
- (SRKeyboardProbabilityMetric)touchUpDown;
- (SRKeyboardProbabilityMetric)upErrorDistance;
- (double)pathTypingSpeed;
- (double)typingSpeed;
- (id)binarySampleRepresentation;
- (id)dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRKeyboardMetrics

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRLogKeyboardMetrics = os_log_create("com.apple.SensorKit", "SRKeyboardMetrics");
  }
}

- (SRKeyboardMetrics)initWithInterval:(id)interval metaInformation:(id)information
{
  v8.receiver = self;
  v8.super_class = SRKeyboardMetrics;
  v6 = [(SRKeyboardMetrics *)&v8 init];
  if (v6)
  {
    v6->_mutableScalarMetrics = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6->_mutablePositionalMetrics = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6->_mutableProbabilityMetrics = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6->_interval = interval;
    v6->_keyboardMetaInformation = information;
  }

  return v6;
}

- (void)dealloc
{
  [(SRKeyboardMetrics *)self setInterval:0];
  [(SRKeyboardMetrics *)self setMutableScalarMetrics:0];
  [(SRKeyboardMetrics *)self setMutablePositionalMetrics:0];
  [(SRKeyboardMetrics *)self setMutableProbabilityMetrics:0];
  [(SRKeyboardMetrics *)self setKeyboardMetaInformation:0];
  v3.receiver = self;
  v3.super_class = SRKeyboardMetrics;
  [(SRKeyboardMetrics *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = -[NSDateInterval isEqual:](self->_interval, "isEqual:", [equal interval]);
      if (v5)
      {
        v5 = -[NSDictionary isEqual:](self->_keyboardMetaInformation, "isEqual:", [equal keyboardMetaInformation]);
        if (v5)
        {
          v5 = -[NSMutableDictionary isEqual:](self->_mutableScalarMetrics, "isEqual:", [equal mutableScalarMetrics]);
          if (v5)
          {
            v5 = -[NSMutableDictionary isEqual:](self->_mutablePositionalMetrics, "isEqual:", [equal mutablePositionalMetrics]);
            if (v5)
            {
              mutableProbabilityMetrics = self->_mutableProbabilityMetrics;
              mutableProbabilityMetrics = [equal mutableProbabilityMetrics];

              LOBYTE(v5) = [(NSMutableDictionary *)mutableProbabilityMetrics isEqual:mutableProbabilityMetrics];
            }
          }
        }
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (NSTimeInterval)duration
{
  [[(NSDateInterval *)self->_interval endDate] srAbsoluteTime];
  v4 = v3;
  [[(NSDateInterval *)self->_interval startDate] srAbsoluteTime];
  return v4 - v5;
}

- (NSArray)sessionIdentifiers
{
  result = [(NSDictionary *)self->_keyboardMetaInformation objectForKeyedSubscript:@"SRKeyboardMetaInformationSessionIdentifiersKey"];
  if (!result)
  {
    return MEMORY[0x1E695E0F0];
  }

  return result;
}

- (NSArray)inputModes
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)self->_keyboardMetaInformation objectForKeyedSubscript:@"SRKeyboardMetaInformationInputModesKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4[0] = v2;
    return [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  }

  else if (v2)
  {
    return v2;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (NSMeasurement)width
{
  [-[NSDictionary objectForKeyedSubscript:](self->_keyboardMetaInformation objectForKeyedSubscript:{@"SRKeyboardMetaInformationWidthKey", "doubleValue"}];
  v3 = v2;
  v4 = objc_alloc(MEMORY[0x1E696AD28]);
  v5 = [v4 initWithDoubleValue:objc_msgSend(MEMORY[0x1E696B058] unit:{"millimeters"), v3}];

  return v5;
}

- (NSMeasurement)height
{
  [-[NSDictionary objectForKeyedSubscript:](self->_keyboardMetaInformation objectForKeyedSubscript:{@"SRKeyboardMetaInformationHeightKey", "doubleValue"}];
  v3 = v2;
  v4 = objc_alloc(MEMORY[0x1E696AD28]);
  v5 = [v4 initWithDoubleValue:objc_msgSend(MEMORY[0x1E696B058] unit:{"millimeters"), v3}];

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@ (%p): %@", NSStringFromClass(v4), self, -[SRKeyboardMetrics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (NSInteger)wordCountForSentimentCategory:(SRKeyboardMetricsSentimentCategory)category
{
  if (category > SRKeyboardMetricsSentimentCategoryPositive)
  {
    return 0;
  }

  v5 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:*off_1E8330B38[category], v3];

  return [v5 integerValue];
}

- (NSInteger)emojiCountForSentimentCategory:(SRKeyboardMetricsSentimentCategory)category
{
  if ((category - 3) > 6)
  {
    return 0;
  }

  v5 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:*off_1E8330B70[category - 3], v3];

  return [v5 integerValue];
}

- (SRKeyboardMetrics)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v22.receiver = self;
  v22.super_class = SRKeyboardMetrics;
  v6 = [(SRKeyboardMetrics *)&v22 init];
  if (v6)
  {
    v6->_interval = [coder decodeObjectOfClass:objc_opt_class() forKey:@"Interval"];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v6->_keyboardMetaInformation = [objc_msgSend(coder decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, v9, v10, objc_opt_class(), 0), @"MetaInformation", "copy"}];
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v6->_mutableScalarMetrics = [objc_msgSend(coder decodeObjectOfClasses:objc_msgSend(v11 forKey:{"setWithObjects:", v12, v13, objc_opt_class(), 0), @"scalar", "mutableCopy"}];
    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v6->_mutableProbabilityMetrics = [objc_msgSend(coder decodeObjectOfClasses:objc_msgSend(v14 forKey:{"setWithObjects:", v15, v16, objc_opt_class(), 0), @"probability", "mutableCopy"}];
    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v6->_mutablePositionalMetrics = [objc_msgSend(coder decodeObjectOfClasses:objc_msgSend(v17 forKey:{"setWithObjects:", v18, v19, v20, objc_opt_class(), 0), @"positional", "mutableCopy"}];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeObject:self->_interval forKey:@"Interval"];
  [coder encodeObject:self->_keyboardMetaInformation forKey:@"MetaInformation"];
  [coder encodeObject:-[SRKeyboardMetrics mutableScalarMetrics](self forKey:{"mutableScalarMetrics"), @"scalar"}];
  [coder encodeObject:-[SRKeyboardMetrics probabilityMetrics](self forKey:{"probabilityMetrics"), @"probability"}];
  positionalMetrics = [(SRKeyboardMetrics *)self positionalMetrics];

  [coder encodeObject:positionalMetrics forKey:@"positional"];
}

- (SRKeyboardMetrics)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  v16 = *MEMORY[0x1E69E9840];
  if ([representation length])
  {
    v13.receiver = self;
    v13.super_class = SRKeyboardMetrics;
    result = [(SRKeyboardMetrics *)&v13 init];
    if (!result)
    {
      return result;
    }

    self = result;
    v12 = 0;
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:representation error:&v12];
    v9 = v12;
    if (!v12)
    {
      v11 = v8;

      return v11;
    }

    v10 = SRLogKeyboardMetrics;
    if (os_log_type_enabled(SRLogKeyboardMetrics, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v9;
      _os_log_error_impl(&dword_1C914D000, v10, OS_LOG_TYPE_ERROR, "Failed to unarchive data because %{public}@", buf, 0xCu);
    }
  }

  return 0;
}

- (id)binarySampleRepresentation
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v7];
  if (v7)
  {
    v3 = SRLogKeyboardMetrics;
    if (os_log_type_enabled(SRLogKeyboardMetrics, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      *buf = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v7;
      _os_log_error_impl(&dword_1C914D000, v3, OS_LOG_TYPE_ERROR, "Failed to archive %{public}@ object because %{public}@", buf, 0x16u);
    }
  }

  return v2;
}

- (NSInteger)totalWords
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalWordsKey"];

  return [v2 integerValue];
}

- (NSInteger)totalAlteredWords
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalAlteredWordsKey"];

  return [v2 integerValue];
}

- (NSInteger)totalTaps
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalTapsKey"];

  return [v2 integerValue];
}

- (NSInteger)totalDrags
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalDragsKey"];

  return [v2 integerValue];
}

- (NSInteger)totalDeletes
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalDeletesKey"];

  return [v2 integerValue];
}

- (NSInteger)totalEmojis
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalEmojiKey"];

  return [v2 integerValue];
}

- (NSInteger)totalPaths
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalPathsKey"];

  return [v2 integerValue];
}

- (NSTimeInterval)totalPathTime
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalPathTimeKey"];

  [v2 doubleValue];
  return result;
}

- (NSMeasurement)totalPathLength
{
  [-[NSMutableDictionary objectForKeyedSubscript:](self->_mutableScalarMetrics objectForKeyedSubscript:{@"SRKeyboardMetricScalarTotalPathLengthKey", "doubleValue"}];
  v3 = v2;
  v4 = objc_alloc(MEMORY[0x1E696AD28]);
  v5 = [v4 initWithDoubleValue:objc_msgSend(MEMORY[0x1E696B058] unit:{"millimeters"), v3}];

  return v5;
}

- (NSInteger)totalAutoCorrections
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalAutoCorrectionsKey"];

  return [v2 integerValue];
}

- (NSInteger)totalSpaceCorrections
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalSpaceCorrectionsKey"];

  return [v2 integerValue];
}

- (NSInteger)totalRetroCorrections
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalRetroCorrectionsKey"];

  return [v2 integerValue];
}

- (NSInteger)totalTranspositionCorrections
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalTranspositionCorrectionsKey"];

  return [v2 integerValue];
}

- (NSInteger)totalInsertKeyCorrections
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalInsertKeyCorrectionsKey"];

  return [v2 integerValue];
}

- (NSInteger)totalSkipTouchCorrections
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalSkipTouchCorrectionsKey"];

  return [v2 integerValue];
}

- (NSInteger)totalNearKeyCorrections
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalNearKeyCorrectionsKey"];

  return [v2 integerValue];
}

- (NSInteger)totalSubstitutionCorrections
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalSubstitutionCorrectionsKey"];

  return [v2 integerValue];
}

- (NSInteger)totalHitTestCorrections
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalHitTestCorrectionsKey"];

  return [v2 integerValue];
}

- (NSTimeInterval)totalTypingDuration
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTotalSessionTypingDurationKey"];

  [v2 doubleValue];
  return result;
}

- (NSInteger)totalPathPauses
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarMidPathPauseKey"];

  return [v2 integerValue];
}

- (double)typingSpeed
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTapTypingSpeedKey"];

  [v2 doubleValue];
  return result;
}

- (double)pathTypingSpeed
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarPathTypingSpeed"];

  [v2 doubleValue];
  return result;
}

- (NSInteger)totalPauses
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarTypingPausesKey"];

  return [v2 integerValue];
}

- (NSInteger)totalTypingEpisodes
{
  v2 = [(NSMutableDictionary *)self->_mutableScalarMetrics objectForKeyedSubscript:@"SRKeyboardMetricScalarEpisodeCountKey"];

  return [v2 integerValue];
}

- (SRKeyboardProbabilityMetric)upErrorDistance
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityUpErrorDistanceKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B058] millimeters]);
  return v2;
}

- (SRKeyboardProbabilityMetric)downErrorDistance
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityDownErrorDistanceKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B058] millimeters]);
  return v2;
}

- (SRKeyboardProbabilityMetric)spaceUpErrorDistance
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilitySpaceUpErrorDistanceKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B058] millimeters]);
  return v2;
}

- (SRKeyboardProbabilityMetric)spaceDownErrorDistance
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilitySpaceDownErrorDistanceKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B058] millimeters]);
  return v2;
}

- (SRKeyboardProbabilityMetric)deleteUpErrorDistance
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityDeleteUpErrorDistanceKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B058] millimeters]);
  return v2;
}

- (SRKeyboardProbabilityMetric)deleteDownErrorDistance
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityDeleteDownErrorDistanceKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B058] millimeters]);
  return v2;
}

- (SRKeyboardProbabilityMetric)shortWordCharKeyUpErrorDistance
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityShortWordCharKeyUpErrorDistanceKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B058] millimeters]);
  return v2;
}

- (SRKeyboardProbabilityMetric)shortWordCharKeyDownErrorDistance
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityShortWordCharKeyDownErrorDistanceKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B058] millimeters]);
  return v2;
}

- (SRKeyboardProbabilityMetric)touchDownUp
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityTouchDownUpKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)spaceTouchDownUp
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilitySpaceTouchDownUpKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)deleteTouchDownUp
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityDeleteTouchDownUpKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)shortWordCharKeyTouchDownUp
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityShortWordCharKeyTouchDownUpKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)touchDownDown
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityTouchDownDownKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)touchUpDown
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityTouchUpDownKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)charKeyToPrediction
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityCharKeyToPredictionKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)shortWordCharKeyToCharKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityShortWordCharKeyToCharKeyKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)charKeyToAnyTapKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityCharKeyToAnyTapKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)anyTapToCharKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityAnyTapToCharKeyKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)spaceToCharKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilitySpaceToCharKeyKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)charKeyToSpaceKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityCharKeyToSpaceKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)spaceToDeleteKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilitySpaceToDeleteKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)deleteToSpaceKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityDeleteToSpaceKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)spaceToSpaceKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilitySpaceToSpaceKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)spaceToShiftKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilitySpaceToShiftKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)spaceToPlaneChangeKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilitySpaceTo123KeyKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)spaceToPredictionKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilitySpaceToPredictionKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)deleteToCharKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityDeleteToCharKeyKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)charKeyToDelete
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityCharKeyToDeleteKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)deleteToDelete
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityDeleteToDeleteKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)deleteToShiftKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityDeleteToShiftKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)deleteToPlaneChangeKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityDeleteTo123KeyKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)anyTapToPlaneChangeKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityAnyTapTo123KeyKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)planeChangeToAnyTap
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbability123KeyToAnyTapKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)charKeyToPlaneChangeKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityCharKeyTo123KeyKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)planeChangeKeyToCharKey
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbability123KeyToCharKeyKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (NSArray)pathErrorDistanceRatio
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityPathErrorDistanceKey"];
  v3 = MEMORY[0x1E695DEC8];
  mutableSampleValues = [v2 mutableSampleValues];

  return [v3 arrayWithArray:mutableSampleValues];
}

- (SRKeyboardProbabilityMetric)deleteToPath
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityDeleteToPathKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)pathToDelete
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityPathToDeleteKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)spaceToPath
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilitySpaceToPathKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)pathToSpace
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityPathToSpaceKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (SRKeyboardProbabilityMetric)pathToPath
{
  v2 = [(NSMutableDictionary *)self->_mutableProbabilityMetrics objectForKeyedSubscript:@"SRKeyboardMetricProbabilityPathToPathKey"];
  -[SRKeyboardProbabilityMetric setUnitType:](v2, "setUnitType:", [MEMORY[0x1E696B008] seconds]);
  return v2;
}

- (NSArray)longWordUpErrorDistance
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DEC8] arrayWithArray:{-[NSMutableDictionary objectForKeyedSubscript:](self->_mutablePositionalMetrics, "objectForKeyedSubscript:", @"SRKeyboardMetricPositionalWordUpErrorDistanceKey"}];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) setUnitType:{objc_msgSend(MEMORY[0x1E696B058], "millimeters")}];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return v2;
}

- (NSArray)longWordDownErrorDistance
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DEC8] arrayWithArray:{-[NSMutableDictionary objectForKeyedSubscript:](self->_mutablePositionalMetrics, "objectForKeyedSubscript:", @"SRKeyboardMetricPositionalWordDownErrorDistanceKey"}];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) setUnitType:{objc_msgSend(MEMORY[0x1E696B058], "millimeters")}];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return v2;
}

- (NSArray)longWordTouchDownUp
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DEC8] arrayWithArray:{-[NSMutableDictionary objectForKeyedSubscript:](self->_mutablePositionalMetrics, "objectForKeyedSubscript:", @"SRKeyboardMetricPositionalWordTouchDownUpKey"}];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) setUnitType:{objc_msgSend(MEMORY[0x1E696B008], "seconds")}];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return v2;
}

- (NSArray)longWordTouchDownDown
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DEC8] arrayWithArray:{-[NSMutableDictionary objectForKeyedSubscript:](self->_mutablePositionalMetrics, "objectForKeyedSubscript:", @"SRKeyboardMetricPositionalWordTouchDownDownKey"}];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) setUnitType:{objc_msgSend(MEMORY[0x1E696B008], "seconds")}];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return v2;
}

- (NSArray)longWordTouchUpDown
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DEC8] arrayWithArray:{-[NSMutableDictionary objectForKeyedSubscript:](self->_mutablePositionalMetrics, "objectForKeyedSubscript:", @"SRKeyboardMetricPositionalWordTouchUpDownKey"}];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) setUnitType:{objc_msgSend(MEMORY[0x1E696B008], "seconds")}];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return v2;
}

- (NSArray)deleteToDeletes
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DEC8] arrayWithArray:{-[NSMutableDictionary objectForKeyedSubscript:](self->_mutablePositionalMetrics, "objectForKeyedSubscript:", @"SRKeyboardMetricPositionalDeleteToDeleteKey"}];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) setUnitType:{objc_msgSend(MEMORY[0x1E696B008], "seconds")}];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return v2;
}

- (id)dictionaryRepresentation
{
  v167 = *MEMORY[0x1E69E9840];
  v133 = objc_opt_new();
  [v133 setUnitOptions:1];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](-[SRKeyboardMetrics deleteToDeletes](self, "deleteToDeletes"), "count")}];
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  deleteToDeletes = [(SRKeyboardMetrics *)self deleteToDeletes];
  v5 = [(NSArray *)deleteToDeletes countByEnumeratingWithState:&v155 objects:v166 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v156;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v156 != v7)
        {
          objc_enumerationMutation(deleteToDeletes);
        }

        [v3 addObject:{objc_msgSend(*(*(&v155 + 1) + 8 * i), "sr_dictionaryRepresentation")}];
      }

      v6 = [(NSArray *)deleteToDeletes countByEnumeratingWithState:&v155 objects:v166 count:16];
    }

    while (v6);
  }

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](-[SRKeyboardMetrics longWordDownErrorDistance](self, "longWordDownErrorDistance"), "count")}];
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  longWordDownErrorDistance = [(SRKeyboardMetrics *)self longWordDownErrorDistance];
  v11 = [(NSArray *)longWordDownErrorDistance countByEnumeratingWithState:&v151 objects:v165 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v152;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v152 != v13)
        {
          objc_enumerationMutation(longWordDownErrorDistance);
        }

        [v9 addObject:{objc_msgSend(*(*(&v151 + 1) + 8 * j), "sr_dictionaryRepresentation")}];
      }

      v12 = [(NSArray *)longWordDownErrorDistance countByEnumeratingWithState:&v151 objects:v165 count:16];
    }

    while (v12);
  }

  v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](-[SRKeyboardMetrics longWordTouchDownDown](self, "longWordTouchDownDown"), "count")}];
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  longWordTouchDownDown = [(SRKeyboardMetrics *)self longWordTouchDownDown];
  v17 = [(NSArray *)longWordTouchDownDown countByEnumeratingWithState:&v147 objects:v164 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v148;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v148 != v19)
        {
          objc_enumerationMutation(longWordTouchDownDown);
        }

        [v15 addObject:{objc_msgSend(*(*(&v147 + 1) + 8 * k), "sr_dictionaryRepresentation")}];
      }

      v18 = [(NSArray *)longWordTouchDownDown countByEnumeratingWithState:&v147 objects:v164 count:16];
    }

    while (v18);
  }

  v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](-[SRKeyboardMetrics longWordTouchDownUp](self, "longWordTouchDownUp"), "count")}];
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  longWordTouchDownUp = [(SRKeyboardMetrics *)self longWordTouchDownUp];
  v23 = [(NSArray *)longWordTouchDownUp countByEnumeratingWithState:&v143 objects:v163 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v144;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v144 != v25)
        {
          objc_enumerationMutation(longWordTouchDownUp);
        }

        [v21 addObject:{objc_msgSend(*(*(&v143 + 1) + 8 * m), "sr_dictionaryRepresentation")}];
      }

      v24 = [(NSArray *)longWordTouchDownUp countByEnumeratingWithState:&v143 objects:v163 count:16];
    }

    while (v24);
  }

  v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](-[SRKeyboardMetrics longWordUpErrorDistance](self, "longWordUpErrorDistance"), "count")}];
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  longWordUpErrorDistance = [(SRKeyboardMetrics *)self longWordUpErrorDistance];
  v29 = [(NSArray *)longWordUpErrorDistance countByEnumeratingWithState:&v139 objects:v162 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v140;
    do
    {
      for (n = 0; n != v30; ++n)
      {
        if (*v140 != v31)
        {
          objc_enumerationMutation(longWordUpErrorDistance);
        }

        [v27 addObject:{objc_msgSend(*(*(&v139 + 1) + 8 * n), "sr_dictionaryRepresentation")}];
      }

      v30 = [(NSArray *)longWordUpErrorDistance countByEnumeratingWithState:&v139 objects:v162 count:16];
    }

    while (v30);
  }

  v33 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](-[SRKeyboardMetrics longWordTouchUpDown](self, "longWordTouchUpDown"), "count")}];
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  selfCopy = self;
  longWordTouchUpDown = [(SRKeyboardMetrics *)self longWordTouchUpDown];
  v35 = [(NSArray *)longWordTouchUpDown countByEnumeratingWithState:&v135 objects:v161 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v136;
    do
    {
      for (ii = 0; ii != v36; ++ii)
      {
        if (*v136 != v37)
        {
          objc_enumerationMutation(longWordTouchUpDown);
        }

        [v33 addObject:{objc_msgSend(*(*(&v135 + 1) + 8 * ii), "sr_dictionaryRepresentation")}];
      }

      v36 = [(NSArray *)longWordTouchUpDown countByEnumeratingWithState:&v135 objects:v161 count:16];
    }

    while (v36);
  }

  v159[0] = @"duration";
  [(SRKeyboardMetrics *)selfCopy duration];
  if (fabs(v39) == INFINITY)
  {
    v40 = @"INF";
  }

  else
  {
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", *&v39];
  }

  v160[0] = v40;
  v159[1] = @"keyboardIdentifier";
  v160[1] = [(SRKeyboardMetrics *)selfCopy keyboardIdentifier];
  v159[2] = @"version";
  v160[2] = [(SRKeyboardMetrics *)selfCopy version];
  v159[3] = @"width";
  v160[3] = [v133 stringFromMeasurement:{-[SRKeyboardMetrics width](selfCopy, "width")}];
  v159[4] = @"height";
  v160[4] = [v133 stringFromMeasurement:{-[SRKeyboardMetrics height](selfCopy, "height")}];
  v159[5] = @"inputModes";
  v160[5] = [(SRKeyboardMetrics *)selfCopy inputModes];
  v159[6] = @"sessionIdentifiers";
  v160[6] = [(SRKeyboardMetrics *)selfCopy sessionIdentifiers];
  v159[7] = @"planeChangeToAnyTap";
  sr_dictionaryRepresentation = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy planeChangeToAnyTap] sr_dictionaryRepresentation];
  v42 = MEMORY[0x1E695E0F8];
  if (sr_dictionaryRepresentation)
  {
    v43 = sr_dictionaryRepresentation;
  }

  else
  {
    v43 = MEMORY[0x1E695E0F8];
  }

  v160[7] = v43;
  v159[8] = @"planeChangeKeyToCharKey";
  sr_dictionaryRepresentation2 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy planeChangeKeyToCharKey] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation2)
  {
    v45 = sr_dictionaryRepresentation2;
  }

  else
  {
    v45 = v42;
  }

  v160[8] = v45;
  v159[9] = @"anyTapToPlaneChangeKey";
  sr_dictionaryRepresentation3 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy anyTapToPlaneChangeKey] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation3)
  {
    v47 = sr_dictionaryRepresentation3;
  }

  else
  {
    v47 = v42;
  }

  v160[9] = v47;
  v159[10] = @"anyTapToCharKey";
  sr_dictionaryRepresentation4 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy anyTapToCharKey] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation4)
  {
    v49 = sr_dictionaryRepresentation4;
  }

  else
  {
    v49 = v42;
  }

  v160[10] = v49;
  v159[11] = @"charKeyToPlaneChangeKey";
  sr_dictionaryRepresentation5 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy charKeyToPlaneChangeKey] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation5)
  {
    v51 = sr_dictionaryRepresentation5;
  }

  else
  {
    v51 = v42;
  }

  v160[11] = v51;
  v159[12] = @"charKeyToAnyTapKey";
  sr_dictionaryRepresentation6 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy charKeyToAnyTapKey] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation6)
  {
    v53 = sr_dictionaryRepresentation6;
  }

  else
  {
    v53 = v42;
  }

  v160[12] = v53;
  v159[13] = @"charKeyToDelete";
  sr_dictionaryRepresentation7 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy charKeyToDelete] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation7)
  {
    v55 = sr_dictionaryRepresentation7;
  }

  else
  {
    v55 = v42;
  }

  v160[13] = v55;
  v159[14] = @"charKeyToPrediction";
  sr_dictionaryRepresentation8 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy charKeyToPrediction] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation8)
  {
    v57 = sr_dictionaryRepresentation8;
  }

  else
  {
    v57 = v42;
  }

  v160[14] = v57;
  v159[15] = @"charKeyToSpaceKey";
  sr_dictionaryRepresentation9 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy charKeyToSpaceKey] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation9)
  {
    v59 = sr_dictionaryRepresentation9;
  }

  else
  {
    v59 = v42;
  }

  v160[15] = v59;
  v159[16] = @"deleteDownErrorDistance";
  sr_dictionaryRepresentation10 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy deleteDownErrorDistance] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation10)
  {
    v61 = sr_dictionaryRepresentation10;
  }

  else
  {
    v61 = v42;
  }

  v160[16] = v61;
  v159[17] = @"deleteToPlaneChangeKey";
  sr_dictionaryRepresentation11 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy deleteToPlaneChangeKey] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation11)
  {
    v63 = sr_dictionaryRepresentation11;
  }

  else
  {
    v63 = v42;
  }

  v160[17] = v63;
  v159[18] = @"deleteToCharKey";
  sr_dictionaryRepresentation12 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy deleteToCharKey] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation12)
  {
    v65 = sr_dictionaryRepresentation12;
  }

  else
  {
    v65 = v42;
  }

  v160[18] = v65;
  v159[19] = @"deleteToDelete";
  sr_dictionaryRepresentation13 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy deleteToDelete] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation13)
  {
    v67 = sr_dictionaryRepresentation13;
  }

  else
  {
    v67 = v42;
  }

  v160[19] = v67;
  v159[20] = @"deleteToPath";
  sr_dictionaryRepresentation14 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy deleteToPath] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation14)
  {
    v69 = sr_dictionaryRepresentation14;
  }

  else
  {
    v69 = v42;
  }

  v160[20] = v69;
  v159[21] = @"deleteToShiftKey";
  sr_dictionaryRepresentation15 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy deleteToShiftKey] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation15)
  {
    v71 = sr_dictionaryRepresentation15;
  }

  else
  {
    v71 = v42;
  }

  v160[21] = v71;
  v159[22] = @"deleteToSpaceKey";
  sr_dictionaryRepresentation16 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy deleteToSpaceKey] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation16)
  {
    v73 = sr_dictionaryRepresentation16;
  }

  else
  {
    v73 = v42;
  }

  v160[22] = v73;
  v159[23] = @"deleteTouchDownUp";
  sr_dictionaryRepresentation17 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy deleteTouchDownUp] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation17)
  {
    v75 = sr_dictionaryRepresentation17;
  }

  else
  {
    v75 = v42;
  }

  v160[23] = v75;
  v159[24] = @"deleteUpErrorDistance";
  sr_dictionaryRepresentation18 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy deleteUpErrorDistance] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation18)
  {
    v77 = sr_dictionaryRepresentation18;
  }

  else
  {
    v77 = v42;
  }

  v160[24] = v77;
  v159[25] = @"downErrorDistance";
  sr_dictionaryRepresentation19 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy downErrorDistance] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation19)
  {
    v79 = sr_dictionaryRepresentation19;
  }

  else
  {
    v79 = v42;
  }

  v160[25] = v79;
  v159[26] = @"pathErrorDistanceRatio";
  pathErrorDistanceRatio = [(SRKeyboardMetrics *)selfCopy pathErrorDistanceRatio];
  if (pathErrorDistanceRatio)
  {
    v81 = pathErrorDistanceRatio;
  }

  else
  {
    v81 = v42;
  }

  v160[26] = v81;
  v159[27] = @"pathToDelete";
  sr_dictionaryRepresentation20 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy pathToDelete] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation20)
  {
    v83 = sr_dictionaryRepresentation20;
  }

  else
  {
    v83 = v42;
  }

  v160[27] = v83;
  v159[28] = @"pathToPath";
  sr_dictionaryRepresentation21 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy pathToPath] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation21)
  {
    v85 = sr_dictionaryRepresentation21;
  }

  else
  {
    v85 = v42;
  }

  v160[28] = v85;
  v159[29] = @"pathToSpace";
  sr_dictionaryRepresentation22 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy pathToSpace] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation22)
  {
    v87 = sr_dictionaryRepresentation22;
  }

  else
  {
    v87 = v42;
  }

  v160[29] = v87;
  v159[30] = @"shortWordCharKeyDownErrorDistance";
  sr_dictionaryRepresentation23 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy shortWordCharKeyDownErrorDistance] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation23)
  {
    v89 = sr_dictionaryRepresentation23;
  }

  else
  {
    v89 = v42;
  }

  v160[30] = v89;
  v159[31] = @"shortWordCharKeyToCharKey";
  sr_dictionaryRepresentation24 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy shortWordCharKeyToCharKey] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation24)
  {
    v91 = sr_dictionaryRepresentation24;
  }

  else
  {
    v91 = v42;
  }

  v160[31] = v91;
  v159[32] = @"shortWordCharKeyTouchDownUp";
  sr_dictionaryRepresentation25 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy shortWordCharKeyTouchDownUp] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation25)
  {
    v93 = sr_dictionaryRepresentation25;
  }

  else
  {
    v93 = v42;
  }

  v160[32] = v93;
  v159[33] = @"shortWordCharKeyUpErrorDistance";
  sr_dictionaryRepresentation26 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy shortWordCharKeyUpErrorDistance] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation26)
  {
    v95 = sr_dictionaryRepresentation26;
  }

  else
  {
    v95 = v42;
  }

  v160[33] = v95;
  v159[34] = @"spaceDownErrorDistance";
  sr_dictionaryRepresentation27 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy spaceDownErrorDistance] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation27)
  {
    v97 = sr_dictionaryRepresentation27;
  }

  else
  {
    v97 = v42;
  }

  v160[34] = v97;
  v159[35] = @"spaceToPlaneChangeKey";
  sr_dictionaryRepresentation28 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy spaceToPlaneChangeKey] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation28)
  {
    v99 = sr_dictionaryRepresentation28;
  }

  else
  {
    v99 = v42;
  }

  v160[35] = v99;
  v159[36] = @"spaceToCharKey";
  sr_dictionaryRepresentation29 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy spaceToCharKey] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation29)
  {
    v101 = sr_dictionaryRepresentation29;
  }

  else
  {
    v101 = v42;
  }

  v160[36] = v101;
  v159[37] = @"spaceToDeleteKey";
  sr_dictionaryRepresentation30 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy spaceToDeleteKey] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation30)
  {
    v103 = sr_dictionaryRepresentation30;
  }

  else
  {
    v103 = v42;
  }

  v160[37] = v103;
  v159[38] = @"spaceToPath";
  sr_dictionaryRepresentation31 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy spaceToPath] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation31)
  {
    v105 = sr_dictionaryRepresentation31;
  }

  else
  {
    v105 = v42;
  }

  v160[38] = v105;
  v159[39] = @"spaceToPredictionKey";
  sr_dictionaryRepresentation32 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy spaceToPredictionKey] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation32)
  {
    v107 = sr_dictionaryRepresentation32;
  }

  else
  {
    v107 = v42;
  }

  v160[39] = v107;
  v159[40] = @"spaceToShiftKey";
  sr_dictionaryRepresentation33 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy spaceToShiftKey] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation33)
  {
    v109 = sr_dictionaryRepresentation33;
  }

  else
  {
    v109 = v42;
  }

  v160[40] = v109;
  v159[41] = @"spaceToSpaceKey";
  sr_dictionaryRepresentation34 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy spaceToSpaceKey] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation34)
  {
    v111 = sr_dictionaryRepresentation34;
  }

  else
  {
    v111 = v42;
  }

  v160[41] = v111;
  v159[42] = @"spaceTouchDownUp";
  sr_dictionaryRepresentation35 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy spaceTouchDownUp] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation35)
  {
    v113 = sr_dictionaryRepresentation35;
  }

  else
  {
    v113 = v42;
  }

  v160[42] = v113;
  v159[43] = @"spaceUpErrorDistance";
  sr_dictionaryRepresentation36 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy spaceUpErrorDistance] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation36)
  {
    v115 = sr_dictionaryRepresentation36;
  }

  else
  {
    v115 = v42;
  }

  v160[43] = v115;
  v159[44] = @"touchDownDown";
  sr_dictionaryRepresentation37 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy touchDownDown] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation37)
  {
    v117 = sr_dictionaryRepresentation37;
  }

  else
  {
    v117 = v42;
  }

  v160[44] = v117;
  v159[45] = @"touchDownUp";
  sr_dictionaryRepresentation38 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy touchDownUp] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation38)
  {
    v119 = sr_dictionaryRepresentation38;
  }

  else
  {
    v119 = v42;
  }

  v160[45] = v119;
  v159[46] = @"touchUpDown";
  sr_dictionaryRepresentation39 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy touchUpDown] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation39)
  {
    v121 = sr_dictionaryRepresentation39;
  }

  else
  {
    v121 = v42;
  }

  v160[46] = v121;
  v159[47] = @"upErrorDistance";
  sr_dictionaryRepresentation40 = [(SRKeyboardProbabilityMetric *)[(SRKeyboardMetrics *)selfCopy upErrorDistance] sr_dictionaryRepresentation];
  if (sr_dictionaryRepresentation40)
  {
    v123 = sr_dictionaryRepresentation40;
  }

  else
  {
    v123 = v42;
  }

  v160[47] = v123;
  v160[48] = v3;
  v159[48] = @"deleteToDeletes";
  v159[49] = @"longWordDownErrorDistance";
  v160[49] = v9;
  v160[50] = v15;
  v159[50] = @"longWordTouchDownDown";
  v159[51] = @"longWordTouchDownUp";
  v160[51] = v21;
  v160[52] = v27;
  v159[52] = @"longWordUpErrorDistance";
  v159[53] = @"longWordTouchUpDown";
  v160[53] = v33;
  v159[54] = @"totalAlteredWords";
  v160[54] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalAlteredWords](selfCopy, "totalAlteredWords")}];
  v159[55] = @"totalAutoCorrections";
  v160[55] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalAutoCorrections](selfCopy, "totalAutoCorrections")}];
  v159[56] = @"totalDeletes";
  v160[56] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalDeletes](selfCopy, "totalDeletes")}];
  v159[57] = @"totalDrags";
  v160[57] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalDrags](selfCopy, "totalDrags")}];
  v159[58] = @"totalEmojis";
  v160[58] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalEmojis](selfCopy, "totalEmojis")}];
  v159[59] = @"totalHitTestCorrections";
  v160[59] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalHitTestCorrections](selfCopy, "totalHitTestCorrections")}];
  v159[60] = @"totalInsertKeyCorrections";
  v160[60] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalInsertKeyCorrections](selfCopy, "totalInsertKeyCorrections")}];
  v159[61] = @"totalNearKeyCorrections";
  v160[61] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalNearKeyCorrections](selfCopy, "totalNearKeyCorrections")}];
  v159[62] = @"totalPathLength";
  v160[62] = [v133 stringFromMeasurement:{-[SRKeyboardMetrics totalPathLength](selfCopy, "totalPathLength")}];
  v159[63] = @"totalPathTime";
  [(SRKeyboardMetrics *)selfCopy totalPathTime];
  if (fabs(v124) == INFINITY)
  {
    v125 = @"INF";
  }

  else
  {
    v125 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", *&v124];
  }

  v160[63] = v125;
  v159[64] = @"totalPaths";
  v160[64] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalPaths](selfCopy, "totalPaths")}];
  v159[65] = @"totalRetroCorrections";
  v160[65] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalRetroCorrections](selfCopy, "totalRetroCorrections")}];
  v159[66] = @"totalSkipTouchCorrections";
  v160[66] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalSkipTouchCorrections](selfCopy, "totalSkipTouchCorrections")}];
  v159[67] = @"totalSpaceCorrections";
  v160[67] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalSpaceCorrections](selfCopy, "totalSpaceCorrections")}];
  v159[68] = @"totalSubstitutionCorrections";
  v160[68] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalSubstitutionCorrections](selfCopy, "totalSubstitutionCorrections")}];
  v159[69] = @"totalTaps";
  v160[69] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalTaps](selfCopy, "totalTaps")}];
  v159[70] = @"totalTranspositionCorrections";
  v160[70] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalTranspositionCorrections](selfCopy, "totalTranspositionCorrections")}];
  v159[71] = @"totalWords";
  v160[71] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalWords](selfCopy, "totalWords")}];
  v159[72] = @"totalTypingDuration";
  [(SRKeyboardMetrics *)selfCopy totalTypingDuration];
  if (fabs(v126) == INFINITY)
  {
    v127 = @"INF";
  }

  else
  {
    v127 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", *&v126];
  }

  v160[72] = v127;
  v159[73] = @"wordCountAbsolutist";
  v160[73] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalAbsolutistWords](selfCopy, "totalAbsolutistWords")}];
  v159[74] = @"wordCountAnger";
  v160[74] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalAngerWords](selfCopy, "totalAngerWords")}];
  v159[75] = @"wordCountAnxiety";
  v160[75] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalAnxietyWords](selfCopy, "totalAnxietyWords")}];
  v159[76] = @"wordCountConfused";
  v160[76] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics wordCountForSentimentCategory:](selfCopy, "wordCountForSentimentCategory:", 9)}];
  v159[77] = @"wordCountDeath";
  v160[77] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalDeathWords](selfCopy, "totalDeathWords")}];
  v159[78] = @"wordCountDown";
  v160[78] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalDownWords](selfCopy, "totalDownWords")}];
  v159[79] = @"wordCountHealth";
  v160[79] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalHealthFeelingWords](selfCopy, "totalHealthFeelingWords")}];
  v159[80] = @"wordCountLowEnergy";
  v160[80] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics wordCountForSentimentCategory:](selfCopy, "wordCountForSentimentCategory:", 8)}];
  v159[81] = @"wordCountPositive";
  v160[81] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics wordCountForSentimentCategory:](selfCopy, "wordCountForSentimentCategory:", 6)}];
  v159[82] = @"wordCountSad";
  v160[82] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics wordCountForSentimentCategory:](selfCopy, "wordCountForSentimentCategory:", 7)}];
  v159[83] = @"emojiCountAbsolutist";
  v160[83] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics emojiCountForSentimentCategory:](selfCopy, "emojiCountForSentimentCategory:", 0)}];
  v159[84] = @"emojiCountAnger";
  v160[84] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalAngerEmojis](selfCopy, "totalAngerEmojis")}];
  v159[85] = @"emojiCountAnxiety";
  v160[85] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalAnxietyEmojis](selfCopy, "totalAnxietyEmojis")}];
  v159[86] = @"emojiCountConfused";
  v160[86] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalConfusedEmojis](selfCopy, "totalConfusedEmojis")}];
  v159[87] = @"emojiCountDeath";
  v160[87] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics emojiCountForSentimentCategory:](selfCopy, "emojiCountForSentimentCategory:", 2)}];
  v159[88] = @"emojiCountDown";
  v160[88] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics emojiCountForSentimentCategory:](selfCopy, "emojiCountForSentimentCategory:", 1)}];
  v159[89] = @"emojiCountHealth";
  v160[89] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalHealthFeelingEmojis](selfCopy, "totalHealthFeelingEmojis")}];
  v159[90] = @"emojiCountLowEnergy";
  v160[90] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalLowEnergyEmojis](selfCopy, "totalLowEnergyEmojis")}];
  v159[91] = @"emojiCountPositive";
  v160[91] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalPositiveEmojis](selfCopy, "totalPositiveEmojis")}];
  v159[92] = @"emojiCountSad";
  v160[92] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalSadEmojis](selfCopy, "totalSadEmojis")}];
  v159[93] = @"totalPathPauses";
  v160[93] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalPathPauses](selfCopy, "totalPathPauses")}];
  v159[94] = @"totalPauses";
  v160[94] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalPauses](selfCopy, "totalPauses")}];
  v159[95] = @"totalTypingEpisodes";
  v160[95] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRKeyboardMetrics totalTypingEpisodes](selfCopy, "totalTypingEpisodes")}];
  v159[96] = @"typingSpeed";
  [(SRKeyboardMetrics *)selfCopy typingSpeed];
  if (fabs(v128) == INFINITY)
  {
    v129 = @"INF";
  }

  else
  {
    v129 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", *&v128];
  }

  v160[96] = v129;
  v159[97] = @"pathTypingSpeed";
  [(SRKeyboardMetrics *)selfCopy pathTypingSpeed];
  if (fabs(v130) == INFINITY)
  {
    v131 = @"INF";
  }

  else
  {
    v131 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", *&v130];
  }

  v160[97] = v131;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v160 forKeys:v159 count:98];
}

@end