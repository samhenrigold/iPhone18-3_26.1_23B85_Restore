@interface FTBatchTranslationRequest_Paragraph
- (FTBatchTranslationRequest_Paragraph)initWithFlatbuffData:(id)data root:(const Paragraph *)root verify:(BOOL)verify;
- (NSArray)span;
- (NSString)paragraph_id;
- (NSString)text;
- (Offset<siri::speech::schema_fb::BatchTranslationRequest_::Paragraph>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (id)span_objectAtIndex:(unint64_t)index;
- (unint64_t)span_count;
- (void)span_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTBatchTranslationRequest_Paragraph

- (FTBatchTranslationRequest_Paragraph)initWithFlatbuffData:(id)data root:(const Paragraph *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTBatchTranslationRequest_Paragraph;
  v10 = [(FTBatchTranslationRequest_Paragraph *)&v25 init];
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
  if (verifyCopy && ((v12 = [(NSData *)v10->_data bytes], v13 = [(NSData *)v10->_data length], root = v10->_root, root >= v12) ? (v15 = root > v12 + v13) : (v15 = 1), v15 || (v16 = [(NSData *)v10->_data bytes], v17 = [(NSData *)v10->_data length], v21[0] = v16, v21[1] = v17, v22 = xmmword_233005E20, v23 = 0, v24 = 1, (v18 = v10->_root) != 0) && !siri::speech::schema_fb::BatchTranslationRequest_::Paragraph::Verify(v18, v21)))
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

- (NSString)paragraph_id
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 4].var0;
  if (*root[-v3 + 4].var0)
  {
    v3 = *root[v4].var0;
    v5 = &root[v4 + v3];
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = v3;
  }

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

  return v6;
}

- (NSString)text
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 6].var0;
  if (*root[-v3 + 6].var0)
  {
    v3 = *root[v4].var0;
    v5 = &root[v4 + v3];
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = v3;
  }

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

  return v6;
}

- (NSArray)span
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"span"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__FTBatchTranslationRequest_Paragraph_span__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTBatchTranslationRequest_Paragraph *)self span_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"span"];
  }

  return v3;
}

- (id)span_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"span"];
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
  if (*v10->var0 >= 9u)
  {
    v11 = *v10[8].var0;
    if (v11)
    {
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v7 = [[FTSpan alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)span_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"span"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 9u && (v8 = *v7[8].var0) != 0)
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

- (void)span_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"span"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 9u)
    {
      v9 = *v8[8].var0;
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
            v15 = [[FTSpan alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (Offset<siri::speech::schema_fb::BatchTranslationRequest_::Paragraph>)addObjectToBuffer:(void *)buffer
{
  v34 = *MEMORY[0x277D85DE8];
  paragraph_id = [(FTBatchTranslationRequest_Paragraph *)self paragraph_id];
  v6 = paragraph_id;
  if (!paragraph_id)
  {
    paragraph_id = &stru_284834138;
  }

  uTF8String = [(__CFString *)paragraph_id UTF8String];
  v8 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  text = [(FTBatchTranslationRequest_Paragraph *)self text];
  v11 = text;
  if (!text)
  {
    text = &stru_284834138;
  }

  uTF8String2 = [(__CFString *)text UTF8String];
  v13 = strlen(uTF8String2);
  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  memset(&v32, 0, sizeof(v32));
  span = [(FTBatchTranslationRequest_Paragraph *)self span];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v32, [span count]);

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  span2 = [(FTBatchTranslationRequest_Paragraph *)self span];
  v17 = [span2 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v17)
  {
    v18 = *v29;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(span2);
        }

        v27 = [*(*(&v28 + 1) + 8 * i) addObjectToBuffer:buffer];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v32.__begin_, &v27);
      }

      v17 = [span2 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v17);
  }

  if (v32.__end_ == v32.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::Span>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::Span>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::Span>> const&)::t;
  }

  else
  {
    begin = v32.__begin_;
  }

  v21 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, begin, v32.__end_ - v32.__begin_);
  *(buffer + 70) = 1;
  v22 = *(buffer + 8);
  v23 = *(buffer + 12);
  v24 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v14);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, v21);
  v25.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v22 - v23 + v24);
  if (v32.__begin_)
  {
    v32.__end_ = v32.__begin_;
    operator delete(v32.__begin_);
  }

  return v25;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTBatchTranslationRequest_Paragraph *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

@end