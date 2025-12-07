@interface OPTTSTextToSpeechRequestContext
- (NSArray)context_info;
- (NSString)dialog_identifier;
- (OPTTSTextToSpeechRequestContext)initWithFlatbuffData:(id)data root:(const TextToSpeechRequestContext *)root verify:(BOOL)verify;
- (Offset<siri::speech::schema_fb::TextToSpeechRequestContext>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
@end

@implementation OPTTSTextToSpeechRequestContext

- (id)flatbuffData
{
  v5 = 0;
  v6 = 0;
  v7 = xmmword_2728326A0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 1;
  v12 = 256;
  v13 = 0;
  v2 = [(OPTTSTextToSpeechRequestContext *)self addObjectToBuffer:?];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__47__OPTTSTextToSpeechRequestContext_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x2743CD2F0);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechRequestContext>)addObjectToBuffer:(void *)buffer
{
  v30 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = 0;
  v29 = 0;
  context_info = [(OPTTSTextToSpeechRequestContext *)self context_info];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::reserve(&v27, [context_info count]);

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  context_info2 = [(OPTTSTextToSpeechRequestContext *)self context_info];
  v7 = [context_info2 countByEnumeratingWithState:? objects:? count:?];
  if (v7)
  {
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(context_info2);
        }

        v22 = [*(*(&v23 + 1) + 8 * i) addObjectToBuffer:?];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::push_back[abi:ne200100](&v27, &v22);
      }

      v7 = [context_info2 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v7);
  }

  v10 = v27;
  if (v28 == v27)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>> const&)::t;
  }

  else
  {
    v11 = v27;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>(buffer, v11, (v28 - v27) >> 2);
  dialog_identifier = [(OPTTSTextToSpeechRequestContext *)self dialog_identifier];
  v14 = dialog_identifier;
  if (!dialog_identifier)
  {
    dialog_identifier = &stru_2881CBD18;
  }

  uTF8String = [(__CFString *)dialog_identifier UTF8String];
  v16 = strlen(uTF8String);
  LODWORD(uTF8String) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v16);

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v17 = *(buffer + 8);
  v18 = *(buffer + 12);
  v19 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 4, v12);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 6, uTF8String);
  v20.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v17 - v18 + v19);
  if (v10)
  {
    operator delete(v10);
  }

  return v20;
}

- (NSString)dialog_identifier
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:? length:? encoding:?];

  return v2;
}

- (NSArray)context_info
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:?];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 5u)
    {
      v6 = *v5[4].var0;
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
            v11 = [OPTTSTextToSpeechRequest_ContextInfoEntry initWithFlatbuffData:"initWithFlatbuffData:root:verify:" root:? verify:?];
            [array addObject:?];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }

  return array;
}

- (OPTTSTextToSpeechRequestContext)initWithFlatbuffData:(id)data root:(const TextToSpeechRequestContext *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = OPTTSTextToSpeechRequestContext;
  v10 = [(OPTTSTextToSpeechRequestContext *)&v29 init];
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
      if (root < bytes2 || root > v14 + bytes2)
      {
        goto LABEL_16;
      }

      bytes3 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v24 = bytes3;
      v25 = v18;
      v26 = xmmword_2728326B0;
      v27 = 0;
      LOBYTE(v28) = 1;
      if (v18 >= 0x7FFFFFFF)
      {
        __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
      }

      v19 = v10->_root;
      if (v19)
      {
        if (!siri::speech::schema_fb::TextToSpeechRequestContext::Verify(v19, &v24))
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