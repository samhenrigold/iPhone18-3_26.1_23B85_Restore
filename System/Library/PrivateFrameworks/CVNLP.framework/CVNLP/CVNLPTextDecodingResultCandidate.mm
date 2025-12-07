@interface CVNLPTextDecodingResultCandidate
- (CVNLPTextDecodingResultCandidate)initWithTokens:(id)tokens score:(double)score activationScore:(double)activationScore;
- (NSString)fullString;
@end

@implementation CVNLPTextDecodingResultCandidate

- (CVNLPTextDecodingResultCandidate)initWithTokens:(id)tokens score:(double)score activationScore:(double)activationScore
{
  tokensCopy = tokens;
  v13.receiver = self;
  v13.super_class = CVNLPTextDecodingResultCandidate;
  v10 = [(CVNLPTextDecodingResultCandidate *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_tokens, tokens);
    v11->_score = score;
    v11->_activationScore = activationScore;
  }

  return v11;
}

- (NSString)fullString
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, v2, v3);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = self->_tokens;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v19, v23, 16);
  if (v8)
  {
    v12 = v8;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v15 = objc_msgSend_fullString(*(*(&v19 + 1) + 8 * i), v9, v10, v11, v19);
        objc_msgSend_appendString_(v5, v16, v15, v17);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v19, v23, 16);
    }

    while (v12);
  }

  return v5;
}

@end