@interface BMMASecureDetailEvent
+ (BMMASecureDetailEvent)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)columns;
+ (id)protoFields;
- (BMMASecureDetailEvent)initWithAssetMetaData:(id)data clientName:(id)name fromLocation:(id)location graftingFailureReason:(id)reason graftingResult:(id)result mapExclaveFailureReason:(id)failureReason mapExclaveFailureResult:(id)failureResult mountingFailureReason:(id)self0 mountingFailureResult:(id)self1 maSecureOperationType:(int)self2 personalizeFailureReason:(id)self3 personalizeFailureResult:(id)self4 secureReason:(id)self5 result:(id)self6;
- (BMMASecureDetailEvent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMASecureDetailEvent

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    assetMetaData = [(BMMASecureDetailEvent *)self assetMetaData];
    assetMetaData2 = [v5 assetMetaData];
    v8 = assetMetaData2;
    if (assetMetaData == assetMetaData2)
    {
    }

    else
    {
      assetMetaData3 = [(BMMASecureDetailEvent *)self assetMetaData];
      assetMetaData4 = [v5 assetMetaData];
      v11 = [assetMetaData3 isEqual:assetMetaData4];

      if (!v11)
      {
        goto LABEL_56;
      }
    }

    if (-[BMMASecureDetailEvent hasClientName](self, "hasClientName") || [v5 hasClientName])
    {
      if (![(BMMASecureDetailEvent *)self hasClientName])
      {
        goto LABEL_56;
      }

      if (![v5 hasClientName])
      {
        goto LABEL_56;
      }

      clientName = [(BMMASecureDetailEvent *)self clientName];
      if (clientName != [v5 clientName])
      {
        goto LABEL_56;
      }
    }

    if (-[BMMASecureDetailEvent hasFromLocation](self, "hasFromLocation") || [v5 hasFromLocation])
    {
      if (![(BMMASecureDetailEvent *)self hasFromLocation])
      {
        goto LABEL_56;
      }

      if (![v5 hasFromLocation])
      {
        goto LABEL_56;
      }

      fromLocation = [(BMMASecureDetailEvent *)self fromLocation];
      if (fromLocation != [v5 fromLocation])
      {
        goto LABEL_56;
      }
    }

    graftingFailureReason = [(BMMASecureDetailEvent *)self graftingFailureReason];
    graftingFailureReason2 = [v5 graftingFailureReason];
    v17 = graftingFailureReason2;
    if (graftingFailureReason == graftingFailureReason2)
    {
    }

    else
    {
      graftingFailureReason3 = [(BMMASecureDetailEvent *)self graftingFailureReason];
      graftingFailureReason4 = [v5 graftingFailureReason];
      v20 = [graftingFailureReason3 isEqual:graftingFailureReason4];

      if (!v20)
      {
        goto LABEL_56;
      }
    }

    if (-[BMMASecureDetailEvent hasGraftingResult](self, "hasGraftingResult") || [v5 hasGraftingResult])
    {
      if (![(BMMASecureDetailEvent *)self hasGraftingResult])
      {
        goto LABEL_56;
      }

      if (![v5 hasGraftingResult])
      {
        goto LABEL_56;
      }

      graftingResult = [(BMMASecureDetailEvent *)self graftingResult];
      if (graftingResult != [v5 graftingResult])
      {
        goto LABEL_56;
      }
    }

    mapExclaveFailureReason = [(BMMASecureDetailEvent *)self mapExclaveFailureReason];
    mapExclaveFailureReason2 = [v5 mapExclaveFailureReason];
    v24 = mapExclaveFailureReason2;
    if (mapExclaveFailureReason == mapExclaveFailureReason2)
    {
    }

    else
    {
      mapExclaveFailureReason3 = [(BMMASecureDetailEvent *)self mapExclaveFailureReason];
      mapExclaveFailureReason4 = [v5 mapExclaveFailureReason];
      v27 = [mapExclaveFailureReason3 isEqual:mapExclaveFailureReason4];

      if (!v27)
      {
        goto LABEL_56;
      }
    }

    if (-[BMMASecureDetailEvent hasMapExclaveFailureResult](self, "hasMapExclaveFailureResult") || [v5 hasMapExclaveFailureResult])
    {
      if (![(BMMASecureDetailEvent *)self hasMapExclaveFailureResult])
      {
        goto LABEL_56;
      }

      if (![v5 hasMapExclaveFailureResult])
      {
        goto LABEL_56;
      }

      mapExclaveFailureResult = [(BMMASecureDetailEvent *)self mapExclaveFailureResult];
      if (mapExclaveFailureResult != [v5 mapExclaveFailureResult])
      {
        goto LABEL_56;
      }
    }

    mountingFailureReason = [(BMMASecureDetailEvent *)self mountingFailureReason];
    mountingFailureReason2 = [v5 mountingFailureReason];
    v31 = mountingFailureReason2;
    if (mountingFailureReason == mountingFailureReason2)
    {
    }

    else
    {
      mountingFailureReason3 = [(BMMASecureDetailEvent *)self mountingFailureReason];
      mountingFailureReason4 = [v5 mountingFailureReason];
      v34 = [mountingFailureReason3 isEqual:mountingFailureReason4];

      if (!v34)
      {
        goto LABEL_56;
      }
    }

    if (-[BMMASecureDetailEvent hasMountingFailureResult](self, "hasMountingFailureResult") || [v5 hasMountingFailureResult])
    {
      if (![(BMMASecureDetailEvent *)self hasMountingFailureResult])
      {
        goto LABEL_56;
      }

      if (![v5 hasMountingFailureResult])
      {
        goto LABEL_56;
      }

      mountingFailureResult = [(BMMASecureDetailEvent *)self mountingFailureResult];
      if (mountingFailureResult != [v5 mountingFailureResult])
      {
        goto LABEL_56;
      }
    }

    maSecureOperationType = [(BMMASecureDetailEvent *)self maSecureOperationType];
    if (maSecureOperationType != [v5 maSecureOperationType])
    {
      goto LABEL_56;
    }

    personalizeFailureReason = [(BMMASecureDetailEvent *)self personalizeFailureReason];
    personalizeFailureReason2 = [v5 personalizeFailureReason];
    v39 = personalizeFailureReason2;
    if (personalizeFailureReason == personalizeFailureReason2)
    {
    }

    else
    {
      personalizeFailureReason3 = [(BMMASecureDetailEvent *)self personalizeFailureReason];
      personalizeFailureReason4 = [v5 personalizeFailureReason];
      v42 = [personalizeFailureReason3 isEqual:personalizeFailureReason4];

      if (!v42)
      {
        goto LABEL_56;
      }
    }

    if (-[BMMASecureDetailEvent hasPersonalizeFailureResult](self, "hasPersonalizeFailureResult") || [v5 hasPersonalizeFailureResult])
    {
      if (![(BMMASecureDetailEvent *)self hasPersonalizeFailureResult])
      {
        goto LABEL_56;
      }

      if (![v5 hasPersonalizeFailureResult])
      {
        goto LABEL_56;
      }

      personalizeFailureResult = [(BMMASecureDetailEvent *)self personalizeFailureResult];
      if (personalizeFailureResult != [v5 personalizeFailureResult])
      {
        goto LABEL_56;
      }
    }

    secureReason = [(BMMASecureDetailEvent *)self secureReason];
    secureReason2 = [v5 secureReason];
    v46 = secureReason2;
    if (secureReason == secureReason2)
    {
    }

    else
    {
      secureReason3 = [(BMMASecureDetailEvent *)self secureReason];
      secureReason4 = [v5 secureReason];
      v49 = [secureReason3 isEqual:secureReason4];

      if (!v49)
      {
LABEL_56:
        v12 = 0;
LABEL_57:

        goto LABEL_58;
      }
    }

    result = [(BMMASecureDetailEvent *)self result];
    result2 = [v5 result];
    if (result == result2)
    {
      v12 = 1;
    }

    else
    {
      result3 = [(BMMASecureDetailEvent *)self result];
      result4 = [v5 result];
      v12 = [result3 isEqual:result4];
    }

    goto LABEL_57;
  }

  v12 = 0;
LABEL_58:

  return v12;
}

- (id)jsonDictionary
{
  v47[14] = *MEMORY[0x1E69E9840];
  assetMetaData = [(BMMASecureDetailEvent *)self assetMetaData];
  jsonDictionary = [assetMetaData jsonDictionary];

  if ([(BMMASecureDetailEvent *)self hasClientName])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent clientName](self, "clientName")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMMASecureDetailEvent *)self hasFromLocation])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent fromLocation](self, "fromLocation")}];
  }

  else
  {
    v6 = 0;
  }

  graftingFailureReason = [(BMMASecureDetailEvent *)self graftingFailureReason];
  if ([(BMMASecureDetailEvent *)self hasGraftingResult])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent graftingResult](self, "graftingResult")}];
  }

  else
  {
    v8 = 0;
  }

  mapExclaveFailureReason = [(BMMASecureDetailEvent *)self mapExclaveFailureReason];
  if ([(BMMASecureDetailEvent *)self hasMapExclaveFailureResult])
  {
    v44 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent mapExclaveFailureResult](self, "mapExclaveFailureResult")}];
  }

  else
  {
    v44 = 0;
  }

  mountingFailureReason = [(BMMASecureDetailEvent *)self mountingFailureReason];
  if ([(BMMASecureDetailEvent *)self hasMountingFailureResult])
  {
    v42 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent mountingFailureResult](self, "mountingFailureResult")}];
  }

  else
  {
    v42 = 0;
  }

  v41 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMASecureDetailEvent maSecureOperationType](self, "maSecureOperationType")}];
  personalizeFailureReason = [(BMMASecureDetailEvent *)self personalizeFailureReason];
  if ([(BMMASecureDetailEvent *)self hasPersonalizeFailureResult])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent personalizeFailureResult](self, "personalizeFailureResult")}];
  }

  else
  {
    v9 = 0;
  }

  secureReason = [(BMMASecureDetailEvent *)self secureReason];
  result = [(BMMASecureDetailEvent *)self result];
  v46[0] = @"assetMetaData";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v33 = null;
  v47[0] = null;
  v46[1] = @"clientName";
  null2 = v5;
  if (!v5)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = null2;
  v47[1] = null2;
  v46[2] = @"fromLocation";
  null3 = v6;
  if (!v6)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = null3;
  v47[2] = null3;
  v46[3] = @"graftingFailureReason";
  null4 = graftingFailureReason;
  if (!graftingFailureReason)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = null4;
  v47[3] = null4;
  v46[4] = @"graftingResult";
  null5 = v8;
  if (!v8)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = null5;
  v47[4] = null5;
  v46[5] = @"mapExclaveFailureReason";
  null6 = mapExclaveFailureReason;
  if (!mapExclaveFailureReason)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v6;
  v38 = v5;
  v47[5] = null6;
  v46[6] = @"mapExclaveFailureResult";
  null7 = v44;
  if (!v44)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = graftingFailureReason;
  v47[6] = null7;
  v46[7] = @"mountingFailureReason";
  null8 = mountingFailureReason;
  if (!mountingFailureReason)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v8;
  v47[7] = null8;
  v46[8] = @"mountingFailureResult";
  null9 = v42;
  if (!v42)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null6;
  v47[8] = null9;
  v46[9] = @"maSecureOperationType";
  null10 = v41;
  if (!v41)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = jsonDictionary;
  v47[9] = null10;
  v46[10] = @"personalizeFailureReason";
  null11 = personalizeFailureReason;
  if (!personalizeFailureReason)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v47[10] = null11;
  v46[11] = @"personalizeFailureResult";
  null12 = v9;
  if (!v9)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null7;
  v47[11] = null12;
  v46[12] = @"secureReason";
  null13 = secureReason;
  if (!secureReason)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v47[12] = null13;
  v46[13] = @"result";
  null14 = result;
  if (!result)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v47[13] = null14;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:14];
  if (!result)
  {
  }

  if (secureReason)
  {
    if (v9)
    {
      goto LABEL_51;
    }
  }

  else
  {

    if (v9)
    {
      goto LABEL_51;
    }
  }

LABEL_51:
  if (!personalizeFailureReason)
  {
  }

  if (!v41)
  {
  }

  if (!v42)
  {
  }

  if (!mountingFailureReason)
  {
  }

  if (!v44)
  {
  }

  if (mapExclaveFailureReason)
  {
    if (v35)
    {
      goto LABEL_63;
    }
  }

  else
  {

    if (v35)
    {
LABEL_63:
      if (v36)
      {
        goto LABEL_64;
      }

      goto LABEL_74;
    }
  }

  if (v36)
  {
LABEL_64:
    if (v37)
    {
      goto LABEL_65;
    }

    goto LABEL_75;
  }

LABEL_74:

  if (v37)
  {
LABEL_65:
    if (v38)
    {
      goto LABEL_66;
    }

LABEL_76:

    if (v21)
    {
      goto LABEL_67;
    }

    goto LABEL_77;
  }

LABEL_75:

  if (!v38)
  {
    goto LABEL_76;
  }

LABEL_66:
  if (v21)
  {
    goto LABEL_67;
  }

LABEL_77:

LABEL_67:

  return v34;
}

- (BMMASecureDetailEvent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v146[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"assetMetaData"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v6;
    v118 = 0;
    v7 = [[BMMAAssetMetadata alloc] initWithJSONDictionary:v9 error:&v118];
    v16 = v118;
    if (v16)
    {
      if (error)
      {
        v16 = v16;
        *error = v16;
      }

      v17 = 0;
      goto LABEL_128;
    }

LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"clientName"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v9 = 0;
          v17 = 0;
LABEL_127:

          goto LABEL_128;
        }

        errorCopy = error;
        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v39 = *MEMORY[0x1E698F240];
        v143 = *MEMORY[0x1E696A578];
        v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"clientName"];
        v144 = v40;
        v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
        v41 = [v38 initWithDomain:v39 code:2 userInfo:?];
        v9 = 0;
        v17 = 0;
        *errorCopy = v41;
        goto LABEL_126;
      }

      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"fromLocation"];
    v115 = v7;
    v116 = v10;
    if (!v10 || (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      errorCopy3 = error;
      v113 = 0;
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      errorCopy3 = error;
      v113 = v11;
LABEL_10:
      v12 = [dictionaryCopy objectForKeyedSubscript:@"graftingFailureReason"];
      v114 = v12;
      if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v13 = 0;
LABEL_13:
        v14 = [dictionaryCopy objectForKeyedSubscript:@"graftingResult"];
        v110 = v13;
        if (!v14)
        {
          v15 = v6;
          v105 = 0;
          goto LABEL_32;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v6;
          v105 = v14;
          v14 = 0;
LABEL_32:
          v21 = [dictionaryCopy objectForKeyedSubscript:@"mapExclaveFailureReason"];
          v107 = v21;
          if (v21 && (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!errorCopy3)
              {
                v108 = 0;
                v17 = 0;
                v40 = v113;
                v52 = v105;
                v6 = v15;
                v13 = v110;
LABEL_123:

                goto LABEL_124;
              }

              v109 = objc_alloc(MEMORY[0x1E696ABC0]);
              v61 = *MEMORY[0x1E698F240];
              v135 = *MEMORY[0x1E696A578];
              v106 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"mapExclaveFailureReason"];
              v136 = v106;
              v112 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
              v62 = [v109 initWithDomain:v61 code:2 userInfo:v112];
              v108 = 0;
              v17 = 0;
              *errorCopy3 = v62;
              v40 = v113;
              v52 = v105;
              v6 = v15;
              goto LABEL_121;
            }

            v108 = v22;
          }

          else
          {
            v108 = 0;
          }

          [dictionaryCopy objectForKeyedSubscript:@"mapExclaveFailureResult"];
          v112 = v6 = v15;
          if (v112 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!errorCopy3)
              {
                v106 = 0;
                v17 = 0;
                v40 = v113;
                v52 = v105;
LABEL_121:

                goto LABEL_122;
              }

              v63 = objc_alloc(MEMORY[0x1E696ABC0]);
              v64 = *MEMORY[0x1E698F240];
              v133 = *MEMORY[0x1E696A578];
              v103 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"mapExclaveFailureResult"];
              v134 = v103;
              v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
              v66 = v63;
              v12 = v114;
              v102 = v65;
              v67 = [v66 initWithDomain:v64 code:2 userInfo:?];
              v106 = 0;
              v17 = 0;
              *errorCopy3 = v67;
              v40 = v113;
              v52 = v105;
LABEL_120:

              goto LABEL_121;
            }

            v106 = v112;
          }

          else
          {
            v106 = 0;
          }

          v23 = [dictionaryCopy objectForKeyedSubscript:@"mountingFailureReason"];
          v102 = v23;
          if (v23 && (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!errorCopy3)
              {
                v103 = 0;
                v17 = 0;
                v40 = v113;
                v52 = v105;
                goto LABEL_120;
              }

              v104 = objc_alloc(MEMORY[0x1E696ABC0]);
              v68 = *MEMORY[0x1E698F240];
              v131 = *MEMORY[0x1E696A578];
              v101 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"mountingFailureReason"];
              v132 = v101;
              v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
              v69 = [v104 initWithDomain:v68 code:2 userInfo:?];
              v103 = 0;
              v17 = 0;
              *errorCopy3 = v69;
              v40 = v113;
              v52 = v105;
              goto LABEL_119;
            }

            v103 = v24;
          }

          else
          {
            v103 = 0;
          }

          v25 = [dictionaryCopy objectForKeyedSubscript:@"mountingFailureResult"];
          v100 = v25;
          if (v25 && (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!errorCopy3)
              {
                v101 = 0;
                v17 = 0;
                v40 = v113;
                v52 = v105;
                goto LABEL_119;
              }

              v70 = objc_alloc(MEMORY[0x1E696ABC0]);
              v71 = *MEMORY[0x1E698F240];
              v129 = *MEMORY[0x1E696A578];
              v99 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"mountingFailureResult"];
              v130 = v99;
              v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
              v73 = v70;
              v12 = v114;
              v96 = v72;
              v74 = [v73 initWithDomain:v71 code:2 userInfo:?];
              v101 = 0;
              v17 = 0;
              *errorCopy3 = v74;
              v40 = v113;
              v52 = v105;
LABEL_118:

LABEL_119:
              goto LABEL_120;
            }

            v101 = v26;
          }

          else
          {
            v101 = 0;
          }

          v27 = [dictionaryCopy objectForKeyedSubscript:@"maSecureOperationType"];
          v96 = v27;
          if (v27 && (v28 = v27, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v99 = v28;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!errorCopy3)
                {
                  v99 = 0;
                  v17 = 0;
                  v40 = v113;
                  v52 = v105;
                  goto LABEL_118;
                }

                v85 = objc_alloc(MEMORY[0x1E696ABC0]);
                v86 = *MEMORY[0x1E698F240];
                v127 = *MEMORY[0x1E696A578];
                v97 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"maSecureOperationType"];
                v128 = v97;
                v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
                v87 = [v85 initWithDomain:v86 code:2 userInfo:?];
                v99 = 0;
                v17 = 0;
                *errorCopy3 = v87;
                goto LABEL_135;
              }

              v99 = [MEMORY[0x1E696AD98] numberWithInt:BMMASecureOperationTypeFromString(v28)];
            }
          }

          else
          {
            v99 = 0;
          }

          v29 = [dictionaryCopy objectForKeyedSubscript:@"personalizeFailureReason"];
          v93 = v29;
          if (!v29 || (v30 = v29, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v97 = 0;
LABEL_50:
            v31 = [dictionaryCopy objectForKeyedSubscript:@"personalizeFailureResult"];
            v92 = v31;
            if (v31 && (v32 = v31, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!errorCopy3)
                {
                  v94 = 0;
                  v17 = 0;
                  v40 = v113;
                  goto LABEL_115;
                }

                v95 = objc_alloc(MEMORY[0x1E696ABC0]);
                v77 = *MEMORY[0x1E698F240];
                v123 = *MEMORY[0x1E696A578];
                v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"personalizeFailureResult"];
                v124 = v34;
                v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
                v78 = [v95 initWithDomain:v77 code:2 userInfo:v33];
                v94 = 0;
                v17 = 0;
                *errorCopy3 = v78;
LABEL_114:

                v40 = v113;
                v12 = v114;
LABEL_115:
                v52 = v105;
                goto LABEL_116;
              }

              v94 = v32;
            }

            else
            {
              v94 = 0;
            }

            v33 = [dictionaryCopy objectForKeyedSubscript:@"secureReason"];
            if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!errorCopy3)
                {
                  v34 = 0;
                  v17 = 0;
                  goto LABEL_114;
                }

                v79 = objc_alloc(MEMORY[0x1E696ABC0]);
                v80 = *MEMORY[0x1E698F240];
                v121 = *MEMORY[0x1E696A578];
                v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"secureReason"];
                v122 = v36;
                v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
                v81 = [v79 initWithDomain:v80 code:2 userInfo:v35];
                v34 = 0;
                v17 = 0;
                *errorCopy3 = v81;
                goto LABEL_113;
              }

              v34 = v33;
            }

            else
            {
              v34 = 0;
            }

            v35 = [dictionaryCopy objectForKeyedSubscript:@"result"];
            if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (errorCopy3)
                {
                  v91 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v90 = *MEMORY[0x1E698F240];
                  v119 = *MEMORY[0x1E696A578];
                  v82 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"result"];
                  v120 = v82;
                  v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
                  *errorCopy3 = [v91 initWithDomain:v90 code:2 userInfo:v83];
                }

                v36 = 0;
                v17 = 0;
                goto LABEL_113;
              }

              v36 = v35;
            }

            else
            {
              v36 = 0;
            }

            LODWORD(v89) = [v99 intValue];
            v17 = [(BMMASecureDetailEvent *)self initWithAssetMetaData:v115 clientName:v9 fromLocation:v113 graftingFailureReason:v110 graftingResult:v14 mapExclaveFailureReason:v108 mapExclaveFailureResult:v106 mountingFailureReason:v103 mountingFailureResult:v101 maSecureOperationType:v89 personalizeFailureReason:v97 personalizeFailureResult:v94 secureReason:v34 result:v36];
            self = v17;
LABEL_113:

            goto LABEL_114;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v97 = v30;
            goto LABEL_50;
          }

          if (errorCopy3)
          {
            v98 = objc_alloc(MEMORY[0x1E696ABC0]);
            v75 = *MEMORY[0x1E698F240];
            v125 = *MEMORY[0x1E696A578];
            v94 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"personalizeFailureReason"];
            v126 = v94;
            v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
            v76 = [v98 initWithDomain:v75 code:2 userInfo:?];
            v97 = 0;
            v17 = 0;
            *errorCopy3 = v76;
            v40 = v113;
            v52 = v105;
LABEL_116:

LABEL_117:
            goto LABEL_118;
          }

          v97 = 0;
          v17 = 0;
LABEL_135:
          v40 = v113;
          v12 = v114;
          v52 = v105;
          goto LABEL_117;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v6;
          v105 = v14;
          v14 = v14;
          goto LABEL_32;
        }

        if (errorCopy3)
        {
          v54 = objc_alloc(MEMORY[0x1E696ABC0]);
          v55 = *MEMORY[0x1E698F240];
          v137 = *MEMORY[0x1E696A578];
          v56 = objc_alloc(MEMORY[0x1E696AEC0]);
          v88 = objc_opt_class();
          v57 = v56;
          v52 = v14;
          v108 = [v57 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v88, @"graftingResult"];
          v138 = v108;
          v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
          v59 = v54;
          v12 = v114;
          v107 = v58;
          v60 = [v59 initWithDomain:v55 code:2 userInfo:?];
          v14 = 0;
          v17 = 0;
          *errorCopy3 = v60;
          v40 = v113;
LABEL_122:
          v13 = v110;
          goto LABEL_123;
        }

        v17 = 0;
        v40 = v113;
        v52 = v14;
        v14 = 0;
LABEL_124:

        goto LABEL_125;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
        goto LABEL_13;
      }

      if (errorCopy3)
      {
        v49 = objc_alloc(MEMORY[0x1E696ABC0]);
        v50 = *MEMORY[0x1E698F240];
        v139 = *MEMORY[0x1E696A578];
        v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"graftingFailureReason"];
        v140 = v51;
        v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
        v53 = [v49 initWithDomain:v50 code:2 userInfo:v52];
        v17 = 0;
        *errorCopy3 = v53;
        v14 = v51;
        v13 = 0;
        v40 = v113;
        goto LABEL_124;
      }

      v13 = 0;
      v17 = 0;
      v40 = v113;
LABEL_125:

      v7 = v115;
      goto LABEL_126;
    }

    if (error)
    {
      errorCopy4 = error;
      v43 = objc_alloc(MEMORY[0x1E696ABC0]);
      v44 = *MEMORY[0x1E698F240];
      v141 = *MEMORY[0x1E696A578];
      v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"fromLocation"];
      v142 = v45;
      v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
      v47 = v43;
      v12 = v46;
      v48 = [v47 initWithDomain:v44 code:2 userInfo:v46];
      v40 = 0;
      v17 = 0;
      *errorCopy4 = v48;
      v13 = v45;
      goto LABEL_125;
    }

    v40 = 0;
    v17 = 0;
LABEL_126:

    goto LABEL_127;
  }

  if (error)
  {
    errorCopy5 = error;
    v19 = objc_alloc(MEMORY[0x1E696ABC0]);
    v20 = *MEMORY[0x1E698F240];
    v145 = *MEMORY[0x1E696A578];
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"assetMetaData"];
    v146[0] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v146 forKeys:&v145 count:1];
    v17 = 0;
    *errorCopy5 = [v19 initWithDomain:v20 code:2 userInfo:v9];
LABEL_128:

    goto LABEL_129;
  }

  v17 = 0;
LABEL_129:

  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMASecureDetailEvent *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_assetMetaData)
  {
    PBDataWriterPlaceMark();
    [(BMMAAssetMetadata *)self->_assetMetaData writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasClientName)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasFromLocation)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_graftingFailureReason)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasGraftingResult)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_mapExclaveFailureReason)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasMapExclaveFailureResult)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_mountingFailureReason)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasMountingFailureResult)
  {
    PBDataWriterWriteBOOLField();
  }

  PBDataWriterWriteUint32Field();
  if (self->_personalizeFailureReason)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasPersonalizeFailureResult)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_secureReason)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_result)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v68.receiver = self;
  v68.super_class = BMMASecureDetailEvent;
  v5 = [(BMEventBase *)&v68 init];
  if (!v5)
  {
    goto LABEL_114;
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
        LOBYTE(v69[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v69 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v69[0] & 0x7F) << v7;
        if ((v69[0] & 0x80) == 0)
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

      switch((v14 >> 3))
      {
        case 1u:
          v69[0] = 0;
          v69[1] = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_113;
          }

          v15 = [[BMMAAssetMetadata alloc] initByReadFrom:fromCopy];
          if (!v15)
          {
            goto LABEL_113;
          }

          assetMetaData = v5->_assetMetaData;
          v5->_assetMetaData = v15;

          PBReaderRecallMark();
          goto LABEL_111;
        case 2u:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          v5->_hasClientName = 1;
          while (1)
          {
            LOBYTE(v69[0]) = 0;
            v48 = [fromCopy position] + 1;
            if (v48 >= [fromCopy position] && (v49 = objc_msgSend(fromCopy, "position") + 1, v49 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:v69 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v47 |= (v69[0] & 0x7F) << v45;
            if ((v69[0] & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v13 = v46++ >= 9;
            if (v13)
            {
              LOBYTE(v23) = 0;
LABEL_105:
              v64 = 16;
              goto LABEL_110;
            }
          }

          v23 = (v47 != 0) & ~[fromCopy hasError];
          goto LABEL_105;
        case 3u:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v5->_hasFromLocation = 1;
          while (1)
          {
            LOBYTE(v69[0]) = 0;
            v42 = [fromCopy position] + 1;
            if (v42 >= [fromCopy position] && (v43 = objc_msgSend(fromCopy, "position") + 1, v43 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:v69 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v41 |= (v69[0] & 0x7F) << v39;
            if ((v69[0] & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v13 = v40++ >= 9;
            if (v13)
            {
              LOBYTE(v23) = 0;
              goto LABEL_103;
            }
          }

          v23 = (v41 != 0) & ~[fromCopy hasError];
LABEL_103:
          v64 = 18;
          goto LABEL_110;
        case 4u:
          v30 = PBReaderReadString();
          v31 = 48;
          goto LABEL_82;
        case 5u:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v5->_hasGraftingResult = 1;
          while (1)
          {
            LOBYTE(v69[0]) = 0;
            v27 = [fromCopy position] + 1;
            if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:v69 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v26 |= (v69[0] & 0x7F) << v24;
            if ((v69[0] & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v13 = v25++ >= 9;
            if (v13)
            {
              LOBYTE(v23) = 0;
              goto LABEL_97;
            }
          }

          v23 = (v26 != 0) & ~[fromCopy hasError];
LABEL_97:
          v64 = 20;
          goto LABEL_110;
        case 6u:
          v30 = PBReaderReadString();
          v31 = 56;
          goto LABEL_82;
        case 7u:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          v5->_hasMapExclaveFailureResult = 1;
          while (1)
          {
            LOBYTE(v69[0]) = 0;
            v54 = [fromCopy position] + 1;
            if (v54 >= [fromCopy position] && (v55 = objc_msgSend(fromCopy, "position") + 1, v55 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:v69 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v53 |= (v69[0] & 0x7F) << v51;
            if ((v69[0] & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v13 = v52++ >= 9;
            if (v13)
            {
              LOBYTE(v23) = 0;
              goto LABEL_107;
            }
          }

          v23 = (v53 != 0) & ~[fromCopy hasError];
LABEL_107:
          v64 = 22;
          goto LABEL_110;
        case 8u:
          v30 = PBReaderReadString();
          v31 = 64;
          goto LABEL_82;
        case 9u:
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v5->_hasMountingFailureResult = 1;
          while (1)
          {
            LOBYTE(v69[0]) = 0;
            v61 = [fromCopy position] + 1;
            if (v61 >= [fromCopy position] && (v62 = objc_msgSend(fromCopy, "position") + 1, v62 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:v69 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v60 |= (v69[0] & 0x7F) << v58;
            if ((v69[0] & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v13 = v59++ >= 9;
            if (v13)
            {
              LOBYTE(v23) = 0;
              goto LABEL_109;
            }
          }

          v23 = (v60 != 0) & ~[fromCopy hasError];
LABEL_109:
          v64 = 24;
          goto LABEL_110;
        case 0xAu:
          v32 = 0;
          v33 = 0;
          v34 = 0;
          while (1)
          {
            LOBYTE(v69[0]) = 0;
            v35 = [fromCopy position] + 1;
            if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 1, v36 <= objc_msgSend(fromCopy, "length")))
            {
              data7 = [fromCopy data];
              [data7 getBytes:v69 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v34 |= (v69[0] & 0x7F) << v32;
            if ((v69[0] & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            if (v33++ > 8)
            {
              goto LABEL_100;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v34 > 7)
          {
LABEL_100:
            LODWORD(v34) = 0;
          }

          v5->_maSecureOperationType = v34;
          goto LABEL_111;
        case 0xBu:
          v30 = PBReaderReadString();
          v31 = 72;
          goto LABEL_82;
        case 0xCu:
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v5->_hasPersonalizeFailureResult = 1;
          break;
        case 0xDu:
          v30 = PBReaderReadString();
          v31 = 80;
          goto LABEL_82;
        case 0xEu:
          v30 = PBReaderReadString();
          v31 = 88;
LABEL_82:
          v57 = *(&v5->super.super.isa + v31);
          *(&v5->super.super.isa + v31) = v30;

          goto LABEL_111;
        default:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_113;
          }

          goto LABEL_111;
      }

      while (1)
      {
        LOBYTE(v69[0]) = 0;
        v20 = [fromCopy position] + 1;
        if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
        {
          data8 = [fromCopy data];
          [data8 getBytes:v69 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v19 |= (v69[0] & 0x7F) << v17;
        if ((v69[0] & 0x80) == 0)
        {
          break;
        }

        v17 += 7;
        v13 = v18++ >= 9;
        if (v13)
        {
          LOBYTE(v23) = 0;
          goto LABEL_95;
        }
      }

      v23 = (v19 != 0) & ~[fromCopy hasError];
LABEL_95:
      v64 = 26;
LABEL_110:
      *(&v5->super.super.isa + v64) = v23;
LABEL_111:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_113:
    v66 = 0;
  }

  else
  {
LABEL_114:
    v66 = v5;
  }

  return v66;
}

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  assetMetaData = [(BMMASecureDetailEvent *)self assetMetaData];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent clientName](self, "clientName")}];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent fromLocation](self, "fromLocation")}];
  graftingFailureReason = [(BMMASecureDetailEvent *)self graftingFailureReason];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent graftingResult](self, "graftingResult")}];
  mapExclaveFailureReason = [(BMMASecureDetailEvent *)self mapExclaveFailureReason];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent mapExclaveFailureResult](self, "mapExclaveFailureResult")}];
  mountingFailureReason = [(BMMASecureDetailEvent *)self mountingFailureReason];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent mountingFailureResult](self, "mountingFailureResult")}];
  v7 = BMMASecureOperationTypeAsString([(BMMASecureDetailEvent *)self maSecureOperationType]);
  personalizeFailureReason = [(BMMASecureDetailEvent *)self personalizeFailureReason];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMASecureDetailEvent personalizeFailureResult](self, "personalizeFailureResult")}];
  secureReason = [(BMMASecureDetailEvent *)self secureReason];
  result = [(BMMASecureDetailEvent *)self result];
  v16 = [v15 initWithFormat:@"BMMASecureDetailEvent with assetMetaData: %@, clientName: %@, fromLocation: %@, graftingFailureReason: %@, graftingResult: %@, mapExclaveFailureReason: %@, mapExclaveFailureResult: %@, mountingFailureReason: %@, mountingFailureResult: %@, maSecureOperationType: %@, personalizeFailureReason: %@, personalizeFailureResult: %@, secureReason: %@, result: %@", assetMetaData, v18, v17, graftingFailureReason, v13, mapExclaveFailureReason, v4, mountingFailureReason, v6, v7, personalizeFailureReason, v9, secureReason, result];

  return v16;
}

- (BMMASecureDetailEvent)initWithAssetMetaData:(id)data clientName:(id)name fromLocation:(id)location graftingFailureReason:(id)reason graftingResult:(id)result mapExclaveFailureReason:(id)failureReason mapExclaveFailureResult:(id)failureResult mountingFailureReason:(id)self0 mountingFailureResult:(id)self1 maSecureOperationType:(int)self2 personalizeFailureReason:(id)self3 personalizeFailureResult:(id)self4 secureReason:(id)self5 result:(id)self6
{
  dataCopy = data;
  nameCopy = name;
  locationCopy = location;
  reasonCopy = reason;
  resultCopy = result;
  failureReasonCopy = failureReason;
  failureReasonCopy2 = failureReason;
  v24 = locationCopy;
  failureResultCopy = failureResult;
  mountingFailureReasonCopy = mountingFailureReason;
  mountingFailureResultCopy = mountingFailureResult;
  personalizeFailureReasonCopy = personalizeFailureReason;
  personalizeFailureResultCopy = personalizeFailureResult;
  secureReasonCopy = secureReason;
  v35 = a16;
  v40.receiver = self;
  v40.super_class = BMMASecureDetailEvent;
  v30 = [(BMEventBase *)&v40 init];
  if (v30)
  {
    v30->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v30->_assetMetaData, data);
    if (nameCopy)
    {
      v30->_hasClientName = 1;
      v30->_clientName = [nameCopy BOOLValue];
    }

    else
    {
      v30->_hasClientName = 0;
      v30->_clientName = 0;
    }

    if (v24)
    {
      v30->_hasFromLocation = 1;
      v30->_fromLocation = [v24 BOOLValue];
    }

    else
    {
      v30->_hasFromLocation = 0;
      v30->_fromLocation = 0;
    }

    objc_storeStrong(&v30->_graftingFailureReason, reason);
    if (resultCopy)
    {
      v30->_hasGraftingResult = 1;
      v30->_graftingResult = [resultCopy BOOLValue];
    }

    else
    {
      v30->_hasGraftingResult = 0;
      v30->_graftingResult = 0;
    }

    objc_storeStrong(&v30->_mapExclaveFailureReason, failureReasonCopy);
    if (failureResultCopy)
    {
      v30->_hasMapExclaveFailureResult = 1;
      v30->_mapExclaveFailureResult = [failureResultCopy BOOLValue];
    }

    else
    {
      v30->_hasMapExclaveFailureResult = 0;
      v30->_mapExclaveFailureResult = 0;
    }

    objc_storeStrong(&v30->_mountingFailureReason, mountingFailureReason);
    if (mountingFailureResultCopy)
    {
      v30->_hasMountingFailureResult = 1;
      v30->_mountingFailureResult = [mountingFailureResultCopy BOOLValue];
    }

    else
    {
      v30->_hasMountingFailureResult = 0;
      v30->_mountingFailureResult = 0;
    }

    v30->_maSecureOperationType = type;
    objc_storeStrong(&v30->_personalizeFailureReason, personalizeFailureReason);
    if (personalizeFailureResultCopy)
    {
      v30->_hasPersonalizeFailureResult = 1;
      v30->_personalizeFailureResult = [personalizeFailureResultCopy BOOLValue];
    }

    else
    {
      v30->_hasPersonalizeFailureResult = 0;
      v30->_personalizeFailureResult = 0;
    }

    objc_storeStrong(&v30->_secureReason, secureReason);
    objc_storeStrong(&v30->_result, a16);
  }

  return v30;
}

+ (id)protoFields
{
  v18[14] = *MEMORY[0x1E69E9840];
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetMetaData" number:1 type:14 subMessageClass:objc_opt_class()];
  v18[0] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientName" number:2 type:12 subMessageClass:0];
  v18[1] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fromLocation" number:3 type:12 subMessageClass:0];
  v18[2] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"graftingFailureReason" number:4 type:13 subMessageClass:0];
  v18[3] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"graftingResult" number:5 type:12 subMessageClass:0];
  v18[4] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mapExclaveFailureReason" number:6 type:13 subMessageClass:0];
  v18[5] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mapExclaveFailureResult" number:7 type:12 subMessageClass:0];
  v18[6] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mountingFailureReason" number:8 type:13 subMessageClass:0];
  v18[7] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mountingFailureResult" number:9 type:12 subMessageClass:0];
  v18[8] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"maSecureOperationType" number:10 type:4 subMessageClass:0];
  v18[9] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personalizeFailureReason" number:11 type:13 subMessageClass:0];
  v18[10] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personalizeFailureResult" number:12 type:12 subMessageClass:0];
  v18[11] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"secureReason" number:13 type:13 subMessageClass:0];
  v18[12] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"result" number:14 type:13 subMessageClass:0];
  v18[13] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:14];

  return v11;
}

+ (id)columns
{
  v18[14] = *MEMORY[0x1E69E9840];
  v17 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"assetMetaData_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_367];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientName" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fromLocation" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"graftingFailureReason" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"graftingResult" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mapExclaveFailureReason" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mapExclaveFailureResult" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mountingFailureReason" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mountingFailureResult" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"maSecureOperationType" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personalizeFailureReason" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personalizeFailureResult" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"secureReason" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"result" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v18[0] = v17;
  v18[1] = v16;
  v18[2] = v15;
  v18[3] = v14;
  v18[4] = v2;
  v18[5] = v3;
  v18[6] = v4;
  v18[7] = v5;
  v18[8] = v6;
  v18[9] = v13;
  v18[10] = v7;
  v18[11] = v12;
  v18[12] = v8;
  v18[13] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:14];

  return v11;
}

id __32__BMMASecureDetailEvent_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 assetMetaData];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

+ (BMMASecureDetailEvent)eventWithData:(id)data dataVersion:(unsigned int)version
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

    v8 = [[BMMASecureDetailEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[7] = 0;
    }
  }

  return v4;
}

@end