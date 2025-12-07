@interface BMProactiveHarvestingPageView
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMProactiveHarvestingPageView)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMProactiveHarvestingPageView)initWithUniqueID:(id)d domainID:(id)iD absoluteTimestamp:(id)timestamp title:(id)title content:(id)content contentIsReaderText:(id)text url:(id)url contentProtection:(id)self0 personaId:(id)self1;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMProactiveHarvestingPageView

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    uniqueID = [(BMProactiveHarvestingPageView *)self uniqueID];
    uniqueID2 = [v5 uniqueID];
    v8 = uniqueID2;
    if (uniqueID == uniqueID2)
    {
    }

    else
    {
      uniqueID3 = [(BMProactiveHarvestingPageView *)self uniqueID];
      uniqueID4 = [v5 uniqueID];
      v11 = [uniqueID3 isEqual:uniqueID4];

      if (!v11)
      {
        goto LABEL_34;
      }
    }

    domainID = [(BMProactiveHarvestingPageView *)self domainID];
    domainID2 = [v5 domainID];
    v15 = domainID2;
    if (domainID == domainID2)
    {
    }

    else
    {
      domainID3 = [(BMProactiveHarvestingPageView *)self domainID];
      domainID4 = [v5 domainID];
      v18 = [domainID3 isEqual:domainID4];

      if (!v18)
      {
        goto LABEL_34;
      }
    }

    absoluteTimestamp = [(BMProactiveHarvestingPageView *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v21 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMProactiveHarvestingPageView *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v24 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v24)
      {
        goto LABEL_34;
      }
    }

    title = [(BMProactiveHarvestingPageView *)self title];
    title2 = [v5 title];
    v27 = title2;
    if (title == title2)
    {
    }

    else
    {
      title3 = [(BMProactiveHarvestingPageView *)self title];
      title4 = [v5 title];
      v30 = [title3 isEqual:title4];

      if (!v30)
      {
        goto LABEL_34;
      }
    }

    content = [(BMProactiveHarvestingPageView *)self content];
    content2 = [v5 content];
    v33 = content2;
    if (content == content2)
    {
    }

    else
    {
      content3 = [(BMProactiveHarvestingPageView *)self content];
      content4 = [v5 content];
      v36 = [content3 isEqual:content4];

      if (!v36)
      {
        goto LABEL_34;
      }
    }

    if (-[BMProactiveHarvestingPageView hasContentIsReaderText](self, "hasContentIsReaderText") || [v5 hasContentIsReaderText])
    {
      if (![(BMProactiveHarvestingPageView *)self hasContentIsReaderText])
      {
        goto LABEL_34;
      }

      if (![v5 hasContentIsReaderText])
      {
        goto LABEL_34;
      }

      contentIsReaderText = [(BMProactiveHarvestingPageView *)self contentIsReaderText];
      if (contentIsReaderText != [v5 contentIsReaderText])
      {
        goto LABEL_34;
      }
    }

    v38 = [(BMProactiveHarvestingPageView *)self url];
    v39 = [v5 url];
    v40 = v39;
    if (v38 == v39)
    {
    }

    else
    {
      v41 = [(BMProactiveHarvestingPageView *)self url];
      v42 = [v5 url];
      v43 = [v41 isEqual:v42];

      if (!v43)
      {
        goto LABEL_34;
      }
    }

    contentProtection = [(BMProactiveHarvestingPageView *)self contentProtection];
    contentProtection2 = [v5 contentProtection];
    v46 = contentProtection2;
    if (contentProtection == contentProtection2)
    {
    }

    else
    {
      contentProtection3 = [(BMProactiveHarvestingPageView *)self contentProtection];
      contentProtection4 = [v5 contentProtection];
      v49 = [contentProtection3 isEqual:contentProtection4];

      if (!v49)
      {
LABEL_34:
        v12 = 0;
LABEL_35:

        goto LABEL_36;
      }
    }

    personaId = [(BMProactiveHarvestingPageView *)self personaId];
    personaId2 = [v5 personaId];
    if (personaId == personaId2)
    {
      v12 = 1;
    }

    else
    {
      personaId3 = [(BMProactiveHarvestingPageView *)self personaId];
      personaId4 = [v5 personaId];
      v12 = [personaId3 isEqual:personaId4];
    }

    goto LABEL_35;
  }

  v12 = 0;
LABEL_36:

  return v12;
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
  v36[9] = *MEMORY[0x1E69E9840];
  uniqueID = [(BMProactiveHarvestingPageView *)self uniqueID];
  domainID = [(BMProactiveHarvestingPageView *)self domainID];
  absoluteTimestamp = [(BMProactiveHarvestingPageView *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v6 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMProactiveHarvestingPageView *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  title = [(BMProactiveHarvestingPageView *)self title];
  content = [(BMProactiveHarvestingPageView *)self content];
  if ([(BMProactiveHarvestingPageView *)self hasContentIsReaderText])
  {
    v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingPageView contentIsReaderText](self, "contentIsReaderText")}];
  }

  else
  {
    v34 = 0;
  }

  v11 = [(BMProactiveHarvestingPageView *)self url];
  contentProtection = [(BMProactiveHarvestingPageView *)self contentProtection];
  personaId = [(BMProactiveHarvestingPageView *)self personaId];
  v35[0] = @"uniqueID";
  null = uniqueID;
  if (!uniqueID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v29 = null;
  v36[0] = null;
  v35[1] = @"domainID";
  null2 = domainID;
  if (!domainID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null2;
  v36[1] = null2;
  v35[2] = @"absoluteTimestamp";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null3;
  v36[2] = null3;
  v35[3] = @"title";
  null4 = title;
  if (!title)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = uniqueID;
  v26 = null4;
  v36[3] = null4;
  v35[4] = @"content";
  null5 = content;
  if (!content)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = domainID;
  v36[4] = null5;
  v35[5] = @"contentIsReaderText";
  null6 = v34;
  if (!v34)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = content;
  v20 = v8;
  v36[5] = null6;
  v35[6] = @"url";
  null7 = v11;
  if (!v11)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = title;
  v36[6] = null7;
  v35[7] = @"contentProtection";
  null8 = contentProtection;
  if (!contentProtection)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v36[7] = null8;
  v35[8] = @"personaId";
  null9 = personaId;
  if (!personaId)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v36[8] = null9;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:9];
  if (personaId)
  {
    if (contentProtection)
    {
      goto LABEL_27;
    }

LABEL_40:

    if (v11)
    {
      goto LABEL_28;
    }

    goto LABEL_41;
  }

  if (!contentProtection)
  {
    goto LABEL_40;
  }

LABEL_27:
  if (v11)
  {
    goto LABEL_28;
  }

LABEL_41:

LABEL_28:
  if (!v34)
  {
  }

  if (!v31)
  {
  }

  if (v22)
  {
    if (v20)
    {
      goto LABEL_34;
    }
  }

  else
  {

    if (v20)
    {
LABEL_34:
      if (v32)
      {
        goto LABEL_35;
      }

LABEL_44:

      if (v33)
      {
        goto LABEL_36;
      }

      goto LABEL_45;
    }
  }

  if (!v32)
  {
    goto LABEL_44;
  }

LABEL_35:
  if (v33)
  {
    goto LABEL_36;
  }

LABEL_45:

LABEL_36:

  return v30;
}

- (BMProactiveHarvestingPageView)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v99[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"uniqueID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"domainID"];
    errorCopy = error;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          v24 = 0;
          goto LABEL_50;
        }

        errorCopy2 = error;
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v96 = *MEMORY[0x1E696A578];
        v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domainID"];
        v97 = v80;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
        v29 = v26;
        v11 = v28;
        v30 = [v29 initWithDomain:v27 code:2 userInfo:v28];
        v10 = 0;
        v24 = 0;
        *errorCopy2 = v30;
        goto LABEL_49;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
    v79 = v10;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = MEMORY[0x1E695DF00];
        v13 = v11;
        v14 = v11;
        v15 = [v12 alloc];
        [v14 doubleValue];
        v17 = v16;

        v11 = v13;
        v18 = [v15 initWithTimeIntervalSinceReferenceDate:v17];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v80 = [v31 dateFromString:v11];

          goto LABEL_23;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v80 = 0;
            v24 = 0;
            goto LABEL_49;
          }

          v81 = objc_alloc(MEMORY[0x1E696ABC0]);
          v61 = *MEMORY[0x1E698F240];
          v94 = *MEMORY[0x1E696A578];
          v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
          v95 = v42;
          v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
          v63 = v61;
          v10 = v79;
          v77 = v62;
          v64 = [v81 initWithDomain:v63 code:2 userInfo:?];
          v80 = 0;
          v24 = 0;
          *errorCopy = v64;
LABEL_48:

LABEL_49:
          goto LABEL_50;
        }

        v18 = v11;
      }

      v80 = v18;
    }

    else
    {
      v80 = 0;
    }

LABEL_23:
    v32 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    v72 = v11;
    v73 = v9;
    v77 = v32;
    if (v32 && (v33 = v32, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v42 = 0;
          v24 = 0;
          goto LABEL_48;
        }

        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v45 = *MEMORY[0x1E698F240];
        v92 = *MEMORY[0x1E696A578];
        v78 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"title"];
        v93 = v78;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
        v46 = v44;
        v11 = v72;
        v47 = v45;
        v10 = v79;
        v42 = 0;
        v24 = 0;
        *errorCopy = [v46 initWithDomain:v47 code:2 userInfo:v34];
        goto LABEL_47;
      }

      v75 = v33;
    }

    else
    {
      v75 = 0;
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"content"];
    if (v34 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v78 = 0;
          v24 = 0;
          goto LABEL_46;
        }

        v48 = objc_alloc(MEMORY[0x1E696ABC0]);
        v49 = *MEMORY[0x1E698F240];
        v90 = *MEMORY[0x1E696A578];
        v74 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"content"];
        v91 = v74;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
        v50 = v48;
        v11 = v72;
        v51 = v49;
        v10 = v79;
        v78 = 0;
        v24 = 0;
        *errorCopy = [v50 initWithDomain:v51 code:2 userInfo:v35];
LABEL_45:

LABEL_46:
        v42 = v75;
LABEL_47:

        v9 = v73;
        goto LABEL_48;
      }

      v78 = v34;
    }

    else
    {
      v78 = 0;
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"contentIsReaderText"];
    v71 = v8;
    if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v74 = 0;
          v24 = 0;
          goto LABEL_45;
        }

        v52 = objc_alloc(MEMORY[0x1E696ABC0]);
        v53 = *MEMORY[0x1E698F240];
        v88 = *MEMORY[0x1E696A578];
        v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"contentIsReaderText"];
        v89 = v69;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
        v54 = [v52 initWithDomain:v53 code:2 userInfo:v36];
        v74 = 0;
        v24 = 0;
        *errorCopy = v54;
        goto LABEL_44;
      }

      v74 = v35;
    }

    else
    {
      v74 = 0;
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"url"];
    v68 = v7;
    if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v69 = 0;
          v24 = 0;
          goto LABEL_44;
        }

        selfCopy3 = self;
        v70 = objc_alloc(MEMORY[0x1E696ABC0]);
        v55 = *MEMORY[0x1E698F240];
        v86 = *MEMORY[0x1E696A578];
        v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"url"];
        v87 = v39;
        v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
        v56 = [v70 initWithDomain:v55 code:2 userInfo:v37];
        v69 = 0;
        v24 = 0;
        *errorCopy = v56;
LABEL_43:

        self = selfCopy3;
        v7 = v68;
LABEL_44:
        v11 = v72;

        v8 = v71;
        v10 = v79;
        goto LABEL_45;
      }

      v69 = v36;
    }

    else
    {
      v69 = 0;
    }

    v37 = [dictionaryCopy objectForKeyedSubscript:@"contentProtection"];
    if (v37 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      selfCopy3 = self;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v39 = 0;
          v24 = 0;
          goto LABEL_43;
        }

        v66 = objc_alloc(MEMORY[0x1E696ABC0]);
        v57 = *MEMORY[0x1E698F240];
        v84 = *MEMORY[0x1E696A578];
        v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentProtection"];
        v85 = v41;
        v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        v58 = [v66 initWithDomain:v57 code:2 userInfo:v40];
        v39 = 0;
        v24 = 0;
        *errorCopy = v58;
        goto LABEL_42;
      }

      v39 = v37;
    }

    else
    {
      selfCopy3 = self;
      v39 = 0;
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"personaId"];
    if (v40 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy)
        {
          v67 = objc_alloc(MEMORY[0x1E696ABC0]);
          v65 = *MEMORY[0x1E698F240];
          v82 = *MEMORY[0x1E696A578];
          v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"personaId"];
          v83 = v59;
          v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
          *errorCopy = [v67 initWithDomain:v65 code:2 userInfo:v60];
        }

        v41 = 0;
        v24 = 0;
        goto LABEL_42;
      }

      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    v24 = [(BMProactiveHarvestingPageView *)selfCopy3 initWithUniqueID:v71 domainID:v79 absoluteTimestamp:v80 title:v75 content:v78 contentIsReaderText:v74 url:v69 contentProtection:v39 personaId:v41];
    selfCopy3 = v24;
LABEL_42:

    goto LABEL_43;
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
    v24 = 0;
    goto LABEL_51;
  }

  errorCopy3 = error;
  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = *MEMORY[0x1E698F240];
  v98 = *MEMORY[0x1E696A578];
  v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"uniqueID"];
  v99[0] = v22;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v99 forKeys:&v98 count:1];
  v23 = v21;
  v10 = v22;
  v8 = 0;
  v24 = 0;
  *errorCopy3 = [v20 initWithDomain:v23 code:2 userInfo:v9];
LABEL_50:

LABEL_51:
  return v24;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProactiveHarvestingPageView *)self writeTo:v3];
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

  if (self->_content)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_hasContentIsReaderText)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_url)
  {
    PBDataWriterWriteStringField();
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
  v32.receiver = self;
  v32.super_class = BMProactiveHarvestingPageView;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_60;
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
        LOBYTE(v33) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v33) & 0x7F) << v7;
        if ((LOBYTE(v33) & 0x80) == 0)
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
      if ((v14 >> 3) <= 4)
      {
        if (v15 > 2)
        {
          if (v15 == 3)
          {
            v5->_hasRaw_absoluteTimestamp = 1;
            v33 = 0.0;
            v25 = [fromCopy position] + 8;
            if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 8, v26 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v5->_raw_absoluteTimestamp = v33;
            goto LABEL_50;
          }

          if (v15 == 4)
          {
            v16 = PBReaderReadString();
            v17 = 56;
            goto LABEL_49;
          }
        }

        else
        {
          if (v15 == 1)
          {
            v16 = PBReaderReadString();
            v17 = 40;
            goto LABEL_49;
          }

          if (v15 == 2)
          {
            v16 = PBReaderReadString();
            v17 = 48;
            goto LABEL_49;
          }
        }
      }

      else if (v15 <= 6)
      {
        if (v15 == 5)
        {
          v16 = PBReaderReadString();
          v17 = 64;
          goto LABEL_49;
        }

        if (v15 == 6)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v5->_hasContentIsReaderText = 1;
          while (1)
          {
            LOBYTE(v33) = 0;
            v21 = [fromCopy position] + 1;
            if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v20 |= (LOBYTE(v33) & 0x7F) << v18;
            if ((LOBYTE(v33) & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v13 = v19++ >= 9;
            if (v13)
            {
              LOBYTE(v24) = 0;
              goto LABEL_55;
            }
          }

          v24 = (v20 != 0) & ~[fromCopy hasError];
LABEL_55:
          v5->_contentIsReaderText = v24;
          goto LABEL_50;
        }
      }

      else
      {
        switch(v15)
        {
          case 7:
            v16 = PBReaderReadString();
            v17 = 72;
            goto LABEL_49;
          case 8:
            v16 = PBReaderReadString();
            v17 = 80;
            goto LABEL_49;
          case 9:
            v16 = PBReaderReadString();
            v17 = 88;
LABEL_49:
            v27 = *(&v5->super.super.isa + v17);
            *(&v5->super.super.isa + v17) = v16;

            goto LABEL_50;
        }
      }

      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_59;
      }

LABEL_50:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_59:
    v30 = 0;
  }

  else
  {
LABEL_60:
    v30 = v5;
  }

  return v30;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  uniqueID = [(BMProactiveHarvestingPageView *)self uniqueID];
  domainID = [(BMProactiveHarvestingPageView *)self domainID];
  absoluteTimestamp = [(BMProactiveHarvestingPageView *)self absoluteTimestamp];
  title = [(BMProactiveHarvestingPageView *)self title];
  content = [(BMProactiveHarvestingPageView *)self content];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingPageView contentIsReaderText](self, "contentIsReaderText")}];
  v10 = [(BMProactiveHarvestingPageView *)self url];
  contentProtection = [(BMProactiveHarvestingPageView *)self contentProtection];
  personaId = [(BMProactiveHarvestingPageView *)self personaId];
  v13 = [v3 initWithFormat:@"BMProactiveHarvestingPageView with uniqueID: %@, domainID: %@, absoluteTimestamp: %@, title: %@, content: %@, contentIsReaderText: %@, url: %@, contentProtection: %@, personaId: %@", uniqueID, domainID, absoluteTimestamp, title, content, v9, v10, contentProtection, personaId];

  return v13;
}

- (BMProactiveHarvestingPageView)initWithUniqueID:(id)d domainID:(id)iD absoluteTimestamp:(id)timestamp title:(id)title content:(id)content contentIsReaderText:(id)text url:(id)url contentProtection:(id)self0 personaId:(id)self1
{
  dCopy = d;
  iDCopy = iD;
  timestampCopy = timestamp;
  titleCopy = title;
  contentCopy = content;
  textCopy = text;
  urlCopy = url;
  protectionCopy = protection;
  idCopy = id;
  v30.receiver = self;
  v30.super_class = BMProactiveHarvestingPageView;
  v20 = [(BMEventBase *)&v30 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v20->_uniqueID, d);
    objc_storeStrong(&v20->_domainID, iD);
    if (timestampCopy)
    {
      v20->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v20->_hasRaw_absoluteTimestamp = 0;
      v21 = -1.0;
    }

    v20->_raw_absoluteTimestamp = v21;
    objc_storeStrong(&v20->_title, title);
    objc_storeStrong(&v20->_content, content);
    if (textCopy)
    {
      v20->_hasContentIsReaderText = 1;
      v20->_contentIsReaderText = [textCopy BOOLValue];
    }

    else
    {
      v20->_hasContentIsReaderText = 0;
      v20->_contentIsReaderText = 0;
    }

    objc_storeStrong(&v20->_url, url);
    objc_storeStrong(&v20->_contentProtection, protection);
    objc_storeStrong(&v20->_personaId, id);
  }

  return v20;
}

+ (id)protoFields
{
  v13[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueID" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domainID" number:2 type:13 subMessageClass:{0, v2}];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:3 type:0 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"title" number:4 type:13 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"content" number:5 type:13 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentIsReaderText" number:6 type:12 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"url" number:7 type:13 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentProtection" number:8 type:13 subMessageClass:0];
  v13[7] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personaId" number:9 type:13 subMessageClass:0];
  v13[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:9];

  return v11;
}

+ (id)columns
{
  v13[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uniqueID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"domainID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:1];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"title" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"content" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentIsReaderText" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"url" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentProtection" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personaId" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v13[0] = v2;
  v13[1] = v3;
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = v6;
  v13[5] = v7;
  v13[6] = v8;
  v13[7] = v9;
  v13[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:9];

  return v11;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMProactiveHarvestingPageView alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[9] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end