@interface MTKMesh
+ (NSArray)newMeshesFromAsset:(MDLAsset *)asset device:(id)device sourceMeshes:(NSArray *)sourceMeshes error:(NSError *)error;
+ (void)_createMeshesFromObject:(id)object newMeshes:(id)meshes sourceMeshes:(id)sourceMeshes device:(id)device error:(id *)error;
- (MTKMesh)initWithMesh:(MDLMesh *)mesh device:(id)device error:(NSError *)error;
@end

@implementation MTKMesh

- (MTKMesh)initWithMesh:(MDLMesh *)mesh device:(id)device error:(NSError *)error
{
  v55 = *MEMORY[0x1E69E9840];
  v8 = mesh;
  v42 = device;
  v52.receiver = self;
  v52.super_class = MTKMesh;
  v9 = [(MTKMesh *)&v52 init];
  if (v9)
  {
    v43 = error;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    vertexBuffers = v9->_vertexBuffers;
    v9->_vertexBuffers = v10;

    v9->_vertexCount = [(MDLMesh *)v8 vertexCount];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v41 = v8;
    vertexBuffers = [(MDLMesh *)v8 vertexBuffers];
    v13 = [vertexBuffers countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v49;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v49 != v15)
          {
            objc_enumerationMutation(vertexBuffers);
          }

          v17 = *(*(&v48 + 1) + 8 * i);
          null = [MEMORY[0x1E695DFB0] null];
          v19 = [v17 isEqual:null];

          if ((v19 & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (v43)
              {
                *v43 = _MTKModelErrorWithCodeAndErrorString(0, @"vertex buffer in MDLMesh was not created using a MTKMeshBufferAllocator");
              }

LABEL_28:

              v39 = 0;
              v8 = v41;
              goto LABEL_29;
            }

            [(NSMutableArray *)v9->_vertexBuffers addObject:v17];
          }
        }

        v14 = [vertexBuffers countByEnumeratingWithState:&v48 objects:v54 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    submeshes = v9->_submeshes;
    v9->_submeshes = v20;

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    vertexBuffers = [(MDLMesh *)v41 submeshes];
    v22 = [vertexBuffers countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v45;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v45 != v24)
          {
            objc_enumerationMutation(vertexBuffers);
          }

          v26 = *(*(&v44 + 1) + 8 * j);
          indexBuffer = [v26 indexBuffer];
          if (indexBuffer)
          {
            v28 = indexBuffer;
            indexCount = [v26 indexCount];

            if (indexCount)
            {
              v30 = [[MTKSubmesh alloc] initWithMesh:v9 submesh:v26 device:v42 error:v43];
              if (!v30)
              {
                goto LABEL_28;
              }

              v31 = v30;
              [(NSMutableArray *)v9->_submeshes addObject:v30];
            }
          }
        }

        v23 = [vertexBuffers countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v23);
    }

    v8 = v41;
    vertexDescriptor = [(MDLMesh *)v41 vertexDescriptor];
    vertexDescriptor = v9->_vertexDescriptor;
    v9->_vertexDescriptor = vertexDescriptor;

    name = [(MDLMesh *)v41 name];

    if (name)
    {
      v35 = objc_alloc(MEMORY[0x1E696AEC0]);
      name2 = [(MDLMesh *)v41 name];
      v37 = [v35 initWithString:name2];
      name = v9->_name;
      v9->_name = v37;
    }
  }

  v39 = v9;
LABEL_29:

  return v39;
}

+ (void)_createMeshesFromObject:(id)object newMeshes:(id)meshes sourceMeshes:(id)sourceMeshes device:(id)device error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  meshesCopy = meshes;
  sourceMeshesCopy = sourceMeshes;
  deviceCopy = device;
  getMDLMeshClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = objectCopy;
    null = [[MTKMesh alloc] initWithMesh:v16 device:deviceCopy error:error];
    if (!null)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    [meshesCopy addObject:null];
    [sourceMeshesCopy addObject:v16];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  children = [objectCopy children];
  v19 = [children countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v24;
    do
    {
      v22 = 0;
      do
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(children);
        }

        [self _createMeshesFromObject:*(*(&v23 + 1) + 8 * v22++) newMeshes:meshesCopy sourceMeshes:sourceMeshesCopy device:deviceCopy error:error];
      }

      while (v20 != v22);
      v20 = [children countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v20);
  }
}

+ (NSArray)newMeshesFromAsset:(MDLAsset *)asset device:(id)device sourceMeshes:(NSArray *)sourceMeshes error:(NSError *)error
{
  v28 = *MEMORY[0x1E69E9840];
  v10 = asset;
  v11 = device;
  v12 = v11;
  if (!v10)
  {
    if (error)
    {
      v20 = @"Must supply asset";
LABEL_19:
      _MTKModelErrorWithCodeAndErrorString(0, v20);
      *error = v13 = 0;
      goto LABEL_21;
    }

LABEL_20:
    v13 = 0;
    goto LABEL_21;
  }

  if (!v11)
  {
    if (error)
    {
      v20 = @"Must supply device";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = sourceMeshes;
  if (sourceMeshes)
  {
    sourceMeshes = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = v10;
  v15 = [(MDLAsset *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [self _createMeshesFromObject:*(*(&v23 + 1) + 8 * i) newMeshes:v13 sourceMeshes:sourceMeshes device:v12 error:error];
      }

      v16 = [(MDLAsset *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  if (v22)
  {
    v19 = sourceMeshes;
    *v22 = sourceMeshes;
  }

LABEL_21:
  return v13;
}

@end