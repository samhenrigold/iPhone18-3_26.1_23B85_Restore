@interface GKScene
+ (id)_sceneWithFileNamed:(id)named rootNode:(id)node;
- (GKScene)init;
- (GKScene)initWithCoder:(id)coder;
- (id)copy;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addEntity:(GKEntity *)entity;
- (void)addGraph:(GKGraph *)graph name:(NSString *)name;
- (void)encodeWithCoder:(id)coder;
- (void)removeEntity:(GKEntity *)entity;
- (void)removeGraph:(NSString *)name;
@end

@implementation GKScene

+ (id)_sceneWithFileNamed:(id)named rootNode:(id)node
{
  v84[16] = *MEMORY[0x277D85DE8];
  namedCopy = named;
  nodeCopy = node;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [mainBundle pathForResource:namedCopy ofType:@"gks"];
  if (!v8)
  {
    v8 = [mainBundle pathForResource:namedCopy ofType:0];
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v84[0] = objc_opt_class();
  v84[1] = objc_opt_class();
  v84[2] = objc_opt_class();
  v84[3] = objc_opt_class();
  v84[4] = objc_opt_class();
  v84[5] = objc_opt_class();
  v84[6] = objc_opt_class();
  v84[7] = objc_opt_class();
  v84[8] = objc_opt_class();
  v84[9] = objc_opt_class();
  v84[10] = objc_opt_class();
  v84[11] = objc_opt_class();
  v84[12] = objc_opt_class();
  v84[13] = objc_opt_class();
  v84[14] = objc_opt_class();
  v84[15] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:16];
  [v9 addObjectsFromArray:v10];

  if (v8)
  {
    v11 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v8 options:1 error:0];
    v12 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v11 error:0];
    v52 = objc_opt_new();
    [v12 setDelegate:?];
    v57 = mainBundle;
    v58 = namedCopy;
    v55 = v9;
    v56 = v8;
    v54 = v11;
    v60 = v12;
    if (nodeCopy)
    {
      v13 = *MEMORY[0x277CCA308];
      v79 = 0;
      v14 = [v12 decodeTopLevelObjectOfClasses:v9 forKey:v13 error:&v79];
      v15 = v79;
      v16 = v15;
      if (v15)
      {
        NSLog(&cfstr_UnableToDecode.isa, v15);
      }
    }

    else
    {
      v14 = [v12 decodeObjectOfClass:objc_opt_class() forKey:@"_gkScene"];
      v34 = [v12 decodeObjectOfClasses:v9 forKey:*MEMORY[0x277CCA308]];
      if (!v34)
      {
        if (!NSClassFromString(&cfstr_Skscene.isa))
        {
          NSLog(&cfstr_CannotLoadScen.isa, namedCopy);
        }

        v59 = 0;
        goto LABEL_32;
      }

      nodeCopy = v34;
    }

    RepairGKSceneNodeReferencesRelativeToScene(v14, nodeCopy);
    [v14 setRootNode:nodeCopy];
    v59 = nodeCopy;
LABEL_32:
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    entities = [v14 entities];
    v36 = [entities countByEnumeratingWithState:&v75 objects:v83 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v76;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v76 != v38)
          {
            objc_enumerationMutation(entities);
          }

          v40 = *(*(&v75 + 1) + 8 * i);
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          components = [v40 components];
          v42 = [components countByEnumeratingWithState:&v71 objects:v82 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = *v72;
            do
            {
              for (j = 0; j != v43; ++j)
              {
                if (*v72 != v44)
                {
                  objc_enumerationMutation(components);
                }

                [v40 addComponent:*(*(&v71 + 1) + 8 * j)];
              }

              v43 = [components countByEnumeratingWithState:&v71 objects:v82 count:16];
            }

            while (v43);
          }
        }

        v37 = [entities countByEnumeratingWithState:&v75 objects:v83 count:16];
      }

      while (v37);
    }

    v46 = v60;
    [v60 finishDecoding];
    v47 = v52;
LABEL_48:

    namedCopy = v58;
    nodeCopy = v59;
    v8 = v56;
    mainBundle = v57;
    v9 = v55;
LABEL_49:
    v48 = v14;
    goto LABEL_50;
  }

  v17 = [mainBundle pathForResource:namedCopy ofType:@"sks"];
  if (!v17)
  {
    v17 = [mainBundle pathForResource:namedCopy ofType:0];
    if (!v17)
    {
      v14 = 0;
      goto LABEL_49;
    }
  }

  v18 = v17;
  v61 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v17 options:1 error:0];
  v19 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v61 error:0];
  v20 = objc_opt_new();
  [v19 setDelegate:v20];
  v14 = [v19 decodeObjectOfClasses:v9 forKey:@"_gkScene"];
  if (NSClassFromString(&cfstr_Skscene.isa))
  {
    v51 = v20;
    v21 = *MEMORY[0x277CCA308];
    v70 = 0;
    v59 = [v19 decodeTopLevelObjectOfClasses:v9 forKey:v21 error:&v70];
    v22 = v70;

    if (v22)
    {
      NSLog(&cfstr_UnableToDecode.isa, v22);
    }

    v50 = v22;
    v53 = v19;
    v54 = v18;
    v55 = v9;
    v56 = 0;
    v57 = mainBundle;
    v58 = namedCopy;
    if (objc_opt_isKindOfClass())
    {
      RepairGKSceneNodeReferencesRelativeToScene(v14, v59);
    }

    [v14 setRootNode:v59];
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    entities2 = [v14 entities];
    v24 = [entities2 countByEnumeratingWithState:&v66 objects:v81 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v67;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v67 != v26)
          {
            objc_enumerationMutation(entities2);
          }

          v28 = *(*(&v66 + 1) + 8 * k);
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          components2 = [v28 components];
          v30 = [components2 countByEnumeratingWithState:&v62 objects:v80 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v63;
            do
            {
              for (m = 0; m != v31; ++m)
              {
                if (*v63 != v32)
                {
                  objc_enumerationMutation(components2);
                }

                [v28 addComponent:*(*(&v62 + 1) + 8 * m)];
              }

              v31 = [components2 countByEnumeratingWithState:&v62 objects:v80 count:16];
            }

            while (v31);
          }
        }

        v25 = [entities2 countByEnumeratingWithState:&v66 objects:v81 count:16];
      }

      while (v25);
    }

    v47 = v53;
    [v53 finishDecoding];

    v46 = v61;
    goto LABEL_48;
  }

  NSLog(&cfstr_CannotLoadScen.isa, namedCopy);
  v48 = v14;

LABEL_50:

  return v48;
}

- (GKScene)init
{
  v8.receiver = self;
  v8.super_class = GKScene;
  v2 = [(GKScene *)&v8 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    entities = v2->_entities;
    v2->_entities = array;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    graphs = v2->_graphs;
    v2->_graphs = dictionary;
  }

  return v2;
}

- (GKScene)initWithCoder:(id)coder
{
  v15[16] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = GKScene;
  v5 = [(GKScene *)&v14 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v15[3] = objc_opt_class();
    v15[4] = objc_opt_class();
    v15[5] = objc_opt_class();
    v15[6] = objc_opt_class();
    v15[7] = objc_opt_class();
    v15[8] = objc_opt_class();
    v15[9] = objc_opt_class();
    v15[10] = objc_opt_class();
    v15[11] = objc_opt_class();
    v15[12] = objc_opt_class();
    v15[13] = objc_opt_class();
    v15[14] = objc_opt_class();
    v15[15] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:16];
    [v6 addObjectsFromArray:v7];

    allowedClasses = [coderCopy allowedClasses];
    [v6 unionSet:allowedClasses];

    v9 = [coderCopy decodeObjectOfClasses:v6 forKey:@"_entities"];
    entities = v5->_entities;
    v5->_entities = v9;

    v11 = [coderCopy decodeObjectOfClasses:v6 forKey:@"_graphs"];
    graphs = v5->_graphs;
    v5->_graphs = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  entities = self->_entities;
  coderCopy = coder;
  [coderCopy encodeObject:entities forKey:@"_entities"];
  [coderCopy encodeObject:self->_graphs forKey:@"_graphs"];
}

- (id)copy
{
  v3 = MEMORY[0x23EE6C350](self, a2);

  return [(GKScene *)self copyWithZone:v3];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(objc_opt_class());
  array = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = self->_entities;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v26 + 1) + 8 * i) copy];
        [array addObject:v11];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  objc_storeStrong(v4 + 1, array);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  allKeys = [(NSMutableDictionary *)self->_graphs allKeys];
  v14 = [allKeys countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(allKeys);
        }

        v18 = *(*(&v22 + 1) + 8 * j);
        v19 = [(NSMutableDictionary *)self->_graphs objectForKeyedSubscript:v18];
        [dictionary setObject:v19 forKeyedSubscript:v18];
      }

      v15 = [allKeys countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v15);
  }

  v20 = v4[2];
  v4[2] = dictionary;

  return v4;
}

- (void)addEntity:(GKEntity *)entity
{
  if (entity)
  {
    [(NSMutableArray *)self->_entities addObject:?];
  }
}

- (void)removeEntity:(GKEntity *)entity
{
  if (entity)
  {
    [(NSMutableArray *)self->_entities removeObject:?];
  }
}

- (void)addGraph:(GKGraph *)graph name:(NSString *)name
{
  if (graph)
  {
    [(NSMutableDictionary *)self->_graphs setObject:graph forKeyedSubscript:name];
  }
}

- (void)removeGraph:(NSString *)name
{
  if (name)
  {
    [(NSMutableDictionary *)self->_graphs removeObjectForKey:?];
  }
}

@end