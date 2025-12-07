@interface FTTextToSpeechCacheObject
- (FTTextToSpeechCacheObject)initWithFlatbuffData:(id)data root:(const TextToSpeechCacheObject *)root verify:(BOOL)verify;
- (NSArray)word_timing_info;
- (Offset<siri::speech::schema_fb::TextToSpeechCacheObject>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (id)word_timing_info_objectAtIndex:(unint64_t)index;
- (unint64_t)word_timing_info_count;
- (void)audio:(id)audio;
- (void)word_timing_info_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTTextToSpeechCacheObject

- (FTTextToSpeechCacheObject)initWithFlatbuffData:(id)data root:(const TextToSpeechCacheObject *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTTextToSpeechCacheObject;
  v10 = [(FTTextToSpeechCacheObject *)&v25 init];
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_14;
  }

  objc_storeStrong(&v10->_data, data);
  if (!root)
  {
    bytes = [(NSData *)v10->_data bytes];
    root = bytes + *bytes;
  }

  v10->_root = root;
  if (verifyCopy && ((v12 = [(NSData *)v10->_data bytes], v13 = [(NSData *)v10->_data length], root = v10->_root, root >= v12) ? (v15 = root > v12 + v13) : (v15 = 1), v15 || (v16 = [(NSData *)v10->_data bytes], v17 = [(NSData *)v10->_data length], v21[0] = v16, v21[1] = v17, v22 = xmmword_233005E20, v23 = 0, v24 = 1, (v18 = v10->_root) != 0) && !siri::speech::schema_fb::TextToSpeechCacheObject::Verify(v18, v21)))
  {
LABEL_14:
    v19 = 0;
  }

  else
  {
LABEL_13:
    v19 = v10;
  }

  return v19;
}

- (void)audio:(id)audio
{
  audioCopy = audio;
  (*(audio + 2))();
}

- (NSArray)word_timing_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"word_timing_info"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__FTTextToSpeechCacheObject_word_timing_info__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTTextToSpeechCacheObject *)self word_timing_info_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"word_timing_info"];
  }

  return v3;
}

- (id)word_timing_info_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"word_timing_info"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectAtIndexedSubscript:index];
LABEL_3:
    v8 = v7;
    goto LABEL_8;
  }

  root = self->_root;
  v10 = &root[-*root->var0];
  if (*v10->var0 >= 7u)
  {
    v11 = *v10[6].var0;
    if (v11)
    {
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v7 = [[FTWordTimingInfo alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)word_timing_info_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"word_timing_info"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 7u && (v8 = *v7[6].var0) != 0)
    {
      v5 = *root[v8 + *root[v8].var0].var0;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)word_timing_info_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"word_timing_info"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 7u)
    {
      v9 = *v8[6].var0;
      if (v9)
      {
        v18 = 0;
        v10 = *root[v9].var0;
        v11 = *root[v9 + v10].var0;
        if (v11)
        {
          v12 = 0;
          v13 = &root[v10 + 4 + v9];
          v14 = 4 * v11 - 4;
          do
          {
            v15 = [[FTWordTimingInfo alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
            blockCopy[2](blockCopy, v15, v12, &v18);
            v16 = v18;

            if (v16)
            {
              break;
            }

            ++v12;
            v13 += 4;
            v17 = v14;
            v14 -= 4;
          }

          while (v17);
        }
      }
    }
  }
}

- (Offset<siri::speech::schema_fb::TextToSpeechCacheObject>)addObjectToBuffer:(void *)buffer
{
  v32 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3812000000;
  v27 = __Block_byref_object_copy__15;
  v28 = __Block_byref_object_dispose__15;
  v29 = &unk_233042D43;
  v30 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __47__FTTextToSpeechCacheObject_addObjectToBuffer___block_invoke;
  v23[3] = &unk_2789B8AB0;
  v23[4] = &v24;
  v23[5] = buffer;
  [(FTTextToSpeechCacheObject *)self audio:v23];
  memset(&v22, 0, sizeof(v22));
  word_timing_info = [(FTTextToSpeechCacheObject *)self word_timing_info];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v22, [word_timing_info count]);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  word_timing_info2 = [(FTTextToSpeechCacheObject *)self word_timing_info];
  v7 = [word_timing_info2 countByEnumeratingWithState:&v18 objects:v31 count:16];
  if (v7)
  {
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(word_timing_info2);
        }

        v17 = [*(*(&v18 + 1) + 8 * i) addObjectToBuffer:buffer];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v22.__begin_, &v17);
      }

      v7 = [word_timing_info2 countByEnumeratingWithState:&v18 objects:v31 count:16];
    }

    while (v7);
  }

  if (v22.__end_ == v22.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::WordTimingInfo>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::WordTimingInfo>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::WordTimingInfo>> const&)::t;
  }

  else
  {
    begin = v22.__begin_;
  }

  v11 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, begin, v22.__end_ - v22.__begin_);
  *(buffer + 70) = 1;
  v12 = *(buffer + 8);
  v13 = *(buffer + 12);
  v14 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, *(v25 + 12));
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v11);
  v15.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v12 - v13 + v14);
  if (v22.__begin_)
  {
    v22.__end_ = v22.__begin_;
    operator delete(v22.__begin_);
  }

  _Block_object_dispose(&v24, 8);
  return v15;
}

uint64_t __47__FTTextToSpeechCacheObject_addObjectToBuffer___block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  result = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<unsigned char>(*(a1 + 40), a2, a3);
  *(*(*(a1 + 32) + 8) + 48) = result;
  return result;
}

- (id)flatbuffData
{
  v3 = 0;
  v4 = 0;
  v5 = xmmword_233005E30;
  v6 = 0u;
  v7 = 0u;
  v8 = 0;
  v9 = 1;
  v10 = 256;
  v11 = 0;
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTTextToSpeechCacheObject *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__41__FTTextToSpeechCacheObject_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x238398150);
  }

  return result;
}

@end