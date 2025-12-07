@interface AVTPhysicalizedSkeletonDynamic
+ (void)enumerateDynamicsInHierarchy:(void *)hierarchy forAvatar:(void *)avatar usingBlock:;
- (NSString)description;
- (void)evaluateAtTime:(double)time physicsController:(id)controller;
- (void)resetTarget;
@end

@implementation AVTPhysicalizedSkeletonDynamic

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  rootJoint = self->_rootJoint;
  name = [(VFXNode *)self->_drivingNode name];
  v7 = [v3 stringWithFormat:v4, self, rootJoint, name];

  return v7;
}

+ (void)enumerateDynamicsInHierarchy:(void *)hierarchy forAvatar:(void *)avatar usingBlock:
{
  avatarCopy = avatar;
  hierarchyCopy = hierarchy;
  objc_opt_self();
  avatarNode = [hierarchyCopy avatarNode];
  v8 = [avatarNode childNodeWithName:? recursively:?];
  specializationSettings = [hierarchyCopy specializationSettings];

  v10 = [specializationSettings objectForKeyedSubscript:?];
  v11 = [v10 objectForKeyedSubscript:?];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __84__AVTPhysicalizedSkeletonDynamic_enumerateDynamicsInHierarchy_forAvatar_usingBlock___block_invoke;
  v18 = &unk_1E7F47DE0;
  v19 = avatarNode;
  v20 = v8;
  v21 = avatarCopy;
  v12 = avatarCopy;
  v13 = v8;
  v14 = avatarNode;
  [v11 enumerateKeysAndObjectsUsingBlock:?];
}

void __84__AVTPhysicalizedSkeletonDynamic_enumerateDynamicsInHierarchy_forAvatar_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v74 = *MEMORY[0x1E69E9840];
  v66 = a2;
  v62 = a3;
  v64 = [v62 objectForKeyedSubscript:?];
  v5 = v64;
  if (v64)
  {
    obj = [*(a1 + 32) childNodeWithName:? recursively:?];
    if (!obj)
    {
      v20 = avt_default_log(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v69) = 138412290;
        *(&v69 + 4) = v66;
        _os_log_impl(&dword_1BB472000, v20, OS_LOG_TYPE_DEFAULT, "Failed to find physicalized skeleton driving node named '%@'", &v69, 0xCu);
      }

      goto LABEL_44;
    }

    v60 = [v64 objectForKeyedSubscript:?];
    v6 = [*(a1 + 32) childNodeWithName:? recursively:?];
    v61 = v6;
    if (!v6)
    {
      v21 = avt_default_log(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v69) = 138412290;
        *(&v69 + 4) = v60;
        _os_log_impl(&dword_1BB472000, v21, OS_LOG_TYPE_DEFAULT, "Failed to find joint hierarchy for physicalized skeleton root joint named '%@'", &v69, 0xCu);
      }

      goto LABEL_43;
    }

    *&v69 = 0;
    *(&v69 + 1) = &v69;
    v70 = 0x3032000000;
    v71 = __Block_byref_object_copy__0;
    v72 = __Block_byref_object_dispose__0;
    v73 = 0;
    [v6 enumerateHierarchyUsingBlock:?];
    v7 = [v64 objectForKeyedSubscript:?];
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      v9 = MEMORY[0];
      do
      {
        for (i = 0; i != v8; i = (i + 1))
        {
          if (MEMORY[0] != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [*(a1 + 32) childNodeWithName:? recursively:?];
          if (v11)
          {
            v12 = *(*(&v69 + 1) + 40);
            if (!v12)
            {
              v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v14 = *(*(&v69 + 1) + 40);
              *(*(&v69 + 1) + 40) = v13;

              v12 = *(*(&v69 + 1) + 40);
            }

            [v12 addObject:?];
          }

          else
          {
            v15 = avt_default_log(0);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v68 = v66;
              _os_log_impl(&dword_1BB472000, v15, OS_LOG_TYPE_DEFAULT, "Failed to find physicalized skeleton target named '%@'", buf, 0xCu);
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v8);
    }

    if (![*(*(&v69 + 1) + 40) count])
    {
      v17 = avt_default_log(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v68 = v60;
        _os_log_impl(&dword_1BB472000, v17, OS_LOG_TYPE_DEFAULT, "Failed to find any target node for physicalized skeleton root joint named '%@'", buf, 0xCu);
      }

      goto LABEL_42;
    }

    v16 = [v62 objectForKeyedSubscript:?];
    v17 = v16;
    if (v16)
    {
      [v16 floatValue];
      v19 = v18;
    }

    else
    {
      v19 = 0.5;
    }

    v22 = objc_opt_new();
    *(v22 + 8) = v19;
    objc_storeStrong((v22 + 16), *(a1 + 40));
    objc_storeStrong((v22 + 24), obj);
    objc_storeStrong((v22 + 32), v61);
    v23 = [*(*(&v69 + 1) + 40) copy];
    v24 = *(v22 + 40);
    *(v22 + 40) = v23;

    *(v22 + 48) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 80) = 0u;
    v25 = [v64 objectForKeyedSubscript:?];
    v65 = [v64 objectForKeyedSubscript:?];
    v26 = [v64 objectForKeyedSubscript:?];
    v27 = v25;
    if (v25)
    {
      v28 = [v25 objectAtIndexedSubscript:?];
      [v28 floatValue];
      v57 = v29;
      v30 = [v25 objectAtIndexedSubscript:?];
      [v30 floatValue];
      v54 = v31;
      v32 = [v25 objectAtIndexedSubscript:?];
      [v32 floatValue];
      v33 = v57;
      DWORD1(v33) = v54;
      DWORD2(v33) = v34;
      *(v22 + 48) = v33;
    }

    if (v65)
    {
      v35 = [v65 objectAtIndexedSubscript:?];
      [v35 floatValue];
      v58 = v36;
      v37 = [v65 objectAtIndexedSubscript:?];
      [v37 floatValue];
      v55 = v38;
      v39 = [v65 objectAtIndexedSubscript:?];
      [v39 floatValue];
      v40 = v58;
      DWORD1(v40) = v55;
      DWORD2(v40) = v41;
      *(v22 + 64) = v40;
    }

    if (v26)
    {
      v42 = [v26 objectAtIndexedSubscript:?];
      [v42 floatValue];
      v59 = v43;
      v44 = [v26 objectAtIndexedSubscript:?];
      [v44 floatValue];
      v56 = v45;
      v46 = [v26 objectAtIndexedSubscript:?];
      [v46 floatValue];
      v47 = v59;
      DWORD1(v47) = v56;
      DWORD2(v47) = v48;
      *(v22 + 80) = v47;
    }

    v49 = [obj name];
    v50 = [v49 hasPrefix:?];

    if (v50)
    {
      v51 = 1;
    }

    else
    {
      v52 = [obj name];
      v53 = [v52 hasPrefix:?];

      if (!v53)
      {
        *(v22 + 96) = 0;
        goto LABEL_41;
      }

      v51 = 2;
    }

    *(v22 + 96) = v51;
LABEL_41:
    (*(*(a1 + 48) + 16))();

LABEL_42:
    _Block_object_dispose(&v69, 8);

LABEL_43:
    v20 = v60;
LABEL_44:

    v5 = v64;
  }
}

void __84__AVTPhysicalizedSkeletonDynamic_enumerateDynamicsInHierarchy_forAvatar_usingBlock___block_invoke_103(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 name];
  v4 = [v3 containsString:?];

  if (v4)
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v5 addObject:?];
  }
}

- (void)evaluateAtTime:(double)time physicsController:(id)controller
{
  [controller offsetFromRestingPositionForNode:? inCoordinateSpaceOfNode:?];
  v11 = v5;
  v6 = self->_targetNodes;
  v7 = [NSArray countByEnumeratingWithState:v6 objects:"countByEnumeratingWithState:objects:count:" count:?];
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
          objc_enumerationMutation(v6);
        }

        [*(8 * i) setEulerAngles:v11];
      }

      v8 = [NSArray countByEnumeratingWithState:v6 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v8);
  }
}

- (void)resetTarget
{
  v2 = self->_targetNodes;
  v3 = [NSArray countByEnumeratingWithState:v2 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v3)
  {
    v4 = v3;
    v5 = MEMORY[0];
    do
    {
      for (i = 0; i != v4; i = (i + 1))
      {
        if (MEMORY[0] != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(8 * i) setEulerAngles:?];
      }

      v4 = [NSArray countByEnumeratingWithState:v2 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v4);
  }
}

@end