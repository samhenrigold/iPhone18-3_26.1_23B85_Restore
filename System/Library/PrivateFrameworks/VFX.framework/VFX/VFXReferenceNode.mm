@interface VFXReferenceNode
- (BOOL)_isNameUnique:(id)unique;
- (BOOL)isVirtualEnvironmentNode;
- (VFXReferenceNode)initWithCoder:(id)coder;
- (VFXReferenceNode)initWithNode:(id)node;
- (VFXReferenceNode)initWithURL:(id)l;
- (id)_loadReferencedWorldWithURL:(id)l;
- (id)_resolveURL;
- (id)description;
- (id)overrides;
- (void)_applyOverrides;
- (void)_applyUnsharing:(id)unsharing alreadyShared:(id)shared;
- (void)_copyWithOptions:(unint64_t)options to:(id)to copyContext:(id)context;
- (void)_diffNode:(id)node with:(id)with path:(id)path;
- (void)_diffObject:(id)object with:(id)with path:(id)path;
- (void)_loadWithNode:(id)node fromURL:(BOOL)l;
- (void)_loadWithURL:(id)l;
- (void)addOverride:(id)override forKeyPath:(id)path;
- (void)collectOverrides;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)load;
- (void)removeAllOverrides;
- (void)removeForKeyPath:(id)path;
- (void)setOverrides:(id)overrides;
- (void)setReferenceURL:(id)l;
- (void)setReferencedNode:(id)node;
- (void)unload;
@end

@implementation VFXReferenceNode

- (VFXReferenceNode)initWithURL:(id)l
{
  v8.receiver = self;
  v8.super_class = VFXReferenceNode;
  v4 = [(VFXNode *)&v8 init];
  v6 = v4;
  if (v4)
  {
    objc_msgSend_setReferenceURL_(v4, v5, l);
  }

  return v6;
}

- (VFXReferenceNode)initWithNode:(id)node
{
  v8.receiver = self;
  v8.super_class = VFXReferenceNode;
  v4 = [(VFXNode *)&v8 init];
  v6 = v4;
  if (v4)
  {
    objc_msgSend_setReferencedNode_(v4, v5, node);
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXReferenceNode;
  [(VFXNode *)&v3 dealloc];
}

- (void)_diffObject:(id)object with:(id)with path:(id)path
{
  pathCopy = path;
  v65 = *MEMORY[0x1E69E9840];
  if (qword_1EB658CC0 != -1)
  {
    sub_1AFDF7A7C();
  }

  v5 = objc_opt_class();
  outCount = 0;
  v6 = class_copyPropertyList(v5, &outCount);
  v9 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v11 = v6[i];
      Attributes = property_getAttributes(v11);
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v13, Attributes);
      v16 = objc_msgSend_componentsSeparatedByString_(v14, v15, @",");
      v18 = objc_msgSend_objectAtIndex_(v16, v17, 0);
      v20 = objc_msgSend_substringFromIndex_(v18, v19, 1);
      v23 = objc_msgSend_UTF8String(v20, v21, v22);
      if (strcmp(v23, "{CATransform3D=dddddddddddddddd}"))
      {
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v24, Attributes);
        objc_msgSend_rangeOfString_(v25, v26, @",R,");
        if (v27 != 3)
        {
          v28 = MEMORY[0x1E696AEC0];
          Name = property_getName(v11);
          v31 = objc_msgSend_stringWithUTF8String_(v28, v30, Name);
          objc_msgSend_addObject_(v9, v32, v31);
        }
      }
    }
  }

  free(v6);
  objc_msgSend_willChangeValueForKey_(self, v33, @"overrides");
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v34, &v59, v64, 16);
  if (v36)
  {
    v37 = *v60;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v60 != v37)
        {
          objc_enumerationMutation(v9);
        }

        v39 = *(*(&v59 + 1) + 8 * j);
        if ((objc_msgSend_containsObject_(qword_1EB658CB8, v35, v39, pathCopy) & 1) == 0 && (objc_msgSend_hasPrefix_(v39, v35, @"_") & 1) == 0 && (objc_msgSend_hasPrefix_(v39, v35, @"world") & 1) == 0)
        {
          v40 = objc_msgSend_valueForKey_(object, v35, v39);
          v42 = objc_msgSend_valueForKey_(with, v41, v39);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              PathComponent = objc_msgSend_lastPathComponent(v40, v43, v44);
              v48 = objc_msgSend_lastPathComponent(v42, v46, v47);
              isEqual = objc_msgSend_isEqual_(PathComponent, v49, v48);
            }

            else
            {
              isEqual = objc_msgSend_isEqual_(v40, v43, v42);
            }

            if ((isEqual & 1) == 0)
            {
              v51 = objc_msgSend_stringByAppendingString_(pathCopy, v35, @".");
              v53 = objc_msgSend_stringByAppendingString_(v51, v52, v39);
              objc_msgSend_addOverride_forKeyPath_(self, v54, v40, v53);
            }
          }
        }
      }

      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v35, &v59, v64, 16);
    }

    while (v36);
  }

  objc_msgSend_didChangeValueForKey_(self, v35, @"overrides", pathCopy);
}

- (BOOL)_isNameUnique:(id)unique
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF319728;
  v5[3] = &unk_1E7A7EDE8;
  v5[4] = unique;
  v5[5] = &v6;
  objc_msgSend_enumerateHierarchyUsingBlock_(self, a2, v5);
  v3 = *(v7 + 6) == 1;
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_diffNode:(id)node with:(id)with path:(id)path
{
  if (objc_msgSend_name(node, a2, node))
  {
    v11 = objc_msgSend_name(node, v9, v10);
    if ((objc_msgSend_containsString_(v11, v12, @".") & 1) == 0)
    {
      v14 = objc_msgSend_name(node, v9, v13);
      if (objc_msgSend__isNameUnique_(self, v15, v14))
      {
        v17 = objc_msgSend_name(node, v9, v16);
        path = objc_msgSend_stringByAppendingString_(@"/", v18, v17);
      }
    }
  }

  withCopy = with;
  objc_msgSend__diffObject_with_path_(self, v9, node, with, path);
  nodeCopy = node;
  if (objc_msgSend_model(node, v19, v20) && objc_msgSend_model(with, v21, v22))
  {
    v23 = objc_msgSend_model(node, v21, v22);
    v26 = objc_msgSend_model(withCopy, v24, v25);
    v28 = objc_msgSend_stringByAppendingString_(path, v27, @".");
    v30 = objc_msgSend_stringByAppendingString_(v28, v29, @"model");
    objc_msgSend__diffObject_with_path_(self, v31, v23, v26, v30);
    v34 = objc_msgSend_model(node, v32, v33);
    v37 = objc_msgSend_materials(v34, v35, v36);
    v40 = objc_msgSend_count(v37, v38, v39);
    v43 = objc_msgSend_model(withCopy, v41, v42);
    v46 = objc_msgSend_materials(v43, v44, v45);
    v49 = objc_msgSend_count(v46, v47, v48);
    if (v40 == v49)
    {
      v52 = objc_msgSend_model(node, v50, v51);
      v134 = objc_msgSend_materials(v52, v53, v54);
      v57 = objc_msgSend_model(withCopy, v55, v56);
      v133 = objc_msgSend_materials(v57, v58, v59);
      if (v40)
      {
        v60 = 0;
        v131 = v40;
        pathCopy = path;
        do
        {
          v61 = objc_msgSend_objectAtIndexedSubscript_(v134, v21, v60);
          v63 = objc_msgSend_objectAtIndexedSubscript_(v133, v62, v60);
          v135 = v60;
          v65 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v64, @"model.materials[%d]", v60);
          v67 = objc_msgSend_stringByAppendingString_(path, v66, @".");
          v69 = objc_msgSend_stringByAppendingString_(v67, v68, v65);
          objc_msgSend__diffObject_with_path_(self, v70, v61, v63, v69);
          v73 = objc_msgSend_properties(v61, v71, v72);
          v76 = objc_msgSend_properties(v63, v74, v75);
          v79 = objc_msgSend_count(v73, v77, v78);
          v82 = objc_msgSend_count(v76, v80, v81);
          if (v82 == v79)
          {
            if (v79)
            {
              for (i = 0; i != v79; ++i)
              {
                v84 = objc_msgSend_objectAtIndexedSubscript_(v73, v21, i);
                v86 = objc_msgSend_objectAtIndexedSubscript_(v76, v85, i);
                v88 = objc_msgSend_objectAtIndexedSubscript_(v73, v87, i);
                selfCopy = self;
                v92 = objc_msgSend_materialPropertyName(v88, v89, v90);
                v94 = objc_msgSend_stringByAppendingString_(v69, v93, @".");
                v95 = v92;
                self = selfCopy;
                v97 = objc_msgSend_stringByAppendingString_(v94, v96, v95);
                objc_msgSend__diffObject_with_path_(selfCopy, v98, v84, v86, v97);
              }
            }
          }

          else
          {
            v99 = sub_1AF0D5194(v82, v21);
            if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDF7AD0(&buf, v137, v99);
            }
          }

          v60 = v135 + 1;
          path = pathCopy;
        }

        while (v135 + 1 != v131);
      }
    }

    else
    {
      v100 = sub_1AF0D5194(v49, v50);
      if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF7A90();
      }
    }
  }

  v101 = objc_msgSend_childNodes(nodeCopy, v21, v22);
  v104 = objc_msgSend_count(v101, v102, v103);
  v107 = objc_msgSend_childNodes(withCopy, v105, v106);
  v110 = objc_msgSend_count(v107, v108, v109);
  if (v104 == v110)
  {
    if (v104)
    {
      for (j = 0; j != v104; ++j)
      {
        v113 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v111, @"[%d]", j);
        v115 = objc_msgSend_stringByAppendingString_(path, v114, @".");
        path = objc_msgSend_stringByAppendingString_(v115, v116, v113);
        v119 = objc_msgSend_childNodes(nodeCopy, v117, v118);
        v121 = objc_msgSend_objectAtIndexedSubscript_(v119, v120, j);
        v124 = objc_msgSend_childNodes(withCopy, v122, v123);
        v126 = objc_msgSend_objectAtIndexedSubscript_(v124, v125, j);
        objc_msgSend__diffNode_with_path_(self, v127, v121, v126, path);
      }
    }
  }

  else
  {
    v128 = sub_1AF0D5194(v110, v111);
    if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF7B10();
    }
  }
}

- (void)collectOverrides
{
  objc_msgSend_removeAllOverrides(self, a2, v2);
  if (self->_referenceURL)
  {
    v6 = objc_msgSend__resolveURL(self, v4, v5);
    ReferencedWorldWithURL = objc_msgSend__loadReferencedWorldWithURL_(self, v7, v6);
    referenceNode = objc_msgSend_rootNode(ReferencedWorldWithURL, v9, v10);
    Object = self;
  }

  else
  {
    referenceNode = self->_referenceNode;
    v16 = objc_msgSend_childNodes(self, v4, v5);
    Object = objc_msgSend_firstObject(v16, v17, v18);
  }

  v15 = objc_msgSend_childNodes(referenceNode, v11, v12);
  v21 = objc_msgSend_count(v15, v19, v20);
  v24 = objc_msgSend_childNodes(Object, v22, v23);
  v27 = objc_msgSend_count(v24, v25, v26);
  if (v21 == v27)
  {

    objc_msgSend__diffNode_with_path_(self, v28, Object, referenceNode, &stru_1F2575650);
  }

  else
  {
    v29 = sub_1AF0D5194(v27, v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF7B50();
    }
  }
}

- (void)addOverride:(id)override forKeyPath:(id)path
{
  objc_msgSend_willChangeValueForKey_(self, a2, @"overrides");
  overrides = self->_overrides;
  if (!overrides)
  {
    overrides = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_overrides = overrides;
  }

  objc_msgSend_setObject_forKey_(overrides, v7, override, path);

  objc_msgSend_didChangeValueForKey_(self, v9, @"overrides");
}

- (void)removeForKeyPath:(id)path
{
  objc_msgSend_willChangeValueForKey_(self, a2, @"overrides");
  objc_msgSend_removeObjectForKey_(self->_overrides, v5, path);
  if (!objc_msgSend_count(self->_overrides, v6, v7))
  {

    self->_overrides = 0;
  }

  objc_msgSend_didChangeValueForKey_(self, v8, @"overrides");
}

- (void)removeAllOverrides
{
  objc_msgSend_willChangeValueForKey_(self, a2, @"overrides");
  objc_msgSend_removeAllObjects(self->_overrides, v3, v4);

  objc_msgSend_didChangeValueForKey_(self, v5, @"overrides");
}

- (id)overrides
{
  if (self->_overrides)
  {
    return self->_overrides;
  }

  else
  {
    return MEMORY[0x1E695E0F8];
  }
}

- (void)setOverrides:(id)overrides
{
  objc_msgSend_willChangeValueForKey_(self, a2, @"overrides");

  self->_overrides = objc_msgSend_mutableCopy(overrides, v5, v6);

  objc_msgSend_didChangeValueForKey_(self, v7, @"overrides");
}

- (void)_applyUnsharing:(id)unsharing alreadyShared:(id)shared
{
  v78 = *MEMORY[0x1E69E9840];
  if ((objc_msgSend_containsObject_(shared, a2, unsharing) & 1) == 0)
  {
    objc_msgSend_addObject_(shared, v7, unsharing);
    v9 = objc_msgSend_rangeOfString_options_(unsharing, v8, @".", 4);
    if (v11 == 1)
    {
      v12 = v9;
      v13 = v9 + 1;
      if (v9 + 1 < objc_msgSend_length(unsharing, 1, v10))
      {
        v15 = objc_msgSend_substringToIndex_(unsharing, v14, v12);
        v17 = objc_msgSend_substringFromIndex_(unsharing, v16, v13);
        v19 = objc_msgSend_valueForKeyPath_(self, v18, v15);
        if (v19)
        {
          v20 = v19;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_isEqualToString_(v17, v21, @"model"))
          {
            v24 = objc_msgSend_model(v20, v22, v23);
            v27 = objc_msgSend_copy(v24, v25, v26);
            objc_msgSend_setModel_(v20, v28, v27);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ((objc_msgSend_containsObject_(shared, v29, v15) & 1) == 0)
            {
              objc_msgSend__applyUnsharing_alreadyShared_(self, v30, v15, shared);
              v20 = objc_msgSend_valueForKeyPath_(self, v31, v15);
            }

            if (objc_msgSend_isEqualToString_(v17, v30, @"firstMaterial"))
            {
              v34 = 0;
              goto LABEL_13;
            }

            if (objc_msgSend_isEqualToString_(v17, v32, @"materials"))
            {
              v49 = objc_msgSend_materials(v20, v47, v48);
              v53 = objc_msgSend_copy(v49, v50, v51);

              objc_msgSend_setMaterials_(v20, v52, v53);
            }

            else
            {
              v60 = objc_msgSend_rangeOfString_(v17, v47, @"[");
              if (v61 == 1)
              {
                v62 = objc_msgSend_substringFromIndex_(v17, 1, v60 + 1);
                v64 = objc_msgSend_rangeOfString_(v62, v63, @"]");
                if (v65 == 1)
                {
                  v66 = objc_msgSend_substringToIndex_(v62, 1, v64);
                  v34 = objc_msgSend_integerValue(v66, v67, v68);
LABEL_13:
                  v35 = objc_msgSend_materials(v20, v32, v33);
                  v38 = objc_msgSend_count(v35, v36, v37);
                  if (v34 >= v38)
                  {
                    v54 = sub_1AF0D5194(v38, v39);
                    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                    {
                      v57 = objc_msgSend_materials(v20, v55, v56);
                      *buf = 138412802;
                      unsharingCopy = unsharing;
                      v74 = 1024;
                      v75 = v34;
                      v76 = 1024;
                      v77 = objc_msgSend_count(v57, v58, v59);
                      _os_log_error_impl(&dword_1AF0CE000, v54, OS_LOG_TYPE_ERROR, "Error: failed to evaluate key path %@ - material index %d out of bounds (%d)", buf, 0x18u);
                    }
                  }

                  else
                  {
                    v41 = objc_msgSend_materials(v20, v39, v40);
                    v43 = objc_msgSend_objectAtIndexedSubscript_(v41, v42, v34);
                    v71 = objc_msgSend_copy(v43, v44, v45);
                    objc_msgSend_replaceMaterialAtIndex_withMaterial_(v20, v46, v34);
                  }

                  return;
                }

                v70 = sub_1AF0D5194(v64, v65);
                if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
                {
                  sub_1AFDF7C00();
                }
              }

              else
              {
                v69 = sub_1AF0D5194(v60, v61);
                if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                {
                  sub_1AFDF7B90();
                }
              }
            }
          }
        }
      }
    }
  }
}

- (void)_applyOverrides
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  overrides = self->_overrides;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1AF31A334;
  v9[3] = &unk_1E7A7EE10;
  v9[4] = self;
  v9[5] = v3;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(overrides, v5, v9);
  v6 = self->_overrides;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF31A344;
  v8[3] = &unk_1E7A7E7E8;
  v8[4] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v6, v7, v8);
}

- (void)_copyWithOptions:(unint64_t)options to:(id)to copyContext:(id)context
{
  v12.receiver = self;
  v12.super_class = VFXReferenceNode;
  [(VFXNode *)&v12 _copyWithOptions:options to:to copyContext:context];
  objc_msgSend_setReferenceURL_(to, v7, self->_referenceURL);
  objc_msgSend_setReferencedNode_(to, v8, self->_referenceNode);
  objc_msgSend_setLoadingPolicy_(to, v9, self->_loadingPolicy);
  *(to + 37) = objc_msgSend_mutableCopy(self->_overrides, v10, v11);
}

- (void)setReferenceURL:(id)l
{
  referenceURL = self->_referenceURL;
  if (referenceURL != l)
  {

    self->_referenceURL = objc_msgSend_copy(l, v6, v7);
  }
}

- (BOOL)isVirtualEnvironmentNode
{
  v3 = objc_msgSend_scheme(self->_referenceURL, a2, v2);

  return objc_msgSend_isEqualToString_(v3, v4, @"env");
}

- (void)setReferencedNode:(id)node
{
  referenceNode = self->_referenceNode;
  if (referenceNode != node)
  {

    self->_referenceNode = node;
  }
}

- (id)_resolveURL
{
  referenceURL = self->_referenceURL;
  if (!referenceURL)
  {
    return 0;
  }

  if (objc_msgSend_scheme(self->_referenceURL, a2, v2) && !objc_msgSend_isFileURL(referenceURL, v5, v6))
  {
    return referenceURL;
  }

  v7 = objc_msgSend_relativePath(referenceURL, v5, v6);
  if (objc_msgSend_isAbsolutePath(v7, v8, v9))
  {
    return referenceURL;
  }

  sourceDocumentURL = self->_sourceDocumentURL;
  if (!sourceDocumentURL)
  {
    return referenceURL;
  }

  PathComponent = objc_msgSend_URLByDeletingLastPathComponent(sourceDocumentURL, v10, v11);
  v15 = objc_msgSend_URLByAppendingPathComponent_(PathComponent, v14, v7);
  if ((sub_1AF1D637C(v15) & 1) == 0)
  {
    return referenceURL;
  }

  return v15;
}

- (void)unload
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = objc_msgSend_childNodes(self, a2, v2, 0);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v12, v16, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend_removeFromParentNode(*(*(&v12 + 1) + 8 * v11++), v7, v8);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v12, v16, 16);
    }

    while (v9);
  }

  self->_loaded = 0;
}

- (id)_loadReferencedWorldWithURL:(id)l
{
  if (l)
  {

    return MEMORY[0x1EEE66B58](VFXWorld, sel_worldWithURL_options_error_, l);
  }

  else
  {
    v4 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF7C70();
    }

    return 0;
  }
}

- (void)load
{
  if (!self->_loaded)
  {
    v4 = objc_msgSend__resolveURL(self, a2, v2);
    if (v4)
    {

      MEMORY[0x1EEE66B58](self, sel__loadWithURL_, v4);
    }

    else
    {
      referenceNode = self->_referenceNode;
      if (referenceNode)
      {

        MEMORY[0x1EEE66B58](self, sel__loadWithNode_fromURL_, referenceNode);
      }
    }
  }
}

- (void)_loadWithNode:(id)node fromURL:(BOOL)l
{
  lCopy = l;
  v25 = *MEMORY[0x1E69E9840];
  self->_loaded = 1;
  v7 = objc_msgSend_clone(node, a2, node);
  objc_msgSend_enumerateHierarchyUsingBlock_(v7, v8, &unk_1F24EC208);
  if (lCopy)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = objc_msgSend_childNodes(v7, v9, v10, 0);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v20, v24, 16);
    if (v13)
    {
      v15 = v13;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v11);
          }

          objc_msgSend_addChildNode_(self, v14, *(*(&v20 + 1) + 8 * v17++));
        }

        while (v15 != v17);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v20, v24, 16);
      }

      while (v15);
    }

    objc_msgSend__copyAnimationsFrom_(self, v14, node);
  }

  else
  {
    objc_msgSend_addChildNode_(self, v9, v7);
  }

  objc_msgSend__applyOverrides(self, v18, v19);
}

- (void)_loadWithURL:(id)l
{
  if (l)
  {
    v6 = objc_msgSend_valueForKey_(VFXTransaction, a2, @"VFXReferenceLoadingStack");
    if (!v6)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      objc_msgSend_setValue_forKey_(VFXTransaction, v7, v6, @"VFXReferenceLoadingStack");
    }

    v8 = objc_msgSend_containsObject_(v6, v5, l);
    if (v8)
    {
      v10 = sub_1AF0D5194(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF7CE0();
      }
    }

    else
    {
      objc_msgSend_addObject_(v6, v9, l);
      ReferencedWorldWithURL = objc_msgSend__loadReferencedWorldWithURL_(self, v12, l);
      objc_msgSend_removeObject_(v6, v14, l);
      if (ReferencedWorldWithURL)
      {
        v17 = objc_msgSend_rootNode(ReferencedWorldWithURL, v15, v16);

        MEMORY[0x1EEE66B58](self, sel__loadWithNode_fromURL_, v17);
      }
    }
  }

  else
  {
    v11 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF7C70();
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  referenceURL = self->_referenceURL;
  if (!referenceURL)
  {
    referenceURL = self->_referenceNode;
  }

  return objc_msgSend_stringWithFormat_(v3, v6, @"<%@: %p source=%@>", v5, self, referenceURL);
}

- (void)encodeWithCoder:(id)coder
{
  referenceURL = self->_referenceURL;
  if (referenceURL)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, referenceURL, @"referenceURL");
  }

  referenceNode = self->_referenceNode;
  if (referenceNode)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, referenceNode, @"referenceNode");
  }

  objc_msgSend_encodeInteger_forKey_(coder, a2, self->_loadingPolicy, @"loadingPolicy");
  overrides = self->_overrides;
  if (overrides)
  {
    objc_msgSend_encodeObject_forKey_(coder, v7, overrides, @"overrides");
  }

  v9.receiver = self;
  v9.super_class = VFXReferenceNode;
  [(VFXNode *)&v9 encodeWithCoder:coder];
}

- (VFXReferenceNode)initWithCoder:(id)coder
{
  v32[2] = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = VFXReferenceNode;
  v4 = [(VFXNode *)&v31 initWithCoder:?];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v32[0] = objc_opt_class();
    v32[1] = objc_opt_class();
    v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v6, v32, 2);
    v9 = objc_msgSend_setWithArray_(v5, v8, v7);
    v11 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v10, v9, @"referenceURL");
    objc_msgSend_setReferenceURL_(v4, v12, v11);
    v13 = objc_opt_class();
    v15 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v14, v13, @"referenceNode");
    objc_msgSend_setReferencedNode_(v4, v16, v15);
    v18 = objc_msgSend_decodeIntegerForKey_(coder, v17, @"loadingPolicy");
    v20 = objc_msgSend_setLoadingPolicy_(v4, v19, v18);
    v22 = sub_1AF37287C(v20, v21);
    v24 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v23, v22, @"overrides");
    objc_msgSend_setOverrides_(v4, v25, v24);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4->_sourceDocumentURL = objc_msgSend_documentURL(coder, v26, v27);
    }

    if ((objc_msgSend_containsValueForKey_(coder, v26, @"childNodes") & 1) == 0 && !v4->_loadingPolicy)
    {
      objc_msgSend_load(v4, v28, v29);
    }
  }

  return v4;
}

@end