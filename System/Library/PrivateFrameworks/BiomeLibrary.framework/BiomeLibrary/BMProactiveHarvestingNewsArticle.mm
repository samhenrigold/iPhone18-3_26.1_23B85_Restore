@interface BMProactiveHarvestingNewsArticle
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMProactiveHarvestingNewsArticle)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMProactiveHarvestingNewsArticle)initWithUniqueID:(id)d domainID:(id)iD absoluteTimestamp:(id)timestamp title:(id)title content:(id)content summary:(id)summary publication:(id)publication contentProtection:(id)self0 personaId:(id)self1;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMProactiveHarvestingNewsArticle

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    uniqueID = [(BMProactiveHarvestingNewsArticle *)self uniqueID];
    uniqueID2 = [v5 uniqueID];
    v8 = uniqueID2;
    if (uniqueID == uniqueID2)
    {
    }

    else
    {
      uniqueID3 = [(BMProactiveHarvestingNewsArticle *)self uniqueID];
      uniqueID4 = [v5 uniqueID];
      v11 = [uniqueID3 isEqual:uniqueID4];

      if (!v11)
      {
        goto LABEL_33;
      }
    }

    domainID = [(BMProactiveHarvestingNewsArticle *)self domainID];
    domainID2 = [v5 domainID];
    v15 = domainID2;
    if (domainID == domainID2)
    {
    }

    else
    {
      domainID3 = [(BMProactiveHarvestingNewsArticle *)self domainID];
      domainID4 = [v5 domainID];
      v18 = [domainID3 isEqual:domainID4];

      if (!v18)
      {
        goto LABEL_33;
      }
    }

    absoluteTimestamp = [(BMProactiveHarvestingNewsArticle *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v21 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMProactiveHarvestingNewsArticle *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v24 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v24)
      {
        goto LABEL_33;
      }
    }

    title = [(BMProactiveHarvestingNewsArticle *)self title];
    title2 = [v5 title];
    v27 = title2;
    if (title == title2)
    {
    }

    else
    {
      title3 = [(BMProactiveHarvestingNewsArticle *)self title];
      title4 = [v5 title];
      v30 = [title3 isEqual:title4];

      if (!v30)
      {
        goto LABEL_33;
      }
    }

    content = [(BMProactiveHarvestingNewsArticle *)self content];
    content2 = [v5 content];
    v33 = content2;
    if (content == content2)
    {
    }

    else
    {
      content3 = [(BMProactiveHarvestingNewsArticle *)self content];
      content4 = [v5 content];
      v36 = [content3 isEqual:content4];

      if (!v36)
      {
        goto LABEL_33;
      }
    }

    summary = [(BMProactiveHarvestingNewsArticle *)self summary];
    summary2 = [v5 summary];
    v39 = summary2;
    if (summary == summary2)
    {
    }

    else
    {
      summary3 = [(BMProactiveHarvestingNewsArticle *)self summary];
      summary4 = [v5 summary];
      v42 = [summary3 isEqual:summary4];

      if (!v42)
      {
        goto LABEL_33;
      }
    }

    publication = [(BMProactiveHarvestingNewsArticle *)self publication];
    publication2 = [v5 publication];
    v45 = publication2;
    if (publication == publication2)
    {
    }

    else
    {
      publication3 = [(BMProactiveHarvestingNewsArticle *)self publication];
      publication4 = [v5 publication];
      v48 = [publication3 isEqual:publication4];

      if (!v48)
      {
        goto LABEL_33;
      }
    }

    contentProtection = [(BMProactiveHarvestingNewsArticle *)self contentProtection];
    contentProtection2 = [v5 contentProtection];
    v51 = contentProtection2;
    if (contentProtection == contentProtection2)
    {
    }

    else
    {
      contentProtection3 = [(BMProactiveHarvestingNewsArticle *)self contentProtection];
      contentProtection4 = [v5 contentProtection];
      v54 = [contentProtection3 isEqual:contentProtection4];

      if (!v54)
      {
LABEL_33:
        v12 = 0;
LABEL_34:

        goto LABEL_35;
      }
    }

    personaId = [(BMProactiveHarvestingNewsArticle *)self personaId];
    personaId2 = [v5 personaId];
    if (personaId == personaId2)
    {
      v12 = 1;
    }

    else
    {
      personaId3 = [(BMProactiveHarvestingNewsArticle *)self personaId];
      personaId4 = [v5 personaId];
      v12 = [personaId3 isEqual:personaId4];
    }

    goto LABEL_34;
  }

  v12 = 0;
LABEL_35:

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
  v34[9] = *MEMORY[0x1E69E9840];
  uniqueID = [(BMProactiveHarvestingNewsArticle *)self uniqueID];
  domainID = [(BMProactiveHarvestingNewsArticle *)self domainID];
  absoluteTimestamp = [(BMProactiveHarvestingNewsArticle *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v6 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMProactiveHarvestingNewsArticle *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  title = [(BMProactiveHarvestingNewsArticle *)self title];
  content = [(BMProactiveHarvestingNewsArticle *)self content];
  summary = [(BMProactiveHarvestingNewsArticle *)self summary];
  publication = [(BMProactiveHarvestingNewsArticle *)self publication];
  contentProtection = [(BMProactiveHarvestingNewsArticle *)self contentProtection];
  personaId = [(BMProactiveHarvestingNewsArticle *)self personaId];
  v33[0] = @"uniqueID";
  null = uniqueID;
  if (!uniqueID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null;
  v34[0] = null;
  v33[1] = @"domainID";
  null2 = domainID;
  if (!domainID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null2;
  v34[1] = null2;
  v33[2] = @"absoluteTimestamp";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = uniqueID;
  v25 = null3;
  v34[2] = null3;
  v33[3] = @"title";
  null4 = title;
  if (!title)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = domainID;
  v24 = null4;
  v34[3] = null4;
  v33[4] = @"content";
  null5 = content;
  if (!content)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v8;
  v34[4] = null5;
  v33[5] = @"summary";
  null6 = summary;
  if (!summary)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v34[5] = null6;
  v33[6] = @"publication";
  null7 = publication;
  if (!publication)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v34[6] = null7;
  v33[7] = @"contentProtection";
  null8 = contentProtection;
  if (!contentProtection)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v34[7] = null8;
  v33[8] = @"personaId";
  null9 = personaId;
  if (!personaId)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v34[8] = null9;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:9];
  if (personaId)
  {
    if (contentProtection)
    {
      goto LABEL_24;
    }

LABEL_38:

    if (publication)
    {
      goto LABEL_25;
    }

    goto LABEL_39;
  }

  if (!contentProtection)
  {
    goto LABEL_38;
  }

LABEL_24:
  if (publication)
  {
    goto LABEL_25;
  }

LABEL_39:

LABEL_25:
  if (!summary)
  {
  }

  if (!content)
  {
  }

  if (!title)
  {
  }

  if (v29)
  {
    if (v30)
    {
      goto LABEL_33;
    }

LABEL_41:

    if (v31)
    {
      goto LABEL_34;
    }

    goto LABEL_42;
  }

  if (!v30)
  {
    goto LABEL_41;
  }

LABEL_33:
  if (v31)
  {
    goto LABEL_34;
  }

LABEL_42:

LABEL_34:

  return v28;
}

- (BMProactiveHarvestingNewsArticle)initWithJSONDictionary:(id)dictionary error:(id *)error
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

    v35 = [dictionaryCopy objectForKeyedSubscript:@"summary"];
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
        v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"summary"];
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

    v36 = [dictionaryCopy objectForKeyedSubscript:@"publication"];
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
        v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"publication"];
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

    v24 = [(BMProactiveHarvestingNewsArticle *)selfCopy3 initWithUniqueID:v71 domainID:v79 absoluteTimestamp:v80 title:v75 content:v78 summary:v74 publication:v69 contentProtection:v39 personaId:v41];
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
  [(BMProactiveHarvestingNewsArticle *)self writeTo:v3];
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

  if (self->_summary)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_publication)
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
  v25.receiver = self;
  v25.super_class = BMProactiveHarvestingNewsArticle;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_50;
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
        LOBYTE(v26) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v26) & 0x7F) << v7;
        if ((LOBYTE(v26) & 0x80) == 0)
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
      if ((v14 >> 3) <= 4)
      {
        if (v15 > 2)
        {
          if (v15 == 3)
          {
            v5->_hasRaw_absoluteTimestamp = 1;
            v26 = 0.0;
            v18 = [fromCopy position] + 8;
            if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 8, v19 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v5->_raw_absoluteTimestamp = v26;
            goto LABEL_42;
          }

          if (v15 == 4)
          {
            v16 = PBReaderReadString();
            v17 = 56;
            goto LABEL_41;
          }
        }

        else
        {
          if (v15 == 1)
          {
            v16 = PBReaderReadString();
            v17 = 40;
            goto LABEL_41;
          }

          if (v15 == 2)
          {
            v16 = PBReaderReadString();
            v17 = 48;
            goto LABEL_41;
          }
        }
      }

      else if (v15 <= 6)
      {
        if (v15 == 5)
        {
          v16 = PBReaderReadString();
          v17 = 64;
          goto LABEL_41;
        }

        if (v15 == 6)
        {
          v16 = PBReaderReadString();
          v17 = 72;
          goto LABEL_41;
        }
      }

      else
      {
        switch(v15)
        {
          case 7:
            v16 = PBReaderReadString();
            v17 = 80;
            goto LABEL_41;
          case 8:
            v16 = PBReaderReadString();
            v17 = 88;
            goto LABEL_41;
          case 9:
            v16 = PBReaderReadString();
            v17 = 96;
LABEL_41:
            v20 = *(&v5->super.super.isa + v17);
            *(&v5->super.super.isa + v17) = v16;

            goto LABEL_42;
        }
      }

      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_49;
      }

LABEL_42:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_49:
    v23 = 0;
  }

  else
  {
LABEL_50:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  uniqueID = [(BMProactiveHarvestingNewsArticle *)self uniqueID];
  domainID = [(BMProactiveHarvestingNewsArticle *)self domainID];
  absoluteTimestamp = [(BMProactiveHarvestingNewsArticle *)self absoluteTimestamp];
  title = [(BMProactiveHarvestingNewsArticle *)self title];
  content = [(BMProactiveHarvestingNewsArticle *)self content];
  summary = [(BMProactiveHarvestingNewsArticle *)self summary];
  publication = [(BMProactiveHarvestingNewsArticle *)self publication];
  contentProtection = [(BMProactiveHarvestingNewsArticle *)self contentProtection];
  personaId = [(BMProactiveHarvestingNewsArticle *)self personaId];
  v13 = [v3 initWithFormat:@"BMProactiveHarvestingNewsArticle with uniqueID: %@, domainID: %@, absoluteTimestamp: %@, title: %@, content: %@, summary: %@, publication: %@, contentProtection: %@, personaId: %@", uniqueID, domainID, absoluteTimestamp, title, content, summary, publication, contentProtection, personaId];

  return v13;
}

- (BMProactiveHarvestingNewsArticle)initWithUniqueID:(id)d domainID:(id)iD absoluteTimestamp:(id)timestamp title:(id)title content:(id)content summary:(id)summary publication:(id)publication contentProtection:(id)self0 personaId:(id)self1
{
  dCopy = d;
  iDCopy = iD;
  timestampCopy = timestamp;
  titleCopy = title;
  contentCopy = content;
  obj = summary;
  summaryCopy = summary;
  publicationCopy = publication;
  protectionCopy = protection;
  idCopy = id;
  v31.receiver = self;
  v31.super_class = BMProactiveHarvestingNewsArticle;
  v21 = [(BMEventBase *)&v31 init];
  if (v21)
  {
    v21->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v21->_uniqueID, d);
    objc_storeStrong(&v21->_domainID, iD);
    if (timestampCopy)
    {
      v21->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v21->_hasRaw_absoluteTimestamp = 0;
      v22 = -1.0;
    }

    v21->_raw_absoluteTimestamp = v22;
    objc_storeStrong(&v21->_title, title);
    objc_storeStrong(&v21->_content, content);
    objc_storeStrong(&v21->_summary, obj);
    objc_storeStrong(&v21->_publication, publication);
    objc_storeStrong(&v21->_contentProtection, protection);
    objc_storeStrong(&v21->_personaId, id);
  }

  return v21;
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
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"summary" number:6 type:13 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"publication" number:7 type:13 subMessageClass:0];
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
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"summary" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"publication" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
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

    v7 = [[BMProactiveHarvestingNewsArticle alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[8] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end