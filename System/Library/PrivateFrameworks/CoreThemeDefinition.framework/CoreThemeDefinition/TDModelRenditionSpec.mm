@interface TDModelRenditionSpec
+ (id)fetchRequest;
- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document;
- (void)processMesh:(id)mesh withAssetMeshIndex:(unsigned int *)index assetKeySpec:(id)spec inDocument:(id)document;
- (void)processModelObjectsInDocument:(id)document;
@end

@implementation TDModelRenditionSpec

+ (id)fetchRequest
{
  v2 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"ModelIORenditionSpec"];

  return v2;
}

- (void)processMesh:(id)mesh withAssetMeshIndex:(unsigned int *)index assetKeySpec:(id)spec inDocument:(id)document
{
  v25 = *MEMORY[0x277D85DE8];
  v11 = [document newObjectForEntity:@"ModelIOMeshRenditionSpec"];
  v12 = [document newObjectForEntity:@"RenditionKeySpec"];
  [spec copyAttributesInto:v12];
  [v12 setElement:{objc_msgSend(document, "elementWithIdentifier:", 164)}];
  [v12 setPart:{objc_msgSend(document, "partWithIdentifier:", 232)}];
  [v12 setDimension1:index];
  [v11 setParentRendition:self];
  [(TDModelRenditionSpec *)self addChildRenditionsObject:v11];
  [v11 setKeySpec:v12];
  [-[TDModelRenditionSpec production](self "production")];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  submeshes = [mesh submeshes];
  v14 = [submeshes countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v21;
    do
    {
      v18 = 0;
      v19 = v16;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(submeshes);
        }

        v16 = v19 + 1;
        [v11 processSubMesh:*(*(&v20 + 1) + 8 * v18++) withAssetSubmeshIndex:v19++ assetKeySpec:objc_msgSend(v11 inDocument:{"keySpec"), document}];
      }

      while (v15 != v18);
      v15 = [submeshes countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }
}

- (void)processModelObjectsInDocument:(id)document
{
  v21 = *MEMORY[0x277D85DE8];
  _cachedModelAssets = [document _cachedModelAssets];
  v6 = [-[TDModelRenditionSpec asset](self "asset")];
  v7 = [objc_alloc(MEMORY[0x277CD7AD0]) initWithURL:v6];
  if (v7)
  {
    v8 = v7;
    [_cachedModelAssets addObject:v7];
    -[TDModelRenditionSpec setModelAssetIndex:](self, "setModelAssetIndex:", [_cachedModelAssets count] - 1);
    v9 = [v8 childObjectsOfClass:objc_opt_class()];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v17;
      do
      {
        v14 = 0;
        v15 = v12;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v12 = v15 + 1;
          [(TDModelRenditionSpec *)self processMesh:*(*(&v16 + 1) + 8 * v14++) withAssetMeshIndex:v15++ assetKeySpec:[(TDModelRenditionSpec *)self keySpec] inDocument:document];
        }

        while (v11 != v14);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  else
  {
    NSLog(&cfstr_CouldnTLoadAss.isa, v6);
  }
}

- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document
{
  v21 = *MEMORY[0x277D85DE8];
  _cachedModelAssets = [objc_msgSend(document _cachedModelAssets];
  childRenditions = [(TDModelRenditionSpec *)self childRenditions];
  v9 = [objc_alloc(MEMORY[0x277D02668]) initWithModelAsset:_cachedModelAssets];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [childRenditions countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(childRenditions);
        }

        [v9 addMeshReference:{objc_msgSend(MEMORY[0x277D026C8], "renditionKeyWithKeyList:", objc_msgSend(objc_msgSend(*(*(&v16 + 1) + 8 * v13++), "keySpec"), "key"))}];
      }

      while (v11 != v13);
      v11 = [childRenditions countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [v9 setTargetPlatform:{objc_msgSend(document, "targetPlatform")}];
  [v9 setCompressionType:2];
  v14 = [v9 CSIRepresentationWithCompression:1];

  return v14;
}

@end