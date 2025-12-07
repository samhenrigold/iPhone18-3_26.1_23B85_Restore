@interface BMDictationUserEdit
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDictationUserEdit)initWithAsrID:(id)d interactionID:(id)iD metadata:(id)metadata startIndex:(id)index endIndex:(id)endIndex correctedText:(id)text recognizedText:(id)recognizedText recognizedTokens:(id)self0 alternativeSelections:(id)self1 preItnNbest:(id)self2 postItnNbest:(id)self3;
- (BMDictationUserEdit)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_alternativeSelectionsJSONArray;
- (id)_postItnNbestJSONArray;
- (id)_preItnNbestJSONArray;
- (id)_recognizedTokensJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMDictationUserEdit

+ (id)columns
{
  v15[11] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"asrID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"interactionID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"metadata_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_259];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startIndex" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"endIndex" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"correctedText" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"recognizedText" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"recognizedTokens_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_261];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"alternativeSelections_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_263];
  v9 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"preItnNbest_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_265_82483];
  v10 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"postItnNbest_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_267_82484];
  v15[0] = v2;
  v15[1] = v3;
  v15[2] = v4;
  v15[3] = v5;
  v15[4] = v13;
  v15[5] = v6;
  v15[6] = v7;
  v15[7] = v14;
  v15[8] = v8;
  v15[9] = v9;
  v15[10] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:11];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    asrID = [(BMDictationUserEdit *)self asrID];
    asrID2 = [v5 asrID];
    v8 = asrID2;
    if (asrID == asrID2)
    {
    }

    else
    {
      asrID3 = [(BMDictationUserEdit *)self asrID];
      asrID4 = [v5 asrID];
      v11 = [asrID3 isEqual:asrID4];

      if (!v11)
      {
        goto LABEL_43;
      }
    }

    interactionID = [(BMDictationUserEdit *)self interactionID];
    interactionID2 = [v5 interactionID];
    v15 = interactionID2;
    if (interactionID == interactionID2)
    {
    }

    else
    {
      interactionID3 = [(BMDictationUserEdit *)self interactionID];
      interactionID4 = [v5 interactionID];
      v18 = [interactionID3 isEqual:interactionID4];

      if (!v18)
      {
        goto LABEL_43;
      }
    }

    metadata = [(BMDictationUserEdit *)self metadata];
    metadata2 = [v5 metadata];
    v21 = metadata2;
    if (metadata == metadata2)
    {
    }

    else
    {
      metadata3 = [(BMDictationUserEdit *)self metadata];
      metadata4 = [v5 metadata];
      v24 = [metadata3 isEqual:metadata4];

      if (!v24)
      {
        goto LABEL_43;
      }
    }

    if (-[BMDictationUserEdit hasStartIndex](self, "hasStartIndex") || [v5 hasStartIndex])
    {
      if (![(BMDictationUserEdit *)self hasStartIndex])
      {
        goto LABEL_43;
      }

      if (![v5 hasStartIndex])
      {
        goto LABEL_43;
      }

      startIndex = [(BMDictationUserEdit *)self startIndex];
      if (startIndex != [v5 startIndex])
      {
        goto LABEL_43;
      }
    }

    if (-[BMDictationUserEdit hasEndIndex](self, "hasEndIndex") || [v5 hasEndIndex])
    {
      if (![(BMDictationUserEdit *)self hasEndIndex])
      {
        goto LABEL_43;
      }

      if (![v5 hasEndIndex])
      {
        goto LABEL_43;
      }

      endIndex = [(BMDictationUserEdit *)self endIndex];
      if (endIndex != [v5 endIndex])
      {
        goto LABEL_43;
      }
    }

    correctedText = [(BMDictationUserEdit *)self correctedText];
    correctedText2 = [v5 correctedText];
    v29 = correctedText2;
    if (correctedText == correctedText2)
    {
    }

    else
    {
      correctedText3 = [(BMDictationUserEdit *)self correctedText];
      correctedText4 = [v5 correctedText];
      v32 = [correctedText3 isEqual:correctedText4];

      if (!v32)
      {
        goto LABEL_43;
      }
    }

    recognizedText = [(BMDictationUserEdit *)self recognizedText];
    recognizedText2 = [v5 recognizedText];
    v35 = recognizedText2;
    if (recognizedText == recognizedText2)
    {
    }

    else
    {
      recognizedText3 = [(BMDictationUserEdit *)self recognizedText];
      recognizedText4 = [v5 recognizedText];
      v38 = [recognizedText3 isEqual:recognizedText4];

      if (!v38)
      {
        goto LABEL_43;
      }
    }

    recognizedTokens = [(BMDictationUserEdit *)self recognizedTokens];
    recognizedTokens2 = [v5 recognizedTokens];
    v41 = recognizedTokens2;
    if (recognizedTokens == recognizedTokens2)
    {
    }

    else
    {
      recognizedTokens3 = [(BMDictationUserEdit *)self recognizedTokens];
      recognizedTokens4 = [v5 recognizedTokens];
      v44 = [recognizedTokens3 isEqual:recognizedTokens4];

      if (!v44)
      {
        goto LABEL_43;
      }
    }

    alternativeSelections = [(BMDictationUserEdit *)self alternativeSelections];
    alternativeSelections2 = [v5 alternativeSelections];
    v47 = alternativeSelections2;
    if (alternativeSelections == alternativeSelections2)
    {
    }

    else
    {
      alternativeSelections3 = [(BMDictationUserEdit *)self alternativeSelections];
      alternativeSelections4 = [v5 alternativeSelections];
      v50 = [alternativeSelections3 isEqual:alternativeSelections4];

      if (!v50)
      {
        goto LABEL_43;
      }
    }

    preItnNbest = [(BMDictationUserEdit *)self preItnNbest];
    preItnNbest2 = [v5 preItnNbest];
    v53 = preItnNbest2;
    if (preItnNbest == preItnNbest2)
    {
    }

    else
    {
      preItnNbest3 = [(BMDictationUserEdit *)self preItnNbest];
      preItnNbest4 = [v5 preItnNbest];
      v56 = [preItnNbest3 isEqual:preItnNbest4];

      if (!v56)
      {
LABEL_43:
        v12 = 0;
LABEL_44:

        goto LABEL_45;
      }
    }

    postItnNbest = [(BMDictationUserEdit *)self postItnNbest];
    postItnNbest2 = [v5 postItnNbest];
    if (postItnNbest == postItnNbest2)
    {
      v12 = 1;
    }

    else
    {
      postItnNbest3 = [(BMDictationUserEdit *)self postItnNbest];
      postItnNbest4 = [v5 postItnNbest];
      v12 = [postItnNbest3 isEqual:postItnNbest4];
    }

    goto LABEL_44;
  }

  v12 = 0;
LABEL_45:

  return v12;
}

- (id)jsonDictionary
{
  v38[11] = *MEMORY[0x1E69E9840];
  asrID = [(BMDictationUserEdit *)self asrID];
  interactionID = [(BMDictationUserEdit *)self interactionID];
  metadata = [(BMDictationUserEdit *)self metadata];
  jsonDictionary = [metadata jsonDictionary];

  if ([(BMDictationUserEdit *)self hasStartIndex])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDictationUserEdit startIndex](self, "startIndex")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMDictationUserEdit *)self hasEndIndex])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDictationUserEdit endIndex](self, "endIndex")}];
  }

  else
  {
    v8 = 0;
  }

  correctedText = [(BMDictationUserEdit *)self correctedText];
  recognizedText = [(BMDictationUserEdit *)self recognizedText];
  _recognizedTokensJSONArray = [(BMDictationUserEdit *)self _recognizedTokensJSONArray];
  _alternativeSelectionsJSONArray = [(BMDictationUserEdit *)self _alternativeSelectionsJSONArray];
  _preItnNbestJSONArray = [(BMDictationUserEdit *)self _preItnNbestJSONArray];
  _postItnNbestJSONArray = [(BMDictationUserEdit *)self _postItnNbestJSONArray];
  v37[0] = @"asrID";
  null = asrID;
  if (!asrID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null;
  v38[0] = null;
  v37[1] = @"interactionID";
  null2 = interactionID;
  if (!interactionID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null2;
  v38[1] = null2;
  v37[2] = @"metadata";
  null3 = jsonDictionary;
  if (!jsonDictionary)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null3;
  v38[2] = null3;
  v37[3] = @"startIndex";
  null4 = v7;
  if (!v7)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = asrID;
  v25 = null4;
  v38[3] = null4;
  v37[4] = @"endIndex";
  null5 = v8;
  if (!v8)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = interactionID;
  v24 = null5;
  v38[4] = null5;
  v37[5] = @"correctedText";
  null6 = correctedText;
  if (!correctedText)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = jsonDictionary;
  v38[5] = null6;
  v37[6] = @"recognizedText";
  null7 = recognizedText;
  if (!recognizedText)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v7;
  v38[6] = null7;
  v37[7] = @"recognizedTokens";
  null8 = _recognizedTokensJSONArray;
  if (!_recognizedTokensJSONArray)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v38[7] = null8;
  v37[8] = @"alternativeSelections";
  null9 = _alternativeSelectionsJSONArray;
  if (!_alternativeSelectionsJSONArray)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v38[8] = null9;
  v37[9] = @"preItnNbest";
  null10 = _preItnNbestJSONArray;
  if (!_preItnNbestJSONArray)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v38[9] = null10;
  v37[10] = @"postItnNbest";
  null11 = _postItnNbestJSONArray;
  if (!_postItnNbestJSONArray)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v38[10] = null11;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:11];
  if (_postItnNbestJSONArray)
  {
    if (_preItnNbestJSONArray)
    {
      goto LABEL_31;
    }

LABEL_48:

    if (_alternativeSelectionsJSONArray)
    {
      goto LABEL_32;
    }

    goto LABEL_49;
  }

  if (!_preItnNbestJSONArray)
  {
    goto LABEL_48;
  }

LABEL_31:
  if (_alternativeSelectionsJSONArray)
  {
    goto LABEL_32;
  }

LABEL_49:

LABEL_32:
  if (!_recognizedTokensJSONArray)
  {
  }

  if (!recognizedText)
  {
  }

  if (!correctedText)
  {
  }

  if (!v8)
  {
  }

  if (v30)
  {
    if (v31)
    {
      goto LABEL_42;
    }
  }

  else
  {

    if (v31)
    {
LABEL_42:
      if (v32)
      {
        goto LABEL_43;
      }

LABEL_52:

      if (v33)
      {
        goto LABEL_44;
      }

      goto LABEL_53;
    }
  }

  if (!v32)
  {
    goto LABEL_52;
  }

LABEL_43:
  if (v33)
  {
    goto LABEL_44;
  }

LABEL_53:

LABEL_44:

  return v29;
}

- (id)_postItnNbestJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  postItnNbest = [(BMDictationUserEdit *)self postItnNbest];
  v5 = [postItnNbest countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(postItnNbest);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [postItnNbest countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_preItnNbestJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  preItnNbest = [(BMDictationUserEdit *)self preItnNbest];
  v5 = [preItnNbest countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(preItnNbest);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [preItnNbest countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_alternativeSelectionsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  alternativeSelections = [(BMDictationUserEdit *)self alternativeSelections];
  v5 = [alternativeSelections countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(alternativeSelections);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [alternativeSelections countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_recognizedTokensJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  recognizedTokens = [(BMDictationUserEdit *)self recognizedTokens];
  v5 = [recognizedTokens countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(recognizedTokens);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [recognizedTokens countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMDictationUserEdit)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v276[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"asrID"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = dictionaryCopy;
        v27 = *MEMORY[0x1E698F240];
        v275 = *MEMORY[0x1E696A578];
        v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"asrID"];
        v276[0] = v23;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v276 forKeys:&v275 count:1];
        v29 = v25;
        v9 = v28;
        v30 = v27;
        dictionaryCopy = v26;
        v31 = [v29 initWithDomain:v30 code:2 userInfo:v28];
        v8 = 0;
        errorCopy = error;
        error = 0;
        *errorCopy = v31;
        goto LABEL_189;
      }

      v8 = 0;
      goto LABEL_190;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"interactionID"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        selfCopy = self;
        v48 = v9;
        v49 = objc_alloc(MEMORY[0x1E696ABC0]);
        v50 = dictionaryCopy;
        v51 = *MEMORY[0x1E698F240];
        v273 = *MEMORY[0x1E696A578];
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"interactionID"];
        v274 = v21;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v274 forKeys:&v273 count:1];
        v52 = v49;
        v9 = v48;
        self = selfCopy;
        v53 = v51;
        dictionaryCopy = v50;
        v54 = [v52 initWithDomain:v53 code:2 userInfo:v24];
        v23 = 0;
        errorCopy2 = error;
        error = 0;
        *errorCopy2 = v54;
        goto LABEL_187;
      }

      v23 = 0;
      goto LABEL_189;
    }

    v213 = v9;
  }

  else
  {
    v213 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"metadata"];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v195 = v9;
        v56 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy3 = error;
        v57 = v8;
        v58 = *MEMORY[0x1E698F240];
        v271 = *MEMORY[0x1E696A578];
        v59 = dictionaryCopy;
        v60 = v10;
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"metadata"];
        v272 = v24;
        v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v272 forKeys:&v271 count:1];
        v62 = v56;
        v9 = v195;
        v63 = v58;
        v8 = v57;
        *errorCopy3 = [v62 initWithDomain:v63 code:2 userInfo:v61];

        error = 0;
        v21 = v60;
        dictionaryCopy = v59;
        v23 = v213;
        goto LABEL_187;
      }

      v23 = v213;
      goto LABEL_188;
    }

    v21 = v10;
    v234 = 0;
    v206 = [[BMDictationUserEditRequestMetadata alloc] initWithJSONDictionary:v21 error:&v234];
    v22 = v234;
    if (v22)
    {
      if (error)
      {
        v22 = v22;
        *error = v22;
      }

      error = 0;
      v23 = v213;
      v24 = v206;
      goto LABEL_187;
    }

    errorCopy5 = error;
  }

  else
  {
    errorCopy5 = error;
    v206 = 0;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"startIndex"];
  v207 = v10;
  v203 = v11;
  errorCopy6 = self;
  if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy5)
      {
        v196 = v9;
        v64 = objc_alloc(MEMORY[0x1E696ABC0]);
        v193 = v8;
        v65 = dictionaryCopy;
        v66 = *MEMORY[0x1E698F240];
        v269 = *MEMORY[0x1E696A578];
        v67 = objc_alloc(MEMORY[0x1E696AEC0]);
        v181 = objc_opt_class();
        v68 = v67;
        v10 = v207;
        v200 = [v68 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v181, @"startIndex"];
        v270 = v200;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v270 forKeys:&v269 count:1];
        v69 = v64;
        v70 = v66;
        dictionaryCopy = v65;
        v8 = v193;
        v9 = v196;
        v71 = 0;
        error = 0;
        *errorCopy5 = [v69 initWithDomain:v70 code:2 userInfo:v13];
        v23 = v213;
        goto LABEL_185;
      }

      v71 = 0;
      error = 0;
      v23 = v213;
      goto LABEL_186;
    }

    v199 = v12;
  }

  else
  {
    v199 = 0;
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"endIndex"];
  v212 = v13;
  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      error = errorCopy5;
      if (!errorCopy5)
      {
        v200 = 0;
        v23 = v213;
        v71 = v199;
        goto LABEL_185;
      }

      v77 = v9;
      v78 = objc_alloc(MEMORY[0x1E696ABC0]);
      v79 = dictionaryCopy;
      v80 = *MEMORY[0x1E698F240];
      v267 = *MEMORY[0x1E696A578];
      v81 = objc_alloc(MEMORY[0x1E696AEC0]);
      v182 = objc_opt_class();
      v82 = v81;
      v10 = v207;
      v83 = [v82 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v182, @"endIndex"];
      v268 = v83;
      v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v268 forKeys:&v267 count:1];
      v85 = v78;
      v9 = v77;
      v13 = v212;
      v86 = v80;
      dictionaryCopy = v79;
      v87 = v83;
      v198 = v84;
      v200 = 0;
      error = 0;
      *errorCopy5 = [v85 initWithDomain:v86 code:2 userInfo:?];
      v23 = v213;
      goto LABEL_87;
    }

    v200 = v13;
  }

  else
  {
    v200 = 0;
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"correctedText"];
  v192 = v8;
  v198 = v14;
  v205 = dictionaryCopy;
  if (v14)
  {
    v15 = v14;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v202 = v15;
        goto LABEL_19;
      }

      if (errorCopy5)
      {
        v90 = v9;
        v91 = objc_alloc(MEMORY[0x1E696ABC0]);
        v92 = *MEMORY[0x1E698F240];
        v265 = *MEMORY[0x1E696A578];
        v93 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"correctedText"];
        v266 = v93;
        v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v266 forKeys:&v265 count:1];
        v95 = v91;
        v9 = v90;
        v17 = v93;
        v96 = v92;
        v16 = v94;
        v87 = 0;
        error = 0;
        *errorCopy5 = [v95 initWithDomain:v96 code:2 userInfo:v94];
        v23 = v213;
        v10 = v207;
        v71 = v199;
        goto LABEL_183;
      }

      v87 = 0;
      error = 0;
      v23 = v213;
      v10 = v207;
LABEL_87:
      v71 = v199;
      goto LABEL_184;
    }
  }

  v202 = 0;
LABEL_19:
  v16 = [dictionaryCopy objectForKeyedSubscript:@"recognizedText"];
  if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v97 = v16;
      if (errorCopy5)
      {
        v98 = v9;
        v99 = objc_alloc(MEMORY[0x1E696ABC0]);
        v100 = *MEMORY[0x1E698F240];
        v263 = *MEMORY[0x1E696A578];
        v101 = objc_alloc(MEMORY[0x1E696AEC0]);
        v183 = objc_opt_class();
        v102 = v101;
        v16 = v97;
        obj = [v102 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v183, @"recognizedText"];
        v264 = obj;
        v103 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v264 forKeys:&v263 count:1];
        v104 = v99;
        v9 = v98;
        v189 = v103;
        v17 = 0;
        error = 0;
        *errorCopy5 = [v104 initWithDomain:v100 code:2 userInfo:?];
        v23 = v213;
        v10 = v207;
        v71 = v199;
        v87 = v202;

        goto LABEL_182;
      }

      v17 = 0;
      error = 0;
      v23 = v213;
      v10 = v207;
      v71 = v199;
      v87 = v202;
      goto LABEL_183;
    }

    v194 = v9;
    v17 = v16;
  }

  else
  {
    v194 = v9;
    v17 = 0;
  }

  v18 = [v205 objectForKeyedSubscript:@"recognizedTokens"];
  null = [MEMORY[0x1E695DFB0] null];
  v20 = [v18 isEqual:null];

  v201 = v7;
  if (v20)
  {

    v18 = 0;
  }

  else if (v18)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      obj = v18;
      if (!errorCopy5)
      {
        error = 0;
        v9 = v194;
        v23 = v213;
        v10 = v207;
        v71 = v199;
        v87 = v202;
        goto LABEL_182;
      }

      v105 = objc_alloc(MEMORY[0x1E696ABC0]);
      v106 = *MEMORY[0x1E698F240];
      v261 = *MEMORY[0x1E696A578];
      v188 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"recognizedTokens"];
      v262 = v188;
      v190 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v262 forKeys:&v261 count:1];
      error = 0;
      *errorCopy5 = [v105 initWithDomain:v106 code:2 userInfo:?];
      v9 = v194;
      v23 = v213;
      v10 = v207;
      goto LABEL_81;
    }
  }

  v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
  v230 = 0u;
  v231 = 0u;
  v232 = 0u;
  v233 = 0u;
  v34 = v18;
  v35 = v33;
  v36 = v34;
  v37 = [v34 countByEnumeratingWithState:&v230 objects:v260 count:16];
  v38 = v202;
  obj = v36;
  v188 = v33;
  if (!v37)
  {
    goto LABEL_50;
  }

  v39 = v37;
  v40 = *v231;
  do
  {
    for (i = 0; i != v39; ++i)
    {
      if (*v231 != v40)
      {
        objc_enumerationMutation(obj);
      }

      v42 = *(*(&v230 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (errorCopy5)
        {
          v72 = objc_alloc(MEMORY[0x1E696ABC0]);
          v73 = *MEMORY[0x1E698F240];
          v258 = *MEMORY[0x1E696A578];
          v191 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"recognizedTokens"];
          v259 = v191;
          v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v259 forKeys:&v258 count:1];
          v75 = v72;
          v76 = v73;
LABEL_68:
          v186 = v74;
          v13 = v212;
          v23 = v213;
          v87 = v202;
          error = 0;
          v10 = v207;
          *errorCopy5 = [v75 initWithDomain:v76 code:2 userInfo:?];
          v190 = obj;
          v9 = v194;
          v71 = v199;

          goto LABEL_179;
        }

LABEL_72:
        error = 0;
        v23 = v213;
        v87 = v202;
        v9 = v194;
        v10 = v207;
        v71 = v199;
        v13 = v212;

        goto LABEL_181;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy5)
        {
          v88 = objc_alloc(MEMORY[0x1E696ABC0]);
          v89 = *MEMORY[0x1E698F240];
          v256 = *MEMORY[0x1E696A578];
          v191 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"recognizedTokens"];
          v257 = v191;
          v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v257 forKeys:&v256 count:1];
          v75 = v88;
          v76 = v89;
          goto LABEL_68;
        }

        goto LABEL_72;
      }

      [v35 addObject:v42];
    }

    v36 = obj;
    v39 = [obj countByEnumeratingWithState:&v230 objects:v260 count:16];
    v38 = v202;
  }

  while (v39);
LABEL_50:
  v202 = v38;

  v43 = [v205 objectForKeyedSubscript:@"alternativeSelections"];
  null2 = [MEMORY[0x1E695DFB0] null];
  v45 = [v43 isEqual:null2];

  if (!v45)
  {
    v13 = v212;
    if (!v43)
    {
      v46 = 0;
      v7 = v201;
      v10 = v207;
      goto LABEL_90;
    }

    objc_opt_class();
    v190 = v43;
    v7 = v201;
    v10 = v207;
    if (objc_opt_isKindOfClass())
    {
      v46 = v190;
      goto LABEL_90;
    }

    if (errorCopy5)
    {
      v144 = objc_alloc(MEMORY[0x1E696ABC0]);
      v145 = *MEMORY[0x1E698F240];
      v254 = *MEMORY[0x1E696A578];
      v191 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"alternativeSelections"];
      v255 = v191;
      v146 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v255 forKeys:&v254 count:1];
      v147 = v145;
      v10 = v207;
      v187 = v146;
      error = 0;
      *errorCopy5 = [v144 initWithDomain:v147 code:2 userInfo:?];
      v9 = v194;
      goto LABEL_130;
    }

    error = 0;
    v9 = v194;
    v23 = v213;
LABEL_81:
    v71 = v199;
    v87 = v202;
    goto LABEL_180;
  }

  v46 = 0;
  v7 = v201;
  v10 = v207;
  v13 = v212;
LABEL_90:
  v191 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v46, "count")}];
  v226 = 0u;
  v227 = 0u;
  v228 = 0u;
  v229 = 0u;
  v190 = v46;
  v107 = [v190 countByEnumeratingWithState:&v226 objects:v253 count:16];
  v185 = v17;
  if (!v107)
  {
    goto LABEL_100;
  }

  v108 = v107;
  v109 = *v227;
  do
  {
    for (j = 0; j != v108; ++j)
    {
      if (*v227 != v109)
      {
        objc_enumerationMutation(v190);
      }

      v111 = *(*(&v226 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v119 = errorCopy5;
        if (errorCopy5)
        {
          v120 = v190;
          v121 = objc_alloc(MEMORY[0x1E696ABC0]);
          v122 = *MEMORY[0x1E698F240];
          v251 = *MEMORY[0x1E696A578];
          v112 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"alternativeSelections"];
          v252 = v112;
          v123 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v252 forKeys:&v251 count:1];
          v124 = v121;
          v125 = v122;
          goto LABEL_107;
        }

LABEL_131:
        error = 0;
        v9 = v194;
        v23 = v213;
        v10 = v207;
        v71 = v199;
        v87 = v202;
        v17 = v185;

        goto LABEL_179;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v119 = errorCopy5;
        if (!errorCopy5)
        {
          goto LABEL_131;
        }

        v120 = v190;
        v126 = objc_alloc(MEMORY[0x1E696ABC0]);
        v127 = *MEMORY[0x1E698F240];
        v249 = *MEMORY[0x1E696A578];
        v112 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"alternativeSelections"];
        v250 = v112;
        v123 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v250 forKeys:&v249 count:1];
        v124 = v126;
        v125 = v127;
LABEL_107:
        error = 0;
        *v119 = [v124 initWithDomain:v125 code:2 userInfo:v123];
        v187 = v120;
        v9 = v194;
LABEL_111:
        v23 = v213;
        v10 = v207;
        v87 = v202;
        goto LABEL_176;
      }

      v112 = v111;
      v113 = [BMDictationUserEditConfusionPair alloc];
      v225 = 0;
      v114 = [(BMDictationUserEditConfusionPair *)v113 initWithJSONDictionary:v112 error:&v225];
      v115 = v225;
      if (v115)
      {
        v123 = v115;
        v9 = v194;
        if (errorCopy5)
        {
          v128 = v115;
          *errorCopy5 = v123;
        }

        error = 0;
        v187 = v190;
        goto LABEL_111;
      }

      [v191 addObject:v114];

      v7 = v201;
      v13 = v212;
    }

    v108 = [v190 countByEnumeratingWithState:&v226 objects:v253 count:16];
    v10 = v207;
    v17 = v185;
  }

  while (v108);
LABEL_100:

  v116 = [v205 objectForKeyedSubscript:@"preItnNbest"];
  null3 = [MEMORY[0x1E695DFB0] null];
  v118 = [v116 isEqual:null3];

  if (v118)
  {

    goto LABEL_115;
  }

  if (!v116)
  {
LABEL_115:
    v129 = 0;
    v9 = v194;
    goto LABEL_116;
  }

  objc_opt_class();
  v187 = v116;
  v9 = v194;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (errorCopy5)
    {
      v165 = objc_alloc(MEMORY[0x1E696ABC0]);
      v166 = *MEMORY[0x1E698F240];
      v247 = *MEMORY[0x1E696A578];
      v112 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"preItnNbest"];
      v248 = v112;
      v123 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v248 forKeys:&v247 count:1];
      v167 = v166;
      v9 = v194;
      error = 0;
      *errorCopy5 = [v165 initWithDomain:v167 code:2 userInfo:v123];
      goto LABEL_150;
    }

    error = 0;
LABEL_130:
    v23 = v213;
    v71 = v199;
    v87 = v202;
    goto LABEL_178;
  }

  v129 = v116;
LABEL_116:
  v112 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v129, "count")}];
  v221 = 0u;
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v187 = v129;
  v130 = [v187 countByEnumeratingWithState:&v221 objects:v246 count:16];
  if (!v130)
  {
    goto LABEL_126;
  }

  v131 = v130;
  v132 = *v222;
  do
  {
    v133 = 0;
    do
    {
      if (*v222 != v132)
      {
        objc_enumerationMutation(v187);
      }

      v134 = *(*(&v221 + 1) + 8 * v133);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v148 = errorCopy5;
        if (errorCopy5)
        {
          v135 = v16;
          v149 = v9;
          v150 = objc_alloc(MEMORY[0x1E696ABC0]);
          v151 = *MEMORY[0x1E698F240];
          v244 = *MEMORY[0x1E696A578];
          v137 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"preItnNbest"];
          v245 = v137;
          v152 = MEMORY[0x1E695DF20];
          v153 = &v245;
          v154 = &v244;
LABEL_137:
          v155 = [v152 dictionaryWithObjects:v153 forKeys:v154 count:1];
          v156 = v150;
          v9 = v149;
          v157 = v151;
          v10 = v207;
          *v148 = [v156 initWithDomain:v157 code:2 userInfo:v155];

          error = 0;
          v123 = v187;
          goto LABEL_138;
        }

LABEL_149:
        error = 0;
        v123 = v187;
LABEL_150:
        v23 = v213;
        goto LABEL_151;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v148 = errorCopy5;
        if (errorCopy5)
        {
          v135 = v16;
          v149 = v9;
          v150 = objc_alloc(MEMORY[0x1E696ABC0]);
          v151 = *MEMORY[0x1E698F240];
          v242 = *MEMORY[0x1E696A578];
          v137 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"preItnNbest"];
          v243 = v137;
          v152 = MEMORY[0x1E695DF20];
          v153 = &v243;
          v154 = &v242;
          goto LABEL_137;
        }

        goto LABEL_149;
      }

      v135 = v16;
      v136 = v9;
      v137 = v134;
      v138 = [BMDictationUserEditRecognitionResult alloc];
      v220 = 0;
      v139 = [(BMDictationUserEditRecognitionResult *)v138 initWithJSONDictionary:v137 error:&v220];
      v140 = v220;
      if (v140)
      {
        v158 = v140;
        if (errorCopy5)
        {
          v159 = v140;
          *errorCopy5 = v158;
        }

        error = 0;
        v123 = v187;
        v9 = v136;
        v23 = v213;
        v10 = v207;
        goto LABEL_142;
      }

      [v112 addObject:v139];

      ++v133;
      v10 = v207;
      v16 = v135;
      v17 = v185;
    }

    while (v131 != v133);
    v131 = [v187 countByEnumeratingWithState:&v221 objects:v246 count:16];
  }

  while (v131);
LABEL_126:
  v135 = v16;
  v197 = v9;

  v123 = [v205 objectForKeyedSubscript:@"postItnNbest"];
  null4 = [MEMORY[0x1E695DFB0] null];
  v142 = [v123 isEqual:null4];

  if (v142)
  {

    v123 = 0;
    v9 = v197;
    v143 = errorCopy5;
    goto LABEL_153;
  }

  v143 = errorCopy5;
  if (v123)
  {
    objc_opt_class();
    v9 = v197;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy5)
      {
        v160 = objc_alloc(MEMORY[0x1E696ABC0]);
        v161 = *MEMORY[0x1E698F240];
        v240 = *MEMORY[0x1E696A578];
        v137 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"postItnNbest"];
        v241 = v137;
        v162 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v241 forKeys:&v240 count:1];
        v163 = v160;
        v9 = v197;
        v164 = v161;
        v10 = v207;
        *errorCopy5 = [v163 initWithDomain:v164 code:2 userInfo:v162];

        error = 0;
LABEL_138:
        v23 = v213;
LABEL_142:
        v87 = v202;
        goto LABEL_175;
      }

      error = 0;
      v23 = v213;
      v16 = v135;
      v17 = v185;
LABEL_151:
      v87 = v202;
      goto LABEL_177;
    }
  }

  else
  {
    v9 = v197;
  }

LABEL_153:
  v137 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v123, "count")}];
  v216 = 0u;
  v217 = 0u;
  v218 = 0u;
  v219 = 0u;
  v123 = v123;
  v184 = [v123 countByEnumeratingWithState:&v216 objects:v239 count:16];
  if (!v184)
  {
    goto LABEL_163;
  }

  v210 = *v217;
  while (2)
  {
    v168 = 0;
    while (2)
    {
      if (*v217 != v210)
      {
        objc_enumerationMutation(v123);
      }

      v169 = *(*(&v216 + 1) + 8 * v168);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v213;
        v87 = v202;
        if (v143)
        {
          v211 = objc_alloc(MEMORY[0x1E696ABC0]);
          v174 = *MEMORY[0x1E698F240];
          v237 = *MEMORY[0x1E696A578];
          v170 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"postItnNbest"];
          v238 = v170;
          v175 = MEMORY[0x1E695DF20];
          v176 = &v238;
          v177 = &v237;
LABEL_169:
          v178 = [v175 dictionaryWithObjects:v176 forKeys:v177 count:1];
          *v143 = [v211 initWithDomain:v174 code:2 userInfo:v178];
LABEL_173:

          v9 = v197;
        }

LABEL_174:

        error = 0;
        v10 = v207;
        goto LABEL_175;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v23 = v213;
        v87 = v202;
        if (v143)
        {
          v211 = objc_alloc(MEMORY[0x1E696ABC0]);
          v174 = *MEMORY[0x1E698F240];
          v235 = *MEMORY[0x1E696A578];
          v170 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"postItnNbest"];
          v236 = v170;
          v175 = MEMORY[0x1E695DF20];
          v176 = &v236;
          v177 = &v235;
          goto LABEL_169;
        }

        goto LABEL_174;
      }

      v170 = v169;
      v171 = [BMDictationUserEditRecognitionResult alloc];
      v215 = 0;
      v172 = [(BMDictationUserEditRecognitionResult *)v171 initWithJSONDictionary:v170 error:&v215];
      v173 = v215;
      if (v173)
      {
        v178 = v173;
        if (v143)
        {
          v179 = v173;
          *v143 = v178;
        }

        v23 = v213;
        v87 = v202;
        goto LABEL_173;
      }

      [v137 addObject:v172];

      ++v168;
      v9 = v197;
      if (v184 != v168)
      {
        continue;
      }

      break;
    }

    v10 = v207;
    v184 = [v123 countByEnumeratingWithState:&v216 objects:v239 count:16];
    if (v184)
    {
      continue;
    }

    break;
  }

LABEL_163:

  v23 = v213;
  v87 = v202;
  error = [(BMDictationUserEdit *)errorCopy6 initWithAsrID:v192 interactionID:v213 metadata:v206 startIndex:v199 endIndex:v200 correctedText:v202 recognizedText:v185 recognizedTokens:v188 alternativeSelections:v191 preItnNbest:v112 postItnNbest:v137];
  errorCopy6 = error;
LABEL_175:

  v16 = v135;
LABEL_176:
  v17 = v185;
LABEL_177:

  v7 = v201;
  v71 = v199;
  v13 = v212;
LABEL_178:

LABEL_179:
LABEL_180:

LABEL_181:
LABEL_182:

LABEL_183:
  v8 = v192;
  dictionaryCopy = v205;
LABEL_184:

LABEL_185:
LABEL_186:

  v21 = v10;
  v24 = v206;
  self = errorCopy6;
LABEL_187:

  v10 = v21;
LABEL_188:

LABEL_189:
LABEL_190:

  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDictationUserEdit *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v49 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_asrID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_interactionID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_metadata)
  {
    v44 = 0;
    PBDataWriterPlaceMark();
    [(BMDictationUserEditRequestMetadata *)self->_metadata writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasStartIndex)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasEndIndex)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_correctedText)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_recognizedText)
  {
    PBDataWriterWriteStringField();
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = self->_recognizedTokens;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v41;
    do
    {
      v9 = 0;
      do
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v7);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = self->_alternativeSelections;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v36 objects:v47 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v37;
    do
    {
      v14 = 0;
      do
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v36 + 1) + 8 * v14);
        v44 = 0;
        PBDataWriterPlaceMark();
        [v15 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v36 objects:v47 count:16];
    }

    while (v12);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = self->_preItnNbest;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v32 objects:v46 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    do
    {
      v20 = 0;
      do
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v32 + 1) + 8 * v20);
        v44 = 0;
        PBDataWriterPlaceMark();
        [v21 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v32 objects:v46 count:16];
    }

    while (v18);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v22 = self->_postItnNbest;
  v23 = [(NSArray *)v22 countByEnumeratingWithState:&v28 objects:v45 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v29;
    do
    {
      v26 = 0;
      do
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v28 + 1) + 8 * v26);
        v44 = 0;
        PBDataWriterPlaceMark();
        [v27 writeTo:{toCopy, v28}];
        PBDataWriterRecallMark();
        ++v26;
      }

      while (v24 != v26);
      v24 = [(NSArray *)v22 countByEnumeratingWithState:&v28 objects:v45 count:16];
    }

    while (v24);
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v56.receiver = self;
  v56.super_class = BMDictationUserEdit;
  v5 = [(BMEventBase *)&v56 init];
  if (!v5)
  {
LABEL_84:
    v54 = v5;
    goto LABEL_85;
  }

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
      LOBYTE(v57) = 0;
      v14 = [fromCopy position] + 1;
      if (v14 >= [fromCopy position] && (v15 = objc_msgSend(fromCopy, "position") + 1, v15 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v57 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v13 |= (v57 & 0x7F) << v11;
      if ((v57 & 0x80) == 0)
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
    if ((v18 >> 3) <= 5)
    {
      if (v19 <= 2)
      {
        if (v19 == 1)
        {
          v31 = PBReaderReadString();
          v32 = 32;
        }

        else
        {
          if (v19 != 2)
          {
            goto LABEL_72;
          }

          v31 = PBReaderReadString();
          v32 = 40;
        }

LABEL_66:
        v43 = *(&v5->super.super.isa + v32);
        *(&v5->super.super.isa + v32) = v31;
      }

      else
      {
        switch(v19)
        {
          case 3:
            v57 = 0;
            v58 = 0;
            if (!PBReaderPlaceMark() || (v41 = [[BMDictationUserEditRequestMetadata alloc] initByReadFrom:fromCopy]) == 0)
            {
LABEL_86:

              goto LABEL_83;
            }

            metadata = v5->_metadata;
            v5->_metadata = v41;

            PBReaderRecallMark();
            break;
          case 4:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v5->_hasStartIndex = 1;
            while (1)
            {
              LOBYTE(v57) = 0;
              v36 = [fromCopy position] + 1;
              if (v36 >= [fromCopy position] && (v37 = objc_msgSend(fromCopy, "position") + 1, v37 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v57 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v35 |= (v57 & 0x7F) << v33;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v17 = v34++ >= 9;
              if (v17)
              {
                v39 = 0;
                goto LABEL_77;
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

LABEL_77:
            v5->_startIndex = v39;
            break;
          case 5:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            v5->_hasEndIndex = 1;
            while (1)
            {
              LOBYTE(v57) = 0;
              v25 = [fromCopy position] + 1;
              if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v57 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v24 |= (v57 & 0x7F) << v22;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v17 = v23++ >= 9;
              if (v17)
              {
                v28 = 0;
                goto LABEL_81;
              }
            }

            if ([fromCopy hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v24;
            }

LABEL_81:
            v5->_endIndex = v28;
            break;
          default:
            goto LABEL_72;
        }
      }
    }

    else if (v19 > 8)
    {
      switch(v19)
      {
        case 9:
          v57 = 0;
          v58 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_86;
          }

          v44 = [[BMDictationUserEditConfusionPair alloc] initByReadFrom:fromCopy];
          if (!v44)
          {
            goto LABEL_86;
          }

          v21 = v44;
          v30 = v7;
          goto LABEL_70;
        case 0xA:
          v57 = 0;
          v58 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_86;
          }

          v40 = [[BMDictationUserEditRecognitionResult alloc] initByReadFrom:fromCopy];
          if (!v40)
          {
            goto LABEL_86;
          }

          v21 = v40;
          v30 = v8;
          goto LABEL_70;
        case 0xB:
          v57 = 0;
          v58 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_86;
          }

          v29 = [[BMDictationUserEditRecognitionResult alloc] initByReadFrom:fromCopy];
          if (!v29)
          {
            goto LABEL_86;
          }

          v21 = v29;
          v30 = v9;
LABEL_70:
          [v30 addObject:v21];
          PBReaderRecallMark();
          goto LABEL_71;
      }

LABEL_72:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v19 == 6)
      {
        v31 = PBReaderReadString();
        v32 = 56;
        goto LABEL_66;
      }

      if (v19 == 7)
      {
        v31 = PBReaderReadString();
        v32 = 64;
        goto LABEL_66;
      }

      if (v19 != 8)
      {
        goto LABEL_72;
      }

      v20 = PBReaderReadString();
      if (!v20)
      {
        goto LABEL_86;
      }

      v21 = v20;
      [v6 addObject:v20];
LABEL_71:
    }
  }

  v45 = [v6 copy];
  recognizedTokens = v5->_recognizedTokens;
  v5->_recognizedTokens = v45;

  v47 = [v7 copy];
  alternativeSelections = v5->_alternativeSelections;
  v5->_alternativeSelections = v47;

  v49 = [v8 copy];
  preItnNbest = v5->_preItnNbest;
  v5->_preItnNbest = v49;

  v51 = [v9 copy];
  postItnNbest = v5->_postItnNbest;
  v5->_postItnNbest = v51;

  hasError = [fromCopy hasError];
  if ((hasError & 1) == 0)
  {
    goto LABEL_84;
  }

LABEL_83:
  v54 = 0;
LABEL_85:

  return v54;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  asrID = [(BMDictationUserEdit *)self asrID];
  interactionID = [(BMDictationUserEdit *)self interactionID];
  metadata = [(BMDictationUserEdit *)self metadata];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDictationUserEdit startIndex](self, "startIndex")}];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDictationUserEdit endIndex](self, "endIndex")}];
  correctedText = [(BMDictationUserEdit *)self correctedText];
  recognizedText = [(BMDictationUserEdit *)self recognizedText];
  recognizedTokens = [(BMDictationUserEdit *)self recognizedTokens];
  alternativeSelections = [(BMDictationUserEdit *)self alternativeSelections];
  preItnNbest = [(BMDictationUserEdit *)self preItnNbest];
  postItnNbest = [(BMDictationUserEdit *)self postItnNbest];
  v15 = [v14 initWithFormat:@"BMDictationUserEdit with asrID: %@, interactionID: %@, metadata: %@, startIndex: %@, endIndex: %@, correctedText: %@, recognizedText: %@, recognizedTokens: %@, alternativeSelections: %@, preItnNbest: %@, postItnNbest: %@", asrID, interactionID, metadata, v4, v5, correctedText, recognizedText, recognizedTokens, alternativeSelections, preItnNbest, postItnNbest];

  return v15;
}

- (BMDictationUserEdit)initWithAsrID:(id)d interactionID:(id)iD metadata:(id)metadata startIndex:(id)index endIndex:(id)endIndex correctedText:(id)text recognizedText:(id)recognizedText recognizedTokens:(id)self0 alternativeSelections:(id)self1 preItnNbest:(id)self2 postItnNbest:(id)self3
{
  dCopy = d;
  iDCopy = iD;
  iDCopy2 = iD;
  metadataCopy = metadata;
  indexCopy = index;
  endIndexCopy = endIndex;
  textCopy = text;
  recognizedTextCopy = recognizedText;
  tokensCopy = tokens;
  selectionsCopy = selections;
  nbestCopy = nbest;
  itnNbestCopy = itnNbest;
  v36.receiver = self;
  v36.super_class = BMDictationUserEdit;
  v24 = [(BMEventBase *)&v36 init];
  if (v24)
  {
    v24->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v24->_asrID, d);
    objc_storeStrong(&v24->_interactionID, iDCopy);
    objc_storeStrong(&v24->_metadata, metadata);
    if (indexCopy)
    {
      v24->_hasStartIndex = 1;
      unsignedIntValue = [indexCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v24->_hasStartIndex = 0;
    }

    v24->_startIndex = unsignedIntValue;
    if (endIndexCopy)
    {
      v24->_hasEndIndex = 1;
      unsignedIntValue2 = [endIndexCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v24->_hasEndIndex = 0;
    }

    v24->_endIndex = unsignedIntValue2;
    objc_storeStrong(&v24->_correctedText, text);
    objc_storeStrong(&v24->_recognizedText, recognizedText);
    objc_storeStrong(&v24->_recognizedTokens, tokens);
    objc_storeStrong(&v24->_alternativeSelections, selections);
    objc_storeStrong(&v24->_preItnNbest, nbest);
    objc_storeStrong(&v24->_postItnNbest, itnNbest);
  }

  return v24;
}

+ (id)protoFields
{
  v15[11] = *MEMORY[0x1E69E9840];
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"asrID" number:1 type:13 subMessageClass:0];
  v15[0] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"interactionID" number:2 type:13 subMessageClass:0];
  v15[1] = v13;
  v12 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"metadata" number:3 type:14 subMessageClass:objc_opt_class()];
  v15[2] = v12;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startIndex" number:4 type:4 subMessageClass:0];
  v15[3] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"endIndex" number:5 type:4 subMessageClass:0];
  v15[4] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"correctedText" number:6 type:13 subMessageClass:0];
  v15[5] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"recognizedText" number:7 type:13 subMessageClass:0];
  v15[6] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"recognizedTokens" number:8 type:13 subMessageClass:0];
  v15[7] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"alternativeSelections" number:9 type:14 subMessageClass:objc_opt_class()];
  v15[8] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"preItnNbest" number:10 type:14 subMessageClass:objc_opt_class()];
  v15[9] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"postItnNbest" number:11 type:14 subMessageClass:objc_opt_class()];
  v15[10] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:11];

  return v10;
}

id __30__BMDictationUserEdit_columns__block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _postItnNbestJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __30__BMDictationUserEdit_columns__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _preItnNbestJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __30__BMDictationUserEdit_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _alternativeSelectionsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __30__BMDictationUserEdit_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _recognizedTokensJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __30__BMDictationUserEdit_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 metadata];
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

    v8 = [[BMDictationUserEdit alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end