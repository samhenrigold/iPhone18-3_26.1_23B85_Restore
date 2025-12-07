@interface SFRepairResultMetrics
- (NSDictionary)dict;
- (int64_t)resultType;
@end

@implementation SFRepairResultMetrics

- (NSDictionary)dict
{
  v47 = *MEMORY[0x1E69E9840];
  v40 = 0;
  NSAppendPrintF(&v40, "%{flags}", self->_problemFlags, &unk_1A998FDA0);
  v3 = v40;
  v39 = 0;
  selfCopy = self;
  NSAppendPrintF(&v39, "%{flags}", self->_peerProblemFlags, &unk_1A998FDA0);
  v5 = v39;
  v44[0] = @"resultType";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SFRepairResultMetrics resultType](self, "resultType")}];
  v45[0] = v6;
  v44[1] = @"success";
  v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_error == 0];
  v45[1] = v7;
  v44[2] = @"forceWiFi";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_forceWiFi];
  v45[2] = v8;
  v44[3] = @"hasView";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasView];
  v45[3] = v9;
  v44[4] = @"totalMs";
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_totalMs];
  v45[4] = v10;
  v44[5] = @"triggerMs";
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_triggerMs];
  v12 = v11;
  if (v3)
  {
    v13 = v3;
  }

  else
  {
    v13 = &stru_1F1D30528;
  }

  v45[5] = v11;
  v45[6] = v13;
  v44[6] = @"problemFlags";
  v44[7] = @"triggerFlags";
  if (v5)
  {
    v14 = v5;
  }

  else
  {
    v14 = &stru_1F1D30528;
  }

  v45[7] = v14;
  v44[8] = @"peerModel";
  v44[9] = @"peerBuild";
  v46 = vbslq_s8(vceqzq_s64(*&self->_peerModel), vdupq_n_s64(&stru_1F1D30528), *&self->_peerModel);
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:10];
  v33 = [v15 mutableCopy];

  if (selfCopy->_error)
  {
    v16 = objc_opt_new();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v30 = selfCopy;
    underlyingErrors = [(NSError *)selfCopy->_error underlyingErrors];
    v18 = [underlyingErrors countByEnumeratingWithState:&v35 objects:v43 count:16];
    v31 = v5;
    v32 = v3;
    if (v18)
    {
      v19 = v18;
      v20 = *v36;
      do
      {
        v21 = 0;
        v22 = v16;
        do
        {
          if (*v36 != v20)
          {
            objc_enumerationMutation(underlyingErrors);
          }

          v23 = *(*(&v35 + 1) + 8 * v21);
          if ([v22 length])
          {
            [v22 appendString:{@", "}];
          }

          v34 = v22;
          code = [v23 code];
          domain = [v23 domain];
          NSAppendPrintF(&v34, "%d:%@", code, domain);
          v16 = v34;

          ++v21;
          v22 = v16;
        }

        while (v19 != v21);
        v19 = [underlyingErrors countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v19);
    }

    v41[0] = @"errCode";
    v26 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSError code](v30->_error, "code")}];
    v42[0] = v26;
    v41[1] = @"errDomain";
    domain2 = [(NSError *)v30->_error domain];
    v41[2] = @"underErr";
    v42[1] = domain2;
    v42[2] = v16;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:3];
    [v33 addEntriesFromDictionary:v28];

    v5 = v31;
    v3 = v32;
  }

  return v33;
}

- (int64_t)resultType
{
  if (!self->_error)
  {
    return 1;
  }

  if (self->_isPreflightError)
  {
    return 2;
  }

  return 0;
}

@end