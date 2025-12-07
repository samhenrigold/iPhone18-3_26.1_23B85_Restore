@interface CHRecognitionResult(TIAdditions)
- (id)mecabraHandwritingCandidate;
@end

@implementation CHRecognitionResult(TIAdditions)

- (id)mecabraHandwritingCandidate
{
  v40 = *MEMORY[0x277D85DE8];
  wordIDs = [self wordIDs];
  v3 = [wordIDs count];

  if (v3 && ([self wordRanges], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v3 == v5))
  {
    v27[1] = v27;
    MEMORY[0x28223BE20]();
    v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    wordIDs2 = [self wordIDs];
    v9 = [wordIDs2 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v35;
      do
      {
        v13 = 0;
        v14 = v11;
        do
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(wordIDs2);
          }

          v11 = v14 + 1;
          *&v7[4 * v14++] = [*(*(&v34 + 1) + 8 * v13++) unsignedIntValue];
        }

        while (v10 != v13);
        v10 = [wordIDs2 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v10);
    }

    MEMORY[0x28223BE20]();
    selfCopy = self;
    v29 = &v27[-2 * v3];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    wordRanges = [self wordRanges];
    v16 = [wordRanges countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v31;
      v20 = v29 + 1;
      do
      {
        v21 = 0;
        v22 = &v20[2 * v18];
        v18 += v17;
        do
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(wordRanges);
          }

          *(v22 - 1) = [*(*(&v30 + 1) + 8 * v21) rangeValue];
          *v22 = v23;
          ++v21;
          v22 += 2;
        }

        while (v17 != v21);
        v17 = [wordRanges countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v17);
    }

    string = [selfCopy string];
    v25 = MecabraCreateHandwritingCandidate();
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

@end