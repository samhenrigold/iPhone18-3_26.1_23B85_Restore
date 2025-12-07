llvm::Value *AGCLLVMGLVertexShader::castAttribToElementType(void *a1, int a2, llvm::Value *a3, _BOOL8 a4)
{
  result = 0;
  if (BYTE2(a2) <= 4u)
  {
    if (BYTE2(a2) > 2u)
    {
      goto LABEL_11;
    }

    if (!BYTE2(a2))
    {
      return a3;
    }

    if (BYTE2(a2) == 1)
    {
LABEL_11:
      v11 = llvm::FixedVectorType::get();
      v13 = a1 + *(*a1 - 24);
      v14 = "as_i32";
    }

    else
    {
      v11 = llvm::FixedVectorType::get();
      v13 = a1 + *(*a1 - 24);
      v14 = "as_half";
    }

    goto LABEL_14;
  }

  if (BYTE2(a2) > 0xAu)
  {
    return result;
  }

  if (((1 << SBYTE2(a2)) & 0x60) != 0)
  {
    v11 = llvm::FixedVectorType::get();
    v13 = a1 + *(*a1 - 24);
    v14 = "as_i16";
LABEL_14:
    v15[0] = v14;
    v16 = 259;
    v12 = (v13 + 1712);
    Element = a3;
    return llvm::IRBuilderBase::CreateCast(v12, 49, Element, v11, v15);
  }

  if (((1 << SBYTE2(a2)) & 0x180) != 0)
  {
    v11 = llvm::FixedVectorType::get();
    v13 = a1 + *(*a1 - 24);
    v14 = "as_i8";
    goto LABEL_14;
  }

  if (((1 << SBYTE2(a2)) & 0x600) == 0)
  {
    return result;
  }

  v7 = a1 + *(*a1 - 24);
  v16 = 257;
  v8 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((v7 + 1712), a3, v8, v15);
  v10 = a1 + *(*a1 - 24);
  v11 = *(v10 + 238);
  v15[0] = "as_packed_i32";
  v16 = 259;
  v12 = (v10 + 1712);
  return llvm::IRBuilderBase::CreateCast(v12, 49, Element, v11, v15);
}

llvm::Instruction *AGCLLVMBuilder::CreateConstInBoundsGEP2_32(AGCLLVMBuilder *this, llvm::Type **a2, unsigned int a3)
{
  v6 = AGCLLVMBuilder::tryDeducePointeeType(a2, a2);
  if (v6)
  {
    v8 = v6;
    llvm::Type::isOpaquePointerTy(*a2);
    v13 = 257;
    v9 = (this + 8);
    v10 = v8;
  }

  else
  {
    v13 = 257;
    v9 = (this + 8);
    v10 = 0;
  }

  return llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(v9, v10, a2, a3, v12, v7);
}

char *llvm::PassInfoMixin<InitCompileGLVertexShaderPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x4F)
  {
    v1 = v0;
  }

  else
  {
    v1 = 79;
  }

  v2 = &aStringrefLlvmG_48[v1];
  v3 = 79 - v1;
  if ((79 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 79 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileGLVertexShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileGLVertexShaderPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMGLVertexShader>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x65)
  {
    v1 = v0;
  }

  else
  {
    v1 = 101;
  }

  v2 = &aStringrefLlvmG_47[v1];
  v3 = 101 - v1;
  if ((101 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 101 - v1;
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

void AGCLLVMGLVertexShader::~AGCLLVMGLVertexShader(AGCLLVMGLVertexShader *this)
{
  *this = &unk_2825A1BE8;
  v2 = (this + 10056);
  *(this + 1257) = &unk_2825A1F50;
  *(this + 1470) = &unk_2825A2060;
  v3 = *(this + 1254);
  if (v3)
  {
    *(this + 1255) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1247);
  if (v4)
  {
    *(this + 1248) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1224);
  if (v5 != this + 9808)
  {
    free(v5);
  }

  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_2825A2070);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825A1BE8;
  v2 = (this + 10056);
  *(this + 1257) = &unk_2825A1F50;
  *(this + 1470) = &unk_2825A2060;
  v3 = *(this + 1254);
  if (v3)
  {
    *(this + 1255) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1247);
  if (v4)
  {
    *(this + 1248) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1224);
  if (v5 != this + 9808)
  {
    free(v5);
  }

  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(this, off_2825A2070);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMAirImageBlockGen3::~AGCLLVMAirImageBlockGen3(AGCLLVMAirImageBlockGen3 *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  AGCLLVMAirImageBlockGen3::~AGCLLVMAirImageBlockGen3(this, a2, a3, a4);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825A71C8;
  v5 = *(this + 123);
  if (v5 != *(this + 122))
  {
    free(v5);
  }

  if (*(this + 960) == 1)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::destroyAll(this + 234);
    llvm::deallocate_buffer(*(this + 238), *(this + 117), (16 * *(this + 238)));
    *(this + 960) = 0;
  }

  v6 = *(this + 232);
  v7 = *(this + 114);
  if (v6)
  {
    v20 = 2;
    v21 = 0;
    v22 = -4096;
    v23 = 0;
    v18 = 0;
    v19 = &unk_2825A7200;
    v15 = 2;
    v16 = 0;
    v17 = -8192;
    v8 = v7 + 72;
    v9 = 112 * v6;
    do
    {
      v10 = *(v8 - 6);
      v11 = v10 == v22 || v10 == v17;
      if (!v11 && v8[23] < 0)
      {
        operator delete(*v8);
        v10 = *(v8 - 6);
      }

      if (v10 != -8192 && v10 != -4096 && v10 != 0)
      {
        llvm::ValueHandleBase::RemoveFromUseList((v8 - 64));
      }

      v8 += 112;
      v9 -= 112;
    }

    while (v9);
    v7 = *(this + 114);
    v6 = *(this + 232);
    v13 = 112 * v6;
  }

  else
  {
    v13 = 0;
  }

  llvm::deallocate_buffer(v6, v7, v13);
  *this = &unk_2825A7228;
  MEMORY[0x20F32FD00](this + 480);
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter((this + 136));
  llvm::IRBuilderFolder::~IRBuilderFolder((this + 128));
  v14 = *(this + 1);
  if (v14 != this + 24)
  {
    free(v14);
  }
}

void llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, llvm::Value *a2)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v3 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v18, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v20 = v4;
  v25 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(*v4, v4[2].i32[0], v19, &v25))
  {
    v5 = v25;
  }

  else
  {
    v5 = *v4 + 112 * v4[2].u32[0];
  }

  v6 = v20;
  if (*v20 + 112 * v20[2].u32[0] != v5)
  {
    v16 = *(v5 + 40);
    v17 = *(v5 + 56);
    v7 = *(v5 + 72);
    v34[0] = *(v5 + 80);
    *(v34 + 7) = *(v5 + 87);
    v8 = *(v5 + 95);
    *(v5 + 80) = 0;
    *(v5 + 88) = 0;
    *(v5 + 72) = 0;
    *&v15[5] = *(v5 + 101);
    *v15 = *(v5 + 96);
    v26[0] = 2;
    v26[1] = 0;
    v27 = -8192;
    v28 = 0;
    v25 = &unk_2825A7200;
    llvm::ValueHandleBase::operator=((v5 + 8), v26);
    v9 = v27;
    *(v5 + 32) = v28;
    if (v9 != -8192 && v9 != -4096 && v9)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v26);
    }

    v6[1] = vadd_s32(v6[1], 0x1FFFFFFFFLL);
    v10 = v20;
    llvm::CallbackVH::CallbackVH(&v21, a2);
    v21 = &unk_2825A7200;
    v24 = v10;
    llvm::ValueHandleBase::ValueHandleBase(v26, (LODWORD(v22[0]) >> 1) & 3, v22);
    v29 = v16;
    v25 = &unk_2825A7200;
    v28 = v24;
    v30 = v17;
    __p[0] = v7;
    __p[1] = v34[0];
    *(&__p[1] + 7) = *(v34 + 7);
    HIBYTE(__p[2]) = v8;
    v32[0] = *v15;
    *(v32 + 5) = *&v15[5];
    v33 = 0;
    if (llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(*v10, *(v10 + 16), v27, &v33))
    {
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v11 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(v10, &v25, v33);
      llvm::ValueHandleBase::operator=((v11 + 8), v26);
      *(v11 + 32) = v28;
      v12 = v29;
      *(v11 + 56) = v30;
      *(v11 + 40) = v12;
      v13 = *__p;
      *(v11 + 88) = __p[2];
      *(v11 + 72) = v13;
      memset(__p, 0, sizeof(__p));
      v14 = *(v32 + 5);
      *(v11 + 96) = v32[0];
      *(v11 + 101) = v14;
    }

    if (v27 != -8192 && v27 != -4096 && v27)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v26);
    }

    if (v23 != -8192 && v23 != -4096 && v23)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v22);
    }
  }

  if (v19 != -8192 && v19 != -4096)
  {
    if (v19)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v18);
    }
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = a1 + 112 * v5;
    v7 = *(v6 + 24);
    if (v7 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = a1 + 112 * (v13 & v4);
        v7 = *(v6 + 24);
        v8 = 1;
        if (v7 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = MEMORY[0x20F330650](v8, 112 * v8, 8);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::initEmpty(a1);
    v25[0] = 2;
    v25[1] = 0;
    v26 = -4096;
    v27 = 0;
    v23 = 0;
    v24 = &unk_2825A7200;
    v21[0] = 2;
    v21[1] = 0;
    v22 = -8192;
    if (v3)
    {
      v9 = v4 + 72;
      v10 = 112 * v3;
      do
      {
        v11 = *(v9 - 6);
        if (v11 != v26 && v11 != v22)
        {
          v28 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v11, &v28);
          v13 = v28;
          llvm::ValueHandleBase::operator=((v28 + 8), v9 - 8);
          *(v13 + 32) = *(v9 - 5);
          v14 = *(v9 - 2);
          *(v13 + 56) = *(v9 - 1);
          *(v13 + 40) = v14;
          v15 = *v9;
          *(v13 + 88) = *(v9 + 2);
          *(v13 + 72) = v15;
          *(v9 + 1) = 0;
          *(v9 + 2) = 0;
          *v9 = 0;
          v16 = *(v9 + 3);
          *(v13 + 101) = *(v9 + 29);
          *(v13 + 96) = v16;
          ++*(a1 + 8);
          if (v9[23] < 0)
          {
            operator delete(*v9);
          }
        }

        v17 = *(v9 - 6);
        if (v17 != -8192 && v17 != -4096 && v17 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v9 - 64));
        }

        v9 += 112;
        v10 -= 112;
      }

      while (v10);
      if (v22 != -8192 && v22 != -4096 && v22)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v21);
      }
    }

    v19 = v26;
    if (v26 != -8192 && v26 != -4096 && v26)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v25);
    }

    return llvm::deallocate_buffer(v19, v4, (112 * v3));
  }

  else
  {

    return llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::initEmpty(a1);
  }
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::initEmpty(uint64_t *result)
{
  result[1] = 0;
  v7[0] = 2;
  v7[1] = 0;
  v8 = -4096;
  v9 = 0;
  v1 = *(result + 4);
  if (v1)
  {
    v2 = *result;
    v3 = *result + 112 * v1;
    result = (*result + 8);
    do
    {
      v4 = llvm::ValueHandleBase::ValueHandleBase(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_2825A7200;
      *(v4 + 3) = v9;
      v5 = v4 + 104;
      result = (v4 + 112);
      v2 += 112;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

uint64_t llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
{
  v1 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v7, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v9 = v2;
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(*v2, *(v2 + 16), v8, &v10);
  if (result)
  {
    v4 = v10;
    if (*(v10 + 95) < 0)
    {
      operator delete(v10[9]);
    }

    v11[0] = 2;
    v11[1] = 0;
    v12 = -8192;
    v13 = 0;
    v10 = &unk_2825A7200;
    result = llvm::ValueHandleBase::operator=((v4 + 1), v11);
    v5 = v12;
    v4[4] = v13;
    if (v5 != -8192 && v5 != -4096 && v5)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v11);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v8 != -8192 && v8 != -4096 && v8 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v7);
  }

  return result;
}

uint64_t AGCLLVMAirImageBlockGen3::setupImageBlocks(uint64_t a1, std::string *a2, int a3, _BOOL4 a4, uint64_t a5)
{
  v309[1] = *MEMORY[0x277D85DE8];
  {
    AGCLLVMAirImageBlock::initializeImageBlockMaps(void)::image_block_function_map = 0;
    *&dword_27C8D8170 = 0;
    qword_27C8D8178 = 0x3000000000;
    __cxa_atexit(llvm::StringMap<AGCLLVMAirImageBlock::AIRImageBlockFunction,llvm::MallocAllocator>::~StringMap, &AGCLLVMAirImageBlock::initializeImageBlockMaps(void)::image_block_function_map, &dword_20E4E1000);
  }

  if (atomic_load_explicit(&AGCLLVMAirImageBlock::initializeImageBlockMaps(void)::flag, memory_order_acquire) != -1)
  {
    v303 = &v299;
    v280[0] = &v303;
    std::__call_once(&AGCLLVMAirImageBlock::initializeImageBlockMaps(void)::flag, v280, std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMAirImageBlock::initializeImageBlockMaps(void)::$_0 &&>>);
  }

  v8 = 0;
  v303 = v305;
  v304 = 0x800000000;
  v299 = v301;
  v300 = 0x800000000;
  v9 = &v302;
  do
  {
    if (v8 <= 7)
    {
      *v9 = 0;
      *(v9 - 1) = 0;
      *(v9 - 3) = 0;
    }

    v8 += 4;
    v9 += 4;
  }

  while (v8 != 8);
  LODWORD(v300) = 8;
  v200 = a4;
  v198 = a5;
  if (a5)
  {
    v10 = *(a5 + 32);
    if (((v10 >> 8) & 3) != 0)
    {
      v11 = 1 << (BYTE1(v10) & 3);
    }

    else
    {
      v11 = 1;
    }

    v203 = v11;
  }

  else
  {
    v203 = 1;
  }

  v199 = llvm::ConstantInt::get();
  v204 = llvm::ConstantInt::get();
  v12 = *(a1 + 432);
  v13 = v12 + 24;
  v14 = *(v12 + 32);
  if (v14 != v12 + 24)
  {
    do
    {
      v15 = v14 - 56;
      if (!v14)
      {
        v15 = 0;
      }

      v16 = v15 + 72;
      v17 = *(v15 + 80);
      if (v17 == v15 + 72)
      {
        v19 = 0;
      }

      else
      {
        do
        {
          v18 = v17 - 24;
          if (!v17)
          {
            v18 = 0;
          }

          v19 = *(v18 + 48);
          if (v19 != v18 + 40)
          {
            break;
          }

          v17 = *(v17 + 8);
        }

        while (v17 != v16);
      }

      while (v17 != v16)
      {
        if (v19)
        {
          v20 = v19 - 24;
        }

        else
        {
          v20 = 0;
        }

        v21 = *(v20 + 16);
        if (v19 && v21 == 84)
        {
          v22 = *(v20 - 32);
          if (v22 && !*(v22 + 16) && *(v22 + 24) == *(v20 + 72))
          {
            llvm::Value::getName(v22);
            Key = llvm::StringMapImpl::FindKey();
            if (Key != -1 && Key != dword_27C8D8170)
            {
              if (*(*(AGCLLVMAirImageBlock::initializeImageBlockMaps(void)::image_block_function_map + 8 * Key) + 8) > 1u)
              {
                goto LABEL_47;
              }

              v25 = v304;
              if (!v304)
              {
                goto LABEL_47;
              }

              if (v304 >= HIDWORD(v304))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v26 = v303;
              v303[v304] = v303[v304 - 1];
              v27 = &v303[v25 - 1];
              if (v27 != v26)
              {
                memmove(v26 + 1, v26, v27 - v26);
                LODWORD(v25) = v304;
              }

              LODWORD(v304) = v25 + 1;
              *v26 = (v19 - 24);
            }
          }
        }

        else if ((v21 & 0xFE) == 0x3C && v19 != 0)
        {
LABEL_47:
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v303, v19 - 24);
        }

        v19 = *(v19 + 8);
        v29 = v17 - 24;
        if (!v17)
        {
          v29 = 0;
        }

        while (v19 == v29 + 40)
        {
          v17 = *(v17 + 8);
          if (v17 == v16)
          {
            break;
          }

          v29 = v17 - 24;
          if (!v17)
          {
            v29 = 0;
          }

          v19 = *(v29 + 48);
        }
      }

      v14 = *(v14 + 8);
    }

    while (v14 != v13);
  }

  v201 = 1;
  if (!v304)
  {
    goto LABEL_297;
  }

  v30 = v303;
  v31 = 8 * v304;
  v32 = a4;
  while (1)
  {
    v33 = *v30;
    v34 = *(*v30 + 16);
    v35 = v34 == 60 ? *v30 : 0;
    v36 = v34 == 61 ? *v30 : 0;
    if (v33)
    {
      if (v34 == 84)
      {
        v37 = *(v33 - 32);
        if (v37)
        {
          if (!*(v37 + 16) && *(v37 + 24) == *(v33 + 72))
          {
            break;
          }
        }
      }
    }

    if (!v35)
    {
      if (!v36)
      {
        goto LABEL_135;
      }

      v46 = **(v36 - 4);
      v47 = *(v46 + 8);
      if ((v47 & 0xFE) == 0x12)
      {
        v47 = *(**(v46 + 16) + 8);
      }

      if ((v47 & 0xFFFFFF00) != 0x400)
      {
        goto LABEL_135;
      }

      llvm::IRBuilderBase::SetInsertPoint((a1 + 8), v36);
      memset(v283, 0, 21);
      *v282 = 0u;
      *v280 = 0u;
      v281 = 0u;
      v48 = *(v36 - 4);
      v223[0] = 0;
      v223[1] = 0;
      v224 = 0;
      AGCLLVMAirImageBlockGen3::unpackImageBlockData(a1, v280, v48, v223);
      if (SHIBYTE(v224) < 0)
      {
        operator delete(v223[0]);
      }

      if ((v32 & 0x10000) != 0)
      {
        v49 = llvm::ConstantInt::get();
        v298 = 257;
        v280[0] = llvm::IRBuilderBase::CreateAdd((a1 + 8), v49, v280[0], v295);
      }

      v50 = *(v36 - 8);
      v220 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v221, (a1 + 8));
      v222 = *(a1 + 104);
      v51 = AGCLLVMAirImageBlockGen3::buildEmulatedRTZConversion(a1, &v220, v50, v280);
      if (v221)
      {
        llvm::MetadataTracking::untrack();
      }

      v295[1] = 0;
      v295[0] = 0;
      v297 = 0;
      v296 = 0;
      if ((a3 & 0x10000) != 0)
      {
        v54 = llvm::ConstantInt::get();
      }

      else
      {
        v52 = *(a1 + 472);
        v53 = *(*v52 - 24);
        v217 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v218, (a1 + 8));
        v219 = *(a1 + 104);
        v54 = AGCLLVMObject::buildReadDynamicLIBSize(v52 + v53, &v217);
        if (v218)
        {
          llvm::MetadataTracking::untrack();
        }
      }

      (*(**(a1 + 464) + 688))(*(a1 + 464));
      v66 = **(v36 - 8);
      if (*(v66 + 8) == 15)
      {
        v66 = **(v66 + 16);
      }

      v67 = 1 << (v36[9] >> 1);
      if ((v67 & ~(-1 << llvm::DataLayout::getABITypeAlign((a1 + 480), v66))) != 0)
      {
        v68 = (*(**(a1 + 464) + 688))(*(a1 + 464));
        v214 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v215, (a1 + 8));
        v216 = *(a1 + 104);
        AGCLLVMGen3TargetLowerer::splitUnalignedStore(v306, v68, &v214, 0, v203, v54, v51, v280[0], v204, 0, v280[1], v281);
        *v295 = *v306;
        llvm::TrackingMDRef::operator=(&v296, &v306[16]);
        v297 = *&v306[24];
        if (*&v306[16])
        {
          llvm::MetadataTracking::untrack();
        }

        if (v215)
        {
          goto LABEL_148;
        }
      }

      else
      {
        v80 = *(a1 + 464);
        v211 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v212, (a1 + 8));
        v213 = *(a1 + 104);
        v81 = (*(*v80 + 208))(v80, &v211, v204);
        if (v212)
        {
          llvm::MetadataTracking::untrack();
        }

        v82 = (*(**(a1 + 464) + 688))(*(a1 + 464));
        v208 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v209, (a1 + 8));
        v210 = *(a1 + 104);
        if ((SBYTE7(v283[0]) & 0x80u) == 0)
        {
          v83 = v282;
        }

        else
        {
          v83 = v282[0];
        }

        if ((SBYTE7(v283[0]) & 0x80u) == 0)
        {
          v84 = SBYTE7(v283[0]);
        }

        else
        {
          v84 = v282[1];
        }

        AGCLLVMGen3TargetLowerer::buildWriteOutputPartitionFromIR(v306, v82, &v208, v83, v84, v203, v54, v51, v280[0], LODWORD(v283[1]) == 1, v204, v81, v280[1], v281, 0);
        *v295 = *v306;
        llvm::TrackingMDRef::operator=(&v296, &v306[16]);
        v297 = *&v306[24];
        if (*&v306[16])
        {
          llvm::MetadataTracking::untrack();
        }

        if (v209)
        {
LABEL_148:
          llvm::MetadataTracking::untrack();
        }
      }

      if (v295[0])
      {
        v205 = *v295;
        v206 = v296;
        if (v296)
        {
          llvm::MetadataTracking::track();
        }

        v207 = v297;
        AGCLLVMBuilder::InsertPoint::restoreIP(&v205, a1 + 8);
        if (v206)
        {
          llvm::MetadataTracking::untrack();
        }
      }

      llvm::Instruction::eraseFromParent(v36);
      if (v296)
      {
        llvm::MetadataTracking::untrack();
      }

      goto LABEL_133;
    }

    v38 = **(v35 - 4);
    v39 = *(v38 + 8);
    if ((v39 & 0xFE) == 0x12)
    {
      v39 = *(**(v38 + 16) + 8);
    }

    if ((v39 & 0xFFFFFF00) != 0x400)
    {
      goto LABEL_135;
    }

    llvm::IRBuilderBase::SetInsertPoint((a1 + 8), v35);
    memset(v283, 0, 21);
    *v282 = 0u;
    *v280 = 0u;
    v281 = 0u;
    v40 = *(v35 - 4);
    __p[1] = 0;
    __p[0] = 0;
    v238 = 0;
    AGCLLVMAirImageBlockGen3::unpackImageBlockData(a1, v280, v40, __p);
    if (SHIBYTE(v238) < 0)
    {
      operator delete(__p[0]);
    }

    if ((v32 & 0x10000) != 0)
    {
      v41 = llvm::ConstantInt::get();
      v298 = 257;
      v280[0] = llvm::IRBuilderBase::CreateAdd((a1 + 8), v41, v280[0], v295);
    }

    v42 = *v35;
    if ((a3 & 0x10000) != 0)
    {
      v45 = llvm::ConstantInt::get();
    }

    else
    {
      v43 = *(a1 + 472);
      v44 = *(*v43 - 24);
      v234 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v235, (a1 + 8));
      v236 = *(a1 + 104);
      v45 = AGCLLVMObject::buildReadDynamicLIBSize(v43 + v44, &v234);
      if (v235)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    (*(**(a1 + 464) + 688))(*(a1 + 464));
    v55 = *v35;
    if (*(*v35 + 8) == 15)
    {
      v55 = **(v55 + 2);
    }

    v56 = 1 << (v35[9] >> 1);
    ABITypeAlign = llvm::DataLayout::getABITypeAlign((a1 + 480), v55);
    v58 = *(a1 + 464);
    if ((v56 & ~(-1 << ABITypeAlign)) != 0)
    {
      v59 = (*(*v58 + 688))(*(a1 + 464));
      v231 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v232, (a1 + 8));
      v233 = *(a1 + 104);
      v60 = AGCLLVMGen3TargetLowerer::splitUnalignedLoads(v59, &v231, 0, v203, v45, v42, v280[0], v204, 0, v280[1], v281);
      if (v232)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    else
    {
      v228 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v229, (a1 + 8));
      v230 = *(a1 + 104);
      v61 = (*(*v58 + 208))(v58, &v228, v204);
      if (v229)
      {
        llvm::MetadataTracking::untrack();
      }

      v62 = (*(**(a1 + 464) + 688))(*(a1 + 464));
      v225 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v226, (a1 + 8));
      v227 = *(a1 + 104);
      if ((SBYTE7(v283[0]) & 0x80u) == 0)
      {
        v63 = v282;
      }

      else
      {
        v63 = v282[0];
      }

      if ((SBYTE7(v283[0]) & 0x80u) == 0)
      {
        v64 = SBYTE7(v283[0]);
      }

      else
      {
        v64 = v282[1];
      }

      v60 = AGCLLVMGen3TargetLowerer::buildReadOutputPartitionFromIR(v62, &v225, v63, v64, v203, v45, v42, v280[0], v204, v61, v280[1], v281);
      if (v226)
      {
        llvm::MetadataTracking::untrack();
      }

      if (llvm::Instruction::getNextNonDebugInstruction(v60))
      {
        NextNonDebugInstruction = llvm::Instruction::getNextNonDebugInstruction(v60);
        llvm::IRBuilderBase::SetInsertPoint((a1 + 8), NextNonDebugInstruction);
      }

      else
      {
        v78 = *(v60 + 5);
        *(a1 + 56) = v78;
        *(a1 + 64) = v78 + 40;
      }
    }

    v79 = *v35;
    v298 = 257;
    llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v60, v79, v295);
    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v35);
LABEL_133:
    if (SBYTE7(v283[0]) < 0)
    {
      operator delete(v282[0]);
    }

LABEL_135:
    ++v30;
    v31 -= 8;
    if (!v31)
    {
      v201 = 1;
      goto LABEL_297;
    }
  }

  Name = llvm::Value::getName(*(v33 - 32));
  v288 = v69;
  v70 = llvm::StringMapImpl::FindKey();
  v71 = AGCLLVMAirImageBlock::initializeImageBlockMaps(void)::image_block_function_map;
  if (v70 == -1)
  {
    v72 = dword_27C8D8170;
  }

  else
  {
    v72 = v70;
  }

  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), v33);
  v73 = *(v71 + 8 * v72);
  v74 = *(v73 + 24);
  v284 = *(v73 + 8);
  *__len = v74;
  v286 = *(v73 + 40);
  if (v284 <= 2)
  {
    if (v284 < 2)
    {
      memset(v283, 0, 21);
      *v282 = 0u;
      *v280 = 0u;
      v281 = 0u;
      if (v284)
      {
        v75 = *(v33 - 32 * (*(v33 + 20) & 0x7FFFFFF) + 32 * v286);
        v76 = (v75 + 24);
        if (*(v75 + 32) >= 0x41u)
        {
          v76 = *v76;
        }

        v77 = *v76;
        v280[0] = llvm::ConstantInt::get();
        if (AGCLLVMAirImageBlockGen3::getRTZModeFromImageBlockUser(a1, v280, v33))
        {
          *(v299 + v77) = v283[1];
        }
      }

      else
      {
        v280[0] = llvm::ConstantInt::get();
      }

      *&v281 = *(v33 - 32 * (*(v33 + 20) & 0x7FFFFFF) + 32 * BYTE1(v286));
      v125 = v281;
      ImageBlockSampleMask = AGCLLVMAirImageBlockGen3::getImageBlockSampleMask(a1, &v284, v33, v203, v199);
      v280[1] = ImageBlockSampleMask;
      v195 = *v33;
      v127 = llvm::UndefValue::get();
      v128 = v280[0];
      v298 = 257;
      v129 = llvm::ConstantInt::get();
      InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v127, v128, v129, v295);
      v298 = 257;
      v131 = llvm::ConstantInt::get();
      Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v125, v131, v295);
      v307 = 257;
      v133 = llvm::ConstantInt::get();
      v134 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, Element, v133, v306);
      v298 = 257;
      v135 = llvm::ConstantInt::get();
      v136 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v125, v135, v295);
      v307 = 257;
      v137 = llvm::ConstantInt::get();
      v138 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v134, v136, v137, v306);
      v298 = 257;
      v139 = llvm::ConstantInt::get();
      v140 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v138, ImageBlockSampleMask, v139, v295);
      v141 = *(a1 + 208);
      v298 = 257;
      Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v140, v141, v295);
      v307 = 257;
      ShuffleVector = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, Cast, v195, v306);
      if (SBYTE7(v283[0]) < 0)
      {
        operator delete(v282[0]);
      }

      v32 = v200;
      goto LABEL_247;
    }

    if (v284 == 2)
    {
      switch(DWORD1(v284))
      {
        case 0:
          goto LABEL_235;
        case 2:
          v166 = llvm::ConstantInt::get();
LABEL_236:
          ShuffleVector = v166;
          goto LABEL_247;
        case 1:
LABEL_235:
          llvm::FunctionType::get();
          llvm::Module::getOrInsertFunction();
          LOWORD(v282[0]) = 257;
          v168 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v167 + 24), v167, 0, 0, v280);
          v169 = *v33;
          LOWORD(v282[0]) = 257;
          v166 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v168, v169, v280);
          goto LABEL_236;
      }
    }

LABEL_249:
    llvm::Instruction::eraseFromParent(v33);
    if (!*(v37 + 8))
    {
      llvm::Function::eraseFromParent(v37);
    }

    goto LABEL_135;
  }

  if (v284 == 3)
  {
    memset(v283, 0, 21);
    *v282 = 0u;
    *v280 = 0u;
    v281 = 0u;
    *&v281 = *(v33 - 32 * (*(v33 + 20) & 0x7FFFFFF) + 32 * BYTE1(v286));
    v280[1] = AGCLLVMAirImageBlockGen3::getImageBlockSampleMask(a1, &v284, v33, v203, v199);
    v108 = *(v33 - 32 * (*(v33 + 20) & 0x7FFFFFF) + 32 * v286);
    v109 = (v108 + 24);
    if (*(v108 + 32) >= 0x41u)
    {
      v109 = *v109;
    }

    v110 = *v109;
    ImageBlockOffsetAndFormatFromDrawBuffer = AGCLLVMAirImageBlockGen3::getImageBlockOffsetAndFormatFromDrawBuffer(a1, v280, v198, *v109);
    v112 = ImageBlockOffsetAndFormatFromDrawBuffer;
    if (ImageBlockOffsetAndFormatFromDrawBuffer)
    {
      v192 = ImageBlockOffsetAndFormatFromDrawBuffer;
      if ((a3 & 0x10000) != 0)
      {
        v194 = llvm::ConstantInt::get();
      }

      else
      {
        v113 = *(a1 + 472);
        v114 = *(*v113 - 24);
        v265 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v266, (a1 + 8));
        v267 = *(a1 + 104);
        v194 = AGCLLVMObject::buildReadDynamicLIBSize(v113 + v114, &v265);
        if (v266)
        {
          llvm::MetadataTracking::untrack();
        }
      }

      v155 = *(a1 + 464);
      v262 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v263, (a1 + 8));
      v264 = *(a1 + 104);
      v156 = (*(*v155 + 208))(v155, &v262, *(&v281 + 1));
      if (v263)
      {
        llvm::MetadataTracking::untrack();
      }

      v157 = (*(**(a1 + 464) + 688))(*(a1 + 464));
      v259 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v260, (a1 + 8));
      v261 = *(a1 + 104);
      if ((SBYTE7(v283[0]) & 0x80u) == 0)
      {
        v158 = v282;
      }

      else
      {
        v158 = v282[0];
      }

      if ((SBYTE7(v283[0]) & 0x80u) == 0)
      {
        v159 = SBYTE7(v283[0]);
      }

      else
      {
        v159 = v282[1];
      }

      ShuffleVector = AGCLLVMGen3TargetLowerer::buildReadOutputPartitionFromIR(v157, &v259, v158, v159, v203, v194, *v33, v280[0], *(&v281 + 1), v156, v280[1], v281);
      if (v260)
      {
        llvm::MetadataTracking::untrack();
      }

      v160 = *(v198 + 4 * v110);
      if ((v160 & 0x1F) == 0x17)
      {
LABEL_317:
        std::__throw_bad_optional_access[abi:nn200100]();
LABEL_318:
        std::string::__throw_length_error[abi:nn200100]();
      }

      v112 = v192;
      if ((v160 & 0xE00) == 0xC00)
      {
        v161 = *ShuffleVector;
        memset(v306, 0, sizeof(v306));
        *v306 = llvm::ConstantInt::get();
        *&v306[8] = llvm::ConstantInt::get();
        *&v306[16] = llvm::ConstantInt::get();
        *&v306[24] = llvm::ConstantInt::get();
        NullValue = llvm::Constant::getNullValue(v161, v162);
        v164 = llvm::ConstantVector::get();
        v298 = 257;
        ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector((a1 + 8), ShuffleVector, NullValue, v164, v295);
      }

      if (llvm::Instruction::getNextNonDebugInstruction(ShuffleVector))
      {
        v165 = llvm::Instruction::getNextNonDebugInstruction(ShuffleVector);
        llvm::IRBuilderBase::SetInsertPoint((a1 + 8), v165);
      }

      else
      {
        v172 = ShuffleVector[5];
        *(a1 + 56) = v172;
        *(a1 + 64) = v172 + 40;
      }
    }

    else
    {
      std::to_string(v306, v110);
      v143 = std::string::insert(v306, 0, "Invalid pixel format for render target ");
      v144 = v143->__r_.__value_.__r.__words[2];
      *v295 = *&v143->__r_.__value_.__l.__data_;
      v296 = v144;
      v143->__r_.__value_.__l.__size_ = 0;
      v143->__r_.__value_.__r.__words[2] = 0;
      v143->__r_.__value_.__r.__words[0] = 0;
      if (v296 >= 0)
      {
        v145 = v295;
      }

      else
      {
        v145 = v295[0];
      }

      if (v296 >= 0)
      {
        v146 = HIBYTE(v296);
      }

      else
      {
        v146 = v295[1];
      }

      std::string::append(a2, v145, v146);
      if (SHIBYTE(v296) < 0)
      {
        operator delete(v295[0]);
      }

      if ((v306[23] & 0x80000000) != 0)
      {
        operator delete(*v306);
      }

      ShuffleVector = 0;
    }

    if (SBYTE7(v283[0]) < 0)
    {
      operator delete(v282[0]);
    }

    if ((v112 & 1) == 0)
    {
      goto LABEL_314;
    }

    goto LABEL_247;
  }

  if (v284 != 4)
  {
    if (v284 != 5)
    {
      goto LABEL_249;
    }

    v85 = (v33 - 32 * (*(v33 + 20) & 0x7FFFFFF));
    v86 = *v85;
    if (DWORD2(v284) == 1)
    {
      v151 = v85[4];
      v152 = *(a1 + 464);
      v271 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v272, (a1 + 8));
      v273 = *(a1 + 104);
      v153 = (*(*v152 + 216))(v152, &v271, v86, v203, v199);
      if (v272)
      {
        llvm::MetadataTracking::untrack();
      }

      v154 = (*(**(a1 + 464) + 688))(*(a1 + 464));
      v268 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v269, (a1 + 8));
      v270 = *(a1 + 104);
      ShuffleVector = AGCLLVMGen3TargetLowerer::buildExtractColorCoverageMask(v154, &v268, v153, v151);
      if (v269)
      {
        goto LABEL_174;
      }
    }

    else
    {
      if (DWORD2(v284))
      {
        goto LABEL_249;
      }

      v87 = *(a1 + 464);
      v277 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v278, (a1 + 8));
      v279 = *(a1 + 104);
      v88 = (*(*v87 + 216))(v87, &v277, v86, v203, v199);
      if (v278)
      {
        llvm::MetadataTracking::untrack();
      }

      v89 = (*(**(a1 + 464) + 688))(*(a1 + 464));
      v274 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v275, (a1 + 8));
      v276 = *(a1 + 104);
      v191 = (*(*v89 + 1608))(v89);
      v292 = v274;
      v293 = v275;
      if (v275)
      {
        llvm::MetadataTracking::track();
      }

      v294 = v276;
      AGCLLVMBuilder::InsertPoint::restoreIP(&v292, v89 + 8);
      if (v293)
      {
        llvm::MetadataTracking::untrack();
      }

      v193 = v88;
      v289 = v274;
      v290 = v275;
      if (v275)
      {
        llvm::MetadataTracking::track();
      }

      v291 = v276;
      v190 = *(v89 + 208);
      v90 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(v89, "llvm.agx2.ft1", 13, *(v89 + 200), *(v89 + 200));
      v91 = *(v89 + 200);
      LOWORD(v282[0]) = 257;
      v309[0] = llvm::IRBuilderBase::CreateCast(v89 + 8, 38, v193, v91, v280);
      LOWORD(v282[0]) = 257;
      v92 = llvm::IRBuilderBase::CreateCall((v89 + 8), *(v90 + 24), v90, v309, 1, v280);
      v93 = *(v89 + 192);
      v298 = 257;
      Select = llvm::IRBuilderBase::CreateCast(v89 + 8, 38, v92, v93, v295);
      if (v191 == v190)
      {
        v95 = llvm::ConstantInt::get();
        LOWORD(v282[0]) = 257;
        LShr = llvm::IRBuilderBase::CreateLShr((v89 + 8), v193, v95, v280);
        v97 = *(v89 + 200);
        v298 = 257;
        v308 = llvm::IRBuilderBase::CreateCast(v89 + 8, 38, LShr, v97, v295);
        LOWORD(v282[0]) = 257;
        v98 = llvm::IRBuilderBase::CreateCall((v89 + 8), *(v90 + 24), v90, &v308, 1, v280);
        v99 = *(v89 + 192);
        v298 = 257;
        v100 = llvm::IRBuilderBase::CreateCast(v89 + 8, 38, v98, v99, v295);
        v101 = v308;
        v102 = llvm::ConstantInt::get();
        LOWORD(v282[0]) = 257;
        llvm::IRBuilderBase::CreateICmp((v89 + 8), 32, v101, v102, v280);
        v103 = llvm::ConstantInt::get();
        v298 = 257;
        llvm::IRBuilderBase::CreateAdd((v89 + 8), v100, v103, v295);
        v307 = 257;
        Select = llvm::IRBuilderBase::CreateSelect();
      }

      if (v290)
      {
        llvm::MetadataTracking::untrack();
      }

      v104 = llvm::ConstantInt::get();
      LOWORD(v282[0]) = 257;
      UDiv = llvm::IRBuilderBase::CreateUDiv((v89 + 8), Select, v104, v280);
      v106 = llvm::ConstantInt::get();
      LOWORD(v282[0]) = 257;
      ShuffleVector = llvm::IRBuilderBase::CreateAdd((v89 + 8), UDiv, v106, v280);
      if (v275)
      {
LABEL_174:
        llvm::MetadataTracking::untrack();
      }
    }

LABEL_247:
    if (ShuffleVector)
    {
      llvm::Value::replaceAllUsesWith();
    }

    goto LABEL_249;
  }

  memset(v283, 0, 21);
  *v282 = 0u;
  *v280 = 0u;
  v281 = 0u;
  v115 = *(v33 - 32 * (*(v33 + 20) & 0x7FFFFFF) + 32 * BYTE6(v286));
  if (llvm::StringRef::find() == -1)
  {
    v147 = llvm::CallBase::arg_end(v33);
    v148 = v33 - 32 * (*(v33 + 20) & 0x7FFFFFF);
    if (((v147 - v148) & 0x1FFFFFFFE0) == 0xA0)
    {
      v149 = *(v148 + 32 * HIBYTE(v286));
      v150 = (v149 + 24);
      if (*(v149 + 32) >= 0x41u)
      {
        v150 = *v150;
      }

      v124 = *v150;
    }

    else
    {
      v124 = 0;
    }

    v170 = *(v148 + 32 * BYTE5(v286));
    if (__len[0])
    {
      v171 = __len[1];
      if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_318;
      }

      v196 = *(v148 + 32 * BYTE5(v286));
      if (__len[1] >= 0x17)
      {
        operator new();
      }

      HIBYTE(v258) = __len[1];
      if (__len[1])
      {
        memmove(__dst, __len[0], __len[1]);
      }

      v170 = v196;
      *(__dst + v171) = 0;
    }

    else
    {
      __dst[1] = 0;
      __dst[0] = 0;
      v258 = 0;
    }

    AGCLLVMAirImageBlockGen3::unpackImageBlockData(a1, v280, v170, __dst);
    if (SHIBYTE(v258) < 0)
    {
      operator delete(__dst[0]);
    }

    if ((v200 & 0x10000) != 0)
    {
      v173 = llvm::ConstantInt::get();
      v298 = 257;
      v280[0] = llvm::IRBuilderBase::CreateAdd((a1 + 8), v173, v280[0], v295);
    }

LABEL_259:
    v280[1] = AGCLLVMAirImageBlockGen3::getImageBlockSampleMask(a1, &v284, v33, v203, v199);
    if (BYTE4(v286) != 255)
    {
      *(a1 + 1040) = 1;
    }

    v254 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v255, (a1 + 8));
    v256 = *(a1 + 104);
    v174 = AGCLLVMAirImageBlockGen3::buildEmulatedRTZConversion(a1, &v254, v115, v280);
    if (v255)
    {
      llvm::MetadataTracking::untrack();
    }

    v295[1] = 0;
    v295[0] = 0;
    v297 = 0;
    v296 = 0;
    if ((a3 & 0x10000) != 0)
    {
      v177 = llvm::ConstantInt::get();
      if (!v124)
      {
        goto LABEL_276;
      }
    }

    else
    {
      v175 = *(a1 + 472);
      v176 = *(*v175 - 24);
      v251 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v252, (a1 + 8));
      v253 = *(a1 + 104);
      v177 = AGCLLVMObject::buildReadDynamicLIBSize(v175 + v176, &v251);
      if (v252)
      {
        llvm::MetadataTracking::untrack();
      }

      if (!v124)
      {
        goto LABEL_276;
      }
    }

    (*(**(a1 + 464) + 688))(*(a1 + 464));
    v178 = *v174;
    if (*(*v174 + 8) == 15)
    {
      v178 = **(v178 + 2);
    }

    if ((~(-1 << llvm::DataLayout::getABITypeAlign((a1 + 480), v178)) & v124) != 0)
    {
      v179 = (*(**(a1 + 464) + 688))(*(a1 + 464));
      v248 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v249, (a1 + 8));
      v250 = *(a1 + 104);
      AGCLLVMGen3TargetLowerer::splitUnalignedStore(v306, v179, &v248, 0, v203, v177, v174, v280[0], *(&v281 + 1), 0, v280[1], v281);
      *v295 = *v306;
      llvm::TrackingMDRef::operator=(&v296, &v306[16]);
      v297 = *&v306[24];
      if (*&v306[16])
      {
        llvm::MetadataTracking::untrack();
      }

      v32 = v200;
      if (!v249)
      {
        goto LABEL_288;
      }

LABEL_287:
      llvm::MetadataTracking::untrack();
LABEL_288:
      if (v295[0])
      {
        v239 = *v295;
        v240 = v296;
        if (v296)
        {
          llvm::MetadataTracking::track();
        }

        v241 = v297;
        AGCLLVMBuilder::InsertPoint::restoreIP(&v239, a1 + 8);
        if (v240)
        {
          llvm::MetadataTracking::untrack();
        }
      }

      if (v296)
      {
        llvm::MetadataTracking::untrack();
      }

      if (SBYTE7(v283[0]) < 0)
      {
        operator delete(v282[0]);
      }

      goto LABEL_249;
    }

LABEL_276:
    v180 = *(a1 + 464);
    v245 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v246, (a1 + 8));
    v247 = *(a1 + 104);
    v181 = (*(*v180 + 208))(v180, &v245, *(&v281 + 1));
    if (v246)
    {
      llvm::MetadataTracking::untrack();
    }

    v182 = (*(**(a1 + 464) + 688))(*(a1 + 464));
    v242 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v243, (a1 + 8));
    v244 = *(a1 + 104);
    if ((SBYTE7(v283[0]) & 0x80u) == 0)
    {
      v183 = v282;
    }

    else
    {
      v183 = v282[0];
    }

    if ((SBYTE7(v283[0]) & 0x80u) == 0)
    {
      v184 = SBYTE7(v283[0]);
    }

    else
    {
      v184 = v282[1];
    }

    AGCLLVMGen3TargetLowerer::buildWriteOutputPartitionFromIR(v306, v182, &v242, v183, v184, v203, v177, v174, v280[0], LODWORD(v283[1]) == 1, *(&v281 + 1), v181, v280[1], v281, SBYTE4(v283[1]));
    *v295 = *v306;
    llvm::TrackingMDRef::operator=(&v296, &v306[16]);
    v297 = *&v306[24];
    v32 = v200;
    if (*&v306[16])
    {
      llvm::MetadataTracking::untrack();
    }

    if (!v243)
    {
      goto LABEL_288;
    }

    goto LABEL_287;
  }

  *&v281 = *(v33 - 32 * (*(v33 + 20) & 0x7FFFFFF) + 32 * BYTE1(v286));
  v116 = *(v33 - 32 * (*(v33 + 20) & 0x7FFFFFF) + 32 * v286);
  v117 = (v116 + 24);
  if (*(v116 + 32) >= 0x41u)
  {
    v117 = *v117;
  }

  v118 = *v117;
  if (AGCLLVMAirImageBlockGen3::getImageBlockOffsetAndFormatFromDrawBuffer(a1, v280, v198, *v117))
  {
    BYTE4(v283[1]) = 1;
    LODWORD(v283[1]) = *(v299 + v118);
    v119 = *(v198 + 4 * v118);
    if ((v119 & 0x1F) == 0x17)
    {
      goto LABEL_317;
    }

    if ((v119 & 0xE00) == 0xC00)
    {
      v120 = *v115;
      memset(v306, 0, sizeof(v306));
      *v306 = llvm::ConstantInt::get();
      *&v306[8] = llvm::ConstantInt::get();
      *&v306[16] = llvm::ConstantInt::get();
      *&v306[24] = llvm::ConstantInt::get();
      v122 = llvm::Constant::getNullValue(v120, v121);
      v123 = llvm::ConstantVector::get();
      v298 = 257;
      v115 = llvm::IRBuilderBase::CreateShuffleVector((a1 + 8), v115, v122, v123, v295);
    }

    v124 = 0;
    goto LABEL_259;
  }

  std::to_string(v306, v118);
  v186 = std::string::insert(v306, 0, "Invalid pixel format for render target ");
  v187 = v186->__r_.__value_.__r.__words[2];
  *v295 = *&v186->__r_.__value_.__l.__data_;
  v296 = v187;
  v186->__r_.__value_.__l.__size_ = 0;
  v186->__r_.__value_.__r.__words[2] = 0;
  v186->__r_.__value_.__r.__words[0] = 0;
  if (v296 >= 0)
  {
    v188 = v295;
  }

  else
  {
    v188 = v295[0];
  }

  if (v296 >= 0)
  {
    v189 = HIBYTE(v296);
  }

  else
  {
    v189 = v295[1];
  }

  std::string::append(a2, v188, v189);
  if (SHIBYTE(v296) < 0)
  {
    operator delete(v295[0]);
  }

  if ((v306[23] & 0x80000000) != 0)
  {
    operator delete(*v306);
  }

  if (SBYTE7(v283[0]) < 0)
  {
    operator delete(v282[0]);
  }

LABEL_314:
  v201 = 0;
LABEL_297:
  if (v299 != v301)
  {
    free(v299);
  }

  if (v303 != v305)
  {
    free(v303);
  }

  return v201;
}

uint64_t AGCLLVMAirImageBlockGen3::getRTZModeFromImageBlockUser(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SampleFunctionMap = AGCLLVMUserObject::getSampleFunctionMap(*(*(a1 + 472) + 4448));
  v7 = *(a3 + 8);
  if (!v7)
  {
    return 0;
  }

  v8 = SampleFunctionMap;
  while (1)
  {
    v9 = *(v7 + 24);
    if (v9 && *(v9 + 16) == 84)
    {
      v10 = *(v9 - 32);
      if (!v10 || *(v10 + 16) || *(v10 + 24) != *(v9 + 72))
      {
        v10 = 0;
      }

      llvm::Value::getName(v10);
      Key = llvm::StringMapImpl::FindKey();
      if (Key != -1 && Key != *(v8 + 2))
      {
        v12 = *(*v8 + 8 * Key);
        if (*(v12 + 8) == 8)
        {
          break;
        }
      }
    }

    v7 = *(v7 + 8);
    if (!v7)
    {
      return 0;
    }
  }

  DefaultRoundingMode = *(v12 + 32);
  *(a2 + 56) = *(v9 - 32 * (*(v9 + 20) & 0x7FFFFFF) + 32 * *(v12 + 38));
  if (!DefaultRoundingMode)
  {
    DefaultRoundingMode = AGCLLVMObject::getDefaultRoundingMode((*(a1 + 472) + *(**(a1 + 472) - 24)));
  }

  *(a2 + 64) = AGCLLVMTargetLowerer::getRTZMode(*(a1 + 464), DefaultRoundingMode);
  return 1;
}

uint64_t AGCLLVMAirImageBlockGen3::getImageBlockSampleMask(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _BOOL8 a4, uint64_t a5)
{
  v6 = a2[36];
  if (v6 != 255)
  {
    return *(a3 - 32 * (*(a3 + 20) & 0x7FFFFFF) + 32 * v6);
  }

  v13 = a3 - 32 * (*(a3 + 20) & 0x7FFFFFF);
  v14 = *(v13 + 32 * a2[34]);
  v15 = (v14 + 24);
  if (*(v14 + 32) >= 0x41u)
  {
    v15 = *v15;
  }

  v16 = *v15;
  if (v16 == 2)
  {
    v21 = *(v13 + 32 * a2[35]);
    v22 = llvm::ConstantInt::get();
    v27 = 257;
    Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v22, v21, v26);
    v24 = *v21;
    v25[16] = 257;
    return llvm::IRBuilderBase::CreateCast(a1 + 8, 39, Shl, v24, v25);
  }

  if (v16 == 1)
  {
    v17 = *(v13 + 32 * a2[35]);
    v18 = *(a1 + 464);
    v31 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v32, (a1 + 8));
    v33 = *(a1 + 104);
    v19 = (*(*v18 + 216))(v18, &v31, *(a3 - 32 * (*(a3 + 20) & 0x7FFFFFF) + 32 * a2[33]), a4, a5);
    if (v32)
    {
      llvm::MetadataTracking::untrack();
    }

    v20 = (*(**(a1 + 464) + 688))(*(a1 + 464));
    v28 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v29, (a1 + 8));
    v30 = *(a1 + 104);
    v7 = AGCLLVMGen3TargetLowerer::buildExtractColorCoverageMask(v20, &v28, v19, v17);
    if (v29)
    {
      llvm::MetadataTracking::untrack();
    }

    return v7;
  }

  if (v16)
  {
    return 0;
  }

  return llvm::ConstantInt::get();
}

llvm::Value *AGCLLVMAirImageBlockGen3::getImageBlockOffsetAndFormatFromDrawBuffer(uint64_t a1, uint64_t a2, uint64_t a3, _BOOL4 a4)
{
  v4 = *(a3 + 4 * a4);
  if ((v4 & 0x1F) != 0x17)
  {
    if ((v4 & 0x100) != 0)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4 & 0x1F;
    }

    if (!v5)
    {
      return (v5 != 0);
    }

    if ((~v4 & 0xFF000) != 0)
    {
      v7 = llvm::ConstantInt::get();
      v8 = 0;
      *a2 = v7;
      v9 = v4 >> 5;
      v10 = "i8";
      v11 = "8unorm";
      switch(v5)
      {
        case 1:
          v8 = "srgba8unorm";
          goto LABEL_21;
        case 2:
          v11 = "8snorm";
          goto LABEL_18;
        case 3:
          goto LABEL_18;
        case 4:
        case 5:
          goto LABEL_13;
        case 6:
          v11 = "16snorm";
          goto LABEL_18;
        case 7:
          v11 = "16unorm";
LABEL_18:
          memset(&v17, 0, sizeof(v17));
          std::string::append(&v17, off_277E20ED8[v9 - 1]);
          v8 = v11;
          goto LABEL_22;
        case 8:
        case 9:
          v10 = "i16";
          goto LABEL_13;
        case 10:
        case 11:
          v10 = "i32";
          goto LABEL_13;
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
        case 22:
          v10 = "f16";
          goto LABEL_13;
        case 17:
          v10 = "f32";
LABEL_13:
          memset(&v17, 0, sizeof(v17));
          std::string::append(&v17, *(&off_277E20EF8 + (v9 - 1)));
          v8 = v10;
          goto LABEL_22;
        case 19:
          v8 = "rgb10a2";
          goto LABEL_21;
        case 20:
          v8 = "rgb9e5";
          goto LABEL_21;
        case 21:
          v8 = "rg11b10f";
          goto LABEL_21;
        default:
LABEL_21:
          memset(&v17, 0, sizeof(v17));
LABEL_22:
          std::string::append(&v17, v8);
          if (*(a2 + 55) < 0)
          {
            operator delete(*(a2 + 32));
          }

          *(a2 + 32) = v17;
          *(a2 + 24) = llvm::ConstantInt::get();
          break;
      }

      return (v5 != 0);
    }
  }

  v13 = std::__throw_bad_optional_access[abi:nn200100]();
  return AGCLLVMAirImageBlockGen3::unpackImageBlockData(v13, v14, v15, v16);
}

llvm::Value *AGCLLVMAirImageBlockGen3::unpackImageBlockData(llvm::ConstantInt **a1, uint64_t a2, llvm::Instruction *a3, uint64_t a4)
{
  AGCLLVMAirImageBlockGen3::extractConstantImageBlockData(v19, a1, a3);
  v8 = v19[1];
  *a2 = v19[0];
  *(a2 + 16) = v8;
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  *(a2 + 32) = v20;
  v9 = v22[0];
  *(a2 + 48) = v21;
  *(a2 + 56) = v9;
  *(a2 + 61) = *(v22 + 5);
  v10 = *(a4 + 23);
  if (v10 < 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10)
  {
    std::string::operator=((a2 + 32), a4);
  }

  v11 = a1[26];
  LOWORD(v20) = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 47, a3, v11, v19);
  v13 = a1[41];
  v18[16] = 257;
  result = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, Cast, v13, v18);
  v15 = result;
  if (!*a2)
  {
    LOWORD(v20) = 257;
    v16 = llvm::ConstantInt::get();
    result = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v15, v16, v19);
    *a2 = result;
  }

  if (!*(a2 + 16))
  {
    result = AGCLLVMBuilder::subrangeVector(a1, v15, 1u, 2, 1);
    *(a2 + 16) = result;
  }

  if (!*(a2 + 8))
  {
    LOWORD(v20) = 257;
    v17 = llvm::ConstantInt::get();
    result = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v15, v17, v19);
    *(a2 + 8) = result;
  }

  return result;
}

llvm::Type **AGCLLVMAirImageBlockGen3::buildEmulatedRTZConversion(uint64_t a1, __int128 *a2, llvm::Type **a3, uint64_t a4)
{
  Select = a3;
  v51[8] = *MEMORY[0x277D85DE8];
  v8 = *a3;
  if ((*(*a3 + 2) & 0xFE) == 0x12)
  {
    v8 = **(v8 + 2);
  }

  if (v8 != *(a1 + 168))
  {
    return Select;
  }

  v9 = *(a4 + 64);
  if ((v9 & 0xFFFFFFFE) != 2)
  {
    return Select;
  }

  v46 = *a2;
  v47 = *(a2 + 2);
  if (v47)
  {
    llvm::MetadataTracking::track();
  }

  v48 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v46, a1 + 8);
  if (v47)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = v9 == 3;
  v11 = *(a1 + 464);
  v43 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v44, (a1 + 8));
  v45 = *(a1 + 104);
  v12 = AGCLLVMTargetLowerer::buildRTZF16Value(v11, &v43, Select, v10);
  if (v44)
  {
    llvm::MetadataTracking::untrack();
  }

  v13 = (a4 + 32);
  v14 = *(a4 + 55);
  if (v14 < 0)
  {
    v14 = *(a4 + 40);
    if (!v14)
    {
LABEL_25:
      v19 = *(a1 + 56);
      if (*(v12 + 16) <= 0x1Bu)
      {
        v20 = 0;
      }

      else
      {
        v20 = v12;
      }

      v39 = v20;
      v49 = v51;
      v50 = 0x800000000;
      v21 = *(a4 + 56);
      if (v21)
      {
        if (*(v21 + 16) >= 0x1Cu)
        {
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v49, v21);
          v22 = v50;
          if (v50)
          {
            v23 = (v19 + 40);
            do
            {
              v24 = *(v49 + --v22);
              LODWORD(v50) = v22;
              v25 = *v23;
              if (*v23 != v23)
              {
                v26 = (v25 - 3);
                if (v25)
                {
                  v27 = v25 - 3;
                }

                else
                {
                  v27 = 0;
                }

                if (*(v27 + 16) - 29 <= 0xA)
                {
                  NumSuccessors = llvm::Instruction::getNumSuccessors((v25 - 3));
                  if (NumSuccessors)
                  {
                    v29 = NumSuccessors;
                    v30 = 0;
                    while (*(v24 + 40) != llvm::Instruction::getSuccessor(v26))
                    {
                      if (v29 == ++v30)
                      {
                        goto LABEL_54;
                      }
                    }

                    llvm::Instruction::moveAfter(v24, v39);
                    v31 = *(v24 + 20);
                    if ((v31 & 0x40000000) != 0)
                    {
                      v33 = *(v24 - 8);
                      v32 = v31 & 0x7FFFFFF;
                    }

                    else
                    {
                      v32 = v31 & 0x7FFFFFF;
                      v33 = (v24 - 32 * v32);
                    }

                    if (v32)
                    {
                      v34 = 32 * v32;
                      do
                      {
                        if (*v33)
                        {
                          v35 = *(*v33 + 16) >= 0x1Cu;
                        }

                        else
                        {
                          v35 = 0;
                        }

                        if (v35)
                        {
                          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v49, *v33);
                        }

                        v33 += 4;
                        v34 -= 32;
                      }

                      while (v34);
                    }
                  }
                }

LABEL_54:
                v22 = v50;
              }
            }

            while (v22);
          }
        }
      }

      v36 = *(a1 + 472);
      v40 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v41, (a1 + 8));
      v42 = *(a1 + 104);
      AGCLLVMUserObject::buildEmulatedIsF16Format(v36, &v40, *(a4 + 56));
      if (v41)
      {
        llvm::MetadataTracking::untrack();
      }

      Select = llvm::IRBuilderBase::CreateSelect();
      if (v49 != v51)
      {
        free(v49);
      }

      return Select;
    }

    v13 = *v13;
  }

  else if (!*(a4 + 55))
  {
    goto LABEL_25;
  }

  if (v14 >= 3)
  {
    v15 = v13 + v14;
    v16 = v13;
    do
    {
      v17 = memchr(v16, 102, v14 - 2);
      if (!v17)
      {
        break;
      }

      if (*v17 == 12646 && v17[2] == 54)
      {
        if (v17 - v13 == -1)
        {
          v37 = Select;
        }

        else
        {
          v37 = v12;
        }

        if (v17 != v15)
        {
          return v37;
        }

        return Select;
      }

      v16 = v17 + 1;
      v14 = v15 - v16;
    }

    while (v15 - v16 >= 3);
  }

  return Select;
}

void AGCLLVMAirImageBlockGen3::extractConstantImageBlockData(AGCLLVMAirImageBlockGen3 *this, llvm::Value *a2, llvm::Instruction *a3)
{
  v87 = *MEMORY[0x277D85DE8];
  memset(v84, 0, sizeof(v84));
  v82 = 0u;
  v83 = 0u;
  v85 = 0;
  v86 = 0;
  v6 = *(a2 + 232);
  if (v6)
  {
    v7 = *(a2 + 114);
    v8 = ((a3 >> 4) ^ (a3 >> 9)) & (v6 - 1);
    v9 = v7 + 112 * v8;
    v10 = *(v9 + 24);
    if (v10 == a3)
    {
LABEL_3:
      if (v9 != v7 + 112 * v6)
      {
        v11 = *(v9 + 56);
        *this = *(v9 + 40);
        *(this + 1) = v11;
        if (*(v9 + 95) < 0)
        {
          std::string::__init_copy_ctor_external((this + 32), *(v9 + 72), *(v9 + 80));
        }

        else
        {
          *(this + 2) = *(v9 + 72);
          *(this + 6) = *(v9 + 88);
        }

        *(this + 7) = *(v9 + 96);
        *(this + 61) = *(v9 + 101);
        return;
      }
    }

    else
    {
      v12 = 1;
      while (v10 != -4096)
      {
        v13 = v8 + v12++;
        v8 = v13 & (v6 - 1);
        v9 = v7 + 112 * v8;
        v10 = *(v9 + 24);
        if (v10 == a3)
        {
          goto LABEL_3;
        }
      }
    }
  }

  v67 = a2 + 912;
  v79 = *(a2 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v80, (a2 + 8));
  v81 = *(a2 + 26);
  if (a3 && *(a3 + 16) >= 0x1Cu)
  {
    llvm::IRBuilderBase::SetInsertPoint((a2 + 8), a3);
  }

  v14 = 0;
  v15 = 0;
  v16 = a3;
  while (2)
  {
    v66 = v15;
    if (v14)
    {
LABEL_17:
      RTZModeFromImageBlockUser = 1;
      goto LABEL_19;
    }

    while (1)
    {
      RTZModeFromImageBlockUser = AGCLLVMAirImageBlockGen3::getRTZModeFromImageBlockUser(a2, &v82, v16);
LABEL_19:
      v18 = v16[16];
      if (v18 == 83 && v16 != 0)
      {
        imp = llvm::SmallPtrSetImplBase::find_imp(a2 + 122, v16);
        v42 = *(a2 + 123);
        v43 = 16;
        if (v42 == *(a2 + 122))
        {
          v43 = 20;
        }

        if (imp == (v42 + 8 * *(a2 + v43 + 976)))
        {
          llvm::SmallPtrSetImpl<void *>::insert(&v75, (a2 + 976), v16);
          *v77 = 0u;
          memset(v78, 0, 21);
          v75 = 0u;
          v76 = 0u;
          v45 = *(v16 + 5);
          v46 = v45 & 0x7FFFFFF;
          if ((v45 & 0x7FFFFFF) != 0)
          {
            v47 = 0;
            v48 = 0;
            v49 = 1;
            do
            {
              if ((v45 & 0x40000000) != 0)
              {
                v50 = *(v16 - 1);
              }

              else
              {
                v50 = &v16[-32 * v46];
              }

              v51 = *&v50[v47];
              if (v51 != v16)
              {
                AGCLLVMAirImageBlockGen3::extractConstantImageBlockData(&v71, a2, v51);
                if (v49)
                {
                  v75 = v71;
                  v76 = v72;
                  std::string::operator=(v77, &__p);
                  v78[1] = v74[0];
                  *(&v78[1] + 5) = *(v74 + 5);
                }

                else
                {
                  if (v71 != v75)
                  {
                    *&v75 = 0;
                  }

                  if (v72 != v76)
                  {
                    *&v76 = 0;
                  }

                  if (*(&v71 + 1) != *(&v75 + 1))
                  {
                    *(&v75 + 1) = 0;
                  }
                }

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                v49 = 0;
                v45 = *(v16 + 5);
              }

              ++v48;
              v46 = v45 & 0x7FFFFFF;
              v47 += 32;
            }

            while (v48 < v46);
          }

          llvm::SmallPtrSetImplBase::erase_imp(a2 + 122, v16);
          if (!v82)
          {
            v52 = v75;
            if (v75)
            {
              v53 = llvm::ConstantInt::get();
              LOWORD(__p.__r_.__value_.__l.__data_) = 257;
              *&v82 = llvm::IRBuilderBase::CreateAdd((a2 + 8), v52, v53, &v71);
            }
          }

          if (!v83 && v76)
          {
            *&v83 = v76;
          }

          if (!*(&v82 + 1) && *(&v75 + 1))
          {
            *(&v82 + 1) = *(&v75 + 1);
          }

          if (SHIBYTE(v78[0]) < 0)
          {
            operator delete(v77[0]);
          }
        }

        else
        {
          v44 = 0uLL;
          v82 = 0u;
          v83 = 0u;
          if ((v84[23] & 0x80000000) != 0)
          {
            operator delete(*v84);
            v44 = 0uLL;
          }

          *&v84[29] = 0;
          *v84 = v44;
          *&v84[16] = v44;
        }

        goto LABEL_109;
      }

      if (v18 - 78 < 0xFFFFFFFE || v16 == 0)
      {
        break;
      }

LABEL_60:
      v24 = *(v16 + 5);
      if ((v24 & 0x40000000) != 0)
      {
        v38 = *(v16 - 1);
        goto LABEL_63;
      }

LABEL_61:
      v38 = &v16[-32 * (v24 & 0x7FFFFFF)];
LABEL_63:
      v16 = *v38;
      if (RTZModeFromImageBlockUser)
      {
        goto LABEL_17;
      }
    }

    if (v18 == 5 && v16 != 0)
    {
      if ((*(v16 + 9) & 0xFFFE) != 0x30)
      {
        goto LABEL_109;
      }

      v24 = *(v16 + 5);
      goto LABEL_61;
    }

    if (v18 == 62 && v16)
    {
      if (*(v16 + 9) != *(a2 + 23))
      {
        goto LABEL_109;
      }

      if ((*(v16 + 5) & 0x7FFFFFF) != 2)
      {
        goto LABEL_109;
      }

      v39 = *(v16 - 4);
      if (*(v39 + 16) != 16)
      {
        goto LABEL_109;
      }

      v40 = (v39 + 24);
      if (*(v39 + 32) >= 0x41u)
      {
        v40 = *v40;
      }

      v16 = *(v16 - 8);
      v15 = v66 + *v40;
      v14 = 1;
      continue;
    }

    break;
  }

  if (v18 == 90 && v16)
  {
    v22 = *(v16 + 5);
    if ((v22 & 0x40000000) != 0)
    {
      v23 = *(v16 - 1);
    }

    else
    {
      v23 = &v16[-32 * (v22 & 0x7FFFFFF)];
    }

    if (**v23 != *(a2 + 41))
    {
      goto LABEL_109;
    }

    v25 = *(v23 + 8);
    if (*(v25 + 16) != 16)
    {
      goto LABEL_109;
    }

    v26 = (v25 + 24);
    if (*(v25 + 32) >= 0x41u)
    {
      v26 = *v26;
    }

    v27 = *(v23 + 4);
    v28 = *v26;
    if ((*v26 - 1) < 2)
    {
      v30 = &v85 + v28;
      v31 = *(v30 - 1);
      if (!v31)
      {
        v31 = v27;
      }

      *(v30 - 1) = v31;
      if (!v83)
      {
        v32 = v85;
        if (v85)
        {
          v33 = v86;
          if (v86)
          {
            v34 = llvm::UndefValue::get();
            LOWORD(v77[0]) = 257;
            v35 = llvm::ConstantInt::get();
            InsertElement = llvm::IRBuilderBase::CreateInsertElement((a2 + 8), v34, v32, v35, &v75);
            LOWORD(__p.__r_.__value_.__l.__data_) = 257;
            v37 = llvm::ConstantInt::get();
            *&v83 = llvm::IRBuilderBase::CreateInsertElement((a2 + 8), InsertElement, v33, v37, &v71);
          }
        }
      }
    }

    else if (v28 == 3)
    {
      if (!*(&v82 + 1))
      {
        *(&v82 + 1) = v27;
      }
    }

    else if (!v28 && !v82)
    {
      v29 = llvm::ConstantInt::get();
      LOWORD(v77[0]) = 257;
      *&v82 = llvm::IRBuilderBase::CreateAdd((a2 + 8), v27, v29, &v75);
    }

    goto LABEL_60;
  }

  if (v18 <= 0x14)
  {
    if (v16)
    {
      if (*v16 == *(a2 + 41))
      {
        AggregateElement = llvm::Constant::getAggregateElement(v16);
        if (AggregateElement)
        {
          if (llvm::Constant::isZeroValue(AggregateElement))
          {
            if (!v82)
            {
              *&v82 = llvm::ConstantInt::get();
            }

            v62 = v85;
            if (!v85)
            {
              v62 = llvm::Constant::getAggregateElement(v16);
              v85 = v62;
            }

            v63 = v86;
            if (!v86)
            {
              v63 = llvm::Constant::getAggregateElement(v16);
              v86 = v63;
              v62 = v85;
            }

            if (!v83 && v62 && v63)
            {
              v64 = llvm::UndefValue::get();
              LOWORD(v77[0]) = 257;
              v65 = AGCLLVMBuilder::CreateInsertElement(a2, v64, v62, 0, &v75);
              LOWORD(__p.__r_.__value_.__l.__data_) = 257;
              *&v83 = AGCLLVMBuilder::CreateInsertElement(a2, v65, v63, 1, &v71);
            }

            if (!*(&v82 + 1))
            {
              *(&v82 + 1) = llvm::Constant::getAggregateElement(v16);
            }
          }
        }
      }
    }
  }

LABEL_109:
  v68 = v79;
  v69 = v80;
  if (v80)
  {
    llvm::MetadataTracking::track();
  }

  v70 = v81;
  AGCLLVMBuilder::InsertPoint::restoreIP(&v68, a2 + 8);
  if (v69)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::CallbackVH::CallbackVH(&v75, a3);
  *&v75 = &unk_2825A7200;
  v77[0] = v67;
  *&v71 = 0;
  v54 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(*(a2 + 114), *(a2 + 232), *(&v76 + 1), &v71);
  v55 = v71;
  if ((v54 & 1) == 0)
  {
    v55 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(v67, &v75, v71);
    llvm::ValueHandleBase::operator=((v55 + 8), &v75 + 1);
    *(v55 + 32) = v77[0];
    *(v55 + 40) = 0u;
    *(v55 + 56) = 0u;
    *(v55 + 72) = 0u;
    *(v55 + 88) = 0u;
    *(v55 + 101) = 0;
  }

  if (*(&v76 + 1) != -8192 && *(&v76 + 1) != -4096 && *(&v76 + 1))
  {
    llvm::ValueHandleBase::RemoveFromUseList((&v75 + 8));
  }

  v56 = v83;
  *(v55 + 40) = v82;
  *(v55 + 56) = v56;
  std::string::operator=((v55 + 72), v84);
  v58 = *&v84[16];
  v57 = *&v84[24];
  *(v55 + 96) = *&v84[24];
  v59 = *&v84[29];
  *(v55 + 101) = *&v84[29];
  v60 = v83;
  *this = v82;
  *(this + 1) = v60;
  *(this + 2) = *v84;
  memset(v84, 0, 24);
  *(this + 61) = v59;
  *(this + 6) = v58;
  *(this + 7) = v57;
  if (v80)
  {
    llvm::MetadataTracking::untrack();
    if ((v84[23] & 0x80000000) != 0)
    {
      operator delete(*v84);
    }
  }
}

void std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMAirImageBlock::initializeImageBlockMaps(void)::$_0 &&>>()
{
  v44 = *MEMORY[0x277D85DE8];
  *&v40[12] = 0;
  *&v40[4] = 0;
  v0 = *llvm::StringMap<AGCLLVMAirImageBlock::AIRImageBlockFunction,llvm::MallocAllocator>::try_emplace<>("air.imageblock_data", 0x13uLL);
  *(v0 + 8) = 0x300000000;
  *(v0 + 16) = 2;
  *(v0 + 36) = *&v40[16];
  *(v0 + 20) = *v40;
  *(v0 + 40) = -4261347073;
  *&v40[12] = 0;
  *&v40[4] = 0;
  v1 = *llvm::StringMap<AGCLLVMAirImageBlock::AIRImageBlockFunction,llvm::MallocAllocator>::try_emplace<>("air.implicit_imageblock_data", 0x1CuLL);
  *(v1 + 8) = 0x300000001;
  *(v1 + 16) = 2;
  *(v1 + 36) = *&v40[16];
  *(v1 + 20) = *v40;
  *(v1 + 40) = -4244504320;
  *&v40[12] = 0;
  *&v40[4] = 0;
  v2 = *llvm::StringMap<AGCLLVMAirImageBlock::AIRImageBlockFunction,llvm::MallocAllocator>::try_emplace<>("air.get_imageblock_width", 0x18uLL);
  *(v2 + 8) = 2;
  *(v2 + 16) = 2;
  *(v2 + 36) = *&v40[16];
  *(v2 + 20) = *v40;
  *(v2 + 40) = -1;
  *&v40[12] = 0;
  *&v40[4] = 0;
  v3 = *llvm::StringMap<AGCLLVMAirImageBlock::AIRImageBlockFunction,llvm::MallocAllocator>::try_emplace<>("air.get_imageblock_height", 0x19uLL);
  *(v3 + 8) = 0x100000002;
  *(v3 + 16) = 2;
  *(v3 + 36) = *&v40[16];
  *(v3 + 20) = *v40;
  *(v3 + 40) = -1;
  *&v40[12] = 0;
  *&v40[4] = 0;
  v4 = *llvm::StringMap<AGCLLVMAirImageBlock::AIRImageBlockFunction,llvm::MallocAllocator>::try_emplace<>("air.get_imageblock_samples", 0x1AuLL);
  *(v4 + 8) = 0x200000002;
  *(v4 + 16) = 2;
  *(v4 + 36) = *&v40[16];
  *(v4 + 20) = *v40;
  *(v4 + 40) = -1;
  *&v40[12] = 0;
  *&v40[4] = 0;
  v5 = *llvm::StringMap<AGCLLVMAirImageBlock::AIRImageBlockFunction,llvm::MallocAllocator>::try_emplace<>("air.get_imageblock_num_colors", 0x1DuLL);
  *(v5 + 8) = 0x300000005;
  *(v5 + 16) = 0;
  *(v5 + 36) = *&v40[16];
  *(v5 + 20) = *v40;
  *(v5 + 40) = -1;
  *&v40[12] = 0;
  *&v40[4] = 0;
  v6 = *llvm::StringMap<AGCLLVMAirImageBlock::AIRImageBlockFunction,llvm::MallocAllocator>::try_emplace<>("air.get_color_coverage_mask", 0x1BuLL);
  *(v6 + 8) = 0x300000005;
  v7 = 1;
  *(v6 + 16) = 1;
  *(v6 + 36) = *&v40[16];
  *(v6 + 20) = *v40;
  *(v6 + 40) = -1;
  std::string::basic_string[abi:nn200100]<0>(v43, ".imageblock");
  std::string::basic_string[abi:nn200100]<0>(v43[1].__r_.__value_.__r.__words, ".implicit_imageblock");
  std::string::basic_string[abi:nn200100]<0>(v42, ".mask");
  std::string::basic_string[abi:nn200100]<0>(v42[1].__r_.__value_.__r.__words, &unk_20E75F419);
  v8 = 0;
  *v40 = v41;
  *&v40[8] = xmmword_20E70C500;
  v9 = "air.load";
  v10 = &AGCLLVMAirImageBlock::initializeImageBlockMaps(void)::$_0::operator() const(void)::op_types;
  do
  {
    v36 = v7;
    v11 = 0;
    v35 = v8;
    v12 = *(v10 + 2);
    v13 = ".i8";
    do
    {
      v37 = v11;
      v14 = v43;
      v15 = 1;
      do
      {
        v38 = v15;
        v39 = std::string::compare(v14, ".imageblock");
        if (v12 != 3 || v39)
        {
          v16 = v42;
          v17 = 1;
          do
          {
            v18 = v17;
            v19 = std::string::compare(v16, ".mask");
            v20 = v19;
            if (v12 != 3 || v19)
            {
              v21 = strlen(v9);
              *&v40[8] = 0;
              llvm::SmallVectorImpl<char>::append<char const*,void>(v40, v9, &v9[v21]);
              size = SHIBYTE(v14->__r_.__value_.__r.__words[2]);
              if (size >= 0)
              {
                v23 = v14;
              }

              else
              {
                v23 = v14->__r_.__value_.__r.__words[0];
              }

              if (size < 0)
              {
                size = v14->__r_.__value_.__l.__size_;
              }

              llvm::SmallVectorImpl<char>::append<char const*,void>(v40, v23, v23 + size);
              v24 = SHIBYTE(v16->__r_.__value_.__r.__words[2]);
              if (v24 >= 0)
              {
                v25 = v16;
              }

              else
              {
                v25 = v16->__r_.__value_.__r.__words[0];
              }

              if (v24 < 0)
              {
                v24 = v16->__r_.__value_.__l.__size_;
              }

              llvm::SmallVectorImpl<char>::append<char const*,void>(v40, v25, v25 + v24);
              v26 = strlen(v13);
              llvm::SmallVectorImpl<char>::append<char const*,void>(v40, v13, &v13[v26]);
              v27 = strlen(v13);
              if (v27)
              {
                v28 = v13 + 1;
              }

              else
              {
                v28 = v13;
              }

              if (v12 == 4)
              {
                v30 = 0xFF00FF03FFFF0201;
                if (v20)
                {
                  v30 = 0xFF00FFFF04030201;
                }

                if (v39)
                {
                  v29 = v30;
                }

                else
                {
                  v29 = 0x3000102FFFFFFFFLL;
                }
              }

              else if (v12 == 3)
              {
                v29 = -4244504320;
              }

              else
              {
                v29 = -1;
              }

              v31 = v27 - (v27 != 0);
              v32 = *llvm::StringMap<AGCLLVMAirImageBlock::AIRImageBlockFunction,llvm::MallocAllocator>::try_emplace<>(*v40, *&v40[8]);
              *(v32 + 8) = v12;
              *(v32 + 12) = 0x200000003;
              *(v32 + 24) = v28;
              *(v32 + 32) = v31;
              *(v32 + 40) = v29;
            }

            v17 = 0;
            v16 = &v42[1];
          }

          while ((v18 & 1) != 0);
        }

        v15 = 0;
        v14 = &v43[1];
      }

      while ((v38 & 1) != 0);
      v11 = v37 + 1;
      v13 = (&pixel_data_types)[2 * v37 + 2];
    }

    while (v37 != 14);
    v10 = &(&AGCLLVMAirImageBlock::initializeImageBlockMaps(void)::$_0::operator() const(void)::op_types)[2 * v36];
    v9 = *v10;
    v8 = 1;
    v7 = 2;
  }

  while ((v35 & 1) == 0);
  if (*v40 != v41)
  {
    free(*v40);
  }

  for (i = 0; i != -48; i -= 24)
  {
    if (SHIBYTE(v42[i / 0x18 + 1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42[i / 0x18 + 1].__r_.__value_.__l.__data_);
    }
  }

  for (j = 0; j != -48; j -= 24)
  {
    if (SHIBYTE(v43[j / 0x18 + 1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43[j / 0x18 + 1].__r_.__value_.__l.__data_);
    }
  }
}

uint64_t *llvm::StringMap<AGCLLVMAirImageBlock::AIRImageBlockFunction,llvm::MallocAllocator>::try_emplace<>(const void *a1, size_t a2)
{
  i = (AGCLLVMAirImageBlock::initializeImageBlockMaps(void)::image_block_function_map + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_27C8D8178) = qword_27C8D8178 - 1;
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

  v8 = MEMORY[0x20F330650](a2 + 49, 8);
  v9 = v8;
  v10 = v8 + 48;
  if (a2)
  {
    memcpy((v8 + 48), a1, a2);
  }

  *(v10 + a2) = 0;
  *v9 = a2;
  *(v9 + 8) = 0x300000006;
  *(v9 + 16) = 2;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 40) = -1;
  *i = v9;
  ++dword_27C8D8174;
    ;
  }

  return i;
}

uint64_t llvm::StringMap<AGCLLVMAirImageBlock::AIRImageBlockFunction,llvm::MallocAllocator>::~StringMap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
          llvm::deallocate_buffer(*v8, v8, *v8 + 49);
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

uint64_t AGCLLVMAirImageBlockGen3::replaceBulkMemWrites(AGCLLVMAirImageBlockGen3 *this, uint64_t a2, uint64_t a3, BOOL a4)
{
  v4 = *(this + 54);
  v5 = *(v4 + 32);
  v22 = v4 + 24;
  if (v5 != v4 + 24)
  {
    do
    {
      if (v5)
      {
        v7 = v5 - 56;
      }

      else
      {
        v7 = 0;
      }

      v23 = *(v5 + 8);
      v8 = *(v7 + 36);
      if ((v8 - 194) <= 5 && ((1 << (v8 + 62)) & 0x29) != 0)
      {
        if (*(v5 - 38))
        {
          llvm::Function::BuildLazyArguments((v5 - 56));
        }

        v10 = *(v5 + 32);
        v11 = *(*v10 + 8);
        if ((v11 & 0xFE) == 0x12)
        {
          v11 = *(**(*v10 + 16) + 8);
        }

        v12 = v10[5];
        if (*(v12 + 8) != 15)
        {
          v12 = 0;
        }

        if (v12)
        {
          v13 = *(v12 + 8);
          if ((v13 & 0xFE) == 0x12)
          {
            v13 = *(**(v12 + 16) + 8);
          }

          v14 = v13 >> 8;
        }

        else
        {
          v14 = 0;
        }

        v15 = v11 >> 8;
        if (v12)
        {
          v16 = v14 == 4;
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;
        if (v15 == 4 || v17 != 0)
        {
          v19 = *(v5 - 48);
          if (v19)
          {
            v20 = *(v19 + 24);
            llvm::ConstantInt::get();
            llvm::IRBuilderBase::SetInsertPoint((this + 8), v20);
            llvm::BasicBlock::splitBasicBlock();
            operator new();
          }
        }
      }

      v5 = v23;
    }

    while (v23 != v22);
  }

  return 1;
}

void AGCLLVMAirImageBlockGen3::AGCLLVMAirImageBlockGen3(AGCLLVMAirImageBlockGen3 *this, AGCLLVMUserObject *a2, llvm::LLVMContext **a3, AGCLLVMTargetLowerer *a4, const llvm::DataLayout *a5)
{
  v9 = (this + 492);
  AGCLLVMBuilder::AGCLLVMBuilder(this, *a3);
  v28 = a4;
  *(v10 + 464) = a4;
  *(v10 + 472) = a2;
  *(v9 + 28) = xmmword_20E70C6A0;
  *(v10 + 552) = 0x1000000000;
  *v10 = &unk_2825A7228;
  *(v10 + 488) = 0;
  *(v10 + 500) = 0;
  v11 = (v10 + 512);
  *(v10 + 512) = v10 + 536;
  v12 = (v10 + 544);
  *(v10 + 544) = v10 + 560;
  v13 = (v10 + 688);
  *(v10 + 688) = 0;
  *(v10 + 696) = 0u;
  *(v10 + 712) = v10 + 728;
  *(v10 + 720) = 0x800000000;
  *(v10 + 856) = 0;
  *(v10 + 864) = v10 + 880;
  *(v10 + 872) = 0x800000000;
  llvm::DataLayout::clear((v10 + 480));
  std::string::operator=(v13, (a5 + 208));
  *(this + 480) = *a5;
  *(this + 121) = *(a5 + 1);
  *(this + 244) = *(a5 + 4);
  *(this + 250) = *(a5 + 10);
  *v9 = *(a5 + 12);
  *(this + 63) = *(a5 + 3);
  v14 = (a5 + 32);
  if (v11 != (a5 + 32))
  {
    v15 = *(a5 + 5);
    v16 = *(v9 + 28);
    if (v16 >= v15)
    {
      if (v15)
      {
        memmove(*v11, *v14, *(a5 + 5));
      }
    }

    else
    {
      if (*(this + 66) < v15)
      {
        *(v9 + 28) = 0;
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      if (v16)
      {
        memmove(*v11, *v14, *(v9 + 28));
      }

      v17 = *(a5 + 5);
      if (v17 != v16)
      {
        memcpy(*v11 + v16, *v14 + v16, v17 - v16);
      }
    }

    *(v9 + 28) = v15;
  }

  v18 = (this + 712);
  v19 = (a5 + 64);
  if (v12 != (a5 + 64))
  {
    v20 = *(a5 + 18);
    v21 = *(this + 138);
    if (v21 >= v20)
    {
      if (v20)
      {
        memmove(*v12, *v19, 8 * v20 - 2);
      }
    }

    else
    {
      if (*(this + 139) < v20)
      {
        *(this + 138) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v21)
      {
        memmove(*v12, *v19, 8 * v21 - 2);
      }

      else
      {
        v21 = 0;
      }

      v22 = *(a5 + 18) - v21;
      if (v22)
      {
        memcpy(*v12 + 8 * v21, *v19 + 8 * v21, 8 * v22);
      }
    }

    *(this + 138) = v20;
  }

  v23 = (a5 + 232);
  if (v18 != (a5 + 232))
  {
    v24 = *(a5 + 60);
    v25 = *(this + 180);
    if (v25 >= v24)
    {
      if (v24)
      {
        memmove(*v18, *v23, 16 * v24);
      }
    }

    else
    {
      if (*(this + 181) < v24)
      {
        *(this + 180) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v25)
      {
        memmove(*v18, *v23, 16 * v25);
      }

      else
      {
        v25 = 0;
      }

      v26 = *(a5 + 60) - v25;
      if (v26)
      {
        memcpy(*v18 + 16 * v25, *v23 + 16 * v25, 16 * v26);
      }
    }

    *(this + 180) = v24;
  }

  llvm::SmallVectorImpl<unsigned int>::operator=(this + 864, a5 + 384);
  *(this + 54) = a3;
  *(this + 26) = *(v28 + 26);
  *this = &unk_2825A71C8;
  *(this + 232) = 128;
  *(this + 114) = MEMORY[0x20F330650](14336, 8);
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCLLVMAirImageBlockGen3::ImageBlockData,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCLLVMAirImageBlockGen3::ImageBlockData>>::initEmpty(this + 114);
  *(this + 936) = 0;
  *(this + 960) = 0;
  *(this + 122) = this + 1008;
  *(this + 123) = this + 1008;
  *(this + 124) = 4;
  *(this + 250) = 0;
  *(this + 1040) = 0;
}

BOOL AGCLLVMDriverIntersectionShader::constructReply(AGCLLVMDriverIntersectionShader *this)
{
  v2 = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (v2)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = this + *(*this - 24);
    v3[4358] = 1;
    v4 = *(v3 + 1082);
    v5 = *(v3 + 1080) - *(v3 + 1084);
    if (v3[4368] == 1)
    {
      v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>((v3 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v3 + 4288, 4, v6);
      if (v3[4368])
      {
        v7 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>((v3 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v3 + 4288, 6, v7);
      }
    }

    v8 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>((v3 + 4288), 1);
    flatbuffers::FlatBufferBuilder::TrackField(v3 + 4288, 8, v8);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v3 + 4288, 10, (**(this + 10) >> 10) & 7, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v3 + 4288, 12, **(this + 10) >> 13, 0);
    v9 = flatbuffers::FlatBufferBuilder::EndTable((v3 + 4288), v5 + v4);
    v10 = AGCLLVMObject::constructFlatReply((this + *(*this - 24)));
    v12 = flatbuffers::FlatBufferBuilder::EndTable(v10, v11);
    v13 = this + *(*this - 24);
    v13[4358] = 1;
    v14 = *(v13 + 1082);
    v15 = *(v13 + 1080) - *(v13 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::IntersectionFunctionInfo>((v13 + 4288), v9);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v13 + 4288), v12);
    v16 = *(*this - 24);
    v17 = flatbuffers::FlatBufferBuilder::EndTable((v13 + 4288), v15 + v14);
    flatbuffers::FlatBufferBuilder::Finish((this + v16 + 4288), v17, v18);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
  }

  return v2;
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::IntersectionFunctionInfo>(flatbuffers::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v4 = (*(v3 + 8) - *(v3 + 12) + *(v3 + 10) - v2 + 4);

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v3, 18, v4);
  }

  return result;
}

void AGCLLVMDriverIntersectionShader::getCompilationKeyDescription(AGCLLVMDriverIntersectionShader *this@<X0>, std::string *a2@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = *(this + 10);
  std::string::basic_string[abi:nn200100]<0>(v23, "AGCDriverIntersectionState");
  std::string::basic_string[abi:nn200100]<0>(v21, "primitiveType");
  _agcFieldString<unsigned int>(&v25, v21, *v3 & 0xF);
  std::string::basic_string[abi:nn200100]<0>(v19, "leafVariant");
  _agcFieldString<unsigned int>(&v26, v19, (*v3 >> 4) & 7);
  std::string::basic_string[abi:nn200100]<0>(v17, "payloadVariant");
  _agcFieldString<unsigned int>(&v27, v17, (*v3 >> 7) & 7);
  std::string::basic_string[abi:nn200100]<0>(v15, "threadsPerLeafPOT");
  _agcFieldString<unsigned int>(&v28, v15, (*v3 >> 10) & 7);
  std::string::basic_string[abi:nn200100]<0>(v13, "maxParallelLeavesPOT");
  _agcFieldString<unsigned int>(&v29, v13, *v3 >> 13);
  std::string::basic_string[abi:nn200100]<0>(v11, "disableTemporalSplits");
  _agcFieldString<unsigned int>(&v30, v11, HIWORD(*v3) & 1);
  std::string::basic_string[abi:nn200100]<0>(v9, "disableRIARTU");
  _agcFieldString<unsigned int>(&v31, v9, (*v3 >> 18) & 1);
  std::string::basic_string[abi:nn200100]<0>(v7, "disableRIARTT");
  _agcFieldString<unsigned int>(&v32, v7, (*v3 >> 19) & 1);
  std::string::basic_string[abi:nn200100]<0>(__p, "unused");
  _agcFieldString<unsigned int>(&v33, __p, *v3 >> 20);
  _agcGroupWithHeader(a2, v23, &v25, 9);
  for (i = 0; i != -27; i -= 3)
  {
    if (SHIBYTE(v33.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v33.__r_.__value_.__l.__data_ + i * 8));
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

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }
}

void AGCLLVMDriverIntersectionShader::wrapperName(AGCLLVMDriverIntersectionShader *this@<X0>, void *a2@<X8>)
{
  (*(**(this + *(*this - 24) + 2168) + 1352))(__p, *(this + *(*this - 24) + 2168), **(this + 10) & 0xF, (**(this + 10) >> 7) & 7, (**(this + 10) >> 4) & 7);
  if (v5 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  std::string::basic_string[abi:nn200100]<0>(a2, v3);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

const char *AGCLLVMDriverIntersectionShader::dumpType(AGCLLVMDriverIntersectionShader *this)
{
  v2 = *(this + *(*this - 24) + 2168);
  v3 = (*(*v2 + 1424))(v2, **(this + 10) & 0xF, (**(this + 10) >> 4) & 7);
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v3 == 3)
      {
        return "cliqueS-general-(driver)";
      }

      return "intersection-(driver)";
    }

    v5 = *(this + 10);
    result = "cliqueS-timesplit-intersection-(driver)";
    if (v5)
    {
      if ((*(v5 + 2) & 1) == 0)
      {
        return "cliqueS-temporal-split-intersection-(driver)";
      }
    }
  }

  else
  {
    if (v3)
    {
      if (v3 == 1)
      {
        return "cliqueS-pop-intersection-(driver)";
      }

      return "intersection-(driver)";
    }

    return "cliqueS-push-intersection-(driver)";
  }

  return result;
}

void virtual thunk toAGCLLVMDriverIntersectionShader::~AGCLLVMDriverIntersectionShader(AGCLLVMDriverIntersectionShader *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 88));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 88));
}

void non-virtual thunk toAGCLLVMDriverIntersectionShader::~AGCLLVMDriverIntersectionShader(AGCLLVMDriverIntersectionShader *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + 16));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + 16));
}

void AGCLLVMDriverIntersectionShader::~AGCLLVMDriverIntersectionShader(AGCLLVMDriverIntersectionShader *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + 88));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + 88));
}

BOOL AGCLLVMUserIntersectionShader::constructReply(AGCLLVMUserIntersectionShader *this)
{
  v2 = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (v2)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMUserObject::constructFlatReply(this);
    v4 = *this;
    v5 = this + *(*this - 24);
    v5[4358] = 1;
    v6 = *(v5 + 1082);
    v7 = *(v5 + 1080) - *(v5 + 1084);
    v8 = (*(**(this + *(v4 - 24) + 2168) + 1344))();
    v10 = v9;
    if (*(this + 1137) >= 4u)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(this + 1137);
    }

    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v5 + 4288, 4, v8, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v5 + 4288, 6, v10, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v5 + 4288, 8, *(this + 576), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v5 + 4288, 18, *(this + 1148));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v5 + 4288, 10, (*(this + 1136) >> 10) & 7, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v5 + 4288, 12, *(this + 1136) >> 13, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v5 + 4288, 14, *(this + 12), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v5 + 4288, 20, *(this + 4617) & 1, 0);
    flatbuffers::FlatBufferBuilder::AddElement<signed char>(v5 + 4288, 22, v11);
    v12 = flatbuffers::FlatBufferBuilder::EndTable((v5 + 4288), v7 + v6);
    v13 = this + *(*this - 24);
    v14 = *(v13 + 1080);
    v13[4358] = 1;
    v15 = *(v13 + 1082);
    v16 = v14 - *(v13 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v13 + 4288), v3);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::IntersectionFunctionInfo>((v13 + 4288), v12);
    v17 = *(*this - 24);
    v18 = flatbuffers::FlatBufferBuilder::EndTable((v13 + 4288), v16 + v15);
    flatbuffers::FlatBufferBuilder::Finish((this + v17 + 4288), v18, v19);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
  }

  return v2;
}

void AGCLLVMUserIntersectionShader::getCompilationKeyDescription(AGCLLVMUserIntersectionShader *this@<X0>, std::string *a2@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = this + 4544;
  std::string::basic_string[abi:nn200100]<0>(v24, "AGCUserIntersectionState");
  std::string::basic_string[abi:nn200100]<0>(v22, "leafVariant");
  _agcFieldString<unsigned int>(&v26, v22, *(this + 1136) & 7);
  std::string::basic_string[abi:nn200100]<0>(v20, "threadsPerLeafPOT");
  _agcFieldString<unsigned int>(&v27, v20, (*(this + 1136) >> 10) & 7);
  std::string::basic_string[abi:nn200100]<0>(v18, "maxParallelLeavesPOT");
  _agcFieldString<unsigned int>(&v28, v18, *(this + 1136) >> 13);
  std::string::basic_string[abi:nn200100]<0>(v16, "disableParallelLeafLoop");
  _agcFieldString<unsigned int>(&v29, v16, (*(this + 1136) >> 17) & 1);
  std::string::basic_string[abi:nn200100]<0>(v14, "disableTemporalSplits");
  _agcFieldString<unsigned int>(&v30, v14, (*(this + 1136) >> 18) & 1);
  std::string::basic_string[abi:nn200100]<0>(v12, "disableRIARTU");
  _agcFieldString<unsigned int>(&v31, v12, (*(this + 1136) >> 21) & 1);
  std::string::basic_string[abi:nn200100]<0>(v10, "disableRIARTT");
  _agcFieldString<unsigned int>(&v32, v10, (*(this + 1136) >> 22) & 1);
  std::string::basic_string[abi:nn200100]<0>(v8, "compileAsPic");
  _agcFieldString<unsigned int>(&v33, v8, (*(this + 1136) >> 19) & 1);
  std::string::basic_string[abi:nn200100]<0>(__p, "unused");
  _agcFieldString<unsigned int>(&v34, __p, v4[3]);
  _agcGroupWithHeader(a2, v24, &v26, 9);
  for (i = 0; i != -27; i -= 3)
  {
    if (SHIBYTE(v34.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v34.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }
}

void virtual thunk toAGCLLVMUserIntersectionShader::~AGCLLVMUserIntersectionShader(AGCLLVMUserIntersectionShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = this + *(*this - 24);
  AGCLLVMUserShader::~AGCLLVMUserShader(v4, off_2825A35B0, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 4624));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserShader::~AGCLLVMUserShader((this + *(*this - 24)), off_2825A35B0, a3, a4);
  v5 = (v4 + 4624);

  AGCLLVMObject::~AGCLLVMObject(v5);
}

void non-virtual thunk toAGCLLVMUserIntersectionShader::~AGCLLVMUserIntersectionShader(AGCLLVMUserIntersectionShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  AGCLLVMUserShader::~AGCLLVMUserShader((this - 4536), off_2825A35B0, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((this + 88));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserShader::~AGCLLVMUserShader((this - 4536), off_2825A35B0, a3, a4);

  AGCLLVMObject::~AGCLLVMObject((this + 88));
}

uint64_t AGCLLVMUserIntersectionShader::replaceBuiltins(AGCLLVMUserIntersectionShader *this)
{
  v2 = AGCLLVMUserObject::replaceBuiltins(this);
  if (v2)
  {
    v3 = *(this + *(*this - 24) + 2168);
    GlobalSCSLayoutGlobal = AGCLLVMUserObject::createGlobalSCSLayoutGlobal(this);
    v5 = (*(*this + 536))(this);
    v6 = (*(**(this + *(*this - 24) + 2168) + 1456))();
    (*(*v3 + 1448))(v3, this + 3984, 0, GlobalSCSLayoutGlobal, v5, v6);
  }

  return v2;
}

uint64_t AGCLLVMUserIntersectionShader::setupShaderOutputs(AGCLLVMUserIntersectionShader *this)
{
  Function = llvm::Module::getFunction();
  llvm::Instruction::eraseFromParent(*(*(Function + 1) + 24));
  llvm::Function::eraseFromParent(Function);
  return 1;
}

uint64_t AGCLLVMUserIntersectionShader::setupShaderInputs(AGCLLVMUserIntersectionShader *this)
{
  v171 = *MEMORY[0x277D85DE8];
  v2 = *(*(this + *(*this - 24) + 2168) + 920);
  (*(*v2 + 896))(v2);
  AGCLLVMUserObject::createGlobalSCSLayoutGlobal(this);
  (*(**(this + *(*this - 24) + 2168) + 1360))(&v168);
  v3 = v169;
  *(this + 249) = v168;
  *(this + 250) = v3;
  *(this + 251) = v170;
  v4 = *(*(this + 21) + 80);
  v5 = v4 - 24;
  if (!v4)
  {
    v5 = 0;
  }

  v117 = v5;
  v6 = *(v5 + 40);
  if (v6)
  {
    v7 = (v6 - 24);
  }

  else
  {
    v7 = 0;
  }

  AGCLLVMBuilder::SetInsertPoint(this + *(*this - 24) + 1704, v7, *(this + 5));
  v8 = *(this + 1137);
  if (v8 == 3)
  {
    v106 = this + *(*this - 24);
    v107 = *(v106 + 271);
    v159 = *(v106 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v160, (v106 + 1712));
    v161 = *(v106 + 452);
    v108 = *(this + 1136);
    v109 = (*(**(this + *(*this - 24) + 2168) + 1456))();
    v110 = (*(this + 2308) >> 5) & 1;
    v111 = *(this + 1136);
    v112 = (*(*this + 536))(this);
    (*(*v107 + 1208))(&v168, v107, &v159, this + 3984, v108 & 7, v109, v110, (v111 >> 10) & 7, v112, 0);
    v113 = v169;
    *(this + 4552) = v168;
    *(this + 4568) = v113;
    if (!v160)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v8 == 2)
  {
    v16 = this + *(*this - 24);
    v17 = *(v16 + 271);
    v162 = *(v16 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v163, (v16 + 1712));
    v164 = *(v16 + 452);
    v18 = *(this + 1136);
    v19 = (*(**(this + *(*this - 24) + 2168) + 1456))();
    v20 = (*(this + 2308) >> 5) & 1;
    v21 = *(this + 1136);
    v22 = (*(*this + 536))(this);
    (*(*v17 + 1200))(&v168, v17, &v162, this + 3984, v18 & 7, v19, v20, (v21 >> 10) & 7, v22, 0);
    v23 = v169;
    *(this + 4552) = v168;
    *(this + 4568) = v23;
    if (!v163)
    {
      goto LABEL_14;
    }

LABEL_13:
    llvm::MetadataTracking::untrack();
    goto LABEL_14;
  }

  if (v8 != 1)
  {
LABEL_14:
    v115 = 0;
    goto LABEL_15;
  }

  v9 = this + *(*this - 24);
  v10 = *(v9 + 271);
  v165 = *(v9 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v166, (v9 + 1712));
  v167 = *(v9 + 452);
  v11 = *(this + 1136);
  v12 = (*(**(this + *(*this - 24) + 2168) + 1456))();
  v13 = (*(this + 2308) >> 5) & 1;
  v14 = *(this + 1136);
  v114 = (*(*this + 536))(this);
  (*(*v10 + 1192))(&v168, v10, &v165, this + 3984, v11 & 7, v12, v13, (v14 >> 10) & 7, 0, v114);
  v15 = v169;
  *(this + 4552) = v168;
  *(this + 4568) = v15;
  if (v166)
  {
    llvm::MetadataTracking::untrack();
  }

  v115 = 1;
LABEL_15:
  v24 = *(this + *(*this - 24) + 2136);
  v25 = v24 + 24;
  v26 = this + 1712;
  v27 = *(v24 + 32);
  if (v27 != v24 + 24)
  {
    v116 = v24 + 24;
    do
    {
      if (v27)
      {
        v28 = (v27 - 56);
      }

      else
      {
        v28 = 0;
      }

      Name = llvm::Value::getName(v28);
      if (v30 >= 0xF && *Name == 0x612E74722E786761 && *(Name + 7) == 0x746E656D75677261)
      {
        v32 = this + *(*this - 24);
        v156 = *(v32 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v157, (v32 + 1712));
        v158 = *(v32 + 452);
        *&v168 = &v169;
        *(&v168 + 1) = 0x800000000;
        v33 = *(v28 + 1);
        if (v33)
        {
          do
          {
            v34 = *(v33 + 24);
            v35 = *&v34[-8 * (v34[5] & 0x7FFFFFF)];
            v36 = (v35 + 24);
            if (*(v35 + 32) >= 0x41u)
            {
              v36 = *v36;
            }

            v37 = *v36;
            llvm::IRBuilderBase::SetInsertPoint(&v26[*(*this - 24)], *(v33 + 24));
            v38 = this + *(*this - 24);
            v39 = *(v38 + 271);
            v153 = *(v38 + 110);
            llvm::IRBuilderBase::getCurrentDebugLocation(&v154, (v38 + 1712));
            v155 = *(v38 + 452);
            v41 = (*(*v39 + 928))(v39, &v153, v37, this + 4552, *(this + 2308), *(this + 1148));
            if (v154)
            {
              llvm::MetadataTracking::untrack();
            }

            v42 = *v34;
            v43 = *(*v34 + 8);
            if (v43 == 15)
            {
              if (v42 != *v41)
              {
                v45 = *(*this - 24);
                v152 = 257;
                llvm::IRBuilderBase::CreatePointerCast(&v26[v45], v41, v42, v151, v40);
              }
            }

            else if (v43 == 13 && v42 != *v41)
            {
              v44 = *(*this - 24);
              v152 = 257;
              llvm::IRBuilderBase::CreateZExtOrTrunc(&v26[v44], v41, v42, v151);
            }

            llvm::Value::replaceAllUsesWith();
            llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v168, v34);
            v33 = *(v33 + 8);
          }

          while (v33);
          if (DWORD2(v168))
          {
            v46 = v168;
            v47 = 8 * DWORD2(v168);
            do
            {
              v48 = *v46++;
              llvm::Instruction::eraseFromParent(v48);
              v47 -= 8;
            }

            while (v47);
          }
        }

        v49 = *(*this - 24);
        v148 = v156;
        v149 = v157;
        if (v157)
        {
          llvm::MetadataTracking::track();
        }

        v150 = v158;
        AGCLLVMBuilder::InsertPoint::restoreIP(&v148, &v26[v49]);
        v25 = v116;
        if (v149)
        {
          llvm::MetadataTracking::untrack();
        }

        if (v168 != &v169)
        {
          free(v168);
        }

        if (v157)
        {
          llvm::MetadataTracking::untrack();
        }
      }

      v27 = *(v27 + 8);
    }

    while (v27 != v25);
  }

  v50 = *(this + 21);
  v51 = v117;
  if (*(v50 + 18))
  {
    llvm::Function::BuildLazyArguments(*(this + 21));
    v53 = *(this + 21);
    v52 = *(v50 + 88);
    if (*(v53 + 18))
    {
      llvm::Function::BuildLazyArguments(*(this + 21));
    }

    v50 = v53;
  }

  else
  {
    v52 = *(v50 + 88);
  }

  for (i = *(v50 + 88) + 40 * *(v50 + 96); v52 != i; v52 += 40)
  {
    if (*(v52 + 8))
    {
      v55 = *(v51 + 40);
      v56 = v55 ? (v55 - 24) : 0;
      AGCLLVMBuilder::SetInsertPoint(this + *(*this - 24) + 1704, v56, *(this + 5));
      v57 = *(v52 + 32);
      v58 = *(*(this + 10) + 8 * v57);
      if ((AGCLLVMUserShader::replaceInputArgument(this, v52, v57, v58) & 1) == 0 && isStringMDNode(*(v58 - 8 * *(v58 + 8) + 8), "air.payload"))
      {
        v59 = *v52;
        v60 = *(this + 571);
        v61 = *(v60 + 32);
        if (v61)
        {
          v62 = v61 == *(v60 + 40) + 40;
        }

        else
        {
          v62 = 1;
        }

        if (v62)
        {
          v63 = 0;
        }

        else
        {
          v63 = (v61 - 24);
        }

        llvm::IRBuilderBase::SetInsertPoint(&v26[*(*this - 24)], v63);
        v64 = *(*this - 24);
        LOWORD(v170) = 257;
        v65 = v60;
        v51 = v117;
        llvm::IRBuilderBase::CreatePointerCast(&v26[v64], v65, v59, &v168, v66);
        llvm::Value::replaceAllUsesWith();
        v151[0] = 0;
        LODWORD(v168) = 5;
        parseMDInt(0, v58, &v168, v151);
        *(this + 575) = v151[0];
        *(this + 576) = llvm::DataLayout::getABITypeAlignment((this + 224), v59);
        AGCLLVMUserObject::createSCSUserDataBoundGlobal(this);
      }
    }
  }

  AGCLLVMUserObject::createSCSDriverDataStartGlobal(this);
  v67 = *(*(llvm::Module::getFunction() + 8) + 24);
  llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v67);
  v68 = this + *(*this - 24);
  v69 = *(v68 + 271);
  v145 = *(v68 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v146, (v68 + 1712));
  v147 = *(v68 + 452);
  (*(*v69 + 1304))(v69, &v145, this + 4552);
  if (v146)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(v67);
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v71 = *(*(Function + 8) + 24);
    v72 = *(v71 - 4 * (*(v71 + 5) & 0x7FFFFFF));
    llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v71);
    v73 = this + *(*this - 24);
    v74 = *(v73 + 271);
    v142 = *(v73 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v143, (v73 + 1712));
    v144 = *(v73 + 452);
    (*(*v74 + 1312))(v74, &v142, this + 4552, v72);
    if (v143)
    {
      llvm::MetadataTracking::untrack();
    }

    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v71);
  }

  v75 = llvm::Module::getFunction();
  if (v75)
  {
    v76 = *(*(v75 + 8) + 24);
    llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v76);
    AGCLLVMUserIntersectionShader::unpackUserResult(&v168, this, *(v76 - 4 * (*(v76 + 5) & 0x7FFFFFF)), v77);
    v78 = this + *(*this - 24);
    v79 = *(v78 + 271);
    v139 = *(v78 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v140, (v78 + 1712));
    v141 = *(v78 + 452);
    (*(*v79 + 1256))(v79, &v139, this + 4552, v168, *(&v168 + 1), v169, 0, (*(this + 1136) & 0xE000) == 0);
    if (v140)
    {
      llvm::MetadataTracking::untrack();
    }

    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v76);
    v80 = *(*(llvm::Module::getFunction() + 8) + 24);
    llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v80);
    if (v115)
    {
      v81 = this + *(*this - 24);
      v82 = *(v81 + 271);
      v136 = *(v81 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v137, (v81 + 1712));
      v138 = *(v81 + 452);
      LODWORD(v81) = *(this + 1136);
      v83 = (*(**(this + *(*this - 24) + 2168) + 1456))();
      (*(*v82 + 1112))(v82, &v136, this + 3984, v81 & 7, v83, (*(this + 2308) >> 5) & 1);
      if (v137)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    v84 = this + *(*this - 24);
    v85 = *(v84 + 271);
    v133 = *(v84 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v134, (v84 + 1712));
    v135 = *(v84 + 452);
    (*(*v85 + 1272))(v85, &v133);
    if (v134)
    {
      llvm::MetadataTracking::untrack();
    }

    llvm::Instruction::eraseFromParent(v80);
    v86 = *(*(llvm::Module::getFunction() + 8) + 24);
    llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v86);
    AGCLLVMUserIntersectionShader::unpackUserResult(&v168, this, *(v86 - 4 * (*(v86 + 5) & 0x7FFFFFF)), v87);
    llvm::Value::replaceAllUsesWith();
  }

  else
  {
    v88 = *(*(llvm::Module::getFunction() + 8) + 24);
    llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v88);
    v89 = this + *(*this - 24);
    v90 = *(v89 + 271);
    v130 = *(v89 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v131, (v89 + 1712));
    v132 = *(v89 + 452);
    (*(*v90 + 1296))(v90, &v130, this + 4552);
    if (v131)
    {
      llvm::MetadataTracking::untrack();
    }

    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v88);
    v91 = *(*(llvm::Module::getFunction() + 8) + 24);
    llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v91);
    AGCLLVMUserIntersectionShader::unpackUserResult(&v168, this, *(v91 - 4 * (*(v91 + 5) & 0x7FFFFFF)), v92);
    v93 = this + *(*this - 24);
    v94 = *(v93 + 271);
    v127 = *(v93 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v128, (v93 + 1712));
    v129 = *(v93 + 452);
    (*(*v94 + 1264))(v94, &v127, this + 4552, v168, *(&v168 + 1), v169);
    if (v128)
    {
      llvm::MetadataTracking::untrack();
    }

    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v91);
    v95 = *(*(llvm::Module::getFunction() + 8) + 24);
    llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v95);
    v96 = *(v95 - 4 * (*(v95 + 5) & 0x7FFFFFF));
    v97 = this + *(*this - 24);
    v98 = *(v97 + 271);
    v124 = *(v97 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v125, (v97 + 1712));
    v126 = *(v97 + 452);
    (*(*v98 + 1280))(v98, &v124, this + 4552, v96);
    if (v125)
    {
      llvm::MetadataTracking::untrack();
    }

    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v95);
    v86 = *(*(llvm::Module::getFunction() + 8) + 24);
    llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v86);
    v99 = *(v86 - 4 * (*(v86 + 5) & 0x7FFFFFF));
    if (v115)
    {
      v100 = this + *(*this - 24);
      v101 = *(v100 + 271);
      v121 = *(v100 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v122, (v100 + 1712));
      v123 = *(v100 + 452);
      LODWORD(v100) = *(this + 1136);
      v102 = (*(**(this + *(*this - 24) + 2168) + 1456))();
      (*(*v101 + 1112))(v101, &v121, this + 3984, v100 & 7, v102, (*(this + 2308) >> 5) & 1);
      if (v122)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    v103 = this + *(*this - 24);
    v104 = *(v103 + 271);
    v118 = *(v103 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v119, (v103 + 1712));
    v120 = *(v103 + 452);
    (*(*v104 + 1288))(v104, &v118, this + 4552, v99);
    if (v119)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  llvm::Instruction::eraseFromParent(v86);
  return 1;
}

uint64_t AGCLLVMUserIntersectionShader::unpackUserResult(AGCLLVMUserIntersectionShader *this, llvm::Value *a2, uint64_t a3, BOOL a4)
{
  v7 = llvm::ConstantInt::get();
  v8 = llvm::ConstantInt::get();
  result = llvm::ConstantFP::get();
  v10 = result;
  if (*(*a3 + 8) == 16)
  {
    v11 = *(*(a2 + 8) + 8);
    v20 = 0;
    if (v11)
    {
      v12 = 0;
      v13 = a2 + 1712;
      do
      {
        v14 = *(*(a2 + 8) - 8 * *(*(a2 + 8) + 8) + 8 * v12);
        if (isStringMDNode(*(v14 - 8 * *(v14 + 8)), "air.accept_intersection"))
        {
          v15 = *(*a2 - 24);
          v19 = 257;
          result = llvm::IRBuilderBase::CreateExtractValue(&v13[v15], a3, &v20, 1, v18);
          v8 = result;
        }

        else if (isStringMDNode(*(v14 - 8 * *(v14 + 8)), "air.continue_search"))
        {
          v16 = *(*a2 - 24);
          v19 = 257;
          result = llvm::IRBuilderBase::CreateExtractValue(&v13[v16], a3, &v20, 1, v18);
          v7 = result;
        }

        else
        {
          result = isStringMDNode(*(v14 - 8 * *(v14 + 8)), "air.distance");
          if (result)
          {
            v17 = *(*a2 - 24);
            v19 = 257;
            result = llvm::IRBuilderBase::CreateExtractValue(&v13[v17], a3, &v20, 1, v18);
            v10 = result;
          }
        }

        v12 = v20 + 1;
        v20 = v12;
      }

      while (v12 < v11);
    }

    a3 = v8;
  }

  *this = a3;
  *(this + 1) = v7;
  *(this + 2) = v10;
  return result;
}

void AGCLLVMUserIntersectionShader::addInitCompilePass(AGCLLVMUserIntersectionShader *this, const char *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    if (AGCEnv::getValue("AGC_RT_FORCE_SIDE_EFFECTS", a2))
    {
      Value = AGCEnv::getValue("AGC_RT_FORCE_SIDE_EFFECTS", v3);
      if (Value)
      {
        if (*Value != 48)
        {
          atoi(Value);
        }
      }
    }
  }

  v5 = this + *(*this - 24);
  __src[0] = &AGCLLVMUserIntersectionShaderLoopShaderPass::Key;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>::FindAndConstruct((v5 + 1440), __src)[1])
  {
    operator new();
  }

  v6 = this + *(*this - 24);
  __src[0] = MEMORY[0x277D82038];
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>::FindAndConstruct((v6 + 1440), __src)[1])
  {
    operator new();
  }

  v7 = this + *(*this - 24);
  __src[0] = MEMORY[0x277D820C8];
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>::FindAndConstruct((v7 + 1440), __src)[1])
  {
    operator new();
  }

  v8 = this + *(*this - 24);
  __src[0] = MEMORY[0x277D821A0];
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>::FindAndConstruct((v8 + 1440), __src)[1])
  {
    operator new();
  }

  operator new();
}

void std::vector<std::unique_ptr<llvm::detail::PassConcept<llvm::Function,llvm::AnalysisManager<llvm::Function>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

char *llvm::detail::PassModel<llvm::Function,llvm::SimplifyCFGPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x47)
  {
    v1 = v0;
  }

  else
  {
    v1 = 71;
  }

  v2 = &aStringrefLlvmG_67[v1];
  v3 = 71 - v1;
  if ((71 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 71 - v1;
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

char *llvm::PassInfoMixin<llvm::ADCEPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x40)
  {
    v1 = v0;
  }

  else
  {
    v1 = 64;
  }

  v2 = &aStringrefLlvmG_66[v1];
  v3 = 64 - v1;
  if ((64 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 64 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Function,llvm::ADCEPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::ADCEPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::PassInfoMixin<llvm::DSEPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x3F)
  {
    v1 = v0;
  }

  else
  {
    v1 = 63;
  }

  v2 = &aStringrefLlvmG_65[v1];
  v3 = 63 - v1;
  if ((63 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 63 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Function,llvm::DSEPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::DSEPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::PassInfoMixin<llvm::NewGVNPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x42)
  {
    v1 = v0;
  }

  else
  {
    v1 = 66;
  }

  v2 = &aStringrefLlvmG_64[v1];
  v3 = 66 - v1;
  if ((66 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 66 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Function,llvm::NewGVNPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::NewGVNPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::PassModel<llvm::Function,llvm::LoopUnrollPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x46)
  {
    v1 = v0;
  }

  else
  {
    v1 = 70;
  }

  v2 = &aStringrefLlvmG_63[v1];
  v3 = 70 - v1;
  if ((70 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 70 - v1;
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

char *llvm::PassInfoMixin<llvm::IndVarSimplifyPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x4A)
  {
    v1 = v0;
  }

  else
  {
    v1 = 74;
  }

  v2 = &aStringrefLlvmG_62[v1];
  v3 = 74 - v1;
  if ((74 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 74 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Loop,llvm::IndVarSimplifyPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>,llvm::LoopStandardAnalysisResults &,llvm::LPMUpdater &>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::IndVarSimplifyPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::PassModel<llvm::Function,llvm::FunctionToLoopPassAdaptor,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x51)
  {
    v1 = v0;
  }

  else
  {
    v1 = 81;
  }

  v2 = &aStringrefLlvmG_61[v1];
  v3 = 81 - v1;
  if ((81 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 81 - v1;
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

void llvm::detail::PassModel<llvm::Function,llvm::FunctionToLoopPassAdaptor,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::~PassModel(uint64_t a1)
{
  *a1 = &unk_2825A62F0;
  v3 = (a1 + 16);
  std::vector<std::unique_ptr<llvm::detail::PassConcept<llvm::Function,llvm::AnalysisManager<llvm::Function>>>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x20F331DC0);
}

uint64_t llvm::detail::PassModel<llvm::Function,llvm::FunctionToLoopPassAdaptor,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::~PassModel(uint64_t a1)
{
  *a1 = &unk_2825A62F0;
  v4 = (a1 + 16);
  std::vector<std::unique_ptr<llvm::detail::PassConcept<llvm::Function,llvm::AnalysisManager<llvm::Function>>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t *std::unique_ptr<llvm::detail::PassConcept<llvm::Function,llvm::AnalysisManager<llvm::Function>>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

char *llvm::PassInfoMixin<llvm::LCSSAPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x41)
  {
    v1 = v0;
  }

  else
  {
    v1 = 65;
  }

  v2 = &aStringrefLlvmG_60[v1];
  v3 = 65 - v1;
  if ((65 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 65 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Function,llvm::LCSSAPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::LCSSAPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::PassInfoMixin<llvm::LoopSimplifyPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x48)
  {
    v1 = v0;
  }

  else
  {
    v1 = 72;
  }

  v2 = &aStringrefLlvmG_59[v1];
  v3 = 72 - v1;
  if ((72 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 72 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Function,llvm::LoopSimplifyPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::LoopSimplifyPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::PassModel<llvm::Loop,llvm::LICMPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>,llvm::LoopStandardAnalysisResults &,llvm::LPMUpdater &>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x40)
  {
    v1 = v0;
  }

  else
  {
    v1 = 64;
  }

  v2 = &aStringrefLlvmG_58[v1];
  v3 = 64 - v1;
  if ((64 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 64 - v1;
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

char *llvm::PassInfoMixin<AGCLLVMUserIntersectionShaderPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x53)
  {
    v1 = v0;
  }

  else
  {
    v1 = 83;
  }

  v2 = &aStringrefLlvmG_57[v1];
  v3 = 83 - v1;
  if ((83 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 83 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Function,AGCLLVMUserIntersectionShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<AGCLLVMUserIntersectionShaderPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

void llvm::detail::PassModel<llvm::Function,AGCLLVMUserIntersectionShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::run(llvm::Function *a2@<X1>, uint64_t a4@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 5);
  v12 = "air.intersection";
  v13 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v6, &v12);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v9 = *(Operand - 8 * *(Operand + 8));
  if (v9 && *v9 - 1 <= 1)
  {
    v10 = *(v9 + 16);
    if (v10 == a2 && *(v10 + 16) == 0)
    {
      llvm::AnalysisManager<llvm::Function>::getResultImpl();
    }
  }

  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 88) = 0;
  *(a4 + 72) = 0u;
  *(a4 + 24) = 0u;
  *a4 = a4 + 32;
  *(a4 + 8) = a4 + 32;
  *(a4 + 16) = 2;
  *(a4 + 48) = a4 + 80;
  *(a4 + 56) = a4 + 80;
  *(a4 + 64) = 2;
}

void *llvm::detail::PassModel<llvm::Module,llvm::ModuleToFunctionPassAdaptor,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::~PassModel(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2825B0098;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

char *llvm::PassInfoMixin<llvm::UnifyFunctionExitNodesPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x52)
  {
    v1 = v0;
  }

  else
  {
    v1 = 82;
  }

  v2 = &aStringrefLlvmG_55[v1];
  v3 = 82 - v1;
  if ((82 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 82 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Function,llvm::UnifyFunctionExitNodesPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::UnifyFunctionExitNodesPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::PassModel<llvm::Module,llvm::ModuleToPostOrderCGSCCPassAdaptor,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x59)
  {
    v1 = v0;
  }

  else
  {
    v1 = 89;
  }

  v2 = &aStringrefLlvmG_54[v1];
  v3 = 89 - v1;
  if ((89 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 89 - v1;
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

uint64_t llvm::detail::PassModel<llvm::Module,llvm::ModuleToPostOrderCGSCCPassAdaptor,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *this, uint64_t a3, uint64_t a4)
{
  v8 = *(this + 4);
  if ((*(this + 3) - v8) > 5)
  {
    *(v8 + 4) = 10339;
    *v8 = 1668507491;
    *(this + 4) += 6;
  }

  else
  {
    llvm::raw_ostream::write(this, "cgscc(");
  }

  result = (*(**(a1 + 8) + 24))(*(a1 + 8), this, a3, a4);
  v10 = *(this + 4);
  if (*(this + 3) == v10)
  {

    return llvm::raw_ostream::write(this, ")");
  }

  else
  {
    *v10 = 41;
    ++*(this + 4);
  }

  return result;
}

void llvm::detail::PassModel<llvm::Module,llvm::ModuleToPostOrderCGSCCPassAdaptor,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::~PassModel(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2825A6170;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x20F331DC0);
}

void *llvm::detail::PassModel<llvm::Module,llvm::ModuleToPostOrderCGSCCPassAdaptor,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::~PassModel(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2825A6170;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

char *llvm::PassInfoMixin<llvm::PostOrderFunctionAttrsPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x52)
  {
    v1 = v0;
  }

  else
  {
    v1 = 82;
  }

  v2 = &aStringrefLlvmG_53[v1];
  v3 = 82 - v1;
  if ((82 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 82 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::LazyCallGraph::SCC,llvm::PostOrderFunctionAttrsPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>,llvm::LazyCallGraph&,llvm::CGSCCUpdateResult &>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::PostOrderFunctionAttrsPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Function,llvm::AAManager,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x41)
  {
    v1 = v0;
  }

  else
  {
    v1 = 65;
  }

  v2 = &aStringrefLlvmG_52[v1];
  v3 = 65 - v1;
  if ((65 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 65 - v1;
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

void llvm::detail::AnalysisResultModel<llvm::Function,llvm::AAManager,llvm::AAResults,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator,true>::~AnalysisResultModel(void *a1)
{
  *a1 = &unk_2825A6108;
  MEMORY[0x20F331210](a1 + 1);

  JUMPOUT(0x20F331DC0);
}

void *llvm::detail::AnalysisResultModel<llvm::Function,llvm::AAManager,llvm::AAResults,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator,true>::~AnalysisResultModel(void *a1)
{
  *a1 = &unk_2825A6108;
  MEMORY[0x20F331210](a1 + 1);
  return a1;
}

void llvm::detail::AnalysisPassModel<llvm::Function,llvm::AAManager,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>::~AnalysisPassModel(void *a1)
{
  *a1 = &unk_2825A60D8;
  v2 = a1[1];
  if (v2 != a1 + 3)
  {
    free(v2);
  }

  JUMPOUT(0x20F331DC0);
}

void *llvm::detail::AnalysisPassModel<llvm::Function,llvm::AAManager,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>::~AnalysisPassModel(void *a1)
{
  *a1 = &unk_2825A60D8;
  v2 = a1[1];
  if (v2 != a1 + 3)
  {
    free(v2);
  }

  return a1;
}

void llvm::AAResults::addAADependencyID(void *a1, uint64_t a2)
{
  v4 = a1[5];
  v3 = a1[6];
  if (v4 >= v3)
  {
    v6 = a1[4];
    v7 = v4 - v6;
    v8 = (v4 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = (v4 - v6) >> 3;
    v13 = (8 * v8);
    v14 = (8 * v8 - 8 * v12);
    *v13 = a2;
    v5 = v13 + 1;
    memcpy(v14, v6, v7);
    a1[4] = v14;
    a1[5] = v5;
    a1[6] = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = a2;
    v5 = v4 + 8;
  }

  a1[5] = v5;
}

uint64_t std::__split_buffer<std::unique_ptr<llvm::AAResults::Concept>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t llvm::AAResults::Model<llvm::BasicAAResult>::getModRefInfo(uint64_t a1)
{
  return MEMORY[0x2821F21D8](*(a1 + 8));
}

{
  return MEMORY[0x2821F21D0](*(a1 + 8));
}

uint64_t llvm::AAResults::Model<llvm::BasicAAResult>::getModRefBehavior(uint64_t a1)
{
  return MEMORY[0x2821F21F0](*(a1 + 8));
}

{
  return MEMORY[0x2821F21E8](*(a1 + 8));
}

void llvm::AAResults::Model<llvm::BasicAAResult>::~Model(llvm::AAResults::Concept *a1)
{
  llvm::AAResults::Concept::~Concept(a1);

  JUMPOUT(0x20F331DC0);
}

uint64_t llvm::AAResults::Model<llvm::ScopedNoAliasAAResult>::getModRefInfo(uint64_t a1)
{
  return MEMORY[0x2821F2EC8](*(a1 + 8));
}

{
  return MEMORY[0x2821F2EC0](*(a1 + 8));
}

uint64_t llvm::AAResults::Model<llvm::ScopedNoAliasAAResult>::getModRefBehavior()
{
  return 63;
}

{
  return 63;
}

void llvm::AAResults::Model<llvm::ScopedNoAliasAAResult>::~Model(llvm::AAResults::Concept *a1)
{
  llvm::AAResults::Concept::~Concept(a1);

  JUMPOUT(0x20F331DC0);
}

uint64_t llvm::AAResults::Model<llvm::TypeBasedAAResult>::getModRefInfo(uint64_t a1)
{
  return MEMORY[0x2821F2AD8](*(a1 + 8));
}

{
  return MEMORY[0x2821F2AD0](*(a1 + 8));
}

uint64_t llvm::AAResults::Model<llvm::TypeBasedAAResult>::getModRefBehavior(uint64_t a1)
{
  return MEMORY[0x2821F2AE8](*(a1 + 8));
}

{
  return MEMORY[0x2821F2AE0](*(a1 + 8));
}

void llvm::AAResults::Model<llvm::TypeBasedAAResult>::~Model(llvm::AAResults::Concept *a1)
{
  llvm::AAResults::Concept::~Concept(a1);

  JUMPOUT(0x20F331DC0);
}

char *llvm::detail::AnalysisPassModel<llvm::Function,llvm::DominatorTreeAnalysis,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x4D)
  {
    v1 = v0;
  }

  else
  {
    v1 = 77;
  }

  v2 = &aStringrefLlvmG_51[v1];
  v3 = 77 - v1;
  if ((77 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 77 - v1;
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

void llvm::detail::AnalysisPassModel<llvm::Function,llvm::DominatorTreeAnalysis,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>::run()
{
  v2 = *MEMORY[0x277D85DE8];
  llvm::DominatorTreeAnalysis::run();
  operator new();
}

void llvm::detail::AnalysisResultModel<llvm::Function,llvm::DominatorTreeAnalysis,llvm::DominatorTree,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator,true>::~AnalysisResultModel(uint64_t a1)
{
  *a1 = &unk_2825A5F90;
  llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::destroyAll((a1 + 32));
  llvm::deallocate_buffer(*(a1 + 48), *(a1 + 32), (16 * *(a1 + 48)));
  v2 = *(a1 + 8);
  if (v2 != (a1 + 24))
  {
    free(v2);
  }

  JUMPOUT(0x20F331DC0);
}

uint64_t llvm::detail::AnalysisResultModel<llvm::Function,llvm::DominatorTreeAnalysis,llvm::DominatorTree,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator,true>::~AnalysisResultModel(uint64_t a1)
{
  *a1 = &unk_2825A5F90;
  llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::destroyAll((a1 + 32));
  llvm::deallocate_buffer(*(a1 + 48), *(a1 + 32), (16 * *(a1 + 48)));
  v2 = *(a1 + 8);
  if (v2 != (a1 + 24))
  {
    free(v2);
  }

  return a1;
}

char *llvm::detail::AnalysisPassModel<llvm::Function,llvm::MemorySSAAnalysis,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x49)
  {
    v1 = v0;
  }

  else
  {
    v1 = 73;
  }

  v2 = &aStringrefLlvmG_50[v1];
  v3 = 73 - v1;
  if ((73 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 73 - v1;
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

void llvm::detail::AnalysisResultModel<llvm::Function,llvm::MemorySSAAnalysis,llvm::MemorySSAAnalysis::Result,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator,true>::~AnalysisResultModel(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2825A5F38;
  a1[1] = 0;
  if (v2)
  {
    v3 = MEMORY[0x20F3312A0]();
    MEMORY[0x20F331DC0](v3, 0x10E0C4011B2A86ELL);
  }

  JUMPOUT(0x20F331DC0);
}

void *llvm::detail::AnalysisResultModel<llvm::Function,llvm::MemorySSAAnalysis,llvm::MemorySSAAnalysis::Result,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator,true>::~AnalysisResultModel(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2825A5F38;
  a1[1] = 0;
  if (v2)
  {
    v3 = MEMORY[0x20F3312A0]();
    MEMORY[0x20F331DC0](v3, 0x10E0C4011B2A86ELL);
  }

  return a1;
}

char *llvm::detail::AnalysisPassModel<llvm::Function,AGCLLVMUserIntersectionShaderLoopShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x5D)
  {
    v1 = v0;
  }

  else
  {
    v1 = 93;
  }

  v2 = &aStringrefLlvmG_49[v1];
  v3 = 93 - v1;
  if ((93 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 93 - v1;
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

BOOL llvm::detail::AnalysisResultModel<llvm::Function,AGCLLVMUserIntersectionShaderLoopShaderPass,AGCLLVMUserIntersectionShaderLoopShaderPass::Result,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator,false>::invalidate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3 + 48;
  imp = llvm::SmallPtrSetImplBase::find_imp((a3 + 48), &AGCLLVMUserIntersectionShaderLoopShaderPass::Key);
  v6 = *(a3 + 56);
  v7 = 16;
  if (v6 == *(a3 + 48))
  {
    v7 = 20;
  }

  if (imp != (v6 + 8 * *(v4 + v7)))
  {
    return 1;
  }

  v9 = llvm::SmallPtrSetImplBase::find_imp(a3, MEMORY[0x277D82070]);
  v10 = *(a3 + 8);
  v11 = 16;
  if (v10 == *a3)
  {
    v11 = 20;
  }

  if (v9 != (v10 + 8 * *(a3 + v11)))
  {
    return 0;
  }

  v12 = llvm::SmallPtrSetImplBase::find_imp(a3, &AGCLLVMUserIntersectionShaderLoopShaderPass::Key);
  v13 = *(a3 + 8);
  v14 = 16;
  if (v13 == *a3)
  {
    v14 = 20;
  }

  v15 = v12 == (v13 + 8 * *(a3 + v14));
  result = v15;
  if (v15)
  {
    v16 = llvm::SmallPtrSetImplBase::find_imp(a3, MEMORY[0x277D82070]);
    v17 = *(a3 + 8);
    v18 = 16;
    if (v17 == *a3)
    {
      v18 = 20;
    }

    if (v16 != (v17 + 8 * *(a3 + v18)))
    {
      return 0;
    }

    v19 = llvm::SmallPtrSetImplBase::find_imp(a3, off_277E1F908);
    v20 = *(a3 + 8);
    v21 = 16;
    if (v20 == *a3)
    {
      v21 = 20;
    }

    return v19 == (v20 + 8 * *(a3 + v21));
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<std::string,IntersectionShaderArgument>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,IntersectionShaderArgument>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,IntersectionShaderArgument>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,IntersectionShaderArgument>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,IntersectionShaderArgument> const&>(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v4 = v3;
  }

  v5 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](a1, v4);
  v6 = v5;
  v7 = *(&_ZZN43AGCLLVMUserIntersectionShaderLoopShaderPass3runERN4llvm8FunctionERNS0_15AnalysisManagerIS1_JEEEE9arguments + 1);
  if (!*(&_ZZN43AGCLLVMUserIntersectionShaderLoopShaderPass3runERN4llvm8FunctionERNS0_15AnalysisManagerIS1_JEEEE9arguments + 1))
  {
    goto LABEL_21;
  }

  v8 = vcnt_s8(*(&_ZZN43AGCLLVMUserIntersectionShaderLoopShaderPass3runERN4llvm8FunctionERNS0_15AnalysisManagerIS1_JEEEE9arguments + 8));
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *(&_ZZN43AGCLLVMUserIntersectionShaderLoopShaderPass3runERN4llvm8FunctionERNS0_15AnalysisManagerIS1_JEEEE9arguments + 1))
    {
      v10 = v5 % *(&_ZZN43AGCLLVMUserIntersectionShaderLoopShaderPass3runERN4llvm8FunctionERNS0_15AnalysisManagerIS1_JEEEE9arguments + 1);
    }
  }

  else
  {
    v10 = (*(&_ZZN43AGCLLVMUserIntersectionShaderLoopShaderPass3runERN4llvm8FunctionERNS0_15AnalysisManagerIS1_JEEEE9arguments + 1) - 1) & v5;
  }

  v11 = *(_ZZN43AGCLLVMUserIntersectionShaderLoopShaderPass3runERN4llvm8FunctionERNS0_15AnalysisManagerIS1_JEEEE9arguments + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= v7)
      {
        v13 %= v7;
      }
    }

    else
    {
      v13 &= v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_21;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v12 + 2, v2))
  {
    goto LABEL_20;
  }
}

uint64_t std::unordered_map<std::string,IntersectionShaderArgument>::~unordered_map[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void AGCLLVMUserIntersectionShader::~AGCLLVMUserIntersectionShader(AGCLLVMUserIntersectionShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  AGCLLVMUserShader::~AGCLLVMUserShader(this, off_2825A35B0, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 4624));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserShader::~AGCLLVMUserShader(this, off_2825A35B0, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 4624));
}

BOOL AGCLLVMUserIFBEmulationIntersectionShader::constructReply(llvm::Value **this)
{
  v2 = AGCDeserializedReply::deserialize((this + *(*this - 3) + 2288), (*(this + *(*this - 3) + 1688))[19], (*(this + *(*this - 3) + 1688))[20]);
  if (v2)
  {
    v3 = *(*this - 3);
    Name = llvm::Value::getName(this[20]);
    v25 = 0;
    llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::try_emplace<llvm::MDNode *>((this + v3 + 5136), Name, v4, &v25);
    AGCLLVMObject::validateBackendReply((this + *(*this - 3)));
    LODWORD(v3) = AGCLLVMUserObject::constructFlatReply(this);
    v5 = *this;
    v6 = this + *(*this - 3);
    v6[4358] = 1;
    v7 = *(v6 + 1082);
    v8 = *(v6 + 1080) - *(v6 + 1084);
    v9 = (*(**(this + *(v5 - 24) + 2168) + 1456))();
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v6 + 4288, 4, v9);
    v10 = flatbuffers::FlatBufferBuilder::EndTable((v6 + 4288), v8 + v7);
    v11 = this + *(*this - 3);
    v12 = *(v11 + 1080);
    v11[4358] = 1;
    v13 = *(v11 + 1082);
    v14 = v12 - *(v11 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v11 + 4288), v3);
    if (v10)
    {
      flatbuffers::FlatBufferBuilder::Align((v11 + 4288), 4uLL);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v11 + 4288, 28, (*(v11 + 1080) - *(v11 + 1084) + *(v11 + 1082) - v10 + 4));
    }

    v15 = *(*this - 3);
    v16 = flatbuffers::FlatBufferBuilder::EndTable((v11 + 4288), v14 + v13);
    flatbuffers::FlatBufferBuilder::Finish((this + v15 + 4288), v16, v17);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 3)), (this + *(*this - 3) + 4288));
    v18 = *this;
    v19 = this + *(*this - 3);
    v19[4454] = 1;
    v20 = *(v18 - 24);
    v21 = flatbuffers::FlatBufferBuilder::EndTable((v19 + 4384), *(v19 + 2208) - *(v19 + 2216) + *(v19 + 2212));
    flatbuffers::FlatBufferBuilder::Finish((this + v20 + 4384), v21, v22);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG10::CompileReplyBinarySchema>((this + *(*this - 3)), (this + *(*this - 3) + 4384));
  }

  return v2;
}

uint64_t llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::try_emplace<llvm::MDNode *>(llvm::StringMapImpl *a1, const void *a2, size_t a3, void *a4)
{
  result = llvm::StringMapImpl::LookupBucketFor();
  v9 = *a1;
  v10 = *(*a1 + 8 * result);
  if (v10)
  {
    if (v10 != -8)
    {
      return result;
    }

    --*(a1 + 4);
  }

  v11 = result;
  v12 = MEMORY[0x20F330650](a3 + 17, 8);
  v13 = v12;
  v14 = v12 + 16;
  if (a3)
  {
    memcpy((v12 + 16), a2, a3);
  }

  *(v14 + a3) = 0;
  v13[1] = *a4;
  *(v9 + 8 * v11) = v13;
  *v13 = a3;
  ++*(a1 + 3);

  return llvm::StringMapImpl::RehashTable(a1);
}

void virtual thunk toAGCLLVMUserIFBEmulationIntersectionShader::~AGCLLVMUserIFBEmulationIntersectionShader(AGCLLVMUserIFBEmulationIntersectionShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = this + *(*this - 24);
  AGCLLVMUserShader::~AGCLLVMUserShader(v4, off_2825A3AA8, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 4624));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserShader::~AGCLLVMUserShader((this + *(*this - 24)), off_2825A3AA8, a3, a4);
  v5 = (v4 + 4624);

  AGCLLVMObject::~AGCLLVMObject(v5);
}

void non-virtual thunk toAGCLLVMUserIFBEmulationIntersectionShader::~AGCLLVMUserIFBEmulationIntersectionShader(AGCLLVMUserIFBEmulationIntersectionShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  AGCLLVMUserShader::~AGCLLVMUserShader((this - 4536), off_2825A3AA8, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((this + 88));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserShader::~AGCLLVMUserShader((this - 4536), off_2825A3AA8, a3, a4);

  AGCLLVMObject::~AGCLLVMObject((this + 88));
}

uint64_t AGCLLVMUserIFBEmulationIntersectionShader::setupShaderWrapper(AGCLLVMUserIFBEmulationIntersectionShader *this)
{
  v2 = AGCLLVMUserObject::setupShaderWrapper(this);
  if (v2)
  {
    llvm::Value::setName();
    v3 = *(this + 20);
    if (*(v3 + 18))
    {
      llvm::Function::BuildLazyArguments(*(this + 20));
    }

    v4 = *(v3 + 88);
    v5 = *(*(this + 572) + 32);
    if (v5)
    {
      v6 = v5 == *(*(this + 572) + 40) + 40;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = (v5 - 24);
    }

    llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v7);
    llvm::IRBuilderBase::CreateAlignedStore((this + *(*this - 24) + 1712), v4, *(this + 572), 0, 0);
    llvm::ValueAsMetadata::get();
    llvm::MDTuple::getImpl();
    llvm::MDTuple::getImpl();
    llvm::MDTuple::getImpl();
    llvm::Module::getOrInsertNamedMetadata();
    llvm::NamedMDNode::addOperand();
  }

  return v2;
}

void AGCLLVMUserIFBEmulationIntersectionShader::~AGCLLVMUserIFBEmulationIntersectionShader(AGCLLVMUserIFBEmulationIntersectionShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  AGCLLVMUserShader::~AGCLLVMUserShader(this, off_2825A3AA8, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 4624));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserShader::~AGCLLVMUserShader(this, off_2825A3AA8, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 4624));
}

llvm::ValueAsMetadata *AGCLLVMDriverIFBEmulationShader::createDylibResource(void *a1, int a2)
{
  result = 0;
  if (a2 <= 6)
  {
    if (a2 > 2)
    {
      switch(a2)
      {
        case 3:
          v16 = *(*(a1 + *(*a1 - 24) + 2168) + 920);
          v5 = (*(*v16 + 856))(v16);
          v6 = a1 + *(*a1 - 24);
          v7 = llvm::PointerType::get();
          v8 = "agc.texture_heap_width";
          break;
        case 4:
          v20 = *(*(a1 + *(*a1 - 24) + 2168) + 920);
          v5 = (*(*v20 + 808))(v20);
          v6 = a1 + *(*a1 - 24);
          v7 = llvm::PointerType::get();
          v8 = "agc.sampler_heap";
          break;
        case 5:
          v13 = *(*(a1 + *(*a1 - 24) + 2168) + 920);
          v5 = (*(*v13 + 872))(v13);
          v6 = a1 + *(*a1 - 24);
          v7 = llvm::PointerType::get();
          v8 = "agc.per_encoder_table";
          break;
        default:
          return result;
      }
    }

    else if (a2)
    {
      if (a2 == 1)
      {
        v18 = *(*(a1 + *(*a1 - 24) + 2168) + 920);
        v5 = (*(*v18 + 792))(v18);
        v6 = a1 + *(*a1 - 24);
        v7 = llvm::PointerType::get();
        v8 = "agc.texture_heap_read";
      }

      else
      {
        if (a2 != 2)
        {
          return result;
        }

        v4 = *(*(a1 + *(*a1 - 24) + 2168) + 920);
        v5 = (*(*v4 + 800))(v4);
        v6 = a1 + *(*a1 - 24);
        v7 = llvm::PointerType::get();
        v8 = "agc.texture_heap_write";
      }
    }

    else
    {
      v14 = *(*(a1 + *(*a1 - 24) + 2168) + 920);
      v5 = (*(*v14 + 848))(v14);
      v6 = a1 + *(*a1 - 24);
      v7 = llvm::PointerType::get();
      v8 = "agc.dylib_base";
    }

    goto LABEL_27;
  }

  if (a2 <= 10)
  {
    switch(a2)
    {
      case 7:
        v15 = *(*(a1 + *(*a1 - 24) + 2168) + 920);
        v5 = (*(*v15 + 864))(v15);
        v6 = a1 + *(*a1 - 24);
        v7 = llvm::PointerType::get();
        v8 = "agc.vft_heap";
        break;
      case 8:
        v19 = *(*(a1 + *(*a1 - 24) + 2168) + 920);
        v5 = (*(*v19 + 840))(v19);
        v6 = a1 + *(*a1 - 24);
        v7 = llvm::PointerType::get();
        v8 = "agc.bvh_heap";
        break;
      case 10:
        v9 = *(*(a1 + *(*a1 - 24) + 2168) + 920);
        v10 = (*(*v9 + 952))(v9) & 0xFFFFF | 0x900000;
        v11 = a1 + *(*a1 - 24);
        v7 = llvm::PointerType::get();
        v12 = "agc.ift_heap";
        goto LABEL_32;
      default:
        return result;
    }

LABEL_27:
    v25 = v8;
    v26 = 259;
    if ((v5 & 0xFFF00000) == 0x900000)
    {
      v21 = 0;
    }

    else
    {
      v21 = 5;
    }

    v22 = v6;
    v23 = v5;
    return AGCLLVMObject::createGlobalBufferBinding(v22, v7, &v25, v23, 0, v21);
  }

  switch(a2)
  {
    case 11:
      v17 = *(*(a1 + *(*a1 - 24) + 2168) + 920);
      v10 = (*(*v17 + 976))(v17) & 0xFFFFF | 0x900000;
      v11 = a1 + *(*a1 - 24);
      v7 = llvm::PointerType::get();
      v12 = "agc.ria.ray_data_user_bound";
LABEL_32:
      v25 = v12;
      v26 = 259;
      v22 = v11;
      v23 = v10;
      v21 = 0;
      return AGCLLVMObject::createGlobalBufferBinding(v22, v7, &v25, v23, 0, v21);
    case 13:
      v24 = *(*(a1 + *(*a1 - 24) + 2168) + 920);
      v10 = (*(*v24 + 984))(v24) & 0xFFFFF | 0x900000;
      v11 = a1 + *(*a1 - 24);
      v7 = llvm::PointerType::get();
      v12 = "agc.ria.ray_data_driver_start";
      goto LABEL_32;
    case 12:
      return a1[12];
  }

  return result;
}

BOOL AGCLLVMDriverIFBEmulationShader::constructReply(AGCLLVMDriverIFBEmulationShader *this)
{
  v2 = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (v2)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = this + *(*this - 24);
    v3[4358] = 1;
    v4 = *(v3 + 1080);
    v5 = *(v3 + 1084);
    v6 = *(v3 + 1082);
    if (v3[4368] == 1)
    {
      v7 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>((v3 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v3 + 4288, 4, v7);
      if (v3[4368])
      {
        v8 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>((v3 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v3 + 4288, 6, v8);
      }
    }

    v9 = v4 - v5;
    v10 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>((v3 + 4288), 1);
    flatbuffers::FlatBufferBuilder::TrackField(v3 + 4288, 8, v10);
    if (v3[4368] == 1)
    {
      v11 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>((v3 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v3 + 4288, 10, v11);
      if (v3[4368])
      {
        v12 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>((v3 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v3 + 4288, 12, v12);
      }
    }

    v13 = flatbuffers::FlatBufferBuilder::EndTable((v3 + 4288), v9 + v6);
    v14 = AGCLLVMObject::constructFlatReply((this + *(*this - 24)));
    v16 = flatbuffers::FlatBufferBuilder::EndTable(v14, v15);
    v17 = this + *(*this - 24);
    v17[4358] = 1;
    v18 = *(v17 + 1082);
    v19 = *(v17 + 1080) - *(v17 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::IntersectionFunctionInfo>((v17 + 4288), v13);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v17 + 4288), v16);
    v20 = *(*this - 24);
    v21 = flatbuffers::FlatBufferBuilder::EndTable((v17 + 4288), v19 + v18);
    flatbuffers::FlatBufferBuilder::Finish((this + v20 + 4288), v21, v22);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
  }

  return v2;
}

void AGCLLVMDriverIFBEmulationShader::getCompilationKeyDescription(AGCLLVMDriverIFBEmulationShader *this@<X0>, std::string *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(this + 9);
  std::string::basic_string[abi:nn200100]<0>(v9, "AGCDriverIFBEmulationShaderState");
  std::string::basic_string[abi:nn200100]<0>(v7, "leafVariant");
  _agcFieldString<unsigned int>(&v11, v7, *v3 & 7);
  std::string::basic_string[abi:nn200100]<0>(__p, "payloadVariant");
  _agcFieldString<unsigned int>(&v12, __p, *v3 >> 4);
  _agcGroupWithHeader(a2, v9, &v11, 2);
  for (i = 0; i != -6; i -= 3)
  {
    if (SHIBYTE(v12.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v11 + i * 8 + 24));
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
}

void AGCLLVMDriverIFBEmulationShader::wrapperName(AGCLLVMDriverIFBEmulationShader *this@<X0>, std::string *a2@<X8>)
{
  std::to_string(&v4, **(this + 9) & 7);
  v3 = std::string::insert(&v4, 0, "agc.ifb_emulation_wrapper.");
  *a2 = *v3;
  v3->__r_.__value_.__r.__words[0] = 0;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void virtual thunk toAGCLLVMDriverIFBEmulationShader::~AGCLLVMDriverIFBEmulationShader(AGCLLVMDriverIFBEmulationShader *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_2825A3B38;
  v1[16] = &unk_2825A3CA0;
  v1[229] = &unk_2825A3DB0;
  v2 = v1[15];
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v1 + 13));
  }

  v4 = v1[12];
  if (v4 != -8192 && v4 != -4096 && v4 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v1 + 10));
  }

  AGCLLVMObject::~AGCLLVMObject((v1 + 16));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_2825A3B38;
  v1[16] = &unk_2825A3CA0;
  v1[229] = &unk_2825A3DB0;
  v2 = v1[15];
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v1 + 13));
  }

  v4 = v1[12];
  if (v4 != -8192 && v4 != -4096 && v4 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v1 + 10));
  }

  AGCLLVMObject::~AGCLLVMObject((v1 + 16));
}

void AGCLLVMDriverIFBEmulationShader::~AGCLLVMDriverIFBEmulationShader(AGCLLVMDriverIFBEmulationShader *this)
{
  *this = &unk_2825A3B38;
  v2 = (this + 128);
  *(this + 16) = &unk_2825A3CA0;
  *(this + 229) = &unk_2825A3DB0;
  v3 = *(this + 15);
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 104));
  }

  v5 = *(this + 12);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 80));
  }

  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825A3B38;
  v2 = (this + 128);
  *(this + 16) = &unk_2825A3CA0;
  *(this + 229) = &unk_2825A3DB0;
  v3 = *(this + 15);
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 104));
  }

  v5 = *(this + 12);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 80));
  }

  AGCLLVMObject::~AGCLLVMObject(v2);
}

uint64_t parseMDUint3(uint64_t a1, const char *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = *(a1 - 8 * *(a1 + 8) + 8 * *a3);
  if (!v4)
  {
    return 0;
  }

  result = 0;
  v6 = *v4;
  if (v6 > 0x22 || ((0x7FFFFFFF0uLL >> v6) & 1) == 0)
  {
    return result;
  }

  if (*(v4 + 2) != 4)
  {
    return 0;
  }

  result = isStringMDNode(*(v4 - 4), a2);
  if (result)
  {
    v9 = 1;
    result = parseMDInt(0, v4, &v9, a4);
    if (result)
    {
      v10 = 2;
      result = parseMDInt(0, v4, &v10, a4 + 1);
      if (result)
      {
        v11 = 3;
        result = parseMDInt(0, v4, &v11, a4 + 2);
        if (result)
        {
          ++*a3;
          return 1;
        }
      }
    }
  }

  return result;
}

void std::__split_buffer<llvm::MDNode const**>::emplace_back<llvm::MDNode const**&>(unint64_t *a1, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::MDNode const**>>(v11);
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

BOOL parseMDOpaqueTypes(uint64_t a1, _DWORD *a2, _DWORD *a3, BOOL *a4)
{
  if (isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.indirect_command_buffer") || isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.command_buffer") || isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.compute_pipeline_state") || isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.render_pipeline_state") || isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.visible_function_table") || isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.primitive_acceleration_structure") || isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.instance_acceleration_structure") || isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.intersection_function_table") || (result = isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.depth_stencil_state")))
  {
    *a4 = 0;
    *a3 = 1;
    v9 = *(a1 + 8);
    v18 = 2;
    if (v9 >= 3)
    {
      do
      {
        v10 = parseMDLocationIndex(a1, &v18, a2, a3);
        v11 = v18;
        v12 = v18;
        if ((v10 & 1) == 0)
        {
          v12 = ++v18;
          if (isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8 * v11), "air.arg_type_name"))
          {
            v13 = v11 + 2;
            v18 = v13;
            String = llvm::MDString::getString(*(a1 - 8 * *(a1 + 8) + 8 * v12));
            v16 = v15 >= 5 && *String == 1634890337 && *(String + 4) == 121;
            *a4 = v16;
            v12 = v13;
          }
        }
      }

      while (v12 < v9);
    }

    return 1;
  }

  return result;
}

uint64_t parseMDStructType(uint64_t a1)
{
  v77[1] = *MEMORY[0x277D85DE8];
  v74[1] = 0;
  v75[0] = v76;
  v75[1] = 0x500000000;
  v73 = v74;
  v74[0] = 0;
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_168;
  }

  v3 = 0;
  v67 = 1;
  do
  {
    v72 = 0;
    v71 = 0;
    if (isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8 * v3), "air.struct_type_info"))
    {
      v4 = *(a1 - 8 * *(a1 + 8) + 8 * (v3 + 1));
      if (v4)
      {
        if (((*v4 < 0x23uLL) & (0x7FFFFFFF0uLL >> *v4)) != 0)
        {
          v5 = *(a1 - 8 * *(a1 + 8) + 8 * (v3 + 1));
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        v5 = 0;
      }

      v67 = v67 & (v5 != 0);
      v6 = parseMDStructType(v5);
      v3 += 2;
    }

    else
    {
      v6 = 0;
    }

    LODWORD(v77[0]) = v3;
    v7 = parseMDInt(0, a1, v77, &v72 + 1);
    LODWORD(v77[0]) = v3 + 1;
    v8 = parseMDInt(0, a1, v77, &v72);
    LODWORD(v77[0]) = v3 + 2;
    v9 = parseMDInt(0, a1, v77, &v71);
    v10 = a1 - 8 * *(a1 + 8);
    v11 = *(v10 + 8 * (v3 + 3));
    if (v11)
    {
      if (*v11)
      {
        v12 = 0;
      }

      else
      {
        v12 = *(v10 + 8 * (v3 + 3));
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v67 & v7 & v8 & v9;
    if (!v12)
    {
      v13 = 0;
    }

    v14 = *(v10 + 8 * (v3 + 4));
    if (v14)
    {
      if (*v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = v14;
      }
    }

    else
    {
      v15 = 0;
    }

    v3 += 5;
    if (!v15)
    {
      v13 = 0;
    }

    v67 = v13;
    String = llvm::MDString::getString(v12);
    v18 = v17;
    llvm::MDString::getString(v15);
    while (v3 < v2)
    {
      v19 = *(a1 - 8 * *(a1 + 8) + 8 * v3);
      if (!isStringMDNode(v19, "air.render_target") && !isStringMDNode(v19, "air.raster_order_group") && !isStringMDNode(v19, "air.imageblock_index"))
      {
        if (!isStringMDNode(v19, "air.indirect_argument"))
        {
          break;
        }

        v20 = *(a1 - 8 * *(a1 + 8) + 8 * (v3 + 1));
        if (v20)
        {
          v21 = *v20;
          if (v21 <= 0x22 && ((0x7FFFFFFF0uLL >> v21) & 1) != 0)
          {
            v22 = llvm::MDString::getString(*&v20[-8 * *(v20 + 2) + 8]);
            if (v23 > 25)
            {
              if (v23 <= 30)
              {
                if (v23 != 26)
                {
                  if (v23 != 27)
                  {
                    goto LABEL_142;
                  }

                  v32 = *(v22 + 19);
                  v34 = *v22 == 0x69646E692E726961 && *(v22 + 8) == 0x6D6F635F74636572 && *(v22 + 16) == 0x6675625F646E616DLL;
                  v35 = 0x7265666675625F64;
LABEL_120:
                  if (!v34 || v32 != v35)
                  {
                    goto LABEL_142;
                  }

                  goto LABEL_137;
                }

                if (*v22 != 0x706D6F632E726961 || *(v22 + 8) != 0x657069705F657475 || *(v22 + 16) != 0x6174735F656E696CLL || *(v22 + 24) != 25972)
                {
                  v24 = *(v22 + 24);
                  v26 = *v22 == 0x697369762E726961 && *(v22 + 8) == 0x636E75665F656C62 && *(v22 + 16) == 0x6261745F6E6F6974;
                  v27 = 25964;
LABEL_94:
                  if (!v26 || v24 != v27)
                  {
                    goto LABEL_142;
                  }
                }

LABEL_137:
                v70 = 0;
                v68 = 0;
                v50 = parseMDOpaqueTypes(v20, &v69, &v70, &v68);
                v51 = *(a1 + 16);
                v52 = (v51 & 0xFFFFFFFFFFFFFFF8);
                if ((v51 & 4) != 0)
                {
                  v52 = *v52;
                }

                v77[0] = llvm::PointerType::get(v52, 1);
                v53 = llvm::StructType::get();
                v6 = v53;
                if (v68)
                {
                  v77[0] = llvm::ArrayType::get(v53, v70);
                  v6 = llvm::StructType::get();
                }

                v67 &= v50;
                goto LABEL_142;
              }

              switch(v23)
              {
                case 31:
                  v32 = *(v22 + 23);
                  v34 = *v22 == 0x65746E692E726961 && *(v22 + 8) == 0x6E6F697463657372 && *(v22 + 16) == 0x6F6974636E75665FLL;
                  v35 = 0x656C6261745F6E6FLL;
                  goto LABEL_120;
                case 35:
                  v28 = "air.instance_acceleration_structure";
                  v29 = 35;
                  break;
                case 36:
                  v28 = "air.primitive_acceleration_structure";
                  v29 = 36;
                  break;
                default:
                  goto LABEL_142;
              }

              if (!memcmp(v22, v28, v29))
              {
                goto LABEL_137;
              }
            }

            else
            {
              if (v23 <= 18)
              {
                if (v23 != 10)
                {
                  if (v23 != 18)
                  {
                    goto LABEL_142;
                  }

                  v30 = *v22 == 0x6D6D6F632E726961 && *(v22 + 8) == 0x666675625F646E61;
                  if (!v30 || *(v22 + 16) != 29285)
                  {
                    goto LABEL_142;
                  }

                  goto LABEL_137;
                }

                if (*v22 != 0x666675622E726961 || *(v22 + 8) != 29285)
                {
                  goto LABEL_142;
                }
              }

              else
              {
                if (v23 != 19)
                {
                  if (v23 != 23)
                  {
                    if (v23 != 25)
                    {
                      goto LABEL_142;
                    }

                    v24 = *(v22 + 24);
                    v25 = *v22 == 0x646E65722E726961 && *(v22 + 8) == 0x6C657069705F7265;
                    v26 = v25 && *(v22 + 16) == 0x746174735F656E69;
                    v27 = 101;
                    goto LABEL_94;
                  }

                  if (*v22 != 0x747065642E726961 || *(v22 + 8) != 0x69636E6574735F68 || *(v22 + 15) != 0x65746174735F6C69)
                  {
                    goto LABEL_142;
                  }

                  goto LABEL_137;
                }

                if (*v22 != 0x69646E692E726961 || *(v22 + 8) != 0x6675625F74636572 || *(v22 + 11) != 0x7265666675625F74)
                {
                  goto LABEL_142;
                }
              }

              v70 = 0;
              if (isStringMDNode(*&v20[-8 * *(v20 + 2) + 48], "air.address_space"))
              {
                LODWORD(v77[0]) = 7;
                parseMDInt(0, v20, v77, &v70);
              }

              v44 = *(a1 + 16);
              v45 = (v44 & 0xFFFFFFFFFFFFFFF8);
              if ((v44 & 4) != 0)
              {
                v45 = *v45;
              }

              v6 = llvm::PointerType::get(v45, v70);
            }
          }
        }
      }

LABEL_142:
      v3 += 2;
    }

    if (!v6)
    {
      v54 = *(a1 + 16);
      v55 = (v54 & 0xFFFFFFFFFFFFFFF8);
      if ((v54 & 4) != 0)
      {
        v55 = *v55;
      }

      v6 = parseTypeName(v55, String, v18);
    }

    if (v71)
    {
      v6 = llvm::ArrayType::get(v6, v71);
    }

    v56 = v74[0];
    v57 = HIDWORD(v72);
    if (!v74[0])
    {
LABEL_154:
      v59 = v72;
      v77[0] = &v72 + 1;
      goto LABEL_155;
    }

    while (2)
    {
      v58 = *(v56 + 8);
      if (HIDWORD(v72) < v58)
      {
LABEL_153:
        v56 = *v56;
        if (!v56)
        {
          goto LABEL_154;
        }

        continue;
      }

      break;
    }

    if (v58 < HIDWORD(v72))
    {
      ++v56;
      goto LABEL_153;
    }

    v77[0] = &v72 + 1;
    v61 = std::__tree<std::__value_type<unsigned int,std::pair<llvm::Type *,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<llvm::Type *,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<llvm::Type *,unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v73, HIDWORD(v72), v77);
    v59 = v72;
    if (*(v61 + 12) < v72)
    {
      v77[0] = &v72 + 1;
      v57 = HIDWORD(v72);
LABEL_155:
      v60 = std::__tree<std::__value_type<unsigned int,std::pair<llvm::Type *,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<llvm::Type *,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<llvm::Type *,unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v73, v57, v77);
      v60[5] = v6;
      *(v60 + 12) = v59;
    }
  }

  while (v3 < v2);
  v62 = v73;
  if (v73 != v74)
  {
    do
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v75, v62[5]);
      v63 = v62[1];
      if (v63)
      {
        do
        {
          v64 = v63;
          v63 = *v63;
        }

        while (v63);
      }

      else
      {
        do
        {
          v64 = v62[2];
          v25 = *v64 == v62;
          v62 = v64;
        }

        while (!v25);
      }

      v62 = v64;
    }

    while (v64 != v74);
  }

  if (v67)
  {
LABEL_168:
    v65 = llvm::StructType::get();
  }

  else
  {
    v65 = 0;
  }

  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v74[0]);
  if (v75[0] != v76)
  {
    free(v75[0]);
  }

  return v65;
}

uint64_t parseTypeName(llvm::Type *a1, uint64_t a2, unint64_t a3)
{
  if (a3 > 5)
  {
    switch(a3)
    {
      case 6uLL:
        if (*a2 == 1869116277 && *(a2 + 4) == 29810)
        {
          goto LABEL_49;
        }

LABEL_70:
        if (*a2 != 1953523044 || *(a2 + 4) != 104)
        {
          if (*a2 != 1634890337 || *(a2 + 4) != 15481)
          {
            return 0;
          }

          v20 = parseTypeName(a1, a2 + 6, a3 - 6);
          v21 = a3;
          do
          {
            v22 = v21;
            if (!v21)
            {
              break;
            }

            --v21;
          }

          while (*(a2 - 1 + v22) != 44);
          if (a3 < v22)
          {
            v22 = a3;
          }

          v33 = a2 + v22;
          v34 = a3 - v22;
          first_not_of = llvm::StringRef::find_first_not_of(&v33);
          if (first_not_of >= v34)
          {
            v24 = v34;
          }

          else
          {
            v24 = first_not_of;
          }

          if (v34 == v24)
          {
LABEL_113:
            v33 = 0;
            AsUnsignedInteger = llvm::getAsUnsignedInteger();
            v31 = v33;
            if (v33 >= 0x100000000)
            {
              v31 = 0;
            }

            if (AsUnsignedInteger)
            {
              v32 = 0;
            }

            else
            {
              v32 = v31;
            }

            return llvm::ArrayType::get(v20, v32);
          }

          v25 = MEMORY[0x277D85DE0];
          v26 = v34 - v24;
          v27 = (v33 + v24);
          while (1)
          {
            v28 = *v27;
            if ((v28 & 0x80000000) != 0)
            {
              break;
            }

            if ((*(v25 + 4 * v28 + 60) & 0x400) == 0)
            {
              v29 = *(v25 + 4 * v28 + 60) & 0x4000;
              goto LABEL_100;
            }

LABEL_101:
            ++v27;
            if (!--v26)
            {
              goto LABEL_113;
            }
          }

          v29 = __maskrune(v28, 0x4000uLL);
LABEL_100:
          if (!v29)
          {
            goto LABEL_113;
          }

          goto LABEL_101;
        }

LABEL_79:
        v19 = 1;
LABEL_107:

        return llvm::PointerType::get(a1, v19);
      case 7uLL:
        if (*a2 == 1886216563 && *(a2 + 3) == 1919249520)
        {
          v19 = 2;
          goto LABEL_107;
        }

        goto LABEL_66;
      case 0xDuLL:
        if (*a2 == 0x665F64656B636170 && *(a2 + 5) == 0x3374616F6C665F64)
        {
          FloatTy = llvm::Type::getFloatTy(a1, a2);

          return llvm::ArrayType::get(FloatTy, 3);
        }

        goto LABEL_66;
    }

LABEL_52:
    if (a3 < 7)
    {
      return 0;
    }

LABEL_66:
    if (*a2 == 1954047348 && *(a2 + 3) == 1701999988)
    {
      goto LABEL_79;
    }

    goto LABEL_70;
  }

  if (a3 == 3)
  {
    if (*a2 != 28265 || *(a2 + 2) != 116)
    {
      return 0;
    }

    goto LABEL_83;
  }

  if (a3 == 4)
  {
    if (*a2 == 1819242338)
    {

      return llvm::Type::getInt1Ty(a1, a2);
    }

    if (*a2 == 1918986339)
    {
LABEL_80:

      return llvm::Type::getInt8Ty(a1, a2);
    }

    if (*a2 != 1953393013)
    {
      if (*a2 == 1735290732)
      {
LABEL_110:

        return llvm::Type::getInt64Ty(a1, a2);
      }

      if (*a2 == 1718378856)
      {

        return llvm::Type::getHalfTy(a1, a2);
      }

      return 0;
    }

LABEL_83:

    return llvm::Type::getInt32Ty(a1, a2);
  }

  if (a3 != 5)
  {
    goto LABEL_52;
  }

  if (*a2 == 1634231157 && *(a2 + 4) == 114)
  {
    goto LABEL_80;
  }

  if (*a2 == 1919903859 && *(a2 + 4) == 116)
  {
LABEL_49:

    return llvm::Type::getInt16Ty(a1, a2);
  }

  if (*a2 == 1852796021 && *(a2 + 4) == 103)
  {
    goto LABEL_110;
  }

  if (*a2 != 1634692198 || *(a2 + 4) != 116)
  {
    if (*a2 != 1953523044 || *(a2 + 4) != 104)
    {
      return 0;
    }

    goto LABEL_79;
  }

  return llvm::Type::getFloatTy(a1, a2);
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::pair<llvm::Type *,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<llvm::Type *,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<llvm::Type *,unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t **a1, unsigned int a2, _DWORD **a3)
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

uint64_t AGCLLVMUserShader::buildTileQuadgroupIndexInThreadgroup(AGCLLVMUserShader *this, llvm::Type *a2, uint64_t a3, uint64_t a4)
{
  v6 = this + *(*this - 24);
  v7 = AGCLLVMUserShader::buildTileThreadPositionInThreadgroup(this, a2, 0, a4);
  v8 = llvm::ConstantInt::get();
  v27[0] = "quad_x";
  v28 = 259;
  LShr = llvm::IRBuilderBase::CreateLShr((v6 + 1712), v7, v8, v27);
  v10 = this + *(*this - 24);
  v12 = AGCLLVMUserShader::buildTileThreadPositionInThreadgroup(this, a2, 1, v11);
  v13 = llvm::ConstantInt::get();
  v27[0] = "quad_y";
  v28 = 259;
  v14 = llvm::IRBuilderBase::CreateLShr((v10 + 1712), v12, v13, v27);
  v15 = this + *(*this - 24);
  v16 = (*(*this + 480))(this, 0);
  v17 = AGCLLVMBuilder::truncateToSmall((this + *(*this - 24) + 1704), v16, a2);
  v18 = llvm::ConstantInt::get();
  v28 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v15 + 1712), v17, v18, v27);
  v20 = llvm::ConstantInt::get();
  v25[0] = "num_quads_x";
  v26 = 259;
  v21 = llvm::IRBuilderBase::CreateLShr((v15 + 1712), Add, v20, v25);
  v22 = this + *(*this - 24);
  v28 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v22 + 1712), v14, v21, v27);
  v26 = 257;
  return llvm::IRBuilderBase::CreateAdd((v22 + 1712), Mul, LShr, v25);
}

uint64_t AGCLLVMUserShader::buildTileThreadPositionInThreadgroup(AGCLLVMUserShader *this, llvm::Type *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 2)
  {

    return llvm::ConstantInt::get();
  }

  else
  {
    v7 = *(this + *(*this - 24) + 2168);
    v8 = (*(*v7 + 688))(v7, a2, a3, a4);
    v9 = this + *(*this - 24);
    v12 = *(v9 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v13, (v9 + 1712));
    v14 = *(v9 + 452);
    v10 = (*(*v8 + 272))(v8, &v12, a2, a3);
    if (v13)
    {
      llvm::MetadataTracking::untrack();
    }

    return v10;
  }
}

uint64_t AGCLLVMUserShader::buildTileThreadPositionInGrid(AGCLLVMUserShader *this, llvm::Type *a2, uint64_t a3, BOOL a4)
{
  if (a3 == 2)
  {

    return llvm::ConstantInt::get();
  }

  else
  {
    v7 = this + *(*this - 24);
    v8 = AGCLLVMUserShader::buildTileThreadsPerThreadgroup(this, a2, a3, a4);
    v10 = AGCLLVMUserShader::buildTileThreadgroupPositionInGrid(this, a2, a3, v9);
    v17 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v7 + 1712), v8, v10, v16);
    v13 = AGCLLVMUserShader::buildTileThreadPositionInThreadgroup(this, a2, a3, v12);
    v15[16] = 257;
    return llvm::IRBuilderBase::CreateAdd((v7 + 1712), Mul, v13, v15);
  }
}

llvm::Value *AGCLLVMUserShader::buildTileThreadsPerThreadgroup(AGCLLVMUserShader *this, llvm::Type *a2, int a3, BOOL a4)
{
  switch(a3)
  {
    case 0:
      v7 = *(*this + 480);
      goto LABEL_7;
    case 1:
      v7 = *(*this + 480);
LABEL_7:
      v6 = v7();
      goto LABEL_8;
    case 2:
      v6 = llvm::ConstantInt::get();
LABEL_8:
      v8 = v6;
      goto LABEL_10;
  }

  v8 = 0;
LABEL_10:
  v9 = (this + *(*this - 24) + 1704);

  return AGCLLVMBuilder::truncateToSmall(v9, v8, a2);
}

uint64_t AGCLLVMUserShader::buildTileThreadgroupPositionInGrid(AGCLLVMUserShader *this, llvm::Type *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 2)
  {

    return llvm::ConstantInt::get();
  }

  else
  {
    v5 = a3;
    v7 = *(this + *(*this - 24) + 2168);
    v8 = (*(*v7 + 688))(v7, a2, a3, a4);
    v9 = this + *(*this - 24);
    v12 = *(v9 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v13, (v9 + 1712));
    v14 = *(v9 + 452);
    v10 = AGCLLVMGen3TargetLowerer::buildThreadgroupIndex(v8, &v12, a2, v5);
    if (v13)
    {
      llvm::MetadataTracking::untrack();
    }

    return v10;
  }
}

double std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(a1, a2, a3, a4);
  v10 = *(a4 + 47);
  v11 = *(a5 + 47);
  if (v11 >= 0)
  {
    v12 = *(a5 + 47);
  }

  else
  {
    v12 = *(a5 + 32);
  }

  if (v11 >= 0)
  {
    v13 = (a5 + 24);
  }

  else
  {
    v13 = *(a5 + 24);
  }

  if (v10 >= 0)
  {
    v14 = *(a4 + 47);
  }

  else
  {
    v14 = *(a4 + 32);
  }

  if (v10 >= 0)
  {
    v15 = (a4 + 24);
  }

  else
  {
    v15 = *(a4 + 24);
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = memcmp(v13, v15, v16);
  v19 = v12 < v14;
  if (v17)
  {
    v19 = v17 < 0;
  }

  if (v19)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(a4, a5);
    v20 = *(a3 + 47);
    v21 = *(a4 + 47);
    if (v21 >= 0)
    {
      v22 = *(a4 + 47);
    }

    else
    {
      v22 = *(a4 + 32);
    }

    if (v21 >= 0)
    {
      v23 = (a4 + 24);
    }

    else
    {
      v23 = *(a4 + 24);
    }

    if (v20 >= 0)
    {
      v24 = *(a3 + 47);
    }

    else
    {
      v24 = *(a3 + 32);
    }

    if (v20 >= 0)
    {
      v25 = (a3 + 24);
    }

    else
    {
      v25 = *(a3 + 24);
    }

    if (v24 >= v22)
    {
      v26 = v22;
    }

    else
    {
      v26 = v24;
    }

    v27 = memcmp(v23, v25, v26);
    v28 = v22 < v24;
    if (v27)
    {
      v28 = v27 < 0;
    }

    if (v28)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(a3, a4);
      v29 = *(a2 + 47);
      v30 = *(a3 + 47);
      if (v30 >= 0)
      {
        v31 = *(a3 + 47);
      }

      else
      {
        v31 = *(a3 + 32);
      }

      if (v30 >= 0)
      {
        v32 = (a3 + 24);
      }

      else
      {
        v32 = *(a3 + 24);
      }

      if (v29 >= 0)
      {
        v33 = *(a2 + 47);
      }

      else
      {
        v33 = *(a2 + 32);
      }

      if (v29 >= 0)
      {
        v34 = (a2 + 24);
      }

      else
      {
        v34 = *(a2 + 24);
      }

      if (v33 >= v31)
      {
        v35 = v31;
      }

      else
      {
        v35 = v33;
      }

      v36 = memcmp(v32, v34, v35);
      v37 = v31 < v33;
      if (v36)
      {
        v37 = v36 < 0;
      }

      if (v37)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(a2, a3);
        v38 = *(a1 + 47);
        v39 = *(a2 + 47);
        if (v39 >= 0)
        {
          v40 = *(a2 + 47);
        }

        else
        {
          v40 = *(a2 + 32);
        }

        if (v39 >= 0)
        {
          v41 = (a2 + 24);
        }

        else
        {
          v41 = *(a2 + 24);
        }

        if (v38 >= 0)
        {
          v42 = *(a1 + 47);
        }

        else
        {
          v42 = *(a1 + 32);
        }

        if (v38 >= 0)
        {
          v43 = (a1 + 24);
        }

        else
        {
          v43 = *(a1 + 24);
        }

        if (v42 >= v40)
        {
          v44 = v40;
        }

        else
        {
          v44 = v42;
        }

        v45 = memcmp(v41, v43, v44);
        v46 = v40 < v42;
        if (v45)
        {
          v46 = v45 < 0;
        }

        if (v46)
        {

          *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(a1, a2).n128_u64[0];
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *>(uint64_t a1, __int128 *a2)
{
  v4 = (a2 - a1) >> 6;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 47);
        v6 = *(a2 - 17);
        if (v6 >= 0)
        {
          v7 = *(a2 - 17);
        }

        else
        {
          v7 = *(a2 - 4);
        }

        if (v6 >= 0)
        {
          v8 = a2 - 40;
        }

        else
        {
          v8 = *(a2 - 5);
        }

        if (v5 >= 0)
        {
          v9 = *(a1 + 47);
        }

        else
        {
          v9 = *(a1 + 32);
        }

        if (v5 >= 0)
        {
          v10 = (a1 + 24);
        }

        else
        {
          v10 = *(a1 + 24);
        }

        if (v9 >= v7)
        {
          v11 = v7;
        }

        else
        {
          v11 = v9;
        }

        v12 = memcmp(v8, v10, v11);
        v13 = v7 < v9;
        if (v12)
        {
          v13 = v12 < 0;
        }

        if (v13)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(a1, a2 - 4);
        }

        return 1;
      }

      goto LABEL_28;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(a1, a1 + 64, (a2 - 4));
      return 1;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(a1, a1 + 64, a1 + 128, (a2 - 4));
      return 1;
    case 5:
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(a1, a1 + 64, a1 + 128, a1 + 192, (a2 - 4));
      return 1;
  }

LABEL_28:
  v14 = (a1 + 128);
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(a1, a1 + 64, a1 + 128);
  v15 = (a1 + 192);
  if ((a1 + 192) == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    v18 = (v15 + 24);
    v21 = *(v14 + 3);
    v20 = v14 + 24;
    v19 = v21;
    v22 = *(v20 + 23);
    v23 = *(v15 + 47);
    if (v23 >= 0)
    {
      v24 = *(v15 + 47);
    }

    else
    {
      v24 = *(v15 + 4);
    }

    if (v23 >= 0)
    {
      v25 = v15 + 24;
    }

    else
    {
      v25 = *(v15 + 3);
    }

    if (v22 >= 0)
    {
      v26 = *(v20 + 23);
    }

    else
    {
      v26 = *(v20 + 8);
    }

    if (v22 >= 0)
    {
      v27 = v20;
    }

    else
    {
      v27 = v19;
    }

    if (v26 >= v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = v26;
    }

    v29 = memcmp(v25, v27, v28);
    v30 = v24 < v26;
    if (v29)
    {
      v30 = v29 < 0;
    }

    if (v30)
    {
      v46 = *v15;
      v47 = *(v15 + 4);
      v48 = *v18;
      v49 = *(v15 + 5);
      *v18 = 0;
      *(v15 + 4) = 0;
      *(v15 + 5) = 0;
      v31 = v16;
      v50 = v15[3];
      while (1)
      {
        v32 = a1 + v31;
        *(v32 + 192) = *(a1 + v31 + 128);
        *(v32 + 208) = *(a1 + v31 + 144);
        if (*(a1 + v31 + 239) < 0)
        {
          operator delete(*(v32 + 216));
        }

        *(v32 + 216) = *(v32 + 152);
        *(v32 + 232) = *(v32 + 168);
        *(v32 + 175) = 0;
        *(v32 + 152) = 0;
        *(v32 + 240) = *(v32 + 176);
        if (v31 == -128)
        {
          break;
        }

        v33 = a1 + v31;
        v34 = *(a1 + v31 + 111);
        if (v49 >= 0)
        {
          v35 = HIBYTE(v49);
        }

        else
        {
          v35 = *(&v48 + 1);
        }

        if (v49 >= 0)
        {
          v36 = &v48;
        }

        else
        {
          v36 = v48;
        }

        if (v34 >= 0)
        {
          v37 = *(a1 + v31 + 111);
        }

        else
        {
          v37 = *(a1 + v31 + 96);
        }

        if (v34 >= 0)
        {
          v38 = (a1 + v31 + 88);
        }

        else
        {
          v38 = *(a1 + v31 + 88);
        }

        if (v37 >= v35)
        {
          v39 = v35;
        }

        else
        {
          v39 = v37;
        }

        v40 = memcmp(v36, v38, v39);
        v41 = v35 < v37;
        if (v40)
        {
          v41 = v40 < 0;
        }

        v31 -= 64;
        if (!v41)
        {
          v42 = v33 + 152;
          v43 = a1 + v31 + 192;
          v44 = (v33 + 176);
          goto LABEL_72;
        }
      }

      v42 = a1 + 24;
      v44 = (a1 + 48);
      v43 = a1;
LABEL_72:
      *v43 = v46;
      *(v43 + 16) = v47;
      if (*(v43 + 47) < 0)
      {
        operator delete(*v42);
      }

      *v42 = v48;
      *(v42 + 16) = v49;
      *v44 = v50;
      if (++v17 == 8)
      {
        return v15 + 4 == a2;
      }
    }

    v14 = v15;
    v16 += 64;
    v15 += 4;
    if (v15 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMUserShader::initializeMaps(void)::$_1 &&>>(llvm::StringMapImpl ****a1)
{
  v1 = **a1;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(*v1, "air.center", 0xAuLL) + 8) = 0;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(*v1, "air.centroid", 0xCuLL) + 8) = 2;
  result = llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(*v1, "air.sample", 0xAuLL);
  *(*result + 8) = 1;
  return result;
}

uint64_t *std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMUserShader::initializeMaps(void)::$_0 &&>>(llvm::StringMapImpl ****a1)
{
  v1 = **a1;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(*v1, "air.perspective", 0xFuLL) + 8) = 0;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(*v1, "air.flat", 8uLL) + 8) = 1;
  result = llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(*v1, "air.no_perspective", 0x12uLL);
  *(*result + 8) = 2;
  return result;
}

uint64_t std::istringstream::basic_istringstream[abi:nn200100](uint64_t a1, const std::string *a2)
{
  *(a1 + 168) = 0;
  v4 = MEMORY[0x277D82898] + 24;
  v5 = MEMORY[0x277D82898] + 64;
  *(a1 + 120) = MEMORY[0x277D82898] + 64;
  v6 = a1 + 16;
  v7 = *(MEMORY[0x277D82820] + 16);
  v8 = *(MEMORY[0x277D82820] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  *(a1 + 8) = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, (a1 + 16));
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v4;
  *(a1 + 120) = v5;
  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  MEMORY[0x20F331D00](a1 + 24);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  *(a1 + 96) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 112) = 8;
  std::string::operator=((a1 + 80), a2);
  std::stringbuf::__init_buf_ptrs[abi:nn200100](v6);
  return a1;
}

uint64_t AGCLLVMUserShader::setupLIBMetadata(uint32x2_t *a1, unsigned int a2, unint64_t a3, uint64_t a4, uint64_t a5, llvm::StringMapImpl *a6, llvm::StringMapImpl *a7)
{
  v7 = a3;
  v9 = a3 >> 16;
  v53 = 1;
  v54 = a2;
  v52 = 0;
  v10 = *(a4 + 8);
  if (v10 > a2)
  {
    v12 = a2;
    v13 = 0;
    v43 = a1 + 271;
    v44 = a5;
    LOWORD(v14) = a3;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (isStringMDNode(*(a4 - 8 * v10 + 8 * v12), "implicit") || isStringMDNode(*(a4 - 8 * *(a4 + 8) + 8 * v12), "explicit"))
          {
            v54 = ++v12;
            goto LABEL_8;
          }

          if (parseMDInt("air.imageblock_data_size", a4, &v54, &v52))
          {
            v12 = v54;
            v10 = *(a4 + 8);
            v13 = 1;
            goto LABEL_9;
          }

          v15 = parseMDInt("air.arg_type_align_size", a4, &v54, &v53);
          v12 = v54;
          if ((v15 & 1) == 0)
          {
            break;
          }

LABEL_8:
          v10 = *(a4 + 8);
LABEL_9:
          if (v12 >= v10)
          {
            a5 = v44;
            if (v9)
            {
              goto LABEL_33;
            }

LABEL_37:
            LOBYTE(v21) = BYTE1(v14);
            goto LABEL_38;
          }
        }

        if (!isStringMDNode(*(a4 - 8 * *(a4 + 8) + 8 * v54), "air.alias_implicit_imageblock"))
        {
          break;
        }

        LOWORD(v14) = 0;
        if ((v9 & 1) == 0)
        {
          LOBYTE(v9) = 1;
        }

        v54 = ++v12;
        v10 = *(a4 + 8);
        a5 = v44;
        if (v12 >= v10)
        {
          goto LABEL_32;
        }
      }

      v51 = 0;
      if (parseMDInt("air.alias_implicit_imageblock_render_target", a4, &v54, &v51))
      {
        a5 = v44;
        if (((*(v44 + 32) >> v51) & 1) == 0)
        {
          std::to_string(&v50, v51);
          v33 = std::string::insert(&v50, 0, "Aliasing implicit image block at unset color attachment: ");
          v34 = v33->__r_.__value_.__r.__words[2];
          *__p = *&v33->__r_.__value_.__l.__data_;
          v47 = v34;
          v33->__r_.__value_.__l.__size_ = 0;
          v33->__r_.__value_.__r.__words[2] = 0;
          v33->__r_.__value_.__r.__words[0] = 0;
          if (v47 >= 0)
          {
            v35 = __p;
          }

          else
          {
            v35 = __p[0];
          }

          if (v47 >= 0)
          {
            v36 = HIBYTE(v47);
          }

          else
          {
            v36 = __p[1];
          }

          std::string::append((&a1[207] + *(*a1 - 24)), v35, v36);
          if (SHIBYTE(v47) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v50.__r_.__value_.__l.__data_);
          }

          goto LABEL_47;
        }

        v16 = *(v44 + 4 * v51);
        if ((~v16 & 0xFF000) == 0)
        {
          v37 = std::__throw_bad_optional_access[abi:nn200100]();
          return AGCLLVMUserShader::setupLIBStruct(v37, v38, v39, v40);
        }

        LODWORD(v14) = *(*(v43 + *(*a1 - 24)) + 964) * (v16 >> 12);
        if ((v9 & 1) == 0)
        {
          LOBYTE(v9) = 1;
        }
      }

      else
      {
        v50.__r_.__value_.__r.__words[0] = 0;
        if (parseMDType<llvm::MDNode>("air.struct_type_info", a4, &v54, &v50))
        {
          __p[0] = 0;
          __p[1] = 0;
          LODWORD(v47) = -1;
          v48 = 0;
          v49 = 0;
          v17 = v50.__r_.__value_.__r.__words[0];
          v18 = a1;
          v19 = a6;
          goto LABEL_26;
        }

        v45 = 0;
        if (parseMDType<llvm::MDNode>("air.imageblock_master", a4, &v54, &v45))
        {
          __p[0] = 0;
          __p[1] = 0;
          LODWORD(v47) = -1;
          v48 = 0;
          v49 = 0;
          v17 = v45;
          v18 = a1;
          v19 = a7;
LABEL_26:
          v20 = AGCLLVMUserShader::setupLIBStruct(v18, v17, __p, v19);
          a5 = v44;
          if ((v20 & 1) == 0)
          {
            goto LABEL_47;
          }

          goto LABEL_29;
        }

        ++v54;
        a5 = v44;
      }

LABEL_29:
      v12 = v54;
      v10 = *(a4 + 8);
      if (v54 >= v10)
      {
        goto LABEL_32;
      }
    }
  }

  v13 = 0;
  LOWORD(v14) = a3;
LABEL_32:
  if ((v9 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_33:
  v14 = v53 + v14 + ~(((v53 + v14) - 1) % v53);
  v21 = v14 >> 8;
  if (v13)
  {
    v52 += v14;
  }

  LOBYTE(v9) = 1;
LABEL_38:
  if (a1[470].i8[6] == 1)
  {
    v22 = &v52;
    v23 = vld1_dup_f32(v22);
    a1[566] = vmax_u32(a1[566], v23);
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_44;
  }

  v24 = *(a5 + 32);
  if ((v24 & 0x400000) == 0)
  {
    v25 = (a1 + *(*a1 - 24));
    v26 = "Large MRT / Late Bound Render Targets / Unspecialized Pipelines are not supported with explicit image blocks";
    goto LABEL_46;
  }

  if ((v24 & 0x200000) == 0)
  {
LABEL_44:
    v27 = v7 & 0xFF000000;
    v28 = v21 << 8;
    v29 = v9 << 16;
    v30 = v14;
    v31 = 1;
    return v31 | ((v29 | v27 | v28 | v30) << 16);
  }

  v25 = (a1 + *(*a1 - 24));
  v26 = "Large MRT not supported with explicit image blocks";
LABEL_46:
  std::string::append(v25 + 69, v26);
LABEL_47:
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  return v31 | ((v29 | v27 | v28 | v30) << 16);
}

uint64_t AGCLLVMUserShader::setupLIBStruct(void *a1, uint64_t a2, _DWORD *a3, llvm::StringMapImpl *a4)
{
  v71 = 0;
  if (!*(a2 + 8))
  {
    return 1;
  }

  v58 = *MEMORY[0x277D82820];
  v57 = *(MEMORY[0x277D82820] + 24);
  v55 = a1 + 237;
  v56 = a1 + 238;
  v59 = a1 + 236;
  v53 = a1 + 234;
  v54 = a1 + 232;
  LODWORD(v5) = 1;
  while (1)
  {
    v70 = 0;
    v6 = parseMDType<llvm::MDNode>("air.struct_type_info", a2, &v71, &v70);
    v62 = parseMDType<llvm::MDNode>("air.inline_type_info", a2, &v71, &v70);
    v67 = 0uLL;
    LODWORD(v68) = -1;
    *(&v68 + 1) = 0;
    v69 = 0;
    v7 = v71++;
    v8 = v71;
    LODWORD(v73.__r_.__value_.__l.__data_) = v7;
    v9 = parseMDInt(0, a2, &v73, &v67);
    LODWORD(v67) = v67 + *a3;
    LODWORD(v73.__r_.__value_.__l.__data_) = v8;
    v10 = parseMDInt(0, a2, &v73, &v67 + 1);
    LODWORD(v73.__r_.__value_.__l.__data_) = v7 + 2;
    v11 = parseMDInt(0, a2, &v73, &v67 + 2);
    v12 = *(a2 - 8 * *(a2 + 8) + 8 * (v7 + 3));
    if (v12 && *v12)
    {
      v12 = 0;
    }

    v13 = v7 + 4;
    if (v12)
    {
      v14 = v9 & v10 & v11;
    }

    else
    {
      v14 = 0;
    }

    v73.__r_.__value_.__r.__words[0] = llvm::MDString::getString(v12);
    v73.__r_.__value_.__l.__size_ = v15;
    llvm::StringRef::str(&__s, &v73);
    v16 = v7 + 5;
    v71 = v16;
    v17 = *(a2 - 8 * *(a2 + 8) + 8 * v13);
    if (v17)
    {
      if (*v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = *(a2 - 8 * *(a2 + 8) + 8 * v13);
      }
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      v19 = v14;
    }

    else
    {
      v19 = 0;
    }

    v73.__r_.__value_.__r.__words[0] = llvm::MDString::getString(v18);
    v73.__r_.__value_.__l.__size_ = v20;
    llvm::StringRef::str(v64, &v73);
    if (v16 < *(a2 + 8))
    {
      if (parseMDInt("air.raster_order_group", a2, &v71, &v68))
      {
        v21 = v68;
        if (v68 >= 7)
        {
          v21 = 7;
        }

        LODWORD(v68) = v21;
      }

      if (a3[4] != -1)
      {
        LODWORD(v68) = a3[4];
      }

      if (v71 < *(a2 + 8) && parseMDInt("air.render_target", a2, &v71, &v67 + 3))
      {
        LOBYTE(size) = *(&__s.__r_.__value_.__s + 23);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          if (__s.__r_.__value_.__l.__size_)
          {
            v78 = 1;
            std::string::__init_copy_ctor_external(&v77, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
            LOBYTE(size) = *(&__s.__r_.__value_.__s + 23);
LABEL_31:
            size = size;
            p_s = &__s;
            if ((size & 0x80u) != 0)
            {
              size = __s.__r_.__value_.__l.__size_;
              p_s = __s.__r_.__value_.__r.__words[0];
            }

            v24 = p_s->__r_.__value_.__s.__data_[size - 1];
            if ((v24 & 0x8000000000000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v24 + 60) & 0x400) != 0)
            {
              std::string::basic_string(&v73, &__s, 0, size - 1, &v72);
              if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v77.__r_.__value_.__l.__data_);
              }

              v77 = v73;
              v25 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
              if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v25 = __s.__r_.__value_.__l.__size_;
              }

              std::string::basic_string(&v72, &__s, v25 - 1, 0xFFFFFFFFFFFFFFFFLL, v79);
              std::istringstream::basic_istringstream[abi:nn200100](&v73, &v72);
              if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v72.__r_.__value_.__l.__data_);
              }

              MEMORY[0x20F331BA0](&v73, &v78);
              v73.__r_.__value_.__r.__words[0] = v58;
              *(v73.__r_.__value_.__r.__words + *(v58 - 24)) = v57;
              v73.__r_.__value_.__r.__words[2] = MEMORY[0x277D82878] + 16;
              if (v75 < 0)
              {
                operator delete(v74[7].__locale_);
              }

              v73.__r_.__value_.__r.__words[2] = MEMORY[0x277D82868] + 16;
              std::locale::~locale(v74);
              std::istream::~istream();
              MEMORY[0x20F331D40](&v76);
            }

            v26 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
            if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
            {
              if (v77.__r_.__value_.__l.__size_ <= 4)
              {
                if (v77.__r_.__value_.__l.__size_ == 3)
                {
                  if (*v77.__r_.__value_.__l.__data_ == 28265 && *(v77.__r_.__value_.__r.__words[0] + 2) == 116)
                  {
                    goto LABEL_96;
                  }
                }

                else if (v77.__r_.__value_.__l.__size_ == 4)
                {
                  if (*v77.__r_.__value_.__l.__data_ != 1953393013)
                  {
                    v27 = v77.__r_.__value_.__r.__words[0];
LABEL_72:
                    data = v27->__r_.__value_.__l.__data_;
                    v32 = *(*a1 - 24);
                    if (data == 1718378856)
                    {
                      v33 = v54;
LABEL_110:
                      v28 = *(v33 + v32);
                      if (v78 >= 2)
                      {
                        v28 = llvm::FixedVectorType::get();
                      }

                      if (v26 < 0)
                      {
                        operator delete(v77.__r_.__value_.__l.__data_);
                      }

                      goto LABEL_114;
                    }

LABEL_95:
                    v33 = v59;
                    goto LABEL_110;
                  }

                  goto LABEL_96;
                }

LABEL_94:
                v32 = *(*a1 - 24);
                goto LABEL_95;
              }

              if (v77.__r_.__value_.__l.__size_ != 5)
              {
                if (v77.__r_.__value_.__l.__size_ != 6)
                {
                  goto LABEL_94;
                }

                if (*v77.__r_.__value_.__l.__data_ != 1869116277 || *(v77.__r_.__value_.__r.__words[0] + 4) != 29810)
                {
                  goto LABEL_94;
                }

                goto LABEL_108;
              }

              if (*v77.__r_.__value_.__l.__data_ == 1919903859 && *(v77.__r_.__value_.__r.__words[0] + 4) == 116)
              {
                goto LABEL_108;
              }

              if (*v77.__r_.__value_.__l.__data_ != 1634692198 || *(v77.__r_.__value_.__r.__words[0] + 4) != 116)
              {
                if ((*(&v77.__r_.__value_.__s + 23) & 0x80) == 0 && HIBYTE(v77.__r_.__value_.__r.__words[2]) == 4)
                {
                  goto LABEL_49;
                }

                goto LABEL_94;
              }
            }

            else
            {
              if (HIBYTE(v77.__r_.__value_.__r.__words[2]) <= 4u)
              {
                if (HIBYTE(v77.__r_.__value_.__r.__words[2]) == 3)
                {
                  if (LOWORD(v77.__r_.__value_.__l.__data_) == 28265 && v77.__r_.__value_.__s.__data_[2] == 116)
                  {
                    goto LABEL_96;
                  }
                }

                else if (HIBYTE(v77.__r_.__value_.__r.__words[2]) == 4)
                {
                  if (LODWORD(v77.__r_.__value_.__l.__data_) != 1953393013)
                  {
LABEL_49:
                    v27 = &v77;
                    goto LABEL_72;
                  }

LABEL_96:
                  v32 = *(*a1 - 24);
                  v33 = v56;
                  goto LABEL_110;
                }

                goto LABEL_94;
              }

              if (HIBYTE(v77.__r_.__value_.__r.__words[2]) != 5)
              {
                if (HIBYTE(v77.__r_.__value_.__r.__words[2]) != 6)
                {
                  goto LABEL_94;
                }

                if (LODWORD(v77.__r_.__value_.__l.__data_) != 1869116277 || WORD2(v77.__r_.__value_.__r.__words[0]) != 29810)
                {
                  goto LABEL_94;
                }

LABEL_108:
                v32 = *(*a1 - 24);
                v33 = v55;
                goto LABEL_110;
              }

              if (LODWORD(v77.__r_.__value_.__l.__data_) == 1919903859 && v77.__r_.__value_.__s.__data_[4] == 116)
              {
                goto LABEL_108;
              }

              if (LODWORD(v77.__r_.__value_.__l.__data_) != 1634692198 || v77.__r_.__value_.__s.__data_[4] != 116)
              {
                goto LABEL_94;
              }
            }

            v32 = *(*a1 - 24);
            v33 = v53;
            goto LABEL_110;
          }
        }

        else if (*(&__s.__r_.__value_.__s + 23))
        {
          v78 = 1;
          v77 = __s;
          goto LABEL_31;
        }

        v28 = 0;
LABEL_114:
        *(&v68 + 1) = v28;
        v69 = 1;
      }
    }

    if (v6)
    {
      if ((AGCLLVMUserShader::setupLIBStruct(a1, v70, &v67, a4) & 1) == 0)
      {
        break;
      }

      goto LABEL_150;
    }

    if (!v62)
    {
      if (a4)
      {
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v41 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v41 = __s.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:nn200100](&v77, v41 + 1);
        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v42 = &v77;
        }

        else
        {
          v42 = v77.__r_.__value_.__r.__words[0];
        }

        if (v41)
        {
          if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v43 = &__s;
          }

          else
          {
            v43 = __s.__r_.__value_.__r.__words[0];
          }

          memmove(v42, v43, v41);
        }

        *(&v42->__r_.__value_.__l.__data_ + v41) = 64;
        if ((v65 & 0x80u) == 0)
        {
          v44 = v64;
        }

        else
        {
          v44 = v64[0];
        }

        if ((v65 & 0x80u) == 0)
        {
          v45 = v65;
        }

        else
        {
          v45 = v64[1];
        }

        v46 = std::string::append(&v77, v44, v45);
        v47 = v46->__r_.__value_.__r.__words[2];
        *&v73.__r_.__value_.__l.__data_ = *&v46->__r_.__value_.__l.__data_;
        v73.__r_.__value_.__r.__words[2] = v47;
        v46->__r_.__value_.__l.__size_ = 0;
        v46->__r_.__value_.__r.__words[2] = 0;
        v46->__r_.__value_.__r.__words[0] = 0;
        if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v48 = &v73;
        }

        else
        {
          v48 = v73.__r_.__value_.__r.__words[0];
        }

        if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v49 = SHIBYTE(v73.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v49 = v73.__r_.__value_.__l.__size_;
        }

        v50 = *llvm::StringMap<LIBStructFieldInfo,llvm::MallocAllocator>::try_emplace<>(a4, v48, v49);
        v51 = v68;
        *(v50 + 8) = v67;
        *(v50 + 40) = v69;
        *(v50 + 24) = v51;
        if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v73.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v77.__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_150;
    }

    v73.__r_.__value_.__r.__words[0] = 0;
    v40 = parseMDInlineTypeRecursively(v70, &v73);
    DWORD2(v67) *= v40;
    if (v73.__r_.__value_.__r.__words[0])
    {
      if (!AGCLLVMUserShader::setupLIBStruct(a1, v73.__r_.__value_.__l.__data_, &v67, a4))
      {
        break;
      }
    }

LABEL_150:
    if (v65 < 0)
    {
      operator delete(v64[0]);
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    v5 = v5 & v19;
    if (v71 >= *(a2 + 8))
    {
      return v5;
    }
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  return 0;
}

uint64_t parseMDInlineTypeRecursively(uint64_t a1, void *a2)
{
  v20 = 0;
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  if (isStringMDNode(*(a1 - 8 * *(a1 + 8)), "air.address_space"))
  {
    v24 = 1;
    parseMDInt(0, a1, &v24, &v23);
    v7 = 2;
    v4 = 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8 * v7), "air.struct_type_info");
  v9 = *(a1 + 8);
  if (v8)
  {
    v10 = *(a1 - 8 * v9 + 8 * (v4 + 1));
    if (v10)
    {
      if (((*v10 < 0x23uLL) & (0x7FFFFFFF0uLL >> *v10)) != 0)
      {
        v6 = *(a1 - 8 * v9 + 8 * (v4 + 1));
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v11 = -v9;
    v7 = (v4 + 2);
    v4 += 2;
  }

  else
  {
    v11 = -v9;
  }

  if (isStringMDNode(*(a1 + 8 * v11 + 8 * v7), "air.inline_type_info"))
  {
    v12 = *(a1 - 8 * *(a1 + 8) + 8 * (v4 + 1));
    if (v12)
    {
      if (((*v12 < 0x23uLL) & (0x7FFFFFFF0uLL >> *v12)) != 0)
      {
        v5 = *(a1 - 8 * *(a1 + 8) + 8 * (v4 + 1));
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v4 += 2;
  }

  v24 = v4;
  parseMDInt(0, a1, &v24, &v22);
  v24 = v4 + 1;
  parseMDInt(0, a1, &v24, &v21);
  v24 = v4 + 2;
  parseMDInt(0, a1, &v24, &v20);
  for (i = v4 + 4; i < v2; i += v16)
  {
    v14 = *(a1 - 8 * *(a1 + 8) + 8 * i);
    if (v14)
    {
      if (((*v14 < 0x23uLL) & (0x7FFFFFFF0uLL >> *v14)) != 0)
      {
        v15 = *(a1 - 8 * *(a1 + 8) + 8 * i);
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    if (isStringMDNode(v15, "air.indirect_argument"))
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }
  }

  v17 = v20;
  if (v6)
  {
    *a2 = v6;
  }

  else if (v5)
  {
    return parseMDInlineTypeRecursively(v5, a2) * v17;
  }

  return v17;
}

uint64_t AGCLLVMUserShader::markNoAliasForGL(uint64_t this)
{
  v1 = *(this + *(*this - 24) + 2136);
  v2 = v1 + 24;
  v3 = *(v1 + 32);
  if (v3 != v1 + 24)
  {
    while (1)
    {
      if (v3)
      {
        v4 = v3 - 56;
      }

      else
      {
        v4 = 0;
      }

      this = llvm::GlobalValue::isDeclaration(v4);
      if (this)
      {
        goto LABEL_6;
      }

      if ((*(v4 + 18) & 1) == 0)
      {
        break;
      }

      this = llvm::Function::BuildLazyArguments(v4);
      v5 = *(v4 + 88);
      if ((*(v4 + 18) & 1) == 0)
      {
        goto LABEL_11;
      }

      this = llvm::Function::BuildLazyArguments(v4);
      v6 = *(v4 + 88);
LABEL_13:
      v7 = v6 + 40 * *(v4 + 96);
      while (v5 != v7)
      {
        if (*(*v5 + 8) == 15)
        {
          this = llvm::Function::addParamAttr();
        }

        v5 += 40;
      }

LABEL_6:
      v3 = *(v3 + 8);
      if (v3 == v2)
      {
        return this;
      }
    }

    v5 = *(v4 + 88);
LABEL_11:
    v6 = v5;
    goto LABEL_13;
  }

  return this;
}

uint64_t AGCLLVMUserShader::parseMaxTotalThreadsPerThreadgroup(AGCLLVMUserShader *this)
{
  v2 = *this;
  v3 = *(this + *(*this - 24) + 2136);
  v4 = v3 + 24;
  v5 = *(v3 + 32);
  if (v5 != v3 + 24)
  {
    v6 = 0;
    do
    {
      if (llvm::Function::hasFnAttribute())
      {
        FnAttribute = llvm::Function::getFnAttribute();
        v21[0] = llvm::Attribute::getValueAsString(&FnAttribute);
        v21[1] = v7;
        llvm::StringRef::str(&__p, v21);
        v8 = std::stoi(&__p, 0, 10);
        if (v6 <= v8)
        {
          v6 = v8;
        }

        else
        {
          v6 = v6;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v5 = *(v5 + 8);
    }

    while (v5 != v4);
    if (v6)
    {
      return v6;
    }

    v2 = *this;
  }

  v9 = *(this + *(v2 - 24) + 2136);
  __p.__r_.__value_.__r.__words[0] = "air.kernel";
  v19 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v9, &__p);
  if (!NamedMetadata)
  {
    return 0;
  }

  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v12 = *(Operand + 8);
  if (v12 < 4)
  {
    return 0;
  }

  v13 = Operand;
  v14 = 3;
  while (1)
  {
    v15 = *(v13 - 8 * v12 + 8 * v14);
    v16 = *v15;
    if (v16 <= 0x22 && ((0x7FFFFFFF0uLL >> v16) & 1) != 0)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 0;
      if (*(v15 + 2))
      {
        break;
      }
    }

LABEL_21:
    if (++v14 >= v12)
    {
      return 0;
    }
  }

  while (1)
  {
    LODWORD(v21[0]) = 0;
    if (parseMDInt("air.max_work_group_size", v15, &__p, v21))
    {
      return LODWORD(v21[0]);
    }

    if (++LODWORD(__p.__r_.__value_.__l.__data_) >= *(v15 + 2))
    {
      v12 = *(v13 + 8);
      goto LABEL_21;
    }
  }
}

uint64_t AGCLLVMUserShader::buildStageInOriginCommon(llvm::Type ***this, llvm::Type *a2, llvm::Value *a3, llvm::Value *a4)
{
  if (a3)
  {
    Load = a3;
  }

  else
  {
    if (!this[559])
    {
      v6 = llvm::PointerType::get();
      v7 = (*(**(*(*(*this - 3) + this + 2168) + 920) + 496))();
      v18[0] = "agc.stagein_buffer_pointer.";
      v18[2] = v7;
      v19 = 2051;
      v8 = (*(**(*(*(*this - 3) + this + 2168) + 920) + 496))();
      GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v6, v18, v8, 0x18u, 5u, 0);
      llvm::ValueHandleBase::operator=((this + 557), GlobalBufferBinding);
    }

    v10 = *(*this - 3) + this;
    v11 = this[559];
    v19 = 257;
    Load = AGCLLVMBuilder::CreateLoad((v10 + 1704), v11, v18);
  }

  v12 = *(*this - 3) + this;
  v13 = *(v12 + 238);
  v14 = llvm::ConstantInt::get();
  v19 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v12 + 1712), v13, Load, v14, v18);
  v16 = *(*this - 3) + this;
  v19 = 257;
  return AGCLLVMBuilder::CreateLoad((v16 + 1704), GEP, v18);
}

uint64_t AGCLLVMUserShader::buildStageInSizeCommon(llvm::Type ***this, llvm::Type *a2, llvm::Value *a3, llvm::Value *a4)
{
  if (a3)
  {
    Load = a3;
  }

  else
  {
    if (!this[559])
    {
      v6 = llvm::PointerType::get();
      v7 = (*(**(*(*(*this - 3) + this + 2168) + 920) + 496))();
      v18[0] = "agc.stagein_buffer_pointer.";
      v18[2] = v7;
      v19 = 2051;
      v8 = (*(**(*(*(*this - 3) + this + 2168) + 920) + 496))();
      GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v6, v18, v8, 0x18u, 5u, 0);
      llvm::ValueHandleBase::operator=((this + 557), GlobalBufferBinding);
    }

    v10 = *(*this - 3) + this;
    v11 = this[559];
    v19 = 257;
    Load = AGCLLVMBuilder::CreateLoad((v10 + 1704), v11, v18);
  }

  v12 = *(*this - 3) + this;
  v13 = *(v12 + 238);
  v14 = llvm::ConstantInt::get();
  v19 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v12 + 1712), v13, Load, v14, v18);
  v16 = *(*this - 3) + this;
  v19 = 257;
  return AGCLLVMBuilder::CreateLoad((v16 + 1704), GEP, v18);
}

uint64_t AGCLLVMUserShader::buildGlobalSizeCommon(AGCLLVMUserShader *this, llvm::Type *a2, unsigned int a3, llvm::Value *Load, llvm::Value *a5)
{
  v9 = llvm::PointerType::get();
  if (!Load)
  {
    if (!*(this + 562))
    {
      v10 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
      v11 = **(*(this + *(*this - 24) + 2168) + 920);
      if (v10 == 1)
      {
        v12 = (*(v11 + 1152))();
      }

      else
      {
        v12 = (*(v11 + 464))();
      }

      v42[0] = "agc.indirect_wg_size_buffer_pointer.";
      v43 = v12;
      v44 = 2051;
      GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v9, v42, v12, 0xCu, 5u, 0);
      llvm::ValueHandleBase::operator=((this + 4480), GlobalBufferBinding);
    }

    v14 = this + *(*this - 24);
    v15 = *(this + 562);
    v44 = 257;
    Load = AGCLLVMBuilder::CreateLoad((v14 + 1704), v15, v42);
  }

  v16 = this + *(*this - 24);
  v17 = *(v16 + 238);
  v18 = llvm::ConstantInt::get();
  v44 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v16 + 1712), v17, Load, v18, v42);
  v20 = this + *(*this - 24);
  v21 = *(v20 + 238);
  v44 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v20 + 214, v21, GEP, 0, v42);
  v41 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v20 + 1712), 38, AlignedLoad, a2, v40);
  if (!a5)
  {
    if (!*(this + 565))
    {
      v24 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
      v25 = **(*(this + *(*this - 24) + 2168) + 920);
      if (v24 == 1)
      {
        v26 = (*(v25 + 1144))();
      }

      else
      {
        v26 = (*(v25 + 456))();
      }

      v42[0] = "agc.indirect_wg_count_buffer_pointer.";
      v43 = v26;
      v44 = 2051;
      v27 = AGCLLVMUserObject::createGlobalBufferBinding(this, v9, v42, v26, 0xCu, 5u, 0);
      llvm::ValueHandleBase::operator=((this + 4504), v27);
    }

    v28 = this + *(*this - 24);
    v29 = *(this + 565);
    v44 = 257;
    a5 = AGCLLVMBuilder::CreateLoad((v28 + 1704), v29, v42);
  }

  v30 = this + *(*this - 24);
  v31 = *(v30 + 238);
  v32 = llvm::ConstantInt::get();
  v44 = 257;
  v33 = llvm::IRBuilderBase::CreateGEP((v30 + 1712), v31, a5, v32, v42);
  v34 = this + *(*this - 24);
  v35 = *(v34 + 238);
  v44 = 257;
  llvm::Type::isOpaquePointerTy(*v33);
  v36 = llvm::IRBuilderBase::CreateAlignedLoad(v34 + 214, v35, v33, 0, v42);
  v41 = 257;
  v37 = llvm::IRBuilderBase::CreateCast((v34 + 1712), 38, v36, a2, v40);
  v38 = this + *(*this - 24);
  v44 = 257;
  return llvm::IRBuilderBase::CreateMul((v38 + 1712), Cast, v37, v42);
}

uint64_t AGCLLVMUserShader::buildTileThreadIndexInThreadgroup(AGCLLVMUserShader *this, llvm::Type *a2)
{
  v4 = *(this + *(*this - 24) + 2168);
  v5 = (*(*v4 + 688))(v4);
  v6 = this + *(*this - 24);
  v16 = *(v6 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v17, (v6 + 1712));
  v18 = *(v6 + 452);
  v7 = AGCLLVMGen3TargetLowerer::buildQuadElement(v5, &v16, a2);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = this + *(*this - 24);
  v9 = (*(*this + 472))(this, a2);
  v10 = llvm::ConstantInt::get();
  v15 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((v8 + 1712), v9, v10, v14);
  v13[16] = 257;
  return llvm::IRBuilderBase::CreateAdd((v8 + 1712), Shl, v7, v13);
}

llvm::Value *AGCLLVMUserShader::buildTileQuadgroupsPerThreadgroup(AGCLLVMUserShader *this, llvm::Type *a2)
{
  v4 = this + *(*this - 24);
  v5 = (*(*this + 480))(this, 0);
  v6 = llvm::ConstantInt::get();
  v40 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v4 + 1712), v5, v6, v39);
  v8 = this + *(*this - 24);
  v9 = llvm::ConstantInt::get();
  v38 = 257;
  Not = llvm::IRBuilderBase::CreateNot((v8 + 1712), v9, v37, v10);
  v36 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((v4 + 1712), Add, Not, v35);
  v13 = this + *(*this - 24);
  v14 = (*(*this + 480))(this, 1);
  v15 = llvm::ConstantInt::get();
  v34 = 257;
  v16 = llvm::IRBuilderBase::CreateAdd((v13 + 1712), v14, v15, v33);
  v17 = this + *(*this - 24);
  v18 = llvm::ConstantInt::get();
  v32 = 257;
  v20 = llvm::IRBuilderBase::CreateNot((v17 + 1712), v18, v31, v19);
  v30 = 257;
  v21 = llvm::IRBuilderBase::CreateAnd((v13 + 1712), v16, v20, v29);
  v28 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v4 + 1712), v12, v21, v27);
  v23 = llvm::ConstantInt::get();
  v26[16] = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((v4 + 1712), Mul, v23, v26);
  return AGCLLVMBuilder::truncateToSmall((this + *(*this - 24) + 1704), LShr, a2);
}

llvm::Value *AGCLLVMUserShader::buildTileThreadsPerGrid(AGCLLVMUserShader *this, llvm::Type *a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    v7 = this + *(*this - 24);
    v8 = (*(*this + 480))(this, 0, a3, a4);
    v9 = (*(*this + 480))(this, 2);
    goto LABEL_7;
  }

  if (a3 == 1)
  {
    v7 = this + *(*this - 24);
    v8 = (*(*this + 480))(this, 1, a3, a4);
    v9 = (*(*this + 480))(this, 3);
LABEL_7:
    v13 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v7 + 1712), v8, v9, v12);
    goto LABEL_8;
  }

  if (a3 != 2)
  {
    v10 = 0;
    return AGCLLVMBuilder::truncateToSmall((this + *(*this - 24) + 1704), v10, a2);
  }

  Mul = llvm::ConstantInt::get();
LABEL_8:
  v10 = Mul;
  return AGCLLVMBuilder::truncateToSmall((this + *(*this - 24) + 1704), v10, a2);
}

llvm::Value *AGCLLVMUserShader::buildTileThreadgroupsPerGrid(AGCLLVMUserShader *this, llvm::Type *a2, int a3, BOOL a4)
{
  switch(a3)
  {
    case 0:
      v7 = *(*this + 480);
      goto LABEL_7;
    case 1:
      v7 = *(*this + 480);
LABEL_7:
      v6 = v7();
      goto LABEL_8;
    case 2:
      v6 = llvm::ConstantInt::get();
LABEL_8:
      v8 = v6;
      goto LABEL_10;
  }

  v8 = 0;
LABEL_10:
  v9 = (this + *(*this - 24) + 1704);

  return AGCLLVMBuilder::truncateToSmall(v9, v8, a2);
}

uint64_t virtual thunk toAGCLLVMUserTileShader::needsThreadgroupMemoryOOBChecks(AGCLLVMUserTileShader *this)
{
  v1 = (this + *(*this - 240));
  if (*(*(v1 + *(*v1 - 24) + 2168) + 1885) == 1)
  {
    return AGCLLVMUserObject::isThreadgroupMemoryUsed(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t AGCLLVMUserTileShader::getTempRegistersLimit(AGCLLVMUserTileShader *this, unsigned int *a2)
{
  v4 = (this + *(*this - 24));
  *a2 = *(v4[271] + 980);
  result = (*(*v4 + 112))(v4);
  if (result)
  {
    *a2 = result;
    result = result != *(v4[271] + 980);
  }

  if (*(this + 1183))
  {
    v6 = *(this + *(*this - 24) + 2168);
    if (v6[976] == 1)
    {
      v7 = (*(*v6 + 688))(*(this + *(*this - 24) + 2168));
      *a2 = AGCLLVMGen3TargetLowerer::getTempRegistersLimitAcrossTileSizesForTileShader(v7, *(this + *(*this - 24) + 1688), *(this + 1183));
      return 1;
    }
  }

  return result;
}

BOOL AGCLLVMUserTileShader::constructReply(AGCLLVMUserTileShader *this)
{
  result = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (result)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMUserObject::constructFlatReply(this);
    v4 = this + *(*this - 24);
    v4[4358] = 1;
    v5 = *(v4 + 1082);
    v6 = *(v4 + 1080) - *(v4 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v4 + 4288), v3);
    v7 = flatbuffers::FlatBufferBuilder::EndTable((v4 + 4288), v6 + v5);
    flatbuffers::FlatBufferBuilder::Finish((this + *(*this - 24) + 4288), v7, v8);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
    v9 = this + *(*this - 24);
    v10 = *(this + 4720);
    v11 = *(this + 16);
    if (*(this + 3766) == 1)
    {
      v12 = *(this + 1133);
    }

    else
    {
      v12 = 0;
    }

    v13 = *(this + 1183);
    v14 = *(this + 12);
    v9[4454] = 1;
    v15 = *(v9 + 1106);
    v16 = *(v9 + 1104) - *(v9 + 1108);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v9 + 4384, 10, v13);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v9 + 4384, 8, v12);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v9 + 4384, 12, v14, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v9 + 4384, 6, v11, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v9 + 4384, 4, v10, 0);
    v17 = flatbuffers::FlatBufferBuilder::EndTable((v9 + 4384), v16 + v15);
    v18 = this + *(*this - 24);
    v18[4454] = 1;
    v19 = *(v18 + 1106);
    v20 = *(v18 + 1104) - *(v18 + 1108);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::FragmentShaderInfo>((v18 + 4384), v17);
    v21 = *(*this - 24);
    v22 = flatbuffers::FlatBufferBuilder::EndTable((v18 + 4384), v20 + v19);
    flatbuffers::FlatBufferBuilder::Finish((this + v21 + 4384), v22, v23);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG10::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4384));
    v24 = this + *(*this - 24);
    if (*(v24 + 314))
    {
      v25 = v24 + 2512;
      v26 = *(v24 + 315);
      v27 = v24 + 3072;
      if (v26)
      {
        v27 = v25;
      }
    }

    else
    {
      v27 = v24 + 3072;
    }

    v28 = (*v27 + **v27);
    v29 = (v28 + *(v28 - *v28 + 4));
    v30 = (v29 + *v29 + *(v29 + *v29 - *(v29 + *v29) + 8));
    return *(v30 + *v30) < 0x21;
  }

  return result;
}

void AGCLLVMUserTileShader::getCompilationKeyDescription(AGCLLVMUserTileShader *this@<X0>, std::string *a2@<X8>)
{
  v87 = *MEMORY[0x277D85DE8];
  v4 = *(this + 586);
  std::string::basic_string[abi:nn200100]<0>(&v71, "AGCTileState");
  std::string::basic_string[abi:nn200100]<0>(&v68, "maxTotalThreadsPerThreadgroup");
  _agcFieldString<unsigned int>(&v79, &v68.__r_.__value_.__l.__data_, *v4);
  std::string::basic_string[abi:nn200100]<0>(__p, "dispatchSizeMatchesTileSize");
  _agcFieldString<unsigned int>(&v80, __p, v4[1] & 1);
  _agcGroupWithHeader(&v27, &v71, &v79, 2);
  for (i = 0; i != -6; i -= 3)
  {
    if (SHIBYTE(v80.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v79 + i * 8 + 24));
    }
  }

  if (v67 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  v6 = *(this + 585);
  std::string::basic_string[abi:nn200100]<0>(v45, "AGCDrawBufferState");
  std::string::basic_string[abi:nn200100]<0>(__p, "AGCDrawBufferStateInternal");
  std::string::basic_string[abi:nn200100]<0>(&v65, "enabledBits");
  v7 = *(v6 + 32);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v79);
  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v79.__r_.__value_.__r.__words[2], "0x", 2);
  *(&v79.__r_.__value_.__r + *(v79.__r_.__value_.__r.__words[2] - 24) + 24) = *(&v79.__r_.__value_.__r + *(v79.__r_.__value_.__r.__words[2] - 24) + 24) & 0xFFFFFFB5 | 8;
  MEMORY[0x20F331C30](v8, v7);
  std::stringbuf::str();
  _agcFieldString<std::string>(&v71, &v65.__r_.__value_.__l.__data_, &v68);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  v79.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
  v9 = *(MEMORY[0x277D82818] + 72);
  *(v79.__r_.__value_.__r.__words + *(v79.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v79.__r_.__value_.__r.__words[2] = v9;
  v80.__r_.__value_.__r.__words[0] = MEMORY[0x277D82878] + 16;
  if (v83.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v82.__r_.__value_.__r.__words[2]);
  }

  v80.__r_.__value_.__r.__words[0] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v80.__r_.__value_.__r.__words[1]);
  std::iostream::~basic_iostream();
  MEMORY[0x20F331D40](&v84.__r_.__value_.__r.__words[1]);
  std::string::basic_string[abi:nn200100]<0>(v63, "sampleCount");
  _agcFieldString<unsigned char>(&v72, v63, 1 << (BYTE1(*(v6 + 32)) & 3));
  std::string::basic_string[abi:nn200100]<0>(&v62, "colorSampleCount");
  _agcFieldString<unsigned char>(&v73, &v62.__r_.__value_.__l.__data_, 1 << ((*(v6 + 32) >> 10) & 3));
  v10 = *(v6 + 32) & 0x1FF000;
  if (v10 == 2093056)
  {
    std::string::basic_string[abi:nn200100]<0>(v58, "outputPartitionSize");
    std::string::basic_string[abi:nn200100]<0>(v56, "unknown");
    _agcFieldString<std::string>(&v74, v58, v56);
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(v60, "outputPartitionSize");
    v11 = *(v6 + 32);
    if ((~v11 & 0x1FF000) == 0)
    {
      goto LABEL_127;
    }

    std::to_string(&v79, (v11 >> 12) & 0x1FF);
    _agcFieldString<std::string>(&v74, v60, &v79);
    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v79.__r_.__value_.__l.__data_);
    }
  }

  v12 = *(v6 + 32);
  if ((v12 & 0x400000) != 0)
  {
    std::string::basic_string[abi:nn200100]<0>(v54, "LIBSpilling");
    v13 = *(v6 + 32);
    if ((v13 & 0x400000) != 0)
    {
      _agcFieldString<unsigned char>(&v75, v54, (v13 & 0x200000) != 0);
      goto LABEL_24;
    }

LABEL_127:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  std::string::basic_string[abi:nn200100]<0>(v52, "LIBSpilling");
  std::string::basic_string[abi:nn200100]<0>(v50, "unknown");
  _agcFieldString<std::string>(&v75, v52, v50);
LABEL_24:
  std::string::basic_string[abi:nn200100]<0>(&v79, "forceSoftwareEmulatedRaytracing");
  _agcFieldString<unsigned char>(&v76, &v79.__r_.__value_.__l.__data_, (*(v6 + 32) & 0x800000) != 0);
  std::string::basic_string[abi:nn200100]<0>(v48, "maxSlabIndex");
  _agcFieldString<unsigned char>(&v77, v48, *(v6 + 35) & 0xF);
  std::string::basic_string[abi:nn200100]<0>(&v47, "useSlabs");
  _agcFieldString<unsigned char>(&v78, &v47.__r_.__value_.__l.__data_, (*(v6 + 32) & 0x10000000) != 0);
  _agcGroupWithHeader(&v68, __p, &v71, 8);
  for (j = 0; j != -24; j -= 3)
  {
    if (SHIBYTE(v78.__r_.__value_.__r.__words[j + 2]) < 0)
    {
      operator delete(*(&v78.__r_.__value_.__l.__data_ + j * 8));
    }
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v12 & 0x400000) == 0)
    {
      goto LABEL_34;
    }

LABEL_39:
    if ((v55 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    v15 = v54[0];
    goto LABEL_41;
  }

  operator delete(v79.__r_.__value_.__l.__data_);
  if ((v12 & 0x400000) != 0)
  {
    goto LABEL_39;
  }

LABEL_34:
  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  if (v53 < 0)
  {
    v15 = v52[0];
LABEL_41:
    operator delete(v15);
  }

LABEL_42:
  if (v10 != 2093056)
  {
    if ((v61 & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    v16 = v60[0];
    goto LABEL_49;
  }

  if (v57 < 0)
  {
    operator delete(v56[0]);
  }

  if (v59 < 0)
  {
    v16 = v58[0];
LABEL_49:
    operator delete(v16);
  }

LABEL_50:
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (v67 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v71, "encoded : ");
  std::string::basic_string[abi:nn200100]<0>(__p, "encoded[0]");
  _agcStringRepresentation(&v65, v6);
  _agcFieldString<std::string>(&v79, __p, &v65);
  std::string::basic_string[abi:nn200100]<0>(v63, "encoded[1]");
  _agcStringRepresentation(&v62, (v6 + 4));
  _agcFieldString<std::string>(&v80, v63, &v62);
  std::string::basic_string[abi:nn200100]<0>(v48, "encoded[2]");
  _agcStringRepresentation(&v47, (v6 + 8));
  _agcFieldString<std::string>(&v81, v48, &v47);
  std::string::basic_string[abi:nn200100]<0>(v43, "encoded[3]");
  _agcStringRepresentation(&v42, (v6 + 12));
  _agcFieldString<std::string>(&v82, v43, &v42);
  std::string::basic_string[abi:nn200100]<0>(v40, "encoded[4]");
  _agcStringRepresentation(&v39, (v6 + 16));
  _agcFieldString<std::string>(&v83, v40, &v39);
  std::string::basic_string[abi:nn200100]<0>(v37, "encoded[5]");
  _agcStringRepresentation(&v36, (v6 + 20));
  _agcFieldString<std::string>(&v84, v37, &v36);
  std::string::basic_string[abi:nn200100]<0>(v34, "encoded[6]");
  _agcStringRepresentation(&v33, (v6 + 24));
  _agcFieldString<std::string>(&v85, v34, &v33);
  std::string::basic_string[abi:nn200100]<0>(v31, "encoded[7]");
  _agcStringRepresentation(&v30, (v6 + 28));
  _agcFieldString<std::string>(v86, v31, &v30);
  _agcGroupWithHeader(&v69, &v71, &v79, 8);
  std::string::basic_string[abi:nn200100]<0>(v28, "_unused");
  _agcFieldString<unsigned int>(&v70, v28, *(v6 + 36));
  _agcGroupWithHeader(&v26, v45, &v68, 3);
  for (k = 0; k != -9; k -= 3)
  {
    if (SHIBYTE(v70.__r_.__value_.__r.__words[k + 2]) < 0)
    {
      operator delete(*(&v70.__r_.__value_.__l.__data_ + k * 8));
    }
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  for (m = 0; m != 0x1FFFFFFFFFFFFFE8; m -= 3)
  {
    if (SHIBYTE(v86[0].__r_.__value_.__r.__words[m + 2]) < 0)
    {
      operator delete(v86[m / 3].__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (v67 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  v19 = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v27.__r_.__value_.__l.__size_;
  }

  v21 = &v79;
  std::string::basic_string[abi:nn200100](&v79, size + 1);
  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v21 = v79.__r_.__value_.__r.__words[0];
  }

  if (size)
  {
    if (v19 >= 0)
    {
      v22 = &v27;
    }

    else
    {
      v22 = v27.__r_.__value_.__r.__words[0];
    }

    memmove(v21, v22, size);
  }

  *(&v21->__r_.__value_.__l.__data_ + size) = 10;
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v26;
  }

  else
  {
    v23 = v26.__r_.__value_.__r.__words[0];
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = v26.__r_.__value_.__l.__size_;
  }

  v25 = std::string::append(&v79, v23, v24);
  *a2 = *v25;
  v25->__r_.__value_.__r.__words[0] = 0;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v19 & 0x80000000) == 0)
    {
      return;
    }

LABEL_126:
    operator delete(v27.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v26.__r_.__value_.__l.__data_);
  if (v19 < 0)
  {
    goto LABEL_126;
  }
}