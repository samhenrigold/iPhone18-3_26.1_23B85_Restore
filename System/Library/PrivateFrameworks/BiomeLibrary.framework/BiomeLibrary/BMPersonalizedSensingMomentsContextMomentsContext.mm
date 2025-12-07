@interface BMPersonalizedSensingMomentsContextMomentsContext
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMPersonalizedSensingMomentsContextMomentsContext)initWithContextIdentifier:(id)identifier contextStrings:(id)strings contextCreationTimestamp:(id)timestamp associatedPatternType:(id)type metadataContentBitmap:(id)bitmap actionType:(id)actionType associatedLocations:(id)locations associatedContacts:(id)self0 associatedTime:(id)self1 associatedMusic:(id)self2;
- (BMPersonalizedSensingMomentsContextMomentsContext)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)contextCreationTimestamp;
- (NSString)description;
- (NSUUID)contextIdentifier;
- (id)_associatedContactsJSONArray;
- (id)_associatedLocationsJSONArray;
- (id)_associatedMusicJSONArray;
- (id)_associatedTimeJSONArray;
- (id)_contextStringsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMPersonalizedSensingMomentsContextMomentsContext

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    contextIdentifier = [(BMPersonalizedSensingMomentsContextMomentsContext *)self contextIdentifier];
    contextIdentifier2 = [v5 contextIdentifier];
    v8 = contextIdentifier2;
    if (contextIdentifier == contextIdentifier2)
    {
    }

    else
    {
      contextIdentifier3 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self contextIdentifier];
      contextIdentifier4 = [v5 contextIdentifier];
      v11 = [contextIdentifier3 isEqual:contextIdentifier4];

      if (!v11)
      {
        goto LABEL_40;
      }
    }

    contextStrings = [(BMPersonalizedSensingMomentsContextMomentsContext *)self contextStrings];
    contextStrings2 = [v5 contextStrings];
    v15 = contextStrings2;
    if (contextStrings == contextStrings2)
    {
    }

    else
    {
      contextStrings3 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self contextStrings];
      contextStrings4 = [v5 contextStrings];
      v18 = [contextStrings3 isEqual:contextStrings4];

      if (!v18)
      {
        goto LABEL_40;
      }
    }

    contextCreationTimestamp = [(BMPersonalizedSensingMomentsContextMomentsContext *)self contextCreationTimestamp];
    contextCreationTimestamp2 = [v5 contextCreationTimestamp];
    v21 = contextCreationTimestamp2;
    if (contextCreationTimestamp == contextCreationTimestamp2)
    {
    }

    else
    {
      contextCreationTimestamp3 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self contextCreationTimestamp];
      contextCreationTimestamp4 = [v5 contextCreationTimestamp];
      v24 = [contextCreationTimestamp3 isEqual:contextCreationTimestamp4];

      if (!v24)
      {
        goto LABEL_40;
      }
    }

    if (-[BMPersonalizedSensingMomentsContextMomentsContext hasAssociatedPatternType](self, "hasAssociatedPatternType") || [v5 hasAssociatedPatternType])
    {
      if (![(BMPersonalizedSensingMomentsContextMomentsContext *)self hasAssociatedPatternType])
      {
        goto LABEL_40;
      }

      if (![v5 hasAssociatedPatternType])
      {
        goto LABEL_40;
      }

      associatedPatternType = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedPatternType];
      if (associatedPatternType != [v5 associatedPatternType])
      {
        goto LABEL_40;
      }
    }

    if (-[BMPersonalizedSensingMomentsContextMomentsContext hasMetadataContentBitmap](self, "hasMetadataContentBitmap") || [v5 hasMetadataContentBitmap])
    {
      if (![(BMPersonalizedSensingMomentsContextMomentsContext *)self hasMetadataContentBitmap])
      {
        goto LABEL_40;
      }

      if (![v5 hasMetadataContentBitmap])
      {
        goto LABEL_40;
      }

      metadataContentBitmap = [(BMPersonalizedSensingMomentsContextMomentsContext *)self metadataContentBitmap];
      if (metadataContentBitmap != [v5 metadataContentBitmap])
      {
        goto LABEL_40;
      }
    }

    if (-[BMPersonalizedSensingMomentsContextMomentsContext hasActionType](self, "hasActionType") || [v5 hasActionType])
    {
      if (![(BMPersonalizedSensingMomentsContextMomentsContext *)self hasActionType])
      {
        goto LABEL_40;
      }

      if (![v5 hasActionType])
      {
        goto LABEL_40;
      }

      actionType = [(BMPersonalizedSensingMomentsContextMomentsContext *)self actionType];
      if (actionType != [v5 actionType])
      {
        goto LABEL_40;
      }
    }

    associatedLocations = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedLocations];
    associatedLocations2 = [v5 associatedLocations];
    v30 = associatedLocations2;
    if (associatedLocations == associatedLocations2)
    {
    }

    else
    {
      associatedLocations3 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedLocations];
      associatedLocations4 = [v5 associatedLocations];
      v33 = [associatedLocations3 isEqual:associatedLocations4];

      if (!v33)
      {
        goto LABEL_40;
      }
    }

    associatedContacts = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedContacts];
    associatedContacts2 = [v5 associatedContacts];
    v36 = associatedContacts2;
    if (associatedContacts == associatedContacts2)
    {
    }

    else
    {
      associatedContacts3 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedContacts];
      associatedContacts4 = [v5 associatedContacts];
      v39 = [associatedContacts3 isEqual:associatedContacts4];

      if (!v39)
      {
        goto LABEL_40;
      }
    }

    associatedTime = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedTime];
    associatedTime2 = [v5 associatedTime];
    v42 = associatedTime2;
    if (associatedTime == associatedTime2)
    {
    }

    else
    {
      associatedTime3 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedTime];
      associatedTime4 = [v5 associatedTime];
      v45 = [associatedTime3 isEqual:associatedTime4];

      if (!v45)
      {
LABEL_40:
        v12 = 0;
LABEL_41:

        goto LABEL_42;
      }
    }

    associatedMusic = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedMusic];
    associatedMusic2 = [v5 associatedMusic];
    if (associatedMusic == associatedMusic2)
    {
      v12 = 1;
    }

    else
    {
      associatedMusic3 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedMusic];
      associatedMusic4 = [v5 associatedMusic];
      v12 = [associatedMusic3 isEqual:associatedMusic4];
    }

    goto LABEL_41;
  }

  v12 = 0;
LABEL_42:

  return v12;
}

- (NSDate)contextCreationTimestamp
{
  if (self->_hasRaw_contextCreationTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_contextCreationTimestamp];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSUUID)contextIdentifier
{
  raw_contextIdentifier = self->_raw_contextIdentifier;
  if (raw_contextIdentifier)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_contextIdentifier toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v40[10] = *MEMORY[0x1E69E9840];
  contextIdentifier = [(BMPersonalizedSensingMomentsContextMomentsContext *)self contextIdentifier];
  uUIDString = [contextIdentifier UUIDString];

  _contextStringsJSONArray = [(BMPersonalizedSensingMomentsContextMomentsContext *)self _contextStringsJSONArray];
  contextCreationTimestamp = [(BMPersonalizedSensingMomentsContextMomentsContext *)self contextCreationTimestamp];
  if (contextCreationTimestamp)
  {
    v7 = MEMORY[0x1E696AD98];
    contextCreationTimestamp2 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self contextCreationTimestamp];
    [contextCreationTimestamp2 timeIntervalSince1970];
    v9 = [v7 numberWithDouble:?];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMPersonalizedSensingMomentsContextMomentsContext *)self hasAssociatedPatternType])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPersonalizedSensingMomentsContextMomentsContext associatedPatternType](self, "associatedPatternType")}];
  }

  else
  {
    v10 = 0;
  }

  if ([(BMPersonalizedSensingMomentsContextMomentsContext *)self hasMetadataContentBitmap])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPersonalizedSensingMomentsContextMomentsContext metadataContentBitmap](self, "metadataContentBitmap")}];
  }

  else
  {
    v11 = 0;
  }

  if ([(BMPersonalizedSensingMomentsContextMomentsContext *)self hasActionType])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPersonalizedSensingMomentsContextMomentsContext actionType](self, "actionType")}];
  }

  else
  {
    v12 = 0;
  }

  _associatedLocationsJSONArray = [(BMPersonalizedSensingMomentsContextMomentsContext *)self _associatedLocationsJSONArray];
  _associatedContactsJSONArray = [(BMPersonalizedSensingMomentsContextMomentsContext *)self _associatedContactsJSONArray];
  _associatedTimeJSONArray = [(BMPersonalizedSensingMomentsContextMomentsContext *)self _associatedTimeJSONArray];
  _associatedMusicJSONArray = [(BMPersonalizedSensingMomentsContextMomentsContext *)self _associatedMusicJSONArray];
  v39[0] = @"contextIdentifier";
  null = uUIDString;
  if (!uUIDString)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v32 = null;
  v40[0] = null;
  v39[1] = @"contextStrings";
  null2 = _contextStringsJSONArray;
  if (!_contextStringsJSONArray)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = null2;
  v40[1] = null2;
  v39[2] = @"contextCreationTimestamp";
  null3 = v9;
  if (!v9)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = null3;
  v40[2] = null3;
  v39[3] = @"associatedPatternType";
  null4 = v10;
  if (!v10)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = uUIDString;
  v29 = null4;
  v40[3] = null4;
  v39[4] = @"metadataContentBitmap";
  null5 = v11;
  if (!v11)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = _contextStringsJSONArray;
  v28 = null5;
  v40[4] = null5;
  v39[5] = @"actionType";
  null6 = v12;
  if (!v12)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v9;
  v40[5] = null6;
  v39[6] = @"associatedLocations";
  null7 = _associatedLocationsJSONArray;
  if (!_associatedLocationsJSONArray)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v10;
  v40[6] = null7;
  v39[7] = @"associatedContacts";
  null8 = _associatedContactsJSONArray;
  if (!_associatedContactsJSONArray)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v11;
  v40[7] = null8;
  v39[8] = @"associatedTime";
  null9 = _associatedTimeJSONArray;
  if (!_associatedTimeJSONArray)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v40[8] = null9;
  v39[9] = @"associatedMusic";
  null10 = _associatedMusicJSONArray;
  if (!_associatedMusicJSONArray)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v40[9] = null10;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:10];
  if (_associatedMusicJSONArray)
  {
    if (_associatedTimeJSONArray)
    {
      goto LABEL_35;
    }
  }

  else
  {

    if (_associatedTimeJSONArray)
    {
      goto LABEL_35;
    }
  }

LABEL_35:
  if (!_associatedContactsJSONArray)
  {
  }

  if (!_associatedLocationsJSONArray)
  {
  }

  if (!v12)
  {
  }

  if (!v24)
  {
  }

  if (v22)
  {
    if (v34)
    {
      goto LABEL_45;
    }
  }

  else
  {

    if (v34)
    {
LABEL_45:
      if (v35)
      {
        goto LABEL_46;
      }

LABEL_54:

      if (v36)
      {
        goto LABEL_47;
      }

      goto LABEL_55;
    }
  }

  if (!v35)
  {
    goto LABEL_54;
  }

LABEL_46:
  if (v36)
  {
    goto LABEL_47;
  }

LABEL_55:

LABEL_47:

  return v33;
}

- (id)_associatedMusicJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  associatedMusic = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedMusic];
  v5 = [associatedMusic countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(associatedMusic);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [associatedMusic countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_associatedTimeJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  associatedTime = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedTime];
  v5 = [associatedTime countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(associatedTime);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [associatedTime countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_associatedContactsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  associatedContacts = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedContacts];
  v5 = [associatedContacts countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(associatedContacts);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [associatedContacts countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_associatedLocationsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  associatedLocations = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedLocations];
  v5 = [associatedLocations countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(associatedLocations);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [associatedLocations countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_contextStringsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  contextStrings = [(BMPersonalizedSensingMomentsContextMomentsContext *)self contextStrings];
  v5 = [contextStrings countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(contextStrings);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [contextStrings countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMPersonalizedSensingMomentsContextMomentsContext)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v278[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"contextIdentifier"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v275 = *MEMORY[0x1E696A578];
        v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contextIdentifier"];
        v276 = v7;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v276 forKeys:&v275 count:1];
        v27 = [v25 initWithDomain:v26 code:2 userInfo:v8];
        v28 = 0;
        *error = v27;
        goto LABEL_204;
      }

      v28 = 0;
      goto LABEL_206;
    }

    v22 = v6;
    v23 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v22];
    if (!v23)
    {
      v50 = v22;
      if (error)
      {
        v51 = objc_alloc(MEMORY[0x1E696ABC0]);
        v52 = *MEMORY[0x1E698F240];
        v277 = *MEMORY[0x1E696A578];
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"contextIdentifier"];
        v278[0] = v8;
        v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v278 forKeys:&v277 count:1];
        *error = [v51 initWithDomain:v52 code:2 userInfo:v53];

        v28 = 0;
        v7 = v50;
        goto LABEL_204;
      }

      v28 = 0;
      v7 = v22;
      goto LABEL_205;
    }

    v24 = v23;

    v7 = v24;
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"contextStrings"];
  null = [MEMORY[0x1E695DFB0] null];
  v10 = [v8 isEqual:null];

  selfCopy = self;
  v204 = v6;
  if (v10)
  {
    v202 = v7;
    v11 = dictionaryCopy;

    v8 = 0;
  }

  else
  {
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v39 = objc_alloc(MEMORY[0x1E696ABC0]);
          v40 = *MEMORY[0x1E698F240];
          v273 = *MEMORY[0x1E696A578];
          v206 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"contextStrings"];
          v274 = v206;
          v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v274 forKeys:&v273 count:1];
          v42 = v40;
          v38 = v41;
          v43 = [v39 initWithDomain:v42 code:2 userInfo:v41];
          v28 = 0;
          *error = v43;
          goto LABEL_203;
        }

        v28 = 0;
        goto LABEL_204;
      }
    }

    v202 = v7;
    v11 = dictionaryCopy;
  }

  v206 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v228 = 0u;
  v229 = 0u;
  v230 = 0u;
  v231 = 0u;
  v8 = v8;
  v12 = [v8 countByEnumeratingWithState:&v228 objects:v272 count:16];
  if (!v12)
  {
LABEL_19:

    dictionaryCopy = v11;
    v17 = [v11 objectForKeyedSubscript:@"contextCreationTimestamp"];
    if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v21 = 0;
      goto LABEL_48;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = MEMORY[0x1E695DF00];
      v45 = v17;
      v46 = [v44 alloc];
      [v45 doubleValue];
      v48 = v47;

      v49 = [v46 initWithTimeIntervalSince1970:v48];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v54 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v21 = [v54 dateFromString:v17];

LABEL_48:
        v195 = v21;
        v55 = [dictionaryCopy objectForKeyedSubscript:@"associatedPatternType"];
        v192 = v55;
        if (v55)
        {
          v56 = v55;
          objc_opt_class();
          self = selfCopy;
          if (objc_opt_isKindOfClass())
          {
            v32 = 0;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!error)
              {
                v32 = 0;
                v28 = 0;
                v7 = v202;
                v38 = v195;
LABEL_200:

                goto LABEL_201;
              }

              v77 = objc_alloc(MEMORY[0x1E696ABC0]);
              v78 = *MEMORY[0x1E698F240];
              v264 = *MEMORY[0x1E696A578];
              v190 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"associatedPatternType"];
              v265 = v190;
              v191 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v265 forKeys:&v264 count:1];
              v79 = [v77 initWithDomain:v78 code:2 userInfo:?];
              v32 = 0;
              v28 = 0;
              *error = v79;
              goto LABEL_118;
            }

            v32 = v56;
          }
        }

        else
        {
          v32 = 0;
          self = selfCopy;
        }

        v57 = [dictionaryCopy objectForKeyedSubscript:@"metadataContentBitmap"];
        v191 = v57;
        if (!v57 || (v58 = v57, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v190 = 0;
          goto LABEL_57;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v190 = v58;
LABEL_57:
          v59 = [dictionaryCopy objectForKeyedSubscript:@"actionType"];
          v200 = v59;
          v194 = dictionaryCopy;
          if (!v59 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            selfCopy3 = self;
            v187 = 0;
LABEL_60:
            v61 = [v194 objectForKeyedSubscript:@"associatedLocations"];
            null2 = [MEMORY[0x1E695DFB0] null];
            v63 = [v61 isEqual:null2];

            v7 = v202;
            if (v63)
            {

              v61 = 0;
              v38 = v195;
LABEL_64:
              v197 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v61, "count")}];
              v223 = 0u;
              v224 = 0u;
              v225 = 0u;
              v226 = 0u;
              v64 = v61;
              v65 = [v64 countByEnumeratingWithState:&v223 objects:v257 count:16];
              dictionaryCopy = v194;
              obj = v64;
              if (!v65)
              {
                goto LABEL_74;
              }

              v66 = v65;
              v67 = *v224;
              while (1)
              {
                for (i = 0; i != v66; ++i)
                {
                  if (*v224 != v67)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v69 = *(*(&v223 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    errorCopy2 = error;
                    if (error)
                    {
                      v89 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v90 = *MEMORY[0x1E698F240];
                      v255 = *MEMORY[0x1E696A578];
                      v70 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"associatedLocations"];
                      v256 = v70;
                      v91 = MEMORY[0x1E695DF20];
                      v92 = &v256;
                      v93 = &v255;
LABEL_90:
                      v94 = [v91 dictionaryWithObjects:v92 forKeys:v93 count:1];
                      v95 = v90;
                      v59 = v200;
                      v96 = [v89 initWithDomain:v95 code:2 userInfo:v94];
                      v28 = 0;
                      *errorCopy2 = v96;
                      v188 = obj;
                      dictionaryCopy = v194;
LABEL_91:
                      v6 = v204;
                      v7 = v202;
                      goto LABEL_194;
                    }

LABEL_114:
                    v28 = 0;
                    v38 = v195;
                    v188 = obj;
                    dictionaryCopy = v194;
                    goto LABEL_115;
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    errorCopy2 = error;
                    if (error)
                    {
                      v89 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v90 = *MEMORY[0x1E698F240];
                      v253 = *MEMORY[0x1E696A578];
                      v70 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"associatedLocations"];
                      v254 = v70;
                      v91 = MEMORY[0x1E695DF20];
                      v92 = &v254;
                      v93 = &v253;
                      goto LABEL_90;
                    }

                    goto LABEL_114;
                  }

                  v70 = v69;
                  v71 = [BMPersonalizedSensingMomentsContextMomentsContextLocationMetaData alloc];
                  v222 = 0;
                  v72 = [(BMPersonalizedSensingMomentsContextMomentsContextLocationMetaData *)v71 initWithJSONDictionary:v70 error:&v222];
                  v73 = v222;
                  if (v73)
                  {
                    v94 = v73;
                    v6 = v204;
                    v7 = v202;
                    if (error)
                    {
                      v97 = v73;
                      *error = v94;
                    }

                    v28 = 0;
                    v188 = obj;
                    dictionaryCopy = v194;
                    goto LABEL_193;
                  }

                  [v197 addObject:v72];

                  v59 = v200;
                }

                v64 = obj;
                v66 = [obj countByEnumeratingWithState:&v223 objects:v257 count:16];
                dictionaryCopy = v194;
                v38 = v195;
                if (!v66)
                {
LABEL_74:

                  v74 = [dictionaryCopy objectForKeyedSubscript:@"associatedContacts"];
                  null3 = [MEMORY[0x1E695DFB0] null];
                  v76 = [v74 isEqual:null3];

                  if (v76)
                  {

                    v74 = 0;
LABEL_97:
                    v186 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v74, "count")}];
                    v218 = 0u;
                    v219 = 0u;
                    v220 = 0u;
                    v221 = 0u;
                    v188 = v74;
                    v98 = [v188 countByEnumeratingWithState:&v218 objects:v250 count:16];
                    if (!v98)
                    {
                      goto LABEL_107;
                    }

                    v99 = v98;
                    v100 = *v219;
                    while (1)
                    {
                      v101 = dictionaryCopy;
                      for (j = 0; j != v99; ++j)
                      {
                        if (*v219 != v100)
                        {
                          objc_enumerationMutation(v188);
                        }

                        v103 = *(*(&v218 + 1) + 8 * j);
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          errorCopy4 = error;
                          if (error)
                          {
                            v119 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v120 = *MEMORY[0x1E698F240];
                            v248 = *MEMORY[0x1E696A578];
                            v104 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"associatedContacts"];
                            v249 = v104;
                            v121 = MEMORY[0x1E695DF20];
                            v122 = &v249;
                            v123 = &v248;
LABEL_128:
                            v124 = [v121 dictionaryWithObjects:v122 forKeys:v123 count:1];
                            v125 = [v119 initWithDomain:v120 code:2 userInfo:v124];
                            v28 = 0;
                            *errorCopy4 = v125;
                            v94 = v188;
                            dictionaryCopy = v101;
                            goto LABEL_129;
                          }

LABEL_150:
                          v28 = 0;
                          v94 = v188;
                          dictionaryCopy = v101;
                          v6 = v204;
                          goto LABEL_151;
                        }

                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          errorCopy4 = error;
                          if (error)
                          {
                            v119 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v120 = *MEMORY[0x1E698F240];
                            v246 = *MEMORY[0x1E696A578];
                            v104 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"associatedContacts"];
                            v247 = v104;
                            v121 = MEMORY[0x1E695DF20];
                            v122 = &v247;
                            v123 = &v246;
                            goto LABEL_128;
                          }

                          goto LABEL_150;
                        }

                        v104 = v103;
                        v105 = [BMPersonalizedSensingMomentsContextMomentsContextContactMetaData alloc];
                        v217 = 0;
                        v106 = [(BMPersonalizedSensingMomentsContextMomentsContextContactMetaData *)v105 initWithJSONDictionary:v104 error:&v217];
                        v107 = v217;
                        if (v107)
                        {
                          v124 = v107;
                          v6 = v204;
                          if (error)
                          {
                            v126 = v107;
                            *error = v124;
                          }

                          v28 = 0;
                          v94 = v188;
                          dictionaryCopy = v101;
                          goto LABEL_133;
                        }

                        [v186 addObject:v106];

                        v59 = v200;
                      }

                      v99 = [v188 countByEnumeratingWithState:&v218 objects:v250 count:16];
                      dictionaryCopy = v101;
                      if (!v99)
                      {
LABEL_107:

                        v94 = [dictionaryCopy objectForKeyedSubscript:@"associatedTime"];
                        null4 = [MEMORY[0x1E695DFB0] null];
                        v109 = [v94 isEqual:null4];

                        if (v109)
                        {

                          v94 = 0;
LABEL_136:
                          v104 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v94, "count")}];
                          v213 = 0u;
                          v214 = 0u;
                          v215 = 0u;
                          v216 = 0u;
                          v94 = v94;
                          v127 = [v94 countByEnumeratingWithState:&v213 objects:v243 count:16];
                          if (!v127)
                          {
                            goto LABEL_146;
                          }

                          v128 = v127;
                          v180 = *v214;
                          while (1)
                          {
                            for (k = 0; k != v128; ++k)
                            {
                              if (*v214 != v180)
                              {
                                objc_enumerationMutation(v94);
                              }

                              v130 = *(*(&v213 + 1) + 8 * k);
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                errorCopy6 = error;
                                if (error)
                                {
                                  v141 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v142 = *MEMORY[0x1E698F240];
                                  v241 = *MEMORY[0x1E696A578];
                                  v143 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"associatedTime"];
                                  v242 = v143;
                                  v144 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v242 forKeys:&v241 count:1];
                                  v145 = v141;
                                  v146 = v142;
LABEL_158:
                                  *errorCopy6 = [v145 initWithDomain:v146 code:2 userInfo:v144];

                                  v148 = v143;
                                  v28 = 0;
                                  v124 = v94;
                                  dictionaryCopy = v194;
                                  v6 = v204;
LABEL_159:
                                  v70 = v186;
                                  goto LABEL_191;
                                }

LABEL_178:
                                v28 = 0;
                                v124 = v94;
                                dictionaryCopy = v194;
LABEL_129:
                                v6 = v204;
                                goto LABEL_133;
                              }

                              objc_opt_class();
                              if ((objc_opt_isKindOfClass() & 1) == 0)
                              {
                                errorCopy6 = error;
                                if (error)
                                {
                                  v147 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v182 = *MEMORY[0x1E698F240];
                                  v239 = *MEMORY[0x1E696A578];
                                  v143 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"associatedTime"];
                                  v240 = v143;
                                  v144 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v240 forKeys:&v239 count:1];
                                  v145 = v147;
                                  v146 = v182;
                                  goto LABEL_158;
                                }

                                goto LABEL_178;
                              }

                              v131 = v130;
                              v132 = [BMPersonalizedSensingMomentsContextMomentsContextTimeMetaData alloc];
                              v212 = 0;
                              v133 = [(BMPersonalizedSensingMomentsContextMomentsContextTimeMetaData *)v132 initWithJSONDictionary:v131 error:&v212];
                              v134 = v212;
                              if (v134)
                              {
                                v149 = v134;
                                v183 = v131;
                                v6 = v204;
                                if (error)
                                {
                                  v150 = v134;
                                  *error = v149;
                                }

                                v28 = 0;
                                v124 = v94;
                                dictionaryCopy = v194;
                                v70 = v186;
LABEL_190:
                                v148 = v183;
                                goto LABEL_191;
                              }

                              [v104 addObject:v133];
                            }

                            dictionaryCopy = v194;
                            v128 = [v94 countByEnumeratingWithState:&v213 objects:v243 count:16];
                            if (!v128)
                            {
LABEL_146:

                              v124 = [dictionaryCopy objectForKeyedSubscript:@"associatedMusic"];
                              null5 = [MEMORY[0x1E695DFB0] null];
                              v181 = [v124 isEqual:null5];

                              if (v181)
                              {

                                v124 = 0;
LABEL_165:
                                v151 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v124, "count")}];
                                v208 = 0u;
                                v209 = 0u;
                                v210 = 0u;
                                v211 = 0u;
                                v124 = v124;
                                v152 = [v124 countByEnumeratingWithState:&v208 objects:v236 count:16];
                                if (!v152)
                                {
                                  goto LABEL_175;
                                }

                                v153 = v152;
                                v176 = *v209;
                                v183 = v151;
LABEL_167:
                                v154 = 0;
                                while (1)
                                {
                                  if (*v209 != v176)
                                  {
                                    objc_enumerationMutation(v124);
                                  }

                                  v155 = *(*(&v208 + 1) + 8 * v154);
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    break;
                                  }

                                  objc_opt_class();
                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                  {
                                    dictionaryCopy = v194;
                                    v6 = v204;
                                    v70 = v186;
                                    if (!error)
                                    {
                                      goto LABEL_189;
                                    }

                                    v177 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v174 = *MEMORY[0x1E698F240];
                                    v232 = *MEMORY[0x1E696A578];
                                    v163 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"associatedMusic"];
                                    v233 = v163;
                                    v164 = MEMORY[0x1E695DF20];
                                    v165 = &v233;
                                    v166 = &v232;
                                    goto LABEL_184;
                                  }

                                  v156 = v155;
                                  v157 = [BMPersonalizedSensingMomentsContextMomentsContextMusicMetaData alloc];
                                  v207 = 0;
                                  v158 = [(BMPersonalizedSensingMomentsContextMomentsContextMusicMetaData *)v157 initWithJSONDictionary:v156 error:&v207];
                                  v159 = v207;
                                  if (v159)
                                  {
                                    v178 = v156;
                                    if (error)
                                    {
                                      v159 = v159;
                                      *error = v159;
                                    }

                                    v175 = v159;

                                    dictionaryCopy = v194;
                                    v6 = v204;
                                    v70 = v186;
                                    v163 = v178;
LABEL_188:

LABEL_189:
                                    v28 = 0;
                                    goto LABEL_190;
                                  }

                                  [v183 addObject:v158];

                                  if (v153 == ++v154)
                                  {
                                    dictionaryCopy = v194;
                                    v151 = v183;
                                    v153 = [v124 countByEnumeratingWithState:&v208 objects:v236 count:16];
                                    if (v153)
                                    {
                                      goto LABEL_167;
                                    }

LABEL_175:

                                    v173 = v151;
                                    v160 = v151;
                                    v70 = v186;
                                    v28 = [(BMPersonalizedSensingMomentsContextMomentsContext *)selfCopy initWithContextIdentifier:v202 contextStrings:v206 contextCreationTimestamp:v195 associatedPatternType:v32 metadataContentBitmap:v190 actionType:v187 associatedLocations:v197 associatedContacts:v186 associatedTime:v104 associatedMusic:v173];
                                    selfCopy = v28;
                                    v148 = v160;
                                    v6 = v204;
LABEL_191:

LABEL_192:
                                    v7 = v202;
LABEL_193:
                                    v59 = v200;
LABEL_194:

                                    v38 = v195;
                                    self = selfCopy;
LABEL_195:

LABEL_196:
                                    goto LABEL_197;
                                  }
                                }

                                dictionaryCopy = v194;
                                v6 = v204;
                                v70 = v186;
                                if (!error)
                                {
                                  goto LABEL_189;
                                }

                                v177 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v174 = *MEMORY[0x1E698F240];
                                v234 = *MEMORY[0x1E696A578];
                                v163 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"associatedMusic"];
                                v235 = v163;
                                v164 = MEMORY[0x1E695DF20];
                                v165 = &v235;
                                v166 = &v234;
LABEL_184:
                                v167 = [v164 dictionaryWithObjects:v165 forKeys:v166 count:1];
                                v168 = v174;
                                v175 = v167;
                                *error = [v177 initWithDomain:v168 code:2 userInfo:?];
                                goto LABEL_188;
                              }

                              if (!v124)
                              {
                                goto LABEL_165;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                goto LABEL_165;
                              }

                              v6 = v204;
                              if (error)
                              {
                                v185 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v179 = *MEMORY[0x1E698F240];
                                v237 = *MEMORY[0x1E696A578];
                                v170 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"associatedMusic"];
                                v238 = v170;
                                v171 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v238 forKeys:&v237 count:1];
                                *error = [v185 initWithDomain:v179 code:2 userInfo:v171];

                                v148 = v170;
                                v28 = 0;
                                goto LABEL_159;
                              }

                              v28 = 0;
LABEL_133:
                              v70 = v186;
                              goto LABEL_192;
                            }
                          }
                        }

                        v6 = v204;
                        if (!v94)
                        {
                          goto LABEL_136;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          goto LABEL_136;
                        }

                        if (error)
                        {
                          v184 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v161 = *MEMORY[0x1E698F240];
                          v244 = *MEMORY[0x1E696A578];
                          v104 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"associatedTime"];
                          v245 = v104;
                          v124 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v245 forKeys:&v244 count:1];
                          v162 = [v184 initWithDomain:v161 code:2 userInfo:v124];
                          v28 = 0;
                          *error = v162;
                          goto LABEL_133;
                        }

                        v28 = 0;
LABEL_151:
                        v7 = v202;
                        v70 = v186;
                        goto LABEL_194;
                      }
                    }
                  }

                  if (!v74)
                  {
                    goto LABEL_97;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    goto LABEL_97;
                  }

                  v188 = v74;
                  if (error)
                  {
                    v136 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v137 = *MEMORY[0x1E698F240];
                    v251 = *MEMORY[0x1E696A578];
                    v138 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"associatedContacts"];
                    v252 = v138;
                    v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v252 forKeys:&v251 count:1];
                    v139 = [v136 initWithDomain:v137 code:2 userInfo:v94];
                    v28 = 0;
                    *error = v139;
                    v70 = v138;
                    goto LABEL_91;
                  }

                  v28 = 0;
LABEL_115:
                  self = selfCopy;
                  v6 = v204;
                  v7 = v202;
                  goto LABEL_195;
                }
              }
            }

            v38 = v195;
            if (!v61)
            {
              goto LABEL_64;
            }

            objc_opt_class();
            obj = v61;
            if (objc_opt_isKindOfClass())
            {
              goto LABEL_64;
            }

            self = selfCopy3;
            if (error)
            {
              v110 = objc_alloc(MEMORY[0x1E696ABC0]);
              v111 = *MEMORY[0x1E698F240];
              v258 = *MEMORY[0x1E696A578];
              v197 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"associatedLocations"];
              v259 = v197;
              v112 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v259 forKeys:&v258 count:1];
              v113 = v111;
              v38 = v195;
              v189 = v112;
              v114 = [v110 initWithDomain:v113 code:2 userInfo:?];
              v28 = 0;
              *error = v114;
              dictionaryCopy = v194;

              goto LABEL_196;
            }

            v28 = 0;
            dictionaryCopy = v194;
LABEL_197:

            goto LABEL_198;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            selfCopy3 = self;
            v187 = v59;
            goto LABEL_60;
          }

          if (error)
          {
            v198 = objc_alloc(MEMORY[0x1E696ABC0]);
            v82 = *MEMORY[0x1E698F240];
            v260 = *MEMORY[0x1E696A578];
            v83 = objc_alloc(MEMORY[0x1E696AEC0]);
            v172 = objc_opt_class();
            v84 = v83;
            v59 = v200;
            obj = [v84 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v172, @"actionType"];
            v261 = obj;
            v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v261 forKeys:&v260 count:1];
            v86 = v198;
            v199 = v85;
            v87 = [v86 initWithDomain:v82 code:2 userInfo:?];
            v187 = 0;
            v28 = 0;
            *error = v87;
            v7 = v202;
            v38 = v195;

            goto LABEL_197;
          }

          v187 = 0;
          v28 = 0;
LABEL_120:
          v7 = v202;
          v38 = v195;
LABEL_198:

          goto LABEL_199;
        }

        if (error)
        {
          v201 = objc_alloc(MEMORY[0x1E696ABC0]);
          v80 = *MEMORY[0x1E698F240];
          v262 = *MEMORY[0x1E696A578];
          v187 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"metadataContentBitmap"];
          v263 = v187;
          v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v263 forKeys:&v262 count:1];
          v81 = [v201 initWithDomain:v80 code:2 userInfo:v59];
          v190 = 0;
          v28 = 0;
          *error = v81;
          goto LABEL_120;
        }

        v190 = 0;
        v28 = 0;
LABEL_118:
        v7 = v202;
        v38 = v195;
LABEL_199:

        goto LABEL_200;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v38 = 0;
          v28 = 0;
          self = selfCopy;
          v7 = v202;
LABEL_202:

          goto LABEL_203;
        }

        v115 = objc_alloc(MEMORY[0x1E696ABC0]);
        v116 = *MEMORY[0x1E698F240];
        v266 = *MEMORY[0x1E696A578];
        v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"contextCreationTimestamp"];
        v267 = v32;
        v193 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v267 forKeys:&v266 count:1];
        v117 = [v115 initWithDomain:v116 code:2 userInfo:?];
        v38 = 0;
        v28 = 0;
        *error = v117;
        self = selfCopy;
        v7 = v202;

LABEL_201:
        goto LABEL_202;
      }

      v49 = v17;
    }

    v21 = v49;
    goto LABEL_48;
  }

  v13 = v12;
  v14 = *v229;
LABEL_11:
  v15 = 0;
  while (1)
  {
    if (*v229 != v14)
    {
      objc_enumerationMutation(v8);
    }

    v16 = *(*(&v228 + 1) + 8 * v15);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      errorCopy8 = error;
      if (!error)
      {
        goto LABEL_38;
      }

      v35 = objc_alloc(MEMORY[0x1E696ABC0]);
      v36 = *MEMORY[0x1E698F240];
      v268 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"contextStrings"];
      v269 = v17;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v269 forKeys:&v268 count:1];
      v33 = v35;
      v34 = v36;
LABEL_31:
      v28 = 0;
      *errorCopy8 = [v33 initWithDomain:v34 code:2 userInfo:v32];
LABEL_35:
      v38 = v8;
      dictionaryCopy = v11;
      self = selfCopy;
      v7 = v202;
      goto LABEL_201;
    }

    v17 = v16;
    v18 = [BMPersonalizedSensingMomentsContextMomentsContextString alloc];
    v227 = 0;
    v19 = [(BMPersonalizedSensingMomentsContextMomentsContextString *)v18 initWithJSONDictionary:v17 error:&v227];
    v20 = v227;
    if (v20)
    {
      v32 = v20;
      if (error)
      {
        v37 = v20;
        *error = v32;
      }

      v28 = 0;
      goto LABEL_35;
    }

    [v206 addObject:v19];

    if (v13 == ++v15)
    {
      v13 = [v8 countByEnumeratingWithState:&v228 objects:v272 count:16];
      if (!v13)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }
  }

  errorCopy8 = error;
  if (error)
  {
    v30 = objc_alloc(MEMORY[0x1E696ABC0]);
    v31 = *MEMORY[0x1E698F240];
    v270 = *MEMORY[0x1E696A578];
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"contextStrings"];
    v271 = v17;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v271 forKeys:&v270 count:1];
    v33 = v30;
    v34 = v31;
    goto LABEL_31;
  }

LABEL_38:
  v28 = 0;
  v38 = v8;
  dictionaryCopy = v11;
  self = selfCopy;
  v7 = v202;
LABEL_203:

LABEL_204:
LABEL_205:

LABEL_206:
  return v28;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPersonalizedSensingMomentsContextMomentsContext *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v61 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_raw_contextIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v5 = self->_contextStrings;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v53;
    do
    {
      v9 = 0;
      do
      {
        if (*v53 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v52 + 1) + 8 * v9);
        v51 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v7);
  }

  if (self->_hasRaw_contextCreationTimestamp)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasAssociatedPatternType)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasMetadataContentBitmap)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasActionType)
  {
    PBDataWriterWriteUint32Field();
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v11 = self->_associatedLocations;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v48;
    do
    {
      v15 = 0;
      do
      {
        if (*v48 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v47 + 1) + 8 * v15);
        v51 = 0;
        PBDataWriterPlaceMark();
        [v16 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v47 objects:v59 count:16];
    }

    while (v13);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v17 = self->_associatedContacts;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v43 objects:v58 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v44;
    do
    {
      v21 = 0;
      do
      {
        if (*v44 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v43 + 1) + 8 * v21);
        v51 = 0;
        PBDataWriterPlaceMark();
        [v22 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v43 objects:v58 count:16];
    }

    while (v19);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v23 = self->_associatedTime;
  v24 = [(NSArray *)v23 countByEnumeratingWithState:&v39 objects:v57 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v40;
    do
    {
      v27 = 0;
      do
      {
        if (*v40 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v39 + 1) + 8 * v27);
        v51 = 0;
        PBDataWriterPlaceMark();
        [v28 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSArray *)v23 countByEnumeratingWithState:&v39 objects:v57 count:16];
    }

    while (v25);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v29 = self->_associatedMusic;
  v30 = [(NSArray *)v29 countByEnumeratingWithState:&v35 objects:v56 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v36;
    do
    {
      v33 = 0;
      do
      {
        if (*v36 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v35 + 1) + 8 * v33);
        v51 = 0;
        PBDataWriterPlaceMark();
        [v34 writeTo:{toCopy, v35}];
        PBDataWriterRecallMark();
        ++v33;
      }

      while (v31 != v33);
      v31 = [(NSArray *)v29 countByEnumeratingWithState:&v35 objects:v56 count:16];
    }

    while (v31);
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v67.receiver = self;
  v67.super_class = BMPersonalizedSensingMomentsContextMomentsContext;
  v5 = [(BMEventBase *)&v67 init];
  if (!v5)
  {
LABEL_96:
    v64 = v5;
    goto LABEL_99;
  }

  v66 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  while (1)
  {
    position = [fromCopy position];
    if (position >= [fromCopy length] || (objc_msgSend(fromCopy, "hasError") & 1) != 0)
    {
      break;
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      LOBYTE(v68) = 0;
      v14 = [fromCopy position] + 1;
      if (v14 >= [fromCopy position] && (v15 = objc_msgSend(fromCopy, "position") + 1, v15 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v68 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v13 |= (LOBYTE(v68) & 0x7F) << v11;
      if ((LOBYTE(v68) & 0x80) == 0)
      {
        break;
      }

      v11 += 7;
      v17 = v12++ >= 9;
      if (v17)
      {
        v18 = 0;
        goto LABEL_17;
      }
    }

    v18 = [fromCopy hasError] ? 0 : v13;
LABEL_17:
    if (([fromCopy hasError] & 1) != 0 || (v18 & 7) == 4)
    {
      break;
    }

    v19 = v18 >> 3;
    if ((v18 >> 3) > 5)
    {
      if (v19 <= 7)
      {
        if (v19 != 6)
        {
          if (v19 != 7)
          {
            goto LABEL_79;
          }

          v68 = 0.0;
          v69 = 0;
          if (!PBReaderPlaceMark() || (v31 = [[BMPersonalizedSensingMomentsContextMomentsContextLocationMetaData alloc] initByReadFrom:fromCopy]) == 0)
          {
LABEL_97:

            goto LABEL_98;
          }

          v28 = v31;
          v29 = v6;
          goto LABEL_78;
        }

        v34 = 0;
        v35 = 0;
        v36 = 0;
        v5->_hasActionType = 1;
        while (1)
        {
          LOBYTE(v68) = 0;
          v37 = [fromCopy position] + 1;
          if (v37 >= [fromCopy position] && (v38 = objc_msgSend(fromCopy, "position") + 1, v38 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v68 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v36 |= (LOBYTE(v68) & 0x7F) << v34;
          if ((LOBYTE(v68) & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v17 = v35++ >= 9;
          if (v17)
          {
            v40 = 0;
            goto LABEL_84;
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

LABEL_84:
        v5->_actionType = v40;
      }

      else
      {
        switch(v19)
        {
          case 8:
            v68 = 0.0;
            v69 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_97;
            }

            v43 = [[BMPersonalizedSensingMomentsContextMomentsContextContactMetaData alloc] initByReadFrom:fromCopy];
            if (!v43)
            {
              goto LABEL_97;
            }

            v28 = v43;
            v29 = v7;
            break;
          case 9:
            v68 = 0.0;
            v69 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_97;
            }

            v51 = [[BMPersonalizedSensingMomentsContextMomentsContextTimeMetaData alloc] initByReadFrom:fromCopy];
            if (!v51)
            {
              goto LABEL_97;
            }

            v28 = v51;
            v29 = v8;
            break;
          case 0xA:
            v68 = 0.0;
            v69 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_97;
            }

            v27 = [[BMPersonalizedSensingMomentsContextMomentsContextMusicMetaData alloc] initByReadFrom:fromCopy];
            if (!v27)
            {
              goto LABEL_97;
            }

            v28 = v27;
            v29 = v9;
            break;
          default:
            goto LABEL_79;
        }

LABEL_78:
        [v29 addObject:v28];
        PBReaderRecallMark();
      }
    }

    else if (v19 <= 2)
    {
      if (v19 != 1)
      {
        if (v19 != 2)
        {
          goto LABEL_79;
        }

        v68 = 0.0;
        v69 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_97;
        }

        v30 = [[BMPersonalizedSensingMomentsContextMomentsContextString alloc] initByReadFrom:fromCopy];
        if (!v30)
        {
          goto LABEL_97;
        }

        v28 = v30;
        v29 = v66;
        goto LABEL_78;
      }

      v32 = PBReaderReadString();
      raw_contextIdentifier = v5->_raw_contextIdentifier;
      v5->_raw_contextIdentifier = v32;
    }

    else
    {
      switch(v19)
      {
        case 3:
          v5->_hasRaw_contextCreationTimestamp = 1;
          v68 = 0.0;
          v41 = [fromCopy position] + 8;
          if (v41 >= [fromCopy position] && (v42 = objc_msgSend(fromCopy, "position") + 8, v42 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v68 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_raw_contextCreationTimestamp = v68;
          break;
        case 4:
          v44 = 0;
          v45 = 0;
          v46 = 0;
          v5->_hasAssociatedPatternType = 1;
          while (1)
          {
            LOBYTE(v68) = 0;
            v47 = [fromCopy position] + 1;
            if (v47 >= [fromCopy position] && (v48 = objc_msgSend(fromCopy, "position") + 1, v48 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v68 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v46 |= (LOBYTE(v68) & 0x7F) << v44;
            if ((LOBYTE(v68) & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v17 = v45++ >= 9;
            if (v17)
            {
              v50 = 0;
              goto LABEL_92;
            }
          }

          if ([fromCopy hasError])
          {
            v50 = 0;
          }

          else
          {
            v50 = v46;
          }

LABEL_92:
          v5->_associatedPatternType = v50;
          break;
        case 5:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v5->_hasMetadataContentBitmap = 1;
          while (1)
          {
            LOBYTE(v68) = 0;
            v23 = [fromCopy position] + 1;
            if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 1, v24 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v68 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v22 |= (LOBYTE(v68) & 0x7F) << v20;
            if ((LOBYTE(v68) & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v17 = v21++ >= 9;
            if (v17)
            {
              v26 = 0;
              goto LABEL_88;
            }
          }

          if ([fromCopy hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v22;
          }

LABEL_88:
          v5->_metadataContentBitmap = v26;
          break;
        default:
LABEL_79:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_97;
          }

          break;
      }
    }
  }

  v53 = [v66 copy];
  contextStrings = v5->_contextStrings;
  v5->_contextStrings = v53;

  v55 = [v6 copy];
  associatedLocations = v5->_associatedLocations;
  v5->_associatedLocations = v55;

  v57 = [v7 copy];
  associatedContacts = v5->_associatedContacts;
  v5->_associatedContacts = v57;

  v59 = [v8 copy];
  associatedTime = v5->_associatedTime;
  v5->_associatedTime = v59;

  v61 = [v9 copy];
  associatedMusic = v5->_associatedMusic;
  v5->_associatedMusic = v61;

  hasError = [fromCopy hasError];
  if ((hasError & 1) == 0)
  {
    goto LABEL_96;
  }

LABEL_98:
  v64 = 0;
LABEL_99:

  return v64;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  contextIdentifier = [(BMPersonalizedSensingMomentsContextMomentsContext *)self contextIdentifier];
  contextStrings = [(BMPersonalizedSensingMomentsContextMomentsContext *)self contextStrings];
  contextCreationTimestamp = [(BMPersonalizedSensingMomentsContextMomentsContext *)self contextCreationTimestamp];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPersonalizedSensingMomentsContextMomentsContext associatedPatternType](self, "associatedPatternType")}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPersonalizedSensingMomentsContextMomentsContext metadataContentBitmap](self, "metadataContentBitmap")}];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPersonalizedSensingMomentsContextMomentsContext actionType](self, "actionType")}];
  associatedLocations = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedLocations];
  associatedContacts = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedContacts];
  associatedTime = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedTime];
  associatedMusic = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedMusic];
  v15 = [v14 initWithFormat:@"BMPersonalizedSensingMomentsContextMomentsContext with contextIdentifier: %@, contextStrings: %@, contextCreationTimestamp: %@, associatedPatternType: %@, metadataContentBitmap: %@, actionType: %@, associatedLocations: %@, associatedContacts: %@, associatedTime: %@, associatedMusic: %@", contextIdentifier, contextStrings, contextCreationTimestamp, v5, v6, v7, associatedLocations, associatedContacts, associatedTime, associatedMusic];

  return v15;
}

- (BMPersonalizedSensingMomentsContextMomentsContext)initWithContextIdentifier:(id)identifier contextStrings:(id)strings contextCreationTimestamp:(id)timestamp associatedPatternType:(id)type metadataContentBitmap:(id)bitmap actionType:(id)actionType associatedLocations:(id)locations associatedContacts:(id)self0 associatedTime:(id)self1 associatedMusic:(id)self2
{
  identifierCopy = identifier;
  obj = strings;
  stringsCopy = strings;
  timestampCopy = timestamp;
  typeCopy = type;
  bitmapCopy = bitmap;
  actionTypeCopy = actionType;
  locationsCopy = locations;
  contactsCopy = contacts;
  timeCopy = time;
  v25 = identifierCopy;
  musicCopy = music;
  v38.receiver = self;
  v38.super_class = BMPersonalizedSensingMomentsContextMomentsContext;
  v27 = [(BMEventBase *)&v38 init];
  if (v27)
  {
    v27->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v25)
    {
      uUIDString = [v25 UUIDString];
    }

    else
    {
      uUIDString = 0;
    }

    raw_contextIdentifier = v27->_raw_contextIdentifier;
    v27->_raw_contextIdentifier = uUIDString;

    objc_storeStrong(&v27->_contextStrings, obj);
    if (timestampCopy)
    {
      v27->_hasRaw_contextCreationTimestamp = 1;
      [timestampCopy timeIntervalSince1970];
    }

    else
    {
      v27->_hasRaw_contextCreationTimestamp = 0;
      v30 = -1.0;
    }

    v27->_raw_contextCreationTimestamp = v30;
    if (typeCopy)
    {
      v27->_hasAssociatedPatternType = 1;
      unsignedIntValue = [typeCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v27->_hasAssociatedPatternType = 0;
    }

    v27->_associatedPatternType = unsignedIntValue;
    if (bitmapCopy)
    {
      v27->_hasMetadataContentBitmap = 1;
      unsignedIntValue2 = [bitmapCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v27->_hasMetadataContentBitmap = 0;
    }

    v27->_metadataContentBitmap = unsignedIntValue2;
    if (actionTypeCopy)
    {
      v27->_hasActionType = 1;
      unsignedIntValue3 = [actionTypeCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue3 = 0;
      v27->_hasActionType = 0;
    }

    v27->_actionType = unsignedIntValue3;
    objc_storeStrong(&v27->_associatedLocations, locations);
    objc_storeStrong(&v27->_associatedContacts, contacts);
    objc_storeStrong(&v27->_associatedTime, time);
    objc_storeStrong(&v27->_associatedMusic, music);
  }

  return v27;
}

+ (id)protoFields
{
  v14[10] = *MEMORY[0x1E69E9840];
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contextIdentifier" number:1 type:13 subMessageClass:0];
  v14[0] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contextStrings" number:2 type:14 subMessageClass:objc_opt_class()];
  v14[1] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contextCreationTimestamp" number:3 type:0 subMessageClass:0];
  v14[2] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"associatedPatternType" number:4 type:4 subMessageClass:0];
  v14[3] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"metadataContentBitmap" number:5 type:4 subMessageClass:0];
  v14[4] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"actionType" number:6 type:4 subMessageClass:0];
  v14[5] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"associatedLocations" number:7 type:14 subMessageClass:objc_opt_class()];
  v14[6] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"associatedContacts" number:8 type:14 subMessageClass:objc_opt_class()];
  v14[7] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"associatedTime" number:9 type:14 subMessageClass:objc_opt_class()];
  v14[8] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"associatedMusic" number:10 type:14 subMessageClass:objc_opt_class()];
  v14[9] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:10];

  return v11;
}

+ (id)columns
{
  v14[10] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contextIdentifier" dataType:6 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:3];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"contextStrings_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_422_76839];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contextCreationTimestamp" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"associatedPatternType" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"metadataContentBitmap" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"actionType" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"associatedLocations_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_424_76841];
  v9 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"associatedContacts_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_426];
  v10 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"associatedTime_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_428];
  v11 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"associatedMusic_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_430];
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

id __60__BMPersonalizedSensingMomentsContextMomentsContext_columns__block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _associatedMusicJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __60__BMPersonalizedSensingMomentsContextMomentsContext_columns__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _associatedTimeJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __60__BMPersonalizedSensingMomentsContextMomentsContext_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _associatedContactsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __60__BMPersonalizedSensingMomentsContextMomentsContext_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _associatedLocationsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __60__BMPersonalizedSensingMomentsContextMomentsContext_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _contextStringsJSONArray];
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

    v8 = [[BMPersonalizedSensingMomentsContextMomentsContext alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[11] = 0;
    }
  }

  return v4;
}

@end