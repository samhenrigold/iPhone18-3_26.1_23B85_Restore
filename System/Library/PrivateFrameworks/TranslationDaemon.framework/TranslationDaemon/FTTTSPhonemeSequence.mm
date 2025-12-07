@interface FTTTSPhonemeSequence
- (FTTTSPhonemeSequence)initWithFlatbuffData:(id)data root:(const TTSPhonemeSequence *)root verify:(BOOL)verify;
- (NSArray)word_phonemes;
- (Offset<siri::speech::schema_fb::TTSPhonemeSequence>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (id)word_phonemes_objectAtIndex:(unint64_t)index;
- (unint64_t)word_phonemes_count;
- (void)word_phonemes_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTTTSPhonemeSequence

- (FTTTSPhonemeSequence)initWithFlatbuffData:(id)data root:(const TTSPhonemeSequence *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTTTSPhonemeSequence;
  v10 = [(FTTTSPhonemeSequence *)&v25 init];
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
  if (verifyCopy && ((v12 = [(NSData *)v10->_data bytes], v13 = [(NSData *)v10->_data length], root = v10->_root, root >= v12) ? (v15 = root > v12 + v13) : (v15 = 1), v15 || (v16 = [(NSData *)v10->_data bytes], v17 = [(NSData *)v10->_data length], v21[0] = v16, v21[1] = v17, v22 = xmmword_233005E20, v23 = 0, v24 = 1, (v18 = v10->_root) != 0) && !siri::speech::schema_fb::TTSPhonemeSequence::Verify(v18, v21)))
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

- (NSArray)word_phonemes
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"word_phonemes"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__FTTTSPhonemeSequence_word_phonemes__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTTTSPhonemeSequence *)self word_phonemes_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"word_phonemes"];
  }

  return v3;
}

- (id)word_phonemes_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"word_phonemes"];
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
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v7 = [[FTTTSWordPhonemes alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)word_phonemes_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"word_phonemes"];
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

- (void)word_phonemes_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"word_phonemes"];
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
          v13 = &root[v10 + 4 + v9];
          v14 = 4 * v11 - 4;
          do
          {
            v15 = [[FTTTSWordPhonemes alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (Offset<siri::speech::schema_fb::TTSPhonemeSequence>)addObjectToBuffer:(void *)buffer
{
  v33 = *MEMORY[0x277D85DE8];
  memset(&v31, 0, sizeof(v31));
  word_phonemes = [(FTTTSPhonemeSequence *)self word_phonemes];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v31, [word_phonemes count]);

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  word_phonemes2 = [(FTTTSPhonemeSequence *)self word_phonemes];
  v7 = [word_phonemes2 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(word_phonemes2);
        }

        v10 = [*(*(&v27 + 1) + 8 * i) addObjectToBuffer:buffer];
        end = v31.__end_;
        if (v31.__end_ >= v31.__end_cap_.__value_)
        {
          begin = v31.__begin_;
          v14 = v31.__end_ - v31.__begin_;
          v15 = v31.__end_ - v31.__begin_;
          v16 = v15 + 1;
          if ((v15 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v17 = v31.__end_cap_.__value_ - v31.__begin_;
          if ((v31.__end_cap_.__value_ - v31.__begin_) >> 1 > v16)
          {
            v16 = v17 >> 1;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v18 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v16;
          }

          if (v18)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v31, v18);
          }

          *(4 * v15) = v10;
          v12 = (4 * v15 + 4);
          memcpy(0, begin, v14);
          v19 = v31.__begin_;
          v31.__begin_ = 0;
          v31.__end_ = v12;
          v31.__end_cap_.__value_ = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *v31.__end_ = v10;
          v12 = end + 1;
        }

        v31.__end_ = v12;
      }

      v7 = [word_phonemes2 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  if (v31.__end_ == v31.__begin_)
  {
    v20 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TTSWordPhonemes>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TTSWordPhonemes>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TTSWordPhonemes>> const&)::t;
  }

  else
  {
    v20 = v31.__begin_;
  }

  v21 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v20, v31.__end_ - v31.__begin_);
  *(buffer + 70) = 1;
  v22 = *(buffer + 5);
  v23 = *(buffer + 6);
  v24 = *(buffer + 4);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, v21);
  v25.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v24 - v23 + v22);
  if (v31.__begin_)
  {
    v31.__end_ = v31.__begin_;
    operator delete(v31.__begin_);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTTTSPhonemeSequence *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__36__FTTTSPhonemeSequence_flatbuffData__block_invoke(uint64_t a1)
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