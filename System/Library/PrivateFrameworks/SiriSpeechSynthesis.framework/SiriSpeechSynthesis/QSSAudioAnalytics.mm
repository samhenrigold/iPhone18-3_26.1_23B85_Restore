@interface QSSAudioAnalytics
- (NSArray)acoustic_features;
- (NSArray)speech_recognition_features;
- (Offset<siri::speech::schema_fb::AudioAnalytics>)addObjectToBuffer:(void *)buffer;
- (QSSAudioAnalytics)initWithFlatbuffData:(id)data root:(const AudioAnalytics *)root verify:(BOOL)verify;
- (id)flatbuffData;
@end

@implementation QSSAudioAnalytics

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
  v2.var0 = [(QSSAudioAnalytics *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__33__QSSAudioAnalytics_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::AudioAnalytics>)addObjectToBuffer:(void *)buffer
{
  v25 = *MEMORY[0x277D85DE8];
  speech_recognition_features = [(QSSAudioAnalytics *)self speech_recognition_features];
  v5 = [speech_recognition_features count];
  if (v5)
  {
    if (!(v5 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v5);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  memset(v22, 0, sizeof(v22));
  obj = [(QSSAudioAnalytics *)self speech_recognition_features];
  if ([obj countByEnumeratingWithState:v22 objects:v24 count:16])
  {
    [**(&v22[0] + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  obja = buffer;
  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v6 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  acoustic_features = [(QSSAudioAnalytics *)self acoustic_features];
  v8 = [acoustic_features count];
  if (v8)
  {
    if (!(v8 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v8);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  memset(v21, 0, sizeof(v21));
  acoustic_features2 = [(QSSAudioAnalytics *)self acoustic_features];
  v16 = v6;
  if ([acoustic_features2 countByEnumeratingWithState:v21 objects:v23 count:16])
  {
    [**(&v21[0] + 1) addObjectToBuffer:obja];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(obja, 0, 4uLL);
  v9 = flatbuffers::FlatBufferBuilder::EndVector(obja, 0);
  flatbuffers::FlatBufferBuilder::NotNested(obja);
  *(obja + 70) = 1;
  v10 = *(obja + 8);
  v11 = *(obja + 12);
  v12 = *(obja + 10);
  if (v16)
  {
    v13 = flatbuffers::FlatBufferBuilder::ReferTo(obja, v16);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(obja, 4, v13);
  }

  if (v9)
  {
    v14 = flatbuffers::FlatBufferBuilder::ReferTo(obja, v9);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(obja, 6, v14);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(obja, v10 - v11 + v12);
}

- (NSArray)acoustic_features
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"acoustic_features"];
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
            v11 = [[QSSAudioAnalytics_AcousticFeaturesEntry alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"acoustic_features"];
  }

  return array;
}

flatbuffers::DetachedBuffer *__55__QSSAudioAnalytics_AcousticFeaturesEntry_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (NSArray)speech_recognition_features
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"speech_recognition_features"];
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
            v11 = [[QSSAudioAnalytics_SpeechRecognitionFeaturesEntry alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"speech_recognition_features"];
  }

  return array;
}

flatbuffers::DetachedBuffer *__64__QSSAudioAnalytics_SpeechRecognitionFeaturesEntry_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (QSSAudioAnalytics)initWithFlatbuffData:(id)data root:(const AudioAnalytics *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSAudioAnalytics;
  v10 = [(QSSAudioAnalytics *)&v29 init];
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
        if (!siri::speech::schema_fb::AudioAnalytics::Verify(v19, &v24))
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