char *llvm::PassInfoMixin<InitCompileAGPVertexShaderPostTessellationHWPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x62)
  {
    v1 = v0;
  }

  else
  {
    v1 = 98;
  }

  v2 = &aStringrefLlvmG_28[v1];
  v3 = 98 - v1;
  if ((98 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 98 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileAGPVertexShaderPostTessellationHWPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileAGPVertexShaderPostTessellationHWPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMAGPVertexShaderPostTessellationHW>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x78)
  {
    v1 = v0;
  }

  else
  {
    v1 = 120;
  }

  v2 = &aStringrefLlvmG_27[v1];
  v3 = 120 - v1;
  if ((120 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 120 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

void AGCLLVMAGPVertexShaderPostTessellationHW::~AGCLLVMAGPVertexShaderPostTessellationHW(AGCLLVMAGPVertexShaderPostTessellationHW *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_28255E2A0;
  v5 = (this + 10856);
  *(this + 1357) = &unk_28255E648;
  *(this + 1570) = &unk_28255E758;
  v6 = *(this + 1355);
  if (v6 != -8192 && v6 != -4096 && v6 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 10824));
  }

  AGCLLVMAGPVertexShaderPostTessellation::~AGCLLVMAGPVertexShaderPostTessellation(this, off_28255E768, a3, a4);
  AGCLLVMObject::~AGCLLVMObject(v5);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28255E2A0;
  v5 = (this + 10856);
  *(this + 1357) = &unk_28255E648;
  *(this + 1570) = &unk_28255E758;
  v6 = *(this + 1355);
  if (v6 != -8192 && v6 != -4096 && v6 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 10824));
  }

  AGCLLVMAGPVertexShaderPostTessellation::~AGCLLVMAGPVertexShaderPostTessellation(this, off_28255E768, a3, a4);
  AGCLLVMObject::~AGCLLVMObject(v5);
}

void AGCLLVMDriverTessellationShader::getCompilationKeyDescription(AGCLLVMDriverTessellationShader *this@<X0>, std::string *a2@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *(this + 1307);
  if (v3)
  {
    std::string::basic_string[abi:nn200100]<0>(v13, "AGCTessellationDriverState");
    std::string::basic_string[abi:nn200100]<0>(v11, "patch_type");
    _agcFieldString<char const*>(&v15, v11, _agcTessellationPatchTypeStrings[*v3 & 3]);
    std::string::basic_string[abi:nn200100]<0>(v9, "partition_mode");
    _agcFieldString<char const*>(&v16, v9, _agcTessellationPartitionModeStrings[(*v3 >> 2) & 7]);
    std::string::basic_string[abi:nn200100]<0>(v7, "step_function");
    _agcFieldString<char const*>(&v17, v7, _agcTessellationStepFunctionStrings[*v3 >> 5]);
    std::string::basic_string[abi:nn200100]<0>(__p, "unused");
    _agcFieldString<unsigned int>(&v18, __p, *v3 >> 8);
    _agcGroupWithHeader(a2, v13, &v15, 4);
    for (i = 0; i != -12; i -= 3)
    {
      if (SHIBYTE(v18.__r_.__value_.__r.__words[i + 2]) < 0)
      {
        operator delete(*(&v18.__r_.__value_.__l.__data_ + i * 8));
      }
    }

    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    if (v8 < 0)
    {
      operator delete(v7[0]);
    }

    if (v10 < 0)
    {
      operator delete(v9[0]);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
    }
  }

  else
  {

    std::string::basic_string[abi:nn200100]<0>(a2, &unk_20E75F419);
  }
}

void virtual thunk toAGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(AGCLLVMDriverTessellationShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = this + *(*this - 24);
  AGCLLVMObject::~AGCLLVMObject((v4 + 10496));

  JUMPOUT(0x20F331DC0);
}

{
  v5 = (v4 + 10496);

  AGCLLVMObject::~AGCLLVMObject(v5);
}

void AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(AGCLLVMDriverTessellationShader *this, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v6 = *a2;
  *this = *a2;
  *(this + *(v6 - 24)) = a2[16];
  *(this + *(*this - 24) + 1704) = a2[17];
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 10464, a2, a3, a4);
  v10 = a2[2];
  *this = v10;
  *(this + *(v10 - 24)) = a2[12];
  *(this + *(*this - 24) + 1704) = a2[13];
  v11 = *(this + 1295);
  if (v11 != this + 10376)
  {
    free(v11);
  }

  v12 = *(this + 1229);
  if (v12 != this + 9848)
  {
    free(v12);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 9792, v7, v8, v9);

  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, a2 + 3);
}

uint64_t AGCLLVMDriverTessellationShader::setupShaderInputs(AGCLLVMDriverTessellationShader *this)
{
  v2 = *(this + 2460);
  if (v2)
  {
    v3 = *(this + 1229);
    v4 = v3 + 32 * v2;
    v5 = *(this + 1308);
    v6 = *(this + 2618);
    v7 = &v5[v6];
    do
    {
      i = v5;
      if (v6)
      {
          ;
        }
      }

      v10 = *(v3 + 4);
      if (i != v7)
      {
        v11 = *i;
        while (*(v11 + 8) != v10)
        {
          do
          {
            v12 = i[1];
            ++i;
            v11 = v12;
            if (v12)
            {
              v13 = v11 == -8;
            }

            else
            {
              v13 = 1;
            }
          }

          while (v13);
          if (i == v7)
          {
            goto LABEL_21;
          }
        }

        v10 = *(v11 + 16);
      }

LABEL_21:
      *(v3 + 4) = v10;
      v3 += 32;
    }

    while (v3 != v4);
  }

  AGCLLVMUserObject::remapDriverBindpoint(this, this + 1308);

  return AGCLLVMAGPVertexShader::setupShaderInputs(this);
}

uint64_t AGCLLVMDriverTessellationShader::setupShaderWrapper(llvm::Function **this)
{
  v2 = AGCLLVMAGPVertexShaderRegular::setupShaderWrapper(this);
  if (v2)
  {
    v3 = *(this + *(*this - 3) + 2168);
    (*(*v3 + 432))(v3, this[20]);
  }

  return v2;
}

void AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(AGCLLVMDriverTessellationShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  AGCLLVMObject::~AGCLLVMObject((v4 + 10496));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((v4 + 10496));
}

void virtual thunk toAGCLLVMDriverVDMNOPDBGShader::~AGCLLVMDriverVDMNOPDBGShader(AGCLLVMDriverVDMNOPDBGShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = this + *(*this - 24);
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(v4, off_282560CD8, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 10496));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader((this + *(*this - 24)), off_282560CD8, a3, a4);
  v5 = (v4 + 10496);

  AGCLLVMObject::~AGCLLVMObject(v5);
}

uint64_t AGCLLVMDriverVDMNOPDBGShader::setupShaderWrapper(llvm::Function **this)
{
  v12[1] = *MEMORY[0x277D85DE8];
  result = AGCLLVMDriverTessellationShader::setupShaderWrapper(this);
  if (result)
  {
    result = llvm::Module::getFunction();
    if (result)
    {
      v3 = result;
      v4 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this + *(*this - 3) + 1704, "llvm.agx1.nop.dbg", 17, *(this + *(*this - 3) + 1848), *(this + *(*this - 3) + 1896));
      v12[0] = llvm::ConstantInt::get();
      v5 = *(v3 + 1);
      if (v5)
      {
        v6 = this + 214;
        do
        {
          v7 = *(v5 + 8);
          v8 = *(v5 + 24);
          llvm::IRBuilderBase::SetInsertPoint((v6 + *(*this - 3)), v8);
          v9 = *(*this - 3);
          v11 = 257;
          llvm::IRBuilderBase::CreateCall((v6 + v9), *(v4 + 24), v4, v12, 1, v10);
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v8);
          v5 = v7;
        }

        while (v7);
      }

      llvm::Function::eraseFromParent(v3);
      return 1;
    }
  }

  return result;
}

void AGCLLVMDriverVDMNOPDBGShader::~AGCLLVMDriverVDMNOPDBGShader(AGCLLVMDriverVDMNOPDBGShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(this, off_282560CD8, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 10496));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(this, off_282560CD8, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 10496));
}

void virtual thunk toAGCLLVMDriverExecuteIndirectESLGenerationShader::~AGCLLVMDriverExecuteIndirectESLGenerationShader(AGCLLVMDriverExecuteIndirectESLGenerationShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (this + *(*this - 24));
  *v4 = &unk_282560D90;
  v4[1311] = &unk_282561118;
  v4[1524] = &unk_282561228;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 1307), a2, a3, a4);
  *v4 = off_28256A148;
  v4[1311] = off_28256A4C8;
  v4[1524] = &off_28256A5D8;
  v8 = v4[1295];
  if (v8 != v4 + 1297)
  {
    free(v8);
  }

  v9 = v4[1229];
  if (v9 != v4 + 1231)
  {
    free(v9);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap((v4 + 1224), v5, v6, v7);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v4, off_282561248);
  AGCLLVMObject::~AGCLLVMObject((v4 + 1311));

  JUMPOUT(0x20F331DC0);
}

{
  v4 = (this + *(*this - 24));
  *v4 = &unk_282560D90;
  v4[1311] = &unk_282561118;
  v4[1524] = &unk_282561228;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 1307), a2, a3, a4);
  *v4 = off_28256A148;
  v4[1311] = off_28256A4C8;
  v4[1524] = &off_28256A5D8;
  v8 = v4[1295];
  if (v8 != v4 + 1297)
  {
    free(v8);
  }

  v9 = v4[1229];
  if (v9 != v4 + 1231)
  {
    free(v9);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap((v4 + 1224), v5, v6, v7);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v4, off_282561248);

  AGCLLVMObject::~AGCLLVMObject((v4 + 1311));
}

uint64_t AGCLLVMDriverExecuteIndirectESLGenerationShader::setupShaderWrapper(llvm::Function **this)
{
  v2 = AGCLLVMAGPVertexShaderRegular::setupShaderWrapper(this);
  if (v2)
  {
    v3 = *(this + *(*this - 3) + 2168);
    (*(*v3 + 432))(v3, this[20]);
  }

  return v2;
}

void AGCLLVMDriverExecuteIndirectESLGenerationShader::~AGCLLVMDriverExecuteIndirectESLGenerationShader(AGCLLVMDriverExecuteIndirectESLGenerationShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_282560D90;
  v5 = (this + 10488);
  *(this + 1311) = &unk_282561118;
  *(this + 1524) = &unk_282561228;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 10456, a2, a3, a4);
  *this = off_28256A148;
  *(this + 1311) = off_28256A4C8;
  *(this + 1524) = &off_28256A5D8;
  v9 = *(this + 1295);
  if (v9 != this + 10376)
  {
    free(v9);
  }

  v10 = *(this + 1229);
  if (v10 != this + 9848)
  {
    free(v10);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 9792, v6, v7, v8);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_282561248);
  AGCLLVMObject::~AGCLLVMObject(v5);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_282560D90;
  v5 = (this + 10488);
  *(this + 1311) = &unk_282561118;
  *(this + 1524) = &unk_282561228;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 10456, a2, a3, a4);
  *this = off_28256A148;
  *(this + 1311) = off_28256A4C8;
  *(this + 1524) = &off_28256A5D8;
  v9 = *(this + 1295);
  if (v9 != this + 10376)
  {
    free(v9);
  }

  v10 = *(this + 1229);
  if (v10 != this + 9848)
  {
    free(v10);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 9792, v6, v7, v8);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_282561248);
  AGCLLVMObject::~AGCLLVMObject(v5);
}

void virtual thunk toAGCLLVMDriverExecuteIndirectRangeExecutionVertexShader::~AGCLLVMDriverExecuteIndirectRangeExecutionVertexShader(AGCLLVMDriverExecuteIndirectRangeExecutionVertexShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (this + *(*this - 24));
  *v4 = &unk_2825612D8;
  v4[1311] = &unk_282561660;
  v4[1524] = &unk_282561770;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 1307), a2, a3, a4);
  *v4 = off_28256B768;
  v4[1311] = off_28256BAE8;
  v4[1524] = &off_28256BBF8;
  v8 = v4[1295];
  if (v8 != v4 + 1297)
  {
    free(v8);
  }

  v9 = v4[1229];
  if (v9 != v4 + 1231)
  {
    free(v9);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap((v4 + 1224), v5, v6, v7);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v4, off_282561790);
  AGCLLVMObject::~AGCLLVMObject((v4 + 1311));

  JUMPOUT(0x20F331DC0);
}

{
  v4 = (this + *(*this - 24));
  *v4 = &unk_2825612D8;
  v4[1311] = &unk_282561660;
  v4[1524] = &unk_282561770;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 1307), a2, a3, a4);
  *v4 = off_28256B768;
  v4[1311] = off_28256BAE8;
  v4[1524] = &off_28256BBF8;
  v8 = v4[1295];
  if (v8 != v4 + 1297)
  {
    free(v8);
  }

  v9 = v4[1229];
  if (v9 != v4 + 1231)
  {
    free(v9);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap((v4 + 1224), v5, v6, v7);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v4, off_282561790);

  AGCLLVMObject::~AGCLLVMObject((v4 + 1311));
}

uint64_t AGCLLVMDriverExecuteIndirectRangeExecutionVertexShader::setupShaderWrapper(llvm::Function **this)
{
  v2 = AGCLLVMAGPVertexShaderRegular::setupShaderWrapper(this);
  if (v2)
  {
    v3 = *(this + *(*this - 3) + 2168);
    (*(*v3 + 432))(v3, this[20]);
  }

  return v2;
}

void AGCLLVMDriverExecuteIndirectRangeExecutionVertexShader::~AGCLLVMDriverExecuteIndirectRangeExecutionVertexShader(AGCLLVMDriverExecuteIndirectRangeExecutionVertexShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2825612D8;
  v5 = (this + 10488);
  *(this + 1311) = &unk_282561660;
  *(this + 1524) = &unk_282561770;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 10456, a2, a3, a4);
  *this = off_28256B768;
  *(this + 1311) = off_28256BAE8;
  *(this + 1524) = &off_28256BBF8;
  v9 = *(this + 1295);
  if (v9 != this + 10376)
  {
    free(v9);
  }

  v10 = *(this + 1229);
  if (v10 != this + 9848)
  {
    free(v10);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 9792, v6, v7, v8);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_282561790);
  AGCLLVMObject::~AGCLLVMObject(v5);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825612D8;
  v5 = (this + 10488);
  *(this + 1311) = &unk_282561660;
  *(this + 1524) = &unk_282561770;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 10456, a2, a3, a4);
  *this = off_28256B768;
  *(this + 1311) = off_28256BAE8;
  *(this + 1524) = &off_28256BBF8;
  v9 = *(this + 1295);
  if (v9 != this + 10376)
  {
    free(v9);
  }

  v10 = *(this + 1229);
  if (v10 != this + 9848)
  {
    free(v10);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 9792, v6, v7, v8);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_282561790);
  AGCLLVMObject::~AGCLLVMObject(v5);
}

void virtual thunk toAGCLLVMDriverVRRPatchVertexShader::~AGCLLVMDriverVRRPatchVertexShader(AGCLLVMDriverVRRPatchVertexShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (this + *(*this - 24));
  *v4 = off_28256CD88;
  v4[1307] = off_28256D108;
  v4[1520] = &off_28256D218;
  v5 = v4[1295];
  if (v5 != v4 + 1297)
  {
    free(v5);
  }

  v6 = v4[1229];
  if (v6 != v4 + 1231)
  {
    free(v6);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap((v4 + 1224), a2, a3, a4);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v4, off_282561CD8);
  AGCLLVMObject::~AGCLLVMObject((v4 + 1307));

  JUMPOUT(0x20F331DC0);
}

{
  v4 = (this + *(*this - 24));
  *v4 = off_28256CD88;
  v4[1307] = off_28256D108;
  v4[1520] = &off_28256D218;
  v5 = v4[1295];
  if (v5 != v4 + 1297)
  {
    free(v5);
  }

  v6 = v4[1229];
  if (v6 != v4 + 1231)
  {
    free(v6);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap((v4 + 1224), a2, a3, a4);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v4, off_282561CD8);

  AGCLLVMObject::~AGCLLVMObject((v4 + 1307));
}

uint64_t AGCLLVMDriverVRRPatchVertexShader::setupShaderWrapper(llvm::Function **this)
{
  v2 = AGCLLVMAGPVertexShaderRegular::setupShaderWrapper(this);
  if (v2)
  {
    v3 = *(this + *(*this - 3) + 2168);
    (*(*v3 + 432))(v3, this[20]);
  }

  return v2;
}

void AGCLLVMDriverVRRPatchVertexShader::~AGCLLVMDriverVRRPatchVertexShader(AGCLLVMDriverVRRPatchVertexShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = off_28256CD88;
  v5 = (this + 10456);
  *(this + 1307) = off_28256D108;
  *(this + 1520) = &off_28256D218;
  v6 = *(this + 1295);
  if (v6 != this + 10376)
  {
    free(v6);
  }

  v7 = *(this + 1229);
  if (v7 != this + 9848)
  {
    free(v7);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 9792, a2, a3, a4);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_282561CD8);
  AGCLLVMObject::~AGCLLVMObject(v5);

  JUMPOUT(0x20F331DC0);
}

{
  *this = off_28256CD88;
  v5 = (this + 10456);
  *(this + 1307) = off_28256D108;
  *(this + 1520) = &off_28256D218;
  v6 = *(this + 1295);
  if (v6 != this + 10376)
  {
    free(v6);
  }

  v7 = *(this + 1229);
  if (v7 != this + 9848)
  {
    free(v7);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 9792, a2, a3, a4);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_282561CD8);
  AGCLLVMObject::~AGCLLVMObject(v5);
}

void virtual thunk toAGCLLVMDriverGPUGatherVertexShader::~AGCLLVMDriverGPUGatherVertexShader(AGCLLVMDriverGPUGatherVertexShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (this + *(*this - 24));
  *v4 = off_28256E3A8;
  v4[1307] = off_28256E728;
  v4[1520] = &off_28256E838;
  v5 = v4[1295];
  if (v5 != v4 + 1297)
  {
    free(v5);
  }

  v6 = v4[1229];
  if (v6 != v4 + 1231)
  {
    free(v6);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap((v4 + 1224), a2, a3, a4);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v4, off_282562220);
  AGCLLVMObject::~AGCLLVMObject((v4 + 1307));

  JUMPOUT(0x20F331DC0);
}

{
  v4 = (this + *(*this - 24));
  *v4 = off_28256E3A8;
  v4[1307] = off_28256E728;
  v4[1520] = &off_28256E838;
  v5 = v4[1295];
  if (v5 != v4 + 1297)
  {
    free(v5);
  }

  v6 = v4[1229];
  if (v6 != v4 + 1231)
  {
    free(v6);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap((v4 + 1224), a2, a3, a4);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v4, off_282562220);

  AGCLLVMObject::~AGCLLVMObject((v4 + 1307));
}

uint64_t AGCLLVMDriverGPUGatherVertexShader::setupShaderWrapper(llvm::Function **this)
{
  v2 = AGCLLVMAGPVertexShaderRegular::setupShaderWrapper(this);
  if (v2)
  {
    v3 = *(this + *(*this - 3) + 2168);
    (*(*v3 + 432))(v3, this[20]);
  }

  return v2;
}

void AGCLLVMDriverGPUGatherVertexShader::~AGCLLVMDriverGPUGatherVertexShader(AGCLLVMDriverGPUGatherVertexShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = off_28256E3A8;
  v5 = (this + 10456);
  *(this + 1307) = off_28256E728;
  *(this + 1520) = &off_28256E838;
  v6 = *(this + 1295);
  if (v6 != this + 10376)
  {
    free(v6);
  }

  v7 = *(this + 1229);
  if (v7 != this + 9848)
  {
    free(v7);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 9792, a2, a3, a4);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_282562220);
  AGCLLVMObject::~AGCLLVMObject(v5);

  JUMPOUT(0x20F331DC0);
}

{
  *this = off_28256E3A8;
  v5 = (this + 10456);
  *(this + 1307) = off_28256E728;
  *(this + 1520) = &off_28256E838;
  v6 = *(this + 1295);
  if (v6 != this + 10376)
  {
    free(v6);
  }

  v7 = *(this + 1229);
  if (v7 != this + 9848)
  {
    free(v7);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 9792, a2, a3, a4);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_282562220);
  AGCLLVMObject::~AGCLLVMObject(v5);
}

void virtual thunk toAGCLLVMDriverFastClearVertexShaders::~AGCLLVMDriverFastClearVertexShaders(AGCLLVMDriverFastClearVertexShaders *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (this + *(*this - 24));
  *v4 = off_28256F9C8;
  v4[1307] = off_28256FD48;
  v4[1520] = &off_28256FE58;
  v5 = v4[1295];
  if (v5 != v4 + 1297)
  {
    free(v5);
  }

  v6 = v4[1229];
  if (v6 != v4 + 1231)
  {
    free(v6);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap((v4 + 1224), a2, a3, a4);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v4, off_282562768);
  AGCLLVMObject::~AGCLLVMObject((v4 + 1307));

  JUMPOUT(0x20F331DC0);
}

{
  v4 = (this + *(*this - 24));
  *v4 = off_28256F9C8;
  v4[1307] = off_28256FD48;
  v4[1520] = &off_28256FE58;
  v5 = v4[1295];
  if (v5 != v4 + 1297)
  {
    free(v5);
  }

  v6 = v4[1229];
  if (v6 != v4 + 1231)
  {
    free(v6);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap((v4 + 1224), a2, a3, a4);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v4, off_282562768);

  AGCLLVMObject::~AGCLLVMObject((v4 + 1307));
}

void AGCLLVMDriverFastClearVertexShaders::~AGCLLVMDriverFastClearVertexShaders(AGCLLVMDriverFastClearVertexShaders *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = off_28256F9C8;
  v5 = (this + 10456);
  *(this + 1307) = off_28256FD48;
  *(this + 1520) = &off_28256FE58;
  v6 = *(this + 1295);
  if (v6 != this + 10376)
  {
    free(v6);
  }

  v7 = *(this + 1229);
  if (v7 != this + 9848)
  {
    free(v7);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 9792, a2, a3, a4);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_282562768);
  AGCLLVMObject::~AGCLLVMObject(v5);

  JUMPOUT(0x20F331DC0);
}

{
  *this = off_28256F9C8;
  v5 = (this + 10456);
  *(this + 1307) = off_28256FD48;
  *(this + 1520) = &off_28256FE58;
  v6 = *(this + 1295);
  if (v6 != this + 10376)
  {
    free(v6);
  }

  v7 = *(this + 1229);
  if (v7 != this + 9848)
  {
    free(v7);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 9792, a2, a3, a4);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_282562768);
  AGCLLVMObject::~AGCLLVMObject(v5);
}

void AGCLLVMAGPVertexShaderGen4::~AGCLLVMAGPVertexShaderGen4(AGCLLVMAGPVertexShaderGen4 *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = off_282570FE8;
  v5 = (this + 10456);
  *(this + 1307) = off_282571368;
  *(this + 1520) = &off_282571478;
  v6 = *(this + 1295);
  if (v6 != this + 10376)
  {
    free(v6);
  }

  v7 = *(this + 1229);
  if (v7 != this + 9848)
  {
    free(v7);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 9792, a2, a3, a4);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_282562CB0);
  AGCLLVMObject::~AGCLLVMObject(v5);

  JUMPOUT(0x20F331DC0);
}

{
  *this = off_282570FE8;
  v5 = (this + 10456);
  *(this + 1307) = off_282571368;
  *(this + 1520) = &off_282571478;
  v6 = *(this + 1295);
  if (v6 != this + 10376)
  {
    free(v6);
  }

  v7 = *(this + 1229);
  if (v7 != this + 9848)
  {
    free(v7);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 9792, a2, a3, a4);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_282562CB0);
  AGCLLVMObject::~AGCLLVMObject(v5);
}

void virtual thunk toAGCLLVMDriverMSTessellationPatchVertexShader::~AGCLLVMDriverMSTessellationPatchVertexShader(AGCLLVMDriverMSTessellationPatchVertexShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (this + *(*this - 24));
  *v4 = off_282572608;
  v4[1307] = off_282572988;
  v4[1520] = &off_282572A98;
  v5 = v4[1295];
  if (v5 != v4 + 1297)
  {
    free(v5);
  }

  v6 = v4[1229];
  if (v6 != v4 + 1231)
  {
    free(v6);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap((v4 + 1224), a2, a3, a4);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v4, off_2825631F8);
  AGCLLVMObject::~AGCLLVMObject((v4 + 1307));

  JUMPOUT(0x20F331DC0);
}

{
  v4 = (this + *(*this - 24));
  *v4 = off_282572608;
  v4[1307] = off_282572988;
  v4[1520] = &off_282572A98;
  v5 = v4[1295];
  if (v5 != v4 + 1297)
  {
    free(v5);
  }

  v6 = v4[1229];
  if (v6 != v4 + 1231)
  {
    free(v6);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap((v4 + 1224), a2, a3, a4);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v4, off_2825631F8);

  AGCLLVMObject::~AGCLLVMObject((v4 + 1307));
}

uint64_t AGCLLVMDriverMSTessellationPatchVertexShader::setupShaderWrapper(llvm::Function **this)
{
  v2 = AGCLLVMAGPVertexShaderRegular::setupShaderWrapper(this);
  if (v2)
  {
    v3 = *(this + *(*this - 3) + 2168);
    (*(*v3 + 432))(v3, this[20]);
  }

  return v2;
}

void AGCLLVMDriverMSTessellationPatchVertexShader::~AGCLLVMDriverMSTessellationPatchVertexShader(AGCLLVMDriverMSTessellationPatchVertexShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = off_282572608;
  v5 = (this + 10456);
  *(this + 1307) = off_282572988;
  *(this + 1520) = &off_282572A98;
  v6 = *(this + 1295);
  if (v6 != this + 10376)
  {
    free(v6);
  }

  v7 = *(this + 1229);
  if (v7 != this + 9848)
  {
    free(v7);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 9792, a2, a3, a4);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_2825631F8);
  AGCLLVMObject::~AGCLLVMObject(v5);

  JUMPOUT(0x20F331DC0);
}

{
  *this = off_282572608;
  v5 = (this + 10456);
  *(this + 1307) = off_282572988;
  *(this + 1520) = &off_282572A98;
  v6 = *(this + 1295);
  if (v6 != this + 10376)
  {
    free(v6);
  }

  v7 = *(this + 1229);
  if (v7 != this + 9848)
  {
    free(v7);
  }

  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(this + 9792, a2, a3, a4);
  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_2825631F8);
  AGCLLVMObject::~AGCLLVMObject(v5);
}

uint64_t AGCLLVMAGPVertexShaderPostTessellation::AGCLLVMAGPVertexShaderPostTessellation(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5, unsigned int *a6)
{
  v9 = AGCLLVMAGPVertexShader::AGCLLVMAGPVertexShader(a1, a2 + 1, a3, a4, a5, a6);
  v10 = *a2;
  *v9 = *a2;
  *(a1 + *(v10 - 24)) = a2[13];
  *(a1 + *(*a1 - 24) + 1704) = a2[14];
  *(a1 + 10424) = (*(a4 + 16) >> 8) & 3;
  *(a1 + 10428) = (*(a4 + 16) >> 10) & 3;
  v11 = -360;
  do
  {
    v12 = a1 + v11;
    *(v12 + 10800) = 4;
    *(v12 + 10808) = 0uLL;
    v11 += 24;
  }

  while (v11);
  *(a1 + 10800) = 4;
  *(a1 + 10808) = 0u;
  Operand = llvm::NamedMDNode::getOperand(*(a1 + 56));
  v14 = *(Operand - 8 * *(Operand + 8) + 24);
  String = llvm::MDString::getString(*(v14 - 8 * *(v14 + 8) + 8));
  v16 = 0;
  if (v17 == 4)
  {
    v16 = *String == 1684108657;
  }

  *(a1 + 10420) = v16;
  *(a1 + 10436) = (*(a1 + 10424) & 0xFFFFFFFE) == 2;
  return a1;
}

uint64_t AGCLLVMAGPVertexShaderPostTessellationHW::getTessellationFactor(AGCLLVMAGPVertexShaderPostTessellationHW *this, char a2, unint64_t a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = 1872;
  if (!*(this + 2713))
  {
    v5 = 1856;
  }

  v6 = *(this + *(*this - 24) + v5);
  if (!*(this + 1355))
  {
    v7 = llvm::PointerType::get();
    v51[0] = "agc.tessellation_factor_buffer";
    v52 = 259;
    v8 = *(*(this + *(*this - 24) + 2168) + 920);
    v9 = (*(*v8 + 56))(v8);
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v7, v51, v9, 0, 5u, 0);
    llvm::ValueHandleBase::operator=((this + 10824), GlobalBufferBinding);
  }

  v56 = 0;
  v57 = 0;
  if (*(this + 2605))
  {
    v11 = this + *(*this - 24);
    v12 = 2016;
    if (!*(this + 2713))
    {
      v12 = 2000;
    }

    v13 = 1928;
    if (!*(this + 2713))
    {
      v13 = 1920;
    }

    v14 = *&v11[v12];
    v6 = *&v11[v13];
  }

  else
  {
    v14 = llvm::ArrayType::get(v6, 3);
  }

  v56 = v14;
  v57 = v6;
  v15 = llvm::StructType::create();
  v16 = llvm::PointerType::get();
  v17 = this + *(*this - 24);
  v18 = *(this + 1355);
  v52 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v17 + 1704), v18, v51);
  v50 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v17 + 1712), 49, Load, v16, v49);
  v22 = 0;
  v23 = *(this + 2607);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = (*(*this + 640))(this);
      goto LABEL_21;
    }

    if (v23 == 3)
    {
      TessConstant = AGCLLVMAGPVertexShaderPostTessellation::getTessConstant(this, 0xEu, v20);
      v26 = (*(*this + 648))(this);
      v27 = (*(*this + 640))(this);
      v28 = this + *(*this - 24);
      v52 = 257;
      Mul = llvm::IRBuilderBase::CreateMul((v28 + 1712), v27, TessConstant, v51);
      v50 = 257;
      v55[0] = llvm::IRBuilderBase::CreateAdd((v28 + 1712), v26, Mul, v49);
      v55[1] = llvm::ConstantInt::get();
      v54 = 257;
      llvm::Type::isOpaquePointerTy(*Cast);
      GEP = llvm::IRBuilderBase::CreateGEP((v28 + 1712), v15, Cast, v55, 2, v53);
      v48 = 257;
      v31 = (v28 + 1704);
      v32 = &v47;
LABEL_23:
      v22 = AGCLLVMBuilder::CreateLoad(v31, GEP, v32);
    }
  }

  else
  {
    if (!v23)
    {
      v33 = this + *(*this - 24);
      v53[0] = llvm::ConstantInt::get();
LABEL_22:
      v53[1] = llvm::ConstantInt::get();
      v52 = 257;
      llvm::Type::isOpaquePointerTy(*Cast);
      GEP = llvm::IRBuilderBase::CreateGEP((v33 + 1712), v15, Cast, v53, 2, v51);
      v50 = 257;
      v31 = (v33 + 1704);
      v32 = v49;
      goto LABEL_23;
    }

    if (v23 == 1)
    {
      v24 = (*(*this + 648))(this);
LABEL_21:
      v33 = this + *(*this - 24);
      v53[0] = v24;
      goto LABEL_22;
    }
  }

  if (!*(this + 2605) && (a2 & 1) == 0)
  {
    v34 = llvm::UndefValue::get();
    v35 = this + *(*this - 24);
    LODWORD(v53[0]) = 0;
    v52 = 257;
    Value = llvm::IRBuilderBase::CreateExtractValue((v35 + 1712), v22, v53, 1, v51);
    v50 = 257;
    v37 = llvm::ConstantInt::get();
    InsertElement = llvm::IRBuilderBase::CreateInsertElement((v35 + 1712), v34, Value, v37, v49);
    v39 = this + *(*this - 24);
    LODWORD(v53[0]) = 1;
    v52 = 257;
    v40 = llvm::IRBuilderBase::CreateExtractValue((v39 + 1712), v22, v53, 1, v51);
    v50 = 257;
    v41 = llvm::ConstantInt::get();
    v42 = llvm::IRBuilderBase::CreateInsertElement((v39 + 1712), InsertElement, v40, v41, v49);
    v43 = this + *(*this - 24);
    LODWORD(v53[0]) = 2;
    v52 = 257;
    v44 = llvm::IRBuilderBase::CreateExtractValue((v43 + 1712), v22, v53, 1, v51);
    v50 = 257;
    v45 = llvm::ConstantInt::get();
    return llvm::IRBuilderBase::CreateInsertElement((v43 + 1712), v42, v44, v45, v49);
  }

  return v22;
}

uint64_t AGCLLVMDriverTessellationShader::AGCLLVMDriverTessellationShader(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  {
    v10 = a3;
    a3 = v10;
    if (v9)
    {
      AGCLLVMDriverTessellationShader::getDefaultCS(void)::defaultCS = 0;
      *algn_27C8D9658 = 0;
      qword_27C8D9660 = 0;
      a3 = v10;
    }
  }

  AGCLLVMAGPVertexShaderRegular::AGCLLVMAGPVertexShaderRegular(a1, a2 + 1, a3, &AGCLLVMDriverTessellationShader::getDefaultCS(void)::defaultCS, 0, 0);
  v7 = *a2;
  *a1 = *a2;
  *(a1 + *(v7 - 24)) = a2[16];
  *(a1 + *(*a1 - 24) + 1704) = a2[17];
  *(a1 + 10456) = a4;
  *(a1 + 10464) = 0u;
  *(a1 + 10480) = 0;
  *(a1 + 10484) = 32;
  return a1;
}

uint64_t *llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, const void *a2, size_t a3)
{
  i = (*a1 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v7 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v7)
  {
    while (!v7 || v7 == -8)
    {
      v8 = i[1];
      ++i;
      v7 = v8;
    }

    return i;
  }

  v10 = MEMORY[0x20F330650](a3 + 33, 8);
  v11 = v10;
  v12 = v10 + 32;
  if (a3)
  {
    memcpy((v10 + 32), a2, a3);
  }

  *(v12 + a3) = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *v11 = a3;
  *(v11 + 24) = 0;
  *i = v11;
  ++*(a1 + 3);
    ;
  }

  return i;
}

void virtual thunk toAGCLLVMDriverTessellationNonBucketedEmitDrawCommandsShader::~AGCLLVMDriverTessellationNonBucketedEmitDrawCommandsShader(AGCLLVMDriverTessellationNonBucketedEmitDrawCommandsShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = this + *(*this - 24);
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(v4, off_28255F1F8, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 10496));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader((this + *(*this - 24)), off_28255F1F8, a3, a4);
  v5 = (v4 + 10496);

  AGCLLVMObject::~AGCLLVMObject(v5);
}

void AGCLLVMDriverTessellationNonBucketedEmitDrawCommandsShader::~AGCLLVMDriverTessellationNonBucketedEmitDrawCommandsShader(AGCLLVMDriverTessellationNonBucketedEmitDrawCommandsShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(this, off_28255F1F8, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 10496));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(this, off_28255F1F8, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 10496));
}

void virtual thunk toAGCLLVMDriverTessellationBucketedEmitDrawCommandsShader::~AGCLLVMDriverTessellationBucketedEmitDrawCommandsShader(AGCLLVMDriverTessellationBucketedEmitDrawCommandsShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = this + *(*this - 24);
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(v4, off_28255F758, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 10496));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader((this + *(*this - 24)), off_28255F758, a3, a4);
  v5 = (v4 + 10496);

  AGCLLVMObject::~AGCLLVMObject(v5);
}

void AGCLLVMDriverTessellationBucketedEmitDrawCommandsShader::~AGCLLVMDriverTessellationBucketedEmitDrawCommandsShader(AGCLLVMDriverTessellationBucketedEmitDrawCommandsShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(this, off_28255F758, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 10496));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(this, off_28255F758, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 10496));
}

void virtual thunk toAGCLLVMDriverTessellationBucketedComputeInstanceCountsShader::~AGCLLVMDriverTessellationBucketedComputeInstanceCountsShader(AGCLLVMDriverTessellationBucketedComputeInstanceCountsShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = this + *(*this - 24);
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(v4, off_28255FCB8, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 10496));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader((this + *(*this - 24)), off_28255FCB8, a3, a4);
  v5 = (v4 + 10496);

  AGCLLVMObject::~AGCLLVMObject(v5);
}

void AGCLLVMDriverTessellationBucketedComputeInstanceCountsShader::~AGCLLVMDriverTessellationBucketedComputeInstanceCountsShader(AGCLLVMDriverTessellationBucketedComputeInstanceCountsShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(this, off_28255FCB8, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 10496));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(this, off_28255FCB8, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 10496));
}

void virtual thunk toAGCLLVMDriverTessellationBucketedSumInstanceCountsShader::~AGCLLVMDriverTessellationBucketedSumInstanceCountsShader(AGCLLVMDriverTessellationBucketedSumInstanceCountsShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = this + *(*this - 24);
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(v4, off_282560218, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 10496));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader((this + *(*this - 24)), off_282560218, a3, a4);
  v5 = (v4 + 10496);

  AGCLLVMObject::~AGCLLVMObject(v5);
}

void AGCLLVMDriverTessellationBucketedSumInstanceCountsShader::~AGCLLVMDriverTessellationBucketedSumInstanceCountsShader(AGCLLVMDriverTessellationBucketedSumInstanceCountsShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(this, off_282560218, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 10496));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(this, off_282560218, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 10496));
}

void virtual thunk toAGCLLVMDriverTessellationClearInstanceCountsShader::~AGCLLVMDriverTessellationClearInstanceCountsShader(AGCLLVMDriverTessellationClearInstanceCountsShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = this + *(*this - 24);
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(v4, off_282560778, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 10496));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader((this + *(*this - 24)), off_282560778, a3, a4);
  v5 = (v4 + 10496);

  AGCLLVMObject::~AGCLLVMObject(v5);
}

void AGCLLVMDriverTessellationClearInstanceCountsShader::~AGCLLVMDriverTessellationClearInstanceCountsShader(AGCLLVMDriverTessellationClearInstanceCountsShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(this, off_282560778, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 10496));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMDriverTessellationShader::~AGCLLVMDriverTessellationShader(this, off_282560778, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 10496));
}

void AGCLLVMDriverTessellationNonBucketedEmitDrawCommandsShader::create(AGCLLVMCtx *a1, uint64_t a2, _DWORD *a3)
{
  std::string::basic_string[abi:nn200100]<0>(v19, "tess_nb_0_");
  std::string::basic_string[abi:nn200100]<0>(v20, "tess_nb_1_");
  v5 = &v19[3 * (*a3 & 3)];
  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, *v5, v5[1]);
  }

  else
  {
    v23 = *v5;
  }

  v6 = 0;
  while (1)
  {
    if (SHIBYTE(v20[v6 + 2]) < 0)
    {
      operator delete(v19[v6 + 3]);
    }

    v6 -= 3;
    if (v6 == -6)
    {
      std::string::basic_string[abi:nn200100]<0>(v19, "0_");
      std::string::basic_string[abi:nn200100]<0>(v20, "1_");
      std::string::basic_string[abi:nn200100]<0>(v21, "2_");
      std::string::basic_string[abi:nn200100]<0>(v22, "3_");
      v7 = &v19[3 * ((*a3 >> 2) & 7)];
      v8 = *(v7 + 23);
      if (v8 >= 0)
      {
        v9 = &v19[3 * ((*a3 >> 2) & 7)];
      }

      else
      {
        v9 = *v7;
      }

      if (v8 >= 0)
      {
        v10 = *(v7 + 23);
      }

      else
      {
        v10 = v7[1];
      }

      std::string::append(&v23, v9, v10);
      v11 = 0;
      while (1)
      {
        if (SHIBYTE(v22[v11 + 2]) < 0)
        {
          operator delete(v22[v11]);
        }

        v11 -= 3;
        if (v11 == -12)
        {
          std::string::basic_string[abi:nn200100]<0>(v19, "0");
          std::string::basic_string[abi:nn200100]<0>(v20, "1");
          std::string::basic_string[abi:nn200100]<0>(v21, "2");
          std::string::basic_string[abi:nn200100]<0>(v22, "3");
          v12 = &v19[3 * (*a3 >> 5)];
          v13 = *(v12 + 23);
          if (v13 >= 0)
          {
            v14 = &v19[3 * (*a3 >> 5)];
          }

          else
          {
            v14 = *v12;
          }

          if (v13 >= 0)
          {
            v15 = *(v12 + 23);
          }

          else
          {
            v15 = v12[1];
          }

          std::string::append(&v23, v14, v15);
          v16 = 0;
          while (1)
          {
            if (SHIBYTE(v22[v16 + 2]) < 0)
            {
              operator delete(v22[v16]);
            }

            v16 -= 3;
            if (v16 == -12)
            {
              if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v17 = &v23;
              }

              else
              {
                v17 = v23.__r_.__value_.__r.__words[0];
              }

              if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = SHIBYTE(v23.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v23.__r_.__value_.__l.__size_;
              }

              AGCLLVMObject::readBitcode(a2, v17, size, 0);
              operator new();
            }
          }
        }
      }
    }
  }
}

void AGCLLVMDriverTessellationBucketedEmitDrawCommandsShader::create(AGCLLVMCtx *a1, uint64_t a2, _DWORD *a3)
{
  std::string::basic_string[abi:nn200100]<0>(v19, "tess_b3_0_");
  std::string::basic_string[abi:nn200100]<0>(v20, "tess_b3_1_");
  v5 = &v19[3 * (*a3 & 3)];
  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, *v5, v5[1]);
  }

  else
  {
    v23 = *v5;
  }

  v6 = 0;
  while (1)
  {
    if (SHIBYTE(v20[v6 + 2]) < 0)
    {
      operator delete(v19[v6 + 3]);
    }

    v6 -= 3;
    if (v6 == -6)
    {
      std::string::basic_string[abi:nn200100]<0>(v19, "0_");
      std::string::basic_string[abi:nn200100]<0>(v20, "1_");
      std::string::basic_string[abi:nn200100]<0>(v21, "2_");
      std::string::basic_string[abi:nn200100]<0>(v22, "3_");
      v7 = &v19[3 * ((*a3 >> 2) & 7)];
      v8 = *(v7 + 23);
      if (v8 >= 0)
      {
        v9 = &v19[3 * ((*a3 >> 2) & 7)];
      }

      else
      {
        v9 = *v7;
      }

      if (v8 >= 0)
      {
        v10 = *(v7 + 23);
      }

      else
      {
        v10 = v7[1];
      }

      std::string::append(&v23, v9, v10);
      v11 = 0;
      while (1)
      {
        if (SHIBYTE(v22[v11 + 2]) < 0)
        {
          operator delete(v22[v11]);
        }

        v11 -= 3;
        if (v11 == -12)
        {
          std::string::basic_string[abi:nn200100]<0>(v19, "0");
          std::string::basic_string[abi:nn200100]<0>(v20, "1");
          std::string::basic_string[abi:nn200100]<0>(v21, "2");
          std::string::basic_string[abi:nn200100]<0>(v22, "3");
          v12 = &v19[3 * (*a3 >> 5)];
          v13 = *(v12 + 23);
          if (v13 >= 0)
          {
            v14 = &v19[3 * (*a3 >> 5)];
          }

          else
          {
            v14 = *v12;
          }

          if (v13 >= 0)
          {
            v15 = *(v12 + 23);
          }

          else
          {
            v15 = v12[1];
          }

          std::string::append(&v23, v14, v15);
          v16 = 0;
          while (1)
          {
            if (SHIBYTE(v22[v16 + 2]) < 0)
            {
              operator delete(v22[v16]);
            }

            v16 -= 3;
            if (v16 == -12)
            {
              if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v17 = &v23;
              }

              else
              {
                v17 = v23.__r_.__value_.__r.__words[0];
              }

              if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = SHIBYTE(v23.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v23.__r_.__value_.__l.__size_;
              }

              AGCLLVMObject::readBitcode(a2, v17, size, 0);
              operator new();
            }
          }
        }
      }
    }
  }
}

void AGCLLVMDriverTessellationBucketedComputeInstanceCountsShader::create(AGCLLVMCtx *a1, uint64_t a2, _DWORD *a3)
{
  std::string::basic_string[abi:nn200100]<0>(v19, "tess_b1_0_");
  std::string::basic_string[abi:nn200100]<0>(v20, "tess_b1_1_");
  v5 = &v19[3 * (*a3 & 3)];
  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, *v5, v5[1]);
  }

  else
  {
    v23 = *v5;
  }

  v6 = 0;
  while (1)
  {
    if (SHIBYTE(v20[v6 + 2]) < 0)
    {
      operator delete(v19[v6 + 3]);
    }

    v6 -= 3;
    if (v6 == -6)
    {
      std::string::basic_string[abi:nn200100]<0>(v19, "0_");
      std::string::basic_string[abi:nn200100]<0>(v20, "1_");
      std::string::basic_string[abi:nn200100]<0>(v21, "2_");
      std::string::basic_string[abi:nn200100]<0>(v22, "3_");
      v7 = &v19[3 * ((*a3 >> 2) & 7)];
      v8 = *(v7 + 23);
      if (v8 >= 0)
      {
        v9 = &v19[3 * ((*a3 >> 2) & 7)];
      }

      else
      {
        v9 = *v7;
      }

      if (v8 >= 0)
      {
        v10 = *(v7 + 23);
      }

      else
      {
        v10 = v7[1];
      }

      std::string::append(&v23, v9, v10);
      v11 = 0;
      while (1)
      {
        if (SHIBYTE(v22[v11 + 2]) < 0)
        {
          operator delete(v22[v11]);
        }

        v11 -= 3;
        if (v11 == -12)
        {
          std::string::basic_string[abi:nn200100]<0>(v19, "0");
          std::string::basic_string[abi:nn200100]<0>(v20, "1");
          std::string::basic_string[abi:nn200100]<0>(v21, "2");
          std::string::basic_string[abi:nn200100]<0>(v22, "3");
          v12 = &v19[3 * (*a3 >> 5)];
          v13 = *(v12 + 23);
          if (v13 >= 0)
          {
            v14 = &v19[3 * (*a3 >> 5)];
          }

          else
          {
            v14 = *v12;
          }

          if (v13 >= 0)
          {
            v15 = *(v12 + 23);
          }

          else
          {
            v15 = v12[1];
          }

          std::string::append(&v23, v14, v15);
          v16 = 0;
          while (1)
          {
            if (SHIBYTE(v22[v16 + 2]) < 0)
            {
              operator delete(v22[v16]);
            }

            v16 -= 3;
            if (v16 == -12)
            {
              if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v17 = &v23;
              }

              else
              {
                v17 = v23.__r_.__value_.__r.__words[0];
              }

              if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = SHIBYTE(v23.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v23.__r_.__value_.__l.__size_;
              }

              AGCLLVMObject::readBitcode(a2, v17, size, 0);
              operator new();
            }
          }
        }
      }
    }
  }
}

void AGCLLVMDriverExecuteIndirectESLGenerationShader::create(AGCLLVMDriverExecuteIndirectESLGenerationShader *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  v40[3] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(&__p, "gei_esl_gen");
  v5 = *(*(this + 4) + 28);
  if (v5 > 24)
  {
    if (v5 > 31)
    {
      if (v5 > 34)
      {
        if (v5 != 35 && v5 != 38)
        {
          goto LABEL_64;
        }

        v6 = "4_hal300";
      }

      else
      {
        if (v5 != 32 && v5 != 34)
        {
          goto LABEL_64;
        }

        v6 = "4_hal200";
      }

      goto LABEL_63;
    }

    if ((v5 - 25) >= 3)
    {
      if (v5 != 31)
      {
        goto LABEL_64;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v8 = v31;
      std::string::basic_string[abi:nn200100](v31, size + 6);
      if (v32 < 0)
      {
        v8 = v31[0];
      }

      if (size)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        memmove(v8, p_p, size);
      }

      strcpy(v8 + size, "4_g16p");
      v10 = *(*(this + 4) + 24);
      v35[0] = 1;
      std::string::basic_string[abi:nn200100]<0>(v36, "a0");
      v37 = 3;
      std::string::basic_string[abi:nn200100]<0>(v38, "b0");
      v39 = 4;
      std::string::basic_string[abi:nn200100]<0>(v40, "b0");
      v11 = 0;
      v29 = 0;
      v30 = 0;
      v28 = &v29;
      do
      {
        std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v28, &v29, v35[v11], &v35[v11]);
        v11 += 8;
      }

      while (v11 != 24);
      getFullBitcodePath(&v33, v31, v10, &v28);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v33;
      std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v29);
      for (i = 0; i != -12; i -= 4)
      {
        if (SHIBYTE(v40[i + 2]) < 0)
        {
          operator delete(v40[i]);
        }
      }

LABEL_89:
      if (v32 < 0)
      {
        operator delete(v31[0]);
      }

      goto LABEL_64;
    }
  }

  else
  {
    if (v5 > 18)
    {
      if ((v5 - 19) < 3)
      {
        v6 = "3x";
LABEL_63:
        std::string::append(&__p, v6);
        goto LABEL_64;
      }

      if (v5 == 22)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v22 = __p.__r_.__value_.__l.__size_;
        }

        v23 = v31;
        std::string::basic_string[abi:nn200100](v31, v22 + 6);
        if (v32 < 0)
        {
          v23 = v31[0];
        }

        if (v22)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = &__p;
          }

          else
          {
            v24 = __p.__r_.__value_.__r.__words[0];
          }

          memmove(v23, v24, v22);
        }

        strcpy(v23 + v22, "4_g15p");
        v25 = *(*(this + 4) + 24);
        v35[0] = 1;
        std::string::basic_string[abi:nn200100]<0>(v36, "a0");
        v37 = 3;
        std::string::basic_string[abi:nn200100]<0>(v38, "b0");
        v26 = 0;
        v29 = 0;
        v30 = 0;
        v28 = &v29;
        do
        {
          std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v28, &v29, v35[v26], &v35[v26]);
          v26 += 8;
        }

        while (v26 != 16);
        getFullBitcodePath(&v33, v31, v25, &v28);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v33;
        std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v29);
        for (j = 0; j != -8; j -= 4)
        {
          if (SHIBYTE(v38[j + 2]) < 0)
          {
            operator delete(v38[j]);
          }
        }
      }

      else
      {
        if (v5 != 24)
        {
          goto LABEL_64;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v14 = __p.__r_.__value_.__l.__size_;
        }

        v15 = v31;
        std::string::basic_string[abi:nn200100](v31, v14 + 6);
        if (v32 < 0)
        {
          v15 = v31[0];
        }

        if (v14)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = &__p;
          }

          else
          {
            v16 = __p.__r_.__value_.__r.__words[0];
          }

          memmove(v15, v16, v14);
        }

        strcpy(v15 + v14, "4_g15g");
        v17 = *(*(this + 4) + 24);
        v35[0] = 1;
        std::string::basic_string[abi:nn200100]<0>(v36, "a0");
        v37 = 3;
        std::string::basic_string[abi:nn200100]<0>(v38, "b0");
        v39 = 5;
        std::string::basic_string[abi:nn200100]<0>(v40, "c0");
        v18 = 0;
        v29 = 0;
        v30 = 0;
        v28 = &v29;
        do
        {
          std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v28, &v29, v35[v18], &v35[v18]);
          v18 += 8;
        }

        while (v18 != 24);
        getFullBitcodePath(&v33, v31, v17, &v28);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v33;
        std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v29);
        for (k = 0; k != -12; k -= 4)
        {
          if (SHIBYTE(v40[k + 2]) < 0)
          {
            operator delete(v40[k]);
          }
        }
      }

      goto LABEL_89;
    }

    if ((v5 - 17) < 2)
    {
      v6 = "3";
      goto LABEL_63;
    }

    if (v5 != 14 && v5 != 16)
    {
LABEL_64:
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &__p;
      }

      else
      {
        v20 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21 = __p.__r_.__value_.__l.__size_;
      }

      AGCLLVMObject::readBitcode(a2, v20, v21, 0);
      operator new();
    }
  }

  v6 = "2";
  goto LABEL_63;
}

uint64_t ***std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(uint64_t ***result, uint64_t **a2, int a3, uint64_t a4)
{
  v4 = (result + 1);
  if (result + 1 == a2 || (v5 = *(a2 + 8), v5 > a3))
  {
    v6 = *a2;
    if (*result == a2)
    {
      v8 = a2;
LABEL_16:
      if (v6)
      {
        v9 = v8 + 1;
      }

      else
      {
        v9 = a2;
      }

      goto LABEL_19;
    }

    if (v6)
    {
      v7 = *a2;
      do
      {
        v8 = v7;
        v7 = v7[1];
      }

      while (v7);
    }

    else
    {
      v12 = a2;
      do
      {
        v8 = v12[2];
        v13 = *v8 == v12;
        v12 = v8;
      }

      while (v13);
    }

    if (*(v8 + 8) < a3)
    {
      goto LABEL_16;
    }

    v14 = *v4;
    if (!*v4)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v15 = v14;
        v16 = *(v14 + 32);
        if (v16 <= a3)
        {
          break;
        }

        v14 = *v15;
        v4 = v15;
        if (!*v15)
        {
          goto LABEL_38;
        }
      }

      if (v16 >= a3)
      {
        break;
      }

      v4 = v15 + 1;
      v14 = v15[1];
      if (!v14)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    v9 = v4;
    goto LABEL_19;
  }

  if (v5 >= a3)
  {
    return result;
  }

  v9 = a2 + 1;
  v10 = a2[1];
  if (v10)
  {
    do
    {
      v9 = v10;
      v10 = *v10;
      v11 = v9;
    }

    while (v10);
  }

  else
  {
    v11 = a2;
    do
    {
      v17 = v11;
      v11 = v11[2];
    }

    while (*v11 != v17);
  }

  if (v11 != v4 && *(v11 + 8) <= a3)
  {
    v18 = *v4;
    if (!*v4)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v19 = v18;
        v20 = *(v18 + 32);
        if (v20 <= a3)
        {
          break;
        }

        v18 = *v19;
        v4 = v19;
        if (!*v19)
        {
          goto LABEL_38;
        }
      }

      if (v20 >= a3)
      {
        goto LABEL_40;
      }

      v4 = v19 + 1;
      v18 = v19[1];
      if (!v18)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_19:
  if (!*v9)
  {
LABEL_38:
    operator new();
  }

  return result;
}

void getFullBitcodePath(std::string *this, const void **a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v6 = a4 + 8;
  v7 = v8;
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = HIWORD(a3);
  v10 = v6;
  do
  {
    if (*(v7 + 32) >= v9)
    {
      v10 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < v9));
  }

  while (v7);
  if (v10 != v6 && v9 >= *(v10 + 32))
  {
    if (*(a2 + 23) >= 0)
    {
      v13 = *(a2 + 23);
    }

    else
    {
      v13 = a2[1];
    }

    v14 = &v23;
    std::string::basic_string[abi:nn200100](&v23, v13 + 1);
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = v23.__r_.__value_.__r.__words[0];
    }

    if (v13)
    {
      if (*(a2 + 23) >= 0)
      {
        v15 = a2;
      }

      else
      {
        v15 = *a2;
      }

      memmove(v14, v15, v13);
    }

    *(&v14->__r_.__value_.__l.__data_ + v13) = 95;
    v18 = *(v10 + 40);
    v17 = v10 + 40;
    v16 = v18;
    v19 = *(v17 + 23);
    if (v19 >= 0)
    {
      v20 = v17;
    }

    else
    {
      v20 = v16;
    }

    if (v19 >= 0)
    {
      v21 = *(v17 + 23);
    }

    else
    {
      v21 = *(v17 + 8);
    }

    v22 = std::string::append(&v23, v20, v21);
    *this = *v22;
    v22->__r_.__value_.__r.__words[0] = 0;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  else
  {
LABEL_8:
    if (*(a2 + 23) < 0)
    {
      v11 = *a2;
      v12 = a2[1];

      std::string::__init_copy_ctor_external(this, v11, v12);
    }

    else
    {
      *this = *a2;
    }
  }
}

void std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(*(a1 + 1));
    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
    }

    operator delete(a1);
  }
}

void AGCLLVMDriverExecuteIndirectRangeExecutionVertexShader::create(AGCLLVMDriverExecuteIndirectRangeExecutionVertexShader *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  v31[3] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(&__p, "gei_esl_gen");
  v5 = *(*(this + 4) + 28);
  if (v5 > 24)
  {
    if (v5 > 31)
    {
      if (v5 > 34)
      {
        if (v5 != 35 && v5 != 38)
        {
          goto LABEL_44;
        }

        v6 = "gei_esl_range_exec_gen4_hal300";
      }

      else
      {
        if (v5 != 32 && v5 != 34)
        {
          goto LABEL_44;
        }

        v6 = "gei_esl_range_exec_gen4_hal200";
      }

      goto LABEL_43;
    }

    if ((v5 - 25) >= 3)
    {
      if (v5 != 31)
      {
        goto LABEL_44;
      }

      std::string::basic_string[abi:nn200100]<0>(v22, "gei_esl_range_exec_gen4_g16p");
      v7 = *(*(this + 4) + 24);
      v26[0] = 1;
      std::string::basic_string[abi:nn200100]<0>(v27, "a0");
      v28 = 3;
      std::string::basic_string[abi:nn200100]<0>(v29, "b0");
      v30 = 4;
      std::string::basic_string[abi:nn200100]<0>(v31, "b0");
      v8 = 0;
      v20 = 0;
      v21 = 0;
      v19 = &v20;
      do
      {
        std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v19, &v20, v26[v8], &v26[v8]);
        v8 += 8;
      }

      while (v8 != 24);
      getFullBitcodePath(&v24, v22, v7, &v19);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v24;
      std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v20);
      for (i = 0; i != -12; i -= 4)
      {
        if (SHIBYTE(v31[i + 2]) < 0)
        {
          operator delete(v31[i]);
        }
      }

LABEL_59:
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      goto LABEL_44;
    }
  }

  else
  {
    if (v5 > 18)
    {
      if ((v5 - 19) < 3)
      {
        v6 = "gei_esl_range_exec_gen3x";
LABEL_43:
        MEMORY[0x20F331AA0](&__p, v6);
        goto LABEL_44;
      }

      if (v5 == 22)
      {
        std::string::basic_string[abi:nn200100]<0>(v22, "gei_esl_range_exec_gen4_g15p");
        v16 = *(*(this + 4) + 24);
        v26[0] = 1;
        std::string::basic_string[abi:nn200100]<0>(v27, "a0");
        v28 = 3;
        std::string::basic_string[abi:nn200100]<0>(v29, "b0");
        v17 = 0;
        v20 = 0;
        v21 = 0;
        v19 = &v20;
        do
        {
          std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v19, &v20, v26[v17], &v26[v17]);
          v17 += 8;
        }

        while (v17 != 16);
        getFullBitcodePath(&v24, v22, v16, &v19);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v24;
        std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v20);
        for (j = 0; j != -8; j -= 4)
        {
          if (SHIBYTE(v29[j + 2]) < 0)
          {
            operator delete(v29[j]);
          }
        }
      }

      else
      {
        if (v5 != 24)
        {
          goto LABEL_44;
        }

        std::string::basic_string[abi:nn200100]<0>(v22, "gei_esl_range_exec_gen4_g15g");
        v11 = *(*(this + 4) + 24);
        v26[0] = 1;
        std::string::basic_string[abi:nn200100]<0>(v27, "a0");
        v28 = 3;
        std::string::basic_string[abi:nn200100]<0>(v29, "b0");
        v30 = 5;
        std::string::basic_string[abi:nn200100]<0>(v31, "c0");
        v12 = 0;
        v20 = 0;
        v21 = 0;
        v19 = &v20;
        do
        {
          std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v19, &v20, v26[v12], &v26[v12]);
          v12 += 8;
        }

        while (v12 != 24);
        getFullBitcodePath(&v24, v22, v11, &v19);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v24;
        std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v20);
        for (k = 0; k != -12; k -= 4)
        {
          if (SHIBYTE(v31[k + 2]) < 0)
          {
            operator delete(v31[k]);
          }
        }
      }

      goto LABEL_59;
    }

    if ((v5 - 17) < 2)
    {
      v6 = "gei_esl_range_exec_gen3";
      goto LABEL_43;
    }

    if (v5 != 14 && v5 != 16)
    {
LABEL_44:
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
        size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      AGCLLVMObject::readBitcode(a2, p_p, size, 0);
      operator new();
    }
  }

  v6 = "gei_esl_range_exec_gen2";
  goto LABEL_43;
}

void AGCLLVMDriverVRRPatchVertexShader::create(AGCLLVMDriverVRRPatchVertexShader *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  v31[3] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(&__p, &unk_20E75F419);
  v5 = *(*(this + 4) + 28);
  if (v5 > 24)
  {
    if (v5 > 31)
    {
      if (v5 > 34)
      {
        if (v5 != 35 && v5 != 38)
        {
          goto LABEL_44;
        }

        v6 = "late_latched_vrr_hal300";
      }

      else
      {
        if (v5 != 32 && v5 != 34)
        {
          goto LABEL_44;
        }

        v6 = "late_latched_vrr_hal200";
      }

      goto LABEL_43;
    }

    if ((v5 - 25) >= 3)
    {
      if (v5 != 31)
      {
        goto LABEL_44;
      }

      std::string::basic_string[abi:nn200100]<0>(v22, "late_latched_vrr_g16p");
      v7 = *(*(this + 4) + 24);
      v26[0] = 1;
      std::string::basic_string[abi:nn200100]<0>(v27, "a0");
      v28 = 3;
      std::string::basic_string[abi:nn200100]<0>(v29, "b0");
      v30 = 4;
      std::string::basic_string[abi:nn200100]<0>(v31, "b0");
      v8 = 0;
      v20 = 0;
      v21 = 0;
      v19 = &v20;
      do
      {
        std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v19, &v20, v26[v8], &v26[v8]);
        v8 += 8;
      }

      while (v8 != 24);
      getFullBitcodePath(&v24, v22, v7, &v19);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v24;
      std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v20);
      for (i = 0; i != -12; i -= 4)
      {
        if (SHIBYTE(v31[i + 2]) < 0)
        {
          operator delete(v31[i]);
        }
      }

LABEL_59:
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      goto LABEL_44;
    }
  }

  else
  {
    if (v5 > 18)
    {
      if ((v5 - 19) < 3)
      {
        v6 = "late_latched_vrr_g14x";
LABEL_43:
        MEMORY[0x20F331AA0](&__p, v6);
        goto LABEL_44;
      }

      if (v5 == 22)
      {
        std::string::basic_string[abi:nn200100]<0>(v22, "late_latched_vrr_g15p");
        v16 = *(*(this + 4) + 24);
        v26[0] = 1;
        std::string::basic_string[abi:nn200100]<0>(v27, "a0");
        v28 = 3;
        std::string::basic_string[abi:nn200100]<0>(v29, "b0");
        v17 = 0;
        v20 = 0;
        v21 = 0;
        v19 = &v20;
        do
        {
          std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v19, &v20, v26[v17], &v26[v17]);
          v17 += 8;
        }

        while (v17 != 16);
        getFullBitcodePath(&v24, v22, v16, &v19);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v24;
        std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v20);
        for (j = 0; j != -8; j -= 4)
        {
          if (SHIBYTE(v29[j + 2]) < 0)
          {
            operator delete(v29[j]);
          }
        }
      }

      else
      {
        if (v5 != 24)
        {
          goto LABEL_44;
        }

        std::string::basic_string[abi:nn200100]<0>(v22, "late_latched_vrr_g15g");
        v11 = *(*(this + 4) + 24);
        v26[0] = 1;
        std::string::basic_string[abi:nn200100]<0>(v27, "a0");
        v28 = 3;
        std::string::basic_string[abi:nn200100]<0>(v29, "b0");
        v30 = 5;
        std::string::basic_string[abi:nn200100]<0>(v31, "c0");
        v12 = 0;
        v20 = 0;
        v21 = 0;
        v19 = &v20;
        do
        {
          std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v19, &v20, v26[v12], &v26[v12]);
          v12 += 8;
        }

        while (v12 != 24);
        getFullBitcodePath(&v24, v22, v11, &v19);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v24;
        std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v20);
        for (k = 0; k != -12; k -= 4)
        {
          if (SHIBYTE(v31[k + 2]) < 0)
          {
            operator delete(v31[k]);
          }
        }
      }

      goto LABEL_59;
    }

    if ((v5 - 17) < 2)
    {
      v6 = "late_latched_vrr_g14";
      goto LABEL_43;
    }

    if (v5 != 14 && v5 != 16)
    {
LABEL_44:
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
        size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      AGCLLVMObject::readBitcode(a2, p_p, size, 1);
      operator new();
    }
  }

  v6 = "late_latched_vrr_g13";
  goto LABEL_43;
}

void AGCLLVMDriverGPUGatherVertexShader::create(AGCLLVMDriverGPUGatherVertexShader *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  std::string::basic_string[abi:nn200100]<0>(__p, &unk_20E75F419);
  v5 = *(*(this + 4) + 28);
  v6 = v5 > 0x26;
  v7 = (1 << v5) & 0x4D0F7F4000;
  if (!v6 && v7 != 0)
  {
    MEMORY[0x20F331AA0](__p, "gpu_gather_vertex_gen2");
  }

  if (v12 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if (v12 >= 0)
  {
    v10 = v12;
  }

  else
  {
    v10 = __p[1];
  }

  AGCLLVMObject::readBitcode(a2, v9, v10, 0);
  operator new();
}

void AGCLLVMDriverFastClearVertexShaders::create(AGCLLVMCtx *a1, uint64_t a2, unsigned int a3)
{
  if ((a3 & 3) != 2)
  {
    v4 = 0;
    v6 = 0;
    goto LABEL_11;
  }

  if ((a3 & 4) != 0)
  {
    v4 = "blit_vertex_fast_clear_gen2_meta";
  }

  else
  {
    v4 = 0;
    v5 = (a3 >> 3);
    if (v5 > 4)
    {
      if (v5 == 5)
      {
        v4 = "blit_vertex_fast_clear_gen2_5";
      }

      else if (v5 == 8)
      {
        v4 = "blit_vertex_fast_clear_gen2_8";
      }

      else
      {
        v6 = 0;
        if (v5 != 16)
        {
LABEL_11:
          AGCLLVMObject::readBitcode(a2, v4, v6, 1);
          operator new();
        }

        v4 = "blit_vertex_fast_clear_gen2_16";
      }
    }

    else if (v5 == 1)
    {
      v4 = "blit_vertex_fast_clear_gen2_1";
    }

    else if (v5 == 2)
    {
      v4 = "blit_vertex_fast_clear_gen2_2";
    }

    else
    {
      v6 = 0;
      if (v5 != 4)
      {
        goto LABEL_11;
      }

      v4 = "blit_vertex_fast_clear_gen2_4";
    }
  }

  v6 = strlen(v4);
  goto LABEL_11;
}

uint64_t *AGCArgumentBuffer::parseMDRoot(int8x8_t *a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  v38 = *MEMORY[0x277D85DE8];
  v6 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = a1[7];
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= *&v9)
      {
        v11 = v8 % *&v9;
      }
    }

    else
    {
      v11 = v8 & (*&v9 - 1);
    }

    v12 = *(*&a1[6] + 8 * v11);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v8)
        {
          if (i[2] == a2)
          {
            return i + 3;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v14 >= *&v9)
            {
              v14 %= *&v9;
            }
          }

          else
          {
            v14 &= *&v9 - 1;
          }

          if (v14 != v11)
          {
            break;
          }
        }
      }
    }
  }

  v29 = 3;
  v28 = &unk_28257C140;
  v30 = 0;
  v31 = 1;
  v32[0] = v33;
  v32[1] = 0x800000000;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v37 = 1;
  if (!*&v9)
  {
    goto LABEL_34;
  }

  v15 = vcnt_s8(v9);
  v15.i16[0] = vaddlv_u8(v15);
  if (v15.u32[0] > 1uLL)
  {
    v16 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
    if (v8 >= *&v9)
    {
      v16 = v8 % *&v9;
    }
  }

  else
  {
    v16 = v8 & (*&v9 - 1);
  }

  v17 = *(*&a1[6] + 8 * v16);
  if (!v17 || (v18 = *v17) == 0)
  {
LABEL_34:
    operator new();
  }

  while (1)
  {
    v19 = v18[1];
    if (v19 == v8)
    {
      break;
    }

    if (v15.u32[0] > 1uLL)
    {
      if (v19 >= *&v9)
      {
        v19 %= *&v9;
      }
    }

    else
    {
      v19 &= *&v9 - 1;
    }

    if (v19 != v16)
    {
      goto LABEL_34;
    }

LABEL_33:
    v18 = *v18;
    if (!v18)
    {
      goto LABEL_34;
    }
  }

  if (v18[2] != a2)
  {
    goto LABEL_33;
  }

  v24 = v18 + 3;
  if (!a3)
  {
    v3 = parseMDStructType(a2);
  }

  AGCArgumentBuffer::ResourceTracker::pushArray(v32, &v28, 0);
  AGCArgumentBuffer::parseMDStruct(v25, a1, a2, v3, 0, (v18 + 3), v32);
  AGCArgumentBuffer::ResourceTracker::popArray(v32);
  v20 = v34;
  *(v18 + 22) = HIDWORD(v31);
  *(v18 + 23) = v20;
  v21 = HIDWORD(v34);
  *(v18 + 24) = v35;
  *(v18 + 25) = v21;
  v18[13] = v3;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  v22 = v30;
  v28 = &unk_28257C140;
  v30 = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  return v24;
}

void llvm::SmallVectorTemplateBase<AGCArgumentBuffer::Tier1TypeBuilder::SubStruct,false>::destroy_range(char *a1, char *a2)
{
  if (a2 != a1)
  {
    v3 = a2 - 40;
    do
    {
      v4 = *(v3 - 2);
      if (v3 != v4)
      {
        free(v4);
      }

      v5 = *(v3 - 8);
      if (v3 - 48 != v5)
      {
        free(v5);
      }

      v6 = v3 - 64;
      v3 -= 104;
    }

    while (v6 != a1);
  }
}

uint64_t llvm::SmallVectorTemplateBase<AGCArgumentBuffer::Tier1TypeBuilder::SubStruct,false>::push_back(uint64_t a1, char *a2)
{
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4 >= *(a1 + 12))
  {
    if (v5 > a2 || v5 + 104 * v4 <= a2)
    {
      llvm::SmallVectorTemplateBase<AGCArgumentBuffer::Tier1TypeBuilder::SubStruct,false>::grow(a1, v4 + 1);
    }

    llvm::SmallVectorTemplateBase<AGCArgumentBuffer::Tier1TypeBuilder::SubStruct,false>::grow(a1, v4 + 1);
  }

  v6 = v5 + 104 * *(a1 + 8);
  *v6 = v6 + 16;
  *(v6 + 8) = 0x400000000;
  if (*(a2 + 2))
  {
    llvm::SmallVectorImpl<llvm::MDNode *>::operator=(v6, a2);
  }

  *(v6 + 48) = v6 + 64;
  result = v6 + 48;
  *(v6 + 56) = 0x400000000;
  if (*(a2 + 14))
  {
    result = llvm::SmallVectorImpl<llvm::MDNode *>::operator=(result, (a2 + 48));
  }

  *(v6 + 96) = *(a2 + 24);
  ++*(a1 + 8);
  return result;
}

uint64_t AGCArgumentBuffer::Tier1TypeBuilder::buildStruct(AGCArgumentBuffer::Tier1TypeBuilder *this, AGCArgumentBuffer::Struct *a2, unint64_t a3)
{
  v42 = *MEMORY[0x277D85DE8];
  AGCArgumentBuffer::Tier1TypeBuilder::endGroup(this, a2, a3);
  llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back(this + 1000, *(*(this + 19) + 104 * *(this + 40) - 96));
  AGCArgumentBuffer::Tier1TypeBuilder::pushArrayIndices(this);
  v24 = v26;
  v25 = 0x400000000;
  if (*(this + 16))
  {
    llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(&v24, this + 56);
    v27 = v29;
    v28 = 0x400000000;
    v31 = v33;
    v32 = 0x400000000;
    if (v25)
    {
      llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(&v31, &v24);
    }
  }

  else
  {
    v27 = v29;
    v28 = 0x400000000;
    v31 = v33;
    v32 = 0x400000000;
  }

  v33[8] = 0;
  llvm::SmallVectorTemplateBase<AGCArgumentBuffer::Tier1TypeBuilder::SubStruct,false>::push_back(this + 152, &v27);
  if (v31 != v33)
  {
    free(v31);
  }

  if (v27 != v29)
  {
    free(v27);
  }

  if (v24 != v26)
  {
    free(v24);
  }

  *(this + 16) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  v5 = *(this + 19) + 104 * *(this + 40);
  *(v5 - 8) = *(v5 - 96);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v5 - 104, 0);
  v8 = *(a2 + 6);
  if (v8)
  {
    v9 = 0;
    v10 = *(a2 + 2);
    v11 = 8 * v8;
    do
    {
      v6 = *v10;
      if (*v10)
      {
        v9 |= AGCArgumentBuffer::Tier1TypeBuilder::buildField(this, v6);
      }

      ++v10;
      v11 -= 8;
    }

    while (v11);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  LODWORD(v28) = 7;
  v29[0] = v30;
  v29[1] = 0x400000000;
  v34 = v36;
  v35 = 0x800000000;
  v37 = v39;
  v38 = 0x400000000;
  v39[4] = 0;
  v40 = 0;
  v27 = &unk_28257C160;
  v41 = 0;
  if (v9)
  {
    AGCArgumentBuffer::Tier1TypeBuilder::endConstantGroup(this);
    v41 = *(this + 3);
    AGCArgumentBuffer::Tier1TypeBuilder::buildConstant(this, &v27);
  }

  AGCArgumentBuffer::Tier1TypeBuilder::endGroup(this, v6, v7);
  llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(this + 56, *(this + 19) + 104 * *(this + 40) - 56);
  v12 = llvm::StructType::get();
  v13 = *(this + 16);
  if (v13)
  {
    v14 = *(this + 7) + 8 * v13;
    do
    {
      v15 = *(v14 - 8);
      v14 -= 8;
      v12 = llvm::ArrayType::get(v12, *(v15 + 24));
    }

    while (v14 != *(this + 7));
    v16 = *(this + 16);
    if (v16)
    {
      v17 = *(this + 264) - v16;
      v18 = *(this + 252) - v16;
      *(this + 264) = v17;
      *(this + 252) = v18;
    }
  }

  --*(this + 252);
  v19 = *(this + 40) - 1;
  *(this + 40) = v19;
  v20 = *(this + 19) + 104 * v19;
  v21 = *(v20 + 48);
  if (v21 != (v20 + 64))
  {
    free(v21);
  }

  if (*v20 != v20 + 16)
  {
    free(*v20);
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(*(this + 19) + 104 * *(this + 40) - 104, v12);
  *(this + 5) = 0;
  *(this + 12) = 0;
  v22 = *(this + 19) + 104 * *(this + 40);
  *(v22 - 8) = *(v22 - 96);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v22 - 104, 0);
  v27 = &unk_28257C100;
  if (v37 != v39)
  {
    free(v37);
  }

  if (v34 != v36)
  {
    free(v34);
  }

  if (v29[0] != v30)
  {
    free(v29[0]);
  }

  return v9 & 1;
}

uint64_t AGCArgumentBuffer::Tier1TypeBuilder::buildField(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (a2 && !v3)
  {
    do
    {
      a2 = *(a2 + 16);
      v3 = *(a2 + 8);
      if (a2)
      {
        v4 = v3 == 0;
      }

      else
      {
        v4 = 0;
      }
    }

    while (v4);
  }

  if ((v3 - 3) >= 0xFFFFFFFE)
  {

    return AGCArgumentBuffer::Tier1TypeBuilder::buildStruct(a1, a2);
  }

  else
  {
    result = 0;
    if (v3 > 4)
    {
      switch(v3)
      {
        case 5:
          v6 = (a1 + 40);
          break;
        case 6:
          v6 = (a1 + 44);
          break;
        case 7:
          AGCArgumentBuffer::Tier1TypeBuilder::buildConstant(a1, a2);
          return 0;
        default:
          return result;
      }

LABEL_21:
      AGCArgumentBuffer::Tier1TypeBuilder::buildResource(a1, a2, v6);
      return 1;
    }

    if (v3 != 3)
    {
      if (v3 != 4)
      {
        return result;
      }

      v6 = (a1 + 48);
      goto LABEL_21;
    }

    v7 = *(a1 + 64);
    if (v7 >= *(a1 + 68))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(a1 + 56) + 8 * v7) = a2;
    ++*(a1 + 64);
    result = AGCArgumentBuffer::Tier1TypeBuilder::buildField(a1, *(a2 + 16));
    --*(a1 + 64);
  }

  return result;
}

uint64_t AGCArgumentBuffer::Tier1TypeBuilder::buildConstant(AGCArgumentBuffer::Tier1TypeBuilder *this, AGCArgumentBuffer::Constant *a2)
{
  llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back(this + 1000, *(*(this + 19) + 104 * *(this + 40) - 96));
  llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back(this + 1000, *(this + 28));
  AGCArgumentBuffer::Tier1TypeBuilder::pushArrayIndices(this);
  llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(a2 + 184, this + 1048);
  v4 = *(this + 252);
  if (v4)
  {
    v5 = *(this + 125);
    v6 = 4 * v4;
    do
    {
      v5 += 4;
      v7 = llvm::ConstantInt::get();
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a2 + 104, v7);
      v6 -= 4;
    }

    while (v6);
  }

  v8 = *(a2 + 31);
  v9 = *(this + 16);
  if (v9)
  {
    v10 = *(this + 7) + 8 * v9;
    do
    {
      v11 = *(v10 - 8);
      v10 -= 8;
      v8 = llvm::ArrayType::get(v8, *(v11 + 24));
    }

    while (v10 != *(this + 7));
  }

  result = llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(this + 104, v8);
  v13 = *(this + 16);
  v14 = *(this + 252);
  if (v13)
  {
    v14 -= v13;
    *(this + 264) -= v13;
  }

  *(this + 252) = v14 - 2;
  return result;
}

uint64_t AGCArgumentBuffer::Tier1TypeBuilder::buildResource(llvm::ConstantInt **this, AGCArgumentBuffer::Resource *a2, unsigned int *a3)
{
  AGCArgumentBuffer::Tier1TypeBuilder::endConstantGroup(this);
  *(a2 + 25) = *a3;
  llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(a2 + 184, (this + 131));
  v6 = *(this + 252);
  if (v6)
  {
    v7 = this[125];
    v8 = 4 * v6;
    do
    {
      v7 = (v7 + 4);
      v9 = llvm::ConstantInt::get();
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a2 + 104, v9);
      v8 -= 4;
    }

    while (v8);
  }

  v10 = *(this + 16);
  if (v10)
  {
    v11 = this[7];
    v12 = 8 * v10;
    v13 = 1;
    do
    {
      v14 = *v11;
      v11 = (v11 + 8);
      v13 *= *(v14 + 24);
      v12 -= 8;
    }

    while (v12);
  }

  else
  {
    v13 = 1;
  }

  v15 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a2 + 104, v15);
  v16 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a2 + 104, v16);
  v17 = llvm::ConstantInt::get();
  result = llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a2 + 104, v17);
  *a3 += v13;
  return result;
}

uint64_t AGCArgumentBuffer::Tier1TypeBuilder::endConstantGroup(uint64_t this)
{
  if (*(this + 112))
  {
    v1 = this;
    v2 = *(this + 152) + 104 * *(this + 160) - 104;
    v3 = llvm::StructType::get();
    this = llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v2, v3);
    *(v1 + 112) = 0;
  }

  return this;
}

uint64_t AGCArgumentBuffer::Tier1TypeBuilder::pushArrayIndices(uint64_t this)
{
  v1 = *(this + 64);
  if (v1)
  {
    v2 = this;
    v3 = *(this + 56);
    v4 = 8 * v1;
    do
    {
      v5 = *v3++;
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v2 + 1048, *(v5 + 32) | (*(v2 + 1008) << 32));
      this = llvm::SmallVectorTemplateBase<AGCCodeTranslator::ComputeVIRegType,true>::push_back(v2 + 1000, 0);
      v4 -= 8;
    }

    while (v4);
  }

  return this;
}

uint64_t AGCArgumentBuffer::Tier1TypeBuilder::endGroup(AGCArgumentBuffer::Tier1TypeBuilder *this, uint64_t a2, unint64_t a3)
{
  v4 = *(this + 4);
  v5 = llvm::ArrayType::get(v4, *(*(this + 1) + 1816));
  v6 = llvm::ArrayType::get(v5, *(this + 10));
  v7 = llvm::ArrayType::get(*(this + 4), *(*(this + 1) + 1820));
  v8 = llvm::ArrayType::get(v7, *(this + 11));
  v9 = llvm::ArrayType::get(*(this + 3), *(*(this + 1) + 1872));
  v10 = *(this + 4);
  llvm::ArrayType::get(v10, 0);
  v11 = *(this + 12);
  if (v11)
  {
    llvm::ArrayType::get(v4, v11);
  }

  if (*(this + 10))
  {
    llvm::ArrayType::get(v6, 2);
  }

  if (*(this + 11))
  {
    llvm::ArrayType::get(v8, 1);
  }

  v12 = *(this + 10);
  if (v12)
  {
    llvm::ArrayType::get(v9, v12);
    v13 = *(this + 10);
    if (v13)
    {
      llvm::ArrayType::get(v10, v13);
    }
  }

  v14 = *(this + 11);
  if (v14)
  {
    llvm::ArrayType::get(v10, v14);
  }

  if (*(this + 12) || *(this + 10))
  {
    v15 = *(this + 19) + 104 * *(this + 40) - 104;
  }

  else
  {
    v15 = *(this + 19) + 104 * *(this + 40) - 104;
    if (!*(this + 11))
    {
      v16 = llvm::StructType::get();
      goto LABEL_16;
    }
  }

  v16 = llvm::StructType::get();
LABEL_16:
  *(*v15 + 8 * *(v15 + 96)) = v16;
  return AGCArgumentBuffer::Tier1TypeBuilder::endConstantGroup(this);
}

void AGCArgumentBuffer::Resource::~Resource(AGCArgumentBuffer::Resource *this)
{
  *this = &unk_28257C100;
  v2 = *(this + 23);
  if (v2 != this + 200)
  {
    free(v2);
  }

  v3 = *(this + 13);
  if (v3 != this + 120)
  {
    free(v3);
  }

  v4 = *(this + 2);
  if (v4 != this + 32)
  {
    free(v4);
  }

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28257C100;
  v2 = *(this + 23);
  if (v2 != this + 200)
  {
    free(v2);
  }

  v3 = *(this + 13);
  if (v3 != this + 120)
  {
    free(v3);
  }

  v4 = *(this + 2);
  if (v4 != this + 32)
  {
    free(v4);
  }
}

void AGCArgumentBuffer::Constant::~Constant(AGCArgumentBuffer::Constant *this)
{
  *this = &unk_28257C100;
  v2 = *(this + 23);
  if (v2 != this + 200)
  {
    free(v2);
  }

  v3 = *(this + 13);
  if (v3 != this + 120)
  {
    free(v3);
  }

  v4 = *(this + 2);
  if (v4 != this + 32)
  {
    free(v4);
  }

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28257C100;
  v2 = *(this + 23);
  if (v2 != this + 200)
  {
    free(v2);
  }

  v3 = *(this + 13);
  if (v3 != this + 120)
  {
    free(v3);
  }

  v4 = *(this + 2);
  if (v4 != this + 32)
  {
    free(v4);
  }
}

__n128 AGCArgumentBuffer::ResourceTracker::pushArray(AGCArgumentBuffer::ResourceTracker *this, AGCArgumentBuffer::Array *a2, int a3)
{
  v3 = *(this + 72);
  v9.n128_u64[0] = a2;
  v9.n128_u8[8] = a3;
  v9.n128_u8[12] = 0;
  v10.n128_u8[0] = 0;
  v10.n128_u32[1] = 0;
  v10.n128_u32[2] = v3;
  v4 = *(this + 2);
  v5 = *this;
  if (v4 >= *(this + 3))
  {
    if (v5 > &v9 || v5 + 32 * v4 <= &v9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = (v5 + 32 * *(this + 2));
  result = v9;
  v8 = v10;
  *v6 = v9;
  v6[1] = v8;
  ++*(this + 2);
  *(this + 74) *= *(a2 + 6);
  LODWORD(v6) = *(this + 73) + a3;
  *(this + 73) = v6 + 1;
  *(a2 + 8) = v6;
  return result;
}

void AGCArgumentBuffer::parseMDStruct(char *a1, int *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int32x2_t *a7)
{
  v127[2] = *MEMORY[0x277D85DE8];
  *a1 = 1;
  *(a1 + 1) = 0;
  v12 = a1 + 8;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  std::string::push_back((a1 + 8), 123);
  if (!a4)
  {
    a4 = parseMDStructType(a3);
  }

  v13 = *(a4 + 12);
  v125 = v127;
  v126 = 0x400000000;
  llvm::SmallVectorImpl<unsigned int>::assign(&v125, v13, 0);
  v14 = *a7 + 32 * a7[1].u32[0];
  if ((*(v14 - 16) & 1) == 0)
  {
    *(v14 - 20) = a5;
    *(v14 - 16) = 1;
  }

  v110 = v12;
  a7[36] = vadd_s32(a7[36], 0x100000001);
  v15 = *(a6 + 24);
  if (v15 != v13)
  {
    if (v15 <= v13)
    {
      if (*(a6 + 28) < v13)
      {
        __dst = 0;
        llvm::SmallVectorBase<unsigned int>::mallocForGrow();
      }

      if (v15 != v13)
      {
        bzero((*(a6 + 16) + 8 * v15), 8 * v13 - 8 * v15);
      }
    }

    else
    {
      v16 = 8 * v13 - 8 * v15;
      v17 = (*(a6 + 16) + 8 * v15 - 8);
      do
      {
        v18 = *v17;
        *v17 = 0;
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }

        --v17;
        v16 += 8;
      }

      while (v16);
    }

    *(a6 + 24) = v13;
  }

  StructLayout = llvm::DataLayout::getStructLayout();
  if (v13)
  {
    v20 = (StructLayout + 16);
    v21 = v125;
    do
    {
      v22 = *v20++;
      *v21++ = v22;
      --v13;
    }

    while (v13);
  }

  v23 = *(a3 + 8);
  if (v23)
  {
    LODWORD(v24) = 0;
    v107 = *(a3 + 8);
    v104 = a3;
    v105 = a6;
    while (1)
    {
      v122 = 0;
      v120 = -1;
      v121 = 0;
      v25 = isStringMDNode(*(a3 - 8 * *(a3 + 8) + 8 * v24), "air.struct_type_info");
      v26 = *(a3 + 8);
      if (v25)
      {
        v27 = *(a3 - 8 * v26 + 8 * (v24 + 1));
        if (v27 && ((*v27 < 0x23uLL) & (0x7FFFFFFF0uLL >> *v27)) == 0)
        {
          v27 = 0;
        }

        v28 = -v26;
        v50 = v27 == 0;
        v29 = *a1;
        if (v50)
        {
          v29 = 0;
        }

        *a1 = v29;
        v30 = (v24 + 2);
        LODWORD(v24) = v24 + 2;
      }

      else
      {
        v30 = v24;
        v28 = -v26;
      }

      if (isStringMDNode(*(a3 + 8 * v28 + 8 * v30), "air.inline_type_info"))
      {
        v31 = *(a3 - 8 * *(a3 + 8) + 8 * (v24 + 1));
        if (v31 && ((*v31 < 0x23uLL) & (0x7FFFFFFF0uLL >> *v31)) == 0)
        {
          v31 = 0;
        }

        v50 = v31 == 0;
        v32 = *a1;
        if (v50)
        {
          v32 = 0;
        }

        *a1 = v32;
        LODWORD(v24) = v24 + 2;
      }

      v33 = v24;
      LODWORD(__dst) = v24;
      *a1 &= parseMDInt(0, a3, &__dst, &v122 + 1);
      LODWORD(__dst) = v24 + 1;
      *a1 &= parseMDInt(0, a3, &__dst, &v122);
      __s1 = v24;
      v34 = v24 + 3;
      LODWORD(__dst) = v33 + 2;
      v35 = parseMDInt(0, a3, &__dst, &v121);
      v36 = a3 - 8 * *(a3 + 8);
      v37 = *(v36 + 8 * v34);
      if (v37)
      {
        if (*v37)
        {
          v38 = 0;
        }

        else
        {
          v38 = *(v36 + 8 * v34);
        }
      }

      else
      {
        v38 = 0;
      }

      v39 = v35 & *a1;
      if (!v38)
      {
        v39 = 0;
      }

      v40 = *(v36 + 8 * (__s1 + 4));
      if (v40)
      {
        if (*v40)
        {
          v41 = 0;
        }

        else
        {
          v41 = v40;
        }
      }

      else
      {
        v41 = 0;
      }

      if (!v41)
      {
        v39 = 0;
      }

      *a1 = v39;
      String = llvm::MDString::getString(v38);
      __n = v42;
      llvm::MDString::getString(v41);
      v43 = v126;
      if (v126)
      {
        v44 = v125;
        do
        {
          v45 = v43 >> 1;
          v46 = &v44[4 * (v43 >> 1)];
          v48 = *v46;
          v47 = v46 + 1;
          v43 += ~(v43 >> 1);
          if (v48 < HIDWORD(v122))
          {
            v44 = v47;
          }

          else
          {
            v43 = v45;
          }
        }

        while (v43);
      }

      else
      {
        v44 = v125;
      }

      v49 = *(a6 + 16);
      if (__n >= 7)
      {
        v50 = *String == 1801675120 && *(String + 3) == 1600415083;
        if (v50)
        {
          v121 *= *(String + __n - 1) - 48;
        }
      }

      v113 = (v49 + 8 * ((v44 - v125) >> 2));
      v112 = *(*(a4 + 16) + 8 * ((v44 - v125) >> 2));
      if (*(v112 + 8) == 17)
      {
        operator new();
      }

      v24 = (__s1 + 5);
      std::string::push_back(v110, 1);
      if (v24 < v23)
      {
        break;
      }

      a3 = v104;
LABEL_243:
      a6 = v105;
      if (v24 >= v23)
      {
        goto LABEL_244;
      }
    }

    a3 = v104;
    while (1)
    {
      v51 = *(v104 - 8 * *(v104 + 8) + 8 * v24);
      if (isStringMDNode(v51, "air.render_target") || isStringMDNode(v51, "air.raster_order_group") || isStringMDNode(v51, "air.imageblock_index"))
      {
        goto LABEL_73;
      }

      if (!isStringMDNode(v51, "air.indirect_argument"))
      {
        goto LABEL_243;
      }

      v52 = v24;
      v53 = v24 + 1;
      LODWORD(__dst) = v53;
      if (parseMDInt(0, v104, &__dst, &v120))
      {
        v120 += a5;
        operator new();
      }

      v54 = *(v104 - 8 * *(v104 + 8) + 8 * v53);
      if (!v54)
      {
        v24 = v52;
        goto LABEL_74;
      }

      v55 = *v54;
      v24 = v52;
      if (v55 > 0x22 || ((0x7FFFFFFF0uLL >> v55) & 1) == 0)
      {
        goto LABEL_74;
      }

      v56 = llvm::MDString::getString(*&v54[-8 * *(v54 + 2) + 8]);
      v124 = 0;
      v118 = 0;
      if (v57 <= 24)
      {
        if (v57 > 18)
        {
          switch(v57)
          {
            case 19:
              if (*v56 == 0x69646E692E726961 && *(v56 + 8) == 0x6675625F74636572 && *(v56 + 11) == 0x7265666675625F74)
              {
LABEL_151:
                HIBYTE(v118) = 0;
                v76 = *(v112 + 2);
                if (v76 == 16 && *(**(v112 + 2) + 8) == 17)
                {
                  LODWORD(__dst) = 2;
                  HIDWORD(v123) = 0;
                  parseMDLocationIndex(v54, &__dst, &v120, &v124 + 1);
                  v77 = (__dst + 1);
                  LODWORD(__dst) = v77;
                  if (isStringMDNode(*&v54[8 * v77 + -8 * *(v54 + 2)], "air.address_space"))
                  {
                    parseMDInt("air.address_space", v54, &__dst, &v123 + 1);
                    v77 = __dst;
                  }

                  if (isStringMDNode(*&v54[8 * v77 + -8 * *(v54 + 2)], "air.arg_type_name"))
                  {
                    LODWORD(__dst) = v77 + 1;
                    v78 = llvm::MDString::getString(*&v54[8 * (v77 + 1) + -8 * *(v54 + 2)]);
                    v80 = v79 >= 5 && *v78 == 1634890337 && *(v78 + 4) == 121;
                    HIBYTE(v118) = v80;
                  }

                  AGCArgumentBuffer::unwrapArray(v113, v112, a7);
                }

                if (v76 == 16)
                {
                  operator new();
                }

                v123 = 0;
                __dst = 0;
                LOBYTE(v117) = 0;
                BYTE4(v116) = 0;
                if ((v76 & 0xFE) == 0x12)
                {
                  v76 = *(**(v112 + 2) + 8);
                }

                *a1 &= parseMDBuffer(v54, v76 >> 8, &v120, &v124 + 1, &v123 + 1, &v123, &__dst, &v116 + 4, &v118, &v124, &v117);
                v120 += a5;
                operator new();
              }

              break;
            case 21:
              if (*v56 == 0x69646E692E726961 && *(v56 + 8) == 0x6E6F635F74636572 && *(v56 + 13) == 0x746E6174736E6F63)
              {
                v92 = isStringMDNode(*&v54[-8 * *(v54 + 2) + 8], "air.indirect_constant");
                v93 = v92;
                if (v92)
                {
                  v94 = *(v54 + 2);
                  LODWORD(__dst) = 2;
                  if (v94 >= 3)
                  {
                    do
                    {
                      v95 = parseMDLocationIndex(v54, &__dst, &v120, &v124 + 1);
                      v96 = __dst;
                      if ((v95 & 1) == 0)
                      {
                        v96 = __dst + 1;
                        LODWORD(__dst) = __dst + 1;
                      }
                    }

                    while (v96 < v94);
                  }
                }

                *a1 &= v93;
                v120 += a5;
                operator new();
              }

              break;
            case 23:
              v64 = *v56 == 0x747065642E726961 && *(v56 + 8) == 0x69636E6574735F68;
              if (v64 && *(v56 + 15) == 0x65746174735F6C69)
              {
                goto LABEL_222;
              }

              break;
          }
        }

        else
        {
          switch(v57)
          {
            case 10:
              if (*v56 == 0x666675622E726961 && *(v56 + 8) == 29285)
              {
                goto LABEL_151;
              }

              v69 = *v56 == 0x736E65742E726961 && *(v56 + 8) == 29295;
              v23 = v107;
              if (v69)
              {
                v123 = 0;
                v117 = 0;
                v116 = 0;
                __dst = 0;
                v115 = 0;
                v114 = 0;
                *a1 &= parseMDBuffer(v54, 1, &v123 + 1, &v123, &v117, &v116 + 1, &__dst, &v115 + 1, &v115, &v116, &v114);
                if (v123 >= 2)
                {
                  AGCArgumentBuffer::unwrapArray(v113, v112, a7);
                }

                operator new();
              }

              goto LABEL_73;
            case 11:
              if (*v56 == 0x747865742E726961 && *(v56 + 3) == 0x657275747865742ELL)
              {
                LOBYTE(__dst) = 0;
                BYTE4(v123) = 0;
                *a1 &= parseMDTexture(v54, &v120, &v124 + 1, &__dst, &v118 + 1, &v123 + 4, &v118, &v124);
                v120 += a5;
                if (HIBYTE(v118) == 1)
                {
                  AGCArgumentBuffer::unwrapArray(v113, v112, a7);
                }

                operator new();
              }

              v84 = *v56 == 0x706D61732E726961 && *(v56 + 3) == 0x72656C706D61732ELL;
              v23 = v107;
              if (v84)
              {
                *a1 &= parseMDSampler(v54, &v120, &v124 + 1, &v118 + 1);
                v120 += a5;
                if (HIBYTE(v118) == 1)
                {
                  AGCArgumentBuffer::unwrapArray(v113, v112, a7);
                }

                operator new();
              }

              goto LABEL_73;
            case 18:
              v58 = *v56 == 0x6D6D6F632E726961 && *(v56 + 8) == 0x666675625F646E61;
              if (v58 && *(v56 + 16) == 29285)
              {
                goto LABEL_222;
              }

              break;
          }
        }

        goto LABEL_221;
      }

      if (v57 > 30)
      {
        switch(v57)
        {
          case 31:
            v60 = *(v56 + 23);
            v62 = *v56 == 0x65746E692E726961 && *(v56 + 8) == 0x6E6F697463657372 && *(v56 + 16) == 0x6F6974636E75665FLL;
            v63 = 0x656C6261745F6E6FLL;
LABEL_165:
            if (v62 && v60 == v63)
            {
              goto LABEL_222;
            }

            break;
          case 35:
            v66 = "air.instance_acceleration_structure";
            v67 = 35;
LABEL_220:
            if (!memcmp(v56, v66, v67))
            {
              goto LABEL_222;
            }

            break;
          case 36:
            v66 = "air.primitive_acceleration_structure";
            v67 = 36;
            goto LABEL_220;
        }
      }

      else
      {
        switch(v57)
        {
          case 25:
            v70 = *(v56 + 24);
            v72 = *v56 == 0x646E65722E726961 && *(v56 + 8) == 0x6C657069705F7265 && *(v56 + 16) == 0x746174735F656E69;
            v73 = 101;
LABEL_199:
            if (v72 && v70 == v73)
            {
              goto LABEL_222;
            }

            break;
          case 26:
            if (*v56 == 0x706D6F632E726961 && *(v56 + 8) == 0x657069705F657475 && *(v56 + 16) == 0x6174735F656E696CLL && *(v56 + 24) == 25972)
            {
LABEL_222:
              *a1 &= parseMDOpaqueTypes(v54, &v120, &v124 + 1, &v118 + 1);
              v120 += a5;
              if (HIBYTE(v118) == 1)
              {
                AGCArgumentBuffer::unwrapArray(v113, v112, a7);
              }

              operator new();
            }

            v70 = *(v56 + 24);
            v72 = *v56 == 0x697369762E726961 && *(v56 + 8) == 0x636E75665F656C62 && *(v56 + 16) == 0x6261745F6E6F6974;
            v73 = 25964;
            goto LABEL_199;
          case 27:
            v60 = *(v56 + 19);
            v62 = *v56 == 0x69646E692E726961 && *(v56 + 8) == 0x6D6F635F74636572 && *(v56 + 16) == 0x6675625F646E616DLL;
            v63 = 0x7265666675625F64;
            goto LABEL_165;
        }
      }

LABEL_221:
      v23 = v107;
LABEL_73:
      v24 = (v24 + 2);
LABEL_74:
      if (v24 >= v23)
      {
        goto LABEL_243;
      }
    }
  }

LABEL_244:
  std::string::push_back(v110, 125);
  if (a1[1])
  {
    v98 = a1[31];
    if ((v98 & 0x80u) == 0)
    {
      v99 = v110;
    }

    else
    {
      v99 = *(a1 + 1);
    }

    if ((v98 & 0x80u) != 0)
    {
      v98 = *(a1 + 2);
    }

    if (v98)
    {
      v100 = -1;
      do
      {
        v101 = v99->__r_.__value_.__s.__data_[0];
        v99 = (v99 + 1);
        v100 = crc_table[v101 ^ ((v100 & 0xFF00) >> 8)] ^ (v100 << 8);
        --v98;
      }

      while (v98);
      v102 = v100 | 0x7FE00000;
    }

    else
    {
      v102 = 2145452031;
    }

    *a2 = v102;
  }

  a7[36] = vadd_s32(a7[36], -1);
  if (v125 != v127)
  {
    free(v125);
  }
}

uint64_t *AGCArgumentBuffer::ResourceTracker::popArray(uint64_t *this)
{
  v1 = *this;
  v2 = *(this + 2);
  v3 = *this + 32 * v2;
  v4 = *(v3 - 32);
  v5 = *(v3 - 24);
  v6 = *(v3 - 20);
  v7 = *(v3 - 16);
  v8 = *(v3 - 12);
  v9 = *(v4 + 24);
  *(this + 74) /= v9;
  v10 = v8 - v6 + 1;
  *(v4 + 28) = v10;
  v11 = (v2 - 1);
  *(this + 2) = v11;
  if (v11)
  {
    v12 = v1 + 32 * v11;
    if ((*(v12 - 16) & 1) == 0)
    {
      *(v12 - 20) = v6;
      *(v12 - 16) = v7;
      v9 = *(v4 + 24);
      v10 = *(v4 + 28);
    }

    v13 = v6 + v10 * v9 - 1;
    if (*(v12 - 12) > v13)
    {
      v13 = *(v12 - 12);
    }

    *(v12 - 12) = v13;
  }

  if (v5)
  {
    v14 = -2;
  }

  else
  {
    v14 = -1;
  }

  *(this + 73) += v14;
  return this;
}

uint64_t AGCArgumentBuffer::ResourceTracker::addResource(uint64_t this, AGCArgumentBuffer::Resource *a2, unsigned int *a3)
{
  v4 = *(this + 8);
  if (v4 == 1)
  {
    v5 = *(a2 + 6);
  }

  else
  {
    v15 = *this + 32 * v4;
    v5 = *(a2 + 6);
    v16 = 1;
    do
    {
      v18 = *(v15 - 32);
      v15 -= 32;
      v17 = v18;
      if (v5 >= *(a2 + 7))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v3 = v3 & 0xFFFFFFFF00000000 | v16;
      v19 = (*(a2 + 2) + 16 * v5);
      *v19 = v17;
      v19[1] = v3;
      v5 = *(a2 + 6) + 1;
      *(a2 + 6) = v5;
      v16 *= *(*v15 + 24);
    }

    while (v15 != *this + 32);
  }

  v6 = *(a2 + 2);
  v7 = (v6 + 16 * v5 - 16);
  if (v5)
  {
    v8 = v7 > v6;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = v6 + 16;
    do
    {
      v10 = *(v9 - 16);
      *(v9 - 16) = *v7;
      *v7-- = v10;
      v11 = v9 >= v7;
      v9 += 16;
    }

    while (!v11);
  }

  v12 = *(this + 8);
  v13 = *this + 32 * v12;
  if (v12 == 1)
  {
    v14 = *this + 32;
  }

  else
  {
    v20 = 32 * v12 - 32;
    v14 = *this + 32;
    while (*(v14 + 24) != *(this + 288))
    {
      v14 += 32;
      v20 -= 32;
      if (!v20)
      {
        v14 = v13;
        break;
      }
    }
  }

  *(a2 + 24) = (v14 - (*this + 32)) >> 5;
  v21 = *(a2 + 58);
  if ((*(v13 - 16) & 1) == 0)
  {
    *(v13 - 20) = v21;
    *(v13 - 16) = 1;
  }

  if (*(v13 - 12) > v21)
  {
    v21 = *(v13 - 12);
  }

  *(v13 - 12) = v21;
  v22 = *(this + 296);
  *(a2 + 59) = *a3;
  *(a2 + 60) = v22;
  *a3 += v22;
  return this;
}

void bufferTypeMap(void)
{
  v182 = *MEMORY[0x277D85DE8];
  {
    std::string::basic_string[abi:nn200100]<0>(v2, "float");
    v3 = 3;
    std::string::basic_string[abi:nn200100]<0>(v4, "float2");
    v5 = 4;
    std::string::basic_string[abi:nn200100]<0>(v6, "float3");
    v7 = 5;
    std::string::basic_string[abi:nn200100]<0>(v8, "float4");
    v9 = 6;
    std::string::basic_string[abi:nn200100]<0>(v10, "packed_float");
    v11 = 3;
    std::string::basic_string[abi:nn200100]<0>(v12, "packed_float2");
    v13 = 4;
    std::string::basic_string[abi:nn200100]<0>(v14, "packed_float3");
    v15 = 5;
    std::string::basic_string[abi:nn200100]<0>(v16, "packed_float4");
    v17 = 6;
    std::string::basic_string[abi:nn200100]<0>(v18, "half");
    v19 = 16;
    std::string::basic_string[abi:nn200100]<0>(v20, "half2");
    v21 = 17;
    std::string::basic_string[abi:nn200100]<0>(v22, "half3");
    v23 = 18;
    std::string::basic_string[abi:nn200100]<0>(v24, "half4");
    v25 = 19;
    std::string::basic_string[abi:nn200100]<0>(v26, "packed_half");
    v27 = 16;
    std::string::basic_string[abi:nn200100]<0>(v28, "packed_half2");
    v29 = 17;
    std::string::basic_string[abi:nn200100]<0>(v30, "packed_half3");
    v31 = 18;
    std::string::basic_string[abi:nn200100]<0>(v32, "packed_half4");
    v33 = 19;
    std::string::basic_string[abi:nn200100]<0>(v34, "int");
    v35 = 29;
    std::string::basic_string[abi:nn200100]<0>(v36, "int2");
    v37 = 30;
    std::string::basic_string[abi:nn200100]<0>(v38, "int3");
    v39 = 31;
    std::string::basic_string[abi:nn200100]<0>(v40, "int4");
    v41 = 32;
    std::string::basic_string[abi:nn200100]<0>(v42, "packed_int");
    v43 = 29;
    std::string::basic_string[abi:nn200100]<0>(v44, "packed_int2");
    v45 = 30;
    std::string::basic_string[abi:nn200100]<0>(v46, "packed_int3");
    v47 = 31;
    std::string::basic_string[abi:nn200100]<0>(v48, "packed_int4");
    v49 = 32;
    std::string::basic_string[abi:nn200100]<0>(v50, "uint");
    v51 = 33;
    std::string::basic_string[abi:nn200100]<0>(v52, "uint2");
    v53 = 34;
    std::string::basic_string[abi:nn200100]<0>(v54, "uint3");
    v55 = 35;
    std::string::basic_string[abi:nn200100]<0>(v56, "uint4");
    v57 = 36;
    std::string::basic_string[abi:nn200100]<0>(v58, "packed_uint");
    v59 = 33;
    std::string::basic_string[abi:nn200100]<0>(v60, "packed_uint2");
    v61 = 34;
    std::string::basic_string[abi:nn200100]<0>(v62, "packed_uint3");
    v63 = 35;
    std::string::basic_string[abi:nn200100]<0>(v64, "packed_uint4");
    v65 = 36;
    std::string::basic_string[abi:nn200100]<0>(v66, "short");
    v67 = 37;
    std::string::basic_string[abi:nn200100]<0>(v68, "short2");
    v69 = 38;
    std::string::basic_string[abi:nn200100]<0>(v70, "short3");
    v71 = 39;
    std::string::basic_string[abi:nn200100]<0>(v72, "short4");
    v73 = 40;
    std::string::basic_string[abi:nn200100]<0>(v74, "packed_short");
    v75 = 37;
    std::string::basic_string[abi:nn200100]<0>(v76, "packed_short2");
    v77 = 38;
    std::string::basic_string[abi:nn200100]<0>(v78, "packed_short3");
    v79 = 39;
    std::string::basic_string[abi:nn200100]<0>(v80, "packed_short4");
    v81 = 40;
    std::string::basic_string[abi:nn200100]<0>(v82, "ushort");
    v83 = 41;
    std::string::basic_string[abi:nn200100]<0>(v84, "ushort2");
    v85 = 42;
    std::string::basic_string[abi:nn200100]<0>(v86, "ushort3");
    v87 = 43;
    std::string::basic_string[abi:nn200100]<0>(v88, "ushort4");
    v89 = 44;
    std::string::basic_string[abi:nn200100]<0>(v90, "packed_ushort");
    v91 = 41;
    std::string::basic_string[abi:nn200100]<0>(v92, "packed_ushort2");
    v93 = 42;
    std::string::basic_string[abi:nn200100]<0>(v94, "packed_ushort3");
    v95 = 43;
    std::string::basic_string[abi:nn200100]<0>(v96, "packed_ushort4");
    v97 = 44;
    std::string::basic_string[abi:nn200100]<0>(v98, "char");
    v99 = 45;
    std::string::basic_string[abi:nn200100]<0>(v100, "char2");
    v101 = 46;
    std::string::basic_string[abi:nn200100]<0>(v102, "char3");
    v103 = 47;
    std::string::basic_string[abi:nn200100]<0>(v104, "char4");
    v105 = 48;
    std::string::basic_string[abi:nn200100]<0>(v106, "packed_char");
    v107 = 45;
    std::string::basic_string[abi:nn200100]<0>(v108, "packed_char2");
    v109 = 46;
    std::string::basic_string[abi:nn200100]<0>(v110, "packed_char3");
    v111 = 47;
    std::string::basic_string[abi:nn200100]<0>(v112, "packed_char4");
    v113 = 48;
    std::string::basic_string[abi:nn200100]<0>(v114, "uchar");
    v115 = 49;
    std::string::basic_string[abi:nn200100]<0>(v116, "uchar2");
    v117 = 50;
    std::string::basic_string[abi:nn200100]<0>(v118, "uchar3");
    v119 = 51;
    std::string::basic_string[abi:nn200100]<0>(v120, "uchar4");
    v121 = 52;
    std::string::basic_string[abi:nn200100]<0>(v122, "packed_uchar");
    v123 = 49;
    std::string::basic_string[abi:nn200100]<0>(v124, "packed_uchar2");
    v125 = 50;
    std::string::basic_string[abi:nn200100]<0>(v126, "packed_uchar3");
    v127 = 51;
    std::string::basic_string[abi:nn200100]<0>(v128, "packed_uchar4");
    v129 = 52;
    std::string::basic_string[abi:nn200100]<0>(v130, "BOOL");
    v131 = 53;
    std::string::basic_string[abi:nn200100]<0>(v132, "BOOL2");
    v133 = 54;
    std::string::basic_string[abi:nn200100]<0>(v134, "BOOL3");
    v135 = 55;
    std::string::basic_string[abi:nn200100]<0>(v136, "BOOL4");
    v137 = 56;
    std::string::basic_string[abi:nn200100]<0>(v138, "packed_BOOL");
    v139 = 53;
    std::string::basic_string[abi:nn200100]<0>(v140, "packed_BOOL2");
    v141 = 54;
    std::string::basic_string[abi:nn200100]<0>(v142, "packed_BOOL3");
    v143 = 55;
    std::string::basic_string[abi:nn200100]<0>(v144, "packed_BOOL4");
    v145 = 56;
    std::string::basic_string[abi:nn200100]<0>(v146, "float2x2");
    v147 = 7;
    std::string::basic_string[abi:nn200100]<0>(v148, "float2x3");
    v149 = 8;
    std::string::basic_string[abi:nn200100]<0>(v150, "float2x4");
    v151 = 9;
    std::string::basic_string[abi:nn200100]<0>(v152, "float3x2");
    v153 = 10;
    std::string::basic_string[abi:nn200100]<0>(v154, "float3x3");
    v155 = 11;
    std::string::basic_string[abi:nn200100]<0>(v156, "float3x4");
    v157 = 12;
    std::string::basic_string[abi:nn200100]<0>(v158, "float4x2");
    v159 = 13;
    std::string::basic_string[abi:nn200100]<0>(v160, "float4x3");
    v161 = 14;
    std::string::basic_string[abi:nn200100]<0>(v162, "float4x4");
    v163 = 15;
    std::string::basic_string[abi:nn200100]<0>(v164, "half2x2");
    v165 = 20;
    std::string::basic_string[abi:nn200100]<0>(v166, "half2x3");
    v167 = 21;
    std::string::basic_string[abi:nn200100]<0>(v168, "half2x4");
    v169 = 22;
    std::string::basic_string[abi:nn200100]<0>(v170, "half3x2");
    v171 = 23;
    std::string::basic_string[abi:nn200100]<0>(v172, "half3x3");
    v173 = 24;
    std::string::basic_string[abi:nn200100]<0>(v174, "half3x4");
    v175 = 25;
    std::string::basic_string[abi:nn200100]<0>(v176, "half4x2");
    v177 = 26;
    std::string::basic_string[abi:nn200100]<0>(v178, "half4x3");
    v179 = 27;
    std::string::basic_string[abi:nn200100]<0>(v180, "half4x4");
    v0 = 0;
    v181 = 28;
    qword_27C8D88D0 = 0;
    qword_27C8D88C8 = 0;
    bufferTypeMap(void)::localBufferTypeMap = &qword_27C8D88C8;
    do
    {
      std::__tree<std::__value_type<std::string,MTLCompilerDataType>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLCompilerDataType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLCompilerDataType>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,MTLCompilerDataType> const&>(&bufferTypeMap(void)::localBufferTypeMap, &qword_27C8D88C8, &v2[v0], &v2[v0]);
      v0 += 4;
    }

    while (v0 != 360);
    v1 = 360;
    do
    {
      if (*(&v2[v1 - 1] - 1) < 0)
      {
        operator delete(v2[v1 - 4]);
      }

      v1 -= 4;
    }

    while (v1 * 8);
    __cxa_atexit(std::map<std::string,MTLCompilerDataType>::~map[abi:nn200100], &bufferTypeMap(void)::localBufferTypeMap, &dword_20E4E1000);
  }
}

uint64_t std::__tree<std::__value_type<std::string,MTLCompilerDataType>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLCompilerDataType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLCompilerDataType>>>::find<std::string>(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100]((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

void pixelTypeMap(void)
{
  v34 = *MEMORY[0x277D85DE8];
  {
    std::string::basic_string[abi:nn200100]<0>(v2, "r8unorm");
    v3 = 62;
    std::string::basic_string[abi:nn200100]<0>(v4, "r8snorm");
    v5 = 63;
    std::string::basic_string[abi:nn200100]<0>(v6, "r16unorm");
    v7 = 64;
    std::string::basic_string[abi:nn200100]<0>(v8, "r16snorm");
    v9 = 65;
    std::string::basic_string[abi:nn200100]<0>(v10, "rg8unorm");
    v11 = 66;
    std::string::basic_string[abi:nn200100]<0>(v12, "rg8snorm");
    v13 = 67;
    std::string::basic_string[abi:nn200100]<0>(v14, "rg16unorm");
    v15 = 68;
    std::string::basic_string[abi:nn200100]<0>(v16, "rg16snorm");
    v17 = 69;
    std::string::basic_string[abi:nn200100]<0>(v18, "rgba8unorm");
    v19 = 70;
    std::string::basic_string[abi:nn200100]<0>(v20, "srgba8unorm");
    v21 = 71;
    std::string::basic_string[abi:nn200100]<0>(v22, "rgba8snorm");
    v23 = 72;
    std::string::basic_string[abi:nn200100]<0>(v24, "rgba16unorm");
    v25 = 73;
    std::string::basic_string[abi:nn200100]<0>(v26, "rgba16snorm");
    v27 = 74;
    std::string::basic_string[abi:nn200100]<0>(v28, "rgb10a2");
    v29 = 75;
    std::string::basic_string[abi:nn200100]<0>(v30, "rg11b10f");
    v31 = 76;
    std::string::basic_string[abi:nn200100]<0>(v32, "rgb9e5");
    v0 = 0;
    v33 = 77;
    qword_27C8D9768 = 0;
    qword_27C8D9760 = 0;
    pixelTypeMap(void)::localPixelFormatTypeMap = &qword_27C8D9760;
    do
    {
      std::__tree<std::__value_type<std::string,MTLCompilerDataType>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLCompilerDataType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLCompilerDataType>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,MTLCompilerDataType> const&>(&pixelTypeMap(void)::localPixelFormatTypeMap, &qword_27C8D9760, &v2[v0], &v2[v0]);
      v0 += 4;
    }

    while (v0 != 64);
    v1 = 64;
    do
    {
      if (*(&v2[v1 - 1] - 1) < 0)
      {
        operator delete(v2[v1 - 4]);
      }

      v1 -= 4;
    }

    while (v1 * 8);
    __cxa_atexit(std::map<std::string,MTLCompilerDataType>::~map[abi:nn200100], &pixelTypeMap(void)::localPixelFormatTypeMap, &dword_20E4E1000);
  }
}

void AGCArgumentBuffer::Tensor::~Tensor(AGCArgumentBuffer::Tensor *this)
{
  *this = &unk_28257C100;
  v2 = *(this + 23);
  if (v2 != this + 200)
  {
    free(v2);
  }

  v3 = *(this + 13);
  if (v3 != this + 120)
  {
    free(v3);
  }

  v4 = *(this + 2);
  if (v4 != this + 32)
  {
    free(v4);
  }

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28257C100;
  v2 = *(this + 23);
  if (v2 != this + 200)
  {
    free(v2);
  }

  v3 = *(this + 13);
  if (v3 != this + 120)
  {
    free(v3);
  }

  v4 = *(this + 2);
  if (v4 != this + 32)
  {
    free(v4);
  }
}

void AGCArgumentBuffer::Sampler::~Sampler(AGCArgumentBuffer::Sampler *this)
{
  *this = &unk_28257C100;
  v2 = *(this + 23);
  if (v2 != this + 200)
  {
    free(v2);
  }

  v3 = *(this + 13);
  if (v3 != this + 120)
  {
    free(v3);
  }

  v4 = *(this + 2);
  if (v4 != this + 32)
  {
    free(v4);
  }

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28257C100;
  v2 = *(this + 23);
  if (v2 != this + 200)
  {
    free(v2);
  }

  v3 = *(this + 13);
  if (v3 != this + 120)
  {
    free(v3);
  }

  v4 = *(this + 2);
  if (v4 != this + 32)
  {
    free(v4);
  }
}

void AGCArgumentBuffer::Texture::~Texture(AGCArgumentBuffer::Texture *this)
{
  *this = &unk_28257C100;
  v2 = *(this + 23);
  if (v2 != this + 200)
  {
    free(v2);
  }

  v3 = *(this + 13);
  if (v3 != this + 120)
  {
    free(v3);
  }

  v4 = *(this + 2);
  if (v4 != this + 32)
  {
    free(v4);
  }

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28257C100;
  v2 = *(this + 23);
  if (v2 != this + 200)
  {
    free(v2);
  }

  v3 = *(this + 13);
  if (v3 != this + 120)
  {
    free(v3);
  }

  v4 = *(this + 2);
  if (v4 != this + 32)
  {
    free(v4);
  }
}

void AGCArgumentBuffer::DummyStruct::~DummyStruct(AGCArgumentBuffer::DummyStruct *this)
{
  *this = &unk_28257C120;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28257C120;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void AGCArgumentBuffer::Buffer::~Buffer(AGCArgumentBuffer::Buffer *this)
{
  *this = &unk_28257C100;
  v2 = *(this + 23);
  if (v2 != this + 200)
  {
    free(v2);
  }

  v3 = *(this + 13);
  if (v3 != this + 120)
  {
    free(v3);
  }

  v4 = *(this + 2);
  if (v4 != this + 32)
  {
    free(v4);
  }

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28257C100;
  v2 = *(this + 23);
  if (v2 != this + 200)
  {
    free(v2);
  }

  v3 = *(this + 13);
  if (v3 != this + 120)
  {
    free(v3);
  }

  v4 = *(this + 2);
  if (v4 != this + 32)
  {
    free(v4);
  }
}

uint64_t std::__tree<std::__value_type<std::string,MTLCompilerDataType>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLCompilerDataType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLCompilerDataType>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,MTLCompilerDataType> const&>(uint64_t result, void *a2, void *a3, uint64_t a4)
{
  v6 = result;
  v7 = (result + 8);
  if ((result + 8) == a2 || (result = std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](a3, a2 + 4), result))
  {
    v8 = *a2;
    if (*v6 == a2)
    {
      v10 = a2;
LABEL_17:
      if (!v8)
      {
        v17 = a2;
        goto LABEL_31;
      }

      v17 = v10;
      v13 = v10 + 1;
LABEL_30:
      if (!*v13)
      {
        goto LABEL_31;
      }

      return result;
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    result = std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](v10 + 4, a3);
    if (result)
    {
      goto LABEL_17;
    }

LABEL_29:
    result = std::__tree<std::__value_type<std::string,MTLCompilerDataType>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLCompilerDataType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLCompilerDataType>>>::__find_equal<std::string>(v6, &v17, a3);
    v13 = result;
    goto LABEL_30;
  }

  result = std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](a2 + 4, a3);
  if (result)
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v16 = a2;
      do
      {
        v13 = v16[2];
        v15 = *v13 == v16;
        v16 = v13;
      }

      while (!v15);
    }

    if (v13 == v7 || (result = std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](a3, v13 + 4), result))
    {
      if (v11)
      {
        v17 = v13;
      }

      else
      {
        v17 = a2;
        v13 = a2 + 1;
      }

      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v17 = a2;
  if (!a2)
  {
LABEL_31:
    operator new();
  }

  return result;
}

void AGCArgumentBuffer::Struct::~Struct(char ***this)
{
  *this = &unk_2825A7940;
  llvm::SmallVector<std::unique_ptr<AGCArgumentBuffer::Field>,4u>::~SmallVector(this + 2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825A7940;
  llvm::SmallVector<std::unique_ptr<AGCArgumentBuffer::Field>,4u>::~SmallVector(this + 2);
}

char ***llvm::SmallVector<std::unique_ptr<AGCArgumentBuffer::Field>,4u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = v3;
    v5 = v2 - 1;
    do
    {
      v6 = v5[v4];
      v5[v4] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      --v4;
    }

    while (v4 * 8);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void AGCArgumentBuffer::Root::~Root(char ***this)
{
  *this = &unk_2825A7940;
  llvm::SmallVector<std::unique_ptr<AGCArgumentBuffer::Field>,4u>::~SmallVector(this + 2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825A7940;
  llvm::SmallVector<std::unique_ptr<AGCArgumentBuffer::Field>,4u>::~SmallVector(this + 2);
}

void AGCArgumentBuffer::Array::~Array(AGCArgumentBuffer::Array *this)
{
  *this = &unk_28257C140;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_28257C140;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

uint64_t AGCArgumentBuffer::AGCArgumentBuffer(uint64_t a1, AGCArgumentBuffer::Struct *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7)
{
  v38 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a7;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  v9 = AGCArgumentBuffer::parseMDRoot(a1, a5, a6);
  *(a1 + 32) = v9;
  if (*(a2 + 1869) == 1)
  {
    v11 = *(a1 + 8);
    v16[0] = v9;
    v16[1] = a2;
    v16[2] = v11;
    v16[3] = llvm::Type::getInt32Ty(v11, v10);
    v16[4] = llvm::Type::getInt64Ty(v11, v12);
    v17 = 0;
    v18 = 0;
    v19 = v21;
    v20 = 0x400000000;
    v22 = v24;
    v23 = 0x400000000;
    v25 = v27;
    v26 = 0x800000000;
    v28 = v30;
    v29 = 0x800000000;
    v31[0] = v32;
    v31[1] = 0x400000000;
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v31, 0);
    v33[0] = v34;
    v33[1] = 0x400000000;
    v35 = v37;
    v36 = 0x400000000;
    v37[8] = 0;
    llvm::SmallVectorTemplateBase<AGCArgumentBuffer::Tier1TypeBuilder::SubStruct,false>::push_back(&v25, v33);
    if (v35 != v37)
    {
      free(v35);
    }

    if (v33[0] != v34)
    {
      free(v33[0]);
    }

    v17 = 0;
    v18 = 0;
    v13 = v25 + 104 * v26;
    *(v13 - 2) = *(v13 - 24);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back((v13 - 104), 0);
    AGCArgumentBuffer::Tier1TypeBuilder::buildStruct(v16, v16[0], v14);
    *(a1 + 40) = *(*(v25 + 13 * v26 - 13) + 8);
    if (v31[0] != v32)
    {
      free(v31[0]);
    }

    if (v28 != v30)
    {
      free(v28);
    }

    llvm::SmallVectorTemplateBase<AGCArgumentBuffer::Tier1TypeBuilder::SubStruct,false>::destroy_range(v25, v25 + 104 * v26);
    if (v25 != v27)
    {
      free(v25);
    }

    if (v22 != v24)
    {
      free(v22);
    }

    if (v19 != v21)
    {
      free(v19);
    }
  }

  return a1;
}

AGCArgumentBuffer *AGCArgumentBuffer::lookup(AGCArgumentBuffer *this, const llvm::GetElementPtrInst *a2, const llvm::Use **a3, BOOL *a4)
{
  *a4 = 1;
  v6 = (a2 - 32 * (*(a2 + 5) & 0x7FFFFFF) + 64);
  if (v6 >= a2)
  {
LABEL_48:
    *a3 = v6;
    return this;
  }

  v9 = 1;
  while (1)
  {
    v10 = *v6;
    v11 = *(*v6 + 16);
    if (*v6 && v11 == 16)
    {
      v14 = *(v10 + 32);
      v15 = v14 > 0x40 ? llvm::APInt::countLeadingZerosSlowCase((v10 + 24)) == v14 : *(v10 + 24) == 0;
      v13 = v15;
    }

    else
    {
      v13 = 0;
    }

    v9 &= v13;
    *a4 = v9;
    v16 = *(this + 2);
    if (v16 - 3 < 0xFFFFFFFE || this == 0)
    {
      break;
    }

    if (v11 != 16)
    {
      return 0;
    }

    v20 = (v10 + 24);
    if (*(v10 + 32) >= 0x41u)
    {
      v20 = *v20;
    }

    v21 = *v20;
    if (v21 >= *(this + 6))
    {
      return 0;
    }

    this = *(*(this + 2) + 8 * v21);
    if (!this)
    {
      return this;
    }

LABEL_44:
    v6 = (v6 + 32);
    if (v6 >= a2)
    {
      goto LABEL_48;
    }
  }

  if (v16 == 3 && this != 0)
  {
    goto LABEL_43;
  }

  if (!v16 && this)
  {
    if (v11 != 16)
    {
      return 0;
    }

    v19 = *(v10 + 32);
    if (v19 > 0x40)
    {
      if (llvm::APInt::countLeadingZerosSlowCase((v10 + 24)) != v19)
      {
        return 0;
      }
    }

    else if (*(v10 + 24))
    {
      return 0;
    }

LABEL_43:
    this = *(this + 2);
    goto LABEL_44;
  }

  if (v16 > 9 || ((1 << v16) & 0x260) == 0)
  {
    goto LABEL_48;
  }

  if (v11 == 16)
  {
    v22 = *(v10 + 32);
    if (v22 > 0x40)
    {
      if (llvm::APInt::countLeadingZerosSlowCase((v10 + 24)) != v22)
      {
        return 0;
      }
    }

    else if (*(v10 + 24))
    {
      return 0;
    }

    goto LABEL_44;
  }

  return 0;
}

llvm::Value *AGCArgumentBuffer::Resource::getResourceId(uint64_t a1, llvm::Type **a2, uint64_t a3)
{
  llvm::Type::getInt32Ty(a2[8], a2);
  Add = llvm::ConstantInt::get();
  v8 = *(a1 + 24);
  if (v8)
  {
    v9 = *(a1 + 16);
    v10 = v9 + 16 * v8;
    do
    {
      v11 = *(a3 + 32 - 32 * (*(a3 + 20) & 0x7FFFFFF) + 32 * *(*v9 + 32));
      Int32Ty = llvm::Type::getInt32Ty(a2[8], v6);
      v19 = 257;
      ZExtOrTrunc = llvm::IRBuilderBase::CreateZExtOrTrunc(a2, v11, Int32Ty, v18);
      llvm::Type::getInt32Ty(a2[8], v14);
      v15 = llvm::ConstantInt::get();
      v19 = 257;
      Mul = llvm::IRBuilderBase::CreateMul(a2, v15, ZExtOrTrunc, v18);
      v19 = 257;
      Add = llvm::IRBuilderBase::CreateAdd(a2, Add, Mul, v18);
      v9 += 16;
    }

    while (v9 != v10);
  }

  return Add;
}

unint64_t AGCArgumentBuffer::Resource::getResourceIdBounds(AGCArgumentBuffer::Resource *this, llvm::GetElementPtrInst *a2)
{
  v2 = a2 - 32 * (*(a2 + 5) & 0x7FFFFFF);
  v5 = *(v2 + 4);
  v4 = v2 + 32;
  v3 = v5;
  v6 = *(v5 + 16);
  if (v5)
  {
    v7 = v6 == 16;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_8;
  }

  v9 = *(v3 + 32);
  if (v9 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase((v3 + 24)) != v9)
    {
      goto LABEL_8;
    }
  }

  else if (*(v3 + 24))
  {
LABEL_8:
    v10 = 0;
    v11 = 0;
    return v11 | v10;
  }

  v12 = *(this + 6);
  if (v12)
  {
    LODWORD(v11) = 0;
    v13 = 0;
    v14 = 16 * v12;
    v15 = (*(this + 2) + 8);
    do
    {
      v16 = *(v15 - 1);
      v17 = *&v4[32 * *(v16 + 32)];
      if (v17)
      {
        v18 = *(v17 + 16) == 16;
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        v19 = (v17 + 24);
        if (*(v17 + 32) >= 0x41u)
        {
          v19 = *v19;
        }

        LODWORD(v11) = v11 + *v15 * *v19;
      }

      else
      {
        v13 += (*(v16 + 24) - 1) * *v15;
      }

      v15 += 4;
      v14 -= 16;
    }

    while (v14);
  }

  else
  {
    v13 = 0;
    LODWORD(v11) = 0;
  }

  v10 = v11 & 0xFFFFFF00 | ((v11 + v13) << 32);
  v11 = v11;
  return v11 | v10;
}

llvm::Value *AGCArgumentBuffer::Resource::getResourceArrayIndex(uint64_t a1, llvm::Type **a2, void *a3)
{
  llvm::Type::getInt32Ty(a2[8], a2);
  Add = llvm::ConstantInt::get();
  v8 = *(a1 + 96);
  if (v8 != *(a1 + 24))
  {
    v9 = *(a1 + 16) + 16 * v8;
    do
    {
      v10 = *(*a3 + 8 * *(*v9 + 32));
      Int32Ty = llvm::Type::getInt32Ty(a2[8], v6);
      v18 = 257;
      ZExtOrTrunc = llvm::IRBuilderBase::CreateZExtOrTrunc(a2, v10, Int32Ty, v17);
      llvm::Type::getInt32Ty(a2[8], v13);
      v14 = llvm::ConstantInt::get();
      v18 = 257;
      Mul = llvm::IRBuilderBase::CreateMul(a2, ZExtOrTrunc, v14, v17);
      v18 = 257;
      Add = llvm::IRBuilderBase::CreateAdd(a2, Add, Mul, v17);
      v9 += 16;
    }

    while (v9 != *(a1 + 16) + 16 * *(a1 + 24));
  }

  return Add;
}

llvm::Value *AGCArgumentBuffer::Buffer::remapToTier1Indices(void *a1, uint64_t a2, llvm::Type **a3, void *a4)
{
  *a1 = a1 + 2;
  a1[1] = 0x800000000;
  if (*(a2 + 112))
  {
    llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(a1, a2 + 104);
  }

  v8 = *(a2 + 192);
  if (v8)
  {
    v9 = *(a2 + 184);
    v10 = &v9[2 * v8];
    do
    {
      v11 = *v9;
      v12 = v9[1];
      v9 += 2;
      *(*a1 + 8 * v12) = *(*a4 + 8 * v11);
    }

    while (v9 != v10);
  }

  result = AGCArgumentBuffer::Resource::getResourceArrayIndex(a2, a3, a4);
  *(*a1 + 8 * *(a1 + 2) - 8) = result;
  return result;
}

uint64_t AGCArgumentBuffer::Sampler::typeSet(AGCArgumentBuffer::Sampler *this, AGCLLVMTargetLowerer *a2, llvm::LLVMContext *a3)
{
  *this = this + 16;
  *(this + 1) = 0x300000000;
  Int64Ty = llvm::Type::getInt64Ty(a3, a2);
  v7 = llvm::ArrayType::get(Int64Ty, *(a2 + 455));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(this, v7);
  v9 = llvm::Type::getInt64Ty(a3, v8);

  return llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(this, v9);
}

uint64_t AGCArgumentBuffer::Texture::typeSet(AGCArgumentBuffer::Texture *this, AGCLLVMTargetLowerer *a2, llvm::LLVMContext *a3)
{
  *this = this + 16;
  *(this + 1) = 0x400000000;
  Int64Ty = llvm::Type::getInt64Ty(a3, a2);
  v7 = llvm::ArrayType::get(Int64Ty, *(a2 + 454));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(this, v7);
  v9 = llvm::Type::getInt64Ty(a3, v8);
  v10 = llvm::ArrayType::get(v9, *(a2 + 454));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(this, v10);
  Int32Ty = llvm::Type::getInt32Ty(a3, v11);
  v13 = llvm::ArrayType::get(Int32Ty, *(a2 + 468));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(this, v13);
  v15 = llvm::Type::getInt64Ty(a3, v14);

  return llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(this, v15);
}

void *AGCArgumentBuffer::Constant::remapToTier1Indices(void *result, uint64_t a2, void *a3)
{
  *result = result + 2;
  result[1] = 0x800000000;
  if (*(a2 + 112))
  {
    result = llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(result, a2 + 104);
  }

  v5 = *(a2 + 192);
  if (v5)
  {
    v6 = *(a2 + 184);
    v7 = &v6[2 * v5];
    do
    {
      v8 = *v6;
      v9 = v6[1];
      v6 += 2;
      *(*result + 8 * v9) = *(*a3 + 8 * v8);
    }

    while (v6 != v7);
  }

  return result;
}

llvm::Instruction *AGCLLVMAirBuiltins::buildSimdBarrier(uint64_t a1)
{
  v2 = *(a1 + 464);
  v3 = *(v2 + 1048);
  if (v3)
  {
    v4 = strlen(*(v2 + 1048));
  }

  else
  {
    v4 = 0;
  }

  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, v3, v4, *(a1 + 144));
  v8 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(inserted + 24), inserted, 0, 0, v7);
}

std::string *AGCLLVMAirBuiltins::buildAtomic(uint64_t a1, llvm::Type ***a2, uint64_t a3, uint64_t a4)
{
  v162 = *MEMORY[0x277D85DE8];
  v6 = **a2;
  v7 = *(v6 + 2);
  if ((v7 & 0xFE) == 0x12)
  {
    v7 = *(**(v6 + 2) + 8);
  }

  if ((v7 & 0xFFFFFF00) == 0x100)
  {
    v8 = *(a1 + 944);
    if (v8)
    {
      *(v8 + 9) = 1;
    }
  }

  else
  {
    v9 = v7 & 0xFFFFFF00;
    v10 = *(a1 + 944);
    if (v9 == 2048)
    {
      if (v10)
      {
        *(v10 + 8) = 257;
      }
    }

    else if (v10)
    {
      *(v10 + 8) = 1;
    }
  }

  {
    AGCLLVMAirBuiltins::initializeAtomicMap(void)::atomic_map = 0;
    *&dword_28117DBD0 = 0;
    qword_28117DBD8 = 0x2000000000;
    __cxa_atexit(llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::~StringMap, &AGCLLVMAirBuiltins::initializeAtomicMap(void)::atomic_map, &dword_20E4E1000);
  }

  if (atomic_load_explicit(&AGCLLVMAirBuiltins::initializeAtomicMap(void)::flag, memory_order_acquire) != -1)
  {
    v158 = v147;
    __src = &v158;
    std::__call_once(&AGCLLVMAirBuiltins::initializeAtomicMap(void)::flag, &__src, std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMAirBuiltins::initializeAtomicMap(void)::$_0 &&>>);
  }

  Key = llvm::StringMapImpl::FindKey();
  v13 = Key;
  if (Key == -1)
  {
    v13 = dword_28117DBD0;
  }

  v14 = *(AGCLLVMAirBuiltins::initializeAtomicMap(void)::atomic_map + 8 * v13);
  if (*(v14 + 24) == 1 && (*(*(a1 + 464) + 1920) & 1) == 0)
  {
    v62 = (*(a1 + 944) + *(**(a1 + 944) - 24));
    v63 = "Unsupported batched atomic operation for given target.";
LABEL_60:
    std::string::append(v62 + 69, v63);
    goto LABEL_80;
  }

  AlignedLoad = 0;
  v16 = *(v14 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      if (!*(v14 + 24))
      {
        v90 = *a2;
        v91 = *(a1 + 72);
        if (*(v14 + 16))
        {
          FloatTy = llvm::Type::getFloatTy(v91, v12);
        }

        else
        {
          FloatTy = llvm::Type::getInt32Ty(v91, v12);
        }

        v96 = FloatTy;
        v97 = a2[1];
        v98 = a2[2];
        v99 = (v97 + 24);
        if (*(v97 + 32) >= 0x41u)
        {
          v99 = *v99;
        }

        v100 = *v99 - 2;
        if (v100 >= 4)
        {
          v101 = 256;
        }

        else
        {
          v101 = (v100 << 7) + 512;
        }

        v102 = (v98 + 24);
        if (*(v98 + 32) >= 0x41u)
        {
          v102 = *v102;
        }

        v103 = (*v102 - 1) < 2;
        v104 = *v90;
        v105 = *(*v90 + 2);
        if ((v105 & 0xFE) == 0x12)
        {
          v105 = *(**(v104 + 2) + 8);
        }

        if ((v105 & 0xFFFFFF00) == 0x300 || v105 <= 0xFF)
        {
          v161 = 257;
          llvm::Type::isOpaquePointerTy(v104);
          AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v96, v90, 0, &v158);
          *(AlignedLoad + 18) = *(AlignedLoad + 18) & 0xFC7F | v101;
          *(AlignedLoad + 60) = v103;
          setVolatility<llvm::AtomicRMWInst>(AlignedLoad, a2[3]);
        }

        else
        {
          v114 = *(a1 + 464);
          v134 = *(a1 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v135, (a1 + 8));
          v136 = *(a1 + 104);
          Cast = (*(*v114 + 64))(v114, &v134, v90, v98);
          v116 = v135;
          if (v135)
          {
            llvm::MetadataTracking::untrack();
          }

          v117 = *(a1 + 72);
          if (*(v14 + 16))
          {
            Int32Ty = llvm::Type::getFloatTy(v117, v116);
          }

          else
          {
            Int32Ty = llvm::Type::getInt32Ty(v117, v116);
          }

          v121 = Int32Ty;
          if (Int32Ty == *(a1 + 168))
          {
            v123 = llvm::PointerType::get();
            v161 = 257;
            Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, Cast, v123, &v158);
            v122 = *(a1 + 200);
          }

          else
          {
            v122 = Int32Ty;
          }

          v161 = 257;
          llvm::Type::isOpaquePointerTy(*Cast);
          v124 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v122, Cast, 0, &v158);
          *(v124 + 18) = *(v124 + 18) & 0xFC7F | v101;
          *(v124 + 60) = v103;
          setVolatility<llvm::AtomicRMWInst>(v124, a2[3]);
          v161 = 257;
          return llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v124, v121, &v158);
        }

        return AlignedLoad;
      }

      goto LABEL_80;
    }

    if (v16 != 3)
    {
      return AlignedLoad;
    }

    if (*(v14 + 24))
    {
LABEL_80:
      AlignedLoad = 0;
      *(a1 + 960) = 0;
      return AlignedLoad;
    }

    v44 = *a2;
    v45 = a2[2];
    v46 = a2[3];
    v47 = (v45 + 24);
    if (*(v45 + 32) >= 0x41u)
    {
      v47 = *v47;
    }

    v48 = a2[1];
    v49 = *v47;
    v50 = v49 - 2;
    v51 = v49 + 2;
    if (v50 >= 4)
    {
      v52 = 2;
    }

    else
    {
      v52 = v51;
    }

    v53 = (v46 + 24);
    if (*(v46 + 32) >= 0x41u)
    {
      v53 = *v53;
    }

    v54 = (*v53 - 1) < 2;
    v55 = *(*v44 + 2);
    if ((v55 & 0xFE) == 0x12)
    {
      v55 = *(**(*v44 + 2) + 8);
    }

    if ((v55 & 0xFFFFFF00) == 0x300 || v55 <= 0xFF)
    {
      AlignedStore = llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), a2[1], *a2, 0, 0);
      v57 = *(AlignedStore + 18) & 0xFC7F | (v52 << 7);
      *(AlignedStore + 18) = v57;
      *(AlignedStore + 60) = v54;
      v58 = a2[4];
      if (v58 && *(v58 + 16) == 16)
      {
        v59 = AlignedStore;
        v60 = *(v58 + 32);
        if (v60 > 0x40)
        {
          v61 = llvm::APInt::countLeadingZerosSlowCase((v58 + 24)) == v60;
        }

        else
        {
          v61 = *(v58 + 24) == 0;
        }

        v120 = v61;
        AlignedLoad = 0;
        *(v59 + 18) = v57 & 0xFFFE | v120 ^ 1;
        return AlignedLoad;
      }
    }

    else
    {
      v108 = *(a1 + 464);
      v131 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v132, (a1 + 8));
      v133 = *(a1 + 104);
      v109 = (*(*v108 + 64))(v108, &v131, v44, v46);
      if (v132)
      {
        llvm::MetadataTracking::untrack();
      }

      if (*v48 == *(a1 + 168))
      {
        v110 = llvm::PointerType::get();
        v161 = 257;
        v109 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v109, v110, &v158);
        v111 = *(a1 + 200);
        v161 = 257;
        v48 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v48, v111, &v158);
      }

      AtomicRMW = llvm::IRBuilderBase::CreateAtomicRMW((a1 + 8), 0, v109, v48, 0, v52, v54);
      setVolatility<llvm::AtomicRMWInst>(AtomicRMW, a2[4]);
    }

    return 0;
  }

  if (v16)
  {
    if (v16 == 1)
    {
      v18 = *a2;
      v17 = a2[1];
      v19 = a2[2];
      v20 = *v19;
      v161 = 257;
      llvm::Type::isOpaquePointerTy(*v17);
      v130 = v17;
      v21 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v20, v17, 0, &v158);
      v128 = *(a1 + 168);
      v129 = *v19;
      if (*v19 == v128)
      {
        v22 = llvm::PointerType::get();
        v161 = 257;
        v18 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v18, v22, &v158);
        v23 = *(a1 + 200);
        v161 = 257;
        v21 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v21, v23, &v158);
        v24 = *(a1 + 200);
        v161 = 257;
        v19 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v19, v24, &v158);
      }

      v25 = a2[3];
      v26 = (v25 + 24);
      if (*(v25 + 32) >= 0x41u)
      {
        v26 = *v26;
      }

      v27 = *v26;
      if ((v27 - 2) >= 4)
      {
        v28 = 2;
      }

      else
      {
        v28 = v27 + 2;
      }

      v127 = v28;
      v29 = a2[4];
      v30 = (v29 + 24);
      if (*(v29 + 32) >= 0x41u)
      {
        v30 = *v30;
      }

      v31 = *v30;
      v32 = v31 - 2;
      v33 = v31 + 2;
      if (v32 >= 4)
      {
        v34 = 2;
      }

      else
      {
        v34 = v33;
      }

      v35 = a2[5];
      v36 = (v35 + 24);
      if (*(v35 + 32) >= 0x41u)
      {
        v36 = *v36;
      }

      v37 = (*v36 - 1) < 2;
      v38 = *(a1 + 464);
      v137 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v138, (a1 + 8));
      v139 = *(a1 + 104);
      v39 = (*(*v38 + 64))(v38, &v137, v18, v35);
      if (v138)
      {
        llvm::MetadataTracking::untrack();
      }

      AtomicCmpXchg = llvm::IRBuilderBase::CreateAtomicCmpXchg((a1 + 8), v39, v21, v19, 0, v127, v34, v37);
      v41 = a2[6];
      if (v41 && *(v41 + 16) == 16)
      {
        v42 = *(v41 + 32);
        if (v42 > 0x40)
        {
          v43 = llvm::APInt::countLeadingZerosSlowCase((v41 + 24)) == v42;
        }

        else
        {
          v43 = *(v41 + 24) == 0;
        }

        v106 = v43;
        *(AtomicCmpXchg + 18) = *(AtomicCmpXchg + 18) & 0xFFFE | v106 ^ 1;
      }

      LODWORD(__src) = 0;
      v161 = 257;
      AlignedLoad = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, AtomicCmpXchg, &__src, 1, &v158);
      if (v129 == v128)
      {
        v107 = *(a1 + 168);
        v161 = 257;
        AlignedLoad = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, AlignedLoad, v107, &v158);
      }

      llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), AlignedLoad, v130, 0, 0);
    }

    return AlignedLoad;
  }

  v64 = *a2;
  v65 = a2[2];
  v66 = a2[3];
  v67 = (v65 + 24);
  if (*(v65 + 32) >= 0x41u)
  {
    v67 = *v67;
  }

  v68 = *v67;
  v69 = v68 - 2;
  v70 = v68 + 2;
  if (v69 >= 4)
  {
    v71 = 2;
  }

  else
  {
    v71 = v70;
  }

  v72 = (v66 + 24);
  if (*(v66 + 32) >= 0x41u)
  {
    v72 = *v72;
  }

  v73 = a2[1];
  v74 = (*v72 - 1) < 2;
  v75 = *(a1 + 464);
  v149 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v150, (a1 + 8));
  v151 = *(a1 + 104);
  v76 = (*(*v75 + 64))(v75, &v149, v64, v66);
  if (v150)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(v14 + 24) != 1)
  {
    v84 = *(v14 + 16);
    if (v84 == 2)
    {
      v85 = *(a1 + 464);
      if ((v85[1921] & 1) == 0)
      {
        std::string::basic_string[abi:nn200100]<0>(v145, "Unsupported float atomic operation for given target.");
        AGCLLVMAirBuiltins::recordError(a1, v145);
        if (v146 < 0)
        {
          v113 = *v145;
LABEL_139:
          operator delete(v113);
        }

        return 0;
      }

      if (v85[1924] == 1)
      {
        v86 = *(a1 + 944);
        if (!v86 || (*(v86 + *(*v86 - 24) + 1808) & 1) == 0)
        {
          v142 = *(a1 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v143, (a1 + 8));
          v144 = *(a1 + 104);
          v88 = llvm::Type::getFloatTy(*(a1 + 456), v87);
          v76 = (*(*v85 + 72))(v85, &v142, v76, v88);
          if (v143)
          {
            llvm::MetadataTracking::untrack();
          }
        }
      }

      v84 = *(v14 + 16);
      if (v84 == 2)
      {
        v89 = *(*v76 + 2);
        if ((v89 & 0xFE) == 0x12)
        {
          v89 = *(**(*v76 + 2) + 8);
        }

        if ((v89 & 0xFFFFFF00) == 0x300 && (*(*(a1 + 464) + 1922) & 1) == 0)
        {
          v62 = (*(a1 + 944) + *(**(a1 + 944) - 24));
          v63 = "Unsupported local float atomic operation for given target.";
          goto LABEL_60;
        }

LABEL_98:
        AlignedLoad = llvm::IRBuilderBase::CreateAtomicRMW((a1 + 8), *(v14 + 12), v76, v73, 0, v71, v74);
        setVolatility<llvm::AtomicRMWInst>(AlignedLoad, a2[4]);
        return AlignedLoad;
      }
    }

    if (v84 != 1 || (*(*(a1 + 464) + 1913) & 1) != 0)
    {
      goto LABEL_98;
    }

    std::string::basic_string[abi:nn200100]<0>(__p, "Unsupported float atomic operation for given target.");
    AGCLLVMAirBuiltins::recordError(a1, __p);
    if (v141 < 0)
    {
      v113 = __p[0];
      goto LABEL_139;
    }

    return 0;
  }

  v77 = *(a1 + 288);
  __src = *(a1 + 248);
  v153 = v77;
  v78 = *(a1 + 224);
  v154 = *(a1 + 336);
  v155 = v78;
  v79 = *(a1 + 312);
  v156 = *(a1 + 272);
  v157 = v79;
  v158 = v160;
  v159 = 0x600000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v158, &__src, &v158);
  if (*(v14 + 24))
  {
    if (*(v14 + 16))
    {
      v80 = 3;
    }

    else
    {
      v80 = 0;
    }

    v81 = v158[v80 - 2 + *(v14 + 20)];
    if (v158 != v160)
    {
      free(v158);
    }

    v82 = llvm::PointerType::get();
    v83 = a2[4];
    if (*(v83 + 32) > 0x40u)
    {
      llvm::APInt::countLeadingZerosSlowCase((v83 + 24));
    }

    v158 = v81;
    v159 = v82;
    v160[0] = v81;
    Declaration = llvm::Intrinsic::getDeclaration();
    v148 = 257;
    __src = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v76, v82, v147, v94);
    v153 = v73;
    v95 = llvm::ConstantInt::get();
    v154 = v95;
    if (*(v14 + 24))
    {
      if ((*(v14 + 20) - 2) <= 2)
      {
        v95 = llvm::ConstantInt::get();
      }

      v155 = v95;
      v156 = llvm::ConstantInt::get();
      v157 = llvm::ConstantInt::get();
      v158 = v160;
      v159 = 0x600000000;
      llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v158, &__src, &v158);
      LOWORD(v156) = 257;
      AlignedLoad = llvm::IRBuilderBase::CreateCall((a1 + 8), *(Declaration + 24), Declaration, v158, v159, &__src);
      if (v158 != v160)
      {
        free(v158);
      }

      return AlignedLoad;
    }
  }

  v125 = std::__throw_bad_optional_access[abi:nn200100]();
  return AGCLLVMAirBuiltins::recordError(v125, v126);
}

std::string *AGCLLVMAirBuiltins::recordError(uint64_t a1, const std::string::value_type *a2)
{
  v3 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  result = std::string::append((*(a1 + 944) + *(**(a1 + 944) - 24) + 1656), a2, v4);
  *(a1 + 960) = 0;
  return result;
}

uint64_t llvm::IRBuilderBase::CreateAtomicRMW(unsigned int **a1, uint64_t a2, uint64_t a3, llvm::Type **a4, __int16 a5, uint64_t a6, uint64_t a7)
{
  if ((a5 & 0x100) == 0)
  {
    Module = llvm::BasicBlock::getModule(a1[6]);
    DataLayout = llvm::Module::getDataLayout(Module);
    v17 = (llvm::DataLayout::getTypeSizeInBits(DataLayout, *a4) + 7) >> 3;
    v18 = v11 == 1;
    llvm::TypeSize::operator unsigned long long();
  }

  v12 = llvm::User::operator new(0x40);
  llvm::AtomicRMWInst::AtomicRMWInst();
  v19 = 257;
  (*(*a1[10] + 16))(a1[10], v12, &v17, a1[6], a1[7]);
  v13 = *(a1 + 2);
  if (v13)
  {
    v14 = *a1;
    v15 = v14 + 16 * v13;
    do
    {
      llvm::Instruction::setMetadata();
      v14 += 16;
    }

    while (v14 != v15);
  }

  return v12;
}

uint64_t setVolatility<llvm::AtomicRMWInst>(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a2 + 16) == 16)
  {
    v3 = *(a2 + 32);
    if (v3 > 0x40)
    {
      v4 = llvm::APInt::countLeadingZerosSlowCase((a2 + 24)) == v3;
    }

    else
    {
      v4 = *(a2 + 24) == 0;
    }

    v5 = v4;
    *(a1 + 18) = *(a1 + 18) & 0xFFFE | v5 ^ 1;
  }

  return a1;
}

uint64_t llvm::IRBuilderBase::CreateAtomicCmpXchg(unsigned int **a1, uint64_t a2, uint64_t a3, llvm::Type **a4, __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a5 & 0x100) == 0)
  {
    Module = llvm::BasicBlock::getModule(a1[6]);
    DataLayout = llvm::Module::getDataLayout(Module);
    v18 = (llvm::DataLayout::getTypeSizeInBits(DataLayout, *a4) + 7) >> 3;
    v19 = v12 == 1;
    llvm::TypeSize::operator unsigned long long();
  }

  v13 = llvm::User::operator new(0x40);
  llvm::AtomicCmpXchgInst::AtomicCmpXchgInst();
  v20 = 257;
  (*(*a1[10] + 16))(a1[10], v13, &v18, a1[6], a1[7]);
  v14 = *(a1 + 2);
  if (v14)
  {
    v15 = *a1;
    v16 = v15 + 16 * v14;
    do
    {
      llvm::Instruction::setMetadata();
      v15 += 16;
    }

    while (v15 != v16);
  }

  return v13;
}

void std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMAirBuiltins::initializeAtomicMap(void)::$_0 &&>>()
{
  v0 = 0;
  v144 = *MEMORY[0x277D85DE8];
  memset(&v142, 0, sizeof(v142));
  qmemcpy(v122, ".cmpxchg.weak.f3.cmpxchg.weak.i3", sizeof(v122));
  do
  {
    v1 = std::string::basic_string[abi:nn200100]<0>(&__str, off_277E20380[v0]);
    if (!std::string::compare(v1, "global"))
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:nn200100](&__p, size + 10);
      if (v140 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (size)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        memmove(p_p, p_str, size);
      }

      strcpy(p_p + size, ".max.u.i64");
      if (v140 >= 0)
      {
        v5 = &__p;
      }

      else
      {
        v5 = __p;
      }

      if (v140 >= 0)
      {
        v6 = v140;
      }

      else
      {
        v6 = v139;
      }

      v7 = *llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::try_emplace<>(v5, v6);
      *(v7 + 8) = 0x900000000;
      *(v7 + 16) = 1;
      *(v7 + 20) = 0;
      *(v7 + 24) = 0;
      if (v140 < 0)
      {
        operator delete(__p);
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v8 = __str.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:nn200100](&__p, v8 + 10);
      if (v140 >= 0)
      {
        v9 = &__p;
      }

      else
      {
        v9 = __p;
      }

      if (v8)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v10 = &__str;
        }

        else
        {
          v10 = __str.__r_.__value_.__r.__words[0];
        }

        memmove(v9, v10, v8);
      }

      strcpy(v9 + v8, ".min.u.i64");
      if (v140 >= 0)
      {
        v11 = &__p;
      }

      else
      {
        v11 = __p;
      }

      if (v140 >= 0)
      {
        v12 = v140;
      }

      else
      {
        v12 = v139;
      }

      v13 = *llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::try_emplace<>(v11, v12);
      *(v13 + 8) = 0xA00000000;
      *(v13 + 16) = 1;
      *(v13 + 20) = 0;
      *(v13 + 24) = 0;
      if (v140 < 0)
      {
        operator delete(__p);
      }
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = __str.__r_.__value_.__l.__size_;
    }

    std::string::basic_string[abi:nn200100](&__p, v14 + 17);
    if (v140 >= 0)
    {
      v15 = &__p;
    }

    else
    {
      v15 = __p;
    }

    if (v14)
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &__str;
      }

      else
      {
        v16 = __str.__r_.__value_.__r.__words[0];
      }

      memmove(v15, v16, v14);
    }

    v17 = &v15[v14];
    *v17 = v122[1];
    *(v17 + 8) = 50;
    if (v140 >= 0)
    {
      v18 = &__p;
    }

    else
    {
      v18 = __p;
    }

    if (v140 >= 0)
    {
      v19 = v140;
    }

    else
    {
      v19 = v139;
    }

    v20 = *llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::try_emplace<>(v18, v19);
    *(v20 + 8) = 0xD00000001;
    *(v20 + 16) = 0;
    *(v20 + 20) = 0;
    *(v20 + 24) = 0;
    if (v140 < 0)
    {
      operator delete(__p);
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = __str.__r_.__value_.__l.__size_;
    }

    std::string::basic_string[abi:nn200100](&__p, v21 + 17);
    if (v140 >= 0)
    {
      v22 = &__p;
    }

    else
    {
      v22 = __p;
    }

    if (v21)
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &__str;
      }

      else
      {
        v23 = __str.__r_.__value_.__r.__words[0];
      }

      memmove(v22, v23, v21);
    }

    v123 = v0;
    v24 = &v22[v21];
    *v24 = v122[0];
    *(v24 + 8) = 50;
    if (v140 >= 0)
    {
      v25 = &__p;
    }

    else
    {
      v25 = __p;
    }

    if (v140 >= 0)
    {
      v26 = v140;
    }

    else
    {
      v26 = v139;
    }

    v27 = *llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::try_emplace<>(v25, v26);
    *(v27 + 8) = 0xD00000001;
    *(v27 + 16) = 2;
    *(v27 + 20) = 0;
    *(v27 + 24) = 0;
    if (v140 < 0)
    {
      operator delete(__p);
    }

    v28 = 1;
    do
    {
      v29 = 0;
      v30 = v28 > 1;
      if (v28 <= 1)
      {
        v31 = 0;
      }

      else
      {
        v31 = v28;
      }

      v140 = 1;
      LOWORD(__p) = v28 | 0x30;
      if (v28 <= 1)
      {
        v32 = &unk_20E75F419;
      }

      else
      {
        v32 = ".batched";
      }

      do
      {
        v33 = &(&off_277E20310)[2 * v29];
        v34 = 1;
        do
        {
          std::string::operator=(&v142, &__str);
          std::string::append(&v142, v32);
          std::string::append(&v142, *v33);
          if (v34)
          {
            v35 = ".u";
          }

          else
          {
            v35 = ".s";
          }

          std::string::append(&v142, v35);
          if (v28 < 2)
          {
            std::string::basic_string[abi:nn200100]<0>(&v135, ".i32");
          }

          else
          {
            std::operator+<char>();
            v36 = std::string::append(&v134, "i32");
            v37 = v36->__r_.__value_.__r.__words[2];
            *&v135.__r_.__value_.__l.__data_ = *&v36->__r_.__value_.__l.__data_;
            v135.__r_.__value_.__r.__words[2] = v37;
            v36->__r_.__value_.__l.__size_ = 0;
            v36->__r_.__value_.__r.__words[2] = 0;
            v36->__r_.__value_.__r.__words[0] = 0;
          }

          if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v38 = &v135;
          }

          else
          {
            v38 = v135.__r_.__value_.__r.__words[0];
          }

          if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v39 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v39 = v135.__r_.__value_.__l.__size_;
          }

          std::string::append(&v142, v38, v39);
          if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v135.__r_.__value_.__l.__data_);
          }

          if (v28 >= 2 && SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v134.__r_.__value_.__l.__data_);
          }

          v40 = v34 & 1;
          v41 = 8;
          if (v34)
          {
            v41 = 12;
          }

          v42 = *(v33 + v41);
          if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v43 = &v142;
          }

          else
          {
            v43 = v142.__r_.__value_.__r.__words[0];
          }

          if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v44 = SHIBYTE(v142.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v44 = v142.__r_.__value_.__l.__size_;
          }

          v34 = 0;
          v45 = *llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::try_emplace<>(v43, v44);
          *(v45 + 8) = 0;
          *(v45 + 12) = v42;
          *(v45 + 16) = 0;
          *(v45 + 20) = v31;
          *(v45 + 24) = v30;
          *(v45 + 27) = v137;
          *(v45 + 25) = v136;
        }

        while (v40);
        ++v29;
      }

      while (v29 != 7);
      if (v28 <= 1)
      {
        std::string::basic_string[abi:nn200100]<0>(&v135, ".xchg.i32");
      }

      else
      {
        std::operator+<char>();
        v46 = std::string::append(&v133, "i32");
        v47 = v46->__r_.__value_.__r.__words[2];
        *&v135.__r_.__value_.__l.__data_ = *&v46->__r_.__value_.__l.__data_;
        v135.__r_.__value_.__r.__words[2] = v47;
        v46->__r_.__value_.__l.__size_ = 0;
        v46->__r_.__value_.__r.__words[2] = 0;
        v46->__r_.__value_.__r.__words[0] = 0;
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v48 = &__str;
      }

      else
      {
        v48 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v49 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v49 = __str.__r_.__value_.__l.__size_;
      }

      v50 = std::string::insert(&v135, 0, v48, v49);
      v51 = v50->__r_.__value_.__r.__words[0];
      v143.__r_.__value_.__r.__words[0] = v50->__r_.__value_.__l.__size_;
      *(v143.__r_.__value_.__r.__words + 7) = *(&v50->__r_.__value_.__r.__words[1] + 7);
      v52 = HIBYTE(v50->__r_.__value_.__r.__words[2]);
      v50->__r_.__value_.__l.__size_ = 0;
      v50->__r_.__value_.__r.__words[2] = 0;
      v50->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v142.__r_.__value_.__l.__data_);
      }

      v142.__r_.__value_.__r.__words[0] = v51;
      v142.__r_.__value_.__l.__size_ = v143.__r_.__value_.__r.__words[0];
      *(&v142.__r_.__value_.__r.__words[1] + 7) = *(v143.__r_.__value_.__r.__words + 7);
      *(&v142.__r_.__value_.__s + 23) = v52;
      if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v135.__r_.__value_.__l.__data_);
      }

      if (v28 >= 2 && SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v133.__r_.__value_.__l.__data_);
      }

      if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = &v142;
      }

      else
      {
        v53 = v142.__r_.__value_.__r.__words[0];
      }

      if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = SHIBYTE(v142.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v54 = v142.__r_.__value_.__l.__size_;
      }

      v55 = *llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::try_emplace<>(v53, v54);
      *(v55 + 8) = 0;
      *(v55 + 16) = 0;
      *(v55 + 20) = v31;
      *(v55 + 24) = v30;
      *(v55 + 27) = v137;
      *(v55 + 25) = v136;
      if (v28 < 2)
      {
        std::string::basic_string[abi:nn200100]<0>(&v135, ".store.i32");
      }

      else
      {
        std::operator+<char>();
        v56 = std::string::append(&v132, "i32");
        v57 = v56->__r_.__value_.__r.__words[2];
        *&v135.__r_.__value_.__l.__data_ = *&v56->__r_.__value_.__l.__data_;
        v135.__r_.__value_.__r.__words[2] = v57;
        v56->__r_.__value_.__l.__size_ = 0;
        v56->__r_.__value_.__r.__words[2] = 0;
        v56->__r_.__value_.__r.__words[0] = 0;
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = &__str;
      }

      else
      {
        v58 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v59 = __str.__r_.__value_.__l.__size_;
      }

      v60 = std::string::insert(&v135, 0, v58, v59);
      v61 = v60->__r_.__value_.__r.__words[0];
      v143.__r_.__value_.__r.__words[0] = v60->__r_.__value_.__l.__size_;
      *(v143.__r_.__value_.__r.__words + 7) = *(&v60->__r_.__value_.__r.__words[1] + 7);
      v62 = HIBYTE(v60->__r_.__value_.__r.__words[2]);
      v60->__r_.__value_.__l.__size_ = 0;
      v60->__r_.__value_.__r.__words[2] = 0;
      v60->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v142.__r_.__value_.__l.__data_);
      }

      v142.__r_.__value_.__r.__words[0] = v61;
      v142.__r_.__value_.__l.__size_ = v143.__r_.__value_.__r.__words[0];
      *(&v142.__r_.__value_.__r.__words[1] + 7) = *(v143.__r_.__value_.__r.__words + 7);
      *(&v142.__r_.__value_.__s + 23) = v62;
      if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v135.__r_.__value_.__l.__data_);
      }

      if (v28 >= 2 && SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v132.__r_.__value_.__l.__data_);
      }

      if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v63 = &v142;
      }

      else
      {
        v63 = v142.__r_.__value_.__r.__words[0];
      }

      if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v64 = SHIBYTE(v142.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v64 = v142.__r_.__value_.__l.__size_;
      }

      v65 = *llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::try_emplace<>(v63, v64);
      *(v65 + 8) = 3;
      *(v65 + 16) = 0;
      *(v65 + 20) = v31;
      *(v65 + 24) = v30;
      *(v65 + 27) = v137;
      *(v65 + 25) = v136;
      if (v28 < 2)
      {
        std::string::basic_string[abi:nn200100]<0>(&v135, ".load.i32");
      }

      else
      {
        std::operator+<char>();
        v66 = std::string::append(&v131, "i32");
        v67 = v66->__r_.__value_.__r.__words[2];
        *&v135.__r_.__value_.__l.__data_ = *&v66->__r_.__value_.__l.__data_;
        v135.__r_.__value_.__r.__words[2] = v67;
        v66->__r_.__value_.__l.__size_ = 0;
        v66->__r_.__value_.__r.__words[2] = 0;
        v66->__r_.__value_.__r.__words[0] = 0;
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v68 = &__str;
      }

      else
      {
        v68 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v69 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v69 = __str.__r_.__value_.__l.__size_;
      }

      v70 = std::string::insert(&v135, 0, v68, v69);
      v71 = v70->__r_.__value_.__r.__words[0];
      v143.__r_.__value_.__r.__words[0] = v70->__r_.__value_.__l.__size_;
      *(v143.__r_.__value_.__r.__words + 7) = *(&v70->__r_.__value_.__r.__words[1] + 7);
      v72 = HIBYTE(v70->__r_.__value_.__r.__words[2]);
      v70->__r_.__value_.__l.__size_ = 0;
      v70->__r_.__value_.__r.__words[2] = 0;
      v70->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v142.__r_.__value_.__l.__data_);
      }

      v142.__r_.__value_.__r.__words[0] = v71;
      v142.__r_.__value_.__l.__size_ = v143.__r_.__value_.__r.__words[0];
      *(&v142.__r_.__value_.__r.__words[1] + 7) = *(v143.__r_.__value_.__r.__words + 7);
      *(&v142.__r_.__value_.__s + 23) = v72;
      if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v135.__r_.__value_.__l.__data_);
      }

      if (v28 >= 2 && SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v131.__r_.__value_.__l.__data_);
      }

      if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v73 = &v142;
      }

      else
      {
        v73 = v142.__r_.__value_.__r.__words[0];
      }

      if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v74 = SHIBYTE(v142.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v74 = v142.__r_.__value_.__l.__size_;
      }

      v75 = *llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::try_emplace<>(v73, v74);
      *(v75 + 8) = 2;
      *(v75 + 16) = 0;
      *(v75 + 20) = v31;
      *(v75 + 24) = v30;
      *(v75 + 27) = v137;
      *(v75 + 25) = v136;
      if (v28 < 2)
      {
        std::string::basic_string[abi:nn200100]<0>(&v143, ".add.f32");
      }

      else
      {
        std::operator+<char>();
        v76 = std::string::append(&v130, "f32");
        v77 = v76->__r_.__value_.__r.__words[2];
        *&v143.__r_.__value_.__l.__data_ = *&v76->__r_.__value_.__l.__data_;
        v143.__r_.__value_.__r.__words[2] = v77;
        v76->__r_.__value_.__l.__size_ = 0;
        v76->__r_.__value_.__r.__words[2] = 0;
        v76->__r_.__value_.__r.__words[0] = 0;
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v78 = &__str;
      }

      else
      {
        v78 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v79 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v79 = __str.__r_.__value_.__l.__size_;
      }

      v80 = std::string::insert(&v143, 0, v78, v79);
      v81 = v80->__r_.__value_.__r.__words[2];
      *&v135.__r_.__value_.__l.__data_ = *&v80->__r_.__value_.__l.__data_;
      v135.__r_.__value_.__r.__words[2] = v81;
      v80->__r_.__value_.__l.__size_ = 0;
      v80->__r_.__value_.__r.__words[2] = 0;
      v80->__r_.__value_.__r.__words[0] = 0;
      if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v82 = &v135;
      }

      else
      {
        v82 = v135.__r_.__value_.__r.__words[0];
      }

      if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v83 = SHIBYTE(v135.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v83 = v135.__r_.__value_.__l.__size_;
      }

      v84 = *llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::try_emplace<>(v82, v83);
      *(v84 + 8) = 0xB00000000;
      *(v84 + 16) = 2;
      *(v84 + 20) = v31;
      *(v84 + 24) = v30;
      if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v135.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v143.__r_.__value_.__l.__data_);
      }

      if (v28 < 2)
      {
        std::string::basic_string[abi:nn200100]<0>(&v143, ".sub.f32");
      }

      else
      {
        if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v130.__r_.__value_.__l.__data_);
        }

        std::operator+<char>();
        v85 = std::string::append(&v127, "f32");
        v86 = v85->__r_.__value_.__r.__words[2];
        *&v143.__r_.__value_.__l.__data_ = *&v85->__r_.__value_.__l.__data_;
        v143.__r_.__value_.__r.__words[2] = v86;
        v85->__r_.__value_.__l.__size_ = 0;
        v85->__r_.__value_.__r.__words[2] = 0;
        v85->__r_.__value_.__r.__words[0] = 0;
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v87 = &__str;
      }

      else
      {
        v87 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v88 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v88 = __str.__r_.__value_.__l.__size_;
      }

      v89 = std::string::insert(&v143, 0, v87, v88);
      v90 = v89->__r_.__value_.__r.__words[2];
      *&v135.__r_.__value_.__l.__data_ = *&v89->__r_.__value_.__l.__data_;
      v135.__r_.__value_.__r.__words[2] = v90;
      v89->__r_.__value_.__l.__size_ = 0;
      v89->__r_.__value_.__r.__words[2] = 0;
      v89->__r_.__value_.__r.__words[0] = 0;
      if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v91 = &v135;
      }

      else
      {
        v91 = v135.__r_.__value_.__r.__words[0];
      }

      if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v92 = SHIBYTE(v135.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v92 = v135.__r_.__value_.__l.__size_;
      }

      v93 = *llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::try_emplace<>(v91, v92);
      *(v93 + 8) = 0xC00000000;
      *(v93 + 16) = 2;
      *(v93 + 20) = v31;
      *(v93 + 24) = v30;
      *(v93 + 27) = v129;
      *(v93 + 25) = v128;
      if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v135.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v143.__r_.__value_.__l.__data_);
      }

      if (v28 < 2)
      {
        std::string::basic_string[abi:nn200100]<0>(&v143, ".xchg.f32");
      }

      else
      {
        if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v127.__r_.__value_.__l.__data_);
        }

        std::operator+<char>();
        v94 = std::string::append(&v126, "f32");
        v95 = v94->__r_.__value_.__r.__words[2];
        *&v143.__r_.__value_.__l.__data_ = *&v94->__r_.__value_.__l.__data_;
        v143.__r_.__value_.__r.__words[2] = v95;
        v94->__r_.__value_.__l.__size_ = 0;
        v94->__r_.__value_.__r.__words[2] = 0;
        v94->__r_.__value_.__r.__words[0] = 0;
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v96 = &__str;
      }

      else
      {
        v96 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v97 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v97 = __str.__r_.__value_.__l.__size_;
      }

      v98 = std::string::insert(&v143, 0, v96, v97);
      v99 = v98->__r_.__value_.__r.__words[2];
      *&v135.__r_.__value_.__l.__data_ = *&v98->__r_.__value_.__l.__data_;
      v135.__r_.__value_.__r.__words[2] = v99;
      v98->__r_.__value_.__l.__size_ = 0;
      v98->__r_.__value_.__r.__words[2] = 0;
      v98->__r_.__value_.__r.__words[0] = 0;
      if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v100 = &v135;
      }

      else
      {
        v100 = v135.__r_.__value_.__r.__words[0];
      }

      if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v101 = SHIBYTE(v135.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v101 = v135.__r_.__value_.__l.__size_;
      }

      v102 = *llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::try_emplace<>(v100, v101);
      *(v102 + 8) = 0;
      *(v102 + 16) = 2;
      *(v102 + 20) = v31;
      *(v102 + 24) = v30;
      *(v102 + 27) = v129;
      *(v102 + 25) = v128;
      if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v135.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v143.__r_.__value_.__l.__data_);
      }

      if (v28 < 2)
      {
        std::string::basic_string[abi:nn200100]<0>(&v143, ".store.f32");
      }

      else
      {
        if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v126.__r_.__value_.__l.__data_);
        }

        std::operator+<char>();
        v103 = std::string::append(&v125, "f32");
        v104 = v103->__r_.__value_.__r.__words[2];
        *&v143.__r_.__value_.__l.__data_ = *&v103->__r_.__value_.__l.__data_;
        v143.__r_.__value_.__r.__words[2] = v104;
        v103->__r_.__value_.__l.__size_ = 0;
        v103->__r_.__value_.__r.__words[2] = 0;
        v103->__r_.__value_.__r.__words[0] = 0;
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v105 = &__str;
      }

      else
      {
        v105 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v106 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v106 = __str.__r_.__value_.__l.__size_;
      }

      v107 = std::string::insert(&v143, 0, v105, v106);
      v108 = v107->__r_.__value_.__r.__words[2];
      *&v135.__r_.__value_.__l.__data_ = *&v107->__r_.__value_.__l.__data_;
      v135.__r_.__value_.__r.__words[2] = v108;
      v107->__r_.__value_.__l.__size_ = 0;
      v107->__r_.__value_.__r.__words[2] = 0;
      v107->__r_.__value_.__r.__words[0] = 0;
      if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v109 = &v135;
      }

      else
      {
        v109 = v135.__r_.__value_.__r.__words[0];
      }

      if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v110 = SHIBYTE(v135.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v110 = v135.__r_.__value_.__l.__size_;
      }

      v111 = *llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::try_emplace<>(v109, v110);
      *(v111 + 8) = 0xD00000003;
      *(v111 + 16) = 2;
      *(v111 + 20) = v31;
      *(v111 + 24) = v30;
      *(v111 + 27) = v129;
      *(v111 + 25) = v128;
      if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v135.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v143.__r_.__value_.__l.__data_);
      }

      if (v28 < 2)
      {
        std::string::basic_string[abi:nn200100]<0>(&v143, ".load.f32");
      }

      else
      {
        if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v125.__r_.__value_.__l.__data_);
        }

        std::operator+<char>();
        v112 = std::string::append(&v124, "f32");
        v113 = v112->__r_.__value_.__r.__words[2];
        *&v143.__r_.__value_.__l.__data_ = *&v112->__r_.__value_.__l.__data_;
        v143.__r_.__value_.__r.__words[2] = v113;
        v112->__r_.__value_.__l.__size_ = 0;
        v112->__r_.__value_.__r.__words[2] = 0;
        v112->__r_.__value_.__r.__words[0] = 0;
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v114 = &__str;
      }

      else
      {
        v114 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v115 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v115 = __str.__r_.__value_.__l.__size_;
      }

      v116 = std::string::insert(&v143, 0, v114, v115);
      v117 = v116->__r_.__value_.__r.__words[2];
      *&v135.__r_.__value_.__l.__data_ = *&v116->__r_.__value_.__l.__data_;
      v135.__r_.__value_.__r.__words[2] = v117;
      v116->__r_.__value_.__l.__size_ = 0;
      v116->__r_.__value_.__r.__words[2] = 0;
      v116->__r_.__value_.__r.__words[0] = 0;
      if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v118 = &v135;
      }

      else
      {
        v118 = v135.__r_.__value_.__r.__words[0];
      }

      if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v119 = SHIBYTE(v135.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v119 = v135.__r_.__value_.__l.__size_;
      }

      v120 = *llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::try_emplace<>(v118, v119);
      *(v120 + 8) = 0xD00000002;
      *(v120 + 16) = 2;
      *(v120 + 20) = v31;
      *(v120 + 24) = v30;
      *(v120 + 27) = v129;
      *(v120 + 25) = v128;
      if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v135.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v143.__r_.__value_.__l.__data_);
      }

      if (v28 >= 2 && SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v124.__r_.__value_.__l.__data_);
      }

      if (v140 < 0)
      {
        operator delete(__p);
      }
    }

    while (v28++ < 4);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v0 = v123 + 1;
  }

  while (v123 != 3);
  if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v142.__r_.__value_.__l.__data_);
  }
}

uint64_t *llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::try_emplace<>(const void *a1, size_t a2)
{
  i = (AGCLLVMAirBuiltins::initializeAtomicMap(void)::atomic_map + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_28117DBD8) = qword_28117DBD8 - 1;
  }

  else if (v5)
  {
    while (!v5 || v5 == -8)
    {
      v6 = i[1];
      ++i;
      v5 = v6;
    }

    return i;
  }

  v8 = MEMORY[0x20F330650](a2 + 33, 8);
  v9 = v8;
  v10 = v8 + 32;
  if (a2)
  {
    memcpy((v8 + 32), a1, a2);
  }

  *(v10 + a2) = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *v9 = a2;
  *(v9 + 24) = 0;
  *i = v9;
  ++dword_28117DBD4;
    ;
  }

  return i;
}

uint64_t llvm::StringMap<AGCLLVMAirBuiltins::AtomicFunction,llvm::MallocAllocator>::~StringMap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        v8 = *(*a1 + v6);
        if (v8 != -8 && v8 != 0)
        {
          llvm::deallocate_buffer(*v8, v8, *v8 + 33);
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

llvm::Value *AGCLLVMAirBuiltins::buildUnpackSRGB(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 > 4)
  {
    v10 = bswap64(*(a3 + a4 - 5) | (*(a3 + a4 - 1) << 32));
    v11 = v10 >= 0x7634663136000000;
    v12 = v10 > 0x7634663136000000;
    v13 = !v11;
    v14 = v12 - v13;
    v5 = (a1 + 8);
    v15 = *(a1 + 320);
    v37 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a2, v15, v36);
    if (v14)
    {
      v9 = 168;
    }

    else
    {
      v9 = 152;
    }

    if (v14)
    {
      v8 = 32;
    }

    else
    {
      v8 = 16;
    }
  }

  else
  {
    v5 = (a1 + 8);
    v6 = *(a1 + 320);
    v37 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a2, v6, v36);
    v8 = 32;
    v9 = 168;
  }

  v16 = llvm::UndefValue::get();
  v17 = *(a1 + 464);
  v33 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v34, v5);
  v35 = *(a1 + 104);
  v37 = 257;
  v18 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), Cast, v18, v36);
  v20 = (*(*v17 + 96))(v17, &v33, Element, 8, 0, v8);
  if (v34)
  {
    llvm::MetadataTracking::untrack();
  }

  v37 = 257;
  v21 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v16, v20, v21, v36);
  for (i = 0; i != 3; ++i)
  {
    v37 = 257;
    v24 = llvm::ConstantInt::get();
    v25 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), Cast, v24, v36);
    v26 = *(a1 + 464);
    v30 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v31, v5);
    v32 = *(a1 + 104);
    v27 = (*(*v26 + 152))(v26, &v30, v25, 0, *(a1 + v9));
    if (v31)
    {
      llvm::MetadataTracking::untrack();
    }

    v37 = 257;
    v28 = llvm::ConstantInt::get();
    result = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v27, v28, v36);
    InsertElement = result;
  }

  return result;
}

uint64_t AGCLLVMAirBuiltins::buildPackSRGB(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v4 = llvm::UndefValue::get();
  v26 = 257;
  v5 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((this + 8), a2, v5, v25);
  v7 = *(this + 58);
  v22 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v23, (this + 8));
  v24 = *(this + 26);
  v8 = (*(*v7 + 88))(v7, &v22, Element, 8, 0, 1);
  v26 = 257;
  v9 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((this + 8), v4, v8, v9, v25);
  if (v23)
  {
    llvm::MetadataTracking::untrack();
  }

  for (i = 0; i != 3; ++i)
  {
    v26 = 257;
    v12 = llvm::ConstantInt::get();
    v13 = llvm::IRBuilderBase::CreateExtractElement((this + 8), a2, v12, v25);
    v14 = *(this + 58);
    v19 = *(this + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v20, (this + 8));
    v21 = *(this + 26);
    v15 = (*(*v14 + 144))(v14, &v19, v13, 0, *(this + 23));
    if (v20)
    {
      llvm::MetadataTracking::untrack();
    }

    v26 = 257;
    v16 = llvm::ConstantInt::get();
    InsertElement = llvm::IRBuilderBase::CreateInsertElement((this + 8), InsertElement, v15, v16, v25);
  }

  v17 = *(this + 25);
  v26 = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 49, InsertElement, v17, v25);
}

llvm::Value *AGCLLVMAirBuiltins::buildUnpackNorm(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = a3[1];
  if (v5 == 16)
  {
    v10 = *(a1 + 240);
    v21 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a2, v10, v20);
    v12 = *(a1 + 464);
    v14 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (a1 + 8));
    v16 = *(a1 + 104);
    v9 = (*(*v12 + 96))(v12, &v14, Cast, 16, a3[3], 32);
    if (v15)
    {
LABEL_4:
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    if (v5 != 8)
    {
      return 0;
    }

    v6 = *(a1 + 320);
    v21 = 257;
    v7 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a2, v6, v20);
    v8 = *(a1 + 464);
    v17 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v18, (a1 + 8));
    v19 = *(a1 + 104);
    v9 = (*(*v8 + 96))(v8, &v17, v7, 8, a3[3], 32);
    if (v18)
    {
      goto LABEL_4;
    }
  }

  if (*a3 == 16)
  {
    return AGCLLVMBuilder::truncateToSmall(a1, v9, *(a1 + 152));
  }

  return v9;
}

uint64_t AGCLLVMAirBuiltins::buildPackNorm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 1);
  if (v6 == 16)
  {
    v11 = *(a1 + 464);
    v14 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (a1 + 8));
    v16 = *(a1 + 104);
    v8 = (*(*v11 + 88))(v11, &v14, a2, 16, *(a3 + 3), 1);
    if (!v15)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (v6 == 8)
  {
    v7 = *(a1 + 464);
    v17 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v18, (a1 + 8));
    v19 = *(a1 + 104);
    v8 = (*(*v7 + 88))(v7, &v17, a2, 8, *(a3 + 3), 1);
    if (!v18)
    {
LABEL_5:
      v9 = *(a1 + 200);
      v13 = 257;
      return llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v8, v9, v12);
    }

LABEL_4:
    llvm::MetadataTracking::untrack();
    goto LABEL_5;
  }

  return 0;
}

uint64_t AGCLLVMAirBuiltins::buildTrunc(llvm::Type **this, llvm::Type **a2)
{
  v4 = *a2;
  llvm::ConstantFP::get();
  AGCLLVMTargetBuilder::CreateFabs(this, a2);
  v10 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v5 = this[25];
  v10 = 257;
  FPToSI = llvm::IRBuilderBase::CreateFPToSI((this + 1), a2, v5, v9);
  v8[16] = 257;
  llvm::IRBuilderBase::CreateSIToFP((this + 1), FPToSI, v4, v8);
  v10 = 257;
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t llvm::IRBuilderBase::CreateSIToFP(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Type *a3, const llvm::Twine *a4)
{
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast();
  }

  return llvm::IRBuilderBase::CreateCast(this, 44, a2, a3, a4);
}

uint64_t AGCLLVMAirBuiltins::buildRound(llvm::ConstantFP **this, llvm::Value *a2)
{
  AGCLLVMTargetBuilder::CreateFabs(this, a2);
  llvm::ConstantFP::get();
  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::ConstantFP::get();
  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::ConstantFP::get();
  llvm::ConstantFP::get();
  llvm::ConstantFP::get();
  llvm::IRBuilderBase::CreateSelect();
  v11 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v13 = 257;
  FAdd = llvm::IRBuilderBase::CreateFAdd((this + 1), a2, Select, v12);
  v6 = this[25];
  v13 = 257;
  FPToSI = llvm::IRBuilderBase::CreateFPToSI((this + 1), FAdd, v6, v12);
  v8 = this[21];
  v11 = 257;
  llvm::IRBuilderBase::CreateSIToFP((this + 1), FPToSI, v8, &v10);
  llvm::ConstantFP::get();
  v13 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v13 = 257;
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t AGCLLVMAirBuiltins::buildRNE(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v15 = a2;
  v4 = *(this + 58);
  v5 = *(v4 + 1376);
  if (v5)
  {
    v6 = strlen(*(v4 + 1376));
  }

  else
  {
    v6 = 0;
  }

  v7 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this, v5, v6, *(this + 25), *(this + 21));
  AGCLLVMTargetBuilder::CreateFabs(this, a2);
  llvm::ConstantFP::get();
  llvm::IRBuilderBase::CreateFCmpHelper();
  v14 = 257;
  v8 = llvm::IRBuilderBase::CreateCall(this + 1, *(v7 + 24), v7, &v15, 1, v13);
  v9 = *(this + 21);
  v12 = 257;
  llvm::IRBuilderBase::CreateSIToFP((this + 8), v8, v9, v11);
  v14 = 257;
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t AGCLLVMAirBuiltins::buildPow(llvm::ConstantFP **this, llvm::Value *a2, llvm::Value *a3)
{
  AGCLLVMTargetBuilder::CreateFabs(this, a3);
  llvm::ConstantFP::get();
  v21 = 257;
  FCmpHelper = llvm::IRBuilderBase::CreateFCmpHelper();
  v7 = this[25];
  v21 = 257;
  FPToSI = llvm::IRBuilderBase::CreateFPToSI((this + 1), a3, v7, v20);
  v9 = llvm::ConstantInt::get();
  v21 = 257;
  v10 = llvm::IRBuilderBase::CreateAnd((this + 1), FPToSI, v9, v20);
  v11 = llvm::ConstantInt::get();
  v19 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp(this + 1, 32, v10, v11, &v18);
  v21 = 257;
  v13 = llvm::IRBuilderBase::CreateAnd((this + 1), ICmp, FCmpHelper, v20);
  llvm::ConstantFP::get();
  v21 = 257;
  v14 = llvm::IRBuilderBase::CreateFCmpHelper();
  v21 = 257;
  llvm::IRBuilderBase::CreateAnd((this + 1), v14, v13, v20);
  Fabs = AGCLLVMTargetBuilder::CreateFabs(this, a2);
  v16 = AGCLLVMAirBuiltins::buildPowr(this, Fabs, a3);
  v21 = 257;
  llvm::IRBuilderBase::CreateFNeg((this + 1), v16, v20);
  v19 = 257;
  return llvm::IRBuilderBase::CreateSelect();
}

llvm::Instruction *AGCLLVMAirBuiltins::buildPowr(AGCLLVMAirBuiltins *this, llvm::Value *a2, llvm::Value *a3)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v6 = *(this + 19);
  if (*a2 == v6)
  {
    v8 = "llvm.agx.powr.f16";
LABEL_6:
    v7 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(this, v8, 17, v6, v6, v6);
    goto LABEL_7;
  }

  v6 = *(this + 21);
  if (*a2 == v6)
  {
    v8 = "llvm.agx.powr.f32";
    goto LABEL_6;
  }

  v7 = 0;
LABEL_7:
  v11[0] = a2;
  v11[1] = a3;
  v10[16] = 257;
  return llvm::IRBuilderBase::CreateCall(this + 1, *(v7 + 24), v7, v11, 2, v10);
}

uint64_t AGCLLVMAirBuiltins::buildCeil(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v7 = 257;
  FNeg = llvm::IRBuilderBase::CreateFNeg(this + 8, a2, v6);
  Floor = AGCLLVMTargetBuilder::CreateFloor(this, FNeg);
  v7 = 257;
  return llvm::IRBuilderBase::CreateFNeg(this + 8, Floor, v6);
}

uint64_t AGCLLVMAirBuiltins::buildTan(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v4 = (*(*this + 24))(this, a2, 0);
  v5 = (*(*this + 24))(this, a2, 1);
  v8 = 257;
  return llvm::IRBuilderBase::CreateFDiv(this + 8, v4, v5, v7);
}

uint64_t AGCLLVMAirBuiltins::buildArcsin(AGCLLVMAirBuiltins *this, llvm::ConstantFP **a2)
{
  v4 = llvm::ConstantFP::get();
  v5 = llvm::ConstantFP::get();
  v16 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(this + 8, a2, a2, v15);
  v14 = 257;
  FSub = llvm::IRBuilderBase::CreateFSub(this + 8, v4, FMul, v13);
  Sqrt = AGCLLVMTargetBuilder::CreateSqrt(this, FSub);
  v16 = 257;
  FAdd = llvm::IRBuilderBase::CreateFAdd(this + 8, v4, Sqrt, v15);
  v16 = 257;
  FDiv = llvm::IRBuilderBase::CreateFDiv(this + 8, a2, FAdd, v15);
  v11 = (*(*this + 32))(this, FDiv);
  v14 = 257;
  return llvm::IRBuilderBase::CreateFMul(this + 8, v5, v11, v13);
}

uint64_t AGCLLVMAirBuiltins::buildArccos(AGCLLVMAirBuiltins *this, llvm::ConstantFP **a2)
{
  llvm::ConstantFP::get();
  v4 = llvm::ConstantFP::get();
  v5 = llvm::ConstantFP::get();
  v18 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul(this + 8, a2, a2, v17);
  v16 = 257;
  FSub = llvm::IRBuilderBase::CreateFSub(this + 8, v4, FMul, v15);
  Sqrt = AGCLLVMTargetBuilder::CreateSqrt(this, FSub);
  v18 = 257;
  FAdd = llvm::IRBuilderBase::CreateFAdd(this + 8, v4, a2, v17);
  v18 = 257;
  FDiv = llvm::IRBuilderBase::CreateFDiv(this + 8, v4, Sqrt, v17);
  v18 = 257;
  llvm::IRBuilderBase::CreateFMul(this + 8, FDiv, FAdd, v17);
  v18 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v18 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v18 = 257;
  v12 = llvm::IRBuilderBase::CreateFDiv(this + 8, v4, Select, v17);
  v13 = (*(*this + 32))(this, v12);
  v16 = 257;
  return llvm::IRBuilderBase::CreateFMul(this + 8, v5, v13, v15);
}

void AGCLLVMAirBuiltins::buildArctan(AGCLLVMAirBuiltins *this, llvm::Value *a2)
{
  v4 = *a2;
  v6 = 1336;
  if (*a2 == *(this + 21))
  {
    v6 = 1328;
  }

  v5 = *(this + 58);
  v7 = *(v5 + v6);
  if (v7)
  {
    v8 = strlen(*(v5 + v6));
  }

  else
  {
    v8 = 0;
  }

  AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this, v7, v8, v4, v4);
  llvm::ConstantFP::get();
  llvm::ConstantFP::get();
  AGCLLVMTargetBuilder::CreateFabs(this, a2);
  llvm::BasicBlock::splitBasicBlock();
  operator new();
}

llvm::Instruction *AGCLLVMAirBuiltins::buildSinCos(unsigned int **this, llvm::ConstantFP **a2, int a3)
{
  v6 = *a2;
  v7 = llvm::ConstantFP::get();
  v21 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul((this + 1), a2, v7, v20);
  if (a3)
  {
    v9 = llvm::ConstantFP::get();
    v21 = 257;
    FMul = llvm::IRBuilderBase::CreateFAdd((this + 1), FMul, v9, v20);
  }

  Floor = AGCLLVMTargetBuilder::CreateFloor(this, FMul);
  v21 = 257;
  FSub = llvm::IRBuilderBase::CreateFSub((this + 1), FMul, Floor, v20);
  v12 = llvm::ConstantFP::get();
  v21 = 257;
  v19 = llvm::IRBuilderBase::CreateFMul((this + 1), FSub, v12, v20);
  v14 = 336;
  if (v6 == this[19])
  {
    v14 = 338;
  }

  v13 = this[58];
  v15 = *&v13[v14];
  if (v15)
  {
    v16 = strlen(*&v13[v14]);
  }

  else
  {
    v16 = 0;
  }

  v17 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this, v15, v16, v6, v6);
  v21 = 257;
  return llvm::IRBuilderBase::CreateCall(this + 1, *(v17 + 24), v17, &v19, 1, v20);
}

void AGCLLVMAirBuiltinsGen2::buildArcsin(AGCLLVMAirBuiltinsGen2 *this, llvm::Value *a2)
{
  AGCLLVMTargetBuilder::CreateFabs(this, a2);
  llvm::ConstantFP::get();
  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::BasicBlock::splitBasicBlock();
  operator new();
}

llvm::Instruction *AGCLLVMAirBuiltinsGen2::buildInverseTrigPolynomialWithSquare(llvm::ConstantFP **this, llvm::Value *a2)
{
  v4 = llvm::ConstantFP::get();
  v5 = 4u;
  do
  {
    v6 = llvm::ConstantFP::get();
    result = AGCLLVMBuilder::buildFma(this, v4, a2, v6);
    v4 = result;
    v5 += 4;
  }

  while (v5 != 28);
  return result;
}

void AGCLLVMAirBuiltinsGen2::buildArccos(AGCLLVMAirBuiltinsGen2 *this, llvm::Value *a2)
{
  AGCLLVMTargetBuilder::CreateFabs(this, a2);
  llvm::ConstantFP::get();
  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::BasicBlock::splitBasicBlock();
  operator new();
}

llvm::Instruction *AGCLLVMTargetBuilder::CreateRsqrt(AGCLLVMTargetBuilder *this, llvm::Value *a2)
{
  v4 = *(this + 58);
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v5 = *(this + 26);
  v10 = v5;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v5 = v10;
  }

  v13 = v5;
  v6 = AGCLLVMTargetLowerer::CallFPIntrinsic(v4, &v11, a2, "llvm.rsqrt");
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t AGCLLVMAirBuiltinsGen2::buildArctan(llvm::ConstantFP **this, llvm::Value *a2)
{
  v4 = llvm::ConstantFP::get();
  AGCLLVMTargetBuilder::CreateFabs(this, a2);
  llvm::IRBuilderBase::CreateFCmpHelper();
  v14 = 257;
  llvm::IRBuilderBase::CreateFDiv((this + 1), v4, a2, v13);
  Select = llvm::IRBuilderBase::CreateSelect();
  v14 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul((this + 1), Select, Select, v13);
  v7 = llvm::ConstantFP::get();
  v8 = 4u;
  do
  {
    v9 = llvm::ConstantFP::get();
    v7 = AGCLLVMBuilder::buildFma(this, v7, FMul, v9);
    v8 += 4;
  }

  while (v8 != 32);
  v14 = 257;
  v10 = llvm::IRBuilderBase::CreateFMul((this + 1), Select, v7, v13);
  llvm::ConstantFP::get();
  v14 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::ConstantFP::get();
  llvm::ConstantFP::get();
  v14 = 257;
  v11 = llvm::IRBuilderBase::CreateSelect();
  v14 = 257;
  llvm::IRBuilderBase::CreateFSub((this + 1), v11, v10, v13);
  return llvm::IRBuilderBase::CreateSelect();
}

void AGCLLVMAirBuiltinsGen2::~AGCLLVMAirBuiltinsGen2(AGCLLVMAirBuiltinsGen2 *this)
{
  AGCLLVMAirBuiltins::~AGCLLVMAirBuiltins(this);

  JUMPOUT(0x20F331DC0);
}

uint64_t AGCLLVMAirBuiltinsGen3::buildSimdGroupIndexInThreadgroup(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v5 = *(a1 + 944);
  if (v5)
  {
    *(v5 + 16) = 1;
  }

  if (a4 == 3)
  {
    v6 = bswap32(*a3 | (*(a3 + 2) << 16));
    v7 = v6 >= 0x69333200;
    v8 = v6 > 0x69333200;
    v9 = !v7;
    v10 = v8 == v9;
    v11 = 192;
    if (v10)
    {
      v11 = 200;
    }
  }

  else
  {
    v11 = 192;
  }

  v12 = *(a1 + v11);
  v13 = (*(**(a1 + 464) + 688))(*(a1 + 464), a2);
  v16 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v17, (a1 + 8));
  v18 = *(a1 + 104);
  v14 = (*(*v13 + 1632))(v13, &v16, v12);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  return v14;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildThreadIndexInSimdGroup(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v5 = *(a1 + 944);
  if (v5)
  {
    *(v5 + 16) = 1;
  }

  if (a4 == 3)
  {
    v6 = bswap32(*a3 | (*(a3 + 2) << 16));
    v7 = v6 >= 0x69333200;
    v8 = v6 > 0x69333200;
    v9 = !v7;
    v10 = v8 == v9;
    v11 = 192;
    if (v10)
    {
      v11 = 200;
    }
  }

  else
  {
    v11 = 192;
  }

  v12 = *(a1 + v11);
  v13 = (*(**(a1 + 464) + 688))(*(a1 + 464), a2);
  v16 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v17, (a1 + 8));
  v18 = *(a1 + 104);
  v14 = (*(*v13 + 1624))(v13, &v16, v12);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  return v14;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildThreadsPerSimdgroup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 944);
  if (v4)
  {
    *(v4 + 16) = 1;
  }

  return llvm::ConstantInt::get();
}

uint64_t AGCLLVMAirBuiltinsGen3::buildQuadElement(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v5 = *(a1 + 944);
  if (v5)
  {
    *(v5 + 16) = 1;
  }

  if (a4 == 3)
  {
    v6 = bswap32(*a3 | (*(a3 + 2) << 16));
    v7 = v6 >= 0x69333200;
    v8 = v6 > 0x69333200;
    v9 = !v7;
    v10 = v8 == v9;
    v11 = 192;
    if (v10)
    {
      v11 = 200;
    }
  }

  else
  {
    v11 = 192;
  }

  v12 = *(a1 + v11);
  v13 = (*(**(a1 + 464) + 688))(*(a1 + 464), a2);
  v16 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v17, (a1 + 8));
  v18 = *(a1 + 104);
  v14 = AGCLLVMGen3TargetLowerer::buildQuadElement(v13, &v16, v12);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  return v14;
}

llvm::Instruction *AGCLLVMAirBuiltinsGen3::buildSimdBarrier(uint64_t a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 944);
  if (v4)
  {
    *(v4 + 16) = 1;
  }

  v5 = *(a1 + 464);
  v6 = *(v5 + 1048);
  if (v6)
  {
    v7 = strlen(*(v5 + 1048));
  }

  else
  {
    v7 = 0;
  }

  v8 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v6, v7, *(a1 + 144), *(a1 + 192), *(a1 + 192));
  v9 = *(a2 + 8);
  if (v9)
  {
    v10 = *(a1 + 192);
    v17 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v9, v10, v16);
  }

  else
  {
    Cast = llvm::ConstantInt::get();
  }

  v14 = Cast;
  v18[0] = AGCLLVMAirBuiltinsGen3::remapAIRMemoryFlags(a1, *a2, v12, v13);
  v18[1] = v14;
  v17 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v8 + 24), v8, v18, 2, v16);
}

uint64_t AGCLLVMAirBuiltinsGen3::remapAIRMemoryFlags(llvm::ConstantInt **this, llvm::Value *a2, uint64_t a3, BOOL a4)
{
  v6 = llvm::ConstantInt::get();
  v17 = 257;
  v7 = llvm::IRBuilderBase::CreateAnd((this + 1), a2, v6, v16);
  v8 = llvm::ConstantInt::get();
  v15[16] = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 1), v7, v8, v15);
  v10 = llvm::ConstantInt::get();
  v17 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((this + 1), a2, v10, v16);
  v17 = 257;
  v12 = llvm::IRBuilderBase::CreateOr((this + 1), v11, LShr, v16);
  v13 = this[24];
  v17 = 257;
  return llvm::IRBuilderBase::CreateCast((this + 1), 38, v12, v13, v16);
}

llvm::Instruction *AGCLLVMAirBuiltinsGen3::buildWGBarrier(uint64_t a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 944);
  if (v4)
  {
    *(v4 + *(*v4 - 24) + 2224) = 1;
  }

  v5 = *(a1 + 464);
  v6 = *(v5 + 1032);
  if (v6)
  {
    v7 = strlen(*(v5 + 1032));
  }

  else
  {
    v7 = 0;
  }

  v8 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v6, v7, *(a1 + 144), *(a1 + 192), *(a1 + 192));
  v9 = *(a2 + 8);
  if (v9)
  {
    v10 = *(a1 + 192);
    v17 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v9, v10, v16);
  }

  else
  {
    Cast = llvm::ConstantInt::get();
  }

  v14 = Cast;
  v18[0] = AGCLLVMAirBuiltinsGen3::remapAIRMemoryFlags(a1, *a2, v12, v13);
  v18[1] = v14;
  v17 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v8 + 24), v8, v18, 2, v16);
}

uint64_t AGCLLVMAirBuiltinsGen3::buildSimdBroadcastFirstActiveThread(uint64_t a1, llvm::Instruction *a2)
{
  v4 = *(a1 + 944);
  if (v4)
  {
    *(v4 + 17) = 1;
  }

  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v5 = *(a2 - 4 * (*(a2 + 5) & 0x7FFFFFF));
  v6 = (*(**(a1 + 464) + 688))(*(a1 + 464));
  v12 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v13, (a1 + 8));
  v7 = *(a1 + 104);
  v14 = v7;
  v24 = v12;
  v25 = v13;
  if (v13)
  {
    llvm::MetadataTracking::track();
    v7 = v14;
  }

  v26 = v7;
  v8 = (*(*v6 + 1624))(v6, &v24, *(v6 + 192));
  if (v25)
  {
    llvm::MetadataTracking::untrack();
  }

  v21 = *(v6 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v22, (v6 + 8));
  v23 = *(v6 + 104);
  v9 = AGCLLVMGen3TargetLowerer::buildSimdGroupScratchMemoryPtr(v6, &v21, v8);
  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  v18 = *(v6 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v19, (v6 + 8));
  v20 = *(v6 + 104);
  ActiveThreadIndex = AGCLLVMGen3TargetLowerer::buildEmulatedFirstActiveThreadIndex(v6, &v18, v8, v9);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  v15 = v12;
  v16 = v13;
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v17 = v14;
  AGCLLVMGen3TargetLowerer::buildEmulatedSimdShuffle(v6, &v15, v5, ActiveThreadIndex, 0, *(v6 + 968));
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::Value::replaceAllUsesWith();
  return llvm::Instruction::eraseFromParent(a2);
}

uint64_t AGCLLVMAirBuiltinsGen3::buildSimdIsFirstActiveThread(uint64_t a1, llvm::Instruction *a2)
{
  v4 = *(a1 + 944);
  if (v4)
  {
    *(v4 + 17) = 1;
  }

  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v5 = (*(**(a1 + 464) + 688))(*(a1 + 464));
  v11 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (a1 + 8));
  v6 = *(a1 + 104);
  v13 = v6;
  v22 = v11;
  v23 = v12;
  if (v12)
  {
    llvm::MetadataTracking::track();
    v6 = v13;
  }

  v24 = v6;
  v7 = (*(*v5 + 1624))(v5, &v22, *(v5 + 192));
  if (v23)
  {
    llvm::MetadataTracking::untrack();
  }

  v19 = *(v5 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v20, (v5 + 8));
  v21 = *(v5 + 104);
  v8 = AGCLLVMGen3TargetLowerer::buildSimdGroupScratchMemoryPtr(v5, &v19, v7);
  if (v20)
  {
    llvm::MetadataTracking::untrack();
  }

  v16 = *(v5 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v17, (v5 + 8));
  v18 = *(v5 + 104);
  ActiveThreadIndex = AGCLLVMGen3TargetLowerer::buildEmulatedFirstActiveThreadIndex(v5, &v16, v7, v8);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  v15 = 257;
  llvm::IRBuilderBase::CreateICmp((v5 + 8), 32, v7, ActiveThreadIndex, v14);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::Value::replaceAllUsesWith();
  return llvm::Instruction::eraseFromParent(a2);
}

uint64_t AGCLLVMAirBuiltinsGen3::buildSimdReduce(uint64_t a1, llvm::Instruction *a2)
{
  v4 = *(a1 + 944);
  if (v4)
  {
    *(v4 + 17) = 1;
  }

  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v5 = *(a2 - 4);
  if (!v5 || *(v5 + 16) || *(v5 + 24) != *(a2 + 9))
  {
    v5 = 0;
  }

  v6 = *(a2 - 4 * (*(a2 + 5) & 0x7FFFFFF));
  Name = llvm::Value::getName(v5);
  v79[0] = 0;
  v79[1] = 0;
  v77 = 0;
  v78 = 0;
  Prefix = AGCLLVMBuilder::findPrefix(Name, v8, v79, &v77, "air.", 4uLL);
  AGCLLVMAirBuiltinsGen3::initializeReduceMap(Prefix);
  Key = llvm::StringMapImpl::FindKey();
  v11 = Key;
  if (Key == -1)
  {
    v11 = dword_27C8D9780;
  }

  v12 = *(AGCLLVMAirBuiltinsGen3::initializeReduceMap(void)::reduce_map + 8 * v11);
  v13 = v78 >= 2 && *v77 == 11891;
  v14 = (*(**(a1 + 464) + 688))(*(a1 + 464));
  v74 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v75, (a1 + 8));
  v15 = *(a1 + 104);
  v76 = v15;
  v16 = *(v12 + 8);
  if (*(v12 + 12) == 1)
  {
    v80 = v74;
    v81 = v75;
    if (v75)
    {
      llvm::MetadataTracking::track();
      v15 = v76;
      v82 = v76;
      v106 = v80;
      v107 = v81;
      if (v81)
      {
        llvm::MetadataTracking::track();
        v15 = v82;
      }
    }

    else
    {
      v82 = v15;
      v106 = v80;
      v107 = 0;
    }

    v108 = v15;
    AGCLLVMTargetLowerer::SetIP(v14, &v106);
    if (v107)
    {
      llvm::MetadataTracking::untrack();
    }

    v17 = *v6;
    if ((*(*v6 + 2) & 0xFE) != 0x12 || **(v17 + 2) == *(v14 + 200))
    {
      v103 = *(v14 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v104, (v14 + 8));
      v105 = *(v14 + 104);
      AGCLLVMGen3TargetLowerer::buildEmulatedSimdReduce(v14, &v103, v6, v16, v13);
      if (v104)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    else
    {
      v18 = *(v17 + 8);
      llvm::FixedVectorType::get();
      InsertElement = llvm::UndefValue::get();
      ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v17);
      if (ScalarSizeInBits == 8)
      {
        v22 = 200;
        if (v18 == 2)
        {
          v22 = 192;
        }

        v23 = *(v14 + v22);
        v25 = llvm::FixedVectorType::get();
        if (v18 == 3)
        {
          v6 = AGCLLVMBuilder::extendVector(v14, v6, 4, v24);
        }

        v100 = *(v14 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v101, (v14 + 8));
        v102 = *(v14 + 104);
        v99 = 257;
        Cast = llvm::IRBuilderBase::CreateCast(v14 + 8, 49, v6, v23, &v96);
        v27 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdReduce(v14, &v100, Cast, v16, v13);
        if (v101)
        {
          llvm::MetadataTracking::untrack();
        }

        v99 = 257;
        v28 = llvm::IRBuilderBase::CreateCast(v14 + 8, 49, v27, v25, &v96);
        if (v18)
        {
          v29 = v28;
          for (i = 0; i != v18; ++i)
          {
            v99 = 257;
            v31 = llvm::ConstantInt::get();
            Element = llvm::IRBuilderBase::CreateExtractElement((v14 + 8), v29, v31, &v96);
            v95 = 257;
            v33 = llvm::ConstantInt::get();
            InsertElement = llvm::IRBuilderBase::CreateInsertElement((v14 + 8), InsertElement, Element, v33, v94);
          }
        }
      }

      else if (v18 != 3 && ScalarSizeInBits == 16)
      {
        v63 = 248;
        if (v18 == 2)
        {
          v63 = 200;
        }

        v64 = *(v14 + v63);
        v65 = llvm::FixedVectorType::get();
        v91 = *(v14 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v92, (v14 + 8));
        v93 = *(v14 + 104);
        v99 = 257;
        v66 = llvm::IRBuilderBase::CreateCast(v14 + 8, 49, v6, v64, &v96);
        v67 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdReduce(v14, &v91, v66, v16, v13);
        if (v92)
        {
          llvm::MetadataTracking::untrack();
        }

        v99 = 257;
        v68 = llvm::IRBuilderBase::CreateCast(v14 + 8, 49, v67, v65, &v96);
        if (v18)
        {
          v69 = v68;
          for (j = 0; j != v18; ++j)
          {
            v99 = 257;
            v71 = llvm::ConstantInt::get();
            v72 = llvm::IRBuilderBase::CreateExtractElement((v14 + 8), v69, v71, &v96);
            v95 = 257;
            v73 = llvm::ConstantInt::get();
            InsertElement = llvm::IRBuilderBase::CreateInsertElement((v14 + 8), InsertElement, v72, v73, v94);
          }
        }
      }

      else if (v18 == 3 && ScalarSizeInBits == 16)
      {
        v37 = AGCLLVMBuilder::extendVector(v14, v6, 4, v21);
        v38 = *(v14 + 248);
        v99 = 257;
        v39 = llvm::IRBuilderBase::CreateCast(v14 + 8, 49, v37, v38, &v96);
        v99 = 257;
        v40 = llvm::ConstantInt::get();
        v41 = llvm::IRBuilderBase::CreateExtractElement((v14 + 8), v39, v40, &v96);
        v88 = *(v14 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v89, (v14 + 8));
        v90 = *(v14 + 104);
        v42 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdReduce(v14, &v88, v41, v16, v13);
        if (v89)
        {
          llvm::MetadataTracking::untrack();
        }

        v99 = 257;
        v43 = llvm::ConstantInt::get();
        v44 = llvm::IRBuilderBase::CreateExtractElement((v14 + 8), v39, v43, &v96);
        v45 = *(v14 + 240);
        v95 = 257;
        v46 = llvm::IRBuilderBase::CreateCast(v14 + 8, 49, v44, v45, v94);
        v87 = 257;
        v47 = llvm::ConstantInt::get();
        v48 = llvm::IRBuilderBase::CreateExtractElement((v14 + 8), v46, v47, v86);
        v83 = *(v14 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v84, (v14 + 8));
        v85 = *(v14 + 104);
        v49 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdReduce(v14, &v83, v48, v16, v13);
        if (v84)
        {
          llvm::MetadataTracking::untrack();
        }

        v50 = *(v14 + 240);
        v99 = 257;
        v51 = llvm::IRBuilderBase::CreateCast(v14 + 8, 49, v42, v50, &v96);
        v95 = 257;
        v52 = llvm::ConstantInt::get();
        v53 = llvm::IRBuilderBase::CreateExtractElement((v14 + 8), v51, v52, v94);
        v54 = *(v14 + 240);
        v99 = 257;
        v55 = llvm::IRBuilderBase::CreateCast(v14 + 8, 49, v42, v54, &v96);
        v95 = 257;
        v56 = llvm::ConstantInt::get();
        v57 = llvm::IRBuilderBase::CreateExtractElement((v14 + 8), v55, v56, v94);
        v99 = 257;
        v58 = llvm::ConstantInt::get();
        v59 = llvm::IRBuilderBase::CreateInsertElement((v14 + 8), InsertElement, v53, v58, &v96);
        v99 = 257;
        v60 = llvm::ConstantInt::get();
        v61 = llvm::IRBuilderBase::CreateInsertElement((v14 + 8), v59, v57, v60, &v96);
        v99 = 257;
        v62 = llvm::ConstantInt::get();
        llvm::IRBuilderBase::CreateInsertElement((v14 + 8), v61, v49, v62, &v96);
      }
    }

    if (v81)
    {
LABEL_39:
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v96 = v74;
    v97 = v75;
    if (v75)
    {
      llvm::MetadataTracking::track();
      v15 = v76;
    }

    v98 = v15;
    AGCLLVMGen3TargetLowerer::buildEmulatedSimdReduce(v14, &v96, v6, v16, v13);
    if (v97)
    {
      goto LABEL_39;
    }
  }

  if (v75)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::Value::replaceAllUsesWith();
  return llvm::Instruction::eraseFromParent(a2);
}

void AGCLLVMAirBuiltinsGen3::initializeReduceMap(AGCLLVMAirBuiltinsGen3 *this)
{
  {
    AGCLLVMAirBuiltinsGen3::initializeReduceMap(void)::reduce_map = 0;
    *&dword_27C8D9780 = 0;
    qword_27C8D9788 = 0x1000000000;
    __cxa_atexit(llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::~StringMap, &AGCLLVMAirBuiltinsGen3::initializeReduceMap(void)::reduce_map, &dword_20E4E1000);
  }

  if (atomic_load_explicit(&AGCLLVMAirBuiltinsGen3::initializeReduceMap(void)::flag, memory_order_acquire) != -1)
  {
    v3 = &v1;
    v2 = &v3;
    std::__call_once(&AGCLLVMAirBuiltinsGen3::initializeReduceMap(void)::flag, &v2, std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMAirBuiltinsGen3::initializeReduceMap(void)::$_0 &&>>);
  }
}

uint64_t *std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMAirBuiltinsGen3::initializeReduceMap(void)::$_0 &&>>()
{
  v0 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("quad_and", 8uLL);
  *(v0 + 8) = 0;
  *(v0 + 12) = 1;
  v1 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("quad_or", 7uLL);
  *(v1 + 8) = 1;
  *(v1 + 12) = 1;
  v2 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("quad_xor", 8uLL);
  *(v2 + 8) = 2;
  *(v2 + 12) = 1;
  v3 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("quad_product", 0xCuLL);
  *(v3 + 8) = 3;
  *(v3 + 12) = 0;
  v4 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("quad_sum", 8uLL);
  *(v4 + 8) = 4;
  *(v4 + 12) = 0;
  v5 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("quad_max", 8uLL);
  *(v5 + 8) = 5;
  *(v5 + 12) = 0;
  v6 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("quad_min", 8uLL);
  *(v6 + 8) = 6;
  *(v6 + 12) = 0;
  v7 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("quad_prefix_inclusive_product", 0x1DuLL);
  *(v7 + 8) = 7;
  *(v7 + 12) = 0;
  v8 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("quad_prefix_inclusive_sum", 0x19uLL);
  *(v8 + 8) = 8;
  *(v8 + 12) = 0;
  v9 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("quad_prefix_exclusive_product", 0x1DuLL);
  *(v9 + 8) = 9;
  *(v9 + 12) = 0;
  v10 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("quad_prefix_exclusive_sum", 0x19uLL);
  *(v10 + 8) = 10;
  *(v10 + 12) = 0;
  v11 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("quad_all", 8uLL);
  *(v11 + 8) = 0;
  *(v11 + 12) = 0;
  v12 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("quad_any", 8uLL);
  *(v12 + 8) = 1;
  *(v12 + 12) = 0;
  v13 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("simd_and", 8uLL);
  *(v13 + 8) = 0;
  *(v13 + 12) = 1;
  v14 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("simd_or", 7uLL);
  *(v14 + 8) = 1;
  *(v14 + 12) = 1;
  v15 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("simd_xor", 8uLL);
  *(v15 + 8) = 2;
  *(v15 + 12) = 1;
  v16 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("simd_product", 0xCuLL);
  *(v16 + 8) = 3;
  *(v16 + 12) = 0;
  v17 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("simd_sum", 8uLL);
  *(v17 + 8) = 4;
  *(v17 + 12) = 0;
  v18 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("simd_max", 8uLL);
  *(v18 + 8) = 5;
  *(v18 + 12) = 0;
  v19 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("simd_min", 8uLL);
  *(v19 + 8) = 6;
  *(v19 + 12) = 0;
  v20 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("simd_prefix_inclusive_product", 0x1DuLL);
  *(v20 + 8) = 7;
  *(v20 + 12) = 0;
  v21 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("simd_prefix_inclusive_sum", 0x19uLL);
  *(v21 + 8) = 8;
  *(v21 + 12) = 0;
  v22 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("simd_prefix_exclusive_product", 0x1DuLL);
  *(v22 + 8) = 9;
  *(v22 + 12) = 0;
  v23 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("simd_prefix_exclusive_sum", 0x19uLL);
  *(v23 + 8) = 10;
  *(v23 + 12) = 0;
  v24 = *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("simd_all", 8uLL);
  *(v24 + 8) = 0;
  *(v24 + 12) = 0;
  result = llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>("simd_any", 8uLL);
  v26 = *result;
  *(v26 + 8) = 1;
  *(v26 + 12) = 0;
  return result;
}

uint64_t *llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::try_emplace<>(const void *a1, size_t a2)
{
  i = (AGCLLVMAirBuiltinsGen3::initializeReduceMap(void)::reduce_map + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_27C8D9788) = qword_27C8D9788 - 1;
  }

  else if (v5)
  {
    while (!v5 || v5 == -8)
    {
      v6 = i[1];
      ++i;
      v5 = v6;
    }

    return i;
  }

  v8 = MEMORY[0x20F330650](a2 + 17, 8);
  v9 = v8;
  v10 = v8 + 16;
  if (a2)
  {
    memcpy((v8 + 16), a1, a2);
  }

  *(v10 + a2) = 0;
  *v9 = a2;
  v9[1] = 0;
  *i = v9;
  ++dword_27C8D9784;
    ;
  }

  return i;
}

uint64_t llvm::StringMap<AGCLLVMAirBuiltinsGen3::ReductionFunction,llvm::MallocAllocator>::~StringMap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        v8 = *(*a1 + v6);
        if (v8 != -8 && v8 != 0)
        {
          llvm::deallocate_buffer(*v8, v8, *v8 + 17);
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildQuadBroadcastFirstActiveThread(uint64_t a1, llvm::Instruction *a2)
{
  v4 = *(a1 + 944);
  if (v4)
  {
    *(v4 + 16) = 1;
  }

  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v5 = *(a2 - 4 * (*(a2 + 5) & 0x7FFFFFF));
  v6 = (*(**(a1 + 464) + 688))(*(a1 + 464));
  v11 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (a1 + 8));
  v7 = *(a1 + 104);
  v13 = v7;
  v20 = v11;
  v21 = v12;
  if (v12)
  {
    llvm::MetadataTracking::track();
    v7 = v13;
  }

  v22 = v7;
  v8 = AGCLLVMGen3TargetLowerer::buildQuadElement(v6, &v20, *(v6 + 192));
  if (v21)
  {
    llvm::MetadataTracking::untrack();
  }

  v17 = v11;
  v18 = v12;
  if (v12)
  {
    llvm::MetadataTracking::track();
  }

  v19 = v13;
  v9 = AGCLLVMGen3TargetLowerer::buildEmulatedQuadReduce(v6, &v17, v8, 6u, 0);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  v14 = *(v6 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (v6 + 8));
  v16 = *(v6 + 104);
  AGCLLVMGen3TargetLowerer::buildQuadBroadcast(v6, &v14, v5, v9);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::Value::replaceAllUsesWith();
  return llvm::Instruction::eraseFromParent(a2);
}

uint64_t AGCLLVMAirBuiltinsGen3::buildQuadIsFirstActiveThread(uint64_t a1, llvm::Instruction *a2)
{
  v4 = *(a1 + 944);
  if (v4)
  {
    *(v4 + 16) = 1;
  }

  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v5 = (*(**(a1 + 464) + 688))(*(a1 + 464));
  v10 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (a1 + 8));
  v6 = *(a1 + 104);
  v12 = v6;
  v18 = v10;
  v19 = v11;
  if (v11)
  {
    llvm::MetadataTracking::track();
    v6 = v12;
  }

  v20 = v6;
  v7 = AGCLLVMGen3TargetLowerer::buildQuadElement(v5, &v18, *(v5 + 192));
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  v15 = v10;
  v16 = v11;
  if (v11)
  {
    llvm::MetadataTracking::track();
  }

  v17 = v12;
  v8 = AGCLLVMGen3TargetLowerer::buildEmulatedQuadReduce(v5, &v15, v7, 6u, 0);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  v14 = 257;
  llvm::IRBuilderBase::CreateICmp((v5 + 8), 32, v7, v8, v13);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::Value::replaceAllUsesWith();
  return llvm::Instruction::eraseFromParent(a2);
}

uint64_t AGCLLVMAirBuiltinsGen3::buildQuadReduce(uint64_t a1, llvm::Instruction *a2)
{
  v4 = *(a1 + 944);
  if (v4)
  {
    *(v4 + 16) = 1;
  }

  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v5 = *(a2 - 4);
  if (!v5 || *(v5 + 16) || *(v5 + 24) != *(a2 + 9))
  {
    v5 = 0;
  }

  v6 = *(a2 - 4 * (*(a2 + 5) & 0x7FFFFFF));
  Name = llvm::Value::getName(v5);
  v23[0] = 0;
  v23[1] = 0;
  v21 = 0;
  v22 = 0;
  Prefix = AGCLLVMBuilder::findPrefix(Name, v8, v23, &v21, "air.", 4uLL);
  AGCLLVMAirBuiltinsGen3::initializeReduceMap(Prefix);
  Key = llvm::StringMapImpl::FindKey();
  v11 = Key;
  if (Key == -1)
  {
    v11 = dword_27C8D9780;
  }

  v12 = *(AGCLLVMAirBuiltinsGen3::initializeReduceMap(void)::reduce_map + 8 * v11);
  v13 = v22 >= 2 && *v21 == 11891;
  v14 = (*(**(a1 + 464) + 688))(*(a1 + 464));
  v18 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v19, (a1 + 8));
  v15 = *(a1 + 104);
  v20 = v15;
  v16 = *(v12 + 8);
  v24 = v18;
  v25 = v19;
  if (v19)
  {
    llvm::MetadataTracking::track();
    v15 = v20;
  }

  v26 = v15;
  AGCLLVMGen3TargetLowerer::buildEmulatedQuadReduce(v14, &v24, v6, v16, v13);
  if (v25)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::Value::replaceAllUsesWith();
  return llvm::Instruction::eraseFromParent(a2);
}

uint64_t AGCLLVMAirBuiltinsGen3::buildQuadActiveThreadsMask(AGCLLVMAirBuiltinsGen3 *this)
{
  v2 = *(this + 118);
  if (v2)
  {
    *(v2 + 16) = 1;
  }

  v3 = (*(**(this + 58) + 688))(*(this + 58));
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v4 = *(this + 26);
  v10 = v4;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v4 = v10;
  }

  v13 = v4;
  v5 = llvm::ConstantInt::get();
  v6 = AGCLLVMGen3TargetLowerer::buildQuadBallot(v3, &v11, v5);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildSimdActiveThreadsMask(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *(a1 + 944);
  if (v7)
  {
    *(v7 + 17) = 1;
  }

  v8 = (*(**(a1 + 464) + 688))(*(a1 + 464), a2);
  v19 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v20, (a1 + 8));
  v9 = *(a1 + 104);
  v21 = v9;
  v15 = v19;
  v16 = v20;
  if (v20)
  {
    llvm::MetadataTracking::track();
    v9 = v21;
  }

  v17 = v9;
  v10 = llvm::ConstantInt::get();
  v11 = AGCLLVMGen3TargetLowerer::buildSimdBallot(v8, &v15, v10);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v20)
  {
    llvm::MetadataTracking::untrack();
  }

  if (a4 > 2 && *(a3 + a4 - 3) == 13929 && *(a3 + a4 - 1) == 52)
  {
    v13 = *(a1 + 208);
    v18 = 257;
    return llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v11, v13, &v15);
  }

  return v11;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildSimdBallot(uint64_t a1, llvm::Value **a2, uint64_t a3, unint64_t a4)
{
  v8 = *(a1 + 944);
  if (v8)
  {
    *(v8 + 17) = 1;
  }

  v9 = (*(**(a1 + 464) + 688))(*(a1 + 464));
  v16 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v17, (a1 + 8));
  v18 = *(a1 + 104);
  v10 = AGCLLVMGen3TargetLowerer::buildSimdBallot(v9, &v16, *a2);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  if (a4 > 2 && *(a3 + a4 - 3) == 13929 && *(a3 + a4 - 1) == 52)
  {
    v12 = *(a1 + 208);
    v15 = 257;
    return llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v10, v12, v14);
  }

  return v10;
}

llvm::Value *AGCLLVMAirBuiltinsGen3::buildSimdShuffleRotateDown(AGCLLVMAirBuiltinsGen3 *this, llvm::Type **a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = (*(**(this + 58) + 688))(*(this + 58));
  v11 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (this + 8));
  v8 = *(this + 26);
  v13 = v8;
  v14 = v11;
  v15 = v12;
  if (v12)
  {
    llvm::MetadataTracking::track();
    v8 = v13;
  }

  v16 = v8;
  v9 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdShuffle(v7, &v14, a2, a3, 5, *(v7 + 968));
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

llvm::Value *AGCLLVMAirBuiltinsGen3::buildSimdShuffleRotateUp(AGCLLVMAirBuiltinsGen3 *this, llvm::Type **a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = (*(**(this + 58) + 688))(*(this + 58));
  v11 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (this + 8));
  v8 = *(this + 26);
  v13 = v8;
  v14 = v11;
  v15 = v12;
  if (v12)
  {
    llvm::MetadataTracking::track();
    v8 = v13;
  }

  v16 = v8;
  v9 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdShuffle(v7, &v14, a2, a3, 4, *(v7 + 968));
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

llvm::Value *AGCLLVMAirBuiltinsGen3::buildSimdShuffleXor(AGCLLVMAirBuiltinsGen3 *this, llvm::Type **a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = (*(**(this + 58) + 688))(*(this + 58));
  v11 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (this + 8));
  v8 = *(this + 26);
  v13 = v8;
  v14 = v11;
  v15 = v12;
  if (v12)
  {
    llvm::MetadataTracking::track();
    v8 = v13;
  }

  v16 = v8;
  v9 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdShuffle(v7, &v14, a2, a3, 3, *(v7 + 968));
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildSimdShuffleDown(AGCLLVMAirBuiltinsGen3 *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = (*(**(this + 58) + 688))(*(this + 58));
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v8 = (*(*v7 + 1664))(v7, &v10, a2, a3);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildSimdShuffleUp(AGCLLVMAirBuiltinsGen3 *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = (*(**(this + 58) + 688))(*(this + 58));
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v8 = (*(*v7 + 1656))(v7, &v10, a2, a3);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

llvm::Value *AGCLLVMAirBuiltinsGen3::buildSimdShuffle(AGCLLVMAirBuiltinsGen3 *this, llvm::Type **a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = (*(**(this + 58) + 688))(*(this + 58));
  v11 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (this + 8));
  v8 = *(this + 26);
  v13 = v8;
  v14 = v11;
  v15 = v12;
  if (v12)
  {
    llvm::MetadataTracking::track();
    v8 = v13;
  }

  v16 = v8;
  v9 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdShuffle(v7, &v14, a2, a3, 0, *(v7 + 968));
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

llvm::Value *AGCLLVMAirBuiltinsGen3::buildSimdBroadcast(AGCLLVMAirBuiltinsGen3 *this, llvm::Type **a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 17) = 1;
  }

  v7 = (*(**(this + 58) + 688))(*(this + 58));
  v11 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (this + 8));
  v8 = *(this + 26);
  v13 = v8;
  v14 = v11;
  v15 = v12;
  if (v12)
  {
    llvm::MetadataTracking::track();
    v8 = v13;
  }

  v16 = v8;
  v9 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdShuffle(v7, &v14, a2, a3, 0, *(v7 + 968));
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildQuadBallot(AGCLLVMAirBuiltinsGen3 *this, llvm::Value *a2)
{
  v4 = *(this + 118);
  if (v4)
  {
    *(v4 + 16) = 1;
  }

  v5 = (*(**(this + 58) + 688))(*(this + 58));
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v10 = *(this + 26);
  v6 = AGCLLVMGen3TargetLowerer::buildQuadBallot(v5, &v8, a2);
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

llvm::Value *AGCLLVMAirBuiltinsGen3::buildQuadShuffleRotateDown(AGCLLVMAirBuiltinsGen3 *this, llvm::Type **a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 16) = 1;
  }

  v7 = (*(**(this + 58) + 688))(*(this + 58));
  v11 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (this + 8));
  v8 = *(this + 26);
  v13 = v8;
  v14 = v11;
  v15 = v12;
  if (v12)
  {
    llvm::MetadataTracking::track();
    v8 = v13;
  }

  v16 = v8;
  v9 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdShuffle(v7, &v14, a2, a3, 5, 4);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

llvm::Value *AGCLLVMAirBuiltinsGen3::buildQuadShuffleRotateUp(AGCLLVMAirBuiltinsGen3 *this, llvm::Type **a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 16) = 1;
  }

  v7 = (*(**(this + 58) + 688))(*(this + 58));
  v11 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (this + 8));
  v8 = *(this + 26);
  v13 = v8;
  v14 = v11;
  v15 = v12;
  if (v12)
  {
    llvm::MetadataTracking::track();
    v8 = v13;
  }

  v16 = v8;
  v9 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdShuffle(v7, &v14, a2, a3, 4, 4);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildQuadShuffleXor(AGCLLVMAirBuiltinsGen3 *this, llvm::Type **a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 16) = 1;
  }

  v7 = (*(**(this + 58) + 688))(*(this + 58));
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v8 = AGCLLVMGen3TargetLowerer::buildQuadShuffleXor(v7, &v10, a2, a3);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildQuadShuffleDown(AGCLLVMAirBuiltinsGen3 *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 16) = 1;
  }

  v7 = (*(**(this + 58) + 688))(*(this + 58));
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v8 = (*(*v7 + 1648))(v7, &v10, a2, a3);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildQuadShuffleUp(AGCLLVMAirBuiltinsGen3 *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 16) = 1;
  }

  v7 = (*(**(this + 58) + 688))(*(this + 58));
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v8 = (*(*v7 + 1640))(v7, &v10, a2, a3);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildQuadShuffle(AGCLLVMAirBuiltinsGen3 *this, llvm::Type **a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 16) = 1;
  }

  v7 = (*(**(this + 58) + 688))(*(this + 58));
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v8 = AGCLLVMGen3TargetLowerer::buildQuadShuffle(v7, &v10, a2, a3);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMAirBuiltinsGen3::buildQuadBroadcast(AGCLLVMAirBuiltinsGen3 *this, llvm::Type **a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    *(v6 + 16) = 1;
  }

  v7 = (*(**(this + 58) + 688))(*(this + 58));
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v8 = AGCLLVMGen3TargetLowerer::buildQuadBroadcast(v7, &v10, a2, a3);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

std::string *AGCLLVMAirBuiltinsGen3::buildAtomic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[3] = *MEMORY[0x277D85DE8];
  if (a4 == 5 && (*a3 == 1668179302 ? (v6 = *(a3 + 4) == 101) : (v6 = 0), v6))
  {
    v8 = *(a1 + 464);
    v9 = *(v8 + 1056);
    if (v9)
    {
      v10 = strlen(*(v8 + 1056));
    }

    else
    {
      v10 = 0;
    }

    v11 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(a1, v9, v10, *(a1 + 144), *(a1 + 192), *(a1 + 192), *(a1 + 192));
    v21[0] = AGCLLVMAirBuiltinsGen3::remapAIRMemoryFlags(a1, *a2, v12, v13);
    v14 = *(a2 + 8);
    v15 = *(a1 + 192);
    v20 = 257;
    v21[1] = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v14, v15, v19);
    v16 = *(a2 + 16);
    v17 = *(a1 + 192);
    v18[16] = 257;
    v21[2] = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v16, v17, v18);
    v20 = 257;
    return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v11 + 24), v11, v21, 3, v19);
  }

  else
  {

    return AGCLLVMAirBuiltins::buildAtomic(a1, a2, a3, a4);
  }
}