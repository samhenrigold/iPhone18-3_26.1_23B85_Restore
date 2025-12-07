@interface SpotlightGraph
- (BOOL)addItem:(id)item cancelBlock:(id)block;
- (BOOL)addPerson:(id)person cancelBlock:(id)block;
- (BOOL)analyzePeopleWithCancelBlock:(id)block;
- (BOOL)closeWithCancelBlock:(id)block;
- (BOOL)containsReference:(id)reference personaIdentifier:(id)identifier protectionClass:(id)class domainIdentifier:(id)domainIdentifier;
- (BOOL)deleteDomainIdentifier:(id)identifier cancelBlock:(id)block;
- (BOOL)deleteDomainIdentifier:(id)identifier personaIdentifier:(id)personaIdentifier cancelBlock:(id)block;
- (BOOL)deleteEntitiesWithCancelBlock:(id)block;
- (BOOL)deletePeopleWithCancelBlock:(id)block;
- (BOOL)deleteReferences:(id)references domainIdentifier:(id)identifier cancelBlock:(id)block;
- (BOOL)deleteReferences:(id)references personaIdentifier:(id)identifier protectionClass:(id)class domainIdentifier:(id)domainIdentifier cancelBlock:(id)block;
- (BOOL)enumeratePeopleUsingBlock:(id)block;
- (BOOL)findAllContactInfoForNode:(id)node info:(id)info reference:(id)reference foundUser:(BOOL *)user;
- (BOOL)generatePeopleUsingBlock:(id)block;
- (BOOL)hasPeople;
- (BOOL)openWithCancelBlock:(id)block;
- (BOOL)peopleAnalyzeWithCancelBlock:(id)block;
- (BOOL)peopleScoreWithCancelBlock:(id)block;
- (BOOL)peopleUpdateInfo:(id)info attributeKey:(id)key attribute:(id)attribute forNode:(id)node person:(id)person score:(id)score rank:(id)rank bestCount:(unint64_t *)self0;
- (BOOL)peopleUpdateNetwork:(void *)network sourceNodeId:(unsigned int)id nodes:(id)nodes;
- (BOOL)pruneWithCancelBlock:(id)block;
- (BOOL)scorePeopleWithCancelBlock:(id)block;
- (SpotlightGraph)initWithConfig:(id)config;
- (id)cachedPeopleScoresPath;
- (id)domains;
- (id)nameNodeFromName:(id)name nameComponents:(id)components reference:(id)reference domain:(id)domain nodes:(id)nodes edges:(id)edges isOwner:(BOOL)owner;
- (id)primaryNodesForPerson:(id)person reference:(id)reference domain:(id)domain nodes:(id)nodes edges:(id)edges isOwner:(BOOL)owner;
- (int64_t)domainCount;
- (int64_t)emailCount;
- (int64_t)nameCount;
- (int64_t)personCount;
- (int64_t)personaCountForDomain:(id)domain;
- (int64_t)phoneCount;
- (int64_t)referenceCountForDomain:(id)domain;
- (int64_t)referenceCountForDomain:(id)domain personaIdentifier:(id)identifier;
- (void)dealloc;
- (void)peopleUpdateFromItem:(id)item reference:(id)reference domain:(id)domain nodes:(id)nodes edges:(id)edges;
@end

@implementation SpotlightGraph

- (SpotlightGraph)initWithConfig:(id)config
{
  configCopy = config;
  v13.receiver = self;
  v13.super_class = SpotlightGraph;
  v6 = [(SpotlightGraph *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, config);
    v7->_peopleScores = 0;
    cachedPeopleScoresPath = [(SpotlightGraph *)v7 cachedPeopleScoresPath];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [cachedPeopleScoresPath path];
    v11 = [defaultManager fileExistsAtPath:path];

    if (v11)
    {
      v7->_peopleScores = SIGeneralTrieCreateFromFileURL();
    }
  }

  return v7;
}

- (BOOL)openWithCancelBlock:(id)block
{
  v15[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  graph = self->_graph;
  self->_graph = 0;

  v6 = self->_config;
  v7 = [SKGGraph alloc];
  resourcePath = [(SKGConfig *)v6 resourcePath];
  v9 = [(SKGGraph *)v7 initWithResourceDirectoryPath:resourcePath];
  v10 = self->_graph;
  self->_graph = v9;

  v11 = self->_graph;
  if (v11)
  {
    v12 = +[SKGUserNode user];
    v15[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    LOBYTE(v11) = [(SKGGraph *)v11 addNodes:v13 addEdges:0 cancelBlock:blockCopy];
  }

  return v11;
}

- (BOOL)closeWithCancelBlock:(id)block
{
  graph = self->_graph;
  self->_graph = 0;

  return 1;
}

- (BOOL)pruneWithCancelBlock:(id)block
{
  blockCopy = block;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  context = objc_autoreleasePoolPush();
  v5 = self->_graph;
  v6 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__11;
  v22 = __Block_byref_object_dispose__11;
  v23 = 0;
  do
  {
    if (v5)
    {
      v7 = [(SKGGraph *)v5 removeNodeSet:v6 removeEdgeSet:0 cancelBlock:blockCopy];
      if (blockCopy)
      {
        v8 = blockCopy[2](blockCopy, @"pruneWithCancelBlock") ^ 1;
      }

      else
      {
        v8 = 1;
      }

      *(v25 + 24) = v8;
      v9 = v19[5];
      v19[5] = 0;
    }

    else
    {
      v7 = 1;
    }

    if (*(v25 + 24) == 1 && v7 != 0)
    {
      v11 = [SKGNodes nodesInGraph:v5];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __39__SpotlightGraph_pruneWithCancelBlock___block_invoke;
      v14[3] = &unk_27893DBC0;
      v16 = &v18;
      v17 = &v24;
      v15 = blockCopy;
      [v11 enumerateNodesInGraph:v5 usingBlock:v14];
    }

    v6 = v19[5];
  }

  while (v6 && (v25[3] & v7 & 1) != 0);
  _Block_object_dispose(&v18, 8);

  objc_autoreleasePoolPop(context);
  _Block_object_dispose(&v24, 8);

  return v7;
}

void __39__SpotlightGraph_pruneWithCancelBlock___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v12 = a2;
  v6 = [MEMORY[0x277D22C20] any];
  v7 = [(MAEdgeCollection *)SKGEdges edgesOfType:3 onNodes:v12 matchingFilter:v6];

  if (![v7 count])
  {
    v8 = [v12 anyNode];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      objc_storeStrong((*(a1[5] + 8) + 40), a2);
      *a3 = 1;
    }
  }

  v10 = a1[4];
  if (v10)
  {
    v11 = (*(v10 + 16))(v10, @"pruneWithCancelBlock") ^ 1;
  }

  else
  {
    v11 = 1;
  }

  *(*(a1[6] + 8) + 24) = v11;
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }
}

- (void)dealloc
{
  [(SpotlightGraph *)self closeWithCancelBlock:0];
  if (self->_peopleScores)
  {
    SIGeneralTrieRelease();
  }

  v3.receiver = self;
  v3.super_class = SpotlightGraph;
  [(SpotlightGraph *)&v3 dealloc];
}

- (id)domains
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__11;
  v16 = __Block_byref_object_dispose__11;
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = objc_autoreleasePoolPush();
  v4 = self->_graph;
  v5 = [(SKGNodes *)SKGDomains nodesInGraph:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __25__SpotlightGraph_domains__block_invoke;
  v9[3] = &unk_27893DBE8;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateDomainsInGraph:v6 usingBlock:v9];

  objc_autoreleasePoolPop(v3);
  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __25__SpotlightGraph_domains__block_invoke(uint64_t a1, void *a2)
{
  v5 = +[SKGDomainNode domainWithElementIdentifier:inGraph:](SKGDomainNode, "domainWithElementIdentifier:inGraph:", [a2 nodeIdentifier], *(a1 + 32));
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = [v5 value];
  [v3 addObject:v4];
}

- (int64_t)domainCount
{
  graph = self->_graph;
  if (!graph)
  {
    return -1;
  }

  v3 = +[SKGDomainNode label];
  v4 = [(SKGGraph *)graph countOfNodesWithLabel:v3];

  return v4;
}

- (int64_t)personaCountForDomain:(id)domain
{
  domainCopy = domain;
  v5 = objc_autoreleasePoolPush();
  v6 = [SKGDomains domainsWithDomain:domainCopy inGraph:self->_graph];
  personas = [v6 personas];
  v8 = [personas count];

  objc_autoreleasePoolPop(v5);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (int64_t)referenceCountForDomain:(id)domain
{
  domainCopy = domain;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = objc_autoreleasePoolPush();
  v6 = self->_graph;
  v7 = [SKGDomains domainsWithDomain:domainCopy inGraph:v6];
  personas = [v7 personas];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__SpotlightGraph_referenceCountForDomain___block_invoke;
  v11[3] = &unk_27893DC10;
  v11[4] = &v12;
  [personas enumeratePersonasInGraph:v6 usingBlock:v11];

  objc_autoreleasePoolPop(v5);
  if (v13[3])
  {
    v9 = v13[3];
  }

  else
  {
    v9 = -1;
  }

  _Block_object_dispose(&v12, 8);

  return v9;
}

void __42__SpotlightGraph_referenceCountForDomain___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 references];
  *(*(*(a1 + 32) + 8) + 24) += [v3 count];
}

- (int64_t)referenceCountForDomain:(id)domain personaIdentifier:(id)identifier
{
  domainCopy = domain;
  identifierCopy = identifier;
  v8 = objc_autoreleasePoolPush();
  v9 = self->_graph;
  v10 = [SKGDomains domainsWithDomain:domainCopy inGraph:v9];
  v11 = [v10 personasWithPersona:identifierCopy inGraph:v9];

  references = [v11 references];
  v13 = [references count];

  objc_autoreleasePoolPop(v8);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = -1;
  }

  return v14;
}

- (id)nameNodeFromName:(id)name nameComponents:(id)components reference:(id)reference domain:(id)domain nodes:(id)nodes edges:(id)edges isOwner:(BOOL)owner
{
  nameCopy = name;
  componentsCopy = components;
  referenceCopy = reference;
  domainCopy = domain;
  nodesCopy = nodes;
  edgesCopy = edges;
  v20 = 0;
  if (nameCopy && componentsCopy && nodesCopy)
  {
    v21 = objc_autoreleasePoolPush();
    givenName = [componentsCopy givenName];
    if (givenName)
    {
      v23 = givenName;
      familyName = [componentsCopy familyName];

      if (familyName)
      {
        givenName2 = [componentsCopy givenName];
        [componentsCopy familyName];
        v26 = v34 = v21;
        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", givenName2, v26];
        familyName = [[SKGNameKeyNode alloc] initWithNameKey:v27 firstName:givenName2 lastName:v26];
        [nodesCopy addObject:familyName];

        v21 = v34;
      }
    }

    else
    {
      familyName = 0;
    }

    v20 = [[SKGNameNode alloc] initWithName:nameCopy];
    if (v20)
    {
      [nodesCopy addObject:v20];
      if (edgesCopy)
      {
        if (referenceCopy)
        {
          v28 = [SKGReferenceEdge edgeFromReference:referenceCopy toNode:v20];
          [edgesCopy addObject:v28];
        }

        v35 = v21;
        if (domainCopy)
        {
          v29 = [SKGNameEdge edgeFromName:v20 toNode:domainCopy];
          [edgesCopy addObject:v29];
          v30 = [SKGDomainEdge edgeFromDomain:domainCopy toNode:v20];
          [edgesCopy addObject:v30];

          v21 = v35;
        }

        if (familyName)
        {
          v31 = [SKGNameEdge edgeFromName:v20 toNode:familyName];
          [edgesCopy addObject:v31];
          v32 = [SKGNameKeyEdge edgeFromNameKey:familyName toNode:v20];
          [edgesCopy addObject:v32];

          v21 = v35;
        }
      }
    }

    objc_autoreleasePoolPop(v21);
  }

  return v20;
}

- (id)primaryNodesForPerson:(id)person reference:(id)reference domain:(id)domain nodes:(id)nodes edges:(id)edges isOwner:(BOOL)owner
{
  obj = owner;
  v293 = *MEMORY[0x277D85DE8];
  personCopy = person;
  referenceCopy = reference;
  domainCopy = domain;
  nodesCopy = nodes;
  edgesCopy = edges;
  allObjects4 = 0;
  v208 = nodesCopy;
  if (!personCopy || !nodesCopy)
  {
    goto LABEL_215;
  }

  v191 = objc_alloc_init(MEMORY[0x277CBEB58]);
  context = objc_autoreleasePoolPush();
  entityIdentifier = [personCopy entityIdentifier];

  if (entityIdentifier)
  {
    v18 = [SKGEntityNode alloc];
    entityIdentifier2 = [personCopy entityIdentifier];
    v20 = [(SKGEntityNode *)v18 initWithIdentifier:entityIdentifier2];

    [v208 addObject:v20];
  }

  else
  {
    v20 = 0;
  }

  v210 = v20;
  names = [personCopy names];
  v22 = [names count];

  if (v22)
  {
    v194 = 0;
    v23 = 0;
    v211 = v22;
    selfCopy = self;
    while (1)
    {
      names2 = [personCopy names];
      v25 = [names2 objectAtIndexedSubscript:v23];

      displayNames = [personCopy displayNames];
      v27 = [displayNames objectAtIndexedSubscript:v23];

      nameComponents = [personCopy nameComponents];
      v29 = [nameComponents objectAtIndexedSubscript:v23];

      if (v210)
      {
        v30 = [[SKGDisplayNameNode alloc] initWithName:v25];
        v31 = v194;
        if (!v194)
        {
          v31 = objc_alloc_init(MEMORY[0x277CBEB58]);
        }

        v194 = v31;
        [v31 addObject:v30];
        [v208 addObject:v30];
        if (!edgesCopy)
        {
          goto LABEL_20;
        }

        v32 = [SKGEdge edgeFromNode:v210 toNode:v30];
        [edgesCopy addObject:v32];
        v33 = [SKGEdge edgeFromNode:v30 toNode:v210];
        [edgesCopy addObject:v33];
      }

      else
      {
        v30 = [[SKGDisplayNameNode alloc] initWithName:v27];
        [v208 addObject:v30];
        LOBYTE(v188) = obj;
        v32 = [(SpotlightGraph *)self nameNodeFromName:v25 nameComponents:v29 reference:referenceCopy domain:domainCopy nodes:v208 edges:edgesCopy isOwner:v188];
        if (!v32)
        {
          goto LABEL_19;
        }

        v34 = v194;
        if (!v194)
        {
          v34 = objc_alloc_init(MEMORY[0x277CBEB58]);
        }

        v194 = v34;
        [v34 addObject:v32];
        if (!edgesCopy)
        {
          goto LABEL_19;
        }

        v33 = [SKGEdge edgeFromNode:v30 toNode:v32];
        [edgesCopy addObject:v33];
        v35 = [SKGEdge edgeFromNode:v32 toNode:v30];
        [edgesCopy addObject:v35];

        self = selfCopy;
      }

      v22 = v211;
LABEL_19:

LABEL_20:
      if (v22 == ++v23)
      {
        goto LABEL_23;
      }
    }
  }

  v194 = 0;
LABEL_23:
  contactIdentifier = [personCopy contactIdentifier];

  if (contactIdentifier)
  {
    v37 = [SKGContactNode alloc];
    contactIdentifier2 = [personCopy contactIdentifier];
    v212 = [(SKGContactNode *)v37 initWithIdentifier:contactIdentifier2];

    [v208 addObject:v212];
    if (edgesCopy)
    {
      if (referenceCopy)
      {
        v39 = [SKGReferenceEdge edgeFromReference:referenceCopy toNode:v212];
        [edgesCopy addObject:v39];
      }

      if (domainCopy)
      {
        v40 = [SKGEdge edgeFromNode:v212 toNode:domainCopy];
        [edgesCopy addObject:v40];
        v41 = [SKGEdge edgeFromNode:domainCopy toNode:v212];
        [edgesCopy addObject:v41];
      }

      if (v210)
      {
        v42 = [SKGEdge edgeFromNode:v210 toNode:v212];
        [edgesCopy addObject:v42];
        v43 = [SKGEdge edgeFromNode:v212 toNode:v210];
        [edgesCopy addObject:v43];
      }

      if (obj)
      {
        v44 = +[SKGUserNode user];
        v45 = [SKGEdge edgeFromNode:v212 toNode:v44];

        [edgesCopy addObject:v45];
        v46 = +[SKGUserNode user];
        v47 = [SKGEdge edgeFromNode:v46 toNode:v212];

        [edgesCopy addObject:v47];
      }
    }
  }

  else
  {
    v212 = 0;
  }

  photosPersonIdentifier = [personCopy photosPersonIdentifier];

  if (photosPersonIdentifier)
  {
    v49 = [SKGPhotoNode alloc];
    photosPersonIdentifier2 = [personCopy photosPersonIdentifier];
    v203 = [(SKGPhotoNode *)v49 initWithIdentifier:photosPersonIdentifier2];

    [v208 addObject:v203];
    if (edgesCopy)
    {
      if (referenceCopy)
      {
        v51 = [SKGReferenceEdge edgeFromReference:referenceCopy toNode:v203];
        [edgesCopy addObject:v51];
      }

      if (domainCopy)
      {
        v52 = [SKGEdge edgeFromNode:v203 toNode:domainCopy];
        [edgesCopy addObject:v52];
        v53 = [SKGEdge edgeFromNode:domainCopy toNode:v203];
        [edgesCopy addObject:v53];
      }

      if (v210)
      {
        v54 = [SKGEdge edgeFromNode:v210 toNode:v203];
        [edgesCopy addObject:v54];
        v55 = [SKGEdge edgeFromNode:v203 toNode:v210];
        [edgesCopy addObject:v55];
      }

      if (obj)
      {
        v56 = +[SKGUserNode user];
        v57 = [SKGEdge edgeFromNode:v203 toNode:v56];

        [edgesCopy addObject:v57];
        v58 = +[SKGUserNode user];
        v59 = [SKGEdge edgeFromNode:v58 toNode:v203];

        [edgesCopy addObject:v59];
      }
    }
  }

  else
  {
    v203 = 0;
  }

  v276 = 0u;
  v275 = 0u;
  v274 = 0u;
  v273 = 0u;
  emailAddresses = [personCopy emailAddresses];
  v61 = [emailAddresses countByEnumeratingWithState:&v273 objects:v292 count:16];
  if (v61)
  {
    v204 = 0;
    v62 = *v274;
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v274 != v62)
        {
          objc_enumerationMutation(emailAddresses);
        }

        v64 = [[SKGEmailNode alloc] initWithEmailAddress:*(*(&v273 + 1) + 8 * i)];
        [v208 addObject:v64];
        v65 = v204;
        if (!v204)
        {
          v65 = objc_alloc_init(MEMORY[0x277CBEB58]);
        }

        v204 = v65;
        [v65 addObject:v64];
        if (edgesCopy)
        {
          if (referenceCopy)
          {
            v66 = [SKGReferenceEdge edgeFromReference:referenceCopy toNode:v64];
            [edgesCopy addObject:v66];
          }

          if (domainCopy)
          {
            v67 = [SKGEdge edgeFromNode:v64 toNode:domainCopy];
            [edgesCopy addObject:v67];
            v68 = [SKGEdge edgeFromNode:domainCopy toNode:v64];
            [edgesCopy addObject:v68];
          }

          if (v210)
          {
            v69 = [SKGEdge edgeFromNode:v210 toNode:v64];
            [edgesCopy addObject:v69];
            v70 = [SKGEdge edgeFromNode:v64 toNode:v210];
            [edgesCopy addObject:v70];
          }
        }
      }

      v61 = [emailAddresses countByEnumeratingWithState:&v273 objects:v292 count:16];
    }

    while (v61);
  }

  else
  {
    v204 = 0;
  }

  v272 = 0u;
  v271 = 0u;
  v270 = 0u;
  v269 = 0u;
  phoneNumbers = [personCopy phoneNumbers];
  v72 = [phoneNumbers countByEnumeratingWithState:&v269 objects:v291 count:16];
  if (v72)
  {
    v206 = 0;
    v73 = *v270;
    do
    {
      for (j = 0; j != v72; ++j)
      {
        if (*v270 != v73)
        {
          objc_enumerationMutation(phoneNumbers);
        }

        v75 = [[SKGPhoneNode alloc] initWithPhoneNumber:*(*(&v269 + 1) + 8 * j)];
        [v208 addObject:v75];
        v76 = v206;
        if (!v206)
        {
          v76 = objc_alloc_init(MEMORY[0x277CBEB58]);
        }

        v206 = v76;
        [v76 addObject:v75];
        if (edgesCopy)
        {
          if (referenceCopy)
          {
            v77 = [SKGReferenceEdge edgeFromReference:referenceCopy toNode:v75];
            [edgesCopy addObject:v77];
          }

          if (domainCopy)
          {
            v78 = [SKGEdge edgeFromNode:v75 toNode:domainCopy];
            [edgesCopy addObject:v78];
            v79 = [SKGEdge edgeFromNode:domainCopy toNode:v75];
            [edgesCopy addObject:v79];
          }

          if (v210)
          {
            v80 = [SKGEdge edgeFromNode:v210 toNode:v75];
            [edgesCopy addObject:v80];
            v81 = [SKGEdge edgeFromNode:v75 toNode:v210];
            [edgesCopy addObject:v81];
          }

          if (obj)
          {
            v82 = +[SKGUserNode user];
            v83 = [SKGEdge edgeFromNode:v75 toNode:v82];

            [edgesCopy addObject:v83];
            v84 = +[SKGUserNode user];
            v85 = [SKGEdge edgeFromNode:v84 toNode:v75];

            [edgesCopy addObject:v85];
          }
        }
      }

      v72 = [phoneNumbers countByEnumeratingWithState:&v269 objects:v291 count:16];
    }

    while (v72);
  }

  else
  {
    v206 = 0;
  }

  if (edgesCopy && !v210)
  {
    if (v212)
    {
      if (v203)
      {
        v86 = [SKGEdge edgeFromNode:v212 toNode:v203];
        [edgesCopy addObject:v86];
        v87 = [SKGEdge edgeFromNode:v203 toNode:v212];
        [edgesCopy addObject:v87];
      }

      v268 = 0u;
      v266 = 0u;
      v267 = 0u;
      v265 = 0u;
      v88 = v194;
      v89 = [v88 countByEnumeratingWithState:&v265 objects:v290 count:16];
      if (v89)
      {
        v90 = *v266;
        do
        {
          for (k = 0; k != v89; ++k)
          {
            if (*v266 != v90)
            {
              objc_enumerationMutation(v88);
            }

            v92 = *(*(&v265 + 1) + 8 * k);
            v93 = [SKGEdge edgeFromNode:v212 toNode:v92];
            [edgesCopy addObject:v93];
            v94 = [SKGEdge edgeFromNode:v92 toNode:v212];
            [edgesCopy addObject:v94];
          }

          v89 = [v88 countByEnumeratingWithState:&v265 objects:v290 count:16];
        }

        while (v89);
      }

      v263 = 0u;
      v264 = 0u;
      v261 = 0u;
      v262 = 0u;
      v95 = v204;
      v96 = [v95 countByEnumeratingWithState:&v261 objects:v289 count:16];
      if (v96)
      {
        v97 = *v262;
        do
        {
          for (m = 0; m != v96; ++m)
          {
            if (*v262 != v97)
            {
              objc_enumerationMutation(v95);
            }

            v99 = *(*(&v261 + 1) + 8 * m);
            v100 = [SKGEdge edgeFromNode:v212 toNode:v99];
            [edgesCopy addObject:v100];
            v101 = [SKGEdge edgeFromNode:v99 toNode:v212];
            [edgesCopy addObject:v101];
          }

          v96 = [v95 countByEnumeratingWithState:&v261 objects:v289 count:16];
        }

        while (v96);
      }

      v259 = 0u;
      v260 = 0u;
      v257 = 0u;
      v258 = 0u;
      v102 = v206;
      v103 = [v102 countByEnumeratingWithState:&v257 objects:v288 count:16];
      if (v103)
      {
        v104 = *v258;
        do
        {
          for (n = 0; n != v103; ++n)
          {
            if (*v258 != v104)
            {
              objc_enumerationMutation(v102);
            }

            v106 = *(*(&v257 + 1) + 8 * n);
            v107 = [SKGEdge edgeFromNode:v212 toNode:v106];
            [edgesCopy addObject:v107];
            v108 = [SKGEdge edgeFromNode:v106 toNode:v212];
            [edgesCopy addObject:v108];
          }

          v103 = [v102 countByEnumeratingWithState:&v257 objects:v288 count:16];
        }

        while (v103);
      }

      if (v203)
      {
        v109 = [SKGEdge edgeFromNode:v203 toNode:v212];
        [edgesCopy addObject:v109];
        v110 = [SKGEdge edgeFromNode:v212 toNode:v203];
        [edgesCopy addObject:v110];

LABEL_112:
        v255 = 0u;
        v256 = 0u;
        v253 = 0u;
        v254 = 0u;
        v111 = v194;
        v112 = [v111 countByEnumeratingWithState:&v253 objects:v287 count:16];
        if (v112)
        {
          v113 = *v254;
          do
          {
            for (ii = 0; ii != v112; ++ii)
            {
              if (*v254 != v113)
              {
                objc_enumerationMutation(v111);
              }

              v115 = *(*(&v253 + 1) + 8 * ii);
              v116 = [SKGEdge edgeFromNode:v203 toNode:v115];
              [edgesCopy addObject:v116];
              v117 = [SKGEdge edgeFromNode:v115 toNode:v203];
              [edgesCopy addObject:v117];
            }

            v112 = [v111 countByEnumeratingWithState:&v253 objects:v287 count:16];
          }

          while (v112);
        }

        v251 = 0u;
        v252 = 0u;
        v249 = 0u;
        v250 = 0u;
        v118 = v204;
        v119 = [v118 countByEnumeratingWithState:&v249 objects:v286 count:16];
        if (v119)
        {
          v120 = *v250;
          do
          {
            for (jj = 0; jj != v119; ++jj)
            {
              if (*v250 != v120)
              {
                objc_enumerationMutation(v118);
              }

              v122 = *(*(&v249 + 1) + 8 * jj);
              v123 = [SKGEdge edgeFromNode:v203 toNode:v122];
              [edgesCopy addObject:v123];
              v124 = [SKGEdge edgeFromNode:v122 toNode:v203];
              [edgesCopy addObject:v124];
            }

            v119 = [v118 countByEnumeratingWithState:&v249 objects:v286 count:16];
          }

          while (v119);
        }

        v247 = 0u;
        v248 = 0u;
        v245 = 0u;
        v246 = 0u;
        v125 = v206;
        v126 = [v125 countByEnumeratingWithState:&v245 objects:v285 count:16];
        if (v126)
        {
          v127 = *v246;
          do
          {
            for (kk = 0; kk != v126; ++kk)
            {
              if (*v246 != v127)
              {
                objc_enumerationMutation(v125);
              }

              v129 = *(*(&v245 + 1) + 8 * kk);
              v130 = [SKGEdge edgeFromNode:v203 toNode:v129];
              [edgesCopy addObject:v130];
              v131 = [SKGEdge edgeFromNode:v129 toNode:v203];
              [edgesCopy addObject:v131];
            }

            v126 = [v125 countByEnumeratingWithState:&v245 objects:v285 count:16];
          }

          while (v126);
        }

        v193 = 0;
        goto LABEL_135;
      }
    }

    else if (v203)
    {
      goto LABEL_112;
    }

    v193 = 1;
LABEL_135:
    v243 = 0u;
    v244 = 0u;
    v241 = 0u;
    v242 = 0u;
    obja = v194;
    v132 = [obja countByEnumeratingWithState:&v241 objects:v284 count:16];
    if (v132)
    {
      v195 = *v242;
      do
      {
        v198 = v132;
        for (mm = 0; mm != v198; ++mm)
        {
          if (*v242 != v195)
          {
            objc_enumerationMutation(obja);
          }

          v134 = *(*(&v241 + 1) + 8 * mm);
          v237 = 0u;
          v238 = 0u;
          v239 = 0u;
          v240 = 0u;
          v135 = obja;
          v136 = [v135 countByEnumeratingWithState:&v237 objects:v283 count:16];
          if (v136)
          {
            v137 = *v238;
            do
            {
              for (nn = 0; nn != v136; ++nn)
              {
                if (*v238 != v137)
                {
                  objc_enumerationMutation(v135);
                }

                v139 = *(*(&v237 + 1) + 8 * nn);
                if (([v134 isEqualToNode:v139] & 1) == 0)
                {
                  v140 = [SKGEdge edgeFromNode:v134 toNode:v139];
                  [edgesCopy addObject:v140];
                  v141 = [SKGEdge edgeFromNode:v139 toNode:v134];
                  [edgesCopy addObject:v141];
                }
              }

              v136 = [v135 countByEnumeratingWithState:&v237 objects:v283 count:16];
            }

            while (v136);
          }
        }

        v132 = [v135 countByEnumeratingWithState:&v241 objects:v284 count:16];
      }

      while (v132);
    }

    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v192 = v204;
    v142 = [v192 countByEnumeratingWithState:&v233 objects:v282 count:16];
    if (v142)
    {
      v196 = *v234;
      do
      {
        v199 = v142;
        for (i1 = 0; i1 != v199; ++i1)
        {
          if (*v234 != v196)
          {
            objc_enumerationMutation(v192);
          }

          v144 = *(*(&v233 + 1) + 8 * i1);
          if ((v193 & 1) == 0)
          {
            v145 = [SKGEdge edgeFromNode:v203 toNode:*(*(&v233 + 1) + 8 * i1)];
            [edgesCopy addObject:v145];
            v146 = [SKGEdge edgeFromNode:v144 toNode:v203];
            [edgesCopy addObject:v146];
          }

          if (v212)
          {
            v147 = [SKGEdge edgeFromNode:v212 toNode:v144];
            [edgesCopy addObject:v147];
            v148 = [SKGEdge edgeFromNode:v144 toNode:v212];
            [edgesCopy addObject:v148];
          }

          v231 = 0u;
          v232 = 0u;
          v229 = 0u;
          v230 = 0u;
          v149 = obja;
          v150 = [v149 countByEnumeratingWithState:&v229 objects:v281 count:16];
          if (v150)
          {
            v151 = *v230;
            do
            {
              for (i2 = 0; i2 != v150; ++i2)
              {
                if (*v230 != v151)
                {
                  objc_enumerationMutation(v149);
                }

                v153 = *(*(&v229 + 1) + 8 * i2);
                v154 = [SKGEdge edgeFromNode:v144 toNode:v153];
                [edgesCopy addObject:v154];
                v155 = [SKGEdge edgeFromNode:v153 toNode:v144];
                [edgesCopy addObject:v155];
              }

              v150 = [v149 countByEnumeratingWithState:&v229 objects:v281 count:16];
            }

            while (v150);
          }

          v227 = 0u;
          v228 = 0u;
          v225 = 0u;
          v226 = 0u;
          v156 = v206;
          v157 = [v156 countByEnumeratingWithState:&v225 objects:v280 count:16];
          if (v157)
          {
            v158 = *v226;
            do
            {
              for (i3 = 0; i3 != v157; ++i3)
              {
                if (*v226 != v158)
                {
                  objc_enumerationMutation(v156);
                }

                v160 = *(*(&v225 + 1) + 8 * i3);
                v161 = [SKGEdge edgeFromNode:v144 toNode:v160];
                [edgesCopy addObject:v161];
                v162 = [SKGEdge edgeFromNode:v160 toNode:v144];
                [edgesCopy addObject:v162];
              }

              v157 = [v156 countByEnumeratingWithState:&v225 objects:v280 count:16];
            }

            while (v157);
          }
        }

        v142 = [v192 countByEnumeratingWithState:&v233 objects:v282 count:16];
      }

      while (v142);
    }

    v223 = 0u;
    v224 = 0u;
    v221 = 0u;
    v222 = 0u;
    v190 = v206;
    v163 = [v190 countByEnumeratingWithState:&v221 objects:v279 count:16];
    if (v163)
    {
      v197 = *v222;
      do
      {
        v200 = v163;
        for (i4 = 0; i4 != v200; ++i4)
        {
          if (*v222 != v197)
          {
            objc_enumerationMutation(v190);
          }

          v165 = *(*(&v221 + 1) + 8 * i4);
          if ((v193 & 1) == 0)
          {
            v166 = [SKGEdge edgeFromNode:v203 toNode:*(*(&v221 + 1) + 8 * i4)];
            [edgesCopy addObject:v166];
            v167 = [SKGEdge edgeFromNode:v165 toNode:v203];
            [edgesCopy addObject:v167];
          }

          if (v212)
          {
            v168 = [SKGEdge edgeFromNode:v212 toNode:v165];
            [edgesCopy addObject:v168];
            v169 = [SKGEdge edgeFromNode:v165 toNode:v212];
            [edgesCopy addObject:v169];
          }

          v219 = 0u;
          v220 = 0u;
          v217 = 0u;
          v218 = 0u;
          v170 = obja;
          v171 = [v170 countByEnumeratingWithState:&v217 objects:v278 count:16];
          if (v171)
          {
            v172 = *v218;
            do
            {
              for (i5 = 0; i5 != v171; ++i5)
              {
                if (*v218 != v172)
                {
                  objc_enumerationMutation(v170);
                }

                v174 = *(*(&v217 + 1) + 8 * i5);
                v175 = [SKGEdge edgeFromNode:v165 toNode:v174];
                [edgesCopy addObject:v175];
                v176 = [SKGEdge edgeFromNode:v174 toNode:v165];
                [edgesCopy addObject:v176];
              }

              v171 = [v170 countByEnumeratingWithState:&v217 objects:v278 count:16];
            }

            while (v171);
          }

          v215 = 0u;
          v216 = 0u;
          v213 = 0u;
          v214 = 0u;
          v177 = v192;
          v178 = [v177 countByEnumeratingWithState:&v213 objects:v277 count:16];
          if (v178)
          {
            v179 = *v214;
            do
            {
              for (i6 = 0; i6 != v178; ++i6)
              {
                if (*v214 != v179)
                {
                  objc_enumerationMutation(v177);
                }

                v181 = [SKGEdge edgeFromNode:v165 toNode:*(*(&v213 + 1) + 8 * i6)];
                [edgesCopy addObject:v181];
                v182 = [SKGEdge edgeFromNode:v165 toNode:v212];
                [edgesCopy addObject:v182];
              }

              v178 = [v177 countByEnumeratingWithState:&v213 objects:v277 count:16];
            }

            while (v178);
          }
        }

        v163 = [v190 countByEnumeratingWithState:&v221 objects:v279 count:16];
      }

      while (v163);
    }
  }

  v183 = v206;
  if (v212)
  {
    [v191 addObject:v212];
  }

  if (v203)
  {
    [v191 addObject:v203];
  }

  if (v210)
  {
    [v191 addObject:v210];
  }

  if ([v204 count])
  {
    allObjects = [v204 allObjects];
    [v191 addObjectsFromArray:allObjects];

    v183 = v206;
  }

  if ([v183 count])
  {
    allObjects2 = [v183 allObjects];
    [v191 addObjectsFromArray:allObjects2];

    v183 = v206;
  }

  if ([v194 count])
  {
    allObjects3 = [v194 allObjects];
    [v191 addObjectsFromArray:allObjects3];

    v183 = v206;
  }

  objc_autoreleasePoolPop(context);
  allObjects4 = [v191 allObjects];

LABEL_215:

  return allObjects4;
}

- (void)peopleUpdateFromItem:(id)item reference:(id)reference domain:(id)domain nodes:(id)nodes edges:(id)edges
{
  v367 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  referenceCopy = reference;
  domainCopy = domain;
  nodesCopy = nodes;
  edgesCopy = edges;
  context = objc_autoreleasePoolPush();
  v332 = 0u;
  v333 = 0u;
  v334 = 0u;
  v335 = 0u;
  obj = [itemCopy owners];
  v231 = itemCopy;
  v150 = [obj countByEnumeratingWithState:&v332 objects:v366 count:16];
  if (v150)
  {
    v148 = *v333;
    selfCopy = self;
    do
    {
      v13 = 0;
      do
      {
        if (*v333 != v148)
        {
          objc_enumerationMutation(obj);
        }

        v152 = v13;
        v14 = *(*(&v332 + 1) + 8 * v13);
        v15 = objc_opt_new();
        v16 = objc_opt_new();
        v17 = +[SKGUserNode user];
        v365 = v17;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v365 count:1];
        v164 = v16;
        [v16 addObject:v18];

        v19 = [(SpotlightGraph *)self primaryNodesForPerson:v14 reference:referenceCopy domain:domainCopy nodes:nodesCopy edges:edgesCopy isOwner:1];
        if (v19)
        {
          [v15 addObject:v19];
        }

        v151 = v19;
        v331 = 0u;
        v330 = 0u;
        v329 = 0u;
        v328 = 0u;
        v156 = v15;
        v166 = [v156 countByEnumeratingWithState:&v328 objects:v364 count:16];
        if (v166)
        {
          v160 = *v329;
          do
          {
            v20 = 0;
            do
            {
              if (*v329 != v160)
              {
                objc_enumerationMutation(v156);
              }

              v170 = v20;
              v182 = *(*(&v328 + 1) + 8 * v20);
              v324 = 0u;
              v325 = 0u;
              v326 = 0u;
              v327 = 0u;
              v174 = v164;
              v186 = [v174 countByEnumeratingWithState:&v324 objects:v363 count:16];
              if (v186)
              {
                v178 = *v325;
                do
                {
                  v21 = 0;
                  do
                  {
                    if (*v325 != v178)
                    {
                      objc_enumerationMutation(v174);
                    }

                    v190 = v21;
                    v202 = *(*(&v324 + 1) + 8 * v21);
                    v320 = 0u;
                    v321 = 0u;
                    v322 = 0u;
                    v323 = 0u;
                    v194 = v182;
                    v206 = [v194 countByEnumeratingWithState:&v320 objects:v362 count:16];
                    if (v206)
                    {
                      v198 = *v321;
                      do
                      {
                        v22 = 0;
                        do
                        {
                          if (*v321 != v198)
                          {
                            objc_enumerationMutation(v194);
                          }

                          v210 = v22;
                          v23 = *(*(&v320 + 1) + 8 * v22);
                          v316 = 0u;
                          v317 = 0u;
                          v318 = 0u;
                          v319 = 0u;
                          v214 = v202;
                          v222 = [v214 countByEnumeratingWithState:&v316 objects:v361 count:16];
                          if (v222)
                          {
                            v218 = *v317;
                            do
                            {
                              v24 = 0;
                              do
                              {
                                if (*v317 != v218)
                                {
                                  objc_enumerationMutation(v214);
                                }

                                v226 = v24;
                                v25 = *(*(&v316 + 1) + 8 * v24);
                                v312 = 0u;
                                v313 = 0u;
                                v314 = 0u;
                                v315 = 0u;
                                interactions = [itemCopy interactions];
                                v27 = [interactions countByEnumeratingWithState:&v312 objects:v360 count:16];
                                if (v27)
                                {
                                  v28 = v27;
                                  v29 = *v313;
                                  do
                                  {
                                    for (i = 0; i != v28; ++i)
                                    {
                                      if (*v313 != v29)
                                      {
                                        objc_enumerationMutation(interactions);
                                      }

                                      v31 = *(*(&v312 + 1) + 8 * i);
                                      interactions2 = [itemCopy interactions];
                                      v33 = [interactions2 objectForKeyedSubscript:v31];

                                      v34 = [SKGInteractionEdge alloc];
                                      bundleIdentifier = [itemCopy bundleIdentifier];
                                      v36 = [(SKGInteractionEdge *)v34 initWithSourceNode:v23 targetNode:v25 domainIdentifier:bundleIdentifier relationship:v31 score:v33];

                                      itemCopy = v231;
                                      [edgesCopy addObject:v36];
                                    }

                                    v28 = [interactions countByEnumeratingWithState:&v312 objects:v360 count:16];
                                  }

                                  while (v28);
                                }

                                v24 = v226 + 1;
                              }

                              while (v226 + 1 != v222);
                              v222 = [v214 countByEnumeratingWithState:&v316 objects:v361 count:16];
                            }

                            while (v222);
                          }

                          v22 = v210 + 1;
                        }

                        while (v210 + 1 != v206);
                        v206 = [v194 countByEnumeratingWithState:&v320 objects:v362 count:16];
                      }

                      while (v206);
                    }

                    v21 = v190 + 1;
                  }

                  while (v190 + 1 != v186);
                  v186 = [v174 countByEnumeratingWithState:&v324 objects:v363 count:16];
                }

                while (v186);
              }

              v20 = v170 + 1;
            }

            while ((v170 + 1) != v166);
            v166 = [v156 countByEnumeratingWithState:&v328 objects:v364 count:16];
          }

          while (v166);
        }

        v13 = v152 + 1;
        self = selfCopy;
      }

      while (v152 + 1 != v150);
      v150 = [obj countByEnumeratingWithState:&v332 objects:v366 count:16];
    }

    while (v150);
  }

  authors = [itemCopy authors];
  if ([authors count])
  {
    recipients = [itemCopy recipients];
    v39 = [recipients count];

    if (v39)
    {
      v40 = objc_opt_new();
      v41 = objc_opt_new();
      v42 = +[SKGUserNode user];
      v359 = v42;
      v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v359 count:1];
      [v41 addObject:v43];

      v311 = 0u;
      v310 = 0u;
      v309 = 0u;
      v308 = 0u;
      authors2 = [itemCopy authors];
      v45 = [authors2 countByEnumeratingWithState:&v308 objects:v358 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v309;
        do
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v309 != v47)
            {
              objc_enumerationMutation(authors2);
            }

            v49 = [(SpotlightGraph *)self primaryNodesForPerson:*(*(&v308 + 1) + 8 * j) reference:referenceCopy domain:domainCopy nodes:nodesCopy edges:edgesCopy isOwner:0];
            if (v49)
            {
              [v40 addObject:v49];
            }
          }

          v46 = [authors2 countByEnumeratingWithState:&v308 objects:v358 count:16];
        }

        while (v46);
      }

      v307 = 0u;
      v306 = 0u;
      v305 = 0u;
      v304 = 0u;
      recipients2 = [itemCopy recipients];
      v51 = [recipients2 countByEnumeratingWithState:&v304 objects:v357 count:16];
      if (v51)
      {
        v52 = v51;
        v53 = *v305;
        do
        {
          for (k = 0; k != v52; ++k)
          {
            if (*v305 != v53)
            {
              objc_enumerationMutation(recipients2);
            }

            v55 = [(SpotlightGraph *)self primaryNodesForPerson:*(*(&v304 + 1) + 8 * k) reference:referenceCopy domain:domainCopy nodes:nodesCopy edges:edgesCopy isOwner:0];
            if (v55)
            {
              [v41 addObject:v55];
            }
          }

          v52 = [recipients2 countByEnumeratingWithState:&v304 objects:v357 count:16];
        }

        while (v52);
      }

      v303 = 0u;
      v302 = 0u;
      v301 = 0u;
      v300 = 0u;
      v165 = v40;
      v161 = [v165 countByEnumeratingWithState:&v300 objects:v356 count:16];
      if (!v161)
      {
        goto LABEL_213;
      }

      v157 = *v301;
      v171 = v41;
      do
      {
        v56 = 0;
        do
        {
          if (*v301 != v157)
          {
            objc_enumerationMutation(v165);
          }

          v167 = v56;
          v183 = *(*(&v300 + 1) + 8 * v56);
          v296 = 0u;
          v297 = 0u;
          v298 = 0u;
          v299 = 0u;
          v57 = v41;
          v187 = [v57 countByEnumeratingWithState:&v296 objects:v355 count:16];
          if (v187)
          {
            v175 = *v297;
            v179 = v57;
            do
            {
              v58 = 0;
              do
              {
                if (*v297 != v175)
                {
                  objc_enumerationMutation(v57);
                }

                v191 = v58;
                v203 = *(*(&v296 + 1) + 8 * v58);
                v292 = 0u;
                v293 = 0u;
                v294 = 0u;
                v295 = 0u;
                v195 = v183;
                v207 = [v195 countByEnumeratingWithState:&v292 objects:v354 count:16];
                if (v207)
                {
                  v199 = *v293;
                  do
                  {
                    v59 = 0;
                    do
                    {
                      if (*v293 != v199)
                      {
                        objc_enumerationMutation(v195);
                      }

                      v211 = v59;
                      v60 = *(*(&v292 + 1) + 8 * v59);
                      v288 = 0u;
                      v289 = 0u;
                      v290 = 0u;
                      v291 = 0u;
                      v215 = v203;
                      v223 = [v215 countByEnumeratingWithState:&v288 objects:v353 count:16];
                      if (v223)
                      {
                        v219 = *v289;
                        do
                        {
                          v61 = 0;
                          do
                          {
                            if (*v289 != v219)
                            {
                              objc_enumerationMutation(v215);
                            }

                            v227 = v61;
                            v62 = *(*(&v288 + 1) + 8 * v61);
                            v284 = 0u;
                            v285 = 0u;
                            v286 = 0u;
                            v287 = 0u;
                            interactions3 = [v231 interactions];
                            v64 = [interactions3 countByEnumeratingWithState:&v284 objects:v352 count:16];
                            if (v64)
                            {
                              v65 = v64;
                              v66 = *v285;
                              do
                              {
                                for (m = 0; m != v65; ++m)
                                {
                                  if (*v285 != v66)
                                  {
                                    objc_enumerationMutation(interactions3);
                                  }

                                  v68 = *(*(&v284 + 1) + 8 * m);
                                  interactions4 = [v231 interactions];
                                  v70 = [interactions4 objectForKeyedSubscript:v68];

                                  v71 = [SKGInteractionEdge alloc];
                                  bundleIdentifier2 = [v231 bundleIdentifier];
                                  v73 = [(SKGInteractionEdge *)v71 initWithSourceNode:v60 targetNode:v62 domainIdentifier:bundleIdentifier2 relationship:v68 score:v70];

                                  [edgesCopy addObject:v73];
                                }

                                v65 = [interactions3 countByEnumeratingWithState:&v284 objects:v352 count:16];
                              }

                              while (v65);
                            }

                            v61 = v227 + 1;
                          }

                          while (v227 + 1 != v223);
                          v223 = [v215 countByEnumeratingWithState:&v288 objects:v353 count:16];
                        }

                        while (v223);
                      }

                      v59 = v211 + 1;
                    }

                    while (v211 + 1 != v207);
                    v207 = [v195 countByEnumeratingWithState:&v292 objects:v354 count:16];
                  }

                  while (v207);
                }

                v58 = v191 + 1;
                v57 = v179;
              }

              while (v191 + 1 != v187);
              v187 = [v179 countByEnumeratingWithState:&v296 objects:v355 count:16];
            }

            while (v187);
          }

          v41 = v171;
          v56 = v167 + 1;
        }

        while (v167 + 1 != v161);
        v161 = [v165 countByEnumeratingWithState:&v300 objects:v356 count:16];
      }

      while (v161);
      goto LABEL_212;
    }
  }

  else
  {
  }

  authors3 = [itemCopy authors];
  if ([authors3 count])
  {

    goto LABEL_105;
  }

  recipients3 = [itemCopy recipients];
  v76 = [recipients3 count];

  if (v76)
  {
LABEL_105:
    v165 = objc_opt_new();
    v41 = objc_opt_new();
    authors4 = [itemCopy authors];
    v78 = [authors4 count];

    if (v78)
    {
      v79 = +[SKGUserNode user];
      v351 = v79;
      v80 = [MEMORY[0x277CBEA60] arrayWithObjects:&v351 count:1];
      [v41 addObject:v80];

      v283 = 0u;
      v282 = 0u;
      v281 = 0u;
      v280 = 0u;
      authors5 = [itemCopy authors];
      v82 = [authors5 countByEnumeratingWithState:&v280 objects:v350 count:16];
      if (v82)
      {
        v83 = v82;
        v84 = *v281;
        do
        {
          for (n = 0; n != v83; ++n)
          {
            if (*v281 != v84)
            {
              objc_enumerationMutation(authors5);
            }

            v86 = [(SpotlightGraph *)self primaryNodesForPerson:*(*(&v280 + 1) + 8 * n) reference:referenceCopy domain:domainCopy nodes:nodesCopy edges:edgesCopy isOwner:0];
            if (v86)
            {
              [v165 addObject:v86];
            }
          }

          v83 = [authors5 countByEnumeratingWithState:&v280 objects:v350 count:16];
        }

        while (v83);
      }
    }

    else
    {
      recipients4 = [itemCopy recipients];
      v121 = [recipients4 count];

      if (!v121)
      {
        goto LABEL_175;
      }

      v122 = +[SKGUserNode user];
      v349 = v122;
      v123 = [MEMORY[0x277CBEA60] arrayWithObjects:&v349 count:1];
      [v165 addObject:v123];

      v278 = 0u;
      v279 = 0u;
      v276 = 0u;
      v277 = 0u;
      authors5 = [itemCopy recipients];
      v124 = [authors5 countByEnumeratingWithState:&v276 objects:v348 count:16];
      if (v124)
      {
        v125 = v124;
        v126 = *v277;
        do
        {
          for (ii = 0; ii != v125; ++ii)
          {
            if (*v277 != v126)
            {
              objc_enumerationMutation(authors5);
            }

            v128 = [(SpotlightGraph *)self primaryNodesForPerson:*(*(&v276 + 1) + 8 * ii) reference:referenceCopy domain:domainCopy nodes:nodesCopy edges:edgesCopy isOwner:0];
            if (v128)
            {
              [v41 addObject:v128];
            }
          }

          v125 = [authors5 countByEnumeratingWithState:&v276 objects:v348 count:16];
        }

        while (v125);
      }
    }

LABEL_175:
    if (![v165 count] || !objc_msgSend(v41, "count"))
    {
      goto LABEL_215;
    }

    v274 = 0u;
    v275 = 0u;
    v272 = 0u;
    v273 = 0u;
    v165 = v165;
    v163 = [v165 countByEnumeratingWithState:&v272 objects:v347 count:16];
    if (!v163)
    {
LABEL_213:

LABEL_215:
      goto LABEL_216;
    }

    v159 = *v273;
    do
    {
      v129 = 0;
      v173 = v41;
      do
      {
        if (*v273 != v159)
        {
          objc_enumerationMutation(v165);
        }

        v169 = v129;
        v185 = *(*(&v272 + 1) + 8 * v129);
        v268 = 0u;
        v269 = 0u;
        v270 = 0u;
        v271 = 0u;
        v57 = v41;
        v189 = [v57 countByEnumeratingWithState:&v268 objects:v346 count:16];
        if (v189)
        {
          v177 = *v269;
          v181 = v57;
          do
          {
            v130 = 0;
            do
            {
              if (*v269 != v177)
              {
                objc_enumerationMutation(v57);
              }

              v193 = v130;
              v205 = *(*(&v268 + 1) + 8 * v130);
              v264 = 0u;
              v265 = 0u;
              v266 = 0u;
              v267 = 0u;
              v197 = v185;
              v209 = [v197 countByEnumeratingWithState:&v264 objects:v345 count:16];
              if (v209)
              {
                v201 = *v265;
                do
                {
                  v131 = 0;
                  do
                  {
                    if (*v265 != v201)
                    {
                      objc_enumerationMutation(v197);
                    }

                    v213 = v131;
                    v132 = *(*(&v264 + 1) + 8 * v131);
                    v260 = 0u;
                    v261 = 0u;
                    v262 = 0u;
                    v263 = 0u;
                    v217 = v205;
                    v225 = [v217 countByEnumeratingWithState:&v260 objects:v344 count:16];
                    if (v225)
                    {
                      v221 = *v261;
                      do
                      {
                        v133 = 0;
                        do
                        {
                          if (*v261 != v221)
                          {
                            objc_enumerationMutation(v217);
                          }

                          v229 = v133;
                          v134 = *(*(&v260 + 1) + 8 * v133);
                          v256 = 0u;
                          v257 = 0u;
                          v258 = 0u;
                          v259 = 0u;
                          interactions5 = [v231 interactions];
                          v136 = [interactions5 countByEnumeratingWithState:&v256 objects:v343 count:16];
                          if (v136)
                          {
                            v137 = v136;
                            v138 = *v257;
                            do
                            {
                              for (jj = 0; jj != v137; ++jj)
                              {
                                if (*v257 != v138)
                                {
                                  objc_enumerationMutation(interactions5);
                                }

                                v140 = *(*(&v256 + 1) + 8 * jj);
                                interactions6 = [v231 interactions];
                                v142 = [interactions6 objectForKeyedSubscript:v140];

                                v143 = [SKGInteractionEdge alloc];
                                bundleIdentifier3 = [v231 bundleIdentifier];
                                v145 = [(SKGInteractionEdge *)v143 initWithSourceNode:v132 targetNode:v134 domainIdentifier:bundleIdentifier3 relationship:v140 score:v142];

                                [edgesCopy addObject:v145];
                              }

                              v137 = [interactions5 countByEnumeratingWithState:&v256 objects:v343 count:16];
                            }

                            while (v137);
                          }

                          v133 = v229 + 1;
                        }

                        while (v229 + 1 != v225);
                        v225 = [v217 countByEnumeratingWithState:&v260 objects:v344 count:16];
                      }

                      while (v225);
                    }

                    v131 = v213 + 1;
                  }

                  while (v213 + 1 != v209);
                  v209 = [v197 countByEnumeratingWithState:&v264 objects:v345 count:16];
                }

                while (v209);
              }

              v130 = v193 + 1;
              v57 = v181;
            }

            while (v193 + 1 != v189);
            v189 = [v181 countByEnumeratingWithState:&v268 objects:v346 count:16];
          }

          while (v189);
        }

        v41 = v173;
        v129 = v169 + 1;
      }

      while (v169 + 1 != v163);
      v163 = [v165 countByEnumeratingWithState:&v272 objects:v347 count:16];
    }

    while (v163);
LABEL_212:
    v41 = v57;
    itemCopy = v231;
    goto LABEL_213;
  }

  participants = [itemCopy participants];

  if (participants)
  {
    v88 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v89 = +[SKGUserNode user];
    v342 = v89;
    v90 = [MEMORY[0x277CBEA60] arrayWithObjects:&v342 count:1];
    [v88 addObject:v90];

    v254 = 0u;
    v255 = 0u;
    v252 = 0u;
    v253 = 0u;
    participants2 = [itemCopy participants];
    v92 = [participants2 countByEnumeratingWithState:&v252 objects:v341 count:16];
    if (v92)
    {
      v93 = v92;
      v94 = *v253;
      do
      {
        for (kk = 0; kk != v93; ++kk)
        {
          if (*v253 != v94)
          {
            objc_enumerationMutation(participants2);
          }

          v96 = [(SpotlightGraph *)self primaryNodesForPerson:*(*(&v252 + 1) + 8 * kk) reference:referenceCopy domain:domainCopy nodes:nodesCopy edges:edgesCopy isOwner:0];
          if (v96)
          {
            [v88 addObject:v96];
          }
        }

        v93 = [participants2 countByEnumeratingWithState:&v252 objects:v341 count:16];
      }

      while (v93);
    }

    v250 = 0u;
    v251 = 0u;
    v248 = 0u;
    v249 = 0u;
    v168 = v88;
    v162 = [v168 countByEnumeratingWithState:&v248 objects:v340 count:16];
    if (v162)
    {
      v158 = *v249;
      do
      {
        v97 = 0;
        do
        {
          if (*v249 != v158)
          {
            v98 = v97;
            objc_enumerationMutation(v168);
            v97 = v98;
          }

          v176 = v97;
          v99 = *(*(&v248 + 1) + 8 * v97);
          v244 = 0u;
          v245 = 0u;
          v246 = 0u;
          v247 = 0u;
          v41 = v168;
          v100 = [v41 countByEnumeratingWithState:&v244 objects:v339 count:16];
          if (v100)
          {
            v101 = v100;
            v102 = *v245;
            v172 = v41;
            v180 = *v245;
            v184 = v99;
            do
            {
              v103 = 0;
              v188 = v101;
              do
              {
                if (*v245 != v102)
                {
                  objc_enumerationMutation(v41);
                }

                v204 = *(*(&v244 + 1) + 8 * v103);
                if (([v99 isEqualToArray:?] & 1) == 0)
                {
                  v192 = v103;
                  v242 = 0u;
                  v243 = 0u;
                  v240 = 0u;
                  v241 = 0u;
                  v196 = v99;
                  v208 = [v196 countByEnumeratingWithState:&v240 objects:v338 count:16];
                  if (v208)
                  {
                    v200 = *v241;
                    do
                    {
                      v104 = 0;
                      do
                      {
                        if (*v241 != v200)
                        {
                          objc_enumerationMutation(v196);
                        }

                        v212 = v104;
                        v105 = *(*(&v240 + 1) + 8 * v104);
                        v236 = 0u;
                        v237 = 0u;
                        v238 = 0u;
                        v239 = 0u;
                        v216 = v204;
                        v224 = [v216 countByEnumeratingWithState:&v236 objects:v337 count:16];
                        if (v224)
                        {
                          v220 = *v237;
                          do
                          {
                            v106 = 0;
                            do
                            {
                              if (*v237 != v220)
                              {
                                objc_enumerationMutation(v216);
                              }

                              v228 = v106;
                              v107 = *(*(&v236 + 1) + 8 * v106);
                              v232 = 0u;
                              v233 = 0u;
                              v234 = 0u;
                              v235 = 0u;
                              interactions7 = [itemCopy interactions];
                              v109 = [interactions7 countByEnumeratingWithState:&v232 objects:v336 count:16];
                              if (v109)
                              {
                                v110 = v109;
                                v111 = *v233;
                                do
                                {
                                  for (mm = 0; mm != v110; ++mm)
                                  {
                                    if (*v233 != v111)
                                    {
                                      objc_enumerationMutation(interactions7);
                                    }

                                    v113 = *(*(&v232 + 1) + 8 * mm);
                                    interactions8 = [itemCopy interactions];
                                    v115 = [interactions8 objectForKeyedSubscript:v113];

                                    v116 = [SKGInteractionEdge alloc];
                                    bundleIdentifier4 = [v231 bundleIdentifier];
                                    v118 = v116;
                                    itemCopy = v231;
                                    v119 = [(SKGInteractionEdge *)v118 initWithSourceNode:v105 targetNode:v107 domainIdentifier:bundleIdentifier4 relationship:v113 score:v115];

                                    [edgesCopy addObject:v119];
                                  }

                                  v110 = [interactions7 countByEnumeratingWithState:&v232 objects:v336 count:16];
                                }

                                while (v110);
                              }

                              v106 = v228 + 1;
                            }

                            while (v228 + 1 != v224);
                            v224 = [v216 countByEnumeratingWithState:&v236 objects:v337 count:16];
                          }

                          while (v224);
                        }

                        v104 = v212 + 1;
                      }

                      while (v212 + 1 != v208);
                      v208 = [v196 countByEnumeratingWithState:&v240 objects:v338 count:16];
                    }

                    while (v208);
                  }

                  v41 = v172;
                  v102 = v180;
                  v99 = v184;
                  v101 = v188;
                  v103 = v192;
                }

                ++v103;
              }

              while (v103 != v101);
              v101 = [v41 countByEnumeratingWithState:&v244 objects:v339 count:16];
            }

            while (v101);
          }

          v97 = v176 + 1;
        }

        while (v176 + 1 != v162);
        v162 = [v41 countByEnumeratingWithState:&v248 objects:v340 count:16];
        v165 = v41;
      }

      while (v162);
    }

    else
    {
      v41 = v168;
      v165 = v168;
    }

    goto LABEL_215;
  }

LABEL_216:
  objc_autoreleasePoolPop(context);
}

- (BOOL)addItem:(id)item cancelBlock:(id)block
{
  itemCopy = item;
  blockCopy = block;
  if (![(SpotlightGraph *)self available])
  {
    v31 = 0;
    goto LABEL_13;
  }

  referenceIdentifier = [itemCopy referenceIdentifier];
  if (!referenceIdentifier)
  {
LABEL_12:
    v31 = 1;
    goto LABEL_13;
  }

  v9 = referenceIdentifier;
  bundleIdentifier = [itemCopy bundleIdentifier];
  if (!bundleIdentifier)
  {
LABEL_11:

    goto LABEL_12;
  }

  v11 = bundleIdentifier;
  personaIdentifier = [itemCopy personaIdentifier];
  if (!personaIdentifier)
  {

    goto LABEL_11;
  }

  v13 = personaIdentifier;
  protectionClass = [itemCopy protectionClass];

  if (!protectionClass)
  {
    goto LABEL_12;
  }

  context = objc_autoreleasePoolPush();
  referenceIdentifier2 = [itemCopy referenceIdentifier];
  bundleIdentifier2 = [itemCopy bundleIdentifier];
  personaIdentifier2 = [itemCopy personaIdentifier];
  protectionClass2 = [itemCopy protectionClass];
  v19 = [(SpotlightGraph *)self referenceIdentifierWithReference:referenceIdentifier2 domain:bundleIdentifier2 persona:personaIdentifier2 protectionClass:protectionClass2];

  v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v41 = v19;
  v22 = [[SKGReferenceNode alloc] initWithReference:v19];
  [v20 addObject:v22];
  v23 = [SKGPersonaNode alloc];
  personaIdentifier3 = [itemCopy personaIdentifier];
  v25 = [(SKGPersonaNode *)v23 initWithPersona:personaIdentifier3];

  [v20 addObject:v25];
  v26 = [SKGDomainNode alloc];
  bundleIdentifier3 = [itemCopy bundleIdentifier];
  v28 = [(SKGDomainNode *)v26 initWithDomain:bundleIdentifier3];

  [v20 addObject:v28];
  v39 = [SKGDomainEdge edgeFromDomain:v28 toNode:v25];
  [v21 addObject:?];
  v38 = [SKGPersonaEdge edgeFromPersona:v25 toNode:v28];
  [v21 addObject:?];
  v37 = [SKGPersonaEdge edgeFromPersona:v25 toNode:v22];
  [v21 addObject:?];
  v29 = [SKGReferenceEdge edgeFromReference:v22 toNode:v25];
  [v21 addObject:v29];
  v30 = v22;
  [(SpotlightGraph *)self peopleUpdateFromItem:itemCopy reference:v22 domain:v28 nodes:v20 edges:v21];
  if (blockCopy && (blockCopy[2](blockCopy, @"addItem") & 1) != 0)
  {
    v31 = 1;
  }

  else
  {
    graph = self->_graph;
    [v20 allObjects];
    v34 = v36 = v20;
    allObjects = [v21 allObjects];
    v31 = [(SKGGraph *)graph addNodes:v34 addEdges:allObjects cancelBlock:blockCopy];

    v20 = v36;
  }

  objc_autoreleasePoolPop(context);
LABEL_13:

  return v31;
}

- (BOOL)addPerson:(id)person cancelBlock:(id)block
{
  personCopy = person;
  blockCopy = block;
  if ([(SpotlightGraph *)self available])
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    person = [personCopy person];
    v11 = [(SpotlightGraph *)self primaryNodesForPerson:person reference:0 domain:0 nodes:v8 edges:v9 isOwner:0];

    v12 = objc_autoreleasePoolPush();
    graph = self->_graph;
    allObjects = [v8 allObjects];
    allObjects2 = [v9 allObjects];
    v16 = [(SKGGraph *)graph addNodes:allObjects addEdges:allObjects2 cancelBlock:blockCopy];

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)deleteDomainIdentifier:(id)identifier cancelBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  if (![(SpotlightGraph *)self available])
  {
    LOBYTE(v12) = 0;
    goto LABEL_8;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = self->_graph;
  v10 = [SKGDomains domainsWithDomain:identifierCopy inGraph:v9];
  personas = [v10 personas];
  v12 = [(SKGGraph *)v9 removeNodeSet:personas removeEdgeSet:0 cancelBlock:blockCopy];

  if (blockCopy)
  {
    if ((blockCopy[2](blockCopy, @"deleteDomainIdentifier") & 1) != 0 || !v12)
    {
      goto LABEL_6;
    }
  }

  else if (!v12)
  {
    goto LABEL_6;
  }

  LOBYTE(v12) = [(SKGGraph *)v9 removeNodeSet:v10 removeEdgeSet:0 cancelBlock:blockCopy];
LABEL_6:

  objc_autoreleasePoolPop(v8);
LABEL_8:

  return v12;
}

- (BOOL)deleteDomainIdentifier:(id)identifier personaIdentifier:(id)personaIdentifier cancelBlock:(id)block
{
  identifierCopy = identifier;
  personaIdentifierCopy = personaIdentifier;
  blockCopy = block;
  if (![(SpotlightGraph *)self available])
  {
    v16 = 0;
    goto LABEL_20;
  }

  context = objc_autoreleasePoolPush();
  v11 = self->_graph;
  v12 = [SKGDomains domainsWithDomain:identifierCopy inGraph:v11];
  v13 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__11;
  v36 = __Block_byref_object_dispose__11;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  do
  {
    if (v13)
    {
      v14 = [(SKGGraph *)v11 removeNodeSet:v13 removeEdgeSet:0 cancelBlock:blockCopy];
      v15 = v33[5];
      v33[5] = 0;

      if (blockCopy)
      {
        v16 = v14;
LABEL_7:
        v17 = blockCopy[2](blockCopy, @"deleteDomainIdentifier");
        *(v29 + 24) = v17 ^ 1;
        if (v17 & 1 | !v16)
        {
          goto LABEL_16;
        }

        goto LABEL_12;
      }

      v16 = 1;
      *(v29 + 24) = 1;
      if (!v14)
      {
        v16 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 1;
      if (blockCopy)
      {
        goto LABEL_7;
      }

      *(v29 + 24) = 1;
    }

LABEL_12:
    personas = [v12 personas];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __71__SpotlightGraph_deleteDomainIdentifier_personaIdentifier_cancelBlock___block_invoke;
    v23[3] = &unk_27893DC38;
    v19 = v11;
    v24 = v19;
    v25 = personaIdentifierCopy;
    v26 = &v32;
    v27 = &v28;
    [personas enumeratePersonasInGraph:v19 usingBlock:v23];

    if (blockCopy)
    {
      v20 = blockCopy[2](blockCopy, @"deleteDomainIdentifier") ^ 1;
    }

    else
    {
      v20 = 1;
    }

    *(v29 + 24) = v20;

LABEL_16:
    v13 = v33[5];
  }

  while (v13 && (v29[3] & v16 & 1) != 0);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  objc_autoreleasePoolPop(context);
LABEL_20:

  return v16;
}

void __71__SpotlightGraph_deleteDomainIdentifier_personaIdentifier_cancelBlock___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v6 = +[SKGPersonaNode personaWithElementIdentifier:inGraph:](SKGPersonaNode, "personaWithElementIdentifier:inGraph:", [v10 nodeIdentifier], a1[4]);
  v7 = [v6 value];
  if ([v7 isEqualToString:a1[5]])
  {
    v8 = [v10 domains];
    v9 = [v8 count];

    if (v9 == 1)
    {
      objc_storeStrong((*(a1[6] + 8) + 40), a2);
      *a3 = 1;
    }
  }

  else
  {
  }

  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }
}

- (BOOL)deleteReferences:(id)references domainIdentifier:(id)identifier cancelBlock:(id)block
{
  v30 = *MEMORY[0x277D85DE8];
  referencesCopy = references;
  identifierCopy = identifier;
  blockCopy = block;
  if ([(SpotlightGraph *)self available])
  {
    context = objc_autoreleasePoolPush();
    v10 = self->_graph;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = referencesCopy;
    obj = referencesCopy;
    v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = [(SpotlightGraph *)self referenceIdentifierWithReference:*(*(&v25 + 1) + 8 * i) domain:identifierCopy persona:0 protectionClass:0];
          v16 = [SKGReferences referencesWithReference:v15 inGraph:v10];
          if ([v16 count])
          {
            v17 = [(SKGGraph *)v10 removeNodeSet:v16 removeEdgeSet:0 cancelBlock:blockCopy];
            if (blockCopy)
            {
              goto LABEL_9;
            }
          }

          else
          {
            v17 = 1;
            if (blockCopy)
            {
LABEL_9:
              v18 = blockCopy[2](blockCopy, @"deleteReferences") ^ 1;
              goto LABEL_12;
            }
          }

          v18 = 1;
LABEL_12:
          v19 = v17 & v18;

          if (v19 != 1)
          {
            goto LABEL_16;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }

    LOBYTE(v17) = 1;
LABEL_16:

    objc_autoreleasePoolPop(context);
    referencesCopy = v22;
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  return v17;
}

- (BOOL)deleteReferences:(id)references personaIdentifier:(id)identifier protectionClass:(id)class domainIdentifier:(id)domainIdentifier cancelBlock:(id)block
{
  v46 = *MEMORY[0x277D85DE8];
  referencesCopy = references;
  identifierCopy = identifier;
  classCopy = class;
  domainIdentifierCopy = domainIdentifier;
  blockCopy = block;
  if ([(SpotlightGraph *)self available])
  {
    v37 = classCopy;
    context = objc_autoreleasePoolPush();
    v16 = self->_graph;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = referencesCopy;
    v17 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v17)
    {
      v18 = v17;
      v34 = identifierCopy;
      v35 = referencesCopy;
      v39 = *v42;
LABEL_4:
      v19 = 0;
      while (1)
      {
        if (*v42 != v39)
        {
          objc_enumerationMutation(obj);
        }

        selfCopy = self;
        context = [(SpotlightGraph *)self referenceIdentifierWithReference:*(*(&v41 + 1) + 8 * v19) domain:domainIdentifierCopy persona:0 protectionClass:0, v34, v35, context];
        v22 = [SKGReferences referencesWithReference:context inGraph:v16];
        v23 = v16;
        v24 = [(SKGGraph *)v16 removeNodeSet:v22 removeEdgeSet:0 cancelBlock:blockCopy];
        v25 = blockCopy ? blockCopy[2](blockCopy, @"deleteReferences") ^ 1 : 1;

        if ((v24 & v25) != 1)
        {
          break;
        }

        ++v19;
        self = selfCopy;
        v16 = v23;
        if (v18 == v19)
        {
          v18 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
          if (v18)
          {
            goto LABEL_4;
          }

          v25 = 1;
          v24 = 1;
          break;
        }
      }

      identifierCopy = v34;
      referencesCopy = v35;
    }

    else
    {
      v23 = v16;
      v25 = 1;
      v24 = 1;
    }

    if (identifierCopy && v25)
    {
      v26 = v23;
      if (v24)
      {
        v27 = [SKGDomains domainsWithDomain:domainIdentifierCopy inGraph:v23];
        v28 = [v27 personasWithPersona:identifierCopy inGraph:v26];
        references = [v28 references];
        v30 = [references count];

        if (v30)
        {
          v24 = 1;
        }

        else
        {
          v24 = [(SKGGraph *)v26 removeNodeSet:v28 removeEdgeSet:0 cancelBlock:blockCopy];
        }

        personas = [v27 personas];
        v32 = [personas count];

        if (!v32 && v24)
        {
          LOBYTE(v24) = [(SKGGraph *)v26 removeNodeSet:v27 removeEdgeSet:0 cancelBlock:blockCopy];
        }
      }
    }

    else
    {
      v26 = v23;
    }

    objc_autoreleasePoolPop(context);
    classCopy = v37;
  }

  else
  {
    LOBYTE(v24) = 0;
  }

  return v24;
}

- (BOOL)containsReference:(id)reference personaIdentifier:(id)identifier protectionClass:(id)class domainIdentifier:(id)domainIdentifier
{
  referenceCopy = reference;
  identifierCopy = identifier;
  classCopy = class;
  domainIdentifierCopy = domainIdentifier;
  if ([(SpotlightGraph *)self available])
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self->_graph;
    v16 = [(SpotlightGraph *)self referenceIdentifierWithReference:referenceCopy domain:domainIdentifierCopy persona:0 protectionClass:0];
    v17 = [SKGReferences referencesWithReference:v16 inGraph:v15];

    v18 = [v17 count] != 0;
    objc_autoreleasePoolPop(v14);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)hasPeople
{
  if (![(SpotlightGraph *)self available])
  {
    return 0;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [(SKGNodes *)SKGPersons nodesInGraph:self->_graph];
  v5 = [v4 count];

  if (v5)
  {
    v6 = self->_peopleScores != 0;
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v3);
  return v6;
}

- (int64_t)personCount
{
  if (![(SpotlightGraph *)self available])
  {
    return -1;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [(SKGNodes *)SKGPersons nodesInGraph:self->_graph];
  v5 = [v4 count];

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (int64_t)nameCount
{
  if (![(SpotlightGraph *)self available])
  {
    return -1;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [(SKGNodes *)SKGNames nodesInGraph:self->_graph];
  v5 = [v4 count];

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (int64_t)emailCount
{
  if (![(SpotlightGraph *)self available])
  {
    return -1;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [(SKGNodes *)SKGEmails nodesInGraph:self->_graph];
  v5 = [v4 count];

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (int64_t)phoneCount
{
  if (![(SpotlightGraph *)self available])
  {
    return -1;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [(SKGNodes *)SKGPhones nodesInGraph:self->_graph];
  v5 = [v4 count];

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (id)cachedPeopleScoresPath
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = MEMORY[0x277CCACA8];
  resourcePath = [(SKGConfig *)self->_config resourcePath];
  v5 = [v3 stringWithFormat:@"%@/%@", resourcePath, @"cachedPeopleScores"];
  v6 = [v2 URLWithString:v5];

  return v6;
}

- (BOOL)peopleUpdateNetwork:(void *)network sourceNodeId:(unsigned int)id nodes:(id)nodes
{
  nodesCopy = nodes;
  v9 = objc_autoreleasePoolPush();
  v10 = self->_graph;
  available = [(SKGGraph *)v10 available];
  if (available)
  {
    v12 = +[SKGInteractionEdge filter];
    v13 = [(MAEdgeCollection *)SKGInteractionEdges edgesFromNodes:nodesCopy matchingFilter:v12];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __57__SpotlightGraph_peopleUpdateNetwork_sourceNodeId_nodes___block_invoke;
    v16[3] = &unk_27893DC88;
    idCopy = id;
    v17 = v10;
    networkCopy = network;
    v14 = v10;
    [v13 enumerateEdgesUsingBlock:v16];
  }

  else
  {
  }

  objc_autoreleasePoolPop(v9);

  return available;
}

void __57__SpotlightGraph_peopleUpdateNetwork_sourceNodeId_nodes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 targetNode];
  v6 = [SKGNodes nodesWithNode:v5 inGraph:*(a1 + 32)];

  v7 = v3;
  v8 = [v6 persons];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__SpotlightGraph_peopleUpdateNetwork_sourceNodeId_nodes___block_invoke_2;
  v12[3] = &unk_27893DC60;
  v15 = *(a1 + 48);
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v7;
  v14 = v9;
  v11 = v7;
  [v8 enumeratePersonsInGraph:v10 usingBlock:v12];

  objc_autoreleasePoolPop(v4);
}

void __57__SpotlightGraph_peopleUpdateNetwork_sourceNodeId_nodes___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 48);
  if ([v13 nodeIdentifier] != v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v13, "nodeIdentifier")];
    v6 = SINetworkAddVertexWithIdentifier(*(a1 + 40), [v5 UTF8String]);
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(*(a1 + 32), "identifier")];
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = [v7 UTF8String];
    v11 = [*(a1 + 32) score];
    [v11 doubleValue];
    SINetworkSetEdgeBetweenIdentifiers(v8, v9, v6, v10, v12);
  }

  objc_autoreleasePoolPop(v3);
}

- (BOOL)peopleScoreWithCancelBlock:(id)block
{
  blockCopy = block;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  v5 = objc_autoreleasePoolPush();
  v6 = self->_graph;
  if ([(SKGGraph *)v6 available])
  {
    v7 = [(SKGNodes *)SKGPersons nodesInGraph:v6];
    if ([v7 count])
    {
      v10[0] = 0;
      v10[1] = v10;
      v10[2] = 0x2020000000;
      SINetworkCreateMutable();
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
    LOBYTE(self) = 0;
  }

  objc_autoreleasePoolPop(v5);
  if (v8)
  {
    LOBYTE(self) = *(v12 + 24);
  }

  _Block_object_dispose(&v11, 8);

  return self & 1;
}

void __45__SpotlightGraph_peopleScoreWithCancelBlock___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v5, "nodeIdentifier")];
  v7 = SINetworkAddVertexWithIdentifier(*(*(a1[7] + 8) + 24), [v6 UTF8String]);
  v8 = a1[6];
  if (v8)
  {
    v9 = (*(v8 + 16))(v8, @"scoreWithCancelBlock") ^ 1;
  }

  else
  {
    v9 = 1;
  }

  *(*(a1[8] + 8) + 24) = v9;
  if (*(*(a1[8] + 8) + 24) == 1)
  {
    v10 = [v5 contacts];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __45__SpotlightGraph_peopleScoreWithCancelBlock___block_invoke_2;
    v43[3] = &unk_27893DCB0;
    v12 = a1[4];
    v11 = a1[5];
    v13 = a1[6];
    v45 = a1[9];
    v43[4] = v11;
    v47 = v7;
    v46 = *(a1 + 7);
    v44 = v13;
    [v10 enumerateContactsInGraph:v12 usingBlock:v43];

    if (*(*(a1[8] + 8) + 24))
    {
      if (*(*(a1[9] + 8) + 24) != 1 || ([v5 emails], v14 = objc_claimAutoreleasedReturnValue(), v38[0] = MEMORY[0x277D85DD0], v38[1] = 3221225472, v38[2] = __45__SpotlightGraph_peopleScoreWithCancelBlock___block_invoke_3, v38[3] = &unk_27893DCD8, v16 = a1[4], v15 = a1[5], v17 = a1[6], v40 = a1[9], v38[4] = v15, v42 = v7, v41 = *(a1 + 7), v39 = v17, objc_msgSend(v14, "enumerateEmailsInGraph:usingBlock:", v16, v38), v14, v39, (*(*(a1[8] + 8) + 24) & 1) != 0))
      {
        if (*(*(a1[9] + 8) + 24) != 1 || ([v5 phones], v18 = objc_claimAutoreleasedReturnValue(), v33[0] = MEMORY[0x277D85DD0], v33[1] = 3221225472, v33[2] = __45__SpotlightGraph_peopleScoreWithCancelBlock___block_invoke_4, v33[3] = &unk_27893DD00, v20 = a1[4], v19 = a1[5], v21 = a1[6], v35 = a1[9], v33[4] = v19, v37 = v7, v36 = *(a1 + 7), v34 = v21, objc_msgSend(v18, "enumeratePhonesInGraph:usingBlock:", v20, v33), v18, v34, (*(*(a1[8] + 8) + 24) & 1) != 0))
        {
          v22 = [v5 names];
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __45__SpotlightGraph_peopleScoreWithCancelBlock___block_invoke_5;
          v28[3] = &unk_27893DD28;
          v24 = a1[4];
          v23 = a1[5];
          v25 = a1[6];
          v30 = a1[9];
          v28[4] = v23;
          v32 = v7;
          v31 = *(a1 + 7);
          v29 = v25;
          [v22 enumerateNamesInGraph:v24 usingBlock:v28];
        }
      }
    }
  }

  v26 = a1[6];
  if (v26)
  {
    v27 = (*(v26 + 16))(v26, @"scoreWithCancelBlock") ^ 1;
  }

  else
  {
    v27 = 1;
  }

  *(*(a1[8] + 8) + 24) = v27;
  if (*(*(a1[8] + 8) + 24) != 1 || (*(*(a1[9] + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }
}

uint64_t __45__SpotlightGraph_peopleScoreWithCancelBlock___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) peopleUpdateNetwork:*(*(*(a1 + 56) + 8) + 24) sourceNodeId:*(a1 + 72) nodes:a2];
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, @"scoreWithCancelBlock");
    v6 = result ^ 1;
  }

  else
  {
    v6 = 1;
  }

  *(*(*(a1 + 64) + 8) + 24) = v6;
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t __45__SpotlightGraph_peopleScoreWithCancelBlock___block_invoke_3(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) peopleUpdateNetwork:*(*(*(a1 + 56) + 8) + 24) sourceNodeId:*(a1 + 72) nodes:a2];
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, @"scoreWithCancelBlock");
    v6 = result ^ 1;
  }

  else
  {
    v6 = 1;
  }

  *(*(*(a1 + 64) + 8) + 24) = v6;
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t __45__SpotlightGraph_peopleScoreWithCancelBlock___block_invoke_4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) peopleUpdateNetwork:*(*(*(a1 + 56) + 8) + 24) sourceNodeId:*(a1 + 72) nodes:a2];
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, @"scoreWithCancelBlock");
    v6 = result ^ 1;
  }

  else
  {
    v6 = 1;
  }

  *(*(*(a1 + 64) + 8) + 24) = v6;
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t __45__SpotlightGraph_peopleScoreWithCancelBlock___block_invoke_5(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) peopleUpdateNetwork:*(*(*(a1 + 56) + 8) + 24) sourceNodeId:*(a1 + 72) nodes:a2];
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, @"scoreWithCancelBlock");
    v6 = result ^ 1;
  }

  else
  {
    v6 = 1;
  }

  *(*(*(a1 + 64) + 8) + 24) = v6;
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t __45__SpotlightGraph_peopleScoreWithCancelBlock___block_invoke_128(uint64_t a1, _BYTE *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, @"scoreWithCancelBlock");
    v5 = result ^ 1;
  }

  else
  {
    v5 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v5;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *a2 = 1;
  }

  return result;
}

void __45__SpotlightGraph_peopleScoreWithCancelBlock___block_invoke_130(void *a1, void *a2, _BYTE *a3)
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(a2, "nodeIdentifier")];
  v8 = -1;
  SINetworkGetScoreForIdentifier(*(*(a1[5] + 8) + 24), [v5 UTF8String], &v8);
  SIGeneralTrieAddStringKeyWithScore();
  v6 = a1[4];
  if (v6)
  {
    v7 = (*(v6 + 16))(v6, @"scoreWithCancelBlock") ^ 1;
  }

  else
  {
    v7 = 1;
  }

  *(*(a1[7] + 8) + 24) = v7;
  *a3 = *(*(a1[7] + 8) + 24) ^ 1;
}

- (BOOL)findAllContactInfoForNode:(id)node info:(id)info reference:(id)reference foundUser:(BOOL *)user
{
  nodeCopy = node;
  infoCopy = info;
  referenceCopy = reference;
  v13 = objc_autoreleasePoolPush();
  v14 = self->_graph;
  available = [(SKGGraph *)v14 available];
  if (available)
  {
    v70 = 0;
    v71 = &v70;
    v72 = 0x2020000000;
    v73 = 0;
    users = [nodeCopy users];
    v17 = [users count];

    if (v17)
    {
      *(v71 + 24) = 1;
    }

    names = [nodeCopy names];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke;
    v65[3] = &unk_27893DDF0;
    v19 = referenceCopy;
    v66 = v19;
    v20 = infoCopy;
    v67 = v20;
    v69 = &v70;
    v21 = v14;
    v68 = v21;
    [names enumerateNamesInGraph:v21 usingBlock:v65];

    displayNames = [nodeCopy displayNames];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_3;
    v60[3] = &unk_27893DE18;
    v23 = v19;
    v61 = v23;
    v24 = v20;
    v62 = v24;
    v25 = v21;
    v63 = v25;
    v64 = &v70;
    [displayNames enumerateDisplayNamesInGraph:v25 usingBlock:v60];

    contacts = [nodeCopy contacts];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_5;
    v55[3] = &unk_27893DE40;
    v27 = v23;
    v56 = v27;
    v28 = v24;
    v57 = v28;
    v59 = &v70;
    v29 = v25;
    v58 = v29;
    [contacts enumerateContactsInGraph:v29 usingBlock:v55];

    photos = [nodeCopy photos];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_7;
    v50[3] = &unk_27893DE68;
    v31 = v27;
    v51 = v31;
    v32 = v28;
    v52 = v32;
    v54 = &v70;
    v33 = v29;
    v53 = v33;
    [photos enumeratePhotosInGraph:v33 usingBlock:v50];

    emails = [nodeCopy emails];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_9;
    v45[3] = &unk_27893DE90;
    v35 = v31;
    v46 = v35;
    v36 = v32;
    v47 = v36;
    v49 = &v70;
    v37 = v33;
    v48 = v37;
    [emails enumerateEmailsInGraph:v37 usingBlock:v45];

    phones = [nodeCopy phones];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_11;
    v40[3] = &unk_27893DEB8;
    v41 = v35;
    v42 = v36;
    v44 = &v70;
    v14 = v37;
    v43 = v14;
    [phones enumeratePhonesInGraph:v14 usingBlock:v40];

    if (user)
    {
      *user = *(v71 + 24);
    }

    _Block_object_dispose(&v70, 8);
  }

  objc_autoreleasePoolPop(v13);
  return available;
}

void __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"names"];
  v5 = [v4 containsObject:v3];

  if ((v5 & 1) == 0)
  {
    v6 = [*(a1 + 40) objectForKeyedSubscript:@"names"];

    if (!v6)
    {
      v7 = *(a1 + 40);
      v8 = [MEMORY[0x277CBEB58] set];
      [v7 setObject:v8 forKey:@"names"];
    }

    v9 = [*(a1 + 40) objectForKeyedSubscript:@"names"];
    [v9 addObject:v3];

    v10 = [v3 users];
    v11 = [v10 count];

    if (v11)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  v12 = [v3 entities];
  v13 = *(a1 + 48);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_2;
  v16[3] = &unk_27893DDC8;
  v17 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  v18 = v14;
  v19 = v15;
  [v12 enumerateEntitiesInGraph:v13 usingBlock:v16];
}

void __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"entities"];
  v4 = [v3 containsObject:v11];

  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 40) objectForKeyedSubscript:@"entities"];

    if (!v5)
    {
      v6 = *(a1 + 40);
      v7 = [MEMORY[0x277CBEB58] set];
      [v6 setObject:v7 forKey:@"entities"];
    }

    v8 = [*(a1 + 40) objectForKeyedSubscript:@"entities"];
    [v8 addObject:v11];

    v9 = [v11 users];
    v10 = [v9 count];

    if (v10)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

void __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"displayNames"];
  v5 = [v4 containsObject:v3];

  if ((v5 & 1) == 0)
  {
    v6 = [*(a1 + 40) objectForKeyedSubscript:@"displayNames"];

    if (!v6)
    {
      v7 = *(a1 + 40);
      v8 = [MEMORY[0x277CBEB58] set];
      [v7 setObject:v8 forKey:@"displayNames"];
    }

    v9 = [*(a1 + 40) objectForKeyedSubscript:@"displayNames"];
    [v9 addObject:v3];
  }

  v10 = [v3 entities];
  v11 = *(a1 + 48);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_4;
  v14[3] = &unk_27893DDC8;
  v15 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 56);
  v16 = v12;
  v17 = v13;
  [v10 enumerateEntitiesInGraph:v11 usingBlock:v14];
}

void __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_4(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"entities"];
  v4 = [v3 containsObject:v11];

  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 40) objectForKeyedSubscript:@"entities"];

    if (!v5)
    {
      v6 = *(a1 + 40);
      v7 = [MEMORY[0x277CBEB58] set];
      [v6 setObject:v7 forKey:@"entities"];
    }

    v8 = [*(a1 + 40) objectForKeyedSubscript:@"entities"];
    [v8 addObject:v11];

    v9 = [v11 users];
    v10 = [v9 count];

    if (v10)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

void __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"contacts"];
  v5 = [v4 containsObject:v3];

  if ((v5 & 1) == 0)
  {
    v6 = [*(a1 + 40) objectForKeyedSubscript:@"contacts"];

    if (!v6)
    {
      v7 = *(a1 + 40);
      v8 = [MEMORY[0x277CBEB58] set];
      [v7 setObject:v8 forKey:@"contacts"];
    }

    v9 = [*(a1 + 40) objectForKeyedSubscript:@"contacts"];
    [v9 addObject:v3];

    v10 = [v3 users];
    v11 = [v10 count];

    if (v11)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  v12 = [v3 entities];
  v13 = *(a1 + 48);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_6;
  v16[3] = &unk_27893DDC8;
  v17 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  v18 = v14;
  v19 = v15;
  [v12 enumerateEntitiesInGraph:v13 usingBlock:v16];
}

void __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_6(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"entities"];
  v4 = [v3 containsObject:v11];

  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 40) objectForKeyedSubscript:@"entities"];

    if (!v5)
    {
      v6 = *(a1 + 40);
      v7 = [MEMORY[0x277CBEB58] set];
      [v6 setObject:v7 forKey:@"entities"];
    }

    v8 = [*(a1 + 40) objectForKeyedSubscript:@"entities"];
    [v8 addObject:v11];

    v9 = [v11 users];
    v10 = [v9 count];

    if (v10)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

void __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"photos"];
  v5 = [v4 containsObject:v3];

  if ((v5 & 1) == 0)
  {
    v6 = [*(a1 + 40) objectForKeyedSubscript:@"photos"];

    if (!v6)
    {
      v7 = *(a1 + 40);
      v8 = [MEMORY[0x277CBEB58] set];
      [v7 setObject:v8 forKey:@"photos"];
    }

    v9 = [*(a1 + 40) objectForKeyedSubscript:@"photos"];
    [v9 addObject:v3];

    v10 = [v3 users];
    v11 = [v10 count];

    if (v11)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  v12 = [v3 entities];
  v13 = *(a1 + 48);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_8;
  v16[3] = &unk_27893DDC8;
  v17 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  v18 = v14;
  v19 = v15;
  [v12 enumerateEntitiesInGraph:v13 usingBlock:v16];
}

void __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_8(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"entities"];
  v4 = [v3 containsObject:v11];

  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 40) objectForKeyedSubscript:@"entities"];

    if (!v5)
    {
      v6 = *(a1 + 40);
      v7 = [MEMORY[0x277CBEB58] set];
      [v6 setObject:v7 forKey:@"entities"];
    }

    v8 = [*(a1 + 40) objectForKeyedSubscript:@"entities"];
    [v8 addObject:v11];

    v9 = [v11 users];
    v10 = [v9 count];

    if (v10)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

void __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"emails"];
  v5 = [v4 containsObject:v3];

  if ((v5 & 1) == 0)
  {
    v6 = [*(a1 + 40) objectForKeyedSubscript:@"emails"];

    if (!v6)
    {
      v7 = *(a1 + 40);
      v8 = [MEMORY[0x277CBEB58] set];
      [v7 setObject:v8 forKey:@"emails"];
    }

    v9 = [*(a1 + 40) objectForKeyedSubscript:@"emails"];
    [v9 addObject:v3];

    v10 = [v3 users];
    v11 = [v10 count];

    if (v11)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  v12 = [v3 entities];
  v13 = *(a1 + 48);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_10;
  v16[3] = &unk_27893DDC8;
  v17 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  v18 = v14;
  v19 = v15;
  [v12 enumerateEntitiesInGraph:v13 usingBlock:v16];
}

void __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_10(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"entities"];
  v4 = [v3 containsObject:v11];

  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 40) objectForKeyedSubscript:@"entities"];

    if (!v5)
    {
      v6 = *(a1 + 40);
      v7 = [MEMORY[0x277CBEB58] set];
      [v6 setObject:v7 forKey:@"entities"];
    }

    v8 = [*(a1 + 40) objectForKeyedSubscript:@"entities"];
    [v8 addObject:v11];

    v9 = [v11 users];
    v10 = [v9 count];

    if (v10)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

void __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"phones"];
  v5 = [v4 containsObject:v3];

  if ((v5 & 1) == 0)
  {
    v6 = [*(a1 + 40) objectForKeyedSubscript:@"phones"];

    if (!v6)
    {
      v7 = *(a1 + 40);
      v8 = [MEMORY[0x277CBEB58] set];
      [v7 setObject:v8 forKey:@"phones"];
    }

    v9 = [*(a1 + 40) objectForKeyedSubscript:@"phones"];
    [v9 addObject:v3];

    v10 = [v3 users];
    v11 = [v10 count];

    if (v11)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  v12 = [v3 entities];
  v13 = *(a1 + 48);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_12;
  v16[3] = &unk_27893DDC8;
  v17 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  v18 = v14;
  v19 = v15;
  [v12 enumerateEntitiesInGraph:v13 usingBlock:v16];
}

void __69__SpotlightGraph_findAllContactInfoForNode_info_reference_foundUser___block_invoke_12(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"entities"];
  v4 = [v3 containsObject:v11];

  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 40) objectForKeyedSubscript:@"entities"];

    if (!v5)
    {
      v6 = *(a1 + 40);
      v7 = [MEMORY[0x277CBEB58] set];
      [v6 setObject:v7 forKey:@"entities"];
    }

    v8 = [*(a1 + 40) objectForKeyedSubscript:@"entities"];
    [v8 addObject:v11];

    v9 = [v11 users];
    v10 = [v9 count];

    if (v10)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

- (BOOL)peopleAnalyzeWithCancelBlock:(id)block
{
  blockCopy = block;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 1;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 1;
  v6 = objc_autoreleasePoolPush();
  v7 = self->_graph;
  if (![(SKGGraph *)v7 available])
  {
    v12 = 0;
    LOBYTE(v3) = 0;
    goto LABEL_30;
  }

  if (![(SKGGraph *)v7 nodeCount])
  {
    v12 = 1;
    goto LABEL_30;
  }

  v8 = [(SKGNodes *)SKGPersons nodesInGraph:v7];
  v9 = [(SKGGraph *)v7 removeNodeSet:v8 removeEdgeSet:0 cancelBlock:blockCopy];
  v10 = v61;
  *(v61 + 24) = v9;
  if (blockCopy)
  {
    v11 = (*(blockCopy + 2))(blockCopy, @"analyzePeopleWithCancelBlock");
    *(v57 + 24) = v11 ^ 1;
    LOBYTE(v3) = *(v61 + 24);
    if (v11 & 1 | ((v3 & 1) == 0))
    {
      v12 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    *(v57 + 24) = 1;
    if ((v10[3] & 1) == 0)
    {
      v12 = 0;
      LOBYTE(v3) = 0;
      goto LABEL_29;
    }
  }

  Mutable = SIGeneralTrieCreateMutable();
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__11;
  v54 = __Block_byref_object_dispose__11;
  v26 = v8;
  v27 = v6;
  v55 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__11;
  v48 = __Block_byref_object_dispose__11;
  v49 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v3 = v30;
  v13 = (blockCopy + 16);
  v43 = 0;
  v14 = &v40;
  while (1)
  {
    *(v14 + 24) = 0;
    v15 = [(SKGNodes *)SKGNames nodesInGraph:v7];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v30[0] = __47__SpotlightGraph_peopleAnalyzeWithCancelBlock___block_invoke;
    v30[1] = &unk_27893DEE0;
    v16 = v7;
    v39 = Mutable;
    v31 = v16;
    selfCopy = self;
    v34 = &v60;
    v35 = &v56;
    v17 = blockCopy;
    v33 = v17;
    v36 = &v50;
    v37 = &v44;
    v38 = &v40;
    [v15 enumerateNamesInGraph:v16 usingBlock:v29];
    if (*(v57 + 24) != 1 || (v61[3] & 1) == 0)
    {
      break;
    }

    if (![v45[5] count] && !objc_msgSend(v51[5], "count"))
    {
      goto LABEL_24;
    }

    allObjects = [v51[5] allObjects];
    allObjects2 = [v45[5] allObjects];
    v20 = [(SKGGraph *)v16 addNodes:allObjects addEdges:allObjects2 cancelBlock:v17];
    *(v61 + 24) = v20;

    if (blockCopy)
    {
      v21 = (*v13)(v17, @"analyzePeopleWithCancelBlock");
      *(v57 + 24) = v21 ^ 1;
      if (v21 & 1 | ((v61[3] & 1) == 0))
      {
        goto LABEL_22;
      }
    }

    else
    {
      *(v57 + 24) = 1;
      if (*(v61 + 24) != 1)
      {
        goto LABEL_22;
      }
    }

    v22 = [(SKGGraph *)v16 flushWithCancelBlock:v17];
    *(v61 + 24) = v22;
    if (blockCopy)
    {
      v23 = (*v13)(v17, @"analyzePeopleWithCancelBlock") ^ 1;
    }

    else
    {
      v23 = 1;
    }

    *(v57 + 24) = v23;
LABEL_22:
    [v45[5] removeAllObjects];
    [v51[5] removeAllObjects];
    if (*(v57 + 24) != 1 || *(v61 + 24) != 1)
    {
      break;
    }

LABEL_24:

    v14 = v41;
    if ((v41[3] & 1) == 0)
    {
      goto LABEL_27;
    }
  }

LABEL_27:
  SIGeneralTrieRelease();
  v24 = [(SKGGraph *)v16 commitWithCancelBlock:0];
  *(v61 + 24) = v24;
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);
  v12 = 1;
  v8 = v26;
  v6 = v27;
LABEL_29:

LABEL_30:
  objc_autoreleasePoolPop(v6);
  if (v12)
  {
    if (*(v61 + 24) == 1)
    {
      LOBYTE(v3) = *(v57 + 24);
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);

  return v3 & 1;
}

void __47__SpotlightGraph_peopleAnalyzeWithCancelBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v97 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = +[SKGNameNode nameWithElementIdentifier:inGraph:](SKGNameNode, "nameWithElementIdentifier:inGraph:", [v5 nodeIdentifier], *(a1 + 32));
  v8 = [v7 value];
  v9 = SIGeneralTrieContainsStringKey();

  if (!v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v88 = 0;
    v12 = [MEMORY[0x277CBEB58] setWithObject:v5];
    [v10 setObject:v12 forKey:@"names"];

    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 40) findAllContactInfoForNode:v5 info:v10 reference:v10 foundUser:&v88];
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v57 = v7;
      v59 = v6;
      v61 = a3;
      v63 = v5;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v55 = v10;
      v13 = v10;
      v14 = [v13 countByEnumeratingWithState:&v84 objects:v96 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v85;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v85 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v84 + 1) + 8 * i);
            v80 = 0u;
            v81 = 0u;
            v82 = 0u;
            v83 = 0u;
            v19 = [v13 objectForKeyedSubscript:v18];
            v20 = [v19 countByEnumeratingWithState:&v80 objects:v95 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v81;
              do
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v81 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 40) findAllContactInfoForNode:*(*(&v80 + 1) + 8 * j) info:v11 reference:v13 foundUser:0];
                }

                v21 = [v19 countByEnumeratingWithState:&v80 objects:v95 count:16];
              }

              while (v21);
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v84 objects:v96 count:16];
        }

        while (v15);
      }

      a3 = v61;
      v5 = v63;
      v7 = v57;
      v6 = v59;
      v10 = v55;
    }

    v24 = *(a1 + 48);
    if (v24)
    {
      v25 = (*(v24 + 16))(v24, @"analyzePeopleWithCancelBlock") ^ 1;
    }

    else
    {
      v25 = 1;
    }

    *(*(*(a1 + 64) + 8) + 24) = v25;
    if (*(*(*(a1 + 64) + 8) + 24) == 1 && *(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v26 = objc_autoreleasePoolPush();
      if ([v10 count])
      {
        v54 = v26;
        v58 = v7;
        v60 = v6;
        v62 = a3;
        v64 = v5;
        v27 = [SKGPersonNode alloc];
        v28 = [MEMORY[0x277CCAD78] UUID];
        v29 = [v28 description];
        v30 = [(SKGPersonNode *)v27 initWithIdentifier:v29];

        [*(*(*(a1 + 72) + 8) + 40) addObject:v30];
        v31 = 0x27893B000uLL;
        if (v88 == 1)
        {
          v32 = +[SKGUserNode user];
          v33 = [SKGEdge edgeFromNode:v30 toNode:v32];

          [*(*(*(a1 + 80) + 8) + 40) addObject:v33];
          v34 = +[SKGUserNode user];
          v35 = [SKGEdge edgeFromNode:v34 toNode:v30];

          [*(*(*(a1 + 80) + 8) + 40) addObject:v35];
        }

        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v56 = v10;
        obj = v10;
        v66 = [obj countByEnumeratingWithState:&v76 objects:v94 count:16];
        if (v66)
        {
          v65 = *v77;
          do
          {
            v36 = 0;
            do
            {
              if (*v77 != v65)
              {
                objc_enumerationMutation(obj);
              }

              v68 = v36;
              v37 = *(*(&v76 + 1) + 8 * v36);
              v72 = 0u;
              v73 = 0u;
              v74 = 0u;
              v75 = 0u;
              v70 = [obj objectForKeyedSubscript:v37];
              v38 = [v70 countByEnumeratingWithState:&v72 objects:v93 count:16];
              if (v38)
              {
                v39 = v38;
                v71 = *v73;
                do
                {
                  v40 = 0;
                  do
                  {
                    if (*v73 != v71)
                    {
                      objc_enumerationMutation(v70);
                    }

                    v41 = +[SKGNode nodeWithElementIdentifier:inGraph:](SKGNode, "nodeWithElementIdentifier:inGraph:", [*(*(&v72 + 1) + 8 * v40) nodeIdentifier], *(a1 + 32));
                    v42 = [*(v31 + 3016) edgeFromNode:v30 toNode:v41];
                    if (v42)
                    {
                      [*(*(*(a1 + 80) + 8) + 40) addObject:v42];
                    }

                    else if (SKGLogGetCurrentLoggingLevel() >= 2)
                    {
                      v43 = SKGLogGraphInit();
                      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                      {
                        v47 = [(SKGNode *)v30 label];
                        v48 = [v41 label];
                        *buf = 138412546;
                        v90 = v47;
                        v91 = 2112;
                        v92 = v48;
                        _os_log_error_impl(&dword_231B25000, v43, OS_LOG_TYPE_ERROR, "not adding edge from node <%@> to node <%@>", buf, 0x16u);

                        v31 = 0x27893B000;
                      }
                    }

                    v44 = [*(v31 + 3016) edgeFromNode:v41 toNode:v30];
                    if (v44)
                    {
                      [*(*(*(a1 + 80) + 8) + 40) addObject:v44];
                    }

                    else if (SKGLogGetCurrentLoggingLevel() >= 2)
                    {
                      v45 = SKGLogGraphInit();
                      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                      {
                        v69 = [v41 label];
                        v49 = [(SKGNode *)v30 label];
                        *buf = 138412546;
                        v90 = v69;
                        v91 = 2112;
                        v92 = v49;
                        v50 = v49;
                        _os_log_error_impl(&dword_231B25000, v45, OS_LOG_TYPE_ERROR, "not adding edge from node <%@> to node <%@>", buf, 0x16u);
                      }

                      v31 = 0x27893B000;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v46 = [v41 value];
                      SIGeneralTrieAddStringKey();

                      v31 = 0x27893B000;
                    }

                    ++v40;
                  }

                  while (v39 != v40);
                  v39 = [v70 countByEnumeratingWithState:&v72 objects:v93 count:16];
                }

                while (v39);
              }

              v36 = v68 + 1;
            }

            while (v68 + 1 != v66);
            v66 = [obj countByEnumeratingWithState:&v76 objects:v94 count:16];
          }

          while (v66);
        }

        a3 = v62;
        v5 = v64;
        v7 = v58;
        v6 = v60;
        v26 = v54;
        v10 = v56;
      }

      objc_autoreleasePoolPop(v26);
    }

    v51 = ([*(*(*(a1 + 72) + 8) + 40) count] > 1 || objc_msgSend(*(*(*(a1 + 80) + 8) + 40), "count") >= 2) && objc_msgSend(*(*(*(a1 + 72) + 8) + 40), "count") >> 3 <= 0x270 && objc_msgSend(*(*(*(a1 + 80) + 8) + 40), "count") >> 3 < 0x271;
    *(*(*(a1 + 88) + 8) + 24) = v51;
  }

  v52 = *(a1 + 48);
  if (v52)
  {
    v53 = (*(v52 + 16))(v52, @"analyzePeopleWithCancelBlock") ^ 1;
  }

  else
  {
    v53 = 1;
  }

  *(*(*(a1 + 64) + 8) + 24) = v53;
  if (*(*(*(a1 + 64) + 8) + 24) != 1 || *(*(*(a1 + 88) + 8) + 24) != 1 || (*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }

  objc_autoreleasePoolPop(v6);
}

- (BOOL)peopleUpdateInfo:(id)info attributeKey:(id)key attribute:(id)attribute forNode:(id)node person:(id)person score:(id)score rank:(id)rank bestCount:(unint64_t *)self0
{
  infoCopy = info;
  keyCopy = key;
  attributeCopy = attribute;
  nodeCopy = node;
  personCopy = person;
  scoreCopy = score;
  rankCopy = rank;
  v23 = objc_autoreleasePoolPush();
  v24 = self->_graph;
  available = [(SKGGraph *)v24 available];
  v26 = available;
  if (available)
  {
    context = v23;
    v70 = available;
    v72 = personCopy;
    v27 = [infoCopy objectForKeyedSubscript:@"com.apple.spotlight"];

    if (!v27)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [infoCopy setObject:dictionary forKey:@"com.apple.spotlight"];
    }

    v29 = [infoCopy objectForKeyedSubscript:@"com.apple.spotlight"];
    v30 = [v29 objectForKeyedSubscript:@"score"];

    v31 = keyCopy;
    if (!v30)
    {
      v32 = [infoCopy objectForKeyedSubscript:@"com.apple.spotlight"];
      [v32 setObject:scoreCopy forKey:@"score"];
    }

    v33 = [infoCopy objectForKeyedSubscript:@"com.apple.spotlight"];
    v34 = [v33 objectForKeyedSubscript:@"rank"];

    if (!v34)
    {
      v35 = [infoCopy objectForKeyedSubscript:@"com.apple.spotlight"];
      [v35 setObject:rankCopy forKey:@"rank"];
    }

    v69 = rankCopy;
    v71 = scoreCopy;
    v73 = attributeCopy;
    v36 = [infoCopy objectForKeyedSubscript:@"com.apple.spotlight"];
    v37 = [v36 objectForKeyedSubscript:keyCopy];

    if (!v37)
    {
      v38 = [infoCopy objectForKeyedSubscript:@"com.apple.spotlight"];
      array = [MEMORY[0x277CBEB18] array];
      [v38 setObject:array forKey:keyCopy];
    }

    v40 = +[SKGInteractionEdge filter];
    v41 = [(MAEdgeCollection *)SKGInteractionEdges edgesFromNodes:nodeCopy matchingFilter:v40];
    v66 = [v41 count];

    v42 = +[SKGInteractionEdge filter];
    v43 = [(MAEdgeCollection *)SKGInteractionEdges edgesToNodes:nodeCopy matchingFilter:v42];
    v64 = [v43 count];

    references = [nodeCopy references];
    v45 = [references count];

    persons = [nodeCopy persons];
    v47 = [persons count];
    v67 = v47 != 1;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = count ? *count : 0;
      if (v45 > v48)
      {
        displayNames = [nodeCopy displayNames];
        v81[0] = MEMORY[0x277D85DD0];
        v81[1] = 3221225472;
        v81[2] = __94__SpotlightGraph_peopleUpdateInfo_attributeKey_attribute_forNode_person_score_rank_bestCount___block_invoke;
        v81[3] = &unk_27893DF08;
        v82 = v24;
        v83 = infoCopy;
        countCopy = count;
        v85 = v45;
        [displayNames enumerateDisplayNamesInGraph:v82 usingBlock:v81];
      }
    }

    v50 = +[SKGNode nodeWithElementIdentifier:inGraph:](SKGNode, "nodeWithElementIdentifier:inGraph:", [nodeCopy nodeIdentifier], v24);
    value = [v50 value];

    v52 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v53 = v52;
    if (value)
    {
      [v52 setObject:value forKey:@"value"];
    }

    v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v66];
    [v53 setObject:v54 forKey:@"in"];

    v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v65];
    [v53 setObject:v55 forKey:@"out"];

    v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v45];
    [v53 setObject:v56 forKey:@"count"];

    v57 = [MEMORY[0x277CCABB0] numberWithBool:v47 != 1];
    [v53 setObject:v57 forKey:@"ambiguous"];

    v58 = [infoCopy objectForKeyedSubscript:@"com.apple.spotlight"];
    v59 = [v58 objectForKeyedSubscript:keyCopy];
    [v59 addObject:v53];

    domains = [nodeCopy domains];
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __94__SpotlightGraph_peopleUpdateInfo_attributeKey_attribute_forNode_person_score_rank_bestCount___block_invoke_2;
    v74[3] = &unk_27893DF30;
    v75 = v24;
    v76 = infoCopy;
    v77 = keyCopy;
    v78 = nodeCopy;
    v79 = value;
    v80 = v67;
    v61 = value;
    v62 = v24;
    [domains enumerateDomainsInGraph:v62 usingBlock:v74];

    objc_autoreleasePoolPop(context);
    personCopy = v72;
    attributeCopy = v73;
    scoreCopy = v71;
    v26 = v70;
    rankCopy = v69;
  }

  else
  {

    objc_autoreleasePoolPop(v23);
    v31 = keyCopy;
  }

  return v26;
}

void __94__SpotlightGraph_peopleUpdateInfo_attributeKey_attribute_forNode_person_score_rank_bestCount___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = +[SKGNode nodeWithElementIdentifier:inGraph:](SKGNode, "nodeWithElementIdentifier:inGraph:", [a2 nodeIdentifier], *(a1 + 32));
  v7 = [v5 value];

  v6 = [*(a1 + 40) objectForKeyedSubscript:@"com.apple.spotlight"];
  [v6 setObject:v7 forKey:SKGKnowledgePersonDisplayName];

  **(a1 + 48) = *(a1 + 56);
  *a3 = 1;
}

void __94__SpotlightGraph_peopleUpdateInfo_attributeKey_attribute_forNode_person_score_rank_bestCount___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKGNode nodeWithElementIdentifier:inGraph:](SKGNode, "nodeWithElementIdentifier:inGraph:", [v3 nodeIdentifier], *(a1 + 32));
  v26 = [v4 value];

  v5 = [*(a1 + 40) objectForKeyedSubscript:v26];

  if (!v5)
  {
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x277CBEB38] dictionary];
    [v6 setObject:v7 forKey:v26];
  }

  v8 = [*(a1 + 40) objectForKeyedSubscript:v26];
  v9 = [v8 objectForKeyedSubscript:*(a1 + 48)];

  if (!v9)
  {
    v10 = [*(a1 + 40) objectForKeyedSubscript:v26];
    v11 = [MEMORY[0x277CBEB18] array];
    [v10 setObject:v11 forKey:*(a1 + 48)];
  }

  v12 = [SKGInteractionEdge filterWithDomainIdentifier:v26];
  v13 = [(MAEdgeCollection *)SKGInteractionEdges edgesOfType:1 onNodes:*(a1 + 56) matchingFilter:v12];
  v14 = [(MAEdgeCollection *)SKGInteractionEdges edgesOfType:2 onNodes:*(a1 + 56) matchingFilter:v12];
  v15 = [v13 count];
  v16 = [v14 count];
  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v17 setObject:*(a1 + 64) forKey:@"value"];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
  [v17 setObject:v18 forKey:@"in"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
  [v17 setObject:v19 forKey:@"out"];

  v20 = MEMORY[0x277CCABB0];
  v21 = [v3 count];

  v22 = [v20 numberWithUnsignedInteger:v21];
  [v17 setObject:v22 forKey:@"count"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 72)];
  [v17 setObject:v23 forKey:@"ambiguous"];

  v24 = [*(a1 + 40) objectForKeyedSubscript:v26];
  v25 = [v24 objectForKeyedSubscript:*(a1 + 48)];
  [v25 addObject:v17];
}

- (BOOL)generatePeopleUsingBlock:(id)block
{
  blockCopy = block;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v5 = objc_autoreleasePoolPush();
  v6 = self->_graph;
  available = [(SKGGraph *)v6 available];
  if (available)
  {
    peopleScores = self->_peopleScores;
    v9 = [(SKGNodes *)SKGPersons nodesInGraph:v6];
    if ([v9 count])
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __43__SpotlightGraph_generatePeopleUsingBlock___block_invoke;
      v12[3] = &unk_27893E048;
      v17 = peopleScores;
      v16 = &v18;
      v13 = v6;
      selfCopy = self;
      v15 = blockCopy;
      [v9 enumeratePersonsInGraph:v13 usingBlock:v12];
    }
  }

  objc_autoreleasePoolPop(v5);
  if (available)
  {
    v10 = *(v19 + 24);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v18, 8);

  return v10 & 1;
}

void __43__SpotlightGraph_generatePeopleUsingBlock___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 contacts];
  v8 = [v7 count];

  v9 = [v5 entities];
  v10 = [v9 count];

  v11 = [v5 photos];
  v12 = [v11 count];

  if (v12 <= 1 && v10 <= 1 && v8 <= 1)
  {
    v38 = a3;
    v13 = objc_opt_new();
    [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v5, "nodeIdentifier")];
    v80[0] = 0x7FFFFFFF;
    v40 = v79 = 0;
    SIGeneralTrieContainsStringKey();
    v39 = +[SKGPersonNode personWithElementIdentifier:inGraph:](SKGPersonNode, "personWithElementIdentifier:inGraph:", [v5 nodeIdentifier], a1[4]);
    v14 = [v39 value];
    v78[0] = 0;
    v78[1] = v78;
    v78[2] = 0x2020000000;
    v78[3] = 0;
    v15 = [v5 names];
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __43__SpotlightGraph_generatePeopleUsingBlock___block_invoke_2;
    v71[3] = &unk_27893DF58;
    v74 = a1[7];
    v16 = a1[4];
    v71[4] = a1[5];
    v17 = v13;
    v72 = v17;
    v18 = v5;
    v73 = v18;
    v76 = v79;
    v77 = v80[0];
    v75 = v78;
    [v15 enumerateNamesInGraph:v16 usingBlock:v71];

    if (*(*(a1[7] + 8) + 24) == 1)
    {
      v19 = [v18 entities];
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __43__SpotlightGraph_generatePeopleUsingBlock___block_invoke_3;
      v65[3] = &unk_27893DF80;
      v68 = a1[7];
      v20 = a1[4];
      v65[4] = a1[5];
      v21 = v17;
      v66 = v21;
      v22 = v18;
      v67 = v22;
      v69 = v79;
      v70 = v80[0];
      [v19 enumerateEntitiesInGraph:v20 usingBlock:v65];

      if (*(*(a1[7] + 8) + 24))
      {
        v23 = [v22 contacts];
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __43__SpotlightGraph_generatePeopleUsingBlock___block_invoke_4;
        v59[3] = &unk_27893DFA8;
        v62 = a1[7];
        v24 = a1[4];
        v59[4] = a1[5];
        v25 = v21;
        v60 = v25;
        v26 = v22;
        v61 = v26;
        v63 = v79;
        v64 = v80[0];
        [v23 enumerateContactsInGraph:v24 usingBlock:v59];

        if (*(*(a1[7] + 8) + 24))
        {
          v27 = [v26 photos];
          v53[0] = MEMORY[0x277D85DD0];
          v53[1] = 3221225472;
          v53[2] = __43__SpotlightGraph_generatePeopleUsingBlock___block_invoke_5;
          v53[3] = &unk_27893DFD0;
          v56 = a1[7];
          v28 = a1[4];
          v53[4] = a1[5];
          v29 = v25;
          v54 = v29;
          v30 = v26;
          v55 = v30;
          v57 = v79;
          v58 = v80[0];
          [v27 enumeratePhotosInGraph:v28 usingBlock:v53];

          if (*(*(a1[7] + 8) + 24))
          {
            v31 = [v30 emails];
            v47[0] = MEMORY[0x277D85DD0];
            v47[1] = 3221225472;
            v47[2] = __43__SpotlightGraph_generatePeopleUsingBlock___block_invoke_6;
            v47[3] = &unk_27893DFF8;
            v50 = a1[7];
            v32 = a1[4];
            v47[4] = a1[5];
            v33 = v29;
            v48 = v33;
            v34 = v30;
            v49 = v34;
            v51 = v79;
            v52 = v80[0];
            [v31 enumerateEmailsInGraph:v32 usingBlock:v47];

            if (*(*(a1[7] + 8) + 24))
            {
              v35 = [v34 phones];
              v37 = a1[4];
              v36 = a1[5];
              v41[0] = MEMORY[0x277D85DD0];
              v41[1] = 3221225472;
              v41[2] = __43__SpotlightGraph_generatePeopleUsingBlock___block_invoke_7;
              v41[3] = &unk_27893E020;
              v44 = a1[7];
              v41[4] = v36;
              v42 = v33;
              v43 = v34;
              v45 = v79;
              v46 = v80[0];
              [v35 enumeratePhonesInGraph:v37 usingBlock:v41];
            }
          }
        }
      }
    }

    (*(a1[6] + 16))();
    if ((*(*(a1[7] + 8) + 24) & 1) == 0)
    {
      *v38 = 1;
    }

    _Block_object_dispose(v78, 8);
  }

  objc_autoreleasePoolPop(v6);
}

void __43__SpotlightGraph_generatePeopleUsingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = SKGKnowledgePersonNames;
  v6 = SKGKnowledgePersonName;
  v7 = *(a1 + 48);
  v8 = MEMORY[0x277CCABB0];
  v9 = *(a1 + 72);
  v10 = a2;
  v12 = [v8 numberWithDouble:v9];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 80)];
  LOBYTE(v3) = [v3 peopleUpdateInfo:v4 attributeKey:v5 attribute:v6 forNode:v10 person:v7 score:v12 rank:v11 bestCount:*(*(a1 + 64) + 8) + 24];

  *(*(*(a1 + 56) + 8) + 24) = v3;
}

void __43__SpotlightGraph_generatePeopleUsingBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = SKGKnowledgePersonEntityIdentifiers;
  v6 = SKGKnowledgePersonEntityIdentifier;
  v7 = *(a1 + 48);
  v8 = MEMORY[0x277CCABB0];
  v9 = *(a1 + 64);
  v10 = a2;
  v12 = [v8 numberWithDouble:v9];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 72)];
  LOBYTE(v3) = [v3 peopleUpdateInfo:v4 attributeKey:v5 attribute:v6 forNode:v10 person:v7 score:v12 rank:v11 bestCount:0];

  *(*(*(a1 + 56) + 8) + 24) = v3;
}

void __43__SpotlightGraph_generatePeopleUsingBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = SKGKnowledgePersonContactIdentifiers;
  v6 = SKGKnowledgePersonContactIdentifier;
  v7 = *(a1 + 48);
  v8 = MEMORY[0x277CCABB0];
  v9 = *(a1 + 64);
  v10 = a2;
  v12 = [v8 numberWithDouble:v9];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 72)];
  LOBYTE(v3) = [v3 peopleUpdateInfo:v4 attributeKey:v5 attribute:v6 forNode:v10 person:v7 score:v12 rank:v11 bestCount:0];

  *(*(*(a1 + 56) + 8) + 24) = v3;
}

void __43__SpotlightGraph_generatePeopleUsingBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = SKGKnowledgePersonPhotosIdentifiers;
  v6 = SKGKnowledgePersonPhotosIdentifier;
  v7 = *(a1 + 48);
  v8 = MEMORY[0x277CCABB0];
  v9 = *(a1 + 64);
  v10 = a2;
  v12 = [v8 numberWithDouble:v9];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 72)];
  LOBYTE(v3) = [v3 peopleUpdateInfo:v4 attributeKey:v5 attribute:v6 forNode:v10 person:v7 score:v12 rank:v11 bestCount:0];

  *(*(*(a1 + 56) + 8) + 24) = v3;
}

void __43__SpotlightGraph_generatePeopleUsingBlock___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = SKGKnowledgePersonEmailAddresses;
  v6 = SKGKnowledgePersonEmailAddress;
  v7 = *(a1 + 48);
  v8 = MEMORY[0x277CCABB0];
  v9 = *(a1 + 64);
  v10 = a2;
  v12 = [v8 numberWithDouble:v9];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 72)];
  LOBYTE(v3) = [v3 peopleUpdateInfo:v4 attributeKey:v5 attribute:v6 forNode:v10 person:v7 score:v12 rank:v11 bestCount:0];

  *(*(*(a1 + 56) + 8) + 24) = v3;
}

void __43__SpotlightGraph_generatePeopleUsingBlock___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = SKGKnowledgePersonPhoneNumbers;
  v6 = SKGKnowledgePersonPhoneNumber;
  v7 = *(a1 + 48);
  v8 = MEMORY[0x277CCABB0];
  v9 = *(a1 + 64);
  v10 = a2;
  v12 = [v8 numberWithDouble:v9];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 72)];
  LOBYTE(v3) = [v3 peopleUpdateInfo:v4 attributeKey:v5 attribute:v6 forNode:v10 person:v7 score:v12 rank:v11 bestCount:0];

  *(*(*(a1 + 56) + 8) + 24) = v3;
}

- (BOOL)analyzePeopleWithCancelBlock:(id)block
{
  blockCopy = block;
  if ([(SpotlightGraph *)self available])
  {
    v5 = [(SpotlightGraph *)self peopleAnalyzeWithCancelBlock:blockCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)scorePeopleWithCancelBlock:(id)block
{
  blockCopy = block;
  if ([(SpotlightGraph *)self available])
  {
    v5 = [(SpotlightGraph *)self peopleScoreWithCancelBlock:blockCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)enumeratePeopleUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(SpotlightGraph *)self available]&& [(SpotlightGraph *)self commitWithCancelBlock:0]&& [(SpotlightGraph *)self generatePeopleUsingBlock:blockCopy];

  return v5;
}

- (BOOL)deletePeopleWithCancelBlock:(id)block
{
  blockCopy = block;
  if ([(SpotlightGraph *)self available])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self->_graph;
    v7 = [(SKGNodes *)SKGPersons nodesInGraph:v6];
    v8 = [(SKGGraph *)v6 removeNodeSet:v7 removeEdgeSet:0 cancelBlock:blockCopy];
    if (self->_peopleScores)
    {
      SIGeneralTrieRelease();
      self->_peopleScores = 0;
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      cachedPeopleScoresPath = [(SpotlightGraph *)self cachedPeopleScoresPath];
      v12 = 0;
      [defaultManager removeItemAtURL:cachedPeopleScoresPath error:&v12];
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)deleteEntitiesWithCancelBlock:(id)block
{
  blockCopy = block;
  if ([(SpotlightGraph *)self available])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self->_graph;
    v7 = [(SKGNodes *)SKGEntities nodesInGraph:v6];
    v8 = [(SKGGraph *)v6 removeNodeSet:v7 removeEdgeSet:0 cancelBlock:blockCopy];

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)primaryNodesForPerson:(os_log_t)log reference:domain:nodes:edges:isOwner:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_231B25000, log, OS_LOG_TYPE_ERROR, "SKGGraph: error building nodes and edges <%@>", buf, 0xCu);
}

@end