@interface BMMomentsEventDataEventBundleClusterMetadata
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMomentsEventDataEventBundleClusterMetadata)initWithIsFiltered:(id)filtered isTopLevelActivityTypePhenotypeDetected:(id)detected isSecondLevelActivityTypePhenotypeDetected:(id)phenotypeDetected isWeekendPhenotypeDetected:(id)weekendPhenotypeDetected isTimeTagPhenotypeDetected:(id)tagPhenotypeDetected isDayOfWeekPhenotypeDetected:(id)weekPhenotypeDetected isPlaceNamePhenotypeDetected:(id)namePhenotypeDetected isCombinedPlacePhenotypeDetected:(id)self0 isEnclosingAreaNamePhenotypeDetected:(id)self1 isPersonsPhenotypeDetected:(id)self2 isPersonRelationshipPhenotypeDetected:(id)self3 isActivityTypeFromPhotoTraitsPhenotypeDetected:(id)self4 isTimeContextFromPhotoTraitsPhenotypeDetected:(id)self5 isLocationContextFromPhotoTraitsPhenotypeDetected:(id)self6 isSocialContextFromPhotoTraitsPhenotypeDetected:(id)self7 isExtraContextFromPhotoTraitsPhenotypeDetected:(id)self8 isOtherSubjectFromPhotoTraitsPhenotypeDetected:(id)self9;
- (BMMomentsEventDataEventBundleClusterMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMomentsEventDataEventBundleClusterMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsFiltered](self, "hasIsFiltered") || [v5 hasIsFiltered])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsFiltered])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsFiltered])
      {
        goto LABEL_88;
      }

      isFiltered = [(BMMomentsEventDataEventBundleClusterMetadata *)self isFiltered];
      if (isFiltered != [v5 isFiltered])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsTopLevelActivityTypePhenotypeDetected](self, "hasIsTopLevelActivityTypePhenotypeDetected") || [v5 hasIsTopLevelActivityTypePhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsTopLevelActivityTypePhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsTopLevelActivityTypePhenotypeDetected])
      {
        goto LABEL_88;
      }

      isTopLevelActivityTypePhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isTopLevelActivityTypePhenotypeDetected];
      if (isTopLevelActivityTypePhenotypeDetected != [v5 isTopLevelActivityTypePhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsSecondLevelActivityTypePhenotypeDetected](self, "hasIsSecondLevelActivityTypePhenotypeDetected") || [v5 hasIsSecondLevelActivityTypePhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsSecondLevelActivityTypePhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsSecondLevelActivityTypePhenotypeDetected])
      {
        goto LABEL_88;
      }

      isSecondLevelActivityTypePhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isSecondLevelActivityTypePhenotypeDetected];
      if (isSecondLevelActivityTypePhenotypeDetected != [v5 isSecondLevelActivityTypePhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsWeekendPhenotypeDetected](self, "hasIsWeekendPhenotypeDetected") || [v5 hasIsWeekendPhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsWeekendPhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsWeekendPhenotypeDetected])
      {
        goto LABEL_88;
      }

      isWeekendPhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isWeekendPhenotypeDetected];
      if (isWeekendPhenotypeDetected != [v5 isWeekendPhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsTimeTagPhenotypeDetected](self, "hasIsTimeTagPhenotypeDetected") || [v5 hasIsTimeTagPhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsTimeTagPhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsTimeTagPhenotypeDetected])
      {
        goto LABEL_88;
      }

      isTimeTagPhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isTimeTagPhenotypeDetected];
      if (isTimeTagPhenotypeDetected != [v5 isTimeTagPhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsDayOfWeekPhenotypeDetected](self, "hasIsDayOfWeekPhenotypeDetected") || [v5 hasIsDayOfWeekPhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsDayOfWeekPhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsDayOfWeekPhenotypeDetected])
      {
        goto LABEL_88;
      }

      isDayOfWeekPhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isDayOfWeekPhenotypeDetected];
      if (isDayOfWeekPhenotypeDetected != [v5 isDayOfWeekPhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsPlaceNamePhenotypeDetected](self, "hasIsPlaceNamePhenotypeDetected") || [v5 hasIsPlaceNamePhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsPlaceNamePhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsPlaceNamePhenotypeDetected])
      {
        goto LABEL_88;
      }

      isPlaceNamePhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isPlaceNamePhenotypeDetected];
      if (isPlaceNamePhenotypeDetected != [v5 isPlaceNamePhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsCombinedPlacePhenotypeDetected](self, "hasIsCombinedPlacePhenotypeDetected") || [v5 hasIsCombinedPlacePhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsCombinedPlacePhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsCombinedPlacePhenotypeDetected])
      {
        goto LABEL_88;
      }

      isCombinedPlacePhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isCombinedPlacePhenotypeDetected];
      if (isCombinedPlacePhenotypeDetected != [v5 isCombinedPlacePhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsEnclosingAreaNamePhenotypeDetected](self, "hasIsEnclosingAreaNamePhenotypeDetected") || [v5 hasIsEnclosingAreaNamePhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsEnclosingAreaNamePhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsEnclosingAreaNamePhenotypeDetected])
      {
        goto LABEL_88;
      }

      isEnclosingAreaNamePhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isEnclosingAreaNamePhenotypeDetected];
      if (isEnclosingAreaNamePhenotypeDetected != [v5 isEnclosingAreaNamePhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsPersonsPhenotypeDetected](self, "hasIsPersonsPhenotypeDetected") || [v5 hasIsPersonsPhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsPersonsPhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsPersonsPhenotypeDetected])
      {
        goto LABEL_88;
      }

      isPersonsPhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isPersonsPhenotypeDetected];
      if (isPersonsPhenotypeDetected != [v5 isPersonsPhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsPersonRelationshipPhenotypeDetected](self, "hasIsPersonRelationshipPhenotypeDetected") || [v5 hasIsPersonRelationshipPhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsPersonRelationshipPhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsPersonRelationshipPhenotypeDetected])
      {
        goto LABEL_88;
      }

      isPersonRelationshipPhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isPersonRelationshipPhenotypeDetected];
      if (isPersonRelationshipPhenotypeDetected != [v5 isPersonRelationshipPhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsActivityTypeFromPhotoTraitsPhenotypeDetected](self, "hasIsActivityTypeFromPhotoTraitsPhenotypeDetected") || [v5 hasIsActivityTypeFromPhotoTraitsPhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsActivityTypeFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsActivityTypeFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }

      isActivityTypeFromPhotoTraitsPhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isActivityTypeFromPhotoTraitsPhenotypeDetected];
      if (isActivityTypeFromPhotoTraitsPhenotypeDetected != [v5 isActivityTypeFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsTimeContextFromPhotoTraitsPhenotypeDetected](self, "hasIsTimeContextFromPhotoTraitsPhenotypeDetected") || [v5 hasIsTimeContextFromPhotoTraitsPhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsTimeContextFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsTimeContextFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }

      isTimeContextFromPhotoTraitsPhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isTimeContextFromPhotoTraitsPhenotypeDetected];
      if (isTimeContextFromPhotoTraitsPhenotypeDetected != [v5 isTimeContextFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsLocationContextFromPhotoTraitsPhenotypeDetected](self, "hasIsLocationContextFromPhotoTraitsPhenotypeDetected") || [v5 hasIsLocationContextFromPhotoTraitsPhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsLocationContextFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsLocationContextFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }

      isLocationContextFromPhotoTraitsPhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isLocationContextFromPhotoTraitsPhenotypeDetected];
      if (isLocationContextFromPhotoTraitsPhenotypeDetected != [v5 isLocationContextFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsSocialContextFromPhotoTraitsPhenotypeDetected](self, "hasIsSocialContextFromPhotoTraitsPhenotypeDetected") || [v5 hasIsSocialContextFromPhotoTraitsPhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsSocialContextFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsSocialContextFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }

      isSocialContextFromPhotoTraitsPhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isSocialContextFromPhotoTraitsPhenotypeDetected];
      if (isSocialContextFromPhotoTraitsPhenotypeDetected != [v5 isSocialContextFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsExtraContextFromPhotoTraitsPhenotypeDetected](self, "hasIsExtraContextFromPhotoTraitsPhenotypeDetected") || [v5 hasIsExtraContextFromPhotoTraitsPhenotypeDetected])
    {
      if (![(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsExtraContextFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }

      if (![v5 hasIsExtraContextFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }

      isExtraContextFromPhotoTraitsPhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isExtraContextFromPhotoTraitsPhenotypeDetected];
      if (isExtraContextFromPhotoTraitsPhenotypeDetected != [v5 isExtraContextFromPhotoTraitsPhenotypeDetected])
      {
        goto LABEL_88;
      }
    }

    if (!-[BMMomentsEventDataEventBundleClusterMetadata hasIsOtherSubjectFromPhotoTraitsPhenotypeDetected](self, "hasIsOtherSubjectFromPhotoTraitsPhenotypeDetected") && ![v5 hasIsOtherSubjectFromPhotoTraitsPhenotypeDetected])
    {
      LOBYTE(v23) = 1;
      goto LABEL_89;
    }

    if (-[BMMomentsEventDataEventBundleClusterMetadata hasIsOtherSubjectFromPhotoTraitsPhenotypeDetected](self, "hasIsOtherSubjectFromPhotoTraitsPhenotypeDetected") && [v5 hasIsOtherSubjectFromPhotoTraitsPhenotypeDetected])
    {
      isOtherSubjectFromPhotoTraitsPhenotypeDetected = [(BMMomentsEventDataEventBundleClusterMetadata *)self isOtherSubjectFromPhotoTraitsPhenotypeDetected];
      v23 = isOtherSubjectFromPhotoTraitsPhenotypeDetected ^ [v5 isOtherSubjectFromPhotoTraitsPhenotypeDetected] ^ 1;
    }

    else
    {
LABEL_88:
      LOBYTE(v23) = 0;
    }

LABEL_89:

    goto LABEL_90;
  }

  LOBYTE(v23) = 0;
LABEL_90:

  return v23;
}

- (id)jsonDictionary
{
  v59[17] = *MEMORY[0x1E69E9840];
  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsFiltered])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isFiltered](self, "isFiltered")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsTopLevelActivityTypePhenotypeDetected])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isTopLevelActivityTypePhenotypeDetected](self, "isTopLevelActivityTypePhenotypeDetected")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsSecondLevelActivityTypePhenotypeDetected])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isSecondLevelActivityTypePhenotypeDetected](self, "isSecondLevelActivityTypePhenotypeDetected")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsWeekendPhenotypeDetected])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isWeekendPhenotypeDetected](self, "isWeekendPhenotypeDetected")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsTimeTagPhenotypeDetected])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isTimeTagPhenotypeDetected](self, "isTimeTagPhenotypeDetected")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsDayOfWeekPhenotypeDetected])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isDayOfWeekPhenotypeDetected](self, "isDayOfWeekPhenotypeDetected")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsPlaceNamePhenotypeDetected])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isPlaceNamePhenotypeDetected](self, "isPlaceNamePhenotypeDetected")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsCombinedPlacePhenotypeDetected])
  {
    v57 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isCombinedPlacePhenotypeDetected](self, "isCombinedPlacePhenotypeDetected")}];
  }

  else
  {
    v57 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsEnclosingAreaNamePhenotypeDetected])
  {
    v56 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isEnclosingAreaNamePhenotypeDetected](self, "isEnclosingAreaNamePhenotypeDetected")}];
  }

  else
  {
    v56 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsPersonsPhenotypeDetected])
  {
    v55 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isPersonsPhenotypeDetected](self, "isPersonsPhenotypeDetected")}];
  }

  else
  {
    v55 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsPersonRelationshipPhenotypeDetected])
  {
    v54 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isPersonRelationshipPhenotypeDetected](self, "isPersonRelationshipPhenotypeDetected")}];
  }

  else
  {
    v54 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsActivityTypeFromPhotoTraitsPhenotypeDetected])
  {
    v53 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isActivityTypeFromPhotoTraitsPhenotypeDetected](self, "isActivityTypeFromPhotoTraitsPhenotypeDetected")}];
  }

  else
  {
    v53 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsTimeContextFromPhotoTraitsPhenotypeDetected])
  {
    v52 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isTimeContextFromPhotoTraitsPhenotypeDetected](self, "isTimeContextFromPhotoTraitsPhenotypeDetected")}];
  }

  else
  {
    v52 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsLocationContextFromPhotoTraitsPhenotypeDetected])
  {
    v51 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isLocationContextFromPhotoTraitsPhenotypeDetected](self, "isLocationContextFromPhotoTraitsPhenotypeDetected")}];
  }

  else
  {
    v51 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsSocialContextFromPhotoTraitsPhenotypeDetected])
  {
    v50 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isSocialContextFromPhotoTraitsPhenotypeDetected](self, "isSocialContextFromPhotoTraitsPhenotypeDetected")}];
  }

  else
  {
    v50 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsExtraContextFromPhotoTraitsPhenotypeDetected])
  {
    v49 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isExtraContextFromPhotoTraitsPhenotypeDetected](self, "isExtraContextFromPhotoTraitsPhenotypeDetected")}];
  }

  else
  {
    v49 = 0;
  }

  if ([(BMMomentsEventDataEventBundleClusterMetadata *)self hasIsOtherSubjectFromPhotoTraitsPhenotypeDetected])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isOtherSubjectFromPhotoTraitsPhenotypeDetected](self, "isOtherSubjectFromPhotoTraitsPhenotypeDetected")}];
  }

  else
  {
    v10 = 0;
  }

  v58[0] = @"isFiltered";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v43 = null;
  v59[0] = null;
  v58[1] = @"isTopLevelActivityTypePhenotypeDetected";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = null2;
  v59[1] = null2;
  v58[2] = @"isSecondLevelActivityTypePhenotypeDetected";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = null3;
  v59[2] = null3;
  v58[3] = @"isWeekendPhenotypeDetected";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = null4;
  v59[3] = null4;
  v58[4] = @"isTimeTagPhenotypeDetected";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = null5;
  v59[4] = null5;
  v58[5] = @"isDayOfWeekPhenotypeDetected";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = null6;
  v59[5] = null6;
  v58[6] = @"isPlaceNamePhenotypeDetected";
  null7 = v9;
  if (!v9)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = null7;
  v59[6] = null7;
  v58[7] = @"isCombinedPlacePhenotypeDetected";
  null8 = v57;
  if (!v57)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v59[7] = null8;
  v58[8] = @"isEnclosingAreaNamePhenotypeDetected";
  null9 = v56;
  if (!v56)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = v3;
  v59[8] = null9;
  v58[9] = @"isPersonsPhenotypeDetected";
  null10 = v55;
  if (!v55)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = v9;
  v59[9] = null10;
  v58[10] = @"isPersonRelationshipPhenotypeDetected";
  null11 = v54;
  if (!v54)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v47 = v4;
  v32 = null11;
  v59[10] = null11;
  v58[11] = @"isActivityTypeFromPhotoTraitsPhenotypeDetected";
  null12 = v53;
  if (!v53)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = null9;
  v36 = null8;
  v46 = v7;
  v59[11] = null12;
  v58[12] = @"isTimeContextFromPhotoTraitsPhenotypeDetected";
  null13 = v52;
  if (!v52)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v8;
  v25 = v5;
  v59[12] = null13;
  v58[13] = @"isLocationContextFromPhotoTraitsPhenotypeDetected";
  null14 = v51;
  if (!v51)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v6;
  v59[13] = null14;
  v58[14] = @"isSocialContextFromPhotoTraitsPhenotypeDetected";
  null15 = v50;
  if (!v50)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = null10;
  v59[14] = null15;
  v58[15] = @"isExtraContextFromPhotoTraitsPhenotypeDetected";
  null16 = v49;
  if (!v49)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v59[15] = null16;
  v58[16] = @"isOtherSubjectFromPhotoTraitsPhenotypeDetected";
  null17 = v10;
  if (!v10)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v59[16] = null17;
  v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:{17, v32}];
  if (!v10)
  {
  }

  if (!v49)
  {
  }

  if (!v50)
  {
  }

  if (!v51)
  {
  }

  if (!v52)
  {
  }

  if (!v53)
  {
  }

  if (!v54)
  {
  }

  if (!v55)
  {
  }

  if (!v56)
  {
  }

  if (v57)
  {
    if (v45)
    {
      goto LABEL_106;
    }
  }

  else
  {

    if (v45)
    {
LABEL_106:
      if (v24)
      {
        goto LABEL_107;
      }

      goto LABEL_117;
    }
  }

  if (v24)
  {
LABEL_107:
    if (v46)
    {
      goto LABEL_108;
    }

    goto LABEL_118;
  }

LABEL_117:

  if (v46)
  {
LABEL_108:
    if (v27)
    {
      goto LABEL_109;
    }

    goto LABEL_119;
  }

LABEL_118:

  if (v27)
  {
LABEL_109:
    if (v25)
    {
      goto LABEL_110;
    }

    goto LABEL_120;
  }

LABEL_119:

  if (v25)
  {
LABEL_110:
    if (v47)
    {
      goto LABEL_111;
    }

LABEL_121:

    if (v48)
    {
      goto LABEL_112;
    }

    goto LABEL_122;
  }

LABEL_120:

  if (!v47)
  {
    goto LABEL_121;
  }

LABEL_111:
  if (v48)
  {
    goto LABEL_112;
  }

LABEL_122:

LABEL_112:

  return v44;
}

- (BMMomentsEventDataEventBundleClusterMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v176[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v142 = [dictionaryCopy objectForKeyedSubscript:@"isFiltered"];
  if (!v142 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v139 = 0;
LABEL_4:
    v5 = [dictionaryCopy objectForKeyedSubscript:@"isTopLevelActivityTypePhenotypeDetected"];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v138 = 0;
          v37 = 0;
          goto LABEL_68;
        }

        v43 = objc_alloc(MEMORY[0x1E696ABC0]);
        v44 = *MEMORY[0x1E698F240];
        v173 = *MEMORY[0x1E696A578];
        v137 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isTopLevelActivityTypePhenotypeDetected"];
        v174 = v137;
        v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v174 forKeys:&v173 count:1];
        v138 = 0;
        v37 = 0;
        *error = [v43 initWithDomain:v44 code:2 userInfo:v6];
        goto LABEL_67;
      }

      v138 = v5;
    }

    else
    {
      v138 = 0;
    }

    v6 = [dictionaryCopy objectForKeyedSubscript:@"isSecondLevelActivityTypePhenotypeDetected"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v137 = 0;
          v37 = 0;
          goto LABEL_67;
        }

        v45 = objc_alloc(MEMORY[0x1E696ABC0]);
        v46 = *MEMORY[0x1E698F240];
        v171 = *MEMORY[0x1E696A578];
        v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isSecondLevelActivityTypePhenotypeDetected"];
        v172 = v47;
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v172 forKeys:&v171 count:1];
        v14 = v47;
        v137 = 0;
        v37 = 0;
        *error = [v45 initWithDomain:v46 code:2 userInfo:v7];
LABEL_66:

LABEL_67:
        goto LABEL_68;
      }

      v137 = v6;
    }

    else
    {
      v137 = 0;
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isWeekendPhenotypeDetected"];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v14 = 0;
          v37 = 0;
          goto LABEL_66;
        }

        v48 = objc_alloc(MEMORY[0x1E696ABC0]);
        v49 = *MEMORY[0x1E698F240];
        v169 = *MEMORY[0x1E696A578];
        v135 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isWeekendPhenotypeDetected"];
        v170 = v135;
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v170 forKeys:&v169 count:1];
        v14 = 0;
        v37 = 0;
        *error = [v48 initWithDomain:v49 code:2 userInfo:v39];
        goto LABEL_65;
      }

      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isTimeTagPhenotypeDetected"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v135 = 0;
          v37 = 0;
          v39 = v9;
          v14 = v8;
          goto LABEL_65;
        }

        v136 = objc_alloc(MEMORY[0x1E696ABC0]);
        v133 = *MEMORY[0x1E698F240];
        v167 = *MEMORY[0x1E696A578];
        v39 = v9;
        v14 = v8;
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isTimeTagPhenotypeDetected"];
        v168 = v11;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v168 forKeys:&v167 count:1];
        v50 = [v136 initWithDomain:v133 code:2 userInfo:v10];
        v135 = 0;
        v37 = 0;
        *error = v50;
LABEL_64:

LABEL_65:
        goto LABEL_66;
      }

      v131 = v9;
      v135 = v9;
    }

    else
    {
      v131 = v9;
      v135 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isDayOfWeekPhenotypeDetected"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = v8;
        if (!error)
        {
          v11 = 0;
          v37 = 0;
          v39 = v131;
          goto LABEL_64;
        }

        v130 = objc_alloc(MEMORY[0x1E696ABC0]);
        v128 = *MEMORY[0x1E698F240];
        v165 = *MEMORY[0x1E696A578];
        v132 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isDayOfWeekPhenotypeDetected"];
        v166 = v132;
        v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v166 forKeys:&v165 count:1];
        v52 = v130;
        v129 = v51;
        v11 = 0;
        v37 = 0;
        *error = [v52 initWithDomain:v128 code:2 userInfo:?];
        v39 = v131;
        goto LABEL_63;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"isPlaceNamePhenotypeDetected"];
    v127 = v11;
    v129 = v12;
    if (v12 && (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v132 = 0;
          v37 = 0;
          v39 = v131;
          v14 = v8;
          goto LABEL_63;
        }

        v134 = objc_alloc(MEMORY[0x1E696ABC0]);
        v123 = *MEMORY[0x1E698F240];
        v163 = *MEMORY[0x1E696A578];
        v53 = objc_alloc(MEMORY[0x1E696AEC0]);
        v88 = objc_opt_class();
        v54 = v53;
        v11 = v127;
        v14 = v8;
        v125 = [v54 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v88, @"isPlaceNamePhenotypeDetected"];
        v164 = v125;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v164 forKeys:&v163 count:1];
        v55 = [v134 initWithDomain:v123 code:2 userInfo:v15];
        v132 = 0;
        v37 = 0;
        *error = v55;
        goto LABEL_138;
      }

      v132 = v13;
    }

    else
    {
      v132 = 0;
    }

    [dictionaryCopy objectForKeyedSubscript:@"isCombinedPlacePhenotypeDetected"];
    v15 = v14 = v8;
    if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v125 = 0;
      goto LABEL_25;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v125 = v15;
LABEL_25:
      v16 = [dictionaryCopy objectForKeyedSubscript:@"isEnclosingAreaNamePhenotypeDetected"];
      v113 = v15;
      v120 = v16;
      if (!v16 || (v17 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v122 = 0;
        goto LABEL_28;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v122 = v17;
LABEL_28:
        v18 = [dictionaryCopy objectForKeyedSubscript:@"isPersonsPhenotypeDetected"];
        v116 = v18;
        if (!v18 || (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v118 = 0;
          goto LABEL_31;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v118 = v19;
LABEL_31:
          v20 = [dictionaryCopy objectForKeyedSubscript:@"isPersonRelationshipPhenotypeDetected"];
          v111 = v20;
          if (!v20 || (v21 = v20, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v114 = 0;
            goto LABEL_34;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v114 = v21;
LABEL_34:
            v22 = [dictionaryCopy objectForKeyedSubscript:@"isActivityTypeFromPhotoTraitsPhenotypeDetected"];
            v107 = v22;
            if (!v22 || (v23 = v22, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v109 = 0;
              goto LABEL_37;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v109 = v23;
LABEL_37:
              v24 = [dictionaryCopy objectForKeyedSubscript:@"isTimeContextFromPhotoTraitsPhenotypeDetected"];
              v103 = v24;
              if (!v24 || (v25 = v24, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v105 = 0;
                goto LABEL_40;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v105 = v25;
LABEL_40:
                v26 = [dictionaryCopy objectForKeyedSubscript:@"isLocationContextFromPhotoTraitsPhenotypeDetected"];
                v99 = v26;
                if (!v26 || (v27 = v26, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v101 = 0;
                  goto LABEL_43;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v101 = v27;
LABEL_43:
                  v28 = [dictionaryCopy objectForKeyedSubscript:@"isSocialContextFromPhotoTraitsPhenotypeDetected"];
                  v96 = v28;
                  v98 = v10;
                  if (!v28 || (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v91 = 0;
LABEL_46:
                    v30 = [dictionaryCopy objectForKeyedSubscript:@"isExtraContextFromPhotoTraitsPhenotypeDetected"];
                    v93 = v30;
                    v95 = v14;
                    if (v30 && (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (!error)
                        {
                          v36 = 0;
                          v37 = 0;
                          v34 = v91;
                          v38 = v93;
                          goto LABEL_54;
                        }

                        v77 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v89 = v5;
                        v78 = v7;
                        v79 = *MEMORY[0x1E698F240];
                        v145 = *MEMORY[0x1E696A578];
                        v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isExtraContextFromPhotoTraitsPhenotypeDetected"];
                        v146 = v35;
                        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
                        v80 = v79;
                        v7 = v78;
                        v5 = v89;
                        v81 = [v77 initWithDomain:v80 code:2 userInfo:v33];
                        v36 = 0;
                        v37 = 0;
                        *error = v81;
                        v34 = v91;
                        goto LABEL_53;
                      }

                      v32 = v31;
                    }

                    else
                    {
                      v32 = 0;
                    }

                    v33 = [dictionaryCopy objectForKeyedSubscript:@"isOtherSubjectFromPhotoTraitsPhenotypeDetected"];
                    v34 = v91;
                    if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        v36 = v32;
                        if (error)
                        {
                          v82 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v90 = v5;
                          v83 = v7;
                          v84 = *MEMORY[0x1E698F240];
                          v143 = *MEMORY[0x1E696A578];
                          v85 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isOtherSubjectFromPhotoTraitsPhenotypeDetected"];
                          v144 = v85;
                          v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
                          v87 = v84;
                          v7 = v83;
                          v5 = v90;
                          *error = [v82 initWithDomain:v87 code:2 userInfo:v86];
                        }

                        v35 = 0;
                        v37 = 0;
                        goto LABEL_53;
                      }

                      v35 = v33;
                    }

                    else
                    {
                      v35 = 0;
                    }

                    v36 = v32;
                    v37 = [(BMMomentsEventDataEventBundleClusterMetadata *)self initWithIsFiltered:v139 isTopLevelActivityTypePhenotypeDetected:v138 isSecondLevelActivityTypePhenotypeDetected:v137 isWeekendPhenotypeDetected:v95 isTimeTagPhenotypeDetected:v135 isDayOfWeekPhenotypeDetected:v127 isPlaceNamePhenotypeDetected:v132 isCombinedPlacePhenotypeDetected:v125 isEnclosingAreaNamePhenotypeDetected:v122 isPersonsPhenotypeDetected:v118 isPersonRelationshipPhenotypeDetected:v114 isActivityTypeFromPhotoTraitsPhenotypeDetected:v109 isTimeContextFromPhotoTraitsPhenotypeDetected:v105 isLocationContextFromPhotoTraitsPhenotypeDetected:v101 isSocialContextFromPhotoTraitsPhenotypeDetected:v91 isExtraContextFromPhotoTraitsPhenotypeDetected:v32 isOtherSubjectFromPhotoTraitsPhenotypeDetected:v35];
                    self = v37;
LABEL_53:

                    v38 = v93;
                    v14 = v95;
                    v10 = v98;
LABEL_54:

                    v39 = v131;
                    v15 = v113;
LABEL_55:

LABEL_56:
LABEL_57:

LABEL_58:
LABEL_59:

LABEL_60:
LABEL_61:

                    v11 = v127;
LABEL_62:

LABEL_63:
                    goto LABEL_64;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v91 = v29;
                    goto LABEL_46;
                  }

                  if (error)
                  {
                    v94 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v92 = *MEMORY[0x1E698F240];
                    v147 = *MEMORY[0x1E696A578];
                    v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isSocialContextFromPhotoTraitsPhenotypeDetected"];
                    v148 = v36;
                    v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
                    v34 = 0;
                    v37 = 0;
                    *error = [v94 initWithDomain:v92 code:2 userInfo:v38];
                    goto LABEL_54;
                  }

                  v34 = 0;
                  v37 = 0;
LABEL_160:
                  v39 = v131;
                  goto LABEL_55;
                }

                if (error)
                {
                  v102 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v97 = *MEMORY[0x1E698F240];
                  v149 = *MEMORY[0x1E696A578];
                  v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isLocationContextFromPhotoTraitsPhenotypeDetected"];
                  v150 = v34;
                  v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
                  v75 = v97;
                  v96 = v74;
                  v76 = [v102 initWithDomain:v75 code:2 userInfo:?];
                  v101 = 0;
                  v37 = 0;
                  *error = v76;
                  goto LABEL_160;
                }

                v101 = 0;
                v37 = 0;
LABEL_158:
                v39 = v131;
                goto LABEL_56;
              }

              if (error)
              {
                v106 = objc_alloc(MEMORY[0x1E696ABC0]);
                v100 = *MEMORY[0x1E698F240];
                v151 = *MEMORY[0x1E696A578];
                v101 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isTimeContextFromPhotoTraitsPhenotypeDetected"];
                v152 = v101;
                v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v152 forKeys:&v151 count:1];
                v72 = v100;
                v99 = v71;
                v73 = [v106 initWithDomain:v72 code:2 userInfo:?];
                v105 = 0;
                v37 = 0;
                *error = v73;
                goto LABEL_158;
              }

              v105 = 0;
              v37 = 0;
LABEL_156:
              v39 = v131;
              goto LABEL_57;
            }

            if (error)
            {
              v110 = objc_alloc(MEMORY[0x1E696ABC0]);
              v104 = *MEMORY[0x1E698F240];
              v153 = *MEMORY[0x1E696A578];
              v105 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isActivityTypeFromPhotoTraitsPhenotypeDetected"];
              v154 = v105;
              v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v154 forKeys:&v153 count:1];
              v69 = v104;
              v103 = v68;
              v70 = [v110 initWithDomain:v69 code:2 userInfo:?];
              v109 = 0;
              v37 = 0;
              *error = v70;
              goto LABEL_156;
            }

            v109 = 0;
            v37 = 0;
LABEL_154:
            v39 = v131;
            goto LABEL_58;
          }

          if (error)
          {
            v115 = objc_alloc(MEMORY[0x1E696ABC0]);
            v108 = *MEMORY[0x1E698F240];
            v155 = *MEMORY[0x1E696A578];
            v109 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isPersonRelationshipPhenotypeDetected"];
            v156 = v109;
            v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v156 forKeys:&v155 count:1];
            v66 = v108;
            v107 = v65;
            v67 = [v115 initWithDomain:v66 code:2 userInfo:?];
            v114 = 0;
            v37 = 0;
            *error = v67;
            goto LABEL_154;
          }

          v114 = 0;
          v37 = 0;
LABEL_150:
          v39 = v131;
          goto LABEL_59;
        }

        if (error)
        {
          v119 = objc_alloc(MEMORY[0x1E696ABC0]);
          v112 = *MEMORY[0x1E698F240];
          v157 = *MEMORY[0x1E696A578];
          v114 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isPersonsPhenotypeDetected"];
          v158 = v114;
          v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v158 forKeys:&v157 count:1];
          v63 = v112;
          v111 = v62;
          v64 = [v119 initWithDomain:v63 code:2 userInfo:?];
          v118 = 0;
          v37 = 0;
          *error = v64;
          goto LABEL_150;
        }

        v118 = 0;
        v37 = 0;
LABEL_146:
        v39 = v131;
        goto LABEL_60;
      }

      if (error)
      {
        v124 = objc_alloc(MEMORY[0x1E696ABC0]);
        v117 = *MEMORY[0x1E698F240];
        v159 = *MEMORY[0x1E696A578];
        v118 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isEnclosingAreaNamePhenotypeDetected"];
        v160 = v118;
        v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
        v60 = v117;
        v116 = v59;
        v61 = [v124 initWithDomain:v60 code:2 userInfo:?];
        v122 = 0;
        v37 = 0;
        *error = v61;
        goto LABEL_146;
      }

      v122 = 0;
      v37 = 0;
LABEL_142:
      v39 = v131;
      goto LABEL_61;
    }

    if (error)
    {
      v126 = objc_alloc(MEMORY[0x1E696ABC0]);
      v121 = *MEMORY[0x1E698F240];
      v161 = *MEMORY[0x1E696A578];
      v122 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isCombinedPlacePhenotypeDetected"];
      v162 = v122;
      v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v162 forKeys:&v161 count:1];
      v57 = v121;
      v120 = v56;
      v58 = [v126 initWithDomain:v57 code:2 userInfo:?];
      v125 = 0;
      v37 = 0;
      *error = v58;
      goto LABEL_142;
    }

    v125 = 0;
    v37 = 0;
LABEL_138:
    v39 = v131;
    goto LABEL_62;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v139 = v142;
    goto LABEL_4;
  }

  if (!error)
  {
    v139 = 0;
    v37 = 0;
    goto LABEL_69;
  }

  v41 = objc_alloc(MEMORY[0x1E696ABC0]);
  v42 = *MEMORY[0x1E698F240];
  v175 = *MEMORY[0x1E696A578];
  v138 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isFiltered"];
  v176[0] = v138;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v176 forKeys:&v175 count:1];
  v139 = 0;
  v37 = 0;
  *error = [v41 initWithDomain:v42 code:2 userInfo:v5];
LABEL_68:

LABEL_69:
  return v37;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsEventDataEventBundleClusterMetadata *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasIsFiltered)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsTopLevelActivityTypePhenotypeDetected)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsSecondLevelActivityTypePhenotypeDetected)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsWeekendPhenotypeDetected)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsTimeTagPhenotypeDetected)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsDayOfWeekPhenotypeDetected)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsPlaceNamePhenotypeDetected)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsCombinedPlacePhenotypeDetected)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsEnclosingAreaNamePhenotypeDetected)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsPersonsPhenotypeDetected)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsPersonRelationshipPhenotypeDetected)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsActivityTypeFromPhotoTraitsPhenotypeDetected)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsTimeContextFromPhotoTraitsPhenotypeDetected)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsLocationContextFromPhotoTraitsPhenotypeDetected)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsSocialContextFromPhotoTraitsPhenotypeDetected)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsExtraContextFromPhotoTraitsPhenotypeDetected)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsOtherSubjectFromPhotoTraitsPhenotypeDetected)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v107.receiver = self;
  v107.super_class = BMMomentsEventDataEventBundleClusterMetadata;
  v5 = [(BMEventBase *)&v107 init];
  if (!v5)
  {
    goto LABEL_196;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v108 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v108 & 0x7F) << v7;
        if ((v108 & 0x80) == 0)
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
          v5->_hasIsFiltered = 1;
          while (1)
          {
            v108 = 0;
            v18 = [fromCopy position] + 1;
            if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 1, v19 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v15;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v15 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isFiltered;
            v23 = v16++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isFiltered;
          goto LABEL_191;
        case 2u:
          v74 = 0;
          v75 = 0;
          v17 = 0;
          v5->_hasIsTopLevelActivityTypePhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v76 = [fromCopy position] + 1;
            if (v76 >= [fromCopy position] && (v77 = objc_msgSend(fromCopy, "position") + 1, v77 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v74;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v74 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isTopLevelActivityTypePhenotypeDetected;
            v23 = v75++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isTopLevelActivityTypePhenotypeDetected;
          goto LABEL_191;
        case 3u:
          v54 = 0;
          v55 = 0;
          v17 = 0;
          v5->_hasIsSecondLevelActivityTypePhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v56 = [fromCopy position] + 1;
            if (v56 >= [fromCopy position] && (v57 = objc_msgSend(fromCopy, "position") + 1, v57 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v54;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v54 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isSecondLevelActivityTypePhenotypeDetected;
            v23 = v55++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isSecondLevelActivityTypePhenotypeDetected;
          goto LABEL_191;
        case 4u:
          v64 = 0;
          v65 = 0;
          v17 = 0;
          v5->_hasIsWeekendPhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v66 = [fromCopy position] + 1;
            if (v66 >= [fromCopy position] && (v67 = objc_msgSend(fromCopy, "position") + 1, v67 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v64;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v64 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isWeekendPhenotypeDetected;
            v23 = v65++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isWeekendPhenotypeDetected;
          goto LABEL_191;
        case 5u:
          v39 = 0;
          v40 = 0;
          v17 = 0;
          v5->_hasIsTimeTagPhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v41 = [fromCopy position] + 1;
            if (v41 >= [fromCopy position] && (v42 = objc_msgSend(fromCopy, "position") + 1, v42 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v39;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v39 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isTimeTagPhenotypeDetected;
            v23 = v40++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isTimeTagPhenotypeDetected;
          goto LABEL_191;
        case 6u:
          v79 = 0;
          v80 = 0;
          v17 = 0;
          v5->_hasIsDayOfWeekPhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v81 = [fromCopy position] + 1;
            if (v81 >= [fromCopy position] && (v82 = objc_msgSend(fromCopy, "position") + 1, v82 <= objc_msgSend(fromCopy, "length")))
            {
              data7 = [fromCopy data];
              [data7 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v79;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v79 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isDayOfWeekPhenotypeDetected;
            v23 = v80++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isDayOfWeekPhenotypeDetected;
          goto LABEL_191;
        case 7u:
          v89 = 0;
          v90 = 0;
          v17 = 0;
          v5->_hasIsPlaceNamePhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v91 = [fromCopy position] + 1;
            if (v91 >= [fromCopy position] && (v92 = objc_msgSend(fromCopy, "position") + 1, v92 <= objc_msgSend(fromCopy, "length")))
            {
              data8 = [fromCopy data];
              [data8 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v89;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v89 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isPlaceNamePhenotypeDetected;
            v23 = v90++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isPlaceNamePhenotypeDetected;
          goto LABEL_191;
        case 8u:
          v69 = 0;
          v70 = 0;
          v17 = 0;
          v5->_hasIsCombinedPlacePhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v71 = [fromCopy position] + 1;
            if (v71 >= [fromCopy position] && (v72 = objc_msgSend(fromCopy, "position") + 1, v72 <= objc_msgSend(fromCopy, "length")))
            {
              data9 = [fromCopy data];
              [data9 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v69;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v69 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isCombinedPlacePhenotypeDetected;
            v23 = v70++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isCombinedPlacePhenotypeDetected;
          goto LABEL_191;
        case 9u:
          v99 = 0;
          v100 = 0;
          v17 = 0;
          v5->_hasIsEnclosingAreaNamePhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v101 = [fromCopy position] + 1;
            if (v101 >= [fromCopy position] && (v102 = objc_msgSend(fromCopy, "position") + 1, v102 <= objc_msgSend(fromCopy, "length")))
            {
              data10 = [fromCopy data];
              [data10 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v99;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v99 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isEnclosingAreaNamePhenotypeDetected;
            v23 = v100++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isEnclosingAreaNamePhenotypeDetected;
          goto LABEL_191;
        case 0xAu:
          v49 = 0;
          v50 = 0;
          v17 = 0;
          v5->_hasIsPersonsPhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v51 = [fromCopy position] + 1;
            if (v51 >= [fromCopy position] && (v52 = objc_msgSend(fromCopy, "position") + 1, v52 <= objc_msgSend(fromCopy, "length")))
            {
              data11 = [fromCopy data];
              [data11 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v49;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v49 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isPersonsPhenotypeDetected;
            v23 = v50++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isPersonsPhenotypeDetected;
          goto LABEL_191;
        case 0xBu:
          v94 = 0;
          v95 = 0;
          v17 = 0;
          v5->_hasIsPersonRelationshipPhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v96 = [fromCopy position] + 1;
            if (v96 >= [fromCopy position] && (v97 = objc_msgSend(fromCopy, "position") + 1, v97 <= objc_msgSend(fromCopy, "length")))
            {
              data12 = [fromCopy data];
              [data12 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v94;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v94 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isPersonRelationshipPhenotypeDetected;
            v23 = v95++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isPersonRelationshipPhenotypeDetected;
          goto LABEL_191;
        case 0xCu:
          v34 = 0;
          v35 = 0;
          v17 = 0;
          v5->_hasIsActivityTypeFromPhotoTraitsPhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v36 = [fromCopy position] + 1;
            if (v36 >= [fromCopy position] && (v37 = objc_msgSend(fromCopy, "position") + 1, v37 <= objc_msgSend(fromCopy, "length")))
            {
              data13 = [fromCopy data];
              [data13 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v34;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v34 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isActivityTypeFromPhotoTraitsPhenotypeDetected;
            v23 = v35++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isActivityTypeFromPhotoTraitsPhenotypeDetected;
          goto LABEL_191;
        case 0xDu:
          v44 = 0;
          v45 = 0;
          v17 = 0;
          v5->_hasIsTimeContextFromPhotoTraitsPhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v46 = [fromCopy position] + 1;
            if (v46 >= [fromCopy position] && (v47 = objc_msgSend(fromCopy, "position") + 1, v47 <= objc_msgSend(fromCopy, "length")))
            {
              data14 = [fromCopy data];
              [data14 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v44;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v44 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isTimeContextFromPhotoTraitsPhenotypeDetected;
            v23 = v45++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isTimeContextFromPhotoTraitsPhenotypeDetected;
          goto LABEL_191;
        case 0xEu:
          v84 = 0;
          v85 = 0;
          v17 = 0;
          v5->_hasIsLocationContextFromPhotoTraitsPhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v86 = [fromCopy position] + 1;
            if (v86 >= [fromCopy position] && (v87 = objc_msgSend(fromCopy, "position") + 1, v87 <= objc_msgSend(fromCopy, "length")))
            {
              data15 = [fromCopy data];
              [data15 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v84;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v84 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isLocationContextFromPhotoTraitsPhenotypeDetected;
            v23 = v85++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isLocationContextFromPhotoTraitsPhenotypeDetected;
          goto LABEL_191;
        case 0xFu:
          v29 = 0;
          v30 = 0;
          v17 = 0;
          v5->_hasIsSocialContextFromPhotoTraitsPhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v31 = [fromCopy position] + 1;
            if (v31 >= [fromCopy position] && (v32 = objc_msgSend(fromCopy, "position") + 1, v32 <= objc_msgSend(fromCopy, "length")))
            {
              data16 = [fromCopy data];
              [data16 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v29;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v29 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isSocialContextFromPhotoTraitsPhenotypeDetected;
            v23 = v30++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isSocialContextFromPhotoTraitsPhenotypeDetected;
          goto LABEL_191;
        case 0x10u:
          v59 = 0;
          v60 = 0;
          v17 = 0;
          v5->_hasIsExtraContextFromPhotoTraitsPhenotypeDetected = 1;
          while (1)
          {
            v108 = 0;
            v61 = [fromCopy position] + 1;
            if (v61 >= [fromCopy position] && (v62 = objc_msgSend(fromCopy, "position") + 1, v62 <= objc_msgSend(fromCopy, "length")))
            {
              data17 = [fromCopy data];
              [data17 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v17 |= (v108 & 0x7F) << v59;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            LOBYTE(v21) = 0;
            v59 += 7;
            v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isExtraContextFromPhotoTraitsPhenotypeDetected;
            v23 = v60++ > 8;
            if (v23)
            {
              goto LABEL_192;
            }
          }

          v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isExtraContextFromPhotoTraitsPhenotypeDetected;
          goto LABEL_191;
        case 0x11u:
          v24 = 0;
          v25 = 0;
          v17 = 0;
          v5->_hasIsOtherSubjectFromPhotoTraitsPhenotypeDetected = 1;
          break;
        default:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_195;
          }

          goto LABEL_193;
      }

      while (1)
      {
        v108 = 0;
        v26 = [fromCopy position] + 1;
        if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
        {
          data18 = [fromCopy data];
          [data18 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v17 |= (v108 & 0x7F) << v24;
        if ((v108 & 0x80) == 0)
        {
          break;
        }

        LOBYTE(v21) = 0;
        v24 += 7;
        v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isOtherSubjectFromPhotoTraitsPhenotypeDetected;
        v23 = v25++ > 8;
        if (v23)
        {
          goto LABEL_192;
        }
      }

      v22 = &OBJC_IVAR___BMMomentsEventDataEventBundleClusterMetadata__isOtherSubjectFromPhotoTraitsPhenotypeDetected;
LABEL_191:
      v21 = (v17 != 0) & ~[fromCopy hasError];
LABEL_192:
      *(&v5->super.super.isa + *v22) = v21;
LABEL_193:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_195:
    v105 = 0;
  }

  else
  {
LABEL_196:
    v105 = v5;
  }

  return v105;
}

- (NSString)description
{
  v19 = objc_alloc(MEMORY[0x1E696AEC0]);
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isFiltered](self, "isFiltered")}];
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isTopLevelActivityTypePhenotypeDetected](self, "isTopLevelActivityTypePhenotypeDetected")}];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isSecondLevelActivityTypePhenotypeDetected](self, "isSecondLevelActivityTypePhenotypeDetected")}];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isWeekendPhenotypeDetected](self, "isWeekendPhenotypeDetected")}];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isTimeTagPhenotypeDetected](self, "isTimeTagPhenotypeDetected")}];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isDayOfWeekPhenotypeDetected](self, "isDayOfWeekPhenotypeDetected")}];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isPlaceNamePhenotypeDetected](self, "isPlaceNamePhenotypeDetected")}];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isCombinedPlacePhenotypeDetected](self, "isCombinedPlacePhenotypeDetected")}];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isEnclosingAreaNamePhenotypeDetected](self, "isEnclosingAreaNamePhenotypeDetected")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isPersonsPhenotypeDetected](self, "isPersonsPhenotypeDetected")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isPersonRelationshipPhenotypeDetected](self, "isPersonRelationshipPhenotypeDetected")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isActivityTypeFromPhotoTraitsPhenotypeDetected](self, "isActivityTypeFromPhotoTraitsPhenotypeDetected")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isTimeContextFromPhotoTraitsPhenotypeDetected](self, "isTimeContextFromPhotoTraitsPhenotypeDetected")}];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isLocationContextFromPhotoTraitsPhenotypeDetected](self, "isLocationContextFromPhotoTraitsPhenotypeDetected")}];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isSocialContextFromPhotoTraitsPhenotypeDetected](self, "isSocialContextFromPhotoTraitsPhenotypeDetected")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isExtraContextFromPhotoTraitsPhenotypeDetected](self, "isExtraContextFromPhotoTraitsPhenotypeDetected")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleClusterMetadata isOtherSubjectFromPhotoTraitsPhenotypeDetected](self, "isOtherSubjectFromPhotoTraitsPhenotypeDetected")}];
  v20 = [v19 initWithFormat:@"BMMomentsEventDataEventBundleClusterMetadata with isFiltered: %@, isTopLevelActivityTypePhenotypeDetected: %@, isSecondLevelActivityTypePhenotypeDetected: %@, isWeekendPhenotypeDetected: %@, isTimeTagPhenotypeDetected: %@, isDayOfWeekPhenotypeDetected: %@, isPlaceNamePhenotypeDetected: %@, isCombinedPlacePhenotypeDetected: %@, isEnclosingAreaNamePhenotypeDetected: %@, isPersonsPhenotypeDetected: %@, isPersonRelationshipPhenotypeDetected: %@, isActivityTypeFromPhotoTraitsPhenotypeDetected: %@, isTimeContextFromPhotoTraitsPhenotypeDetected: %@, isLocationContextFromPhotoTraitsPhenotypeDetected: %@, isSocialContextFromPhotoTraitsPhenotypeDetected: %@, isExtraContextFromPhotoTraitsPhenotypeDetected: %@, isOtherSubjectFromPhotoTraitsPhenotypeDetected: %@", v22, v21, v18, v17, v16, v15, v14, v13, v12, v11, v10, v9, v8, v3, v4, v5, v6];

  return v20;
}

- (BMMomentsEventDataEventBundleClusterMetadata)initWithIsFiltered:(id)filtered isTopLevelActivityTypePhenotypeDetected:(id)detected isSecondLevelActivityTypePhenotypeDetected:(id)phenotypeDetected isWeekendPhenotypeDetected:(id)weekendPhenotypeDetected isTimeTagPhenotypeDetected:(id)tagPhenotypeDetected isDayOfWeekPhenotypeDetected:(id)weekPhenotypeDetected isPlaceNamePhenotypeDetected:(id)namePhenotypeDetected isCombinedPlacePhenotypeDetected:(id)self0 isEnclosingAreaNamePhenotypeDetected:(id)self1 isPersonsPhenotypeDetected:(id)self2 isPersonRelationshipPhenotypeDetected:(id)self3 isActivityTypeFromPhotoTraitsPhenotypeDetected:(id)self4 isTimeContextFromPhotoTraitsPhenotypeDetected:(id)self5 isLocationContextFromPhotoTraitsPhenotypeDetected:(id)self6 isSocialContextFromPhotoTraitsPhenotypeDetected:(id)self7 isExtraContextFromPhotoTraitsPhenotypeDetected:(id)self8 isOtherSubjectFromPhotoTraitsPhenotypeDetected:(id)self9
{
  filteredCopy = filtered;
  detectedCopy = detected;
  phenotypeDetectedCopy = phenotypeDetected;
  weekendPhenotypeDetectedCopy = weekendPhenotypeDetected;
  tagPhenotypeDetectedCopy = tagPhenotypeDetected;
  weekPhenotypeDetectedCopy = weekPhenotypeDetected;
  namePhenotypeDetectedCopy = namePhenotypeDetected;
  placePhenotypeDetectedCopy = placePhenotypeDetected;
  areaNamePhenotypeDetectedCopy = areaNamePhenotypeDetected;
  personsPhenotypeDetectedCopy = personsPhenotypeDetected;
  relationshipPhenotypeDetectedCopy = relationshipPhenotypeDetected;
  traitsPhenotypeDetectedCopy = traitsPhenotypeDetected;
  photoTraitsPhenotypeDetectedCopy = photoTraitsPhenotypeDetected;
  fromPhotoTraitsPhenotypeDetectedCopy = fromPhotoTraitsPhenotypeDetected;
  contextFromPhotoTraitsPhenotypeDetectedCopy = contextFromPhotoTraitsPhenotypeDetected;
  extraContextFromPhotoTraitsPhenotypeDetectedCopy = extraContextFromPhotoTraitsPhenotypeDetected;
  subjectFromPhotoTraitsPhenotypeDetectedCopy = subjectFromPhotoTraitsPhenotypeDetected;
  v44.receiver = self;
  v44.super_class = BMMomentsEventDataEventBundleClusterMetadata;
  v33 = [(BMEventBase *)&v44 init];
  if (v33)
  {
    v33->_dataVersion = [objc_opt_class() latestDataVersion];
    if (filteredCopy)
    {
      v33->_hasIsFiltered = 1;
      v33->_isFiltered = [filteredCopy BOOLValue];
    }

    else
    {
      v33->_hasIsFiltered = 0;
      v33->_isFiltered = 0;
    }

    if (detectedCopy)
    {
      v33->_hasIsTopLevelActivityTypePhenotypeDetected = 1;
      v33->_isTopLevelActivityTypePhenotypeDetected = [detectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsTopLevelActivityTypePhenotypeDetected = 0;
      v33->_isTopLevelActivityTypePhenotypeDetected = 0;
    }

    if (phenotypeDetectedCopy)
    {
      v33->_hasIsSecondLevelActivityTypePhenotypeDetected = 1;
      v33->_isSecondLevelActivityTypePhenotypeDetected = [phenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsSecondLevelActivityTypePhenotypeDetected = 0;
      v33->_isSecondLevelActivityTypePhenotypeDetected = 0;
    }

    if (weekendPhenotypeDetectedCopy)
    {
      v33->_hasIsWeekendPhenotypeDetected = 1;
      v33->_isWeekendPhenotypeDetected = [weekendPhenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsWeekendPhenotypeDetected = 0;
      v33->_isWeekendPhenotypeDetected = 0;
    }

    if (tagPhenotypeDetectedCopy)
    {
      v33->_hasIsTimeTagPhenotypeDetected = 1;
      v33->_isTimeTagPhenotypeDetected = [tagPhenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsTimeTagPhenotypeDetected = 0;
      v33->_isTimeTagPhenotypeDetected = 0;
    }

    if (weekPhenotypeDetectedCopy)
    {
      v33->_hasIsDayOfWeekPhenotypeDetected = 1;
      v33->_isDayOfWeekPhenotypeDetected = [weekPhenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsDayOfWeekPhenotypeDetected = 0;
      v33->_isDayOfWeekPhenotypeDetected = 0;
    }

    if (namePhenotypeDetectedCopy)
    {
      v33->_hasIsPlaceNamePhenotypeDetected = 1;
      v33->_isPlaceNamePhenotypeDetected = [namePhenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsPlaceNamePhenotypeDetected = 0;
      v33->_isPlaceNamePhenotypeDetected = 0;
    }

    if (placePhenotypeDetectedCopy)
    {
      v33->_hasIsCombinedPlacePhenotypeDetected = 1;
      v33->_isCombinedPlacePhenotypeDetected = [placePhenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsCombinedPlacePhenotypeDetected = 0;
      v33->_isCombinedPlacePhenotypeDetected = 0;
    }

    if (areaNamePhenotypeDetectedCopy)
    {
      v33->_hasIsEnclosingAreaNamePhenotypeDetected = 1;
      v33->_isEnclosingAreaNamePhenotypeDetected = [areaNamePhenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsEnclosingAreaNamePhenotypeDetected = 0;
      v33->_isEnclosingAreaNamePhenotypeDetected = 0;
    }

    if (personsPhenotypeDetectedCopy)
    {
      v33->_hasIsPersonsPhenotypeDetected = 1;
      v33->_isPersonsPhenotypeDetected = [personsPhenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsPersonsPhenotypeDetected = 0;
      v33->_isPersonsPhenotypeDetected = 0;
    }

    if (relationshipPhenotypeDetectedCopy)
    {
      v33->_hasIsPersonRelationshipPhenotypeDetected = 1;
      v33->_isPersonRelationshipPhenotypeDetected = [relationshipPhenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsPersonRelationshipPhenotypeDetected = 0;
      v33->_isPersonRelationshipPhenotypeDetected = 0;
    }

    if (traitsPhenotypeDetectedCopy)
    {
      v33->_hasIsActivityTypeFromPhotoTraitsPhenotypeDetected = 1;
      v33->_isActivityTypeFromPhotoTraitsPhenotypeDetected = [traitsPhenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsActivityTypeFromPhotoTraitsPhenotypeDetected = 0;
      v33->_isActivityTypeFromPhotoTraitsPhenotypeDetected = 0;
    }

    if (photoTraitsPhenotypeDetectedCopy)
    {
      v33->_hasIsTimeContextFromPhotoTraitsPhenotypeDetected = 1;
      v33->_isTimeContextFromPhotoTraitsPhenotypeDetected = [photoTraitsPhenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsTimeContextFromPhotoTraitsPhenotypeDetected = 0;
      v33->_isTimeContextFromPhotoTraitsPhenotypeDetected = 0;
    }

    if (fromPhotoTraitsPhenotypeDetectedCopy)
    {
      v33->_hasIsLocationContextFromPhotoTraitsPhenotypeDetected = 1;
      v33->_isLocationContextFromPhotoTraitsPhenotypeDetected = [fromPhotoTraitsPhenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsLocationContextFromPhotoTraitsPhenotypeDetected = 0;
      v33->_isLocationContextFromPhotoTraitsPhenotypeDetected = 0;
    }

    if (contextFromPhotoTraitsPhenotypeDetectedCopy)
    {
      v33->_hasIsSocialContextFromPhotoTraitsPhenotypeDetected = 1;
      v33->_isSocialContextFromPhotoTraitsPhenotypeDetected = [contextFromPhotoTraitsPhenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsSocialContextFromPhotoTraitsPhenotypeDetected = 0;
      v33->_isSocialContextFromPhotoTraitsPhenotypeDetected = 0;
    }

    if (extraContextFromPhotoTraitsPhenotypeDetectedCopy)
    {
      v33->_hasIsExtraContextFromPhotoTraitsPhenotypeDetected = 1;
      v33->_isExtraContextFromPhotoTraitsPhenotypeDetected = [extraContextFromPhotoTraitsPhenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsExtraContextFromPhotoTraitsPhenotypeDetected = 0;
      v33->_isExtraContextFromPhotoTraitsPhenotypeDetected = 0;
    }

    if (subjectFromPhotoTraitsPhenotypeDetectedCopy)
    {
      v33->_hasIsOtherSubjectFromPhotoTraitsPhenotypeDetected = 1;
      v33->_isOtherSubjectFromPhotoTraitsPhenotypeDetected = [subjectFromPhotoTraitsPhenotypeDetectedCopy BOOLValue];
    }

    else
    {
      v33->_hasIsOtherSubjectFromPhotoTraitsPhenotypeDetected = 0;
      v33->_isOtherSubjectFromPhotoTraitsPhenotypeDetected = 0;
    }
  }

  return v33;
}

+ (id)protoFields
{
  v21[17] = *MEMORY[0x1E69E9840];
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isFiltered" number:1 type:12 subMessageClass:0];
  v21[0] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isTopLevelActivityTypePhenotypeDetected" number:2 type:12 subMessageClass:0];
  v21[1] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isSecondLevelActivityTypePhenotypeDetected" number:3 type:12 subMessageClass:0];
  v21[2] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isWeekendPhenotypeDetected" number:4 type:12 subMessageClass:0];
  v21[3] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isTimeTagPhenotypeDetected" number:5 type:12 subMessageClass:0];
  v21[4] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isDayOfWeekPhenotypeDetected" number:6 type:12 subMessageClass:0];
  v21[5] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isPlaceNamePhenotypeDetected" number:7 type:12 subMessageClass:0];
  v21[6] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isCombinedPlacePhenotypeDetected" number:8 type:12 subMessageClass:0];
  v21[7] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isEnclosingAreaNamePhenotypeDetected" number:9 type:12 subMessageClass:0];
  v21[8] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isPersonsPhenotypeDetected" number:10 type:12 subMessageClass:0];
  v21[9] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isPersonRelationshipPhenotypeDetected" number:11 type:12 subMessageClass:0];
  v21[10] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isActivityTypeFromPhotoTraitsPhenotypeDetected" number:12 type:12 subMessageClass:0];
  v21[11] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isTimeContextFromPhotoTraitsPhenotypeDetected" number:13 type:12 subMessageClass:0];
  v21[12] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isLocationContextFromPhotoTraitsPhenotypeDetected" number:14 type:12 subMessageClass:0];
  v21[13] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isSocialContextFromPhotoTraitsPhenotypeDetected" number:15 type:12 subMessageClass:0];
  v21[14] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isExtraContextFromPhotoTraitsPhenotypeDetected" number:16 type:12 subMessageClass:0];
  v21[15] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isOtherSubjectFromPhotoTraitsPhenotypeDetected" number:17 type:12 subMessageClass:0];
  v21[16] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:17];

  return v11;
}

+ (id)columns
{
  v21[17] = *MEMORY[0x1E69E9840];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isFiltered" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isTopLevelActivityTypePhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isSecondLevelActivityTypePhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isWeekendPhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isTimeTagPhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isDayOfWeekPhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isPlaceNamePhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isCombinedPlacePhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isEnclosingAreaNamePhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isPersonsPhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isPersonRelationshipPhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:12 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isActivityTypeFromPhotoTraitsPhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isTimeContextFromPhotoTraitsPhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isLocationContextFromPhotoTraitsPhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:12 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isSocialContextFromPhotoTraitsPhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isExtraContextFromPhotoTraitsPhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isOtherSubjectFromPhotoTraitsPhenotypeDetected" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:12 convertedType:0];
  v21[0] = v20;
  v21[1] = v19;
  v21[2] = v18;
  v21[3] = v17;
  v21[4] = v16;
  v21[5] = v15;
  v21[6] = v14;
  v21[7] = v2;
  v21[8] = v3;
  v21[9] = v4;
  v21[10] = v5;
  v21[11] = v13;
  v21[12] = v6;
  v21[13] = v7;
  v21[14] = v12;
  v21[15] = v8;
  v21[16] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:17];

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

    v8 = [[BMMomentsEventDataEventBundleClusterMetadata alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[13] = 0;
    }
  }

  return v4;
}

@end