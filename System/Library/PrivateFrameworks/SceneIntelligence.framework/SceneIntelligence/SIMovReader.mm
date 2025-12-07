@interface SIMovReader
- (__CVBuffer)getCurrentReadBufferForTrack:(id)track;
- (__CVBuffer)readFrame:(id *)frame;
- (id).cxx_construct;
- (id)initReaderWithVideoURL:(id)l andTrackName:(id)name;
- (id)initReaderWithVideoURL:(id)l trackList:(id)list;
- (int64_t)readNextAvaliableFrame:(id *)frame;
- (void)dealloc;
@end

@implementation SIMovReader

- (id)initReaderWithVideoURL:(id)l trackList:(id)list
{
  v73 = *MEMORY[0x277D85DE8];
  lCopy = l;
  listCopy = list;
  v64.receiver = self;
  v64.super_class = SIMovReader;
  v7 = [(SIMovReader *)&v64 init];
  if (v7)
  {
    v51 = listCopy;
    v63 = 0;
    v8 = [objc_alloc(MEMORY[0x277D256C0]) initWithURL:lCopy error:&v63];
    v52 = v63;
    [(SIMovReader *)v7 setReader:v8];

    reader = [(SIMovReader *)v7 reader];
    LODWORD(v8) = reader == 0;

    if (v8)
    {
      v49 = __SceneIntelligenceLogSharedInstance(v10);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 136381187;
        v68 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIMovReader.mm";
        v69 = 1025;
        v70 = 76;
        v71 = 2113;
        v72 = v52;
        _os_log_impl(&dword_21DE0D000, v49, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Couldn't open video track with error %{private}@ ***", buf, 0x1Cu);
      }

LABEL_31:
      v47 = 0;
    }

    else
    {
      v7->_readCount = 0;
      v7->_bufferEOFCount = 0;
      v7->_lcmfps = 1;
      v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
      trackInfos = v7->trackInfos;
      v7->trackInfos = v11;

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      obj = v51;
      v13 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
      if (v13)
      {
        v14 = *v60;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v60 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v59 + 1) + 8 * i);
            reader2 = [(SIMovReader *)v7 reader];
            v18 = [reader2 containsStream:v16];

            if (!v18)
            {
              v48 = __SceneIntelligenceLogSharedInstance(v19);
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                *buf = 136381187;
                v68 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIMovReader.mm";
                v69 = 1025;
                v70 = 95;
                v71 = 2113;
                v72 = v16;
                _os_log_impl(&dword_21DE0D000, v48, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** video doesn't contain steam %{private}@ ***", buf, 0x1Cu);
              }

              goto LABEL_31;
            }

            reader3 = [(SIMovReader *)v7 reader];
            [reader3 getFrameRateForStream:v16];
            v22 = v21;

            reader4 = [(SIMovReader *)v7 reader];
            [reader4 getSizeForStream:v16];
            v25 = v24;
            v27 = v26;

            v28 = [SIMovStreamInfo alloc];
            reader5 = [(SIMovReader *)v7 reader];
            v30 = llround(v22);
            v31 = -[SIMovStreamInfo initInfoWithTrackName:frameRate:pixelBufferFormat:resolution:](v28, "initInfoWithTrackName:frameRate:pixelBufferFormat:resolution:", v16, [reader5 getOutputPixelFormatForStream:v16], v30, v25, v27);
            [(NSMutableDictionary *)v7->trackInfos setObject:v31 forKeyedSubscript:v16];

            LOBYTE(v33) = 0;
            if (v30)
            {
              lcmfps = v7->_lcmfps;
              if (v7->_lcmfps)
              {
                v32 = std::__gcd<unsigned char>(v7->_lcmfps, v30);
                v33 = lcmfps / v32 * v30;
              }
            }

            v7->_lcmfps = v33;
            v35 = __SceneIntelligenceLogSharedInstance(v32);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              v36 = [(NSMutableDictionary *)v7->trackInfos objectForKeyedSubscript:v16];
              v37 = [v36 description];
              *buf = 136381187;
              v68 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIMovReader.mm";
              v69 = 1025;
              v70 = 93;
              v71 = 2113;
              v72 = v37;
              _os_log_impl(&dword_21DE0D000, v35, OS_LOG_TYPE_DEBUG, " %{private}s:%{private}d *** reading track from video: \n %{private}@ ***", buf, 0x1Cu);
            }
          }

          v13 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v38 = v7->trackInfos;
      v39 = [(NSMutableDictionary *)v38 countByEnumeratingWithState:&v55 objects:v65 count:16];
      if (v39)
      {
        v40 = *v56;
        do
        {
          for (j = 0; j != v39; ++j)
          {
            if (*v56 != v40)
            {
              objc_enumerationMutation(v38);
            }

            v42 = *(*(&v55 + 1) + 8 * j);
            v43 = v7->_lcmfps;
            v44 = [(NSMutableDictionary *)v7->trackInfos objectForKeyedSubscript:v42];
            frameRate = [v44 frameRate];
            v46 = [(NSMutableDictionary *)v7->trackInfos objectForKeyedSubscript:v42];
            [v46 setReadCycle:v43 / frameRate];
          }

          v39 = [(NSMutableDictionary *)v38 countByEnumeratingWithState:&v55 objects:v65 count:16];
        }

        while (v39);
      }

      v47 = v7;
    }

    listCopy = v51;
  }

  else
  {
    v47 = 0;
  }

  return v47;
}

- (id)initReaderWithVideoURL:(id)l andTrackName:(id)name
{
  v11[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  nameCopy = name;
  v11[0] = nameCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v9 = [(SIMovReader *)self initReaderWithVideoURL:lCopy trackList:v8];

  return v9;
}

- (void)dealloc
{
  for (i = &self->_pixelBufferMap.__table_.__first_node_; ; CVPixelBufferRelease(i[5].__next_))
  {
    i = i->__next_;
    if (!i)
    {
      break;
    }
  }

  v4.receiver = self;
  v4.super_class = SIMovReader;
  [(SIMovReader *)&v4 dealloc];
}

- (__CVBuffer)readFrame:(id *)frame
{
  reader = [(SIMovReader *)self reader];
  allKeys = [(NSMutableDictionary *)self->trackInfos allKeys];
  firstObject = [allKeys firstObject];
  v10 = 0;
  v8 = [reader copyNextFrameForStream:firstObject timestamp:frame error:&v10];

  return v8;
}

- (__CVBuffer)getCurrentReadBufferForTrack:(id)track
{
  trackCopy = track;
  std::string::basic_string[abi:nn200100]<0>(__p, [trackCopy UTF8String]);
  v9 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_pixelBufferMap.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v9)[5];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

- (int64_t)readNextAvaliableFrame:(id *)frame
{
  v44 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = self->trackInfos;
  v4 = 0;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v5)
  {
    v32 = *v35;
    v7 = 1;
    *&v6 = 136380931;
    v29 = v6;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v35 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v34 + 1) + 8 * v8);
        readCount = self->_readCount;
        v11 = [(NSMutableDictionary *)self->trackInfos objectForKeyedSubscript:v9, v29];
        v12 = readCount % [v11 readCycle] == 0;

        if (v12)
        {
          v13 = v9;
          std::string::basic_string[abi:nn200100]<0>(__p, [v9 UTF8String]);
          v38 = __p;
          v14 = std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_pixelBufferMap.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v38);
          CVPixelBufferRelease(v14[5]);
          if (v42 < 0)
          {
            operator delete(*__p);
          }

          reader = [(SIMovReader *)self reader];
          v16 = [(NSMutableDictionary *)self->trackInfos objectForKeyedSubscript:v9];
          name = [v16 name];
          v33 = v4;
          v18 = [reader copyNextFrameForStream:name timestamp:frame error:&v33];
          v19 = v33;

          v20 = v9;
          std::string::basic_string[abi:nn200100]<0>(__p, [v9 UTF8String]);
          v38 = __p;
          std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_pixelBufferMap.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v38)[5] = v18;
          if (v42 < 0)
          {
            operator delete(*__p);
          }

          v21 = v9;
          std::string::basic_string[abi:nn200100]<0>(__p, [v9 UTF8String]);
          v38 = __p;
          v22 = std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_pixelBufferMap.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v38);
          v23 = v22[5];
          if (v42 < 0)
          {
            operator delete(*__p);
            if (v23)
            {
LABEL_13:
              v7 = 0;
LABEL_19:
              v4 = v19;
              goto LABEL_20;
            }
          }

          else if (v23)
          {
            goto LABEL_13;
          }

          if (v19)
          {
            v24 = __SceneIntelligenceLogSharedInstance(v22);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *__p = v29;
              *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIMovReader.mm";
              v40 = 1025;
              v41 = 150;
              _os_log_impl(&dword_21DE0D000, v24, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to read the buffer. ***", __p, 0x12u);
            }

            v7 = 2;
            goto LABEL_19;
          }

          v7 = 0;
          v4 = 0;
          ++self->_bufferEOFCount;
        }

LABEL_20:
        ++v8;
      }

      while (v5 != v8);
      v25 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v34 objects:v43 count:16];
      v5 = v25;
      if (!v25)
      {
        goto LABEL_26;
      }
    }
  }

  v7 = 1;
LABEL_26:

  bufferEOFCount = self->_bufferEOFCount;
  self->_readCount = (self->_readCount + 1) % self->_lcmfps;
  if ([(NSMutableDictionary *)self->trackInfos count]== bufferEOFCount)
  {
    v27 = 3;
  }

  else
  {
    v27 = v7;
  }

  return v27;
}

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 16) = 1065353216;
  return self;
}

@end