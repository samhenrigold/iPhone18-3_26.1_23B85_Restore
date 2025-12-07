@interface OPTTSStartTextToSpeechStreamingRequest
- (BOOL)enable_word_timing_info;
- (NSArray)context_info;
- (NSString)gender;
- (NSString)language;
- (NSString)session_id;
- (NSString)speech_id;
- (NSString)stream_id;
- (NSString)text;
- (NSString)voice_name;
- (OPTTSStartTextToSpeechStreamingRequest)initWithFlatbuffData:(id)data root:(const StartTextToSpeechStreamingRequest *)root verify:(BOOL)verify;
- (OPTTSTTSRequestFeatureFlags)feature_flags;
- (OPTTSTextToSpeechRequestContext)context;
- (OPTTSTextToSpeechRequestExperiment)experiment;
- (OPTTSTextToSpeechRequestMeta)meta_info;
- (Offset<siri::speech::schema_fb::StartTextToSpeechStreamingRequest>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int64_t)audio_type;
- (int64_t)preferred_voice_type;
@end

@implementation OPTTSStartTextToSpeechStreamingRequest

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
  v2 = [(OPTTSStartTextToSpeechStreamingRequest *)self addObjectToBuffer:?];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__54__OPTTSStartTextToSpeechStreamingRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x2743CD2F0);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::StartTextToSpeechStreamingRequest>)addObjectToBuffer:(void *)buffer
{
  speech_id = [(OPTTSStartTextToSpeechStreamingRequest *)self speech_id];
  v5 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_2881CBD18;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v7 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v7);

  session_id = [(OPTTSStartTextToSpeechStreamingRequest *)self session_id];
  v9 = session_id;
  if (!session_id)
  {
    session_id = &stru_2881CBD18;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v11 = strlen(uTF8String2);
  v56 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v11);

  stream_id = [(OPTTSStartTextToSpeechStreamingRequest *)self stream_id];
  v13 = stream_id;
  if (!stream_id)
  {
    stream_id = &stru_2881CBD18;
  }

  uTF8String3 = [(__CFString *)stream_id UTF8String];
  v15 = strlen(uTF8String3);
  v55 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v15);

  language = [(OPTTSStartTextToSpeechStreamingRequest *)self language];
  v17 = language;
  if (!language)
  {
    language = &stru_2881CBD18;
  }

  uTF8String4 = [(__CFString *)language UTF8String];
  v19 = strlen(uTF8String4);
  v53 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String4, v19);

  gender = [(OPTTSStartTextToSpeechStreamingRequest *)self gender];
  v21 = gender;
  if (!gender)
  {
    gender = &stru_2881CBD18;
  }

  uTF8String5 = [(__CFString *)gender UTF8String];
  v23 = strlen(uTF8String5);
  v52 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String5, v23);

  text = [(OPTTSStartTextToSpeechStreamingRequest *)self text];
  v25 = text;
  if (!text)
  {
    text = &stru_2881CBD18;
  }

  uTF8String6 = [(__CFString *)text UTF8String];
  v27 = strlen(uTF8String6);
  v51 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String6, v27);

  audio_type = [(OPTTSStartTextToSpeechStreamingRequest *)self audio_type];
  HIDWORD(v49) = [(OPTTSStartTextToSpeechStreamingRequest *)self enable_word_timing_info];
  voice_name = [(OPTTSStartTextToSpeechStreamingRequest *)self voice_name];
  v29 = voice_name;
  if (!voice_name)
  {
    voice_name = &stru_2881CBD18;
  }

  uTF8String7 = [(__CFString *)voice_name UTF8String];
  v31 = strlen(uTF8String7);
  LODWORD(v49) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String7, v31);

  context_info = [(OPTTSStartTextToSpeechStreamingRequest *)self context_info];
  v33 = [context_info count];
  if (v33)
  {
    if (!(v33 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>>(v33);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::__throw_length_error[abi:ne200100]();
  }

  context_info2 = [(OPTTSStartTextToSpeechStreamingRequest *)self context_info];
  if ([context_info2 countByEnumeratingWithState:? objects:? count:?])
  {
    [MEMORY[0] addObjectToBuffer:v49];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v35 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  preferred_voice_type = [(OPTTSStartTextToSpeechStreamingRequest *)self preferred_voice_type];
  meta_info = [(OPTTSStartTextToSpeechStreamingRequest *)self meta_info];
  v38 = [meta_info addObjectToBuffer:?];

  context = [(OPTTSStartTextToSpeechStreamingRequest *)self context];
  v40 = [context addObjectToBuffer:?];

  experiment = [(OPTTSStartTextToSpeechStreamingRequest *)self experiment];
  v42 = [experiment addObjectToBuffer:?];

  feature_flags = [(OPTTSStartTextToSpeechStreamingRequest *)self feature_flags];
  v54 = [feature_flags addObjectToBuffer:?];

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v44 = *(buffer + 8);
  v45 = *(buffer + 12);
  v46 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 6, v56);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 8, v55);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 10, v53);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 12, v52);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 14, v51);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 16, audio_type);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 18, SHIDWORD(v49));
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 20, v49);
  if (v35)
  {
    v47 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v35);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 22, v47);
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 24, preferred_voice_type);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 26, v38);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 28, v40);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 30, v42);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 32, v54);
  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v44 - v45 + v46);
}

- (OPTTSTTSRequestFeatureFlags)feature_flags
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:?];
  if (!v3)
  {
    v3 = [OPTTSTTSRequestFeatureFlags initWithFlatbuffData:"initWithFlatbuffData:root:verify:" root:? verify:?];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }

  return v3;
}

- (OPTTSTextToSpeechRequestExperiment)experiment
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:?];
  if (!v3)
  {
    v3 = [OPTTSTextToSpeechRequestExperiment initWithFlatbuffData:"initWithFlatbuffData:root:verify:" root:? verify:?];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }

  return v3;
}

- (OPTTSTextToSpeechRequestContext)context
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:?];
  if (!v3)
  {
    v3 = [OPTTSTextToSpeechRequestContext initWithFlatbuffData:"initWithFlatbuffData:root:verify:" root:? verify:?];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }

  return v3;
}

- (OPTTSTextToSpeechRequestMeta)meta_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:?];
  if (!v3)
  {
    v3 = [OPTTSTextToSpeechRequestMeta initWithFlatbuffData:"initWithFlatbuffData:root:verify:" root:? verify:?];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }

  return v3;
}

- (int64_t)preferred_voice_type
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x19u && (v4 = *v3[24].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSArray)context_info
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:?];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0x17u)
    {
      v6 = *v5[22].var0;
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
            v11 = [OPTTSStartTextToSpeechStreamingRequest_ContextInfoEntry initWithFlatbuffData:"initWithFlatbuffData:root:verify:" root:? verify:?];
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

flatbuffers::DetachedBuffer *__71__OPTTSStartTextToSpeechStreamingRequest_ContextInfoEntry_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x2743CD2F0);
  }

  return result;
}

- (NSString)voice_name
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:? length:? encoding:?];

  return v2;
}

- (BOOL)enable_word_timing_info
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x13u && (v4 = *v3[18].var0) != 0 && root[v4].var0[0] != 0;
}

- (int64_t)audio_type
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x11u && (v4 = *v3[16].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSString)text
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:? length:? encoding:?];

  return v2;
}

- (NSString)gender
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:? length:? encoding:?];

  return v2;
}

- (NSString)language
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:? length:? encoding:?];

  return v2;
}

- (NSString)stream_id
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:? length:? encoding:?];

  return v2;
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

- (OPTTSStartTextToSpeechStreamingRequest)initWithFlatbuffData:(id)data root:(const StartTextToSpeechStreamingRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = OPTTSStartTextToSpeechStreamingRequest;
  v10 = [(OPTTSStartTextToSpeechStreamingRequest *)&v29 init];
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
        if (!siri::speech::schema_fb::StartTextToSpeechStreamingRequest::Verify(v19, &v24))
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