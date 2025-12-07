@interface SCNScene(AVTExtensionMRR)
+ (void)avt_newSceneWithURL:()AVTExtensionMRR options:error:;
+ (void)avt_nodeNamed:()AVTExtensionMRR forSceneAtURL:options:error:;
+ (void)avt_rootNodeForSceneAtURL:()AVTExtensionMRR options:error:;
+ (void)avt_rootObjectForSceneAtURL:()AVTExtensionMRR options:error:;
- (void)avt_writeByArchivingRootNodeInsteadOfScene:()AVTExtensionMRR toURL:options:error:;
@end

@implementation SCNScene(AVTExtensionMRR)

+ (void)avt_rootObjectForSceneAtURL:()AVTExtensionMRR options:error:
{
  pathExtension = [a3 pathExtension];
  v6 = [pathExtension isEqualToString:?];
  v7 = [pathExtension isEqualToString:?];
  v8 = v7;
  if ((v6 & 1) != 0 || v7)
  {
    v11 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:? options:? error:?];
    if (v8)
    {
      [v11 scn_uncompressedDataUsingCompressionAlgorithm:?];
    }

    v12 = [objc_alloc(MEMORY[0x1E697A890]) initForReadingWithData:? secure:?];
    [v12 setDocumentURL:?];
    v13 = MEMORY[0x1E695DFD8];
    objc_opt_class();
    [v13 setWithObjects:{objc_opt_class(), 0}];
    v14 = [v12 decodeObjectOfClasses:? forKey:?];
    [v12 finishDecoding];

    return v14;
  }

  else
  {
    v9 = MEMORY[0x1E697A8C8];

    return [v9 sceneWithURL:? options:? error:?];
  }
}

+ (void)avt_newSceneWithURL:()AVTExtensionMRR options:error:
{
  v6 = objc_autoreleasePoolPush();
  v7 = [self avt_rootObjectForSceneAtURL:? options:? error:?];
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

+ (void)avt_rootNodeForSceneAtURL:()AVTExtensionMRR options:error:
{
  v6 = objc_autoreleasePoolPush();
  v7 = [self avt_rootObjectForSceneAtURL:? options:? error:?];
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

+ (void)avt_nodeNamed:()AVTExtensionMRR forSceneAtURL:options:error:
{
  v7 = objc_autoreleasePoolPush();
  rootNode = [self avt_rootObjectForSceneAtURL:? options:? error:?];
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
  v7 = a3;
  pathExtension = [a4 pathExtension];
  v10 = [pathExtension isEqualToString:?];
  v11 = [pathExtension isEqualToString:?];
  v12 = v11;
  if ((v10 & 1) != 0 || v11)
  {
    if (v7)
    {
      v16 = MEMORY[0x1E697A888];
      [self rootNode];
      v17 = [v16 archivedDataWithRootObject:? options:?];
      if (v12)
      {
        v17 = [v17 scn_compressedDataUsingCompressionAlgorithm:?];
      }

      return [v17 writeToURL:? options:? error:?];
    }

    else
    {

      return [self writeToURL:? options:? delegate:? progressHandler:?];
    }
  }

  else
  {
    v13 = [pathExtension isEqualToString:?];
    v14 = [pathExtension isEqualToString:?];
    if ((v13 & 1) != 0 || v14)
    {
      v19 = [MEMORY[0x1E69DF388] worldWithSceneKitScene:? options:?];
      AVTFixMaterialsContainingSceneKitShaderModifiersInVFXNodeHierarchy([v19 rootNode]);
      [objc_msgSend(v19 "rootNode")];
      [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
      if ([a5 count])
      {
        v20 = objc_alloc(MEMORY[0x1E695DF90]);
        [a5 count];
        v21 = [v20 initWithCapacity:?];
      }

      else
      {
        v21 = 0;
      }

      [a5 enumerateKeysAndObjectsUsingBlock:?];
      v15 = [v19 avt_writeByArchivingRootNodeInsteadOfScene:? toURL:? options:? error:?];
    }

    else
    {
      [self doesNotRecognizeSelector:?];
      return 0;
    }

    return v15;
  }
}

@end