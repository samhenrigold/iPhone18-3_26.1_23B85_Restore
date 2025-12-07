@interface NSOrderedSet(WFThreeWayMerging)
+ (id)wf_orderedSetByMergingOrderedSet:()WFThreeWayMerging withOrderedSet:baseOrderedSet:elementComparator:;
@end

@implementation NSOrderedSet(WFThreeWayMerging)

+ (id)wf_orderedSetByMergingOrderedSet:()WFThreeWayMerging withOrderedSet:baseOrderedSet:elementComparator:
{
  v127 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_60:
    v69 = v14;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"secondOrderedSet"}];

    v14 = v69;
    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_61;
  }

  v67 = v13;
  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"firstOrderedSet"}];

  v14 = v67;
  if (!v11)
  {
    goto LABEL_60;
  }

LABEL_3:
  if (v12)
  {
    goto LABEL_4;
  }

LABEL_61:
  v71 = v14;
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"baseOrderedSet"}];

  v14 = v71;
LABEL_4:
  v89 = v14;
  if (v14)
  {
    v15 = [WFThreeWayMergingObjectGraph alloc];
    v16 = v14;
  }

  else
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"comparator"}];

    v15 = [WFThreeWayMergingObjectGraph alloc];
    v16 = 0;
  }

  v17 = [(WFThreeWayMergingObjectGraph *)v15 initWithVertexComparator:v16];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __116__NSOrderedSet_WFThreeWayMerging__wf_orderedSetByMergingOrderedSet_withOrderedSet_baseOrderedSet_elementComparator___block_invoke;
  aBlock[3] = &unk_1E837B138;
  v18 = v12;
  v111 = v18;
  v19 = v10;
  v112 = v19;
  v20 = v11;
  v113 = v20;
  v21 = _Block_copy(aBlock);
  v108[0] = MEMORY[0x1E69E9820];
  v108[1] = 3221225472;
  v108[2] = __116__NSOrderedSet_WFThreeWayMerging__wf_orderedSetByMergingOrderedSet_withOrderedSet_baseOrderedSet_elementComparator___block_invoke_2;
  v108[3] = &unk_1E837B160;
  v22 = v21;
  v109 = v22;
  v23 = _Block_copy(v108);
  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = __116__NSOrderedSet_WFThreeWayMerging__wf_orderedSetByMergingOrderedSet_withOrderedSet_baseOrderedSet_elementComparator___block_invoke_3;
  v103[3] = &unk_1E837B188;
  v86 = v22;
  v106 = v86;
  v24 = v17;
  v104 = v24;
  v25 = v18;
  v105 = v25;
  v87 = v23;
  v107 = v87;
  v92 = _Block_copy(v103);
  v92[2](v92, v19, v20);
  v92[2](v92, v20, v19);
  v26 = v24;
  v95 = v25;
  v96 = v19;
  v27 = v20;
  if (!v26)
  {
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    v75 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void WFAddEdgesForTransitiveRelationships(WFThreeWayMergingObjectGraph * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong)"}];
    [currentHandler5 handleFailureInFunction:v75 file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:193 description:{@"Invalid parameter not satisfying: %@", @"graph"}];
  }

  if (!v12)
  {
    currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
    v77 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void WFAddEdgesForTransitiveRelationships(WFThreeWayMergingObjectGraph * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong)"}];
    [currentHandler6 handleFailureInFunction:v77 file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:194 description:{@"Invalid parameter not satisfying: %@", @"baseOrderedSet"}];
  }

  if (!v10)
  {
    currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
    v79 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void WFAddEdgesForTransitiveRelationships(WFThreeWayMergingObjectGraph * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong)"}];
    [currentHandler7 handleFailureInFunction:v79 file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"firstOrderedSet"}];
  }

  if (!v11)
  {
    currentHandler8 = [MEMORY[0x1E696AAA8] currentHandler];
    v81 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void WFAddEdgesForTransitiveRelationships(WFThreeWayMergingObjectGraph * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong)"}];
    [currentHandler8 handleFailureInFunction:v81 file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"secondOrderedSet"}];
  }

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  if (v26)
  {
    v28 = v26[2];
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;
  v30 = [v29 countByEnumeratingWithState:&v118 objects:v126 count:16];
  if (v30)
  {
    v31 = *v119;
    do
    {
      v32 = 0;
      do
      {
        if (*v119 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = *(*(&v118 + 1) + 8 * v32);
        v34 = objc_autoreleasePoolPush();
        v35 = v33;
        v36 = v35;
        if (v26)
        {
          if (!v35)
          {
            currentHandler9 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler9 handleFailureInMethod:sel_directPredecessorsOfVertex_ object:v26 file:@"WFThreeWayMergingObjectGraph.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"vertex"}];
          }

          v37 = [v26[4] objectForKey:v36];
        }

        else
        {
          v37 = 0;
        }

        v38 = [v37 count] == 0;
        if (v38)
        {
          v39 = WFGetClosestCommonElementForObject(v36, v95, v96, v27, 1);
          if (v39)
          {
            [(WFThreeWayMergingObjectGraph *)v26 addEdgeFromVertex:v39 toVertex:v36];
          }
        }

        v40 = v36;
        v41 = v40;
        if (v26)
        {
          if (!v40)
          {
            currentHandler10 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler10 handleFailureInMethod:sel_directSuccessorsOfVertex_ object:v26 file:@"WFThreeWayMergingObjectGraph.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"vertex"}];
          }

          v42 = [v26[3] objectForKey:v41];
        }

        else
        {
          v42 = 0;
        }

        v43 = [v42 count] == 0;
        if (v43)
        {
          v44 = WFGetClosestCommonElementForObject(v41, v95, v96, v27, 0);
          if (v44)
          {
            [(WFThreeWayMergingObjectGraph *)v26 addEdgeFromVertex:v41 toVertex:v44];
          }
        }

        objc_autoreleasePoolPop(v34);
        ++v32;
      }

      while (v30 != v32);
      v47 = [v29 countByEnumeratingWithState:&v118 objects:v126 count:16];
      v30 = v47;
    }

    while (v47);
  }

  v48 = objc_opt_new();
  v98[0] = MEMORY[0x1E69E9820];
  v98[1] = 3221225472;
  v98[2] = __116__NSOrderedSet_WFThreeWayMerging__wf_orderedSetByMergingOrderedSet_withOrderedSet_baseOrderedSet_elementComparator___block_invoke_4;
  v98[3] = &unk_1E837B1D8;
  v99 = v96;
  v100 = v27;
  v101 = v48;
  v102 = v89;
  v91 = v48;
  v84 = v89;
  v83 = v27;
  v82 = v96;
  v93 = v98;
  if (v26)
  {
    v49 = objc_opt_new();
    v125[0] = 0;
    v125[1] = v125;
    v125[2] = 0x2020000000;
    v125[3] = 0;
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    strongToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v52 = objc_opt_new();
    *&v118 = MEMORY[0x1E69E9820];
    *(&v118 + 1) = 3221225472;
    *&v119 = __78__WFThreeWayMergingObjectGraph_enumerateStronglyConnectedComponentsWithBlock___block_invoke;
    *(&v119 + 1) = &unk_1E837DC70;
    v53 = v52;
    *&v120 = v53;
    *(&v120 + 1) = v26;
    v97 = strongToStrongObjectsMapTable;
    *&v121 = v97;
    v124 = v125;
    v90 = strongToStrongObjectsMapTable2;
    *(&v121 + 1) = v90;
    v85 = v49;
    v122 = v85;
    v123 = v93;
    v54 = _Block_copy(&v118);
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    obj = v26[2];
    v55 = [obj countByEnumeratingWithState:&v114 objects:v126 count:16];
    if (v55)
    {
      v56 = *v115;
      do
      {
        v57 = 0;
        do
        {
          if (*v115 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v58 = *(*(&v114 + 1) + 8 * v57);
          v59 = objc_autoreleasePoolPush();
          v60 = [v97 objectForKey:v58];
          v61 = v60 == 0;

          if (v61)
          {
            v62 = [WFThreeWayMergingObjectGraphComponentEnumerationStackItem initialItemWithVertex:v58];
            [v53 addObject:v62];

            while ([v53 count])
            {
              v63 = objc_autoreleasePoolPush();
              v54[2](v54);
              objc_autoreleasePoolPop(v63);
            }
          }

          objc_autoreleasePoolPop(v59);
          ++v57;
        }

        while (v57 != v55);
        v64 = [obj countByEnumeratingWithState:&v114 objects:v126 count:16];
        v55 = v64;
      }

      while (v64);
    }

    _Block_object_dispose(v125, 8);
  }

  v65 = [self orderedSetWithOrderedSet:v91];

  return v65;
}

@end