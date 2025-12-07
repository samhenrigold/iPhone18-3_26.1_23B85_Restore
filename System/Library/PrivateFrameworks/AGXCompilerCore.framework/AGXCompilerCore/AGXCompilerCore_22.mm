uint64_t AGCMeshFunction::createLLVMObject(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if ((*(a1 + 64) & 0x80) != 0)
  {
    return (*(*v3 + 128))();
  }

  else
  {
    return (*(*v3 + 120))();
  }
}

uint64_t std::__function::__func<AGCModule<AGX::Impl::MeshProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1},std::allocator<AGCModule<AGX::Impl::MeshProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1}>,void ()(AGCDeserializedReply const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825BE698;
  a2[1] = v2;
  return result;
}

AGX::Impl::MeshProgramKey *AGX::Impl::MeshProgramKey::MeshProgramKey(AGX::Impl::MeshProgramKey *this, const AGX::Impl::MeshProgramKey *a2)
{
  *this = &unk_2825BE658;
  *(this + 2) = *(a2 + 2);
  std::vector<unsigned int>::vector[abi:nn200100](this + 2, a2 + 2);
  *this = &unk_2825BE610;
  v4 = *(a2 + 40);
  *(this + 56) = *(a2 + 56);
  *(this + 40) = v4;
  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v5 = *(a2 + 72);
    *(this + 11) = *(a2 + 11);
    *(this + 72) = v5;
  }

  *(this + 24) = *(a2 + 24);
  std::vector<MTLUINT256_t>::vector[abi:nn200100](this + 13, a2 + 13);
  std::vector<MTLUINT256_t>::vector[abi:nn200100](this + 16, a2 + 16);
  *this = &unk_2825BF8B8;
  if (*(a2 + 175) < 0)
  {
    std::string::__init_copy_ctor_external((this + 152), *(a2 + 19), *(a2 + 20));
  }

  else
  {
    v6 = *(a2 + 152);
    *(this + 21) = *(a2 + 21);
    *(this + 152) = v6;
  }

  if (*(a2 + 199) < 0)
  {
    std::string::__init_copy_ctor_external((this + 176), *(a2 + 22), *(a2 + 23));
  }

  else
  {
    v7 = *(a2 + 11);
    *(this + 24) = *(a2 + 24);
    *(this + 11) = v7;
  }

  *(this + 200) = *(a2 + 200);
  return this;
}

void ProgramKey<(_AGCStreamToken)5,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

uint64_t std::__function::__func<AGCModule<AGX::Impl::TileProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1},std::allocator<AGCModule<AGX::Impl::TileProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1}>,void ()(AGCDeserializedReply const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825BEAE0;
  a2[1] = v2;
  return result;
}

llvm::Module *AGCTileFunction::init(AGCTileFunction *this)
{
  v7 = *MEMORY[0x277D85DE8];
  result = (*(**(this + 28) + 16))(&v5);
  if ((v6 & 1) == 0)
  {
    v3 = "air.kernel";
    v4 = 259;
    result = llvm::Module::getNamedMetadata(v5, &v3);
    if (result)
    {
      *(this + 38) = *(this + 38) & 0xFFFFFCFF | (((3 - __clz(1 << ((*(this + 38) >> 10) & 3) << 24)) & 3) << 8);
    }
  }

  if (v6)
  {
    result = v5;
    v5 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t AGCTileFunction::createLLVMObject(AGCTileFunction *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3, llvm::Module *a4)
{
  v11 = &unk_2825BE458;
  v12 = this + 48;
  v13 = this + 48;
  v14 = 0;
  v9 = "air.kernel";
  v10 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(a4, &v9);
  v6 = *(a2 + 4);
  v7 = *v6;
  if (NamedMetadata)
  {
    return (*(v7 + 56))();
  }

  else
  {
    return (*(v7 + 64))(v6);
  }
}

void ProgramKey<(_AGCStreamToken)6,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

uint64_t std::__function::__func<AGCModule<AGX::Impl::ComputeProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1},std::allocator<AGCModule<AGX::Impl::ComputeProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1}>,void ()(AGCDeserializedReply const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825BEA98;
  a2[1] = v2;
  return result;
}

void ProgramKey<(_AGCStreamToken)4,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

std::string *AGCFragmentFunction::cacheMetadata(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a2 + 16), (a1 + 344));
  result = std::string::operator=((a2 + 40), (a1 + 368));
  *(a2 + 64) = *(a1 + 392);
  return result;
}

std::string *AGCFragmentFunction::extractMetadata(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a1 + 344), (a2 + 16));
  result = std::string::operator=((a1 + 368), (a2 + 40));
  *(a1 + 392) = *(a2 + 64);
  return result;
}

void AGCFragmentFunction::extractMetadata(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v31[2] = *MEMORY[0x277D85DE8];
  v31[0] = 0;
  *(v31 + 7) = 0;
  v30[0] = 0;
  *(v30 + 7) = 0;
  if (*(a2 + 464))
  {
    v4 = *(a2 + 472) == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = 464;
  if (v4)
  {
    v5 = 1024;
  }

  v6 = a2 + 1024;
  if (!v4)
  {
    v6 = a2 + 464;
  }

  v7 = *(a2 + v5);
  if (v7)
  {
    v8 = *(v6 + 8) == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v3 = (v7 + *v7);
  }

  v9 = (v3 - *v3);
  if (*v9 >= 0xFu && (v10 = v9[7]) != 0)
  {
    v11 = (v3 + v10 + *(v3 + v10));
  }

  else
  {
    v11 = 0;
  }

  v12 = (v11 - *v11);
  v13 = *v12;
  if (v13 < 5)
  {
    goto LABEL_24;
  }

  if (v12[2])
  {
    v14 = (v11 + v12[2] + *(v11 + v12[2]));
  }

  else
  {
    v14 = 0;
  }

  if (v13 >= 7 && (v15 = v12[3]) != 0)
  {
    v16 = (v11 + v15 + *(v11 + v15));
    if (!v14)
    {
LABEL_24:
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
LABEL_25:
      v21 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v16 = 0;
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  std::string::basic_string[abi:nn200100](&v27, v14 + 1, *v14);
  v17 = v29;
  v20 = v27;
  v31[0] = *v28;
  *(v31 + 7) = *&v28[7];
  std::string::basic_string[abi:nn200100](&v27, v16 + 1, *v16);
  v19 = v29;
  v24 = *v11;
  v18 = v27;
  v30[0] = *v28;
  *(v30 + 7) = *&v28[7];
  v25 = (v11 - v24);
  if (*v25 < 0x17u)
  {
    goto LABEL_25;
  }

  v26 = v25[11];
  if (!v26)
  {
    goto LABEL_25;
  }

  v21 = *(v11 + v26) != 0;
LABEL_26:
  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

  v22 = v31[0];
  *(a1 + 344) = v20;
  *(a1 + 352) = v22;
  *(a1 + 359) = *(v31 + 7);
  *(a1 + 367) = v17;
  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  v23 = v30[0];
  *(a1 + 368) = v18;
  *(a1 + 376) = v23;
  *(a1 + 383) = *(v30 + 7);
  *(a1 + 391) = v19;
  *(a1 + 392) = v21;
}

uint64_t AGX::Impl::FragmentProgramKey::legalizeStateForTargetOS(AGX::Impl::FragmentProgramKey *this, const AGCTargetOS *a2)
{
  v2 = *(a2 + 1);
  if ((v2 & 0x1000A0011000E00) != 0 && (*a2 & v2) < (v2 & 0x1000A0011000E00))
  {
    v3 = (this + 112);
    for (i = 8; i; --i)
    {
      v5 = *v3;
      v6 = *v3 & 0x1F;
      if (v6 == 22)
      {
        v9[0] = 15;
        v9[1] = v5 >> 5;
        v10 = BYTE1(v5) & 1;
        v11 = 0;
        v12 = 0;
        v13 = (v5 >> 9) & 7;
        v14 = (v5 & 0x2000000) != 0;
        v15 = 0;
        v16 = 0;
        v17 = 1;
        AGCDrawBuffer::setTextureFormat(v3, v9);
      }

      else if (v6 == 23)
      {
        v7 = std::__throw_bad_optional_access[abi:nn200100]();
        return std::__function::__func<AGCModule<AGX::Impl::FragmentProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1},std::allocator<AGCModule<AGX::Impl::FragmentProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1}>,void ()(AGCDeserializedReply const&)>::operator()(v7);
      }

      ++v3;
    }
  }

  return 1;
}

uint64_t std::__function::__func<AGCModule<AGX::Impl::FragmentProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1},std::allocator<AGCModule<AGX::Impl::FragmentProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1}>,void ()(AGCDeserializedReply const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825BE8A0;
  a2[1] = v2;
  return result;
}

unsigned int *AGCDrawBuffer::setTextureFormat(unsigned int *result, uint64_t a2)
{
  if (*(a2 + 20) == 1)
  {
    v2 = *result & 0xFFFFFFE0 | *a2 & 0x1F;
    *result = v2;
    v3 = v2 & 0xFFFFFF1F | (32 * (*(a2 + 4) & 7));
    *result = v3;
    v4 = v3 & 0xFFFFFEFF | ((*(a2 + 8) & 1) << 8);
    *result = v4;
    v5 = v4 & 0xFFFFF1FF | ((*(a2 + 12) & 7) << 9);
    *result = v5;
    v6 = v5 & 0xFDFFFFFF | ((*(a2 + 16) & 1) << 25);
  }

  else
  {
    v6 = *result & 0xFDFFF000 | 0x17;
  }

  *result = v6;
  return result;
}

AGX::Impl::FragmentProgramKey *AGX::Impl::FragmentProgramKey::FragmentProgramKey(AGX::Impl::FragmentProgramKey *this, const AGX::Impl::FragmentProgramKey *a2)
{
  *this = &unk_2825BFA50;
  *(this + 2) = *(a2 + 2);
  std::vector<unsigned int>::vector[abi:nn200100](this + 2, a2 + 2);
  *this = &unk_2825BF948;
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  *(this + 72) = *(a2 + 72);
  *(this + 56) = v5;
  *(this + 40) = v4;
  v6 = *(a2 + 88);
  v7 = *(a2 + 104);
  v8 = *(a2 + 120);
  *(this + 136) = *(a2 + 136);
  *(this + 120) = v8;
  *(this + 104) = v7;
  *(this + 88) = v6;
  if (*(a2 + 175) < 0)
  {
    std::string::__init_copy_ctor_external((this + 152), *(a2 + 19), *(a2 + 20));
  }

  else
  {
    v9 = *(a2 + 152);
    *(this + 21) = *(a2 + 21);
    *(this + 152) = v9;
  }

  if (*(a2 + 199) < 0)
  {
    std::string::__init_copy_ctor_external((this + 176), *(a2 + 22), *(a2 + 23));
  }

  else
  {
    v10 = *(a2 + 11);
    *(this + 24) = *(a2 + 24);
    *(this + 11) = v10;
  }

  if (*(a2 + 223) < 0)
  {
    std::string::__init_copy_ctor_external((this + 200), *(a2 + 25), *(a2 + 26));
  }

  else
  {
    v11 = *(a2 + 200);
    *(this + 27) = *(a2 + 27);
    *(this + 200) = v11;
  }

  *(this + 224) = *(a2 + 224);
  std::vector<MTLUINT256_t>::vector[abi:nn200100](this + 29, a2 + 29);
  std::vector<MTLUINT256_t>::vector[abi:nn200100](this + 32, a2 + 32);
  return this;
}

void ProgramKey<(_AGCStreamToken)3,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

void AGX::GeometrySharedKey<_AGCVertexContextStateAGP,(_AGCStreamToken)3>::serialize(uint64_t a1, std::vector<unsigned int>::pointer *a2, void *a3)
{
  v6 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v11 = *(a1 + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](a1 + 16, &v11);
  v7 = *(a1 + 24) - v6->__begin_;
  std::vector<unsigned int>::resize(v6, (v7 >> 2) + 8);
  v8 = v6->__begin_ + v7;
  *v8 = ((*(a1 + 24) - v6->__begin_) >> 2 << 8) | 0x3C;
  v9 = *(a1 + 40);
  *(v8 + 20) = *(a1 + 56);
  *(v8 + 4) = v9;
  (*(*a1 + 48))(a1);
  v12 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v6, &v12);
  begin = v6->__begin_;
  *a2 = v6->__begin_;
  *a3 = *(a1 + 24) - begin;
}

uint64_t std::__function::__func<AGCModule<AGX::Impl::VertexProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1},std::allocator<AGCModule<AGX::Impl::VertexProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1}>,void ()(AGCDeserializedReply const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825BEA50;
  a2[1] = v2;
  return result;
}

void *AGCVertexFunction::createLLVMObject(AGCVertexFunction *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3, llvm::Module *a4)
{
  if (*(this + 175) < 0)
  {
    if (*(this + 20))
    {
      v5 = *(this + 19);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (*(this + 175))
  {
    v5 = this + 152;
  }

  else
  {
    v5 = 0;
  }

  if (*(this + 199) < 0)
  {
    if (*(this + 23))
    {
      v6 = *(this + 22);
    }

    else
    {
      v6 = 0;
    }
  }

  else if (*(this + 199))
  {
    v6 = this + 176;
  }

  else
  {
    v6 = 0;
  }

  return AGCLLVMAGPVertexShader::createAGPVertexShaderObject(a2, a4, this + 48, v5, v6);
}

uint64_t AIRNTEmitPipelineImages(int a1, uint64_t *a2, const char *a3, int a4, int a5, AGCTarget *this, Air::PipelineScript *a7, int a8, __int128 a9, char *a10)
{
  v11 = this;
  v110[24] = *MEMORY[0x277D85DE8];
  v14 = AGCTarget::CPUSubtypeToTargetArch(this, a2, a3);
  if (!v14)
  {
    std::to_string(&v81, v11);
    v28 = std::string::insert(&v81, 0, "Unknown AGC target for CPU subtype: ");
    v30 = v28->__r_.__value_.__r.__words[2];
    v97 = *&v28->__r_.__value_.__l.__data_;
    v98 = v30;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v31 = SHIBYTE(v98);
    v32 = v97;
    if (SHIBYTE(v98) >= 0)
    {
      v33 = &v97;
    }

    else
    {
      v33 = v97;
    }

    AGCError::logError(a10, v33, v29);
    if (v31 < 0)
    {
      operator delete(v32);
    }

    if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v81.__r_.__value_.__l.__data_);
    }

    return 0;
  }

  v15 = v14;
  TargetContext = AGCNativeTranslator::getTargetContext(v14);
  v18 = *AGCNativeTranslator::getTargetContext(v15);
  if (!v18)
  {
    v34 = "AGX key factory does not exist for target architecture.";
LABEL_45:
    AGCError::logError(a10, v34, v17);
    return 0;
  }

  v19 = (a7 - *a7);
  v20 = *v19;
  if (v20 < 9 || !v19[4])
  {
LABEL_41:
    v45 = Air::PipelineScript::pipeline_as_mesh_render(a7);
    if (v45)
    {
      *&v97 = TargetContext;
      *(&v97 + 1) = a7;
      v98 = v45;
      v99 = a2;
      v100 = a3;
      v101 = a10;
      v102 = a9;
      *&v103[16] = 0u;
      *v104 = 0u;
      *__dst = 0u;
      *v106 = 0u;
      memset(v107, 0, 42);
      *v103 = *TargetContext;
      v46 = (v45 - *v45);
      v47 = *v46 < 5u || v46[2] == 0;
      v103[8] = v47;
      v48 = AGCMeshPipeline::compile(&v97);
      AGCMeshPipeline::~AGCMeshPipeline(&v97);
      return v48;
    }

    v34 = "Unsupported pipeline script.";
    goto LABEL_45;
  }

  v21 = v20 >= 0xB && *(a7 + v19[4]) == 1;
  if (!v21 || !v19[5])
  {
    if (v19[4])
    {
      v35 = v20 >= 0xB && *(a7 + v19[4]) == 2;
      if (v35 && v19[5])
      {
        v36 = (a7 + v19[5] + *(a7 + v19[5]));
        v37 = (v36 - *v36);
        if (*v37 >= 7u && (v38 = v37[3]) != 0)
        {
          v39 = v36 + v38 + *(v36 + v38);
        }

        else
        {
          v39 = 0;
        }

        v63 = 0;
        v64 = 0;
        v65 = 0;
        v61 = 0;
        v62 = 0;
        __p = 0;
        (*(*v18 + 48))(&v81, v18, v39, 0, &v63, &__p);
        if (__p)
        {
          v61 = __p;
          operator delete(__p);
        }

        if (v63)
        {
          v64 = v63;
          operator delete(v63);
        }

        *&v97 = &unk_2825BE4A0;
        *(&v97 + 1) = &unk_2825BE4D0;
        LODWORD(v98) = v81.__r_.__value_.__r.__words[1];
        v101 = 0;
        v99 = 0;
        v100 = 0;
        v50 = v82 - v81.__r_.__value_.__r.__words[2];
        if (v82 == v81.__r_.__value_.__r.__words[2])
        {
          *(&v97 + 1) = &unk_2825BF9D8;
          v102 = v83;
          *v103 = *v84;
          if ((v84[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v103[8], *&v84[8], *&v84[16]);
          }

          else
          {
            *&v103[8] = *&v84[8];
            *&v103[24] = *&v84[24];
          }

          LOBYTE(v104[0]) = v85;
          __dst[1] = 0;
          v104[1] = 0;
          __dst[0] = 0;
          if (v86 != *(&v85 + 1))
          {
            std::vector<MTLUINT256_t>::__vallocate[abi:nn200100](&v104[1], (v86 - *(&v85 + 1)) >> 5);
          }

          v106[1] = 0;
          v106[0] = 0;
          *v107 = 0;
          if (*(&v87 + 1) != v87)
          {
            std::vector<MTLUINT256_t>::__vallocate[abi:nn200100](v106, (*(&v87 + 1) - v87) >> 5);
          }

          MEMORY[0x20F32FFB0](&v107[8]);
          operator new();
        }

        if (!((v50 >> 2) >> 62))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v50 >> 2);
        }

        goto LABEL_110;
      }

      if (v19[4])
      {
        if (v20 >= 0xB && *(a7 + v19[4]) == 3)
        {
          v40 = v19[5];
          if (v40)
          {
            v41 = (a7 + v40 + *(a7 + v40));
            v42 = (v41 - *v41);
            if (*v42 >= 7u && (v43 = v42[3]) != 0)
            {
              v44 = v41 + v43 + *(v41 + v43);
            }

            else
            {
              v44 = 0;
            }

            v57 = 0;
            v58 = 0;
            v59 = 0;
            v55 = 0;
            v56 = 0;
            v54 = 0;
            (*(*v18 + 56))(&v81, v18, v44, &v57, &v54);
            if (v54)
            {
              v55 = v54;
              operator delete(v54);
            }

            if (v57)
            {
              v58 = v57;
              operator delete(v57);
            }

            *&v97 = &unk_2825BE540;
            *(&v97 + 1) = &unk_2825BE570;
            LODWORD(v98) = v81.__r_.__value_.__r.__words[1];
            v101 = 0;
            v99 = 0;
            v100 = 0;
            v53 = v82 - v81.__r_.__value_.__r.__words[2];
            if (v82 == v81.__r_.__value_.__r.__words[2])
            {
              *(&v97 + 1) = &unk_2825BF998;
              *__dst = v86;
              *v106 = v87;
              *v107 = v88;
              v102 = v83;
              *v103 = *v84;
              *&v103[16] = *&v84[16];
              *v104 = v85;
              *&v107[16] = v89;
              memset(&v107[24], 0, 24);
              if (v91 != v90)
              {
                std::vector<MTLUINT256_t>::__vallocate[abi:nn200100](&v107[24], (v91 - v90) >> 5);
              }

              v108[1] = 0;
              v108[0] = 0;
              v109 = 0;
              if (v93 != v92)
              {
                std::vector<MTLUINT256_t>::__vallocate[abi:nn200100](v108, (v93 - v92) >> 5);
              }

              MEMORY[0x20F32FFB0](v110);
              operator new();
            }

            if (!((v53 >> 2) >> 62))
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v53 >> 2);
            }

LABEL_110:
            std::string::__throw_length_error[abi:nn200100]();
          }
        }
      }
    }

    goto LABEL_41;
  }

  v22 = (a7 + v19[5] + *(a7 + v19[5]));
  v96 = 0;
  memset(v95, 0, sizeof(v95));
  v94 = 0u;
  v23 = *v22;
  v24 = -v23;
  v25 = v22 - v23;
  v26 = *(v22 - v23);
  if (v26 >= 7)
  {
    if (*(v25 + 3))
    {
      if (v26 >= 0xB && *(v25 + 5))
      {
        v27 = v22 + *(v25 + 5) + *(v22 + *(v25 + 5));
      }

      else
      {
        v27 = 0;
      }

      v78 = 0;
      v79 = 0;
      v80 = 0;
      v76 = 0;
      v77 = 0;
      v75 = 0;
      (*(*v18 + 40))(&v81, v18, v27, 0, 0, &v78, &v75, 0, 0, 0);
      if (v75)
      {
        v76 = v75;
        operator delete(v75);
      }

      if (v78)
      {
        v79 = v78;
        operator delete(v78);
      }

      AGCModule<AGX::Impl::FragmentProgramKey>::AGCModule(&v97, a2[1], *(a3 + 1), &v81);
    }

    goto LABEL_67;
  }

  if (v26 >= 5)
  {
LABEL_67:
    v51 = v22 + v24;
    if (*(v51 + 2))
    {
      if (v26 >= 9 && *(v51 + 4))
      {
        v52 = v22 + *(v51 + 4) + *(v22 + *(v51 + 4));
      }

      else
      {
        v52 = 0;
      }

      if (SHIBYTE(v95[0]) < 0)
      {
        std::string::__init_copy_ctor_external(&v72, v94, *(&v94 + 1));
      }

      else
      {
        *&v72.__r_.__value_.__l.__data_ = v94;
        v72.__r_.__value_.__r.__words[2] = v95[0];
      }

      if (SHIBYTE(v95[3]) < 0)
      {
        std::string::__init_copy_ctor_external(&v73, v95[1], v95[2]);
      }

      else
      {
        v73 = *&v95[1];
      }

      v74 = v96;
      v70 = 0;
      v71 = 0;
      v68 = 0;
      v69 = 0;
      v66 = 0;
      v67 = 0;
      (*(*v18 + 16))(&v81, v18, v52, &v72, 0, &v69, &v66, 0);
      if (v66)
      {
        v67 = v66;
        operator delete(v66);
      }

      if (v69)
      {
        v70 = v69;
        operator delete(v69);
      }

      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }

      *&v97 = &unk_2825BE340;
      AGX::Impl::VertexProgramKey::VertexProgramKey((&v97 + 8), &v81);
      MEMORY[0x20F32FFB0](&v109);
      operator new();
    }
  }

  v48 = 1;
  if (SHIBYTE(v95[3]) < 0)
  {
    operator delete(v95[1]);
  }

  if (SHIBYTE(v95[0]) < 0)
  {
    operator delete(v94);
  }

  return v48;
}

void AGCModule<AGX::Impl::FragmentProgramKey>::AGCModule(void *a1, uint64_t a2, uint64_t a3, AGX::Impl::FragmentProgramKey *a4)
{
  *a1 = &unk_2825BE428;
  AGX::Impl::FragmentProgramKey::FragmentProgramKey((a1 + 1), a4);
  MEMORY[0x20F32FFB0](a1 + 36);
  operator new();
}

uint64_t Air::PipelineScript::pipeline_as_mesh_render(Air::PipelineScript *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 4) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AGCMeshPipeline::compile(AGCMeshPipeline *this)
{
  v34[7] = *MEMORY[0x277D85DE8];
  v2 = (*(this + 2) - **(this + 2));
  if (*v2 >= 5u && v2[2])
  {
    AGCMeshPipeline::compileMeshStage(this);
    v3 = *(this + 8);
    v23 = 0;
    v24 = 0;
    v21 = 0;
    v22 = 0;
    __p = 0;
    v20 = 0;
    (*(*v3 + 24))(&v7);
    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }

    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }

    v22 = &unk_2825BE710;
    v23 = &unk_2825BE788;
    LODWORD(v24) = v8;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    v6 = v10 - v9;
    if (v10 != v9)
    {
      if (!((v6 >> 2) >> 62))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v6 >> 2);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v23 = &unk_2825BE740;
    v28 = v11;
    v29 = v12;
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v30, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
    }

    else
    {
      v30 = v13;
    }

    v31 = v14;
    memset(v32, 0, sizeof(v32));
    if (v16 != v15)
    {
      std::vector<MTLUINT256_t>::__vallocate[abi:nn200100](v32, (v16 - v15) >> 5);
    }

    memset(v33, 0, sizeof(v33));
    if (v18 != v17)
    {
      std::vector<MTLUINT256_t>::__vallocate[abi:nn200100](v33, (v18 - v17) >> 5);
    }

    v23 = &unk_2825BF900;
    MEMORY[0x20F32FFB0](v34);
    operator new();
  }

  v4 = *(this + 6);
  if (v4 && *(this + 7))
  {
    *v4 = 0;
    **(this + 7) = 0;
  }

  return AGCMeshPipeline::compileMeshStage(this);
}

void AGCMeshPipeline::~AGCMeshPipeline(void **this)
{
  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }
}

uint64_t AGCMeshPipeline::compileMeshStage(AGCMeshPipeline *this)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = (*(this + 2) - **(this + 2));
  v2 = *v1;
  if (v2 >= 7 && v1[3])
  {
    v4 = *(*(this + 3) + 8);
    v5 = *(*(this + 4) + 8);
    if (v2 >= 9 && v1[4])
    {
      v6 = *(this + 8);
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      v20 = 0;
      v21 = 0;
      v18 = 0;
      v19 = 0;
      __p = 0;
      v17 = 0;
      (*(*v6 + 32))(v15);
      if (__p)
      {
        v17 = __p;
        operator delete(__p);
      }

      if (v19)
      {
        v20 = v19;
        operator delete(v19);
      }

      if (SHIBYTE(v24) < 0)
      {
        operator delete(*(&v23 + 1));
      }

      if (SBYTE7(v23) < 0)
      {
        operator delete(v22);
      }

      AGCModule<AGX::Impl::MeshProgramKey>::AGCModule(&v26, *(*(this + 3) + 8), *(*(this + 4) + 8), v15);
    }

    v7 = *(this + 6);
    if (v7 && *(this + 7))
    {
      *(v7 + 16) = 0;
      *(*(this + 7) + 16) = 0;
    }

    v8 = *(this + 2);
    v9 = (v8 - *v8);
    if (*v9 >= 0xDu && (v10 = v9[6]) != 0)
    {
      v11 = v8 + v10 + *(v8 + v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = *(this + 8);
    if (*(this + 151) < 0)
    {
      std::string::__init_copy_ctor_external(&v26, *(this + 16), *(this + 17));
    }

    else
    {
      v26 = *(this + 128);
    }

    if (*(this + 175) < 0)
    {
      std::string::__init_copy_ctor_external(&v27, *(this + 19), *(this + 20));
    }

    else
    {
      v27 = *(this + 152);
    }

    v28 = *(this + 176);
    v13 = *(this + 72);
    *&v23 = 0;
    v21 = 0;
    v22 = 0uLL;
    v19 = 0;
    v20 = 0;
    (*(*v12 + 32))(v15, v12, v11, &v26, 0, v13, 0, &v22, &v19, 0);
    if (v19)
    {
      v20 = v19;
      operator delete(v19);
    }

    if (v22)
    {
      *(&v22 + 1) = v22;
      operator delete(v22);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    AGCModule<AGX::Impl::MeshProgramKey>::AGCModule(&v26, v4, v5, v15);
  }

  return 0;
}

void AGCModule<AGX::Impl::MeshProgramKey>::AGCModule(void *a1, uint64_t a2, uint64_t a3, AGX::Impl::MeshProgramKey *a4)
{
  *a1 = &unk_2825BE5E0;
  AGX::Impl::MeshProgramKey::MeshProgramKey((a1 + 1), a4);
  MEMORY[0x20F32FFB0](a1 + 27);
  operator new();
}

void *AIRNTGetLegalizationPasses(int a1, unsigned int a2, AGCTarget *this, uint64_t *a4, void *a5)
{
  v7 = AGCTarget::CPUSubtypeToTargetArch(this, a2, this);
  v11 = 0;
  v8 = AGCTarget::Get(v7);
  result = ((*v8)[2])(&v10);
  *a4 = v10;
  *a5 = v11;
  return result;
}

void std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:nn200100](std::regex_traits<char> *a1, char *a2)
{
  v4 = std::regex_traits<char>::regex_traits(a1);
  v4[2].__ct_ = 0;
  *&v4[1].__col_ = 0u;
  *&v4[1].__loc_.__locale_ = 0u;
  v5 = strlen(a2);
  std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(a1, a2, &a2[v5]);
}

uint64_t std::regex_match[abi:nn200100]<std::__wrap_iter<char const*>,std::allocator<std::sub_match<std::__wrap_iter<char const*>>>,char,std::regex_traits<char>>(uint64_t a1, const char *a2, uint64_t *a3, uint64_t a4)
{
  v138 = 0uLL;
  v139 = 0;
  v140 = 0uLL;
  matched = 0;
  v142 = 0;
  v143 = 0;
  memset(&v136, 0, sizeof(v136));
  v8 = (*(a4 + 28) + 1);
  v137.first = a2;
  v137.second = a2;
  v137.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&v136, v8, &v137);
  v138.i64[0] = a1;
  v138.i64[1] = a1;
  v139 = 0;
  v140 = v137.std::pair<const char *, const char *>;
  matched = v137.matched;
  v143 = a1;
  v142 = 1;
  v133 = a1;
  if ((*(a4 + 24) & 0x1F0) == 0)
  {
    std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a4, a1, a2, &v136, 4160, 1);
    if ((v37 & 1) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_162;
  }

  v134 = &a2[-a1];
  if (!*(a4 + 28))
  {
    v145 = 0u;
    v146 = 0u;
    *v144 = 0u;
    v44 = *(a4 + 40);
    if (!v44)
    {
      goto LABEL_148;
    }

    *v147 = 0;
    memset(&v147[8], 0, 32);
    v148 = 0uLL;
    memset(v149, 0, 37);
    std::deque<std::__state<char>>::push_back(v144, v147);
    if (v149[0])
    {
      operator delete(v149[0]);
    }

    if (*&v147[32])
    {
      operator delete(*&v147[32]);
    }

    v45 = v144[1];
    v46 = v146.i64[1] + v146.i64[0] - 1;
    v47 = v46 / 0x2A;
    v48 = *(v144[1] + v46 / 0x2A);
    v49 = 3 * (v46 % 0x2A);
    v50 = v48 + 32 * v49;
    *v50 = 0;
    *(v50 + 8) = a1;
    *(v45[v47] + 32 * v49 + 16) = a1;
    *(v45[v47] + 32 * v49 + 24) = a2;
    std::vector<std::pair<unsigned long,char const*>>::resize((v45[v47] + 32 * v49 + 56), *(a4 + 32));
    __pa = 0;
    v51 = 0;
    v52 = 0;
    v53 = v146.i64[1];
    v54 = v144[1];
    v55 = v146.i64[1] + v146.i64[0] - 1;
    v56 = v55 / 0x2A;
    v57 = 0xC30C30C30C30C30DLL;
    v58 = 3 * (v55 % 0x2A);
    *(*(v144[1] + v56) + 32 * v58 + 80) = v44;
    v59 = v54[v56] + 32 * v58;
    *(v59 + 88) = 4160;
    *(v59 + 92) = 1;
    while (1)
    {
      if ((++v51 & 0xFFF) == 0 && (v51 >> 12) >= v134)
      {
LABEL_202:
        std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
LABEL_203:
        std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
        goto LABEL_204;
      }

      v61 = v53 + v146.i64[0] - 1;
      v62 = (((v61 >> 1) * v57) >> 64) >> 4;
      v63 = *(v144[1] + v62) - 4032 * v62 + 96 * v61;
      v65 = (v63 + 80);
      v64 = *(v63 + 80);
      if (v64)
      {
        (*(*v64 + 16))(v64, v63);
      }

      v66 = *v63;
      if (*v63 <= -995)
      {
        switch(v66)
        {
          case -1000:
            if (*(v63 + 16) != a2)
            {
              goto LABEL_139;
            }

            if (v52 <= &a2[-*(v63 + 8)])
            {
              v71 = &a2[-*(v63 + 8)];
            }

            else
            {
              v71 = v52;
            }

            if (__pa)
            {
              v52 = v71;
            }

            else
            {
              v52 = &a2[-*(v63 + 8)];
            }

            if (v52 == v134)
            {
              v72 = v144[1];
              v73 = v145;
              if (v145 == v144[1])
              {
                v73 = v144[1];
              }

              else
              {
                v74 = (((v146.i64[0] >> 1) * v57) >> 64) >> 4;
                v75 = v144[1] + 8 * v74;
                v76 = (*v75 - 4032 * v74 + 96 * v146.i64[0]);
                v77 = v57;
                v78 = ((((v146.i64[1] + v146.i64[0]) >> 1) * v57) >> 64) >> 4;
                v79 = *(v144[1] + v78) - 4032 * v78 + 96 * (v146.i64[1] + v146.i64[0]);
                if (v76 != v79)
                {
                  do
                  {
                    std::allocator<std::__state<char>>::destroy[abi:nn200100](v76);
                    v76 += 12;
                    if ((v76 - *v75) == 4032)
                    {
                      v80 = v75[1];
                      ++v75;
                      v76 = v80;
                    }
                  }

                  while (v76 != v79);
                  v72 = v144[1];
                  v73 = v145;
                }

                v57 = v77;
              }

              v146.i64[1] = 0;
              v84 = (v73 - v72) >> 3;
              if (v84 >= 3)
              {
                do
                {
                  operator delete(*v72);
                  v72 = (v144[1] + 8);
                  v144[1] = v72;
                  v84 = (v145 - v72) >> 3;
                }

                while (v84 > 2);
              }

              if (v84 == 1)
              {
                v85 = 21;
LABEL_130:
                v146.i64[0] = v85;
              }

              else if (v84 == 2)
              {
                v85 = 42;
                goto LABEL_130;
              }

              __pa = 1;
              v52 = v134;
              break;
            }

            std::deque<std::__state<char>>::pop_back(v144);
            __pa = 1;
            break;
          case -999:
            break;
          case -995:
            v67 = v146.i64[0];
            v68 = v144[1];
            v69 = v145;
            if (!v146.i64[0])
            {
              v70 = 42 * ((v145 - v144[1]) >> 3) - 1;
              if (v145 == v144[1])
              {
                v70 = 0;
              }

              if ((v70 - v146.i64[1]) < 0x2A)
              {
                if (v145 - v144[1] < *(&v145 + 1) - v144[0])
                {
                  if (v144[1] != v144[0])
                  {
                    operator new();
                  }

                  operator new();
                }

                if (*(&v145 + 1) == v144[0])
                {
                  v83 = 1;
                }

                else
                {
                  v83 = (*(&v145 + 1) - v144[0]) >> 2;
                }

                *&v147[32] = v144;
                std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(v83);
              }

              v146.i64[0] = 42;
              *v147 = *(v145 - 8);
              *&v145 = v145 - 8;
              std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(v144, v147);
              v67 = v146.i64[0];
              v68 = v144[1];
              v69 = v145;
            }

            v86 = (((v67 >> 1) * v57) >> 64) >> 4;
            v87 = &v68[8 * v86];
            v88 = *v87 - 4032 * v86 + 96 * v67;
            if (v69 == v68)
            {
              v89 = 0;
            }

            else
            {
              v89 = v88;
            }

            if (v89 == *v87)
            {
              v89 = *(v87 - 1) + 4032;
            }

            v90 = *(v63 + 16);
            *(v89 - 96) = *v63;
            *(v89 - 80) = v90;
            *(v89 - 56) = 0;
            *(v89 - 48) = 0;
            *(v89 - 64) = 0;
            *(v89 - 64) = *(v63 + 32);
            *(v89 - 48) = *(v63 + 48);
            *(v63 + 32) = 0;
            *(v63 + 40) = 0;
            *(v63 + 48) = 0;
            *(v89 - 40) = 0;
            *(v89 - 32) = 0;
            *(v89 - 24) = 0;
            *(v89 - 40) = *(v63 + 56);
            *(v89 - 24) = *(v63 + 72);
            *(v63 + 56) = 0;
            *(v63 + 64) = 0;
            *(v63 + 72) = 0;
            v91 = *v65;
            *(v89 - 11) = *(v63 + 85);
            *(v89 - 16) = v91;
            v146 = vaddq_s64(v146, xmmword_20E70CA70);
            goto LABEL_139;
          default:
            goto LABEL_203;
        }
      }

      else
      {
        if (v66 > -993)
        {
          if (v66 == -992)
          {
            v81 = *(v63 + 16);
            *v147 = *v63;
            *&v147[16] = v81;
            std::vector<std::sub_match<char const*>>::vector[abi:nn200100](&v147[32], (v63 + 32));
            std::vector<std::pair<unsigned long,char const*>>::vector[abi:nn200100](v149, (v63 + 56));
            v82 = *v65;
            *(&v149[3] + 5) = *(v63 + 85);
            v149[3] = v82;
            (*(**(v63 + 80) + 24))(*(v63 + 80), 1, v63);
            (*(*v149[3] + 24))(v149[3], 0, v147);
            std::deque<std::__state<char>>::push_back(v144, v147);
            if (v149[0])
            {
              v149[1] = v149[0];
              operator delete(v149[0]);
            }

            if (*&v147[32])
            {
              *&v148 = *&v147[32];
              operator delete(*&v147[32]);
            }
          }

          else if (v66 != -991)
          {
            goto LABEL_203;
          }

          goto LABEL_140;
        }

        if (v66 != -994)
        {
          if (v66 != -993)
          {
            goto LABEL_203;
          }

LABEL_139:
          std::deque<std::__state<char>>::pop_back(v144);
        }
      }

LABEL_140:
      v53 = v146.i64[1];
      if (!v146.i64[1])
      {
        if (__pa)
        {
          begin = v136.__begin_;
          v136.__begin_->first = v133;
          begin->second = &v52[v133];
          LOBYTE(v44) = 1;
          begin->matched = 1;
        }

        else
        {
          LOBYTE(v44) = 0;
        }

LABEL_148:
        v98 = v144[1];
        v99 = v145;
        v146.i64[1] = 0;
        v100 = (v145 - v144[1]) >> 3;
        if (v100 >= 3)
        {
          do
          {
            operator delete(*v98);
            v99 = v145;
            v98 = (v144[1] + 8);
            v144[1] = v98;
            v100 = (v145 - v98) >> 3;
          }

          while (v100 > 2);
        }

        if (v100 == 1)
        {
          v101 = 21;
LABEL_154:
          v146.i64[0] = v101;
        }

        else if (v100 == 2)
        {
          v101 = 42;
          goto LABEL_154;
        }

        if (v98 != v99)
        {
          do
          {
            v102 = *v98++;
            operator delete(v102);
          }

          while (v98 != v99);
          if (v145 != v144[1])
          {
            *&v145 = v145 + ((v144[1] - v145 + 7) & 0xFFFFFFFFFFFFFFF8);
          }
        }

        if (v144[0])
        {
          operator delete(v144[0]);
        }

        if (v44)
        {
          goto LABEL_162;
        }

LABEL_146:
        v93 = a2;
        v94 = 0;
        v95 = v136.__begin_;
        v96 = v138.i64[0];
        v136.__end_ = v136.__begin_;
        end = v136.__begin_;
        goto LABEL_168;
      }
    }
  }

  v144[0] = 0;
  v144[1] = 0;
  *&v145 = 0;
  v9 = *(a4 + 40);
  if (!v9)
  {
    *v147 = v144;
    std::vector<std::__state<char>>::__destroy_vector::operator()[abi:nn200100](v147);
    goto LABEL_146;
  }

  __x.first = a2;
  __x.second = a2;
  __x.matched = 0;
  *v147 = 0;
  memset(&v147[8], 0, 32);
  v148 = 0u;
  memset(v149, 0, 37);
  std::vector<std::__state<char>>::push_back[abi:nn200100](v144, v147);
  if (v149[0])
  {
    operator delete(v149[0]);
  }

  if (*&v147[32])
  {
    operator delete(*&v147[32]);
  }

  v10 = v144[1];
  *(v144[1] - 24) = 0;
  *(v10 - 11) = a1;
  *(v10 - 10) = a1;
  *(v10 - 9) = a2;
  std::vector<std::sub_match<char const*>>::resize((v10 - 8), *(a4 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v144[1] - 40), *(a4 + 32));
  v11 = 0;
  __p = 0;
  v12 = 0;
  v132 = 0;
  v13 = 0;
  v14 = 0;
  v15 = v144[1];
  *(v144[1] - 2) = v9;
  *(v15 - 2) = 4160;
  *(v15 - 4) = 1;
  do
  {
    v16 = (++v13 & 0xFFF) != 0 || (v13 >> 12) < v134;
    if (!v16)
    {
      goto LABEL_202;
    }

    v17 = *(v15 - 2);
    v18 = v15 - 24;
    if (v17)
    {
      (*(*v17 + 16))(v17, v15 - 24);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      switch(v19)
      {
        case -993:
          goto LABEL_26;
        case -992:
          v23 = *(v15 - 5);
          *v147 = *v18;
          *&v147[16] = v23;
          std::vector<std::sub_match<char const*>>::vector[abi:nn200100](&v147[32], v15 - 8);
          std::vector<std::pair<unsigned long,char const*>>::vector[abi:nn200100](v149, v15 - 5);
          v24 = *(v15 - 2);
          *(&v149[3] + 5) = *(v15 - 11);
          v149[3] = v24;
          (*(**(v15 - 2) + 24))(*(v15 - 2), 1, v15 - 24);
          (*(*v149[3] + 24))(v149[3], 0, v147);
          std::vector<std::__state<char>>::push_back[abi:nn200100](v144, v147);
          if (v149[0])
          {
            v149[1] = v149[0];
            operator delete(v149[0]);
          }

          if (*&v147[32])
          {
            *&v148 = *&v147[32];
            operator delete(*&v147[32]);
          }

          break;
        case -991:
          break;
        default:
          goto LABEL_203;
      }
    }

    else
    {
      if ((v19 + 995) < 2)
      {
        goto LABEL_55;
      }

      if (v19 != -1000)
      {
        goto LABEL_203;
      }

      if (*(v15 - 10) != a2)
      {
LABEL_26:
        v22 = v144[1] - 96;
        std::allocator<std::__state<char>>::destroy[abi:nn200100](v144[1] - 12);
        v144[1] = v22;
        goto LABEL_55;
      }

      v20 = &a2[-*(v15 - 11)];
      if ((v132 & (v14 >= v20)) != 0)
      {
        v20 = v14;
        v21 = __p;
      }

      else
      {
        v26 = *(v15 - 8);
        v25 = *(v15 - 7);
        if (v25 != v26)
        {
          v27 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v26) >> 3);
          if (v27 <= 0xAAAAAAAAAAAAAAALL)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::sub_match<char const*>>>(v27);
          }

          std::string::__throw_length_error[abi:nn200100]();
        }

        if (v26 == v25)
        {
          v11 = 0;
        }

        else
        {
          v11 = 0;
          do
          {
            *v11 = *v26;
            *(v11 + 16) = *(v26 + 16);
            v26 += 24;
            v11 += 24;
          }

          while (v26 != v25);
        }

        v29 = *(v15 - 5);
        v28 = *(v15 - 4);
        v30 = v28 - v29;
        v21 = __p;
        if (-__p < (v28 - v29))
        {
          if (!((v30 >> 4) >> 60))
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,char const*>>>(v30 >> 4);
          }

          std::string::__throw_length_error[abi:nn200100]();
        }

        if (&v12[-__p] >= v30)
        {
          v12 = __p;
          while (v29 != v28)
          {
            *v12 = *v29;
            *(v12 + 1) = *(v29 + 1);
            v29 += 16;
            v12 += 16;
          }
        }

        else
        {
          v31 = &v12[v29 - __p];
          if (v12 != __p)
          {
            v32 = __p;
            do
            {
              *v32 = *v29;
              v32[1] = *(v29 + 1);
              v29 += 16;
              v32 += 2;
            }

            while (v29 != v31);
          }

          while (v31 != v28)
          {
            v33 = *v31;
            v31 += 16;
            *v12 = v33;
            v12 += 16;
          }
        }
      }

      v34 = v144[1];
      __p = v21;
      if (v20 == v134)
      {
        v35 = v144[0];
        while (v34 != v35)
        {
          v34 -= 12;
          std::allocator<std::__state<char>>::destroy[abi:nn200100](v34);
        }

        v144[1] = v35;
        v132 = 1;
        v14 = v134;
      }

      else
      {
        v36 = v144[1] - 96;
        std::allocator<std::__state<char>>::destroy[abi:nn200100](v144[1] - 12);
        v144[1] = v36;
        v132 = 1;
        v14 = v20;
      }
    }

LABEL_55:
    v15 = v144[1];
  }

  while (v144[0] != v144[1]);
  if (v132)
  {
    v38 = v136.__begin_;
    v136.__begin_->first = v133;
    v38->second = &v14[v133];
    v38->matched = 1;
    if (v11)
    {
      v39 = 16;
      v40 = 1;
      do
      {
        v41 = &v38[v40];
        v41->std::pair<const char *, const char *> = *(v39 - 16);
        v42 = *v39;
        v39 += 24;
        v41->matched = v42;
        v16 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3) > v40++;
      }

      while (v16);
    }

    v43 = 1;
  }

  else
  {
    v43 = 0;
  }

  *v147 = v144;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:nn200100](v147);
  if (!v43)
  {
    goto LABEL_146;
  }

LABEL_162:
  v93 = a2;
  v95 = v136.__begin_;
  end = v136.__end_;
  if (v136.__end_ == v136.__begin_)
  {
    v103 = &v137;
  }

  else
  {
    v103 = v136.__begin_;
  }

  first = v103->first;
  v138.i64[1] = first;
  p_second = &v136.__begin_->second;
  if (v136.__end_ == v136.__begin_)
  {
    p_second = &v137.second;
  }

  v96 = v138.i64[0];
  v139 = v138.i64[0] != first;
  v140.i64[0] = *p_second;
  matched = v140.i64[0] != v140.i64[1];
  v94 = 1;
LABEL_168:
  v106 = 0xAAAAAAAAAAAAAAABLL * ((end - v95) >> 3);
  v108 = *a3;
  v107 = a3[1];
  v109 = v107 - *a3;
  v110 = 0xAAAAAAAAAAAAAAABLL * (v109 >> 3);
  v111 = v106 - v110;
  v135 = v94;
  if (v106 <= v110)
  {
    v114 = a3[1];
    if (v106 < v110)
    {
      v114 = v108 + end - v95;
      goto LABEL_182;
    }
  }

  else
  {
    v112 = a3[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v112 - v107) >> 3) < v111)
    {
      if (v106 <= 0xAAAAAAAAAAAAAAALL)
      {
        if (0x5555555555555556 * ((v112 - v108) >> 3) > v106)
        {
          v106 = 0x5555555555555556 * ((v112 - v108) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v112 - v108) >> 3) >= 0x555555555555555)
        {
          v113 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v113 = v106;
        }

        if (v113 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

LABEL_204:
      std::string::__throw_length_error[abi:nn200100]();
    }

    v114 = v107 + 24 * v111;
    v115 = 8 * ((end - v95) >> 3) - 8 * (v109 >> 3);
    do
    {
      *v107 = 0;
      *(v107 + 8) = 0;
      *(v107 + 16) = 0;
      v107 += 24;
      v115 -= 24;
    }

    while (v115);
LABEL_182:
    a3[1] = v114;
  }

  v116 = *a3;
  v117 = &v133[-v96];
  if (v114 == *a3)
  {
    v120 = v136.__begin_;
  }

  else
  {
    v118 = 0;
    v119 = 0;
    v120 = v136.__begin_;
    v121 = 0xAAAAAAAAAAAAAAABLL * ((v136.__end_ - v136.__begin_) >> 3);
    do
    {
      v122 = &v120[v118];
      if (v121 <= v119)
      {
        v123 = &v137;
      }

      else
      {
        v123 = &v120[v118];
      }

      *(v116 + v118 * 24) = &v123->first[v117];
      v124 = &v122->second;
      if (v121 <= v119)
      {
        v124 = &v137.second;
      }

      *(*a3 + v118 * 24 + 8) = &(*v124)[v117];
      p_matched = &v122->matched;
      if (v121 <= v119)
      {
        p_matched = &v137.matched;
      }

      v126 = *p_matched;
      v116 = *a3;
      *(*a3 + v118 * 24 + 16) = v126;
      ++v119;
      ++v118;
    }

    while (v119 < 0xAAAAAAAAAAAAAAABLL * ((a3[1] - v116) >> 3));
  }

  a3[3] = v93;
  a3[4] = v93;
  *(a3 + 40) = 0;
  v127 = vdupq_n_s64(v117);
  v128 = vaddq_s64(v127, v138);
  *(a3 + 3) = v128;
  *(a3 + 64) = v139;
  *(a3 + 9) = vaddq_s64(v127, v140);
  *(a3 + 88) = matched;
  a3[13] = v128.i64[0];
  *(a3 + 96) = v142;
  if (v120)
  {
    operator delete(v120);
  }

  if (!v135)
  {
    return 0;
  }

  if (*(a3 + 88) != 1)
  {
    return 1;
  }

  result = 0;
  a3[1] = *a3;
  return result;
}

uint64_t _ZNSt3__13mapIN4llvm9StringRefEZN21NumericPackUnpackPass3runERNS1_8FunctionERNS1_15AnalysisManagerIS4_JEEEE17QuantizedTypeInfoNS_4lessIS2_EENS_9allocatorINS_4pairIKS2_S9_EEEEEixERSE_(uint64_t a1, _OWORD *a2)
{
  v2 = *_ZNSt3__16__treeINS_12__value_typeIN4llvm9StringRefEZN21NumericPackUnpackPass3runERNS2_8FunctionERNS2_15AnalysisManagerIS5_JEEEE17QuantizedTypeInfoEENS_19__map_value_compareIS3_SB_NS_4lessIS3_EELb1EEENS_9allocatorISB_EEE12__find_equalIS3_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISN_EERKT_(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2 + 48;
}

uint64_t **std::__tree<std::__value_type<unsigned int,char const*>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,char const*>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,char const*>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t **a1, unsigned int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 8);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t **std::__tree<std::__value_type<unsigned int,llvm::Type *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,llvm::Type *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,llvm::Type *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t **a1, unsigned int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 8);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= __n)
    {
      v8 = __n;
    }

    if (v7 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    std::vector<std::sub_match<char const*>>::__vallocate[abi:nn200100](this, v9);
  }

  end = this->__end_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v11 >= __n)
  {
    v12 = __n;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v12)
  {
    v13 = __u->std::pair<const char *, const char *>;
    matched = __u->matched;
    v15 = begin;
    do
    {
      v15->std::pair<const char *, const char *> = v13;
      v15->matched = matched;
      ++v15;
      --v12;
    }

    while (v12);
  }

  if (__n <= v11)
  {
    this->__end_ = &begin[__n];
  }

  else
  {
    v16 = &end[__n - v11];
    v17 = 24 * __n - 8 * ((end - begin) >> 3);
    do
    {
      v18 = __u->std::pair<const char *, const char *>;
      *&end->matched = *&__u->matched;
      end->std::pair<const char *, const char *> = v18;
      ++end;
      v17 -= 24;
    }

    while (v17);
    this->__end_ = v16;
  }
}

void std::vector<std::sub_match<char const*>>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::sub_match<char const*>>>(a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::sub_match<char const*>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v6 = *(a1 + 40);
  if (v6)
  {
    __x.first = a3;
    __x.second = a3;
    __x.matched = 0;
    *v33 = 0;
    memset(&v33[8], 0, 32);
    v34 = 0u;
    *__p = 0u;
    memset(v36, 0, 21);
    std::vector<std::__state<char>>::push_back[abi:nn200100](&v38, v33);
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (*&v33[32])
    {
      operator delete(*&v33[32]);
    }

    v13 = v39;
    *(v39 - 96) = 0;
    *(v13 - 88) = a2;
    *(v13 - 80) = a2;
    *(v13 - 72) = a3;
    std::vector<std::sub_match<char const*>>::resize((v13 - 64), *(a1 + 28), &__x);
    std::vector<std::pair<unsigned long,char const*>>::resize((v13 - 40), *(a1 + 32));
    *(v13 - 16) = v6;
    *(v13 - 8) = a5;
    v14 = 1;
    *(v13 - 4) = a6;
    do
    {
      if ((v14 & 0xFFF) == 0 && (v14 >> 12) >= a3 - a2)
      {
        std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
LABEL_35:
        v31 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
        std::vector<std::__state<char>>::push_back[abi:nn200100](v31, v32);
        return;
      }

      v15 = *(v13 - 16);
      v16 = (v13 - 96);
      if (v15)
      {
        (*(*v15 + 16))(v15, v13 - 96);
      }

      v17 = *v16;
      if (*v16 > -994)
      {
        switch(v17)
        {
          case -993:
            goto LABEL_23;
          case -992:
            v20 = *(v13 - 80);
            *v33 = *v16;
            *&v33[16] = v20;
            std::vector<std::sub_match<char const*>>::vector[abi:nn200100](&v33[32], (v13 - 64));
            std::vector<std::pair<unsigned long,char const*>>::vector[abi:nn200100](__p, (v13 - 40));
            v21 = *(v13 - 16);
            *(&v36[1] + 5) = *(v13 - 11);
            v36[1] = v21;
            (*(**(v13 - 16) + 24))(*(v13 - 16), 1, v13 - 96);
            (*(*v36[1] + 24))(v36[1], 0, v33);
            std::vector<std::__state<char>>::push_back[abi:nn200100](&v38, v33);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

            if (*&v33[32])
            {
              *&v34 = *&v33[32];
              operator delete(*&v33[32]);
            }

            break;
          case -991:
            break;
          default:
            goto LABEL_35;
        }
      }

      else if ((v17 + 995) >= 2)
      {
        if (v17 != -1000)
        {
          goto LABEL_35;
        }

        v18 = *(v13 - 80);
        if (((a5 & 0x20) == 0 || v18 != a2) && ((a5 & 0x1000) == 0 || v18 == a3))
        {
          v22 = *a4;
          *v22 = a2;
          *(v22 + 8) = v18;
          *(v22 + 16) = 1;
          v23 = *(v13 - 64);
          v24 = *(v13 - 56) - v23;
          if (v24)
          {
            v25 = 0xAAAAAAAAAAAAAAABLL * (v24 >> 3);
            v26 = (v23 + 16);
            v27 = 1;
            do
            {
              v28 = v22 + 24 * v27;
              *v28 = *(v26 - 1);
              v29 = *v26;
              v26 += 24;
              *(v28 + 16) = v29;
            }

            while (v25 > v27++);
          }

          break;
        }

LABEL_23:
        v19 = v39 - 96;
        std::allocator<std::__state<char>>::destroy[abi:nn200100]((v39 - 96));
        v39 = v19;
      }

      v13 = v39;
      ++v14;
    }

    while (v38 != v39);
  }

  *v33 = &v38;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:nn200100](v33);
}

void std::vector<std::__state<char>>::push_back[abi:nn200100](unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
    v9 = v8 + 1;
    if (v8 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x155555555555555)
    {
      v11 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = *(a2 + 16);
    v13 = 96 * v8;
    *v13 = *a2;
    *(v13 + 16) = v12;
    *(v13 + 32) = *(a2 + 32);
    *(v13 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(v13 + 56) = *(a2 + 56);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v14 = *(a2 + 72);
    v15 = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(v13 + 85) = *(a2 + 85);
    *(v13 + 72) = v14;
    *(v13 + 80) = v15;
    v7 = 96 * v8 + 96;
    v16 = *a1;
    v17 = a1[1];
    v18 = 96 * v8 + *a1 - v17;
    if (*a1 != v17)
    {
      v19 = *a1;
      v20 = v13 + *a1 - v17;
      do
      {
        v21 = *(v19 + 1);
        *v20 = *v19;
        *(v20 + 16) = v21;
        *(v20 + 40) = 0;
        *(v20 + 48) = 0;
        *(v20 + 32) = 0;
        *(v20 + 32) = *(v19 + 2);
        *(v20 + 48) = v19[6];
        v19[4] = 0;
        v19[5] = 0;
        v19[6] = 0;
        *(v20 + 56) = 0;
        *(v20 + 64) = 0;
        *(v20 + 72) = 0;
        *(v20 + 56) = *(v19 + 7);
        *(v20 + 72) = v19[9];
        v19[7] = 0;
        v19[8] = 0;
        v19[9] = 0;
        v22 = v19[10];
        *(v20 + 85) = *(v19 + 85);
        *(v20 + 80) = v22;
        v19 += 12;
        v20 += 96;
      }

      while (v19 != v17);
      do
      {
        std::allocator<std::__state<char>>::destroy[abi:nn200100](v16);
        v16 += 12;
      }

      while (v16 != v17);
    }

    v23 = *a1;
    *a1 = v18;
    a1[1] = v7;
    a1[2] = 0;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v6 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v6;
    v7 = v3 + 96;
  }

  a1[1] = v7;
}

void std::vector<std::sub_match<char const*>>::resize(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __sz, std::vector<std::csub_match>::const_reference __x)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  v7 = __sz - v6;
  if (__sz <= v6)
  {
    if (__sz >= v6)
    {
      return;
    }

    v12 = &begin[__sz];
  }

  else
  {
    value = this->__end_cap_.__value_;
    if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) < v7)
    {
      if (__sz <= 0xAAAAAAAAAAAAAAALL)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
        v10 = 0x5555555555555556 * ((value - begin) >> 3);
        if (v10 <= __sz)
        {
          v10 = __sz;
        }

        if (v9 >= 0x555555555555555)
        {
          v11 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v11 = v10;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::sub_match<char const*>>>(v11);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = &end[v7];
    v13 = 24 * __sz - 8 * (v5 >> 3);
    do
    {
      v14 = __x->std::pair<const char *, const char *>;
      *&end->matched = *&__x->matched;
      end->std::pair<const char *, const char *> = v14;
      ++end;
      v13 -= 24;
    }

    while (v13);
  }

  this->__end_ = v12;
}

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 60))
      {
        v8 = value - begin;
        v9 = v8 >> 3;
        if (v8 >> 3 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,char const*>>>(v10);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    bzero(this->__end_, 16 * v6);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

void std::allocator<std::__state<char>>::destroy[abi:nn200100](void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

uint64_t *std::vector<std::sub_match<char const*>>::vector[abi:nn200100](uint64_t *a1, __int128 **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<std::sub_match<char const*>>::__vallocate[abi:nn200100](a1, 0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3));
  }

  return a1;
}

uint64_t *std::vector<std::pair<unsigned long,char const*>>::vector[abi:nn200100](uint64_t *a1, __int128 **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:nn200100](a1, v2 - *a2);
  }

  return a1;
}

void std::vector<std::__state<char>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 12;
        std::allocator<std::__state<char>>::destroy[abi:nn200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,char const*>>>(a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,char const*>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

__n128 std::deque<std::__state<char>>::push_back(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = v4 - v5;
  if (v4 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 42 * ((v4 - v5) >> 3) - 1;
  }

  v8 = a1[4];
  v9 = a1[5] + v8;
  if (v7 == v9)
  {
    if (v8 < 0x2A)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v6 < v11)
      {
        if (v10 != v4)
        {
          operator new();
        }

        operator new();
      }

      if (v10 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 >> 2;
      }

      v18 = a1;
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(v12);
    }

    a1[4] = v8 - 42;
    *&v17 = *v5;
    a1[1] = (v5 + 8);
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v17);
    v5 = a1[1];
    v9 = a1[5] + a1[4];
  }

  v13 = *&v5[8 * (v9 / 0x2A)] - 4032 * (v9 / 0x2A) + 96 * v9;
  v14 = *(a2 + 16);
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 32) = 0;
  *(v13 + 32) = *(a2 + 32);
  *(v13 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  result = *(a2 + 56);
  *(v13 + 56) = result;
  *(v13 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v16 = *(a2 + 80);
  *(v13 + 85) = *(a2 + 85);
  *(v13 + 80) = v16;
  ++a1[5];
  return result;
}

void std::deque<std::__state<char>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  std::allocator<std::__state<char>>::destroy[abi:nn200100]((*(a1[1] + 8 * (v2 / 0x2A)) - 4032 * (v2 / 0x2A) + 96 * v2));
  v4 = a1[1];
  v3 = a1[2];
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 42 * ((v3 - v4) >> 3) - 1;
  }

  v6 = a1[4];
  v7 = a1[5] - 1;
  a1[5] = v7;
  if ((v5 - (v7 + v6)) >= 0x54)
  {
    operator delete(*(v3 - 8));
    a1[2] -= 8;
  }
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

std::regex_traits<char> *__cdecl std::regex_traits<char>::regex_traits(std::regex_traits<char> *this)
{
  v2 = MEMORY[0x20F331D00]();
  this->__ct_ = std::locale::use_facet(v2, MEMORY[0x277D82680]);
  this->__col_ = std::locale::use_facet(&this->__loc_, MEMORY[0x277D826A0]);
  return this;
}

std::string *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(std::basic_regex<char> *a1, std::string *a2, std::string *a3)
{
  end = a1->__end_;
  v7 = a2;
  do
  {
    v8 = v7;
    std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
    v7 = v9;
  }

  while (v9 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3)
  {
    do
    {
      if (v7->__r_.__value_.__s.__data_[0] != 124)
      {
        break;
      }

      v10 = a1->__end_;
      v11 = (&v7->__r_.__value_.__l.__data_ + 1);
      v7 = (v7 + 1);
      do
      {
        v12 = v7;
        std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
        v7 = v13;
      }

      while (v13 != v12);
      if (v12 == v11)
      {
        operator new();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v10);
    }

    while (v12 != a3);
  }

  return v7;
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(std::basic_regex<char> *this, std::string *a2, std::string *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (a2->__r_.__value_.__s.__data_[0] == 94)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
      v3 = (v3 + 1);
    }

    if (v3 != a3)
    {
      do
      {
        v6 = v3;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(this, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && (&v7->__r_.__value_.__l.__data_ + 1) == a3 && v7->__r_.__value_.__s.__data_[0] == 36)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
        v3 = (v3 + 1);
      }
    }

    if (v3 != a3)
    {
      v8 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
      std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(v8, v9, v10);
    }
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(std::basic_regex<char> *a1, std::string *a2, std::string *a3)
{
  end = a1->__end_;
  std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    v11 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(v11, v12, v13);
  }

  else
  {
    v8 = v7;
    while (v8 != a3 && v8->__r_.__value_.__s.__data_[0] == 124)
    {
      v9 = a1->__end_;
      std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, (&v8->__r_.__value_.__l.__data_ + 1), a3);
      if (v10 == (&v8->__r_.__value_.__l.__data_ + 1))
      {
        goto LABEL_8;
      }

      v8 = v10;
      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }
  }
}

uint64_t std::__empty_non_own_state<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

uint64_t std::__alternate<char>::__exec_split(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

void std::__alternate<char>::~__alternate(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x20F331DC0);
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_2825BEEC0;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  return a1;
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }

  JUMPOUT(0x20F331DC0);
}

{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }
}

void std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x20F331DC0);
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(uint64_t a1, std::string *a2, std::string *a3)
{
  std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, a2, a3);
  if (v6 == a2)
  {
    v8 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(v8, v9, v10);
  }

  else
  {
    do
    {
      v7 = v6;
      std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v6, a3);
    }

    while (v6 != v7);
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(uint64_t a1, std::string *a2, std::string *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  if (a2 == a3)
  {
LABEL_25:
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, a2, a3);
    goto LABEL_26;
  }

  v8 = a2->__r_.__value_.__s.__data_[0];
  v9 = (v8 - 36);
  if (v9 > 0x3A)
  {
    goto LABEL_13;
  }

  if (((1 << (v8 - 36)) & 0x5800000080004D1) != 0)
  {
    goto LABEL_4;
  }

  if (v9 == 5)
  {
    if (!*(a1 + 36))
    {
      v15 = 41;
LABEL_15:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v15);
      v11 = (&a2->__r_.__value_.__l.__data_ + 1);
      goto LABEL_38;
    }
  }

  else
  {
LABEL_13:
    if ((v8 - 123) >= 2)
    {
      v15 = a2->__r_.__value_.__s.__data_[0];
      goto LABEL_15;
    }
  }

LABEL_4:
  v10 = &a2->__r_.__value_.__s.__data_[1];
  v11 = a2;
  if ((&a2->__r_.__value_.__l.__data_ + 1) == a3)
  {
LABEL_22:
    v12 = v11->__r_.__value_.__s.__data_[0];
LABEL_23:
    if (v12 == 46)
    {
      operator new();
    }

    goto LABEL_25;
  }

  v12 = a2->__r_.__value_.__s.__data_[0];
  if (v12 != 92)
  {
    goto LABEL_23;
  }

  v13 = *v10;
  v14 = *v10;
  if (((v13 - 36) > 0x3A || ((1 << (v13 - 36)) & 0x5800000080004F1) == 0) && (v13 - 123) >= 3)
  {
    if ((*(a1 + 24) & 0x1F0) == 0x40)
    {
      v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v10, a3, 0);
    }

    else
    {
      v16 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v14);
      v17 = 2;
      if (!v16)
      {
        v17 = 0;
      }

      v11 = (a2 + v17);
    }

    if (v11 != a2)
    {
LABEL_26:
      if (v11 == a2 && v11 != a3)
      {
        v18 = v11->__r_.__value_.__s.__data_[0];
        switch(v18)
        {
          case '$':
            std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
            break;
          case '(':
            std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
            v19 = *(a1 + 28);
            ++*(a1 + 36);
            std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v11->__r_.__value_.__r.__words + 1, a3);
            if (v20 == a3 || (v11 = v20, *v20 != 41))
            {
              v22 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
              std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(v22);
              return;
            }

            std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v19);
            --*(a1 + 36);
            break;
          case '^':
            std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
            break;
          default:
            goto LABEL_37;
        }

        v11 = (v11 + 1);
      }

LABEL_37:
      if (v11 == a2)
      {
        return;
      }

      goto LABEL_38;
    }

    goto LABEL_22;
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v14);
  v11 = &a2->__r_.__value_.__s.__data_[2];
LABEL_38:
  v21 = (*(a1 + 28) + 1);

  std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v11, a3, v6, (v7 + 1), v21);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(std::basic_regex<char> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(std::basic_regex<char> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  if (a2 == a3)
  {
    return;
  }

  v6 = a6;
  v7 = a5;
  v10 = a1;
  v11 = *(a1 + 24) & 0x1F0;
  v12 = *a2;
  if (v12 > 0x3E)
  {
    if (v12 == 63)
    {
      v22 = a2 + 1;
      if (v11)
      {
        v23 = 1;
      }

      else
      {
        v23 = v22 == a3;
      }

      if (!v23 && *v22 == 63)
      {
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v19 = 1;
        goto LABEL_33;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v19 = 1;
      goto LABEL_45;
    }

    if (v12 != 123)
    {
      return;
    }

    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(a2 + 1, a3, &__max);
    if (v16 != v15)
    {
      if (v16 == a3)
      {
LABEL_57:
        v29 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
        std::basic_regex<char,std::regex_traits<char>>::__push_loop(v29, v30, v31, v32, v33, v34, v35);
        return;
      }

      v17 = *v16;
      if (v17 == 44)
      {
        v26 = v16 + 1;
        if (v16 + 1 != a3)
        {
          if (*v26 == 125)
          {
            v27 = v16 + 2;
            if (!v11 && v27 != a3 && *v27 == 63)
            {
              v14 = __max;
              a5 = v7;
              a6 = v6;
              a1 = v10;
              goto LABEL_26;
            }

            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
LABEL_36:
            v19 = -1;
            goto LABEL_45;
          }

          v36 = -1;
          v28 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v16 + 1, a3, &v36);
          if (v28 == v26 || v28 == a3 || *v28 != 125)
          {
            goto LABEL_57;
          }

          v19 = v36;
          v14 = __max;
          if (v36 >= __max)
          {
            v25 = 1;
            if (!v11 && v28 + 1 != a3)
            {
              v25 = v28[1] != 63;
            }

            a5 = v7;
            a6 = v6;
            a1 = v10;
            v24 = __s;
            goto LABEL_46;
          }
        }
      }

      else if (v17 == 125)
      {
        v18 = v16 + 1;
        if (!v11 && v18 != a3 && *v18 == 63)
        {
          v14 = __max;
          a5 = v7;
          a6 = v6;
          a1 = v10;
          v19 = __max;
LABEL_33:
          v24 = __s;
          v25 = 0;
LABEL_46:
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v19, v24, a5, a6, v25);
          return;
        }

        v14 = __max;
        a5 = v7;
        a6 = v6;
        a1 = v10;
        v19 = __max;
LABEL_45:
        v24 = __s;
        v25 = 1;
        goto LABEL_46;
      }
    }

    std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    goto LABEL_57;
  }

  if (v12 == 42)
  {
    v20 = a2 + 1;
    if (v11)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20 == a3;
    }

    if (!v21 && *v20 == 63)
    {
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_26;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_36;
  }

  if (v12 == 43)
  {
    v13 = a2 + 1;
    if (!v11 && v13 != a3 && *v13 == 63)
    {
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_26:
      v19 = -1;
      goto LABEL_33;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_36;
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(unsigned __int8 *result, unsigned __int8 *a2, int *a3)
{
  if (result != a2)
  {
    v3 = *result;
    if ((v3 & 0xF8) == 0x30 || (v3 & 0xFE) == 0x38)
    {
      v4 = v3 - 48;
      *a3 = v4;
      if (++result != a2)
      {
        do
        {
          v5 = *result;
          if ((v5 & 0xF8) != 0x30 && (v5 & 0xFE) != 0x38)
          {
            break;
          }

          if (v4 >= 214748364)
          {
            v6 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
            return std::__repeat_one_loop<char>::__exec(v6, v7);
          }

          v4 = v5 + 10 * v4 - 48;
          *a3 = v4;
          ++result;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

uint64_t std::__repeat_one_loop<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned int *std::__loop<char>::__exec_split(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return std::__loop<char>::__init_repeat[abi:nn200100](result, a3);
  }

  return result;
}

unsigned int *std::__loop<char>::__init_repeat[abi:nn200100](unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

unsigned int *std::__loop<char>::__exec(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return std::__loop<char>::__init_repeat[abi:nn200100](result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x20F331DC0);
}

uint64_t std::__end_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x20F331DC0);
}

void (__cdecl ***std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__begin_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x20F331DC0);
}

void (__cdecl ***std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x20F331DC0);
}

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x20F331DC0);
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

std::string *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(uint64_t a1, std::string *a2, std::string *a3)
{
  if (a2 != a3 && a2->__r_.__value_.__s.__data_[0] == 91)
  {
    if ((&a2->__r_.__value_.__l.__data_ + 1) == a3)
    {
      goto LABEL_243;
    }

    v5 = a2->__r_.__value_.__s.__data_[1] == 94 ? &a2->__r_.__value_.__s.__data_[2] : &a2->__r_.__value_.__l.__data_ + 1;
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2->__r_.__value_.__s.__data_[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_243;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v5 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:nn200100](started, 93);
      ++v5;
    }

    if (v5 != a3)
    {
      v8 = (v7 + 136);
      v83 = &a3[-1].__r_.__value_.__s.__data_[20];
      while (1)
      {
        v9 = v5;
        if (v5 == a3)
        {
          goto LABEL_15;
        }

        v10 = *v5;
        v9 = v5;
        if (v10 == 93)
        {
          goto LABEL_15;
        }

        memset(&v87, 0, sizeof(v87));
        if (v5 + 1 != a3 && v10 == 91)
        {
          v13 = v5[1];
          switch(v13)
          {
            case '.':
              v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v5 + 2, a3, &v87);
              v11 = (*(a1 + 24) & 0x1F0);
              size = HIBYTE(v87.__r_.__value_.__r.__words[2]);
              if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                size = v87.__r_.__value_.__l.__size_;
              }

              if (size)
              {
                goto LABEL_66;
              }

              goto LABEL_31;
            case ':':
              if (a3 - (v5 + 2) < 2)
              {
                goto LABEL_243;
              }

              v20 = v83 - v5;
              v15 = (v5 + 2);
              for (i = (v5 + 2); ; v15 = i)
              {
                v22 = i->__r_.__value_.__s.__data_[0];
                i = (i + 1);
                if (v22 == 58 && i->__r_.__value_.__s.__data_[0] == 93)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_243;
                }

                --v20;
              }

              if (v15 == a3)
              {
                goto LABEL_243;
              }

              v26 = *(a1 + 24);
              std::string::__init_with_size[abi:nn200100]<char *,char *>(&__dst, v5 + 2, v15, v15 - (v5 + 2));
              end_high = HIBYTE(__dst.__end_);
              if (SHIBYTE(__dst.__end_) >= 0)
              {
                p_dst = &__dst;
              }

              else
              {
                p_dst = __dst.__first_;
              }

              if (SHIBYTE(__dst.__end_) < 0)
              {
                end_high = __dst.__begin_;
              }

              (*(**(a1 + 8) + 48))(*(a1 + 8), p_dst, end_high + p_dst);
              if (SHIBYTE(__dst.__end_) >= 0)
              {
                first = &__dst;
              }

              else
              {
                first = __dst.__first_;
              }

              classname = std::__get_classname(first, v26 & 1);
              if (SHIBYTE(__dst.__end_) < 0)
              {
                operator delete(__dst.__first_);
              }

              if (!classname)
              {
                goto LABEL_245;
              }

              v31 = 0;
              *(v7 + 160) |= classname;
              goto LABEL_143;
            case '=':
              if (a3 - (v5 + 2) < 2)
              {
                goto LABEL_243;
              }

              v14 = v83 - v5;
              v15 = (v5 + 2);
              for (j = (v5 + 2); ; v15 = j)
              {
                v17 = j->__r_.__value_.__s.__data_[0];
                j = (j + 1);
                if (v17 == 61 && j->__r_.__value_.__s.__data_[0] == 93)
                {
                  break;
                }

                if (!v14)
                {
                  goto LABEL_243;
                }

                --v14;
              }

              if (v15 == a3)
              {
                goto LABEL_243;
              }

              std::regex_traits<char>::__lookup_collatename<char const*>(__p, a1, v5 + 2, v15);
              v24 = SHIBYTE(v91);
              if ((SHIBYTE(v91) & 0x8000000000000000) != 0)
              {
                v24 = __p[1];
                if (!__p[1])
                {
                  goto LABEL_244;
                }

                v25 = __p[0];
              }

              else
              {
                if (!HIBYTE(v91))
                {
                  goto LABEL_244;
                }

                v25 = __p;
              }

              std::string::__init_with_size[abi:nn200100]<char *,char *>(&__dst, v25, v25 + v24, v24);
              (*(**(a1 + 16) + 32))(__s);
              v38 = HIBYTE(v89);
              if (v89 < 0)
              {
                v38 = __s[1];
              }

              if (v38 != 1)
              {
                if (v38 == 12)
                {
                  v39 = __s;
                  if (v89 < 0)
                  {
                    v39 = __s[0];
                  }

                  *(v39 + 11) = *(v39 + 3);
                }

                else if (SHIBYTE(v89) < 0)
                {
                  *__s[0] = 0;
                  __s[1] = 0;
                }

                else
                {
                  LOBYTE(__s[0]) = 0;
                  HIBYTE(v89) = 0;
                }
              }

              if (SHIBYTE(__dst.__end_) < 0)
              {
                operator delete(__dst.__first_);
              }

              v40 = HIBYTE(v89);
              if (v89 < 0)
              {
                v40 = __s[1];
              }

              if (v40)
              {
                v42 = *(v7 + 144);
                v41 = *(v7 + 152);
                if (v42 >= v41)
                {
                  v46 = 0xAAAAAAAAAAAAAAABLL * ((v42 - *v8) >> 3);
                  v47 = v46 + 1;
                  if (v46 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    goto LABEL_247;
                  }

                  v48 = 0xAAAAAAAAAAAAAAABLL * ((v41 - *v8) >> 3);
                  if (2 * v48 > v47)
                  {
                    v47 = 2 * v48;
                  }

                  if (v48 >= 0x555555555555555)
                  {
                    v49 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v49 = v47;
                  }

                  __dst.__end_cap_.__value_ = (v7 + 136);
                  if (v49)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v49);
                  }

                  v52 = (24 * v46);
                  if (v89 < 0)
                  {
                    std::string::__init_copy_ctor_external(v52, __s[0], __s[1]);
                  }

                  else
                  {
                    v53 = *__s;
                    v52->__r_.__value_.__r.__words[2] = v89;
                    *&v52->__r_.__value_.__l.__data_ = v53;
                  }

                  v51 = v52 + 1;
                  v54 = *(v7 + 136);
                  v55 = *(v7 + 144) - v54;
                  v56 = v52 - v55;
                  memcpy(v52 - v55, v54, v55);
                  v57 = *(v7 + 136);
                  *(v7 + 136) = v56;
                  *(v7 + 144) = v52 + 1;
                  v58 = *(v7 + 152);
                  *(v7 + 152) = 0;
                  __dst.__end_ = v57;
                  __dst.__end_cap_.__value_ = v58;
                  __dst.__first_ = v57;
                  __dst.__begin_ = v57;
                  std::__split_buffer<std::string>::~__split_buffer(&__dst);
                }

                else
                {
                  if (SHIBYTE(v89) < 0)
                  {
                    std::string::__init_copy_ctor_external(*(v7 + 144), __s[0], __s[1]);
                  }

                  else
                  {
                    v43 = *__s;
                    *(v42 + 16) = v89;
                    *v42 = v43;
                  }

                  v51 = (v42 + 24);
                }

                *(v7 + 144) = v51;
              }

              else
              {
                v44 = HIBYTE(v91);
                if (SHIBYTE(v91) < 0)
                {
                  v44 = __p[1];
                }

                if (v44 == 2)
                {
                  v50 = __p;
                  if (SHIBYTE(v91) < 0)
                  {
                    v50 = __p[0];
                  }

                  std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:nn200100](v7, *v50, *(v50 + 1));
                }

                else
                {
                  if (v44 != 1)
                  {
                    goto LABEL_244;
                  }

                  v45 = __p;
                  if (SHIBYTE(v91) < 0)
                  {
                    v45 = __p[0];
                  }

                  std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:nn200100](v7, *v45);
                }
              }

              if (SHIBYTE(v89) < 0)
              {
                operator delete(__s[0]);
              }

              if (SHIBYTE(v91) < 0)
              {
                operator delete(__p[0]);
              }

              v31 = 0;
LABEL_143:
              v11 = &v15->__r_.__value_.__s.__data_[2];
              v35 = v5;
              goto LABEL_144;
          }
        }

        v11 = (*(a1 + 24) & 0x1F0);
        v9 = v5;
LABEL_31:
        if ((v11 | 0x40) != 0x40)
        {
          LOBYTE(v18) = v9->__r_.__value_.__s.__data_[0];
LABEL_36:
          std::string::operator=(&v87, v18);
          v9 = (v9 + 1);
          goto LABEL_66;
        }

        v18 = v9->__r_.__value_.__s.__data_[0];
        if (v18 != 92)
        {
          goto LABEL_36;
        }

        if (v11)
        {
          v19 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, &v9->__r_.__value_.__s.__data_[1], a3, &v87);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, &v9->__r_.__value_.__s.__data_[1], a3, &v87, v7);
        }

        v9 = v19;
LABEL_66:
        if (v9 == a3 || (v32 = v9->__r_.__value_.__s.__data_[0], v32 == 93) || (v34 = &v9->__r_.__value_.__s.__data_[1], (&v9->__r_.__value_.__l.__data_ + 1) == a3) || v32 != 45 || *v34 == 93)
        {
          if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
          {
            if (!v87.__r_.__value_.__l.__size_)
            {
              operator delete(v87.__r_.__value_.__l.__data_);
              goto LABEL_15;
            }

            if (v87.__r_.__value_.__l.__size_ != 1)
            {
              v33 = v87.__r_.__value_.__r.__words[0];
              goto LABEL_85;
            }

            v33 = v87.__r_.__value_.__r.__words[0];
          }

          else
          {
            if (!*(&v87.__r_.__value_.__s + 23))
            {
              goto LABEL_15;
            }

            v33 = &v87;
            if (HIBYTE(v87.__r_.__value_.__r.__words[2]) != 1)
            {
LABEL_85:
              std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:nn200100](v7, v33->__r_.__value_.__s.__data_[0], v33->__r_.__value_.__s.__data_[1]);
              goto LABEL_86;
            }
          }

          std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:nn200100](v7, v33->__r_.__value_.__s.__data_[0]);
LABEL_86:
          v31 = 1;
          v35 = v9;
          goto LABEL_144;
        }

        memset(&v86, 0, sizeof(v86));
        v35 = &v9->__r_.__value_.__s.__data_[2];
        if (&v9->__r_.__value_.__s.__data_[2] != a3 && *v34 == 91 && v35->__r_.__value_.__s.__data_[0] == 46)
        {
          v35 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, &v9->__r_.__value_.__s.__data_[3], a3, &v86);
          goto LABEL_151;
        }

        if ((v11 | 0x40) != 0x40)
        {
          LOBYTE(v34) = *v34;
LABEL_103:
          std::string::operator=(&v86, v34);
          goto LABEL_151;
        }

        LODWORD(v34) = *v34;
        if (v34 != 92)
        {
          goto LABEL_103;
        }

        v36 = &v9->__r_.__value_.__s.__data_[2];
        if (v11)
        {
          v37 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v36, a3, &v86);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v36, a3, &v86, v7);
        }

        v35 = v37;
LABEL_151:
        v85 = v87;
        v84 = v86;
        memset(&v86, 0, sizeof(v86));
        memset(&v87, 0, sizeof(v87));
        v11 = &v85;
        if (*(v7 + 170) != 1)
        {
          v63 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
          if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v63 = v85.__r_.__value_.__l.__size_;
          }

          if (v63 != 1)
          {
            goto LABEL_246;
          }

          v64 = HIBYTE(v84.__r_.__value_.__r.__words[2]);
          if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v64 = v84.__r_.__value_.__l.__size_;
          }

          if (v64 != 1)
          {
            goto LABEL_246;
          }

          if (*(v7 + 169) == 1)
          {
            if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v65 = &v85;
            }

            else
            {
              v65 = v85.__r_.__value_.__r.__words[0];
            }

            v66 = (*(**(v7 + 24) + 40))(*(v7 + 24), v65->__r_.__value_.__s.__data_[0]);
            if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v67 = &v85;
            }

            else
            {
              v67 = v85.__r_.__value_.__r.__words[0];
            }

            v67->__r_.__value_.__s.__data_[0] = v66;
            if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v68 = &v84;
            }

            else
            {
              v68 = v84.__r_.__value_.__r.__words[0];
            }

            v69 = (*(**(v7 + 24) + 40))(*(v7 + 24), v68->__r_.__value_.__s.__data_[0]);
            if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v70 = &v84;
            }

            else
            {
              v70 = v84.__r_.__value_.__r.__words[0];
            }

            v70->__r_.__value_.__s.__data_[0] = v69;
          }

          *&__dst.__first_ = *&v85.__r_.__value_.__l.__data_;
          __dst.__end_ = v85.__r_.__value_.__r.__words[2];
          memset(&v85, 0, sizeof(v85));
          __dst.__end_cap_ = *&v84.__r_.__value_.__l.__data_;
          v93 = v84.__r_.__value_.__r.__words[2];
          memset(&v84, 0, sizeof(v84));
          std::vector<std::pair<std::string,std::string>>::push_back[abi:nn200100]((v7 + 88), &__dst);
          if (SHIBYTE(v93) < 0)
          {
            operator delete(__dst.__end_cap_.__value_);
          }

          if ((SHIBYTE(__dst.__end_) & 0x80000000) == 0)
          {
            goto LABEL_228;
          }

          v71 = __dst.__first_;
          goto LABEL_227;
        }

        if (*(v7 + 169) == 1)
        {
          for (k = 0; ; ++k)
          {
            if ((SHIBYTE(v85.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
            {
              if (k >= v85.__r_.__value_.__l.__size_)
              {
LABEL_193:
                for (m = 0; ; ++m)
                {
                  if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                  {
                    if (m >= v84.__r_.__value_.__l.__size_)
                    {
                      goto LABEL_209;
                    }

                    v74 = v84.__r_.__value_.__r.__words[0];
                  }

                  else
                  {
                    if (m >= SHIBYTE(v84.__r_.__value_.__r.__words[2]))
                    {
                      goto LABEL_209;
                    }

                    v74 = &v84;
                  }

                  v75 = (*(**(v7 + 24) + 40))(*(v7 + 24), v74->__r_.__value_.__s.__data_[m]);
                  if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v76 = &v84;
                  }

                  else
                  {
                    v76 = v84.__r_.__value_.__r.__words[0];
                  }

                  v76->__r_.__value_.__s.__data_[m] = v75;
                }
              }

              v60 = v85.__r_.__value_.__r.__words[0];
            }

            else
            {
              if (k >= SHIBYTE(v85.__r_.__value_.__r.__words[2]))
              {
                goto LABEL_193;
              }

              v60 = &v85;
            }

            v61 = (*(**(v7 + 24) + 40))(*(v7 + 24), v60->__r_.__value_.__s.__data_[k]);
            if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v62 = &v85;
            }

            else
            {
              v62 = v85.__r_.__value_.__r.__words[0];
            }

            v62->__r_.__value_.__s.__data_[k] = v61;
          }
        }

        v72 = 0;
        if ((*(&v85.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          goto LABEL_190;
        }

        while (v72 < HIBYTE(v85.__r_.__value_.__r.__words[2]))
        {
          while (1)
          {
            ++v72;
            if ((*(&v85.__r_.__value_.__s + 23) & 0x80) == 0)
            {
              break;
            }

LABEL_190:
            if (v72 >= v85.__r_.__value_.__l.__size_)
            {
              goto LABEL_203;
            }
          }
        }

LABEL_203:
        v77 = 0;
        if ((*(&v84.__r_.__value_.__s + 23) & 0x80) == 0)
        {
LABEL_204:
          if (v77 >= HIBYTE(v84.__r_.__value_.__r.__words[2]))
          {
            goto LABEL_209;
          }

          goto LABEL_207;
        }

        while (v77 < v84.__r_.__value_.__l.__size_)
        {
LABEL_207:
          ++v77;
          if ((*(&v84.__r_.__value_.__s + 23) & 0x80) == 0)
          {
            goto LABEL_204;
          }
        }

LABEL_209:
        v78 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
        if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v79 = &v85;
        }

        else
        {
          v79 = v85.__r_.__value_.__r.__words[0];
        }

        if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v78 = v85.__r_.__value_.__l.__size_;
        }

        std::regex_traits<char>::transform<char *>(__p, v7 + 16, v79, v79 + v78);
        v80 = HIBYTE(v84.__r_.__value_.__r.__words[2]);
        if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v81 = &v84;
        }

        else
        {
          v81 = v84.__r_.__value_.__r.__words[0];
        }

        if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v80 = v84.__r_.__value_.__l.__size_;
        }

        std::regex_traits<char>::transform<char *>(__s, v7 + 16, v81, v81 + v80);
        *&__dst.__first_ = *__p;
        __dst.__end_ = v91;
        __p[1] = 0;
        v91 = 0;
        __dst.__end_cap_ = *__s;
        v93 = v89;
        __s[0] = 0;
        __s[1] = 0;
        v89 = 0;
        __p[0] = 0;
        std::vector<std::pair<std::string,std::string>>::push_back[abi:nn200100]((v7 + 88), &__dst);
        if (SHIBYTE(v93) < 0)
        {
          operator delete(__dst.__end_cap_.__value_);
        }

        if (SHIBYTE(__dst.__end_) < 0)
        {
          operator delete(__dst.__first_);
        }

        if (SHIBYTE(v89) < 0)
        {
          operator delete(__s[0]);
        }

        if ((SHIBYTE(v91) & 0x80000000) == 0)
        {
          goto LABEL_228;
        }

        v71 = __p[0];
LABEL_227:
        operator delete(v71);
LABEL_228:
        if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v84.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v86.__r_.__value_.__l.__data_);
        }

        v31 = 1;
LABEL_144:
        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v87.__r_.__value_.__l.__data_);
          v9 = v35;
          if ((v31 & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v9 = v35;
          if (!v31)
          {
            goto LABEL_16;
          }
        }

LABEL_15:
        v11 = v9;
LABEL_16:
        v12 = v11 == v5;
        v5 = v11;
        if (v12)
        {
          goto LABEL_236;
        }
      }
    }

    v11 = v5;
LABEL_236:
    if (v11 == a3)
    {
      goto LABEL_243;
    }

    if (v11->__r_.__value_.__s.__data_[0] == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:nn200100](v7, 45);
      v11 = (v11 + 1);
    }

    if (v11 == a3 || v11->__r_.__value_.__s.__data_[0] != 93)
    {
LABEL_243:
      std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
LABEL_244:
      std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
LABEL_245:
      std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
LABEL_246:
      std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
LABEL_247:
      std::string::__throw_length_error[abi:nn200100]();
    }

    return (&v11->__r_.__value_.__l.__data_ + 1);
  }

  return a2;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:nn200100](uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    std::vector<char>::push_back[abi:nn200100](v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  std::vector<char>::push_back[abi:nn200100](a1 + 40, &v7);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(uint64_t a1, _BYTE *__src, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - __src - 2;
  if (a3 - __src < 2)
  {
    goto LABEL_14;
  }

  v6 = __src;
  for (i = __src; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_14:
    std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
  }

  else
  {
    std::regex_traits<char>::__lookup_collatename<char const*>(&v17, a1, __src, v6);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v17;
    v9 = v18;
    *(a4 + 16) = v18;
    v10 = HIBYTE(v9);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a4 + 8);
    }

    if (v10 - 1 < 2)
    {
      return v6 + 2;
    }
  }

  v12 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
  return std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(v12, v13, v14, v15, v16);
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(std::basic_regex<char> *a1, std::string::value_type *a2, std::string::value_type *a3, std::string *this, uint64_t a5)
{
  if (a2 == a3)
  {
    v13 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(v13, v14, v15, v16);
    return;
  }

  v6 = *a2;
  if (v6 <= 0x61)
  {
    if (*a2 > 0x52u)
    {
      if (v6 == 83)
      {
        v7 = *(a5 + 164) | 0x4000;
        goto LABEL_22;
      }

      if (v6 == 87)
      {
        *(a5 + 164) |= 0x500u;
        v19 = 95;
        if (*(a5 + 169) == 1)
        {
          v18 = (*(**(a5 + 24) + 40))(*(a5 + 24), 95);
          v9 = a5 + 64;
          v10 = &v18;
        }

        else
        {
          if (*(a5 + 170) != 1)
          {
            std::vector<char>::push_back[abi:nn200100](a5 + 64, &v19);
            return;
          }

          v17 = 95;
          v9 = a5 + 64;
          v10 = &v17;
        }

        std::vector<char>::push_back[abi:nn200100](v9, v10);
        return;
      }

      goto LABEL_25;
    }

    if (*a2)
    {
      if (v6 == 68)
      {
        v7 = *(a5 + 164) | 0x400;
LABEL_22:
        *(a5 + 164) = v7;
        return;
      }

      goto LABEL_25;
    }

    v11 = this;
    v12 = 0;
LABEL_20:
    std::string::operator=(v11, v12);
    return;
  }

  if (*a2 > 0x72u)
  {
    if (v6 == 115)
    {
      v8 = *(a5 + 160) | 0x4000;
      goto LABEL_24;
    }

    if (v6 == 119)
    {
      *(a5 + 160) |= 0x500u;
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:nn200100](a5, 95);
      return;
    }
  }

  else
  {
    if (v6 == 98)
    {
      v11 = this;
      v12 = 8;
      goto LABEL_20;
    }

    if (v6 == 100)
    {
      v8 = *(a5 + 160) | 0x400;
LABEL_24:
      *(a5 + 160) = v8;
      return;
    }
  }

LABEL_25:

  std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, a2, a3, this);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  if (a2 == a3)
  {
    goto LABEL_51;
  }

  v5 = *a2;
  if (v5 > 0x65u)
  {
    if (v5 <= 0x71u)
    {
      if (v5 == 102)
      {
        if (this)
        {
          v6 = this;
          v5 = 12;
          goto LABEL_31;
        }

        v5 = 12;
        goto LABEL_47;
      }

      if (v5 == 110)
      {
        if (this)
        {
          v6 = this;
          v5 = 10;
          goto LABEL_31;
        }

        v5 = 10;
        goto LABEL_47;
      }
    }

    else
    {
      switch(v5)
      {
        case 'r':
          if (this)
          {
            v6 = this;
            v5 = 13;
            goto LABEL_31;
          }

          v5 = 13;
          goto LABEL_47;
        case 't':
          if (this)
          {
            v6 = this;
            v5 = 9;
            goto LABEL_31;
          }

          v5 = 9;
          goto LABEL_47;
        case 'v':
          if (this)
          {
            v6 = this;
            v5 = 11;
            goto LABEL_31;
          }

          v5 = 11;
LABEL_47:
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
          return a2 + 1;
      }
    }

    goto LABEL_32;
  }

  if (v5 > 0x5Bu)
  {
    if (v5 != 92)
    {
      if (v5 == 97)
      {
        if (this)
        {
          v6 = this;
          v5 = 7;
          goto LABEL_31;
        }

        v5 = 7;
        goto LABEL_47;
      }

      if (v5 == 98)
      {
        if (this)
        {
          v6 = this;
          v5 = 8;
LABEL_31:
          std::string::operator=(v6, v5);
          return a2 + 1;
        }

        v5 = 8;
        goto LABEL_47;
      }

      goto LABEL_32;
    }

LABEL_17:
    if (this)
    {
      v6 = this;
      goto LABEL_31;
    }

    goto LABEL_47;
  }

  if (v5 == 34 || v5 == 47)
  {
    goto LABEL_17;
  }

LABEL_32:
  if ((v5 & 0xFFFFFFF8) == 0x30)
  {
    v7 = v5 - 48;
    v8 = a2 + 1;
    if (a2 + 1 != a3 && (*v8 & 0xF8) == 0x30)
    {
      v7 = *v8 + 8 * v7 - 48;
      v8 = a2 + 2;
      if (a2 + 2 != a3)
      {
        v9 = *v8 + 8 * v7 - 48;
        if ((*v8 & 0xF8) == 0x30)
        {
          v8 = a2 + 3;
          v7 = v9;
        }
      }
    }

    if (this)
    {
      std::string::operator=(this, v7);
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
    }

    return v8;
  }

LABEL_51:
  v11 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
  return std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:nn200100](v11, v12, v13);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:nn200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24), a2);
    v11 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v6 = a1 + 112;
    v7 = &v11;
  }

  else
  {
    v8 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v10 = v8;
      v6 = a1 + 112;
      v7 = &v10;
    }

    else
    {
      v9 = v8;
      v6 = a1 + 112;
      v7 = &v9;
    }
  }

  std::vector<std::pair<char,char>>::push_back[abi:nn200100](v6, v7);
}

void std::vector<std::pair<char,char>>::push_back[abi:nn200100](uint64_t a1, __int16 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= -2)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = (2 * v8);
    v13 = &v12[-(v7 >> 1)];
    *v12 = *a2;
    v5 = v12 + 1;
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void std::vector<std::pair<std::string,std::string>>::push_back[abi:nn200100](void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x555555555555555)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = 48 * v8;
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *a2 = 0uLL;
    v13 = *(a2 + 24);
    a2[1] = 0uLL;
    *(v12 + 40) = *(a2 + 5);
    a2[2] = 0uLL;
    v7 = (48 * v8 + 48);
    v14 = *a1;
    v15 = a1[1] - *a1;
    *(v12 + 24) = v13;
    v16 = (48 * v8 - v15);
    memcpy((v12 - v15), v14, v15);
    *a1 = v16;
    a1[1] = v7;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    v7 = v3 + 48;
  }

  a1[1] = v7;
}

void std::allocator<std::pair<std::string,std::string>>::destroy[abi:nn200100](uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__push_char(std::basic_regex<char> *this, std::basic_regex<char>::value_type __c)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t std::__match_char<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x20F331DC0);
}

void (__cdecl ***std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__match_char_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2825BED10;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x20F331DC0);
}

std::locale *std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2825BED10;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

void std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2825BECE0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x20F331DC0);
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2825BECE0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(std::basic_regex<char> *a1, std::string::value_type *a2, std::string::value_type *a3, std::string *this)
{
  v4 = a2;
  if (a2 != a3)
  {
    v5 = *a2;
    if (*a2 <= 0x71u)
    {
      if (*a2 <= 0x65u)
      {
        if (v5 != 48)
        {
          if (v5 != 99)
          {
            if (v5 == 95)
            {
              goto LABEL_67;
            }

            goto LABEL_60;
          }

          if (a2 + 1 == a3)
          {
            goto LABEL_67;
          }

          v6 = a2[1];
          if (((v6 & 0xDF) - 65) > 0x19u)
          {
            goto LABEL_67;
          }

          v7 = v6 & 0x1F;
          if (this)
          {
LABEL_14:
            std::string::operator=(this, v7);
            return;
          }

LABEL_51:
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
          return;
        }

        if (this)
        {
          v8 = this;
          v9 = 0;
          goto LABEL_64;
        }

        v9 = 0;
        goto LABEL_65;
      }

      if (v5 == 102)
      {
        if (this)
        {
          v8 = this;
          v9 = 12;
          goto LABEL_64;
        }

        v9 = 12;
        goto LABEL_65;
      }

      if (v5 == 110)
      {
        if (!this)
        {
          v9 = 10;
          goto LABEL_65;
        }

        v8 = this;
        v9 = 10;
        goto LABEL_64;
      }
    }

    else
    {
      if (*a2 > 0x74u)
      {
        if (v5 == 117)
        {
          if (a2 + 1 == a3)
          {
            goto LABEL_67;
          }

          v10 = a2[1];
          if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38 && (v10 | 0x20u) - 97 >= 6)
          {
            goto LABEL_67;
          }

          v4 = a2 + 2;
          if (a2 + 2 == a3)
          {
            goto LABEL_67;
          }

          v11 = *v4;
          if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38 && (v11 | 0x20u) - 97 >= 6)
          {
            goto LABEL_67;
          }

          goto LABEL_37;
        }

        if (v5 != 118)
        {
          if (v5 != 120)
          {
            goto LABEL_60;
          }

LABEL_37:
          if (v4 + 1 == a3)
          {
            goto LABEL_67;
          }

          v12 = v4[1];
          v13 = -48;
          if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
          {
            v12 |= 0x20u;
            if ((v12 - 97) >= 6u)
            {
              goto LABEL_67;
            }

            v13 = -87;
          }

          if (v4 + 2 == a3)
          {
            goto LABEL_67;
          }

          v14 = v4[2];
          v15 = -48;
          if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
          {
            v14 |= 0x20u;
            if ((v14 - 97) >= 6u)
            {
              goto LABEL_67;
            }

            v15 = -87;
          }

          v7 = v15 + v14 + 16 * (v13 + v12);
          if (this)
          {
            goto LABEL_14;
          }

          goto LABEL_51;
        }

        if (this)
        {
          v8 = this;
          v9 = 11;
          goto LABEL_64;
        }

        v9 = 11;
LABEL_65:
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v9);
        return;
      }

      if (v5 == 114)
      {
        if (!this)
        {
          v9 = 13;
          goto LABEL_65;
        }

        v8 = this;
        v9 = 13;
LABEL_64:
        std::string::operator=(v8, v9);
        return;
      }

      if (v5 == 116)
      {
        if (!this)
        {
          v9 = 9;
          goto LABEL_65;
        }

        v8 = this;
        v9 = 9;
        goto LABEL_64;
      }
    }

LABEL_60:
    if ((v5 & 0x80) != 0 || (a1->__traits_.__ct_->__tab_[v5] & 0x500) == 0)
    {
      v9 = *a2;
      if (this)
      {
        v8 = this;
        goto LABEL_64;
      }

      goto LABEL_65;
    }

LABEL_67:
    v16 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    std::vector<char>::push_back[abi:nn200100](v16, v17);
  }
}

void std::vector<char>::push_back[abi:nn200100](uint64_t a1, char *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void std::regex_traits<char>::__lookup_collatename<char const*>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:nn200100]<char *,char *>(&__s, __src, a4, a4 - __src);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a1 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a2 + 16) + 32))(&v11);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v11;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v9 = *(a1 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a1 = 0;
      *(a1 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a1 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a1, &__s);
    goto LABEL_9;
  }

  **a1 = 0;
  *(a1 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v9 = 0;
    negate = this->__negate_;
    goto LABEL_87;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_64;
  }

  LOBYTE(__src) = *current;
  v6 = current[1];
  HIBYTE(__src) = current[1];
  if (this->__icase_)
  {
    LOBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    HIBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  *(&__s.__r_.__value_.__s + 23) = 2;
  LOWORD(__s.__r_.__value_.__l.__data_) = __src;
  __s.__r_.__value_.__s.__data_[2] = 0;
  std::__get_collation_name(&v113, &__s);
  __p = v113;
  size = HIBYTE(v113.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(v113.__r_.__value_.__r.__words[2]);
  if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v113.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    goto LABEL_14;
  }

  (*(*this->__traits_.__col_ + 32))(&v113);
  if (v8 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v113;
  if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v113.__r_.__value_.__r.__words[2]) != 12 && HIBYTE(v113.__r_.__value_.__r.__words[2]) != 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_178;
  }

  if (__p.__r_.__value_.__l.__size_ == 1 || __p.__r_.__value_.__l.__size_ == 12)
  {
LABEL_178:
    std::string::operator=(&__p, &__s);
    goto LABEL_9;
  }

  *__p.__r_.__value_.__l.__data_ = 0;
  __p.__r_.__value_.__l.__size_ = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_14:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_16;
    }

LABEL_64:
    negate = 0;
    v9 = 1;
    goto LABEL_65;
  }

  v39 = __p.__r_.__value_.__l.__size_;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v39)
  {
    goto LABEL_64;
  }

LABEL_16:
  begin = this->__digraphs_.__begin_;
  v12 = this->__digraphs_.__end_ - begin;
  if (v12)
  {
    v13 = v12 >> 1;
    if ((v12 >> 1) <= 1)
    {
      v13 = 1;
    }

    p_second = &begin->second;
    while (__src != *(p_second - 1) || HIBYTE(__src) != *p_second)
    {
      p_second += 2;
      if (!--v13)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_231;
  }

LABEL_25:
  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    p_s = &__s;
    std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &__src, &v113);
    v17 = this->__ranges_.__begin_;
    v18 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    v19 = this->__ranges_.__end_ - v17;
    if (v19)
    {
      v20 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 4);
      v108 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21 = __s.__r_.__value_.__l.__size_;
      }

      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_s = __s.__r_.__value_.__r.__words[0];
      }

      v22 = v20 <= 1 ? 1 : 0xAAAAAAAAAAAAAAABLL * (v19 >> 4);
      v23 = &v17->second.__r_.__value_.__r.__words[2] + 7;
      v24 = 1;
      v25 = 1;
      while (1)
      {
        v26 = *(v23 - 24);
        if (v26 >= 0)
        {
          v27 = *(v23 - 24);
        }

        else
        {
          v27 = *(v23 - 39);
        }

        if (v26 >= 0)
        {
          v28 = (v23 - 47);
        }

        else
        {
          v28 = *(v23 - 47);
        }

        if (v27 >= v21)
        {
          v29 = v21;
        }

        else
        {
          v29 = v27;
        }

        v30 = memcmp(p_s, v28, v29);
        v31 = v21 >= v27;
        if (v30)
        {
          v31 = v30 >= 0;
        }

        if (v31)
        {
          v32 = *v23;
          if (v32 >= 0)
          {
            v33 = *v23;
          }

          else
          {
            v33 = *(v23 - 15);
          }

          if (v32 >= 0)
          {
            v34 = (v23 - 23);
          }

          else
          {
            v34 = *(v23 - 23);
          }

          if (v21 >= v33)
          {
            v35 = v33;
          }

          else
          {
            v35 = v21;
          }

          v36 = memcmp(v34, p_s, v35);
          v37 = v33 >= v21;
          if (v36)
          {
            v37 = v36 >= 0;
          }

          if (v37)
          {
            break;
          }
        }

        v25 = v24++ < v20;
        v23 += 48;
        if (!--v22)
        {
          v38 = 0;
          goto LABEL_181;
        }
      }

      v38 = 5;
LABEL_181:
      v18 = v108;
    }

    else
    {
      v25 = 0;
      v38 = 0;
    }

    if (v18 < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (v25)
    {
      v88 = 1;
      goto LABEL_211;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    v88 = 0;
    goto LABEL_213;
  }

  v89 = &__s;
  std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &__src, &v113);
  v90 = this->__equivalences_.__begin_;
  v91 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v92 = this->__equivalences_.__end_ - v90;
  if (v92)
  {
    v93 = 0xAAAAAAAAAAAAAAABLL * (v92 >> 3);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v94 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v94 = __s.__r_.__value_.__l.__size_;
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v89 = __s.__r_.__value_.__r.__words[0];
    }

    if (v93 <= 1)
    {
      v95 = 1;
    }

    else
    {
      v95 = 0xAAAAAAAAAAAAAAABLL * (v92 >> 3);
    }

    v96 = 1;
    v97 = 1;
    while (1)
    {
      v98 = HIBYTE(v90->__r_.__value_.__r.__words[2]);
      v99 = v98;
      if ((v98 & 0x80u) != 0)
      {
        v98 = v90->__r_.__value_.__l.__size_;
      }

      if (v94 == v98)
      {
        v100 = v99 >= 0 ? v90 : v90->__r_.__value_.__r.__words[0];
        if (!memcmp(v89, v100, v94))
        {
          break;
        }
      }

      v97 = v96++ < v93;
      ++v90;
      if (!--v95)
      {
        goto LABEL_208;
      }
    }

    v88 = 1;
    v38 = 5;
    if (v91 < 0)
    {
LABEL_209:
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v97 = 0;
LABEL_208:
    v38 = 0;
    v88 = 0;
    if (v91 < 0)
    {
      goto LABEL_209;
    }
  }

  if (!v97)
  {
LABEL_213:
    if (__src < 0)
    {
      neg_mask = this->__neg_mask_;
    }

    else
    {
      mask = this->__mask_;
      tab = this->__traits_.__ct_->__tab_;
      v103 = tab[__src];
      if (((v103 & mask) != 0 || __src == 95 && (mask & 0x80) != 0) && (SHIBYTE(__src) & 0x8000000000000000) == 0 && ((tab[SHIBYTE(__src)] & mask) != 0 || (mask & 0x80) != 0 && SHIBYTE(__src) == 95))
      {
        goto LABEL_231;
      }

      neg_mask = this->__neg_mask_;
      if ((v103 & neg_mask) != 0 || __src == 95 && (neg_mask & 0x80) != 0)
      {
LABEL_230:
        negate = v88;
LABEL_232:
        v9 = 2;
        goto LABEL_87;
      }
    }

    if ((SHIBYTE(__src) & 0x8000000000000000) == 0)
    {
      if ((this->__traits_.__ct_->__tab_[SHIBYTE(__src)] & neg_mask) == 0)
      {
        negate = 1;
        if (SHIBYTE(__src) != 95 || (neg_mask & 0x80) == 0)
        {
          goto LABEL_232;
        }
      }

      goto LABEL_230;
    }

LABEL_231:
    negate = 1;
    goto LABEL_232;
  }

LABEL_211:
  v9 = 2;
  negate = v88;
  if (v38)
  {
    goto LABEL_87;
  }

LABEL_65:
  v40 = *a2->__current_;
  v113.__r_.__value_.__s.__data_[0] = *a2->__current_;
  if (this->__icase_)
  {
    LODWORD(v40) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v40);
    v113.__r_.__value_.__s.__data_[0] = v40;
  }

  v41 = this->__chars_.__begin_;
  v42 = this->__chars_.__end_ - v41;
  if (v42)
  {
    if (v42 <= 1)
    {
      v42 = 1;
    }

    do
    {
      v43 = *v41++;
      if (v43 == v40)
      {
        goto LABEL_86;
      }
    }

    while (--v42);
  }

  v44 = this->__neg_mask_;
  if (v44 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v40 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v40] & v44) == 0)
    {
      v45 = (v40 == 95) & (v44 >> 7);
    }

    else
    {
      LOBYTE(v45) = 1;
    }

    end = this->__neg_chars_.__end_;
    v47 = memchr(this->__neg_chars_.__begin_, v40, end - this->__neg_chars_.__begin_);
    v48 = !v47 || v47 == end;
    v49 = !v48;
    if ((v45 & 1) == 0 && !v49)
    {
LABEL_86:
      negate = 1;
      goto LABEL_87;
    }
  }

  v52 = this->__ranges_.__begin_;
  v53 = this->__ranges_.__end_;
  if (v52 != v53)
  {
    if (this->__collate_)
    {
      std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &v113, &v113.__r_.__value_.__s.__data_[1]);
      v52 = this->__ranges_.__begin_;
      v53 = this->__ranges_.__end_;
      v54 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v54 = 1;
      *(&__s.__r_.__value_.__s + 23) = 1;
      LOWORD(__s.__r_.__value_.__l.__data_) = v40;
    }

    v55 = v53 - v52;
    if (v55)
    {
      v109 = v9;
      v105 = negate;
      v106 = v54;
      v56 = 0xAAAAAAAAAAAAAAABLL * (v55 >> 4);
      if ((v54 & 0x80u) == 0)
      {
        v57 = v54;
      }

      else
      {
        v57 = __s.__r_.__value_.__l.__size_;
      }

      if ((v54 & 0x80u) == 0)
      {
        v58 = &__s;
      }

      else
      {
        v58 = __s.__r_.__value_.__r.__words[0];
      }

      if (v56 <= 1)
      {
        v59 = 1;
      }

      else
      {
        v59 = 0xAAAAAAAAAAAAAAABLL * (v55 >> 4);
      }

      v60 = &v52->second.__r_.__value_.__r.__words[2] + 7;
      v61 = 1;
      v62 = 1;
      while (1)
      {
        v63 = *(v60 - 24);
        if (v63 >= 0)
        {
          v64 = *(v60 - 24);
        }

        else
        {
          v64 = *(v60 - 39);
        }

        if (v63 >= 0)
        {
          v65 = (v60 - 47);
        }

        else
        {
          v65 = *(v60 - 47);
        }

        if (v64 >= v57)
        {
          v66 = v57;
        }

        else
        {
          v66 = v64;
        }

        v67 = memcmp(v58, v65, v66);
        v68 = v57 >= v64;
        if (v67)
        {
          v68 = v67 >= 0;
        }

        if (v68)
        {
          v69 = *v60;
          if (v69 >= 0)
          {
            v70 = *v60;
          }

          else
          {
            v70 = *(v60 - 15);
          }

          if (v69 >= 0)
          {
            v71 = (v60 - 23);
          }

          else
          {
            v71 = *(v60 - 23);
          }

          if (v57 >= v70)
          {
            v72 = v70;
          }

          else
          {
            v72 = v57;
          }

          v73 = memcmp(v71, v58, v72);
          v74 = v70 >= v57;
          if (v73)
          {
            v74 = v73 >= 0;
          }

          if (v74)
          {
            break;
          }
        }

        v62 = v61++ < v56;
        v60 += 48;
        if (!--v59)
        {
          negate = v105;
          goto LABEL_142;
        }
      }

      negate = 1;
LABEL_142:
      v9 = v109;
      if ((v106 & 0x80) == 0)
      {
LABEL_144:
        if (v62)
        {
          goto LABEL_87;
        }

        goto LABEL_145;
      }
    }

    else
    {
      v62 = 0;
      if ((v54 & 0x80) == 0)
      {
        goto LABEL_144;
      }
    }

    operator delete(__s.__r_.__value_.__l.__data_);
    goto LABEL_144;
  }

LABEL_145:
  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    goto LABEL_171;
  }

  v75 = &__s;
  std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &v113, &v113.__r_.__value_.__s.__data_[1]);
  v76 = this->__equivalences_.__begin_;
  v77 = this->__equivalences_.__end_ - v76;
  if (!v77)
  {
    v82 = 0;
    if ((*(&__s.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_170;
    }

    goto LABEL_169;
  }

  v107 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v110 = v9;
  v78 = 0xAAAAAAAAAAAAAAABLL * (v77 >> 3);
  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v79 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v79 = __s.__r_.__value_.__l.__size_;
  }

  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v75 = __s.__r_.__value_.__r.__words[0];
  }

  if (v78 <= 1)
  {
    v80 = 1;
  }

  else
  {
    v80 = 0xAAAAAAAAAAAAAAABLL * (v77 >> 3);
  }

  v81 = 1;
  v82 = 1;
  while (1)
  {
    v83 = HIBYTE(v76->__r_.__value_.__r.__words[2]);
    v84 = v83;
    if ((v83 & 0x80u) != 0)
    {
      v83 = v76->__r_.__value_.__l.__size_;
    }

    if (v79 == v83)
    {
      v85 = v84 >= 0 ? v76 : v76->__r_.__value_.__r.__words[0];
      if (!memcmp(v75, v85, v79))
      {
        break;
      }
    }

    v82 = v81++ < v78;
    ++v76;
    if (!--v80)
    {
      goto LABEL_168;
    }
  }

  negate = 1;
LABEL_168:
  v9 = v110;
  if (v107 < 0)
  {
LABEL_169:
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_170:
  if (v82)
  {
    goto LABEL_87;
  }

LABEL_171:
  v86 = this->__mask_;
  if ((v113.__r_.__value_.__s.__data_[0] & 0x8000000000000000) == 0 && (this->__traits_.__ct_->__tab_[v113.__r_.__value_.__s.__data_[0]] & v86) != 0)
  {
    goto LABEL_86;
  }

  v87 = (v86 >> 7) & 1;
  if (v113.__r_.__value_.__s.__data_[0] != 95)
  {
    LOBYTE(v87) = 0;
  }

  negate |= v87;
LABEL_87:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v51 = -993;
  }

  else
  {
    a2->__current_ += v9;
    first = this->__first_;
    v51 = -995;
  }

  a2->__do_ = v51;
  a2->__node_ = first;
}

void std::regex_traits<char>::transform<char *>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:nn200100]<char *,char *>(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void std::regex_traits<char>::__transform_primary<char *>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:nn200100]<char *,char *>(__p, __src, a4, a4 - __src);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v7, v7 + v6);
  v8 = *(a1 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void *std::string::__init_with_size[abi:nn200100]<char *,char *>(void *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  *(__dst + 23) = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  *(v4 + v5) = 0;
  return __dst;
}

void std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(a1);

  JUMPOUT(0x20F331DC0);
}

std::locale *std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  v10 = &a1[17];
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v10);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v3 = a1[11].__locale_;
  if (v3)
  {
    v4 = a1[12].__locale_;
    v5 = a1[11].__locale_;
    if (v4 != v3)
    {
      do
      {
        v4 = (v4 - 48);
        std::allocator<std::pair<std::string,std::string>>::destroy[abi:nn200100](v4);
      }

      while (v4 != v3);
      v5 = a1[11].__locale_;
    }

    a1[12].__locale_ = v3;
    operator delete(v5);
  }

  v6 = a1[8].__locale_;
  if (v6)
  {
    a1[9].__locale_ = v6;
    operator delete(v6);
  }

  v7 = a1[5].__locale_;
  if (v7)
  {
    a1[6].__locale_ = v7;
    operator delete(v7);
  }

  std::locale::~locale(a1 + 2);
  v8 = a1[1].__locale_;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return a1;
}

uint64_t std::__match_any<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x20F331DC0);
}

void (__cdecl ***std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

BOOL std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(std::basic_regex<char> *this, char a2)
{
  if ((a2 & 0xF8) != 0x30 && (a2 & 0xFE) != 0x38 || a2 - 49 > 8)
  {
    return 0;
  }

  if (a2 - 48 > this->__marked_count_)
  {
    v3 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(v3, v4);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(this, a2 - 48);
    return 1;
  }

  return result;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(std::basic_regex<char> *this, int __i)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void std::__back_ref<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    v10 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    std::__back_ref<char>::~__back_ref(v10);
  }

  else
  {
    v5 = v3 + 24 * (v2 - 1);
    if (*(v5 + 16) == 1 && (v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && !memcmp(*v5, *(a2 + 16), v7))
    {
      *a2 = -994;
      *(a2 + 16) = v8 + v7;
      v9 = *(result + 8);
    }

    else
    {
      v9 = 0;
      *a2 = -993;
    }

    *(a2 + 80) = v9;
  }
}

void std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x20F331DC0);
}

void (__cdecl ***std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__back_ref_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      if (v4 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v7 = v4;
      v8 = *(a2 + 16);
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v8++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v7)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2825BEDA0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x20F331DC0);
}

std::locale *std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2825BEDA0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t std::__back_ref_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v8 = 0;
      while (1)
      {
        v9 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v8));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v8));
        if (v9 != result)
        {
          break;
        }

        if (v4 == ++v8)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2825BED70;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x20F331DC0);
}

std::locale *std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2825BED70;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

std::string *std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(std::basic_regex<char> *a1, std::string *a2, std::string *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v9 = (&a2->__r_.__value_.__l.__data_ + 1);
  v8 = a2->__r_.__value_.__s.__data_[0];
  if ((&a2->__r_.__value_.__l.__data_ + 1) == a3 && v8 == 36 || ((v8 - 46) <= 0x2E ? (v10 = ((1 << (v8 - 46)) & 0x600000000001) == 0) : (v10 = 1), !v10))
  {
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(a1, a2, a3);
    v9 = v11;
    if (v11 == v3)
    {
      if (v11->__r_.__value_.__s.__data_[0] == 46)
      {
        operator new();
      }

      v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, v3, a3);
    }

    if (v9 == v3 && v9 != a3 && (&v9->__r_.__value_.__l.__data_ + 1) != a3 && v9->__r_.__value_.__s.__data_[0] == 92)
    {
      v12 = v9->__r_.__value_.__s.__data_[1];
      if (v12 == 40)
      {
        v13 = &v9->__r_.__value_.__s.__data_[2];
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
        v14 = a1->__marked_count_;
        do
        {
          v15 = v13;
          v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(a1, v13, a3);
          v13 = v16;
        }

        while (v16 != v15);
        if (v15 == a3 || (v16 + 1) == a3 || *v16 != 92 || *(v16 + 1) != 41)
        {
          std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
          goto LABEL_54;
        }

        v9 = (v16 + 2);
        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v14);
      }

      else
      {
        v17 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v12);
        v18 = 2;
        if (!v17)
        {
          v18 = 0;
        }

        v9 = (v9 + v18);
      }
    }

    if (v9 == v3)
    {
      return v3;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  }

  if (v9 == a3)
  {
    return v9;
  }

  v19 = a1->__marked_count_ + 1;
  v20 = v9->__r_.__value_.__s.__data_[0];
  if (v20 == 42)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, end, marked_count + 1, a1->__marked_count_ + 1, 1);
    return (&v9->__r_.__value_.__l.__data_ + 1);
  }

  if ((&v9->__r_.__value_.__l.__data_ + 1) == a3 || v20 != 92 || v9->__r_.__value_.__s.__data_[1] != 123)
  {
    return v9;
  }

  LODWORD(__max) = 0;
  v21 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(&v9->__r_.__value_.__s.__data_[2], a3, &__max);
  if (v21 == &v9->__r_.__value_.__s.__data_[2])
  {
    goto LABEL_55;
  }

  if (v21 == a3)
  {
    goto LABEL_54;
  }

  v22 = (&v21->__r_.__value_.__l.__data_ + 1);
  v23 = v21->__r_.__value_.__s.__data_[0];
  if (v23 != 44)
  {
    if (v22 != a3 && v23 == 92 && v22->__r_.__value_.__s.__data_[0] == 125)
    {
      v3 = &v21->__r_.__value_.__s.__data_[2];
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, __max, __max, end, marked_count + 1, v19, 1);
      return v3;
    }

    goto LABEL_54;
  }

  v34 = -1;
  v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(&v21->__r_.__value_.__s.__data_[1], a3, &v34);
  if (v24 == a3 || (v25 = v24, v24 + 1 == a3) || *v24 != 92 || (v26 = v24[1], v27 = v26 == 125, v26 != 125))
  {
LABEL_54:
    std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    goto LABEL_55;
  }

  v28 = v34;
  if (v34 == -1)
  {
    v29 = a1;
    v28 = -1;
    goto LABEL_52;
  }

  if (v34 >= __max)
  {
    v29 = a1;
LABEL_52:
    std::basic_regex<char,std::regex_traits<char>>::__push_loop(v29, __max, v28, end, marked_count + 1, v19, 1);
    return &v25[2 * v27];
  }

LABEL_55:
  v31 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
  return std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(v31, v32, v33);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(std::basic_regex<char> *a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a2;
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v4 = a2[1];
    if ((v4 - 36) <= 0x3A && ((1 << (v4 - 36)) & 0x580000000000441) != 0)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      v3 += 2;
    }
  }

  return v3;
}

void std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(std::basic_regex<char> *a1, std::string *a2, std::string *a3)
{
  if (a2 == a3)
  {
    return;
  }

  v6 = a2->__r_.__value_.__s.__data_[0];
  if (v6 > 0x5B)
  {
    if (v6 == 92)
    {
      if ((&a2->__r_.__value_.__l.__data_ + 1) == a3)
      {
        end = a1->__end_;
        marked_count = a1->__marked_count_;
        goto LABEL_36;
      }

      v13 = a2->__r_.__value_.__s.__data_[1];
      if (v13 == 66)
      {
        v14 = 1;
      }

      else
      {
        if (v13 != 98)
        {
          goto LABEL_27;
        }

        v14 = 0;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(a1, v14);
      return;
    }

    if (v6 == 94)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
      return;
    }
  }

  else
  {
    if (v6 == 36)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
      return;
    }

    if (v6 == 40)
    {
      if ((&a2->__r_.__value_.__l.__data_ + 1) == a3)
      {
        end = a1->__end_;
        marked_count = a1->__marked_count_;
LABEL_41:
        if ((&a2->__r_.__value_.__l.__data_ + 1) == a3)
        {
LABEL_96:
          std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
LABEL_97:
          std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
          goto LABEL_98;
        }

        if (&a2->__r_.__value_.__s.__data_[2] != a3 && a2->__r_.__value_.__s.__data_[1] == 63 && a2->__r_.__value_.__s.__data_[2] == 58)
        {
          p_open_count = &a1->__open_count_;
          ++a1->__open_count_;
          v21 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(a1, &a2->__r_.__value_.__s.__data_[3], a3);
          if (v21 == a3)
          {
            goto LABEL_96;
          }

          v22 = v21;
          if (v21->__r_.__value_.__s.__data_[0] != 41)
          {
            goto LABEL_96;
          }
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
          v23 = a1->__marked_count_;
          p_open_count = &a1->__open_count_;
          ++a1->__open_count_;
          v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(a1, &a2->__r_.__value_.__s.__data_[1], a3);
          if (v24 == a3)
          {
            goto LABEL_96;
          }

          v22 = v24;
          if (v24->__r_.__value_.__s.__data_[0] != 41)
          {
            goto LABEL_96;
          }

          std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v23);
        }

        --*p_open_count;
        v25 = (&v22->__r_.__value_.__l.__data_ + 1);
LABEL_53:
        if (v25 == a2)
        {
          return;
        }

        goto LABEL_93;
      }

      if (a2->__r_.__value_.__s.__data_[1] != 63 || &a2->__r_.__value_.__s.__data_[2] == a3)
      {
        goto LABEL_27;
      }

      v7 = a2->__r_.__value_.__s.__data_[2];
      if (v7 == 33)
      {
        std::regex_traits<char>::regex_traits(&v40.__traits_);
        memset(&v40.__flags_, 0, 40);
        v40.__flags_ = a1->__flags_;
        v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v40, &a2->__r_.__value_.__s.__data_[3], a3);
        v9 = v40.__marked_count_;
        v10 = a1->__marked_count_;
        v11 = a1;
        v12 = 1;
LABEL_24:
        std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v11, &v40, v12, v10);
        a1->__marked_count_ += v9;
        if (v8 == a3 || *v8 != 41)
        {
          goto LABEL_96;
        }

        std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v40.__traits_.__loc_);
        if ((v8 + 1) != a2)
        {
          return;
        }

        goto LABEL_27;
      }

      if (v7 == 61)
      {
        std::regex_traits<char>::regex_traits(&v40.__traits_);
        memset(&v40.__flags_, 0, 40);
        v40.__flags_ = a1->__flags_;
        v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v40, &a2->__r_.__value_.__s.__data_[3], a3);
        v9 = v40.__marked_count_;
        v10 = a1->__marked_count_;
        v11 = a1;
        v12 = 0;
        goto LABEL_24;
      }

LABEL_27:
      v6 = a2->__r_.__value_.__s.__data_[0];
    }
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  if (v6 <= 62)
  {
    if (v6 > 40)
    {
      if (v6 == 41)
      {
        return;
      }

      if (v6 == 46)
      {
        operator new();
      }

      if ((v6 - 42) < 2)
      {
        goto LABEL_98;
      }

      goto LABEL_80;
    }

    if (v6 == 36)
    {
      return;
    }

    if (v6 != 40)
    {
      goto LABEL_80;
    }

    goto LABEL_41;
  }

  v17 = (v6 - 92);
  if (v17 <= 0x21)
  {
    if (((1 << (v6 - 92)) & 0x300000006) != 0)
    {
      return;
    }

    if (v6 == 92)
    {
LABEL_36:
      v18 = (&a2->__r_.__value_.__l.__data_ + 1);
      if ((&a2->__r_.__value_.__l.__data_ + 1) == a3)
      {
LABEL_99:
        v39 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
        std::__match_any_but_newline<char>::~__match_any_but_newline(v39);
        return;
      }

      v19 = v18->__r_.__value_.__s.__data_[0];
      if (v19 == 48)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 0);
LABEL_92:
        v25 = &a2->__r_.__value_.__s.__data_[2];
        goto LABEL_93;
      }

      if ((v19 - 49) <= 8)
      {
        v26 = (v19 - 48);
        v25 = &a2->__r_.__value_.__s.__data_[2];
        if (&a2->__r_.__value_.__s.__data_[2] != a3)
        {
          while (1)
          {
            v27 = v25->__r_.__value_.__s.__data_[0];
            if ((v27 - 48) > 9)
            {
              break;
            }

            if (v26 >= 0x19999999)
            {
              goto LABEL_97;
            }

            v26 = v27 + 10 * v26 - 48;
            v25 = (v25 + 1);
            if (v25 == a3)
            {
              v25 = a3;
              break;
            }
          }

          if (!v26)
          {
            goto LABEL_97;
          }
        }

        if (v26 > marked_count)
        {
          goto LABEL_97;
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v26);
        if (v25 != v18)
        {
          goto LABEL_53;
        }

        v19 = v18->__r_.__value_.__s.__data_[0];
      }

      if (v19 > 99)
      {
        if (v19 == 119)
        {
          v28 = a1;
          v29 = 0;
          goto LABEL_84;
        }

        if (v19 == 115)
        {
          v36 = a1;
          v37 = 0;
LABEL_90:
          started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v36, v37);
          v33 = started->__mask_ | 0x4000;
          goto LABEL_91;
        }

        if (v19 != 100)
        {
          goto LABEL_85;
        }

        v30 = a1;
        v31 = 0;
      }

      else
      {
        if (v19 != 68)
        {
          if (v19 != 83)
          {
            if (v19 == 87)
            {
              v28 = a1;
              v29 = 1;
LABEL_84:
              v34 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v28, v29);
              v34->__mask_ |= 0x500u;
              std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:nn200100](v34, 95);
              goto LABEL_92;
            }

LABEL_85:
            std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, &a2->__r_.__value_.__s.__data_[1], a3, 0);
            if (v35 == v18)
            {
              v25 = a2;
            }

            else
            {
              v25 = v35;
            }

            goto LABEL_53;
          }

          v36 = a1;
          v37 = 1;
          goto LABEL_90;
        }

        v30 = a1;
        v31 = 1;
      }

      started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v30, v31);
      v33 = started->__mask_ | 0x400;
LABEL_91:
      started->__mask_ = v33;
      goto LABEL_92;
    }

    if (v17 == 31)
    {
      goto LABEL_98;
    }
  }

  if (v6 == 91)
  {
    v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, a2, a3);
    goto LABEL_53;
  }

  if (v6 == 63)
  {
LABEL_98:
    std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    goto LABEL_99;
  }

LABEL_80:
  std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v6);
  v25 = (&a2->__r_.__value_.__l.__data_ + 1);
LABEL_93:
  v38 = a1->__marked_count_ + 1;

  std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v25, a3, end, marked_count + 1, v38);
}

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x20F331DC0);
}

void (__cdecl ***std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](locale);
  }

  std::locale::~locale(this);
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  memset(&v23, 0, 17);
  v24 = 0;
  v25 = 0;
  memset(&__p, 0, sizeof(__p));
  v4 = (*(a1 + 44) + 1);
  v5 = *(a2 + 16);
  v19.first = *(a2 + 24);
  v19.second = v19.first;
  v19.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v4, &v19);
  v20 = v5;
  v21 = v5;
  v22 = 0;
  v23 = v19;
  v25 = v5;
  v24 = 1;
  v6 = *(a2 + 16);
  if (v6 == *(a2 + 8))
  {
    v7 = *(a2 + 92);
  }

  else
  {
    v7 = 0;
  }

  std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v6, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40, v7);
  if (*(a1 + 84) == v8)
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    begin = __p.__begin_;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  begin = __p.__begin_;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  if (v10 < 2)
  {
LABEL_10:
    if (!begin)
    {
      return;
    }

    goto LABEL_11;
  }

  v11 = *(a1 + 80);
  v12 = *(a2 + 32);
  v13 = 2;
  v14 = 1;
  do
  {
    v15 = &begin[v14];
    v16 = v12 + 24 * (v11 + v13 - 2);
    *v16 = v15->std::pair<const char *, const char *>;
    *(v16 + 16) = v15->matched;
    v14 = v13;
  }

  while (v10 > v13++);
LABEL_11:

  operator delete(begin);
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_2825BEC80;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x20F331DC0);
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_2825BEC80;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t std::__word_boundary<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

void std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_2825BEC50;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x20F331DC0);
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_2825BEC50;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x20F331DC0);
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x20F331DC0);
}

void (__cdecl ***std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

void parseLoadStoreFunction(llvm::Function *a1, llvm::Value *a2)
{
  v12[6] = *MEMORY[0x277D85DE8];
  *(a1 + 24) = 0u;
  *(a1 + 11) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  Name = llvm::Value::getName(a2);
  v4 = 4;
  if (v3 < 4)
  {
    v4 = v3;
  }

  v5 = v4 + Name;
  v6 = v3 - v4;
  v10 = v12;
  v11 = 0x300000000;
  llvm::StringRef::split();
  v7 = &v9;
  v8 = 0x300000000;
  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

void std::vector<llvm::Type *>::__insert_with_size[abi:nn200100]<llvm::Type * const*,llvm::Type * const*>(uint64_t *a1, char *__src, char *a3, uint64_t a4)
{
  if (a4 < 1)
  {
    return;
  }

  v5 = __src;
  v8 = a1[1];
  v7 = a1[2];
  if (a4 > (v7 - v8) >> 3)
  {
    v9 = *a1;
    v10 = a4 + ((v8 - *a1) >> 3);
    if (v10 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = v7 - v9;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v13 = -v9 >> 3;
    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(v12);
    }

    v25 = 8 * v13;
    v26 = (8 * v13 + 8 * a4);
    v27 = 8 * a4;
    v28 = v25;
    do
    {
      v29 = *v5;
      v5 += 8;
      *v28++ = v29;
      v27 -= 8;
    }

    while (v27);
    memcpy(v26, 0, a1[1]);
    v30 = *a1;
    v31 = v26 + a1[1];
    a1[1] = 0;
    v32 = v25 + v30;
    memcpy((v25 + v30), v30, -v30);
    v33 = *a1;
    *a1 = v32;
    a1[1] = v31;
    a1[2] = 0;
    if (v33)
    {

      operator delete(v33);
    }

    return;
  }

  if (v8 >> 3 >= a4)
  {
    v17 = v8 - 8 * a4;
    if (v17 >= v8)
    {
      v19 = a1[1];
    }

    else
    {
      v18 = (v8 - 8 * a4);
      v19 = a1[1];
      do
      {
        v20 = *v18++;
        *v19++ = v20;
      }

      while (v18 < v8);
    }

    a1[1] = v19;
    if (v8 != 8 * a4)
    {
      memmove((8 * a4), 0, v17);
    }

    v34 = v5;
    v35 = 8 * a4;
    goto LABEL_39;
  }

  v14 = &__src[v8];
  v15 = a1[1];
  while (v14 != a3)
  {
    v16 = *v14;
    v14 += 8;
    *v15++ = v16;
  }

  a1[1] = v15;
  if (v8 >> 3 >= 1)
  {
    v21 = &v15[-a4];
    if (v21 >= v8)
    {
      v23 = v15;
    }

    else
    {
      v22 = &v15[-a4];
      v23 = v15;
      do
      {
        v24 = *v22++;
        *v23++ = v24;
      }

      while (v22 < v8);
    }

    a1[1] = v23;
    if (v15 != (8 * a4))
    {
      memmove((8 * a4), 0, v21);
    }

    if (v8)
    {
      v34 = v5;
      v35 = v8;
LABEL_39:

      memmove(0, v34, v35);
    }
  }
}

uint64_t std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, void *a2, __int128 **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,MTLCompilerDataType>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLCompilerDataType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLCompilerDataType>>>::__find_equal<std::string>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<std::string,llvm::Type *>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::Type *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::Type *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, void *a2, __int128 **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,MTLCompilerDataType>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLCompilerDataType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLCompilerDataType>>>::__find_equal<std::string>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void AGCSimdMatrix::buildSimdMatrixMultiplyAccumulate(uint64_t a1, uint64_t *a2)
{
  v336[4] = *MEMORY[0x277D85DE8];
  v4 = *(a2 - 4);
  if (!v4 || *(v4 + 16) || *(v4 + 24) != a2[9])
  {
    v4 = 0;
  }

  Name = llvm::Value::getName(v4);
  v259 = v5;
  v249 = a1;
  {
    std::string::basic_string[abi:nn200100]<0>(v328, "_16x16_");
    if ((v328[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v288, *v328, *&v328[8]);
    }

    else
    {
      v288 = *v328;
    }

    v289 = 0x1000000010;
    v290 = 16;
    std::string::basic_string[abi:nn200100]<0>(&__src, "_16x16x16_");
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v291, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
    }

    else
    {
      v291 = __src;
    }

    v292 = 0x1000000010;
    v293 = 16;
    std::string::basic_string[abi:nn200100]<0>(&v309, "_16x8x16_");
    if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v294, v309.__r_.__value_.__l.__data_, v309.__r_.__value_.__l.__size_);
    }

    else
    {
      v294 = v309;
    }

    v295 = 0x800000010;
    v296 = 16;
    std::string::basic_string[abi:nn200100]<0>(&v317, "_8x16x16_");
    if (SHIBYTE(v317.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v297, v317.__r_.__value_.__l.__data_, v317.__r_.__value_.__l.__size_);
    }

    else
    {
      v297 = v317;
    }

    v298 = 0x1000000008;
    v299 = 16;
    std::string::basic_string[abi:nn200100]<0>(v315, "_16x16x32_");
    if ((v315[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v300, *v315, *&v315[8]);
    }

    else
    {
      v300 = *v315;
    }

    v301 = 0x1000000010;
    v302 = 32;
    std::string::basic_string[abi:nn200100]<0>(&__sz, "_16x8x32_");
    if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v303, __sz.__r_.__value_.__l.__data_, __sz.__r_.__value_.__l.__size_);
    }

    else
    {
      v303 = __sz;
    }

    v304 = 0x800000010;
    v305 = 32;
    std::string::basic_string[abi:nn200100]<0>(&v274, "_8x16x32_");
    if (SHIBYTE(v274.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v306, v274.__r_.__value_.__l.__data_, v274.__r_.__value_.__l.__size_);
    }

    else
    {
      v306 = v274;
    }

    v234 = 0;
    v307 = 0x1000000008;
    v308 = 32;
    AGCSimdMatrix::buildSimdMatrixMultiplyAccumulate(llvm::CallInst *)::supportedGemmSizes = 0u;
    *&qword_27C8DB7F8 = 0u;
    dword_27C8DB808 = 1065353216;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,std::array<int,3ul>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::array<int,3ul>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::array<int,3ul>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::array<int,3ul>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::array<int,3ul>> const&>(&v288 + v234 * 8, &v288 + v234 * 8);
      v234 += 5;
    }

    while (v234 != 35);
    do
    {
      if (v284[v234 * 8] < 0)
      {
        operator delete(v283.__r_.__value_.__r.__words[v234 + 1]);
      }

      v234 -= 5;
    }

    while (v234 * 8);
    if (SHIBYTE(v274.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v274.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__sz.__r_.__value_.__l.__data_);
    }

    if ((v315[23] & 0x80000000) != 0)
    {
      operator delete(*v315);
    }

    if (SHIBYTE(v317.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v317.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v309.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }

    if ((v328[23] & 0x80000000) != 0)
    {
      operator delete(*v328);
    }

    __cxa_atexit(std::unordered_map<std::string,std::array<int,3ul>>::~unordered_map[abi:nn200100], &AGCSimdMatrix::buildSimdMatrixMultiplyAccumulate(llvm::CallInst *)::supportedGemmSizes, &dword_20E4E1000);
  }

  v6 = &qword_27C8DB7F8;
  while (1)
  {
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    if (llvm::StringRef::find() != -1)
    {
      v8 = *(v6 + 10);
      v7 = *(v6 + 11);
      v9 = *(v6 + 12);
      goto LABEL_11;
    }
  }

  v9 = 0;
  v7 = 0;
  v8 = 0;
LABEL_11:
  v288.__r_.__value_.__r.__words[0] = &v288.__r_.__value_.__r.__words[2];
  v288.__r_.__value_.__l.__size_ = 0xA00000000;
  llvm::StringRef::split();
  v10 = LODWORD(v288.__r_.__value_.__r.__words[1]);
  v11 = llvm::StringRef::find();
  v12 = v288.__r_.__value_.__r.__words[0] + 16 * v10;
  v257 = *(v12 - 16);
  if (v11 == -1)
  {
    v15 = *(v12 - 32);
    v255 = *(v12 - 48);
    v256 = v15;
    v14 = -4;
  }

  else
  {
    v13 = *(v12 - 48);
    v255 = *(v12 - 64);
    v256 = v13;
    v14 = -6;
  }

  v16 = v14 + v10;
  v254 = *(v288.__r_.__value_.__r.__words[0] + 16 * v16);
  if (llvm::StringRef::find() != -1)
  {
    v16 -= llvm::StringRef::find() != -1;
  }

  v17 = v288.__r_.__value_.__r.__words[0] + 16 * v16;
  v242 = **(v17 - 16);
  v239 = **(v17 - 32);
  v18 = llvm::StringRef::find();
  v19 = &a2[-4 * (*(a2 + 5) & 0x7FFFFFF)];
  if (v11 == -1)
  {
    v237 = 0;
    v238 = 0;
    v235 = 0;
    v236 = 0;
    ShuffleVector = *v19;
    v247 = v19[8];
    v245 = v19[16];
    v240 = v19[12];
    v241 = v19[4];
    goto LABEL_40;
  }

  ShuffleVector = v19[12];
  v247 = v19[20];
  v245 = v19[40];
  v240 = v19[24];
  v241 = v19[16];
  v21 = v19[8];
  if (*(v21 + 16) != 16)
  {
    v21 = 0;
  }

  v22 = *(v21 + 32);
  if (v22 > 0x40)
  {
    v23 = llvm::APInt::countLeadingZerosSlowCase((v21 + 24)) == v22;
  }

  else
  {
    v23 = *(v21 + 24) == 0;
  }

  v24 = v23;
  v25 = v19[36];
  if (*(v25 + 16) != 16)
  {
    v25 = 0;
  }

  v26 = *(v25 + 32);
  if (v26 > 0x40)
  {
    v27 = llvm::APInt::countLeadingZerosSlowCase((v25 + 24)) == v26;
  }

  else
  {
    v27 = *(v25 + 24) == 0;
  }

  v28 = v27;
  if (v24)
  {
    v29 = 0;
    v30 = 0;
    if (v28)
    {
      v236 = 0;
      v237 = 0;
      v238 = 0;
      v235 = 0;
      goto LABEL_40;
    }
  }

  else
  {
    v30 = *v19;
    v29 = v19[4];
    if (v28)
    {
      v237 = *v19;
      v238 = v19[4];
      v235 = 0;
      v236 = 0;
      goto LABEL_40;
    }
  }

  v237 = v30;
  v238 = v29;
  v235 = v19[32];
  v236 = v19[28];
LABEL_40:
  v243 = a2;
  llvm::StringRef::str(&v253, &v254);
  llvm::StringRef::str(&v252, &v255);
  llvm::StringRef::str(&v251, &v256);
  llvm::StringRef::str(&__p, &v257);
  v287 = v8;
  v286 = v7;
  v285 = v9;
  v244 = *(*(a1 + 464) + 1939);
  v31 = SHIBYTE(v253.__r_.__value_.__r.__words[2]);
  v32 = *&v253.__r_.__value_.__l.__data_;
  if ((v253.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = &v253;
  }

  else
  {
    v33 = v253.__r_.__value_.__r.__words[0];
  }

  if ((v253.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v253.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v253.__r_.__value_.__l.__size_;
  }

  v35 = v33 + size;
  if (size >= 4)
  {
    v36 = v33;
    v37 = size;
    v38 = v33;
    while (1)
    {
      v39 = memchr(v38, 118, v37 - 3);
      if (!v39)
      {
        goto LABEL_55;
      }

      if (*v39 == 942813558)
      {
        break;
      }

      v38 = (v39 + 1);
      v37 = v35 - v38;
      if (v35 - v38 < 4)
      {
        goto LABEL_55;
      }
    }

    if (v39 != v35 && v39 - v33 != -1)
    {
      v40 = 1;
      goto LABEL_65;
    }

    do
    {
LABEL_55:
      v41 = memchr(v36, 118, size - 3);
      if (!v41)
      {
        break;
      }

      if (*v41 == 909455990)
      {
        goto LABEL_59;
      }

      v36 = (v41 + 1);
      size = v35 - (v41 + 1);
    }

    while (size > 3);
  }

  v41 = v35;
LABEL_59:
  v40 = v41 != v35 && v41 - v33 != -1;
LABEL_65:
  v43 = v249;
  if (v31 < 0)
  {
    std::string::__init_copy_ctor_external(&v283, v32, *(&v32 + 1));
  }

  else
  {
    v283 = v253;
  }

  if (SHIBYTE(v252.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v282, v252.__r_.__value_.__l.__data_, v252.__r_.__value_.__l.__size_);
  }

  else
  {
    v282 = v252;
  }

  if (SHIBYTE(v251.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v281, v251.__r_.__value_.__l.__data_, v251.__r_.__value_.__l.__size_);
  }

  else
  {
    v281 = v251;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v280, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v280 = __p;
  }

  if ((v253.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = &v253;
  }

  else
  {
    v44 = v253.__r_.__value_.__r.__words[0];
  }

  if ((v253.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = SHIBYTE(v253.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v45 = v253.__r_.__value_.__l.__size_;
  }

  if ((*(*llvm::StringMap<AGCSimdMatrix::OpLoweringInfo,llvm::MallocAllocator>::try_emplace<>((v249 + 488), v44, v45) + 48) & 1) == 0)
  {
    if (v40)
    {
      v46 = 0;
    }

    else
    {
      v46 = 5;
    }

    v47 = (v286 * v287) >> v46;
    std::string::basic_string[abi:nn200100]<0>(&__src, "v");
    std::to_string(&v309, v47);
    if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = &v309;
    }

    else
    {
      v48 = v309.__r_.__value_.__r.__words[0];
    }

    if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = HIBYTE(v309.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v49 = v309.__r_.__value_.__l.__size_;
    }

    v50 = std::string::append(&__src, v48, v49);
    v51 = v50->__r_.__value_.__r.__words[2];
    *v328 = *&v50->__r_.__value_.__l.__data_;
    *&v328[16] = v51;
    v50->__r_.__value_.__l.__size_ = 0;
    v50->__r_.__value_.__r.__words[2] = 0;
    v50->__r_.__value_.__r.__words[0] = 0;
    if (v244)
    {
      v52 = "f16";
    }

    else
    {
      v52 = "f32";
    }

    v53 = std::string::append(v328, v52);
    v54 = v53->__r_.__value_.__r.__words[0];
    v317.__r_.__value_.__r.__words[0] = v53->__r_.__value_.__l.__size_;
    *(v317.__r_.__value_.__r.__words + 7) = *(&v53->__r_.__value_.__r.__words[1] + 7);
    v55 = HIBYTE(v53->__r_.__value_.__r.__words[2]);
    v53->__r_.__value_.__l.__size_ = 0;
    v53->__r_.__value_.__r.__words[2] = 0;
    v53->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v283.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v283.__r_.__value_.__l.__data_);
    }

    v283.__r_.__value_.__r.__words[0] = v54;
    v283.__r_.__value_.__l.__size_ = v317.__r_.__value_.__r.__words[0];
    *(&v283.__r_.__value_.__r.__words[1] + 7) = *(v317.__r_.__value_.__r.__words + 7);
    *(&v283.__r_.__value_.__s + 23) = v55;
    if ((v328[23] & 0x80000000) != 0)
    {
      operator delete(*v328);
    }

    if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v309.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }
  }

  if ((v252.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v56 = &v252;
  }

  else
  {
    v56 = v252.__r_.__value_.__r.__words[0];
  }

  if ((v252.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v57 = SHIBYTE(v252.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v57 = v252.__r_.__value_.__l.__size_;
  }

  if ((*(*llvm::StringMap<AGCSimdMatrix::OpLoweringInfo,llvm::MallocAllocator>::try_emplace<>((v249 + 488), v56, v57) + 49) & 1) == 0)
  {
    if (v40)
    {
      v58 = 0;
    }

    else
    {
      v58 = 5;
    }

    v59 = (v285 * v287) >> v58;
    std::string::basic_string[abi:nn200100]<0>(&__src, "v");
    std::to_string(&v309, v59);
    if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v60 = &v309;
    }

    else
    {
      v60 = v309.__r_.__value_.__r.__words[0];
    }

    if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v61 = HIBYTE(v309.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v61 = v309.__r_.__value_.__l.__size_;
    }

    v62 = std::string::append(&__src, v60, v61);
    v63 = v62->__r_.__value_.__r.__words[2];
    *v328 = *&v62->__r_.__value_.__l.__data_;
    *&v328[16] = v63;
    v62->__r_.__value_.__l.__size_ = 0;
    v62->__r_.__value_.__r.__words[2] = 0;
    v62->__r_.__value_.__r.__words[0] = 0;
    v64 = std::string::append(v328, "bf16");
    v65 = v64->__r_.__value_.__r.__words[0];
    v317.__r_.__value_.__r.__words[0] = v64->__r_.__value_.__l.__size_;
    *(v317.__r_.__value_.__r.__words + 7) = *(&v64->__r_.__value_.__r.__words[1] + 7);
    v66 = HIBYTE(v64->__r_.__value_.__r.__words[2]);
    v64->__r_.__value_.__l.__size_ = 0;
    v64->__r_.__value_.__r.__words[2] = 0;
    v64->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v282.__r_.__value_.__l.__data_);
    }

    v282.__r_.__value_.__r.__words[0] = v65;
    v282.__r_.__value_.__l.__size_ = v317.__r_.__value_.__r.__words[0];
    *(&v282.__r_.__value_.__r.__words[1] + 7) = *(v317.__r_.__value_.__r.__words + 7);
    *(&v282.__r_.__value_.__s + 23) = v66;
    if ((v328[23] & 0x80000000) != 0)
    {
      operator delete(*v328);
    }

    if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v309.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }

    v67 = *(v249 + 464);
    *&__sz.__r_.__value_.__l.__data_ = *(v249 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&__sz.__r_.__value_.__r.__words[2], (v249 + 8));
    v279 = *(v249 + 104);
    if (SHIBYTE(v252.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v277, v252.__r_.__value_.__l.__data_, v252.__r_.__value_.__l.__size_);
    }

    else
    {
      v277 = v252;
    }

    if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v276, v282.__r_.__value_.__l.__data_, v282.__r_.__value_.__l.__size_);
    }

    else
    {
      v276 = v282;
    }

    ShuffleVector = (*(*v67 + 776))(v67, &__sz, ShuffleVector, &v277, &v276, 0);
    if (SHIBYTE(v276.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v276.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v277.__r_.__value_.__l.__data_);
    }

    if (__sz.__r_.__value_.__r.__words[2])
    {
      llvm::MetadataTracking::untrack();
    }
  }

  if ((v251.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v68 = &v251;
  }

  else
  {
    v68 = v251.__r_.__value_.__r.__words[0];
  }

  if ((v251.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v69 = SHIBYTE(v251.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v69 = v251.__r_.__value_.__l.__size_;
  }

  if ((*(*llvm::StringMap<AGCSimdMatrix::OpLoweringInfo,llvm::MallocAllocator>::try_emplace<>((v249 + 488), v68, v69) + 49) & 1) == 0)
  {
    if (v40)
    {
      v70 = 0;
    }

    else
    {
      v70 = 5;
    }

    v71 = (v286 * v285) >> v70;
    std::string::basic_string[abi:nn200100]<0>(&__src, "v");
    std::to_string(&v309, v71);
    if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v72 = &v309;
    }

    else
    {
      v72 = v309.__r_.__value_.__r.__words[0];
    }

    if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v73 = HIBYTE(v309.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v73 = v309.__r_.__value_.__l.__size_;
    }

    v74 = std::string::append(&__src, v72, v73);
    v75 = v74->__r_.__value_.__r.__words[2];
    *v328 = *&v74->__r_.__value_.__l.__data_;
    *&v328[16] = v75;
    v74->__r_.__value_.__l.__size_ = 0;
    v74->__r_.__value_.__r.__words[2] = 0;
    v74->__r_.__value_.__r.__words[0] = 0;
    v76 = std::string::append(v328, "bf16");
    v77 = v76->__r_.__value_.__r.__words[0];
    v317.__r_.__value_.__r.__words[0] = v76->__r_.__value_.__l.__size_;
    *(v317.__r_.__value_.__r.__words + 7) = *(&v76->__r_.__value_.__r.__words[1] + 7);
    v78 = HIBYTE(v76->__r_.__value_.__r.__words[2]);
    v76->__r_.__value_.__l.__size_ = 0;
    v76->__r_.__value_.__r.__words[2] = 0;
    v76->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v281.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v281.__r_.__value_.__l.__data_);
    }

    v281.__r_.__value_.__r.__words[0] = v77;
    v281.__r_.__value_.__l.__size_ = v317.__r_.__value_.__r.__words[0];
    *(&v281.__r_.__value_.__r.__words[1] + 7) = *(v317.__r_.__value_.__r.__words + 7);
    *(&v281.__r_.__value_.__s + 23) = v78;
    if ((v328[23] & 0x80000000) != 0)
    {
      operator delete(*v328);
    }

    if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v309.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }

    v79 = *(v249 + 464);
    *&v274.__r_.__value_.__l.__data_ = *(v249 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v274.__r_.__value_.__r.__words[2], (v249 + 8));
    v275 = *(v249 + 104);
    if (SHIBYTE(v251.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v273, v251.__r_.__value_.__l.__data_, v251.__r_.__value_.__l.__size_);
    }

    else
    {
      v273 = v251;
    }

    if (SHIBYTE(v281.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v272, v281.__r_.__value_.__l.__data_, v281.__r_.__value_.__l.__size_);
    }

    else
    {
      v272 = v281;
    }

    v247 = (*(*v79 + 776))(v79, &v274, v247, &v273, &v272, 0);
    if (SHIBYTE(v272.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v272.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v273.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v273.__r_.__value_.__l.__data_);
    }

    if (v274.__r_.__value_.__r.__words[2])
    {
      llvm::MetadataTracking::untrack();
    }
  }

  {
    *v328 = "v8f8e4m3fn";
    *&v328[8] = 10;
    std::string::basic_string[abi:nn200100]<0>(&v328[16], "pn8e4m3");
    *(&v329 + 1) = "v4f8e4m3fn";
    *&v330 = 10;
    std::string::basic_string[abi:nn200100]<0>(&v330 + 1, "pn4e4m3");
    v333 = "v8f8e5m2";
    v334 = 8;
    std::string::basic_string[abi:nn200100]<0>(v335, "pn8e5m2");
    v335[3] = "v4f8e5m2";
    v335[4] = 8;
    std::string::basic_string[abi:nn200100]<0>(v336, "pn4e5m2");
    llvm::StringMap<std::string,llvm::MallocAllocator>::StringMap(v328, 4);
    for (i = 0; i != -20; i -= 5)
    {
      if (SHIBYTE(v336[i + 2]) < 0)
      {
        operator delete(v336[i]);
      }
    }

    __cxa_atexit(llvm::StringMap<std::string,llvm::MallocAllocator>::~StringMap, &AGCSimdMatrix::buildSimdMatrixMultiplyAccumulateImpl(unsigned int,unsigned int,unsigned int,llvm::Type *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,std::string const&,std::string const&,std::string const&,std::string const&,BOOL,BOOL,BOOL)::airAccumulatorsFP8, &dword_20E4E1000);
    v43 = v249;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v81 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v81 = __p.__r_.__value_.__l.__size_;
  }

  if ((*(*llvm::StringMap<AGCSimdMatrix::OpLoweringInfo,llvm::MallocAllocator>::try_emplace<>((v43 + 488), p_p, v81) + 48) & 1) == 0)
  {
    if (v40)
    {
      v82 = 0;
    }

    else
    {
      v82 = 5;
    }

    v83 = (v286 * v287) >> v82;
    std::string::basic_string[abi:nn200100]<0>(&__src, "v");
    std::to_string(&v309, v83);
    if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v84 = &v309;
    }

    else
    {
      v84 = v309.__r_.__value_.__r.__words[0];
    }

    if ((v309.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v85 = HIBYTE(v309.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v85 = v309.__r_.__value_.__l.__size_;
    }

    v86 = std::string::append(&__src, v84, v85);
    v87 = v86->__r_.__value_.__r.__words[2];
    *v328 = *&v86->__r_.__value_.__l.__data_;
    *&v328[16] = v87;
    v86->__r_.__value_.__l.__size_ = 0;
    v86->__r_.__value_.__r.__words[2] = 0;
    v86->__r_.__value_.__r.__words[0] = 0;
    if (v244)
    {
      v88 = "f16";
    }

    else
    {
      v88 = "f32";
    }

    v89 = std::string::append(v328, v88);
    v90 = v89->__r_.__value_.__r.__words[0];
    v317.__r_.__value_.__r.__words[0] = v89->__r_.__value_.__l.__size_;
    *(v317.__r_.__value_.__r.__words + 7) = *(&v89->__r_.__value_.__r.__words[1] + 7);
    v91 = HIBYTE(v89->__r_.__value_.__r.__words[2]);
    v89->__r_.__value_.__l.__size_ = 0;
    v89->__r_.__value_.__r.__words[2] = 0;
    v89->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v280.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v280.__r_.__value_.__l.__data_);
    }

    v280.__r_.__value_.__r.__words[0] = v90;
    v280.__r_.__value_.__l.__size_ = v317.__r_.__value_.__r.__words[0];
    *(&v280.__r_.__value_.__r.__words[1] + 7) = *(v317.__r_.__value_.__r.__words + 7);
    *(&v280.__r_.__value_.__s + 23) = v91;
    if ((v328[23] & 0x80000000) != 0)
    {
      operator delete(*v328);
    }

    if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v309.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }

    if (!v244 || (Key = llvm::StringMapImpl::FindKey(), Key == -1) || Key == dword_27C8DB820)
    {
      std::string::basic_string[abi:nn200100]<0>(&v317, "air.convert.f.");
      if ((v280.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v105 = &v280;
      }

      else
      {
        v105 = v280.__r_.__value_.__r.__words[0];
      }

      if ((v280.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v106 = HIBYTE(v280.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v106 = v280.__r_.__value_.__l.__size_;
      }

      v107 = std::string::append(&v317, v105, v106);
      v108 = v107->__r_.__value_.__r.__words[2];
      *&v309.__r_.__value_.__l.__data_ = *&v107->__r_.__value_.__l.__data_;
      v309.__r_.__value_.__r.__words[2] = v108;
      v107->__r_.__value_.__l.__size_ = 0;
      v107->__r_.__value_.__r.__words[2] = 0;
      v107->__r_.__value_.__r.__words[0] = 0;
      v109 = std::string::append(&v309, ".f.");
      v110 = v109->__r_.__value_.__r.__words[2];
      *v328 = *&v109->__r_.__value_.__l.__data_;
      *&v328[16] = v110;
      v109->__r_.__value_.__l.__size_ = 0;
      v109->__r_.__value_.__r.__words[2] = 0;
      v109->__r_.__value_.__r.__words[0] = 0;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v103 = &__p;
      }

      else
      {
        v103 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v104 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v104 = __p.__r_.__value_.__l.__size_;
      }
    }

    else
    {
      std::string::basic_string[abi:nn200100]<0>(&v317, "air.dequantize_unpack.");
      if ((v280.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v93 = &v280;
      }

      else
      {
        v93 = v280.__r_.__value_.__r.__words[0];
      }

      if ((v280.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v94 = HIBYTE(v280.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v94 = v280.__r_.__value_.__l.__size_;
      }

      v95 = std::string::append(&v317, v93, v94);
      v96 = v95->__r_.__value_.__r.__words[2];
      *&v309.__r_.__value_.__l.__data_ = *&v95->__r_.__value_.__l.__data_;
      v309.__r_.__value_.__r.__words[2] = v96;
      v95->__r_.__value_.__l.__size_ = 0;
      v95->__r_.__value_.__r.__words[2] = 0;
      v95->__r_.__value_.__r.__words[0] = 0;
      v97 = std::string::append(&v309, ".");
      v98 = v97->__r_.__value_.__r.__words[2];
      *v328 = *&v97->__r_.__value_.__l.__data_;
      *&v328[16] = v98;
      v97->__r_.__value_.__l.__size_ = 0;
      v97->__r_.__value_.__r.__words[2] = 0;
      v97->__r_.__value_.__r.__words[0] = 0;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v99 = &__p;
      }

      else
      {
        v99 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v100 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v100 = __p.__r_.__value_.__l.__size_;
      }

      v101 = llvm::StringMap<std::string,llvm::MallocAllocator>::try_emplace<>(&AGCSimdMatrix::buildSimdMatrixMultiplyAccumulateImpl(unsigned int,unsigned int,unsigned int,llvm::Type *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,std::string const&,std::string const&,std::string const&,std::string const&,BOOL,BOOL,BOOL)::airAccumulatorsFP8, v99, v100);
      v102 = *(*v101 + 31);
      if (v102 >= 0)
      {
        v103 = (*v101 + 8);
      }

      else
      {
        v103 = *(*v101 + 8);
      }

      if (v102 >= 0)
      {
        v104 = *(*v101 + 31);
      }

      else
      {
        v104 = *(*v101 + 16);
      }
    }

    v111 = std::string::append(v328, v103, v104);
    v112 = v111->__r_.__value_.__r.__words[2];
    *&__src.__r_.__value_.__l.__data_ = *&v111->__r_.__value_.__l.__data_;
    __src.__r_.__value_.__r.__words[2] = v112;
    v111->__r_.__value_.__l.__size_ = 0;
    v111->__r_.__value_.__r.__words[2] = 0;
    v111->__r_.__value_.__r.__words[0] = 0;
    if ((v328[23] & 0x80000000) != 0)
    {
      operator delete(*v328);
    }

    if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v309.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v317.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v317.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      p_src = __src.__r_.__value_.__r.__words[0];
      if (!__src.__r_.__value_.__r.__words[0])
      {
LABEL_247:
        llvm::FixedVectorType::get();
        *v328 = *v245;
        llvm::FunctionType::get();
        llvm::Module::getOrInsertFunction();
        v309.__r_.__value_.__r.__words[0] = v245;
        LOWORD(v329) = 257;
        v245 = llvm::IRBuilderBase::CreateCall((v43 + 8), *(v114 + 24), v114, &v309, 1, v328);
        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__src.__r_.__value_.__l.__data_);
        }

        goto LABEL_249;
      }
    }

    else
    {
      p_src = &__src;
    }

    strlen(p_src);
    goto LABEL_247;
  }

LABEL_249:
  if ((v283.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v115 = &v283;
  }

  else
  {
    v115 = v283.__r_.__value_.__r.__words[0];
  }

  if ((v283.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v116 = SHIBYTE(v283.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v116 = v283.__r_.__value_.__l.__size_;
  }

  v117 = *llvm::StringMap<AGCSimdMatrix::OpLoweringInfo,llvm::MallocAllocator>::try_emplace<>((v43 + 488), v115, v116);
  if ((v282.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v118 = &v282;
  }

  else
  {
    v118 = v282.__r_.__value_.__r.__words[0];
  }

  if ((v282.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v119 = SHIBYTE(v282.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v119 = v282.__r_.__value_.__l.__size_;
  }

  v120 = *llvm::StringMap<AGCSimdMatrix::OpLoweringInfo,llvm::MallocAllocator>::try_emplace<>((v43 + 488), v118, v119);
  if ((v281.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v121 = &v281;
  }

  else
  {
    v121 = v281.__r_.__value_.__r.__words[0];
  }

  if ((v281.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v122 = SHIBYTE(v281.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v122 = v281.__r_.__value_.__l.__size_;
  }

  v123 = v43;
  v124 = *llvm::StringMap<AGCSimdMatrix::OpLoweringInfo,llvm::MallocAllocator>::try_emplace<>((v43 + 488), v121, v122);
  if ((v280.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v125 = &v280;
  }

  else
  {
    v125 = v280.__r_.__value_.__r.__words[0];
  }

  if ((v280.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v126 = SHIBYTE(v280.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v126 = v280.__r_.__value_.__l.__size_;
  }

  v127 = llvm::StringMap<AGCSimdMatrix::OpLoweringInfo,llvm::MallocAllocator>::try_emplace<>((v43 + 488), v125, v126);
  v128 = *v127;
  v271 = *(**(*(*v127 + 8) + 16) + 8) < 7u;
  memset(&v309, 0, sizeof(v309));
  std::string::reserve(&v309, 0x32uLL);
  std::string::append(&v309, "llvm.agx3");
  if (v271)
  {
    v129 = ".fgemm";
  }

  else
  {
    v129 = ".igemm";
  }

  std::string::append(&v309, v129);
  v130 = *(v117 + 39);
  if (v130 >= 0)
  {
    v131 = (v117 + 16);
  }

  else
  {
    v131 = *(v117 + 16);
  }

  if (v130 >= 0)
  {
    v132 = *(v117 + 39);
  }

  else
  {
    v132 = *(v117 + 24);
  }

  std::string::append(&v309, v131, v132);
  v133 = *(v120 + 39);
  if (v133 >= 0)
  {
    v134 = (v120 + 16);
  }

  else
  {
    v134 = *(v120 + 16);
  }

  if (v133 >= 0)
  {
    v135 = *(v120 + 39);
  }

  else
  {
    v135 = *(v120 + 24);
  }

  std::string::append(&v309, v134, v135);
  v136 = *(v124 + 39);
  if (v136 >= 0)
  {
    v137 = (v124 + 16);
  }

  else
  {
    v137 = *(v124 + 16);
  }

  if (v136 >= 0)
  {
    v138 = *(v124 + 39);
  }

  else
  {
    v138 = *(v124 + 24);
  }

  std::string::append(&v309, v137, v138);
  v139 = *(v128 + 39);
  if (v139 >= 0)
  {
    v140 = (v128 + 16);
  }

  else
  {
    v140 = *(v128 + 16);
  }

  if (v139 >= 0)
  {
    v141 = *(v128 + 39);
  }

  else
  {
    v141 = *(v128 + 24);
  }

  std::string::append(&v309, v140, v141);
  v142 = *(v123 + 192);
  __src.__r_.__value_.__r.__words[0] = *(v123 + 184);
  __src.__r_.__value_.__l.__size_ = __src.__r_.__value_.__r.__words[0];
  __src.__r_.__value_.__r.__words[2] = __src.__r_.__value_.__r.__words[0];
  v320 = v142;
  v321 = *(v120 + 8);
  v322 = v142;
  v323 = *(v124 + 8);
  v324 = v142;
  v325 = *(v128 + 8);
  v326 = v142;
  *v328 = &v328[16];
  *&v328[8] = 0xC00000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v328, &__src, v327);
  if (v271)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v328, *(v249 + 192));
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v328, *(v249 + 192));
  }

  if ((SHIBYTE(v309.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v143 = &v309;
LABEL_305:
    strlen(v143);
    goto LABEL_306;
  }

  v143 = v309.__r_.__value_.__r.__words[0];
  if (v309.__r_.__value_.__r.__words[0])
  {
    goto LABEL_305;
  }

LABEL_306:
  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v246 = v144;
  if (*v328 != &v328[16])
  {
    free(*v328);
  }

  if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v309.__r_.__value_.__l.__data_);
    if (!v40)
    {
      goto LABEL_314;
    }
  }

  else if (!v40)
  {
    goto LABEL_314;
  }

  v145 = 0;
  v330 = 0u;
  v329 = 0u;
  memset(v328, 0, sizeof(v328));
  do
  {
    *&v328[8 * v145++] = llvm::ConstantInt::get();
  }

  while (v145 != 8);
  v146 = llvm::ConstantVector::get();
  LOWORD(v321) = 257;
  ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector((v249 + 8), ShuffleVector, ShuffleVector, v146, &__src);
  v147 = llvm::ConstantVector::get();
  LOWORD(v321) = 257;
  v247 = llvm::IRBuilderBase::CreateShuffleVector((v249 + 8), v247, v247, v147, &__src);
  v148 = llvm::ConstantVector::get();
  LOWORD(v321) = 257;
  v245 = llvm::IRBuilderBase::CreateShuffleVector((v249 + 8), v245, v245, v148, &__src);
LABEL_314:
  *v328 = llvm::ConstantInt::get();
  *&v328[8] = llvm::ConstantInt::get();
  *&v328[16] = llvm::ConstantInt::get();
  *&v328[24] = llvm::ConstantInt::get();
  v149 = llvm::ConstantVector::get();
  if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v282.__r_.__value_.__l.__size_ != 5)
    {
      goto LABEL_325;
    }

    v150 = v282.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) != 5)
    {
      goto LABEL_325;
    }

    v150 = &v282;
  }

  data = v150->__r_.__value_.__l.__data_;
  v152 = v150->__r_.__value_.__s.__data_[4];
  if (data == 1765305968 && v152 == 51)
  {
    v154 = llvm::UndefValue::get();
    LOWORD(v329) = 257;
    ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector((v249 + 8), ShuffleVector, v154, v149, v328);
  }

LABEL_325:
  if (SHIBYTE(v281.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v281.__r_.__value_.__l.__size_ != 5)
    {
      goto LABEL_336;
    }

    v155 = v281.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v281.__r_.__value_.__r.__words[2]) != 5)
    {
      goto LABEL_336;
    }

    v155 = &v281;
  }

  v156 = v155->__r_.__value_.__l.__data_;
  v157 = v155->__r_.__value_.__s.__data_[4];
  if (v156 == 1765305968 && v157 == 51)
  {
    v159 = llvm::UndefValue::get();
    LOWORD(v329) = 257;
    v247 = llvm::IRBuilderBase::CreateShuffleVector((v249 + 8), v247, v159, v149, v328);
  }

LABEL_336:
  v160 = v239 == 115;
  v161 = v242 == 115;
  v162 = *(v120 + 8);
  LOWORD(v329) = 257;
  Cast = llvm::IRBuilderBase::CreateCast(v249 + 8, 49, ShuffleVector, v162, v328);
  v163 = *(v124 + 8);
  LOWORD(v329) = 257;
  v269 = llvm::IRBuilderBase::CreateCast(v249 + 8, 49, v247, v163, v328);
  v164 = *(v128 + 8);
  LOWORD(v329) = 257;
  v268 = llvm::IRBuilderBase::CreateCast(v249 + 8, 49, v245, v164, v328);
  v266 = AGCSimdMatrix::buildSimdMatrixMultiplyAccumulateImpl(unsigned int,unsigned int,unsigned int,llvm::Type *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,std::string const&,std::string const&,std::string const&,std::string const&,BOOL,BOOL,BOOL)::$_0::operator()(v249, v237, v238, v287);
  v267 = v165;
  v265[0] = AGCSimdMatrix::buildSimdMatrixMultiplyAccumulateImpl(unsigned int,unsigned int,unsigned int,llvm::Type *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,std::string const&,std::string const&,std::string const&,std::string const&,BOOL,BOOL,BOOL)::$_0::operator()(v249, v236, v235, v286);
  v265[1] = v166;
  v169 = *(v120 + 40) & 0xF | (v160 << 6) & 0xFFFFE07F | ((*(v120 + 44) & 7) << 7) & 0xE3FF | ((BYTE2(v267) & 1) << 10) & 0xE7FF | ((v267 & 3) << 11);
  v264 = *(v120 + 40) & 0xF | (v160 << 6) & 0xE07F | ((*(v120 + 44) & 7) << 7) & 0xE3FF | ((BYTE2(v267) & 1) << 10) & 0xE7FF | ((v267 & 3) << 11);
  v170 = (v166 >> 6) & 0x400 | ((*(v124 + 44) & 7) << 7) & 0xE7FF | ((v166 & 3) << 11) | *(v124 + 40) & 0xF | (v161 << 6);
  v263 = (v166 >> 6) & 0x400 | ((*(v124 + 44) & 7) << 7) & 0xE7FF | ((v166 & 3) << 11) | *(v124 + 40) & 0xF | (v161 << 6);
  v262 = *(v128 + 40) & 0xF;
  v261 = *(v117 + 40) & 0xF | (32 * (v18 != -1));
  *v328 = &v266;
  *&v328[8] = v265;
  *&v328[16] = v249;
  *&v328[24] = &v287;
  *&v329 = &v286;
  *(&v329 + 1) = &v285;
  *&v330 = &v261;
  *(&v330 + 1) = &Cast;
  v331 = &v264;
  v332 = &v269;
  v333 = &v263;
  v334 = &v268;
  v335[0] = &v262;
  v335[1] = &v271;
  if (*(v241 + 16) != 16 || *(v240 + 16) != 16)
  {
    v174 = *(v249 + 56);
    __src.__r_.__value_.__r.__words[0] = "gemm.switch.merge";
    LOWORD(v321) = 259;
    v175 = llvm::BasicBlock::splitBasicBlock();
    v248 = v174;
    v178 = *(v174 + 5);
    v177 = (v174 + 40);
    v176 = v178;
    if (v178 == v177)
    {
      v181 = 0;
    }

    else
    {
      v179 = (v176 - 3);
      if (v176)
      {
        v180 = v176 - 3;
      }

      else
      {
        v180 = 0;
      }

      if (*(v180 + 16) - 29 >= 0xB)
      {
        v181 = 0;
      }

      else
      {
        v181 = v179;
      }
    }

    llvm::Instruction::eraseFromParent(v181);
    *(v249 + 56) = v248;
    *(v249 + 64) = v177;
    v182 = *(v249 + 200);
    LOWORD(v321) = 257;
    v183 = llvm::IRBuilderBase::CreateCast(v249 + 8, 39, v240, v182, &__src);
    v184 = *(v249 + 200);
    v311 = 257;
    v185 = llvm::IRBuilderBase::CreateCast(v249 + 8, 39, v241, v184, &v309);
    v318 = 257;
    v186 = llvm::ConstantInt::get();
    Shl = llvm::IRBuilderBase::CreateShl((v249 + 8), v185, v186, &v317);
    v316 = 257;
    v188 = llvm::IRBuilderBase::CreateOr((v249 + 8), v183, Shl, v315);
    llvm::IRBuilderBase::CreateSwitch((v249 + 8), v188, v175, 4);
    memset(v315, 0, sizeof(v315));
    memset(v314, 0, sizeof(v314));
    std::string::basic_string[abi:nn200100]<0>(&v309, "NN");
    std::string::basic_string[abi:nn200100]<0>(&v310, "NT");
    std::string::basic_string[abi:nn200100]<0>(v312, "TN");
    std::string::basic_string[abi:nn200100]<0>(v313, "TT");
    __src.__r_.__value_.__r.__words[0] = "gemm.switch";
    __src.__r_.__value_.__r.__words[2] = &v309;
    LOWORD(v321) = 1027;
    operator new();
  }

  v171 = (v241 + 24);
  if (*(v241 + 32) >= 0x41u)
  {
    v171 = *v171;
  }

  v264 = (32 * (*v171 & 1)) | v169;
  v172 = (v240 + 24);
  if (*(v240 + 32) >= 0x41u)
  {
    v172 = *v172;
  }

  v263 = (32 * (*v172 & 1)) | v170;
  AGCSimdMatrix::buildSimdMatrixMultiplyAccumulateImpl(unsigned int,unsigned int,unsigned int,llvm::Type *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,std::string const&,std::string const&,std::string const&,std::string const&,BOOL,BOOL,BOOL)::$_2::operator()(&__src, v328, v167, v168);
  v311 = 257;
  v173 = llvm::IRBuilderBase::CreateCall((v249 + 8), *(v246 + 24), v246, __src.__r_.__value_.__l.__data_, LODWORD(__src.__r_.__value_.__r.__words[1]), &v309);
  if (__src.__r_.__value_.__l.__data_ != &__src.__r_.__value_.__r.__words[2])
  {
    free(__src.__r_.__value_.__l.__data_);
  }

  if ((v253.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v189 = HIBYTE(v253.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v189 = v253.__r_.__value_.__l.__size_;
  }

  v190 = HIBYTE(v283.__r_.__value_.__r.__words[2]);
  if ((v283.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v190 = v283.__r_.__value_.__l.__size_;
  }

  if (v189 != v190 || ((v253.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v191 = &v253) : (v191 = v253.__r_.__value_.__r.__words[0]), (v283.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v192 = &v283) : (v192 = v283.__r_.__value_.__r.__words[0]), memcmp(v191, v192, v189)))
  {
    if (v244)
    {
      v193 = llvm::StringMapImpl::FindKey();
      if (v193 != -1 && v193 != dword_27C8DB820)
      {
        if (v18 == -1)
        {
          v207 = &unk_20E75F419;
        }

        else
        {
          v207 = "_saturate";
        }

        std::string::basic_string[abi:nn200100]<0>(&v260, v207);
        v208 = std::string::insert(&v260, 0, "air.quantize");
        v209 = v208->__r_.__value_.__r.__words[2];
        *v314 = *&v208->__r_.__value_.__l.__data_;
        *&v314[16] = v209;
        v208->__r_.__value_.__l.__size_ = 0;
        v208->__r_.__value_.__r.__words[2] = 0;
        v208->__r_.__value_.__r.__words[0] = 0;
        v210 = std::string::append(v314, "_pack.");
        v211 = v210->__r_.__value_.__r.__words[2];
        *v315 = *&v210->__r_.__value_.__l.__data_;
        *&v315[16] = v211;
        v210->__r_.__value_.__l.__size_ = 0;
        v210->__r_.__value_.__r.__words[2] = 0;
        v210->__r_.__value_.__r.__words[0] = 0;
        if ((v253.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v212 = &v253;
        }

        else
        {
          v212 = v253.__r_.__value_.__r.__words[0];
        }

        if ((v253.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v213 = SHIBYTE(v253.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v213 = v253.__r_.__value_.__l.__size_;
        }

        v214 = llvm::StringMap<std::string,llvm::MallocAllocator>::try_emplace<>(&AGCSimdMatrix::buildSimdMatrixMultiplyAccumulateImpl(unsigned int,unsigned int,unsigned int,llvm::Type *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,std::string const&,std::string const&,std::string const&,std::string const&,BOOL,BOOL,BOOL)::airAccumulatorsFP8, v212, v213);
        v215 = *(*v214 + 31);
        if (v215 >= 0)
        {
          v216 = (*v214 + 8);
        }

        else
        {
          v216 = *(*v214 + 8);
        }

        if (v215 >= 0)
        {
          v217 = *(*v214 + 31);
        }

        else
        {
          v217 = *(*v214 + 16);
        }

        v218 = std::string::append(v315, v216, v217);
        v219 = v218->__r_.__value_.__r.__words[2];
        *&v317.__r_.__value_.__l.__data_ = *&v218->__r_.__value_.__l.__data_;
        v317.__r_.__value_.__r.__words[2] = v219;
        v218->__r_.__value_.__l.__size_ = 0;
        v218->__r_.__value_.__r.__words[2] = 0;
        v218->__r_.__value_.__r.__words[0] = 0;
        v220 = std::string::append(&v317, ".");
        v221 = v220->__r_.__value_.__r.__words[2];
        *&__src.__r_.__value_.__l.__data_ = *&v220->__r_.__value_.__l.__data_;
        __src.__r_.__value_.__r.__words[2] = v221;
        v220->__r_.__value_.__l.__size_ = 0;
        v220->__r_.__value_.__r.__words[2] = 0;
        v220->__r_.__value_.__r.__words[0] = 0;
        if ((v283.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v222 = &v283;
        }

        else
        {
          v222 = v283.__r_.__value_.__r.__words[0];
        }

        if ((v283.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v223 = HIBYTE(v283.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v223 = v283.__r_.__value_.__l.__size_;
        }

        v224 = std::string::append(&__src, v222, v223);
        v225 = v224->__r_.__value_.__r.__words[2];
        *&v309.__r_.__value_.__l.__data_ = *&v224->__r_.__value_.__l.__data_;
        v309.__r_.__value_.__r.__words[2] = v225;
        v224->__r_.__value_.__l.__size_ = 0;
        v224->__r_.__value_.__r.__words[2] = 0;
        v224->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__src.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v317.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v317.__r_.__value_.__l.__data_);
        }

        if ((v315[23] & 0x80000000) != 0)
        {
          operator delete(*v315);
        }

        if ((v314[23] & 0x80000000) != 0)
        {
          operator delete(*v314);
        }

        if (SHIBYTE(v260.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v260.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
        {
          v226 = v309.__r_.__value_.__r.__words[0];
          if (!v309.__r_.__value_.__r.__words[0])
          {
            goto LABEL_424;
          }
        }

        else
        {
          v226 = &v309;
        }

        strlen(v226);
LABEL_424:
        v227 = *(v249 + 200);
        __src.__r_.__value_.__r.__words[0] = *v173;
        __src.__r_.__value_.__l.__size_ = v227;
        llvm::FunctionType::get();
        llvm::Module::getOrInsertFunction();
        v229 = v228;
        v317.__r_.__value_.__r.__words[0] = v173;
        v317.__r_.__value_.__l.__size_ = llvm::ConstantInt::get();
        LOWORD(v321) = 257;
        v204 = *(v229 + 24);
        v205 = (v249 + 8);
        v203 = v229;
        v206 = 2;
LABEL_425:
        v173 = llvm::IRBuilderBase::CreateCall(v205, v204, v203, &v317, v206, &__src);
        if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v309.__r_.__value_.__l.__data_);
        }

        goto LABEL_427;
      }
    }

    std::operator+<char>();
    v195 = std::string::append(&v317, ".f.");
    v196 = v195->__r_.__value_.__r.__words[2];
    *&__src.__r_.__value_.__l.__data_ = *&v195->__r_.__value_.__l.__data_;
    __src.__r_.__value_.__r.__words[2] = v196;
    v195->__r_.__value_.__l.__size_ = 0;
    v195->__r_.__value_.__r.__words[2] = 0;
    v195->__r_.__value_.__r.__words[0] = 0;
    if ((v283.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v197 = &v283;
    }

    else
    {
      v197 = v283.__r_.__value_.__r.__words[0];
    }

    if ((v283.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v198 = HIBYTE(v283.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v198 = v283.__r_.__value_.__l.__size_;
    }

    v199 = std::string::append(&__src, v197, v198);
    v200 = v199->__r_.__value_.__r.__words[2];
    *&v309.__r_.__value_.__l.__data_ = *&v199->__r_.__value_.__l.__data_;
    v309.__r_.__value_.__r.__words[2] = v200;
    v199->__r_.__value_.__l.__size_ = 0;
    v199->__r_.__value_.__r.__words[2] = 0;
    v199->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v317.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v317.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
    {
      v201 = v309.__r_.__value_.__r.__words[0];
      if (!v309.__r_.__value_.__r.__words[0])
      {
        goto LABEL_386;
      }
    }

    else
    {
      v201 = &v309;
    }

    strlen(v201);
LABEL_386:
    __src.__r_.__value_.__r.__words[0] = *v173;
    llvm::FunctionType::get();
    llvm::Module::getOrInsertFunction();
    v203 = v202;
    v317.__r_.__value_.__r.__words[0] = v173;
    LOWORD(v321) = 257;
    v204 = *(v202 + 24);
    v205 = (v249 + 8);
    v206 = 1;
    goto LABEL_425;
  }

LABEL_427:
  if (v40)
  {
    v230 = (v287 * v286);
    llvm::UndefValue::get();
    if (v230)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(v230);
    }

    if ((v286 * v287) >= 0x20)
    {
      v231 = 0;
      do
      {
        *(8 * v231++) = llvm::ConstantInt::get();
      }

      while (v231 < (v286 * v287) >> 5);
    }

    v232 = llvm::ConstantVector::get();
    LOWORD(v321) = 257;
    llvm::IRBuilderBase::CreateShuffleVector((v249 + 8), v173, v173, v232, &__src);
  }

  if (SHIBYTE(v280.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v280.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v281.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v281.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v282.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v283.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v283.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v251.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v251.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v252.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v252.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v253.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v253.__r_.__value_.__l.__data_);
  }

  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(v243);
  if (v288.__r_.__value_.__l.__data_ != &v288.__r_.__value_.__r.__words[2])
  {
    free(v288.__r_.__value_.__l.__data_);
  }
}