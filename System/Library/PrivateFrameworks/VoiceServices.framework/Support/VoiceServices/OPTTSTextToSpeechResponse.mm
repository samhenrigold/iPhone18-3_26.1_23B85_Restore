@interface OPTTSTextToSpeechResponse
- (NSArray)word_timing_info;
- (NSString)error_str;
- (NSString)session_id;
- (NSString)speech_id;
- (OPTTSAudioDescription)decoder_description;
- (OPTTSAudioDescription)playback_description;
- (OPTTSTextToSpeechMeta)meta_info;
- (OPTTSTextToSpeechResponse)initWithFlatbuffData:(id)data root:(const TextToSpeechResponse *)root verify:(BOOL)verify;
- (Offset<siri::speech::schema_fb::TextToSpeechResponse>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int)error_code;
- (int)sample_rate;
- (int64_t)audio_type;
- (void)audio:(id)audio;
@end

@implementation OPTTSTextToSpeechResponse

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
  v2 = [(OPTTSTextToSpeechResponse *)self addObjectToBuffer:?];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__41__OPTTSTextToSpeechResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x2743CD2F0);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechResponse>)addObjectToBuffer:(void *)buffer
{
  v62 = *MEMORY[0x277D85DE8];
  speech_id = [(OPTTSTextToSpeechResponse *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_2881CBD18;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  session_id = [(OPTTSTextToSpeechResponse *)self session_id];
  v11 = session_id;
  if (!session_id)
  {
    session_id = &stru_2881CBD18;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v13 = strlen(uTF8String2);
  v14 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  error_code = [(OPTTSTextToSpeechResponse *)self error_code];
  error_str = [(OPTTSTextToSpeechResponse *)self error_str];
  v17 = error_str;
  if (!error_str)
  {
    error_str = &stru_2881CBD18;
  }

  uTF8String3 = [(__CFString *)error_str UTF8String];
  v19 = strlen(uTF8String3);
  v40 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v19);

  audio_type = [(OPTTSTextToSpeechResponse *)self audio_type];
  sample_rate = [(OPTTSTextToSpeechResponse *)self sample_rate];
  v55 = 0;
  v56 = &v55;
  v57 = 0x3812000000;
  v58 = __Block_byref_object_copy__1271;
  v59 = __Block_byref_object_dispose__1272;
  v60 = &unk_27283C3F7;
  v61 = 0;
  v49 = MEMORY[0x277D85DD0];
  v50 = 3221225472;
  v51 = __47__OPTTSTextToSpeechResponse_addObjectToBuffer___block_invoke;
  v52 = &unk_279E4B750;
  v53 = &v55;
  bufferCopy = buffer;
  [(OPTTSTextToSpeechResponse *)self audio:?];
  decoder_description = [(OPTTSTextToSpeechResponse *)self decoder_description];
  v38 = [decoder_description addObjectToBuffer:?];

  playback_description = [(OPTTSTextToSpeechResponse *)self playback_description];
  v37 = [playback_description addObjectToBuffer:?];

  v46 = 0;
  v47 = 0;
  v48 = 0;
  word_timing_info = [(OPTTSTextToSpeechResponse *)self word_timing_info];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::reserve(&v46, [word_timing_info count]);

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  word_timing_info2 = [(OPTTSTextToSpeechResponse *)self word_timing_info];
  v25 = [word_timing_info2 countByEnumeratingWithState:? objects:? count:?];
  if (v25)
  {
    v26 = *v43;
    do
    {
      for (i = 0; i != v25; i = (i + 1))
      {
        if (*v43 != v26)
        {
          objc_enumerationMutation(word_timing_info2);
        }

        v41 = [*(*(&v42 + 1) + 8 * i) addObjectToBuffer:?];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::push_back[abi:ne200100](&v46, &v41);
      }

      v25 = [word_timing_info2 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v25);
  }

  v28 = v46;
  if (v47 == v46)
  {
    v29 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::WordTimingInfo>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::WordTimingInfo>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::WordTimingInfo>> const&)::t;
  }

  else
  {
    v29 = v46;
  }

  v30 = flatbuffers::FlatBufferBuilder::CreateVector<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>(buffer, v29, (v47 - v46) >> 2);
  meta_info = [(OPTTSTextToSpeechResponse *)self meta_info];
  v36 = [meta_info addObjectToBuffer:?];

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v32 = *(buffer + 8);
  v33 = *(buffer + 12);
  LODWORD(meta_info) = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 6, v14);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, error_code);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 10, v40);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 12, audio_type);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 14, sample_rate);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, *(v56 + 12));
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 18, v38);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 20, v37);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 22, v30);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 24, v36);
  v34.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v32 - v33 + meta_info);
  if (v28)
  {
    operator delete(v28);
  }

  _Block_object_dispose(&v55, 8);
  return v34;
}

uint64_t __47__OPTTSTextToSpeechResponse_addObjectToBuffer___block_invoke(uint64_t a1, const void *a2, unsigned int a3)
{
  result = flatbuffers::FlatBufferBuilder::CreateVector<unsigned char>(*(a1 + 40), a2, a3);
  *(*(*(a1 + 32) + 8) + 48) = result;
  return result;
}

- (OPTTSTextToSpeechMeta)meta_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:?];
  if (!v3)
  {
    v3 = [OPTTSTextToSpeechMeta initWithFlatbuffData:"initWithFlatbuffData:root:verify:" root:? verify:?];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }

  return v3;
}

- (NSArray)word_timing_info
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

- (OPTTSAudioDescription)playback_description
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:?];
  if (!v3)
  {
    v3 = [OPTTSAudioDescription initWithFlatbuffData:"initWithFlatbuffData:root:verify:" root:? verify:?];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }

  return v3;
}

- (OPTTSAudioDescription)decoder_description
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:?];
  if (!v3)
  {
    v3 = [OPTTSAudioDescription initWithFlatbuffData:"initWithFlatbuffData:root:verify:" root:? verify:?];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }

  return v3;
}

- (void)audio:(id)audio
{
  audioCopy = audio;
  (*(audio + 2))();
}

- (int)sample_rate
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

- (int64_t)audio_type
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0xDu && (v4 = *v3[12].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
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

- (OPTTSTextToSpeechResponse)initWithFlatbuffData:(id)data root:(const TextToSpeechResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v53.receiver = self;
  v53.super_class = OPTTSTextToSpeechResponse;
  v10 = [(OPTTSTextToSpeechResponse *)&v53 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_78;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_79;
  }

  objc_storeStrong(&v10->_data, data);
  if (!root)
  {
    bytes = [(NSData *)v10->_data bytes];
    root = bytes + *bytes;
  }

  v10->_root = root;
  if (!verifyCopy)
  {
    goto LABEL_77;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v14 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > v14 + bytes2)
  {
    goto LABEL_79;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v18 = [(NSData *)v10->_data length];
  v48 = bytes3;
  v49 = v18;
  v50 = xmmword_2728326B0;
  v51 = 0;
  v52 = 1;
  if (v18 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v19 = v10->_root;
  if (!v19)
  {
    goto LABEL_77;
  }

  if (!flatbuffers::Verifier::VerifyTableStart(&v48, v11->_root->var0) || !flatbuffers::Table::VerifyOffset(v19, &v48, 4u))
  {
    goto LABEL_79;
  }

  v20 = (v19 - *v19);
  if (*v20 >= 5u && (v21 = v20[2]) != 0)
  {
    v22 = v19 + v21 + *(v19 + v21);
  }

  else
  {
    v22 = 0;
  }

  if (!flatbuffers::Verifier::VerifyString(&v48, v22) || !flatbuffers::Table::VerifyOffset(v19, &v48, 6u))
  {
    goto LABEL_79;
  }

  v23 = (v19 - *v19);
  if (*v23 >= 7u && (v24 = v23[3]) != 0)
  {
    v25 = v19 + v24 + *(v19 + v24);
  }

  else
  {
    v25 = 0;
  }

  if (!flatbuffers::Verifier::VerifyString(&v48, v25))
  {
    goto LABEL_79;
  }

  v26 = (v19 - *v19);
  v27 = *v26;
  if (v27 >= 9 && v26[4] && (v49 < 5 || v49 - 4 < (v19 + v26[4]) - v48))
  {
    goto LABEL_79;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v48, 0xAu))
  {
    goto LABEL_79;
  }

  v28 = v27 >= 0xB && v26[5] ? v19 + v26[5] + *(v19 + v26[5]) : 0;
  if (!flatbuffers::Verifier::VerifyString(&v48, v28))
  {
    goto LABEL_79;
  }

  v29 = (v19 - *v19);
  v30 = *v29;
  if (v30 >= 0xD && (v29[6] && (v49 < 5 || v49 - 4 < (v19 + v29[6]) - v48) || v30 >= 0xF && v29[7] && (v49 < 5 || v49 - 4 < (v19 + v29[7]) - v48)))
  {
    goto LABEL_79;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v48, 0x10u))
  {
    goto LABEL_79;
  }

  if (v30 >= 0x11 && v29[8])
  {
    v31 = v19 + v29[8] + *(v19 + v29[8]);
    v32 = v31 - v48;
    if ((v31 - v48) & 3) != 0 && (v52)
    {
      goto LABEL_79;
    }

    if (v49 < 5)
    {
      goto LABEL_79;
    }

    if (v49 - 4 < v32)
    {
      goto LABEL_79;
    }

    v33 = *v31;
    if (v33 > 0x7FFFFFFE)
    {
      goto LABEL_79;
    }

    v34 = v33 + 4;
    v35 = v49 >= v34;
    v36 = v49 - v34;
    if (v36 == 0 || !v35 || v36 < v32)
    {
      goto LABEL_79;
    }
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v48, 0x12u) || v30 >= 0x13 && v29[9] && !siri::speech::schema_fb::AudioDescription::Verify((v19 + v29[9] + *(v19 + v29[9])), &v48))
  {
    goto LABEL_79;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v48, 0x14u))
  {
    goto LABEL_79;
  }

  v37 = (v19 - *v19);
  if (*v37 >= 0x15u)
  {
    v38 = v37[10];
    if (v38)
    {
      if (!siri::speech::schema_fb::AudioDescription::Verify((v19 + v38 + *(v19 + v38)), &v48))
      {
        goto LABEL_79;
      }
    }
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v48, 0x16u))
  {
    goto LABEL_79;
  }

  v39 = *v19;
  if (*(v19 - v39) < 0x17u)
  {
LABEL_71:
    v41 = 0;
    goto LABEL_72;
  }

  if (!*(v19 - v39 + 22))
  {
    goto LABEL_68;
  }

  if (!flatbuffers::Verifier::VerifyVectorOrString(&v48, v19 + *(v19 - v39 + 22) + *(v19 + *(v19 - v39 + 22)), 4uLL, 0))
  {
LABEL_79:
    v46 = 0;
    goto LABEL_80;
  }

  v39 = *v19;
  if (*(v19 - v39) < 0x17u)
  {
    goto LABEL_71;
  }

LABEL_68:
  v40 = *(v19 - v39 + 22);
  if (!v40)
  {
    goto LABEL_71;
  }

  v41 = (v19 + v40 + *(v19 + v40));
LABEL_72:
  if (!flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::WordTimingInfo>(&v48, v41))
  {
    goto LABEL_79;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v48, 0x18u))
  {
    goto LABEL_79;
  }

  v42 = (v19 - *v19);
  if (*v42 >= 0x19u)
  {
    v43 = v42[12];
    if (v43)
    {
      if (!siri::speech::schema_fb::TextToSpeechMeta::Verify((v19 + v43 + *(v19 + v43)), &v48))
      {
        goto LABEL_79;
      }
    }
  }

LABEL_77:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = dictionary;

LABEL_78:
  v46 = v11;
LABEL_80:

  return v46;
}

@end