@interface SCNMutableGeometry
- (id)mutableGeometrySourcesForSemantic:(id)semantic;
- (void)mutateGeometrySourcesWithSemantics:(id)semantics usingBlock:(id)block;
@end

@implementation SCNMutableGeometry

- (id)mutableGeometrySourcesForSemantic:(id)semantic
{
  v4 = SCNGeometrySourceSemanticToMeshSourceSemantic(semantic, a2);
  sceneRef = [(SCNGeometry *)self sceneRef];
  v7 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef, v6);
  }

  geometryRef = [(SCNGeometry *)self geometryRef];
  Mesh = C3DGeometryGetMesh(geometryRef, v9);
  if (!Mesh)
  {
    v13 = 0;
    if (!v7)
    {
      return v13;
    }

    goto LABEL_5;
  }

  v12 = Mesh;
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__SCNMutableGeometry_mutableGeometrySourcesForSemantic___block_invoke;
  v15[3] = &unk_2782FFA30;
  v16 = v4;
  v15[4] = v13;
  v15[5] = v12;
  C3DMeshApplySources(v12, 0, v15);
  if (v7)
  {
LABEL_5:
    C3DSceneUnlock(v7, v11);
  }

  return v13;
}

void __56__SCNMutableGeometry_mutableGeometrySourcesForSemantic___block_invoke(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (*(a1 + 48) == a3)
  {
    OriginalSourceMutable = a2;
    if ((C3DMeshSourceIsMutable(a2) & 1) == 0)
    {
      OriginalSourceMutable = C3DMeshMakeOriginalSourceMutable(*(a1 + 40), OriginalSourceMutable);
    }

    v6 = [[SCNGeometrySource alloc] initWithMeshSource:OriginalSourceMutable];
    [*(a1 + 32) addObject:v6];
  }
}

- (void)mutateGeometrySourcesWithSemantics:(id)semantics usingBlock:(id)block
{
  v26 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [semantics countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(semantics);
        }

        v12 = [(SCNMutableGeometry *)self mutableGeometrySourcesForSemantic:*(*(&v21 + 1) + 8 * v11)];
        if (v12)
        {
          [array addObjectsFromArray:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [semantics countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  sceneRef = [(SCNGeometry *)self sceneRef];
  v15 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef, v14);
  }

  if ((*(block + 2))(block, array))
  {
    geometryRef = [(SCNGeometry *)self geometryRef];
    Mesh = C3DGeometryGetMesh(geometryRef, v18);
    C3DMeshDidMutate(Mesh, v20);
  }

  if (v15)
  {
    C3DSceneUnlock(v15, v16);
  }
}

@end