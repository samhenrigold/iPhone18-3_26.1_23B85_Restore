@interface GTMeshData
- (BOOL)parseMaterialFile:(id)file error:(id *)error;
- (BOOL)parseOBJFileWith:(id *)with;
- (BOOL)readLine:(id)line error:(id *)error;
- (GTMeshData)initWithURL:(id)l error:(id *)error;
- (id).cxx_construct;
- (unsigned)findIndexOrPushVertex:(const GTVertexData *)vertex;
@end

@implementation GTMeshData

- (BOOL)parseMaterialFile:(id)file error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithContentsOfURL:fileCopy encoding:4 error:error];
  v7 = v6;
  v24 = v6;
  if (v6)
  {
    v8 = [v6 componentsSeparatedByString:@"\n"];

    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v8;
    v9 = 0;
    v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v10)
    {
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(obj);
          }

          if (sscanf([*(*(&v27 + 1) + 8 * i) UTF8String], " newmtl %256s", buf) == 1)
          {
            v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
            v14 = objc_opt_new();

            [(NSMutableDictionary *)self->_submeshes setObject:v14 forKeyedSubscript:v13];
            v9 = v14;
          }
        }

        v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v10);
    }
  }

  else
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [GTMeshData parseMaterialFile:error:];
    }

    v16 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v17 = _ARLogGeneral(v6);
    obj = v17;
    if (v16 == 1)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = *error;
        *buf = 138543874;
        v33 = v19;
        v34 = 2048;
        selfCopy2 = self;
        v36 = 2112;
        v37 = v20;
        _os_log_impl(&dword_23D3AE000, obj, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Failed to open .mtl file, error: %@.", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = *error;
      *buf = 138543874;
      v33 = v22;
      v34 = 2048;
      selfCopy2 = self;
      v36 = 2112;
      v37 = v23;
      _os_log_impl(&dword_23D3AE000, obj, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Failed to open .mtl file, error: %@.", buf, 0x20u);
    }
  }

  return v24 != 0;
}

- (unsigned)findIndexOrPushVertex:(const GTVertexData *)vertex
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = std::__hash_table<std::__hash_value_type<GTVertexData,unsigned int>,std::__unordered_map_hasher<GTVertexData,std::__hash_value_type<GTVertexData,unsigned int>,std::hash<GTVertexData>,std::equal_to<GTVertexData>,true>,std::__unordered_map_equal<GTVertexData,std::__hash_value_type<GTVertexData,unsigned int>,std::equal_to<GTVertexData>,std::hash<GTVertexData>,true>,std::allocator<std::__hash_value_type<GTVertexData,unsigned int>>>::find<GTVertexData>(&self->_vertexMap.__table_.__bucket_list_.__ptr_, vertex);
  if (v5)
  {
    return v5[4].u32[0];
  }

  p_vertices = &self->_vertices;
  v8 = -1431655765 * ((self->_vertices.__end_ - self->_vertices.__begin_) >> 4);
  v9 = *(vertex + 1);
  v26[0] = *vertex;
  v26[1] = v9;
  v26[2] = *(vertex + 2);
  v27 = v8;
  std::__hash_table<std::__hash_value_type<GTVertexData,unsigned int>,std::__unordered_map_hasher<GTVertexData,std::__hash_value_type<GTVertexData,unsigned int>,std::hash<GTVertexData>,std::equal_to<GTVertexData>,true>,std::__unordered_map_equal<GTVertexData,std::__hash_value_type<GTVertexData,unsigned int>,std::equal_to<GTVertexData>,std::hash<GTVertexData>,true>,std::allocator<std::__hash_value_type<GTVertexData,unsigned int>>>::__emplace_unique_key_args<GTVertexData,std::pair<GTVertexData,unsigned int>>(&self->_vertexMap, v26, v26);
  end = self->_vertices.__end_;
  cap = self->_vertices.__cap_;
  if (end >= cap)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((end - p_vertices->__begin_) >> 4);
    v16 = v15 + 1;
    if (v15 + 1 > 0x555555555555555)
    {
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v17 = 0xAAAAAAAAAAAAAAABLL * ((cap - p_vertices->__begin_) >> 4);
    if (2 * v17 > v16)
    {
      v16 = 2 * v17;
    }

    if (v17 >= 0x2AAAAAAAAAAAAAALL)
    {
      v18 = 0x555555555555555;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      std::allocator<GTVertexData>::allocate_at_least[abi:ne200100](&self->_vertices, v18);
    }

    v19 = 48 * v15;
    v20 = *vertex;
    v21 = *(vertex + 2);
    *(v19 + 16) = *(vertex + 1);
    *(v19 + 32) = v21;
    *v19 = v20;
    v14 = (48 * v15 + 48);
    begin = self->_vertices.__begin_;
    v23 = (self->_vertices.__end_ - begin);
    v24 = (48 * v15 - v23);
    memcpy(v24, begin, v23);
    v25 = self->_vertices.__begin_;
    self->_vertices.__begin_ = v24;
    self->_vertices.__end_ = v14;
    self->_vertices.__cap_ = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    v12 = *vertex;
    v13 = *(vertex + 2);
    *(end + 1) = *(vertex + 1);
    *(end + 2) = v13;
    *end = v12;
    v14 = (end + 48);
  }

  self->_vertices.__end_ = v14;
  return -1431655765 * ((v14 - self->_vertices.__begin_) >> 4) - 1;
}

- (BOOL)readLine:(id)line error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  lineCopy = line;
  v35 = 0;
  v34 = 0;
  if (sscanf([lineCopy UTF8String], " v %f %f %f", &v35 + 4, &v35, &v34) == 3)
  {
    *&v7 = __PAIR64__(v35, HIDWORD(v35));
    DWORD2(v7) = v34;
    *buf = v7;
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(self->_anon_18, buf);
LABEL_14:
    v22 = 1;
    goto LABEL_15;
  }

  v8 = lineCopy;
  if (sscanf([lineCopy UTF8String], " vn %f %f %f", &v35 + 4, &v35, &v34) == 3)
  {
    *&v9 = __PAIR64__(v35, HIDWORD(v35));
    DWORD2(v9) = v34;
    *buf = v9;
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(self->_anon_30, buf);
    goto LABEL_14;
  }

  v10 = lineCopy;
  if (sscanf([lineCopy UTF8String], " f %d//%d %d//%d %d//%d", v42, v41, &v42[4], &v41[4], &v42[8], &v41[8]) == 6)
  {
    for (i = 0; i != 3; ++i)
    {
      v12 = *&v41[i * 4];
      *buf = *(*self->_anon_18 + 16 * (*&v42[i * 4] - 1));
      *&buf[16] = *(*self->_anon_30 + 16 * (v12 - 1));
      v39[i] = [(GTMeshData *)self findIndexOrPushVertex:buf];
    }

    [(GTSubmeshData *)self->_currentSubmesh addIndex:v39[0]];
    [(GTSubmeshData *)self->_currentSubmesh addIndex:v39[1]];
    [(GTSubmeshData *)self->_currentSubmesh addIndex:v39[2]];
    goto LABEL_14;
  }

  v13 = lineCopy;
  if (sscanf([lineCopy UTF8String], " mtllib %256s", v40) == 1)
  {
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v40];
    uRLByDeletingLastPathComponent = [(NSURL *)self->_objUrl URLByDeletingLastPathComponent];
    v16 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v14];

    [(GTMeshData *)self parseMaterialFile:v16 error:error];
    goto LABEL_14;
  }

  v17 = lineCopy;
  if (sscanf([lineCopy UTF8String], " usemtl %256s", v40) != 1)
  {
    goto LABEL_14;
  }

  v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v40];
  v19 = [(NSMutableDictionary *)self->_submeshes objectForKeyedSubscript:v18];
  currentSubmesh = self->_currentSubmesh;
  self->_currentSubmesh = v19;

  if (self->_currentSubmesh)
  {

    goto LABEL_14;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    [GTMeshData readLine:error:];
  }

  v24 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v25 = _ARLogGeneral(v21);
  v26 = v25;
  if (v24 == 1)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      *buf = 138543874;
      *&buf[4] = v28;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2114;
      *&buf[24] = v18;
      _os_log_impl(&dword_23D3AE000, v26, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Encountered usemtl '%{public}@' command before newmtl", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    *buf = 138543874;
    *&buf[4] = v30;
    *&buf[12] = 2048;
    *&buf[14] = self;
    *&buf[22] = 2114;
    *&buf[24] = v18;
    _os_log_impl(&dword_23D3AE000, v26, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Encountered usemtl '%{public}@' command before newmtl", buf, 0x20u);
  }

  if (error)
  {
    v31 = objc_alloc(MEMORY[0x277CCA9B8]);
    v32 = *MEMORY[0x277CCA470];
    v36[0] = *MEMORY[0x277CCA450];
    v36[1] = v32;
    v37[0] = @"Loading a material file failed.";
    v37[1] = @"Encountered usemlt command in material file without newmtl.";
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
    *error = [v31 initWithDomain:*MEMORY[0x277CE5178] code:500 userInfo:v33];
  }

  v22 = 0;
LABEL_15:

  return v22;
}

- (BOOL)parseOBJFileWith:(id *)with
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithContentsOfURL:self->_objUrl encoding:4 error:with];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 componentsSeparatedByString:@"\n"];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = *v23;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [(GTMeshData *)self readLine:*(*(&v22 + 1) + 8 * i) error:with, v22];
          if (*with)
          {

            return 0;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    *&self->_anon_18[8] = *self->_anon_18;
    *&self->_anon_30[8] = *self->_anon_30;
    std::__hash_table<std::__hash_value_type<GTVertexData,unsigned int>,std::__unordered_map_hasher<GTVertexData,std::__hash_value_type<GTVertexData,unsigned int>,std::hash<GTVertexData>,std::equal_to<GTVertexData>,true>,std::__unordered_map_equal<GTVertexData,std::__hash_value_type<GTVertexData,unsigned int>,std::equal_to<GTVertexData>,std::hash<GTVertexData>,true>,std::allocator<std::__hash_value_type<GTVertexData,unsigned int>>>::clear(&self->_vertexMap.__table_.__bucket_list_.__ptr_);
    return 1;
  }

  else
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [GTMeshData parseMaterialFile:error:];
    }

    v13 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v14 = _ARLogGeneral(v5);
    v15 = v14;
    if (v13 == 1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = *with;
        *buf = 138543874;
        v28 = v17;
        v29 = 2048;
        selfCopy2 = self;
        v31 = 2112;
        v32 = v18;
        _os_log_impl(&dword_23D3AE000, v15, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Failed to open .obj file, error: %@.", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = *with;
      *buf = 138543874;
      v28 = v20;
      v29 = 2048;
      selfCopy2 = self;
      v31 = 2112;
      v32 = v21;
      _os_log_impl(&dword_23D3AE000, v15, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Failed to open .obj file, error: %@.", buf, 0x20u);
    }

    return 0;
  }
}

- (GTMeshData)initWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = GTMeshData;
  v8 = [(GTMeshData *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_objUrl, l);
    v10 = objc_opt_new();
    submeshes = v9->_submeshes;
    v9->_submeshes = v10;

    [(GTMeshData *)v9 parseOBJFileWith:error];
  }

  return v9;
}

- (id).cxx_construct
{
  *(self + 15) = 0;
  *(self + 104) = 0u;
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 32) = 1065353216;
  return self;
}

@end