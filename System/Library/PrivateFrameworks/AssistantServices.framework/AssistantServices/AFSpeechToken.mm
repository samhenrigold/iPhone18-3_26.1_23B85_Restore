@interface AFSpeechToken
- (AFSpeechToken)initWithCoder:(id)coder;
- (AFSpeechToken)initWithDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)aceToken;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFSpeechToken

- (id)dictionaryRepresentation
{
  v25[11] = *MEMORY[0x1E69E9840];
  text = self->_text;
  v23 = text;
  v24[0] = @"text";
  if (!text)
  {
    text = [MEMORY[0x1E695DFB0] null];
  }

  v19 = text;
  v25[0] = text;
  v24[1] = @"phoneSequence";
  phoneSequence = self->_phoneSequence;
  v22 = phoneSequence;
  if (!phoneSequence)
  {
    phoneSequence = [MEMORY[0x1E695DFB0] null];
  }

  v18 = phoneSequence;
  v25[1] = phoneSequence;
  v24[2] = @"ipaPhoneSequence";
  ipaPhoneSequence = self->_ipaPhoneSequence;
  null = ipaPhoneSequence;
  if (!ipaPhoneSequence)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17 = null;
  v25[2] = null;
  v24[3] = @"confidence";
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:self->_confidenceScore];
  v25[3] = v21;
  v24[4] = @"startTime";
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startTime];
  v25[4] = v20;
  v24[5] = @"silenceStartTime";
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_silenceStartTime];
  v25[5] = v7;
  v24[6] = @"endTime";
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endTime];
  v25[6] = v8;
  v24[7] = @"removeSpaceBefore";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_removeSpaceBefore];
  v25[7] = v9;
  v24[8] = @"removeSpaceAfter";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_removeSpaceAfter];
  v25[8] = v10;
  v24[9] = @"graphCost";
  graphCost = self->_graphCost;
  null2 = graphCost;
  if (!graphCost)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v25[9] = null2;
  v24[10] = @"acousticCost";
  acousticCost = self->_acousticCost;
  null3 = acousticCost;
  if (!acousticCost)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v25[10] = null3;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:11];
  if (acousticCost)
  {
    if (graphCost)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (graphCost)
    {
      goto LABEL_13;
    }
  }

LABEL_13:
  if (!ipaPhoneSequence)
  {
  }

  if (!v22)
  {
  }

  if (!v23)
  {
  }

  return v15;
}

- (AFSpeechToken)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v107.receiver = self;
  v107.super_class = AFSpeechToken;
  v5 = [(AFSpeechToken *)&v107 init];
  if (!v5)
  {
    goto LABEL_77;
  }

  v6 = [dictionaryCopy objectForKey:@"text"];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = v6;
  if (!v9 || (NSClassFromString(v8), (objc_opt_isKindOfClass() & 1) == 0))
  {

LABEL_86:
LABEL_87:
    v100 = 0;
    goto LABEL_88;
  }

  objc_storeStrong(&v5->_text, v6);
  v10 = [dictionaryCopy objectForKey:@"phoneSequence"];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = v10;
  v14 = v12;
  v15 = 0x1E695D000uLL;
  if (v13 && ([MEMORY[0x1E695DFB0] null], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v13, "isEqual:", v16), v16, !v17))
  {
    NSClassFromString(v14);
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_85;
    }
  }

  else
  {
  }

  null = [MEMORY[0x1E695DFB0] null];
  if ([v13 isEqual:null])
  {
    v19 = 0;
  }

  else
  {
    v19 = v13;
  }

  objc_storeStrong(&v5->_phoneSequence, v19);

  v20 = [dictionaryCopy objectForKey:@"confidence"];
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  v23 = v20;
  v24 = v22;
  v25 = v24;
  if (v23)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
    v27 = [v23 isEqual:null2];

    if (v27)
    {
    }

    else
    {
      NSClassFromString(v25);
      v29 = objc_opt_isKindOfClass();

      if ((v29 & 1) == 0)
      {
LABEL_84:

LABEL_85:
        goto LABEL_86;
      }
    }

    null3 = [MEMORY[0x1E695DFB0] null];
    if ([v23 isEqual:null3])
    {
      intValue = 0;
    }

    else
    {
      intValue = [v23 intValue];
    }

    v5->_confidenceScore = intValue;
  }

  else
  {

    v5->_confidenceScore = 0;
  }

  v32 = [dictionaryCopy objectForKey:@"startTime"];
  v33 = objc_opt_class();
  v34 = NSStringFromClass(v33);
  v35 = v32;
  v36 = v34;
  v37 = v36;
  v106 = v35;
  if (v35)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
    v39 = [v35 isEqual:null4];

    if (v39)
    {
    }

    else
    {
      NSClassFromString(v37);
      v40 = objc_opt_isKindOfClass();

      if ((v40 & 1) == 0)
      {
LABEL_83:

        goto LABEL_84;
      }
    }

    null5 = [MEMORY[0x1E695DFB0] null];
    v42 = [v35 isEqual:null5];
    v43 = 0.0;
    if ((v42 & 1) == 0)
    {
      [v35 doubleValue];
    }

    v5->_startTime = v43;

    if (v5->_startTime < 0.0)
    {
      goto LABEL_83;
    }
  }

  else
  {

    v5->_startTime = 0.0;
  }

  v44 = [dictionaryCopy objectForKey:@"silenceStartTime"];
  v45 = objc_opt_class();
  v46 = NSStringFromClass(v45);
  v47 = v44;
  v48 = v46;
  v49 = v48;
  if (v47)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
    v51 = [v47 isEqual:null6];

    if (v51)
    {

      v15 = 0x1E695D000;
    }

    else
    {
      NSClassFromString(v49);
      v52 = objc_opt_isKindOfClass();

      v15 = 0x1E695D000uLL;
      if ((v52 & 1) == 0)
      {
LABEL_38:

        goto LABEL_83;
      }
    }

    null7 = [*(v15 + 4016) null];
    v54 = [v47 isEqual:null7];
    v55 = 0.0;
    if ((v54 & 1) == 0)
    {
      [v47 doubleValue];
    }

    v5->_silenceStartTime = v55;

    if (v5->_silenceStartTime < 0.0)
    {
      goto LABEL_38;
    }
  }

  else
  {

    v5->_silenceStartTime = 0.0;
  }

  v105 = v47;
  v56 = [dictionaryCopy objectForKey:@"endTime"];
  v57 = objc_opt_class();
  v58 = NSStringFromClass(v57);
  v59 = v56;
  v60 = v58;
  v61 = v60;
  if (v59)
  {
    v62 = v15;
    null8 = [*(v15 + 4016) null];
    v64 = [v59 isEqual:null8];

    if (v64)
    {
    }

    else
    {
      NSClassFromString(v61);
      v65 = objc_opt_isKindOfClass();

      if ((v65 & 1) == 0)
      {
LABEL_47:

LABEL_82:
        goto LABEL_83;
      }
    }

    null9 = [*(v62 + 4016) null];
    v67 = [v59 isEqual:null9];
    v68 = 0.0;
    if ((v67 & 1) == 0)
    {
      [v59 doubleValue];
    }

    v5->_endTime = v68;

    if (v5->_endTime < 0.0)
    {
      goto LABEL_47;
    }
  }

  else
  {

    v5->_endTime = 0.0;
  }

  v104 = v59;
  v69 = [dictionaryCopy objectForKey:@"removeSpaceBefore"];
  v70 = objc_opt_class();
  v71 = NSStringFromClass(v70);
  v72 = validationOfObjectWithClassType(v69, v71);

  if (!v72)
  {
LABEL_81:

    goto LABEL_82;
  }

  if (v69)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
    if ([v69 isEqual:null10])
    {
      bOOLValue = 0;
    }

    else
    {
      bOOLValue = [v69 BOOLValue];
    }

    v5->_removeSpaceBefore = bOOLValue;
  }

  else
  {
    v5->_removeSpaceBefore = 0;
  }

  v75 = [dictionaryCopy objectForKey:@"removeSpaceAfter"];
  v76 = objc_opt_class();
  v77 = NSStringFromClass(v76);
  v78 = validationOfObjectWithClassType(v75, v77);

  if (!v78)
  {

    goto LABEL_81;
  }

  v103 = v75;
  if (v75)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
    if ([v75 isEqual:null11])
    {
      bOOLValue2 = 0;
    }

    else
    {
      bOOLValue2 = [v75 BOOLValue];
    }

    v5->_removeSpaceAfter = bOOLValue2;
  }

  else
  {
    v5->_removeSpaceAfter = 0;
  }

  v81 = [dictionaryCopy objectForKey:@"ipaPhoneSequence"];
  v82 = objc_opt_class();
  v83 = NSStringFromClass(v82);
  v84 = validationOfObjectWithClassType(v81, v83);

  if (!v84)
  {

LABEL_80:
    goto LABEL_81;
  }

  null12 = [MEMORY[0x1E695DFB0] null];
  if ([v81 isEqual:null12])
  {
    v86 = 0;
  }

  else
  {
    v86 = v81;
  }

  objc_storeStrong(&v5->_ipaPhoneSequence, v86);

  v87 = [dictionaryCopy objectForKey:@"graphCost"];
  v102 = v81;
  v88 = objc_opt_class();
  v89 = NSStringFromClass(v88);
  v90 = validationOfObjectWithClassType(v87, v89);

  if (!v90)
  {

    goto LABEL_80;
  }

  null13 = [MEMORY[0x1E695DFB0] null];
  v92 = v87;
  if ([v87 isEqual:null13])
  {
    v93 = 0;
  }

  else
  {
    v93 = v87;
  }

  objc_storeStrong(&v5->_graphCost, v93);

  v94 = [dictionaryCopy objectForKey:@"acousticCost"];
  v95 = objc_opt_class();
  v96 = NSStringFromClass(v95);
  v97 = validationOfObjectWithClassType(v94, v96);

  if (v97)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
    if ([v94 isEqual:null14])
    {
      v99 = 0;
    }

    else
    {
      v99 = v94;
    }

    objc_storeStrong(&v5->_acousticCost, v99);
  }

  if (!v97)
  {
    goto LABEL_87;
  }

LABEL_77:
  v100 = v5;
LABEL_88:

  return v100;
}

- (id)aceToken
{
  v3 = objc_alloc_init(MEMORY[0x1E69C7A28]);
  text = [(AFSpeechToken *)self text];
  [v3 setText:text];

  phoneSequence = [(AFSpeechToken *)self phoneSequence];
  [v3 setPhoneSequence:phoneSequence];

  v6 = MEMORY[0x1E696AD98];
  [(AFSpeechToken *)self startTime];
  v8 = [v6 numberWithDouble:v7 * 1000.0];
  [v3 setStartTime:v8];

  v9 = MEMORY[0x1E696AD98];
  [(AFSpeechToken *)self silenceStartTime];
  v11 = [v9 numberWithDouble:v10 * 1000.0];
  [v3 setSilenceStartTime:v11];

  v12 = MEMORY[0x1E696AD98];
  [(AFSpeechToken *)self endTime];
  v14 = [v12 numberWithDouble:v13 * 1000.0];
  [v3 setEndTime:v14];

  [v3 setAddSpaceAfter:{-[AFSpeechToken removeSpaceAfter](self, "removeSpaceAfter") ^ 1}];
  [v3 setRemoveSpaceAfter:{-[AFSpeechToken removeSpaceAfter](self, "removeSpaceAfter")}];
  [v3 setRemoveSpaceBefore:{-[AFSpeechToken removeSpaceBefore](self, "removeSpaceBefore")}];
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AFSpeechToken confidenceScore](self, "confidenceScore")}];
  [v3 setConfidenceScore:v15];

  return v3;
}

- (AFSpeechToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = AFSpeechToken;
  v5 = [(AFSpeechToken *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneSequence"];
    phoneSequence = v5->_phoneSequence;
    v5->_phoneSequence = v8;

    v5->_confidenceScore = [coderCopy decodeIntegerForKey:@"confidence"];
    [coderCopy decodeDoubleForKey:@"startTime"];
    v5->_startTime = v10;
    [coderCopy decodeDoubleForKey:@"silenceStartTime"];
    v5->_silenceStartTime = v11;
    [coderCopy decodeDoubleForKey:@"endTime"];
    v5->_endTime = v12;
    v5->_removeSpaceBefore = [coderCopy decodeBoolForKey:@"removeSpaceBefore"];
    v5->_removeSpaceAfter = [coderCopy decodeBoolForKey:@"removeSpaceAfter"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ipaPhoneSequence"];
    ipaPhoneSequence = v5->_ipaPhoneSequence;
    v5->_ipaPhoneSequence = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"graphCost"];
    graphCost = v5->_graphCost;
    v5->_graphCost = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"acousticCost"];
    acousticCost = v5->_acousticCost;
    v5->_acousticCost = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  text = self->_text;
  coderCopy = coder;
  [coderCopy encodeObject:text forKey:@"text"];
  [coderCopy encodeObject:self->_phoneSequence forKey:@"phoneSequence"];
  [coderCopy encodeInteger:self->_confidenceScore forKey:@"confidence"];
  [coderCopy encodeDouble:@"startTime" forKey:self->_startTime];
  [coderCopy encodeDouble:@"silenceStartTime" forKey:self->_silenceStartTime];
  [coderCopy encodeDouble:@"endTime" forKey:self->_endTime];
  [coderCopy encodeBool:self->_removeSpaceBefore forKey:@"removeSpaceBefore"];
  [coderCopy encodeBool:self->_removeSpaceAfter forKey:@"removeSpaceAfter"];
  [coderCopy encodeObject:self->_ipaPhoneSequence forKey:@"ipaPhoneSequence"];
  [coderCopy encodeObject:self->_graphCost forKey:@"graphCost"];
  [coderCopy encodeObject:self->_acousticCost forKey:@"acousticCost"];
}

- (id)description
{
  v15.receiver = self;
  v15.super_class = AFSpeechToken;
  v3 = [(AFSpeechToken *)&v15 description];
  v13 = *&self->_startTime;
  v14 = *&self->_text;
  endTime = self->_endTime;
  if (self->_removeSpaceBefore)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if (self->_removeSpaceAfter)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  ipaPhoneSequence = self->_ipaPhoneSequence;
  confidenceScore = self->_confidenceScore;
  stringValue = [(NSNumber *)self->_graphCost stringValue];
  stringValue2 = [(NSNumber *)self->_acousticCost stringValue];
  v11 = [v3 stringByAppendingFormat:@"text: %@, phoneSequence: %@, score: %ld, start: %lf, silenceStart: %lf, end: %lf, remove space before: %@ after: %@, ipaPhoneSequence: %@, graphCost: %@, acousticCost: %@", v14, confidenceScore, v13, *&endTime, v5, v6, ipaPhoneSequence, stringValue, stringValue2];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && ((v5 = *(equalCopy + 2), v5 == self->_text) || objc_msgSend_isEqualToString_(v5)) && ((objc_msgSend_isEqualToString_(*(equalCopy + 3)) & 1) != 0 || *(equalCopy + 3) == self->_phoneSequence) && *(equalCopy + 5) == self->_confidenceScore && *(equalCopy + 6) == self->_startTime && *(equalCopy + 7) == self->_silenceStartTime && *(equalCopy + 8) == self->_endTime && equalCopy[8] == self->_removeSpaceBefore && equalCopy[9] == self->_removeSpaceAfter && ((objc_msgSend_isEqualToString_(*(equalCopy + 4)) & 1) != 0 || *(equalCopy + 3) == self->_phoneSequence) && (([*(equalCopy + 9) isEqual:self->_graphCost] & 1) != 0 || *(equalCopy + 9) == self->_graphCost) && ((objc_msgSend(*(equalCopy + 10), "isEqual:", self->_acousticCost) & 1) != 0 || *(equalCopy + 10) == self->_acousticCost);

  return v6;
}

@end