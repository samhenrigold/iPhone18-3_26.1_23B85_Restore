@interface NSString(UTAdditions)
- (id)stringByAppendingPathComponent:()UTAdditions conformingToType:;
- (id)stringByAppendingPathExtensionForType:()UTAdditions;
@end

@implementation NSString(UTAdditions)

- (id)stringByAppendingPathComponent:()UTAdditions conformingToType:
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UTAdditions.mm" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"partialName != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UTAdditions.mm" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"contentType != nil"}];

LABEL_3:
  v10 = [v7 stringByAppendingPathExtensionForType:v9];
  v11 = [self stringByAppendingPathComponent:v10];

  return v11;
}

- (id)stringByAppendingPathExtensionForType:()UTAdditions
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UTAdditions.mm" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"contentType != nil"}];
  }

  v6 = objc_autoreleasePoolPush();
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  range = xmmword_1AC1BBD70;
  _CFGetPathExtensionRangesFromPathComponent();
  v7 = v17[5];
  if (!v7)
  {
    preferredFilenameExtension = [v5 preferredFilenameExtension];
    v9 = v17[5];
    v17[5] = preferredFilenameExtension;

    v7 = v17[5];
    if ((v5 & 0x8000000000000000) == 0 && !v7)
    {
      _typeRecord = [v5 _typeRecord];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __63__NSString_UTAdditions__stringByAppendingPathExtensionForType___block_invoke;
      v14[3] = &unk_1E796F018;
      v14[4] = &v16;
      [_typeRecord enumeratePedigreeWithBlock:v14];

      v7 = v17[5];
    }

    if (!v7)
    {
      goto LABEL_9;
    }
  }

  if (([v7 isEqual:0] & 1) == 0)
  {
    v11 = [(__CFString *)self stringByAppendingPathExtension:v17[5]];
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  _Block_object_dispose(&v16, 8);
  objc_autoreleasePoolPop(v6);
  if (!v11)
  {
    v11 = [(__CFString *)self copy];
  }

  return v11;
}

@end