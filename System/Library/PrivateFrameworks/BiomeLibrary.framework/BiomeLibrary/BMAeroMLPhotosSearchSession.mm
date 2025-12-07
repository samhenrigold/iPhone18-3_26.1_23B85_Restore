@interface BMAeroMLPhotosSearchSession
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAeroMLPhotosSearchSession)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMAeroMLPhotosSearchSession)initWithQueryRaw:(id)raw queryEmbedding:(id)embedding presentedAssets:(id)assets language:(id)language region:(id)region version:(id)version libraryProcessingProgress:(id)progress librarySizeBucket:(int)self0;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_presentedAssetsJSONArray;
- (id)_queryEmbeddingJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAeroMLPhotosSearchSession

+ (id)columns
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"queryRaw" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"queryEmbedding_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_216];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"presentedAssets_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_218];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"language" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"region" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"version" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"libraryProcessingProgress" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"librarySizeBucket" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:4 convertedType:0];
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v12[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:8];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    queryRaw = [(BMAeroMLPhotosSearchSession *)self queryRaw];
    queryRaw2 = [v5 queryRaw];
    v8 = queryRaw2;
    if (queryRaw == queryRaw2)
    {
    }

    else
    {
      queryRaw3 = [(BMAeroMLPhotosSearchSession *)self queryRaw];
      queryRaw4 = [v5 queryRaw];
      v11 = [queryRaw3 isEqual:queryRaw4];

      if (!v11)
      {
        goto LABEL_33;
      }
    }

    queryEmbedding = [(BMAeroMLPhotosSearchSession *)self queryEmbedding];
    queryEmbedding2 = [v5 queryEmbedding];
    v15 = queryEmbedding2;
    if (queryEmbedding == queryEmbedding2)
    {
    }

    else
    {
      queryEmbedding3 = [(BMAeroMLPhotosSearchSession *)self queryEmbedding];
      queryEmbedding4 = [v5 queryEmbedding];
      v18 = [queryEmbedding3 isEqual:queryEmbedding4];

      if (!v18)
      {
        goto LABEL_33;
      }
    }

    presentedAssets = [(BMAeroMLPhotosSearchSession *)self presentedAssets];
    presentedAssets2 = [v5 presentedAssets];
    v21 = presentedAssets2;
    if (presentedAssets == presentedAssets2)
    {
    }

    else
    {
      presentedAssets3 = [(BMAeroMLPhotosSearchSession *)self presentedAssets];
      presentedAssets4 = [v5 presentedAssets];
      v24 = [presentedAssets3 isEqual:presentedAssets4];

      if (!v24)
      {
        goto LABEL_33;
      }
    }

    language = [(BMAeroMLPhotosSearchSession *)self language];
    language2 = [v5 language];
    v27 = language2;
    if (language == language2)
    {
    }

    else
    {
      language3 = [(BMAeroMLPhotosSearchSession *)self language];
      language4 = [v5 language];
      v30 = [language3 isEqual:language4];

      if (!v30)
      {
        goto LABEL_33;
      }
    }

    region = [(BMAeroMLPhotosSearchSession *)self region];
    region2 = [v5 region];
    v33 = region2;
    if (region == region2)
    {
    }

    else
    {
      region3 = [(BMAeroMLPhotosSearchSession *)self region];
      region4 = [v5 region];
      v36 = [region3 isEqual:region4];

      if (!v36)
      {
        goto LABEL_33;
      }
    }

    version = [(BMAeroMLPhotosSearchSession *)self version];
    version2 = [v5 version];
    v39 = version2;
    if (version == version2)
    {
    }

    else
    {
      version3 = [(BMAeroMLPhotosSearchSession *)self version];
      version4 = [v5 version];
      v42 = [version3 isEqual:version4];

      if (!v42)
      {
        goto LABEL_33;
      }
    }

    if (!-[BMAeroMLPhotosSearchSession hasLibraryProcessingProgress](self, "hasLibraryProcessingProgress") && ![v5 hasLibraryProcessingProgress] || -[BMAeroMLPhotosSearchSession hasLibraryProcessingProgress](self, "hasLibraryProcessingProgress") && objc_msgSend(v5, "hasLibraryProcessingProgress") && (v43 = -[BMAeroMLPhotosSearchSession libraryProcessingProgress](self, "libraryProcessingProgress"), v43 == objc_msgSend(v5, "libraryProcessingProgress")))
    {
      librarySizeBucket = [(BMAeroMLPhotosSearchSession *)self librarySizeBucket];
      v12 = librarySizeBucket == [v5 librarySizeBucket];
LABEL_34:

      goto LABEL_35;
    }

LABEL_33:
    v12 = 0;
    goto LABEL_34;
  }

  v12 = 0;
LABEL_35:

  return v12;
}

- (id)jsonDictionary
{
  v26[8] = *MEMORY[0x1E69E9840];
  queryRaw = [(BMAeroMLPhotosSearchSession *)self queryRaw];
  _queryEmbeddingJSONArray = [(BMAeroMLPhotosSearchSession *)self _queryEmbeddingJSONArray];
  _presentedAssetsJSONArray = [(BMAeroMLPhotosSearchSession *)self _presentedAssetsJSONArray];
  language = [(BMAeroMLPhotosSearchSession *)self language];
  region = [(BMAeroMLPhotosSearchSession *)self region];
  version = [(BMAeroMLPhotosSearchSession *)self version];
  if ([(BMAeroMLPhotosSearchSession *)self hasLibraryProcessingProgress])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchSession libraryProcessingProgress](self, "libraryProcessingProgress")}];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAeroMLPhotosSearchSession librarySizeBucket](self, "librarySizeBucket")}];
  v25[0] = @"queryRaw";
  null = queryRaw;
  if (!queryRaw)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null;
  v26[0] = null;
  v25[1] = @"queryEmbedding";
  null2 = _queryEmbeddingJSONArray;
  if (!_queryEmbeddingJSONArray)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null2;
  v26[1] = null2;
  v25[2] = @"presentedAssets";
  null3 = _presentedAssetsJSONArray;
  if (!_presentedAssetsJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = null3;
  v26[2] = null3;
  v25[3] = @"language";
  null4 = language;
  if (!language)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = queryRaw;
  v26[3] = null4;
  v25[4] = @"region";
  null5 = region;
  if (!region)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
  v25[5] = @"version";
  null6 = version;
  if (!version)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = null6;
  v25[6] = @"libraryProcessingProgress";
  null7 = v6;
  if (!v6)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v26[6] = null7;
  v25[7] = @"librarySizeBucket";
  null8 = v7;
  if (!v7)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v26[7] = null8;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:8];
  if (v7)
  {
    if (v6)
    {
      goto LABEL_22;
    }
  }

  else
  {

    if (v6)
    {
      goto LABEL_22;
    }
  }

LABEL_22:
  if (!version)
  {
  }

  if (!region)
  {
  }

  if (language)
  {
    if (_presentedAssetsJSONArray)
    {
      goto LABEL_28;
    }
  }

  else
  {

    if (_presentedAssetsJSONArray)
    {
LABEL_28:
      if (_queryEmbeddingJSONArray)
      {
        goto LABEL_29;
      }

LABEL_37:

      if (v21)
      {
        goto LABEL_30;
      }

      goto LABEL_38;
    }
  }

  if (!_queryEmbeddingJSONArray)
  {
    goto LABEL_37;
  }

LABEL_29:
  if (v21)
  {
    goto LABEL_30;
  }

LABEL_38:

LABEL_30:

  return v16;
}

- (id)_presentedAssetsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  presentedAssets = [(BMAeroMLPhotosSearchSession *)self presentedAssets];
  v5 = [presentedAssets countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(presentedAssets);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [presentedAssets countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_queryEmbeddingJSONArray
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  queryEmbedding = [(BMAeroMLPhotosSearchSession *)self queryEmbedding];
  v5 = [queryEmbedding countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(queryEmbedding);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        [v9 doubleValue];
        if (fabs(v10) == INFINITY)
        {
          null = [MEMORY[0x1E695DFB0] null];
          [v3 addObject:null];
        }

        else
        {
          [v9 doubleValue];
          [v3 addObject:v9];
        }
      }

      v6 = [queryEmbedding countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMAeroMLPhotosSearchSession)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v143[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"queryRaw"];
  v104 = v6;
  if (v6 && (v7 = v6, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32 = *MEMORY[0x1E698F240];
        v142 = *MEMORY[0x1E696A578];
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"queryRaw"];
        v143[0] = v9;
        v108 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v143 forKeys:&v142 count:1];
        v8 = 0;
        selfCopy2 = 0;
        *error = [v31 initWithDomain:v32 code:2 userInfo:?];

        goto LABEL_105;
      }

      v8 = 0;
      selfCopy2 = 0;
      goto LABEL_106;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"queryEmbedding"];
  null = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:null];

  selfCopy = self;
  if (v11)
  {
    v97 = v8;

    v9 = 0;
  }

  else
  {
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v43 = objc_alloc(MEMORY[0x1E696ABC0]);
          v44 = *MEMORY[0x1E698F240];
          v140 = *MEMORY[0x1E696A578];
          v107 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"queryEmbedding"];
          v141 = v107;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
          selfCopy2 = 0;
          *error = [v43 initWithDomain:v44 code:2 userInfo:v18];
          goto LABEL_104;
        }

        selfCopy2 = 0;
        goto LABEL_105;
      }
    }

    v97 = v8;
  }

  v107 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v9 = v9;
  v12 = [v9 countByEnumeratingWithState:&v114 objects:v139 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v115;
    do
    {
      v15 = dictionaryCopy;
      for (i = 0; i != v13; ++i)
      {
        if (*v115 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v114 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          errorCopy2 = error;
          if (error)
          {
            v22 = objc_alloc(MEMORY[0x1E696ABC0]);
            v23 = *MEMORY[0x1E698F240];
            v137 = *MEMORY[0x1E696A578];
            v106 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"queryEmbedding"];
            v138 = v106;
            v24 = MEMORY[0x1E695DF20];
            v25 = &v138;
            v26 = &v137;
            goto LABEL_26;
          }

LABEL_28:
          selfCopy2 = 0;
          v18 = v9;
          dictionaryCopy = v15;
          v8 = v97;
          goto LABEL_104;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            goto LABEL_28;
          }

          v22 = objc_alloc(MEMORY[0x1E696ABC0]);
          v23 = *MEMORY[0x1E698F240];
          v135 = *MEMORY[0x1E696A578];
          v27 = objc_alloc(MEMORY[0x1E696AEC0]);
          v84 = objc_opt_class();
          v28 = v27;
          errorCopy2 = error;
          v106 = [v28 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v84, @"queryEmbedding"];
          v136 = v106;
          v24 = MEMORY[0x1E695DF20];
          v25 = &v136;
          v26 = &v135;
LABEL_26:
          v29 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:1];
          dictionaryCopy = v15;
          selfCopy2 = 0;
          *errorCopy2 = [v22 initWithDomain:v23 code:2 userInfo:?];
          v18 = v9;
LABEL_27:
          v8 = v97;
          goto LABEL_103;
        }

        [v107 addObject:v17];
      }

      v13 = [v9 countByEnumeratingWithState:&v114 objects:v139 count:16];
      dictionaryCopy = v15;
    }

    while (v13);
  }

  v18 = [dictionaryCopy objectForKeyedSubscript:@"presentedAssets"];
  null2 = [MEMORY[0x1E695DFB0] null];
  v20 = [v18 isEqual:null2];

  if (v20)
  {
    v96 = dictionaryCopy;

    v18 = 0;
  }

  else
  {
    if (v18)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          selfCopy2 = 0;
          v8 = v97;
          goto LABEL_104;
        }

        v54 = objc_alloc(MEMORY[0x1E696ABC0]);
        v55 = *MEMORY[0x1E698F240];
        v133 = *MEMORY[0x1E696A578];
        v106 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"presentedAssets"];
        v134 = v106;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
        v56 = [v54 initWithDomain:v55 code:2 userInfo:v29];
        selfCopy2 = 0;
        *error = v56;
        goto LABEL_27;
      }
    }

    v96 = dictionaryCopy;
  }

  v106 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v18 = v18;
  v33 = [v18 countByEnumeratingWithState:&v110 objects:v132 count:16];
  v103 = v18;
  if (!v33)
  {
    goto LABEL_44;
  }

  v34 = v33;
  v35 = *v111;
  while (2)
  {
    for (j = 0; j != v34; ++j)
    {
      if (*v111 != v35)
      {
        objc_enumerationMutation(v18);
      }

      v37 = *(*(&v110 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy4 = error;
        if (error)
        {
          v46 = objc_alloc(MEMORY[0x1E696ABC0]);
          v47 = *MEMORY[0x1E698F240];
          v130 = *MEMORY[0x1E696A578];
          v48 = v18;
          v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"presentedAssets"];
          v131 = v38;
          v49 = MEMORY[0x1E695DF20];
          v50 = &v131;
          v51 = &v130;
LABEL_58:
          errorCopy5 = [v49 dictionaryWithObjects:v50 forKeys:v51 count:1];
          v52 = [v46 initWithDomain:v47 code:2 userInfo:errorCopy5];
          selfCopy2 = 0;
          *errorCopy4 = v52;
          v29 = v48;
LABEL_62:
          dictionaryCopy = v96;
          v8 = v97;
          self = selfCopy;
          goto LABEL_101;
        }

LABEL_65:
        selfCopy2 = 0;
        v29 = v18;
        dictionaryCopy = v96;
        self = selfCopy;
        goto LABEL_27;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        errorCopy4 = error;
        if (error)
        {
          v46 = objc_alloc(MEMORY[0x1E696ABC0]);
          v47 = *MEMORY[0x1E698F240];
          v128 = *MEMORY[0x1E696A578];
          v48 = v18;
          v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"presentedAssets"];
          v129 = v38;
          v49 = MEMORY[0x1E695DF20];
          v50 = &v129;
          v51 = &v128;
          goto LABEL_58;
        }

        goto LABEL_65;
      }

      v38 = v37;
      v39 = [BMAeroMLPhotosSearchSessionAsset alloc];
      v109 = 0;
      v40 = [(BMAeroMLPhotosSearchSessionAsset *)v39 initWithJSONDictionary:v38 error:&v109];
      v41 = v109;
      if (v41)
      {
        errorCopy5 = v41;
        if (error)
        {
          v53 = v41;
          *error = errorCopy5;
        }

        selfCopy2 = 0;
        v29 = v103;
        goto LABEL_62;
      }

      [v106 addObject:v40];

      v18 = v103;
    }

    v34 = [v103 countByEnumeratingWithState:&v110 objects:v132 count:16];
    self = selfCopy;
    if (v34)
    {
      continue;
    }

    break;
  }

LABEL_44:

  dictionaryCopy = v96;
  v38 = [v96 objectForKeyedSubscript:@"language"];
  if (!v38 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v29 = 0;
    goto LABEL_47;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = v38;
LABEL_47:
    errorCopy5 = [v96 objectForKeyedSubscript:@"region"];
    v8 = v97;
    v93 = errorCopy5;
    if (errorCopy5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy5 = 0;
        goto LABEL_70;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy5 = errorCopy5;
        goto LABEL_70;
      }

      errorCopy5 = error;
      if (error)
      {
        v100 = objc_alloc(MEMORY[0x1E696ABC0]);
        v66 = *MEMORY[0x1E698F240];
        v124 = *MEMORY[0x1E696A578];
        v95 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"region"];
        v125 = v95;
        v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
        v68 = v66;
        v69 = v67;
        errorCopy5 = 0;
        selfCopy2 = 0;
        *error = [v100 initWithDomain:v68 code:2 userInfo:v67];
        goto LABEL_99;
      }

      selfCopy2 = 0;
LABEL_100:

LABEL_101:
      goto LABEL_102;
    }

LABEL_70:
    v57 = [v96 objectForKeyedSubscript:@"version"];
    if (v57 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v90 = v57;
        v95 = v57;
        goto LABEL_73;
      }

      v69 = v57;
      if (error)
      {
        v70 = objc_alloc(MEMORY[0x1E696ABC0]);
        v101 = *MEMORY[0x1E698F240];
        v122 = *MEMORY[0x1E696A578];
        v71 = v29;
        v72 = objc_alloc(MEMORY[0x1E696AEC0]);
        v85 = objc_opt_class();
        v73 = v72;
        v29 = v71;
        v92 = [v73 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v85, @"version"];
        v123 = v92;
        v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
        v74 = [v70 initWithDomain:v101 code:2 userInfo:?];
        v95 = 0;
        selfCopy2 = 0;
        *error = v74;
        v8 = v97;
        goto LABEL_98;
      }

      v95 = 0;
      selfCopy2 = 0;
    }

    else
    {
      v90 = v57;
      v95 = 0;
LABEL_73:
      v58 = [v96 objectForKeyedSubscript:@"libraryProcessingProgress"];
      v91 = v58;
      if (v58 && (v59 = v58, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v92 = v59;
          goto LABEL_76;
        }

        if (error)
        {
          v75 = objc_alloc(MEMORY[0x1E696ABC0]);
          v102 = *MEMORY[0x1E698F240];
          v120 = *MEMORY[0x1E696A578];
          v76 = v29;
          v77 = objc_alloc(MEMORY[0x1E696AEC0]);
          v86 = objc_opt_class();
          v78 = v77;
          v29 = v76;
          v62 = [v78 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v86, @"libraryProcessingProgress"];
          v121 = v62;
          v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
          v79 = [v75 initWithDomain:v102 code:2 userInfo:?];
          v92 = 0;
          selfCopy2 = 0;
          *error = v79;
          goto LABEL_97;
        }

        v92 = 0;
        selfCopy2 = 0;
        v69 = v90;
      }

      else
      {
        v92 = 0;
LABEL_76:
        v60 = [v96 objectForKeyedSubscript:@"librarySizeBucket"];
        v98 = v60;
        if (!v60 || (v61 = v60, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v62 = 0;
          goto LABEL_96;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v62 = v61;
          goto LABEL_96;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v62 = [MEMORY[0x1E696AD98] numberWithInt:BMAeroMLPhotosSearchSessionPhotosLibrarySizeBucketFromString(v61)];
          self = selfCopy;
LABEL_96:
          LODWORD(v87) = [v62 intValue];
          self = [(BMAeroMLPhotosSearchSession *)self initWithQueryRaw:v8 queryEmbedding:v107 presentedAssets:v106 language:v29 region:errorCopy5 version:v95 libraryProcessingProgress:v92 librarySizeBucket:v87];
          selfCopy2 = self;
        }

        else
        {
          if (error)
          {
            v89 = objc_alloc(MEMORY[0x1E696ABC0]);
            v88 = *MEMORY[0x1E698F240];
            v118 = *MEMORY[0x1E696A578];
            v81 = v29;
            v82 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"librarySizeBucket"];
            v119 = v82;
            v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
            *error = [v89 initWithDomain:v88 code:2 userInfo:v83];

            v29 = v81;
          }

          v62 = 0;
          selfCopy2 = 0;
          self = selfCopy;
        }

LABEL_97:
        v69 = v90;
      }

LABEL_98:
    }

LABEL_99:

    goto LABEL_100;
  }

  if (error)
  {
    v63 = objc_alloc(MEMORY[0x1E696ABC0]);
    v64 = *MEMORY[0x1E698F240];
    v126 = *MEMORY[0x1E696A578];
    errorCopy5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"language"];
    v127 = errorCopy5;
    v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
    v65 = [v63 initWithDomain:v64 code:2 userInfo:?];
    v29 = 0;
    selfCopy2 = 0;
    *error = v65;
    v8 = v97;

    goto LABEL_101;
  }

  v29 = 0;
  selfCopy2 = 0;
  v8 = v97;
LABEL_102:

  v18 = v103;
LABEL_103:

LABEL_104:
LABEL_105:

  v7 = v104;
LABEL_106:

  return selfCopy2;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAeroMLPhotosSearchSession *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v26 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_queryRaw)
  {
    PBDataWriterWriteStringField();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_queryEmbedding;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v20 + 1) + 8 * i) doubleValue];
        PBDataWriterWriteDoubleField();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = self->_presentedAssets;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * j);
        PBDataWriterPlaceMark();
        [v15 writeTo:toCopy];
        PBDataWriterRecallMark();
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  if (self->_language)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_region)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_version)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasLibraryProcessingProgress)
  {
    PBDataWriterWriteUint32Field();
  }

  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v50.receiver = self;
  v50.super_class = BMAeroMLPhotosSearchSession;
  v5 = [(BMEventBase *)&v50 init];
  if (!v5)
  {
    goto LABEL_75;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v51[0]) = 0;
        v12 = [fromCopy position] + 1;
        if (v12 >= [fromCopy position] && (v13 = objc_msgSend(fromCopy, "position") + 1, v13 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v51 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v11 |= (LOBYTE(v51[0]) & 0x7F) << v9;
        if ((LOBYTE(v51[0]) & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v15 = v10++ >= 9;
        if (v15)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [fromCopy hasError] ? 0 : v11;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        break;
      }

      v17 = v16 >> 3;
      if ((v16 >> 3) > 4)
      {
        if (v17 > 6)
        {
          if (v17 == 7)
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v5->_hasLibraryProcessingProgress = 1;
            while (1)
            {
              LOBYTE(v51[0]) = 0;
              v36 = [fromCopy position] + 1;
              if (v36 >= [fromCopy position] && (v37 = objc_msgSend(fromCopy, "position") + 1, v37 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:v51 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v35 |= (LOBYTE(v51[0]) & 0x7F) << v33;
              if ((LOBYTE(v51[0]) & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v15 = v34++ >= 9;
              if (v15)
              {
                v39 = 0;
                goto LABEL_63;
              }
            }

            if ([fromCopy hasError])
            {
              v39 = 0;
            }

            else
            {
              v39 = v35;
            }

LABEL_63:
            v5->_libraryProcessingProgress = v39;
            goto LABEL_72;
          }

          if (v17 == 8)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            while (1)
            {
              LOBYTE(v51[0]) = 0;
              v26 = [fromCopy position] + 1;
              if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:v51 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v25 |= (LOBYTE(v51[0]) & 0x7F) << v23;
              if ((LOBYTE(v51[0]) & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              if (v24++ > 8)
              {
                goto LABEL_66;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v25 > 0xA)
            {
LABEL_66:
              LODWORD(v25) = 0;
            }

            v5->_librarySizeBucket = v25;
            goto LABEL_72;
          }
        }

        else
        {
          if (v17 == 5)
          {
            v21 = PBReaderReadString();
            v22 = 64;
            goto LABEL_45;
          }

          if (v17 == 6)
          {
            v21 = PBReaderReadString();
            v22 = 72;
LABEL_45:
            v30 = *(&v5->super.super.isa + v22);
            *(&v5->super.super.isa + v22) = v21;

            goto LABEL_72;
          }
        }
      }

      else if (v17 > 2)
      {
        if (v17 == 3)
        {
          v51[0] = 0.0;
          v51[1] = 0.0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_77;
          }

          v31 = [[BMAeroMLPhotosSearchSessionAsset alloc] initByReadFrom:fromCopy];
          if (!v31)
          {
            goto LABEL_77;
          }

          v32 = v31;
          [v7 addObject:v31];
          PBReaderRecallMark();
LABEL_71:

          goto LABEL_72;
        }

        if (v17 == 4)
        {
          v21 = PBReaderReadString();
          v22 = 56;
          goto LABEL_45;
        }
      }

      else
      {
        if (v17 == 1)
        {
          v21 = PBReaderReadString();
          v22 = 32;
          goto LABEL_45;
        }

        if (v17 == 2)
        {
          v18 = MEMORY[0x1E696AD98];
          v51[0] = 0.0;
          v19 = [fromCopy position] + 8;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 8, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:v51 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v41 = [v18 numberWithDouble:v51[0]];
          if (!v41)
          {
LABEL_77:

            goto LABEL_74;
          }

          v32 = v41;
          [v6 addObject:v41];
          goto LABEL_71;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_77;
      }

LABEL_72:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v43 = [v6 copy];
  queryEmbedding = v5->_queryEmbedding;
  v5->_queryEmbedding = v43;

  v45 = [v7 copy];
  presentedAssets = v5->_presentedAssets;
  v5->_presentedAssets = v45;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_74:
    v48 = 0;
  }

  else
  {
LABEL_75:
    v48 = v5;
  }

  return v48;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  queryRaw = [(BMAeroMLPhotosSearchSession *)self queryRaw];
  queryEmbedding = [(BMAeroMLPhotosSearchSession *)self queryEmbedding];
  presentedAssets = [(BMAeroMLPhotosSearchSession *)self presentedAssets];
  language = [(BMAeroMLPhotosSearchSession *)self language];
  region = [(BMAeroMLPhotosSearchSession *)self region];
  version = [(BMAeroMLPhotosSearchSession *)self version];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchSession libraryProcessingProgress](self, "libraryProcessingProgress")}];
  v11 = BMAeroMLPhotosSearchSessionPhotosLibrarySizeBucketAsString([(BMAeroMLPhotosSearchSession *)self librarySizeBucket]);
  v12 = [v3 initWithFormat:@"BMAeroMLPhotosSearchSession with queryRaw: %@, queryEmbedding: %@, presentedAssets: %@, language: %@, region: %@, version: %@, libraryProcessingProgress: %@, librarySizeBucket: %@", queryRaw, queryEmbedding, presentedAssets, language, region, version, v10, v11];

  return v12;
}

- (BMAeroMLPhotosSearchSession)initWithQueryRaw:(id)raw queryEmbedding:(id)embedding presentedAssets:(id)assets language:(id)language region:(id)region version:(id)version libraryProcessingProgress:(id)progress librarySizeBucket:(int)self0
{
  rawCopy = raw;
  embeddingCopy = embedding;
  assetsCopy = assets;
  languageCopy = language;
  regionCopy = region;
  versionCopy = version;
  progressCopy = progress;
  v27.receiver = self;
  v27.super_class = BMAeroMLPhotosSearchSession;
  v20 = [(BMEventBase *)&v27 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v20->_queryRaw, raw);
    objc_storeStrong(&v20->_queryEmbedding, embedding);
    objc_storeStrong(&v20->_presentedAssets, assets);
    objc_storeStrong(&v20->_language, language);
    objc_storeStrong(&v20->_region, region);
    objc_storeStrong(&v20->_version, version);
    if (progressCopy)
    {
      v20->_hasLibraryProcessingProgress = 1;
      unsignedIntValue = [progressCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v20->_hasLibraryProcessingProgress = 0;
    }

    v20->_libraryProcessingProgress = unsignedIntValue;
    v20->_librarySizeBucket = bucket;
  }

  return v20;
}

+ (id)protoFields
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"queryRaw" number:1 type:13 subMessageClass:0];
  v12[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"queryEmbedding" number:2 type:0 subMessageClass:0];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"presentedAssets" number:3 type:14 subMessageClass:objc_opt_class()];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"language" number:4 type:13 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"region" number:5 type:13 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"version" number:6 type:13 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"libraryProcessingProgress" number:7 type:4 subMessageClass:0];
  v12[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"librarySizeBucket" number:8 type:4 subMessageClass:0];
  v12[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:8];

  return v10;
}

id __38__BMAeroMLPhotosSearchSession_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _presentedAssetsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __38__BMAeroMLPhotosSearchSession_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _queryEmbeddingJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
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

    v8 = [[BMAeroMLPhotosSearchSession alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end