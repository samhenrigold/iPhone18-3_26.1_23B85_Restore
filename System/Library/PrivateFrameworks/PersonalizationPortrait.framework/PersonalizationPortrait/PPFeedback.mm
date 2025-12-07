@interface PPFeedback
- (PPFeedback)initWithExplicitlyEngagedString:(id)string;
- (PPFeedback)initWithExplicitlyEngagedStrings:(id)strings explicitlyRejectedStrings:(id)rejectedStrings implicitlyEngagedStrings:(id)engagedStrings implicitlyRejectedStrings:(id)implicitlyRejectedStrings offeredStrings:(id)offeredStrings;
- (PPFeedback)initWithExplicitlyRejectedString:(id)string;
- (PPFeedback)initWithImplicitlyEngagedString:(id)string;
- (PPFeedback)initWithImplicitlyRejectedString:(id)string;
- (PPFeedback)initWithOfferedString:(id)string;
@end

@implementation PPFeedback

- (PPFeedback)initWithExplicitlyEngagedStrings:(id)strings explicitlyRejectedStrings:(id)rejectedStrings implicitlyEngagedStrings:(id)engagedStrings implicitlyRejectedStrings:(id)implicitlyRejectedStrings offeredStrings:(id)offeredStrings
{
  v78 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  rejectedStringsCopy = rejectedStrings;
  engagedStringsCopy = engagedStrings;
  implicitlyRejectedStringsCopy = implicitlyRejectedStrings;
  offeredStringsCopy = offeredStrings;
  v15 = objc_opt_new();
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v16 = stringsCopy;
  v17 = [v16 countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v70;
    do
    {
      v20 = 0;
      do
      {
        if (*v70 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [[PPFeedbackItem alloc] initWithItemString:*(*(&v69 + 1) + 8 * v20) itemFeedbackType:1];
        [v15 addObject:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v69 objects:v77 count:16];
    }

    while (v18);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v22 = rejectedStringsCopy;
  v23 = [v22 countByEnumeratingWithState:&v65 objects:v76 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v66;
    do
    {
      v26 = 0;
      do
      {
        if (*v66 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [[PPFeedbackItem alloc] initWithItemString:*(*(&v65 + 1) + 8 * v26) itemFeedbackType:3];
        [v15 addObject:v27];

        ++v26;
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v65 objects:v76 count:16];
    }

    while (v24);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v28 = engagedStringsCopy;
  v29 = [v28 countByEnumeratingWithState:&v61 objects:v75 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v62;
    do
    {
      v32 = 0;
      do
      {
        if (*v62 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [[PPFeedbackItem alloc] initWithItemString:*(*(&v61 + 1) + 8 * v32) itemFeedbackType:2];
        [v15 addObject:v33];

        ++v32;
      }

      while (v30 != v32);
      v30 = [v28 countByEnumeratingWithState:&v61 objects:v75 count:16];
    }

    while (v30);
  }

  v50 = v16;

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v34 = implicitlyRejectedStringsCopy;
  v35 = [v34 countByEnumeratingWithState:&v57 objects:v74 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v58;
    do
    {
      v38 = 0;
      do
      {
        if (*v58 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = [[PPFeedbackItem alloc] initWithItemString:*(*(&v57 + 1) + 8 * v38) itemFeedbackType:4];
        [v15 addObject:v39];

        ++v38;
      }

      while (v36 != v38);
      v36 = [v34 countByEnumeratingWithState:&v57 objects:v74 count:16];
    }

    while (v36);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v40 = offeredStringsCopy;
  v41 = [v40 countByEnumeratingWithState:&v53 objects:v73 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v54;
    do
    {
      v44 = 0;
      do
      {
        if (*v54 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = [[PPFeedbackItem alloc] initWithItemString:*(*(&v53 + 1) + 8 * v44) itemFeedbackType:5];
        [v15 addObject:v45];

        ++v44;
      }

      while (v42 != v44);
      v42 = [v40 countByEnumeratingWithState:&v53 objects:v73 count:16];
    }

    while (v42);
  }

  v46 = [v15 copy];
  v52.receiver = self;
  v52.super_class = PPFeedback;
  v47 = [(PPBaseFeedback *)&v52 initWithFeedbackItems:v46 mappingId:0];

  return v47;
}

- (PPFeedback)initWithOfferedString:(id)string
{
  v10 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v4 = MEMORY[0x1E695DEC8];
  stringCopy2 = string;
  v6 = [v4 arrayWithObjects:&stringCopy count:1];

  v7 = [(PPFeedback *)self initWithExplicitlyEngagedStrings:0 explicitlyRejectedStrings:0 implicitlyEngagedStrings:0 implicitlyRejectedStrings:0 offeredStrings:v6, stringCopy, v10];
  return v7;
}

- (PPFeedback)initWithImplicitlyRejectedString:(id)string
{
  v10 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v4 = MEMORY[0x1E695DEC8];
  stringCopy2 = string;
  v6 = [v4 arrayWithObjects:&stringCopy count:1];

  v7 = [(PPFeedback *)self initWithExplicitlyEngagedStrings:0 explicitlyRejectedStrings:0 implicitlyEngagedStrings:0 implicitlyRejectedStrings:v6 offeredStrings:0, stringCopy, v10];
  return v7;
}

- (PPFeedback)initWithImplicitlyEngagedString:(id)string
{
  v10 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v4 = MEMORY[0x1E695DEC8];
  stringCopy2 = string;
  v6 = [v4 arrayWithObjects:&stringCopy count:1];

  v7 = [(PPFeedback *)self initWithExplicitlyEngagedStrings:0 explicitlyRejectedStrings:0 implicitlyEngagedStrings:v6 implicitlyRejectedStrings:0 offeredStrings:0, stringCopy, v10];
  return v7;
}

- (PPFeedback)initWithExplicitlyRejectedString:(id)string
{
  v10 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v4 = MEMORY[0x1E695DEC8];
  stringCopy2 = string;
  v6 = [v4 arrayWithObjects:&stringCopy count:1];

  v7 = [(PPFeedback *)self initWithExplicitlyEngagedStrings:0 explicitlyRejectedStrings:v6 implicitlyEngagedStrings:0 implicitlyRejectedStrings:0 offeredStrings:0, stringCopy, v10];
  return v7;
}

- (PPFeedback)initWithExplicitlyEngagedString:(id)string
{
  v10 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v4 = MEMORY[0x1E695DEC8];
  stringCopy2 = string;
  v6 = [v4 arrayWithObjects:&stringCopy count:1];

  v7 = [(PPFeedback *)self initWithExplicitlyEngagedStrings:v6 explicitlyRejectedStrings:0 implicitlyEngagedStrings:0 implicitlyRejectedStrings:0 offeredStrings:0, stringCopy, v10];
  return v7;
}

@end