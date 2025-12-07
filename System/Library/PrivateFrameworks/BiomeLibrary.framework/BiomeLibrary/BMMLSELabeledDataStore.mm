@interface BMMLSELabeledDataStore
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMLSELabeledDataStore)initWithItemIdentifier:(id)identifier featureVersion:(id)version featureVector:(id)vector deviceIdentifier:(id)deviceIdentifier isPositiveLabeled:(id)labeled labelingPolicyVersion:(id)policyVersion labelingEvidence:(int)evidence sharingEventUID:(id)self0 configurationInfo:(id)self1;
- (BMMLSELabeledDataStore)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_featureVectorJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMLSELabeledDataStore

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    itemIdentifier = [(BMMLSELabeledDataStore *)self itemIdentifier];
    itemIdentifier2 = [v5 itemIdentifier];
    v8 = itemIdentifier2;
    if (itemIdentifier == itemIdentifier2)
    {
    }

    else
    {
      itemIdentifier3 = [(BMMLSELabeledDataStore *)self itemIdentifier];
      itemIdentifier4 = [v5 itemIdentifier];
      v11 = [itemIdentifier3 isEqual:itemIdentifier4];

      if (!v11)
      {
        goto LABEL_33;
      }
    }

    if (-[BMMLSELabeledDataStore hasFeatureVersion](self, "hasFeatureVersion") || [v5 hasFeatureVersion])
    {
      if (![(BMMLSELabeledDataStore *)self hasFeatureVersion])
      {
        goto LABEL_33;
      }

      if (![v5 hasFeatureVersion])
      {
        goto LABEL_33;
      }

      featureVersion = [(BMMLSELabeledDataStore *)self featureVersion];
      if (featureVersion != [v5 featureVersion])
      {
        goto LABEL_33;
      }
    }

    featureVector = [(BMMLSELabeledDataStore *)self featureVector];
    featureVector2 = [v5 featureVector];
    v16 = featureVector2;
    if (featureVector == featureVector2)
    {
    }

    else
    {
      featureVector3 = [(BMMLSELabeledDataStore *)self featureVector];
      featureVector4 = [v5 featureVector];
      v19 = [featureVector3 isEqual:featureVector4];

      if (!v19)
      {
        goto LABEL_33;
      }
    }

    deviceIdentifier = [(BMMLSELabeledDataStore *)self deviceIdentifier];
    deviceIdentifier2 = [v5 deviceIdentifier];
    v22 = deviceIdentifier2;
    if (deviceIdentifier == deviceIdentifier2)
    {
    }

    else
    {
      deviceIdentifier3 = [(BMMLSELabeledDataStore *)self deviceIdentifier];
      deviceIdentifier4 = [v5 deviceIdentifier];
      v25 = [deviceIdentifier3 isEqual:deviceIdentifier4];

      if (!v25)
      {
        goto LABEL_33;
      }
    }

    if (-[BMMLSELabeledDataStore hasIsPositiveLabeled](self, "hasIsPositiveLabeled") || [v5 hasIsPositiveLabeled])
    {
      if (![(BMMLSELabeledDataStore *)self hasIsPositiveLabeled])
      {
        goto LABEL_33;
      }

      if (![v5 hasIsPositiveLabeled])
      {
        goto LABEL_33;
      }

      isPositiveLabeled = [(BMMLSELabeledDataStore *)self isPositiveLabeled];
      if (isPositiveLabeled != [v5 isPositiveLabeled])
      {
        goto LABEL_33;
      }
    }

    if (-[BMMLSELabeledDataStore hasLabelingPolicyVersion](self, "hasLabelingPolicyVersion") || [v5 hasLabelingPolicyVersion])
    {
      if (![(BMMLSELabeledDataStore *)self hasLabelingPolicyVersion])
      {
        goto LABEL_33;
      }

      if (![v5 hasLabelingPolicyVersion])
      {
        goto LABEL_33;
      }

      labelingPolicyVersion = [(BMMLSELabeledDataStore *)self labelingPolicyVersion];
      if (labelingPolicyVersion != [v5 labelingPolicyVersion])
      {
        goto LABEL_33;
      }
    }

    labelingEvidence = [(BMMLSELabeledDataStore *)self labelingEvidence];
    if (labelingEvidence != [v5 labelingEvidence])
    {
      goto LABEL_33;
    }

    sharingEventUID = [(BMMLSELabeledDataStore *)self sharingEventUID];
    sharingEventUID2 = [v5 sharingEventUID];
    v31 = sharingEventUID2;
    if (sharingEventUID == sharingEventUID2)
    {
    }

    else
    {
      sharingEventUID3 = [(BMMLSELabeledDataStore *)self sharingEventUID];
      sharingEventUID4 = [v5 sharingEventUID];
      v34 = [sharingEventUID3 isEqual:sharingEventUID4];

      if (!v34)
      {
LABEL_33:
        v12 = 0;
LABEL_34:

        goto LABEL_35;
      }
    }

    configurationInfo = [(BMMLSELabeledDataStore *)self configurationInfo];
    configurationInfo2 = [v5 configurationInfo];
    if (configurationInfo == configurationInfo2)
    {
      v12 = 1;
    }

    else
    {
      configurationInfo3 = [(BMMLSELabeledDataStore *)self configurationInfo];
      configurationInfo4 = [v5 configurationInfo];
      v12 = [configurationInfo3 isEqual:configurationInfo4];
    }

    goto LABEL_34;
  }

  v12 = 0;
LABEL_35:

  return v12;
}

- (id)jsonDictionary
{
  v33[9] = *MEMORY[0x1E69E9840];
  itemIdentifier = [(BMMLSELabeledDataStore *)self itemIdentifier];
  if ([(BMMLSELabeledDataStore *)self hasFeatureVersion])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSELabeledDataStore featureVersion](self, "featureVersion")}];
  }

  else
  {
    v4 = 0;
  }

  _featureVectorJSONArray = [(BMMLSELabeledDataStore *)self _featureVectorJSONArray];
  deviceIdentifier = [(BMMLSELabeledDataStore *)self deviceIdentifier];
  if ([(BMMLSELabeledDataStore *)self hasIsPositiveLabeled])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMLSELabeledDataStore isPositiveLabeled](self, "isPositiveLabeled")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMMLSELabeledDataStore *)self hasLabelingPolicyVersion])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSELabeledDataStore labelingPolicyVersion](self, "labelingPolicyVersion")}];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMLSELabeledDataStore labelingEvidence](self, "labelingEvidence")}];
  sharingEventUID = [(BMMLSELabeledDataStore *)self sharingEventUID];
  configurationInfo = [(BMMLSELabeledDataStore *)self configurationInfo];
  v32[0] = @"itemIdentifier";
  null = itemIdentifier;
  if (!itemIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null;
  v33[0] = null;
  v32[1] = @"featureVersion";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null2;
  v33[1] = null2;
  v32[2] = @"featureVector";
  null3 = _featureVectorJSONArray;
  if (!_featureVectorJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = itemIdentifier;
  v24 = null3;
  v33[2] = null3;
  v32[3] = @"deviceIdentifier";
  null4 = deviceIdentifier;
  if (!deviceIdentifier)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v4;
  v23 = null4;
  v33[3] = null4;
  v32[4] = @"isPositiveLabeled";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = _featureVectorJSONArray;
  v33[4] = null5;
  v32[5] = @"labelingPolicyVersion";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v7;
  v18 = deviceIdentifier;
  v33[5] = null6;
  v32[6] = @"labelingEvidence";
  null7 = v9;
  if (!v9)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v33[6] = null7;
  v32[7] = @"sharingEventUID";
  null8 = sharingEventUID;
  if (!sharingEventUID)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v33[7] = null8;
  v32[8] = @"configurationInfo";
  null9 = configurationInfo;
  if (!configurationInfo)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v33[8] = null9;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:9];
  if (configurationInfo)
  {
    if (sharingEventUID)
    {
      goto LABEL_30;
    }
  }

  else
  {

    if (sharingEventUID)
    {
      goto LABEL_30;
    }
  }

LABEL_30:
  if (!v9)
  {
  }

  if (!v8)
  {
  }

  if (!v28)
  {
  }

  if (!v18)
  {
  }

  if (v29)
  {
    if (v30)
    {
      goto LABEL_40;
    }

LABEL_47:

    if (v31)
    {
      goto LABEL_41;
    }

    goto LABEL_48;
  }

  if (!v30)
  {
    goto LABEL_47;
  }

LABEL_40:
  if (v31)
  {
    goto LABEL_41;
  }

LABEL_48:

LABEL_41:

  return v27;
}

- (id)_featureVectorJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  featureVector = [(BMMLSELabeledDataStore *)self featureVector];
  v5 = [featureVector countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(featureVector);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [featureVector countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMMLSELabeledDataStore)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v128[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"itemIdentifier"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v127 = *MEMORY[0x1E696A578];
        v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"itemIdentifier"];
        v128[0] = v27;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v128 forKeys:&v127 count:1];
        v29 = v25;
        v8 = v28;
        v30 = [v29 initWithDomain:v26 code:2 userInfo:v28];
        v7 = 0;
        selfCopy3 = 0;
        *error = v30;
        goto LABEL_94;
      }

      v7 = 0;
      selfCopy3 = 0;
      goto LABEL_95;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"featureVersion"];
  v97 = v6;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v32 = v8;
        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v34 = *MEMORY[0x1E698F240];
        v125 = *MEMORY[0x1E696A578];
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"featureVersion"];
        v126 = v9;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
        v36 = v33;
        v8 = v32;
        v100 = v35;
        v37 = [v36 initWithDomain:v34 code:2 userInfo:?];
        v27 = 0;
        selfCopy3 = 0;
        *error = v37;

        goto LABEL_93;
      }

      v27 = 0;
      selfCopy3 = 0;
      goto LABEL_94;
    }

    v96 = v8;
  }

  else
  {
    v96 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"featureVector"];
  null = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:null];

  if (v11)
  {
    v89 = v8;
    selfCopy2 = self;
    v93 = v7;

    v9 = 0;
  }

  else
  {
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          selfCopy3 = 0;
          v27 = v96;
          goto LABEL_93;
        }

        v46 = objc_alloc(MEMORY[0x1E696ABC0]);
        v47 = *MEMORY[0x1E698F240];
        v123 = *MEMORY[0x1E696A578];
        v99 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"featureVector"];
        v124 = v99;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
        v48 = [v46 initWithDomain:v47 code:2 userInfo:v21];
        selfCopy3 = 0;
        *error = v48;
LABEL_48:
        v27 = v96;
        goto LABEL_91;
      }
    }

    v89 = v8;
    selfCopy2 = self;
    v93 = v7;
  }

  v99 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v9 = v9;
  v12 = [v9 countByEnumeratingWithState:&v102 objects:v122 count:16];
  if (!v12)
  {
    goto LABEL_22;
  }

  v13 = v12;
  v14 = *v103;
  v88 = dictionaryCopy;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v103 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v102 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy2 = error;
        if (error)
        {
          v39 = objc_alloc(MEMORY[0x1E696ABC0]);
          v40 = *MEMORY[0x1E698F240];
          v120 = *MEMORY[0x1E696A578];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"featureVector"];
          v121 = v17;
          v41 = MEMORY[0x1E695DF20];
          v42 = &v121;
          v43 = &v120;
LABEL_40:
          v24 = [v41 dictionaryWithObjects:v42 forKeys:v43 count:1];
          v44 = [v39 initWithDomain:v40 code:2 userInfo:v24];
          selfCopy3 = 0;
          *errorCopy2 = v44;
LABEL_44:
          v21 = v9;
          dictionaryCopy = v88;
          v8 = v89;
          self = selfCopy2;
          v7 = v93;
          v27 = v96;
          goto LABEL_89;
        }

        goto LABEL_47;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        errorCopy2 = error;
        if (error)
        {
          v39 = objc_alloc(MEMORY[0x1E696ABC0]);
          v40 = *MEMORY[0x1E698F240];
          v118 = *MEMORY[0x1E696A578];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"featureVector"];
          v119 = v17;
          v41 = MEMORY[0x1E695DF20];
          v42 = &v119;
          v43 = &v118;
          goto LABEL_40;
        }

LABEL_47:
        selfCopy3 = 0;
        v21 = v9;
        dictionaryCopy = v88;
        v8 = v89;
        self = selfCopy2;
        v7 = v93;
        goto LABEL_48;
      }

      v17 = v16;
      v18 = [BMMLSELabeledDataStoreFeature alloc];
      v101 = 0;
      v19 = [(BMMLSELabeledDataStoreFeature *)v18 initWithJSONDictionary:v17 error:&v101];
      v20 = v101;
      if (v20)
      {
        v24 = v20;
        if (error)
        {
          v45 = v20;
          *error = v24;
        }

        selfCopy3 = 0;
        goto LABEL_44;
      }

      [v99 addObject:v19];
    }

    v13 = [v9 countByEnumeratingWithState:&v102 objects:v122 count:16];
    dictionaryCopy = v88;
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_22:

  v17 = [dictionaryCopy objectForKeyedSubscript:@"deviceIdentifier"];
  if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v21 = 0;
    self = selfCopy2;
    goto LABEL_25;
  }

  objc_opt_class();
  self = selfCopy2;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!error)
    {
      v21 = 0;
      selfCopy3 = 0;
      v7 = v93;
      v27 = v96;
      v8 = v89;
      goto LABEL_90;
    }

    v54 = objc_alloc(MEMORY[0x1E696ABC0]);
    v55 = *MEMORY[0x1E698F240];
    v116 = *MEMORY[0x1E696A578];
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceIdentifier"];
    v117 = v24;
    v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
    v56 = [v54 initWithDomain:v55 code:2 userInfo:?];
    v21 = 0;
    selfCopy3 = 0;
    *error = v56;
    v7 = v93;
    goto LABEL_107;
  }

  v21 = v17;
LABEL_25:
  v22 = [dictionaryCopy objectForKeyedSubscript:@"isPositiveLabeled"];
  v86 = v22;
  if (!v22)
  {
    v24 = 0;
    v7 = v93;
    goto LABEL_54;
  }

  v23 = v22;
  objc_opt_class();
  v7 = v93;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
      goto LABEL_54;
    }

    if (error)
    {
      v91 = objc_alloc(MEMORY[0x1E696ABC0]);
      v57 = *MEMORY[0x1E698F240];
      v114 = *MEMORY[0x1E696A578];
      v58 = v21;
      v59 = objc_alloc(MEMORY[0x1E696AEC0]);
      v78 = objc_opt_class();
      v60 = v59;
      v21 = v58;
      v87 = [v60 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v78, @"isPositiveLabeled"];
      v115 = v87;
      v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
      v61 = [v91 initWithDomain:v57 code:2 userInfo:?];
      v24 = 0;
      selfCopy3 = 0;
      *error = v61;
LABEL_111:
      v8 = v89;
      v27 = v96;
      goto LABEL_87;
    }

    v24 = 0;
    selfCopy3 = 0;
LABEL_107:
    v8 = v89;
    v27 = v96;
    goto LABEL_88;
  }

  v24 = 0;
LABEL_54:
  v49 = [dictionaryCopy objectForKeyedSubscript:@"labelingPolicyVersion"];
  v85 = v21;
  v83 = v49;
  if (v49)
  {
    v50 = v49;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v87 = v50;
        goto LABEL_57;
      }

      if (error)
      {
        v62 = objc_alloc(MEMORY[0x1E696ABC0]);
        v63 = *MEMORY[0x1E698F240];
        v112 = *MEMORY[0x1E696A578];
        v84 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"labelingPolicyVersion"];
        v113 = v84;
        v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
        v65 = v63;
        v21 = v85;
        v80 = v64;
        v87 = 0;
        selfCopy3 = 0;
        *error = [v62 initWithDomain:v65 code:2 userInfo:?];
        v8 = v89;
        v27 = v96;
        goto LABEL_86;
      }

      v87 = 0;
      selfCopy3 = 0;
      goto LABEL_111;
    }
  }

  v87 = 0;
LABEL_57:
  v51 = [dictionaryCopy objectForKeyedSubscript:@"labelingEvidence"];
  v80 = v51;
  if (!v51 || (v52 = v51, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v84 = 0;
LABEL_76:
    v66 = [dictionaryCopy objectForKeyedSubscript:@"sharingEventUID"];
    v92 = v66;
    if (v66 && (v67 = v66, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v81 = v67;
        goto LABEL_79;
      }

      if (error)
      {
        v82 = objc_alloc(MEMORY[0x1E696ABC0]);
        v72 = *MEMORY[0x1E698F240];
        v108 = *MEMORY[0x1E696A578];
        v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sharingEventUID"];
        v109 = v69;
        v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
        v73 = [v82 initWithDomain:v72 code:2 userInfo:v68];
        v81 = 0;
        selfCopy3 = 0;
        *error = v73;
        v27 = v96;
        goto LABEL_83;
      }

      v81 = 0;
      selfCopy3 = 0;
      v27 = v96;
    }

    else
    {
      v81 = 0;
LABEL_79:
      v68 = [dictionaryCopy objectForKeyedSubscript:@"configurationInfo"];
      if (!v68 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v69 = 0;
        goto LABEL_82;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v69 = v68;
LABEL_82:
        LODWORD(v77) = [v84 intValue];
        v27 = v96;
        self = [(BMMLSELabeledDataStore *)self initWithItemIdentifier:v7 featureVersion:v96 featureVector:v99 deviceIdentifier:v85 isPositiveLabeled:v24 labelingPolicyVersion:v87 labelingEvidence:v77 sharingEventUID:v81 configurationInfo:v69];
        selfCopy3 = self;
      }

      else
      {
        if (error)
        {
          v94 = objc_alloc(MEMORY[0x1E696ABC0]);
          v79 = *MEMORY[0x1E698F240];
          v106 = *MEMORY[0x1E696A578];
          v74 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"configurationInfo"];
          v107 = v74;
          v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
          *error = [v94 initWithDomain:v79 code:2 userInfo:v75];
        }

        v69 = 0;
        selfCopy3 = 0;
        v27 = v96;
      }

LABEL_83:

      v21 = v85;
    }

    v70 = v92;
LABEL_85:

    v8 = v89;
    goto LABEL_86;
  }

  v53 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v84 = v52;
LABEL_75:
    v21 = v85;
    goto LABEL_76;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v84 = [MEMORY[0x1E696AD98] numberWithInt:BMMLSELabeledDataStoreLabelingEvidenceTypeFromString(v52)];
    goto LABEL_75;
  }

  if (error)
  {
    v95 = objc_alloc(MEMORY[0x1E696ABC0]);
    v76 = *MEMORY[0x1E698F240];
    v110 = *MEMORY[0x1E696A578];
    v81 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"labelingEvidence"];
    v111 = v81;
    v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
    v84 = 0;
    selfCopy3 = 0;
    *error = [v95 initWithDomain:v76 code:2 userInfo:v70];
    v7 = v53;
    v27 = v96;
    v21 = v85;
    goto LABEL_85;
  }

  v84 = 0;
  selfCopy3 = 0;
  v8 = v89;
  v27 = v96;
  v21 = v85;
LABEL_86:

LABEL_87:
LABEL_88:

LABEL_89:
LABEL_90:

LABEL_91:
LABEL_93:

  v6 = v97;
LABEL_94:

LABEL_95:
  return selfCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMLSELabeledDataStore *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_itemIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasFeatureVersion)
  {
    PBDataWriterWriteUint32Field();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_featureVector;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (self->_deviceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsPositiveLabeled)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasLabelingPolicyVersion)
  {
    PBDataWriterWriteUint32Field();
  }

  PBDataWriterWriteUint32Field();
  if (self->_sharingEventUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_configurationInfo)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v56.receiver = self;
  v56.super_class = BMMLSELabeledDataStore;
  v5 = [(BMEventBase *)&v56 init];
  if (!v5)
  {
    goto LABEL_94;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_92;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v57[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v57 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v57[0] & 0x7F) << v8;
        if ((v57[0] & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_92;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) > 4)
      {
        break;
      }

      if (v16 <= 2)
      {
        if (v16 == 1)
        {
          v31 = PBReaderReadString();
          v32 = 40;
          goto LABEL_73;
        }

        if (v16 == 2)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v5->_hasFeatureVersion = 1;
          while (1)
          {
            LOBYTE(v57[0]) = 0;
            v27 = [fromCopy position] + 1;
            if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:v57 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v26 |= (v57[0] & 0x7F) << v24;
            if ((v57[0] & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v14 = v25++ >= 9;
            if (v14)
            {
              v30 = 0;
              goto LABEL_79;
            }
          }

          if ([fromCopy hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v26;
          }

LABEL_79:
          v49 = 24;
          goto LABEL_84;
        }

        goto LABEL_74;
      }

      if (v16 != 3)
      {
        if (v16 == 4)
        {
          v31 = PBReaderReadString();
          v32 = 56;
LABEL_73:
          v48 = *(&v5->super.super.isa + v32);
          *(&v5->super.super.isa + v32) = v31;

          goto LABEL_91;
        }

        goto LABEL_74;
      }

      v57[0] = 0;
      v57[1] = 0;
      if (!PBReaderPlaceMark() || (v39 = [[BMMLSELabeledDataStoreFeature alloc] initByReadFrom:fromCopy]) == 0)
      {
LABEL_96:

        goto LABEL_93;
      }

      v40 = v39;
      [v6 addObject:v39];
      PBReaderRecallMark();

LABEL_91:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_92;
      }
    }

    if (v16 <= 6)
    {
      if (v16 == 5)
      {
        v41 = 0;
        v42 = 0;
        v43 = 0;
        v5->_hasIsPositiveLabeled = 1;
        while (1)
        {
          LOBYTE(v57[0]) = 0;
          v44 = [fromCopy position] + 1;
          if (v44 >= [fromCopy position] && (v45 = objc_msgSend(fromCopy, "position") + 1, v45 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:v57 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v43 |= (v57[0] & 0x7F) << v41;
          if ((v57[0] & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v14 = v42++ >= 9;
          if (v14)
          {
            LOBYTE(v47) = 0;
            goto LABEL_86;
          }
        }

        v47 = (v43 != 0) & ~[fromCopy hasError];
LABEL_86:
        v5->_isPositiveLabeled = v47;
        goto LABEL_91;
      }

      if (v16 == 6)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v5->_hasLabelingPolicyVersion = 1;
        while (1)
        {
          LOBYTE(v57[0]) = 0;
          v36 = [fromCopy position] + 1;
          if (v36 >= [fromCopy position] && (v37 = objc_msgSend(fromCopy, "position") + 1, v37 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:v57 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v35 |= (v57[0] & 0x7F) << v33;
          if ((v57[0] & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v14 = v34++ >= 9;
          if (v14)
          {
            v30 = 0;
            goto LABEL_83;
          }
        }

        if ([fromCopy hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v35;
        }

LABEL_83:
        v49 = 28;
LABEL_84:
        *(&v5->super.super.isa + v49) = v30;
        goto LABEL_91;
      }
    }

    else
    {
      switch(v16)
      {
        case 9:
          v31 = PBReaderReadString();
          v32 = 72;
          goto LABEL_73;
        case 8:
          v31 = PBReaderReadString();
          v32 = 64;
          goto LABEL_73;
        case 7:
          v17 = 0;
          v18 = 0;
          v19 = 0;
          while (1)
          {
            LOBYTE(v57[0]) = 0;
            v20 = [fromCopy position] + 1;
            if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:v57 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v19 |= (v57[0] & 0x7F) << v17;
            if ((v57[0] & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            if (v18++ > 8)
            {
              goto LABEL_89;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v19 > 3)
          {
LABEL_89:
            LODWORD(v19) = 0;
          }

          v5->_labelingEvidence = v19;
          goto LABEL_91;
      }
    }

LABEL_74:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_91;
  }

LABEL_92:
  v51 = [v6 copy];
  featureVector = v5->_featureVector;
  v5->_featureVector = v51;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_93:
    v54 = 0;
  }

  else
  {
LABEL_94:
    v54 = v5;
  }

  return v54;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  itemIdentifier = [(BMMLSELabeledDataStore *)self itemIdentifier];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSELabeledDataStore featureVersion](self, "featureVersion")}];
  featureVector = [(BMMLSELabeledDataStore *)self featureVector];
  deviceIdentifier = [(BMMLSELabeledDataStore *)self deviceIdentifier];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMLSELabeledDataStore isPositiveLabeled](self, "isPositiveLabeled")}];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSELabeledDataStore labelingPolicyVersion](self, "labelingPolicyVersion")}];
  v10 = BMMLSELabeledDataStoreLabelingEvidenceTypeAsString([(BMMLSELabeledDataStore *)self labelingEvidence]);
  sharingEventUID = [(BMMLSELabeledDataStore *)self sharingEventUID];
  configurationInfo = [(BMMLSELabeledDataStore *)self configurationInfo];
  v13 = [v3 initWithFormat:@"BMMLSELabeledDataStore with itemIdentifier: %@, featureVersion: %@, featureVector: %@, deviceIdentifier: %@, isPositiveLabeled: %@, labelingPolicyVersion: %@, labelingEvidence: %@, sharingEventUID: %@, configurationInfo: %@", itemIdentifier, v5, featureVector, deviceIdentifier, v8, v9, v10, sharingEventUID, configurationInfo];

  return v13;
}

- (BMMLSELabeledDataStore)initWithItemIdentifier:(id)identifier featureVersion:(id)version featureVector:(id)vector deviceIdentifier:(id)deviceIdentifier isPositiveLabeled:(id)labeled labelingPolicyVersion:(id)policyVersion labelingEvidence:(int)evidence sharingEventUID:(id)self0 configurationInfo:(id)self1
{
  identifierCopy = identifier;
  versionCopy = version;
  vectorCopy = vector;
  deviceIdentifierCopy = deviceIdentifier;
  labeledCopy = labeled;
  policyVersionCopy = policyVersion;
  dCopy = d;
  infoCopy = info;
  v30.receiver = self;
  v30.super_class = BMMLSELabeledDataStore;
  v22 = [(BMEventBase *)&v30 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v22->_itemIdentifier, identifier);
    if (versionCopy)
    {
      v22->_hasFeatureVersion = 1;
      unsignedIntValue = [versionCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v22->_hasFeatureVersion = 0;
    }

    v22->_featureVersion = unsignedIntValue;
    objc_storeStrong(&v22->_featureVector, vector);
    objc_storeStrong(&v22->_deviceIdentifier, deviceIdentifier);
    if (labeledCopy)
    {
      v22->_hasIsPositiveLabeled = 1;
      v22->_isPositiveLabeled = [labeledCopy BOOLValue];
    }

    else
    {
      v22->_hasIsPositiveLabeled = 0;
      v22->_isPositiveLabeled = 0;
    }

    if (policyVersionCopy)
    {
      v22->_hasLabelingPolicyVersion = 1;
      unsignedIntValue2 = [policyVersionCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v22->_hasLabelingPolicyVersion = 0;
    }

    v22->_labelingPolicyVersion = unsignedIntValue2;
    v22->_labelingEvidence = evidence;
    objc_storeStrong(&v22->_sharingEventUID, d);
    objc_storeStrong(&v22->_configurationInfo, info);
  }

  return v22;
}

+ (id)protoFields
{
  v13[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemIdentifier" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"featureVersion" number:2 type:4 subMessageClass:{0, v2}];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"featureVector" number:3 type:14 subMessageClass:objc_opt_class()];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceIdentifier" number:4 type:13 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isPositiveLabeled" number:5 type:12 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"labelingPolicyVersion" number:6 type:4 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"labelingEvidence" number:7 type:4 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sharingEventUID" number:8 type:13 subMessageClass:0];
  v13[7] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"configurationInfo" number:9 type:13 subMessageClass:0];
  v13[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:9];

  return v11;
}

+ (id)columns
{
  v13[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"featureVersion" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"featureVector_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_340];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceIdentifier" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isPositiveLabeled" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"labelingPolicyVersion" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"labelingEvidence" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sharingEventUID" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"configurationInfo" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
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

id __33__BMMLSELabeledDataStore_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _featureVectorJSONArray];
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

    v8 = [[BMMLSELabeledDataStore alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end