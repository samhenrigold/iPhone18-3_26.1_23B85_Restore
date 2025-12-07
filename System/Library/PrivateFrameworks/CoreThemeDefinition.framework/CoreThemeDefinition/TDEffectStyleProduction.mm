@interface TDEffectStyleProduction
- (id)displayName;
- (void)deleteRenditionsInDocument:(id)document shouldDeleteAssetFiles:(BOOL)files;
- (void)generateRenditionsWithDocument:(id)document;
@end

@implementation TDEffectStyleProduction

- (void)generateRenditionsWithDocument:(id)document
{
  v57 = *MEMORY[0x277D85DE8];
  obj = [-[TDEffectStyleProduction partDefinition](self "partDefinition")];
  selfCopy = self;
  if ([-[TDEffectStyleProduction renditions](self "renditions")])
  {
    NSLog(&cfstr_DeletingExisti.isa);
    managedObjectContext = [(TDEffectStyleProduction *)self managedObjectContext];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    renditions = [(TDEffectStyleProduction *)self renditions];
    v7 = [renditions countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v51;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v51 != v9)
          {
            objc_enumerationMutation(renditions);
          }

          [managedObjectContext deleteObject:*(*(&v50 + 1) + 8 * i)];
        }

        v8 = [renditions countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v8);
    }
  }

  v40 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(obj, "count")}];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v11 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v47;
    v14 = 0x277CCA000uLL;
    v33 = *v47;
    do
    {
      v15 = 0;
      v34 = v12;
      do
      {
        if (*v47 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v46 + 1) + 8 * v15);
        entity = [objc_msgSend(objc_msgSend(-[TDEffectStyleProduction entity](selfCopy entity];
        v17 = [[TDEffectRenditionSpec alloc] initWithEntity:entity insertIntoManagedObjectContext:[(TDEffectStyleProduction *)selfCopy managedObjectContext]];
        v18 = v17;
        [(TDEffectRenditionSpec *)v17 setProduction:selfCopy];
        [(TDRenditionSpec *)v17 resetToBaseKeySpec];
        keySpec = [(TDEffectRenditionSpec *)v17 keySpec];
        [keySpec setAttributesFromRenditionKey:objc_msgSend(v16 withDocument:{"key"), document}];
        effectPreset = [v16 effectPreset];
        v21 = *(v14 + 2992);
        [effectPreset effectScale];
        *&v22 = v22;
        -[TDEffectRenditionSpec setEffectScale:](v17, "setEffectScale:", [v21 numberWithFloat:v22]);
        v37 = effectPreset;
        [(TDEffectRenditionSpec *)v17 setComponentsFromEffectPreset:effectPreset withDocument:document];
        if ([objc_msgSend(document "catalogGlobals")])
        {
          v36 = v15;
          v45 = 0;
          documentCopy = document;
          v24 = [document allObjectsForEntity:@"Appearance" withSortDescriptors:0 error:&v45];
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v25 = v24;
          v26 = [v24 countByEnumeratingWithState:&v41 objects:v54 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v42;
            do
            {
              for (j = 0; j != v27; ++j)
              {
                if (*v42 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = *(*(&v41 + 1) + 8 * j);
                v31 = v17;
                if ([keySpec appearance])
                {
                  v31 = [[TDEffectRenditionSpec alloc] initWithEntity:entity insertIntoManagedObjectContext:[(TDEffectStyleProduction *)selfCopy managedObjectContext]];
                  [(TDEffectRenditionSpec *)v31 setProduction:selfCopy];
                  [(TDRenditionSpec *)v31 resetToBaseKeySpec];
                  [keySpec copyAttributesInto:{-[TDEffectRenditionSpec keySpec](v31, "keySpec")}];
                  [(TDEffectRenditionSpec *)v31 setEffectScale:[(TDEffectRenditionSpec *)v17 effectScale]];
                  [(TDEffectRenditionSpec *)v31 setComponentsFromEffectPreset:v37 withDocument:documentCopy];
                  v32 = v31;
                }

                [-[TDEffectRenditionSpec keySpec](v31 "keySpec")];
                [v40 addObject:v31];
              }

              v27 = [v25 countByEnumeratingWithState:&v41 objects:v54 count:16];
            }

            while (v27);
          }

          document = documentCopy;
          v13 = v33;
          v12 = v34;
          v14 = 0x277CCA000;
          v15 = v36;
        }

        else
        {
          [v40 addObject:v17];
        }

        ++v15;
      }

      while (v15 != v12);
      v12 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v12);
  }
}

- (void)deleteRenditionsInDocument:(id)document shouldDeleteAssetFiles:(BOOL)files
{
  renditions = [-[TDEffectStyleProduction renditions](self renditions];

  [document deleteObjects:renditions];
}

- (id)displayName
{
  if (![(TDEffectStyleProduction *)self name])
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"Effect: %@ – %@", objc_msgSend(objc_msgSend(-[TDEffectStyleProduction baseKeySpec](self, "baseKeySpec"), "element"), "displayName"), objc_msgSend(objc_msgSend(-[TDEffectStyleProduction baseKeySpec](self, "baseKeySpec"), "part"), "displayName")];
  }

  name = [(TDEffectStyleProduction *)self name];

  return [name name];
}

@end