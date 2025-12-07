@interface DIShadowChain
- (BOOL)addShadowNodes:(id)nodes wrapReadOnly:(BOOL)only error:(id *)error;
- (BOOL)addShadowURLs:(id)ls error:(id *)error;
- (BOOL)hasBaseImageCache;
- (BOOL)isEmpty;
- (BOOL)verifyNodes:(id)nodes error:(id *)error;
- (DIShadowChain)init;
- (DIShadowChain)initWithCoder:(id)coder;
- (NSArray)mountPoints;
- (NSArray)nonCacheNodes;
- (NSURL)activeShadowURL;
- (id)description;
- (id)statWithError:(id *)error;
- (int64_t)topDiskImageNumBlocks;
- (void)encodeWithCoder:(id)coder;
- (void)openWritable:(BOOL)writable createNonExisting:(BOOL)existing;
@end

@implementation DIShadowChain

- (DIShadowChain)init
{
  v8.receiver = self;
  v8.super_class = DIShadowChain;
  v2 = [(DIShadowChain *)&v8 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    nodes = v2->_nodes;
    v2->_nodes = array;

    array2 = [MEMORY[0x277CBEA60] array];
    shadowStats = v2->_shadowStats;
    v2->_shadowStats = array2;

    v2->_shouldValidate = 1;
  }

  return v2;
}

- (BOOL)addShadowURLs:(id)ls error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(lsCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = lsCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        v13 = [DIShadowNode alloc];
        v14 = [(DIShadowNode *)v13 initWithURL:v12 isCache:0, v17];
        [v7 addObject:v14];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = [(DIShadowChain *)self addShadowNodes:v7 error:error];
  return v15;
}

- (BOOL)verifyNodes:(id)nodes error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  nodesCopy = nodes;
  v7 = [nodesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v7)
  {
    v15 = 1;
    goto LABEL_15;
  }

  v8 = *v20;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v20 != v8)
      {
        objc_enumerationMutation(nodesCopy);
      }

      v10 = *(*(&v19 + 1) + 8 * i);
      v11 = [v10 URL];
      isFileURL = [v11 isFileURL];

      if ((isFileURL & 1) == 0)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Shadow path %@ is not a valid file", v10];
        v17 = [DIError failWithPOSIXCode:22 verboseInfo:v16 error:error];
LABEL_14:
        v15 = v17;

        goto LABEL_15;
      }

      nodes = [(DIShadowChain *)self nodes];
      v14 = [nodes containsObject:v10];

      if (v14)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Duplicate shadow values for: %@", v10];
        v17 = [DIError failWithPOSIXCode:22 verboseInfo:v16 error:error];
        goto LABEL_14;
      }
    }

    v7 = [nodesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    v15 = 1;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_15:

  return v15;
}

- (BOOL)addShadowNodes:(id)nodes wrapReadOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  v41 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  v29 = [DIShadowChain verifyNodes:"verifyNodes:error:" error:?];
  if (v29)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = nodesCopy;
    v7 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
    if (v7)
    {
      v8 = *v34;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v34 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v33 + 1) + 8 * i);
          if (onlyCopy)
          {
            fileBackend = [*(*(&v33 + 1) + 8 * i) fileBackend];
            v12 = fileBackend;
            if (fileBackend)
            {
              objc_msgSend_backend(fileBackend);
              v13 = *buf;
            }

            else
            {
              v13 = 0;
              *buf = 0;
              *&buf[8] = 0;
            }

            v14 = (*(*v13 + 48))(v13);
            if (*&buf[8])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
            }

            if (v14)
            {
              v15 = *__error();
              v16 = DIForwardLogs();
              if (v16)
              {
                *&v32 = 0;
                v18 = getDIOSLog(v16, v17);
                v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
                v20 = [v10 URL];
                *buf = 68158211;
                if (v19)
                {
                  v21 = 3;
                }

                else
                {
                  v21 = 2;
                }

                *&buf[4] = 51;
                *&buf[8] = 2080;
                *&buf[10] = "[DIShadowChain addShadowNodes:wrapReadOnly:error:]";
                v38 = 2113;
                v39 = v20;
                v22 = _os_log_send_and_compose_impl(v21, &v32, 0, 0, &dword_248DE0000, v18, 0, "%.*s: Using %{private}@ as read-only", buf, 28);

                if (v22)
                {
                  fprintf(*MEMORY[0x277D85DF8], "%s\n", v22);
                  free(v22);
                }
              }

              else
              {
                v23 = getDIOSLog(v16, v17);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  v24 = [v10 URL];
                  *buf = 68158211;
                  *&buf[4] = 51;
                  *&buf[8] = 2080;
                  *&buf[10] = "[DIShadowChain addShadowNodes:wrapReadOnly:error:]";
                  v38 = 2113;
                  v39 = v24;
                  _os_log_impl(&dword_248DE0000, v23, OS_LOG_TYPE_DEFAULT, "%.*s: Using %{private}@ as read-only", buf, 0x1Cu);
                }
              }

              *__error() = v15;
              v25 = [FileLocalXPC alloc];
              fileBackend2 = [v10 fileBackend];
              if (fileBackend2)
              {
                objc_msgSend_backend(fileBackend2);
              }

              std::allocate_shared[abi:ne200100]<ReadOnlyBackend,std::allocator<ReadOnlyBackend>,std::shared_ptr<Backend>,0>();
            }
          }

          nodes = [(DIShadowChain *)self nodes];
          [nodes addObject:v10];
        }

        v7 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
      }

      while (v7);
    }
  }

  return v29;
}

- (void)openWritable:(BOOL)writable createNonExisting:(BOOL)existing
{
  nodes = [(DIShadowChain *)self nodes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__DIShadowChain_openWritable_createNonExisting___block_invoke;
  v8[3] = &unk_278F80AC8;
  writableCopy = writable;
  existingCopy = existing;
  v8[4] = self;
  [nodes enumerateObjectsUsingBlock:v8];
}

void __48__DIShadowChain_openWritable_createNonExisting___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  v7 = 514;
  if (*(a1 + 40) == 1)
  {
    if (*(a1 + 41))
    {
      v7 = 514;
    }

    else
    {
      v7 = 2562;
    }
  }

  if ([v5 isCache])
  {
    [v6 createBackendWithFlags:v7];
    v8 = *__error();
    v9 = DIForwardLogs();
    if (v9)
    {
      v40 = 0;
      v11 = getDIOSLog(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      v13 = [v6 URL];
      v14 = [v13 path];
      *buf = 68158211;
      v42 = 61;
      v43 = 2080;
      v44 = "[DIShadowChain openWritable:createNonExisting:]_block_invoke";
      v45 = 2113;
      v46 = v14;
      v15 = _os_log_send_and_compose_impl(v12, &v40, 0, 0, &dword_248DE0000, v11, 0, "%.*s: Cache file %{private}@ opened with RW access", buf, 28);

      if (v15)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v15);
        free(v15);
      }
    }

    else
    {
      v25 = getDIOSLog(v9, v10);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v6 URL];
        v27 = [v26 path];
        *buf = 68158211;
        v42 = 61;
        v43 = 2080;
        v44 = "[DIShadowChain openWritable:createNonExisting:]_block_invoke";
        v45 = 2113;
        v46 = v27;
        _os_log_impl(&dword_248DE0000, v25, OS_LOG_TYPE_DEFAULT, "%.*s: Cache file %{private}@ opened with RW access", buf, 0x1Cu);
      }
    }

    goto LABEL_42;
  }

  if (*(a1 + 40) == 1)
  {
    v16 = [*(a1 + 32) nodes];
    if (([v16 count] - 1) == a3)
    {
      v17 = v7;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  [v6 createBackendWithFlags:v17];
  if ((v17 & 3) != 0)
  {
    v8 = *__error();
    v18 = DIForwardLogs();
    if (v18)
    {
      v40 = 0;
      v20 = getDIOSLog(v18, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      v22 = [v6 URL];
      v23 = [v22 path];
      *buf = 68158211;
      v42 = 61;
      v43 = 2080;
      v44 = "[DIShadowChain openWritable:createNonExisting:]_block_invoke";
      v45 = 2113;
      v46 = v23;
      v24 = _os_log_send_and_compose_impl(v21, &v40, 0, 0, &dword_248DE0000, v20, 0, "%.*s: Shadow file %{private}@ opened with RW access", buf, 28);

      if (!v24)
      {
        goto LABEL_42;
      }

      goto LABEL_34;
    }

    v34 = getDIOSLog(v18, v19);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [v6 URL];
      v36 = [v35 path];
      *buf = 68158211;
      v42 = 61;
      v43 = 2080;
      v44 = "[DIShadowChain openWritable:createNonExisting:]_block_invoke";
      v45 = 2113;
      v46 = v36;
      _os_log_impl(&dword_248DE0000, v34, OS_LOG_TYPE_DEFAULT, "%.*s: Shadow file %{private}@ opened with RW access", buf, 0x1Cu);
    }
  }

  else
  {
    v8 = *__error();
    v28 = DIForwardLogs();
    if (v28)
    {
      v40 = 0;
      v30 = getDIOSLog(v28, v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 3;
      }

      else
      {
        v31 = 2;
      }

      v32 = [v6 URL];
      v33 = [v32 path];
      *buf = 68158211;
      v42 = 61;
      v43 = 2080;
      v44 = "[DIShadowChain openWritable:createNonExisting:]_block_invoke";
      v45 = 2113;
      v46 = v33;
      v24 = _os_log_send_and_compose_impl(v31, &v40, 0, 0, &dword_248DE0000, v30, 0, "%.*s: Using an existing shadow file: %{private}@", buf, 28);

      if (!v24)
      {
        goto LABEL_42;
      }

LABEL_34:
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v24);
      free(v24);
      goto LABEL_42;
    }

    v37 = getDIOSLog(v28, v29);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [v6 URL];
      v39 = [v38 path];
      *buf = 68158211;
      v42 = 61;
      v43 = 2080;
      v44 = "[DIShadowChain openWritable:createNonExisting:]_block_invoke";
      v45 = 2113;
      v46 = v39;
      _os_log_impl(&dword_248DE0000, v37, OS_LOG_TYPE_DEFAULT, "%.*s: Using an existing shadow file: %{private}@", buf, 0x1Cu);
    }
  }

LABEL_42:
  *__error() = v8;
}

- (id)statWithError:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  shadowStats = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  nodes = [(DIShadowChain *)self nodes];
  v6 = [nodes countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = *v25;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v25 != v7)
      {
        objc_enumerationMutation(nodes);
      }

      v9 = *(*(&v24 + 1) + 8 * v8);
      fileBackend = [v9 fileBackend];
      v11 = fileBackend == 0;

      if (v11)
      {
        break;
      }

      fileBackend2 = [v9 fileBackend];
      v13 = fileBackend2;
      if (fileBackend2)
      {
        objc_msgSend_backend(fileBackend2);
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      get_sink_backend(&v20, &v22);
      fd_from_backend = get_fd_from_backend(&v22);
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      if ((fd_from_backend & 0x80000000) != 0)
      {
        [DIError failWithEnumValue:150 verboseInfo:@"Unexpected backend type for shadow file" error:error];
        goto LABEL_22;
      }

      v15 = [[DIStatFS alloc] initWithFileDescriptor:fd_from_backend error:error];
      v16 = v15;
      if (!v15)
      {
        [DIError failWithEnumValue:150 verboseInfo:@"Could not stat shadow file" error:error];
        goto LABEL_22;
      }

      [(DIStatFS *)v15 logWithHeader:@"Shadow underlying FS"];
      [shadowStats addObject:v16];

      if (v6 == ++v8)
      {
        v6 = [nodes countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }
    }

    [DIError failWithEnumValue:150 verboseInfo:@"Bakcend not initialized for file" error:error];
LABEL_22:

    v17 = 0;
    goto LABEL_23;
  }

LABEL_18:

  v17 = shadowStats;
  shadowStats = self->_shadowStats;
  self->_shadowStats = v17;
LABEL_23:

  return v17;
}

- (NSArray)mountPoints
{
  v15 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  shadowStats = [(DIShadowChain *)self shadowStats];
  v5 = [shadowStats countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(shadowStats);
        }

        mountedOnURL = [*(*(&v10 + 1) + 8 * i) mountedOnURL];
        [array addObject:mountedOnURL];
      }

      v5 = [shadowStats countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return array;
}

- (BOOL)isEmpty
{
  nodes = [(DIShadowChain *)self nodes];
  v3 = [nodes count] == 0;

  return v3;
}

- (NSURL)activeShadowURL
{
  if (-[DIShadowChain isEmpty](self, "isEmpty") || (-[DIShadowChain nodes](self, "nodes"), v3 = objc_claimAutoreleasedReturnValue(), [v3 lastObject], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isCache"), v4, v3, (v5 & 1) != 0))
  {
    v6 = 0;
  }

  else
  {
    nodes = [(DIShadowChain *)self nodes];
    lastObject = [nodes lastObject];
    v6 = [lastObject URL];
  }

  return v6;
}

- (BOOL)hasBaseImageCache
{
  if ([(DIShadowChain *)self isEmpty])
  {
    return 0;
  }

  nodes = [(DIShadowChain *)self nodes];
  firstObject = [nodes firstObject];
  isCache = [firstObject isCache];

  return isCache;
}

- (NSArray)nonCacheNodes
{
  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1];
  nodes = [(DIShadowChain *)self nodes];
  v5 = [nodes filteredArrayUsingPredicate:v3];

  return v5;
}

- (int64_t)topDiskImageNumBlocks
{
  v22 = *MEMORY[0x277D85DE8];
  if (![(DIShadowChain *)self isEmpty])
  {
    nodes = [(DIShadowChain *)self nodes];
    lastObject = [nodes lastObject];

    fileBackend = [lastObject fileBackend];
    v12 = fileBackend;
    if (fileBackend)
    {
      objc_msgSend_backend(fileBackend);
      v13 = *buf;
    }

    else
    {
      v13 = 0;
    }

    *buf = 0;
    *v21 = 0;

    v15 = (*(*v13 + 192))(v13);
    v16 = dup(v15);
    diskimage_uio::diskimage_open_params::create(v16, 0, 0);
  }

  v3 = *__error();
  v4 = DIForwardLogs();
  if (v4)
  {
    *v19 = 0;
    v6 = getDIOSLog(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    *buf = 68157954;
    *&buf[4] = 38;
    *v21 = 2080;
    *&v21[2] = "[DIShadowChain topDiskImageNumBlocks]";
    LODWORD(v18) = 18;
    v8 = _os_log_send_and_compose_impl(v7, v19, 0, 0, &dword_248DE0000, v6, 16, "%.*s: numBlocks queried for an empty shadowChain.", buf, v18);

    if (v8)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v8);
      free(v8);
    }
  }

  else
  {
    v14 = getDIOSLog(v4, v5);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 68157954;
      *&buf[4] = 38;
      *v21 = 2080;
      *&v21[2] = "[DIShadowChain topDiskImageNumBlocks]";
      _os_log_impl(&dword_248DE0000, v14, OS_LOG_TYPE_ERROR, "%.*s: numBlocks queried for an empty shadowChain.", buf, 0x12u);
    }
  }

  *__error() = v3;
  return -22;
}

- (DIShadowChain)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = DIShadowChain;
  v5 = [(DIShadowChain *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"nodes"];
    nodes = v5->_nodes;
    v5->_nodes = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"shadowStats"];
    shadowStats = v5->_shadowStats;
    v5->_shadowStats = v14;

    v5->_shouldValidate = [coderCopy decodeBoolForKey:@"shouldValidate"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  nodes = [(DIShadowChain *)self nodes];
  [coderCopy encodeObject:nodes forKey:@"nodes"];

  shadowStats = [(DIShadowChain *)self shadowStats];
  [coderCopy encodeObject:shadowStats forKey:@"shadowStats"];

  [coderCopy encodeBool:-[DIShadowChain shouldValidate](self forKey:{"shouldValidate"), @"shouldValidate"}];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  nodes = [(DIShadowChain *)self nodes];
  v4 = [v2 stringWithFormat:@"ShadowChain: %@", nodes];

  return v4;
}

@end