@interface BMSiriAssistantSuggestionFeaturesUserSegmentation
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriAssistantSuggestionFeaturesUserSegmentation)initWithIs2x3:(id)is2x3 siriWasDisabled:(id)disabled siriWasdictationOnly:(id)only active6MonthsOrMoreAgo:(id)ago active28To6MonthsDaysAgo:(id)daysAgo active14To28DaysAgo:(id)to28DaysAgo active7To14DaysAgo:(id)to14DaysAgo activeWithin7days:(id)self0 activeWithin7days1Turn:(id)self1 activeWithin7Days2To3Turns:(id)self2 activeWithin7Days4PlusTurns:(id)self3;
- (BMSiriAssistantSuggestionFeaturesUserSegmentation)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriAssistantSuggestionFeaturesUserSegmentation

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMSiriAssistantSuggestionFeaturesUserSegmentation hasIs2x3](self, "hasIs2x3") || [v5 hasIs2x3])
    {
      if (![(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self hasIs2x3])
      {
        goto LABEL_58;
      }

      if (![v5 hasIs2x3])
      {
        goto LABEL_58;
      }

      is2x3 = [(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self is2x3];
      if (is2x3 != [v5 is2x3])
      {
        goto LABEL_58;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesUserSegmentation hasSiriWasDisabled](self, "hasSiriWasDisabled") || [v5 hasSiriWasDisabled])
    {
      if (![(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self hasSiriWasDisabled])
      {
        goto LABEL_58;
      }

      if (![v5 hasSiriWasDisabled])
      {
        goto LABEL_58;
      }

      siriWasDisabled = [(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self siriWasDisabled];
      if (siriWasDisabled != [v5 siriWasDisabled])
      {
        goto LABEL_58;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesUserSegmentation hasSiriWasdictationOnly](self, "hasSiriWasdictationOnly") || [v5 hasSiriWasdictationOnly])
    {
      if (![(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self hasSiriWasdictationOnly])
      {
        goto LABEL_58;
      }

      if (![v5 hasSiriWasdictationOnly])
      {
        goto LABEL_58;
      }

      siriWasdictationOnly = [(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self siriWasdictationOnly];
      if (siriWasdictationOnly != [v5 siriWasdictationOnly])
      {
        goto LABEL_58;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesUserSegmentation hasActive6MonthsOrMoreAgo](self, "hasActive6MonthsOrMoreAgo") || [v5 hasActive6MonthsOrMoreAgo])
    {
      if (![(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self hasActive6MonthsOrMoreAgo])
      {
        goto LABEL_58;
      }

      if (![v5 hasActive6MonthsOrMoreAgo])
      {
        goto LABEL_58;
      }

      active6MonthsOrMoreAgo = [(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self active6MonthsOrMoreAgo];
      if (active6MonthsOrMoreAgo != [v5 active6MonthsOrMoreAgo])
      {
        goto LABEL_58;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesUserSegmentation hasActive28To6MonthsDaysAgo](self, "hasActive28To6MonthsDaysAgo") || [v5 hasActive28To6MonthsDaysAgo])
    {
      if (![(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self hasActive28To6MonthsDaysAgo])
      {
        goto LABEL_58;
      }

      if (![v5 hasActive28To6MonthsDaysAgo])
      {
        goto LABEL_58;
      }

      active28To6MonthsDaysAgo = [(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self active28To6MonthsDaysAgo];
      if (active28To6MonthsDaysAgo != [v5 active28To6MonthsDaysAgo])
      {
        goto LABEL_58;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesUserSegmentation hasActive14To28DaysAgo](self, "hasActive14To28DaysAgo") || [v5 hasActive14To28DaysAgo])
    {
      if (![(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self hasActive14To28DaysAgo])
      {
        goto LABEL_58;
      }

      if (![v5 hasActive14To28DaysAgo])
      {
        goto LABEL_58;
      }

      active14To28DaysAgo = [(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self active14To28DaysAgo];
      if (active14To28DaysAgo != [v5 active14To28DaysAgo])
      {
        goto LABEL_58;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesUserSegmentation hasActive7To14DaysAgo](self, "hasActive7To14DaysAgo") || [v5 hasActive7To14DaysAgo])
    {
      if (![(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self hasActive7To14DaysAgo])
      {
        goto LABEL_58;
      }

      if (![v5 hasActive7To14DaysAgo])
      {
        goto LABEL_58;
      }

      active7To14DaysAgo = [(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self active7To14DaysAgo];
      if (active7To14DaysAgo != [v5 active7To14DaysAgo])
      {
        goto LABEL_58;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesUserSegmentation hasActiveWithin7days](self, "hasActiveWithin7days") || [v5 hasActiveWithin7days])
    {
      if (![(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self hasActiveWithin7days])
      {
        goto LABEL_58;
      }

      if (![v5 hasActiveWithin7days])
      {
        goto LABEL_58;
      }

      activeWithin7days = [(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self activeWithin7days];
      if (activeWithin7days != [v5 activeWithin7days])
      {
        goto LABEL_58;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesUserSegmentation hasActiveWithin7days1Turn](self, "hasActiveWithin7days1Turn") || [v5 hasActiveWithin7days1Turn])
    {
      if (![(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self hasActiveWithin7days1Turn])
      {
        goto LABEL_58;
      }

      if (![v5 hasActiveWithin7days1Turn])
      {
        goto LABEL_58;
      }

      activeWithin7days1Turn = [(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self activeWithin7days1Turn];
      if (activeWithin7days1Turn != [v5 activeWithin7days1Turn])
      {
        goto LABEL_58;
      }
    }

    if (-[BMSiriAssistantSuggestionFeaturesUserSegmentation hasActiveWithin7Days2To3Turns](self, "hasActiveWithin7Days2To3Turns") || [v5 hasActiveWithin7Days2To3Turns])
    {
      if (![(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self hasActiveWithin7Days2To3Turns])
      {
        goto LABEL_58;
      }

      if (![v5 hasActiveWithin7Days2To3Turns])
      {
        goto LABEL_58;
      }

      activeWithin7Days2To3Turns = [(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self activeWithin7Days2To3Turns];
      if (activeWithin7Days2To3Turns != [v5 activeWithin7Days2To3Turns])
      {
        goto LABEL_58;
      }
    }

    if (!-[BMSiriAssistantSuggestionFeaturesUserSegmentation hasActiveWithin7Days4PlusTurns](self, "hasActiveWithin7Days4PlusTurns") && ![v5 hasActiveWithin7Days4PlusTurns])
    {
      LOBYTE(v17) = 1;
      goto LABEL_59;
    }

    if (-[BMSiriAssistantSuggestionFeaturesUserSegmentation hasActiveWithin7Days4PlusTurns](self, "hasActiveWithin7Days4PlusTurns") && [v5 hasActiveWithin7Days4PlusTurns])
    {
      activeWithin7Days4PlusTurns = [(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self activeWithin7Days4PlusTurns];
      v17 = activeWithin7Days4PlusTurns ^ [v5 activeWithin7Days4PlusTurns] ^ 1;
    }

    else
    {
LABEL_58:
      LOBYTE(v17) = 0;
    }

LABEL_59:

    goto LABEL_60;
  }

  LOBYTE(v17) = 0;
LABEL_60:

  return v17;
}

- (id)jsonDictionary
{
  v37[11] = *MEMORY[0x1E69E9840];
  if ([(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self hasIs2x3])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesUserSegmentation is2x3](self, "is2x3")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self hasSiriWasDisabled])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesUserSegmentation siriWasDisabled](self, "siriWasDisabled")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self hasSiriWasdictationOnly])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesUserSegmentation siriWasdictationOnly](self, "siriWasdictationOnly")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self hasActive6MonthsOrMoreAgo])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesUserSegmentation active6MonthsOrMoreAgo](self, "active6MonthsOrMoreAgo")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self hasActive28To6MonthsDaysAgo])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesUserSegmentation active28To6MonthsDaysAgo](self, "active28To6MonthsDaysAgo")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self hasActive14To28DaysAgo])
  {
    v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesUserSegmentation active14To28DaysAgo](self, "active14To28DaysAgo")}];
  }

  else
  {
    v35 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self hasActive7To14DaysAgo])
  {
    v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesUserSegmentation active7To14DaysAgo](self, "active7To14DaysAgo")}];
  }

  else
  {
    v34 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self hasActiveWithin7days])
  {
    v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesUserSegmentation activeWithin7days](self, "activeWithin7days")}];
  }

  else
  {
    v33 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self hasActiveWithin7days1Turn])
  {
    v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesUserSegmentation activeWithin7days1Turn](self, "activeWithin7days1Turn")}];
  }

  else
  {
    v32 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self hasActiveWithin7Days2To3Turns])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesUserSegmentation activeWithin7Days2To3Turns](self, "activeWithin7Days2To3Turns")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self hasActiveWithin7Days4PlusTurns])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesUserSegmentation activeWithin7Days4PlusTurns](self, "activeWithin7Days4PlusTurns")}];
  }

  else
  {
    v9 = 0;
  }

  v36[0] = @"is2x3";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null;
  v37[0] = null;
  v36[1] = @"siriWasDisabled";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null2;
  v37[1] = null2;
  v36[2] = @"siriWasdictationOnly";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null3;
  v37[2] = null3;
  v36[3] = @"active6MonthsOrMoreAgo";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v3;
  v24 = null4;
  v37[3] = null4;
  v36[4] = @"active28To6MonthsDaysAgo";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v4;
  v23 = null5;
  v37[4] = null5;
  v36[5] = @"active14To28DaysAgo";
  null6 = v35;
  if (!v35)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v5;
  v37[5] = null6;
  v36[6] = @"active7To14DaysAgo";
  null7 = v34;
  if (!v34)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v37[6] = null7;
  v36[7] = @"activeWithin7days";
  null8 = v33;
  if (!v33)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v7;
  v37[7] = null8;
  v36[8] = @"activeWithin7days1Turn";
  null9 = v32;
  if (!v32)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v37[8] = null9;
  v36[9] = @"activeWithin7Days2To3Turns";
  null10 = v8;
  if (!v8)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v37[9] = null10;
  v36[10] = @"activeWithin7Days4PlusTurns";
  null11 = v9;
  if (!v9)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v37[10] = null11;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:11];
  if (v9)
  {
    if (v8)
    {
      goto LABEL_58;
    }
  }

  else
  {

    if (v8)
    {
      goto LABEL_58;
    }
  }

LABEL_58:
  if (!v32)
  {
  }

  if (!v33)
  {
  }

  if (!v34)
  {
  }

  if (!v35)
  {
  }

  if (!v18)
  {
  }

  if (v6)
  {
    if (v29)
    {
      goto LABEL_70;
    }
  }

  else
  {

    if (v29)
    {
LABEL_70:
      if (v30)
      {
        goto LABEL_71;
      }

LABEL_79:

      if (v31)
      {
        goto LABEL_72;
      }

      goto LABEL_80;
    }
  }

  if (!v30)
  {
    goto LABEL_79;
  }

LABEL_71:
  if (v31)
  {
    goto LABEL_72;
  }

LABEL_80:

LABEL_72:

  return v28;
}

- (BMSiriAssistantSuggestionFeaturesUserSegmentation)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v131[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"is2x3"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"siriWasDisabled"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          goto LABEL_45;
        }

        errorCopy = error;
        v39 = v8;
        v40 = objc_alloc(MEMORY[0x1E696ABC0]);
        v41 = *MEMORY[0x1E698F240];
        v128 = *MEMORY[0x1E696A578];
        v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"siriWasDisabled"];
        v129 = v29;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
        v42 = v40;
        v8 = v39;
        v43 = [v42 initWithDomain:v41 code:2 userInfo:v12];
        v10 = 0;
        error = 0;
        *errorCopy = v43;
        goto LABEL_44;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"siriWasdictationOnly"];
    v108 = v10;
    errorCopy9 = self;
    v106 = v11;
    v107 = v8;
    v105 = v9;
    if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v29 = 0;
          goto LABEL_44;
        }

        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v45 = *MEMORY[0x1E698F240];
        v126 = *MEMORY[0x1E696A578];
        errorCopy2 = error;
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"siriWasdictationOnly"];
        v127 = v14;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
        v47 = v44;
        v8 = v107;
        v29 = 0;
        error = 0;
        *errorCopy2 = [v47 initWithDomain:v45 code:2 userInfo:v30];
LABEL_43:

        v10 = v108;
        self = errorCopy9;
        v9 = v105;
        v12 = v106;
LABEL_44:

        goto LABEL_45;
      }

      v104 = v12;
    }

    else
    {
      v104 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"active6MonthsOrMoreAgo"];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v30 = v13;
        if (!error)
        {
          v14 = 0;
          v29 = v104;
          goto LABEL_43;
        }

        v48 = objc_alloc(MEMORY[0x1E696ABC0]);
        v49 = *MEMORY[0x1E698F240];
        v124 = *MEMORY[0x1E696A578];
        errorCopy3 = error;
        v103 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"active6MonthsOrMoreAgo"];
        v125 = v103;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
        v51 = v48;
        v8 = v107;
        v52 = [v51 initWithDomain:v49 code:2 userInfo:v15];
        v14 = 0;
        error = 0;
        *errorCopy3 = v52;
        v29 = v104;
        goto LABEL_42;
      }

      v102 = v13;
      v14 = v13;
    }

    else
    {
      v102 = v13;
      v14 = 0;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"active28To6MonthsDaysAgo"];
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v103 = 0;
          v29 = v104;
          v30 = v102;
          goto LABEL_42;
        }

        v53 = objc_alloc(MEMORY[0x1E696ABC0]);
        v54 = *MEMORY[0x1E698F240];
        v122 = *MEMORY[0x1E696A578];
        errorCopy4 = error;
        v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"active28To6MonthsDaysAgo"];
        v123 = v56;
        v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
        v58 = v53;
        v8 = v107;
        v59 = v54;
        v19 = v56;
        v101 = v57;
        v103 = 0;
        error = 0;
        *errorCopy4 = [v58 initWithDomain:v59 code:2 userInfo:?];
        v29 = v104;
        v30 = v102;
LABEL_41:

LABEL_42:
        goto LABEL_43;
      }

      v16 = v15;
      v103 = v15;
    }

    else
    {
      v16 = v15;
      v103 = 0;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"active14To28DaysAgo"];
    v101 = v17;
    if (v17 && (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v19 = 0;
          v29 = v104;
          v30 = v102;
          v15 = v16;
          goto LABEL_41;
        }

        v60 = objc_alloc(MEMORY[0x1E696ABC0]);
        v61 = *MEMORY[0x1E698F240];
        v120 = *MEMORY[0x1E696A578];
        errorCopy5 = error;
        v100 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"active14To28DaysAgo"];
        v121 = v100;
        v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
        v63 = [v60 initWithDomain:v61 code:2 userInfo:?];
        v19 = 0;
        error = 0;
        *errorCopy5 = v63;
        goto LABEL_98;
      }

      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"active7To14DaysAgo"];
    v99 = v20;
    if (!v20 || (v21 = v20, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v100 = 0;
LABEL_22:
      [dictionaryCopy objectForKeyedSubscript:@"activeWithin7days"];
      v22 = v15 = v16;
      if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v98 = 0;
            v29 = v104;
            v30 = v102;
            goto LABEL_39;
          }

          v70 = objc_alloc(MEMORY[0x1E696ABC0]);
          v71 = v22;
          v72 = v19;
          v73 = *MEMORY[0x1E698F240];
          v116 = *MEMORY[0x1E696A578];
          v91 = v14;
          errorCopy6 = error;
          v97 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"activeWithin7days"];
          v117 = v97;
          v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
          v76 = v70;
          v8 = v107;
          v77 = v73;
          v19 = v72;
          v22 = v71;
          v95 = v75;
          v98 = 0;
          error = 0;
          *errorCopy6 = [v76 initWithDomain:v77 code:2 userInfo:?];
          v14 = v91;
          goto LABEL_101;
        }

        v98 = v22;
      }

      else
      {
        v98 = 0;
      }

      v23 = [dictionaryCopy objectForKeyedSubscript:@"activeWithin7days1Turn"];
      v95 = v23;
      v96 = v19;
      if (!v23 || (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v97 = 0;
LABEL_28:
        v25 = [dictionaryCopy objectForKeyedSubscript:@"activeWithin7Days2To3Turns"];
        if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v26 = 0;
              goto LABEL_37;
            }

            v82 = objc_alloc(MEMORY[0x1E696ABC0]);
            errorCopy7 = error;
            v83 = *MEMORY[0x1E698F240];
            v112 = *MEMORY[0x1E696A578];
            v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"activeWithin7Days2To3Turns"];
            v113 = v28;
            v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
            v84 = [v82 initWithDomain:v83 code:2 userInfo:v27];
            v26 = 0;
            error = 0;
            *errorCopy7 = v84;
            goto LABEL_36;
          }

          v90 = v14;
          v92 = v22;
          v26 = v25;
        }

        else
        {
          v90 = v14;
          v92 = v22;
          v26 = 0;
        }

        v27 = [dictionaryCopy objectForKeyedSubscript:@"activeWithin7Days4PlusTurns"];
        if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (error)
            {
              errorCopy8 = error;
              v89 = objc_alloc(MEMORY[0x1E696ABC0]);
              v88 = *MEMORY[0x1E698F240];
              v110 = *MEMORY[0x1E696A578];
              v86 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"activeWithin7Days4PlusTurns"];
              v111 = v86;
              v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
              *errorCopy8 = [v89 initWithDomain:v88 code:2 userInfo:v87];

              v28 = 0;
              error = 0;
            }

            else
            {
              v28 = 0;
            }

            v14 = v90;
            goto LABEL_35;
          }

          v28 = v27;
        }

        else
        {
          v28 = 0;
        }

        v14 = v90;
        error = [(BMSiriAssistantSuggestionFeaturesUserSegmentation *)errorCopy9 initWithIs2x3:v107 siriWasDisabled:v108 siriWasdictationOnly:v104 active6MonthsOrMoreAgo:v90 active28To6MonthsDaysAgo:v103 active14To28DaysAgo:v96 active7To14DaysAgo:v100 activeWithin7days:v98 activeWithin7days1Turn:v97 activeWithin7Days2To3Turns:v26 activeWithin7Days4PlusTurns:v28];
        errorCopy9 = error;
LABEL_35:
        v22 = v92;
LABEL_36:

LABEL_37:
        v8 = v107;
        v29 = v104;
        v30 = v102;
        v19 = v96;
LABEL_38:

LABEL_39:
LABEL_40:

        goto LABEL_41;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v97 = v24;
        goto LABEL_28;
      }

      if (error)
      {
        errorCopy10 = error;
        v79 = objc_alloc(MEMORY[0x1E696ABC0]);
        v80 = *MEMORY[0x1E698F240];
        v114 = *MEMORY[0x1E696A578];
        v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"activeWithin7days1Turn"];
        v115 = v26;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
        v81 = [v79 initWithDomain:v80 code:2 userInfo:v25];
        v97 = 0;
        error = 0;
        *errorCopy10 = v81;
        goto LABEL_37;
      }

      v97 = 0;
LABEL_101:
      v29 = v104;
      v30 = v102;
      goto LABEL_38;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v100 = v21;
      goto LABEL_22;
    }

    if (error)
    {
      v64 = objc_alloc(MEMORY[0x1E696ABC0]);
      v65 = v19;
      v66 = *MEMORY[0x1E698F240];
      v118 = *MEMORY[0x1E696A578];
      errorCopy11 = error;
      v98 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"active7To14DaysAgo"];
      v119 = v98;
      v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
      v68 = v64;
      v8 = v107;
      v69 = v66;
      v19 = v65;
      v100 = 0;
      error = 0;
      *errorCopy11 = [v68 initWithDomain:v69 code:2 userInfo:v93];
      v29 = v104;
      v30 = v102;
      v15 = v16;
      v22 = v93;
      goto LABEL_39;
    }

    v100 = 0;
LABEL_98:
    v29 = v104;
    v30 = v102;
    v15 = v16;
    goto LABEL_40;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v8 = 0;
    goto LABEL_46;
  }

  v32 = objc_alloc(MEMORY[0x1E696ABC0]);
  v33 = *MEMORY[0x1E698F240];
  v130 = *MEMORY[0x1E696A578];
  v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"is2x3"];
  v131[0] = v34;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v131 forKeys:&v130 count:1];
  v35 = v33;
  v10 = v34;
  v36 = [v32 initWithDomain:v35 code:2 userInfo:v9];
  v8 = 0;
  errorCopy12 = error;
  error = 0;
  *errorCopy12 = v36;
LABEL_45:

LABEL_46:
  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriAssistantSuggestionFeaturesUserSegmentation *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasIs2x3)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasSiriWasDisabled)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasSiriWasdictationOnly)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasActive6MonthsOrMoreAgo)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasActive28To6MonthsDaysAgo)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasActive14To28DaysAgo)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasActive7To14DaysAgo)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasActiveWithin7days)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasActiveWithin7days1Turn)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasActiveWithin7Days2To3Turns)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasActiveWithin7Days4PlusTurns)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v78.receiver = self;
  v78.super_class = BMSiriAssistantSuggestionFeaturesUserSegmentation;
  v5 = [(BMEventBase *)&v78 init];
  if (!v5)
  {
    goto LABEL_149;
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
        v79 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v79 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v79 & 0x7F) << v7;
        if ((v79 & 0x80) == 0)
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

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 5)
      {
        if (v15 <= 2)
        {
          if (v15 == 1)
          {
            v40 = 0;
            v41 = 0;
            v18 = 0;
            v5->_hasIs2x3 = 1;
            while (1)
            {
              v79 = 0;
              v42 = [fromCopy position] + 1;
              if (v42 >= [fromCopy position] && (v43 = objc_msgSend(fromCopy, "position") + 1, v43 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v79 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (v79 & 0x7F) << v40;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v22 = v41++ > 8;
              if (v22)
              {
                LOBYTE(v23) = 0;
                v24 = &OBJC_IVAR___BMSiriAssistantSuggestionFeaturesUserSegmentation__is2x3;
                goto LABEL_145;
              }
            }

            v24 = &OBJC_IVAR___BMSiriAssistantSuggestionFeaturesUserSegmentation__is2x3;
          }

          else
          {
            if (v15 != 2)
            {
LABEL_131:
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_148;
              }

              goto LABEL_146;
            }

            v35 = 0;
            v36 = 0;
            v18 = 0;
            v5->_hasSiriWasDisabled = 1;
            while (1)
            {
              v79 = 0;
              v37 = [fromCopy position] + 1;
              if (v37 >= [fromCopy position] && (v38 = objc_msgSend(fromCopy, "position") + 1, v38 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v79 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (v79 & 0x7F) << v35;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v22 = v36++ > 8;
              if (v22)
              {
                LOBYTE(v23) = 0;
                v24 = &OBJC_IVAR___BMSiriAssistantSuggestionFeaturesUserSegmentation__siriWasDisabled;
                goto LABEL_145;
              }
            }

            v24 = &OBJC_IVAR___BMSiriAssistantSuggestionFeaturesUserSegmentation__siriWasDisabled;
          }
        }

        else
        {
          switch(v15)
          {
            case 3:
              v60 = 0;
              v61 = 0;
              v18 = 0;
              v5->_hasSiriWasdictationOnly = 1;
              while (1)
              {
                v79 = 0;
                v62 = [fromCopy position] + 1;
                if (v62 >= [fromCopy position] && (v63 = objc_msgSend(fromCopy, "position") + 1, v63 <= objc_msgSend(fromCopy, "length")))
                {
                  data4 = [fromCopy data];
                  [data4 getBytes:&v79 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v18 |= (v79 & 0x7F) << v60;
                if ((v79 & 0x80) == 0)
                {
                  break;
                }

                v60 += 7;
                v22 = v61++ > 8;
                if (v22)
                {
                  LOBYTE(v23) = 0;
                  v24 = &OBJC_IVAR___BMSiriAssistantSuggestionFeaturesUserSegmentation__siriWasdictationOnly;
                  goto LABEL_145;
                }
              }

              v24 = &OBJC_IVAR___BMSiriAssistantSuggestionFeaturesUserSegmentation__siriWasdictationOnly;
              break;
            case 4:
              v45 = 0;
              v46 = 0;
              v18 = 0;
              v5->_hasActive6MonthsOrMoreAgo = 1;
              while (1)
              {
                v79 = 0;
                v47 = [fromCopy position] + 1;
                if (v47 >= [fromCopy position] && (v48 = objc_msgSend(fromCopy, "position") + 1, v48 <= objc_msgSend(fromCopy, "length")))
                {
                  data5 = [fromCopy data];
                  [data5 getBytes:&v79 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v18 |= (v79 & 0x7F) << v45;
                if ((v79 & 0x80) == 0)
                {
                  break;
                }

                v45 += 7;
                v22 = v46++ > 8;
                if (v22)
                {
                  LOBYTE(v23) = 0;
                  v24 = &OBJC_IVAR___BMSiriAssistantSuggestionFeaturesUserSegmentation__active6MonthsOrMoreAgo;
                  goto LABEL_145;
                }
              }

              v24 = &OBJC_IVAR___BMSiriAssistantSuggestionFeaturesUserSegmentation__active6MonthsOrMoreAgo;
              break;
            case 5:
              v25 = 0;
              v26 = 0;
              v18 = 0;
              v5->_hasActive28To6MonthsDaysAgo = 1;
              while (1)
              {
                v79 = 0;
                v27 = [fromCopy position] + 1;
                if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
                {
                  data6 = [fromCopy data];
                  [data6 getBytes:&v79 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v18 |= (v79 & 0x7F) << v25;
                if ((v79 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                v22 = v26++ > 8;
                if (v22)
                {
                  LOBYTE(v23) = 0;
                  v24 = &OBJC_IVAR___BMSiriAssistantSuggestionFeaturesUserSegmentation__active28To6MonthsDaysAgo;
                  goto LABEL_145;
                }
              }

              v24 = &OBJC_IVAR___BMSiriAssistantSuggestionFeaturesUserSegmentation__active28To6MonthsDaysAgo;
              break;
            default:
              goto LABEL_131;
          }
        }
      }

      else if (v15 > 8)
      {
        switch(v15)
        {
          case 9:
            v70 = 0;
            v71 = 0;
            v18 = 0;
            v5->_hasActiveWithin7days1Turn = 1;
            while (1)
            {
              v79 = 0;
              v72 = [fromCopy position] + 1;
              if (v72 >= [fromCopy position] && (v73 = objc_msgSend(fromCopy, "position") + 1, v73 <= objc_msgSend(fromCopy, "length")))
              {
                data7 = [fromCopy data];
                [data7 getBytes:&v79 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (v79 & 0x7F) << v70;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v70 += 7;
              v22 = v71++ > 8;
              if (v22)
              {
                LOBYTE(v23) = 0;
                v24 = &OBJC_IVAR___BMSiriAssistantSuggestionFeaturesUserSegmentation__activeWithin7days1Turn;
                goto LABEL_145;
              }
            }

            v24 = &OBJC_IVAR___BMSiriAssistantSuggestionFeaturesUserSegmentation__activeWithin7days1Turn;
            break;
          case 0xA:
            v55 = 0;
            v56 = 0;
            v18 = 0;
            v5->_hasActiveWithin7Days2To3Turns = 1;
            while (1)
            {
              v79 = 0;
              v57 = [fromCopy position] + 1;
              if (v57 >= [fromCopy position] && (v58 = objc_msgSend(fromCopy, "position") + 1, v58 <= objc_msgSend(fromCopy, "length")))
              {
                data8 = [fromCopy data];
                [data8 getBytes:&v79 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (v79 & 0x7F) << v55;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              v22 = v56++ > 8;
              if (v22)
              {
                LOBYTE(v23) = 0;
                v24 = &OBJC_IVAR___BMSiriAssistantSuggestionFeaturesUserSegmentation__activeWithin7Days2To3Turns;
                goto LABEL_145;
              }
            }

            v24 = &OBJC_IVAR___BMSiriAssistantSuggestionFeaturesUserSegmentation__activeWithin7Days2To3Turns;
            break;
          case 0xB:
            v30 = 0;
            v31 = 0;
            v18 = 0;
            v5->_hasActiveWithin7Days4PlusTurns = 1;
            while (1)
            {
              v79 = 0;
              v32 = [fromCopy position] + 1;
              if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
              {
                data9 = [fromCopy data];
                [data9 getBytes:&v79 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (v79 & 0x7F) << v30;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v22 = v31++ > 8;
              if (v22)
              {
                LOBYTE(v23) = 0;
                v24 = &OBJC_IVAR___BMSiriAssistantSuggestionFeaturesUserSegmentation__activeWithin7Days4PlusTurns;
                goto LABEL_145;
              }
            }

            v24 = &OBJC_IVAR___BMSiriAssistantSuggestionFeaturesUserSegmentation__activeWithin7Days4PlusTurns;
            break;
          default:
            goto LABEL_131;
        }
      }

      else
      {
        switch(v15)
        {
          case 6:
            v65 = 0;
            v66 = 0;
            v18 = 0;
            v5->_hasActive14To28DaysAgo = 1;
            while (1)
            {
              v79 = 0;
              v67 = [fromCopy position] + 1;
              if (v67 >= [fromCopy position] && (v68 = objc_msgSend(fromCopy, "position") + 1, v68 <= objc_msgSend(fromCopy, "length")))
              {
                data10 = [fromCopy data];
                [data10 getBytes:&v79 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (v79 & 0x7F) << v65;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v65 += 7;
              v22 = v66++ > 8;
              if (v22)
              {
                LOBYTE(v23) = 0;
                v24 = &OBJC_IVAR___BMSiriAssistantSuggestionFeaturesUserSegmentation__active14To28DaysAgo;
                goto LABEL_145;
              }
            }

            v24 = &OBJC_IVAR___BMSiriAssistantSuggestionFeaturesUserSegmentation__active14To28DaysAgo;
            break;
          case 7:
            v50 = 0;
            v51 = 0;
            v18 = 0;
            v5->_hasActive7To14DaysAgo = 1;
            while (1)
            {
              v79 = 0;
              v52 = [fromCopy position] + 1;
              if (v52 >= [fromCopy position] && (v53 = objc_msgSend(fromCopy, "position") + 1, v53 <= objc_msgSend(fromCopy, "length")))
              {
                data11 = [fromCopy data];
                [data11 getBytes:&v79 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (v79 & 0x7F) << v50;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              v22 = v51++ > 8;
              if (v22)
              {
                LOBYTE(v23) = 0;
                v24 = &OBJC_IVAR___BMSiriAssistantSuggestionFeaturesUserSegmentation__active7To14DaysAgo;
                goto LABEL_145;
              }
            }

            v24 = &OBJC_IVAR___BMSiriAssistantSuggestionFeaturesUserSegmentation__active7To14DaysAgo;
            break;
          case 8:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v5->_hasActiveWithin7days = 1;
            while (1)
            {
              v79 = 0;
              v19 = [fromCopy position] + 1;
              if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
              {
                data12 = [fromCopy data];
                [data12 getBytes:&v79 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (v79 & 0x7F) << v16;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v22 = v17++ > 8;
              if (v22)
              {
                LOBYTE(v23) = 0;
                v24 = &OBJC_IVAR___BMSiriAssistantSuggestionFeaturesUserSegmentation__activeWithin7days;
                goto LABEL_145;
              }
            }

            v24 = &OBJC_IVAR___BMSiriAssistantSuggestionFeaturesUserSegmentation__activeWithin7days;
            break;
          default:
            goto LABEL_131;
        }
      }

      v23 = (v18 != 0) & ~[fromCopy hasError];
LABEL_145:
      *(&v5->super.super.isa + *v24) = v23;
LABEL_146:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_148:
    v76 = 0;
  }

  else
  {
LABEL_149:
    v76 = v5;
  }

  return v76;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesUserSegmentation is2x3](self, "is2x3")}];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesUserSegmentation siriWasDisabled](self, "siriWasDisabled")}];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesUserSegmentation siriWasdictationOnly](self, "siriWasdictationOnly")}];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesUserSegmentation active6MonthsOrMoreAgo](self, "active6MonthsOrMoreAgo")}];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesUserSegmentation active28To6MonthsDaysAgo](self, "active28To6MonthsDaysAgo")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesUserSegmentation active14To28DaysAgo](self, "active14To28DaysAgo")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesUserSegmentation active7To14DaysAgo](self, "active7To14DaysAgo")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesUserSegmentation activeWithin7days](self, "activeWithin7days")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesUserSegmentation activeWithin7days1Turn](self, "activeWithin7days1Turn")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesUserSegmentation activeWithin7Days2To3Turns](self, "activeWithin7Days2To3Turns")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesUserSegmentation activeWithin7Days4PlusTurns](self, "activeWithin7Days4PlusTurns")}];
  v15 = [v14 initWithFormat:@"BMSiriAssistantSuggestionFeaturesUserSegmentation with is2x3: %@, siriWasDisabled: %@, siriWasdictationOnly: %@, active6MonthsOrMoreAgo: %@, active28To6MonthsDaysAgo: %@, active14To28DaysAgo: %@, active7To14DaysAgo: %@, activeWithin7days: %@, activeWithin7days1Turn: %@, activeWithin7Days2To3Turns: %@, activeWithin7Days4PlusTurns: %@", v13, v12, v16, v3, v4, v5, v6, v7, v8, v9, v10];

  return v15;
}

- (BMSiriAssistantSuggestionFeaturesUserSegmentation)initWithIs2x3:(id)is2x3 siriWasDisabled:(id)disabled siriWasdictationOnly:(id)only active6MonthsOrMoreAgo:(id)ago active28To6MonthsDaysAgo:(id)daysAgo active14To28DaysAgo:(id)to28DaysAgo active7To14DaysAgo:(id)to14DaysAgo activeWithin7days:(id)self0 activeWithin7days1Turn:(id)self1 activeWithin7Days2To3Turns:(id)self2 activeWithin7Days4PlusTurns:(id)self3
{
  is2x3Copy = is2x3;
  disabledCopy = disabled;
  onlyCopy = only;
  agoCopy = ago;
  daysAgoCopy = daysAgo;
  to28DaysAgoCopy = to28DaysAgo;
  to14DaysAgoCopy = to14DaysAgo;
  within7daysCopy = within7days;
  turnCopy = turn;
  turnsCopy = turns;
  plusTurnsCopy = plusTurns;
  v32.receiver = self;
  v32.super_class = BMSiriAssistantSuggestionFeaturesUserSegmentation;
  v26 = [(BMEventBase *)&v32 init];
  if (v26)
  {
    v26->_dataVersion = [objc_opt_class() latestDataVersion];
    if (is2x3Copy)
    {
      v26->_hasIs2x3 = 1;
      v26->_is2x3 = [is2x3Copy BOOLValue];
    }

    else
    {
      v26->_hasIs2x3 = 0;
      v26->_is2x3 = 0;
    }

    if (disabledCopy)
    {
      v26->_hasSiriWasDisabled = 1;
      v26->_siriWasDisabled = [disabledCopy BOOLValue];
    }

    else
    {
      v26->_hasSiriWasDisabled = 0;
      v26->_siriWasDisabled = 0;
    }

    if (onlyCopy)
    {
      v26->_hasSiriWasdictationOnly = 1;
      v26->_siriWasdictationOnly = [onlyCopy BOOLValue];
    }

    else
    {
      v26->_hasSiriWasdictationOnly = 0;
      v26->_siriWasdictationOnly = 0;
    }

    if (agoCopy)
    {
      v26->_hasActive6MonthsOrMoreAgo = 1;
      v26->_active6MonthsOrMoreAgo = [agoCopy BOOLValue];
    }

    else
    {
      v26->_hasActive6MonthsOrMoreAgo = 0;
      v26->_active6MonthsOrMoreAgo = 0;
    }

    if (daysAgoCopy)
    {
      v26->_hasActive28To6MonthsDaysAgo = 1;
      v26->_active28To6MonthsDaysAgo = [daysAgoCopy BOOLValue];
    }

    else
    {
      v26->_hasActive28To6MonthsDaysAgo = 0;
      v26->_active28To6MonthsDaysAgo = 0;
    }

    if (to28DaysAgoCopy)
    {
      v26->_hasActive14To28DaysAgo = 1;
      v26->_active14To28DaysAgo = [to28DaysAgoCopy BOOLValue];
    }

    else
    {
      v26->_hasActive14To28DaysAgo = 0;
      v26->_active14To28DaysAgo = 0;
    }

    if (to14DaysAgoCopy)
    {
      v26->_hasActive7To14DaysAgo = 1;
      v26->_active7To14DaysAgo = [to14DaysAgoCopy BOOLValue];
    }

    else
    {
      v26->_hasActive7To14DaysAgo = 0;
      v26->_active7To14DaysAgo = 0;
    }

    if (within7daysCopy)
    {
      v26->_hasActiveWithin7days = 1;
      v26->_activeWithin7days = [within7daysCopy BOOLValue];
    }

    else
    {
      v26->_hasActiveWithin7days = 0;
      v26->_activeWithin7days = 0;
    }

    if (turnCopy)
    {
      v26->_hasActiveWithin7days1Turn = 1;
      v26->_activeWithin7days1Turn = [turnCopy BOOLValue];
    }

    else
    {
      v26->_hasActiveWithin7days1Turn = 0;
      v26->_activeWithin7days1Turn = 0;
    }

    if (turnsCopy)
    {
      v26->_hasActiveWithin7Days2To3Turns = 1;
      v26->_activeWithin7Days2To3Turns = [turnsCopy BOOLValue];
    }

    else
    {
      v26->_hasActiveWithin7Days2To3Turns = 0;
      v26->_activeWithin7Days2To3Turns = 0;
    }

    if (plusTurnsCopy)
    {
      v26->_hasActiveWithin7Days4PlusTurns = 1;
      v26->_activeWithin7Days4PlusTurns = [plusTurnsCopy BOOLValue];
    }

    else
    {
      v26->_hasActiveWithin7Days4PlusTurns = 0;
      v26->_activeWithin7Days4PlusTurns = 0;
    }
  }

  return v26;
}

+ (id)protoFields
{
  v15[11] = *MEMORY[0x1E69E9840];
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"is2x3" number:1 type:12 subMessageClass:0];
  v15[0] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siriWasDisabled" number:2 type:12 subMessageClass:0];
  v15[1] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siriWasdictationOnly" number:3 type:12 subMessageClass:0];
  v15[2] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"active6MonthsOrMoreAgo" number:4 type:12 subMessageClass:0];
  v15[3] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"active28To6MonthsDaysAgo" number:5 type:12 subMessageClass:0];
  v15[4] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"active14To28DaysAgo" number:6 type:12 subMessageClass:0];
  v15[5] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"active7To14DaysAgo" number:7 type:12 subMessageClass:0];
  v15[6] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activeWithin7days" number:8 type:12 subMessageClass:0];
  v15[7] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activeWithin7days1Turn" number:9 type:12 subMessageClass:0];
  v15[8] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activeWithin7Days2To3Turns" number:10 type:12 subMessageClass:0];
  v15[9] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activeWithin7Days4PlusTurns" number:11 type:12 subMessageClass:0];
  v15[10] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:11];

  return v11;
}

+ (id)columns
{
  v15[11] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"is2x3" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"siriWasDisabled" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"siriWasdictationOnly" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"active6MonthsOrMoreAgo" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"active28To6MonthsDaysAgo" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"active14To28DaysAgo" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"active7To14DaysAgo" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"activeWithin7days" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"activeWithin7days1Turn" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"activeWithin7Days2To3Turns" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"activeWithin7Days4PlusTurns" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:12 convertedType:0];
  v15[0] = v2;
  v15[1] = v3;
  v15[2] = v4;
  v15[3] = v5;
  v15[4] = v6;
  v15[5] = v13;
  v15[6] = v7;
  v15[7] = v8;
  v15[8] = v14;
  v15[9] = v9;
  v15[10] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:11];

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

    v8 = [[BMSiriAssistantSuggestionFeaturesUserSegmentation alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[10] = 0;
    }
  }

  return v4;
}

@end