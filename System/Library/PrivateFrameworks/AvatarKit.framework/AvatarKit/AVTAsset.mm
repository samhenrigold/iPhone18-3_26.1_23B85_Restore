@interface AVTAsset
- (AVTAsset)initWithType:(int64_t)type identifier:(id)identifier path:(id)path;
- (id)assetImageForAsset:(id)asset;
- (id)instantiateResource;
- (id)resourceByCachingIfNeeded:(BOOL)needed;
- (void)decrUseCount;
- (void)enumerateVariantDependenciesOfKind:(unint64_t)kind block:(id)block;
- (void)freeCache;
- (void)incrUseCount;
- (void)instantiateResource;
@end

@implementation AVTAsset

- (AVTAsset)initWithType:(int64_t)type identifier:(id)identifier path:(id)path
{
  identifierCopy = identifier;
  pathCopy = path;
  v78.receiver = self;
  v78.super_class = AVTAsset;
  v11 = [(AVTAsset *)&v78 init];
  v12 = v11;
  if (v11)
  {
    v11->_componentType = type;
    objc_storeStrong(&v11->_identifier, identifier);
    v12->_cacheLock._os_unfair_lock_opaque = 0;
    v13 = AVTPrecompiledMemojiAssetWithIdentifier(v12->_identifier);
    if (!v13)
    {
      v14 = avt_default_log(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [AVTAsset initWithType:identifier:path:];
      }
    }

    v15 = [v13 objectForKeyedSubscript:?];
    morphVariantDependencies = v12->_morphVariantDependencies;
    v12->_morphVariantDependencies = v15;

    v17 = [v13 objectForKeyedSubscript:?];
    imageVariantDependencies = v12->_imageVariantDependencies;
    v12->_imageVariantDependencies = v17;

    v19 = [v13 objectForKeyedSubscript:?];
    materialVariantDependencies = v12->_materialVariantDependencies;
    v12->_materialVariantDependencies = v19;

    v21 = [v13 objectForKeyedSubscript:?];
    if (v21)
    {
      v76 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v77 = pathCopy;
      [v21 enumerateKeysAndObjectsUsingBlock:?];
      layers = v12->_layers;
      v12->_layers = v76;
      v23 = v76;
    }

    v68 = v21;
    v69 = identifierCopy;
    v24 = [v13 objectForKeyedSubscript:?];
    v67 = v24;
    if (v24)
    {
      v25 = v24;
      v26 = [v24 objectForKeyedSubscript:?];
      v27 = [v25 objectForKeyedSubscript:?];
      v12->_uvRemappingInfo.mirroringEnabled = [v27 BOOLValue];

      v28 = [v26 objectAtIndexedSubscript:?];
      [v28 floatValue];
      v72 = v29;
      v30 = [v26 objectAtIndexedSubscript:?];
      [v30 floatValue];
      v73 = __PAIR64__(v31, v72);
      [v26 objectAtIndexedSubscript:?];
      v33 = v32 = pathCopy;
      [v33 floatValue];
      v70 = v34;
      v35 = [v26 objectAtIndexedSubscript:?];
      [v35 floatValue];
      v71 = __PAIR64__(v36, v70);
      v37 = [v26 objectAtIndexedSubscript:?];
      [v37 floatValue];
      v66 = v38;
      v39 = [v26 objectAtIndexedSubscript:?];
      [v39 floatValue];
      v12[1].super.isa = v73;
      v12[1]._identifier = v71;
      v12[1]._resourcePath = __PAIR64__(v40, v66);

      pathCopy = v32;
    }

    else
    {
      v12->_uvRemappingInfo.mirroringEnabled = 0;
      v12[1].super.isa = 1065353216;
      v12[1]._identifier = 0x3F80000000000000;
      v12[1]._resourcePath = 0;
    }

    v41 = [v13 objectForKeyedSubscript:?];
    v42 = [pathCopy stringByAppendingPathComponent:?];
    resourcePath = v12->_resourcePath;
    v12->_resourcePath = v42;

    pathExtension = [(NSString *)v12->_resourcePath pathExtension];
    if (([pathExtension isEqualToString:?] & 1) != 0 || objc_msgSend(pathExtension, "isEqualToString:"))
    {
      v45 = [v13 objectForKeyedSubscript:?];
      v46 = v45;
      v47 = v68;
      identifierCopy = v69;
      if (v45)
      {
        unsignedIntegerValue = [v45 unsignedIntegerValue];
      }

      else
      {
        unsignedIntegerValue = 1;
      }

      v12->_editableColorCount = unsignedIntegerValue;
      v12->_resourceType = 0;
    }

    else
    {
      v12->_resourceType = 1;
      v47 = v68;
      identifierCopy = v69;
    }

    v49 = [v13 objectForKeyedSubscript:?];
    if (v49)
    {
      v50 = [pathCopy stringByAppendingPathComponent:?];
      ambientOcclusion = v12->_ambientOcclusion;
      v12->_ambientOcclusion = v50;
    }

    v52 = [v13 objectForKeyedSubscript:?];
    perAssetMain = v12->_perAssetMain;
    v12->_perAssetMain = v52;

    if (v12->_perAssetMain)
    {
      v54 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v55 = v12->_perAssetMain;
      v74 = v54;
      v75 = pathCopy;
      v56 = v54;
      [(NSDictionary *)v55 enumerateKeysAndObjectsUsingBlock:?];
      v57 = [v56 copy];
      v58 = v12->_perAssetMain;
      v12->_perAssetMain = v57;
    }

    v59 = [v13 objectForKeyedSubscript:?];

    if (v59)
    {
      v60 = [v13 objectForKeyedSubscript:?];
      v12->_forceHighTessellation = [v60 BOOLValue];
    }

    v61 = [v13 objectForKeyedSubscript:?];
    specializationSettings = v12->_specializationSettings;
    v12->_specializationSettings = v61;

    v63 = [v13 objectForKeyedSubscript:?];
    wrapDeformerDriverNames = v12->_wrapDeformerDriverNames;
    v12->_wrapDeformerDriverNames = v63;
  }

  return v12;
}

void __41__AVTAsset_initWithType_identifier_path___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 stringByAppendingPathComponent:?];
  [*(a1 + 32) setObject:? forKeyedSubscript:?];
}

void __41__AVTAsset_initWithType_identifier_path___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 stringByAppendingPathComponent:?];
  [*(a1 + 32) setObject:? forKeyedSubscript:?];
}

- (void)enumerateVariantDependenciesOfKind:(unint64_t)kind block:(id)block
{
  v16[3] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v16[0] = self->_morphVariantDependencies;
  v16[1] = self->_imageVariantDependencies;
  v16[2] = self->_materialVariantDependencies;
  v7 = v16[kind];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __53__AVTAsset_enumerateVariantDependenciesOfKind_block___block_invoke;
  v14 = &unk_1E7F482F8;
  v8 = blockCopy;
  v15 = v8;
  v9 = v7;
  [v9 enumerateKeysAndObjectsUsingBlock:?];

  for (i = 2; i != -1; --i)
  {
  }
}

void __53__AVTAsset_enumerateVariantDependenciesOfKind_block___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = AVTComponentTypeFromString(a2);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __53__AVTAsset_enumerateVariantDependenciesOfKind_block___block_invoke_2;
  v10 = &unk_1E7F482D0;
  v11 = *(a1 + 32);
  v12 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:{v7, 3221225472, __53__AVTAsset_enumerateVariantDependenciesOfKind_block___block_invoke_2, &unk_1E7F482D0}];
}

- (void)incrUseCount
{
  os_unfair_lock_lock(&self->_cacheLock);
  ++self->_refCount;

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (void)freeCache
{
  cachedResource = self->_cachedResource;
  self->_cachedResource = 0;
  MEMORY[0x1EEE66BB8](self, cachedResource);
}

- (void)decrUseCount
{
  os_unfair_lock_lock(&self->_cacheLock);
  refCount = self->_refCount;
  if (refCount)
  {
    v5 = refCount - 1;
    self->_refCount = v5;
    if (!v5)
    {
      [(AVTAsset *)self freeCache];
    }
  }

  else
  {
    v6 = avt_default_log(v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AVTAsset decrUseCount];
    }
  }

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (id)instantiateResource
{
  if (self->_resourceType == 1)
  {
    p_isa = self->_resourcePath;
  }

  else if (self->_resourceType)
  {
    v9 = avt_default_log(self);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [AVTAsset instantiateResource];
    }

    p_isa = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:? isDirectory:?];
    v4 = [MEMORY[0x1E69DF388] avt_rootNodeForWorldAtURL:? options:? error:?];
    v5 = 0;
    v6 = v5;
    if (v5)
    {
      v7 = avt_default_log(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(AVTAsset *)&self->_resourcePath instantiateResource];
      }

      p_isa = 0;
    }

    else
    {
      childNodes = [v4 childNodes];
      v7 = [childNodes objectAtIndexedSubscript:?];

      removeFromParentNode = [v7 removeFromParentNode];
      if (v7)
      {
        [NSObject avt_enableSubdivisionOnHierarchyWithQuality:v7 animoji:"avt_enableSubdivisionOnHierarchyWithQuality:animoji:"];
        if (self->_wrapDeformerDriverNames)
        {
          stringByDeletingLastPathComponent = [(NSString *)self->_resourcePath stringByDeletingLastPathComponent];
          v13 = stringByDeletingLastPathComponent;
          [v7 enumerateHierarchyUsingBlock:?];
        }

        v7 = v7;
        p_isa = &v7->isa;
      }

      else
      {
        v12 = avt_default_log(removeFromParentNode);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [AVTAsset instantiateResource];
        }

        p_isa = 0;
      }
    }
  }

  return p_isa;
}

void __31__AVTAsset_instantiateResource__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 model];

  if (v4)
  {
    v5 = [v3 name];
    v6 = [*(*(a1 + 32) + 128) objectForKeyedSubscript:?];
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:v5, v6];
    v9 = [v7 stringByAppendingPathComponent:?];

    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [v10 fileExistsAtPath:?];

    if (v11)
    {
      v18 = 0;
      v12 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:? options:? error:?];
      v13 = v18;
      v14 = MEMORY[0x1E696ACD0];
      objc_opt_class();
      v17 = v13;
      v15 = [v14 unarchivedObjectOfClass:? fromData:? error:?];
      v16 = v17;

      [v3 setValue:? forUndefinedKey:?];
      [v3 setValue:? forUndefinedKey:?];
    }
  }
}

- (id)resourceByCachingIfNeeded:(BOOL)needed
{
  if (!needed)
  {
    instantiateResource = [(AVTAsset *)self instantiateResource];
    goto LABEL_14;
  }

  os_unfair_lock_lock(&self->_cacheLock);
  if (!self->_cachedResource)
  {
    instantiateResource2 = [(AVTAsset *)self instantiateResource];
    cachedResource = self->_cachedResource;
    self->_cachedResource = instantiateResource2;
  }

  if (self->_resourceType == 1)
  {
    v7 = self->_cachedResource;
  }

  else
  {
    if (self->_resourceType)
    {
      v9 = avt_default_log(v4);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [AVTAsset instantiateResource];
      }

      instantiateResource = 0;
      goto LABEL_13;
    }

    v7 = AVTCloneNodesAndMaterials(self->_cachedResource);
  }

  instantiateResource = v7;
LABEL_13:
  os_unfair_lock_unlock(&self->_cacheLock);
LABEL_14:

  return instantiateResource;
}

- (id)assetImageForAsset:(id)asset
{
  perAssetMain = self->_perAssetMain;
  identifier = [asset identifier];
  v5 = [(NSDictionary *)perAssetMain objectForKeyedSubscript:?];

  return v5;
}

- (void)instantiateResource
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *self;
  v5 = [a2 description];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1BB472000, a3, OS_LOG_TYPE_ERROR, "Error: could not load scene at %@ with error: %@", &v6, 0x16u);
}

@end