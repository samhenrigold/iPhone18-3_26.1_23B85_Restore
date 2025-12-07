@interface VFXPrefabUpdater
- (id)_findAssociatedNode:(id)node inSubtree:(id)subtree ignoring:(id)ignoring;
- (id)_findChild:(id)child inChildrenOf:(id)of index:(unint64_t)index;
- (id)diffOld:(id)old withNew:(id)new options:(unint64_t)options;
- (void)_associate:(id)_associate with:(id)with;
- (void)_syncNode:(id)node with:(id)with;
- (void)addOperation:(int64_t)operation src:(id)src dst:(id)dst;
- (void)applyDiff:(id)diff;
- (void)associateNodeTree:(id)tree withNodeTree:(id)nodeTree root:(id)root;
- (void)collectOrphanNodes:(id)nodes dst:(id)dst;
- (void)updatePrefab:(id)prefab withNewPrefab:(id)newPrefab options:(unint64_t)options;
@end

@implementation VFXPrefabUpdater

- (void)_associate:(id)_associate with:(id)with
{
  CFDictionarySetValue(self->_srcToDst, _associate, with);
  dstToSrc = self->_dstToSrc;

  CFDictionarySetValue(dstToSrc, with, _associate);
}

- (void)addOperation:(int64_t)operation src:(id)src dst:(id)dst
{
  v13 = objc_alloc_init(VFXPrefabUpdateOperation);
  objc_msgSend_setSource_(v13, v9, src);
  objc_msgSend_setDestination_(v13, v10, dst);
  objc_msgSend_setOperation_(v13, v11, operation);
  objc_msgSend_addObject_(self->_operations, v12, v13);
}

- (void)_syncNode:(id)node with:(id)with
{
  if ((self->_importOptions & 2) != 0 && self->_rootSrc != with && self->_rootDst != node)
  {
    objc_msgSend_transform(with, a2, node);
    v29 = v8;
    v30 = v7;
    v31 = v10;
    v32 = v9;
    objc_msgSend_transform(node, v11, v12);
    if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v30, v13), vceqq_f32(v29, v14)), vandq_s8(vceqq_f32(v32, v15), vceqq_f32(v31, v16)))) & 0x80000000) == 0)
    {
      objc_msgSend_addOperation_src_dst_(self, a2, 2, with, node);
    }
  }

  if ((self->_importOptions & 0x20) != 0 && (objc_msgSend_camera(with, a2, node) || objc_msgSend_camera(node, a2, v17)))
  {
    objc_msgSend_addOperation_src_dst_(self, a2, 5, with, node);
  }

  if ((self->_importOptions & 4) != 0 && (objc_msgSend_model(with, a2, node) || objc_msgSend_model(node, a2, v18)))
  {
    objc_msgSend_addOperation_src_dst_(self, a2, 3, with, node);
  }

  if ((self->_importOptions & 0x10) != 0 && (objc_msgSend_light(with, a2, node) || objc_msgSend_light(node, a2, v19)))
  {
    objc_msgSend_addOperation_src_dst_(self, a2, 4, with, node);
  }

  if ((self->_importOptions & 8) != 0)
  {
    v20 = objc_msgSend_animationKeys(with, a2, node);
    if (objc_msgSend_count(v20, v21, v22) || (v24 = objc_msgSend_animationKeys(node, a2, v23), objc_msgSend_count(v24, v25, v26)))
    {
      objc_msgSend_addOperation_src_dst_(self, a2, 7, with, node);
    }
  }

  if ((self->_importOptions & 0x40) != 0 && (objc_msgSend_model(with, a2, node) || objc_msgSend_model(node, v27, v28)))
  {

    objc_msgSend_addOperation_src_dst_(self, v27, 6, with, node);
  }
}

- (id)_findAssociatedNode:(id)node inSubtree:(id)subtree ignoring:(id)ignoring
{
  v32 = *MEMORY[0x1E69E9840];
  if (subtree == ignoring)
  {
    return 0;
  }

  subtreeCopy = subtree;
  v9 = objc_msgSend_name(subtree, a2, node);
  v12 = objc_msgSend_name(node, v10, v11);
  if (objc_msgSend_isEqualToString_(v9, v13, v12) && !objc_msgSend__dstHasAssociatedNode_(self, v14, subtreeCopy))
  {
    return subtreeCopy;
  }

  if (!objc_msgSend_name(node, v14, v15))
  {
    return 0;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = objc_msgSend_childNodes(subtreeCopy, v16, v17, 0);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v27, v31, 16);
  if (!v20)
  {
    return 0;
  }

  v22 = v20;
  v23 = *v28;
  while (2)
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v28 != v23)
      {
        objc_enumerationMutation(v18);
      }

      AssociatedNode_inSubtree_ignoring = objc_msgSend__findAssociatedNode_inSubtree_ignoring_(self, v21, node, *(*(&v27 + 1) + 8 * i), ignoring);
      if (AssociatedNode_inSubtree_ignoring)
      {
        return AssociatedNode_inSubtree_ignoring;
      }
    }

    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v27, v31, 16);
    subtreeCopy = 0;
    if (v22)
    {
      continue;
    }

    break;
  }

  return subtreeCopy;
}

- (id)_findChild:(id)child inChildrenOf:(id)of index:(unint64_t)index
{
  v7 = objc_msgSend_name(child, a2, child);
  result = objc_msgSend_childNodeWithName_(of, v8, v7);
  if (!result)
  {
    v12 = objc_msgSend_childNodes(of, v10, v11);
    if (objc_msgSend_count(v12, v13, v14) <= index)
    {
      return 0;
    }

    else
    {
      v17 = objc_msgSend_childNodes(of, v15, v16);

      return objc_msgSend_objectAtIndexedSubscript_(v17, v18, index);
    }
  }

  return result;
}

- (void)associateNodeTree:(id)tree withNodeTree:(id)nodeTree root:(id)root
{
  v32 = *MEMORY[0x1E69E9840];
  if (objc_msgSend__srcAssociatedNode_(self, a2, tree))
  {
    nodeTreeCopy2 = 0;
  }

  else if (objc_msgSend_name(tree, v9, v10) || objc_msgSend_name(nodeTree, v12, v13) || (objc_msgSend__dstHasAssociatedNode_(self, v12, nodeTree) & 1) != 0)
  {
    AssociatedNode_inSubtree_ignoring = objc_msgSend__findAssociatedNode_inSubtree_ignoring_(self, v12, tree, nodeTree, 0);
    if (AssociatedNode_inSubtree_ignoring)
    {
      nodeTreeCopy2 = AssociatedNode_inSubtree_ignoring;
      objc_msgSend__associate_with_(self, v15, tree, AssociatedNode_inSubtree_ignoring);
    }

    else
    {
      nodeTreeCopy2 = objc_msgSend__findAssociatedNode_inSubtree_ignoring_(self, v15, tree, root, nodeTree);
      if (nodeTreeCopy2)
      {
        objc_msgSend__associate_with_(self, v9, tree, nodeTreeCopy2);
      }
    }
  }

  else
  {
    objc_msgSend__associate_with_(self, v12, tree, nodeTree);
    nodeTreeCopy2 = nodeTree;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = objc_msgSend_childNodes(tree, v9, v10, 0);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v27, v31, 16);
  if (v18)
  {
    v20 = v18;
    v21 = 0;
    v22 = *v28;
    if (!nodeTreeCopy2)
    {
      nodeTreeCopy2 = nodeTree;
    }

    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v16);
        }

        v24 = *(*(&v27 + 1) + 8 * i);
        Child_inChildrenOf_index = objc_msgSend__findChild_inChildrenOf_index_(self, v19, v24, nodeTreeCopy2, v21);
        if (Child_inChildrenOf_index)
        {
          objc_msgSend_associateNodeTree_withNodeTree_root_(self, v26, v24, Child_inChildrenOf_index, root);
        }

        else
        {
          objc_msgSend_associateNodeTree_withNodeTree_root_(self, v26, v24, nodeTree, root);
        }

        ++v21;
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v27, v31, 16);
    }

    while (v20);
  }
}

- (void)collectOrphanNodes:(id)nodes dst:(id)dst
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF316A50;
  v8[3] = &unk_1E7A79810;
  v8[4] = self;
  objc_msgSend_enumerateHierarchyUsingBlock_(nodes, a2, v8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1AF316AC8;
  v7[3] = &unk_1E7A79810;
  v7[4] = self;
  objc_msgSend_enumerateHierarchyUsingBlock_(dst, v6, v7);
}

- (id)diffOld:(id)old withNew:(id)new options:(unint64_t)options
{
  optionsCopy = options;
  self->_importOptions = (options >> 4) & 4 | options;
  self->_rootSrc = new;
  self->_rootDst = old;
  self->_operations = objc_msgSend_array(MEMORY[0x1E695DF70], a2, old);
  self->_srcToDst = CFDictionaryCreateMutable(0, 0, 0, 0);
  self->_dstToSrc = CFDictionaryCreateMutable(0, 0, 0, 0);
  objc_msgSend__associate_with_(self, v9, new, old);
  objc_msgSend_associateNodeTree_withNodeTree_root_(self, v10, new, old, old);
  CFDictionaryApplyFunction(self->_srcToDst, sub_1AF316C28, self);
  if (optionsCopy)
  {
    objc_msgSend_collectOrphanNodes_dst_(self, v11, new, old);
  }

  CFRelease(self->_srcToDst);
  CFRelease(self->_dstToSrc);
  self->_srcToDst = 0;
  self->_dstToSrc = 0;
  return self->_operations;
}

- (void)applyDiff:(id)diff
{
  v73 = *MEMORY[0x1E69E9840];
  NSLog(&cfstr_Diff.isa, a2);
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = diff;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(diff, v4, &v67, v72, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v68;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v68 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v67 + 1) + 8 * i);
        v12 = objc_msgSend_operation(v11, v6, v7);
        v15 = objc_msgSend_source(v11, v13, v14);
        v18 = objc_msgSend_destination(v11, v16, v17);
        NSLog(&cfstr_D_5.isa, v12, v15, v18);
        v21 = objc_msgSend_destination(v11, v19, v20);
        v24 = objc_msgSend_source(v11, v22, v23);
        v27 = objc_msgSend_operation(v11, v25, v26);
        if (v27 > 3)
        {
          if (v27 > 5)
          {
            if (v27 == 6)
            {
              v57 = objc_msgSend_model(v24, v6, v7);
              v33 = objc_msgSend_materials(v57, v58, v59);
LABEL_33:
              v60 = objc_msgSend_model(v21, v6, v7);
              objc_msgSend_setMaterials_(v60, v61, v33);
              continue;
            }

            if (v27 == 7)
            {
              objc_msgSend_removeAllAnimations(v21, v6, v7);
              v65 = 0u;
              v66 = 0u;
              v63 = 0u;
              v64 = 0u;
              v40 = objc_msgSend_source(v11, v38, v39);
              v43 = objc_msgSend_animationKeys(v40, v41, v42);
              v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v63, v71, 16);
              if (v45)
              {
                v46 = v45;
                v47 = *v64;
                do
                {
                  for (j = 0; j != v46; ++j)
                  {
                    if (*v64 != v47)
                    {
                      objc_enumerationMutation(v43);
                    }

                    v49 = *(*(&v63 + 1) + 8 * j);
                    v50 = objc_msgSend_source(v11, v6, v7);
                    v52 = objc_msgSend_animationPlayerForKey_(v50, v51, v49);
                    if (v52)
                    {
                      objc_msgSend_addAnimationPlayer_forKey_(v21, v6, v52, v49);
                    }
                  }

                  v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v6, &v63, v71, 16);
                }

                while (v46);
              }
            }
          }

          else if (v27 == 4)
          {
            v53 = objc_msgSend_light(v24, v6, v7);
            objc_msgSend_setLight_(v21, v54, v53);
          }

          else
          {
            v28 = objc_msgSend_camera(v24, v6, v7);
            objc_msgSend_setCamera_(v21, v29, v28);
          }
        }

        else if (v27 > 1)
        {
          if (v27 == 2)
          {
            objc_msgSend_transform(v24, v6, v7);
            objc_msgSend_setTransform_(v21, v55, v56);
            continue;
          }

          v30 = objc_msgSend_model(v21, v6, v7);
          v33 = objc_msgSend_materials(v30, v31, v32);
          v36 = objc_msgSend_model(v24, v34, v35);
          objc_msgSend_setModel_(v21, v37, v36);
          if (v33)
          {
            goto LABEL_33;
          }
        }

        else if (v27)
        {
          if (v27 == 1)
          {
            objc_msgSend_removeFromParentNode(v21, v6, v7);
          }
        }

        else
        {
          objc_msgSend_addChildNode_(v21, v6, v24);
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v67, v72, 16);
    }

    while (v8);
  }
}

- (void)updatePrefab:(id)prefab withNewPrefab:(id)newPrefab options:(unint64_t)options
{
  v6 = objc_msgSend_diffOld_withNew_options_(self, a2, prefab, newPrefab, options);

  MEMORY[0x1EEE66B58](self, sel_applyDiff_, v6);
}

@end