@interface FTFinishAudio
- (FTFinishAudio)initWithFlatbuffData:(id)data root:(const FinishAudio *)root verify:(BOOL)verify;
- (NSArray)features_at_endpoint;
- (NSArray)server_feature_latency_distribution;
- (Offset<siri::speech::schema_fb::FinishAudio>)addObjectToBuffer:(void *)buffer;
- (float)total_audio_recorded_seconds;
- (id)features_at_endpoint_objectAtIndex:(unint64_t)index;
- (id)flatbuffData;
- (id)server_feature_latency_distribution_objectAtIndex:(unint64_t)index;
- (int)packet_count;
- (unint64_t)features_at_endpoint_count;
- (unint64_t)server_feature_latency_distribution_count;
- (void)features_at_endpoint_enumerateObjectsUsingBlock:(id)block;
- (void)server_feature_latency_distribution_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTFinishAudio

- (FTFinishAudio)initWithFlatbuffData:(id)data root:(const FinishAudio *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTFinishAudio;
  v10 = [(FTFinishAudio *)&v25 init];
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
  if (verifyCopy && ((v12 = [(NSData *)v10->_data bytes], v13 = [(NSData *)v10->_data length], root = v10->_root, root >= v12) ? (v15 = root > v12 + v13) : (v15 = 1), v15 || (v16 = [(NSData *)v10->_data bytes], v17 = [(NSData *)v10->_data length], v21[0] = v16, v21[1] = v17, v22 = xmmword_233005E20, v23 = 0, v24 = 1, (v18 = v10->_root) != 0) && !siri::speech::schema_fb::FinishAudio::Verify(v18, v21)))
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

- (int)packet_count
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 5u && (v4 = *v3[4].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (float)total_audio_recorded_seconds
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 7u)
  {
    v5 = *v3[6].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (NSArray)features_at_endpoint
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"features_at_endpoint"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__FTFinishAudio_features_at_endpoint__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTFinishAudio *)self features_at_endpoint_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"features_at_endpoint"];
  }

  return v3;
}

- (id)features_at_endpoint_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"features_at_endpoint"];
  v7 = v5;
  if (v5)
  {
    v8 = [v5 objectAtIndexedSubscript:index];
LABEL_3:
    v9 = v8;
    goto LABEL_8;
  }

  root = self->_root;
  v11 = &root[-*root->var0];
  if (*v11->var0 >= 9u)
  {
    v12 = *v11[8].var0;
    if (v12)
    {
      LODWORD(v6) = *root[4 * index + 4 + v12 + *root[v12].var0].var0;
      v8 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (unint64_t)features_at_endpoint_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"features_at_endpoint"];
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

- (void)features_at_endpoint_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"features_at_endpoint"];
  v7 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v9 = &root[-*root->var0];
    if (*v9->var0 >= 9u)
    {
      v10 = *v9[8].var0;
      if (v10)
      {
        v19 = 0;
        v11 = *root[v10].var0;
        v12 = *root[v10 + v11].var0;
        if (v12)
        {
          v13 = 0;
          v14 = &root[v10 + 4 + v11];
          v15 = 4 * v12 - 4;
          do
          {
            LODWORD(v6) = *(v14 + 4 * v13);
            v16 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
            blockCopy[2](blockCopy, v16, v13, &v19);
            v17 = v19;

            if (v17)
            {
              break;
            }

            ++v13;
            v18 = v15;
            v15 -= 4;
          }

          while (v18);
        }
      }
    }
  }
}

- (NSArray)server_feature_latency_distribution
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"server_feature_latency_distribution"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __52__FTFinishAudio_server_feature_latency_distribution__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTFinishAudio *)self server_feature_latency_distribution_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"server_feature_latency_distribution"];
  }

  return v3;
}

- (id)server_feature_latency_distribution_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"server_feature_latency_distribution"];
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
  if (*v10->var0 >= 0xBu)
  {
    v11 = *v10[10].var0;
    if (v11)
    {
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v7 = [[FTFinishAudio_ServerFeatureLatencyDistributionEntry alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)server_feature_latency_distribution_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"server_feature_latency_distribution"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 0xBu && (v8 = *v7[10].var0) != 0)
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

- (void)server_feature_latency_distribution_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"server_feature_latency_distribution"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 0xBu)
    {
      v9 = *v8[10].var0;
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
            v15 = [[FTFinishAudio_ServerFeatureLatencyDistributionEntry alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (Offset<siri::speech::schema_fb::FinishAudio>)addObjectToBuffer:(void *)buffer
{
  v52 = *MEMORY[0x277D85DE8];
  packet_count = [(FTFinishAudio *)self packet_count];
  [(FTFinishAudio *)self total_audio_recorded_seconds];
  v7 = v6;
  memset(&v49, 0, sizeof(v49));
  features_at_endpoint = [(FTFinishAudio *)self features_at_endpoint];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v49, [features_at_endpoint count]);

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  features_at_endpoint2 = [(FTFinishAudio *)self features_at_endpoint];
  v10 = [features_at_endpoint2 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v10)
  {
    v11 = *v46;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(features_at_endpoint2);
        }

        [*(*(&v45 + 1) + 8 * i) floatValue];
        LODWORD(v44.__begin_) = v13;
        std::vector<float>::push_back[abi:ne200100](&v49.__begin_, &v44);
      }

      v10 = [features_at_endpoint2 countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v10);
  }

  if (v49.__end_ == v49.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<float,std::allocator<float>>(std::vector<float> const&)::t;
  }

  else
  {
    begin = v49.__begin_;
  }

  v15 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<int>(buffer, begin, v49.__end_ - v49.__begin_);
  memset(&v44, 0, sizeof(v44));
  server_feature_latency_distribution = [(FTFinishAudio *)self server_feature_latency_distribution];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v44, [server_feature_latency_distribution count]);

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  server_feature_latency_distribution2 = [(FTFinishAudio *)self server_feature_latency_distribution];
  v38 = v15;
  v39 = packet_count;
  v18 = [server_feature_latency_distribution2 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v18)
  {
    v19 = *v41;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v41 != v19)
        {
          objc_enumerationMutation(server_feature_latency_distribution2);
        }

        v21 = [*(*(&v40 + 1) + 8 * j) addObjectToBuffer:buffer];
        end = v44.__end_;
        if (v44.__end_ >= v44.__end_cap_.__value_)
        {
          v24 = v44.__begin_;
          v25 = v44.__end_ - v44.__begin_;
          v26 = v44.__end_ - v44.__begin_;
          v27 = v26 + 1;
          if ((v26 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v28 = v44.__end_cap_.__value_ - v44.__begin_;
          if ((v44.__end_cap_.__value_ - v44.__begin_) >> 1 > v27)
          {
            v27 = v28 >> 1;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v29 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v27;
          }

          if (v29)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v44, v29);
          }

          *(4 * v26) = v21;
          v23 = (4 * v26 + 4);
          memcpy(0, v24, v25);
          v30 = v44.__begin_;
          v44.__begin_ = 0;
          v44.__end_ = v23;
          v44.__end_cap_.__value_ = 0;
          if (v30)
          {
            operator delete(v30);
          }
        }

        else
        {
          *v44.__end_ = v21;
          v23 = end + 1;
        }

        v44.__end_ = v23;
      }

      v18 = [server_feature_latency_distribution2 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v18);
  }

  if (v44.__end_ == v44.__begin_)
  {
    v31 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::FinishAudio_::ServerFeatureLatencyDistributionEntry>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::FinishAudio_::ServerFeatureLatencyDistributionEntry>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::FinishAudio_::ServerFeatureLatencyDistributionEntry>> const&)::t;
  }

  else
  {
    v31 = v44.__begin_;
  }

  v32 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v31, v44.__end_ - v44.__begin_);
  *(buffer + 70) = 1;
  v33 = *(buffer + 8);
  v34 = *(buffer + 12);
  v35 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 4, v39, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(buffer, 6, v7, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, v38);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 10, v32);
  v36.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v33 - v34 + v35);
  if (v44.__begin_)
  {
    v44.__end_ = v44.__begin_;
    operator delete(v44.__begin_);
  }

  if (v49.__begin_)
  {
    v49.__end_ = v49.__begin_;
    operator delete(v49.__begin_);
  }

  return v36;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTFinishAudio *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__29__FTFinishAudio_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x238398150);
  }

  return result;
}

apple::aiml::flatbuffers2::DetachedBuffer *__67__FTFinishAudio_ServerFeatureLatencyDistributionEntry_flatbuffData__block_invoke(uint64_t a1)
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