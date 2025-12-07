@interface OPTTSPartialTextToSpeechStreamingResponse
- (NSArray)word_timing_info;
- (NSString)error_str;
- (NSString)session_id;
- (NSString)speech_id;
- (NSString)stream_id;
- (OPTTSPartialTextToSpeechStreamingResponse)initWithFlatbuffData:(id)data root:(const PartialTextToSpeechStreamingResponse *)root verify:(BOOL)verify;
- (Offset<siri::speech::schema_fb::PartialTextToSpeechStreamingResponse>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int)current_pkt_number;
- (int)error_code;
- (void)audio:(id)audio;
@end

@implementation OPTTSPartialTextToSpeechStreamingResponse

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
  v2 = [(OPTTSPartialTextToSpeechStreamingResponse *)self addObjectToBuffer:?];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__57__OPTTSPartialTextToSpeechStreamingResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x2743CD2F0);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::PartialTextToSpeechStreamingResponse>)addObjectToBuffer:(void *)buffer
{
  v61 = *MEMORY[0x277D85DE8];
  speech_id = [(OPTTSPartialTextToSpeechStreamingResponse *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_2881CBD18;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  session_id = [(OPTTSPartialTextToSpeechStreamingResponse *)self session_id];
  v10 = session_id;
  if (!session_id)
  {
    session_id = &stru_2881CBD18;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v12 = strlen(uTF8String2);
  v38 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v12);

  error_code = [(OPTTSPartialTextToSpeechStreamingResponse *)self error_code];
  error_str = [(OPTTSPartialTextToSpeechStreamingResponse *)self error_str];
  v15 = error_str;
  if (!error_str)
  {
    error_str = &stru_2881CBD18;
  }

  uTF8String3 = [(__CFString *)error_str UTF8String];
  v17 = strlen(uTF8String3);
  v18 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v17);

  stream_id = [(OPTTSPartialTextToSpeechStreamingResponse *)self stream_id];
  v20 = stream_id;
  if (!stream_id)
  {
    stream_id = &stru_2881CBD18;
  }

  uTF8String4 = [(__CFString *)stream_id UTF8String];
  v22 = strlen(uTF8String4);
  v23 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String4, v22);

  current_pkt_number = [(OPTTSPartialTextToSpeechStreamingResponse *)self current_pkt_number];
  v54 = 0;
  v55 = &v54;
  v56 = 0x3812000000;
  v57 = __Block_byref_object_copy__1271;
  v58 = __Block_byref_object_dispose__1272;
  v59 = &unk_27283C3F7;
  v60 = 0;
  v48 = MEMORY[0x277D85DD0];
  v49 = 3221225472;
  v50 = __63__OPTTSPartialTextToSpeechStreamingResponse_addObjectToBuffer___block_invoke;
  v51 = &unk_279E4B750;
  v52 = &v54;
  bufferCopy = buffer;
  [(OPTTSPartialTextToSpeechStreamingResponse *)self audio:?];
  v45 = 0;
  v46 = 0;
  v47 = 0;
  word_timing_info = [(OPTTSPartialTextToSpeechStreamingResponse *)self word_timing_info];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::reserve(&v45, [word_timing_info count]);

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  word_timing_info2 = [(OPTTSPartialTextToSpeechStreamingResponse *)self word_timing_info];
  v27 = [word_timing_info2 countByEnumeratingWithState:? objects:? count:?];
  if (v27)
  {
    v28 = *v42;
    do
    {
      for (i = 0; i != v27; i = (i + 1))
      {
        if (*v42 != v28)
        {
          objc_enumerationMutation(word_timing_info2);
        }

        v40 = [*(*(&v41 + 1) + 8 * i) addObjectToBuffer:?];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::push_back[abi:ne200100](&v45, &v40);
      }

      v27 = [word_timing_info2 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v27);
  }

  v30 = v45;
  if (v46 == v45)
  {
    v31 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::WordTimingInfo>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::WordTimingInfo>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::WordTimingInfo>> const&)::t;
  }

  else
  {
    v31 = v45;
  }

  v32 = flatbuffers::FlatBufferBuilder::CreateVector<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>(buffer, v31, (v46 - v45) >> 2);
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v33 = *(buffer + 8);
  v34 = *(buffer + 12);
  v35 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 6, v38);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, error_code);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 10, v18);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 12, v23);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 14, current_pkt_number);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, *(v55 + 12));
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 18, v32);
  v36.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v33 - v34 + v35);
  if (v30)
  {
    operator delete(v30);
  }

  _Block_object_dispose(&v54, 8);
  return v36;
}

uint64_t __63__OPTTSPartialTextToSpeechStreamingResponse_addObjectToBuffer___block_invoke(uint64_t a1, const void *a2, unsigned int a3)
{
  result = flatbuffers::FlatBufferBuilder::CreateVector<unsigned char>(*(a1 + 40), a2, a3);
  *(*(*(a1 + 32) + 8) + 48) = result;
  return result;
}

- (NSArray)word_timing_info
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:?];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0x13u)
    {
      v6 = *v5[18].var0;
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
            v11 = [OPTTSWordTimingInfo initWithFlatbuffData:"initWithFlatbuffData:root:verify:" root:? verify:?];
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

- (void)audio:(id)audio
{
  audioCopy = audio;
  (*(audio + 2))();
}

- (int)current_pkt_number
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0xFu && (v4 = *v3[14].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSString)stream_id
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:? length:? encoding:?];

  return v2;
}

- (NSString)error_str
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:? length:? encoding:?];

  return v2;
}

- (int)error_code
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 9u && (v4 = *v3[8].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSString)session_id
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:? length:? encoding:?];

  return v2;
}

- (NSString)speech_id
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:? length:? encoding:?];

  return v2;
}

- (OPTTSPartialTextToSpeechStreamingResponse)initWithFlatbuffData:(id)data root:(const PartialTextToSpeechStreamingResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = OPTTSPartialTextToSpeechStreamingResponse;
  v10 = [(OPTTSPartialTextToSpeechStreamingResponse *)&v29 init];
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
        if (!siri::speech::schema_fb::PartialTextToSpeechStreamingResponse::Verify(v19, &v24))
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