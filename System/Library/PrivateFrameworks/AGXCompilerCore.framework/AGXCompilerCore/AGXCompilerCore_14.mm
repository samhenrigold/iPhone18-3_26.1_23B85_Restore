void virtual thunk toAGCLLVMUserTileShader::~AGCLLVMUserTileShader(AGCLLVMUserTileShader *this)
{
  v1 = this + *(*this - 24);
  *v1 = &unk_2825A64B8;
  *(v1 + 594) = &unk_2825A6820;
  *(v1 + 807) = &unk_2825A6930;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v1 + 588));
  v4 = (v1 + 4656);
  v5 = -144;
  while (1)
  {
    v6 = *(v4 + 2);
    if (v6 != -8192 && v6 != -4096 && v6 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v4);
    }

    v4 = (v4 - 24);
    v5 += 24;
    if (!v5)
    {
      AGCLLVMUserShader::~AGCLLVMUserShader(v1, off_2825A6940, v2, v3);
      AGCLLVMObject::~AGCLLVMObject((v1 + 4752));

      JUMPOUT(0x20F331DC0);
    }
  }
}

{
  v1 = this + *(*this - 24);
  *v1 = &unk_2825A64B8;
  *(v1 + 594) = &unk_2825A6820;
  *(v1 + 807) = &unk_2825A6930;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v1 + 588));
  v4 = (v1 + 4656);
  v5 = -144;
  do
  {
    v6 = *(v4 + 2);
    if (v6 != -8192 && v6 != -4096 && v6 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v4);
    }

    v4 = (v4 - 24);
    v5 += 24;
  }

  while (v5);
  AGCLLVMUserShader::~AGCLLVMUserShader(v1, off_2825A6940, v2, v3);

  AGCLLVMObject::~AGCLLVMObject((v1 + 4752));
}

uint64_t AGCLLVMUserTileShader::needsThreadgroupMemoryOOBChecks(AGCLLVMUserTileShader *this)
{
  if (*(*(this + *(*this - 24) + 2168) + 1885) == 1)
  {
    return AGCLLVMUserObject::isThreadgroupMemoryUsed(this);
  }

  else
  {
    return 0;
  }
}

uint64_t AGCLLVMUserTileShader::getTileConstant(void *a1, uint64_t a2, unsigned int a3)
{
  v3 = a2;
  if (a2 <= 1 && (*(a1[586] + 4) & 1) != 0)
  {
    v5 = *(a1 + *(*a1 - 24) + 2168);
    v6 = (*(*v5 + 688))(v5);
    v7 = a1 + *(*a1 - 24);
    v25 = *(v7 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v26, (v7 + 1712));
    v27 = *(v7 + 452);
    v8 = AGCLLVMGen3TargetLowerer::buildLocalSize(v6, &v25, *(a1 + *(*a1 - 24) + 1904), v3);
    if (v26)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    v9 = &a1[3 * a2];
    v10 = (v9 + 567);
    if (!v9[569])
    {
      v11 = a2;
      v12 = 1;
      v13 = llvm::User::operator new(0x58);
      v14 = &(&AGCLLVMUserTileShader::getTileConstant(AGCLLVMUserShader::TileConstant)::tile_constant_info)[2 * v11];
      v15 = *v14;
      HIBYTE(v24) = 1;
      if (*v15)
      {
        v23 = v15;
        v12 = 3;
      }

      LOBYTE(v24) = v12;
      llvm::GlobalVariable::GlobalVariable();
      *(v13 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      v16 = a1 + *(*a1 - 24);
      v17 = *(v14 + 2);
      v18 = *(v16 + 268);
      v19 = AGCLLVMBuilder::buildGlobalMetadata(v16 + 213, v13, v17, 0);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v18, v19);
      llvm::ValueHandleBase::operator=(v10, v13);
    }

    v20 = a1 + *(*a1 - 24);
    v21 = *(v10 + 2);
    v24 = 257;
    return AGCLLVMBuilder::CreateLoad((v20 + 1704), v21, &v23);
  }

  return v8;
}

uint64_t AGCLLVMUserTileShader::buildTileQuadgroupIndexInThreadgroup(AGCLLVMUserTileShader *this, llvm::Type *a2, uint64_t a3, uint64_t a4)
{
  if (*(*(this + 586) + 4))
  {
    v7 = *(this + *(*this - 24) + 2168);
    v8 = (*(*v7 + 688))(v7);
    v9 = this + *(*this - 24);
    v11 = *(v9 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (v9 + 1712));
    v13 = *(v9 + 452);
    v10 = AGCLLVMGen3TargetLowerer::buildQuadGroup(v8, &v11, a2);
    if (v12)
    {
      llvm::MetadataTracking::untrack();
    }

    return v10;
  }

  else
  {

    return AGCLLVMUserShader::buildTileQuadgroupIndexInThreadgroup(this, a2, a3, a4);
  }
}

uint64_t AGCLLVMUserTileShader::buildTileThreadPositionInGrid(AGCLLVMUserTileShader *this, llvm::Type *a2, uint64_t a3, _BOOL8 a4)
{
  v4 = a3;
  if (*(*(this + 586) + 4))
  {
    v8 = *(this + *(*this - 24) + 2168);
    v9 = (*(*v8 + 688))(v8, a2, a3, a4);
    v10 = this + *(*this - 24);
    v12 = *(v10 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v13, (v10 + 1712));
    v14 = *(v10 + 452);
    v11 = AGCLLVMGen3TargetLowerer::buildGlobalID(v9, &v12, a2, v4);
    if (v13)
    {
      llvm::MetadataTracking::untrack();
    }

    return v11;
  }

  else
  {

    return AGCLLVMUserShader::buildTileThreadPositionInGrid(this, a2, a3, a4);
  }
}

uint64_t AGCLLVMUserTileShader::replaceBuiltins(AGCLLVMUserTileShader *this)
{
  v108 = *MEMORY[0x277D85DE8];
  result = AGCLLVMUserObject::replaceBuiltins(this);
  if (!result)
  {
    return result;
  }

  v78 = result;
  v3 = *(this + *(*this - 24) + 2136);
  AGCLLVMBuilder::AGCLLVMBuilder(&v98, *v3);
  v105 = this;
  v98 = &unk_2825A7338;
  v104[37] = v3;
  {
    AGCLLVMUserTileShader::replaceWorkitemFunctions(void)::workitem_functions[0] = "air.get_global_size.i32";
    dword_27C8D7BC8 = 1;
    qword_27C8D7BD0 = AGCLLVMUserShader::buildTileThreadsPerGrid;
    unk_27C8D7BD8 = 0;
    dword_27C8D7BE0 = 4;
    word_27C8D7BE4 = 0;
    qword_27C8D7BE8 = "air.get_global_size.i16";
    dword_27C8D7BF0 = 1;
    qword_27C8D7BF8 = AGCLLVMUserShader::buildTileThreadsPerGrid;
    unk_27C8D7C00 = 0;
    dword_27C8D7C08 = 4;
    word_27C8D7C0C = 0;
    qword_27C8D7C10 = "air.get_global_id.i32";
    dword_27C8D7C18 = 1;
    qword_27C8D7C20 = AGCLLVMUserShader::buildTileThreadPositionInGrid;
    unk_27C8D7C28 = 0;
    dword_27C8D7C30 = 4;
    word_27C8D7C34 = 0;
    qword_27C8D7C38 = "air.get_global_id.i16";
    dword_27C8D7C40 = 1;
    qword_27C8D7C48 = AGCLLVMUserShader::buildTileThreadPositionInGrid;
    unk_27C8D7C50 = 0;
    dword_27C8D7C58 = 4;
    word_27C8D7C5C = 0;
    qword_27C8D7C60 = "air.get_local_size.i32";
    dword_27C8D7C68 = 1;
    qword_27C8D7C70 = AGCLLVMUserShader::buildTileThreadsPerThreadgroup;
    unk_27C8D7C78 = 0;
    dword_27C8D7C80 = 4;
    word_27C8D7C84 = 0;
    qword_27C8D7C88 = "air.get_local_size.i16";
    dword_27C8D7C90 = 1;
    qword_27C8D7C98 = AGCLLVMUserShader::buildTileThreadsPerThreadgroup;
    unk_27C8D7CA0 = 0;
    dword_27C8D7CA8 = 4;
    word_27C8D7CAC = 0;
    qword_27C8D7CB0 = "air.get_local_id.i32";
    dword_27C8D7CB8 = 1;
    qword_27C8D7CC0 = AGCLLVMUserShader::buildTileThreadPositionInThreadgroup;
    unk_27C8D7CC8 = 0;
    dword_27C8D7CD0 = 4;
    word_27C8D7CD4 = 0;
    qword_27C8D7CD8 = "air.get_local_id.i16";
    dword_27C8D7CE0 = 1;
    qword_27C8D7CE8 = AGCLLVMUserShader::buildTileThreadPositionInThreadgroup;
    unk_27C8D7CF0 = 0;
    dword_27C8D7CF8 = 4;
    word_27C8D7CFC = 0;
    qword_27C8D7D00 = "air.get_local_linear_id.i32";
    dword_27C8D7D08 = 1;
    qword_27C8D7D10 = AGCLLVMUserShader::buildTileThreadIndexInThreadgroup;
    unk_27C8D7D18 = 0;
    dword_27C8D7D20 = 2;
    word_27C8D7D24 = 0;
    qword_27C8D7D28 = "air.get_local_linear_id.i16";
    dword_27C8D7D30 = 1;
    qword_27C8D7D38 = AGCLLVMUserShader::buildTileThreadIndexInThreadgroup;
    unk_27C8D7D40 = 0;
    dword_27C8D7D48 = 2;
    word_27C8D7D4C = 0;
    qword_27C8D7D50 = "air.get_num_groups.i32";
    dword_27C8D7D58 = 1;
    qword_27C8D7D60 = AGCLLVMUserShader::buildTileThreadgroupsPerGrid;
    unk_27C8D7D68 = 0;
    dword_27C8D7D70 = 4;
    word_27C8D7D74 = 0;
    qword_27C8D7D78 = "air.get_num_groups.i16";
    dword_27C8D7D80 = 1;
    qword_27C8D7D88 = AGCLLVMUserShader::buildTileThreadgroupsPerGrid;
    unk_27C8D7D90 = 0;
    dword_27C8D7D98 = 4;
    word_27C8D7D9C = 0;
    qword_27C8D7DA0 = "air.get_group_id.i32";
    dword_27C8D7DA8 = 1;
    qword_27C8D7DB0 = AGCLLVMUserShader::buildTileThreadgroupPositionInGrid;
    unk_27C8D7DB8 = 0;
    dword_27C8D7DC0 = 4;
    word_27C8D7DC4 = 0;
    qword_27C8D7DC8 = "air.get_group_id.i16";
    dword_27C8D7DD0 = 1;
    qword_27C8D7DD8 = AGCLLVMUserShader::buildTileThreadgroupPositionInGrid;
    qword_27C8D7DE0 = 0;
    dword_27C8D7DE8 = 4;
    word_27C8D7DEC = 0;
    qword_27C8D7DF0 = "air.get_dispatch_local_size.i32";
    dword_27C8D7DF8 = 1;
    qword_27C8D7E00 = AGCLLVMUserShader::buildTileThreadsPerThreadgroup;
    qword_27C8D7E08 = 0;
    dword_27C8D7E10 = 4;
    word_27C8D7E14 = 0;
    qword_27C8D7E18 = "air.get_dispatch_local_size.i16";
    dword_27C8D7E20 = 1;
    qword_27C8D7E28 = AGCLLVMUserShader::buildTileThreadsPerThreadgroup;
    qword_27C8D7E30 = 0;
    dword_27C8D7E38 = 4;
    word_27C8D7E3C = 0;
    qword_27C8D7E40 = "air.get_quadgroups_per_threadgroup.i32";
    dword_27C8D7E48 = 1;
    qword_27C8D7E50 = AGCLLVMUserShader::buildTileQuadgroupsPerThreadgroup;
    qword_27C8D7E58 = 0;
    dword_27C8D7E60 = 2;
    word_27C8D7E64 = 0;
    qword_27C8D7E68 = "air.get_quadgroups_per_threadgroup.i16";
    dword_27C8D7E70 = 1;
    qword_27C8D7E78 = AGCLLVMUserShader::buildTileQuadgroupsPerThreadgroup;
    qword_27C8D7E80 = 0;
    dword_27C8D7E88 = 2;
    word_27C8D7E8C = 0;
    qword_27C8D7E90 = "air.get_dispatch_quadgroups_per_threadgroup.i32";
    dword_27C8D7E98 = 1;
    qword_27C8D7EA0 = AGCLLVMUserShader::buildTileQuadgroupsPerThreadgroup;
    qword_27C8D7EA8 = 0;
    dword_27C8D7EB0 = 2;
    word_27C8D7EB4 = 0;
    qword_27C8D7EB8 = "air.get_dispatch_quadgroups_per_threadgroup.i16";
    dword_27C8D7EC0 = 1;
    qword_27C8D7EC8 = AGCLLVMUserShader::buildTileQuadgroupsPerThreadgroup;
    qword_27C8D7ED0 = 0;
    dword_27C8D7ED8 = 2;
    word_27C8D7EDC = 0;
    qword_27C8D7EE0 = "air.get_quad_group.i32";
    dword_27C8D7EE8 = 1;
    qword_27C8D7EF0 = AGCLLVMUserShader::buildTileQuadgroupIndexInThreadgroup;
    qword_27C8D7EF8 = 0;
    dword_27C8D7F00 = 2;
    word_27C8D7F04 = 0;
    qword_27C8D7F08 = "air.get_quad_group.i16";
    dword_27C8D7F10 = 1;
    qword_27C8D7F18 = AGCLLVMUserShader::buildTileQuadgroupIndexInThreadgroup;
    qword_27C8D7F20 = 0;
    dword_27C8D7F28 = 2;
    word_27C8D7F2C = 0;
    qword_27C8D7F30 = "air.get_simdgroups_per_threadgroup.i32";
    dword_27C8D7F38 = 1;
    qword_27C8D7F40 = AGCLLVMUserTileShader::buildSimdgroupsPerThreadgroup;
    qword_27C8D7F48 = 0;
    dword_27C8D7F50 = 2;
    word_27C8D7F54 = 0;
    qword_27C8D7F58 = "air.get_simdgroups_per_threadgroup.i16";
    dword_27C8D7F60 = 1;
    qword_27C8D7F68 = AGCLLVMUserTileShader::buildSimdgroupsPerThreadgroup;
    qword_27C8D7F70 = 0;
    dword_27C8D7F78 = 2;
    word_27C8D7F7C = 0;
    qword_27C8D7F80 = "air.get_dispatch_simdgroups_per_threadgroup.i32";
    dword_27C8D7F88 = 1;
    qword_27C8D7F90 = AGCLLVMUserTileShader::buildDispatchSimdgroupsPerThreadgroup;
    qword_27C8D7F98 = 0;
    dword_27C8D7FA0 = 2;
    word_27C8D7FA4 = 0;
    qword_27C8D7FA8 = "air.get_dispatch_simdgroups_per_threadgroup.i16";
    dword_27C8D7FB0 = 1;
    qword_27C8D7FB8 = AGCLLVMUserTileShader::buildDispatchSimdgroupsPerThreadgroup;
    qword_27C8D7FC0 = 0;
    dword_27C8D7FC8 = 2;
    word_27C8D7FCC = 0;
    qword_27C8D7FD0 = "air.get_stage_in_grid_origin.i32";
    dword_27C8D7FD8 = 1;
    qword_27C8D7FE0 = AGCLLVMUserTileShader::buildStageInOrigin;
    qword_27C8D7FE8 = 0;
    dword_27C8D7FF0 = 4;
    word_27C8D7FF4 = 0;
    qword_27C8D7FF8 = "air.get_stage_in_grid_origin.i16";
    dword_27C8D8000 = 1;
    qword_27C8D8008 = AGCLLVMUserTileShader::buildStageInOrigin;
    qword_27C8D8010 = 0;
    dword_27C8D8018 = 4;
    word_27C8D801C = 0;
    qword_27C8D8020 = "air.get_stage_in_grid_size.i32";
    dword_27C8D8028 = 1;
    qword_27C8D8030 = AGCLLVMUserTileShader::buildStageInSize;
    qword_27C8D8038 = 0;
    dword_27C8D8040 = 4;
    word_27C8D8044 = 0;
    qword_27C8D8048 = "air.get_stage_in_grid_size.i16";
    dword_27C8D8050 = 1;
    qword_27C8D8058 = AGCLLVMUserTileShader::buildStageInSize;
    qword_27C8D8060 = 0;
    dword_27C8D8068 = 4;
    word_27C8D806C = 0;
    qword_27C8D8070 = "air.get_quadgroup_index_in_threadgroup.i32";
    dword_27C8D8078 = 1;
    qword_27C8D8080 = AGCLLVMUserShader::buildTileQuadgroupIndexInThreadgroup;
    qword_27C8D8088 = 0;
    dword_27C8D8090 = 2;
    word_27C8D8094 = 0;
    qword_27C8D8098 = "air.get_quadgroup_index_in_threadgroup.i16";
    dword_27C8D80A0 = 1;
    qword_27C8D80A8 = AGCLLVMUserShader::buildTileQuadgroupIndexInThreadgroup;
    qword_27C8D80B0 = 0;
    dword_27C8D80B8 = 2;
    word_27C8D80BC = 0;
    qword_27C8D80C0 = "air.get_thread_index_in_quadgroup.i32";
    dword_27C8D80C8 = 1;
    qword_27C8D80D0 = AGCLLVMUserTileShader::buildQuadElement;
    qword_27C8D80D8 = 0;
    dword_27C8D80E0 = 2;
    word_27C8D80E4 = 0;
    qword_27C8D80E8 = "air.get_thread_index_in_quadgroup.i16";
    dword_27C8D80F0 = 1;
    qword_27C8D80F8 = AGCLLVMUserTileShader::buildQuadElement;
    qword_27C8D8100 = 0;
    dword_27C8D8108 = 2;
    word_27C8D810C = 0;
    qword_27C8D8110 = "air.get_dispatch_threads_per_threadgroup.i32";
    dword_27C8D8118 = 1;
    qword_27C8D8120 = AGCLLVMUserShader::buildTileThreadsPerThreadgroup;
    qword_27C8D8128 = 0;
    dword_27C8D8130 = 4;
    word_27C8D8134 = 0;
    qword_27C8D8138 = "air.get_dispatch_threads_per_threadgroup.i16";
    dword_27C8D8140 = 1;
    qword_27C8D8148 = AGCLLVMUserShader::buildTileThreadsPerThreadgroup;
    qword_27C8D8150 = 0;
    dword_27C8D8158 = 4;
    word_27C8D815C = 0;
  }

  for (i = 0; i != 36; ++i)
  {
    v5 = &AGCLLVMUserTileShader::replaceWorkitemFunctions(void)::workitem_functions[5 * i];
    v85 = v5;
    if (*v5)
    {
      strlen(*v5);
    }

    Function = llvm::Module::getFunction();
    if (Function)
    {
      v7 = *(v85 + 8);
      v81 = Function;
      if (v7 == 12)
      {
        for (j = *(Function + 8); j; v101 = 0uLL)
        {
          v11 = *(j + 24);
          j = *(j + 8);
          llvm::IRBuilderBase::SetInsertPoint(v99, v11);
          v12 = v105 + *(*v105 - 24);
          v95 = v101;
          llvm::IRBuilderBase::getCurrentDebugLocation(&v96, v99);
          v97 = v102;
          AGCLLVMBuilder::InsertPoint::restoreIP(&v95, (v12 + 1712));
          if (v96)
          {
            llvm::MetadataTracking::untrack();
          }

          v13 = v85[2];
          v14 = v85[3];
          v15 = (v105 + (v14 >> 1));
          if (v14)
          {
            v13 = *(*v15 + v13);
          }

          (v13)(v15, v11);
        }

        goto LABEL_123;
      }

      if (v7 == 11)
      {
        v8 = v85[2];
        if (v8)
        {
          v9 = strlen(v85[2]);
          *&v106[0] = &v106[1] + 8;
          *(v106 + 8) = xmmword_20E70C500;
          llvm::SmallVectorImpl<char>::append<char const*,void>(v106, v8, &v8[v9]);
        }

        else
        {
          *&v106[1] = 64;
          v106[0] = &v106[1] + 8;
        }

        llvm::SmallVectorImpl<char>::append<char const*,void>(v106, ".", "");
        if (*&v106[1] < *(&v106[0] + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        llvm::Module::getOrInsertFunction();
        llvm::Value::replaceAllUsesWith();
        if (*&v106[0] != (&v106[1] + 8))
        {
          free(*&v106[0]);
        }

        goto LABEL_123;
      }

      v80 = i;
      v16 = **(*(Function + 24) + 16);
      v17 = ((*(v16 + 8) & 0xFE) == 18) & *(v85 + 37);
      if (v17 == 1)
      {
        v18 = *(v16 + 32);
      }

      else
      {
        v18 = 1;
      }

      v83 = v18;
      v79 = v102;
      v19 = *(Function + 8);
      if (!v19)
      {
LABEL_117:
        v102 = v79;
        i = v80;
LABEL_123:
        llvm::Function::eraseFromParent(v81);
        continue;
      }

      while (1)
      {
        v20 = *(v19 + 24);
        v82 = *(v19 + 8);
        v21 = *(v85 + 2);
        if (v21 == 1)
        {
          v22 = 0;
        }

        else
        {
          if (v21 != 2)
          {
            goto LABEL_27;
          }

          v22 = 121;
        }

        v102 = v22;
LABEL_27:
        llvm::IRBuilderBase::SetInsertPoint(v99, v20);
        v23 = llvm::UndefValue::get();
        if (v83)
        {
          for (k = 0; k != v83; ++k)
          {
            v84 = v23;
            v107 = 0;
            memset(v106, 0, sizeof(v106));
            v25 = llvm::CallBase::arg_end(v20) - v20 + 32 * (*(v20 + 5) & 0x7FFFFFF);
            if ((v25 & 0x1FFFFFFFE0) != 0)
            {
              v26 = (v25 >> 5);
              v27 = v106;
              v28 = v20;
              do
              {
                v29 = (v28 - 32 * (*(v20 + 5) & 0x7FFFFFF));
                v30 = *v29;
                *v27 = *v29;
                if (v17 && (*(*v30 + 8) & 0xFE) == 0x12)
                {
                  v94 = 257;
                  v31 = llvm::ConstantInt::get();
                  *v27 = llvm::IRBuilderBase::CreateExtractElement(v99, v30, v31, &PrimitiveSizeInBits);
                }

                ++v27;
                v28 = (v28 + 32);
                --v26;
              }

              while (v26);
            }

            if (*(v85 + 36))
            {
              v32 = **&v106[0];
              if ((*(**&v106[0] + 8) & 0xFE) == 0x12)
              {
                v32 = **(v32 + 2);
              }

              PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v32);
              v93 = v33;
              if (llvm::TypeSize::operator unsigned long long() == 32)
              {
                v34 = 0;
              }

              else
              {
                v48 = v104[4];
                if ((*(**&v106[0] + 8) & 0xFE) == 0x12)
                {
                  v48 = llvm::FixedVectorType::get();
                }

                if ((v25 & 0x1FFFFFFFE0) != 0)
                {
                  v49 = (v25 >> 5);
                  v50 = v106;
                  do
                  {
                    v51 = *v50;
                    v94 = 257;
                    *v50++ = llvm::IRBuilderBase::CreateFPExt(v99, v51, v48, &PrimitiveSizeInBits);
                    --v49;
                  }

                  while (v49);
                  v34 = 1;
                }

                else
                {
                  v34 = 1;
                }
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

            v36 = v105 + *(*v105 - 24);
            v89 = v101;
            llvm::IRBuilderBase::getCurrentDebugLocation(&v90, v99);
            v91 = v102;
            AGCLLVMBuilder::InsertPoint::restoreIP(&v89, (v36 + 1712));
            if (v90)
            {
              llvm::MetadataTracking::untrack();
            }

            FPTrunc = 0;
            v38 = *(v85 + 8);
            if (v38 > 5)
            {
              if (v38 <= 7)
              {
                if (v38 == 6)
                {
                  v56 = v85[2];
                  v65 = v85[3];
                  v59 = *(&v106[0] + 1);
                  v58 = *&v106[0];
                  v61 = (v105 + (v65 >> 1));
                  if (v65)
                  {
                    v56 = *(*v61 + v56);
                  }

                  v60 = FastMathFlags;
                }

                else
                {
                  v56 = v85[2];
                  v57 = v85[3];
                  v59 = *(&v106[0] + 1);
                  v58 = *&v106[0];
                  v60 = *&v106[1];
                  v61 = (v105 + (v57 >> 1));
                  if (v57)
                  {
                    v67 = (*(*v61 + v56))(v61, *&v106[0], *(&v106[0] + 1), *&v106[1]);
                    goto LABEL_103;
                  }
                }

LABEL_102:
                v67 = (v56)(v61, v58, v59, v60);
                goto LABEL_103;
              }

              switch(v38)
              {
                case 8:
                  v44 = v85[2];
                  v68 = v85[3];
                  v69 = *(&v106[0] + 1);
                  v46 = *&v106[0];
                  v70 = *&v106[1];
                  v47 = (v105 + (v68 >> 1));
                  if (v68)
                  {
                    v44 = *(*v47 + v44);
                  }

                  v74 = FastMathFlags;
                  goto LABEL_98;
                case 9:
                  v56 = v85[2];
                  v73 = v85[3];
                  v61 = (v105 + (v73 >> 1));
                  if (v73)
                  {
                    v56 = *(*v61 + v56);
                  }

                  v58 = v106;
                  v59 = &unk_20E75F419;
                  v60 = 0;
                  goto LABEL_102;
                case 10:
                  v44 = v85[2];
                  v45 = v85[3];
                  v46 = *v20;
                  v47 = (v105 + (v45 >> 1));
                  if (v45)
                  {
                    v44 = *(*v47 + v44);
                  }

                  v69 = v106;
                  v70 = &unk_20E75F419;
                  v74 = 0;
LABEL_98:
                  v67 = (v44)(v47, v46, v69, v70, v74);
                  goto LABEL_103;
              }
            }

            else
            {
              if (v38 > 2)
              {
                if (v38 != 3)
                {
                  if (v38 == 4)
                  {
                    v71 = (*&v106[0] + 24);
                    if (*(*&v106[0] + 32) >= 0x41u)
                    {
                      v71 = *v71;
                    }

                    v42 = *v71;
                    v39 = v85[2];
                    v72 = v85[3];
                    v41 = *v20;
                    v43 = (v105 + (v72 >> 1));
                    if (v72)
                    {
                      v39 = *(*v43 + v39);
                    }
                  }

                  else
                  {
                    v39 = v85[2];
                    v40 = v85[3];
                    v42 = *(&v106[0] + 1);
                    v41 = *&v106[0];
                    v43 = (v105 + (v40 >> 1));
                    if (v40)
                    {
                      v39 = *(*v43 + v39);
                    }
                  }

                  v67 = (v39)(v43, v41, v42);
                  goto LABEL_103;
                }

                v52 = v85[2];
                v66 = v85[3];
                v54 = *&v106[0];
                v55 = (v105 + (v66 >> 1));
                if ((v66 & 1) == 0)
                {
                  goto LABEL_78;
                }

                goto LABEL_77;
              }

              if (v38 == 1)
              {
                v62 = v85[2];
                v63 = v85[3];
                v64 = (v105 + (v63 >> 1));
                if (v63)
                {
                  v62 = *(*v64 + v62);
                }

                v67 = (v62)(v64);
                goto LABEL_103;
              }

              if (v38 == 2)
              {
                v52 = v85[2];
                v53 = v85[3];
                v54 = *v20;
                v55 = (v105 + (v53 >> 1));
                if ((v53 & 1) == 0)
                {
LABEL_78:
                  v67 = (v52)(v55, v54);
LABEL_103:
                  FPTrunc = v67;
                  goto LABEL_104;
                }

LABEL_77:
                v52 = *(*v55 + v52);
                goto LABEL_78;
              }
            }

LABEL_104:
            v75 = v105 + *(*v105 - 24);
            v86 = *(v75 + 110);
            llvm::IRBuilderBase::getCurrentDebugLocation(&v87, (v75 + 1712));
            v88 = *(v75 + 452);
            AGCLLVMBuilder::InsertPoint::restoreIP(&v86, v99);
            if (v87)
            {
              llvm::MetadataTracking::untrack();
            }

            if (v34)
            {
              v76 = *v20;
              if (v17 && (*(v76 + 8) & 0xFE) == 0x12)
              {
                v76 = **(v76 + 16);
              }

              v94 = 257;
              FPTrunc = llvm::IRBuilderBase::CreateFPTrunc(v99, FPTrunc, v76, &PrimitiveSizeInBits);
            }

            if (v17)
            {
              v94 = 257;
              v77 = llvm::ConstantInt::get();
              FPTrunc = llvm::IRBuilderBase::CreateInsertElement(v99, v84, FPTrunc, v77, &PrimitiveSizeInBits);
            }

            v23 = FPTrunc;
          }
        }

        if (*v20 != v104[1])
        {
          llvm::Value::replaceAllUsesWith();
        }

        llvm::Instruction::eraseFromParent(v20);
        v19 = v82;
        if (!v82)
        {
          goto LABEL_117;
        }
      }
    }
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v104);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v103);
  if (v99[0] != &v100)
  {
    free(v99[0]);
  }

  return v78;
}

uint64_t AGCLLVMUserTileShader::buildQuadElement(AGCLLVMUserTileShader *this, llvm::Type *a2)
{
  v4 = *(this + *(*this - 24) + 2168);
  v5 = (*(*v4 + 688))(v4);
  v6 = this + *(*this - 24);
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

uint64_t AGCLLVMUserTileShader::buildQuadgroupsPerThreadgroupCommon<5u>(AGCLLVMUserShader *a1, llvm::Type *a2)
{
  v4 = a1 + *(*a1 - 24);
  v5 = (*(*a1 + 480))(a1, 0);
  v6 = AGCLLVMBuilder::truncateToSmall((a1 + *(*a1 - 24) + 1704), v5, a2);
  v7 = (*(*a1 + 480))(a1, 1);
  v8 = AGCLLVMBuilder::truncateToSmall((a1 + *(*a1 - 24) + 1704), v7, a2);
  v21 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v4 + 1712), v6, v8, v20);
  v10 = a1 + *(*a1 - 24);
  v12 = AGCLLVMUserShader::buildTileThreadsPerThreadgroup(a1, a2, 2, v11);
  v21 = 257;
  v13 = llvm::IRBuilderBase::CreateMul((v10 + 1712), Mul, v12, v20);
  v14 = a1 + *(*a1 - 24);
  v15 = llvm::ConstantInt::get();
  v21 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v14 + 1712), v13, v15, v20);
  v17 = llvm::ConstantInt::get();
  v19[16] = 257;
  return llvm::IRBuilderBase::CreateLShr((v14 + 1712), Add, v17, v19);
}

uint64_t AGCLLVMUserTileShader::setupImageBlocks(AGCLLVMUserTileShader *this)
{
  v16 = *MEMORY[0x277D85DE8];
  AGCLLVMAirImageBlockGen3::AGCLLVMAirImageBlockGen3(v15, this, *(this + *(*this - 24) + 2136), *(this + *(*this - 24) + 2168), (this + 224));
  AGCLLVMAirImageBlockGen3::replaceBulkMemWrites(v15, v2, v3, v4);
  if (*(this + 3766) == 1)
  {
    v5 = *(this + 1882) & 0xFF00;
    v6 = *(this + 1132) & 0xFF00;
    v7 = *(this + 1132);
    v8 = *(this + 1882);
    v9 = 0x10000;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v9 = 0;
    v5 = 0;
    v8 = 0;
  }

  v10 = AGCLLVMAirImageBlockGen3::setupImageBlocks(v15, (this + *(*this - 24) + 1656), v7 | v6 | v9, v5 | v8 | v9, *(this + 585));
  *(this + 4720) = v15[1040];
  *(this + *(*this - 24) + 1760) = 0u;
  AGCLLVMObject::replaceLIBSpillingFunctions((this + *(*this - 24)), 0);
  AGCLLVMAirImageBlockGen3::~AGCLLVMAirImageBlockGen3(v15, v11, v12, v13);
  return v10;
}

uint64_t AGCLLVMUserTileShader::setupShaderOutputs(AGCLLVMUserTileShader *this)
{
  Function = llvm::Module::getFunction();
  llvm::Instruction::eraseFromParent(*(*(Function + 1) + 24));
  llvm::Function::eraseFromParent(Function);
  return 1;
}

uint64_t AGCLLVMUserTileShader::setupShaderInputs(AGCLLVMUserTileShader *this)
{
  v2 = *(this + 21);
  v3 = *(v2 + 80);
  if (v3)
  {
    v4 = v3 - 24;
  }

  else
  {
    v4 = 0;
  }

  if (*(v2 + 18))
  {
    llvm::Function::BuildLazyArguments(*(this + 21));
    v6 = *(this + 21);
    v5 = *(v2 + 88);
    if (*(v6 + 18))
    {
      llvm::Function::BuildLazyArguments(*(this + 21));
    }

    v2 = v6;
  }

  else
  {
    v5 = *(v2 + 88);
  }

  v7 = *(v2 + 88) + 40 * *(v2 + 96);
  v8 = 1;
  if (v5 != v7)
  {
    v9 = this + 1704;
    v70 = this + 2168;
    v10 = "air.thread_index_in_quadgroup";
    v11 = "air.imageblock";
    while (1)
    {
      v12 = *(*(this + 10) + 8 * *(v5 + 32));
      if (v12)
      {
        v13 = *(v4 + 40);
        if (v13)
        {
          v14 = (v13 - 24);
        }

        else
        {
          v14 = 0;
        }

        AGCLLVMBuilder::SetInsertPoint(&v9[*(*this - 24)], v14, *(this + 5));
        AGCLLVMUserShader::replaceInputArgument(this, v5, *(v5 + 32), v12);
        if (isStringMDNode(*(v12 - 8 * *(v12 + 8) + 8), v10) || isStringMDNode(*(v12 - 8 * *(v12 + 8) + 8), "air.quadgroup_index_in_threadgroup"))
        {
          *(this + 16) = 1;
        }

        else
        {
          if (isStringMDNode(*(v12 - 8 * *(v12 + 8) + 8), v11))
          {
            if (*(this + 3766) == 1)
            {
              v15 = *(this + 1882) | 0x10000;
            }

            else
            {
              v15 = 0;
            }

            v77 = v15 | v77 & 0xFFFFFFFF00000000;
            v23 = AGCLLVMUserShader::setupLIBMetadata(this, 2u, v77, v12, *(this + 585), 0, 0);
            if ((v23 & 1) == 0)
            {
              return 0;
            }

            if ((v23 & 0x100000000) != 0)
            {
              *(this + 1882) = WORD1(v23);
            }

            llvm::UndefValue::get();
LABEL_64:
            llvm::Value::replaceAllUsesWith();
            goto LABEL_18;
          }

          if (isStringMDNode(*(v12 - 8 * *(v12 + 8) + 8), "air.render_target_array_index"))
          {
            v16 = v11;
            v17 = this + *(*this - 24);
            v18 = *(v17 + 271);
            if (v18[1861])
            {
              v19 = v10;
              v20 = *v5;
              v21 = (*(*v18 + 688))(v18);
              v22 = this + *(*this - 24);
              v78 = *(v22 + 110);
              llvm::IRBuilderBase::getCurrentDebugLocation(&v79, (v22 + 1712));
              v80 = *(v22 + 452);
              AGCLLVMGen3TargetLowerer::buildLayerId(v21, &v78, v20);
              if (v79)
              {
                llvm::MetadataTracking::untrack();
              }

              v10 = v19;
            }

            else
            {
              v36 = llvm::ConstantInt::get();
              v37 = *v5;
              v81 = 257;
              llvm::IRBuilderBase::CreateCast((v17 + 1712), 38, v36, v37, &v78);
            }

            llvm::Value::replaceAllUsesWith();
            v11 = v16;
            goto LABEL_18;
          }

          if (isStringMDNode(*(v12 - 8 * *(v12 + 8) + 8), "air.stage_in_grid_origin") || isStringMDNode(*(v12 - 8 * *(v12 + 8) + 8), "air.stage_in_grid_size"))
          {
            String = llvm::MDString::getString(*(v12 - 8 * *(v12 + 8) + 8));
            v26 = v25;
            v27 = *v5;
            if (!*(this + 559))
            {
              v75 = llvm::PointerType::get();
              v28 = (*(**(*&v70[*(*this - 24)] + 920) + 496))();
              *&v78 = "agc.stagein_buffer_pointer.";
              v79 = v28;
              v81 = 2051;
              v29 = (*(**(*&v70[*(*this - 24)] + 920) + 496))();
              GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v75, &v78, v29, 0x18u, 5u, 0);
              llvm::ValueHandleBase::operator=((this + 4456), GlobalBufferBinding);
            }

            llvm::FixedVectorType::get();
            v71 = llvm::UndefValue::get();
            v31 = *(*this - 24);
            v32 = *(this + 559);
            v81 = 257;
            Load = AGCLLVMBuilder::CreateLoad(&v9[v31], v32, &v78);
            v74 = v27;
            v76 = Load;
            if (v26 == 22)
            {
              if (*String != 0x676174732E726961 || String[1] != 0x6972675F6E695F65 || *(String + 14) != 0x657A69735F646972)
              {
                return 0;
              }
            }

            else
            {
              if (v26 != 24)
              {
                return 0;
              }

              v34 = *String == 0x676174732E726961 && String[1] == 0x6972675F6E695F65;
              if (!v34 || String[2] != 0x6E696769726F5F64)
              {
                return 0;
              }
            }

            v40 = this + *(*this - 24);
            v41 = *(v40 + 238);
            v42 = Load;
            v43 = llvm::ConstantInt::get();
            v81 = 257;
            GEP = llvm::IRBuilderBase::CreateGEP((v40 + 1712), v41, v42, v43, &v78);
            v45 = *(*this - 24);
            v81 = 257;
            v46 = AGCLLVMBuilder::CreateLoad(&v9[v45], GEP, &v78);
            v47 = this + *(*this - 24);
            v81 = 257;
            v48 = llvm::ConstantInt::get();
            InsertElement = llvm::IRBuilderBase::CreateInsertElement((v47 + 1712), v71, v46, v48, &v78);
            v49 = this + *(*this - 24);
            v50 = *(v49 + 238);
            v51 = llvm::ConstantInt::get();
            v81 = 257;
            v52 = llvm::IRBuilderBase::CreateGEP((v49 + 1712), v50, v76, v51, &v78);
            v53 = *(*this - 24);
            v81 = 257;
            v54 = AGCLLVMBuilder::CreateLoad(&v9[v53], v52, &v78);
            v55 = this + *(*this - 24);
            v81 = 257;
            v56 = llvm::ConstantInt::get();
            v73 = llvm::IRBuilderBase::CreateInsertElement((v55 + 1712), InsertElement, v54, v56, &v78);
            v57 = this + *(*this - 24);
            v58 = *(v57 + 238);
            v59 = llvm::ConstantInt::get();
            v81 = 257;
            v60 = llvm::IRBuilderBase::CreateGEP((v57 + 1712), v58, v76, v59, &v78);
            v61 = *(*this - 24);
            v81 = 257;
            v62 = AGCLLVMBuilder::CreateLoad(&v9[v61], v60, &v78);
            v63 = this + *(*this - 24);
            v81 = 257;
            v64 = llvm::ConstantInt::get();
            v65 = llvm::IRBuilderBase::CreateInsertElement((v63 + 1712), v73, v62, v64, &v78);
            v66 = v74;
            v10 = "air.thread_index_in_quadgroup";
            v11 = "air.imageblock";
            if ((*(v74 + 8) & 0xFE) == 0x12)
            {
              v67 = *(v74 + 32);
            }

            else
            {
              v67 = 1;
            }

            v68 = AGCLLVMBuilder::subrangeVector(&v9[*(*this - 24)], v65, 0, v67, 1);
            if ((*(v74 + 8) & 0xFE) == 0x12)
            {
              v66 = **(v74 + 16);
            }

            if (!AGCLLVMBuilder::truncateToSmall(&v9[*(*this - 24)], v68, v66))
            {
              return 0;
            }

            goto LABEL_64;
          }
        }
      }

LABEL_18:
      v5 += 40;
      if (v5 == v7)
      {
        return 1;
      }
    }
  }

  return v8;
}

llvm::Instruction *AGCLLVMUserTileShader::addWrapperPostfix(AGCLLVMUserTileShader *this)
{
  v10[2] = *MEMORY[0x277D85DE8];
  result = AGCLLVMUserObject::detectTextureWrites(this);
  if (result)
  {
    v3 = (this + *(*this - 24));
    v4 = v3[271];
    v5 = *(v4 + 1048);
    if (v5)
    {
      v6 = strlen(*(v4 + 1048));
    }

    else
    {
      v6 = 0;
    }

    v7 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>((v3 + 213), v5, v6, v3[231], v3[237], v3[237]);
    v10[0] = llvm::ConstantInt::get();
    v10[1] = llvm::ConstantInt::get();
    v8 = (this + *(*this - 24));
    v9[16] = 257;
    return llvm::IRBuilderBase::CreateCall(v8 + 214, *(v7 + 24), v7, v10, 2, v9);
  }

  return result;
}

char *llvm::PassInfoMixin<InitCompileTileShaderPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x4B)
  {
    v1 = v0;
  }

  else
  {
    v1 = 75;
  }

  v2 = &aStringrefLlvmG_70[v1];
  v3 = 75 - v1;
  if ((75 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 75 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileTileShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileTileShaderPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::PassInfoMixin<ValidateMaxTTPTGTileShaderPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x50)
  {
    v1 = v0;
  }

  else
  {
    v1 = 80;
  }

  v2 = &aStringrefLlvmG_69[v1];
  v3 = 80 - v1;
  if ((80 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 80 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,ValidateMaxTTPTGTileShaderPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<ValidateMaxTTPTGTileShaderPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectTemplateWrapper<AGCLLVMUserTileShader>,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
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

  v2 = &aStringrefLlvmG_68[v1];
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

void AGCLLVMUserTileShader::~AGCLLVMUserTileShader(AGCLLVMUserTileShader *this)
{
  *this = &unk_2825A64B8;
  v2 = (this + 4752);
  *(this + 594) = &unk_2825A6820;
  *(this + 807) = &unk_2825A6930;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 588));
  v5 = (this + 4656);
  v6 = -144;
  while (1)
  {
    v7 = *(v5 + 2);
    if (v7 != -8192 && v7 != -4096 && v7 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v5);
    }

    v5 = (v5 - 24);
    v6 += 24;
    if (!v6)
    {
      AGCLLVMUserShader::~AGCLLVMUserShader(this, off_2825A6940, v3, v4);
      AGCLLVMObject::~AGCLLVMObject(v2);

      JUMPOUT(0x20F331DC0);
    }
  }
}

{
  *this = &unk_2825A64B8;
  v2 = (this + 4752);
  *(this + 594) = &unk_2825A6820;
  *(this + 807) = &unk_2825A6930;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 588));
  v5 = (this + 4656);
  v6 = -144;
  do
  {
    v7 = *(v5 + 2);
    if (v7 != -8192 && v7 != -4096 && v7 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v5);
    }

    v5 = (v5 - 24);
    v6 += 24;
  }

  while (v6);
  AGCLLVMUserShader::~AGCLLVMUserShader(this, off_2825A6940, v3, v4);
  AGCLLVMObject::~AGCLLVMObject(v2);
}

AGCLLVMUserObject *AGCLLVMUserObject::createDylibResource(AGCLLVMUserObject *this, int a2)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v2 = this;
  switch(a2)
  {
    case 0:

      return AGCLLVMUserObject::createDylibBaseGlobal(this);
    case 1:
      AGCLLVMUserObject::buildBindlessImageArgumentPointer(this, 0, 0);
      return *(v2 + 303);
    case 2:
      AGCLLVMUserObject::buildBindlessImageArgumentPointer(this, 0, 1u);
      return *(v2 + 306);
    case 3:
      AGCLLVMUserObject::buildImageTextureBufferLength(this, 0);
      return *(v2 + 309);
    case 4:
      this = *(this + 315);
      if (!this)
      {
        AGCLLVMUserObject::createSamplerHeapGlobal(v2);
        return *(v2 + 315);
      }

      return this;
    case 5:
      AGCLLVMUserObject::createPerEncoderIndirectionTableGlobal(this);
      goto LABEL_35;
    case 6:
      AGCLLVMUserObject::createIntersectionFunctionTableHeapGlobal(this);
      goto LABEL_35;
    case 7:
      AGCLLVMUserObject::createVisibleFunctionTableHeapGlobal(this);
LABEL_35:
      this = v7;
      break;
    case 8:

      this = AGCLLVMUserObject::createAccelerationStructureHeapGlobal(this);
      break;
    case 9:

      this = AGCLLVMUserObject::createGlobalBindingTableGlobal(this);
      break;
    case 10:
      AGCLLVMUserObject::createSCSIFTHeapGlobal(this);
      this = *(v2 + 324);
      break;
    case 11:
      AGCLLVMUserObject::createSCSUserDataBoundGlobal(this);
      this = *(v2 + 327);
      break;
    case 12:

      this = AGCLLVMUserObject::createGlobalSCSLayoutGlobal(this);
      break;
    case 13:
      AGCLLVMUserObject::createSCSDriverDataStartGlobal(this);
      this = *(v2 + 330);
      break;
    case 14:

      this = AGCLLVMUserObject::createIFBEmulationIFTableGlobal(this);
      break;
    case 15:

      this = AGCLLVMUserObject::createIntersectionFunctionHeapGlobal(this);
      break;
    case 16:

      this = AGCLLVMUserObject::createTensorHeapGlobal(this);
      break;
    case 17:
    case 18:
      v3 = (a2 - 17);
      if ((*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 8)
      {
        v4 = v2 + 24 * v3;
        if (!*(v4 + 379))
        {
          if ((*(*(v2 + *(*v2 - 24)) + 80))(v2 + *(*v2 - 24)) == 7 || (*(*(v2 + *(*v2 - 24)) + 80))(v2 + *(*v2 - 24)) == 22)
          {
            v5 = *(*(v2 + *(*v2 - 24) + 2168) + 920);
            v6 = (*(*v5 + 672))(v5, v3);
          }

          else
          {
            v8 = *(*(v2 + *(*v2 - 24) + 2168) + 920);
            v6 = (*(*v8 + 384))(v8, v3);
          }

          v9 = v6;
          v10 = llvm::PointerType::get();
          __src = "agc.stage_specific_dylib_global.";
          v19 = 259;
          v16 = 264;
          LODWORD(v15[0]) = v3;
          llvm::Twine::concat(v20, &__src, v15);
          GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(v2, v10, v20, v9, 0, 5u, 0);
          llvm::ValueHandleBase::operator=((v4 + 3016), GlobalBufferBinding);
        }
      }

      v12 = v2 + 24 * v3;
      this = *(v12 + 379);
      if (this)
      {
        v13 = (v12 + 3032);
        __src = llvm::ValueAsMetadata::get();
        v20[0] = v21;
        v20[1] = 0x100000000;
        llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v20, &__src, v18);
        Impl = llvm::MDTuple::getImpl();
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v2 + 3064, Impl);
        if (v20[0] != v21)
        {
          free(v20[0]);
        }

        this = *v13;
      }

      break;
    default:
      return this;
  }

  return this;
}

uint64_t AGCLLVMUserObject::createDylibBaseGlobal(AGCLLVMUserObject *this)
{
  result = *(this + 312);
  if (!result)
  {
    v3 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
    v4 = **(*(this + *(*this - 24) + 2168) + 920);
    if (v3 == 27)
    {
      v5 = v4[106]();
    }

    else if (v3 == 7)
    {
      v5 = v4[82]();
    }

    else
    {
      v5 = v4[46]();
    }

    v6 = v5;
    v7 = llvm::PointerType::get();
    v10 = "agc.dylib_base";
    v11 = 259;
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v7, &v10, v6, 0, 5u, 0);
    AGCLLVMObject::setDylibLinkage(GlobalBufferBinding, v9);
    llvm::ValueHandleBase::operator=((this + 2480), GlobalBufferBinding);
    return *(this + 312);
  }

  return result;
}

unsigned __int8 *AGCLLVMUserObject::buildImageTextureBufferLength(AGCLLVMUserObject *this, llvm::Value *a2)
{
  v4 = (this + *(*this - 24));
  if (*(v4[271] + 1869) == 1)
  {
    v5 = *(this + 175);
    v6 = AGCLLVMUserObject::buildImageArgumentPointer(this, a2, 2);
    v36 = 257;
    llvm::Type::isOpaquePointerTy(*v6);
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v4 + 214, v5, v6, 0, v35);
    v8 = this + *(*this - 24);
    v36 = 257;
    v9 = llvm::ConstantInt::get();
    return llvm::IRBuilderBase::CreateExtractElement((v8 + 1712), AlignedLoad, v9, v35);
  }

  if (!*(this + 309))
  {
    v26 = (*(*v4 + 10))(this + *(*this - 24));
    if (v26 > 0x1B)
    {
      goto LABEL_17;
    }

    if (((1 << v26) & 0x400198) != 0)
    {
      v27 = *(*(this + *(*this - 24) + 2168) + 920);
      v28 = (*(*v27 + 544))(v27);
      goto LABEL_12;
    }

    if (v26 == 27)
    {
      v32 = *(*(this + *(*this - 24) + 2168) + 920);
      v28 = (*(*v32 + 856))(v32);
    }

    else
    {
LABEL_17:
      v33 = *(*(this + *(*this - 24) + 2168) + 920);
      v28 = (*(*v33 + 272))(v33);
    }

LABEL_12:
    v29 = v28;
    v30 = llvm::PointerType::get();
    v35[0] = "agc.texture_heap.texture_buffer_length";
    v36 = 259;
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v30, v35, v29, 0, 5u, 0);
    llvm::ValueHandleBase::operator=((this + 2456), GlobalBufferBinding);
    if (a2)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

LABEL_5:
  v11 = *(this + 309);
  v12 = AGCLLVMUserObject::buildImageHeapIndex(this, a2);
  UDiv = v12;
  v14 = *this;
  if (!*(*(this + *(*this - 24) + 2168) + 1900))
  {
    v15 = AGCLLVMObject::useTextureIDLegacyMode(v12);
    v14 = *this;
    if (v15)
    {
      v16 = this + *(v14 - 24);
      v17 = llvm::ConstantInt::get();
      v36 = 257;
      UDiv = llvm::IRBuilderBase::CreateUDiv((v16 + 1712), UDiv, v17, v35);
      v14 = *this;
    }
  }

  v18 = (this + *(v14 - 24));
  v19 = v18[239];
  v36 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v18 + 213), v11, v35);
  v34[16] = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v18 + 214), v19, Load, UDiv, v34);
  v22 = this + *(*this - 24);
  v36 = 257;
  v23 = AGCLLVMBuilder::CreateLoad((v22 + 1704), GEP, v35);
  v24 = this + *(*this - 24);
  v25 = *(v24 + 238);
  v36 = 257;
  return llvm::IRBuilderBase::CreateCast((v24 + 1712), 38, v23, v25, v35);
}

llvm::PointerType *AGCLLVMUserObject::createPerEncoderIndirectionTableGlobal(AGCLLVMUserObject *this)
{
  v2 = this + *(*this - 24);
  v3 = *(v2 + 239);
  v4 = (*(**(*(v2 + 271) + 920) + 1216))(*(*(v2 + 271) + 920));
  v5 = llvm::ArrayType::get(v3, v4);
  if (!*(this + 333))
  {
    v6 = v5;
    v7 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
    if (v7 <= 0x1B)
    {
      if (((1 << v7) & 0x400198) != 0)
      {
        v8 = *(*(this + *(*this - 24) + 2168) + 920);
        v9 = (*(*v8 + 568))(v8);
LABEL_6:
        v10 = v9;
        v11 = llvm::PointerType::get();
        v17[0] = "agc.per_encoder_indirection_table.";
        v17[2] = v10;
        v18 = 2051;
        GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v11, v17, v10, 0, 5u, 0);
        llvm::GlobalValue::setLinkage(GlobalBufferBinding, 10);
        *(GlobalBufferBinding + 80) &= ~1u;
        llvm::Constant::getNullValue(*(GlobalBufferBinding + 3), v13);
        llvm::GlobalVariable::setInitializer();
        llvm::Module::getOrInsertNamedMetadata();
        llvm::ConstantInt::get();
        v17[0] = llvm::ValueAsMetadata::get();
        llvm::MDTuple::getImpl();
        llvm::NamedMDNode::addOperand();
        llvm::ValueHandleBase::operator=((this + 2648), GlobalBufferBinding);
        *(this + 334) = v6;
        return v6;
      }

      if (v7 == 27)
      {
        v15 = *(*(this + *(*this - 24) + 2168) + 920);
        v9 = (*(*v15 + 872))(v15);
        goto LABEL_6;
      }
    }

    v16 = *(*(this + *(*this - 24) + 2168) + 920);
    v9 = (*(*v16 + 296))(v16);
    goto LABEL_6;
  }

  return *(this + 334);
}

llvm::Type *AGCLLVMUserObject::createIntersectionFunctionTableHeapGlobal(AGCLLVMUserObject *this)
{
  if (*(this + 337))
  {
    return *(this + 338);
  }

  {
    v8 = *(*(this + *(*this - 24) + 2168) + 920);
    AGCLLVMUserObject::createIntersectionFunctionTableHeapGlobal(void)::bind_indices[0] = (*(*v8 + 576))(v8);
    dword_27C8D9F34 = (*(**(*(this + *(*this - 24) + 2168) + 920) + 304))();
  }

  v3 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 7 && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 22 && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 8;
  v4 = AGCLLVMUserObject::createIntersectionFunctionTableHeapGlobal(void)::bind_indices[v3];
  v2 = llvm::PointerType::get();
  v9[0] = "agc.intersection_function_table_heap.";
  v9[2] = v4;
  v10 = 2051;
  GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v2, v9, v4, 0, 5u, 0);
  llvm::GlobalValue::setLinkage(GlobalBufferBinding, 10);
  *(GlobalBufferBinding + 80) &= ~1u;
  llvm::Constant::getNullValue(*(GlobalBufferBinding + 3), v6);
  llvm::GlobalVariable::setInitializer();
  llvm::Module::getOrInsertNamedMetadata();
  llvm::ConstantInt::get();
  v9[0] = llvm::ValueAsMetadata::get();
  llvm::MDTuple::getImpl();
  llvm::NamedMDNode::addOperand();
  llvm::ValueHandleBase::operator=((this + 2680), GlobalBufferBinding);
  *(this + 338) = v2;
  return v2;
}

llvm::Type *AGCLLVMUserObject::createVisibleFunctionTableHeapGlobal(AGCLLVMUserObject *this)
{
  if (!*(this + 341))
  {
    v3 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
    if ((v3 - 7) >= 2)
    {
      if (v3 == 27)
      {
        v6 = *(*(this + *(*this - 24) + 2168) + 920);
        v5 = (*(*v6 + 864))(v6);
        goto LABEL_9;
      }

      if (v3 != 22)
      {
        v7 = *(*(this + *(*this - 24) + 2168) + 920);
        v5 = (*(*v7 + 312))(v7);
        goto LABEL_9;
      }
    }

    v4 = *(*(this + *(*this - 24) + 2168) + 920);
    v5 = (*(*v4 + 584))(v4);
LABEL_9:
    v8 = v5;
    v2 = llvm::PointerType::get();
    v12[0] = "agc.visible_function_table_heap.";
    v12[2] = v8;
    v13 = 2051;
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v2, v12, v8, 0, 5u, 0);
    llvm::GlobalValue::setLinkage(GlobalBufferBinding, 10);
    *(GlobalBufferBinding + 80) &= ~1u;
    llvm::Constant::getNullValue(*(GlobalBufferBinding + 3), v10);
    llvm::GlobalVariable::setInitializer();
    llvm::Module::getOrInsertNamedMetadata();
    llvm::ConstantInt::get();
    v12[0] = llvm::ValueAsMetadata::get();
    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::addOperand();
    llvm::ValueHandleBase::operator=((this + 2712), GlobalBufferBinding);
    *(this + 342) = v2;
    return v2;
  }

  return *(this + 342);
}

uint64_t AGCLLVMUserObject::createGlobalBindingTableGlobal(AGCLLVMUserObject *this)
{
  result = *(this + 357);
  if (!result)
  {
    if ((*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) == 7 || (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) == 22 || (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) == 8 || (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) == 3 || (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) == 4)
    {
      v3 = *(*(this + *(*this - 24) + 2168) + 920);
      v4 = (*(*v3 + 784))(v3);
    }

    else
    {
      v8 = *(*(this + *(*this - 24) + 2168) + 920);
      v4 = (*(*v8 + 400))(v8);
    }

    v5 = v4;
    v6 = llvm::PointerType::get();
    v9 = "agc.global_binding_base";
    v10 = 259;
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v6, &v9, v5, 0, 5u, 0);
    llvm::ValueHandleBase::operator=((this + 2840), GlobalBufferBinding);
    return *(this + 357);
  }

  return result;
}

void *AGCLLVMUserObject::createSCSUserDataBoundGlobal(void *this)
{
  if (!this[327])
  {
    v17 = v1;
    v18 = v2;
    v3 = this;
    v4 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
    if ((v4 - 7) < 2 || v4 == 22)
    {
      v6 = *(*(v3 + *(*v3 - 24) + 2168) + 920);
      v7 = (*(*v6 + 1024))(v6);
      v8 = (*(**(*(v3 + *(*v3 - 24) + 2168) + 920) + 760))();
    }

    else
    {
      if (v4 == 27)
      {
        v9 = *(*(v3 + *(*v3 - 24) + 2168) + 920);
        v10 = (*(*v9 + 976))(v9) & 0xFFFFF | 0x900000;
LABEL_12:
        v12 = llvm::ArrayType::get(*(v3 + *(*v3 - 24) + 1904), 2);
        v15[0] = "agc.ria.ray_data_user_bound";
        v16 = 259;
        GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(v3, v12, v15, v10, 0, 0, 0);
        AGCLLVMObject::setDylibLinkage(GlobalBufferBinding, v14);
        return llvm::ValueHandleBase::operator=((v3 + 325), GlobalBufferBinding);
      }

      v11 = *(*(v3 + *(*v3 - 24) + 2168) + 920);
      v7 = (*(*v11 + 1024))(v11);
      v8 = (*(**(*(v3 + *(*v3 - 24) + 2168) + 920) + 408))();
    }

    _AGCBindingInfo::_AGCBindingInfo(v15, v7, v8);
    v10 = v15[0];
    goto LABEL_12;
  }

  return this;
}

void *AGCLLVMUserObject::createSCSDriverDataStartGlobal(void *this)
{
  if (!this[330])
  {
    v17 = v1;
    v18 = v2;
    v3 = this;
    v4 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
    if ((v4 - 7) < 2 || v4 == 22)
    {
      v6 = *(*(v3 + *(*v3 - 24) + 2168) + 920);
      v7 = (*(*v6 + 1040))(v6);
      v8 = (*(**(*(v3 + *(*v3 - 24) + 2168) + 920) + 760))();
    }

    else
    {
      if (v4 == 27)
      {
        v9 = *(*(v3 + *(*v3 - 24) + 2168) + 920);
        v10 = (*(*v9 + 984))(v9) & 0xFFFFF | 0x900000;
LABEL_12:
        v12 = llvm::ArrayType::get(*(v3 + *(*v3 - 24) + 1904), 2);
        v15[0] = "agc.ria.ray_data_driver_start";
        v16 = 259;
        GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(v3, v12, v15, v10, 0, 0, 0);
        AGCLLVMObject::setDylibLinkage(GlobalBufferBinding, v14);
        return llvm::ValueHandleBase::operator=((v3 + 328), GlobalBufferBinding);
      }

      v11 = *(*(v3 + *(*v3 - 24) + 2168) + 920);
      v7 = (*(*v11 + 1040))(v11);
      v8 = (*(**(*(v3 + *(*v3 - 24) + 2168) + 920) + 408))();
    }

    _AGCBindingInfo::_AGCBindingInfo(v15, v7, v8);
    v10 = v15[0];
    goto LABEL_12;
  }

  return this;
}

uint64_t AGCLLVMUserObject::createIFBEmulationIFTableGlobal(AGCLLVMUserObject *this)
{
  result = *(this + 351);
  if (!result)
  {
    v3 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
    v4 = v3 > 0x16 || ((1 << v3) & 0x400180) == 0;
    v5 = *(*(this + *(*this - 24) + 2168) + 920);
    if (v4)
    {
      v6 = (*(*v5 + 352))(v5);
    }

    else
    {
      v6 = (*(*v5 + 704))(v5);
    }

    v7 = v6;
    v8 = llvm::PointerType::get();
    v11[0] = "agc.ifb_emulation_table.";
    v11[2] = v7;
    v12 = 2051;
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v8, v11, v7, 0, 5u, 0);
    llvm::GlobalValue::setLinkage(GlobalBufferBinding, 10);
    *(GlobalBufferBinding + 80) &= ~1u;
    llvm::Constant::getNullValue(*(GlobalBufferBinding + 3), v10);
    llvm::GlobalVariable::setInitializer();
    llvm::ValueHandleBase::operator=((this + 2792), GlobalBufferBinding);
    return *(this + 351);
  }

  return result;
}

uint64_t AGCLLVMUserObject::createIntersectionFunctionHeapGlobal(AGCLLVMUserObject *this)
{
  result = *(this + 354);
  if (!result)
  {
    v3 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
    v4 = v3 > 0x16 || ((1 << v3) & 0x400180) == 0;
    v5 = *(*(this + *(*this - 24) + 2168) + 920);
    if (v4)
    {
      v6 = (*(*v5 + 360))(v5);
    }

    else
    {
      v6 = (*(*v5 + 712))(v5);
    }

    v7 = v6;
    v8 = llvm::PointerType::get();
    v11[0] = "agc.intersection_function_heap.";
    v11[2] = v7;
    v12 = 2051;
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v8, v11, v7, 0, 5u, 0);
    llvm::GlobalValue::setLinkage(GlobalBufferBinding, 10);
    *(GlobalBufferBinding + 80) &= ~1u;
    llvm::Constant::getNullValue(*(GlobalBufferBinding + 3), v10);
    llvm::GlobalVariable::setInitializer();
    llvm::ValueHandleBase::operator=((this + 2816), GlobalBufferBinding);
    return *(this + 354);
  }

  return result;
}

uint64_t AGCLLVMUserObject::createTensorHeapGlobal(AGCLLVMUserObject *this)
{
  result = *(this + 369);
  if (!result)
  {
    v3 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
    v4 = v3 > 0x16 || ((1 << v3) & 0x400180) == 0;
    v5 = *(*(this + *(*this - 24) + 2168) + 920);
    if (v4)
    {
      v6 = (*(*v5 + 344))(v5);
    }

    else
    {
      v6 = (*(*v5 + 696))(v5);
    }

    v7 = v6;
    v8 = llvm::PointerType::get();
    v11[0] = "agc.tensor_heap.";
    v11[2] = v7;
    v12 = 2051;
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v8, v11, v7, 0, 5u, 0);
    llvm::GlobalValue::setLinkage(GlobalBufferBinding, 10);
    *(GlobalBufferBinding + 80) &= ~1u;
    llvm::Constant::getNullValue(*(GlobalBufferBinding + 3), v10);
    llvm::GlobalVariable::setInitializer();
    llvm::Module::getOrInsertNamedMetadata();
    llvm::ConstantInt::get();
    v11[0] = llvm::ValueAsMetadata::get();
    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::addOperand();
    llvm::ValueHandleBase::operator=((this + 2936), GlobalBufferBinding);
    return *(this + 369);
  }

  return result;
}

uint64_t AGCLLVMUserObject::buildImageHeapIndex(AGCLLVMUserObject *this, llvm::Value *a2)
{
  v4 = *(this + 223);
  if (*(this + 3767))
  {
    goto LABEL_2;
  }

  result = AGCLLVMUserObject::buildBindlessIndex(this, a2);
  if (!result)
  {
    if (*(this + 3767))
    {
      goto LABEL_2;
    }

    imp = llvm::SmallPtrSetImplBase::find_imp(this + 143, a2);
    v9 = *(this + 144);
    v10 = 16;
    if (v9 == *(this + 143))
    {
      v10 = 20;
    }

    if (imp == (v9 + 8 * *(this + v10 + 1144)) || (v11 = this + *(*this - 24), v12 = *(v11 + 239), v22 = 257, Cast = llvm::IRBuilderBase::CreateCast((v11 + 1712), 47, a2, v12, v21), v14 = llvm::ConstantInt::get(), v20 = 257, LShr = llvm::IRBuilderBase::CreateLShr((v11 + 1712), Cast, v14, v19), v16 = *(this + *(*this - 24) + 1904), v18 = 257, (result = llvm::IRBuilderBase::CreateCast((v11 + 1712), 38, LShr, v16, v17)) == 0))
    {
LABEL_2:
      v5 = (this + *(*this - 24));
      v6 = AGCLLVMUserObject::buildImageArgumentPointer(this, a2, 8);
      v22 = 257;
      llvm::Type::isOpaquePointerTy(*v6);
      return llvm::IRBuilderBase::CreateAlignedLoad(v5 + 214, v4, v6, 0, v21);
    }
  }

  return result;
}

uint64_t AGCLLVMObject::useTextureIDLegacyMode(AGCLLVMObject *this)
{
  v1 = &unk_27C8DB000;
  {
    v1 = &unk_27C8DB000;
    if (v3)
    {
      isEnabled = AGCEnv::isEnabled(v3);
      if (isEnabled)
      {
        LOBYTE(isEnabled) = AGCEnv::getBool("AGX2_USE_TEXTURE_HEAP_OFFSET_LEGACY_MODE", v5);
      }

      AGCLLVMObject::useTextureIDLegacyMode(void)::legacy_mode = isEnabled;
      v1 = &unk_27C8DB000;
    }
  }

  return v1[2008];
}

const char *AGCEnv::getBool(AGCEnv *this, const char *a2)
{
  result = AGCEnv::getValue(this, a2);
  if (result)
  {
    if (*result == 48)
    {
      return 0;
    }

    else
    {
      return (atoi(result) != 0);
    }
  }

  return result;
}

void std::__list_imp<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Loop,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::Invalidator>>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        v2[3] = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::__list_imp<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        v2[3] = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::__list_imp<std::pair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisResultConcept<llvm::LazyCallGraph::SCC,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::LazyCallGraph::SCC,llvm::LazyCallGraph&>::Invalidator>>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        v2[3] = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

char *llvm::PassInfoMixin<RuntimeFunctionCleanupPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x4C)
  {
    v1 = v0;
  }

  else
  {
    v1 = 76;
  }

  v2 = &aStringrefLlvmG_88[v1];
  v3 = 76 - v1;
  if ((76 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 76 - v1;
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,RuntimeFunctionCleanupPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<RuntimeFunctionCleanupPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

void *llvm::detail::PassModel<llvm::Module,RuntimeFunctionCleanupPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::run@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = a1 + 24;
  while (v3 != v4)
  {
    v5 = (v3 - 56);
    v9 = v3 == 0;
    v3 = *(v3 + 8);
    if (v9)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    Name = llvm::Value::getName(v6);
    if (v8 >= 0x14)
    {
      v9 = *Name == 0x646D69732E636761 && *(Name + 8) == 0x616D5F70756F7267;
      v10 = v9 && *(Name + 16) == 2020176500;
      if (v10 && !llvm::Value::getNumUses(v5))
      {
        llvm::Function::dropAllReferences(v5);
        llvm::Function::eraseFromParent(v5);
      }
    }
  }

  *a2 = a2 + 32;
  *(a2 + 8) = a2 + 32;
  *(a2 + 16) = 2;
  *(a2 + 24) = 0;
  *(a2 + 48) = a2 + 80;
  *(a2 + 56) = a2 + 80;
  *(a2 + 64) = 2;
  *(a2 + 72) = 0;
  return llvm::SmallPtrSetImpl<void *>::insert(v12, a2, MEMORY[0x277D82070]);
}

char *llvm::PassInfoMixin<llvm::air::FoldDeferredStaticAllocaSizePass>::name()
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

  v2 = &aStringrefLlvmG_87[v1];
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,llvm::air::FoldDeferredStaticAllocaSizePass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<llvm::air::FoldDeferredStaticAllocaSizePass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,ReplaceTextureStatePointerPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<ReplaceTextureStatePointerPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,ReplaceAddressSpaceCastsAndChecksPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<ReplaceAddressSpaceCastsAndChecksPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,OverrideFunctionsAndGlobalsLinkagePass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<OverrideFunctionsAndGlobalsLinkagePass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,TranslatorLegacyPostRuntimeLinkingPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<TranslatorLegacyPostRuntimeLinkingPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,TranslatorLegacyPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<TranslatorLegacyPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,ReplaceTensorIntrinsicsPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<ReplaceTensorIntrinsicsPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

uint64_t llvm::detail::PassModel<llvm::Module,ReplaceTensorIntrinsicsPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::~PassModel(uint64_t a1)
{
  *a1 = &unk_2825A7740;
  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(a1 + 40));
  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(a1 + 16));
  return a1;
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Function,LoadStoreCacheControlPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<LoadStoreCacheControlPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Function,NumericPackUnpackPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<NumericPackUnpackPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,SimdMatrixPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<SimdMatrixPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,MarkFunctionsInlinePass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<MarkFunctionsInlinePass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::PassInfoMixin<RemoveAndForwardAllocaStoresPass>::name()
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

  v2 = &aStringrefLlvmG_76[v1];
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Function,RemoveAndForwardAllocaStoresPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<RemoveAndForwardAllocaStoresPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

void llvm::detail::PassModel<llvm::Function,RemoveAndForwardAllocaStoresPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::run(void x0_0, uint64_t *a1)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v11 = v13;
  v12 = 0x1000000000;
  v3 = a1[10];
  if (v3)
  {
    v4 = v3 - 24;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 + 40;
  v6 = *(v4 + 48);
  if (v6 == v4 + 40)
  {
    v9 = 0;
    v8 = v13;
  }

  else
  {
    do
    {
      if (v6)
      {
        v7 = v6 - 24;
      }

      else
      {
        v7 = 0;
      }

      if (v6 && *(v7 + 16) == 59)
      {
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v11, v6 - 24);
      }

      v6 = *(v6 + 8);
    }

    while (v6 != v5);
    v8 = v11;
    v9 = v12;
  }

  if (v9)
  {
    v10 = *v8;
    v13[16] = v14;
    v13[17] = 0x400000001;
    v14[0] = v10;
    operator new();
  }

  llvm::AnalysisManager<llvm::Function>::getResultImpl();
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,AGCUserObjectWrapperInitPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<AGCUserObjectWrapperInitPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

char *llvm::detail::AnalysisPassModel<llvm::Module,MetadataAnalysis,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
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

  v2 = &aStringrefLlvmG_74[v1];
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

void *llvm::detail::AnalysisResultModel<llvm::Module,MetadataAnalysis,MetadataAnalysis::Result,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator,true>::~AnalysisResultModel(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_2825A7598;
  llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap((a1 + 21), a2, a3, a4);
  v5 = a1[11];
  if (v5 != a1 + 13)
  {
    free(v5);
  }

  v6 = a1[1];
  if (v6 != a1 + 3)
  {
    free(v6);
  }

  return a1;
}

char *llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectWrapper,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::name()
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

  v2 = &aStringrefLlvmG_73[v1];
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

BOOL AGCLLVMUserObject::isAllocaStoreForDebugger(char a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a3)
  {
    if (a1)
    {
      result = 0;
      if (a2)
      {
        if (*(a2 + 16) == 61)
        {
          v5 = **(a2 - 32);
          v6 = *(v5 + 8);
          if ((v6 & 0xFE) == 0x12)
          {
            v6 = *(**(v5 + 16) + 8);
          }

          return v6 <= 0xFF && *(a2 - 64) == a3;
        }
      }
    }
  }

  return result;
}

BOOL AGCLLVMUserObject::isVoidPointerUseInIntrinsic(AGCLLVMUserObject *this, llvm::Type **a2)
{
  v2 = a2;
  v4 = *a2;
  if (!llvm::Type::isOpaquePointerTy(*a2) && **(v4 + 2) == *(this + *(*this - 24) + 1888))
  {
    while (1)
    {
      v2 = v2[1];
      result = v2 == 0;
      if (!v2)
      {
        break;
      }

      if (*(v2[3] + 16) != 84)
      {
        return 0;
      }
    }
  }

  else
  {
    while (1)
    {
      v2 = v2[1];
      result = v2 == 0;
      if (!v2)
      {
        break;
      }

      v6 = v2[3];
      if (*(v6 + 16) != 77 || !AGCLLVMUserObject::isVoidPointerUseInIntrinsic(this, v6))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t AGCLLVMUserObject::IsPhiInputsEquivalent(AGCLLVMUserObject *this, llvm::PHINode *a2)
{
  v25[8] = *MEMORY[0x277D85DE8];
  v23 = v25;
  v24 = 0x800000000;
  v18 = v22;
  v19 = v22;
  v20 = 8;
  v21 = 0;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v23, this);
  v2 = v24;
  if (v24)
  {
    v3 = 0;
    do
    {
      v4 = *(v23 + v2 - 1);
      LODWORD(v24) = v2 - 1;
      llvm::SmallPtrSetImplBase::insert_imp(&v18, v4);
      v5 = v4[5];
      if ((v5 & 0x40000000) != 0)
      {
        v7 = *(v4 - 1);
        v6 = v5 & 0x7FFFFFF;
        if (v6)
        {
LABEL_7:
          v8 = &v7[4 * v6];
          do
          {
            v9 = *v7;
            v10 = *(*v7 + 16);
            if (*v7 && v10 == 83)
            {
              imp = llvm::SmallPtrSetImplBase::find_imp(&v18, *v7);
              if (v19 == v18)
              {
                v12 = (&v20 + 4);
              }

              else
              {
                v12 = &v20;
              }

              v13 = &v19[*v12];
              if (v13 != imp)
              {
                while (*imp >= 0xFFFFFFFFFFFFFFFELL)
                {
                  if (++imp == v13)
                  {
                    imp = v13;
                    break;
                  }
                }
              }

              if (v19 == v18)
              {
                v14 = (&v20 + 4);
              }

              else
              {
                v14 = &v20;
              }

              if (&v19[*v14] == imp)
              {
                llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v23, v9);
              }
            }

            else
            {
              if (v9)
              {
                v15 = v10 >= 0x1C;
              }

              else
              {
                v15 = 0;
              }

              if (v15)
              {
                if (v3)
                {
                  if (!llvm::Instruction::isIdenticalTo(*v7, v3))
                  {
                    v16 = 0;
                    goto LABEL_34;
                  }
                }

                else
                {
                  v3 = *v7;
                }
              }
            }

            v7 += 4;
          }

          while (v7 != v8);
        }
      }

      else
      {
        v6 = v5 & 0x7FFFFFF;
        v7 = &v4[-8 * v6];
        if (v6)
        {
          goto LABEL_7;
        }
      }

      v2 = v24;
    }

    while (v24);
  }

  v16 = 1;
LABEL_34:
  if (v19 != v18)
  {
    free(v19);
  }

  if (v23 != v25)
  {
    free(v23);
  }

  return v16;
}

const void **llvm::SmallPtrSetImpl<llvm::Instruction *>::find(uint64_t a1, const void *a2)
{
  result = llvm::SmallPtrSetImplBase::find_imp(a1, a2);
  v4 = *(a1 + 8);
  v5 = 16;
  if (v4 == *a1)
  {
    v5 = 20;
  }

  v6 = (v4 + 8 * *(a1 + v5));
  if (v6 != result)
  {
    while (*result >= 0xFFFFFFFFFFFFFFFELL)
    {
      if (++result == v6)
      {
        return v6;
      }
    }
  }

  return result;
}

uint64_t AGCLLVMUserObject::replaceArgumentBufferAccesses(AGCLLVMUserObject::IndirectArgumentBufferInfo const*)::$_0::operator()(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = a2;
  v8 = v6[1];
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = a2;
      if (v8 <= a2)
      {
        v10 = a2 % v8;
      }
    }

    else
    {
      v10 = (v8 - 1) & a2;
    }

    v11 = *(*v6 + 8 * v10);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == a2)
        {
          if (*(i + 4) == a2)
          {
            return i[3];
          }
        }

        else
        {
          if (v9.u32[0] > 1uLL)
          {
            if (v13 >= v8)
            {
              v13 %= v8;
            }
          }

          else
          {
            v13 &= v8 - 1;
          }

          if (v13 != v10)
          {
            break;
          }
        }
      }
    }
  }

  v14 = *a1;
  v15 = *a1 + *(**a1 - 24);
  v32 = *(v15 + 1760);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v33, (v15 + 1712));
  v34 = *(v15 + 1808);
  v16 = *(*(v14 + 21) + 80);
  if (v16)
  {
    v17 = v16 - 24;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v17 + 40);
  if (v18)
  {
    v19 = (v18 - 24);
  }

  else
  {
    v19 = 0;
  }

  llvm::IRBuilderBase::SetInsertPoint((v14 + *(*v14 - 24) + 1712), v19);
  v20 = (a3 + 272);
  if (!*(a3 + 276))
  {
    v20 = &RASTER_ORDER_GROUP_NONE;
  }

  AGCLLVMUserObject::setupBufferArgumentData(v14, *(a3 + 264), a2, **(a1 + 16), *(a3 + 260), *(a3 + 256), *v20);
  v21 = *(a1 + 8);
  v22 = v21[1];
  if (!*&v22)
  {
    goto LABEL_42;
  }

  v23 = vcnt_s8(v22);
  v23.i16[0] = vaddlv_u8(v23);
  if (v23.u32[0] > 1uLL)
  {
    v24 = v7;
    if (*&v22 <= v7)
    {
      v24 = a2 % v22.i32[0];
    }
  }

  else
  {
    v24 = (v22.i32[0] - 1) & v7;
  }

  v25 = *(*v21 + 8 * v24);
  if (!v25 || (i = *v25) == 0)
  {
LABEL_42:
    operator new();
  }

  while (1)
  {
    v26 = i[1];
    if (v26 == v7)
    {
      break;
    }

    if (v23.u32[0] > 1uLL)
    {
      if (v26 >= *&v22)
      {
        v26 %= *&v22;
      }
    }

    else
    {
      v26 &= *&v22 - 1;
    }

    if (v26 != v24)
    {
      goto LABEL_42;
    }

LABEL_41:
    i = *i;
    if (!i)
    {
      goto LABEL_42;
    }
  }

  if (*(i + 4) != a2)
  {
    goto LABEL_41;
  }

  v27 = v14 + *(*v14 - 24);
  v29 = v32;
  v30 = v33;
  if (v33)
  {
    llvm::MetadataTracking::track();
  }

  v31 = v34;
  AGCLLVMBuilder::InsertPoint::restoreIP(&v29, (v27 + 1712));
  if (v30)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v33)
  {
    llvm::MetadataTracking::untrack();
  }

  return i[3];
}

llvm::Instruction *AGCLLVMUserObject::buildABResourceIntrinsic(AGCLLVMUserObject *this, AGCLLVMUserObject::TextureSamplerPlaceholderFunctions *a2, llvm::Type *a3, llvm::Value *a4, AGCArgumentBuffer::Resource::Bounds *a5, unsigned int a6, llvm::Value *a7)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v11 = (this + *(*this - 24));
  v12 = v11[244];
  v19[0] = v11[238];
  v19[1] = v12;
  v13 = *a7;
  v19[2] = v19[0];
  v19[3] = v13;
  Function = AGCLLVMUserObject::TextureSamplerPlaceholderFunctions::getFunction(a2, v11[267], a3, v19, 4);
  v15 = (this + *(*this - 24));
  v18[0] = a4;
  v18[1] = AGCArgumentBuffer::Resource::Bounds::toConstantVector(a5, v15 + 214);
  v18[2] = llvm::ConstantInt::get();
  v18[3] = a7;
  v17[16] = 257;
  return llvm::IRBuilderBase::CreateCall(v15 + 214, *(Function + 24), Function, v18, 4, v17);
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>::erase(int32x2_t *a1, uint64_t a2)
{
  v7[0] = 2;
  v7[1] = 0;
  v8 = -8192;
  v9 = 0;
  llvm::ValueHandleBase::operator=((a2 + 8), v7);
  v4 = v8;
  *(a2 + 32) = v9;
  if (v4 != -8192 && v4 != -4096 && v4 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v7);
  }

  result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  a1[1] = result;
  return result;
}

uint64_t AGCLLVMUserObject::replaceArgumentBufferStoreTextureOrSampler(AGCLLVMUserObject *a1, uint64_t a2, llvm::PointerType ***a3)
{
  v6 = llvm::StructType::get();
  v7 = *(a2 - 64);
  v8 = llvm::PointerType::get();
  v9 = AGCLLVMUserObject::addrSpaceReconciliation(a1, v7, v8);
  v10 = (a1 + *(*a1 - 24));
  v36 = 257;
  llvm::Type::isOpaquePointerTy(*v9);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v10 + 214, v6, v9, 0, v35);
  v12 = *(a3 + 2);
  if (v12)
  {
    v13 = *a3;
    v14 = 8 * v12;
    do
    {
      *v13++ = llvm::PointerType::get();
      v14 -= 8;
    }

    while (v14);
  }

  v15 = llvm::PointerType::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a3, v15);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a3, *(a1 + *(*a1 - 24) + 1904));
  v16 = llvm::StructType::get();
  v17 = *(a2 - 32);
  v18 = llvm::PointerType::get();
  v19 = AGCLLVMUserObject::addrSpaceReconciliation(a1, v17, v18);
  v20 = *(*a1 - 24);
  v36 = 257;
  llvm::Type::isOpaquePointerTy(*v19);
  v21 = a1 + 1712;
  v22 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + v20 + 1712), v16, v19, 0, v35);
  v34 = 0;
  if (*(a3 + 2) == 2)
  {
    v23 = 0;
  }

  else
  {
    do
    {
      v24 = *(*a1 - 24);
      v36 = 257;
      Value = llvm::IRBuilderBase::CreateExtractValue(&v21[v24], AlignedLoad, &v34, 1, v35);
      v26 = *(*a1 - 24);
      v36 = 257;
      v27 = llvm::IRBuilderBase::CreateExtractValue(&v21[v26], v22, &v34, 1, v35);
      llvm::IRBuilderBase::CreateAlignedStore(&v21[*(*a1 - 24)], Value, v27, 0, 0);
      v23 = ++v34;
    }

    while (*(a3 + 2) - 2 > v34);
  }

  v28 = a1 + *(*a1 - 24);
  v33 = v23;
  v34 = v23 + 1;
  v36 = 257;
  v29 = llvm::IRBuilderBase::CreateExtractValue((v28 + 1712), v22, &v33, 1, v35);
  v30 = a1 + *(*a1 - 24);
  v36 = 257;
  v31 = llvm::IRBuilderBase::CreateExtractValue((v30 + 1712), v22, &v34, 1, v35);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + *(*a1 - 24) + 1712), v31, v29, 0, 0);
}

uint64_t AGCLLVMUserObject::addrSpaceReconciliation(AGCLLVMUserObject *this, llvm::Value *a2, llvm::Type *a3)
{
  v5 = this + *(*this - 24);
  v6 = *(v5 + 239);
  v11 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v5 + 1712), 47, a2, v6, v10);
  v8 = this + *(*this - 24);
  v11 = 257;
  return llvm::IRBuilderBase::CreateCast((v8 + 1712), 48, Cast, a3, v10);
}

uint64_t AGCLLVMUserObject::replaceArgumentBufferLoadTextureOrSampler(AGCLLVMUserObject *a1, llvm::Type **a2, uint64_t a3)
{
  v6 = llvm::StructType::get();
  InsertValue = llvm::UndefValue::get();
  AllocaInEntryBlock = AGCLLVMBuilder::createAllocaInEntryBlock((a1 + *(*a1 - 24) + 1704), v6);
  v8 = *a3;
  v9 = *(a3 + 8);
  if (v9)
  {
    v10 = 8 * v9;
    do
    {
      *v8++ = llvm::PointerType::get();
      v10 -= 8;
    }

    while (v10);
  }

  v11 = llvm::StructType::get();
  v26 = a2;
  v12 = *(a2 - 4);
  v13 = llvm::PointerType::get();
  v14 = AGCLLVMUserObject::addrSpaceReconciliation(a1, v12, v13);
  v15 = *(*a1 - 24);
  v31 = 257;
  llvm::Type::isOpaquePointerTy(*v14);
  v16 = a1 + 1712;
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + v15 + 1712), v11, v14, 0, v30);
  v29 = 0;
  if (*(a3 + 8))
  {
    v18 = AlignedLoad;
    do
    {
      v19 = *(*a1 - 24);
      v31 = 257;
      Value = llvm::IRBuilderBase::CreateExtractValue(&v16[v19], v18, &v29, 1, v30);
      v21 = *(*a1 - 24);
      v22 = *(*(v6 + 2) + 8 * v29);
      v31 = 257;
      llvm::Type::isOpaquePointerTy(*Value);
      v23 = llvm::IRBuilderBase::CreateAlignedLoad(&v16[v21], v22, Value, 0, v30);
      v28 = 257;
      InsertValue = llvm::IRBuilderBase::CreateInsertValue(&v16[v21], InsertValue, v23, &v29, 1, v27);
      ++v29;
    }

    while (*(a3 + 8) > v29);
  }

  llvm::IRBuilderBase::CreateAlignedStore((a1 + *(*a1 - 24) + 1712), InsertValue, AllocaInEntryBlock, 0, 0);
  return AGCLLVMUserObject::addrSpaceReconciliation(a1, AllocaInEntryBlock, *v26);
}

uint64_t llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, llvm::Value *a2)
{
  v3 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v10, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v12 = v4;
  v17 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v4, v4[2].i32[0], v11, &v17))
  {
    v5 = v17;
  }

  else
  {
    v5 = *v4 + 48 * v4[2].u32[0];
  }

  result = v12;
  if (*v12 + 48 * v12[2].u32[0] != v5)
  {
    v7 = *(v5 + 40);
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>::erase(v12, v5);
    v8 = v12;
    llvm::CallbackVH::CallbackVH(&v13, a2);
    v13 = &unk_2825A7350;
    v16 = v8;
    llvm::ValueHandleBase::ValueHandleBase(v18, (LODWORD(v14[0]) >> 1) & 3, v14);
    v17 = &unk_2825A7350;
    v20 = v16;
    v21 = v7;
    v22 = 0;
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v8, v8[2].i32[0], v19, &v22);
    if ((result & 1) == 0)
    {
      v9 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(v8, &v17, v22);
      result = llvm::ValueHandleBase::operator=((v9 + 1), v18);
      v9[4] = v20;
      v9[5] = v21;
    }

    if (v19 != -8192 && v19 != -4096 && v19)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v18);
    }

    if (v15 != -8192 && v15 != -4096 && v15)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v14);
    }
  }

  if (v11 != -8192 && v11 != -4096)
  {
    if (v11)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v10);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
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

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>::grow(uint64_t a1, int a2)
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
  *a1 = MEMORY[0x20F330650](v8, 48 * v8, 8);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>::initEmpty(a1);
    v22[0] = 2;
    v22[1] = 0;
    v23 = -4096;
    v24 = 0;
    v20 = 0;
    v21 = &unk_2825A7350;
    v18[0] = 2;
    v18[1] = 0;
    v19 = -8192;
    v9 = 3 * v3;
    if (v3)
    {
      v10 = (v4 + 24);
      v11 = 16 * v9;
      do
      {
        v12 = *v10;
        if (*v10 != v23 && v12 != v19)
        {
          v25 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v12, &v25);
          v14 = v25;
          llvm::ValueHandleBase::operator=((v25 + 8), v10 - 2);
          *(v14 + 32) = v10[1];
          *(v14 + 40) = v10[2];
          ++*(a1 + 8);
          v12 = *v10;
        }

        if (v12 != -8192 && v12 != -4096 && v12 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v10 - 2));
        }

        v10 += 6;
        v11 -= 48;
      }

      while (v11);
      if (v19 != -8192 && v19 != -4096 && v19)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v18);
      }
    }

    v16 = v23;
    if (v23 != -8192 && v23 != -4096 && v23)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v22);
    }

    return llvm::deallocate_buffer(v16, v4, (16 * v9));
  }

  else
  {

    return llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>::initEmpty(a1);
  }
}

uint64_t llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
{
  v1 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v7, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v9 = v2;
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v2, *(v2 + 16), v8, &v10);
  if (result)
  {
    v4 = v10;
    v11[0] = 2;
    v11[1] = 0;
    v12 = -8192;
    v13 = 0;
    v10 = &unk_2825A7350;
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

llvm::Instruction *AGCLLVMUserObject::replaceBuiltinFunction(void *a1, uint64_t a2, uint64_t a3, BOOL a4, unsigned int a5)
{
  v6 = (a1 + *(*a1 - 24));
  v9 = llvm::ConstantInt::get();
  v8[16] = 257;
  return llvm::IRBuilderBase::CreateCall(v6 + 214, *(a2 + 24), a2, &v9, 1, v8);
}

llvm::Value *AGCLLVMUserObject::setupGlobalBufferPointer(AGCLLVMUserObject *this, AGCLLVMObject *a2, llvm::PointerType *a3, unsigned int a4, int a5, unsigned int a6, char a7, uint64_t a8)
{
  v60 = *MEMORY[0x277D85DE8];
  if (*(a3 + 2) == 783)
  {
    v13 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24), a2);
    if (v13 != 27 && v13 != 8)
    {
      v29 = llvm::User::operator new(0x58);
      v56 = "agc.local_buffer_pointers.";
      v58[0] = a4;
      v59 = 2051;
      v30 = llvm::GlobalVariable::GlobalVariable();
      *(v30 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      llvm::GlobalObject::setAlignment();
      v31 = this + *(*this - 24);
      v32 = *(v31 + 268);
      v33 = AGCLLVMBuilder::buildGlobalMetadata(v31 + 213, v29, 0x2Bu, a4);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v32, v33);
      llvm::PointerType::get();
      PointerCast = llvm::ConstantExpr::getPointerCast();
      goto LABEL_44;
    }

    v15 = llvm::User::operator new(0x58);
    v56 = "agc.local_buffer_pointers.";
    v58[0] = a4;
    v59 = 2051;
    v16 = llvm::GlobalVariable::GlobalVariable();
    *(v16 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    llvm::GlobalObject::setAlignment();
    v17 = (this + *(*this - 24));
    v18 = AGCLLVMBuilder::buildGlobalMetadata(v17 + 213, v15, 0x2Bu, a4);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back((v17 + 612), v18);
    llvm::SmallPtrSetImpl<void *>::insert(&v56, (this + 848), v15);
    llvm::PointerType::get();
    PointerCast = llvm::ConstantExpr::getPointerCast();
    if (a8 != -1)
    {
      v19 = this + *(*this - 24);
      if ((v19[2284] & 1) == 0)
      {
        goto LABEL_51;
      }

      (*(**(v19 + 271) + 176))(*(v19 + 271), v15, a8, *(v19 + 570), 0, 0);
    }

    if ((a7 & 3) != 1)
    {
      return PointerCast;
    }

    llvm::Module::getOrInsertNamedMetadata();
    goto LABEL_49;
  }

  v56 = v58;
  v57 = 0x800000000;
  v23 = *(a2 + 1);
  if (!v23)
  {
    goto LABEL_29;
  }

  do
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v56, *(v23 + 24));
    v23 = *(v23 + 8);
  }

  while (v23);
  v24 = v57;
  if (!v57)
  {
LABEL_27:
    LOBYTE(v23) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v25 = *(v56 + --v24);
    LODWORD(v57) = v24;
    v26 = *(v25 + 16);
    if (v26 <= 0x1B)
    {
      break;
    }

    if (v26 != 60)
    {
      if (v26 != 77 && v26 != 62)
      {
        goto LABEL_28;
      }

      goto LABEL_23;
    }

LABEL_26:
    if (!v24)
    {
      goto LABEL_27;
    }
  }

  if (v26 == 5)
  {
    v27 = *(v25 + 18);
    if (v27 == 34 || v27 == 49)
    {
LABEL_23:
      v28 = *(v25 + 8);
      if (v28)
      {
        do
        {
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v56, *(v28 + 24));
          v28 = *(v28 + 8);
        }

        while (v28);
        v24 = v57;
      }

      goto LABEL_26;
    }
  }

LABEL_28:
  LOBYTE(v23) = 1;
LABEL_29:
  if (v56 != v58)
  {
    free(v56);
  }

  if ((v23 & 1) != 0 || AGCLLVMUserObject::shouldUseGBTIndirectionForGlobalBindings(this))
  {
    if (a5 == -1)
    {
      LODWORD(__src[0]) = a4;
      v37 = __src[0];
      v35 = 8;
      v36 = 1;
    }

    else
    {
      v49[0] = a5;
      v50 = ".";
      v51 = 776;
      __src[0] = v49;
      v53 = a4;
      v35 = 2;
      v36 = 8;
      v37 = __src;
    }

    LOBYTE(v55) = v35;
    BYTE1(v55) = v36;
    v56 = "agc.buffer_pointers.";
    v58[0] = v37;
    LOBYTE(v59) = 3;
    HIBYTE(v59) = v35;
    _AGCBindingInfo::_AGCBindingInfo(&v48, a4, a5);
    PointerCast = AGCLLVMUserObject::createGlobalBufferBinding(this, a3, &v56, v48, a6, 0x8Bu, 0);
    PointerCast[80] |= 1u;
    llvm::GlobalObject::setSection();
    llvm::GlobalObject::setAlignment();
    llvm::SmallPtrSetImpl<void *>::insert(&v56, (this + 848), PointerCast);
    (*(**(*(this + *(*this - 24) + 2168) + 920) + 440))();
    __src[0] = llvm::ValueAsMetadata::get();
    llvm::ConstantInt::get();
    __src[1] = llvm::ValueAsMetadata::get();
    llvm::ConstantInt::get();
    v53 = llvm::ValueAsMetadata::get();
    llvm::ConstantInt::get();
    v54 = llvm::ValueAsMetadata::get();
    llvm::ConstantInt::get();
    v55 = llvm::ValueAsMetadata::get();
    v56 = v58;
    v57 = 0x500000000;
    llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v56, __src, &v56);
    v38 = this + *(*this - 24);
    Impl = llvm::MDTuple::getImpl();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back((v38 + 4896), Impl);
    if (v56 != v58)
    {
      free(v56);
    }
  }

  else
  {
    if (a5 == -1)
    {
      LODWORD(__src[0]) = a4;
      v40 = 8;
      v41 = 1;
      v42 = __src[0];
    }

    else
    {
      v49[0] = a5;
      v50 = ".";
      v51 = 776;
      __src[0] = v49;
      v53 = a4;
      v40 = 2;
      v41 = 8;
      v42 = __src;
    }

    LOBYTE(v55) = v40;
    BYTE1(v55) = v41;
    v56 = "agc.buffer_pointers.";
    v58[0] = v42;
    LOBYTE(v59) = 3;
    HIBYTE(v59) = v40;
    _AGCBindingInfo::_AGCBindingInfo(&v48, a4, a5);
    PointerCast = AGCLLVMUserObject::createGlobalBufferBinding(this, a3, &v56, v48, a6, 5u, 0);
    PointerCast[80] |= 1u;
    llvm::GlobalObject::setSection();
    llvm::GlobalObject::setAlignment();
    AGCLLVMObject::mutatePtrValueAddressSpace(a2, v43, v44);
  }

  if (a5 == -1)
  {
    ++*(this + 878);
  }

LABEL_44:
  if (a8 == -1)
  {
LABEL_47:
    if ((a7 & 3) != 1)
    {
      return PointerCast;
    }

    llvm::Module::getOrInsertNamedMetadata();
LABEL_49:
    v56 = llvm::ValueAsMetadata::get();
    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::addOperand();
    return PointerCast;
  }

  v45 = this + *(*this - 24);
  if (v45[2284])
  {
    (*(**(v45 + 271) + 176))(*(v45 + 271), PointerCast, a8, *(v45 + 570), 0, 0);
    goto LABEL_47;
  }

LABEL_51:
  v47 = std::__throw_bad_optional_access[abi:nn200100]();
  return std::__function::__value_func<void ()(llvm::Module &,llvm::StringSet<llvm::MallocAllocator> const&)>::~__value_func[abi:nn200100](v47);
}

uint64_t std::__function::__value_func<void ()(llvm::Module &,llvm::StringSet<llvm::MallocAllocator> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t llvm::GlobalValue::setVisibility(uint64_t this)
{
  v1 = this;
  v2 = *(this + 32);
  v3 = v2 & 0xFFFFFFCF | 0x10;
  *(this + 32) = v3;
  if ((v2 & 0xFu) - 7 >= 2)
  {
    this = llvm::GlobalValue::hasExternalWeakLinkage(this);
    if (this)
    {
      return this;
    }

    v3 = *(v1 + 32);
  }

  *(v1 + 32) = v3 | 0x4000;
  return this;
}

uint64_t AGCLLVMUserObject::createDylibBaseGetterFunc(AGCLLVMUserObject *this)
{
  result = *(this + 370);
  if (!result)
  {
    AGCLLVMUserObject::createDylibBaseGlobal(this);
    llvm::FunctionType::get();
    llvm::Module::getOrInsertFunction();
    *(this + 370) = v3;
    *(v3 + 32) = *(v3 + 32) & 0xFFFFBFC0 | 0x4008;
    v4 = "entry";
    v5 = 259;
    operator new();
  }

  return result;
}

void AGCLLVMUserObject::getCallOfCastedFunction(AGCLLVMUserObject *this, llvm::Value *a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  *this = this + 16;
  *(this + 1) = 0x400000000;
  if (a2)
  {
    v3 = *(a2 + 16);
    if (v3 == 84)
    {

      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(this, a2);
      return;
    }
  }

  else
  {
    v3 = MEMORY[0x10];
  }

  if (v3 <= 0x1B)
  {
    if (v3 != 5 || *(a2 + 9) != 49)
    {
      return;
    }
  }

  else if (v3 != 77)
  {
    return;
  }

  for (i = *(a2 + 1); i; i = *(i + 8))
  {
    AGCLLVMUserObject::getCallOfCastedFunction(&__src, *(i + 24));
    v5 = v8;
    v6 = *(this + 2);
    if (v8 + v6 > *(this + 3))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v8)
    {
      memcpy((*this + 8 * v6), __src, 8 * v8);
      LODWORD(v6) = *(this + 2);
    }

    *(this + 2) = v6 + v5;
    if (__src != v9)
    {
      free(__src);
    }
  }
}

void *AGCLLVMUserObject::buildResourcePointerFromResourceIndexArgument(void *a1, llvm::Instruction *a2, unsigned int a3, llvm::Type *a4, llvm::Type **a5)
{
  llvm::IRBuilderBase::SetInsertPoint((a1 + *(*a1 - 24) + 1712), a2);
  v10 = *(a2 + 4 * a3 + -4 * (*(a2 + 5) & 0x7FFFFFF));
  v35 = *v10;
  v36 = a3;
  v11 = llvm::ConstantInt::get();
  v12 = a1 + *(*a1 - 24);
  v13 = *(v12 + 239);
  v41[0] = "resource_index";
  v42 = 259;
  Cast = llvm::IRBuilderBase::CreateCast((v12 + 1712), 47, v10, v13, v41);
  v15 = a1 + *(*a1 - 24);
  v41[0] = "heap_offset";
  v42 = 259;
  Mul = llvm::IRBuilderBase::CreateMul((v15 + 1712), Cast, v11, v41);
  v17 = llvm::PointerType::get();
  v18 = llvm::PointerType::get();
  v19 = a1 + *(*a1 - 24);
  v20 = *(v19 + 236);
  v42 = 257;
  llvm::Type::isOpaquePointerTy(*a5);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v19 + 214, a4, a5, 0, v41);
  v40 = 257;
  v22 = llvm::IRBuilderBase::CreateCast((v19 + 1712), 49, AlignedLoad, v17, v39);
  v38 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v19 + 1712), v20, v22, Mul, v37);
  v24 = a1 + *(*a1 - 24);
  v42 = 257;
  v25 = llvm::IRBuilderBase::CreateCast((v24 + 1712), 49, GEP, v18, v41);
  v26 = a1 + *(*a1 - 24);
  v27 = *(v26 + 239);
  v42 = 257;
  llvm::Type::isOpaquePointerTy(*v25);
  v28 = llvm::IRBuilderBase::CreateAlignedLoad(v26 + 214, v27, v25, 0, v41);
  v29 = a1 + *(*a1 - 24);
  v42 = 257;
  result = llvm::IRBuilderBase::CreateCast((v29 + 1712), 48, v28, v35, v41);
  v31 = a2 + 32 * v36 + -32 * (*(a2 + 5) & 0x7FFFFFF);
  if (*v31)
  {
    v32 = *(v31 + 1);
    **(v31 + 2) = v32;
    if (v32)
    {
      *(v32 + 16) = *(v31 + 2);
    }
  }

  *v31 = result;
  if (result)
  {
    v34 = result[1];
    ++result;
    v33 = v34;
    *(v31 + 1) = v34;
    if (v34)
    {
      *(v33 + 16) = v31 + 8;
    }

    *(v31 + 2) = result;
    *result = v31;
  }

  return result;
}

llvm::PointerType *AGCLLVMUserObject::createIndirectCommandBufferHeapGlobal(AGCLLVMUserObject *this)
{
  v17[2] = *MEMORY[0x277D85DE8];
  PerEncoderIndirectionTableGlobal = AGCLLVMUserObject::createPerEncoderIndirectionTableGlobal(this);
  v4 = v3;
  v5 = llvm::PointerType::get();
  v6 = this + *(*this - 24);
  v16 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v6 + 1704), v4, v15);
  v17[0] = llvm::ConstantInt::get();
  (*(**(*(this + *(*this - 24) + 2168) + 920) + 1184))();
  v17[1] = llvm::ConstantInt::get();
  v14 = 257;
  llvm::Type::isOpaquePointerTy(*Load);
  GEP = llvm::IRBuilderBase::CreateGEP((v6 + 1712), PerEncoderIndirectionTableGlobal, Load, v17, 2, v13);
  v9 = (this + *(*this - 24));
  v10 = llvm::PointerType::get();
  v16 = 257;
  llvm::IRBuilderBase::CreatePointerCast(v9 + 214, GEP, v10, v15, v11);
  return v5;
}

llvm::PointerType *AGCLLVMUserObject::createPipelineStateHeapGlobal(AGCLLVMUserObject *this)
{
  v17[2] = *MEMORY[0x277D85DE8];
  PerEncoderIndirectionTableGlobal = AGCLLVMUserObject::createPerEncoderIndirectionTableGlobal(this);
  v4 = v3;
  v5 = llvm::PointerType::get();
  v6 = this + *(*this - 24);
  v16 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v6 + 1704), v4, v15);
  v17[0] = llvm::ConstantInt::get();
  (*(**(*(this + *(*this - 24) + 2168) + 920) + 1192))();
  v17[1] = llvm::ConstantInt::get();
  v14 = 257;
  llvm::Type::isOpaquePointerTy(*Load);
  GEP = llvm::IRBuilderBase::CreateGEP((v6 + 1712), PerEncoderIndirectionTableGlobal, Load, v17, 2, v13);
  v9 = (this + *(*this - 24));
  v10 = llvm::PointerType::get();
  v16 = 257;
  llvm::IRBuilderBase::CreatePointerCast(v9 + 214, GEP, v10, v15, v11);
  return v5;
}

uint64_t AGCLLVMUserObject::replaceF16Builtins(AGCLLVMUserObject *this)
{
  v1 = (*(**(this + *(*this - 24) + 2168) + 784))(*(this + *(*this - 24) + 2168), this, *(this + *(*this - 24) + 2136));
  v2 = *(v1 + 432);
  v3 = *(v2 + 32);
  v4 = v2 + 24;
  while (v3 != v4)
  {
    v5 = (v3 - 56);
    if (v3)
    {
      v6 = (v3 - 56);
    }

    else
    {
      v6 = 0;
    }

    v3 = *(v3 + 8);
    Name = llvm::Value::getName(v6);
    v17[0] = 0;
    v17[1] = 0;
    v15 = 0;
    v16 = 0;
    if (AGCLLVMBuilder::findPrefix(Name, v8, v17, &v15, "air.", 4uLL) && llvm::GlobalValue::isDeclaration(v5))
    {
      v9 = *(v1 + 952);
      Key = llvm::StringMapImpl::FindKey();
      if (Key == -1)
      {
        v11 = *(v9 + 8);
      }

      else
      {
        v11 = Key;
      }

      v12 = (*v9 + 8 * v11);
      if (v12 != (**(v1 + 952) + 8 * *(*(v1 + 952) + 8)) && llvm::StringRef::find() != -1)
      {
        AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::doReplacement(v1 + 472, v5, *v12 + 8, v15, v16);
      }
    }
  }

  v13 = *(v1 + 960);
  (*(*v1 + 16))(v1);
  return v13;
}

uint64_t AGCLLVMUserObject::replaceGlobalBufferBinding(uint64_t a1, AGCLLVMObject *a2, uint64_t a3)
{
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v17 = -1;
  v16 = 0;
  parseMDBuffer(a3, *(*a2 + 8) >> 8, &v22, &v21, &v20 + 1, &v20, &v19, &v16, &v18, &v17, &v16 + 1);
  AGCLLVMObject::replaceConstantChainWithInstrs(a2, v5);
  if (HIBYTE(v16) == 1)
  {
    if (v20)
    {
      v6 = HIDWORD(v20) / v20;
    }

    else
    {
      v6 = 0;
    }

    v9 = (a1 + *(*a1 - 24));
    if (*(v9[90].__r_.__value_.__l.__size_ + 1869) != 1)
    {
      v10 = v17;
      v11 = v16;
      v12 = v22;
      v13 = *(a2 + 3);
      TypeAllocSize = llvm::DataLayout::getTypeAllocSize((a1 + 224), v13);
      v24 = v14;
      v15 = v6 * llvm::TypeSize::operator unsigned long long();
      (*(*a1 + 312))(a1, a2, v13, v12, 0xFFFFFFFFLL, v15, v11, v10);
      operator new();
    }

    std::string::append(v9 + 69, "Tier 1 argument buffer global binding is not supported");
    return 0;
  }

  else
  {
    if (v18)
    {
      v7 = v17;
    }

    else
    {
      v7 = 0xFFFFFFFFLL;
    }

    result = (*(*a1 + 312))(a1, a2, *(a2 + 3), v22, 0xFFFFFFFFLL, HIDWORD(v20), v16, v7);
    if (result)
    {
      llvm::Value::replaceAllUsesWith();
      return 1;
    }
  }

  return result;
}

uint64_t AGCLLVMUserObject::replaceSamplerInput<llvm::GlobalVariable>(uint64_t *a1, llvm::GlobalValue *a2, uint64_t a3)
{
  if (!*(a2 + 1))
  {
    return 1;
  }

  v19 = 0;
  v18 = 0;
  v5 = parseMDSampler(a3, &v19 + 1, &v19, &v18);
  if (v5)
  {
    v6 = *a2;
    *(&v15 + 1) = 0;
    v16 = 0;
    v17 = 0;
    if (llvm::Type::isOpaquePointerTy(v6))
    {
      v7 = llvm::StructType::create();
      v8 = v18;
    }

    else
    {
      v8 = v18;
      if (v18)
      {
        v9 = **(v6 + 16);
        if (*(v9 + 8) == 16)
        {
          v9 = **(v9 + 16);
        }

        v6 = **(v9 + 16);
      }

      v10 = *(v6 + 8);
      if ((v10 & 0x1FF) == 0x110)
      {
        v6 = **(v6 + 16);
        LOBYTE(v10) = *(v6 + 8);
      }

      if (v10 == 15)
      {
        v11 = **(v6 + 16);
        if ((*(v11 + 8) & 0x1FF) == 0x110)
        {
          v6 = **(v11 + 16);
        }
      }

      v7 = **(v6 + 16);
    }

    v16 = v7;
    v13 = v19;
    v12 = HIDWORD(v19);
    LODWORD(v15) = HIDWORD(v19) & 0xFFFFF;
    DWORD1(v15) = v19;
    v17 = 1;
    std::__tree<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>::__emplace_unique_key_args<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::Sampler const&>(a1 + 128, HIDWORD(v19) & 0xFFFFF, &v15);
    AGCLLVMUserObject::replaceGlobalTextureOrSamplerUsage(a1, a2, v12, v13, v8, (a1 + 393), (a1 + 417));
  }

  return v5;
}

uint64_t AGCLLVMUserObject::replaceGlobalTextureOrSamplerUsage(AGCLLVMUserObject *this, llvm::Type **a2, uint64_t a3, uint64_t a4, char a5, AGCLLVMUserObject::TextureSamplerPlaceholderFunctions *a6, AGCLLVMUserObject::TextureSamplerPlaceholderFunctions *a7)
{
  v10 = a4;
  v11 = a3;
  AGCLLVMObject::replaceConstantChainWithInstrs(a2, a2);
  if (a5)
  {
    v14 = **(*a2 + 2);
    result = AGCLLVMUserObject::replaceGlobalTextureOrSamplerUsage(llvm::GlobalValue *,unsigned int,unsigned int,BOOL,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions &,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions &)::$_2::operator()(this, a2[1], v11, v10, 1, **(**(v14 + 2) + 16), a6);
    if (result)
    {
      v16 = a2[1];
      if (v16)
      {
        do
        {
          v17 = *(v16 + 1);
          llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), *(v16 + 3));
          v24 = v11;
          v25 = v11 + v10 - 1;
          v18 = llvm::ConstantInt::get();
          AGCLLVMUserObject::buildAPIResourceConstantPointerIntrinsic(this, a7, v14, v18, &v24, v11);
          result = llvm::User::replaceUsesOfWith();
          v16 = v17;
        }

        while (v17);
      }
    }
  }

  else
  {
    v19 = a2[3];
    if (*(v19 + 8) == 16)
    {
      v20 = a2[3];
    }

    else
    {
      v20 = 0;
    }

    result = AGCLLVMUserObject::replaceGlobalTextureOrSamplerUsage(llvm::GlobalValue *,unsigned int,unsigned int,BOOL,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions &,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions &)::$_2::operator()(this, a2[1], v11, v10, 0, v20, a6);
    if (result)
    {
      v21 = a2[1];
      if (v21)
      {
        do
        {
          v22 = *(v21 + 1);
          llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), *(v21 + 3));
          v24 = v11;
          v25 = v11;
          v23 = llvm::ConstantInt::get();
          AGCLLVMUserObject::buildAPIResourceConstantPointerIntrinsic(this, a7, v19, v23, &v24, v11);
          result = llvm::User::replaceUsesOfWith();
          v21 = v22;
        }

        while (v22);
      }
    }
  }

  return result;
}

uint64_t AGCLLVMUserObject::replaceGlobalTextureOrSamplerUsage(llvm::GlobalValue *,unsigned int,unsigned int,BOOL,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions &,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions &)::$_2::operator()(AGCLLVMUserObject *a1, uint64_t a2, unsigned int a3, int a4, char a5, uint64_t a6, AGCLLVMUserObject::TextureSamplerPlaceholderFunctions *a7)
{
  v64[16] = *MEMORY[0x277D85DE8];
  v59 = v61;
  v60 = 0x1000000000;
  v62 = v64;
  v63 = 0x1000000000;
  v52 = v56;
  v53 = v56;
  v54 = 16;
  v55 = 0;
  if (!a2)
  {
    goto LABEL_21;
  }

  v11 = a2;
  do
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v62, *(v11 + 24));
    v11 = *(v11 + 8);
  }

  while (v11);
  v12 = v63;
  if (v63)
  {
    v13 = 0;
    do
    {
      v14 = v62[v12 - 1];
      LODWORD(v63) = v12 - 1;
      imp = llvm::SmallPtrSetImplBase::find_imp(&v52, v14);
      if (v53 == v52)
      {
        v16 = (&v54 + 4);
      }

      else
      {
        v16 = &v54;
      }

      if (imp == &v53[*v16])
      {
        v17 = *(v14 + 16);
        if (v17 == 60)
        {
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v59, v14);
        }

        else if (v17 == 77 || v17 == 62)
        {
          for (i = *(v14 + 8); i; i = *(i + 8))
          {
            llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v62, *(i + 24));
          }
        }

        else
        {
          v13 = 1;
        }

        llvm::SmallPtrSetImpl<void *>::insert(v51, &v52, v14);
      }

      v12 = v63;
    }

    while (v63);
  }

  else
  {
LABEL_21:
    v13 = 0;
  }

  if (v53 != v52)
  {
    free(v53);
  }

  if (v62 != v64)
  {
    free(v62);
  }

  v19 = v59;
  if (v60)
  {
    v47 = v13;
    v20 = (v59 + 8 * v60);
    v48 = a3 + a4 - 1;
    while (1)
    {
      llvm::IRBuilderBase::SetInsertPoint((a1 + *(*a1 - 24) + 1712), *v19);
      v22 = *(*v19 - 4);
      v62 = 0;
      if ((a5 & 1) == 0)
      {
        break;
      }

      v23 = *(v22 + 16);
      if (v23 == 62 && v22 != 0)
      {
        v35 = *(v22 + 20) & 0x7FFFFFF;
        v36 = (v22 - 32 * v35);
        v26 = *v36;
        v37 = **v36;
        v38 = v35 - 1;
        if (v38)
        {
          v39 = v37 == a6;
        }

        else
        {
          v39 = 1;
        }

        if (!v39)
        {
          v40 = 0;
          while (1)
          {
            v41 = *(v37 + 8);
            if (v41 != 15)
            {
              if (v41 == 17)
              {
                v42 = (v37 + 24);
                goto LABEL_57;
              }

              if (v41 != 16)
              {
                goto LABEL_58;
              }
            }

            v42 = *(v37 + 16);
LABEL_57:
            v37 = *v42;
LABEL_58:
            if (++v40 >= v38 || v37 == a6)
            {
              v26 = v36[4 * v40];
              break;
            }
          }
        }

        if (v26)
        {
          v43 = *(v26 + 16) == 16;
        }

        else
        {
          v43 = 0;
        }

        if (v43)
        {
          v44 = v26 + 3;
          if (*(v26 + 8) >= 0x41u)
          {
            v44 = *v44;
          }

          v27 = *v44 + a3;
          v26 = llvm::ConstantInt::get();
          v62 = (v27 | (v27 << 32));
          goto LABEL_43;
        }

        goto LABEL_41;
      }

      if (v23 == 77 && v22 != 0)
      {
        break;
      }

      v26 = 0;
LABEL_42:
      LODWORD(v27) = a3;
LABEL_43:
      v28 = **(a6 + 16);
      v29 = a1 + *(*a1 - 24);
      v30 = *(v29 + 238);
      v56[0] = 257;
      IntCast = llvm::IRBuilderBase::CreateIntCast(v29 + 214, v26, v30, 0, &v52, v21);
      v32 = AGCLLVMUserObject::buildAPIResourceIntrinsic(a1, a7, v28, IntCast, &v62, v27, 1u);
      if (*(**v19 + 8) == 13)
      {
        v33 = a1 + *(*a1 - 24);
        v34 = *(v33 + 239);
        v56[0] = 257;
        llvm::IRBuilderBase::CreateCast((v33 + 1712), 47, v32, v34, &v52);
      }

      llvm::Value::replaceAllUsesWith();
      if (++v19 == v20)
      {
        v19 = v59;
        v13 = v47;
        if (v60)
        {
          v45 = 8 * v60;
          do
          {
            ++v19;
            v58 = 0;
            llvm::RecursivelyDeleteTriviallyDeadInstructions();
            std::__function::__value_func<void ()(llvm::Value *)>::~__value_func[abi:nn200100](v57);
            v45 -= 8;
          }

          while (v45);
          v19 = v59;
        }

        goto LABEL_73;
      }
    }

    v26 = llvm::ConstantInt::get();
LABEL_41:
    v62 = __PAIR64__(v48, a3);
    goto LABEL_42;
  }

LABEL_73:
  if (v19 != v61)
  {
    free(v19);
  }

  return v13 & 1;
}

llvm::Instruction *AGCLLVMUserObject::buildAPIResourceConstantPointerIntrinsic(AGCLLVMUserObject *this, AGCLLVMUserObject::TextureSamplerPlaceholderFunctions *a2, llvm::Type *a3, llvm::Value *a4, AGCArgumentBuffer::Resource::Bounds *a5, unsigned int a6)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v10 = (this + *(*this - 24));
  v11 = v10[244];
  v19[0] = v10[238];
  v19[1] = v11;
  v12 = v10[235];
  v19[2] = v19[0];
  v19[3] = v12;
  v13 = llvm::PointerType::get();
  Function = AGCLLVMUserObject::TextureSamplerPlaceholderFunctions::getFunction(a2, *(this + *(*this - 24) + 2136), v13, v19, 4);
  v15 = (this + *(*this - 24));
  v18[0] = a4;
  v18[1] = AGCArgumentBuffer::Resource::Bounds::toConstantVector(a5, v15 + 214);
  v18[2] = llvm::ConstantInt::get();
  v18[3] = llvm::ConstantInt::get();
  v17[16] = 257;
  return llvm::IRBuilderBase::CreateCall(v15 + 214, *(Function + 24), Function, v18, 4, v17);
}

unint64_t llvm::SmallVectorTemplateCommon<std::unique_ptr<AGCLLVMUserObject::IndirectArgumentBufferInfo>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::unique_ptr<AGCLLVMUserObject::IndirectArgumentBufferInfo>,false>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    if (*a1 > a2 || *a1 + 8 * v2 <= a2)
    {
      llvm::SmallVectorTemplateBase<std::unique_ptr<AGCLLVMUserObject::IndirectArgumentBufferInfo>,false>::grow(a1, v2 + 1);
    }

    llvm::SmallVectorTemplateBase<std::unique_ptr<AGCLLVMUserObject::IndirectArgumentBufferInfo>,false>::grow(a1, v2 + 1);
  }

  return a2;
}

uint64_t *std::unique_ptr<AGCLLVMUserObject::IndirectArgumentBufferInfo>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 88);
    if (v3)
    {
      do
      {
        v4 = *v3;
        *(v3 + 3) = &unk_2825A7940;
        llvm::SmallVector<std::unique_ptr<AGCArgumentBuffer::Field>,4u>::~SmallVector(v3 + 5);
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v5 = *(v2 + 72);
    *(v2 + 72) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    MEMORY[0x20F331DC0](v2, 0x10A0C409CD0B977);
  }

  return a1;
}

void AGCLLVMUserObject::setupIndirectArgumentRogMetadata(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  v5[16] = v6;
  v5[17] = 0x800000000;
  v3 = v5;
  v4 = 0x800000000;
  v2 = *(a2 + 56);
  operator new();
}

void std::function<void ()(AGCArgumentBuffer::Field const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  if (a1)
  {
    (*(*a1 + 48))(a1, &v6);
  }

  else
  {
    v2 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__func<AGCLLVMUserObject::setupIndirectArgumentRogMetadata(AGCLLVMUserObject::IndirectArgumentBufferInfo &)::$_0,std::allocator<AGCLLVMUserObject::setupIndirectArgumentRogMetadata(AGCLLVMUserObject::IndirectArgumentBufferInfo &)::$_0>,void ()(AGCArgumentBuffer::Field const*)>::operator()(v2, v3, v4, v5);
  }
}

void std::__function::__func<AGCLLVMUserObject::setupIndirectArgumentRogMetadata(AGCLLVMUserObject::IndirectArgumentBufferInfo &)::$_0,std::allocator<AGCLLVMUserObject::setupIndirectArgumentRogMetadata(AGCLLVMUserObject::IndirectArgumentBufferInfo &)::$_0>,void ()(AGCArgumentBuffer::Field const*)>::operator()(uint64_t *a1, uint64_t *a2, uint64_t a3, BOOL a4)
{
  v46[8] = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *(*a2 + 8);
  if (*a2)
  {
    v7 = (v6 - 3) >= 0xFFFFFFFE;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a1[1], 0);
    v24 = *(v5 + 24);
    if (v24)
    {
      for (i = 0; i < v24; ++i)
      {
        if (*(*(v5 + 16) + 8 * i))
        {
          *(*a1[1] + 8 * *(a1[1] + 8) - 8) = llvm::ConstantInt::get();
          std::function<void ()(AGCArgumentBuffer::Field const*)>::operator()(*(a1[3] + 24), *(*(v5 + 16) + 8 * i));
          v24 = *(v5 + 24);
        }
      }
    }

    goto LABEL_72;
  }

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v26 = a1[1];
    v27 = llvm::ConstantInt::get();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v26, v27);
    std::function<void ()(AGCArgumentBuffer::Field const*)>::operator()(*(a1[3] + 24), *(v5 + 16));
LABEL_72:
    --*(a1[1] + 8);
    return;
  }

  if (v5)
  {
    v9 = v6 == 3;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a1[1], 0);
    if (*(v5 + 24))
    {
      v28 = 0;
      do
      {
        *(*a1[1] + 8 * *(a1[1] + 8) - 8) = llvm::ConstantInt::get();
        std::function<void ()(AGCArgumentBuffer::Field const*)>::operator()(*(a1[3] + 24), *(v5 + 16));
        ++v28;
      }

      while (v28 < *(v5 + 24));
    }

    goto LABEL_72;
  }

  if (!v5 || v6 != 4)
  {
    if (v5 && v6 == 5 && *(v5 + 252) == 1)
    {
      v29 = *(v5 + 248);
      IndexedOffsetInType = llvm::DataLayout::getIndexedOffsetInType();
      v31 = a1[5];

      llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(v31, v29 | (IndexedOffsetInType << 32), 8);
    }

    return;
  }

  v10 = llvm::DataLayout::getIndexedOffsetInType() << 32;
  if (*(v5 + 276) == 1)
  {
    v10 |= *(v5 + 272);
    llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(a1[5], v10, 8);
  }

  v11 = *(v5 + 248);
  if (!v11)
  {
    v35 = 0;
    v36 = 0u;
    *__p = 0u;
    v38 = 1065353216;
    goto LABEL_90;
  }

  v44 = v46;
  v45 = 0x800000000;
  v39 = v43;
  v40 = v43;
  v41 = 8;
  v42 = 0;
  v36 = 0u;
  *__p = 0u;
  v38 = 1065353216;
LABEL_19:
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v44, v11);
  while (v45)
  {
    v12 = *(v44 + v45 - 1);
    LODWORD(v45) = v45 - 1;
    v13 = *(v12 + 8);
    if (v12)
    {
      v14 = v13 == 2;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      goto LABEL_28;
    }

    llvm::SmallPtrSetImplBase::insert_imp(&v39, v12);
    if (v15)
    {
      v13 = *(v12 + 8);
LABEL_28:
      if (v12)
      {
        v16 = (v13 - 3) >= 0xFFFFFFFE;
      }

      else
      {
        v16 = 0;
      }

      if (v16)
      {
        v21 = *(v12 + 24);
        if (v21)
        {
          v22 = *(v12 + 16);
          v23 = 8 * v21;
          do
          {
            if (*v22)
            {
              llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v44, *v22);
            }

            ++v22;
            v23 -= 8;
          }

          while (v23);
        }
      }

      else
      {
        if (v12)
        {
          v17 = v13 == 0;
        }

        else
        {
          v17 = 0;
        }

        if (v17 || (v12 ? (v18 = v13 == 3) : (v18 = 0), v18))
        {
          v11 = *(v12 + 16);
          goto LABEL_19;
        }

        if (v12)
        {
          v19 = v13 == 4;
        }

        else
        {
          v19 = 0;
        }

        if (v19)
        {
          if (*(v12 + 276) == 1)
          {
            std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v36, *(v12 + 272), (v12 + 272));
          }

          v11 = *(v12 + 248);
          if (v11)
          {
            goto LABEL_19;
          }
        }

        else
        {
          if (v12)
          {
            v20 = v13 == 5;
          }

          else
          {
            v20 = 0;
          }

          if (v20 && *(v12 + 252) == 1)
          {
            std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v36, *(v12 + 248), (v12 + 248));
          }
        }
      }
    }
  }

  if (v40 != v39)
  {
    free(v40);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  v32 = __p[0];
  if (__p[0])
  {
    do
    {
      v10 = v10 & 0xFFFFFFFF00000000 | *(v32 + 4);
      llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(a1[5], v10, 0x100000008);
      v32 = *v32;
    }

    while (v32);
    v33 = __p[0];
    if (__p[0])
    {
      do
      {
        v34 = *v33;
        operator delete(v33);
        v33 = v34;
      }

      while (v34);
    }
  }

  v35 = v36;
LABEL_90:
  *&v36 = 0;
  if (v35)
  {
    operator delete(v35);
  }
}

void std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(float *a1, unsigned int a2, _DWORD *a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }
}

__n128 std::__function::__func<AGCLLVMUserObject::setupIndirectArgumentRogMetadata(AGCLLVMUserObject::IndirectArgumentBufferInfo &)::$_0,std::allocator<AGCLLVMUserObject::setupIndirectArgumentRogMetadata(AGCLLVMUserObject::IndirectArgumentBufferInfo &)::$_0>,void ()(AGCArgumentBuffer::Field const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A7960;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t AGCLLVMUserObject::hoistAllocas(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v37[8] = *MEMORY[0x277D85DE8];
  v35 = v37;
  v36 = 0x800000000;
  v4 = a2 + 40;
  v5 = *(a2 + 48);
  if (v5 != a2 + 40)
  {
    v7 = 0;
    while (1)
    {
      v8 = v5 - 24;
      if (v5)
      {
        v9 = v5 - 24;
      }

      else
      {
        v9 = 0;
      }

      v10 = *(v9 + 16);
      if (v10 == 59)
      {
        if (*a3)
        {
          v11 = *a3 - 24;
        }

        else
        {
          v11 = 0;
        }

        if (v8 == v11)
        {
          *a3 = *(*a3 + 8);
        }

        else
        {
          llvm::Instruction::moveBefore();
        }

        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v35, v5 - 24);
      }

      else
      {
        Function = llvm::Module::getFunction();
        if (v10 != 84 || Function == 0)
        {
          goto LABEL_29;
        }

        v14 = *(v5 - 56);
        if (!v14 || *(v14 + 16) || *(v14 + 24) != *(v5 + 48))
        {
          v14 = 0;
        }

        if (v14 != Function)
        {
          goto LABEL_29;
        }

        if (*a3)
        {
          v15 = *a3 - 24;
        }

        else
        {
          v15 = 0;
        }

        if (v8 == v15)
        {
          *a3 = *(*a3 + 8);
        }

        else
        {
          llvm::Instruction::moveBefore();
        }
      }

      v7 = 1;
LABEL_29:
      v5 = *(v5 + 8);
      if (v5 == v4)
      {
        v16 = v35;
        v17 = v36;
        goto LABEL_33;
      }
    }
  }

  v17 = 0;
  v7 = 0;
  v16 = v37;
LABEL_33:
  v27 = 1;
  *v28 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
  v29 = *v28;
  v30 = *v28;
  v31 = *v28;
  v32 = v34;
  v33 = 0x800000000;
  if (!v17)
  {
    goto LABEL_55;
  }

  v18 = 8 * v17;
  do
  {
    v19 = llvm::AllocaInst::getDeferredStaticSizeCall(*v16);
    if (!v19)
    {
      goto LABEL_45;
    }

    v20 = v19;
    v26 = 0;
    if (llvm::DenseMapBase<llvm::SmallDenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::LookupBucketFor<llvm::CallInst *>(&v27, v19, &v26))
    {
      goto LABEL_45;
    }

    v21 = v27 >> 1;
    if (v27)
    {
      v22 = 8;
    }

    else
    {
      v22 = v28[1];
    }

    if (4 * v21 + 4 >= 3 * v22)
    {
      v22 *= 2;
LABEL_48:
      llvm::SmallDenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::grow(&v27, v22);
      v26 = 0;
      llvm::DenseMapBase<llvm::SmallDenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::LookupBucketFor<llvm::CallInst *>(&v27, v20, &v26);
      goto LABEL_42;
    }

    if (v22 + ~v21 - HIDWORD(v27) <= v22 >> 3)
    {
      goto LABEL_48;
    }

LABEL_42:
    LODWORD(v27) = v27 + 2;
    if (*v26 != -4096)
    {
      --HIDWORD(v27);
    }

    *v26 = v20;
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v32, v20);
LABEL_45:
    ++v16;
    v18 -= 8;
  }

  while (v18);
  v23 = v32;
  if (v33)
  {
    v24 = 8 * v33;
    do
    {
      v23 += 8;
      llvm::Instruction::moveBefore();
      v24 -= 8;
    }

    while (v24);
    v23 = v32;
  }

  if (v23 != v34)
  {
    free(v23);
  }

LABEL_55:
  if ((v27 & 1) == 0)
  {
    llvm::deallocate_buffer(LODWORD(v28[1]), v28[0], (8 * LODWORD(v28[1])));
  }

  if (v35 != v37)
  {
    free(v35);
  }

  return v7 & 1;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::LookupBucketFor<llvm::CallInst *>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v7 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = v4 - 1;
  v6 = ((a2 >> 4) ^ (a2 >> 9)) & (v4 - 1);
  v7 = (v3 + 8 * v6);
  v8 = *v7;
  if (*v7 == a2)
  {
    result = 1;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    result = 1;
    while (v8 != -4096)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == -8192;
      }

      if (v12)
      {
        v10 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v5;
      v7 = (v3 + 8 * (v13 & v5));
      v8 = *v7;
      if (*v7 == a2)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v10)
    {
      v7 = v10;
    }
  }

LABEL_7:
  *a3 = v7;
  return result;
}

uint64_t *llvm::SmallDenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::grow(uint64_t a1, unsigned int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2 >= 9)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if (*a1)
  {
    v8 = v14;
    for (i = 8; i != 72; i += 8)
    {
      v10 = *(a1 + i);
      if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        *v8++ = v10;
      }
    }

    if (a2 > 8)
    {
      *a1 &= ~1u;
      v11 = a2;
      *(a1 + 8) = MEMORY[0x20F330650](8 * a2, 8);
      *(a1 + 16) = v11;
    }

    return llvm::DenseMapBase<llvm::SmallDenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::moveFromOldBuckets(a1, v14, v8);
  }

  else
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (a2 > 8)
    {
      v13 = a2;
      *(a1 + 8) = MEMORY[0x20F330650](8 * a2, 8);
      *(a1 + 16) = v13;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::moveFromOldBuckets(a1, v6, &v6[v7]);

    return llvm::deallocate_buffer(v15, v6, (8 * v7));
  }
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::moveFromOldBuckets(int *result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = result + 2;
    v9 = result + 18;
  }

  else
  {
    v7 = result[4];
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = *(result + 1);
    v9 = &v8[2 * v7];
  }

  v10 = 0;
  v11 = (v9 - v8 - 8) >> 3;
  v12 = vdupq_n_s64(v11);
  do
  {
    v13 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_20E70C4F0)));
    if (v13.i8[0])
    {
      *&v8[2 * v10] = -4096;
    }

    if (v13.i8[4])
    {
      *&v8[2 * v10 + 2] = -4096;
    }

    v10 += 2;
  }

  while (((v11 + 2) & 0x3FFFFFFFFFFFFFFELL) != v10);
LABEL_15:
  while (a2 != a3)
  {
    v14 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v15 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::LookupBucketFor<llvm::CallInst *>(v5, v14, &v15);
      *v15 = *a2;
      *v5 += 2;
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::~StringMap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,InitCompileCommonPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<InitCompileCommonPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

llvm::raw_ostream *llvm::detail::PassModel<llvm::Module,SimplifyGenericIRCommonPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::printPipeline(uint64_t a1, llvm::raw_ostream *a2, uint64_t (*a3)(uint64_t, const char *, uint64_t), uint64_t a4)
{
  v7 = llvm::PassInfoMixin<SimplifyGenericIRCommonPass>::name();
  v10 = a3(a4, v7, v8);

  return llvm::raw_ostream::operator<<(a2, v10, v9);
}

uint64_t llvm::StringMap<AGCLLVMUserObject::DimensionFunction,llvm::MallocAllocator>::~StringMap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
          llvm::deallocate_buffer(*v8, v8, *v8 + 25);
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

uint64_t *std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMUserObject::initializeBuiltinArgMaps(void)::$_0 &&>>(llvm::StringMapImpl ****a1)
{
  v1 = **a1;
  v2 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.vertex_id", 0xDuLL);
  *(v2 + 8) = "air.get_vertex_id";
  *(v2 + 16) = 17;
  *(v2 + 24) = 1;
  v3 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.instance_id", 0xFuLL);
  *(v3 + 8) = "air.get_instance_id";
  *(v3 + 16) = 19;
  *(v3 + 24) = 1;
  v4 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.base_vertex", 0xFuLL);
  *(v4 + 8) = "air.get_base_vertex";
  *(v4 + 16) = 19;
  *(v4 + 24) = 1;
  v5 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.base_instance", 0x11uLL);
  *(v5 + 8) = "air.get_base_instance";
  *(v5 + 16) = 21;
  *(v5 + 24) = 1;
  v6 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.thread_position_in_grid", 0x1BuLL);
  *(v6 + 8) = "air.get_global_id";
  *(v6 + 16) = 17;
  *(v6 + 24) = 0;
  v7 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.thread_position_in_threadgroup", 0x22uLL);
  *(v7 + 8) = "air.get_local_id";
  *(v7 + 16) = 16;
  *(v7 + 24) = 0;
  v8 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.thread_index_in_threadgroup", 0x1FuLL);
  *(v8 + 8) = "air.get_local_linear_id";
  *(v8 + 16) = 23;
  *(v8 + 24) = 1;
  v9 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.threadgroup_position_in_grid", 0x20uLL);
  *(v9 + 8) = "air.get_group_id";
  *(v9 + 16) = 16;
  *(v9 + 24) = 0;
  v10 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.threads_per_grid", 0x14uLL);
  *(v10 + 8) = "air.get_global_size";
  *(v10 + 16) = 19;
  *(v10 + 24) = 0;
  v11 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.threads_per_threadgroup", 0x1BuLL);
  *(v11 + 8) = "air.get_local_size";
  *(v11 + 16) = 18;
  *(v11 + 24) = 0;
  v12 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.threadgroups_per_grid", 0x19uLL);
  *(v12 + 8) = "air.get_num_groups";
  *(v12 + 16) = 18;
  *(v12 + 24) = 0;
  v13 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.thread_execution_width", 0x1AuLL);
  *(v13 + 8) = "air.get_thread_execution_width";
  *(v13 + 16) = 30;
  *(v13 + 24) = 1;
  v14 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.dispatch_threads_per_threadgroup", 0x24uLL);
  *(v14 + 8) = "air.get_dispatch_local_size";
  *(v14 + 16) = 27;
  *(v14 + 24) = 0;
  v15 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.thread_index_in_quadgroup", 0x1DuLL);
  *(v15 + 8) = "air.get_quad_element";
  *(v15 + 16) = 20;
  *(v15 + 24) = 1;
  v16 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.quadgroup_index_in_threadgroup", 0x22uLL);
  *(v16 + 8) = "air.get_quad_group";
  *(v16 + 16) = 18;
  *(v16 + 24) = 1;
  v17 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.quadgroups_per_threadgroup", 0x1EuLL);
  *(v17 + 8) = "air.get_quadgroups_per_threadgroup";
  *(v17 + 16) = 34;
  *(v17 + 24) = 1;
  v18 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.dispatch_quadgroups_per_threadgroup", 0x27uLL);
  *(v18 + 8) = "air.get_dispatch_quadgroups_per_threadgroup";
  *(v18 + 16) = 43;
  *(v18 + 24) = 1;
  v19 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.threads_per_simdgroup", 0x19uLL);
  *(v19 + 8) = "air.get_threads_per_simdgroup";
  *(v19 + 16) = 29;
  *(v19 + 24) = 1;
  v20 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.thread_index_in_simdgroup", 0x1DuLL);
  *(v20 + 8) = "air.get_thread_index_in_simdgroup";
  *(v20 + 16) = 33;
  *(v20 + 24) = 1;
  v21 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.simdgroup_index_in_threadgroup", 0x22uLL);
  *(v21 + 8) = "air.get_simdgroup_index_in_threadgroup";
  *(v21 + 16) = 38;
  *(v21 + 24) = 1;
  v22 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.simdgroups_per_threadgroup", 0x1EuLL);
  *(v22 + 8) = "air.get_simdgroups_per_threadgroup";
  *(v22 + 16) = 34;
  *(v22 + 24) = 1;
  v23 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.dispatch_simdgroups_per_threadgroup", 0x27uLL);
  *(v23 + 8) = "air.get_dispatch_simdgroups_per_threadgroup";
  *(v23 + 16) = 43;
  *(v23 + 24) = 1;
  v24 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.pixel_position_in_tile", 0x1AuLL);
  *(v24 + 8) = "air.get_local_id";
  *(v24 + 16) = 16;
  *(v24 + 24) = 0;
  v25 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.pixels_per_tile", 0x13uLL);
  *(v25 + 8) = "air.get_local_size";
  *(v25 + 16) = 18;
  *(v25 + 24) = 0;
  result = llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(*v1, "air.tile_index", 0xEuLL);
  v27 = *result;
  *(v27 + 8) = "air.get_local_linear_id";
  *(v27 + 16) = 23;
  *(v27 + 24) = 1;
  return result;
}

uint64_t llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, llvm::Value *a2)
{
  v3 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v14, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v16 = v4;
  v21 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v4, v4[2].i32[0], v15, &v21);
  if (result)
  {
    v6 = v21;
  }

  else
  {
    v6 = (*v4 + 48 * v4[2].u32[0]);
  }

  v7 = v16;
  if ((*v16 + 48 * v16[2].u32[0]) == v6)
  {
    goto LABEL_23;
  }

  v8 = v6[5];
  v22[0] = 2;
  v22[1] = 0;
  v23 = -8192;
  v24 = 0;
  v21 = &unk_2825A7378;
  llvm::ValueHandleBase::operator=((v6 + 1), v22);
  v9 = v23;
  v6[4] = v24;
  if (v9 != -8192 && v9 != -4096 && v9)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v22);
  }

  v7[1] = vadd_s32(v7[1], 0x1FFFFFFFFLL);
  v10 = v16;
  llvm::CallbackVH::CallbackVH(&v17, a2);
  v17 = &unk_2825A7378;
  v20 = v10;
  llvm::ValueHandleBase::ValueHandleBase(v22, (LODWORD(v18[0]) >> 1) & 3, v18);
  v21 = &unk_2825A7378;
  v24 = v20;
  v25 = v8;
  v26 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v10, *(v10 + 16), v23, &v26);
  if ((result & 1) == 0)
  {
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    if (4 * v11 + 4 >= 3 * v12)
    {
      v12 *= 2;
    }

    else if (v12 + ~v11 - *(v10 + 12) > v12 >> 3)
    {
LABEL_12:
      v13 = v26;
      ++*(v10 + 8);
      if (v13[3] != -4096)
      {
        --*(v10 + 12);
      }

      result = llvm::ValueHandleBase::operator=((v13 + 1), v22);
      v13[4] = v24;
      v13[5] = v25;
      goto LABEL_15;
    }

    llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>::grow(v10, v12);
    v26 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v10, *(v10 + 16), v23, &v26);
    goto LABEL_12;
  }

LABEL_15:
  if (v23 != -8192 && v23 != -4096 && v23)
  {
    result = llvm::ValueHandleBase::RemoveFromUseList(v22);
  }

  if (v19 != -8192 && v19 != -4096 && v19)
  {
    result = llvm::ValueHandleBase::RemoveFromUseList(v18);
  }

LABEL_23:
  if (v15 != -8192 && v15 != -4096)
  {
    if (v15)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v14);
    }
  }

  return result;
}

uint64_t *llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>::grow(uint64_t a1, int a2)
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
  *a1 = MEMORY[0x20F330650](v8, 48 * v8, 8);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>::initEmpty(a1);
    v22[0] = 2;
    v22[1] = 0;
    v23 = -4096;
    v24 = 0;
    v20 = 0;
    v21 = &unk_2825A7378;
    v18[0] = 2;
    v18[1] = 0;
    v19 = -8192;
    v9 = 3 * v3;
    if (v3)
    {
      v10 = (v4 + 24);
      v11 = 16 * v9;
      do
      {
        v12 = *v10;
        if (*v10 != v23 && v12 != v19)
        {
          v25 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v12, &v25);
          v14 = v25;
          llvm::ValueHandleBase::operator=((v25 + 8), v10 - 2);
          *(v14 + 32) = v10[1];
          *(v14 + 40) = v10[2];
          ++*(a1 + 8);
          v12 = *v10;
        }

        if (v12 != -8192 && v12 != -4096 && v12 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v10 - 2));
        }

        v10 += 6;
        v11 -= 48;
      }

      while (v11);
      if (v19 != -8192 && v19 != -4096 && v19)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v18);
      }
    }

    v16 = v23;
    if (v23 != -8192 && v23 != -4096 && v23)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v22);
    }

    return llvm::deallocate_buffer(v16, v4, (16 * v9));
  }

  else
  {

    return llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>::initEmpty(a1);
  }
}

uint64_t llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
{
  v1 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v7, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v9 = v2;
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v2, *(v2 + 16), v8, &v10);
  if (result)
  {
    v4 = v10;
    v11[0] = 2;
    v11[1] = 0;
    v12 = -8192;
    v13 = 0;
    v10 = &unk_2825A7378;
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

uint64_t llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, llvm::Value *a2)
{
  v3 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v12, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v14 = v4;
  v19 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v4, v4[2].i32[0], v13, &v19);
  if (result)
  {
    v6 = v19;
  }

  else
  {
    v6 = *v4 + 48 * v4[2].u32[0];
  }

  v7 = v14;
  if (*v14 + 48 * v14[2].u32[0] != v6)
  {
    v8 = *(v6 + 40);
    v20[0] = 2;
    v20[1] = 0;
    v21 = -8192;
    v22 = 0;
    v19 = &unk_2825BDF98;
    llvm::ValueHandleBase::operator=((v6 + 8), v20);
    v9 = v21;
    *(v6 + 32) = v22;
    if (v9 != -8192 && v9 != -4096 && v9)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v20);
    }

    v7[1] = vadd_s32(v7[1], 0x1FFFFFFFFLL);
    v10 = v14;
    llvm::CallbackVH::CallbackVH(&v15, a2);
    v15 = &unk_2825BDF98;
    v18 = v10;
    llvm::ValueHandleBase::ValueHandleBase(v20, (LODWORD(v16[0]) >> 1) & 3, v16);
    v19 = &unk_2825BDF98;
    v22 = v18;
    v23 = v8;
    v24 = 0;
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v10, *(v10 + 16), v21, &v24);
    if ((result & 1) == 0)
    {
      v11 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(v10, &v19, v24);
      result = llvm::ValueHandleBase::operator=((v11 + 8), v20);
      *(v11 + 32) = v22;
      *(v11 + 40) = v23;
    }

    if (v21 != -8192 && v21 != -4096 && v21)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v20);
    }

    if (v17 != -8192 && v17 != -4096 && v17)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v16);
    }
  }

  if (v13 != -8192 && v13 != -4096)
  {
    if (v13)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v12);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
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

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>::grow(uint64_t a1, int a2)
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
  *a1 = MEMORY[0x20F330650](v8, 48 * v8, 8);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>::initEmpty(a1);
    v22[0] = 2;
    v22[1] = 0;
    v23 = -4096;
    v24 = 0;
    v20 = 0;
    v21 = &unk_2825BDF98;
    v18[0] = 2;
    v18[1] = 0;
    v19 = -8192;
    v9 = 3 * v3;
    if (v3)
    {
      v10 = v4 + 24;
      v11 = 16 * v9;
      do
      {
        v12 = *v10;
        if (*v10 != v23 && v12 != v19)
        {
          v25 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v12, &v25);
          v14 = v25;
          llvm::ValueHandleBase::operator=((v25 + 8), v10 - 2);
          v12 = *v10;
          *(v14 + 32) = *(v10 + 1);
          *(v14 + 40) = *(v10 + 4);
          ++*(a1 + 8);
        }

        if (v12 != -8192 && v12 != -4096 && v12 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v10 - 16));
        }

        v10 += 48;
        v11 -= 48;
      }

      while (v11);
      if (v19 != -8192 && v19 != -4096 && v19)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v18);
      }
    }

    v16 = v23;
    if (v23 != -8192 && v23 != -4096 && v23)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v22);
    }

    return llvm::deallocate_buffer(v16, v4, (16 * v9));
  }

  else
  {

    return llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>::initEmpty(a1);
  }
}

uint64_t llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
{
  v1 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v7, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v9 = v2;
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v2, *(v2 + 16), v8, &v10);
  if (result)
  {
    v4 = v10;
    v11[0] = 2;
    v11[1] = 0;
    v12 = -8192;
    v13 = 0;
    v10 = &unk_2825BDF98;
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

void AGCLLVMUserObject::createTLSIntrinsic(AGCLLVMUserObject *this, const char *a2, const char *a3)
{
  v6 = *(this + *(*this - 24) + 1904);
  v7 = 1;
  v8 = llvm::User::operator new(0x58);
  llvm::Constant::getNullValue(v6, v9);
  HIBYTE(v39) = 1;
  if (*a2)
  {
    v38.__r_.__value_.__r.__words[0] = a2;
    v7 = 3;
  }

  LOBYTE(v39) = v7;
  v10 = llvm::GlobalVariable::GlobalVariable();
  *(v8 + 32) = *(v8 + 32) & 0xFFFFE3FF | 0x400;
  {
    if (v10)
    {
      AGCLLVMUserObject::getShaderDebuggerTLSBuiltinArgMaps(void)::shader_debugger_builtin_arg_map = 0;
      *&dword_27C8D9EF0 = 0;
      qword_27C8D9EF8 = 0x2000000000;
      __cxa_atexit(llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::~StringMap, &AGCLLVMUserObject::getShaderDebuggerTLSBuiltinArgMaps(void)::shader_debugger_builtin_arg_map, &dword_20E4E1000);
    }
  }

  if (dword_27C8D9EF4)
  {
    if (!a3)
    {
      goto LABEL_25;
    }

    goto LABEL_6;
  }

  AGCLLVMUserObject::getBuiltinArgMap(v10);
  if (dword_28117E618)
  {
      ;
    }
  }

  else
  {
    i = AGCLLVMUserObject::getBuiltinArgMap(void)::builtin_arg_map;
  }

  v13 = AGCLLVMUserObject::getBuiltinArgMap(void)::builtin_arg_map + 8 * dword_28117E618;
  if (i != v13)
  {
    v14 = *i;
    do
    {
      v15 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getShaderDebuggerTLSBuiltinArgMaps(void)::shader_debugger_builtin_arg_map, (v14 + 32), *v14);
      v16 = *(v14 + 24);
      *(v15 + 8) = *(v14 + 8);
      *(v15 + 24) = v16;
      do
      {
        v17 = i[1];
        ++i;
        v14 = v17;
        if (v17)
        {
          v18 = v14 == -8;
        }

        else
        {
          v18 = 1;
        }
      }

      while (v18);
    }

    while (i != v13);
  }

  v19 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getShaderDebuggerTLSBuiltinArgMaps(void)::shader_debugger_builtin_arg_map, "air.patch_id", 0xCuLL);
  *(v19 + 8) = "air.get_patch_id";
  *(v19 + 16) = 16;
  *(v19 + 24) = 1;
  v20 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getShaderDebuggerTLSBuiltinArgMaps(void)::shader_debugger_builtin_arg_map, "air.amplification_id", 0x14uLL);
  *(v20 + 8) = "air.get_amplification_id";
  *(v20 + 16) = 24;
  *(v20 + 24) = 1;
  v21 = *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(&AGCLLVMUserObject::getShaderDebuggerTLSBuiltinArgMaps(void)::shader_debugger_builtin_arg_map, "air.render_target_array_index", 0x1DuLL);
  *(v21 + 8) = "air.get_render_target_array_index";
  *(v21 + 16) = 33;
  *(v21 + 24) = 1;
  if (a3)
  {
LABEL_6:
    strlen(a3);
  }

LABEL_25:
  Key = llvm::StringMapImpl::FindKey();
  v23 = Key;
  if (Key == -1)
  {
    v23 = dword_27C8D9EF0;
  }

  llvm::StringRef::str(&v38, *(AGCLLVMUserObject::getShaderDebuggerTLSBuiltinArgMaps(void)::shader_debugger_builtin_arg_map + 8 * v23) + 8);
  if (v6 == *(this + *(*this - 24) + 1904))
  {
    v24 = ".i32";
  }

  else
  {
    v24 = ".i16";
  }

  v25 = std::string::append(&v38, v24);
  v26 = v25->__r_.__value_.__r.__words[2];
  *__p = *&v25->__r_.__value_.__l.__data_;
  v37 = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (v37 >= 0)
  {
    v27 = __p;
  }

  else
  {
    v27 = __p[0];
  }

  if (v37 >= 0)
  {
    v28 = SHIBYTE(v37);
  }

  else
  {
    v28 = __p[1];
  }

  inserted = AGCLLVMBuilder::getOrInsertFunction<>(this + *(*this - 24) + 1704, v27, v28, v6);
  v30 = *(this + 497);
  if (!v30)
  {
    v31 = *(*(this + 21) + 80);
    if (v31)
    {
      v30 = v31 - 24;
    }

    else
    {
      v30 = 0;
    }
  }

  v32 = *(v30 + 40);
  if (v32)
  {
    v33 = (v32 - 24);
  }

  else
  {
    v33 = 0;
  }

  llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v33);
  v34 = (this + *(*this - 24));
  v39 = 257;
  v35 = llvm::IRBuilderBase::CreateCall(v34 + 214, *(inserted + 24), inserted, 0, 0, &v38);
  llvm::IRBuilderBase::CreateAlignedStore((this + *(*this - 24) + 1712), v35, v8, 0, 1);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::string,unsigned int>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<std::pair<std::string,unsigned int>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,AGCLLVMUserObject::createTlsGlobalsConstructor(void)::$_0 &,std::tuple<std::string,unsigned int,unsigned int> *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4)
{
  v4 = a2[1].n128_u32[3];
  v5 = &a1[1].n128_u32[3];
  v6 = &a3[1].n128_u32[3];
  v7 = a3[1].n128_u32[3];
  if (v4 <= a1[1].n128_u32[3])
  {
    if (v7 > v4)
    {
      v14 = a2[1].n128_u64[0];
      result = *a2;
      v15 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v15;
      *a3 = result;
      a3[1].n128_u64[0] = v14;
      v12 = &a2[1].n128_i8[8];
      LODWORD(v14) = a2[1].n128_u32[2];
      a2[1].n128_u32[2] = a3[1].n128_u32[2];
      a3[1].n128_u32[2] = v14;
      v7 = a2[1].n128_u32[3];
      a2[1].n128_u32[3] = a3[1].n128_u32[3];
      a3[1].n128_u32[3] = v7;
      if (a2[1].n128_u32[3] > *v5)
      {
        v16 = a1[1].n128_u64[0];
        result = *a1;
        v17 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v17;
        *a2 = result;
        a2[1].n128_u64[0] = v16;
        v8 = &a1[1].n128_i8[8];
        v13 = &a1[1].n128_i8[12];
        v18 = &a2[1].n128_i8[12];
LABEL_10:
        v24 = *v8;
        *v8 = *v12;
        *v12 = v24;
        v25 = *v13;
        *v13 = *v18;
        *v18 = v25;
        v7 = *v6;
      }
    }
  }

  else
  {
    if (v7 > v4)
    {
      v8 = &a1[1].n128_i8[8];
      v9 = a1[1].n128_u64[0];
      result = *a1;
      v11 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v11;
      *a3 = result;
      a3[1].n128_u64[0] = v9;
      v12 = &a3[1].n128_i8[8];
      v13 = &a1[1].n128_i8[12];
LABEL_9:
      v18 = &a3[1].n128_i8[12];
      goto LABEL_10;
    }

    v19 = a1[1].n128_u64[0];
    result = *a1;
    v20 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v20;
    *a2 = result;
    a2[1].n128_u64[0] = v19;
    v8 = &a2[1].n128_i8[8];
    v21 = a1[1].n128_u32[2];
    a1[1].n128_u32[2] = a2[1].n128_u32[2];
    a2[1].n128_u32[2] = v21;
    LODWORD(v20) = a1[1].n128_u32[3];
    a1[1].n128_u32[3] = a2[1].n128_u32[3];
    a2[1].n128_u32[3] = v20;
    v7 = *v6;
    if (*v6 > v20)
    {
      v22 = a2[1].n128_u64[0];
      result = *a2;
      v23 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v23;
      *a3 = result;
      a3[1].n128_u64[0] = v22;
      v12 = &a3[1].n128_i8[8];
      v13 = &a2[1].n128_i8[12];
      goto LABEL_9;
    }
  }

  if (a4[1].n128_u32[3] > v7)
  {
    v26 = a3[1].n128_u64[0];
    result = *a3;
    v27 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v27;
    *a4 = result;
    a4[1].n128_u64[0] = v26;
    LODWORD(v26) = a3[1].n128_u32[2];
    a3[1].n128_u32[2] = a4[1].n128_u32[2];
    a4[1].n128_u32[2] = v26;
    LODWORD(v26) = a3[1].n128_u32[3];
    a3[1].n128_u32[3] = a4[1].n128_u32[3];
    a4[1].n128_u32[3] = v26;
    if (a3[1].n128_u32[3] > a2[1].n128_u32[3])
    {
      v28 = a2[1].n128_u64[0];
      result = *a2;
      v29 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v29;
      *a3 = result;
      a3[1].n128_u64[0] = v28;
      LODWORD(v28) = a2[1].n128_u32[2];
      a2[1].n128_u32[2] = a3[1].n128_u32[2];
      a3[1].n128_u32[2] = v28;
      LODWORD(v28) = a2[1].n128_u32[3];
      a2[1].n128_u32[3] = a3[1].n128_u32[3];
      a3[1].n128_u32[3] = v28;
      if (a2[1].n128_u32[3] > *v5)
      {
        v30 = a1[1].n128_u64[0];
        result = *a1;
        v31 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v31;
        *a2 = result;
        a2[1].n128_u64[0] = v30;
        LODWORD(v30) = a1[1].n128_u32[2];
        a1[1].n128_u32[2] = a2[1].n128_u32[2];
        a2[1].n128_u32[2] = v30;
        LODWORD(v30) = a1[1].n128_u32[3];
        a1[1].n128_u32[3] = a2[1].n128_u32[3];
        a2[1].n128_u32[3] = v30;
      }
    }
  }

  return result;
}

__n128 std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  result = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  *a1 = result;
  a2[1].n128_u8[7] = 0;
  a2->n128_u8[0] = 0;
  *(a1 + 24) = a2[1].n128_u32[2];
  *(a1 + 28) = a2[1].n128_u32[3];
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,AGCLLVMUserObject::createTlsGlobalsConstructor(void)::$_0 &,std::tuple<std::string,unsigned int,unsigned int> *>(__n128 *a1, __n128 *a2)
{
  v2 = a2;
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v24 = &a1[3].n128_i8[12];
      v25 = a1[3].n128_u32[3];
      v26 = a2[-1].n128_u32[3];
      v27 = a1 + 2;
      v28 = a2 - 2;
      v29 = &a1[1].n128_i8[12];
      v30 = a1[1].n128_u32[3];
      if (v25 <= v30)
      {
        if (v26 <= v25)
        {
          return 1;
        }

        v47 = a1[3].n128_u64[0];
        v48 = *v27;
        v49 = a2[-1].n128_u64[0];
        *v27 = *v28;
        a1[3].n128_u64[0] = v49;
        *v28 = v48;
        a2[-1].n128_u64[0] = v47;
        v35 = &a1[3].n128_i8[8];
        LODWORD(v47) = a1[3].n128_u32[2];
        a1[3].n128_u32[2] = a2[-1].n128_u32[2];
        a2[-1].n128_u32[2] = v47;
        LODWORD(v47) = a1[3].n128_u32[3];
        a1[3].n128_u32[3] = a2[-1].n128_u32[3];
        a2[-1].n128_u32[3] = v47;
        if (a1[3].n128_u32[3] <= a1[1].n128_u32[3])
        {
          return 1;
        }

        v50 = a1[1].n128_u64[0];
        v51 = *a1;
        *a1 = *v27;
        a1[1].n128_u64[0] = a1[3].n128_u64[0];
        *v27 = v51;
        a1[3].n128_u64[0] = v50;
        v31 = &a1[1].n128_i8[8];
      }

      else
      {
        if (v26 <= v25)
        {
          v56 = a1[1].n128_u64[0];
          v57 = *a1;
          *a1 = *v27;
          a1[1].n128_u64[0] = a1[3].n128_u64[0];
          *v27 = v57;
          a1[3].n128_u64[0] = v56;
          v58 = a1[1].n128_u32[2];
          a1[1].n128_u32[2] = a1[3].n128_u32[2];
          a1[1].n128_u32[3] = v25;
          a1[3].n128_u32[2] = v58;
          a1[3].n128_u32[3] = v30;
          if (a2[-1].n128_u32[3] <= v30)
          {
            return 1;
          }

          v59 = a1[3].n128_u64[0];
          v60 = *v27;
          v61 = a2[-1].n128_u64[0];
          *v27 = *v28;
          a1[3].n128_u64[0] = v61;
          *v28 = v60;
          a2[-1].n128_u64[0] = v59;
          v35 = &a2[-1].n128_i8[8];
          v31 = &a1[3].n128_i8[8];
          v29 = &a1[3].n128_i8[12];
        }

        else
        {
          v31 = &a1[1].n128_i8[8];
          v32 = a1[1].n128_u64[0];
          v33 = *a1;
          v34 = a2[-1].n128_u64[0];
          *a1 = *v28;
          a1[1].n128_u64[0] = v34;
          *v28 = v33;
          a2[-1].n128_u64[0] = v32;
          v35 = &a2[-1].n128_i8[8];
        }

        v24 = &a2[-1].n128_i8[12];
      }

      v62 = *v31;
      *v31 = *v35;
      *v35 = v62;
      v63 = *v29;
      *v29 = *v24;
      *v24 = v63;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,AGCLLVMUserObject::createTlsGlobalsConstructor(void)::$_0 &,std::tuple<std::string,unsigned int,unsigned int> *,0>(a1, a1 + 2, a1 + 4, a1 + 6);
        if (v2[-1].n128_u32[3] > a1[7].n128_u32[3])
        {
          v8 = a1[7].n128_u64[0];
          v9 = a1[6];
          v10 = v2[-1].n128_u64[0];
          a1[6] = v2[-2];
          a1[7].n128_u64[0] = v10;
          v2[-2] = v9;
          v2[-1].n128_u64[0] = v8;
          LODWORD(v8) = a1[7].n128_u32[2];
          a1[7].n128_u32[2] = v2[-1].n128_u32[2];
          v2[-1].n128_u32[2] = v8;
          LODWORD(v8) = a1[7].n128_u32[3];
          a1[7].n128_u32[3] = v2[-1].n128_u32[3];
          v2[-1].n128_u32[3] = v8;
          v11 = a1[7].n128_u32[3];
          v12 = a1[5].n128_u32[3];
          if (v11 > v12)
          {
            v13 = a1[5].n128_u64[0];
            v14 = a1[4];
            a1[4] = a1[6];
            a1[5].n128_u64[0] = a1[7].n128_u64[0];
            a1[6] = v14;
            a1[7].n128_u64[0] = v13;
            v15 = a1[5].n128_u32[2];
            v16 = a1[7].n128_u32[2];
            a1[5].n128_u32[2] = v16;
            a1[5].n128_u32[3] = v11;
            a1[7].n128_u32[2] = v15;
            a1[7].n128_u32[3] = v12;
            v17 = a1[3].n128_u32[3];
            if (v11 > v17)
            {
              v18 = a1[3].n128_u64[0];
              v19 = a1[2];
              a1[2] = a1[4];
              a1[3].n128_u64[0] = a1[5].n128_u64[0];
              a1[4] = v19;
              a1[5].n128_u64[0] = v18;
              LODWORD(v18) = a1[3].n128_u32[2];
              a1[3].n128_u32[2] = v16;
              a1[3].n128_u32[3] = v11;
              a1[5].n128_u32[2] = v18;
              a1[5].n128_u32[3] = v17;
              v20 = a1[1].n128_u32[3];
              if (v11 > v20)
              {
                v21 = a1[1].n128_u64[0];
                v22 = *a1;
                *a1 = a1[2];
                a1[1].n128_u64[0] = a1[3].n128_u64[0];
                a1[2] = v22;
                a1[3].n128_u64[0] = v21;
                LODWORD(v21) = a1[1].n128_u32[2];
                a1[1].n128_u32[2] = v16;
                a1[1].n128_u32[3] = v11;
                result = 1;
                a1[3].n128_u32[2] = v21;
                a1[3].n128_u32[3] = v20;
                return result;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,AGCLLVMUserObject::createTlsGlobalsConstructor(void)::$_0 &,std::tuple<std::string,unsigned int,unsigned int> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (a2[-1].n128_u32[3] > a1[1].n128_u32[3])
    {
      v5 = a1[1].n128_u64[0];
      v6 = *a1;
      v7 = a2[-1].n128_u64[0];
      *a1 = a2[-2];
      a1[1].n128_u64[0] = v7;
      a2[-2] = v6;
      a2[-1].n128_u64[0] = v5;
      LODWORD(v5) = a1[1].n128_u32[2];
      a1[1].n128_u32[2] = a2[-1].n128_u32[2];
      a2[-1].n128_u32[2] = v5;
      LODWORD(v5) = a1[1].n128_u32[3];
      a1[1].n128_u32[3] = a2[-1].n128_u32[3];
      a2[-1].n128_u32[3] = v5;
    }

    return 1;
  }

LABEL_17:
  v36 = &a1[3].n128_i8[12];
  v37 = a1[3].n128_u32[3];
  v38 = a1 + 4;
  v39 = a1 + 2;
  v41 = &a1[1].n128_i8[12];
  v40 = a1[1].n128_u32[3];
  v42 = a1[5].n128_u32[3];
  if (v37 > v40)
  {
    if (v42 <= v37)
    {
      v64 = a1[1].n128_u64[0];
      v65 = *a1;
      *a1 = *v39;
      a1[1].n128_u64[0] = a1[3].n128_u64[0];
      *v39 = v65;
      a1[3].n128_u64[0] = v64;
      v43 = &a1[3].n128_i8[8];
      v66 = a1[1].n128_u32[2];
      a1[1].n128_u32[2] = a1[3].n128_u32[2];
      a1[1].n128_u32[3] = v37;
      a1[3].n128_u32[2] = v66;
      a1[3].n128_u32[3] = v40;
      if (v42 <= v40)
      {
        goto LABEL_35;
      }

      v67 = a1[3].n128_u64[0];
      v68 = *v39;
      *v39 = *v38;
      a1[3].n128_u64[0] = a1[5].n128_u64[0];
      *v38 = v68;
      a1[5].n128_u64[0] = v67;
      v46 = &a1[5].n128_i8[8];
      v41 = &a1[3].n128_i8[12];
    }

    else
    {
      v43 = &a1[1].n128_i8[8];
      v44 = a1[1].n128_u64[0];
      v45 = *a1;
      *a1 = *v38;
      a1[1].n128_u64[0] = a1[5].n128_u64[0];
      *v38 = v45;
      a1[5].n128_u64[0] = v44;
      v46 = &a1[5].n128_i8[8];
    }

    v36 = &a1[5].n128_i8[12];
    goto LABEL_34;
  }

  if (v42 > v37)
  {
    v52 = a1[3].n128_u64[0];
    v53 = *v39;
    *v39 = *v38;
    a1[3].n128_u64[0] = a1[5].n128_u64[0];
    *v38 = v53;
    a1[5].n128_u64[0] = v52;
    v46 = &a1[3].n128_i8[8];
    LODWORD(v52) = a1[3].n128_u32[2];
    a1[3].n128_u32[2] = a1[5].n128_u32[2];
    a1[3].n128_u32[3] = v42;
    a1[5].n128_u32[2] = v52;
    a1[5].n128_u32[3] = v37;
    if (v42 > v40)
    {
      v54 = a1[1].n128_u64[0];
      v55 = *a1;
      *a1 = *v39;
      a1[1].n128_u64[0] = a1[3].n128_u64[0];
      *v39 = v55;
      a1[3].n128_u64[0] = v54;
      v43 = &a1[1].n128_i8[8];
LABEL_34:
      v69 = *v43;
      *v43 = *v46;
      *v46 = v69;
      *v41 = v42;
      *v36 = v40;
    }
  }

LABEL_35:
  v70 = a1 + 6;
  if (&a1[6] == a2)
  {
    return 1;
  }

  v71 = 0;
  v72 = 0;
  while (1)
  {
    v73 = v70[1].n128_u32[3];
    if (v73 > v38[1].n128_u32[3])
    {
      break;
    }

LABEL_47:
    v38 = v70;
    v71 += 32;
    v70 += 2;
    if (v70 == v2)
    {
      return 1;
    }
  }

  v74 = v70->n128_u64[0];
  *v81 = v70->n128_u64[1];
  *&v81[7] = *(&v70->n128_u64[1] + 7);
  v75 = v70[1].n128_u8[7];
  v70->n128_u64[1] = 0;
  v70[1].n128_u64[0] = 0;
  v70->n128_u64[0] = 0;
  v76 = v70[1].n128_u32[2];
  v77 = v71;
  while (1)
  {
    std::__memberwise_forward_assign[abi:nn200100]<std::tuple<std::string,unsigned int,unsigned int>,std::tuple<std::string,unsigned int,unsigned int>,std::string,unsigned int,unsigned int,0ul,1ul,2ul>(&a1[6] + v77, (a1 + v77 + 64));
    if (v77 == -64)
    {
      break;
    }

    v78 = *(&a1[3].n128_u32[3] + v77);
    v77 -= 32;
    if (v73 <= v78)
    {
      v79 = (a1 + v77 + 96);
      goto LABEL_43;
    }
  }

  v79 = a1;
LABEL_43:
  if (v79[1].n128_i8[7] < 0)
  {
    operator delete(v79->n128_u64[0]);
  }

  v79->n128_u64[0] = v74;
  v79->n128_u64[1] = *v81;
  *(&v79->n128_u64[1] + 7) = *&v81[7];
  v79[1].n128_u8[7] = v75;
  v79[1].n128_u32[2] = v76;
  v79[1].n128_u32[3] = v73;
  if (++v72 != 8)
  {
    v2 = a2;
    goto LABEL_47;
  }

  return &v70[2] == a2;
}

uint64_t areTypesIsomorphic(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  while (1)
  {
    v2 = *(a1 + 8);
    v3 = *(a2 + 8);
    if (v3 != v2)
    {
      return 0;
    }

    v4 = *(a1 + 8);
    if (v4 != 17)
    {
      break;
    }

    if (*(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }

    a1 = **(a1 + 16);
    a2 = **(a2 + 16);
    if (a1 == a2)
    {
      return 1;
    }
  }

  switch(v4)
  {
    case 14:
      if (v2 > 0xFF != v3 > 0xFF)
      {
        return 0;
      }

      v6 = *(a1 + 12);
      if (v6 != *(a2 + 12))
      {
        return 0;
      }

      v7 = *(a1 + 16);
      v8 = *(a2 + 16);
      result = areTypesIsomorphic(*v7, *v8);
      if (result)
      {
        v9 = -(v6 - 1);
        v10 = 1;
        do
        {
          result = v9 + v10 == 1;
          if (v9 + v10 == 1)
          {
            break;
          }

          v11 = areTypesIsomorphic(v7[v10], v8[v10]);
          result = 0;
          ++v10;
        }

        while ((v11 & 1) != 0);
      }

      break;
    case 16:
      if (((*(a1 + 8) & 0x100) == 0) != ((*(a2 + 8) & 0x100) == 0))
      {
        return 0;
      }

      if (((v2 ^ v3) & 0x200) != 0)
      {
        return 0;
      }

      v12 = *(a1 + 12);
      if (v12 != *(a2 + 12))
      {
        return 0;
      }

      if (!v12)
      {
        return 1;
      }

      v13 = *(a1 + 16);
      v14 = *(a2 + 16);
      v15 = v12 - 1;
      do
      {
        v17 = *v13++;
        v16 = v17;
        v18 = *v14++;
        result = areTypesIsomorphic(v16, v18);
        v20 = v15-- != 0;
      }

      while (result && v20);
      break;
    case 15:
      if ((*(a1 + 8) & 0xFE) == 0x12)
      {
        v2 = *(**(a1 + 16) + 8);
      }

      if ((*(a2 + 8) & 0xFE) == 0x12)
      {
        v3 = *(**(a2 + 16) + 8);
      }

      return (v3 ^ v2) < 0x100;
    default:
      return 0;
  }

  return result;
}

uint64_t std::__function::__func<void (AGCLLVMTargetLowerer::*)(llvm::CallInst *,BOOL),std::allocator<void (AGCLLVMTargetLowerer::*)(llvm::CallInst *,BOOL)>,void ()(AGCLLVMTargetLowerer&,llvm::CallInst *,BOOL)>::operator()(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = (a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, *a3, *a4);
}

__n128 std::__function::__func<void (AGCLLVMTargetLowerer::*)(llvm::CallInst *,BOOL),std::allocator<void (AGCLLVMTargetLowerer::*)(llvm::CallInst *,BOOL)>,void ()(AGCLLVMTargetLowerer&,llvm::CallInst *,BOOL)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A74C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void AGCLLVMUserObject::dumpScsLayoutToStatusFile(uint64_t *a1, uint64_t a2)
{
  v264 = *MEMORY[0x277D85DE8];
  if (!AGCLLVMObjectBase::dumpShaderToFile((a1 + *(*a1 - 24))))
  {
    return;
  }

  {
    AGCLLVMUserObject::dumpScsLayoutToStatusFile(llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>)::dump_human_readable_section = 1;
  }

  {
    AGCLLVMUserObject::dumpScsLayoutToStatusFile(llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>)::dump_machine_readable_section = 0;
  }

  if ((AGCLLVMUserObject::dumpScsLayoutToStatusFile(llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>)::dump_human_readable_section & 1) == 0 && AGCLLVMUserObject::dumpScsLayoutToStatusFile(llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>)::dump_machine_readable_section != 1)
  {
    return;
  }

  *v245 = 0u;
  *v246 = 0u;
  v247 = 0u;
  *v248 = 0u;
  *__p = 0u;
  v250 = 1065353216;
  v3 = *(*(a1 + *(*a1 - 24) + 2168) + 1908);
  if (v3 <= 3)
  {
    if ((v3 - 1) < 2)
    {
      llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::StringMap(&v262, a2);
      v4 = a1[506];
      v5 = a1[505];
      v6 = *(a1 + 2016) | (v4 << 32) | (*(a1 + 1016) << 16) | (v5 << 48);
      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>::getSectionEnd(v6 | 0x60000000, 4);
      v8 = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>::getSectionEnd(v6 | 0x1000000, 12);
      v9 = 96;
      if (v8 != SectionEnd)
      {
        v10 = (16773120 - SectionEnd) / (v8 - SectionEnd);
        v9 = v10 >= 0x60 ? 96 : (16773120 - SectionEnd) / (v8 - SectionEnd);
        if (v10 < 0x20)
        {
          v9 = 0;
        }
      }

      v243 = v9;
      v11 = v6 | (v9 << 24);
      v244 = (RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>::getSectionEnd(v11, 12) + 0x1FFF) & 0xFFFFF000;
      v255 = v245;
      AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s", "RaytracingConstantsGen1::ScsLayoutGen1");
      AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, " {\n");
      AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s", "  ", "RaytracingConstantsGen1::ScsLayoutGen1Base<RaytracingConstantsGen1::ScsLayoutGen1>");
      AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, " {\n");
      AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s", "    ", "RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>");
      AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, " {\n");
      AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s %s : %zu = %u\n", "      ", "uint32_t", "traversal_depth", 0x10uLL, v11);
      AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s %s : %zu = %u\n", "      ", "uint32_t", "max_instance_levels", 8uLL, BYTE2(v11));
      AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s %s : %zu = %u\n", "      ", "uint32_t", "num_cliques", 8uLL, BYTE3(v11));
      AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s %s : %zu = %u\n", "      ", "uint32_t", "per_ray_user_payload_size", 0x10uLL, v4);
      AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s %s : %zu = %u\n", "      ", "uint32_t", "per_ray_driver_payload_size", 0x10uLL, v5);
      AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s}\n", "    ");
      AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s}\n", "  ");
      AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "}\n");
      v12 = (v11 >> 19) & 0x1FE0;
      v13 = 8 * v11 * v12;
      v14 = v12 * v5;
      v15 = v12 * v4;
      for (i = 1; i > 4; ++i)
      {
        if (i > 10)
        {
          if (i == 11)
          {
            v17 = v15;
            if (!v15)
            {
              continue;
            }

LABEL_29:
            if (i > 9)
            {
              if (i == 10)
              {
                v18 = 5;
              }

              else
              {
                v18 = 6;
              }
            }

            else
            {
              v18 = 4;
            }

LABEL_36:
            *&v252 = __PAIR64__(RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>::getSectionEnd(v11, v18), i);
            DWORD2(v252) = v17;
            continue;
          }

          if (i == 12)
          {
            v19 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v247 - v246[1]) >> 2));
            if (v247 == v246[1])
            {
              v20 = 0;
            }

            else
            {
              v20 = v19;
            }

            if (v263)
            {
                ;
              }
            }

            else
            {
              j = v262;
            }

            v237 = &v262[v263];
            if (j != v237)
            {
              v85 = *j;
              do
              {
                v254 = *(v85 + 16);
                v86 = v254;
                v87 = *(a1 + *(*a1 - 24) + 2168);
                v88 = (*(*v87 + 1456))(v87, v254);
                v89 = (v86 >> 5) & 1;
                v90 = (*(**(a1 + *(*a1 - 24) + 2168) + 1016))();
                v91 = 0;
                v92 = 0;
                v252 = 0uLL;
                v93 = 6;
                v94 = -104;
                v253 = 0;
                do
                {
                  v95 = *(a1 + *(*a1 - 24) + 2168);
                  if (RaytracingConstantsGen1::payloadHasSegment(v93, v88, v89, v95[1940]))
                  {
                    v96 = (*(*v95 + 1024))(v95);
                    v97 = RaytracingConstantsGen1::payloadSegmentSize(v93, v96);
                    if (v97)
                    {
                      v98 = v97;
                      if (v97 <= v90)
                      {
                        LODWORD(v251) = v93;
                        BYTE4(v251) = 1;
                        *(&v251 + 1) = __PAIR64__(v97, v92);
                        v101 = (v98 + 3) & 0x3FFC;
                        v92 += v101;
                        v102 = v90 >= v101;
                        v103 = v90 - v101;
                        if (v102)
                        {
                          v90 = v103;
                        }

                        else
                        {
                          v90 = 0;
                        }
                      }

                      else
                      {
                        if ((v93 - 19) <= 4)
                        {
                          v99 = *(a1 + 1016);
                          if (v99 >= ((0x201010101uLL >> v94) & 3))
                          {
                            v100 = (v99 - ((0x201010101uLL >> v94) & 3)) / ((65792 * ((0x201010101uLL >> v94) & 3)) >> 16) + 1;
                          }

                          else
                          {
                            v100 = 0;
                          }

                          v98 = v100 * v97;
                        }

                        LODWORD(v251) = v93;
                        BYTE4(v251) = 0;
                        *(&v251 + 1) = __PAIR64__(v98, v91);
                        v91 += 32 * v98;
                      }
                    }
                  }

                  ++v93;
                  v94 += 8;
                }

                while (v93 != 26);
                v105 = *v104;
                if (*v104)
                {
                  v104[1] = v105;
                  operator delete(v105);
                }

                *v104 = v252;
                v104[2] = v253;
                do
                {
                  v106 = j[1];
                  ++j;
                  v85 = v106;
                  if (v106)
                  {
                    v107 = v85 == -8;
                  }

                  else
                  {
                    v107 = 1;
                  }
                }

                while (v107);
              }

              while (j != v237);
            }

            v108 = &v262;
            goto LABEL_317;
          }
        }

        else
        {
          v17 = v13;
          if (i == 5 || (v17 = v14, i == 10))
          {
            if (v17)
            {
              goto LABEL_29;
            }
          }
        }

LABEL_37:
        ;
      }

      if (i > 2)
      {
        if (i == 3)
        {
          v17 = 0x40000;
          v18 = 2;
        }

        else
        {
          v17 = 0x10000;
          v18 = 3;
        }
      }

      else if (i == 1)
      {
        v17 = 24576;
        v18 = 7;
      }

      else
      {
        if (i != 2)
        {
          goto LABEL_37;
        }

        v17 = 0x2000;
        v18 = 1;
      }

      goto LABEL_36;
    }

    if (v3 != 3)
    {
      goto LABEL_437;
    }

    llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::StringMap(&v260, a2);
    v45 = a1[506];
    v236 = a1[505];
    v46 = *(a1 + 2016) | (v45 << 32) | (*(a1 + 1016) << 16) | (v236 << 48);
    v47 = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(v46 | 0x60000000, 4);
    v48 = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(v46 | 0x1000000, 12);
    v49 = 96;
    if (v48 != v47)
    {
      v50 = (16773120 - v47) / (v48 - v47);
      v49 = v50 >= 0x60 ? 96 : (16773120 - v47) / (v48 - v47);
      if (v50 < 0x20)
      {
        v49 = 0;
      }
    }

    v243 = v49;
    v51 = v46 | (v49 << 24);
    v244 = (RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(v51, 12) + 0x1FFF) & 0xFFFFF000;
    v255 = v245;
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s", "RaytracingConstantsGen2::ScsLayoutGen2");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, " {\n");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s", "  ", "RaytracingConstantsGen2::ScsLayoutGen2Base<RaytracingConstantsGen2::ScsLayoutGen2>");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, " {\n");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s", "    ", "RaytracingConstantsGen1::ScsLayoutGen1Base<RaytracingConstantsGen2::ScsLayoutGen2>");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, " {\n");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s", "      ", "RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, " {\n");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s %s : %zu = %u\n", "        ", "uint32_t", "traversal_depth", 0x10uLL, v51);
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s %s : %zu = %u\n", "        ", "uint32_t", "max_instance_levels", 8uLL, BYTE2(v51));
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s %s : %zu = %u\n", "        ", "uint32_t", "num_cliques", 8uLL, BYTE3(v51));
    v52 = v45;
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s %s : %zu = %u\n", "        ", "uint32_t", "per_ray_user_payload_size", 0x10uLL, v45);
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s %s : %zu = %u\n", "        ", "uint32_t", "per_ray_driver_payload_size", 0x10uLL, v236);
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s}\n", "      ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s}\n", "    ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s}\n", "  ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "}\n");
    v53 = (v51 >> 19) & 0x1FE0;
    v54 = 8 * v51 * v53;
    v55 = v53 * v236;
    if (BYTE2(v51) <= 1u)
    {
      v56 = BYTE2(v51);
    }

    else
    {
      v56 = BYTE2(v51) + 1;
    }

    v57 = (WORD1(v51) & 0xFF00) * v56;
    v58 = 1;
    v59 = v53 * v52;
    while (v58 > 4)
    {
      if (v58 <= 9)
      {
        v60 = v54;
        if (v58 == 5)
        {
          goto LABEL_126;
        }

        v60 = v57;
        if (v58 == 6)
        {
          goto LABEL_126;
        }
      }

      else
      {
        v60 = v55;
        switch(v58)
        {
          case 10:
            goto LABEL_126;
          case 11:
            v60 = v59;
LABEL_126:
            if (!v60)
            {
              break;
            }

            if (v58 > 9)
            {
              if (v58 == 10)
              {
                v61 = 5;
              }

              else
              {
                v61 = 6;
              }
            }

            else if (v58 == 5)
            {
              v61 = 4;
            }

            else
            {
              v61 = 10;
            }

LABEL_138:
            *&v252 = __PAIR64__(RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(v51, v61), v58);
            DWORD2(v252) = v60;
            break;
          case 12:
            v62 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v247 - v246[1]) >> 2));
            if (v247 == v246[1])
            {
              v63 = 0;
            }

            else
            {
              v63 = v62;
            }

            if (v261)
            {
                ;
              }
            }

            else
            {
              k = v260;
            }

            v239 = &v260[v261];
            if (k != v239)
            {
              v131 = *k;
              do
              {
                v254 = *(v131 + 16);
                v132 = v254;
                v133 = *(a1 + *(*a1 - 24) + 2168);
                v134 = (*(*v133 + 1456))(v133, v254);
                v135 = (v132 >> 5) & 1;
                v136 = (*(**(a1 + *(*a1 - 24) + 2168) + 1016))();
                v137 = 0;
                v138 = 0;
                v252 = 0uLL;
                v139 = 6;
                v140 = -104;
                v253 = 0;
                do
                {
                  v141 = *(a1 + *(*a1 - 24) + 2168);
                  if (RaytracingConstantsGen1::payloadHasSegment(v139, v134, v135, v141[1940]))
                  {
                    v142 = (*(*v141 + 1024))(v141);
                    v143 = RaytracingConstantsGen2::payloadSegmentSize(v139, v142);
                    if (v143)
                    {
                      v144 = v143;
                      if (v143 <= v136)
                      {
                        LODWORD(v251) = v139;
                        BYTE4(v251) = 1;
                        *(&v251 + 1) = __PAIR64__(v143, v138);
                        v147 = (v144 + 3) & 0x3FFC;
                        v138 += v147;
                        v102 = v136 >= v147;
                        v148 = v136 - v147;
                        if (v102)
                        {
                          v136 = v148;
                        }

                        else
                        {
                          v136 = 0;
                        }
                      }

                      else
                      {
                        if ((v139 - 19) <= 4)
                        {
                          v145 = *(a1 + 1016);
                          if (v145 >= ((0x201010101uLL >> v140) & 3))
                          {
                            v146 = (v145 - ((0x201010101uLL >> v140) & 3)) / ((65792 * ((0x201010101uLL >> v140) & 3)) >> 16) + 1;
                          }

                          else
                          {
                            v146 = 0;
                          }

                          v144 = v146 * v143;
                        }

                        LODWORD(v251) = v139;
                        BYTE4(v251) = 0;
                        *(&v251 + 1) = __PAIR64__(v144, v137);
                        v137 += 32 * v144;
                      }
                    }
                  }

                  v139 = (v139 + 1);
                  v140 += 8;
                }

                while (v139 != 26);
                v150 = *v149;
                if (*v149)
                {
                  v149[1] = v150;
                  operator delete(v150);
                }

                *v149 = v252;
                v149[2] = v253;
                do
                {
                  v151 = k[1];
                  ++k;
                  v131 = v151;
                  if (v151)
                  {
                    v152 = v131 == -8;
                  }

                  else
                  {
                    v152 = 1;
                  }
                }

                while (v152);
              }

              while (k != v239);
            }

            v108 = &v260;
            goto LABEL_317;
        }
      }

LABEL_139:
      ++v58;
    }

    if (v58 > 2)
    {
      if (v58 == 3)
      {
        v60 = 0x40000;
        v61 = 2;
      }

      else
      {
        v60 = 0x20000;
        v61 = 3;
      }
    }

    else if (v58 == 1)
    {
      v60 = 24576;
      v61 = 7;
    }

    else
    {
      if (v58 != 2)
      {
        goto LABEL_139;
      }

      v60 = 0x2000;
      v61 = 1;
    }

    goto LABEL_138;
  }

  if (v3 != 4)
  {
    if (v3 != 5)
    {
      goto LABEL_437;
    }

    llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::StringMap(&v256, a2);
    v26 = a1[506];
    v235 = a1[505];
    v27 = *(a1 + 2016) | (v26 << 32) | (*(a1 + 1016) << 16) | (v235 << 48);
    v28 = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(v27 | 0x60000000, 9);
    v29 = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(v27 | 0x1000000, 12);
    v30 = 96;
    if (v29 != v28)
    {
      v31 = (67104768 - v28) / (v29 - v28);
      v30 = v31 >= 0x60 ? 96 : (67104768 - v28) / (v29 - v28);
      if (v31 < 0x20)
      {
        v30 = 0;
      }
    }

    v243 = v30;
    v32 = v27 | (v30 << 24);
    v244 = (RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(v32, 12) + 0x1FFF) & 0xFFFFF000;
    v255 = v245;
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s", "RaytracingConstantsGen4::ScsLayoutGen4");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, " {\n");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s", "  ", "RaytracingConstantsGen4::ScsLayoutGen4Base<RaytracingConstantsGen4::ScsLayoutGen4>");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, " {\n");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s", "    ", "RaytracingConstantsGen3::ScsLayoutGen3Base<RaytracingConstantsGen4::ScsLayoutGen4>");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, " {\n");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s", "      ", "RaytracingConstantsGen2::ScsLayoutGen2Base<RaytracingConstantsGen4::ScsLayoutGen4>");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, " {\n");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s", "        ", "RaytracingConstantsGen1::ScsLayoutGen1Base<RaytracingConstantsGen4::ScsLayoutGen4>");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, " {\n");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s", "          ", "RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, " {\n");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s %s : %zu = %u\n", "            ", "uint32_t", "traversal_depth", 0x10uLL, v32);
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s %s : %zu = %u\n", "            ", "uint32_t", "max_instance_levels", 8uLL, BYTE2(v32));
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s %s : %zu = %u\n", "            ", "uint32_t", "num_cliques", 8uLL, BYTE3(v32));
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s %s : %zu = %u\n", "            ", "uint32_t", "per_ray_user_payload_size", 0x10uLL, v26);
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s %s : %zu = %u\n", "            ", "uint32_t", "per_ray_driver_payload_size", 0x10uLL, v235);
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s}\n", "          ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s}\n", "        ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s}\n", "      ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s}\n", "    ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s}\n", "  ");
    AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "}\n");
    v33 = (v32 >> 19) & 0x1FE0;
    v34 = 8 * v32 * v33;
    v35 = v33 * v235;
    v36 = v33 * v26;
    v37 = 1;
    while (v37 <= 6)
    {
      if (v37 > 3)
      {
        if (v37 == 4)
        {
          v38 = 98304;
          v40 = 2;
          goto LABEL_90;
        }

        v38 = v34;
        if (v37 != 5)
        {
          v38 = 49152 * BYTE2(v32);
        }

LABEL_74:
        if (v38)
        {
          goto LABEL_75;
        }

        goto LABEL_92;
      }

      if ((v37 - 1) < 2)
      {
        v38 = 0x4000;
LABEL_75:
        v39 = 0;
        if (v37 > 6)
        {
          if (v37 == 10)
          {
            v40 = 5;
          }

          else
          {
            v40 = 10;
          }

          goto LABEL_90;
        }

        if (v37 > 3)
        {
          if (v37 == 5)
          {
            v40 = 3;
          }

          else
          {
            v40 = 8;
          }

          goto LABEL_90;
        }

        if (v37 == 2)
        {
          v40 = 1;
          goto LABEL_90;
        }

        if (v37 == 3)
        {
          v40 = 9;
          goto LABEL_90;
        }

LABEL_91:
        *&v252 = __PAIR64__(v39, v37);
        DWORD2(v252) = v38;
        goto LABEL_92;
      }

      v38 = ((BYTE2(v32) + 2) >> 1) * ((v32 >> 13) & 0x7F800);
      if (v37 == 3)
      {
        goto LABEL_74;
      }

LABEL_92:
      if (++v37 == 12)
      {
        v41 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v247 - v246[1]) >> 2));
        if (v247 == v246[1])
        {
          v42 = 0;
        }

        else
        {
          v42 = v41;
        }

        if (v257)
        {
            ;
          }
        }

        else
        {
          m = v256;
        }

        v230 = &v256[v257];
        if (m == v230)
        {
LABEL_316:
          v108 = &v256;
          goto LABEL_317;
        }

        v153 = *m;
        while (2)
        {
          v254 = *(v153 + 16);
          v154 = *(a1 + *(*a1 - 24) + 2168);
          v232 = (v254 >> 5) & 1;
          v234 = (*(*v154 + 1456))(v154, v254);
          v155 = (*(**(a1 + *(*a1 - 24) + 2168) + 1016))();
          v240 = 0;
          v156 = 0;
          v252 = 0uLL;
          v157 = -104;
          v158 = 2;
          v253 = 0;
LABEL_286:
          v159 = *a1;
          v160 = v158 + 4;
          if ((v158 + 4) <= 0xF)
          {
            if (((1 << v160) & 0x8580) != 0)
            {
              goto LABEL_288;
            }

            if (((1 << v160) & 0x30) != 0)
            {
              goto LABEL_291;
            }
          }

          if (RaytracingConstantsGen3::payloadHasSegment(v158 + 4, v234, v232, *(*(a1 + *(*a1 - 24) + 2168) + 1940)))
          {
LABEL_291:
            v161 = *(a1 + *(v159 - 24) + 2168);
            v162 = (*(*v161 + 1024))(v161);
            if (v158 < 0xC && ((0x85Bu >> v158) & 1) != 0)
            {
              v163 = dword_20E70D3D0[2 * v158];
              if (!v163)
              {
                goto LABEL_288;
              }
            }

            else
            {
              v163 = RaytracingConstantsGen3::payloadSegmentSize(v158 + 4, v162);
              if (!v163)
              {
                goto LABEL_288;
              }
            }

            if (v155 >= v163)
            {
              LODWORD(v251) = v158 + 4;
              BYTE4(v251) = 1;
              *(&v251 + 1) = __PAIR64__(v163, v156);
              v166 = (v163 + 3) & 0xFFFFFFFC;
              v156 += v166;
              v102 = v155 >= v166;
              v167 = v155 - v166;
              if (v102)
              {
                v155 = v167;
              }

              else
              {
                v155 = 0;
              }
            }

            else
            {
              if (v158 - 15 <= 4)
              {
                v164 = *(a1 + 1016);
                if (v164 >= ((0x201010101uLL >> v157) & 3))
                {
                  v165 = (v164 - ((0x201010101uLL >> v157) & 3)) / ((65792 * ((0x201010101uLL >> v157) & 3)) >> 16) + 1;
                }

                else
                {
                  v165 = 0;
                }

                v163 *= v165;
              }

              LODWORD(v251) = v158 + 4;
              BYTE4(v251) = 0;
              *(&v251 + 1) = __PAIR64__(v163, v240);
              v240 += 32 * v163;
            }
          }

LABEL_288:
          ++v158;
          v157 += 8;
          if (v158 == 22)
          {
            v169 = v168;
            v170 = *v168;
            if (v170)
            {
              v169[1] = v170;
              operator delete(v170);
            }

            *v169 = v252;
            v169[2] = v253;
            do
            {
              v171 = m[1];
              ++m;
              v153 = v171;
              if (v171)
              {
                v172 = v153 == -8;
              }

              else
              {
                v172 = 1;
              }
            }

            while (v172);
            if (m == v230)
            {
              goto LABEL_316;
            }

            continue;
          }

          goto LABEL_286;
        }
      }
    }

    if (v37 <= 8)
    {
      if (v37 == 7)
      {
        v38 = 49152;
        v40 = 4;
      }

      else
      {
        v38 = 61440;
        v40 = 7;
      }

LABEL_90:
      v39 = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(v32, v40);
      goto LABEL_91;
    }

    if (v37 == 9)
    {
      v38 = 589824;
      v40 = 6;
      goto LABEL_90;
    }

    v38 = v35;
    if (v37 != 10)
    {
      if (v37 != 11)
      {
        goto LABEL_92;
      }

      v38 = v36;
    }

    goto LABEL_74;
  }

  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::StringMap(&v258, a2);
  v66 = a1[506];
  v67 = a1[505];
  v68 = *(a1 + 2016) | (v66 << 32) | (*(a1 + 1016) << 16) | (v67 << 48);
  v69 = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>::getSectionEnd(v68 | 0x60000000, 2);
  v70 = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>::getSectionEnd(v68 | 0x1000000, 12);
  v71 = 96;
  if (v70 != v69)
  {
    v72 = (67104768 - v69) / (v70 - v69);
    v71 = v72 >= 0x60 ? 96 : (67104768 - v69) / (v70 - v69);
    if (v72 < 0x20)
    {
      v71 = 0;
    }
  }

  v243 = v71;
  v73 = v68 | (v71 << 24);
  v244 = (RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>::getSectionEnd(v73, 12) + 0x1FFF) & 0xFFFFF000;
  v255 = v245;
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s", "RaytracingConstantsGen3::ScsLayoutGen3");
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, " {\n");
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s", "  ", "RaytracingConstantsGen3::ScsLayoutGen3Base<RaytracingConstantsGen3::ScsLayoutGen3>");
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, " {\n");
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s", "    ", "RaytracingConstantsGen2::ScsLayoutGen2Base<RaytracingConstantsGen3::ScsLayoutGen3>");
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, " {\n");
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s", "      ", "RaytracingConstantsGen1::ScsLayoutGen1Base<RaytracingConstantsGen3::ScsLayoutGen3>");
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, " {\n");
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s", "        ", "RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>");
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, " {\n");
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s %s : %zu = %u\n", "          ", "uint32_t", "traversal_depth", 0x10uLL, v73);
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s %s : %zu = %u\n", "          ", "uint32_t", "max_instance_levels", 8uLL, BYTE2(v73));
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s %s : %zu = %u\n", "          ", "uint32_t", "num_cliques", 8uLL, BYTE3(v73));
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s %s : %zu = %u\n", "          ", "uint32_t", "per_ray_user_payload_size", 0x10uLL, v66);
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s%s %s : %zu = %u\n", "          ", "uint32_t", "per_ray_driver_payload_size", 0x10uLL, v67);
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s}\n", "        ");
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s}\n", "      ");
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s}\n", "    ");
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "%s}\n", "  ");
  AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(&v255, "}\n");
  v74 = (v73 >> 19) & 0x1FE0;
  v75 = 8 * v73 * v74;
  v76 = v74 * v67;
  v233 = v74 * v66;
  for (n = 1; n != 12; ++n)
  {
    if (n <= 4)
    {
      if (n <= 2)
      {
        if (n == 1)
        {
          v80 = 0;
          v78 = 24576;
LABEL_191:
          *&v252 = __PAIR64__(v80, n);
          DWORD2(v252) = v78;
          continue;
        }

        if (n != 2)
        {
          continue;
        }

        v78 = 0x2000;
        v79 = 1;
LABEL_190:
        v80 = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>::getSectionEnd(v73, v79);
        goto LABEL_191;
      }

      v78 = ((BYTE2(v73) + 2) >> 1) * ((v73 >> 13) & 0x7F800);
      if (n != 3)
      {
        v78 = (v73 >> 14) & 0x3FC00;
      }

LABEL_173:
      if (!v78)
      {
        continue;
      }

LABEL_174:
      if (n <= 5)
      {
        if (n == 3)
        {
          v79 = 7;
        }

        else if (n == 4)
        {
          v79 = 2;
        }

        else
        {
          v79 = 6;
        }
      }

      else if (n > 9)
      {
        if (n == 10)
        {
          v79 = 5;
        }

        else
        {
          v79 = 10;
        }
      }

      else if (n == 6)
      {
        v79 = 3;
      }

      else
      {
        v79 = 4;
      }

      goto LABEL_190;
    }

    if (n <= 6)
    {
      v78 = v75;
      if (n != 5)
      {
        v78 = ((v73 >> 15) & 0x1FE00) * BYTE2(v73);
      }

      goto LABEL_173;
    }

    if (n == 11)
    {
      v78 = v233;
      if (v233)
      {
        goto LABEL_174;
      }
    }

    else
    {
      v78 = v76;
      if (n == 10)
      {
        goto LABEL_173;
      }

      v78 = (v73 >> 15) & 0x1FE00;
      if (n == 7)
      {
        goto LABEL_173;
      }
    }
  }

  v81 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v247 - v246[1]) >> 2));
  if (v247 == v246[1])
  {
    v82 = 0;
  }

  else
  {
    v82 = v81;
  }

  if (v259)
  {
      ;
    }
  }

  else
  {
    ii = v258;
  }

  v238 = &v258[v259];
  if (ii != v238)
  {
    v109 = *ii;
    do
    {
      v254 = *(v109 + 16);
      v110 = v254;
      v111 = *(a1 + *(*a1 - 24) + 2168);
      v112 = (*(*v111 + 1456))(v111, v254);
      v113 = (v110 >> 5) & 1;
      v114 = (*(**(a1 + *(*a1 - 24) + 2168) + 1016))();
      v115 = 0;
      v116 = 0;
      v252 = 0uLL;
      v117 = 6;
      v118 = -104;
      v253 = 0;
      do
      {
        v119 = *(a1 + *(*a1 - 24) + 2168);
        if (RaytracingConstantsGen3::payloadHasSegment(v117, v112, v113, v119[1940]))
        {
          v120 = (*(*v119 + 1024))(v119);
          v121 = RaytracingConstantsGen3::payloadSegmentSize(v117, v120);
          if (v121)
          {
            v122 = v121;
            if (v121 <= v114)
            {
              LODWORD(v251) = v117;
              BYTE4(v251) = 1;
              *(&v251 + 1) = __PAIR64__(v121, v116);
              v125 = (v122 + 3) & 0x3FFC;
              v116 += v125;
              v102 = v114 >= v125;
              v126 = v114 - v125;
              if (v102)
              {
                v114 = v126;
              }

              else
              {
                v114 = 0;
              }
            }

            else
            {
              if ((v117 - 19) <= 4)
              {
                v123 = *(a1 + 1016);
                if (v123 >= ((0x201010101uLL >> v118) & 3))
                {
                  v124 = (v123 - ((0x201010101uLL >> v118) & 3)) / ((65792 * ((0x201010101uLL >> v118) & 3)) >> 16) + 1;
                }

                else
                {
                  v124 = 0;
                }

                v122 = v124 * v121;
              }

              LODWORD(v251) = v117;
              BYTE4(v251) = 0;
              *(&v251 + 1) = __PAIR64__(v122, v115);
              v115 += 32 * v122;
            }
          }
        }

        v117 = (v117 + 1);
        v118 += 8;
      }

      while (v117 != 26);
      v128 = *v127;
      if (*v127)
      {
        v127[1] = v128;
        operator delete(v128);
      }

      *v127 = v252;
      v127[2] = v253;
      do
      {
        v129 = ii[1];
        ++ii;
        v109 = v129;
        if (v129)
        {
          v130 = v109 == -8;
        }

        else
        {
          v130 = 1;
        }
      }

      while (v130);
    }

    while (ii != v238);
  }

  v108 = &v258;
LABEL_317:
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(v108, v21, v22, v23);
  if (AGCLLVMUserObject::dumpScsLayoutToStatusFile(llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>)::dump_human_readable_section == 1)
  {
    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      v173 = (a1 + *(*a1 - 24));
      v174 = v173[212];
      v175 = (*(*v173 + 48))(v173);
      AGCTargetPrinter::printMessage(v174, "------ Start SCS layout for %s shader %u ------\n", v175, *(a1 + *(*a1 - 24) + 5088));
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "RIA%u SCS layout:", *(*(a1 + *(*a1 - 24) + 2168) + 1908));
    }

    v176 = v246[1];
    v177 = v247;
    v178 = a1 + 212;
    if (v246[1] == v247)
    {
      v179 = 0;
    }

    else
    {
      v179 = 0;
      do
      {
        if (AGCTargetPrinter::isValidToPrintMessage(*(v178 + *(*a1 - 24))))
        {
          AGCTargetPrinter::printMessage(*(v178 + *(*a1 - 24)), "+--------------------------------+ <-- 0x%08x", v176[1]);
        }

        if (AGCTargetPrinter::isValidToPrintMessage(*(v178 + *(*a1 - 24))))
        {
        }

        v179 += v176[2];
        v176 += 3;
      }

      while (v176 != v177);
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "+--------------------------------+ <-- 0x%08x, aligned up to 0x%08x", v179, v244);
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      v180 = v245;
      if (SHIBYTE(v246[0]) < 0)
      {
        v180 = v245[0];
      }

      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "\n%s", v180);
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "NOTE: The layout above only applies to this shader in isolation. The actual layout might differ, depending on what other shaders are in the kick.");
    }

    v181 = *(a2 + 8);
    if (v181)
    {
        ;
      }
    }

    else
    {
      jj = *a2;
    }

    v241 = *a2 + 8 * v181;
    if (jj != v241)
    {
      v184 = *jj;
      do
      {
        if (AGCTargetPrinter::isValidToPrintMessage(*(v178 + *(*a1 - 24))))
        {
          AGCTargetPrinter::printMessage(*(v178 + *(*a1 - 24)), "\nDriver extended payload segment layout for @%*s (ray_flags=0x%04x)", *v184, (v184 + 24), *(v184 + 16));
        }

        v186 = *v185;
        v187 = v185[1];
        while (v186 != v187)
        {
          v188 = *v186;
          v189 = *(v186 + 4);
          v190 = v186[2];
          v191 = v186[3];
          if (AGCTargetPrinter::isValidToPrintMessage(*(v178 + *(*a1 - 24))))
          {
            v192 = "in driver payload";
            if (v189)
            {
              v192 = "in ray core";
            }
          }

          v186 += 4;
        }

        if (AGCTargetPrinter::isValidToPrintMessage(*(v178 + *(*a1 - 24))))
        {
          AGCTargetPrinter::printMessage(*(v178 + *(*a1 - 24)), &unk_20E75F419);
        }

        do
        {
          v193 = jj[1];
          ++jj;
          v184 = v193;
          if (v193)
          {
            v194 = v184 == -8;
          }

          else
          {
            v194 = 1;
          }
        }

        while (v194);
      }

      while (jj != v241);
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      v195 = (a1 + *(*a1 - 24));
      v196 = v195[212];
      v197 = (*(*v195 + 48))(v195);
      AGCTargetPrinter::printMessage(v196, "\n------ End SCS layout for %s shader %u ------\n", v197, *(a1 + *(*a1 - 24) + 5088));
    }
  }

  if (AGCLLVMUserObject::dumpScsLayoutToStatusFile(llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>)::dump_machine_readable_section == 1)
  {
    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      v198 = (a1 + *(*a1 - 24));
      v199 = v198[212];
      v200 = (*(*v198 + 48))(v198);
      AGCTargetPrinter::printMessage(v199, "\n------ Start SCS layout (JSON) for %s shader %u ------\n", v200, *(a1 + *(*a1 - 24) + 5088));
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "{");
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "  ria_gen: %u,", *(*(a1 + *(*a1 - 24) + 2168) + 1908));
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "  traversal_depth: %u,", a1[504]);
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "  max_instance_levels: %u,", *(a1 + 1016));
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "  num_cliques: %u,", v243);
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "  user_payload_size: %u,", a1[506]);
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "  driver_payload_size: %u,", a1[505]);
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "  aligned_total_scs_size: %u,", v244);
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "  sections: [");
    }

    v201 = a1 + 212;
    v202 = v246[1];
    if (v247 != v246[1])
    {
      v203 = 0;
      v204 = 0;
      v205 = 0xAAAAAAAAAAAAAAABLL * ((v247 - v246[1]) >> 2);
      do
      {
        if (AGCTargetPrinter::isValidToPrintMessage(*(v201 + *(*a1 - 24))))
        {
          v206 = ",";
          if (v204 == v205 - 1)
          {
            v206 = "\n  ],";
          }
        }

        ++v204;
        v202 = v246[1];
        v205 = 0xAAAAAAAAAAAAAAABLL * ((v247 - v246[1]) >> 2);
        v203 += 12;
      }

      while (v204 < v205);
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "  driver_extended_payload_segments: [");
    }

    v207 = *a2;
    if (*(a2 + 8))
    {
      while (!*v207 || *v207 == -8)
      {
        v207 += 8;
      }
    }

    LODWORD(v209) = *(a2 + 12);
    if (v209)
    {
      v210 = 0;
      v211 = *v207;
      do
      {
        v242 = v209;
        if (AGCTargetPrinter::isValidToPrintMessage(*(v201 + *(*a1 - 24))))
        {
          AGCTargetPrinter::printMessage(*(v201 + *(*a1 - 24)), "    {");
        }

        if (AGCTargetPrinter::isValidToPrintMessage(*(v201 + *(*a1 - 24))))
        {
          AGCTargetPrinter::printMessage(*(v201 + *(*a1 - 24)), "      function: @%*s,", **v207, (*v207 + 24));
        }

        if (AGCTargetPrinter::isValidToPrintMessage(*(v201 + *(*a1 - 24))))
        {
          AGCTargetPrinter::printMessage(*(v201 + *(*a1 - 24)), "      ray_flags: %u,", *(*v207 + 16));
        }

        if (AGCTargetPrinter::isValidToPrintMessage(*(v201 + *(*a1 - 24))))
        {
          AGCTargetPrinter::printMessage(*(v201 + *(*a1 - 24)), "      segments: [");
        }

        v213 = *v212;
        v214 = v212[1] - *v212;
        if (v214)
        {
          v215 = 0;
          v216 = 0;
          v217 = v214 >> 4;
          do
          {
            if (AGCTargetPrinter::isValidToPrintMessage(*(v201 + *(*a1 - 24))))
            {
              v218 = "false";
              if (*(v213 + v215 + 4))
              {
                v218 = "true";
              }

              v219 = ",";
              if (v216 == v217 - 1)
              {
                v219 = "\n      ]";
              }
            }

            ++v216;
            v213 = *v212;
            v217 = (v212[1] - *v212) >> 4;
            v215 += 16;
          }

          while (v216 < v217);
        }

        if (AGCTargetPrinter::isValidToPrintMessage(*(v201 + *(*a1 - 24))))
        {
          v220 = ",";
          if (v210 == v242 - 1)
          {
            v220 = "\n  ]";
          }

          AGCTargetPrinter::printMessage(*(v201 + *(*a1 - 24)), "    }%s", v220);
        }

        do
        {
          v221 = *(v207 + 8);
          v207 += 8;
          v211 = v221;
          if (v221)
          {
            v222 = v211 + 1 == 0;
          }

          else
          {
            v222 = 1;
          }
        }

        while (v222);
        ++v210;
        v209 = *(a2 + 12);
      }

      while (v210 < v209);
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "}");
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
    {
      v223 = (a1 + *(*a1 - 24));
      v224 = v223[212];
      v225 = (*(*v223 + 48))(v223);
      AGCTargetPrinter::printMessage(v224, "\n------ End SCS layout (JSON) for %s shader %u ------\n", v225, *(a1 + *(*a1 - 24) + 5088));
    }
  }

LABEL_437:
  v226 = __p[0];
  if (__p[0])
  {
    do
    {
      v227 = *v226;
      v228 = v226[3];
      if (v228)
      {
        v226[4] = v228;
        operator delete(v228);
      }

      operator delete(v226);
      v226 = v227;
    }

    while (v227);
  }

  v229 = v248[0];
  v248[0] = 0;
  if (v229)
  {
    operator delete(v229);
  }

  if (v246[1])
  {
    *&v247 = v246[1];
    operator delete(v246[1]);
  }

  if (SHIBYTE(v246[0]) < 0)
  {
    operator delete(v245[0]);
  }
}

llvm::StringMapImpl *llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::StringMap(llvm::StringMapImpl *this, uint64_t *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0x1800000000;
  if (*(a2 + 3))
  {
    llvm::StringMapImpl::init(this);
    v4 = *this;
    v5 = *(this + 2);
    v6 = *a2;
    *(this + 12) = *(a2 + 12);
    if (v5)
    {
      v7 = 0;
      v17 = v4 + 8 * v5 + 8;
      v8 = v6 + 8 * v5 + 8;
      do
      {
        v9 = *(*a2 + 8 * v7);
        if (v9)
        {
          v10 = v9 == -8;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          *(*this + 8 * v7) = v9;
        }

        else
        {
          v11 = *v9;
          v12 = MEMORY[0x20F330650](*v9 + 25, 8);
          v13 = v12;
          v14 = v12 + 24;
          if (v11)
          {
            memcpy((v12 + 24), (v9 + 24), v11);
          }

          *(v14 + v11) = 0;
          *v13 = v11;
          v15 = *(v9 + 8);
          *(v13 + 16) = *(v9 + 16);
          *(v13 + 8) = v15;
          *(*this + 8 * v7) = v13;
          *(v17 + 4 * v7) = *(v8 + 4 * v7);
        }

        ++v7;
      }

      while (v5 != v7);
    }
  }

  return this;
}

uint64_t *std::unordered_map<unsigned short,std::vector<anonymous namespace::ScsDriverPayloadSegmentInfo>>::operator[](float *a1, _WORD *a2)
{
  v2 = *a2;
  v3 = *(a1 + 2);
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *(a1 + 1);
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return (v7 + 3);
}

uint64_t RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(unint64_t a1, int a2)
{
  if (a2 <= 6)
  {
    if (a2 <= 3)
    {
      if (a2 == 2)
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(a1, 1);
        v4 = 0x4000;
        return (v4 + SectionEnd);
      }

      if (a2 != 3)
      {
LABEL_26:
        SectionEnd = 0;
        v5 = a2 == 1;
        goto LABEL_27;
      }

      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(a1, 9);
      v6 = (a1 >> 13) & 0x7F800;
      v7 = ((BYTE2(a1) & 0xFEu) + 2) >> 1;
    }

    else
    {
      if (a2 == 4)
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(a1, 2);
        v4 = 98304;
        return (v4 + SectionEnd);
      }

      if (a2 != 5)
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(a1, 8);
        v5 = 3 * BYTE2(a1);
LABEL_27:
        v4 = v5 << 14;
        return (v4 + SectionEnd);
      }

      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(a1, 3);
      v7 = 8 * a1;
      v6 = (a1 >> 19) & 0x1FE0;
    }

    v4 = v7 * v6;
    return (v4 + SectionEnd);
  }

  if (a2 > 9)
  {
    switch(a2)
    {
      case 10:
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(a1, 5);
        v8 = (a1 >> 19) & 0x1FE0;
        v9 = HIWORD(a1);
        break;
      case 11:
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(a1, 10);
        v8 = (a1 >> 19) & 0x1FE0;
        LODWORD(v9) = WORD2(a1);
        break;
      case 12:
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(a1, 11);
        v4 = 0;
        return (v4 + SectionEnd);
      default:
        goto LABEL_26;
    }

    v4 = v8 * v9;
    return (v4 + SectionEnd);
  }

  if (a2 == 7)
  {
    SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(a1, 4);
    v4 = 49152;
  }

  else if (a2 == 8)
  {
    SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(a1, 7);
    v4 = 61440;
  }

  else
  {
    SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(a1, 6);
    v4 = 589824;
  }

  return (v4 + SectionEnd);
}

std::string *AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(uint64_t a1, const char *a2, ...)
{
  va_start(va, a2);
  v2 = MEMORY[0x28223BE20](a1);
  v6 = *MEMORY[0x277D85DE8];
  vsnprintf(__str, 0x1000uLL, v3, va);
  return std::string::append(*v2, __str);
}

void std::vector<anonymous namespace::ScsSectionInfo>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x1555555555555555)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = 4 * ((v3 - *a1) >> 2);
    *v12 = *a2;
    *(v12 + 8) = *(a2 + 2);
    v6 = 12 * v8 + 12;
    v13 = (v12 - (v3 - v7));
    memcpy(v13, v7, v3 - v7);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 8) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 12;
  }

  *(a1 + 8) = v6;
}

uint64_t RaytracingConstantsGen3::payloadHasSegment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 > 23)
  {
    if (a1 == 24)
    {
      v5 = 0x94u >> a2;
      if (a2 >= 8)
      {
        LOBYTE(v5) = 0;
      }

      return v5 & 1;
    }

    if (a1 != 25)
    {
      return RaytracingConstantsGen1::payloadHasSegment(a1, a2, a3, a4);
    }
  }

  else
  {
    if (a1 == 3)
    {
      LOBYTE(v5) = 1;
      return v5 & 1;
    }

    if (a1 != 23)
    {
      return RaytracingConstantsGen1::payloadHasSegment(a1, a2, a3, a4);
    }
  }

  LOBYTE(v5) = 0;
  return v5 & 1;
}

void std::vector<anonymous namespace::ScsDriverPayloadSegmentInfo>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
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
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t RaytracingConstantsGen3::payloadSegmentSize(uint64_t a1, uint64_t a2)
{
  if (a1 > 20)
  {
    if (a1 == 21)
    {
      return 0;
    }

    if (a1 != 24)
    {
      if (a1 != 25)
      {
        return RaytracingConstantsGen2::payloadSegmentSize(a1, a2);
      }

      return 0;
    }

    return 8;
  }

  else
  {
    if (a1 == 3)
    {
      return 16;
    }

    if (a1 != 6)
    {
      if (a1 != 19)
      {
        return RaytracingConstantsGen2::payloadSegmentSize(a1, a2);
      }

      return 0;
    }

    return 4;
  }
}

uint64_t RaytracingConstantsGen2::payloadSegmentSize(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  result = 64;
  if (v2 > 15)
  {
    if (v2 == 16 || v2 == 21)
    {
      return 0;
    }

    if (v2 != 23)
    {
      return RaytracingConstantsGen1::payloadSegmentSize(v2, a2);
    }
  }

  else if (v2)
  {
    if (v2 != 2)
    {
      if (v2 == 12)
      {
        return 2;
      }

      return RaytracingConstantsGen1::payloadSegmentSize(v2, a2);
    }

    return 32;
  }

  return result;
}

uint64_t RaytracingConstantsGen1::payloadSegmentSize(int a1, unsigned int a2)
{
  switch(a1)
  {
    case 1:
      result = 512;
      break;
    case 2:
      result = 16;
      break;
    case 3:
    case 4:
    case 5:
    case 24:
    case 26:
      result = 0;
      break;
    case 6:
    case 7:
    case 8:
    case 11:
    case 12:
    case 13:
    case 16:
      result = 8;
      break;
    case 9:
    case 10:
    case 14:
    case 25:
      result = 4;
      break;
    case 15:
      result = 20 * a2;
      break;
    case 17:
    case 18:
      result = 12;
      break;
    case 19:
    case 21:
      result = 6;
      break;
    case 20:
    case 22:
      result = 100;
      break;
    case 23:
      result = 64;
      break;
    default:
      result = 32;
      break;
  }

  return result;
}

uint64_t RaytracingConstantsGen1::payloadHasSegment(int a1, unsigned int a2, char a3, char a4)
{
  if (a1 <= 18)
  {
    v4 = a4 ^ 1;
    if (a1 != 18)
    {
      v4 = 1;
    }

    if (a1 == 17)
    {
      v4 = a4;
    }

    v5 = 0xDEu >> a2;
    if (a2 >= 8)
    {
      LOBYTE(v5) = 0;
    }

    if (a1 != 16)
    {
      LOBYTE(v5) = 1;
    }

    if ((a1 - 14) >= 2)
    {
      v6 = v5;
    }

    else
    {
      v6 = a2 - 5 < 3;
    }

    if (a1 <= 16)
    {
      v4 = v6;
    }

    LOBYTE(v7) = (a1 - 3) >= 3;
    if (a1 > 13)
    {
      LOBYTE(v7) = v4;
    }

    return v7 & 1;
  }

  if (a1 <= 21)
  {
    if (a1 == 20)
    {
      goto LABEL_31;
    }

    v7 = 0xDEu >> a2;
    if (a2 >= 8)
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    if (a1 <= 24)
    {
      if (a1 != 22)
      {
        LOBYTE(v7) = a1 != 24;
        return v7 & 1;
      }

LABEL_31:
      LOBYTE(v7) = a2 - 3 < 2;
      return v7 & 1;
    }

    if ((a2 - 8) < 0xFDu)
    {
      v9 = a3;
    }

    else
    {
      v9 = 0;
    }

    LOBYTE(v7) = a1 != 26;
    if (a1 == 25)
    {
      LOBYTE(v7) = v9;
    }
  }

  return v7 & 1;
}

uint64_t RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>::getSectionEnd(unint64_t a1, int a2)
{
  if (a2 <= 5)
  {
    if (a2 > 3)
    {
      if (a2 == 4)
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>::getSectionEnd(a1, 2);
        v4 = (a1 >> 14) & 0x3FC00;
        return v4 + SectionEnd;
      }

      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>::getSectionEnd(a1, 6);
      v6 = 8 * a1;
      v5 = (a1 >> 19) & 0x1FE0;
    }

    else
    {
      if (a2 == 2)
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>::getSectionEnd(a1, 1);
        v4 = 0x2000;
        return v4 + SectionEnd;
      }

      if (a2 != 3)
      {
        goto LABEL_23;
      }

      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>::getSectionEnd(a1, 7);
      v5 = (a1 >> 13) & 0x7F800;
      v6 = ((BYTE2(a1) & 0xFEu) + 2) >> 1;
    }

    v4 = v6 * v5;
    return v4 + SectionEnd;
  }

  if (a2 <= 9)
  {
    if (a2 == 6)
    {
      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>::getSectionEnd(a1, 3);
      v4 = ((a1 >> 15) & 0x1FE00) * BYTE2(a1);
      return v4 + SectionEnd;
    }

    if (a2 == 7)
    {
      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>::getSectionEnd(a1, 4);
      v4 = (a1 >> 15) & 0x1FE00;
      return v4 + SectionEnd;
    }

    goto LABEL_23;
  }

  switch(a2)
  {
    case 10:
      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>::getSectionEnd(a1, 5);
      v7 = (a1 >> 19) & 0x1FE0;
      v8 = HIWORD(a1);
LABEL_22:
      v4 = v7 * v8;
      return v4 + SectionEnd;
    case 11:
      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>::getSectionEnd(a1, 10);
      v7 = (a1 >> 19) & 0x1FE0;
      LODWORD(v8) = WORD2(a1);
      goto LABEL_22;
    case 12:
      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>::getSectionEnd(a1, 11);
      v4 = 0;
      return v4 + SectionEnd;
  }

LABEL_23:
  SectionEnd = 0;
  if (a2 == 1)
  {
    v4 = 24576;
  }

  else
  {
    v4 = 0;
  }

  return v4 + SectionEnd;
}

uint64_t RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(unint64_t a1, int a2)
{
  SectionEnd = 0;
  if (a2 <= 4)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1, 2);
        v4 = 0x40000;
      }

      else
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1, 3);
        v4 = 0x20000;
      }
    }

    else if (a2 == 1)
    {
      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1, 7);
      v4 = 24576;
    }

    else
    {
      v4 = 0;
      if (a2 == 2)
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1, 1);
        v4 = 0x2000;
      }
    }
  }

  else
  {
    if (a2 > 9)
    {
      if (a2 == 10)
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1, 5);
        v6 = (a1 >> 19) & 0x1FE0;
        v7 = HIWORD(a1);
      }

      else
      {
        if (a2 != 11)
        {
          v4 = 0;
          if (a2 == 12)
          {
            SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1, 11);
            v4 = 0;
          }

          return (v4 + SectionEnd);
        }

        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1, 6);
        v6 = (a1 >> 19) & 0x1FE0;
        LODWORD(v7) = WORD2(a1);
      }

      v4 = v6 * v7;
      return (v4 + SectionEnd);
    }

    if (a2 == 5)
    {
      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1, 4);
      v4 = 8 * a1 * ((a1 >> 19) & 0x1FE0);
    }

    else
    {
      v4 = 0;
      if (a2 == 6)
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1, 10);
        v5 = BYTE2(a1);
        if (BYTE2(a1) > 1u)
        {
          v5 = BYTE2(a1) + 1;
        }

        v4 = (WORD1(a1) & 0xFF00) * v5;
      }
    }
  }

  return (v4 + SectionEnd);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,AGCLLVMUserObject::ScsLayoutDumper& AGCLLVMUserObject::ScsLayoutDumper::dump<RaytracingConstantsGen1>(llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>)::{lambda(anonymous namespace::ScsSectionInfo const&,anonymous namespace::ScsSectionInfo const&)#1} &,anonymous namespace::ScsSectionInfo*,false>(uint64_t result, _DWORD *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = (a2 - 3);
  v9 = (a2 - 6);
  v10 = (a2 - 9);
  v11 = v7;
  while (1)
  {
    v7 = v11;
    v12 = a2 - v11;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 2);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        if (*(a2 - 2) >= *(v11 + 4))
        {
          return result;
        }

LABEL_112:
        v213 = *(v11 + 8);
        v187 = *v11;
        v93 = *v8;
        *(v11 + 8) = *(a2 - 1);
        *v11 = v93;
        v94 = v187;
        v95 = v213;
LABEL_113:
        *(a2 - 1) = v95;
        *v8 = v94;
        return result;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v96 = *(v11 + 16);
      v97 = *(v11 + 28);
      if (v96 >= *(v11 + 4))
      {
        if (v97 < v96)
        {
          v153 = *(v11 + 20);
          v154 = *(v11 + 12);
          *(v11 + 12) = *(v11 + 24);
          *(v11 + 20) = *(v11 + 32);
          *(v11 + 24) = v154;
          *(v11 + 32) = v153;
          if (*(v11 + 16) < *(v11 + 4))
          {
            v216 = *(v11 + 8);
            v190 = *v11;
            *v11 = *(v11 + 12);
            *(v11 + 8) = *(v11 + 20);
            *(v11 + 12) = v190;
            *(v11 + 20) = v216;
          }
        }
      }

      else
      {
        if (v97 < v96)
        {
          v214 = *(v11 + 8);
          v188 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 8) = *(v11 + 32);
          *(v11 + 24) = v188;
          v98 = v214;
          goto LABEL_191;
        }

        v218 = *(v11 + 8);
        v192 = *v11;
        *v11 = *(v11 + 12);
        *(v11 + 8) = *(v11 + 20);
        *(v11 + 12) = v192;
        *(v11 + 20) = v218;
        if (v97 < *(v11 + 16))
        {
          v98 = *(v11 + 20);
          v163 = *(v11 + 12);
          *(v11 + 12) = *(v11 + 24);
          *(v11 + 20) = *(v11 + 32);
          *(v11 + 24) = v163;
LABEL_191:
          *(v11 + 32) = v98;
        }
      }

      if (*(a2 - 2) >= *(v11 + 28))
      {
        return result;
      }

      v164 = *(v11 + 24);
      v165 = *(v11 + 32);
      v166 = *(a2 - 1);
      *(v11 + 24) = *v8;
      *(v11 + 32) = v166;
      *(a2 - 1) = v165;
      *v8 = v164;
      if (*(v11 + 28) >= *(v11 + 16))
      {
        return result;
      }

      v167 = *(v11 + 20);
      v168 = *(v11 + 12);
      *(v11 + 12) = *(v11 + 24);
      *(v11 + 20) = *(v11 + 32);
      *(v11 + 24) = v168;
      *(v11 + 32) = v167;
LABEL_195:
      if (*(v11 + 16) < *(v11 + 4))
      {
        v219 = *(v11 + 8);
        v193 = *v11;
        *v11 = *(v11 + 12);
        *(v11 + 8) = *(v11 + 20);
        *(v11 + 12) = v193;
        *(v11 + 20) = v219;
      }

      return result;
    }

    if (v13 == 5)
    {
    }

LABEL_10:
    if (v12 <= 287)
    {
      v99 = (v11 + 12);
      v101 = v11 == a2 || v99 == a2;
      if (a4)
      {
        if (!v101)
        {
          v102 = 0;
          v103 = v11;
          do
          {
            v104 = v99;
            v105 = v103[4];
            if (v105 < v103[1])
            {
              v106 = *v104;
              v107 = v103[5];
              v108 = v102;
              while (1)
              {
                v109 = v11 + v108;
                *(v109 + 12) = *(v11 + v108);
                *(v109 + 20) = *(v11 + v108 + 8);
                if (!v108)
                {
                  break;
                }

                v108 -= 12;
                if (v105 >= *(v109 - 8))
                {
                  v110 = (v11 + v108 + 12);
                  goto LABEL_132;
                }
              }

              v110 = v11;
LABEL_132:
              *v110 = v106;
              v110[1] = v105;
              v110[2] = v107;
            }

            v99 = v104 + 3;
            v102 += 12;
            v103 = v104;
          }

          while (v104 + 3 != a2);
        }
      }

      else if (!v101)
      {
        do
        {
          v155 = v99;
          v156 = *(v7 + 16);
          if (v156 < *(v7 + 4))
          {
            v157 = *v99;
            v158 = *(v7 + 20);
            v159 = v155;
            do
            {
              v160 = v159;
              v161 = *(v159 - 3);
              v159 -= 3;
              *v160 = v161;
              v160[2] = *(v160 - 1);
            }

            while (v156 < *(v160 - 5));
            *v159 = v157;
            v159[1] = v156;
            v159[2] = v158;
          }

          v99 = v155 + 3;
          v7 = v155;
        }

        while (v155 + 3 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v11 != a2)
      {
        v111 = (v13 - 2) >> 1;
        v112 = v111;
        do
        {
          v113 = v112;
          if (v111 >= v112)
          {
            v114 = (2 * v112) | 1;
            v115 = (v11 + 12 * v114);
            if (2 * v113 + 2 < v13)
            {
              v116 = v115[1];
              v117 = v115[4];
              v118 = v116 >= v117;
              v119 = v116 >= v117 ? 0 : 12;
              v115 = (v115 + v119);
              if (!v118)
              {
                v114 = 2 * v113 + 2;
              }
            }

            v120 = (v11 + 12 * v113);
            v121 = v120[1];
            if (v115[1] >= v121)
            {
              v122 = *v120;
              v123 = v120[2];
              do
              {
                v124 = v120;
                v120 = v115;
                v125 = *v115;
                v124[2] = v120[2];
                *v124 = v125;
                if (v111 < v114)
                {
                  break;
                }

                v126 = (2 * v114) | 1;
                v115 = (v11 + 12 * v126);
                v127 = 2 * v114 + 2;
                if (v127 < v13)
                {
                  v128 = v115[1];
                  v129 = v115[4];
                  v130 = v128 >= v129;
                  v131 = v128 >= v129 ? 0 : 12;
                  v115 = (v115 + v131);
                  if (!v130)
                  {
                    v126 = v127;
                  }
                }

                v114 = v126;
              }

              while (v115[1] >= v121);
              *v120 = v122;
              v120[1] = v121;
              v120[2] = v123;
            }
          }

          v112 = v113 - 1;
        }

        while (v113);
        v132 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 2);
        do
        {
          v133 = 0;
          v215 = *(v11 + 8);
          v189 = *v11;
          v134 = v11;
          do
          {
            v135 = &v134[3 * v133];
            v136 = v135 + 3;
            result = 2 * v133;
            v137 = (2 * v133) | 1;
            v133 = 2 * v133 + 2;
            if (v133 >= v132)
            {
              v133 = v137;
            }

            else
            {
              result = v135[4];
              v138 = v135[7];
              v139 = v135 + 6;
              if (result >= v138)
              {
                v133 = v137;
              }

              else
              {
                v136 = v139;
              }
            }

            v140 = *v136;
            v134[2] = v136[2];
            *v134 = v140;
            v134 = v136;
          }

          while (v133 <= ((v132 - 2) >> 1));
          a2 -= 3;
          if (v136 == a2)
          {
            v136[2] = v215;
            *v136 = v189;
          }

          else
          {
            v141 = *a2;
            v136[2] = a2[2];
            *v136 = v141;
            a2[2] = v215;
            *a2 = v189;
            v142 = v136 - v11 + 12;
            if (v142 >= 13)
            {
              v143 = (-2 - 0x5555555555555555 * (v142 >> 2)) >> 1;
              v144 = (v11 + 12 * v143);
              v145 = v136[1];
              if (v144[1] < v145)
              {
                v146 = *v136;
                v147 = v136[2];
                do
                {
                  result = v136;
                  v136 = v144;
                  v148 = *v144;
                  *(result + 8) = v136[2];
                  *result = v148;
                  if (!v143)
                  {
                    break;
                  }

                  v143 = (v143 - 1) >> 1;
                  v144 = (v11 + 12 * v143);
                  result = v144[1];
                }

                while (result < v145);
                *v136 = v146;
                v136[1] = v145;
                v136[2] = v147;
              }
            }
          }
        }

        while (v132-- > 2);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = v11 + 12 * (v13 >> 1);
    v16 = *(a2 - 2);
    if (v12 >= 0x601)
    {
      v17 = *(v15 + 4);
      if (v17 >= *(v11 + 4))
      {
        if (v16 < v17)
        {
          v196 = *(v15 + 8);
          v171 = *v15;
          v21 = *v8;
          *(v15 + 8) = *(a2 - 1);
          *v15 = v21;
          *(a2 - 1) = v196;
          *v8 = v171;
          if (*(v15 + 4) < *(v11 + 4))
          {
            v197 = *(v11 + 8);
            v172 = *v11;
            v22 = *v15;
            *(v11 + 8) = *(v15 + 8);
            *v11 = v22;
            *(v15 + 8) = v197;
            *v15 = v172;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v194 = *(v11 + 8);
          v169 = *v11;
          v18 = *v8;
          *(v11 + 8) = *(a2 - 1);
          *v11 = v18;
          goto LABEL_27;
        }

        v200 = *(v11 + 8);
        v175 = *v11;
        v25 = *v15;
        *(v11 + 8) = *(v15 + 8);
        *v11 = v25;
        *(v15 + 8) = v200;
        *v15 = v175;
        if (*(a2 - 2) < *(v15 + 4))
        {
          v194 = *(v15 + 8);
          v169 = *v15;
          v26 = *v8;
          *(v15 + 8) = *(a2 - 1);
          *v15 = v26;
LABEL_27:
          *(a2 - 1) = v194;
          *v8 = v169;
        }
      }

      v27 = v11 + 12 * v14;
      v28 = v27 - 12;
      v29 = *(v27 - 8);
      v30 = *(a2 - 5);
      if (v29 >= *(v11 + 16))
      {
        if (v30 < v29)
        {
          v201 = *(v28 + 8);
          v176 = *v28;
          v34 = *v9;
          *(v28 + 8) = *(a2 - 4);
          *v28 = v34;
          *(a2 - 4) = v201;
          *v9 = v176;
          if (*(v28 + 4) < *(v11 + 16))
          {
            v35 = *(v11 + 12);
            v36 = *(v11 + 20);
            v37 = *(v28 + 8);
            *(v11 + 12) = *v28;
            *(v11 + 20) = v37;
            *(v28 + 8) = v36;
            *v28 = v35;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v31 = *(v11 + 12);
          v32 = *(v11 + 20);
          v33 = *(a2 - 4);
          *(v11 + 12) = *v9;
          *(v11 + 20) = v33;
          goto LABEL_39;
        }

        v40 = *(v11 + 12);
        v41 = *(v11 + 20);
        v42 = *(v28 + 8);
        *(v11 + 12) = *v28;
        *(v11 + 20) = v42;
        *(v28 + 8) = v41;
        *v28 = v40;
        if (*(a2 - 5) < *(v28 + 4))
        {
          v203 = *(v28 + 8);
          v178 = *v28;
          v43 = *v9;
          *(v28 + 8) = *(a2 - 4);
          *v28 = v43;
          v31 = v178;
          v32 = v203;
LABEL_39:
          *(a2 - 4) = v32;
          *v9 = v31;
        }
      }

      v44 = v11 + 12 * v14;
      v45 = *(v44 + 16);
      v46 = *(a2 - 8);
      if (v45 >= *(v11 + 28))
      {
        if (v46 < v45)
        {
          v204 = *(v44 + 20);
          v179 = *(v44 + 12);
          v50 = *v10;
          *(v44 + 20) = *(a2 - 7);
          *(v44 + 12) = v50;
          *(a2 - 7) = v204;
          *v10 = v179;
          if (*(v44 + 16) < *(v11 + 28))
          {
            v51 = *(v11 + 24);
            v52 = *(v11 + 32);
            v53 = *(v44 + 20);
            *(v11 + 24) = *(v44 + 12);
            *(v11 + 32) = v53;
            *(v44 + 20) = v52;
            *(v44 + 12) = v51;
          }
        }
      }

      else
      {
        if (v46 < v45)
        {
          v47 = *(v11 + 24);
          v48 = *(v11 + 32);
          v49 = *(a2 - 7);
          *(v11 + 24) = *v10;
          *(v11 + 32) = v49;
          goto LABEL_48;
        }

        v54 = *(v11 + 24);
        v55 = *(v11 + 32);
        v56 = *(v44 + 20);
        *(v11 + 24) = *(v44 + 12);
        *(v11 + 32) = v56;
        *(v44 + 20) = v55;
        *(v44 + 12) = v54;
        if (*(a2 - 8) < *(v44 + 16))
        {
          v205 = *(v44 + 20);
          v180 = *(v44 + 12);
          v57 = *v10;
          *(v44 + 20) = *(a2 - 7);
          *(v44 + 12) = v57;
          v47 = v180;
          v48 = v205;
LABEL_48:
          *(a2 - 7) = v48;
          *v10 = v47;
        }
      }

      v58 = *(v15 + 4);
      v59 = *(v44 + 16);
      if (v58 >= *(v28 + 4))
      {
        if (v59 < v58)
        {
          v207 = *(v15 + 8);
          v182 = *v15;
          *v15 = *(v44 + 12);
          *(v15 + 8) = *(v44 + 20);
          *(v44 + 20) = v207;
          *(v44 + 12) = v182;
          if (*(v15 + 4) < *(v28 + 4))
          {
            v208 = *(v28 + 8);
            v183 = *v28;
            *v28 = *v15;
            *(v28 + 8) = *(v15 + 8);
            *(v15 + 8) = v208;
            *v15 = v183;
          }
        }
      }

      else
      {
        if (v59 < v58)
        {
          v206 = *(v28 + 8);
          v181 = *v28;
          *v28 = *(v44 + 12);
          *(v28 + 8) = *(v44 + 20);
          goto LABEL_57;
        }

        v209 = *(v28 + 8);
        v184 = *v28;
        *v28 = *v15;
        *(v28 + 8) = *(v15 + 8);
        *(v15 + 8) = v209;
        *v15 = v184;
        if (*(v44 + 16) < *(v15 + 4))
        {
          v206 = *(v15 + 8);
          v181 = *v15;
          *v15 = *(v44 + 12);
          *(v15 + 8) = *(v44 + 20);
LABEL_57:
          *(v44 + 20) = v206;
          *(v44 + 12) = v181;
        }
      }

      v210 = *(v11 + 8);
      v185 = *v11;
      v60 = *v15;
      *(v11 + 8) = *(v15 + 8);
      *v11 = v60;
      *(v15 + 8) = v210;
      *v15 = v185;
      goto LABEL_59;
    }

    v19 = *(v11 + 4);
    if (v19 >= *(v15 + 4))
    {
      if (v16 < v19)
      {
        v198 = *(v11 + 8);
        v173 = *v11;
        v23 = *v8;
        *(v11 + 8) = *(a2 - 1);
        *v11 = v23;
        *(a2 - 1) = v198;
        *v8 = v173;
        if (*(v11 + 4) < *(v15 + 4))
        {
          v199 = *(v15 + 8);
          v174 = *v15;
          v24 = *v11;
          *(v15 + 8) = *(v11 + 8);
          *v15 = v24;
          *(v11 + 8) = v199;
          *v11 = v174;
        }
      }

      goto LABEL_59;
    }

    if (v16 < v19)
    {
      v195 = *(v15 + 8);
      v170 = *v15;
      v20 = *v8;
      *(v15 + 8) = *(a2 - 1);
      *v15 = v20;
LABEL_36:
      *(a2 - 1) = v195;
      *v8 = v170;
      goto LABEL_59;
    }

    v202 = *(v15 + 8);
    v177 = *v15;
    v38 = *v11;
    *(v15 + 8) = *(v11 + 8);
    *v15 = v38;
    *(v11 + 8) = v202;
    *v11 = v177;
    if (*(a2 - 2) < *(v11 + 4))
    {
      v195 = *(v11 + 8);
      v170 = *v11;
      v39 = *v8;
      *(v11 + 8) = *(a2 - 1);
      *v11 = v39;
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v61 = *(v11 + 4);
LABEL_62:
      v62 = *v11;
      v63 = *(v11 + 8);
      v64 = v11;
      do
      {
        v65 = v64;
        v64 += 12;
      }

      while (*(v65 + 16) < v61);
      v66 = a2;
      if (v65 == v11)
      {
        v69 = a2;
        while (v64 < v69)
        {
          v67 = v69 - 3;
          v70 = *(v69 - 2);
          v69 -= 3;
          if (v70 < v61)
          {
            goto LABEL_72;
          }
        }

        v67 = v69;
      }

      else
      {
        do
        {
          v67 = v66 - 3;
          v68 = *(v66 - 2);
          v66 -= 3;
        }

        while (v68 >= v61);
      }

LABEL_72:
      v11 = v64;
      if (v64 < v67)
      {
        v71 = v67;
        do
        {
          v72 = *v11;
          v211 = *(v11 + 8);
          v73 = *(v71 + 8);
          *v11 = *v71;
          *(v11 + 8) = v73;
          *(v71 + 8) = v211;
          *v71 = v72;
          do
          {
            v74 = *(v11 + 16);
            v11 += 12;
          }

          while (v74 < v61);
          do
          {
            v75 = *(v71 - 8);
            v71 -= 12;
          }

          while (v75 >= v61);
        }

        while (v11 < v71);
      }

      if (v11 - 12 != v7)
      {
        v76 = *(v11 - 12);
        *(v7 + 8) = *(v11 - 4);
        *v7 = v76;
      }

      *(v11 - 12) = v62;
      *(v11 - 8) = v61;
      *(v11 - 4) = v63;
      if (v64 < v67)
      {
        goto LABEL_83;
      }

      if (result)
      {
        a2 = (v11 - 12);
        if (!v77)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v77)
      {
LABEL_83:
        a4 = 0;
      }
    }

    else
    {
      v61 = *(v11 + 4);
      if (*(v11 - 8) < v61)
      {
        goto LABEL_62;
      }

      if (v61 >= *(a2 - 2))
      {
        v80 = v11 + 12;
        do
        {
          v11 = v80;
          if (v80 >= a2)
          {
            break;
          }

          v81 = *(v80 + 4);
          v80 += 12;
        }

        while (v61 >= v81);
      }

      else
      {
        v78 = v11;
        do
        {
          v11 = v78 + 12;
          v79 = *(v78 + 16);
          v78 += 12;
        }

        while (v61 >= v79);
      }

      v82 = a2;
      if (v11 < a2)
      {
        v83 = a2;
        do
        {
          v82 = v83 - 3;
          v84 = *(v83 - 2);
          v83 -= 3;
        }

        while (v61 < v84);
      }

      v85 = *v7;
      v86 = *(v7 + 8);
      while (v11 < v82)
      {
        v212 = *(v11 + 8);
        v186 = *v11;
        v87 = *v82;
        *(v11 + 8) = v82[2];
        *v11 = v87;
        v82[2] = v212;
        *v82 = v186;
        do
        {
          v88 = *(v11 + 16);
          v11 += 12;
        }

        while (v61 >= v88);
        do
        {
          v89 = *(v82 - 2);
          v82 -= 3;
        }

        while (v61 < v89);
      }

      if (v11 - 12 != v7)
      {
        v90 = *(v11 - 12);
        *(v7 + 8) = *(v11 - 4);
        *v7 = v90;
      }

      a4 = 0;
      *(v11 - 12) = v85;
      *(v11 - 8) = v61;
      *(v11 - 4) = v86;
    }
  }

  v91 = *(v11 + 16);
  v92 = *(a2 - 2);
  if (v91 >= *(v11 + 4))
  {
    if (v92 >= v91)
    {
      return result;
    }

    v150 = *(v11 + 12);
    v151 = *(v11 + 20);
    v152 = *(a2 - 1);
    *(v11 + 12) = *v8;
    *(v11 + 20) = v152;
    *(a2 - 1) = v151;
    *v8 = v150;
    goto LABEL_195;
  }

  if (v92 < v91)
  {
    goto LABEL_112;
  }

  v217 = *(v11 + 8);
  v191 = *v11;
  *v11 = *(v11 + 12);
  *(v11 + 8) = *(v11 + 20);
  *(v11 + 12) = v191;
  *(v11 + 20) = v217;
  if (*(a2 - 2) < *(v11 + 16))
  {
    v94 = *(v11 + 12);
    v95 = *(v11 + 20);
    v162 = *(a2 - 1);
    *(v11 + 12) = *v8;
    *(v11 + 20) = v162;
    goto LABEL_113;
  }

  return result;
}