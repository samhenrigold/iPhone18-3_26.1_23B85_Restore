@interface FIWorkoutActivityType
+ (BOOL)isEffectivelyIndoorForWorkout:(id)workout;
+ (BOOL)shouldDisambiguateOnLocationType:(unint64_t)type;
+ (FIWorkoutActivityType)activityTypeWithHKWorkoutActivityTypeIdentifier:(unint64_t)identifier isIndoor:(BOOL)indoor;
+ (FIWorkoutActivityType)activityTypeWithHKWorkoutActivityTypeIdentifier:(unint64_t)identifier isIndoor:(BOOL)indoor metadata:(id)metadata;
+ (FIWorkoutActivityType)activityTypeWithWorkout:(id)workout;
+ (id)activityTypeFromUniqueIdentifier:(id)identifier;
+ (id)allActivityTypes;
+ (id)defaultActivityTypesWithIsWheelchairUser:(BOOL)user isSwimmingSupported:(BOOL)supported activityMoveMode:(int64_t)mode;
+ (id)deprecatedActivityTypes;
+ (id)effectiveActivityTypeWithWorkout:(id)workout;
+ (id)gymKitCapableActivityTypes;
+ (id)nonOptimizedActivityTypes;
+ (id)optimizedActivityTypesWithIsWheelchairUser:(BOOL)user isSwimmingSupported:(BOOL)supported;
+ (id)otherWorkoutActivityTypes;
+ (id)phoneAndHeartRateMonitorSupportedActivityTypes;
+ (id)phoneOnlySupportedActivityTypes;
+ (id)possibleActivityTypesForIdentifier:(unint64_t)identifier locationType:(int64_t)type swimmingLocationType:(int64_t)locationType wheelchairUser:(BOOL)user;
+ (id)swimmingOptimizedActivityTypes;
+ (id)swimmingOtherActivityTypes;
+ (id)unsupportedActivityTypesWithIsWheelchairUser:(BOOL)user isSwimmingSupported:(BOOL)supported;
+ (id)wheelchairActivityTypes;
+ (unint64_t)mapWheelchairUserActivityType:(unint64_t)type isWheelchairUser:(BOOL)user;
- (BOOL)isEqual:(id)equal;
- (BOOL)requiresDisambiguation;
- (BOOL)requiresLocationDisambiguation;
- (BOOL)supportsSafetyCheckInPrompt;
- (BOOL)supportsWorkoutVoiceMotivationBreakthroughMoments;
- (BOOL)supportsWorkoutVoiceMotivationProgressMoments;
- (FIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)identifier isIndoor:(BOOL)indoor isPartOfMultiSport:(BOOL)sport metadata:(id)metadata;
- (FIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)identifier isIndoor:(BOOL)indoor isPartOfMultiSport:(BOOL)sport metadata:(id)metadata auxiliaryTypeIdentifier:(unint64_t)typeIdentifier;
- (FIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)identifier location:(int64_t)location isPartOfMultiSport:(BOOL)sport metadata:(id)metadata auxiliaryTypeIdentifier:(unint64_t)typeIdentifier;
- (FIWorkoutActivityType)initWithCoder:(id)coder;
- (HKQuantity)lapLength;
- (NSString)legacyUniqueIdentifier;
- (NSString)uniqueIdentifier;
- (id)activityTypeByAddingLapLength:(double)length;
- (id)activityTypePlistKey;
- (id)description;
- (id)localizationKey;
- (id)localizedName;
- (id)localizedNameComponents;
- (id)localizedNamePlural;
- (int64_t)swimmingLocationType;
- (unint64_t)effectiveTypeIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FIWorkoutActivityType

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  localizedName = [(FIWorkoutActivityType *)self localizedName];
  v5 = _HKWorkoutSessionLocationTypeName();
  v6 = v5;
  v7 = @"NO";
  if (self->_isPartOfMultiSport)
  {
    v7 = @"YES";
  }

  v8 = [v3 stringWithFormat:@"FIWorkoutActivityType(type=%@, location=%@, partOfMultisport=%@, metadata=%@)", localizedName, v5, v7, self->_metadata];

  return v8;
}

- (unint64_t)effectiveTypeIdentifier
{
  identifier = self->_identifier;
  if (identifier != 3000)
  {
    return identifier;
  }

  result = self->_auxiliaryTypeIdentifier;
  if (result == *MEMORY[0x277CCE1E0])
  {
    return identifier;
  }

  return result;
}

- (int64_t)swimmingLocationType
{
  metadata = [(FIWorkoutActivityType *)self metadata];
  v3 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCC510]];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (id)localizedName
{
  requiresDisambiguation = [(FIWorkoutActivityType *)self requiresDisambiguation];
  effectiveTypeIdentifier = [(FIWorkoutActivityType *)self effectiveTypeIdentifier];
  if (requiresDisambiguation)
  {
    FILocalizedNameForIndoorAgnosticActivityType(effectiveTypeIdentifier);
  }

  else
  {
    FILocalizedNameForActivityType(effectiveTypeIdentifier, [(FIWorkoutActivityType *)self swimmingLocationType], self->_isIndoor);
  }
  v5 = ;

  return v5;
}

- (BOOL)requiresDisambiguation
{
  if ([(FIWorkoutActivityType *)self requiresLocationDisambiguation])
  {
    return 1;
  }

  return [(FIWorkoutActivityType *)self requiresSwimmingLocationDisambiguation];
}

- (BOOL)requiresLocationDisambiguation
{
  v3 = [FIWorkoutActivityType shouldDisambiguateOnLocationType:[(FIWorkoutActivityType *)self effectiveTypeIdentifier]];
  if (v3)
  {
    LOBYTE(v3) = [(FIWorkoutActivityType *)self location]== 1;
  }

  return v3;
}

- (NSString)uniqueIdentifier
{
  v3 = MEMORY[0x277CCAB68];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[FIWorkoutActivityType effectiveTypeIdentifier](self, "effectiveTypeIdentifier")}];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[FIWorkoutActivityType isIndoor](self, "isIndoor")}];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[FIWorkoutActivityType swimmingLocationType](self, "swimmingLocationType")}];
  v7 = [v3 stringWithFormat:@"%@=%@%@=%@;%@=%@", @"type", v4, @"isIndoor", v5, @"swimmingLocationType", v6];;

  if ([(FIWorkoutActivityType *)self isPartOfMultiSport])
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=YES", @"isPartOfMultiSport"];;
    [v7 appendString:v8];
  }

  return v7;
}

+ (FIWorkoutActivityType)activityTypeWithHKWorkoutActivityTypeIdentifier:(unint64_t)identifier isIndoor:(BOOL)indoor
{
  indoorCopy = indoor;
  v6 = [FIWorkoutActivityType alloc];
  v7 = [(FIWorkoutActivityType *)v6 initWithActivityTypeIdentifier:identifier isIndoor:indoorCopy metadata:MEMORY[0x277CBEC10]];

  return v7;
}

+ (FIWorkoutActivityType)activityTypeWithHKWorkoutActivityTypeIdentifier:(unint64_t)identifier isIndoor:(BOOL)indoor metadata:(id)metadata
{
  indoorCopy = indoor;
  metadataCopy = metadata;
  v8 = [[FIWorkoutActivityType alloc] initWithActivityTypeIdentifier:identifier isIndoor:indoorCopy metadata:metadataCopy];

  return v8;
}

+ (FIWorkoutActivityType)activityTypeWithWorkout:(id)workout
{
  workoutCopy = workout;
  v4 = [FIWorkoutActivityType alloc];
  workoutActivityType = [workoutCopy workoutActivityType];
  metadata = [workoutCopy metadata];
  v7 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCC4C0]];
  bOOLValue = [v7 BOOLValue];

  metadata2 = [workoutCopy metadata];

  v10 = [(FIWorkoutActivityType *)v4 initWithActivityTypeIdentifier:workoutActivityType isIndoor:bOOLValue metadata:metadata2];

  return v10;
}

+ (id)effectiveActivityTypeWithWorkout:(id)workout
{
  workoutCopy = workout;
  v4 = [FIWorkoutActivityType isEffectivelyIndoorForWorkout:workoutCopy];
  v5 = [FIWorkoutActivityType alloc];
  workoutActivityType = [workoutCopy workoutActivityType];
  metadata = [workoutCopy metadata];

  v8 = [(FIWorkoutActivityType *)v5 initWithActivityTypeIdentifier:workoutActivityType isIndoor:v4 metadata:metadata];

  return v8;
}

+ (BOOL)isEffectivelyIndoorForWorkout:(id)workout
{
  workoutCopy = workout;
  sourceRevision = [workoutCopy sourceRevision];
  source = [sourceRevision source];
  _hasFirstPartyBundleID = [source _hasFirstPartyBundleID];

  if ((_hasFirstPartyBundleID & 1) == 0)
  {
    goto LABEL_9;
  }

  workoutActivityType = [workoutCopy workoutActivityType];
  if (workoutActivityType != 35 && workoutActivityType != 25)
  {
    goto LABEL_9;
  }

  v20 = 0uLL;
  v21 = 0;
  HKNSOperatingSystemVersionFromString();
  v18 = 0uLL;
  v19 = 0;
  sourceRevision2 = [workoutCopy sourceRevision];
  v9 = sourceRevision2;
  if (sourceRevision2)
  {
    objc_msgSend_operatingSystemVersion(sourceRevision2);
  }

  else
  {
    v16 = 0uLL;
    v17 = 0;
  }

  FIEffectiveOperatingSystemVersion(&v16, &v18);

  v16 = v20;
  v17 = v21;
  v14 = v18;
  v15 = v19;
  if (HKNSOperatingSystemVersionCompare() == 1)
  {
    bOOLValue = 1;
  }

  else
  {
LABEL_9:
    metadata = [workoutCopy metadata];
    v12 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCC4C0]];
    bOOLValue = [v12 BOOLValue];
  }

  return bOOLValue;
}

- (FIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)identifier isIndoor:(BOOL)indoor isPartOfMultiSport:(BOOL)sport metadata:(id)metadata
{
  if (indoor)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  return [(FIWorkoutActivityType *)self initWithActivityTypeIdentifier:identifier location:v6 isPartOfMultiSport:sport metadata:metadata];
}

- (FIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)identifier isIndoor:(BOOL)indoor isPartOfMultiSport:(BOOL)sport metadata:(id)metadata auxiliaryTypeIdentifier:(unint64_t)typeIdentifier
{
  if (indoor)
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  return [(FIWorkoutActivityType *)self initWithActivityTypeIdentifier:identifier location:v7 isPartOfMultiSport:sport metadata:metadata auxiliaryTypeIdentifier:typeIdentifier];
}

- (FIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)identifier location:(int64_t)location isPartOfMultiSport:(BOOL)sport metadata:(id)metadata auxiliaryTypeIdentifier:(unint64_t)typeIdentifier
{
  v36 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v29.receiver = self;
  v29.super_class = FIWorkoutActivityType;
  v13 = [(FIWorkoutActivityType *)&v29 init];
  v14 = v13;
  if (v13)
  {
    v13->_identifier = identifier;
    v13->_auxiliaryTypeIdentifier = typeIdentifier;
    v13->_isPartOfMultiSport = sport;
    v13->_location = location;
    v13->_isIndoor = location == 2;
    if (metadataCopy && [metadataCopy count])
    {
      v15 = *MEMORY[0x277CCC510];
      v34[0] = *MEMORY[0x277CCC4D0];
      v34[1] = v15;
      v16 = *MEMORY[0x277CCC530];
      v34[2] = *MEMORY[0x277CCC518];
      v34[3] = v16;
      v34[4] = @"BackdatedStartDate";
      v34[5] = @"PredictionSessionUUID";
      v34[6] = @"_HKPrivateSeymourMediaType";
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:7];
      v18 = metadataCopy;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v20 = v17;
      v21 = [(NSDictionary *)v20 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v31;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v31 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v30 + 1) + 8 * i);
            v26 = [v18 objectForKeyedSubscript:v25];
            if (v26)
            {
              [(NSDictionary *)dictionary setObject:v26 forKeyedSubscript:v25];
            }
          }

          v22 = [(NSDictionary *)v20 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v22);
      }

      metadata = v14->_metadata;
      v14->_metadata = dictionary;
    }

    else
    {
      v20 = v14->_metadata;
      v14->_metadata = MEMORY[0x277CBEC10];
    }
  }

  return v14;
}

+ (id)activityTypeFromUniqueIdentifier:(id)identifier
{
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", "}];;
  v5 = [identifierCopy componentsSeparatedByCharactersInSet:v4];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v7)
  {
    v21 = identifierCopy;
    integerValue2 = 0;
    v23 = 0;
    integerValue = 0;
    v8 = *v26;
    while (2)
    {
      v9 = v6;
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v9);
        }

        v11 = [*(*(&v25 + 1) + 8 * i) componentsSeparatedByString:{@"=", v21}];
        if ([v11 count] != 2)
        {
          _HKInitializeLogging();
          v17 = *MEMORY[0x277CCC330];
          identifierCopy = v21;
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
          {
            [(FIWorkoutActivityType *)v21 activityTypeFromUniqueIdentifier:v17];
          }

          v18 = 0;
          v6 = v9;
          goto LABEL_31;
        }

        v12 = [v11 objectAtIndexedSubscript:0];
        v13 = [v11 objectAtIndexedSubscript:1];
        if ([v12 isEqualToString:@"type"])
        {
          integerValue = [v13 integerValue];
        }

        if ([v12 isEqualToString:@"isIndoor"])
        {
          LOBYTE(v23) = [v13 BOOLValue];
        }

        if ([v12 isEqualToString:@"isOther"])
        {
          [v13 BOOLValue];
        }

        if ([v12 isEqualToString:@"swimmingLocationType"])
        {
          integerValue2 = [v13 integerValue];
        }

        if ([v12 isEqualToString:@"isPartOfMultiSport"])
        {
          BYTE4(v23) = [v13 BOOLValue];
        }
      }

      v6 = v9;
      v7 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    if (integerValue2)
    {
      v29 = *MEMORY[0x277CCC510];
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:?];
      v30 = v14;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      identifierCopy = v21;
      v15 = integerValue;
      LOBYTE(v7) = v23;
      v16 = BYTE4(v23);
      goto LABEL_25;
    }

    v9 = 0;
    identifierCopy = v21;
    v15 = integerValue;
    LOBYTE(v7) = v23;
    v16 = BYTE4(v23);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v9 = 0;
    v14 = v6;
LABEL_25:
  }

  if (_HKWorkoutActivityTypeIsValid())
  {
    v18 = [[FIWorkoutActivityType alloc] initWithActivityTypeIdentifier:v15 isIndoor:v7 & 1 isPartOfMultiSport:v16 & 1 metadata:v9 auxiliaryTypeIdentifier:*MEMORY[0x277CCE1E0]];
  }

  else
  {
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      [(FIWorkoutActivityType *)identifierCopy activityTypeFromUniqueIdentifier:v19];
    }

    v18 = 0;
  }

LABEL_31:

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[FIWorkoutActivityType identifier](self forKey:{"identifier"), @"FIUIWorkoutActivityTypeTrueIdentifier"}];
  v4 = +[FIWorkoutActivityType otherWorkoutActivityTypes];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[FIWorkoutActivityType identifier](self, "identifier")}];
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    [coderCopy encodeInteger:3000 forKey:@"FIUIWorkoutActivityTypeIdentifier"];
    identifier = [(FIWorkoutActivityType *)self identifier];
  }

  else
  {
    [coderCopy encodeInteger:-[FIWorkoutActivityType identifier](self forKey:{"identifier"), @"FIUIWorkoutActivityTypeIdentifier"}];
    identifier = *MEMORY[0x277CCE1E0];
  }

  [coderCopy encodeInteger:identifier forKey:@"NLSessionAuxiliaryActivityTypeIdentifier"];
  [coderCopy encodeBool:-[FIWorkoutActivityType isIndoor](self forKey:{"isIndoor"), @"FIUIWorkoutActivityTypeIsIndoor"}];
  metadata = [(FIWorkoutActivityType *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"FIUIWorkoutActivityTypeMetadata"];

  [coderCopy encodeBool:-[FIWorkoutActivityType isPartOfMultiSport](self forKey:{"isPartOfMultiSport"), @"FIUIWorkoutActivityTypePartOfMultisport"}];
  [coderCopy encodeInteger:-[FIWorkoutActivityType location](self forKey:{"location"), @"FIUIWorkoutActivityTypeLocation"}];
}

- (FIWorkoutActivityType)initWithCoder:(id)coder
{
  v17[5] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = FIWorkoutActivityType;
  v5 = [(FIWorkoutActivityType *)&v16 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  v5->_identifier = [coderCopy decodeIntegerForKey:@"FIUIWorkoutActivityTypeIdentifier"];
  v5->_isIndoor = [coderCopy decodeBoolForKey:@"FIUIWorkoutActivityTypeIsIndoor"];
  v5->_auxiliaryTypeIdentifier = [coderCopy decodeIntegerForKey:@"NLSessionAuxiliaryActivityTypeIdentifier"];
  if ([coderCopy containsValueForKey:@"FIUIWorkoutActivityTypeTrueIdentifier"])
  {
    v5->_identifier = [coderCopy decodeIntegerForKey:@"FIUIWorkoutActivityTypeTrueIdentifier"];
    v6 = *MEMORY[0x277CCE1E0];
  }

  else
  {
    auxiliaryTypeIdentifier = v5->_auxiliaryTypeIdentifier;
    v6 = *MEMORY[0x277CCE1E0];
    if (auxiliaryTypeIdentifier == *MEMORY[0x277CCE1E0])
    {
      goto LABEL_7;
    }

    v5->_identifier = auxiliaryTypeIdentifier;
  }

  v5->_auxiliaryTypeIdentifier = v6;
LABEL_7:
  v8 = MEMORY[0x277CBEB98];
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v17[2] = objc_opt_class();
  v17[3] = objc_opt_class();
  v17[4] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:5];
  v10 = [v8 setWithArray:v9];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"FIUIWorkoutActivityTypeMetadata"];
  metadata = v5->_metadata;
  v5->_metadata = v11;

  v5->_isPartOfMultiSport = [coderCopy decodeBoolForKey:@"FIUIWorkoutActivityTypePartOfMultisport"];
  v13 = [coderCopy decodeIntegerForKey:@"FIUIWorkoutActivityTypeLocation"];
  v5->_location = v13;
  if (!v13)
  {
    v14 = 2;
    if (!v5->_isIndoor)
    {
      v14 = 3;
    }

    v5->_location = v14;
  }

LABEL_11:

  return v5;
}

- (HKQuantity)lapLength
{
  metadata = [(FIWorkoutActivityType *)self metadata];
  v3 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCC4D0]];

  return v3;
}

- (id)localizationKey
{
  effectiveTypeIdentifier = [(FIWorkoutActivityType *)self effectiveTypeIdentifier];
  isIndoor = self->_isIndoor;

  return FILocalizationKeyForHKWorkoutActivityTypeIsLocationAgnosticAndIsIndoor(effectiveTypeIdentifier, 0, isIndoor);
}

- (id)localizedNamePlural
{
  effectiveTypeIdentifier = [(FIWorkoutActivityType *)self effectiveTypeIdentifier];
  swimmingLocationType = [(FIWorkoutActivityType *)self swimmingLocationType];
  isIndoor = self->_isIndoor;

  return FILocalizedNameForActivityTypePlural(effectiveTypeIdentifier, swimmingLocationType, isIndoor);
}

- (id)localizedNameComponents
{
  v3 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:*MEMORY[0x277CCC510]];
  integerValue = [v3 integerValue];

  effectiveTypeIdentifier = [(FIWorkoutActivityType *)self effectiveTypeIdentifier];
  isIndoor = self->_isIndoor;

  return FILocalizedActivityNameComponentsWithFormatting(effectiveTypeIdentifier, integerValue, isIndoor, 0);
}

- (id)activityTypeByAddingLapLength:(double)length
{
  if (length > 2.22044605e-16 && [(FIWorkoutActivityType *)self identifier]== 46)
  {
    metadata = [(FIWorkoutActivityType *)self metadata];
    if (metadata)
    {
      metadata2 = [(FIWorkoutActivityType *)self metadata];
      v7 = [metadata2 mutableCopy];
    }

    else
    {
      v7 = objc_opt_new();
    }

    v9 = MEMORY[0x277CCD7E8];
    meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
    v11 = [v9 quantityWithUnit:meterUnit doubleValue:length];
    [v7 setObject:v11 forKey:*MEMORY[0x277CCC4D0]];

    selfCopy = [[FIWorkoutActivityType alloc] initWithActivityTypeIdentifier:[(FIWorkoutActivityType *)self identifier] isIndoor:[(FIWorkoutActivityType *)self isIndoor] isPartOfMultiSport:[(FIWorkoutActivityType *)self isPartOfMultiSport] metadata:v7];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)defaultActivityTypesWithIsWheelchairUser:(BOOL)user isSwimmingSupported:(BOOL)supported activityMoveMode:(int64_t)mode
{
  if (mode == 2)
  {
    v5 = FIFitnessJuniorDefaultActivityTypes();
  }

  else if (mode == 1)
  {
    v5 = FIStandardFitnessDefaultActivityTypes(user, supported);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)gymKitCapableActivityTypes
{
  v12[6] = *MEMORY[0x277D85DE8];
  v2 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:52 isIndoor:1];
  v12[0] = v2;
  v3 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:37 isIndoor:1];
  v12[1] = v3;
  v4 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:13 isIndoor:1];
  v12[2] = v4;
  v5 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:44 isIndoor:1];
  v12[3] = v5;
  v6 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:35 isIndoor:1];
  v12[4] = v6;
  v7 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:16 isIndoor:1];
  v12[5] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:6];
  v9 = gymKitCapableActivityTypes_activityTypes;
  gymKitCapableActivityTypes_activityTypes = v8;

  v10 = gymKitCapableActivityTypes_activityTypes;

  return v10;
}

+ (id)optimizedActivityTypesWithIsWheelchairUser:(BOOL)user isSwimmingSupported:(BOOL)supported
{
  userCopy = user;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__FIWorkoutActivityType_optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  supportedCopy = supported;
  if (optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__onceToken != -1)
  {
    dispatch_once(&optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__onceToken, block);
  }

  v5 = &optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__wheelchairActivityTypes;
  if (!userCopy)
  {
    v5 = &optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__activityTypes;
  }

  v6 = *v5;

  return v6;
}

void __88__FIWorkoutActivityType_optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported___block_invoke(uint64_t a1)
{
  v40[21] = *MEMORY[0x277D85DE8];
  v38 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:52 isIndoor:0];
  v40[0] = v38;
  v37 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:37 isIndoor:0];
  v40[1] = v37;
  v36 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:13 isIndoor:0];
  v40[2] = v36;
  v35 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:52 isIndoor:1];
  v40[3] = v35;
  v34 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:37 isIndoor:1];
  v40[4] = v34;
  v33 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:13 isIndoor:1];
  v40[5] = v33;
  v32 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:16 isIndoor:0];
  v40[6] = v32;
  v31 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:35 isIndoor:0];
  v40[7] = v31;
  v30 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:44 isIndoor:0];
  v40[8] = v30;
  v29 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:63 isIndoor:0];
  v40[9] = v29;
  v28 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:24 isIndoor:0];
  v40[10] = v28;
  v27 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:57 isIndoor:0];
  v40[11] = v27;
  v26 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:20 isIndoor:0];
  v40[12] = v26;
  v1 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:77 isIndoor:0];
  v40[13] = v1;
  v2 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:80 isIndoor:0];
  v40[14] = v2;
  v3 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:59 isIndoor:0];
  v40[15] = v3;
  v4 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:66 isIndoor:0];
  v40[16] = v4;
  v5 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:72 isIndoor:0];
  v40[17] = v5;
  v6 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:65 isIndoor:0];
  v40[18] = v6;
  v7 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:82 isIndoor:0];
  v40[19] = v7;
  v8 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:3000 isIndoor:0];
  v40[20] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:21];
  v10 = optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__activityTypes;
  optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__activityTypes = v9;

  v11 = optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__activityTypes;
  v12 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:35 isIndoor:1];
  v13 = [v11 arrayByAddingObject:v12];
  v14 = optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__activityTypes;
  optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__activityTypes = v13;

  v15 = +[FIWorkoutActivityType wheelchairActivityTypes];
  v16 = [v15 arrayByAddingObjectsFromArray:optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__activityTypes];
  v17 = optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__wheelchairActivityTypes;
  optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__wheelchairActivityTypes = v16;

  if (*(a1 + 32) == 1)
  {
    v18 = optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__activityTypes;
    v19 = +[FIWorkoutActivityType swimmingOptimizedActivityTypes];
    v20 = [v18 arrayByAddingObjectsFromArray:v19];
    v21 = optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__activityTypes;
    optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__activityTypes = v20;

    v22 = optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__wheelchairActivityTypes;
    v23 = +[FIWorkoutActivityType swimmingOptimizedActivityTypes];
    v24 = [v22 arrayByAddingObjectsFromArray:v23];
    v25 = optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__wheelchairActivityTypes;
    optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported__wheelchairActivityTypes = v24;
  }
}

+ (id)allActivityTypes
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = +[FIWorkoutActivityType otherWorkoutActivityTypes];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = +[FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:isIndoor:metadata:](FIWorkoutActivityType, "activityTypeWithHKWorkoutActivityTypeIdentifier:isIndoor:metadata:", [*(*(&v27 + 1) + 8 * i) integerValue], 0, 0);
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v6);
  }

  v21 = [FIWorkoutActivityType optimizedActivityTypesWithIsWheelchairUser:1 isSwimmingSupported:FIDeviceSupportsSwimming()];
  v10 = [v3 arrayByAddingObjectsFromArray:?];
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * j);
        if (+[FIWorkoutActivityType shouldDisambiguateOnLocationType:](FIWorkoutActivityType, "shouldDisambiguateOnLocationType:", [v16 effectiveTypeIdentifier]))
        {
          v17 = -[FIWorkoutActivityType initWithActivityTypeIdentifier:isIndoor:]([FIWorkoutActivityType alloc], "initWithActivityTypeIdentifier:isIndoor:", [v16 effectiveTypeIdentifier], objc_msgSend(v16, "isIndoor") ^ 1);
          if (([v11 containsObject:v17] & 1) == 0)
          {
            [v22 addObject:v17];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v13);
  }

  v18 = [v11 arrayByAddingObjectsFromArray:v22];
  v19 = [v18 mutableCopy];

  return v19;
}

+ (id)otherWorkoutActivityTypes
{
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:&unk_285E6B0E8];
  [v2 addObjectsFromArray:&unk_285E6B100];
  [v2 addObjectsFromArray:&unk_285E6B118];
  if (FIDeviceSupportsSwimming())
  {
    [v2 addObjectsFromArray:&unk_285E6B130];
  }

  return v2;
}

+ (id)nonOptimizedActivityTypes
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  otherWorkoutActivityTypes = [self otherWorkoutActivityTypes];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [otherWorkoutActivityTypes countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(otherWorkoutActivityTypes);
        }

        integerValue = [*(*(&v13 + 1) + 8 * i) integerValue];
        v10 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:integerValue isIndoor:0];
        [v3 addObject:v10];

        if ([FIWorkoutActivityType shouldDisambiguateOnLocationType:integerValue])
        {
          v11 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:integerValue isIndoor:1];
          [v3 addObject:v11];
        }
      }

      v6 = [otherWorkoutActivityTypes countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (id)unsupportedActivityTypesWithIsWheelchairUser:(BOOL)user isSwimmingSupported:(BOOL)supported
{
  v6 = +[FIWorkoutActivityType deprecatedActivityTypes];
  if (!supported)
  {
    v7 = +[FIWorkoutActivityType swimmingOptimizedActivityTypes];
    v8 = +[FIWorkoutActivityType swimmingOtherActivityTypes];
    v9 = [v7 arrayByAddingObjectsFromArray:v8];

    v10 = [v6 arrayByAddingObjectsFromArray:v9];

    v6 = v10;
  }

  if (!user)
  {
    v11 = +[FIWorkoutActivityType wheelchairActivityTypes];
    v12 = [v6 arrayByAddingObjectsFromArray:v11];

    v6 = v12;
  }

  v13 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:84 isIndoor:0 metadata:0];
  v14 = [v6 arrayByAddingObject:v13];

  v15 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:82 isIndoor:0 metadata:0];
  v16 = [v14 arrayByAddingObject:v15];

  return v16;
}

+ (id)wheelchairActivityTypes
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:70 isIndoor:0];
  v6[0] = v2;
  v3 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:71 isIndoor:0];
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

+ (id)swimmingOptimizedActivityTypes
{
  v13[2] = *MEMORY[0x277D85DE8];
  v11 = *MEMORY[0x277CCC510];
  v2 = v11;
  v12 = &unk_285E6A668;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v4 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:46 isIndoor:0 metadata:v3];
  v13[0] = v4;
  v9 = v2;
  v10 = &unk_285E6A680;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v6 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:46 isIndoor:0 metadata:v5];
  v13[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  return v7;
}

+ (id)swimmingOtherActivityTypes
{
  v8[4] = *MEMORY[0x277D85DE8];
  v2 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:53 isIndoor:0 metadata:0];
  v8[0] = v2;
  v3 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:84 isIndoor:0 metadata:0];
  v8[1] = v3;
  v4 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:54 isIndoor:0 metadata:0];
  v8[2] = v4;
  v5 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:55 isIndoor:0 metadata:0];
  v8[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:4];

  return v6;
}

+ (id)phoneOnlySupportedActivityTypes
{
  v10[6] = *MEMORY[0x277D85DE8];
  v2 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:52 isIndoor:0];
  v10[0] = v2;
  v3 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:37 isIndoor:0];
  v10[1] = v3;
  v4 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:24 isIndoor:0];
  v10[2] = v4;
  v5 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:70 isIndoor:0];
  v10[3] = v5;
  v6 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:71 isIndoor:0];
  v10[4] = v6;
  v7 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:13 isIndoor:0];
  v10[5] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:6];

  return v8;
}

+ (id)phoneAndHeartRateMonitorSupportedActivityTypes
{
  v50[44] = *MEMORY[0x277D85DE8];
  v49 = +[FIWorkoutActivityType phoneOnlySupportedActivityTypes];
  v48 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:52 isIndoor:1];
  v50[0] = v48;
  v47 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:37 isIndoor:1];
  v50[1] = v47;
  v46 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:16 isIndoor:0];
  v50[2] = v46;
  v45 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:44 isIndoor:0];
  v50[3] = v45;
  v44 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:13 isIndoor:1];
  v50[4] = v44;
  v43 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:35 isIndoor:1];
  v50[5] = v43;
  v42 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:63 isIndoor:0];
  v50[6] = v42;
  v41 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:77 isIndoor:0];
  v50[7] = v41;
  v40 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:65 isIndoor:0];
  v50[8] = v40;
  v39 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:20 isIndoor:0];
  v50[9] = v39;
  v38 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:59 isIndoor:0];
  v50[10] = v38;
  v37 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:66 isIndoor:0];
  v50[11] = v37;
  v36 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:57 isIndoor:0];
  v50[12] = v36;
  v35 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:80 isIndoor:0];
  v50[13] = v35;
  v34 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:72 isIndoor:0];
  v50[14] = v34;
  v33 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:61 isIndoor:0];
  v50[15] = v33;
  v32 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:67 isIndoor:0];
  v50[16] = v32;
  v31 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:21 isIndoor:0];
  v50[17] = v31;
  v30 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:60 isIndoor:0];
  v50[18] = v30;
  v29 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:35 isIndoor:0];
  v50[19] = v29;
  v28 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:31 isIndoor:0];
  v50[20] = v28;
  v27 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:39 isIndoor:0];
  v50[21] = v27;
  v26 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:2 isIndoor:0];
  v50[22] = v26;
  v25 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:58 isIndoor:0];
  v50[23] = v25;
  v24 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:8 isIndoor:0];
  v50[24] = v24;
  v23 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:9 isIndoor:0];
  v50[25] = v23;
  v22 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:11 isIndoor:0];
  v50[26] = v22;
  v21 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:19 isIndoor:0];
  v50[27] = v21;
  v20 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:76 isIndoor:0];
  v50[28] = v20;
  v19 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:62 isIndoor:0];
  v50[29] = v19;
  v18 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:74 isIndoor:0];
  v50[30] = v18;
  v17 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:64 isIndoor:0];
  v50[31] = v17;
  v15 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:29 isIndoor:0];
  v50[32] = v15;
  v14 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:73 isIndoor:0];
  v50[33] = v14;
  v2 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:3000 isIndoor:0];
  v50[34] = v2;
  v3 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:32 isIndoor:0];
  v50[35] = v3;
  v4 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:38 isIndoor:0];
  v50[36] = v4;
  v5 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:40 isIndoor:0];
  v50[37] = v5;
  v6 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:68 isIndoor:0];
  v50[38] = v6;
  v7 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:69 isIndoor:0];
  v50[39] = v7;
  v8 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:49 isIndoor:0];
  v50[40] = v8;
  v9 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:50 isIndoor:0];
  v50[41] = v9;
  v10 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:39 isIndoor:1];
  v50[42] = v10;
  v11 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:33 isIndoor:0];
  v50[43] = v11;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:44];

  v12 = [v49 arrayByAddingObjectsFromArray:v16];

  return v12;
}

+ (id)deprecatedActivityTypes
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = [FIWorkoutActivityType alloc];
  v3 = [(FIWorkoutActivityType *)v2 initWithActivityTypeIdentifier:14 isIndoor:0 metadata:MEMORY[0x277CBEC10] auxiliaryTypeIdentifier:*MEMORY[0x277CCE1E0]];
  v10[0] = v3;
  v8 = *MEMORY[0x277CCC510];
  v9 = &unk_285E6A698;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v5 = [FIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:46 isIndoor:0 metadata:v4];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  return v6;
}

- (NSString)legacyUniqueIdentifier
{
  v3 = MEMORY[0x277CCAB68];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[FIWorkoutActivityType effectiveTypeIdentifier](self, "effectiveTypeIdentifier")}];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[FIWorkoutActivityType isCategorizedOtherWorkout](self, "isCategorizedOtherWorkout")}];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[FIWorkoutActivityType isIndoor](self, "isIndoor")}];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[FIWorkoutActivityType swimmingLocationType](self, "swimmingLocationType")}];
  v8 = [v3 stringWithFormat:@"%@=%@%@=%@;%@=%@, %@=%@", @"type", v4, @"isOther", v5, @"isIndoor", v6, @"swimmingLocationType", v7];;

  if ([(FIWorkoutActivityType *)self isPartOfMultiSport])
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=YES", @"isPartOfMultiSport"];;
    [v8 appendString:v9];
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = self->_identifier;
  v4 = 31 * ([(FIWorkoutActivityType *)self swimmingLocationType]- identifier + 32 * identifier);
  v5 = v4 + [(FIWorkoutActivityType *)self isPartOfMultiSport]+ 29791;
  if ([FIWorkoutActivityType shouldDisambiguateOnLocationType:[(FIWorkoutActivityType *)self effectiveTypeIdentifier]])
  {
    return 31 * v5 + [(FIWorkoutActivityType *)self isIndoor];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v5 = [equalCopy identifier], v5 == -[FIWorkoutActivityType identifier](self, "identifier")) && (v6 = objc_msgSend(equalCopy, "swimmingLocationType"), v6 == -[FIWorkoutActivityType swimmingLocationType](self, "swimmingLocationType")) && (v7 = objc_msgSend(equalCopy, "isPartOfMultiSport"), v7 == -[FIWorkoutActivityType isPartOfMultiSport](self, "isPartOfMultiSport")))
  {
    if (+[FIWorkoutActivityType shouldDisambiguateOnLocationType:](FIWorkoutActivityType, "shouldDisambiguateOnLocationType:", [equalCopy effectiveTypeIdentifier]) || +[FIWorkoutActivityType shouldDisambiguateOnLocationType:](FIWorkoutActivityType, "shouldDisambiguateOnLocationType:", -[FIWorkoutActivityType effectiveTypeIdentifier](self, "effectiveTypeIdentifier")))
    {
      isIndoor = [equalCopy isIndoor];
      v8 = isIndoor ^ [(FIWorkoutActivityType *)self isIndoor]^ 1;
    }

    else
    {
      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

+ (BOOL)shouldDisambiguateOnLocationType:(unint64_t)type
{
  if (shouldDisambiguateOnLocationType__onceToken != -1)
  {
    +[FIWorkoutActivityType shouldDisambiguateOnLocationType:];
  }

  v4 = shouldDisambiguateOnLocationType__indoorOutdoorActivityTypes;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  LOBYTE(v4) = [v4 containsObject:v5];

  return v4;
}

void __58__FIWorkoutActivityType_shouldDisambiguateOnLocationType___block_invoke()
{
  v0 = shouldDisambiguateOnLocationType__indoorOutdoorActivityTypes;
  shouldDisambiguateOnLocationType__indoorOutdoorActivityTypes = &unk_285E6B148;
}

+ (id)possibleActivityTypesForIdentifier:(unint64_t)identifier locationType:(int64_t)type swimmingLocationType:(int64_t)locationType wheelchairUser:(BOOL)user
{
  userCopy = user;
  v34 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  identifierCopy = identifier;
  IsValid = _HKWorkoutActivityTypeIsValid();
  v11 = [self optimizedActivityTypesWithIsWheelchairUser:userCopy isSwimmingSupported:FIDeviceSupportsSwimming()];
  v12 = [v11 mutableCopy];

  nonOptimizedActivityTypes = [self nonOptimizedActivityTypes];
  [v12 addObjectsFromArray:nonOptimizedActivityTypes];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    v19 = identifier != 46 || locationType == 0;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v21 = *(*(&v29 + 1) + 8 * i);
        if (IsValid)
        {
          v22 = [*(*(&v29 + 1) + 8 * i) effectiveTypeIdentifier] == identifierCopy;
        }

        else
        {
          v22 = 1;
        }

        if (type == 1 || (((type != 2) ^ [v21 isIndoor]) & 1) != 0)
        {
          v23 = 1;
          if (v19)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v23 = !+[FIWorkoutActivityType shouldDisambiguateOnLocationType:](FIWorkoutActivityType, "shouldDisambiguateOnLocationType:", [v21 effectiveTypeIdentifier]);
          if (v19)
          {
LABEL_17:
            v24 = 1;
            goto LABEL_20;
          }
        }

        v24 = [v21 swimmingLocationType] == locationType;
LABEL_20:
        if ((v22 & v23 & v24) == 1)
        {
          [array addObject:v21];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v16);
  }

  return array;
}

+ (unint64_t)mapWheelchairUserActivityType:(unint64_t)type isWheelchairUser:(BOOL)user
{
  result = type;
  if (user)
  {
    if (type == 37)
    {
      return 71;
    }

    else if (type == 52)
    {
      return 70;
    }
  }

  return result;
}

- (id)activityTypePlistKey
{
  identifier = [(FIWorkoutActivityType *)self identifier];
  isIndoor = [(FIWorkoutActivityType *)self isIndoor];
  swimmingLocationType = [(FIWorkoutActivityType *)self swimmingLocationType];

  return FIGeneralizedActivityTypeKey(identifier, isIndoor, swimmingLocationType);
}

- (BOOL)supportsSafetyCheckInPrompt
{
  effectiveTypeIdentifier = [(FIWorkoutActivityType *)self effectiveTypeIdentifier];
  v4 = effectiveTypeIdentifier - 9 > 0x3E || ((1 << (effectiveTypeIdentifier - 9)) & 0x6418083874429511) == 0;
  if (!v4 || effectiveTypeIdentifier == 82 || effectiveTypeIdentifier == 74)
  {
    return ![(FIWorkoutActivityType *)self isIndoor];
  }

  else
  {
    return 0;
  }
}

- (BOOL)supportsWorkoutVoiceMotivationProgressMoments
{
  effectiveTypeIdentifier = [(FIWorkoutActivityType *)self effectiveTypeIdentifier];
  if (effectiveTypeIdentifier <= 0x3F && ((1 << effectiveTypeIdentifier) & 0x8004000000100000) != 0)
  {
    return 0;
  }

  return [(FIWorkoutActivityType *)self supportsWorkoutVoiceMotivation];
}

- (BOOL)supportsWorkoutVoiceMotivationBreakthroughMoments
{
  effectiveTypeIdentifier = [(FIWorkoutActivityType *)self effectiveTypeIdentifier];
  if (effectiveTypeIdentifier <= 0x3F && ((1 << effectiveTypeIdentifier) & 0x8004000000100000) != 0)
  {
    return 0;
  }

  return [(FIWorkoutActivityType *)self supportsWorkoutVoiceMotivation];
}

+ (void)activityTypeFromUniqueIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24B35E000, a2, OS_LOG_TYPE_ERROR, "Unable to parse property and value from uniqueIdentifier=%@", &v2, 0xCu);
}

+ (void)activityTypeFromUniqueIdentifier:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24B35E000, a2, OS_LOG_TYPE_ERROR, "Unable to parse property and value from uniqueIdentifier=%@. Invalid activity identifier.", &v2, 0xCu);
}

@end