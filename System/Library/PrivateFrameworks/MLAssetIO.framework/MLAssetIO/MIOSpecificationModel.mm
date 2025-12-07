@interface MIOSpecificationModel
- (BOOL)isEqual:(id)equal;
- (BOOL)writeToURL:(id)l error:(id *)error;
- (MIOSpecificationModel)initWithMessageStream:(CodedInputStream *)stream parserContext:(id)context error:(id *)error;
- (MIOSpecificationModel)initWithSpecificationData:(id)data parserContext:(id)context error:(id *)error;
- (id).cxx_construct;
- (id)computePrecisionForFunctionNamed:(id)named;
- (id)copyWithZone:(_NSZone *)zone;
- (id)neuralNetworkLayerHistogramForFunctionNamed:(id)named;
- (id)programOperationHistogramForFunctionNamed:(id)named;
- (id)storagePrecisionForFunctionNamed:(id)named;
- (unint64_t)_indexForFunctionNamed:(id)named;
- (unint64_t)hash;
@end

@implementation MIOSpecificationModel

- (MIOSpecificationModel)initWithSpecificationData:(id)data parserContext:(id)context error:(id *)error
{
  dataCopy = data;
  contextCopy = context;
  objc_storeStrong(&self->_specificationData, data);
  objc_storeStrong(&self->_parserContext, context);
  bytes = [dataCopy bytes];
  v12 = [dataCopy length];
  v15[0] = bytes;
  v15[1] = bytes + v12;
  v15[2] = 0;
  v16 = v12;
  v17 = 0;
  v18 = 0;
  v19 = v12;
  v20 = -NAN;
  v21 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v22 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v23 = 0;
  v24 = 0;
  v13 = [(MIOSpecificationModel *)self initWithMessageStream:v15 parserContext:contextCopy error:error];
  google::protobuf::io::CodedInputStream::~CodedInputStream(v15);

  return v13;
}

- (MIOSpecificationModel)initWithMessageStream:(CodedInputStream *)stream parserContext:(id)context error:(id *)error
{
  v40[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v39.receiver = self;
  v39.super_class = MIOSpecificationModel;
  v7 = [(MIOSpecificationModel *)&v39 init];
  if (!v7)
  {
LABEL_20:
    v25 = v7;
    goto LABEL_26;
  }

  v30 = 0;
  v34 = 0;
  v35 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  *obj = 0u;
  memset(v37, 0, sizeof(v37));
  v38 = 0;
  MIOParseModelSpecification(stream, contextCopy, &v30);
  v8 = [MIOModelDescription alloc];
  v9 = v31;
  v10 = v33;
  v11 = *&v37[0];
  v12 = [MEMORY[0x1E695E0F0] mutableCopy];
  v13 = *(&v37[0] + 1);
  for (i = *&v37[1]; v13 != i; v13 += 5)
  {
    if (*v13)
    {
      [v12 addObject:?];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [v12 addObject:null];
    }
  }

  if (v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  v17 = [(MIOModelDescription *)v8 initWithSpecification:v9 isUpdatable:v10 != 0 modelParameters:v16 classLabelsPerFunction:v12 error:error];

  if (v17)
  {
    v18 = [MIOVersionInfo alloc];
    v19 = [(MIOVersionInfo *)v18 initWithMajor:v30 minor:0 patch:0];
    v20 = *(v7 + 5);
    *(v7 + 5) = v19;

    if (v34)
    {
      v21 = v34;
    }

    else
    {
      v21 = @"UNKNOWN";
    }

    objc_storeStrong(v7 + 6, v21);
    objc_storeStrong(v7 + 9, obj[0]);
    objc_storeStrong(v7 + 8, obj[1]);
    objc_storeStrong(v7 + 7, v17);
    std::vector<MIOFunctionInfo>::__vdeallocate(v7 + 2);
    *(v7 + 1) = *(v37 + 8);
    *(v7 + 4) = *(&v37[1] + 1);
    memset(v37 + 8, 0, 24);
    v22 = v38;
    v38 = 0;
    v23 = *(v7 + 1);
    *(v7 + 1) = v22;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v24 = v38;
    v38 = 0;
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    v40[0] = v37 + 1;
    std::vector<MIOFunctionInfo>::__destroy_vector::operator()[abi:ne200100](v40);

    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    goto LABEL_20;
  }

  v26 = v38;
  v38 = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v40[0] = v37 + 1;
  std::vector<MIOFunctionInfo>::__destroy_vector::operator()[abi:ne200100](v40);

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v25 = 0;
LABEL_26:

  return v25;
}

- (unint64_t)_indexForFunctionNamed:(id)named
{
  namedCopy = named;
  v5 = namedCopy;
  if (namedCopy || (-[MIOSpecificationModel modelDescription](self, "modelDescription"), v6 = objc_claimAutoreleasedReturnValue(), [v6 defaultFunctionName], v5 = objc_claimAutoreleasedReturnValue(), v6, v5))
  {
    modelDescription = [(MIOSpecificationModel *)self modelDescription];
    functionDescriptions = [modelDescription functionDescriptions];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__MIOSpecificationModel__indexForFunctionNamed___block_invoke;
    v12[3] = &unk_1E814D950;
    v9 = v5;
    v13 = v9;
    v10 = [functionDescriptions indexOfObjectPassingTest:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __48__MIOSpecificationModel__indexForFunctionNamed___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)programOperationHistogramForFunctionNamed:(id)named
{
  v4 = [(MIOSpecificationModel *)self _indexForFunctionNamed:named];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(self->_functions.__begin_ + 5 * v4 + 2);
  }

  return v5;
}

- (id)neuralNetworkLayerHistogramForFunctionNamed:(id)named
{
  v4 = [(MIOSpecificationModel *)self _indexForFunctionNamed:named];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(self->_functions.__begin_ + 5 * v4 + 1);
  }

  return v5;
}

- (id)computePrecisionForFunctionNamed:(id)named
{
  v4 = [(MIOSpecificationModel *)self _indexForFunctionNamed:named];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(self->_functions.__begin_ + 5 * v4 + 3);
  }

  return v5;
}

- (id)storagePrecisionForFunctionNamed:(id)named
{
  v4 = [(MIOSpecificationModel *)self _indexForFunctionNamed:named];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(self->_functions.__begin_ + 5 * v4 + 4);
  }

  return v5;
}

- (BOOL)writeToURL:(id)l error:(id *)error
{
  v44[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  specificationData = [(MIOSpecificationModel *)self specificationData];

  if (specificationData)
  {
    v8 = open([lCopy fileSystemRepresentation], 1537, 420);
    google::protobuf::io::FileOutputStream::FileOutputStream(v38, v8);
    google::protobuf::io::CodedOutputStream::CodedOutputStream(v41, v38, 1);
    specificationData2 = [(MIOSpecificationModel *)self specificationData];
    v10 = specificationData2;
    bytes = [specificationData2 bytes];
    specificationData3 = [(MIOSpecificationModel *)self specificationData];
    v13 = [specificationData3 length];
    v37.var0 = bytes;
    v37.var1 = &bytes[v13];
    v37.var2 = 0;
    v37.var3 = v13;
    *&v37.var4 = 0;
    *&v37.var6 = 0;
    *&v37.var9 = -NAN;
    v37.var8 = v13;
    v37.var11 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
    v37.var12 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
    v37.var13 = 0;
    v37.var14 = 0;

    MLAssetIO::ProtoWireFormatParser::ProtoWireFormatParser(v36, &v37);
    while (1)
    {
      Field = MLAssetIO::ProtoWireFormatParser::nextField(v36);
      v15 = Field == 0;
      if (!Field)
      {
        break;
      }

      v16 = MLAssetIO::ProtoWireFormatParser::tag(v36);
      v17 = v42;
      if (v41[0] <= v42)
      {
        v17 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(v41, v42);
      }

      v42 = v17;
      *v17 = v16;
      if (v16 > 0x7F)
      {
        *v17 = v16 | 0x80;
        v19 = v16 >> 7;
        v17[1] = v16 >> 7;
        v18 = v17 + 2;
        if (v16 >= 0x4000)
        {
          LOBYTE(v20) = v17[1];
          do
          {
            *(v18 - 1) = v20 | 0x80;
            v20 = v19 >> 7;
            *v18++ = v19 >> 7;
            v21 = v19 >> 14;
            v19 >>= 7;
          }

          while (v21);
        }
      }

      else
      {
        v18 = v17 + 1;
      }

      v42 = v18;
      if (Field == 2)
      {
        CoreML::Specification::ModelDescription::ModelDescription(v35, [(MIOModelDescription *)self->_modelDescription modelDescriptionSpecification]);
        v22 = CoreML::Specification::ModelDescription::ByteSizeLong(v35);
        v23 = v42;
        if (v41[0] <= v42)
        {
          v23 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(v41, v42);
        }

        v42 = v23;
        *v23 = v22;
        if (v22 > 0x7F)
        {
          *v23 = v22 | 0x80;
          v25 = v22 >> 7;
          v23[1] = v22 >> 7;
          v24 = v23 + 2;
          if (v22 >= 0x4000)
          {
            LOBYTE(v26) = v23[1];
            do
            {
              *(v24 - 1) = v26 | 0x80;
              v26 = v25 >> 7;
              *v24++ = v25 >> 7;
              v27 = v25 >> 14;
              v25 >>= 7;
            }

            while (v27);
          }
        }

        else
        {
          v24 = v23 + 1;
        }

        v42 = v24;
        if ((google::protobuf::MessageLite::SerializeToCodedStream(v35, v41) & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [MIOSpecificationModel writeToURL:error:];
          }

          if (error)
          {
            v31 = MEMORY[0x1E696ABC0];
            v39 = *MEMORY[0x1E696A578];
            v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to serialize ModelDescription message"];
            v40 = v32;
            v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
            *error = [v31 errorWithDomain:@"com.apple.mlassetio" code:2 userInfo:v33];
          }

          CoreML::Specification::ModelDescription::~ModelDescription(v35);
          break;
        }

        CoreML::Specification::ModelDescription::~ModelDescription(v35);
      }

      else
      {
        MLAssetIO::ProtoWireFormatParser::copyFieldTo(v36, v41);
      }
    }

    google::protobuf::io::CodedInputStream::~CodedInputStream(&v37);
    google::protobuf::io::CodedOutputStream::~CodedOutputStream(v41);
    google::protobuf::io::FileOutputStream::~FileOutputStream(v38);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [MIOSpecificationModel writeToURL:error:];
    }

    if (error)
    {
      v28 = MEMORY[0x1E696ABC0];
      v43 = *MEMORY[0x1E696A578];
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Model instance must be initialized with an existing model file to write the content back to a file."];
      v44[0] = v29;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
      *error = [v28 errorWithDomain:@"com.apple.mlassetio" code:2 userInfo:v30];
    }

    v15 = 0;
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v21 = 1;
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = 0;
    goto LABEL_12;
  }

  v5 = equalCopy;
  specificationVersion = [(MIOSpecificationModel *)self specificationVersion];
  specificationVersion2 = [(MIOSpecificationModel *)v5 specificationVersion];
  v8 = [specificationVersion isEqual:specificationVersion2];

  if ((v8 & 1) == 0)
  {
    goto LABEL_8;
  }

  modelTypeName = [(MIOSpecificationModel *)self modelTypeName];
  modelTypeName2 = [(MIOSpecificationModel *)v5 modelTypeName];
  v11 = [modelTypeName isEqual:modelTypeName2];

  if ((v11 & 1) == 0)
  {
    goto LABEL_8;
  }

  modelDescription = [(MIOSpecificationModel *)self modelDescription];
  modelDescription2 = [(MIOSpecificationModel *)v5 modelDescription];
  v14 = [modelDescription isEqual:modelDescription2];

  if ((v14 & 1) == 0)
  {
    goto LABEL_8;
  }

  layers = [(MIOSpecificationModel *)self layers];
  layers2 = [(MIOSpecificationModel *)v5 layers];
  v17 = layers2;
  if (layers == layers2)
  {

    goto LABEL_14;
  }

  layers3 = [(MIOSpecificationModel *)self layers];
  layers4 = [(MIOSpecificationModel *)v5 layers];
  v20 = [layers3 isEqual:layers4];

  if (v20)
  {
LABEL_14:
    subModels = [(MIOSpecificationModel *)self subModels];
    subModels2 = [(MIOSpecificationModel *)v5 subModels];
    if (subModels == subModels2)
    {
      v21 = 1;
    }

    else
    {
      subModels3 = [(MIOSpecificationModel *)self subModels];
      subModels4 = [(MIOSpecificationModel *)v5 subModels];
      v21 = [subModels3 isEqual:subModels4];
    }

    goto LABEL_9;
  }

LABEL_8:
  v21 = 0;
LABEL_9:

LABEL_12:
  return v21 & 1;
}

- (unint64_t)hash
{
  modelTypeName = [(MIOSpecificationModel *)self modelTypeName];
  v4 = [modelTypeName hash];
  modelDescription = [(MIOSpecificationModel *)self modelDescription];
  v6 = [modelDescription hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MIOSpecificationModel alloc];
  specificationData = [(MIOSpecificationModel *)self specificationData];
  parserContext = [(MIOSpecificationModel *)self parserContext];
  v14 = 0;
  v7 = [(MIOSpecificationModel *)v4 initWithSpecificationData:specificationData parserContext:parserContext error:&v14];
  v8 = v14;

  if (v8)
  {
    v9 = +[MIOLogging coreChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(MIOSpecificationModel *)self copyWithZone:v8, v9];
    }

    v10 = 0;
  }

  else
  {
    modelDescription = [(MIOSpecificationModel *)self modelDescription];
    v12 = [modelDescription copy];
    [(MIOSpecificationModel *)v7 setModelDescription:v12];

    v10 = v7;
  }

  return v10;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (void)initWithMessageStream:(uint64_t)a1 parserContext:error:.cold.1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = (*(*a1 + 16))(a1);
  v2 = 136315138;
  v3 = v1;
  _os_log_error_impl(&dword_1C1BCE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to parse the model specification. Error: %s", &v2, 0xCu);
}

- (void)copyWithZone:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1C1BCE000, log, OS_LOG_TYPE_ERROR, "Failed to clone %@. Error: %@", &v3, 0x16u);
}

@end