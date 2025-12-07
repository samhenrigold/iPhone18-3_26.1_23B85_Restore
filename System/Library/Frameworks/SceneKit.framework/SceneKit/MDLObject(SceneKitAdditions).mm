@interface MDLObject(SceneKitAdditions)
- (void)_updateAssociatedSCNNodeWithGeometrySetter:()SceneKitAdditions texturePathProvider:vertexAttributeNamed:materialPropertyNamed:;
@end

@implementation MDLObject(SceneKitAdditions)

- (void)_updateAssociatedSCNNodeWithGeometrySetter:()SceneKitAdditions texturePathProvider:vertexAttributeNamed:materialPropertyNamed:
{
  v79 = *MEMORY[0x277D85DE8];
  AssociatedObject = objc_getAssociatedObject(self, @"SCNSceneKitAssociatedObject");
  if (AssociatedObject)
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = [self children];
    v7 = [obj countByEnumeratingWithState:&v71 objects:v78 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v72;
      v11 = 0x277CBE000uLL;
      v46 = a3;
      v45 = *v72;
      do
      {
        v12 = 0;
        v47 = v8;
        do
        {
          if (*v72 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v71 + 1) + 8 * v12);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v50 = v12;
            if (v9)
            {
              v16 = scn_default_log(isKindOfClass, v15);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                [MDLObject(SceneKitAdditions) _updateAssociatedSCNNodeWithGeometrySetter:v70 texturePathProvider:v16 vertexAttributeNamed:? materialPropertyNamed:?];
              }
            }

            v17 = [objc_msgSend(AssociatedObject "geometry")];
            v18 = [SCNGeometry geometryWithMDLMesh:v13];
            array = [*(v11 + 2840) array];
            v20 = [*(v11 + 2840) arrayWithCapacity:{objc_msgSend(v17, "count")}];
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            submeshes = [v13 submeshes];
            v22 = [submeshes countByEnumeratingWithState:&v65 objects:v77 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v66;
              do
              {
                for (i = 0; i != v23; ++i)
                {
                  if (*v66 != v24)
                  {
                    objc_enumerationMutation(submeshes);
                  }

                  v26 = *(*(&v65 + 1) + 8 * i);
                  if ([v26 material] && objc_msgSend(v26, "indexCount"))
                  {
                    [v20 addObject:{objc_msgSend(v26, "material")}];
                  }
                }

                v23 = [submeshes countByEnumeratingWithState:&v65 objects:v77 count:16];
              }

              while (v23);
            }

            v49 = v17;
            v27 = [*(v11 + 2840) arrayWithCapacity:{objc_msgSend(v17, "count")}];
            v28 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:&stru_282DCC058];
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v29 = [v20 countByEnumeratingWithState:&v61 objects:v76 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v62;
              do
              {
                for (j = 0; j != v30; ++j)
                {
                  if (*v62 != v31)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v33 = *(*(&v61 + 1) + 8 * j);
                  v34 = objc_getAssociatedObject(v33, @"SCNSceneKitAssociatedObject");
                  if (v34)
                  {
                    v36 = [v34 copy];
                    v37 = [v36 _integrateModelKitComputedMaps:v33 withGeometry:v18 node:AssociatedObject texturePathProvider:a4 vertexAttributeNamed:a5 materialPropertyNamed:a6 filePath:v28];
                    if (v37)
                    {
                      [array addObject:v37];
                    }

                    [v27 addObject:v36];
                  }

                  else
                  {
                    v38 = scn_default_log(0, v35);
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                    {
                      [MDLObject(SceneKitAdditions) _updateAssociatedSCNNodeWithGeometrySetter:v60 texturePathProvider:v38 vertexAttributeNamed:? materialPropertyNamed:?];
                    }
                  }
                }

                v30 = [v20 countByEnumeratingWithState:&v61 objects:v76 count:16];
              }

              while (v30);
            }

            [(SCNGeometry *)v18 setMaterials:v27];
            a3 = v46;
            if (v46)
            {
              (*(v46 + 16))(v46, AssociatedObject, v18, array);
            }

            else
            {
              [AssociatedObject setGeometry:v18];
            }

            v8 = v47;
            v10 = v45;
            v12 = v50;

            v9 = 1;
            v11 = 0x277CBE000;
          }

          ++v12;
        }

        while (v12 != v8);
        v8 = [obj countByEnumeratingWithState:&v71 objects:v78 count:16];
      }

      while (v8);
    }
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  children = [self children];
  result = [children countByEnumeratingWithState:&v55 objects:v75 count:16];
  if (result)
  {
    v41 = result;
    v42 = *v56;
    do
    {
      v43 = 0;
      do
      {
        if (*v56 != v42)
        {
          objc_enumerationMutation(children);
        }

        [*(*(&v55 + 1) + 8 * v43) _updateAssociatedSCNNodeWithGeometrySetter:a3 texturePathProvider:a4 vertexAttributeNamed:a5 materialPropertyNamed:a6];
        v43 = v43 + 1;
      }

      while (v41 != v43);
      result = [children countByEnumeratingWithState:&v55 objects:v75 count:16];
      v41 = result;
    }

    while (result);
  }

  return result;
}

- (void)_updateAssociatedSCNNodeWithGeometrySetter:()SceneKitAdditions texturePathProvider:vertexAttributeNamed:materialPropertyNamed:.cold.1(uint8_t *a1, _BYTE *a2, NSObject *a3)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_0_2(&dword_21BEF7000, a3, a3, "Error: a MDLObject has more than 1 child mesh - not supported", a1);
}

- (void)_updateAssociatedSCNNodeWithGeometrySetter:()SceneKitAdditions texturePathProvider:vertexAttributeNamed:materialPropertyNamed:.cold.2(uint8_t *a1, _BYTE *a2, NSObject *a3)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_0_2(&dword_21BEF7000, a3, a3, "Error: failed to find MKMaterial corresponding SCNMaterial", a1);
}

@end