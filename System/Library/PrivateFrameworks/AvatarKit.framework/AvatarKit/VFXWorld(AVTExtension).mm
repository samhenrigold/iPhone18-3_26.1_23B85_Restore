@interface VFXWorld(AVTExtension)
- (void)avt_fixQuirksOfNewUSDSchemaWithOptions:()AVTExtension handler:;
- (void)avt_removeDuplicateSkeletonRootWithHandler:()AVTExtension;
- (void)avt_removeFaceSetsExportedAsDummyNodesWithHandler:()AVTExtension;
- (void)avt_setInitialValuesExportedAsAnimationsWithWithOptions:()AVTExtension handler:;
@end

@implementation VFXWorld(AVTExtension)

- (void)avt_fixQuirksOfNewUSDSchemaWithOptions:()AVTExtension handler:
{
  v5 = a4;
  [self avt_setInitialValuesExportedAsAnimationsWithWithOptions:? handler:?];
  [self avt_removeDuplicateSkeletonRootWithHandler:?];
  [self avt_removeFaceSetsExportedAsDummyNodesWithHandler:?];
}

- (void)avt_setInitialValuesExportedAsAnimationsWithWithOptions:()AVTExtension handler:
{
  v6 = a4;
  rootNode = [self rootNode];
  v9 = MEMORY[0x1E69E9820];
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [rootNode enumerateHierarchyUsingBlock:{v9, 3221225472, __90__VFXWorld_AVTExtension__avt_setInitialValuesExportedAsAnimationsWithWithOptions_handler___block_invoke, &unk_1E7F4A048}];

  [MEMORY[0x1E69DF378] flush];
}

- (void)avt_removeDuplicateSkeletonRootWithHandler:()AVTExtension
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  selfCopy = self;
  rootNode = [self rootNode];
  v6 = [rootNode childNodeWithName:? recursively:?];

  if (v6)
  {
    obj = [v6 childNodes];
    v7 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (!v7)
    {
      goto LABEL_10;
    }

    v8 = v7;
    v9 = MEMORY[0];
    do
    {
      for (i = 0; i != v8; i = (i + 1))
      {
        if (MEMORY[0] != v9)
        {
          objc_enumerationMutation(obj);
        }

        name = [*(8 * i) name];
        v12 = [name hasPrefix:?];

        if (v12)
        {
LABEL_33:

          goto LABEL_34;
        }
      }

      v8 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v8);
LABEL_10:

    obj = [v6 childNodes];
    v13 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (!v13)
    {
      goto LABEL_33;
    }

    v14 = v13;
    v44 = v6;
    v15 = MEMORY[0];
    v42 = *(MEMORY[0x1E69E9B18] + 16);
    v43 = *MEMORY[0x1E69E9B18];
    v40 = *(MEMORY[0x1E69E9B18] + 48);
    v41 = *(MEMORY[0x1E69E9B18] + 32);
LABEL_12:
    v16 = 0;
    while (1)
    {
      if (MEMORY[0] != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(8 * v16);
      name2 = [v17 name];
      if (([name2 isEqualToString:?]& 1) != 0)
      {
        goto LABEL_21;
      }

      name3 = [v17 name];
      if ([name3 isEqualToString:?])
      {
        break;
      }

      name4 = [v17 name];
      v21 = [name4 isEqualToString:?];

      if ((v21 & 1) == 0)
      {
        name2 = avt_default_log(v22);
        if (os_log_type_enabled(name2, OS_LOG_TYPE_ERROR))
        {
          name5 = [v17 name];
          *buf = 136315394;
          v51 = "[rootJoint.name isEqualToString:AVT_SKINNER_ROOT_NAME] || [rootJoint.name isEqualToString:AVT_SKINNER_MEMOJI_FLATTENED_BODY_ROOT_NAME] || [rootJoint.name isEqualToString:AVT_SKINNER_MEMOJI_HIERARCHICAL_BODY_ROOT_NAME]";
          v52 = 2112;
          v53 = name5;
          _os_log_error_impl(&dword_1BB472000, name2, OS_LOG_TYPE_ERROR, "Error: Condition '%s' failed. Skeleton group has unknown root joint %@", buf, 0x16u);
        }

        goto LABEL_21;
      }

LABEL_22:
      childNodes = [v17 childNodes];
      firstObject = [childNodes firstObject];

      name6 = [v17 name];
      name7 = [firstObject name];
      v27 = [name6 isEqualToString:?];

      if (v27)
      {
        transform = [v17 transform];
        if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v29, v43), vceqq_f32(v30, v42)), vandq_s8(vceqq_f32(v31, v41), vceqq_f32(v32, v40)))) & 0x80000000) == 0)
        {
          v33 = avt_default_log(transform);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            [(VFXWorld(AVTExtension) *)v48 avt_removeDuplicateSkeletonRootWithHandler:v33];
          }
        }

        if (v4)
        {
          v34 = MEMORY[0x1E696AEC0];
          name8 = [v17 name];
          childNodes2 = [firstObject childNodes];
          v37 = [v34 stringWithFormat:name8, objc_msgSend(childNodes2, "count")];
          v4[2](v4, v37);
        }

        [v17 removeFromParentNode];
        [firstObject removeFromParentNode];
        [v44 addChildNode:?];
        rootNode2 = [selfCopy rootNode];
        v47 = firstObject;
        [rootNode2 enumerateHierarchyUsingBlock:?];
      }

      if (v14 == ++v16)
      {
        v14 = [obj countByEnumeratingWithState:? objects:? count:?];
        if (!v14)
        {
          v6 = v44;
          goto LABEL_33;
        }

        goto LABEL_12;
      }
    }

LABEL_21:
    goto LABEL_22;
  }

LABEL_34:
}

- (void)avt_removeFaceSetsExportedAsDummyNodesWithHandler:()AVTExtension
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  rootNode = [self rootNode];
  v18 = v5;
  [rootNode enumerateHierarchyUsingBlock:?];

  obj = v18;
  v7 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0];
    do
    {
      for (i = 0; i != v8; i = (i + 1))
      {
        if (MEMORY[0] != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(8 * i);
        if (v4)
        {
          v12 = MEMORY[0x1E696AEC0];
          name = [*(8 * i) name];
          parentNode = [v11 parentNode];
          name2 = [parentNode name];
          v16 = [v12 stringWithFormat:name, name2];
          v4[2](v4, v16);
        }

        [v11 removeFromParentNode];
      }

      v8 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v8);
  }
}

- (void)avt_removeDuplicateSkeletonRootWithHandler:()AVTExtension .cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "simd_equal(rootJoint.transform, matrix_identity_float4x4)";
  _os_log_error_impl(&dword_1BB472000, log, OS_LOG_TYPE_ERROR, "Error: Condition '%s' failed. Root joint shouldn't have any transform", buf, 0xCu);
}

@end