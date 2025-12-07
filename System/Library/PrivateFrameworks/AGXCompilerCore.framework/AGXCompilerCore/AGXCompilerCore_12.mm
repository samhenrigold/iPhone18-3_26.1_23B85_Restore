uint64_t AGCLLVMDriverGeometryPipelineEmulationFWAllocationPostObjectShader::setupShaderInputs(AGCLLVMDriverGeometryPipelineEmulationFWAllocationPostObjectShader *this)
{
  AGCLLVMUserObject::remapDriverBindpoint(this, this + 580);

  return AGCLLVMUserComputeKernelBase::setupShaderInputs(this);
}

uint64_t AGCLLVMDriverGeometryPipelineEmulationFWAllocationPostObjectShader::setupShaderWrapper(AGCLLVMDriverGeometryPipelineEmulationFWAllocationPostObjectShader *this)
{
  v2 = AGCLLVMUserObject::setupShaderWrapper(this);
  if (v2)
  {
    v3 = *(this + *(*this - 24) + 2168);
    (*(*v3 + 440))(v3, *(this + 20), 0x100000002, 0);
  }

  return v2;
}

void AGCLLVMDriverGeometryPipelineEmulationFWAllocationPostObjectShader::~AGCLLVMDriverGeometryPipelineEmulationFWAllocationPostObjectShader(AGCLLVMDriverGeometryPipelineEmulationFWAllocationPostObjectShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2825809D8;
  v5 = (this + 4672);
  *(this + 584) = &unk_282580D60;
  *(this + 797) = &unk_282580E70;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640, a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_282580E88, v6, v7);
  AGCLLVMObject::~AGCLLVMObject(v5);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825809D8;
  v5 = (this + 4672);
  *(this + 584) = &unk_282580D60;
  *(this + 797) = &unk_282580E70;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640, a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_282580E88, v6, v7);
  AGCLLVMObject::~AGCLLVMObject(v5);
}

void virtual thunk toAGCLLVMDriverGeometryPipelineEmulationFWAllocationPreMeshShader::~AGCLLVMDriverGeometryPipelineEmulationFWAllocationPreMeshShader(AGCLLVMDriverGeometryPipelineEmulationFWAllocationPreMeshShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (this + *(*this - 24));
  *v4 = &unk_282580F20;
  v4[584] = &unk_2825812A8;
  v4[797] = &unk_2825813B8;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 580), a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v4, &off_2825813D0, v5, v6);
  AGCLLVMObject::~AGCLLVMObject((v4 + 584));

  JUMPOUT(0x20F331DC0);
}

{
  v4 = (this + *(*this - 24));
  *v4 = &unk_282580F20;
  v4[584] = &unk_2825812A8;
  v4[797] = &unk_2825813B8;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 580), a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v4, &off_2825813D0, v5, v6);

  AGCLLVMObject::~AGCLLVMObject((v4 + 584));
}

uint64_t AGCLLVMDriverGeometryPipelineEmulationFWAllocationPreMeshShader::setupShaderInputs(AGCLLVMDriverGeometryPipelineEmulationFWAllocationPreMeshShader *this)
{
  AGCLLVMUserObject::remapDriverBindpoint(this, this + 580);

  return AGCLLVMUserComputeKernelBase::setupShaderInputs(this);
}

uint64_t AGCLLVMDriverGeometryPipelineEmulationFWAllocationPreMeshShader::setupShaderWrapper(AGCLLVMDriverGeometryPipelineEmulationFWAllocationPreMeshShader *this)
{
  v2 = AGCLLVMUserObject::setupShaderWrapper(this);
  if (v2)
  {
    v3 = *(this + *(*this - 24) + 2168);
    (*(*v3 + 440))(v3, *(this + 20), 0x100000002, 0);
  }

  return v2;
}

void AGCLLVMDriverGeometryPipelineEmulationFWAllocationPreMeshShader::~AGCLLVMDriverGeometryPipelineEmulationFWAllocationPreMeshShader(AGCLLVMDriverGeometryPipelineEmulationFWAllocationPreMeshShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_282580F20;
  v5 = (this + 4672);
  *(this + 584) = &unk_2825812A8;
  *(this + 797) = &unk_2825813B8;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640, a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_2825813D0, v6, v7);
  AGCLLVMObject::~AGCLLVMObject(v5);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_282580F20;
  v5 = (this + 4672);
  *(this + 584) = &unk_2825812A8;
  *(this + 797) = &unk_2825813B8;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640, a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_2825813D0, v6, v7);
  AGCLLVMObject::~AGCLLVMObject(v5);
}

void virtual thunk toAGCLLVMDriverComputeProgressMarkerShaderGen3::~AGCLLVMDriverComputeProgressMarkerShaderGen3(AGCLLVMDriverComputeProgressMarkerShaderGen3 *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (this + *(*this - 24));
  *v4 = &unk_282581468;
  v4[584] = &unk_2825817F0;
  v4[797] = &unk_282581900;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 580), a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v4, &off_282581918, v5, v6);
  AGCLLVMObject::~AGCLLVMObject((v4 + 584));

  JUMPOUT(0x20F331DC0);
}

{
  v4 = (this + *(*this - 24));
  *v4 = &unk_282581468;
  v4[584] = &unk_2825817F0;
  v4[797] = &unk_282581900;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 580), a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v4, &off_282581918, v5, v6);

  AGCLLVMObject::~AGCLLVMObject((v4 + 584));
}

uint64_t AGCLLVMDriverComputeProgressMarkerShaderGen3::setupShaderInputs(AGCLLVMDriverComputeProgressMarkerShaderGen3 *this)
{
  AGCLLVMUserObject::remapDriverBindpoint(this, this + 580);

  return AGCLLVMUserComputeKernelBase::setupShaderInputs(this);
}

uint64_t AGCLLVMDriverComputeProgressMarkerShaderGen3::setupShaderWrapper(AGCLLVMDriverComputeProgressMarkerShaderGen3 *this)
{
  v2 = AGCLLVMUserObject::setupShaderWrapper(this);
  if (v2)
  {
    v3 = *(this + *(*this - 24) + 2168);
    (*(*v3 + 440))(v3, *(this + 20), 2, 0x100000000);
  }

  return v2;
}

void AGCLLVMDriverComputeProgressMarkerShaderGen3::~AGCLLVMDriverComputeProgressMarkerShaderGen3(AGCLLVMDriverComputeProgressMarkerShaderGen3 *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_282581468;
  v5 = (this + 4672);
  *(this + 584) = &unk_2825817F0;
  *(this + 797) = &unk_282581900;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640, a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_282581918, v6, v7);
  AGCLLVMObject::~AGCLLVMObject(v5);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_282581468;
  v5 = (this + 4672);
  *(this + 584) = &unk_2825817F0;
  *(this + 797) = &unk_282581900;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640, a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_282581918, v6, v7);
  AGCLLVMObject::~AGCLLVMObject(v5);
}

void virtual thunk toAGCLLVMDriverComputeControlFlowPredicateShaderGen3::~AGCLLVMDriverComputeControlFlowPredicateShaderGen3(AGCLLVMDriverComputeControlFlowPredicateShaderGen3 *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (this + *(*this - 24));
  *v4 = &unk_2825819B0;
  v4[585] = &unk_282581D38;
  v4[798] = &unk_282581E48;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 580), a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v4, &off_282581E60, v5, v6);
  AGCLLVMObject::~AGCLLVMObject((v4 + 585));

  JUMPOUT(0x20F331DC0);
}

{
  v4 = (this + *(*this - 24));
  *v4 = &unk_2825819B0;
  v4[585] = &unk_282581D38;
  v4[798] = &unk_282581E48;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 580), a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v4, &off_282581E60, v5, v6);

  AGCLLVMObject::~AGCLLVMObject((v4 + 585));
}

uint64_t AGCLLVMDriverComputeControlFlowPredicateShaderGen3::setupShaderInputs(AGCLLVMDriverComputeControlFlowPredicateShaderGen3 *this)
{
  AGCLLVMUserObject::remapDriverBindpoint(this, this + 580);

  return AGCLLVMUserComputeKernelBase::setupShaderInputs(this);
}

uint64_t AGCLLVMDriverComputeControlFlowPredicateShaderGen3::setupShaderWrapper(AGCLLVMDriverComputeControlFlowPredicateShaderGen3 *this)
{
  result = AGCLLVMUserObject::setupShaderWrapper(this);
  if (result)
  {
    v3 = strlen(off_277E20A10[*(this + 1168)]);
    v4 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(this + *(*this - 24) + 1704, off_277E20A10[*(this + 1168)], v3, *(this + *(*this - 24) + 1880), *(this + *(*this - 24) + 1904), *(this + *(*this - 24) + 1904));
    if (*(v4 + 9))
    {
      llvm::Function::BuildLazyArguments(v4);
    }

    llvm::Value::setName();
    llvm::Value::setName();
    operator new();
  }

  return result;
}

void AGCLLVMDriverComputeControlFlowPredicateShaderGen3::~AGCLLVMDriverComputeControlFlowPredicateShaderGen3(AGCLLVMDriverComputeControlFlowPredicateShaderGen3 *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2825819B0;
  v5 = (this + 4680);
  *(this + 585) = &unk_282581D38;
  *(this + 798) = &unk_282581E48;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640, a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_282581E60, v6, v7);
  AGCLLVMObject::~AGCLLVMObject(v5);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825819B0;
  v5 = (this + 4680);
  *(this + 585) = &unk_282581D38;
  *(this + 798) = &unk_282581E48;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640, a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_282581E60, v6, v7);
  AGCLLVMObject::~AGCLLVMObject(v5);
}

void virtual thunk toAGCLLVMDriverComputeProgressMarkerShaderLegacy::~AGCLLVMDriverComputeProgressMarkerShaderLegacy(AGCLLVMDriverComputeProgressMarkerShaderLegacy *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (this + *(*this - 24));
  *v4 = &unk_282581EF8;
  v4[630] = &unk_282582280;
  v4[843] = &unk_282582390;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 626), a2, a3, a4);
  AGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy(v4, &off_2825823A8, v5, v6);
  AGCLLVMObject::~AGCLLVMObject((v4 + 630));

  JUMPOUT(0x20F331DC0);
}

{
  v4 = (this + *(*this - 24));
  *v4 = &unk_282581EF8;
  v4[630] = &unk_282582280;
  v4[843] = &unk_282582390;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 626), a2, a3, a4);
  AGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy(v4, &off_2825823A8, v5, v6);

  AGCLLVMObject::~AGCLLVMObject((v4 + 630));
}

void virtual thunk toAGCLLVMDriverComputeKernelLegacy::~AGCLLVMDriverComputeKernelLegacy(AGCLLVMDriverComputeKernelLegacy *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = this + *(*this - 24);
  AGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy(v4, &off_28257DA28, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 5008));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy((this + *(*this - 24)), &off_28257DA28, a3, a4);
  v5 = (v4 + 5008);

  AGCLLVMObject::~AGCLLVMObject(v5);
}

void AGCLLVMDriverComputeKernelLegacy::~AGCLLVMDriverComputeKernelLegacy(AGCLLVMDriverComputeKernelLegacy *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  AGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy(this, &off_28257DA28, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 5008));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy(this, &off_28257DA28, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 5008));
}

uint64_t AGCLLVMDriverComputeProgressMarkerShaderLegacy::setupShaderInputs(AGCLLVMDriverComputeProgressMarkerShaderLegacy *this)
{
  AGCLLVMUserObject::remapDriverBindpoint(this, this + 626);

  return AGCLLVMUserComputeKernelBase::setupShaderInputs(this);
}

uint64_t AGCLLVMDriverComputeProgressMarkerShaderLegacy::setupShaderWrapper(AGCLLVMDriverComputeProgressMarkerShaderLegacy *this)
{
  v2 = AGCLLVMUserObject::setupShaderWrapper(this);
  if (v2)
  {
    v3 = *(this + *(*this - 24) + 2168);
    (*(*v3 + 440))(v3, *(this + 20), 0x100000002, 0x100000000);
  }

  return v2;
}

void AGCLLVMDriverComputeProgressMarkerShaderLegacy::~AGCLLVMDriverComputeProgressMarkerShaderLegacy(AGCLLVMDriverComputeProgressMarkerShaderLegacy *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_282581EF8;
  v5 = (this + 5040);
  *(this + 630) = &unk_282582280;
  *(this + 843) = &unk_282582390;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 5008, a2, a3, a4);
  AGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy(this, &off_2825823A8, v6, v7);
  AGCLLVMObject::~AGCLLVMObject(v5);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_282581EF8;
  v5 = (this + 5040);
  *(this + 630) = &unk_282582280;
  *(this + 843) = &unk_282582390;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 5008, a2, a3, a4);
  AGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy(this, &off_2825823A8, v6, v7);
  AGCLLVMObject::~AGCLLVMObject(v5);
}

void virtual thunk toAGCLLVMDriverComputeControlFlowPredicateShaderLegacy::~AGCLLVMDriverComputeControlFlowPredicateShaderLegacy(AGCLLVMDriverComputeControlFlowPredicateShaderLegacy *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (this + *(*this - 24));
  *v4 = &unk_282582440;
  v4[631] = &unk_2825827C8;
  v4[844] = &unk_2825828D8;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 626), a2, a3, a4);
  AGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy(v4, &off_2825828F0, v5, v6);
  AGCLLVMObject::~AGCLLVMObject((v4 + 631));

  JUMPOUT(0x20F331DC0);
}

{
  v4 = (this + *(*this - 24));
  *v4 = &unk_282582440;
  v4[631] = &unk_2825827C8;
  v4[844] = &unk_2825828D8;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 626), a2, a3, a4);
  AGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy(v4, &off_2825828F0, v5, v6);

  AGCLLVMObject::~AGCLLVMObject((v4 + 631));
}

uint64_t AGCLLVMDriverComputeControlFlowPredicateShaderLegacy::setupShaderInputs(AGCLLVMDriverComputeControlFlowPredicateShaderLegacy *this)
{
  AGCLLVMUserObject::remapDriverBindpoint(this, this + 626);

  return AGCLLVMUserComputeKernelBase::setupShaderInputs(this);
}

uint64_t AGCLLVMDriverComputeControlFlowPredicateShaderLegacy::setupShaderWrapper(AGCLLVMDriverComputeControlFlowPredicateShaderLegacy *this)
{
  result = AGCLLVMUserObject::setupShaderWrapper(this);
  if (result)
  {
    v3 = strlen(off_277E20A10[*(this + 1260)]);
    v4 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(this + *(*this - 24) + 1704, off_277E20A10[*(this + 1260)], v3, *(this + *(*this - 24) + 1880), *(this + *(*this - 24) + 1904), *(this + *(*this - 24) + 1904));
    if (*(v4 + 9))
    {
      llvm::Function::BuildLazyArguments(v4);
    }

    llvm::Value::setName();
    llvm::Value::setName();
    operator new();
  }

  return result;
}

void AGCLLVMDriverComputeControlFlowPredicateShaderLegacy::~AGCLLVMDriverComputeControlFlowPredicateShaderLegacy(AGCLLVMDriverComputeControlFlowPredicateShaderLegacy *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_282582440;
  v5 = (this + 5048);
  *(this + 631) = &unk_2825827C8;
  *(this + 844) = &unk_2825828D8;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 5008, a2, a3, a4);
  AGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy(this, &off_2825828F0, v6, v7);
  AGCLLVMObject::~AGCLLVMObject(v5);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_282582440;
  v5 = (this + 5048);
  *(this + 631) = &unk_2825827C8;
  *(this + 844) = &unk_2825828D8;
  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 5008, a2, a3, a4);
  AGCLLVMUserComputeKernelLegacy::~AGCLLVMUserComputeKernelLegacy(this, &off_2825828F0, v6, v7);
  AGCLLVMObject::~AGCLLVMObject(v5);
}

uint64_t virtual thunk toAGCLLVMDriverTensorBlitShader::dumpType(AGCLLVMDriverTensorBlitShader *this)
{
  v1 = this + *(*this - 64);
  llvm::SmallVectorTemplateBase<char,true>::push_back(v1 + 584, 0);
  --*(v1 + 585);
  return *(v1 + 584);
}

void virtual thunk toAGCLLVMDriverTensorBlitShader::~AGCLLVMDriverTensorBlitShader(AGCLLVMDriverTensorBlitShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (this + *(*this - 24));
  *v4 = &unk_282583418;
  v4[596] = &unk_2825837A0;
  v4[809] = &unk_2825838B0;
  v5 = v4[584];
  if (v5 != v4 + 587)
  {
    free(v5);
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 580), a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v4, &off_2825838C8, v6, v7);
  AGCLLVMObject::~AGCLLVMObject((v4 + 596));

  JUMPOUT(0x20F331DC0);
}

{
  v4 = (this + *(*this - 24));
  *v4 = &unk_282583418;
  v4[596] = &unk_2825837A0;
  v4[809] = &unk_2825838B0;
  v5 = v4[584];
  if (v5 != v4 + 587)
  {
    free(v5);
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 580), a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v4, &off_2825838C8, v6, v7);

  AGCLLVMObject::~AGCLLVMObject((v4 + 596));
}

uint64_t AGCLLVMDriverTensorBlitShader::dumpType(AGCLLVMDriverTensorBlitShader *this)
{
  llvm::SmallVectorTemplateBase<char,true>::push_back(this + 584, 0);
  --*(this + 585);
  return *(this + 584);
}

uint64_t AGCLLVMDriverTensorBlitShader::setupShaderInputs(AGCLLVMDriverTensorBlitShader *this)
{
  v1 = AGCLLVMUserComputeKernelG10::setupShaderInputs(this);
  if (v1)
  {
    Function = llvm::Module::getFunction();
    if (Function)
    {
      v3 = Function;
      llvm::Function::addFnAttr();
      *(v3 + 32) = *(v3 + 32) & 0xFFFFBFC0 | 0x4007;
      operator new();
    }
  }

  return v1;
}

void AGCLLVMDriverTensorBlitShader::~AGCLLVMDriverTensorBlitShader(AGCLLVMDriverTensorBlitShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_282583418;
  v5 = (this + 4768);
  *(this + 596) = &unk_2825837A0;
  *(this + 809) = &unk_2825838B0;
  v6 = *(this + 584);
  if (v6 != this + 4696)
  {
    free(v6);
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640, a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_2825838C8, v7, v8);
  AGCLLVMObject::~AGCLLVMObject(v5);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_282583418;
  v5 = (this + 4768);
  *(this + 596) = &unk_2825837A0;
  *(this + 809) = &unk_2825838B0;
  v6 = *(this + 584);
  if (v6 != this + 4696)
  {
    free(v6);
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640, a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_2825838C8, v7, v8);
  AGCLLVMObject::~AGCLLVMObject(v5);
}

uint64_t AGCLLVMUserComputeKernelBase::AGCLLVMUserComputeKernelBase(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = AGCLLVMUserShader::AGCLLVMUserShader(a1, a2 + 1, a3, "air.kernel", &default_cs, 0, 0);
  v8 = *a2;
  *v7 = *a2;
  *(a1 + *(v8 - 24)) = a2[7];
  *(a1 + *(*a1 - 24) + 1704) = a2[8];
  *(a1 + 4536) = a4;
  *(a1 + 4544) = (*(a4 + 16) & 1) == 0;
  v9 = *a1;
  *(a1 + *(*a1 - 24) + 4577) = *(a4 + 13) & 1;
  *(*(a1 + *(v9 - 24) + 2168) + 1941) = (*(a4 + 16) & 0x1000) != 0;
  *(*(a1 + *(v9 - 24) + 2168) + 1942) = (*(a4 + 16) & 0x2000) != 0;
  *(a1 + 3912) = (*(a4 + 12) & 0x200) != 0;
  AGCLLVMUserShader::enableStatistics(a1, *(a4 + 12) & 1, (*(a4 + 12) >> 1) & 1);
  *(a1 + 18) = (*(a4 + 12) & 8) != 0;
  *(a1 + *(*a1 - 24) + 4576) = (*(a4 + 12) & 0x4000000) != 0;
  *(a1 + 3504) = *a4;
  *(a1 + 4548) = AGCLLVMUserShader::parseMaxTotalThreadsPerThreadgroup(a1);
  *(a1 + 20) = (*(a4 + 12) & 4) != 0;
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v11 = *(Function + 8) != 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = a1 + *(*a1 - 24);
  *(v12 + 2224) = v11;
  *(v12 + 5128) = Function;
  *(a1 + 19) = (*(a4 + 16) & 0x80) != 0;
  return a1;
}

uint64_t AGCLLVMDriverComputeKernelLegacy::AGCLLVMDriverComputeKernelLegacy(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = AGCLLVMUserComputeKernelBase::AGCLLVMUserComputeKernelBase(a1, a2 + 2, a3, a4);
  v6 = a2[1];
  *result = v6;
  *(result + *(v6 - 24)) = a2[11];
  *(result + *(*result - 24) + 1704) = a2[12];
  *(result + 4552) = result + 4568;
  *(result + 4560) = 0x200000000;
  v7 = -72;
  do
  {
    v8 = result + v7;
    *(v8 + 4664) = 4;
    *(v8 + 4672) = 0uLL;
    v7 += 24;
  }

  while (v7);
  *(result + 4664) = 4;
  *(result + 4672) = 0u;
  v9 = -72;
  do
  {
    v10 = result + v9;
    *(v10 + 4760) = 4;
    *(v10 + 4768) = 0uLL;
    v9 += 24;
  }

  while (v9);
  *(result + 4760) = 4;
  *(result + 4768) = 0u;
  *(result + 4784) = 4;
  *(result + 4792) = 0u;
  *(result + 4808) = 4;
  *(result + 4816) = 0u;
  v11 = -72;
  *(result + 4832) = 4;
  *(result + 4840) = 0u;
  do
  {
    v12 = result + v11;
    *(v12 + 4928) = 4;
    *(v12 + 4936) = 0uLL;
    v11 += 24;
  }

  while (v11);
  *(result + 4928) = 4;
  *(result + 4936) = 0u;
  *(result + 4952) = 4;
  *(result + 4960) = 0u;
  *(result + 4976) = 4;
  *(result + 4984) = 0u;
  *(result + 5000) = 0;
  v13 = *a2;
  *result = *a2;
  *(result + *(v13 - 24)) = a2[13];
  *(result + *(*result - 24) + 1704) = a2[14];
  return result;
}

uint64_t AGCLLVMUserComputeKernelG10::AGCLLVMUserComputeKernelG10(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = AGCLLVMUserComputeKernelBase::AGCLLVMUserComputeKernelBase(a1, a2 + 1, a3, a4);
  v7 = 0;
  v8 = *a2;
  *result = *a2;
  *(result + *(v8 - 24)) = a2[10];
  *(result + *(*result - 24) + 1704) = a2[11];
  *(result + 4552) = 4;
  *(result + 4560) = 0u;
  *(result + 4576) = 4;
  *(result + 4584) = 0u;
  *(result + 4600) = 0;
  *(result + 4608) = 4;
  *(result + 4616) = 0u;
  if ((*(a4 + 16) & 4) != 0)
  {
    v7 = (*(a4 + 13) & 2) == 0;
  }

  *(result + 4632) = v7;
  return result;
}

void *AGCLLVMDriverComputeKernel::AGCLLVMDriverComputeKernel(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = AGCLLVMUserComputeKernelG10::AGCLLVMUserComputeKernelG10(a1, a2 + 1, a3, a4);
  v6 = *a2;
  *result = *a2;
  *(result + *(v6 - 24)) = a2[13];
  *(result + *(*result - 24) + 1704) = a2[14];
  return result;
}

void AGCLLVMDriverTGSizeOptimizationShader::create(AGCLLVMCtx *a1, uint64_t a2)
{
  std::string::basic_string[abi:nn200100]<0>(__p, "tg_size_opt");
  if (v6 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if (v6 >= 0)
  {
    v4 = v6;
  }

  else
  {
    v4 = __p[1];
  }

  AGCLLVMObject::readBitcode(a2, v3, v4, 0);
  operator new();
}

void virtual thunk toAGCLLVMDriverSparseShaders::~AGCLLVMDriverSparseShaders(AGCLLVMDriverSparseShaders *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = this + *(*this - 24);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v4, &off_28257EEF0, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 4648));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10((this + *(*this - 24)), &off_28257EEF0, a3, a4);
  v5 = (v4 + 4648);

  AGCLLVMObject::~AGCLLVMObject(v5);
}

void AGCLLVMDriverSparseShaders::~AGCLLVMDriverSparseShaders(AGCLLVMDriverSparseShaders *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_28257EEF0, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 4648));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_28257EEF0, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 4648));
}

void AGCLLVMDriverSparseShaders::create(AGCLLVMDriverSparseShaders *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  v4 = *(*(this + 4) + 28) - 24;
  if (v4 < 0xF && ((0x4D81u >> v4) & 1) != 0)
  {
    v5 = off_277E20400;
  }

  else
  {
    v5 = off_277E20428;
  }

  v6 = v5[a3];
  if (v6)
  {
    v7 = strlen(v5[a3]);
  }

  else
  {
    v7 = 0;
  }

  AGCLLVMObject::readBitcode(a2, v6, v7, 1);
  {
    {
      AGCLLVMDriverSparseShaders::create(AGCLLVMCtx &,llvm::LLVMContext &,unsigned int)::computeCS = 0;
      *algn_27C8D97B8 = 0;
      qword_27C8D97C0 = 0;
    }
  }

  operator new();
}

void virtual thunk toAGCLLVMDriverFastClearShaders::~AGCLLVMDriverFastClearShaders(AGCLLVMDriverFastClearShaders *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = this + *(*this - 24);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v4, &off_28257F438, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 4648));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10((this + *(*this - 24)), &off_28257F438, a3, a4);
  v5 = (v4 + 4648);

  AGCLLVMObject::~AGCLLVMObject(v5);
}

void AGCLLVMDriverFastClearShaders::~AGCLLVMDriverFastClearShaders(AGCLLVMDriverFastClearShaders *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_28257F438, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 4648));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_28257F438, a3, a4);
  AGCLLVMObject::~AGCLLVMObject((v4 + 4648));
}

void AGCLLVMDriverFastClearShaders::create(AGCLLVMCtx *a1, uint64_t a2, unsigned int a3)
{
  if ((a3 & 3) == 1)
  {
    if ((a3 & 4) != 0)
    {
      v4 = "blit_fast_clear_gen1_meta";
    }

    else
    {
      if ((a3 & 0x800) == 0)
      {
        v4 = 0;
        v7 = (a3 >> 3);
        if (v7 > 3)
        {
          if (v7 == 4)
          {
            v4 = "blit_fast_clear_gen1_4";
          }

          else if (v7 == 8)
          {
            v4 = "blit_fast_clear_gen1_8";
          }

          else
          {
            v6 = 0;
            if (v7 != 16)
            {
              goto LABEL_23;
            }

            v4 = "blit_fast_clear_gen1_16";
          }

          goto LABEL_22;
        }

        if (v7 == 1)
        {
          v4 = "blit_fast_clear_gen1_1";
          goto LABEL_22;
        }

        v6 = 0;
        if (v7 == 2)
        {
          v4 = "blit_fast_clear_gen1_2";
          goto LABEL_22;
        }

        goto LABEL_23;
      }

      v4 = "blit_fast_clear_gen1_meta_copy";
    }
  }

  else
  {
    if ((a3 & 3) != 2)
    {
      v4 = 0;
      v6 = 0;
      goto LABEL_23;
    }

    if ((a3 & 4) != 0)
    {
      v4 = "blit_fast_clear_gen2_meta";
    }

    else
    {
      if ((a3 & 0x800) == 0)
      {
        v4 = 0;
        v5 = (a3 >> 3);
        if (v5 <= 4)
        {
          if (v5 == 1)
          {
            v4 = "blit_fast_clear_gen2_1";
          }

          else if (v5 == 2)
          {
            v4 = "blit_fast_clear_gen2_2";
          }

          else
          {
            v6 = 0;
            if (v5 != 4)
            {
              goto LABEL_23;
            }

            v4 = "blit_fast_clear_gen2_4";
          }

          goto LABEL_22;
        }

        if (v5 == 5)
        {
          v4 = "blit_fast_clear_gen2_5";
          goto LABEL_22;
        }

        if (v5 == 8)
        {
          v4 = "blit_fast_clear_gen2_8";
          goto LABEL_22;
        }

        v6 = 0;
        if (v5 == 16)
        {
          v4 = "blit_fast_clear_gen2_16";
          goto LABEL_22;
        }

LABEL_23:
        AGCLLVMObject::readBitcode(a2, v4, v6, 1);
        {
          {
            AGCLLVMDriverFastClearShaders::create(AGCLLVMCtx &,llvm::LLVMContext &,_AGCBlitFastClearState const*)::computeCS = 0;
            *algn_27C8D97D8 = 0;
            qword_27C8D97E0 = 0;
          }
        }

        operator new();
      }

      v4 = "blit_fast_clear_gen2_meta_copy";
    }
  }

LABEL_22:
  v6 = strlen(v4);
  goto LABEL_23;
}

const char *getComputeControlFlowBitcodeFileName(uint64_t a1)
{
  v1 = *(a1 + 28) - 14;
  result = "compute_control_flow_predicate_g13";
  switch(v1)
  {
    case 0:
    case 2:
    case 11:
    case 12:
    case 13:
      return result;
    case 3:
    case 4:
      result = "compute_control_flow_predicate_g14";
      break;
    case 5:
    case 6:
    case 7:
      result = "compute_control_flow_predicate_g14x";
      break;
    case 8:
      result = "compute_control_flow_predicate_g15p_b0";
      break;
    case 10:
      v4 = HIWORD(*(a1 + 24));
      v5 = "compute_control_flow_predicate_g15g_a0";
      if (v4 == 3)
      {
        v5 = "compute_control_flow_predicate_g15g_b0";
      }

      if (v4 == 5)
      {
        result = "compute_control_flow_predicate_g15g_c0";
      }

      else
      {
        result = v5;
      }

      break;
    case 17:
      if (*(a1 + 26) - 3 >= 2)
      {
        result = "compute_control_flow_predicate_g16p_a0";
      }

      else
      {
        result = "compute_control_flow_predicate_g16p_b0";
      }

      break;
    case 18:
    case 20:
      result = "compute_control_flow_predicate_hal200";
      break;
    case 21:
    case 24:
      result = "compute_control_flow_predicate_hal300";
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t virtual thunk toAGCLLVMDriverUberBlitShader::dumpType(AGCLLVMDriverUberBlitShader *this)
{
  v1 = this + *(*this - 64);
  llvm::SmallVectorTemplateBase<char,true>::push_back(v1 + 584, 0);
  --*(v1 + 585);
  return *(v1 + 584);
}

void virtual thunk toAGCLLVMDriverUberBlitShader::~AGCLLVMDriverUberBlitShader(AGCLLVMDriverUberBlitShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (this + *(*this - 24));
  *v4 = &unk_282582988;
  v4[595] = &unk_282582D10;
  v4[808] = &unk_282582E20;
  v5 = v4[584];
  if (v5 != v4 + 587)
  {
    free(v5);
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 580), a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v4, &off_282582E38, v6, v7);
  AGCLLVMObject::~AGCLLVMObject((v4 + 595));

  JUMPOUT(0x20F331DC0);
}

{
  v4 = (this + *(*this - 24));
  *v4 = &unk_282582988;
  v4[595] = &unk_282582D10;
  v4[808] = &unk_282582E20;
  v5 = v4[584];
  if (v5 != v4 + 587)
  {
    free(v5);
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 580), a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v4, &off_282582E38, v6, v7);

  AGCLLVMObject::~AGCLLVMObject((v4 + 595));
}

uint64_t AGCLLVMDriverUberBlitShader::dumpType(AGCLLVMDriverUberBlitShader *this)
{
  llvm::SmallVectorTemplateBase<char,true>::push_back(this + 584, 0);
  --*(this + 585);
  return *(this + 584);
}

void AGCLLVMDriverUberBlitShader::~AGCLLVMDriverUberBlitShader(AGCLLVMDriverUberBlitShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_282582988;
  v5 = (this + 4760);
  *(this + 595) = &unk_282582D10;
  *(this + 808) = &unk_282582E20;
  v6 = *(this + 584);
  if (v6 != this + 4696)
  {
    free(v6);
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640, a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_282582E38, v7, v8);
  AGCLLVMObject::~AGCLLVMObject(v5);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_282582988;
  v5 = (this + 4760);
  *(this + 595) = &unk_282582D10;
  *(this + 808) = &unk_282582E20;
  v6 = *(this + 584);
  if (v6 != this + 4696)
  {
    free(v6);
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640, a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_282582E38, v7, v8);
  AGCLLVMObject::~AGCLLVMObject(v5);
}

uint64_t virtual thunk toAGCLLVMDriverBVHBuilderComputeShader::dumpType(AGCLLVMDriverBVHBuilderComputeShader *this)
{
  v1 = this + *(*this - 64);
  llvm::SmallVectorTemplateBase<char,true>::push_back(v1 + 584, 0);
  --*(v1 + 585);
  return *(v1 + 584);
}

void virtual thunk toAGCLLVMDriverBVHBuilderComputeShader::~AGCLLVMDriverBVHBuilderComputeShader(AGCLLVMDriverBVHBuilderComputeShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (this + *(*this - 24));
  *v4 = &unk_282582ED0;
  v4[595] = &unk_282583258;
  v4[808] = &unk_282583368;
  v5 = v4[584];
  if (v5 != v4 + 587)
  {
    free(v5);
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 580), a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v4, &off_282583380, v6, v7);
  AGCLLVMObject::~AGCLLVMObject((v4 + 595));

  JUMPOUT(0x20F331DC0);
}

{
  v4 = (this + *(*this - 24));
  *v4 = &unk_282582ED0;
  v4[595] = &unk_282583258;
  v4[808] = &unk_282583368;
  v5 = v4[584];
  if (v5 != v4 + 587)
  {
    free(v5);
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap((v4 + 580), a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(v4, &off_282583380, v6, v7);

  AGCLLVMObject::~AGCLLVMObject((v4 + 595));
}

uint64_t AGCLLVMDriverBVHBuilderComputeShader::dumpType(AGCLLVMDriverBVHBuilderComputeShader *this)
{
  llvm::SmallVectorTemplateBase<char,true>::push_back(this + 584, 0);
  --*(this + 585);
  return *(this + 584);
}

void AGCLLVMDriverBVHBuilderComputeShader::~AGCLLVMDriverBVHBuilderComputeShader(AGCLLVMDriverBVHBuilderComputeShader *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_282582ED0;
  v5 = (this + 4760);
  *(this + 595) = &unk_282583258;
  *(this + 808) = &unk_282583368;
  v6 = *(this + 584);
  if (v6 != this + 4696)
  {
    free(v6);
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640, a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_282583380, v7, v8);
  AGCLLVMObject::~AGCLLVMObject(v5);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_282582ED0;
  v5 = (this + 4760);
  *(this + 595) = &unk_282583258;
  *(this + 808) = &unk_282583368;
  v6 = *(this + 584);
  if (v6 != this + 4696)
  {
    free(v6);
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 4640, a2, a3, a4);
  AGCLLVMUserComputeKernelG10::~AGCLLVMUserComputeKernelG10(this, &off_282583380, v7, v8);
  AGCLLVMObject::~AGCLLVMObject(v5);
}

uint64_t AGCLLVMUserDynamicLibrary::getTileConstant(void *a1, unsigned int a2, unint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v21[0] = llvm::ArrayType::get(*(a1 + *(*a1 - 40) + *(*(a1 + *(*a1 - 40)) - 24) + 1888), 0x18);
  v4 = llvm::StructType::get();
  v5 = (a1 + *(*a1 - 32));
  DylibBuiltinPerCommandStateVar = AGCLLVMObject::getDylibBuiltinPerCommandStateVar(v5);
  v22 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v5 + 213), DylibBuiltinPerCommandStateVar, v21);
  v8 = llvm::PointerType::get();
  v20 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v5 + 214, Load, v8, v19, v9);
  v11 = a1 + *(*a1 - 32);
  v19[0] = llvm::ConstantInt::get();
  v19[1] = llvm::ConstantInt::get();
  v19[2] = llvm::ConstantInt::get();
  v22 = 257;
  llvm::Type::isOpaquePointerTy(*PointerCast);
  v12 = llvm::IRBuilderBase::CreateInBoundsGEP((v11 + 1712), v4, PointerCast, v19, 3, v21);
  v13 = a1 + *(*a1 - 32);
  v14 = *(v13 + 238);
  v15 = llvm::PointerType::get();
  v22 = 257;
  v17 = llvm::IRBuilderBase::CreatePointerCast(v13 + 214, v12, v15, v21, v16);
  v20 = 257;
  llvm::Type::isOpaquePointerTy(*v17);
  return llvm::IRBuilderBase::CreateAlignedLoad(v13 + 214, v14, v17, 0, v19);
}

uint64_t virtual thunk toAGCLLVMUserDynamicLibrary::disableGin1122SWWA(AGCLLVMUserDynamicLibrary *this)
{
  return *(this + *(*this - 416) + *(*(this + *(*this - 416)) - 24) + 8);
}

{
  return *(this + *(*this - 128) + *(*(this + *(*this - 128)) - 24) + 8);
}

uint64_t virtual thunk toAGCLLVMUserDynamicLibrary::getMaxSharedRegisters(AGCLLVMUserDynamicLibrary *this)
{
  v1 = *(this + *(*this - 312) + *(*(this + *(*this - 312)) - 32) + 2168);
  v2 = v1[235];
  v3 = v1[236];
  v4 = v1[237];
  if (v3 < v2)
  {
    v2 = v3;
  }

  if (v4 >= v2)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t AGCLLVMUserDynamicLibrary::replaceBuiltins(AGCLLVMUserDynamicLibrary *this)
{
  v24[42] = *MEMORY[0x277D85DE8];
  v2 = AGCLLVMUserObject::replaceBuiltins((this + *(*this - 40)));
  if (v2)
  {
    v3 = *(this + *(*this - 32) + 2136);
    AGCLLVMBuilder::AGCLLVMBuilder(&v20, *v3);
    v24[41] = this;
    v20 = &unk_28259FB30;
    v24[37] = v3;
    {
      std::string::basic_string[abi:nn200100]<0>(AGCLLVMUserDynamicLibrary::replaceWorkitemFunctions(void)::workitem_functions, "air.get_dispatch_local_size");
      dword_27C8D99D0 = 1;
      qword_27C8D99D8 = AGCLLVMUserDynamicLibrary::buildDispatchLocalSize;
      unk_27C8D99E0 = 0;
      dword_27C8D99E8 = 4;
      word_27C8D99EC = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D99F0, "air.get_dispatch_quadgroups_per_threadgroup");
      dword_27C8D9A08 = 1;
      qword_27C8D9A10 = AGCLLVMUserDynamicLibrary::buildDispatchQuadgroupsPerThreadgroup;
      unk_27C8D9A18 = 0;
      dword_27C8D9A20 = 2;
      word_27C8D9A24 = 0;
      std::string::basic_string[abi:nn200100]<0>(&algn_27C8D9A26[2], "air.get_dispatch_simdgroups_per_threadgroup");
      dword_27C8D9A40 = 1;
      qword_27C8D9A48 = AGCLLVMUserDynamicLibrary::buildDispatchSimdgroupsPerThreadgroup;
      unk_27C8D9A50 = 0;
      dword_27C8D9A58 = 2;
      word_27C8D9A5C = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D9A60, "air.get_dispatch_threads_per_threadgroup");
      dword_27C8D9A78 = 1;
      qword_27C8D9A80 = AGCLLVMUserDynamicLibrary::buildDispatchLocalSize;
      unk_27C8D9A88 = 0;
      dword_27C8D9A90 = 4;
      word_27C8D9A94 = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D9A98, "air.get_global_id");
      dword_27C8D9AB0 = 1;
      qword_27C8D9AB8 = AGCLLVMUserDynamicLibrary::buildGlobalID;
      unk_27C8D9AC0 = 0;
      dword_27C8D9AC8 = 4;
      word_27C8D9ACC = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D9AD0, "air.get_global_size");
      dword_27C8D9AE8 = 1;
      qword_27C8D9AF0 = AGCLLVMUserDynamicLibrary::buildGlobalSize;
      unk_27C8D9AF8 = 0;
      dword_27C8D9B00 = 4;
      word_27C8D9B04 = 0;
      std::string::basic_string[abi:nn200100]<0>(&algn_27C8D9B06[2], "air.get_group_id");
      dword_27C8D9B20 = 1;
      qword_27C8D9B28 = AGCLLVMUserDynamicLibrary::buildGroupID;
      unk_27C8D9B30 = 0;
      dword_27C8D9B38 = 4;
      word_27C8D9B3C = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D9B40, "air.get_local_id");
      dword_27C8D9B58 = 1;
      qword_27C8D9B60 = AGCLLVMUserDynamicLibrary::buildLocalID;
      unk_27C8D9B68 = 0;
      dword_27C8D9B70 = 4;
      word_27C8D9B74 = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D9B78, "air.get_local_linear_id");
      dword_27C8D9B90 = 1;
      qword_27C8D9B98 = AGCLLVMUserDynamicLibrary::buildLocalLinearID;
      unk_27C8D9BA0 = 0;
      dword_27C8D9BA8 = 2;
      word_27C8D9BAC = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D9BB0, "air.get_local_size");
      dword_27C8D9BC8 = 1;
      qword_27C8D9BD0 = AGCLLVMUserDynamicLibrary::buildLocalSize;
      qword_27C8D9BD8 = 0;
      dword_27C8D9BE0 = 4;
      word_27C8D9BE4 = 0;
      std::string::basic_string[abi:nn200100]<0>(&algn_27C8D9BE6[2], "air.get_num_groups");
      dword_27C8D9C00 = 1;
      qword_27C8D9C08 = AGCLLVMUserDynamicLibrary::buildNumGroups;
      qword_27C8D9C10 = 0;
      dword_27C8D9C18 = 4;
      word_27C8D9C1C = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D9C20, "air.get_quadgroups_per_threadgroup");
      dword_27C8D9C38 = 1;
      qword_27C8D9C40 = AGCLLVMUserDynamicLibrary::buildQuadgroupsPerThreadgroup;
      qword_27C8D9C48 = 0;
      dword_27C8D9C50 = 2;
      word_27C8D9C54 = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D9C58, "air.get_quadgroup_index_in_threadgroup");
      dword_27C8D9C70 = 1;
      qword_27C8D9C78 = AGCLLVMUserDynamicLibrary::buildQuadGroup;
      qword_27C8D9C80 = 0;
      dword_27C8D9C88 = 2;
      word_27C8D9C8C = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D9C90, "air.get_quad_group");
      dword_27C8D9CA8 = 1;
      qword_27C8D9CB0 = AGCLLVMUserDynamicLibrary::buildQuadGroup;
      qword_27C8D9CB8 = 0;
      dword_27C8D9CC0 = 2;
      word_27C8D9CC4 = 0;
      std::string::basic_string[abi:nn200100]<0>(&algn_27C8D9CC6[2], "air.get_simdgroups_per_threadgroup");
      dword_27C8D9CE0 = 1;
      qword_27C8D9CE8 = AGCLLVMUserDynamicLibrary::buildSimdgroupsPerThreadgroup;
      qword_27C8D9CF0 = 0;
      dword_27C8D9CF8 = 2;
      word_27C8D9CFC = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D9D00, "air.get_simdgroup_index_in_threadgroup");
      dword_27C8D9D18 = 1;
      qword_27C8D9D20 = AGCLLVMUserDynamicLibrary::buildSimdGroupIndexInThreadgroup;
      qword_27C8D9D28 = 0;
      dword_27C8D9D30 = 2;
      word_27C8D9D34 = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D9D38, "air.get_stage_in_grid_origin");
      dword_27C8D9D50 = 1;
      qword_27C8D9D58 = AGCLLVMUserDynamicLibrary::buildStageInOrigin;
      qword_27C8D9D60 = 0;
      dword_27C8D9D68 = 4;
      word_27C8D9D6C = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D9D70, "air.get_stage_in_grid_size");
      dword_27C8D9D88 = 1;
      qword_27C8D9D90 = AGCLLVMUserDynamicLibrary::buildStageInSize;
      qword_27C8D9D98 = 0;
      dword_27C8D9DA0 = 4;
      word_27C8D9DA4 = 0;
      std::string::basic_string[abi:nn200100]<0>(&algn_27C8D9DA6[2], "air.get_thread_index_in_quadgroup");
      dword_27C8D9DC0 = 1;
      qword_27C8D9DC8 = AGCLLVMUserDynamicLibrary::buildQuadElement;
      qword_27C8D9DD0 = 0;
      dword_27C8D9DD8 = 2;
      word_27C8D9DDC = 0;
      std::string::basic_string[abi:nn200100]<0>(qword_27C8D9DE0, "air.get_thread_index_in_simdgroup");
      dword_27C8D9DF8 = 1;
      qword_27C8D9E00 = AGCLLVMUserDynamicLibrary::buildThreadIndexInSimdGroup;
      qword_27C8D9E08 = 0;
      dword_27C8D9E10 = 2;
      word_27C8D9E14 = 0;
      __cxa_atexit(__cxx_global_array_dtor_1860, 0, &dword_20E4E1000);
    }

    v4 = 20;
    v5 = &dword_27C8D99D0;
    do
    {
      if (*(v5 - 1) >= 0)
      {
        v6 = *(v5 - 1);
      }

      else
      {
        v6 = *(v5 - 2);
      }

      std::string::basic_string[abi:nn200100](&__p, v6 + 4);
      if (v19 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v6)
      {
        if (*(v5 - 1) >= 0)
        {
          v8 = v5 - 6;
        }

        else
        {
          v8 = *(v5 - 3);
        }

        memmove(p_p, v8, v6);
      }

      strcpy(p_p + v6, ".i16");
      if (v19 >= 0)
      {
        v9 = &__p;
      }

      else
      {
        v9 = __p;
      }

      if (v19 >= 0)
      {
        v10 = v19;
      }

      else
      {
        v10 = v18;
      }

      AGCLLVMAirBuiltinReplacement<AGCLLVMUserDynamicLibrary>::doReplacement(&v20, v9, v10, v5);
      if (v19 < 0)
      {
        operator delete(__p);
      }

      if (*(v5 - 1) >= 0)
      {
        v11 = *(v5 - 1);
      }

      else
      {
        v11 = *(v5 - 2);
      }

      std::string::basic_string[abi:nn200100](&__p, v11 + 4);
      if (v19 >= 0)
      {
        v12 = &__p;
      }

      else
      {
        v12 = __p;
      }

      if (v11)
      {
        if (*(v5 - 1) >= 0)
        {
          v13 = v5 - 6;
        }

        else
        {
          v13 = *(v5 - 3);
        }

        memmove(v12, v13, v11);
      }

      strcpy(v12 + v11, ".i32");
      if (v19 >= 0)
      {
        v14 = &__p;
      }

      else
      {
        v14 = __p;
      }

      if (v19 >= 0)
      {
        v15 = v19;
      }

      else
      {
        v15 = v18;
      }

      AGCLLVMAirBuiltinReplacement<AGCLLVMUserDynamicLibrary>::doReplacement(&v20, v14, v15, v5);
      if (v19 < 0)
      {
        operator delete(__p);
      }

      v5 += 14;
      --v4;
    }

    while (v4);
    llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v24);
    llvm::IRBuilderFolder::~IRBuilderFolder(&v23);
    if (v21 != &v22)
    {
      free(v21);
    }
  }

  return v2;
}

llvm::Function *AGCLLVMAirBuiltinReplacement<AGCLLVMUserDynamicLibrary>::doReplacement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v97 = *MEMORY[0x277D85DE8];
  result = llvm::Module::getFunction();
  if (result)
  {
    v7 = *(a4 + 24);
    v80 = result;
    if (v7 == 12)
    {
      for (i = *(result + 1); i; *(a1 + 64) = 0)
      {
        v11 = *(i + 24);
        i = *(i + 8);
        llvm::IRBuilderBase::SetInsertPoint((a1 + 8), v11);
        v12 = *(a1 + 464) + *(**(a1 + 464) - 32);
        *v94 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v94[2], (a1 + 8));
        LODWORD(v94[3]) = *(a1 + 104);
        AGCLLVMBuilder::InsertPoint::restoreIP(v94, v12 + 1712);
        if (v94[2])
        {
          llvm::MetadataTracking::untrack();
        }

        v13 = *(a4 + 8);
        v14 = *(a4 + 16);
        v15 = (*(a1 + 464) + (v14 >> 1));
        if (v14)
        {
          v13 = *(*v15 + v13);
        }

        v13(v15, v11);
        *(a1 + 56) = 0;
      }

      return llvm::Function::eraseFromParent(v80);
    }

    if (v7 == 11)
    {
      v8 = *(a4 + 8);
      if (v8)
      {
        v9 = strlen(*(a4 + 8));
        v94[0] = &v94[3];
        *&v94[1] = xmmword_20E70C500;
        llvm::SmallVectorImpl<char>::append<char const*,void>(v94, v8, &v8[v9]);
      }

      else
      {
        v94[2] = 64;
        v94[0] = &v94[3];
        v94[1] = 0;
      }

      llvm::SmallVectorImpl<char>::append<char const*,void>(v94, ".", "");
      if (v94[2] < v94[1])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      llvm::Module::getOrInsertFunction();
      llvm::Value::replaceAllUsesWith();
      if (v94[0] != &v94[3])
      {
        free(v94[0]);
      }

      return llvm::Function::eraseFromParent(v80);
    }

    v16 = **(*(result + 3) + 16);
    v17 = ((*(v16 + 8) & 0xFE) == 18) & *(a4 + 29);
    if (v17 == 1)
    {
      v18 = *(v16 + 32);
    }

    else
    {
      v18 = 1;
    }

    v81 = v18;
    v79 = *(a1 + 104);
    v19 = *(result + 1);
    if (!v19)
    {
LABEL_112:
      *(a1 + 104) = v79;
      return llvm::Function::eraseFromParent(v80);
    }

    v83 = a4;
    while (1)
    {
      v20 = *(v19 + 24);
      v21 = *(v19 + 8);
      if (*a4 == 1)
      {
        v22 = 0;
      }

      else
      {
        if (*a4 != 2)
        {
          goto LABEL_23;
        }

        v22 = 121;
      }

      *(a1 + 104) = v22;
LABEL_23:
      v82 = v21;
      llvm::IRBuilderBase::SetInsertPoint((a1 + 8), v20);
      v23 = llvm::UndefValue::get();
      if (v81)
      {
        for (j = 0; j != v81; ++j)
        {
          v84 = v23;
          v96 = 0;
          v95 = 0u;
          memset(v94, 0, sizeof(v94));
          v25 = llvm::CallBase::arg_end(v20) - v20 + 32 * (*(v20 + 5) & 0x7FFFFFF);
          if ((v25 & 0x1FFFFFFFE0) != 0)
          {
            v26 = (v25 >> 5);
            v27 = v94;
            v28 = v20;
            do
            {
              v29 = (v28 - 32 * (*(v20 + 5) & 0x7FFFFFF));
              v30 = *v29;
              *v27 = *v29;
              if (v17 && (*(*v30 + 8) & 0xFE) == 0x12)
              {
                v93 = 257;
                v31 = llvm::ConstantInt::get();
                *v27 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v30, v31, &PrimitiveSizeInBits);
              }

              ++v27;
              v28 = (v28 + 32);
              --v26;
            }

            while (v26);
          }

          if (*(v83 + 28))
          {
            v32 = *v94[0];
            if ((*(*v94[0] + 8) & 0xFE) == 0x12)
            {
              v32 = **(v32 + 2);
            }

            PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v32);
            v92 = v33;
            if (llvm::TypeSize::operator unsigned long long() == 32)
            {
              v34 = 0;
            }

            else
            {
              v35 = *(a1 + 168);
              if ((*(*v94[0] + 8) & 0xFE) == 0x12)
              {
                v35 = llvm::FixedVectorType::get();
              }

              if ((v25 & 0x1FFFFFFFE0) != 0)
              {
                v36 = (v25 >> 5);
                v37 = v94;
                do
                {
                  v38 = *v37;
                  v93 = 257;
                  *v37++ = llvm::IRBuilderBase::CreateFPExt((a1 + 8), v38, v35, &PrimitiveSizeInBits);
                  --v36;
                }

                while (v36);
              }

              v34 = 1;
            }
          }

          else
          {
            v34 = 0;
          }

          if (llvm::FPMathOperator::classof(v20))
          {
            FastMathFlags = llvm::Instruction::getFastMathFlags(v20);
          }

          else
          {
            FastMathFlags = 0;
          }

          v40 = *(a1 + 464) + *(**(a1 + 464) - 32);
          v88 = *(a1 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v89, (a1 + 8));
          v90 = *(a1 + 104);
          AGCLLVMBuilder::InsertPoint::restoreIP(&v88, v40 + 1712);
          if (v89)
          {
            llvm::MetadataTracking::untrack();
          }

          FPTrunc = 0;
          v42 = *(v83 + 24);
          if (v42 > 5)
          {
            if (v42 <= 7)
            {
              if (v42 != 6)
              {
                v55 = *(v83 + 8);
                v56 = *(v83 + 16);
                v57 = v94[0];
                v58 = v94[1];
                v59 = v94[2];
                v60 = (*(a1 + 464) + (v56 >> 1));
                if ((v56 & 1) == 0)
                {
                  goto LABEL_97;
                }

                v68 = (*(*v60 + v55))(v60, v94[0], v94[1], v94[2]);
LABEL_98:
                FPTrunc = v68;
                goto LABEL_99;
              }

              v64 = *(v83 + 8);
              v65 = *(v83 + 16);
              v66 = (*(a1 + 464) + (v65 >> 1));
              if (v65)
              {
                v64 = *(*v66 + v64);
              }

              v75 = v64(v66, v94[0], v94[1], FastMathFlags);
              goto LABEL_89;
            }

            switch(v42)
            {
              case 8:
                v69 = *(v83 + 8);
                v70 = *(v83 + 16);
                v71 = (*(a1 + 464) + (v70 >> 1));
                if (v70)
                {
                  v69 = *(*v71 + v69);
                }

                v75 = v69(v71, v94[0], v94[1], v94[2], FastMathFlags);
LABEL_89:
                FPTrunc = v75;
                break;
              case 9:
                v55 = *(v83 + 8);
                v74 = *(v83 + 16);
                v60 = (*(a1 + 464) + (v74 >> 1));
                if (v74)
                {
                  v55 = *(*v60 + v55);
                }

                v57 = v94;
                v58 = &unk_20E75F419;
                v59 = 0;
LABEL_97:
                v68 = v55(v60, v57, v58, v59);
                goto LABEL_98;
              case 10:
                v48 = *(v83 + 8);
                v49 = *(v83 + 16);
                v50 = (*(a1 + 464) + (v49 >> 1));
                if (v49)
                {
                  v48 = *(*v50 + v48);
                }

                v68 = v48(v50, *v20, v94, &unk_20E75F419, 0);
                goto LABEL_98;
            }
          }

          else
          {
            if (v42 > 2)
            {
              if (v42 != 3)
              {
                if (v42 == 4)
                {
                  v72 = (v94[0] + 24);
                  if (*(v94[0] + 8) >= 0x41u)
                  {
                    v72 = *v72;
                  }

                  v46 = *v72;
                  v43 = *(v83 + 8);
                  v73 = *(v83 + 16);
                  v45 = *v20;
                  v47 = (*(a1 + 464) + (v73 >> 1));
                  if (v73)
                  {
                    v43 = *(*v47 + v43);
                  }
                }

                else
                {
                  v43 = *(v83 + 8);
                  v44 = *(v83 + 16);
                  v45 = v94[0];
                  v46 = v94[1];
                  v47 = (*(a1 + 464) + (v44 >> 1));
                  if (v44)
                  {
                    v43 = *(*v47 + v43);
                  }
                }

                v68 = v43(v47, v45, v46);
                goto LABEL_98;
              }

              v51 = *(v83 + 8);
              v67 = *(v83 + 16);
              v53 = v94[0];
              v54 = (*(a1 + 464) + (v67 >> 1));
              if ((v67 & 1) == 0)
              {
                goto LABEL_73;
              }

              goto LABEL_72;
            }

            if (v42 == 1)
            {
              v61 = *(v83 + 8);
              v62 = *(v83 + 16);
              v63 = (*(a1 + 464) + (v62 >> 1));
              if (v62)
              {
                v61 = *(*v63 + v61);
              }

              v68 = v61(v63);
              goto LABEL_98;
            }

            if (v42 == 2)
            {
              v51 = *(v83 + 8);
              v52 = *(v83 + 16);
              v53 = *v20;
              v54 = (*(a1 + 464) + (v52 >> 1));
              if ((v52 & 1) == 0)
              {
LABEL_73:
                v68 = v51(v54, v53);
                goto LABEL_98;
              }

LABEL_72:
              v51 = *(*v54 + v51);
              goto LABEL_73;
            }
          }

LABEL_99:
          v76 = *(a1 + 464) + *(**(a1 + 464) - 32);
          v85 = *(v76 + 1760);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v86, (v76 + 1712));
          v87 = *(v76 + 1808);
          AGCLLVMBuilder::InsertPoint::restoreIP(&v85, a1 + 8);
          if (v86)
          {
            llvm::MetadataTracking::untrack();
          }

          if (v34)
          {
            v77 = *v20;
            if (v17 && (*(v77 + 8) & 0xFE) == 0x12)
            {
              v77 = **(v77 + 16);
            }

            v93 = 257;
            FPTrunc = llvm::IRBuilderBase::CreateFPTrunc((a1 + 8), FPTrunc, v77, &PrimitiveSizeInBits);
          }

          if (v17)
          {
            v93 = 257;
            v78 = llvm::ConstantInt::get();
            FPTrunc = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v84, FPTrunc, v78, &PrimitiveSizeInBits);
          }

          v23 = FPTrunc;
        }
      }

      if (*v20 != *(a1 + 144))
      {
        llvm::Value::replaceAllUsesWith();
      }

      llvm::Instruction::eraseFromParent(v20);
      a4 = v83;
      v19 = v82;
      if (!v82)
      {
        goto LABEL_112;
      }
    }
  }

  return result;
}

uint64_t AGCLLVMUserDynamicLibrary::buildThreadIndexInSimdGroup(AGCLLVMUserDynamicLibrary *this, llvm::Type *a2)
{
  v4 = *(this + *(*this - 32) + 2168);
  v5 = (*(*v4 + 688))(v4);
  v6 = this + *(*this - 32);
  v9 = *(v6 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (v6 + 1712));
  v11 = *(v6 + 452);
  v7 = (*(*v5 + 1624))(v5, &v9, a2);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return v7;
}

uint64_t AGCLLVMUserDynamicLibrary::buildQuadElement(AGCLLVMUserDynamicLibrary *this, llvm::Type *a2)
{
  v4 = *(this + *(*this - 32) + 2168);
  v5 = (*(*v4 + 688))(v4);
  v6 = this + *(*this - 32);
  v9 = *(v6 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (v6 + 1712));
  v11 = *(v6 + 452);
  v7 = AGCLLVMGen3TargetLowerer::buildQuadElement(v5, &v9, a2);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return v7;
}

uint64_t AGCLLVMUserDynamicLibrary::buildStageInSize(AGCLLVMUserDynamicLibrary *this, llvm::Type *a2, llvm::Type *a3)
{
  v5 = *(*this - 40);
  ComputeBuiltinPerCommandStatePtr = AGCLLVMUserDynamicLibrary::loadComputeBuiltinPerCommandStatePtr(this, 2u, a3);

  return AGCLLVMUserShader::buildStageInSizeCommon((this + v5), a3, ComputeBuiltinPerCommandStatePtr, v7);
}

uint64_t AGCLLVMUserDynamicLibrary::loadComputeBuiltinPerCommandStatePtr(void *a1, unsigned int a2, unsigned int a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = llvm::PointerType::get();
  v5 = llvm::PointerType::get();
  v6 = (a1 + *(*a1 - 32));
  DylibBuiltinPerCommandStateVar = AGCLLVMObject::getDylibBuiltinPerCommandStateVar(v6);
  v25 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v6 + 213), DylibBuiltinPerCommandStateVar, v24);
  v28 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(v6 + 214, Load, v4, v27, v9);
  v11 = a1 + *(*a1 - 32);
  v12 = *(v11 + 236);
  v27[0] = llvm::ConstantInt::get();
  v25 = 257;
  llvm::Type::isOpaquePointerTy(*PointerCast);
  v13 = llvm::IRBuilderBase::CreateInBoundsGEP((v11 + 1712), v12, PointerCast, v27, 1, v24);
  v14 = (a1 + *(*a1 - 32));
  v25 = 257;
  v16 = llvm::IRBuilderBase::CreatePointerCast(v14 + 214, v13, v5, v24, v15);
  v17 = a1 + *(*a1 - 32);
  v18 = *(v17 + 239);
  v26 = llvm::ConstantInt::get();
  v25 = 257;
  llvm::Type::isOpaquePointerTy(*v16);
  v19 = llvm::IRBuilderBase::CreateInBoundsGEP((v17 + 1712), v18, v16, &v26, 1, v24);
  v28 = 257;
  llvm::Type::isOpaquePointerTy(*v19);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v17 + 214, v18, v19, 0, v27);
  v21 = llvm::PointerType::get();
  v22 = a1 + *(*a1 - 32);
  v25 = 257;
  return llvm::IRBuilderBase::CreateCast((v22 + 1712), 48, AlignedLoad, v21, v24);
}

uint64_t AGCLLVMUserDynamicLibrary::buildStageInOrigin(AGCLLVMUserDynamicLibrary *this, llvm::Type *a2, llvm::Type *a3)
{
  v5 = *(*this - 40);
  ComputeBuiltinPerCommandStatePtr = AGCLLVMUserDynamicLibrary::loadComputeBuiltinPerCommandStatePtr(this, 2u, a3);

  return AGCLLVMUserShader::buildStageInOriginCommon((this + v5), a3, ComputeBuiltinPerCommandStatePtr, v7);
}

uint64_t AGCLLVMUserDynamicLibrary::buildSimdGroupIndexInThreadgroup(AGCLLVMUserDynamicLibrary *this, llvm::Type *a2)
{
  v4 = *(this + *(*this - 32) + 2168);
  v5 = (*(*v4 + 688))(v4);
  v6 = this + *(*this - 32);
  v9 = *(v6 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (v6 + 1712));
  v11 = *(v6 + 452);
  v7 = (*(*v5 + 1632))(v5, &v9, a2);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return v7;
}

void AGCLLVMUserDynamicLibrary::buildQuadgroupsPerThreadgroupCommon<5u>(AGCLLVMUserDynamicLibrary *a1, llvm::Type *a2, int a3)
{
  if (a3)
  {
    AGCLLVMUserDynamicLibrary::buildDispatchLocalSize(a1, a2, 0);
  }

  AGCLLVMUserDynamicLibrary::buildLocalSize(a1, a2, 0);
}

llvm::User *AGCLLVMUserDynamicLibrary::buildStageSpecificBuiltin(void *a1, llvm::Type *a2, uint64_t a3, uint64_t a4)
{
  {
    std::string::basic_string[abi:nn200100]<0>(AGCLLVMUserDynamicLibrary::buildStageSpecificBuiltin(llvm::Type *,std::array<std::function<llvm::Value * ()(void)>,4ul> const&,std::array<int,4ul> const&)::stage_name, "Tile");
    std::string::basic_string[abi:nn200100]<0>(&AGCLLVMUserDynamicLibrary::buildStageSpecificBuiltin(llvm::Type *,std::array<std::function<llvm::Value * ()(void)>,4ul> const&,std::array<int,4ul> const&)::stage_name[3], "Compute");
    std::string::basic_string[abi:nn200100]<0>(&AGCLLVMUserDynamicLibrary::buildStageSpecificBuiltin(llvm::Type *,std::array<std::function<llvm::Value * ()(void)>,4ul> const&,std::array<int,4ul> const&)::stage_name[6], "Object");
    std::string::basic_string[abi:nn200100]<0>(&AGCLLVMUserDynamicLibrary::buildStageSpecificBuiltin(llvm::Type *,std::array<std::function<llvm::Value * ()(void)>,4ul> const&,std::array<int,4ul> const&)::stage_name[9], "Mesh");
    __cxa_atexit(__cxx_global_array_dtor_39, 0, &dword_20E4E1000);
  }

  v43 = 0x700000009;
  v7 = *(a1 + *(*a1 - 32) + 2168);
  (*(*v7 + 840))(v7);
  (*(**(a1 + *(*a1 - 32) + 2168) + 840))();
  v8 = a1 + *(*a1 - 32);
  v9 = *(v8 + 271);
  v40 = *(v8 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v41, (v8 + 1712));
  v42 = *(v8 + 452);
  v10 = (*(*v9 + 968))(v9, &v40);
  if (v41)
  {
    llvm::MetadataTracking::untrack();
  }

  v11 = *(a1 + *(*a1 - 32) + 1760);
  v39 = 257;
  v12 = llvm::BasicBlock::splitBasicBlock();
  v33 = v11;
  v15 = *(v11 + 40);
  v14 = v11 + 40;
  v13 = v15;
  if (v15 == v14)
  {
    v18 = 0;
  }

  else
  {
    v16 = (v13 - 24);
    if (v13)
    {
      v17 = v13 - 24;
    }

    else
    {
      v17 = 0;
    }

    if (*(v17 + 16) - 29 >= 0xB)
    {
      v18 = 0;
    }

    else
    {
      v18 = v16;
    }
  }

  llvm::Instruction::eraseFromParent(v18);
  v19 = a1 + *(*a1 - 32);
  *(v19 + 220) = v33;
  *(v19 + 221) = v14;
  Switch = llvm::IRBuilderBase::CreateSwitch((a1 + *(*a1 - 32) + 1712), v10, v12, 2);
  v20 = *(*a1 - 32);
  FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v12);
  llvm::IRBuilderBase::SetInsertPoint(a1 + v20 + 1712, v12, FirstInsertionPt);
  v22 = *(*a1 - 32);
  v39 = 257;
  PHI = llvm::IRBuilderBase::CreatePHI((a1 + v22 + 1712), a2, 2, &p_p);
  v23 = 0;
  v37 = 0;
  v36 = 0;
  v24 = &v37;
  v25 = 1;
  do
  {
    v26 = v25;
    if (*(a4 + 4 * v23) != -1 && (*v24 & 1) == 0)
    {
      std::operator+<char>();
      v39 = 260;
      p_p = &__p;
      operator new();
    }

    v25 = 0;
    v24 = &v36;
    v23 = 1;
  }

  while ((v26 & 1) != 0);
  v27 = *(Switch + 20);
  if ((v27 & 0x40000000) != 0)
  {
    if (*(*(Switch - 8) + 32) == v12)
    {
      v28 = *(Switch - 8);
      goto LABEL_23;
    }
  }

  else if (*(Switch - 32 * (v27 & 0x7FFFFFF) + 32) == v12)
  {
    v28 = Switch - 32 * (v27 & 0x7FFFFFF);
LABEL_23:
    llvm::SwitchInst::setDefaultDest(Switch, *(v28 + 96));
  }

  v29 = a1 + *(*a1 - 32);
  v30 = llvm::BasicBlock::getFirstInsertionPt(v12);
  llvm::IRBuilderBase::SetInsertPoint((v29 + 1712), v12, v30);
  return PHI;
}

uint64_t std::__function::__value_func<llvm::Value * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t llvm::IRBuilderBase::CreateSwitch(unsigned int **a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = llvm::User::operator new(0x40);
  MEMORY[0x20F32FE00](v8, a2, a3, a4, 0);
  v14 = 257;
  (*(*a1[10] + 16))(a1[10], v8, v13, a1[6], a1[7]);
  v9 = *(a1 + 2);
  if (v9)
  {
    v10 = *a1;
    v11 = v10 + 16 * v9;
    do
    {
      llvm::Instruction::setMetadata();
      v10 += 16;
    }

    while (v10 != v11);
  }

  return v8;
}

uint64_t llvm::SwitchInst::setDefaultDest(uint64_t result, uint64_t a2)
{
  v2 = *(result + 20);
  if ((v2 & 0x40000000) != 0)
  {
    v3 = *(result - 8);
  }

  else
  {
    v3 = result - 32 * (v2 & 0x7FFFFFF);
  }

  v4 = (v3 + 32);
  if (*(v3 + 32))
  {
    v5 = *(v3 + 40);
    **(v3 + 48) = v5;
    if (v5)
    {
      *(v5 + 16) = *(v3 + 48);
    }
  }

  *v4 = a2;
  if (a2)
  {
    v8 = *(a2 + 8);
    v6 = (a2 + 8);
    v7 = v8;
    *(v3 + 40) = v8;
    if (v8)
    {
      *(v7 + 16) = v3 + 40;
    }

    *(v3 + 48) = v6;
    *v6 = v4;
  }

  return result;
}

uint64_t std::__function::__func<AGCLLVMUserDynamicLibrary::buildLocalSize(llvm::Type *,unsigned int)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildLocalSize(llvm::Type *,unsigned int)::$_1>,llvm::Value * ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + *(*v2 - 32) + 2168);
  v4 = (*(*v3 + 688))(v3);
  v5 = v2 + *(*v2 - 32);
  v8 = *(v5 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (v5 + 1712));
  v10 = *(v5 + 452);
  v6 = AGCLLVMGen3TargetLowerer::buildLocalSize(v4, &v8, *(a1 + 16), *(a1 + 24));
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildLocalSize(llvm::Type *,unsigned int)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildLocalSize(llvm::Type *,unsigned int)::$_1>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FC20;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildLocalSize(llvm::Type *,unsigned int)::$_0,std::allocator<AGCLLVMUserDynamicLibrary::buildLocalSize(llvm::Type *,unsigned int)::$_0>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FBD8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserDynamicLibrary::buildDispatchLocalSize(llvm::Type *,unsigned int)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildDispatchLocalSize(llvm::Type *,unsigned int)::$_1>,llvm::Value * ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + *(*v2 - 32) + 2168);
  v4 = (*(*v3 + 688))(v3);
  v5 = v2 + *(*v2 - 32);
  v8 = *(v5 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (v5 + 1712));
  v10 = *(v5 + 452);
  v6 = AGCLLVMGen3TargetLowerer::buildThreadgroupDispatchSize(v4, &v8, *(a1 + 16), *(a1 + 24));
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildDispatchLocalSize(llvm::Type *,unsigned int)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildDispatchLocalSize(llvm::Type *,unsigned int)::$_1>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FD40;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildDispatchLocalSize(llvm::Type *,unsigned int)::$_0,std::allocator<AGCLLVMUserDynamicLibrary::buildDispatchLocalSize(llvm::Type *,unsigned int)::$_0>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FCF8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

llvm::User *AGCLLVMUserDynamicLibrary::buildQuadGroup(AGCLLVMUserDynamicLibrary *this, llvm::Type *a2)
{
  v6[0] = &unk_28259FE60;
  v6[1] = this;
  v6[2] = a2;
  v6[3] = v6;
  v7[0] = &unk_28259FEA8;
  v7[1] = this;
  v7[2] = a2;
  v7[3] = v7;
  v7[7] = 0;
  v7[11] = 0;
  v5 = xmmword_20E70C670;
  v2 = AGCLLVMUserDynamicLibrary::buildStageSpecificBuiltin(this, a2, v6, &v5);
  for (i = 12; i != -4; i -= 4)
  {
    std::__function::__value_func<llvm::Value * ()(void)>::~__value_func[abi:nn200100](&v6[i]);
  }

  return v2;
}

uint64_t std::__function::__func<AGCLLVMUserDynamicLibrary::buildQuadGroup(llvm::Type *)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildQuadGroup(llvm::Type *)::$_1>,llvm::Value * ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + *(*v2 - 32) + 2168);
  v4 = (*(*v3 + 688))(v3);
  v5 = v2 + *(*v2 - 32);
  v8 = *(v5 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (v5 + 1712));
  v10 = *(v5 + 452);
  v6 = AGCLLVMGen3TargetLowerer::buildQuadGroup(v4, &v8, *(a1 + 16));
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildQuadGroup(llvm::Type *)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildQuadGroup(llvm::Type *)::$_1>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FEA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildQuadGroup(llvm::Type *)::$_0,std::allocator<AGCLLVMUserDynamicLibrary::buildQuadGroup(llvm::Type *)::$_0>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FE60;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

llvm::User *AGCLLVMUserDynamicLibrary::buildQuadgroupsPerThreadgroup(AGCLLVMUserDynamicLibrary *this, llvm::Type *a2)
{
  v6[0] = &unk_28259FF80;
  v6[1] = this;
  v6[2] = a2;
  v6[3] = v6;
  v7[0] = &unk_28259FFC8;
  v7[1] = this;
  v7[2] = a2;
  v7[3] = v7;
  v7[7] = 0;
  v7[11] = 0;
  v5 = xmmword_20E70C670;
  v2 = AGCLLVMUserDynamicLibrary::buildStageSpecificBuiltin(this, a2, v6, &v5);
  for (i = 12; i != -4; i -= 4)
  {
    std::__function::__value_func<llvm::Value * ()(void)>::~__value_func[abi:nn200100](&v6[i]);
  }

  return v2;
}

void AGCLLVMUserDynamicLibrary::buildQuadgroupsPerThreadgroupCommon<2u>(AGCLLVMUserDynamicLibrary *a1, llvm::Type *a2, int a3)
{
  if (a3)
  {
    AGCLLVMUserDynamicLibrary::buildDispatchLocalSize(a1, a2, 0);
  }

  AGCLLVMUserDynamicLibrary::buildLocalSize(a1, a2, 0);
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildQuadgroupsPerThreadgroup(llvm::Type *)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildQuadgroupsPerThreadgroup(llvm::Type *)::$_1>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FFC8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

llvm::User *AGCLLVMUserDynamicLibrary::buildDispatchQuadgroupsPerThreadgroup(AGCLLVMUserDynamicLibrary *this, llvm::Type *a2)
{
  v6[0] = &unk_28259FEF0;
  v6[1] = this;
  v6[2] = a2;
  v6[3] = v6;
  v7[0] = &unk_28259FF38;
  v7[1] = this;
  v7[2] = a2;
  v7[3] = v7;
  v7[7] = 0;
  v7[11] = 0;
  v5 = xmmword_20E70C670;
  v2 = AGCLLVMUserDynamicLibrary::buildStageSpecificBuiltin(this, a2, v6, &v5);
  for (i = 12; i != -4; i -= 4)
  {
    std::__function::__value_func<llvm::Value * ()(void)>::~__value_func[abi:nn200100](&v6[i]);
  }

  return v2;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildDispatchQuadgroupsPerThreadgroup(llvm::Type *)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildDispatchQuadgroupsPerThreadgroup(llvm::Type *)::$_1>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FF38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildDispatchQuadgroupsPerThreadgroup(llvm::Type *)::$_0,std::allocator<AGCLLVMUserDynamicLibrary::buildDispatchQuadgroupsPerThreadgroup(llvm::Type *)::$_0>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FEF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildQuadgroupsPerThreadgroup(llvm::Type *)::$_0,std::allocator<AGCLLVMUserDynamicLibrary::buildQuadgroupsPerThreadgroup(llvm::Type *)::$_0>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FF80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildNumGroups(llvm::Type *,unsigned int)::$_3,std::allocator<AGCLLVMUserDynamicLibrary::buildNumGroups(llvm::Type *,unsigned int)::$_3>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A0208;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildNumGroups(llvm::Type *,unsigned int)::$_2,std::allocator<AGCLLVMUserDynamicLibrary::buildNumGroups(llvm::Type *,unsigned int)::$_2>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A01C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildGlobalSize(llvm::Type *,unsigned int)::$_3,std::allocator<AGCLLVMUserDynamicLibrary::buildGlobalSize(llvm::Type *,unsigned int)::$_3>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A00E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildGlobalSize(llvm::Type *,unsigned int)::$_2,std::allocator<AGCLLVMUserDynamicLibrary::buildGlobalSize(llvm::Type *,unsigned int)::$_2>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A00A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserDynamicLibrary::buildGlobalSize(llvm::Type *,unsigned int)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildGlobalSize(llvm::Type *,unsigned int)::$_1>,llvm::Value * ()(void)>::operator()(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(*v3 - 40);
  v6 = *(a1 + 24);
  ComputeBuiltinPerCommandStatePtr = AGCLLVMUserDynamicLibrary::loadComputeBuiltinPerCommandStatePtr(v3, 1u, a3);
  v9 = AGCLLVMUserDynamicLibrary::loadComputeBuiltinPerCommandStatePtr(v3, 0, v8);

  return AGCLLVMUserShader::buildGlobalSizeCommon((v3 + v5), v4, v6, ComputeBuiltinPerCommandStatePtr, v9);
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildGlobalSize(llvm::Type *,unsigned int)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildGlobalSize(llvm::Type *,unsigned int)::$_1>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A0058;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildGlobalSize(llvm::Type *,unsigned int)::$_0,std::allocator<AGCLLVMUserDynamicLibrary::buildGlobalSize(llvm::Type *,unsigned int)::$_0>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A0010;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildNumGroups(llvm::Type *,unsigned int)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildNumGroups(llvm::Type *,unsigned int)::$_1>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A0178;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildNumGroups(llvm::Type *,unsigned int)::$_0,std::allocator<AGCLLVMUserDynamicLibrary::buildNumGroups(llvm::Type *,unsigned int)::$_0>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A0130;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

llvm::User *AGCLLVMUserDynamicLibrary::buildLocalLinearID(AGCLLVMUserDynamicLibrary *this, llvm::Type *a2)
{
  v6[0] = &unk_28259FC68;
  v6[1] = this;
  v6[2] = a2;
  v6[3] = v6;
  v7[0] = &unk_28259FCB0;
  v7[1] = this;
  v7[2] = a2;
  v7[3] = v7;
  v7[7] = 0;
  v7[11] = 0;
  v5 = xmmword_20E70C670;
  v2 = AGCLLVMUserDynamicLibrary::buildStageSpecificBuiltin(this, a2, v6, &v5);
  for (i = 12; i != -4; i -= 4)
  {
    std::__function::__value_func<llvm::Value * ()(void)>::~__value_func[abi:nn200100](&v6[i]);
  }

  return v2;
}

uint64_t std::__function::__func<AGCLLVMUserDynamicLibrary::buildLocalLinearID(llvm::Type *)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildLocalLinearID(llvm::Type *)::$_1>,llvm::Value * ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + *(*v2 - 32) + 2168);
  v4 = (*(*v3 + 688))(v3);
  v5 = v2 + *(*v2 - 32);
  v8 = *(v5 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (v5 + 1712));
  v10 = *(v5 + 452);
  v6 = AGCLLVMGen3TargetLowerer::buildLocalLinearID(v4, &v8, *(a1 + 16));
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildLocalLinearID(llvm::Type *)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildLocalLinearID(llvm::Type *)::$_1>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FCB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildLocalLinearID(llvm::Type *)::$_0,std::allocator<AGCLLVMUserDynamicLibrary::buildLocalLinearID(llvm::Type *)::$_0>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FC68;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t AGCLLVMUserDynamicLibrary::buildLocalID(AGCLLVMUserDynamicLibrary *this, llvm::Type *a2, uint64_t a3)
{
  v6 = *(this + *(*this - 32) + 2168);
  v7 = (*(*v6 + 688))(v6);
  v8 = this + *(*this - 32);
  v11 = *(v8 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (v8 + 1712));
  v13 = *(v8 + 452);
  v9 = (*(*v7 + 272))(v7, &v11, a2, a3);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildGroupID(llvm::Type *,unsigned int)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildGroupID(llvm::Type *,unsigned int)::$_1>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FB90;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserDynamicLibrary::buildGroupID(llvm::Type *,unsigned int)::$_0,std::allocator<AGCLLVMUserDynamicLibrary::buildGroupID(llvm::Type *,unsigned int)::$_0>,llvm::Value * ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + *(*v2 - 32) + 2168);
  v4 = (*(*v3 + 688))(v3);
  v5 = v2 + *(*v2 - 32);
  v8 = *(v5 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (v5 + 1712));
  v10 = *(v5 + 452);
  v6 = AGCLLVMGen3TargetLowerer::buildThreadgroupIndex(v4, &v8, *(a1 + 16), *(a1 + 24));
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildGroupID(llvm::Type *,unsigned int)::$_0,std::allocator<AGCLLVMUserDynamicLibrary::buildGroupID(llvm::Type *,unsigned int)::$_0>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FB48;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildGlobalID(llvm::Type *,unsigned int)::$_2,std::allocator<AGCLLVMUserDynamicLibrary::buildGlobalID(llvm::Type *,unsigned int)::$_2>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FE18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserDynamicLibrary::buildGlobalID(llvm::Type *,unsigned int)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildGlobalID(llvm::Type *,unsigned int)::$_1>,llvm::Value * ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + *(*v2 - 32) + 2168);
  v4 = (*(*v3 + 688))(v3);
  v5 = v2 + *(*v2 - 32);
  v8 = *(v5 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (v5 + 1712));
  v10 = *(v5 + 452);
  v6 = AGCLLVMGen3TargetLowerer::buildGlobalID(v4, &v8, *(a1 + 16), *(a1 + 24));
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildGlobalID(llvm::Type *,unsigned int)::$_1,std::allocator<AGCLLVMUserDynamicLibrary::buildGlobalID(llvm::Type *,unsigned int)::$_1>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FDD0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserDynamicLibrary::buildGlobalID(llvm::Type *,unsigned int)::$_0,std::allocator<AGCLLVMUserDynamicLibrary::buildGlobalID(llvm::Type *,unsigned int)::$_0>,llvm::Value * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28259FD88;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t AGCLLVMUserDynamicLibrary::setupShaderOutputs(AGCLLVMUserDynamicLibrary *this)
{
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v3 = Function;
    v4 = *(Function + 8);
    while (v4)
    {
      v5 = *(v4 + 24);
      v4 = *(v4 + 8);
      llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 32) + 1712), v5);
      v6 = this + *(*this - 32);
      v7 = *(v6 + 271);
      v10 = *(v6 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (v6 + 1712));
      v12 = *(v6 + 452);
      v8 = llvm::ConstantInt::get();
      (*(*v7 + 624))(v7, &v10, v8);
      if (v11)
      {
        llvm::MetadataTracking::untrack();
      }

      llvm::Instruction::eraseFromParent(v5);
    }

    llvm::Function::eraseFromParent(v3);
  }

  return 1;
}

uint64_t AGCLLVMUserDynamicLibrary::setupShaderInputs(AGCLLVMUserDynamicLibrary *this)
{
  v74 = *MEMORY[0x277D85DE8];
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v5 = Function;
    FragmentBuiltinPsoStateType = AGCLLVMUserObject::getFragmentBuiltinPsoStateType((this + *(*this - 40)), v3, v4);
    v7 = *(v5 + 1);
    if (v7)
    {
      v8 = FragmentBuiltinPsoStateType;
      v9 = this + 1712;
      do
      {
        v10 = *(v7 + 24);
        v7 = *(v7 + 8);
        llvm::IRBuilderBase::SetInsertPoint(&v9[*(*this - 32)], v10);
        v11 = (llvm::CallBase::arg_end(v10) - (v10 - 32 * (*(v10 + 5) & 0x7FFFFFF))) & 0x1FFFFFFFE0;
        FragmentBuiltinPsoStatePtr = AGCLLVMUserObject::loadFragmentBuiltinPsoStatePtr((this + *(*this - 40)));
        v13 = *(*this - 32);
        v69 = 257;
        llvm::Type::isOpaquePointerTy(*FragmentBuiltinPsoStatePtr);
        AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(&v9[v13], v8, FragmentBuiltinPsoStatePtr, 0, v68);
        if (v11 == 32)
        {
          LODWORD(v72) = 1;
          v70[0] = "colorSampleCount";
          v71 = 259;
          llvm::IRBuilderBase::CreateExtractValue(&v9[v13], AlignedLoad, &v72, 1, v70);
          v15 = *(*this - 32);
          v69 = 257;
          llvm::Type::isOpaquePointerTy(*FragmentBuiltinPsoStatePtr);
          v16 = llvm::IRBuilderBase::CreateAlignedLoad(&v9[v15], v8, FragmentBuiltinPsoStatePtr, 0, v68);
          LODWORD(v72) = 0;
          v70[0] = "sampleCount";
          v71 = 259;
          llvm::IRBuilderBase::CreateExtractValue(&v9[v15], v16, &v72, 1, v70);
          v17 = (this + *(*this - 32));
          v18 = *(v10 - 4 * (*(v10 + 5) & 0x7FFFFFF));
          v19 = llvm::ConstantInt::get();
          v69 = 257;
          llvm::IRBuilderBase::CreateICmp(v17 + 214, 32, v18, v19, v68);
          v69 = 257;
          llvm::IRBuilderBase::CreateSelect();
        }

        else
        {
          LODWORD(v72) = 0;
          v70[0] = "sampleCount";
          v71 = 259;
          llvm::IRBuilderBase::CreateExtractValue(&v9[v13], AlignedLoad, &v72, 1, v70);
        }

        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v10);
      }

      while (v7);
    }

    llvm::Function::eraseFromParent(v5);
  }

  v20 = llvm::Module::getFunction();
  if (v20)
  {
    v23 = v20;
    FragmentBuiltinEncoderStateType = AGCLLVMUserObject::getFragmentBuiltinEncoderStateType((this + *(*this - 40)), v21, v22);
    v64 = v23;
    v25 = *(v23 + 1);
    if (v25)
    {
      v26 = FragmentBuiltinEncoderStateType;
      v66 = this + 1712;
      v65 = this + 1704;
      do
      {
        v67 = *(v25 + 1);
        v27 = *(v25 + 3);
        llvm::IRBuilderBase::SetInsertPoint(&v66[*(*this - 32)], v27);
        PerEncoderIndirectionTableGlobal = AGCLLVMUserObject::createPerEncoderIndirectionTableGlobal((this + *(*this - 40)));
        v29 = this + *(*this - 32);
        v69 = 257;
        Load = AGCLLVMBuilder::CreateLoad((v29 + 1704), v30, v68);
        v72 = llvm::ConstantInt::get();
        (*(**(*(this + *(*this - 32) + 2168) + 920) + 1200))();
        v73 = llvm::ConstantInt::get();
        v71 = 257;
        llvm::Type::isOpaquePointerTy(*Load);
        v32 = llvm::IRBuilderBase::CreateGEP((v29 + 1712), PerEncoderIndirectionTableGlobal, Load, &v72, 2, v70);
        v33 = *(*this - 32);
        AGCLLVMUserObject::getFragmentBuiltinEncoderStateType((this + *(*this - 40)), v34, v35);
        v36 = llvm::PointerType::get();
        v69 = 257;
        PointerCast = llvm::IRBuilderBase::CreatePointerCast(&v66[v33], v32, v36, v68, v37);
        v39 = llvm::UndefValue::get();
        v40 = *(*this - 32);
        v70[0] = llvm::ConstantInt::get();
        v70[1] = llvm::ConstantInt::get();
        v69 = 257;
        llvm::Type::isOpaquePointerTy(*PointerCast);
        GEP = llvm::IRBuilderBase::CreateGEP(&v66[v40], v26, PointerCast, v70, 2, v68);
        v42 = this + *(*this - 32);
        v43 = *(v27 - 4 * (*(v27 + 5) & 0x7FFFFFF));
        v44 = llvm::ConstantInt::get();
        v69 = 257;
        Mul = llvm::IRBuilderBase::CreateMul((v42 + 1712), v43, v44, v68);
        v46 = this + *(*this - 32);
        v72 = llvm::ConstantInt::get();
        v73 = Mul;
        v69 = 257;
        llvm::Type::isOpaquePointerTy(*GEP);
        v47 = llvm::IRBuilderBase::CreateGEP((v46 + 1712), v26, GEP, &v72, 2, v68);
        v71 = 257;
        v48 = AGCLLVMBuilder::CreateLoad((v46 + 1704), v47, v70);
        v49 = v26;
        v50 = &v65[*(*this - 32)];
        v69 = 257;
        v51 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((v50 + 8), v39, v48, v51, v68);
        v53 = this + *(*this - 32);
        v54 = llvm::ConstantInt::get();
        v69 = 257;
        Add = llvm::IRBuilderBase::CreateAdd((v53 + 1712), Mul, v54, v68);
        v56 = this + *(*this - 32);
        v57 = *(v56 + 241);
        v72 = llvm::ConstantInt::get();
        v73 = Add;
        v69 = 257;
        llvm::Type::isOpaquePointerTy(*GEP);
        v58 = llvm::IRBuilderBase::CreateGEP((v56 + 1712), v57, GEP, &v72, 2, v68);
        v71 = 257;
        v59 = (v56 + 1704);
        v26 = v49;
        v60 = AGCLLVMBuilder::CreateLoad(v59, v58, v70);
        v61 = &v65[*(*this - 32)];
        v69 = 257;
        v62 = llvm::ConstantInt::get();
        llvm::IRBuilderBase::CreateInsertElement((v61 + 8), InsertElement, v60, v62, v68);
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v27);
        v25 = v67;
      }

      while (v67);
    }

    llvm::Function::eraseFromParent(v64);
  }

  return 1;
}

llvm::Value *AGCLLVMUserObject::loadFragmentBuiltinPsoStatePtr(AGCLLVMUserObject *this)
{
  v2 = this + *(*this - 24);
  v17 = *(v2 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v18, (v2 + 1712));
  v19 = *(v2 + 452);
  DylibBaseGetterFunc = AGCLLVMUserObject::createDylibBaseGetterFunc(this);
  v4 = this + *(*this - 24);
  v14 = v17;
  v15 = v18;
  if (v18)
  {
    llvm::MetadataTracking::track();
  }

  v16 = v19;
  AGCLLVMBuilder::InsertPoint::restoreIP(&v14, (v4 + 1712));
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  v5 = (this + *(*this - 24));
  v13 = 257;
  v7 = llvm::IRBuilderBase::CreateCall(v5 + 214, *(DylibBaseGetterFunc + 24), DylibBaseGetterFunc, 0, 0, v12);
  v8 = v18;
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  AGCLLVMUserObject::getFragmentBuiltinPsoStateType(this, v8, v6);
  v9 = llvm::PointerType::get();
  v13 = 257;
  return llvm::IRBuilderBase::CreatePointerCast(v2 + 214, v7, v9, v12, v10);
}

void AGCLLVMUserDynamicLibrary::addInitCompilePass(AGCLLVMUserDynamicLibrary *this)
{
  v1 = this + *(*this - 32);
  v2 = &AGCUserObjectTemplateWrapper<AGCLLVMUserDynamicLibrary>::Key;
  if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::FindAndConstruct(v1 + 198, &v2)[1])
  {
    operator new();
  }

  operator new();
}

char *llvm::PassInfoMixin<ValidateMaxTTPTGDynamicLibraryPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x54)
  {
    v1 = v0;
  }

  else
  {
    v1 = 84;
  }

  v2 = &aStringrefLlvmG_40[v1];
  v3 = 84 - v1;
  if ((84 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 84 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,ValidateMaxTTPTGDynamicLibraryPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<ValidateMaxTTPTGDynamicLibraryPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMUserDynamicLibrary>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x69)
  {
    v1 = v0;
  }

  else
  {
    v1 = 105;
  }

  v2 = &aStringrefLlvmG_39[v1];
  v3 = 105 - v1;
  if ((105 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 105 - v1;
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

char *llvm::PassInfoMixin<SimplifyGenericIRUserDynamicLibraryPass>::name()
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

  v2 = &aStringrefLlvmG_41[v1];
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,SimplifyGenericIRUserDynamicLibraryPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<SimplifyGenericIRUserDynamicLibraryPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

double llvm::detail::PassModel<llvm::Module,SimplifyGenericIRUserDynamicLibraryPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::run@<D0>(llvm::Module *this@<X1>, uint64_t a2@<X8>)
{
  v20 = "air.visible_function_references";
  v21 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(this, &v20);
  if (NamedMetadata)
  {
    v4 = NamedMetadata;
    NumOperands = llvm::NamedMDNode::getNumOperands(NamedMetadata);
    if (NumOperands)
    {
      v6 = NumOperands;
      for (i = 0; i != v6; ++i)
      {
        Operand = llvm::NamedMDNode::getOperand(v4);
        v9 = *(Operand - 8 * *(Operand + 8));
        if (!*v9)
        {
          String = llvm::MDString::getString(v9);
          if (v11 == 30)
          {
            v12 = *String == 0x697369762E726961 && String[1] == 0x636E75665F656C62;
            v13 = v12 && String[2] == 0x6665725F6E6F6974;
            if (v13 && *(String + 22) == 0x65636E6572656665)
            {
              v15 = Operand - 8 * *(Operand + 8);
              v16 = *(v15 + 8);
              if (v16 && *v16 - 1 <= 1)
              {
                v17 = *(v16 + 16);
                if (*(v17 + 16))
                {
                  v18 = 0;
                }

                else
                {
                  v18 = v17;
                }
              }

              else
              {
                v18 = 0;
              }

              llvm::MDString::getString(*(v15 + 16));
              if (llvm::Module::getFunction())
              {
                llvm::ConstantExpr::getBitCast();
                llvm::Value::replaceAllUsesWith();
                llvm::Constant::removeDeadConstantUsers(v18);
                if (!*(v18 + 1))
                {
                  llvm::Function::eraseFromParent(v18);
                }
              }
            }
          }
        }
      }
    }

    llvm::NamedMDNode::clearOperands(v4);
    llvm::NamedMDNode::eraseFromParent(v4);
  }

  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0u;
  *(a2 + 24) = 0u;
  *a2 = a2 + 32;
  *(a2 + 8) = a2 + 32;
  *&result = 2;
  *(a2 + 16) = 2;
  *(a2 + 48) = a2 + 80;
  *(a2 + 56) = a2 + 80;
  *(a2 + 64) = 2;
  return result;
}

void virtual thunk toAGCLLVMUserDynamicLibrary::~AGCLLVMUserDynamicLibrary(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  AGCLLVMUserDynamicLibrary::~AGCLLVMUserDynamicLibrary((a1 + *(*a1 - 32)), a2, a3, a4);

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserDynamicLibrary::~AGCLLVMUserDynamicLibrary((a1 + *(*a1 - 32)), a2, a3, a4);
}

void AGCLLVMUserDynamicLibrary::~AGCLLVMUserDynamicLibrary(AGCLLVMUserDynamicLibrary *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_28259D9E8;
  v5 = (this + 3472);
  *(this + 434) = &unk_28259DB18;
  v6 = (this + 3544);
  *(this + 443) = &unk_28259DC98;
  *(this + 656) = &unk_28259DDA8;
  v7 = *(this + 433);
  if (v7 != -8192 && v7 != -4096 && v7 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 3448));
  }

  for (i = 0; i != -3432; i -= 24)
  {
    v10 = *(this + i + 3432);
    if (v10 != -8192 && v10 != -4096 && v10 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((this + i + 3416));
    }
  }

  AGCLLVMUserShader::~AGCLLVMUserShader((this + 8712), off_28259E1D0, a3, a4);
  AGCLLVMDynamicLibrary::~AGCLLVMDynamicLibrary(v5, off_28259E1B8);
  AGCLLVMObject::~AGCLLVMObject(v6);
}

{
  AGCLLVMUserDynamicLibrary::~AGCLLVMUserDynamicLibrary(this, a2, a3, a4);

  JUMPOUT(0x20F331DC0);
}

void AGCLLVMDynamicLibrary::~AGCLLVMDynamicLibrary(AGCLLVMDynamicLibrary *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 24)) = a2[1];
  *(this + *(*this - 24) + 1704) = a2[2];
  v3 = *(this + 8);
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 48));
  }
}

uint64_t AGCLLVMDynamicLibrary::finalizeDriverBindings(AGCLLVMDynamicLibrary *this, llvm::Function *a2)
{
  llvm::Module::getOrInsertNamedMetadata();
  v3 = *this;
  v4 = this + *(*this - 24);
  v5 = *(v4 + 1150);
  if (v5)
  {
    v6 = *(v4 + 574);
    v7 = 8 * v5;
    do
    {
      v8 = (*v6 - 8 * *(*v6 + 8));
      if (*v8)
      {
        v9 = v8[1];
        if (v9)
        {
          if (*v9 == 1)
          {
            v10 = *(v9 + 128);
            if (*(v10 + 16) == 16)
            {
              v11 = (v10 + 24);
              if (*(v10 + 32) >= 0x41u)
              {
                v11 = *v11;
              }

              v12 = *v11;
              if (v12 == 114 || v12 == 18)
              {
                llvm::NamedMDNode::addOperand();
              }
            }
          }
        }
      }

      v6 += 8;
      v7 -= 8;
    }

    while (v7);
    v3 = *this;
  }

  v14 = this + *(v3 - 24);
  v15 = *(v14 + 1226);
  if (v15)
  {
    v16 = *(v14 + 612);
    v17 = 8 * v15;
    do
    {
      v16 += 8;
      llvm::NamedMDNode::addOperand();
      v17 -= 8;
    }

    while (v17);
  }

  llvm::Module::getOrInsertNamedMetadata();
  v18 = this + *(*this - 24);
  v19 = *(v18 + 1190);
  if (v19)
  {
    v20 = *(v18 + 594);
    v21 = 8 * v19;
    do
    {
      v20 += 8;
      llvm::NamedMDNode::addOperand();
      v21 -= 8;
    }

    while (v21);
  }

  return 1;
}

BOOL AGCLLVMDynamicLibrary::constructReply(AGCLLVMDynamicLibrary *this)
{
  v2 = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (v2)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMObject::constructFlatReply((this + *(*this - 24)));
    v5 = flatbuffers::FlatBufferBuilder::EndTable(v3, v4);
    v6 = this + *(*this - 24);
    v6[4358] = 1;
    v7 = *(v6 + 1082);
    v8 = *(v6 + 1080) - *(v6 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v6 + 4288), v5);
    v9 = *(*this - 24);
    v10 = flatbuffers::FlatBufferBuilder::EndTable((v6 + 4288), v8 + v7);
    flatbuffers::FlatBufferBuilder::Finish((this + v9 + 4288), v10, v11);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
    v12 = *this;
    v13 = this + *(*this - 24);
    v13[4454] = 1;
    v14 = *(v12 - 24);
    v15 = flatbuffers::FlatBufferBuilder::EndTable((v13 + 4384), *(v13 + 2208) - *(v13 + 2216) + *(v13 + 2212));
    flatbuffers::FlatBufferBuilder::Finish((this + v14 + 4384), v15, v16);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG10::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4384));
  }

  return v2;
}

uint64_t virtual thunk toAGCLLVMUserDynamicLibrary::finalizeDriverBindings(AGCLLVMUserDynamicLibrary *this, llvm::Function *a2)
{
  AGCLLVMUserDynamicLibrary::finalizeDriverBindings((this + *(*this - 208)), a2);
  return 1;
}

{
  AGCLLVMUserDynamicLibrary::finalizeDriverBindings((this + *(*this - 96)), a2);
  return 1;
}

uint64_t AGCLLVMUserDynamicLibrary::finalizeDriverBindings(AGCLLVMUserDynamicLibrary *this, llvm::Function *a2)
{
  AGCLLVMDynamicLibrary::finalizeDriverBindings((this + *(*this - 24)), a2);
  llvm::Module::getOrInsertNamedMetadata();
  v3 = this + *(*this - 40);
  v4 = *(v3 + 768);
  if (v4)
  {
    v5 = *(v3 + 383);
    v6 = 8 * v4;
    do
    {
      v5 += 8;
      llvm::NamedMDNode::addOperand();
      v6 -= 8;
    }

    while (v6);
  }

  return 1;
}

uint64_t AGCLLVMUserDynamicLibrary::getTempRegistersLimit(AGCLLVMUserDynamicLibrary *this, unsigned int *a2)
{
  v4 = (this + *(*this - 40) + *(*(this + *(*this - 40)) - 24));
  *a2 = *(v4[271] + 980);
  result = (*(*v4 + 112))(v4);
  if (result)
  {
    *a2 = result;
    result = result != *(v4[271] + 980);
  }

  v6 = *(this + 860);
  if (v6)
  {
    v7 = this + *(*this - 32);
    v8 = *(v7 + 271);
    if (*(v8 + 976) == 1)
    {
      v9 = *(v7 + 211);
      v10 = *(v8 + 980);
      v11 = *(v9 + 2016);
      v12 = v11 - 1;
      if ((v11 - 1) >= 0)
      {
        v13 = 0;
        v14 = *(v9 + 2008);
        do
        {
          v15 = (v12 + v13) >> 1;
          if (*(v14 + 4 * v15) < v6)
          {
            v12 = v15 - 1;
          }

          else
          {
            v13 = v15 + 1;
          }
        }

        while (v13 <= v12);
      }

      v16 = v10 / v11 * v12;
      if (v16 >= *a2)
      {
        v16 = *a2;
      }

      *a2 = v16;
      return 1;
    }
  }

  return result;
}

BOOL virtual thunk toAGCLLVMUserDynamicLibrary::constructReply(AGCLLVMUserDynamicLibrary *this)
{
  return AGCLLVMUserDynamicLibrary::constructReply((this + *(*this - 176)));
}

{
  return AGCLLVMUserDynamicLibrary::constructReply((this + *(*this - 120)));
}

BOOL AGCLLVMUserDynamicLibrary::constructReply(AGCLLVMUserDynamicLibrary *this)
{
  v2 = AGCDeserializedReply::deserialize((this + *(*this - 32) + 2288), *(*(this + *(*this - 32) + 1688) + 152), *(*(this + *(*this - 32) + 1688) + 160));
  if (v2)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 32)));
    v3 = AGCLLVMUserObject::constructFlatReply((this + *(*this - 40)));
    v4 = this + *(*this - 32);
    v4[4358] = 1;
    v5 = *(v4 + 1082);
    v6 = *(v4 + 1080) - *(v4 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v4 + 4288), v3);
    v7 = *(*this - 32);
    v8 = flatbuffers::FlatBufferBuilder::EndTable((v4 + 4288), v6 + v5);
    flatbuffers::FlatBufferBuilder::Finish((this + v7 + 4288), v8, v9);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 32)), (this + *(*this - 32) + 4288));
    v10 = *this;
    v11 = this + *(*this - 32);
    v11[4454] = 1;
    v12 = *(v10 - 32);
    v13 = flatbuffers::FlatBufferBuilder::EndTable((v11 + 4384), *(v11 + 2208) - *(v11 + 2216) + *(v11 + 2212));
    flatbuffers::FlatBufferBuilder::Finish((this + v12 + 4384), v13, v14);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG10::CompileReplyBinarySchema>((this + *(*this - 32)), (this + *(*this - 32) + 4384));
  }

  return v2;
}

void virtual thunk toAGCLLVMUserDynamicLibrary::~AGCLLVMUserDynamicLibrary(AGCLLVMUserDynamicLibrary *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  AGCLLVMUserDynamicLibrary::~AGCLLVMUserDynamicLibrary((this + *(*this - 24)), a2, a3, a4);

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserDynamicLibrary::~AGCLLVMUserDynamicLibrary((this + *(*this - 24)), a2, a3, a4);
}

{
  AGCLLVMUserDynamicLibrary::~AGCLLVMUserDynamicLibrary((this + *(*this - 32)), a2, a3, a4);

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMUserDynamicLibrary::~AGCLLVMUserDynamicLibrary((this + *(*this - 32)), a2, a3, a4);
}

uint64_t AGCLLVMUserDynamicLibrary::getMaxSharedRegisters(AGCLLVMUserDynamicLibrary *this)
{
  v1 = *(this + *(*this - 32) + 2168);
  v2 = v1[235];
  v3 = v1[236];
  v4 = v1[237];
  if (v3 < v2)
  {
    v2 = v3;
  }

  if (v4 >= v2)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

BOOL AGCLLVMStatelessPSODynamicLibrary::constructReply(AGCLLVMStatelessPSODynamicLibrary *this)
{
  v2 = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (v2)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    AGCLLVMObject::constructVisibleFunctionArray((this + *(*this - 24)), 0);
    v3 = this + *(*this - 24);
    v3[4358] = 1;
    v4 = *(v3 + 1082);
    v5 = *(v3 + 1080) - *(v3 + 1084);
    flatbuffers::FlatBufferBuilder::AddElement<signed char>(v3 + 4288, 4, *(this + 128));
    flatbuffers::FlatBufferBuilder::AddElement<signed char>(v3 + 4288, 6, *(this + 129));
    flatbuffers::FlatBufferBuilder::EndTable((v3 + 4288), v5 + v4);
    operator new();
  }

  return v2;
}

void AGCLLVMStatelessPSODynamicLibrary::getCompilationKeyDescription(AGCLLVMStatelessPSODynamicLibrary *this@<X0>, std::string *a2@<X8>)
{
  v122 = *MEMORY[0x277D85DE8];
  v3 = *(this + 14);
  if ((*(v3 + 20) & 1) == 0)
  {
    std::string::basic_string[abi:nn200100]<0>(&v114, "AGCStatelessPSODynamicLibraryStateAGP");
    std::string::basic_string[abi:nn200100]<0>(&v106, "common");
    _agcStringRepresentation(&v81, v3);
    _agcFieldString<std::string>(&v82, &v106.__r_.__value_.__l.__data_, &v81);
    std::string::basic_string[abi:nn200100]<0>(__p, "hasDrawBufferState");
    _agcFieldString<unsigned int>(&v83, __p, *(v3 + 20) & 1);
    _agcGroupWithHeader(a2, &v114, &v82, 2);
    for (i = 0; i != -6; i -= 3)
    {
      if (SHIBYTE(v83.__r_.__value_.__r.__words[i + 2]) < 0)
      {
        operator delete(*(&v82 + i * 8 + 24));
      }
    }

    if (v80 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v81.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v106.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
    {
      v5 = &v114;
LABEL_151:
      operator delete(v5->__r_.__value_.__l.__data_);
      return;
    }

    return;
  }

  std::string::basic_string[abi:nn200100]<0>(v53, "AGCStatelessPSODynamicLibraryStateAGP");
  std::string::basic_string[abi:nn200100]<0>(v51, "common");
  _agcStringRepresentation(&v50, v3);
  _agcFieldString<std::string>(&v82, v51, &v50);
  std::string::basic_string[abi:nn200100]<0>(v48, "drawBuffer");
  _agcStringRepresentation(&v47, (v3 + 8));
  _agcFieldString<std::string>(&v83, v48, &v47);
  std::string::basic_string[abi:nn200100]<0>(v45, "drawBufferState");
  std::string::basic_string[abi:nn200100]<0>(__p, "AGCDrawBufferStateInternal");
  std::string::basic_string[abi:nn200100]<0>(v77, "enabledBits");
  v6 = *(v3 + 12);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v114);
  v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v114.__r_.__value_.__r.__words[2], "0x", 2);
  *(&v114.__r_.__value_.__r + *(v114.__r_.__value_.__r.__words[2] - 24) + 24) = *(&v114.__r_.__value_.__r + *(v114.__r_.__value_.__r.__words[2] - 24) + 24) & 0xFFFFFFB5 | 8;
  MEMORY[0x20F331C30](v7, v6);
  std::stringbuf::str();
  _agcFieldString<std::string>(&v106, v77, &v81);
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  v114.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 72);
  *(v114.__r_.__value_.__r.__words + *(v114.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v114.__r_.__value_.__r.__words[2] = v8;
  v115.__r_.__value_.__r.__words[0] = MEMORY[0x277D82878] + 16;
  if (v118.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v117.__r_.__value_.__r.__words[2]);
  }

  v115.__r_.__value_.__r.__words[0] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v115.__r_.__value_.__r.__words[1]);
  std::iostream::~basic_iostream();
  MEMORY[0x20F331D40](&v119.__r_.__value_.__r.__words[1]);
  std::string::basic_string[abi:nn200100]<0>(&v81, "sampleCount");
  _agcFieldString<unsigned char>(&v107, &v81.__r_.__value_.__l.__data_, 1 << (BYTE1(*(v3 + 12)) & 3));
  std::string::basic_string[abi:nn200100]<0>(v75, "colorSampleCount");
  _agcFieldString<unsigned char>(&v108, v75, 1 << ((*(v3 + 12) >> 10) & 3));
  v9 = *(v3 + 12) & 0x1FF000;
  if (v9 == 2093056)
  {
    std::string::basic_string[abi:nn200100]<0>(v63, "outputPartitionSize");
    std::string::basic_string[abi:nn200100]<0>(v61, "unknown");
    _agcFieldString<std::string>(&v109, v63, v61);
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(v65, "outputPartitionSize");
    v10 = *(v3 + 12);
    if ((~v10 & 0x1FF000) == 0)
    {
      goto LABEL_153;
    }

    std::to_string(&v114, (v10 >> 12) & 0x1FF);
    _agcFieldString<std::string>(&v109, v65, &v114);
    if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v114.__r_.__value_.__l.__data_);
    }
  }

  v11 = *(v3 + 12);
  if ((v11 & 0x400000) != 0)
  {
    std::string::basic_string[abi:nn200100]<0>(v59, "LIBSpilling");
    v12 = *(v3 + 12);
    if ((v12 & 0x400000) != 0)
    {
      _agcFieldString<unsigned char>(&v110, v59, (v12 & 0x200000) != 0);
      goto LABEL_27;
    }

LABEL_153:
    v20 = std::__throw_bad_optional_access[abi:nn200100]();
    return;
  }

  std::string::basic_string[abi:nn200100]<0>(v57, "LIBSpilling");
  std::string::basic_string[abi:nn200100]<0>(v55, "unknown");
  _agcFieldString<std::string>(&v110, v57, v55);
LABEL_27:
  std::string::basic_string[abi:nn200100]<0>(&v114, "forceSoftwareEmulatedRaytracing");
  _agcFieldString<unsigned char>(&v111, &v114.__r_.__value_.__l.__data_, (*(v3 + 12) & 0x800000) != 0);
  std::string::basic_string[abi:nn200100]<0>(v73, "maxSlabIndex");
  _agcFieldString<unsigned char>(&v112, v73, *(v3 + 15) & 0xF);
  std::string::basic_string[abi:nn200100]<0>(v71, "useSlabs");
  _agcFieldString<unsigned char>(&v113, v71, (*(v3 + 12) & 0x10000000) != 0);
  _agcGroupWithHeader(&v44, __p, &v106, 8);
  for (j = 0; j != -24; j -= 3)
  {
    if (SHIBYTE(v113.__r_.__value_.__r.__words[j + 2]) < 0)
    {
      operator delete(*(&v113.__r_.__value_.__l.__data_ + j * 8));
    }
  }

  if (v72 < 0)
  {
    operator delete(v71[0]);
  }

  if (v74 < 0)
  {
    operator delete(v73[0]);
  }

  if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_37;
    }

LABEL_42:
    if ((v60 & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    v14 = v59[0];
    goto LABEL_44;
  }

  operator delete(v114.__r_.__value_.__l.__data_);
  if ((v11 & 0x400000) != 0)
  {
    goto LABEL_42;
  }

LABEL_37:
  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  if (v58 < 0)
  {
    v14 = v57[0];
LABEL_44:
    operator delete(v14);
  }

LABEL_45:
  if (v9 != 2093056)
  {
    if ((v66 & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    v15 = v65[0];
    goto LABEL_52;
  }

  if (v62 < 0)
  {
    operator delete(v61[0]);
  }

  if (v64 < 0)
  {
    v15 = v63[0];
LABEL_52:
    operator delete(v15);
  }

LABEL_53:
  if (v76 < 0)
  {
    operator delete(v75[0]);
  }

  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  if (v78 < 0)
  {
    operator delete(v77[0]);
  }

  if (v80 < 0)
  {
    operator delete(__p[0]);
  }

  _agcFieldString<std::string>(&v84, v45, &v44);
  std::string::basic_string[abi:nn200100]<0>(v42, "blendState");
  std::string::basic_string[abi:nn200100]<0>(&v106, "AGCBlendState");
  std::string::basic_string[abi:nn200100]<0>(&v81, "enabled");
  if (*(v3 + 16))
  {
    v16 = "yes";
  }

  else
  {
    v16 = "no";
  }

  _agcFieldString<char const*>(&v114, &v81.__r_.__value_.__l.__data_, v16);
  std::string::basic_string[abi:nn200100]<0>(__p, "src");
  _agcFieldString<char const*>(&v115, __p, _agcBlendFactorStrings[(*(v3 + 16) >> 1) & 0x1F]);
  std::string::basic_string[abi:nn200100]<0>(v77, "dst");
  _agcFieldString<char const*>(&v116, v77, _agcBlendFactorStrings[(*(v3 + 16) >> 6) & 0x1F]);
  std::string::basic_string[abi:nn200100]<0>(v75, "srcA");
  _agcFieldString<char const*>(&v117, v75, _agcBlendFactorStrings[*(v3 + 16) >> 11]);
  std::string::basic_string[abi:nn200100]<0>(v73, "dstA");
  _agcFieldString<char const*>(&v118, v73, _agcBlendFactorStrings[*(v3 + 18) & 0x1F]);
  std::string::basic_string[abi:nn200100]<0>(v71, "equation");
  _agcFieldString<char const*>(&v119, v71, _agcBlendEquationStrings[(*(v3 + 16) >> 21) & 7]);
  std::string::basic_string[abi:nn200100]<0>(v69, "equationA");
  _agcFieldString<char const*>(&v120, v69, _agcBlendEquationStrings[*(v3 + 19) & 7]);
  std::string::basic_string[abi:nn200100]<0>(v67, "unknown");
  if ((*(v3 + 16) & 0x8000000) != 0)
  {
    v17 = "yes";
  }

  else
  {
    v17 = "no";
  }

  _agcFieldString<char const*>(v121, v67, v17);
  _agcGroupWithHeader(&v41, &v106, &v114, 8);
  for (k = 0; k != 0x1FFFFFFFFFFFFFE8; k -= 3)
  {
    if (SHIBYTE(v121[0].__r_.__value_.__r.__words[k + 2]) < 0)
    {
      operator delete(v121[k / 3].__r_.__value_.__l.__data_);
    }
  }

  if (v68 < 0)
  {
    operator delete(v67[0]);
  }

  if (v70 < 0)
  {
    operator delete(v69[0]);
  }

  if (v72 < 0)
  {
    operator delete(v71[0]);
  }

  if (v74 < 0)
  {
    operator delete(v73[0]);
  }

  if (v76 < 0)
  {
    operator delete(v75[0]);
  }

  if (v78 < 0)
  {
    operator delete(v77[0]);
  }

  if (v80 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  _agcFieldString<std::string>(&v85, v42, &v41);
  std::string::basic_string[abi:nn200100]<0>(&v114, "hasDrawBufferState");
  _agcFieldString<unsigned int>(&v86, &v114.__r_.__value_.__l.__data_, *(v3 + 20) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v106, "colorMask");
  _agcFieldString<unsigned int>(&v87, &v106.__r_.__value_.__l.__data_, (*(v3 + 20) >> 1) & 0xF);
  std::string::basic_string[abi:nn200100]<0>(&v81, "discardBool");
  _agcFieldString<unsigned int>(&v88, &v81.__r_.__value_.__l.__data_, (*(v3 + 20) >> 5) & 1);
  std::string::basic_string[abi:nn200100]<0>(__p, "buildRead");
  _agcFieldString<unsigned int>(&v89, __p, (*(v3 + 20) >> 6) & 1);
  std::string::basic_string[abi:nn200100]<0>(v77, "hasLogicOp");
  _agcFieldString<unsigned int>(&v90, v77, (*(v3 + 20) >> 7) & 1);
  std::string::basic_string[abi:nn200100]<0>(v75, "logicOp");
  _agcFieldString<unsigned int>(&v91, v75, (*(v3 + 20) >> 7) & 1);
  std::string::basic_string[abi:nn200100]<0>(v73, "output0IsFloat");
  _agcFieldString<unsigned int>(&v92, v73, (*(v3 + 20) >> 13) & 1);
  std::string::basic_string[abi:nn200100]<0>(v71, "output0Is32b");
  _agcFieldString<unsigned int>(&v93, v71, (*(v3 + 20) >> 14) & 1);
  std::string::basic_string[abi:nn200100]<0>(v69, "output0LenMinusOne");
  _agcFieldString<unsigned int>(&v94, v69, (*(v3 + 20) >> 15) & 3);
  std::string::basic_string[abi:nn200100]<0>(v67, "output1Present");
  _agcFieldString<unsigned int>(&v95, v67, (*(v3 + 20) >> 17) & 1);
  std::string::basic_string[abi:nn200100]<0>(v39, "output1IsFloat");
  _agcFieldString<unsigned int>(&v96, v39, (*(v3 + 20) >> 18) & 1);
  std::string::basic_string[abi:nn200100]<0>(v37, "output1Is32b");
  _agcFieldString<unsigned int>(&v97, v37, (*(v3 + 20) >> 19) & 1);
  std::string::basic_string[abi:nn200100]<0>(v35, "output1LenMinusOne");
  _agcFieldString<unsigned int>(&v98, v35, (*(v3 + 20) >> 20) & 3);
  std::string::basic_string[abi:nn200100]<0>(v33, "userValueUndef");
  _agcFieldString<unsigned int>(&v99, v33, (*(v3 + 20) >> 22) & 1);
  std::string::basic_string[abi:nn200100]<0>(v31, "supportGL");
  _agcFieldString<unsigned int>(&v100, v31, (*(v3 + 20) >> 23) & 1);
  std::string::basic_string[abi:nn200100]<0>(v29, "fastMath");
  _agcFieldString<unsigned int>(&v101, v29, HIBYTE(*(v3 + 20)) & 1);
  std::string::basic_string[abi:nn200100]<0>(v27, "isNullFunction");
  _agcFieldString<unsigned int>(&v102, v27, (*(v3 + 20) >> 25) & 1);
  std::string::basic_string[abi:nn200100]<0>(v25, "rtzMode");
  _agcFieldString<unsigned int>(&v103, v25, (*(v3 + 20) >> 26) & 3);
  std::string::basic_string[abi:nn200100]<0>(v23, "assumeFixedColorCoverageMask");
  _agcFieldString<unsigned int>(&v104, v23, (*(v3 + 20) >> 28) & 1);
  std::string::basic_string[abi:nn200100]<0>(v21, "unused");
  _agcFieldString<unsigned int>(&v105, v21, *(v3 + 20) >> 29);
  _agcGroupWithHeader(a2, v53, &v82, 24);
  v19 = 576;
  do
  {
    if (v82.__r_.__value_.__s.__data_[v19 - 1] < 0)
    {
      operator delete(*(&v81.__r_.__value_.__l.__data_ + v19));
    }

    v19 -= 24;
  }

  while (v19);
  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  if (v68 < 0)
  {
    operator delete(v67[0]);
  }

  if (v70 < 0)
  {
    operator delete(v69[0]);
  }

  if (v72 < 0)
  {
    operator delete(v71[0]);
  }

  if (v74 < 0)
  {
    operator delete(v73[0]);
  }

  if (v76 < 0)
  {
    operator delete(v75[0]);
  }

  if (v78 < 0)
  {
    operator delete(v77[0]);
  }

  if (v80 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  if (v54 < 0)
  {
    v5 = v53;
    goto LABEL_151;
  }
}

uint64_t AGCLLVMStatelessPSODynamicLibrary::compile(AGCLLVMStatelessPSODynamicLibrary *this)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = *(this + 14);
  v3 = v2[5];
  v4 = v2[3];
  LODWORD(v5) = (v3 >> 8) & 0x1F;
  if ((v3 & 0x80) != 0)
  {
    v5 = v5;
  }

  else
  {
    v5 = 0;
  }

  v40 = v5;
  v6 = *this;
  v7 = 1872;
  if ((v3 & 0x4000) == 0)
  {
    v7 = 1856;
  }

  v8 = 1904;
  if ((v3 & 0x4000) == 0)
  {
    v8 = 1896;
  }

  if ((v3 & 0x2000) == 0)
  {
    v7 = v8;
  }

  v9 = *(this + *(*this - 24) + v7);
  if (((v2[5] >> 15) & 3) != 0)
  {
    v9 = llvm::VectorType::get();
    v10 = *(*(this + 14) + 20);
    v6 = *this;
  }

  else
  {
    v10 = v2[5];
  }

  v39 = v9;
  if ((v10 & 0x20000) != 0)
  {
    v12 = 1872;
    if ((v10 & 0x80000) == 0)
    {
      v12 = 1856;
    }

    v13 = 1904;
    if ((v10 & 0x80000) == 0)
    {
      v13 = 1896;
    }

    if ((v10 & 0x40000) == 0)
    {
      v12 = v13;
    }

    v11 = *(this + *(v6 - 24) + v12);
    if (((v10 >> 20) & 3) != 0)
    {
      v11 = llvm::VectorType::get();
      v10 = *(*(this + 14) + 20);
    }
  }

  else
  {
    v11 = 0;
  }

  v38 = v11;
  v37 = 1 << (BYTE1(v4) & 3);
  if ((v10 & 0x20) != 0)
  {
    v14 = llvm::VectorType::get();
    v10 = *(*(this + 14) + 20);
  }

  else
  {
    v14 = 0;
  }

  v15 = (v10 >> 22) & 1;
  v16 = (v10 >> 23) & 1;
  v17 = HIBYTE(v10) & 1;
  AGCLLVMBuilder::WriteFramebufferArgs::WriteFramebufferArgs(&v44, v2 + 3, v2[2]);
  v18 = *(this + *(*this - 24) + 2168);
  v53 = v44;
  v54[0] = v45;
  AGCLLVMStatelessFragmentObject::WriteFramebufferOptions::WriteFramebufferOptions(v43, v18, 1, &v53, v2[4], (v3 & 0x2000000) != 0, ((v3 & 0x80) << 25) | v40, (v3 >> 1) & 0xF, (v3 >> 26) & 3, v39, v38, v14, v15, v16, v17, 0, 0, (v2[3] & 0x10000000) != 0, 0, (v3 & 0x10000000) != 0, v37);
  *(this + 129) = (v3 >> 1) & 0xF;
  v19 = (this + 72);
  v20 = this + 128;
  if ((v3 & 0x40) != 0)
  {
    FramebufferFunction = AGCLLVMStatelessFragmentObject::buildReadFramebufferFunction(v19, v43, v20);
  }

  else
  {
    FramebufferFunction = AGCLLVMStatelessFragmentObject::buildWriteFramebufferFunction(v19, v43, v20, this + 129);
  }

  v22 = FramebufferFunction;
  AGCLLVMObject::replaceLIBSpillingFunctions((this + *(*this - 24)), 1);
  if (v22)
  {
    v23 = *(*this - 24);
    StatelessPSOGlobal = AGCLLVMObject::GetStatelessPSOGlobal((this + v23));
    AGCLLVMObject::setDylibLinkage(StatelessPSOGlobal, v25);
    v26 = *(*(this + *(*this - 24) + 2168) + 928);
    v27 = (*(*v26 + 160))(v26);
    AGCLLVMObject::addDylibBinding((this + v23), StatelessPSOGlobal, v27);
    llvm::GlobalValue::setLinkage(v22, 0);
    (*(*this + 72))(this, v22);
    *&v53 = v54;
    *(&v53 + 1) = 0x600000000;
    v28 = llvm::Function::args(v22);
    if (v28 != v29)
    {
      v30 = v28;
      v31 = v29;
      do
      {
        llvm::ConstantInt::get();
        v46 = llvm::ValueAsMetadata::get();
        v47 = llvm::MDString::get();
        v48 = llvm::MDString::get();
        v49 = llvm::MDString::get();
        v50 = llvm::MDString::get();
        Name = llvm::Value::getName(v30);
        if (Name)
        {
          std::string::basic_string[abi:nn200100](__p, Name, v32);
        }

        else
        {
          __p[0] = 0;
          __p[1] = 0;
          v42 = 0;
        }

        v51 = llvm::MDString::get();
        v52 = llvm::MDString::get();
        Impl = llvm::MDTuple::getImpl();
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v53, Impl);
        if (SHIBYTE(v42) < 0)
        {
          operator delete(__p[0]);
        }

        v30 = (v30 + 40);
      }

      while (v30 != v31);
    }

    v35 = llvm::MDTuple::getImpl();
    v46 = llvm::ValueAsMetadata::get();
    v47 = llvm::MDTuple::getImpl();
    v48 = v35;
    llvm::MDTuple::getImpl();
    llvm::Module::getOrInsertNamedMetadata();
    llvm::NamedMDNode::addOperand();
    if (v53 != v54)
    {
      free(v53);
    }
  }

  return AGCLLVMDriverDynamicLibrary::compile(this, v17);
}

uint64_t AGCLLVMDriverDynamicLibrary::compile(AGCLLVMDriverDynamicLibrary *this, char a2)
{
  AGCLLVMObject::processBuildRequestInfo((this + *(*this - 24)));
  if (AGCLLVMObjectBase::dumpShaderToFile((this + *(*this - 24))))
  {
    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      v4 = *(this + *(*this - 24) + 1696);
      v5 = (*(*this + 16))(this);
      AGCTargetPrinter::printMessage(v4, "------ Start compilation key description for %s shader %u  ------", v5, *(this + *(*this - 24) + 5088));
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      v6 = *(this + *(*this - 24) + 1696);
      (*(*this + 80))(__p, this);
      v7 = v13 >= 0 ? __p : __p[0];
      AGCTargetPrinter::printMessage(v6, "%s", v7);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      v8 = *(this + *(*this - 24) + 1696);
      v9 = (*(*this + 16))(this);
      AGCTargetPrinter::printMessage(v8, "------ End compilation key description for %s shader %u  ------", v9, *(this + *(*this - 24) + 5088));
    }
  }

  LOWORD(__p[0]) = 0;
  BYTE2(__p[0]) = 1;
  HIDWORD(__p[0]) = 0;
  BYTE3(__p[0]) = (*(*this + 32))(this);
  v10 = AGCLLVMCtx::compile(*(this + *(*this - 24) + 1688), this + *(*this - 24), *(this + *(*this - 24) + 2136), a2, 1, __p, 0);
  result = 0;
  if (v10)
  {
    return (*(*this + 96))(this);
  }

  return result;
}

void virtual thunk toAGCLLVMStatelessPSODynamicLibrary::~AGCLLVMStatelessPSODynamicLibrary(AGCLLVMStatelessPSODynamicLibrary *this)
{
  v1 = this + *(*this - 24);
  *(v1 + 9) = &off_28259F808;
  *(v1 + 17) = off_28259F930;
  *(v1 + 230) = &off_28259FA40;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v1 + 12));
  AGCLLVMDynamicLibrary::~AGCLLVMDynamicLibrary(v1, off_28259E500);
  AGCLLVMObject::~AGCLLVMObject((v1 + 136));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = this + *(*this - 24);
  *(v1 + 9) = &off_28259F808;
  *(v1 + 17) = off_28259F930;
  *(v1 + 230) = &off_28259FA40;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v1 + 12));
  AGCLLVMDynamicLibrary::~AGCLLVMDynamicLibrary(v1, off_28259E500);

  AGCLLVMObject::~AGCLLVMObject((v1 + 136));
}

void non-virtual thunk toAGCLLVMStatelessPSODynamicLibrary::~AGCLLVMStatelessPSODynamicLibrary(AGCLLVMStatelessPSODynamicLibrary *this)
{
  v1 = (this - 72);
  *this = &off_28259F808;
  v2 = (this + 64);
  *(this + 8) = off_28259F930;
  *(this + 221) = &off_28259FA40;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 3));
  AGCLLVMDynamicLibrary::~AGCLLVMDynamicLibrary(v1, off_28259E500);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this - 72);
  *this = &off_28259F808;
  v2 = (this + 64);
  *(this + 8) = off_28259F930;
  *(this + 221) = &off_28259FA40;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 3));
  AGCLLVMDynamicLibrary::~AGCLLVMDynamicLibrary(v1, off_28259E500);

  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMStatelessPSODynamicLibrary::~AGCLLVMStatelessPSODynamicLibrary(AGCLLVMStatelessPSODynamicLibrary *this)
{
  *(this + 9) = &off_28259F808;
  v2 = (this + 136);
  *(this + 17) = off_28259F930;
  *(this + 230) = &off_28259FA40;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 12));
  AGCLLVMDynamicLibrary::~AGCLLVMDynamicLibrary(this, off_28259E500);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *(this + 9) = &off_28259F808;
  v2 = (this + 136);
  *(this + 17) = off_28259F930;
  *(this + 230) = &off_28259FA40;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 12));
  AGCLLVMDynamicLibrary::~AGCLLVMDynamicLibrary(this, off_28259E500);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

uint64_t *AGCLLVMDynamicLibrary::AGCLLVMDynamicLibrary(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  *result = *a2;
  *(result + *(v3 - 24)) = a2[1];
  *(result + *(*result - 24) + 1704) = a2[2];
  *(result + 4) = 0;
  *(result + 10) = 0;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = a3;
  result[7] = 0;
  result[8] = 0;
  result[6] = 4;
  v4 = *result;
  *(result + *(*result - 24) + 4576) = (*a3 & 0x4000000) != 0;
  *(*(result + *(v4 - 24) + 2168) + 1941) = (*(a3 + 4) & 2) != 0;
  *(*(result + *(v4 - 24) + 2168) + 1942) = (*(a3 + 4) & 4) != 0;
  *(result + 8) = (*a3 & 0x20000000) != 0;
  return result;
}

BOOL AGCLLVMUserFragmentShader::getEffectiveFragmentRate(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 1 && a3 == 18)
  {
    return *a2 == 0x706D61732E726961 && *(a2 + 8) == 0x5F6B73616D5F656CLL && *(a2 + 16) == 28265;
  }

  else
  {
    if (a3 != 21)
    {
      return 0;
    }

    v5 = 0x6169722E636F6C6FLL;
    v6 = bswap64(*a2);
    if (v6 == 0x6169722E636F6C6FLL && (v5 = 0x725F73616D706C65, v6 = bswap64(*(a2 + 8)), v6 == 0x725F73616D706C65) && (v5 = 0x706C655F6D61736BLL, v6 = bswap64(*(a2 + 13)), v6 == 0x706C655F6D61736BLL))
    {
      v7 = 0;
    }

    else if (v5 < v6)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    return v7 == 0;
  }
}

llvm::Instruction *AGCLLVMUserFragmentShader::buildStaticLtpLibOffsetArrayPtr(AGCLLVMUserFragmentShader *this)
{
  v9[4] = *MEMORY[0x277D85DE8];
  FragmentBuiltinPsoStatePtr = AGCLLVMUserObject::loadFragmentBuiltinPsoStatePtr(this);
  v3 = this + *(*this - 24);
  FragmentBuiltinPsoStateType = AGCLLVMUserObject::getFragmentBuiltinPsoStateType(this, v4, v5);
  v9[0] = llvm::ConstantInt::get();
  v9[1] = llvm::ConstantInt::get();
  v9[2] = llvm::ConstantInt::get();
  v9[3] = llvm::ConstantInt::get();
  v8[16] = 257;
  llvm::Type::isOpaquePointerTy(*FragmentBuiltinPsoStatePtr);
  return llvm::IRBuilderBase::CreateGEP((v3 + 1712), FragmentBuiltinPsoStateType, FragmentBuiltinPsoStatePtr, v9, 4, v8);
}

void AGCLLVMStatelessFragmentObject::buildDrawBufferState(uint64_t a1, uint64_t *a2, uint64_t a3, llvm::Value *a4)
{
  v7 = a2 + *(*a2 - 24);
  StatelessPSOGlobal = AGCLLVMObject::GetStatelessPSOGlobal(v7);
  v63 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v7 + 1704), StatelessPSOGlobal, &v62);
  *(a1 + 432) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 384) = llvm::ConstantInt::get();
  *(a1 + 392) = llvm::ConstantInt::get();
  *(a1 + 400) = llvm::ConstantInt::get();
  if ((~*(a3 + 32) & 0x1FF000) != 0)
  {
    *(a1 + 408) = llvm::ConstantInt::get();
  }

  else
  {
    v9 = a2 + *(*a2 - 24);
    v59 = *(v9 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v60, (v9 + 1712));
    v61 = *(v9 + 452);
    *(a1 + 408) = AGCLLVMObject::buildReadDynamicLIBSize(v9, &v59);
    if (v60)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  *(a1 + 416) = 0;
  if ((*(a3 + 32) & 0x400000) != 0)
  {
    *(a1 + 416) = llvm::ConstantInt::get();
  }

  *(a1 + 424) = llvm::ConstantInt::get();
  v10 = 0;
  *(a1 + 432) = llvm::ConstantInt::get();
  v11 = a2 + 237;
  v12 = (a1 + 24);
  do
  {
    std::to_string(&v55, v10);
    v13 = std::string::insert(&v55, 0, "agc_draw_buffer[");
    v14 = v13->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = *&v13->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = std::string::append(&v62, "]");
    v16 = v15->__r_.__value_.__r.__words[2];
    *__p = *&v15->__r_.__value_.__l.__data_;
    v58 = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    v17 = v11;
    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    v18 = (a2 + *(*a2 - 24));
    v19 = v18[238];
    v20 = llvm::ConstantInt::get();
    v63 = 257;
    GEP = llvm::IRBuilderBase::CreateGEP((v18 + 214), v19, Load, v20, &v62);
    v56 = 260;
    v55.__r_.__value_.__r.__words[0] = __p;
    v22 = AGCLLVMBuilder::CreateLoad((v18 + 213), GEP, &v55);
    if ((*(a3 + 4 * v10) & 0x1F) == 0x17)
    {
      v23 = v22;
      if (v58 >= 0)
      {
        v24 = HIBYTE(v58);
      }

      else
      {
        v24 = __p[1];
      }

      std::string::basic_string[abi:nn200100](&v55, v24 + 16);
      if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v55;
      }

      else
      {
        v25 = v55.__r_.__value_.__r.__words[0];
      }

      if (v24)
      {
        if (v58 >= 0)
        {
          v26 = __p;
        }

        else
        {
          v26 = __p[0];
        }

        memmove(v25, v26, v24);
      }

      strcpy(v25 + v24, ".pbeSourceFormat");
      v63 = 260;
      v62.__r_.__value_.__r.__words[0] = &v55;
      *(v12 - 3) = AGCLLVMStatelessFragmentObject::buildExtractField(a2, v23, 5u, 0, &v62);
      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      if (v58 >= 0)
      {
        v27 = HIBYTE(v58);
      }

      else
      {
        v27 = __p[1];
      }

      std::string::basic_string[abi:nn200100](&v55, v27 + 21);
      if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v55;
      }

      else
      {
        v28 = v55.__r_.__value_.__r.__words[0];
      }

      if (v27)
      {
        if (v58 >= 0)
        {
          v29 = __p;
        }

        else
        {
          v29 = __p[0];
        }

        memmove(v28, v29, v27);
      }

      strcpy(v28 + v27, ".numWrittenComponents");
      v63 = 260;
      v62.__r_.__value_.__r.__words[0] = &v55;
      *(v12 - 2) = AGCLLVMStatelessFragmentObject::buildExtractField(a2, v23, 3u, 5, &v62);
      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      if (v58 >= 0)
      {
        v30 = HIBYTE(v58);
      }

      else
      {
        v30 = __p[1];
      }

      std::string::basic_string[abi:nn200100](&v55, v30 + 16);
      if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v55;
      }

      else
      {
        v31 = v55.__r_.__value_.__r.__words[0];
      }

      if (v30)
      {
        if (v58 >= 0)
        {
          v32 = __p;
        }

        else
        {
          v32 = __p[0];
        }

        memmove(v31, v32, v30);
      }

      strcpy(v31 + v30, ".gammaCorrection");
      v63 = 260;
      v62.__r_.__value_.__r.__words[0] = &v55;
      *(v12 - 1) = AGCLLVMStatelessFragmentObject::buildExtractField(a2, v23, 1u, 8, &v62);
      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      if (v58 >= 0)
      {
        v33 = HIBYTE(v58);
      }

      else
      {
        v33 = __p[1];
      }

      std::string::basic_string[abi:nn200100](&v55, v33 + 15);
      if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &v55;
      }

      else
      {
        v34 = v55.__r_.__value_.__r.__words[0];
      }

      if (v33)
      {
        if (v58 >= 0)
        {
          v35 = __p;
        }

        else
        {
          v35 = __p[0];
        }

        memmove(v34, v35, v33);
      }

      strcpy(v34 + v33, ".preEmitSwizzle");
      v63 = 260;
      v62.__r_.__value_.__r.__words[0] = &v55;
      *v12 = AGCLLVMStatelessFragmentObject::buildExtractField(a2, v23, 3u, 9, &v62);
      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *(v12 - 3) = llvm::ConstantInt::get();
      *(v12 - 2) = llvm::ConstantInt::get();
      *(v12 - 1) = llvm::ConstantInt::get();
      *v12 = llvm::ConstantInt::get();
    }

    v11 = v17;
    if ((~*(a3 + 4 * v10) & 0xFF000) != 0)
    {
      v12[1] = llvm::ConstantInt::get();
    }

    else
    {
      v36 = a2 + *(*a2 - 24);
      v37 = *(v36 + 237);
      if (a4)
      {
        v38 = llvm::ConstantInt::get();
        v63 = 257;
        v39 = (v36 + 1712);
        v40 = v37;
        v41 = a4;
      }

      else
      {
        v42 = llvm::PointerType::get();
        v63 = 257;
        PointerCast = llvm::IRBuilderBase::CreatePointerCast(v36 + 214, Load, v42, &v62, v43);
        v45 = a2 + *(*a2 - 24);
        v46 = *(v45 + 237);
        v38 = llvm::ConstantInt::get();
        v63 = 257;
        v39 = (v45 + 1712);
        v40 = v46;
        v41 = PointerCast;
      }

      v47 = llvm::IRBuilderBase::CreateGEP(v39, v40, v41, v38, &v62);
      v48 = a2 + *(*a2 - 24);
      v49 = *(v48 + 237);
      v63 = 257;
      llvm::Type::isOpaquePointerTy(*v47);
      v12[1] = llvm::IRBuilderBase::CreateAlignedLoad(v48 + 214, v49, v47, 0, &v62);
      if (v58 >= 0)
      {
        v50 = HIBYTE(v58);
      }

      else
      {
        v50 = __p[1];
      }

      std::string::basic_string[abi:nn200100](&v55, v50 + 22);
      if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = &v55;
      }

      else
      {
        v51 = v55.__r_.__value_.__r.__words[0];
      }

      if (v50)
      {
        if (v58 >= 0)
        {
          v52 = __p;
        }

        else
        {
          v52 = __p[0];
        }

        memmove(v51, v52, v50);
      }

      strcpy(v51 + v50, ".outputPartitionOffset");
      v63 = 260;
      v62.__r_.__value_.__r.__words[0] = &v55;
      llvm::Value::setName();
      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      v11 = v17;
    }

    v12[2] = llvm::ConstantInt::get();
    if (SHIBYTE(v58) < 0)
    {
      operator delete(__p[0]);
    }

    ++v10;
    v12 += 6;
  }

  while (v10 != 8);
}

void AGCLLVMUserFragmentShader::readAndWriteFramebufferFunctionPointers(AGCLLVMUserFragmentShader *this, AGCLLVMUserObject *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  FragmentBuiltinPsoStatePtr = AGCLLVMUserObject::loadFragmentBuiltinPsoStatePtr(a2);
  v5 = a2 + *(*a2 - 24);
  FragmentBuiltinPsoStateType = AGCLLVMUserObject::getFragmentBuiltinPsoStateType(a2, v6, v7);
  __p[0] = llvm::ConstantInt::get();
  __p[1] = llvm::ConstantInt::get();
  v32 = llvm::ConstantInt::get();
  v33 = llvm::ConstantInt::get();
  v30 = 257;
  llvm::Type::isOpaquePointerTy(*FragmentBuiltinPsoStatePtr);
  GEP = llvm::IRBuilderBase::CreateGEP((v5 + 1712), FragmentBuiltinPsoStateType, FragmentBuiltinPsoStatePtr, __p, 4, v29);
  v10 = 0;
  v11 = 0;
  v12 = (this + 64);
  do
  {
    v13 = a2 + *(*a2 - 24);
    v14 = *(v13 + 239);
    v15 = llvm::ConstantInt::get();
    v30 = 257;
    *(v12 - 8) = llvm::IRBuilderBase::CreateGEP((v13 + 1712), v14, GEP, v15, v29);
    std::to_string(&v27, v10);
    v16 = std::string::insert(&v27, 0, "agc.read_function[");
    v17 = v16->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = *&v16->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v28, "].i64");
    v19 = v18->__r_.__value_.__r.__words[2];
    *__p = *&v18->__r_.__value_.__l.__data_;
    v32 = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v30 = 260;
    v29[0] = __p;
    llvm::Value::setName();
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    v20 = a2 + *(*a2 - 24);
    v21 = *(v20 + 239);
    v22 = llvm::ConstantInt::get();
    v30 = 257;
    *v12 = llvm::IRBuilderBase::CreateGEP((v20 + 1712), v21, GEP, v22, v29);
    std::to_string(&v27, v10);
    v23 = std::string::insert(&v27, 0, "agc.write_function[");
    v24 = v23->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = *&v23->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = std::string::append(&v28, "].i64");
    v26 = v25->__r_.__value_.__r.__words[2];
    *__p = *&v25->__r_.__value_.__l.__data_;
    v32 = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v30 = 260;
    v29[0] = __p;
    llvm::Value::setName();
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    v11 += 2;
    ++v12;
    ++v10;
  }

  while (v11 != 16);
}

llvm::Instruction *AGCLLVMStatelessFragmentObject::WriteFramebufferOptions::WriteFramebufferOptions(uint64_t a1, uint64_t a2, char a3, unsigned int *a4, int a5, char a6, uint64_t a7, int a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, char a14, char a15, __int128 a16, uint64_t a17, char a18, uint64_t a19, char a20, int a21)
{
  *a1 = a3;
  v24 = *a4;
  *(a1 + 4) = *a4;
  v25 = a4[1];
  *(a1 + 8) = v25;
  v26 = a4[2];
  *(a1 + 12) = v26;
  v27 = a4[3];
  *(a1 + 16) = v27;
  v28 = *(a4 + 16);
  *(a1 + 20) = v28;
  v29 = *(a4 + 17);
  *(a1 + 21) = v29;
  v30 = *(a4 + 18);
  *(a1 + 22) = v30;
  v31 = *(a4 + 19);
  *(a1 + 23) = v31;
  *(a1 + 24) = v24;
  *(a1 + 28) = v25;
  *(a1 + 32) = v26;
  *(a1 + 36) = v27;
  *(a1 + 40) = v28;
  *(a1 + 41) = v29;
  *(a1 + 42) = v30;
  *(a1 + 43) = v31;
  *(a1 + 44) = a5;
  *(a1 + 48) = a6;
  *(a1 + 52) = a7;
  *(a1 + 64) = a10;
  *(a1 + 72) = a11;
  *(a1 + 80) = a12;
  *(a1 + 88) = a13;
  *(a1 + 89) = a14;
  *(a1 + 90) = a15;
  *(a1 + 140) = 0;
  *(a1 + 160) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 122) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 228) = 0;
  *(a1 + 248) = 0;
  *(a1 + 260) = 0;
  *(a1 + 252) = 0;
  *(a1 + 210) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 180) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 268) = 0;
  *(a1 + 272) = a9;
  *(a1 + 276) = a8;
  *(a1 + 280) = a16;
  *(a1 + 296) = a17;
  *(a1 + 304) = a18;
  *(a1 + 308) = a19;
  *(a1 + 316) = a20;
  *(a1 + 320) = a21;
  if (a6)
  {
    return a1;
  }

  v32 = (*(*a2 + 688))(a2);
  AGCLLVMGen3TargetLowerer::fragmentOutputConfiguration(&v44, v32, *a4, a9, a10, a11);
  if ((v50 & 1) == 0)
  {
    goto LABEL_19;
  }

  v33 = v47;
  *(a1 + 128) = v46;
  *(a1 + 144) = v33;
  *(a1 + 160) = v48;
  *(a1 + 176) = v49;
  v34 = v45;
  *(a1 + 96) = v44;
  *(a1 + 112) = v34;
  if (*(a1 + 21) != 1 || (*(a1 + 23) & 1) != 0)
  {
    return a1;
  }

  v35 = *a4;
  if (v35 <= 18)
  {
    if (v35 == 2)
    {
      v35 = 13;
      goto LABEL_16;
    }

    if (v35 != 3)
    {
      if (v35 == 18)
      {
        v35 = 9;
      }

      goto LABEL_16;
    }

LABEL_14:
    v35 = 14;
    goto LABEL_16;
  }

  if (v35 == 19)
  {
    goto LABEL_14;
  }

  if (v35 == 20 || v35 == 21)
  {
    v35 = 12;
  }

LABEL_16:
  *(a1 + 24) = v35;
  v36 = (*(*a2 + 688))(a2);
  AGCLLVMGen3TargetLowerer::fragmentOutputConfiguration(&v44, v36, v35, a9, a10, a11);
  if (v50)
  {
    v37 = v47;
    *(a1 + 216) = v46;
    *(a1 + 232) = v37;
    *(a1 + 248) = v48;
    *(a1 + 264) = v49;
    v38 = v45;
    *(a1 + 184) = v44;
    *(a1 + 200) = v38;
    return a1;
  }

LABEL_19:
  v40 = std::__throw_bad_optional_access[abi:nn200100]();
  return AGCLLVMBuilder::CreateConstInBoundsGEP1_32(v40, v41, v42, v43);
}

llvm::Instruction *AGCLLVMBuilder::CreateConstInBoundsGEP1_32(AGCLLVMBuilder *this, llvm::Type *a2, llvm::Type **a3, unsigned int a4)
{
  v7 = *a3;
  if ((*(*a3 + 2) & 0xFE) == 0x12)
  {
    v7 = **(v7 + 2);
  }

  llvm::Type::isOpaquePointerTy(v7);
  v12 = 257;
  llvm::Type::getInt32Ty(*(this + 9), v8);
  v15 = llvm::ConstantInt::get();
  v9 = (*(**(this + 10) + 48))(*(this + 10), a2, a3, &v15, 1, 1);
  if (!v9)
  {
    v14 = 257;
    v9 = llvm::GetElementPtrInst::Create(a2, a3, &v15, 1, v13);
    llvm::GetElementPtrInst::setIsInBounds(v9);
    llvm::IRBuilderBase::Insert<llvm::CastInst>(this + 1, v9, v11);
  }

  return v9;
}

llvm::Value *AGCLLVMStatelessFragmentObject::buildDerivedReadOrWriteFramebufferValues(void *a1, void *a2, uint64_t a3, BOOL a4)
{
  v7 = *(a3 + 280);
  if (v7)
  {
    a2[1] = v7;
  }

  else
  {
    v8 = a1 + *(*a1 - 24);
    v21 = *(v8 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v22, (v8 + 1712));
    v23 = *(v8 + 452);
    a2[1] = AGCLLVMObject::buildReadDynamicLIBSize(v8, &v21);
    if (v22)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  if (*(a3 + 21) != 1 || (*(a3 + 23) & 1) != 0)
  {
    a2[3] = a2[2];
    ICmp = llvm::ConstantInt::get();
  }

  else
  {
    v9 = a1 + *(*a1 - 24);
    v10 = a2[2];
    v11 = llvm::ConstantInt::get();
    v20 = 257;
    v12 = llvm::IRBuilderBase::CreateAnd((v9 + 1712), v10, v11, v19);
    a2[3] = v12;
    v13 = (a1 + *(*a1 - 24));
    v14 = a2[2];
    v20 = 257;
    ICmp = llvm::IRBuilderBase::CreateICmp(v13 + 214, 33, v12, v14, v19);
  }

  a2[4] = ICmp;
  v19[0] = "lib_offset";
  v20 = 259;
  llvm::Value::setName();
  v19[0] = "is_packed";
  v20 = 259;
  result = llvm::Value::setName();
  v17 = *(a3 + 288);
  if (v17)
  {
    result = a2[3];
    if (result)
    {
      v19[0] = "lib_offset.dynamic.unused";
      v20 = 259;
      result = llvm::Value::setName();
    }

    a2[3] = v17;
  }

  if (*(a3 + 304) == 1)
  {
    v18 = *(a3 + 296);
    if (v18)
    {
      result = a2[5];
      if (result)
      {
        v19[0] = "slab_index.dynamic.unused";
        v20 = 259;
        result = llvm::Value::setName();
      }

      a2[5] = v18;
    }
  }

  return result;
}

uint64_t AGCLLVMStatelessFragmentObject::buildBodyWithPossiblePromotion(void *a1, uint64_t a2, uint64_t a3, llvm::Function *a4, uint64_t a5)
{
  if (*(a3 + 21) == 1 && (*(a3 + 23) & 1) == 0)
  {
    operator new();
  }

  v5 = *(a5 + 24);
  if (v5)
  {
    return (*(*v5 + 48))(v5, a3 + 4, a3 + 96, a4);
  }

  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<void ()(AGCLLVMBuilder::WriteFramebufferArgs const&,FragmentOutputConfiguration const&)>::~__value_func[abi:nn200100](v7);
}

uint64_t std::__function::__value_func<void ()(AGCLLVMBuilder::WriteFramebufferArgs const&,FragmentOutputConfiguration const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AGCLLVMStatelessFragmentObject::buildReadFramebufferFunction(AGCLLVMStatelessFragmentObject::WriteFramebufferOptions const&,unsigned char &)::$_0,std::allocator<AGCLLVMStatelessFragmentObject::buildReadFramebufferFunction(AGCLLVMStatelessFragmentObject::WriteFramebufferOptions const&,unsigned char &)::$_0>,void ()(AGCLLVMBuilder::WriteFramebufferArgs const&,FragmentOutputConfiguration const&)>::operator()(void *a1, unsigned int *a2, uint64_t a3)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = *(*v4 - 24);
  Framebuffer = AGCLLVMStatelessFragmentObject::buildReadFramebuffer(v4, a1[3], a2, a3, a1[5], 0, 0);
  Element = AGCLLVMObject::buildConvertColor(v4 + *(*v4 - 24), Framebuffer, *(v5 + 64), *(a3 + 41), *(a3 + 40), *(a3 + 68));
  v10 = *(v5 + 64);
  if ((*(v10 + 8) & 0xFE) == 0x12 && *(v10 + 32) == 1)
  {
    v11 = v4 + *(*v4 - 24);
    v15 = 257;
    v12 = llvm::ConstantInt::get();
    Element = llvm::IRBuilderBase::CreateExtractElement((v11 + 1712), Element, v12, v14);
  }

  return llvm::IRBuilderBase::CreateRet((v4 + v6 + 1712), Element, v8);
}

llvm::Value *AGCLLVMStatelessFragmentObject::buildReadFramebuffer(uint64_t a1, void *a2, unsigned int *a3, uint64_t a4, _BYTE *a5, char a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    *a5 |= 0xFu;
  }

  v12 = a1 + *(*a1 - 24);
  v13 = *(v12 + 2168);
  v41 = *(v12 + 1760);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v42, (v12 + 1712));
  v43 = *(v12 + 1808);
  v14 = (*(*v13 + 232))(v13, &v41, a3, a2[1], a2[3], *a4, a2[5], *a2);
  if (v42)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::Value::getName(v14);
  if (!v15)
  {
    v39 = "buildReadFramebuffer.buildReadOutputPartitionFromState";
    v40 = 259;
    llvm::Value::setName();
  }

  NextNonDebugInstruction = llvm::Instruction::getNextNonDebugInstruction(v14);
  v17 = (a1 + *(*a1 - 24));
  if (NextNonDebugInstruction)
  {
    v18 = llvm::Instruction::getNextNonDebugInstruction(v14);
    llvm::IRBuilderBase::SetInsertPoint((v17 + 214), v18);
  }

  else
  {
    v19 = *(v14 + 5);
    v17[220] = v19;
    v17[221] = v19 + 40;
  }

  v20 = AGCLLVMObject::buildOutputFormatConversion(a1 + *(*a1 - 24), v14, *(a4 + 24), *(a4 + 36));
  llvm::Value::getName(v20);
  if (!v21)
  {
    v39 = "buildReadFramebuffer.buildOutputFormatConversion";
    v40 = 259;
    llvm::Value::setName();
  }

  v22 = AGCLLVMStatelessFragmentObject::buildPreEmitSwizzle(a1, v20, 0, a3[3], 0);
  llvm::Value::getName(v22);
  if (v23)
  {
    if (a6)
    {
      return v22;
    }
  }

  else
  {
    v39 = "buildReadFramebuffer.buildPreEmitSwizzle";
    v40 = 259;
    llvm::Value::setName();
    if (a6)
    {
      return v22;
    }
  }

  if ((*(a1 + 12) & 4) != 0 && *(a4 + 64) == 1 && *(a4 + 60) == 1)
  {
    v24 = a1 + *(*a1 - 24);
    v25 = *(v24 + 2168);
    if (*(v25 + 1845) == 1 && (*(a4 + 61) & 1) == 0)
    {
      v36 = *(v24 + 1760);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v37, (v24 + 1712));
      v38 = *(v24 + 1808);
      v22 = AGCLLVMTargetLowerer::buildClampColor(v25, &v36, v22, a4 + 44, 1);
      if (v37)
      {
        llvm::MetadataTracking::untrack();
      }

      llvm::Value::getName(v22);
      if (!v26)
      {
        v39 = "buildReadFramebuffer.buildClampColor";
        v40 = 259;
        llvm::Value::setName();
      }
    }
  }

  if (a3[3] == 6)
  {
    v27 = 8;
  }

  else
  {
    v27 = ~(-1 << a3[1]);
  }

  v22 = AGCLLVMBuilder::fillUnwrittenChannels((a1 + *(*a1 - 24) + 1704), v22, v27, *(a4 + 40), *(a4 + 41));
  llvm::Value::getName(v22);
  if (!v28)
  {
    v39 = "buildReadFramebuffer.fillUnwrittenChannels";
    v40 = 259;
    llvm::Value::setName();
  }

  if (*(a3 + 16) == 1)
  {
    v29 = a1 + *(*a1 - 24);
    v30 = *(v29 + 2168);
    v33 = *(v29 + 1760);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v34, (v29 + 1712));
    v35 = *(v29 + 1808);
    v22 = (*(*v30 + 600))(v30, &v33, v22, *a3);
    if (v34)
    {
      llvm::MetadataTracking::untrack();
    }

    llvm::Value::getName(v22);
    if (!v31)
    {
      v39 = "buildReadFramebuffer.buildGammaExpansion";
      v40 = 259;
      llvm::Value::setName();
    }
  }

  return v22;
}

__n128 std::__function::__func<AGCLLVMStatelessFragmentObject::buildReadFramebufferFunction(AGCLLVMStatelessFragmentObject::WriteFramebufferOptions const&,unsigned char &)::$_0,std::allocator<AGCLLVMStatelessFragmentObject::buildReadFramebufferFunction(AGCLLVMStatelessFragmentObject::WriteFramebufferOptions const&,unsigned char &)::$_0>,void ()(AGCLLVMBuilder::WriteFramebufferArgs const&,FragmentOutputConfiguration const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A0298;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t AGCLLVMStatelessFragmentObject::buildReadFramebufferFunctionType(AGCLLVMStatelessFragmentObject *this, llvm::Type *a2, int a3, int a4)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v8[0] = v9;
  v8[1] = 0x400000000;
  if (!a3)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v8, *(this + *(*this - 24) + 1896));
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v8, *(this + *(*this - 24) + 1896));
  if (a4)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v8, *(this + *(*this - 24) + 1896));
  }

  v6 = llvm::FunctionType::get();
  if (v8[0] != v9)
  {
    free(v8[0]);
  }

  return v6;
}

uint64_t AGCLLVMStatelessFragmentObject::buildExtractField(void *a1, llvm::Value *a2, unsigned int a3, char a4, const llvm::Twine *a5)
{
  v7 = a1 + *(*a1 - 24);
  v8 = llvm::ConstantInt::get();
  v13 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((v7 + 1712), a2, v8, v12);
  v10 = llvm::ConstantInt::get();
  return llvm::IRBuilderBase::CreateAnd((v7 + 1712), LShr, v10, a5);
}

llvm::Instruction *AGCLLVMBuilder::CreateConstInBoundsGEP2_32(llvm::Type **this, llvm::Type *a2, llvm::Type **a3, unsigned int a4)
{
  v8 = *a3;
  if ((*(*a3 + 2) & 0xFE) == 0x12)
  {
    v8 = **(v8 + 2);
  }

  llvm::Type::isOpaquePointerTy(v8);
  v12 = 257;
  return llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(this + 1, a2, a3, a4, v11, v9);
}

uint64_t AGCLLVMUserFragmentShader::buildAlphaQuantize(AGCLLVMUserFragmentShader *this, llvm::Value *a2)
{
  v4 = this + *(*this - 24);
  v5 = *(v4 + 271);
  v14 = *(v4 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (v4 + 1712));
  v16 = *(v4 + 452);
  v6 = (*(*v5 + 88))(v5, &v14, a2, 8, 0, 1);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  v7 = this + *(*this - 24);
  v8 = *(v7 + 271);
  v11 = *(v7 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (v7 + 1712));
  v13 = *(v7 + 452);
  v9 = (*(*v8 + 96))(v8, &v11, v6, 8, 0, 32);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t AGCLLVMFragmentShader::buildWriteFramebuffer(AGCLLVMStatelessFragmentObject *a1, llvm::Value *a2, llvm::Value *a3, uint64_t a4, llvm::Type **a5, uint64_t a6, uint64_t a7, uint64_t a8, _BOOL8 a9, int *a10, uint64_t a11, uint64_t *a12, __int16 a13, unsigned int a14, __int128 *a15, int a16, llvm::Type **a17, int a18)
{
  v25 = *MEMORY[0x277D85DE8];
  v21 = a16 & 0xF;
  v20 = a16 & 0xF;
  LOBYTE(v22) = 0;
  v24 = 0;
  if (*(a15 + 20) == 1)
  {
    v22 = *a15;
    v23 = *(a15 + 4);
    v24 = 1;
  }

  AGCLLVMStatelessFragmentObject::buildWriteFramebuffer(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, SHIBYTE(a13), a14 | 0x100000000, &v22, a16, a17, a18, 1 << (BYTE1(*(*(a1 + 93) + 32)) & 3), &v21, &v20);
  *(a1 + 94) |= v21 << (4 * a14);
  *(a1 + 95) |= v20 << (4 * a14);
  if ((~*(*(a1 + 93) + 4 * a14) & 0xFF000) == 0 || (result = (*(*a1 + 24))(a1, a14), (result & 1) == 0))
  {
    *&v22 = llvm::MDString::get();
    llvm::ConstantInt::get();
    *(&v22 + 1) = llvm::ValueAsMetadata::get();
    llvm::MDTuple::getImpl();
    return llvm::Instruction::setMetadata();
  }

  return result;
}

llvm::Instruction *AGCLLVMStatelessFragmentObject::buildWriteFramebuffer(AGCLLVMStatelessFragmentObject *a1, llvm::Value *a2, llvm::Value *a3, uint64_t a4, llvm::Type **a5, uint64_t a6, uint64_t a7, uint64_t a8, BOOL a9, int *a10, char a11, uint64_t *a12, char a13, char a14, unint64_t a15, __int128 *a16, int a17, llvm::Type **a18, int a19, int a20, char *a21, char *a22)
{
  InsertElement = a2;
  v74 = *MEMORY[0x277D85DE8];
  if (!a5 && (*(*a2 + 8) & 0xFE) != 0x12)
  {
    llvm::VectorType::get();
    v30 = llvm::UndefValue::get();
    v31 = a1 + *(*a1 - 24);
    v73 = 257;
    v32 = llvm::ConstantInt::get();
    InsertElement = llvm::IRBuilderBase::CreateInsertElement((v31 + 1712), v30, InsertElement, v32, &v70);
  }

  if (a3 && (*(*a3 + 8) & 0xFE) != 0x12)
  {
    llvm::VectorType::get();
    v33 = llvm::UndefValue::get();
    v34 = a1 + *(*a1 - 24);
    v73 = 257;
    v35 = llvm::ConstantInt::get();
    a3 = llvm::IRBuilderBase::CreateInsertElement((v34 + 1712), v33, a3, v35, &v70);
  }

  v36 = a1 + *(*a1 - 24);
  v67 = *(v36 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v68, (v36 + 1712));
  v69 = *(v36 + 452);
  if (a3)
  {
    v37 = *a3;
  }

  else
  {
    v37 = 0;
  }

  v38 = a18;
  if (a18)
  {
    v38 = *a18;
  }

  v39 = *InsertElement;
  if (a5)
  {
    v40 = AGCLLVMStatelessFragmentObject::buildWriteFramebufferFunctionType(a1, v39, v37, v38, 0, a9);
    v41 = a1 + *(*a1 - 24);
    v42 = *(v41 + 239);
    v73 = 257;
    llvm::Type::isOpaquePointerTy(*a5);
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v41 + 214, v42, a5, 0, &v70);
    v44 = a1 + *(*a1 - 24);
    v45 = llvm::PointerType::get();
    v73 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v44 + 1712), 48, AlignedLoad, v45, &v70);
LABEL_25:
    if (*(a1 + 2) <= 0)
    {
      *(a1 + 2) = 1;
    }

    goto LABEL_27;
  }

  if ((*(a16 + 20) & 1) == 0)
  {
    v57 = std::__throw_bad_optional_access[abi:nn200100]();
    return std::__function::__func<AGCLLVMStatelessFragmentObject::buildWriteFramebufferFunction(AGCLLVMStatelessFragmentObject::WriteFramebufferOptions const&,unsigned char &,unsigned char &)::$_0,std::allocator<AGCLLVMStatelessFragmentObject::buildWriteFramebufferFunction(AGCLLVMStatelessFragmentObject::WriteFramebufferOptions const&,unsigned char &,unsigned char &)::$_0>,void ()(AGCLLVMBuilder::WriteFramebufferArgs const&,FragmentOutputConfiguration const&)>::operator()(v57, v58, v59);
  }

  v47 = *(a1 + *(*a1 - 24) + 2168);
  v61 = *a16;
  v62 = *(a16 + 4);
  if (*(a6 + 16) == 16)
  {
    v48 = a6;
  }

  else
  {
    v48 = 0;
  }

  if (*(a7 + 16) == 16)
  {
    v49 = a7;
  }

  else
  {
    v49 = 0;
  }

  if (*(a8 + 16) == 16)
  {
    v50 = a8;
  }

  else
  {
    v50 = 0;
  }

  *(&v60 + 1) = v49;
  *&v60 = v48;
  AGCLLVMStatelessFragmentObject::WriteFramebufferOptions::WriteFramebufferOptions(&v70, v47, 0, &v61, *a10, a11, *a12, a17, a19, v39, v37, v38, 0, a13, a14, v60, v50, a9, a15 & ((a15 >> 1) >> 31) | a15 & 0x100000000, 0, a20);
  Cast = AGCLLVMStatelessFragmentObject::buildWriteFramebufferFunction(a1, &v70, a21, a22);
  v40 = *(Cast + 24);
  if (*a21)
  {
    goto LABEL_25;
  }

LABEL_27:
  v51 = a1 + *(*a1 - 24);
  v64 = v67;
  v65 = v68;
  if (v68)
  {
    llvm::MetadataTracking::track();
  }

  v66 = v69;
  AGCLLVMBuilder::InsertPoint::restoreIP(&v64, (v51 + 1712));
  if (v65)
  {
    llvm::MetadataTracking::untrack();
  }

  v70 = v72;
  v71 = 0x700000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v70, InsertElement);
  if (a3)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v70, a3);
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v70, a4);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v70, a7);
  if (a9)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v70, a8);
  }

  if (a18)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v70, a18);
  }

  v52 = (a1 + *(*a1 - 24));
  v53 = v70;
  v54 = v71;
  v63 = 257;
  llvm::Type::isOpaquePointerTy(*Cast);
  v55 = llvm::IRBuilderBase::CreateCall(v52 + 214, v40, Cast, v53, v54, &v61);
  *(v55 + 9) = *(v55 + 9) & 0xF003 | (4 * *(*(a1 + *(*a1 - 24) + 2168) + 1960));
  llvm::MDTuple::getImpl();
  llvm::Instruction::setMetadata();
  if (v70 != v72)
  {
    free(v70);
  }

  if (v68)
  {
    llvm::MetadataTracking::untrack();
  }

  return v55;
}

uint64_t std::__function::__func<AGCLLVMStatelessFragmentObject::buildWriteFramebufferFunction(AGCLLVMStatelessFragmentObject::WriteFramebufferOptions const&,unsigned char &,unsigned char &)::$_0,std::allocator<AGCLLVMStatelessFragmentObject::buildWriteFramebufferFunction(AGCLLVMStatelessFragmentObject::WriteFramebufferOptions const&,unsigned char &,unsigned char &)::$_0>,void ()(AGCLLVMBuilder::WriteFramebufferArgs const&,FragmentOutputConfiguration const&)>::operator()(void *a1, unsigned __int16 *a2, void *a3)
{
  v4 = a2;
  v131 = *MEMORY[0x277D85DE8];
  v5 = a1[1];
  v6 = a1[3];
  v111 = a1[2];
  v112 = a1[5];
  v7 = v6[6];
  v8 = v6[7];
  v9 = *(v111 + 56);
  v10 = *(v111 + 44);
  v113 = a1[6];
  if (((v9 | v10) & 1) != 0 && (*(v5 + 12) & 1) != 0 && *(a3 + 64) == 1)
  {
    v109 = a1[3];
    v11 = *(v111 + 89) | *(v111 + 90) ^ 1;
    v12 = v5 + *(*v5 - 24);
    v13 = *(v12 + 2168);
    v126 = *(v12 + 1760);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v127, (v12 + 1712));
    v128 = *(v12 + 1808);
    v105 = v11;
    v7 = AGCLLVMTargetLowerer::buildClampColor(v13, &v126, v7, a3 + 44, v11 & 1);
    if (v127)
    {
      llvm::MetadataTracking::untrack();
    }

    *&v121 = "buildFragOps.buildClampColor(0)";
    LOWORD(v124) = 259;
    llvm::Value::setName();
    v4 = a2;
    if (v8)
    {
      v14 = v5 + *(*v5 - 24);
      v15 = *(v14 + 2168);
      v129 = *(v14 + 1760);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v130, (v14 + 1712));
      DWORD2(v130) = *(v14 + 1808);
      v8 = AGCLLVMTargetLowerer::buildClampColor(v15, &v129, v8, a3 + 44, v105 & 1);
      if (v130)
      {
        llvm::MetadataTracking::untrack();
      }

      *&v121 = "buildFragOps.buildClampColor(1)";
      LOWORD(v124) = 259;
      llvm::Value::setName();
    }

    v6 = v109;
  }

  v16 = AGCLLVMObject::buildConvertColor(v5 + *(*v5 - 24), v7, a3[9], *(a3 + 41), *(a3 + 40), *(a3 + 17));
  *&v121 = "buildFragOps.buildConvertColor(0)";
  LOWORD(v124) = 259;
  llvm::Value::setName();
  if (v8)
  {
    v8 = AGCLLVMObject::buildConvertColor(v5 + *(*v5 - 24), v8, a3[10], *(a3 + 41), *(a3 + 40), *(a3 + 17));
    *&v121 = "buildFragOps.buildConvertColor(1)";
    LOWORD(v124) = 259;
    llvm::Value::setName();
  }

  if ((v9 | v10))
  {
    v124 = 0;
    v122 = 0;
    v121 = *v6;
    v19 = v6[5];
    v123 = v6[3];
    v125 = v19;
    v20 = AGCLLVMStatelessFragmentObject::buildReadFramebuffer(v5, &v121, v4, a3, v112, 0, 0);
    *&v117 = "buildFragOps.buildReadFramebuffer";
    v120 = 259;
    llvm::Value::setName();
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v20 = 0;
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  v21 = *v4;
  if (v21 > 0x15 || ((1 << v21) & 0x331000) == 0)
  {
    v16 = AGCLLVMObject::buildConvertColor(v5 + *(*v5 - 24), v16, a3[2], *(a3 + 41), *(a3 + 40), *(a3 + 17));
    *&v121 = "buildFragOps.logic_color";
    LOWORD(v124) = 259;
    llvm::Value::setName();
    v26 = AGCLLVMObject::buildConvertColor(v5 + *(*v5 - 24), v20, a3[2], *(a3 + 41), *(a3 + 40), *(a3 + 17));
    *&v121 = "buildFragOps.logic_framebuffer";
    LOWORD(v124) = 259;
    llvm::Value::setName();
    switch(*(v111 + 52))
    {
      case 1:
        Xor = llvm::ConstantInt::get();
        goto LABEL_123;
      case 2:
        v89 = v5 + *(*v5 - 24);
        LOWORD(v124) = 257;
        v82 = (v89 + 1712);
        v83 = &v121;
        v81 = v16;
        goto LABEL_109;
      case 3:
        v91 = v5 + *(*v5 - 24);
        LOWORD(v124) = 257;
        Not = llvm::IRBuilderBase::CreateNot((v91 + 1712), v26, &v121, v28);
        v120 = 257;
        v82 = (v91 + 1712);
        v83 = &v117;
        v81 = v16;
        goto LABEL_112;
      case 4:
        break;
      case 5:
        v80 = v5 + *(*v5 - 24);
        LOWORD(v124) = 257;
        v81 = llvm::IRBuilderBase::CreateNot((v80 + 1712), v16, &v121, v28);
        v120 = 257;
        v82 = (v80 + 1712);
        v83 = &v117;
LABEL_109:
        Not = v26;
LABEL_112:
        Xor = llvm::IRBuilderBase::CreateAnd(v82, v81, Not, v83);
        goto LABEL_123;
      case 6:
        v94 = v5 + *(*v5 - 24);
        LOWORD(v124) = 257;
        Xor = llvm::IRBuilderBase::CreateXor((v94 + 1712), v16, v26, &v121);
        goto LABEL_123;
      case 7:
        v95 = v5 + *(*v5 - 24);
        LOWORD(v124) = 257;
        v86 = (v95 + 1712);
        v87 = &v121;
        v85 = v16;
        goto LABEL_117;
      case 8:
        v92 = v5 + *(*v5 - 24);
        LOWORD(v124) = 257;
        v93 = llvm::IRBuilderBase::CreateOr((v92 + 1712), v16, v26, &v121);
        goto LABEL_121;
      case 9:
        v92 = v5 + *(*v5 - 24);
        LOWORD(v124) = 257;
        v93 = llvm::IRBuilderBase::CreateXor((v92 + 1712), v16, v26, &v121);
        goto LABEL_121;
      case 0xA:
        v88 = v5 + *(*v5 - 24);
        LOWORD(v124) = 257;
        v77 = (v88 + 1712);
        v78 = &v121;
        v79 = v26;
        goto LABEL_122;
      case 0xB:
        v97 = v5 + *(*v5 - 24);
        LOWORD(v124) = 257;
        v96 = llvm::IRBuilderBase::CreateNot((v97 + 1712), v26, &v121, v28);
        v120 = 257;
        v86 = (v97 + 1712);
        v87 = &v117;
        v85 = v16;
        goto LABEL_119;
      case 0xC:
        v76 = v5 + *(*v5 - 24);
        LOWORD(v124) = 257;
        v77 = (v76 + 1712);
        v78 = &v121;
        v79 = v16;
        goto LABEL_122;
      case 0xD:
        v84 = v5 + *(*v5 - 24);
        LOWORD(v124) = 257;
        v85 = llvm::IRBuilderBase::CreateNot((v84 + 1712), v16, &v121, v28);
        v120 = 257;
        v86 = (v84 + 1712);
        v87 = &v117;
LABEL_117:
        v96 = v26;
LABEL_119:
        Xor = llvm::IRBuilderBase::CreateOr(v86, v85, v96, v87);
        goto LABEL_123;
      case 0xE:
        v92 = v5 + *(*v5 - 24);
        LOWORD(v124) = 257;
        v93 = llvm::IRBuilderBase::CreateAnd((v92 + 1712), v16, v26, &v121);
LABEL_121:
        v79 = v93;
        v120 = 257;
        v77 = (v92 + 1712);
        v78 = &v117;
LABEL_122:
        Xor = llvm::IRBuilderBase::CreateNot(v77, v79, v78, v28);
        goto LABEL_123;
      case 0xF:
        Xor = llvm::Constant::getAllOnesValue(*v26, v27);
LABEL_123:
        v16 = Xor;
        break;
      case 0x10:
        v16 = v26;
        break;
      default:
        v16 = 0;
        break;
    }

    *&v121 = "buildFragOps.buildLogicOp";
    LOWORD(v124) = 259;
    llvm::Value::setName();
    goto LABEL_22;
  }

LABEL_19:
  if ((v10 & 1) == 0 || (v22 = *v4, v22 <= 0x12) && ((1 << v22) & 0x40F30) != 0)
  {
LABEL_22:
    v23 = 0;
    goto LABEL_23;
  }

  v36 = *(v111 + 44);
  v101 = (v36 >> 1) & 0x1F;
  v102 = (v36 >> 21) & 7;
  v106 = v36 >> 11;
  v108 = HIBYTE(v36) & 7;
  v104 = AGCLLVMObject::buildConvertColor(v5 + *(*v5 - 24), v16, a3[1], 0, 1, *(a3 + 17));
  if (v8)
  {
    v100 = AGCLLVMObject::buildConvertColor(v5 + *(*v5 - 24), v8, a3[1], 0, 1, *(a3 + 17));
  }

  else
  {
    v100 = 0;
  }

  v68 = (v36 >> 6) & 0x1F;
  v99 = HIWORD(v36) & 0x1F;
  v69 = AGCLLVMObject::buildConvertColor(v5 + *(*v5 - 24), v20, a3[1], *(a3 + 41), *(a3 + 40), *(a3 + 17));
  v23 = *(a3 + 64) == 1 && (v70 = *(v111 + 44), ((v70 >> 21) & 7) - 1 <= 1) && (HIBYTE(v70) & 7) - 1 < 2u;
  v71 = v5 + *(*v5 - 24);
  StatelessPSOGlobal = AGCLLVMObject::GetStatelessPSOGlobal(v71);
  LOWORD(v124) = 257;
  Load = AGCLLVMBuilder::CreateLoad((v71 + 1704), StatelessPSOGlobal, &v121);
  v103 = AGCLLVMStatelessFragmentObject::buildBlendEquation(v5, v104, v100, v69, Load, (*v111 & 1) == 0, v102, v101, v68, a3 + 44, *(a3 + 41), 1);
  v74 = AGCLLVMStatelessFragmentObject::buildBlendEquation(v5, v104, v100, v69, Load, (*v111 & 1) == 0, v108, v106, v99, a3 + 44, *(a3 + 41), 0);
  v16 = AGCLLVMBuilder::combineRGBA((v5 + *(*v5 - 24) + 1704), v103, v74, v75);
LABEL_23:
  if ((*(v5 + 12) & 2) != 0 && *(a3 + 64) == 1 && *(a3 + 60) == 1)
  {
    v24 = v5 + *(*v5 - 24);
    v25 = *(v24 + 2168);
    if (*(v25 + 1845) == 1)
    {
      if (v23 || (*(a3 + 61) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (v23)
    {
      goto LABEL_34;
    }

    v121 = *(v24 + 1760);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v122, (v24 + 1712));
    LODWORD(v123) = *(v24 + 1808);
    v16 = AGCLLVMTargetLowerer::buildClampColor(v25, &v121, v16, a3 + 44, 0);
    v17 = v122;
    if (v122)
    {
      llvm::MetadataTracking::untrack();
    }
  }

LABEL_34:
  if ((a3[5] & 1) == 0)
  {
    v30 = (*(*v16 + 8) & 0xFE) == 0x12 ? *(**(*v16 + 16) + 8) : *(*v16 + 8);
    if (v30 != 13)
    {
      fwrite("AGC: Warning: encountered not scaled int, not int type\n", 0x37uLL, 1uLL, *MEMORY[0x277D85DF8]);
      goto LABEL_94;
    }
  }

  v31 = *v4;
  v32 = *(v4 + 1);
  v33 = v32 - 1;
  v34 = *v5;
  v35 = *(*(v5 + *(*v5 - 24) + 2168) + 964);
  if (*v4 > 0x16u)
  {
    goto LABEL_47;
  }

  if (((1 << v31) & 0x41F3C0) != 0)
  {
    v35 = (((2 * v32) + v35 - 1) & -v35) >> 1;
    goto LABEL_52;
  }

  if (((1 << v31) & 0x3C0000) != 0)
  {
    LOBYTE(v35) = 4;
    goto LABEL_52;
  }

  if (((1 << v31) & 0x20C00) != 0)
  {
    v35 = (((4 * v32) + v35 - 1) & -v35) >> 2;
  }

  else
  {
LABEL_47:
    if (v31 - 2 >= 4)
    {
      LOBYTE(v35) = 0;
    }

    else
    {
      LODWORD(v35) = (v35 + v33) & -v35;
    }
  }

LABEL_52:
  if (*(v4 + 3) == 6)
  {
    if (v32 != 1 || v31 != 14 && v31 != 3)
    {
      goto LABEL_94;
    }

    v37 = *v113 >> 3;
  }

  else
  {
    v37 = *v113;
  }

  v38 = -1 << v35;
  v39 = (-1 << v32) & 0xF;
  if (((1 << v33) & v37) == 0)
  {
    v39 = 0;
  }

  v40 = v37 | v39;
  v41 = v40 & ~v38;
  *v113 = v40 & ~v38;
  v42 = (*(**(v5 + *(v34 - 24) + 2168) + 576))();
  if (*(v4 + 16) == 1)
  {
    v43 = *(v5 + *(*v5 - 24) + 2168);
    if (!(*(*v43 + 592))(v43, *v4))
    {
      goto LABEL_94;
    }

    v110 = v6;
    v44 = v5 + *(*v5 - 24);
    v45 = *(v44 + 2168);
    v126 = *(v44 + 1760);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v127, (v44 + 1712));
    v128 = *(v44 + 1808);
    v16 = (*(*v45 + 608))(v45, &v126, v16, *v4, a3 + 44);
    v17 = v127;
    if (v127)
    {
      llvm::MetadataTracking::untrack();
    }

    v6 = v110;
  }

  v46 = *(a3 + 40);
  if ((v46 & 1) != 0 || ((*(*v16 + 8) & 0xFE) != 0x12 ? (v47 = *(*v16 + 8)) : (v47 = *(**(*v16 + 16) + 8)), v47 == 13))
  {
    v48 = AGCLLVMObject::buildConvertColor(v5 + *(*v5 - 24), v16, a3[3], *(a3 + 41), v46, *(a3 + 17));
    if (v48)
    {
      if (*(v4 + 3) == 6)
      {
        v49 = 8;
      }

      else
      {
        v49 = ~(-1 << *(v4 + 1));
      }

      Select = AGCLLVMBuilder::fillUnwrittenChannels((v5 + *(*v5 - 24) + 1704), v48, v49, *(a3 + 40), *(a3 + 41));
      v124 = 0;
      v122 = 0;
      v121 = *v6;
      v51 = v6[5];
      v123 = v6[3];
      v125 = v51;
      if ((v42 | v38) != 0xFFFFFFFF)
      {
        *&v129 = llvm::ConstantInt::get();
        *(&v129 + 1) = llvm::ConstantInt::get();
        *&v130 = llvm::ConstantInt::get();
        *(&v130 + 1) = llvm::ConstantInt::get();
        llvm::ConstantVector::get();
        AGCLLVMStatelessFragmentObject::buildReadFramebuffer(v5, &v121, v4, a3, v112, 1, 1);
        v120 = 257;
        Select = llvm::IRBuilderBase::CreateSelect();
        v41 = 15;
      }

      if (!*(v111 + 80))
      {
        goto LABEL_85;
      }

      v52 = v6[8];
      if (v32 <= 3)
      {
        v129 = 0u;
        v130 = 0u;
        if (v32)
        {
          for (i = 0; i != v32; ++i)
          {
            *(&v129 + i) = llvm::ConstantInt::get();
          }
        }

        do
        {
          *(&v129 + v32++) = llvm::ConstantInt::get();
        }

        while (v32 != 4);
        v54 = v5 + *(*v5 - 24);
        v55 = llvm::ConstantInt::get();
        v57 = AGCLLVMBuilder::splat((v54 + 1704), 4, v55, v56);
        v58 = llvm::ConstantVector::get();
        v120 = 257;
        llvm::IRBuilderBase::CreateShuffleVector((v54 + 1712), v52, v57, v58, &v117);
      }

      AGCLLVMStatelessFragmentObject::buildReadFramebuffer(v5, &v121, v4, a3, v112, 1, 0);
      if (AGCLLVMObject::buildConvertColor(v5 + *(*v5 - 24), Select, a3[3], *(a3 + 41), *(a3 + 40), *(a3 + 17)))
      {
        v120 = 257;
        Select = llvm::IRBuilderBase::CreateSelect();
LABEL_85:
        v59 = AGCLLVMStatelessFragmentObject::buildPreEmitSwizzle(v5, Select, v41, *(v4 + 3), 1);
        v61 = v60;
        v62 = AGCLLVMObject::buildOutputFormatConversion(v5 + *(*v5 - 24), v59, *a3, *(a3 + 8));
        v63 = v5 + *(*v5 - 24);
        v64 = *(v63 + 2168);
        v129 = *(v63 + 1760);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v130, (v63 + 1712));
        DWORD2(v130) = *(v63 + 1808);
        LODWORD(v98) = v61;
        HIDWORD(v98) = *(a3 + 17);
        (*(*v64 + 224))(&v117, v64, &v129, v4, v6[1], v6[3], *a3, v62, 0, v6[5], *v6, v98);
        if (v130)
        {
          llvm::MetadataTracking::untrack();
        }

        if (v117)
        {
          v65 = v5 + *(*v5 - 24);
          v114 = v117;
          v115 = v118;
          if (v118)
          {
            llvm::MetadataTracking::track();
          }

          v116 = v119;
          AGCLLVMBuilder::InsertPoint::restoreIP(&v114, v65 + 1712);
          if (v115)
          {
            llvm::MetadataTracking::untrack();
          }
        }

        v17 = v118;
        if (v118)
        {
          llvm::MetadataTracking::untrack();
        }
      }
    }
  }

LABEL_94:
  v66 = (v5 + *(*v5 - 24) + 1712);

  return llvm::IRBuilderBase::CreateRetVoid(v66, v17, v18);
}

__n128 std::__function::__func<AGCLLVMStatelessFragmentObject::buildWriteFramebufferFunction(AGCLLVMStatelessFragmentObject::WriteFramebufferOptions const&,unsigned char &,unsigned char &)::$_0,std::allocator<AGCLLVMStatelessFragmentObject::buildWriteFramebufferFunction(AGCLLVMStatelessFragmentObject::WriteFramebufferOptions const&,unsigned char &,unsigned char &)::$_0>,void ()(AGCLLVMBuilder::WriteFramebufferArgs const&,FragmentOutputConfiguration const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A0250;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t AGCLLVMStatelessFragmentObject::buildWriteFramebufferFunctionType(AGCLLVMStatelessFragmentObject *this, llvm::Type *a2, llvm::Type *a3, llvm::Type *a4, int a5, int a6)
{
  v15[7] = *MEMORY[0x277D85DE8];
  __src = a2;
  v14[0] = v15;
  v14[1] = 0x700000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v14, &__src, v14);
  if (a3)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v14, a3);
  }

  if (!a5)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v14, *(this + *(*this - 24) + 1896));
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v14, *(this + *(*this - 24) + 1896));
  if (a6)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v14, *(this + *(*this - 24) + 1896));
  }

  if (a4)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v14, a4);
  }

  v11 = llvm::FunctionType::get();
  if (v14[0] != v15)
  {
    free(v14[0]);
  }

  return v11;
}

BOOL blendIsNoOpForPassthrough(int a1, int a2, int a3)
{
  if (a1 <= 3)
  {
    if ((a1 - 1) < 2)
    {
      return 1;
    }

    if (a1 == 3)
    {
      if (a2 == 2 && a3 == 1)
      {
        return 1;
      }

      if (a2 == 4 && a3 == 3)
      {
        return 1;
      }

      if (a2 == 4 && a3 == 7)
      {
        return 1;
      }

      v5 = a3 == 3 || a3 == 7;
      v6 = v5;
      if (a2 == 8 && v6)
      {
        return 1;
      }

      if (a2 == 6 && a3 == 5)
      {
        return 1;
      }

      if (a2 == 6 && a3 == 9)
      {
        return 1;
      }

      v7 = a3 == 5 || a3 == 9;
      v8 = v7;
      if (a2 == 10 && v8)
      {
        return 1;
      }

      if (a2 == 1 && a3 == 2)
      {
        return 1;
      }

      if (a2 == 3 && a3 == 4)
      {
        return 1;
      }

      if (a2 == 7 && a3 == 4)
      {
        return 1;
      }

      v9 = a2 == 3 || a2 == 7;
      v10 = v9;
      if (a3 == 8 && v10 || a2 == 5 && a3 == 6 || a2 == 9 && a3 == 6)
      {
        return 1;
      }

      return (a2 == 5 || a2 == 9) && a3 == 10;
    }

    return 0;
  }

  if (a1 == 4)
  {
    return a2 == 2 && a3 == 1;
  }

  else
  {
    if (a1 != 5 && a1 != 6)
    {
      return 0;
    }

    return a2 == 1 && a3 == 2;
  }
}

llvm::Instruction *llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(llvm::Type **this, llvm::Type *a2, llvm::Value *a3, unsigned int a4, uint64_t a5, const llvm::Twine *a6)
{
  v14[2] = *MEMORY[0x277D85DE8];
  llvm::Type::getInt32Ty(this[8], a2);
  v14[0] = llvm::ConstantInt::get();
  llvm::Type::getInt32Ty(this[8], v10);
  v14[1] = llvm::ConstantInt::get();
  v11 = (*(*this[9] + 48))(this[9], a2, a3, v14, 2, 1);
  if (!v11)
  {
    v13[16] = 257;
    v11 = llvm::GetElementPtrInst::Create(a2, a3, v14, 2, v13);
    llvm::GetElementPtrInst::setIsInBounds(v11);
    llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v11, a5);
  }

  return v11;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileUserFragmentShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileUserFragmentShaderPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMUserFragmentShader>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x69)
  {
    v1 = v0;
  }

  else
  {
    v1 = 105;
  }

  v2 = &aStringrefLlvmG_44[v1];
  v3 = 105 - v1;
  if ((105 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 105 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileFragmentShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileFragmentShaderPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMFragmentShader>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
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

  v2 = &aStringrefLlvmG_42[v1];
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

uint64_t AGCLLVMFragmentShader::buildWriteFramebuffer(AGCLLVMStatelessFragmentObject *a1, llvm::Value *a2, unsigned int a3, int a4, llvm::Type **a5)
{
  v10 = llvm::ConstantInt::get();
  v11 = a1 + *(*a1 - 24);
  v12 = *(v11 + 271);
  v35 = *(v11 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v36, (v11 + 1712));
  v37 = *(v11 + 452);
  v13 = (*(*v12 + 208))(v12, &v35, v10);
  if (v36)
  {
    llvm::MetadataTracking::untrack();
  }

  std::string::basic_string[abi:nn200100]<0>(&v28, "case1_stateless_color_coverage_mask.");
  std::to_string(&v27, a3);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v27;
  }

  else
  {
    v14 = v27.__r_.__value_.__r.__words[0];
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v27.__r_.__value_.__l.__size_;
  }

  v16 = std::string::append(&v28, v14, size);
  v17 = v16->__r_.__value_.__r.__words[2];
  *__p = *&v16->__r_.__value_.__l.__data_;
  v30 = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v34 = 260;
  *&v31 = __p;
  llvm::Value::setName();
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if ((~*(*(a1 + 93) + 32) & 0x1FF000) != 0)
  {
    v18 = llvm::ConstantInt::get();
    v19 = *(a1 + 93);
    v20 = *(v19 + 4 * a3);
    if ((~v20 & 0xFF000) != 0)
    {
      v21 = llvm::ConstantInt::get();
      v19 = *(a1 + 93);
      v20 = *(v19 + 4 * a3);
    }

    else
    {
      v21 = 0;
    }

    LODWORD(v27.__r_.__value_.__l.__data_) = 0;
    v28.__r_.__value_.__s.__data_[0] = 0;
    v28.__r_.__value_.__s.__data_[4] = 0;
    v22 = (*(v19 + 32) >> 28) & 1;
    AGCLLVMBuilder::WriteFramebufferArgs::WriteFramebufferArgs(__p, (v19 + 32), v20);
    v31 = *__p;
    v32 = v30;
    v33 = 1;
    LOBYTE(v26) = 0;
    LOBYTE(v25) = v22;
    return AGCLLVMFragmentShader::buildWriteFramebuffer(a1, a2, 0, v13, 0, v18, v21, v10, v25, &v27, v26, &v28, 256, a3, &v31, a4, a5, 0);
  }

  else
  {
    v24 = std::__throw_bad_optional_access[abi:nn200100]();
  }
}

BOOL AGCLLVMGLFragmentShader::constructReply(AGCLLVMGLFragmentShader *this)
{
  v2 = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (v2)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMUserObject::constructFlatReply(this);
    v4 = AGCLLVMUserFragmentShader::constructFlatReply(this, *(this + 6429));
    v5 = this + *(*this - 24);
    v5[4358] = 1;
    v6 = *(v5 + 1082);
    v7 = *(v5 + 1080) - *(v5 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v5 + 4288), v3);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::FragmentShaderInfo>((v5 + 4288), v4);
    v8 = *(*this - 24);
    v9 = flatbuffers::FlatBufferBuilder::EndTable((v5 + 4288), v7 + v6);
    flatbuffers::FlatBufferBuilder::Finish((this + v8 + 4288), v9, v10);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
  }

  return v2;
}

void AGCLLVMGLFragmentShader::getCompilationKeyDescription(AGCLLVMGLFragmentShader *this@<X0>, std::string *a2@<X8>)
{
  v99 = *MEMORY[0x277D85DE8];
  v4 = *(this + 802);
  std::string::basic_string[abi:nn200100]<0>(v55, "AGCFragmentContextStateGL");
  std::string::basic_string[abi:nn200100]<0>(&v60, "AGCFragmentContextState");
  std::string::basic_string[abi:nn200100]<0>(v58, "fragmentState");
  std::string::basic_string[abi:nn200100]<0>(&v96, "AGCFragmentState");
  std::string::basic_string[abi:nn200100]<0>(&v85, "GL and Metal state:");
  std::string::basic_string[abi:nn200100]<0>(&v83, "alphaToCoverage");
  _agcFieldString<unsigned int>(&v86, &v83.__r_.__value_.__l.__data_, *v4 & 1);
  std::string::basic_string[abi:nn200100]<0>(v81, "alphaToOne");
  _agcFieldString<unsigned int>(&v87, v81, (*v4 >> 1) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v80, "sampleCoverage");
  _agcFieldString<unsigned int>(&v88, &v80.__r_.__value_.__l.__data_, (*v4 >> 2) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v78, "sampleCoverageInvert");
  _agcFieldString<unsigned int>(&v89, &v78, (*v4 >> 3) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v90, "GL specific state:");
  std::string::basic_string[abi:nn200100]<0>(&v77, "depthStencilWriteDisabled");
  _agcFieldString<unsigned int>(&v91, &v77.__r_.__value_.__l.__data_, (*v4 >> 4) & 1);
  std::string::basic_string[abi:nn200100]<0>(v75, "logicOp");
  _agcFieldString<unsigned int>(v92, v75, (*v4 >> 5) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v74, "logicOpState");
  _agcFieldString<char const*>(&v92[1], &v74.__r_.__value_.__l.__data_, _agcLogicOpStrings[(*v4 >> 6) & 0x1F]);
  std::string::basic_string[abi:nn200100]<0>(&v73, "alphaTest");
  _agcFieldString<unsigned int>(&v92[2], &v73.__r_.__value_.__l.__data_, (*v4 >> 11) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v72, "alphaTestFunc");
  _agcFieldString<char const*>(&v92[3], &v72.__r_.__value_.__l.__data_, _agcCompareFuncStrings[*v4 >> 12]);
  std::string::basic_string[abi:nn200100]<0>(v70, "smoothPoints");
  _agcFieldString<unsigned int>(&v92[4], v70, HIWORD(*v4) & 1);
  std::string::basic_string[abi:nn200100]<0>(&v69, "pointSpriteEnabled");
  _agcFieldString<unsigned int>(&v92[5], &v69.__r_.__value_.__l.__data_, (*v4 >> 17) & 1);
  std::string::basic_string[abi:nn200100]<0>(v67, "outputPointSize");
  _agcFieldString<unsigned int>(&v92[6], v67, (*v4 >> 18) & 1);
  std::string::basic_string[abi:nn200100]<0>(v65, "shaderDebugEnable");
  _agcFieldString<unsigned int>(&v92[7], v65, (*v4 >> 19) & 1);
  std::string::basic_string[abi:nn200100]<0>(v93, "MTL specific state:");
  std::string::basic_string[abi:nn200100]<0>(v63, "pridAllocationStrategy");
  _agcFieldString<char const*>(&v94, v63, _agcPRIDAllocationStrategyStrings[(*v4 >> 20) & 7]);
  std::string::basic_string[abi:nn200100]<0>(__p, "unused");
  _agcFieldString<unsigned int>(&v95, __p, *v4 >> 23);
  _agcGroupWithHeader(&v57, &v96, 0, &v85, 18);
  v5 = 432;
  do
  {
    if (v85.__r_.__value_.__s.__data_[v5 - 1] < 0)
    {
      operator delete(*(&v84.__r_.__value_.__l.__data_ + v5));
    }

    v5 -= 24;
  }

  while (v5);
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  if (v66 < 0)
  {
    operator delete(v65[0]);
  }

  if (v68 < 0)
  {
    operator delete(v67[0]);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (v71 < 0)
  {
    operator delete(v70[0]);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (v76 < 0)
  {
    operator delete(v75[0]);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v79) < 0)
  {
    operator delete(v78);
  }

  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  if (v82 < 0)
  {
    operator delete(v81[0]);
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v96.__r_.__value_.__l.__data_);
  }

  _agcFieldString<std::string>(&v96, v58, &v57);
  std::string::basic_string[abi:nn200100]<0>(&v74, "colorMaskState");
  std::string::basic_string[abi:nn200100]<0>(&v83, "AGCColorMaskState");
  std::string::basic_string[abi:nn200100]<0>(v81, "redEnableBits");
  _agcFieldStringHex(&v85, v81, *(v4 + 8));
  std::string::basic_string[abi:nn200100]<0>(&v80, "greenEnableBits");
  _agcFieldStringHex(&v86, &v80.__r_.__value_.__l.__data_, *(v4 + 9));
  std::string::basic_string[abi:nn200100]<0>(&v78, "blueEnableBits");
  _agcFieldStringHex(&v87, &v78, *(v4 + 10));
  std::string::basic_string[abi:nn200100]<0>(&v77, "alphaEnableBits");
  _agcFieldStringHex(&v88, &v77.__r_.__value_.__l.__data_, *(v4 + 11));
  std::string::basic_string[abi:nn200100]<0>(v75, "unknownMaskBits");
  _agcFieldStringHex(&v89, v75, *(v4 + 12));
  _agcGroupWithHeader(&v73, &v83, 0, &v85, 5);
  for (i = 0; i != -15; i -= 3)
  {
    if (SHIBYTE(v89.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v89.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v76 < 0)
  {
    operator delete(v75[0]);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v79) < 0)
  {
    operator delete(v78);
  }

  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  if (v82 < 0)
  {
    operator delete(v81[0]);
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  _agcFieldString<std::string>(&v97, &v74.__r_.__value_.__l.__data_, &v73);
  _agcGroupWithHeader(&v83, &v60, 0, &v96, 2);
  for (j = 0; j != -6; j -= 3)
  {
    if (SHIBYTE(v97.__r_.__value_.__r.__words[j + 2]) < 0)
    {
      operator delete(*(&v96 + j * 8 + 24));
    }
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(v70, "blendState");
  std::string::basic_string[abi:nn200100]<0>(&v96, "AGCBlendState");
  std::string::basic_string[abi:nn200100]<0>(v81, "enabled");
  if (v4[4])
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  _agcFieldString<char const*>(&v85, v81, v8);
  std::string::basic_string[abi:nn200100]<0>(&v80, "src");
  _agcFieldString<char const*>(&v86, &v80.__r_.__value_.__l.__data_, _agcBlendFactorStrings[(v4[4] >> 1) & 0x1F]);
  std::string::basic_string[abi:nn200100]<0>(&v78, "dst");
  _agcFieldString<char const*>(&v87, &v78, _agcBlendFactorStrings[(v4[4] >> 6) & 0x1F]);
  std::string::basic_string[abi:nn200100]<0>(&v77, "srcA");
  _agcFieldString<char const*>(&v88, &v77.__r_.__value_.__l.__data_, _agcBlendFactorStrings[v4[4] >> 11]);
  std::string::basic_string[abi:nn200100]<0>(v75, "dstA");
  _agcFieldString<char const*>(&v89, v75, _agcBlendFactorStrings[*(v4 + 9) & 0x1F]);
  std::string::basic_string[abi:nn200100]<0>(&v74, "equation");
  _agcFieldString<char const*>(&v90, &v74.__r_.__value_.__l.__data_, _agcBlendEquationStrings[(v4[4] >> 21) & 7]);
  std::string::basic_string[abi:nn200100]<0>(&v73, "equationA");
  _agcFieldString<char const*>(&v91, &v73.__r_.__value_.__l.__data_, _agcBlendEquationStrings[*(v4 + 19) & 7]);
  std::string::basic_string[abi:nn200100]<0>(&v72, "unknown");
  if ((v4[4] & 0x8000000) != 0)
  {
    v9 = "yes";
  }

  else
  {
    v9 = "no";
  }

  _agcFieldString<char const*>(v92, &v72.__r_.__value_.__l.__data_, v9);
  _agcGroupWithHeader(&v69, &v96, 0, &v85, 8);
  for (k = 0; k != 0x1FFFFFFFFFFFFFE8; k -= 3)
  {
    if (SHIBYTE(v92[0].__r_.__value_.__r.__words[k + 2]) < 0)
    {
      operator delete(v92[k / 3].__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (v76 < 0)
  {
    operator delete(v75[0]);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v79) < 0)
  {
    operator delete(v78);
  }

  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  if (v82 < 0)
  {
    operator delete(v81[0]);
  }

  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v96.__r_.__value_.__l.__data_);
  }

  _agcFieldString<std::string>(&v84, v70, &v69);
  _agcGroupWithHeader(&v45, v55, 0, &v83, 2);
  for (m = 0; m != -6; m -= 3)
  {
    if (SHIBYTE(v84.__r_.__value_.__r.__words[m + 2]) < 0)
    {
      operator delete(*(&v83 + m * 8 + 24));
    }
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (v71 < 0)
  {
    operator delete(v70[0]);
  }

  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  v12 = *(this + 660);
  std::string::basic_string[abi:nn200100]<0>(&v73, "AGCDrawBufferState");
  std::string::basic_string[abi:nn200100]<0>(&v83, "AGCDrawBufferStateInternal");
  std::string::basic_string[abi:nn200100]<0>(v81, "enabledBits");
  _agcFieldStringHex(&v85, v81, *(v12 + 32));
  std::string::basic_string[abi:nn200100]<0>(&v80, "sampleCount");
  _agcFieldString<unsigned char>(&v86, &v80.__r_.__value_.__l.__data_, 1 << (BYTE1(*(v12 + 32)) & 3));
  std::string::basic_string[abi:nn200100]<0>(&v78, "colorSampleCount");
  _agcFieldString<unsigned char>(&v87, &v78, 1 << ((*(v12 + 32) >> 10) & 3));
  v13 = *(v12 + 32) & 0x1FF000;
  if (v13 == 2093056)
  {
    std::string::basic_string[abi:nn200100]<0>(&v69, "outputPartitionSize");
    std::string::basic_string[abi:nn200100]<0>(v67, "unknown");
    _agcFieldString<std::string>(&v88, &v69.__r_.__value_.__l.__data_, v67);
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(v70, "outputPartitionSize");
    v14 = *(v12 + 32);
    if ((~v14 & 0x1FF000) == 0)
    {
      goto LABEL_289;
    }

    _agcFieldString<unsigned short>(&v88, v70, (v14 >> 12) & 0x1FF);
  }

  v15 = *(v12 + 32);
  if ((v15 & 0x400000) != 0)
  {
    std::string::basic_string[abi:nn200100]<0>(v65, "LIBSpilling");
    v16 = *(v12 + 32);
    if ((v16 & 0x400000) != 0)
    {
      _agcFieldString<unsigned char>(&v89, v65, (v16 & 0x200000) != 0);
      goto LABEL_113;
    }

LABEL_289:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  std::string::basic_string[abi:nn200100]<0>(v63, "LIBSpilling");
  std::string::basic_string[abi:nn200100]<0>(__p, "unknown");
  _agcFieldString<std::string>(&v89, v63, __p);
LABEL_113:
  std::string::basic_string[abi:nn200100]<0>(&v77, "forceSoftwareEmulatedRaytracing");
  _agcFieldString<unsigned char>(&v90, &v77.__r_.__value_.__l.__data_, (*(v12 + 32) & 0x800000) != 0);
  std::string::basic_string[abi:nn200100]<0>(v75, "maxSlabIndex");
  _agcFieldString<unsigned char>(&v91, v75, *(v12 + 35) & 0xF);
  std::string::basic_string[abi:nn200100]<0>(&v74, "useSlabs");
  _agcFieldString<unsigned char>(v92, &v74.__r_.__value_.__l.__data_, (*(v12 + 32) & 0x10000000) != 0);
  _agcGroupWithHeader(&v96, &v83, 0, &v85, 8);
  for (n = 0; n != 0x1FFFFFFFFFFFFFE8; n -= 3)
  {
    if (SHIBYTE(v92[0].__r_.__value_.__r.__words[n + 2]) < 0)
    {
      operator delete(v92[n / 3].__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (v76 < 0)
  {
    operator delete(v75[0]);
  }

  if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v15 & 0x400000) == 0)
    {
      goto LABEL_123;
    }

LABEL_128:
    if ((v66 & 0x80000000) == 0)
    {
      goto LABEL_131;
    }

    v18 = v65[0];
    goto LABEL_130;
  }

  operator delete(v77.__r_.__value_.__l.__data_);
  if ((v15 & 0x400000) != 0)
  {
    goto LABEL_128;
  }

LABEL_123:
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  if (v64 < 0)
  {
    v18 = v63[0];
LABEL_130:
    operator delete(v18);
  }

LABEL_131:
  if (v13 != 2093056)
  {
    if ((v71 & 0x80000000) == 0)
    {
      goto LABEL_139;
    }

    v19 = v70[0];
    goto LABEL_138;
  }

  if (v68 < 0)
  {
    operator delete(v67[0]);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    v19 = v69.__r_.__value_.__r.__words[0];
LABEL_138:
    operator delete(v19);
  }

LABEL_139:
  if (SHIBYTE(v79) < 0)
  {
    operator delete(v78);
  }

  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  if (v82 < 0)
  {
    operator delete(v81[0]);
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&v83, "encoded : ");
  std::string::basic_string[abi:nn200100]<0>(v81, "encoded[0]");
  _agcStringRepresentation(&v80, v12);
  _agcFieldString<std::string>(&v85, v81, &v80);
  std::string::basic_string[abi:nn200100]<0>(&v78, "encoded[1]");
  _agcStringRepresentation(&v77, (v12 + 4));
  _agcFieldString<std::string>(&v86, &v78, &v77);
  std::string::basic_string[abi:nn200100]<0>(v75, "encoded[2]");
  _agcStringRepresentation(&v74, (v12 + 8));
  _agcFieldString<std::string>(&v87, v75, &v74);
  std::string::basic_string[abi:nn200100]<0>(&v72, "encoded[3]");
  _agcStringRepresentation(&v60, (v12 + 12));
  _agcFieldString<std::string>(&v88, &v72.__r_.__value_.__l.__data_, &v60);
  std::string::basic_string[abi:nn200100]<0>(v58, "encoded[4]");
  _agcStringRepresentation(&v57, (v12 + 16));
  _agcFieldString<std::string>(&v89, v58, &v57);
  std::string::basic_string[abi:nn200100]<0>(v55, "encoded[5]");
  _agcStringRepresentation(&v54, (v12 + 20));
  _agcFieldString<std::string>(&v90, v55, &v54);
  std::string::basic_string[abi:nn200100]<0>(v52, "encoded[6]");
  _agcStringRepresentation(&v51, (v12 + 24));
  _agcFieldString<std::string>(&v91, v52, &v51);
  std::string::basic_string[abi:nn200100]<0>(v49, "encoded[7]");
  _agcStringRepresentation(&v48, (v12 + 28));
  _agcFieldString<std::string>(v92, v49, &v48);
  _agcGroupWithHeader(&v97, &v83, 0, &v85, 8);
  std::string::basic_string[abi:nn200100]<0>(v46, "_unused");
  _agcFieldString<unsigned int>(&v98, v46, *(v12 + 36));
  _agcGroupWithHeader(&v44, &v73, 0, &v96, 3);
  for (ii = 0; ii != -9; ii -= 3)
  {
    if (SHIBYTE(v98.__r_.__value_.__r.__words[ii + 2]) < 0)
    {
      operator delete(*(&v98.__r_.__value_.__l.__data_ + ii * 8));
    }
  }

  if (v47 < 0)
  {
    operator delete(v46[0]);
  }

  for (jj = 0; jj != 0x1FFFFFFFFFFFFFE8; jj -= 3)
  {
    if (SHIBYTE(v92[0].__r_.__value_.__r.__words[jj + 2]) < 0)
    {
      operator delete(v92[jj / 3].__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (v76 < 0)
  {
    operator delete(v75[0]);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v79) < 0)
  {
    operator delete(v78);
  }

  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  if (v82 < 0)
  {
    operator delete(v81[0]);
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  v22 = *(this + 812);
  std::string::basic_string[abi:nn200100]<0>(&v96, &unk_20E75F419);
  for (kk = 1; kk != 33; ++kk)
  {
    std::to_string(&v83, v22[kk]);
    v24 = std::string::append(&v83, " ");
    v25 = v24->__r_.__value_.__r.__words[2];
    *&v85.__r_.__value_.__l.__data_ = *&v24->__r_.__value_.__l.__data_;
    v85.__r_.__value_.__r.__words[2] = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v85;
    }

    else
    {
      v26 = v85.__r_.__value_.__r.__words[0];
    }

    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v85.__r_.__value_.__l.__size_;
    }

    std::string::append(&v96, v26, size);
    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(&v83, "AGCSamplerRemapStateGL");
  std::string::basic_string[abi:nn200100]<0>(v81, "samplerCount");
  _agcFieldString<unsigned int>(&v85, v81, *v22);
  std::string::basic_string[abi:nn200100]<0>(&v80, "samplerToTexUnitMap");
  std::operator+<char>();
  v28 = std::string::append(&v77, "]");
  v29 = v28->__r_.__value_.__r.__words[2];
  v78 = *&v28->__r_.__value_.__l.__data_;
  v79 = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  _agcFieldString<std::string>(&v86, &v80.__r_.__value_.__l.__data_, &v78);
  _agcGroupWithHeader(&v60, &v83, 0, &v85, 2);
  for (mm = 0; mm != -6; mm -= 3)
  {
    if (SHIBYTE(v86.__r_.__value_.__r.__words[mm + 2]) < 0)
    {
      operator delete(*(&v85 + mm * 8 + 24));
    }
  }

  if (SHIBYTE(v79) < 0)
  {
    operator delete(v78);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  if (v82 < 0)
  {
    operator delete(v81[0]);
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v96.__r_.__value_.__l.__data_);
  }

  v31 = *(this + 810);
  if (v31)
  {
    std::string::basic_string[abi:nn200100]<0>(&v73, &unk_20E75F419);
    for (nn = 0; nn != 32; ++nn)
    {
      std::string::basic_string[abi:nn200100]<0>(&v96, "AGCSamplerPCFState");
      std::string::basic_string[abi:nn200100]<0>(&v83, "compareFunc");
      _agcFieldString<char const*>(&v85, &v83.__r_.__value_.__l.__data_, _agcCompareFuncStrings[*(v31 + 2 * nn) & 0xF]);
      std::string::basic_string[abi:nn200100]<0>(v81, "clampPCFEnabled");
      _agcFieldString<unsigned short>(&v86, v81, (*(v31 + 2 * nn) >> 4) & 1);
      std::string::basic_string[abi:nn200100]<0>(&v80, "mipmapMinFilterEnabled");
      _agcFieldString<unsigned short>(&v87, &v80.__r_.__value_.__l.__data_, (*(v31 + 2 * nn) >> 5) & 1);
      std::string::basic_string[abi:nn200100]<0>(&v78, "trilinearMinFilterEnabled");
      _agcFieldString<unsigned short>(&v88, &v78, (*(v31 + 2 * nn) >> 6) & 1);
      std::string::basic_string[abi:nn200100]<0>(&v77, "linearMinFilterEnabled");
      _agcFieldString<unsigned short>(&v89, &v77.__r_.__value_.__l.__data_, (*(v31 + 2 * nn) >> 7) & 1);
      std::string::basic_string[abi:nn200100]<0>(v75, "linearMagFilterEnabled");
      _agcFieldString<unsigned short>(&v90, v75, HIBYTE(*(v31 + 2 * nn)) & 1);
      std::string::basic_string[abi:nn200100]<0>(&v74, "unused");
      _agcFieldString<unsigned short>(&v91, &v74.__r_.__value_.__l.__data_, *(v31 + 2 * nn) >> 9);
      _agcGroupWithHeader(&v72, &v96, 1, &v85, 7);
      for (i1 = 0; i1 != -21; i1 -= 3)
      {
        if (SHIBYTE(v91.__r_.__value_.__r.__words[i1 + 2]) < 0)
        {
          operator delete(*(&v91.__r_.__value_.__l.__data_ + i1 * 8));
        }
      }

      if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v74.__r_.__value_.__l.__data_);
      }

      if (v76 < 0)
      {
        operator delete(v75[0]);
      }

      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v77.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v79) < 0)
      {
        operator delete(v78);
      }

      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v80.__r_.__value_.__l.__data_);
      }

      if (v82 < 0)
      {
        operator delete(v81[0]);
      }

      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }

      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &v72;
      }

      else
      {
        v34 = v72.__r_.__value_.__r.__words[0];
      }

      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v35 = v72.__r_.__value_.__l.__size_;
      }

      std::string::append(&v73, v34, v35);
      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }
    }

    std::string::basic_string[abi:nn200100]<0>(&v96, "AGCSamplerPCFStates");
    std::string::basic_string[abi:nn200100]<0>(&v85, "pcf : ");
    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v86, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
    }

    else
    {
      v86 = v73;
    }

    _agcGroupWithHeader(&v83, &v96, 0, &v85, 2);
    for (i2 = 0; i2 != -6; i2 -= 3)
    {
      if (SHIBYTE(v86.__r_.__value_.__r.__words[i2 + 2]) < 0)
      {
        operator delete(*(&v85 + i2 * 8 + 24));
      }
    }

    if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v96.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(&v83, &unk_20E75F419);
  }

  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v96, &v45.__r_.__value_.__l.__data_, &v44.__r_.__value_.__l.__data_);
  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = &v60;
  }

  else
  {
    v37 = v60.__r_.__value_.__r.__words[0];
  }

  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v38 = v60.__r_.__value_.__l.__size_;
  }

  v39 = std::string::append(&v96, v37, v38);
  v40 = v39->__r_.__value_.__r.__words[2];
  *&v85.__r_.__value_.__l.__data_ = *&v39->__r_.__value_.__l.__data_;
  v85.__r_.__value_.__r.__words[2] = v40;
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = &v83;
  }

  else
  {
    v41 = v83.__r_.__value_.__r.__words[0];
  }

  if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v42 = v83.__r_.__value_.__l.__size_;
  }

  v43 = std::string::append(&v85, v41, v42);
  *a2 = *v43;
  v43->__r_.__value_.__r.__words[0] = 0;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v96.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }
}

void _agcGroupWithHeader(std::string *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *a2, *(a2 + 8));
  }

  else
  {
    v28 = *a2;
  }

  _agcIndentedLine(&v29, &v28, a3);
  std::string::basic_string[abi:nn200100]<0>(v23, "{");
  _agcIndentedLine(&__p, v23, a3);
  if ((v27 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v27 & 0x80u) == 0)
  {
    v10 = v27;
  }

  else
  {
    v10 = v26;
  }

  v11 = std::string::append(&v29, p_p, v10);
  v12 = v11->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (a5)
  {
    for (i = 24 * a5; i; i -= 24)
    {
      if (*(a4 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v29, *a4, *(a4 + 8));
      }

      else
      {
        v29 = *a4;
      }

      v14 = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v22, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
      }

      else
      {
        v22 = v29;
      }

      _agcIndentedLine(&__p, &v22, a3 + 1);
      if ((v27 & 0x80u) == 0)
      {
        v15 = &__p;
      }

      else
      {
        v15 = __p;
      }

      if ((v27 & 0x80u) == 0)
      {
        v16 = v27;
      }

      else
      {
        v16 = v26;
      }

      std::string::append(&v30, v15, v16);
      if (v27 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
        if (v14 < 0)
        {
LABEL_39:
          operator delete(v29.__r_.__value_.__l.__data_);
        }
      }

      else if (v14 < 0)
      {
        goto LABEL_39;
      }

      a4 += 24;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v20, "}");
  _agcIndentedLine(&v29, v20, a3);
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v30;
  }

  else
  {
    v17 = v30.__r_.__value_.__r.__words[0];
  }

  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v30.__r_.__value_.__l.__size_;
  }

  v19 = std::string::insert(&v29, 0, v17, size);
  *a1 = *v19;
  v19->__r_.__value_.__r.__words[0] = 0;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }
}

void _agcFieldString<unsigned short>(std::string *a1, const void **a2, unsigned __int16 a3)
{
  std::to_string(&v5, a3);
  _agcFieldString<std::string>(a1, a2, &v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void virtual thunk toAGCLLVMGLFragmentShader::~AGCLLVMGLFragmentShader(AGCLLVMGLFragmentShader *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_2825A0418;
  v1[817] = &unk_2825A07F0;
  v1[1030] = &unk_2825A0900;
  v1[567] = &unk_2825A06B8;
  v2 = v1[815];
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v1 + 813));
  }

  AGCLLVMUserFragmentShader::~AGCLLVMUserFragmentShader(v1, off_2825A0910);
  AGCLLVMObject::~AGCLLVMObject((v1 + 817));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_2825A0418;
  v1[817] = &unk_2825A07F0;
  v1[1030] = &unk_2825A0900;
  v1[567] = &unk_2825A06B8;
  v2 = v1[815];
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v1 + 813));
  }

  AGCLLVMUserFragmentShader::~AGCLLVMUserFragmentShader(v1, off_2825A0910);

  AGCLLVMObject::~AGCLLVMObject((v1 + 817));
}

void non-virtual thunk toAGCLLVMGLFragmentShader::~AGCLLVMGLFragmentShader(AGCLLVMGLFragmentShader *this)
{
  v1 = (this - 4536);
  *(this - 567) = &unk_2825A0418;
  v2 = (this + 2000);
  *(this + 250) = &unk_2825A07F0;
  *(this + 463) = &unk_2825A0900;
  *this = &unk_2825A06B8;
  v3 = *(this + 248);
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 1968));
  }

  AGCLLVMUserFragmentShader::~AGCLLVMUserFragmentShader(v1, off_2825A0910);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this - 4536);
  *(this - 567) = &unk_2825A0418;
  v2 = (this + 2000);
  *(this + 250) = &unk_2825A07F0;
  *(this + 463) = &unk_2825A0900;
  *this = &unk_2825A06B8;
  v3 = *(this + 248);
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 1968));
  }

  AGCLLVMUserFragmentShader::~AGCLLVMUserFragmentShader(v1, off_2825A0910);

  AGCLLVMObject::~AGCLLVMObject(v2);
}

uint64_t AGCLLVMGLFragmentShader::adjustFragCoordY(AGCLLVMGLFragmentShader *this, llvm::Value *a2)
{
  FragCoordYAdjustAndType = AGCLLVMGLFragmentShader::getFragCoordYAdjustAndType(this);
  v6 = v5;
  ConstInBoundsGEP2_32 = AGCLLVMBuilder::CreateConstInBoundsGEP2_32((this + *(*this - 24) + 1704), v5, FragCoordYAdjustAndType, 0);
  v8 = AGCLLVMBuilder::CreateConstInBoundsGEP2_32((this + *(*this - 24) + 1704), v6, FragCoordYAdjustAndType, 1u);
  v9 = this + *(*this - 24);
  v18 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v9 + 1704), ConstInBoundsGEP2_32, v17);
  v11 = this + *(*this - 24);
  v18 = 257;
  v12 = AGCLLVMBuilder::CreateLoad((v11 + 1704), v8, v17);
  v13 = this + *(*this - 24);
  v18 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul((v13 + 1712), a2, Load, v17);
  v16[16] = 257;
  return llvm::IRBuilderBase::CreateFAdd((v13 + 1712), FMul, v12, v16);
}

uint64_t AGCLLVMGLFragmentShader::getFragCoordYAdjustAndType(AGCLLVMGLFragmentShader *this)
{
  v14 = *MEMORY[0x277D85DE8];
  v10[0] = *(this + *(*this - 24) + 1872);
  v10[1] = v10[0];
  v2 = llvm::StructType::get();
  if (!*(this + 815))
  {
    v3 = llvm::User::operator new(0x58);
    v10[0] = "agc.frag_coord_y_adjust";
    v13 = 259;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    v4 = this + *(*this - 24);
    v5 = *(v4 + 268);
    v6 = AGCLLVMBuilder::buildGlobalMetadata(v4 + 213, v3, 0x1Au, 0);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v5, v6);
    llvm::ValueHandleBase::operator=((this + 6504), v3);
  }

  llvm::ValueHandleBase::ValueHandleBase(v10, 2u, this + 813);
  v12 = v2;
  v7 = v11;
  if (v11 != -8192 && v11 != -4096 && v11 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v10);
  }

  return v7;
}

uint64_t *AGCLLVMGLFragmentShader::getBarycentricCoordVarying@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *a1 = 0u;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0x500000000;
  *(a1 + 48) = a1 + 64;
  return llvm::SmallVectorImpl<unsigned int>::assign((a1 + 48), 5uLL, -559038737);
}

uint64_t *AGCLLVMGLFragmentShader::getPrimitiveIdVarying@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *a1 = 0u;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0x500000000;
  *(a1 + 48) = a1 + 64;
  return llvm::SmallVectorImpl<unsigned int>::assign((a1 + 48), 5uLL, -559038737);
}

uint64_t *AGCLLVMGLFragmentShader::getFragmentViewportOrLayerIdVarying@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *a1 = 0u;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 56) = 0x500000000;
  *(a1 + 48) = a1 + 64;
  return llvm::SmallVectorImpl<unsigned int>::assign((a1 + 48), 5uLL, -559038737);
}

void AGCLLVMGLFragmentShader::getFragmentVaryings(AGCLLVMBuilder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v49[3] = *MEMORY[0x277D85DE8];
  *a4 = a4 + 2;
  a4[1] = 0x400000000;
  AGCLLVMBuilder::getVariableTypeMap(a1);
  AGCLLVMUserShader::getVaryingModeMap(v8);
  AGCLLVMUserShader::getInterpolationLocationMap(v9);
  if ((*(a2 + 8) & 0xFE) == 0x12)
  {
    v10 = *(a2 + 32);
  }

  else
  {
    v10 = 1;
  }

  v43 = 0;
  LODWORD(v44) = 3;
  parseMDInt(0, a3, &v44, &v43);
  v11 = a3 - 8 * *(a3 + 8);
  v12 = *(v11 + 32);
  if (v12)
  {
    if (*v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v11 + 32);
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v11 + 40);
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

  String = llvm::MDString::getString(v13);
  v18 = v17;
  v19 = llvm::MDString::getString(v15);
  v21 = v20;
  __p[0] = 0;
  __p[1] = 0;
  v42 = 0;
  v33 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 1;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v32 = MEMORY[0x277D821F8] + 16;
  v40 = __p;
  llvm::raw_ostream::SetUnbuffered(&v32);
  if ((*(a2 + 8) & 0xFE) == 0x12)
  {
    a2 = **(a2 + 16);
  }

  llvm::Type::print(a2, &v32);
  v22 = *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserShader::getInterpolationLocationMap(void)::interpolation_location_map, v19, v21) + 8);
  v23 = *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserShader::getVaryingModeMap(void)::varying_mode_map, String, v18) + 8);
  if (v23 == 1)
  {
    v22 = 3;
  }

  v44 = 0uLL;
  v45 = 0;
  v46 = 0;
  v47 = 0uLL;
  v48[0] = v49;
  v48[1] = 0x500000000;
  llvm::SmallVectorImpl<unsigned int>::assign(v48, 5uLL, -559038737);
  *&v44 = __PAIR64__(v23, v10);
  DWORD2(v44) = v22;
  Key = llvm::StringMapImpl::FindKey();
  v25 = 10;
  if (Key != -1 && Key != dword_28117E4D0)
  {
    v25 = *(*(AGCLLVMBuilder::getVariableTypeMap(void)::variable_type_map + 8 * Key) + 8);
  }

  HIDWORD(v44) = v25;
  v45 = v43;
  *&v47 = AGCLLVMUserFragmentShader::setupInterpolation(a1, 1u, v43, v44);
  *(&v47 + 1) = v26;
  llvm::raw_ostream::~raw_ostream(&v32);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
  }

  v27 = llvm::SmallVectorTemplateCommon<AGCLLVMUserFragmentShader::FragmentVarying,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<AGCLLVMUserFragmentShader::FragmentVarying,false>>(a4, &v44);
  v28 = *a4 + 88 * *(a4 + 2);
  v29 = *v27;
  v30 = *(v27 + 32);
  *(v28 + 16) = *(v27 + 16);
  *(v28 + 32) = v30;
  *v28 = v29;
  *(v28 + 56) = 0x500000000;
  *(v28 + 48) = v28 + 64;
  v31 = v28 + 48;
  if (*(v27 + 56))
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(v31, v27 + 48);
  }

  ++*(a4 + 2);
  if (v48[0] != v49)
  {
    free(v48[0]);
  }
}

uint64_t llvm::StringMap<ComponentType,llvm::MallocAllocator>::~StringMap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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

uint64_t AGCLLVMGLFragmentShader::getTextureBiasStateForUnit(AGCLLVMGLFragmentShader *this, unsigned int a2)
{
  v2 = *(this + 811);
  if (v2)
  {
    return *(v2 + a2);
  }

  else
  {
    return 0;
  }
}

uint64_t AGCLLVMGLFragmentShader::getPCFStateForUnit(AGCLLVMGLFragmentShader *this, unsigned int a2)
{
  v2 = *(this + 810);
  if (v2)
  {
    return *(v2 + 2 * a2);
  }

  else
  {
    return 0;
  }
}

uint64_t AGCLLVMGLFragmentShader::remapTexSampUnit(AGCLLVMGLFragmentShader *this, uint64_t a2)
{
  v2 = *(this + 812);
  if (*v2 > a2)
  {
    return v2[a2 + 1];
  }

  return a2;
}

char *llvm::PassInfoMixin<InitCompileGLFragmentShaderPass>::name()
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

  v2 = &aStringrefLlvmG_46[v1];
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileGLFragmentShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileGLFragmentShaderPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

uint64_t AGCLLVMGLFragmentShader::adjustDfDyForInversion(AGCLLVMGLFragmentShader *this, llvm::Type **a2)
{
  FragCoordYAdjustAndType = AGCLLVMGLFragmentShader::getFragCoordYAdjustAndType(this);
  ConstInBoundsGEP2_32 = AGCLLVMBuilder::CreateConstInBoundsGEP2_32((this + *(*this - 24) + 1704), v5, FragCoordYAdjustAndType, 0);
  v7 = this + *(*this - 24);
  v15 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v7 + 1704), ConstInBoundsGEP2_32, v14);
  v9 = this + *(*this - 24);
  v10 = *a2;
  v15 = 257;
  FPTrunc = llvm::IRBuilderBase::CreateFPTrunc((v9 + 1712), Load, v10, v14);
  v12 = this + *(*this - 24);
  v15 = 257;
  return llvm::IRBuilderBase::CreateFMul((v12 + 1712), a2, FPTrunc, v14);
}

void AGCLLVMGLFragmentShader::~AGCLLVMGLFragmentShader(AGCLLVMGLFragmentShader *this)
{
  *this = &unk_2825A0418;
  v2 = (this + 6536);
  *(this + 817) = &unk_2825A07F0;
  *(this + 1030) = &unk_2825A0900;
  *(this + 567) = &unk_2825A06B8;
  v3 = *(this + 815);
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6504));
  }

  AGCLLVMUserFragmentShader::~AGCLLVMUserFragmentShader(this, off_2825A0910);
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825A0418;
  v2 = (this + 6536);
  *(this + 817) = &unk_2825A07F0;
  *(this + 1030) = &unk_2825A0900;
  *(this + 567) = &unk_2825A06B8;
  v3 = *(this + 815);
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 6504));
  }

  AGCLLVMUserFragmentShader::~AGCLLVMUserFragmentShader(this, off_2825A0910);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

BOOL AGCLLVMGLVertexShader::constructReply(AGCLLVMGLVertexShader *this)
{
  v2 = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (v2)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMUserObject::constructFlatReply(this);
    v4 = AGCLLVMUserVertexShader::constructFlatReply(this);
    v5 = this + *(*this - 24);
    v5[4358] = 1;
    v6 = *(v5 + 1082);
    v7 = *(v5 + 1080) - *(v5 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v5 + 4288), v3);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>((v5 + 4288), v4);
    v8 = *(*this - 24);
    v9 = flatbuffers::FlatBufferBuilder::EndTable((v5 + 4288), v7 + v6);
    flatbuffers::FlatBufferBuilder::Finish((this + v8 + 4288), v9, v10);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
  }

  return v2;
}

void AGCLLVMGLVertexShader::getCompilationKeyDescription(AGCLLVMGLVertexShader *this@<X0>, std::string *a2@<X8>)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1251);
  std::string::basic_string[abi:nn200100]<0>(v34, "AGCVertexContextStateGL");
  std::string::basic_string[abi:nn200100]<0>(v32, "vertexUnpackState");
  std::string::basic_string[abi:nn200100]<0>(&v37, &unk_20E75F419);
  if (*(v2 + 80))
  {
    v3 = 0;
    do
    {
      v4 = (v2 + 4 * v3);
      std::string::basic_string[abi:nn200100]<0>(&v47, "AGCVertexElement");
      std::string::basic_string[abi:nn200100]<0>(&v46, "code");
      _agcFieldString<unsigned int>(&v49, &v46.__r_.__value_.__l.__data_, *v4);
      std::string::basic_string[abi:nn200100]<0>(v44, "components");
      _agcFieldString<unsigned int>(&v50, v44, v4[1]);
      std::string::basic_string[abi:nn200100]<0>(v42, "type");
      _agcFieldString<char const*>(&v51, v42, _agcVertexElementTypeStrings[v4[2]]);
      std::string::basic_string[abi:nn200100]<0>(v40, "normalized");
      _agcFieldString<unsigned int>(&v52, v40, HIBYTE(*v4) & 1);
      std::string::basic_string[abi:nn200100]<0>(&v39, "bgraSwizzle");
      _agcFieldString<unsigned int>(&v53, &v39.__r_.__value_.__l.__data_, (*v4 >> 25) & 1);
      std::string::basic_string[abi:nn200100]<0>(&__p, "unused");
      _agcFieldString<unsigned int>(v54, &__p.__r_.__value_.__l.__data_, *v4 >> 26);
      _agcGroupWithHeader(&v36, &v47, 0, &v49, 6);
      for (i = 0; i != 0x1FFFFFFFFFFFFFEELL; i -= 3)
      {
        if (SHIBYTE(v54[0].__r_.__value_.__r.__words[i + 2]) < 0)
        {
          operator delete(v54[i / 3].__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v41) < 0)
      {
        operator delete(v40[0]);
      }

      if (v43 < 0)
      {
        operator delete(v42[0]);
      }

      if (v45 < 0)
      {
        operator delete(v44[0]);
      }

      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v36;
      }

      else
      {
        v6 = v36.__r_.__value_.__r.__words[0];
      }

      if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v36.__r_.__value_.__l.__size_;
      }

      std::string::append(&v37, v6, size);
      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      ++v3;
    }

    while (v3 < *(v2 + 80));
  }

  std::string::basic_string[abi:nn200100]<0>(&v47, "AGCVertexUnpackState");
  std::string::basic_string[abi:nn200100]<0>(&v46, "currentAttribs");
  _agcFieldString<unsigned long long>(&v49, &v46.__r_.__value_.__l.__data_, *(v2 + 64));
  std::string::basic_string[abi:nn200100]<0>(v44, "instancedAttribs");
  _agcFieldString<unsigned long long>(&v50, v44, *(v2 + 72));
  std::string::basic_string[abi:nn200100]<0>(v42, "elementCount");
  _agcFieldString<unsigned long long>(&v51, v42, *(v2 + 80));
  std::string::basic_string[abi:nn200100]<0>(v40, "vertexIDCode");
  _agcFieldString<unsigned long long>(&v52, v40, *(v2 + 84));
  std::string::basic_string[abi:nn200100]<0>(&v39, "instanceIDCode");
  _agcFieldString<unsigned long long>(&v53, &v39.__r_.__value_.__l.__data_, *(v2 + 85));
  std::string::basic_string[abi:nn200100]<0>(&__p, "unused");
  _agcFieldString<unsigned long long>(v54, &__p.__r_.__value_.__l.__data_, *(v2 + 86));
  std::string::basic_string[abi:nn200100]<0>(&v36, "elements : ");
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v48, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
  }

  else
  {
    v48 = v37;
  }

  _agcGroupWithHeader(&v54[1], &v36, 0, &v48, 1);
  _agcGroupWithHeader(&v31, &v47, 0, &v49, 7);
  for (j = 0; j != 0x1FFFFFFFFFFFFFEBLL; j -= 3)
  {
    if (SHIBYTE(v54[1].__r_.__value_.__r.__words[j + 2]) < 0)
    {
      operator delete(v54[j / 3 + 1].__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  _agcFieldString<std::string>(&v49, v32, &v31);
  std::string::basic_string[abi:nn200100]<0>(&v47, "clip_distance_enable_mask");
  _agcFieldString<unsigned long long>(&v50, &v47.__r_.__value_.__l.__data_, *(v2 + 88));
  std::string::basic_string[abi:nn200100]<0>(&v46, "outputPointSize");
  _agcFieldString<unsigned long long>(&v51, &v46.__r_.__value_.__l.__data_, (*(v2 + 88) >> 8) & 1);
  std::string::basic_string[abi:nn200100]<0>(v44, "shaderDebugEnable");
  _agcFieldString<unsigned long long>(&v52, v44, (*(v2 + 88) >> 9) & 1);
  std::string::basic_string[abi:nn200100]<0>(v42, "unused");
  _agcFieldString<unsigned long long>(&v53, v42, *(v2 + 88) >> 10);
  _agcGroupWithHeader(&v30, v34, 0, &v49, 5);
  for (k = 0; k != -15; k -= 3)
  {
    if (SHIBYTE(v53.__r_.__value_.__r.__words[k + 2]) < 0)
    {
      operator delete(*(&v53.__r_.__value_.__l.__data_ + k * 8));
    }
  }

  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  v10 = *(this + 1252);
  if (v10)
  {
    std::string::basic_string[abi:nn200100]<0>(&v36, &unk_20E75F419);
    for (m = 0; m != 32; ++m)
    {
      std::string::basic_string[abi:nn200100]<0>(&v47, "AGCSamplerPCFState");
      std::string::basic_string[abi:nn200100]<0>(&v46, "compareFunc");
      _agcFieldString<char const*>(&v49, &v46.__r_.__value_.__l.__data_, _agcCompareFuncStrings[*(v10 + 2 * m) & 0xF]);
      std::string::basic_string[abi:nn200100]<0>(v44, "clampPCFEnabled");
      _agcFieldString<unsigned short>(&v50, v44, (*(v10 + 2 * m) >> 4) & 1);
      std::string::basic_string[abi:nn200100]<0>(v42, "mipmapMinFilterEnabled");
      _agcFieldString<unsigned short>(&v51, v42, (*(v10 + 2 * m) >> 5) & 1);
      std::string::basic_string[abi:nn200100]<0>(v40, "trilinearMinFilterEnabled");
      _agcFieldString<unsigned short>(&v52, v40, (*(v10 + 2 * m) >> 6) & 1);
      std::string::basic_string[abi:nn200100]<0>(&v39, "linearMinFilterEnabled");
      _agcFieldString<unsigned short>(&v53, &v39.__r_.__value_.__l.__data_, (*(v10 + 2 * m) >> 7) & 1);
      std::string::basic_string[abi:nn200100]<0>(&__p, "linearMagFilterEnabled");
      _agcFieldString<unsigned short>(v54, &__p.__r_.__value_.__l.__data_, HIBYTE(*(v10 + 2 * m)) & 1);
      std::string::basic_string[abi:nn200100]<0>(&v37, "unused");
      _agcFieldString<unsigned short>(&v54[1], &v37.__r_.__value_.__l.__data_, *(v10 + 2 * m) >> 9);
      _agcGroupWithHeader(&v48, &v47, 1, &v49, 7);
      for (n = 0; n != 0x1FFFFFFFFFFFFFEBLL; n -= 3)
      {
        if (SHIBYTE(v54[1].__r_.__value_.__r.__words[n + 2]) < 0)
        {
          operator delete(v54[n / 3 + 1].__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v41) < 0)
      {
        operator delete(v40[0]);
      }

      if (v43 < 0)
      {
        operator delete(v42[0]);
      }

      if (v45 < 0)
      {
        operator delete(v44[0]);
      }

      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v48;
      }

      else
      {
        v13 = v48.__r_.__value_.__r.__words[0];
      }

      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v14 = v48.__r_.__value_.__l.__size_;
      }

      std::string::append(&v36, v13, v14);
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }
    }

    std::string::basic_string[abi:nn200100]<0>(&v47, "AGCSamplerPCFStates");
    std::string::basic_string[abi:nn200100]<0>(&v49, "pcf : ");
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v50, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
    }

    else
    {
      v50 = v36;
    }

    _agcGroupWithHeader(&__p, &v47, 0, &v49, 2);
    for (ii = 0; ii != -6; ii -= 3)
    {
      if (SHIBYTE(v50.__r_.__value_.__r.__words[ii + 2]) < 0)
      {
        operator delete(*(&v49 + ii * 8 + 24));
      }
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(&__p, &unk_20E75F419);
  }

  v16 = *(this + 1253);
  std::string::basic_string[abi:nn200100]<0>(&v47, &unk_20E75F419);
  for (jj = 1; jj != 33; ++jj)
  {
    std::to_string(&v46, v16[jj]);
    v18 = std::string::append(&v46, " ");
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v49;
    }

    else
    {
      v20 = v49.__r_.__value_.__r.__words[0];
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = v49.__r_.__value_.__l.__size_;
    }

    std::string::append(&v47, v20, v21);
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(&v46, "AGCSamplerRemapStateGL");
  std::string::basic_string[abi:nn200100]<0>(v44, "samplerCount");
  _agcFieldString<unsigned int>(&v49, v44, *v16);
  std::string::basic_string[abi:nn200100]<0>(v42, "samplerToTexUnitMap");
  std::operator+<char>();
  v22 = std::string::append(&v39, "]");
  v23 = v22->__r_.__value_.__r.__words[2];
  *v40 = *&v22->__r_.__value_.__l.__data_;
  v41 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  _agcFieldString<std::string>(&v50, v42, v40);
  _agcGroupWithHeader(&v37, &v46, 0, &v49, 2);
  for (kk = 0; kk != -6; kk -= 3)
  {
    if (SHIBYTE(v50.__r_.__value_.__r.__words[kk + 2]) < 0)
    {
      operator delete(*(&v49 + kk * 8 + 24));
    }
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v49, &v30.__r_.__value_.__l.__data_, &__p.__r_.__value_.__l.__data_);
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v37;
  }

  else
  {
    v25 = v37.__r_.__value_.__r.__words[0];
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = v37.__r_.__value_.__l.__size_;
  }

  v27 = std::string::append(&v49, v25, v26);
  *a2 = *v27;
  v27->__r_.__value_.__r.__words[0] = 0;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }
}

void virtual thunk toAGCLLVMGLVertexShader::~AGCLLVMGLVertexShader(AGCLLVMGLVertexShader *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_2825A1BE8;
  v1[1257] = &unk_2825A1F50;
  v1[1470] = &unk_2825A2060;
  v2 = v1[1254];
  if (v2)
  {
    v1[1255] = v2;
    operator delete(v2);
  }

  v3 = v1[1247];
  if (v3)
  {
    v1[1248] = v3;
    operator delete(v3);
  }

  v4 = v1[1224];
  if (v4 != v1 + 1226)
  {
    free(v4);
  }

  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v1, off_2825A2070);
  AGCLLVMObject::~AGCLLVMObject((v1 + 1257));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_2825A1BE8;
  v1[1257] = &unk_2825A1F50;
  v1[1470] = &unk_2825A2060;
  v2 = v1[1254];
  if (v2)
  {
    v1[1255] = v2;
    operator delete(v2);
  }

  v3 = v1[1247];
  if (v3)
  {
    v1[1248] = v3;
    operator delete(v3);
  }

  v4 = v1[1224];
  if (v4 != v1 + 1226)
  {
    free(v4);
  }

  AGCLLVMUserVertexShader::~AGCLLVMUserVertexShader(v1, off_2825A2070);

  AGCLLVMObject::~AGCLLVMObject((v1 + 1257));
}

uint64_t AGCLLVMGLVertexShader::constructFlatVertexInputs(AGCLLVMGLVertexShader *this)
{
  if (*(*(this + *(*this - 24) + 2168) + 1848))
  {
    goto LABEL_68;
  }

  Function = llvm::Module::getFunction();
  llvm::SmallBitVector::SmallBitVector(&v52, *(this + 1310));
  if (*(Function + 18))
  {
    llvm::Function::BuildLazyArguments(Function);
    v3 = *(Function + 88);
    if (*(Function + 18))
    {
      llvm::Function::BuildLazyArguments(Function);
      v4 = *(Function + 88);
      goto LABEL_7;
    }
  }

  else
  {
    v3 = *(Function + 88);
  }

  v4 = v3;
LABEL_7:
  v5 = v4 + 40 * *(Function + 96);
  if (v3 != v5)
  {
    v6 = 0;
    do
    {
      if (*(v3 + 8))
      {
        if (v52)
        {
          v52 = v52 & 0xFC00000000000001 | (2 * (((1 << v6) | (v52 >> 1)) & ~(-1 << (v52 >> 58))));
        }

        else
        {
          *(*v52 + 8 * (v6 >> 6)) |= 1 << v6;
        }
      }

      v3 += 40;
      ++v6;
    }

    while (v3 != v5);
  }

  v7 = *(this + 1247);
  if (*(this + 1248) != v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = (v7 + 20 * v8);
      v11 = v10[2];
      if (v11 > 0xA)
      {
        LODWORD(v12) = -1;
      }

      else
      {
        v12 = (qword_20E70D080[v11] * (*v10 + 1) + 3) >> 2;
      }

      v13 = v10[3];
      llvm::SmallBitVector::SmallBitVector(&v51, *(this + 1310));
      if (v12)
      {
        v14 = v12 + v13;
        if (v51)
        {
          v51 = v51 & 0xFC00000000000001 | (2 * ((((1 << v14) + (-1 << v13)) | (v51 >> 1)) & ~(-1 << (v51 >> 58))));
          goto LABEL_30;
        }

        v15 = v13 >> 6;
        if ((v13 >> 6) == v14 >> 6)
        {
          v16 = (1 << v14) + (-1 << v13);
          v17 = (*v51 + 8 * v15);
LABEL_29:
          *v17 |= v16;
          goto LABEL_30;
        }

        v18 = *v51;
        *(*v51 + 8 * v15) |= -1 << v13;
        v19 = (v13 + 63) & 0xFFFFFFC0;
        if (v19 + 64 <= v14)
        {
          do
          {
            v18[v19 >> 6] = -1;
            v20 = v19 + 64;
            v21 = v19 + 128;
            v19 += 64;
          }

          while (v21 <= v14);
        }

        else
        {
          v20 = (v13 + 63) & 0xFFFFFFC0;
        }

        if (v20 < v14)
        {
          v16 = ~(-1 << v14);
          v17 = &v18[v20 >> 6];
          goto LABEL_29;
        }
      }

LABEL_30:
      if (v51)
      {
        v32 = v51 >> 58;
        if ((v52 & 1) == 0)
        {
          v33 = *(v52 + 64);
          goto LABEL_47;
        }

        if ((((v51 & v52) >> 1) & ~((-1 << v32) | (-1 << (v52 >> 58)))) == 0)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (v52)
        {
          v32 = *(v51 + 64);
          v33 = v52 >> 58;
LABEL_47:
          if (v33 < v32)
          {
            v32 = v33;
          }

          if (!v32)
          {
LABEL_63:
            v35 = *(this + 1247) + 20 * v9;
            v36 = *(this + 1248);
            v37 = v36 - (v35 + 20);
            if (v36 != v35 + 20)
            {
              memmove((*(this + 1247) + 20 * v9), (v35 + 20), v36 - (v35 + 20));
            }

            *(this + 1248) = v35 + v37;
            goto LABEL_66;
          }

          v34 = 0;
          while (2)
          {
            if (v51)
            {
              if (((v51 >> 1) & ~(-1 << (v51 >> 58)) & (1 << v34)) == 0)
              {
                goto LABEL_59;
              }
            }

            else if ((*(*v51 + 8 * (v34 >> 6)) & (1 << v34)) == 0)
            {
              goto LABEL_59;
            }

            if (v52)
            {
              if (((v52 >> 1) & ~(-1 << (v52 >> 58)) & (1 << v34)) != 0)
              {
                goto LABEL_62;
              }
            }

            else if ((*(*v52 + 8 * (v34 >> 6)) & (1 << v34)) != 0)
            {
              goto LABEL_62;
            }

LABEL_59:
            if (v32 == ++v34)
            {
              goto LABEL_63;
            }

            continue;
          }
        }

        LODWORD(v22) = *(v51 + 8);
        v23 = *(v52 + 8);
        if (v23 >= v22)
        {
          v22 = v22;
        }

        else
        {
          v22 = v23;
        }

        if (!v22)
        {
          goto LABEL_63;
        }

        v24 = *v51;
        v25 = *v52;
        v26 = v22 - 1;
        do
        {
          v28 = *v24++;
          v27 = v28;
          v29 = *v25++;
          v30 = v29 & v27;
          if (v30)
          {
            v31 = 1;
          }

          else
          {
            v31 = v26 == 0;
          }

          --v26;
        }

        while (!v31);
        if (!v30)
        {
          goto LABEL_63;
        }
      }

LABEL_62:
      ++v9;
LABEL_66:
      llvm::SmallBitVector::~SmallBitVector(&v51);
      v8 = v9;
      v7 = *(this + 1247);
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((*(this + 1248) - v7) >> 2) > v9);
  }

  llvm::SmallBitVector::~SmallBitVector(&v52);
LABEL_68:
  v38 = *(this + 1247);
  if (-858993459 * ((*(this + 1248) - v38) >> 2))
  {
    v39 = v38[4];
    v40 = this + *(*this - 24);
    v40[4358] = 1;
    v41 = *(v40 + 1082);
    v42 = *(v40 + 1080) - *(v40 + 1084);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v40 + 4288, 4, *v38);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v40 + 4288, 6, *(*(this + 1247) + 4));
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v40 + 4288, 8, *(*(this + 1247) + 8));
    v43 = *(*(this + 1247) + 12);
    v44 = v40 + 4288;
    if (v39)
    {
      flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v44, 12, v43);
      flatbuffers::FlatBufferBuilder::AddElement<signed char>(v40 + 4288, 10, *(*(this + 1247) + 16));
      flatbuffers::FlatBufferBuilder::EndTable((v40 + 4288), v42 + v41);
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
    }

    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v44, 10, v43);
    flatbuffers::FlatBufferBuilder::EndTable((v40 + 4288), v42 + v41);
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
  }

  v45 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexAttribData>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexAttribData>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexAttribData>> const&)::t, 0);
  v46 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>> const&)::t, 0);
  v47 = this + *(*this - 24);
  v47[4358] = 1;
  v48 = *(v47 + 1082);
  v49 = *(v47 + 1080) - *(v47 + 1084);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v47 + 4288), v45);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>((v47 + 4288), v46);
  return flatbuffers::FlatBufferBuilder::EndTable((v47 + 4288), v49 + v48);
}

llvm::SmallBitVector *llvm::SmallBitVector::SmallBitVector(llvm::SmallBitVector *this, uint64_t a2)
{
  *this = 1;
  if (a2 > 0x39)
  {
    operator new();
  }

  *this = (a2 << 58) | 1;
  return this;
}

void llvm::SmallBitVector::~SmallBitVector(void ***this)
{
  v1 = *this;
  if ((*this & 1) == 0 && v1)
  {
    if (*v1 != v1 + 2)
    {
      free(*v1);
    }

    MEMORY[0x20F331DC0](v1, 0x1080C40EF38A13ELL);
  }
}

uint64_t AGCLLVMGLVertexShader::getPointSize(AGCLLVMGLVertexShader *this, llvm::Value *a2, unsigned int a3)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = llvm::ConstantFP::get();
  }

  v5 = llvm::User::operator new(0x58);
  v18[0] = "agc.vertex_point_size_adjust";
  v19 = 259;
  v6 = llvm::GlobalVariable::GlobalVariable();
  *(v6 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  v7 = this + *(*this - 24);
  v8 = *(v7 + 268);
  v9 = AGCLLVMBuilder::buildGlobalMetadata(v7 + 213, v5, 0x15u, 0);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v8, v9);
  v10 = this + *(*this - 24);
  v19 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v10 + 1704), v5, v18);
  v12 = *v4;
  v17 = 257;
  FPTrunc = llvm::IRBuilderBase::CreateFPTrunc((v10 + 1712), Load, v12, v16);
  v14 = this + *(*this - 24);
  v19 = 257;
  return llvm::IRBuilderBase::CreateFAdd((v14 + 1712), v4, FPTrunc, v18);
}

uint64_t AGCLLVMGLVertexShader::getGenericVaryingInfo(AGCLLVMUserShader *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  AGCLLVMUserShader::getVaryingModeMap(a1);
  AGCLLVMUserShader::getInterpolationLocationMap(v10);
  v11 = *(*(a2 + 16) + 8 * a3);
  ComponentType = AGCLLVMBuilder::getComponentType((a1 + *(*a1 - 24) + 1704), v11, &v34);
  if ((*(v11 + 2) & 0xFE) == 0x12)
  {
    v13 = *(v11 + 8);
  }

  else
  {
    v13 = 1;
  }

  v33 = 0;
  v35 = 2;
  v14 = parseMDInt(0, a4, &v35, &v33);
  v15 = a4 - 8 * *(a4 + 8);
  v16 = *(v15 + 24);
  if (v16 && *v16)
  {
    v16 = 0;
  }

  v17 = *(v15 + 32);
  if (!v17)
  {
    return 0;
  }

  v18 = 0;
  v19 = v14 ^ 1;
  if (!v16)
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0 && !*v17)
  {
    String = llvm::MDString::getString(v16);
    v22 = *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserShader::getVaryingModeMap(void)::varying_mode_map, String, v21) + 8);
    v23 = llvm::MDString::getString(v17);
    v25 = *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserShader::getInterpolationLocationMap(void)::interpolation_location_map, v23, v24) + 8);
    v26 = v33;
    if (v22 == 1)
    {
      v25 = 3;
    }

    if (v22 <= 1)
    {
      if (ComponentType == 1)
      {
        v27 = 5;
      }

      else
      {
        v27 = 1;
      }

      if (ComponentType == 1)
      {
        v28 = 6;
      }

      else
      {
        v28 = 2;
      }

      if (v22 != 1)
      {
        v28 = v33;
      }

      v30 = v22 == 0;
    }

    else
    {
      if (ComponentType == 1)
      {
        v27 = 7;
      }

      else
      {
        v27 = 3;
      }

      if (ComponentType == 1)
      {
        v28 = 19;
      }

      else
      {
        v28 = 18;
      }

      if (ComponentType == 1)
      {
        v29 = 8;
      }

      else
      {
        v29 = 4;
      }

      if (v22 != 5)
      {
        v29 = v33;
      }

      if (v22 != 3)
      {
        v28 = v29;
      }

      v30 = v22 == 2;
    }

    if (v30)
    {
      v31 = v27;
    }

    else
    {
      v31 = v28;
    }

    *a5 = v13;
    *(a5 + 4) = ComponentType;
    *(a5 + 8) = v22;
    *(a5 + 12) = v25;
    *(a5 + 16) = v26;
    if (*(a5 + 47) < 0)
    {
      operator delete(*(a5 + 24));
    }

    *(a5 + 40) = 0u;
    *(a5 + 24) = 0u;
    *(a5 + 56) = ComponentType == 1;
    *(a5 + 57) = 0;
    *(a5 + 60) = v31;
    return 1;
  }

  return v18;
}

uint64_t AGCLLVMGLVertexShader::setupClipDistanceOutput(void *a1, llvm::Value *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v21 = 0;
  v19[0] = 1;
  parseMDInt(0, a3, v19, &v21);
  v9 = *a2;
  if (*a2)
  {
    v10 = *(*a2 + 8) == 18;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v12 = *(v9 + 32);
    if (v12)
    {
      v13 = 0;
      v14 = 4 * v21;
      do
      {
        v15 = a1 + *(*a1 - 24) + 1704;
        v20 = 257;
        v16 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((v15 + 8), a2, v16, v19);
        *a5 |= 1 << (v14 + v13);
        *(a4 + 8 * (v14 + v13++)) = Element;
      }

      while (v12 != v13);
    }
  }

  else if (*(a1 + *(*a1 - 24) + 1872) == v9)
  {
    v11 = 4 * v21;
    *a5 |= 1 << (4 * v21);
    *(a4 + 8 * v11) = a2;
  }

  return 1;
}

uint64_t AGCLLVMGLVertexShader::getPCFStateForUnit(AGCLLVMGLVertexShader *this, unsigned int a2)
{
  v2 = *(this + 1252);
  if (v2)
  {
    return *(v2 + 2 * a2);
  }

  else
  {
    return 0;
  }
}

uint64_t AGCLLVMGLVertexShader::remapTexSampUnit(AGCLLVMGLVertexShader *this, uint64_t a2)
{
  v2 = *(this + 1253);
  if (*v2 > a2)
  {
    return v2[a2 + 1];
  }

  return a2;
}

uint64_t AGCLLVMGLVertexShader::setupShaderInputs(llvm::Function **this)
{
  v88 = *MEMORY[0x277D85DE8];
  AGCLLVMUserVertexShader::setupShaderInputs(this);
  v2 = llvm::PointerType::get();
  v3 = *(this + *(*this - 3) + 1904);
  v86[0] = v2;
  v86[1] = v3;
  llvm::StructType::get();
  v4 = *(this[21] + 10);
  if (v4)
  {
    v5 = (v4 - 24);
  }

  else
  {
    v5 = 0;
  }

  v6 = *this;
  if ((*(this + *(*this - 3) + 2168))[1848])
  {
    FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v5);
    AGCLLVMUserObject::hoistAllocas(this, v5, &FirstInsertionPt, v7);
    llvm::IRBuilderBase::SetInsertPoint(this + *(*this - 3) + 1712, v5, FirstInsertionPt);
    v8 = *(this + 2501);
    if (v8 != -1)
    {
      v9 = this + *(*this - 3);
      VIRead = AGCLLVMUserVertexShader::createVIRead(this, v8);
      v11 = *(this + *(*this - 3) + 1904);
      v87 = 257;
      Cast = llvm::IRBuilderBase::CreateCast((v9 + 1712), 49, VIRead, v11, v86);
      v13 = *(this + *(*this - 3) + 1912);
      v85 = 257;
      llvm::IRBuilderBase::CreateCast((v9 + 1712), 39, Cast, v13, v84);
    }

    v31 = *(this + 2500);
    if (v31 != -1)
    {
      v32 = this + *(*this - 3);
      v33 = AGCLLVMUserVertexShader::createVIRead(this, v31);
      v34 = *(this + *(*this - 3) + 1904);
      v87 = 257;
      v35 = llvm::IRBuilderBase::CreateCast((v32 + 1712), 49, v33, v34, v86);
      v36 = *(this + *(*this - 3) + 1912);
      v85 = 257;
      llvm::IRBuilderBase::CreateCast((v32 + 1712), 39, v35, v36, v84);
    }

    v37 = llvm::User::operator new(0x58);
    v86[0] = "agc.primitive_buffer_path";
    v87 = 259;
    v38 = llvm::GlobalVariable::GlobalVariable();
    *(v38 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    v39 = this + *(*this - 3);
    v40 = *(v39 + 268);
    v41 = AGCLLVMBuilder::buildGlobalMetadata(v39 + 213, v37, 0x1Au, 0);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v40, v41);
    v87 = 257;
    this[1246] = llvm::BasicBlock::splitBasicBlock();
    v86[0] = "primbuf_path";
    v87 = 259;
    operator new();
  }

  this[1246] = v5;
  v14 = this + *(v6 - 24);
  v15 = llvm::BasicBlock::getFirstInsertionPt(v5);
  if (v15)
  {
    v16 = (v15 - 24);
  }

  else
  {
    v16 = 0;
  }

  llvm::IRBuilderBase::SetInsertPoint((v14 + 1712), v16);
  v77 = *(this + 2450);
  if (v77)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = *(this[1224] + v17);
      v20 = *(this[1254] + v19);
      v21 = this[1251];
      llvm::FixedVectorType::get();
      InsertElement = llvm::UndefValue::get();
      if (v20)
      {
        v78 = v21;
        v80 = v19;
        for (i = 0; i != v20; ++i)
        {
          v24 = this + *(*this - 3) + 1704;
          v25 = AGCLLVMUserVertexShader::createVIRead(this, v18 + i);
          v87 = 257;
          v26 = llvm::ConstantInt::get();
          InsertElement = llvm::IRBuilderBase::CreateInsertElement((v24 + 8), InsertElement, v25, v26, v86);
        }

        v18 += i;
        v19 = v80;
        v27 = *(v78 + v80);
        v28 = this;
        v29 = InsertElement;
        v30 = v20;
      }

      else
      {
        v27 = *(v21 + v19);
        v28 = this;
        v29 = InsertElement;
        v30 = 0;
      }

      this[v19 + 1230] = AGCLLVMGLVertexShader::castAttribToElementType(v28, v27, v29, v30);
      ++v17;
    }

    while (v17 != v77);
  }

  Function = llvm::Module::getFunction();
  v43 = Function;
  if (Function)
  {
    v44 = *(*(Function + 8) + 24);
  }

  else
  {
    v44 = 0;
  }

  v45 = this[1246];
  v84[0] = 0;
  v46 = this[21];
  v79 = v44;
  if (*(v46 + 9))
  {
    llvm::Function::BuildLazyArguments(v46);
    v48 = this[21];
    v47 = *(v46 + 11);
    if (*(v48 + 9))
    {
      llvm::Function::BuildLazyArguments(this[21]);
    }

    v46 = v48;
  }

  else
  {
    v47 = *(v46 + 11);
  }

  v49 = *(v46 + 11) + 40 * *(v46 + 12);
  if (v47 != v49)
  {
    v50 = this + 214;
    v51 = 0x747265762E726961;
    v52 = 0x7475706E695F7865;
    do
    {
      if (*(v47 + 8))
      {
        v53 = *(v45 + 5);
        v54 = v53 ? (v53 - 24) : 0;
        llvm::IRBuilderBase::SetInsertPoint((v50 + *(*this - 3)), v54);
        v55 = *(v47 + 32);
        v56 = *(this[10] + v55);
        if ((AGCLLVMUserShader::replaceInputArgument(this, v47, v55, v56) & 1) == 0)
        {
          String = llvm::MDString::getString(*(v56 - 8 * *(v56 + 8) + 8));
          if (v58 == 16 && *String == v51 && String[1] == v52)
          {
            v60 = *(v56 - 8 * *(v56 + 8) + 16);
            if (v60)
            {
              if (*v60)
              {
                v61 = 0;
              }

              else
              {
                v61 = *(v56 - 8 * *(v56 + 8) + 16);
              }
            }

            else
            {
              v61 = 0;
            }

            v62 = llvm::MDString::getString(v61);
            if (v63 == 12 && (*v62 == 0x61636F6C2E726961 ? (v64 = *(v62 + 8) == 1852795252) : (v64 = 0), v64))
            {
              v73 = *(*(v47 + 8) + 24);
              LODWORD(v86[0]) = 3;
              parseMDInt(0, v56, v86, v84);
              AGCLLVMGLVertexShader::replaceAttributeUses(this, v73[1], v84[0], 0);
              llvm::Instruction::eraseFromParent(v73);
            }

            else
            {
              v83[0] = 0;
              LODWORD(v86[0]) = 3;
              parseMDInt(0, v56, v86, v83);
              v65 = v83[0];
              v66 = v43;
              v67 = v52;
              v68 = v51;
              v69 = this[1251];
              v81 = this[v83[0] + 1230];
              v70 = *(this[1246] + 5);
              if (v70)
              {
                v71 = (v70 - 24);
              }

              else
              {
                v71 = 0;
              }

              llvm::IRBuilderBase::SetInsertPoint((v50 + *(*this - 3)), v71);
              v72 = v69 + 4 * v65;
              v51 = v68;
              v52 = v67;
              v43 = v66;
              AGCLLVMGLVertexShader::generateAttributeValue(this, v72, *v47, v81);
              llvm::Value::replaceAllUsesWith();
            }
          }
        }
      }

      v47 += 40;
    }

    while (v47 != v49);
  }

  if (v43)
  {
    if (v79)
    {
      if (llvm::Value::getNumUses(v79))
      {
        AGCLLVMGLVertexShader::replaceAttributeUses(this, v43[1], *(this[1251] + 84), 3);
      }

      else
      {
        llvm::Instruction::eraseFromParent(v79);
      }
    }

    llvm::Function::eraseFromParent(v43);
  }

  v74 = llvm::Module::getFunction();
  if (v74)
  {
    v75 = v74;
    AGCLLVMGLVertexShader::replaceAttributeUses(this, *(v74 + 8), WORD2(*(this[1251] + 10)) >> 8, 1);
    llvm::Function::eraseFromParent(v75);
  }

  return 1;
}

uint64_t *AGCLLVMGLVertexShader::replaceAttributeUses(uint64_t *result, uint64_t a2, int a3, int a4)
{
  if (a2)
  {
    v5 = a2;
    v6 = result;
    v7 = result[1251];
    v8 = result + 238;
    v9 = result + 214;
    v10 = a4 & 0xFFFFFFFD;
    v11 = result + 1230;
    do
    {
      v12 = *(v5 + 24);
      v5 = *(v5 + 8);
      v13 = *v6;
      v14 = v12;
      if (v10 == 1)
      {
        v14 = (v8 + *(v13 - 24));
      }

      v15 = *v14;
      llvm::IRBuilderBase::SetInsertPoint((v9 + *(v13 - 24)), v12);
      v16 = v6[1251];
      v17 = *(v16 + 80);
      if (*(v16 + 80))
      {
        v18 = 0;
        while (*(v7 + 4 * v18) != a3)
        {
          if (v17 == ++v18)
          {
            v19 = 0;
            LODWORD(v18) = v17;
            goto LABEL_12;
          }
        }

        v19 = v11[v18];
      }

      else
      {
        LODWORD(v18) = 0;
        v19 = 0;
      }

LABEL_12:
      AGCLLVMGLVertexShader::generateAttributeValue(v6, (v7 + 4 * v18), v15, v19);
      llvm::Value::replaceAllUsesWith();
      result = llvm::Instruction::eraseFromParent(v12);
    }

    while (v5);
  }

  return result;
}

llvm::Value *AGCLLVMGLVertexShader::generateAttributeValue(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, llvm::Value *a4)
{
  v5 = a3;
  v79 = *MEMORY[0x277D85DE8];
  if ((*(a3 + 8) & 0xFE) == 0x12)
  {
    v8 = *(a3 + 32);
    v5 = **(a3 + 16);
  }

  else
  {
    v8 = 1;
  }

  v9 = (a1 + *(*a1 - 24));
  v60 = v5;
  if (v5 == v9[234] || v5 == v9[232])
  {
    if (a2[2] - 9 >= 2)
    {
      llvm::FixedVectorType::get();
    }

    v11 = llvm::ConstantFP::get();
    v10 = llvm::ConstantFP::get();
    v13 = *a2;
    if ((*a2 & 0x1000000) == 0)
    {
      v14 = BYTE2(v13);
      if (v14 <= 0xA)
      {
        if (((1 << v14) & 0xAC) != 0)
        {
LABEL_42:
          v15 = (a1 + *(*a1 - 24) + 1704);
          v16 = a4;
          v17 = 1;
          goto LABEL_43;
        }

        if (((1 << v14) & 0x150) != 0)
        {
          v15 = (a1 + *(*a1 - 24) + 1704);
          v16 = a4;
          v17 = 0;
LABEL_43:
          FMul = AGCLLVMBuilder::f32Extend(v15, v16, v17);
LABEL_62:
          ShuffleVector = FMul;
          goto LABEL_63;
        }

        if (((1 << v14) & 0x600) != 0)
        {
          v31 = a1 + *(*a1 - 24);
          v32 = *(v31 + 271);
          v70 = *(v31 + 110);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v71, (v31 + 1712));
          v72 = *(v31 + 452);
          ShuffleVector = (*(*v32 + 112))(v32, &v70, 5, *(a1 + *(*a1 - 24) + 1872), a4, 0, a2[2] << 16 == 589824);
          if (!v71)
          {
            goto LABEL_63;
          }

          goto LABEL_59;
        }
      }

      if (v14 != 1)
      {
        if (v14)
        {
          goto LABEL_9;
        }

        goto LABEL_42;
      }

      v19 = AGCLLVMBuilder::f32Extend((a1 + *(*a1 - 24) + 1704), a4, 1);
LABEL_61:
      v47 = llvm::ConstantFP::get();
      v48 = a1 + *(*a1 - 24);
      v74 = 257;
      FMul = llvm::IRBuilderBase::CreateFMul((v48 + 1712), v19, v47, v73);
      goto LABEL_62;
    }

    ShuffleVector = 0;
    v18 = BYTE2(v13);
    if (v18 > 6)
    {
      if ((v18 - 9) < 2)
      {
        v29 = a1 + *(*a1 - 24);
        v30 = *(v29 + 271);
        v64 = *(v29 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v65, (v29 + 1712));
        v66 = *(v29 + 452);
        ShuffleVector = (*(*v30 + 112))(v30, &v64, 5, *(a1 + *(*a1 - 24) + 1872), a4, 1, a2[2] << 16 == 589824);
        if (!v65)
        {
          goto LABEL_63;
        }

LABEL_59:
        llvm::MetadataTracking::untrack();
        goto LABEL_63;
      }

      if (v18 != 7)
      {
        if (v18 != 8)
        {
          goto LABEL_63;
        }

        v24 = 0;
        v25 = 8;
LABEL_58:
        v45 = a1 + *(*a1 - 24);
        v46 = *(v45 + 271);
        v61 = *(v45 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v62, (v45 + 1712));
        v63 = *(v45 + 452);
        ShuffleVector = (*(*v46 + 96))(v46, &v61, a4, v25, v24, 32);
        if (!v62)
        {
          goto LABEL_63;
        }

        goto LABEL_59;
      }

      v25 = 8;
    }

    else
    {
      if (v18 <= 4)
      {
        if (v18 == 3)
        {
          v38 = AGCLLVMBuilder::f32Extend((a1 + *(*a1 - 24) + 1704), a4, 1);
          v39 = llvm::ConstantFP::get();
          v40 = llvm::ConstantFP::get();
          v41 = a1 + *(*a1 - 24);
          v74 = 257;
          v42 = llvm::IRBuilderBase::CreateFMul((v41 + 1712), v38, v39, v73);
          v43 = a1 + *(*a1 - 24);
          v44 = *(v43 + 271);
          v67 = *(v43 + 110);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v68, (v43 + 1712));
          v69 = *(v43 + 452);
          ShuffleVector = (*(*v44 + 56))(v44, &v67, v42, v40, 0);
          if (!v68)
          {
            goto LABEL_63;
          }

          goto LABEL_59;
        }

        if (v18 != 4)
        {
          goto LABEL_63;
        }

        v19 = AGCLLVMBuilder::f32Extend((a1 + *(*a1 - 24) + 1704), a4, 0);
        goto LABEL_61;
      }

      if (v18 != 5)
      {
        v24 = 0;
        v25 = 16;
        goto LABEL_58;
      }

      v25 = 16;
    }

    v24 = 1;
    goto LABEL_58;
  }

  if (v5 != v9[238] && v5 != v9[237])
  {
    v10 = 0;
    v11 = 0;
LABEL_9:
    ShuffleVector = 0;
    goto LABEL_63;
  }

  v10 = 0;
  v20 = a2[2];
  if (v20 <= 0xA)
  {
    if (((1 << v20) & 0x2A8) != 0)
    {
      v21 = llvm::FixedVectorType::get();
      v11 = llvm::ConstantInt::get();
      v10 = llvm::ConstantInt::get();
      if (llvm::Type::getScalarSizeInBits(*a4) <= 0x1F)
      {
        v26 = a1 + *(*a1 - 24);
        v74 = 257;
        v27 = (v26 + 1712);
        v28 = 40;
LABEL_49:
        FMul = llvm::IRBuilderBase::CreateCast(v27, v28, a4, v21, v73);
        goto LABEL_62;
      }
    }

    else
    {
      if (((1 << v20) & 0x550) == 0)
      {
        v11 = 0;
        ShuffleVector = 0;
        if (a2[2])
        {
          goto LABEL_63;
        }

        v36 = llvm::FixedVectorType::get();
        v11 = llvm::ConstantInt::get();
        v10 = llvm::ConstantInt::get();
        v37 = a1 + *(*a1 - 24);
        v74 = 257;
        FMul = llvm::IRBuilderBase::CreateFPToSI((v37 + 1712), a4, v36, v73);
        goto LABEL_62;
      }

      v21 = llvm::FixedVectorType::get();
      v11 = llvm::ConstantInt::get();
      v10 = llvm::ConstantInt::get();
      v22 = *a4;
      if ((*(*a4 + 8) & 0xFE) == 0x12)
      {
        v23 = *(**(v22 + 2) + 8);
      }

      else
      {
        v23 = *(*a4 + 8);
      }

      if (v23 <= 6)
      {
        v34 = a1 + *(*a1 - 24);
        v74 = 257;
        FMul = llvm::IRBuilderBase::CreateFPToUI((v34 + 1712), a4, v21, v73);
        goto LABEL_62;
      }

      if (llvm::Type::getScalarSizeInBits(v22) <= 0x1F)
      {
        v35 = a1 + *(*a1 - 24);
        v74 = 257;
        v27 = (v35 + 1712);
        v28 = 39;
        goto LABEL_49;
      }
    }

    ShuffleVector = a4;
    goto LABEL_63;
  }

  v11 = 0;
  ShuffleVector = 0;
LABEL_63:
  v49 = *(*ShuffleVector + 32);
  v50 = *a2;
  if ((*a2 & 0x2000000) != 0)
  {
    v75 = llvm::ConstantInt::get();
    v76 = llvm::ConstantInt::get();
    v77 = llvm::ConstantInt::get();
    v78 = llvm::ConstantInt::get();
    v51 = llvm::ConstantVector::get();
    v52 = a1 + *(*a1 - 24);
    v53 = llvm::UndefValue::get();
    v74 = 257;
    ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector((v52 + 1712), ShuffleVector, v53, v51, v73);
    v50 = *a2;
  }

  v54 = BYTE1(v50);
  v55 = BYTE1(v50) + 1;
  if (v49 > v55)
  {
    ShuffleVector = AGCLLVMBuilder::subrangeVector((a1 + *(*a1 - 24) + 1704), ShuffleVector, 0, v55, 0);
  }

  if (v8 == 1 || v8 <= v54)
  {
    ShuffleVector = AGCLLVMBuilder::subrangeVector((a1 + *(*a1 - 24) + 1704), ShuffleVector, 0, v8, 1);
  }

  else if (v8 > v55)
  {
    ShuffleVector = AGCLLVMBuilder::extendVector((a1 + *(*a1 - 24) + 1704), ShuffleVector, v8, a4);
    do
    {
      if (v55 == 3)
      {
        v56 = v10;
      }

      else
      {
        v56 = v11;
      }

      v57 = a1 + *(*a1 - 24) + 1704;
      v74 = 257;
      v58 = llvm::ConstantInt::get();
      ShuffleVector = llvm::IRBuilderBase::CreateInsertElement((v57 + 8), ShuffleVector, v56, v58, v73);
      ++v55;
    }

    while (v8 != v55);
  }

  return AGCLLVMBuilder::truncateToSmall((a1 + *(*a1 - 24) + 1704), ShuffleVector, v60);
}