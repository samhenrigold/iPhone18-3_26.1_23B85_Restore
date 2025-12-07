@interface BMAutonamingInferences
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAutonamingInferences)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMAutonamingInferences)initWithPhotosPersonIdentifier:(id)identifier inferredName:(id)name inferredContactIdentifier:(id)contactIdentifier inferredRelationshipToDeviceOwner:(id)owner confidence:(id)confidence;
- (BMAutonamingInferences)initWithPhotosPersonIdentifier:(id)identifier inferredName:(id)name inferredContactIdentifier:(id)contactIdentifier inferredRelationshipToDeviceOwner:(id)owner confidence:(id)confidence imageMessageIdentifier:(id)messageIdentifier contextMessageIdentifiers:(id)identifiers modelVersion:(id)self0;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_contextMessageIdentifiersJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAutonamingInferences

+ (id)columns
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"photosPersonIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"inferredName" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"inferredContactIdentifier" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"inferredRelationshipToDeviceOwner" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"confidence" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:1 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"imageMessageIdentifier" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"contextMessageIdentifiers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_41127];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"modelVersion" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
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
    photosPersonIdentifier = [(BMAutonamingInferences *)self photosPersonIdentifier];
    photosPersonIdentifier2 = [v5 photosPersonIdentifier];
    v8 = photosPersonIdentifier2;
    if (photosPersonIdentifier == photosPersonIdentifier2)
    {
    }

    else
    {
      photosPersonIdentifier3 = [(BMAutonamingInferences *)self photosPersonIdentifier];
      photosPersonIdentifier4 = [v5 photosPersonIdentifier];
      v11 = [photosPersonIdentifier3 isEqual:photosPersonIdentifier4];

      if (!v11)
      {
        goto LABEL_30;
      }
    }

    inferredName = [(BMAutonamingInferences *)self inferredName];
    inferredName2 = [v5 inferredName];
    v15 = inferredName2;
    if (inferredName == inferredName2)
    {
    }

    else
    {
      inferredName3 = [(BMAutonamingInferences *)self inferredName];
      inferredName4 = [v5 inferredName];
      v18 = [inferredName3 isEqual:inferredName4];

      if (!v18)
      {
        goto LABEL_30;
      }
    }

    inferredContactIdentifier = [(BMAutonamingInferences *)self inferredContactIdentifier];
    inferredContactIdentifier2 = [v5 inferredContactIdentifier];
    v21 = inferredContactIdentifier2;
    if (inferredContactIdentifier == inferredContactIdentifier2)
    {
    }

    else
    {
      inferredContactIdentifier3 = [(BMAutonamingInferences *)self inferredContactIdentifier];
      inferredContactIdentifier4 = [v5 inferredContactIdentifier];
      v24 = [inferredContactIdentifier3 isEqual:inferredContactIdentifier4];

      if (!v24)
      {
        goto LABEL_30;
      }
    }

    inferredRelationshipToDeviceOwner = [(BMAutonamingInferences *)self inferredRelationshipToDeviceOwner];
    inferredRelationshipToDeviceOwner2 = [v5 inferredRelationshipToDeviceOwner];
    v27 = inferredRelationshipToDeviceOwner2;
    if (inferredRelationshipToDeviceOwner == inferredRelationshipToDeviceOwner2)
    {
    }

    else
    {
      inferredRelationshipToDeviceOwner3 = [(BMAutonamingInferences *)self inferredRelationshipToDeviceOwner];
      inferredRelationshipToDeviceOwner4 = [v5 inferredRelationshipToDeviceOwner];
      v30 = [inferredRelationshipToDeviceOwner3 isEqual:inferredRelationshipToDeviceOwner4];

      if (!v30)
      {
        goto LABEL_30;
      }
    }

    if (-[BMAutonamingInferences hasConfidence](self, "hasConfidence") || [v5 hasConfidence])
    {
      if (![(BMAutonamingInferences *)self hasConfidence])
      {
        goto LABEL_30;
      }

      if (![v5 hasConfidence])
      {
        goto LABEL_30;
      }

      [(BMAutonamingInferences *)self confidence];
      v32 = v31;
      [v5 confidence];
      if (v32 != v33)
      {
        goto LABEL_30;
      }
    }

    imageMessageIdentifier = [(BMAutonamingInferences *)self imageMessageIdentifier];
    imageMessageIdentifier2 = [v5 imageMessageIdentifier];
    v36 = imageMessageIdentifier2;
    if (imageMessageIdentifier == imageMessageIdentifier2)
    {
    }

    else
    {
      imageMessageIdentifier3 = [(BMAutonamingInferences *)self imageMessageIdentifier];
      imageMessageIdentifier4 = [v5 imageMessageIdentifier];
      v39 = [imageMessageIdentifier3 isEqual:imageMessageIdentifier4];

      if (!v39)
      {
        goto LABEL_30;
      }
    }

    contextMessageIdentifiers = [(BMAutonamingInferences *)self contextMessageIdentifiers];
    contextMessageIdentifiers2 = [v5 contextMessageIdentifiers];
    v42 = contextMessageIdentifiers2;
    if (contextMessageIdentifiers == contextMessageIdentifiers2)
    {
    }

    else
    {
      contextMessageIdentifiers3 = [(BMAutonamingInferences *)self contextMessageIdentifiers];
      contextMessageIdentifiers4 = [v5 contextMessageIdentifiers];
      v45 = [contextMessageIdentifiers3 isEqual:contextMessageIdentifiers4];

      if (!v45)
      {
LABEL_30:
        v12 = 0;
LABEL_31:

        goto LABEL_32;
      }
    }

    modelVersion = [(BMAutonamingInferences *)self modelVersion];
    modelVersion2 = [v5 modelVersion];
    if (modelVersion == modelVersion2)
    {
      v12 = 1;
    }

    else
    {
      modelVersion3 = [(BMAutonamingInferences *)self modelVersion];
      modelVersion4 = [v5 modelVersion];
      v12 = [modelVersion3 isEqual:modelVersion4];
    }

    goto LABEL_31;
  }

  v12 = 0;
LABEL_32:

  return v12;
}

- (id)jsonDictionary
{
  v31[8] = *MEMORY[0x1E69E9840];
  photosPersonIdentifier = [(BMAutonamingInferences *)self photosPersonIdentifier];
  inferredName = [(BMAutonamingInferences *)self inferredName];
  inferredContactIdentifier = [(BMAutonamingInferences *)self inferredContactIdentifier];
  inferredRelationshipToDeviceOwner = [(BMAutonamingInferences *)self inferredRelationshipToDeviceOwner];
  if (![(BMAutonamingInferences *)self hasConfidence]|| ([(BMAutonamingInferences *)self confidence], fabs(v7) == INFINITY))
  {
    v9 = 0;
  }

  else
  {
    [(BMAutonamingInferences *)self confidence];
    v8 = MEMORY[0x1E696AD98];
    [(BMAutonamingInferences *)self confidence];
    v9 = [v8 numberWithDouble:?];
  }

  imageMessageIdentifier = [(BMAutonamingInferences *)self imageMessageIdentifier];
  _contextMessageIdentifiersJSONArray = [(BMAutonamingInferences *)self _contextMessageIdentifiersJSONArray];
  modelVersion = [(BMAutonamingInferences *)self modelVersion];
  v30[0] = @"photosPersonIdentifier";
  null = photosPersonIdentifier;
  if (!photosPersonIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null;
  v31[0] = null;
  v30[1] = @"inferredName";
  null2 = inferredName;
  if (!inferredName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = photosPersonIdentifier;
  v24 = null2;
  v31[1] = null2;
  v30[2] = @"inferredContactIdentifier";
  null3 = inferredContactIdentifier;
  if (!inferredContactIdentifier)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = inferredName;
  v23 = null3;
  v31[2] = null3;
  v30[3] = @"inferredRelationshipToDeviceOwner";
  null4 = inferredRelationshipToDeviceOwner;
  if (!inferredRelationshipToDeviceOwner)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = inferredContactIdentifier;
  v31[3] = null4;
  v30[4] = @"confidence";
  null5 = v9;
  if (!v9)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = inferredRelationshipToDeviceOwner;
  v31[4] = null5;
  v30[5] = @"imageMessageIdentifier";
  null6 = imageMessageIdentifier;
  if (!imageMessageIdentifier)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v31[5] = null6;
  v30[6] = @"contextMessageIdentifiers";
  null7 = _contextMessageIdentifiersJSONArray;
  if (!_contextMessageIdentifiersJSONArray)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v31[6] = null7;
  v30[7] = @"modelVersion";
  null8 = modelVersion;
  if (!modelVersion)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v31[7] = null8;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:8];
  if (modelVersion)
  {
    if (_contextMessageIdentifiersJSONArray)
    {
      goto LABEL_23;
    }

LABEL_36:

    if (imageMessageIdentifier)
    {
      goto LABEL_24;
    }

    goto LABEL_37;
  }

  if (!_contextMessageIdentifiersJSONArray)
  {
    goto LABEL_36;
  }

LABEL_23:
  if (imageMessageIdentifier)
  {
    goto LABEL_24;
  }

LABEL_37:

LABEL_24:
  if (!v9)
  {
  }

  if (!v26)
  {
  }

  if (!v27)
  {
  }

  if (v28)
  {
    if (v29)
    {
      goto LABEL_32;
    }
  }

  else
  {

    if (v29)
    {
      goto LABEL_32;
    }
  }

LABEL_32:

  return v21;
}

- (id)_contextMessageIdentifiersJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  contextMessageIdentifiers = [(BMAutonamingInferences *)self contextMessageIdentifiers];
  v5 = [contextMessageIdentifiers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(contextMessageIdentifiers);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [contextMessageIdentifiers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMAutonamingInferences)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v121[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"photosPersonIdentifier"];
  selfCopy = self;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        errorCopy = error;
        v20 = objc_alloc(MEMORY[0x1E696ABC0]);
        v21 = *MEMORY[0x1E698F240];
        v120 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"photosPersonIdentifier"];
        v121[0] = v22;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v121 forKeys:&v120 count:1];
        v23 = v21;
        v10 = v22;
        v8 = 0;
        v24 = 0;
        *errorCopy = [v20 initWithDomain:v23 code:2 userInfo:v9];
        self = selfCopy;
        goto LABEL_89;
      }

      v8 = 0;
      v24 = 0;
      goto LABEL_90;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"inferredName"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v10 = 0;
        v24 = 0;
        goto LABEL_89;
      }

      errorCopy2 = error;
      v39 = objc_alloc(MEMORY[0x1E696ABC0]);
      v40 = *MEMORY[0x1E698F240];
      v118 = *MEMORY[0x1E696A578];
      v41 = v8;
      v42 = objc_alloc(MEMORY[0x1E696AEC0]);
      v78 = objc_opt_class();
      v43 = v42;
      v8 = v41;
      v44 = [v43 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v78, @"inferredName"];
      v119 = v44;
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
      v46 = v39;
      v11 = v45;
      v47 = [v46 initWithDomain:v40 code:2 userInfo:v45];
      v10 = 0;
      v24 = 0;
      *errorCopy2 = v47;
LABEL_76:
      self = selfCopy;
      goto LABEL_88;
    }

    errorCopy4 = error;
    v10 = v9;
  }

  else
  {
    errorCopy4 = error;
    v10 = 0;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"inferredContactIdentifier"];
  v93 = v10;
  if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v91 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (errorCopy4)
    {
      v92 = objc_alloc(MEMORY[0x1E696ABC0]);
      v48 = *MEMORY[0x1E698F240];
      v116 = *MEMORY[0x1E696A578];
      v94 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"inferredContactIdentifier"];
      v117 = v94;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
      v49 = v48;
      v10 = v93;
      v44 = 0;
      v24 = 0;
      *errorCopy4 = [v92 initWithDomain:v49 code:2 userInfo:v12];
      goto LABEL_86;
    }

    v44 = 0;
    v24 = 0;
    goto LABEL_76;
  }

  v91 = v11;
LABEL_10:
  v12 = [dictionaryCopy objectForKeyedSubscript:@"inferredRelationshipToDeviceOwner"];
  v89 = v11;
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v84 = v7;
    v14 = v8;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy4)
      {
        v55 = objc_alloc(MEMORY[0x1E696ABC0]);
        v56 = *MEMORY[0x1E698F240];
        v114 = *MEMORY[0x1E696A578];
        v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"inferredRelationshipToDeviceOwner"];
        v115 = v57;
        v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
        v59 = v55;
        v11 = v89;
        v60 = v56;
        v10 = v93;
        v90 = v58;
        v94 = 0;
        v24 = 0;
        *errorCopy4 = [v59 initWithDomain:v60 code:2 userInfo:?];
        v36 = v57;
        v44 = v91;
        v7 = v84;
        goto LABEL_85;
      }

      v94 = 0;
      v24 = 0;
      v44 = v91;
      v7 = v84;
      goto LABEL_87;
    }

    v94 = v12;
    v13 = v84;
  }

  else
  {
    v13 = v7;
    v14 = v8;
    v94 = 0;
  }

  v15 = [dictionaryCopy objectForKeyedSubscript:@"confidence"];
  v88 = v12;
  v90 = v15;
  if (v15 && (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy4)
      {
        v63 = objc_alloc(MEMORY[0x1E696ABC0]);
        v64 = *MEMORY[0x1E698F240];
        v112 = *MEMORY[0x1E696A578];
        v87 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"confidence"];
        v113 = v87;
        v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
        v66 = v63;
        v11 = v89;
        v67 = v64;
        v10 = v93;
        v86 = v65;
        v24 = 0;
        *errorCopy4 = [v66 initWithDomain:v67 code:2 userInfo:?];
        v44 = v91;
        v8 = v14;
        v7 = v13;
        v36 = 0;
        goto LABEL_84;
      }

      v24 = 0;
      v44 = v91;
      v8 = v14;
      v7 = v13;
      v36 = 0;
      goto LABEL_85;
    }

    v82 = v16;
  }

  else
  {
    v82 = 0;
  }

  v17 = [dictionaryCopy objectForKeyedSubscript:@"imageMessageIdentifier"];
  v8 = v14;
  v81 = v9;
  v86 = v17;
  if (v17)
  {
    v18 = v17;
    objc_opt_class();
    v83 = v13;
    if (objc_opt_isKindOfClass())
    {
      v87 = 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy4)
        {
          v68 = objc_alloc(MEMORY[0x1E696ABC0]);
          v69 = *MEMORY[0x1E698F240];
          v110 = *MEMORY[0x1E696A578];
          v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"imageMessageIdentifier"];
          v111 = v25;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
          v70 = v68;
          v11 = v89;
          v71 = [v70 initWithDomain:v69 code:2 userInfo:v28];
          v87 = 0;
          v24 = 0;
          *errorCopy4 = v71;
          v36 = v82;
          v7 = v83;
          goto LABEL_82;
        }

        v87 = 0;
        v24 = 0;
        v44 = v91;
        v36 = v82;
        v7 = v83;
        goto LABEL_84;
      }

      v87 = v18;
    }

    v7 = v13;
  }

  else
  {
    v87 = 0;
    v7 = v13;
  }

  v25 = [dictionaryCopy objectForKeyedSubscript:@"contextMessageIdentifiers"];
  null = [MEMORY[0x1E695DFB0] null];
  v27 = [v25 isEqual:null];

  if (v27)
  {
    v85 = v8;

    v25 = 0;
  }

  else
  {
    if (v25)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v36 = v82;
        if (!errorCopy4)
        {
          v24 = 0;
          v11 = v89;
          goto LABEL_83;
        }

        v72 = objc_alloc(MEMORY[0x1E696ABC0]);
        v73 = *MEMORY[0x1E698F240];
        v108 = *MEMORY[0x1E696A578];
        v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"contextMessageIdentifiers"];
        v109 = v28;
        v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
        v74 = [v72 initWithDomain:v73 code:2 userInfo:v37];
        v24 = 0;
        *errorCopy4 = v74;
LABEL_72:
        v12 = v88;
        goto LABEL_81;
      }
    }

    v85 = v8;
  }

  v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v25, "count")}];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v25 = v25;
  v29 = [v25 countByEnumeratingWithState:&v97 objects:v107 count:16];
  if (!v29)
  {
    goto LABEL_49;
  }

  v30 = v29;
  v31 = *v98;
  while (2)
  {
    for (i = 0; i != v30; ++i)
    {
      if (*v98 != v31)
      {
        objc_enumerationMutation(v25);
      }

      v33 = *(*(&v97 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (errorCopy4)
        {
          v50 = objc_alloc(MEMORY[0x1E696ABC0]);
          v51 = *MEMORY[0x1E698F240];
          v105 = *MEMORY[0x1E696A578];
          v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"contextMessageIdentifiers"];
          v106 = v34;
          v52 = MEMORY[0x1E695DF20];
          v53 = &v106;
          v54 = &v105;
LABEL_62:
          v61 = [v52 dictionaryWithObjects:v53 forKeys:v54 count:1];
          v62 = [v50 initWithDomain:v51 code:2 userInfo:v61];
          v8 = v85;
          v12 = v88;
          *errorCopy4 = v62;

          v24 = 0;
          v37 = v25;
          goto LABEL_63;
        }

        goto LABEL_66;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy4)
        {
          v50 = objc_alloc(MEMORY[0x1E696ABC0]);
          v51 = *MEMORY[0x1E698F240];
          v103 = *MEMORY[0x1E696A578];
          v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contextMessageIdentifiers"];
          v104 = v34;
          v52 = MEMORY[0x1E695DF20];
          v53 = &v104;
          v54 = &v103;
          goto LABEL_62;
        }

LABEL_66:
        v24 = 0;
        v37 = v25;
        v36 = v82;
        v8 = v85;
        goto LABEL_72;
      }

      [v28 addObject:v33];
    }

    v30 = [v25 countByEnumeratingWithState:&v97 objects:v107 count:16];
    v12 = v88;
    if (v30)
    {
      continue;
    }

    break;
  }

LABEL_49:

  v34 = [dictionaryCopy objectForKeyedSubscript:@"modelVersion"];
  if (!v34)
  {
    v37 = 0;
    v35 = selfCopy;
    v36 = v82;
    v8 = v85;
    goto LABEL_79;
  }

  objc_opt_class();
  v35 = selfCopy;
  v36 = v82;
  v8 = v85;
  if (objc_opt_isKindOfClass())
  {
    v37 = 0;
    goto LABEL_79;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = v34;
    v12 = v88;
LABEL_79:
    v24 = [(BMAutonamingInferences *)v35 initWithPhotosPersonIdentifier:v8 inferredName:v93 inferredContactIdentifier:v91 inferredRelationshipToDeviceOwner:v94 confidence:v36 imageMessageIdentifier:v87 contextMessageIdentifiers:v28 modelVersion:v37];
    selfCopy = v24;
  }

  else
  {
    if (errorCopy4)
    {
      v80 = objc_alloc(MEMORY[0x1E696ABC0]);
      v79 = *MEMORY[0x1E698F240];
      v101 = *MEMORY[0x1E696A578];
      v76 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"modelVersion"];
      v102 = v76;
      v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
      *errorCopy4 = [v80 initWithDomain:v79 code:2 userInfo:v77];
    }

    v37 = 0;
    v24 = 0;
    v12 = v88;
LABEL_63:
    v36 = v82;
  }

LABEL_81:
  v11 = v89;
LABEL_82:

  v10 = v93;
LABEL_83:
  v44 = v91;

  v9 = v81;
LABEL_84:

LABEL_85:
LABEL_86:
  self = selfCopy;
LABEL_87:

LABEL_88:
LABEL_89:

LABEL_90:
  return v24;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAutonamingInferences *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_photosPersonIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_inferredName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_inferredContactIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_inferredRelationshipToDeviceOwner)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasConfidence)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_imageMessageIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_contextMessageIdentifiers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_modelVersion)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v31.receiver = self;
  v31.super_class = BMAutonamingInferences;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_49;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_47;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v32) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v32 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (LOBYTE(v32) & 0x7F) << v8;
        if ((LOBYTE(v32) & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_47;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 4)
      {
        break;
      }

      if (v16 <= 6)
      {
        if (v16 == 5)
        {
          v5->_hasConfidence = 1;
          v32 = 0.0;
          v19 = [fromCopy position] + 4;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 4, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v32 range:{objc_msgSend(fromCopy, "position"), 4}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_confidence = v32;
          goto LABEL_39;
        }

        if (v16 == 6)
        {
          v17 = PBReaderReadString();
          v18 = 64;
          goto LABEL_38;
        }

        goto LABEL_43;
      }

      if (v16 != 7)
      {
        if (v16 == 8)
        {
          v17 = PBReaderReadString();
          v18 = 80;
          goto LABEL_38;
        }

LABEL_43:
        if (!PBReaderSkipValueWithTag())
        {
LABEL_51:

          goto LABEL_48;
        }

        goto LABEL_39;
      }

      v23 = PBReaderReadString();
      if (!v23)
      {
        goto LABEL_51;
      }

      v24 = v23;
      [v6 addObject:v23];

LABEL_39:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_47;
      }
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = PBReaderReadString();
        v18 = 40;
        goto LABEL_38;
      }

      if (v16 == 4)
      {
        v17 = PBReaderReadString();
        v18 = 48;
        goto LABEL_38;
      }
    }

    else
    {
      if (v16 == 1)
      {
        v17 = PBReaderReadString();
        v18 = 24;
        goto LABEL_38;
      }

      if (v16 == 2)
      {
        v17 = PBReaderReadString();
        v18 = 32;
LABEL_38:
        v21 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;

        goto LABEL_39;
      }
    }

    goto LABEL_43;
  }

LABEL_47:
  v26 = [v6 copy];
  contextMessageIdentifiers = v5->_contextMessageIdentifiers;
  v5->_contextMessageIdentifiers = v26;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_48:
    v29 = 0;
  }

  else
  {
LABEL_49:
    v29 = v5;
  }

  return v29;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  photosPersonIdentifier = [(BMAutonamingInferences *)self photosPersonIdentifier];
  inferredName = [(BMAutonamingInferences *)self inferredName];
  inferredContactIdentifier = [(BMAutonamingInferences *)self inferredContactIdentifier];
  inferredRelationshipToDeviceOwner = [(BMAutonamingInferences *)self inferredRelationshipToDeviceOwner];
  v8 = MEMORY[0x1E696AD98];
  [(BMAutonamingInferences *)self confidence];
  v9 = [v8 numberWithDouble:?];
  imageMessageIdentifier = [(BMAutonamingInferences *)self imageMessageIdentifier];
  contextMessageIdentifiers = [(BMAutonamingInferences *)self contextMessageIdentifiers];
  modelVersion = [(BMAutonamingInferences *)self modelVersion];
  v13 = [v3 initWithFormat:@"BMAutonamingInferences with photosPersonIdentifier: %@, inferredName: %@, inferredContactIdentifier: %@, inferredRelationshipToDeviceOwner: %@, confidence: %@, imageMessageIdentifier: %@, contextMessageIdentifiers: %@, modelVersion: %@", photosPersonIdentifier, inferredName, inferredContactIdentifier, inferredRelationshipToDeviceOwner, v9, imageMessageIdentifier, contextMessageIdentifiers, modelVersion];

  return v13;
}

- (BMAutonamingInferences)initWithPhotosPersonIdentifier:(id)identifier inferredName:(id)name inferredContactIdentifier:(id)contactIdentifier inferredRelationshipToDeviceOwner:(id)owner confidence:(id)confidence imageMessageIdentifier:(id)messageIdentifier contextMessageIdentifiers:(id)identifiers modelVersion:(id)self0
{
  identifierCopy = identifier;
  nameCopy = name;
  contactIdentifierCopy = contactIdentifier;
  ownerCopy = owner;
  confidenceCopy = confidence;
  messageIdentifierCopy = messageIdentifier;
  identifiersCopy = identifiers;
  versionCopy = version;
  v29.receiver = self;
  v29.super_class = BMAutonamingInferences;
  v19 = [(BMEventBase *)&v29 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v19->_photosPersonIdentifier, identifier);
    objc_storeStrong(&v19->_inferredName, name);
    objc_storeStrong(&v19->_inferredContactIdentifier, contactIdentifier);
    objc_storeStrong(&v19->_inferredRelationshipToDeviceOwner, owner);
    if (confidenceCopy)
    {
      v19->_hasConfidence = 1;
      [confidenceCopy floatValue];
      v21 = v20;
    }

    else
    {
      v19->_hasConfidence = 0;
      v21 = -1.0;
    }

    v19->_confidence = v21;
    objc_storeStrong(&v19->_imageMessageIdentifier, messageIdentifier);
    objc_storeStrong(&v19->_contextMessageIdentifiers, identifiers);
    objc_storeStrong(&v19->_modelVersion, version);
  }

  return v19;
}

+ (id)protoFields
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"photosPersonIdentifier" number:1 type:13 subMessageClass:0];
  v12[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"inferredName" number:2 type:13 subMessageClass:0];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"inferredContactIdentifier" number:3 type:13 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"inferredRelationshipToDeviceOwner" number:4 type:13 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"confidence" number:5 type:1 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"imageMessageIdentifier" number:6 type:13 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contextMessageIdentifiers" number:7 type:13 subMessageClass:0];
  v12[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"modelVersion" number:8 type:13 subMessageClass:0];
  v12[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:8];

  return v10;
}

id __33__BMAutonamingInferences_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _contextMessageIdentifiersJSONArray];
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

    v8 = [[BMAutonamingInferences alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

- (BMAutonamingInferences)initWithPhotosPersonIdentifier:(id)identifier inferredName:(id)name inferredContactIdentifier:(id)contactIdentifier inferredRelationshipToDeviceOwner:(id)owner confidence:(id)confidence
{
  confidenceCopy = confidence;
  ownerCopy = owner;
  contactIdentifierCopy = contactIdentifier;
  nameCopy = name;
  identifierCopy = identifier;
  v17 = objc_opt_new();
  v18 = [(BMAutonamingInferences *)self initWithPhotosPersonIdentifier:identifierCopy inferredName:nameCopy inferredContactIdentifier:contactIdentifierCopy inferredRelationshipToDeviceOwner:ownerCopy confidence:confidenceCopy imageMessageIdentifier:0 contextMessageIdentifiers:v17];

  return v18;
}

@end