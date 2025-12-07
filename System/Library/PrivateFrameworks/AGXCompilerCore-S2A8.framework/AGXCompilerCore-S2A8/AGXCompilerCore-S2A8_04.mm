llvm::Instruction *sub_23C4EC4B4(uint64_t a1, llvm::GlobalValue *this, uint64_t a3)
{
  v3 = a3;
  v31[2] = *MEMORY[0x277D85DE8];
  v6 = sub_23C4EC884(this);
  if (v6)
  {
    return *(v6 - 32 * (*(v6 + 20) & 0x7FFFFFF) + 32 * v3);
  }

  if (v3 == 8 || (v8 = sub_23C4EC914(a1, this)) == 0)
  {
    v9 = a1 + *(*a1 - 24);
    if ((*(*(v9 + 344) + 1678) & 1) != 0 || v3 <= 8 && ((1 << v3) & 0x103) != 0)
    {
      v10 = *(a1 + 56 * v3 + 1000);
      if (v10)
      {
        v11 = *(v9 + 184);
        v27 = 257;
        v12 = sub_23C49ACF8(v9 + 8, 47, this, v11, v26);
        if (*(a1 + 2385) == 1)
        {
          v13 = a1 + *(*a1 - 24);
          v28 = sub_23C49BBA0((a1 + 168), *(*(v13 + 344) + 1576));
          LODWORD(v29) = v14;
          llvm::TypeSize::operator unsigned long long();
          v15 = llvm::ConstantInt::get();
          v27 = 257;
          v12 = sub_23C4CBA68(v13 + 8, v12, v15, v26);
        }

        v16 = a1 + *(*a1 - 24);
        if (v3 > 1 || *(v12 + 16) < 0x15u)
        {
          v28 = llvm::ConstantInt::get();
          v29 = v12;
          v27 = 257;
          return sub_23C4ED3A0(v16, v10, &v28, 2, v26);
        }

        else
        {
          v17 = llvm::PointerType::get();
          v18 = sub_23C49B938(a1 + *(*a1 - 24), "llvm.agx.textureState", 21, v17, v17, *(a1 + *(*a1 - 24) + 200));
          v19 = a1 + *(*a1 - 24);
          v27 = 257;
          v31[0] = sub_23C49ACF8(v19 + 8, 49, v10, v17, v26);
          v20 = a1 + *(*a1 - 24);
          v21 = *(v20 + 200);
          v30 = 257;
          v31[1] = sub_23C49ACF8(v20 + 8, 39, v12, v21, &v28);
          v25[16] = 257;
          v22 = sub_23C497A7C((v19 + 8), *(v18 + 24), v18, v31, 2, v25);
          v23 = a1 + *(*a1 - 24);
          v24 = llvm::PointerType::get();
          v27 = 257;
          return sub_23C49ACF8(v23 + 8, 49, v22, v24, v26);
        }
      }

      else
      {
        llvm::PointerType::get();

        return llvm::UndefValue::get();
      }
    }

    v8 = sub_23C4ED304(a1, this);
  }

  return sub_23C4EC9BC(a1, v8, v3);
}

uint64_t sub_23C4EC884(llvm::GlobalValue *this)
{
  while (1)
  {
    v2 = *(this + 16);
    if (v2 > 0x1B)
    {
      if (v2 != 77)
      {
        return 0;
      }

      goto LABEL_6;
    }

    if (v2 != 5)
    {
      break;
    }

    if (*(this + 9) != 49)
    {
      return 0;
    }

LABEL_6:
    v3 = *(this + 5);
    if ((v3 & 0x40000000) != 0)
    {
      v4 = *(this - 1);
    }

    else
    {
      v4 = (this - 32 * (v3 & 0x7FFFFFF));
    }

    this = *v4;
  }

  if (v2 != 3 || (llvm::GlobalValue::isDeclaration(this) & 1) != 0)
  {
    return 0;
  }

  return *(this - 4);
}

uint64_t sub_23C4EC914(void ***a1, void *a2)
{
  v4 = a1 + 111;
  v5 = sub_23C4ED7D8(a1 + 111, a2);
  v6 = a1[112];
  v7 = 16;
  if (v6 == a1[111])
  {
    v7 = 20;
  }

  if (v5 == &v6[*(v4 + v7)])
  {
    return 0;
  }

  v8 = *(*a1 - 3) + a1;
  v9 = *(v8 + 24);
  v12 = 257;
  return sub_23C49ACF8((v8 + 8), 47, a2, v9, v11);
}

uint64_t sub_23C4EC9BC(char *a1, uint64_t *a2, unsigned int a3)
{
  v6 = a3 == 1;
  v7 = &a1[24 * v6];
  v8 = v7[238];
  if (!v8)
  {
    if ((atomic_load_explicit(&qword_27E1F7350, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F7350))
    {
      v40 = *(*&a1[*(*a1 - 24) + 344] + 792);
      dword_27E1F7330[0] = (*(*v40 + 304))(v40);
      v41 = *(*&a1[*(*a1 - 24) + 344] + 792);
      dword_27E1F7334 = (*(*v41 + 160))(v41);
      dword_27E1F7338 = (*(**(*&a1[*(*a1 - 24) + 344] + 792) + 312))();
      v42 = *(*&a1[*(*a1 - 24) + 344] + 792);
      dword_27E1F733C = (*(*v42 + 168))(v42);
      dword_27E1F7340 = (*(**(*&a1[*(*a1 - 24) + 344] + 792) + 320))();
      v43 = *(*&a1[*(*a1 - 24) + 344] + 792);
      dword_27E1F7344 = (*(*v43 + 176))(v43);
      dword_27E1F7348 = (*(**(*&a1[*(*a1 - 24) + 344] + 792) + 328))();
      v44 = *(*&a1[*(*a1 - 24) + 344] + 792);
      dword_27E1F734C = (*(*v44 + 184))(v44);
      __cxa_guard_release(&qword_27E1F7350);
    }

    v9 = (v7 + 236);
    v10 = a1[2385];
    v11 = (*(*&a1[*(*a1 - 24)] + 32))(&a1[*(*a1 - 24)]) != 2 && (*(*&a1[*(*a1 - 24)] + 32))(&a1[*(*a1 - 24)]) != 16;
    v12 = dword_27E1F7330[4 * v10 + 2 * v6 + v11];
    v13 = llvm::PointerType::get();
    v66[0] = "agc.texture_heap.";
    v66[2] = v12;
    v67 = 2051;
    v14 = sub_23C4ED494(a1, v13, v66, v12, 0, 5u);
    sub_23C4D56F8(v9, v14);
    v8 = *(v9 + 2);
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      return 0;
    }

    if (a3 == 9)
    {
      v17 = sub_23C506824(&a1[*(*a1 - 24)], *&a1[*(*a1 - 24) + 200]);
      v18 = &a1[*(*a1 - 24)];
      v19 = *(v18 + 25);
      v67 = 257;
      v20 = sub_23C49ACF8((v18 + 8), 39, a2, v19, v66);
      sub_23C4BA8C0(v18 + 1, v20, v17, 0);
      return v17;
    }
  }

  else
  {
    if (a3 < 2)
    {
      v15 = &a1[*(*a1 - 24)];
      v16 = llvm::PointerType::get();
      v67 = 257;
      return sub_23C49ACF8((v15 + 8), 49, v8, v16, v66);
    }

    if (a3 == 2)
    {
      v21 = llvm::FixedVectorType::get();
      goto LABEL_17;
    }
  }

  v21 = *&a1[*(*a1 - 24) + 192];
LABEL_17:
  v22 = llvm::PointerType::get();
  v23 = llvm::PointerType::get();
  v17 = sub_23C506824(&a1[*(*a1 - 24)], v21);
  v24 = &a1[*(*a1 - 24)];
  v67 = 257;
  v25 = sub_23C497C88(v24 + 1, **(*v8 + 16), v8, 0, v66);
  v65 = 257;
  v26 = sub_23C49ACF8((v24 + 1), 49, v25, v22, v64);
  v63 = 257;
  v27 = sub_23C49AEB8(v24, v26, a2, v62);
  v61 = 257;
  v28 = sub_23C49ACF8((v24 + 1), 49, v27, v23, v60);
  if (a3 > 4)
  {
    switch(a3)
    {
      case 5u:
        v33 = &a1[*(*a1 - 24)];
        v34 = *(v33 + 43);
        v54 = *(v33 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v55, (v33 + 8));
        v56 = *(v33 + 26);
        (*(*v34 + 456))(v34, &v54, v28, v17);
        if (!v55)
        {
          return v17;
        }

        break;
      case 6u:
        v36 = &a1[*(*a1 - 24)];
        v37 = *(v36 + 43);
        v51 = *(v36 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v52, (v36 + 8));
        v53 = *(v36 + 26);
        (*(*v37 + 464))(v37, &v51, v28, v17);
        if (!v52)
        {
          return v17;
        }

        break;
      case 7u:
        v29 = &a1[*(*a1 - 24)];
        v30 = *(v29 + 43);
        v48 = *(v29 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v49, (v29 + 8));
        v50 = *(v29 + 26);
        (*(*v30 + 472))(v30, &v48, v28, v17);
        if (!v49)
        {
          return v17;
        }

        break;
      default:
        return v17;
    }

    goto LABEL_28;
  }

  if (a3 == 2)
  {
    v38 = &a1[*(*a1 - 24)];
    v39 = *(v38 + 43);
    v57 = *(v38 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v58, (v38 + 8));
    v59 = *(v38 + 26);
    (*(*v39 + 448))(v39, &v57, v28, v17);
    if (!v58)
    {
      return v17;
    }

    goto LABEL_28;
  }

  if (a3 == 4)
  {
    v31 = &a1[*(*a1 - 24)];
    v32 = *(v31 + 43);
    v45 = *(v31 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v46, (v31 + 8));
    v47 = *(v31 + 26);
    (*(*v32 + 480))(v32, &v45, v28, v17);
    if (v46)
    {
LABEL_28:
      llvm::MetadataTracking::untrack();
    }
  }

  return v17;
}

uint64_t sub_23C4ED304(uint64_t a1, llvm::GlobalValue *this)
{
  if ((*(a1 + 2385) & 1) != 0 || (result = sub_23C4EC914(a1, this)) == 0)
  {
    v5 = a1 + *(*a1 - 24);
    v6 = sub_23C4EC4B4(a1, this, 8);
    v8 = 257;
    return sub_23C497C88((v5 + 8), **(*v6 + 16), v6, 0, v7);
  }

  return result;
}

llvm::Instruction *sub_23C4ED3A0(uint64_t a1, uint64_t *a2, uint64_t **a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v10 = **(v10 + 16);
  }

  v11 = **(v10 + 16);
  v12 = (*(**(a1 + 80) + 48))(*(a1 + 80), v11, a2, a3, a4, 0);
  if (!v12)
  {
    v15 = 257;
    v12 = sub_23C49AFDC(v11, a2, a3, a4, v14, 0);
    sub_23C49B15C((a1 + 8), v12, a5);
  }

  return v12;
}

llvm::ValueAsMetadata *sub_23C4ED494(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v29[4] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 2304);
  v10 = *(a1 + 2312);
  if (v10)
  {
    do
    {
      v11 = v10 >> 1;
      v12 = &v9[2 * (v10 >> 1)];
      v14 = *v12;
      v13 = v12 + 4;
      v10 += ~(v10 >> 1);
      if (v14 < a4)
      {
        v9 = v13;
      }

      else
      {
        v10 = v11;
      }
    }

    while (v10);
  }

  v15 = llvm::User::operator new(0x58);
  v16 = llvm::GlobalVariable::GlobalVariable();
  *(v16 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  v17 = *(a1 + 2304);
  v18 = *(a1 + 2312);
  if ((v17 + 16 * v18) == v9)
  {
    if (v18 >= *(a1 + 2316))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v21 = (v17 + 16 * v18);
    *v21 = a4;
    v21[1] = v15;
    ++*(a1 + 2312);
  }

  else
  {
    if (v18 >= *(a1 + 2316))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v17 + 16 * v18) = *(v17 + 16 * v18 - 16);
    v19 = *(a1 + 2312);
    v20 = *(a1 + 2304) + 16 * v19 - 16;
    if (v20 != v9)
    {
      memmove(v9 + 2, v9, v20 - v9);
      LODWORD(v19) = *(a1 + 2312);
    }

    *(a1 + 2312) = v19 + 1;
    *v9 = a4;
    v9[1] = v15;
  }

  v22 = llvm::ValueAsMetadata::get();
  llvm::ConstantInt::get();
  v23 = llvm::ValueAsMetadata::get();
  llvm::ConstantInt::get();
  v28[0] = v29;
  v29[0] = v22;
  v29[1] = v23;
  v29[2] = llvm::ValueAsMetadata::get();
  v28[1] = 0x400000003;
  if (a5)
  {
    llvm::ConstantInt::get();
    v24 = llvm::ValueAsMetadata::get();
    sub_23C49B500(v28, v24);
  }

  v25 = *(a1 + *(*a1 - 24) + 328);
  Impl = llvm::MDTuple::getImpl();
  sub_23C49B500(v25, Impl);
  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  return v15;
}

void **sub_23C4ED7D8(void ***this, void *a2)
{
  result = *this;
  v5 = this[1];
  if (v5 != result)
  {
    result = llvm::SmallPtrSetImplBase::FindBucketFor(this, a2);
    if (*result == a2)
    {
      return result;
    }

    v5 = this[1];
    v7 = 16;
    if (v5 == *this)
    {
      v7 = 20;
    }

    v8 = *(this + v7);
    return &v5[v8];
  }

  v8 = *(this + 5);
  if (!v8)
  {
    return &v5[v8];
  }

  v9 = 8 * v8;
  while (*result != a2)
  {
    ++result;
    v9 -= 8;
    if (!v9)
    {
      return &v5[v8];
    }
  }

  return result;
}

void sub_23C4ED864(void *a1)
{
  if (a1)
  {
    sub_23C4ED864(*a1);
    sub_23C4ED864(a1[1]);
    v2 = a1[6];
    if (v2 != -8192 && v2 != -4096 && v2 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t sub_23C4ED8D0(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    v1 = result;
    sub_23C4ED91C(result);
    result = llvm::deallocate_buffer(*v1, (16 * *(v1 + 16)));
    *(v1 + 24) = 0;
  }

  return result;
}

unsigned int *sub_23C4ED91C(unsigned int *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = 16 * v1;
    v3 = (*result + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (*v3)
        {
          result = llvm::MetadataTracking::untrack();
        }
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_23C4ED97C(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  sub_23C4EDBD4(v12, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v14 = v4;
  v19 = 0;
  result = sub_23C4FB49C(*v4, v4[2].i32[0], v13, &v19);
  if (result)
  {
    v6 = v19;
  }

  else
  {
    v6 = (*v4 + 48 * v4[2].u32[0]);
  }

  v7 = v14;
  if ((*v14 + 48 * v14[2].u32[0]) != v6)
  {
    v8 = v6[5];
    v20[0] = 2;
    v20[1] = 0;
    v21 = -8192;
    v22 = 0;
    v19 = &unk_284F1B7D8;
    sub_23C4DDEAC((v6 + 1), v20);
    v9 = v21;
    v6[4] = v22;
    if (v9 != -8192 && v9 != -4096 && v9)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v20);
    }

    v7[1] = vadd_s32(v7[1], 0x1FFFFFFFFLL);
    v10 = v14;
    sub_23C4EDC2C(&v15, a2);
    v15 = &unk_284F1B7D8;
    v18 = v10;
    sub_23C4EDBD4(v20, (v16[0] >> 1) & 3, v16);
    v19 = &unk_284F1B7D8;
    v22 = v18;
    v23 = v8;
    v24 = 0;
    result = sub_23C4FB49C(*v10, *(v10 + 16), v21, &v24);
    if ((result & 1) == 0)
    {
      v11 = sub_23C4EDC90(v10, &v19, v24);
      result = sub_23C4DDEAC((v11 + 1), v20);
      v11[4] = v22;
      v11[5] = v23;
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

llvm::ValueHandleBase *sub_23C4EDBD4(llvm::ValueHandleBase *this, unsigned int a2, void *a3)
{
  *this = 2 * a2;
  *(this + 1) = 0;
  v4 = a3[2];
  *(this + 2) = v4;
  if (v4 != -8192 && v4 != -4096 && v4 != 0)
  {
    llvm::ValueHandleBase::AddToExistingUseList(this, (*a3 & 0xFFFFFFFFFFFFFFF8));
  }

  return this;
}

void *sub_23C4EDC2C(void *a1, uint64_t a2)
{
  a1[1] = 2;
  a1[2] = 0;
  v3 = (a1 + 1);
  *(v3 + 2) = a2;
  if (a2 != -8192 && a2 != -4096 && a2)
  {
    llvm::ValueHandleBase::AddToUseList(v3);
  }

  *a1 = MEMORY[0x277D821C0] + 16;
  return a1;
}

uint64_t sub_23C4EDC90(uint64_t a1, uint64_t a2, uint64_t a3)
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

  sub_23C4EDD44(a1, v6);
  v8 = 0;
  sub_23C4FB49C(*a1, *(a1 + 16), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *sub_23C4EDD44(llvm **a1, int a2)
{
  v3 = *(a1 + 4);
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

  *(a1 + 4) = v8;
  *a1 = MEMORY[0x23EED4160](v8, 48 * v8, 8);
  if (v4)
  {
    sub_23C4EDF58(a1);
    v21[0] = 2;
    v21[1] = 0;
    v22 = -4096;
    v23 = 0;
    v19 = 0;
    v20 = &unk_284F1B7D8;
    v17[0] = 2;
    v17[1] = 0;
    v18 = -8192;
    v9 = 3 * v3;
    if (v3)
    {
      v10 = (v4 + 24);
      v11 = 16 * v9;
      do
      {
        v12 = *v10;
        if (*v10 != v22 && v12 != v18)
        {
          v24 = 0;
          sub_23C4FB49C(*a1, *(a1 + 4), v12, &v24);
          v14 = v24;
          sub_23C4DDEAC((v24 + 8), v10 - 2);
          *(v14 + 32) = v10[1];
          *(v14 + 40) = v10[2];
          ++*(a1 + 2);
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
      if (v18 != -8192 && v18 != -4096 && v18)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v17);
      }
    }

    if (v22 != -8192 && v22 != -4096 && v22)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v21);
    }

    return llvm::deallocate_buffer(v4, (16 * v9));
  }

  else
  {

    return sub_23C4EDF58(a1);
  }
}

uint64_t *sub_23C4EDF58(uint64_t *result)
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
    v3 = *result + 48 * v1;
    result = (*result + 8);
    do
    {
      v4 = sub_23C4EDBD4(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_284F1B7D8;
      *(v4 + 3) = v9;
      v5 = v4 + 40;
      result = (v4 + 48);
      v2 += 48;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

llvm::ValueHandleBase *sub_23C4EE038(uint64_t a1)
{
  v1 = a1 + 8;
  sub_23C4EDBD4(v7, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v9 = v2;
  v10 = 0;
  result = sub_23C4FB49C(*v2, *(v2 + 16), v8, &v10);
  if (result)
  {
    v4 = v10;
    v11[0] = 2;
    v11[1] = 0;
    v12 = -8192;
    v13 = 0;
    v10 = &unk_284F1B7D8;
    result = sub_23C4DDEAC((v4 + 1), v11);
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

unsigned int *sub_23C4EE154(unsigned int *result)
{
  v1 = result[4];
  if (v1)
  {
    v11 = 2;
    v12 = 0;
    v13 = -4096;
    v14 = 0;
    v9 = 0;
    v10 = &unk_284F1B7D8;
    v6 = 2;
    v7 = 0;
    v8 = -8192;
    v2 = 48 * v1;
    v3 = (*result + 24);
    do
    {
      v4 = *v3;
      if (*v3 != -8192 && v4 != -4096 && v4 != 0)
      {
        result = llvm::ValueHandleBase::RemoveFromUseList((v3 - 2));
      }

      v3 += 6;
      v2 -= 48;
    }

    while (v2);
  }

  return result;
}

unsigned int *sub_23C4EE264(void *a1, llvm::GlobalValue *this, uint64_t a3)
{
  v3 = a3;
  v6 = sub_23C4EC884(this);
  if (v6)
  {
    v7 = *(v6 - 32 * (*(v6 + 20) & 0x7FFFFFF) + 32 * v3);
    if (v3 == 2)
    {
      v8 = (a1 + *(*a1 - 24));
      v14 = 257;
      return sub_23C497C88(v8 + 1, **(*v7 + 16), v7, 0, &v13);
    }

    return v7;
  }

  v9 = &a1[7 * v3];
  v10 = v9[195];
  v11 = v9[216];
  if (v10)
  {
    if (v11)
    {
      llvm::BasicBlock::splitBasicBlock();
      v13 = "non_constant_sampler";
      v14 = 259;
      operator new();
    }

    goto LABEL_11;
  }

  if (!v11)
  {
LABEL_11:

    return sub_23C4EE9CC(a1, this, v3);
  }

  return sub_23C4EE72C(a1, this, v3);
}

uint64_t sub_23C4EE72C(void *a1, uint64_t a2, unsigned int a3)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v5 = a1[7 * a3 + 216];
  if (v5)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 23);
    v25 = 257;
    v8 = sub_23C49ACF8((v6 + 8), 47, a2, v7, v24);
    v9 = a1 + *(*a1 - 24);
    if (!a3 && *(v8 + 16) >= 0x15u)
    {
      v10 = llvm::PointerType::get();
      v11 = sub_23C49B938(a1 + *(*a1 - 24), "llvm.agx.samplerState", 21, v10, v10, *(a1 + *(*a1 - 24) + 200));
      v12 = (a1 + *(*a1 - 24));
      v25 = 257;
      v28[0] = sub_23C49ACF8((v12 + 1), 49, v5, v10, v24);
      v13 = a1 + *(*a1 - 24);
      v14 = *(v13 + 25);
      v27 = 257;
      v28[1] = sub_23C49ACF8((v13 + 8), 39, v8, v14, v26);
      v23[16] = 257;
      v15 = sub_23C497A7C(v12 + 1, *(v11 + 24), v11, v28, 2, v23);
      v16 = a1 + *(*a1 - 24);
      v17 = llvm::PointerType::get();
      v25 = 257;
      return sub_23C49ACF8((v16 + 8), 49, v15, v17, v24);
    }

    v26[0] = llvm::ConstantInt::get();
    v26[1] = v8;
    v25 = 257;
    v19 = sub_23C4ED3A0(v9, v5, v26, 2, v24);
  }

  else
  {
    llvm::PointerType::get();
    v19 = llvm::UndefValue::get();
  }

  v20 = v19;
  if (a3 == 2)
  {
    v21 = (a1 + *(*a1 - 24));
    v25 = 257;
    return sub_23C497C88(v21 + 1, **(*v19 + 16), v19, 0, v24);
  }

  return v20;
}

uint64_t sub_23C4EE9CC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 56 * a3 + 1560);
  if (v5)
  {
    v7 = a1 + *(*a1 - 24);
    v8 = *(v7 + 184);
    v34 = 257;
    v9 = sub_23C49ACF8(v7 + 8, 47, a2, v8, v33);
    v10 = a1 + *(*a1 - 24);
    if (!a3 && *(v9 + 16) >= 0x15u)
    {
      v11 = llvm::PointerType::get();
      v12 = sub_23C49B938(a1 + *(*a1 - 24), "llvm.agx.samplerState", 21, v11, v11, *(a1 + *(*a1 - 24) + 200));
      v13 = a1 + *(*a1 - 24);
      v34 = 257;
      v39[0] = sub_23C49ACF8(v13 + 8, 49, v5, v11, v33);
      v14 = a1 + *(*a1 - 24);
      v15 = *(v14 + 200);
      v38 = 257;
      v39[1] = sub_23C49ACF8(v14 + 8, 39, v9, v15, v37);
      v36 = 257;
      v16 = sub_23C497A7C((v13 + 8), *(v12 + 24), v12, v39, 2, v35);
      v17 = a1 + *(*a1 - 24);
      v18 = llvm::PointerType::get();
      v34 = 257;
      return sub_23C49ACF8(v17 + 8, 49, v16, v18, v33);
    }

    if (a3 == 2 && (*(*(v10 + 344) + 1678) & 1) == 0 && *(a1 + 2160))
    {
      v21 = llvm::ConstantInt::get();
      v22 = sub_23C506630(v10, v9, v21, 36);
      v23 = a1 + *(*a1 - 24);
      v35[0] = llvm::ConstantInt::get();
      v35[1] = v22;
      v34 = 257;
      v24 = sub_23C4ED3A0(v23, v5, v35, 2, v33);
      v38 = 257;
      sub_23C497C88((v23 + 8), **(*v24 + 16), v24, 0, v37);
      v25 = a1 + *(*a1 - 24);
      v26 = *(v25 + 200);
      v34 = 257;
      sub_23C49ACF8(v25 + 8, 47, a2, v26, v33);
      v27 = a1 + *(*a1 - 24);
      v28 = llvm::ConstantInt::get();
      v34 = 257;
      sub_23C497D84((v27 + 8), 36, v9, v28, v33);
      v38 = 257;
      Select = llvm::IRBuilderBase::CreateSelect();
      v30 = sub_23C506824(a1 + *(*a1 - 24), *(a1 + *(*a1 - 24) + 200));
      sub_23C4BA8C0((a1 + *(*a1 - 24) + 8), Select, v30, 0);
LABEL_12:
      v31 = a1 + *(*a1 - 24);
      v34 = 257;
      return sub_23C497C88((v31 + 8), **(*v30 + 16), v30, 0, v33);
    }

    v37[0] = llvm::ConstantInt::get();
    v37[1] = v9;
    v34 = 257;
    v20 = sub_23C4ED3A0(v10, v5, v37, 2, v33);
  }

  else
  {
    llvm::PointerType::get();
    v20 = llvm::UndefValue::get();
  }

  v30 = v20;
  if (a3 == 2)
  {
    goto LABEL_12;
  }

  return v30;
}

unsigned __int8 *sub_23C4EEE44(char *a1, llvm::GlobalValue *this)
{
  v4 = &a1[*(*a1 - 24)];
  if (*(*(v4 + 43) + 1678) == 1)
  {
    v5 = sub_23C4EC4B4(a1, this, 2);
    v27 = 257;
    v6 = sub_23C497C88(v4 + 1, **(*v5 + 16), v5, 0, v26);
    v7 = &a1[*(*a1 - 24)];
    v27 = 257;
    v8 = llvm::ConstantInt::get();
    return sub_23C5057E8((v7 + 8), v6, v8, v26);
  }

  else
  {
    v10 = *(a1 + 244);
    if (!v10)
    {
      if ((*(*v4 + 32))(&a1[*(*a1 - 24)]) == 2 || (*(*&a1[*(*a1 - 24)] + 32))(&a1[*(*a1 - 24)]) == 16)
      {
        v11 = *(*&a1[*(*a1 - 24) + 344] + 792);
        v12 = (*(*v11 + 336))(v11);
      }

      else
      {
        v13 = *(*&a1[*(*a1 - 24) + 344] + 792);
        v12 = (*(*v13 + 192))(v13);
      }

      v14 = v12;
      v15 = llvm::PointerType::get();
      v26[0] = "agc.texture_heap.";
      v26[2] = v14;
      v27 = 2051;
      v16 = sub_23C4ED494(a1, v15, v26, v14, 0, 5u);
      sub_23C4D56F8((a1 + 1936), v16);
      v10 = *(a1 + 244);
    }

    v17 = sub_23C4ED304(a1, this);
    v18 = &a1[*(*a1 - 24)];
    v19 = llvm::ConstantInt::get();
    v27 = 257;
    v20 = sub_23C4CBA68((v18 + 8), v17, v19, v26);
    v21 = &a1[*(*a1 - 24)];
    v27 = 257;
    v22 = sub_23C497C88(v21 + 1, **(*v10 + 16), v10, 0, v26);
    v25[16] = 257;
    v23 = sub_23C49AEB8(v21, v22, v20, v25);
    v24 = &a1[*(*a1 - 24)];
    v27 = 257;
    return sub_23C497C88(v24 + 1, **(*v23 + 16), v23, 0, v26);
  }
}

uint64_t sub_23C4EF198(uint64_t *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = a2;
  v13[0] = "agc.const_sampler_state_struct_ptr_";
  v14 = &v12;
  v15 = 3587;
  llvm::Twine::str(&__p, v13);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    v5 = (a1[99] - a1[98]) >> 3;
    sub_23C4E9244((a1 + 98), &v12);
    (*(*a1 + 296))(a1);
    v6 = llvm::User::operator new(0x58);
    v13[0] = "agc.const_sampler_state_words_";
    v14 = &v12;
    v15 = 3587;
    v7 = llvm::GlobalVariable::GlobalVariable();
    *(v7 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    llvm::GlobalObject::setAlignment();
    sub_23C506A1C(a1 + *(*a1 - 24), v6, 0x12u, v5);
    v13[0] = llvm::PointerType::get();
    llvm::StructType::get();
    v13[0] = v6;
    llvm::ConstantStruct::get();
    GlobalVariable = llvm::User::operator new(0x58);
    v15 = 260;
    v13[0] = &__p;
    v8 = llvm::GlobalVariable::GlobalVariable();
    *(v8 + 80) |= 1u;
    llvm::GlobalVariable::setInitializer();
    v13[0] = 4;
    v13[1] = 0;
    v14 = GlobalVariable;
    v9 = GlobalVariable;
    if (GlobalVariable != -8192)
    {
      v9 = GlobalVariable;
      if (GlobalVariable != -4096)
      {
        v9 = GlobalVariable;
        if (GlobalVariable)
        {
          llvm::ValueHandleBase::AddToUseList(v13);
          v9 = v14;
        }
      }
    }

    sub_23C4EF514(a1 + 95, v9, v13);
    if (v14 != -8192 && v14 != -4096 && v14)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v13);
    }
  }

  if (v11 < 0)
  {
    operator delete(__p);
  }

  return GlobalVariable;
}

uint64_t *sub_23C4EF514(uint64_t *result, unint64_t a2, void *a3)
{
  v3 = result[1];
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
      v5 = *(v3 + 48);
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
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

unsigned __int8 *sub_23C4EF5F0(uint64_t a1, llvm::Value **a2, llvm::Value *a3, uint64_t a4, llvm::Instruction *a5)
{
  TruncOrBitCast = a2;
  if (*a2 != a3)
  {
    if (*(a2 + 16) > 0x14u)
    {
      TruncOrBitCast = llvm::CastInst::CreateTruncOrBitCast();
      sub_23C49B15C(a1, TruncOrBitCast, a4);
    }

    else
    {
      TruncOrBitCast = (*(**(a1 + 72) + 304))(*(a1 + 72), a2, a3, a4, a5);
      if (TruncOrBitCast)
      {
        v8 = TruncOrBitCast[16] >= 0x1Cu;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        sub_23C49B15C(a1, TruncOrBitCast, a4);
      }
    }
  }

  return TruncOrBitCast;
}

uint64_t sub_23C4EF6D8(void ***a1, void *a2)
{
  v3 = sub_23C4EC914(a1, a2);
  v4 = *(*a1 - 3) + a1;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = llvm::ConstantInt::get();
  }

  v6 = llvm::PointerType::get();
  v9 = 257;
  return sub_23C49ACF8((v4 + 8), 48, v5, v6, v8);
}

uint64_t sub_23C4EF78C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a2)
  {
    return a1 + 48 * a2;
  }

  v3 = a2 - 1;
  v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
  v5 = a1 + 48 * v4;
  v6 = *(v5 + 24);
  if (v6 != a3)
  {
    v7 = 1;
    while (v6 != -4096)
    {
      v8 = v4 + v7++;
      v4 = v8 & v3;
      v5 = a1 + 48 * (v8 & v3);
      v6 = *(v5 + 24);
      if (v6 == a3)
      {
        return v5;
      }
    }

    return a1 + 48 * a2;
  }

  return v5;
}

uint64_t sub_23C4EF7F0(char *a1, uint64_t a2, unsigned __int16 *a3)
{
  v3 = a3;
  v4 = a2;
  v143 = *MEMORY[0x277D85DE8];
  if (*a2 == 5)
  {
    v6 = *(a2 + 8);
    *(a2 + 8) = 0;
    v7 = &a1[*(*a1 - 24)];
    v8 = *(v7 + 43);
    v128 = *(v7 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v129, (v7 + 8));
    v130 = *(v7 + 26);
    (*(*v8 + 248))(v8, &v128, v4);
    if (v129)
    {
      llvm::MetadataTracking::untrack();
    }

    if ((*v3 & 0xF) != 0)
    {
      v10 = *(v4 + 184);
      if ((*v3 & 0x10) != 0)
      {
        v11 = &a1[*(*a1 - 24)];
        v12 = *(v11 + 43);
        v132 = *(v11 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v133, (v11 + 8));
        v134 = *(v11 + 26);
        v10 = (*(*v12 + 40))(v12, &v132, v10, 0);
        if (v133)
        {
          llvm::MetadataTracking::untrack();
        }
      }

      sub_23C5060BC(&a1[*(*a1 - 24)], 4, v10, v9);
      v13 = &a1[*(*a1 - 24)];
      v14 = llvm::ConstantFP::get();
      sub_23C5060BC(v13, 4, v14, v15);
      v16 = &a1[*(*a1 - 24)];
      v17 = llvm::ConstantFP::get();
      sub_23C5060BC(v16, 4, v17, v18);
      v142 = 257;
      llvm::IRBuilderBase::CreateFCmpHelper();
      v142 = 257;
      llvm::IRBuilderBase::CreateSelect();
    }

    *(v4 + 8) = v6;
    v22 = **&a1[*(*a1 - 24)];
  }

  else
  {
    v19 = *(a2 + 184);
    v119 = *(a2 + 8);
    v20 = *a3;
    v21 = (*a3 & 0xF) == 0 || (*a3 & 0x1C0) == 0;
    if (v21 || sub_23C4F0890(a1, *(a2 + 4), *a3))
    {
      *(v4 + 192) = 1;
      if ((*v3 & 0xF) != 0)
      {
        *(v4 + 8) = 0;
      }
    }

    else
    {
      if ((v20 & 0x40) != 0)
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      *(v4 + 192) = v23;
    }

    v120 = v4;
    if (sub_23C4F0890(a1, *(v4 + 4), *v3))
    {
      v117 = v3;
      v118 = v19;
      v24 = sub_23C49EB10(&a1[*(*a1 - 24)], "llvm.floor.f32", 14, *&a1[*(*a1 - 24) + 160], *&a1[*(*a1 - 24) + 160]);
      llvm::Function::addFnAttr();
      v25 = *(v4 + 120);
      v115 = *(v4 + 152);
      v114 = *(v4 + 144);
      *v4 = 4;
      *(v4 + 152) = 0;
      *(v4 + 144) = 3;
      *(v4 + 224) = 0;
      v26 = &a1[*(*a1 - 24)];
      v27 = *(v4 + 48);
      v142 = 257;
      v28 = sub_23C497C88(v26 + 1, **(*v27 + 16), v27, 0, v141);
      v29 = &a1[*(*a1 - 24)];
      v30 = sub_23C505670(v29, v28, 2u, 1);
      v31 = *&a1[*(*a1 - 24) + 216];
      v142 = 257;
      v32 = sub_23C49EF30((v29 + 8), v30, v31, v141);
      v33 = &a1[*(*a1 - 24)];
      v142 = 257;
      v116 = v25;
      v34 = sub_23C49EA2C((v33 + 8), v25, v32, v141);
      v35 = llvm::ConstantFP::get();
      v131 = 257;
      v36 = sub_23C4A0BD4((v33 + 8), v34, v35, &v128);
      v37 = sub_23C506244(&a1[*(*a1 - 24)], v24, v36);
      v38 = &a1[*(*a1 - 24)];
      v142 = 257;
      v39 = sub_23C4A0EC4((v38 + 8), v36, v37, v141);
      v40 = *&a1[*(*a1 - 24) + 208];
      v131 = 257;
      v41 = sub_23C49FEB4((v38 + 8), v39, v40, &v128);
      v42 = &a1[*(*a1 - 24)];
      v43 = llvm::ConstantFP::get();
      v142 = 257;
      v44 = sub_23C4A0EC4((v42 + 8), v43, v41, v141);
      v45 = &a1[*(*a1 - 24)];
      v142 = 257;
      *(v4 + 120) = sub_23C4BBCA0((v45 + 8), v37, v32, v141);
      v46 = &a1[*(*a1 - 24)];
      v47 = *(v46 + 43);
      v138 = *(v46 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v139, (v46 + 8));
      v140 = *(v46 + 26);
      v113 = (*(*v47 + 248))(v47, &v138, v4);
      if (v139)
      {
        llvm::MetadataTracking::untrack();
      }

      v48 = llvm::UndefValue::get();
      v49 = 0;
      v50 = 0;
      v121 = v44;
      do
      {
        v136 = 0;
        v137 = 0;
        v136 = llvm::ConstantInt::get();
        v137 = llvm::ConstantInt::get();
        v51 = llvm::ConstantVector::get();
        v52 = *(*a1 - 24);
        v142 = 257;
        v53 = sub_23C49A3AC(&a1[v52 + 8], v41, v44, v51, v141);
        v54 = v41;
        v55 = v53;
        v56 = &a1[*(*a1 - 24)];
        v142 = 257;
        v57 = llvm::ConstantInt::get();
        v58 = sub_23C5057E8((v56 + 8), v55, v57, v141);
        v59 = &a1[*(*a1 - 24)];
        v131 = 257;
        v60 = llvm::ConstantInt::get();
        v61 = sub_23C5057E8((v59 + 8), v55, v60, &v128);
        v135 = 257;
        v62 = sub_23C49EA2C((v56 + 8), v58, v61, &v132);
        v63 = &a1[*(*a1 - 24)];
        v142 = 257;
        v64 = llvm::ConstantInt::get();
        v65 = v62;
        v41 = v54;
        v44 = v121;
        v48 = sub_23C505AA8((v63 + 8), v48, v65, v64, v141);
        ++v50;
        v49 += 2;
      }

      while (v50 != 4);
      v66 = &a1[*(*a1 - 24)];
      v67 = *(v66 + 34);
      v142 = 257;
      v68 = sub_23C4B284C((v66 + 8), v48, v67, v141);
      v141[0] = *&a1[*(*a1 - 24) + 296];
      v141[1] = v141[0];
      llvm::StructType::get();
      v69 = llvm::UndefValue::get();
      v70 = &a1[*(*a1 - 24)];
      v71 = *(v70 + 37);
      v142 = 257;
      v72 = sub_23C49ACF8((v70 + 8), 49, v113, v71, v141);
      LODWORD(v132) = 0;
      v131 = 257;
      v73 = sub_23C49A744(v70 + 1, v69, v72, &v132, 1, &v128);
      v74 = &a1[*(*a1 - 24)];
      v75 = *(v74 + 37);
      v142 = 257;
      v76 = sub_23C49ACF8((v74 + 8), 49, v68, v75, v141);
      LODWORD(v132) = 1;
      v131 = 257;
      v79 = sub_23C49A744(v74 + 1, v73, v76, &v132, 1, &v128);
      v4 = v120;
      *(v120 + 120) = v116;
      *(v120 + 152) = v115;
      *(v120 + 144) = v114;
      *v120 = 1;
      v3 = v117;
      v19 = v118;
    }

    else
    {
      v80 = &a1[*(*a1 - 24)];
      v81 = *(v80 + 43);
      v125 = *(v80 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v126, (v80 + 8));
      v127 = *(v80 + 26);
      v79 = (*(*v81 + 248))(v81, &v125, v4);
      if (v126)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    if ((*v3 & 0xF) == 0)
    {
      v82 = *(*a1 - 24);
      v83 = sub_23C4F08E0(a1, v79, v77, v78);
      return (**&a1[v82])(&a1[v82], v83, *(v4 + 8));
    }

    if ((*v3 & 0x10) != 0)
    {
      v85 = &a1[*(*a1 - 24)];
      v86 = *(v85 + 43);
      v122 = *(v85 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v123, (v85 + 8));
      v124 = *(v85 + 26);
      (*(*v86 + 40))(v86, &v122, v19, 0);
      if (v123)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    if ((*v3 & 0x1C0) != 0)
    {
      *(&v132 + 1) = 0;
      *(&v138 + 1) = 0;
      Select = llvm::ConstantFP::get();
      v88 = &a1[*(*a1 - 24)];
      LODWORD(v128) = 0;
      v142 = 257;
      v89 = sub_23C49B32C((v88 + 8), v79, &v128, 1, v141);
      *&v132 = sub_23C505600(v88, v89, *&a1[*(*a1 - 24) + 160]);
      v90 = &a1[*(*a1 - 24)];
      LODWORD(v136) = 1;
      v142 = 257;
      v91 = sub_23C49B32C((v90 + 8), v79, &v136, 1, v141);
      v92 = sub_23C505600(v90, v91, *&a1[*(*a1 - 24) + 160]);
      v93 = *&a1[*(*a1 - 24) + 264];
      v131 = 257;
      *&v138 = sub_23C49FEB4((v90 + 8), v92, v93, &v128);
      if ((*v3 & 0x40) != 0)
      {
        v95 = &a1[*(*a1 - 24)];
        LODWORD(v128) = 2;
        v142 = 257;
        v96 = sub_23C49B32C((v95 + 8), v79, &v128, 1, v141);
        *(&v132 + 1) = sub_23C505600(v95, v96, *&a1[*(*a1 - 24) + 160]);
        v97 = &a1[*(*a1 - 24)];
        LODWORD(v136) = 3;
        v142 = 257;
        v98 = sub_23C49B32C((v97 + 8), v79, &v136, 1, v141);
        v99 = sub_23C505600(v97, v98, *&a1[*(*a1 - 24) + 160]);
        v100 = *&a1[*(*a1 - 24) + 264];
        v131 = 257;
        *(&v138 + 1) = sub_23C49FEB4((v97 + 8), v99, v100, &v128);
        v94 = 8;
      }

      else
      {
        v94 = 4;
      }

      for (i = 0; i != v94; ++i)
      {
        v102 = &a1[*(*a1 - 24)];
        v103 = *(&v132 + (i >> 2));
        v104 = Select;
        v142 = 257;
        v105 = llvm::ConstantInt::get();
        sub_23C5057E8((v102 + 8), v103, v105, v141);
        v106 = &a1[*(*a1 - 24)];
        v107 = *(&v138 + (i >> 2));
        v142 = 257;
        v108 = llvm::ConstantInt::get();
        v109 = sub_23C5057E8((v106 + 8), v107, v108, v141);
        v142 = 257;
        llvm::IRBuilderBase::CreateFCmpHelper();
        v110 = *(*a1 - 24);
        v142 = 257;
        sub_23C4A0BD4(&a1[v110 + 8], v104, v109, v141);
        v142 = 257;
        Select = llvm::IRBuilderBase::CreateSelect();
      }

      v111 = &a1[*(*a1 - 24)];
      v112 = *(v111 + 20);
      v142 = 257;
      sub_23C4B284C((v111 + 8), Select, v112, v141);
    }

    else
    {
      sub_23C4F08E0(a1, v79, v77, v78);
      v142 = 257;
      llvm::IRBuilderBase::CreateFCmpHelper();
      llvm::ConstantFP::get();
      llvm::ConstantFP::get();
      v142 = 257;
      llvm::IRBuilderBase::CreateSelect();
    }

    *(v120 + 8) = v119;
    v22 = **&a1[*(*a1 - 24)];
  }

  return v22();
}

uint64_t sub_23C4F0890(void *a1, int a2, __int16 a3)
{
  v3 = 0;
  if ((a3 & 0xF) != 0 && (a3 & 0x1C0) != 0)
  {
    v3 = 0;
    if ((a3 & 0x20) == 0 && a2 != 2)
    {
      v3 = *(*(a1 + *(*a1 - 24) + 344) + 1643);
    }
  }

  return v3 & 1;
}

unsigned __int8 *sub_23C4F08E0(void *a1, unsigned __int8 *a2, uint64_t a3, BOOL a4)
{
  v4 = a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v5 = a1 + *(*a1 - 24);
    v9 = 257;
    v6 = llvm::ConstantInt::get();
    return sub_23C5057E8((v5 + 8), v4, v6, v8);
  }

  return v4;
}

void sub_23C4F0968()
{
  if ((atomic_load_explicit(&qword_27E1F73F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F73F0))
  {
    qword_27E1F73D0 = 0;
    *&dword_27E1F73D8 = 0;
    qword_27E1F73E0 = 0x800000000;
    __cxa_atexit(sub_23C4F09EC, &qword_27E1F73D0, &dword_23C496000);

    __cxa_guard_release(&qword_27E1F73F0);
  }
}

uint64_t sub_23C4F09EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
          llvm::deallocate_buffer(v8, (*v8 + 9));
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

uint64_t sub_23C4F0A68(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
          llvm::deallocate_buffer(v8, (*v8 + 25));
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

uint64_t *sub_23C4F0AE4(uint64_t *result, unsigned int a2, uint64_t a3)
{
  v3 = result[1];
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
      v5 = *(v3 + 32);
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
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t **sub_23C4F0BAC(uint64_t **result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v3 = a2;
    do
    {
      v4 = result[1];
      v5 = (result + 1);
      if (*result == (result + 1))
      {
        goto LABEL_9;
      }

      v6 = result[1];
      v7 = (result + 1);
      if (v4)
      {
        do
        {
          v5 = v6;
          v6 = *(v6 + 8);
        }

        while (v6);
      }

      else
      {
        do
        {
          v5 = v7[2];
          v8 = *v5 == v7;
          v7 = v5;
        }

        while (v8);
      }

      v9 = *(v3 + 8);
      if (*(v5 + 8) < v9)
      {
LABEL_9:
        if (v4)
        {
          v10 = v5 + 1;
        }

        else
        {
          v10 = (result + 1);
        }
      }

      else
      {
        v10 = (result + 1);
        if (v4)
        {
          v10 = (result + 1);
          while (1)
          {
            while (1)
            {
              v13 = v4;
              v14 = *(v4 + 32);
              if (v9 >= v14)
              {
                break;
              }

              v4 = *v13;
              v10 = v13;
              if (!*v13)
              {
                goto LABEL_13;
              }
            }

            if (v14 >= v9)
            {
              break;
            }

            v10 = v13 + 1;
            v4 = v13[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v10)
      {
LABEL_13:
        operator new();
      }

      v11 = v3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v3[2];
          v8 = *v12 == v3;
          v3 = v12;
        }

        while (!v8);
      }

      v3 = v12;
    }

    while (v12 != a3);
  }

  return result;
}

void sub_23C4F0D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v13[0] = 0;
  v13[1] = 0;
  v12[0] = &unk_284F1B880;
  v12[1] = v13;
  v18[1] = 0x400000000;
  v16[0] = &unk_284F1BEC8;
  v16[1] = v12;
  v17 = v16;
  v18[0] = v19;
  for (i = *(a2 + 24); i; i = *i)
  {
    sub_23C4F0FC4(v17, i[5]);
  }

  sub_23C4F1014(v16);
  v14[0] = &unk_284F1BF58;
  v14[1] = v12;
  v15 = v14;
  for (j = *(a3 + 24); j; j = *j)
  {
    sub_23C4F0FC4(v15, j[5]);
  }

  sub_23C4F1014(v14);
  sub_23C4F1094(v12, v18, a4);
  sub_23C4F11DC(a1, v18, v9);
  v11 = a1;
  v10 = 1;
  operator new();
}

void **sub_23C4F0F88(void **a1)
{
  sub_23C4F2F50(a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_23C4F0FC4(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  sub_23C4F3D38();
  return sub_23C4F1014(v3);
}

uint64_t sub_23C4F1014(uint64_t a1)
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

uint64_t sub_23C4F1094(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  v4 = (result + 16);
  if (v3 != (result + 16))
  {
    v6 = (a3 + 8);
    do
    {
      v7 = *v6;
      if (!*v6)
      {
        goto LABEL_10;
      }

      v8 = *(v3 + 9);
      v9 = v6;
      do
      {
        v10 = *(v7 + 36) + *(v7 + 32);
        v11 = v10 > v8;
        v12 = v10 <= v8;
        if (v11)
        {
          v9 = v7;
        }

        v7 = *(v7 + 8 * v12);
      }

      while (v7);
      if (v9 == v6 || v8 < *(v9 + 8))
      {
LABEL_10:
        v9 = v6;
      }

      v13 = *(a2 + 8);
      *(v3 + 9) = v13;
      for (i = *(v3 + 7); i <= *(v3 + 8); ++i)
      {
        result = sub_23C4F7ED0((v9 + 4), i);
        if (v13 >= *(a2 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v16 = (*a2 + 16 * v13);
        *v16 = result;
        v16[1] = v15;
        v13 = *(a2 + 8) + 1;
        *(a2 + 8) = v13;
      }

      v17 = v3[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v3[2];
          v19 = *v18 == v3;
          v3 = v18;
        }

        while (!v19);
      }

      v3 = v18;
    }

    while (v18 != v4);
  }

  return result;
}

void sub_23C4F11DC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 8))
  {
    if (MGGetBoolAnswer() && (v5 = sub_23C4A2690("AGX_FORCE_CS_SAMPLERS")) != 0 && *v5 != 48 && atoi(v5) && *(*(a1 + *(*a1 - 24) + 344) + 1678) != 1)
    {
      v16 = llvm::PointerType::get();
      NullValue = llvm::Constant::getNullValue(v16, v17);
      sub_23C4D56F8((a1 + 1544), NullValue);
    }

    else
    {
      sub_23C4F7C4C(a1, a2, a1 + 1544);
    }

    sub_23C4F7C4C(a1, a2, a1 + 1600);
    sub_23C4F7C4C(a1, a2, a1 + 1656);
    v6 = (a1 + 600);
    v7 = *(a2 + 8);
    v8 = *(a1 + 608);
    if (v8 != v7)
    {
      if (v8 <= v7)
      {
        if (*(a1 + 612) < v7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v8 != v7)
        {
          bzero((*v6 + 4 * v8), 4 * v7 - 4 * v8);
        }
      }

      *(a1 + 608) = v7;
      LODWORD(v7) = *(a2 + 8);
    }

    if (v7)
    {
      v9 = 0;
      v10 = *a2;
      v11 = *v6;
      do
      {
        v12 = *v10;
        v10 += 4;
        *(v11 + 4 * v9++) = v12;
      }

      while (v9 < *(a2 + 8));
    }
  }

  else if ((*(*(a1 + *(*a1 - 24) + 344) + 1678) & 1) == 0 && *(a1 + 2160))
  {
    v13 = llvm::PointerType::get();
    v15 = llvm::Constant::getNullValue(v13, v14);
    sub_23C4D56F8((a1 + 1544), v15);

    sub_23C4F7C4C(a1, a2, a1 + 1656);
  }
}

uint64_t **sub_23C4F13BC(uint64_t **result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v3 = a2;
    do
    {
      v4 = result[1];
      v5 = (result + 1);
      if (*result == (result + 1))
      {
        goto LABEL_9;
      }

      v6 = result[1];
      v7 = (result + 1);
      if (v4)
      {
        do
        {
          v5 = v6;
          v6 = *(v6 + 8);
        }

        while (v6);
      }

      else
      {
        do
        {
          v5 = v7[2];
          v8 = *v5 == v7;
          v7 = v5;
        }

        while (v8);
      }

      v9 = *(v3 + 8);
      if (*(v5 + 8) < v9)
      {
LABEL_9:
        if (v4)
        {
          v10 = v5 + 1;
        }

        else
        {
          v10 = (result + 1);
        }
      }

      else
      {
        v10 = (result + 1);
        if (v4)
        {
          v10 = (result + 1);
          while (1)
          {
            while (1)
            {
              v13 = v4;
              v14 = *(v4 + 32);
              if (v9 >= v14)
              {
                break;
              }

              v4 = *v13;
              v10 = v13;
              if (!*v13)
              {
                goto LABEL_13;
              }
            }

            if (v14 >= v9)
            {
              break;
            }

            v10 = v13 + 1;
            v4 = v13[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v10)
      {
LABEL_13:
        operator new();
      }

      v11 = v3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v3[2];
          v8 = *v12 == v3;
          v3 = v12;
        }

        while (!v8);
      }

      v3 = v12;
    }

    while (v12 != a3);
  }

  return result;
}

uint64_t sub_23C4F1538(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v130 = *MEMORY[0x277D85DE8];
  v123 = 0x400000000;
  v105[0] = 0;
  v105[1] = 0;
  v103 = &unk_284F1B880;
  v104 = v105;
  v120[0] = &unk_284F1C270;
  v120[1] = &v103;
  v121 = v120;
  v122 = v124;
  for (i = *(a2 + 24); i; i = *i)
  {
    sub_23C4F0FC4(v121, i[5]);
  }

  sub_23C4F1014(v120);
  v118[0] = &unk_284F1C300;
  v118[1] = &v103;
  v119 = v118;
  v87 = a3;
  for (j = *(a3 + 24); j; j = *j)
  {
    sub_23C4F0FC4(v119, j[5]);
  }

  sub_23C4F1014(v118);
  memset(v101, 0, sizeof(v101));
  v102 = 1065353216;
  v9 = v104;
  if (v104 == v105)
  {
LABEL_82:
    *&v125 = v101;
    LOBYTE(v109) = 1;
    v116[0] = &unk_284F1C390;
    v116[1] = &v109;
    v116[2] = &v125;
    v117 = v116;
    for (k = *(a2 + 24); k; k = *k)
    {
      sub_23C4F0FC4(v117, k[5]);
    }

    sub_23C4F1014(v116);
    v114[0] = &unk_284F1C420;
    v114[1] = &v109;
    v114[2] = &v125;
    v115 = v114;
    for (m = *(v87 + 24); m; m = *m)
    {
      sub_23C4F0FC4(v115, m[5]);
    }

    sub_23C4F1014(v114);
    v84 = v109;
  }

  else
  {
    v10 = (a4 + 8);
    v11 = a1 + 43;
    v88 = (a4 + 8);
    while (1)
    {
      v12 = *v10;
      if (!*v10)
      {
        break;
      }

      v13 = *(v9 + 9);
      v14 = v10;
      do
      {
        v15 = *(v12 + 36) + *(v12 + 32);
        v16 = v15 > v13;
        v17 = v15 <= v13;
        if (v16)
        {
          v14 = v12;
        }

        v12 = *(v12 + 8 * v17);
      }

      while (v12);
      if (v14 == v10)
      {
        break;
      }

      v19 = *(v14 + 8);
      v18 = (v14 + 4);
      if (v13 < v19)
      {
        break;
      }

      v20 = *(v9 + 7);
      if (*(v9 + 8) != v20)
      {
        break;
      }

      sub_23C4F3374(&v95, v18, v20);
      Int8PtrTy = llvm::Type::getInt8PtrTy(*(a1 + *(*a1 - 24) + 336), 2);
      v22 = *(a1 + *(*a1 - 24) + 192);
      *&v125 = Int8PtrTy;
      *(&v125 + 1) = v22;
      *&v126 = v22;
      llvm::StructType::get();
      if ((*(v100 + 9) & 1) == 0)
      {
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v125 = 0u;
        *&v125 = llvm::PointerType::get();
        *(&v125 + 1) = llvm::PointerType::get();
        llvm::FixedVectorType::get();
        *&v126 = llvm::PointerType::get();
        *(&v126 + 1) = llvm::PointerType::get();
        *&v127 = llvm::PointerType::get();
        *(&v127 + 1) = llvm::PointerType::get();
        *&v128 = llvm::PointerType::get();
        *(&v128 + 1) = llvm::PointerType::get();
        *&v129 = llvm::PointerType::get();
        *(&v129 + 1) = llvm::PointerType::get();
        llvm::StructType::setBody();
      }

      v23 = v95;
      v93 = (v95 >> 16) & 0x7FFF;
      v94 = v95;
      if (v97 == 1)
      {
        v24 = llvm::User::operator new(0x58);
        if ((v23 & 0x80000000) != 0)
        {
          v106[0] = v93;
          v107 = ".";
          v108 = 776;
          v25 = 2;
          v26 = 8;
          v27 = &v109;
          v109 = v106;
          v111 = v94;
        }

        else
        {
          LODWORD(v109) = v94;
          v25 = 8;
          v26 = 1;
          v27 = v109;
        }

        v112 = v25;
        v113 = v26;
        *&v125 = "agc.read_image_words";
        *&v126 = v27;
        *(&v126 + 1) = v110;
        LOBYTE(v127) = 3;
        BYTE1(v127) = v25;
        llvm::GlobalVariable::GlobalVariable();
        *(v24 + 80) |= 1u;
        llvm::GlobalObject::setSection();
        llvm::GlobalObject::setAlignment();
        v28 = a1 + *(*a1 - 24);
        v91 = v24;
        if (*(*(v28 + 43) + 1647) == 1)
        {
          sub_23C4F6FDC(a1, v24, 0, v99, v23);
        }

        else
        {
          sub_23C506A1C(v28, v24, 0, v23);
        }

        if (v96 != -1)
        {
          v29 = *(v11 + *(*a1 - 24));
          (*(*v29 + 168))(v29, v24);
        }
      }

      else
      {
        v91 = 0;
      }

      if (v98 == 1)
      {
        v30 = llvm::User::operator new(0x58);
        if ((v23 & 0x80000000) != 0)
        {
          v106[0] = v93;
          v107 = ".";
          v108 = 776;
          v109 = v106;
          v111 = v94;
          v31 = 2;
          v32 = 8;
          v33 = &v109;
        }

        else
        {
          LODWORD(v109) = v94;
          v31 = 8;
          v32 = 1;
          v33 = v109;
        }

        v112 = v31;
        v113 = v32;
        *&v125 = "agc.write_image_words";
        *&v126 = v33;
        *(&v126 + 1) = v110;
        LOBYTE(v127) = 3;
        BYTE1(v127) = v31;
        llvm::GlobalVariable::GlobalVariable();
        *(v30 + 80) |= 1u;
        llvm::GlobalObject::setSection();
        llvm::GlobalObject::setAlignment();
        v34 = a1 + *(*a1 - 24);
        v90 = v30;
        if (*(*(v34 + 43) + 1647) == 1)
        {
          sub_23C4F6FDC(a1, v30, 6u, v99, v23);
        }

        else
        {
          sub_23C506A1C(v34, v30, 6u, v23);
        }

        if (v96 != -1)
        {
          v35 = *(v11 + *(*a1 - 24));
          (*(*v35 + 168))(v35, v30);
        }
      }

      else
      {
        v90 = 0;
      }

      v92 = llvm::User::operator new(0x58);
      llvm::FixedVectorType::get();
      if ((v23 & 0x80000000) != 0)
      {
        v106[0] = v93;
        v107 = ".";
        v108 = 776;
        v109 = v106;
        v111 = v94;
        v36 = 2;
        v37 = 8;
        v38 = &v109;
      }

      else
      {
        LODWORD(v109) = v94;
        v36 = 8;
        v37 = 1;
        v38 = v109;
      }

      v112 = v36;
      v113 = v37;
      *&v125 = "agc.image_dim";
      *&v126 = v38;
      *(&v126 + 1) = v110;
      LOBYTE(v127) = 3;
      BYTE1(v127) = v36;
      llvm::GlobalVariable::GlobalVariable();
      *(v92 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      sub_23C506A1C(a1 + *(*a1 - 24), v92, 0xBu, v23);
      v39 = llvm::User::operator new(0x58);
      if ((v23 & 0x80000000) != 0)
      {
        v106[0] = v93;
        v107 = ".";
        v108 = 776;
        v109 = v106;
        v111 = v94;
        v40 = 2;
        v41 = 8;
        v42 = &v109;
      }

      else
      {
        LODWORD(v109) = v94;
        v40 = 8;
        v41 = 1;
        v42 = v109;
      }

      v112 = v40;
      v113 = v41;
      *&v125 = "agc.image_array_info";
      *&v126 = v42;
      *(&v126 + 1) = v110;
      LOBYTE(v127) = 3;
      BYTE1(v127) = v40;
      llvm::GlobalVariable::GlobalVariable();
      *(v39 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      v89 = v39;
      sub_23C506A1C(a1 + *(*a1 - 24), v39, 0xCu, v23);
      v43 = llvm::User::operator new(0x58);
      if ((v23 & 0x80000000) != 0)
      {
        v106[0] = v93;
        v107 = ".";
        v108 = 776;
        v109 = v106;
        v111 = v94;
        v44 = 2;
        v45 = 8;
        v46 = &v109;
      }

      else
      {
        LODWORD(v109) = v94;
        v44 = 8;
        v45 = 1;
        v46 = v109;
      }

      v112 = v44;
      v113 = v45;
      *&v125 = "agc.image_pack_format";
      *&v126 = v46;
      *(&v126 + 1) = v110;
      LOBYTE(v127) = 3;
      BYTE1(v127) = v44;
      llvm::GlobalVariable::GlobalVariable();
      *(v43 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      sub_23C506A1C(a1 + *(*a1 - 24), v43, 0xDu, v23);
      v47 = llvm::User::operator new(0x58);
      if ((v23 & 0x80000000) != 0)
      {
        v106[0] = v93;
        v107 = ".";
        v108 = 776;
        v109 = v106;
        v111 = v94;
        v48 = 2;
        v49 = 8;
        v50 = &v109;
      }

      else
      {
        LODWORD(v109) = v94;
        v48 = 8;
        v49 = 1;
        v50 = v109;
      }

      v112 = v48;
      v113 = v49;
      *&v125 = "agc.image_mipmap_count";
      *&v126 = v50;
      *(&v126 + 1) = v110;
      LOBYTE(v127) = 3;
      BYTE1(v127) = v48;
      llvm::GlobalVariable::GlobalVariable();
      *(v47 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      sub_23C506A1C(a1 + *(*a1 - 24), v47, 0x10u, v23);
      v51 = llvm::User::operator new(0x58);
      if ((v23 & 0x80000000) != 0)
      {
        v106[0] = v93;
        v107 = ".";
        v108 = 776;
        v109 = v106;
        v111 = v94;
        v52 = 2;
        v53 = 8;
        v54 = &v109;
      }

      else
      {
        LODWORD(v109) = v94;
        v52 = 8;
        v53 = 1;
        v54 = v109;
      }

      v112 = v52;
      v113 = v53;
      *&v125 = "agc.image_sample_count";
      *&v126 = v54;
      *(&v126 + 1) = v110;
      LOBYTE(v127) = 3;
      BYTE1(v127) = v52;
      llvm::GlobalVariable::GlobalVariable();
      *(v51 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      sub_23C506A1C(a1 + *(*a1 - 24), v51, 0x11u, v23);
      v55 = llvm::User::operator new(0x58);
      if ((v23 & 0x80000000) != 0)
      {
        v106[0] = v93;
        v107 = ".";
        v108 = 776;
        v109 = v106;
        v111 = v94;
        v56 = 2;
        v57 = 8;
        v58 = &v109;
      }

      else
      {
        LODWORD(v109) = v94;
        v56 = 8;
        v57 = 1;
        v58 = v109;
      }

      v112 = v56;
      v113 = v57;
      *&v125 = "agc.image_base_level";
      *&v126 = v58;
      *(&v126 + 1) = v110;
      LOBYTE(v127) = 3;
      BYTE1(v127) = v56;
      v59 = v11;
      llvm::GlobalVariable::GlobalVariable();
      *(v55 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      sub_23C506A1C(a1 + *(*a1 - 24), v55, 0x3Eu, v23);
      v60 = llvm::User::operator new(0x58);
      if ((v23 & 0x80000000) != 0)
      {
        v106[0] = v93;
        v107 = ".";
        v108 = 776;
        v109 = v106;
        v111 = v94;
        v61 = 2;
        v62 = 8;
        v63 = &v109;
      }

      else
      {
        LODWORD(v109) = v94;
        v61 = 8;
        v62 = 1;
        v63 = v109;
      }

      v112 = v61;
      v113 = v62;
      *&v125 = "agc.image_heap_index";
      *&v126 = v63;
      *(&v126 + 1) = v110;
      LOBYTE(v127) = 3;
      BYTE1(v127) = v61;
      llvm::GlobalVariable::GlobalVariable();
      *(v60 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      sub_23C506A1C(a1 + *(*a1 - 24), v60, 0x5Du, v23);
      v64 = llvm::User::operator new(0x58);
      if ((v23 & 0x80000000) != 0)
      {
        v106[0] = v93;
        v107 = ".";
        v108 = 776;
        v109 = v106;
        v111 = v94;
        v65 = 2;
        v66 = 8;
        v67 = &v109;
      }

      else
      {
        LODWORD(v109) = v94;
        v65 = 8;
        v66 = 1;
        v67 = v109;
      }

      v112 = v65;
      v113 = v66;
      *&v125 = "agc.image_unique_id";
      *&v126 = v67;
      *(&v126 + 1) = v110;
      LOBYTE(v127) = 3;
      BYTE1(v127) = v65;
      llvm::GlobalVariable::GlobalVariable();
      *(v64 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      sub_23C506A1C(a1 + *(*a1 - 24), v64, 0x61u, v23);
      NullValue = v91;
      if (!v91)
      {
        v69 = llvm::PointerType::get();
        NullValue = llvm::Constant::getNullValue(v69, v70);
      }

      *&v125 = NullValue;
      v71 = v90;
      if (!v90)
      {
        v72 = llvm::PointerType::get();
        v71 = llvm::Constant::getNullValue(v72, v73);
      }

      *(&v125 + 1) = v71;
      *&v126 = v92;
      *(&v126 + 1) = v89;
      *&v127 = v43;
      *(&v127 + 1) = v47;
      *&v128 = v51;
      *(&v128 + 1) = v55;
      *&v129 = v60;
      *(&v129 + 1) = v64;
      llvm::ConstantStruct::get();
      v74 = llvm::User::operator new(0x58);
      if ((v23 & 0x80000000) != 0)
      {
        v106[0] = v93;
        v107 = ".";
        v108 = 776;
        v109 = v106;
        v111 = v94;
        v75 = 2;
        v76 = 8;
        v77 = &v109;
      }

      else
      {
        LODWORD(v109) = v94;
        v75 = 8;
        v76 = 1;
        v77 = v109;
      }

      v11 = v59;
      v112 = v75;
      v113 = v76;
      *&v125 = "agc.image_state_struct_ptr";
      *&v126 = v77;
      *(&v126 + 1) = v110;
      LOBYTE(v127) = 3;
      BYTE1(v127) = v75;
      llvm::GlobalVariable::GlobalVariable();
      *(v74 + 80) |= 1u;
      llvm::GlobalVariable::setInitializer();
      v125 = 4uLL;
      v78 = v74;
      *&v126 = v74;
      if (v74 != -8192)
      {
        v78 = v74;
        if (v74 != -4096)
        {
          v78 = v74;
          if (v74)
          {
            llvm::ValueHandleBase::AddToUseList(&v125);
            v78 = v126;
          }
        }
      }

      sub_23C4EF514(a1 + 95, v78, &v125);
      if (v126 != -8192 && v126 != -4096 && v126)
      {
        llvm::ValueHandleBase::RemoveFromUseList(&v125);
      }

      *&v125 = v9 + 28;
      sub_23C4F6718(v101, *(v9 + 7), &v125)[3] = v74;
      v79 = v9[1];
      if (v79)
      {
        do
        {
          v80 = v79;
          v79 = *v79;
        }

        while (v79);
      }

      else
      {
        do
        {
          v80 = v9[2];
          v81 = *v80 == v9;
          v9 = v80;
        }

        while (!v81);
      }

      v9 = v80;
      v10 = v88;
      if (v80 == v105)
      {
        goto LABEL_82;
      }
    }

    v84 = 0;
  }

  sub_23C4F6B10(v101);
  sub_23C4B1570(v105[0]);
  if (v122 != v124)
  {
    free(v122);
  }

  return v84 & 1;
}

uint64_t sub_23C4F2B4C(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = 1;
  v5[0] = &unk_284F1BC40;
  v5[1] = &v4;
  v5[2] = a1;
  v6 = v5;
  if (a2)
  {
    v2 = a2;
    do
    {
      sub_23C4F0FC4(v6, v2[5]);
      v2 = *v2;
    }

    while (v2);
  }

  sub_23C4F1014(v5);
  return v4;
}

unint64_t sub_23C4F2BF4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  v4 = (result + 16);
  if (v3 != (result + 16))
  {
    v6 = (a3 + 8);
    do
    {
      v7 = *v6;
      if (!*v6)
      {
        goto LABEL_10;
      }

      v8 = *(v3 + 9);
      v9 = v6;
      do
      {
        v10 = *(v7 + 36) + *(v7 + 32);
        v11 = v10 > v8;
        v12 = v10 <= v8;
        if (v11)
        {
          v9 = v7;
        }

        v7 = *(v7 + 8 * v12);
      }

      while (v7);
      if (v9 == v6 || v8 < *(v9 + 8))
      {
LABEL_10:
        v9 = v6;
      }

      *(v3 + 9) = *(a2 + 8);
      for (i = *(v3 + 7); i <= *(v3 + 8); ++i)
      {
        sub_23C4F3374(v19, (v9 + 4), i);
        result = sub_23C4F33F4(a2, v19);
        v14 = *a2 + 24 * *(a2 + 8);
        v15 = *result;
        *(v14 + 16) = *(result + 16);
        *v14 = v15;
        ++*(a2 + 8);
      }

      v16 = v3[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v3[2];
          v18 = *v17 == v3;
          v3 = v17;
        }

        while (!v18);
      }

      v3 = v17;
    }

    while (v17 != v4);
  }

  return result;
}

void sub_23C4F2D2C(uint64_t a1, uint64_t a2)
{
  v18[16] = *MEMORY[0x277D85DE8];
  *(a1 + 1880) = *(a2 + 8);
  v18[0] = 0;
  LOWORD(v17) = 0;
  BYTE2(v17) = 0;
  v16 = 0xFFFFFFFF00040000;
  v4 = &v16;
  v5 = sub_23C4F33F4(a2, &v16);
  v6 = *a2 + 24 * *(a2 + 8);
  v7 = *v5;
  *(v6 + 16) = *(v5 + 16);
  *v6 = v7;
  ++*(a2 + 8);
  v8 = sub_23C4F45F4(a1, a2, a1 + 1432);
  v16 = v18;
  v17 = 0x800000000;
  v9 = *(a2 + 8);
  if (v9)
  {
    v10 = v8;
    v11 = 0;
    v12 = 0;
    v13 = 4;
    do
    {
      v14 = *(*a2 + v13);
      if (v14 != -1)
      {
        v4 = v4 & 0xFFFFFF0000000000 | 4;
        sub_23C49786C(&v16, v11 + v14, v4);
        v9 = *(a2 + 8);
      }

      ++v12;
      v11 += 0x400000000;
      v13 += 24;
    }

    while (v12 < v9);
    if (v17)
    {
      v15 = *(a1 + *(*a1 - 24) + 344);
      (*(*v15 + 176))(v15, v10, &v16);
    }
  }

  if (v16 != v18)
  {
    free(v16);
  }
}

void sub_23C4F2EE0(void *result)
{
  for (i = result[3]; i; i = *i)
  {
    llvm::Function::eraseFromParent(i[5]);
  }

  if (result[4])
  {
    sub_23C4F2F50(result[3]);
    result[3] = 0;
    v3 = result[2];
    if (v3)
    {
      for (j = 0; j != v3; ++j)
      {
        *(result[1] + 8 * j) = 0;
      }
    }

    result[4] = 0;
  }
}

void sub_23C4F2F50(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = v1;
      v1 = *v1;
      v3 = v2[5];
      if (v3 != -8192 && v3 != -4096 && v3 != 0)
      {
        llvm::ValueHandleBase::RemoveFromUseList((v2 + 3));
      }

      operator delete(v2);
    }

    while (v1);
  }
}

BOOL sub_23C4F2FAC(const char **a1, llvm::Value *this)
{
  Name = llvm::Value::getName(this);
  v5 = *a1;
  if (!v5)
  {
    return 1;
  }

  v6 = Name;
  v7 = v4;
  v8 = strlen(v5);
  if (v7 < v8)
  {
    return 0;
  }

  return !v8 || memcmp(v6, v5, v8) == 0;
}

void sub_23C4F3028(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = HIDWORD(a2);
  v8 = (a1 + 16);
  v7 = *(a1 + 16);
  if (!v7)
  {
    goto LABEL_41;
  }

  v9 = (a1 + 16);
  v10 = *(a1 + 16);
  do
  {
    v11 = *(v10 + 32);
    v12 = v11 >= a2;
    v13 = v11 < a2;
    if (v12)
    {
      v9 = v10;
    }

    v10 = *(v10 + 8 * v13);
  }

  while (v10);
  v14 = (a1 + 16);
  do
  {
    v15 = *(v7 + 28);
    v16 = v15 > HIDWORD(a2);
    v17 = v15 <= HIDWORD(a2);
    if (v16)
    {
      v14 = v7;
    }

    v7 = *(v7 + 8 * v17);
  }

  while (v7);
  if (v9 == v14)
  {
    v14 = v9;
  }

  else
  {
    v18 = v9;
    do
    {
      if (*(v18 + 7) < v4)
      {
        v4 = *(v18 + 7);
      }

      if (v6 <= *(v18 + 8))
      {
        LODWORD(v6) = *(v18 + 8);
      }

      (**a1)(a1, a3, *(v18 + 9));
      v19 = v18[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v18[2];
          v21 = *v20 == v18;
          v18 = v20;
        }

        while (!v21);
      }

      v18 = v20;
    }

    while (v20 != v14);
  }

  v22 = (a1 + 8);
  if (v9 != v14)
  {
    do
    {
      v23 = v9[1];
      v24 = v9;
      if (v23)
      {
        do
        {
          v25 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v25 = v24[2];
          v21 = *v25 == v24;
          v24 = v25;
        }

        while (!v21);
      }

      if (*v22 == v9)
      {
        *v22 = v25;
      }

      v26 = *(a1 + 16);
      --*(a1 + 24);
      sub_23C4F49F0(v26, v9);
      operator delete(v9);
      v9 = v25;
    }

    while (v25 != v14);
  }

LABEL_40:
  v27 = *v8;
  if (!*v8)
  {
LABEL_41:
    operator new();
  }

  while (1)
  {
    v8 = v27;
    if (v6 < *(v27 + 28))
    {
      goto LABEL_40;
    }

    if (*(v27 + 32) >= v4)
    {
      break;
    }

    v27 = *(v27 + 8);
    if (!v27)
    {
      goto LABEL_41;
    }
  }
}

llvm::ValueAsMetadata *sub_23C4F3268(void *a1, uint64_t *a2)
{
  v4 = sub_23C4F45F4(a1, a2, (a1 + 123));
  sub_23C4F4880(a1, a2, v4);
  v5 = sub_23C4F45F4(a1, a2, (a1 + 130));
  result = sub_23C4F4880(a1, a2, v5);
  if (*(*(a1 + *(*a1 - 24) + 344) + 1678) == 1)
  {
    sub_23C4F45F4(a1, a2, (a1 + 137));
    sub_23C4F45F4(a1, a2, (a1 + 144));
    sub_23C4F45F4(a1, a2, (a1 + 158));
    sub_23C4F45F4(a1, a2, (a1 + 165));
    sub_23C4F45F4(a1, a2, (a1 + 151));
    sub_23C4F45F4(a1, a2, (a1 + 172));

    return sub_23C4F45F4(a1, a2, (a1 + 186));
  }

  return result;
}

uint64_t sub_23C4F3374(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    v4 = *(v3 + 224);
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = *(v3 + 8);
      v7 = &v6[4 * v5];
      v8 = a3 - *(v3 + 228);
      do
      {
        v9 = v6[2];
        v10 = v8 / v9;
        v8 %= v9;
        v4 += *(*v6 + 20) * v10;
        v6 += 4;
      }

      while (v6 != v7);
    }

    a3 = a3 & 0xFFFF0000 | v4;
  }

  *(result + 16) = *(a2 + 32);
  *(result + 8) = *(a2 + 9);
  *(result + 9) = *(a2 + 8);
  v11 = *(a2 + 12);
  *(result + 10) = *(a2 + 16) == 1;
  *result = a3;
  *(result + 4) = v11;
  return result;
}

unint64_t sub_23C4F33F4(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    if (*a1 > a2 || *a1 + 24 * v2 <= a2)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  return a2;
}

uint64_t sub_23C4F3474(void *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = 16;
  if (v3 == *a1)
  {
    v4 = 20;
  }

  v5 = *(a1 + v4);
  if (v5)
  {
    v6 = 8 * v5;
    for (i = a1[1]; *i >= 0xFFFFFFFFFFFFFFFELL; ++i)
    {
      v6 -= 8;
      if (!v6)
      {
        return 1;
      }
    }
  }

  else
  {
    i = a1[1];
  }

  v8 = (v3 + 8 * v5);
  if (i == v8)
  {
    return 1;
  }

  while (1)
  {
    v13 = *i;
    v9 = *(a2 + 24);
    if (!v9)
    {
      break;
    }

    result = (*(*v9 + 48))(v9, &v13);
    ++i;
    if (result)
    {
      v11 = i == v8;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      while (*i >= 0xFFFFFFFFFFFFFFFELL)
      {
        if (++i == v8)
        {
          return result;
        }
      }

      if (i != v8)
      {
        continue;
      }
    }

    return result;
  }

  sub_23C4F3D38();
  return sub_23C4F356C(v12);
}

uint64_t sub_23C4F356C(uint64_t a1)
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

uint64_t sub_23C4F35EC(uint64_t a1)
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

uint64_t sub_23C4F366C(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = **(a1 + 8);
  v5[0] = &unk_284F1BBF8;
  v5[1] = v3;
  v5[3] = v5;
  sub_23C4F36F8(v2, v5);
  return sub_23C4F356C(v5);
}

uint64_t sub_23C4F36F8(llvm::Constant *this, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (this)
  {
    v4 = *(this + 1);
    while (v4)
    {
      v13 = v17;
      v14 = v17;
      v15 = 4;
      v16 = 0;
      v5 = *(v4 + 8);
      v6 = *(v4 + 24);
      if (v6)
      {
        v7 = *(v6 + 16) == 5;
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        for (i = *(v6 + 8); i; i = *(i + 8))
        {
          sub_23C4FB9F8(v12, &v13, *(i + 24));
        }
      }

      else
      {
        sub_23C4FB9F8(v12, &v13, v6);
      }

      v9 = *(a2 + 24);
      if (v9)
      {
        if (v9 == a2)
        {
          v19 = v18;
          (*(*v9 + 24))(v9, v18);
        }

        else
        {
          v19 = (*(*v9 + 16))(v9);
        }
      }

      else
      {
        v19 = 0;
      }

      v10 = sub_23C4F3474(&v13, v18);
      sub_23C4F356C(v18);
      if (v14 != v13)
      {
        free(v14);
      }

      v4 = v5;
      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }

    llvm::Constant::removeDeadConstantUsers(this);
  }

  return 1;
}

uint64_t sub_23C4F3890(uint64_t a1, llvm::Value **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = (*a2 - 4 * (*(*a2 + 5) & 0x7FFFFFF))[12];
  v5 = v4[4];
  if (v5)
  {
    v6 = v5 == v4[5] + 40;
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
    v7 = v5 - 24;
  }

  sub_23C4C30FC(v3 + *(*v3 - 24) + 8, v7);
  v8 = (v3 + *(*v3 - 24));
  v12 = 257;
  v9 = sub_23C497C88(v8 + 1, **(*v4 + 16), v4, 0, v11);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(v2);
  if (sub_23C4F3988((v3 + 111), v2))
  {
    sub_23C4FB9F8(v11, (v3 + 111), v9);
  }

  return 1;
}

BOOL sub_23C4F3988(uint64_t a1, void *a2)
{
  v3 = sub_23C4ED7D8(a1, a2);
  v4 = *(a1 + 8);
  v5 = 16;
  if (v4 == *a1)
  {
    v5 = 20;
  }

  v6 = (v4 + 8 * *(a1 + v5));
  if (v3 != v6)
  {
    *v3 = -2;
    ++*(a1 + 24);
  }

  return v3 != v6;
}

uint64_t sub_23C4F39F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BBF8;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F3A90(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BBB0;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F3B24(uint64_t a1, llvm::Constant **a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = **(a1 + 16);
  v6[0] = &unk_284F1BB68;
  v6[1] = v4;
  v6[3] = v6;
  v7[0] = &unk_284F1BB20;
  v7[1] = v3;
  v7[2] = v6;
  v7[3] = v7;
  sub_23C4F36F8(v2, v7);
  sub_23C4F356C(v7);
  return sub_23C4F35EC(v6);
}

BOOL sub_23C4F3BDC(uint64_t a1, llvm::Constant ***a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  sub_23C4A6D18(&v16, (*a2)[-4 * (*(*a2 + 5) & 0x7FFFFFF) + 4]);
  v7 = *(v4 + 16);
  v6 = v4 + 16;
  v5 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v6;
  do
  {
    v9 = *(v5 + 32);
    v10 = v9 >= v16;
    v11 = v9 < v16;
    if (v10)
    {
      v8 = v5;
    }

    v5 = *(v5 + 8 * v11);
  }

  while (v5);
  if (v8 == v6 || *(v8 + 28) > v16)
  {
LABEL_9:
    v8 = v6;
  }

  v12 = *(a1 + 8) + 16;
  if (v12 != v8)
  {
    v13 = v3[-4 * (*(v3 + 5) & 0x7FFFFFF) + 8];
    v14 = (v13 + 24);
    if (*(v13 + 8) >= 0x41u)
    {
      v14 = *v14;
    }

    sub_23C4F3CE0(*(*(a1 + 16) + 24), v3, *(v8 + 36) - *(v8 + 28) + *v14);
    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v3);
  }

  return v12 != v8;
}

void sub_23C4F3CE0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v3 = a3;
  if (a1)
  {
    (*(*a1 + 48))(a1, &v4, &v3);
  }

  else
  {
    sub_23C4F3D38();
    sub_23C4F3D38();
  }
}

__n128 sub_23C4F3D58(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1BB20;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

const void *sub_23C4F3DF4(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  sub_23C4C30FC(v4 + *(*v4 - 24) + 8, *a2);
  v5 = v4 + *(*v4 - 24);
  v6 = v3[-4 * (*(v3 + 5) & 0x7FFFFFF)];
  v7 = llvm::ConstantInt::get();
  v18 = 257;
  v8 = sub_23C49A474((v5 + 8), v6, v7, v17);
  v9 = v4 + *(*v4 - 24);
  v10 = *v3;
  v18 = 257;
  v11 = sub_23C49ACF8((v9 + 8), 48, v8, v10, v17);
  v12 = sub_23C4ED304(v4, v11);
  v13 = v4 + *(*v4 - 24);
  v14 = *v3;
  v18 = 257;
  v15 = sub_23C49ACF8((v13 + 8), 48, v12, v14, v17);
  if (sub_23C4F3988((v4 + 111), v3))
  {
    sub_23C4FB9F8(v17, (v4 + 111), v15);
  }

  return v15;
}

uint64_t sub_23C4F3F50(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BB68;
  a2[1] = v2;
  return result;
}

__n128 sub_23C4F3FEC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1BAD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C4F4088(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = &unk_284F1BA90;
  v5[1] = v3;
  v5[3] = v5;
  sub_23C4F36F8(v2, v5);
  return sub_23C4F356C(v5);
}

uint64_t sub_23C4F4110(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  sub_23C4A6D18(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  sub_23C4F3028(v3, v7, *v5);
  return 1;
}

uint64_t sub_23C4F4194(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BA90;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F4230(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BA48;
  a2[1] = v2;
  return result;
}

BOOL sub_23C4F42C4(uint64_t a1, llvm::Constant ***a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  sub_23C4A6D18(&v16, (*a2)[-4 * (*(*a2 + 5) & 0x7FFFFFF) + 4]);
  v7 = *(v4 + 16);
  v6 = v4 + 16;
  v5 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v6;
  do
  {
    v9 = *(v5 + 32);
    v10 = v9 >= v16;
    v11 = v9 < v16;
    if (v10)
    {
      v8 = v5;
    }

    v5 = *(v5 + 8 * v11);
  }

  while (v5);
  if (v8 == v6 || *(v8 + 28) > v16)
  {
LABEL_9:
    v8 = v6;
  }

  v12 = *(a1 + 8) + 16;
  if (v12 != v8)
  {
    v13 = v3[-4 * (*(v3 + 5) & 0x7FFFFFF) + 8];
    v14 = (v13 + 24);
    if (*(v13 + 8) >= 0x41u)
    {
      v14 = *v14;
    }

    sub_23C4F3CE0(*(*(a1 + 16) + 24), v3, *(v8 + 36) - *(v8 + 28) + *v14);
    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v3);
  }

  return v12 != v8;
}

__n128 sub_23C4F43D0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1B9B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C4F446C(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  sub_23C4C30FC(v4 + *(*v4 - 24) + 8, *a2);
  v5 = v4 + *(*v4 - 24);
  v6 = *(v3 - 32 * (*(v3 + 20) & 0x7FFFFFF));
  v7 = llvm::ConstantInt::get();
  v13 = 257;
  v8 = sub_23C49A474((v5 + 8), v6, v7, v12);
  v9 = v4 + *(*v4 - 24);
  v10 = *v3;
  v13 = 257;
  return sub_23C49ACF8((v9 + 8), 48, v8, v10, v12);
}

uint64_t sub_23C4F4560(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BA00;
  a2[1] = v2;
  return result;
}

llvm::ValueAsMetadata *sub_23C4F45F4(void *a1, uint64_t *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = 1;
  v7 = llvm::User::operator new(0x58);
  llvm::ArrayType::get(*(a3 + 32), *(a2 + 2));
  v8 = *(a3 + 24);
  v9 = "_indirect";
  if (*v8)
  {
    v19[0] = "_indirect";
    v6 = 3;
    v9 = v8;
  }

  v18[0] = v9;
  v20 = 3;
  v21 = v6;
  llvm::GlobalVariable::GlobalVariable();
  if (*(a3 + 40))
  {
    strlen(*(a3 + 40));
  }

  llvm::GlobalObject::setSection();
  v18[0] = v19;
  v18[1] = 0x2000000000;
  v10 = llvm::ValueAsMetadata::get();
  sub_23C49B500(v18, v10);
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  v11 = *(a2 + 2);
  if (v11)
  {
    v12 = *a2;
    v13 = 24 * v11;
    do
    {
      v12 += 24;
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      Impl = llvm::MDTuple::getImpl();
      sub_23C49B500(v18, Impl);
      v13 -= 24;
    }

    while (v13);
  }

  v15 = *(a1 + *(*a1 - 24) + 328);
  v16 = llvm::MDTuple::getImpl();
  sub_23C49B500(v15, v16);
  sub_23C4D56F8(a3, v7);
  if (v18[0] != v19)
  {
    free(v18[0]);
  }

  return v7;
}

void *sub_23C4F4880(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v6 = result;
    v7 = 0;
    v8 = result + 43;
    v9 = 4;
    do
    {
      v10 = *(*a2 + v9);
      if (v10 != -1)
      {
        v11 = *(v8 + *(*v6 - 24));
        result = (*(*v11 + 168))(v11, a3, v10, 1, v7);
      }

      ++v7;
      v9 += 24;
    }

    while (v3 != v7);
  }

  return result;
}

void *sub_23C4F493C(llvm::SmallPtrSetImplBase *a1, const void *a2)
{
  v2 = *a1;
  if (*(a1 + 1) != *a1)
  {
    return llvm::SmallPtrSetImplBase::insert_imp_big(a1, a2);
  }

  v5 = *(a1 + 5);
  if (!v5)
  {
LABEL_12:
    if (v5 < *(a1 + 4))
    {
      *(a1 + 5) = v5 + 1;
      *(v2 + 8 * v5) = a2;
      return (*a1 + 8 * v5);
    }

    return llvm::SmallPtrSetImplBase::insert_imp_big(a1, a2);
  }

  v6 = 0;
  v7 = 8 * v5;
  v3 = *a1;
  while (*v3 != a2)
  {
    if (*v3 == -2)
    {
      v6 = v3;
    }

    ++v3;
    v7 -= 8;
    if (!v7)
    {
      if (!v6)
      {
        goto LABEL_12;
      }

      *v6 = a2;
      --*(a1 + 6);
      return v6;
    }
  }

  return v3;
}

uint64_t *sub_23C4F49F0(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (v18 && (*(v18 + 24) & 1) == 0)
      {
LABEL_58:
        v17 = v7;
      }

      else
      {
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_71;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_67;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v23 && (*(v23 + 24) & 1) == 0)
  {
LABEL_67:
    v24 = v7;
    goto LABEL_68;
  }

  *(v24 + 24) = 1;
  *(v7 + 24) = 0;
  v32 = *v24;
  *(v7 + 8) = *v24;
  if (v32)
  {
    *(v32 + 16) = v7;
  }

  v33 = *(v7 + 16);
  *(v24 + 16) = v33;
  v33[*v33 != v7] = v24;
  *v24 = v7;
  *(v7 + 16) = v24;
  v23 = v7;
LABEL_68:
  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_71:
  *(v28 + 16) = v29;
  return result;
}

uint64_t sub_23C4F4D68(uint64_t a1, llvm::Constant **a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5 = &unk_284F1B928;
  v6 = *v3;
  v7 = &v5;
  sub_23C4F36F8(v2, &v5);
  return sub_23C4F356C(&v5);
}

uint64_t sub_23C4F4DF8(uint64_t a1, uint64_t *a2)
{
  v23[8] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v16 = v20;
  v17 = v20;
  v18 = 8;
  v19 = 0;
  v4 = *(v3 + 8);
  v21 = v23;
  v22 = 0x800000000;
  sub_23C4F5074(&v21, v4);
  sub_23C4B8970();
  sub_23C4E8E90();
  sub_23C4E8F14();
  sub_23C4E8F98();
  for (i = v22; v22; i = v22)
  {
    v6 = *(v21 + i - 1);
    LODWORD(v22) = i - 1;
    sub_23C4FB9F8(v14, &v16, v6);
    if (v15 == 1)
    {
      sub_23C4F5074(&v21, *(v6 + 8));
      if (v6)
      {
        if (*(v6 + 16) == 84)
        {
          v7 = *(v6 - 32);
          if (v7)
          {
            if (!*(v7 + 16) && *(v7 + 24) == *(v6 + 72))
            {
              llvm::Value::getName(v7);
              Key = llvm::StringMapImpl::FindKey();
              if (Key == -1 || Key == dword_27E1F7458)
              {
                v9 = llvm::StringMapImpl::FindKey();
                if (v9 == -1 || v9 == dword_27E1F7360)
                {
                  v10 = llvm::StringMapImpl::FindKey();
                  if (v10 == -1 || v10 == dword_27E1F7388)
                  {
                    v11 = llvm::StringMapImpl::FindKey();
                    if (v11 == -1 || v11 == dword_27E1F73B0)
                    {
                      v12 = *(a1 + 8);
                      sub_23C4A6D18(v14, *(v3 + 32 - 32 * (*(v3 + 20) & 0x7FFFFFF)));
                      sub_23C4F3028(v12, v14[0], **(a1 + 16));
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (v21 != v23)
  {
    free(v21);
  }

  if (v17 != v16)
  {
    free(v17);
  }

  return 1;
}

uint64_t sub_23C4F5074(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = 0;
  if (a2)
  {
    v4 = a2;
    do
    {
      ++v3;
      v4 = *(v4 + 8);
    }

    while (v4);
  }

  v5 = *(result + 8);
  if (v3 + v5 > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a2)
  {
    v6 = (*result + 8 * v5);
    do
    {
      *v6++ = *(v2 + 24);
      v2 = *(v2 + 8);
    }

    while (v2);
  }

  *(result + 8) = v5 + v3;
  return result;
}

__n128 sub_23C4F5108(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1B928;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C4F51AC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1B970;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F5240(uint64_t a1, llvm::Constant **a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5 = &unk_284F1B928;
  v6 = *v3;
  v7 = &v5;
  sub_23C4F36F8(v2, &v5);
  return sub_23C4F356C(&v5);
}

uint64_t sub_23C4F52D8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1B8E0;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F5374(uint64_t result, llvm::Constant **a2)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = *(v3 + 24);
    v8 = &unk_284F1C738;
    v9 = *v6;
    v10 = &v8;
    v11[0] = &unk_284F1BB20;
    v11[1] = v5;
    v11[2] = &v8;
    v11[3] = v11;
    v7 = sub_23C4F36F8(v4, v11);
    sub_23C4F356C(v11);
    **(v3 + 8) = v7;
    return sub_23C4F35EC(&v8);
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

const void *sub_23C4F545C(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  sub_23C4C30FC(v4 + *(*v4 - 24) + 8, *a2);
  v5 = v4 + *(*v4 - 24);
  v6 = v3[-4 * (*(v3 + 5) & 0x7FFFFFF)];
  v7 = llvm::ConstantInt::get();
  v17 = 257;
  v8 = sub_23C49A474((v5 + 8), v6, v7, v16);
  v9 = v4 + *(*v4 - 24);
  v10 = llvm::ConstantInt::get();
  v17 = 257;
  v11 = sub_23C49ADDC((v9 + 8), v8, v10, v16);
  v12 = v4 + *(*v4 - 24);
  v13 = *v3;
  v17 = 257;
  v14 = sub_23C49ACF8((v12 + 8), 48, v11, v13, v16);
  if (sub_23C4F3988((v4 + 111), v3))
  {
    sub_23C4FB9F8(v16, (v4 + 111), v14);
  }

  return v14;
}

__n128 sub_23C4F55CC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1C738;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 sub_23C4F5670(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1C6F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C4F571C(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = &unk_284F1C6A8;
  v5[1] = v3;
  v5[3] = v5;
  sub_23C4F36F8(v2, v5);
  return sub_23C4F356C(v5);
}

uint64_t sub_23C4F57A4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  sub_23C4A6D18(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  sub_23C4F3028(v3, v7, *v5);
  return 1;
}

uint64_t sub_23C4F5828(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C6A8;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F58C4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C660;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F5958(uint64_t result, llvm::Constant **a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = **(v3 + 24);
    v8[0] = &unk_284F1C5D0;
    v8[1] = v6;
    v8[3] = v8;
    v9[0] = &unk_284F1BB20;
    v9[1] = v5;
    v9[2] = v8;
    v9[3] = v9;
    v7 = sub_23C4F36F8(v4, v9);
    sub_23C4F356C(v9);
    **(v3 + 8) = v7;
    return sub_23C4F35EC(v8);
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

uint64_t sub_23C4F5A3C(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  sub_23C4C30FC(v4 + *(*v4 - 24) + 8, *a2);
  v5 = v4 + *(*v4 - 24);
  v6 = *(v3 - 32 * (*(v3 + 20) & 0x7FFFFFF));
  v7 = llvm::ConstantInt::get();
  v13 = 257;
  v8 = sub_23C49A474((v5 + 8), v6, v7, v12);
  v9 = v4 + *(*v4 - 24);
  v10 = *v3;
  v13 = 257;
  return sub_23C49ACF8((v9 + 8), 48, v8, v10, v12);
}

uint64_t sub_23C4F5B30(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C5D0;
  a2[1] = v2;
  return result;
}

__n128 sub_23C4F5BCC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1C618;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C4F5C78(uint64_t result, llvm::Constant **a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = **(v3 + 24);
    v8[0] = &unk_284F1C5D0;
    v8[1] = v6;
    v8[3] = v8;
    v9[0] = &unk_284F1BB20;
    v9[1] = v5;
    v9[2] = v8;
    v9[3] = v9;
    v7 = sub_23C4F36F8(v4, v9);
    sub_23C4F356C(v9);
    **(v3 + 8) = v7;
    return sub_23C4F35EC(v8);
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

__n128 sub_23C4F5D64(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1C588;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C4F5E10(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = &unk_284F1C540;
  v5[1] = v3;
  v5[3] = v5;
  sub_23C4F36F8(v2, v5);
  return sub_23C4F356C(v5);
}

uint64_t sub_23C4F5E98(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  sub_23C4A6D18(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  sub_23C4F3028(v3, v7, *v5);
  return 1;
}

uint64_t sub_23C4F5F1C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C540;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F5FB8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C4F8;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F604C(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = &unk_284F1C4B0;
  v5[1] = v3;
  v5[3] = v5;
  sub_23C4F36F8(v2, v5);
  return sub_23C4F356C(v5);
}

uint64_t sub_23C4F60D4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  sub_23C4A6D18(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  sub_23C4F3028(v3, v7, *v5);
  return 1;
}

uint64_t sub_23C4F6158(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C4B0;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F61F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C468;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F6288(uint64_t result, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6[0] = &unk_284F1BC88;
    v6[1] = v5;
    v6[3] = v6;
    **(v3 + 8) = sub_23C4F36F8(v4, v6);
    return sub_23C4F356C(v6);
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

uint64_t sub_23C4F6338(uint64_t a1, uint64_t *a2)
{
  v19[32] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  sub_23C4A6D18(v16, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  if (v16[1] != v16[0])
  {
    return 0;
  }

  sub_23C4B8970();
  sub_23C4E901C();
  sub_23C4E8F14();
  sub_23C4E8F98();
  sub_23C4E8E90();
  v17 = v19;
  v18 = 0x2000000000;
  sub_23C49B500(&v17, v2);
  v3 = v18;
  if (v18)
  {
    while (1)
    {
      v4 = *(v17 + --v3);
      LODWORD(v18) = v3;
      v5 = *(v4 + 8);
      if (v5)
      {
        break;
      }

LABEL_27:
      if (!v3)
      {
        goto LABEL_28;
      }
    }

    while (1)
    {
      v6 = *(v5 + 24);
      v7 = *(v6 + 16);
      if (v7 <= 0x1B)
      {
        break;
      }

      if (v7 != 84)
      {
        if (v7 != 77)
        {
          goto LABEL_30;
        }

LABEL_10:
        sub_23C49B500(&v17, v6);
        goto LABEL_11;
      }

      v8 = *(v6 - 32);
      if (!v8 || *(v8 + 16) || *(v8 + 24) != *(v6 + 72))
      {
        goto LABEL_30;
      }

      llvm::Value::getName(v8);
      Key = llvm::StringMapImpl::FindKey();
      if (Key == -1 || Key == dword_27E1F7458)
      {
        v10 = llvm::StringMapImpl::FindKey();
        if (v10 == -1 || v10 == dword_27E1F7400)
        {
          v11 = llvm::StringMapImpl::FindKey();
          if (v11 == -1 || v11 == dword_27E1F7388)
          {
            v12 = llvm::StringMapImpl::FindKey();
            if (v12 == -1 || v12 == dword_27E1F73B0)
            {
              v13 = llvm::StringMapImpl::FindKey();
              v14 = 0;
              if (v13 == -1 || v13 == dword_27E1F7360)
              {
                goto LABEL_31;
              }
            }
          }
        }
      }

LABEL_11:
      v5 = *(v5 + 8);
      if (!v5)
      {
        v3 = v18;
        goto LABEL_27;
      }
    }

    if (v7 != 5 || *(v6 + 18) != 49)
    {
LABEL_30:
      v14 = 0;
      goto LABEL_31;
    }

    goto LABEL_10;
  }

LABEL_28:
  v14 = 1;
LABEL_31:
  if (v17 != v19)
  {
    free(v17);
  }

  return v14;
}

uint64_t sub_23C4F65E0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BC88;
  a2[1] = v2;
  return result;
}

__n128 sub_23C4F667C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1BC40;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t *sub_23C4F6718(float *a1, unsigned int a2, _DWORD **a3)
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

  return v7;
}

uint64_t sub_23C4F6B10(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
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

uint64_t sub_23C4F6B5C(uint64_t result, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = **(v3 + 16);
    v6[0] = &unk_284F1C3D8;
    v6[1] = v5;
    v6[3] = v6;
    **(v3 + 8) = sub_23C4F36F8(v4, v6);
    return sub_23C4F356C(v6);
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

BOOL sub_23C4F6C10(uint64_t a1, llvm::Constant ***a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  sub_23C4A6D18(&v6, (*a2)[-4 * (*(*a2 + 5) & 0x7FFFFFF) + 4]);
  v4 = sub_23C4F6C90(v3, v6);
  if (v4)
  {
    llvm::ConstantExpr::getPointerCast();
    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v2);
  }

  return v4 != 0;
}

uint64_t *sub_23C4F6C90(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23C4F6D4C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C3D8;
  a2[1] = v2;
  return result;
}

__n128 sub_23C4F6DE8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1C420;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C4F6E84(uint64_t result, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = **(v3 + 16);
    v6[0] = &unk_284F1C3D8;
    v6[1] = v5;
    v6[3] = v6;
    **(v3 + 8) = sub_23C4F36F8(v4, v6);
    return sub_23C4F356C(v6);
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

__n128 sub_23C4F6F40(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1C390;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C4F6FDC(void *a1, llvm::ValueAsMetadata *a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  llvm::ValueAsMetadata::get();
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  llvm::MDString::get();
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  v6 = *(a1 + *(*a1 - 24) + 328);
  Impl = llvm::MDTuple::getImpl();
  return sub_23C49B500(v6, Impl);
}

uint64_t sub_23C4F714C(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = &unk_284F1C348;
  v5[1] = v3;
  v5[3] = v5;
  sub_23C4F36F8(v2, v5);
  return sub_23C4F356C(v5);
}

uint64_t sub_23C4F71D4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  sub_23C4A6D18(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  sub_23C4F3028(v3, v7, *v5);
  return 1;
}

uint64_t sub_23C4F7258(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C348;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F72F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C300;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F7388(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = &unk_284F1C2B8;
  v5[1] = v3;
  v5[3] = v5;
  sub_23C4F36F8(v2, v5);
  return sub_23C4F356C(v5);
}

uint64_t sub_23C4F7410(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  sub_23C4A6D18(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  sub_23C4F3028(v3, v7, *v5);
  return 1;
}

uint64_t sub_23C4F7494(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C2B8;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F7530(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C270;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F75C4(uint64_t result, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = **(v3 + 16);
    v6[0] = &unk_284F1C228;
    v6[1] = v5;
    v6[3] = v6;
    **(v3 + 8) = sub_23C4F36F8(v4, v6);
    return sub_23C4F356C(v6);
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

uint64_t sub_23C4F7678(uint64_t a1, llvm::Value **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = (*a2 - 4 * (*(*a2 + 5) & 0x7FFFFFF))[12];
  v5 = v4[4];
  if (v5)
  {
    v6 = v5 == v4[5] + 40;
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
    v7 = v5 - 24;
  }

  sub_23C4C30FC(v3 + *(*v3 - 24) + 8, v7);
  v8 = (v3 + *(*v3 - 24));
  v11 = 257;
  sub_23C497C88(v8 + 1, **(*v4 + 16), v4, 0, v10);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(v2);
  return 1;
}

uint64_t sub_23C4F7754(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C228;
  a2[1] = v2;
  return result;
}

__n128 sub_23C4F77F0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1C1E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C4F788C(uint64_t result, llvm::Constant **a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = **(v3 + 24);
    v8[0] = &unk_284F1C198;
    v8[1] = v6;
    v8[3] = v8;
    v9[0] = &unk_284F1BB20;
    v9[1] = v5;
    v9[2] = v8;
    v9[3] = v9;
    v7 = sub_23C4F36F8(v4, v9);
    sub_23C4F356C(v9);
    **(v3 + 8) = v7;
    return sub_23C4F35EC(v8);
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

uint64_t sub_23C4F7970(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a1 + 8);
  sub_23C4C30FC(v4 + *(*v4 - 24) + 8, *a2);
  v5 = v4 + *(*v4 - 24);
  v6 = *(v3 - 32 * (*(v3 + 20) & 0x7FFFFFF));
  v7 = llvm::ConstantInt::get();
  v19 = 257;
  v8 = sub_23C49A474((v5 + 8), v6, v7, v18);
  v9 = v4 + *(*v4 - 24);
  v10 = v4[209];
  v20[0] = llvm::ConstantInt::get();
  v20[1] = v8;
  v19 = 257;
  v11 = sub_23C4ED3A0(v9, v10, v20, 2, v18);
  v17 = 257;
  v12 = sub_23C497C88((v9 + 8), **(*v11 + 16), v11, 0, v16);
  v13 = v4 + *(*v4 - 24);
  v14 = *v3;
  v19 = 257;
  return sub_23C49ACF8((v13 + 8), 48, v12, v14, v18);
}

uint64_t sub_23C4F7B04(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C198;
  a2[1] = v2;
  return result;
}

__n128 sub_23C4F7BA0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1C150;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_23C4F7C4C(void *a1, uint64_t *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = 1;
  v7 = llvm::User::operator new(0x58);
  llvm::ArrayType::get(*(a3 + 32), *(a2 + 2));
  v8 = *(a3 + 24);
  v9 = "_indirect";
  if (*v8)
  {
    v18[0] = "_indirect";
    v6 = 3;
    v9 = v8;
  }

  v17[0] = v9;
  v19 = 3;
  v20 = v6;
  llvm::GlobalVariable::GlobalVariable();
  if (*(a3 + 40))
  {
    strlen(*(a3 + 40));
  }

  llvm::GlobalObject::setSection();
  v17[0] = v18;
  v17[1] = 0x2000000000;
  v10 = llvm::ValueAsMetadata::get();
  sub_23C49B500(v17, v10);
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  v11 = *(a2 + 2);
  if (v11)
  {
    v12 = *a2;
    v13 = 16 * v11;
    do
    {
      v12 += 16;
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      Impl = llvm::MDTuple::getImpl();
      sub_23C49B500(v17, Impl);
      v13 -= 16;
    }

    while (v13);
  }

  v15 = *(a1 + *(*a1 - 24) + 328);
  v16 = llvm::MDTuple::getImpl();
  sub_23C49B500(v15, v16);
  sub_23C4D56F8(a3, v7);
  if (v17[0] != v18)
  {
    free(v17[0]);
  }
}

uint64_t sub_23C4F7ED0(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 224);
    v4 = *(v2 + 16);
    if (v4)
    {
      v5 = *(v2 + 8);
      v6 = &v5[4 * v4];
      v7 = a2 - *(v2 + 228);
      do
      {
        v8 = v5[2];
        v9 = v7 / v8;
        v7 %= v8;
        v3 += *(*v5 + 20) * v9;
        v5 += 4;
      }

      while (v5 != v6);
    }

    return a2 & 0xFFFF0000 | v3;
  }

  return a2;
}

uint64_t sub_23C4F7F30(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = &unk_284F1C108;
  v5[1] = v3;
  v5[3] = v5;
  sub_23C4F36F8(v2, v5);
  return sub_23C4F356C(v5);
}

uint64_t sub_23C4F7FB8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  sub_23C4A6D18(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  sub_23C4F3028(v3, v7, *v5);
  return 1;
}

uint64_t sub_23C4F803C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C108;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F80D8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C0C0;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F8170(uint64_t result, llvm::Constant **a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = **(v3 + 24);
    v8[0] = &unk_284F1C030;
    v8[1] = v6;
    v8[3] = v8;
    v9[0] = &unk_284F1BB20;
    v9[1] = v5;
    v9[2] = v8;
    v9[3] = v9;
    v7 = sub_23C4F36F8(v4, v9);
    sub_23C4F356C(v9);
    **(v3 + 8) = v7;
    return sub_23C4F35EC(v8);
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

uint64_t sub_23C4F8254(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  sub_23C4C30FC(v4 + *(*v4 - 24) + 8, *a2);
  v5 = v4 + *(*v4 - 24);
  v6 = *(v3 - 32 * (*(v3 + 20) & 0x7FFFFFF));
  v7 = llvm::ConstantInt::get();
  v13 = 257;
  v8 = sub_23C49A474((v5 + 8), v6, v7, v12);
  v9 = v4 + *(*v4 - 24);
  v10 = *v3;
  v13 = 257;
  return sub_23C49ACF8((v9 + 8), 48, v8, v10, v12);
}

uint64_t sub_23C4F8348(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1C030;
  a2[1] = v2;
  return result;
}

__n128 sub_23C4F83E4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1C078;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C4F8490(uint64_t result, llvm::Constant **a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = **(v3 + 24);
    v8[0] = &unk_284F1C030;
    v8[1] = v6;
    v8[3] = v8;
    v9[0] = &unk_284F1BB20;
    v9[1] = v5;
    v9[2] = v8;
    v9[3] = v9;
    v7 = sub_23C4F36F8(v4, v9);
    sub_23C4F356C(v9);
    **(v3 + 8) = v7;
    return sub_23C4F35EC(v8);
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

__n128 sub_23C4F857C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1BFE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C4F8628(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = &unk_284F1BFA0;
  v5[1] = v3;
  v5[3] = v5;
  sub_23C4F36F8(v2, v5);
  return sub_23C4F356C(v5);
}

uint64_t sub_23C4F86B0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  sub_23C4A6D18(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  sub_23C4F3028(v3, v7, *v5);
  return 1;
}

uint64_t sub_23C4F8734(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BFA0;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F87D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BF58;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F8864(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = &unk_284F1BF10;
  v5[1] = v3;
  v5[3] = v5;
  sub_23C4F36F8(v2, v5);
  return sub_23C4F356C(v5);
}

uint64_t sub_23C4F88EC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  sub_23C4A6D18(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  sub_23C4F3028(v3, v7, *v5);
  return 1;
}

uint64_t sub_23C4F8970(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BF10;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F8A0C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BEC8;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F8AA0(uint64_t result, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = **(v3 + 16);
    v6[0] = &unk_284F1BE38;
    v6[1] = v5;
    v6[3] = v6;
    **(v3 + 8) = sub_23C4F36F8(v4, v6);
    return sub_23C4F356C(v6);
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

BOOL sub_23C4F8B54(uint64_t a1, llvm::Constant ***a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  sub_23C4A6D18(&v6, (*a2)[-4 * (*(*a2 + 5) & 0x7FFFFFF) + 4]);
  v4 = sub_23C4F6C90(v3, v6);
  if (v4)
  {
    llvm::ConstantExpr::getPointerCast();
    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v2);
  }

  return v4 != 0;
}

uint64_t sub_23C4F8BDC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BE38;
  a2[1] = v2;
  return result;
}

__n128 sub_23C4F8C78(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1BE80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C4F8D14(uint64_t result, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = **(v3 + 16);
    v6[0] = &unk_284F1BE38;
    v6[1] = v5;
    v6[3] = v6;
    **(v3 + 8) = sub_23C4F36F8(v4, v6);
    return sub_23C4F356C(v6);
  }

  else
  {
    *v2 = 0;
  }

  return result;
}

__n128 sub_23C4F8DD0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F1BDF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C4F8E6C(uint64_t a1, uint64_t a2, uint64_t a3)
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

  sub_23C4F8F20(a1, v6);
  v8 = 0;
  sub_23C4FB49C(*a1, *(a1 + 16), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *sub_23C4F8F20(llvm **a1, int a2)
{
  v3 = *(a1 + 4);
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

  *(a1 + 4) = v8;
  *a1 = MEMORY[0x23EED4160](v8, 48 * v8, 8);
  if (v4)
  {
    sub_23C4F9130(a1);
    v21[0] = 2;
    v21[1] = 0;
    v22 = -4096;
    v23 = 0;
    v19 = 0;
    v20 = &unk_284F1B800;
    v17[0] = 2;
    v17[1] = 0;
    v18 = -8192;
    v9 = 3 * v3;
    if (v3)
    {
      v10 = v4 + 24;
      v11 = 16 * v9;
      do
      {
        v12 = *v10;
        if (*v10 != v22 && v12 != v18)
        {
          v24 = 0;
          sub_23C4FB49C(*a1, *(a1 + 4), v12, &v24);
          v14 = v24;
          sub_23C4DDEAC((v24 + 8), v10 - 2);
          v12 = *v10;
          *(v14 + 32) = *(v10 + 1);
          *(v14 + 40) = *(v10 + 4);
          ++*(a1 + 2);
        }

        if (v12 != -8192 && v12 != -4096 && v12 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v10 - 16));
        }

        v10 += 48;
        v11 -= 48;
      }

      while (v11);
      if (v18 != -8192 && v18 != -4096 && v18)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v17);
      }
    }

    if (v22 != -8192 && v22 != -4096 && v22)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v21);
    }

    return llvm::deallocate_buffer(v4, (16 * v9));
  }

  else
  {

    return sub_23C4F9130(a1);
  }
}

uint64_t *sub_23C4F9130(uint64_t *result)
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
    v3 = *result + 48 * v1;
    result = (*result + 8);
    do
    {
      v4 = sub_23C4EDBD4(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_284F1B800;
      *(v4 + 3) = v9;
      v5 = v4 + 40;
      result = (v4 + 48);
      v2 += 48;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

uint64_t sub_23C4F9210(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  sub_23C4EDBD4(v12, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v14 = v4;
  v19 = 0;
  result = sub_23C4FB49C(*v4, v4[2].i32[0], v13, &v19);
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
    v19 = &unk_284F1B800;
    sub_23C4DDEAC((v6 + 8), v20);
    v9 = v21;
    *(v6 + 32) = v22;
    if (v9 != -8192 && v9 != -4096 && v9)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v20);
    }

    v7[1] = vadd_s32(v7[1], 0x1FFFFFFFFLL);
    v10 = v14;
    sub_23C4EDC2C(&v15, a2);
    v15 = &unk_284F1B800;
    v18 = v10;
    sub_23C4EDBD4(v20, (LODWORD(v16[0]) >> 1) & 3, v16);
    v19 = &unk_284F1B800;
    v22 = v18;
    v23 = v8;
    v24 = 0;
    result = sub_23C4FB49C(*v10, *(v10 + 16), v21, &v24);
    if ((result & 1) == 0)
    {
      v11 = sub_23C4F8E6C(v10, &v19, v24);
      result = sub_23C4DDEAC((v11 + 8), v20);
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

llvm::ValueHandleBase *sub_23C4F946C(uint64_t a1)
{
  v1 = a1 + 8;
  sub_23C4EDBD4(v7, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v9 = v2;
  v10 = 0;
  result = sub_23C4FB49C(*v2, *(v2 + 16), v8, &v10);
  if (result)
  {
    v4 = v10;
    v11[0] = 2;
    v11[1] = 0;
    v12 = -8192;
    v13 = 0;
    v10 = &unk_284F1B800;
    result = sub_23C4DDEAC((v4 + 1), v11);
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

uint64_t sub_23C4F9588(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = &unk_284F1BDA8;
  v5[1] = v3;
  v5[3] = v5;
  sub_23C4F36F8(v2, v5);
  return sub_23C4F356C(v5);
}

uint64_t sub_23C4F9610(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  sub_23C4A6D18(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  sub_23C4F3028(v3, v7, *v5);
  return 1;
}

uint64_t sub_23C4F9694(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BDA8;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F9730(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BD60;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F97C4(uint64_t a1, llvm::Constant **a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v5[0] = &unk_284F1BD18;
  v5[1] = v3;
  v5[3] = v5;
  sub_23C4F36F8(v2, v5);
  return sub_23C4F356C(v5);
}

uint64_t sub_23C4F984C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  sub_23C4A6D18(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  sub_23C4F3028(v3, v7, *v5);
  return 1;
}

uint64_t sub_23C4F98D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BD18;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C4F996C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F1BCD0;
  a2[1] = v2;
  return result;
}

BOOL sub_23C4F9A00(char a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (a2 && *(a2 + 16) == 61)
  {
    v4 = **(a2 - 32);
    v5 = *(v4 + 8);
    if ((v5 & 0xFE) == 0x12)
    {
      v5 = *(**(v4 + 16) + 8);
    }

    if (v5 <= 0xFF)
    {
      return *(a2 - 64) == a3;
    }

    return 0;
  }

  return result;
}

BOOL sub_23C4F9A5C(void *a1, uint64_t a2)
{
  v2 = a2;
  if (**(*a2 + 16) == *(a1 + *(*a1 - 24) + 176))
  {
    while (1)
    {
      v2 = *(v2 + 8);
      result = v2 == 0;
      if (!v2)
      {
        break;
      }

      if (*(*(v2 + 24) + 16) != 84)
      {
        return 0;
      }
    }
  }

  else
  {
    while (1)
    {
      v2 = *(v2 + 8);
      result = v2 == 0;
      if (!v2)
      {
        break;
      }

      v5 = *(v2 + 24);
      if (*(v5 + 16) != 77 || !sub_23C4F9A5C(a1, v5))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23C4F9B04(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v32 = *(v15 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v33, (v15 + 8));
  v34 = *(v15 + 104);
  v16 = *(v14[20] + 80);
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
    v19 = v18 - 24;
  }

  else
  {
    v19 = 0;
  }

  sub_23C4C30FC(v14 + *(*v14 - 24) + 8, v19);
  v20 = (a3 + 264);
  if (!*(a3 + 268))
  {
    v20 = &unk_23C532CD4;
  }

  sub_23C4FA868(v14, *(a3 + 256), a2, **(a1 + 16), *(a3 + 248), *v20);
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
  sub_23C49769C(&v29, (v27 + 8));
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

uint64_t sub_23C4FA0E4(uint64_t result, char *a2, char *a3)
{
  v3 = a2;
  v4 = *(result + 8);
  if (v4 + ((a3 - a2) >> 5) > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a2 != a3)
  {
    v5 = (*result + 8 * v4);
    do
    {
      v6 = *v3;
      v3 += 32;
      *v5++ = v6;
    }

    while (v3 != a3);
  }

  *(result + 8) = v4 + ((a3 - a2) >> 5);
  return result;
}

unsigned int *sub_23C4FA168(unsigned int *result, unsigned __int16 a2, int a3)
{
  *result = a2;
  if (a3 > -5)
  {
    if (a3 <= -3)
    {
      if (a3 == -4)
      {
        v3 = a2 | 0x30000;
      }

      else
      {
        v3 = a2 | 0x20000;
      }

      goto LABEL_19;
    }

    if (a3 == -1)
    {
      return result;
    }

    if (a3 == -2)
    {
      v3 = a2 | 0x10000;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (a3 > -8)
  {
    if (a3 == -7)
    {
      v3 = a2 | 0x60000;
      goto LABEL_19;
    }

    if (a3 == -5)
    {
      v3 = a2 | 0x40000;
      goto LABEL_19;
    }

LABEL_18:
    v3 = a2 | (a3 << 16) | 0x80000000;
    goto LABEL_19;
  }

  if (a3 == -9)
  {
    v3 = a2 | 0x80000;
    goto LABEL_19;
  }

  if (a3 != -8)
  {
    goto LABEL_18;
  }

  v3 = a2 | 0x70000;
LABEL_19:
  *result = v3;
  return result;
}

uint64_t *sub_23C4FA210(uint64_t *result, unsigned int a2, uint64_t a3)
{
  v3 = result[1];
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
      v5 = *(v3 + 32);
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
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_23C4FA2D8(float *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = 0x9DDFEA08EB382D69 * ((8 * (a3 & 0x1FFFFFFF) + 8) ^ HIDWORD(a3));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v7 >> 47) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = *(a1 + 4);
  if (!*&v10)
  {
    goto LABEL_17;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = v9;
    if (v9 >= *&v10)
    {
      v12 = v9 % *&v10;
    }
  }

  else
  {
    v12 = v9 & (*&v10 - 1);
  }

  v13 = *(*(a1 + 1) + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_17:
    llvm::FunctionType::get();
    v16 = *a1;
    v17 = **a1;
    v30 = *(a1 + 4);
    v18 = &v30;
    if (v17)
    {
      v31[2] = &v30;
      v19 = 10;
      v20 = 3;
      v18 = v16;
    }

    else
    {
      v19 = 1;
      v20 = 10;
    }

    v31[0] = v18;
    v32 = v20;
    v33 = v19;
    llvm::Twine::str(&__p, v31);
    llvm::Module::getOrInsertFunction();
    v29 = v21;
    if (v35 < 0)
    {
      operator delete(__p);
    }

    v22 = *(a1 + 4);
    if (!*&v22)
    {
      goto LABEL_39;
    }

    v23 = vcnt_s8(v22);
    v23.i16[0] = vaddlv_u8(v23);
    if (v23.u32[0] > 1uLL)
    {
      v24 = v9;
      if (v9 >= *&v22)
      {
        v24 = v9 % *&v22;
      }
    }

    else
    {
      v24 = v9 & (*&v22 - 1);
    }

    v25 = *(*(a1 + 1) + 8 * v24);
    if (!v25 || (v26 = *v25) == 0)
    {
LABEL_39:
      operator new();
    }

    while (1)
    {
      v27 = v26[1];
      if (v27 == v9)
      {
        if (v26[2] == a3)
        {
          sub_23C4D56F8((v26 + 3), v29);
          return v29;
        }
      }

      else
      {
        if (v23.u32[0] > 1uLL)
        {
          if (v27 >= *&v22)
          {
            v27 %= *&v22;
          }
        }

        else
        {
          v27 &= *&v22 - 1;
        }

        if (v27 != v24)
        {
          goto LABEL_39;
        }
      }

      v26 = *v26;
      if (!v26)
      {
        goto LABEL_39;
      }
    }
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v9)
    {
      break;
    }

    if (v11.u32[0] > 1uLL)
    {
      if (v15 >= *&v10)
      {
        v15 %= *&v10;
      }
    }

    else
    {
      v15 &= *&v10 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  if (v14[2] != a3)
  {
    goto LABEL_16;
  }

  return v14[5];
}

uint64_t sub_23C4FA868(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5, uint64_t a6)
{
  v9 = a3;
  v12 = *(a2 + 8);
  if ((v12 & 0xFE) == 0x12)
  {
    v12 = *(**(a2 + 16) + 8);
  }

  if ((v12 & 0xFFFFFF00) == 0x300)
  {
    v13 = llvm::User::operator new(0x58);
    v29[0] = "agc.local_buffer_pointers.";
    v30 = v9;
    v31 = 2051;
    v14 = llvm::GlobalVariable::GlobalVariable();
    *(v14 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    llvm::GlobalObject::setAlignment();
    sub_23C506A1C(a1 + *(*a1 - 24), v13, 0x2Bu, v9);
    v15 = a1 + *(*a1 - 24);
    v31 = 257;
    v16 = sub_23C497C88((v15 + 8), **(*v13 + 16), v13, 0, v29);
    v28 = 257;
    v17 = sub_23C49ACF8(v15 + 8, 48, v16, a2, v27);
  }

  else
  {
    if (a4 == -1)
    {
      LODWORD(v27[0]) = a3;
      v18 = 8;
      v19 = 1;
      v20 = v27[0];
    }

    else
    {
      v25[0] = a4;
      v25[2] = ".";
      v26 = 776;
      v27[0] = v25;
      v27[2] = a3;
      v18 = 2;
      v19 = 8;
      v20 = v27;
    }

    LOBYTE(v28) = v18;
    HIBYTE(v28) = v19;
    v29[0] = "agc.buffer_pointers.";
    v30 = v20;
    LOBYTE(v31) = 3;
    HIBYTE(v31) = v18;
    sub_23C4FA168(&v24, a3, a4);
    v13 = sub_23C4ED494(a1, a2, v29, v24, a5, 5u);
    v21 = a1 + *(*a1 - 24);
    v31 = 257;
    v17 = sub_23C497C88((v21 + 8), **(*v13 + 16), v13, 0, v29);
    if (a4 == -1)
    {
      ++*(a1 + 2280);
    }
  }

  if (a6 != -1)
  {
    v22 = *(a1 + *(*a1 - 24) + 344);
    (*(*v22 + 168))(v22, v13, a6, 0, 0);
  }

  return v17;
}

int32x2_t sub_23C4FAB6C(int32x2_t *a1, uint64_t a2)
{
  v7[0] = 2;
  v7[1] = 0;
  v8 = -8192;
  v9 = 0;
  sub_23C4DDEAC((a2 + 8), v7);
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

uint64_t sub_23C4FAC14(void *a1, uint64_t a2, llvm::PointerType ***a3)
{
  llvm::StructType::get();
  v6 = *(a2 - 64);
  v7 = llvm::PointerType::get();
  v8 = sub_23C4FAF94(a1, v6, v7);
  v9 = (a1 + *(*a1 - 24));
  v34 = 257;
  v10 = sub_23C497C88(v9 + 1, **(*v8 + 16), v8, 0, v33);
  v11 = *(a3 + 2);
  if (v11)
  {
    v12 = *a3;
    v13 = 8 * v11;
    do
    {
      *v12++ = llvm::PointerType::get();
      v13 -= 8;
    }

    while (v13);
  }

  v14 = llvm::PointerType::get();
  sub_23C49B500(a3, v14);
  sub_23C49B500(a3, *(a1 + *(*a1 - 24) + 192));
  llvm::StructType::get();
  v15 = *(a2 - 32);
  v16 = llvm::PointerType::get();
  v17 = sub_23C4FAF94(a1, v15, v16);
  v18 = a1 + 1;
  v19 = *(*a1 - 24);
  v34 = 257;
  v20 = sub_23C497C88((a1 + v19 + 8), **(*v17 + 16), v17, 0, v33);
  v32 = 0;
  if (*(a3 + 2) == 2)
  {
    v21 = 0;
  }

  else
  {
    do
    {
      v22 = *(*a1 - 24);
      v34 = 257;
      v23 = sub_23C49B32C(v18 + v22, v10, &v32, 1, v33);
      v24 = *(*a1 - 24);
      v34 = 257;
      v25 = sub_23C49B32C(v18 + v24, v20, &v32, 1, v33);
      sub_23C4BA8C0((v18 + *(*a1 - 24)), v23, v25, 0);
      v21 = ++v32;
    }

    while (*(a3 + 2) - 2 > v32);
  }

  v26 = a1 + *(*a1 - 24);
  v31 = v21;
  v32 = v21 + 1;
  v34 = 257;
  v27 = sub_23C49B32C((v26 + 8), v20, &v31, 1, v33);
  v28 = a1 + *(*a1 - 24);
  v34 = 257;
  v29 = sub_23C49B32C((v28 + 8), v20, &v32, 1, v33);
  return sub_23C4BA8C0((a1 + *(*a1 - 24) + 8), v29, v27, 0);
}

uint64_t sub_23C4FAF94(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + *(*a1 - 24);
  v6 = *(v5 + 25);
  v11 = 257;
  v7 = sub_23C49ACF8((v5 + 8), 47, a2, v6, v10);
  v8 = a1 + *(*a1 - 24);
  v11 = 257;
  return sub_23C49ACF8((v8 + 8), 48, v7, a3, v10);
}

uint64_t sub_23C4FB034(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = llvm::StructType::get();
  v7 = llvm::UndefValue::get();
  v8 = sub_23C506824(a1 + *(*a1 - 24), v6);
  v9 = *a3;
  v10 = *(a3 + 8);
  if (v10)
  {
    v11 = 8 * v10;
    do
    {
      *v9++ = llvm::PointerType::get();
      v11 -= 8;
    }

    while (v11);
  }

  llvm::StructType::get();
  v12 = *(a2 - 4);
  v13 = llvm::PointerType::get();
  v14 = sub_23C4FAF94(a1, v12, v13);
  v15 = a1 + 1;
  v16 = *(*a1 - 24);
  v28 = 257;
  v17 = sub_23C497C88((a1 + v16 + 8), **(*v14 + 16), v14, 0, v27);
  v26 = 0;
  if (*(a3 + 8))
  {
    v18 = v17;
    do
    {
      v19 = *(*a1 - 24);
      v28 = 257;
      v20 = sub_23C49B32C(v15 + v19, v18, &v26, 1, v27);
      v21 = *(*a1 - 24);
      v28 = 257;
      v22 = sub_23C497C88((v15 + v21), **(*v20 + 16), v20, 0, v27);
      v25 = 257;
      v7 = sub_23C49A744((v15 + v21), v7, v22, &v26, 1, v24);
      ++v26;
    }

    while (*(a3 + 8) > v26);
  }

  sub_23C4BA8C0((a1 + *(*a1 - 24) + 8), v7, v8, 0);
  return sub_23C4FAF94(a1, v8, *a2);
}

uint64_t sub_23C4FB2B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  sub_23C4EDBD4(v10, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v12 = v4;
  v17 = 0;
  if (sub_23C4FB49C(*v4, v4[2].i32[0], v11, &v17))
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
    sub_23C4FAB6C(v12, v5);
    v8 = v12;
    sub_23C4EDC2C(&v13, a2);
    v13 = &unk_284F1B7B0;
    v16 = v8;
    sub_23C4EDBD4(v18, (LODWORD(v14[0]) >> 1) & 3, v14);
    v17 = &unk_284F1B7B0;
    v20 = v16;
    v21 = v7;
    v22 = 0;
    result = sub_23C4FB49C(*v8, v8[2].i32[0], v19, &v22);
    if ((result & 1) == 0)
    {
      v9 = sub_23C4FB534(v8, &v17, v22);
      result = sub_23C4DDEAC((v9 + 1), v18);
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

uint64_t sub_23C4FB49C(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = a1 + 48 * v5;
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
        v6 = a1 + 48 * (v13 & v4);
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

uint64_t sub_23C4FB534(uint64_t a1, uint64_t a2, uint64_t a3)
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

  sub_23C4FB5E8(a1, v6);
  v8 = 0;
  sub_23C4FB49C(*a1, *(a1 + 16), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *sub_23C4FB5E8(uint64_t a1, int a2)
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
  *a1 = MEMORY[0x23EED4160](v8, 48 * v8, 8);
  if (v4)
  {
    sub_23C4FB7FC(a1);
    v21[0] = 2;
    v21[1] = 0;
    v22 = -4096;
    v23 = 0;
    v19 = 0;
    v20 = &unk_284F1B7B0;
    v17[0] = 2;
    v17[1] = 0;
    v18 = -8192;
    v9 = 3 * v3;
    if (v3)
    {
      v10 = (v4 + 24);
      v11 = 16 * v9;
      do
      {
        v12 = *v10;
        if (*v10 != v22 && v12 != v18)
        {
          v24 = 0;
          sub_23C4FB49C(*a1, *(a1 + 16), v12, &v24);
          v14 = v24;
          sub_23C4DDEAC((v24 + 8), v10 - 2);
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
      if (v18 != -8192 && v18 != -4096 && v18)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v17);
      }
    }

    if (v22 != -8192 && v22 != -4096 && v22)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v21);
    }

    return llvm::deallocate_buffer(v4, (16 * v9));
  }

  else
  {

    return sub_23C4FB7FC(a1);
  }
}

uint64_t *sub_23C4FB7FC(uint64_t *result)
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
    v3 = *result + 48 * v1;
    result = (*result + 8);
    do
    {
      v4 = sub_23C4EDBD4(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_284F1B7B0;
      *(v4 + 3) = v9;
      v5 = v4 + 40;
      result = (v4 + 48);
      v2 += 48;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

uint64_t sub_23C4FB8DC(uint64_t a1)
{
  v1 = a1 + 8;
  sub_23C4EDBD4(v7, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v9 = v2;
  v10 = 0;
  result = sub_23C4FB49C(*v2, *(v2 + 16), v8, &v10);
  if (result)
  {
    v4 = v10;
    v11[0] = 2;
    v11[1] = 0;
    v12 = -8192;
    v13 = 0;
    v10 = &unk_284F1B7B0;
    result = sub_23C4DDEAC((v4 + 1), v11);
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

void *sub_23C4FB9F8(uint64_t a1, llvm::SmallPtrSetImplBase *a2, const void *a3)
{
  result = sub_23C4F493C(a2, a3);
  v7 = *(a2 + 1);
  v8 = 16;
  if (v7 == *a2)
  {
    v8 = 20;
  }

  v9 = (v7 + 8 * *(a2 + v8));
  if (v9 != result)
  {
    while (*result >= 0xFFFFFFFFFFFFFFFELL)
    {
      if (++result == v9)
      {
        result = v9;
        break;
      }
    }
  }

  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = v6;
  return result;
}

uint64_t sub_23C4FBA78(uint64_t *a1)
{
  v1 = *a1;
  if (*(a1 + 10) == 1 && *(*(a1 + *(v1 - 24) + 344) + 1674) != 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(*(a1 + *(v1 - 24) + 344) + 1660);
  }

  return v2 & 1;
}

uint64_t sub_23C4FBAE0(uint64_t *a1)
{
  v1 = *a1;
  if (*(a1 + 10) == 1 && *(*(a1 + *(v1 - 24) + 344) + 1674) != 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(*(a1 + *(v1 - 24) + 344) + 1659);
  }

  return v2 & 1;
}

uint64_t sub_23C4FBB48(uint64_t *a1)
{
  v1 = *a1;
  if (*(a1 + 10) == 1 && *(*(a1 + *(v1 - 24) + 344) + 1674) != 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(*(a1 + *(v1 - 24) + 344) + 1658);
  }

  return v2 & 1;
}

uint64_t sub_23C4FBBB0(void *a1)
{
  v107 = *MEMORY[0x277D85DE8];
  v1 = a1 + *(*a1 - 24);
  if (*(*(v1 + 43) + 1662) == 1)
  {
    v2 = *(v1 + 40);
    v3 = v2 + 8;
    v4 = *(v2 + 16);
    if (v4 != v2 + 8)
    {
      while (1)
      {
        v6 = v4 ? (v4 - 56) : 0;
        v7 = *v6;
        if (*v6)
        {
          if ((llvm::GlobalValue::isDeclaration(v6) & 1) == 0)
          {
            v8 = *(v7 + 8);
            if ((v8 & 0xFE) == 0x12)
            {
              v8 = *(**(v7 + 16) + 8);
            }

            if ((v8 & 0xFFFFFF00) == 0x200 && *(v6 + 1))
            {
              break;
            }
          }
        }

        v4 = *(v4 + 8);
        if (v4 == v3)
        {
          return 1;
        }
      }

      v10 = a1 + *(*a1 - 24);
      v11 = *(v10 + 50);
      v12 = *(v10 + 40);
      sub_23C4AEA64(v11);
      llvm::legacy::PassManager::run(*(v11 + 336), v12);
      v13 = a1 + *(*a1 - 24);
      v14 = *(v13 + 50);
      v15 = *(v13 + 40);
      sub_23C4AEAD4(v14);
      llvm::legacy::PassManager::run(*(v14 + 344), v15);
      v105 = 128;
      v104[0] = MEMORY[0x23EED4160](0x2000, 8);
      sub_23C4FC698(v104);
      v106[0] = 0;
      v106[24] = 0;
      v99 = &v101;
      v100 = 0x2000000000;
      v16 = *(a1 + *(*a1 - 24) + 320);
      v17 = v16 + 8;
      v18 = *(v16 + 16);
      if (v18 != v16 + 8)
      {
        do
        {
          if (v18)
          {
            v19 = (v18 - 56);
          }

          else
          {
            v19 = 0;
          }

          v20 = *v19;
          if (*v19 && (llvm::GlobalValue::isDeclaration(v19) & 1) == 0)
          {
            v21 = *(v20 + 8);
            if ((v21 & 0xFE) == 0x12)
            {
              v21 = *(**(v20 + 16) + 8);
            }

            if ((v21 & 0xFFFFFF00) == 0x200)
            {
              v22 = llvm::User::operator new(0x58);
              Name = llvm::Value::getName(v19);
              LOWORD(v98) = 261;
              v94 = Name;
              v95 = v24;
              v25 = llvm::GlobalVariable::GlobalVariable();
              llvm::GlobalVariable::copyAttributesFrom(v25, v19);
              llvm::GlobalObject::setSection();
              if ((llvm::GlobalValue::isDeclaration(v19) & 1) == 0)
              {
                llvm::ValueMapper::ValueMapper();
                llvm::ValueMapper::mapConstant();
                MEMORY[0x23EED3DD0](&v94);
                llvm::GlobalVariable::setInitializer();
              }

              v26 = sub_23C4FC774(v104, v19);
              sub_23C4D56F8(v26, v22);
              if (v100 >= HIDWORD(v100))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              *(v99 + v100) = v19;
              LODWORD(v100) = v100 + 1;
            }
          }

          v18 = *(v18 + 8);
        }

        while (v18 != v17);
        v27 = v99;
        if (v100)
        {
          v91 = 0;
          v92 = 0;
          v28 = v99 + 8 * v100;
          v93 = 0;
          do
          {
            for (i = *(*v27 + 8); i; i = *(i + 8))
            {
              v30 = *(i + 24);
              v31 = *(v30 + 16);
              if (v30)
              {
                v32 = v31 >= 0x1C;
              }

              else
              {
                v32 = 0;
              }

              if (!v32 && (!v30 || v31 != 5))
              {
                continue;
              }

              v94 = *(i + 24);
              sub_23C4FC844(&v91, &v94);
            }

            v27 += 8;
          }

          while (v27 != v28);
          v35 = v91;
          v34 = v92;
          v88 = 0;
          v89 = 0;
          v90 = 0;
          if (v91 == v92)
          {
            v69 = 0;
          }

          else
          {
            do
            {
              v36 = *(v34 - 1);
              v92 = (v34 - 1);
              v37 = *(v36 + 16);
              if (v36 && v37 == 60 || v36 && v37 == 84)
              {
                llvm::Instruction::clone(v36);
                llvm::SymbolTableListTraits<llvm::Instruction>::addNodeToList();
              }

              if (v36 && v37 == 77)
              {
                if (*(*v36 + 24))
                {
                  llvm::PointerType::get();
                }

                else
                {
                  llvm::PointerType::get(**v36, 0x40);
                }

                v46 = llvm::User::operator new(0x40);
                sub_23C4FC774(v104, *(v36 - 32));
                v47 = llvm::Value::getName(v36);
                LOWORD(v98) = 261;
                v94 = v47;
                v95 = v48;
                llvm::BitCastInst::BitCastInst();
                v49 = sub_23C4FC774(v104, v36);
                sub_23C4D56F8(v49, v46);
                for (j = *(v36 + 8); j; j = *(j + 8))
                {
                  v94 = *(j + 24);
                  sub_23C4FC844(&v91, &v94);
                }

                v94 = v36;
                sub_23C4FC844(&v88, &v94);
              }

              else if (v36 && v37 == 62)
              {
                v84 = 0;
                v85 = 0;
                v86 = 0;
                v38 = *(v36 + 20) & 0x7FFFFFF;
                if (v36 - 32 * v38 + 32 == v36)
                {
                  v41 = 0;
                  v42 = 0;
                  v40 = -v38;
                }

                else
                {
                  v39 = 32 - 32 * v38;
                  do
                  {
                    v94 = *(v36 + v39);
                    sub_23C4FC844(&v84, &v94);
                    v39 += 32;
                  }

                  while (v39);
                  v40 = -(*(v36 + 20) & 0x7FFFFFF);
                  v42 = v84;
                  v41 = v85;
                }

                v54 = sub_23C4FC774(v104, *(v36 + 32 * v40))[2];
                v55 = llvm::Value::getName(v36);
                LOWORD(v98) = 261;
                v94 = v55;
                v95 = v56;
                v57 = sub_23C4FC914(v54, v42, (v41 - v42) >> 3, &v94, v36);
                llvm::GetElementPtrInst::isInBounds(v36);
                llvm::GetElementPtrInst::setIsInBounds(v57);
                v58 = sub_23C4FC774(v104, v36);
                sub_23C4D56F8(v58, v57);
                for (k = *(v36 + 8); k; k = *(k + 8))
                {
                  v94 = *(k + 24);
                  sub_23C4FC844(&v91, &v94);
                }

                v94 = v36;
                sub_23C4FC844(&v88, &v94);
                if (v42)
                {
                  operator delete(v42);
                }
              }

              else
              {
                if (v37 != 5)
                {
                  v36 = 0;
                }

                if (*(v36 + 18) == 34)
                {
                  v94 = &v96;
                  v95 = 0x2000000000;
                  v43 = *(v36 + 20) & 0x7FFFFFF;
                  v44 = v43 - 1;
                  if (v43 == 1)
                  {
                    v45 = 1;
                  }

                  else
                  {
                    v60 = v36 + 32;
                    do
                    {
                      sub_23C49B500(&v94, *(v60 - 32 * (*(v36 + 20) & 0x7FFFFFF)));
                      v60 += 32;
                      --v44;
                    }

                    while (v44);
                    v45 = *(v36 + 20) & 0x7FFFFFF;
                  }

                  v61 = sub_23C4FC774(v104, *(v36 - 32 * v45))[2];
                  if (v61)
                  {
                    v62 = *(v61 + 16) >= 0x1Cu;
                  }

                  else
                  {
                    v62 = 0;
                  }

                  if (v62)
                  {
                    v87 = 257;
                    ElementPtr = sub_23C4FC914(v61, v94, v95, &v84, 0);
                    llvm::Instruction::insertAfter();
                  }

                  else
                  {
                    ElementPtr = llvm::ConstantExpr::getGetElementPtr();
                  }

                  v66 = sub_23C4FC774(v104, v36);
                  sub_23C4D56F8(v66, ElementPtr);
                  for (m = *(v36 + 8); m; m = *(m + 8))
                  {
                    v84 = *(m + 24);
                    sub_23C4FC844(&v91, &v84);
                  }

                  if (v94 != &v96)
                  {
                    free(v94);
                  }
                }

                else
                {
                  v51 = sub_23C4FC774(v104, *(v36 - 32 * (*(v36 + 20) & 0x7FFFFFF)))[2];
                  if (v51)
                  {
                    v52 = *(v51 + 16) >= 0x1Cu;
                  }

                  else
                  {
                    v52 = 0;
                  }

                  if (v52)
                  {
                    BitCast = llvm::User::operator new(0x40);
                    llvm::PointerType::get();
                    LOWORD(v98) = 257;
                    llvm::BitCastInst::BitCastInst();
                    llvm::Instruction::insertAfter();
                  }

                  else
                  {
                    llvm::PointerType::get();
                    BitCast = llvm::ConstantExpr::getBitCast();
                  }

                  v64 = sub_23C4FC774(v104, v36);
                  sub_23C4D56F8(v64, BitCast);
                  for (n = *(v36 + 8); n; n = *(n + 8))
                  {
                    v94 = *(n + 24);
                    sub_23C4FC844(&v91, &v94);
                  }
                }
              }

              v35 = v91;
              v34 = v92;
            }

            while (v91 != v92);
            v69 = v88;
            for (ii = v89; ii != v69; ii -= 8)
            {
              v70 = *(ii - 1);
              llvm::Instruction::eraseFromParent(v70);
            }
          }

          if (v100)
          {
            v71 = v99;
            v72 = 8 * v100;
            do
            {
              v73 = *v71;
              if ((llvm::GlobalValue::isDeclaration(*v71) & 1) == 0)
              {
                if (*(v73 + 1))
                {
                  llvm::Constant::getNullValue(*v73, v74);
                  llvm::Value::replaceAllUsesWith();
                }

                llvm::GlobalVariable::eraseFromParent(v73);
              }

              ++v71;
              v72 -= 8;
            }

            while (v72);
          }

          if (v69)
          {
            v89 = v69;
            operator delete(v69);
          }

          if (v35)
          {
            operator delete(v35);
          }

          v27 = v99;
        }

        if (v27 != &v101)
        {
          free(v27);
        }
      }

      sub_23C4ED8D0(v106);
      v75 = v104[0];
      if (v105)
      {
        v100 = 2;
        v101 = 0;
        v102 = -4096;
        v103 = 0;
        v99 = &unk_284F1B840;
        v95 = 2;
        v96 = 0;
        v97 = -8192;
        v98 = 0;
        v94 = &unk_284F1B840;
        v76 = (v104[0] + 40);
        v77 = v105 << 6;
        do
        {
          v78 = *(v76 - 2);
          if (v78 != v102 && v78 != v97)
          {
            v80 = *(v76 + 2);
            if (v80 != -8192 && v80 != -4096 && v80 != 0)
            {
              llvm::ValueHandleBase::RemoveFromUseList(v76);
              v78 = *(v76 - 2);
            }
          }

          if (v78 != -8192 && v78 != -4096 && v78 != 0)
          {
            llvm::ValueHandleBase::RemoveFromUseList((v76 - 32));
          }

          v76 = (v76 + 64);
          v77 -= 64;
        }

        while (v77);
        if (v97 != -8192 && v97 != -4096 && v97)
        {
          llvm::ValueHandleBase::RemoveFromUseList(&v95);
        }

        if (v102 != -8192 && v102 != -4096 && v102)
        {
          llvm::ValueHandleBase::RemoveFromUseList(&v100);
        }

        v75 = v104[0];
        v83 = (v105 << 6);
      }

      else
      {
        v83 = 0;
      }

      llvm::deallocate_buffer(v75, v83);
    }
  }

  return 1;
}

llvm::ValueHandleBase *sub_23C4FC698(llvm::ValueHandleBase *result)
{
  *(result + 1) = 0;
  v7[0] = 2;
  v7[1] = 0;
  v8 = -4096;
  v9 = 0;
  v1 = *(result + 4);
  if (v1)
  {
    v2 = *result;
    v3 = (*result + (v1 << 6));
    result = (*result + 8);
    do
    {
      v4 = sub_23C4EDBD4(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_284F1B840;
      *(v4 + 3) = v9;
      v5 = v4 + 56;
      result = (v4 + 64);
      v2 += 64;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

void *sub_23C4FC774(uint64_t a1, uint64_t a2)
{
  sub_23C4EDC2C(&v7, a2);
  v7 = &unk_284F1B840;
  v10 = a1;
  v11 = 0;
  v3 = sub_23C4FCC68(*a1, *(a1 + 16), v9, &v11);
  v4 = v11;
  if ((v3 & 1) == 0)
  {
    v4 = sub_23C4FCCFC(a1, &v7, v11);
    sub_23C4DDEAC((v4 + 1), v8);
    v4[4] = v10;
    v4[5] = 6;
    v4[6] = 0;
    v4[7] = 0;
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return v4 + 5;
}

void sub_23C4FC844(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      sub_23C496CE8();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_23C4D97E0(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

llvm::Instruction *sub_23C4FC914(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t a4, llvm::Instruction *a5)
{
  v5 = *a1;
  if ((*(*a1 + 8) & 0xFE) == 0x12)
  {
    v5 = **(v5 + 16);
  }

  return sub_23C49AFDC(**(v5 + 16), a1, a2, a3, a4, a5);
}

uint64_t sub_23C4FC950(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  sub_23C4EDBD4(v18, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v17 = &unk_284F1B840;
  v20 = v4;
  v25 = 0;
  result = sub_23C4FCC68(*v4, v4[2].i32[0], v19, &v25);
  if (result)
  {
    v6 = v25;
  }

  else
  {
    v6 = (*v4 + (v4[2].u32[0] << 6));
  }

  if ((*v20 + (v20[2].u32[0] << 6)) != v6)
  {
    sub_23C4EDBD4(v15, 3u, v6 + 5);
    v7 = v20;
    v8 = v6[7];
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((v6 + 5));
    }

    v26[0] = 2;
    v26[1] = 0;
    v27 = -8192;
    v28 = 0;
    v25 = &unk_284F1B840;
    sub_23C4DDEAC((v6 + 1), v26);
    v10 = v27;
    v6[4] = v28;
    if (v10 != -8192 && v10 != -4096 && v10)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v26);
    }

    v7[1] = vadd_s32(v7[1], 0x1FFFFFFFFLL);
    v11 = v20;
    sub_23C4EDBD4(v13, 3u, v15);
    sub_23C4EDC2C(&v21, a2);
    v21 = &unk_284F1B840;
    v24 = v11;
    sub_23C4EDBD4(v26, (LODWORD(v22[0]) >> 1) & 3, v22);
    v25 = &unk_284F1B840;
    v28 = v24;
    sub_23C4EDBD4(v29, 3u, v13);
    v31 = 0;
    result = sub_23C4FCC68(*v11, v11[2].i32[0], v27, &v31);
    if ((result & 1) == 0)
    {
      v12 = sub_23C4FCCFC(v11, &v25, v31);
      sub_23C4DDEAC((v12 + 1), v26);
      v12[4] = v28;
      result = sub_23C4EDBD4((v12 + 5), 3u, v29);
    }

    if (v30 != -8192 && v30 != -4096 && v30)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v29);
    }

    if (v27 != -8192 && v27 != -4096 && v27)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v26);
    }

    if (v23 != -8192 && v23 != -4096 && v23)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v22);
    }

    if (v14 != -8192 && v14 != -4096 && v14)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v13);
    }

    if (v16 != -8192 && v16 != -4096 && v16)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v15);
    }
  }

  if (v19 != -8192 && v19 != -4096)
  {
    if (v19)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v18);
    }
  }

  return result;
}

uint64_t sub_23C4FCC68(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v5 = a1 + (v4 << 6);
    v6 = *(v5 + 24);
    if (v6 == a3)
    {
      v7 = 1;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      while (v6 != -4096)
      {
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == -8192;
        }

        if (v11)
        {
          v9 = v5;
        }

        v12 = v4 + v10++;
        v4 = v12 & (a2 - 1);
        v5 = a1 + (v4 << 6);
        v6 = *(v5 + 24);
        v7 = 1;
        if (v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v7 = 0;
      if (v9)
      {
        v5 = v9;
      }
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

LABEL_5:
  *a4 = v5;
  return v7;
}

uint64_t sub_23C4FCCFC(llvm::ValueHandleBase *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 2);
  v6 = *(a1 + 4);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 3) > v6 >> 3)
  {
    goto LABEL_3;
  }

  sub_23C4FCDB0(a1, v6);
  v8 = 0;
  sub_23C4FCC68(*a1, *(a1 + 4), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 2);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 3);
  }

  return a3;
}

llvm::ValueHandleBase *sub_23C4FCDB0(llvm::ValueHandleBase *a1, int a2)
{
  v3 = *(a1 + 4);
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

  *(a1 + 4) = v8;
  *a1 = MEMORY[0x23EED4160](v8 << 6, 8);
  if (v4)
  {
    sub_23C4FC698(a1);
    v23[0] = 2;
    v23[1] = 0;
    v24 = -4096;
    v25 = 0;
    v21 = 0;
    v22 = &unk_284F1B840;
    v19[0] = 2;
    v19[1] = 0;
    v20 = -8192;
    v9 = (v3 << 6);
    if (v3)
    {
      v10 = (v4 + 32);
      v11 = v9;
      do
      {
        v12 = *(v10 - 1);
        if (v12 != v24 && v12 != v20)
        {
          v26 = 0;
          sub_23C4FCC68(*a1, *(a1 + 4), v12, &v26);
          v16 = v26;
          sub_23C4DDEAC((v26 + 8), v10 - 3);
          *(v16 + 32) = *v10;
          sub_23C4EDBD4((v16 + 40), 3u, v10 + 1);
          ++*(a1 + 2);
          v17 = v10[3];
          if (v17 != -8192 && v17 != -4096 && v17)
          {
            llvm::ValueHandleBase::RemoveFromUseList((v10 + 1));
          }
        }

        v14 = *(v10 - 1);
        if (v14 != -8192 && v14 != -4096 && v14 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v10 - 3));
        }

        v10 += 8;
        v11 -= 64;
      }

      while (v11);
      if (v20 != -8192 && v20 != -4096 && v20)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v19);
      }
    }

    if (v24 != -8192 && v24 != -4096 && v24)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v23);
    }

    return llvm::deallocate_buffer(v4, v9);
  }

  else
  {

    return sub_23C4FC698(a1);
  }
}

uint64_t sub_23C4FCFF0(uint64_t a1)
{
  v1 = a1 + 8;
  sub_23C4EDBD4(v9, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v11 = v2;
  v12 = 0;
  result = sub_23C4FCC68(*v2, *(v2 + 16), v10, &v12);
  if (result)
  {
    v4 = v12;
    v5 = v12[7];
    if (v5 != -8192 && v5 != -4096 && v5 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((v12 + 5));
    }

    v13[0] = 2;
    v13[1] = 0;
    v14 = -8192;
    v15 = 0;
    v12 = &unk_284F1B840;
    result = sub_23C4DDEAC((v4 + 1), v13);
    v7 = v14;
    v4[4] = v15;
    if (v7 != -8192 && v7 != -4096 && v7)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v13);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v10 != -8192 && v10 != -4096 && v10 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v9);
  }

  return result;
}

uint64_t sub_23C4FD12C(uint64_t *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = sub_23C4AEB44(*(a1 + *(*a1 - 24) + 400), *(a1 + *(*a1 - 24) + 320), 2);
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = v2 + 24;
  for (i = *(v2 + 32); i != v4; i = *(i + 8))
  {
    if (i)
    {
      v6 = (i - 56);
    }

    else
    {
      v6 = 0;
    }

    if (llvm::GlobalValue::isDeclaration(v6))
    {
      if ((*(v6 + 34) & 0x80) != 0)
      {
        sub_23C4AF1B0(v6, 3);
      }
    }
  }

  v7 = *(*(a1 + *(*a1 - 24) + 400) + 32);
  v8 = *(v7 + 8);
  if (v8)
  {
    v9 = strlen(*(v7 + 8));
  }

  else
  {
    v9 = 0;
  }

  sub_23C4AF090(v3, v8, v9);
  v11 = *(*(a1 + *(*a1 - 24) + 400) + 32);
  if (*(v11 + 16))
  {
    strlen(*(v11 + 16));
  }

  llvm::Module::setDataLayout();
  v32 = v3;
  v34 = 0;
  v12 = llvm::Linker::linkModules();
  sub_23C4AF0E8(v33);
  v13 = MEMORY[0x23EED4710](v32);
  MEMORY[0x23EED50C0](v13, 0x10B2C407FF26C1CLL);
  if ((v12 & 1) == 0)
  {
    v14 = *a1;
    v15 = *a1;
    v16 = a1 + *(*a1 - 24);
    if (*(*(v16 + 43) + 1674) == 1)
    {
      v17 = *(v16 + 40);
      v18 = *(v17 + 32);
      v19 = v17 + 24;
      if (v18 != v17 + 24)
      {
        do
        {
          v20 = *(v18 + 8);
          if (v18)
          {
            v21 = v18 - 56;
          }

          else
          {
            v21 = 0;
          }

          if (v21 != a1[19] && !*(v18 - 48))
          {
            llvm::Function::eraseFromParent((v18 - 56));
          }

          v18 = v20;
        }

        while (v20 != v19);
      }
    }

    else
    {
      *(a1 + 8) = 1;
      v22 = *(a1 + *(v15 - 24) + 320);
      v23 = *(v22 + 32);
      v24 = v22 + 24;
      if (v23 != v22 + 24)
      {
        do
        {
          v25 = *(v23 + 8);
          if (v23)
          {
            v26 = v23 - 56;
          }

          else
          {
            v26 = 0;
          }

          if (v26 != a1[19])
          {
            if (*(v23 - 48))
            {
              if ((*(v23 - 23) & 0x20) == 0 && (llvm::GlobalValue::isDeclaration((v23 - 56)) & 1) == 0)
              {
                *(v23 - 24) = *(v23 - 24) & 0xFFFFBFC0 | 0x4007;
                llvm::Function::addFnAttr();
                ++*(a1 + 8);
              }
            }

            else
            {
              llvm::Function::eraseFromParent((v23 - 56));
            }
          }

          v23 = v25;
        }

        while (v25 != v24);
        v14 = *a1;
      }

      v27 = *(a1 + *(v14 - 24) + 320);
      v28 = *(v27 + 16);
      v29 = v27 + 8;
      if (v28 != v27 + 8)
      {
        do
        {
          v30 = *(v28 + 8);
          if (v28)
          {
            v31 = (v28 - 56);
          }

          else
          {
            v31 = 0;
          }

          if ((llvm::GlobalValue::isDeclaration(v31) & 1) == 0)
          {
            if (*(v28 - 48))
            {
              *(v28 - 24) = *(v28 - 24) & 0xFFFFBFC0 | 0x4007;
            }

            else
            {
              llvm::GlobalVariable::eraseFromParent((v28 - 56));
            }
          }

          v28 = v30;
        }

        while (v30 != v29);
      }

      if (*(a1 + 8) > 1u)
      {
        llvm::legacy::PassManager::run(*(*(a1 + *(*a1 - 24) + 400) + 320), *(a1 + *(*a1 - 24) + 320));
        *(a1 + 8) = 1;
      }
    }
  }

  return v12 ^ 1u;
}

uint64_t sub_23C4FD508(uint64_t a1, int a2)
{
  if (*(a1 + 10))
  {
    return 1;
  }

  v29[12] = v2;
  v29[13] = v3;
  (*(**(a1 + *(*a1 - 24) + 344) + 336))(&v28);
  v6 = v28;
  if (v28 != v29)
  {
    do
    {
      Function = llvm::Module::getFunction();
      if (Function)
      {
        v8 = Function;
        if (*(v6 + 55) < 0)
        {
          sub_23C49F988(&__dst, v6[4], v6[5]);
        }

        else
        {
          __dst = *(v6 + 4);
        }

        std::string::insert(&__dst, 0, "agx.");
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __dst.__r_.__value_.__l.__size_;
        }

        sub_23C4ADD34(v25, size + 5);
        if (v26 >= 0)
        {
          v10 = v25;
        }

        else
        {
          v10 = v25[0];
        }

        if (size)
        {
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          memmove(v10, p_dst, size);
        }

        strcpy(v10 + size, ".fast");
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v12 = __dst.__r_.__value_.__l.__size_;
        }

        sub_23C4ADD34(__p, v12 + 8);
        if (v24 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        if (v12)
        {
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v14 = &__dst;
          }

          else
          {
            v14 = __dst.__r_.__value_.__r.__words[0];
          }

          memmove(v13, v14, v12);
        }

        strcpy(v13 + v12, ".nonfast");
        v15 = *(v8 + 8);
        while (v15)
        {
          v16 = *(v15 + 24);
          v15 = *(v15 + 8);
          llvm::Instruction::getFastMathFlags(v16);
          llvm::Module::getOrInsertFunction();
          *(v16 + 9) = *(v17 + 24);
          sub_23C4C11E8(v16, v17);
        }

        if (v24 < 0)
        {
          operator delete(__p[0]);
        }

        if (v26 < 0)
        {
          operator delete(v25[0]);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      v18 = v6[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v6[2];
          v20 = *v19 == v6;
          v6 = v19;
        }

        while (!v20);
      }

      v6 = v19;
    }

    while (v19 != v29);
  }

  sub_23C4A690C(v29[0]);
  v21 = sub_23C4AEB44(*(a1 + *(*a1 - 24) + 400), *(a1 + *(*a1 - 24) + 320), a2);
  if (v21)
  {
    return sub_23C4AEDDC(a1 + *(*a1 - 24), v21, *(*(a1 + *(*a1 - 24) + 344) + 1674), *(a1 + 152));
  }

  else
  {
    return 1;
  }
}

uint64_t sub_23C4FD8A8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + *(*a1 - 24) + 320);
  v4 = v3 + 24;
  v5 = *(v3 + 32);
  if (v5 != v3 + 24)
  {
    do
    {
      if (v5)
      {
        v6 = v5 - 56;
      }

      else
      {
        v6 = 0;
      }

      if (llvm::GlobalValue::isDeclaration(v6) && *(v6 + 8) && (*(v6 + 33) & 0x20) == 0)
      {
        v12 = *MEMORY[0x277D85DF8];
        Name = llvm::Value::getName(v6);
        v18 = v13;
        sub_23C4AE5DC(&__dst, &Name);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        fprintf(v12, "AGC: %s:%d:%s: !!! Encountered unlowered function call to %s\n", "agc_llvm_air_user_object.cpp", 8296, "virtual BOOL AGCLLVMUserObject::verifyLoweredIR()", p_dst);
        std::string::~string(&__dst);
        Name = llvm::Value::getName(v6);
        v18 = v15;
        sub_23C4AE5DC(&__dst, &Name);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &__dst;
        }

        else
        {
          v16 = __dst.__r_.__value_.__r.__words[0];
        }

        syslog(3, "AGC: %s:%d:%s: !!! Encountered unlowered function call to %s\n", "agc_llvm_air_user_object.cpp", 8296, "virtual BOOL AGCLLVMUserObject::verifyLoweredIR()", v16);
        std::string::~string(&__dst);
        abort();
      }

      v5 = *(v5 + 8);
    }

    while (v5 != v4);
    v2 = *a1;
  }

  v7 = *(a1 + *(v2 - 24) + 320);
  v8 = *(v7 + 32);
  if (v8 != v7 + 24)
  {
    v9 = *(v7 + 32);
    do
    {
      if (v9 != v8)
      {
        if (v9)
        {
          v10 = v9 - 56;
        }

        else
        {
          v10 = 0;
        }

        if (v10 == a1[19])
        {
          llvm::SymbolTableListTraits<llvm::Function>::removeNodeFromList();
        }
      }

      v9 = *(v9 + 8);
    }

    while (v9 != v7 + 24);
  }

  return 1;
}

uint64_t sub_23C4FDAAC(void *a1)
{
  v1 = (*(**(a1 + *(*a1 - 24) + 344) + 488))(*(a1 + *(*a1 - 24) + 344), a1, *(a1 + *(*a1 - 24) + 320));
  v2 = *(v1 + 320);
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
    if (sub_23C4C28BC(Name, v8, v17, &v15) && llvm::GlobalValue::isDeclaration(v5))
    {
      v9 = *(v1 + 712);
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
      if (v12 != (**(v1 + 712) + 8 * *(*(v1 + 712) + 8)) && llvm::StringRef::find() != -1)
      {
        sub_23C4C2978(v1 + 352, v5, *v12 + 8, v15, v16);
      }
    }
  }

  v13 = *(v1 + 720);
  (*(*v1 + 16))(v1);
  return v13;
}

uint64_t sub_23C4FDC38(void *a1)
{
  v1 = (*(**(a1 + *(*a1 - 24) + 344) + 488))(*(a1 + *(*a1 - 24) + 344), a1, *(a1 + *(*a1 - 24) + 320));
  v2 = sub_23C4C27D4(v1);
  if (v1)
  {
    (*(*v1 + 16))(v1);
  }

  return v2;
}

uint64_t sub_23C4FDCE0(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  (*(*a1 + 80))();
  llvm::Module::getOrInsertFunction();
  a1[19] = v2;
  v3 = a1[20];
  if (*(v3 + 72) != v3 + 72)
  {
    sub_23C4FE3AC(v2 + 72, (v2 + 72), v3 + 72, *(v3 + 80), (v3 + 72));
    v3 = a1[20];
  }

  v19[0] = *(v3 + 112);
  llvm::AttributeList::getFnAttrs(v19);
  v4 = llvm::AttributeSet::removeAttribute();
  v18[1] = v4;
  if (v4)
  {
    v5 = a1[19];
    LODWORD(v19[0]) = -1;
    v19[1] = v4;
    *(v5 + 112) = llvm::AttributeList::get();
  }

  v6 = *(a1[19] + 80);
  if (v6)
  {
    v7 = (v6 - 24);
  }

  else
  {
    v7 = 0;
  }

  v18[0] = llvm::BasicBlock::getFirstInsertionPt(v7);
  sub_23C4FE424(v7, v18);
  v20 = 257;
  v8 = llvm::BasicBlock::splitBasicBlock();
  v9 = *(v7 + 5);
  if (v9 == (v7 + 40))
  {
    v12 = 0;
  }

  else
  {
    v10 = (v9 - 3);
    if (v9)
    {
      v11 = v9 - 3;
    }

    else
    {
      v11 = 0;
    }

    if (*(v11 + 16) - 29 >= 0xB)
    {
      v12 = 0;
    }

    else
    {
      v12 = v10;
    }
  }

  llvm::Instruction::eraseFromParent(v12);
  v13 = a1 + *(*a1 - 24);
  *(v13 + 7) = v7;
  *(v13 + 8) = v7 + 40;
  v14 = (*(*a1 + 64))(a1);
  if (v14)
  {
    v15 = *(a1 + *(*a1 - 24) + 344);
    (*(*v15 + 296))(v15, a1[19]);
    sub_23C4BC31C((a1 + *(*a1 - 24) + 8), v8, v16);
    v19[0] = "wrapper_exit";
    v20 = 259;
    operator new();
  }

  return v14;
}

void sub_23C4FE3AC(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 != a5)
  {
    llvm::SymbolTableListTraits<llvm::BasicBlock>::transferNodesFromList();
  }
}

llvm::Instruction *sub_23C4FE424(llvm::Instruction *result, uint64_t a2)
{
  v2 = *(result + 6);
  v3 = result + 40;
  if (v2 != (result + 40))
  {
    do
    {
      result = (v2 - 24);
      v5 = v2 == 0;
      v2 = *(v2 + 8);
      if (v5)
      {
        v6 = 0;
      }

      else
      {
        v6 = result;
      }

      if (*(v6 + 16) == 59)
      {
        if (*a2)
        {
          v7 = (*a2 - 24);
        }

        else
        {
          v7 = 0;
        }

        if (result == v7)
        {
          *a2 = *(*a2 + 8);
        }

        else
        {
          result = llvm::Instruction::moveBefore();
        }
      }
    }

    while (v2 != v3);
  }

  return result;
}

void sub_23C4FE4A8(uint64_t a1)
{
  sub_23C4FE87C();
  v2 = *(a1 + 160);
  if (*(v2 + 18))
  {
    llvm::Function::BuildLazyArguments(*(a1 + 160));
    v4 = *(a1 + 160);
    v3 = *(v2 + 88);
    if (*(v4 + 18))
    {
      llvm::Function::BuildLazyArguments(*(a1 + 160));
    }

    v2 = v4;
  }

  else
  {
    v3 = *(v2 + 88);
  }

  v5 = *(v2 + 88) + 40 * *(v2 + 96);
  if (v3 != v5)
  {
    v6 = a1 + 8;
    v7 = a1 + 192;
    v40 = v5;
    do
    {
      v8 = *(*(a1 + 72) + 8 * *(v3 + 32));
      if (!v8 || !*(v3 + 8))
      {
        goto LABEL_42;
      }

      llvm::MDString::getString(*(v8 - 8 * *(v8 + 8) + 8));
      Key = llvm::StringMapImpl::FindKey();
      v10 = Key;
      if (Key == -1 || Key == dword_27E1F7428)
      {
        goto LABEL_42;
      }

      v12 = qword_27E1F7420;
      v13 = *(*a1 - 24);
      v14 = *(*(a1 + 160) + 80);
      if (v14)
      {
        v15 = (v14 - 24);
      }

      else
      {
        v15 = 0;
      }

      FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v15);
      sub_23C497720(v6 + v13, v15, FirstInsertionPt);
      v17 = *v3;
      if ((*(*v3 + 8) & 0xFE) == 0x12)
      {
        v17 = **(v17 + 16);
      }

      v18 = *(v12 + 8 * v10);
      sub_23C4AE5DC(&__dst, v18 + 8);
      if (v17 == *(v7 + *(*a1 - 24)))
      {
        v19 = ".i32";
      }

      else
      {
        v19 = ".i16";
      }

      v20 = std::string::append(&__dst, v19);
      v21 = v20->__r_.__value_.__r.__words[2];
      *__p = *&v20->__r_.__value_.__l.__data_;
      v45 = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v22 = a1 + *(*a1 - 24);
      if (v45 >= 0)
      {
        v23 = __p;
      }

      else
      {
        v23 = __p[0];
      }

      if (v45 >= 0)
      {
        v24 = SHIBYTE(v45);
      }

      else
      {
        v24 = __p[1];
      }

      if (*(v18 + 24) == 1)
      {
        v25 = sub_23C4A0414(v22, v23, v24, v17);
        v26 = *(*a1 - 24);
        v43 = 257;
        v27 = **(*v25 + 16);
        v28 = (v6 + v26);
        v29 = 0;
        v30 = 0;
      }

      else
      {
        v31 = sub_23C49EB10(v22, v23, v24, v17, *(v22 + 192));
        if ((*(*v3 + 8) & 0xFE) == 0x12)
        {
          v32 = *(*v3 + 32);
          v33 = llvm::UndefValue::get();
          if (v32)
          {
            for (i = 0; i != v32; ++i)
            {
              v35 = *(*a1 - 24);
              v41 = llvm::ConstantInt::get();
              v43 = 257;
              v36 = sub_23C497A7C((a1 + 8 + v35), *(v31 + 24), v31, &v41, 1, &__dst);
              v37 = a1 + *(*a1 - 24);
              v43 = 257;
              v38 = llvm::ConstantInt::get();
              v33 = sub_23C505AA8(v37 + 8, v33, v36, v38, &__dst);
            }
          }

          goto LABEL_39;
        }

        v39 = a1 + *(*a1 - 24);
        v41 = llvm::ConstantInt::get();
        v43 = 257;
        v27 = *(v31 + 24);
        v28 = (v39 + 8);
        v29 = &v41;
        v25 = v31;
        v30 = 1;
      }

      sub_23C497A7C(v28, v27, v25, v29, v30, &__dst);
LABEL_39:
      llvm::Value::replaceAllUsesWith();
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p[0]);
      }

      v5 = v40;
      v6 = a1 + 8;
      v7 = a1 + 192;
LABEL_42:
      v3 += 40;
    }

    while (v3 != v5);
  }
}

void sub_23C4FE87C()
{
  if ((atomic_load_explicit(&qword_27E1F7440, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F7440))
  {
    qword_27E1F7420 = 0;
    *&dword_27E1F7428 = 0;
    qword_27E1F7430 = 0x2000000000;
    __cxa_atexit(sub_23C4FE900, &qword_27E1F7420, &dword_23C496000);

    __cxa_guard_release(&qword_27E1F7440);
  }
}

uint64_t sub_23C4FE900(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
          llvm::deallocate_buffer(v8, (*v8 + 33));
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

uint64_t sub_23C4FE97C(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a1 + *(*a1 - 24);
  v3 = *(v2 + 320);
  v4 = *(*(v2 + 400) + 32);
  v5 = *(v4 + 8);
  if (v5)
  {
    v6 = strlen(*(v4 + 8));
  }

  else
  {
    v6 = 0;
  }

  sub_23C4AF090(v3, v5, v6);
  v7 = *(*(a1 + *(*a1 - 24) + 400) + 32);
  if (*(v7 + 16))
  {
    strlen(*(v7 + 16));
  }

  llvm::Module::setDataLayout();
  sub_23C4B2A60(a1 + *(*a1 - 24));
  sub_23C4B2B20(a1 + *(*a1 - 24));
  llvm::Module::getOrInsertNamedMetadata();
  v14 = llvm::MDString::get();
  (*(*a1 + 200))(a1);
  llvm::ConstantInt::get();
  v15 = llvm::ValueAsMetadata::get();
  llvm::MDTuple::getImpl();
  llvm::NamedMDNode::addOperand();
  if (*(a1 + 32) >= 2u)
  {
    llvm::legacy::PassManager::run(*(*(a1 + *(*a1 - 24) + 400) + 304), *(a1 + *(*a1 - 24) + 320));
  }

  v8 = (a1 + *(*a1 - 24));
  if (*(v8[43] + 1690) == 1 && (*(*v8 + 32))(v8) <= 3)
  {
    llvm::Module::getOrInsertNamedMetadata();
    v12[1] = llvm::MDString::get();
    llvm::ConstantInt::get();
    v12[2] = llvm::ValueAsMetadata::get();
    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::addOperand();
  }

  v9 = *(*(a1 + 160) + 80);
  if (v9)
  {
    v10 = (v9 - 24);
  }

  else
  {
    v10 = 0;
  }

  v12[0] = llvm::BasicBlock::getFirstInsertionPt(v10);
  sub_23C4FE424(v10, v12);
  v13 = 257;
  llvm::BasicBlock::splitBasicBlock();
  (*(*a1 + 56))(a1);
  return 1;
}

uint64_t *sub_23C4FED68(const void *a1, size_t a2)
{
  i = (qword_27E1F7450 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_27E1F7460) = qword_27E1F7460 - 1;
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

  v8 = MEMORY[0x23EED4160](a2 + 49, 8);
  v9 = v8;
  v10 = v8 + 48;
  if (a2)
  {
    memcpy((v8 + 48), a1, a2);
  }

  *(v10 + a2) = 0;
  *v9 = a2;
  *i = v9;
  ++dword_27E1F745C;
    ;
  }

  return i;
}

uint64_t *sub_23C4FEE6C(const void *a1, size_t a2)
{
  i = (qword_27E1F7358 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_27E1F7368) = qword_27E1F7368 - 1;
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

  v8 = MEMORY[0x23EED4160](a2 + 25, 8);
  v9 = v8;
  v10 = v8 + 24;
  if (a2)
  {
    memcpy((v8 + 24), a1, a2);
  }

  *(v10 + a2) = 0;
  *v9 = a2;
  *i = v9;
  ++dword_27E1F7364;
    ;
  }

  return i;
}

uint64_t sub_23C4FEF70(llvm::StringMapImpl *a1, const void *a2, size_t a3)
{
  result = llvm::StringMapImpl::LookupBucketFor();
  v7 = *a1;
  v8 = *(*a1 + 8 * result);
  if (v8)
  {
    if (v8 != -8)
    {
      return result;
    }

    --*(a1 + 4);
  }

  v9 = result;
  v10 = MEMORY[0x23EED4160](a3 + 9, 8);
  v11 = v10;
  v12 = v10 + 8;
  if (a3)
  {
    memcpy((v10 + 8), a2, a3);
  }

  *(v12 + a3) = 0;
  *(v7 + 8 * v9) = v11;
  *v11 = a3;
  ++*(a1 + 3);

  return llvm::StringMapImpl::RehashTable(a1);
}

uint64_t *sub_23C4FF048(const void *a1, size_t a2)
{
  i = (qword_27E1F7420 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_27E1F7430) = qword_27E1F7430 - 1;
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

  v8 = MEMORY[0x23EED4160](a2 + 33, 8);
  v9 = v8;
  v10 = v8 + 32;
  if (a2)
  {
    memcpy((v8 + 32), a1, a2);
  }

  *(v10 + a2) = 0;
  v9[1] = 0;
  v9[2] = 0;
  *v9 = a2;
  *i = v9;
  ++dword_27E1F742C;
    ;
  }

  return i;
}

uint64_t sub_23C4FF150(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[1];
  v4 = *(a1 + 832);
  if (v4)
  {
    sub_23C4B1570(*(v4 + 8));
    MEMORY[0x23EED50C0](v4, 0x1020C4062D53EE8);
  }

  v5 = *(a1 + 2304);
  if (v5 != (a1 + 2320))
  {
    free(v5);
  }

  sub_23C4ED8D0(a1 + 2232);
  v6 = *(a1 + 2224);
  v7 = *(a1 + 2208);
  if (v6)
  {
    v48 = 2;
    v49 = 0;
    v50 = -4096;
    v51 = 0;
    v46 = 0;
    v47 = &unk_284F1B7B0;
    v43 = 2;
    v44 = 0;
    v45 = -8192;
    v8 = (v7 + 24);
    v9 = 48 * v6;
    do
    {
      v10 = *v8;
      if (*v8 != -8192 && v10 != -4096 && v10 != 0)
      {
        llvm::ValueHandleBase::RemoveFromUseList((v8 - 2));
      }

      v8 += 6;
      v9 -= 48;
    }

    while (v9);
    v7 = *(a1 + 2208);
    v12 = 48 * *(a1 + 2224);
  }

  else
  {
    v12 = 0;
  }

  llvm::deallocate_buffer(v7, v12);
  sub_23C4B1570(*(a1 + 2192));
  v13 = *(a1 + 2152);
  v14 = *(a1 + 2160);
  if (v14)
  {
    v15 = -8 * v14;
    v16 = &v13[8 * v14 - 8];
    do
    {
      v16 = sub_23C4FF644(v16) - 1;
      v15 += 8;
    }

    while (v15);
    v13 = *(a1 + 2152);
  }

  if (v13 != (a1 + 2168))
  {
    free(v13);
  }

  sub_23C4F0F88((a1 + 2112));
  sub_23C4F0F88((a1 + 2064));
  sub_23C4F0F88((a1 + 2016));
  sub_23C4F0F88((a1 + 1968));
  for (i = 0; i != -72; i -= 24)
  {
    v18 = *(a1 + i + 1952);
    if (v18 != -8192 && v18 != -4096 && v18 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((a1 + i + 1936));
    }
  }

  for (j = 0; j != -168; j -= 56)
  {
    v21 = *(a1 + j + 1840);
    if (v21 != -8192 && v21 != -4096 && v21 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((a1 + j + 1824));
    }
  }

  for (k = 0; k != -168; k -= 56)
  {
    v24 = *(a1 + k + 1672);
    if (v24 != -8192 && v24 != -4096 && v24 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((a1 + k + 1656));
    }
  }

  for (m = 0; m != -560; m -= 56)
  {
    v27 = *(a1 + m + 1504);
    if (v27 != -8192 && v27 != -4096 && v27 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList((a1 + m + 1488));
    }
  }

  v29 = *(a1 + 896);
  if (v29 != *(a1 + 888))
  {
    free(v29);
  }

  sub_23C4B1570(*(a1 + 872));
  sub_23C4B1570(*(a1 + 848));
  v30 = *(a1 + 808);
  if (v30)
  {
    *(a1 + 816) = v30;
    operator delete(v30);
  }

  v31 = *(a1 + 784);
  if (v31)
  {
    *(a1 + 792) = v31;
    operator delete(v31);
  }

  sub_23C4ED864(*(a1 + 768));
  sub_23C4ED8D0(a1 + 720);
  sub_23C4EE154((a1 + 696));
  llvm::deallocate_buffer(*(a1 + 696), (48 * *(a1 + 712)));
  sub_23C4ED8D0(a1 + 656);
  v32 = *(a1 + 648);
  v33 = *(a1 + 632);
  if (v32)
  {
    v48 = 2;
    v49 = 0;
    v50 = -4096;
    v51 = 0;
    v46 = 0;
    v47 = &unk_284F1B800;
    v43 = 2;
    v44 = 0;
    v45 = -8192;
    v34 = (v33 + 24);
    v35 = 48 * v32;
    do
    {
      v36 = *v34;
      if (*v34 != -8192 && v36 != -4096 && v36 != 0)
      {
        llvm::ValueHandleBase::RemoveFromUseList((v34 - 2));
      }

      v34 += 6;
      v35 -= 48;
    }

    while (v35);
    if (v45 != -8192 && v45 != -4096 && v45 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(&v43);
    }

    if (v50 != -8192 && v50 != -4096 && v50)
    {
      llvm::ValueHandleBase::RemoveFromUseList(&v48);
    }

    v33 = *(a1 + 632);
    v39 = 48 * *(a1 + 648);
  }

  else
  {
    v39 = 0;
  }

  llvm::deallocate_buffer(v33, v39);
  v40 = *(a1 + 600);
  if (v40 != (a1 + 616))
  {
    free(v40);
  }

  MEMORY[0x23EED3B70](a1 + 168);
  v41 = *(a1 + 72);
  if (v41 != (a1 + 88))
  {
    free(v41);
  }

  return a1;
}

uint64_t *sub_23C4FF644(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 80);
    if (v3)
    {
      do
      {
        v4 = *v3;
        v5 = v3[4];
        v6 = *(v3 + 10);
        if (v6)
        {
          v7 = 8 * v6;
          v8 = (v5 - 1);
          do
          {
            v9 = *&v8[v7];
            *&v8[v7] = 0;
            if (v9)
            {
              MEMORY[0x23EED50C0](v9, 0x1000C4052888210);
            }

            v7 -= 8;
          }

          while (v7);
          v5 = v3[4];
        }

        if (v5 != v3 + 6)
        {
          free(v5);
        }

        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v10 = *(v2 + 64);
    *(v2 + 64) = 0;
    if (v10)
    {
      operator delete(v10);
    }

    MEMORY[0x23EED50C0](v2, 0x10A0C40DDA12C90);
  }

  return a1;
}

void sub_23C4FF724(uint64_t a1, uint64_t *a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  v49[5] = *MEMORY[0x277D85DE8];
  v42 = 1;
  v43 = a3;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v8 = *(*a2 + 8);
  if ((v8 & 0xFE) == 0x12)
  {
    v8 = *(**(*a2 + 16) + 8);
  }

  sub_23C5075AC(a4, v8 >> 8, &v43, &v42, &v41 + 1, &v41, &v39, &v40, &v38);
  v9 = v40;
  *(a1 + 2384) |= v40;
  if (a5 != -1)
  {
    v43 = a5;
  }

  if (v38 == 1)
  {
    operator new();
  }

  v10 = **(*a2 + 16);
  if (*(v10 + 8) == 15)
  {
    v11 = v42;
    v12 = llvm::ArrayType::get(v10, v42);
    v13 = v43;
    __p[0] = "agc.buffer_pointers_array.";
    *&v45 = v43;
    LOWORD(v46) = 2051;
    v14 = sub_23C4ED494(a1, v12, __p, v43, 0, 5u);
    v15 = *(a1 + 832);
    if (!v15)
    {
      operator new();
    }

    v16 = *(v15 + 8);
    if (!v16)
    {
LABEL_26:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v17 = v16;
        v18 = *(v16 + 7);
        if (v13 >= v18)
        {
          break;
        }

        v16 = *v17;
        if (!*v17)
        {
          goto LABEL_26;
        }
      }

      if (v18 >= v13)
      {
        break;
      }

      v16 = v17[1];
      if (!v16)
      {
        goto LABEL_26;
      }
    }

    *(v17 + 8) = v11;
    v24 = a2[1];
    if (v24)
    {
      v25 = a1 + 8;
      do
      {
        while (1)
        {
          v26 = *(v24 + 24);
          v24 = *(v24 + 8);
          sub_23C4C30FC(v25 + *(*a1 - 24), v26);
          if (*(v26 + 16) != 60)
          {
            break;
          }

          v28 = v25 + *(*a1 - 24);
          v48 = 257;
          llvm::Type::getInt32Ty(*(v28 + 64), v27);
          v49[0] = llvm::ConstantInt::get();
          llvm::Type::getInt32Ty(*(v28 + 64), v29);
          v49[1] = llvm::ConstantInt::get();
          v30 = (*(**(v28 + 72) + 48))(*(v28 + 72), 0, v14, v49, 2, 0);
          if (!v30)
          {
            LOWORD(v46) = 257;
            v30 = sub_23C49AFDC(0, v14, v49, 2, __p, 0);
            sub_23C49B15C(v28, v30, &v47);
          }

          v31 = *(*a1 - 24);
          LOWORD(v46) = 257;
          sub_23C497C88((v25 + v31), **(*v30 + 16), v30, 0, __p);
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v26);
          if (!v24)
          {
            return;
          }
        }

        v47 = 0uLL;
        *&v47 = llvm::ConstantInt::get();
        *(&v47 + 1) = *(v26 - 32 * (*(v26 + 20) & 0x7FFFFFF) + 32);
        v32 = *(*a1 - 24);
        LOWORD(v46) = 257;
        v33 = sub_23C4ED3A0(a1 + v32, v14, &v47, 2, __p);
        v34 = *(*a1 - 24);
        LOWORD(v46) = 257;
        sub_23C497C88((v25 + v34), **(*v33 + 16), v33, 0, __p);
        v35 = *(v26 + 8);
        if (v35)
        {
          do
          {
            v36 = *(v35 + 8);
            v37 = *(v35 + 24);
            llvm::Value::replaceAllUsesWith();
            llvm::Instruction::eraseFromParent(v37);
            v35 = v36;
          }

          while (v36);
        }

        llvm::Instruction::eraseFromParent(v26);
      }

      while (v24);
    }
  }

  else
  {
    v19 = v43;
    (*(*a1 + 216))(a1, a2, v43, 0xFFFFFFFFLL);
    v20 = *(*(a1 + 160) + 80);
    if (v20)
    {
      v21 = v20 - 24;
    }

    else
    {
      v21 = 0;
    }

    v22 = *(v21 + 40);
    if (v22)
    {
      v23 = v22 - 24;
    }

    else
    {
      v23 = 0;
    }

    sub_23C4C30FC(a1 + *(*a1 - 24) + 8, v23);
    sub_23C4FA868(a1, *a2, v19, -1, HIDWORD(v41), -(v9 ^ 1));

    llvm::Value::replaceAllUsesWith();
  }
}