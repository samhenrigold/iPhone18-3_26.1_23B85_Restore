@interface BMAppIntentInvocationActionOutputConfirmationActionName
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAppIntentInvocationActionOutputConfirmationActionName)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMAppIntentInvocationActionOutputConfirmationActionName)initWithType:(int)type destructive:(id)destructive acceptLabel:(id)label acceptAlternatives:(id)alternatives denyLabel:(id)denyLabel denyAlternatives:(id)denyAlternatives;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_acceptAlternativesJSONArray;
- (id)_denyAlternativesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAppIntentInvocationActionOutputConfirmationActionName

+ (id)protoFields
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:1 type:4 subMessageClass:0];
  v10[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"destructive" number:2 type:12 subMessageClass:0];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"acceptLabel" number:3 type:14 subMessageClass:objc_opt_class()];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"acceptAlternatives" number:4 type:14 subMessageClass:objc_opt_class()];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"denyLabel" number:5 type:14 subMessageClass:objc_opt_class()];
  v10[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"denyAlternatives" number:6 type:14 subMessageClass:objc_opt_class()];
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    type = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self type];
    if (type != [v5 type])
    {
      goto LABEL_19;
    }

    if (-[BMAppIntentInvocationActionOutputConfirmationActionName hasDestructive](self, "hasDestructive") || [v5 hasDestructive])
    {
      if (![(BMAppIntentInvocationActionOutputConfirmationActionName *)self hasDestructive])
      {
        goto LABEL_19;
      }

      if (![v5 hasDestructive])
      {
        goto LABEL_19;
      }

      destructive = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self destructive];
      if (destructive != [v5 destructive])
      {
        goto LABEL_19;
      }
    }

    acceptLabel = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self acceptLabel];
    acceptLabel2 = [v5 acceptLabel];
    v10 = acceptLabel2;
    if (acceptLabel == acceptLabel2)
    {
    }

    else
    {
      acceptLabel3 = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self acceptLabel];
      acceptLabel4 = [v5 acceptLabel];
      v13 = [acceptLabel3 isEqual:acceptLabel4];

      if (!v13)
      {
        goto LABEL_19;
      }
    }

    acceptAlternatives = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self acceptAlternatives];
    acceptAlternatives2 = [v5 acceptAlternatives];
    v17 = acceptAlternatives2;
    if (acceptAlternatives == acceptAlternatives2)
    {
    }

    else
    {
      acceptAlternatives3 = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self acceptAlternatives];
      acceptAlternatives4 = [v5 acceptAlternatives];
      v20 = [acceptAlternatives3 isEqual:acceptAlternatives4];

      if (!v20)
      {
        goto LABEL_19;
      }
    }

    denyLabel = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self denyLabel];
    denyLabel2 = [v5 denyLabel];
    v23 = denyLabel2;
    if (denyLabel == denyLabel2)
    {
    }

    else
    {
      denyLabel3 = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self denyLabel];
      denyLabel4 = [v5 denyLabel];
      v26 = [denyLabel3 isEqual:denyLabel4];

      if (!v26)
      {
LABEL_19:
        v14 = 0;
LABEL_20:

        goto LABEL_21;
      }
    }

    denyAlternatives = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self denyAlternatives];
    denyAlternatives2 = [v5 denyAlternatives];
    if (denyAlternatives == denyAlternatives2)
    {
      v14 = 1;
    }

    else
    {
      denyAlternatives3 = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self denyAlternatives];
      denyAlternatives4 = [v5 denyAlternatives];
      v14 = [denyAlternatives3 isEqual:denyAlternatives4];
    }

    goto LABEL_20;
  }

  v14 = 0;
LABEL_21:

  return v14;
}

- (id)jsonDictionary
{
  v24[6] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppIntentInvocationActionOutputConfirmationActionName type](self, "type")}];
  if ([(BMAppIntentInvocationActionOutputConfirmationActionName *)self hasDestructive])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppIntentInvocationActionOutputConfirmationActionName destructive](self, "destructive")}];
  }

  else
  {
    v4 = 0;
  }

  acceptLabel = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self acceptLabel];
  jsonDictionary = [acceptLabel jsonDictionary];

  _acceptAlternativesJSONArray = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self _acceptAlternativesJSONArray];
  denyLabel = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self denyLabel];
  jsonDictionary2 = [denyLabel jsonDictionary];

  _denyAlternativesJSONArray = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self _denyAlternativesJSONArray];
  v23[0] = @"type";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v24[0] = null;
  v23[1] = @"destructive";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null2;
  v24[1] = null2;
  v23[2] = @"acceptLabel";
  null3 = jsonDictionary;
  if (!jsonDictionary)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v3;
  v24[2] = null3;
  v23[3] = @"acceptAlternatives";
  null4 = _acceptAlternativesJSONArray;
  if (!_acceptAlternativesJSONArray)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v24[3] = null4;
  v23[4] = @"denyLabel";
  null5 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v24[4] = null5;
  v23[5] = @"denyAlternatives";
  null6 = _denyAlternativesJSONArray;
  if (!_denyAlternativesJSONArray)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v24[5] = null6;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:{6, v19}];
  if (_denyAlternativesJSONArray)
  {
    if (jsonDictionary2)
    {
      goto LABEL_18;
    }

LABEL_26:

    if (_acceptAlternativesJSONArray)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

  if (!jsonDictionary2)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (_acceptAlternativesJSONArray)
  {
    goto LABEL_19;
  }

LABEL_27:

LABEL_19:
  if (jsonDictionary)
  {
    if (v4)
    {
      goto LABEL_21;
    }

LABEL_29:

    if (v22)
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  if (!v4)
  {
    goto LABEL_29;
  }

LABEL_21:
  if (v22)
  {
    goto LABEL_22;
  }

LABEL_30:

LABEL_22:

  return v17;
}

- (id)_denyAlternativesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  denyAlternatives = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self denyAlternatives];
  v5 = [denyAlternatives countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(denyAlternatives);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [denyAlternatives countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_acceptAlternativesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  acceptAlternatives = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self acceptAlternatives];
  v5 = [acceptAlternatives countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(acceptAlternatives);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [acceptAlternatives countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMAppIntentInvocationActionOutputConfirmationActionName)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v139[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"type"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v56 = objc_alloc(MEMORY[0x1E696ABC0]);
          v57 = *MEMORY[0x1E698F240];
          v138 = *MEMORY[0x1E696A578];
          errorCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"type"];
          v139[0] = errorCopy;
          v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v139 forKeys:&v138 count:1];
          v59 = v56;
          v9 = v58;
          v7 = 0;
          v29 = 0;
          *error = [v59 initWithDomain:v57 code:2 userInfo:v58];
          goto LABEL_107;
        }

        v7 = 0;
        v29 = 0;
        goto LABEL_108;
      }

      v8 = [MEMORY[0x1E696AD98] numberWithInt:BMAppIntentInvocationActionOutputConfirmationActionNameTypeFromString(v6)];
    }

    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"destructive"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      errorCopy = error;
      if (error)
      {
        v31 = v9;
        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = *MEMORY[0x1E698F240];
        v136 = *MEMORY[0x1E696A578];
        v34 = v7;
        v35 = objc_alloc(MEMORY[0x1E696AEC0]);
        v90 = objc_opt_class();
        v36 = v35;
        v7 = v34;
        v27 = [v36 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v90, @"destructive"];
        v137 = v27;
        v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
        v38 = v32;
        v9 = v31;
        v103 = v37;
        errorCopy = 0;
        v29 = 0;
        *error = [v38 initWithDomain:v33 code:2 userInfo:?];

        goto LABEL_106;
      }

      v29 = 0;
      goto LABEL_107;
    }

    v101 = v9;
  }

  else
  {
    v101 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"acceptLabel"];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    selfCopy2 = self;
    v99 = v9;
    v95 = v6;
    v102 = 0;
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!error)
    {
      v29 = 0;
      errorCopy = v101;
      v27 = v10;
      goto LABEL_106;
    }

    v100 = v9;
    v39 = objc_alloc(MEMORY[0x1E696ABC0]);
    v40 = *MEMORY[0x1E698F240];
    v134 = *MEMORY[0x1E696A578];
    v41 = v7;
    v42 = objc_alloc(MEMORY[0x1E696AEC0]);
    v91 = objc_opt_class();
    v43 = v42;
    v7 = v41;
    v102 = [v43 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v91, @"acceptLabel"];
    v135 = v102;
    v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
    v45 = v39;
    v9 = v100;
    *error = [v45 initWithDomain:v40 code:2 userInfo:v44];

    v29 = 0;
    v27 = v10;
LABEL_45:
    errorCopy = v101;
    goto LABEL_105;
  }

  v27 = v10;
  v117 = 0;
  v102 = [[BMAppIntentInvocationStaticDeferredLocalizedString alloc] initWithJSONDictionary:v27 error:&v117];
  v28 = v117;
  if (v28)
  {
    if (error)
    {
      v28 = v28;
      *error = v28;
    }

    v29 = 0;
    goto LABEL_45;
  }

  selfCopy2 = self;
  v99 = v9;
  v95 = v6;

LABEL_15:
  v11 = [dictionaryCopy objectForKeyedSubscript:@"acceptAlternatives"];
  null = [MEMORY[0x1E695DFB0] null];
  v13 = [v11 isEqual:null];

  v96 = v7;
  v97 = dictionaryCopy;
  v94 = v10;
  if (v13)
  {

    v11 = 0;
  }

  else if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v54 = objc_alloc(MEMORY[0x1E696ABC0]);
        v55 = *MEMORY[0x1E698F240];
        v132 = *MEMORY[0x1E696A578];
        v105 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"acceptAlternatives"];
        v133 = v105;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
        v29 = 0;
        *error = [v54 initWithDomain:v55 code:2 userInfo:v23];
        goto LABEL_61;
      }

      v29 = 0;
      v9 = v99;
      errorCopy = v101;
      goto LABEL_104;
    }
  }

  v105 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v11 = v11;
  v14 = [v11 countByEnumeratingWithState:&v113 objects:v131 count:16];
  if (!v14)
  {
LABEL_29:

    v23 = [dictionaryCopy objectForKeyedSubscript:@"denyLabel"];
    if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v29 = 0;
          v9 = v99;
          errorCopy = v101;
          goto LABEL_103;
        }

        v77 = objc_alloc(MEMORY[0x1E696ABC0]);
        v78 = *MEMORY[0x1E698F240];
        v125 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"denyLabel"];
        v126 = v19;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
        v29 = 0;
        *error = [v77 initWithDomain:v78 code:2 userInfo:v24];
LABEL_55:
        v7 = v96;
        v9 = v99;
        errorCopy = v101;
        goto LABEL_102;
      }

      v24 = v23;
      v75 = [BMAppIntentInvocationStaticDeferredLocalizedString alloc];
      v111 = 0;
      v19 = [(BMAppIntentInvocationStaticDeferredLocalizedString *)v75 initWithJSONDictionary:v24 error:&v111];
      v76 = v111;
      if (v76)
      {
        v9 = v99;
        if (error)
        {
          v76 = v76;
          *error = v76;
        }

        v29 = 0;
        v23 = v24;
        errorCopy = v101;
        goto LABEL_102;
      }
    }

    else
    {
      v19 = 0;
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"denyAlternatives"];
    null2 = [MEMORY[0x1E695DFB0] null];
    v26 = [v24 isEqual:null2];

    v92 = v23;
    if (v26)
    {

      v24 = 0;
LABEL_66:
      v7 = v96;
      goto LABEL_67;
    }

    if (!v24)
    {
      goto LABEL_66;
    }

    objc_opt_class();
    v7 = v96;
    if (objc_opt_isKindOfClass())
    {
LABEL_67:
      v65 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v24, "count")}];
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      v24 = v24;
      v66 = [v24 countByEnumeratingWithState:&v107 objects:v122 count:16];
      if (!v66)
      {
        goto LABEL_77;
      }

      v67 = v66;
      v68 = *v108;
      v93 = v65;
LABEL_69:
      v69 = 0;
      while (1)
      {
        if (*v108 != v68)
        {
          objc_enumerationMutation(v24);
        }

        v70 = *(*(&v107 + 1) + 8 * v69);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          dictionaryCopy = v97;
          v9 = v99;
          errorCopy = v101;
          errorCopy3 = error;
          if (!error)
          {
            goto LABEL_99;
          }

          v80 = v99;
          v81 = objc_alloc(MEMORY[0x1E696ABC0]);
          v82 = *MEMORY[0x1E698F240];
          v118 = *MEMORY[0x1E696A578];
          v71 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"denyAlternatives"];
          v119 = v71;
          v83 = MEMORY[0x1E695DF20];
          v84 = &v119;
          v85 = &v118;
          goto LABEL_94;
        }

        v71 = v70;
        v72 = [BMAppIntentInvocationStaticDeferredLocalizedString alloc];
        v106 = 0;
        v73 = [(BMAppIntentInvocationStaticDeferredLocalizedString *)v72 initWithJSONDictionary:v71 error:&v106];
        v74 = v106;
        if (v74)
        {
          v86 = v74;
          if (error)
          {
            v88 = v74;
            *error = v86;
          }

          dictionaryCopy = v97;
          v9 = v99;
          errorCopy = v101;
LABEL_98:

LABEL_99:
          v29 = 0;
          v7 = v96;
          v65 = v93;
          goto LABEL_100;
        }

        [v93 addObject:v73];

        if (v67 == ++v69)
        {
          v67 = [v24 countByEnumeratingWithState:&v107 objects:v122 count:16];
          v7 = v96;
          v65 = v93;
          if (v67)
          {
            goto LABEL_69;
          }

LABEL_77:

          errorCopy = v101;
          v29 = -[BMAppIntentInvocationActionOutputConfirmationActionName initWithType:destructive:acceptLabel:acceptAlternatives:denyLabel:denyAlternatives:](selfCopy2, "initWithType:destructive:acceptLabel:acceptAlternatives:denyLabel:denyAlternatives:", [v7 intValue], v101, v102, v105, v19, v65);
          selfCopy2 = v29;
          dictionaryCopy = v97;
          v9 = v99;
LABEL_100:

          goto LABEL_101;
        }
      }

      dictionaryCopy = v97;
      v9 = v99;
      errorCopy = v101;
      errorCopy3 = error;
      if (!error)
      {
        goto LABEL_99;
      }

      v80 = v99;
      v81 = objc_alloc(MEMORY[0x1E696ABC0]);
      v82 = *MEMORY[0x1E698F240];
      v120 = *MEMORY[0x1E696A578];
      v71 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"denyAlternatives"];
      v121 = v71;
      v83 = MEMORY[0x1E695DF20];
      v84 = &v121;
      v85 = &v120;
LABEL_94:
      v86 = [v83 dictionaryWithObjects:v84 forKeys:v85 count:1];
      v87 = v81;
      v9 = v80;
      errorCopy = v101;
      *errorCopy3 = [v87 initWithDomain:v82 code:2 userInfo:v86];
      goto LABEL_98;
    }

    if (error)
    {
      v60 = objc_alloc(MEMORY[0x1E696ABC0]);
      v61 = *MEMORY[0x1E698F240];
      v123 = *MEMORY[0x1E696A578];
      v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"denyAlternatives"];
      v124 = v62;
      v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
      v64 = v61;
      v7 = v96;
      *error = [v60 initWithDomain:v64 code:2 userInfo:v63];
      v65 = v62;

      v29 = 0;
      v9 = v99;
      errorCopy = v101;
      goto LABEL_100;
    }

    v29 = 0;
    v9 = v99;
    errorCopy = v101;
LABEL_101:
    v23 = v92;
LABEL_102:

    goto LABEL_103;
  }

  v15 = v14;
  v16 = *v114;
LABEL_21:
  v17 = 0;
  while (1)
  {
    if (*v114 != v16)
    {
      objc_enumerationMutation(v11);
    }

    v18 = *(*(&v113 + 1) + 8 * v17);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      errorCopy5 = error;
      if (!error)
      {
        goto LABEL_60;
      }

      v51 = objc_alloc(MEMORY[0x1E696ABC0]);
      v52 = *MEMORY[0x1E698F240];
      v127 = *MEMORY[0x1E696A578];
      v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"acceptAlternatives"];
      v128 = v19;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
      v49 = v51;
      v50 = v52;
LABEL_50:
      v29 = 0;
      *errorCopy5 = [v49 initWithDomain:v50 code:2 userInfo:v24];
LABEL_54:
      v23 = v11;
      goto LABEL_55;
    }

    v19 = v18;
    v20 = [BMAppIntentInvocationStaticDeferredLocalizedString alloc];
    v112 = 0;
    v21 = [(BMAppIntentInvocationStaticDeferredLocalizedString *)v20 initWithJSONDictionary:v19 error:&v112];
    v22 = v112;
    if (v22)
    {
      v24 = v22;
      if (error)
      {
        v53 = v22;
        *error = v24;
      }

      v29 = 0;
      goto LABEL_54;
    }

    [v105 addObject:v21];

    if (v15 == ++v17)
    {
      v15 = [v11 countByEnumeratingWithState:&v113 objects:v131 count:16];
      if (!v15)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }
  }

  if (error)
  {
    v46 = objc_alloc(MEMORY[0x1E696ABC0]);
    errorCopy5 = error;
    v48 = *MEMORY[0x1E698F240];
    v129 = *MEMORY[0x1E696A578];
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"acceptAlternatives"];
    v130 = v19;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
    v49 = v46;
    v50 = v48;
    goto LABEL_50;
  }

LABEL_60:
  v29 = 0;
  v23 = v11;
LABEL_61:
  v9 = v99;
  errorCopy = v101;
LABEL_103:

LABEL_104:
  v27 = v94;
  v6 = v95;
  self = selfCopy2;
LABEL_105:

LABEL_106:
LABEL_107:

LABEL_108:
  return v29;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppIntentInvocationActionOutputConfirmationActionName *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x1E69E9840];
  toCopy = to;
  PBDataWriterWriteUint32Field();
  if (self->_hasDestructive)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_acceptLabel)
  {
    v25 = 0;
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationStaticDeferredLocalizedString *)self->_acceptLabel writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_acceptAlternatives;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        v25 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v7);
  }

  if (self->_denyLabel)
  {
    v25 = 0;
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationStaticDeferredLocalizedString *)self->_denyLabel writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = self->_denyAlternatives;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        v25 = 0;
        PBDataWriterPlaceMark();
        [v16 writeTo:{toCopy, v17}];
        PBDataWriterRecallMark();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v26 count:16];
    }

    while (v13);
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v47.receiver = self;
  v47.super_class = BMAppIntentInvocationActionOutputConfirmationActionName;
  v5 = [(BMEventBase *)&v47 init];
  if (!v5)
  {
    goto LABEL_67;
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
        LOBYTE(v48) = 0;
        v12 = [fromCopy position] + 1;
        if (v12 >= [fromCopy position] && (v13 = objc_msgSend(fromCopy, "position") + 1, v13 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v11 |= (v48 & 0x7F) << v9;
        if ((v48 & 0x80) == 0)
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
      if ((v16 >> 3) > 3)
      {
        switch(v17)
        {
          case 4:
            v48 = 0;
            v49 = 0;
            if (!PBReaderPlaceMark() || (v30 = [[BMAppIntentInvocationStaticDeferredLocalizedString alloc] initByReadFrom:fromCopy]) == 0)
            {
LABEL_68:

              goto LABEL_69;
            }

            v21 = v30;
            v22 = v6;
            goto LABEL_43;
          case 5:
            v48 = 0;
            v49 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_68;
            }

            v18 = [[BMAppIntentInvocationStaticDeferredLocalizedString alloc] initByReadFrom:fromCopy];
            if (!v18)
            {
              goto LABEL_68;
            }

            v19 = 48;
            goto LABEL_58;
          case 6:
            v48 = 0;
            v49 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_68;
            }

            v20 = [[BMAppIntentInvocationStaticDeferredLocalizedString alloc] initByReadFrom:fromCopy];
            if (!v20)
            {
              goto LABEL_68;
            }

            v21 = v20;
            v22 = v7;
LABEL_43:
            [v22 addObject:v21];
            PBReaderRecallMark();

            goto LABEL_65;
        }
      }

      else
      {
        switch(v17)
        {
          case 1:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            while (1)
            {
              LOBYTE(v48) = 0;
              v26 = [fromCopy position] + 1;
              if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v25 |= (v48 & 0x7F) << v23;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              if (v24++ > 8)
              {
                goto LABEL_61;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v25 > 0x22)
            {
LABEL_61:
              LODWORD(v25) = 0;
            }

            v5->_type = v25;
            goto LABEL_65;
          case 2:
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v5->_hasDestructive = 1;
            while (1)
            {
              LOBYTE(v48) = 0;
              v34 = [fromCopy position] + 1;
              if (v34 >= [fromCopy position] && (v35 = objc_msgSend(fromCopy, "position") + 1, v35 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v33 |= (v48 & 0x7F) << v31;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v15 = v32++ >= 9;
              if (v15)
              {
                LOBYTE(v37) = 0;
                goto LABEL_64;
              }
            }

            v37 = (v33 != 0) & ~[fromCopy hasError];
LABEL_64:
            v5->_destructive = v37;
            goto LABEL_65;
          case 3:
            v48 = 0;
            v49 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_68;
            }

            v18 = [[BMAppIntentInvocationStaticDeferredLocalizedString alloc] initByReadFrom:fromCopy];
            if (!v18)
            {
              goto LABEL_68;
            }

            v19 = 32;
LABEL_58:
            v38 = *(&v5->super.super.isa + v19);
            *(&v5->super.super.isa + v19) = v18;

            PBReaderRecallMark();
            goto LABEL_65;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_68;
      }

LABEL_65:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v40 = [v6 copy];
  acceptAlternatives = v5->_acceptAlternatives;
  v5->_acceptAlternatives = v40;

  v42 = [v7 copy];
  denyAlternatives = v5->_denyAlternatives;
  v5->_denyAlternatives = v42;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_69:
    v45 = 0;
  }

  else
  {
LABEL_67:
    v45 = v5;
  }

  return v45;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMAppIntentInvocationActionOutputConfirmationActionNameTypeAsString([(BMAppIntentInvocationActionOutputConfirmationActionName *)self type]);
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppIntentInvocationActionOutputConfirmationActionName destructive](self, "destructive")}];
  acceptLabel = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self acceptLabel];
  acceptAlternatives = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self acceptAlternatives];
  denyLabel = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self denyLabel];
  denyAlternatives = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self denyAlternatives];
  v10 = [v3 initWithFormat:@"BMAppIntentInvocationActionOutputConfirmationActionName with type: %@, destructive: %@, acceptLabel: %@, acceptAlternatives: %@, denyLabel: %@, denyAlternatives: %@", v4, v5, acceptLabel, acceptAlternatives, denyLabel, denyAlternatives];

  return v10;
}

- (BMAppIntentInvocationActionOutputConfirmationActionName)initWithType:(int)type destructive:(id)destructive acceptLabel:(id)label acceptAlternatives:(id)alternatives denyLabel:(id)denyLabel denyAlternatives:(id)denyAlternatives
{
  destructiveCopy = destructive;
  labelCopy = label;
  alternativesCopy = alternatives;
  denyLabelCopy = denyLabel;
  denyAlternativesCopy = denyAlternatives;
  v21.receiver = self;
  v21.super_class = BMAppIntentInvocationActionOutputConfirmationActionName;
  v18 = [(BMEventBase *)&v21 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    v18->_type = type;
    if (destructiveCopy)
    {
      v18->_hasDestructive = 1;
      v18->_destructive = [destructiveCopy BOOLValue];
    }

    else
    {
      v18->_hasDestructive = 0;
      v18->_destructive = 0;
    }

    objc_storeStrong(&v18->_acceptLabel, label);
    objc_storeStrong(&v18->_acceptAlternatives, alternatives);
    objc_storeStrong(&v18->_denyLabel, denyLabel);
    objc_storeStrong(&v18->_denyAlternatives, denyAlternatives);
  }

  return v18;
}

+ (id)columns
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"destructive" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"acceptLabel_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_891];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"acceptAlternatives_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_893];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"denyLabel_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_895_42229];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"denyAlternatives_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_897];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

id __66__BMAppIntentInvocationActionOutputConfirmationActionName_columns__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _denyAlternativesJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __66__BMAppIntentInvocationActionOutputConfirmationActionName_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 denyLabel];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __66__BMAppIntentInvocationActionOutputConfirmationActionName_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _acceptAlternativesJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __66__BMAppIntentInvocationActionOutputConfirmationActionName_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 acceptLabel];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
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

    v8 = [[BMAppIntentInvocationActionOutputConfirmationActionName alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end