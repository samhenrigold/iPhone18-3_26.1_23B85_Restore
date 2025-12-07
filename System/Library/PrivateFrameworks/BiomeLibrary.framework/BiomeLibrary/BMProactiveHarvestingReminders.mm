@interface BMProactiveHarvestingReminders
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMProactiveHarvestingReminders)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMProactiveHarvestingReminders)initWithUniqueID:(id)d domainID:(id)iD absoluteTimestamp:(id)timestamp title:(id)title notes:(id)notes isAllDay:(id)day completionDateTimestamp:(id)dateTimestamp dueDateTimestamp:(id)self0 priority:(id)self1 contentProtection:(id)self2 personaId:(id)self3;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSDate)completionDateTimestamp;
- (NSDate)dueDateTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMProactiveHarvestingReminders

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    uniqueID = [(BMProactiveHarvestingReminders *)self uniqueID];
    uniqueID2 = [v5 uniqueID];
    v8 = uniqueID2;
    if (uniqueID == uniqueID2)
    {
    }

    else
    {
      uniqueID3 = [(BMProactiveHarvestingReminders *)self uniqueID];
      uniqueID4 = [v5 uniqueID];
      v11 = [uniqueID3 isEqual:uniqueID4];

      if (!v11)
      {
        goto LABEL_43;
      }
    }

    domainID = [(BMProactiveHarvestingReminders *)self domainID];
    domainID2 = [v5 domainID];
    v15 = domainID2;
    if (domainID == domainID2)
    {
    }

    else
    {
      domainID3 = [(BMProactiveHarvestingReminders *)self domainID];
      domainID4 = [v5 domainID];
      v18 = [domainID3 isEqual:domainID4];

      if (!v18)
      {
        goto LABEL_43;
      }
    }

    absoluteTimestamp = [(BMProactiveHarvestingReminders *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v21 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMProactiveHarvestingReminders *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v24 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v24)
      {
        goto LABEL_43;
      }
    }

    title = [(BMProactiveHarvestingReminders *)self title];
    title2 = [v5 title];
    v27 = title2;
    if (title == title2)
    {
    }

    else
    {
      title3 = [(BMProactiveHarvestingReminders *)self title];
      title4 = [v5 title];
      v30 = [title3 isEqual:title4];

      if (!v30)
      {
        goto LABEL_43;
      }
    }

    notes = [(BMProactiveHarvestingReminders *)self notes];
    notes2 = [v5 notes];
    v33 = notes2;
    if (notes == notes2)
    {
    }

    else
    {
      notes3 = [(BMProactiveHarvestingReminders *)self notes];
      notes4 = [v5 notes];
      v36 = [notes3 isEqual:notes4];

      if (!v36)
      {
        goto LABEL_43;
      }
    }

    if (-[BMProactiveHarvestingReminders hasIsAllDay](self, "hasIsAllDay") || [v5 hasIsAllDay])
    {
      if (![(BMProactiveHarvestingReminders *)self hasIsAllDay])
      {
        goto LABEL_43;
      }

      if (![v5 hasIsAllDay])
      {
        goto LABEL_43;
      }

      isAllDay = [(BMProactiveHarvestingReminders *)self isAllDay];
      if (isAllDay != [v5 isAllDay])
      {
        goto LABEL_43;
      }
    }

    completionDateTimestamp = [(BMProactiveHarvestingReminders *)self completionDateTimestamp];
    completionDateTimestamp2 = [v5 completionDateTimestamp];
    v40 = completionDateTimestamp2;
    if (completionDateTimestamp == completionDateTimestamp2)
    {
    }

    else
    {
      completionDateTimestamp3 = [(BMProactiveHarvestingReminders *)self completionDateTimestamp];
      completionDateTimestamp4 = [v5 completionDateTimestamp];
      v43 = [completionDateTimestamp3 isEqual:completionDateTimestamp4];

      if (!v43)
      {
        goto LABEL_43;
      }
    }

    dueDateTimestamp = [(BMProactiveHarvestingReminders *)self dueDateTimestamp];
    dueDateTimestamp2 = [v5 dueDateTimestamp];
    v46 = dueDateTimestamp2;
    if (dueDateTimestamp == dueDateTimestamp2)
    {
    }

    else
    {
      dueDateTimestamp3 = [(BMProactiveHarvestingReminders *)self dueDateTimestamp];
      dueDateTimestamp4 = [v5 dueDateTimestamp];
      v49 = [dueDateTimestamp3 isEqual:dueDateTimestamp4];

      if (!v49)
      {
        goto LABEL_43;
      }
    }

    if (-[BMProactiveHarvestingReminders hasPriority](self, "hasPriority") || [v5 hasPriority])
    {
      if (![(BMProactiveHarvestingReminders *)self hasPriority])
      {
        goto LABEL_43;
      }

      if (![v5 hasPriority])
      {
        goto LABEL_43;
      }

      priority = [(BMProactiveHarvestingReminders *)self priority];
      if (priority != [v5 priority])
      {
        goto LABEL_43;
      }
    }

    contentProtection = [(BMProactiveHarvestingReminders *)self contentProtection];
    contentProtection2 = [v5 contentProtection];
    v53 = contentProtection2;
    if (contentProtection == contentProtection2)
    {
    }

    else
    {
      contentProtection3 = [(BMProactiveHarvestingReminders *)self contentProtection];
      contentProtection4 = [v5 contentProtection];
      v56 = [contentProtection3 isEqual:contentProtection4];

      if (!v56)
      {
LABEL_43:
        v12 = 0;
LABEL_44:

        goto LABEL_45;
      }
    }

    personaId = [(BMProactiveHarvestingReminders *)self personaId];
    personaId2 = [v5 personaId];
    if (personaId == personaId2)
    {
      v12 = 1;
    }

    else
    {
      personaId3 = [(BMProactiveHarvestingReminders *)self personaId];
      personaId4 = [v5 personaId];
      v12 = [personaId3 isEqual:personaId4];
    }

    goto LABEL_44;
  }

  v12 = 0;
LABEL_45:

  return v12;
}

- (NSDate)dueDateTimestamp
{
  if (self->_hasRaw_dueDateTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_dueDateTimestamp];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)completionDateTimestamp
{
  if (self->_hasRaw_completionDateTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_completionDateTimestamp];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v47[11] = *MEMORY[0x1E69E9840];
  uniqueID = [(BMProactiveHarvestingReminders *)self uniqueID];
  domainID = [(BMProactiveHarvestingReminders *)self domainID];
  absoluteTimestamp = [(BMProactiveHarvestingReminders *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v6 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMProactiveHarvestingReminders *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  title = [(BMProactiveHarvestingReminders *)self title];
  notes = [(BMProactiveHarvestingReminders *)self notes];
  if ([(BMProactiveHarvestingReminders *)self hasIsAllDay])
  {
    v45 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingReminders isAllDay](self, "isAllDay")}];
  }

  else
  {
    v45 = 0;
  }

  completionDateTimestamp = [(BMProactiveHarvestingReminders *)self completionDateTimestamp];
  if (completionDateTimestamp)
  {
    v12 = MEMORY[0x1E696AD98];
    completionDateTimestamp2 = [(BMProactiveHarvestingReminders *)self completionDateTimestamp];
    [completionDateTimestamp2 timeIntervalSinceReferenceDate];
    v44 = [v12 numberWithDouble:?];
  }

  else
  {
    v44 = 0;
  }

  dueDateTimestamp = [(BMProactiveHarvestingReminders *)self dueDateTimestamp];
  if (dueDateTimestamp)
  {
    v15 = MEMORY[0x1E696AD98];
    dueDateTimestamp2 = [(BMProactiveHarvestingReminders *)self dueDateTimestamp];
    [dueDateTimestamp2 timeIntervalSinceReferenceDate];
    v43 = [v15 numberWithDouble:?];
  }

  else
  {
    v43 = 0;
  }

  if ([(BMProactiveHarvestingReminders *)self hasPriority])
  {
    v17 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMProactiveHarvestingReminders priority](self, "priority")}];
  }

  else
  {
    v17 = 0;
  }

  contentProtection = [(BMProactiveHarvestingReminders *)self contentProtection];
  personaId = [(BMProactiveHarvestingReminders *)self personaId];
  v46[0] = @"uniqueID";
  null = uniqueID;
  if (!uniqueID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v37 = null;
  v47[0] = null;
  v46[1] = @"domainID";
  null2 = domainID;
  if (!domainID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = null2;
  v47[1] = null2;
  v46[2] = @"absoluteTimestamp";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = null3;
  v47[2] = null3;
  v46[3] = @"title";
  null4 = title;
  if (!title)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = uniqueID;
  v34 = null4;
  v47[3] = null4;
  v46[4] = @"notes";
  null5 = notes;
  if (!notes)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = domainID;
  v33 = null5;
  v47[4] = null5;
  v46[5] = @"isAllDay";
  null6 = v45;
  if (!v45)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v8;
  v47[5] = null6;
  v46[6] = @"completionDateTimestamp";
  null7 = v44;
  if (!v44)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = title;
  v47[6] = null7;
  v46[7] = @"dueDateTimestamp";
  null8 = v43;
  if (!v43)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = notes;
  v47[7] = null8;
  v46[8] = @"priority";
  null9 = v17;
  if (!v17)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v47[8] = null9;
  v46[9] = @"contentProtection";
  null10 = contentProtection;
  if (!contentProtection)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v47[9] = null10;
  v46[10] = @"personaId";
  null11 = personaId;
  if (!personaId)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v47[10] = null11;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:11];
  if (personaId)
  {
    if (contentProtection)
    {
      goto LABEL_40;
    }

LABEL_57:

    if (v17)
    {
      goto LABEL_41;
    }

    goto LABEL_58;
  }

  if (!contentProtection)
  {
    goto LABEL_57;
  }

LABEL_40:
  if (v17)
  {
    goto LABEL_41;
  }

LABEL_58:

LABEL_41:
  if (!v43)
  {
  }

  if (!v44)
  {
  }

  if (!v45)
  {
  }

  if (!v28)
  {
  }

  if (v39)
  {
    if (v40)
    {
      goto LABEL_51;
    }
  }

  else
  {

    if (v40)
    {
LABEL_51:
      if (v41)
      {
        goto LABEL_52;
      }

LABEL_61:

      if (v42)
      {
        goto LABEL_53;
      }

      goto LABEL_62;
    }
  }

  if (!v41)
  {
    goto LABEL_61;
  }

LABEL_52:
  if (v42)
  {
    goto LABEL_53;
  }

LABEL_62:

LABEL_53:

  return v38;
}

- (BMProactiveHarvestingReminders)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v151[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"uniqueID"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"domainID"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v21 = 0;
          v22 = 0;
          goto LABEL_81;
        }

        v23 = v6;
        v24 = v7;
        errorCopy = error;
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v148 = *MEMORY[0x1E696A578];
        v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domainID"];
        v149 = v28;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v149 forKeys:&v148 count:1];
        v30 = v27;
        v9 = v29;
        v21 = 0;
        v22 = 0;
        *errorCopy = [v26 initWithDomain:v30 code:2 userInfo:v29];
        v7 = v24;
        v6 = v23;
        v10 = v28;
        goto LABEL_80;
      }

      v127 = v8;
    }

    else
    {
      v127 = 0;
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = MEMORY[0x1E695DF00];
        errorCopy2 = error;
        v13 = v9;
        v14 = [v11 alloc];
        [v13 doubleValue];
        v16 = v15;

        error = errorCopy2;
        v17 = [v14 initWithTimeIntervalSinceReferenceDate:v16];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v10 = [v31 dateFromString:v9];

          goto LABEL_23;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v10 = 0;
            v22 = 0;
            v21 = v127;
            goto LABEL_80;
          }

          v89 = v6;
          v90 = v7;
          errorCopy3 = error;
          v92 = objc_alloc(MEMORY[0x1E696ABC0]);
          v93 = v9;
          v94 = *MEMORY[0x1E698F240];
          v146 = *MEMORY[0x1E696A578];
          v126 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
          v147 = v126;
          v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
          v95 = v94;
          v9 = v93;
          v22 = 0;
          *errorCopy3 = [v92 initWithDomain:v95 code:2 userInfo:v32];
          v7 = v90;
          v6 = v89;
          v10 = 0;
          v21 = v127;
LABEL_79:

LABEL_80:
          goto LABEL_81;
        }

        v17 = v9;
      }

      v10 = v17;
    }

    else
    {
      v10 = 0;
    }

LABEL_23:
    v32 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    v123 = v32;
    v125 = v10;
    if (v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v126 = 0;
          v22 = 0;
          v21 = v127;
          goto LABEL_79;
        }

        errorCopy4 = error;
        v43 = objc_alloc(MEMORY[0x1E696ABC0]);
        v44 = v9;
        v45 = *MEMORY[0x1E698F240];
        v144 = *MEMORY[0x1E696A578];
        v124 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"title"];
        v145 = v124;
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
        v47 = v43;
        v48 = v46;
        v49 = v45;
        v9 = v44;
        v126 = 0;
        v22 = 0;
        *errorCopy4 = [v47 initWithDomain:v49 code:2 userInfo:v46];
        v21 = v127;
        goto LABEL_78;
      }

      v126 = v32;
    }

    else
    {
      v126 = 0;
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:@"notes"];
    if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v124 = 0;
          v22 = 0;
          v21 = v127;
          v48 = v33;
          goto LABEL_77;
        }

        v121 = v6;
        v117 = v7;
        errorCopy5 = error;
        v51 = objc_alloc(MEMORY[0x1E696ABC0]);
        v52 = v9;
        v53 = *MEMORY[0x1E698F240];
        v142 = *MEMORY[0x1E696A578];
        v48 = v33;
        v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"notes"];
        v143 = v34;
        v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
        v55 = v53;
        v9 = v52;
        v119 = v54;
        v124 = 0;
        v22 = 0;
        *errorCopy5 = [v51 initWithDomain:v55 code:2 userInfo:?];
        v7 = v117;
        v6 = v121;
        goto LABEL_75;
      }

      v115 = v33;
      v124 = v33;
    }

    else
    {
      v115 = v33;
      v124 = 0;
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"isAllDay"];
    v119 = v34;
    errorCopy6 = error;
    if (v34)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v34 = 0;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v34 = 0;
            v22 = 0;
            v21 = v127;
            v48 = v115;
            goto LABEL_76;
          }

          v56 = objc_alloc(MEMORY[0x1E696ABC0]);
          v57 = v9;
          v58 = *MEMORY[0x1E698F240];
          v140 = *MEMORY[0x1E696A578];
          v59 = objc_alloc(MEMORY[0x1E696AEC0]);
          v106 = objc_opt_class();
          v60 = v59;
          v32 = v123;
          v120 = [v60 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v106, @"isAllDay"];
          v141 = v120;
          v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
          v62 = v58;
          v9 = v57;
          v111 = v61;
          v63 = [v56 initWithDomain:v62 code:2 userInfo:?];
          v34 = 0;
          v22 = 0;
          v48 = v115;
          *errorCopy6 = v63;
          goto LABEL_74;
        }

        v34 = v34;
      }
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"completionDateTimestamp"];
    v111 = v35;
    if (v35 && (v36 = v35, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v37 = MEMORY[0x1E695DF00];
        v38 = v36;
        v39 = [v37 alloc];
        [v38 doubleValue];
        v41 = v40;

        v42 = [v39 initWithTimeIntervalSinceReferenceDate:v41];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v64 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v120 = [v64 dateFromString:v36];

          goto LABEL_52;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v96 = v6;
          v97 = v7;
          if (!errorCopy6)
          {
            v120 = 0;
            v22 = 0;
            v32 = v123;
            v6 = v96;
            v48 = v115;
            goto LABEL_74;
          }

          v98 = objc_alloc(MEMORY[0x1E696ABC0]);
          v99 = v9;
          v100 = *MEMORY[0x1E698F240];
          v138 = *MEMORY[0x1E696A578];
          v116 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"completionDateTimestamp"];
          v139 = v116;
          v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
          v101 = v100;
          v9 = v99;
          v120 = 0;
          v22 = 0;
          *errorCopy6 = [v98 initWithDomain:v101 code:2 userInfo:v65];
          v7 = v97;
          v6 = v96;
LABEL_73:
          v48 = v115;

          v32 = v123;
LABEL_74:

LABEL_75:
          v21 = v127;
LABEL_76:

LABEL_77:
          v10 = v125;
LABEL_78:

          goto LABEL_79;
        }

        v42 = v36;
      }

      v120 = v42;
    }

    else
    {
      v120 = 0;
    }

LABEL_52:
    v65 = [dictionaryCopy objectForKeyedSubscript:@"dueDateTimestamp"];
    v118 = v7;
    v109 = v9;
    v110 = v8;
    if (v65 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v66 = MEMORY[0x1E695DF00];
        v67 = v9;
        v68 = v65;
        v69 = [v66 alloc];
        [v68 doubleValue];
        v71 = v70;

        v9 = v67;
        v72 = [v69 initWithTimeIntervalSinceReferenceDate:v71];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v73 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v116 = [v73 dateFromString:v65];

          goto LABEL_60;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy6)
          {
            v116 = 0;
            v22 = 0;
            goto LABEL_73;
          }

          v102 = objc_alloc(MEMORY[0x1E696ABC0]);
          v103 = *MEMORY[0x1E698F240];
          v136 = *MEMORY[0x1E696A578];
          v75 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"dueDateTimestamp"];
          v137 = v75;
          v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
          v104 = v102;
          v9 = v109;
          v105 = v103;
          v7 = v118;
          v116 = 0;
          v22 = 0;
          *errorCopy6 = [v104 initWithDomain:v105 code:2 userInfo:v74];
          goto LABEL_72;
        }

        v72 = v65;
      }

      v116 = v72;
    }

    else
    {
      v116 = 0;
    }

LABEL_60:
    v74 = [dictionaryCopy objectForKeyedSubscript:@"priority"];
    v112 = v34;
    if (v74 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy6)
        {
          v75 = 0;
          v22 = 0;
          goto LABEL_72;
        }

        v82 = objc_alloc(MEMORY[0x1E696ABC0]);
        v83 = *MEMORY[0x1E698F240];
        v134 = *MEMORY[0x1E696A578];
        v78 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"priority"];
        v135 = v78;
        v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
        v84 = [v82 initWithDomain:v83 code:2 userInfo:v76];
        v75 = 0;
        v22 = 0;
        *errorCopy6 = v84;
LABEL_71:

        v7 = v118;
        v9 = v109;
        v34 = v112;
LABEL_72:

        v8 = v110;
        goto LABEL_73;
      }

      v75 = v74;
    }

    else
    {
      v75 = 0;
    }

    v76 = [dictionaryCopy objectForKeyedSubscript:@"contentProtection"];
    v122 = v6;
    if (v76 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy6)
        {
          v78 = 0;
          v22 = 0;
          goto LABEL_71;
        }

        selfCopy3 = self;
        v107 = objc_alloc(MEMORY[0x1E696ABC0]);
        v85 = *MEMORY[0x1E698F240];
        v132 = *MEMORY[0x1E696A578];
        v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentProtection"];
        v133 = v80;
        v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
        v86 = [v107 initWithDomain:v85 code:2 userInfo:v79];
        v78 = 0;
        v22 = 0;
        *errorCopy6 = v86;
        goto LABEL_70;
      }

      selfCopy3 = self;
      v78 = v76;
    }

    else
    {
      selfCopy3 = self;
      v78 = 0;
    }

    v79 = [dictionaryCopy objectForKeyedSubscript:@"personaId"];
    if (v79 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy6)
        {
          v129 = objc_alloc(MEMORY[0x1E696ABC0]);
          v108 = *MEMORY[0x1E698F240];
          v130 = *MEMORY[0x1E696A578];
          v87 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"personaId"];
          v131 = v87;
          v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
          *errorCopy6 = [v129 initWithDomain:v108 code:2 userInfo:v88];
        }

        v80 = 0;
        v22 = 0;
        goto LABEL_70;
      }

      v80 = v79;
    }

    else
    {
      v80 = 0;
    }

    v22 = [(BMProactiveHarvestingReminders *)selfCopy3 initWithUniqueID:v118 domainID:v127 absoluteTimestamp:v125 title:v126 notes:v124 isAllDay:v112 completionDateTimestamp:v120 dueDateTimestamp:v116 priority:v75 contentProtection:v78 personaId:v80];
    selfCopy3 = v22;
LABEL_70:
    self = selfCopy3;

    v6 = v122;
    goto LABEL_71;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    goto LABEL_4;
  }

  if (!error)
  {
    v7 = 0;
    v22 = 0;
    goto LABEL_82;
  }

  errorCopy7 = error;
  v19 = objc_alloc(MEMORY[0x1E696ABC0]);
  v20 = *MEMORY[0x1E698F240];
  v150 = *MEMORY[0x1E696A578];
  v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"uniqueID"];
  v151[0] = v21;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v151 forKeys:&v150 count:1];
  v22 = 0;
  *errorCopy7 = [v19 initWithDomain:v20 code:2 userInfo:v8];
  v7 = 0;
LABEL_81:

LABEL_82:
  return v22;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProactiveHarvestingReminders *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_uniqueID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_domainID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_hasRaw_absoluteTimestamp)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v5;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_notes)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_hasIsAllDay)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_hasRaw_completionDateTimestamp)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v5;
  }

  if (self->_hasRaw_dueDateTimestamp)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v5;
  }

  if (self->_hasPriority)
  {
    PBDataWriterWriteSint32Field();
    toCopy = v5;
  }

  if (self->_contentProtection)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_personaId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v47.receiver = self;
  v47.super_class = BMProactiveHarvestingReminders;
  v5 = [(BMEventBase *)&v47 init];
  if (!v5)
  {
    goto LABEL_84;
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
        LOBYTE(v48) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v48 & 0x7F) << v7;
        if ((v48 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
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
            v18 = PBReaderReadString();
            v19 = 80;
          }

          else
          {
            if (v15 != 2)
            {
LABEL_66:
              if (!PBReaderSkipValueWithTag())
              {
                goto LABEL_83;
              }

              goto LABEL_81;
            }

            v18 = PBReaderReadString();
            v19 = 88;
          }
        }

        else
        {
          switch(v15)
          {
            case 3:
              v5->_hasRaw_absoluteTimestamp = 1;
              v48 = 0;
              v23 = [fromCopy position] + 8;
              if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 8, v24 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 8}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
              }

              else
              {
                [fromCopy _setError];
              }

              v40 = v48;
              v41 = 24;
LABEL_80:
              *(&v5->super.super.isa + v41) = v40;
              goto LABEL_81;
            case 4:
              v18 = PBReaderReadString();
              v19 = 96;
              break;
            case 5:
              v18 = PBReaderReadString();
              v19 = 104;
              break;
            default:
              goto LABEL_66;
          }
        }
      }

      else
      {
        if (v15 <= 8)
        {
          switch(v15)
          {
            case 6:
              v25 = 0;
              v26 = 0;
              v27 = 0;
              v5->_hasIsAllDay = 1;
              while (1)
              {
                LOBYTE(v48) = 0;
                v28 = [fromCopy position] + 1;
                if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
                {
                  data3 = [fromCopy data];
                  [data3 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v27 |= (v48 & 0x7F) << v25;
                if ((v48 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                v13 = v26++ >= 9;
                if (v13)
                {
                  LOBYTE(v31) = 0;
                  goto LABEL_69;
                }
              }

              v31 = (v27 != 0) & ~[fromCopy hasError];
LABEL_69:
              v5->_isAllDay = v31;
              goto LABEL_81;
            case 7:
              v5->_hasRaw_completionDateTimestamp = 1;
              v48 = 0;
              v20 = [fromCopy position] + 8;
              if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 8, v21 <= objc_msgSend(fromCopy, "length")))
              {
                data4 = [fromCopy data];
                [data4 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 8}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
              }

              else
              {
                [fromCopy _setError];
              }

              v40 = v48;
              v41 = 40;
              break;
            case 8:
              v5->_hasRaw_dueDateTimestamp = 1;
              v48 = 0;
              v16 = [fromCopy position] + 8;
              if (v16 >= [fromCopy position] && (v17 = objc_msgSend(fromCopy, "position") + 8, v17 <= objc_msgSend(fromCopy, "length")))
              {
                data5 = [fromCopy data];
                [data5 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 8}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
              }

              else
              {
                [fromCopy _setError];
              }

              v40 = v48;
              v41 = 56;
              break;
            default:
              goto LABEL_66;
          }

          goto LABEL_80;
        }

        switch(v15)
        {
          case 9:
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v5->_hasPriority = 1;
            while (1)
            {
              LOBYTE(v48) = 0;
              v35 = [fromCopy position] + 1;
              if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 1, v36 <= objc_msgSend(fromCopy, "length")))
              {
                data6 = [fromCopy data];
                [data6 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v34 |= (v48 & 0x7F) << v32;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v13 = v33++ >= 9;
              if (v13)
              {
                v38 = 0;
                goto LABEL_73;
              }
            }

            if ([fromCopy hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v34;
            }

LABEL_73:
            v5->_priority = -(v38 & 1) ^ (v38 >> 1);
            goto LABEL_81;
          case 0xA:
            v18 = PBReaderReadString();
            v19 = 112;
            break;
          case 0xB:
            v18 = PBReaderReadString();
            v19 = 120;
            break;
          default:
            goto LABEL_66;
        }
      }

      v22 = *(&v5->super.super.isa + v19);
      *(&v5->super.super.isa + v19) = v18;

LABEL_81:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_83:
    v45 = 0;
  }

  else
  {
LABEL_84:
    v45 = v5;
  }

  return v45;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  uniqueID = [(BMProactiveHarvestingReminders *)self uniqueID];
  domainID = [(BMProactiveHarvestingReminders *)self domainID];
  absoluteTimestamp = [(BMProactiveHarvestingReminders *)self absoluteTimestamp];
  title = [(BMProactiveHarvestingReminders *)self title];
  notes = [(BMProactiveHarvestingReminders *)self notes];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingReminders isAllDay](self, "isAllDay")}];
  completionDateTimestamp = [(BMProactiveHarvestingReminders *)self completionDateTimestamp];
  dueDateTimestamp = [(BMProactiveHarvestingReminders *)self dueDateTimestamp];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMProactiveHarvestingReminders priority](self, "priority")}];
  contentProtection = [(BMProactiveHarvestingReminders *)self contentProtection];
  personaId = [(BMProactiveHarvestingReminders *)self personaId];
  v15 = [v14 initWithFormat:@"BMProactiveHarvestingReminders with uniqueID: %@, domainID: %@, absoluteTimestamp: %@, title: %@, notes: %@, isAllDay: %@, completionDateTimestamp: %@, dueDateTimestamp: %@, priority: %@, contentProtection: %@, personaId: %@", uniqueID, domainID, absoluteTimestamp, title, notes, v7, completionDateTimestamp, dueDateTimestamp, v10, contentProtection, personaId];

  return v15;
}

- (BMProactiveHarvestingReminders)initWithUniqueID:(id)d domainID:(id)iD absoluteTimestamp:(id)timestamp title:(id)title notes:(id)notes isAllDay:(id)day completionDateTimestamp:(id)dateTimestamp dueDateTimestamp:(id)self0 priority:(id)self1 contentProtection:(id)self2 personaId:(id)self3
{
  dCopy = d;
  iDCopy = iD;
  iDCopy2 = iD;
  timestampCopy = timestamp;
  titleCopy = title;
  notesCopy = notes;
  notesCopy2 = notes;
  dayCopy = day;
  dateTimestampCopy = dateTimestamp;
  dueDateTimestampCopy = dueDateTimestamp;
  priorityCopy = priority;
  protectionCopy = protection;
  idCopy = id;
  v39.receiver = self;
  v39.super_class = BMProactiveHarvestingReminders;
  v24 = [(BMEventBase *)&v39 init];
  if (v24)
  {
    v24->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v24->_uniqueID, d);
    objc_storeStrong(&v24->_domainID, iDCopy);
    if (timestampCopy)
    {
      v24->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v24->_hasRaw_absoluteTimestamp = 0;
      v25 = -1.0;
    }

    v24->_raw_absoluteTimestamp = v25;
    objc_storeStrong(&v24->_title, title);
    objc_storeStrong(&v24->_notes, notesCopy);
    if (dayCopy)
    {
      v24->_hasIsAllDay = 1;
      v24->_isAllDay = [dayCopy BOOLValue];
    }

    else
    {
      v24->_hasIsAllDay = 0;
      v24->_isAllDay = 0;
    }

    if (dateTimestampCopy)
    {
      v24->_hasRaw_completionDateTimestamp = 1;
      [dateTimestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v24->_hasRaw_completionDateTimestamp = 0;
      v26 = -1.0;
    }

    v24->_raw_completionDateTimestamp = v26;
    if (dueDateTimestampCopy)
    {
      v24->_hasRaw_dueDateTimestamp = 1;
      [dueDateTimestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v24->_hasRaw_dueDateTimestamp = 0;
      v27 = -1.0;
    }

    v24->_raw_dueDateTimestamp = v27;
    if (priorityCopy)
    {
      v24->_hasPriority = 1;
      intValue = [priorityCopy intValue];
    }

    else
    {
      v24->_hasPriority = 0;
      intValue = -1;
    }

    v24->_priority = intValue;
    objc_storeStrong(&v24->_contentProtection, protection);
    objc_storeStrong(&v24->_personaId, id);
  }

  return v24;
}

+ (id)protoFields
{
  v15[11] = *MEMORY[0x1E69E9840];
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueID" number:1 type:13 subMessageClass:0];
  v15[0] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domainID" number:2 type:13 subMessageClass:0];
  v15[1] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:3 type:0 subMessageClass:0];
  v15[2] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"title" number:4 type:13 subMessageClass:0];
  v15[3] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"notes" number:5 type:13 subMessageClass:0];
  v15[4] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isAllDay" number:6 type:12 subMessageClass:0];
  v15[5] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"completionDateTimestamp" number:7 type:0 subMessageClass:0];
  v15[6] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dueDateTimestamp" number:8 type:0 subMessageClass:0];
  v15[7] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"priority" number:9 type:6 subMessageClass:0];
  v15[8] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentProtection" number:10 type:13 subMessageClass:0];
  v15[9] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personaId" number:11 type:13 subMessageClass:0];
  v15[10] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:11];

  return v11;
}

+ (id)columns
{
  v15[11] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uniqueID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"domainID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:1];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"title" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"notes" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isAllDay" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"completionDateTimestamp" dataType:3 requestOnly:0 fieldNumber:7 protoDataType:0 convertedType:1];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dueDateTimestamp" dataType:3 requestOnly:0 fieldNumber:8 protoDataType:0 convertedType:1];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"priority" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:6 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentProtection" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personaId" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
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
  if (version == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMProactiveHarvestingReminders alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[17] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end