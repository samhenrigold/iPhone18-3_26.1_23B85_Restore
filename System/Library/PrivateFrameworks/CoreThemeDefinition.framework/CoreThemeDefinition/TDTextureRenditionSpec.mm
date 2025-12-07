@interface TDTextureRenditionSpec
- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document;
@end

@implementation TDTextureRenditionSpec

- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document
{
  v26[1] = *MEMORY[0x277D85DE8];
  pixelFormat = [-[TDTextureRenditionSpec pixelFormat](self pixelFormat];
  mipLevels = [(TDTextureRenditionSpec *)self mipLevels];
  v8 = [mipLevels filteredSetUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"(face = nil) OR (face.identifier = 0)"}];
  v26[0] = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"level" ascending:1];
  v9 = [v8 sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v26, 1)}];
  v10 = [v9 objectAtIndexedSubscript:0];
  v11 = [objc_msgSend(v10 "textureImage")];
  v12 = [objc_msgSend(v10 "textureImage")];
  v13 = [objc_alloc(MEMORY[0x277D02668]) initWithTextureForPixelFormat:pixelFormat];
  [v13 setSize:{v11, v12}];
  [v13 setName:{objc_msgSend(objc_msgSend(-[TDTextureRenditionSpec production](self, "production"), "name"), "name")}];
  [v13 setTextureFormat:pixelFormat];
  [v13 setCubemap:{-[TDTextureRenditionSpec cubeMap](self, "cubeMap")}];
  [v13 setPixelFormat:1095911234];
  [v13 setColorSpaceID:1];
  [v13 setTextureInterpretation:{objc_msgSend(objc_msgSend(-[TDTextureRenditionSpec production](self, "production"), "textureInterpretation"), "identifier")}];
  [v13 setTextureOpaque:{objc_msgSend(objc_msgSend(objc_msgSend(v9, "lastObject"), "textureImage"), "opaque")}];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v9);
        }

        v18 = [objc_alloc(MEMORY[0x277D026C8]) initWithKeyList:{objc_msgSend(objc_msgSend(objc_msgSend(*(*(&v21 + 1) + 8 * v17), "textureImage"), "keySpec"), "key")}];
        [v13 addMipReference:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  [v13 setRenditionProperties:{-[TDRenditionSpec propertiesAsDictionary](self, "propertiesAsDictionary")}];
  v19 = [v13 CSIRepresentationWithCompression:1];

  return v19;
}

@end