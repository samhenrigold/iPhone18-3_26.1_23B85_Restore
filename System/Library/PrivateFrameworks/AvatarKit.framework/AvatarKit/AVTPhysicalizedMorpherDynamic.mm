@interface AVTPhysicalizedMorpherDynamic
+ (void)enumerateDynamicsInHierarchy:(void *)hierarchy forAvatar:(void *)avatar ignoredUpperNodes:(void *)nodes usingBlock:;
- (BOOL)affectsNode:(id)node;
- (NSString)description;
- (void)evaluateAtTime:(double)time physicsController:(id)controller;
- (void)resetTarget;
@end

@implementation AVTPhysicalizedMorpherDynamic

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  writeMorpher = self->_writeMorpher;
  name = [(VFXNode *)self->_drivingNode name];
  v7 = [v3 stringWithFormat:v4, self, writeMorpher, name];

  return v7;
}

+ (void)enumerateDynamicsInHierarchy:(void *)hierarchy forAvatar:(void *)avatar ignoredUpperNodes:(void *)nodes usingBlock:
{
  hierarchyCopy = hierarchy;
  avatarCopy = avatar;
  nodesCopy = nodes;
  v11 = a2;
  objc_opt_self();
  avatarNode = [hierarchyCopy avatarNode];
  v13 = [avatarNode childNodeWithName:? recursively:?];
  specializationSettings = [hierarchyCopy specializationSettings];
  v15 = [specializationSettings objectForKeyedSubscript:?];
  v16 = [v15 objectForKeyedSubscript:?];
  v23 = MEMORY[0x1E69E9820];
  v24 = avatarCopy;
  v25 = avatarNode;
  v26 = v16;
  v27 = v13;
  v28 = hierarchyCopy;
  v29 = nodesCopy;
  v17 = nodesCopy;
  v18 = hierarchyCopy;
  v19 = v13;
  v20 = v16;
  v21 = avatarNode;
  v22 = avatarCopy;
  [v11 enumerateHierarchyUsingBlock:{v23, 3221225472, __101__AVTPhysicalizedMorpherDynamic_enumerateDynamicsInHierarchy_forAvatar_ignoredUpperNodes_usingBlock___block_invoke, &unk_1E7F47D90}];
}

void __101__AVTPhysicalizedMorpherDynamic_enumerateDynamicsInHierarchy_forAvatar_ignoredUpperNodes_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v43 = a2;
  v48 = [v43 morpher];
  v2 = v48;
  if (v48)
  {
    v3 = [*(a1 + 32) containsObject:?];
    v49 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4 = [v48 targets];
    v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v6 = MEMORY[0];
      do
      {
        for (i = 0; i != v5; i = (i + 1))
        {
          if (MEMORY[0] != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(8 * i);
          if (v3)
          {
            v9 = [*(8 * i) name];
            v10 = [v9 containsString:?];

            if (v10)
            {
              continue;
            }
          }

          v11 = [v8 name];
          v12 = [v11 rangeOfString:?];

          if (v12 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = [v8 name];
            v14 = [v13 substringToIndex:?];

            [v49 addObject:?];
          }
        }

        v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v5);
    }

    obj = v49;
    v46 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v46)
    {
      v45 = MEMORY[0];
      *&v15 = 138412546;
      v42 = v15;
      while (2)
      {
        v16 = 0;
        do
        {
          if (MEMORY[0] != v45)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(8 * v16);
          v50 = [*(a1 + 40) childNodeWithName:v42 recursively:?];
          if (!v50)
          {
            v41 = avt_default_log(0);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v55) = 138412290;
              *(&v55 + 4) = v17;
              _os_log_impl(&dword_1BB472000, v41, OS_LOG_TYPE_DEFAULT, "Failed to find physicalized morpher driving node named '%@'", &v55, 0xCu);
            }

            goto LABEL_40;
          }

          *&v55 = 0;
          *(&v55 + 1) = &v55;
          v56 = 0x3032000000;
          v57 = __Block_byref_object_copy__0;
          v58 = __Block_byref_object_dispose__0;
          v59 = 0;
          [*(a1 + 48) enumerateKeysAndObjectsUsingBlock:?];
          v18 = [v17 stringByAppendingString:?];
          v19 = [v48 _weightIndexForTargetNamed:?];

          v20 = [v17 stringByAppendingString:?];
          v21 = [v48 _weightIndexForTargetNamed:?];

          v22 = [v17 stringByAppendingString:?];
          v23 = [v48 _weightIndexForTargetNamed:?];

          v24 = [v17 stringByAppendingString:?];
          v25 = [v48 _weightIndexForTargetNamed:?];

          v26 = [v17 stringByAppendingString:?];
          v27 = [v48 _weightIndexForTargetNamed:?];

          v28 = [v17 stringByAppendingString:?];
          v29 = [v48 _weightIndexForTargetNamed:?];

          if ((v19 == 0x7FFFFFFFFFFFFFFFLL || v21 == 0x7FFFFFFFFFFFFFFFLL) && (v23 == 0x7FFFFFFFFFFFFFFFLL || v25 == 0x7FFFFFFFFFFFFFFFLL) && (v27 == 0x7FFFFFFFFFFFFFFFLL || v29 == 0x7FFFFFFFFFFFFFFFLL))
          {
            v32 = avt_default_log(v30);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v39 = [v43 name];
              *buf = v42;
              v52 = v39;
              v53 = 2112;
              v54 = v17;
              _os_log_impl(&dword_1BB472000, v32, OS_LOG_TYPE_DEFAULT, "Failed to create physicalized morpher dynamic: '%@' driven by '%@'", buf, 0x16u);
            }
          }

          else
          {
            v31 = [*(*(&v55 + 1) + 40) objectForKeyedSubscript:?];
            v32 = v31;
            if (v31)
            {
              [v31 floatValue];
              v34 = v33;
            }

            else
            {
              v34 = 0.5;
            }

            v35 = objc_opt_new();
            *(v35 + 8) = v34;
            objc_storeStrong((v35 + 16), *(a1 + 56));
            objc_storeStrong((v35 + 24), v50);
            objc_storeStrong((v35 + 32), v48);
            *(v35 + 40) = v19;
            *(v35 + 48) = v21;
            *(v35 + 56) = v23;
            *(v35 + 64) = v25;
            *(v35 + 72) = v27;
            *(v35 + 80) = v29;
            v36 = [*(*(&v55 + 1) + 40) objectForKeyedSubscript:?];
            if (v36)
            {
              v37 = [*(a1 + 64) effectiveMorphedNodeForTargetName:?];
              objc_storeStrong((v35 + 88), v37);
              v38 = [v37 morpher];
              *(v35 + 96) = [v38 _weightIndexForTargetNamed:?];
            }

            (*(*(a1 + 72) + 16))();
          }

          _Block_object_dispose(&v55, 8);
          v16 = (v16 + 1);
        }

        while (v46 != v16);
        v40 = [obj countByEnumeratingWithState:? objects:? count:?];
        v46 = v40;
        if (v40)
        {
          continue;
        }

        break;
      }
    }

LABEL_40:

    v2 = v48;
  }
}

void __101__AVTPhysicalizedMorpherDynamic_enumerateDynamicsInHierarchy_forAvatar_ignoredUpperNodes_usingBlock___block_invoke_11(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if ([*(a1 + 32) containsString:?])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (void)evaluateAtTime:(double)time physicsController:(id)controller
{
  controllerCopy = controller;
  v5 = self->_extraSimulationFactorReadMorpherNode;
  v6 = v5;
  if (v5)
  {
    presentationNode = [(VFXNode *)v5 presentationNode];
    morpher = [presentationNode morpher];
    [morpher weightForTargetAtIndex:?];
  }

  [controllerCopy offsetFromRestingPositionForNode:? inCoordinateSpaceOfNode:?];
  v9 = self->_writeMorpher;
  v10 = v9;
  if (self->_leftwardMorphTargetIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [VFXMorpher setWeight:v9 forTargetAtIndex:"setWeight:forTargetAtIndex:"];
  }

  if (self->_rightwardMorphTargetIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [VFXMorpher setWeight:v10 forTargetAtIndex:"setWeight:forTargetAtIndex:"];
  }

  if (self->_forwardMorphTargetIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [VFXMorpher setWeight:v10 forTargetAtIndex:"setWeight:forTargetAtIndex:"];
  }

  if (self->_backwardMorphTargetIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [VFXMorpher setWeight:v10 forTargetAtIndex:"setWeight:forTargetAtIndex:"];
  }

  if (self->_upwardMorphTargetIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [VFXMorpher setWeight:v10 forTargetAtIndex:"setWeight:forTargetAtIndex:"];
  }

  if (self->_downwardMorphTargetIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [VFXMorpher setWeight:v10 forTargetAtIndex:"setWeight:forTargetAtIndex:"];
  }
}

- (void)resetTarget
{
  if (self->_leftwardMorphTargetIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [VFXMorpher setWeight:"setWeight:forTargetAtIndex:" forTargetAtIndex:?];
  }

  if (self->_rightwardMorphTargetIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [VFXMorpher setWeight:"setWeight:forTargetAtIndex:" forTargetAtIndex:?];
  }

  if (self->_forwardMorphTargetIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [VFXMorpher setWeight:"setWeight:forTargetAtIndex:" forTargetAtIndex:?];
  }

  if (self->_backwardMorphTargetIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [VFXMorpher setWeight:"setWeight:forTargetAtIndex:" forTargetAtIndex:?];
  }

  if (self->_upwardMorphTargetIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [VFXMorpher setWeight:"setWeight:forTargetAtIndex:" forTargetAtIndex:?];
  }

  if (self->_downwardMorphTargetIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    writeMorpher = self->_writeMorpher;

    [VFXMorpher setWeight:"setWeight:forTargetAtIndex:" forTargetAtIndex:?];
  }
}

- (BOOL)affectsNode:(id)node
{
  morpher = [node morpher];
  LOBYTE(self) = morpher == self->_writeMorpher;

  return self;
}

@end