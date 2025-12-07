@interface SCNScene
@end

@implementation SCNScene

void *__92__SCNScene_AVTExtensionMRR__avt_writeByArchivingRootNodeInsteadOfScene_toURL_options_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 model];
  [v2 setIdentifier:?];
  [objc_msgSend(v2 "mesh")];
  v3 = [v2 materials];
  result = [v3 countByEnumeratingWithState:? objects:? count:?];
  if (result)
  {
    v5 = result;
    v6 = MEMORY[0];
    do
    {
      v7 = 0;
      do
      {
        if (MEMORY[0] != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(8 * v7) setIdentifier:?];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:? objects:? count:?];
      v5 = result;
    }

    while (result);
  }

  return result;
}

void *__92__SCNScene_AVTExtensionMRR__avt_writeByArchivingRootNodeInsteadOfScene_toURL_options_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) objectForKeyedSubscript:?])
  {
    v4 = *(a1 + 40);

    return [v4 setObject:? forKeyedSubscript:?];
  }

  else
  {
    v6 = *(a1 + 48);

    return [v6 doesNotRecognizeSelector:?];
  }
}

void __90__SCNScene_AVTExtension__avt_setInitialValuesExportedAsAnimationsWithWithOptions_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 animationKeys];
  v5 = [v4 countByEnumeratingWithState:0 objects:? count:?];
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0];
    do
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (MEMORY[0] != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v3 animationPlayerForKey:?];
        v10 = [v9 animation];
        v11 = [v10 caAnimation];

        v12 = AVTSetInitialValuesExportedAsAnimations(v3, v11, *(a1 + 40), *(a1 + 32));
        if (v12 != v11)
        {
          [v3 removeAnimationForKey:?];
          if (v12)
          {
            [v3 addAnimation:? forKey:?];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v6);
  }
}

void __69__SCNScene_AVTExtension__avt_removeDuplicateSkeletonRootWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 skinner];
  v4 = [v3 skeleton];
  v5 = *(a1 + 32);

  if (v4 == v5)
  {
    [v3 setSkeleton:?];
    v6 = [v3 bones];
    v7 = [v6 containsObject:?];

    if (v7)
    {
      v9 = avt_default_log(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __69__SCNScene_AVTExtension__avt_removeDuplicateSkeletonRootWithHandler___block_invoke_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
      }
    }
  }
}

void __76__SCNScene_AVTExtension__avt_removeFaceSetsExportedAsDummyNodesWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 name];
  v4 = [v3 containsString:?];

  if (v4)
  {
    [*(a1 + 32) addObject:?];
  }
}

void __69__SCNScene_AVTExtension__avt_removeDuplicateSkeletonRootWithHandler___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[skinner.bones containsObject:rootJoint] == NO";
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Root joint shouldn't never be bound", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end