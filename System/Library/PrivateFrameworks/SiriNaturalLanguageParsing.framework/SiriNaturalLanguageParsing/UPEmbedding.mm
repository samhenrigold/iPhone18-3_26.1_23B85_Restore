@interface UPEmbedding
- (UPEmbedding)initWithCoordinates:(id)coordinates;
- (UPEmbedding)initWithProtobufEmbeddings:(id)embeddings forTokenAt:(int)at error:(id *)p_isa;
- (id)getCoordinates;
- (unint64_t)getDimension;
- (void)dealloc;
@end

@implementation UPEmbedding

- (void)dealloc
{
  embedding = self->_embedding;
  if (embedding)
  {
    v4 = *embedding;
    if (*embedding)
    {
      embedding[1] = v4;
      operator delete(v4);
    }

    MEMORY[0x223DC4D00](embedding, 0x80C40D6874129);
  }

  v5.receiver = self;
  v5.super_class = UPEmbedding;
  [(UPEmbedding *)&v5 dealloc];
}

- (unint64_t)getDimension
{
  embedding = self->_embedding;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v6, *embedding, *(embedding + 1), (*(embedding + 1) - *embedding) >> 3);
  v3 = v6;
  v4 = v7;
  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  return (v4 - v3) >> 3;
}

- (id)getCoordinates
{
  embedding = self->_embedding;
  v10 = 0;
  v11 = 0;
  __p = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, *embedding, *(embedding + 1), (*(embedding + 1) - *embedding) >> 3);
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:(v10 - __p) >> 3];
  v4 = __p;
  v5 = v10;
  if (__p != v10)
  {
    do
    {
      v6 = [MEMORY[0x277CCABB0] numberWithDouble:*v4];
      [v3 addObject:v6];

      ++v4;
    }

    while (v4 != v5);
  }

  v7 = [MEMORY[0x277CBEA60] arrayWithArray:v3];

  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  return v7;
}

- (UPEmbedding)initWithProtobufEmbeddings:(id)embeddings forTokenAt:(int)at error:(id *)p_isa
{
  v6 = *&at;
  v21[1] = *MEMORY[0x277D85DE8];
  embeddingsCopy = embeddings;
  if ([embeddingsCopy hasEmbeddingDim])
  {
    if ([embeddingsCopy hasNumToken] && objc_msgSend(embeddingsCopy, "numToken") > v6 || (objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"tokenIndex %u is out-of-bounds for an embedding tensor with %llu tokens", v6, objc_msgSend(embeddingsCopy, "numToken")), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      embeddingDim = [embeddingsCopy embeddingDim];
      if (embeddingDim * (v6 + 1) <= [embeddingsCopy valuesCount] || (objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Protobuf message contains only %lu values but UPEmbedding for tokenIndex %u is being created (embeddingDim=%llu)", objc_msgSend(embeddingsCopy, "valuesCount"), v6, objc_msgSend(embeddingsCopy, "embeddingDim")), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        valuesCount = [embeddingsCopy valuesCount];
        if (!(valuesCount % [embeddingsCopy embeddingDim]) || (objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Protobuf message contains %lu embedding values which is not a multiple of %llu embedding dimensions", objc_msgSend(embeddingsCopy, "valuesCount"), objc_msgSend(embeddingsCopy, "embeddingDim")), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(embeddingsCopy, "embeddingDim")}];
          v13 = 0;
          v14 = v6;
          while ([embeddingsCopy embeddingDim] > v13)
          {
            v15 = MEMORY[0x277CCABB0];
            [embeddingsCopy valuesAtIndex:{v13 + objc_msgSend(embeddingsCopy, "embeddingDim") * v14}];
            v16 = [v15 numberWithFloat:?];
            [v12 setObject:v16 atIndexedSubscript:v13];

            ++v13;
          }

          self = [(UPEmbedding *)self initWithCoordinates:v12];

          v9 = 0;
          p_isa = &self->super.isa;
          goto LABEL_15;
        }
      }
    }
  }

  else
  {
    v9 = @"embeddingDim field missing from protobuf message";
  }

  if (p_isa)
  {
    v17 = objc_alloc(MEMORY[0x277CCA9B8]);
    v20 = *MEMORY[0x277CCA450];
    v21[0] = v9;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    *p_isa = [v17 initWithDomain:@"com.apple.uaapcustomluframework" code:10 userInfo:v18];

    p_isa = 0;
  }

LABEL_15:

  return p_isa;
}

- (UPEmbedding)initWithCoordinates:(id)coordinates
{
  v29 = *MEMORY[0x277D85DE8];
  coordinatesCopy = coordinates;
  v27.receiver = self;
  v27.super_class = UPEmbedding;
  if ([(UPEmbedding *)&v27 init])
  {
    __src = 0;
    v25 = 0;
    v26 = 0;
    std::vector<double>::reserve(&__src, [coordinatesCopy count]);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = coordinatesCopy;
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v6)
    {
      v7 = *v21;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v20 + 1) + 8 * i) doubleValue];
          v10 = v25;
          if (v25 >= v26)
          {
            v12 = __src;
            v13 = v25 - __src;
            v14 = (v25 - __src) >> 3;
            v15 = v14 + 1;
            if ((v14 + 1) >> 61)
            {
              std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
            }

            v16 = v26 - __src;
            if ((v26 - __src) >> 2 > v15)
            {
              v15 = v16 >> 2;
            }

            if (v16 >= 0x7FFFFFFFFFFFFFF8)
            {
              v17 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v17 = v15;
            }

            if (v17)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v17);
            }

            *(8 * v14) = v9;
            v11 = 8 * v14 + 8;
            memcpy(0, v12, v13);
            v18 = __src;
            __src = 0;
            v25 = v11;
            v26 = 0;
            if (v18)
            {
              operator delete(v18);
            }
          }

          else
          {
            *v25 = v9;
            v11 = (v10 + 8);
          }

          v25 = v11;
        }

        v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v6);
    }

    operator new();
  }

  return 0;
}

@end