@interface NSString(DSAdditions)
+ (BOOL)ds_fileNameHasClaimedFileExtension:()DSAdditions;
+ (id)ds_commonParentPathForItemURLs:()DSAdditions;
@end

@implementation NSString(DSAdditions)

+ (id)ds_commonParentPathForItemURLs:()DSAdditions
{
  v39 = *MEMORY[0x1E69E9840];
  v19 = a3;
  if ([v19 count])
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__0;
    v36 = __Block_byref_object_dispose__0;
    firstObject = [v19 firstObject];
    uRLByDeletingLastPathComponent = [firstObject URLByDeletingLastPathComponent];
    pathComponents = [uRLByDeletingLastPathComponent pathComponents];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = [v19 subarrayWithRange:{1, objc_msgSend(v19, "count") - 1}];
    v6 = [v5 countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v6)
    {
      v7 = *v29;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v29 != v7)
          {
            objc_enumerationMutation(v5);
          }

          pathComponents2 = [*(*(&v28 + 1) + 8 * i) pathComponents];
          v24 = 0;
          v25 = &v24;
          v26 = 0x2020000000;
          v27 = 0;
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __56__NSString_DSAdditions__ds_commonParentPathForItemURLs___block_invoke;
          v20[3] = &unk_1E877F210;
          v22 = &v32;
          v23 = &v24;
          v10 = pathComponents2;
          v21 = v10;
          [v10 enumerateObjectsUsingBlock:v20];
          if ((v25[3] & 1) == 0)
          {
            if ([v10 count])
            {
              v11 = [v10 subarrayWithRange:{0, objc_msgSend(v10, "count") - 1}];
              v12 = v33[5];
              v33[5] = v11;
            }

            else
            {
              v13 = v5;
              v14 = v33;
              v15 = v10;
              v12 = v14[5];
              v14[5] = v15;
              v5 = v13;
            }
          }

          _Block_object_dispose(&v24, 8);
        }

        v6 = [v5 countByEnumeratingWithState:&v28 objects:v38 count:16];
      }

      while (v6);
    }

    v16 = [MEMORY[0x1E696AEC0] pathWithComponents:v33[5]];
    if (([v16 hasSuffix:@"/"] & 1) == 0)
    {
      v17 = [v16 stringByAppendingString:@"/"];

      v16 = v17;
    }

    _Block_object_dispose(&v32, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (BOOL)ds_fileNameHasClaimedFileExtension:()DSAdditions
{
  v3 = a3;
  pathExtension = [v3 pathExtension];
  if ([pathExtension length])
  {
    v5 = MEMORY[0x1E6982C40];
    pathExtension2 = [v3 pathExtension];
    v7 = [v5 typeWithFilenameExtension:pathExtension2 conformingToType:*MEMORY[0x1E6982E48]];

    if ([v7 isDeclared])
    {
      v8 = 1;
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x1E6963630]);
      identifier = [v7 identifier];
      v11 = [v9 initWithTypeIdentifier:identifier error:0];

      bundleRecord = [v11 bundleRecord];
      executableURL = [bundleRecord executableURL];

      v8 = executableURL != 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end