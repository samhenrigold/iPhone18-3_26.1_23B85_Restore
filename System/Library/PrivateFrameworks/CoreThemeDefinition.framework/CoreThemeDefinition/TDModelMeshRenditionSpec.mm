@interface TDModelMeshRenditionSpec
+ (id)fetchRequest;
- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document;
- (void)processSubMesh:(id)mesh withAssetSubmeshIndex:(unsigned int *)index assetKeySpec:(id)spec inDocument:(id)document;
@end

@implementation TDModelMeshRenditionSpec

- (void)processSubMesh:(id)mesh withAssetSubmeshIndex:(unsigned int *)index assetKeySpec:(id)spec inDocument:(id)document
{
  v35 = *MEMORY[0x277D85DE8];
  v11 = [document newObjectForEntity:@"ModelIOSubmeshRenditionSpec"];
  v12 = [document newObjectForEntity:@"RenditionKeySpec"];
  [spec copyAttributesInto:v12];
  [v12 setElement:{objc_msgSend(document, "elementWithIdentifier:", 164)}];
  documentCopy = document;
  [v12 setPart:{objc_msgSend(document, "partWithIdentifier:", 233)}];
  [v12 setDimension2:index];
  [v11 setParentRendition:self];
  [(TDModelMeshRenditionSpec *)self addSubmeshesObject:v11];
  [v11 setKeySpec:v12];
  v28 = v11;
  [-[TDModelMeshRenditionSpec production](self "production")];
  material = [mesh material];
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (material)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = [material countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(material);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          uRLValue = [v18 URLValue];
          if ([v18 type] == 1 && uRLValue != 0)
          {
            v21 = objc_alloc_init(TDNamedAssetImportInfo);
            -[TDNamedAssetImportInfo setName:](v21, "setName:", [v18 stringValue]);
            [(TDNamedAssetImportInfo *)v21 setNameIdentifier:33333];
            [(TDNamedAssetImportInfo *)v21 setIdiom:0];
            [(TDNamedAssetImportInfo *)v21 setScaleFactor:1];
            -[TDNamedAssetImportInfo setModificationDate:](v21, "setModificationDate:", [MEMORY[0x277CBEAA8] date]);
            [(TDNamedAssetImportInfo *)v21 setRenditionType:1007];
            [(TDNamedAssetImportInfo *)v21 setTexturePixelFormat:1];
            [(TDNamedAssetImportInfo *)v21 setTextureWidth:120];
            [(TDNamedAssetImportInfo *)v21 setTextureHeight:120];
            v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v23 = objc_alloc_init(TDTextureAssetInfo);
            [(TDTextureAssetInfo *)v23 setFileURL:uRLValue];
            [(TDTextureAssetInfo *)v23 setMipLevel:0];
            [v22 addObject:v23];
            [(TDNamedAssetImportInfo *)v21 setTextureInfos:v22];
          }
        }

        v15 = [material countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v15);
    }
  }

  v29 = 0;
  v24 = v25;
  [documentCopy createNamedTexturesForCustomInfos:v26 referenceFiles:1 bitSource:objc_msgSend(documentCopy error:{"_themeBitSourceForReferencedFilesAtURLs:createIfNecessary:", v25, 1, v25), &v29}];
}

- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = [objc_msgSend(objc_msgSend(document "_cachedModelAssets")];
  v7 = [objc_alloc(MEMORY[0x277D02668]) initWithModelMesh:v6];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  submeshes = [(TDModelMeshRenditionSpec *)self submeshes];
  v9 = [submeshes countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(submeshes);
        }

        [v7 addSubmeshReference:{objc_msgSend(MEMORY[0x277D026C8], "renditionKeyWithKeyList:", objc_msgSend(objc_msgSend(*(*(&v15 + 1) + 8 * v12++), "keySpec"), "key"))}];
      }

      while (v10 != v12);
      v10 = [submeshes countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [v7 setCompressionType:2];
  v13 = [v7 CSIRepresentationWithCompression:1];

  return v13;
}

+ (id)fetchRequest
{
  v2 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"ModelIOMeshRenditionSpec"];

  return v2;
}

@end