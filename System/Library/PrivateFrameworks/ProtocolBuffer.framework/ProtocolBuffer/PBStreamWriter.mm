@interface PBStreamWriter
+ (id)writeProtoBuffers:(id)buffers toFile:(id)file;
@end

@implementation PBStreamWriter

+ (id)writeProtoBuffers:(id)buffers toFile:(id)file
{
  v32 = *MEMORY[0x1E69E9840];
  buffersCopy = buffers;
  fileCopy = file;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([buffersCopy count])
  {
    v23 = defaultManager;
    v24 = fileCopy;
    context = objc_autoreleasePoolPush();
    v8 = objc_alloc_init(PBDataWriter);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = buffersCopy;
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          v16 = objc_alloc_init(PBDataWriter);
          [v14 writeTo:{v16, context}];
          immutableData = [(PBDataWriter *)v16 immutableData];
          [(PBDataWriter *)v8 writeProtoBuffer:immutableData];

          objc_autoreleasePoolPop(v15);
        }

        v11 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v11);
    }

    immutableData2 = [(PBDataWriter *)v8 immutableData];
    v25 = 0;
    fileCopy = v24;
    [immutableData2 writeToFile:v24 options:0 error:&v25];
    v19 = v25;

    objc_autoreleasePoolPop(context);
    defaultManager = v23;
    if (v19)
    {
      [v23 removeItemAtPath:v24 error:0];
    }
  }

  else
  {
    v30 = 0;
    [defaultManager removeItemAtPath:fileCopy error:&v30];
    v19 = v30;
  }

  v20 = v19;

  return v19;
}

@end