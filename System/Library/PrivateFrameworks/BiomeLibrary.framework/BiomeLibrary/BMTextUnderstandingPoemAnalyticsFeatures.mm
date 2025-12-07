@interface BMTextUnderstandingPoemAnalyticsFeatures
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMTextUnderstandingPoemAnalyticsFeatures)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMTextUnderstandingPoemAnalyticsFeatures)initWithNumOfFacesInMessages:(id)messages numOfFacesOnDevice:(id)device numOfNamedFacesOnDevice:(id)onDevice numOfConversationThreads:(id)threads numOfNamedEntityMentions:(id)mentions numOfSenderMentions:(id)senderMentions numOfReceiverMentions:(id)receiverMentions numOfPronounMentions:(id)self0 numOfImagesShared:(id)self1 numOfLinguisticMentions:(id)self2;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMTextUnderstandingPoemAnalyticsFeatures

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMTextUnderstandingPoemAnalyticsFeatures hasNumOfFacesInMessages](self, "hasNumOfFacesInMessages") || [v5 hasNumOfFacesInMessages])
    {
      if (![(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfFacesInMessages])
      {
        goto LABEL_53;
      }

      if (![v5 hasNumOfFacesInMessages])
      {
        goto LABEL_53;
      }

      numOfFacesInMessages = [(BMTextUnderstandingPoemAnalyticsFeatures *)self numOfFacesInMessages];
      if (numOfFacesInMessages != [v5 numOfFacesInMessages])
      {
        goto LABEL_53;
      }
    }

    if (-[BMTextUnderstandingPoemAnalyticsFeatures hasNumOfFacesOnDevice](self, "hasNumOfFacesOnDevice") || [v5 hasNumOfFacesOnDevice])
    {
      if (![(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfFacesOnDevice])
      {
        goto LABEL_53;
      }

      if (![v5 hasNumOfFacesOnDevice])
      {
        goto LABEL_53;
      }

      numOfFacesOnDevice = [(BMTextUnderstandingPoemAnalyticsFeatures *)self numOfFacesOnDevice];
      if (numOfFacesOnDevice != [v5 numOfFacesOnDevice])
      {
        goto LABEL_53;
      }
    }

    if (-[BMTextUnderstandingPoemAnalyticsFeatures hasNumOfNamedFacesOnDevice](self, "hasNumOfNamedFacesOnDevice") || [v5 hasNumOfNamedFacesOnDevice])
    {
      if (![(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfNamedFacesOnDevice])
      {
        goto LABEL_53;
      }

      if (![v5 hasNumOfNamedFacesOnDevice])
      {
        goto LABEL_53;
      }

      numOfNamedFacesOnDevice = [(BMTextUnderstandingPoemAnalyticsFeatures *)self numOfNamedFacesOnDevice];
      if (numOfNamedFacesOnDevice != [v5 numOfNamedFacesOnDevice])
      {
        goto LABEL_53;
      }
    }

    if (-[BMTextUnderstandingPoemAnalyticsFeatures hasNumOfConversationThreads](self, "hasNumOfConversationThreads") || [v5 hasNumOfConversationThreads])
    {
      if (![(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfConversationThreads])
      {
        goto LABEL_53;
      }

      if (![v5 hasNumOfConversationThreads])
      {
        goto LABEL_53;
      }

      numOfConversationThreads = [(BMTextUnderstandingPoemAnalyticsFeatures *)self numOfConversationThreads];
      if (numOfConversationThreads != [v5 numOfConversationThreads])
      {
        goto LABEL_53;
      }
    }

    if (-[BMTextUnderstandingPoemAnalyticsFeatures hasNumOfNamedEntityMentions](self, "hasNumOfNamedEntityMentions") || [v5 hasNumOfNamedEntityMentions])
    {
      if (![(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfNamedEntityMentions])
      {
        goto LABEL_53;
      }

      if (![v5 hasNumOfNamedEntityMentions])
      {
        goto LABEL_53;
      }

      numOfNamedEntityMentions = [(BMTextUnderstandingPoemAnalyticsFeatures *)self numOfNamedEntityMentions];
      if (numOfNamedEntityMentions != [v5 numOfNamedEntityMentions])
      {
        goto LABEL_53;
      }
    }

    if (-[BMTextUnderstandingPoemAnalyticsFeatures hasNumOfSenderMentions](self, "hasNumOfSenderMentions") || [v5 hasNumOfSenderMentions])
    {
      if (![(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfSenderMentions])
      {
        goto LABEL_53;
      }

      if (![v5 hasNumOfSenderMentions])
      {
        goto LABEL_53;
      }

      numOfSenderMentions = [(BMTextUnderstandingPoemAnalyticsFeatures *)self numOfSenderMentions];
      if (numOfSenderMentions != [v5 numOfSenderMentions])
      {
        goto LABEL_53;
      }
    }

    if (-[BMTextUnderstandingPoemAnalyticsFeatures hasNumOfReceiverMentions](self, "hasNumOfReceiverMentions") || [v5 hasNumOfReceiverMentions])
    {
      if (![(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfReceiverMentions])
      {
        goto LABEL_53;
      }

      if (![v5 hasNumOfReceiverMentions])
      {
        goto LABEL_53;
      }

      numOfReceiverMentions = [(BMTextUnderstandingPoemAnalyticsFeatures *)self numOfReceiverMentions];
      if (numOfReceiverMentions != [v5 numOfReceiverMentions])
      {
        goto LABEL_53;
      }
    }

    if (-[BMTextUnderstandingPoemAnalyticsFeatures hasNumOfPronounMentions](self, "hasNumOfPronounMentions") || [v5 hasNumOfPronounMentions])
    {
      if (![(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfPronounMentions])
      {
        goto LABEL_53;
      }

      if (![v5 hasNumOfPronounMentions])
      {
        goto LABEL_53;
      }

      numOfPronounMentions = [(BMTextUnderstandingPoemAnalyticsFeatures *)self numOfPronounMentions];
      if (numOfPronounMentions != [v5 numOfPronounMentions])
      {
        goto LABEL_53;
      }
    }

    if (-[BMTextUnderstandingPoemAnalyticsFeatures hasNumOfImagesShared](self, "hasNumOfImagesShared") || [v5 hasNumOfImagesShared])
    {
      if (![(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfImagesShared])
      {
        goto LABEL_53;
      }

      if (![v5 hasNumOfImagesShared])
      {
        goto LABEL_53;
      }

      numOfImagesShared = [(BMTextUnderstandingPoemAnalyticsFeatures *)self numOfImagesShared];
      if (numOfImagesShared != [v5 numOfImagesShared])
      {
        goto LABEL_53;
      }
    }

    if (!-[BMTextUnderstandingPoemAnalyticsFeatures hasNumOfLinguisticMentions](self, "hasNumOfLinguisticMentions") && ![v5 hasNumOfLinguisticMentions])
    {
      v16 = 1;
      goto LABEL_54;
    }

    if (-[BMTextUnderstandingPoemAnalyticsFeatures hasNumOfLinguisticMentions](self, "hasNumOfLinguisticMentions") && [v5 hasNumOfLinguisticMentions])
    {
      numOfLinguisticMentions = [(BMTextUnderstandingPoemAnalyticsFeatures *)self numOfLinguisticMentions];
      v16 = numOfLinguisticMentions == [v5 numOfLinguisticMentions];
    }

    else
    {
LABEL_53:
      v16 = 0;
    }

LABEL_54:

    goto LABEL_55;
  }

  v16 = 0;
LABEL_55:

  return v16;
}

- (id)jsonDictionary
{
  v36[10] = *MEMORY[0x1E69E9840];
  if ([(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfFacesInMessages])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfFacesInMessages](self, "numOfFacesInMessages")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfFacesOnDevice])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfFacesOnDevice](self, "numOfFacesOnDevice")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfNamedFacesOnDevice])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfNamedFacesOnDevice](self, "numOfNamedFacesOnDevice")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfConversationThreads])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfConversationThreads](self, "numOfConversationThreads")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfNamedEntityMentions])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfNamedEntityMentions](self, "numOfNamedEntityMentions")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfSenderMentions])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfSenderMentions](self, "numOfSenderMentions")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfReceiverMentions])
  {
    v34 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfReceiverMentions](self, "numOfReceiverMentions")}];
  }

  else
  {
    v34 = 0;
  }

  if ([(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfPronounMentions])
  {
    v33 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfPronounMentions](self, "numOfPronounMentions")}];
  }

  else
  {
    v33 = 0;
  }

  if ([(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfImagesShared])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfImagesShared](self, "numOfImagesShared")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMTextUnderstandingPoemAnalyticsFeatures *)self hasNumOfLinguisticMentions])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfLinguisticMentions](self, "numOfLinguisticMentions")}];
  }

  else
  {
    v10 = 0;
  }

  v35[0] = @"numOfFacesInMessages";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null;
  v36[0] = null;
  v35[1] = @"numOfFacesOnDevice";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null2;
  v36[1] = null2;
  v35[2] = @"numOfNamedFacesOnDevice";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v3;
  v25 = null3;
  v36[2] = null3;
  v35[3] = @"numOfConversationThreads";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v4;
  v24 = null4;
  v36[3] = null4;
  v35[4] = @"numOfNamedEntityMentions";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v5;
  v36[4] = null5;
  v35[5] = @"numOfSenderMentions";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v6;
  v36[5] = null6;
  v35[6] = @"numOfReceiverMentions";
  null7 = v34;
  if (!v34)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v7;
  v36[6] = null7;
  v35[7] = @"numOfPronounMentions";
  null8 = v33;
  if (!v33)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v8;
  v36[7] = null8;
  v35[8] = @"numOfImagesShared";
  null9 = v9;
  if (!v9)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v36[8] = null9;
  v35[9] = @"numOfLinguisticMentions";
  null10 = v10;
  if (!v10)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v36[9] = null10;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:10];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_53;
    }
  }

  else
  {

    if (v9)
    {
      goto LABEL_53;
    }
  }

LABEL_53:
  if (!v33)
  {
  }

  if (!v34)
  {
  }

  if (!v20)
  {
  }

  if (!v18)
  {
  }

  if (!v29)
  {
  }

  if (v30)
  {
    if (v31)
    {
      goto LABEL_65;
    }

LABEL_72:

    if (v32)
    {
      goto LABEL_66;
    }

    goto LABEL_73;
  }

  if (!v31)
  {
    goto LABEL_72;
  }

LABEL_65:
  if (v32)
  {
    goto LABEL_66;
  }

LABEL_73:

LABEL_66:

  return v28;
}

- (BMTextUnderstandingPoemAnalyticsFeatures)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v128[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"numOfFacesInMessages"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v106 = 0;
LABEL_4:
    v7 = [dictionaryCopy objectForKeyedSubscript:@"numOfFacesOnDevice"];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v8 = 0;
          v24 = 0;
          v23 = v106;
          goto LABEL_64;
        }

        errorCopy = error;
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v125 = *MEMORY[0x1E696A578];
        v23 = v106;
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numOfFacesOnDevice"];
        v126 = v12;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
        v29 = v27;
        v9 = v28;
        v8 = 0;
        v24 = 0;
        *errorCopy = [v26 initWithDomain:v29 code:2 userInfo:v28];
        goto LABEL_63;
      }

      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"numOfNamedFacesOnDevice"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v12 = 0;
          v24 = 0;
          v23 = v106;
          goto LABEL_63;
        }

        v103 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy2 = error;
        v31 = *MEMORY[0x1E698F240];
        v123 = *MEMORY[0x1E696A578];
        v32 = v8;
        v33 = objc_alloc(MEMORY[0x1E696AEC0]);
        v81 = objc_opt_class();
        v34 = v33;
        v8 = v32;
        v105 = [v34 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v81, @"numOfNamedFacesOnDevice"];
        v124 = v105;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
        v24 = 0;
        *errorCopy2 = [v103 initWithDomain:v31 code:2 userInfo:v35];
        v12 = 0;
        v23 = v106;
LABEL_62:

LABEL_63:
        goto LABEL_64;
      }

      v10 = v6;
      v11 = v7;
      v12 = v9;
    }

    else
    {
      v10 = v6;
      v11 = v7;
      v12 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"numOfConversationThreads"];
    v104 = v8;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v105 = 0;
          v24 = 0;
          v23 = v106;
          v35 = v13;
          v7 = v11;
          v6 = v10;
          goto LABEL_62;
        }

        v97 = v12;
        errorCopy3 = error;
        v43 = objc_alloc(MEMORY[0x1E696ABC0]);
        v44 = v9;
        v45 = *MEMORY[0x1E698F240];
        v121 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numOfConversationThreads"];
        v122 = v14;
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
        v47 = v43;
        v35 = v13;
        v48 = v45;
        v9 = v44;
        v102 = v46;
        v105 = 0;
        v24 = 0;
        *errorCopy3 = [v47 initWithDomain:v48 code:2 userInfo:?];
        v12 = v97;
        v23 = v106;
        v7 = v11;
        v6 = v10;
        goto LABEL_61;
      }

      v95 = v13;
      v105 = v13;
    }

    else
    {
      v95 = v13;
      v105 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"numOfNamedEntityMentions"];
    v7 = v11;
    v102 = v14;
    if (v14)
    {
      objc_opt_class();
      v6 = v10;
      if (objc_opt_isKindOfClass())
      {
        v14 = 0;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v14 = 0;
            v24 = 0;
            v23 = v106;
            v35 = v95;
            goto LABEL_61;
          }

          v98 = v12;
          errorCopy4 = error;
          v50 = objc_alloc(MEMORY[0x1E696ABC0]);
          v51 = v9;
          v52 = *MEMORY[0x1E698F240];
          v119 = *MEMORY[0x1E696A578];
          v101 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numOfNamedEntityMentions"];
          v120 = v101;
          v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
          v54 = v52;
          v9 = v51;
          v15 = v53;
          v14 = 0;
          v24 = 0;
          *errorCopy4 = [v50 initWithDomain:v54 code:2 userInfo:v53];
          v12 = v98;
          goto LABEL_91;
        }

        v14 = v14;
      }
    }

    else
    {
      v6 = v10;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"numOfSenderMentions"];
    errorCopy5 = error;
    if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v86 = v6;
      v16 = v12;
      v101 = 0;
LABEL_30:
      v17 = [dictionaryCopy objectForKeyedSubscript:@"numOfReceiverMentions"];
      v89 = v17;
      if (v17 && (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v94 = 0;
            v24 = 0;
            v35 = v95;
            v12 = v16;
            v6 = v86;
            v41 = v89;
            goto LABEL_59;
          }

          v100 = v16;
          errorCopy6 = error;
          v64 = objc_alloc(MEMORY[0x1E696ABC0]);
          v65 = v15;
          v66 = v9;
          v67 = *MEMORY[0x1E698F240];
          v115 = *MEMORY[0x1E696A578];
          v68 = v14;
          v69 = objc_alloc(MEMORY[0x1E696AEC0]);
          v83 = objc_opt_class();
          v70 = v69;
          v14 = v68;
          v93 = [v70 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v83, @"numOfReceiverMentions"];
          v116 = v93;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
          v71 = v67;
          v9 = v66;
          v15 = v65;
          v94 = 0;
          v24 = 0;
          *errorCopy6 = [v64 initWithDomain:v71 code:2 userInfo:v19];
          v12 = v100;
          v6 = v86;
          goto LABEL_58;
        }

        v94 = v18;
      }

      else
      {
        v94 = 0;
      }

      v19 = [dictionaryCopy objectForKeyedSubscript:@"numOfPronounMentions"];
      v12 = v16;
      v90 = v14;
      v85 = v15;
      if (v19)
      {
        objc_opt_class();
        v6 = v86;
        if (objc_opt_isKindOfClass())
        {
          v93 = 0;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v93 = 0;
              v24 = 0;
              goto LABEL_58;
            }

            v72 = v9;
            v73 = objc_alloc(MEMORY[0x1E696ABC0]);
            v74 = *MEMORY[0x1E698F240];
            v113 = *MEMORY[0x1E696A578];
            v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numOfPronounMentions"];
            v114 = v38;
            v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
            v75 = v73;
            v9 = v72;
            v15 = v85;
            v76 = [v75 initWithDomain:v74 code:2 userInfo:v36];
            v93 = 0;
            v24 = 0;
            *errorCopy5 = v76;
LABEL_57:

            v14 = v90;
LABEL_58:

            v35 = v95;
            v41 = v89;
LABEL_59:

            v23 = v106;
LABEL_60:

LABEL_61:
            v8 = v104;
            goto LABEL_62;
          }

          v93 = v19;
        }
      }

      else
      {
        v93 = 0;
        v6 = v86;
      }

      v36 = [dictionaryCopy objectForKeyedSubscript:@"numOfImagesShared"];
      v84 = v9;
      v96 = v12;
      if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v38 = 0;
            v24 = 0;
            goto LABEL_57;
          }

          selfCopy3 = self;
          v87 = objc_alloc(MEMORY[0x1E696ABC0]);
          v77 = *MEMORY[0x1E698F240];
          v111 = *MEMORY[0x1E696A578];
          v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numOfImagesShared"];
          v112 = v40;
          v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
          v78 = [v87 initWithDomain:v77 code:2 userInfo:v39];
          v38 = 0;
          v24 = 0;
          *errorCopy5 = v78;
          goto LABEL_56;
        }

        selfCopy3 = self;
        v38 = v36;
      }

      else
      {
        selfCopy3 = self;
        v38 = 0;
      }

      v39 = [dictionaryCopy objectForKeyedSubscript:@"numOfLinguisticMentions"];
      if (v39 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (errorCopy5)
          {
            v108 = objc_alloc(MEMORY[0x1E696ABC0]);
            v88 = *MEMORY[0x1E698F240];
            v109 = *MEMORY[0x1E696A578];
            v79 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numOfLinguisticMentions"];
            v110 = v79;
            v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
            *errorCopy5 = [v108 initWithDomain:v88 code:2 userInfo:v80];
          }

          v40 = 0;
          v24 = 0;
          goto LABEL_56;
        }

        v40 = v39;
      }

      else
      {
        v40 = 0;
      }

      v24 = [(BMTextUnderstandingPoemAnalyticsFeatures *)selfCopy3 initWithNumOfFacesInMessages:v106 numOfFacesOnDevice:v104 numOfNamedFacesOnDevice:v96 numOfConversationThreads:v105 numOfNamedEntityMentions:v90 numOfSenderMentions:v101 numOfReceiverMentions:v94 numOfPronounMentions:v93 numOfImagesShared:v38 numOfLinguisticMentions:v40];
      selfCopy3 = v24;
LABEL_56:
      self = selfCopy3;

      v9 = v84;
      v15 = v85;
      v12 = v96;
      goto LABEL_57;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v86 = v6;
      v16 = v12;
      v101 = v15;
      goto LABEL_30;
    }

    if (error)
    {
      v99 = v12;
      v55 = objc_alloc(MEMORY[0x1E696ABC0]);
      v56 = v15;
      v57 = v9;
      v58 = *MEMORY[0x1E698F240];
      v117 = *MEMORY[0x1E696A578];
      v59 = v14;
      v60 = objc_alloc(MEMORY[0x1E696AEC0]);
      v82 = objc_opt_class();
      v61 = v60;
      v14 = v59;
      v94 = [v61 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v82, @"numOfSenderMentions"];
      v118 = v94;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
      v62 = v58;
      v9 = v57;
      v15 = v56;
      v101 = 0;
      v24 = 0;
      *errorCopy5 = [v55 initWithDomain:v62 code:2 userInfo:v41];
      v35 = v95;
      v12 = v99;
      goto LABEL_59;
    }

    v101 = 0;
    v24 = 0;
LABEL_91:
    v23 = v106;
    v35 = v95;
    goto LABEL_60;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v106 = v6;
    goto LABEL_4;
  }

  if (!error)
  {
    v23 = 0;
    v24 = 0;
    goto LABEL_65;
  }

  errorCopy7 = error;
  v21 = objc_alloc(MEMORY[0x1E696ABC0]);
  v22 = *MEMORY[0x1E698F240];
  v127 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numOfFacesInMessages"];
  v128[0] = v8;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v128 forKeys:&v127 count:1];
  v23 = 0;
  v24 = 0;
  *errorCopy7 = [v21 initWithDomain:v22 code:2 userInfo:v7];
LABEL_64:

LABEL_65:
  return v24;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMTextUnderstandingPoemAnalyticsFeatures *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasNumOfFacesInMessages)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasNumOfFacesOnDevice)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasNumOfNamedFacesOnDevice)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasNumOfConversationThreads)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasNumOfNamedEntityMentions)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasNumOfSenderMentions)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasNumOfReceiverMentions)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasNumOfPronounMentions)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasNumOfImagesShared)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasNumOfLinguisticMentions)
  {
    PBDataWriterWriteInt64Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v73.receiver = self;
  v73.super_class = BMTextUnderstandingPoemAnalyticsFeatures;
  v5 = [(BMEventBase *)&v73 init];
  if (!v5)
  {
    goto LABEL_140;
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
        v74 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v74 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v74 & 0x7F) << v7;
        if ((v74 & 0x80) == 0)
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
      if ((v14 >> 3) > 5)
      {
        if (v15 <= 7)
        {
          if (v15 == 6)
          {
            v45 = 0;
            v46 = 0;
            v18 = 0;
            v5->_hasNumOfSenderMentions = 1;
            while (1)
            {
              v74 = 0;
              v47 = [fromCopy position] + 1;
              if (v47 >= [fromCopy position] && (v48 = objc_msgSend(fromCopy, "position") + 1, v48 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v74 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 = (((v74 & 0x7F) << v45) | v18);
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v22 = v46++ > 8;
              if (v22)
              {
                v23 = 0;
                v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfSenderMentions;
                goto LABEL_136;
              }
            }

            v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfSenderMentions;
          }

          else
          {
            if (v15 != 7)
            {
LABEL_121:
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_139;
              }

              goto LABEL_137;
            }

            v35 = 0;
            v36 = 0;
            v18 = 0;
            v5->_hasNumOfReceiverMentions = 1;
            while (1)
            {
              v74 = 0;
              v37 = [fromCopy position] + 1;
              if (v37 >= [fromCopy position] && (v38 = objc_msgSend(fromCopy, "position") + 1, v38 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v74 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 = (((v74 & 0x7F) << v35) | v18);
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v22 = v36++ > 8;
              if (v22)
              {
                v23 = 0;
                v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfReceiverMentions;
                goto LABEL_136;
              }
            }

            v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfReceiverMentions;
          }
        }

        else
        {
          switch(v15)
          {
            case 8:
              v55 = 0;
              v56 = 0;
              v18 = 0;
              v5->_hasNumOfPronounMentions = 1;
              while (1)
              {
                v74 = 0;
                v57 = [fromCopy position] + 1;
                if (v57 >= [fromCopy position] && (v58 = objc_msgSend(fromCopy, "position") + 1, v58 <= objc_msgSend(fromCopy, "length")))
                {
                  data4 = [fromCopy data];
                  [data4 getBytes:&v74 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v18 = (((v74 & 0x7F) << v55) | v18);
                if ((v74 & 0x80) == 0)
                {
                  break;
                }

                v55 += 7;
                v22 = v56++ > 8;
                if (v22)
                {
                  v23 = 0;
                  v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfPronounMentions;
                  goto LABEL_136;
                }
              }

              v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfPronounMentions;
              break;
            case 9:
              v65 = 0;
              v66 = 0;
              v18 = 0;
              v5->_hasNumOfImagesShared = 1;
              while (1)
              {
                v74 = 0;
                v67 = [fromCopy position] + 1;
                if (v67 >= [fromCopy position] && (v68 = objc_msgSend(fromCopy, "position") + 1, v68 <= objc_msgSend(fromCopy, "length")))
                {
                  data5 = [fromCopy data];
                  [data5 getBytes:&v74 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v18 = (((v74 & 0x7F) << v65) | v18);
                if ((v74 & 0x80) == 0)
                {
                  break;
                }

                v65 += 7;
                v22 = v66++ > 8;
                if (v22)
                {
                  v23 = 0;
                  v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfImagesShared;
                  goto LABEL_136;
                }
              }

              v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfImagesShared;
              break;
            case 0xA:
              v25 = 0;
              v26 = 0;
              v18 = 0;
              v5->_hasNumOfLinguisticMentions = 1;
              while (1)
              {
                v74 = 0;
                v27 = [fromCopy position] + 1;
                if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
                {
                  data6 = [fromCopy data];
                  [data6 getBytes:&v74 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v18 = (((v74 & 0x7F) << v25) | v18);
                if ((v74 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                v22 = v26++ > 8;
                if (v22)
                {
                  v23 = 0;
                  v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfLinguisticMentions;
                  goto LABEL_136;
                }
              }

              v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfLinguisticMentions;
              break;
            default:
              goto LABEL_121;
          }
        }
      }

      else if (v15 <= 2)
      {
        if (v15 == 1)
        {
          v40 = 0;
          v41 = 0;
          v18 = 0;
          v5->_hasNumOfFacesInMessages = 1;
          while (1)
          {
            v74 = 0;
            v42 = [fromCopy position] + 1;
            if (v42 >= [fromCopy position] && (v43 = objc_msgSend(fromCopy, "position") + 1, v43 <= objc_msgSend(fromCopy, "length")))
            {
              data7 = [fromCopy data];
              [data7 getBytes:&v74 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 = (((v74 & 0x7F) << v40) | v18);
            if ((v74 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v22 = v41++ > 8;
            if (v22)
            {
              v23 = 0;
              v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfFacesInMessages;
              goto LABEL_136;
            }
          }

          v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfFacesInMessages;
        }

        else
        {
          if (v15 != 2)
          {
            goto LABEL_121;
          }

          v30 = 0;
          v31 = 0;
          v18 = 0;
          v5->_hasNumOfFacesOnDevice = 1;
          while (1)
          {
            v74 = 0;
            v32 = [fromCopy position] + 1;
            if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
            {
              data8 = [fromCopy data];
              [data8 getBytes:&v74 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 = (((v74 & 0x7F) << v30) | v18);
            if ((v74 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v22 = v31++ > 8;
            if (v22)
            {
              v23 = 0;
              v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfFacesOnDevice;
              goto LABEL_136;
            }
          }

          v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfFacesOnDevice;
        }
      }

      else
      {
        switch(v15)
        {
          case 3:
            v50 = 0;
            v51 = 0;
            v18 = 0;
            v5->_hasNumOfNamedFacesOnDevice = 1;
            while (1)
            {
              v74 = 0;
              v52 = [fromCopy position] + 1;
              if (v52 >= [fromCopy position] && (v53 = objc_msgSend(fromCopy, "position") + 1, v53 <= objc_msgSend(fromCopy, "length")))
              {
                data9 = [fromCopy data];
                [data9 getBytes:&v74 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 = (((v74 & 0x7F) << v50) | v18);
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              v22 = v51++ > 8;
              if (v22)
              {
                v23 = 0;
                v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfNamedFacesOnDevice;
                goto LABEL_136;
              }
            }

            v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfNamedFacesOnDevice;
            break;
          case 4:
            v60 = 0;
            v61 = 0;
            v18 = 0;
            v5->_hasNumOfConversationThreads = 1;
            while (1)
            {
              v74 = 0;
              v62 = [fromCopy position] + 1;
              if (v62 >= [fromCopy position] && (v63 = objc_msgSend(fromCopy, "position") + 1, v63 <= objc_msgSend(fromCopy, "length")))
              {
                data10 = [fromCopy data];
                [data10 getBytes:&v74 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 = (((v74 & 0x7F) << v60) | v18);
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v60 += 7;
              v22 = v61++ > 8;
              if (v22)
              {
                v23 = 0;
                v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfConversationThreads;
                goto LABEL_136;
              }
            }

            v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfConversationThreads;
            break;
          case 5:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v5->_hasNumOfNamedEntityMentions = 1;
            while (1)
            {
              v74 = 0;
              v19 = [fromCopy position] + 1;
              if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
              {
                data11 = [fromCopy data];
                [data11 getBytes:&v74 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 = (((v74 & 0x7F) << v16) | v18);
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v22 = v17++ > 8;
              if (v22)
              {
                v23 = 0;
                v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfNamedEntityMentions;
                goto LABEL_136;
              }
            }

            v24 = &OBJC_IVAR___BMTextUnderstandingPoemAnalyticsFeatures__numOfNamedEntityMentions;
            break;
          default:
            goto LABEL_121;
        }
      }

      if ([fromCopy hasError])
      {
        v23 = 0;
      }

      else
      {
        v23 = v18;
      }

LABEL_136:
      *(&v5->super.super.isa + *v24) = v23;
LABEL_137:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_139:
    v71 = 0;
  }

  else
  {
LABEL_140:
    v71 = v5;
  }

  return v71;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfFacesInMessages](self, "numOfFacesInMessages")}];
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfFacesOnDevice](self, "numOfFacesOnDevice")}];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfNamedFacesOnDevice](self, "numOfNamedFacesOnDevice")}];
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfConversationThreads](self, "numOfConversationThreads")}];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfNamedEntityMentions](self, "numOfNamedEntityMentions")}];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfSenderMentions](self, "numOfSenderMentions")}];
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfReceiverMentions](self, "numOfReceiverMentions")}];
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfPronounMentions](self, "numOfPronounMentions")}];
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfImagesShared](self, "numOfImagesShared")}];
  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMTextUnderstandingPoemAnalyticsFeatures numOfLinguisticMentions](self, "numOfLinguisticMentions")}];
  v15 = [v14 initWithFormat:@"BMTextUnderstandingPoemAnalyticsFeatures with numOfFacesInMessages: %@, numOfFacesOnDevice: %@, numOfNamedFacesOnDevice: %@, numOfConversationThreads: %@, numOfNamedEntityMentions: %@, numOfSenderMentions: %@, numOfReceiverMentions: %@, numOfPronounMentions: %@, numOfImagesShared: %@, numOfLinguisticMentions: %@", v13, v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v15;
}

- (BMTextUnderstandingPoemAnalyticsFeatures)initWithNumOfFacesInMessages:(id)messages numOfFacesOnDevice:(id)device numOfNamedFacesOnDevice:(id)onDevice numOfConversationThreads:(id)threads numOfNamedEntityMentions:(id)mentions numOfSenderMentions:(id)senderMentions numOfReceiverMentions:(id)receiverMentions numOfPronounMentions:(id)self0 numOfImagesShared:(id)self1 numOfLinguisticMentions:(id)self2
{
  messagesCopy = messages;
  deviceCopy = device;
  onDeviceCopy = onDevice;
  threadsCopy = threads;
  mentionsCopy = mentions;
  senderMentionsCopy = senderMentions;
  receiverMentionsCopy = receiverMentions;
  pronounMentionsCopy = pronounMentions;
  sharedCopy = shared;
  linguisticMentionsCopy = linguisticMentions;
  v40.receiver = self;
  v40.super_class = BMTextUnderstandingPoemAnalyticsFeatures;
  v26 = [(BMEventBase *)&v40 init];
  if (v26)
  {
    v26->_dataVersion = [objc_opt_class() latestDataVersion];
    if (messagesCopy)
    {
      v26->_hasNumOfFacesInMessages = 1;
      longLongValue = [messagesCopy longLongValue];
    }

    else
    {
      v26->_hasNumOfFacesInMessages = 0;
      longLongValue = -1;
    }

    v26->_numOfFacesInMessages = longLongValue;
    if (deviceCopy)
    {
      v26->_hasNumOfFacesOnDevice = 1;
      longLongValue2 = [deviceCopy longLongValue];
    }

    else
    {
      v26->_hasNumOfFacesOnDevice = 0;
      longLongValue2 = -1;
    }

    v26->_numOfFacesOnDevice = longLongValue2;
    if (onDeviceCopy)
    {
      v26->_hasNumOfNamedFacesOnDevice = 1;
      longLongValue3 = [onDeviceCopy longLongValue];
    }

    else
    {
      v26->_hasNumOfNamedFacesOnDevice = 0;
      longLongValue3 = -1;
    }

    v26->_numOfNamedFacesOnDevice = longLongValue3;
    if (threadsCopy)
    {
      v26->_hasNumOfConversationThreads = 1;
      longLongValue4 = [threadsCopy longLongValue];
    }

    else
    {
      v26->_hasNumOfConversationThreads = 0;
      longLongValue4 = -1;
    }

    v26->_numOfConversationThreads = longLongValue4;
    if (mentionsCopy)
    {
      v26->_hasNumOfNamedEntityMentions = 1;
      longLongValue5 = [mentionsCopy longLongValue];
    }

    else
    {
      v26->_hasNumOfNamedEntityMentions = 0;
      longLongValue5 = -1;
    }

    v26->_numOfNamedEntityMentions = longLongValue5;
    if (senderMentionsCopy)
    {
      v26->_hasNumOfSenderMentions = 1;
      longLongValue6 = [senderMentionsCopy longLongValue];
    }

    else
    {
      v26->_hasNumOfSenderMentions = 0;
      longLongValue6 = -1;
    }

    v26->_numOfSenderMentions = longLongValue6;
    if (receiverMentionsCopy)
    {
      v26->_hasNumOfReceiverMentions = 1;
      longLongValue7 = [receiverMentionsCopy longLongValue];
    }

    else
    {
      v26->_hasNumOfReceiverMentions = 0;
      longLongValue7 = -1;
    }

    v26->_numOfReceiverMentions = longLongValue7;
    if (pronounMentionsCopy)
    {
      v26->_hasNumOfPronounMentions = 1;
      longLongValue8 = [pronounMentionsCopy longLongValue];
    }

    else
    {
      v26->_hasNumOfPronounMentions = 0;
      longLongValue8 = -1;
    }

    v26->_numOfPronounMentions = longLongValue8;
    if (sharedCopy)
    {
      v26->_hasNumOfImagesShared = 1;
      longLongValue9 = [sharedCopy longLongValue];
    }

    else
    {
      v26->_hasNumOfImagesShared = 0;
      longLongValue9 = -1;
    }

    v26->_numOfImagesShared = longLongValue9;
    if (linguisticMentionsCopy)
    {
      v26->_hasNumOfLinguisticMentions = 1;
      longLongValue10 = [linguisticMentionsCopy longLongValue];
    }

    else
    {
      v26->_hasNumOfLinguisticMentions = 0;
      longLongValue10 = -1;
    }

    v26->_numOfLinguisticMentions = longLongValue10;
  }

  return v26;
}

+ (id)protoFields
{
  v14[10] = *MEMORY[0x1E69E9840];
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numOfFacesInMessages" number:1 type:3 subMessageClass:0];
  v14[0] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numOfFacesOnDevice" number:2 type:3 subMessageClass:0];
  v14[1] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numOfNamedFacesOnDevice" number:3 type:3 subMessageClass:0];
  v14[2] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numOfConversationThreads" number:4 type:3 subMessageClass:0];
  v14[3] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numOfNamedEntityMentions" number:5 type:3 subMessageClass:0];
  v14[4] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numOfSenderMentions" number:6 type:3 subMessageClass:0];
  v14[5] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numOfReceiverMentions" number:7 type:3 subMessageClass:0];
  v14[6] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numOfPronounMentions" number:8 type:3 subMessageClass:0];
  v14[7] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numOfImagesShared" number:9 type:3 subMessageClass:0];
  v14[8] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numOfLinguisticMentions" number:10 type:3 subMessageClass:0];
  v14[9] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:10];

  return v11;
}

+ (id)columns
{
  v14[10] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numOfFacesInMessages" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:3 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numOfFacesOnDevice" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:3 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numOfNamedFacesOnDevice" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:3 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numOfConversationThreads" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:3 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numOfNamedEntityMentions" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:3 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numOfSenderMentions" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:3 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numOfReceiverMentions" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:3 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numOfPronounMentions" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:3 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numOfImagesShared" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:3 convertedType:0];
  v11 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numOfLinguisticMentions" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:3 convertedType:0];
  v14[0] = v2;
  v14[1] = v3;
  v14[2] = v4;
  v14[3] = v5;
  v14[4] = v6;
  v14[5] = v7;
  v14[6] = v8;
  v14[7] = v9;
  v14[8] = v10;
  v14[9] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:10];

  return v13;
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

    v8 = [[BMTextUnderstandingPoemAnalyticsFeatures alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[7] = 0;
    }
  }

  return v4;
}

@end