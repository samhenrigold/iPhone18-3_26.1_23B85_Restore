@interface DiskImageGraph
+ (BOOL)copyDictNodesToFolder:(id)folder dict:(id)dict error:(id *)error;
+ (BOOL)createNodesConnectivityWithNodesDict:(id)dict error:(id *)error;
+ (BOOL)failWithNoPstackError:(id *)error;
+ (BOOL)loadPlistDictFromFileHandle:(id)handle dict:(id *)dict error:(id *)error;
+ (BOOL)populateNodesDictsWithArray:(id)array workDir:(id)dir nodesDict:(id)dict error:(id *)error;
+ (BOOL)saveToPlistWithDictionary:(id)dictionary URL:(id)l error:(id *)error;
+ (BOOL)validateWithDictionary:(id)dictionary error:(id *)error;
+ (id)createGraphDictWithNode:(id)node;
+ (id)getFirstNonCacheAncestorWithNode:(id)node error:(id *)error;
+ (id)getImageInfoDictWithURL:(id)l error:(id *)error;
+ (id)getImageUUIDStrWithIdentityInfo:(id)info stackableUUIDFallback:(BOOL)fallback error:(id *)error;
+ (id)getImageUUIDWithURL:(id)l allowMissingUUID:(BOOL)d error:(id *)error;
- (BOOL)appendCacheWithURL:(id)l tag:(id)tag error:(id *)error;
- (BOOL)appendOverlayWithURL:(id)l tag:(id)tag error:(id *)error;
- (BOOL)appendOverlayWithURL:(id)l tag:(id)tag numBlocks:(unint64_t)blocks error:(id *)error;
- (BOOL)appendWithURL:(id)l isCache:(BOOL)cache tag:(id)tag numBlocks:(unint64_t)blocks setNewActive:(BOOL)active error:(id *)error;
- (BOOL)appendWithURL:(id)l isCache:(BOOL)cache tag:(id)tag numBlocks:(unint64_t)blocks toNode:(id)node setNewActive:(BOOL)active error:(id *)error;
- (BOOL)checkStackValidityWithError:(id *)error;
- (BOOL)removeNodeWithTag:(id)tag recursive:(BOOL)recursive error:(id *)error;
- (BOOL)removeNodeWithUUID:(id)d recursive:(BOOL)recursive error:(id *)error;
- (BOOL)removeWithNode:(id)node recursive:(BOOL)recursive error:(id *)error;
- (BOOL)savePstackWithURL:(id)l error:(id *)error;
- (BOOL)setActiveNodeWithTag:(id)tag error:(id *)error;
- (BOOL)setActiveNodeWithUUID:(id)d error:(id *)error;
- (BOOL)validateAppendedImageWithURL:(id)l parentNode:(id)node isCache:(BOOL)cache error:(id *)error;
- (DiskImageGraph)initWithBaseImageURL:(id)l newPstackURL:(id)rL tag:(id)tag error:(id *)error;
- (DiskImageGraph)initWithBaseImageURL:(id)l tag:(id)tag error:(id *)error;
- (DiskImageGraph)initWithGraphDB:(id)b workDir:(id)dir error:(id *)error;
- (DiskImageGraph)initWithPluginName:(id)name pluginParams:(id)params tag:(id)tag error:(id *)error;
- (DiskImageGraph)initWithPstackURL:(id)l error:(id *)error;
- (DiskImageGraphNode)rootNode;
- (NSMutableArray)imagesDictsArray;
- (id)activeInfoWithExtra:(BOOL)extra error:(id *)error;
- (id)cloneToURL:(id)l error:(id *)error;
- (id)getImageWithTag:(id)tag error:(id *)error;
- (id)getImageWithUUID:(id)d error:(id *)error;
- (id)infoWithExtra:(BOOL)extra error:(id *)error;
- (void)setActiveNode:(id)node;
@end

@implementation DiskImageGraph

+ (BOOL)loadPlistDictFromFileHandle:(id)handle dict:(id *)dict error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = [handle readDataUpToLength:0x100000 error:error];
  if (v7)
  {
    v8 = [MEMORY[0x277CCAC58] propertyListWithData:v7 options:2 format:0 error:0];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 objectForKeyedSubscript:@"PstackVersion"];

        if (v9)
        {
          v10 = v8;
          *dict = v8;
          v11 = 1;
LABEL_18:

          goto LABEL_19;
        }

        v12 = *__error();
        v13 = DIForwardLogs();
        if (v13)
        {
          v21 = 0;
          v15 = getDIOSLog(v13, v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = 3;
          }

          else
          {
            v16 = 2;
          }

          *buf = 68157954;
          v23 = 57;
          v24 = 2080;
          v25 = "+[DiskImageGraph loadPlistDictFromFileHandle:dict:error:]";
          LODWORD(v20) = 18;
          v17 = _os_log_send_and_compose_impl(v16, &v21, 0, 0, &dword_248DE0000, v15, 0, "%.*s: A valid plist was given, but it has no pstack version key", buf, v20);

          if (v17)
          {
            fprintf(*MEMORY[0x277D85DF8], "%s\n", v17);
            free(v17);
          }
        }

        else
        {
          v18 = getDIOSLog(v13, v14);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68157954;
            v23 = 57;
            v24 = 2080;
            v25 = "+[DiskImageGraph loadPlistDictFromFileHandle:dict:error:]";
            _os_log_impl(&dword_248DE0000, v18, OS_LOG_TYPE_DEFAULT, "%.*s: A valid plist was given, but it has no pstack version key", buf, 0x12u);
          }
        }

        *__error() = v12;
      }
    }

    v11 = [DiskImageGraph failWithNoPstackError:error];
    goto LABEL_18;
  }

  v11 = 0;
LABEL_19:

  return v11;
}

+ (BOOL)failWithNoPstackError:(id *)error
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:@"Not a pstack." forKeyedSubscript:@"DIErrorVerboseInfo"];
  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.DiskImages2.ErrorDomain" code:167 userInfo:dictionary];
  LOBYTE(error) = [DIError failWithInError:v5 outError:error];

  return error;
}

+ (id)createGraphDictWithNode:(id)node
{
  nodeCopy = node;
  toDictionary = [nodeCopy toDictionary];
  v5 = [toDictionary mutableCopy];
  [nodeCopy setPstackDict:v5];

  v6 = MEMORY[0x277CBEB38];
  uUID = [nodeCopy UUID];
  uUIDString = [uUID UUIDString];
  v9 = MEMORY[0x277CBEB18];
  pstackDict = [nodeCopy pstackDict];

  v11 = [v9 arrayWithObject:pstackDict];
  v12 = [v6 dictionaryWithObjectsAndKeys:{@"1.0", @"PstackVersion", uUIDString, @"ActiveNode", v11, @"Images", 0}];

  return v12;
}

- (DiskImageGraph)initWithPluginName:(id)name pluginParams:(id)params tag:(id)tag error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  paramsCopy = params;
  tagCopy = tag;
  v37.receiver = self;
  v37.super_class = DiskImageGraph;
  v12 = [(DiskImageGraph *)&v37 init];
  if (!v12)
  {
    goto LABEL_4;
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  if (uUID)
  {
    v14 = uUID;
    LOBYTE(v34) = 0;
    v15 = [[PluginDiskImageGraphNode alloc] initWithPluginName:nameCopy pluginParams:paramsCopy tag:tagCopy UUID:uUID parentNode:0 metadata:0 isCache:v34];
    activeNode = v12->_activeNode;
    v12->_activeNode = &v15->super;
    v17 = v15;

    v18 = [DiskImageGraph createGraphDictWithNode:v17];
    graphDB = v12->_graphDB;
    v12->_graphDB = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    nodes = v12->_nodes;
    v12->_nodes = v20;

    nodes = [(DiskImageGraph *)v12 nodes];
    uUID2 = [(DiskImageGraphNode *)v17 UUID];
    uUIDString = [uUID2 UUIDString];
    [nodes setObject:v17 forKeyedSubscript:uUIDString];

LABEL_4:
    v25 = v12;
    goto LABEL_15;
  }

  v26 = *__error();
  v27 = DIForwardLogs();
  if (v27)
  {
    v36 = 0;
    v29 = getDIOSLog(v27, v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = 3;
    }

    else
    {
      v30 = 2;
    }

    *buf = 68157954;
    v39 = 60;
    v40 = 2080;
    v41 = "[DiskImageGraph initWithPluginName:pluginParams:tag:error:]";
    LODWORD(v35) = 18;
    v31 = _os_log_send_and_compose_impl(v30, &v36, 0, 0, &dword_248DE0000, v29, 16, "%.*s: Failed to get UUID info of provided image.", buf, v35);

    if (v31)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v31);
      free(v31);
    }
  }

  else
  {
    v32 = getDIOSLog(v27, v28);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 68157954;
      v39 = 60;
      v40 = 2080;
      v41 = "[DiskImageGraph initWithPluginName:pluginParams:tag:error:]";
      _os_log_impl(&dword_248DE0000, v32, OS_LOG_TYPE_ERROR, "%.*s: Failed to get UUID info of provided image.", buf, 0x12u);
    }
  }

  v25 = 0;
  *__error() = v26;
LABEL_15:

  return v25;
}

- (DiskImageGraph)initWithBaseImageURL:(id)l tag:(id)tag error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  lCopy = l;
  tagCopy = tag;
  v30.receiver = self;
  v30.super_class = DiskImageGraph;
  v10 = [(DiskImageGraph *)&v30 init];
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = [DiskImageGraph getImageUUIDWithURL:lCopy allowMissingUUID:1 error:error];
  if (v11)
  {
    v12 = v11;
    v13 = [[NativeDiskImageGraphNode alloc] initWithURL:lCopy tag:tagCopy UUID:v11 parentNode:0 metadata:0 isCache:0];
    [(DiskImageGraph *)v10 setActiveNode:v13];
    v14 = [DiskImageGraph createGraphDictWithNode:v13];
    [(DiskImageGraph *)v10 setGraphDB:v14];

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(DiskImageGraph *)v10 setNodes:v15];

    nodes = [(DiskImageGraph *)v10 nodes];
    uUID = [(DiskImageGraphNode *)v13 UUID];
    uUIDString = [uUID UUIDString];
    [nodes setObject:v13 forKeyedSubscript:uUIDString];

LABEL_4:
    v19 = v10;
    goto LABEL_15;
  }

  v20 = *__error();
  v21 = DIForwardLogs();
  if (v21)
  {
    v29 = 0;
    v23 = getDIOSLog(v21, v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    *buf = 68157954;
    v32 = 49;
    v33 = 2080;
    v34 = "[DiskImageGraph initWithBaseImageURL:tag:error:]";
    LODWORD(v28) = 18;
    v25 = _os_log_send_and_compose_impl(v24, &v29, 0, 0, &dword_248DE0000, v23, 16, "%.*s: Failed to get UUID info of provided image.", buf, v28);

    if (v25)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v25);
      free(v25);
    }
  }

  else
  {
    v26 = getDIOSLog(v21, v22);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 68157954;
      v32 = 49;
      v33 = 2080;
      v34 = "[DiskImageGraph initWithBaseImageURL:tag:error:]";
      _os_log_impl(&dword_248DE0000, v26, OS_LOG_TYPE_ERROR, "%.*s: Failed to get UUID info of provided image.", buf, 0x12u);
    }
  }

  v19 = 0;
  *__error() = v20;
LABEL_15:

  return v19;
}

- (DiskImageGraph)initWithBaseImageURL:(id)l newPstackURL:(id)rL tag:(id)tag error:(id *)error
{
  rLCopy = rL;
  tagCopy = tag;
  lCopy = l;
  if (rLCopy)
  {
    selfCopy = [[SerializedDiskImageGraph alloc] initWithBaseImageURL:lCopy pstackURL:rLCopy tag:tagCopy error:error];
  }

  else
  {
    v14 = [(DiskImageGraph *)self initWithBaseImageURL:lCopy tag:tagCopy error:error];

    self = v14;
    selfCopy = self;
  }

  return &selfCopy->super;
}

- (NSMutableArray)imagesDictsArray
{
  graphDB = [(DiskImageGraph *)self graphDB];
  v3 = [graphDB objectForKeyedSubscript:@"Images"];

  return v3;
}

+ (BOOL)validateWithDictionary:(id)dictionary error:(id *)error
{
  v5 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:dictionary];
  if ([v5 validateAndPopObjectForKey:@"PstackVersion" className:objc_opt_class() isOptional:0 error:error] && objc_msgSend(v5, "validateAndPopObjectForKey:className:isOptional:error:", @"ActiveNode", objc_opt_class(), 0, error) && objc_msgSend(v5, "validateAndPopObjectForKey:className:isOptional:error:", @"Images", objc_opt_class(), 0, error))
  {
    if ([v5 count])
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Validation failed, input contains unexpected data."];
      v7 = [DIError failWithPOSIXCode:22 verboseInfo:v6 error:error];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (DiskImageGraph)initWithGraphDB:(id)b workDir:(id)dir error:(id *)error
{
  bCopy = b;
  dirCopy = dir;
  v24.receiver = self;
  v24.super_class = DiskImageGraph;
  v10 = [(DiskImageGraph *)&v24 init];
  if (v10)
  {
    if (![DiskImageGraph validateWithDictionary:bCopy error:error])
    {
      goto LABEL_9;
    }

    v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:bCopy];
    graphDB = v10->_graphDB;
    v10->_graphDB = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    nodes = v10->_nodes;
    v10->_nodes = v13;

    v15 = [(NSMutableDictionary *)v10->_graphDB objectForKeyedSubscript:@"Images"];
    v16 = [DiskImageGraph populateNodesDictsWithArray:v15 workDir:dirCopy nodesDict:v10->_nodes error:error];

    if (!v16)
    {
      goto LABEL_9;
    }

    nodes = [(DiskImageGraph *)v10 nodes];
    v18 = [(NSMutableDictionary *)v10->_graphDB objectForKeyedSubscript:@"ActiveNode"];
    v19 = [nodes objectForKey:v18];
    activeNode = v10->_activeNode;
    v10->_activeNode = v19;

    if (!v19)
    {
      error = [DIError nilWithPOSIXCode:22 description:@"Bad pstack format error:node with active UUID not found.", error];
      goto LABEL_8;
    }

    if (![DiskImageGraph createNodesConnectivityWithNodesDict:v10->_nodes error:error]|| ![(DiskImageGraph *)v10 checkStackValidityWithError:error])
    {
LABEL_9:
      v22 = 0;
      goto LABEL_10;
    }
  }

  error = v10;
LABEL_8:
  v22 = error;
LABEL_10:

  return v22;
}

- (DiskImageGraph)initWithPstackURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = [[SerializedDiskImageGraph alloc] initWithPstackURL:lCopy error:error];

  return &v7->super;
}

+ (BOOL)copyDictNodesToFolder:(id)folder dict:(id)dict error:(id *)error
{
  folderCopy = folder;
  dictCopy = dict;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(dictCopy, "count")}];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __51__DiskImageGraph_copyDictNodesToFolder_dict_error___block_invoke;
  v17[3] = &unk_278F80930;
  v20 = &v28;
  v10 = folderCopy;
  v18 = v10;
  v11 = defaultManager;
  v19 = v11;
  v21 = &v22;
  [dictCopy enumerateKeysAndObjectsUsingBlock:v17];
  if (v29[5])
  {
    v12 = v23[5];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __51__DiskImageGraph_copyDictNodesToFolder_dict_error___block_invoke_2;
    v15[3] = &unk_278F80958;
    v16 = v11;
    [v12 enumerateObjectsUsingBlock:v15];
    v13 = [DIError failWithInError:v29[5] outError:error];
  }

  else
  {
    v13 = 1;
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v13;
}

void __51__DiskImageGraph_copyDictNodesToFolder_dict_error___block_invoke(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = a1[4];
    v9 = [v7 filePath];
    v10 = [v9 lastPathComponent];
    v11 = [v8 URLByAppendingPathComponent:v10];

    v12 = a1[5];
    v13 = [v7 filePath];
    v14 = *(a1[6] + 8);
    obj = *(v14 + 40);
    LOBYTE(v12) = [v12 copyItemAtURL:v13 toURL:v11 error:&obj];
    objc_storeStrong((v14 + 40), obj);

    if (v12)
    {
      [*(*(a1[7] + 8) + 40) addObject:v11];
    }

    else
    {
      *a4 = 1;
    }
  }

  else
  {
    *a4 = 1;
    v15 = *(a1[6] + 8);
    v18 = *(v15 + 40);
    [DIError failWithPOSIXCode:45 verboseInfo:@"Clone of plugin nodes is not supported." error:&v18];
    v16 = v18;
    v7 = *(v15 + 40);
    *(v15 + 40) = v16;
  }
}

- (id)cloneToURL:(id)l error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v7 = MEMORY[0x277CBEB38];
  graphDB = [(DiskImageGraph *)self graphDB];
  v9 = [v7 dictionaryWithDictionary:graphDB];

  graphDB2 = [(DiskImageGraph *)self graphDB];
  v11 = [graphDB2 objectForKeyedSubscript:@"Images"];

  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
  [v9 setObject:v12 forKeyedSubscript:@"Images"];
  if (([lCopy isFileURL] & 1) == 0)
  {
    v25 = @"Destination folder URL must be of 'file' scheme.";
    v26 = 22;
LABEL_15:
    v24 = [DIError nilWithPOSIXCode:v26 description:v25 error:error];
    goto LABEL_16;
  }

  if (![lCopy hasDirectoryPath] || (objc_msgSend(lCopy, "checkResourceIsReachableAndReturnError:", 0) & 1) == 0)
  {
    v25 = @"Destination folder URL must represent an existing folder.";
    v26 = 20;
    goto LABEL_15;
  }

  selfCopy = self;
  errorCopy = error;
  v31 = v9;
  v32 = lCopy;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v30 = v11;
  obj = v11;
  v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v35;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v34 + 1) + 8 * i);
        v18 = [v17 mutableCopy];
        v19 = [v17 objectForKeyedSubscript:@"FilePath"];
        v20 = [v19 componentsSeparatedByString:@"/"];
        lastObject = [v20 lastObject];
        [v18 setObject:lastObject forKeyedSubscript:@"FilePath"];

        [v12 addObject:v18];
      }

      v14 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v14);
  }

  nodes = [(DiskImageGraph *)selfCopy nodes];
  lCopy = v32;
  v23 = [DiskImageGraph copyDictNodesToFolder:v32 dict:nodes error:errorCopy];

  if (v23)
  {
    v9 = v31;
    v24 = v31;
  }

  else
  {
    v24 = 0;
    v9 = v31;
  }

  v11 = v30;
LABEL_16:

  return v24;
}

- (void)setActiveNode:(id)node
{
  objc_storeStrong(&self->_activeNode, node);
  nodeCopy = node;
  uUID = [nodeCopy UUID];
  uUIDString = [uUID UUIDString];
  [(NSMutableDictionary *)self->_graphDB setObject:uUIDString forKeyedSubscript:@"ActiveNode"];
}

+ (BOOL)populateNodesDictsWithArray:(id)array workDir:(id)dir nodesDict:(id)dict error:(id *)error
{
  arrayCopy = array;
  dirCopy = dir;
  dictCopy = dict;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__DiskImageGraph_populateNodesDictsWithArray_workDir_nodesDict_error___block_invoke;
  v17[3] = &unk_278F80980;
  v12 = dirCopy;
  v18 = v12;
  v20 = &v21;
  v13 = dictCopy;
  v19 = v13;
  [arrayCopy enumerateObjectsUsingBlock:v17];
  v14 = v22[5];
  if (v14)
  {
    v15 = [DIError failWithInError:v14 outError:error];
  }

  else
  {
    v15 = 1;
  }

  _Block_object_dispose(&v21, 8);
  return v15;
}

void __70__DiskImageGraph_populateNodesDictsWithArray_workDir_nodesDict_error___block_invoke(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[4];
  v7 = *(a1[6] + 8);
  obj = *(v7 + 40);
  v8 = [DiskImageGraphNode GraphNodeWithDictionary:a2 workDir:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (v8)
  {
    v9 = a1[5];
    v10 = [v8 UUID];
    v11 = [v10 UUIDString];
    [v9 setObject:v8 forKey:v11];
  }

  else
  {
    *a4 = 1;
  }
}

+ (BOOL)createNodesConnectivityWithNodesDict:(id)dict error:(id *)error
{
  dictCopy = dict;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __61__DiskImageGraph_createNodesConnectivityWithNodesDict_error___block_invoke;
  v13 = &unk_278F809A8;
  v6 = dictCopy;
  v14 = v6;
  v15 = &v16;
  [v6 enumerateKeysAndObjectsUsingBlock:&v10];
  v7 = v17[5];
  if (v7)
  {
    v8 = [DIError failWithInError:v7 outError:error, v10, v11, v12, v13];
  }

  else
  {
    v8 = 1;
  }

  _Block_object_dispose(&v16, 8);
  return v8;
}

void __61__DiskImageGraph_createNodesConnectivityWithNodesDict_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v15 = a3;
  v6 = [v15 parentUUID];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v15 parentUUID];
    v9 = [v8 UUIDString];
    v10 = [v7 objectForKey:v9];

    if (v10)
    {
      [v15 setParent:v10];
      v11 = [v15 parent];
      v12 = [v11 mutableChildren];
      [v12 addObject:v15];
    }

    else
    {
      *a4 = 1;
      v13 = [DIError errorWithPOSIXCode:22 verboseInfo:@"Missing parent node in graph."];
      v14 = *(*(a1 + 40) + 8);
      v11 = *(v14 + 40);
      *(v14 + 40) = v13;
    }
  }
}

- (BOOL)checkStackValidityWithError:(id *)error
{
  activeNode = [(DiskImageGraph *)self activeNode];
  v6 = -1;
  while (activeNode)
  {
    parent = [activeNode parent];

    nodes = [(DiskImageGraph *)self nodes];
    v9 = [nodes count];

    ++v6;
    activeNode = parent;
    if (v9 <= v6)
    {
      error = [DIError failWithPOSIXCode:22 verboseInfo:@"Invalid pstack error:Active stack contains a loop.", error];

      return error;
    }
  }

  return 1;
}

+ (BOOL)saveToPlistWithDictionary:(id)dictionary URL:(id)l error:(id *)error
{
  lCopy = l;
  v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:dictionary format:100 options:0 error:error];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 writeToURL:lCopy options:1 error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)setActiveNodeWithUUID:(id)d error:(id *)error
{
  dCopy = d;
  nodes = [(DiskImageGraph *)self nodes];
  uUIDString = [dCopy UUIDString];

  v9 = [nodes objectForKeyedSubscript:uUIDString];

  if (v9)
  {
    [(DiskImageGraph *)self setActiveNode:v9];
    v10 = 1;
  }

  else
  {
    v10 = [DIError failWithPOSIXCode:22 verboseInfo:@"Cannot find image with provided UUID." error:error];
  }

  return v10;
}

- (id)getImageWithTag:(id)tag error:(id *)error
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy_;
  v16[4] = __Block_byref_object_dispose_;
  tagCopy = tag;
  v17 = tagCopy;
  nodes = [(DiskImageGraph *)self nodes];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __40__DiskImageGraph_getImageWithTag_error___block_invoke;
  v15[3] = &unk_278F809D0;
  v15[4] = v16;
  v8 = [nodes keysOfEntriesPassingTest:v15];

  if ([v8 count])
  {
    if ([v8 count] == 1)
    {
      nodes2 = [(DiskImageGraph *)self nodes];
      anyObject = [v8 anyObject];
      v11 = [nodes2 objectForKey:anyObject];

      goto LABEL_7;
    }

    v12 = @"More than one image in the stack has the provided tag, please specify UUID instead.";
    v13 = 22;
  }

  else
  {
    v12 = @"Cannot find image with provided tag.";
    v13 = 2;
  }

  v11 = [DIError nilWithPOSIXCode:v13 verboseInfo:v12 error:error];
LABEL_7:

  _Block_object_dispose(v16, 8);

  return v11;
}

uint64_t __40__DiskImageGraph_getImageWithTag_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 tag];
  v5 = [v4 isEqualToString:*(*(*(a1 + 32) + 8) + 40)];

  return v5;
}

- (id)getImageWithUUID:(id)d error:(id *)error
{
  dCopy = d;
  nodes = [(DiskImageGraph *)self nodes];
  uUIDString = [dCopy UUIDString];

  v9 = [nodes objectForKeyedSubscript:uUIDString];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = [DIError nilWithPOSIXCode:2 verboseInfo:@"Cannot find image with provided uuid." error:error];
  }

  v11 = v10;

  return v11;
}

- (BOOL)setActiveNodeWithTag:(id)tag error:(id *)error
{
  v5 = [(DiskImageGraph *)self getImageWithTag:tag error:error];
  if (v5)
  {
    [(DiskImageGraph *)self setActiveNode:v5];
  }

  return v5 != 0;
}

- (BOOL)removeNodeWithUUID:(id)d recursive:(BOOL)recursive error:(id *)error
{
  recursiveCopy = recursive;
  dCopy = d;
  nodes = [(DiskImageGraph *)self nodes];
  uUIDString = [dCopy UUIDString];

  v11 = [nodes objectForKeyedSubscript:uUIDString];

  if (v11)
  {
    v12 = [(DiskImageGraph *)self removeWithNode:v11 recursive:recursiveCopy error:error];
  }

  else
  {
    v12 = [DIError failWithPOSIXCode:22 verboseInfo:@"Cannot find image with provided UUID." error:error];
  }

  v13 = v12;

  return v13;
}

- (BOOL)removeNodeWithTag:(id)tag recursive:(BOOL)recursive error:(id *)error
{
  recursiveCopy = recursive;
  v8 = [(DiskImageGraph *)self getImageWithTag:tag error:error];
  if (v8)
  {
    v9 = [(DiskImageGraph *)self removeWithNode:v8 recursive:recursiveCopy error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)removeWithNode:(id)node recursive:(BOOL)recursive error:(id *)error
{
  recursiveCopy = recursive;
  v34 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  parent = [nodeCopy parent];

  if (parent)
  {
    getDescendants = [nodeCopy getDescendants];
    if (![getDescendants count] || recursiveCopy)
    {
      activeNode = [(DiskImageGraph *)self activeNode];
      v15 = activeNode;
      if (activeNode == nodeCopy)
      {
      }

      else
      {
        activeNode2 = [(DiskImageGraph *)self activeNode];
        v17 = [getDescendants containsObject:activeNode2];

        if (!v17)
        {
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          mutableChildren = [nodeCopy mutableChildren];
          v19 = [mutableChildren countByEnumeratingWithState:&v29 objects:v33 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v30;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v30 != v21)
                {
                  objc_enumerationMutation(mutableChildren);
                }

                [(DiskImageGraph *)self removeWithNode:*(*(&v29 + 1) + 8 * i) recursive:recursiveCopy error:0];
              }

              v20 = [mutableChildren countByEnumeratingWithState:&v29 objects:v33 count:16];
            }

            while (v20);
          }

          [nodeCopy deleteImage];
          imagesDictsArray = [(DiskImageGraph *)self imagesDictsArray];
          pstackDict = [nodeCopy pstackDict];
          [imagesDictsArray removeObject:pstackDict];

          nodes = [(DiskImageGraph *)self nodes];
          uUID = [nodeCopy UUID];
          uUIDString = [uUID UUIDString];
          [nodes removeObjectForKey:uUIDString];

          v13 = 1;
          goto LABEL_19;
        }
      }

      v11 = @"The requested operation will delete the active node, please set another one first.";
      v12 = 22;
    }

    else
    {
      v11 = @"The requested operation will delete all children of the provided node. use recursive removal to surpress this error.";
      v12 = 1;
    }

    v13 = [DIError failWithPOSIXCode:v12 verboseInfo:v11 error:error];
LABEL_19:

    goto LABEL_20;
  }

  v13 = [DIError failWithPOSIXCode:22 verboseInfo:@"Cannot delete base image node." error:error];
LABEL_20:

  return v13;
}

- (BOOL)savePstackWithURL:(id)l error:(id *)error
{
  lCopy = l;
  graphDB = [(DiskImageGraph *)self graphDB];
  LOBYTE(error) = [DiskImageGraph saveToPlistWithDictionary:graphDB URL:lCopy error:error];

  return error;
}

- (DiskImageGraphNode)rootNode
{
  activeNode = [(DiskImageGraph *)self activeNode];
  parent = [activeNode parent];

  if (parent)
  {
    do
    {
      parent2 = [activeNode parent];

      v4Parent = [parent2 parent];

      activeNode = parent2;
    }

    while (v4Parent);
  }

  else
  {
    parent2 = activeNode;
  }

  return parent2;
}

- (id)infoWithExtra:(BOOL)extra error:(id *)error
{
  extraCopy = extra;
  rootNode = [(DiskImageGraph *)self rootNode];
  v7 = [rootNode recursiveInfoWithExtra:extraCopy error:error];

  return v7;
}

- (id)activeInfoWithExtra:(BOOL)extra error:(id *)error
{
  extraCopy = extra;
  v7 = objc_opt_new();
  activeNode = [(DiskImageGraph *)self activeNode];
  if (activeNode)
  {
    reverseObjectEnumerator = activeNode;
    while (1)
    {
      v10 = [reverseObjectEnumerator infoWithExtra:extraCopy error:error];
      if (!v10)
      {
        break;
      }

      v11 = v10;
      [v7 addObject:v10];
      parent = [reverseObjectEnumerator parent];

      reverseObjectEnumerator = parent;
      if (!parent)
      {
        goto LABEL_5;
      }
    }

    allObjects = 0;
  }

  else
  {
LABEL_5:
    reverseObjectEnumerator = [v7 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
  }

  return allObjects;
}

+ (id)getImageInfoDictWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = [[DIImageInfoParams alloc] initWithURL:lCopy error:error];

  if (v6 && [(DIImageInfoParams *)v6 retrieveWithError:error])
  {
    imageInfo = [(DIImageInfoParams *)v6 imageInfo];
  }

  else
  {
    imageInfo = 0;
  }

  return imageInfo;
}

+ (id)getImageUUIDStrWithIdentityInfo:(id)info stackableUUIDFallback:(BOOL)fallback error:(id *)error
{
  fallbackCopy = fallback;
  v24 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v8 = [infoCopy objectForKey:@"Stable UUID"];
  if (!v8)
  {
    if (fallbackCopy && ([infoCopy objectForKey:@"UUID"], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v9;
      v10 = *__error();
      v11 = DIForwardLogs();
      if (v11)
      {
        v19 = 0;
        v13 = getDIOSLog(v11, v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        *buf = 68157954;
        v21 = 91;
        v22 = 2080;
        v23 = "+[DiskImageGraph(InfoPrivate) getImageUUIDStrWithIdentityInfo:stackableUUIDFallback:error:]";
        LODWORD(v18) = 18;
        v15 = _os_log_send_and_compose_impl(v14, &v19, 0, 0, &dword_248DE0000, v13, 0, "%.*s: Stable UUID not found in provided image, Falling back to using Stackable UUID.", buf, v18);

        if (v15)
        {
          fprintf(*MEMORY[0x277D85DF8], "%s\n", v15);
          free(v15);
        }
      }

      else
      {
        v16 = getDIOSLog(v11, v12);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68157954;
          v21 = 91;
          v22 = 2080;
          v23 = "+[DiskImageGraph(InfoPrivate) getImageUUIDStrWithIdentityInfo:stackableUUIDFallback:error:]";
          _os_log_impl(&dword_248DE0000, v16, OS_LOG_TYPE_DEFAULT, "%.*s: Stable UUID not found in provided image, Falling back to using Stackable UUID.", buf, 0x12u);
        }
      }

      *__error() = v10;
    }

    else
    {
      v8 = [DIError nilWithPOSIXCode:22 verboseInfo:@"Provided image has no UUID info." error:error];
    }
  }

  return v8;
}

+ (id)getImageUUIDWithURL:(id)l allowMissingUUID:(BOOL)d error:(id *)error
{
  dCopy = d;
  v31 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v8 = objc_opt_new();
  v9 = [DiskImageGraph getImageInfoDictWithURL:lCopy error:error];

  if (!v9)
  {
    v18 = 0;
    v19 = 0;
    goto LABEL_26;
  }

  v10 = [v9 objectForKeyedSubscript:@"Image Format"];
  v11 = [v10 isEqualToString:@"RAW"];

  if (v11)
  {
    if (dCopy)
    {
      v12 = *__error();
      v13 = DIForwardLogs();
      if (v13)
      {
        v26 = 0;
        v15 = getDIOSLog(v13, v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 3;
        }

        else
        {
          v16 = 2;
        }

        *buf = 68157954;
        v28 = 74;
        v29 = 2080;
        v30 = "+[DiskImageGraph(InfoPrivate) getImageUUIDWithURL:allowMissingUUID:error:]";
        LODWORD(v25) = 18;
        v17 = _os_log_send_and_compose_impl(v16, &v26, 0, 0, &dword_248DE0000, v15, 0, "%.*s: Base image is raw format, using nil UUID.", buf, v25);

        if (v17)
        {
          fprintf(*MEMORY[0x277D85DF8], "%s\n", v17);
          free(v17);
        }
      }

      else
      {
        v23 = getDIOSLog(v13, v14);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68157954;
          v28 = 74;
          v29 = 2080;
          v30 = "+[DiskImageGraph(InfoPrivate) getImageUUIDWithURL:allowMissingUUID:error:]";
          _os_log_impl(&dword_248DE0000, v23, OS_LOG_TYPE_DEFAULT, "%.*s: Base image is raw format, using nil UUID.", buf, 0x12u);
        }
      }

      *__error() = v12;
      v22 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
    }

    else
    {
      v22 = [DIError nilWithPOSIXCode:22 verboseInfo:@"Provided image has no UUID info." error:error];
    }

    v19 = v22;
    goto LABEL_23;
  }

  v20 = [v9 objectForKey:@"Identity Info"];

  if (!v20)
  {
    v19 = [DIError nilWithPOSIXCode:22 verboseInfo:@"Provided image has no identity info." error:error];
    v8 = 0;
LABEL_23:
    v18 = 0;
    goto LABEL_26;
  }

  v18 = [DiskImageGraph getImageUUIDStrWithIdentityInfo:v20 stackableUUIDFallback:dCopy error:error];
  if (v18)
  {
    v21 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v18];
    if (!v21)
    {
      v21 = [DIError nilWithPOSIXCode:22 verboseInfo:@"Error in new image's UUID." error:error];
    }

    v19 = v21;
  }

  else
  {
    v19 = 0;
  }

  v8 = v20;
LABEL_26:

  return v19;
}

- (BOOL)appendOverlayWithURL:(id)l tag:(id)tag error:(id *)error
{
  tagCopy = tag;
  lCopy = l;
  activeNode = [(DiskImageGraph *)self activeNode];
  LOBYTE(error) = [(DiskImageGraph *)self appendWithURL:lCopy isCache:0 tag:tagCopy numBlocks:0 toNode:activeNode setNewActive:0 error:error];

  return error;
}

- (BOOL)appendCacheWithURL:(id)l tag:(id)tag error:(id *)error
{
  tagCopy = tag;
  lCopy = l;
  activeNode = [(DiskImageGraph *)self activeNode];
  LOBYTE(error) = [(DiskImageGraph *)self appendWithURL:lCopy isCache:1 tag:tagCopy numBlocks:0 toNode:activeNode setNewActive:0 error:error];

  return error;
}

- (BOOL)appendOverlayWithURL:(id)l tag:(id)tag numBlocks:(unint64_t)blocks error:(id *)error
{
  tagCopy = tag;
  lCopy = l;
  activeNode = [(DiskImageGraph *)self activeNode];
  LOBYTE(error) = [(DiskImageGraph *)self appendWithURL:lCopy isCache:0 tag:tagCopy numBlocks:blocks toNode:activeNode setNewActive:0 error:error];

  return error;
}

+ (id)getFirstNonCacheAncestorWithNode:(id)node error:(id *)error
{
  nodeCopy = node;
  if ([nodeCopy isCache])
  {
    do
    {
      parent = [nodeCopy parent];

      nodeCopy = parent;
    }

    while (([parent isCache] & 1) != 0);
    if (parent)
    {
      goto LABEL_4;
    }
  }

  else
  {
    parent = nodeCopy;
    if (nodeCopy)
    {
LABEL_4:
      error = parent;
      goto LABEL_7;
    }
  }

  error = [DIError nilWithPOSIXCode:22 verboseInfo:@"Pstack corrupted error:found a cache node without a non-cache ancestor.", error];
LABEL_7:
  v8 = error;

  return v8;
}

- (BOOL)validateAppendedImageWithURL:(id)l parentNode:(id)node isCache:(BOOL)cache error:(id *)error
{
  cacheCopy = cache;
  nodeCopy = node;
  v11 = [DiskImageGraph getImageInfoDictWithURL:l error:error];
  if (v11 && [nodeCopy validateAppendedImageWithInfo:v11 error:error])
  {
    v12 = [v11 objectForKeyedSubscript:@"Image Format"];
    v13 = [v12 isEqualToString:@"ASIF"];

    if (v13)
    {
      v14 = [v11 objectForKeyedSubscript:@"ASIF Info"];
      v15 = [v14 objectForKeyedSubscript:@"Is Cache"];
      bOOLValue = [v15 BOOLValue];

      if (bOOLValue == cacheCopy)
      {
        nodes = [(DiskImageGraph *)self nodes];
        v20 = [v11 objectForKeyedSubscript:@"Identity Info"];
        v21 = [v20 objectForKeyedSubscript:@"Stable UUID"];
        v22 = [nodes objectForKeyedSubscript:v21];

        if (!v22)
        {
          v18 = 1;
          goto LABEL_11;
        }

        v17 = @"Stack already contains an image with the same stable UUID.";
      }

      else
      {
        v17 = @"Image cache flag does not match the requested operation.";
      }
    }

    else
    {
      v17 = @"Can only append ASIF formatted images to pstack.";
    }

    v18 = [DIError failWithPOSIXCode:22 verboseInfo:v17 error:error];
  }

  else
  {
    v18 = 0;
  }

LABEL_11:

  return v18;
}

- (BOOL)appendWithURL:(id)l isCache:(BOOL)cache tag:(id)tag numBlocks:(unint64_t)blocks setNewActive:(BOOL)active error:(id *)error
{
  activeCopy = active;
  cacheCopy = cache;
  tagCopy = tag;
  lCopy = l;
  activeNode = [(DiskImageGraph *)self activeNode];
  LOBYTE(error) = [(DiskImageGraph *)self appendWithURL:lCopy isCache:cacheCopy tag:tagCopy numBlocks:blocks toNode:activeNode setNewActive:activeCopy error:error];

  return error;
}

- (BOOL)appendWithURL:(id)l isCache:(BOOL)cache tag:(id)tag numBlocks:(unint64_t)blocks toNode:(id)node setNewActive:(BOOL)active error:(id *)error
{
  activeCopy = active;
  cacheCopy = cache;
  v61 = *MEMORY[0x277D85DE8];
  lCopy = l;
  tagCopy = tag;
  nodeCopy = node;
  v17 = [lCopy checkResourceIsReachableAndReturnError:0];
  v18 = [DiskImageGraph getFirstNonCacheAncestorWithNode:nodeCopy error:error];
  if (!v18)
  {
    v20 = 0;
    goto LABEL_7;
  }

  v19 = v17 ^ 1;
  if (!blocks)
  {
    v19 = 1;
  }

  if (v19)
  {
    v54 = nodeCopy;
    if (v17)
    {
      if (![(DiskImageGraph *)self validateAppendedImageWithURL:lCopy parentNode:v18 isCache:cacheCopy error:error])
      {
        goto LABEL_26;
      }
    }

    else
    {
      v52 = tagCopy;
      v22 = [DIStackParams alloc];
      v23 = [nodeCopy URL];
      v24 = [(DIStackParams *)v22 initWithURL:v23 error:error];

      LOBYTE(v23) = [(DIStackParams *)v24 appendWithURL:lCopy isCache:cacheCopy numBlocks:blocks error:error];
      if ((v23 & 1) == 0)
      {
        v20 = 0;
        v21 = lCopy;
        tagCopy = v52;
LABEL_33:
        nodeCopy = v54;
        goto LABEL_34;
      }

      tagCopy = v52;
      if (![(DiskImageGraph *)self validateAppendedImageWithURL:lCopy parentNode:v18 isCache:cacheCopy error:error])
      {
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        [defaultManager removeItemAtURL:lCopy error:0];

LABEL_26:
        v20 = 0;
        v21 = lCopy;
        goto LABEL_33;
      }
    }

    v21 = [(DiskImageGraph *)self URLRelativeToPstackParentWithURL:lCopy];

    v25 = [DiskImageGraph getImageUUIDWithURL:v21 allowMissingUUID:0 error:error];
    v20 = v25 != 0;
    if (v25)
    {
      v51 = v25;
      v53 = tagCopy;
      v26 = [[NativeDiskImageGraphNode alloc] initWithURL:v21 tag:tagCopy UUID:v25 parentNode:v54 metadata:0 isCache:cacheCopy];
      nodes = [(DiskImageGraph *)self nodes];
      uUID = [(DiskImageGraphNode *)v26 UUID];
      uUIDString = [uUID UUIDString];
      [nodes setObject:v26 forKey:uUIDString];

      imagesDictsArray = [(DiskImageGraph *)self imagesDictsArray];
      toDictionary = [(NativeDiskImageGraphNode *)v26 toDictionary];
      [imagesDictsArray addObject:toDictionary];

      nodes2 = [(DiskImageGraph *)self nodes];
      parentUUID = [(DiskImageGraphNode *)v26 parentUUID];
      uUIDString2 = [parentUUID UUIDString];
      v35 = [nodes2 objectForKey:uUIDString2];
      [(DiskImageGraphNode *)v26 setParent:v35];

      imagesDictsArray2 = [(DiskImageGraph *)self imagesDictsArray];
      lastObject = [imagesDictsArray2 lastObject];
      [(DiskImageGraphNode *)v26 setPstackDict:lastObject];

      if (activeCopy)
      {
        [(DiskImageGraph *)self setActiveNode:v26];
      }

      v25 = v51;
      tagCopy = v53;
    }

    else
    {
      v38 = tagCopy;
      v39 = *__error();
      v40 = DIForwardLogs();
      if (v40)
      {
        v56 = 0;
        v42 = getDIOSLog(v40, v41);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = 3;
        }

        else
        {
          v43 = 2;
        }

        *buf = 68157954;
        v58 = 95;
        v59 = 2080;
        v60 = "[DiskImageGraph(AppendPrivate) appendWithURL:isCache:tag:numBlocks:toNode:setNewActive:error:]";
        LODWORD(v50) = 18;
        v44 = _os_log_send_and_compose_impl(v43, &v56, 0, 0, &dword_248DE0000, v42, 16, "%.*s: Failed to get info of newly created shadow/cache, will try to delete if an image was created.", buf, v50);

        if (v44)
        {
          fprintf(*MEMORY[0x277D85DF8], "%s\n", v44);
          free(v44);
        }

        v25 = 0;
      }

      else
      {
        v46 = getDIOSLog(v40, v41);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 68157954;
          v58 = 95;
          v59 = 2080;
          v60 = "[DiskImageGraph(AppendPrivate) appendWithURL:isCache:tag:numBlocks:toNode:setNewActive:error:]";
          _os_log_impl(&dword_248DE0000, v46, OS_LOG_TYPE_ERROR, "%.*s: Failed to get info of newly created shadow/cache, will try to delete if an image was created.", buf, 0x12u);
        }
      }

      *__error() = v39;
      tagCopy = v38;
      if ((v17 & 1) == 0)
      {
        [MEMORY[0x277CCAA00] defaultManager];
        v48 = v47 = v25;
        [v48 removeItemAtURL:v21 error:0];

        v25 = v47;
      }
    }

    goto LABEL_33;
  }

  v20 = [DIError failWithPOSIXCode:22 verboseInfo:@"Append of existing image with custom size is not supported." error:error];
LABEL_7:
  v21 = lCopy;
LABEL_34:

  return v20;
}

@end