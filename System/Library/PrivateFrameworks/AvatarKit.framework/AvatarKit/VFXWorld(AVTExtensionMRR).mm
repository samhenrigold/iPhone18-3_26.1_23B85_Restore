@interface VFXWorld(AVTExtensionMRR)
+ (void)avt_newWorldWithURL:()AVTExtensionMRR options:error:;
+ (void)avt_nodeNamed:()AVTExtensionMRR forWorldAtURL:options:error:;
+ (void)avt_rootNodeForWorldAtURL:()AVTExtensionMRR options:error:;
+ (void)avt_rootObjectForWorldAtURL:()AVTExtensionMRR options:error:;
- (void)avt_init;
- (void)avt_writeByArchivingRootNodeInsteadOfScene:()AVTExtensionMRR toURL:options:error:;
@end

@implementation VFXWorld(AVTExtensionMRR)

- (void)avt_init
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69DF3E0];
  v4 = MEMORY[0x1E695E118];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
  return [self initWithOptions:?];
}

+ (void)avt_rootObjectForWorldAtURL:()AVTExtensionMRR options:error:
{
  pathExtension = [a3 pathExtension];
  v7 = [pathExtension isEqualToString:?];
  v8 = [pathExtension isEqualToString:?];
  v9 = v8;
  if ((v7 & 1) != 0 || v8)
  {
    v14 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:? options:? error:?];
    if (v9)
    {
      [v14 vfx_uncompressedDataUsingCompressionAlgorithm:?];
    }

    v15 = [objc_alloc(MEMORY[0x1E69DF2F0]) initForReadingWithData:? secure:?];
    [v15 setDocumentURL:?];
    v16 = MEMORY[0x1E695DFD8];
    objc_opt_class();
    [v16 setWithObjects:{objc_opt_class(), 0}];
    v17 = [v15 decodeObjectOfClasses:? forKey:?];
    [v15 finishDecoding];

    return v17;
  }

  else
  {
    v10 = [pathExtension isEqualToString:?];
    v11 = [pathExtension isEqualToString:?];
    if (v10 & 1) != 0 || (v11)
    {
      return 0;
    }

    else
    {
      _AVTUpgradeVFXWorldOptions(a4);
      v12 = MEMORY[0x1E69DF388];

      return [v12 worldWithURL:? options:? error:?];
    }
  }
}

+ (void)avt_newWorldWithURL:()AVTExtensionMRR options:error:
{
  v6 = objc_autoreleasePoolPush();
  v7 = [self avt_rootObjectForWorldAtURL:? options:? error:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = objc_alloc_init(self);
      rootNode = [v8 rootNode];
      childNodes = [v7 childNodes];
      v11 = [childNodes countByEnumeratingWithState:0 objects:? count:?];
      if (v11)
      {
        v12 = v11;
        v13 = MEMORY[0];
        do
        {
          for (i = 0; i != v12; i = (i + 1))
          {
            if (MEMORY[0] != v13)
            {
              objc_enumerationMutation(childNodes);
            }

            [*(8 * i) removeFromParentNode];
            [rootNode addChildNode:?];
          }

          v12 = [childNodes countByEnumeratingWithState:? objects:? count:?];
        }

        while (v12);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  objc_autoreleasePoolPop(v6);
  return v8;
}

+ (void)avt_rootNodeForWorldAtURL:()AVTExtensionMRR options:error:
{
  v6 = objc_autoreleasePoolPush();
  v7 = [self avt_rootObjectForWorldAtURL:? options:? error:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    rootNode = [v7 rootNode];
    v9 = rootNode;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      rootNode = v7;
    }

    else
    {
      rootNode = 0;
    }
  }

  objc_autoreleasePoolPop(v6);

  return rootNode;
}

+ (void)avt_nodeNamed:()AVTExtensionMRR forWorldAtURL:options:error:
{
  v7 = objc_autoreleasePoolPush();
  rootNode = [self avt_rootObjectForWorldAtURL:? options:? error:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    rootNode = [rootNode rootNode];
LABEL_4:
    v9 = [rootNode childNodeWithName:? recursively:?];
    v10 = v9;
    [v9 removeFromParentNode];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_4;
  }

  v9 = 0;
LABEL_6:
  objc_autoreleasePoolPop(v7);

  return v9;
}

- (void)avt_writeByArchivingRootNodeInsteadOfScene:()AVTExtensionMRR toURL:options:error:
{
  pathExtension = [a4 pathExtension];
  v9 = [pathExtension isEqualToString:?];
  v10 = [pathExtension isEqualToString:?];
  if (a3 && (v11 = v10, ((v9 | v10) & 1) != 0))
  {
    v12 = MEMORY[0x1E69DF2E8];
    [self rootNode];
    v13 = [v12 archivedDataWithRootObject:? options:?];
    if (v11)
    {
      v13 = [v13 vfx_compressedDataUsingCompressionAlgorithm:?];
    }

    return [v13 writeToURL:? options:? error:?];
  }

  else
  {

    return [self writeToURL:? options:? progressHandler:?];
  }
}

@end