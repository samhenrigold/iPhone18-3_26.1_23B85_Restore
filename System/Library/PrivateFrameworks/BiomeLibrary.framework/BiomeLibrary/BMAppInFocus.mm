@interface BMAppInFocus
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAppInFocus)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMAppInFocus)initWithLaunchReason:(id)reason type:(int)type starting:(id)starting absoluteTimestamp:(id)timestamp bundleID:(id)d parentBundleID:(id)iD extensionHostID:(id)hostID shortVersionString:(id)self0 exactVersionString:(id)self1 dyldPlatform:(id)self2 isNativeArchitecture:(id)self3 displayType:(int)self4;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAppInFocus

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

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppInFocus *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

+ (id)columns
{
  v18[14] = *MEMORY[0x1E69E9840];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"launchReason" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"launchType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"starting" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:1];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"duration" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"parentBundleID" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"extensionHostID" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shortVersionString" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"exactVersionString" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dyldPlatform" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isNativeArchitecture" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"displayType" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:4 convertedType:0];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    launchReason = [(BMAppInFocus *)self launchReason];
    launchReason2 = [v5 launchReason];
    v8 = launchReason2;
    if (launchReason == launchReason2)
    {
    }

    else
    {
      launchReason3 = [(BMAppInFocus *)self launchReason];
      launchReason4 = [v5 launchReason];
      v11 = [launchReason3 isEqual:launchReason4];

      if (!v11)
      {
        goto LABEL_47;
      }
    }

    type = [(BMAppInFocus *)self type];
    if (type != [v5 type])
    {
      goto LABEL_47;
    }

    if (-[BMAppInFocus hasStarting](self, "hasStarting") || [v5 hasStarting])
    {
      if (![(BMAppInFocus *)self hasStarting])
      {
        goto LABEL_47;
      }

      if (![v5 hasStarting])
      {
        goto LABEL_47;
      }

      starting = [(BMAppInFocus *)self starting];
      if (starting != [v5 starting])
      {
        goto LABEL_47;
      }
    }

    absoluteTimestamp = [(BMAppInFocus *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v17 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMAppInFocus *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v20 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v20)
      {
        goto LABEL_47;
      }
    }

    bundleID = [(BMAppInFocus *)self bundleID];
    bundleID2 = [v5 bundleID];
    v23 = bundleID2;
    if (bundleID == bundleID2)
    {
    }

    else
    {
      bundleID3 = [(BMAppInFocus *)self bundleID];
      bundleID4 = [v5 bundleID];
      v26 = [bundleID3 isEqual:bundleID4];

      if (!v26)
      {
        goto LABEL_47;
      }
    }

    parentBundleID = [(BMAppInFocus *)self parentBundleID];
    parentBundleID2 = [v5 parentBundleID];
    v29 = parentBundleID2;
    if (parentBundleID == parentBundleID2)
    {
    }

    else
    {
      parentBundleID3 = [(BMAppInFocus *)self parentBundleID];
      parentBundleID4 = [v5 parentBundleID];
      v32 = [parentBundleID3 isEqual:parentBundleID4];

      if (!v32)
      {
        goto LABEL_47;
      }
    }

    extensionHostID = [(BMAppInFocus *)self extensionHostID];
    extensionHostID2 = [v5 extensionHostID];
    v35 = extensionHostID2;
    if (extensionHostID == extensionHostID2)
    {
    }

    else
    {
      extensionHostID3 = [(BMAppInFocus *)self extensionHostID];
      extensionHostID4 = [v5 extensionHostID];
      v38 = [extensionHostID3 isEqual:extensionHostID4];

      if (!v38)
      {
        goto LABEL_47;
      }
    }

    shortVersionString = [(BMAppInFocus *)self shortVersionString];
    shortVersionString2 = [v5 shortVersionString];
    v41 = shortVersionString2;
    if (shortVersionString == shortVersionString2)
    {
    }

    else
    {
      shortVersionString3 = [(BMAppInFocus *)self shortVersionString];
      shortVersionString4 = [v5 shortVersionString];
      v44 = [shortVersionString3 isEqual:shortVersionString4];

      if (!v44)
      {
        goto LABEL_47;
      }
    }

    exactVersionString = [(BMAppInFocus *)self exactVersionString];
    exactVersionString2 = [v5 exactVersionString];
    v47 = exactVersionString2;
    if (exactVersionString == exactVersionString2)
    {
    }

    else
    {
      exactVersionString3 = [(BMAppInFocus *)self exactVersionString];
      exactVersionString4 = [v5 exactVersionString];
      v50 = [exactVersionString3 isEqual:exactVersionString4];

      if (!v50)
      {
        goto LABEL_47;
      }
    }

    if (!-[BMAppInFocus hasDyldPlatform](self, "hasDyldPlatform") && ![v5 hasDyldPlatform] || -[BMAppInFocus hasDyldPlatform](self, "hasDyldPlatform") && objc_msgSend(v5, "hasDyldPlatform") && (v51 = -[BMAppInFocus dyldPlatform](self, "dyldPlatform"), v51 == objc_msgSend(v5, "dyldPlatform")))
    {
      if (!-[BMAppInFocus hasIsNativeArchitecture](self, "hasIsNativeArchitecture") && ![v5 hasIsNativeArchitecture] || -[BMAppInFocus hasIsNativeArchitecture](self, "hasIsNativeArchitecture") && objc_msgSend(v5, "hasIsNativeArchitecture") && (v52 = -[BMAppInFocus isNativeArchitecture](self, "isNativeArchitecture"), v52 == objc_msgSend(v5, "isNativeArchitecture")))
      {
        displayType = [(BMAppInFocus *)self displayType];
        v12 = displayType == [v5 displayType];
        goto LABEL_48;
      }
    }

LABEL_47:
    v12 = 0;
LABEL_48:

    goto LABEL_49;
  }

  v12 = 0;
LABEL_49:

  return v12;
}

- (id)jsonDictionary
{
  v67 = *MEMORY[0x1E69E9840];
  launchReason = [(BMAppInFocus *)self launchReason];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppInFocus type](self, "type")}];
  if ([(BMAppInFocus *)self hasStarting])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppInFocus starting](self, "starting")}];
  }

  else
  {
    v5 = 0;
  }

  absoluteTimestamp = [(BMAppInFocus *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v7 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMAppInFocus *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v9 = [v7 numberWithDouble:?];
  }

  else
  {
    v9 = 0;
  }

  bundleID = [(BMAppInFocus *)self bundleID];
  parentBundleID = [(BMAppInFocus *)self parentBundleID];
  extensionHostID = [(BMAppInFocus *)self extensionHostID];
  shortVersionString = [(BMAppInFocus *)self shortVersionString];
  exactVersionString = [(BMAppInFocus *)self exactVersionString];
  if ([(BMAppInFocus *)self hasDyldPlatform])
  {
    v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAppInFocus dyldPlatform](self, "dyldPlatform")}];
  }

  else
  {
    v36 = 0;
  }

  if ([(BMAppInFocus *)self hasIsNativeArchitecture])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppInFocus isNativeArchitecture](self, "isNativeArchitecture")}];
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppInFocus displayType](self, "displayType")}];
  v42[0] = @"launchReason";
  null = launchReason;
  if (!launchReason)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v31 = null;
  v54 = null;
  v42[1] = @"type";
  if (v4)
  {
    v55 = v4;
    v43 = @"launchType";
    null3 = v4;
  }

  else
  {
    null2 = [MEMORY[0x1E695DFB0] null];
    v55 = null2;
    v43 = @"launchType";
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = null3;
  v56 = null3;
  v44 = @"starting";
  null4 = v5;
  if (!v5)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = null4;
  v57 = null4;
  v45 = @"absoluteTimestamp";
  null5 = v9;
  if (!v9)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null5;
  v58 = null5;
  v46 = @"bundleID";
  null6 = bundleID;
  if (!bundleID)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = launchReason;
  v59 = null6;
  v47 = @"parentBundleID";
  null7 = parentBundleID;
  if (!parentBundleID)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v4;
  v60 = null7;
  v48 = @"extensionHostID";
  null8 = extensionHostID;
  if (!extensionHostID)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v5;
  v61 = null8;
  v49 = @"shortVersionString";
  null9 = shortVersionString;
  if (!shortVersionString)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v9;
  v62 = null9;
  v50 = @"exactVersionString";
  null10 = exactVersionString;
  if (!exactVersionString)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null6;
  v63 = null10;
  v51 = @"dyldPlatform";
  null11 = v36;
  if (!v36)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v64 = null11;
  v52 = @"isNativeArchitecture";
  null12 = v10;
  if (!v10)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = null12;
  v53 = @"displayType";
  null13 = v11;
  if (!v11)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = null13;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:v42 count:13];
  if (v11)
  {
    if (v10)
    {
      goto LABEL_40;
    }
  }

  else
  {

    if (v10)
    {
      goto LABEL_40;
    }
  }

LABEL_40:
  if (!v36)
  {
  }

  if (!exactVersionString)
  {
  }

  if (!shortVersionString)
  {
  }

  if (!extensionHostID)
  {
  }

  if (!parentBundleID)
  {
  }

  if (bundleID)
  {
    if (v20)
    {
      goto LABEL_52;
    }
  }

  else
  {

    if (v20)
    {
LABEL_52:
      if (v33)
      {
        goto LABEL_53;
      }

      goto LABEL_62;
    }
  }

  if (v33)
  {
LABEL_53:
    if (v34)
    {
      goto LABEL_54;
    }

LABEL_63:

    if (v35)
    {
      goto LABEL_55;
    }

    goto LABEL_64;
  }

LABEL_62:

  if (!v34)
  {
    goto LABEL_63;
  }

LABEL_54:
  if (v35)
  {
    goto LABEL_55;
  }

LABEL_64:

LABEL_55:

  return v32;
}

- (BMAppInFocus)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v162[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"launchReason"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = [dictionaryCopy objectForKeyedSubscript:@"launchType"];
      if (!v9)
      {
LABEL_8:
        v135 = 0;
        goto LABEL_15;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v9;
      v135 = v9;
      goto LABEL_15;
    }

    errorCopy = error;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v135 = [MEMORY[0x1E696AD98] numberWithInt:BMAppInFocusTypeFromString(v9)];
LABEL_15:
      v11 = [dictionaryCopy objectForKeyedSubscript:@"starting"];
      if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v133 = 0;
        goto LABEL_18;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v133 = v11;
LABEL_18:
        v12 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
        if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v134 = 0;
LABEL_34:
          v37 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
          v130 = v37;
          if (v37 && (v38 = v37, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!error)
              {
                v132 = 0;
                v23 = v135;
                selfCopy19 = self;
                v34 = v133;
LABEL_111:

                goto LABEL_112;
              }

              v55 = v7;
              v56 = objc_alloc(MEMORY[0x1E696ABC0]);
              errorCopy2 = error;
              v58 = *MEMORY[0x1E698F240];
              v153 = *MEMORY[0x1E696A578];
              v131 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
              v154 = v131;
              v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v154 forKeys:&v153 count:1];
              v60 = v56;
              v7 = v55;
              v129 = v59;
              v61 = [v60 initWithDomain:v58 code:2 userInfo:?];
              v132 = 0;
              error = 0;
              *errorCopy2 = v61;
              v23 = v135;
              selfCopy19 = self;
              v34 = v133;
              goto LABEL_110;
            }

            v132 = v38;
          }

          else
          {
            v132 = 0;
          }

          v138 = dictionaryCopy;
          v39 = [dictionaryCopy objectForKeyedSubscript:@"parentBundleID"];
          v125 = v9;
          v129 = v39;
          if (!v39 || (v40 = v39, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v131 = 0;
LABEL_42:
            v41 = [dictionaryCopy objectForKeyedSubscript:@"extensionHostID"];
            v127 = v41;
            if (!v41 || (v42 = v41, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v43 = v6;
              v128 = 0;
              goto LABEL_45;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v43 = v6;
              v128 = v42;
LABEL_45:
              v44 = [dictionaryCopy objectForKeyedSubscript:@"shortVersionString"];
              v122 = v7;
              v120 = v44;
              if (!v44 || (v45 = v44, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v124 = 0;
                goto LABEL_48;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v124 = v45;
LABEL_48:
                v46 = [dictionaryCopy objectForKeyedSubscript:@"exactVersionString"];
                v6 = v43;
                v118 = v46;
                if (v46)
                {
                  v47 = v46;
                  objc_opt_class();
                  v48 = v47;
                  v9 = v125;
                  if (objc_opt_isKindOfClass())
                  {
                    v121 = 0;
                  }

                  else
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      if (!error)
                      {
                        v121 = 0;
                        v23 = v135;
                        selfCopy19 = self;
                        v34 = v133;
                        goto LABEL_107;
                      }

                      v91 = v12;
                      errorCopy3 = error;
                      v93 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v94 = *MEMORY[0x1E698F240];
                      v145 = *MEMORY[0x1E696A578];
                      v119 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"exactVersionString"];
                      v146 = v119;
                      v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
                      v95 = [v93 initWithDomain:v94 code:2 userInfo:v49];
                      v121 = 0;
                      error = 0;
                      *errorCopy3 = v95;
                      v12 = v91;
                      goto LABEL_124;
                    }

                    v121 = v48;
                  }
                }

                else
                {
                  v121 = 0;
                  v9 = v125;
                }

                v49 = [dictionaryCopy objectForKeyedSubscript:@"dyldPlatform"];
                v117 = v11;
                v123 = v12;
                if (!v49 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  errorCopy5 = error;
                  v119 = 0;
                  goto LABEL_63;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  errorCopy5 = error;
                  v119 = v49;
LABEL_63:
                  v50 = [dictionaryCopy objectForKeyedSubscript:@"isNativeArchitecture"];
                  if (!v50 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    selfCopy7 = self;
                    v52 = 0;
                    goto LABEL_66;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    selfCopy7 = self;
                    v52 = v50;
LABEL_66:
                    v53 = [dictionaryCopy objectForKeyedSubscript:@"displayType"];
                    if (v53 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v85 = v53;
                      }

                      else
                      {
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          if (errorCopy5)
                          {
                            v137 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v115 = *MEMORY[0x1E698F240];
                            v139 = *MEMORY[0x1E696A578];
                            v111 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"displayType"];
                            v140 = v111;
                            v112 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
                            *errorCopy5 = [v137 initWithDomain:v115 code:2 userInfo:v112];
                          }

                          v54 = 0;
                          error = 0;
                          goto LABEL_104;
                        }

                        v85 = [MEMORY[0x1E696AD98] numberWithInt:BMAppInFocusDisplayTypeFromString(v53)];
                      }

                      v54 = v85;
                    }

                    else
                    {
                      v54 = 0;
                    }

                    intValue = [v135 intValue];
                    LODWORD(v113) = [v54 intValue];
                    error = [(BMAppInFocus *)selfCopy7 initWithLaunchReason:v122 type:intValue starting:v133 absoluteTimestamp:v134 bundleID:v132 parentBundleID:v131 extensionHostID:v128 shortVersionString:v124 exactVersionString:v121 dyldPlatform:v119 isNativeArchitecture:v52 displayType:v113];
                    selfCopy7 = error;
LABEL_104:

                    v23 = v135;
                    v34 = v133;
LABEL_105:

                    selfCopy19 = selfCopy7;
                    v11 = v117;
                    v12 = v123;
LABEL_106:

                    goto LABEL_107;
                  }

                  selfCopy7 = self;
                  if (errorCopy5)
                  {
                    v114 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v100 = *MEMORY[0x1E698F240];
                    v141 = *MEMORY[0x1E696A578];
                    v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isNativeArchitecture"];
                    v142 = v54;
                    v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
                    v101 = [v114 initWithDomain:v100 code:2 userInfo:v53];
                    v52 = 0;
                    error = 0;
                    *errorCopy5 = v101;
                    goto LABEL_104;
                  }

                  v52 = 0;
                  error = 0;
LABEL_129:
                  v23 = v135;
                  v34 = v133;
                  goto LABEL_105;
                }

                if (error)
                {
                  selfCopy7 = self;
                  errorCopy7 = error;
                  v97 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v98 = *MEMORY[0x1E698F240];
                  v143 = *MEMORY[0x1E696A578];
                  v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"dyldPlatform"];
                  v144 = v52;
                  v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
                  v99 = [v97 initWithDomain:v98 code:2 userInfo:v50];
                  v119 = 0;
                  error = 0;
                  *errorCopy7 = v99;
                  goto LABEL_129;
                }

                v119 = 0;
LABEL_124:
                v23 = v135;
                selfCopy19 = self;
                v34 = v133;
                goto LABEL_106;
              }

              if (error)
              {
                v86 = objc_alloc(MEMORY[0x1E696ABC0]);
                v87 = v12;
                errorCopy8 = error;
                v89 = *MEMORY[0x1E698F240];
                v147 = *MEMORY[0x1E696A578];
                v121 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"shortVersionString"];
                v148 = v121;
                v118 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
                v90 = [v86 initWithDomain:v89 code:2 userInfo:?];
                v124 = 0;
                error = 0;
                *errorCopy8 = v90;
                v12 = v87;
                v23 = v135;
                selfCopy19 = self;
                v34 = v133;
                v6 = v43;
                v9 = v125;
LABEL_107:

                v7 = v122;
LABEL_108:

LABEL_109:
                goto LABEL_110;
              }

              v124 = 0;
              v23 = v135;
              selfCopy19 = self;
              v34 = v133;
              v6 = v43;
              v9 = v125;
LABEL_121:
              dictionaryCopy = v138;
              goto LABEL_108;
            }

            if (error)
            {
              v77 = v11;
              v78 = v7;
              v79 = objc_alloc(MEMORY[0x1E696ABC0]);
              errorCopy9 = error;
              v81 = *MEMORY[0x1E698F240];
              v149 = *MEMORY[0x1E696A578];
              v124 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"extensionHostID"];
              v150 = v124;
              v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
              v83 = v79;
              v7 = v78;
              v11 = v77;
              selfCopy19 = self;
              v120 = v82;
              v84 = [v83 initWithDomain:v81 code:2 userInfo:?];
              v128 = 0;
              error = 0;
              *errorCopy9 = v84;
              v23 = v135;
              v34 = v133;
              goto LABEL_121;
            }

            v128 = 0;
            v23 = v135;
            selfCopy19 = self;
LABEL_117:
            v34 = v133;
            dictionaryCopy = v138;
            goto LABEL_109;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v131 = v40;
            goto LABEL_42;
          }

          if (error)
          {
            v68 = v6;
            v69 = v11;
            v70 = v7;
            v71 = objc_alloc(MEMORY[0x1E696ABC0]);
            errorCopy10 = error;
            v73 = *MEMORY[0x1E698F240];
            v151 = *MEMORY[0x1E696A578];
            v128 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"parentBundleID"];
            v152 = v128;
            v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v152 forKeys:&v151 count:1];
            v75 = v71;
            v7 = v70;
            v11 = v69;
            selfCopy19 = self;
            v6 = v68;
            v9 = v125;
            v127 = v74;
            v76 = [v75 initWithDomain:v73 code:2 userInfo:?];
            v131 = 0;
            error = 0;
            *errorCopy10 = v76;
            v23 = v135;
            goto LABEL_117;
          }

          v131 = 0;
          v23 = v135;
          selfCopy19 = self;
          v34 = v133;
LABEL_110:

          goto LABEL_111;
        }

        errorCopy11 = error;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = MEMORY[0x1E695DF00];
          v15 = v11;
          v16 = v12;
          v17 = [v14 alloc];
          [v16 doubleValue];
          v19 = v18;

          v11 = v15;
          v20 = [v17 initWithTimeIntervalSinceReferenceDate:v19];
LABEL_25:
          v134 = v20;
LABEL_33:
          error = errorCopy11;
          goto LABEL_34;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v36 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v134 = [v36 dateFromString:v12];

          goto LABEL_33;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v12;
          goto LABEL_25;
        }

        if (error)
        {
          v126 = v9;
          v104 = v11;
          v105 = objc_alloc(MEMORY[0x1E696ABC0]);
          v106 = v7;
          v107 = *MEMORY[0x1E698F240];
          v155 = *MEMORY[0x1E696A578];
          v132 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
          v156 = v132;
          v108 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v156 forKeys:&v155 count:1];
          v109 = v105;
          v11 = v104;
          selfCopy19 = self;
          v9 = v126;
          v110 = v107;
          v7 = v106;
          v130 = v108;
          v134 = 0;
          error = 0;
          *errorCopy11 = [v109 initWithDomain:v110 code:2 userInfo:?];
          v23 = v135;
          v34 = v133;
          goto LABEL_111;
        }

        v134 = 0;
        error = 0;
        v23 = v135;
        v34 = v133;
LABEL_30:
        selfCopy19 = self;
LABEL_112:

        goto LABEL_113;
      }

      if (error)
      {
        v26 = v11;
        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v28 = v7;
        v29 = *MEMORY[0x1E698F240];
        v157 = *MEMORY[0x1E696A578];
        errorCopy12 = error;
        v134 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"starting"];
        v158 = v134;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v158 forKeys:&v157 count:1];
        v32 = v27;
        v11 = v26;
        v33 = v29;
        v7 = v28;
        v34 = 0;
        error = 0;
        *errorCopy12 = [v32 initWithDomain:v33 code:2 userInfo:v31];
        v12 = v31;
        v23 = v135;
        goto LABEL_30;
      }

      v34 = 0;
      v23 = v135;
LABEL_91:
      selfCopy19 = self;
LABEL_113:

      goto LABEL_114;
    }

    if (error)
    {
      v62 = objc_alloc(MEMORY[0x1E696ABC0]);
      v63 = v7;
      v64 = *MEMORY[0x1E698F240];
      v159 = *MEMORY[0x1E696A578];
      v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"type"];
      v160 = v34;
      v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
      v66 = v62;
      v11 = v65;
      v67 = v64;
      v7 = v63;
      v23 = 0;
      error = 0;
      *errorCopy = [v66 initWithDomain:v67 code:2 userInfo:v65];
      goto LABEL_91;
    }

    v23 = 0;
    error = 0;
LABEL_98:
    selfCopy19 = self;
LABEL_114:

    goto LABEL_115;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    goto LABEL_4;
  }

  if (error)
  {
    v21 = objc_alloc(MEMORY[0x1E696ABC0]);
    v22 = *MEMORY[0x1E698F240];
    v161 = *MEMORY[0x1E696A578];
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"launchReason"];
    v162[0] = v23;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v162 forKeys:&v161 count:1];
    v24 = [v21 initWithDomain:v22 code:2 userInfo:v9];
    v7 = 0;
    errorCopy13 = error;
    error = 0;
    *errorCopy13 = v24;
    goto LABEL_98;
  }

  v7 = 0;
  selfCopy19 = self;
LABEL_115:

  return error;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_launchReason)
  {
    PBDataWriterWriteStringField();
  }

  PBDataWriterWriteUint32Field();
  if (self->_hasStarting)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRaw_absoluteTimestamp)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_parentBundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_extensionHostID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_shortVersionString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_exactVersionString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasDyldPlatform)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasIsNativeArchitecture)
  {
    PBDataWriterWriteBOOLField();
  }

  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v61.receiver = self;
  v61.super_class = BMAppInFocus;
  v5 = [(BMEventBase *)&v61 init];
  if (!v5)
  {
    goto LABEL_116;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_114;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v62) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v62 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v62) & 0x7F) << v7;
        if ((LOBYTE(v62) & 0x80) == 0)
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
        goto LABEL_114;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 7)
      {
        break;
      }

      if (v15 <= 10)
      {
        switch(v15)
        {
          case 8:
            v23 = PBReaderReadString();
            v24 = 80;
            break;
          case 9:
            v23 = PBReaderReadString();
            v24 = 88;
            break;
          case 0xA:
            v23 = PBReaderReadString();
            v24 = 96;
            break;
          default:
            goto LABEL_88;
        }

LABEL_78:
        v47 = *(&v5->super.super.isa + v24);
        *(&v5->super.super.isa + v24) = v23;

        goto LABEL_113;
      }

      switch(v15)
      {
        case 0xB:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v5->_hasDyldPlatform = 1;
          while (1)
          {
            LOBYTE(v62) = 0;
            v37 = [fromCopy position] + 1;
            if (v37 >= [fromCopy position] && (v38 = objc_msgSend(fromCopy, "position") + 1, v38 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v62 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v36 |= (LOBYTE(v62) & 0x7F) << v34;
            if ((LOBYTE(v62) & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v13 = v35++ >= 9;
            if (v13)
            {
              v40 = 0;
              goto LABEL_102;
            }
          }

          if ([fromCopy hasError])
          {
            v40 = 0;
          }

          else
          {
            v40 = v36;
          }

LABEL_102:
          v56 = 48;
          break;
        case 0xC:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v5->_hasIsNativeArchitecture = 1;
          while (1)
          {
            LOBYTE(v62) = 0;
            v51 = [fromCopy position] + 1;
            if (v51 >= [fromCopy position] && (v52 = objc_msgSend(fromCopy, "position") + 1, v52 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v62 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v50 |= (LOBYTE(v62) & 0x7F) << v48;
            if ((LOBYTE(v62) & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v13 = v49++ >= 9;
            if (v13)
            {
              LOBYTE(v22) = 0;
              goto LABEL_109;
            }
          }

          v22 = (v50 != 0) & ~[fromCopy hasError];
LABEL_109:
          v54 = 35;
LABEL_110:
          *(&v5->super.super.isa + v54) = v22;
          goto LABEL_113;
        case 0xD:
          v25 = 0;
          v26 = 0;
          v27 = 0;
          while (1)
          {
            LOBYTE(v62) = 0;
            v28 = [fromCopy position] + 1;
            if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v62 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v27 |= (LOBYTE(v62) & 0x7F) << v25;
            if ((LOBYTE(v62) & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v31 = v26++ > 8;
            if (v31)
            {
              goto LABEL_97;
            }
          }

          if ([fromCopy hasError])
          {
            v55 = 0;
          }

          else
          {
            v55 = v27;
          }

          if (v55 <= 4)
          {
            v40 = dword_1855456C4[v55];
            goto LABEL_98;
          }

LABEL_97:
          v40 = 0;
LABEL_98:
          v56 = 52;
          break;
        default:
LABEL_88:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_115;
          }

          goto LABEL_113;
      }

      *(&v5->super.super.isa + v56) = v40;
LABEL_113:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_114;
      }
    }

    if (v15 > 3)
    {
      switch(v15)
      {
        case 4:
          v5->_hasRaw_absoluteTimestamp = 1;
          v62 = 0.0;
          v32 = [fromCopy position] + 8;
          if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 8, v33 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v62 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_raw_absoluteTimestamp = v62;
          goto LABEL_113;
        case 6:
          v23 = PBReaderReadString();
          v24 = 64;
          break;
        case 7:
          v23 = PBReaderReadString();
          v24 = 72;
          break;
        default:
          goto LABEL_88;
      }
    }

    else
    {
      if (v15 != 1)
      {
        if (v15 == 2)
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          while (1)
          {
            LOBYTE(v62) = 0;
            v44 = [fromCopy position] + 1;
            if (v44 >= [fromCopy position] && (v45 = objc_msgSend(fromCopy, "position") + 1, v45 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:&v62 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v43 |= (LOBYTE(v62) & 0x7F) << v41;
            if ((LOBYTE(v62) & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v31 = v42++ > 8;
            if (v31)
            {
              goto LABEL_106;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v43 > 3)
          {
LABEL_106:
            LODWORD(v43) = 0;
          }

          v5->_type = v43;
          goto LABEL_113;
        }

        if (v15 != 3)
        {
          goto LABEL_88;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        v5->_hasStarting = 1;
        while (1)
        {
          LOBYTE(v62) = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v62 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (LOBYTE(v62) & 0x7F) << v16;
          if ((LOBYTE(v62) & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v13 = v17++ >= 9;
          if (v13)
          {
            LOBYTE(v22) = 0;
            goto LABEL_91;
          }
        }

        v22 = (v18 != 0) & ~[fromCopy hasError];
LABEL_91:
        v54 = 32;
        goto LABEL_110;
      }

      v23 = PBReaderReadString();
      v24 = 56;
    }

    goto LABEL_78;
  }

LABEL_114:
  if ([fromCopy hasError])
  {
LABEL_115:
    v59 = 0;
  }

  else
  {
LABEL_116:
    v59 = v5;
  }

  return v59;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  launchReason = [(BMAppInFocus *)self launchReason];
  v16 = BMAppInFocusTypeAsString([(BMAppInFocus *)self type]);
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppInFocus starting](self, "starting")}];
  absoluteTimestamp = [(BMAppInFocus *)self absoluteTimestamp];
  bundleID = [(BMAppInFocus *)self bundleID];
  parentBundleID = [(BMAppInFocus *)self parentBundleID];
  extensionHostID = [(BMAppInFocus *)self extensionHostID];
  shortVersionString = [(BMAppInFocus *)self shortVersionString];
  exactVersionString = [(BMAppInFocus *)self exactVersionString];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAppInFocus dyldPlatform](self, "dyldPlatform")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppInFocus isNativeArchitecture](self, "isNativeArchitecture")}];
  v12 = BMAppInFocusDisplayTypeAsString([(BMAppInFocus *)self displayType]);
  v15 = [v14 initWithFormat:@"BMAppInFocus with launchReason: %@, type: %@, starting: %@, absoluteTimestamp: %@, bundleID: %@, parentBundleID: %@, extensionHostID: %@, shortVersionString: %@, exactVersionString: %@, dyldPlatform: %@, isNativeArchitecture: %@, displayType: %@", launchReason, v16, v3, absoluteTimestamp, bundleID, parentBundleID, extensionHostID, shortVersionString, exactVersionString, v10, v11, v12];

  return v15;
}

- (BMAppInFocus)initWithLaunchReason:(id)reason type:(int)type starting:(id)starting absoluteTimestamp:(id)timestamp bundleID:(id)d parentBundleID:(id)iD extensionHostID:(id)hostID shortVersionString:(id)self0 exactVersionString:(id)self1 dyldPlatform:(id)self2 isNativeArchitecture:(id)self3 displayType:(int)self4
{
  reasonCopy = reason;
  startingCopy = starting;
  timestampCopy = timestamp;
  dCopy = d;
  dCopy2 = d;
  iDCopy = iD;
  hostIDCopy = hostID;
  stringCopy = string;
  versionStringCopy = versionString;
  platformCopy = platform;
  v21 = timestampCopy;
  architectureCopy = architecture;
  v37.receiver = self;
  v37.super_class = BMAppInFocus;
  v23 = [(BMEventBase *)&v37 init];
  if (v23)
  {
    v23->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v23->_launchReason, reason);
    v23->_type = type;
    if (startingCopy)
    {
      v23->_hasStarting = 1;
      v23->_starting = [startingCopy BOOLValue];
    }

    else
    {
      v23->_hasStarting = 0;
      v23->_starting = 0;
    }

    if (v21)
    {
      v23->_hasRaw_absoluteTimestamp = 1;
      [v21 timeIntervalSinceReferenceDate];
    }

    else
    {
      v23->_hasRaw_absoluteTimestamp = 0;
      v24 = -1.0;
    }

    v23->_raw_absoluteTimestamp = v24;
    objc_storeStrong(&v23->_bundleID, dCopy);
    objc_storeStrong(&v23->_parentBundleID, iD);
    objc_storeStrong(&v23->_extensionHostID, hostID);
    objc_storeStrong(&v23->_shortVersionString, string);
    objc_storeStrong(&v23->_exactVersionString, versionString);
    if (platformCopy)
    {
      v23->_hasDyldPlatform = 1;
      unsignedIntValue = [platformCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v23->_hasDyldPlatform = 0;
    }

    v23->_dyldPlatform = unsignedIntValue;
    if (architectureCopy)
    {
      v23->_hasIsNativeArchitecture = 1;
      v23->_isNativeArchitecture = [architectureCopy BOOLValue];
    }

    else
    {
      v23->_hasIsNativeArchitecture = 0;
      v23->_isNativeArchitecture = 0;
    }

    v23->_displayType = displayType;
  }

  return v23;
}

+ (id)protoFields
{
  v17[13] = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"launchReason" number:1 type:13 subMessageClass:0];
  v17[0] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:2 type:4 subMessageClass:0];
  v17[1] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"starting" number:3 type:12 subMessageClass:0];
  v17[2] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:4 type:0 subMessageClass:0];
  v17[3] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"duration" number:5 type:0 subMessageClass:0];
  v17[4] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:6 type:13 subMessageClass:0];
  v17[5] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"parentBundleID" number:7 type:13 subMessageClass:0];
  v17[6] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"extensionHostID" number:8 type:13 subMessageClass:0];
  v17[7] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shortVersionString" number:9 type:13 subMessageClass:0];
  v17[8] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"exactVersionString" number:10 type:13 subMessageClass:0];
  v17[9] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dyldPlatform" number:11 type:4 subMessageClass:0];
  v17[10] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isNativeArchitecture" number:12 type:12 subMessageClass:0];
  v17[11] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"displayType" number:13 type:4 subMessageClass:0];
  v17[12] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:13];

  return v11;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 10)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMAppInFocus alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[10] = 10;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end