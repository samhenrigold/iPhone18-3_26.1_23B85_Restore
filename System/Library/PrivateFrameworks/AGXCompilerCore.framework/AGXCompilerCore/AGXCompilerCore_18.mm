void AGCLLVMG15GB0TargetLowerer::~AGCLLVMG15GB0TargetLowerer(AGCLLVMG15GB0TargetLowerer *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2825BA2A8;
  v5 = *(this + 325);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448, a2, a3, a4);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416, v7, v8, v9);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BA2A8;
  v5 = *(this + 325);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448, a2, a3, a4);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416, v7, v8, v9);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));

  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);
}

void AGCLLVMG15GB0TargetConfig::AGCLLVMG15GB0TargetConfig()
{
  AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG15TargetConfig(AGCTargetArch)::g15gB0, 196632);
  *(v0 + 60) = 0;
  *(v0 + 49) = 0;
  *v0 = &unk_2825B2F00;
  *(v0 + 8) = "agx3-apple-ios";
}

uint64_t AGCLLVMG15GC0TargetLowerer::extractMaxLevel(llvm::ConstantInt **this, llvm::Value *a2, uint64_t a3, BOOL a4)
{
  v6 = llvm::ConstantInt::get();
  v14 = 257;
  v7 = llvm::IRBuilderBase::CreateAnd((this + 1), a2, v6, v13);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 1), v7, v8, v13);
  v10 = this[25];
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast((this + 1), 38, LShr, v10, v12);
}

uint64_t AGCLLVMG15GC0TargetLowerer::extractBaseLevel(llvm::ConstantInt **this, llvm::Value *a2, uint64_t a3, BOOL a4)
{
  v6 = llvm::ConstantInt::get();
  v14 = 257;
  v7 = llvm::IRBuilderBase::CreateAnd((this + 1), a2, v6, v13);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 1), v7, v8, v13);
  v10 = this[25];
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast((this + 1), 38, LShr, v10, v12);
}

uint64_t AGCLLVMG15GC0TargetLowerer::buildImagePackFormatExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v72 = *a2;
  v73 = *(a2 + 16);
  if (v73)
  {
    llvm::MetadataTracking::track();
  }

  v74 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v72);
  if (v73)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v71 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v70);
  v10 = llvm::ConstantInt::get();
  v71 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v70);
  v12 = llvm::ConstantInt::get();
  v69 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v68);
  v14 = *(a1 + 200);
  v67 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v66);
  v16 = llvm::ConstantInt::get();
  v65 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Cast, v16, v64);
  v18 = *(a1 + 200);
  v63 = 257;
  v19 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, ICmp, v18, v62);
  v20 = llvm::ConstantInt::get();
  v71 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v19, v20, v70);
  if ((*(a1 + 1889) & 1) == 0)
  {
    v22 = llvm::ConstantInt::get();
    v71 = 257;
    v23 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v22, v70);
    v24 = llvm::ConstantInt::get();
    v69 = 257;
    v25 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v23, v24, v68);
    v26 = *(a1 + 200);
    v67 = 257;
    v27 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v25, v26, v66);
    v28 = llvm::ConstantInt::get();
    v65 = 257;
    v29 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v27, v28, v64);
    v30 = llvm::ConstantInt::get();
    v71 = 257;
    v31 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v30, v70);
    v32 = llvm::ConstantInt::get();
    v69 = 257;
    v33 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v31, v32, v68);
    v34 = *(a1 + 200);
    v67 = 257;
    v35 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v33, v34, v66);
    v36 = llvm::ConstantInt::get();
    v65 = 257;
    v37 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v35, v36, v64);
    v38 = llvm::ConstantInt::get();
    v71 = 257;
    v39 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v38, v70);
    v40 = llvm::ConstantInt::get();
    v69 = 257;
    v41 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v39, v40, v68);
    v42 = *(a1 + 200);
    v67 = 257;
    v43 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v41, v42, v66);
    v44 = llvm::ConstantInt::get();
    v65 = 257;
    v45 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v43, v44, v64);
    v46 = llvm::ConstantInt::get();
    v71 = 257;
    v47 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v46, v70);
    v48 = llvm::ConstantInt::get();
    v69 = 257;
    v49 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v47, v48, v68);
    v50 = *(a1 + 200);
    v67 = 257;
    v51 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v49, v50, v66);
    v52 = llvm::ConstantInt::get();
    v65 = 257;
    v53 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v51, v52, v64);
    v71 = 257;
    v54 = llvm::IRBuilderBase::CreateOr((a1 + 8), v37, v45, v70);
    v71 = 257;
    v55 = llvm::IRBuilderBase::CreateOr((a1 + 8), v54, v53, v70);
    v70[0] = "is_float16_texture";
    v71 = 259;
    v56 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v29, v55, v70);
    v57 = *(a1 + 200);
    v69 = 257;
    v58 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v56, v57, v68);
    v59 = llvm::ConstantInt::get();
    v71 = 257;
    v60 = llvm::IRBuilderBase::CreateShl((a1 + 8), v58, v59, v70);
    v69 = 257;
    Shl = llvm::IRBuilderBase::CreateOr((a1 + 8), Shl, v60, v68);
  }

  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0, 0);
}

uint64_t AGCLLVMG15GC0TargetLowerer::buildImageSampleCountExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v25 = *a2;
  v26 = *(a2 + 16);
  if (v26)
  {
    llvm::MetadataTracking::track();
  }

  v27 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v25);
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v24 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v23);
  v10 = llvm::ConstantInt::get();
  v24 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v23);
  v12 = llvm::ConstantInt::get();
  v22 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v21);
  v14 = *(a1 + 200);
  v20 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v19);
  v16 = llvm::ConstantInt::get();
  v24 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v16, Cast, v23);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0, 0);
}

uint64_t AGCLLVMG15GC0TargetLowerer::buildImageDimensionsExtract(llvm::ConstantInt **a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v96 = *a2;
  v97 = *(a2 + 16);
  if (v97)
  {
    llvm::MetadataTracking::track();
  }

  v98 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v96);
  if (v97)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = a1[26];
  v95 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v8, a3, 0, v94);
  v10 = a1[26];
  v11 = llvm::ConstantInt::get();
  v95 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v10, a3, v11, v94);
  v93 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  v13 = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v10, GEP, 0, v92);
  v14 = a1[26];
  v15 = llvm::ConstantInt::get();
  v95 = 257;
  v16 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v14, a3, v15, v94);
  v93 = 257;
  llvm::Type::isOpaquePointerTy(*v16);
  v17 = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v14, v16, 0, v92);
  v18 = llvm::ConstantInt::get();
  v95 = 257;
  v19 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v13, v18, v94);
  v20 = llvm::ConstantInt::get();
  v93 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), v19, v20, v92);
  v22 = a1[25];
  v91 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, LShr, v22, v90);
  v24 = llvm::ConstantInt::get();
  v89 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), Cast, v24, v88);
  (*(*a1 + 248))(a1, v17);
  v26 = llvm::ConstantInt::get();
  v95 = 257;
  v27 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v26, v94);
  v28 = llvm::ConstantInt::get();
  v93 = 257;
  v29 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v27, v28, v92);
  v30 = a1[25];
  v91 = 257;
  v31 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v29, v30, v90);
  v32 = llvm::ConstantInt::get();
  v89 = 257;
  llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v31, v32, v88);
  llvm::ConstantInt::get();
  v95 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v34 = llvm::ConstantInt::get();
  v95 = 257;
  v35 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v34, v94);
  v36 = llvm::ConstantInt::get();
  v93 = 257;
  v37 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v35, v36, v92);
  v38 = a1[25];
  v91 = 257;
  v39 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v37, v38, v90);
  v40 = llvm::ConstantInt::get();
  v89 = 257;
  v41 = llvm::IRBuilderBase::CreateAdd((a1 + 1), v39, v40, v88);
  v42 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v41, Select);
  v43 = llvm::ConstantInt::get();
  v95 = 257;
  v44 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v43, v94);
  v45 = llvm::ConstantInt::get();
  v93 = 257;
  v46 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v44, v45, v92);
  v47 = a1[25];
  v91 = 257;
  v48 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v46, v47, v90);
  v49 = llvm::ConstantInt::get();
  v89 = 257;
  v50 = llvm::IRBuilderBase::CreateAdd((a1 + 1), v48, v49, v88);
  v51 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v50, Select);
  v52 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, Add, Select);
  v53 = llvm::ConstantInt::get();
  v95 = 257;
  v54 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v17, v53, v94);
  v55 = llvm::ConstantInt::get();
  v93 = 257;
  v56 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v54, v55, v92);
  v57 = a1[25];
  v91 = 257;
  v58 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v56, v57, v90);
  v59 = llvm::ConstantInt::get();
  v89 = 257;
  llvm::IRBuilderBase::CreateAdd((a1 + 1), v58, v59, v88);
  v60 = llvm::ConstantInt::get();
  v95 = 257;
  v61 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v60, v94);
  v62 = llvm::ConstantInt::get();
  v93 = 257;
  v63 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v61, v62, v92);
  v64 = a1[25];
  v91 = 257;
  v65 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v63, v64, v90);
  v66 = llvm::ConstantInt::get();
  v95 = 257;
  v67 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v66, v94);
  v68 = llvm::ConstantInt::get();
  v93 = 257;
  v69 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v67, v68, v92);
  v70 = a1[25];
  v91 = 257;
  v71 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v69, v70, v90);
  v72 = llvm::ConstantInt::get();
  v95 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v65, v72, v94);
  v74 = llvm::ConstantInt::get();
  v93 = 257;
  v75 = llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v71, v74, v92);
  v91 = 257;
  llvm::IRBuilderBase::CreateAnd((a1 + 1), ICmp, v75, v90);
  v95 = 257;
  v76 = llvm::IRBuilderBase::CreateSelect();
  NullValue = llvm::Constant::getNullValue(a1[42], v77);
  v95 = 257;
  v79 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), NullValue, v42, v79, v94);
  v95 = 257;
  v81 = llvm::ConstantInt::get();
  v82 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), InsertElement, v51, v81, v94);
  v95 = 257;
  v83 = llvm::ConstantInt::get();
  v84 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v82, v52, v83, v94);
  v95 = 257;
  v85 = llvm::ConstantInt::get();
  v86 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v84, v76, v85, v94);
  return llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, v86, a4, 0, 0);
}

void AGCLLVMG15GC0TargetLowerer::~AGCLLVMG15GC0TargetLowerer(AGCLLVMG15GC0TargetLowerer *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2825BA2A8;
  v5 = *(this + 325);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448, a2, a3, a4);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416, v7, v8, v9);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BA2A8;
  v5 = *(this + 325);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448, a2, a3, a4);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416, v7, v8, v9);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));

  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);
}

void AGCLLVMG15GC0TargetConfig::AGCLLVMG15GC0TargetConfig()
{
  AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG15TargetConfig(AGCTargetArch)::g15gC0, 327704);
  *(v0 + 60) = 0;
  *(v0 + 49) = 0;
  *v0 = &unk_2825B37F8;
  *(v0 + 8) = "agx3-apple-ios";
}

uint64_t AGCLLVMG15PB0TargetLowerer::getF16FormatInfo(uint64_t a1, int a2, uint64_t a3, int a4, char a5, int a6)
{
  v6 = *(a3 + 8) & 0xFE;
  if (a6)
  {
    v7 = a3;
    if (v6 == 18)
    {
      v7 = **(a3 + 16);
    }

    if (a2 == 1)
    {
      v8 = 3;
    }

    else
    {
      v8 = a2;
    }

    if (a2 == 12)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    if (a2 == 13)
    {
      v10 = 15;
    }

    else
    {
      v10 = v9;
    }

    if (a5)
    {
      v10 = a2;
    }

    if (v7 == *(a1 + 168) && a4 != 0)
    {
      a2 = v10;
    }
  }

  if (v6 == 18)
  {
    a3 = **(a3 + 16);
  }

  v13 = a2 == 1 && a3 == *(a1 + 168);
  return v13 | (a2 << 16);
}

void AGCLLVMG15PB0TargetLowerer::createGPUVAMasks(int *a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  v6 = (a3 + 8);
  *(a3 + 16) = 0;
  *a3 = a3 + 8;
  v7 = *a1;
  v8 = *(a1 - v7);
  if (v8 < 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a1 - v7 + 4);
    if (*(a1 - v7 + 4))
    {
      v9 = (v9 + a1 + *(v9 + a1));
    }
  }

  v10 = *(v9 - *v9 + 12);
  v11 = *(v9 + v10);
  v12 = (v9 + v10 + v11);
  v13 = *v12;
  if (v13)
  {
    v14 = 0;
    v15 = 4 * v13;
    if (a2)
    {
      v16 = -524484864;
    }

    else
    {
      v16 = 65280;
    }

    v17 = v9 + v10 + v11;
    do
    {
      v18 = v12[v14 / 4 + 1];
      v19 = &v17[v14 + v18 - *(&v12[v14 / 4 + 1] + v18)];
      if (*(v19 + 2) >= 7u && (v20 = *(v19 + 5)) != 0)
      {
        v21 = *&v17[v14 + 4 + v18 + v20];
      }

      else
      {
        v21 = 0;
      }

      v68 = v21;
      v69 = &v68;
      *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, v21, &v69) + 8) = v16;
      v14 += 4;
    }

    while (v15 != v14);
    v22 = *a1;
    v23 = -v22;
    v8 = *(a1 - v22);
  }

  else
  {
    v23 = -v7;
  }

  v24 = a1 + v23;
  if (v8 < 5)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v24 + 2);
    if (*(v24 + 2))
    {
      v25 = (v25 + a1 + *(v25 + a1));
    }
  }

  v26 = (v25 + *(v25 - *v25 + 8));
  v27 = (v26 + *v26);
  v28 = *v27;
  if (v28)
  {
    v29 = 0;
    v30 = 4 * v28;
    while (1)
    {
      v31 = v27[v29 / 4 + 1];
      v32 = v31 - *(&v27[v29 / 4 + 1] + v31);
      v33 = &v27[v29 / 4] + v32;
      v34 = *(v33 + 2);
      if (v34 < 5)
      {
        break;
      }

      v35 = *(v33 + 4);
      if (!v35)
      {
        v37 = v27 + v31 + v29 + 4;
        v38 = &v27[v29 / 4] + v32;
LABEL_30:
        v39 = v38 + 4;
        if (v34 >= 0xB)
        {
          v40 = *(v39 + 5);
          if (v40)
          {
            v36 = *(v37 + v40);
            goto LABEL_34;
          }
        }

        break;
      }

      if (!*(&v27[v29 / 4 + 1] + v31 + v35))
      {
        v37 = v27 + v31 + v29 + 4;
        v38 = &v27[v29 / 4] + v32;
        goto LABEL_30;
      }

      v29 += 4;
      if (v30 == v29)
      {
        goto LABEL_27;
      }
    }

    v36 = 0;
  }

  else
  {
LABEL_27:
    v36 = -1;
  }

LABEL_34:
  if (v8 < 5)
  {
    v41 = 0;
  }

  else
  {
    v41 = *(v24 + 2);
    if (*(v24 + 2))
    {
      v41 = (v41 + a1 + *(v41 + a1));
    }
  }

  v42 = (v41 + *(v41 - *v41 + 24));
  v43 = (v42 + *v42);
  v44 = *v43;
  if (v44)
  {
    v45 = &v43[v44];
    do
    {
      v46 = v43[1];
      v47 = (++v43 + v46);
      v48 = (v47 - *v47);
      v49 = *v48;
      if (v49 >= 5 && v48[2] && *(v47 + v48[2]) == 110)
      {
        if (v49 >= 7 && (v50 = v48[3]) != 0)
        {
          v51 = *(v47 + v50);
        }

        else
        {
          v51 = 0;
        }

        v68 = v51;
        v52 = (v47 - *v47);
        if (*v52 >= 9u && (v53 = v52[4]) != 0)
        {
          v54 = *(v47 + v53);
        }

        else
        {
          v54 = 0;
        }

        v55 = *v6;
        if (*v6)
        {
          v56 = v6;
          do
          {
            v57 = *(v55 + 28);
            v58 = v57 >= v51;
            v59 = v57 < v51;
            if (v58)
            {
              v56 = v55;
            }

            v55 = *(v55 + 8 * v59);
          }

          while (v55);
          if (v56 != v6 && v51 >= *(v56 + 7))
          {
            v60 = v54 + v36;
            v61 = (v60 << 7) & 0x7F00;
            v62 = (v60 >> 1) ^ ((v60 >> 1) >> 4);
            v63 = (v61 & 0xFFFF7FFF | (((v62 ^ (v62 >> 2) ^ ((v62 ^ (v62 >> 2)) >> 1)) & 1) << 15)) ^ 0x8000;
            if (a2)
            {
              v64 = 0;
              v65 = v63 | 0xBC0000;
              v66 = v65 >> 8;
              v67 = 43;
              do
              {
                v66 ^= ((v66 >> v64 << 31) >> 31) & v67;
                v67 *= 2;
                ++v64;
              }

              while (v64 != 19);
              v63 = v65 & 0x7FFFFFF | ((v66 >> 19) << 27);
            }

            v69 = &v68;
            *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, v51, &v69) + 8) = v63;
          }
        }
      }
    }

    while (v43 != v45);
  }
}

uint64_t AGCLLVMG15PB0TargetLowerer::buildImagePackFormatExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v72 = *a2;
  v73 = *(a2 + 16);
  if (v73)
  {
    llvm::MetadataTracking::track();
  }

  v74 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v72);
  if (v73)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v71 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v70);
  v10 = llvm::ConstantInt::get();
  v71 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v70);
  v12 = llvm::ConstantInt::get();
  v69 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v68);
  v14 = *(a1 + 200);
  v67 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v66);
  v16 = llvm::ConstantInt::get();
  v65 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Cast, v16, v64);
  v18 = *(a1 + 200);
  v63 = 257;
  v19 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, ICmp, v18, v62);
  v20 = llvm::ConstantInt::get();
  v71 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v19, v20, v70);
  if ((*(a1 + 1889) & 1) == 0)
  {
    v22 = llvm::ConstantInt::get();
    v71 = 257;
    v23 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v22, v70);
    v24 = llvm::ConstantInt::get();
    v69 = 257;
    v25 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v23, v24, v68);
    v26 = *(a1 + 200);
    v67 = 257;
    v27 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v25, v26, v66);
    v28 = llvm::ConstantInt::get();
    v65 = 257;
    v29 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v27, v28, v64);
    v30 = llvm::ConstantInt::get();
    v71 = 257;
    v31 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v30, v70);
    v32 = llvm::ConstantInt::get();
    v69 = 257;
    v33 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v31, v32, v68);
    v34 = *(a1 + 200);
    v67 = 257;
    v35 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v33, v34, v66);
    v36 = llvm::ConstantInt::get();
    v65 = 257;
    v37 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v35, v36, v64);
    v38 = llvm::ConstantInt::get();
    v71 = 257;
    v39 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v38, v70);
    v40 = llvm::ConstantInt::get();
    v69 = 257;
    v41 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v39, v40, v68);
    v42 = *(a1 + 200);
    v67 = 257;
    v43 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v41, v42, v66);
    v44 = llvm::ConstantInt::get();
    v65 = 257;
    v45 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v43, v44, v64);
    v46 = llvm::ConstantInt::get();
    v71 = 257;
    v47 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v46, v70);
    v48 = llvm::ConstantInt::get();
    v69 = 257;
    v49 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v47, v48, v68);
    v50 = *(a1 + 200);
    v67 = 257;
    v51 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v49, v50, v66);
    v52 = llvm::ConstantInt::get();
    v65 = 257;
    v53 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v51, v52, v64);
    v71 = 257;
    v54 = llvm::IRBuilderBase::CreateOr((a1 + 8), v37, v45, v70);
    v71 = 257;
    v55 = llvm::IRBuilderBase::CreateOr((a1 + 8), v54, v53, v70);
    v70[0] = "is_float16_texture";
    v71 = 259;
    v56 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v29, v55, v70);
    v57 = *(a1 + 200);
    v69 = 257;
    v58 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v56, v57, v68);
    v59 = llvm::ConstantInt::get();
    v71 = 257;
    v60 = llvm::IRBuilderBase::CreateShl((a1 + 8), v58, v59, v70);
    v69 = 257;
    Shl = llvm::IRBuilderBase::CreateOr((a1 + 8), Shl, v60, v68);
  }

  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0, 0);
}

uint64_t AGCLLVMG15PB0TargetLowerer::buildImageBaseLevelExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v23 = *a2;
  v24 = *(a2 + 16);
  if (v24)
  {
    llvm::MetadataTracking::track();
  }

  v25 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v23);
  if (v24)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v22 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v21);
  v10 = llvm::ConstantInt::get();
  v22 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v21);
  v12 = llvm::ConstantInt::get();
  v20 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v19);
  v14 = *(a1 + 200);
  v18 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v17);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Cast, a4, 0, 0);
}

uint64_t AGCLLVMG15PB0TargetLowerer::buildImageSampleCountExtract(llvm::ConstantInt **a1, uint64_t a2, llvm::Value *a3, uint64_t a4)
{
  v27 = *a2;
  v28 = *(a2 + 16);
  if (v28)
  {
    llvm::MetadataTracking::track();
  }

  v29 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v27);
  if (v28)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = a1[26];
  v9 = llvm::ConstantInt::get();
  v26 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v8, a3, v9, v25);
  v24 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, GEP, v23);
  v12 = llvm::ConstantInt::get();
  v26 = 257;
  v13 = llvm::IRBuilderBase::CreateAnd((a1 + 1), Load, v12, v25);
  v14 = llvm::ConstantInt::get();
  v24 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), v13, v14, v23);
  v16 = a1[25];
  v22 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, LShr, v16, v21);
  v18 = llvm::ConstantInt::get();
  v26 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 1), v18, Cast, v25);
  return llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, Shl, a4, 0, 0);
}

uint64_t AGCLLVMG15PB0TargetLowerer::buildImageMipCountExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v32 = *a2;
  v33 = *(a2 + 16);
  if (v33)
  {
    llvm::MetadataTracking::track();
  }

  v34 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v32);
  if (v33)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v31 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v30);
  v10 = llvm::ConstantInt::get();
  v31 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v30);
  v12 = llvm::ConstantInt::get();
  v29 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v28);
  v14 = *(a1 + 200);
  v27 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v26);
  v16 = llvm::ConstantInt::get();
  v31 = 257;
  v17 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v16, v30);
  v18 = llvm::ConstantInt::get();
  v29 = 257;
  v19 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v17, v18, v28);
  v20 = *(a1 + 200);
  v27 = 257;
  v21 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v19, v20, v26);
  v31 = 257;
  Sub = llvm::IRBuilderBase::CreateSub((a1 + 8), Cast, v21, v30);
  v23 = llvm::ConstantInt::get();
  v29 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), Sub, v23, v28);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Add, a4, 0, 0);
}

uint64_t AGCLLVMG15PB0TargetLowerer::buildImageDimensionsExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v94 = *a2;
  v95 = *(a2 + 16);
  if (v95)
  {
    llvm::MetadataTracking::track();
  }

  v96 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v94);
  if (v95)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v93 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v92);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v93 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v10, a3, v11, v92);
  v91 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  v13 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v10, GEP, 0, v90);
  v14 = *(a1 + 208);
  v15 = llvm::ConstantInt::get();
  v93 = 257;
  v16 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v14, a3, v15, v92);
  v91 = 257;
  llvm::Type::isOpaquePointerTy(*v16);
  v17 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v14, v16, 0, v90);
  v18 = llvm::ConstantInt::get();
  v93 = 257;
  v19 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v13, v18, v92);
  v20 = llvm::ConstantInt::get();
  v91 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v19, v20, v90);
  v22 = *(a1 + 200);
  v89 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v22, v88);
  v24 = llvm::ConstantInt::get();
  v87 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), Cast, v24, v86);
  v26 = llvm::ConstantInt::get();
  v93 = 257;
  v27 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v26, v92);
  v28 = llvm::ConstantInt::get();
  v91 = 257;
  v29 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v27, v28, v90);
  v30 = *(a1 + 200);
  v89 = 257;
  v31 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v29, v30, v88);
  v32 = llvm::ConstantInt::get();
  v93 = 257;
  v33 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v32, v92);
  v34 = llvm::ConstantInt::get();
  v91 = 257;
  v35 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v33, v34, v90);
  v36 = *(a1 + 200);
  v89 = 257;
  v37 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v35, v36, v88);
  v38 = llvm::ConstantInt::get();
  v87 = 257;
  v39 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v37, v38, v86);
  v40 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v39, v31);
  v41 = llvm::ConstantInt::get();
  v93 = 257;
  v42 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v41, v92);
  v43 = llvm::ConstantInt::get();
  v91 = 257;
  v44 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v42, v43, v90);
  v45 = *(a1 + 200);
  v89 = 257;
  v46 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v44, v45, v88);
  v47 = llvm::ConstantInt::get();
  v87 = 257;
  v48 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v46, v47, v86);
  v49 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v48, v31);
  v50 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, Add, v31);
  v51 = llvm::ConstantInt::get();
  v93 = 257;
  v52 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v17, v51, v92);
  v53 = llvm::ConstantInt::get();
  v91 = 257;
  v54 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v52, v53, v90);
  v55 = *(a1 + 200);
  v89 = 257;
  v56 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v54, v55, v88);
  v57 = llvm::ConstantInt::get();
  v87 = 257;
  llvm::IRBuilderBase::CreateAdd((a1 + 8), v56, v57, v86);
  v58 = llvm::ConstantInt::get();
  v93 = 257;
  v59 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v58, v92);
  v60 = llvm::ConstantInt::get();
  v91 = 257;
  v61 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v59, v60, v90);
  v62 = *(a1 + 200);
  v89 = 257;
  v63 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v61, v62, v88);
  v64 = llvm::ConstantInt::get();
  v93 = 257;
  v65 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v64, v92);
  v66 = llvm::ConstantInt::get();
  v91 = 257;
  v67 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v65, v66, v90);
  v68 = *(a1 + 200);
  v89 = 257;
  v69 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v67, v68, v88);
  v70 = llvm::ConstantInt::get();
  v93 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v63, v70, v92);
  v72 = llvm::ConstantInt::get();
  v91 = 257;
  v73 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v69, v72, v90);
  v89 = 257;
  llvm::IRBuilderBase::CreateAnd((a1 + 8), ICmp, v73, v88);
  v93 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  NullValue = llvm::Constant::getNullValue(*(a1 + 336), v75);
  v93 = 257;
  v77 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), NullValue, v40, v77, v92);
  v93 = 257;
  v79 = llvm::ConstantInt::get();
  v80 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v49, v79, v92);
  v93 = 257;
  v81 = llvm::ConstantInt::get();
  v82 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v80, v50, v81, v92);
  v93 = 257;
  v83 = llvm::ConstantInt::get();
  v84 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v82, Select, v83, v92);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v84, a4, 0, 0);
}

void AGCLLVMG15PB0TargetLowerer::~AGCLLVMG15PB0TargetLowerer(AGCLLVMG15PB0TargetLowerer *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2825BA2A8;
  v5 = *(this + 325);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448, a2, a3, a4);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416, v7, v8, v9);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BA2A8;
  v5 = *(this + 325);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448, a2, a3, a4);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416, v7, v8, v9);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));

  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);
}

void AGCLLVMG16PB0TargetConfig::~AGCLLVMG16PB0TargetConfig(AGCLLVMG16PB0TargetConfig *this)
{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0, v2, v3);
}

{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0, v2, v3);

  JUMPOUT(0x20F331DC0);
}

void AGCLLVMG16PA0TargetConfig::~AGCLLVMG16PA0TargetConfig(AGCLLVMG16PA0TargetConfig *this)
{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0, v2, v3);
}

{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0, v2, v3);

  JUMPOUT(0x20F331DC0);
}

void AGCLLVMG16GA0TargetConfig::~AGCLLVMG16GA0TargetConfig(AGCLLVMG16GA0TargetConfig *this)
{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0, v2, v3);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0, v2, v3);
}

uint64_t AGCLLVMG16GA0TargetLowerer::extractMaxLevel(llvm::ConstantInt **this, llvm::Value *a2, uint64_t a3, BOOL a4)
{
  v6 = llvm::ConstantInt::get();
  v14 = 257;
  v7 = llvm::IRBuilderBase::CreateAnd((this + 1), a2, v6, v13);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 1), v7, v8, v13);
  v10 = this[25];
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast((this + 1), 38, LShr, v10, v12);
}

uint64_t AGCLLVMG16GA0TargetLowerer::extractBaseLevel(llvm::ConstantInt **this, llvm::Value *a2, uint64_t a3, BOOL a4)
{
  v6 = llvm::ConstantInt::get();
  v14 = 257;
  v7 = llvm::IRBuilderBase::CreateAnd((this + 1), a2, v6, v13);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 1), v7, v8, v13);
  v10 = this[25];
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast((this + 1), 38, LShr, v10, v12);
}

uint64_t AGCLLVMG16GA0TargetLowerer::buildImagePackFormatExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v72 = *a2;
  v73 = *(a2 + 16);
  if (v73)
  {
    llvm::MetadataTracking::track();
  }

  v74 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v72);
  if (v73)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v71 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v70);
  v10 = llvm::ConstantInt::get();
  v71 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v70);
  v12 = llvm::ConstantInt::get();
  v69 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v68);
  v14 = *(a1 + 200);
  v67 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v66);
  v16 = llvm::ConstantInt::get();
  v65 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Cast, v16, v64);
  v18 = *(a1 + 200);
  v63 = 257;
  v19 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, ICmp, v18, v62);
  v20 = llvm::ConstantInt::get();
  v71 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v19, v20, v70);
  if ((*(a1 + 1889) & 1) == 0)
  {
    v22 = llvm::ConstantInt::get();
    v71 = 257;
    v23 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v22, v70);
    v24 = llvm::ConstantInt::get();
    v69 = 257;
    v25 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v23, v24, v68);
    v26 = *(a1 + 200);
    v67 = 257;
    v27 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v25, v26, v66);
    v28 = llvm::ConstantInt::get();
    v65 = 257;
    v29 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v27, v28, v64);
    v30 = llvm::ConstantInt::get();
    v71 = 257;
    v31 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v30, v70);
    v32 = llvm::ConstantInt::get();
    v69 = 257;
    v33 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v31, v32, v68);
    v34 = *(a1 + 200);
    v67 = 257;
    v35 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v33, v34, v66);
    v36 = llvm::ConstantInt::get();
    v65 = 257;
    v37 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v35, v36, v64);
    v38 = llvm::ConstantInt::get();
    v71 = 257;
    v39 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v38, v70);
    v40 = llvm::ConstantInt::get();
    v69 = 257;
    v41 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v39, v40, v68);
    v42 = *(a1 + 200);
    v67 = 257;
    v43 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v41, v42, v66);
    v44 = llvm::ConstantInt::get();
    v65 = 257;
    v45 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v43, v44, v64);
    v46 = llvm::ConstantInt::get();
    v71 = 257;
    v47 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v46, v70);
    v48 = llvm::ConstantInt::get();
    v69 = 257;
    v49 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v47, v48, v68);
    v50 = *(a1 + 200);
    v67 = 257;
    v51 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v49, v50, v66);
    v52 = llvm::ConstantInt::get();
    v65 = 257;
    v53 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v51, v52, v64);
    v71 = 257;
    v54 = llvm::IRBuilderBase::CreateOr((a1 + 8), v37, v45, v70);
    v71 = 257;
    v55 = llvm::IRBuilderBase::CreateOr((a1 + 8), v54, v53, v70);
    v70[0] = "is_float16_texture";
    v71 = 259;
    v56 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v29, v55, v70);
    v57 = *(a1 + 200);
    v69 = 257;
    v58 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v56, v57, v68);
    v59 = llvm::ConstantInt::get();
    v71 = 257;
    v60 = llvm::IRBuilderBase::CreateShl((a1 + 8), v58, v59, v70);
    v69 = 257;
    Shl = llvm::IRBuilderBase::CreateOr((a1 + 8), Shl, v60, v68);
  }

  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0, 0);
}

uint64_t AGCLLVMG16GA0TargetLowerer::buildImageSampleCountExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v25 = *a2;
  v26 = *(a2 + 16);
  if (v26)
  {
    llvm::MetadataTracking::track();
  }

  v27 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v25);
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v24 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v23);
  v10 = llvm::ConstantInt::get();
  v24 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v23);
  v12 = llvm::ConstantInt::get();
  v22 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v21);
  v14 = *(a1 + 200);
  v20 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v19);
  v16 = llvm::ConstantInt::get();
  v24 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v16, Cast, v23);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0, 0);
}

uint64_t AGCLLVMG16GA0TargetLowerer::buildImageDimensionsExtract(llvm::ConstantInt **a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v96 = *a2;
  v97 = *(a2 + 16);
  if (v97)
  {
    llvm::MetadataTracking::track();
  }

  v98 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v96);
  if (v97)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = a1[26];
  v95 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v8, a3, 0, v94);
  v10 = a1[26];
  v11 = llvm::ConstantInt::get();
  v95 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v10, a3, v11, v94);
  v93 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  v13 = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v10, GEP, 0, v92);
  v14 = a1[26];
  v15 = llvm::ConstantInt::get();
  v95 = 257;
  v16 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v14, a3, v15, v94);
  v93 = 257;
  llvm::Type::isOpaquePointerTy(*v16);
  v17 = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v14, v16, 0, v92);
  v18 = llvm::ConstantInt::get();
  v95 = 257;
  v19 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v13, v18, v94);
  v20 = llvm::ConstantInt::get();
  v93 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), v19, v20, v92);
  v22 = a1[25];
  v91 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, LShr, v22, v90);
  v24 = llvm::ConstantInt::get();
  v89 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), Cast, v24, v88);
  (*(*a1 + 248))(a1, v17);
  v26 = llvm::ConstantInt::get();
  v95 = 257;
  v27 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v26, v94);
  v28 = llvm::ConstantInt::get();
  v93 = 257;
  v29 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v27, v28, v92);
  v30 = a1[25];
  v91 = 257;
  v31 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v29, v30, v90);
  v32 = llvm::ConstantInt::get();
  v89 = 257;
  llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v31, v32, v88);
  llvm::ConstantInt::get();
  v95 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v34 = llvm::ConstantInt::get();
  v95 = 257;
  v35 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v34, v94);
  v36 = llvm::ConstantInt::get();
  v93 = 257;
  v37 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v35, v36, v92);
  v38 = a1[25];
  v91 = 257;
  v39 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v37, v38, v90);
  v40 = llvm::ConstantInt::get();
  v89 = 257;
  v41 = llvm::IRBuilderBase::CreateAdd((a1 + 1), v39, v40, v88);
  v42 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v41, Select);
  v43 = llvm::ConstantInt::get();
  v95 = 257;
  v44 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v43, v94);
  v45 = llvm::ConstantInt::get();
  v93 = 257;
  v46 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v44, v45, v92);
  v47 = a1[25];
  v91 = 257;
  v48 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v46, v47, v90);
  v49 = llvm::ConstantInt::get();
  v89 = 257;
  v50 = llvm::IRBuilderBase::CreateAdd((a1 + 1), v48, v49, v88);
  v51 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v50, Select);
  v52 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, Add, Select);
  v53 = llvm::ConstantInt::get();
  v95 = 257;
  v54 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v17, v53, v94);
  v55 = llvm::ConstantInt::get();
  v93 = 257;
  v56 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v54, v55, v92);
  v57 = a1[25];
  v91 = 257;
  v58 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v56, v57, v90);
  v59 = llvm::ConstantInt::get();
  v89 = 257;
  llvm::IRBuilderBase::CreateAdd((a1 + 1), v58, v59, v88);
  v60 = llvm::ConstantInt::get();
  v95 = 257;
  v61 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v60, v94);
  v62 = llvm::ConstantInt::get();
  v93 = 257;
  v63 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v61, v62, v92);
  v64 = a1[25];
  v91 = 257;
  v65 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v63, v64, v90);
  v66 = llvm::ConstantInt::get();
  v95 = 257;
  v67 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v66, v94);
  v68 = llvm::ConstantInt::get();
  v93 = 257;
  v69 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v67, v68, v92);
  v70 = a1[25];
  v91 = 257;
  v71 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v69, v70, v90);
  v72 = llvm::ConstantInt::get();
  v95 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v65, v72, v94);
  v74 = llvm::ConstantInt::get();
  v93 = 257;
  v75 = llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v71, v74, v92);
  v91 = 257;
  llvm::IRBuilderBase::CreateAnd((a1 + 1), ICmp, v75, v90);
  v95 = 257;
  v76 = llvm::IRBuilderBase::CreateSelect();
  NullValue = llvm::Constant::getNullValue(a1[42], v77);
  v95 = 257;
  v79 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), NullValue, v42, v79, v94);
  v95 = 257;
  v81 = llvm::ConstantInt::get();
  v82 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), InsertElement, v51, v81, v94);
  v95 = 257;
  v83 = llvm::ConstantInt::get();
  v84 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v82, v52, v83, v94);
  v95 = 257;
  v85 = llvm::ConstantInt::get();
  v86 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v84, v76, v85, v94);
  return llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, v86, a4, 0, 0);
}

void AGCLLVMG16GA0TargetLowerer::~AGCLLVMG16GA0TargetLowerer(AGCLLVMG16GA0TargetLowerer *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2825BA2A8;
  v5 = *(this + 325);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448, a2, a3, a4);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416, v7, v8, v9);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BA2A8;
  v5 = *(this + 325);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448, a2, a3, a4);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416, v7, v8, v9);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));

  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);
}

void AGCLLVMG16GA0TargetConfig::AGCLLVMG16GA0TargetConfig()
{
  AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateHAL200TargetConfig(AGCTargetArch)::g16g_a0, 65568);
  *(v0 + 60) = 0;
  *(v0 + 49) = 0;
  *v0 = &unk_2825B51A0;
  *(v0 + 8) = "agx3-apple-ios";
}

void AGCLLVMG16GB0TargetConfig::~AGCLLVMG16GB0TargetConfig(AGCLLVMG16GB0TargetConfig *this)
{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0, v2, v3);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0, v2, v3);
}

uint64_t AGCLLVMG16GB0TargetLowerer::extractMaxLevel(llvm::ConstantInt **this, llvm::Value *a2, uint64_t a3, BOOL a4)
{
  v6 = llvm::ConstantInt::get();
  v14 = 257;
  v7 = llvm::IRBuilderBase::CreateAnd((this + 1), a2, v6, v13);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 1), v7, v8, v13);
  v10 = this[25];
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast((this + 1), 38, LShr, v10, v12);
}

uint64_t AGCLLVMG16GB0TargetLowerer::extractBaseLevel(llvm::ConstantInt **this, llvm::Value *a2, uint64_t a3, BOOL a4)
{
  v6 = llvm::ConstantInt::get();
  v14 = 257;
  v7 = llvm::IRBuilderBase::CreateAnd((this + 1), a2, v6, v13);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 1), v7, v8, v13);
  v10 = this[25];
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast((this + 1), 38, LShr, v10, v12);
}

uint64_t AGCLLVMG16GB0TargetLowerer::buildImagePackFormatExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v72 = *a2;
  v73 = *(a2 + 16);
  if (v73)
  {
    llvm::MetadataTracking::track();
  }

  v74 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v72);
  if (v73)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v71 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v70);
  v10 = llvm::ConstantInt::get();
  v71 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v70);
  v12 = llvm::ConstantInt::get();
  v69 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v68);
  v14 = *(a1 + 200);
  v67 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v66);
  v16 = llvm::ConstantInt::get();
  v65 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Cast, v16, v64);
  v18 = *(a1 + 200);
  v63 = 257;
  v19 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, ICmp, v18, v62);
  v20 = llvm::ConstantInt::get();
  v71 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v19, v20, v70);
  if ((*(a1 + 1889) & 1) == 0)
  {
    v22 = llvm::ConstantInt::get();
    v71 = 257;
    v23 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v22, v70);
    v24 = llvm::ConstantInt::get();
    v69 = 257;
    v25 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v23, v24, v68);
    v26 = *(a1 + 200);
    v67 = 257;
    v27 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v25, v26, v66);
    v28 = llvm::ConstantInt::get();
    v65 = 257;
    v29 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v27, v28, v64);
    v30 = llvm::ConstantInt::get();
    v71 = 257;
    v31 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v30, v70);
    v32 = llvm::ConstantInt::get();
    v69 = 257;
    v33 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v31, v32, v68);
    v34 = *(a1 + 200);
    v67 = 257;
    v35 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v33, v34, v66);
    v36 = llvm::ConstantInt::get();
    v65 = 257;
    v37 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v35, v36, v64);
    v38 = llvm::ConstantInt::get();
    v71 = 257;
    v39 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v38, v70);
    v40 = llvm::ConstantInt::get();
    v69 = 257;
    v41 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v39, v40, v68);
    v42 = *(a1 + 200);
    v67 = 257;
    v43 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v41, v42, v66);
    v44 = llvm::ConstantInt::get();
    v65 = 257;
    v45 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v43, v44, v64);
    v46 = llvm::ConstantInt::get();
    v71 = 257;
    v47 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v46, v70);
    v48 = llvm::ConstantInt::get();
    v69 = 257;
    v49 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v47, v48, v68);
    v50 = *(a1 + 200);
    v67 = 257;
    v51 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v49, v50, v66);
    v52 = llvm::ConstantInt::get();
    v65 = 257;
    v53 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v51, v52, v64);
    v71 = 257;
    v54 = llvm::IRBuilderBase::CreateOr((a1 + 8), v37, v45, v70);
    v71 = 257;
    v55 = llvm::IRBuilderBase::CreateOr((a1 + 8), v54, v53, v70);
    v70[0] = "is_float16_texture";
    v71 = 259;
    v56 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v29, v55, v70);
    v57 = *(a1 + 200);
    v69 = 257;
    v58 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v56, v57, v68);
    v59 = llvm::ConstantInt::get();
    v71 = 257;
    v60 = llvm::IRBuilderBase::CreateShl((a1 + 8), v58, v59, v70);
    v69 = 257;
    Shl = llvm::IRBuilderBase::CreateOr((a1 + 8), Shl, v60, v68);
  }

  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0, 0);
}

uint64_t AGCLLVMG16GB0TargetLowerer::buildImageSampleCountExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v25 = *a2;
  v26 = *(a2 + 16);
  if (v26)
  {
    llvm::MetadataTracking::track();
  }

  v27 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v25);
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v24 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v23);
  v10 = llvm::ConstantInt::get();
  v24 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v23);
  v12 = llvm::ConstantInt::get();
  v22 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v21);
  v14 = *(a1 + 200);
  v20 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v19);
  v16 = llvm::ConstantInt::get();
  v24 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v16, Cast, v23);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0, 0);
}

uint64_t AGCLLVMG16GB0TargetLowerer::buildImageDimensionsExtract(llvm::ConstantInt **a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v96 = *a2;
  v97 = *(a2 + 16);
  if (v97)
  {
    llvm::MetadataTracking::track();
  }

  v98 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v96);
  if (v97)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = a1[26];
  v95 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v8, a3, 0, v94);
  v10 = a1[26];
  v11 = llvm::ConstantInt::get();
  v95 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v10, a3, v11, v94);
  v93 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  v13 = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v10, GEP, 0, v92);
  v14 = a1[26];
  v15 = llvm::ConstantInt::get();
  v95 = 257;
  v16 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v14, a3, v15, v94);
  v93 = 257;
  llvm::Type::isOpaquePointerTy(*v16);
  v17 = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v14, v16, 0, v92);
  v18 = llvm::ConstantInt::get();
  v95 = 257;
  v19 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v13, v18, v94);
  v20 = llvm::ConstantInt::get();
  v93 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), v19, v20, v92);
  v22 = a1[25];
  v91 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, LShr, v22, v90);
  v24 = llvm::ConstantInt::get();
  v89 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), Cast, v24, v88);
  (*(*a1 + 248))(a1, v17);
  v26 = llvm::ConstantInt::get();
  v95 = 257;
  v27 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v26, v94);
  v28 = llvm::ConstantInt::get();
  v93 = 257;
  v29 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v27, v28, v92);
  v30 = a1[25];
  v91 = 257;
  v31 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v29, v30, v90);
  v32 = llvm::ConstantInt::get();
  v89 = 257;
  llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v31, v32, v88);
  llvm::ConstantInt::get();
  v95 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v34 = llvm::ConstantInt::get();
  v95 = 257;
  v35 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v34, v94);
  v36 = llvm::ConstantInt::get();
  v93 = 257;
  v37 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v35, v36, v92);
  v38 = a1[25];
  v91 = 257;
  v39 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v37, v38, v90);
  v40 = llvm::ConstantInt::get();
  v89 = 257;
  v41 = llvm::IRBuilderBase::CreateAdd((a1 + 1), v39, v40, v88);
  v42 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v41, Select);
  v43 = llvm::ConstantInt::get();
  v95 = 257;
  v44 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v43, v94);
  v45 = llvm::ConstantInt::get();
  v93 = 257;
  v46 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v44, v45, v92);
  v47 = a1[25];
  v91 = 257;
  v48 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v46, v47, v90);
  v49 = llvm::ConstantInt::get();
  v89 = 257;
  v50 = llvm::IRBuilderBase::CreateAdd((a1 + 1), v48, v49, v88);
  v51 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v50, Select);
  v52 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, Add, Select);
  v53 = llvm::ConstantInt::get();
  v95 = 257;
  v54 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v17, v53, v94);
  v55 = llvm::ConstantInt::get();
  v93 = 257;
  v56 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v54, v55, v92);
  v57 = a1[25];
  v91 = 257;
  v58 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v56, v57, v90);
  v59 = llvm::ConstantInt::get();
  v89 = 257;
  llvm::IRBuilderBase::CreateAdd((a1 + 1), v58, v59, v88);
  v60 = llvm::ConstantInt::get();
  v95 = 257;
  v61 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v60, v94);
  v62 = llvm::ConstantInt::get();
  v93 = 257;
  v63 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v61, v62, v92);
  v64 = a1[25];
  v91 = 257;
  v65 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v63, v64, v90);
  v66 = llvm::ConstantInt::get();
  v95 = 257;
  v67 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v66, v94);
  v68 = llvm::ConstantInt::get();
  v93 = 257;
  v69 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v67, v68, v92);
  v70 = a1[25];
  v91 = 257;
  v71 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v69, v70, v90);
  v72 = llvm::ConstantInt::get();
  v95 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v65, v72, v94);
  v74 = llvm::ConstantInt::get();
  v93 = 257;
  v75 = llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v71, v74, v92);
  v91 = 257;
  llvm::IRBuilderBase::CreateAnd((a1 + 1), ICmp, v75, v90);
  v95 = 257;
  v76 = llvm::IRBuilderBase::CreateSelect();
  NullValue = llvm::Constant::getNullValue(a1[42], v77);
  v95 = 257;
  v79 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), NullValue, v42, v79, v94);
  v95 = 257;
  v81 = llvm::ConstantInt::get();
  v82 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), InsertElement, v51, v81, v94);
  v95 = 257;
  v83 = llvm::ConstantInt::get();
  v84 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v82, v52, v83, v94);
  v95 = 257;
  v85 = llvm::ConstantInt::get();
  v86 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v84, v76, v85, v94);
  return llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, v86, a4, 0, 0);
}

void AGCLLVMG16GB0TargetLowerer::~AGCLLVMG16GB0TargetLowerer(AGCLLVMG16GB0TargetLowerer *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2825BA2A8;
  v5 = *(this + 325);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448, a2, a3, a4);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416, v7, v8, v9);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BA2A8;
  v5 = *(this + 325);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448, a2, a3, a4);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416, v7, v8, v9);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));

  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);
}

void AGCLLVMG16GB0TargetConfig::AGCLLVMG16GB0TargetConfig()
{
  AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateHAL200TargetConfig(AGCTargetArch)::g16g_b0, 196640);
  *(v0 + 60) = 0;
  *(v0 + 49) = 0;
  *v0 = &unk_2825B5A98;
  *(v0 + 8) = "agx3-apple-ios";
}

uint64_t AGCLLVMG16PA0TargetLowerer::extractMaxLevel(llvm::ConstantInt **this, llvm::Value *a2, uint64_t a3, BOOL a4)
{
  v6 = llvm::ConstantInt::get();
  v14 = 257;
  v7 = llvm::IRBuilderBase::CreateAnd((this + 1), a2, v6, v13);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 1), v7, v8, v13);
  v10 = this[25];
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast((this + 1), 38, LShr, v10, v12);
}

uint64_t AGCLLVMG16PA0TargetLowerer::extractBaseLevel(llvm::ConstantInt **this, llvm::Value *a2, uint64_t a3, BOOL a4)
{
  v6 = llvm::ConstantInt::get();
  v14 = 257;
  v7 = llvm::IRBuilderBase::CreateAnd((this + 1), a2, v6, v13);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 1), v7, v8, v13);
  v10 = this[25];
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast((this + 1), 38, LShr, v10, v12);
}

uint64_t AGCLLVMG16PA0TargetLowerer::buildImagePackFormatExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v72 = *a2;
  v73 = *(a2 + 16);
  if (v73)
  {
    llvm::MetadataTracking::track();
  }

  v74 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v72);
  if (v73)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v71 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v70);
  v10 = llvm::ConstantInt::get();
  v71 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v70);
  v12 = llvm::ConstantInt::get();
  v69 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v68);
  v14 = *(a1 + 200);
  v67 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v66);
  v16 = llvm::ConstantInt::get();
  v65 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Cast, v16, v64);
  v18 = *(a1 + 200);
  v63 = 257;
  v19 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, ICmp, v18, v62);
  v20 = llvm::ConstantInt::get();
  v71 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v19, v20, v70);
  if ((*(a1 + 1889) & 1) == 0)
  {
    v22 = llvm::ConstantInt::get();
    v71 = 257;
    v23 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v22, v70);
    v24 = llvm::ConstantInt::get();
    v69 = 257;
    v25 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v23, v24, v68);
    v26 = *(a1 + 200);
    v67 = 257;
    v27 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v25, v26, v66);
    v28 = llvm::ConstantInt::get();
    v65 = 257;
    v29 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v27, v28, v64);
    v30 = llvm::ConstantInt::get();
    v71 = 257;
    v31 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v30, v70);
    v32 = llvm::ConstantInt::get();
    v69 = 257;
    v33 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v31, v32, v68);
    v34 = *(a1 + 200);
    v67 = 257;
    v35 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v33, v34, v66);
    v36 = llvm::ConstantInt::get();
    v65 = 257;
    v37 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v35, v36, v64);
    v38 = llvm::ConstantInt::get();
    v71 = 257;
    v39 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v38, v70);
    v40 = llvm::ConstantInt::get();
    v69 = 257;
    v41 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v39, v40, v68);
    v42 = *(a1 + 200);
    v67 = 257;
    v43 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v41, v42, v66);
    v44 = llvm::ConstantInt::get();
    v65 = 257;
    v45 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v43, v44, v64);
    v46 = llvm::ConstantInt::get();
    v71 = 257;
    v47 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v46, v70);
    v48 = llvm::ConstantInt::get();
    v69 = 257;
    v49 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v47, v48, v68);
    v50 = *(a1 + 200);
    v67 = 257;
    v51 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v49, v50, v66);
    v52 = llvm::ConstantInt::get();
    v65 = 257;
    v53 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v51, v52, v64);
    v71 = 257;
    v54 = llvm::IRBuilderBase::CreateOr((a1 + 8), v37, v45, v70);
    v71 = 257;
    v55 = llvm::IRBuilderBase::CreateOr((a1 + 8), v54, v53, v70);
    v70[0] = "is_float16_texture";
    v71 = 259;
    v56 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v29, v55, v70);
    v57 = *(a1 + 200);
    v69 = 257;
    v58 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v56, v57, v68);
    v59 = llvm::ConstantInt::get();
    v71 = 257;
    v60 = llvm::IRBuilderBase::CreateShl((a1 + 8), v58, v59, v70);
    v69 = 257;
    Shl = llvm::IRBuilderBase::CreateOr((a1 + 8), Shl, v60, v68);
  }

  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0, 0);
}

uint64_t AGCLLVMG16PA0TargetLowerer::buildImageSampleCountExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v25 = *a2;
  v26 = *(a2 + 16);
  if (v26)
  {
    llvm::MetadataTracking::track();
  }

  v27 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v25);
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v24 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v23);
  v10 = llvm::ConstantInt::get();
  v24 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v23);
  v12 = llvm::ConstantInt::get();
  v22 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v21);
  v14 = *(a1 + 200);
  v20 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v19);
  v16 = llvm::ConstantInt::get();
  v24 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v16, Cast, v23);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0, 0);
}

uint64_t AGCLLVMG16PA0TargetLowerer::buildImageDimensionsExtract(llvm::ConstantInt **a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v96 = *a2;
  v97 = *(a2 + 16);
  if (v97)
  {
    llvm::MetadataTracking::track();
  }

  v98 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v96);
  if (v97)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = a1[26];
  v95 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v8, a3, 0, v94);
  v10 = a1[26];
  v11 = llvm::ConstantInt::get();
  v95 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v10, a3, v11, v94);
  v93 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  v13 = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v10, GEP, 0, v92);
  v14 = a1[26];
  v15 = llvm::ConstantInt::get();
  v95 = 257;
  v16 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v14, a3, v15, v94);
  v93 = 257;
  llvm::Type::isOpaquePointerTy(*v16);
  v17 = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v14, v16, 0, v92);
  v18 = llvm::ConstantInt::get();
  v95 = 257;
  v19 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v13, v18, v94);
  v20 = llvm::ConstantInt::get();
  v93 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), v19, v20, v92);
  v22 = a1[25];
  v91 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, LShr, v22, v90);
  v24 = llvm::ConstantInt::get();
  v89 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), Cast, v24, v88);
  (*(*a1 + 248))(a1, v17);
  v26 = llvm::ConstantInt::get();
  v95 = 257;
  v27 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v26, v94);
  v28 = llvm::ConstantInt::get();
  v93 = 257;
  v29 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v27, v28, v92);
  v30 = a1[25];
  v91 = 257;
  v31 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v29, v30, v90);
  v32 = llvm::ConstantInt::get();
  v89 = 257;
  llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v31, v32, v88);
  llvm::ConstantInt::get();
  v95 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v34 = llvm::ConstantInt::get();
  v95 = 257;
  v35 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v34, v94);
  v36 = llvm::ConstantInt::get();
  v93 = 257;
  v37 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v35, v36, v92);
  v38 = a1[25];
  v91 = 257;
  v39 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v37, v38, v90);
  v40 = llvm::ConstantInt::get();
  v89 = 257;
  v41 = llvm::IRBuilderBase::CreateAdd((a1 + 1), v39, v40, v88);
  v42 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v41, Select);
  v43 = llvm::ConstantInt::get();
  v95 = 257;
  v44 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v43, v94);
  v45 = llvm::ConstantInt::get();
  v93 = 257;
  v46 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v44, v45, v92);
  v47 = a1[25];
  v91 = 257;
  v48 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v46, v47, v90);
  v49 = llvm::ConstantInt::get();
  v89 = 257;
  v50 = llvm::IRBuilderBase::CreateAdd((a1 + 1), v48, v49, v88);
  v51 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v50, Select);
  v52 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, Add, Select);
  v53 = llvm::ConstantInt::get();
  v95 = 257;
  v54 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v17, v53, v94);
  v55 = llvm::ConstantInt::get();
  v93 = 257;
  v56 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v54, v55, v92);
  v57 = a1[25];
  v91 = 257;
  v58 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v56, v57, v90);
  v59 = llvm::ConstantInt::get();
  v89 = 257;
  llvm::IRBuilderBase::CreateAdd((a1 + 1), v58, v59, v88);
  v60 = llvm::ConstantInt::get();
  v95 = 257;
  v61 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v60, v94);
  v62 = llvm::ConstantInt::get();
  v93 = 257;
  v63 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v61, v62, v92);
  v64 = a1[25];
  v91 = 257;
  v65 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v63, v64, v90);
  v66 = llvm::ConstantInt::get();
  v95 = 257;
  v67 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v66, v94);
  v68 = llvm::ConstantInt::get();
  v93 = 257;
  v69 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v67, v68, v92);
  v70 = a1[25];
  v91 = 257;
  v71 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v69, v70, v90);
  v72 = llvm::ConstantInt::get();
  v95 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v65, v72, v94);
  v74 = llvm::ConstantInt::get();
  v93 = 257;
  v75 = llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v71, v74, v92);
  v91 = 257;
  llvm::IRBuilderBase::CreateAnd((a1 + 1), ICmp, v75, v90);
  v95 = 257;
  v76 = llvm::IRBuilderBase::CreateSelect();
  NullValue = llvm::Constant::getNullValue(a1[42], v77);
  v95 = 257;
  v79 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), NullValue, v42, v79, v94);
  v95 = 257;
  v81 = llvm::ConstantInt::get();
  v82 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), InsertElement, v51, v81, v94);
  v95 = 257;
  v83 = llvm::ConstantInt::get();
  v84 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v82, v52, v83, v94);
  v95 = 257;
  v85 = llvm::ConstantInt::get();
  v86 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v84, v76, v85, v94);
  return llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, v86, a4, 0, 0);
}

void AGCLLVMG16PA0TargetLowerer::~AGCLLVMG16PA0TargetLowerer(AGCLLVMG16PA0TargetLowerer *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2825BA2A8;
  v5 = *(this + 325);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448, a2, a3, a4);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416, v7, v8, v9);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BA2A8;
  v5 = *(this + 325);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448, a2, a3, a4);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416, v7, v8, v9);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));

  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);
}

uint64_t AGCLLVMG16PB0TargetLowerer::extractMaxLevel(llvm::ConstantInt **this, llvm::Value *a2, uint64_t a3, BOOL a4)
{
  v6 = llvm::ConstantInt::get();
  v14 = 257;
  v7 = llvm::IRBuilderBase::CreateAnd((this + 1), a2, v6, v13);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 1), v7, v8, v13);
  v10 = this[25];
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast((this + 1), 38, LShr, v10, v12);
}

uint64_t AGCLLVMG16PB0TargetLowerer::buildImagePackFormatExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v72 = *a2;
  v73 = *(a2 + 16);
  if (v73)
  {
    llvm::MetadataTracking::track();
  }

  v74 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v72);
  if (v73)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v71 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v70);
  v10 = llvm::ConstantInt::get();
  v71 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v70);
  v12 = llvm::ConstantInt::get();
  v69 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v68);
  v14 = *(a1 + 200);
  v67 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v66);
  v16 = llvm::ConstantInt::get();
  v65 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Cast, v16, v64);
  v18 = *(a1 + 200);
  v63 = 257;
  v19 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, ICmp, v18, v62);
  v20 = llvm::ConstantInt::get();
  v71 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v19, v20, v70);
  if ((*(a1 + 1889) & 1) == 0)
  {
    v22 = llvm::ConstantInt::get();
    v71 = 257;
    v23 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v22, v70);
    v24 = llvm::ConstantInt::get();
    v69 = 257;
    v25 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v23, v24, v68);
    v26 = *(a1 + 200);
    v67 = 257;
    v27 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v25, v26, v66);
    v28 = llvm::ConstantInt::get();
    v65 = 257;
    v29 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v27, v28, v64);
    v30 = llvm::ConstantInt::get();
    v71 = 257;
    v31 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v30, v70);
    v32 = llvm::ConstantInt::get();
    v69 = 257;
    v33 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v31, v32, v68);
    v34 = *(a1 + 200);
    v67 = 257;
    v35 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v33, v34, v66);
    v36 = llvm::ConstantInt::get();
    v65 = 257;
    v37 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v35, v36, v64);
    v38 = llvm::ConstantInt::get();
    v71 = 257;
    v39 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v38, v70);
    v40 = llvm::ConstantInt::get();
    v69 = 257;
    v41 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v39, v40, v68);
    v42 = *(a1 + 200);
    v67 = 257;
    v43 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v41, v42, v66);
    v44 = llvm::ConstantInt::get();
    v65 = 257;
    v45 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v43, v44, v64);
    v46 = llvm::ConstantInt::get();
    v71 = 257;
    v47 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v46, v70);
    v48 = llvm::ConstantInt::get();
    v69 = 257;
    v49 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v47, v48, v68);
    v50 = *(a1 + 200);
    v67 = 257;
    v51 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v49, v50, v66);
    v52 = llvm::ConstantInt::get();
    v65 = 257;
    v53 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v51, v52, v64);
    v71 = 257;
    v54 = llvm::IRBuilderBase::CreateOr((a1 + 8), v37, v45, v70);
    v71 = 257;
    v55 = llvm::IRBuilderBase::CreateOr((a1 + 8), v54, v53, v70);
    v70[0] = "is_float16_texture";
    v71 = 259;
    v56 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v29, v55, v70);
    v57 = *(a1 + 200);
    v69 = 257;
    v58 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v56, v57, v68);
    v59 = llvm::ConstantInt::get();
    v71 = 257;
    v60 = llvm::IRBuilderBase::CreateShl((a1 + 8), v58, v59, v70);
    v69 = 257;
    Shl = llvm::IRBuilderBase::CreateOr((a1 + 8), Shl, v60, v68);
  }

  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0, 0);
}

uint64_t AGCLLVMG16PB0TargetLowerer::buildImageSampleCountExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v25 = *a2;
  v26 = *(a2 + 16);
  if (v26)
  {
    llvm::MetadataTracking::track();
  }

  v27 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v25);
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v24 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v23);
  v10 = llvm::ConstantInt::get();
  v24 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v23);
  v12 = llvm::ConstantInt::get();
  v22 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v21);
  v14 = *(a1 + 200);
  v20 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v19);
  v16 = llvm::ConstantInt::get();
  v24 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v16, Cast, v23);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0, 0);
}

void AGCLLVMG17GA0TargetConfig::~AGCLLVMG17GA0TargetConfig(AGCLLVMG17GA0TargetConfig *this)
{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0, v2, v3);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0, v2, v3);
}

uint64_t AGCLLVMG17GA0TargetLowerer::extractMaxLevel(llvm::ConstantInt **this, llvm::Value *a2, uint64_t a3, BOOL a4)
{
  v6 = llvm::ConstantInt::get();
  v14 = 257;
  v7 = llvm::IRBuilderBase::CreateAnd((this + 1), a2, v6, v13);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 1), v7, v8, v13);
  v10 = this[25];
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast((this + 1), 38, LShr, v10, v12);
}

uint64_t AGCLLVMG17GA0TargetLowerer::extractBaseLevel(llvm::ConstantInt **this, llvm::Value *a2, uint64_t a3, BOOL a4)
{
  v6 = llvm::ConstantInt::get();
  v14 = 257;
  v7 = llvm::IRBuilderBase::CreateAnd((this + 1), a2, v6, v13);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 1), v7, v8, v13);
  v10 = this[25];
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast((this + 1), 38, LShr, v10, v12);
}

uint64_t AGCLLVMG17GA0TargetLowerer::buildTextureOOBReadSWWA(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, int a7, int a8)
{
  v37 = *a2;
  v38 = *(a2 + 16);
  if (v38)
  {
    llvm::MetadataTracking::track();
  }

  v39 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v37);
  if (v38)
  {
    llvm::MetadataTracking::untrack();
  }

  v14 = llvm::ConstantInt::get();
  v15 = a5[21];
  if (v15)
  {
    v16 = llvm::ConstantInt::get();
    v36 = 257;
    ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 34, v15, v16, v35);
    v34 = 257;
    v14 = llvm::IRBuilderBase::CreateOr((a1 + 8), v14, ICmp, v33);
  }

  if (a6)
  {
    v18 = a5[19];
    v19 = llvm::ConstantInt::get();
    v36 = 257;
    v20 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 34, v18, v19, v35);
    v34 = 257;
    v14 = llvm::IRBuilderBase::CreateOr((a1 + 8), v14, v20, v33);
  }

  if (a7)
  {
    v21 = a5[29];
    v22 = llvm::ConstantInt::get();
    v36 = 257;
    v23 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 34, v21, v22, v35);
    v34 = 257;
    v14 = llvm::IRBuilderBase::CreateOr((a1 + 8), v14, v23, v33);
  }

  if (a8)
  {
    v24 = a5[27];
    v25 = llvm::ConstantInt::get();
    v36 = 257;
    v26 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 34, v24, v25, v35);
    v34 = 257;
    llvm::IRBuilderBase::CreateOr((a1 + 8), v14, v26, v33);
  }

  v35[0] = 0x7FFF0000000;
  std::__count_BOOL[abi:nn200100]<true,std::__bitset<1ul,64ul>,true>(v35, 0);
  v27 = a5[17];
  if ((*(*v27 + 8) & 0xFE) == 0x12)
  {
    v36 = 257;
    v28 = llvm::ConstantInt::get();
    llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v27, v28, v35);
    v29 = a5[17];
    llvm::ConstantInt::get();
    v36 = 257;
    Select = llvm::IRBuilderBase::CreateSelect();
    v34 = 257;
    v31 = llvm::ConstantInt::get();
    result = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v29, Select, v31, v33);
  }

  else
  {
    llvm::ConstantInt::get();
    v36 = 257;
    result = llvm::IRBuilderBase::CreateSelect();
  }

  a5[17] = result;
  return result;
}

uint64_t std::__count_BOOL[abi:nn200100]<true,std::__bitset<1ul,64ul>,true>(unint64_t *a1, unsigned int a2)
{
  v2 = a2;
  if (!a2)
  {
    goto LABEL_7;
  }

  v3 = 64;
  v4 = 64 - a2;
  if (v4 < 0x40)
  {
    v3 = 64 - a2;
  }

  v5 = *a1++;
  v6 = vcnt_s8(((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v3)) & (-1 << a2) & v5));
  v6.i16[0] = vaddlv_u8(v6);
  v2 = v6.u32[0];
  if (!v4)
  {
LABEL_7:
    v7 = *a1;
    goto LABEL_8;
  }

  if (v4 <= 0x3F)
  {
    v7 = *a1 & (0xFFFFFFFFFFFFFFFFLL >> v3);
LABEL_8:
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    v2 += v8.u32[0];
  }

  return v2;
}

uint64_t AGCLLVMG17GA0TargetLowerer::buildImagePackFormatExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v72 = *a2;
  v73 = *(a2 + 16);
  if (v73)
  {
    llvm::MetadataTracking::track();
  }

  v74 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v72);
  if (v73)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v71 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v70);
  v10 = llvm::ConstantInt::get();
  v71 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v70);
  v12 = llvm::ConstantInt::get();
  v69 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v68);
  v14 = *(a1 + 200);
  v67 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v66);
  v16 = llvm::ConstantInt::get();
  v65 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Cast, v16, v64);
  v18 = *(a1 + 200);
  v63 = 257;
  v19 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, ICmp, v18, v62);
  v20 = llvm::ConstantInt::get();
  v71 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v19, v20, v70);
  if ((*(a1 + 1889) & 1) == 0)
  {
    v22 = llvm::ConstantInt::get();
    v71 = 257;
    v23 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v22, v70);
    v24 = llvm::ConstantInt::get();
    v69 = 257;
    v25 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v23, v24, v68);
    v26 = *(a1 + 200);
    v67 = 257;
    v27 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v25, v26, v66);
    v28 = llvm::ConstantInt::get();
    v65 = 257;
    v29 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v27, v28, v64);
    v30 = llvm::ConstantInt::get();
    v71 = 257;
    v31 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v30, v70);
    v32 = llvm::ConstantInt::get();
    v69 = 257;
    v33 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v31, v32, v68);
    v34 = *(a1 + 200);
    v67 = 257;
    v35 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v33, v34, v66);
    v36 = llvm::ConstantInt::get();
    v65 = 257;
    v37 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v35, v36, v64);
    v38 = llvm::ConstantInt::get();
    v71 = 257;
    v39 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v38, v70);
    v40 = llvm::ConstantInt::get();
    v69 = 257;
    v41 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v39, v40, v68);
    v42 = *(a1 + 200);
    v67 = 257;
    v43 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v41, v42, v66);
    v44 = llvm::ConstantInt::get();
    v65 = 257;
    v45 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v43, v44, v64);
    v46 = llvm::ConstantInt::get();
    v71 = 257;
    v47 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v46, v70);
    v48 = llvm::ConstantInt::get();
    v69 = 257;
    v49 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v47, v48, v68);
    v50 = *(a1 + 200);
    v67 = 257;
    v51 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v49, v50, v66);
    v52 = llvm::ConstantInt::get();
    v65 = 257;
    v53 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v51, v52, v64);
    v71 = 257;
    v54 = llvm::IRBuilderBase::CreateOr((a1 + 8), v37, v45, v70);
    v71 = 257;
    v55 = llvm::IRBuilderBase::CreateOr((a1 + 8), v54, v53, v70);
    v70[0] = "is_float16_texture";
    v71 = 259;
    v56 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v29, v55, v70);
    v57 = *(a1 + 200);
    v69 = 257;
    v58 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v56, v57, v68);
    v59 = llvm::ConstantInt::get();
    v71 = 257;
    v60 = llvm::IRBuilderBase::CreateShl((a1 + 8), v58, v59, v70);
    v69 = 257;
    Shl = llvm::IRBuilderBase::CreateOr((a1 + 8), Shl, v60, v68);
  }

  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0, 0);
}

uint64_t AGCLLVMG17GA0TargetLowerer::buildImageSampleCountExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v25 = *a2;
  v26 = *(a2 + 16);
  if (v26)
  {
    llvm::MetadataTracking::track();
  }

  v27 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v25);
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v24 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v23);
  v10 = llvm::ConstantInt::get();
  v24 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v23);
  v12 = llvm::ConstantInt::get();
  v22 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v21);
  v14 = *(a1 + 200);
  v20 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v19);
  v16 = llvm::ConstantInt::get();
  v24 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v16, Cast, v23);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0, 0);
}

uint64_t AGCLLVMG17GA0TargetLowerer::buildImageDimensionsExtract(llvm::ConstantInt **a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v96 = *a2;
  v97 = *(a2 + 16);
  if (v97)
  {
    llvm::MetadataTracking::track();
  }

  v98 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v96);
  if (v97)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = a1[26];
  v95 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v8, a3, 0, v94);
  v10 = a1[26];
  v11 = llvm::ConstantInt::get();
  v95 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v10, a3, v11, v94);
  v93 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  v13 = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v10, GEP, 0, v92);
  v14 = a1[26];
  v15 = llvm::ConstantInt::get();
  v95 = 257;
  v16 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v14, a3, v15, v94);
  v93 = 257;
  llvm::Type::isOpaquePointerTy(*v16);
  v17 = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v14, v16, 0, v92);
  v18 = llvm::ConstantInt::get();
  v95 = 257;
  v19 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v13, v18, v94);
  v20 = llvm::ConstantInt::get();
  v93 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), v19, v20, v92);
  v22 = a1[25];
  v91 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, LShr, v22, v90);
  v24 = llvm::ConstantInt::get();
  v89 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), Cast, v24, v88);
  (*(*a1 + 248))(a1, v17);
  v26 = llvm::ConstantInt::get();
  v95 = 257;
  v27 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v26, v94);
  v28 = llvm::ConstantInt::get();
  v93 = 257;
  v29 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v27, v28, v92);
  v30 = a1[25];
  v91 = 257;
  v31 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v29, v30, v90);
  v32 = llvm::ConstantInt::get();
  v89 = 257;
  llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v31, v32, v88);
  llvm::ConstantInt::get();
  v95 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v34 = llvm::ConstantInt::get();
  v95 = 257;
  v35 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v34, v94);
  v36 = llvm::ConstantInt::get();
  v93 = 257;
  v37 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v35, v36, v92);
  v38 = a1[25];
  v91 = 257;
  v39 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v37, v38, v90);
  v40 = llvm::ConstantInt::get();
  v89 = 257;
  v41 = llvm::IRBuilderBase::CreateAdd((a1 + 1), v39, v40, v88);
  v42 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v41, Select);
  v43 = llvm::ConstantInt::get();
  v95 = 257;
  v44 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v43, v94);
  v45 = llvm::ConstantInt::get();
  v93 = 257;
  v46 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v44, v45, v92);
  v47 = a1[25];
  v91 = 257;
  v48 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v46, v47, v90);
  v49 = llvm::ConstantInt::get();
  v89 = 257;
  v50 = llvm::IRBuilderBase::CreateAdd((a1 + 1), v48, v49, v88);
  v51 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v50, Select);
  v52 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, Add, Select);
  v53 = llvm::ConstantInt::get();
  v95 = 257;
  v54 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v17, v53, v94);
  v55 = llvm::ConstantInt::get();
  v93 = 257;
  v56 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v54, v55, v92);
  v57 = a1[25];
  v91 = 257;
  v58 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v56, v57, v90);
  v59 = llvm::ConstantInt::get();
  v89 = 257;
  llvm::IRBuilderBase::CreateAdd((a1 + 1), v58, v59, v88);
  v60 = llvm::ConstantInt::get();
  v95 = 257;
  v61 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v60, v94);
  v62 = llvm::ConstantInt::get();
  v93 = 257;
  v63 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v61, v62, v92);
  v64 = a1[25];
  v91 = 257;
  v65 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v63, v64, v90);
  v66 = llvm::ConstantInt::get();
  v95 = 257;
  v67 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v66, v94);
  v68 = llvm::ConstantInt::get();
  v93 = 257;
  v69 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v67, v68, v92);
  v70 = a1[25];
  v91 = 257;
  v71 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v69, v70, v90);
  v72 = llvm::ConstantInt::get();
  v95 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v65, v72, v94);
  v74 = llvm::ConstantInt::get();
  v93 = 257;
  v75 = llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v71, v74, v92);
  v91 = 257;
  llvm::IRBuilderBase::CreateAnd((a1 + 1), ICmp, v75, v90);
  v95 = 257;
  v76 = llvm::IRBuilderBase::CreateSelect();
  NullValue = llvm::Constant::getNullValue(a1[42], v77);
  v95 = 257;
  v79 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), NullValue, v42, v79, v94);
  v95 = 257;
  v81 = llvm::ConstantInt::get();
  v82 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), InsertElement, v51, v81, v94);
  v95 = 257;
  v83 = llvm::ConstantInt::get();
  v84 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v82, v52, v83, v94);
  v95 = 257;
  v85 = llvm::ConstantInt::get();
  v86 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v84, v76, v85, v94);
  return llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, v86, a4, 0, 0);
}

void AGCLLVMG17GA0TargetLowerer::~AGCLLVMG17GA0TargetLowerer(AGCLLVMG17GA0TargetLowerer *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2825BA2A8;
  v5 = *(this + 325);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448, a2, a3, a4);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416, v7, v8, v9);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BA2A8;
  v5 = *(this + 325);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448, a2, a3, a4);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416, v7, v8, v9);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));

  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);
}

void AGCLLVMG17GA0TargetConfig::AGCLLVMG17GA0TargetConfig()
{
  AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateHAL300TargetConfig(AGCTargetArch)::g17g_a0, 65571);
  *(v0 + 60) = 0;
  *(v0 + 49) = 0;
  *v0 = &unk_2825B7580;
  *(v0 + 8) = "agx3-apple-ios";
}

void AGCLLVMG17PA0TargetConfig::~AGCLLVMG17PA0TargetConfig(AGCLLVMG17PA0TargetConfig *this)
{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0, v2, v3);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0, v2, v3);
}

uint64_t AGCLLVMG17PA0TargetLowerer::extractMaxLevel(llvm::ConstantInt **this, llvm::Value *a2, uint64_t a3, BOOL a4)
{
  v6 = llvm::ConstantInt::get();
  v14 = 257;
  v7 = llvm::IRBuilderBase::CreateAnd((this + 1), a2, v6, v13);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 1), v7, v8, v13);
  v10 = this[25];
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast((this + 1), 38, LShr, v10, v12);
}

uint64_t AGCLLVMG17PA0TargetLowerer::extractBaseLevel(llvm::ConstantInt **this, llvm::Value *a2, uint64_t a3, BOOL a4)
{
  v6 = llvm::ConstantInt::get();
  v14 = 257;
  v7 = llvm::IRBuilderBase::CreateAnd((this + 1), a2, v6, v13);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 1), v7, v8, v13);
  v10 = this[25];
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast((this + 1), 38, LShr, v10, v12);
}

uint64_t AGCLLVMG17PA0TargetLowerer::buildImagePackFormatExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v72 = *a2;
  v73 = *(a2 + 16);
  if (v73)
  {
    llvm::MetadataTracking::track();
  }

  v74 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v72);
  if (v73)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v71 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v70);
  v10 = llvm::ConstantInt::get();
  v71 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v70);
  v12 = llvm::ConstantInt::get();
  v69 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v68);
  v14 = *(a1 + 200);
  v67 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v66);
  v16 = llvm::ConstantInt::get();
  v65 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Cast, v16, v64);
  v18 = *(a1 + 200);
  v63 = 257;
  v19 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, ICmp, v18, v62);
  v20 = llvm::ConstantInt::get();
  v71 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v19, v20, v70);
  if ((*(a1 + 1889) & 1) == 0)
  {
    v22 = llvm::ConstantInt::get();
    v71 = 257;
    v23 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v22, v70);
    v24 = llvm::ConstantInt::get();
    v69 = 257;
    v25 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v23, v24, v68);
    v26 = *(a1 + 200);
    v67 = 257;
    v27 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v25, v26, v66);
    v28 = llvm::ConstantInt::get();
    v65 = 257;
    v29 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v27, v28, v64);
    v30 = llvm::ConstantInt::get();
    v71 = 257;
    v31 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v30, v70);
    v32 = llvm::ConstantInt::get();
    v69 = 257;
    v33 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v31, v32, v68);
    v34 = *(a1 + 200);
    v67 = 257;
    v35 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v33, v34, v66);
    v36 = llvm::ConstantInt::get();
    v65 = 257;
    v37 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v35, v36, v64);
    v38 = llvm::ConstantInt::get();
    v71 = 257;
    v39 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v38, v70);
    v40 = llvm::ConstantInt::get();
    v69 = 257;
    v41 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v39, v40, v68);
    v42 = *(a1 + 200);
    v67 = 257;
    v43 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v41, v42, v66);
    v44 = llvm::ConstantInt::get();
    v65 = 257;
    v45 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v43, v44, v64);
    v46 = llvm::ConstantInt::get();
    v71 = 257;
    v47 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v46, v70);
    v48 = llvm::ConstantInt::get();
    v69 = 257;
    v49 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v47, v48, v68);
    v50 = *(a1 + 200);
    v67 = 257;
    v51 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v49, v50, v66);
    v52 = llvm::ConstantInt::get();
    v65 = 257;
    v53 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v51, v52, v64);
    v71 = 257;
    v54 = llvm::IRBuilderBase::CreateOr((a1 + 8), v37, v45, v70);
    v71 = 257;
    v55 = llvm::IRBuilderBase::CreateOr((a1 + 8), v54, v53, v70);
    v70[0] = "is_float16_texture";
    v71 = 259;
    v56 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v29, v55, v70);
    v57 = *(a1 + 200);
    v69 = 257;
    v58 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v56, v57, v68);
    v59 = llvm::ConstantInt::get();
    v71 = 257;
    v60 = llvm::IRBuilderBase::CreateShl((a1 + 8), v58, v59, v70);
    v69 = 257;
    Shl = llvm::IRBuilderBase::CreateOr((a1 + 8), Shl, v60, v68);
  }

  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0, 0);
}

uint64_t AGCLLVMG17PA0TargetLowerer::buildImageSampleCountExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v25 = *a2;
  v26 = *(a2 + 16);
  if (v26)
  {
    llvm::MetadataTracking::track();
  }

  v27 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v25);
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v24 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v23);
  v10 = llvm::ConstantInt::get();
  v24 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v23);
  v12 = llvm::ConstantInt::get();
  v22 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v21);
  v14 = *(a1 + 200);
  v20 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v19);
  v16 = llvm::ConstantInt::get();
  v24 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v16, Cast, v23);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0, 0);
}

uint64_t AGCLLVMG17PA0TargetLowerer::buildImageDimensionsExtract(llvm::ConstantInt **a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v96 = *a2;
  v97 = *(a2 + 16);
  if (v97)
  {
    llvm::MetadataTracking::track();
  }

  v98 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v96);
  if (v97)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = a1[26];
  v95 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v8, a3, 0, v94);
  v10 = a1[26];
  v11 = llvm::ConstantInt::get();
  v95 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v10, a3, v11, v94);
  v93 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  v13 = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v10, GEP, 0, v92);
  v14 = a1[26];
  v15 = llvm::ConstantInt::get();
  v95 = 257;
  v16 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v14, a3, v15, v94);
  v93 = 257;
  llvm::Type::isOpaquePointerTy(*v16);
  v17 = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v14, v16, 0, v92);
  v18 = llvm::ConstantInt::get();
  v95 = 257;
  v19 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v13, v18, v94);
  v20 = llvm::ConstantInt::get();
  v93 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), v19, v20, v92);
  v22 = a1[25];
  v91 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, LShr, v22, v90);
  v24 = llvm::ConstantInt::get();
  v89 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), Cast, v24, v88);
  (*(*a1 + 248))(a1, v17);
  v26 = llvm::ConstantInt::get();
  v95 = 257;
  v27 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v26, v94);
  v28 = llvm::ConstantInt::get();
  v93 = 257;
  v29 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v27, v28, v92);
  v30 = a1[25];
  v91 = 257;
  v31 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v29, v30, v90);
  v32 = llvm::ConstantInt::get();
  v89 = 257;
  llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v31, v32, v88);
  llvm::ConstantInt::get();
  v95 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v34 = llvm::ConstantInt::get();
  v95 = 257;
  v35 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v34, v94);
  v36 = llvm::ConstantInt::get();
  v93 = 257;
  v37 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v35, v36, v92);
  v38 = a1[25];
  v91 = 257;
  v39 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v37, v38, v90);
  v40 = llvm::ConstantInt::get();
  v89 = 257;
  v41 = llvm::IRBuilderBase::CreateAdd((a1 + 1), v39, v40, v88);
  v42 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v41, Select);
  v43 = llvm::ConstantInt::get();
  v95 = 257;
  v44 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v43, v94);
  v45 = llvm::ConstantInt::get();
  v93 = 257;
  v46 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v44, v45, v92);
  v47 = a1[25];
  v91 = 257;
  v48 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v46, v47, v90);
  v49 = llvm::ConstantInt::get();
  v89 = 257;
  v50 = llvm::IRBuilderBase::CreateAdd((a1 + 1), v48, v49, v88);
  v51 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v50, Select);
  v52 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, Add, Select);
  v53 = llvm::ConstantInt::get();
  v95 = 257;
  v54 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v17, v53, v94);
  v55 = llvm::ConstantInt::get();
  v93 = 257;
  v56 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v54, v55, v92);
  v57 = a1[25];
  v91 = 257;
  v58 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v56, v57, v90);
  v59 = llvm::ConstantInt::get();
  v89 = 257;
  llvm::IRBuilderBase::CreateAdd((a1 + 1), v58, v59, v88);
  v60 = llvm::ConstantInt::get();
  v95 = 257;
  v61 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v60, v94);
  v62 = llvm::ConstantInt::get();
  v93 = 257;
  v63 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v61, v62, v92);
  v64 = a1[25];
  v91 = 257;
  v65 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v63, v64, v90);
  v66 = llvm::ConstantInt::get();
  v95 = 257;
  v67 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v66, v94);
  v68 = llvm::ConstantInt::get();
  v93 = 257;
  v69 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v67, v68, v92);
  v70 = a1[25];
  v91 = 257;
  v71 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v69, v70, v90);
  v72 = llvm::ConstantInt::get();
  v95 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v65, v72, v94);
  v74 = llvm::ConstantInt::get();
  v93 = 257;
  v75 = llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v71, v74, v92);
  v91 = 257;
  llvm::IRBuilderBase::CreateAnd((a1 + 1), ICmp, v75, v90);
  v95 = 257;
  v76 = llvm::IRBuilderBase::CreateSelect();
  NullValue = llvm::Constant::getNullValue(a1[42], v77);
  v95 = 257;
  v79 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), NullValue, v42, v79, v94);
  v95 = 257;
  v81 = llvm::ConstantInt::get();
  v82 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), InsertElement, v51, v81, v94);
  v95 = 257;
  v83 = llvm::ConstantInt::get();
  v84 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v82, v52, v83, v94);
  v95 = 257;
  v85 = llvm::ConstantInt::get();
  v86 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v84, v76, v85, v94);
  return llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, v86, a4, 0, 0);
}

void AGCLLVMG17PA0TargetLowerer::~AGCLLVMG17PA0TargetLowerer(AGCLLVMG17PA0TargetLowerer *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2825BA2A8;
  v5 = *(this + 325);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448, a2, a3, a4);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416, v7, v8, v9);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BA2A8;
  v5 = *(this + 325);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448, a2, a3, a4);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416, v7, v8, v9);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));

  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);
}

void AGCLLVMG17PA0TargetConfig::AGCLLVMG17PA0TargetConfig()
{
  AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateHAL200TargetConfig(AGCTargetArch)::g17p_a0, 65570);
  *(v0 + 60) = 0;
  *(v0 + 49) = 0;
  *v0 = &unk_2825B7E78;
  *(v0 + 8) = "agx3-apple-ios";
}

void AGCLLVMG18PA0TargetConfig::~AGCLLVMG18PA0TargetConfig(AGCLLVMG18PA0TargetConfig *this)
{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0, v2, v3);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0, v2, v3);
}

uint64_t AGCLLVMG18PA0TargetLowerer::extractMaxLevel(llvm::ConstantInt **this, llvm::Value *a2, uint64_t a3, BOOL a4)
{
  v6 = llvm::ConstantInt::get();
  v14 = 257;
  v7 = llvm::IRBuilderBase::CreateAnd((this + 1), a2, v6, v13);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 1), v7, v8, v13);
  v10 = this[25];
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast((this + 1), 38, LShr, v10, v12);
}

uint64_t AGCLLVMG18PA0TargetLowerer::extractBaseLevel(llvm::ConstantInt **this, llvm::Value *a2, uint64_t a3, BOOL a4)
{
  v6 = llvm::ConstantInt::get();
  v14 = 257;
  v7 = llvm::IRBuilderBase::CreateAnd((this + 1), a2, v6, v13);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 1), v7, v8, v13);
  v10 = this[25];
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast((this + 1), 38, LShr, v10, v12);
}

uint64_t AGCLLVMG18PA0TargetLowerer::buildTextureOOBReadSWWA(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, int a7, int a8)
{
  v37 = *a2;
  v38 = *(a2 + 16);
  if (v38)
  {
    llvm::MetadataTracking::track();
  }

  v39 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v37);
  if (v38)
  {
    llvm::MetadataTracking::untrack();
  }

  v14 = llvm::ConstantInt::get();
  v15 = a5[21];
  if (v15)
  {
    v16 = llvm::ConstantInt::get();
    v36 = 257;
    ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 34, v15, v16, v35);
    v34 = 257;
    v14 = llvm::IRBuilderBase::CreateOr((a1 + 8), v14, ICmp, v33);
  }

  if (a6)
  {
    v18 = a5[19];
    v19 = llvm::ConstantInt::get();
    v36 = 257;
    v20 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 34, v18, v19, v35);
    v34 = 257;
    v14 = llvm::IRBuilderBase::CreateOr((a1 + 8), v14, v20, v33);
  }

  if (a7)
  {
    v21 = a5[29];
    v22 = llvm::ConstantInt::get();
    v36 = 257;
    v23 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 34, v21, v22, v35);
    v34 = 257;
    v14 = llvm::IRBuilderBase::CreateOr((a1 + 8), v14, v23, v33);
  }

  if (a8)
  {
    v24 = a5[27];
    v25 = llvm::ConstantInt::get();
    v36 = 257;
    v26 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 34, v24, v25, v35);
    v34 = 257;
    llvm::IRBuilderBase::CreateOr((a1 + 8), v14, v26, v33);
  }

  v35[0] = 0x7FFF0000000;
  std::__count_BOOL[abi:nn200100]<true,std::__bitset<1ul,64ul>,true>(v35, 0);
  v27 = a5[17];
  if ((*(*v27 + 8) & 0xFE) == 0x12)
  {
    v36 = 257;
    v28 = llvm::ConstantInt::get();
    llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v27, v28, v35);
    v29 = a5[17];
    llvm::ConstantInt::get();
    v36 = 257;
    Select = llvm::IRBuilderBase::CreateSelect();
    v34 = 257;
    v31 = llvm::ConstantInt::get();
    result = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v29, Select, v31, v33);
  }

  else
  {
    llvm::ConstantInt::get();
    v36 = 257;
    result = llvm::IRBuilderBase::CreateSelect();
  }

  a5[17] = result;
  return result;
}

uint64_t AGCLLVMG18PA0TargetLowerer::buildImagePackFormatExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v72 = *a2;
  v73 = *(a2 + 16);
  if (v73)
  {
    llvm::MetadataTracking::track();
  }

  v74 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v72);
  if (v73)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v71 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v70);
  v10 = llvm::ConstantInt::get();
  v71 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v70);
  v12 = llvm::ConstantInt::get();
  v69 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v68);
  v14 = *(a1 + 200);
  v67 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v66);
  v16 = llvm::ConstantInt::get();
  v65 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Cast, v16, v64);
  v18 = *(a1 + 200);
  v63 = 257;
  v19 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, ICmp, v18, v62);
  v20 = llvm::ConstantInt::get();
  v71 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v19, v20, v70);
  if ((*(a1 + 1889) & 1) == 0)
  {
    v22 = llvm::ConstantInt::get();
    v71 = 257;
    v23 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v22, v70);
    v24 = llvm::ConstantInt::get();
    v69 = 257;
    v25 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v23, v24, v68);
    v26 = *(a1 + 200);
    v67 = 257;
    v27 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v25, v26, v66);
    v28 = llvm::ConstantInt::get();
    v65 = 257;
    v29 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v27, v28, v64);
    v30 = llvm::ConstantInt::get();
    v71 = 257;
    v31 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v30, v70);
    v32 = llvm::ConstantInt::get();
    v69 = 257;
    v33 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v31, v32, v68);
    v34 = *(a1 + 200);
    v67 = 257;
    v35 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v33, v34, v66);
    v36 = llvm::ConstantInt::get();
    v65 = 257;
    v37 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v35, v36, v64);
    v38 = llvm::ConstantInt::get();
    v71 = 257;
    v39 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v38, v70);
    v40 = llvm::ConstantInt::get();
    v69 = 257;
    v41 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v39, v40, v68);
    v42 = *(a1 + 200);
    v67 = 257;
    v43 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v41, v42, v66);
    v44 = llvm::ConstantInt::get();
    v65 = 257;
    v45 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v43, v44, v64);
    v46 = llvm::ConstantInt::get();
    v71 = 257;
    v47 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v46, v70);
    v48 = llvm::ConstantInt::get();
    v69 = 257;
    v49 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v47, v48, v68);
    v50 = *(a1 + 200);
    v67 = 257;
    v51 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v49, v50, v66);
    v52 = llvm::ConstantInt::get();
    v65 = 257;
    v53 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v51, v52, v64);
    v71 = 257;
    v54 = llvm::IRBuilderBase::CreateOr((a1 + 8), v37, v45, v70);
    v71 = 257;
    v55 = llvm::IRBuilderBase::CreateOr((a1 + 8), v54, v53, v70);
    v70[0] = "is_float16_texture";
    v71 = 259;
    v56 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v29, v55, v70);
    v57 = *(a1 + 200);
    v69 = 257;
    v58 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v56, v57, v68);
    v59 = llvm::ConstantInt::get();
    v71 = 257;
    v60 = llvm::IRBuilderBase::CreateShl((a1 + 8), v58, v59, v70);
    v69 = 257;
    Shl = llvm::IRBuilderBase::CreateOr((a1 + 8), Shl, v60, v68);
  }

  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0, 0);
}

uint64_t AGCLLVMG18PA0TargetLowerer::buildImageSampleCountExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v25 = *a2;
  v26 = *(a2 + 16);
  if (v26)
  {
    llvm::MetadataTracking::track();
  }

  v27 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v25);
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v24 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v23);
  v10 = llvm::ConstantInt::get();
  v24 = 257;
  v11 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v10, v23);
  v12 = llvm::ConstantInt::get();
  v22 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v11, v12, v21);
  v14 = *(a1 + 200);
  v20 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v14, v19);
  v16 = llvm::ConstantInt::get();
  v24 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v16, Cast, v23);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0, 0);
}

uint64_t AGCLLVMG18PA0TargetLowerer::buildImageDimensionsExtract(llvm::ConstantInt **a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v96 = *a2;
  v97 = *(a2 + 16);
  if (v97)
  {
    llvm::MetadataTracking::track();
  }

  v98 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v96);
  if (v97)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = a1[26];
  v95 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v8, a3, 0, v94);
  v10 = a1[26];
  v11 = llvm::ConstantInt::get();
  v95 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v10, a3, v11, v94);
  v93 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  v13 = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v10, GEP, 0, v92);
  v14 = a1[26];
  v15 = llvm::ConstantInt::get();
  v95 = 257;
  v16 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v14, a3, v15, v94);
  v93 = 257;
  llvm::Type::isOpaquePointerTy(*v16);
  v17 = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v14, v16, 0, v92);
  v18 = llvm::ConstantInt::get();
  v95 = 257;
  v19 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v13, v18, v94);
  v20 = llvm::ConstantInt::get();
  v93 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), v19, v20, v92);
  v22 = a1[25];
  v91 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, LShr, v22, v90);
  v24 = llvm::ConstantInt::get();
  v89 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), Cast, v24, v88);
  (*(*a1 + 248))(a1, v17);
  v26 = llvm::ConstantInt::get();
  v95 = 257;
  v27 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v26, v94);
  v28 = llvm::ConstantInt::get();
  v93 = 257;
  v29 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v27, v28, v92);
  v30 = a1[25];
  v91 = 257;
  v31 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v29, v30, v90);
  v32 = llvm::ConstantInt::get();
  v89 = 257;
  llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v31, v32, v88);
  llvm::ConstantInt::get();
  v95 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v34 = llvm::ConstantInt::get();
  v95 = 257;
  v35 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v34, v94);
  v36 = llvm::ConstantInt::get();
  v93 = 257;
  v37 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v35, v36, v92);
  v38 = a1[25];
  v91 = 257;
  v39 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v37, v38, v90);
  v40 = llvm::ConstantInt::get();
  v89 = 257;
  v41 = llvm::IRBuilderBase::CreateAdd((a1 + 1), v39, v40, v88);
  v42 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v41, Select);
  v43 = llvm::ConstantInt::get();
  v95 = 257;
  v44 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v43, v94);
  v45 = llvm::ConstantInt::get();
  v93 = 257;
  v46 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v44, v45, v92);
  v47 = a1[25];
  v91 = 257;
  v48 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v46, v47, v90);
  v49 = llvm::ConstantInt::get();
  v89 = 257;
  v50 = llvm::IRBuilderBase::CreateAdd((a1 + 1), v48, v49, v88);
  v51 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v50, Select);
  v52 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, Add, Select);
  v53 = llvm::ConstantInt::get();
  v95 = 257;
  v54 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v17, v53, v94);
  v55 = llvm::ConstantInt::get();
  v93 = 257;
  v56 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v54, v55, v92);
  v57 = a1[25];
  v91 = 257;
  v58 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v56, v57, v90);
  v59 = llvm::ConstantInt::get();
  v89 = 257;
  llvm::IRBuilderBase::CreateAdd((a1 + 1), v58, v59, v88);
  v60 = llvm::ConstantInt::get();
  v95 = 257;
  v61 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v60, v94);
  v62 = llvm::ConstantInt::get();
  v93 = 257;
  v63 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v61, v62, v92);
  v64 = a1[25];
  v91 = 257;
  v65 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v63, v64, v90);
  v66 = llvm::ConstantInt::get();
  v95 = 257;
  v67 = llvm::IRBuilderBase::CreateAnd((a1 + 1), AlignedLoad, v66, v94);
  v68 = llvm::ConstantInt::get();
  v93 = 257;
  v69 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v67, v68, v92);
  v70 = a1[25];
  v91 = 257;
  v71 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v69, v70, v90);
  v72 = llvm::ConstantInt::get();
  v95 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v65, v72, v94);
  v74 = llvm::ConstantInt::get();
  v93 = 257;
  v75 = llvm::IRBuilderBase::CreateICmp(a1 + 1, 32, v71, v74, v92);
  v91 = 257;
  llvm::IRBuilderBase::CreateAnd((a1 + 1), ICmp, v75, v90);
  v95 = 257;
  v76 = llvm::IRBuilderBase::CreateSelect();
  NullValue = llvm::Constant::getNullValue(a1[42], v77);
  v95 = 257;
  v79 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), NullValue, v42, v79, v94);
  v95 = 257;
  v81 = llvm::ConstantInt::get();
  v82 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), InsertElement, v51, v81, v94);
  v95 = 257;
  v83 = llvm::ConstantInt::get();
  v84 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v82, v52, v83, v94);
  v95 = 257;
  v85 = llvm::ConstantInt::get();
  v86 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), v84, v76, v85, v94);
  return llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, v86, a4, 0, 0);
}

void AGCLLVMG18PA0TargetLowerer::~AGCLLVMG18PA0TargetLowerer(AGCLLVMG18PA0TargetLowerer *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2825BA2A8;
  v5 = *(this + 325);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448, a2, a3, a4);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416, v7, v8, v9);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BA2A8;
  v5 = *(this + 325);
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448, a2, a3, a4);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416, v7, v8, v9);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));

  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);
}

void AGCLLVMG18PA0TargetConfig::AGCLLVMG18PA0TargetConfig()
{
  AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateHAL300TargetConfig(AGCTargetArch)::g18p_a0, 65574);
  *(v0 + 60) = 0;
  *(v0 + 49) = 0;
  *v0 = &unk_2825B8770;
  *(v0 + 8) = "agx3-apple-ios";
}

uint64_t AGCBindPointLayoutT<AGX::BindPointLayout<31,31,4,64,31,31,false>>::getComputeMaxAPIBindPointsBuffer(uint64_t a1, int a2)
{
  if (a2)
  {
    return 35;
  }

  else
  {
    return 31;
  }
}

uint64_t AGCBindPointLayoutT<AGX::BindPointLayout<31,31,4,64,31,31,false>>::getRenderMaxAPIBindPointsBuffer(uint64_t a1, int a2)
{
  if (a2)
  {
    return 35;
  }

  else
  {
    return 31;
  }
}

uint64_t AGCLLVMGen2TargetLowerer::buildWriteImageBlock(uint64_t a1, uint64_t a2)
{
  v66[16] = *MEMORY[0x277D85DE8];
  memset(&v61, 0, sizeof(v61));
  v65[0] = v66;
  v65[1] = 0x1000000000;
  v62 = v64;
  v63 = 0x1000000000;
  if (*a2 == 8)
  {
    MEMORY[0x20F331AA0](&v61, *(a1 + 2064));
    v4 = llvm::PointerType::get();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v65, v4);
    v5 = *(a2 + 104);
    v6 = llvm::PointerType::get();
    v60 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v5, v6, &TypeAllocSize);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v62, Cast);
    v8 = llvm::PointerType::get();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v65, v8);
    v9 = *(a2 + 56);
    v10 = llvm::PointerType::get();
    v60 = 257;
    v11 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v9, v10, &TypeAllocSize);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v62, v11);
    v12 = llvm::PointerType::get();
    v13 = llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v65, v12);
    v14 = *(a2 + 32);
    if (v14)
    {
      if (!*(a1 + 1900) && (AGCLLVMObject::useTextureIDLegacyMode(v13) & 1) == 0)
      {
        TypeAllocSize = llvm::DataLayout::getTypeAllocSize((a1 + 472), *(a1 + 1784));
        v59 = v15;
        llvm::TypeSize::operator unsigned long long();
        v16 = llvm::ConstantInt::get();
        v17 = *(a1 + 200);
        v60 = 257;
        v18 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v14, v17, &TypeAllocSize);
        TypeAllocSize = "agx2_tex_heap_byte_offset";
        v60 = 259;
        Mul = llvm::IRBuilderBase::CreateMul((a1 + 8), v18, v16, &TypeAllocSize);
        v60 = 257;
        v14 = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, Mul, v12, &TypeAllocSize);
      }

      v20 = v14;
    }

    else
    {
      v41 = llvm::ConstantInt::get();
      v60 = 257;
      v20 = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, v41, v12, &TypeAllocSize);
    }

    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v62, v20);
    v42 = *(a2 + 4);
    if (v42 == 3)
    {
      std::string::append(&v61, ".3d");
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v65, *(a1 + 328));
      v45 = AGCLLVMBuilder::truncateToSmall(a1, *(a2 + 136), *(a1 + 192));
      v44 = AGCLLVMBuilder::extendVector(a1, v45, 4, v46);
    }

    else
    {
      if (v42 != 1)
      {
        goto LABEL_24;
      }

      std::string::append(&v61, ".2d");
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v65, *(a1 + 240));
      v43 = AGCLLVMBuilder::truncateToSmall(a1, *(a2 + 136), *(a1 + 192));
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v62, v43);
      if (!*(a2 + 152))
      {
        goto LABEL_24;
      }

      std::string::append(&v61, ".array");
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v65, *(a1 + 192));
      v44 = AGCLLVMBuilder::truncateToSmall(a1, *(a2 + 152), *(a1 + 192));
    }

    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v62, v44);
LABEL_24:
    if (*(a2 + 168))
    {
      std::string::append(&v61, ".lod");
    }

    v47 = *(a2 + 8);
    if (v47 <= 7 && ((1 << v47) & 0x89) != 0)
    {
      v48 = ".32";
    }

    else
    {
      v48 = ".16";
    }

    std::string::append(&v61, v48);
    if (*(a2 + 168))
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v65, *(a1 + 192));
      v49 = *(a2 + 168);
      v50 = *(a1 + 192);
      v60 = 257;
      v51 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v49, v50, &TypeAllocSize);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v62, v51);
    }

    goto LABEL_32;
  }

  v21 = (*(a2 + 8) > 7u) | (0x76u >> *(a2 + 8));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v65, *(a1 + 192));
  v22 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v62, v22);
  if (*a2 == 7)
  {
    MEMORY[0x20F331AA0](&v61, *(a1 + 2080));
  }

  else
  {
    MEMORY[0x20F331AA0](&v61, *(a1 + 2072));
  }

  if (v21)
  {
    v23 = ".4xh";
  }

  else
  {
    v23 = ".4xf";
  }

  std::string::append(&v61, v23);
  v24 = llvm::PointerType::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v65, v24);
  v25 = *(a2 + 104);
  v26 = llvm::PointerType::get();
  v60 = 257;
  v27 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v25, v26, &TypeAllocSize);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v62, v27);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v65, *(a1 + 240));
  v28 = AGCLLVMBuilder::truncateToSmall(a1, *(a2 + 136), *(a1 + 240));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v62, v28);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v65, *(a1 + 192));
  v29 = *(a2 + 144);
  v60 = 257;
  v30 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v29, v30, &TypeAllocSize);
  v32 = AGCLLVMBuilder::truncateToSmall(a1, Element, *(a1 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v62, v32);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v65, *(a1 + 192));
  v33 = *(a2 + 144);
  v60 = 257;
  v34 = llvm::ConstantInt::get();
  v35 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v33, v34, &TypeAllocSize);
  v36 = AGCLLVMBuilder::truncateToSmall(a1, v35, *(a1 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v62, v36);
  if (*a2 == 7)
  {
    v37 = 168;
    if (v21)
    {
      v37 = 152;
    }

    v38 = *(a1 + v37);
    v39 = llvm::FixedVectorType::get();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v65, v39);
    v40 = AGCLLVMBuilder::bitCastElements(a1, *(a2 + 224), v38);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v62, v40);
  }

LABEL_32:
  llvm::FunctionType::get();
  if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v52 = &v61;
LABEL_35:
    strlen(v52);
    goto LABEL_36;
  }

  v52 = v61.__r_.__value_.__r.__words[0];
  if (v61.__r_.__value_.__r.__words[0])
  {
    goto LABEL_35;
  }

LABEL_36:
  llvm::Module::getOrInsertFunction();
  v60 = 257;
  v54 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v53 + 24), v53, v62, v63, &TypeAllocSize);
  if (*a2 != 6)
  {
    goto LABEL_46;
  }

  v55 = *(a2 + 8);
  if (v55 > 6)
  {
    if (v55 != 7)
    {
      if (v55 != 8)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    }

LABEL_44:
    v56 = *(a1 + 336);
    goto LABEL_45;
  }

  if (v55 == 3)
  {
    goto LABEL_44;
  }

  if (v55 == 4)
  {
LABEL_43:
    v56 = *(a1 + 328);
LABEL_45:
    v60 = 257;
    v54 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v54, v56, &TypeAllocSize);
  }

LABEL_46:
  if (v62 != v64)
  {
    free(v62);
  }

  if (v65[0] != v66)
  {
    free(v65[0]);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  return v54;
}

llvm::Value *AGCLLVMGen2TargetLowerer::buildGammaSpaceConversion(uint64_t a1, uint64_t a2, llvm::ConstantFP **a3, uint64_t a4, uint64_t a5)
{
  v44 = *MEMORY[0x277D85DE8];
  v32 = *a2;
  v33 = *(a2 + 16);
  if (v33)
  {
    llvm::MetadataTracking::track();
  }

  v34 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v32);
  if (v33)
  {
    llvm::MetadataTracking::untrack();
  }

  v29 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v30, (a1 + 8));
  v31 = *(a1 + 104);
  v9 = AGCLLVMTargetLowerer::buildClampColor(a1, &v29, a3, a5, 0);
  if (v30)
  {
    llvm::MetadataTracking::untrack();
  }

  v26 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v27, (a1 + 8));
  v10 = *(a1 + 104);
  v28 = v10;
  v35 = v26;
  v36 = v27;
  if (v27)
  {
    llvm::MetadataTracking::track();
    v10 = v28;
  }

  v37 = v10;
  AGCLLVMTargetLowerer::SetIP(a1, &v35);
  if (v36)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*v9 == *(a1 + 312) || *v9 == *(a1 + 296))
  {
    v11 = AGCLLVMBuilder::subrangeVector(a1, v9, 0, 3, 1);
    v41 = 257;
    v12 = llvm::ConstantInt::get();
    Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v9, v12, &v38);
    v14 = Element;
    v15 = *(a1 + 184);
    if ((*(*v11 + 8) & 0xFE) == 0x12)
    {
      v25 = Element;
      *v42 = 0u;
      v43 = 0u;
      AGCLLVMBuilder::unboxVector(a1, v11, v42);
      v16 = *(*v11 + 32);
      if (v16)
      {
        v17 = 0;
        InsertElement = 0;
        do
        {
          v19 = v42[v17];
          v38 = *(a1 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v39, (a1 + 8));
          v40 = *(a1 + 104);
          v20 = (*(*a1 + 144))(a1, &v38, v19, 0, v15);
          if (v39)
          {
            llvm::MetadataTracking::untrack();
          }

          if (!InsertElement)
          {
            llvm::FixedVectorType::get();
            InsertElement = llvm::UndefValue::get();
          }

          v41 = 257;
          v21 = llvm::ConstantInt::get();
          InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v20, v21, &v38);
          ++v17;
        }

        while (v16 != v17);
      }

      else
      {
        InsertElement = 0;
      }

      v14 = v25;
    }

    else
    {
      v38 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v39, (a1 + 8));
      v40 = *(a1 + 104);
      InsertElement = (*(*a1 + 144))(a1, &v38, v11, 0, v15);
      if (v39)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    v38 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v39, (a1 + 8));
    v40 = *(a1 + 104);
    v23 = (*(*a1 + 88))(a1, &v38, v14, 8, 0, 1);
    if (v39)
    {
      llvm::MetadataTracking::untrack();
    }

    v9 = AGCLLVMBuilder::combineRGBA(a1, InsertElement, v23, v22);
  }

  if (v27)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMGen2TargetLowerer::setLoadStoreCacheControl(uint64_t a1, uint64_t a2, int a3, int a4)
{
  llvm::Function::addFnAttr();
  llvm::Function::addFnAttr();
  llvm::Function::addFnAttr();

  return llvm::Function::addFnAttr();
}

uint64_t AGCLLVMGen2TargetLowerer::bypassL1ForStoresForVertexDataDependencies(AGCLLVMGen2TargetLowerer *this, llvm::Function *a2)
{
  llvm::Function::addFnAttr();

  return llvm::Function::addFnAttr();
}

llvm::Value *AGCLLVMGen2TargetLowerer::buildInterpolate(uint64_t a1, uint64_t a2, _BOOL4 a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29[4] = *MEMORY[0x277D85DE8];
  v22 = *a2;
  v23 = *(a2 + 16);
  if (v23)
  {
    llvm::MetadataTracking::track();
  }

  v24 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v22);
  if (v23)
  {
    llvm::MetadataTracking::untrack();
  }

  v13 = a3 - 1;
  if (!a3)
  {
    llvm::FixedVectorType::get();
  }

  v14 = llvm::PointerType::get();
  v28[0] = v29;
  v28[1] = 0x400000000;
  v25 = v27;
  v26 = 0x400000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v28, v14);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v25, a5);
  if (a7)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v28, v14);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v25, a7);
    v15 = 2248;
  }

  else
  {
    v15 = 2152;
  }

  v16 = a1 + v15 + 32 * a4;
  if (*(v16 + 8 * v13))
  {
    strlen(*(v16 + 8 * v13));
  }

  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v21 = 257;
  v18 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v17 + 24), v17, v25, v26, v20);
  if ((a3 ^ v13) <= v13)
  {
    v18 = AGCLLVMBuilder::subrangeVector(a1, v18, 0, a3, 1);
  }

  if (v25 != v27)
  {
    free(v25);
  }

  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  return v18;
}

uint64_t AGCLLVMGen2TargetLowerer::buildLocalID(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v18, "llvm.agx1.local.", "");
  llvm::SmallVectorTemplateBase<char,true>::push_back(&v18, aXyz[a4]);
  v15 = *a2;
  v16 = *(a2 + 16);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, v18, v19, *(a1 + 192));
  v14 = 257;
  v9 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(inserted + 24), inserted, 0, 0, v13);
  v12[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v9, a3, v12);
  if (v18 != v20)
  {
    free(v18);
  }

  return Cast;
}

uint64_t AGCLLVMGen2TargetLowerer::buildCopyOffChipMRTPixelData@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v13 = *a2;
  v14 = *(a2 + 2);
  if (v14)
  {
    llvm::MetadataTracking::track();
  }

  v15 = *(a2 + 6);
  v10 = *(a4 + 4 * a3);
  v11 = llvm::ConstantInt::get();
  result = AGCLLVMGen2TargetLowerer::buildCopyOffChipMRTPixelDataStateless(a1, &v13, BYTE2(v10), v11);
  if (v14)
  {
    result = llvm::MetadataTracking::untrack();
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 24) = 0;
  *(a5 + 16) = 0;
  return result;
}

llvm::Instruction *AGCLLVMGen2TargetLowerer::buildCopyOffChipMRTPixelDataStateless(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v14 = *a2;
  v15 = *(a2 + 16);
  if (v15)
  {
    llvm::MetadataTracking::track();
  }

  v16 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v14);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 1776);
  if (v8)
  {
    v9 = strlen(*(a1 + 1776));
  }

  else
  {
    v9 = 0;
  }

  v10 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v8, v9, *(a1 + 144), *(a1 + 192), *(a1 + 192));
  v17[0] = a4;
  (*(*a1 + 536))(a1, a3);
  v17[1] = llvm::ConstantInt::get();
  v13 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v10 + 24), v10, v17, 2, v12);
}

llvm::Instruction *AGCLLVMGen2TargetLowerer::buildEmitpix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned __int16 a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30 = *MEMORY[0x277D85DE8];
  v21 = *a2;
  v22 = *(a2 + 16);
  if (v22)
  {
    llvm::MetadataTracking::track();
  }

  v23 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v21);
  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(a1 + 1992))
  {
    strlen(*(a1 + 1992));
  }

  v13 = *(a1 + 192);
  v14 = llvm::PointerType::get();
  v15 = *(a1 + 192);
  __src[0] = v13;
  __src[1] = v14;
  __src[2] = v15;
  __src[3] = v15;
  v25 = v15;
  Cast = v28;
  v27 = 0x500000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&Cast, __src, &Cast);
  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v17 = v16;
  if (Cast != v28)
  {
    free(Cast);
  }

  v18 = *(a1 + 192);
  LOWORD(v29) = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, a9, v18, &Cast);
  v19 = llvm::PointerType::get();
  LOWORD(v25) = 257;
  v27 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a3, v19, __src);
  (*(*a1 + 536))(a1, a8);
  v28[0] = llvm::ConstantInt::get();
  v28[1] = llvm::ConstantInt::get();
  v29 = llvm::ConstantInt::get();
  LOWORD(v25) = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v17 + 24), v17, &Cast, 5, __src);
}

llvm::Instruction *AGCLLVMGen2TargetLowerer::buildReadOutputRegister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v14 = *a2;
  v15 = *(a2 + 16);
  if (v15)
  {
    llvm::MetadataTracking::track();
  }

  v16 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v14);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 1632);
  if (v8)
  {
    v9 = strlen(*(a1 + 1632));
  }

  else
  {
    v9 = 0;
  }

  v10 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v8, v9, *(a1 + 200), *(a1 + 192), *(a1 + 192));
  v17[0] = a3;
  v17[1] = a4;
  v13 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v10 + 24), v10, v17, 2, v12);
}

llvm::Instruction *AGCLLVMGen2TargetLowerer::buildWriteOutputRegister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v16 = *a2;
  v17 = *(a2 + 16);
  if (v17)
  {
    llvm::MetadataTracking::track();
  }

  v18 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v16);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = *(a1 + 1640);
  if (v10)
  {
    v11 = strlen(*(a1 + 1640));
  }

  else
  {
    v11 = 0;
  }

  v12 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(a1, v10, v11, *(a1 + 144), *(a1 + 192), *(a1 + 200), *(a1 + 192));
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v15 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v12 + 24), v12, v19, 3, v14);
}

llvm::Instruction *AGCLLVMGen2TargetLowerer::buildGExp(uint64_t a1, uint64_t a2, llvm::Type **a3, int a4, uint64_t a5)
{
  v23 = *a2;
  v24 = *(a2 + 16);
  if (v24)
  {
    llvm::MetadataTracking::track();
  }

  v25 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v23);
  if (v24)
  {
    llvm::MetadataTracking::untrack();
  }

  if (a4)
  {
    v10 = 2144;
    v11 = 2136;
  }

  else
  {
    v10 = 2112;
    v11 = 2104;
  }

  if (*(a1 + 168) == a5)
  {
    v10 = v11;
  }

  v12 = *(a1 + v10);
  if (v12)
  {
    v13 = strlen(*(a1 + v10));
  }

  else
  {
    v13 = 0;
  }

  v14 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, v12, v13, a5, *(a1 + 192));
  v15 = *(a1 + 192);
  v21 = 257;
  IntCast = llvm::IRBuilderBase::CreateIntCast((a1 + 8), a3, v15, 0, v20, v16);
  v19 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v14 + 24), v14, &IntCast, 1, v18);
}

llvm::Value *AGCLLVMGen2TargetLowerer::buildGCmp(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, llvm::Type *a5)
{
  v29 = a3;
  v26 = *a2;
  v27 = *(a2 + 16);
  if (v27)
  {
    llvm::MetadataTracking::track();
  }

  v28 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v26);
  if (v27)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = *a3;
  v11 = *(a1 + 168);
  v12 = 192;
  if (v10 == v11)
  {
    v12 = 200;
  }

  v13 = *(a1 + v12);
  v14 = v10 == v11;
  if (a4)
  {
    v15 = 2128;
    v16 = 2120;
  }

  else
  {
    v15 = 2096;
    v16 = 2088;
  }

  if (v14)
  {
    v15 = v16;
  }

  v17 = *(a1 + v15);
  if (v17)
  {
    v18 = strlen(*(a1 + v15));
  }

  else
  {
    v18 = 0;
  }

  v19 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, v17, v18, v13, v10);
  v25 = 257;
  v20 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v19 + 24), v19, &v29, 1, v24);
  v23[16] = 257;
  return llvm::IRBuilderBase::CreateIntCast((a1 + 8), v20, a5, 0, v23, v21);
}

llvm::Value *AGCLLVMGen2TargetLowerer::buildForceF16Precision(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v15 = *a2;
  v16 = *(a2 + 16);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 2032);
  if (v6)
  {
    v7 = strlen(*(a1 + 2032));
  }

  else
  {
    v7 = 0;
  }

  v8 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v6, v7, *(a1 + 192), *(a1 + 168), *(a1 + 192));
  v18[0] = a3;
  v18[1] = llvm::ConstantInt::get();
  v14 = 257;
  v9 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v8 + 24), v8, v18, 2, v13);
  v10 = *(a1 + 152);
  v14 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v9, v10, v13);
  return AGCLLVMBuilder::f32Extend(a1, Cast, 1);
}

llvm::Value *AGCLLVMGen2TargetLowerer::buildPackNorm(uint64_t *a1, uint64_t a2, llvm::Value *a3, int a4, int a5)
{
  v37 = *a2;
  v38 = *(a2 + 16);
  if (v38)
  {
    llvm::MetadataTracking::track();
  }

  v39 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v37);
  if (v38)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = AGCLLVMBuilder::f32Extend(a1, a3, 1);
  v40 = v10;
  if (a4 == 16)
  {
    v11 = a5 == 0;
    v12 = 2024;
    v13 = 2016;
  }

  else
  {
    if (a4 != 8)
    {
      v14 = 0;
      goto LABEL_14;
    }

    v11 = a5 == 0;
    v12 = 2008;
    v13 = 2000;
  }

  if (!v11)
  {
    v12 = v13;
  }

  v14 = *(a1 + v12);
  if (v14)
  {
    v15 = strlen(*(a1 + v12));
    goto LABEL_15;
  }

LABEL_14:
  v15 = 0;
LABEL_15:
  v16 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, v14, v15, a1[24], a1[21]);
  v17 = v16;
  v18 = 24;
  if (a4 == 8)
  {
    v18 = 23;
  }

  v19 = a1[v18];
  if ((*(*v10 + 8) & 0xFE) == 0x12 && (v20 = *(*v10 + 32), v20 != 1))
  {
    llvm::FixedVectorType::get();
    InsertElement = llvm::UndefValue::get();
    if (v20)
    {
      for (i = 0; i != v20; ++i)
      {
        v36 = 257;
        v28 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v10, v28, v35);
        v34 = 257;
        v29 = llvm::IRBuilderBase::CreateCall(a1 + 1, *(v17 + 24), v17, &Element, 1, v33);
        v36 = 257;
        v30 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), InsertElement, v29, v30, v35);
      }
    }

    v25 = llvm::FixedVectorType::get();
    v36 = 257;
    v23 = (a1 + 1);
    v24 = v35;
    v21 = InsertElement;
  }

  else
  {
    v36 = 257;
    v21 = llvm::IRBuilderBase::CreateCall(a1 + 1, *(v16 + 24), v16, &v40, 1, v35);
    v34 = 257;
    v23 = (a1 + 1);
    v24 = v33;
    v25 = v19;
  }

  return llvm::IRBuilderBase::CreateIntCast(v23, v21, v25, 0, v24, v22);
}

llvm::Instruction *AGCLLVMGen2TargetLowerer::buildCoverageMask(uint64_t a1, uint64_t a2, llvm::Value *a3, unsigned int a4)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v18);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  v21 = AGCLLVMBuilder::f32Extend(a1, a3, 1);
  if (a4 > 1)
  {
    v9 = *(a1 + 2008);
    if (v9)
    {
      v10 = strlen(*(a1 + 2008));
    }

    else
    {
      v10 = 0;
    }

    v11 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, v9, v10, *(a1 + 192), *(a1 + 168));
    v17 = 257;
    v12 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v11 + 24), v11, &v21, 1, v16);
    v13 = *(a1 + 2344);
    if (v13)
    {
      v14 = strlen(*(a1 + 2344));
    }

    else
    {
      v14 = 0;
    }

    v15 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v13, v14, *(a1 + 200), *(a1 + 192), *(a1 + 192));
    v22[0] = llvm::ConstantInt::get();
    v22[1] = v12;
    v17 = 257;
    return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v15 + 24), v15, v22, 2, v16);
  }

  else
  {
    llvm::ConstantFP::get();
    llvm::IRBuilderBase::CreateFCmpHelper();
    llvm::ConstantInt::get();
    llvm::ConstantInt::get();
    v17 = 257;
    return llvm::IRBuilderBase::CreateSelect();
  }
}

uint64_t AGCLLVMGen2TargetLowerer::buildAlphaTest(uint64_t (***a1)(llvm::ConstantInt **, __int128 *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned __int16 a6)
{
  v14 = *a2;
  v15 = *(a2 + 16);
  if (v15)
  {
    llvm::MetadataTracking::track();
  }

  v16 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v14);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::ConstantInt::get();
  llvm::ConstantInt::get();
  v13 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v10 = *a2;
  v11 = *(a2 + 16);
  if (v11)
  {
    llvm::MetadataTracking::track();
  }

  v12 = *(a2 + 24);
  result = (*a1)[78](a1, &v10, Select);
  if (v11)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

void AGCLLVMGen2TargetLowerer::~AGCLLVMGen2TargetLowerer(AGCLLVMGen2TargetLowerer *this)
{
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

void AGCLLVMGen3TargetConfig::createComputeControlFlowPredicateShader(uint64_t a1, uint64_t *a2, uint64_t a3, char *a4)
{
  {
    AGCLLVMDriverComputeControlFlowPredicateShaderGen3::create(AGCLLVMCtx &,llvm::LLVMContext &,unsigned int,BOOL,BOOL)::computeCS = 0;
    *algn_27C8D98D8 = 0;
    qword_27C8D98E0 = 0;
  }

  ComputeControlFlowBitcodeFileName = getComputeControlFlowBitcodeFileName(a2[4]);
  v7 = ComputeControlFlowBitcodeFileName;
  if (ComputeControlFlowBitcodeFileName)
  {
    v8 = strlen(ComputeControlFlowBitcodeFileName);
  }

  else
  {
    v8 = 0;
  }

  AGCLLVMObject::readBitcode(a3, v7, v8, 1);
  operator new();
}

void AGCLLVMGen3TargetConfig::createComputeProgressMarkerShader(AGCLLVMGen3TargetConfig *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  {
    {
      AGCLLVMDriverComputeProgressMarkerShaderGen3::create(AGCLLVMCtx &,llvm::LLVMContext &)::computeCS = 0;
      *algn_27C8D98B8 = 0;
      qword_27C8D98C0 = 0;
    }
  }

  AGCLLVMObject::readBitcode(a3, "progress_marker_compute", 23, 0);
  operator new();
}

char *AGCLLVMGen3TargetConfig::createExecuteIndirectCDMRangeExecutionShader(AGCLLVMGen3TargetConfig *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  v32[3] = *MEMORY[0x277D85DE8];
  memset(&__p, 0, sizeof(__p));
  v5 = *(*(a2 + 4) + 28);
  if (v5 > 24)
  {
    if (v5 > 31)
    {
      if (v5 > 34)
      {
        if (v5 == 35 || v5 == 38)
        {
          v6 = "cei_range_exec_gen6_hal300";
          goto LABEL_43;
        }
      }

      else if (v5 == 32 || v5 == 34)
      {
        v6 = "cei_range_exec_gen6_hal200";
        goto LABEL_43;
      }

      return 0;
    }

    if ((v5 - 25) >= 3)
    {
      if (v5 == 31)
      {
        std::string::basic_string[abi:nn200100]<0>(v23, "cei_range_exec_gen6_g16p");
        v7 = *(*(a2 + 4) + 24);
        v27[0] = 1;
        std::string::basic_string[abi:nn200100]<0>(v28, "a0");
        v29 = 3;
        std::string::basic_string[abi:nn200100]<0>(v30, "b0");
        v31 = 4;
        std::string::basic_string[abi:nn200100]<0>(v32, "b0");
        v8 = 0;
        v21 = 0;
        v22 = 0;
        v20 = &v21;
        do
        {
          std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v20, &v21, v27[v8], &v27[v8]);
          v8 += 8;
        }

        while (v8 != 24);
        getFullBitcodePath(&v25, v23, v7, &v20);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v25;
        std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v21);
        for (i = 0; i != -12; i -= 4)
        {
          if (SHIBYTE(v32[i + 2]) < 0)
          {
            operator delete(v32[i]);
          }
        }

        goto LABEL_61;
      }

      return 0;
    }

LABEL_23:
    v6 = "cei_range_exec_gen4";
    goto LABEL_43;
  }

  if (v5 <= 18)
  {
    if ((v5 - 17) < 2)
    {
      v6 = "cei_range_exec_gen5";
      goto LABEL_43;
    }

    if (v5 != 14 && v5 != 16)
    {
      return 0;
    }

    goto LABEL_23;
  }

  if ((v5 - 19) < 3)
  {
    v6 = "cei_range_exec_gen5x";
LABEL_43:
    MEMORY[0x20F331AA0](&__p, v6);
    goto LABEL_44;
  }

  if (v5 == 22)
  {
    std::string::basic_string[abi:nn200100]<0>(v23, "cei_range_exec_gen6_g15p");
    v17 = *(*(a2 + 4) + 24);
    v27[0] = 1;
    std::string::basic_string[abi:nn200100]<0>(v28, "a0");
    v29 = 3;
    std::string::basic_string[abi:nn200100]<0>(v30, "b0");
    v18 = 0;
    v21 = 0;
    v22 = 0;
    v20 = &v21;
    do
    {
      std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v20, &v21, v27[v18], &v27[v18]);
      v18 += 8;
    }

    while (v18 != 16);
    getFullBitcodePath(&v25, v23, v17, &v20);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v25;
    std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v21);
    for (j = 0; j != -8; j -= 4)
    {
      if (SHIBYTE(v30[j + 2]) < 0)
      {
        operator delete(v30[j]);
      }
    }

    goto LABEL_61;
  }

  if (v5 == 24)
  {
    std::string::basic_string[abi:nn200100]<0>(v23, "cei_range_exec_gen6_g15g");
    v11 = *(*(a2 + 4) + 24);
    v27[0] = 1;
    std::string::basic_string[abi:nn200100]<0>(v28, "a0");
    v29 = 3;
    std::string::basic_string[abi:nn200100]<0>(v30, "b0");
    v31 = 5;
    std::string::basic_string[abi:nn200100]<0>(v32, "c0");
    v12 = 0;
    v21 = 0;
    v22 = 0;
    v20 = &v21;
    do
    {
      std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v20, &v21, v27[v12], &v27[v12]);
      v12 += 8;
    }

    while (v12 != 24);
    getFullBitcodePath(&v25, v23, v11, &v20);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v25;
    std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v21);
    for (k = 0; k != -12; k -= 4)
    {
      if (SHIBYTE(v32[k + 2]) < 0)
      {
        operator delete(v32[k]);
      }
    }

LABEL_61:
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

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

    AGCLLVMObject::readBitcode(a3, p_p, size, 0);
    {
      {
        AGCLLVMDriverExecuteIndirectRangeExecutionComputeShader::create(AGCLLVMCtx &,llvm::LLVMContext &)::computeCS = 0;
        *algn_27C8D9818 = 0;
        qword_27C8D9820 = 0;
      }
    }

    operator new();
  }

  return 0;
}

void AGCLLVMGen3TargetConfig::createGPUGatherComputeShader(AGCLLVMGen3TargetConfig *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  AGCLLVMObject::readBitcode(a3, "gpu_gather_compute_gen2", 23, 0);
  {
    {
      AGCLLVMDriverGPUGatherComputeShaderGen3::create(AGCLLVMCtx &,llvm::LLVMContext &)::computeCS = 0;
      *algn_27C8D9838 = 0;
      qword_27C8D9840 = 0;
    }
  }

  operator new();
}

void AGCLLVMGen3TargetLowerer::buildUpdateHWColorCovarageMask(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v28[6] = *MEMORY[0x277D85DE8];
  v26 = v28;
  v27 = xmmword_20E70C710;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v26, "llvm.agx2.update.hw.coverage.mask.", "");
  if (a5)
  {
    v9 = "coords.i16";
  }

  else
  {
    v9 = "i16";
  }

  v10 = 10;
  if (!a5)
  {
    v10 = 3;
  }

  llvm::SmallVectorImpl<char>::append<char const*,void>(&v26, v9, &v9[v10]);
  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v18);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  v24[0] = v25;
  v24[1] = 0x500000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v24, *(a1 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v24, *(a1 + 192));
  if (a5)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v24, *(a1 + 240));
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v24, *(a1 + 192));
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v24, *(a1 + 192));
    v21 = v23;
    v22 = 0x500000000;
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v21, a3);
    v11 = llvm::ConstantInt::get();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v21, v11);
    v12 = a5;
  }

  else
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v24, *(a1 + 192));
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v24, *(a1 + 192));
    v21 = v23;
    v22 = 0x500000000;
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v21, a3);
    v12 = llvm::ConstantInt::get();
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v21, v12);
  v13 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v21, v13);
  v14 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v21, v14);
  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v17 = 257;
  llvm::IRBuilderBase::CreateCall((a1 + 8), *(v15 + 24), v15, v21, v22, v16);
  if (v21 != v23)
  {
    free(v21);
  }

  if (v24[0] != v25)
  {
    free(v24[0]);
  }

  if (v26 != v28)
  {
    free(v26);
  }
}

uint64_t AGCLLVMGen3TargetLowerer::buildReadClusterID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v16, "llvm.agx2.cluster.num", "");
  v13 = *a2;
  v14 = *(a2 + 16);
  if (v14)
  {
    llvm::MetadataTracking::track();
  }

  v15 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v13);
  if (v14)
  {
    llvm::MetadataTracking::untrack();
  }

  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, v16, v17, *(a1 + 200));
  v12 = 257;
  v7 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(inserted + 24), inserted, 0, 0, v11);
  v10[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v7, a3, v10);
  if (v16 != v18)
  {
    free(v16);
  }

  return Cast;
}

uint64_t AGCLLVMGen3TargetLowerer::buildAddressInOffChipMRTBuffer(AGCLLVMGen3TargetLowerer *this, unsigned int a2, unint64_t a3, unsigned int a4, llvm::Value *a5, llvm::Value *a6)
{
  if (a2 > 0x16)
  {
    goto LABEL_8;
  }

  if (((1 << a2) & 0x41F3C0) == 0)
  {
    if (((1 << a2) & 0x3C0000) != 0)
    {
      v8 = 4;
      goto LABEL_11;
    }

    if (((1 << a2) & 0x20C00) != 0)
    {
      v8 = 4 * a3;
      goto LABEL_11;
    }

LABEL_8:
    if (a2 - 2 >= 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = a3;
    }

    goto LABEL_11;
  }

  v8 = 2 * a3;
LABEL_11:
  v57 = v8;
  llvm::ArrayType::get(*(this + 23), v57);
  v56 = llvm::PointerType::get();
  v9 = llvm::PointerType::get();
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(this, "agc.get.eMRT_tile_buffer_address", 32, v9);
  v77 = 257;
  v55 = llvm::IRBuilderBase::CreateCall(this + 1, *(inserted + 24), inserted, 0, 0, v76);
  v11 = AGCLLVMBuilder::getOrInsertFunction<>(this, "agc.get.eMRT_spilled_partition_size", 35, *(this + 25));
  v77 = 257;
  v53 = llvm::IRBuilderBase::CreateCall(this + 1, *(v11 + 24), v11, 0, 0, v76);
  v12 = AGCLLVMBuilder::getOrInsertFunction<>(this, "agc.get.eMRT_max_concurrent_tiles", 33, *(this + 24));
  v77 = 257;
  v13 = llvm::IRBuilderBase::CreateCall(this + 1, *(v12 + 24), v12, 0, 0, v76);
  v14 = 0;
  v74 = 0;
  v75 = 0;
  v72 = 0;
  v73 = 0;
  v15 = &v75;
  v16 = &v73;
  v17 = 1;
  do
  {
    v18 = v17;
    if (a6)
    {
      v77 = 257;
      v19 = llvm::ConstantInt::get();
      *v15 = llvm::IRBuilderBase::CreateExtractElement((this + 8), a6, v19, v76);
    }

    else
    {
      v69 = *(this + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v70, (this + 8));
      v71 = *(this + 26);
      *v15 = (*(*this + 272))(this, &v69, *(this + 24), v14);
      if (v70)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    v66 = *(this + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v67, (this + 8));
    v68 = *(this + 26);
    *v16 = AGCLLVMGen3TargetLowerer::buildLocalSize(this, &v66, *(this + 24), v14);
    if (v67)
    {
      llvm::MetadataTracking::untrack();
    }

    v17 = 0;
    v14 = 1;
    v15 = &v74;
    v16 = &v72;
  }

  while ((v18 & 1) != 0);
  v20 = v73;
  v77 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((this + 8), v73, v72, v76);
  v22 = llvm::ConstantInt::get();
  v77 = 257;
  v23 = llvm::IRBuilderBase::CreateMul((this + 8), Mul, v22, v76);
  v24 = *(this + 25);
  v65 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(this + 8, 39, v23, v24, v64);
  v61 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v62, (this + 8));
  v63 = *(this + 26);
  v26 = (*(*this + 1712))(this, &v61, *(this + 24));
  if (v62)
  {
    llvm::MetadataTracking::untrack();
  }

  v58 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v59, (this + 8));
  v60 = *(this + 26);
  v27 = (*(*this + 1720))(this, &v58, *(this + 24));
  if (v59)
  {
    llvm::MetadataTracking::untrack();
  }

  v77 = 257;
  v28 = llvm::IRBuilderBase::CreateMul((this + 8), v26, v13, v76);
  v77 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((this + 8), v28, v27, v76);
  v30 = *(this + 25);
  v77 = 257;
  v31 = llvm::IRBuilderBase::CreateCast(this + 8, 39, Add, v30, v76);
  v65 = 257;
  v32 = llvm::IRBuilderBase::CreateMul((this + 8), v31, v53, v64);
  v33 = *(this + 25);
  v77 = 257;
  v34 = llvm::IRBuilderBase::CreateCast(this + 8, 39, a5, v33, v76);
  v65 = 257;
  v35 = llvm::IRBuilderBase::CreateMul((this + 8), v34, Cast, v64);
  v77 = 257;
  v36 = llvm::IRBuilderBase::CreateMul((this + 8), v74, v20, v76);
  v77 = 257;
  v37 = llvm::IRBuilderBase::CreateAdd((this + 8), v36, v75, v76);
  v38 = llvm::ConstantInt::get();
  v77 = 257;
  v39 = llvm::IRBuilderBase::CreateMul((this + 8), v37, v38, v76);
  v40 = llvm::ConstantInt::get();
  v77 = 257;
  v41 = llvm::IRBuilderBase::CreateMul((this + 8), v39, v40, v76);
  v77 = 257;
  v42 = llvm::IRBuilderBase::CreateAdd((this + 8), v32, v35, v76);
  v43 = *(this + 25);
  v77 = 257;
  v44 = llvm::IRBuilderBase::CreateCast(this + 8, 39, v41, v43, v76);
  v65 = 257;
  v45 = llvm::IRBuilderBase::CreateAdd((this + 8), v42, v44, v64);
  v46 = *(this + 23);
  v77 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((this + 8), v46, v55, v45, v76);
  v48 = *(this + 23);
  v49 = llvm::ConstantInt::get();
  v77 = 257;
  v50 = llvm::IRBuilderBase::CreateGEP((this + 8), v48, GEP, v49, v76);
  v77 = 257;
  v51 = llvm::IRBuilderBase::CreateCast(this + 8, 49, v50, v56, v76);
  llvm::ArrayType::get(*(this + 23), v57);
  return v51;
}

uint64_t AGCLLVMGen3TargetLowerer::buildLocalSize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v18, "llvm.agx2.threadgroup.", "");
  llvm::SmallVectorTemplateBase<char,true>::push_back(&v18, aXyz[a4]);
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v18, ".size", "");
  v15 = *a2;
  v16 = *(a2 + 16);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, v18, v19, *(a1 + 200));
  v14 = 257;
  v9 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(inserted + 24), inserted, 0, 0, v13);
  v12[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v9, a3, v12);
  if (v18 != v20)
  {
    free(v18);
  }

  return Cast;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildWriteOutputPartition(AGCLLVMGen3TargetLowerer::MemoryTransferOp const&,unsigned short,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,BOOL,llvm::Value *,llvm::Value *,llvm::Value *,BOOL,BOOL)::$_1::operator()(uint64_t *a1)
{
  v1 = a1;
  v97 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if ((*(**a1 + 1672))(*a1, *a1[1], *(a1[1] + 8), 1, 1, *a1[2]))
  {
    if ((*(*(v1[1] + 8) + 8) & 0xFE) == 0x12)
    {
      llvm::VectorType::get();
      InsertElement = llvm::UndefValue::get();
      if (*(*(v1[1] + 8) + 32))
      {
        v4 = 0;
        do
        {
          v5 = *v1[3];
          v82 = 257;
          v6 = llvm::ConstantInt::get();
          Element = llvm::IRBuilderBase::CreateExtractElement((v2 + 1), v5, v6, &v79);
          v8 = v2[19];
          v96 = 257;
          FPTrunc = llvm::IRBuilderBase::CreateFPTrunc((v2 + 1), Element, v8, v94);
          v82 = 257;
          v10 = llvm::ConstantInt::get();
          InsertElement = llvm::IRBuilderBase::CreateInsertElement((v2 + 1), InsertElement, FPTrunc, v10, &v79);
          ++v4;
        }

        while (v4 < *(*(v1[1] + 8) + 32));
      }

      *v1[3] = InsertElement;
    }

    else
    {
      v11 = *v1[3];
      v12 = v2[19];
      v82 = 257;
      *v1[3] = llvm::IRBuilderBase::CreateFPTrunc((v2 + 1), v11, v12, &v79);
    }
  }

  inserted = AGCLLVMBuilder::getOrInsertFunction<>(v2, "llvm.agx2.coverage.mask", 23, v2[25]);
  v82 = 257;
  v14 = llvm::IRBuilderBase::CreateCall(v2 + 1, *(inserted + 24), inserted, 0, 0, &v79);
  v15 = v2[24];
  v96 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v2 + 1), 38, v14, v15, v94);
  v17 = *v1[4];
  if (!v17)
  {
    v17 = *v1[5];
  }

  if ((*v1[6] & 1) == 0)
  {
    v82 = 257;
    v17 = llvm::IRBuilderBase::CreateAnd((v2 + 1), v17, Cast, &v79);
  }

  v18 = llvm::ConstantInt::get();
  v82 = 257;
  v19 = llvm::IRBuilderBase::CreateAnd((v2 + 1), v17, v18, &v79);
  v20 = v1[1];
  v21 = *(v20 + 2);
  v22 = *(v20 + 6);
  v23 = *v1[7];
  v24 = *v1[8];
  v25 = *v1[9];
  v82 = 257;
  Sub = llvm::IRBuilderBase::CreateSub((v2 + 1), v24, v25, &v79);
  GEP = (*(*v2 + 213))(v2, v21, v22, v23, Sub, *v1[10]);
  v69 = v28;
  v29 = llvm::PointerType::get();
  v30 = AGCLLVMBuilder::getOrInsertFunction<>(v2, "agc.get.eMRT_tile_buffer_address", 32, v29);
  v82 = 257;
  v31 = llvm::IRBuilderBase::CreateCall(v2 + 1, *(v30 + 24), v30, 0, 0, &v79);
  v32 = *GEP;
  v82 = 257;
  llvm::IRBuilderBase::CreateCast((v2 + 1), 49, v31, v32, &v79);
  v76 = *(v2 + 7);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v77, (v2 + 1));
  v78 = *(v2 + 26);
  v33 = *v1[4];
  if (!v33)
  {
    v33 = *v1[5];
  }

  result = (*(*v2 + 216))(v2, &v76, v33, *v1[6], *v1[10]);
  if (v77)
  {
    result = llvm::MetadataTracking::untrack();
  }

  if (*v1[7])
  {
    v35 = 0;
    v66 = *(MEMORY[0x277D82828] + 24);
    v67 = *MEMORY[0x277D82828];
    v68 = v1;
    do
    {
      v36 = llvm::ConstantInt::get();
      v82 = 257;
      v37 = llvm::IRBuilderBase::CreateAnd((v2 + 1), v19, v36, &v79);
      v38 = llvm::ConstantInt::get();
      v96 = 257;
      llvm::IRBuilderBase::CreateICmp(v2 + 1, 32, v37, v38, v94);
      v82 = 257;
      Select = llvm::IRBuilderBase::CreateSelect();
      v39 = v1[1];
      v40 = *v1[3];
      (*(*v2 + 209))(v2, *v39, *(v39 + 1), 1, 1, 0);
      v41 = v39[2];
      v75 = GEP;
      v74 = v35;
      v71 = llvm::ConstantInt::get();
      v42 = vcnt_s8(v41);
      v42.i16[0] = vaddlv_u8(v42);
      v70 = v42.u16[0];
      v72 = v42.i32[0];
      llvm::FixedVectorType::get();
      v43 = llvm::UndefValue::get();
      v44 = v39[2];
      if (v39[2])
      {
        v45 = 0;
        do
        {
          v46 = __clz(__rbit32(v44));
          v82 = 257;
          v47 = llvm::ConstantInt::get();
          v48 = llvm::IRBuilderBase::CreateExtractElement((v2 + 1), v40, v47, &v79);
          v96 = 257;
          v49 = llvm::ConstantInt::get();
          v43 = llvm::IRBuilderBase::CreateInsertElement((v2 + 1), v43, v48, v49, v94);
          ++v45;
          v50 = 1 << v46 == v44;
          v44 ^= 1 << v46;
        }

        while (!v50);
      }

      if (v70 == 1)
      {
        v82 = 257;
        v51 = llvm::ConstantInt::get();
        v43 = llvm::IRBuilderBase::CreateExtractElement((v2 + 1), v43, v51, &v79);
      }

      v1 = v68;
      v52 = llvm::PointerType::get();
      v82 = 257;
      v53 = llvm::IRBuilderBase::CreateCast((v2 + 1), 49, Select, v52, &v79);
      std::string::basic_string[abi:nn200100]<0>(&v86, v2[179]);
      v94[0] = v95;
      v94[1] = 0x600000000;
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v94, v2[24]);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v94, v2[24]);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v94, *v43);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v94, *v53);
      v91 = v93;
      v92 = 0x600000000;
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v91, v71);
      v54 = llvm::ConstantInt::get();
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v91, v54);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v91, v43);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v91, v53);
      v55 = *v40;
      std::ostringstream::basic_ostringstream[abi:nn200100](&v79);
      v56 = MEMORY[0x20F331C20](&v79, v72);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v56, "xsz", 3);
      ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v55);
      MEMORY[0x20F331C20](v56, ScalarSizeInBits);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v79, ".", 1);
      AGCLLVMGen3TargetLowerer::getWriteSuffix(&__p, v2, *v43);
      if ((v89 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v89 & 0x80u) == 0)
      {
        v59 = v89;
      }

      else
      {
        v59 = v88;
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v79, p_p, v59);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v79, ".p", 2);
      v60 = *(*v53 + 8);
      if ((v60 & 0xFE) == 0x12)
      {
        v60 = *(**(*v53 + 16) + 8);
      }

      MEMORY[0x20F331C20](&v79, v60 >> 8);
      if (v89 < 0)
      {
        operator delete(__p);
      }

      if ((llvm::Type::isOpaquePointerTy(*v53) & 1) == 0)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v79, "i8", 2);
      }

      std::stringbuf::str();
      if ((v89 & 0x80u) == 0)
      {
        v61 = &__p;
      }

      else
      {
        v61 = __p;
      }

      if ((v89 & 0x80u) == 0)
      {
        v62 = v89;
      }

      else
      {
        v62 = v88;
      }

      std::string::append(&v86, v61, v62);
      if (v89 < 0)
      {
        operator delete(__p);
      }

      llvm::FunctionType::get();
      llvm::Module::getOrInsertFunction();
      v90 = 257;
      llvm::IRBuilderBase::CreateCall(v2 + 1, *(v63 + 24), v63, v91, v92, &__p);
      __p = llvm::MDString::get();
      llvm::MDTuple::getImpl();
      llvm::Instruction::setMetadata();
      v79 = v67;
      *(&v79 + *(v67 - 24)) = v66;
      v80 = MEMORY[0x277D82878] + 16;
      if (v84 < 0)
      {
        operator delete(v83);
      }

      v80 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v81);
      std::ostream::~ostream();
      MEMORY[0x20F331D40](&v85);
      if (v91 != v93)
      {
        free(v91);
      }

      if (v94[0] != v95)
      {
        free(v94[0]);
      }

      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v86.__r_.__value_.__l.__data_);
      }

      v64 = llvm::ConstantInt::get();
      v82 = 257;
      GEP = llvm::IRBuilderBase::CreateGEP((v2 + 1), v69, v75, v64, &v79);
      v65 = llvm::ConstantInt::get();
      v82 = 257;
      result = llvm::IRBuilderBase::CreateLShr((v2 + 1), v19, v65, &v79);
      v19 = result;
      v35 = v74 + 1;
    }

    while (*v68[7] > (v74 + 1));
  }

  return result;
}

uint64_t AGCLLVMGen3TargetLowerer::buildReadOutputPartition(AGCLLVMGen3TargetLowerer::MemoryTransferOp const&,unsigned short,llvm::Value *,llvm::Type *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,BOOL)::$_1::operator()(uint64_t a1)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(*a1, "llvm.agx2.coverage.mask", 23, *(*a1 + 200));
  v31 = 257;
  v4 = llvm::IRBuilderBase::CreateCall(v2 + 1, *(inserted + 24), inserted, 0, 0, v30);
  v5 = v2[24];
  v29 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v2 + 1), 38, v4, v5, v28);
  v7 = **(a1 + 8);
  if (!v7)
  {
    v7 = **(a1 + 16);
  }

  if ((**(a1 + 24) & 1) == 0)
  {
    v31 = 257;
    v7 = llvm::IRBuilderBase::CreateAnd((v2 + 1), v7, Cast, v30);
  }

  v8 = llvm::ConstantInt::get();
  v31 = 257;
  v9 = llvm::IRBuilderBase::CreateAnd((v2 + 1), v7, v8, v30);
  v10 = llvm::ConstantInt::get();
  v31 = 257;
  llvm::IRBuilderBase::CreateICmp(v2 + 1, 32, v9, v10, v30);
  v11 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(v2, "llvm.cttz.i16", 13, v2[24], v2[24], v2[22]);
  llvm::ConstantInt::get();
  v32[0] = v9;
  v32[1] = llvm::ConstantInt::get();
  v31 = 257;
  llvm::IRBuilderBase::CreateCall(v2 + 1, *(v11 + 24), v11, v32, 2, v30);
  v29 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v13 = *(a1 + 40);
  v14 = *(v13 + 2);
  v15 = *(v13 + 6);
  v16 = **(a1 + 32);
  v17 = **(a1 + 48);
  v18 = **(a1 + 56);
  v31 = 257;
  Sub = llvm::IRBuilderBase::CreateSub((v2 + 1), v17, v18, v30);
  v20 = (*(*v2 + 213))(v2, v14, v15, v16, Sub, **(a1 + 64));
  v21 = *(a1 + 40);
  v22 = **(a1 + 72);
  v31 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v2 + 1), v23, v20, Select, v30);
  EMRTTileBuffer = AGCLLVMGen3TargetLowerer::buildLoadEMRTTileBuffer(v2, v21, v22, GEP);
  llvm::Constant::getNullValue(*EMRTTileBuffer, v26);
  v31 = 257;
  return llvm::IRBuilderBase::CreateSelect();
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildLoadEMRTTileBuffer(llvm::FixedVectorType **a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4)
{
  v48[3] = *MEMORY[0x277D85DE8];
  v7 = vcnt_s8(a2[2]);
  v8 = (*(*a1 + 209))(a1, *a2, *(a2 + 1), 0, 0, 0);
  if (v8)
  {
    v10 = a1 + 19;
  }

  else
  {
    v11 = *(a2 + 1);
    if ((*(v11 + 2) & 0xFE) != 0x12)
    {
      goto LABEL_6;
    }

    v10 = *(v11 + 2);
  }

  v11 = *v10;
LABEL_6:
  LOWORD(v9) = vaddlv_u8(v7);
  v12 = v11;
  if (a2[3] != 1)
  {
    v31 = v9;
    v13 = llvm::FixedVectorType::get();
    v9 = v31;
    v12 = v13;
  }

  v14 = v9;
  v15 = llvm::ConstantInt::get();
  v16 = llvm::PointerType::get();
  v35 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, a4, v16, &v32);
  std::string::basic_string[abi:nn200100]<0>(&v39, a1[178]);
  v47[0] = v48;
  v47[1] = 0x300000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v47, a1[24]);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v47, a1[24]);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v47, *Cast);
  v44 = v46;
  v45 = 0x300000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v44, v15);
  v18 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v44, v18);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v44, Cast);
  std::ostringstream::basic_ostringstream[abi:nn200100](&v32);
  v19 = MEMORY[0x20F331C20](&v32, v14);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v19, "xsz", 3);
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v12);
  MEMORY[0x20F331C20](v19, ScalarSizeInBits);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v32, ".", 1);
  if (a1[24] == v11)
  {
    v21 = "i16";
  }

  else if (a1[25] == v11)
  {
    v21 = "i32";
  }

  else if (a1[19] == v11)
  {
    v21 = "f16";
  }

  else
  {
    v21 = "f32";
  }

  std::string::basic_string[abi:nn200100]<0>(&v40, v21);
  if ((v42 & 0x80u) == 0)
  {
    v22 = &v40;
  }

  else
  {
    v22 = v40;
  }

  if ((v42 & 0x80u) == 0)
  {
    v23 = v42;
  }

  else
  {
    v23 = v41;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v32, v22, v23);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v32, ".p", 2);
  v24 = *(*Cast + 8);
  if ((v24 & 0xFE) == 0x12)
  {
    v24 = *(**(*Cast + 16) + 8);
  }

  MEMORY[0x20F331C20](&v32, v24 >> 8);
  if (v42 < 0)
  {
    operator delete(v40);
  }

  if ((llvm::Type::isOpaquePointerTy(*Cast) & 1) == 0)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v32, "i8", 2);
  }

  std::stringbuf::str();
  if ((v42 & 0x80u) == 0)
  {
    v25 = &v40;
  }

  else
  {
    v25 = v40;
  }

  if ((v42 & 0x80u) == 0)
  {
    v26 = v42;
  }

  else
  {
    v26 = v41;
  }

  std::string::append(&v39, v25, v26);
  if (v42 < 0)
  {
    operator delete(v40);
  }

  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v43 = 257;
  v28 = llvm::IRBuilderBase::CreateCall(a1 + 1, *(v27 + 24), v27, v44, v45, &v40);
  v40 = llvm::MDString::get();
  llvm::MDTuple::getImpl();
  llvm::Instruction::setMetadata();
  v29 = AGCLLVMGen3TargetLowerer::convertFromF16(a1, v28, v8 & 1);
  v32 = *MEMORY[0x277D82828];
  *(&v32 + *(v32 - 24)) = *(MEMORY[0x277D82828] + 24);
  v33 = MEMORY[0x277D82878] + 16;
  if (v37 < 0)
  {
    operator delete(__p);
  }

  v33 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v34);
  std::ostream::~ostream();
  MEMORY[0x20F331D40](&v38);
  if (v44 != v46)
  {
    free(v44);
  }

  if (v47[0] != v48)
  {
    free(v47[0]);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  return v29;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildSimdShuffleDown(uint64_t a1, __int128 *a2, llvm::Type **a3, llvm::Value *a4)
{
  v10 = *a2;
  v11 = *(a2 + 2);
  if (v11)
  {
    llvm::MetadataTracking::track();
  }

  v12 = *(a2 + 6);
  v8 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdShuffle(a1, &v10, a3, a4, 2, *(a1 + 968));
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildEmulatedSimdShuffle(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Value *a4, int a5, int a6)
{
  v26 = a6;
  v27 = a5;
  v23 = *a2;
  v24 = *(a2 + 16);
  if (v24)
  {
    llvm::MetadataTracking::track();
  }

  v25 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v23);
  if (v24)
  {
    llvm::MetadataTracking::untrack();
  }

  v22[0] = &v26;
  v22[1] = a1;
  v22[2] = &v27;
  v10 = *a3;
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(*a3);
  if ((*(v10 + 2) & 0xFE) == 0x12)
  {
    v12 = *(v10 + 8);
  }

  else
  {
    v12 = 1;
  }

  if ((v12 * ScalarSizeInBits) < 0x21)
  {
    return AGCLLVMGen3TargetLowerer::buildEmulatedSimdShuffle(AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *,AGCLLVMGen3TargetLowerer::SimdShuffleFunction,unsigned int)::$_0::operator()(v22, a3, a4);
  }

  InsertElement = llvm::UndefValue::get();
  if (*(*a3 + 8))
  {
    v14 = 0;
    do
    {
      v21 = 257;
      v15 = llvm::ConstantInt::get();
      Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), a3, v15, v20);
      v17 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdShuffle(AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *,AGCLLVMGen3TargetLowerer::SimdShuffleFunction,unsigned int)::$_0::operator()(v22, Element, a4);
      v21 = 257;
      v18 = llvm::ConstantInt::get();
      InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v17, v18, v20);
      ++v14;
    }

    while (v14 < *(*a3 + 8));
  }

  return InsertElement;
}

uint64_t AGCLLVMGen3TargetLowerer::buildEmulatedSimdShuffle(AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *,AGCLLVMGen3TargetLowerer::SimdShuffleFunction,unsigned int)::$_0::operator()(uint64_t a1, llvm::PointerType **a2, llvm::Value *a3)
{
  v6 = *(a1 + 8);
  if (**a1 == 4)
  {
    v46 = *(v6 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v47, (v6 + 8));
    v48 = *(v6 + 26);
    v7 = AGCLLVMGen3TargetLowerer::buildQuadElement(v6, &v46, *(v6 + 24));
    if (!v47)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v43 = *(v6 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v44, (v6 + 8));
  v45 = *(v6 + 26);
  v7 = (*(*v6 + 1624))(v6, &v43, *(v6 + 24));
  if (v44)
  {
LABEL_3:
    llvm::MetadataTracking::untrack();
  }

LABEL_4:
  v40 = *(v6 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v41, (v6 + 8));
  v42 = *(v6 + 26);
  v8 = AGCLLVMGen3TargetLowerer::buildSimdGroupScratchMemoryPtr(v6, &v40, v7);
  if (v41)
  {
    llvm::MetadataTracking::untrack();
  }

  v9 = llvm::PointerType::get();
  v39 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(v6 + 8, 49, v8, v9, v38);
  v11 = *a2;
  v39 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v6 + 8), v11, Cast, v7, v38);
  llvm::IRBuilderBase::CreateAlignedStore(v6 + 1, a2, GEP, 0, 0);
  v35 = *(v6 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v36, (v6 + 8));
  v37 = *(v6 + 26);
  AGCLLVMGen3TargetLowerer::buildSimdBarrier(v6, &v35);
  if (v36)
  {
    llvm::MetadataTracking::untrack();
  }

  v13 = 0;
  v14 = **(a1 + 16);
  if (v14 > 2)
  {
    switch(v14)
    {
      case 3:
        v39 = 257;
        Xor = llvm::IRBuilderBase::CreateXor(v6 + 1, v7, a3, v38);
LABEL_25:
        v13 = Xor;
        goto LABEL_26;
      case 4:
        v22 = *(v6 + 25);
        v39 = 257;
        v23 = llvm::IRBuilderBase::CreateCast(v6 + 8, 40, v7, v22, v38);
        v24 = *(v6 + 25);
        v34 = 257;
        v25 = llvm::IRBuilderBase::CreateCast(v6 + 8, 40, a3, v24, v33);
        v32 = 257;
        Sub = llvm::IRBuilderBase::CreateSub((v6 + 8), v23, v25, v31);
        v18 = llvm::ConstantInt::get();
        v30 = 257;
        v19 = (v6 + 8);
        v20 = &v29;
        break;
      case 5:
        v39 = 257;
        Sub = llvm::IRBuilderBase::CreateAdd((v6 + 8), v7, a3, v38);
        v18 = llvm::ConstantInt::get();
        v34 = 257;
        v19 = (v6 + 8);
        v20 = v33;
        break;
      default:
        goto LABEL_26;
    }

    Xor = llvm::IRBuilderBase::CreateAnd(v19, Sub, v18, v20);
    goto LABEL_25;
  }

  if (v14)
  {
    if (v14 == 1)
    {
      v39 = 257;
      llvm::IRBuilderBase::CreateICmp(v6 + 1, 36, v7, a3, v38);
      v34 = 257;
      llvm::IRBuilderBase::CreateSub((v6 + 8), v7, a3, v33);
      v32 = 257;
      goto LABEL_22;
    }

    if (v14 == 2)
    {
      v39 = 257;
      Add = llvm::IRBuilderBase::CreateAdd((v6 + 8), v7, a3, v38);
      v16 = llvm::ConstantInt::get();
      v39 = 257;
      llvm::IRBuilderBase::CreateICmp(v6 + 1, 34, Add, v16, v38);
      v34 = 257;
LABEL_22:
      Xor = llvm::IRBuilderBase::CreateSelect();
      goto LABEL_25;
    }
  }

  else
  {
    v13 = a3;
  }

LABEL_26:
  v26 = *a2;
  v39 = 257;
  v27 = llvm::IRBuilderBase::CreateGEP((v6 + 8), v26, Cast, v13, v38);
  v39 = 257;
  return AGCLLVMBuilder::CreateLoad(v6, v27, v38);
}

uint64_t AGCLLVMGen3TargetLowerer::buildQuadElement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v16, "llvm.agx2.quad.element", "");
  v13 = *a2;
  v14 = *(a2 + 16);
  if (v14)
  {
    llvm::MetadataTracking::track();
  }

  v15 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v13);
  if (v14)
  {
    llvm::MetadataTracking::untrack();
  }

  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, v16, v17, *(a1 + 200));
  v12 = 257;
  v7 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(inserted + 24), inserted, 0, 0, v11);
  v10[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v7, a3, v10);
  if (v16 != v18)
  {
    free(v16);
  }

  return Cast;
}

llvm::Instruction *AGCLLVMGen3TargetLowerer::buildSimdGroupScratchMemoryPtr(uint64_t a1, uint64_t a2, llvm::Value *a3)
{
  v21 = *a2;
  v22 = *(a2 + 16);
  if (v22)
  {
    llvm::MetadataTracking::track();
  }

  v23 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v21);
  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 2600);
  if (!v6)
  {
    llvm::ArrayType::get(*(a1 + 184), 0x1000);
    v7 = llvm::User::operator new(0x58);
    llvm::UndefValue::get();
    v24[0] = "agc.simd_permute_emulation_scratchpad";
    v25 = 259;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setAlignment();
    *(v7 + 32) = *(v7 + 32) & 0xFFFFFF3F | 0x80;
    llvm::GlobalObject::setSection();
    llvm::ValueHandleBase::operator=((a1 + 2584), v7);
    v6 = *(a1 + 2600);
  }

  v8 = llvm::PointerType::get();
  v25 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v6, v8, v24);
  v18 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v19, (a1 + 8));
  v20 = *(a1 + 104);
  v10 = AGCLLVMGen3TargetLowerer::buildLocalLinearID(a1, &v18, *(a1 + 192));
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  v25 = 257;
  Sub = llvm::IRBuilderBase::CreateSub((a1 + 8), v10, a3, v24);
  v12 = *(a1 + 184);
  v13 = llvm::ConstantInt::get();
  v25 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((a1 + 8), Sub, v13, v24);
  v17 = 257;
  return llvm::IRBuilderBase::CreateGEP((a1 + 8), v12, Cast, Mul, v16);
}

llvm::Instruction *AGCLLVMGen3TargetLowerer::buildSimdBarrier(uint64_t a1, uint64_t a2)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v10 = *a2;
  v11 = *(a2 + 16);
  if (v11)
  {
    llvm::MetadataTracking::track();
  }

  v12 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v10);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  v13[0] = llvm::ConstantInt::get();
  v13[1] = llvm::ConstantInt::get();
  v4 = *(a1 + 1048);
  if (v4)
  {
    v5 = strlen(*(a1 + 1048));
  }

  else
  {
    v5 = 0;
  }

  v6 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v4, v5, *(a1 + 144), *(a1 + 192), *(a1 + 192));
  v9 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v6 + 24), v6, v13, 2, v8);
}

uint64_t AGCLLVMGen3TargetLowerer::buildLocalLinearID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v16, "llvm.agx2.linear.id", "");
  v13 = *a2;
  v14 = *(a2 + 16);
  if (v14)
  {
    llvm::MetadataTracking::track();
  }

  v15 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v13);
  if (v14)
  {
    llvm::MetadataTracking::untrack();
  }

  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, v16, v17, *(a1 + 200));
  v12 = 257;
  v7 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(inserted + 24), inserted, 0, 0, v11);
  v10[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v7, a3, v10);
  if (v16 != v18)
  {
    free(v16);
  }

  return Cast;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildSimdShuffleUp(uint64_t a1, __int128 *a2, llvm::Type **a3, llvm::Value *a4)
{
  v10 = *a2;
  v11 = *(a2 + 2);
  if (v11)
  {
    llvm::MetadataTracking::track();
  }

  v12 = *(a2 + 6);
  v8 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdShuffle(a1, &v10, a3, a4, 1, *(a1 + 968));
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMGen3TargetLowerer::buildQuadShuffleDown(llvm::FixedVectorType **a1, uint64_t a2, llvm::Type **a3, llvm::Value *a4)
{
  v9 = *a2;
  v10 = *(a2 + 16);
  if (v10)
  {
    llvm::MetadataTracking::track();
  }

  v11 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v9);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return AGCLLVMGen3TargetLowerer::buildPermute(a1, a1[313], a3, a4);
}

uint64_t AGCLLVMGen3TargetLowerer::buildPermute(llvm::FixedVectorType **this, char *a2, llvm::Type **a3, llvm::Value *a4)
{
  v5 = a3;
  v8 = *a3;
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(*a3);
  switch(ScalarSizeInBits)
  {
    case 32:

      return AGCLLVMGen3TargetLowerer::buildPermute32(this, a2, v5, a4);
    case 16:

      return AGCLLVMGen3TargetLowerer::buildPermute16(this, a2, v5, a4);
    case 8:
      if ((*(v8 + 2) & 0xFE) == 0x12)
      {
        v11 = *(v8 + 8);
        if (v11)
        {
          v12 = v11 + 1;
          v5 = AGCLLVMBuilder::extendVector(this, v5, (v11 + 1), v10);
        }

        else
        {
          v12 = *(v8 + 8);
        }

        if (v12 < 4)
        {
          v24 = this[24];
        }

        else
        {
          v24 = llvm::FixedVectorType::get();
        }

        v30 = 257;
        Cast = llvm::IRBuilderBase::CreateCast((this + 1), 49, v5, v24, v29);
        v26 = AGCLLVMGen3TargetLowerer::buildPermute16(this, a2, Cast, a4);
        v27 = llvm::FixedVectorType::get();
        v30 = 257;
        v28 = llvm::IRBuilderBase::CreateCast((this + 1), 49, v26, v27, v29);
        if ((v11 & 1) == 0)
        {
          goto LABEL_22;
        }

        Element = AGCLLVMBuilder::subrangeVector(this, v28, 0, v12 - 1, 1);
      }

      else
      {
        v14 = llvm::UndefValue::get();
        v30 = 257;
        v15 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((this + 1), v14, v5, v15, v29);
        v17 = this[24];
        v30 = 257;
        v18 = llvm::IRBuilderBase::CreateCast((this + 1), 49, InsertElement, v17, v29);
        v19 = AGCLLVMGen3TargetLowerer::buildPermute16(this, a2, v18, a4);
        v20 = this[29];
        v30 = 257;
        v21 = llvm::IRBuilderBase::CreateCast((this + 1), 49, v19, v20, v29);
        v30 = 257;
        v22 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((this + 1), v21, v22, v29);
      }

      v28 = Element;
LABEL_22:
      v30 = 257;
      return llvm::IRBuilderBase::CreateCast((this + 1), 49, v28, v8, v29);
    default:
      return 0;
  }
}

uint64_t AGCLLVMGen3TargetLowerer::buildPermute16(AGCLLVMGen3TargetLowerer *this, char *a2, llvm::Value *a3, llvm::Value *a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = *a3;
  std::string::basic_string[abi:nn200100]<0>(&v33, a2);
  v9 = std::string::append(&v33, ".u.i16");
  v10 = v9->__r_.__value_.__r.__words[2];
  *__p = *&v9->__r_.__value_.__l.__data_;
  v36 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (v36 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if (v36 >= 0)
  {
    v12 = SHIBYTE(v36);
  }

  else
  {
    v12 = __p[1];
  }

  v13 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(this, v11, v12, *(this + 24), *(this + 24), *(this + 24));
  if ((*(v8 + 8) & 0xFE) == 0x12)
  {
    v14 = *(v8 + 32);
    if (v14 < 4)
    {
      v15 = *(this + 25);
      if (v14)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v15 = llvm::FixedVectorType::get();
      if (v14)
      {
LABEL_12:
        v34 = 257;
        v16 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((this + 8), a3, v16, &v33);
        v18 = *(this + 24);
        v34 = 257;
        Cast = llvm::IRBuilderBase::CreateCast(this + 8, 49, Element, v18, &v33);
        v38 = a4;
        v34 = 257;
        v19 = llvm::IRBuilderBase::CreateCall(this + 1, *(v13 + 24), v13, &Cast, 2, &v33);
        v20 = AGCLLVMBuilder::subrangeVector(this, a3, 0, v14 - 1, 1);
        v34 = 257;
        v21 = llvm::IRBuilderBase::CreateCast(this + 8, 49, v20, v15, &v33);
        v22 = AGCLLVMGen3TargetLowerer::buildPermute32(this, a2, v21, a4);
        v23 = llvm::FixedVectorType::get();
        v34 = 257;
        v24 = llvm::IRBuilderBase::CreateCast(this + 8, 49, v22, v23, &v33);
        v26 = AGCLLVMBuilder::extendVector(this, v24, v14, v25);
        v34 = 257;
        v27 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((this + 8), v26, v19, v27, &v33);
        goto LABEL_16;
      }
    }

    v34 = 257;
    v30 = llvm::IRBuilderBase::CreateCast(this + 8, 49, a3, v15, &v33);
    InsertElement = AGCLLVMGen3TargetLowerer::buildPermute32(this, a2, v30, a4);
  }

  else
  {
    v29 = *(this + 24);
    v34 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(this + 8, 49, a3, v29, &v33);
    v38 = a4;
    v34 = 257;
    InsertElement = llvm::IRBuilderBase::CreateCall(this + 1, *(v13 + 24), v13, &Cast, 2, &v33);
  }

LABEL_16:
  v34 = 257;
  v31 = llvm::IRBuilderBase::CreateCast(this + 8, 49, InsertElement, v8, &v33);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
  }

  return v31;
}

uint64_t AGCLLVMGen3TargetLowerer::buildPermute32(AGCLLVMGen3TargetLowerer *this, char *a2, llvm::Value *a3, llvm::Value *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  std::string::basic_string[abi:nn200100]<0>(&v24, a2);
  v8 = std::string::append(&v24, ".u.i32");
  v9 = v8->__r_.__value_.__r.__words[2];
  *__p = *&v8->__r_.__value_.__l.__data_;
  v27 = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (v27 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if (v27 >= 0)
  {
    v11 = SHIBYTE(v27);
  }

  else
  {
    v11 = __p[1];
  }

  v12 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(this, v10, v11, *(this + 25), *(this + 25), *(this + 24));
  if ((*(v7 + 8) & 0xFE) == 0x12)
  {
    *v30 = 0u;
    v31 = 0u;
    v13 = AGCLLVMBuilder::unboxVector(this, a3, v30);
    llvm::FixedVectorType::get();
    InsertElement = llvm::UndefValue::get();
    if (v13)
    {
      v15 = 0;
      v16 = v13;
      do
      {
        Cast = 0;
        v29 = 0;
        v17 = v30[v15];
        v18 = *(this + 25);
        v25 = 257;
        Cast = llvm::IRBuilderBase::CreateCast(this + 8, 49, v17, v18, &v24);
        v29 = a4;
        v25 = 257;
        v19 = llvm::IRBuilderBase::CreateCall(this + 1, *(v12 + 24), v12, &Cast, 2, &v24);
        v25 = 257;
        v20 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((this + 8), InsertElement, v19, v20, &v24);
        ++v15;
      }

      while (v16 != v15);
    }
  }

  else
  {
    v21 = *(this + 25);
    v25 = 257;
    v30[0] = llvm::IRBuilderBase::CreateCast(this + 8, 49, a3, v21, &v24);
    v30[1] = a4;
    v25 = 257;
    InsertElement = llvm::IRBuilderBase::CreateCall(this + 1, *(v12 + 24), v12, v30, 2, &v24);
  }

  v25 = 257;
  v22 = llvm::IRBuilderBase::CreateCast(this + 8, 49, InsertElement, v7, &v24);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  return v22;
}

uint64_t AGCLLVMGen3TargetLowerer::buildQuadShuffleUp(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Value *a4)
{
  v9 = *a2;
  v10 = *(a2 + 16);
  if (v10)
  {
    llvm::MetadataTracking::track();
  }

  v11 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v9);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return AGCLLVMGen3TargetLowerer::buildPermute(a1, *(a1 + 2496), a3, a4);
}

uint64_t AGCLLVMGen3TargetLowerer::buildSimdGroupIndexInThreadgroup(uint64_t a1, __int128 *a2, llvm::ConstantInt *a3)
{
  v12 = *a2;
  v13 = *(a2 + 2);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 6);
  v6 = AGCLLVMGen3TargetLowerer::buildLocalLinearID(a1, &v12, a3);
  v7 = llvm::ConstantInt::get();
  v11 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v6, v7, v10);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  return LShr;
}

uint64_t AGCLLVMGen3TargetLowerer::buildThreadIndexInSimdGroup(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v14 = *a2;
  v15 = *(a2 + 2);
  if (v15)
  {
    llvm::MetadataTracking::track();
  }

  v16 = *(a2 + 6);
  v6 = AGCLLVMGen3TargetLowerer::buildLocalLinearID(a1, &v14, *(a1 + 200));
  v7 = llvm::ConstantInt::get();
  v13 = 257;
  v8 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v6, v7, v12);
  v11[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v8, a3, v11);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  return Cast;
}

void AGCLLVMGen3TargetLowerer::buildWriteImageBlockIntrinsic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v60[16] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(&v52, *(a1 + 2064));
  if (a6)
  {
    std::string::append(&v52, ".subset");
  }

  std::string::append(&v52, ".coords");
  v59[0] = v60;
  v59[1] = 0x1000000000;
  v56 = v58;
  v57 = 0x1000000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v59, *(a1 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v56, a3);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v59, *(a1 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v56, a4);
  v11 = llvm::PointerType::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v59, v11);
  v12 = *(a2 + 56);
  v13 = llvm::PointerType::get();
  v55 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v12, v13, &TypeAllocSize);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v56, Cast);
  v15 = llvm::PointerType::get();
  v16 = llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v59, v15);
  v17 = *(a2 + 32);
  if (v17)
  {
    if (!*(a1 + 1900) && (AGCLLVMObject::useTextureIDLegacyMode(v16) & 1) == 0)
    {
      TypeAllocSize = llvm::DataLayout::getTypeAllocSize((a1 + 472), *(a1 + 1784));
      v54 = v18;
      llvm::TypeSize::operator unsigned long long();
      v19 = llvm::ConstantInt::get();
      v20 = *(a1 + 200);
      v55 = 257;
      v21 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v17, v20, &TypeAllocSize);
      TypeAllocSize = "agx2_tex_heap_byte_offset";
      v55 = 259;
      Mul = llvm::IRBuilderBase::CreateMul((a1 + 8), v21, v19, &TypeAllocSize);
      v55 = 257;
      v17 = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, Mul, v15, &TypeAllocSize);
    }

    v23 = v17;
  }

  else
  {
    v24 = llvm::ConstantInt::get();
    v55 = 257;
    v23 = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, v24, v15, &TypeAllocSize);
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v56, v23);
  v25 = *(a2 + 4);
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = ".cubestf";
LABEL_18:
      std::string::append(&v52, v26);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v59, *(a1 + 248));
      v28 = *(a2 + 136);
      v29 = *(a1 + 248);
      goto LABEL_19;
    }

    if (v25 != 3)
    {
      goto LABEL_20;
    }

    std::string::append(&v52, ".3d");
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v59, *(a1 + 336));
    v28 = *(a2 + 136);
    v29 = *(a1 + 336);
  }

  else
  {
    if (v25)
    {
      if (v25 != 1)
      {
        goto LABEL_20;
      }

      v26 = ".2d";
      goto LABEL_18;
    }

    std::string::append(&v52, ".1d");
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v59, *(a1 + 200));
    v28 = *(a2 + 136);
    v29 = *(a1 + 200);
  }

LABEL_19:
  v55 = 257;
  ZExtOrBitCast = llvm::IRBuilderBase::CreateZExtOrBitCast((a1 + 8), v28, v29, &TypeAllocSize, v27);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v56, ZExtOrBitCast);
LABEL_20:
  if (*(a2 + 152))
  {
    std::string::append(&v52, ".array");
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v59, *(a1 + 192));
    v31 = *(a2 + 152);
    v32 = *(a1 + 192);
    v55 = 257;
    v33 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v31, v32, &TypeAllocSize);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v56, v33);
  }

  if (*(a2 + 232))
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v59, *(a1 + 192));
    v34 = *(a2 + 232);
    v35 = *(a1 + 192);
    v55 = 257;
    v36 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v34, v35, &TypeAllocSize);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v56, v36);
  }

  if (*(a2 + 168))
  {
    std::string::append(&v52, ".lod");
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v59, *(a1 + 192));
    v37 = *(a2 + 168);
    v38 = *(a1 + 192);
    v55 = 257;
    v39 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v37, v38, &TypeAllocSize);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v56, v39);
  }

  if (a6)
  {
    v40 = **(a2 + 120);
    if ((*(v40 + 8) & 0xFE) == 0x12)
    {
      v41 = *(v40 + 32);
      if (!v41)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v41 = 1;
    }

    v42 = 0;
    v43 = v41;
    do
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v59, *(a1 + 192));
      v44 = *(a2 + 120);
      v55 = 257;
      v45 = llvm::ConstantInt::get();
      Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v44, v45, &TypeAllocSize);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v56, Element);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v59, *(a1 + 192));
      v47 = *(a2 + 128);
      v55 = 257;
      v48 = llvm::ConstantInt::get();
      v49 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v47, v48, &TypeAllocSize);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v56, v49);
      ++v42;
    }

    while (v43 != v42);
  }

LABEL_33:
  if (*(a2 + 16) == 1)
  {
    std::string::append(&v52, ".rtz");
  }

  llvm::FunctionType::get();
  if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v50 = &v52;
LABEL_38:
    strlen(v50);
    goto LABEL_39;
  }

  v50 = v52.__r_.__value_.__r.__words[0];
  if (v52.__r_.__value_.__r.__words[0])
  {
    goto LABEL_38;
  }

LABEL_39:
  llvm::Module::getOrInsertFunction();
  v55 = 257;
  llvm::IRBuilderBase::CreateCall((a1 + 8), *(v51 + 24), v51, v56, v57, &TypeAllocSize);
  TypeAllocSize = llvm::MDString::get();
  llvm::MDTuple::getImpl();
  llvm::Instruction::setMetadata();
  if (v56 != v58)
  {
    free(v56);
  }

  if (v59[0] != v60)
  {
    free(v59[0]);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }
}

llvm::Value *llvm::IRBuilderBase::CreateZExtOrBitCast(unsigned int **this, llvm::Type **a2, llvm::Type *a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  ZExtOrBitCast = a2;
  if (*a2 != a3)
  {
    if (*(a2 + 16) > 0x14u)
    {
      ZExtOrBitCast = llvm::CastInst::CreateZExtOrBitCast();
      llvm::IRBuilderBase::Insert<llvm::CastInst>(this, ZExtOrBitCast, a4);
    }

    else
    {
      ZExtOrBitCast = (*(*this[9] + 288))(this[9], a2, a3, a4, a5);
      if (ZExtOrBitCast)
      {
        v8 = *(ZExtOrBitCast + 16) >= 0x1Cu;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        llvm::IRBuilderBase::Insert<llvm::CastInst>(this, ZExtOrBitCast, a4);
      }
    }
  }

  return ZExtOrBitCast;
}

llvm::BranchInst *AGCLLVMGen3TargetLowerer::buildWriteImageBlockSwitch(unsigned int **a1, uint64_t a2, llvm::Function *a3, unsigned int *a4, llvm::BasicBlock *a5, llvm::BasicBlock *a6, uint64_t a7)
{
  a1[7] = a4;
  a1[8] = a4 + 10;
  v11 = *(a2 + 104);
  v12 = a1[26];
  v25 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 47, v11, v12, v24);
  v14 = a1[24];
  v23 = 257;
  v15 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, Cast, v14, v22);
  if (*(a2 + 280))
  {
    v24[0] = "default";
    v25 = 259;
    operator new();
  }

  AGCLLVMGen3TargetLowerer::getUSCFormatFromState(*(a2 + 12), 0);
  v16 = llvm::ConstantInt::get();
  v17 = llvm::ConstantInt::get();
  v25 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), v17, v15, v24);
  v19 = llvm::ConstantInt::get();
  (*(*a1 + 202))(a1, a2, v16, Add, v19, a7);
  return llvm::IRBuilderBase::CreateBr(a1 + 1, a6, v20);
}

llvm::Instruction *AGCLLVMGen3TargetLowerer::buildPack9995(AGCLLVMGen3TargetLowerer *this, llvm::Value *a2)
{
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v10 = *(this + 26);
  v4 = *(this + 316);
  if (v4)
  {
    v5 = strlen(*(this + 316));
  }

  else
  {
    v5 = 0;
  }

  v6 = AGCLLVMGen3TargetLowerer::buildWriteConversionIntrinsic(this, &v8, v4, v5, "rgb9e5", 6, *(this + 25), a2);
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

llvm::Instruction *AGCLLVMGen3TargetLowerer::buildWriteConversionIntrinsic(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, llvm::Type *a7, llvm::Value *a8)
{
  v56 = *MEMORY[0x277D85DE8];
  v50[0] = a3;
  v50[1] = a4;
  v47 = *a2;
  v48 = *(a2 + 2);
  if (v48)
  {
    llvm::MetadataTracking::track();
  }

  v49 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v47, (a1 + 1));
  if (v48)
  {
    llvm::MetadataTracking::untrack();
  }

  AGCLLVMGen3TargetLowerer::getMemoryWriteIntrinsicArgsFromIR(a1, *a8, a5, a6);
  v15 = v14;
  llvm::StringRef::str(&v46, v50);
  AGCLLVMGen3TargetLowerer::getWriteSuffix(&__str, a1, v15);
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v17 = std::string::basic_string(&v54, &__str, size - 2, 0xFFFFFFFFFFFFFFFFLL, __p);
  v18 = std::string::insert(v17, 0, "sz");
  v19 = v18->__r_.__value_.__r.__words[2];
  *&v55.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
  v55.__r_.__value_.__r.__words[2] = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v55, ".");
  v21 = v20->__r_.__value_.__r.__words[2];
  *__p = *&v20->__r_.__value_.__l.__data_;
  v42[0].__locale_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v42[0].__locale_) >= 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if (SHIBYTE(v42[0].__locale_) >= 0)
  {
    locale_high = HIBYTE(v42[0].__locale_);
  }

  else
  {
    locale_high = __p[1];
  }

  std::string::insert(&__str, 0, v22, locale_high);
  if (SHIBYTE(v42[0].__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if ((*(*a8 + 8) & 0xFE) == 0x12)
  {
    v24 = *(*a8 + 32);
  }

  else
  {
    v24 = 1;
  }

  std::string::insert(&__str, 0, off_277E21FE8[v24 - 1]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = __str.__r_.__value_.__l.__size_;
  }

  std::string::append(&v46, p_str, v26);
  if (v24 == 3)
  {
    a8 = AGCLLVMBuilder::extendVector(a1, a8, 4, v27);
  }

  v28 = *a8;
  v55.__r_.__value_.__r.__words[0] = &v55.__r_.__value_.__r.__words[2];
  v55.__r_.__value_.__l.__size_ = 0x300000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v55, a1[24]);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v55, a1[24]);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v55, v28);
  v54.__r_.__value_.__r.__words[0] = &v54.__r_.__value_.__r.__words[2];
  v54.__r_.__value_.__l.__size_ = 0x300000000;
  v29 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v54, v29);
  v30 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v54, v30);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v54, a8);
  std::ostringstream::basic_ostringstream[abi:nn200100](__p);
  if ((*(a7 + 2) & 0xFE) == 0x12)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, ".v", 2);
    v31 = MEMORY[0x20F331C20](__p, *(a7 + 8));
    v32 = v31;
    v33 = "i";
    v34 = 1;
  }

  else
  {
    v33 = ".i";
    v32 = __p;
    v31 = __p;
    v34 = 2;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v31, v33, v34);
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(a7);
  MEMORY[0x20F331C20](v32, ScalarSizeInBits);
  std::stringbuf::str();
  if ((v52 & 0x80u) == 0)
  {
    v36 = v51;
  }

  else
  {
    v36 = v51[0];
  }

  if ((v52 & 0x80u) == 0)
  {
    v37 = v52;
  }

  else
  {
    v37 = v51[1];
  }

  std::string::append(&v46, v36, v37);
  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v53 = 257;
  v39 = llvm::IRBuilderBase::CreateCall(a1 + 1, *(v38 + 24), v38, v54.__r_.__value_.__l.__data_, LODWORD(v54.__r_.__value_.__r.__words[1]), v51);
  v51[0] = llvm::MDString::get();
  llvm::MDTuple::getImpl();
  llvm::Instruction::setMetadata();
  __p[0] = *MEMORY[0x277D82828];
  *(__p + *(__p[0] - 3)) = *(MEMORY[0x277D82828] + 24);
  __p[1] = (MEMORY[0x277D82878] + 16);
  if (v43 < 0)
  {
    operator delete(v42[7].__locale_);
  }

  __p[1] = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(v42);
  std::ostream::~ostream();
  MEMORY[0x20F331D40](&v44);
  if (v54.__r_.__value_.__l.__data_ != &v54.__r_.__value_.__r.__words[2])
  {
    free(v54.__r_.__value_.__l.__data_);
  }

  if (v55.__r_.__value_.__l.__data_ != &v55.__r_.__value_.__r.__words[2])
  {
    free(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  return v39;
}

unint64_t AGCLLVMGen3TargetLowerer::getMemoryWriteIntrinsicArgsFromIR(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if ((*(a2 + 8) & 0xFE) == 0x12)
  {
    v6 = **(a2 + 16);
  }

  if (a4)
  {
    Key = llvm::StringMapImpl::FindKey();
    if (Key == -1)
    {
      v8 = *(a1 + 2424);
    }

    else
    {
      v8 = Key;
    }

    v16 = *(*(*(a1 + 2416) + 8 * v8) + 8);
    v18 = HIDWORD(v16);
    v19 = HIWORD(v16);
  }

  else
  {
    llvm::Type::getPrimitiveSizeInBits(v6);
    v9 = llvm::TypeSize::operator unsigned long long();
    v11 = *(a1 + 2400);
    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = a1 + 2400;
    do
    {
      v13 = *(v11 + 32);
      v14 = v13 >= v9;
      v15 = v13 < v9;
      if (v14)
      {
        v12 = v11;
      }

      v11 = *(v11 + 8 * v15);
    }

    while (v11);
    if (v12 == a1 + 2400 || *(v12 + 32) > v9)
    {
LABEL_14:
      v12 = a1 + 2400;
    }

    v16 = *(v12 + 40);
    if ((*(a2 + 8) & 0xFE) == 0x12)
    {
      v17 = *(a2 + 32);
    }

    else
    {
      v17 = 1;
    }

    if (*(v6 + 2) >> 8 >= 0x21u && *(v6 + 2) == 13)
    {
      v17 /= *(*(a1 + 192) + 8) >> 12;
    }

    v20 = -1 << v17;
    v10.i32[0] = ~v20;
    v21 = vcnt_s8(v10);
    v21.i16[0] = vaddlv_u8(v21);
    if (WORD2(v16))
    {
      v19 = HIWORD(v16);
    }

    else
    {
      v19 = v21.u32[0];
    }

    if (WORD2(v16))
    {
      LOWORD(v18) = WORD2(*(v12 + 40));
    }

    else
    {
      LOWORD(v18) = ~v20;
    }
  }

  llvm::FixedVectorType::get();
  return (v19 << 48) | (v18 << 32) | v16;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildUnpack9995(AGCLLVMGen3TargetLowerer *this, llvm::Type **a2, llvm::Type *a3)
{
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v5 = *(this + 315);
  if (v5)
  {
    v6 = strlen(*(this + 315));
  }

  else
  {
    v6 = 0;
  }

  v7 = llvm::FixedVectorType::get();
  v8 = AGCLLVMGen3TargetLowerer::buildReadConversionIntrinsic(this, &v10, v5, v6, "rgb9e5", 6, v7, a2);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildReadConversionIntrinsic(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, llvm::Type ***a7, llvm::Type **Cast)
{
  v55 = *MEMORY[0x277D85DE8];
  v53[0] = a3;
  v53[1] = a4;
  v50 = *a2;
  v51 = *(a2 + 2);
  if (v51)
  {
    llvm::MetadataTracking::track();
  }

  v52 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v50, a1 + 8);
  if (v51)
  {
    llvm::MetadataTracking::untrack();
  }

  IntrinsicArgsFromIR = AGCLLVMGen3TargetLowerer::getMemoryReadIntrinsicArgsFromIR(a1, a7, a5, a6);
  v16 = v15;
  llvm::StringRef::str(&v49, v53);
  AGCLLVMGen3TargetLowerer::getReadSuffix(&__str, a1, v16, HIWORD(IntrinsicArgsFromIR));
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v18 = std::string::basic_string(&v54, &__str, size - 2, 0xFFFFFFFFFFFFFFFFLL, __p);
  v19 = std::string::insert(v18, 0, "sz");
  v20 = v19->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = std::string::append(&v42, ".");
  v22 = v21->__r_.__value_.__r.__words[2];
  *__p = *&v21->__r_.__value_.__l.__data_;
  v45[0].__locale_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v45[0].__locale_) >= 0)
  {
    v23 = __p;
  }

  else
  {
    v23 = __p[0];
  }

  if (SHIBYTE(v45[0].__locale_) >= 0)
  {
    locale_high = HIBYTE(v45[0].__locale_);
  }

  else
  {
    locale_high = __p[1];
  }

  std::string::insert(&__str, 2uLL, v23, locale_high);
  if (SHIBYTE(v45[0].__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = __str.__r_.__value_.__l.__size_;
  }

  std::string::append(&v49, p_str, v26);
  std::ostringstream::basic_ostringstream[abi:nn200100](__p);
  v27 = *Cast;
  v28 = *(*Cast + 2);
  if (v28 == 15)
  {
    v29 = v28 >> 8;
    v30 = llvm::PointerType::get();
    v43 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, Cast, v30, &v42);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, ".p", 2);
    MEMORY[0x20F331C20](__p, v29);
    if ((llvm::Type::isOpaquePointerTy(*Cast) & 1) == 0)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "i8", 2);
    }
  }

  else
  {
    if ((v28 & 0xFE) == 0x12)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, ".v", 2);
      v31 = MEMORY[0x20F331C20](__p, *(v27 + 8));
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v31, "i", 1);
      ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v27);
      v33 = v31;
    }

    else
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, ".i", 2);
      ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v27);
      v33 = __p;
    }

    MEMORY[0x20F331C20](v33, ScalarSizeInBits);
  }

  std::stringbuf::str();
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = &v42;
  }

  else
  {
    v34 = v42.__r_.__value_.__r.__words[0];
  }

  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v35 = v42.__r_.__value_.__l.__size_;
  }

  std::string::append(&v49, v34, v35);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = &v49;
  }

  else
  {
    v36 = v49.__r_.__value_.__r.__words[0];
  }

  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = SHIBYTE(v49.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v37 = v49.__r_.__value_.__l.__size_;
  }

  v38 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(a1, v36, v37, v16, *(a1 + 192), *(a1 + 192), *Cast);
  v54.__r_.__value_.__r.__words[0] = llvm::ConstantInt::get();
  v54.__r_.__value_.__l.__size_ = llvm::ConstantInt::get();
  v54.__r_.__value_.__r.__words[2] = Cast;
  v43 = 257;
  v39 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v38 + 24), v38, &v54, 3, &v42);
  v40 = AGCLLVMGen3TargetLowerer::reconcileLLVMReadIntrinsicResultWithIR(a1, a7, v16, v39);
  __p[0] = *MEMORY[0x277D82828];
  *(__p + *(__p[0] - 3)) = *(MEMORY[0x277D82828] + 24);
  __p[1] = (MEMORY[0x277D82878] + 16);
  if (v46 < 0)
  {
    operator delete(v45[7].__locale_);
  }

  __p[1] = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(v45);
  std::ostream::~ostream();
  MEMORY[0x20F331D40](&v47);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  return v40;
}

unint64_t AGCLLVMGen3TargetLowerer::getMemoryReadIntrinsicArgsFromIR(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v6 = *(a2 + 8);
  if (v6 == 15)
  {
    v4 = **(a2 + 16);
    v6 = *(v4 + 8);
  }

  v7 = v4;
  if ((v6 & 0xFE) == 0x12)
  {
    v7 = **(v4 + 16);
  }

  if (a4)
  {
    Key = llvm::StringMapImpl::FindKey();
    if (Key == -1)
    {
      v9 = *(a1 + 2424);
    }

    else
    {
      v9 = Key;
    }

    v17 = *(*(*(a1 + 2416) + 8 * v9) + 8);
    v18 = HIDWORD(v17);
    v19 = HIWORD(v17);
  }

  else
  {
    llvm::Type::getPrimitiveSizeInBits(v7);
    v10 = llvm::TypeSize::operator unsigned long long();
    v12 = *(a1 + 2400);
    if (!v12)
    {
      goto LABEL_16;
    }

    v13 = a1 + 2400;
    do
    {
      v14 = *(v12 + 32);
      v15 = v14 >= v10;
      v16 = v14 < v10;
      if (v15)
      {
        v13 = v12;
      }

      v12 = *(v12 + 8 * v16);
    }

    while (v12);
    if (v13 == a1 + 2400 || *(v13 + 32) > v10)
    {
LABEL_16:
      v13 = a1 + 2400;
    }

    v17 = *(v13 + 40);
    if (WORD2(v17))
    {
      v18 = HIDWORD(v17);
      v19 = HIWORD(v17);
    }

    else
    {
      if ((*(v4 + 8) & 0xFE) == 0x12)
      {
        v20 = *(v4 + 32);
      }

      else
      {
        LOBYTE(v20) = 1;
      }

      LOWORD(v18) = ~(-1 << v20);
      v11.i32[0] = ~(-1 << v20);
      v21 = vcnt_s8(v11);
      v21.i16[0] = vaddlv_u8(v21);
      v19 = v21.u32[0];
    }
  }

  if ((v19 - 2) <= 2u)
  {
    llvm::FixedVectorType::get();
  }

  return (v18 << 32) | (v19 << 48) | v17;
}

llvm::Instruction *AGCLLVMGen3TargetLowerer::buildPack111110(AGCLLVMGen3TargetLowerer *this, llvm::Value *a2)
{
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v10 = *(this + 26);
  v4 = *(this + 316);
  if (v4)
  {
    v5 = strlen(*(this + 316));
  }

  else
  {
    v5 = 0;
  }

  v6 = AGCLLVMGen3TargetLowerer::buildWriteConversionIntrinsic(this, &v8, v4, v5, "rg11b10f", 8, *(this + 25), a2);
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildUnpack111110(AGCLLVMGen3TargetLowerer *this, llvm::Type **a2, llvm::Type *a3)
{
  v10 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (this + 8));
  v12 = *(this + 26);
  v5 = *(this + 315);
  if (v5)
  {
    v6 = strlen(*(this + 315));
  }

  else
  {
    v6 = 0;
  }

  v7 = llvm::FixedVectorType::get();
  v8 = AGCLLVMGen3TargetLowerer::buildReadConversionIntrinsic(this, &v10, v5, v6, "rg11b10f", 8, v7, a2);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

llvm::Instruction *AGCLLVMGen3TargetLowerer::buildPack1010102(AGCLLVMGen3TargetLowerer *this, llvm::Value *a2, int a3, char a4)
{
  if (!a3 || (a4 & 1) != 0)
  {
    v8 = *(*this + 1528);

    return v8();
  }

  else
  {
    v11 = *(this + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (this + 8));
    v13 = *(this + 26);
    v6 = *(this + 316);
    if (v6)
    {
      v7 = strlen(*(this + 316));
    }

    else
    {
      v7 = 0;
    }

    v10 = AGCLLVMGen3TargetLowerer::buildWriteConversionIntrinsic(this, &v11, v6, v7, "rgb10a2", 7, *(this + 25), a2);
    if (v12)
    {
      llvm::MetadataTracking::untrack();
    }

    return v10;
  }
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildUnpack1010102(AGCLLVMGen3TargetLowerer *this, llvm::Type **a2, llvm::Type *a3, unsigned int a4, int a5, char a6)
{
  if (!a5 || (a6 & 1) != 0)
  {
    v10 = *(*this + 1536);

    return v10();
  }

  else
  {
    v14 = *(this + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (this + 8));
    v16 = *(this + 26);
    v8 = *(this + 315);
    if (v8)
    {
      v9 = strlen(*(this + 315));
    }

    else
    {
      v9 = 0;
    }

    v12 = llvm::FixedVectorType::get();
    v13 = AGCLLVMGen3TargetLowerer::buildReadConversionIntrinsic(this, &v14, v8, v9, "rgb10a2", 7, v12, a2);
    if (v15)
    {
      llvm::MetadataTracking::untrack();
    }

    return v13;
  }
}

void AGCLLVMGen3TargetLowerer::exceededResourceLimits(AGCLLVMGen3TargetLowerer *this@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, int a4@<W3>, unsigned int a5@<W4>, unsigned int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v15 = a7 + a4;
  std::string::basic_string[abi:nn200100]<0>(&v103, &unk_20E75F419);
  v16 = (*(**(this + 115) + 24))(*(this + 115), a8);
  v17 = (*(**(this + 115) + 16))(*(this + 115));
  __val = a5;
  v18 = a5 + a2;
  v19 = (*(**(this + 115) + 40))(*(this + 115));
  v94 = a6;
  v20 = a6 + a3;
  v21 = (*(**(this + 115) + 32))(*(this + 115));
  if (v15 > 0x10 || (v16 >= a2 ? (v22 = v17 >= a3) : (v22 = 0), v22 ? (v23 = v18 > v19) : (v23 = 1), !v23 ? (v24 = v20 > v21) : (v24 = 1), v24))
  {
    v22 = v16 >= a2;
    v27 = v21;
    if (!v22)
    {
      std::to_string(&v97, a2);
      v28 = std::string::insert(&v97, 0, " buffers (");
      v29 = v28->__r_.__value_.__r.__words[2];
      *&v98.__r_.__value_.__l.__data_ = *&v28->__r_.__value_.__l.__data_;
      v98.__r_.__value_.__r.__words[2] = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      v30 = std::string::append(&v98, "/");
      v31 = v30->__r_.__value_.__r.__words[2];
      *&v99.__r_.__value_.__l.__data_ = *&v30->__r_.__value_.__l.__data_;
      v99.__r_.__value_.__r.__words[2] = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      v32 = (*(**(this + 115) + 24))(*(this + 115), a8);
      std::to_string(&v96, v32);
      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v96;
      }

      else
      {
        v33 = v96.__r_.__value_.__r.__words[0];
      }

      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v96.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v96.__r_.__value_.__l.__size_;
      }

      v35 = std::string::append(&v99, v33, size);
      v36 = v35->__r_.__value_.__r.__words[2];
      *&v100.__r_.__value_.__l.__data_ = *&v35->__r_.__value_.__l.__data_;
      v100.__r_.__value_.__r.__words[2] = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      v37 = std::string::append(&v100, ")");
      v38 = v37->__r_.__value_.__r.__words[2];
      v101 = *&v37->__r_.__value_.__l.__data_;
      v102 = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      if (v102 >= 0)
      {
        v39 = &v101;
      }

      else
      {
        v39 = v101;
      }

      if (v102 >= 0)
      {
        v40 = HIBYTE(v102);
      }

      else
      {
        v40 = *(&v101 + 1);
      }

      std::string::append(&v103, v39, v40);
      if (SHIBYTE(v102) < 0)
      {
        operator delete(v101);
      }

      if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v100.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      v21 = v27;
    }

    if (v17 < a3)
    {
      std::to_string(&v97, a3);
      v41 = std::string::insert(&v97, 0, " textures (");
      v42 = v41->__r_.__value_.__r.__words[2];
      *&v98.__r_.__value_.__l.__data_ = *&v41->__r_.__value_.__l.__data_;
      v98.__r_.__value_.__r.__words[2] = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      v43 = std::string::append(&v98, "/");
      v44 = v43->__r_.__value_.__r.__words[2];
      *&v99.__r_.__value_.__l.__data_ = *&v43->__r_.__value_.__l.__data_;
      v99.__r_.__value_.__r.__words[2] = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      v45 = (*(**(this + 115) + 16))(*(this + 115));
      std::to_string(&v96, v45);
      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = &v96;
      }

      else
      {
        v46 = v96.__r_.__value_.__r.__words[0];
      }

      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v47 = v96.__r_.__value_.__l.__size_;
      }

      v48 = std::string::append(&v99, v46, v47);
      v49 = v48->__r_.__value_.__r.__words[2];
      *&v100.__r_.__value_.__l.__data_ = *&v48->__r_.__value_.__l.__data_;
      v100.__r_.__value_.__r.__words[2] = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      v50 = std::string::append(&v100, ")");
      v51 = v50->__r_.__value_.__r.__words[2];
      v101 = *&v50->__r_.__value_.__l.__data_;
      v102 = v51;
      v50->__r_.__value_.__l.__size_ = 0;
      v50->__r_.__value_.__r.__words[2] = 0;
      v50->__r_.__value_.__r.__words[0] = 0;
      if (v102 >= 0)
      {
        v52 = &v101;
      }

      else
      {
        v52 = v101;
      }

      if (v102 >= 0)
      {
        v53 = HIBYTE(v102);
      }

      else
      {
        v53 = *(&v101 + 1);
      }

      std::string::append(&v103, v52, v53);
      if (SHIBYTE(v102) < 0)
      {
        operator delete(v101);
      }

      if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v100.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      v21 = v27;
    }

    if (v15 >= 0x11)
    {
      std::to_string(&v97, v15);
      v54 = std::string::insert(&v97, 0, " samplers (");
      v55 = v54->__r_.__value_.__r.__words[2];
      *&v98.__r_.__value_.__l.__data_ = *&v54->__r_.__value_.__l.__data_;
      v98.__r_.__value_.__r.__words[2] = v55;
      v54->__r_.__value_.__l.__size_ = 0;
      v54->__r_.__value_.__r.__words[2] = 0;
      v54->__r_.__value_.__r.__words[0] = 0;
      v56 = std::string::append(&v98, "/");
      v57 = v56->__r_.__value_.__r.__words[2];
      *&v99.__r_.__value_.__l.__data_ = *&v56->__r_.__value_.__l.__data_;
      v99.__r_.__value_.__r.__words[2] = v57;
      v56->__r_.__value_.__l.__size_ = 0;
      v56->__r_.__value_.__r.__words[2] = 0;
      v56->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v96, 16);
      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = &v96;
      }

      else
      {
        v58 = v96.__r_.__value_.__r.__words[0];
      }

      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v59 = v96.__r_.__value_.__l.__size_;
      }

      v60 = std::string::append(&v99, v58, v59);
      v61 = v60->__r_.__value_.__r.__words[2];
      *&v100.__r_.__value_.__l.__data_ = *&v60->__r_.__value_.__l.__data_;
      v100.__r_.__value_.__r.__words[2] = v61;
      v60->__r_.__value_.__l.__size_ = 0;
      v60->__r_.__value_.__r.__words[2] = 0;
      v60->__r_.__value_.__r.__words[0] = 0;
      v62 = std::string::append(&v100, ")");
      v63 = v62->__r_.__value_.__r.__words[2];
      v101 = *&v62->__r_.__value_.__l.__data_;
      v102 = v63;
      v62->__r_.__value_.__l.__size_ = 0;
      v62->__r_.__value_.__r.__words[2] = 0;
      v62->__r_.__value_.__r.__words[0] = 0;
      if (v102 >= 0)
      {
        v64 = &v101;
      }

      else
      {
        v64 = v101;
      }

      if (v102 >= 0)
      {
        v65 = HIBYTE(v102);
      }

      else
      {
        v65 = *(&v101 + 1);
      }

      std::string::append(&v103, v64, v65);
      if (SHIBYTE(v102) < 0)
      {
        operator delete(v101);
      }

      if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v100.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      v21 = v27;
    }

    v23 = v18 > v19;
    v26 = a9;
    if (v23)
    {
      std::to_string(&v97, __val);
      v66 = std::string::insert(&v97, 0, " indirect buffers (");
      v67 = v66->__r_.__value_.__r.__words[2];
      *&v98.__r_.__value_.__l.__data_ = *&v66->__r_.__value_.__l.__data_;
      v98.__r_.__value_.__r.__words[2] = v67;
      v66->__r_.__value_.__l.__size_ = 0;
      v66->__r_.__value_.__r.__words[2] = 0;
      v66->__r_.__value_.__r.__words[0] = 0;
      v68 = std::string::append(&v98, "/");
      v69 = v68->__r_.__value_.__r.__words[2];
      *&v99.__r_.__value_.__l.__data_ = *&v68->__r_.__value_.__l.__data_;
      v99.__r_.__value_.__r.__words[2] = v69;
      v68->__r_.__value_.__l.__size_ = 0;
      v68->__r_.__value_.__r.__words[2] = 0;
      v68->__r_.__value_.__r.__words[0] = 0;
      v70 = (*(**(this + 115) + 40))(*(this + 115));
      std::to_string(&v96, v70);
      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v71 = &v96;
      }

      else
      {
        v71 = v96.__r_.__value_.__r.__words[0];
      }

      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v72 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v72 = v96.__r_.__value_.__l.__size_;
      }

      v73 = std::string::append(&v99, v71, v72);
      v74 = v73->__r_.__value_.__r.__words[2];
      *&v100.__r_.__value_.__l.__data_ = *&v73->__r_.__value_.__l.__data_;
      v100.__r_.__value_.__r.__words[2] = v74;
      v73->__r_.__value_.__l.__size_ = 0;
      v73->__r_.__value_.__r.__words[2] = 0;
      v73->__r_.__value_.__r.__words[0] = 0;
      v75 = std::string::append(&v100, ")");
      v76 = v75->__r_.__value_.__r.__words[2];
      v101 = *&v75->__r_.__value_.__l.__data_;
      v102 = v76;
      v75->__r_.__value_.__l.__size_ = 0;
      v75->__r_.__value_.__r.__words[2] = 0;
      v75->__r_.__value_.__r.__words[0] = 0;
      if (v102 >= 0)
      {
        v77 = &v101;
      }

      else
      {
        v77 = v101;
      }

      if (v102 >= 0)
      {
        v78 = HIBYTE(v102);
      }

      else
      {
        v78 = *(&v101 + 1);
      }

      std::string::append(&v103, v77, v78);
      if (SHIBYTE(v102) < 0)
      {
        operator delete(v101);
      }

      if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v100.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      v21 = v27;
    }

    if (v20 > v21)
    {
      std::to_string(&v97, v94);
      v79 = std::string::insert(&v97, 0, " indirect textures (");
      v80 = v79->__r_.__value_.__r.__words[2];
      *&v98.__r_.__value_.__l.__data_ = *&v79->__r_.__value_.__l.__data_;
      v98.__r_.__value_.__r.__words[2] = v80;
      v79->__r_.__value_.__l.__size_ = 0;
      v79->__r_.__value_.__r.__words[2] = 0;
      v79->__r_.__value_.__r.__words[0] = 0;
      v81 = std::string::append(&v98, "/");
      v82 = v81->__r_.__value_.__r.__words[2];
      *&v99.__r_.__value_.__l.__data_ = *&v81->__r_.__value_.__l.__data_;
      v99.__r_.__value_.__r.__words[2] = v82;
      v81->__r_.__value_.__l.__size_ = 0;
      v81->__r_.__value_.__r.__words[2] = 0;
      v81->__r_.__value_.__r.__words[0] = 0;
      v83 = (*(**(this + 115) + 32))(*(this + 115));
      std::to_string(&v96, v83);
      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v84 = &v96;
      }

      else
      {
        v84 = v96.__r_.__value_.__r.__words[0];
      }

      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v85 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v85 = v96.__r_.__value_.__l.__size_;
      }

      v86 = std::string::append(&v99, v84, v85);
      v87 = v86->__r_.__value_.__r.__words[2];
      *&v100.__r_.__value_.__l.__data_ = *&v86->__r_.__value_.__l.__data_;
      v100.__r_.__value_.__r.__words[2] = v87;
      v86->__r_.__value_.__l.__size_ = 0;
      v86->__r_.__value_.__r.__words[2] = 0;
      v86->__r_.__value_.__r.__words[0] = 0;
      v88 = std::string::append(&v100, ")");
      v89 = v88->__r_.__value_.__r.__words[2];
      v101 = *&v88->__r_.__value_.__l.__data_;
      v102 = v89;
      v88->__r_.__value_.__l.__size_ = 0;
      v88->__r_.__value_.__r.__words[2] = 0;
      v88->__r_.__value_.__r.__words[0] = 0;
      if (v102 >= 0)
      {
        v90 = &v101;
      }

      else
      {
        v90 = v101;
      }

      if (v102 >= 0)
      {
        v91 = HIBYTE(v102);
      }

      else
      {
        v91 = *(&v101 + 1);
      }

      std::string::append(&v103, v90, v91);
      if (SHIBYTE(v102) < 0)
      {
        operator delete(v101);
      }

      if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v100.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }
    }

    v25 = 1;
  }

  else
  {
    v25 = 0;
    v26 = a9;
  }

  *v26 = v25;
  v92 = (v26 + 8);
  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v92, v103.__r_.__value_.__l.__data_, v103.__r_.__value_.__l.__size_);
    if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v103.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *v92 = v103;
  }
}

llvm::Instruction *AGCLLVMGen3TargetLowerer::buildDepthf(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v17 = *a2;
  v18 = *(a2 + 16);
  if (v18)
  {
    llvm::MetadataTracking::track();
  }

  v19 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v17);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 1616);
  if (v6)
  {
    v7 = strlen(*(a1 + 1616));
  }

  else
  {
    v7 = 0;
  }

  v8 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v6, v7, *(a1 + 144), *(a1 + 168), *(a1 + 192));
  v9 = llvm::ConstantInt::get();
  v14 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (a1 + 8));
  v16 = *(a1 + 104);
  v10 = (*(*a1 + 208))(a1, &v14, v9);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  v20[0] = a3;
  v20[1] = v10;
  v13 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v8 + 24), v8, v20, 2, v12);
}

uint64_t AGCLLVMGen3TargetLowerer::buildGammaSpaceConversion(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *a2;
  v8 = *(a2 + 16);
  if (v8)
  {
    llvm::MetadataTracking::track();
  }

  v9 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v7);
  if (v8)
  {
    llvm::MetadataTracking::untrack();
  }

  return a3;
}

uint64_t AGCLLVMGen3TargetLowerer::buildGammaExpansion(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *a2;
  v8 = *(a2 + 16);
  if (v8)
  {
    llvm::MetadataTracking::track();
  }

  v9 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v7);
  if (v8)
  {
    llvm::MetadataTracking::untrack();
  }

  return a3;
}

uint64_t AGCLLVMGen3TargetLowerer::getVertexInputRegister(uint64_t a1, _DWORD *a2, int a3)
{
  if ((a3 - 1) > 4)
  {
    return 0;
  }

  result = dword_20E716308[a3 - 1];
  if (*a2 <= result)
  {
    *a2 = result + 1;
  }

  return result;
}

void AGCLLVMGen3TargetLowerer::setSlcCachePolicyForImageWrites(AGCLLVMGen3TargetLowerer *this, llvm::Function *a2)
{
  llvm::Function::addFnAttr();
  llvm::Function::addFnAttr();
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    Value = AGCEnv::getValue("AGX_G10_IMAGE_WRITE_CACHE_CTL", v2);
    if (Value)
    {
      strlen(Value);
      llvm::Function::addFnAttr();
    }
  }

  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    v4 = AGCEnv::getValue("AGX_IMAGE_WRITE_PERSISTANCE", v2);
    if (v4)
    {
      strlen(v4);

      llvm::Function::addFnAttr();
    }
  }
}

uint64_t AGCLLVMGen3TargetLowerer::buildManualResolve(llvm::FixedVectorType **a1, uint64_t a2, AGCLLVMGen3TargetLowerer *a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v45 = *a2;
  v46 = *(a2 + 16);
  if (v46)
  {
    llvm::MetadataTracking::track();
  }

  v40 = a7;
  v47 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v45);
  if (v46)
  {
    llvm::MetadataTracking::untrack();
  }

  v17 = a1[24];
  v44 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, a8, v17, v43);
  if (a4 == 3)
  {
    v19 = 4;
  }

  else
  {
    v19 = a4;
  }

  v20 = a1[21];
  if (v19 != 1)
  {
    v20 = llvm::FixedVectorType::get();
  }

  v39 = v19;
  v42 = v20;
  v41[0] = AGCLLVMGen3TargetLowerer::getUSCFormatFromState(a3, a5);
  v41[1] = a3;
  v41[2] = ~(-1 << a4);
  v41[3] = a4;
  NullValue = llvm::Constant::getNullValue(v20, v21);
  if (a6)
  {
    v23 = 0;
    v24 = v40;
    do
    {
      v25 = v42;
      v26 = llvm::ConstantInt::get();
      LOBYTE(v36) = 1;
      v27 = (*(*a1 + 211))(a1, v41, a6, v40, v25, Cast, v26, 0, a9, a10, v36);
      v44 = 257;
      NullValue = llvm::IRBuilderBase::CreateFAdd((a1 + 1), NullValue, v27, v43);
      ++v23;
    }

    while (a6 != v23);
  }

  else
  {
    v24 = v40;
  }

  v28 = llvm::ConstantFP::get();
  v30 = AGCLLVMBuilder::splat(a1, v39, v28, v29);
  v44 = 257;
  FDiv = llvm::IRBuilderBase::CreateFDiv((a1 + 1), NullValue, v30, v43);
  v42 = llvm::FixedVectorType::get();
  v33 = AGCLLVMBuilder::extendVector(a1, FDiv, 4, v32);
  v34 = llvm::ConstantInt::get();
  HIBYTE(v37) = 1;
  LOBYTE(v37) = *(a1 + 1889);
  return (*(*a1 + 212))(a1, v41, a6, v24, v33, Cast, v34, 1, 0, a9, a10, v37);
}

uint64_t AGCLLVMGen3TargetLowerer::buildLocalID(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v18, "llvm.agx2.local.", "");
  llvm::SmallVectorTemplateBase<char,true>::push_back(&v18, aXyz[a4]);
  v15 = *a2;
  v16 = *(a2 + 16);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1, v18, v19, *(a1 + 200));
  v14 = 257;
  v9 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(inserted + 24), inserted, 0, 0, v13);
  v12[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v9, a3, v12);
  if (v18 != v20)
  {
    free(v18);
  }

  return Cast;
}

uint64_t *AGCLLVMGen3TargetLowerer::buildCopyOffChipMRTPixelData@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v6) = a3;
  v54[2] = *MEMORY[0x277D85DE8];
  v51 = *a2;
  v52 = *(a2 + 16);
  if (v52)
  {
    llvm::MetadataTracking::track();
  }

  v53 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v51);
  if (v52)
  {
    llvm::MetadataTracking::untrack();
  }

  v9 = *(a4 + 4 * v6);
  v34 = *(a4 + 72);
  v10 = *(a1 + 1032);
  if (v10)
  {
    v11 = strlen(*(a1 + 1032));
  }

  else
  {
    v11 = 0;
  }

  v29 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v10, v11, *(a1 + 144), *(a1 + 192), *(a1 + 192));
  v54[0] = llvm::ConstantInt::get();
  v54[1] = llvm::ConstantInt::get();
  if (a5)
  {
    v50 = 257;
    llvm::IRBuilderBase::CreateCall((a1 + 8), *(v29 + 24), v29, v54, 2, v48);
  }

  if (v6 <= 7)
  {
    v6 = v6;
    v32 = v9;
    do
    {
      if (((v34 >> v6) & 1) != 0 || ((v34 >> v6) & 0x100) != 0)
      {
        if (*(a4 + 4 * v6) != v9)
        {
          break;
        }

        v12 = llvm::User::operator new(0x58);
        v48[0] = "agc.emit_info";
        v36 = v36 & 0xFFFFFFFF00000000 | v6;
        v49 = v36;
        v50 = 2051;
        llvm::GlobalVariable::GlobalVariable();
        llvm::GlobalObject::setSection();
        v13 = *(a1 + 440);
        v14 = AGCLLVMBuilder::buildGlobalMetadata(a1, v12, 5u, v6);
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v13, v14);
        v50 = 257;
        Load = AGCLLVMBuilder::CreateLoad(a1, v12, v48);
        if (*(a1 + 1955) == 1)
        {
          v15 = llvm::User::operator new(0x58);
          v48[0] = "agc.slab_index";
          v31 = v31 & 0xFFFFFFFF00000000 | v6;
          v49 = v31;
          v50 = 2051;
          v16 = llvm::GlobalVariable::GlobalVariable();
          *(v16 + 80) |= 1u;
          llvm::GlobalObject::setSection();
          v17 = *(a1 + 440);
          v18 = AGCLLVMBuilder::buildGlobalMetadata(a1, v15, 0x8Du, v6);
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v17, v18);
          v50 = 257;
          v19 = AGCLLVMBuilder::CreateLoad(a1, v15, v48);
          v20 = *(a1 + 192);
          v47 = 257;
          Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v19, v20, v46);
        }

        else
        {
          Cast = llvm::ConstantInt::get();
        }

        v22 = Cast;
        v43 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v44, (a1 + 8));
        v45 = *(a1 + 104);
        v23 = (*(*a1 + 208))(a1, &v43, v22);
        if (v44)
        {
          llvm::MetadataTracking::untrack();
        }

        v38 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v39, (a1 + 8));
        v40 = *(a1 + 104);
        v24 = *(a4 + 4 * v6);
        v25 = *(a4 + 76);
        v26 = llvm::ConstantInt::get();
        v27 = llvm::ConstantInt::get();
        AGCLLVMGen3TargetLowerer::buildCopyOffChipMRTPixelDataStateless(v41, a1, &v38, BYTE1(v24), (v24 >> 26) & 7, v25 & 0xF, HIBYTE(v24) & 1, a5, v26, Load, v27, v22, v23);
        if (v42)
        {
          llvm::MetadataTracking::untrack();
        }

        if (v39)
        {
          llvm::MetadataTracking::untrack();
        }

        v9 = v32;
      }

      ++v6;
    }

    while (v6 != 8);
  }

  if (a5)
  {
    v50 = 257;
    llvm::IRBuilderBase::CreateCall((a1 + 8), *(v29 + 24), v29, v54, 2, v48);
  }

  *a6 = *(a1 + 56);
  result = llvm::IRBuilderBase::getCurrentDebugLocation((a6 + 16), (a1 + 8));
  *(a6 + 24) = *(a1 + 104);
  return result;
}

uint64_t *AGCLLVMGen3TargetLowerer::buildCopyOffChipMRTPixelDataStateless(uint64_t a1, uint64_t a2, uint64_t a3, AGCLLVMGen3TargetLowerer *a4, __int16 a5, uint64_t a6, int a7, int a8, llvm::Value *a9, uint64_t a10, llvm::Value *a11, uint64_t a12, uint64_t a13)
{
  v60 = *MEMORY[0x277D85DE8];
  v54 = *a3;
  v55 = *(a3 + 16);
  if (v55)
  {
    llvm::MetadataTracking::track();
  }

  v56 = *(a3 + 24);
  AGCLLVMTargetLowerer::SetIP(a2, &v54);
  if (v55)
  {
    llvm::MetadataTracking::untrack();
  }

  v20 = *(a2 + 192);
  v58 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a2 + 8, 38, a10, v20, &v57);
  v22 = llvm::ConstantInt::get();
  v58 = 257;
  Sub = llvm::IRBuilderBase::CreateSub((a2 + 8), a9, v22, &v57);
  v53 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((a2 + 8), a11, Sub, v52);
  v51 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a2 + 8), Cast, Mul, &v50);
  v48 = 0;
  v49 = 0;
  AGCLLVMGen3TargetLowerer::fragmentOutputConfiguration(&v57, a2, a4, 0, 0, 0);
  if ((v59 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v49 = llvm::FixedVectorType::get();
  LOWORD(v48) = AGCLLVMGen3TargetLowerer::getUSCFormatFromState(a4, a7);
  WORD1(v48) = a4;
  WORD2(v48) = (1 << a5) - 1;
  HIWORD(v48) = a5;
  if (!a8)
  {
    *&v57 = "itr_x";
    v58 = 259;
    operator new();
  }

  InsertElement = llvm::UndefValue::get();
  v27 = 0;
  v28 = 1;
  do
  {
    v29 = v28;
    v45 = *(a2 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v46, (a2 + 8));
    v47 = *(a2 + 104);
    v30 = (*(*a2 + 272))(a2, &v45, *(a2 + 192), v27);
    v58 = 257;
    v31 = llvm::ConstantInt::get();
    InsertElement = llvm::IRBuilderBase::CreateInsertElement((a2 + 8), InsertElement, v30, v31, &v57);
    if (v46)
    {
      llvm::MetadataTracking::untrack();
    }

    v28 = 0;
    v27 = 1;
  }

  while ((v29 & 1) != 0);
  v32 = (*(*a2 + 1704))(a2, WORD1(v48), HIWORD(v48), a6, Add, InsertElement);
  if (a6)
  {
    GEP = v32;
    v35 = v33;
    v36 = 0;
    do
    {
      v37 = llvm::ConstantInt::get();
      EMRTTileBuffer = AGCLLVMGen3TargetLowerer::buildLoadEMRTTileBuffer(a2, &v48, v37, GEP);
      v39 = llvm::ConstantInt::get();
      v58 = 257;
      GEP = llvm::IRBuilderBase::CreateGEP((a2 + 8), v35, GEP, v39, &v57);
      v40 = llvm::ConstantInt::get();
      BYTE1(v42) = 1;
      LOBYTE(v42) = *(a2 + 1889);
      (*(*a2 + 1696))(v44, a2, &v48, a6, a11, EMRTTileBuffer, Cast, v40, 1, InsertElement, a12, a13, v42);
      if (v44[2])
      {
        llvm::MetadataTracking::untrack();
      }

      ++v36;
    }

    while (a6 > v36);
  }

  *a1 = *(a2 + 56);
  result = llvm::IRBuilderBase::getCurrentDebugLocation((a1 + 16), (a2 + 8));
  *(a1 + 24) = *(a2 + 104);
  return result;
}

_BYTE *AGCLLVMGen3TargetLowerer::fragmentOutputConfiguration(_BYTE *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v10 = result;
  v32 = *MEMORY[0x277D85DE8];
  if (a3 <= 11)
  {
    if (a3 <= 5)
    {
      if ((a3 - 2) < 2)
      {
LABEL_21:
        if (a5)
        {
          v11 = llvm::FixedVectorType::get();
          goto LABEL_26;
        }

        v11 = *(a2 + 312);
        goto LABEL_31;
      }

      if ((a3 - 4) >= 2)
      {
        goto LABEL_59;
      }

      v11 = *(a2 + 320);
    }

    else
    {
      if ((a3 - 6) < 2)
      {
LABEL_25:
        v11 = *(a2 + 312);
        goto LABEL_26;
      }

      if ((a3 - 8) < 2)
      {
        v11 = *(a2 + 328);
      }

      else
      {
        if ((a3 - 10) >= 2)
        {
          goto LABEL_59;
        }

        v11 = *(a2 + 336);
      }
    }

LABEL_31:
    v14 = 320;
    if (a3 <= 11)
    {
      if ((a3 - 2) < 4)
      {
        v26 = 0;
LABEL_42:
        v13 = v11;
        goto LABEL_43;
      }

      if ((a3 - 6) >= 4)
      {
LABEL_41:
        v26 = 0;
        v14 = 336;
        goto LABEL_42;
      }

LABEL_37:
      v26 = 0;
      v13 = v11;
      goto LABEL_38;
    }

    if (a3 > 0x16)
    {
      goto LABEL_63;
    }

    if (((1 << a3) & 0x798000) != 0)
    {
      goto LABEL_37;
    }

    if (a3 == 17)
    {
      goto LABEL_41;
    }

    if (a3 != 18)
    {
LABEL_63:
      v26 = 0;
      v13 = v11;
      if ((a3 - 13) < 2)
      {
        goto LABEL_43;
      }

      goto LABEL_38;
    }

LABEL_62:
    v13 = v11;
    v26 = 0x200000001;
    v11 = *(a2 + 328);
    goto LABEL_38;
  }

  if (a3 > 17)
  {
    if (a3 > 19)
    {
      if ((a3 - 20) < 2)
      {
        v12 = 296;
        if (*(a2 + 1936))
        {
          v12 = 312;
        }

        v11 = *(a2 + v12);
        if (a5 && *(a2 + 1936))
        {
          v11 = llvm::FixedVectorType::get();
        }

        goto LABEL_31;
      }

      if (a3 == 22)
      {
        goto LABEL_4;
      }

      goto LABEL_59;
    }

    if (a3 == 18)
    {
      v11 = *(a2 + 240);
      goto LABEL_62;
    }

    goto LABEL_21;
  }

  if ((a3 - 12) >= 5)
  {
    if (a3 == 17)
    {
      goto LABEL_25;
    }

LABEL_59:
    v25 = 0;
    *result = 0;
    goto LABEL_57;
  }

LABEL_4:
  v11 = *(a2 + 296);
LABEL_26:
  if (a3 != 12 || a4 != 1 || !a5)
  {
    goto LABEL_31;
  }

  v11 = llvm::FixedVectorType::get();
  v26 = 0;
  v13 = v11;
LABEL_38:
  v14 = 328;
LABEL_43:
  v15 = *(a2 + v14);
  v16 = byte_20E716030[(a3 - 2)];
  v17 = byte_20E716045[(a3 - 2)];
  (*(*a2 + 568))(v29, a2, a3);
  v19 = v29[0];
  *v31 = *&v29[1];
  *&v31[15] = *&v29[16];
  v20 = v13;
  if ((*(v13 + 8) & 0xFE) == 0x12)
  {
    v20 = **(v13 + 16);
  }

  v21 = v30;
  if ((v17 & 1) != 0 && *(v20 + 8) >= 7u)
  {
    llvm::Type::getFloatTy(*(a2 + 456), v18);
  }

  v23 = llvm::VectorType::get();
  if (a6)
  {
    v24 = v13;
    if ((*(v13 + 8) & 0xFE) == 0x12)
    {
      v24 = **(v13 + 16);
    }

    if ((v17 & 1) != 0 && *(v24 + 8) >= 7u)
    {
      llvm::Type::getFloatTy(*(a2 + 456), v22);
    }

    result = llvm::VectorType::get();
  }

  else
  {
    result = 0;
  }

  *v10 = v13;
  *(v10 + 1) = v11;
  *(v10 + 2) = v15;
  *(v10 + 3) = v11;
  *(v10 + 4) = v26;
  v10[40] = v17;
  v10[41] = v16;
  v10[44] = v19;
  *(v10 + 45) = *v31;
  *(v10 + 15) = *&v31[15];
  v10[64] = v21;
  *(v10 + 65) = *v29;
  v10[67] = v29[2];
  *(v10 + 17) = a4;
  v25 = 1;
  *(v10 + 9) = v23;
  *(v10 + 10) = result;
LABEL_57:
  v10[88] = v25;
  return result;
}

void AGCLLVMGen3TargetLowerer::buildEmitpix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, AGCLLVMGen3TargetLowerer *a6, int a7, unsigned int a8, uint64_t a9, uint64_t a10, char a11)
{
  v38[16] = *MEMORY[0x277D85DE8];
  v29 = *a2;
  v30 = *(a2 + 16);
  if (v30)
  {
    llvm::MetadataTracking::track();
  }

  v31 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v29);
  if (v30)
  {
    llvm::MetadataTracking::untrack();
  }

  memset(&v28, 0, sizeof(v28));
  v37[0] = v38;
  v37[1] = 0x1000000000;
  v34 = v36;
  v35 = 0x1000000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v37, *(a1 + 192));
  AGCLLVMGen3TargetLowerer::getUSCFormatFromState(a6, a7);
  v17 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v34, v17);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v37, *(a1 + 192));
  v18 = *(a1 + 192);
  v33 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, a9, v18, v32);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v34, Cast);
  v20 = llvm::PointerType::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v37, v20);
  v21 = llvm::PointerType::get();
  v33 = 257;
  v22 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a3, v21, v32);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v34, v22);
  MEMORY[0x20F331AA0](&v28, *(a1 + 2064));
  if (a8 <= 7)
  {
    std::string::append(&v28, off_277E22008[a8]);
  }

  v23 = llvm::PointerType::get();
  v24 = llvm::ConstantInt::get();
  v33 = 257;
  v25 = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, v24, v23, v32);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v37, v23);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v34, v25);
  llvm::FunctionType::get();
  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v26 = &v28;
LABEL_10:
    strlen(v26);
    goto LABEL_11;
  }

  v26 = v28.__r_.__value_.__r.__words[0];
  if (v28.__r_.__value_.__r.__words[0])
  {
    goto LABEL_10;
  }

LABEL_11:
  llvm::Module::getOrInsertFunction();
  v33 = 257;
  llvm::IRBuilderBase::CreateCall((a1 + 8), *(v27 + 24), v27, v34, v35, v32);
  v32[0] = llvm::MDString::get();
  llvm::MDTuple::getImpl();
  llvm::Instruction::setMetadata();
  if (v34 != v36)
  {
    free(v34);
  }

  if (v37[0] != v38)
  {
    free(v37[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }
}

llvm::Instruction *AGCLLVMGen3TargetLowerer::buildColorCoverageMaskSet(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v17 = a3;
  v5 = (*(*a1 + 1608))(a1);
  v18 = v20;
  v19 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v18, "llvm.", "");
  v6 = *(a1 + 200);
  if (v5 == v6)
  {
    v7 = "agx2.";
  }

  else
  {
    v7 = "agx3.8xmsaa.";
  }

  v8 = 12;
  if (v5 == v6)
  {
    v8 = 5;
  }

  llvm::SmallVectorImpl<char>::append<char const*,void>(&v18, v7, &v7[v8]);
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v18, "colcvgmsk.coords", "");
  v14 = *a2;
  v15 = *(a2 + 2);
  if (v15)
  {
    llvm::MetadataTracking::track();
  }

  v16 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v14, a1 + 8);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  v9 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, v18, v19, v5, *(a1 + 240));
  v13 = 257;
  v10 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v9 + 24), v9, &v17, 1, v12);
  if (v18 != v20)
  {
    free(v18);
  }

  return v10;
}

void AGCLLVMGen3TargetLowerer::setupConstantTextureIndexPRIDs(uint64_t a1, unsigned int **a2, int a3)
{
  v10[8] = *MEMORY[0x277D85DE8];
  v9[0] = v10;
  v9[1] = 0x800000000;
  v4 = llvm::MDString::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v9, v4);
  v5 = *(a2 + 2);
  if (v5)
  {
    v6 = *a2;
    v7 = &(*a2)[2 * v5];
    do
    {
      v6 += 2;
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      llvm::MDString::get();
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      llvm::MDString::get();
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      Impl = llvm::MDTuple::getImpl();
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v9, Impl);
    }

    while (v6 != v7);
  }

  llvm::Module::getOrInsertNamedMetadata();
  llvm::MDTuple::getImpl();
  llvm::NamedMDNode::addOperand();
  if (v9[0] != v10)
  {
    free(v9[0]);
  }
}

void AGCLLVMGen3TargetLowerer::setupIndirectResourcePRIDs(uint64_t a1, llvm::ValueAsMetadata *a2, unsigned int **a3, int a4)
{
  v11[8] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x800000000;
  v5 = llvm::ValueAsMetadata::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v10, v5);
  v6 = *(a3 + 2);
  if (v6)
  {
    v7 = *a3;
    v9 = &(*a3)[4 * v6];
    do
    {
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      llvm::MDString::get();
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      llvm::MDString::get();
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      Impl = llvm::MDTuple::getImpl();
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v10, Impl);
      v7 += 4;
    }

    while (v7 != v9);
  }

  llvm::Module::getOrInsertNamedMetadata();
  llvm::MDTuple::getImpl();
  llvm::NamedMDNode::addOperand();
  if (v10[0] != v11)
  {
    free(v10[0]);
  }
}

uint64_t AGCLLVMGen3TargetLowerer::setupResourcePRIDs(uint64_t a1, llvm::ValueAsMetadata *a2, unsigned int a3, int a4, int a5, unsigned int a6)
{
  llvm::Module::getOrInsertNamedMetadata();
  if (a5)
  {
    llvm::ValueAsMetadata::get();
    llvm::ConstantInt::get();
  }

  llvm::ValueAsMetadata::get();
  llvm::MDString::get();
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  llvm::MDString::get();
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  llvm::MDTuple::getImpl();
  return llvm::NamedMDNode::addOperand();
}

void AGCLLVMGen3TargetLowerer::setupGLFragmentShaderPRIDs(uint64_t a1, uint64_t a2, int a3)
{
  v8[12] = *MEMORY[0x277D85DE8];
  if (*(a1 + 904))
  {
    v6 = &AGCLLVMGen3TargetLowerer::gl_raster_order_groups_macOS;
  }

  else
  {
    v6 = &AGCLLVMGen3TargetLowerer::gl_raster_order_groups_iOS;
  }

  AGCLLVMGen3TargetLowerer::setupFixedPRIDS(a1, 1);
  v7[0] = v8;
  v7[1] = 0x800000000;
  AGCLLVMGen3TargetLowerer::addLIBSpansFromDrawBufferState(a1, a2, v6, v7);
  AGCLLVMGen3TargetLowerer::setupLIBRasterOrderGroupFromSpans(a1, v7, a3);
  if (v7[0] != v8)
  {
    free(v7[0]);
  }
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildGExp(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4, llvm::Type ***a5)
{
  if ((*(*a3 + 2) & 0xFE) != 0x12 || (v9 = *(*a3 + 8), v9 == 1))
  {
    v11 = 0;
    v12 = "sr8unorm";
  }

  else
  {
    v10 = "srg8unorm";
    if (v9 != 2)
    {
      v10 = 0;
    }

    v11 = v9 != 4 && v9 != 2;
    if (v9 == 4)
    {
      v12 = "srgba8unorm";
    }

    else
    {
      v12 = v10;
    }
  }

  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 24);
  v13 = *(a1 + 2520);
  if (v13)
  {
    v14 = strlen(*(a1 + 2520));
    if (v11)
    {
LABEL_16:
      v15 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v14 = 0;
    if (v11)
    {
      goto LABEL_16;
    }
  }

  v15 = strlen(v12);
LABEL_19:
  v16 = AGCLLVMGen3TargetLowerer::buildReadConversionIntrinsic(a1, &v18, v13, v14, v12, v15, a5, a3);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  return v16;
}

llvm::Instruction *AGCLLVMGen3TargetLowerer::buildGCmp(uint64_t *a1, uint64_t a2, llvm::Value *a3, uint64_t a4, llvm::Type *a5)
{
  if ((*(*a3 + 8) & 0xFE) != 0x12 || (v9 = *(*a3 + 32), v9 == 1))
  {
    v11 = 0;
    v12 = "sr8unorm";
  }

  else
  {
    v10 = "srg8unorm";
    if (v9 != 2)
    {
      v10 = 0;
    }

    v11 = v9 != 4 && v9 != 2;
    if (v9 == 4)
    {
      v12 = "srgba8unorm";
    }

    else
    {
      v12 = v10;
    }
  }

  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 24);
  v13 = a1[316];
  if (v13)
  {
    v14 = strlen(a1[316]);
    if (v11)
    {
LABEL_16:
      v15 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v14 = 0;
    if (v11)
    {
      goto LABEL_16;
    }
  }

  v15 = strlen(v12);
LABEL_19:
  v16 = AGCLLVMGen3TargetLowerer::buildWriteConversionIntrinsic(a1, &v18, v13, v14, v12, v15, a5, a3);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  return v16;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildUnpackNorm(uint64_t a1, __int128 *a2, llvm::Type **a3, unsigned int a4, int a5, int a6)
{
  v39 = *a2;
  v40 = *(a2 + 2);
  if (v40)
  {
    llvm::MetadataTracking::track();
  }

  v41 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v39, a1 + 8);
  if (v40)
  {
    llvm::MetadataTracking::untrack();
  }

  v12 = 152;
  if (a6 == 32)
  {
    v12 = 168;
  }

  v13 = *(a1 + v12);
  *&v34 = llvm::Type::getPrimitiveSizeInBits(*a3);
  DWORD2(v34) = v14;
  v15 = llvm::TypeSize::operator unsigned long long() / a4;
  if (v15 < 2)
  {
    v16 = "r";
  }

  else
  {
    if (v15 == 4)
    {
      v16 = "rgba";
    }

    else
    {
      v16 = "rg";
    }

    v13 = llvm::FixedVectorType::get();
  }

  v17 = a4;
  if (*v16)
  {
    *&v32 = a4;
    v18 = 8;
    v19 = 3;
    v20 = 2;
    v17 = &v31;
  }

  else
  {
    v18 = 1;
    v20 = 8;
    v16 = a4;
    v19 = 8;
  }

  *&v31 = v16;
  LOBYTE(v33) = v19;
  BYTE1(v33) = v18;
  v21 = "snorm";
  if (!a5)
  {
    v21 = "unorm";
  }

  if (*v21)
  {
    *&v34 = v17;
    *&v35 = v21;
    LOBYTE(v36) = v20;
    BYTE1(v36) = 3;
  }

  else
  {
    v34 = v31;
    v35 = v32;
    v36 = v33;
  }

  llvm::Twine::str(__p, &v34);
  v28 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v29, (a1 + 8));
  v30 = *(a1 + 104);
  v22 = *(a1 + 2520);
  if (v22)
  {
    v23 = strlen(*(a1 + 2520));
  }

  else
  {
    v23 = 0;
  }

  if (v38 >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  if (v38 >= 0)
  {
    v25 = v38;
  }

  else
  {
    v25 = __p[1];
  }

  v26 = AGCLLVMGen3TargetLowerer::buildReadConversionIntrinsic(a1, &v28, v22, v23, v24, v25, v13, a3);
  if (v29)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  return v26;
}

llvm::Instruction *AGCLLVMGen3TargetLowerer::buildPackNorm(uint64_t *a1, uint64_t a2, llvm::Value *a3, unsigned int a4, int a5, int a6)
{
  v35 = *a2;
  v36 = *(a2 + 16);
  if (v36)
  {
    llvm::MetadataTracking::track();
  }

  v37 = *(a2 + 24);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v35, (a1 + 1));
  if (v36)
  {
    llvm::MetadataTracking::untrack();
  }

  v11 = llvm::IntegerType::get();
  if ((*(*a3 + 8) & 0xFE) == 0x12)
  {
    v12 = "rg";
    if (*(*a3 + 32) == 4)
    {
      v12 = "rgba";
    }
  }

  else
  {
    v12 = "r";
  }

  v13 = a4;
  if (*v12)
  {
    *&v28 = a4;
    v14 = 8;
    v15 = 3;
    v16 = 2;
    v13 = &v27;
  }

  else
  {
    v14 = 1;
    v16 = 8;
    v12 = a4;
    v15 = 8;
  }

  *&v27 = v12;
  LOBYTE(v29) = v15;
  v17 = "unorm";
  BYTE1(v29) = v14;
  if (a5)
  {
    v17 = "snorm";
  }

  if (*v17)
  {
    *&v30 = v13;
    *&v31 = v17;
    LOBYTE(v32) = v16;
    BYTE1(v32) = 3;
  }

  else
  {
    v30 = v27;
    v31 = v28;
    v32 = v29;
  }

  llvm::Twine::str(__p, &v30);
  v24 = *a2;
  v25 = *(a2 + 16);
  if (v25)
  {
    llvm::MetadataTracking::track();
  }

  v26 = *(a2 + 24);
  v18 = a1[316];
  if (v18)
  {
    v19 = strlen(a1[316]);
  }

  else
  {
    v19 = 0;
  }

  if (v34 >= 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  if (v34 >= 0)
  {
    v21 = v34;
  }

  else
  {
    v21 = __p[1];
  }

  v22 = AGCLLVMGen3TargetLowerer::buildWriteConversionIntrinsic(a1, &v24, v18, v19, v20, v21, v11, a3);
  if (v25)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  return v22;
}

llvm::PointerType ***AGCLLVMGen3TargetLowerer::buildAtomicFnAddrSpaceCast(uint64_t a1, uint64_t a2, llvm::PointerType ***a3, uint64_t a4)
{
  v5 = a3;
  v8 = *(*a3 + 2);
  if ((v8 & 0xFE) == 0x12)
  {
    v8 = *(*(*a3)[2] + 8);
  }

  if ((v8 & 0xFFFFFF00) == 0x800 || v8 < 0x100)
  {
    return v5;
  }

  v22 = *a2;
  v23 = *(a2 + 16);
  if (v23)
  {
    llvm::MetadataTracking::track();
  }

  v24 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v22);
  if (v23)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = (a4 + 24);
  if (*(a4 + 32) >= 0x41u)
  {
    v10 = *v10;
  }

  v11 = *v10;
  v12 = *v5;
  v13 = *(*v5 + 2);
  if ((v13 & 0xFE) == 0x12)
  {
    v13 = *(*v12[2] + 8);
  }

  v14 = v13 >> 8;
  if (v14 == 3)
  {
    if (v11)
    {
      return v5;
    }

    v18 = 69;
LABEL_21:
    v17 = llvm::PointerType::getWithSamePointeeType(v12, v18, v9);
    v21 = 257;
    return llvm::IRBuilderBase::CreateCast(a1 + 8, 50, v5, v17, v20);
  }

  if (v14 != 1)
  {
    return v5;
  }

  if (v11 == 1)
  {
    v18 = 71;
    goto LABEL_21;
  }

  if (!v11)
  {
    v15 = llvm::PointerType::getWithSamePointeeType(v12, 0x46, v9);
    v21 = 257;
    llvm::IRBuilderBase::CreateCast(a1 + 8, 50, v5, v15, v20);
    v17 = llvm::PointerType::getWithSamePointeeType(*v5, 0x46, v16);
    v21 = 257;
    return llvm::IRBuilderBase::CreateCast(a1 + 8, 50, v5, v17, v20);
  }

  return v5;
}

llvm::Instruction *AGCLLVMGen3TargetLowerer::buildCoverageMask(uint64_t a1, __int128 *a2, llvm::Value *a3, unsigned int a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = *a2;
  v27 = *(a2 + 2);
  if (v27)
  {
    llvm::MetadataTracking::track();
  }

  v28 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v26, a1 + 8);
  if (v27)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = AGCLLVMBuilder::f32Extend(a1, a3, 1);
  if (a4 > 1)
  {
    v21 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v22, (a1 + 8));
    v23 = *(a1 + 104);
    v10 = (*(*a1 + 40))(a1, &v21, v8, 0);
    if (v22)
    {
      llvm::MetadataTracking::untrack();
    }

    v11 = *(a1 + 1384);
    if (v11)
    {
      v12 = strlen(*(a1 + 1384));
    }

    else
    {
      v12 = 0;
    }

    v13 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, v11, v12, *(a1 + 200), *(a1 + 168));
    v14 = llvm::ConstantFP::get();
    v25 = 257;
    FMul = llvm::IRBuilderBase::CreateFMul(a1 + 8, v10, v14, v24);
    v30 = 257;
    v15 = llvm::IRBuilderBase::CreateCall((a1 + 8), *(v13 + 24), v13, &FMul, 1, v29);
    v16 = *(a1 + 2344);
    if (v16)
    {
      v17 = strlen(*(a1 + 2344));
    }

    else
    {
      v17 = 0;
    }

    v18 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v16, v17, *(a1 + 200), *(a1 + 192), *(a1 + 192));
    v29[0] = llvm::ConstantInt::get();
    v19 = *(a1 + 192);
    v25 = 257;
    v29[1] = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v15, v19, v24);
    v25 = 257;
    return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v18 + 24), v18, v29, 2, v24);
  }

  else
  {
    llvm::ConstantFP::get();
    llvm::IRBuilderBase::CreateFCmpHelper();
    llvm::ConstantInt::get();
    llvm::ConstantInt::get();
    v25 = 257;
    return llvm::IRBuilderBase::CreateSelect();
  }
}

uint64_t AGCBindPointLayoutT<AGX::BindPointLayout<96,31,4,128,96,96,true>>::getComputeMaxAPIBindPointsBuffer(uint64_t a1, int a2)
{
  if (a2)
  {
    return 35;
  }

  else
  {
    return 31;
  }
}

uint64_t AGCBindPointLayoutT<AGX::BindPointLayout<96,31,4,128,96,96,true>>::getRenderMaxAPIBindPointsBuffer(uint64_t a1, int a2)
{
  if (a2)
  {
    return 35;
  }

  else
  {
    return 31;
  }
}

uint64_t AGCLLVMGen3TargetLowerer::getTempRegistersLimitAcrossTileSizesForTileShader(AGCLLVMGen3TargetLowerer *this, const AGCLLVMCtx *a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = 0xFFFFFFFFLL;
  LODWORD(v7) = 1;
  do
  {
    if (a3 / v7 >= 0x20)
    {
      v8 = 32;
    }

    else
    {
      v8 = a3 / v7;
    }

    if (v7 <= a3)
    {
      v9 = 1;
      do
      {
        v7 = (v7 & 1) + v7;
        v10 = (v9 & 1) + v9;
        if ((*(*this + 800))(this, v7, v10))
        {
          v11 = *(a2 + 504);
          v12 = v11 - 1;
          if ((v11 - 1) >= 0)
          {
            v13 = 0;
            do
            {
              v14 = (v12 + v13) >> 1;
              if (*(*(a2 + 251) + 4 * v14) < v10 * v7)
              {
                v12 = v14 - 1;
              }

              else
              {
                v13 = v14 + 1;
              }
            }

            while (v13 <= v12);
          }

          v15 = *(this + 245) / v11 * v12;
          if (v15 >= v6)
          {
            v6 = v6;
          }

          else
          {
            v6 = v15;
          }
        }

        v9 = v10 + 1;
      }

      while (v10 + 1 <= v8);
    }

    LODWORD(v7) = v7 + 1;
  }

  while (v7 < 0x21);
  return v6;
}