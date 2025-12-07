@interface FTAlignment
- (FTAlignment)initWithFlatbuffData:(id)data root:(const Alignment *)root verify:(BOOL)verify;
- (NSArray)index;
- (Offset<siri::speech::schema_fb::Alignment>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (id)index_objectAtIndex:(unint64_t)index;
- (unint64_t)index_count;
- (void)index_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTAlignment

- (FTAlignment)initWithFlatbuffData:(id)data root:(const Alignment *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTAlignment;
  v10 = [(FTAlignment *)&v25 init];
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
  if (verifyCopy && ((v12 = [(NSData *)v10->_data bytes], v13 = [(NSData *)v10->_data length], root = v10->_root, root >= v12) ? (v15 = root > v12 + v13) : (v15 = 1), v15 || (v16 = [(NSData *)v10->_data bytes], v17 = [(NSData *)v10->_data length], v21[0] = v16, v21[1] = v17, v22 = xmmword_233005E20, v23 = 0, v24 = 1, (v18 = v10->_root) != 0) && !siri::speech::schema_fb::Alignment::Verify(v18, v21)))
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

- (NSArray)index
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"index"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __20__FTAlignment_index__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTAlignment *)self index_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"index"];
  }

  return v3;
}

- (id)index_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"index"];
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
  if (*v10->var0 >= 5u)
  {
    v11 = *v10[4].var0;
    if (v11)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithInt:*root[4 * index + 4 + v11 + *root[v11].var0].var0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)index_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"index"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 5u && (v8 = *v7[4].var0) != 0)
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

- (void)index_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"index"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 5u)
    {
      v9 = *v8[4].var0;
      if (v9)
      {
        v18 = 0;
        v10 = *root[v9].var0;
        v11 = *root[v9 + v10].var0;
        if (v11)
        {
          v12 = 0;
          v13 = &root[v9 + 4 + v10];
          v14 = 4 * v11 - 4;
          do
          {
            v15 = [MEMORY[0x277CCABB0] numberWithInt:*(v13 + 4 * v12)];
            blockCopy[2](blockCopy, v15, v12, &v18);
            v16 = v18;

            if (v16)
            {
              break;
            }

            ++v12;
            v17 = v14;
            v14 -= 4;
          }

          while (v17);
        }
      }
    }
  }
}

- (Offset<siri::speech::schema_fb::Alignment>)addObjectToBuffer:(void *)buffer
{
  v24 = *MEMORY[0x277D85DE8];
  memset(&v22, 0, sizeof(v22));
  index = [(FTAlignment *)self index];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v22, [index count]);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  index2 = [(FTAlignment *)self index];
  v7 = [index2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v7)
  {
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(index2);
        }

        intValue = [*(*(&v18 + 1) + 8 * i) intValue];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v22.__begin_, &intValue);
      }

      v7 = [index2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v7);
  }

  if (v22.__end_ == v22.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<int,std::allocator<int>>(std::vector<int> const&)::t;
  }

  else
  {
    begin = v22.__begin_;
  }

  v11 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<int>(buffer, begin, v22.__end_ - v22.__begin_);
  *(buffer + 70) = 1;
  v12 = *(buffer + 5);
  v13 = *(buffer + 6);
  v14 = *(buffer + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, v11);
  v15.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v14 - v13 + v12);
  if (v22.__begin_)
  {
    v22.__end_ = v22.__begin_;
    operator delete(v22.__begin_);
  }

  return v15;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTAlignment *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__27__FTAlignment_flatbuffData__block_invoke(uint64_t a1)
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