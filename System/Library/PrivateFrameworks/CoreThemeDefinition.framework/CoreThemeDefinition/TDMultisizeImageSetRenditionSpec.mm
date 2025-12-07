@interface TDMultisizeImageSetRenditionSpec
- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document;
@end

@implementation TDMultisizeImageSetRenditionSpec

- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = [(TDMultisizeImageSetRenditionSpec *)self production:compression];
  v32 = [objc_msgSend(v6 "name")];
  sizeIndexes = [v6 sizeIndexes];
  selfCopy = self;
  multisizeImageRenditions = [(TDMultisizeImageSetRenditionSpec *)self multisizeImageRenditions];
  array = [MEMORY[0x277CBEB18] array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v10 = [sizeIndexes countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v44;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v44 != v12)
        {
          objc_enumerationMutation(sizeIndexes);
        }

        v14 = *(*(&v43 + 1) + 8 * i);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v15 = [multisizeImageRenditions countByEnumeratingWithState:&v39 objects:v48 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v40;
          while (2)
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v40 != v17)
              {
                objc_enumerationMutation(multisizeImageRenditions);
              }

              if (v14 == [*(*(&v39 + 1) + 8 * j) sizeIndex])
              {
                [array addObject:v14];
                goto LABEL_16;
              }
            }

            v16 = [multisizeImageRenditions countByEnumeratingWithState:&v39 objects:v48 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
        ;
      }

      v11 = [sizeIndexes countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v11);
  }

  if (![array count])
  {
    [TDMultisizeImageSetRenditionSpec createCSIRepresentationWithCompression:selfCopy colorSpaceID:a2 document:?];
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v20 = [array countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v36;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v36 != v22)
        {
          objc_enumerationMutation(array);
        }

        v24 = *(*(&v35 + 1) + 8 * k);
        width = [v24 width];
        height = [v24 height];
        v27 = [MEMORY[0x277CCAE60] valueWithSize:{width, height}];
        [dictionary setObject:v27 forKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", objc_msgSend(v24, "index"))}];
      }

      v21 = [array countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v21);
  }

  v28 = [objc_alloc(MEMORY[0x277D02668]) initWithMultisizeImageSetNamed:v32 sizesByIndex:dictionary];
  [v28 setTargetPlatform:{objc_msgSend(document, "targetPlatform")}];
  [v28 setRenditionProperties:{-[TDRenditionSpec propertiesAsDictionary](selfCopy, "propertiesAsDictionary")}];
  v29 = [v28 CSIRepresentationWithCompression:0];

  return v29;
}

@end