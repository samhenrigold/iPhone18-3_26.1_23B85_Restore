uint64_t MTLIRBuilder::CreateBadAccessCall(llvm::Type **this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, llvm::Value *a5, llvm::Value *a6, llvm::Value *a7, llvm::Value *a8, llvm::Value *a9, llvm::Value *a10)
{
  v24[9] = *MEMORY[0x277D85DE8];
  inserted = MTLIRBuilder::getOrInsertBadAccessFunction(this, *(*(this[6] + 7) + 40));
  if (inserted)
  {
    v19 = *(inserted + 24);
  }

  else
  {
    v19 = 0;
  }

  v24[0] = a2;
  v24[1] = a3;
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v24[6] = a8;
  v24[7] = a9;
  v24[8] = a10;
  v23 = 257;
  v20 = llvm::IRBuilderBase::CreateCall(this, v19, inserted, v24, 9, v22, 0);
  llvm::Value::getContext(v20);
  *(v20 + 8) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v20);
  result = llvm::AttributeList::addAttributeAtIndex();
  *(v20 + 8) = result;
  return result;
}

uint64_t MTLIRBuilder::getOrInsertBadAccessFunction(llvm::Type **this, llvm::Module *a2)
{
  VoidTy = llvm::Type::getVoidTy(this[8], a2);
  v7 = llvm::PointerType::get();
  v6 = llvm::PointerType::get();
  v4 = getOrInsertFunction<char const(&)[15],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(a2, "mtl.bad_access", &VoidTy, &v7, &v6, this + 22, this + 17, this + 17, this + 19, this + 19, this + 18, this + 20);
  llvm::GlobalObject::setSection();
  return v4;
}

uint64_t MTLIRBuilder::CreateIsNullTextureCall(llvm::IRBuilderBase *a1, llvm::Value **a2)
{
  BitOrPointerCast = a2;
  v42[1] = *MEMORY[0x277D85DE8];
  Name = llvm::Value::getName(a2[3]);
  v6 = 12;
  if (v5 < 0xC)
  {
    v6 = v5;
  }

  v41.n128_u64[0] = v6 + Name;
  v41.n128_u64[1] = v5 - v6;
  llvm::StringRef::split(&v41, 1, v38);
  v7 = v38[0].n128_u64[1];
  if (v38[0].n128_u64[1] >= 5)
  {
    if (!(*(v38[0].n128_u64[0] + v38[0].n128_u64[1] - 5) ^ 0x6172675F | *(v38[0].n128_u64[0] + v38[0].n128_u64[1] - 1) ^ 0x64))
    {
      v7 = v38[0].n128_u64[1] - 5;
    }

    if (v7 >= 0xA)
    {
      v17 = v38[0].n128_u64[0] + v7;
      if (*(v38[0].n128_u64[0] + v7 - 10) == 0x5F65727574786574 && *(v38[0].n128_u64[0] + v7 - 2) == 25649)
      {
        v16 = "struct._texture_1d_t";
        v15 = "air.is_null_texture_1d";
        goto LABEL_104;
      }

      if (v7 >= 0x10)
      {
        if (*(v17 - 16) == 0x5F65727574786574 && *(v17 - 8) == 0x79617272615F6431)
        {
          v16 = "struct._texture_1d_array_t";
          v15 = "air.is_null_texture_1d_array";
          goto LABEL_104;
        }

        if (*(v17 - 10) != 0x5F65727574786574 || *(v17 - 2) != 25650)
        {
          if (*(v17 - 16) == 0x5F65727574786574 && *(v17 - 8) == 0x79617272615F6432)
          {
            v16 = "struct._texture_2d_array_t";
            v15 = "air.is_null_texture_2d_array";
            goto LABEL_104;
          }

          goto LABEL_65;
        }
      }

      else if (*(v17 - 10) != 0x5F65727574786574 || *(v17 - 2) != 25650)
      {
        if (v7 < 0xD)
        {
          if (v7 != 12 || (*v38[0].n128_u64[0] == 0x5F65727574786574 ? (v20 = *(v38[0].n128_u64[0] + 8) == 1700951395) : (v20 = 0), !v20))
          {
LABEL_89:
            v30 = *(v17 - 10);
            v31 = *(v17 - 2);
            if (v30 == 0x5F65727574786574 && v31 == 25651)
            {
              v16 = "struct._texture_3d_t";
              v15 = "air.is_null_texture_3d";
              goto LABEL_104;
            }

            goto LABEL_7;
          }

          goto LABEL_100;
        }

LABEL_65:
        if (*(v17 - 13) == 0x5F65727574786574 && *(v17 - 8) == 0x736D5F64325F6572)
        {
          v16 = "struct._texture_2d_ms_t";
          v15 = "air.is_null_texture_2d_ms";
          goto LABEL_104;
        }

        if (v7 >= 0x13)
        {
          v25 = *(v17 - 19) == 0x5F65727574786574 && *(v17 - 11) == 0x72615F736D5F6432;
          if (v25 && *(v17 - 8) == 0x79617272615F736DLL)
          {
            v16 = "struct._texture_2d_ms_array_t";
            v15 = "air.is_null_texture_2d_ms_array";
            goto LABEL_104;
          }
        }

        if (*(v17 - 12) != 0x5F65727574786574 || *(v17 - 4) != 1700951395)
        {
          if (v7 >= 0x12)
          {
            v28 = *(v17 - 18) == 0x5F65727574786574 && *(v17 - 10) == 0x7272615F65627563;
            if (v28 && *(v17 - 2) == 31073)
            {
              v16 = "struct._texture_cube_array_t";
              v15 = "air.is_null_texture_cube_array";
              goto LABEL_104;
            }
          }

          goto LABEL_89;
        }

LABEL_100:
        v16 = "struct._texture_cube_t";
        v15 = "air.is_null_texture_cube";
        goto LABEL_104;
      }

      v16 = "struct._texture_2d_t";
      v15 = "air.is_null_texture_2d";
      goto LABEL_104;
    }
  }

LABEL_7:
  v8 = v38[0].n128_u64[0] + v7;
  if (*(v38[0].n128_u64[0] + v7 - 8) == 0x64325F6874706564)
  {
    v16 = "struct._depth_2d_t";
    v15 = "air.is_null_depth_2d";
  }

  else if (v7 >= 0xE && (*(v8 - 14) == 0x64325F6874706564 ? (v9 = *(v8 - 8) == 0x79617272615F6432) : (v9 = 0), v9))
  {
    v16 = "struct._depth_2d_array_t";
    v15 = "air.is_null_depth_2d_array";
  }

  else if (*(v8 - 10) == 0x75635F6874706564 && *(v8 - 2) == 25954)
  {
    v16 = "struct._depth_cube_t";
    v15 = "air.is_null_depth_cube";
  }

  else if (v7 >= 0x10 && (*(v8 - 16) == 0x75635F6874706564 ? (v11 = *(v8 - 8) == 0x79617272615F6562) : (v11 = 0), v11))
  {
    v16 = "struct._depth_cube_array_t";
    v15 = "air.is_null_depth_cube_array";
  }

  else if (*(v8 - 11) == 0x64325F6874706564 && *(v8 - 8) == 0x736D5F64325F6874)
  {
    v16 = "struct._depth_2d_ms_t";
    v15 = "air.is_null_depth_2d_ms";
  }

  else
  {
    v13 = *(v8 - 17) ^ 0x64325F6874706564 | *(v8 - 9) ^ 0x617272615F736D5FLL | *(v8 - 1) ^ 0x79;
    v14 = v13 == 0;
    if (v13)
    {
      v15 = "air.is_null_texture_buffer_1d";
    }

    else
    {
      v15 = "air.is_null_depth_2d_ms_array";
    }

    if (v14)
    {
      v16 = "struct._depth_2d_ms_array_t";
    }

    else
    {
      v16 = "struct._texture_buffer_1d_t";
    }
  }

LABEL_104:
  v41.n128_u64[0] = v15;
  llvm::Value::getContext(BitOrPointerCast);
  strlen(v16);
  if (!llvm::StructType::getTypeByName())
  {
    llvm::Value::getContext(BitOrPointerCast);
    strlen(v16);
    llvm::StructType::create();
  }

  v40 = llvm::PointerType::get();
  v33 = getOrInsertFunction<char const*&,llvm::Type *&,llvm::Type *&>(*(*(*(a1 + 6) + 56) + 40), &v41, a1 + 21, &v40);
  if ((llvm::Function::onlyReadsMemory(v33) & 1) == 0)
  {
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
  }

  v34 = *(v33 + 3);
  v35 = *(*(v34 + 16) + 8);
  if (v35 != *BitOrPointerCast)
  {
    v39 = 257;
    BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(a1, BitOrPointerCast, v35, v38);
    v34 = *(v33 + 3);
  }

  v42[0] = BitOrPointerCast;
  v39 = 257;
  v36 = llvm::IRBuilderBase::CreateCall(a1, v34, v33, v42, 1, v38, 0);
  *(v36 + 18) = *(v36 + 18) & 0xFFFC | 1;
  llvm::Value::getContext(v36);
  *(v36 + 64) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v36);
  *(v36 + 64) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v36);
  *(v36 + 64) = llvm::AttributeList::addAttributeAtIndex();
  return v36;
}

__n128 llvm::StringRef::split@<Q0>(__n128 *a1@<X0>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v7 = llvm::StringRef::find();
  if (v7 == -1)
  {
    a4[1].n128_u64[0] = 0;
    a4[1].n128_u64[1] = 0;
    result = *a1;
    *a4 = *a1;
  }

  else
  {
    v10 = a1->n128_u64[0];
    v9 = a1->n128_u64[1];
    if (v9 >= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = a1->n128_u64[1];
    }

    v12 = v7 + a3;
    if (v9 < v7 + a3)
    {
      v12 = a1->n128_u64[1];
    }

    a4->n128_u64[0] = v10;
    a4->n128_u64[1] = v11;
    a4[1].n128_u64[0] = v10 + v12;
    a4[1].n128_u64[1] = v9 - v12;
  }

  return result;
}

uint64_t getOrInsertFunction<char const*&,llvm::Type *&,llvm::Type *&>(uint64_t a1, const char **a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a2;
  if (*a2)
  {
    v8 = strlen(*a2);
  }

  else
  {
    v8 = 0;
  }

  llvm::Module::getOrInsertFunction<llvm::Type *>(a1, v7, v8, 0, *a3, *a4);
  result = v9;
  if (*(v9 + 16) == 5)
  {
    return *(v9 - 32 * (*(v9 + 20) & 0x7FFFFFF));
  }

  return result;
}

uint64_t MTLIRBuilder::CreateBadTextureCall(llvm::Type **this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, llvm::Value *a5, llvm::Value *a6, llvm::Value *a7, llvm::Value *a8, llvm::Value *a9)
{
  v22[8] = *MEMORY[0x277D85DE8];
  inserted = MTLIRBuilder::getOrInsertBadTextureFunction(this, *(*(this[6] + 7) + 40));
  if (inserted)
  {
    v18 = *(inserted + 24);
  }

  else
  {
    v18 = 0;
  }

  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a7;
  v22[5] = a8;
  v22[6] = a6;
  v22[7] = a9;
  v21[16] = 257;
  v19 = llvm::IRBuilderBase::CreateCall(this, v18, inserted, v22, 8, v21, 0);
  llvm::Value::getContext(v19);
  *(v19 + 8) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v19);
  result = llvm::AttributeList::addAttributeAtIndex();
  *(v19 + 8) = result;
  return result;
}

uint64_t MTLIRBuilder::getOrInsertBadTextureFunction(llvm::Type **this, llvm::Module *a2)
{
  VoidTy = llvm::Type::getVoidTy(this[8], a2);
  v7 = llvm::PointerType::get();
  v6 = llvm::PointerType::get();
  v4 = getOrInsertFunction<char const(&)[16],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(a2, "mtl.bad_texture", &VoidTy, &v7, &v6, this + 22, this + 17, this + 20, this + 20, this + 18, this + 18);
  llvm::GlobalObject::setSection();
  return v4;
}

uint64_t MTLIRBuilder::getOrInsertTrapFunction(llvm::Type **this, llvm::Module *a2)
{
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    VoidTy = llvm::Type::getVoidTy(this[8], v4);
    v8 = llvm::PointerType::get();
    v7 = llvm::PointerType::get();
    Function = getOrInsertFunction<char const(&)[16],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&>(a2, "mtl.report_trap", &VoidTy, &v8, &v7, this + 22, this + 17, this + 18);
    if (Function)
    {
      llvm::GlobalObject::setSection();
    }
  }

  return Function;
}

uint64_t getOrInsertFunction<char const(&)[16],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&>(uint64_t a1, char *__s, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v16 = strlen(__s);
  llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *>(a1, __s, v16, 0, *a3, *a4, *a5, *a6, *a7, *a8);
  result = v17;
  if (*(v17 + 16) == 5)
  {
    return *(v17 - 32 * (*(v17 + 20) & 0x7FFFFFF));
  }

  return result;
}

uint64_t MTLIRBuilder::CreateTrapCall(llvm::Type **this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, llvm::Value *a5, unsigned int a6)
{
  v18[5] = *MEMORY[0x277D85DE8];
  inserted = MTLIRBuilder::getOrInsertTrapFunction(this, *(*(this[6] + 7) + 40));
  v12 = inserted;
  if (inserted)
  {
    v13 = *(inserted + 24);
  }

  else
  {
    v13 = 0;
  }

  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = llvm::ConstantInt::get();
  v17 = 257;
  v14 = llvm::IRBuilderBase::CreateCall(this, v13, v12, v18, 5, v16, 0);
  llvm::Value::getContext(v14);
  *(v14 + 64) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v14);
  result = llvm::AttributeList::addAttributeAtIndex();
  *(v14 + 64) = result;
  *(v14 + 18) = *(v14 + 18) & 0xFFFC | 1;
  return result;
}

uint64_t MTLIRBuilder::CreateStackOverflowCall(llvm::Type **this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, llvm::Value *a5, llvm::Value *a6)
{
  v18[5] = *MEMORY[0x277D85DE8];
  inserted = MTLIRBuilder::getOrInsertStackOverflowFunction(this, *(*(this[6] + 7) + 40));
  if (inserted)
  {
    v13 = *(inserted + 24);
  }

  else
  {
    v13 = 0;
  }

  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v17 = 257;
  v14 = llvm::IRBuilderBase::CreateCall(this, v13, inserted, v18, 5, v16, 0);
  llvm::Value::getContext(v14);
  *(v14 + 64) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v14);
  result = llvm::AttributeList::addAttributeAtIndex();
  *(v14 + 64) = result;
  *(v14 + 18) = *(v14 + 18) & 0xFFFC | 1;
  return result;
}

uint64_t MTLIRBuilder::getOrInsertStackOverflowFunction(llvm::Type **this, llvm::Module *a2)
{
  VoidTy = llvm::Type::getVoidTy(this[8], a2);
  v7 = llvm::PointerType::get();
  v6 = llvm::PointerType::get();
  v4 = getOrInsertFunction<char const(&)[16],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&>(a2, "mtl.stack_overflow", &VoidTy, &v7, &v6, this + 22, this + 17, this + 18);
  llvm::GlobalObject::setSection();
  return v4;
}

uint64_t MTLIRBuilder::CreateBadAccelerationStructureCall(llvm::Type **this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, llvm::Value *a5, llvm::Value *a6, llvm::Value *a7, llvm::Value *a8)
{
  v22[7] = *MEMORY[0x277D85DE8];
  inserted = MTLIRBuilder::getOrInsertBadAccelerationStructureFunction(this, *(*(this[6] + 7) + 40));
  if (inserted)
  {
    v17 = *(inserted + 24);
  }

  else
  {
    v17 = 0;
  }

  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a7;
  v22[5] = a8;
  v22[6] = a6;
  v21 = 257;
  v18 = llvm::IRBuilderBase::CreateCall(this, v17, inserted, v22, 7, v20, 0);
  llvm::Value::getContext(v18);
  *(v18 + 64) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v18);
  result = llvm::AttributeList::addAttributeAtIndex();
  *(v18 + 64) = result;
  *(v18 + 18) = *(v18 + 18) & 0xFFFC | 1;
  return result;
}

uint64_t MTLIRBuilder::getOrInsertBadAccelerationStructureFunction(llvm::Type **this, llvm::Module *a2)
{
  VoidTy = llvm::Type::getVoidTy(this[8], a2);
  v7 = llvm::PointerType::get();
  v6 = llvm::PointerType::get();
  v4 = getOrInsertFunction<char const(&)[31],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(a2, "mtl.bad_acceleration_structure", &VoidTy, &v7, &v6, this + 22, this + 17, this + 17, this + 17, this + 18);
  llvm::GlobalObject::setSection();
  return v4;
}

uint64_t getOrInsertFunction<char const(&)[16],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(uint64_t a1, char *__s, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, void *a7, void *a8, void *a9, void *a10, uint64_t *a11)
{
  v18 = strlen(__s);
  *(&v22 + 1) = *a10;
  *(&v21 + 1) = *a8;
  *&v22 = *a9;
  *&v21 = *a7;
  llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *>(a1, __s, v18, 0, *a3, *a4, *a5, *a6, v21, v22, *a11);
  result = v19;
  if (*(v19 + 16) == 5)
  {
    return *(v19 - 32 * (*(v19 + 20) & 0x7FFFFFF));
  }

  return result;
}

uint64_t getOrInsertFunction<char const(&)[15],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(uint64_t a1, char *__s, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, void *a7, void *a8, void *a9, void *a10, uint64_t *a11, uint64_t *a12)
{
  v18 = strlen(__s);
  *&v22 = *a9;
  *(&v22 + 1) = *a10;
  *&v21 = *a7;
  *(&v21 + 1) = *a8;
  llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *>(a1, __s, v18, 0, *a3, *a4, *a5, *a6, v21, v22, *a11, *a12);
  result = v19;
  if (*(v19 + 16) == 5)
  {
    return *(v19 - 32 * (*(v19 + 20) & 0x7FFFFFF));
  }

  return result;
}

uint64_t getOrInsertFunction<char const(&)[31],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(uint64_t a1, char *__s, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, void *a7, void *a8, uint64_t *a9, uint64_t *a10)
{
  v18 = strlen(__s);
  *&v21 = *a7;
  *(&v21 + 1) = *a8;
  llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *>(a1, __s, v18, 0, *a3, *a4, *a5, *a6, v21, *a9, *a10);
  result = v19;
  if (*(v19 + 16) == 5)
  {
    return *(v19 - 32 * (*(v19 + 20) & 0x7FFFFFF));
  }

  return result;
}

uint64_t llvm::Module::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v10[0] = a6;
  v10[1] = a7;
  v10[2] = a8;
  llvm::SmallVector<llvm::Type *,3u>::SmallVector(&v11, v10, 3);
  llvm::FunctionType::get();
  inserted = llvm::Module::getOrInsertFunction();
  if (v11 != v12)
  {
    free(v11);
  }

  return inserted;
}

uint64_t llvm::SmallVector<llvm::Type *,3u>::SmallVector(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x300000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, &a2[8 * a3]);
  return a1;
}

void sub_213C54DF4(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::Module::getOrInsertFunction<llvm::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v8 = a6;
  llvm::SmallVector<llvm::Type *,1u>::SmallVector(&v9, &v8, 1);
  llvm::FunctionType::get();
  inserted = llvm::Module::getOrInsertFunction();
  if (v9 != v10)
  {
    free(v9);
  }

  return inserted;
}

uint64_t llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[5] = *MEMORY[0x277D85DE8];
  v12[0] = a6;
  v12[1] = a7;
  v12[2] = a8;
  v12[3] = a9;
  v12[4] = a10;
  llvm::SmallVector<llvm::Type *,5u>::SmallVector(&v13, v12, 5);
  llvm::FunctionType::get();
  inserted = llvm::Module::getOrInsertFunction();
  if (v13 != v14)
  {
    free(v13);
  }

  return inserted;
}

uint64_t llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v13[0] = a6;
  v13[1] = a7;
  v13[2] = a8;
  v14 = a9;
  v15 = a10;
  v16 = a11;
  llvm::SmallVector<llvm::Type *,8u>::SmallVector(&v17, v13, 8);
  llvm::FunctionType::get();
  inserted = llvm::Module::getOrInsertFunction();
  if (v17 != v18)
  {
    free(v17);
  }

  return inserted;
}

uint64_t llvm::SmallVector<llvm::Type *,8u>::SmallVector(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x800000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, &a2[8 * a3]);
  return a1;
}

void sub_213C5518C(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  v20[9] = *MEMORY[0x277D85DE8];
  v14[0] = a6;
  v14[1] = a7;
  v14[2] = a8;
  v15 = a9;
  v16 = a10;
  v17 = a11;
  v18 = a12;
  llvm::SmallVector<llvm::Type *,9u>::SmallVector(&v19, v14, 9);
  llvm::FunctionType::get();
  inserted = llvm::Module::getOrInsertFunction();
  if (v19 != v20)
  {
    free(v19);
  }

  return inserted;
}

uint64_t llvm::SmallVector<llvm::Type *,9u>::SmallVector(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x900000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, &a2[8 * a3]);
  return a1;
}

void sub_213C55308(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v18[7] = *MEMORY[0x277D85DE8];
  v13[0] = a6;
  v13[1] = a7;
  v13[2] = a8;
  v14 = a9;
  v15 = a10;
  v16 = a11;
  llvm::SmallVector<llvm::Type *,7u>::SmallVector(&v17, v13, 7);
  llvm::FunctionType::get();
  inserted = llvm::Module::getOrInsertFunction();
  if (v17 != v18)
  {
    free(v17);
  }

  return inserted;
}

uint64_t llvm::SmallVector<llvm::Type *,7u>::SmallVector(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x700000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, &a2[8 * a3]);
  return a1;
}

void sub_213C55484(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL isBufferMetadata(uint64_t a1)
{
  v1 = *(a1 - 8 * *(a1 + 8) + 8);
  if (*v1)
  {
    return 0;
  }

  String = llvm::MDString::getString(v1);
  v5 = v3;
  result = 0;
  if (v3 > 30)
  {
    switch(v3)
    {
      case 31:
        v6 = "air.intersection_function_table";
        break;
      case 35:
        v6 = "air.instance_acceleration_structure";
        break;
      case 36:
        v6 = "air.primitive_acceleration_structure";
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v3)
    {
      case 10:
        v7 = *String;
        v8 = String[4];
        return v7 == 0x666675622E726961 && v8 == 29285;
      case 19:
        v6 = "air.indirect_buffer";
        break;
      case 26:
        v6 = "air.visible_function_table";
        break;
      default:
        return result;
    }
  }

  return memcmp(String, v6, v5) == 0;
}

void MTLArgumentBufferConversion::~MTLArgumentBufferConversion(MTLArgumentBufferConversion *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_282633520;
  v4 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v4, v5, v6, v7);

  JUMPOUT(0x21604B480);
}

{
  *this = &unk_282633520;
  v5 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v6, v7, v8);
  MEMORY[0x21604B480](this);

  JUMPOUT(0x21604C990);
}

BOOL MTLArgumentBufferConversion::runOnModule(MTLArgumentBufferConversion *this, llvm::Module *a2)
{
  v124[8] = *MEMORY[0x277D85DE8];
  MetalModulePass::runOnModule(this, a2);
  isLibraryModule = MTLBoundsCheck::isLibraryModule(a2, v4);
  if (!isLibraryModule)
  {
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v97[0] = 0;
    v97[1] = 0;
    v98 = 0;
    v122 = v124;
    v123 = 0x800000000;
    v120[0] = &v121;
    v120[1] = 0x800000000;
    v117 = &v119;
    v118 = 0x1F00000000;
    if ((*(*(this + 4) + 22) & 2) != 0)
    {
      v6 = 1;
      llvm::SmallVectorImpl<llvm::Type *>::resizeImpl<false>(&v117, 1uLL);
    }

    else
    {
      v6 = 31;
      llvm::SmallVectorImpl<llvm::Type *>::resizeImpl<false>(&v117, 0x1FuLL);
    }

    llvm::SmallVectorImpl<llvm::Instruction *>::assign(&v117, v6, 0);
    llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<decltype(nullptr)>(v120);
    v114 = 0;
    llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<decltype(nullptr)>(&v122);
    EntryFunction = MetalModulePass::getEntryFunction(this);
    v7 = *(*(this + 16) - 8 * *(*(this + 16) + 8) + 16);
    v8 = *(v7 + 8);
    if (!v8)
    {
LABEL_27:
      if ((*(*(this + 4) + 22) & 2) != 0)
      {
        v21 = llvm::PointerType::get();
        v22 = llvm::ArrayType::get(v21, 0x1F);
        *v117 = v22;
      }

      else
      {
        v19 = v118;
        if (v118)
        {
          v20 = 0;
          do
          {
            if (!*(v117 + v20))
            {
              *(v117 + v20) = llvm::PointerType::get();
              v19 = v118;
            }

            ++v20;
          }

          while (v19 > v20);
        }
      }

      v23 = llvm::StructType::create();
      StructLayout = llvm::DataLayout::getStructLayout();
      v114 = &v116;
      v115 = 0x1F00000000;
      v112[0] = &v113;
      v112[1] = 0x1F00000000;
      llvm::SmallVectorImpl<llvm::Type *>::resizeImpl<false>(v112, v118);
      v96 = 0;
      if (v118)
      {
        v25 = 0;
        v26 = 0;
        v27 = StructLayout + 16;
        do
        {
          v95.n128_u64[0] = "air.read_write";
          v95.n128_u64[1] = 14;
          v28 = *(v23 + 2);
          if ((*(*(this + 4) + 22) & 2) != 0)
          {
            v29 = *(*v28 + 16);
          }

          else
          {
            v29 = (v28 + 8 * v26);
          }

          v30 = *v29;
          v94.n128_u64[0] = "int";
          v94.n128_u64[1] = 3;
          *(&__src.__r_.__value_.__s + 23) = 3;
          LODWORD(__src.__r_.__value_.__l.__data_) = 3039841;
          std::to_string(&v102, v25);
          if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v31 = &v102;
          }

          else
          {
            v31 = v102.__r_.__value_.__r.__words[0];
          }

          if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v102.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v102.__r_.__value_.__l.__size_;
          }

          v33 = std::string::append(&__src, v31, size);
          v35 = *&v33->__r_.__value_.__l.__data_;
          __p[0].__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
          *&__p[0].__r_.__value_.__l.__data_ = v35;
          v33->__r_.__value_.__l.__size_ = 0;
          v33->__r_.__value_.__r.__words[2] = 0;
          v33->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v102.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__src.__r_.__value_.__l.__data_);
          }

          String = "air.buffer";
          v93 = 10;
          StructTypeInfo = 0;
          if ((*(*(this + 4) + 22) & 2) == 0)
          {
            __src.__r_.__value_.__r.__words[0] = 0;
            v36 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::LookupBucketFor<unsigned int>(v97, &v96, &__src);
            v37 = __src.__r_.__value_.__r.__words[0] == v97[0] + 32 * v98 ? 0 : v36;
            if (v37 == 1)
            {
              v38 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::FindAndConstruct(v97, &v96);
              llvm::SmallVector<unsigned int,2u>::SmallVector(&__src, (v38 + 2));
              if (LODWORD(__src.__r_.__value_.__r.__words[1]) == 1)
              {
                v39 = *(v7 - 8 * *(v7 + 8) + 8 * *__src.__r_.__value_.__l.__data_);
                v110 = v94;
                LOBYTE(v111) = 1;
                MTLBoundsCheck::getArgTypeName(v39, &v110, &v102);
                v94 = *&v102.__r_.__value_.__l.__data_;
                v40 = SHIBYTE(__p[0].__r_.__value_.__r.__words[2]);
                v41 = __p[0].__r_.__value_.__r.__words[0];
                if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v41 = __p;
                }

                if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v40 = __p[0].__r_.__value_.__l.__size_;
                }

                v89[0] = v41;
                v89[1] = v40;
                v90 = 1;
                MTLBoundsCheck::getArgName(v39, v89, &v110);
                llvm::StringRef::str(&v110, &v102);
                if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p[0].__r_.__value_.__l.__data_);
                }

                __p[0] = v102;
                v110 = v95;
                LOBYTE(v111) = 1;
                MTLBoundsCheck::getArgAccessType(v39, &v110, &v102);
                v95 = *&v102.__r_.__value_.__l.__data_;
                String = llvm::MDString::getString(*&v39[-2 * v39[2] + 2]);
                v93 = v42;
                StructTypeInfo = MTLBoundsCheck::getStructTypeInfo(v39);
              }

              if (__src.__r_.__value_.__l.__data_ != &__src.__r_.__value_.__r.__words[2])
              {
                free(__src.__r_.__value_.__l.__data_);
              }
            }
          }

          __src.__r_.__value_.__r.__words[0] = &__src.__r_.__value_.__r.__words[2];
          __src.__r_.__value_.__l.__size_ = 0x800000000;
          v102.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata<unsigned int>(this, v96, v34);
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v102);
          llvm::StringRef::str(&String, &v102);
          v110.n128_u64[0] = MetalModulePass::getMetadata(this, &v102);
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v110);
          if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v102.__r_.__value_.__l.__data_);
          }

          v102.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata(this, "air.location_index", v43);
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v102);
          v102.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata<unsigned int>(this, v96, v44);
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v102);
          v102.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata<int>(this, 1, v45);
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v102);
          llvm::StringRef::str(&v95, &v102);
          v110.n128_u64[0] = MetalModulePass::getMetadata(this, &v102);
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v110);
          if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v102.__r_.__value_.__l.__data_);
          }

          if (StructTypeInfo)
          {
            v102.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata(this, "air.struct_type_info", v46);
            llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v102);
            llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &StructTypeInfo);
          }

          if (llvm::Type::isSized(*v30[2]))
          {
            v102.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata(this, "air.arg_type_size", v47);
            llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v102);
            v102.__r_.__value_.__r.__words[0] = (llvm::DataLayout::getTypeSizeInBits(*(this + 7), *v30[2]) + 7) >> 3;
            LODWORD(v102.__r_.__value_.__r.__words[1]) = v48 == 1;
            v110.n128_u64[0] = MetalModulePass::getMetadata(this, &v102);
            llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v110);
            v102.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata(this, "air.arg_type_align_size", v49);
            llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v102);
            PrefTypeAlignment = llvm::DataLayout::getPrefTypeAlignment(*(this + 7), *v30[2]);
            v102.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata<unsigned long long>(this, PrefTypeAlignment, v51);
            llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v102);
          }

          v102.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata(this, "air.arg_type_name", v47);
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v102);
          llvm::StringRef::str(&v94, &v102);
          v110.n128_u64[0] = MetalModulePass::getMetadata(this, &v102);
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v110);
          if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v102.__r_.__value_.__l.__data_);
          }

          v102.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata(this, "air.arg_name", v52);
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v102);
          v102.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata(this, __p);
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v102);
          Impl = llvm::MDTuple::getImpl();
          v54 = v96;
          *(v112[0] + v96) = Impl;
          if (__src.__r_.__value_.__l.__data_ != &__src.__r_.__value_.__r.__words[2])
          {
            free(__src.__r_.__value_.__l.__data_);
            v54 = v96;
          }

          v55 = *(v27 + 8 * v54);
          v110.n128_u64[0] = (llvm::DataLayout::getTypeSizeInBits(*(this + 7), v30) + 7) >> 3;
          v110.n128_u32[2] = v56 == 1;
          v57 = v114;
          v58 = v115;
          __src.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata<unsigned int>(this, v55, v59);
          v60 = llvm::TypeSize::operator unsigned long long();
          __src.__r_.__value_.__l.__size_ = MetalModulePass::getMetadata<unsigned int>(this, v60, v61);
          __src.__r_.__value_.__r.__words[2] = MetalModulePass::getMetadata<unsigned int>(this, 0, v62);
          llvm::StringRef::str(&v94, &v102);
          Metadata = MetalModulePass::getMetadata(this, &v102);
          v105 = MetalModulePass::getMetadata(this, __p);
          v106 = MetalModulePass::getMetadata(this, "air.indirect_argument", v63);
          v107 = *(v112[0] + v96);
          llvm::SmallVectorImpl<llvm::Metadata *>::insert<llvm::Metadata * const*,void>(&v114, v57 + 8 * v58, &__src, v108);
          if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v102.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }

          v25 = ++v96;
          v26 = v96;
        }

        while (v118 > v96);
      }

      v64 = llvm::MDTuple::getImpl();
      TypeSizeInBits = llvm::DataLayout::getTypeSizeInBits(*(this + 7), v23);
      v67 = v66 == 1;
      v68 = llvm::DataLayout::getPrefTypeAlignment(*(this + 7), v23);
      __src.__r_.__value_.__r.__words[0] = llvm::StructType::getName(v23);
      __src.__r_.__value_.__l.__size_ = v69;
      llvm::StringRef::str(&__src.__r_.__value_.__l.__data_, v87);
      v70 = MetalModulePass::getMDTuple<unsigned int,char const*,char const*,int,int,char const*,char const*,int,char const*,llvm::MDTuple *,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,std::string,char const*,char const*>(this, 0, "air.indirect_buffer", "air.location_index", 0, 1, "air.read", "air.address_space", 1, "air.struct_type_info", v64, "air.arg_type_size", (TypeSizeInBits + 7) >> 3, v67, "air.arg_type_align_size", v68, "air.arg_type_name", v87, "air.arg_name", "debug.argument_buffer");
      if (v88 < 0)
      {
        operator delete(v87[0]);
      }

      *v120[0] = v70;
      *v122 = llvm::PointerType::get();
      v71 = llvm::FunctionType::get();
      llvm::Module::getFunction();
      v72 = *(EntryFunction + 8);
      LOWORD(v105) = 257;
      v73 = llvm::Function::Create(v71, v72 & 0xF, &__src, *(this + 6));
      llvm::Value::takeName();
      *(EntryFunction + 8) = *(EntryFunction + 8) & 0xFFFFBFC0 | 0x4007;
      __src.__r_.__value_.__r.__words[0] = *(EntryFunction + 14);
      v89[0] = llvm::AttributeList::getAttributes(&__src);
      v74 = llvm::AttributeSet::begin(v89);
      v75 = llvm::AttributeSet::end(v89);
      while (v74 != v75)
      {
        llvm::Function::addFnAttr();
        v74 += 8;
      }

      __src.__r_.__value_.__r.__words[0] = *(EntryFunction + 14);
      v95.n128_u64[0] = llvm::AttributeList::getAttributes(&__src);
      v76 = llvm::AttributeSet::begin(&v95);
      v77 = llvm::AttributeSet::end(&v95);
      while (v76 != v77)
      {
        llvm::compat::addAttribute();
        v76 += 8;
      }

      llvm::Function::addParamAttr();
      llvm::Function::addParamAttr();
      llvm::Function::addParamAttr();
      __p[0].__r_.__value_.__r.__words[0] = &__p[0].__r_.__value_.__r.__words[2];
      __p[0].__r_.__value_.__l.__size_ = 0x800000000;
      llvm::SmallVectorImpl<llvm::Type *>::resizeImpl<false>(__p, *(EntryFunction + 12));
      if (v100)
      {
        if (v101)
        {
          v79 = 8 * v101;
          v80 = v99;
          while (*v80 >= 0xFFFFFFFE)
          {
            v80 += 2;
            v79 -= 8;
            if (!v79)
            {
              goto LABEL_106;
            }
          }
        }

        else
        {
          v80 = v99;
        }

        v81 = &v99[2 * v101];
        while (v80 != v81)
        {
          v82 = *v80;
          v83 = v80[1];
          v102.__r_.__value_.__r.__words[0] = *(EntryFunction + 14);
          llvm::compat::getParamAttrs(&v102, v82);
          llvm::AttrBuilder::AttrBuilder();
          llvm::Function::addParamAttrs();
          if (__src.__r_.__value_.__l.__size_ != &Metadata)
          {
            free(__src.__r_.__value_.__l.__size_);
          }

          if (*(v73 + 18))
          {
            llvm::Function::BuildLazyArguments(v73);
          }

          *(__p[0].__r_.__value_.__r.__words[0] + 8 * v82) = *(v73 + 88) + 40 * v83;
          do
          {
            v80 += 2;
          }

          while (v80 != v81 && *v80 >= 0xFFFFFFFE);
        }
      }

LABEL_106:
      v84 = *(this + 5);
      __src.__r_.__value_.__r.__words[0] = "entry";
      LOWORD(v105) = 259;
      llvm::BasicBlock::Create(v84, &__src, v73, 0, v78);
    }

    v9 = 0;
    v10 = *(*(this + 16) - 8 * *(*(this + 16) + 8) + 16);
    while (1)
    {
      v11 = *(v10 - 8 * v8);
      v114 = v11;
      v12 = *(*&v11[-2 * v11[2]] + 128);
      v13 = (v12 + 24);
      if (*(v12 + 32) >= 0x41u)
      {
        v13 = *v13;
      }

      v14 = *v13;
      v112[0] = v14;
      if (*(EntryFunction + 9))
      {
        llvm::Function::BuildLazyArguments(EntryFunction);
        v14 = v112[0];
        v11 = v114;
      }

      __src.__r_.__value_.__r.__words[0] = *(*(EntryFunction + 11) + 40 * v14);
      __p[0].__r_.__value_.__s.__data_[0] = 0;
      __p[0].__r_.__value_.__s.__data_[4] = 0;
      if (isBufferMetadata(v11))
      {
        v15 = (*(__src.__r_.__value_.__r.__words[0] + 8) & 0xFE) == 0x12 ? *(**(__src.__r_.__value_.__r.__words[0] + 16) + 8) & 0xFFFFFF00 : *(__src.__r_.__value_.__r.__words[0] + 8) & 0xFFFFFF00;
        if (v15 == 256 || v15 == 512)
        {
          LocationIndex = MTLBoundsCheck::getLocationIndex(v114);
          if ((__p[0].__r_.__value_.__s.__data_[4] & 1) == 0)
          {
            __p[0].__r_.__value_.__s.__data_[4] = 1;
          }

          LODWORD(__p[0].__r_.__value_.__l.__data_) = LocationIndex;
          if (LocationIndex < 0x1F)
          {
            if ((*(*(this + 4) + 22) & 2) == 0 && !*(v117 + LocationIndex))
            {
              *(v117 + LocationIndex) = __src.__r_.__value_.__r.__words[0];
            }

            v17 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::FindAndConstruct(v97, __p);
            llvm::SmallVectorImpl<unsigned int>::emplace_back<unsigned long long const&>(v17 + 1, v112);
            goto LABEL_26;
          }

          MTLBoundsCheck::setLocationIndex(v114, LocationIndex - 30);
        }
      }

      v18 = v123;
      LODWORD(v102.__r_.__value_.__l.__data_) = v112[0];
      *(llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::FindAndConstruct(&v99, &v102) + 1) = v18;
      llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&v122, &__src);
      llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(v120, &v114);
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      llvm::MDNode::replaceOperandWith();
LABEL_26:
      ++v9;
      v8 = *(v7 + 8);
      v10 += 8;
      if (v9 >= v8)
      {
        goto LABEL_27;
      }
    }
  }

  return !isLibraryModule;
}

void sub_213C568C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a58);
  if (STACK[0x210] != a23)
  {
    free(STACK[0x210]);
  }

  if (STACK[0x280] != a24)
  {
    free(STACK[0x280]);
  }

  if (STACK[0x388] != a25)
  {
    free(STACK[0x388]);
  }

  if (STACK[0x490] != a28)
  {
    free(STACK[0x490]);
  }

  if (STACK[0x598] != a26)
  {
    free(STACK[0x598]);
  }

  v60 = *(v58 - 200);
  if (v60 != a27)
  {
    free(v60);
  }

  llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::~DenseMap(&a47);
  llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::~DenseMap(&a50, v61, v62, v63);
  _Unwind_Resume(a1);
}

uint64_t llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<decltype(nullptr)>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(a1, 0);
    v3 = *(a1 + 8);
  }

  else
  {
    *(*a1 + 8 * v2) = 0;
    v3 = v2 + 1;
    *(a1 + 8) = v3;
  }

  return *a1 + 8 * v3 - 8;
}

uint64_t llvm::SmallVectorImpl<unsigned int>::emplace_back<unsigned long long const&>(uint64_t *a1, void *a2)
{
  v3 = *(a1 + 2);
  if (v3 >= *(a1 + 3))
  {
    llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a1, *a2);
    v4 = *a1;
    v5 = *(a1 + 2);
  }

  else
  {
    v4 = *a1;
    *(*a1 + 4 * v3) = *a2;
    v5 = *(a1 + 2) + 1;
    *(a1 + 2) = v5;
  }

  return v4 + 4 * v5 - 4;
}

uint64_t MetalModulePass::getMetadata<int>(uint64_t a1, int a2, unsigned int a3)
{
  llvm::IntegerType::get();
  llvm::ConstantInt::get();

  return llvm::ValueAsMetadata::get();
}

uint64_t llvm::Type::isSized(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 0x11)
  {
    goto LABEL_6;
  }

  v2 = 1;
  if (((1 << v1) & 0xAC7F) != 0)
  {
    return v2;
  }

  if (((1 << v1) & 0x30000) == 0)
  {
LABEL_6:
    if ((v1 & 0xFE) != 0x12 && v1 != 21)
    {
      return 0;
    }
  }

  return MEMORY[0x2821F5238]();
}

uint64_t MetalModulePass::getMDTuple<unsigned int,char const*,char const*,int,int,char const*,char const*,int,char const*,llvm::MDTuple *,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,std::string,char const*,char const*>(llvm::MDString **a1, unsigned int a2, llvm::LLVMContext *a3, llvm::LLVMContext *a4, int a5, int a6, llvm::LLVMContext *a7, llvm::LLVMContext *a8, int a9, llvm::LLVMContext *a10, uint64_t a11, llvm::LLVMContext *a12, uint64_t a13, uint64_t a14, llvm::LLVMContext *a15, uint64_t a16, llvm::LLVMContext *a17, uint64_t *a18, llvm::LLVMContext *a19, llvm::LLVMContext *a20)
{
  v42[20] = *MEMORY[0x277D85DE8];
  v42[0] = a13;
  v42[1] = a14;
  v42[2] = MetalModulePass::getMetadata<unsigned int>(a1, a2, a3);
  v42[3] = MetalModulePass::getMetadata(a1, a3, v27);
  v42[4] = MetalModulePass::getMetadata(a1, a4, v28);
  v42[5] = MetalModulePass::getMetadata<int>(a1, a5, v29);
  v42[6] = MetalModulePass::getMetadata<int>(a1, a6, v30);
  v42[7] = MetalModulePass::getMetadata(a1, a7, v31);
  v42[8] = MetalModulePass::getMetadata(a1, a8, v32);
  v42[9] = MetalModulePass::getMetadata<int>(a1, a9, v33);
  v42[10] = MetalModulePass::getMetadata(a1, a10, v34);
  v42[11] = MetalModulePass::getMetadata(a1, a11);
  v42[12] = MetalModulePass::getMetadata(a1, a12, v35);
  v42[13] = MetalModulePass::getMetadata(a1, v42);
  v42[14] = MetalModulePass::getMetadata(a1, a15, v36);
  v42[15] = MetalModulePass::getMetadata<unsigned long long>(a1, a16, v37);
  v42[16] = MetalModulePass::getMetadata(a1, a17, v38);
  v42[17] = MetalModulePass::getMetadata(a1, a18);
  v42[18] = MetalModulePass::getMetadata(a1, a19, v39);
  v42[19] = MetalModulePass::getMetadata(a1, a20, v40);
  return llvm::MDTuple::getImpl();
}

uint64_t llvm::IRBuilderBase::CreateInBoundsGEP(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t **a4, uint64_t a5, uint64_t a6)
{
  result = (*(**(a1 + 72) + 48))(*(a1 + 72), a2, a3, a4, a5, 1);
  if (!result)
  {
    v15 = 257;
    v13 = llvm::GetElementPtrInst::Create(a2, a3, a4, a5, v14, 0);
    llvm::GetElementPtrInst::setIsInBounds(v13);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v13, a6);
  }

  return result;
}

uint64_t MTLArgumentBufferConversion::applyAMDVaryingWA(uint64_t this)
{
  v1 = *(this + 120);
  if (v1)
  {
    if (v1 != 1)
    {
      abort();
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = *(*(this + 128) - 8 * *(*(this + 128) + 8) + 8 * v2);
  v4 = *(v3 + 8);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = *(v3 - 8 * *(v3 + 8) + 8 * i);
      this = llvm::MDString::getString(*(v6 - 8 * *(v6 + 8) + 8 * v1));
      if (v7 == 17)
      {
        if (*this != 0x747265762E726961 || *(this + 8) != 0x757074756F5F7865 || *(this + 16) != 116)
        {
          continue;
        }
      }

      else
      {
        if (v7 != 18)
        {
          continue;
        }

        v8 = *this == 0x676172662E726961 && *(this + 8) == 0x706E695F746E656DLL;
        if (!v8 || *(this + 16) != 29813)
        {
          continue;
        }
      }

      this = llvm::MDString::getString(*(v6 - 8 * *(v6 + 8) + 8 * v2));
      if (v12 == 12)
      {
        if (*this == 0x754F64656B636170 && *(this + 8) == 1953853556)
        {
LABEL_39:
          v15 = *(v6 + 8);
          if (v2 + 1 < v15)
          {
            v16 = v2;
            do
            {
              this = *(v6 - 8 * v15 + 8 * v16 + 8);
              if (!*this)
              {
                this = llvm::MDString::getString(this);
                if (v17 == 12 && *this == 0x61636F6C2E726961 && *(this + 8) == 1852795252)
                {
                  llvm::ConstantInt::get();
                  llvm::ValueAsMetadata::get();
                  this = llvm::MDNode::replaceOperandWith();
                }
              }

              v15 = *(v6 + 8);
              v19 = v16 + 2;
              ++v16;
            }

            while (v19 < v15);
          }
        }
      }

      else if (v12 == 11 && *this == 0x6E4964656B636170 && *(this + 3) == 0x7475706E4964656BLL)
      {
        goto LABEL_39;
      }
    }
  }

  return this;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::FindAndConstruct(uint64_t *a1, _DWORD *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::LookupBucketFor<unsigned int>(a1, a2, &v7);
  inserted = v7;
  if ((v4 & 1) == 0)
  {
    inserted = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::InsertIntoBucketImpl<unsigned int>(a1, a2, a2, v7);
    *inserted = *a2;
    *(inserted + 1) = inserted + 6;
    *(inserted + 2) = 0x200000000;
  }

  return inserted;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::LookupBucketFor<unsigned int>(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 32 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 32 * v6);
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::InsertIntoBucketImpl<unsigned int>(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::LookupBucketFor<unsigned int>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

uint64_t llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = MEMORY[0x21604BA70](32 * v8, 8);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::moveFromOldBuckets(a1, v4, v4 + 32 * v3);

    return llvm::deallocate_buffer(v4, (32 * v3));
  }

  else
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x7FFFFFFFFFFFFFFLL;
      v13 = v12 & 0x7FFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x7FFFFFFFFFFFFFFLL) - (v12 & 3) + 4;
      v15 = vdupq_n_s64(v13);
      v16 = (result + 64);
      do
      {
        v17 = vdupq_n_s64(v11);
        v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_213C7D090)));
        if (vuzp1_s16(v18, *v15.i8).u8[0])
        {
          *(v16 - 16) = -1;
        }

        if (vuzp1_s16(v18, *&v15).i8[2])
        {
          *(v16 - 8) = -1;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_213C7D0B0)))).i32[1])
        {
          *v16 = -1;
          v16[8] = -1;
        }

        v11 += 4;
        v16 += 32;
      }

      while (v14 != v11);
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::moveFromOldBuckets(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0x7FFFFFFFFFFFFFFLL;
    v9 = v8 & 0x7FFFFFFFFFFFFFFLL;
    v10 = (v8 & 0x7FFFFFFFFFFFFFFLL) - (v8 & 3) + 4;
    v11 = vdupq_n_s64(v9);
    v12 = (*a1 + 64);
    do
    {
      v13 = vdupq_n_s64(v7);
      v14 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_213C7D090)));
      if (vuzp1_s16(v14, *v11.i8).u8[0])
      {
        *(v12 - 16) = -1;
      }

      if (vuzp1_s16(v14, *&v11).i8[2])
      {
        *(v12 - 8) = -1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_213C7D0B0)))).i32[1])
      {
        *v12 = -1;
        v12[8] = -1;
      }

      v7 += 4;
      v12 += 32;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if (*a2 <= 0xFFFFFFFD)
    {
      v17 = 0;
      llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::LookupBucketFor<unsigned int>(a1, a2, &v17);
      v15 = v17;
      *v17 = *a2;
      llvm::SmallVector<unsigned int,2u>::SmallVector(v15 + 1, a2 + 8);
      ++*(a1 + 8);
      v16 = *(a2 + 8);
      if ((a2 + 24) != v16)
      {
        free(v16);
      }
    }

    a2 += 32;
  }
}

void *llvm::SmallVector<unsigned int,2u>::SmallVector(void *a1, uint64_t a2)
{
  *a1 = a1 + 2;
  a1[1] = 0x200000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(a1, a2);
  }

  return a1;
}

{
  *a1 = a1 + 2;
  a1[1] = 0x200000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(a1, a2);
  }

  return a1;
}

void sub_213C576F4(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

double llvm::SmallVectorImpl<unsigned int>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

uint64_t llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (v2 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*result + 4 * v2) = a2;
  ++*(result + 8);
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::FindAndConstruct(uint64_t *a1, unsigned int *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(a1, a2, &v7);
  inserted = v7;
  if ((v4 & 1) == 0)
  {
    inserted = llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::InsertIntoBucketImpl<unsigned int>(a1, a2, a2, v7);
    *inserted = *a2;
  }

  return inserted;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 8 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 8 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::InsertIntoBucketImpl<unsigned int>(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

uint64_t llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = MEMORY[0x21604BA70](8 * v8, 4);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::moveFromOldBuckets(a1, v4, v4 + 2 * v3);

    return llvm::deallocate_buffer(v4, (8 * v3));
  }

  else
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
      v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 3) + 4;
      v15 = vdupq_n_s64(v13);
      v16 = (result + 16);
      do
      {
        v17 = vdupq_n_s64(v11);
        v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_213C7D090)));
        if (vuzp1_s16(v18, *v15.i8).u8[0])
        {
          *(v16 - 4) = -1;
        }

        if (vuzp1_s16(v18, *&v15).i8[2])
        {
          *(v16 - 2) = -1;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_213C7D0B0)))).i32[1])
        {
          *v16 = -1;
          v16[2] = -1;
        }

        v11 += 4;
        v16 += 8;
      }

      while (v14 != v11);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::moveFromOldBuckets(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0x1FFFFFFFFFFFFFFFLL;
    v9 = v8 & 0x1FFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0x1FFFFFFFFFFFFFFFLL) - (v8 & 3) + 4;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vdupq_n_s64(v7);
      v14 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_213C7D090)));
      if (vuzp1_s16(v14, *v11.i8).u8[0])
      {
        *(v12 - 4) = -1;
      }

      if (vuzp1_s16(v14, *&v11).i8[2])
      {
        *(v12 - 2) = -1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_213C7D0B0)))).i32[1])
      {
        *v12 = -1;
        v12[2] = -1;
      }

      v7 += 4;
      v12 += 8;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if (*a2 <= 0xFFFFFFFD)
    {
      v16 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(v5, a2, &v16);
      v15 = v16;
      *v16 = *a2;
      v15[1] = a2[1];
      ++*(v5 + 8);
    }

    a2 += 2;
  }

  return result;
}

void sub_213C57D3C(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *llvm::SmallVectorImpl<llvm::Metadata *>::insert<llvm::Metadata * const*,void>(unsigned int *a1, uint64_t a2, char *__src, char *a4)
{
  v5 = __src;
  v7 = *a1;
  v8 = a2 - *a1;
  v9 = a1[2];
  if (*a1 + 8 * v9 == a2)
  {
    llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, __src, a4);
    return (*a1 + v8);
  }

  v10 = a4 - __src;
  v11 = (a4 - __src) >> 3;
  if (v9 + v11 > a1[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v12 = (v7 + v8);
  v13 = 8 * v9;
  v14 = (v7 + 8 * v9);
  v15 = 8 * v9 - v8;
  v16 = v15 >> 3;
  if (v15 >> 3 < v11)
  {
    v17 = v9 + (v10 >> 3);
    a1[2] = v17;
    if (v13 != v8)
    {
      memcpy((v7 + 8 * v17 - 8 * v16), v12, v15);
      v18 = v12;
      do
      {
        v19 = *v5;
        v5 += 8;
        *v18++ = v19;
        --v16;
      }

      while (v16);
    }

    if (v5 != a4)
    {
      memcpy(v14, v5, a4 - v5);
    }

    return v12;
  }

  llvm::SmallVectorImpl<llvm::Value *>::append<std::move_iterator<llvm::Value **>,void>(a1, &v14[-8 * v11], (v7 + 8 * v9));
  if (&v14[-8 * v11] != v12)
  {
    memmove(&v12[8 * v11], v12, &v14[-8 * v11] - v12);
  }

  if (a4 == v5)
  {
    return v12;
  }

  return memmove(v12, v5, a4 - v5);
}

uint64_t llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::~DenseMap(uint64_t a1)
{
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::destroyAll(a1);
  llvm::deallocate_buffer(*a1, (32 * *(a1 + 16)));
  return a1;
}

void llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::destroyAll(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 32 * v1;
    v3 = *a1 + 24;
    do
    {
      if (*(v3 - 24) <= 0xFFFFFFFD)
      {
        v4 = *(v3 - 16);
        if (v3 != v4)
        {
          free(v4);
        }
      }

      v3 += 32;
      v2 -= 32;
    }

    while (v2);
  }
}

void *MTLFunctionTypeToString@<X0>(void *__return_ptr a1@<X8>, MTLFunctionType a2@<X0>)
{
  if (a2 - 1 > 7)
  {
    v2 = "Unknown";
  }

  else
  {
    v2 = off_2781717C0[a2 - 1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a1, v2);
}

void *MTLBuildRequestTypeToString@<X0>(int a1@<W0>, void *a2@<X8>)
{
  if ((a1 + 1) > 0x12)
  {
    v2 = "Unknown";
  }

  else
  {
    v2 = off_278171800[a1 + 1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void MTLCompilerObject::~MTLCompilerObject(MTLCompilerObject *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2) - v2;
  if (v3)
  {
    v4 = 0;
    if ((v3 >> 3) <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v3 >> 3;
    }

    do
    {
      v6 = *(*(this + 1) + 8 * v4);
      if (v6)
      {
        MTLCompilerPluginInterface::~MTLCompilerPluginInterface(v6);
        MEMORY[0x21604C990]();
      }

      ++v4;
    }

    while (v5 != v4);
    v2 = *(this + 1);
  }

  *(this + 2) = v2;
  *(this + 6) = 0;
  *(this + 7) = 0;
  MTLGPUCompilerDestroy();
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  free(*(this + 8));
  *(this + 8) = 0;
  v7 = *(this + 1);
  if (v7)
  {
    *(this + 2) = v7;
    operator delete(v7);
  }

  v8 = *this;
  *this = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }
}

void *MTLCompilerObject::getFunctionFromLib(char **this, void *__handle, const char *__symbol)
{
  v5 = dlsym(__handle, __symbol);
  if (!v5)
  {
    dlerror();
    MTLCompilerErrorObject::setFormattedErrorMessage(this + 8, "Error: %s \n", __symbol);
  }

  return v5;
}

void *MTLCompilerObject::getComposeImageFuncSPI(MTLCompilerObject *this)
{
  result = *(this + 6);
  if (!result)
  {
    v3 = *(this + 5);
    if (v3 || (v3 = openLibComposeFilters(), (*(this + 5) = v3) != 0))
    {
      result = dlsym(v3, "composeImageFilterFunctionsSPI");
      *(this + 6) = result;
    }

    else
    {
      return *(this + 6);
    }
  }

  return result;
}

void *openLibComposeFilters(void)
{
  std::string::basic_string[abi:ne200100]<0>(&v5, "/System/Library/PrivateFrameworks/GPUCompiler.framework/Libraries/");
  v0 = std::string::append(&v5, "libComposeFilters.dylib");
  v1 = *&v0->__r_.__value_.__l.__data_;
  v7 = v0->__r_.__value_.__r.__words[2];
  *__p = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (v7 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  v3 = dlopen(v2, 5);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_213C58274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void *MTLCompilerObject::getComposeImageFuncFromLibrariesSPI(MTLCompilerObject *this)
{
  result = *(this + 7);
  if (!result)
  {
    v3 = *(this + 5);
    if (v3 || (v3 = openLibComposeFilters(), (*(this + 5) = v3) != 0))
    {
      result = dlsym(v3, "composeImageFilterFunctionsFromModulesSPI");
      *(this + 7) = result;
    }

    else
    {
      return *(this + 7);
    }
  }

  return result;
}

MTLCompilerObject *MTLCodeGenServiceDestroy(MTLCompilerObject *result)
{
  if (result)
  {
    MTLCompilerObject::~MTLCompilerObject(result);

    JUMPOUT(0x21604C990);
  }

  return result;
}

llvm::NamedMDNode *MTLCompilerObject::collectFunctionConstants(MTLCompilerObject *this, llvm::Module *a2, FunctionDesc *a3)
{
  __p[0] = "air.function_constants";
  LOWORD(v34) = 259;
  result = llvm::Module::getNamedMetadata(a2, __p);
  if (result)
  {
    v5 = result;
    NumOperands = llvm::NamedMDNode::getNumOperands(result);
    v7 = NumOperands;
    std::vector<FunctionConstantDesc>::reserve(a3 + 9, NumOperands);
    if (NumOperands)
    {
      v8 = 0;
      do
      {
        __p[0] = 0;
        __p[1] = 0;
        v32 = 0;
        Operand = llvm::NamedMDNode::getOperand(v5);
        v10 = Operand;
        v11 = *(Operand + 8);
        if (v11 >= 4)
        {
          v12 = Operand - 8 * v11;
          v13 = *(v12 + 16);
          v14 = *(v12 + 24);
          String = llvm::MDString::getString(*(v12 + 8));
          v17 = llvm::MDString::getString(v13);
          if (v17)
          {
            std::string::basic_string[abi:ne200100](&__dst, v17, v16);
          }

          else
          {
            __dst = 0uLL;
            v30 = 0;
          }

          if (SHIBYTE(v32) < 0)
          {
            operator delete(__p[0]);
          }

          *__p = __dst;
          v32 = v30;
          v18 = strlen(String);
          v33 = dataTypeFromString(String, v18);
          v19 = *(v14 + 128);
          v20 = (v19 + 24);
          if (*(v19 + 32) >= 0x41u)
          {
            v20 = *v20;
          }

          LOWORD(v34) = *v20;
          if (*(v10 + 8) == 5 && (v21 = *(v10 - 8)) != 0)
          {
            v22 = *(v21 + 128);
            v23 = (v22 + 24);
            if (*(v22 + 32) >= 0x41u)
            {
              v23 = *v23;
            }

            v24 = *v23 != 0;
          }

          else
          {
            v24 = 1;
          }

          HIWORD(v34) = v24;
          v25 = *(a3 + 10);
          if (v25 >= *(a3 + 11))
          {
            v28 = std::vector<FunctionConstantDesc>::__emplace_back_slow_path<FunctionConstantDesc>(a3 + 72, __p);
          }

          else
          {
            v26 = *__p;
            *(v25 + 16) = v32;
            *v25 = v26;
            __p[1] = 0;
            v32 = 0;
            __p[0] = 0;
            v27 = v34;
            *(v25 + 24) = v33;
            *(v25 + 32) = v27;
            v28 = v25 + 40;
          }

          *(a3 + 10) = v28;
        }

        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p[0]);
        }

        ++v8;
      }

      while (v7 != v8);
    }

    return std::vector<FunctionConstantDesc>::shrink_to_fit(a3 + 9);
  }

  return result;
}

void sub_213C58544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<FunctionConstantDesc>::reserve(uint64_t *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<FunctionConstantDesc>>(result, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_213C58638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<FunctionConstantDesc>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__int128 **std::vector<FunctionConstantDesc>::shrink_to_fit(__int128 **result)
{
  v1 = result[1];
  v2 = *result;
  v3 = result[2] - *result;
  v4 = v1 - *result;
  if (v3 > v4)
  {
    v5 = result;
    v6 = 0xCCCCCCCCCCCCCCCDLL * (v4 >> 3);
    v15 = result;
    if (v1 != v2)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<FunctionConstantDesc>>(result, 0xCCCCCCCCCCCCCCCDLL * (v4 >> 3));
    }

    v7 = 8 * (v4 >> 3);
    v12 = 0;
    v13 = 40 * v6;
    v14 = 40 * v6;
    if (0xCCCCCCCCCCCCCCCDLL * (v3 >> 3))
    {
      v8 = result[1];
      v9 = v7 + v2 - v8;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>(result, v2, v8, v9);
      v10 = *v5;
      *v5 = v9;
      v11 = v5[2];
      *(v5 + 1) = v14;
      *&v14 = v10;
      *(&v14 + 1) = v11;
      v12 = v10;
      v13 = v10;
    }

    return std::__split_buffer<FunctionConstantDesc>::~__split_buffer(&v12);
  }

  return result;
}

void sub_213C58738(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<FunctionConstantDesc>::~__split_buffer(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x213C58728);
}

uint64_t fixLinkage(llvm::Module *this, const char *a2)
{
  v3 = 1;
  v13 = 1;
  if (*a2)
  {
    v11 = a2;
    v3 = 3;
  }

  v12 = v3;
  NamedMetadata = llvm::Module::getNamedMetadata(this, &v11);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v6 = *(*(Operand - 8 * *(Operand + 8)) + 128);
  v7 = this + 24;
  v8 = *(this + 4);
  if (v8 != this + 24)
  {
    do
    {
      if (v8)
      {
        v9 = (v8 - 56);
      }

      else
      {
        v9 = 0;
      }

      if ((llvm::GlobalValue::isDeclaration(v9) & 1) == 0)
      {
        *(v9 + 8) = *(v9 + 8) & 0xFFFFBFC0 | 0x4007;
      }

      v8 = *(v8 + 1);
    }

    while (v8 != v7);
  }

  llvm::GlobalValue::setLinkage(v6, 0);
  return v6;
}

double llvm::Module::setTargetTriple(uint64_t a1, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  HIBYTE(v7) = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  *(&__dst + __len) = 0;
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  result = *&__dst;
  *(a1 + 216) = __dst;
  *(a1 + 232) = v7;
  return result;
}

uint64_t MTLCompilerObject::applyConstantValues(uint64_t a1, llvm::LLVMContext *this, uint64_t a3, uint64_t a4, const char *a5, unint64_t a6, uint64_t a7, const char **a8)
{
  v18[0] = this;
  v18[2] = llvm::LLVMContext::getDiagnosticContext(this);
  v18[1] = llvm::LLVMContext::getDiagnosticHandlerCallBack(this);
  llvm::LLVMContext::setDiagnosticHandlerCallBack();
  v17 = 0;
  v13 = parseFunctionConstants(this, a5, a6, &v17);
  v14 = MTLGPUCompilerSpecializeFunction();
  free(v13);
  if (!v14)
  {
    if (a8)
    {
      v15 = *a8;
    }

    else
    {
      v15 = "Failed to specialize function.";
    }

    MTLCompilerErrorObject::setErrorMessage((a1 + 64), v15);
  }

  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(v18);
  return 0;
}

void sub_213C58AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(va);
  _Unwind_Resume(a1);
}

void softDiagnosticHandler(uint64_t a1, MTLCompilerErrorObject *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  printDiagnosticError(a1, __p);
  if (!*(a1 + 12))
  {
    if (v6 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    MTLCompilerErrorObject::setErrorMessage(a2, v4);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_213C58B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *getSerializedModule@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t __val@<X1>)
{
  if (__val <= 3901)
  {
    if (!__val || __val == 3802)
    {
      goto LABEL_24;
    }
  }

  else if (__val == 32023 || __val == 31001 || __val == 3902)
  {
    goto LABEL_24;
  }

  std::to_string(&v12, __val);
  v4 = std::string::insert(&v12, 0, "Unexpected llvmVersion (");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v13, ") passed to getMTLBitcodeVersionFromLLVMVersion, using MTLBitcodeVersionDefault instead");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v15 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, &unk_213C7E907);
  v8 = SHIBYTE(v15);
  v9 = __p[0];
  std::string::basic_string[abi:ne200100]<0>(&v12, "MTLBuildRequestTypeUnknown");
  if (v8 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = v9;
  }

  logCompileError(&v13, v10, &v12);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_24:
  result = MTLWriteAIRBitcodeToMemoryBuffer();
  *a1 = result;
  return result;
}

void sub_213C58CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *MTLCompilerObject::serializeLibraryReply(uint64_t a1, uint64_t *a2, char *__s1, char a4, llvm::Module **a5, unint64_t a6, unsigned int a7, uint64_t a8, char a9, unsigned int __val, uint64_t a11)
{
  v164[55] = *MEMORY[0x277D85DE8];
  v158 = 0;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  __n_4 = 0u;
  memset(v151, 0, 32);
  v151[8] = 1.0;
  v150 = 104;
  if (__s1)
  {
    DWORD2(v152) = 104;
    HIDWORD(v152) = strlen(__s1) + 1;
    v150 = HIDWORD(v152) + 104;
  }

  if (a4)
  {
    v118 = a5;
    if (a6)
    {
      HIDWORD(v111) = readVersionMetadata(*a5, "air.version", 0, 1, 6);
      VersionMetadata = readVersionMetadata(*a5, "air.language_version", 1u, 1, 0);
      LODWORD(v111) = VersionMetadata;
      v18 = 0;
      LOBYTE(v152) = v152 | 1;
      v147 = 0;
      v148 = 0;
      v149 = 0;
      v19 = a5;
      v20 = a6;
      do
      {
        v21 = *v19;
        if ((a9 & 1) == 0)
        {
          parseFunctions(*v19, &v147);
        }

        VersionMetadata = MTLCompilerObject::collectFunctionConstants(VersionMetadata, v21, &v147[v18]);
        ++v19;
        v18 += 136;
        --v20;
      }

      while (v20);
      v22 = v147;
      v23 = v148;
      a5 = v118;
    }

    else
    {
      v111 = 0;
      v22 = 0;
      v23 = 0;
      LOBYTE(v152) = 1;
      v147 = 0;
      v148 = 0;
      v149 = 0;
    }

    v143 = 0;
    v144 = &v143;
    v145 = 0x2020000000;
    v139[0] = MEMORY[0x277D85DD0];
    v139[1] = 3221225472;
    v140 = ___ZN17MTLCompilerObject21serializeLibraryReplyEPmPcbPPN4llvm6ModuleEmmP21SerializedLibraryInfobjP21FrameworkPassesOutput_block_invoke;
    v141 = &unk_278171778;
    v142 = &v143;
    v135[0] = MEMORY[0x277D85DD0];
    v135[1] = 3221225472;
    v136 = ___ZN17MTLCompilerObject21serializeLibraryReplyEPmPcbPPN4llvm6ModuleEmmP21SerializedLibraryInfobjP21FrameworkPassesOutput_block_invoke_2;
    v137 = &unk_2781717A0;
    v138 = &v143;
    v25 = 12;
    v146 = 12;
    v26 = 0xF0F0F0F0F0F0F0F1 * ((v23 - v22) >> 3);
    v117 = a6;
    v110 = a2;
    if (v23 != v22)
    {
      v27 = 0;
      if (v26 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = 0xF0F0F0F0F0F0F0F1 * ((v23 - v22) >> 3);
      }

      do
      {
        v29 = v147;
        v30 = &v147[v27];
        (v140)(v139, *&v147[v27 + 48]);
        (v140)(v139, *(v30 + 13));
        (v140)(v139, *&v29[v27 + 56]);
        (v140)(v139, *&v29[v27 + 60]);
        (v140)(v139, *&v29[v27 + 64]);
        (v140)(v139, v29[v27 + 68]);
        (v140)(v139, v29[v27 + 69]);
        v136(v135, &v29[v27 + 32]);
        v27 += 136;
        --v28;
      }

      while (v28);
      v25 = v144[3];
      a6 = v117;
      a5 = v118;
    }

    *&__n_4 = __PAIR64__(v25, v150);
    v150 += v25;
    v134 = 0;
    __src = __s1;
    ptr = malloc_type_malloc(0xC3C3C3C3C3C3C400 * ((v23 - v22) >> 3), 0x100004077774924uLL);
    v133 = 0xC3C3C3C3C3C3C400 * ((v23 - v22) >> 3);
    v129 = 0;
    v130 = 0;
    v131 = 0;
    v115 = v22;
    v116 = v23;
    if (v23 != v22)
    {
      v31 = 0;
      v32 = 0;
      if (v26 <= 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = 0xF0F0F0F0F0F0F0F1 * ((v23 - v22) >> 3);
      }

      v114 = v33;
      while (1)
      {
        v119 = v32;
        v34 = &v147[136 * v32];
        *(v34 + 14) = v31;
        *(v34 + 15) = 0;
        memset(v128, 0, sizeof(v128));
        if ((entryPointsType[*(v34 + 12)] & 0xFFFFFFFFFFFFFFFDLL) == 1)
        {
          v35 = *(v34 + 1);
          if (v35)
          {
            v36 = *(v35 + 8);
          }

          else
          {
            v36 = 0;
          }

          if (*(*v34 + 18))
          {
            llvm::Function::BuildLazyArguments(*v34);
          }

          if (v36)
          {
            DataLayout = llvm::Module::getDataLayout(*(*v34 + 40));
            llvm::DataLayout::DataLayout(v164, DataLayout);
            MTLArgumentData::MTLArgumentData(&v160);
          }
        }

        v39 = v129;
        v38 = v130;
        v40 = (v130 - v129) >> 5;
        v41 = 0x8E38E38E38E38E39 * v40;
        v42 = 0;
        if (v130 != v129)
        {
          if (v41 <= 1)
          {
            v43 = 1;
          }

          else
          {
            v43 = 0x8E38E38E38E38E39 * v40;
          }

          v44 = 96;
          do
          {
            v45 = *(v129 + v44);
            if (v45)
            {
              v46 = *(v45 + 8);
              v47 = v46 - isPatchControlPointInputUnused(v45) - 3;
            }

            else
            {
              v47 = 1;
            }

            v42 += v47;
            v44 += 288;
            --v43;
          }

          while (v43);
        }

        if (v31 >= 0xFFFFFFFFFFFFFFFCLL)
        {
          goto LABEL_169;
        }

        if (v133 >= v31 + 4)
        {
          v49 = ptr;
        }

        else
        {
          if (v133)
          {
            v48 = v133;
          }

          else
          {
            v48 = 128;
          }

          while (v48 < v31 + 4)
          {
            if (v48 >> 1 >= ~v48)
            {
              v48 = v31 + 4;
            }

            else
            {
              v48 += v48 >> 1;
            }
          }

          v49 = malloc_type_realloc(ptr, v48, 0x100004077774924uLL);
          ptr = v49;
          if (!v49)
          {
            goto LABEL_169;
          }

          v133 = v48;
        }

        *&v49[v31] = v42;
        v134 = v31 + 4;
        if (v38 != v39)
        {
          v50 = 0;
          if (v41 <= 1)
          {
            v51 = 1;
          }

          else
          {
            v51 = v41;
          }

          do
          {
            v52 = *(v129 + 288 * v50 + 96);
            if (v52)
            {
              v53 = *(v52 + 8);
              if ((v53 - isPatchControlPointInputUnused(v52)) >= 4)
              {
                MTLArgumentData::MTLArgumentData(v164);
              }
            }

            else
            {
              serializeOneVertexAttribute((v129 + 288 * v50), &ptr);
            }

            ++v50;
          }

          while (v50 != v51);
        }

        std::vector<MTLArgumentData>::resize(&v129, 0);
        v54 = v134;
        if (v134 >= 0xFFFFFFFFFFFFFFFCLL)
        {
LABEL_169:
          abort();
        }

        v56 = *(v34 + 9);
        v55 = *(v34 + 10);
        v31 = v134 + 4;
        v57 = v133;
        if (v133 >= v134 + 4)
        {
          v58 = ptr;
        }

        else
        {
          if (!v133)
          {
            v57 = 128;
          }

          while (v57 < v31)
          {
            if (v57 >> 1 >= ~v57)
            {
              v57 = v134 + 4;
            }

            else
            {
              v57 += v57 >> 1;
            }
          }

          v58 = malloc_type_realloc(ptr, v57, 0x100004077774924uLL);
          ptr = v58;
          if (!v58)
          {
            goto LABEL_169;
          }

          v133 = v57;
        }

        *&v58[v54] = -858993459 * ((v55 - v56) >> 3);
        v134 = v54 + 4;
        v59 = *(v34 + 9);
        v60 = *(v34 + 10);
        while (v59 != v60)
        {
          v61 = *(v59 + 23);
          if ((v61 & 0x8000000000000000) != 0)
          {
            v62 = *v59;
            v61 = *(v59 + 8);
          }

          else
          {
            v62 = v59;
          }

          v63 = v61 + 1;
          if (__CFADD__(v31, v61 + 1))
          {
            goto LABEL_169;
          }

          v64 = v63 + v31;
          if (v57 < v63 + v31)
          {
            do
            {
              if (v57 >> 1 >= ~v57)
              {
                v57 = v63 + v31;
              }

              else
              {
                v57 += v57 >> 1;
              }
            }

            while (v57 < v64);
            v58 = malloc_type_realloc(v58, v57, 0x100004077774924uLL);
            ptr = v58;
            if (!v58)
            {
              goto LABEL_169;
            }

            v133 = v57;
          }

          v65 = &v58[v31];
          memcpy(v65, v62, v61);
          v65[v61] = 0;
          v134 = v64;
          if (v64 == -1)
          {
            goto LABEL_169;
          }

          v66 = *(v59 + 24);
          if (v57 <= v64)
          {
            if (!v57)
            {
              v133 = 128;
              v57 = 128;
            }

            while (v57 <= v64)
            {
              if (v57 >> 1 >= ~v57)
              {
                v57 = v64 + 1;
              }

              else
              {
                v57 += v57 >> 1;
              }
            }

            v58 = malloc_type_realloc(v58, v57, 0x100004077774924uLL);
            ptr = v58;
            if (!v58)
            {
              goto LABEL_169;
            }

            v133 = v57;
          }

          v58[v64] = v66;
          v134 = v64 + 1;
          if (v64 >= 0xFFFFFFFFFFFFFFFBLL)
          {
            goto LABEL_169;
          }

          v67 = *(v59 + 32);
          v68 = v64 + 5;
          if (v57 < v64 + 5)
          {
            do
            {
              if (v57 >> 1 >= ~v57)
              {
                v57 = v64 + 5;
              }

              else
              {
                v57 += v57 >> 1;
              }
            }

            while (v57 < v68);
            v58 = malloc_type_realloc(v58, v57, 0x100004077774924uLL);
            ptr = v58;
            if (!v58)
            {
              goto LABEL_169;
            }

            v133 = v57;
          }

          v69 = &v58[v64 + 1];
          *v69 = v67;
          *(v69 + 1) = 0;
          v134 = v64 + 5;
          if (v64 == -6)
          {
            goto LABEL_169;
          }

          v70 = *(v59 + 34);
          v31 = v64 + 6;
          if (v57 <= v68)
          {
            do
            {
              if (v57 >> 1 >= ~v57)
              {
                v57 = v64 + 6;
              }

              else
              {
                v57 += v57 >> 1;
              }
            }

            while (v57 <= v68);
            v58 = malloc_type_realloc(v58, v57, 0x100004077774924uLL);
            ptr = v58;
            if (!v58)
            {
              goto LABEL_169;
            }

            v133 = v57;
          }

          v58[v68] = v70;
          v134 = v64 + 6;
          v59 += 40;
        }

        if (entryPointsType[*(v34 + 12)] != 1)
        {
          break;
        }

        v71 = *(v34 + 2);
        a6 = v117;
        a5 = v118;
        if (v71)
        {
          v71 = *(v71 + 8);
          if (v71)
          {
            v72 = 0;
            v73 = 8 * v71;
            while (1)
            {
              v74 = *(*(v34 + 2) - 8 * *(*(v34 + 2) + 8) + v72);
              String = llvm::MDString::getString(*(v74 - 8 * *(v74 + 8)));
              if (v76 == 29)
              {
                v77 = *String == 0x646E65722E726961 && String[1] == 0x65677261745F7265;
                v78 = v77 && String[2] == 0x5F79617272615F74;
                if (v78 && *(String + 21) == 0x7865646E695F7961)
                {
                  break;
                }
              }

              v72 += 8;
              if (v73 == v72)
              {
                LOBYTE(v71) = 0;
                goto LABEL_131;
              }
            }

            LOBYTE(v71) = dataTypeFromMetadata(1u, v74);
            goto LABEL_130;
          }
        }

LABEL_132:
        v34[68] = v71;
        v164[0] = v128;
        std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](v164);
        v32 = v119 + 1;
        if (v119 + 1 == v114)
        {
          goto LABEL_136;
        }
      }

      LOBYTE(v71) = 0;
LABEL_130:
      a6 = v117;
LABEL_131:
      a5 = v118;
      goto LABEL_132;
    }

    v31 = 0;
LABEL_136:
    v164[0] = &v129;
    std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](v164);
    *(&__n_4 + 1) = __PAIR64__(v31, v150);
    v150 += v31;
    *&v154 = v150;
    DWORD2(v154) = v150;
    std::vector<std::unique_ptr<llvm::MemoryBuffer>>::vector[abi:ne200100](&v159, a6);
    if (a6)
    {
      v80 = 0;
      v81 = 0;
      v82 = 64;
      do
      {
        if (v116 != v115)
        {
          *&v147[v82] = v81;
        }

        getSerializedModule(v164, __val);
        v83 = v159;
        v84 = *(v159 + 8 * v80);
        *(v159 + 8 * v80) = v164[0];
        if (v84)
        {
          (*(*v84 + 8))(v84);
          v83 = v159;
        }

        a5[v80] = 0;
        v81 += *(*(v83 + 8 * v80) + 16) - *(*(v83 + 8 * v80) + 8) + 4;
        ++v80;
        v82 += 136;
      }

      while (a6 != v80);
    }

    else
    {
      v81 = 0;
    }

    v150 += v81;
    HIDWORD(v154) = v81;
    if (a8)
    {
      SerializedLibraryInfo::serializeDynamicLibraryDataHeader(a8, &v152, &v150);
    }

    if (a11)
    {
      v85 = *(a11 + 8);
      if (v85)
      {
        v86 = *a11;
      }

      else
      {
        v86 = 0;
      }

      CompilerOutputReflectionBlock::CompilerOutputReflectionBlock(v164, v86, v85, a11 + 160, *(a11 + 128), *(a11 + 136));
      addBlocksForOutput(v151, a11, 0, v164);
      HIDWORD(v158) = sizeOfSerializedCompilerBlocks(v151);
      LODWORD(v158) = v150;
      v150 += HIDWORD(v158);
      CompilerOutputReflectionBlock::~CompilerOutputReflectionBlock(v164);
    }

    *&v155 = __PAIR64__(a7, v150);
    v150 += a7;
    v87 = malloc_type_malloc(v150, 0x100004077774924uLL);
    v24 = v87;
    v88 = v152;
    v89 = v154;
    v87[1] = __n_4;
    v87[2] = v89;
    *v87 = v88;
    v90 = v155;
    v91 = v156;
    v92 = v157;
    *(v87 + 12) = v158;
    v87[4] = v91;
    v87[5] = v92;
    v87[3] = v90;
    if (__src)
    {
      memcpy(v87 + DWORD2(v152), __src, HIDWORD(v152));
      free(__src);
    }

    v160 = 0;
    v161 = &v160;
    v162 = 0x2020000000;
    v163 = (v24 + __n_4);
    *v163 = HIDWORD(v111);
    v93 = v161;
    ++v163;
    *v161[3] = v111;
    v93[3] += 4;
    v123 = &v160;
    v124[0] = MEMORY[0x277D85DD0];
    v124[1] = 3221225472;
    v125 = ___ZN17MTLCompilerObject21serializeLibraryReplyEPmPcbPPN4llvm6ModuleEmmP21SerializedLibraryInfobjP21FrameworkPassesOutput_block_invoke_3;
    v126 = &unk_278171778;
    v127 = &v160;
    v120[0] = MEMORY[0x277D85DD0];
    v120[1] = 3221225472;
    v121 = ___ZN17MTLCompilerObject21serializeLibraryReplyEPmPcbPPN4llvm6ModuleEmmP21SerializedLibraryInfobjP21FrameworkPassesOutput_block_invoke_4;
    v122 = &unk_2781717A0;
    v77 = v148 == v147;
    v94 = 0xF0F0F0F0F0F0F0F1 * ((v148 - v147) >> 3);
    v95 = v161;
    *v161[3] = v94;
    v95[3] += 4;
    if (!v77)
    {
      v96 = 0;
      if (v94 <= 1)
      {
        v97 = 1;
      }

      else
      {
        v97 = v94;
      }

      do
      {
        v98 = v147;
        v99 = &v147[v96];
        v125(v124, *&v147[v96 + 48]);
        v125(v124, *(v99 + 13));
        v125(v124, *&v98[v96 + 56]);
        v125(v124, *&v98[v96 + 60]);
        v125(v124, *&v98[v96 + 64]);
        v125(v124, v98[v96 + 68]);
        v125(v124, v98[v96 + 69]);
        v121(v120, &v98[v96 + 32]);
        v96 += 136;
        --v97;
      }

      while (v97);
    }

    v100 = ptr;
    memcpy((v24 + DWORD2(__n_4)), ptr, v31);
    if (a8)
    {
      SerializedLibraryInfo::serializeDynamicLibraryData(a8, &v152, v24);
    }

    if (a11 && HIDWORD(v158))
    {
      memset(v164, 0, 64);
      serializeCompilerBlocks((v24 + v158), HIDWORD(v158), v151, v164);
    }

    if (v117)
    {
      v101 = 0;
      v102 = (v24 + DWORD2(v154));
      do
      {
        v103 = *(v159 + 8 * v101);
        v104 = *(v103 + 8);
        v105 = *(v103 + 16);
        v106 = v105 - v104;
        *v102 = v105 - v104;
        v107 = v102 + 4;
        memcpy(v107, v104, (v105 - v104));
        v102 = &v107[v106];
        ++v101;
      }

      while (v117 != v101);
    }

    *v110 = v150;
    _Block_object_dispose(&v160, 8);
    v164[0] = &v159;
    std::vector<std::unique_ptr<llvm::MemoryBuffer>>::__destroy_vector::operator()[abi:ne200100](v164);
    free(v100);
    _Block_object_dispose(&v143, 8);
    v164[0] = &v147;
    std::vector<FunctionDesc>::__destroy_vector::operator()[abi:ne200100](v164);
  }

  else
  {
    MTLCompilerErrorObject::setErrorMessage((a1 + 64), __s1);
    free(__s1);
    v24 = 0;
  }

  std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(v151);
  return v24;
}

void sub_213C59C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&STACK[0x240], 8);
  STACK[0x360] = &STACK[0x228];
  std::vector<std::unique_ptr<llvm::MemoryBuffer>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x360]);
  free(a38);
  _Block_object_dispose(&a51, 8);
  STACK[0x240] = &a55;
  std::vector<FunctionDesc>::__destroy_vector::operator()[abi:ne200100](&STACK[0x240]);
  std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(&a59);
  _Unwind_Resume(a1);
}

uint64_t ___ZN17MTLCompilerObject21serializeLibraryReplyEPmPcbPPN4llvm6ModuleEmmP21SerializedLibraryInfobjP21FrameworkPassesOutput_block_invoke_2(uint64_t result, void *a2)
{
  v2 = a2[1];
  if (!v2 || *(*a2 + v2 - 1))
  {
    LODWORD(v2) = v2 + 1;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

void std::vector<MTLArgumentData>::resize(void *a1, unint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 5);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<MTLArgumentData>::__append(a1, v4);
  }

  else if (!v3)
  {
    std::vector<MTLArgumentData>::__base_destruct_at_end[abi:ne200100](a1, *a1 + 288 * a2);
  }
}

uint64_t SerializedLibraryInfo::serializeDynamicLibraryDataHeader(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  v6 = *a3;
  a2[14] = *a3;
  v7 = *(a1 + 23);
  if (v7 < 0)
  {
    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_6;
    }

LABEL_5:
    LODWORD(v7) = v7 + 1;
    goto LABEL_6;
  }

  if (*(a1 + 23))
  {
    goto LABEL_5;
  }

  LODWORD(v7) = 0;
LABEL_6:
  v8 = v6 + v7;
  *a3 = v8;
  a2[15] = v7;
  a2[16] = v8;
  v9 = SerializedLibraryInfo::serializeStringArraySize(a1, (a1 + 24));
  v10 = *a3 + v9;
  *a3 = v10;
  a2[17] = v9;
  a2[18] = v10;
  v11 = SerializedLibraryInfo::serializeStringArraySize(a1, (a1 + 48));
  v12 = *a3 + v11;
  *a3 = v12;
  a2[19] = v11;
  a2[20] = v12;
  v13 = SerializedLibraryInfo::serializeStringArraySize(a1, (a1 + 72));
  v14 = *a3 + v13;
  *a3 = v14;
  a2[21] = v13;
  a2[22] = v14;
  result = SerializedLibraryInfo::serializeStringArraySize(a1, (a1 + 96));
  a2[23] = result;
  *a3 += result;
  return result;
}

uint64_t ___ZN17MTLCompilerObject21serializeLibraryReplyEPmPcbPPN4llvm6ModuleEmmP21SerializedLibraryInfobjP21FrameworkPassesOutput_block_invoke_3(uint64_t result, int a2)
{
  v2 = *(*(result + 32) + 8);
  **(v2 + 24) = a2;
  *(v2 + 24) += 4;
  return result;
}

void *___ZN17MTLCompilerObject21serializeLibraryReplyEPmPcbPPN4llvm6ModuleEmmP21SerializedLibraryInfobjP21FrameworkPassesOutput_block_invoke_4(uint64_t a1, const void **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(*(a1 + 32) + 8);
  result = memcpy(*(v4 + 24), *a2, v3);
  v6 = &v3[*(v4 + 24)];
  *(v4 + 24) = v6;
  if (!v3 || v3[v2 - 1])
  {
    *v6 = 0;
    ++*(v4 + 24);
  }

  return result;
}

void SerializedLibraryInfo::serializeDynamicLibraryData(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (a2[15])
  {
    v6 = a2[14];
    v7 = a1;
    if (*(a1 + 23) < 0)
    {
      v7 = *a1;
    }

    strcpy((a3 + v6), v7);
  }

  SerializedLibraryInfo::serializeStringArray(a1, (a1 + 24), (a3 + a2[16]));
  SerializedLibraryInfo::serializeStringArray(a1, (a1 + 48), (a3 + a2[18]));
  SerializedLibraryInfo::serializeStringArray(a1, (a1 + 72), (a3 + a2[20]));
  v8 = (a3 + a2[22]);

  SerializedLibraryInfo::serializeStringArray(a1, (a1 + 96), v8);
}

uint64_t countArgumentBufferResources(uint64_t result, void *a2)
{
  v2 = a2[1];
  if (*a2 != v2)
  {
    v3 = result;
    v4 = (*a2 + 104);
    do
    {
      *(v14 + 5) = 0;
      v14[0] = 0;
      if (*(v4 - 1))
      {
        result = countArgumentBufferResources(v14, v4);
        v6 = v14[0];
        v5 = HIDWORD(v14[0]);
        v7 = v14[1];
        LOBYTE(v8) = BYTE4(v14[1]);
      }

      else
      {
        v8 = *(v4 - 6);
        if (!v8)
        {
          goto LABEL_11;
        }

        v9 = *v8;
        if ((*v8 & 0x1000) != 0)
        {
          *(v3 + 12) = 1;
          v9 = *v8;
        }

        v10 = ((v9 >> 4) & 0x1F) - 1;
        if (v10 > 4)
        {
          LOBYTE(v8) = 0;
LABEL_11:
          v7 = 0;
          v5 = 0;
          v6 = 0;
          goto LABEL_12;
        }

        LOBYTE(v8) = 0;
        v7 = dword_213C7D544[v10];
        v5 = dword_213C7D558[v10];
        v6 = dword_213C7D56C[v10];
      }

LABEL_12:
      v11 = *(v4 - 16);
      if (v11 <= 1)
      {
        v11 = 1;
      }

      v12 = *(v3 + 4);
      *v3 += v6 * v11;
      *(v3 + 4) = v12 + v5 * v11;
      *(v3 + 8) += v7 * v11;
      *(v3 + 12) |= v8;
      v13 = v4 + 9;
      v4 += 22;
    }

    while (v13 != v2);
  }

  return result;
}

uint64_t MTLSimCompiler::validSimulatorMetadata(char **this, llvm::Module *a2)
{
  v4 = 0;
  v19 = *MEMORY[0x277D85DE8];
  while (1)
  {
    v5 = entryPointsMetadata[v4];
    v18 = 257;
    if (*v5)
    {
      v17[0] = v5;
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    LOBYTE(v18) = v6;
    NamedMetadata = llvm::Module::getNamedMetadata(a2, v17);
    v8 = NamedMetadata;
    if (NamedMetadata)
    {
      if (llvm::NamedMDNode::getNumOperands(NamedMetadata) > 0)
      {
        break;
      }
    }

    if (++v4 == 7)
    {
      goto LABEL_8;
    }
  }

  Operand = llvm::NamedMDNode::getOperand(v8);
  if (!Operand)
  {
LABEL_8:
    MTLCompilerErrorObject::setErrorMessage((this + 1), "invalid function metadata");
    return 0;
  }

  v15 = entryPointsType[v4];
  v11 = (Operand - 8 * *(Operand + 8));
  v12 = *(*v11 + 128);
  v13 = *(v11[2] + 8);
  if (*(v12 + 9))
  {
    llvm::Function::BuildLazyArguments(v12);
  }

  if ((v15 - 1) > 2)
  {
    abort();
  }

  if (v13 >= 1)
  {
    DataLayout = llvm::Module::getDataLayout(a2);
    llvm::DataLayout::DataLayout(v17, DataLayout);
    MTLArgumentData::MTLArgumentData(&v16);
  }

  return 1;
}

void sub_213C5A704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo> *,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo> *>>::~DenseMap(&a23, a2, a3, a4);
  MTLArgumentData::~MTLArgumentData(&a26);
  MEMORY[0x21604B470](&a62);
  _Unwind_Resume(a1);
}

uint64_t MTLSimCompiler::buildRequestWithOptions(char **this, const void *a2, unint64_t a3, unsigned int a4, llvm::Module *a5, const void **a6, unint64_t *a7, const void **a8, unint64_t *a9, const void **a10, unint64_t *a11, const char **a12)
{
  *this = 0;
  v17 = (this + 1);
  v33[0] = *a5;
  v33[2] = llvm::LLVMContext::getDiagnosticContext(v33[0]);
  v33[1] = llvm::LLVMContext::getDiagnosticHandlerCallBack(v33[0]);
  llvm::LLVMContext::setDiagnosticHandlerCallBack();
  if (MTLDowngradeAIRModule() && MTLSimCompiler::validSimulatorMetadata(this, a5))
  {
    v18 = 0;
    while (1)
    {
      v19 = entryPointsMetadata[v18];
      v32 = 257;
      if (*v19)
      {
        __p[0] = v19;
        v20 = 3;
      }

      else
      {
        v20 = 1;
      }

      LOBYTE(v32) = v20;
      NamedMetadata = llvm::Module::getNamedMetadata(a5, __p);
      if (NamedMetadata)
      {
        break;
      }

      if (++v18 == 7)
      {
        goto LABEL_13;
      }
    }

    Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
    Name = llvm::Value::getName(*(*(Operand - 8 * *(Operand + 8)) + 128));
    if (Name)
    {
      std::string::basic_string[abi:ne200100](__p, Name, v26);
      goto LABEL_14;
    }

LABEL_13:
    __p[0] = 0;
    __p[1] = 0;
    v31 = 0;
LABEL_14:
    *this = serializeModuleToBufferAsMetallib(a5, __p);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }

    *a6 = LLVMGetBufferStart();
    v28 = LLVMGetBufferSize();
    v23 = 0;
    v24 = 0;
    *a7 = v28;
    *a8 = 0;
    *a9 = 0;
    *a10 = 0;
    *a11 = 0;
  }

  else
  {
    v22 = MEMORY[0x21604BFC0](a5);
    MEMORY[0x21604C990](v22, 0x10B2C407FF26C1CLL);
    v23 = *v17;
    v24 = 1;
  }

  *a12 = v23;
  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(v33);
  return v24;
}

uint64_t serializeModuleToBufferAsMetallib(uint64_t a1, uint64_t *a2)
{
  LLVMGetTarget();
  MTLMetalLibCreateExecutableWithTriple();
  LLVMExtraMakeSharedModule();
  MTLMetalFunctionCreate();
  MTLMetalLibInsertFunction();
  v2 = MTLWriteMetalLibToMemoryBuffer();
  LLVMExtraDisposeSharedModule();
  return v2;
}

void MTLSimCompiler::deleteCompilerReply(void **this)
{
  if (*this)
  {
    LLVMDisposeMemoryBuffer();
    *this = 0;
  }

  free(this[1]);
  this[1] = 0;
}

uint64_t MTLSimCompilerDelete(uint64_t result)
{
  if (result)
  {
    v1 = result;
    free(*(result + 8));
    *(v1 + 8) = 0;

    JUMPOUT(0x21604C990);
  }

  return result;
}

uint64_t MTLCompilerObject::createLoaderScript(uint64_t a1, char *__s, uint64_t a3)
{
  strlen(__s);
  v5 = LLVMCreateMemoryBufferWithMemoryRange();
  if (MTLCreateScript())
  {
    MTLGPUCompilerSetLoaderScript();
  }

  else
  {
    MTLCompilerErrorObject::setFormattedErrorMessage((a1 + 64), "error while parsing script: %s", 0);
    free(0);
    (*(a3 + 16))(a3, 2 * (*(a1 + 64) != 0), 0, 0);
    return 0;
  }

  return v5;
}

void MTLCompilerObject::downgradeAndLoadModuleRequest(std::string *a1, uint64_t a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  v36[0] = 0;
  v37 = 0u;
  v33 = 0;
  *v35 = 0u;
  *v32 = 0u;
  v34 = -1;
  v36[1] = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v4 = *(a2 + 32);
  v5 = v4[55];
  if (v5 == 10 || v5 == 1)
  {
    v6 = *v4 >> 31;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x21604B680](v31);
  v30[0] = v31;
  v30[2] = llvm::LLVMContext::getDiagnosticContext(v31);
  v30[1] = llvm::LLVMContext::getDiagnosticHandlerCallBack(v31);
  v7 = llvm::LLVMContext::setDiagnosticHandlerCallBack();
  LOWORD(v50) = 0;
  v51 = 0u;
  v52 = 0u;
  memset(v53, 0, sizeof(v53));
  v54 = 0u;
  memset(v55, 0, sizeof(v55));
  MTLCompilerObject::getReadParametersFromRequest(v7, &v50, *a2, *(a2 + 8), (*(a2 + 32) + 88), *(a2 + 32));
  ModuleFromBinaryRequest = MTLCompilerObject::readModuleFromBinaryRequest(&a1->__r_.__value_.__l.__data_, &v50, v31, (a2 + 40), &v41, &v41 + 1, v5 == 1);
  *(a2 + 48) = ModuleFromBinaryRequest;
  v9 = (a2 + 48);
  if (!ModuleFromBinaryRequest)
  {
    (*(*(a2 + 24) + 16))(*(a2 + 24), 2 * (a1[2].__r_.__value_.__r.__words[2] != 0), 0, 0);
LABEL_31:
    free(v41);
    goto LABEL_32;
  }

  if (!v6)
  {
    v12 = *(a2 + 32);
    if ((*(v12 + 3) & 4) != 0)
    {
      *(a2 + 48) = MTLCompilerObject::invokeFunctionLoader(a1, v12, *(a2 + 8), v31, ModuleFromBinaryRequest, v41, *(&v41 + 1), *(a2 + 24));
      **(a2 + 32) &= ~0x4000000u;
    }

    free(v41);
    *&v41 = 0;
    v13 = *(a2 + 32);
    if ((*(v13 + 3) & 2) != 0)
    {
      if (!*v9)
      {
        goto LABEL_32;
      }

      *(a2 + 48) = MTLCompilerObject::invokeLowerModule(a1, v13, v31, *v9, *(a2 + 40), *(a2 + 24));
      **(a2 + 32) &= ~0x2000000u;
    }

    if (*v9)
    {
      v11 = *(a2 + 32);
      goto LABEL_18;
    }

LABEL_32:
    v17 = 0;
    v18 = 0;
    goto LABEL_33;
  }

  v10 = MTLCompilerObject::runFrameworkPasses(a1, a2, v32, v31, &v46);
  v11 = *(a2 + 32);
  if ((v10 & 1) == 0 && (*(v11 + 4) & 2) == 0)
  {
    goto LABEL_31;
  }

LABEL_18:
  if (*(v11 + 12) != 12)
  {
    (*(*(a2 + 24) + 16))(*(a2 + 24), 2 * (a1[2].__r_.__value_.__r.__words[2] != 0), 0, 0, "Invalid air downgrade request data size");
    goto LABEL_31;
  }

  v14 = *a2 + *(v11 + 8);
  if (*(v14 + 8))
  {
    if ((atomic_load_explicit(_MergedGlobals, memory_order_acquire) & 1) == 0)
    {
      MTLCompilerObject::downgradeAndLoadModuleRequest();
    }

    if ((atomic_load_explicit(byte_281130248, memory_order_acquire) & 1) == 0)
    {
      MTLCompilerObject::downgradeAndLoadModuleRequest();
    }

    qword_27C8E929C = qword_27C8E929C & 0xFFFFFFFFFFFFFFEFLL | (8 * *(v14 + 8)) & 0x10 | 0xC0000;
    if (!a1->__r_.__value_.__r.__words[0])
    {
      operator new();
    }

    llvm::legacy::PassManager::run(a1->__r_.__value_.__l.__data_, *v9);
  }

  if (!MTLDowngradeAIRModule())
  {
    (*(*(a2 + 24) + 16))(*(a2 + 24), 2 * (a1[2].__r_.__value_.__r.__words[2] != 0), 0, 0);
    goto LABEL_32;
  }

  v15 = *(a2 + 32);
  if ((*(v15 + 5) & 2) != 0)
  {
    if (((v47 - v46) & 0xFFFFFFFF0) != 0)
    {
      v16 = 12 * ((v47 - v46) >> 4) + 4;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v25 = (*v15 >> 30) & 1;
  v26 = v32;
  if (!v6)
  {
    v26 = 0;
  }

  v17 = 1;
  v18 = MTLCompilerObject::serializeLibraryReply(a1, &v49, 0, 1, (a2 + 48), 1uLL, v16, 0, v25, *(v14 + 4), v26);
LABEL_33:
  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(v30);
  llvm::LLVMContext::~LLVMContext(v31);
  if (v17)
  {
    if (v18)
    {
      __p = 0;
      v28 = 0;
      v29 = 0;
      std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(&__p, v46, v47, (v47 - v46) >> 4);
      if (v18[13])
      {
        v19 = v18[12];
        v51 = 0uLL;
        v50 = 0;
        std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(&v50, __p, v28, (v28 - __p) >> 4);
        serializeCompileTimeData(v18 + v19, &v50);
        if (v50)
        {
          *&v51 = v50;
          operator delete(v50);
        }
      }

      if (__p)
      {
        v28 = __p;
        operator delete(__p);
      }

      (*(*(a2 + 24) + 16))();
      free(v18);
    }

    else
    {
      (*(*(a2 + 24) + 16))(*(a2 + 24), 2 * (a1[2].__r_.__value_.__r.__words[2] != 0), 0, 0);
    }

    if (v41)
    {
      free(v41);
      v41 = 0uLL;
    }
  }

  for (i = 22; i != 19; --i)
  {
    std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100](&v32[i], 0);
  }

  v21 = v42;
  *&v42 = 0;
  if (v21)
  {
    free(v21);
  }

  v22 = v36[1];
  v36[1] = 0;
  if (v22)
  {
    free(v22);
  }

  v23 = v35[0];
  v35[0] = 0;
  if (v23)
  {
    free(v23);
  }

  v24 = v32[0];
  v32[0] = 0;
  if (v24)
  {
    free(v24);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }
}

uint64_t fatalDiagnosticHandler(uint64_t result)
{
  if (!*(result + 12))
  {
    memset(v1, 0, sizeof(v1));
    printDiagnosticError(result, v1);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      fatalDiagnosticHandler();
    }

    abort();
  }

  return result;
}

void sub_213C5B2A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLBoundsCheck::SerializedData::~SerializedData(MTLBoundsCheck::SerializedData *this)
{
  v2 = this + 608;
  v3 = *(this + 76);
  if (v3 != this + 632)
  {
    free(v3);
  }

  v4 = *(this + 74);
  if (v4 != v2)
  {
    free(v4);
  }

  v5 = *(this + 48);
  if (v5 != this + 400)
  {
    free(v5);
  }

  v6 = *(this + 14);
  if (v6 != this + 128)
  {
    free(v6);
  }

  llvm::SmallVector<std::string,4u>::~SmallVector(this);
}

void FrameworkPassesOutput::~FrameworkPassesOutput(FrameworkPassesOutput *this)
{
  for (i = 176; i != 152; i -= 8)
  {
    std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100]((this + i), 0);
  }

  v3 = *(this + 18);
  *(this + 18) = 0;
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    free(v4);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    free(v5);
  }

  v6 = *this;
  *this = 0;
  if (v6)
  {
    free(v6);
  }
}

void MTLCompilerObject::stitchFunctionDag(char **a1, llvm::LLVMContext *this, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v107 = *MEMORY[0x277D85DE8];
  v100[0] = this;
  v100[2] = llvm::LLVMContext::getDiagnosticContext(this);
  v100[1] = llvm::LLVMContext::getDiagnosticHandlerCallBack(this);
  v80 = a1;
  llvm::LLVMContext::setDiagnosticHandlerCallBack();
  v97 = a4;
  v98 = a5;
  if (a5 <= 3)
  {
    goto LABEL_134;
  }

  v99 = 4;
  v10 = DeserialContext::deserializeCStringNoCopy(&v97, 0);
  v101 = 0;
  v102 = 0u;
  v103 = 0u;
  memset(v104, 0, 26);
  v105 = 0u;
  memset(v106, 0, sizeof(v106));
  v11 = v99;
  if (v98 <= v99 || v98 - v99 <= 3)
  {
    goto LABEL_134;
  }

  v12 = v10;
  v13 = *(v97 + v99);
  v14 = v99 + 4;
  v99 += 4;
  if (v13 == 1634300534)
  {
    if (v98 <= v14)
    {
      goto LABEL_134;
    }

    if (v98 - v14 <= 3)
    {
      goto LABEL_134;
    }

    v15 = *(v97 + v14);
    v99 = v11 + 8;
    LODWORD(v104[0]) = v15;
    if (v98 <= v11 + 8)
    {
      goto LABEL_134;
    }

    if (v98 - (v11 + 8) <= 3)
    {
      goto LABEL_134;
    }

    v16 = *(v97 + v11 + 8);
    v99 = v11 + 12;
    HIDWORD(v104[0]) = v16;
    if (v98 <= v11 + 12 || v98 - (v11 + 12) <= 3)
    {
      goto LABEL_134;
    }

    v14 = v11 + 16;
    v99 = v11 + 16;
  }

  if (v98 <= v14 || v98 - v14 <= 3)
  {
    goto LABEL_134;
  }

  v17 = *(v97 + v14);
  v99 = v14 + 4;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  std::vector<MTLOpaqueObject *>::reserve(&v94, v17);
  __s = v12;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  __p = 0;
  v89 = 0;
  v90 = 0;
  std::vector<MTLOpaqueObject *>::reserve(&v91, v17);
  if (!v17)
  {
    goto LABEL_64;
  }

  v18 = 0;
  do
  {
    v19 = v98;
    v20 = v99;
    if (v98 <= v99 || v98 - v99 <= 3)
    {
      goto LABEL_134;
    }

    v22 = 0;
    while (1)
    {
      v23 = *(v97 + v20);
      v24 = v20 + 4;
      v99 = v20 + 4;
      if (v23 == 1651007859)
      {
        if (v19 <= v24)
        {
          goto LABEL_134;
        }

        v99 = v20 + 36;
        if (v20 + 36 > v19)
        {
          goto LABEL_134;
        }

        v25 = v97 + v24;
        v26 = v89;
        if (v89 >= v90)
        {
          v28 = (v89 - __p) >> 3;
          if ((v28 + 1) >> 61)
          {
            std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
          }

          v29 = (v90 - __p) >> 2;
          if (v29 <= v28 + 1)
          {
            v29 = v28 + 1;
          }

          if (v90 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v30 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v29;
          }

          if (v30)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(&__p, v30);
          }

          v31 = (8 * v28);
          *v31 = v25;
          v27 = 8 * v28 + 8;
          v32 = v31 - (v89 - __p);
          memcpy(v32, __p, v89 - __p);
          v33 = __p;
          __p = v32;
          v89 = v27;
          v90 = 0;
          if (v33)
          {
            operator delete(v33);
          }
        }

        else
        {
          *v89 = v25;
          v27 = (v26 + 8);
        }

        v89 = v27;
        goto LABEL_40;
      }

      if (v23 != 1953656940)
      {
        break;
      }

      v22 = DeserialContext::deserializeCStringNoCopy(&v97, 0);
LABEL_40:
      v19 = v98;
      v20 = v99;
      if (v98 <= v99 || v98 - v99 <= 3)
      {
        goto LABEL_134;
      }
    }

    if (v23 != 1651078243)
    {
      goto LABEL_134;
    }

    v104[2] = v22;
    if (v19 <= v24)
    {
      goto LABEL_134;
    }

    if (v19 - v24 <= 3)
    {
      goto LABEL_134;
    }

    v35 = *(v97 + v24);
    v36 = v20 + 8;
    v99 = v36;
    if (v36 >= v19)
    {
      goto LABEL_134;
    }

    v99 = v36 + v35;
    if (v36 + v35 > v19)
    {
      goto LABEL_134;
    }

    v101 = 0;
    *&v102 = v35;
    *(&v102 + 1) = v97 + v36;
    *&v85 = 1;
    v37 = MTLCompilerObject::readModuleFromBinaryRequest(v80, &v101, this, &v85, 0, 0, 0);
    if (!v37)
    {
      (*(a6 + 16))(a6, 2 * (v80[8] != 0), 0, 0);
      goto LABEL_127;
    }

    __dst[0] = LLVMCreateMemoryBufferWithMemoryRange();
    std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v91, __dst);
    v38 = v95;
    if (v95 >= v96)
    {
      v40 = (v95 - v94) >> 3;
      if ((v40 + 1) >> 61)
      {
        std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
      }

      v41 = (v96 - v94) >> 2;
      if (v41 <= v40 + 1)
      {
        v41 = v40 + 1;
      }

      if (v96 - v94 >= 0x7FFFFFFFFFFFFFF8)
      {
        v42 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v42 = v41;
      }

      if (v42)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&v94, v42);
      }

      v43 = (8 * v40);
      *v43 = v37;
      v39 = 8 * v40 + 8;
      v44 = v43 - (v95 - v94);
      memcpy(v44, v94, v95 - v94);
      v45 = v94;
      v94 = v44;
      v95 = v39;
      v96 = 0;
      if (v45)
      {
        operator delete(v45);
      }
    }

    else
    {
      *v95 = v37;
      v39 = (v38 + 8);
    }

    v95 = v39;
    ++v18;
  }

  while (v18 != v17);
LABEL_64:
  v46 = v99;
  if (v98 <= v99 || v98 - v99 <= 3)
  {
    goto LABEL_134;
  }

  v47 = *(v97 + v99);
  v48 = v99 + 4;
  v99 += 4;
  if (v47 == 1853189491)
  {
    if (v98 > v48 && v98 - v48 > 3)
    {
      v49 = *(v97 + v48);
      v99 = v46 + 8;
      goto LABEL_71;
    }

LABEL_134:
    abort();
  }

  v49 = 0;
LABEL_71:
  v85 = 0u;
  v86 = 0u;
  v87 = 1065353216;
  std::__hash_table<llvm::Function *,std::hash<llvm::Function *>,std::equal_to<llvm::Function *>,std::allocator<llvm::Function *>>::__rehash<true>(&v85, v49);
  if (v49)
  {
    do
    {
      v50 = v99;
      if (v98 <= v99 || v98 - v99 <= 3)
      {
        goto LABEL_134;
      }

      v52 = *(v97 + v99);
      v53 = v99 + 4;
      v99 += 4;
      if (v52 == 1634952050)
      {
        if (v98 <= v53 || v98 - v53 <= 3)
        {
          goto LABEL_134;
        }

        v55 = *(v97 + v53);
        v56 = v50 + 8;
        v99 = v56;
        if (v56 >= v98)
        {
          goto LABEL_134;
        }

        v99 = v56 + v55;
        if (v56 + v55 > v98)
        {
          goto LABEL_134;
        }

        v57 = (v97 + v56 + *(v97 + v56));
        v58 = (v57 + *(v57 - *v57 + 8));
        v59 = (v58 + *v58 + *(v58 + *v58 - *(v58 + *v58) + 6));
        v60 = (v59 + *v59 + *(v59 + *v59 - *(v59 + *v59) + 4));
        std::string::basic_string[abi:ne200100](__dst, v60 + *v60 + 4, *(v60 + *v60));
        __src = LLVMCreateMemoryBufferWithMemoryRange();
        std::__hash_table<std::__hash_value_type<std::string,LLVMOpaqueMemoryBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,LLVMOpaqueMemoryBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,LLVMOpaqueMemoryBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,LLVMOpaqueMemoryBuffer *>>>::__emplace_unique_key_args<std::string,std::string,LLVMOpaqueMemoryBuffer *&>(&v85, __dst, __dst, &__src);
        if (v84 < 0)
        {
          operator delete(__dst[0]);
        }
      }
    }

    while (--v49);
  }

  v61 = v99;
  if (v98 <= v99 || v98 - v99 <= 3)
  {
    goto LABEL_134;
  }

  v62 = *(v97 + v99);
  v63 = v99 + 4;
  v99 += 4;
  if (v62 == 1886676589)
  {
    v64 = v98 >= v63;
    v65 = v98 - v63;
    if (v65 == 0 || !v64 || v65 <= 3)
    {
      goto LABEL_134;
    }

    v63 = v61 + 8;
    v99 = v61 + 8;
  }

  if (v98 <= v63 || v98 - v63 <= 3)
  {
    goto LABEL_134;
  }

  v66 = *(v97 + v63);
  v67 = v63 + 4;
  v99 = v63 + 4;
  if (v66 != 1634888036)
  {
    goto LABEL_104;
  }

  if (v98 <= v67 || v98 - v67 <= 3)
  {
    goto LABEL_134;
  }

  v68 = *(v97 + v67);
  v69 = v63 + 8;
  v99 = v69;
  if (v68)
  {
    if (v69 >= v98)
    {
      goto LABEL_134;
    }

    v99 = v69 + v68;
    if (v69 + v68 > v98)
    {
      goto LABEL_134;
    }

    v70 = v97 + v69;
  }

  else
  {
LABEL_104:
    v70 = 0;
  }

  __src = 0;
  __dst[0] = 0;
  strlen(__s);
  LLVMCreateMemoryBufferWithMemoryRange();
  if (MTLCreateScript())
  {
    free(__src);
    __src = 0;
    MTLGPUCompilerSetStitcherScript();
    v71 = MTLGPUCompilerStitchFunctionsToBuffer() != 0;
  }

  else
  {
    MTLCompilerErrorObject::setFormattedErrorMessage(v80 + 8, "error while parsing script: %s", __src);
    free(__src);
    v71 = 0;
    __src = 0;
  }

  LLVMDisposeMemoryBuffer();
  if (v70)
  {
    v73 = v71;
  }

  else
  {
    v73 = 0;
  }

  if (v73)
  {
    v81 = 0;
    MTLCompilerObject::insertStitchedFunctionsIntoArchive(v80, v70, v72, __dst[0], &v85, &v91, &__src, &v81);
  }

  v74 = v91;
  v75 = v92;
  while (v74 != v75)
  {
    LLVMDisposeMemoryBuffer();
    v74 += 8;
  }

  for (i = v86; i; i = *i)
  {
    LLVMDisposeMemoryBuffer();
  }

  if (v71)
  {
    v81 = 0;
    v77 = MTLCompilerObject::serializeLibraryToArchiveReply(v80, &v81, &__src, 1, 1, __dst[0], 0);
    if (__dst[0])
    {
      LLVMDisposeMemoryBuffer();
    }

    (*(a6 + 16))(a6, 0, v77, v81, 0);
    free(v77);
  }

  else
  {
    if (__src)
    {
      MTLCompilerErrorObject::setFormattedErrorMessage(v80 + 8, "error: %s", __src);
      free(__src);
      __src = 0;
    }

    (*(a6 + 16))(a6, 2 * (v80[8] != 0), 0, 0);
  }

  std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::~__hash_table(&v85);
LABEL_127:
  if (__p)
  {
    v89 = __p;
    operator delete(__p);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(v100);
}

void sub_213C5BD94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::~__hash_table(&a22);
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  if (a30)
  {
    a31 = a30;
    operator delete(a30);
  }

  if (a33)
  {
    a34 = a33;
    operator delete(a33);
  }

  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(&a39);
  _Unwind_Resume(a1);
}

void MTLCompilerObject::insertStitchedFunctionsIntoArchive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char **a7, uint64_t a8)
{
  v10 = a4;
  memset(v8, 0, sizeof(v8));
  v9 = 1065353216;
  MTLCompilerObject::extractFunctionsFromMetallib(a1, &v10, v8, a7);
}

void sub_213C5BFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void MTLCompilerObject::extractFunctionsFromMetallib(uint64_t a1, void *a2, uint64_t a3, char **a4)
{
  v5 = *MEMORY[0x277D85DE8];
  llvm::MemoryBufferRef::MemoryBufferRef();
  v4 = 0;
  operator new();
}

void sub_213C5C428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, int a30, __int16 a31, char a32, char a33)
{
  llvm::SmallVector<std::string,4u>::~SmallVector(&a31);
  if ((a29 & 1) != 0 && a27)
  {
    (*(*a27 + 8))(a27);
  }

  (*(*v33 + 8))(v33);
  if (a18)
  {
    (*(*a18 + 8))(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t MTLCompilerObject::invokeLoaderForSpecializedFunction(std::string *a1, void **a2, uint64_t a3, _DWORD *a4, unint64_t a5, llvm::LLVMContext *a6, uint64_t a7)
{
  __p[0] = 0;
  __p[1] = 0;
  v20 = 0;
  if (a3)
  {
    MTLMetalLibGetFunctionNo();
    MTLMetalFunctionGetModule();
    Name = MTLMetalFunctionGetName();
    MEMORY[0x21604C780](__p, Name);
    llvm::CloneModule();
    v14 = v18;
    MTLMetalLibDestroy();
  }

  else
  {
    MEMORY[0x21604C780](__p, a4 + a4[22]);
    v14 = *a2;
  }

  *a4 |= 0xC000000u;
  v15 = MTLCompilerObject::invokeFunctionLoader(a1, a4, a5, a6, v14, 0, 0, a7);
  v16 = serializeModuleToBufferAsMetallib(v15, __p);
  if (v14 == *a2)
  {
    *a2 = 0;
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  return v16;
}

void sub_213C5C6C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *llvm::object::MetalLibObjectFile::moduleOfFunction@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, uint64_t a3@<X1>)
{
  v3 = this;
  if (*(this + 35))
  {
    v7 = this[51];
  }

  else
  {
    v5 = a3 - this[35];
    v6 = *(this[44] + (v5 >> 1));
    if (v6 == -1)
    {
      this = llvm::object::MetalLibObjectFile::materializeModuleForFunctionNo(&v9, this);
      v7 = v9;
      if (v9)
      {
        v8 = *(a1 + 8) | 1;
        goto LABEL_6;
      }

      v6 = *(v3[44] + 4 * (v5 >> 3));
    }

    v7 = v3[50] + 8 * v6;
  }

  v8 = a1[1] & 0xFE;
LABEL_6:
  *(a1 + 8) = v8;
  *a1 = v7;
  return this;
}

uint64_t MTLCompilerObject::insertFunctionInArchive(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4, char **a5)
{
  if (MTLGPUArchiverFromId())
  {
    LLVMCreateMemoryBufferWithMemoryRange();
    v7 = LLVMCreateMemoryBufferWithMemoryRange();
    memset(v9, 0, sizeof(v9));
    v10 = 1065353216;
    MTLCompilerObject::extractFunctionsFromMetallib(v7, a4, v9, a5);
  }

  return 0;
}

void std::vector<CompileTimeData>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CompileTimeData>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void MTLCompilerObject::backendCompileStatelessRequest(std::string *a1, uint64_t a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v35 = 0u;
  v36 = 0;
  memset(v34, 0, 24);
  v34[3] = -1;
  v37 = 0;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v33 = 0;
  v27 = 0;
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0;
  v25 = 0;
  v26 = 0;
  v4 = **(a2 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "MTLStatelessBackendCompileRequest");
  if (logCompileBegin(std::string const&,unsigned long long &,char const*,std::string const&)::onceToken != -1)
  {
    MTLCompilerObject::buildSpecializedFunctionRequest();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    size = &a1[3].__r_.__value_.__s.__data_[8];
    if (a1[4].__r_.__value_.__s.__data_[7] < 0)
    {
      size = a1[3].__r_.__value_.__l.__size_;
    }

    v6 = __p;
    if (DiagnosticContext < 0)
    {
      v6 = __p[0];
    }

    v7 = "dynamic library";
    *buf = 136446722;
    if ((v4 & 0x40000000) == 0)
    {
      v7 = "visible function";
    }

    *v48 = size;
    *&v48[8] = 2082;
    *&v48[10] = v6;
    *&v48[18] = 2080;
    *&v49 = v7;
    _os_log_impl(&dword_213BCC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Compilation BEGIN (ParentProcessName=%{public}s) Build request: %{public}s - %s", buf, 0x20u);
  }

  v8 = mach_absolute_time();
  if (SHIBYTE(DiagnosticContext) < 0)
  {
    operator delete(__p[0]);
  }

  MEMORY[0x21604B680](v22);
  __p[0] = v22;
  DiagnosticContext = llvm::LLVMContext::getDiagnosticContext(v22);
  __p[1] = llvm::LLVMContext::getDiagnosticHandlerCallBack(v22);
  v9 = llvm::LLVMContext::setDiagnosticHandlerCallBack();
  *buf = 0;
  *&v48[4] = 0u;
  v49 = 0u;
  memset(v50, 0, sizeof(v50));
  v51 = 0u;
  memset(v52, 0, sizeof(v52));
  MTLCompilerObject::getReadParametersFromRequest(v9, buf, *a2, *(a2 + 8), (*(a2 + 32) + 88), *(a2 + 32));
  ModuleFromBinaryRequest = MTLCompilerObject::readModuleFromBinaryRequest(&a1->__r_.__value_.__l.__data_, buf, v22, (a2 + 40), &v42, &v42 + 1, 0);
  *(a2 + 48) = ModuleFromBinaryRequest;
  if (!ModuleFromBinaryRequest)
  {
    (*(*(a2 + 24) + 16))(*(a2 + 24), 2 * (a1[2].__r_.__value_.__r.__words[2] != 0), 0, 0);
LABEL_33:
    ScopedDiagnosticHandler::~ScopedDiagnosticHandler(__p);
    llvm::LLVMContext::~LLVMContext(v22);
    goto LABEL_34;
  }

  if ((MTLCompilerObject::runFrameworkPasses(a1, a2, v34, v22, &v25) & 1) == 0)
  {
    if (v42)
    {
      free(v42);
    }

    goto LABEL_33;
  }

  MTLCompilerObject::backendCompileModule(a1, a2, v28, v11, &v25);
  v12 = *(a2 + 32);
  if ((*(v12 + 5) & 2) != 0)
  {
    if ((v26 - v25) >> 4 == -2)
    {
      v13 = 0;
    }

    else
    {
      v13 = 12 * (((v26 - v25) >> 4) + 2) + 4;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = 0;
  v21 = 0;
  if ((*(v12 + 2) & 0x80) != 0)
  {
    v14 = MTLGPUArchiverFromId();
    v20 = v14;
    if (!v14 || !MTLCompilerObject::storeToBinaryArchive(a1, *(a2 + 32), *(a2 + 8), buf, v28, *(a2 + 40), v34, &v20, &v21))
    {
      (*(*(a2 + 24) + 16))();
      if (v42)
      {
        free(v42);
      }

      free(v21);
      MTLGPUArchiverDestroy();
      goto LABEL_33;
    }
  }

  MTLCompilerObject::serializeBackendCompilationOutput(a1, *(a2 + 16), a2, v34, v28, &v25, v8, v13);
  if (v14)
  {
    MTLGPUArchiverDestroy();
  }

  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(__p);
  llvm::LLVMContext::~LLVMContext(v22);
  if (v42)
  {
    free(v42);
    v42 = 0uLL;
  }

LABEL_34:
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  for (i = 22; i != 19; --i)
  {
    std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100](&v34[i], 0);
  }

  v16 = v43;
  *&v43 = 0;
  if (v16)
  {
    free(v16);
  }

  v17 = v37;
  v37 = 0;
  if (v17)
  {
    free(v17);
  }

  v18 = v35;
  *&v35 = 0;
  if (v18)
  {
    free(v18);
  }

  v19 = v34[0];
  v34[0] = 0;
  if (v19)
  {
    free(v19);
  }
}

BOOL MTLCompilerObject::storeToBinaryArchive(uint64_t a1, unsigned int *a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8, char **a9)
{
  v66 = *MEMORY[0x277D85DE8];
  *a9 = 0;
  v13 = a2 + a2[49];
  v14 = strncmp(v13 + 4, "AIRP", 4uLL);
  if (v14)
  {
    v60 = 0;
    v58 = 0;
  }

  else
  {
    v15 = &v13[*v13];
    LODWORD(v58) = getRequiredStagesPresentMask(v15);
    v16.i32[0] = v58;
    v17 = vaddlv_u8(vcnt_s8(v16));
    v18 = (v15 - *v15);
    if (*v18 >= 9u && (v19 = v18[4]) != 0)
    {
      HIDWORD(v58) = *(v15 + v19);
    }

    else
    {
      HIDWORD(v58) = 0;
    }

    v60 = v17;
  }

  LLVMCreateMemoryBufferWithMemoryRange();
  v20 = LLVMCreateMemoryBufferWithMemoryRange();
  v62 = 0u;
  v63 = 0u;
  v64 = 1065353216;
  v21 = a2[40] + a2[36];
  if (v14)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21 == 0;
  }

  v23 = !v22;
  if (!v22)
  {
    MTLCompilerObject::readVisibleFunctions(v20, a2, a3, &v62);
  }

  if (a6 == 2 && a7[5])
  {
    _MTLEncodeLinkingInfo();
  }

  v59 = a6;
  LLVMCreateMemoryBufferWithMemoryRange();
  v25 = a2[46];
  v24 = a2[47];
  v26 = a2[48];
  v61 = MTLGPUArchiverAddUnit();
  if (v14)
  {
    v27 = 0;
  }

  else
  {
    v28 = malloc_type_malloc(0x30uLL, 0x102204031A510F6uLL);
    v27 = v28;
    v29 = a2[69];
    if (v29)
    {
      memcpy(v28, a2 + a2[68], v29);
    }

    else
    {
      *(v28 + 4) = -1;
      *&v30 = -1;
      *(&v30 + 1) = -1;
      *v28 = v30;
      v28[1] = v30;
      *(v28 + 10) = HIDWORD(v58);
      *(v28 + 45) = 0;
      *(v28 + 44) = v60;
    }
  }

  if (!v61)
  {
    v33 = 0;
    v42 = 0;
    goto LABEL_96;
  }

  v31 = a2 + v24;
  v32 = MTLGPUArchiverSetUnitHash();
  if (v14 || !v32 || !v21)
  {
    v33 = 0;
    if (!v32)
    {
      v42 = 0;
      v40 = v27;
      goto LABEL_55;
    }

    v40 = v27;
    v41 = v59;
LABEL_43:
    if (a7[21] && a7[22])
    {
      v42 = MTLGPUArchiverSetUnitReflection() != 0;
      v40 = v27;
      v41 = v59;
      if (v14)
      {
LABEL_55:
        if (!v40)
        {
          goto LABEL_58;
        }

LABEL_92:
        v53 = a7[18];
        a7[18] = v40;
        if (v53)
        {
          free(v53);
        }

        v45 = 48;
        goto LABEL_95;
      }
    }

    else
    {
      v42 = 1;
      if (v14)
      {
        goto LABEL_55;
      }
    }

    if (!v42)
    {
      goto LABEL_55;
    }

    if (v41 <= 2)
    {
      v43 = v58;
      if (v41 != 1)
      {
        if (v41 == 2)
        {
          *(v40 + 3) = v61;
          v44 = *(v40 + 45) | 1;
          goto LABEL_66;
        }

LABEL_78:
        v42 = 0;
        *a9 = strdup("Unsupported function or pipeline type");
        v44 = *(v40 + 45);
        goto LABEL_67;
      }

      *v40 = v61;
    }

    else
    {
      v43 = v58;
      switch(v41)
      {
        case 3:
          *(v40 + 4) = v61;
          break;
        case 7:
          *(v40 + 1) = v61;
          break;
        case 8:
          *(v40 + 2) = v61;
          v44 = *(v40 + 45) | 4;
LABEL_66:
          *(v40 + 45) = v44;
          v42 = 1;
LABEL_67:
          v46 = *(v40 + 44) - 1;
          *(v40 + 44) = v46;
          if (!v42 || v46 || v43 != v44)
          {
            goto LABEL_92;
          }

          *(v40 + 45) = v44 | 0x10;
          if (SHIDWORD(v58) > 2)
          {
            if (HIDWORD(v58) == 3)
            {
              goto LABEL_73;
            }

            if (HIDWORD(v58) != 4)
            {
              goto LABEL_79;
            }

            v48 = malloc_type_malloc(0x18uLL, 0x2004093837F09uLL);
            v47 = v48;
            if ((v43 & 4) != 0)
            {
              v49 = *(v40 + 2);
            }

            else
            {
              v49 = 0;
            }

            *v48 = v49;
            if (v43)
            {
              v52 = *(v40 + 3);
            }

            else
            {
              v52 = 0;
            }

            v48[2] = v52;
            v48[1] = *(v40 + 1);
          }

          else
          {
            if (HIDWORD(v58) != 1)
            {
              if (HIDWORD(v58) == 2)
              {
LABEL_73:
                v47 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
                *v47 = v61;
                goto LABEL_90;
              }

LABEL_79:
              v47 = 0;
              *a9 = strdup("Unsupported function or pipeline type");
              goto LABEL_90;
            }

            v50 = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
            v47 = v50;
            if (v43)
            {
              v51 = *(v40 + 3);
            }

            else
            {
              v51 = 0;
            }

            v50[1] = v51;
            *v50 = *v40;
          }

LABEL_90:
          v42 = MTLGPUArchiverAddPipeline() != 0;
          if (v47)
          {
            free(v47);
          }

          goto LABEL_92;
        default:
          goto LABEL_78;
      }
    }

    v44 = *(v40 + 45) | 2;
    goto LABEL_66;
  }

  v33 = malloc_type_malloc(8 * v21, 0x2004093837F09uLL);
  v57 = v23;
  v56 = a7;
  if (!*(v31 + 1) && v25 >= 2)
  {
    v34 = 0;
    v35 = (a2 + v26 + 32);
    v36 = 2;
    do
    {
      v37 = v35[1];
      v65[0] = *v35;
      v65[1] = v37;
      if (std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>>>::find<MTLUINT256_t>(&v62, v65))
      {
        v33[v34++] = LLVMCreateMemoryBufferWithMemoryRange();
      }

      v35 += 2;
      if (*&v31[4 * v36])
      {
        v38 = 1;
      }

      else
      {
        v38 = v36 >= v25;
      }

      ++v36;
    }

    while (!v38);
  }

  v39 = MTLGPUArchiverAddLinkedModules();
  a7 = v56;
  v40 = v27;
  v41 = v59;
  if (v39)
  {
    v23 = v57;
    goto LABEL_43;
  }

  v42 = 0;
  v23 = v57;
  if (v27)
  {
    goto LABEL_92;
  }

LABEL_58:
  v45 = 0;
LABEL_95:
  a7[19] = v45;
LABEL_96:
  LLVMDisposeMemoryBuffer();
  LLVMDisposeMemoryBuffer();
  LLVMDisposeMemoryBuffer();
  if (v23)
  {
    do
    {
      LLVMDisposeMemoryBuffer();
      ++v33;
      --v21;
    }

    while (v21);
    for (i = v63; i; i = *i)
    {
      free(i[6]);
    }
  }

  std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(&v62);
  return v42;
}

void sub_213C5D55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t MTLCompilerObject::runKernelPasses(MTLCompilerObject *a1, uint64_t a2)
{
  if (*(*(a2 + 32) + 28) < 0xCu)
  {
    return 1;
  }

  result = MTLCompilerObject::checkVertexDescriptorAndAddVertexFetchingToKernelModule(a1, a2);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t MTLCompilerObject::checkVertexDescriptorAndAddVertexFetchingToKernelModule(MTLCompilerObject *this, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *a2 + *(v4 + 24);
  v6 = *(v5 + 8);
  if (v6)
  {
    if ((v6 & 0x20) != 0)
    {
      v10 = 20;
    }

    else
    {
      v10 = 12;
    }

    MTLCompilerObject::validateSerializedVertexDescriptor(this, (v5 + v10), *(v4 + 28));
    if ((*(v5 + 8) & 4) == 0)
    {
      __p = 0;
      v16 = 0;
      v17 = 0;
      v11 = *(this + 72);
      v12 = (this + 64);
      v19 = v12;
      v20 = v11;
      if (!MTLAddVertexFetchingToModulePass::addVertexFetchingToModule(&v19, *(a2 + 48), 1, (v5 + v10), 0, 0, 0, 0, v11, v11, *(*(a2 + 32) + 4), &__p))
      {
        if (*(a2 + 48))
        {
          v14 = MEMORY[0x21604BFC0]();
          MEMORY[0x21604C990](v14, 0x10B2C407FF26C1CLL);
        }

        *(a2 + 48) = 0;
        (*(*(a2 + 24) + 16))(*(a2 + 24), 2 * (*v12 != 0), 0, 0);
        if (__p)
        {
          v16 = __p;
          operator delete(__p);
        }

        return 0;
      }

      if (__p)
      {
        v16 = __p;
        operator delete(__p);
      }
    }

    return 1;
  }

  if ((v6 & 4) != 0)
  {
    return 1;
  }

  v7 = *(a2 + 48);
  __p = "air.kernel";
  v18 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v7, &__p);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  if (MTLCompilerObject::checkNoStageInAttributes(this, Operand))
  {
    return 1;
  }

  (*(*(a2 + 24) + 16))(*(a2 + 24), 2 * (*(this + 8) != 0), 0, 0);
  return 0;
}

void sub_213C5D77C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLCompilerObject::generateAIRReflectionType(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if ((*(result + 72) & 1) == 0)
  {
    v7 = MTLWriteAIRReflectionToMemoryBuffer();

    return std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100]((a3 + 8 * a4 + 160), v7);
  }

  return result;
}

void *deserializePluginDataForFunctionType<MTLSerializedStatelessFunctionData>(void *result, uint64_t a2)
{
  v2 = result[4];
  if (*(v2 + 28) >= 0x2Cu)
  {
    v4 = (*result + *(v2 + 24));
    v5 = *v4;
    if (v5)
    {
      result = MTLDeserializePluginDataDictionary(&v4[v5]);
      *(a2 + 112) = result;
    }

    v6 = *(v4 + 1);
    if (v6)
    {
      result = MTLDeserializePluginDataDictionary(&v4[v6]);
      *(a2 + 120) = result;
    }
  }

  return result;
}

void MTLCompilerObject::FragmentVaryingsInfo::~FragmentVaryingsInfo(char **this)
{
  std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::destroy((this + 6), this[7]);
  v2 = this[3];
  if (v2)
  {
    this[4] = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    this[1] = v3;
    operator delete(v3);
  }
}

void MTLCompilerObject::addDebugInstrumentationToModule(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(byte_281130250, memory_order_acquire) & 1) == 0)
  {
    MTLCompilerObject::addDebugInstrumentationToModule();
  }

  if ((atomic_load_explicit(byte_281130258, memory_order_acquire) & 1) == 0)
  {
    MTLCompilerObject::addDebugInstrumentationToModule();
  }

  v5 = [objc_msgSend(*(a3 + 112) objectForKeyedSubscript:{@"MTLBoundsCheck::Options", "bytes"}];
  strlen((*(a2 + 32) + *(*(a2 + 32) + 280)));
  if (llvm::StringRef::find() == -1)
  {
    if (llvm::StringRef::find() == -1)
    {
      goto LABEL_10;
    }

    v6 = *(v5 + 20) & 0xFFFFFFE9FEDFFBFELL | 1;
  }

  else
  {
    v6 = *(v5 + 20) | 0x1000000000;
  }

  *(v5 + 20) = v6;
LABEL_10:
  if (MTLCompilerObject::addDebugInstrumentationToModule(BinaryRequestData &,FrameworkPassesOutput &)::cachedOptions != *v5 || *(&MTLCompilerObject::addDebugInstrumentationToModule(BinaryRequestData &,FrameworkPassesOutput &)::cachedOptions + 1) != *(v5 + 8) || qword_27C8E92B8 != *(v5 + 16) || dword_27C8E92C0 != *(v5 + 24))
  {
    v10 = *v5;
    *(&MTLCompilerObject::addDebugInstrumentationToModule(BinaryRequestData &,FrameworkPassesOutput &)::cachedOptions + 12) = *(v5 + 12);
    MTLCompilerObject::addDebugInstrumentationToModule(BinaryRequestData &,FrameworkPassesOutput &)::cachedOptions = v10;
  }

  MTLUpdateBoundsRunPipeline(a2, &MTLCompilerObject::addDebugInstrumentationToModule(BinaryRequestData &,FrameworkPassesOutput &)::cachedOptions, &xmmword_2811302D8, &qword_2811305D0, *(a3 + 120));
}

void sub_213C5DE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  std::unique_ptr<llvm::Module>::reset[abi:ne200100](va, 0);
  llvm::SMDiagnostic::~SMDiagnostic(va1);
  _Unwind_Resume(a1);
}

uint64_t MTLCompilerObject::AIRNTGetVertexFunctionScript(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (!a4)
  {
    return 0;
  }

  v6 = Air::CloneVertexFunctionDescriptor<Air::VertexFunctionDescriptor>(a3, a4);
  v7 = (a2 - *a2);
  v8 = *v7;
  if (v8 >= 5 && v7[2])
  {
    v9 = (a2 + v7[2]);
  }

  else
  {
    v9 = 0;
  }

  if (v8 >= 7 && (v10 = v7[3]) != 0)
  {
    v11 = *(a2 + v10);
  }

  else
  {
    v11 = 0;
  }

  *(a3 + 70) = 1;
  v12 = *(a3 + 40);
  v13 = *(a3 + 32) - *(a3 + 48);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, 10, v6);
  flatbuffers::FlatBufferBuilder::AddStruct<Air::Version>(a3, 4, v9);
  v14 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a3, 1);
  flatbuffers::FlatBufferBuilder::TrackField(a3, 8, v14);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 6, v11, 0);
  v15 = flatbuffers::FlatBufferBuilder::EndTable(a3, v13 + v12);
  flatbuffers::FlatBufferBuilder::Finish(a3, v15, "AIRF", 0);
  return *(a3 + 48) + **(a3 + 48);
}

uint64_t Air::CloneVertexFunctionDescriptor<Air::VertexFunctionDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 0x2Fu && (v7 = v6[23]) != 0)
  {
    v8 = Air::CloneFunctionOptions<Air::FunctionOptions>(a1, (a2 + v7 + *(a2 + v7)));
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 0x2Du && *(a2 + v5 + 44))
  {
    v9 = Air::CloneLinkedFunctions<Air::LinkedFunctions>(a1, (a2 + *(a2 + v5 + 44) + *(a2 + *(a2 + v5 + 44))));
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  if (*(a2 + v5) >= 0x1Fu && *(a2 + v5 + 30))
  {
    v70 = (a2 + *(a2 + v5 + 30) + *(a2 + *(a2 + v5 + 30)));
    v10 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_29CloneVertexFunctionDescriptorINS3_24VertexFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_39VertexFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v70, &v70, a1);
    v5 = -*a2;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + v5) >= 7u && *(a2 + v5 + 6))
  {
    v11 = Air::CloneVertexDescriptor<Air::VertexDescriptor>(a1, (a2 + *(a2 + v5 + 6) + *(a2 + *(a2 + v5 + 6))));
    v5 = -*a2;
  }

  else
  {
    v11 = 0;
  }

  v12 = 1;
  *(a1 + 70) = 1;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v16 = (a2 + v5);
  if (*v16 >= 0x1Bu)
  {
    v17 = v16[13];
    if (v17)
    {
      v12 = *(a2 + v17);
    }

    else
    {
      v12 = 1;
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 26, v12, 1);
  v18 = (a2 - *a2);
  if (*v18 >= 0xDu && (v19 = v18[6]) != 0)
  {
    v20 = *(a2 + v19);
  }

  else
  {
    v20 = 16;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 12, v20, 16);
  v21 = (a2 - *a2);
  if (*v21 >= 5u && (v22 = v21[2]) != 0)
  {
    v23 = *(a2 + v22);
  }

  else
  {
    v23 = 1;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 4, v23, 1);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 46, v8);
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 44, v9);
  }

  v24 = (a2 - *a2);
  if (*v24 >= 0x29u && (v25 = v24[20]) != 0)
  {
    v26 = *(a2 + v25);
  }

  else
  {
    v26 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 40, v26, 0);
  if (v10)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 30, v10);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v11);
  }

  v27 = (a2 - *a2);
  v29 = *v27 >= 0x2Bu && (v28 = v27[21]) != 0 && *(a2 + v28) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 42, v29, 0);
  v30 = (a2 - *a2);
  if (*v30 >= 0x27u && (v31 = v30[19]) != 0)
  {
    v32 = *(a2 + v31);
  }

  else
  {
    v32 = 255;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 38, v32, 255);
  v33 = (a2 - *a2);
  if (*v33 >= 0x25u && (v34 = v33[18]) != 0)
  {
    v35 = *(a2 + v34);
    if (v35 >= 3)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v35 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 36, v35, 0);
  v36 = (a2 - *a2);
  v38 = *v36 >= 0x23u && (v37 = v36[17]) != 0 && *(a2 + v37) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 34, v38, 0);
  v39 = (a2 - *a2);
  if (*v39 >= 0x21u && (v40 = v39[16]) != 0)
  {
    v41 = *(a2 + v40);
    if (v41 >= 2)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v41 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 32, v41, 0);
  v42 = (a2 - *a2);
  if (*v42 >= 0x1Du && (v43 = v42[14]) != 0)
  {
    v44 = *(a2 + v43);
    if (v44 >= 2)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v44 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 28, v44, 0);
  v45 = (a2 - *a2);
  if (*v45 >= 0x19u && (v46 = v45[12]) != 0)
  {
    v47 = *(a2 + v46);
    if (v47 >= 4)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v47 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 24, v47, 0);
  v48 = (a2 - *a2);
  if (*v48 >= 0x17u && (v49 = v48[11]) != 0)
  {
    v50 = *(a2 + v49);
    if (v50 >= 2)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v50 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 22, v50, 0);
  v51 = (a2 - *a2);
  if (*v51 >= 0x15u && (v52 = v51[10]) != 0)
  {
    v53 = *(a2 + v52);
    if (v53 >= 4)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v53 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, v53, 0);
  v54 = (a2 - *a2);
  if (*v54 >= 0x13u && (v55 = v54[9]) != 0)
  {
    v56 = *(a2 + v55);
    if (v56 >= 3)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v56 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 18, v56, 0);
  v57 = (a2 - *a2);
  if (*v57 >= 0x11u && (v58 = v57[8]) != 0)
  {
    v59 = *(a2 + v58);
    if (v59 >= 2)
    {
LABEL_100:
      abort();
    }
  }

  else
  {
    v59 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, v59, 0);
  v60 = (a2 - *a2);
  v62 = *v60 >= 0xFu && (v61 = v60[7]) != 0 && *(a2 + v61) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 14, v62, 0);
  v63 = (a2 - *a2);
  if (*v63 >= 0xBu && (v64 = v63[5]) != 0)
  {
    v65 = *(a2 + v64);
    if (v65 >= 4)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v65 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, v65, 0);
  v66 = (a2 - *a2);
  v68 = *v66 < 9u || (v67 = v66[4]) == 0 || *(a2 + v67) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, v68, 1);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v15 - v14 + v13);
}

uint64_t MTLCompilerObject::AIRNTGetFragmentFunctionScript(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (!a4)
  {
    return 0;
  }

  v6 = Air::CloneFragmentFunctionDescriptor<Air::FragmentFunctionDescriptor>(a3, a4);
  v7 = (a2 - *a2);
  v8 = *v7;
  if (v8 >= 5 && v7[2])
  {
    v9 = (a2 + v7[2]);
  }

  else
  {
    v9 = 0;
  }

  if (v8 >= 7 && (v10 = v7[3]) != 0)
  {
    v11 = *(a2 + v10);
  }

  else
  {
    v11 = 0;
  }

  *(a3 + 70) = 1;
  v12 = *(a3 + 40);
  v13 = *(a3 + 32) - *(a3 + 48);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, 10, v6);
  flatbuffers::FlatBufferBuilder::AddStruct<Air::Version>(a3, 4, v9);
  v14 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a3, 2);
  flatbuffers::FlatBufferBuilder::TrackField(a3, 8, v14);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 6, v11, 0);
  v15 = flatbuffers::FlatBufferBuilder::EndTable(a3, v13 + v12);
  flatbuffers::FlatBufferBuilder::Finish(a3, v15, "AIRF", 0);
  return *(a3 + 48) + **(a3 + 48);
}

uint64_t Air::CloneFragmentFunctionDescriptor<Air::FragmentFunctionDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 0x3Bu && (v7 = v6[29]) != 0)
  {
    v8 = Air::CloneFunctionOptions<Air::FunctionOptions>(a1, (a2 + v7 + *(a2 + v7)));
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 0x37u && *(a2 + v5 + 54))
  {
    v9 = Air::CloneLinkedFunctions<Air::LinkedFunctions>(a1, (a2 + *(a2 + v5 + 54) + *(a2 + *(a2 + v5 + 54))));
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  if (*(a2 + v5) >= 0x1Du && *(a2 + v5 + 28))
  {
    v90 = a2 + *(a2 + v5 + 28) + *(a2 + *(a2 + v5 + 28));
    v10 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_31CloneFragmentFunctionDescriptorINS3_26FragmentFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41FragmentFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v90, &v90, a1);
    v5 = -*a2;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + v5) >= 0x17u && *(a2 + v5 + 22))
  {
    v90 = a2 + *(a2 + v5 + 22) + *(a2 + *(a2 + v5 + 22));
    v11 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air33FragmentColorAttachmentDescriptorEEEZNS3_31CloneFragmentFunctionDescriptorINS3_26FragmentFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41FragmentFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v90, &v90, a1);
    v5 = -*a2;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 70) = 1;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = (a2 + v5);
  if (*v15 >= 0x11u && (v16 = v15[8]) != 0)
  {
    v17 = *(a2 + v16);
  }

  else
  {
    v17 = -1;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 16, v17, -1);
  v18 = (a2 - *a2);
  if (*v18 >= 0xFu && (v19 = v18[7]) != 0)
  {
    v20 = *(a2 + v19);
  }

  else
  {
    v20 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 14, v20, 0);
  v21 = (a2 - *a2);
  if (*v21 >= 0xDu && (v22 = v21[6]) != 0)
  {
    v23 = *(a2 + v22);
  }

  else
  {
    v23 = 1;
  }

  v24 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 12, v23, 1);
  v25 = (a2 - *a2);
  if (*v25 >= 5u)
  {
    v26 = v25[2];
    if (v26)
    {
      v24 = *(a2 + v26);
    }

    else
    {
      v24 = 1;
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 4, v24, 1);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 58, v8);
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 54, v9);
  }

  v27 = (a2 - *a2);
  if (*v27 >= 0x35u && (v28 = v27[26]) != 0)
  {
    v29 = *(a2 + v28);
  }

  else
  {
    v29 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 52, v29, 0);
  if (v10)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 28, v10);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 22, v11);
  }

  v30 = (a2 - *a2);
  v31 = 1.0;
  if (*v30 >= 0x13u)
  {
    v32 = v30[9];
    if (v32)
    {
      v31 = *(a2 + v32);
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<float>(a1, 18, v31, 1.0);
  v33 = (a2 - *a2);
  if (*v33 >= 0x1Bu && (v34 = v33[13]) != 0)
  {
    v35 = *(a2 + v34);
  }

  else
  {
    v35 = 0;
  }

  v36 = Air::ClonePixelFormat<Air::PixelFormat>(v35);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 26, v36, 0);
  v37 = (a2 - *a2);
  if (*v37 >= 0x19u && (v38 = v37[12]) != 0)
  {
    v39 = *(a2 + v38);
  }

  else
  {
    v39 = 0;
  }

  v40 = Air::ClonePixelFormat<Air::PixelFormat>(v39);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 24, v40, 0);
  v41 = (a2 - *a2);
  if (*v41 >= 0x39u && (v42 = v41[28]) != 0)
  {
    v43 = *(a2 + v42);
    if (v43 >= 2)
    {
      goto LABEL_121;
    }
  }

  else
  {
    v43 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 56, v43, 0);
  v44 = (a2 - *a2);
  v46 = *v44 >= 0x33u && (v45 = v44[25]) != 0 && *(a2 + v45) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 50, v46, 0);
  v47 = (a2 - *a2);
  v49 = *v47 >= 0x31u && (v48 = v47[24]) != 0 && *(a2 + v48) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 48, v49, 0);
  v50 = (a2 - *a2);
  v52 = *v50 >= 0x2Fu && (v51 = v50[23]) != 0 && *(a2 + v51) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 46, v52, 0);
  v53 = (a2 - *a2);
  v55 = *v53 >= 0x2Du && (v54 = v53[22]) != 0 && *(a2 + v54) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 44, v55, 0);
  v56 = (a2 - *a2);
  if (*v56 >= 0x2Bu && (v57 = v56[21]) != 0)
  {
    v58 = *(a2 + v57);
    if (v58 >= 8)
    {
      goto LABEL_121;
    }
  }

  else
  {
    v58 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 42, v58, 0);
  v59 = (a2 - *a2);
  v61 = *v59 >= 0x29u && (v60 = v59[20]) != 0 && *(a2 + v60) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 40, v61, 0);
  v62 = (a2 - *a2);
  if (*v62 >= 0x27u && (v63 = v62[19]) != 0)
  {
    v64 = *(a2 + v63);
    if (v64 >= 0x10)
    {
      goto LABEL_121;
    }
  }

  else
  {
    v64 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 38, v64, 0);
  v65 = (a2 - *a2);
  v67 = *v65 >= 0x25u && (v66 = v65[18]) != 0 && *(a2 + v66) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 36, v67, 0);
  v68 = (a2 - *a2);
  if (*v68 >= 0x23u && (v69 = v68[17]) != 0)
  {
    v70 = *(a2 + v69);
    if (v70 >= 3)
    {
      goto LABEL_121;
    }
  }

  else
  {
    v70 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 34, v70, 0);
  v71 = (a2 - *a2);
  v73 = *v71 >= 0x21u && (v72 = v71[16]) != 0 && *(a2 + v72) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 32, v73, 0);
  v74 = (a2 - *a2);
  if (*v74 >= 0x1Fu && (v75 = v74[15]) != 0)
  {
    v76 = *(a2 + v75);
    if (v76 >= 2)
    {
      goto LABEL_121;
    }
  }

  else
  {
    v76 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 30, v76, 0);
  v77 = (a2 - *a2);
  v79 = *v77 >= 0x15u && (v78 = v77[10]) != 0 && *(a2 + v78) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, v79, 0);
  v80 = (a2 - *a2);
  if (*v80 >= 0xBu && (v81 = v80[5]) != 0)
  {
    v82 = *(a2 + v81);
    if (v82 >= 2)
    {
LABEL_121:
      abort();
    }
  }

  else
  {
    v82 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, v82, 0);
  v83 = (a2 - *a2);
  if (*v83 >= 9u && (v84 = v83[4]) != 0)
  {
    v85 = *(a2 + v84);
    if (v85 >= 2)
    {
      goto LABEL_121;
    }
  }

  else
  {
    v85 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, v85, 0);
  v86 = (a2 - *a2);
  v88 = *v86 < 7u || (v87 = v86[3]) == 0 || *(a2 + v87) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 6, v88, 1);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v14 - v13 + v12);
}

uint64_t MTLCompilerObject::AIRNTGetComputeFunctionScript(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (!a4)
  {
    return 0;
  }

  v6 = Air::CloneComputeFunctionDescriptor<Air::ComputeFunctionDescriptor>(a3, a4);
  v7 = (a2 - *a2);
  v8 = *v7;
  if (v8 >= 5 && v7[2])
  {
    v9 = (a2 + v7[2]);
  }

  else
  {
    v9 = 0;
  }

  if (v8 >= 7 && (v10 = v7[3]) != 0)
  {
    v11 = *(a2 + v10);
  }

  else
  {
    v11 = 0;
  }

  *(a3 + 70) = 1;
  v12 = *(a3 + 40);
  v13 = *(a3 + 32) - *(a3 + 48);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, 10, v6);
  flatbuffers::FlatBufferBuilder::AddStruct<Air::Version>(a3, 4, v9);
  v14 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a3, 3);
  flatbuffers::FlatBufferBuilder::TrackField(a3, 8, v14);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 6, v11, 0);
  v15 = flatbuffers::FlatBufferBuilder::EndTable(a3, v13 + v12);
  flatbuffers::FlatBufferBuilder::Finish(a3, v15, "AIRF", 0);
  return *(a3 + 48) + **(a3 + 48);
}

uint64_t Air::CloneComputeFunctionDescriptor<Air::ComputeFunctionDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 0x1Bu && (v7 = v6[13]) != 0)
  {
    v8 = Air::CloneFunctionOptions<Air::FunctionOptions>(a1, (a2 + v7 + *(a2 + v7)));
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 0x19u && *(a2 + v5 + 24))
  {
    VectorIyZN3Air30CloneComputeFunctionDescriptorINS2_25ComputeFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputeFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Air30CloneComputeFunctionDescriptorINS2_25ComputeFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputeFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(a1, *(a2 + *(a2 + v5 + 24) + *(a2 + *(a2 + v5 + 24))), a2 + *(a2 + v5 + 24) + *(a2 + *(a2 + v5 + 24)));
    v5 = -*a2;
  }

  else
  {
    VectorIyZN3Air30CloneComputeFunctionDescriptorINS2_25ComputeFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputeFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = 0;
  }

  if (*(a2 + v5) >= 0x17u && *(a2 + v5 + 22))
  {
    v10 = Air::CloneLinkedFunctions<Air::LinkedFunctions>(a1, (a2 + *(a2 + v5 + 22) + *(a2 + *(a2 + v5 + 22))));
    v5 = -*a2;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + v5) >= 0xDu && *(a2 + v5 + 12))
  {
    v38 = (a2 + *(a2 + v5 + 12) + *(a2 + *(a2 + v5 + 12)));
    v11 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_30CloneComputeFunctionDescriptorINS3_25ComputeFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_40ComputeFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v38, &v38, a1);
    v5 = -*a2;
  }

  else
  {
    v11 = 0;
  }

  if (*(a2 + v5) >= 0xBu && *(a2 + v5 + 10))
  {
    v12 = Air::CloneStageInputOutputDescriptor<Air::StageInputOutputDescriptor>(a1, (a2 + *(a2 + v5 + 10) + *(a2 + *(a2 + v5 + 10))));
    v5 = -*a2;
  }

  else
  {
    v12 = 0;
  }

  v13 = 1;
  *(a1 + 70) = 1;
  v14 = (a2 + v5);
  if (*v14 >= 9u)
  {
    v15 = v14[4];
    if (v15)
    {
      v13 = *(a2 + v15);
    }

    else
    {
      v13 = 1;
    }
  }

  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 8, v13, 1);
  v19 = (a2 - *a2);
  if (*v19 >= 7u && (v20 = v19[3]) != 0)
  {
    v21 = *(a2 + v20);
  }

  else
  {
    v21 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v21, 0);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 26, v8);
  }

  if (VectorIyZN3Air30CloneComputeFunctionDescriptorINS2_25ComputeFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputeFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 24, VectorIyZN3Air30CloneComputeFunctionDescriptorINS2_25ComputeFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputeFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1);
  }

  if (v10)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 22, v10);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 12, v11);
  }

  if (v12)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, v12);
  }

  v22 = (a2 - *a2);
  v24 = *v22 >= 0x15u && (v23 = v22[10]) != 0 && *(a2 + v23) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, v24, 0);
  v25 = (a2 - *a2);
  if (*v25 >= 0x13u && (v26 = v25[9]) != 0)
  {
    v27 = *(a2 + v26);
    if (v27 >= 3)
    {
LABEL_55:
      abort();
    }
  }

  else
  {
    v27 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 18, v27, 0);
  v28 = (a2 - *a2);
  v30 = *v28 >= 0x11u && (v29 = v28[8]) != 0 && *(a2 + v29) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, v30, 0);
  v31 = (a2 - *a2);
  if (*v31 >= 0xFu && (v32 = v31[7]) != 0)
  {
    v33 = *(a2 + v32);
    if (v33 >= 2)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v33 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 14, v33, 0);
  v34 = (a2 - *a2);
  v36 = *v34 >= 5u && (v35 = v34[2]) != 0 && *(a2 + v35) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v36, 0);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v18 - v17 + v16);
}

uint64_t MTLCompilerObject::AIRNTGetTileFunctionScript(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (!a4)
  {
    return 0;
  }

  v6 = Air::CloneTileFunctionDescriptor<Air::TileFunctionDescriptor>(a3, a4);
  v7 = (a2 - *a2);
  v8 = *v7;
  if (v8 >= 5 && v7[2])
  {
    v9 = (a2 + v7[2]);
  }

  else
  {
    v9 = 0;
  }

  if (v8 >= 7 && (v10 = v7[3]) != 0)
  {
    v11 = *(a2 + v10);
  }

  else
  {
    v11 = 0;
  }

  *(a3 + 70) = 1;
  v12 = *(a3 + 40);
  v13 = *(a3 + 32) - *(a3 + 48);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, 10, v6);
  flatbuffers::FlatBufferBuilder::AddStruct<Air::Version>(a3, 4, v9);
  v14 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a3, 4);
  flatbuffers::FlatBufferBuilder::TrackField(a3, 8, v14);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 6, v11, 0);
  v15 = flatbuffers::FlatBufferBuilder::EndTable(a3, v13 + v12);
  flatbuffers::FlatBufferBuilder::Finish(a3, v15, "AIRF", 0);
  return *(a3 + 48) + **(a3 + 48);
}

uint64_t Air::CloneTileFunctionDescriptor<Air::TileFunctionDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 0x1Bu && (v7 = v6[13]) != 0)
  {
    v8 = Air::CloneFunctionOptions<Air::FunctionOptions>(a1, (a2 + v7 + *(a2 + v7)));
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 0x19u && *(a2 + v5 + 24))
  {
    VectorIyZN3Air27CloneTileFunctionDescriptorINS2_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Air27CloneTileFunctionDescriptorINS2_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(a1, *(a2 + *(a2 + v5 + 24) + *(a2 + *(a2 + v5 + 24))), a2 + *(a2 + v5 + 24) + *(a2 + *(a2 + v5 + 24)));
    v5 = -*a2;
  }

  else
  {
    VectorIyZN3Air27CloneTileFunctionDescriptorINS2_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = 0;
  }

  if (*(a2 + v5) >= 0x17u && *(a2 + v5 + 22))
  {
    v10 = Air::CloneLinkedFunctions<Air::LinkedFunctions>(a1, (a2 + *(a2 + v5 + 22) + *(a2 + *(a2 + v5 + 22))));
    v5 = -*a2;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + v5) >= 0x11u && *(a2 + v5 + 16))
  {
    v38 = a2 + *(a2 + v5 + 16) + *(a2 + *(a2 + v5 + 16));
    v11 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_27CloneTileFunctionDescriptorINS3_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v38, &v38, a1);
    v5 = -*a2;
  }

  else
  {
    v11 = 0;
  }

  if (*(a2 + v5) >= 0xFu && *(a2 + v5 + 14))
  {
    v38 = a2 + *(a2 + v5 + 14) + *(a2 + *(a2 + v5 + 14));
    v12 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air29TileColorAttachmentDescriptorEEEZNS3_27CloneTileFunctionDescriptorINS3_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE1_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v38, &v38, a1);
    v5 = -*a2;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 70) = 1;
  v13 = (a2 + v5);
  if (*v13 >= 0xDu && (v14 = v13[6]) != 0)
  {
    v15 = *(a2 + v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 48);
  v17 = *(a1 + 32);
  v37 = *(a1 + 40);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 12, v15, 0);
  v18 = (a2 - *a2);
  if (*v18 >= 0xBu && (v19 = v18[5]) != 0)
  {
    v20 = *(a2 + v19);
  }

  else
  {
    v20 = 1;
  }

  v21 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 10, v20, 1);
  v22 = (a2 - *a2);
  if (*v22 >= 9u)
  {
    v23 = v22[4];
    if (v23)
    {
      v21 = *(a2 + v23);
    }

    else
    {
      v21 = 1;
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 8, v21, 1);
  v24 = (a2 - *a2);
  if (*v24 >= 7u && (v25 = v24[3]) != 0)
  {
    v26 = *(a2 + v25);
  }

  else
  {
    v26 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v26, 0);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 26, v8);
  }

  if (VectorIyZN3Air27CloneTileFunctionDescriptorINS2_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 24, VectorIyZN3Air27CloneTileFunctionDescriptorINS2_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1);
  }

  if (v10)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 22, v10);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 16, v11);
  }

  if (v12)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 14, v12);
  }

  v27 = (a2 - *a2);
  if (*v27 >= 0x15u && (v28 = v27[10]) != 0)
  {
    v29 = *(a2 + v28);
    if (v29 >= 3)
    {
      abort();
    }
  }

  else
  {
    v29 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, v29, 0);
  v30 = (a2 - *a2);
  v32 = *v30 >= 0x13u && (v31 = v30[9]) != 0 && *(a2 + v31) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 18, v32, 0);
  v33 = (a2 - *a2);
  v35 = *v33 >= 5u && (v34 = v33[2]) != 0 && *(a2 + v34) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v35, 0);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v17 - v16 + v37);
}

uint64_t MTLCompilerObject::AIRNTGetObjectFunctionScript(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (!a4)
  {
    return 0;
  }

  v6 = Air::CloneObjectFunctionDescriptor<Air::ObjectFunctionDescriptor>(a3, a4);
  v7 = (a2 - *a2);
  v8 = *v7;
  if (v8 >= 5 && v7[2])
  {
    v9 = (a2 + v7[2]);
  }

  else
  {
    v9 = 0;
  }

  if (v8 >= 7 && (v10 = v7[3]) != 0)
  {
    v11 = *(a2 + v10);
  }

  else
  {
    v11 = 0;
  }

  *(a3 + 70) = 1;
  v12 = *(a3 + 40);
  v13 = *(a3 + 32) - *(a3 + 48);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, 10, v6);
  flatbuffers::FlatBufferBuilder::AddStruct<Air::Version>(a3, 4, v9);
  v14 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a3, 7);
  flatbuffers::FlatBufferBuilder::TrackField(a3, 8, v14);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 6, v11, 0);
  v15 = flatbuffers::FlatBufferBuilder::EndTable(a3, v13 + v12);
  flatbuffers::FlatBufferBuilder::Finish(a3, v15, "AIRF", 0);
  return *(a3 + 48) + **(a3 + 48);
}

uint64_t Air::CloneObjectFunctionDescriptor<Air::ObjectFunctionDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 0x21u && (v7 = v6[16]) != 0)
  {
    v8 = Air::CloneFunctionOptions<Air::FunctionOptions>(a1, (a2 + v7 + *(a2 + v7)));
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 0x1Fu && *(a2 + v5 + 30))
  {
    VectorIyZN3Air29CloneObjectFunctionDescriptorINS2_24ObjectFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_39ObjectFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Air29CloneObjectFunctionDescriptorINS2_24ObjectFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_39ObjectFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(a1, *(a2 + *(a2 + v5 + 30) + *(a2 + *(a2 + v5 + 30))), a2 + *(a2 + v5 + 30) + *(a2 + *(a2 + v5 + 30)));
    v5 = -*a2;
  }

  else
  {
    VectorIyZN3Air29CloneObjectFunctionDescriptorINS2_24ObjectFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_39ObjectFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = 0;
  }

  if (*(a2 + v5) >= 0x1Du && *(a2 + v5 + 28))
  {
    v10 = Air::CloneLinkedFunctions<Air::LinkedFunctions>(a1, (a2 + *(a2 + v5 + 28) + *(a2 + *(a2 + v5 + 28))));
    v5 = -*a2;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + v5) >= 0x13u && *(a2 + v5 + 18))
  {
    v49 = (a2 + *(a2 + v5 + 18) + *(a2 + *(a2 + v5 + 18)));
    v11 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_29CloneObjectFunctionDescriptorINS3_24ObjectFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_39ObjectFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v49, &v49, a1);
    v5 = -*a2;
  }

  else
  {
    v11 = 0;
  }

  v12 = 1;
  *(a1 + 70) = 1;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v16 = (a2 + v5);
  if (*v16 >= 0xFu)
  {
    v17 = v16[7];
    if (v17)
    {
      v12 = *(a2 + v17);
    }

    else
    {
      v12 = 1;
    }
  }

  v18 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 14, v12, 1);
  v19 = (a2 - *a2);
  if (*v19 >= 0xDu)
  {
    v20 = v19[6];
    if (v20)
    {
      v18 = *(a2 + v20);
    }

    else
    {
      v18 = 1;
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 12, v18, 1);
  v21 = (a2 - *a2);
  if (*v21 >= 0xBu && (v22 = v21[5]) != 0)
  {
    v23 = *(a2 + v22);
  }

  else
  {
    v23 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 10, v23, 0);
  v24 = (a2 - *a2);
  if (*v24 >= 9u && (v25 = v24[4]) != 0)
  {
    v26 = *(a2 + v25);
  }

  else
  {
    v26 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 8, v26, 0);
  v27 = (a2 - *a2);
  if (*v27 >= 7u && (v28 = v27[3]) != 0)
  {
    v29 = *(a2 + v28);
  }

  else
  {
    v29 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v29, 0);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 32, v8);
  }

  if (VectorIyZN3Air29CloneObjectFunctionDescriptorINS2_24ObjectFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_39ObjectFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 30, VectorIyZN3Air29CloneObjectFunctionDescriptorINS2_24ObjectFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_39ObjectFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1);
  }

  if (v10)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 28, v10);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 18, v11);
  }

  v30 = (a2 - *a2);
  v32 = *v30 >= 0x1Bu && (v31 = v30[13]) != 0 && *(a2 + v31) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 26, v32, 0);
  v33 = (a2 - *a2);
  if (*v33 >= 0x19u && (v34 = v33[12]) != 0)
  {
    v35 = *(a2 + v34);
    if (v35 >= 3)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v35 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 24, v35, 0);
  v36 = (a2 - *a2);
  v38 = *v36 >= 0x17u && (v37 = v36[11]) != 0 && *(a2 + v37) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 22, v38, 0);
  v39 = (a2 - *a2);
  if (*v39 >= 0x15u && (v40 = v39[10]) != 0)
  {
    v41 = *(a2 + v40);
    if (v41 >= 2)
    {
LABEL_66:
      abort();
    }
  }

  else
  {
    v41 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, v41, 0);
  v42 = (a2 - *a2);
  if (*v42 >= 0x11u && (v43 = v42[8]) != 0)
  {
    v44 = *(a2 + v43);
    if (v44 >= 2)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v44 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, v44, 0);
  v45 = (a2 - *a2);
  v47 = *v45 >= 5u && (v46 = v45[2]) != 0 && *(a2 + v46) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v47, 0);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v15 - v14 + v13);
}

uint64_t MTLCompilerObject::AIRNTGetMeshFunctionScript(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (!a4)
  {
    return 0;
  }

  v6 = Air::CloneMeshFunctionDescriptor<Air::MeshFunctionDescriptor>(a3, a4);
  v7 = (a2 - *a2);
  v8 = *v7;
  if (v8 >= 5 && v7[2])
  {
    v9 = (a2 + v7[2]);
  }

  else
  {
    v9 = 0;
  }

  if (v8 >= 7 && (v10 = v7[3]) != 0)
  {
    v11 = *(a2 + v10);
  }

  else
  {
    v11 = 0;
  }

  *(a3 + 70) = 1;
  v12 = *(a3 + 40);
  v13 = *(a3 + 32) - *(a3 + 48);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, 10, v6);
  flatbuffers::FlatBufferBuilder::AddStruct<Air::Version>(a3, 4, v9);
  v14 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a3, 8);
  flatbuffers::FlatBufferBuilder::TrackField(a3, 8, v14);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 6, v11, 0);
  v15 = flatbuffers::FlatBufferBuilder::EndTable(a3, v13 + v12);
  flatbuffers::FlatBufferBuilder::Finish(a3, v15, "AIRF", 0);
  return *(a3 + 48) + **(a3 + 48);
}

uint64_t Air::CloneMeshFunctionDescriptor<Air::MeshFunctionDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 0x23u && (v7 = v6[17]) != 0)
  {
    v8 = Air::CloneFunctionOptions<Air::FunctionOptions>(a1, (a2 + v7 + *(a2 + v7)));
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 0x21u && *(a2 + v5 + 32))
  {
    VectorIyZN3Air27CloneMeshFunctionDescriptorINS2_22MeshFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37MeshFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Air27CloneMeshFunctionDescriptorINS2_22MeshFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37MeshFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(a1, *(a2 + *(a2 + v5 + 32) + *(a2 + *(a2 + v5 + 32))), a2 + *(a2 + v5 + 32) + *(a2 + *(a2 + v5 + 32)));
    v5 = -*a2;
  }

  else
  {
    VectorIyZN3Air27CloneMeshFunctionDescriptorINS2_22MeshFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37MeshFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = 0;
  }

  if (*(a2 + v5) >= 0x1Fu && *(a2 + v5 + 30))
  {
    v10 = Air::CloneLinkedFunctions<Air::LinkedFunctions>(a1, (a2 + *(a2 + v5 + 30) + *(a2 + *(a2 + v5 + 30))));
    v5 = -*a2;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + v5) >= 0x13u && *(a2 + v5 + 18))
  {
    v52 = (a2 + *(a2 + v5 + 18) + *(a2 + *(a2 + v5 + 18)));
    v11 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_27CloneMeshFunctionDescriptorINS3_22MeshFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_37MeshFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v52, &v52, a1);
    v5 = -*a2;
  }

  else
  {
    v11 = 0;
  }

  v12 = 1;
  *(a1 + 70) = 1;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v16 = (a2 + v5);
  if (*v16 >= 0xFu)
  {
    v17 = v16[7];
    if (v17)
    {
      v12 = *(a2 + v17);
    }

    else
    {
      v12 = 1;
    }
  }

  v18 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 14, v12, 1);
  v19 = (a2 - *a2);
  if (*v19 >= 0xBu)
  {
    v20 = v19[5];
    if (v20)
    {
      v18 = *(a2 + v20);
    }

    else
    {
      v18 = 1;
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 10, v18, 1);
  v21 = (a2 - *a2);
  if (*v21 >= 9u && (v22 = v21[4]) != 0)
  {
    v23 = *(a2 + v22);
  }

  else
  {
    v23 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 8, v23, 0);
  v24 = (a2 - *a2);
  if (*v24 >= 7u && (v25 = v24[3]) != 0)
  {
    v26 = *(a2 + v25);
  }

  else
  {
    v26 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v26, 0);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 34, v8);
  }

  if (VectorIyZN3Air27CloneMeshFunctionDescriptorINS2_22MeshFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37MeshFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 32, VectorIyZN3Air27CloneMeshFunctionDescriptorINS2_22MeshFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37MeshFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1);
  }

  if (v10)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 30, v10);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 18, v11);
  }

  v27 = (a2 - *a2);
  v29 = *v27 >= 0x1Du && (v28 = v27[14]) != 0 && *(a2 + v28) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 28, v29, 0);
  v30 = (a2 - *a2);
  if (*v30 >= 0x1Bu && (v31 = v30[13]) != 0)
  {
    v32 = *(a2 + v31);
  }

  else
  {
    v32 = 255;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 26, v32, 255);
  v33 = (a2 - *a2);
  if (*v33 >= 0x19u && (v34 = v33[12]) != 0)
  {
    v35 = *(a2 + v34);
    if (v35 >= 3)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v35 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 24, v35, 0);
  v36 = (a2 - *a2);
  v38 = *v36 >= 0x17u && (v37 = v36[11]) != 0 && *(a2 + v37) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 22, v38, 0);
  v39 = (a2 - *a2);
  if (*v39 >= 0x15u && (v40 = v39[10]) != 0)
  {
    v41 = *(a2 + v40);
    if (v41 >= 2)
    {
LABEL_66:
      abort();
    }
  }

  else
  {
    v41 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, v41, 0);
  v42 = (a2 - *a2);
  if (*v42 >= 0x11u && (v43 = v42[8]) != 0)
  {
    v44 = *(a2 + v43);
    if (v44 >= 2)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v44 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, v44, 0);
  v45 = (a2 - *a2);
  v47 = *v45 < 0xDu || (v46 = v45[6]) == 0 || *(a2 + v46) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 12, v47, 1);
  v48 = (a2 - *a2);
  v50 = *v48 >= 5u && (v49 = v48[2]) != 0 && *(a2 + v49) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v50, 0);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v15 - v14 + v13);
}

void MTLCompilerObject::AIRNTGetFunctionScriptFromPipeline(uint64_t *__return_ptr a1@<X8>, const Air::PipelineScript *a2@<X1>, uint64_t a3@<X2>)
{
  v34 = 0;
  v35 = 0;
  v36 = xmmword_213C7D4D0;
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  v40 = 1;
  v41 = 256;
  v42 = 0;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v21 = Air::PipelineScript::pipeline_as_render(a2);
      v22 = (v21 - *v21);
      if (*v22 >= 9u && (v23 = v22[4]) != 0)
      {
        v24 = (v21 + v23 + *(v21 + v23));
      }

      else
      {
        v24 = 0;
      }

      MTLCompilerObject::AIRNTGetVertexFunctionScript(v21, a2, &v34, v24);
      goto LABEL_47;
    }

    if (a3 != 2)
    {
      goto LABEL_47;
    }

    if (Air::PipelineScript::pipeline_as_render(a2))
    {
      v9 = Air::PipelineScript::pipeline_as_render(a2);
      v10 = (v9 - *v9);
      if (*v10 >= 0xBu)
      {
        v11 = v10[5];
        if (v11)
        {
LABEL_14:
          v12 = (v9 + v11 + *(v9 + v11));
LABEL_46:
          MTLCompilerObject::AIRNTGetFragmentFunctionScript(v9, a2, &v34, v12);
          goto LABEL_47;
        }
      }
    }

    else
    {
      if (Air::PipelineScript::pipeline_as_tile_render(a2))
      {
LABEL_37:
        v25 = Air::PipelineScript::pipeline_as_tile_render(a2);
        v26 = (v25 - *v25);
        if (*v26 >= 7u && (v27 = v26[3]) != 0)
        {
          v28 = (v25 + v27 + *(v25 + v27));
        }

        else
        {
          v28 = 0;
        }

        MTLCompilerObject::AIRNTGetTileFunctionScript(v25, a2, &v34, v28);
        goto LABEL_47;
      }

      if (!Air::PipelineScript::pipeline_as_mesh_render(a2))
      {
        goto LABEL_47;
      }

      v9 = Air::PipelineScript::pipeline_as_mesh_render(a2);
      v29 = (v9 - *v9);
      if (*v29 >= 0xFu)
      {
        v11 = v29[7];
        if (v11)
        {
          goto LABEL_14;
        }
      }
    }

    v12 = 0;
    goto LABEL_46;
  }

  switch(a3)
  {
    case 8:
      if (Air::PipelineScript::pipeline_as_mesh_render(a2))
      {
        v13 = Air::PipelineScript::pipeline_as_mesh_render(a2);
        v14 = (v13 - *v13);
        if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
        {
          v16 = (v13 + v15 + *(v13 + v15));
        }

        else
        {
          v16 = 0;
        }

        MTLCompilerObject::AIRNTGetObjectFunctionScript(v13, a2, &v34, v16);
      }

      break;
    case 7:
      if (Air::PipelineScript::pipeline_as_mesh_render(a2))
      {
        v17 = Air::PipelineScript::pipeline_as_mesh_render(a2);
        v18 = (v17 - *v17);
        if (*v18 >= 0xDu && (v19 = v18[6]) != 0)
        {
          v20 = (v17 + v19 + *(v17 + v19));
        }

        else
        {
          v20 = 0;
        }

        MTLCompilerObject::AIRNTGetMeshFunctionScript(v17, a2, &v34, v20);
      }

      break;
    case 3:
      if (Air::PipelineScript::pipeline_as_compute(a2))
      {
        v5 = Air::PipelineScript::pipeline_as_compute(a2);
        v6 = (v5 - *v5);
        if (*v6 >= 7u && (v7 = v6[3]) != 0)
        {
          v8 = (v5 + v7 + *(v5 + v7));
        }

        else
        {
          v8 = 0;
        }

        MTLCompilerObject::AIRNTGetComputeFunctionScript(v5, a2, &v34, v8);
        break;
      }

      if (!Air::PipelineScript::pipeline_as_tile_render(a2))
      {
        break;
      }

      goto LABEL_37;
    default:
      break;
  }

LABEL_47:
  v30 = v35;
  v31 = v37;
  v32 = v38;
  v33 = (v37 + DWORD2(v37) - v38);
  *a1 = v34;
  *(a1 + 8) = v30;
  a1[2] = *(&v31 + 1);
  a1[3] = v31;
  a1[4] = v32;
  a1[5] = v33;
  if (v30 == 1)
  {
    v34 = 0;
    v35 = 0;
  }

  v37 = 0u;
  v38 = 0u;
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v34);
}

uint64_t Air::PipelineScript::pipeline_as_compute(Air::PipelineScript *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 2) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Air::PipelineScript::pipeline_as_tile_render(Air::PipelineScript *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 3) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Air::PipelineScript::pipeline_as_render(Air::PipelineScript *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 1) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
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

void logCompileError(uint64_t a1, const std::string::value_type *a2, uint64_t a3)
{
  v11[2] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, &unk_213C7E907);
  if (a2 && *a2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v7, " - ");
    v4 = std::string::append(&v7, a2);
    v5 = v4->__r_.__value_.__r.__words[0];
    v11[0] = v4->__r_.__value_.__l.__size_;
    *(v11 + 7) = *(&v4->__r_.__value_.__r.__words[1] + 7);
    v6 = HIBYTE(v4->__r_.__value_.__r.__words[2]);
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    if (v10 < 0)
    {
      operator delete(__p);
    }

    __p = v5;
    *v9 = v11[0];
    *&v9[7] = *(v11 + 7);
    v10 = v6;
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    logCompileError();
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }
}

void sub_213C60A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void *flatbuffers::DetachedBuffer::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = a1 + 2;
    v4 = a1[2];
    if (v4)
    {
      v6 = *a1;
      if (*a1)
      {
        (*(*v6 + 24))(v6);
      }

      else
      {
        MEMORY[0x21604C970](v4, 0x1000C8077774924);
      }
    }

    if (*(a1 + 8) == 1 && *a1)
    {
      (*(**a1 + 8))(*a1);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *v5 = 0u;
    *(a1 + 2) = 0u;
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    a1[2] = *(a2 + 16);
    *(a1 + 3) = *(a2 + 24);
    a1[5] = *(a2 + 40);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
  }

  return a1;
}

void flatbuffers::DetachedBuffer::~DetachedBuffer(flatbuffers::DetachedBuffer *this)
{
  v3 = (this + 16);
  v2 = *(this + 2);
  if (v2)
  {
    v4 = *this;
    if (*this)
    {
      (*(*v4 + 24))(v4);
    }

    else
    {
      MEMORY[0x21604C970](v2, 0x1000C8077774924);
    }
  }

  if (*(this + 8) == 1 && *this)
  {
    (*(**this + 8))(*this);
  }

  *this = 0;
  *(this + 8) = 0;
  *v3 = 0u;
  v3[1] = 0u;
}

uint64_t MTLCompilerPluginInterface::airntEmitPipelineImage(uint64_t a1, uint64_t a2, llvm::Module *a3, uint64_t __val, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v26 = a3;
  v17 = *(a1 + 48);
  if (v17)
  {
    v18 = v17(*(a1 + 144), a2, a5, a3, "offline_module_name", a6, a7, a8, "offline_script_name", a9, a10, a11, a12, a13);
  }

  else
  {
    v21 = a6;
    v22 = a7;
    getSerializedModule(&v25, __val);
    v23 = &v26;
    v24 = 1;
    v19 = v25;
    v18 = (*(a1 + 40))(*(a1 + 144), a2, a5, *(v25 + 8), *(v25 + 16) - *(v25 + 8), "offline_module_name", v21, v22, a8, "offline_script_name", a9, a10, a11, a12, a13);
    llvm::detail::scope_exit<MTLCompilerPluginInterface::airntEmitPipelineImage(void *,llvm::Module *,unsigned int,unsigned int,unsigned int,unsigned int,AIRFunctionScript const*,char **,unsigned long *,char **,unsigned long *,char **)::{lambda(void)#1}>::~scope_exit(&v23);
    (*(*v19 + 8))(v19);
  }

  return v18 ^ 1u;
}

void sub_213C60E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  llvm::detail::scope_exit<MTLCompilerPluginInterface::airntEmitPipelineImage(void *,llvm::Module *,unsigned int,unsigned int,unsigned int,unsigned int,AIRFunctionScript const*,char **,unsigned long *,char **,unsigned long *,char **)::{lambda(void)#1}>::~scope_exit(va);
  (*(*v16 + 8))(v16);
  _Unwind_Resume(a1);
}

void MTLCompilerObject::readVisibleFunctions(uint64_t a1, unsigned int *a2, unint64_t a3, void *a4)
{
  v7 = a2[36];
  if (v7)
  {
    v8 = (a2 + a2[37]);
    do
    {
      v9 = malloc_type_malloc(0x78uLL, 0x1050040A24A0AE1uLL);
      MTLCompilerObject::getReadParametersFromRequest(v9, v9, a2, a3, v8, a2);
      v13 = v9 + 84;
      std::__hash_table<std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(a4, (v9 + 84), &std::piecewise_construct, &v13)[6] = v9;
      v8 += 14;
      --v7;
    }

    while (v7);
  }

  v10 = a2[40];
  if (v10)
  {
    v11 = (a2 + a2[41]);
    do
    {
      v12 = malloc_type_malloc(0x78uLL, 0x1050040A24A0AE1uLL);
      MTLCompilerObject::getReadParametersFromRequest(v12, v12, a2, a3, v11, a2);
      v13 = v12 + 84;
      std::__hash_table<std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(a4, (v12 + 84), &std::piecewise_construct, &v13)[6] = v12;
      v11 += 14;
      --v10;
    }

    while (v10);
  }
}

uint64_t getRequiredStagesPresentMask(const Air::PipelineScript *this)
{
  v1 = (this - *this);
  if (*v1 < 9u)
  {
    return 0;
  }

  v2 = v1[4];
  if (!v2)
  {
    return 0;
  }

  v4 = *(this + v2);
  if ((v4 - 2) < 2)
  {
    return 2;
  }

  if (v4 == 1)
  {
    v9 = Air::PipelineScript::pipeline_as_render(this);
    v10 = (v9 - *v9);
    if (*v10 < 5u)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2 * (v10[2] != 0);
    }

    v15 = Air::PipelineScript::pipeline_as_render(this);
    v16 = (v15 - *v15);
    v17 = *v16 >= 7u && v16[3] != 0;
    return v11 | v17;
  }

  else if (v4 == 4)
  {
    v5 = Air::PipelineScript::pipeline_as_mesh_render(this);
    v6 = (v5 - *v5);
    v7 = *v6 >= 9u && v6[4] != 0;
    v12 = Air::PipelineScript::pipeline_as_mesh_render(this);
    v13 = (v12 - *v12);
    v14 = 2;
    if (*v13 >= 5u)
    {
      if (v13[2])
      {
        v14 = 6;
      }

      else
      {
        v14 = 2;
      }
    }

    return v14 | v7;
  }

  else
  {
    return 0;
  }
}

uint64_t serializeCompileTimeData(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = a2[1] - *a2;
    if (v2)
    {
      v3 = v2 >> 4;
      *result = v3;
      *(result + 2) = BYTE2(v3);
      *(result + 3) = BYTE3(v3);
      v4 = v3;
      if (v3)
      {
        v5 = 0;
        v6 = result + 4;
        v7 = 16 * v4;
        do
        {
          *v6 = *(*a2 + v5);
          *(v6 + 4) = *(*a2 + v5 + 8);
          v6 += 12;
          v5 += 16;
        }

        while (v7 != v5);
      }
    }
  }

  return result;
}

void BackendCompilationOutput::free(BackendCompilationOutput *this)
{
  v2 = *this;
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {

    free(v4);
  }
}

void MTLCompilerPluginInterface::~MTLCompilerPluginInterface(void (**this)(void))
{
  if (this[16])
  {
    this[1]();
  }

  v2 = this[14];
  if (v2)
  {
    free(v2);
  }

  v3 = this[13];
  if (v3)
  {
    free(v3);
  }

  v4 = this[17];
  if (v4)
  {
    dlclose(v4);
  }

  if (this[20])
  {
    deleteCompilerHelper();
  }

  if (this[18])
  {
    v5 = this[10];
    if (v5)
    {
      v5();
    }
  }
}

void *std::string::basic_string[abi:ne200100](void *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  *(__dst + __len) = 0;
  return __dst;
}

void FunctionDesc::~FunctionDesc(FunctionDesc *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = (this + 72);
  std::vector<FunctionConstantDesc>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::vector<FunctionConstantDesc>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 17);
    v3 -= 5;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void printDiagnosticError(uint64_t a1, uint64_t a2)
{
  llvm::raw_string_ostream::raw_string_ostream(v4, a2);
  v3[0] = MEMORY[0x277D82218] + 16;
  v3[1] = v4;
  (*(*a1 + 24))(a1, v3);
  if (v6 != v5)
  {
    llvm::raw_ostream::flush_nonempty(v4);
  }

  llvm::raw_ostream::~raw_ostream(v4);
}

void sub_213C61418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  llvm::raw_ostream::~raw_ostream(va);
  _Unwind_Resume(a1);
}

uint64_t llvm::raw_string_ostream::raw_string_ostream(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = MEMORY[0x277D821F8] + 16;
  *(a1 + 64) = a2;
  llvm::raw_ostream::SetUnbuffered(a1);
  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<MTLArgumentData>,MTLArgumentData*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 288;
      std::allocator_traits<std::allocator<MTLArgumentData>>::destroy[abi:ne200100]<MTLArgumentData,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

char *serializeOneVertexAttribute(int *a1, char **a2)
{
  v2 = *(a1 + 3);
  v3 = v2 + 1;
  v4 = a2[2];
  if (__CFADD__(v4, v2 + 1))
  {
    goto LABEL_35;
  }

  v7 = *(a1 + 2);
  v8 = a2[1];
  if (v8 >= &v4[v3])
  {
    v9 = *a2;
  }

  else
  {
    if (!v8)
    {
      v8 = 128;
      a2[1] = 128;
    }

    while (v8 < &v4[v3])
    {
      if (v8 >> 1 >= ~v8)
      {
        v8 = &v4[v3];
      }

      else
      {
        v8 += v8 >> 1;
      }
    }

    v9 = malloc_type_realloc(*a2, v8, 0x100004077774924uLL);
    *a2 = v9;
    if (!v9)
    {
      goto LABEL_35;
    }

    a2[1] = v8;
    v4 = a2[2];
  }

  memcpy(&v4[v9], v7, v2);
  a2[2][*a2 + v2] = 0;
  v10 = &a2[2][v3];
  a2[2] = v10;
  if (v10 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    goto LABEL_35;
  }

  v12 = *a1;
  v11 = a1[1];
  v13 = a2[1];
  if (v13 >= (v10 + 4))
  {
    v14 = *a2;
  }

  else
  {
    if (!v13)
    {
      v13 = 128;
      a2[1] = 128;
    }

    while (v13 < (v10 + 4))
    {
      if (v13 >> 1 >= ~v13)
      {
        v13 = (v10 + 4);
      }

      else
      {
        v13 += v13 >> 1;
      }
    }

    v14 = malloc_type_realloc(*a2, v13, 0x100004077774924uLL);
    *a2 = v14;
    if (!v14)
    {
      goto LABEL_35;
    }

    a2[1] = v13;
    v10 = a2[2];
  }

  v15 = &v10[v14];
  *v15 = v11;
  v15[2] = BYTE2(v11);
  v15[3] = ((v12 << 17) & 0x40000000 | (((v12 >> 14) & 1) << 29) & 0x7FFFFFFF | ((v12 >> 3) << 31) | v11) >> 24;
  a2[2] += 4;
  v16 = *(a1 + 4);
  v17 = strlen(v16);
  v18 = dataTypeFromString(v16, v17);
  v19 = a2[2];
  if (v19 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    goto LABEL_35;
  }

  v20 = v18;
  v21 = a2[1];
  if (v21 >= (v19 + 4))
  {
    result = *a2;
    goto LABEL_34;
  }

  if (!v21)
  {
    v21 = 128;
    a2[1] = 128;
  }

  while (v21 < (v19 + 4))
  {
    if (v21 >> 1 >= ~v21)
    {
      v21 = (v19 + 4);
    }

    else
    {
      v21 += v21 >> 1;
    }
  }

  result = malloc_type_realloc(*a2, v21, 0x100004077774924uLL);
  *a2 = result;
  if (!result)
  {
LABEL_35:
    abort();
  }

  a2[1] = v21;
  v19 = a2[2];
LABEL_34:
  *&v19[result] = v20;
  a2[2] += 4;
  return result;
}

uint64_t SerializedLibraryInfo::serializeStringArraySize(uint64_t a1, __int128 **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = 4;
  while (v2 != v3)
  {
    if (*(v2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v8, *v2, *(v2 + 1));
    }

    else
    {
      v5 = *v2;
      v8.__r_.__value_.__r.__words[2] = *(v2 + 2);
      *&v8.__r_.__value_.__l.__data_ = v5;
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      v6 = v8.__r_.__value_.__l.__size_ + 1;
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    else
    {
      v6 = HIBYTE(v8.__r_.__value_.__r.__words[2]) + 1;
    }

    v4 += v6;
    v2 = (v2 + 24);
  }

  return v4;
}

void SerializedLibraryInfo::serializeStringArray(uint64_t a1, __int128 **a2, _DWORD *a3)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = v3 == *a2;
  *a3 = -1431655765 * ((v3 - *a2) >> 3);
  if (!v5)
  {
    v6 = (a3 + 1);
    do
    {
      if (v4[23] < 0)
      {
        std::string::__init_copy_ctor_external(&__src, *v4, *(v4 + 1));
      }

      else
      {
        v7 = *v4;
        __src.__r_.__value_.__r.__words[2] = *(v4 + 2);
        *&__src.__r_.__value_.__l.__data_ = v7;
      }

      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        v10 = __src.__r_.__value_.__r.__words[0];
        strcpy(v6, __src.__r_.__value_.__l.__data_);
        v9 = __src.__r_.__value_.__l.__size_ + 1;
        operator delete(v10);
      }

      else
      {
        v8 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
        strcpy(v6, &__src);
        v9 = v8 + 1;
      }

      v6 += v9;
      v4 += 24;
    }

    while (v4 != v3);
  }
}

llvm::NamedMDNode *getMDNodeForFunctionType(llvm::Module *a1, MTLFunctionType a2)
{
  v2 = a2 - 1;
  if (a2 - 1 >= 8 || ((0xF7u >> v2) & 1) == 0)
  {
    abort();
  }

  v3 = *off_278171898[v2];
  v4 = 1;
  v9 = 1;
  if (*v3)
  {
    v7 = v3;
    v4 = 3;
  }

  v8 = v4;
  result = llvm::Module::getNamedMetadata(a1, &v7);
  if (result)
  {
    v6 = result;
    if (llvm::NamedMDNode::getNumOperands(result))
    {
      return llvm::NamedMDNode::getOperand(v6);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t llvm::SmallVector<std::string,4u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 24 * v3 - 1;
    v5 = -24 * v3;
    v6 = v4;
    do
    {
      v7 = *v6;
      v6 -= 24;
      if (v7 < 0)
      {
        operator delete(*(v4 - 23));
      }

      v4 = v6;
      v5 += 24;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::handleAllErrors<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = 0;
  llvm::handleErrors<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v3, a2, &v4);
  result = v3;
  if (v3)
  {
    return (*(*v3 + 8))(v3);
  }

  return result;
}

void sub_213C61A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MTLCompilerObject::readModuleFromBinaryRequest();
  }

  _Unwind_Resume(exception_object);
}

void *llvm::handleErrors<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *result;
  if (*result)
  {
    *result = 0;
    if ((*(*v4 + 48))(v4, MEMORY[0x277D821A8]))
    {
      *a3 = 0;
      v6 = v4[1];
      v7 = v4[2];
      if (v6 != v7)
      {
        v8 = 0;
        do
        {
          v14 = v8;
          *a3 = 0;
          v9 = *v6;
          *v6 = 0;
          v12 = v9;
          llvm::handleErrorImpl<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v12, a2, &v13);
          llvm::ErrorList::join(&v14, &v13, &v15);
          v8 = v15;
          *a3 = v15;
          v15 = 0;
          if (v13)
          {
            (*(*v13 + 8))(v13);
          }

          v10 = v12;
          v12 = 0;
          if (v10)
          {
            (*(*v10 + 8))(v10);
          }

          if (v14)
          {
            (*(*v14 + 1))(v14);
          }

          ++v6;
        }

        while (v6 != v7);
      }

      return (*(*v4 + 8))(v4);
    }

    else
    {
      v11 = v4;
      llvm::handleErrorImpl<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v11, a2, a3);
      result = v11;
      v11 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void sub_213C61C20(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

const void **llvm::ErrorList::join@<X0>(const void ***a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = *a1;
  v7 = *a2;
  if (!result)
  {
    goto LABEL_16;
  }

  if (v7)
  {
    if ((*(*result + 6))(result, MEMORY[0x277D821A8]))
    {
      v8 = *a1;
      if (*a2)
      {
        v9 = (*(**a2 + 48))(*a2, MEMORY[0x277D821A8]);
        v10 = *a2;
        if (v9)
        {
          *a2 = 0;
          v11 = v10[1];
          v12 = v10[2];
          if (v11 == v12)
          {
            goto LABEL_9;
          }

          do
          {
            result = std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:ne200100](v8 + 1, v11++);
          }

          while (v11 != v12);
          if (v10)
          {
LABEL_9:
            result = (*(*v10 + 1))(v10);
          }

LABEL_21:
          *a3 = *a1;
          goto LABEL_22;
        }
      }

      else
      {
        v10 = 0;
      }

      v15 = v10;
      *a2 = 0;
      std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:ne200100](v8 + 1, &v15);
      result = v15;
      v15 = 0;
      if (result)
      {
        result = (*(*result + 1))(result);
      }

      goto LABEL_21;
    }

    if (!*a2 || !(*(**a2 + 48))(*a2, MEMORY[0x277D821A8]))
    {
      operator new();
    }

    v13 = (*a2 + 8);
    v14 = *v13;
    v15 = *a1;
    *a1 = 0;
    std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::insert(v13, v14, &v15);
    result = v15;
    v15 = 0;
    if (result)
    {
      result = (*(*result + 1))(result);
    }

    v7 = *a2;
LABEL_16:
    *a3 = v7;
    *a2 = 0;
    return result;
  }

  *a3 = result;
LABEL_22:
  *a1 = 0;
  return result;
}

void sub_213C61F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  if (a12)
  {
    MTLCompilerObject::readModuleFromBinaryRequest();
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::handleErrorImpl<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(**a1 + 48))(*a1, MEMORY[0x277D81FF0]);
  v7 = *a1;
  *a1 = 0;
  if (result)
  {
    v8 = v7;
    llvm::ErrorHandlerTraits<void (&)(llvm::ErrorInfoBase &)>::apply<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(a2, &v8, a3);
    result = v8;
    v8 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  else
  {
    *a3 = v7;
  }

  return result;
}

void sub_213C620BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MTLCompilerObject::readModuleFromBinaryRequest();
  }

  _Unwind_Resume(exception_object);
}

const void **std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:ne200100](const void **result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v18[4] = result;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(result, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 8;
  }

  v3[1] = v7;
  return result;
}

uint64_t *std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::insert(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v13 = *a1;
    v14 = ((v6 - *a1) >> 3) + 1;
    if (v14 >> 61)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v15 = a2 - v13;
    v16 = v7 - v13;
    v17 = v16 >> 2;
    if (v16 >> 2 <= v14)
    {
      v17 = ((v6 - *a1) >> 3) + 1;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v17;
    }

    v19 = v15 >> 3;
    v32 = a1;
    if (v18)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(a1, v18);
    }

    v29 = 0;
    v30 = 8 * v19;
    v31 = (8 * v19);
    std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::emplace_back<std::unique_ptr<llvm::ErrorInfoBase>>(&v29, a3);
    v21 = v30;
    memcpy(v31, v4, a1[1] - v4);
    v22 = *a1;
    v23 = v30;
    *&v31 = v31 + a1[1] - v4;
    a1[1] = v4;
    v24 = v4 - v22;
    v25 = (v23 - (v4 - v22));
    memcpy(v25, v22, v24);
    v26 = *a1;
    *a1 = v25;
    v27 = a1[2];
    *(a1 + 1) = v31;
    *&v31 = v26;
    *(&v31 + 1) = v27;
    v29 = v26;
    v30 = v26;
    std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(&v29);
    return v21;
  }

  else if (a2 == v6)
  {
    v20 = *a3;
    *a3 = 0;
    *v6 = v20;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = v6 - 1;
    v9 = a1[1];
    if (v6 >= 8)
    {
      v10 = *v8;
      *v8 = 0;
      *v6 = v10;
      v9 = v6 + 1;
    }

    a1[1] = v9;
    std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_backward_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(v4, v8, v6);
    v11 = *a3;
    *a3 = 0;
    v12 = *v4;
    *v4 = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  return v4;
}

void sub_213C62380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<llvm::ErrorList>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = (v2 + 8);
    std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x21604C990](v2, 0xA1C4030951706);
  }

  return a1;
}

uint64_t std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t *std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::emplace_back<std::unique_ptr<llvm::ErrorInfoBase>>(uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v6 = *result;
    v5 = result[1];
    if (v5 <= *v3)
    {
      v9 = v4 - v6;
      v8 = v9 == 0;
      v10 = v9 >> 2;
      if (v8)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(v3[4], v11);
    }

    v7 = (((v5 - *v3) >> 3) + 1 + ((((v5 - *v3) >> 3) + 1) >> 63)) >> 1;
    result = std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(v5, v4, &v5[-v7]);
    v3[1] -= 8 * v7;
  }

  v12 = *a2;
  *a2 = 0;
  *v4 = v12;
  v3[2] = (v4 + 1);
  return result;
}

void *std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_backward_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(void *a1, void *a2, void *a3)
{
  if (a2 != a1)
  {
    v6 = a2;
    do
    {
      v8 = *--v6;
      v7 = v8;
      *v6 = 0;
      v10 = *--a3;
      v9 = v10;
      *a3 = v7;
      if (v10)
      {
        (*(*v9 + 8))(v9);
      }
    }

    while (v6 != a1);
  }

  return a2;
}

uint64_t *std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *v4;
      *v4 = 0;
      v7 = *a3;
      *a3 = v6;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      ++v4;
      ++a3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

uint64_t llvm::ErrorList::ErrorList(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = MEMORY[0x277D82258] + 16;
  *(a1 + 8) = 0;
  v5 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:ne200100]((a1 + 8), a2);
  std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:ne200100](v5, a3);
  return a1;
}

void sub_213C62730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void llvm::ErrorHandlerTraits<void (&)(llvm::ErrorInfoBase &)>::apply<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  (*(**a2 + 24))(__p, *a2);
  v5 = llvm::SmallVectorTemplateCommon<std::string,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::string,false>>(v4, __p, 1);
  v6 = *v4 + 24 * *(v4 + 8);
  v7 = *v5;
  *(v6 + 16) = *(v5 + 16);
  *v6 = v7;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = 0;
  ++*(v4 + 8);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  *a3 = 0;
}

void sub_213C628BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t llvm::SmallVectorTemplateCommon<std::string,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::string,false>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v4 + a3 > *(a1 + 12))
  {
    v7 = *a1 + 24 * v4;
    if (*a1 > a2 || v7 <= a2)
    {
      llvm::SmallVectorTemplateBase<std::string,false>::grow(a1, v5);
    }

    llvm::SmallVectorTemplateBase<std::string,false>::grow(a1, v5);
  }

  return a2;
}

std::string *llvm::detail::join_impl<std::string *>@<X0>(std::string *result@<X0>, std::string *a2@<X1>, const std::string::value_type *a3@<X2>, std::string::size_type a4@<X3>, std::string *a5@<X8>)
{
  *&a5->__r_.__value_.__l.__data_ = 0uLL;
  a5->__r_.__value_.__r.__words[2] = 0;
  if (result != a2)
  {
    v8 = result;
    v10 = (0xAAAAAAAAAAAAAAABLL * ((a2 - result) >> 3) - 1) * a4;
    v11 = result;
    do
    {
      size = SHIBYTE(v11->__r_.__value_.__r.__words[2]);
      if ((size & 0x8000000000000000) != 0)
      {
        size = v11->__r_.__value_.__l.__size_;
      }

      v10 += size;
      ++v11;
    }

    while (v11 != a2);
    std::string::reserve(a5, v10);
    v13 = SHIBYTE(v8->__r_.__value_.__r.__words[2]);
    if (v13 >= 0)
    {
      v14 = v8;
    }

    else
    {
      v14 = v8->__r_.__value_.__r.__words[0];
    }

    if (v13 >= 0)
    {
      v15 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = v8->__r_.__value_.__l.__size_;
    }

    result = std::string::append(a5, v14, v15);
    for (i = v8 + 1; i != a2; ++i)
    {
      std::string::append(a5, a3, a4);
      v17 = SHIBYTE(i->__r_.__value_.__r.__words[2]);
      if (v17 >= 0)
      {
        v18 = i;
      }

      else
      {
        v18 = i->__r_.__value_.__r.__words[0];
      }

      if (v17 >= 0)
      {
        v19 = HIBYTE(i->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v19 = i->__r_.__value_.__l.__size_;
      }

      result = std::string::append(a5, v18, v19);
    }
  }

  return result;
}

void sub_213C62AAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<void>(flatbuffers::FlatBufferBuilder *result, uint64_t a2, int a3)
{
  if (a3)
  {
    v5 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v6 = (*(v5 + 8) - *(v5 + 12) + *(v5 + 10) - a3 + 4);

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v5, a2, v6, 0);
  }

  return result;
}

char *flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(char *result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = result;
  if (a3 != a4 || result[80] == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(uint64_t a1, int a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 3)
  {
    flatbuffers::vector_downward::reallocate(a1, 4uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 4) = a2;
  v5 = v4 - 4;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

char *flatbuffers::FlatBufferBuilder::TrackField(char *this, uint64_t a2, unsigned int a3)
{
  v5 = this;
  v6 = *(this + 7);
  if (*(this + 6) - v6 <= 7uLL)
  {
    this = flatbuffers::vector_downward::reallocate(this, 8uLL);
    v6 = *(v5 + 7);
  }

  *v6 = a3 | (a2 << 32);
  *(v5 + 7) += 8;
  ++*(v5 + 16);
  v7 = *(v5 + 34);
  if (v7 <= a2)
  {
    LOWORD(v7) = a2;
  }

  *(v5 + 34) = v7;
  return this;
}

char *flatbuffers::FlatBufferBuilder::Align(flatbuffers::FlatBufferBuilder *this, unint64_t a2)
{
  if (*(this + 9) < a2)
  {
    *(this + 9) = a2;
  }

  return flatbuffers::vector_downward::fill(this, (a2 - 1) & -(*(this + 8) - *(this + 12) + *(this + 10)));
}

char *flatbuffers::vector_downward::fill(char *this, unint64_t a2)
{
  v3 = this;
  v4 = *(this + 6);
  if (v4 - *(this + 7) >= a2)
  {
    *(this + 6) = v4 - a2;
    if (!a2)
    {
      return this;
    }
  }

  else
  {
    this = flatbuffers::vector_downward::reallocate(this, a2);
    *(v3 + 6) -= a2;
  }

  v5 = 0;
  do
  {
    *(*(v3 + 6) + v5++) = 0;
  }

  while (a2 != v5);
  return this;
}

char *flatbuffers::vector_downward::reallocate(flatbuffers::vector_downward *this, unint64_t a2)
{
  v3 = *(this + 4);
  v4 = *(this + 5);
  v5 = v3 - *(this + 6) + v4;
  v6 = *(this + 7) - v4;
  if (v3)
  {
    v7 = v3 >> 1;
  }

  else
  {
    v7 = *(this + 2);
  }

  if (v7 <= a2)
  {
    v7 = a2;
  }

  v8 = (*(this + 3) + v3 + v7 - 1) & -*(this + 3);
  *(this + 4) = v8;
  v9 = *this;
  if (v4)
  {
    if (!v9)
    {
      v12 = &unk_282634730;
      operator new[]();
    }

    result = (*(*v9 + 32))(v9, v4, v3, v8, v5, v6);
  }

  else
  {
    if (!v9)
    {
      v12 = &unk_282634730;
      operator new[]();
    }

    result = (*(*v9 + 16))(v9, v8);
  }

  v11 = &result[*(this + 4) - v5];
  *(this + 5) = result;
  *(this + 6) = v11;
  *(this + 7) = &result[v6];
  return result;
}

char *flatbuffers::Allocator::reallocate_downward(flatbuffers::Allocator *this, unsigned __int8 *a2, uint64_t a3, uint64_t a4, size_t a5, size_t a6)
{
  v12 = (*(*this + 16))(this, a4);
  memcpy(&v12[a4 - a5], &a2[a3 - a5], a5);
  memcpy(v12, a2, a6);
  (*(*this + 24))(this, a2, a3);
  return v12;
}

void flatbuffers::DefaultAllocator::deallocate(flatbuffers::DefaultAllocator *this, unsigned __int8 *a2)
{
  if (a2)
  {
    JUMPOUT(0x21604C970);
  }
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddStruct<Air::Version>(flatbuffers::FlatBufferBuilder *result, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    v5 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v6 = *(v5 + 6);
    if ((v6 - *(v5 + 7)) <= 0xB)
    {
      flatbuffers::vector_downward::reallocate(v5, 0xCuLL);
      v6 = *(v5 + 6);
    }

    *(v5 + 6) = v6 - 12;
    v7 = *a3;
    *(v6 - 4) = *(a3 + 2);
    *(v6 - 12) = v7;
    v8 = *(v5 + 8) - *(v5 + 12) + *(v5 + 10);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v8);
  }

  return result;
}

char *flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(char *result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = result;
  if (a3 != a4 || result[80] == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(uint64_t a1, char a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 1uLL);
  v4 = *(a1 + 48);
  if (v4 == *(a1 + 56))
  {
    flatbuffers::vector_downward::reallocate(a1, 1uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 1;
  *(v4 - 1) = a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::EndTable(flatbuffers::FlatBufferBuilder *this, __int16 a2)
{
  v4 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, 0);
  if ((*(this + 34) + 2) <= 4u)
  {
    v5 = 4;
  }

  else
  {
    v5 = (*(this + 34) + 2);
  }

  *(this + 34) = v5;
  v6 = *(this + 6);
  if (v6 - *(this + 7) < v5)
  {
    flatbuffers::vector_downward::reallocate(this, v5);
    v6 = *(this + 6);
  }

  *(this + 6) = v6 - v5;
  bzero((v6 - v5), v5);
  v7 = v4 - a2;
  v9 = *(this + 6);
  v8 = *(this + 7);
  v9[1] = v7;
  *v9 = *(this + 34);
  v10 = *(this + 16);
  v11 = (v8 - 8 * v10);
  if (v10)
  {
    v12 = (v8 - 8 * v10);
    do
    {
      *(v9 + v12[2]) = v4 - *v12;
      v12 += 4;
    }

    while (v12 < v8);
  }

  *(this + 7) = v11;
  *(this + 16) = 0;
  *(this + 34) = 0;
  v13 = *(this + 4);
  v14 = *(this + 5);
  v15 = v13 - v9 + v14;
  if (*(this + 81) == 1 && v14 < v11)
  {
    v17 = *v9;
    v18 = v14 + v13;
    v19 = *(this + 5);
    while (1)
    {
      v20 = *v19;
      if (v17 == *(v18 - v20) && !memcmp((v18 - v20), v9, v17))
      {
        break;
      }

      if (++v19 >= v11)
      {
        v15 = v13 - v9 + v14;
        goto LABEL_19;
      }
    }

    v9 = (v9 + (v13 - v9 + v14 - v4));
    *(this + 6) = v9;
    v15 = v20;
  }

LABEL_19:
  if (v15 == v13 + v14 - v9)
  {
    if ((v9 - v11) <= 3)
    {
      flatbuffers::vector_downward::reallocate(this, 4uLL);
      v11 = *(this + 7);
      v13 = *(this + 4);
      v14 = *(this + 5);
    }

    *v11 = v15;
    *(this + 7) = v11 + 4;
  }

  *(v14 + v13 - v4) = v15 - v4;
  *(this + 70) = 0;
  return v4;
}

uint64_t flatbuffers::FlatBufferBuilder::Finish(flatbuffers::FlatBufferBuilder *this, int a2, const char *a3, int a4)
{
  *(this + 7) = *(this + 5);
  v8 = 4;
  if (a4)
  {
    v8 = 8;
  }

  flatbuffers::FlatBufferBuilder::PreAlign(this, v8 + 4 * (a3 != 0), *(this + 9));
  if (a3)
  {
    v9 = *(this + 6);
    if ((v9 - *(this + 7)) <= 3)
    {
      flatbuffers::vector_downward::reallocate(this, 4uLL);
      v9 = *(this + 6);
    }

    *(this + 6) = v9 - 4;
    *(v9 - 4) = *a3;
  }

  flatbuffers::FlatBufferBuilder::Align(this, 4uLL);
  result = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, *(this + 8) - *(this + 12) + *(this + 10) - a2 + 4);
  if (a4)
  {
    result = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, *(this + 8) - *(this + 12) + *(this + 10));
  }

  *(this + 71) = 1;
  return result;
}

char *flatbuffers::FlatBufferBuilder::PreAlign(flatbuffers::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  if (*(this + 9) < a3)
  {
    *(this + 9) = a3;
  }

  return flatbuffers::vector_downward::fill(this, (a3 - 1) & (-a2 - (*(this + 8) - *(this + 12) + *(this + 10))));
}

flatbuffers::vector_downward *flatbuffers::vector_downward::push(flatbuffers::vector_downward *this, const unsigned __int8 *__src, unint64_t a3)
{
  if (a3)
  {
    v5 = this;
    v6 = *(this + 6);
    if (v6 - *(this + 7) < a3)
    {
      flatbuffers::vector_downward::reallocate(this, a3);
      v6 = *(v5 + 6);
    }

    *(v5 + 6) = v6 - a3;

    return memcpy((v6 - a3), __src, a3);
  }

  return this;
}

void flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(flatbuffers::FlatBufferBuilder *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(*(this + 11), *(v2 + 8));
    MEMORY[0x21604C990](v2, 0x1060C40C2B13FB5);
  }

  flatbuffers::vector_downward::~vector_downward(this);
}

void flatbuffers::vector_downward::~vector_downward(flatbuffers::vector_downward *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *this;
    if (*this)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      MEMORY[0x21604C970](v2, 0x1000C8077774924);
    }
  }

  *(this + 5) = 0;
  if (*(this + 8) == 1 && *this)
  {
    (*(**this + 8))(*this);
  }

  *this = 0;
  *(this + 8) = 0;
}

uint64_t llvm::detail::scope_exit<MTLCompilerPluginInterface::airntEmitPipelineImage(void *,llvm::Module *,unsigned int,unsigned int,unsigned int,unsigned int,AIRFunctionScript const*,char **,unsigned long *,char **,unsigned long *,char **)::{lambda(void)#1}>::~scope_exit(uint64_t a1)
{
  if (*(a1 + 8) == 1 && **a1)
  {
    v2 = MEMORY[0x21604BFC0]();
    MEMORY[0x21604C990](v2, 0x10B2C407FF26C1CLL);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_28;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_28:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_28;
    }

LABEL_27:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_28;
    }
  }

  if (v9[2] != *a2 || v9[3] != a2[1] || v9[4] != a2[2] || v9[5] != a2[3])
  {
    goto LABEL_27;
  }

  return v9;
}

void llvm::SMDiagnostic::~SMDiagnostic(llvm::SMDiagnostic *this)
{
  llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(this + 128);
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}