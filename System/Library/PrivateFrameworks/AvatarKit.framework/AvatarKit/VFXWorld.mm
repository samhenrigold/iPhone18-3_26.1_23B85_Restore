@interface VFXWorld
@end

@implementation VFXWorld

void __90__VFXWorld_AVTExtension__avt_setInitialValuesExportedAsAnimationsWithWithOptions_handler___block_invoke(uint64_t a1, void *a2)
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

void __69__VFXWorld_AVTExtension__avt_removeDuplicateSkeletonRootWithHandler___block_invoke(uint64_t a1, void *a2)
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
        __69__VFXWorld_AVTExtension__avt_removeDuplicateSkeletonRootWithHandler___block_invoke_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
      }
    }
  }
}

void __76__VFXWorld_AVTExtension__avt_removeFaceSetsExportedAsDummyNodesWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 name];
  v4 = [v3 containsString:?];

  if (v4)
  {
    [*(a1 + 32) addObject:?];
  }
}

void __69__VFXWorld_AVTExtension__avt_removeDuplicateSkeletonRootWithHandler___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[skinner.bones containsObject:rootJoint] == NO";
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Root joint shouldn't never be bound", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end