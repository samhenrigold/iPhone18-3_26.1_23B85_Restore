@interface MDLAsset
+ (BOOL)canExportFileExtension:(NSString *)extension;
+ (BOOL)canImportFileExtension:(NSString *)extension;
+ (NSArray)placeLightProbesWithDensity:(float)value heuristic:(MDLProbePlacement)type usingIrradianceDataSource:(id)dataSource;
- (BOOL)exportAssetToURL:(NSURL *)URL error:(NSError *)error;
- (MDLAsset)init;
- (MDLAsset)initWithBufferAllocator:(id)bufferAllocator;
- (MDLAsset)initWithData:(id)data name:(id)name vertexDescriptor:(id)descriptor bufferAllocator:(id)allocator preserveTopology:(BOOL)topology error:(id *)error;
- (MDLAsset)initWithURL:(NSURL *)URL vertexDescriptor:(MDLVertexDescriptor *)vertexDescriptor bufferAllocator:(id)bufferAllocator preserveTopology:(BOOL)preserveTopology error:(NSError *)error;
- (MDLAsset)initWithURL:(id)l bufferAllocator:(id)allocator preserveIndexing:(BOOL)indexing options:(id)options error:(id *)error;
- (MDLAsset)initWithURL:(id)l options:(id)options error:(id *)error;
- (MDLObject)objectAtIndex:(NSUInteger)index;
- (MDLObject)objectAtIndexedSubscript:(NSUInteger)index;
- (MDLObject)objectAtPath:(NSString *)path;
- (NSArray)childObjectsOfClass:(Class)objectClass;
- (NSTimeInterval)endTime;
- (NSTimeInterval)startTime;
- (id)componentConformingToProtocol:(id)protocol;
- (id)components;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initThroughSCNKitBridgeWithURL:(id)l options:(id)options error:(id)error;
- (id)initThroughSCNKitBridgeWithURL:(id)l preserveTopology:(BOOL)topology error:(id)error;
- (id)objectForKeyedSubscript:(id)subscript;
- (vector_float3)upAxis;
- (void)_bounds;
- (void)_commonInit;
- (void)_conformVertexBuffers:(id)buffers error:(id *)error;
- (void)dealloc;
- (void)enumerateChildObjectsOfClass:(Class)class usingBlock:(id)block stopPointer:(BOOL *)pointer;
- (void)loadTextures;
- (void)resolveTextures;
- (void)setComponent:(id)component forProtocol:(id)protocol;
@end

@implementation MDLAsset

- (void)_commonInit
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objects = self->_objects;
  self->_objects = v3;

  v5 = objc_alloc_init(MDLObjectContainer);
  masters = self->_masters;
  self->_masters = v5;

  v7 = objc_alloc_init(MDLObjectContainer);
  animations = self->_animations;
  self->_animations = v7;

  v9 = [MDLRelativeAssetResolver alloc];
  v20 = objc_msgSend_initWithAsset_(v9, v10, self, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  resolver = self->_resolver;
  self->_resolver = v20;

  *&self->_startTime = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  self->__timeCodesPerSecond = 60.0;
  temporaryFolderURL = self->_temporaryFolderURL;
  self->_temporaryFolderURL = 0;

  v34 = objc_msgSend_meters(MEMORY[0x277CCAE20], v23, v24, v25, v30, v31, v32, v33, v26, v27, v28, v29);
  unitLength = self->_unitLength;
  self->_unitLength = v34;

  *self->_upAxis = xmmword_239F9C090;
  self->_metersPerUnit = 0.01;
  extents = self->_extents;
  self->_extents = 0;
}

- (void)_bounds
{
  v62 = *MEMORY[0x277D85DE8];
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  __asm { FMOV            V0.4S, #-1.0 }

  *a2 = _Q0;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v8 = *(self + 16);
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v57, v61, v13, v14, v15, v16, 16, v10, v11, v12);
  if (v24)
  {
    v29 = *v58;
    v30 = MEMORY[0x277D860B8];
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v58 != v29)
        {
          objc_enumerationMutation(v8);
        }

        v32 = *(*(&v57 + 1) + 8 * i);
        v33 = objc_msgSend_transform(v32, v17, v18, v19, v25, v26, v27, v28, v20, v21, v22, v23, *&v52, v53, v54, v55);
        v45 = v33;
        if (v33)
        {
          objc_msgSend_matrix(v33, v34, v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
          v52 = v46;
          v53 = v47;
          v54 = v48;
          v55 = v49;
        }

        else
        {
          v50 = *(v30 + 16);
          v52 = *v30;
          v53 = v50;
          v51 = *(v30 + 48);
          v54 = *(v30 + 32);
          v55 = v51;
        }

        sub_239EAC1C8(v32, &v52, v56);
        sub_239EB1DF0(a2, v56);
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v17, &v57, v61, v25, v26, v27, v28, 16, v21, v22, v23);
    }

    while (v24);
  }
}

- (void)setComponent:(id)component forProtocol:(id)protocol
{
  componentCopy = component;
  protocolCopy = protocol;
  components = self->_components;
  if (!components)
  {
    v17 = objc_opt_new();
    v18 = self->_components;
    self->_components = v17;

    components = self->_components;
  }

  objc_msgSend_setObject_forKey_(components, v6, componentCopy, protocolCopy, v12, v13, v14, v15, v7, v8, v9, v10);
}

- (id)componentConformingToProtocol:(id)protocol
{
  v12 = objc_msgSend_objectForKey_(self->_components, a2, protocol, v3, v8, v9, v10, v11, v4, v5, v6, v7);

  return v12;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  v12 = objc_msgSend_componentConformingToProtocol_(self, a2, subscript, v3, v8, v9, v10, v11, v4, v5, v6, v7);

  return v12;
}

- (id)components
{
  v12 = objc_msgSend_objectEnumerator(self->_components, a2, v2, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v24 = objc_msgSend_allObjects(v12, v13, v14, v15, v20, v21, v22, v23, v16, v17, v18, v19);

  return v24;
}

- (NSArray)childObjectsOfClass:(Class)objectClass
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_class();
  if ((objc_msgSend_isSubclassOfClass_(objectClass, v7, v6, v8, v13, v14, v15, v16, v9, v10, v11, v12) & 1) == 0)
  {
    v17 = MEMORY[0x277CBEAD8];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v17, v21, @"ModelIOException", @"[%@ %@]: Requested class must be an MDLObject or a subclass of MDLObject", v26, v27, v28, v29, v22, v23, v24, v25, v19, v20);
  }

  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  selfCopy = self;
  v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(selfCopy, v32, &v52, v56, v36, v37, v38, v39, 16, v33, v34, v35);
  if (v40)
  {
    v41 = *v53;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v53 != v41)
        {
          objc_enumerationMutation(selfCopy);
        }

        sub_239EAC7A0(objectClass, *(*(&v52 + 1) + 8 * i), v30);
      }

      v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(selfCopy, v43, &v52, v56, v47, v48, v49, v50, 16, v44, v45, v46);
    }

    while (v40);
  }

  return v30;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v21 = objc_msgSend_initWithString_(v3, v4, @"MDLAsset:\n", v5, v10, v11, v12, v13, v6, v7, v8, v9);
  for (i = 0; i < objc_msgSend_count(self, v14, v15, v16, v22, v23, v24, v25, v17, v18, v19, v20); ++i)
  {
    v37 = objc_msgSend_objectAtIndexedSubscript_(self, v27, i, v28, v33, v34, v35, v36, v29, v30, v31, v32);
    v49 = objc_msgSend_recursiveDescription(v37, v38, v39, v40, v45, v46, v47, v48, v41, v42, v43, v44);
    objc_msgSend_appendString_(v21, v50, v49, v51, v56, v57, v58, v59, v52, v53, v54, v55);
  }

  return v21;
}

- (void)enumerateChildObjectsOfClass:(Class)class usingBlock:(id)block stopPointer:(BOOL *)pointer
{
  v86 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v83 = 0;
  if (pointer)
  {
    pointerCopy = pointer;
  }

  else
  {
    pointerCopy = &v83;
  }

  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  selfCopy = self;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(selfCopy, v11, &v79, v85, v15, v16, v17, v18, 16, v12, v13, v14);
  if (v19)
  {
    v20 = *v80;
LABEL_6:
    v21 = 0;
    while (1)
    {
      if (*v80 != v20)
      {
        objc_enumerationMutation(selfCopy);
      }

      v22 = *(*(&v79 + 1) + 8 * v21);
      if (objc_opt_isKindOfClass())
      {
        blockCopy[2](blockCopy, v22, pointerCopy);
      }

      if (*pointerCopy)
      {
        break;
      }

      objc_msgSend_enumerateChildObjectsOfClass_root_usingBlock_stopPointer_(v22, v23, class, v22, v26, v27, v28, v29, blockCopy, pointerCopy, v24, v25);
      if (*pointerCopy)
      {
        break;
      }

      if (v19 == ++v21)
      {
        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(selfCopy, v30, &v79, v85, v34, v35, v36, v37, 16, v31, v32, v33);
        if (v19)
        {
          goto LABEL_6;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    selfCopy = objc_msgSend_masters(selfCopy, v38, v39, v40, 0, v45, v46, v47, v41, v42, v43, v44, 0);
    v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(selfCopy, v48, &v75, v84, v52, v53, v54, v55, 16, v49, v50, v51);
    if (v56)
    {
      v57 = *v76;
LABEL_17:
      v58 = 0;
      while (1)
      {
        if (*v76 != v57)
        {
          objc_enumerationMutation(selfCopy);
        }

        v59 = *(*(&v75 + 1) + 8 * v58);
        if (objc_opt_isKindOfClass())
        {
          blockCopy[2](blockCopy, v59, pointerCopy);
        }

        if (*pointerCopy)
        {
          break;
        }

        objc_msgSend_enumerateChildObjectsOfClass_root_usingBlock_stopPointer_(v59, v60, class, v59, v63, v64, v65, v66, blockCopy, pointerCopy, v61, v62);
        if (*pointerCopy)
        {
          break;
        }

        if (v56 == ++v58)
        {
          v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(selfCopy, v67, &v75, v84, v71, v72, v73, v74, 16, v68, v69, v70);
          if (v56)
          {
            goto LABEL_17;
          }

          break;
        }
      }
    }
  }
}

- (void)resolveTextures
{
  v13 = 0;
  v3 = objc_opt_class();
  v12[0] = MEMORY[0x277D85DD0];
  v4.n128_u64[0] = 3221225472;
  v12[1] = 3221225472;
  v12[2] = sub_239EACD60;
  v12[3] = &unk_278B40F58;
  v12[4] = self;
  objc_msgSend_enumerateChildObjectsOfClass_usingBlock_stopPointer_(self, v5, v3, v12, v4, v9, v10, v11, &v13, v6, v7, v8);
}

- (void)loadTextures
{
  v16 = 0;
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_opt_class();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_239EACF88;
  v14[3] = &unk_278B40F80;
  v14[4] = self;
  v5 = v3;
  v15 = v5;
  objc_msgSend_enumerateChildObjectsOfClass_usingBlock_stopPointer_(self, v6, v4, v14, v10, v11, v12, v13, &v16, v7, v8, v9);
}

- (NSTimeInterval)startTime
{
  v93 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v14 = objc_msgSend_childObjectsOfClass_(self, v4, v3, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  startTime = self->_startTime;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v16 = v14;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v88, v92, v21, v22, v23, v24, 16, v18, v19, v20);
  if (v32)
  {
    v37 = *v89;
    do
    {
      v38 = 0;
      do
      {
        if (*v89 != v37)
        {
          objc_enumerationMutation(v16);
        }

        v39 = objc_msgSend_transform(*(*(&v88 + 1) + 8 * v38), v25, v26, v27, v33, v34, v35, v36, v28, v29, v30, v31, v88);
        v51 = v39;
        if (v39)
        {
          objc_msgSend_minimumTime(v39, v40, v41, v42, v47, v48, v49, v50, v43, v44, v45, v46);
          v53 = v52.n128_f64[0];
          objc_msgSend_maximumTime(v51, v54, v55, v56, v52, v61, v62, v63, v57, v58, v59, v60);
          if (v53 != v71.n128_f64[0])
          {
            objc_msgSend_minimumTime(v51, v64, v65, v66, v71, v72, v73, v74, v67, v68, v69, v70);
            if (v82.n128_f64[0] < startTime)
            {
              objc_msgSend_minimumTime(v51, v75, v76, v77, v82, v83, v84, v85, v78, v79, v80, v81);
              startTime = v86;
            }
          }
        }

        ++v38;
      }

      while (v32 != v38);
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v25, &v88, v92, v33, v34, v35, v36, 16, v29, v30, v31);
    }

    while (v32);
  }

  if (startTime == 1.79769313e308)
  {
    startTime = 0.0;
  }

  return startTime;
}

- (NSTimeInterval)endTime
{
  v94 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v14 = objc_msgSend_childObjectsOfClass_(self, v4, v3, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  endTime = self->_endTime;
  v89 = 0u;
  v90 = 0u;
  if (endTime == 1.79769313e308)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = endTime;
  }

  v91 = 0uLL;
  v92 = 0uLL;
  v17 = v14;
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v89, v93, v22, v23, v24, v25, 16, v19, v20, v21);
  if (v33)
  {
    v38 = *v90;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v90 != v38)
        {
          objc_enumerationMutation(v17);
        }

        v40 = objc_msgSend_transform(*(*(&v89 + 1) + 8 * i), v26, v27, v28, v34, v35, v36, v37, v29, v30, v31, v32, v89);
        v52 = v40;
        if (v40)
        {
          objc_msgSend_minimumTime(v40, v41, v42, v43, v48, v49, v50, v51, v44, v45, v46, v47);
          v54 = v53.n128_f64[0];
          objc_msgSend_maximumTime(v52, v55, v56, v57, v53, v62, v63, v64, v58, v59, v60, v61);
          if (v54 != v72.n128_f64[0])
          {
            objc_msgSend_maximumTime(v52, v65, v66, v67, v72, v73, v74, v75, v68, v69, v70, v71);
            if (v83.n128_f64[0] > v16)
            {
              objc_msgSend_maximumTime(v52, v76, v77, v78, v83, v84, v85, v86, v79, v80, v81, v82);
              v16 = v87;
            }
          }
        }
      }

      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v26, &v89, v93, v34, v35, v36, v37, 16, v30, v31, v32);
    }

    while (v33);
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  v15 = objc_msgSend_allocWithZone_(v4, v5, zone, v6, v11, v12, v13, v14, v7, v8, v9, v10);

  return objc_msgSend_init(v15, v16, v17, v18, v23, v24, v25, v26, v19, v20, v21, v22);
}

+ (BOOL)canExportFileExtension:(NSString *)extension
{
  v12 = objc_msgSend_lowercaseString(extension, a2, extension, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  if (objc_msgSend_isEqualToString_(v12, v13, @"obj", v14, v19, v20, v21, v22, v15, v16, v17, v18) & 1) != 0 || (objc_msgSend_isEqualToString_(v12, v23, @"stl", v24, v29, v30, v31, v32, v25, v26, v27, v28) & 1) != 0 || (objc_msgSend_isEqualToString_(v12, v33, @"abc", v34, v39, v40, v41, v42, v35, v36, v37, v38) & 1) != 0 || (objc_msgSend_isEqualToString_(v12, v43, @"ply", v44, v49, v50, v51, v52, v45, v46, v47, v48) & 1) != 0 || (objc_msgSend_isEqualToString_(v12, v53, @"usd", v54, v59, v60, v61, v62, v55, v56, v57, v58) & 1) != 0 || (objc_msgSend_isEqualToString_(v12, v63, @"usda", v64, v69, v70, v71, v72, v65, v66, v67, v68))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v12, v73, @"usdc", v74, v79, v80, v81, v82, v75, v76, v77, v78);
  }

  return isEqualToString;
}

+ (BOOL)canImportFileExtension:(NSString *)extension
{
  v12 = objc_msgSend_lowercaseString(extension, a2, extension, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  if (objc_msgSend_isEqualToString_(v12, v13, @"abc", v14, v19, v20, v21, v22, v15, v16, v17, v18) & 1) != 0 || (objc_msgSend_isEqualToString_(v12, v23, @"usd", v24, v29, v30, v31, v32, v25, v26, v27, v28) & 1) != 0 || (objc_msgSend_isEqualToString_(v12, v33, @"usda", v34, v39, v40, v41, v42, v35, v36, v37, v38) & 1) != 0 || (objc_msgSend_isEqualToString_(v12, v43, @"usdc", v44, v49, v50, v51, v52, v45, v46, v47, v48) & 1) != 0 || (objc_msgSend_isEqualToString_(v12, v53, @"usdz", v54, v59, v60, v61, v62, v55, v56, v57, v58) & 1) != 0 || (objc_msgSend_isEqualToString_(v12, v63, @"obj", v64, v69, v70, v71, v72, v65, v66, v67, v68) & 1) != 0 || (objc_msgSend_isEqualToString_(v12, v73, @"ply", v74, v79, v80, v81, v82, v75, v76, v77, v78))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v12, v83, @"stl", v84, v89, v90, v91, v92, v85, v86, v87, v88);
  }

  return isEqualToString;
}

- (MDLAsset)init
{
  v29.receiver = self;
  v29.super_class = MDLAsset;
  v2 = [(MDLAsset *)&v29 init];
  if (v2)
  {
    v3 = objc_alloc_init(MDLMeshBufferDataAllocator);
    bufferAllocator = v2->_bufferAllocator;
    v2->_bufferAllocator = v3;

    objc_msgSend__commonInit(v2, v5, v6, v7, v12, v13, v14, v15, v8, v9, v10, v11);
    sub_239F45530(0, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    v27 = v2;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_temporaryFolderURL)
  {
    v13 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, v2, v3, v8, v9, v10, v11, v4, v5, v6, v7);
    temporaryFolderURL = self->_temporaryFolderURL;
    v39 = 0;
    v24 = objc_msgSend_removeItemAtURL_error_(v13, v15, temporaryFolderURL, &v39, v20, v21, v22, v23, v16, v17, v18, v19);
    v25 = v39;

    if ((v24 & 1) == 0)
    {
      v37 = objc_msgSend_path(self->_temporaryFolderURL, v26, v27, v28, v33, v34, v35, v36, v29, v30, v31, v32);
      NSLog(&cfstr_FailedToRemove.isa, v37);
    }
  }

  else
  {
    v25 = 0;
  }

  v38.receiver = self;
  v38.super_class = MDLAsset;
  [(MDLAsset *)&v38 dealloc];
}

- (MDLAsset)initWithBufferAllocator:(id)bufferAllocator
{
  v4 = bufferAllocator;
  v32.receiver = self;
  v32.super_class = MDLAsset;
  v5 = [(MDLAsset *)&v32 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = objc_alloc_init(MDLMeshBufferDataAllocator);
    }

    v7 = v5->_bufferAllocator;
    v5->_bufferAllocator = v6;

    objc_msgSend__commonInit(v5, v8, v9, v10, v15, v16, v17, v18, v11, v12, v13, v14);
    sub_239F45530(v4 != 0, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
    v30 = v5;
  }

  return v5;
}

- (void)_conformVertexBuffers:(id)buffers error:(id *)error
{
  v611 = *MEMORY[0x277D85DE8];
  obj = buffers;
  buffersCopy = buffers;
  v15 = buffersCopy;
  if (buffersCopy)
  {
    v607 = 0u;
    v608 = 0u;
    v605 = 0u;
    v606 = 0u;
    v16 = objc_msgSend_layouts(buffersCopy, v5, v6, v7, 0, v12, v13, v14, v8, v9, v10, v11);
    v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v605, v610, v21, v22, v23, v24, 16, v18, v19, v20);
    if (!v32)
    {
LABEL_40:

      goto LABEL_41;
    }

    v37 = 0;
    v38 = *v606;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v606 != v38)
        {
          objc_enumerationMutation(v16);
        }

        if (objc_msgSend_stride(*(*(&v605 + 1) + 8 * i), v25, v26, v27, v33, v34, v35, v36, v28, v29, v30, v31, obj))
        {
          ++v37;
        }
      }

      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v25, &v605, v610, v33, v34, v35, v36, 16, v29, v30, v31);
    }

    while (v32);

    if (v37)
    {
      if (!self->_bufferAllocator)
      {
        v51 = objc_alloc_init(MDLMeshBufferDataAllocator);
        bufferAllocator = self->_bufferAllocator;
        self->_bufferAllocator = v51;
      }

      v53 = objc_msgSend_layouts(v15, v40, v41, v42, v47, v48, v49, v50, v43, v44, v45, v46);
      v65 = objc_msgSend_count(v53, v54, v55, v56, v61, v62, v63, v64, v57, v58, v59, v60);
      p_vertexDescriptor = &self->_vertexDescriptor;
      v78 = objc_msgSend_layouts(self->_vertexDescriptor, v67, v68, v69, v74, v75, v76, v77, v70, v71, v72, v73);
      v90 = v65 != objc_msgSend_count(v78, v79, v80, v81, v86, v87, v88, v89, v82, v83, v84, v85);

      for (j = 0; ; ++j)
      {
        v103 = objc_msgSend_layouts(v15, v91, v92, v93, v98, v99, v100, v101, v94, v95, v96, v97);
        v115 = objc_msgSend_count(v103, v104, v105, v106, v111, v112, v113, v114, v107, v108, v109, v110) <= j;

        if ((v115 | v90))
        {
          break;
        }

        v127 = objc_msgSend_layouts(v15, v116, v117, v118, v123, v124, v125, v126, v119, v120, v121, v122);
        v138 = objc_msgSend_objectAtIndexedSubscript_(v127, v128, j, v129, v134, v135, v136, v137, v130, v131, v132, v133);
        v150 = objc_msgSend_stride(v138, v139, v140, v141, v146, v147, v148, v149, v142, v143, v144, v145);
        v162 = objc_msgSend_layouts(*p_vertexDescriptor, v151, v152, v153, v158, v159, v160, v161, v154, v155, v156, v157);
        v173 = objc_msgSend_objectAtIndexedSubscript_(v162, v163, j, v164, v169, v170, v171, v172, v165, v166, v167, v168);
        v90 = v150 != objc_msgSend_stride(v173, v174, v175, v176, v181, v182, v183, v184, v177, v178, v179, v180);
      }

      for (k = 0; ; ++k)
      {
        v186 = objc_msgSend_attributes(v15, v116, v117, v118, v123, v124, v125, v126, v119, v120, v121, v122);
        v198 = objc_msgSend_count(v186, v187, v188, v189, v194, v195, v196, v197, v190, v191, v192, v193) <= k;

        if ((v198 | v90))
        {
          break;
        }

        v210 = objc_msgSend_attributes(v15, v199, v200, v201, v206, v207, v208, v209, v202, v203, v204, v205);
        v221 = objc_msgSend_objectAtIndexedSubscript_(v210, v211, k, v212, v217, v218, v219, v220, v213, v214, v215, v216);
        v233 = objc_msgSend_name(v221, v222, v223, v224, v229, v230, v231, v232, v225, v226, v227, v228);
        v245 = objc_msgSend_attributes(*p_vertexDescriptor, v234, v235, v236, v241, v242, v243, v244, v237, v238, v239, v240);
        v256 = objc_msgSend_objectAtIndexedSubscript_(v245, v246, k, v247, v252, v253, v254, v255, v248, v249, v250, v251);
        v268 = objc_msgSend_name(v256, v257, v258, v259, v264, v265, v266, v267, v260, v261, v262, v263);
        isEqualToString = objc_msgSend_isEqualToString_(v233, v269, v268, v270, v275, v276, v277, v278, v271, v272, v273, v274);

        v291 = objc_msgSend_attributes(v15, v280, v281, v282, v287, v288, v289, v290, v283, v284, v285, v286);
        v302 = objc_msgSend_objectAtIndexedSubscript_(v291, v292, k, v293, v298, v299, v300, v301, v294, v295, v296, v297);
        v314 = objc_msgSend_format(v302, v303, v304, v305, v310, v311, v312, v313, v306, v307, v308, v309);
        v326 = objc_msgSend_attributes(*p_vertexDescriptor, v315, v316, v317, v322, v323, v324, v325, v318, v319, v320, v321);
        v337 = objc_msgSend_objectAtIndexedSubscript_(v326, v327, k, v328, v333, v334, v335, v336, v329, v330, v331, v332);
        if (v314 == objc_msgSend_format(v337, v338, v339, v340, v345, v346, v347, v348, v341, v342, v343, v344))
        {
          v90 = isEqualToString ^ 1;
        }

        else
        {
          v90 = 1;
        }

        v360 = objc_msgSend_attributes(v15, v349, v350, v351, v356, v357, v358, v359, v352, v353, v354, v355);
        v371 = objc_msgSend_objectAtIndexedSubscript_(v360, v361, k, v362, v367, v368, v369, v370, v363, v364, v365, v366);
        v383 = objc_msgSend_offset(v371, v372, v373, v374, v379, v380, v381, v382, v375, v376, v377, v378);
        v395 = objc_msgSend_attributes(*p_vertexDescriptor, v384, v385, v386, v391, v392, v393, v394, v387, v388, v389, v390);
        v406 = objc_msgSend_objectAtIndexedSubscript_(v395, v396, k, v397, v402, v403, v404, v405, v398, v399, v400, v401);
        if (v383 != objc_msgSend_offset(v406, v407, v408, v409, v414, v415, v416, v417, v410, v411, v412, v413))
        {
          v90 = 1;
        }

        v429 = objc_msgSend_attributes(v15, v418, v419, v420, v425, v426, v427, v428, v421, v422, v423, v424);
        v440 = objc_msgSend_objectAtIndexedSubscript_(v429, v430, k, v431, v436, v437, v438, v439, v432, v433, v434, v435);
        v452 = objc_msgSend_bufferIndex(v440, v441, v442, v443, v448, v449, v450, v451, v444, v445, v446, v447);
        v464 = objc_msgSend_attributes(*p_vertexDescriptor, v453, v454, v455, v460, v461, v462, v463, v456, v457, v458, v459);
        v475 = objc_msgSend_objectAtIndexedSubscript_(v464, v465, k, v466, v471, v472, v473, v474, v467, v468, v469, v470);
        if (v452 != objc_msgSend_bufferIndex(v475, v476, v477, v478, v483, v484, v485, v486, v479, v480, v481, v482))
        {
          v90 = 1;
        }

        v498 = objc_msgSend_attributes(v15, v487, v488, v489, v494, v495, v496, v497, v490, v491, v492, v493);
        v509 = objc_msgSend_objectAtIndexedSubscript_(v498, v499, k, v500, v505, v506, v507, v508, v501, v502, v503, v504);
        objc_msgSend_time(v509, v510, v511, v512, v517, v518, v519, v520, v513, v514, v515, v516);
        v522 = v521.n128_f64[0];
        v533 = objc_msgSend_attributes(*p_vertexDescriptor, v523, v524, v525, v521, v530, v531, v532, v526, v527, v528, v529);
        v544 = objc_msgSend_objectAtIndexedSubscript_(v533, v534, k, v535, v540, v541, v542, v543, v536, v537, v538, v539);
        objc_msgSend_time(v544, v545, v546, v547, v552, v553, v554, v555, v548, v549, v550, v551);
        if (v522 != v556)
        {
          v90 = 1;
        }
      }

      if (v90)
      {
        v557 = objc_opt_class();
        objc_msgSend_childObjectsOfClass_(self, v558, v557, v559, v564, v565, v566, v567, v560, v561, v562, v563);
        v603 = 0u;
        v604 = 0u;
        v601 = 0u;
        v16 = v602 = 0u;
        v576 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v568, &v601, v609, v572, v573, v574, v575, 16, v569, v570, v571);
        if (v576)
        {
          v577 = *v602;
          do
          {
            for (m = 0; m != v576; ++m)
            {
              if (*v602 != v577)
              {
                objc_enumerationMutation(v16);
              }

              v579 = *(*(&v601 + 1) + 8 * m);
              v590 = v579;
              if (v579)
              {
                objc_msgSend_setVertexDescriptor_(v579, v580, v15, v581, v586, v587, v588, v589, v582, v583, v584, v585);
              }
            }

            v576 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v591, &v601, v609, v595, v596, v597, v598, 16, v592, v593, v594);
          }

          while (v576);
        }

        objc_storeStrong(p_vertexDescriptor, obj);
        goto LABEL_40;
      }
    }
  }

LABEL_41:
}

- (MDLAsset)initWithData:(id)data name:(id)name vertexDescriptor:(id)descriptor bufferAllocator:(id)allocator preserveTopology:(BOOL)topology error:(id *)error
{
  dataCopy = data;
  nameCopy = name;
  descriptorCopy = descriptor;
  allocatorCopy = allocator;
  v147.receiver = self;
  v147.super_class = MDLAsset;
  v18 = [(MDLAsset *)&v147 init];
  if (!v18)
  {
    goto LABEL_33;
  }

  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  *v144 = 0u;
  *obj = 0u;
  HIDWORD(v143) = 1070141403;
  LOBYTE(v144[0]) = 1;
  WORD1(v144[0]) = 256;
  HIDWORD(v144[0]) = 1078530011;
  sub_239E552A0(&v144[1], "");
  v146 = 0uLL;
  if (allocatorCopy)
  {
    objc_storeStrong(&v143, allocator);
  }

  if (descriptorCopy)
  {
    objc_storeStrong(&obj[1], descriptor);
  }

  LOBYTE(obj[0]) = topology;
  if (v143)
  {
    v19 = v143;
  }

  else
  {
    v19 = objc_opt_new();
  }

  bufferAllocator = v18->_bufferAllocator;
  v18->_bufferAllocator = v19;

  *v18->_upAxis = xmmword_239F9C090;
  v18->_metersPerUnit = 0.01;
  objc_msgSend__commonInit(v18, v21, v22, v23, xmmword_239F9C090, v28, v29, v30, v24, v25, v26, v27);
  v42 = objc_msgSend_pathExtension(nameCopy, v31, v32, v33, v38, v39, v40, v41, v34, v35, v36, v37);
  v54 = objc_msgSend_lowercaseString(v42, v43, v44, v45, v50, v51, v52, v53, v46, v47, v48, v49);

  if (!objc_msgSend_isEqualToString_(v54, v55, @"usdz", v56, v61, v62, v63, v64, v57, v58, v59, v60))
  {
    if (error)
    {
      v78 = MEMORY[0x277CCACA8];
      v79 = objc_opt_class();
      v80 = NSStringFromClass(v79);
      v81 = NSStringFromSelector(a2);
      v92 = objc_msgSend_stringWithFormat_(v78, v82, @"[%@ %@]: only accepts usdz file", v83, v88, v89, v90, v91, v84, v85, v86, v87, v80, v81);

      *error = sub_239EADFF4(v92);
    }

    v93 = 0;
    goto LABEL_30;
  }

  v141 = 0;
  memset(v140, 0, sizeof(v140));
  sub_239E55EAC(v140, 0);
  if (obj[1])
  {
    if (sub_239EAE0E8(obj[1], v65, v66, v67, v68, v69, v70, v71, v72.n128_f64[0], v73, v74, v75))
    {
      v76 = obj[1];
      vertexDescriptor = v18->_vertexDescriptor;
      v18->_vertexDescriptor = v76;
    }

    else
    {
      NSLog(&cfstr_WarningNoValid.isa);
      vertexDescriptor = v18->_vertexDescriptor;
      v18->_vertexDescriptor = 0;
    }
  }

  v94 = objc_msgSend_centimeters(MEMORY[0x277CCAE20], v65, v66, v67, v72, v73, v74, v75, v68, v69, v70, v71);
  unitLength = v18->_unitLength;
  v18->_unitLength = v94;

  __p = 0;
  v138 = 0;
  v139 = 0;
  sub_239F16834(nameCopy, dataCopy, v18, &__p);
  v105 = HIBYTE(v139);
  if (v139 < 0)
  {
    v105 = v138;
  }

  if (!v105)
  {
    v119 = 0;
    goto LABEL_35;
  }

  v106 = objc_alloc(MEMORY[0x277CCACA8]);
  if (v139 >= 0)
  {
    v117 = objc_msgSend_initWithUTF8String_(v106, v107, &__p, v108, v113, v114, v115, v116, v109, v110, v111, v112);
  }

  else
  {
    v117 = objc_msgSend_initWithUTF8String_(v106, v107, __p, v108, v113, v114, v115, v116, v109, v110, v111, v112);
  }

  v118 = v117;
  v93 = sub_239EADFF4(v117);
  v119 = v118;
  if (!v93)
  {
LABEL_35:
    v123 = obj[1];
    if (!obj[1])
    {
      objc_storeStrong(&obj[1], v18->_vertexDescriptor);
      v123 = obj[1];
    }

    v136 = 0;
    objc_msgSend__conformVertexBuffers_error_(v18, v96, v123, &v136, v101, v102, v103, v104, v97, v98, v99, v100);
    v93 = v136;
    objc_storeStrong(&v18->_vertexDescriptor, obj[1]);
    if (!v93)
    {
      objc_msgSend_resolveTextures(v18, v124, v125, v126, v131, v132, v133, v134, v127, v128, v129, v130);
      v93 = 0;
    }

    v118 = v119;
    if (!error)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (error)
  {
LABEL_26:
    v120 = v93;
    *error = v93;
  }

LABEL_27:

  if (SHIBYTE(v139) < 0)
  {
    operator delete(__p);
  }

  sub_239F167C0(v140);
LABEL_30:
  v121 = v18;

  if (SHIBYTE(v145) < 0)
  {
    operator delete(v144[1]);
  }

LABEL_33:
  return v18;
}

- (MDLAsset)initWithURL:(id)l options:(id)options error:(id *)error
{
  lCopy = l;
  optionsCopy = options;
  v431.receiver = self;
  v431.super_class = MDLAsset;
  v11 = [(MDLAsset *)&v431 init];
  if (!v11)
  {
    goto LABEL_139;
  }

  v429 = 0u;
  v430 = 0u;
  v427 = 0u;
  v428 = 0u;
  v426 = 0u;
  HIDWORD(v427) = 1070141403;
  LOBYTE(v428) = 1;
  WORD1(v428) = 256;
  DWORD1(v428) = 1078530011;
  sub_239E552A0(&v428 + 1, "");
  v430 = 0uLL;
  sub_239E55358(optionsCopy, &v426);
  objc_storeStrong(&v11->_URL, l);
  if (v427)
  {
    v12 = v427;
  }

  else
  {
    v12 = objc_opt_new();
  }

  bufferAllocator = v11->_bufferAllocator;
  v11->_bufferAllocator = v12;

  objc_msgSend__commonInit(v11, v14, v15, v16, v21, v22, v23, v24, v17, v18, v19, v20);
  URL = v11->_URL;
  if (!URL)
  {
    goto LABEL_135;
  }

  memset(&__str, 0, sizeof(__str));
  v37 = objc_msgSend_path(URL, v25, v26, v27, v32, v33, v34, v35, v28, v29, v30, v31);
  v38 = v37;
  v49 = objc_msgSend_cStringUsingEncoding_(v38, v39, 4, v40, v45, v46, v47, v48, v41, v42, v43, v44);
  sub_239E552A0(&__str, v49);

  v50 = std::string::rfind(&__str, 46, 0xFFFFFFFFFFFFFFFFLL);
  v423 = 0uLL;
  v424 = 0;
  if (v50 == -1)
  {
    v79 = *(&v426 + 1);
    v80 = v427;
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, &v423, v52, v57, v58, v59, v60, v53, v54, v55, v56);
  }

  else
  {
    std::string::basic_string(v393, &__str, v50 + 1, 0xFFFFFFFFFFFFFFFFLL, &v416);
    if (SHIBYTE(v424) < 0)
    {
      operator delete(v423);
    }

    v424 = *&v393[16];
    v70 = *v393;
    v423 = *v393;
    if (v393[23] >= 0)
    {
      v71 = SHIBYTE(v424);
    }

    else
    {
      v71 = *(&v423 + 1);
    }

    v72 = HIBYTE(v424);
    if (v71)
    {
      v73 = 0;
      v74 = v393[23] >> 63;
      do
      {
        v75 = v423;
        if ((v74 & 1) == 0)
        {
          v75 = &v423;
        }

        v76 = __toupper(*(v75 + v73));
        if (v424 >= 0)
        {
          v77 = &v423;
        }

        else
        {
          v77 = v423;
        }

        *(v77 + v73++) = v76;
        v72 = HIBYTE(v424);
        v74 = SHIBYTE(v424) >> 63;
        v78 = *(&v423 + 1);
        if (v424 >= 0)
        {
          v78 = SHIBYTE(v424);
        }
      }

      while (v73 < v78);
    }

    v79 = *(&v426 + 1);
    v80 = v427;
    if (v72 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, &v423, v62, v70, v67, v68, v69, v63, v64, v65, v66);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, v423, v62, v70, v67, v68, v69, v63, v64, v65, v66);
    }
  }
  v81 = ;
  sub_239E55914(v81, v80 != 0, v79 != 0, v11->_isSceneKitBridged);

  if ((SHIBYTE(v424) & 0x80000000) == 0)
  {
    if (SHIBYTE(v424) == 3)
    {
      v82 = &v423;
      goto LABEL_31;
    }

LABEL_35:
    v391 = 0;
    v86 = 1;
    goto LABEL_36;
  }

  if (*(&v423 + 1) != 3)
  {
    goto LABEL_35;
  }

  v82 = v423;
LABEL_31:
  v83 = *v82;
  v84 = *(v82 + 2);
  if (v83 != 21587 || v84 != 76)
  {
    goto LABEL_35;
  }

  v128 = objc_alloc(MEMORY[0x277CBEA90]);
  v129 = v11->_URL;
  v422 = 0;
  v391 = objc_msgSend_initWithContentsOfURL_options_error_(v128, v130, v129, 3, v134, v135, v136, v137, &v422, v131, v132, v133);
  v138 = v422;
  v149 = v138;
  if (v138)
  {
    NSLog(&stru_284D193F8.isa, v138);
  }

  else
  {
    if (v391)
    {
      v86 = 1;
      goto LABEL_94;
    }

    v294 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v139, @"Could not load data from %@", v140, v145, v146, v147, v148, v141, v142, v143, v144, v11->_URL);
    NSLog(&stru_284D193F8.isa, v294);
  }

  v86 = 0;
LABEL_94:

LABEL_36:
  v416 = 0;
  v417 = &v416;
  v418 = 0x3032000000;
  v419 = sub_239EAF5EC;
  v420 = sub_239EAF5FC;
  v421 = 0;
  if (sub_239E55C70(v11->_URL))
  {
    byte_27DF91228 = 1;
  }

  v94 = sandbox_extension_issue_file();
  v99 = MEMORY[0x277CCACA8];
  if (!v94)
  {
    v114 = objc_msgSend_path(v11->_URL, v87, v88, v89, v95, v96, v97, v98, v90, v91, v92, v93);
    v125 = objc_msgSend_stringWithFormat_(v99, v115, @"Unable to issue extension for path %@", v116, v121, v122, v123, v124, v117, v118, v119, v120, v114);
    v126 = v417[5];
    v417[5] = v125;

    v127 = sub_239EADFF4(v417[5]);
    v100 = 0;
    NSLog(&stru_284D193F8.isa, v417[5]);
    goto LABEL_123;
  }

  v100 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v87, v94, 4, v95, v96, v97, v98, v90, v91, v92, v93);
  free(v94);
  if (v86)
  {
    v110 = objc_autoreleasePoolPush();
    v412 = 0;
    v413 = &v412;
    v414 = *"";
    v415 = 0;
    if (SHIBYTE(v424) < 0)
    {
      if (*(&v423 + 1) != 3 || (*v423 == 16975 ? (v150 = *(v423 + 2) == 74) : (v150 = 0), !v150))
      {
        if (*(&v423 + 1) != 3 || (*v423 == 19536 ? (v151 = *(v423 + 2) == 89) : (v151 = 0), !v151))
        {
          if (*(&v423 + 1) != 3)
          {
            goto LABEL_74;
          }

          v113 = v423;
LABEL_67:
          v152 = *v113;
          v153 = *(v113 + 2);
          if (v152 != 21587 || v153 != 76)
          {
            goto LABEL_74;
          }
        }
      }
    }

    else
    {
      if (SHIBYTE(v424) != 3)
      {
        goto LABEL_74;
      }

      if ((v423 != 16975 || BYTE2(v423) != 74) && (v423 != 19536 || BYTE2(v423) != 89))
      {
        v113 = &v423;
        goto LABEL_67;
      }
    }

    if ((byte_27DF91228 & 1) == 0)
    {
      v155 = objc_alloc(MEMORY[0x277CCAE80]);
      v166 = objc_msgSend_initWithServiceName_(v155, v156, @"com.apple.ModelIO.AssetLoader", v157, v162, v163, v164, v165, v158, v159, v160, v161);
      v177 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x277CCAE90], v167, &unk_284D2E178, v168, v173, v174, v175, v176, v169, v170, v171, v172);
      objc_msgSend_setRemoteObjectInterface_(v166, v178, v177, v179, v184, v185, v186, v187, v180, v181, v182, v183);

      v411[0] = MEMORY[0x277D85DD0];
      v411[1] = 3221225472;
      v411[2] = sub_239EAF604;
      v411[3] = &unk_278B40FA8;
      v411[4] = &v412;
      objc_msgSend_setInterruptionHandler_(v166, v188, v411, v189, v194, v195, v196, v197, v190, v191, v192, v193);
      v410[0] = MEMORY[0x277D85DD0];
      v410[1] = 3221225472;
      v410[2] = sub_239EAF640;
      v410[3] = &unk_278B40FA8;
      v410[4] = &v412;
      objc_msgSend_setInvalidationHandler_(v166, v198, v410, v199, v204, v205, v206, v207, v200, v201, v202, v203);
      objc_msgSend_resume(v166, v208, v209, v210, v215, v216, v217, v218, v211, v212, v213, v214);
      v409[0] = MEMORY[0x277D85DD0];
      v409[1] = 3221225472;
      v409[2] = sub_239EAF67C;
      v409[3] = &unk_278B40FD0;
      v409[4] = &v416;
      v409[5] = &v412;
      v229 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v166, v219, v409, v220, v225, v226, v227, v228, v221, v222, v223, v224);
      v230 = v11->_URL;
      v408[0] = MEMORY[0x277D85DD0];
      v408[1] = 3221225472;
      v408[2] = sub_239EAF710;
      v408[3] = &unk_278B40FF8;
      v408[4] = &v416;
      v408[5] = &v412;
      objc_msgSend_loadURL_extensionToken_withReply_(v229, v231, v230, v100, v235, v236, v237, v238, v408, v232, v233, v234);

      if (v413[3])
      {
        goto LABEL_121;
      }
    }

LABEL_74:
    if (SHIBYTE(v424) < 0)
    {
      if (*(&v423 + 1) != 3 || (*v423 == 16975 ? (v240 = *(v423 + 2) == 74) : (v240 = 0), !v240))
      {
        if (*(&v423 + 1) == 3 && *v423 == 21333 && *(v423 + 2) == 68)
        {
          goto LABEL_106;
        }

        if (*(&v423 + 1) == 4)
        {
          v239 = v423;
LABEL_90:
          if (*v239 == 1094996821)
          {
LABEL_106:
            *&v395 = 0;
            v394 = 0u;
            memset(v393, 0, sizeof(v393));
            sub_239E55EAC(v393, 0);
            if (*(&v426 + 1))
            {
              if (sub_239EAE0E8(*(&v426 + 1), v244, v245, v246, v247, v248, v249, v250, v251.n128_f64[0], v252, v253, v254))
              {
                v255 = *(&v426 + 1);
                vertexDescriptor = v11->_vertexDescriptor;
                v11->_vertexDescriptor = v255;
              }

              else
              {
                NSLog(&cfstr_WarningNoValid.isa);
                vertexDescriptor = v11->_vertexDescriptor;
                v11->_vertexDescriptor = 0;
              }
            }

            v257 = objc_msgSend_centimeters(MEMORY[0x277CCAE20], v244, v245, v246, v251, v252, v253, v254, v247, v248, v249, v250);
            unitLength = v11->_unitLength;
            v11->_unitLength = v257;

            v406 = 0;
            v407 = 0;
            __p = 0;
            sub_239E55F3C(v11->_URL, &v426, v11, &__p);
            v259 = HIBYTE(v407);
            v260 = HIBYTE(v407);
            if (v407 < 0)
            {
              v259 = v406;
            }

            if (v259)
            {
              v261 = objc_alloc(MEMORY[0x277CCACA8]);
              if (v407 >= 0)
              {
                v272 = objc_msgSend_initWithUTF8String_(v261, v262, &__p, v263, v268, v269, v270, v271, v264, v265, v266, v267);
              }

              else
              {
                v272 = objc_msgSend_initWithUTF8String_(v261, v262, __p, v263, v268, v269, v270, v271, v264, v265, v266, v267);
              }

              v273 = v417[5];
              v417[5] = v272;

              v260 = HIBYTE(v407);
            }

            if (v260 < 0)
            {
              operator delete(__p);
            }

            sub_239F167C0(v393);
            goto LABEL_121;
          }
        }

LABEL_103:
        if (sub_239E55D74(&v423, "USDC") || sub_239E55D74(&v423, "USDZ") || sub_239E55D74(&v423, "ABC"))
        {
          goto LABEL_106;
        }

        if (sub_239E55D74(&v423, "PLY") && (v413[3] & 1) == 0)
        {
          v404 = 0;
          v402 = 0u;
          v403 = 0u;
          v400 = 0u;
          v401 = 0u;
          v398 = 0u;
          v399 = 0u;
          v396 = 0u;
          v397 = 0u;
          v394 = 0u;
          v395 = 0u;
          memset(v393, 0, sizeof(v393));
          sub_239EE1FC4(v393, 0);
          v406 = 0;
          v407 = 0;
          __p = 0;
          sub_239EE5374(v393, v11->_URL, v11, &__p);
          v350 = HIBYTE(v407);
          v351 = HIBYTE(v407);
          if (v407 < 0)
          {
            v350 = v406;
          }

          if (v350)
          {
            v352 = objc_alloc(MEMORY[0x277CCACA8]);
            if (v407 >= 0)
            {
              v363 = objc_msgSend_initWithUTF8String_(v352, v353, &__p, v354, v359, v360, v361, v362, v355, v356, v357, v358);
            }

            else
            {
              v363 = objc_msgSend_initWithUTF8String_(v352, v353, __p, v354, v359, v360, v361, v362, v355, v356, v357, v358);
            }

            v364 = v417[5];
            v417[5] = v363;

            v351 = HIBYTE(v407);
          }

          if (v351 < 0)
          {
            operator delete(__p);
          }

          sub_239EE20A4(v393);
        }

        else if (sub_239E55D74(&v423, "STL") && (v413[3] & 1) == 0)
        {
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_str = &__str;
          }

          else
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          v366 = v391;
          v378 = objc_msgSend_bytes(v366, v367, v368, v369, v374, v375, v376, v377, v370, v371, v372, v373);
          v390 = objc_msgSend_length(v391, v379, v380, v381, v386, v387, v388, v389, v382, v383, v384, v385);
          sub_239EB75C0(p_str, v378, v390, v11);
        }

        else if (sub_239E55D74(&v423, "IES"))
        {
          v295 = [MDLPhotometricLight alloc];
          v306 = objc_msgSend_initWithIESProfile_(v295, v296, lCopy, v297, v302, v303, v304, v305, v298, v299, v300, v301);
          objc_msgSend_generateCubemapFromLight_(v306, v307, 128, v308, v313, v314, v315, v316, v309, v310, v311, v312);
          objc_msgSend_generateSphericalHarmonicsFromLight_(v306, v317, 3, v318, v323, v324, v325, v326, v319, v320, v321, v322);
          objc_msgSend_addObject_(v11, v327, v306, v328, v333, v334, v335, v336, v329, v330, v331, v332);
        }

        else
        {
          v337 = objc_alloc(MEMORY[0x277CCACA8]);
          v348 = objc_msgSend_initWithFormat_(v337, v338, @"Could not load asset with unknown extension from %@", v339, v344, v345, v346, v347, v340, v341, v342, v343, v11->_URL);
          v349 = v417[5];
          v417[5] = v348;
        }

LABEL_121:
        _Block_object_dispose(&v412, 8);
        objc_autoreleasePoolPop(v110);
        v274 = v417[5];
        if (v274)
        {
          v127 = sub_239EADFF4(v274);
          NSLog(&stru_284D193F8.isa, v417[5]);
LABEL_123:
          if (v127)
          {
            goto LABEL_127;
          }

          goto LABEL_124;
        }

        goto LABEL_124;
      }
    }

    else
    {
      if (HIBYTE(v424) != 3)
      {
        if (HIBYTE(v424) == 4)
        {
          v239 = &v423;
          goto LABEL_90;
        }

        goto LABEL_103;
      }

      if (v423 != 16975 || BYTE2(v423) != 74)
      {
        if (v423 == 21333 && BYTE2(v423) == 68)
        {
          goto LABEL_106;
        }

        goto LABEL_103;
      }
    }

    *&v395 = 0;
    v394 = 0u;
    memset(v393, 0, sizeof(v393));
    sub_239E8EC98(v393, 0);
    v406 = 0;
    v407 = 0;
    __p = 0;
    sub_239E8ED7C(v393, v11->_URL, &v426, v11, &__p);
    v279 = HIBYTE(v407);
    v280 = HIBYTE(v407);
    if (v407 < 0)
    {
      v279 = v406;
    }

    if (v279)
    {
      v281 = objc_alloc(MEMORY[0x277CCACA8]);
      if (v407 >= 0)
      {
        v292 = objc_msgSend_initWithUTF8String_(v281, v282, &__p, v283, v288, v289, v290, v291, v284, v285, v286, v287);
      }

      else
      {
        v292 = objc_msgSend_initWithUTF8String_(v281, v282, __p, v283, v288, v289, v290, v291, v284, v285, v286, v287);
      }

      v293 = v417[5];
      v417[5] = v292;

      v280 = HIBYTE(v407);
    }

    if (v280 < 0)
    {
      operator delete(__p);
    }

    sub_239E8ED40(v393);
    goto LABEL_121;
  }

LABEL_124:
  v275 = *(&v426 + 1);
  if (!*(&v426 + 1))
  {
    objc_storeStrong(&v426 + 1, v11->_vertexDescriptor);
    v275 = *(&v426 + 1);
  }

  v392 = 0;
  objc_msgSend__conformVertexBuffers_error_(v11, v101, v275, &v392, v106, v107, v108, v109, v102, v103, v104, v105);
  v127 = v392;
  objc_storeStrong(&v11->_vertexDescriptor, *(&v426 + 1));
LABEL_127:
  if (error)
  {
    v276 = v127;
    *error = v127;
  }

  _Block_object_dispose(&v416, 8);
  if (SHIBYTE(v424) < 0)
  {
    operator delete(v423);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if (!v127)
    {
LABEL_135:
      objc_msgSend_resolveTextures(v11, v25, v26, v27, v32, v33, v34, v35, v28, v29, v30, v31);
      v127 = 0;
    }
  }

  else if (!v127)
  {
    goto LABEL_135;
  }

  v277 = v11;

  if (SHIBYTE(v429) < 0)
  {
    operator delete(*(&v428 + 1));
  }

LABEL_139:
  return v11;
}

- (MDLAsset)initWithURL:(NSURL *)URL vertexDescriptor:(MDLVertexDescriptor *)vertexDescriptor bufferAllocator:(id)bufferAllocator preserveTopology:(BOOL)preserveTopology error:(NSError *)error
{
  v8 = preserveTopology;
  v12 = URL;
  v13 = vertexDescriptor;
  v14 = bufferAllocator;
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v26 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v16, v8, v17, v22, v23, v24, v25, v18, v19, v20, v21);
  objc_msgSend_setObject_forKeyedSubscript_(v15, v27, v26, @"kMDLAssetPreserveTopology", v32, v33, v34, v35, v28, v29, v30, v31);

  if (v14)
  {
    objc_msgSend_setObject_forKey_(v15, v36, v14, @"kMDLAssetBufferAllocator", v41, v42, v43, v44, v37, v38, v39, v40);
  }

  if (v13)
  {
    objc_msgSend_setObject_forKey_(v15, v36, v13, @"kMDLAssetVertexDescriptor", v41, v42, v43, v44, v37, v38, v39, v40);
  }

  v45 = objc_msgSend_initWithURL_options_error_(self, v36, v12, v15, v41, v42, v43, v44, error, v38, v39, v40);

  return v45;
}

- (id)initThroughSCNKitBridgeWithURL:(id)l preserveTopology:(BOOL)topology error:(id)error
{
  topologyCopy = topology;
  v41[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  errorCopy = error;
  v40 = @"kMDLAssetPreserveTopology";
  v20 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v10, topologyCopy, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v41[0] = v20;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v41, &v40, v25, v26, v27, v28, 1, v22, v23, v24);
  inited = objc_msgSend_initThroughSCNKitBridgeWithURL_options_error_(self, v30, lCopy, v29, v34, v35, v36, v37, errorCopy, v31, v32, v33);

  return inited;
}

- (id)initThroughSCNKitBridgeWithURL:(id)l options:(id)options error:(id)error
{
  lCopy = l;
  optionsCopy = options;
  errorCopy = error;
  self->_isSceneKitBridged = 1;
  v21 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v11, @"kMDLAssetPreserveTopology", v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v33 = objc_msgSend_BOOLValue(v21, v22, v23, v24, v29, v30, v31, v32, v25, v26, v27, v28);

  if (v33)
  {
    v47 = errorCopy;
    v40 = &v47;
    v41 = objc_msgSend_initWithURL_bufferAllocator_preserveIndexing_options_error_(self, v34, lCopy, 0, v36, v37, v38, v39, 1, optionsCopy, &v47, v35);
  }

  else
  {
    v46 = errorCopy;
    v40 = &v46;
    v41 = objc_msgSend_initWithURL_vertexDescriptor_bufferAllocator_preserveTopology_error_(self, v34, lCopy, 0, v36, v37, v38, v39, 0, 0, &v46, v35);
  }

  v42 = v41;
  v43 = *v40;

  v44 = v42;
  return v44;
}

- (MDLAsset)initWithURL:(id)l bufferAllocator:(id)allocator preserveIndexing:(BOOL)indexing options:(id)options error:(id *)error
{
  indexingCopy = indexing;
  lCopy = l;
  allocatorCopy = allocator;
  optionsCopy = options;
  memset(&v138, 0, sizeof(v138));
  sub_239EAF8EC(lCopy, &v138, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
  v24 = 0;
  v25 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
  v26 = *&v138.__r_.__value_.__l.__data_;
  while (1)
  {
    v27 = strlen(off_278B41018[v24]);
    v34 = v27;
    if ((v25 & 0x80) != 0)
    {
      break;
    }

    if (v27 == v25)
    {
      v35 = &v138;
      goto LABEL_7;
    }

LABEL_8:
    if (++v24 == 4)
    {
      v37 = optionsCopy;
      v36 = allocatorCopy;
      v38 = objc_msgSend_initWithURL_vertexDescriptor_bufferAllocator_preserveTopology_error_(self, v28, lCopy, 0, v30, v31, v32, v33, allocatorCopy, indexingCopy, error, v29);
LABEL_10:
      v39 = 0;
      goto LABEL_11;
    }
  }

  if (v27 != *(&v26 + 1))
  {
    goto LABEL_8;
  }

  v35 = v26;
  if (*(&v26 + 1) == -1)
  {
    sub_239E98910();
  }

LABEL_7:
  if (memcmp(v35, off_278B41018[v24], v34))
  {
    goto LABEL_8;
  }

  v137.receiver = self;
  v137.super_class = MDLAsset;
  v37 = optionsCopy;
  v36 = allocatorCopy;
  v41 = [(MDLAsset *)&v137 init];
  v38 = v41;
  if (!v41)
  {
    goto LABEL_10;
  }

  objc_storeStrong(&v41->_URL, l);
  if (allocatorCopy)
  {
    v42 = allocatorCopy;
  }

  else
  {
    v42 = objc_alloc_init(MDLMeshBufferDataAllocator);
  }

  bufferAllocator = v38->_bufferAllocator;
  v38->_bufferAllocator = v42;

  *v38->_upAxis = xmmword_239F9C090;
  v38->_metersPerUnit = 0.01;
  objc_msgSend__commonInit(v38, v44, v45, v46, xmmword_239F9C090, v51, v52, v53, v47, v48, v49, v50);
  if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, &v138, v55, v60, v61, v62, v63, v56, v57, v58, v59);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v138.__r_.__value_.__l.__data_, v55, v60, v61, v62, v63, v56, v57, v58, v59);
  }
  v64 = ;
  sub_239E55914(v64, allocatorCopy == 0, 0, v38->_isSceneKitBridged);

  v135 = 0uLL;
  v136 = 0;
  v131 = 0u;
  *__p = 0u;
  v133 = 0u;
  v134 = 0u;
  v130 = 0u;
  HIDWORD(v131) = 1070141403;
  WORD1(__p[0]) = 256;
  HIDWORD(__p[0]) = 1078530011;
  LOBYTE(__p[0]) = 1;
  sub_239E552A0(&__p[1], "");
  v134 = 0uLL;
  LOBYTE(v130) = 1;
  BYTE1(v130) = indexingCopy;
  *(&v134 + 1) = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v65, @"kMDLAssetDefaultUSDColorSpace", v66, v71, v72, v73, v74, v67, v68, v69, v70);

  v75 = objc_autoreleasePoolPush();
  if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) == 3)
    {
      v76 = &v138;
      goto LABEL_26;
    }

    goto LABEL_30;
  }

  if (v138.__r_.__value_.__l.__size_ != 3)
  {
    goto LABEL_30;
  }

  v76 = v138.__r_.__value_.__r.__words[0];
LABEL_26:
  data_low = LOWORD(v76->__r_.__value_.__l.__data_);
  v78 = v76->__r_.__value_.__s.__data_[2];
  if (data_low == 16975 && v78 == 74)
  {
    v129 = 0;
    v127 = 0u;
    v128 = 0u;
    v126 = 0u;
    sub_239E8EC98(&v126, 0);
    sub_239E8ED7C(&v126, v38->_URL, &v130, v38, &v124);
    if (SHIBYTE(v136) < 0)
    {
      operator delete(v135);
    }

    v136 = v125;
    v135 = v124;
    v107 = HIBYTE(v125);
    if ((v125 & 0x8000000000000000) != 0)
    {
      v107 = *(&v135 + 1);
    }

    if (v107)
    {
      v108 = objc_alloc(MEMORY[0x277CCACA8]);
      if (v136 >= 0)
      {
        v119 = objc_msgSend_initWithUTF8String_(v108, v109, &v135, v110, v115, v116, v117, v118, v111, v112, v113, v114);
      }

      else
      {
        v119 = objc_msgSend_initWithUTF8String_(v108, v109, v135, v110, v115, v116, v117, v118, v111, v112, v113, v114);
      }

      v120 = v119;
      v39 = sub_239EADFF4(v119);
    }

    else
    {
      v39 = 0;
    }

    sub_239E8ED40(&v126);
  }

  else
  {
LABEL_30:
    v129 = 0;
    v127 = 0u;
    v128 = 0u;
    v126 = 0u;
    sub_239E55EAC(&v126, 0);
    sub_239E55F3C(v38->_URL, &v130, v38, &v124);
    if (SHIBYTE(v136) < 0)
    {
      operator delete(v135);
    }

    v136 = v125;
    v135 = v124;
    v80 = HIBYTE(v125);
    if ((v125 & 0x8000000000000000) != 0)
    {
      v80 = *(&v135 + 1);
    }

    if (v80)
    {
      v81 = objc_alloc(MEMORY[0x277CCACA8]);
      if (v136 >= 0)
      {
        v92 = objc_msgSend_initWithUTF8String_(v81, v82, &v135, v83, v88, v89, v90, v91, v84, v85, v86, v87);
      }

      else
      {
        v92 = objc_msgSend_initWithUTF8String_(v81, v82, v135, v83, v88, v89, v90, v91, v84, v85, v86, v87);
      }

      v93 = v92;
      v39 = sub_239EADFF4(v92);
    }

    else
    {
      v39 = 0;
    }

    sub_239F167C0(&v126);
  }

  objc_autoreleasePoolPop(v75);
  if (v39)
  {
    v105 = v39;
    *error = v39;
  }

  if (SHIBYTE(v136) < 0)
  {
    if (!*(&v135 + 1))
    {
      goto LABEL_49;
    }

    v106 = v135;
LABEL_48:
    NSLog(&cfstr_S.isa, v106);
  }

  else
  {
    if (HIBYTE(v136))
    {
      v106 = &v135;
      goto LABEL_48;
    }

LABEL_49:
    objc_msgSend_resolveTextures(v38, v94, v95, v96, v101, v102, v103, v104, v97, v98, v99, v100);
  }

  v38 = v38;
  if (SHIBYTE(v133) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v136) < 0)
  {
    operator delete(v135);
  }

LABEL_11:
  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v138.__r_.__value_.__l.__data_);
  }

  return v38;
}

- (BOOL)exportAssetToURL:(NSURL *)URL error:(NSError *)error
{
  v6 = URL;
  v215[0] = 0;
  v215[1] = 0;
  v216 = 0;
  v18 = objc_msgSend_path(v6, v7, v8, v9, v14, v15, v16, v17, v10, v11, v12, v13);
  v19 = v18;
  v30 = objc_msgSend_cStringUsingEncoding_(v19, v20, 4, v21, v26, v27, v28, v29, v22, v23, v24, v25);
  sub_239E552A0(v215, v30);

  v42 = objc_msgSend_pathExtension(v6, v31, v32, v33, v38, v39, v40, v41, v34, v35, v36, v37);
  v54 = objc_msgSend_lowercaseString(v42, v43, v44, v45, v50, v51, v52, v53, v46, v47, v48, v49);

  sub_239F453B0(v54);
  v55 = &stru_284D18478;
  if ((objc_msgSend_isEqualToString_(v54, v56, @"usd", v57, v62, v63, v64, v65, v58, v59, v60, v61) & 1) == 0 && (objc_msgSend_isEqualToString_(v54, v66, @"usda", v67, v72, v73, v74, v75, v68, v69, v70, v71) & 1) == 0 && !objc_msgSend_isEqualToString_(v54, v76, @"usdc", v77, v82, v83, v84, v85, v78, v79, v80, v81))
  {
    if (objc_msgSend_isEqualToString_(v54, v86, @"abc", v87, v92, v93, v94, v95, v88, v89, v90, v91))
    {
      if (v216 >= 0)
      {
        v120 = v215;
      }

      else
      {
        v120 = v215[0];
      }

      if (!sub_239EFF72C(v120, self))
      {
        v131 = v215;
        if (v216 < 0)
        {
          v131 = v215[0];
        }

        objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v121, @"Could not save file to %s", v122, v127, v128, v129, v130, v123, v124, v125, v126, v131);
LABEL_50:
        v55 = v107 = 0;
        goto LABEL_12;
      }

      goto LABEL_31;
    }

    if (objc_msgSend_isEqualToString_(v54, v110, @"stl", v111, v116, v117, v118, v119, v112, v113, v114, v115))
    {
      if (v216 >= 0)
      {
        v142 = v215;
      }

      else
      {
        v142 = v215[0];
      }

      if (!sub_239EB8C88(v142, self))
      {
        v174 = v215;
        if (v216 < 0)
        {
          v174 = v215[0];
        }

        objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v143, @"Could not save STL file to %s", v144, v149, v150, v151, v152, v145, v146, v147, v148, v174);
        goto LABEL_50;
      }

LABEL_31:
      v107 = 1;
      goto LABEL_15;
    }

    if (objc_msgSend_isEqualToString_(v54, v132, @"obj", v133, v138, v139, v140, v141, v134, v135, v136, v137))
    {
      *&v202 = 0;
      v200 = 0u;
      v201 = 0u;
      v199 = 0u;
      sub_239E8EC98(&v199, 0);
      sub_239E9156C(v6, self, &v212, &v199);
      if (v214 < 0)
      {
        v197 = v213;
        operator delete(v212);
        if (v197)
        {
          goto LABEL_35;
        }
      }

      else if (v214)
      {
LABEL_35:
        v173 = v215;
        if (v216 < 0)
        {
          v173 = v215[0];
        }

        v55 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v163, @"Could not save OBJ file to %s", v164, v169, v170, v171, v172, v165, v166, v167, v168, v173);
        v107 = 0;
        goto LABEL_53;
      }

      v107 = 1;
LABEL_53:
      sub_239E8ED40(&v199);
      goto LABEL_12;
    }

    if (!objc_msgSend_isEqualToString_(v54, v153, @"ply", v154, v159, v160, v161, v162, v155, v156, v157, v158))
    {
      v196 = v215;
      if (v216 < 0)
      {
        v196 = v215[0];
      }

      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v175, @"Unknown extension on URL: %s", v176, v181, v182, v183, v184, v177, v178, v179, v180, v196);
      goto LABEL_50;
    }

    v211 = 0;
    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    v199 = 0u;
    v200 = 0u;
    sub_239EE1FC4(&v199, 0);
    sub_239EE5928(&v199, v6, self, &v212);
    if (v214 < 0)
    {
      v198 = v213;
      operator delete(v212);
      if (v198)
      {
        goto LABEL_44;
      }
    }

    else if (v214)
    {
LABEL_44:
      v195 = v215;
      if (v216 < 0)
      {
        v195 = v215[0];
      }

      v55 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v185, @"Could not save PLY file to %s", v186, v191, v192, v193, v194, v187, v188, v189, v190, v195);
      v107 = 0;
      goto LABEL_56;
    }

    v107 = 1;
LABEL_56:
    sub_239EE20A4(&v199);
    goto LABEL_12;
  }

  *&v202 = 0;
  v200 = 0u;
  v201 = 0u;
  v199 = 0u;
  sub_239E55EAC(&v199, 0);
  sub_239F508D4(v6, self, &v212);
  if (v214 < 0)
  {
    v108 = v213;
    operator delete(v212);
    if (v108)
    {
      goto LABEL_6;
    }
  }

  else if (v214)
  {
LABEL_6:
    v106 = v215;
    if (v216 < 0)
    {
      v106 = v215[0];
    }

    v55 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v96, @"Could not save file to %s", v97, v102, v103, v104, v105, v98, v99, v100, v101, v106);
    v107 = 0;
    goto LABEL_11;
  }

  v107 = 1;
LABEL_11:
  sub_239F167C0(&v199);
LABEL_12:
  if (error && !v107)
  {
    sub_239EADFF4(v55);
    *error = v107 = 0;
  }

LABEL_15:

  if (SHIBYTE(v216) < 0)
  {
    operator delete(v215[0]);
  }

  return v107;
}

- (MDLObject)objectAtPath:(NSString *)path
{
  v161 = *MEMORY[0x277D85DE8];
  v4 = path;
  v16 = v4;
  if (v4 && objc_msgSend_length(v4, v5, v6, v7, v12, v13, v14, v15, v8, v9, v10, v11))
  {
    v154 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v17, @"/", v18, v23, v24, v25, v26, v19, v20, v21, v22);
    v155 = objc_msgSend_stringByTrimmingCharactersInSet_(v16, v27, v154, v28, v33, v34, v35, v36, v29, v30, v31, v32);
    v47 = objc_msgSend_componentsSeparatedByString_(v155, v37, @"/", v38, v43, v44, v45, v46, v39, v40, v41, v42);
    v59 = v47;
    if (v47 && objc_msgSend_count(v47, v48, v49, v50, v55, v56, v57, v58, v51, v52, v53, v54))
    {
      v158 = 0u;
      v159 = 0u;
      v156 = 0u;
      v157 = 0u;
      v60 = self->_objects;
      v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v61, &v156, v160, v65, v66, v67, v68, 16, v62, v63, v64);
      if (v75)
      {
        v80 = *v157;
        while (2)
        {
          for (i = 0; i != v75; ++i)
          {
            if (*v157 != v80)
            {
              objc_enumerationMutation(v60);
            }

            v82 = *(*(&v156 + 1) + 8 * i);
            v83 = objc_msgSend_objectAtIndexedSubscript_(v59, v69, 0, v70, v76, v77, v78, v79, v71, v72, v73, v74);
            v95 = objc_msgSend_name(v82, v84, v85, v86, v91, v92, v93, v94, v87, v88, v89, v90);
            isEqualToString = objc_msgSend_isEqualToString_(v83, v96, v95, v97, v102, v103, v104, v105, v98, v99, v100, v101);

            if (isEqualToString)
            {
              if (objc_msgSend_count(v59, v69, v107, v70, v76, v77, v78, v79, v71, v72, v73, v74) < 2)
              {
                v108 = v82;
              }

              else
              {
                v119 = objc_msgSend_objectAtIndexedSubscript_(v59, v109, 0, v110, v115, v116, v117, v118, v111, v112, v113, v114);
                v131 = objc_msgSend_length(v119, v120, v121, v122, v127, v128, v129, v130, v123, v124, v125, v126);
                v142 = objc_msgSend_substringFromIndex_(v155, v132, v131 + 1, v133, v138, v139, v140, v141, v134, v135, v136, v137);
                v108 = objc_msgSend_objectAtPath_(v82, v143, v142, v144, v149, v150, v151, v152, v145, v146, v147, v148);
              }

              goto LABEL_19;
            }
          }

          v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v69, &v156, v160, v76, v77, v78, v79, 16, v72, v73, v74);
          if (v75)
          {
            continue;
          }

          break;
        }
      }

      v108 = 0;
LABEL_19:
    }

    else
    {
      v108 = 0;
    }
  }

  else
  {
    v108 = 0;
  }

  return v108;
}

- (MDLObject)objectAtIndexedSubscript:(NSUInteger)index
{
  if (objc_msgSend_count(self->_objects, a2, index, v3, v8, v9, v10, v11, v4, v5, v6, v7) <= index)
  {
    v24 = 0;
  }

  else
  {
    v24 = objc_msgSend_objectAtIndexedSubscript_(self->_objects, v14, index, v15, v20, v21, v22, v23, v16, v17, v18, v19);
  }

  return v24;
}

- (MDLObject)objectAtIndex:(NSUInteger)index
{
  if (objc_msgSend_count(self->_objects, a2, index, v3, v8, v9, v10, v11, v4, v5, v6, v7) <= index)
  {
    v24 = 0;
  }

  else
  {
    v24 = objc_msgSend_objectAtIndexedSubscript_(self->_objects, v14, index, v15, v20, v21, v22, v23, v16, v17, v18, v19);
  }

  return v24;
}

- (vector_float3)upAxis
{
  result.i64[1] = a2;
  result.i64[0] = self;
  return result;
}

+ (NSArray)placeLightProbesWithDensity:(float)value heuristic:(MDLProbePlacement)type usingIrradianceDataSource:(id)dataSource
{
  v837 = *MEMORY[0x277D85DE8];
  v8 = dataSource;
  if (value <= 0.0)
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v9, v13, @"ModelIOException", @"[%@ %@]: density must be greater than 0", v18, v19, v20, v21, v14, v15, v16, v17, v11, v12);
  }

  if (type == MDLProbePlacementIrradianceDistribution && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v22 = MEMORY[0x277CBEAD8];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v22, v26, @"ModelIOException", @"[%@ %@]: must implement sphericalHarmonicsCoefficientsAtPosition: selector if using heuristic type MDLProbePlacementIrradianceDistribution", v31, v32, v33, v34, v27, v28, v29, v30, v24, v25);
  }

  v773 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_msgSend_boundingBox(v8, v35, v36, v37, v42, v43, v44, v45, v38, v39, v40, v41);
  v769 = v46;
  v771 = v47;
  if ((vmovn_s32(vmvnq_s8(vcgeq_f32(v46, v47))).u8[0] & 1) == 0)
  {
    v48.n128_u64[1] = 0;
    v48.n128_u32[0] = v47.i32[0];
    v49 = vmovn_s32(vmvnq_s8(vcgeq_f32(v46, v47))).i16[1];
    v50 = 1.0 / value;
    do
    {
      v48.n128_u32[1] = v771.u32[1];
      v51 = v48;
      if (v49)
      {
        v52.n128_u32[2] = v48.n128_u32[2];
      }

      else
      {
        do
        {
          v48.n128_u32[2] = v771.u32[2];
          *obj = v48;
          v48.n128_u32[3] = v51.n128_u32[3];
          if (v771.f32[2] <= v769.f32[2])
          {
            v781 = v48;
            v51.n128_u32[0] = v771.u32[2];
            do
            {
              *v783 = v51;
              v53 = [MDLTransform alloc];
              v65 = objc_msgSend_initWithIdentity(v53, v54, v55, v56, v61, v62, v63, v64, v57, v58, v59, v60);
              objc_msgSend_setTranslation_(v65, v66, v67, v68, v781, v73, v74, v75, v69, v70, v71, v72);
              v76 = objc_alloc_init(MDLLightProbe);
              objc_msgSend_setTransform_(v76, v77, v65, v78, v83, v84, v85, v86, v79, v80, v81, v82);
              objc_msgSend_addObject_(v773, v87, v76, v88, v93, v94, v95, v96, v89, v90, v91, v92);
              v97 = *v783;
              *&v97 = *v783 + v50;
              *v784 = v97;
              v98 = *obj;
              v98.n128_u32[2] = v97;
              *obj = v98;
              v99 = v98;
              v99.n128_u32[3] = v781.n128_u32[3];
              v774 = v99;

              v51 = *v784;
              v48 = v774;
              v781 = v774;
            }

            while (*v784 <= v769.f32[2]);
          }

          v52 = *obj;
          v52.n128_f32[1] = v48.n128_f32[1] + v50;
          v52.n128_u32[2] = obj[1];
          v51 = v52;
          v51.n128_u32[3] = v48.n128_u32[3];
          v100 = (v48.n128_f32[1] + v50) > v769.f32[1];
          v48 = v52;
        }

        while (!v100);
      }

      v48.n128_f32[0] = v51.n128_f32[0] + v50;
      v48.n128_u64[1] = __PAIR64__(v51.n128_u32[3], v52.n128_u32[2]);
    }

    while ((v51.n128_f32[0] + v50) <= v769.f32[0]);
  }

  if (type == MDLProbePlacementIrradianceDistribution)
  {
    v758 = v773;
    v782 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v104 = 0;
    v105 = vsubq_f32(v769, v771);
    v106 = fabsf(*v105.i32);
    v765 = v105;
    v107 = vabs_f32(*&vextq_s8(v105, v105, 4uLL));
    if (v107.f32[0] >= v107.f32[1])
    {
      *&v103 = v107.f32[0];
    }

    else
    {
      *&v103 = v107.f32[1];
    }

    if (v106 >= *&v103)
    {
      *&v103 = v106;
    }

    *v767 = v103;
    if (v107.f32[1] < v107.f32[0])
    {
      v107.f32[0] = v107.f32[1];
    }

    if (v107.f32[0] < v106)
    {
      v106 = v107.f32[0];
    }

    v108 = v106 * 0.05;
    do
    {
      v824 = 0u;
      v825 = 0u;
      v822 = 0u;
      v823 = 0u;
      obja = v758;
      v124 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v109, &v822, v836, v113, v114, v115, v116, 16, v110, v111, v112);
      if (v124)
      {
        v128 = *v823;
        v129 = vdupq_lane_s32(v767[0], 0);
        v775 = v129;
        do
        {
          v130 = 0;
          do
          {
            if (*v823 != v128)
            {
              objc_enumerationMutation(obja);
            }

            v131 = *(*(&v822 + 1) + 8 * v130);
            objc_msgSend_position(v131, v117, v118, v119, v129, v125, v126, v127, v120, v121, v122, v123);
            v143 = objc_msgSend_sphericalHarmonicsCoefficientsAtPosition_(v8, v132, v133, v134, v139, v140, v141, v142, v135, v136, v137, v138);
            v155 = objc_msgSend_sphericalHarmonicsLevel(v8, v144, v145, v146, v151, v152, v153, v154, v147, v148, v149, v150);
            objc_msgSend_calculateIrradianceGradientUsingSamples_ofSize_fromSH_withLevel_(MDLLightProbe, v156, &unk_27DF89740, 26, v159, v160, v161, v162, v143, v155, v157, v158);
            v172 = v171;
            v174 = vmulq_f32(v171, v171);
            v173.n128_f32[0] = vaddv_f32(v174.n128_u64[0]);
            v174.n128_f32[0] = v173.n128_f32[0] + v174.n128_f32[2];
            if ((v173.n128_f32[0] + v174.n128_f32[2]) == 0.0)
            {
              objc_msgSend_addObject_(v782, v163, v131, v165, v174, v173, v172, v170, v166, v167, v168, v169);
LABEL_38:
              v185 = v143;
              goto LABEL_39;
            }

            *v785 = v172;
            objc_msgSend_position(v131, v163, v164, v165, v174, v173, v172, v170, v166, v167, v168, v169);
            v786 = vmlaq_f32(v183, v775, *v785);
            v184 = vmovn_s32(vmvnq_s8(vcgeq_f32(v786, v771)));
            if (v184.i8[0])
            {
              goto LABEL_38;
            }

            if (v184.i8[2])
            {
              goto LABEL_38;
            }

            v186 = vmvnq_s8(vcgeq_f32(v769, v786));
            v186.n128_u64[0] = vmovn_s32(v186);
            if (vorr_s8(vdup_lane_s16(v184, 2), v186.n128_u64[0]).u8[0] & 1) != 0 || (v186.n128_u8[2] & 1) != 0 || (v186.n128_u8[4])
            {
              goto LABEL_38;
            }

            v185 = objc_msgSend_sphericalHarmonicsCoefficientsAtPosition_(v8, v175, v176, v177, v786, v186, v786, v182, v178, v179, v180, v181);

            v198 = objc_msgSend_sphericalHarmonicsLevel(v8, v187, v188, v189, v194, v195, v196, v197, v190, v191, v192, v193);
            objc_msgSend_calculateIrradianceGradientUsingSamples_ofSize_fromSH_withLevel_(MDLLightProbe, v199, &unk_27DF89740, 26, v202, v203, v204, v205, v185, v198, v200, v201);
            v207 = vmulq_f32(v206, v206);
            if ((vaddv_f32(*v207.f32) + v207.f32[2]) != 0.0)
            {
              v208 = [MDLTransform alloc];
              v220 = objc_msgSend_initWithIdentity(v208, v209, v210, v211, v216, v217, v218, v219, v212, v213, v214, v215);
              objc_msgSend_setTranslation_(v220, v221, v222, v223, v786, v228, v229, v230, v224, v225, v226, v227);
              objc_msgSend_setTransform_(v131, v231, v220, v232, v237, v238, v239, v240, v233, v234, v235, v236);
            }

LABEL_39:

            ++v130;
          }

          while (v124 != v130);
          v241 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v117, &v822, v836, v129, v125, v126, v127, 16, v121, v122, v123);
          v124 = v241;
        }

        while (v241);
      }

      v242 = *v767;
      *&v242 = *v767 * 0.5;
      *v767 = v242;
    }

    while (*&v242 >= v108 || v104++ < 9);
    v244.i64[0] = 0x3F0000003F000000;
    v244.i64[1] = 0x3F0000003F000000;
    v245 = vmulq_f32(vaddq_f32(v769, v771), v244);
    v246 = v765;
    v247 = vmulq_f32(v765, v244);
    v248 = 0.5 * v247.f32[0];
    v249 = vmuls_lane_f32(0.5, *v247.f32, 1);
    v247.f32[0] = vmuls_lane_f32(0.5, v247, 2);
    v246.f32[0] = v245.f32[0] - v248;
    v250 = v246;
    v250.f32[1] = v245.f32[1] - v249;
    v251 = v250;
    v251.f32[2] = v245.f32[2] - v247.f32[0];
    v250.f32[2] = v247.f32[0] + v245.f32[2];
    v835[0] = v251;
    v835[1] = v250;
    v252 = v249 + v245.f32[1];
    v246.f32[1] = v252;
    v253 = v246;
    v253.f32[2] = v245.f32[2] - v247.f32[0];
    v246.f32[2] = v247.f32[0] + v245.f32[2];
    v835[2] = v253;
    v835[3] = v246;
    v245.f32[0] = v248 + v245.f32[0];
    v254 = v245;
    v254.i32[1] = v250.i32[1];
    v255 = v254;
    v255.f32[2] = v245.f32[2] - v247.f32[0];
    v245.f32[1] = v252;
    v256 = v245;
    v256.f32[2] = v245.f32[2] - v247.f32[0];
    v245.f32[2] = v247.f32[0] + v245.f32[2];
    v254.f32[2] = v245.f32[2];
    v835[4] = v255;
    v835[5] = v254;
    v835[6] = v256;
    v835[7] = v245;
    memset(v834, 0, sizeof(v834));
    v818 = 0u;
    v819 = 0u;
    v820 = 0u;
    v821 = 0u;
    v787 = v782;
    v272 = objc_msgSend_countByEnumeratingWithState_objects_count_(v787, v257, &v818, v833, v261, v262, v263, v264, 16, v258, v259, v260);
    if (v272)
    {
      v277 = *v819;
      do
      {
        for (i = 0; i != v272; ++i)
        {
          if (*v819 != v277)
          {
            objc_enumerationMutation(v787);
          }

          v279 = *(*(&v818 + 1) + 8 * i);
          objc_msgSend_position(v279, v265, v266, v267, v273, v274, v275, v276, v268, v269, v270, v271);
          v281 = 0;
          v282 = -1;
          v283 = 3.4028e38;
          do
          {
            v284 = vsubq_f32(v835[v281], v280);
            v285 = vmulq_f32(v284, v284);
            v286 = vaddv_f32(*v285.f32);
            if ((v286 + v285.f32[2]) < v283)
            {
              v283 = v286 + v285.f32[2];
              v282 = v281;
            }

            ++v281;
          }

          while (v281 != 8);
          v287 = *(v834 + v282);
          if (v287)
          {
            v288 = v287;
            objc_msgSend_position(v288, v289, v290, v291, v296, v297, v298, v299, v292, v293, v294, v295);
            v301 = vsubq_f32(v835[v282], v300);
            v302 = vmulq_f32(v301, v301);
            if ((vaddv_f32(*v302.f32) + v302.f32[2]) >= v283)
            {
              objc_storeStrong(v834 + v282, v279);
            }
          }

          else
          {
            objc_storeStrong(v834 + v282, v279);
          }
        }

        v272 = objc_msgSend_countByEnumeratingWithState_objects_count_(v787, v265, &v818, v833, v273, v274, v275, v276, 16, v269, v270, v271);
      }

      while (v272);
    }

    v764 = objc_alloc_init(MEMORY[0x277CBEB18]);
    for (j = 0; j != 64; j += 8)
    {
      v304 = *(v834 + j);
      v316 = v304;
      if (v304)
      {
        objc_msgSend_position(v304, v305, v306, v307, v312, v313, v314, v315, v308, v309, v310, v311);
        v776 = v317;
        v318 = objc_alloc_init(_MDLProbeCluster);
        objc_msgSend_setCentroid_(v318, v319, v320, v321, v776, v326, v327, v328, v322, v323, v324, v325);
        v329 = objc_alloc_init(MEMORY[0x277CBEB58]);
        objc_msgSend_setProbes_(v318, v330, v329, v331, v336, v337, v338, v339, v332, v333, v334, v335);

        v351 = objc_msgSend_probes(v318, v340, v341, v342, v347, v348, v349, v350, v343, v344, v345, v346);
        objc_msgSend_addObject_(v351, v352, v316, v353, v358, v359, v360, v361, v354, v355, v356, v357);

        objc_msgSend_addObject_(v764, v362, v318, v363, v368, v369, v370, v371, v364, v365, v366, v367);
      }
    }

    v816 = 0u;
    v817 = 0u;
    v814 = 0u;
    v815 = 0u;
    v759 = v787;
    v387 = objc_msgSend_countByEnumeratingWithState_objects_count_(v759, v372, &v814, v832, v376, v377, v378, v379, 16, v373, v374, v375);
    if (v387)
    {
      v777 = *v815;
      do
      {
        for (k = 0; k != v387; ++k)
        {
          if (*v815 != v777)
          {
            objc_enumerationMutation(v759);
          }

          v393 = *(*(&v814 + 1) + 8 * k);
          objc_msgSend_position(v393, v380, v381, v382, v388, v389, v390, v391, v383, v384, v385, v386);
          *v788 = v394;
          v812 = 0u;
          v813 = 0u;
          v810 = 0u;
          v811 = 0u;
          v395 = v764;
          v411 = objc_msgSend_countByEnumeratingWithState_objects_count_(v395, v396, &v810, v831, v400, v401, v402, v403, 16, v397, v398, v399);
          if (v411)
          {
            v416 = *v811;
            v417 = 3.4028e38;
            v418 = 8;
            do
            {
              for (m = 0; m != v411; ++m)
              {
                if (*v811 != v416)
                {
                  objc_enumerationMutation(v395);
                }

                v420 = *(*(&v810 + 1) + 8 * m);
                objc_msgSend_centroid(v420, v404, v405, v406, v412, v413, v414, v415, v407, v408, v409, v410);
                v413 = *v788;
                v422 = vsubq_f32(v421, *v788);
                v412 = vmulq_f32(v422, v422);
                v413.n128_f32[0] = vaddv_f32(v412.n128_u64[0]);
                v412.n128_u32[0] = v412.n128_u32[2];
                v423 = v413.n128_f32[0] + v412.n128_f32[2];
                if ((v413.n128_f32[0] + v412.n128_f32[2]) < v417)
                {
                  v418 = objc_msgSend_indexOfObject_(v395, v404, v420, v406, v412, v413, v414, v415, v407, v408, v409, v410);
                  v417 = v423;
                }
              }

              v411 = objc_msgSend_countByEnumeratingWithState_objects_count_(v395, v404, &v810, v831, v412, v413, v414, v415, 16, v408, v409, v410);
            }

            while (v411);
          }

          else
          {
            v418 = 8;
          }

          v434 = objc_msgSend_objectAtIndexedSubscript_(v395, v424, v418, v425, v430, v431, v432, v433, v426, v427, v428, v429);
          v446 = objc_msgSend_probes(v434, v435, v436, v437, v442, v443, v444, v445, v438, v439, v440, v441);
          objc_msgSend_addObject_(v446, v447, v393, v448, v453, v454, v455, v456, v449, v450, v451, v452);

          objc_msgSend_calculateCentroidNotIncludingSamplesinArray_(v434, v457, MEMORY[0x277CBEBF8], v458, v463, v464, v465, v466, v459, v460, v461, v462);
        }

        v387 = objc_msgSend_countByEnumeratingWithState_objects_count_(v759, v380, &v814, v832, v388, v389, v390, v391, 16, v384, v385, v386);
      }

      while (v387);
    }

    v467 = 0;
LABEL_91:
    if (v467 > 4)
    {
      goto LABEL_134;
    }

    v754 = v467;
    v808 = 0u;
    v809 = 0u;
    v806 = 0u;
    v807 = 0u;
    v768 = v764;
    v476 = objc_msgSend_countByEnumeratingWithState_objects_count_(v768, v468, &v806, v830, v472, v473, v474, v475, 16, v469, v470, v471);
    if (!v476)
    {

      goto LABEL_134;
    }

    v755 = v476;
    v756 = *v807;
    v487 = 1;
LABEL_94:
    v757 = 0;
    while (1)
    {
      if (*v807 != v756)
      {
        objc_enumerationMutation(v768);
      }

      v488 = *(*(&v806 + 1) + 8 * v757);
      v761 = objc_msgSend_indexOfObject_(v768, v477, v488, v478, v483, v484, v485, v486, v479, v480, v481, v482);
      v762 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v804 = 0u;
      v805 = 0u;
      v802 = 0u;
      v803 = 0u;
      v760 = objc_msgSend_probes(v488, v489, v490, v491, 0, v496, v497, v498, v492, v493, v494, v495);
      v514 = objc_msgSend_countByEnumeratingWithState_objects_count_(v760, v499, &v802, v829, v503, v504, v505, v506, 16, v500, v501, v502);
      if (v514)
      {
        break;
      }

LABEL_117:

      v796 = 0u;
      v797 = 0u;
      v794 = 0u;
      v795 = 0u;
      v615 = v762;
      v631 = objc_msgSend_countByEnumeratingWithState_objects_count_(v615, v616, &v794, v827, v620, v621, v622, v623, 16, v617, v618, v619);
      if (v631)
      {
        v636 = *v795;
        do
        {
          for (n = 0; n != v631; ++n)
          {
            if (*v795 != v636)
            {
              objc_enumerationMutation(v615);
            }

            v638 = *(*(&v794 + 1) + 8 * n);
            v639 = objc_msgSend_probes(v488, v624, v625, v626, v632, v633, v634, v635, v627, v628, v629, v630);
            objc_msgSend_removeObject_(v639, v640, v638, v641, v646, v647, v648, v649, v642, v643, v644, v645);
          }

          v631 = objc_msgSend_countByEnumeratingWithState_objects_count_(v615, v624, &v794, v827, v632, v633, v634, v635, 16, v628, v629, v630);
        }

        while (v631);
      }

      if (++v757 == v755)
      {
        v755 = objc_msgSend_countByEnumeratingWithState_objects_count_(v768, v477, &v806, v830, v483, v484, v485, v486, 16, v480, v481, v482);
        if (!v755)
        {

          v467 = v754 + ((v487 & 1) == 0);
          if (v487)
          {
LABEL_134:
            v792 = 0u;
            v793 = 0u;
            v790 = 0u;
            v791 = 0u;
            v651 = v764;
            v667 = objc_msgSend_countByEnumeratingWithState_objects_count_(v651, v652, &v790, v826, v656, v657, v658, v659, 16, v653, v654, v655);
            if (v667)
            {
              v672 = *v791;
              do
              {
                for (ii = 0; ii != v667; ++ii)
                {
                  if (*v791 != v672)
                  {
                    objc_enumerationMutation(v651);
                  }

                  v674 = *(*(&v790 + 1) + 8 * ii);
                  if ((objc_msgSend_isEmpty(v674, v660, v661, v662, v668, v669, v670, v671, v663, v664, v665, v666) & 1) == 0)
                  {
                    v675 = [MDLTransform alloc];
                    v687 = objc_msgSend_initWithIdentity(v675, v676, v677, v678, v683, v684, v685, v686, v679, v680, v681, v682);
                    objc_msgSend_centroid(v674, v688, v689, v690, v695, v696, v697, v698, v691, v692, v693, v694);
                    objc_msgSend_setTranslation_(v687, v699, v700, v701, v706, v707, v708, v709, v702, v703, v704, v705);
                    v710 = objc_alloc_init(MDLLightProbe);
                    objc_msgSend_setTransform_(v710, v711, v687, v712, v717, v718, v719, v720, v713, v714, v715, v716);
                    objc_msgSend_addObject_(obja, v721, v710, v722, v727, v728, v729, v730, v723, v724, v725, v726);
                  }
                }

                v667 = objc_msgSend_countByEnumeratingWithState_objects_count_(v651, v660, &v790, v826, v668, v669, v670, v671, 16, v664, v665, v666);
              }

              while (v667);
            }

            v742 = objc_msgSend_allObjects(v759, v731, v732, v733, v738, v739, v740, v741, v734, v735, v736, v737);
            objc_msgSend_removeObjectsInArray_(obja, v743, v742, v744, v749, v750, v751, v752, v745, v746, v747, v748);

            v102 = obja;
            for (jj = 56; jj != -8; jj -= 8)
            {
            }

LABEL_129:
            v101 = v773;
            goto LABEL_130;
          }

          goto LABEL_91;
        }

        goto LABEL_94;
      }
    }

    v766 = *v803;
LABEL_99:
    v519 = 0;
    v763 = v514;
    while (1)
    {
      if (*v803 != v766)
      {
        objc_enumerationMutation(v760);
      }

      v772 = *(*(&v802 + 1) + 8 * v519);
      objc_msgSend_position(v772, v507, v508, v509, v515, v516, v517, v518, v510, v511, v512, v513);
      *v789 = v520;
      objc_msgSend_centroid(v488, v521, v522, v523, v520, v528, v529, v530, v524, v525, v526, v527);
      v778 = v531;
      v800 = 0u;
      v801 = 0u;
      v798 = 0u;
      v799 = 0u;
      v532 = v768;
      v547 = objc_msgSend_countByEnumeratingWithState_objects_count_(v532, v533, &v798, v828, v537, v538, v539, v540, 16, v534, v535, v536);
      if (v547)
      {
        v770 = v519;
        v550 = 0;
        v552 = v778;
        v551 = vsubq_f32(v778, *v789);
        v553 = vmulq_f32(v551, v551);
        v552.n128_f32[0] = vaddv_f32(v553.n128_u64[0]);
        v553.n128_u32[0] = v553.n128_u32[2];
        v554 = v552.n128_f32[0] + v553.n128_f32[2];
        v555 = *v799;
        v556 = v761;
        do
        {
          for (kk = 0; kk != v547; ++kk)
          {
            if (*v799 != v555)
            {
              objc_enumerationMutation(v532);
            }

            v558 = *(*(&v798 + 1) + 8 * kk);
            if ((objc_msgSend_isEqual_(v488, v541, v558, v542, v553, v552, v548, v549, v543, v544, v545, v546) & 1) == 0)
            {
              objc_msgSend_centroid(v558, v541, v559, v542, v553, v552, v548, v549, v543, v544, v545, v546);
              v552 = *v789;
              v561 = vsubq_f32(v560, *v789);
              v553 = vmulq_f32(v561, v561);
              v552.n128_f32[0] = vaddv_f32(v553.n128_u64[0]);
              v553.n128_u32[0] = v553.n128_u32[2];
              v562 = v552.n128_f32[0] + v553.n128_f32[2];
              if ((v552.n128_f32[0] + v553.n128_f32[2]) < v554)
              {
                v556 = objc_msgSend_indexOfObject_(v532, v541, v558, v542, v553, v552, v548, v549, v543, v544, v545, v546);
                v487 = 0;
                v550 = 1;
                v554 = v562;
              }
            }
          }

          v547 = objc_msgSend_countByEnumeratingWithState_objects_count_(v532, v541, &v798, v828, v553, v552, v548, v549, 16, v544, v545, v546);
        }

        while (v547);

        v514 = v763;
        v519 = v770;
        if ((v550 & 1) == 0)
        {
          goto LABEL_115;
        }

        v532 = objc_msgSend_objectAtIndex_(v532, v507, v556, v509, v515, v516, v517, v518, v510, v511, v512, v513);
        v574 = objc_msgSend_probes(v532, v563, v564, v565, v570, v571, v572, v573, v566, v567, v568, v569);
        objc_msgSend_addObject_(v574, v575, v772, v576, v581, v582, v583, v584, v577, v578, v579, v580);

        objc_msgSend_calculateCentroidNotIncludingSamplesinArray_(v532, v585, MEMORY[0x277CBEBF8], v586, v591, v592, v593, v594, v587, v588, v589, v590);
        objc_msgSend_addObject_(v762, v595, v772, v596, v601, v602, v603, v604, v597, v598, v599, v600);
        objc_msgSend_calculateCentroidNotIncludingSamplesinArray_(v488, v605, v762, v606, v611, v612, v613, v614, v607, v608, v609, v610);
      }

LABEL_115:
      if (++v519 == v514)
      {
        v514 = objc_msgSend_countByEnumeratingWithState_objects_count_(v760, v507, &v802, v829, v515, v516, v517, v518, 16, v511, v512, v513);
        if (!v514)
        {
          goto LABEL_117;
        }

        goto LABEL_99;
      }
    }
  }

  if (type)
  {
    v102 = 0;
    goto LABEL_129;
  }

  v101 = v773;
  v102 = v773;
LABEL_130:

  return v102;
}

@end