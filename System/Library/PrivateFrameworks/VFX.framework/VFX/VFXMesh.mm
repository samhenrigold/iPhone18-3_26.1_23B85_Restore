@interface VFXMesh
+ (id)mesh;
+ (id)meshWithMeshRef:(__CFXMesh *)ref;
+ (id)meshWithSources:(id)sources elements:(id)elements sourceChannels:(id)channels;
- (BOOL)getBoundingSphereCenter:(VFXMesh *)self radius:(SEL)radius;
- (NSArray)meshElements;
- (NSArray)meshSources;
- (NSString)description;
- (NSString)name;
- (VFXMesh)init;
- (VFXMesh)initWithCoder:(id)coder;
- (VFXMesh)initWithMeshRef:(__CFXMesh *)ref;
- (VFXWorld)world;
- (__CFXWorld)worldRef;
- (double)boundingBox;
- (id)_meshByRebuildingNormals;
- (id)_meshByRemovingSkinnerSources;
- (id)_meshByWeldingVerticesWithThreshold:(float)threshold normalThreshold:(float)normalThreshold;
- (id)_renderableCopy;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugQuickLookData;
- (id)debugQuickLookObject;
- (id)debugQuickLookObjectWithWorld:(id)world;
- (id)identifier;
- (id)interleavedCopy;
- (id)meshDescription;
- (id)meshElementAtIndex:(int64_t)index;
- (id)meshSourcesForSemantic:(id)semantic;
- (int64_t)meshElementCount;
- (int64_t)primitiveType;
- (uint64_t)setBoundingBox:(uint64_t)box;
- (void)_discardOriginalTopology;
- (void)_rebuildMeshElementsFromPresentation;
- (void)_rebuildMeshSourcesFromPresentation;
- (void)_updateEntityModelFromPresentation;
- (void)_updateEntityPresentationFromModel;
- (void)_updatePresentationFromModel;
- (void)addWorldReference:(id)reference;
- (void)dealloc;
- (void)decodeMeshWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)makeUniqueID;
- (void)removeWorldReference:(id)reference;
- (void)setIdentifier:(id)identifier;
- (void)setMeshRef:(__CFXMesh *)ref;
- (void)setName:(id)name;
- (void)setPrimitiveType:(int64_t)type;
- (void)setWorld:(id)world;
@end

@implementation VFXMesh

- (VFXMesh)init
{
  v11.receiver = self;
  v11.super_class = VFXMesh;
  v2 = [(VFXMesh *)&v11 init];
  v4 = v2;
  if (v2)
  {
    v5 = sub_1AF1A2E00(v2, v3);
    v4->_mesh = v5;
    if (v5)
    {
      sub_1AF16CDFC(v5, v4);
    }

    objc_msgSend__updateModelFromPresentation(v4, v6, v7);
    objc_msgSend_makeUniqueID(v4, v8, v9);
  }

  return v4;
}

- (VFXMesh)initWithMeshRef:(__CFXMesh *)ref
{
  v11.receiver = self;
  v11.super_class = VFXMesh;
  v4 = [(VFXMesh *)&v11 init];
  if (v4)
  {
    v5 = CFRetain(ref);
    v4->_mesh = v5;
    if (v5)
    {
      sub_1AF16CDFC(v5, v4);
    }

    objc_msgSend__updateModelFromPresentation(v4, v6, v7);
    objc_msgSend_makeUniqueID(v4, v8, v9);
  }

  return v4;
}

+ (id)meshWithMeshRef:(__CFXMesh *)ref
{
  result = sub_1AF16CDEC(ref);
  if (!result)
  {
    v6 = [self alloc];
    v8 = objc_msgSend_initWithMeshRef_(v6, v7, ref);

    return v8;
  }

  return result;
}

+ (id)mesh
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)dealloc
{
  mesh = self->_mesh;
  if (mesh)
  {
    sub_1AF16CDFC(mesh, 0);
    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, v4, self->_mesh);
  }

  v5.receiver = self;
  v5.super_class = VFXMesh;
  [(VFXMesh *)&v5 dealloc];
}

- (void)addWorldReference:(id)reference
{
  world = self->_world;
  if (world == reference)
  {
    v5 = self->_worldReferenceCounter + 1;
  }

  else
  {
    if (world)
    {
      self->_worldReferenceCounter = 0;
    }

    objc_msgSend_setWorld_(self, a2, reference);
    v5 = 1;
  }

  self->_worldReferenceCounter = v5;
}

- (void)removeWorldReference:(id)reference
{
  p_world = &self->_world;
  if (!reference || self->_world == reference)
  {
    worldReferenceCounter = self->_worldReferenceCounter;
    if (worldReferenceCounter)
    {
      v6 = worldReferenceCounter - 1;
      self->_worldReferenceCounter = v6;
      if (!v6)
      {

        objc_msgSend_setWorld_(self, a2, 0);
      }
    }

    else
    {
      v7 = sub_1AF0D5194(self, a2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF4930(self, p_world, v7);
      }
    }
  }
}

- (void)setWorld:(id)world
{
  world = self->_world;
  if (world != world)
  {
    v9[9] = v3;
    v9[10] = v4;
    if (world)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1AF2E1D48;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = world;
    if (world)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF2E1DA8;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
    }
  }
}

- (VFXWorld)world
{
  if ((*(self + 32) & 1) == 0)
  {
    return self->_world;
  }

  result = objc_msgSend_worldRef(self, a2, v2);
  if (result)
  {

    return sub_1AF16CDEC(&result->super.isa);
  }

  return result;
}

- (__CFXWorld)worldRef
{
  v3 = objc_msgSend___CFObject(self, a2, v2);

  return sub_1AF1C3FAC(v3, v4);
}

- (void)setName:(id)name
{
  name = self->_name;
  if (name | name)
  {
    if ((objc_msgSend_isEqual_(name, a2, name) & 1) == 0)
    {

      self->_name = objc_msgSend_copy(name, v6, v7);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1AF2E1F24;
      v9[3] = &unk_1E7A7E220;
      v9[4] = self;
      v9[5] = name;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
    }
  }
}

- (NSString)name
{
  if ((*(self + 32) & 1) == 0)
  {
    return self->_name;
  }

  v5 = objc_msgSend_worldRef(self, a2, v2);
  v8 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5, v6);
  }

  v9 = objc_msgSend___CFObject(self, v6, v7);
  v4 = sub_1AF16CBEC(v9, v10);
  if (v8)
  {
    sub_1AF1CEA9C(v8, v11);
  }

  return v4;
}

- (void)setIdentifier:(id)identifier
{
  v4 = objc_msgSend___CFObject(self, a2, identifier);

  sub_1AF16CD6C(v4, identifier);
}

- (id)identifier
{
  v3 = objc_msgSend___CFObject(self, a2, v2);

  return sub_1AF16CD08(v3, v4, v5);
}

- (void)_updateEntityModelFromPresentation
{
  v4 = objc_msgSend___CFObject(self, a2, v2);

  self->_name = sub_1AF16CBEC(v4, v5);
}

- (void)_updateEntityPresentationFromModel
{
  v4 = objc_msgSend___CFObject(self, a2, v2);
  name = self->_name;

  sub_1AF16CC34(v4, name);
}

- (void)makeUniqueID
{
  v3 = objc_msgSend___CFObject(self, a2, v2);
  v6 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v4, v5);
  v9 = objc_msgSend_UUIDString(v6, v7, v8);

  sub_1AF16CD6C(v3, v9);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2E2168;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (id)meshDescription
{
  v4 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, v2);
  v7 = objc_msgSend_name(self, v5, v6);
  v10 = objc_msgSend_length(v7, v8, v9);
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v15 = v12;
  if (v10)
  {
    v24 = objc_msgSend_name(self, v13, v14);
    objc_msgSend_appendFormat_(v4, v16, @"%@: %p '%@'", v15, self, v24);
  }

  else
  {
    objc_msgSend_appendFormat_(v4, v13, @"%@: %p", v12, self);
  }

  if (objc_msgSend_meshElementCount(self, v17, v18) >= 2)
  {
    v21 = objc_msgSend_meshElementCount(self, v19, v20);
    objc_msgSend_appendFormat_(v4, v22, @" | %d elements", v21);
  }

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_msgSend_meshDescription(self, a2, v2);
  return objc_msgSend_stringWithFormat_(v3, v5, @"<%@>", v4);
}

- (void)setMeshRef:(__CFXMesh *)ref
{
  mesh = self->_mesh;
  if (mesh == ref)
  {
    return;
  }

  if (!mesh)
  {
    if (!ref)
    {
      return;
    }

LABEL_9:
    v6 = CFRetain(ref);
    goto LABEL_10;
  }

  sub_1AF16CDFC(mesh, 0);
  v6 = self->_mesh;
  if (v6 == ref)
  {
    goto LABEL_11;
  }

  if (v6)
  {
    CFRelease(v6);
    self->_mesh = 0;
  }

  if (ref)
  {
    goto LABEL_9;
  }

  v6 = 0;
LABEL_10:
  self->_mesh = v6;
LABEL_11:
  if (v6)
  {

    sub_1AF16CDFC(v6, self);
  }
}

+ (id)meshWithSources:(id)sources elements:(id)elements sourceChannels:(id)channels
{
  selfCopy = self;
  v59 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E695E480];
  v9 = objc_msgSend_count(sources, a2, sources);
  v10 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(v8, v9, MEMORY[0x1E695E9C0]);
  v14 = objc_msgSend_count(elements, v12, v13);
  v15 = CFArrayCreateMutable(v8, v14, v10);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(sources, v16, &v53, v58, 16);
  if (v17)
  {
    v20 = v17;
    v21 = *v54;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v54 != v21)
        {
          objc_enumerationMutation(sources);
        }

        v23 = *(*(&v53 + 1) + 8 * i);
        objc_msgSend__clearCFXCache(v23, v18, v19);
        v26 = objc_msgSend_meshSource(v23, v24, v25);
        CFArrayAppendValue(Mutable, v26);
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(sources, v18, &v53, v58, 16);
    }

    while (v20);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(elements, v18, &v49, v57, 16);
  if (v27)
  {
    v30 = v27;
    v31 = *v50;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v50 != v31)
        {
          objc_enumerationMutation(elements);
        }

        v33 = objc_msgSend_meshElement(*(*(&v49 + 1) + 8 * j), v28, v29);
        CFArrayAppendValue(v15, v33);
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(elements, v28, &v49, v57, 16);
    }

    while (v30);
  }

  v34 = objc_msgSend_count(sources, v28, v29);
  v35 = &v47 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF2E25E0(channels, v34, elements, v35);
  v36 = sub_1AF27B22C(Mutable, v15, v35);
  v37 = [selfCopy alloc];
  v39 = objc_msgSend_initWithMeshRef_(v37, v38, v36);
  v39[5] = objc_msgSend_copy(sources, v40, v41);
  v39[6] = objc_msgSend_copy(elements, v42, v43);
  v39[7] = objc_msgSend_copy(channels, v44, v45);
  CFRelease(Mutable);
  CFRelease(v15);
  CFRelease(v36);
  return v39;
}

- (void)_rebuildMeshSourcesFromPresentation
{
  v4 = objc_msgSend_worldRef(self, a2, v2);
  v6 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v7 = self->_sources;

  self->_sources = objc_alloc_init(MEMORY[0x1E695DF70]);
  mesh = self->_mesh;
  if (mesh)
  {
    v31 = -1;
    v9 = sub_1AF1A4BA0(mesh, &v31);
    if (v31)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    v30 = v7;
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v12 = sub_1AF1A4CF8(mesh, 0);
    v15 = objc_msgSend_count(v12, v13, v14);
    if (v15)
    {
      v17 = v15;
      for (i = 0; i != v17; ++i)
      {
        v19 = objc_msgSend_objectAtIndexedSubscript_(v12, v16, i, v30);
        v21 = objc_msgSend_meshSourceWithMeshSourceRef_(VFXMeshSource, v20, v19);
        objc_msgSend_addObject_(self->_sources, v22, v21);
        if ((v10 & 1) == 0)
        {
          v23 = sub_1AF1A4C10(mesh, i);
          v25 = objc_msgSend_numberWithLong_(MEMORY[0x1E696AD98], v24, v23);
          objc_msgSend_addObject_(v11, v26, v25);
        }
      }
    }

    v7 = v30;
  }

  else
  {
    v11 = 0;
  }

  self->_sourceChannels = objc_msgSend_copy(v11, v27, v28);
  if (v6)
  {
    sub_1AF1CEA9C(v6, v29);
  }
}

- (void)_rebuildMeshElementsFromPresentation
{
  v4 = objc_msgSend_worldRef(self, a2, v2);
  v6 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  mesh = self->_mesh;
  if (mesh)
  {
    v8 = self->_elements;
    self->_elements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = sub_1AF1A3CCC(mesh, v9);
    if (v10 >= 1)
    {
      v11 = v10;
      for (i = 0; i != v11; ++i)
      {
        v13 = sub_1AF1A3D1C(mesh, i, 0);
        elements = self->_elements;
        v16 = objc_msgSend_meshElementWithMeshElementRef_(VFXMeshElement, v15, v13);
        objc_msgSend_addObject_(elements, v17, v16);
      }
    }
  }

  if (v6)
  {

    sub_1AF1CEA9C(v6, v5);
  }
}

- (NSArray)meshSources
{
  result = &self->_sources->super;
  if (!result)
  {
    objc_msgSend__rebuildMeshSourcesFromPresentation(self, a2, v2);
    return &self->_sources->super;
  }

  return result;
}

- (id)meshSourcesForSemantic:(id)semantic
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_meshSources(self, a2, semantic);
  v6 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v5, 1);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v18, v22, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v4);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = objc_msgSend_semantic(v14, v9, v10);
        if (objc_msgSend_isEqualToString_(v15, v16, semantic))
        {
          objc_msgSend_addObject_(v6, v9, v14);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v9, &v18, v22, 16);
    }

    while (v11);
  }

  if (objc_msgSend_count(v6, v9, v10))
  {
    return v6;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (NSArray)meshElements
{
  result = &self->_elements->super;
  if (!result)
  {
    objc_msgSend__rebuildMeshElementsFromPresentation(self, a2, v2);
    return &self->_elements->super;
  }

  return result;
}

- (int64_t)meshElementCount
{
  v3 = objc_msgSend_meshElements(self, a2, v2);

  return objc_msgSend_count(v3, v4, v5);
}

- (id)meshElementAtIndex:(int64_t)index
{
  v4 = objc_msgSend_meshElements(self, a2, index);
  if (objc_msgSend_count(v4, v5, v6) <= index)
  {
    return 0;
  }

  return objc_msgSend_objectAtIndexedSubscript_(v4, v7, index);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = objc_msgSend_meshRef(self, a2, zone);
  v5 = sub_1AF1A2EDC(v3, v4);
  v6 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithMeshRef_(v6, v7, v5);
  if (v5)
  {
    CFRelease(v5);
  }

  return v8;
}

- (id)interleavedCopy
{
  v3 = objc_msgSend_meshRef(self, a2, v2);
  v4 = sub_1AF27E144(v3);
  v5 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithMeshRef_(v5, v6, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  return v7;
}

- (id)_renderableCopy
{
  v3 = objc_msgSend_meshRef(self, a2, v2);
  v5 = sub_1AF1A3150(v3, v4);
  v6 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithMeshRef_(v6, v7, v5);
  if (v5)
  {
    CFRelease(v5);
  }

  return v8;
}

- (int64_t)primitiveType
{
  v4 = objc_msgSend_worldRef(self, a2, v2);
  v6 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  mesh = self->_mesh;
  if (mesh)
  {
    if (sub_1AF1A3CCC(mesh, v5) < 1)
    {
      mesh = 0;
      if (!v6)
      {
        return mesh;
      }

      goto LABEL_7;
    }

    v8 = sub_1AF1A3D1C(mesh, 0, 0);
    mesh = sub_1AF1A7034(v8, v9);
  }

  if (v6)
  {
LABEL_7:
    sub_1AF1CEA9C(v6, v5);
  }

  return mesh;
}

- (void)setPrimitiveType:(int64_t)type
{
  typeCopy = type;
  v5 = objc_msgSend_worldRef(self, a2, type);
  v7 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5, v6);
  }

  mesh = self->_mesh;
  if (mesh)
  {
    if (sub_1AF1A3CCC(mesh, v6) >= 1)
    {
      v9 = sub_1AF1A3CCC(mesh, v6);
      if (v9 >= 1)
      {
        v10 = v9;
        for (i = 0; i != v10; ++i)
        {
          v12 = sub_1AF1A3D1C(mesh, i, 0);
          sub_1AF1A699C(v12, typeCopy);
        }
      }
    }
  }

  if (v7)
  {

    sub_1AF1CEA9C(v7, v6);
  }
}

- (double)boundingBox
{
  v11 = VFXNullBoundingBox;
  v12 = *algn_1AFE47750;
  v4 = objc_msgSend_worldRef(self, v1, v2);
  v7 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v8 = objc_msgSend_meshRef(self, v5, v6);
  if (v8)
  {
    sub_1AF1A3234(v8, &v11, &v12);
  }

  if (v7)
  {
    sub_1AF1CEA9C(v7, v9);
  }

  return *&v11;
}

- (uint64_t)setBoundingBox:(uint64_t)box
{
  v2 = sub_1AF0D5194(box, a2);
  result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1AFDF602C(v2);
  }

  return result;
}

- (BOOL)getBoundingSphereCenter:(VFXMesh *)self radius:(SEL)radius
{
  v4 = v3;
  v5 = v2;
  v7 = objc_msgSend_worldRef(self, radius, v2);
  v10 = v7;
  if (v7)
  {
    sub_1AF1CEA20(v7, v8);
  }

  v11 = objc_msgSend_meshRef(self, v8, v9);
  v15 = 0uLL;
  if (!v11 || !sub_1AF1C39FC(v11, 0, &v15))
  {
    v13 = 0;
    if (!v10)
    {
      return v13;
    }

LABEL_12:
    sub_1AF1CEA9C(v10, v12);
    return v13;
  }

  if (v5)
  {
    *v5 = v15;
  }

  if (v4)
  {
    *v4 = HIDWORD(v15);
  }

  v13 = 1;
  if (v10)
  {
    goto LABEL_12;
  }

  return v13;
}

- (void)decodeMeshWithCoder:(id)coder
{
  selfCopy = self;
  v74 = *MEMORY[0x1E69E9840];
  v5 = sub_1AF1A2D3C(self, a2);
  if (v5 == CFGetTypeID(selfCopy->_mesh))
  {
    v58 = selfCopy;
    v6 = objc_opt_class();
    v57 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v7, v6, @"elements");
    v10 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9);
    v11 = objc_opt_class();
    v13 = sub_1AF2E4D88(v11, v12);
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v67, v73, 16);
    if (v15)
    {
      v18 = v15;
      v19 = *v68;
      do
      {
        v20 = 0;
        do
        {
          if (*v68 != v19)
          {
            objc_enumerationMutation(v13);
          }

          v21 = *(*(&v67 + 1) + 8 * v20);
          v22 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v16, v11, v21);
          if (v22 || v21 == @"kGeometrySourceSemanticPosition" && (v22 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v16, v11, @"kGeometrySourceSemanticVertex")) != 0)
          {
            objc_msgSend_addObjectsFromArray_(v10, v16, v22);
          }

          ++v20;
        }

        while (v18 != v20);
        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v67, v73, 16);
        v18 = v23;
      }

      while (v23);
    }

    v24 = *MEMORY[0x1E695E480];
    v25 = objc_msgSend_count(v10, v16, v17);
    v26 = MEMORY[0x1E695E9C0];
    Mutable = CFArrayCreateMutable(v24, v25, MEMORY[0x1E695E9C0]);
    v28 = v57;
    v31 = objc_msgSend_count(v57, v29, v30);
    v32 = CFArrayCreateMutable(v24, v31, v26);
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v33, &v63, v72, 16);
    if (v34)
    {
      v37 = v34;
      v38 = *v64;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v64 != v38)
          {
            objc_enumerationMutation(v10);
          }

          v40 = objc_msgSend_meshSource(*(*(&v63 + 1) + 8 * i), v35, v36);
          CFArrayAppendValue(Mutable, v40);
        }

        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v35, &v63, v72, 16);
      }

      while (v37);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v35, &v59, v71, 16);
    if (v41)
    {
      v44 = v41;
      v45 = *v60;
      do
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v60 != v45)
          {
            objc_enumerationMutation(v57);
          }

          v47 = objc_msgSend_meshElement(*(*(&v59 + 1) + 8 * j), v42, v43);
          CFArrayAppendValue(v32, v47);
        }

        v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v42, &v59, v71, 16);
      }

      while (v44);
    }

    v48 = objc_opt_class();
    selfCopy = v58;
    v58->_sourceChannels = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v49, v48, @"sourceChannels");
    v52 = objc_msgSend_count(v10, v50, v51);
    v53 = &v57 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1AF2E25E0(selfCopy->_sourceChannels, v52, v28, v53);
    mesh = selfCopy->_mesh;
    if (mesh)
    {
      CFRelease(mesh);
      selfCopy->_mesh = 0;
    }

    selfCopy->_mesh = sub_1AF27B22C(Mutable, v32, v53);
    CFRelease(Mutable);
    CFRelease(v32);
  }

  v55 = objc_opt_class();
  selfCopy->_name = objc_msgSend_decodeObjectOfClass_forKey_(coder, v56, v55, @"name");
}

- (void)encodeWithCoder:(id)coder
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = sub_1AF1A2D3C(self, a2);
  v6 = CFGetTypeID(self->_mesh);
  if (v5 == v6)
  {
    v8 = sub_1AF2E4D88(v6, v7);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v23, v27, 16);
    if (v10)
    {
      v13 = v10;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          v17 = objc_msgSend_meshSourcesForSemantic_(self, v11, v16);
          if (v17)
          {
            objc_msgSend_encodeObject_forKey_(coder, v11, v17, v16);
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v23, v27, 16);
      }

      while (v13);
    }

    v18 = objc_msgSend_meshElements(self, v11, v12);
    if (objc_msgSend_count(v18, v19, v20))
    {
      objc_msgSend_encodeObject_forKey_(coder, v7, v18, @"elements");
    }

    sourceChannels = self->_sourceChannels;
    if (sourceChannels)
    {
      objc_msgSend_encodeObject_forKey_(coder, v7, sourceChannels, @"sourceChannels");
    }
  }

  name = self->_name;
  if (name)
  {
    objc_msgSend_encodeObject_forKey_(coder, v7, name, @"name");
  }

  sub_1AF372440(coder, self, name);
}

- (VFXMesh)initWithCoder:(id)coder
{
  v17.receiver = self;
  v17.super_class = VFXMesh;
  v6 = [(VFXMesh *)&v17 init];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    v9 = objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    v11 = sub_1AF1A2E00(v9, v10);
    v6->_mesh = v11;
    if (v11)
    {
      sub_1AF16CDFC(v11, v6);
    }

    objc_msgSend__updateModelFromPresentation(v6, v12, v13);
    objc_msgSend_decodeMeshWithCoder_(v6, v14, coder);
    sub_1AF37249C(coder, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v15, v7);
  }

  return v6;
}

- (id)_meshByRebuildingNormals
{
  v3 = objc_msgSend_copy(self, a2, v2);
  v6 = objc_msgSend_meshRef(v3, v4, v5);
  if (v6)
  {
    v8 = sub_1AF1A2EDC(v6, v7);
    if (sub_1AF1A4CE8(v8, 0))
    {
      v10 = sub_1AF27D340(v8, 0, 0);
      if (v10)
      {
        v11 = v10;
        v12 = sub_1AF1A4C6C(v8, 0, 0);
        sub_1AF1A44D4(v8, v11, 0, v12);
        CFRelease(v11);
      }
    }

    v13 = objc_msgSend_meshWithMeshRef_(VFXMesh, v9, v8);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_meshByRemovingSkinnerSources
{
  v4 = objc_msgSend_meshRef(self, a2, v2);
  v6 = sub_1AF1A2EDC(v4, v5);
  sub_1AF1A4930(v6, 5);
  sub_1AF1A4930(v6, 6);
  v10 = objc_msgSend_meshWithMeshRef_(VFXMesh, v7, v6);
  if (v6)
  {
    CFRelease(v6);
  }

  v11 = objc_msgSend_name(self, v8, v9);
  objc_msgSend_setName_(v10, v12, v11);
  return v10;
}

- (void)_discardOriginalTopology
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_meshRef(self, a2, v2);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = objc_msgSend_meshSources(self, v5, v6);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v31, v36, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v32;
    do
    {
      v14 = 0;
      do
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = objc_msgSend_meshSource(*(*(&v31 + 1) + 8 * v14), v10, v11);
        if (v15)
        {
          sub_1AF16CDFC(v15, 0);
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v31, v36, 16);
    }

    while (v12);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = objc_msgSend_meshElements(self, v10, v11, 0);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v27, v35, 16);
  if (v18)
  {
    v21 = v18;
    v22 = *v28;
    do
    {
      v23 = 0;
      do
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v16);
        }

        v24 = objc_msgSend_meshElement(*(*(&v27 + 1) + 8 * v23), v19, v20);
        if (v24)
        {
          sub_1AF16CDFC(v24, 0);
        }

        ++v23;
      }

      while (v21 != v23);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v27, v35, 16);
    }

    while (v21);
  }

  sub_1AF1AFDA8(v4, 0);
  objc_msgSend__releaseCachedSourcesAndElements(self, v25, v26);
}

- (id)_meshByWeldingVerticesWithThreshold:(float)threshold normalThreshold:(float)normalThreshold
{
  selfCopy = self;
  v230 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_meshSourcesForSemantic_(self, a2, @"kGeometrySourceSemanticPosition");
  Object = objc_msgSend_firstObject(v7, v8, v9);
  v12 = objc_msgSend_meshSourcesForSemantic_(selfCopy, v11, @"kGeometrySourceSemanticNormal");
  v15 = objc_msgSend_firstObject(v12, v13, v14);
  objc_msgSend_meshSourcesForSemantic_(selfCopy, v16, @"kGeometrySourceSemanticTexcoord");
  v19 = objc_msgSend_vectorCount(Object, v17, v18);
  v20 = malloc_type_malloc(8 * v19, 0x100004000313F17uLL);
  v21 = malloc_type_malloc(8 * v19, 0x100004000313F17uLL);
  v24 = v21;
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      v20[i] = i;
      v21[i] = i;
    }
  }

  v26 = objc_msgSend_data(Object, v22, v23);
  v211 = objc_msgSend_bytes(v26, v27, v28);
  v212 = objc_msgSend_dataOffset(Object, v29, v30);
  v213 = objc_msgSend_dataStride(Object, v31, v32);
  qsort_r(v20, v19, 8uLL, &v211, sub_1AF37610C);
  if (v19)
  {
    v201 = 0;
    v36 = 0;
    v37 = normalThreshold + normalThreshold;
    v38 = v20;
    v187 = v20;
    do
    {
      v39 = v38[v36];
      if (v24[v39] == v39)
      {
        v40 = v211 + v212 + v213 * v39;
        v35.i64[0] = *v40;
        LODWORD(v198) = *v40;
        v35.i32[2] = *(v40 + 8);
        v195 = v35;
        v41 = objc_msgSend_data(v15, v33, v34);
        v44 = objc_msgSend_bytes(v41, v42, v43);
        v47 = objc_msgSend_dataOffset(v15, v45, v46);
        v50 = objc_msgSend_dataStride(v15, v48, v49);
        if (v15)
        {
          v52 = v44 + v47 + v50 * v39;
          v35.i64[0] = *v52;
          v35.i32[2] = *(v52 + 8);
        }

        else
        {
          v35 = 0uLL;
        }

        v54 = v36 + 1;
        if (v36 + 1 >= v19)
        {
          v53 = 0;
        }

        else
        {
          LODWORD(v53) = 0;
          v55 = v211;
          v56 = v19 - 1 - v36;
          v57 = &v20[v36 + 1];
          do
          {
            v59 = *v57++;
            v58 = v59;
            if (v24[v59] == v59)
            {
              v60 = v55 + v212 + v213 * v58;
              if (vabds_f32(v198, *v60) > threshold)
              {
                break;
              }

              v51.i32[1] = *(v60 + 4);
              v51.i32[2] = *(v60 + 8);
              v51.i32[0] = *v60;
              v61 = vsubq_f32(v195, v51);
              v51 = vmulq_f32(v61, v61);
              if (sqrtf(v51.f32[2] + vaddv_f32(*v51.f32)) <= threshold)
              {
                if (!v15 || (v51.i64[0] = *(v44 + v47 + v58 * v50), v51.i32[2] = *(v44 + v47 + 8 + v58 * v50), v51 = vmulq_f32(v35, v51), (1.0 - (v51.f32[2] + vaddv_f32(*v51.f32))) <= v37))
                {
                  v24[v58] = v39;
                  LODWORD(v53) = v53 + 1;
                }
              }
            }

            --v56;
          }

          while (v56);
          v53 = v53;
        }

        v38 = v20;
      }

      else
      {
        v53 = 0;
        v54 = v36 + 1;
      }

      v201 += v53;
      v36 = v54;
    }

    while (v54 != v19);
    if (v201)
    {
      v62 = objc_msgSend_meshSources(selfCopy, v33, v34);
      v65 = objc_msgSend_meshElements(selfCopy, v63, v64);
      v66 = MEMORY[0x1E695DF70];
      obj = v62;
      v69 = objc_msgSend_count(v62, v67, v68);
      v193 = objc_msgSend_arrayWithCapacity_(v66, v70, v69);
      v71 = MEMORY[0x1E695DF70];
      v189 = v65;
      v74 = objc_msgSend_count(v65, v72, v73);
      v192 = objc_msgSend_arrayWithCapacity_(v71, v75, v74);
      for (j = 0; j != v19; ++j)
      {
        v78 = v24[j];
        do
        {
          v79 = v78;
          v78 = v24[v78];
        }

        while (v79 > v78);
        v24[j] = v79;
        if (v79 > j && v24[v79] == v79)
        {
          v24[v79] = j;
          v24[j] = j;
        }
      }

      v186 = selfCopy;
      v209 = 0u;
      v210 = 0u;
      v207 = 0u;
      v208 = 0u;
      v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v76, &v207, v229, 16);
      v196 = v80;
      if (v80)
      {
        v190 = *v208;
        do
        {
          v83 = 0;
          do
          {
            if (*v208 != v190)
            {
              objc_enumerationMutation(obj);
            }

            v84 = *(*(&v207 + 1) + 8 * v83);
            v85 = objc_msgSend_bytesPerComponent(v84, v81, v82);
            v88 = objc_msgSend_componentsPerVector(v84, v86, v87) * v85;
            v199 = (objc_msgSend_vectorCount(v84, v89, v90) - v201) * v88;
            v91 = malloc_type_malloc(v199, 0x72F5C6EEuLL);
            v94 = objc_msgSend_data(v84, v92, v93);
            v97 = objc_msgSend_bytes(v94, v95, v96);
            objc_msgSend_vectorCount(v84, v98, v99);
            v102 = objc_msgSend_dataStride(v84, v100, v101);
            v105 = 0;
            v107 = (v97 + objc_msgSend_dataOffset(v84, v103, v104));
            v108 = v91;
            do
            {
              if (v105 == v24[v105])
              {
                memcpy(v108, v107, v88);
                v108 += v88;
              }

              v107 += v102;
              ++v105;
            }

            while (v19 != v105);
            v109 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v106, v91, v199, 1);
            v112 = objc_msgSend_semantic(v84, v110, v111);
            v115 = objc_msgSend_vectorCount(v84, v113, v114) - v201;
            v118 = objc_msgSend__componentType(v84, v116, v117);
            v121 = objc_msgSend_componentsPerVector(v84, v119, v120);
            v123 = objc_msgSend__meshSourceWithData_semantic_vectorCount_componentType_componentCount_dataOffset_dataStride_(VFXMeshSource, v122, v109, v112, v115, v118, v121, 0, 0);
            v126 = objc_msgSend_semantic(v84, v124, v125);
            objc_msgSend_isEqualToString_(v126, v127, @"kGeometrySourceSemanticPosition");
            objc_msgSend_addObject_(v193, v128, v123);
            ++v83;
          }

          while (v83 != v196);
          v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v81, &v207, v229, 16);
          v196 = v80;
        }

        while (v80);
      }

      v129 = 0;
      v130 = 0;
      v131 = v19 - v201;
      do
      {
        if (v24[v130] > v130)
        {
          v132 = sub_1AF0D5194(v80, v81);
          v80 = os_log_type_enabled(v132, OS_LOG_TYPE_FAULT);
          if (v80)
          {
            sub_1AFDFB1FC(v227, &v228, v132);
          }
        }

        if (v130 != v24[v130])
        {
          ++v129;
          if (!v130)
          {
            v133 = sub_1AF0D5194(v80, v81);
            v80 = os_log_type_enabled(v133, OS_LOG_TYPE_FAULT);
            if (v80)
            {
              sub_1AFDFB240(v225, &v226, v133);
            }
          }
        }

        if (v24[v130] > v130)
        {
          v134 = sub_1AF0D5194(v80, v81);
          v80 = os_log_type_enabled(v134, OS_LOG_TYPE_FAULT);
          if (v80)
          {
            sub_1AFDFB284(v223, &v224, v134);
          }
        }

        v187[v130] = v130 - v129;
        v24[v130] = v187[v24[v130]];
        if (v187[v130] >= v131)
        {
          v135 = sub_1AF0D5194(v80, v81);
          v80 = os_log_type_enabled(v135, OS_LOG_TYPE_FAULT);
          if (v80)
          {
            sub_1AFDFB2C8(v221, &v222, v135);
          }
        }

        ++v130;
      }

      while (v19 != v130);
      if (v129 != v201)
      {
        v136 = sub_1AF0D5194(v80, v81);
        if (os_log_type_enabled(v136, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDFB30C(v136);
        }
      }

      v205 = 0u;
      v206 = 0u;
      v203 = 0u;
      v204 = 0u;
      v194 = objc_msgSend_countByEnumeratingWithState_objects_count_(v189, v81, &v203, v220, 16);
      if (v194)
      {
        v191 = *v204;
        do
        {
          for (k = 0; k != v194; ++k)
          {
            if (*v204 != v191)
            {
              objc_enumerationMutation(v189);
            }

            v140 = *(*(&v203 + 1) + 8 * k);
            v141 = objc_msgSend_bytesPerIndex(v140, v137, v138);
            v144 = objc_msgSend_data(v140, v142, v143);
            v147 = objc_msgSend_bytes(v144, v145, v146);
            v150 = objc_msgSend_indexCount(v140, v148, v149);
            if (objc_msgSend_primitiveType(v140, v151, v152) == 4)
            {
              v155 = objc_msgSend_primitiveCount(v140, v153, v154) * v141;
            }

            else
            {
              v155 = 0;
            }

            v202 = v155;
            v197 = v155 + v150 * v141;
            v156 = malloc_type_malloc(v197, 0x100004077774924uLL);
            v200 = v156;
            if (v150)
            {
              v159 = 0;
              v160 = v156 + v202;
              do
              {
                switch(v141)
                {
                  case 4:
                    v165 = v24[*(v147 + 4 * v159)];
                    *(v160 + 4 * v159) = v165;
                    if (v131 <= v165)
                    {
                      v166 = sub_1AF0D5194(v156, v157);
                      v156 = os_log_type_enabled(v166, OS_LOG_TYPE_FAULT);
                      if (v156)
                      {
                        sub_1AFDFB390(v214, &v215, v166);
                      }
                    }

                    break;
                  case 2:
                    v163 = v24[*(v147 + 2 * v159)];
                    *(v160 + 2 * v159) = v163;
                    if (v131 <= v163)
                    {
                      v164 = sub_1AF0D5194(v156, v157);
                      v156 = os_log_type_enabled(v164, OS_LOG_TYPE_FAULT);
                      if (v156)
                      {
                        sub_1AFDFB3D4(v216, &v217, v164);
                      }
                    }

                    break;
                  case 1:
                    v161 = v24[*(v147 + v159)];
                    *(v160 + v159) = v161;
                    if (v131 <= v161)
                    {
                      v162 = sub_1AF0D5194(v156, v157);
                      v156 = os_log_type_enabled(v162, OS_LOG_TYPE_FAULT);
                      if (v156)
                      {
                        sub_1AFDFB418(v218, &v219, v162);
                      }
                    }

                    break;
                }

                ++v159;
              }

              while (v150 != v159);
            }

            if (v202)
            {
              v167 = objc_msgSend_data(v140, v157, v158);
              v170 = objc_msgSend_bytes(v167, v168, v169);
              memcpy(v200, v170, v202);
            }

            v171 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v157, v200, v197, 1);
            v174 = objc_msgSend_primitiveType(v140, v172, v173);
            v177 = objc_msgSend_primitiveCount(v140, v175, v176);
            v179 = objc_msgSend_meshElementWithData_primitiveType_primitiveCount_bytesPerIndex_(VFXMeshElement, v178, v171, v174, v177, v141);
            objc_msgSend_addObject_(v192, v180, v179);
          }

          v194 = objc_msgSend_countByEnumeratingWithState_objects_count_(v189, v137, &v203, v220, 16);
        }

        while (v194);
      }

      selfCopy = objc_msgSend_meshWithSources_elements_(VFXMesh, v137, v193, v192);
      v183 = objc_msgSend_name(v186, v181, v182);
      objc_msgSend_setName_(selfCopy, v184, v183);
      v38 = v187;
    }
  }

  else
  {
    v38 = v20;
  }

  free(v38);
  free(v24);
  return selfCopy;
}

- (id)debugQuickLookObjectWithWorld:(id)world
{
  v4 = objc_msgSend_copy(self, a2, world);
  v6 = objc_msgSend_modelWithMesh_(VFXModel, v5, v4);
  v8 = objc_msgSend_nodeWithModel_(VFXNode, v7, v6);

  return MEMORY[0x1EEE66B58](v8, sel_debugQuickLookObjectWithWorld_, world);
}

- (id)debugQuickLookObject
{
  v4 = objc_msgSend_world(self, a2, v2);

  return MEMORY[0x1EEE66B58](self, sel_debugQuickLookObjectWithWorld_, v4);
}

- (id)debugQuickLookData
{
  v3 = objc_msgSend_debugQuickLookObject(self, a2, v2);

  return UIImagePNGRepresentation(v3);
}

@end