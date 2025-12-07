@interface BMLocalAuthenticationDialogs
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMLocalAuthenticationDialogs)initWithDialogID:(id)d bundleID:(id)iD timeSinceUpdate:(id)update mechanisms:(id)mechanisms successfulMechanism:(int)mechanism failedMechanisms:(id)failedMechanisms actions:(id)actions failingAction:(int)self0;
- (BMLocalAuthenticationDialogs)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_actionsJSONArray;
- (id)_failedMechanismsJSONArray;
- (id)_mechanismsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMLocalAuthenticationDialogs

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    dialogID = [(BMLocalAuthenticationDialogs *)self dialogID];
    dialogID2 = [v5 dialogID];
    v8 = dialogID2;
    if (dialogID == dialogID2)
    {
    }

    else
    {
      dialogID3 = [(BMLocalAuthenticationDialogs *)self dialogID];
      dialogID4 = [v5 dialogID];
      v11 = [dialogID3 isEqual:dialogID4];

      if (!v11)
      {
        goto LABEL_27;
      }
    }

    bundleID = [(BMLocalAuthenticationDialogs *)self bundleID];
    bundleID2 = [v5 bundleID];
    v15 = bundleID2;
    if (bundleID == bundleID2)
    {
    }

    else
    {
      bundleID3 = [(BMLocalAuthenticationDialogs *)self bundleID];
      bundleID4 = [v5 bundleID];
      v18 = [bundleID3 isEqual:bundleID4];

      if (!v18)
      {
        goto LABEL_27;
      }
    }

    if (-[BMLocalAuthenticationDialogs hasTimeSinceUpdate](self, "hasTimeSinceUpdate") || [v5 hasTimeSinceUpdate])
    {
      if (![(BMLocalAuthenticationDialogs *)self hasTimeSinceUpdate])
      {
        goto LABEL_27;
      }

      if (![v5 hasTimeSinceUpdate])
      {
        goto LABEL_27;
      }

      timeSinceUpdate = [(BMLocalAuthenticationDialogs *)self timeSinceUpdate];
      if (timeSinceUpdate != [v5 timeSinceUpdate])
      {
        goto LABEL_27;
      }
    }

    mechanisms = [(BMLocalAuthenticationDialogs *)self mechanisms];
    mechanisms2 = [v5 mechanisms];
    v22 = mechanisms2;
    if (mechanisms == mechanisms2)
    {
    }

    else
    {
      mechanisms3 = [(BMLocalAuthenticationDialogs *)self mechanisms];
      mechanisms4 = [v5 mechanisms];
      v25 = [mechanisms3 isEqual:mechanisms4];

      if (!v25)
      {
        goto LABEL_27;
      }
    }

    successfulMechanism = [(BMLocalAuthenticationDialogs *)self successfulMechanism];
    if (successfulMechanism == [v5 successfulMechanism])
    {
      failedMechanisms = [(BMLocalAuthenticationDialogs *)self failedMechanisms];
      failedMechanisms2 = [v5 failedMechanisms];
      v29 = failedMechanisms2;
      if (failedMechanisms == failedMechanisms2)
      {
      }

      else
      {
        failedMechanisms3 = [(BMLocalAuthenticationDialogs *)self failedMechanisms];
        failedMechanisms4 = [v5 failedMechanisms];
        v32 = [failedMechanisms3 isEqual:failedMechanisms4];

        if (!v32)
        {
          goto LABEL_27;
        }
      }

      actions = [(BMLocalAuthenticationDialogs *)self actions];
      actions2 = [v5 actions];
      v35 = actions2;
      if (actions == actions2)
      {
      }

      else
      {
        actions3 = [(BMLocalAuthenticationDialogs *)self actions];
        actions4 = [v5 actions];
        v38 = [actions3 isEqual:actions4];

        if (!v38)
        {
          goto LABEL_27;
        }
      }

      failingAction = [(BMLocalAuthenticationDialogs *)self failingAction];
      v12 = failingAction == [v5 failingAction];
      goto LABEL_28;
    }

LABEL_27:
    v12 = 0;
LABEL_28:

    goto LABEL_29;
  }

  v12 = 0;
LABEL_29:

  return v12;
}

- (id)jsonDictionary
{
  v29[8] = *MEMORY[0x1E69E9840];
  dialogID = [(BMLocalAuthenticationDialogs *)self dialogID];
  bundleID = [(BMLocalAuthenticationDialogs *)self bundleID];
  if ([(BMLocalAuthenticationDialogs *)self hasTimeSinceUpdate])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMLocalAuthenticationDialogs timeSinceUpdate](self, "timeSinceUpdate")}];
  }

  else
  {
    v5 = 0;
  }

  _mechanismsJSONArray = [(BMLocalAuthenticationDialogs *)self _mechanismsJSONArray];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocalAuthenticationDialogs successfulMechanism](self, "successfulMechanism")}];
  _failedMechanismsJSONArray = [(BMLocalAuthenticationDialogs *)self _failedMechanismsJSONArray];
  _actionsJSONArray = [(BMLocalAuthenticationDialogs *)self _actionsJSONArray];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocalAuthenticationDialogs failingAction](self, "failingAction")}];
  v28[0] = @"dialogID";
  null = dialogID;
  if (!dialogID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v23 = null;
  v29[0] = null;
  v28[1] = @"bundleID";
  null2 = bundleID;
  if (!bundleID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = null2;
  v29[1] = null2;
  v28[2] = @"timeSinceUpdate";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = dialogID;
  v21 = null3;
  v29[2] = null3;
  v28[3] = @"mechanisms";
  null4 = _mechanismsJSONArray;
  if (!_mechanismsJSONArray)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = bundleID;
  v29[3] = null4;
  v28[4] = @"successfulMechanism";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v5;
  v29[4] = null5;
  v28[5] = @"failedMechanisms";
  null6 = _failedMechanismsJSONArray;
  if (!_failedMechanismsJSONArray)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v17 = _mechanismsJSONArray;
  v29[5] = null6;
  v28[6] = @"actions";
  null7 = _actionsJSONArray;
  if (!_actionsJSONArray)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v29[6] = null7;
  v28[7] = @"failingAction";
  null8 = v10;
  if (!v10)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v29[7] = null8;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:8];
  if (v10)
  {
    if (_actionsJSONArray)
    {
      goto LABEL_22;
    }

LABEL_34:

    if (_failedMechanismsJSONArray)
    {
      goto LABEL_23;
    }

    goto LABEL_35;
  }

  if (!_actionsJSONArray)
  {
    goto LABEL_34;
  }

LABEL_22:
  if (_failedMechanismsJSONArray)
  {
    goto LABEL_23;
  }

LABEL_35:

LABEL_23:
  if (!v7)
  {
  }

  if (!v17)
  {
  }

  if (v25)
  {
    if (v26)
    {
      goto LABEL_29;
    }

LABEL_37:

    if (v27)
    {
      goto LABEL_30;
    }

    goto LABEL_38;
  }

  if (!v26)
  {
    goto LABEL_37;
  }

LABEL_29:
  if (v27)
  {
    goto LABEL_30;
  }

LABEL_38:

LABEL_30:

  return v24;
}

- (id)_actionsJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  actions = [(BMLocalAuthenticationDialogs *)self actions];
  v5 = [actions countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(actions);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [actions countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_failedMechanismsJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  failedMechanisms = [(BMLocalAuthenticationDialogs *)self failedMechanisms];
  v5 = [failedMechanisms countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(failedMechanisms);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [failedMechanisms countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_mechanismsJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  mechanisms = [(BMLocalAuthenticationDialogs *)self mechanisms];
  v5 = [mechanisms countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(mechanisms);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [mechanisms countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMLocalAuthenticationDialogs)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v178[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"dialogID"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = *MEMORY[0x1E698F240];
        v177 = *MEMORY[0x1E696A578];
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"dialogID"];
        v178[0] = v9;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v178 forKeys:&v177 count:1];
        v35 = v33;
        v8 = v34;
        v7 = 0;
        selfCopy4 = 0;
        *error = [v32 initWithDomain:v35 code:2 userInfo:v34];
        goto LABEL_133;
      }

      v7 = 0;
      selfCopy4 = 0;
      goto LABEL_134;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v37 = objc_alloc(MEMORY[0x1E696ABC0]);
        v38 = v8;
        v39 = *MEMORY[0x1E698F240];
        v175 = *MEMORY[0x1E696A578];
        selfCopy = self;
        v41 = objc_alloc(MEMORY[0x1E696AEC0]);
        v116 = objc_opt_class();
        v42 = v41;
        self = selfCopy;
        v12 = [v42 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v116, @"bundleID"];
        v176 = v12;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v176 forKeys:&v175 count:1];
        v44 = v37;
        v11 = v43;
        v45 = v39;
        v8 = v38;
        v9 = 0;
        selfCopy4 = 0;
        *error = [v44 initWithDomain:v45 code:2 userInfo:v43];
        goto LABEL_132;
      }

      v9 = 0;
      selfCopy4 = 0;
      goto LABEL_133;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceUpdate"];
  v130 = v7;
  v131 = v10;
  v129 = v6;
  if (v10 && (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v46 = objc_alloc(MEMORY[0x1E696ABC0]);
        v47 = v9;
        v48 = v8;
        v49 = *MEMORY[0x1E698F240];
        v173 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"timeSinceUpdate"];
        v174 = v13;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v174 forKeys:&v173 count:1];
        v50 = v46;
        v11 = v131;
        v51 = v49;
        v8 = v48;
        v9 = v47;
        v12 = 0;
        selfCopy4 = 0;
        *error = [v50 initWithDomain:v51 code:2 userInfo:v16];
        goto LABEL_130;
      }

      v12 = 0;
      selfCopy4 = 0;
      goto LABEL_132;
    }

    v128 = v8;
    v12 = v11;
  }

  else
  {
    v128 = v8;
    v12 = 0;
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"mechanisms"];
  null = [MEMORY[0x1E695DFB0] null];
  v15 = [v13 isEqual:null];

  if (v15)
  {
    v126 = v12;
    v127 = v9;
    selfCopy3 = self;

    v13 = 0;
  }

  else
  {
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          selfCopy4 = 0;
          v8 = v128;
          v11 = v131;
          goto LABEL_131;
        }

        v55 = objc_alloc(MEMORY[0x1E696ABC0]);
        v56 = *MEMORY[0x1E698F240];
        v171 = *MEMORY[0x1E696A578];
        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"mechanisms"];
        v172 = v16;
        v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v172 forKeys:&v171 count:1];
        v57 = [v55 initWithDomain:v56 code:2 userInfo:v54];
        selfCopy4 = 0;
        *error = v57;
        v8 = v128;
        goto LABEL_50;
      }
    }

    v126 = v12;
    v127 = v9;
    selfCopy3 = self;
  }

  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v13, "count")}];
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v13 = v13;
  v17 = [v13 countByEnumeratingWithState:&v144 objects:v170 count:16];
  if (!v17)
  {
    goto LABEL_29;
  }

  v18 = v17;
  v19 = *v145;
  do
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v145 != v19)
      {
        objc_enumerationMutation(v13);
      }

      v21 = *(*(&v144 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy2 = error;
        if (error)
        {
          v27 = objc_alloc(MEMORY[0x1E696ABC0]);
          v28 = *MEMORY[0x1E698F240];
          v168 = *MEMORY[0x1E696A578];
          v123 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"mechanisms"];
          v169 = v123;
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v169 forKeys:&v168 count:1];
          v30 = v27;
          v31 = v28;
LABEL_46:
          v132 = v29;
          self = selfCopy3;
          v12 = v126;
          v9 = v127;
          v11 = v131;
          selfCopy4 = 0;
          *errorCopy2 = [v30 initWithDomain:v31 code:2 userInfo:?];
          v54 = v13;
          v8 = v128;

          goto LABEL_128;
        }

LABEL_47:
        selfCopy4 = 0;
        v54 = v13;
        v8 = v128;
        self = selfCopy3;
        v12 = v126;
        v9 = v127;
LABEL_50:
        v11 = v131;
        goto LABEL_129;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          errorCopy2 = error;
          if (error)
          {
            v52 = objc_alloc(MEMORY[0x1E696ABC0]);
            v53 = *MEMORY[0x1E698F240];
            v166 = *MEMORY[0x1E696A578];
            v123 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"mechanisms"];
            v167 = v123;
            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v167 forKeys:&v166 count:1];
            v30 = v52;
            v31 = v53;
            goto LABEL_46;
          }

          goto LABEL_47;
        }

        v22 = [MEMORY[0x1E696AD98] numberWithInt:BMLocalAuthenticationDialogsMechanismFromString(v21)];
      }

      v23 = v22;
      [v16 addObject:v22];
    }

    v18 = [v13 countByEnumeratingWithState:&v144 objects:v170 count:16];
  }

  while (v18);
LABEL_29:

  v24 = [dictionaryCopy objectForKeyedSubscript:@"successfulMechanism"];
  v123 = v24;
  if (v24)
  {
    v25 = v24;
    objc_opt_class();
    v11 = v131;
    if (objc_opt_isKindOfClass())
    {
      v121 = 0;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v121 = v25;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v101 = objc_alloc(MEMORY[0x1E696ABC0]);
            v102 = *MEMORY[0x1E698F240];
            v164 = *MEMORY[0x1E696A578];
            v103 = objc_alloc(MEMORY[0x1E696AEC0]);
            v117 = objc_opt_class();
            v104 = v103;
            v11 = v131;
            v133 = [v104 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v117, @"successfulMechanism"];
            v165 = v133;
            v135 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v165 forKeys:&v164 count:1];
            v105 = [v101 initWithDomain:v102 code:2 userInfo:?];
            v54 = 0;
            selfCopy4 = 0;
            *error = v105;
            self = selfCopy3;
            v9 = v127;
            v8 = v128;
            goto LABEL_126;
          }

          v54 = 0;
          selfCopy4 = 0;
          self = selfCopy3;
          v12 = v126;
          v9 = v127;
          v8 = v128;
          goto LABEL_128;
        }

        v121 = [MEMORY[0x1E696AD98] numberWithInt:BMLocalAuthenticationDialogsMechanismFromString(v25)];
      }
    }
  }

  else
  {
    v121 = 0;
    v11 = v131;
  }

  v58 = [dictionaryCopy objectForKeyedSubscript:@"failedMechanisms"];
  null2 = [MEMORY[0x1E695DFB0] null];
  v60 = [v58 isEqual:null2];

  if (v60)
  {

    goto LABEL_65;
  }

  v9 = v127;
  if (v58)
  {
    objc_opt_class();
    v133 = v58;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        selfCopy4 = 0;
        self = selfCopy3;
        v12 = v126;
        v8 = v128;
        v54 = v121;
        goto LABEL_127;
      }

      v93 = objc_alloc(MEMORY[0x1E696ABC0]);
      v94 = *MEMORY[0x1E698F240];
      v162 = *MEMORY[0x1E696A578];
      v135 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"failedMechanisms"];
      v163 = v135;
      obj = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v163 forKeys:&v162 count:1];
      selfCopy4 = 0;
      *error = [v93 initWithDomain:v94 code:2 userInfo:?];
      self = selfCopy3;
      v8 = v128;
      goto LABEL_106;
    }

    v61 = v58;
  }

  else
  {
LABEL_65:
    v61 = 0;
  }

  v135 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v61, "count")}];
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v62 = v61;
  v63 = [v62 countByEnumeratingWithState:&v140 objects:v161 count:16];
  v133 = v62;
  if (!v63)
  {
    goto LABEL_78;
  }

  v64 = v63;
  v65 = *v141;
  while (2)
  {
    v66 = 0;
    while (2)
    {
      if (*v141 != v65)
      {
        objc_enumerationMutation(v62);
      }

      v67 = *(*(&v140 + 1) + 8 * v66);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy4 = error;
        if (error)
        {
          v77 = objc_alloc(MEMORY[0x1E696ABC0]);
          v78 = *MEMORY[0x1E698F240];
          v159 = *MEMORY[0x1E696A578];
          v124 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"failedMechanisms"];
          v160 = v124;
          v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
          v80 = v77;
          goto LABEL_84;
        }

LABEL_85:
        selfCopy4 = 0;
        obj = v62;
        v8 = v128;
        self = selfCopy3;
        v9 = v127;
LABEL_86:
        v11 = v131;
LABEL_106:
        v54 = v121;
        goto LABEL_125;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v68 = v67;
        goto LABEL_76;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        errorCopy4 = error;
        if (!error)
        {
          goto LABEL_85;
        }

        v81 = objc_alloc(MEMORY[0x1E696ABC0]);
        v78 = *MEMORY[0x1E698F240];
        v157 = *MEMORY[0x1E696A578];
        v124 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"failedMechanisms"];
        v158 = v124;
        v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v158 forKeys:&v157 count:1];
        v80 = v81;
LABEL_84:
        v9 = v127;
        v8 = v128;
        v11 = v131;
        v82 = [v80 initWithDomain:v78 code:2 userInfo:v79];
        selfCopy4 = 0;
        *errorCopy4 = v82;
        obj = v133;
        self = selfCopy3;
LABEL_119:
        v54 = v121;
        goto LABEL_124;
      }

      v69 = MEMORY[0x1E696AD98];
      v70 = BMLocalAuthenticationDialogsMechanismFromString(v67);
      v71 = v69;
      v62 = v133;
      v68 = [v71 numberWithInt:v70];
LABEL_76:
      v72 = v68;
      [v135 addObject:v68];

      if (v64 != ++v66)
      {
        continue;
      }

      break;
    }

    v64 = [v62 countByEnumeratingWithState:&v140 objects:v161 count:16];
    if (v64)
    {
      continue;
    }

    break;
  }

LABEL_78:

  v73 = [dictionaryCopy objectForKeyedSubscript:@"actions"];
  null3 = [MEMORY[0x1E695DFB0] null];
  v75 = [v73 isEqual:null3];

  if (v75)
  {

    v73 = 0;
    goto LABEL_89;
  }

  if (v73)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      obj = v73;
      v9 = v127;
      if (!error)
      {
        selfCopy4 = 0;
        self = selfCopy3;
        v8 = v128;
        goto LABEL_86;
      }

      v108 = objc_alloc(MEMORY[0x1E696ABC0]);
      v109 = *MEMORY[0x1E698F240];
      v155 = *MEMORY[0x1E696A578];
      v124 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"actions"];
      v156 = v124;
      v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v156 forKeys:&v155 count:1];
      v110 = [v108 initWithDomain:v109 code:2 userInfo:v79];
      selfCopy4 = 0;
      *error = v110;
      self = selfCopy3;
      v8 = v128;
      goto LABEL_118;
    }
  }

LABEL_89:
  v124 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v73, "count")}];
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v83 = v73;
  v84 = [v83 countByEnumeratingWithState:&v136 objects:v154 count:16];
  obj = v83;
  if (!v84)
  {
    goto LABEL_101;
  }

  v85 = v84;
  v86 = *v137;
  while (2)
  {
    v87 = 0;
    while (2)
    {
      if (*v137 != v86)
      {
        objc_enumerationMutation(obj);
      }

      v88 = *(*(&v136 + 1) + 8 * v87);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy6 = error;
        if (error)
        {
          v96 = objc_alloc(MEMORY[0x1E696ABC0]);
          v97 = *MEMORY[0x1E698F240];
          v152 = *MEMORY[0x1E696A578];
          v120 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"actions"];
          v153 = v120;
          v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
          v99 = v96;
          v100 = v97;
LABEL_114:
          v9 = v127;
          v8 = v128;
          v11 = v131;
          *errorCopy6 = [v99 initWithDomain:v100 code:2 userInfo:v98];

          selfCopy4 = 0;
          v54 = v121;
          v79 = obj;
          self = selfCopy3;
          goto LABEL_123;
        }

        goto LABEL_115;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v89 = v88;
        goto LABEL_99;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        errorCopy6 = error;
        if (error)
        {
          v106 = objc_alloc(MEMORY[0x1E696ABC0]);
          v107 = *MEMORY[0x1E698F240];
          v150 = *MEMORY[0x1E696A578];
          v120 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"actions"];
          v151 = v120;
          v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v151 forKeys:&v150 count:1];
          v99 = v106;
          v100 = v107;
          goto LABEL_114;
        }

LABEL_115:
        selfCopy4 = 0;
        v79 = obj;
        v8 = v128;
        self = selfCopy3;
        v9 = v127;
LABEL_118:
        v11 = v131;
        goto LABEL_119;
      }

      v89 = [MEMORY[0x1E696AD98] numberWithInt:BMLocalAuthenticationDialogsActionFromString(v88)];
LABEL_99:
      v90 = v89;
      [v124 addObject:v89];

      if (v85 != ++v87)
      {
        continue;
      }

      break;
    }

    v83 = obj;
    v85 = [obj countByEnumeratingWithState:&v136 objects:v154 count:16];
    if (v85)
    {
      continue;
    }

    break;
  }

LABEL_101:

  v91 = [dictionaryCopy objectForKeyedSubscript:@"failingAction"];
  v120 = v91;
  if (v91)
  {
    v92 = v91;
    objc_opt_class();
    v8 = v128;
    v11 = v131;
    if (objc_opt_isKindOfClass())
    {
      v79 = 0;
      v9 = v127;
      goto LABEL_121;
    }

    objc_opt_class();
    v54 = v121;
    if (objc_opt_isKindOfClass())
    {
      v79 = v92;
      v9 = v127;
      goto LABEL_122;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v79 = [MEMORY[0x1E696AD98] numberWithInt:BMLocalAuthenticationDialogsActionFromString(v92)];
      v9 = v127;
      v11 = v131;
      goto LABEL_122;
    }

    if (error)
    {
      v119 = objc_alloc(MEMORY[0x1E696ABC0]);
      v113 = *MEMORY[0x1E698F240];
      v148 = *MEMORY[0x1E696A578];
      v114 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"failingAction"];
      v149 = v114;
      v115 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v149 forKeys:&v148 count:1];
      *error = [v119 initWithDomain:v113 code:2 userInfo:v115];
    }

    v79 = 0;
    selfCopy4 = 0;
    self = selfCopy3;
    v9 = v127;
    v11 = v131;
  }

  else
  {
    v79 = 0;
    v9 = v127;
    v8 = v128;
    v11 = v131;
LABEL_121:
    v54 = v121;
LABEL_122:
    intValue = [v54 intValue];
    LODWORD(v118) = [v79 intValue];
    self = [(BMLocalAuthenticationDialogs *)selfCopy3 initWithDialogID:v130 bundleID:v9 timeSinceUpdate:v126 mechanisms:v16 successfulMechanism:intValue failedMechanisms:v135 actions:v124 failingAction:v118];
    selfCopy4 = self;
  }

LABEL_123:

LABEL_124:
LABEL_125:

LABEL_126:
  v12 = v126;

LABEL_127:
LABEL_128:

LABEL_129:
LABEL_130:

  v6 = v129;
LABEL_131:

  v7 = v130;
LABEL_132:

LABEL_133:
LABEL_134:

  return selfCopy4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMLocalAuthenticationDialogs *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v35 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_dialogID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasTimeSinceUpdate)
  {
    PBDataWriterWriteUint32Field();
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->_mechanisms;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v28 + 1) + 8 * v9) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  PBDataWriterWriteUint32Field();
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = self->_failedMechanisms;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v24 + 1) + 8 * v14) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v12);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = self->_actions;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v20 + 1) + 8 * v19) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v17);
  }

  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v77.receiver = self;
  v77.super_class = BMLocalAuthenticationDialogs;
  v5 = [(BMEventBase *)&v77 init];
  if (!v5)
  {
LABEL_119:
    v75 = v5;
    goto LABEL_120;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  while (1)
  {
    position = [fromCopy position];
    if (position >= [fromCopy length] || (objc_msgSend(fromCopy, "hasError") & 1) != 0)
    {
      break;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v78 = 0;
      v13 = [fromCopy position] + 1;
      if (v13 >= [fromCopy position] && (v14 = objc_msgSend(fromCopy, "position") + 1, v14 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v78 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v12 |= (v78 & 0x7F) << v10;
      if ((v78 & 0x80) == 0)
      {
        break;
      }

      v10 += 7;
      v16 = v11++ >= 9;
      if (v16)
      {
        v17 = 0;
        goto LABEL_17;
      }
    }

    v17 = [fromCopy hasError] ? 0 : v12;
LABEL_17:
    if (([fromCopy hasError] & 1) != 0 || (v17 & 7) == 4)
    {
      break;
    }

    v18 = v17 >> 3;
    if ((v17 >> 3) > 4)
    {
      if (v18 > 6)
      {
        if (v18 == 7)
        {
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = MEMORY[0x1E696AD98];
          while (1)
          {
            v78 = 0;
            v60 = [fromCopy position] + 1;
            if (v60 >= [fromCopy position] && (v61 = objc_msgSend(fromCopy, "position") + 1, v61 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v78 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v58 |= (v78 & 0x7F) << v56;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v28 = v57++ > 8;
            if (v28)
            {
              goto LABEL_99;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v58 > 7)
          {
LABEL_99:
            v58 = 0;
          }

          v63 = [v59 numberWithUnsignedInt:v58];
          if (!v63)
          {
LABEL_121:

            goto LABEL_118;
          }

          v64 = v63;
          v65 = v8;
          goto LABEL_112;
        }

        if (v18 != 8)
        {
          goto LABEL_87;
        }

        v36 = 0;
        v37 = 0;
        v38 = 0;
        while (1)
        {
          v78 = 0;
          v39 = [fromCopy position] + 1;
          if (v39 >= [fromCopy position] && (v40 = objc_msgSend(fromCopy, "position") + 1, v40 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v78 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v38 |= (v78 & 0x7F) << v36;
          if ((v78 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v28 = v37++ > 8;
          if (v28)
          {
            goto LABEL_115;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v38 > 7)
        {
LABEL_115:
          LODWORD(v38) = 0;
        }

        v5->_failingAction = v38;
      }

      else if (v18 == 5)
      {
        v43 = 0;
        v44 = 0;
        v45 = 0;
        while (1)
        {
          v78 = 0;
          v46 = [fromCopy position] + 1;
          if (v46 >= [fromCopy position] && (v47 = objc_msgSend(fromCopy, "position") + 1, v47 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v78 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v45 |= (v78 & 0x7F) << v43;
          if ((v78 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v28 = v44++ > 8;
          if (v28)
          {
            goto LABEL_91;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v45 > 5)
        {
LABEL_91:
          LODWORD(v45) = 0;
        }

        v5->_successfulMechanism = v45;
      }

      else
      {
        if (v18 != 6)
        {
          goto LABEL_87;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = MEMORY[0x1E696AD98];
        while (1)
        {
          v78 = 0;
          v25 = [fromCopy position] + 1;
          if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v78 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v23 |= (v78 & 0x7F) << v21;
          if ((v78 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v28 = v22++ > 8;
          if (v28)
          {
            goto LABEL_104;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v23 > 5)
        {
LABEL_104:
          v23 = 0;
        }

        v66 = [v24 numberWithUnsignedInt:v23];
        if (!v66)
        {
          goto LABEL_121;
        }

        v64 = v66;
        v65 = v7;
LABEL_112:
        [v65 addObject:v64];
      }
    }

    else if (v18 > 2)
    {
      if (v18 != 3)
      {
        if (v18 != 4)
        {
          goto LABEL_87;
        }

        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = MEMORY[0x1E696AD98];
        while (1)
        {
          v78 = 0;
          v33 = [fromCopy position] + 1;
          if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 1, v34 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v78 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v31 |= (v78 & 0x7F) << v29;
          if ((v78 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v28 = v30++ > 8;
          if (v28)
          {
            goto LABEL_109;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v31 > 5)
        {
LABEL_109:
          v31 = 0;
        }

        v67 = [v32 numberWithUnsignedInt:v31];
        if (!v67)
        {
          goto LABEL_121;
        }

        v64 = v67;
        v65 = v6;
        goto LABEL_112;
      }

      v49 = 0;
      v50 = 0;
      v51 = 0;
      v5->_hasTimeSinceUpdate = 1;
      while (1)
      {
        v78 = 0;
        v52 = [fromCopy position] + 1;
        if (v52 >= [fromCopy position] && (v53 = objc_msgSend(fromCopy, "position") + 1, v53 <= objc_msgSend(fromCopy, "length")))
        {
          data7 = [fromCopy data];
          [data7 getBytes:&v78 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v51 |= (v78 & 0x7F) << v49;
        if ((v78 & 0x80) == 0)
        {
          break;
        }

        v49 += 7;
        v16 = v50++ >= 9;
        if (v16)
        {
          v55 = 0;
          goto LABEL_96;
        }
      }

      if ([fromCopy hasError])
      {
        v55 = 0;
      }

      else
      {
        v55 = v51;
      }

LABEL_96:
      v5->_timeSinceUpdate = v55;
    }

    else if (v18 == 1)
    {
      v19 = PBReaderReadString();
      v20 = 40;
LABEL_59:
      v42 = *(&v5->super.super.isa + v20);
      *(&v5->super.super.isa + v20) = v19;
    }

    else
    {
      if (v18 == 2)
      {
        v19 = PBReaderReadString();
        v20 = 48;
        goto LABEL_59;
      }

LABEL_87:
      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_121;
      }
    }
  }

  v68 = [v6 copy];
  mechanisms = v5->_mechanisms;
  v5->_mechanisms = v68;

  v70 = [v7 copy];
  failedMechanisms = v5->_failedMechanisms;
  v5->_failedMechanisms = v70;

  v72 = [v8 copy];
  actions = v5->_actions;
  v5->_actions = v72;

  hasError = [fromCopy hasError];
  if ((hasError & 1) == 0)
  {
    goto LABEL_119;
  }

LABEL_118:
  v75 = 0;
LABEL_120:

  return v75;
}

- (NSString)description
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [v3 appendString:@"["];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  mechanisms = [(BMLocalAuthenticationDialogs *)self mechanisms];
  v5 = [mechanisms countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v44;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v44 != v7)
        {
          objc_enumerationMutation(mechanisms);
        }

        v9 = *(*(&v43 + 1) + 8 * i);
        if ([v3 length] != 1)
        {
          [v3 appendString:{@", "}];
        }

        v10 = BMLocalAuthenticationDialogsMechanismAsString([v9 unsignedIntValue]);
        [v3 appendString:v10];
      }

      v6 = [mechanisms countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"]"];
  v11 = objc_opt_new();
  [v11 appendString:@"["];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  failedMechanisms = [(BMLocalAuthenticationDialogs *)self failedMechanisms];
  v13 = [failedMechanisms countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v40;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v40 != v15)
        {
          objc_enumerationMutation(failedMechanisms);
        }

        v17 = *(*(&v39 + 1) + 8 * j);
        if ([v11 length] != 1)
        {
          [v11 appendString:{@", "}];
        }

        v18 = BMLocalAuthenticationDialogsMechanismAsString([v17 unsignedIntValue]);
        [v11 appendString:v18];
      }

      v14 = [failedMechanisms countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v14);
  }

  [v11 appendString:@"]"];
  v19 = objc_opt_new();
  [v19 appendString:@"["];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  actions = [(BMLocalAuthenticationDialogs *)self actions];
  v21 = [actions countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v36;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(actions);
        }

        v25 = *(*(&v35 + 1) + 8 * k);
        if ([v19 length] != 1)
        {
          [v19 appendString:{@", "}];
        }

        v26 = BMLocalAuthenticationDialogsActionAsString([v25 unsignedIntValue]);
        [v19 appendString:v26];
      }

      v22 = [actions countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v22);
  }

  [v19 appendString:@"]"];
  v27 = objc_alloc(MEMORY[0x1E696AEC0]);
  dialogID = [(BMLocalAuthenticationDialogs *)self dialogID];
  bundleID = [(BMLocalAuthenticationDialogs *)self bundleID];
  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMLocalAuthenticationDialogs timeSinceUpdate](self, "timeSinceUpdate")}];
  v31 = BMLocalAuthenticationDialogsMechanismAsString([(BMLocalAuthenticationDialogs *)self successfulMechanism]);
  v32 = BMLocalAuthenticationDialogsActionAsString([(BMLocalAuthenticationDialogs *)self failingAction]);
  v33 = [v27 initWithFormat:@"BMLocalAuthenticationDialogs with dialogID: %@, bundleID: %@, timeSinceUpdate: %@, mechanisms: %@, successfulMechanism: %@, failedMechanisms: %@, actions: %@, failingAction: %@", dialogID, bundleID, v30, v3, v31, v11, v19, v32];

  return v33;
}

- (BMLocalAuthenticationDialogs)initWithDialogID:(id)d bundleID:(id)iD timeSinceUpdate:(id)update mechanisms:(id)mechanisms successfulMechanism:(int)mechanism failedMechanisms:(id)failedMechanisms actions:(id)actions failingAction:(int)self0
{
  dCopy = d;
  iDCopy = iD;
  updateCopy = update;
  mechanismsCopy = mechanisms;
  failedMechanismsCopy = failedMechanisms;
  actionsCopy = actions;
  v26.receiver = self;
  v26.super_class = BMLocalAuthenticationDialogs;
  v20 = [(BMEventBase *)&v26 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v20->_dialogID, d);
    objc_storeStrong(&v20->_bundleID, iD);
    if (updateCopy)
    {
      v20->_hasTimeSinceUpdate = 1;
      unsignedIntValue = [updateCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v20->_hasTimeSinceUpdate = 0;
    }

    v20->_timeSinceUpdate = unsignedIntValue;
    objc_storeStrong(&v20->_mechanisms, mechanisms);
    v20->_successfulMechanism = mechanism;
    objc_storeStrong(&v20->_failedMechanisms, failedMechanisms);
    objc_storeStrong(&v20->_actions, actions);
    v20->_failingAction = action;
  }

  return v20;
}

+ (id)protoFields
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dialogID" number:1 type:13 subMessageClass:0];
  v12[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:2 type:13 subMessageClass:0];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeSinceUpdate" number:3 type:4 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mechanisms" number:4 type:4 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"successfulMechanism" number:5 type:4 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"failedMechanisms" number:6 type:4 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"actions" number:7 type:4 subMessageClass:0];
  v12[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"failingAction" number:8 type:4 subMessageClass:0];
  v12[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:8];

  return v10;
}

+ (id)columns
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dialogID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timeSinceUpdate" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"mechanisms_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_117];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"successfulMechanism" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"failedMechanisms_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_119_102036];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"actions_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_121];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"failingAction" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:4 convertedType:0];
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

id __39__BMLocalAuthenticationDialogs_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _actionsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __39__BMLocalAuthenticationDialogs_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _failedMechanismsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __39__BMLocalAuthenticationDialogs_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _mechanismsJSONArray];
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

    v8 = [[BMLocalAuthenticationDialogs alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end