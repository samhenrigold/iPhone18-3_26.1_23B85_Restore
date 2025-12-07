@interface SANPVideoLanguageOption(AFMediaRemoteUtilities)
+ (id)_languageOptionFromMediaRemoteRepresentation:()AFMediaRemoteUtilities;
@end

@implementation SANPVideoLanguageOption(AFMediaRemoteUtilities)

+ (id)_languageOptionFromMediaRemoteRepresentation:()AFMediaRemoteUtilities
{
  v37[10] = *MEMORY[0x1E69E9840];
  v3 = MRLanguageOptionCopyIdentifier();
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69C7928]);
    [v4 setIdentifier:v3];
    v5 = MRLanguageOptionCopyLanguageTag();
    [v4 setLanguageTag:v5];

    v6 = MRLanguageOptionCopyDisplayName();
    [v4 setDisplayName:v6];

    v7 = *MEMORY[0x1E69C80A8];
    v8 = *MEMORY[0x1E69B0BF0];
    v36[0] = *MEMORY[0x1E69B0BF8];
    v36[1] = v8;
    v9 = *MEMORY[0x1E69C80A0];
    v37[0] = v7;
    v37[1] = v9;
    v10 = *MEMORY[0x1E69C8078];
    v11 = *MEMORY[0x1E69B0C08];
    v36[2] = *MEMORY[0x1E69B0BC8];
    v36[3] = v11;
    v12 = *MEMORY[0x1E69C80B8];
    v37[2] = v10;
    v37[3] = v12;
    v13 = *MEMORY[0x1E69C8080];
    v14 = *MEMORY[0x1E69B0BE8];
    v36[4] = *MEMORY[0x1E69B0BD0];
    v36[5] = v14;
    v15 = *MEMORY[0x1E69C8098];
    v37[4] = v13;
    v37[5] = v15;
    v16 = *MEMORY[0x1E69C8088];
    v17 = *MEMORY[0x1E69B0C00];
    v36[6] = *MEMORY[0x1E69B0BD8];
    v36[7] = v17;
    v18 = *MEMORY[0x1E69C80B0];
    v37[6] = v16;
    v37[7] = v18;
    v19 = *MEMORY[0x1E69B0C10];
    v36[8] = *MEMORY[0x1E69B0BE0];
    v36[9] = v19;
    v20 = *MEMORY[0x1E69C80C0];
    v37[8] = *MEMORY[0x1E69C8090];
    v37[9] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:10];
    v22 = MRLanguageOptionCopyCharacteristics();
    v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v22, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v24 = v22;
    v25 = [v24 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v32;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v32 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [v21 objectForKey:{*(*(&v31 + 1) + 8 * i), v31}];
          if (v29)
          {
            [v23 addObject:v29];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v26);
    }

    [v4 setCharacteristics:v23];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end