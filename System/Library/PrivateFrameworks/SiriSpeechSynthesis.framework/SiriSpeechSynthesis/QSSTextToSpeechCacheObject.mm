@interface QSSTextToSpeechCacheObject
- (NSArray)word_timing_info;
- (Offset<siri::speech::schema_fb::TextToSpeechCacheObject>)addObjectToBuffer:(void *)buffer;
- (QSSTextToSpeechCacheObject)initWithFlatbuffData:(id)data root:(const TextToSpeechCacheObject *)root verify:(BOOL)verify;
- (id)flatbuffData;
- (void)audio:(id)audio;
@end

@implementation QSSTextToSpeechCacheObject

- (id)flatbuffData
{
  v5 = 0;
  v6 = 0;
  v7 = xmmword_26914CD60;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 1;
  v12 = 256;
  v13 = 0;
  v2.var0 = [(QSSTextToSpeechCacheObject *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__42__QSSTextToSpeechCacheObject_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechCacheObject>)addObjectToBuffer:(void *)buffer
{
  v33 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3812000000;
  v28 = __Block_byref_object_copy__645;
  v29 = __Block_byref_object_dispose__646;
  v30 = &unk_26916BD4D;
  v31 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __48__QSSTextToSpeechCacheObject_addObjectToBuffer___block_invoke;
  v24[3] = &unk_279C4C2C8;
  v24[4] = &v25;
  v24[5] = buffer;
  [(QSSTextToSpeechCacheObject *)self audio:v24];
  memset(&v23, 0, sizeof(v23));
  word_timing_info = [(QSSTextToSpeechCacheObject *)self word_timing_info];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v23, [word_timing_info count]);

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  word_timing_info2 = [(QSSTextToSpeechCacheObject *)self word_timing_info];
  v7 = [word_timing_info2 countByEnumeratingWithState:&v19 objects:v32 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(word_timing_info2);
        }

        v18 = [*(*(&v19 + 1) + 8 * i) addObjectToBuffer:buffer];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v23, &v18);
      }

      v7 = [word_timing_info2 countByEnumeratingWithState:&v19 objects:v32 count:16];
    }

    while (v7);
  }

  begin = v23.__begin_;
  if (v23.__end_ == v23.__begin_)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::WordTimingInfo>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::WordTimingInfo>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::WordTimingInfo>> const&)::t;
  }

  else
  {
    v11 = v23.__begin_;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(buffer, v11, v23.__end_ - v23.__begin_);
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v13 = *(buffer + 8);
  v14 = *(buffer + 12);
  v15 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, *(v26 + 12));
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, v12);
  v16.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v13 - v14 + v15);
  if (begin)
  {
    operator delete(begin);
  }

  _Block_object_dispose(&v25, 8);
  return v16;
}

uint64_t __48__QSSTextToSpeechCacheObject_addObjectToBuffer___block_invoke(uint64_t a1, const void *a2, unsigned int a3)
{
  result = flatbuffers::FlatBufferBuilder::CreateVector<unsigned char>(*(a1 + 40), a2, a3);
  *(*(*(a1 + 32) + 8) + 48) = result;
  return result;
}

- (NSArray)word_timing_info
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"word_timing_info"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 7u)
    {
      v6 = *v5[6].var0;
      if (v6)
      {
        v7 = *root[v6].var0;
        v8 = *root[v6 + v7].var0;
        if (v8)
        {
          v9 = 4 * v8;
          v10 = &root[v7 + 4 + v6];
          do
          {
            v11 = [[QSSWordTimingInfo alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"word_timing_info"];
  }

  return array;
}

- (void)audio:(id)audio
{
  audioCopy = audio;
  (*(audio + 2))();
}

- (QSSTextToSpeechCacheObject)initWithFlatbuffData:(id)data root:(const TextToSpeechCacheObject *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSTextToSpeechCacheObject;
  v10 = [(QSSTextToSpeechCacheObject *)&v29 init];
  v11 = v10;
  if (v10)
  {
    if (!dataCopy || ![dataCopy length])
    {
      goto LABEL_16;
    }

    objc_storeStrong(&v10->_data, data);
    if (!root)
    {
      bytes = [(NSData *)v10->_data bytes];
      root = bytes + *bytes;
    }

    v10->_root = root;
    if (verifyCopy)
    {
      bytes2 = [(NSData *)v10->_data bytes];
      v14 = [(NSData *)v10->_data length];
      root = v10->_root;
      if (root < bytes2 || root > bytes2 + v14)
      {
        goto LABEL_16;
      }

      bytes3 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v24 = bytes3;
      v25 = v18;
      v26 = xmmword_26914CD70;
      v27 = 0;
      LOBYTE(v28) = 1;
      if (v18 >= 0x7FFFFFFF)
      {
        __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
      }

      v19 = v10->_root;
      if (v19)
      {
        if (!siri::speech::schema_fb::TextToSpeechCacheObject::Verify(v19, &v24))
        {
LABEL_16:
          v22 = 0;
          goto LABEL_17;
        }
      }
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v10->_storage;
    v10->_storage = dictionary;
  }

  v22 = v10;
LABEL_17:

  return v22;
}

@end