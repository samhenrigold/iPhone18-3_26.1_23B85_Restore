void sub_260201468(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2602019A8(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a9)
  {
    (*(*a9 + 24))(a9, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a10)
  {
    (*(*a10 + 24))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZMaskComp::estimateRenderMemory(uint64_t a1, uint64_t a2)
{
  v4 = LiImageFilter::estimateRenderMemory(a1);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  while (v6 != v5)
  {
    if (!*v6)
    {
      throw_PCNullPointerException(1);
    }

    v4 += (*(**v6 + 112))(*v6, a2);
    v6 += 2;
  }

  return v4;
}

void OZMaskComp::~OZMaskComp(PCSharedCount *this)
{
  *(v1 + 112) = &unk_2872DEA38;
  *(v1 + 128) = 0;
  PCWeakCount::~PCWeakCount((v1 + 120));
}

{
  OZMaskComp::~OZMaskComp(this);

  JUMPOUT(0x2666E9F00);
}

void OZMaskComp::setRenderParams(OZMaskComp *this, const OZRenderParams *a2)
{
  v2 = *(this + 11);
  if (v2)
  {
    OZRenderParams::~OZRenderParams(v2);
    MEMORY[0x2666E9F00]();
  }

  operator new();
}

void virtual thunk toOZMaskComp::~OZMaskComp(OZMaskComp *this)
{
  *(v1 + 112) = &unk_2872DEA38;
  *(v1 + 128) = 0;
  v2 = (v1 + 120);

  PCWeakCount::~PCWeakCount(v2);
}

{
  v1 = (this + *(*this - 24));
  v1[14].var0 = &unk_2872DEA38;
  LOBYTE(v1[16].var0) = 0;
  PCWeakCount::~PCWeakCount(&v1[15].var0);

  JUMPOUT(0x2666E9F00);
}

void OZMaskComp::~OZMaskComp(PCSharedCount *this, const PCString *a2)
{
  var0 = a2->var0;
  this->var0 = a2->var0;
  *(this + var0[-1].info) = a2[7].var0;
  v5 = this[11].var0;
  if (v5)
  {
    OZRenderParams::~OZRenderParams(v5);
    MEMORY[0x2666E9F00]();
  }

  v6 = this[8].var0;
  if (v6)
  {
    this[9].var0 = v6;
    operator delete(v6);
  }

  v8 = this + 5;
  std::vector<PCPtr<LiMaterialLayer>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v7 = a2[1].var0;
  this->var0 = v7;
  *(this + v7[-1].info) = a2[6].var0;
  PCSharedCount::~PCSharedCount(this + 3);
  OZChannelBase::setRangeName(this, a2 + 2);
}

uint64_t std::vector<PCPtr<LiImageSource>>::__emplace_back_slow_path<PCPtr<LiImageSource> const&>(uint64_t *a1, const PCSharedCount *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<TXTextObject>>>(a1, v7);
  }

  v14 = 0;
  v15 = (16 * v2);
  v16 = (16 * v2);
  v15->var0 = a2->var0;
  PCSharedCount::PCSharedCount((16 * v2 + 8), a2 + 1);
  *&v16 = v16 + 16;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PCPtr<LiImageSource>>,PCPtr<LiImageSource>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<PCPtr<LiMaterialLayer>>::~__split_buffer(&v14);
  return v13;
}

void sub_260202050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<PCPtr<LiMaterialLayer>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PCPtr<LiImageSource>>,PCPtr<LiImageSource>*>(uint64_t a1, PCSharedCount *a2, PCSharedCount *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      *(a4 + v7 * 8) = v6[v7];
      PCSharedCount::PCSharedCount((a4 + v7 * 8 + 8), &v6[v7 + 1]);
      v7 += 2;
    }

    while (&v6[v7] != a3);
    while (v6 != a3)
    {
      PCSharedCount::~PCSharedCount(v6 + 1);
      v6 += 2;
    }
  }
}

void sub_2602020E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 8);
    do
    {
      PCSharedCount::~PCSharedCount(v5);
      v5 = (v6 - 16);
      v4 += 16;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

PCSharedCount *PCPtr<LiImageFilter>::PCPtr<LiImageSource>(PCSharedCount *a1, const PCSharedCount *a2)
{
  var0 = a2->var0;
  if (a2->var0)
  {
  }

  a1->var0 = var0;
  PCSharedCount::PCSharedCount(a1 + 1, a2 + 1);
  if (!a1->var0)
  {
    PCSharedCount::PCSharedCount(&v6);
    PCSharedCount::operator=(&a1[1], &v6);
    PCSharedCount::~PCSharedCount(&v6);
  }

  return a1;
}

void sub_2602021BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCSharedCount a10)
{
  PCSharedCount::~PCSharedCount(&a10);
  PCSharedCount::~PCSharedCount(v10 + 1);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<OZMaskParams>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1AF286BCA1AF287)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void HMaskCompAdd::~HMaskCompAdd(HGNode *this)
{
  HgcMaskCompAdd::~HgcMaskCompAdd(this);

  HGObject::operator delete(v1);
}

uint64_t HMaskCompAdd::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  v38 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = &HGRectNull;
    return *v4;
  }

  Input = HGRenderer::GetInput(a2, this, 0);
  DOD = HGRenderer::GetDOD(a2, Input);
  v10 = v9;
  v34 = 0;
  if (HGRectIsNull(DOD, v9))
  {
    v11 = -1;
    v12 = -1;
  }

  else
  {
    if (DOD <= -1073741823)
    {
      v13 = -1073741823;
    }

    else
    {
      v13 = DOD;
    }

    v14 = HIDWORD(DOD);
    if (SHIDWORD(DOD) <= -1073741823)
    {
      LODWORD(v14) = -1073741823;
    }

    if (v10 >= 1073741822)
    {
      v15 = 1073741822;
    }

    else
    {
      v15 = v10;
    }

    v16 = HIDWORD(v10);
    if (SHIDWORD(v10) >= 1073741822)
    {
      LODWORD(v16) = 1073741822;
    }

    v34 = __PAIR64__(v14, v13);
    v11 = v15 - v13;
    v12 = v16 - v14;
  }

  v35 = v11;
  v36 = v12;
  v17 = HGRenderer::GetInput(a2, this, 1);
  v18 = HGRenderer::GetDOD(a2, v17);
  v20 = v19;
  v31 = 0;
  if (HGRectIsNull(v18, v19))
  {
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v24 = -1;
  }

  else
  {
    if (v18 <= -1073741823)
    {
      v22 = -1073741823;
    }

    else
    {
      v22 = v18;
    }

    if (SHIDWORD(v18) <= -1073741823)
    {
      v21 = -1073741823;
    }

    else
    {
      v21 = HIDWORD(v18);
    }

    if (v20 >= 1073741822)
    {
      v25 = 1073741822;
    }

    else
    {
      v25 = v20;
    }

    if (SHIDWORD(v20) >= 1073741822)
    {
      v26 = 1073741822;
    }

    else
    {
      v26 = HIDWORD(v20);
    }

    v31 = __PAIR64__(v21, v22);
    v23 = v25 - v22;
    v24 = v26 - v21;
  }

  v32 = v23;
  v33 = v24;
  (*(*this + 104))(this, 1, v37);
  if (fabsf(v37[0]) >= 0.00001)
  {
    v4 = &HGRectInfinite;
    return *v4;
  }

  if (fabsf(v37[1]) >= 0.00001)
  {
    operator|<int>(&v34, &v31, &v28);
    v22 = v28.i32[0];
    v21 = v28.i32[1];
    v23 = v29;
    v24 = v30;
  }

  return HGRectMake4i(v22, v21, v22 + v23, v21 + v24);
}

uint64_t HMaskCompAdd::GetROI(HMaskCompAdd *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3 <= 1)
  {
    return *&a4.var0;
  }

  else
  {
    return 0;
  }
}

void HMaskCompSubtract::~HMaskCompSubtract(HGNode *this)
{
  HgcMaskCompSubtract::~HgcMaskCompSubtract(this);

  HGObject::operator delete(v1);
}

uint64_t HMaskCompSubtract::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  v37 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, 0);
  DOD = HGRenderer::GetDOD(a2, Input);
  v10 = v9;
  v33 = 0;
  if (HGRectIsNull(DOD, v9))
  {
    v11 = -1;
    v12 = -1;
  }

  else
  {
    if (DOD <= -1073741823)
    {
      v13 = -1073741823;
    }

    else
    {
      v13 = DOD;
    }

    v14 = HIDWORD(DOD);
    if (SHIDWORD(DOD) <= -1073741823)
    {
      LODWORD(v14) = -1073741823;
    }

    if (v10 >= 1073741822)
    {
      v15 = 1073741822;
    }

    else
    {
      v15 = v10;
    }

    v16 = HIDWORD(v10);
    if (SHIDWORD(v10) >= 1073741822)
    {
      LODWORD(v16) = 1073741822;
    }

    v33 = __PAIR64__(v14, v13);
    v11 = v15 - v13;
    v12 = v16 - v14;
  }

  v34 = v11;
  v35 = v12;
  v17 = HGRenderer::GetInput(a2, this, 1);
  v18 = HGRenderer::GetDOD(a2, v17);
  v20 = v19;
  v30 = 0;
  if (HGRectIsNull(v18, v19))
  {
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v24 = -1;
  }

  else
  {
    if (v18 <= -1073741823)
    {
      v22 = -1073741823;
    }

    else
    {
      v22 = v18;
    }

    if (SHIDWORD(v18) <= -1073741823)
    {
      v21 = -1073741823;
    }

    else
    {
      v21 = HIDWORD(v18);
    }

    if (v20 >= 1073741822)
    {
      v25 = 1073741822;
    }

    else
    {
      v25 = v20;
    }

    if (SHIDWORD(v20) >= 1073741822)
    {
      v26 = 1073741822;
    }

    else
    {
      v26 = HIDWORD(v20);
    }

    v30 = __PAIR64__(v21, v22);
    v23 = v25 - v22;
    v24 = v26 - v21;
  }

  v31 = v23;
  v32 = v24;
  (*(*this + 104))(this, 1, v36);
  if (fabsf(v36[0]) >= 0.00001)
  {
    operator|<int>(&v33, &v30, &v27);
    v22 = v27.i32[0];
    v21 = v27.i32[1];
    v23 = v28;
    v24 = v29;
  }

  return HGRectMake4i(v22, v21, v22 + v23, v21 + v24);
}

void HMaskCompReplace::~HMaskCompReplace(HGNode *this)
{
  HgcMaskCompReplace::~HgcMaskCompReplace(this);

  HGObject::operator delete(v1);
}

uint64_t HMaskCompReplace::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    Input = HGRenderer::GetInput(a2, this, 0);
    DOD = HGRenderer::GetDOD(a2, Input);
    v10 = v9;
    IsNull = HGRectIsNull(DOD, v9);
    if (DOD <= -1073741823)
    {
      v12 = -1073741823;
    }

    else
    {
      v12 = DOD;
    }

    if (SHIDWORD(DOD) <= -1073741823)
    {
      v13 = -1073741823;
    }

    else
    {
      v13 = HIDWORD(DOD);
    }

    if (v10 >= 1073741822)
    {
      v14 = 1073741822;
    }

    else
    {
      v14 = v10;
    }

    if (SHIDWORD(v10) >= 1073741822)
    {
      v15 = 1073741822;
    }

    else
    {
      v15 = HIDWORD(v10);
    }

    v16 = v14 - v12;
    v17 = v15 - v13;
    if (IsNull)
    {
      v18 = 0;
    }

    else
    {
      v18 = v12;
    }

    if (IsNull)
    {
      v19 = 0;
    }

    else
    {
      v19 = v13;
    }

    if (IsNull)
    {
      v20 = -1;
    }

    else
    {
      v20 = v16;
    }

    if (IsNull)
    {
      v21 = -1;
    }

    else
    {
      v21 = v17;
    }

    (*(*this + 104))(this, 1, v23);
    if (fabsf(v23[0]) >= 0.00001)
    {
      v4 = &HGRectInfinite;
      return *v4;
    }

    if (fabsf(v23[1]) >= 0.00001)
    {
      return HGRectMake4i(v18, v19, v20 + v18, v21 + v19);
    }
  }

  v4 = &HGRectNull;
  return *v4;
}

void HMaskCompIntersect::~HMaskCompIntersect(HGNode *this)
{
  HgcMaskCompIntersect::~HgcMaskCompIntersect(this);

  HGObject::operator delete(v1);
}

uint64_t HMaskCompIntersect::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  v40 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, 0);
  DOD = HGRenderer::GetDOD(a2, Input);
  v10 = v9;
  IsNull = HGRectIsNull(DOD, v9);
  if (DOD <= -1073741823)
  {
    v12 = -1073741823;
  }

  else
  {
    v12 = DOD;
  }

  v13 = HIDWORD(DOD);
  if (SHIDWORD(DOD) <= -1073741823)
  {
    LODWORD(v13) = -1073741823;
  }

  if (v10 >= 1073741822)
  {
    v14 = 1073741822;
  }

  else
  {
    v14 = v10;
  }

  v15 = HIDWORD(v10);
  if (SHIDWORD(v10) >= 1073741822)
  {
    LODWORD(v15) = 1073741822;
  }

  v16 = v14 - v12;
  v17 = v15 - v13;
  if (IsNull)
  {
    v18 = 0;
  }

  else
  {
    v18 = v12;
  }

  if (IsNull)
  {
    v19 = 0;
  }

  else
  {
    v19 = v13;
  }

  if (IsNull)
  {
    v20 = -1;
  }

  else
  {
    v20 = v16;
  }

  if (IsNull)
  {
    v21 = -1;
  }

  else
  {
    v21 = v17;
  }

  v22 = HGRenderer::GetInput(a2, this, 1);
  v23 = HGRenderer::GetDOD(a2, v22);
  v25 = v24;
  v26 = HGRectIsNull(v23, v24);
  if (v23 <= -1073741823)
  {
    v27 = -1073741823;
  }

  else
  {
    v27 = v23;
  }

  v28 = HIDWORD(v23);
  if (SHIDWORD(v23) <= -1073741823)
  {
    LODWORD(v28) = -1073741823;
  }

  if (v25 >= 1073741822)
  {
    v29 = 1073741822;
  }

  else
  {
    v29 = v25;
  }

  v30 = HIDWORD(v25);
  if (SHIDWORD(v25) >= 1073741822)
  {
    LODWORD(v30) = 1073741822;
  }

  v31 = v29 - v27;
  v32 = v30 - v28;
  if (v26)
  {
    v33 = 0;
  }

  else
  {
    v33 = v27;
  }

  if (v26)
  {
    v34 = 0;
  }

  else
  {
    v34 = v28;
  }

  if (v26)
  {
    v35 = -1;
  }

  else
  {
    v35 = v31;
  }

  if (v26)
  {
    v36 = -1;
  }

  else
  {
    v36 = v32;
  }

  (*(*this + 104))(this, 1, v39);
  if (fabsf(v39[0]) < 0.00001)
  {
    if (fabsf(v39[1]) < 0.00001)
    {
      return 0;
    }

    v37 = v35 + v33;
    if (v18 > v33)
    {
      v33 = v18;
    }

    if (v20 + v18 < v37)
    {
      v37 = v20 + v18;
    }

    v38 = v36 + v34;
    if (v19 > v34)
    {
      v34 = v19;
    }

    if (v21 + v19 < v38)
    {
      v38 = v21 + v19;
    }

    v35 = v37 - v33;
    v36 = v38 - v34;
  }

  return HGRectMake4i(v33, v34, v33 + v35, v34 + v36);
}

void HMaskCompFirstPass::~HMaskCompFirstPass(HGNode *this)
{
  HgcMaskCompFirstPass::~HgcMaskCompFirstPass(this);

  HGObject::operator delete(v1);
}

double HMaskCompFirstPass::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    goto LABEL_2;
  }

  Input = HGRenderer::GetInput(a2, this, 0);
  DOD = HGRenderer::GetDOD(a2, Input);
  v11 = v10;
  IsNull = HGRectIsNull(DOD, v10);
  if (DOD <= -1073741823)
  {
    v13 = -1073741823;
  }

  else
  {
    v13 = DOD;
  }

  if (SHIDWORD(DOD) <= -1073741823)
  {
    v14 = -1073741823;
  }

  else
  {
    v14 = HIDWORD(DOD);
  }

  if (v11 >= 1073741822)
  {
    v15 = 1073741822;
  }

  else
  {
    v15 = v11;
  }

  if (SHIDWORD(v11) >= 1073741822)
  {
    v16 = 1073741822;
  }

  else
  {
    v16 = HIDWORD(v11);
  }

  v17 = v15 - v13;
  v18 = v16 - v14;
  if (IsNull)
  {
    v19 = 0;
  }

  else
  {
    v19 = v13;
  }

  if (IsNull)
  {
    v20 = 0;
  }

  else
  {
    v20 = v14;
  }

  if (IsNull)
  {
    v21 = -1;
  }

  else
  {
    v21 = v17;
  }

  if (IsNull)
  {
    v22 = -1;
  }

  else
  {
    v22 = v18;
  }

  (*(*this + 104))(this, 1, v30);
  v23 = 0;
  v24 = fabsf(v30[0]);
  v25 = (v30[2] + 0.5);
  v26 = -1;
  if (v25 > 1)
  {
    if (v25 != 2)
    {
      v27 = -1;
      v28 = 0;
      if (v25 != 3)
      {
        goto LABEL_37;
      }
    }
  }

  else if (v25)
  {
    v27 = -1;
    v28 = 0;
    if (v25 == 1)
    {
      v26 = v22;
      v27 = v21;
      v23 = v20;
      v28 = v19;
      if (v24 < 0.00001)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_37;
  }

  if (v24 >= 0.00001)
  {
LABEL_38:
    v4 = &HGRectInfinite;
    goto LABEL_3;
  }

  v26 = v22;
  v27 = v21;
  v23 = v20;
  v28 = v19;
  if (fabsf(v30[1]) >= 0.00001)
  {
LABEL_37:
    *&v5 = HGRectMake4i(v28, v23, v28 + v27, v23 + v26);
    return *&v5;
  }

LABEL_2:
  v4 = &HGRectNull;
LABEL_3:
  v5 = *v4;
  return *&v5;
}

uint64_t HMaskCompFirstPass::GetROI(HMaskCompFirstPass *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3 <= 0)
  {
    return *&a4.var0;
  }

  else
  {
    return 0;
  }
}

void HMaskElem::~HMaskElem(HGNode *this)
{
  HgcMaskElem::~HgcMaskElem(this);

  HGObject::operator delete(v1);
}

uint64_t HMaskElem::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  DOD = HGRenderer::GetDOD(a2, Input);
  v10 = v9;
  IsNull = HGRectIsNull(DOD, v9);
  if (DOD <= -1073741823)
  {
    v12 = -1073741823;
  }

  else
  {
    v12 = DOD;
  }

  v13 = HIDWORD(DOD);
  if (SHIDWORD(DOD) <= -1073741823)
  {
    LODWORD(v13) = -1073741823;
  }

  if (v10 >= 1073741822)
  {
    v14 = 1073741822;
  }

  else
  {
    v14 = v10;
  }

  v15 = HIDWORD(v10);
  if (SHIDWORD(v10) >= 1073741822)
  {
    LODWORD(v15) = 1073741822;
  }

  v16 = v14 - v12;
  v17 = v15 - v13;
  if (IsNull)
  {
    v18 = 0;
  }

  else
  {
    v18 = v12;
  }

  if (IsNull)
  {
    v19 = 0;
  }

  else
  {
    v19 = v13;
  }

  if (IsNull)
  {
    v20 = -1;
  }

  else
  {
    v20 = v16;
  }

  if (IsNull)
  {
    v21 = -1;
  }

  else
  {
    v21 = v17;
  }

  v22 = HGRenderer::GetInput(a2, this, 1);
  v23 = HGRenderer::GetDOD(a2, v22);
  v25 = v24;
  v26 = HGRectIsNull(v23, v24);
  if (v23 <= -1073741823)
  {
    v27 = -1073741823;
  }

  else
  {
    v27 = v23;
  }

  if (SHIDWORD(v23) <= -1073741823)
  {
    v28 = -1073741823;
  }

  else
  {
    v28 = HIDWORD(v23);
  }

  if (v25 >= 1073741822)
  {
    v29 = 1073741822;
  }

  else
  {
    v29 = v25;
  }

  v30 = HIDWORD(v25);
  if (SHIDWORD(v25) >= 1073741822)
  {
    LODWORD(v30) = 1073741822;
  }

  v31 = v29 - v27;
  v32 = v30 - v28;
  if (v26)
  {
    v33 = 0;
  }

  else
  {
    v33 = v27;
  }

  if (v26)
  {
    v34 = 0;
  }

  else
  {
    v34 = v28;
  }

  if (v26)
  {
    v35 = -1;
  }

  else
  {
    v35 = v31;
  }

  if (v26)
  {
    v36 = -1;
  }

  else
  {
    v36 = v32;
  }

  if (*(this + 416) == 1)
  {
    v37 = v20 + v18;
    v38 = v21 + v19;
    v39 = v18;
    v40 = v19;
  }

  else
  {
    if (v18 <= v33)
    {
      v39 = v33;
    }

    else
    {
      v39 = v18;
    }

    v41 = v35 + v33;
    if (v20 + v18 >= v41)
    {
      v37 = v41;
    }

    else
    {
      v37 = v20 + v18;
    }

    if (v19 <= v34)
    {
      v40 = v34;
    }

    else
    {
      v40 = v19;
    }

    v42 = v36 + v34;
    if (v21 + v19 >= v42)
    {
      v38 = v42;
    }

    else
    {
      v38 = v21 + v19;
    }
  }

  return HGRectMake4i(v39, v40, v37, v38);
}

void sub_26020388C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, CGColorSpace *a34)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a34);
  PCSharedCount::~PCSharedCount(v34 + 1);
  _Unwind_Resume(a1);
}

void AppendFlatLayerToLayeredMaterial(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 + 16);
  *&v4.value = *v2;
  v4.epoch = v3;
  operator new();
}

void sub_26020444C(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v1, 0x10A1C4023936FDFLL);
  PCSharedCount::~PCSharedCount(v2 + 1);
  _Unwind_Resume(a1);
}

uint64_t FlatMaterialLayer::Over::Over(uint64_t result, uint64_t a2)
{
  *(result + 16) = &unk_2872DEA38;
  *(result + 24) = 0;
  *(result + 32) = 1;
  v2 = off_287267F18;
  v3 = off_287267F20;
  *result = off_287267F20;
  v4 = off_287267F30;
  *(*(v3 - 3) + result) = off_287267F28;
  *result = v2;
  *(result + *(v2 - 3)) = v4;
  *result = &unk_287267EB0;
  *(result + 8) = a2;
  *(result + 16) = &unk_287267EF8;
  return result;
}

uint64_t FlatMaterialLayer::Multiply::Multiply(uint64_t result, uint64_t a2)
{
  *(result + 16) = &unk_2872DEA38;
  *(result + 24) = 0;
  *(result + 32) = 1;
  v2 = off_2872680B0;
  v3 = off_2872680B8;
  *result = off_2872680B8;
  v4 = off_2872680C8;
  *(*(v3 - 3) + result) = off_2872680C0;
  *result = v2;
  *(result + *(v2 - 3)) = v4;
  *result = &unk_287268048;
  *(result + 8) = a2;
  *(result + 16) = &unk_287268090;
  return result;
}

uint64_t FlatMaterialLayer::Add::Add(uint64_t result, uint64_t a2)
{
  *(result + 16) = &unk_2872DEA38;
  *(result + 24) = 0;
  *(result + 32) = 1;
  v2 = off_287268248;
  v3 = off_287268250;
  *result = off_287268250;
  v4 = off_287268260;
  *(*(v3 - 3) + result) = off_287268258;
  *result = v2;
  *(result + *(v2 - 3)) = v4;
  *result = &unk_2872681E0;
  *(result + 8) = a2;
  *(result + 16) = &unk_287268228;
  return result;
}

uint64_t OZFxPixelTransformsAPIData::pixelTransform@<X0>(OZFxPixelTransformsAPIData *this@<X0>, uint64_t a2@<X8>)
{
  v19 = 0x3FF0000000000000;
  v16 = 0x3FF0000000000000;
  v13 = 0x3FF0000000000000;
  v10 = 0x3FF0000000000000;
  v11 = 0u;
  v12 = 0u;
  v14 = 0u;
  v15 = 0u;
  v17 = 0u;
  v18 = 0u;
  if (*this)
  {
    v4 = *(*this + 160);
    if (v4 != &v10)
    {
      v5 = 0;
      v6 = &v10;
      do
      {
        for (i = 0; i != 4; ++i)
        {
          v6[i] = v4[i];
        }

        ++v5;
        v6 += 4;
        v4 += 4;
      }

      while (v5 != 4);
    }
  }

  PCMatrix44Tmpl<double>::operator*(this + 136, &v10, v9);
  return PCMatrix44Tmpl<double>::operator*(v9, (this + 8), a2);
}

__n128 OZFxPixelTransformsAPIData::inversePixelTransform@<Q0>(OZFxPixelTransformsAPIData *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 120) = 0x3FF0000000000000;
  *(a2 + 80) = 0x3FF0000000000000;
  *(a2 + 40) = 0x3FF0000000000000;
  *a2 = 0x3FF0000000000000;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  v25 = 0x3FF0000000000000;
  v22 = 0x3FF0000000000000;
  v19 = 0x3FF0000000000000;
  v16 = 0x3FF0000000000000;
  v17 = 0u;
  v18 = 0u;
  v20 = 0u;
  v21 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = *this;
  if (v4)
  {
    LiAgent::getInversePixelTransform(v4, 0.0, v15);
    if (v15 != a2)
    {
      for (i = 0; i != 128; i += 32)
      {
        v6 = (a2 + i);
        v7 = *&v15[i + 16];
        *v6 = *&v15[i];
        v6[1] = v7;
      }
    }
  }

  if (PCMatrix44Tmpl<double>::planarInverseZ(&v16, this + 1, 0.0))
  {
    PCMatrix44Tmpl<double>::operator*(&v16, a2, v15);
    if (v15 != a2)
    {
      for (j = 0; j != 128; j += 32)
      {
        v9 = (a2 + j);
        v10 = *&v15[j + 16];
        *v9 = *&v15[j];
        v9[1] = v10;
      }
    }
  }

  if (PCMatrix44Tmpl<double>::planarInverseZ(&v16, this + 17, 0.0))
  {
    PCMatrix44Tmpl<double>::operator*(a2, &v16, v15);
    if (v15 != a2)
    {
      for (k = 0; k != 128; k += 32)
      {
        v13 = a2 + k;
        result = *&v15[k];
        v14 = *&v15[k + 16];
        *v13 = result;
        *(v13 + 16) = v14;
      }
    }
  }

  return result;
}

uint64_t OZFxPixelTransformsAPIData::destinationPixelTransform@<X0>(OZFxPixelTransformsAPIData *this@<X0>, uint64_t a2@<X8>)
{
  v19 = 0x3FF0000000000000;
  v16 = 0x3FF0000000000000;
  v13 = 0x3FF0000000000000;
  v10 = 0x3FF0000000000000;
  v11 = 0u;
  v12 = 0u;
  v14 = 0u;
  v15 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *this;
  if (v4)
  {
    LiAgent::getClientPixelTransform(v4, v9);
    for (i = 0; i != 128; i += 32)
    {
      v6 = (&v10 + i);
      v7 = *&v9[i + 16];
      *v6 = *&v9[i];
      v6[1] = v7;
    }
  }

  PCMatrix44Tmpl<double>::operator*(this + 136, &v10, v9);
  return PCMatrix44Tmpl<double>::operator*(v9, (this + 8), a2);
}

__n128 OZFxPixelTransformsAPIData::destinationInversePixelTransform@<Q0>(OZFxPixelTransformsAPIData *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 120) = 0x3FF0000000000000;
  *(a2 + 80) = 0x3FF0000000000000;
  *(a2 + 40) = 0x3FF0000000000000;
  *a2 = 0x3FF0000000000000;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  v25 = 0x3FF0000000000000;
  v22 = 0x3FF0000000000000;
  v19 = 0x3FF0000000000000;
  v16 = 0x3FF0000000000000;
  v17 = 0u;
  v18 = 0u;
  v20 = 0u;
  v21 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = *this;
  if (v4)
  {
    LiAgent::getInverseClientPixelTransform(v4, v15);
    if (v15 != a2)
    {
      for (i = 0; i != 128; i += 32)
      {
        v6 = (a2 + i);
        v7 = *&v15[i + 16];
        *v6 = *&v15[i];
        v6[1] = v7;
      }
    }
  }

  if (PCMatrix44Tmpl<double>::planarInverseZ(&v16, this + 1, 0.0))
  {
    PCMatrix44Tmpl<double>::operator*(&v16, a2, v15);
    if (v15 != a2)
    {
      for (j = 0; j != 128; j += 32)
      {
        v9 = (a2 + j);
        v10 = *&v15[j + 16];
        *v9 = *&v15[j];
        v9[1] = v10;
      }
    }
  }

  if (PCMatrix44Tmpl<double>::planarInverseZ(&v16, this + 17, 0.0))
  {
    PCMatrix44Tmpl<double>::operator*(a2, &v16, v15);
    if (v15 != a2)
    {
      for (k = 0; k != 128; k += 32)
      {
        v13 = a2 + k;
        result = *&v15[k];
        v14 = *&v15[k + 16];
        *v13 = result;
        *(v13 + 16) = v14;
      }
    }
  }

  return result;
}

char *getPixelTransformsAPIData(void)
{
  {
    pthread_key_create(&getPixelTransformsAPIData(void)::transformsData, PCThreadSpecific<OZFxPixelTransformsAPIData>::destroy);
  }

  v0 = pthread_getspecific(getPixelTransformsAPIData(void)::transformsData);
  if (!v0)
  {
    operator new();
  }

  return v0;
}

uint64_t PCThreadSpecific<OZFxPixelTransformsAPIData>::destroy(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x2666E9F00);
  }

  return result;
}

void OZFxFilter::OZFxFilter(OZFxFilter *this, OZFactory *a2, PCString *a3, unsigned int a4, int a5, char a6)
{
  OZEffect::OZEffect(this, a2, a3, a4);
  *v9 = &unk_2872B15F0;
  *(v9 + 32) = &unk_2872B1960;
  *(v9 + 48) = &unk_2872B19C0;
  *(v9 + 80) = &unk_2872B1C18;
  *(v9 + 368) = &unk_2872B1C70;
  OZFxPlugSharedBase::OZFxPlugSharedBase((v9 + 368), a3, (v9 + 88), a5, a6);
}

void sub_2602052B8(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v3);
  OZFxPlugSharedBase::~OZFxPlugSharedBase(v2);
  OZEffect::~OZEffect(v1);
  _Unwind_Resume(a1);
}

void OZFxFilter::OZFxFilter(OZFxFilter *this, const OZFxFilter *a2, char a3)
{
  OZEffect::OZEffect(this, a2, a3);
  *v4 = &unk_2872B15F0;
  *(v4 + 32) = &unk_2872B1960;
  *(v4 + 48) = &unk_2872B19C0;
  *(v4 + 80) = &unk_2872B1C18;
  *(v4 + 368) = &unk_2872B1C70;
  OZFxPlugSharedBase::OZFxPlugSharedBase((v4 + 368), (a2 + 368), (v4 + 88), 0);
}

void sub_26020547C(_Unwind_Exception *a1)
{
  PCMutex::~PCMutex(v4);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v3);
  OZFxPlugSharedBase::~OZFxPlugSharedBase(v2);
  OZEffect::~OZEffect(v1);
  _Unwind_Resume(a1);
}

void OZFxFilter::~OZFxFilter(OZFxFilter *this)
{
  *this = &unk_2872B15F0;
  *(this + 4) = &unk_2872B1960;
  *(this + 6) = &unk_2872B19C0;
  *(this + 10) = &unk_2872B1C18;
  v2 = (this + 368);
  *(this + 46) = &unk_2872B1C70;
  OZFxPlugSharedBase::resetFxLock(this + 46);
  [*(this + 47) unregisterAPIForProtocol:&unk_28735C6E0];
  PCMutex::~PCMutex(this + 12);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(this + 824);
  OZFxPlugSharedBase::~OZFxPlugSharedBase(v2);

  OZEffect::~OZEffect(this);
}

{
  OZFxFilter::~OZFxFilter(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZFxFilter::~OZFxFilter(OZFxFilter *this)
{
  OZFxFilter::~OZFxFilter((this - 32));
}

{
  OZFxFilter::~OZFxFilter((this - 48));
}

{
  OZFxFilter::~OZFxFilter((this - 80));
}

{
  OZFxFilter::~OZFxFilter((this - 368));
}

{
  OZFxFilter::~OZFxFilter((this - 32));

  JUMPOUT(0x2666E9F00);
}

{
  OZFxFilter::~OZFxFilter((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZFxFilter::~OZFxFilter((this - 80));

  JUMPOUT(0x2666E9F00);
}

{
  OZFxFilter::~OZFxFilter((this - 368));

  JUMPOUT(0x2666E9F00);
}

void OZFxFilter::getBoundsWithInput(id *a1, uint64_t a2, uint64_t a3)
{
  v91 = 0;
  value_low = 0;
  v89 = 0.0;
  v90 = 0.0;
  v88 = 0.0;
  v87 = *a2;
  v6 = a1[50];
  v7 = [v6 figTimeToFxTime:&v87 withConversionData:0];
  [v6 _getFloatValue:&v88 fromParm:10001 atTime:v7];
  v74 = *a2;
  if (!(*(*a1 + 35))(a1, &v74, 0, 1, 1) || !v6 || !a1[49] || v88 == 0.0 || *(a3 + 32) <= 0.0 || *(a3 + 40) <= 0.0)
  {
    v11 = *(a3 + 32);
    *(a3 + 64) = *(a3 + 16);
    *(a3 + 80) = v11;
    return;
  }

  v8 = a1 + 46;
  v9 = a1[3];
  if (v9)
  {
    v10 = (*(*v9 + 144))(v9);
  }

  else
  {
    v10 = 0;
  }

  SceneBitDepth = OZFxFilter::getSceneBitDepth(a1);
  OZEffect::getResolution(a1, &v90, &v89);
  v13 = v89;
  v12 = v90;
  v14 = *(a3 + 32);
  v15 = *(a3 + 40);
  v74 = v87;
  v16 = 0;
  if (((*(a1[46] + 29))(a1 + 46, &v74) & 1) == 0 && (v10 & 1) == 0)
  {
    v17 = v15 * v13;
    v16 = v14 * v12 > 4096.0;
    if (v14 * v12 > 4096.0)
    {
      v18 = *(a3 + 16);
      *(a3 + 16) = (((v14 * v12 + -4096.0) / 2) + v18);
      *(a3 + 32) = 4096.0 / v90;
    }

    if (v17 > 4096.0)
    {
      v19 = (v17 + -4096.0);
      v20 = *(a3 + 24);
      *(a3 + 24) = ((v19 / 2) + v20);
      *(a3 + 40) = 4096.0 / v89;
      v16 = 1;
    }
  }

  v21 = (*(*a1 + 32))(a1);
  if (v21)
  {
    v22 = v21;
    OZExportSettings::OZExportSettings(v86);
    v24 = (*(*v22 + 272))(v22);
    OZScene::getSceneSettings(v24, v86);
  }

  else
  {
    OZExportSettings::OZExportSettings(v86);
    v23 = 0;
    v24 = 0;
  }

  v63 = *(a3 + 32);
  v65 = *(a3 + 16);
  v74 = v87;
  v25 = OZFxPlugSharedBase::doesTransformFromLocalToScreenSpace(a1 + 46, &v74);
  if (v25)
  {
    v26 = v24[48];
  }

  else if (v23)
  {
    v26 = (*(*v23 + 1328))(v23);
  }

  else
  {
    v26 = 1.0;
  }

  v27 = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(v65, vdupq_n_s64(0x3E7AD7F29ABCAF48uLL)))));
  v28 = vsub_s32(vmovn_s64(vcvtq_s64_f64(vrndpq_f64(vaddq_f64(v65, v63)))), v27);
  if (v86[44])
  {
    v29 = 2;
  }

  else
  {
    v29 = 1;
  }

  v31 = *(a2 + 24);
  v30 = *(a2 + 32);
  v32.i64[0] = v27.i32[0];
  v32.i64[1] = v27.i32[1];
  v33 = vcvtq_f64_s64(v32);
  v64 = v28;
  v32.i64[0] = v28.i32[0];
  v32.i64[1] = v28.i32[1];
  v66 = v32;
  v84 = v33;
  v85 = vcvtq_f64_s64(v32);
  v34 = *(a3 + 16);
  v35 = *(a3 + 24);
  v36 = *(a3 + 32);
  v37 = *(a3 + 40);
  if (v25)
  {
    LODWORD(v74.value) = 0;
    v68[0] = 0;
    OZFxFilter::getSceneDimensions(a1, &v74, v68);
    v91 = v68[0];
    value_low = SLODWORD(v74.value);
    if ((OZFxFilter::isText(a1) & 1) != 0 || (v38 = (*(*a1 + 32))(a1), v39 = 0.0, OZFxPlug_IsCloneTextSceneNode(v38)))
    {
      v39 = *(a3 + 40) * -0.5;
    }

    v40 = 0;
    goto LABEL_33;
  }

  OZFxPlugSharedBase::restartPluginXPCIfNecessary((a1 + 46));
  v74 = v87;
  if ((*(*v8 + 136))(a1 + 46, &v74))
  {
    v91 = v64.i32[1];
    value_low = v64.i32[0];
    v42 = objc_opt_respondsToSelector();
    if (objc_opt_respondsToSelector())
    {
      if ((OZFxFilter::isText(a1) & 1) != 0 || (v43 = (*(*a1 + 32))(a1), OZFxPlug_IsCloneTextSceneNode(v43)))
      {
        v39 = 0.0;
        if ((*(*a1[3] + 144))(a1[3]))
        {
          v68[0] = 0;
          v83 = 0;
          OZFxFilter::getSceneDimensions(a1, v68, &v83);
          v62 = v68[0];
          v82 = 0x3FF0000000000000;
          v79 = 0x3FF0000000000000;
          v76 = 0x3FF0000000000000;
          v74.value = 0x3FF0000000000000;
          v44 = v83;
          v91 = v83;
          value_low = v68[0];
          *&v74.timescale = 0u;
          v75 = 0u;
          v77 = 0u;
          v78 = 0u;
          v80 = 0u;
          v81 = 0u;
          (*(*v23 + 1256))(v23, &v74, a2);
          v36 = v62;
          v37 = v44;
          v34 = v62 * -0.5 - *&v75;
          v35 = v44 * -0.5 - *(&v77 + 1);
        }

        v40 = 1;
LABEL_33:
        [a1[58] beginLightAccess:a2];
        v41 = a1[49];
        *&v74.value = v66;
        v74.epoch = SceneBitDepth;
        v75 = 4uLL;
        v76 = 0;
        *&v77 = 0;
        BYTE8(v77) = 1;
        *(&v77 + 9) = v93[0];
        HIDWORD(v77) = *(v93 + 3);
        *&v78 = v26;
        *v68 = v7;
        v69 = v29;
        v70 = 0;
        v71 = v31;
        v72 = v30;
        v73 = SceneBitDepth;
        if (v40)
        {
          [v41 getOutputBounds:&v84 withInputBounds:&v74 withInputInfo:v68 withRenderInfo:{v34, v35, v36, v37}];
          v91 = v85.f64[1];
          value_low = v85.f64[0];
        }

        else
        {
          [v41 getOutputWidth:&value_low height:&v91 withInput:&v74 withInfo:v68];
        }

        [a1[58] endLightAccess];
        v46 = v89;
        v45 = v90;
        v48 = v91;
        v47 = value_low;
        v74 = v87;
        if (((*(*v8 + 232))(a1 + 46, &v74) | v10))
        {
          v49 = value_low;
        }

        else
        {
          v50 = v45 * v47;
          v51 = v46 * v48;
          if (fmax(v50, v51) > 4096.0)
          {
            LOBYTE(v16) = 1;
          }

          if (v50 <= 4096.0)
          {
            v49 = value_low;
          }

          else
          {
            v49 = 4096.0 / v90;
          }

          if (v51 > 4096.0)
          {
            v52 = 4096.0 / v89;
LABEL_53:
            if (v49 <= 0.0 || v52 <= 0.0)
            {
              __asm { FMOV            V0.2D, #-1.0 }

              *(a3 + 80) = _Q0;
              if (!v16)
              {
                goto LABEL_66;
              }
            }

            else
            {
              if (v40)
              {
                v54 = v84.f64[1];
                v53 = v84.f64[0];
              }

              else
              {
                v53 = *(a3 + 16) - ((value_low - v64.i32[0]) / 2);
                v54 = v39 + *(a3 + 24) - ((v91 - v64.i32[1]) / 2);
              }

              *(a3 + 64) = v53;
              *(a3 + 72) = v54;
              *(a3 + 80) = v49;
              *(a3 + 88) = v52;
              if (!v16)
              {
                goto LABEL_66;
              }
            }

            goto LABEL_65;
          }
        }

        v52 = v91;
        goto LABEL_53;
      }

      v40 = 1;
LABEL_68:
      v39 = 0.0;
      goto LABEL_33;
    }

    if (v42)
    {
      v40 = 0;
      goto LABEL_68;
    }
  }

  v60 = *(a3 + 32);
  *(a3 + 64) = *(a3 + 16);
  *(a3 + 80) = v60;
  if (v16)
  {
LABEL_65:
    Name = OZObjectManipulator::getName((a1 + 6));
    PCURL::PCURL(&v74, @"Filter is too big message");
    OZChannelBase::setRangeName(Name, &v74);
    PCString::~PCString(&v74);
  }

LABEL_66:
  OZExportSettings::~OZExportSettings(v86);
}

void sub_260206074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, PCString a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  OZExportSettings::~OZExportSettings(va);
  _Unwind_Resume(a1);
}

uint64_t OZFxFilter::getSceneBitDepth(OZFxFilter *this)
{
  v1 = (*(*this + 256))(this);
  if (!v1)
  {
    return 0;
  }

  v2 = (*(*v1 + 272))(v1);
  if (!v2)
  {
    return 0;
  }

  return OZSceneSettings::getBitDepth(v2);
}

_DWORD *OZFxFilter::getSceneDimensions(OZFxFilter *this, int *a2, int *a3)
{
  result = (*(*this + 256))(this);
  if (result && (result = (*(*result + 272))(result)) != 0)
  {
    *a2 = result[86];
    v6 = result[87];
  }

  else
  {
    v6 = 0;
    *a2 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t OZFxFilter::isText(OZFxFilter *this)
{
  v2 = (*(*this + 256))(this);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(*((*(*v2 + 672))(v2) + 8) + 8), xmmword_2603473A0)))))
  {
    v3 = (*(*this + 256))(this);
    v4 = vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(*((*(*v3 + 672))(v3) + 8) + 24), xmmword_260347A90)))) ^ 1;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

__n128 OZFxFilter::getBounds(PCMutex *a1, _OWORD *a2, uint64_t a3)
{
  v4 = *&a1->_Mutex.__opaque[8];
  if (v4)
  {
    if (!a2)
    {
      PCPrint("File %s, line %d should not have been reached:\n\t", "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/Effects/FxFilter/OZFxFilter.mm", 144);
      pcAbortImpl();
    }

    v15 = xmmword_260343AA0;
    v7 = v16;
    v16[0] = 0;
    v16[1] = 0;
    __asm { FMOV            V1.2D, #-1.0 }

    v17 = _Q1;
    v18 = xmmword_260343AA0;
    v19[0] = 0;
    v19[1] = 0;
    v20 = _Q1;
    (*(*v4 + 80))(v4, v16, a3);
    if ((OZFxFilter::inTemporalOperation(a1) & 1) == 0)
    {
      v7 = v19;
      (*(a1->_vptr$PCMutex + 102))(a1, a3, &v15);
    }

    result = *v7;
    v14 = *(v7 + 1);
    *a2 = *v7;
    a2[1] = v14;
  }

  return result;
}

uint64_t OZFxFilter::inTemporalOperation(PCMutex *this)
{
  v2 = this + 12;
  v6[1] = this + 12;
  PCMutex::lock(this + 12);
  v7 = 1;
  v6[0] = pthread_self();
  v3 = std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,BOOL>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,BOOL>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,BOOL>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,BOOL>>>::find<_opaque_pthread_t *>(&this[11]._Mutex.__opaque[16], v6);
  if (v3)
  {
    v4 = *(v3 + 24);
  }

  else
  {
    v4 = 0;
  }

  PCMutex::unlock(v2);
  return v4 & 1;
}

void sub_2602064A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCConsoleLock::~PCConsoleLock(va);
  _Unwind_Resume(a1);
}

void *OZFxFilter::shouldDrawOSCBounds(OZFxFilter *this)
{
  result = OZFxPlugSharedBase::getStaticProperty((this + 368), @"SuppressBoundsDrawing");
  if (result)
  {

    return [result BOOLValue];
  }

  return result;
}

void OZFxFilter::updateChannelsForMisbehavingPlugin(id *this)
{
  [this[50] softDisableAllChannels];
  v2 = (*(*this + 37))(this);
  if (v2)
  {
    v3 = *(v2 + 1584);

    OZDocument::postNotification(v3, 557056);
  }
}

OZChannelFolder *OZFxFilter::getChannelFromRefAndVersion(OZFxFilter *this, OZChannelRef *a2, double a3)
{
  v3 = a2;
  result = OZObjectManipulator::getChannelFromRefAndVersion((this + 48), a2, a3);
  if (v3 && !result)
  {
    if (*(v3 + 23) < 0)
    {
      v3 = *v3;
      if (!v3)
      {
        return 0;
      }
    }

    result = [objc_msgSend(MEMORY[0x277CCACA8] stringWithCString:v3 encoding:{1), "lastPathComponent"}];
    if (!result)
    {
      return result;
    }

    if ([(OZChannelFolder *)result intValue]>= 10001 && (v6 = *(this + 25)) != 0 && (v7 = v6[1], ((v7 - *v6) >> 3) >= 1))
    {
      return *(v7 - 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t OZFxFilter::setupObservers(OZFxFilter *this, OZScene *a2)
{
  v3 = this + 368;
  if (objc_opt_respondsToSelector())
  {
    v4 = (*(*v3 + 256))(v3);
    if (a2)
    {
      if ((v4 & 1) == 0)
      {
        v5 = *(a2 + 198);
        if (v5)
        {
          OZDocument::addCPPObserver(v5, v3, 1001);
          (*(*v3 + 264))(v3, 1);
        }
      }
    }
  }

  result = (*(*v3 + 272))(v3);
  if ((result & 1) == 0)
  {
    v7 = *(*v3 + 280);

    return v7(v3, 1);
  }

  return result;
}

void *OZFxFilter::renumberID(id *this, unsigned int *a2)
{
  result = [this[50] channelMap];
  if (result)
  {
    v5 = result[1];
    ++result;
    v4 = v5;
    if (!v5)
    {
      goto LABEL_10;
    }

    v6 = *a2;
    v7 = result;
    do
    {
      v8 = *(v4 + 32);
      v9 = v8 >= v6;
      v10 = v8 < v6;
      if (v9)
      {
        v7 = v4;
      }

      v4 = *(v4 + 8 * v10);
    }

    while (v4);
    if (v7 == result || v6 < *(v7 + 8))
    {
LABEL_10:
      v7 = result;
    }

    *a2 = *(v7[5] + 24);
  }

  return result;
}

uint64_t OZFxFilter::renumberIDs(uint64_t a1, OZChannelBase *a2, int a3)
{
  OZChannelObjectRoot::renumberIDs((a1 + 88), a2, a3);
  OZFxFilter::renumberID(a1, (a1 + 816));
  v4 = *(a1 + 400);

  return [v4 updateChannelMap];
}

uint64_t non-virtual thunk toOZFxFilter::renumberIDs(uint64_t a1, OZChannelBase *a2, int a3)
{
  v4 = (a1 - 48);
  OZChannelObjectRoot::renumberIDs((a1 + 40), a2, a3);
  OZFxFilter::renumberID(v4, (a1 + 768));
  v5 = *(a1 + 352);

  return [v5 updateChannelMap];
}

id *OZFxFilter::didChangeChannelState(id *this, OZChannelBase *a2)
{
  v4 = (*(*this + 37))(this);

  return OZFxPlugSharedBase::didChangeChannelState(this + 46, v4, a2);
}

id *non-virtual thunk toOZFxFilter::didChangeChannelState(OZFxFilter *this, OZChannelBase *a2)
{
  v3 = (this - 48);
  v4 = (*(*(this - 6) + 296))(this - 48);

  return OZFxPlugSharedBase::didChangeChannelState(v3 + 46, v4, a2);
}

void *OZFxFilter::completeConstruction(id *this)
{
  [this[47] registerAPIObject:this[50] forProtocol:&unk_28735C6E0 version:1];
  OZFxPlugSharedBase::updateFlipChannel(this + 46);
  OZFxPlugSharedBase::updateInputPointsChannel((this + 46));

  return OZFxPlugSharedBase::updateAbsolutePointsChannel((this + 46));
}

void OZFxFilter::didAddToNode(const PCString *this, OZSceneNode *a2, int a3)
{
  v6 = (*(*a2 + 272))(a2);
  (this->var0[14].length)(this, v6);
  var0 = this[50].var0;
  if (var0)
  {
    v8 = [(__CFString *)this[50].var0 contextManager];
    if (v8)
    {
      v9 = v8;
      (*(*a2 + 288))(&v52, a2);
      OZFxPlugRenderContextManager::setWorkingColorDescription(v9, &v52);
      PCCFRef<CGColorSpace *>::~PCCFRef(&v52._pcColorDesc._colorSpaceRef._obj);
      v10 = (*(*a2 + 296))(a2);
      OZFxPlugRenderContextManager::setBlendingGamma(v9, v10);
    }

    [(__CFString *)var0 setObjectID];
  }

  OZFxPlugSharedBase::doPostConstructionActions(&this[46].var0);
  if (a3)
  {
    OZFxPlugSharedBase::finishPluginSetup(&this[46]);
  }

  OZFxPlugSharedBase::getPluginUUID(&v52, this + 46);
  v11 = PCString::ns_str(&v52);
  PCString::~PCString(&v52);
  if ([(__CFString *)v11 compare:@"41122549-B8A6-470E-94DA-211294D20B62"])
  {
    if ([(__CFString *)v11 compare:@"7E9178C5-7B0F-4B86-884D-FE79F568B6CE"])
    {
      goto LABEL_93;
    }

    v12 = [(__CFString *)this[50].var0 channelMap];
    if (!v12)
    {
      goto LABEL_93;
    }

    v14 = (v12 + 8);
    v13 = *(v12 + 8);
    if (!v13)
    {
      goto LABEL_18;
    }

    v15 = v12 + 8;
    do
    {
      v16 = *(v13 + 32);
      v17 = v16 >= 0x22;
      v18 = v16 < 0x22;
      if (v17)
      {
        v15 = v13;
      }

      v13 = *(v13 + 8 * v18);
    }

    while (v13);
    if (v15 == v14 || *(v15 + 32) >= 0x23u)
    {
LABEL_18:
      v15 = v12 + 8;
    }

    OZChannelBase::setFlag(*(v15 + 40), 0x1000000000, 0);
    v19 = *v14;
    if (*v14)
    {
      v20 = v14;
      do
      {
        v21 = *(v19 + 32);
        v17 = v21 >= 5;
        v22 = v21 < 5;
        if (v17)
        {
          v20 = v19;
        }

        v19 = *(v19 + 8 * v22);
      }

      while (v19);
      if (v20 != v14 && *(v20 + 8) < 6u)
      {
        goto LABEL_92;
      }
    }

    goto LABEL_91;
  }

  v23 = [(__CFString *)this[50].var0 channelMap];
  if (!v23)
  {
    goto LABEL_93;
  }

  v14 = (v23 + 8);
  v24 = *(v23 + 8);
  if (!v24)
  {
    goto LABEL_37;
  }

  v25 = v23 + 8;
  do
  {
    v26 = *(v24 + 32);
    v17 = v26 >= 0x13;
    v27 = v26 < 0x13;
    if (v17)
    {
      v25 = v24;
    }

    v24 = *(v24 + 8 * v27);
  }

  while (v24);
  if (v25 == v14 || *(v25 + 32) >= 0x14u)
  {
LABEL_37:
    v25 = v23 + 8;
  }

  OZChannelBase::setFlag(*(v25 + 40), 0x1000000000, 0);
  v28 = *v14;
  if (!*v14)
  {
    goto LABEL_46;
  }

  v29 = v14;
  do
  {
    v30 = *(v28 + 32);
    v17 = v30 >= 0x24;
    v31 = v30 < 0x24;
    if (v17)
    {
      v29 = v28;
    }

    v28 = *(v28 + 8 * v31);
  }

  while (v28);
  if (v29 == v14 || *(v29 + 8) >= 0x25u)
  {
LABEL_46:
    v29 = v14;
  }

  OZChannelBase::setFlag(v29[5], 0x1000000000, 0);
  v32 = *v14;
  if (!*v14)
  {
    goto LABEL_55;
  }

  v33 = v14;
  do
  {
    v34 = *(v32 + 32);
    v17 = v34 >= 0x22;
    v35 = v34 < 0x22;
    if (v17)
    {
      v33 = v32;
    }

    v32 = *(v32 + 8 * v35);
  }

  while (v32);
  if (v33 == v14 || *(v33 + 8) >= 0x23u)
  {
LABEL_55:
    v33 = v14;
  }

  OZChannelBase::setFlag(v33[5], 0x1000000000, 0);
  v36 = *v14;
  if (!*v14)
  {
    goto LABEL_64;
  }

  v37 = v14;
  do
  {
    v38 = *(v36 + 32);
    v17 = v38 >= 5;
    v39 = v38 < 5;
    if (v17)
    {
      v37 = v36;
    }

    v36 = *(v36 + 8 * v39);
  }

  while (v36);
  if (v37 == v14 || *(v37 + 8) >= 6u)
  {
LABEL_64:
    v37 = v14;
  }

  OZChannelBase::setFlag(v37[5], 0x1000000000, 0);
  v40 = *v14;
  if (!*v14)
  {
    goto LABEL_73;
  }

  v41 = v14;
  do
  {
    v42 = *(v40 + 32);
    v17 = v42 >= 6;
    v43 = v42 < 6;
    if (v17)
    {
      v41 = v40;
    }

    v40 = *(v40 + 8 * v43);
  }

  while (v40);
  if (v41 == v14 || *(v41 + 8) >= 7u)
  {
LABEL_73:
    v41 = v14;
  }

  OZChannelBase::setFlag(v41[5], 0x1000000000, 0);
  v44 = *v14;
  if (!*v14)
  {
    goto LABEL_82;
  }

  v45 = v14;
  do
  {
    v46 = *(v44 + 32);
    v17 = v46 >= 0x25;
    v47 = v46 < 0x25;
    if (v17)
    {
      v45 = v44;
    }

    v44 = *(v44 + 8 * v47);
  }

  while (v44);
  if (v45 == v14 || *(v45 + 8) >= 0x26u)
  {
LABEL_82:
    v45 = v14;
  }

  OZChannelBase::setFlag(v45[5], 0x1000000000, 0);
  v48 = *v14;
  if (!*v14)
  {
    goto LABEL_91;
  }

  v20 = v14;
  do
  {
    v49 = *(v48 + 32);
    v17 = v49 >= 0x2D;
    v50 = v49 < 0x2D;
    if (v17)
    {
      v20 = v48;
    }

    v48 = *(v48 + 8 * v50);
  }

  while (v48);
  if (v20 == v14 || *(v20 + 8) >= 0x2Eu)
  {
LABEL_91:
    v20 = v14;
  }

LABEL_92:
  OZChannelBase::setFlag(v20[5], 0x1000000000, 0);
LABEL_93:
  if ([objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")])
  {
    OZChannelBase::setRangeName(&this[46], v51);
  }
}

uint64_t OZFxFilter::willRemove(OZFxFilter *this)
{
  v2 = this + 368;
  if ((*(*(this + 46) + 256))(this + 368))
  {
    v3 = (*(*this + 296))(this);
    if (v3)
    {
      v4 = *(v3 + 1584);
      if (v4)
      {
        OZDocument::removeCPPObserver(v4, v2);
        (*(*v2 + 264))(v2, 0);
      }
    }
  }

  v5 = *(*v2 + 280);

  return v5(v2, 0);
}

void *OZFxFilter::didAddSceneNodeToScene(OZFxFilter *this, OZScene *a2)
{
  (*(*this + 472))(this, a2);
  result = *(this + 50);
  if (result)
  {

    return [result setObjectID];
  }

  return result;
}

uint64_t OZFxFilter::willRemoveSceneNodeFromScene(OZFxFilter *this, OZScene *a2)
{
  v3 = this + 368;
  if ((*(*(this + 46) + 256))(this + 368))
  {
    v4 = *(a2 + 198);
    if (v4)
    {
      OZDocument::removeCPPObserver(v4, v3);
      (*(*v3 + 264))(v3, 0);
    }
  }

  v5 = *(*v3 + 280);

  return v5(v3, 0);
}

void OZFxFilter::calcStaticHash(const PCString *a1, void *a2, uint64_t **a3)
{
  OZEffect::calcStaticHash(a1, a2, a3);
  if (!v5)
  {
    __cxa_bad_cast();
  }

  if (a1[49].var0)
  {
    v6 = v5;
    OZFxPlugSharedBase::getPluginUUID(&v7, a1 + 46);
    (*(*v6 + 104))(v6, &v7);
    PCString::~PCString(&v7);
  }
}

double OZFxFilter::calcHashForState(const PCString *a1, void *lpsrc, CMTime *a3, uint64_t **a4)
{
  var0 = a1[49].var0;
  if (var0)
  {
    if (([(__CFString *)var0 variesOverTime]& 1) != 0)
    {
      epoch = a3->epoch;
      v10 = *&a3->value;
      (*(*lpsrc + 16))(lpsrc, 0);
      (*(*lpsrc + 112))(lpsrc, &v10);
      (*(*lpsrc + 24))(lpsrc);
    }

    OZFxPlugSharedBase::getPluginUUID(&v10, a1 + 46);
    (*(*lpsrc + 104))(lpsrc, &v10);
    PCString::~PCString(&v10);
  }

  return OZEffect::calcHashForState(a1, lpsrc, a3, a4);
}

OZChannelObjectRootBase *OZFxFilter::markFactoriesForSerialization(OZFxFilter *this, OZChannelFolder *a2)
{
  if (!OZChannelBase::testFlag((this + 88), 8))
  {
    OZFactory::setNeedsSaving(*(this + 5), 1);
  }

  OZFxPlugSharedBase::markDynamicParameterFactoriesForSerialization(this + 46);

  return OZChannelObjectRoot::markChannelFactoriesForSerialization((this + 88), a2, v4);
}

uint64_t OZFxFilter::writeHeader(OZFactory **this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZFxFilterScope);
  (*(*a2 + 16))(a2, 68);
  (*(*a2 + 200))(a2, 110, this + 15);
  (*(*a2 + 144))(a2, 111, *(this + 28));
  if (((*(*a2 + 232))(a2) & 1) == 0)
  {
    v5 = OZFactory::fileRefID(this[5], v4);
    (*(*a2 + 144))(a2, 113, v5);
  }

  OZFxPlugSharedBase::getPluginUUID(&v10, this + 46);
  (*(*a2 + 200))(a2, 7, &v10);
  PCString::~PCString(&v10);
  v6 = (*(this[46] + 24))(this + 46);
  (*(*a2 + 152))(a2, 8, v6);
  if ((*(*this + 73))(this))
  {
    if (this[16])
    {
      v7 = this[16];
    }

    else
    {
      v7 = this + 15;
    }

    (*(*a2 + 200))(a2, 118, v7);
  }

  v8 = (*(this[46] + 26))(this + 46);
  (*(*a2 + 152))(a2, 9, v8);
  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZFxFilter::writeBody(id *this, PCSerializerWriteStream *a2, BOOL a3, BOOL a4, uint64_t a5)
{
  PCSerializerWriteStream::pushScope(a2, &OZFxFilterScope);
  if ((*(this[46] + 26))(this + 46))
  {
    v8 = [this[50] baseChannel];
    if (v8)
    {
      OZFxPlugSharedBase::writeDynamicParams((this + 46), a2, v8);
    }
  }

  OZChannelObjectRoot::writeBody((this + 11), a2, 0, 1, a5);

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZFxFilter::parseBegin(OZFxFilter *this, PCSerializerReadStream *a2)
{
  v4 = (this + 368);
  *(this + 202) = *(a2 + 26);
  OZFxPlugSharedBase::updateFlipChannel(this + 368);
  OZFxPlugSharedBase::updateInputPointsChannel(v4);
  OZFxPlugSharedBase::updateAbsolutePointsChannel(v4);
  PCSerializerReadStream::pushScope(a2, &OZFxFilterScope);
  if ((*(*(this + 46) + 208))(v4))
  {
    OZFxPlugSharedBase::pushDynamicParamScope(v4, a2);
  }

  OZChannelObjectRoot::parseBegin((this + 88), a2);
  return 1;
}

uint64_t OZFxFilter::parseEnd(OZFxFilter *this, PCSerializerReadStream *a2)
{
  OZChannelObjectRoot::parseEnd((this + 88), a2);
  if (*(a2 + 26) <= 4u)
  {
    if ((*(*(this + 46) + 208))())
    {
      v4 = *(this + 25);
      if (v4)
      {
        v6 = *v4;
        v5 = v4[1];
        if (v5 != *v4)
        {
          while (1)
          {
            v8 = *(v5 - 8);
            v5 -= 8;
            v7 = v8;
            if (v8)
            {
              {
                v9 = v7[6];
                if (v9 >> 4 >= 0x271)
                {
                  break;
                }
              }
            }

            if (v5 == v6)
            {
              goto LABEL_11;
            }
          }

          *(this + 204) = v9;
        }
      }
    }

LABEL_11:
    if (*(this + 204) != 10001)
    {
      v10 = [*(this + 50) channelMap];
      if (v10)
      {
        v11 = v10;
        v12 = (this + 816);
        v13 = *(v10 + 8);
        if (!v13)
        {
          goto LABEL_21;
        }

        v14 = *v12;
        v15 = v10 + 8;
        do
        {
          v16 = *(v13 + 32);
          v17 = v16 >= v14;
          v18 = v16 < v14;
          if (v17)
          {
            v15 = v13;
          }

          v13 = *(v13 + 8 * v18);
        }

        while (v13);
        if (v15 == v10 + 8 || v14 < *(v15 + 32))
        {
LABEL_21:
          v15 = v10 + 8;
        }

        v19 = *(v15 + 40);
        OZChannelBase::setID(v19, 0x2711u);
        LODWORD(v41) = 10001;
        v42.var0 = &v41;
        std::__tree<std::__value_type<unsigned int,OZFactory *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OZFactory *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OZFactory *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v11, &v41, &std::piecewise_construct, &v42)[5] = v19;
        std::__tree<std::__value_type<unsigned int,OZChannelBase *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OZChannelBase *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OZChannelBase *>>>::__erase_unique<unsigned int>(v11, this + 204);
        *v12 = 10001;
      }
    }
  }

  if ((*(*(this + 46) + 208))(this + 368))
  {
    v20 = *(this + 50);
    v21 = [v20 channelMap];
    if (v21)
    {
      v23 = (v21 + 8);
      v22 = *(v21 + 8);
      if (v22)
      {
        v24 = v21 + 8;
        v25 = *(v21 + 8);
        do
        {
          v26 = *(v25 + 32);
          v17 = v26 >= 0x2711;
          v27 = v26 < 0x2711;
          if (v17)
          {
            v24 = v25;
          }

          v25 = *(v25 + 8 * v27);
        }

        while (v25);
        if (v24 != v23 && *(v24 + 32) <= 0x2711u)
        {
          [v20 addMixSlider:10001 withChannel:*(v24 + 40)];
          v22 = *v23;
        }

        if (v22)
        {
          v28 = v23;
          v29 = v22;
          do
          {
            v30 = *(v29 + 32);
            v17 = v30 >= 0x2712;
            v31 = v30 < 0x2712;
            if (v17)
            {
              v28 = v29;
            }

            v29 = *(v29 + 8 * v31);
          }

          while (v29);
          if (v28 != v23 && *(v28 + 8) <= 0x2712u)
          {
            [v20 addFlipCheckbox:10002 withChannel:v28[5]];
            v22 = *v23;
          }

          if (v22)
          {
            v32 = v23;
            do
            {
              v33 = *(v22 + 32);
              v17 = v33 >= 0x2713;
              v34 = v33 < 0x2713;
              if (v17)
              {
                v32 = v22;
              }

              v22 = *(v22 + 8 * v34);
            }

            while (v22);
            if (v32 != v23 && *(v32 + 8) >> 2 <= 0x9C4u)
            {
              [v20 addInputPointsCheckbox:10003 withChannel:v32[5]];
            }
          }
        }
      }
    }
  }

  v35 = *(this + 50);
  if (((*(*(this + 46) + 288))(this + 368) & 1) != 0 || [v35 hasPointParameters])
  {
    [v35 movePublishOSCChannelToEnd];
  }

  v36 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  if (!v36 || CFStringCompare(v36, @"com.apple.FinalCutApp", 1uLL) || (OZFxPlugSharedBase::isHMTCompatible(this + 46) & 1) != 0)
  {
    v37 = (*(*this + 296))(this);
    if (!v37)
    {
      return 1;
    }

    v38 = *(v37 + 1584);
    if (!v38)
    {
      return 1;
    }

    OZDocument::getFilename(&v42, v38);
    PCURL::PCURL(&v41, &v42, 0);
    if (!OZDocumentBundleFormatUtils::isMotionDocURLInMotionBundle(&v41, v39) || (OZFxPlugSharedBase::isHMTCompatible(this + 46) & 1) != 0)
    {
      PCURL::~PCURL(&v41);
      PCString::~PCString(&v42);
      return 1;
    }

    (*(*a2 + 24))(a2);
    PCURL::~PCURL(&v41);
    PCString::~PCString(&v42);
  }

  else
  {
    (*(*a2 + 24))(a2);
  }

  return 0;
}

uint64_t OZFxFilter::updateParameterID(uint64_t this, OZChannelBase *a2, unsigned int *a3, unsigned int a4)
{
  v8 = a4;
  if (a2)
  {
    v6 = this;
    OZChannelBase::setID(a2, a4);
    v7 = [*(v6 + 400) channelMap];
    v9 = &v8;
    std::__tree<std::__value_type<unsigned int,OZFactory *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OZFactory *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OZFactory *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v7, &v8, &std::piecewise_construct, &v9)[5] = a2;
    this = std::__tree<std::__value_type<unsigned int,OZChannelBase *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OZChannelBase *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OZChannelBase *>>>::__erase_unique<unsigned int>(v7, a3);
    *a3 = v8;
  }

  return this;
}

uint64_t OZFxFilter::parseElement(OZFxFilter *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  v6 = (this + 368);
  if ((*(*(this + 46) + 208))(this + 368))
  {
    OZFxPlugSharedBase::parseDynamicParamElement(v6, a2, a3);
  }

  v14 = 0;
  if (*(a3 + 2) == 110)
  {
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v14);
    if (!OZChannelFolder::getDescendant((this + 88), v14))
    {
      PCURL::PCURL(&v13, @"Channel Mix");
      PCSharedCount::PCSharedCount(&v12);
      PCSerializerReadStream::getAttributeAsString(a2, a3, 110, &v12);
      v7 = PCString::ns_str(&v12);
      v8 = [(__CFString *)v7 isEqualToString:PCString::ns_str(&v13)];
      if (v14 >> 4 > 0x270)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (v9 == 1)
      {
        Descendant = OZChannelFolder::getDescendant((this + 88), *(this + 204));
        OZFxFilter::updateParameterID(this, Descendant, this + 204, v14);
      }

      PCString::~PCString(&v12);
      PCString::~PCString(&v13);
    }
  }

  OZChannelObjectRoot::parseElement(this + 11, a2, a3);
  return 1;
}

BOOL OZFxFilter::needsToRender(OZFxFilter *this, CMTime *a2)
{
  v3 = *(this + 50);
  v6 = 0.0;
  [v3 _getFloatValue:&v6 fromParm:10001 atTime:{objc_msgSend(v3, "figTimeToFxTime:withConversionData:", a2, 0)}];
  if (v3)
  {
    v4 = *(this + 49) == 0;
  }

  else
  {
    v4 = 1;
  }

  return !v4 && v6 > 0.0;
}

uint64_t OZFxFilter::rescaleInput(id *a1, __n128 *a2, CMTime *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *a3;
  if (OZFxPlugSharedBase::isPixelIndependent(a1 + 46, &v13))
  {
    return 0;
  }

  v12 = 13;
  LODWORD(v13.value) = 5;
  OZFxFilter::getDocumentVersionAndRevision(a1, &v13, &v12);
  v10 = (*(*a1 + 31))(a1);
  v11 = OZFxPlug_InputWillBeScaledBasedOnChannel(v10, v13.value, v12);
  return OZFxPlug_setPixelTransformToRestrictInputSizeForFilter(a2, a6, v11, 0);
}

void *OZFxFilter::getDocumentVersionAndRevision(OZFxFilter *this, int *a2, int *a3)
{
  *a2 = 5;
  *a3 = 13;
  result = (*(*this + 256))(this);
  if (result)
  {
    result = (*(*result + 272))(result);
    if (result)
    {
      v6 = result[198];
      if (v6)
      {
        *a2 = *(v6 + 260);
        *a3 = *(v6 + 264);
      }
    }
  }

  return result;
}

uint64_t OZFxFilter::rescaleInput(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = *(a2 + 160);
  v4 = *(v3 + 48);
  v6 = *v3;
  v5 = *(v3 + 16);
  v15 = *(v3 + 32);
  v16 = v4;
  v13 = v6;
  v14 = v5;
  v7 = *(v3 + 112);
  v9 = *(v3 + 64);
  v8 = *(v3 + 80);
  v19 = *(v3 + 96);
  v20 = v7;
  v17 = v9;
  v18 = v8;
  v11 = *a3;
  v10 = a3[1];
  if (*a3 != 1.0)
  {
    v13 = vmulq_n_f64(v13, v11);
    v14 = vmulq_n_f64(v14, v11);
  }

  if (v10 != 1.0)
  {
    v15 = vmulq_n_f64(v15, v10);
    v16 = vmulq_n_f64(v16, v10);
  }

  return LiAgent::setPixelTransform(a2, &v13);
}

BOOL OZFxFilter::getSceneDimensionsBounds(OZFxFilter *a1, LiAgent *this, uint64_t a3, OZRenderParams *a4)
{
  LiAgent::getDOD(v20, this);
  *a3 = *v20;
  LiAgent::getInversePixelTransform(this, 0.0, v20);
  *v19 = 0;
  OZFxFilter::getSceneDimensions(a1, &v19[1], v19);
  v9 = v19[0];
  v8 = v19[1];
  *(a3 + 48) = 0;
  *(a3 + 56) = v8;
  *(a3 + 60) = v9;
  OZRenderParams::getResolution(&v21, a4);
  v10 = *(a3 + 48);
  v11 = *(a3 + 56);
  v12.i64[0] = v10;
  v12.i64[1] = SHIDWORD(v10);
  v13 = vcvtq_s64_f64(vmulq_f64(v21, vcvtq_f64_s64(v12)));
  v14 = vmovn_s64(v13);
  v12.i64[0] = v14.i32[0];
  v12.i64[1] = v14.i32[1];
  v15 = vcvtq_f64_s64(v12);
  v12.i64[0] = v11;
  v12.i64[1] = SHIDWORD(v11);
  v16 = vcvtq_s64_f64(vmulq_f64(v21, vcvtq_f64_s64(v12)));
  v17 = vmovn_s64(v16);
  *(a3 + 48) = vuzp1q_s32(v13, v16);
  v12.i64[0] = v17.i32[0];
  v12.i64[1] = v17.i32[1];
  *(a3 + 64) = v15;
  *(a3 + 80) = vcvtq_f64_s64(v12);
  return PCMatrix44Tmpl<double>::transformRect<double>(v20, (a3 + 64), (a3 + 64));
}

BOOL OZFxFilter::getOutputPixelBoundsFromImageBounds(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v6 = (a4 + 16);
  v7 = *(a4 + 16);
  v9 = *(a4 + 24);
  v8 = *(a4 + 32);
  v10 = *(a4 + 40);
  (*(*a1 + 816))(a1, a3, a4);
  if (v7 != v6->f64[0] || v9 != *(a4 + 24) || v8 != *(a4 + 32) || v10 != *(a4 + 40))
  {
    v11 = v6[1];
    v18 = *v6;
    v19 = v11;
    result = PCMatrix44Tmpl<double>::transformRect<double>(a2, v18.f64, &v18);
    if (!result)
    {
      return result;
    }

    v13 = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(v18, vdupq_n_s64(0x3E7AD7F29ABCAF48uLL)))));
    v14 = vsub_s32(vmovn_s64(vcvtq_s64_f64(vrndpq_f64(vaddq_f64(v18, v19)))), v13);
    *a4 = v13;
    *(a4 + 8) = v14;
  }

  v15 = *(a4 + 80);
  v18 = *(a4 + 64);
  v19 = v15;
  result = PCMatrix44Tmpl<double>::transformRect<double>(a2, v18.f64, &v18);
  if (result)
  {
    v16 = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(vaddq_f64(v18, vdupq_n_s64(0x3EB0C6F7A0000000uLL)), vdupq_n_s64(0x3E7AD7F29ABCAF48uLL)))));
    v17 = vsub_s32(vmovn_s64(vcvtq_s64_f64(vrndpq_f64(vaddq_f64(vaddq_f64(v18, v19), vdupq_n_s64(0xBEB0C6F7A0000000))))), v16);
    *(a4 + 48) = v16;
    *(a4 + 56) = v17;
  }

  return result;
}

double OZFxFilter::getAgentROI@<D0>(__n128 *a1@<X1>, __n128 *a2@<X8>)
{
  if (LiAgent::haveROI(a1))
  {

    *&result = LiAgent::getROI(a2, a1).n128_u64[0];
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_260343AA0;
  }

  return result;
}

float64x2_t OZFxFilter::getAgentImageSpaceBounds@<Q0>(OZFxFilter *this@<X0>, __n128 *a2@<X1>, const OZRenderParams *a3@<X2>, uint64_t a4@<X8>)
{
  OZFxFilter::getAgentROI(a2, &v30);
  LiAgent::getDOD(&v26, a2);
  v10 = v30.n128_i32[2];
  v9 = v30.n128_i32[3];
  if (v30.n128_i32[2] >= 1 && v30.n128_u32[3] >= 1)
  {
    if (v29)
    {
      v24.i64[0] = v30.n128_i32[0];
      v24.i64[1] = v30.n128_i32[1];
      *a4 = vcvtq_f64_s64(v24);
      result.f64[0] = v10;
      *(a4 + 16) = v10;
      *(a4 + 24) = v9;
      return result;
    }

    goto LABEL_17;
  }

  if ((v29 & 1) == 0)
  {
LABEL_17:
    v25.i64[0] = v26;
    v25.i64[1] = SHIDWORD(v26);
    result = vcvtq_f64_s64(v25);
    v25.i64[0] = v27;
    v25.i64[1] = v28;
    *a4 = result;
    *(a4 + 16) = vcvtq_f64_s64(v25);
    return result;
  }

  v12 = (*(*this + 248))(this);
  if (!v12)
  {
    goto LABEL_11;
  }

  if (!v13)
  {
    goto LABEL_11;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a4 + 16) = _Q0;
  (*(*v13 + 1488))(v13, a4, a3);
  if (*(a4 + 16) < 0.0 || (result.f64[0] = *(a4 + 24), result.f64[0] < 0.0))
  {
LABEL_11:
    v19 = (*(*this + 296))(this);
    if (!v19 || (*a4 = 0, *(a4 + 8) = 0, v20 = *(v19 + 344), v21.i64[0] = v20, v21.i64[1] = SHIDWORD(v20), v22 = vcvtq_f64_s64(v21), *(a4 + 16) = v22, (v20 & 0x80000000) != 0) || v20 < 0)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      __asm { FMOV            V0.2D, #-1.0 }

      *(a4 + 16) = result;
    }

    else
    {
      __asm { FMOV            V1.2D, #0.5 }

      result = vsubq_f64(0, vaddq_f64(vmulq_f64(v22, _Q1), 0));
      *a4 = result;
    }
  }

  return result;
}

__n128 OZFxFilter::getBoundingRectangles@<Q0>(id *this@<X0>, __n128 *a2@<X1>, const OZRenderParams *a3@<X2>, CMTime *a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 16) = 0;
  v10 = (a5 + 16);
  *a5 = xmmword_260343AA0;
  *(a5 + 24) = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a5 + 32) = _Q1;
  *(a5 + 48) = xmmword_260343AA0;
  *(a5 + 64) = 0;
  *(a5 + 72) = 0;
  *(a5 + 80) = _Q1;
  v20 = *&a4->value;
  *&v21.f64[0] = a4->epoch;
  if (OZFxPlugSharedBase::isPixelIndependent(this + 46, &v20) && (this[73] & 1) == 0)
  {
    OZFxFilter::getAgentImageSpaceBounds(this, a2, a3, &v20);
    result.n128_u64[0] = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(v20, vdupq_n_s64(0x3E7AD7F29ABCAF48uLL)))));
    *&result.n128_i8[8] = vsub_s32(vmovn_s64(vcvtq_s64_f64(vrndpq_f64(vaddq_f64(v20, v21)))), result.n128_u64[0]);
    *a5 = result;
    v18.i64[0] = result.n128_i32[2];
    v18.i64[1] = result.n128_i32[3];
    v19 = vcvtq_f64_s64(v18);
    *(a5 + 16) = result.n128_i32[0];
    *(a5 + 24) = result.n128_i32[1];
    *(a5 + 32) = v19;
    *(a5 + 48) = result;
    *(a5 + 64) = result.n128_i32[0];
    *(a5 + 72) = result.n128_i32[1];
    *(a5 + 80) = v19;
  }

  else
  {
    LiAgent::getBoundary(a2, &v20);
    v16 = v21;
    *v10 = v20;
    v10[1] = v16;
    v20 = *&a4->value;
    *&v21.f64[0] = a4->epoch;
    if (OZFxPlugSharedBase::doesTransformFromLocalToScreenSpace(this + 46, &v20))
    {
      OZFxFilter::getSceneDimensionsBounds(this, a2, a5, a3);
    }

    else
    {
      OZFxFilter::getInputPixelBoundsFromImageBounds(this, a2, v10, a5);
      if (*(a5 + 32) < 1.0)
      {
        *(a5 + 32) = 0x3FF0000000000000;
      }

      if (*(a5 + 40) < 1.0)
      {
        *(a5 + 40) = 0x3FF0000000000000;
      }

      OZFxFilter::getOutputPixelBoundsFromImageBounds(this, a2[10].n128_u64[0], a3, a5);
    }
  }

  return result;
}

void sub_260208800(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  __cxa_begin_catch(a1);
  v12 = **(v10 + 48);
  if (v12)
  {
    (*(*v12 + 280))(&a9);
    v13 = a10;
    *v11 = a9;
    v11[1] = v13;
  }

  __cxa_end_catch();
  JUMPOUT(0x2602086D8);
}

uint64_t OZFxFilter::getInputPixelBoundsFromImageBounds(uint64_t a1, uint64_t a2, float64x2_t *a3, uint64_t a4)
{
  v14 = vdupq_n_s64(0x3E7AD7F29ABCAF48uLL);
  v6 = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(*a3, v14))));
  v7 = vsub_s32(vmovn_s64(vcvtq_s64_f64(vrndpq_f64(vaddq_f64(*a3, a3[1])))), v6);
  *a4 = v6;
  *(a4 + 8) = v7;
  v8.i64[0] = v6.i32[0];
  v8.i64[1] = v6.i32[1];
  v9 = vcvtq_f64_s64(v8);
  v8.i64[0] = v7.i32[0];
  v8.i64[1] = v7.i32[1];
  v18 = v9;
  v19 = vcvtq_f64_s64(v8);
  result = PCMatrix44Tmpl<double>::transformRect<double>(*(a2 + 160), v18.f64, &v18);
  if (result)
  {
    v11 = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(v18, v14))));
    v12 = vsub_s32(vmovn_s64(vcvtq_s64_f64(vrndpq_f64(vaddq_f64(v18, v19)))), v11);
    *a4 = v11;
    *(a4 + 8) = v12;
  }

  else
  {
    result = LiAgent::getDOD(&v16, a2);
    if (v17 == 1)
    {
      v13 = vuzp1q_s32(vcvtq_s64_f64(*(a4 + 16)), vcvtq_s64_f64(*(a4 + 32)));
    }

    else
    {
      result = LiAgent::getDOD(v15.i64, a2);
      v13 = v15;
    }

    *a4 = v13;
  }

  return result;
}

void sub_260208978(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v4 = __cxa_begin_catch(exception_object);
    OZFxFilter::fromDODXFormToSource(v4, v3, v2);
    __cxa_end_catch();
    JUMPOUT(0x260208964);
  }

  _Unwind_Resume(exception_object);
}

int32x2_t OZFxFilter::fromDODXFormToSource(int a1, LiAgent *this, uint64_t a3)
{
  LiAgent::getDOD(v12, this);
  *a3 = *v12;
  v5.i64[0] = *a3;
  v5.i64[1] = HIDWORD(*a3);
  *(a3 + 16) = vcvtq_f64_s64(v5);
  v6 = *(a3 + 8);
  v5.i64[0] = v6;
  v5.i64[1] = SHIDWORD(v6);
  *(a3 + 32) = vcvtq_f64_s64(v5);
  LiAgent::getInversePixelTransform(this, 0.0, v12);
  if (!PCMatrix44Tmpl<double>::transformRect<double>(v12, (a3 + 16), (a3 + 16)))
  {
    v8 = *(a3 + 8);
    v9.i64[0] = *a3;
    v9.i64[1] = HIDWORD(*a3);
    v10 = vcvtq_f64_s64(v9);
    v9.i64[0] = v8;
    v9.i64[1] = SHIDWORD(v8);
    v11 = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(v10, vdupq_n_s64(0x3E7AD7F29ABCAF48uLL)))));
    result = vsub_s32(vmovn_s64(vcvtq_s64_f64(vrndpq_f64(vaddq_f64(v10, vcvtq_f64_s64(v9))))), v11);
    *a3 = v11;
    *(a3 + 8) = result;
  }

  return result;
}

double OZFxFilter::getRenderScale@<D0>(OZFxFilter *this@<X0>, __n128 *a2@<X1>, const OZRenderParams *a3@<X2>, __n128 *a4@<X8>)
{
  *a4 = 0uLL;
  if (!OZFxFilter::isAnyKindOfText(this) && (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(*((*(*this + 256))(this) + 8) + 8), xmmword_26084F780)))) & 1) != 0 && (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(*((*(*this + 256))(this) + 8) + 8), xmmword_260853DB0)))) & 1) != 0 && !OZFxFilter::isGroup(this))
  {
    OZRenderParams::getResolution(&v9, a3);
  }

  else
  {
    v9 = 0uLL;
    v10 = 0;
    if (!OZFxPlug_GetScale(a2, &v9))
    {
      return result;
    }
  }

  result = v9.n128_f64[0];
  *a4 = v9;
  return result;
}

BOOL OZFxFilter::isAnyKindOfText(OZFxFilter *this)
{
  if (OZFxFilter::isText(this))
  {
    return 1;
  }

  v3 = (*(*this + 256))(this);

  return OZFxPlug_IsCloneTextSceneNode(v3);
}

const void *OZFxFilter::isGroup(OZFxFilter *this)
{
  result = (*(*this + 256))(this);
  if (result)
  {
  }

  return result;
}

uint64_t OZFxFilter::initialRescaleInput(OZFxFilter *this, __n128 *a2)
{
  v4 = (*(*this + 248))(this);
  if (OZFxPlug_IsEmitter(v4))
  {
    v5 = (*(*this + 248))(this);
    if ((OZFxPlug_EmitterThatNeedsResampling(v5) & 1) == 0)
    {
      v11 = 0.0;
      v12 = 0.0;
      v13 = 0;
      Scale = OZFxPlug_GetScale(a2, &v11);
      v8 = (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      if (!v8 || !Scale)
      {
        return 0;
      }

      v10[0] = 1.0 / fmax(v11, 2.22044605e-16);
      v10[1] = 1.0 / fmax(v12, 2.22044605e-16);
      OZFxFilter::rescaleInput(Scale, a2, v10);
    }
  }

  return 1;
}

uint64_t OZFxFilter::shouldAgentUseSourcePixelSpace(OZFxFilter *this, const LiAgent *a2)
{
  v3 = OZFxPlugSharedBase::pluginProperties((this + 368));
  if (!v3)
  {
    return *(a2 + 9) < 4 && *(a2 + 10) != 2;
  }

  v4 = [v3 objectForKey:@"UseSourcePixelSpace"];
  if (!v4)
  {
    return *(a2 + 9) < 4 && *(a2 + 10) != 2;
  }

  return [v4 BOOLValue];
}

uint64_t OZFxFilter::adjustAgent(OZFxFilter *this, LiAgent *a2, __int128 *a3)
{
  v14 = 0;
  v5 = a3[1];
  v11 = *a3;
  v12 = v5;
  v13 = a3[2];
  v6 = (this + 368);
  if ((*(*(this + 46) + 320))(this + 368) && (OZFxPlugSharedBase::restartPluginXPCIfNecessary(v6), v7 = *(this + 49), v10[0] = v11, v10[1] = v12, v10[2] = v13, [v7 getEdgeMode:&v14 withInfo:v10], v14 == 1))
  {
    *(a2 + 8) = 3;
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  if (OZFxFilter::shouldAgentUseSourcePixelSpace(this, a2))
  {
    v8 = 1;
    LiRenderingTechnology::setEnableMetalRendering(a2, 1);
  }

  return v8;
}

uint64_t OZFxFilter::doCenter(OZFxFilter *this, const LiAgent *a2, CMTime *a3)
{
  v7 = 13;
  v8 = 5;
  OZFxFilter::getDocumentVersionAndRevision(this, &v8, &v7);
  v5 = (*(*this + 256))(this);
  LODWORD(result) = OZFxPlug_IsSpecialLayer(v5, v8, v7);
  if (*(a2 + 9) < 3)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t OZFxFilter::render(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9)
{
  v12 = a3;
  v14 = a1 + 368;
  v21 = *a5;
  *&v22 = *(a5 + 2);
  if ((*(*(a1 + 368) + 232))(a1 + 368, &v21, a3, a4))
  {
    v15 = 1;
  }

  else
  {
    v15 = v12 == 0;
  }

  if (!v15)
  {
    PCPrint("File %s, line %d should not have been reached:\n\t", "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/Effects/FxFilter/OZFxFilter.mm", 2191);
    pcAbortImpl();
  }

  v16 = *(a1 + 392);
  v17 = *(a5 + 34);
  v18 = a9[1];
  v21 = *a9;
  v22 = v18;
  v23 = a9[2];
  v19 = OZFxPlug_CallRender(a1, v16, v17, a8, a7, &v21, a5);
  v21 = *a5;
  *&v22 = *(a5 + 2);
  (*(*(a1 + 368) + 472))(v14, &v21);
  return v19;
}

HGXForm *OZFxFilter::heliumMix@<X0>(OZFxFilter *this@<X0>, const LiAgent *a2@<X1>, float a3@<S0>, FxImage *a4@<X3>, FxImage *a5@<X4>, CMTime *a6@<X5>, int a7@<W2>, HGLegacyBlend **a8@<X8>)
{
  if (!a4)
  {
    v23 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_7:
    *a8 = 0;
    goto LABEL_8;
  }

  objc_msgSend_heliumRef(a4);
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_3:
  objc_msgSend_heliumRef(a5);
  if (!a7 || !*a8)
  {
LABEL_8:
    [(FxImage *)a5 width];
    [(FxImage *)a5 height];
    LiAgent::getActualColorSpace(a2);
    OZFxPlug_GenerateFailedRenderNode();
  }

  if (a3 < 1.0)
  {
    v15 = (this + 368);
    v22 = *a6;
    if (((*(*(this + 46) + 112))(this + 368, &v22) & 1) == 0)
    {
      v16 = HGObject::operator new(0x1C0uLL);
      HGLegacyBlend::HGLegacyBlend(v16);
      (*(*v16 + 120))(v16, 1, *a8);
      v17 = v23;
      if (v23)
      {
        (*(*v23 + 16))(v23);
      }

      v22 = *a6;
      if (OZFxPlugSharedBase::doesTransformFromLocalToScreenSpace(v15, &v22))
      {
        LiAgent::getObjectToFilmTransform(a2, &v22);
        LiAgent::makeHeliumXForm(a2, &v22.value, &v23, &v21);
        v18 = v21;
        if (v17 == v21)
        {
          if (v17)
          {
            (*(*v21 + 24))();
            v18 = v17;
          }

          else
          {
            v18 = 0;
          }
        }

        else if (v17)
        {
          (*(*v17 + 24))(v17);
          v18 = v21;
        }

        v17 = v18;
      }

      (*(*v16 + 120))(v16, 0, v17);
      (*(*v16 + 96))(v16, 0, 8.0, 0.0, 0.0, 0.0);
      (*(*v16 + 96))(v16, 1, a3, 0.0, 0.0, 0.0);
      v19 = *a8;
      if (*a8 != v16)
      {
        if (v19)
        {
          (*(*v19 + 24))(v19);
        }

        *a8 = v16;
        (*(*v16 + 16))(v16);
      }

      if (v17)
      {
        (*(*v17 + 24))(v17);
      }

      (*(*v16 + 24))(v16);
    }
  }

  result = v23;
  if (v23)
  {
    return (*(*v23 + 24))(v23);
  }

  return result;
}

void sub_260209504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  if (v12)
  {
    (*(*v12 + 24))(v12, a2, a3, a4, a5, a6, a7, a8);
  }

  (*(*v11 + 24))(v11, a2, a3, a4, a5, a6, a7, a8);
  if (*v10)
  {
    (*(**v10 + 24))(*v10);
  }

  v15 = *(v13 - 72);
  if (v15)
  {
    (*(*v15 + 24))(v15);
  }

  _Unwind_Resume(a1);
}

HGXForm *OZFxFilter::mix@<X0>(uint64_t a1@<X0>, const LiAgent *a2@<X1>, CMTime *a3@<X3>, void *a4@<X4>, int a5@<W7>, HGLegacyBlend **a6@<X8>, FxImage *a7, FxImage *a8)
{
  v17 = 0.0;
  v13 = a1 + 368;
  [*(a1 + 400) _getFloatValue:&v17 fromParm:10001 atTime:*a4];
  v16 = *a3;
  if (!(*(*(a1 + 368) + 232))(v13, &v16))
  {
    PCPrint("File %s, line %d should not have been reached:\n\t", "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/Effects/FxFilter/OZFxFilter.mm", 2347);
    pcAbortImpl();
  }

  v14 = v17;
  v16 = *a3;
  return OZFxFilter::heliumMix(a1, a2, v14, a7, a8, &v16, a5, a6);
}

HGXForm *OZFxFilter::getHelium@<X0>(id *a1@<X0>, uint64_t a2@<X1>, LiImageSource **a3@<X2>, uint64_t a4@<X3>, const OZRenderParams *a5@<X4>, HGNode **a6@<X8>)
{
  v153[0] = 0;
  v12 = a1 + 46;
  v13 = (*(a1[46] + 11))(a1 + 46);
  v151 = (a1 + 92);
  v152 = 0;
  if ((v13 & 1) == 0)
  {
    PCMutex::lock((a1 + 92));
    v152 = 1;
  }

  OZFxPlugRenderContextSentinel::OZFxPlugRenderContextSentinel(v150, v12, a5, 1);
  v14 = a1[50];
  [v14 setIsRendering:1];
  if (OZFxFilter::initialRescaleInput(a1, a2))
  {
    v149 = 0;
    v149 = [a1[50] figTimeToFxTime:a4 withConversionData:0];
    v15 = (*(*a1 + 31))(a1);
    v83 = v14;
    OZFxFilter::getRenderScale(a1, a2, a5, &v136);
    HeliumRenderer = LiAgent::getHeliumRenderer(a2);
    if ((*(*HeliumRenderer + 304))(HeliumRenderer))
    {
      v17 = 32;
    }

    else
    {
      v17 = 16;
    }

    OZFxPlugSharedBase::CalculateRenderInfo(v12, v15, &v149, &v136, v17, *(a5 + 123), &v146);
    v145 = 0x3FF0000000000000;
    v142 = 0x3FF0000000000000;
    v139 = 0x3FF0000000000000;
    v136 = 0x3FF0000000000000;
    v137 = 0u;
    v138 = 0u;
    v140 = 0u;
    v141 = 0u;
    v143 = 0u;
    v144 = 0u;
    v135 = 0x3FF0000000000000;
    v132 = 0x3FF0000000000000;
    v129 = 0x3FF0000000000000;
    v126 = 0x3FF0000000000000;
    v127 = 0u;
    v128 = 0u;
    v130 = 0u;
    v131 = 0u;
    v133 = 0u;
    v134 = 0u;
    if (*(a2 + 40) == 2)
    {
      v18 = **(a2 + 48);
      if (v18)
      {
        (*(*v18 + 176))(v125);
        PCMatrix44Tmpl<double>::rightMult(&v136, v125);
      }
    }

    else
    {
      (*(*v12 + 43))(v12, &v136);
    }

    OZFxFilter::adjustAgent(a1, a2, &v146);
    v125[0] = *a4;
    *&v125[1] = *(a4 + 16);
    if (OZFxPlugSharedBase::isPixelIndependent(v12, v125) && (LiAgent::haveROI(a2) & 1) == 0)
    {
      *&v20 = LiAgent::passROI(a2).n128_u64[0];
    }

    v124 = 0;
    ProGL::CurrentContextSentry::CurrentContextSentry(v125, [MEMORY[0x277CD9388] currentContext]);
    LiAgent::getHelium(v116, a2, *a3);
    v21 = *&v116[0];
    if (v124 == *&v116[0])
    {
      if (v124)
      {
        (*(**&v116[0] + 24))(*&v116[0]);
      }
    }

    else
    {
      if (v124)
      {
        (*(*v124 + 24))();
        v21 = *&v116[0];
      }

      v124 = v21;
    }

    ProGL::CurrentContextSentry::~CurrentContextSentry(v125);
    LiAgent::getDOD(v125, a2);
    if (LOBYTE(v125[1]) == 1 || *(v125 + 4) > 0 && *(&v125[0] + 1) > 0)
    {
      v125[0] = *a4;
      *&v125[1] = *(a4 + 16);
      BoundingRectangles = OZFxFilter::getBoundingRectangles(a1, a2, a5, v125, v120);
      if (DWORD2(v121) && HIDWORD(v121))
      {
        v125[0] = *a4;
        *&v125[1] = *(a4 + 16);
        if ((*(*v12 + 15))(v12, v125))
        {
          v116[0] = *a4;
          *&v116[1] = *(a4 + 16);
          v25.i64[0] = SLODWORD(v120[0].f64[0]);
          v25.i64[1] = SHIDWORD(v120[0].f64[0]);
          v26 = vcvtq_f64_s64(v25);
          v25.i64[0] = SLODWORD(v120[0].f64[1]);
          v25.i64[1] = SHIDWORD(v120[0].f64[1]);
          v125[0] = v26;
          v125[1] = vcvtq_f64_s64(v25);
          if (OZFxFilter::rescaleInput(a1, a2, v116, v23, v24, v125))
          {
            LiAgent::getHelium(v125, a2, *a3);
            v27 = *&v125[0];
            if (v124 == *&v125[0])
            {
              if (v124)
              {
                (*(**&v125[0] + 24))(*&v125[0]);
              }
            }

            else
            {
              if (v124)
              {
                (*(*v124 + 24))();
                v27 = *&v125[0];
              }

              v124 = v27;
            }

            v116[0] = *a4;
            *&v116[1] = *(a4 + 16);
            OZFxFilter::getBoundingRectangles(a1, a2, a5, v116, v125);
            v120[2] = v125[2];
            v121 = v125[3];
            v122 = v125[4];
            v123 = v125[5];
            v120[0] = v125[0];
            v120[1] = v125[1];
          }
        }

        if (*(a2 + 44) == 1)
        {
          OZFxPlug_GetScale(a2, &v147 + 1, &v148);
        }

        v82 = a6;
        LiAgent::getRenderDevice(a2);
        v119 = 0;
        memset(v118, 0, sizeof(v118));
        v29 = (*(*a1 + 31))(a1);
        v30 = LODWORD(v120[0].f64[1]);
        v31 = HIDWORD(v120[0].f64[1]);
        v32 = LiAgent::getHeliumRenderer(a2);
        if ((*(*v32 + 304))(v32))
        {
          v33 = 32;
        }

        else
        {
          v33 = 16;
        }

        v125[0] = *a4;
        *&v125[1] = *(a4 + 16);
        OZFxPlug_CalculateImageInfo(v118, v12, v29, v30, v31, v33, 1, v125);
        v36 = 0.0;
        v37 = 0.0;
        if (OZFxFilter::doCenter(a1, a2, v34))
        {
          v36 = -(LODWORD(v120[0].f64[0]) + SLODWORD(v120[0].f64[1]) / 2);
          v37 = -(HIDWORD(v120[0].f64[0]) + SHIDWORD(v120[0].f64[1]) / 2);
          v35.f64[0] = v36;
          v35 = PCMatrix44Tmpl<double>::leftTranslate(&v126, v35, v37, 0.0);
        }

        (*(*a1 + 106))(a1, a2, a3, a5, &v136, &v126, v35);
        PCMatrix44Tmpl<double>::operator*(&v126, *(a2 + 160), v116);
        PCMatrix44Tmpl<double>::operator*(v116, &v136, v125);
        v38 = FxMatrixFromPCMatrix(v125);
        OZFxPlugSharedBase::restartPluginXPCIfNecessary(v12);
        v115 = 0;
        v39 = a1[49];
        v116[0] = v146;
        v116[1] = v147;
        v117 = v148;
        OZFxPlug_CallFrameSetup(a1, v39, v116, v118, &v115 + 1, &v115);
        v116[0] = *a4;
        *&v116[1] = *(a4 + 16);
        LOBYTE(v97.value) = HIBYTE(v115);
        v87[0] = v115;
        OZFxPlugSharedBase::getBestRenderingBehavior(v12, a2, &v97, v87, v116);
        HIBYTE(v115) = v97.value;
        LOBYTE(v115) = v87[0];
        v116[0] = *a4;
        *&v116[1] = *(a4 + 16);
        if (OZFxPlugSharedBase::isPixelIndependent(v12, v116))
        {
          if (!*a3)
          {
            throw_PCNullPointerException(1);
          }

          v40 = (*(**a3 + 32))(*a3);
          (*(*v12 + 28))(v12, v40);
        }

        else
        {
          LOBYTE(v97.value) = 0;
          if ((*(*v12 + 41))(v12))
          {
            v41 = a1[49];
            v116[0] = v146;
            v116[1] = v147;
            v117 = v148;
            [v41 filteredEdges:&v97 withInfo:v116];
          }

          (*(*v12 + 28))(v12, LOBYTE(v97.value));
        }

        OZFxPlugSharedBase::getPluginColorDescription(&space, v12, a2);
        ActualColorDescription = LiAgent::getActualColorDescription(a2);
        v113._pcColorDesc._colorSpaceRef._obj = space._pcColorDesc._colorSpaceRef._obj;
        if (space._pcColorDesc._colorSpaceRef._obj)
        {
          PCCFRefTraits<CGColorSpace *>::retain(space._pcColorDesc._colorSpaceRef._obj);
        }

        *&v113._pcColorDesc._dynamicRange = *&space._pcColorDesc._dynamicRange;
        v113._pcColorDesc._toneMapMethod._gain = space._pcColorDesc._toneMapMethod._gain;
        v113._isPremultiplied = space._isPremultiplied;
        OZFxPlug_ConformToProcessingDescription(v116, &v113, &v124, ActualColorDescription);
        v43 = *&v116[0];
        if (v124 == *&v116[0])
        {
          if (v124)
          {
            (*(**&v116[0] + 24))(*&v116[0]);
          }
        }

        else
        {
          if (v124)
          {
            (*(*v124 + 24))();
            v43 = *&v116[0];
          }

          v124 = v43;
          *&v116[0] = 0;
        }

        PCCFRef<CGColorSpace *>::~PCCFRef(&v113._pcColorDesc._colorSpaceRef._obj);
        v44 = LiAgent::getHeliumRenderer(a2);
        if ((*(*v44 + 304))(v44))
        {
          v45 = 32;
        }

        else
        {
          v45 = 16;
        }

        v112 = v45;
        v111 = 0;
        v110 = 0;
        v109 = 0;
        v46 = LiAgent::getHeliumRenderer(a2);
        v47 = (*(*v46 + 304))(v46);
        v48 = HIBYTE(v115);
        v50 = OZFxFilter::doCenter(a1, a2, v49);
        if (v47)
        {
          v51 = 32;
        }

        else
        {
          v51 = 16;
        }

        *v116 = v36;
        *(v116 + 1) = v37;
        HIBYTE(v81) = v50;
        LOBYTE(v81) = v48;
        v52 = OZFxFilter::createInputFxImage(a1, a2, &v110, &v112, v118, &v146, &v124, &v109, v120, v51, v81, v116, a5);
        [(FxImage *)v52 setPixelTransform:v38];
        if (v52)
        {
          v53 = OZFxFilter::createOutputFxImage(a1, &v146, v107, a2, v120, v112, HIBYTE(v115), a5);
          [(FxImage *)v53 setPixelTransform:v38];
          ProGL::CurrentContextSentry::CurrentContextSentry(v106);
          v116[0] = *a4;
          *&v116[1] = *(a4 + 16);
          v54 = (*(*v12 + 29))(v12, v116);
          v58 = v83;
          if (!(v54 & 1 | ((v115 & 0x100) == 0)))
          {
            PCPrint("File %s, line %d should not have been reached:\n\t", "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/Effects/FxFilter/OZFxFilter.mm", 2725);
            pcAbortImpl();
          }

          v59 = OZFxFilter::render(a1, v55, HIBYTE(v115) & 1, v56, a5, v57, v52, v53, &v146);
          FxMatrixToPCMatrix(v116, [(FxImage *)v53 pixelTransform]);
          v60 = 0;
          v61 = 0;
          while (2)
          {
            v62 = 0;
            v63 = dword_260853DF0[v60];
            v64 = &v116[2 * v63];
            v65 = &v125[2 * v63];
            do
            {
              if (vabdd_f64(v64[dword_260853DF0[v62]], v65[dword_260853DF0[v62]]) >= 0.0000001)
              {
                if (!v61)
                {
                  v105 = 0x3FF0000000000000;
                  v102 = 0x3FF0000000000000;
                  v99 = 0x3FF0000000000000;
                  v96 = 0x3FF0000000000000;
                  v97.value = 0x3FF0000000000000;
                  *&v97.timescale = 0u;
                  v98 = 0u;
                  v100 = 0u;
                  v101 = 0u;
                  v103 = 0u;
                  v104 = 0u;
                  v93 = 0x3FF0000000000000;
                  v90 = 0x3FF0000000000000;
                  *v87 = 0x3FF0000000000000;
                  v88 = 0u;
                  v89 = 0u;
                  v91 = 0u;
                  v92 = 0u;
                  v94 = 0u;
                  v95 = 0u;
                  if (PCMatrix44Tmpl<double>::planarInverseZ(&v97, &v136, 0.0) && PCMatrix44Tmpl<double>::planarInverseZ(v87, &v126, 0.0))
                  {
                    PCMatrix44Tmpl<double>::operator*(v87, v116, v85);
                    PCMatrix44Tmpl<double>::operator*(v85, &v97.value, v86);
                    LiAgent::setPixelTransform(a2, v86);
                  }
                }

                goto LABEL_78;
              }

              ++v62;
            }

            while (v62 != 3);
            v61 = v60++ > 1;
            if (v60 != 3)
            {
              continue;
            }

            break;
          }

LABEL_78:
          v97 = *a4;
          if (((*(*v12 + 29))(v12, &v97) & 1) == 0 && (v115 & 0x100) != 0)
          {
            PCPrint("File %s, line %d should not have been reached:\n\t", "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/Effects/FxFilter/OZFxFilter.mm", 2770);
            pcAbortImpl();
          }

          v97 = *a4;
          OZFxFilter::mix(a1, a2, &v97, &v149, v59, v87, &v52->super, v53);
          v67 = *v87;
          if (v153[0] == *v87)
          {
            if (v153[0])
            {
              (*(**v87 + 24))(*v87);
            }
          }

          else
          {
            if (v153[0])
            {
              (*(*v153[0] + 24))(v153[0]);
              v67 = *v87;
            }

            v153[0] = v67;
          }

          if (OZFxFilter::doCenter(a1, a2, v66))
          {
            v72 = *(a5 + 123);
            *&v97.value = -v36;
            *&v97.timescale = -v37;
            OZFxFilter::offsetNode(v153, &v97.value, v72, v87);
            v73 = *v87;
            if (v153[0] == *v87)
            {
              if (v153[0])
              {
                (*(**v87 + 24))(*v87);
              }
            }

            else
            {
              if (v153[0])
              {
                (*(*v153[0] + 24))(v153[0]);
                v73 = *v87;
              }

              v153[0] = v73;
            }
          }

          v74 = LiAgent::getActualColorDescription(a2);
          v75 = *v74;
          v84._pcColorDesc._colorSpaceRef._obj = v75;
          if (v75)
          {
            PCCFRefTraits<CGColorSpace *>::retain(v75);
          }

          v76 = *(v74 + 8);
          v84._pcColorDesc._toneMapMethod._gain = *(v74 + 16);
          *&v84._pcColorDesc._dynamicRange = v76;
          v84._isPremultiplied = *(v74 + 24);
          OZFxPlug_ConformFromProcessingDescription(v153, &space, &v84, &v97.value);
          value = v97.value;
          if (v153[0] == v97.value)
          {
            if (v153[0])
            {
              (*(*v97.value + 24))(v97.value);
            }
          }

          else
          {
            if (v153[0])
            {
              (*(*v153[0] + 24))(v153[0]);
              value = v97.value;
            }

            v153[0] = value;
            v97.value = 0;
          }

          PCCFRef<CGColorSpace *>::~PCCFRef(&v84._pcColorDesc._colorSpaceRef._obj);
          [v83 clearImageList];
          [a1[51] clearImageList];
          if ([(FxHeliumImage *)v52 imageType]== 1 && ([(FxHeliumImage *)v52 _ownsData]& 1) == 0)
          {
            v78 = [(FxHeliumImage *)v52 dataPtr];
            if (v78)
            {
              MEMORY[0x2666E9F00](v78, 0x1000C4077774924);
            }
          }

          if ([(FxImage *)v53 imageType]== 1 && ([(FxImage *)v53 _ownsData]& 1) == 0)
          {
            v79 = [(FxImage *)v53 dataPtr];
            if (v79)
            {
              MEMORY[0x2666E9ED0](v79, 0x1000C8077774924);
            }
          }

          ProGL::CurrentContextSentry::~CurrentContextSentry(v106);
        }

        else
        {
          [a1[49] frameCleanup];
          v68 = v124;
          if (v153[0] != v124)
          {
            if (v153[0])
            {
              (*(*v153[0] + 24))(v153[0]);
              v68 = v124;
            }

            v153[0] = v68;
            if (v68)
            {
              (*(*v68 + 16))(v68);
            }
          }

          [v83 setIsRendering:0];
          v69 = LiAgent::getActualColorDescription(a2);
          v70 = *v69;
          v108._pcColorDesc._colorSpaceRef._obj = v70;
          if (v70)
          {
            PCCFRefTraits<CGColorSpace *>::retain(v70);
          }

          v71 = *(v69 + 8);
          v108._pcColorDesc._toneMapMethod._gain = *(v69 + 16);
          *&v108._pcColorDesc._dynamicRange = v71;
          v108._isPremultiplied = *(v69 + 24);
          OZFxPlug_ConformFromProcessingDescription(v153, &space, &v108, v82);
          PCCFRef<CGColorSpace *>::~PCCFRef(&v108._pcColorDesc._colorSpaceRef._obj);
          v58 = v83;
        }

        if (v109)
        {
          (*(*v109 + 24))(v109);
        }

        if (v111)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v111);
        }

        if (v52)
        {
          [a1[49] frameCleanup];
          [v58 setIsRendering:0];
          *v82 = v153[0];
          v153[0] = 0;
        }

        PCCFRef<CGColorSpace *>::~PCCFRef(&space._pcColorDesc._colorSpaceRef._obj);
      }

      else
      {
        *a6 = v124;
        v124 = 0;
      }
    }

    else
    {
      [v14 setIsRendering:0];
      v28 = HGObject::operator new(0x1A0uLL);
      HGNode::HGNode(v28);
      *a6 = v28;
    }

    if (v124)
    {
      (*(*v124 + 24))(v124, BoundingRectangles);
    }
  }

  else
  {
    [v14 setIsRendering:0];
    v19 = HGObject::operator new(0x1A0uLL);
    HGNode::HGNode(v19);
    *a6 = v19;
  }

  OZFxPlugRenderContextSentinel::~OZFxPlugRenderContextSentinel(v150);
  if (v151 && v152 == 1)
  {
    PCMutex::unlock(v151);
  }

  result = v153[0];
  if (v153[0])
  {
    return (*(*v153[0] + 24))(v153[0]);
  }

  return result;
}

void sub_26020A8E8(void *a1)
{
  ProGL::CurrentContextSentry::~CurrentContextSentry(&STACK[0x260]);
  if (STACK[0x2D8])
  {
    (*(*STACK[0x2D8] + 24))(STACK[0x2D8]);
  }

  if (STACK[0x2E8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x2E8]);
  }

  __cxa_begin_catch(a1);
  [*(v1 + 392) frameCleanup];
  __cxa_rethrow();
}

void sub_26020ABE4(_Unwind_Exception *a1)
{
  OZFxPlugRenderContextSentinel::~OZFxPlugRenderContextSentinel((v1 - 144));
  PCLockSentry<PCMutex>::~PCLockSentry(v1 - 136);
  v3 = *(v1 - 120);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  _Unwind_Resume(a1);
}

FxHeliumImage *OZFxFilter::createInputFxImage(uint64_t a1, const LiAgent *a2, uint64_t *a3, _DWORD *a4, uint64_t a5, void *a6, HGXForm **a7, HGXForm **a8, float64x2_t *a9, int a10, __int16 a11, double *a12, const OZRenderParams *a13)
{
  *a4 = a10;
  v28 = *a13;
  v29 = *(a13 + 2);
  v16 = a1 + 368;
  PluginColorSpace = OZFxPlugSharedBase::getPluginColorSpace((a1 + 368), a2);
  if (!(*(*(a1 + 368) + 232))(v16, &v28))
  {
    OZFxFilter::createRawInputFxImage(0, a2, a3, a4, a5, a6, a7, PluginColorSpace, a8, a9, a11, a12, a13);
  }

  HeliumInputFxImage = OZFxFilter::createHeliumInputFxImage(a1, a2, a5, a7, v18, a8, a9, a10, SHIBYTE(a11), a12, a13);
  if (HeliumInputFxImage)
  {
    if (objc_opt_respondsToSelector())
    {
      [(FxHeliumImage *)HeliumInputFxImage setIsInputImage:1];
    }

    OZFxFilter::setInputImageDOD(a1, v20, v21, a9, HeliumInputFxImage, a13);
    OZFxFilter::finalizeImage(a1, a2, &HeliumInputFxImage->super, a6, a13);
  }

  return HeliumInputFxImage;
}

FxImage *OZFxFilter::createOutputFxImage(id *a1, void *a2, __int128 *a3, LiRenderParameters **this, uint64_t a5, int a6, int a7, CMTime *a8)
{
  LiAgent::getRenderDevice(this);
  v16 = (*(*a1 + 31))(a1);
  v17 = *(a5 + 56);
  v18 = *(a5 + 60);
  v26 = *a8;
  OZFxPlug_CalculateImageInfo(&v27, a1 + 46, v16, v17, v18, a6, a7, &v26);
  v19 = v30;
  a3[2] = v29;
  a3[3] = v19;
  *(a3 + 8) = v31;
  v20 = v28;
  *a3 = v27;
  a3[1] = v20;
  if (*(a3 + 8) == 0.0)
  {
    *(a3 + 8) = 0x3FF0000000000000;
  }

  v27 = *&a8->value;
  *&v28 = a8->epoch;
  if ((*(a1[46] + 29))(a1 + 368, &v27))
  {
    v21 = [FxHeliumImage alloc];
    v22 = a3[3];
    v29 = a3[2];
    v30 = v22;
    v31 = *(a3 + 8);
    v23 = a3[1];
    v27 = *a3;
    v28 = v23;
    v24 = [(FxHeliumImage *)v21 initWithInfo:&v27];
  }

  else
  {
    v24 = 0;
  }

  [(FxImage *)v24 setBounds:*(a5 + 64) * *(a3 + 8), *(a5 + 72), *(a3 + 8) * *(a5 + 80), *(a5 + 88)];
  [(FxImage *)v24 setDod:(*(a5 + 56) / -2) | ((*(a5 + 60) / -2) << 32), (*(a5 + 56) - *(a5 + 56) / 2) | ((*(a5 + 60) - *(a5 + 60) / 2) << 32)];
  OZFxFilter::finalizeImage(a1, this, v24, a2, a8);
  return v24;
}

uint64_t OZFxFilter::createNewLithiumNode@<X0>(OZFxFilter *this@<X0>, CMTime *a2@<X1>, PCSharedCount *a3@<X8>)
{
  a3->var0 = 0;
  PCSharedCount::PCSharedCount(a3 + 1);
  v6 = *a2;
  result = (*(*this + 280))(this, &v6, 0, 1, 1);
  if (result)
  {
    v6 = *a2;
    result = OZFxFilter::needsToRender(this, &v6);
    if (result)
    {
      operator new();
    }
  }

  return result;
}

void sub_26020B0E0(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v2, 0x10E1C40E36231BCLL);
  PCSharedCount::~PCSharedCount(v1);
  _Unwind_Resume(a1);
}

FxImage *OZFxFilter::finalizeImage(OZFxFilter *this, const LiAgent *a2, FxImage *a3, void *a4, const OZRenderParams *a5)
{
  PluginNCLC = OZFxPlugSharedBase::getPluginNCLC(this + 46, a2);
  v22 = v9;
  *&v10 = FxConvertPCNCLCCodeToFxNCLCValue(&PluginNCLC);
  [(FxImage *)a3 setNCLCValue:v11, v10];
  [(FxImage *)a3 setColorSpace:OZFxPlugSharedBase::getPluginColorSpace(this + 46, a2)];
  OZFxPlugSharedBase::getPluginColorDescription(&v20, this + 46, a2);
  [(FxImage *)a3 setDynamicRangeType:OZFxPlug_ConvertDynamicRangeType(&v20)];
  OZFxPlugSharedBase::SetImageColorPrimaries((this + 368), a3, a2);
  OZFxFilter::getRenderScale(this, a2, a5, &v19);
  [(FxImage *)a3 setScaleX:v19.n128_f64[0]];
  [(FxImage *)a3 setScaleY:v19.n128_f64[1]];
  v12 = *(this + 3);
  if (v12)
  {
    if (v13)
    {
      v14 = v13;
      v15 = *(this + 50);
      v25 = 0uLL;
      v26 = 0;
      if (v15)
      {
        objc_msgSend_fxTimeToFigTime_withConversionData_(v15);
      }

      v23 = v25;
      v24 = v26;
      (*(*v14 + 2320))(v14, &v23, a5);
    }
  }

  [(FxImage *)a3 setFieldOrder:?];
  [(FxImage *)a3 setField:OZChannelBase::isObjectRef((this + 368))];
  [(FxImage *)a3 setPixelTransform:FxMatrixFromPCMatrix(*(a2 + 20))];
  v16 = *(a5 + 175);
  if (v16 == 2)
  {
    v17 = 2;
  }

  else
  {
    v17 = v16 == 1;
  }

  [(FxImage *)a3 setEyeType:v17];
  PCCFRef<CGColorSpace *>::~PCCFRef(&v20._pcColorDesc._colorSpaceRef._obj);
  return a3;
}

void sub_26020B324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

uint64_t OZFxFilter::setInputImageDOD(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4, void *a5, __int128 *a6)
{
  v9 = HGRectMake4i(*a4, a4[1], a4[2] + *a4, a4[3] + a4[1]);
  v11 = v10;
  if (HGRectIsInfinite(v9, v10))
  {
    v12 = (*(*a1 + 248))(a1);
    if (v12)
    {
      if (v13)
      {
        v25 = 0uLL;
        __asm { FMOV            V0.2D, #-1.0 }

        v26 = _Q0;
        (*(*v13 + 1488))(v13, &v25, a6);
        v9 = HGRectMake4i(vcvtmd_s64_f64(*&v25), vcvtmd_s64_f64(*(&v25 + 1)), vcvtpd_s64_f64(*&v25 + *&v26), vcvtpd_s64_f64(*(&v25 + 1) + *(&v26 + 1)));
        v11 = v19;
      }
    }
  }

  v25 = *a6;
  *&v26 = *(a6 + 2);
  v20 = (*(a1[46] + 232))(a1 + 46, &v25);
  if (v20)
  {
    v21 = v9;
  }

  else
  {
    v21 = 0;
  }

  if (v20)
  {
    v22 = v9 & 0xFFFFFFFF00000000;
  }

  else
  {
    v22 = 0;
  }

  if (v20)
  {
    v23 = v11;
  }

  else
  {
    v23 = (v11 - (v9 & 0xFFFFFFFF00000000)) & 0xFFFFFFFF00000000 | (v11 - v9);
  }

  return [a5 setDod:{v22 | v21, v23}];
}

void OZFxFilter::renderNode(int a1, LiRenderParameters **this, uint64_t *a3, CGColorSpace *a4, int *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, _DWORD *a10, _DWORD *a11)
{
  HeliumRenderer = LiAgent::getHeliumRenderer(this);
  v19 = this[6];
  if (a7)
  {
    *a10 = 2;
    PGHelium::renderNodeToTexture(HeliumRenderer, a3, a5, a6, a4, (v19 + 80));
  }

  *a10 = 1;
  *a11 = 32;
  *(a8 + 40) = 3;
  PGHelium::renderNodeToBitmap(HeliumRenderer, a3, a5, 16);
}

void sub_26020B6A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (*(&a9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&a9 + 1));
  }

  _Unwind_Resume(exception_object);
}

FxHeliumImage *OZFxFilter::createHeliumInputFxImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void *a6, uint64_t a7, int a8, char a9, double *a10, uint64_t a11)
{
  v15 = *(a3 + 64);
  v16 = vmax_s32(*(a7 + 8), 0x100000001);
  *&v17 = v16.u32[0];
  *(&v17 + 1) = v16.u32[1];
  v27 = v17;
  v28 = a8;
  v29 = xmmword_260853DD0;
  v30 = 0;
  v31 = 0;
  v32 = 1;
  v33 = v15;
  v18 = [[FxHeliumImage alloc] initWithInfo:&v27];
  [(FxImage *)v18 setPixelTransform:FxMatrixFromPCMatrix(*(a2 + 160))];
  v19 = *a4;
  *&v27 = v19;
  if (v19 && ((*(*v19 + 16))(v19), v27))
  {
    if (a9)
    {
      OZFxFilter::offsetNode(&v27, a10, *(a11 + 492), &v26);
      v20 = v26;
      if (v27 == v26)
      {
        if (v27)
        {
          (*(*v26 + 24))(v26);
        }
      }

      else
      {
        if (v27)
        {
          (*(*v27 + 24))();
          v20 = v26;
        }

        *&v27 = v20;
      }
    }

    v21 = *(a7 + 32);
    v22 = *(a7 + 40);
    if (v21 < 1.0)
    {
      v21 = 1.0;
    }

    if (v22 < 1.0)
    {
      v22 = 1.0;
    }

    [(FxImage *)v18 setBounds:v15 * *(a7 + 16), *(a7 + 24), v15 * v21, v22];
    v23 = *a6;
    v24 = v27;
    if (*a6 != v27)
    {
      if (v23)
      {
        (*(*v23 + 24))(*a6);
        v24 = v27;
      }

      *a6 = v24;
      if (v24)
      {
        (*(*v24 + 16))(v24);
      }
    }

    [(FxHeliumImage *)v18 setHeliumRef:&v27];
  }

  else
  {

    v18 = 0;
  }

  if (v27)
  {
    (*(*v27 + 24))(v27);
  }

  return v18;
}

void sub_26020B928(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    (*(*a10 + 24))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a11)
  {
    (*(*a11 + 24))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

HGXForm *OZFxFilter::offsetNode@<X0>(HGXForm **a1@<X1>, double *a2@<X3>, int a3@<W4>, HGXForm **a4@<X8>)
{
  if (*a1)
  {
    v4 = *a2;
    v5 = *(a2 + 1);
    v9[1] = 0.0;
    v9[2] = 0.0;
    v9[0] = 1.0;
    v9[3] = v4;
    v10 = xmmword_260342700;
    v11 = 0;
    v12 = v5;
    v13 = 0;
    v14 = 0;
    v15 = 0x3FF0000000000000;
    v16 = 0u;
    v17 = 0u;
    v18 = 0x3FF0000000000000;
    if (a3)
    {
      v6 = 0.70711;
    }

    else
    {
      v6 = 1.0;
    }

    v8[0] = 1.0;
    v8[1] = v6;
    return LiHelium::createTransformNode(v9, a1, 1, v8, a4);
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void OZFxFilter::createRawInputFxImage(int a1, LiRenderParameters **this, uint64_t *a3, _DWORD *a4, uint64_t a5, uint64_t a6, HGXForm **a7, CGColorSpace *a8, HGXForm **a9, float64x2_t *a10, __int16 a11, double *a12, uint64_t a13)
{
  v18 = *a7;
  v22 = v18;
  if (v18)
  {
    (*(*v18 + 16))(v18, this, a3, a4, a5);
  }

  v21 = *a10;
  if (HIBYTE(a11))
  {
    OZFxFilter::offsetNode(&v22, a12, *(a13 + 492), &v20);
    v18 = v20;
    if (v22 == v20)
    {
      if (v22)
      {
        (*(*v20 + 24))(v20);
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      if (v22)
      {
        (*(*v22 + 24))();
        v18 = v20;
      }

      v22 = v18;
    }

    LODWORD(v21.f64[0]) = SLODWORD(v21.f64[1]) / -2;
    HIDWORD(v21.f64[0]) = SHIDWORD(v21.f64[1]) / -2;
  }

  v19 = *a9;
  if (*a9 != v18)
  {
    if (v19)
    {
      LODWORD(v19) = (*(*v19 + 24))(v19, this, a3, a4, a5);
      v18 = v22;
    }

    *a9 = v18;
    if (v18)
    {
      LODWORD(v19) = (*(*v18 + 16))(v18, this, a3, a4, a5);
    }
  }

  LODWORD(v20) = 0;
  OZFxFilter::renderNode(v19, this, &v22, a8, &v21, 13, a11, a6, a3, &v20, a4);
}

void sub_26020BCC0(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a18)
  {
    (*(*a18 + 24))(a18, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a22)
  {
    (*(*a22 + 24))(a22, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void OZFxFilter::makeRenderTemporalSource(id *this@<X0>, OZRenderParams *a2@<X1>, const OZRenderGraphState *a3@<X2>, uint64_t a4@<X3>, PCSharedCount *a5@<X8>)
{
  if ([this[50] isRendering])
  {

    OZImageNode::makeRenderTemporalSource(this, a5);
  }

  else
  {
    OZRenderParams::OZRenderParams(v10, a2);
    (*(*this + 21))(this, v10, a3, a4);
    OZRenderParams::~OZRenderParams(v10);
  }
}

void OZFxFilter::makeRenderImageSource(OZFxFilter *this, OZRenderParams *a2, uint64_t x2_0)
{
  v4 = *a2;
  v5 = *(a2 + 2);
  if ((*(*(this + 46) + 232))(this + 368, &v4, x2_0))
  {
    operator new();
  }

  operator new();
}

void OZFxFilter::getBlendOptions(id *this@<X0>, const OZRenderParams *a2@<X1>, PCSharedCount *a3@<X8>)
{
  a3->var0 = 0;
  v6 = &a3[1];
  PCSharedCount::PCSharedCount(a3 + 1);
  if ((*(this[46] + 39))(this + 46))
  {
    v12 = *a2;
    v13 = *(a2 + 2);
    v7 = [this[50] figTimeToFxTime:&v12 withConversionData:0];
    v11 = 0.0;
    v8 = this[49];
    [this[50] _getFloatValue:&v11 fromParm:*(this + 204) atTime:v7];
    if (v11 > 0.0)
    {
      OZFxPlugSharedBase::restartPluginXPCIfNecessary((this + 46));
      OZFxPlug_GetBlendOptions(v8, v7, &v9);
      a3->var0 = v9.var0;
      PCSharedCount::PCSharedCount(&v14, &v10);
      PCSharedCount::operator=(v6, &v14);
      PCSharedCount::~PCSharedCount(&v14);
      PCSharedCount::~PCSharedCount(&v10);
    }
  }
}

void sub_26020C11C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, PCSharedCount a16)
{
  PCSharedCount::~PCSharedCount(&a16);
  PCSharedCount::~PCSharedCount(v17 + 1);
  PCSharedCount::~PCSharedCount(v16);
  _Unwind_Resume(a1);
}

uint64_t non-virtual thunk toOZFxFilter::getSceneNode(OZFxFilter *this)
{
  return OZEffect::getSceneNode((this - 48));
}

{
  return OZEffect::getSceneNode((this - 368));
}

uint64_t std::__tree<std::__value_type<unsigned int,OZChannelBase *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OZChannelBase *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OZChannelBase *>>>::__erase_unique<unsigned int>(uint64_t **a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 1;
  do
  {
    v5 = *(v2 + 8);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == a1 + 1 || v3 < *(v4 + 8))
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

void *std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,BOOL>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,BOOL>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,BOOL>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,BOOL>>>::find<_opaque_pthread_t *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == *a2)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

void non-virtual thunk toOZGradientGenerator::~OZGradientGenerator(OZGradientGenerator *this)
{
  OZFxGenerator::~OZFxGenerator((this - 16));
}

{
  OZFxGenerator::~OZFxGenerator((this - 48));
}

{
  OZFxGenerator::~OZFxGenerator((this - 6528));
}

{
  OZFxGenerator::~OZFxGenerator((this - 19384));
}

{
  OZFxGenerator::~OZFxGenerator((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZFxGenerator::~OZFxGenerator((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZFxGenerator::~OZFxGenerator((this - 6528));

  JUMPOUT(0x2666E9F00);
}

{
  OZFxGenerator::~OZFxGenerator((this - 19384));

  JUMPOUT(0x2666E9F00);
}

void OZGradientGenerator::~OZGradientGenerator(OZGradientGenerator *this)
{
  OZFxGenerator::~OZFxGenerator(this);

  JUMPOUT(0x2666E9F00);
}

void sub_26020D390(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  if (*v10)
  {
    (*(**v10 + 24))(*v10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void PCUUIDFromNSUUID(NSUUID *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [(NSString *)[(NSUUID *)a1 UUIDString] componentsSeparatedByString:@"-"];
    __src = 0;
    v23 = 0;
    v24 = 0;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = [(NSArray *)v2 countByEnumeratingWithState:&v18 objects:v25 count:16];
    v4 = *v19;
    do
    {
      v5 = 0;
      do
      {
        if (*v19 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v18 + 1) + 8 * v5) integerValue];
        v7 = v23;
        if (v23 >= v24)
        {
          v9 = __src;
          v10 = v23 - __src;
          v11 = (v23 - __src) >> 2;
          v12 = v11 + 1;
          if ((v11 + 1) >> 62)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          v13 = v24 - __src;
          if ((v24 - __src) >> 1 > v12)
          {
            v12 = v13 >> 1;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v14 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v12;
          }

          if (v14)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__src, v14);
          }

          *(4 * v11) = v6;
          v8 = 4 * v11 + 4;
          memcpy(0, v9, v10);
          v15 = __src;
          __src = 0;
          v23 = v8;
          v24 = 0;
          if (v15)
          {
            operator delete(v15);
          }
        }

        else
        {
          *v23 = v6;
          v8 = (v7 + 4);
        }

        v23 = v8;
        ++v5;
      }

      while (v3 != v5);
      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v3);
    v16 = __src;
    *a2 = *__src;
    v23 = v16;
    operator delete(v16);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }
}

void sub_26020D624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MakeRenderCamera(OZScene *a1)
{
  v4 = a1;
  LODWORD(v3) = 0;
  PCMakePtr<OZSceneCamera,OZScene *,OZViewCameraType>();
}

uint64_t OZXEnableObject(void *a1, uint64_t a2, int a3)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v3 = *(*a1 + 24);
  if (!v3)
  {
    return 7;
  }

  Object = OZScene::getObject(v3, a2);
  if (!Object)
  {
    return 11;
  }

  v6 = *Object;
  if (a3)
  {
    v7 = (v6 + 32);
  }

  else
  {
    v7 = (v6 + 40);
  }

  (*v7)();
  return 0;
}

uint64_t OZXHitCheck(void *a1, CGPoint a2, const CMTime *a3, unsigned int *a4)
{
  *a4 = 0;
  if (a1)
  {
    if (*a1)
    {
      v4 = *(*a1 + 24);
      if (v4)
      {
        v7 = *a3;
        OZRenderState::OZRenderState(&v6);
        v6.var0 = v7;
        v6.var20 = 0;
        v6.var25 = 0;
        v6.var8 = 0;
        MakeRenderCamera(v4);
      }
    }
  }

  return 7;
}

void sub_26020DBE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, PCSharedCount a50)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&a32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&a41);
  PCSharedCount::~PCSharedCount(&a50);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x26020DBA8);
}

uint64_t OZXSetMatteInputMode(void *a1, NSNumber *a2)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v2 = *(*a1 + 24);
  if (!v2)
  {
    return 7;
  }

  if (a2)
  {
    *(v2 + 144) = [(NSNumber *)a2 integerValue];
  }

  else
  {
    *(v2 + 144) = 0;
  }

  return 11;
}

void sub_26020DCC0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x26020DCACLL);
}

uint64_t OZXForceSetPlaneAnchorUUID(void *a1, NSString *a2, NSUUID *a3)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v3 = *(*a1 + 24);
  if (!v3)
  {
    return 7;
  }

  OZScene::begin_t<OZARPlaneAnchorElement,false,true>(*(*a1 + 24), v17);
  v6 = *(v3 + 1208);
  memset(v15, 0, sizeof(v15));
  v16 = 1065353216;
  v11 = v3 + 1200;
  v12 = v6;
  v13 = v3 + 1200;
  v14 = 0;
  while (v17[0] != v11)
  {
    Name = OZObjectManipulator::getName((v7 + 16));
    if ([(__CFString *)PCString::ns_str(Name) isEqualToString:a2])
    {
      PCUUIDFromNSUUID(a3, &v10);
      *(v7 + 24408) = v10;
      break;
    }

    OZObject::iterator_t<OZARPlaneAnchorElement,false,true,OZObject::defaultValidator>::operator++(v17);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v15);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v18);
  return 11;
}

void sub_26020DE18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v23 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x26020DDF8);
}

uint64_t *OZScene::begin_t<OZARPlaneAnchorElement,false,true>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[151];
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v3;
  *(a2 + 8) = v3;
  *(a2 + 16) = result + 150;
  *(a2 + 24) = 0;
  if (v3 != result + 150)
  {
    v4 = v3[2];
    if (!v4)
    {
      return OZObject::iterator_t<OZARPlaneAnchorElement,false,true,OZObject::defaultValidator>::operator++(a2);
    }

    if (!result)
    {
      return OZObject::iterator_t<OZARPlaneAnchorElement,false,true,OZObject::defaultValidator>::operator++(a2);
    }
  }

  return result;
}

uint64_t *OZObject::iterator_t<OZARPlaneAnchorElement,false,true,OZObject::defaultValidator>::operator++(uint64_t *a1)
{
  OZObject::iterator_t<OZARFaceAnchorElement,false,true,OZObject::defaultValidator>::increment(a1);
  for (i = *a1; *a1 != a1[2]; i = *a1)
  {
    v3 = *(i + 16);
    {
      break;
    }

    OZObject::iterator_t<OZARFaceAnchorElement,false,true,OZObject::defaultValidator>::increment(a1);
  }

  return a1;
}

uint64_t OZXClearARAnchors(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 7;
  }

  if (!*a1)
  {
    return 7;
  }

  v2 = *(*a1 + 24);
  if (!v2)
  {
    return 7;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [a2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = *v16;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(a2);
        }

        PCUUIDFromNSUUID([*(*(&v15 + 1) + 8 * i) identifier], &v14);
        OZScene::begin_t<OZARAnchorElement,false,true>(v2, v12);
        memset(v10, 0, sizeof(v10));
        v11 = 1065353216;
        v9 = v14;
        while (v12[0] != v2 + 150)
        {
          if (v12[0] == v12[2])
          {
            v6 = 0;
          }

          else
          {
            v6 = *(v12[0] + 16);
            if (v6)
            {
            }
          }

          if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(v6 + 24408), v9)))) & 1) == 0)
          {
            *(v6 + 3051) = 0;
            *(v6 + 3052) = 0;
            (*(*(*(v6 + 120) + 16) + 40))();
          }

          OZObject::iterator_t<OZARAnchorElement,false,true,OZObject::defaultValidator>::operator++(v12);
        }

        std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v10);
        std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v13);
      }

      v3 = [a2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }

  return 11;
}

void sub_26020E1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x26020E1B4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *OZScene::begin_t<OZARAnchorElement,false,true>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[151];
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v3;
  *(a2 + 8) = v3;
  *(a2 + 16) = result + 150;
  *(a2 + 24) = 0;
  if (v3 != result + 150)
  {
    v4 = v3[2];
    if (!v4)
    {
      return OZObject::iterator_t<OZARAnchorElement,false,true,OZObject::defaultValidator>::operator++(a2);
    }

    if (!result)
    {
      return OZObject::iterator_t<OZARAnchorElement,false,true,OZObject::defaultValidator>::operator++(a2);
    }
  }

  return result;
}

uint64_t *OZObject::iterator_t<OZARAnchorElement,false,true,OZObject::defaultValidator>::operator++(uint64_t *a1)
{
  OZObject::iterator_t<OZARFaceAnchorElement,false,true,OZObject::defaultValidator>::increment(a1);
  for (i = *a1; *a1 != a1[2]; i = *a1)
  {
    v3 = *(i + 16);
    {
      break;
    }

    OZObject::iterator_t<OZARFaceAnchorElement,false,true,OZObject::defaultValidator>::increment(a1);
  }

  return a1;
}

uint64_t OZXApplyARFrame(uint64_t *a1, ARFrame *a2, double a3, double a4, const OZARFrameInfo *a5)
{
  v69 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 7;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 7;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    return 7;
  }

  OZScene::setApplyMotionEffectScaleTo3DObjectRenders(*(v5 + 24), 1);
  v11 = [(ARFrame *)a2 camera];
  v12 = v11;
  if (v11)
  {
    v13 = *(a5 + 30) - 1;
    if (v13 > 2)
    {
      v14 = 282.743339;
    }

    else
    {
      v14 = dbl_260853E48[v13];
    }

    [(ARCamera *)v11 intrinsics];
    v16 = 0;
    v17 = v14 / 180.0;
    v18 = v17;
    v68[0] = v19;
    v68[1] = v20;
    v68[2] = v21;
    v22 = v66;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        *&v22[8 * i] = *(&v68[i] & 0xFFFFFFFFFFFFFFF3 | (4 * (v16 & 3)));
      }

      ++v16;
      v22 += 24;
    }

    while (v16 != 3);
    v24 = *(v6 + 86);
    v25 = *(v6 + 87);
    [(ARCamera *)v12 imageResolution];
    v65 = 0x3FF0000000000000;
    v62 = 0x3FF0000000000000;
    v59 = 0x3FF0000000000000;
    v56 = 0x3FF0000000000000;
    v57 = 0u;
    v58 = 0u;
    v60 = 0u;
    v61 = 0u;
    v63 = 0u;
    v64 = 0u;
    PCMatrix44Tmpl<double>::setPerspectiveForRotatedViewportWithIntrinsics(&v56, v66, *&v18, v24, v25, v26, v27, a3, a4);
    v55 = 0x3FF0000000000000;
    v52 = 0x3FF0000000000000;
    v49 = 0x3FF0000000000000;
    v46 = 0x3FF0000000000000;
    v47 = 0u;
    v48 = 0u;
    v50 = 0u;
    v51 = 0u;
    v53 = 0u;
    v54 = 0u;
    PCMatrix44Tmpl<double>::leftRotate(&v46, 2, v18);
    objc_msgSend_transform(v12);
    v28 = 0;
    v67[0] = v29;
    v67[1] = v30;
    v31 = v68;
    v67[2] = v32;
    v67[3] = v33;
    while (1)
    {
      for (j = 0; j != 4; ++j)
      {
        v31[j] = *(&v67[j] & 0xFFFFFFFFFFFFFFF3 | (4 * (v28 & 3)));
      }

      ++v28;
      v31 += 4;
      if (v28 == 4)
      {
        PCMatrix44Tmpl<double>::leftMult(&v46, v68);
        *v35.i64 = PCMatrix44Tmpl<double>::toSimdFloat(&v56);
        v45.columns[0] = v35;
        v45.columns[1] = v36;
        v45.columns[2] = v37;
        v45.columns[3] = v38;
        *v39.i64 = PCMatrix44Tmpl<double>::toSimdFloat(&v46);
        v44.columns[0] = v39;
        v44.columns[1] = v40;
        v44.columns[2] = v41;
        v44.columns[3] = v42;
        v43 = 1.0;
        setUpCamera(v6, &v45, &v44, (a5 + 32), a3, a4, &v43);
      }
    }
  }

  return 1;
}

void PCMatrix44Tmpl<double>::setPerspectiveForRotatedViewportWithIntrinsics(uint64_t a1, uint64_t a2, __n128 a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v14 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v14;
  v15 = *(a2 + 48);
  v16[2] = *(a2 + 32);
  v16[3] = v15;
  v17 = *(a2 + 64);
  PCMatrix33Tmpl<double>::adjustIntrinsicsForOrientationAndViewport(v16, a3, a4, a5, a6, a7);
  PCMatrix44Tmpl<double>::setPerspectiveForViewportWithIntrinsics(a1, v16, a4, a5, a8, a9);
}

void setUpCamera(OZScene *a1, const simd_float4x4 *a2, const simd_float4x4 *a3, const simd_float4x4 *a4, double a5, double a6, double *a7)
{
  v11 = MEMORY[0x277CC08F0];
  ActiveCamera = OZScene::getActiveCamera(a1, MEMORY[0x277CC08F0]);
  Node = OZScene::getNode(a1, ActiveCamera);
  {
    PCString::PCString(v18, "Motion Camera");
    OZChannelBase::getNextUniqueID(v15);
    *&v19.value = xmmword_26084FA40;
    SceneNode = OZApplication::createSceneNode(theApp, &v19);
    PCString::~PCString(v18);
    (*(*SceneNode + 1136))(SceneNode, a1 + 1352, 0);
    OZScene::addRootNode(a1, SceneNode);
  }

  (*(*(SceneNode + 819) + 712))(SceneNode + 819, v11, 0, 0.0);
  (*(*(SceneNode + 870) + 712))(SceneNode + 870, v11, 0, a5);
  (*(*(SceneNode + 889) + 712))(SceneNode + 889, v11, 0, a6);
  (*(*(SceneNode + 169) + 96))(SceneNode + 169, 0, 1);
  (*(*(SceneNode + 188) + 96))(SceneNode + 188, 0, 1);
  (*(*(SceneNode + 244) + 96))(SceneNode + 244, 0, 1);
  (*(*(SceneNode + 280) + 96))(SceneNode + 280, 0, 1);
  (*(*(SceneNode + 299) + 96))(SceneNode + 299, 0, 1);
  (*(*(SceneNode + 318) + 96))(SceneNode + 318, 0, 1);
  v16 = atan(1.0 / a2->columns[0].f32[0]);
  v17.n128_f64[0] = (v16 + v16) * 180.0 / 3.14159265;
  (*(*(SceneNode + 851) + 712))(SceneNode + 851, v11, 0, v17);
  v19 = *v11;
  OZCamera::cameraAtTime();
}

uint64_t *SetUpEnvironmentMeshNode(uint64_t *result, SCNNode *a2, float a3)
{
  if (a2)
  {
    v5 = result;
    OZScene::begin_t<OZEnvironmentMeshSceneElement,false,true>(result, v9);
    memset(v7, 0, sizeof(v7));
    v8 = 1065353216;
    while (v9[0] != v5 + 150)
    {
      if (v9[0] == v9[2])
      {
        v6 = 0;
      }

      else
      {
        v6 = *(v9[0] + 16);
        if (v6)
        {
        }
      }

      OZEnvironmentMeshSceneElement::setMeshNode(v6, a2, a3);
      OZObject::iterator_t<OZEnvironmentMeshSceneElement,false,true,OZObject::defaultValidator>::operator++(v9);
    }

    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v7);
    return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v10);
  }

  return result;
}

void sub_260210200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v21 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t OZXApplyARFrameInfo(uint64_t *a1, const simd_float4x4 *a2, const simd_float4x4 *a3, double a4, double a5, const OZARFrameInfo *a6)
{
  v14[96] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v6 = *a1;
    if (*a1)
    {
      v7 = *(v6 + 24);
      if (v7)
      {
        OZScene::setApplyMotionEffectScaleTo3DObjectRenders(*(v6 + 24), 1);
        v14[0] = 1.0;
        setUpCamera(v7, a2, a3, (a6 + 32), a4, a5, v14);
      }
    }
  }

  return 7;
}

void sub_260210860(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&a65);
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&STACK[0x210]);
    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&STACK[0x238], STACK[0x240]);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x260210818);
  }

  _Unwind_Resume(a1);
}

uint64_t OZXSetSceneSettings(OZScene *a1, NSDictionary *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  result = 11;
  v31 = 11;
  if (a1)
  {
    v5 = *(*(a1 + 198) + 168);
    if (v5)
    {
      OZNotificationManager::processNotifications(v5);
    }

    v6 = *(a1 + 108);
    if (v6)
    {
      v7 = *v6;
      if (*v6 != *(v6 + 8))
      {
        v24 = *(a1 + 108);
        do
        {
          v8 = *v7;
          if (*v7)
          {
          }

          else
          {
            v9 = 0;
          }

          v25 = v7;
          v10 = OZChannelBase::testFlag(v8, 2);
          if (v9)
          {
            v11 = v10;
          }

          else
          {
            v11 = 1;
          }

          if ((v11 & 1) == 0)
          {
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            v12 = [(NSDictionary *)a2 countByEnumeratingWithState:&v27 objects:v32 count:16];
            if (v12)
            {
              v13 = *v28;
              do
              {
                v14 = 0;
                do
                {
                  if (*v28 != v13)
                  {
                    objc_enumerationMutation(a2);
                  }

                  v15 = *(*(&v27 + 1) + 8 * v14);
                  v26.var0 = 0;
                  PCString::set(&v26, v15);
                  if (!PCString::compare(&v9->var4, &v26))
                  {
                    TargetChannelForProxy = OZPublishSettings::getTargetChannelForProxy((a1 + 720), v9);
                    v17 = TargetChannelForProxy;
                    if (TargetChannelForProxy)
                    {
                      if (TargetChannelForProxy != v8)
                      {
                        OZXSetValueForChannel(TargetChannelForProxy, v15, a2, &v31);
                        ObjectManipulator = OZChannelBase::getObjectManipulator(v17);
                        if (ObjectManipulator)
                        {
                          if (v19)
                          {
                            v20 = v19;
                            if (*(v19 + 136) == v17)
                            {
                              CurrentSnapshot = OZRigWidget::getCurrentSnapshot(v19);
                              if (CurrentSnapshot)
                              {
                                OZRigWidget::setActiveSnapshot(v20, *(CurrentSnapshot + 32), 1);
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  PCString::~PCString(&v26);
                  ++v14;
                }

                while (v12 != v14);
                v22 = [(NSDictionary *)a2 countByEnumeratingWithState:&v27 objects:v32 count:16];
                v12 = v22;
              }

              while (v22);
            }
          }

          v7 = v25 + 1;
        }

        while (v25 + 1 != *(v24 + 8));
      }

      OZDocument::postNotification(*(a1 + 198), 12);
      v23 = *(*(a1 + 198) + 168);
      if (v23)
      {
        OZNotificationManager::processNotifications(v23);
      }

      OZScene::dirty(a1);
    }

    return v31;
  }

  return result;
}

void sub_260210BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, PCString a12)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x260210B94);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZXSetEnvironmentMap(void *a1, CGImage *a2)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v2 = *(*a1 + 24);
  if (!v2)
  {
    return 7;
  }

  OZScene::setCustomEnvironmentMap(v2, a2);
  return 11;
}

void sub_260210C6C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x260210C4CLL);
}

uint64_t OZXResetScene(void *a1)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v1 = *(*a1 + 24);
  if (!v1)
  {
    return 7;
  }

  OZScene::begin_t<OZ3DEngineSceneElement,false,true>(*(*a1 + 24), v15);
  v2 = *(v1 + 1208);
  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  v9 = v1 + 1200;
  v10 = v2;
  v11 = v1 + 1200;
  v12 = 0;
  for (i = v15[0]; v15[0] != v9; i = v15[0])
  {
    if (i != v15[2])
    {
      v4 = *(i + 16);
      if (v4)
      {
        if (v5)
        {
          OZ3DEngineSceneElement::resetLastActiveState(v5);
        }
      }
    }

    OZObject::iterator_t<OZ3DEngineSceneElement,false,true,OZObject::defaultValidator>::operator++(v15, v7);
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v8);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v13);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v16);
  return 11;
}

void sub_260210DBC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x260210D8CLL);
}

uint64_t *OZScene::begin_t<OZARFaceAnchorElement,false,true>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[151];
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v3;
  *(a2 + 8) = v3;
  *(a2 + 16) = result + 150;
  *(a2 + 24) = 0;
  if (v3 != result + 150)
  {
    v4 = v3[2];
    if (!v4)
    {
      return OZObject::iterator_t<OZARFaceAnchorElement,false,true,OZObject::defaultValidator>::operator++(a2);
    }

    if (!result)
    {
      return OZObject::iterator_t<OZARFaceAnchorElement,false,true,OZObject::defaultValidator>::operator++(a2);
    }
  }

  return result;
}

uint64_t *OZObject::iterator_t<OZARFaceAnchorElement,false,true,OZObject::defaultValidator>::operator++(uint64_t *a1)
{
  OZObject::iterator_t<OZARFaceAnchorElement,false,true,OZObject::defaultValidator>::increment(a1);
  for (i = *a1; *a1 != a1[2]; i = *a1)
  {
    v3 = *(i + 16);
    {
      break;
    }

    OZObject::iterator_t<OZARFaceAnchorElement,false,true,OZObject::defaultValidator>::increment(a1);
  }

  return a1;
}

void *OZObject::iterator_t<OZARFaceAnchorElement,false,true,OZObject::defaultValidator>::increment(void *result)
{
  v1 = result;
  v2 = result + 2;
  v3 = *result;
  if (*result == result[2])
  {
    goto LABEL_14;
  }

  v4 = *(v3 + 16);
  if ((*(*v4 + 1056))(v4))
  {
    v5 = *v1;
    v13 = v4;
    v14 = &v13;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__emplace_unique_key_args<OZSceneNode *,std::piecewise_construct_t const&,std::tuple<OZSceneNode * const&>,std::tuple<>>(v1 + 8, &v13, &std::piecewise_construct, &v14)[3] = v5;
    result = (*(*v4 + 1104))(v4);
    *v1 = result;
    *(v1 + 24) = 1;
    return result;
  }

  if ((*(*v4 + 960))(v4))
  {
    v6 = *v1;
    v13 = v4;
    v14 = &v13;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__emplace_unique_key_args<OZSceneNode *,std::piecewise_construct_t const&,std::tuple<OZSceneNode * const&>,std::tuple<>>(v1 + 8, &v13, &std::piecewise_construct, &v14)[3] = v6;
    result = (*(*v4 + 1024))(v4);
    *v1 = result;
    return result;
  }

  v7 = *(*v1 + 8);
  result = v4[120];
  if (!result || v7 == *v2)
  {
    *v1 = v7;
    return result;
  }

  v8 = *result;
  if (*(v1 + 24) == 1)
  {
    result = (*(v8 + 1112))();
  }

  else
  {
    result = (*(v8 + 1032))();
  }

  if (v7 != result)
  {
LABEL_13:
    v3 = *v1;
LABEL_14:
    *v1 = *(v3 + 8);
    return result;
  }

  if (*(v1 + 24) == 1 && (result = (*(*v4[120] + 960))(v4[120]), result))
  {
    result = (*(*v4[120] + 1024))(v4[120]);
    *v1 = result;
    *(v1 + 24) = 0;
  }

  else
  {
    *(v1 + 24) = 0;
    while (1)
    {
      v4 = v4[120];
      if (!v4)
      {
        break;
      }

      v14 = v4;
      v9 = std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::find<OZSceneNode *>(v1 + 4, &v14);
      v10 = v9 + 3;
      if (!v9)
      {
        v10 = v2;
      }

      v11 = *v10;
      *v1 = v11;
      result = v4[120];
      if (result)
      {
        v12 = *(v11 + 8);
        result = (*(*result + 1032))(result);
        if (v12 == result && v12 != *v2)
        {
          continue;
        }
      }

      goto LABEL_13;
    }
  }

  return result;
}

uint64_t std::__tree<PCUUID>::__emplace_unique_key_args<PCUUID,PCUUID>(uint64_t **a1, unsigned int *a2, _OWORD *a3)
{
  v3 = *std::__tree<PCUUID>::__find_equal<PCUUID>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<PCUUID>::__find_equal<PCUUID>(uint64_t a1, uint64_t **a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    while (1)
    {
      v10 = v4;
      v11 = *(v4 + 28);
      if (v6 != v11)
      {
        break;
      }

      v12 = *(v10 + 8);
      if (v7 == v12)
      {
        v13 = *(v10 + 9);
        v14 = v8 >= v13;
        if (v8 == v13)
        {
          v14 = v9 >= *(v10 + 10);
        }

        if (!v14)
        {
          goto LABEL_18;
        }

        v15 = *(v10 + 9);
        v16 = v15 >= v8;
        if (v15 != v8)
        {
          goto LABEL_14;
        }

        if (*(v10 + 10) >= v9)
        {
          goto LABEL_23;
        }

LABEL_15:
        result = v10 + 1;
        v4 = v10[1];
        if (!v4)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v7 >= v12)
        {
          if (v12 >= v7)
          {
            goto LABEL_23;
          }

          goto LABEL_15;
        }

LABEL_18:
        v4 = *v10;
        result = v10;
        if (!*v10)
        {
          goto LABEL_23;
        }
      }
    }

    if (v6 >= v11)
    {
      v16 = v11 >= v6;
LABEL_14:
      if (v16)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v10 = result;
LABEL_23:
  *a2 = v10;
  return result;
}

_DWORD *std::__tree<PCUUID>::find<PCUUID>(uint64_t a1, unsigned int *a2)
{
  v3 = (a1 + 8);
  result = std::__tree<PCUUID>::__lower_bound<PCUUID>(a1, a2, *(a1 + 8), (a1 + 8));
  if (v3 == result)
  {
    return v3;
  }

  v5 = result[7];
  v6 = *a2 >= v5;
  if (*a2 == v5)
  {
    v7 = a2[1];
    v8 = result[8];
    v6 = v7 >= v8;
    if (v7 == v8)
    {
      v9 = a2[2];
      v10 = result[9];
      v6 = v9 >= v10;
      if (v9 == v10)
      {
        v6 = a2[3] >= result[10];
      }
    }
  }

  if (!v6)
  {
    return v3;
  }

  return result;
}

_DWORD *std::__tree<PCUUID>::__lower_bound<PCUUID>(uint64_t a1, unsigned int *a2, _DWORD *a3, _DWORD *a4)
{
  result = a4;
  if (a3)
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    do
    {
      v8 = a3[7];
      v9 = v8 >= v5;
      if (v8 == v5)
      {
        v10 = a3[8];
        v9 = v10 >= v6;
        if (v10 == v6)
        {
          v11 = a3[9];
          v9 = v11 >= v7;
          if (v11 == v7)
          {
            v9 = a3[10] >= a2[3];
          }
        }
      }

      v12 = !v9;
      v13 = v12 == 0;
      if (v12)
      {
        v14 = 2;
      }

      else
      {
        v14 = 0;
      }

      if (v13)
      {
        result = a3;
      }

      a3 = *&a3[v14];
    }

    while (a3);
  }

  return result;
}

uint64_t *OZScene::begin_t<OZEnvironmentMeshSceneElement,false,true>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[151];
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v3;
  *(a2 + 8) = v3;
  *(a2 + 16) = result + 150;
  *(a2 + 24) = 0;
  if (v3 != result + 150)
  {
    v4 = v3[2];
    if (!v4)
    {
      return OZObject::iterator_t<OZEnvironmentMeshSceneElement,false,true,OZObject::defaultValidator>::operator++(a2);
    }

    if (!result)
    {
      return OZObject::iterator_t<OZEnvironmentMeshSceneElement,false,true,OZObject::defaultValidator>::operator++(a2);
    }
  }

  return result;
}

uint64_t *OZScene::begin_t<OZARPersonAnchorElement,false,true>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[151];
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v3;
  *(a2 + 8) = v3;
  *(a2 + 16) = result + 150;
  *(a2 + 24) = 0;
  if (v3 != result + 150)
  {
    v4 = v3[2];
    if (!v4)
    {
      return OZObject::iterator_t<OZARPersonAnchorElement,false,true,OZObject::defaultValidator>::operator++(a2);
    }

    if (!result)
    {
      return OZObject::iterator_t<OZARPersonAnchorElement,false,true,OZObject::defaultValidator>::operator++(a2);
    }
  }

  return result;
}

uint64_t *OZObject::iterator_t<OZARPersonAnchorElement,false,true,OZObject::defaultValidator>::operator++(uint64_t *a1)
{
  OZObject::iterator_t<OZARFaceAnchorElement,false,true,OZObject::defaultValidator>::increment(a1);
  for (i = *a1; *a1 != a1[2]; i = *a1)
  {
    v3 = *(i + 16);
    {
      break;
    }

    OZObject::iterator_t<OZARFaceAnchorElement,false,true,OZObject::defaultValidator>::increment(a1);
  }

  return a1;
}

double PCMatrix33Tmpl<double>::adjustIntrinsicsForOrientationAndViewport(double *a1, __n128 a2, double a3, double a4, double a5, double a6)
{
  v7 = a5;
  i = a2.n128_f64[0];
  v12 = a6 - (a1[5] + 0.5);
  a1[2] = a1[2] + 0.5;
  a1[5] = v12;
  PCMatrix33Tmpl<double>::adjustIntrinsicsByRotating(a1, a2.n128_f64[0], a5, a6);
  if (i < 0.0 || i >= 6.28318531)
  {
      ;
    }
  }

  if (fabs(i + -1.57079633) >= 0.785398163 && fabs(i + -4.71238898) >= 0.785398163)
  {
    v13 = v7;
    v7 = a6;
  }

  else
  {
    v13 = a6;
  }

  return PCMatrix33Tmpl<double>::adjustIntrinsicsForViewport(a1, a3, a4, v13, v7);
}

double PCMatrix44Tmpl<double>::setPerspectiveForViewportWithIntrinsics(uint64_t a1, double *a2, double a3, double a4, double a5, double a6)
{
  v6 = 1.0 - (a2[2] + a2[2]) / a3;
  v7 = 1.0 - (a2[5] + a2[5]) / a4;
  v8 = (a2[4] + a2[4]) / a4;
  *a1 = (*a2 + *a2) / a3;
  *(a1 + 8) = 0;
  *(a1 + 72) = 0;
  result = 0.0;
  *(a1 + 16) = v6;
  *(a1 + 40) = v8;
  *(a1 + 48) = v7;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 80) = a6 / (a5 - a6);
  *(a1 + 88) = a5 * a6 / (a5 - a6);
  *(a1 + 96) = 0u;
  *(a1 + 112) = xmmword_26034C200;
  return result;
}

void PCMatrix33Tmpl<double>::adjustIntrinsicsByRotating(double *a1, double i, double a3, double a4)
{
  if (i < 0.0 || i >= 6.28318531)
  {
      ;
    }
  }

  if (fabs(i) >= 0.785398163)
  {
    v7 = a1[2];
    v8 = *a1;
    v10 = *(a1 + 4);
    v9 = a1[5];
    if (fabs(i + -1.57079633) >= 0.785398163)
    {
      if (fabs(i + -3.14159265) >= 0.785398163)
      {
        if (fabs(i + -4.71238898) >= 0.785398163)
        {
          return;
        }

        *a1 = v10;
        *(a1 + 4) = v8;
        v9 = a4 - v9;
      }

      else
      {
        v11 = a3 - v7;
        v7 = a4 - v9;
        v9 = v11;
      }
    }

    else
    {
      *a1 = v10;
      *(a1 + 4) = v8;
      v7 = a3 - v7;
    }

    a1[2] = v9;
    a1[5] = v7;
  }
}

double PCMatrix33Tmpl<double>::adjustIntrinsicsForViewport(double *a1, double result, double a3, double a4, double a5)
{
  if (vabdd_f64(a4, result) >= 0.0000001 || vabdd_f64(a5, a3) >= 0.0000001)
  {
    v5 = a1[2];
    v6 = a1[4];
    v7 = a1[5];
    v8 = result / a3 < a4 / a5;
    v9 = result / a4;
    v10 = result / a4 * v5;
    v11 = result / a4 * v7 + (result / a4 * a5 - a3) * -0.5;
    v12 = a3 / a5;
    v13 = v12 * v5 + (v12 * a4 - result) * -0.5;
    if (v8)
    {
      v14 = v12 * v7;
    }

    else
    {
      v12 = v9;
      v14 = v11;
    }

    if (!v8)
    {
      v13 = v10;
    }

    *a1 = *a1 * v12;
    a1[2] = v13;
    result = v6 * v12;
    a1[4] = v6 * v12;
    a1[5] = v14;
  }

  return result;
}

void sub_260211CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, uint64_t a11, uint64_t a12, OZLocking *a13)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&a13);
  _Unwind_Resume(a1);
}

void sub_260211F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(va);
  _Unwind_Resume(a1);
}

void sub_260212014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(va);
  _Unwind_Resume(a1);
}

void OZChannelMaterialRoot::OZChannelMaterialRoot(OZChannelMaterialRoot *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZChannelMaterialRoot_Factory::getInstance(this);
  OZChannelObjectRoot::OZChannelObjectRoot(this, Instance, a2, a3, a4, a5);
  *this = &unk_2872B2DF8;
  *(this + 2) = &unk_2872B3190;
  *(this + 32) = 0;
  *(this + 201) = 0;
}

uint64_t OZChannelMaterialRoot_Factory::getInstance(OZChannelMaterialRoot_Factory *this)
{
  if (atomic_load_explicit(&OZChannelMaterialRoot_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelMaterialRoot_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelMaterialRoot_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelMaterialRoot_Factory::_instance;
}

void OZChannelMaterialRoot::OZChannelMaterialRoot(OZChannelMaterialRoot *this, const OZTimeMarkerSet **a2, OZChannelFolder *a3)
{
  OZChannelObjectRoot::OZChannelObjectRoot(this, a2, a3);
  *v4 = &unk_2872B2DF8;
  *(v4 + 16) = &unk_2872B3190;
  *(v4 + 256) = 0;
  *(v4 + 201) = *(a2 + 201);
}

void non-virtual thunk toOZChannelMaterialRoot::~OZChannelMaterialRoot(PCString *this)
{
  OZChannelObjectRoot::~OZChannelObjectRoot(this - 2);
}

{
  OZChannelObjectRoot::~OZChannelObjectRoot(this - 2);

  JUMPOUT(0x2666E9F00);
}

void OZChannelMaterialRoot::~OZChannelMaterialRoot(PCString *this)
{
  OZChannelObjectRoot::~OZChannelObjectRoot(this);

  JUMPOUT(0x2666E9F00);
}

const OZChannelBase *OZChannelMaterialRoot::compare(OZChannelMaterialRoot *this, const OZChannelBase *lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  if (result)
  {
    return (*(this + 32) == result[2].var4.var0 && (OZChannelFolder::compare(this, result) & 1) != 0);
  }

  return result;
}

void OZChannelMaterialRoot::willModifyChannel(OZChannelMaterialRoot *this, OZChannelBase *a2, int a3)
{
  v4 = *(this + 32);
  if (v4 && ((*(*v4 + 304))(v4) & 1) == 0)
  {

    OZChannelObjectRoot::willModifyChannel(this, a2, a3);
  }
}

OZMaterialBase *OZChannelMaterialRoot::channelValueWillBeSet(OZMaterialBase **this, OZChannel *a2, const CMTime *a3, double a4)
{
  OZChannelObjectRootBase::channelValueWillBeSet(this, a2, a3, a4);
  result = this[32];
  if (result)
  {
    (*(*result + 240))(result, a2, a3, a4);
    result = this[32];
    if ((result + 720) != a2 && (result + 1128) != a2)
    {
      result = (*(*result + 216))(result);
      if (result != a2)
      {
        v10 = this[32];

        return OZMaterialBase::setIsEdited(v10, 1u, 0);
      }
    }
  }

  return result;
}

uint64_t OZChannelMaterialRoot::parseEnd(OZChannelFolder *this, PCSerializerReadStream *a2)
{
  v3 = OZChannelObjectRoot::parseEnd(this, a2);
  OZChannelBase::resetFlag(this, 32, 0);
  return v3;
}

uint64_t non-virtual thunk toOZChannelMaterialRoot::parseEnd(OZChannelMaterialRoot *this, PCSerializerReadStream *a2)
{
  v2 = (this - 16);
  v3 = OZChannelObjectRoot::parseEnd((this - 16), a2);
  OZChannelBase::resetFlag(v2, 32, 0);
  return v3;
}

BOOL OZChannelMaterialRoot::isObjectSelected(OZChannelBase *this)
{
  ObjectManipulator = OZChannelBase::getObjectManipulator(this);
  {
    v6 = (*(*v5 + 120))(v5);
    v7 = (*(*v6 + 640))(v6);

    return OZChannelBase::testFlag(v7, 1);
  }

  else
  {

    return OZChannelObjectRoot::isObjectSelected(this);
  }
}

void OZChannelMaterialRoot_Factory::OZChannelMaterialRoot_Factory(OZChannelMaterialRoot_Factory *this)
{
  v3 = xmmword_260851370;
  v4 = xmmword_260853E80;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872B3200;
  *(this + 16) = &unk_2872B32D0;
}

FxBitmap *OZFxPlugImageConverter::convertImageWithROI(unsigned int *a1, int a2, _DWORD *a3, int *a4, unsigned int a5, int a6, double a7)
{
  if (!a1)
  {
    return 0;
  }

  v12 = a4[3];
  v48 = a4[2];
  v51 = a5;
  v52 = a1[10];
  v50 = (*(*a1 + 48))(a1);
  v15 = v14;
  if (a2 == 1)
  {
    v47 = v12;
    if (!v13)
    {
      (*(*v14 + 16))(v14);
      (*(*v15 + 3))(v15);
      operator new[]();
    }

    BytesPerRow = PCBitmap::getBytesPerRow(v13);
    v17 = a1[9];
    if ((a6 & 1) != 0 || v17 != a5)
    {
      v57.super.super.isa = v48;
      v57.super._imagePriv = v12;
      v57._bitmapPriv = v51;
      v58 = v52;
      v59 = xmmword_26034A350;
      v60 = 2;
      v61 = v50;
      v62 = a7;
      v31 = [[FxBitmap alloc] initWithInfo:&v57];
      v22 = v31;
      if (v17 != a5)
      {
        LODWORD(v57.super.super.isa) = 50462976;
        OZFxPlugImageConverter::convertBitmapDepthWithChannelMap(v13, v31, &v57, v32);
      }

      if (a6)
      {
        v33 = [(FxBitmap *)v31 rowBytes];
        v34 = [(FxBitmap *)v22 dataPtr];
        v35 = (*(**(v13 + 8) + 16))(*(v13 + 8));
        if (v12)
        {
          v36 = 0;
          LODWORD(v37) = 0;
          do
          {
            v38 = v34 + (v37 * v33);
            if (a5 == 8)
            {
              if (v48)
              {
                v43 = (v35 + 3 + v36);
                v44 = 1;
                do
                {
                  *v38 = *v43;
                  *(v38 + 1) = *(v43 - 3);
                  *(v38 + 2) = *(v43 - 2);
                  v45 = v44;
                  *(v38 + 3) = *(v43 - 1);
                  ++v44;
                  v43 += 4;
                  v38 += 4;
                }

                while (v45 < v48);
              }
            }

            else if (a5 == 32 && v48)
            {
              v39 = (v35 + 8 + v36);
              v40 = 1;
              do
              {
                *v38 = v39[1];
                *(v38 + 4) = *(v39 - 2);
                *(v38 + 8) = *(v39 - 1);
                v41 = v40;
                v42 = *v39;
                v39 += 4;
                *(v38 + 12) = v42;
                ++v40;
                v38 += 16;
              }

              while (v41 < v48);
            }

            v37 = (v37 + 1);
            v36 += BytesPerRow;
          }

          while (v37 < v12);
        }
      }
    }

    else
    {
      v18 = (*(*v13 + 40))(v13);
      v19 = malloc_type_malloc(v18, 0x405E416AuLL);
      v20 = (*(**(v13 + 8) + 16))(*(v13 + 8));
      v21 = (*(*v13 + 40))(v13);
      memcpy(v19, v20, v21);
      v57.super.super.isa = v48;
      v57.super._imagePriv = v12;
      v57._bitmapPriv = v51;
      v58 = v52;
      v59 = xmmword_26034A350;
      v60 = 2;
      v61 = v50;
      v62 = a7;
      v22 = [[FxBitmap alloc] initWithInfo:&v57 rowBytes:BytesPerRow andData:v19];
      [(FxBitmap *)v22 _setOwned:1];
    }

    v29 = *a4;
    v30 = a4[1];
    v28 = a4[2];
    v27 = a4[3];
  }

  else
  {
    if (v14)
    {
      v23 = v12;
      v55 = 0.0;
      v56.super.super.isa = 0;
      v53 = 0.0;
      v54 = 0.0;
      PGTexture::getTexCoords(v14, &v56, &v55, &v54, &v53);
      v24 = [FxTexture alloc];
      v57.super.super.isa = v48;
      v57.super._imagePriv = v23;
      v57._bitmapPriv = v51;
      v58 = v52;
      v60 = 0;
      v59 = 2uLL;
      v61 = v50;
      v62 = a7;
      Name = ProGL::TextureHandle::getName(v15 + 8);
      v22 = [(FxTexture *)v24 initWithInfo:&v57 textureId:Name andTarget:ProGL::TextureHandle::getTarget(v15 + 8)];
      v26 = v55 - *&v56.super.super.isa;
      v27 = v53 - v54;
    }

    else
    {
      v22 = 0;
      v26 = 0.0;
      v27 = 0.0;
    }

    v28 = v26 * a7;
    v29 = 0.0;
    v30 = 0.0;
  }

  [(FxImage *)v22 setBounds:v29, v30, v28, v27, v47];
  return v22;
}

void sub_260213490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  PCBitmap::~PCBitmap(va);
  _Unwind_Resume(a1);
}

void OZFxPlugImageConverter::convertBitmapDepthWithChannelMap(PCBitmap *this, PCBitmap *a2, FxBitmap *a3, const unsigned __int8 *a4)
{
  if (a2)
  {
    objc_msgSend_imageInfo(a2, a2, a3, a4);
  }

  operator new[]();
}

void OZMaterialLayerSequenceFolder::OZMaterialLayerSequenceFolder(OZMaterialLayerSequenceFolder *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3, a4, a5, a6, 0);
  *v6 = &unk_2872B3328;
  v6[2] = &unk_2872B3630;
}

void OZMaterialLayerSequenceFolder::OZMaterialLayerSequenceFolder(OZMaterialLayerSequenceFolder *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3, a4, 0);
  *v4 = &unk_2872B3328;
  v4[2] = &unk_2872B3630;
}

void OZMaterialLayerSequenceFolder::OZMaterialLayerSequenceFolder(OZMaterialLayerSequenceFolder *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZChannelFolder_Factory::getInstance(this);
  OZChannelFolder::OZChannelFolder(this, Instance, a2, a3, a4, a5, 0);
  *this = &unk_2872B3328;
  *(this + 2) = &unk_2872B3630;
}

void OZMaterialLayerSequenceFolder::OZMaterialLayerSequenceFolder(OZMaterialLayerSequenceFolder *this, const OZChannelBase *a2, OZChannelFolder *a3)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3);
  *v3 = &unk_2872B3328;
  v3[2] = &unk_2872B3630;
}

void non-virtual thunk toOZMaterialLayerSequenceFolder::~OZMaterialLayerSequenceFolder(OZMaterialLayerSequenceFolder *this)
{
  OZChannelFolder::~OZChannelFolder((this - 16));
}

{
  OZChannelFolder::~OZChannelFolder((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZMaterialLayerSequenceFolder::~OZMaterialLayerSequenceFolder(OZChannelFolder *this)
{
  OZChannelFolder::~OZChannelFolder(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZMaterialLayerSequenceFolder::writeHeader(OZMaterialLayerSequenceFolder *this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZMaterialLayerSequenceScope);
  (*(*a2 + 16))(a2, 110);
  (*(*a2 + 200))(a2, 110, this + 32);
  if (((*(*a2 + 232))(a2) & 1) == 0)
  {
    (*(*a2 + 144))(a2, 111, *(this + 6));
  }

  (*(*a2 + 160))(a2, 112, *(this + 7));
  if (((*(*a2 + 232))(a2) & 1) == 0)
  {
    v5 = OZFactory::fileRefID(*(this + 1), v4);
    (*(*a2 + 144))(a2, 113, v5);
  }

  return PCSerializerWriteStream::popScope(a2);
}

void OZLightingStyle::getLights(OZLightingStyle *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = 0;
  v71 = 0;
  v72 = 0;
  if (this > 5)
  {
    if (this > 8)
    {
      switch(this)
      {
        case 9:
          v28 = PCColorSpaceCache::cgRec709Linear(this, a2);
          PCColor::PCColor(&v66, 0.0, 0.0, 0.0, v28);
          memset(v68, 0, 41);
          v67 = 0u;
          PCString::PCString(&v69, "");
          LODWORD(v65.var0) = 1;
          LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v29);
          v67 = xmmword_260853F40;
          v68[0] = xmmword_260853F50;
          v68[1] = xmmword_260853F60;
          *&v68[2] = 0x406073B060000000;
          BYTE8(v68[2]) = 0;
          PCString::PCString(&v64, "Front");
          PCString::set(&v69, &v64);
          PCString::~PCString(&v64);
          std::vector<LightingStyleLight>::push_back[abi:ne200100](&v70, &v65);
          LODWORD(v65.var0) = 1;
          LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v30);
          v67 = xmmword_260853F70;
          v68[0] = xmmword_260853F80;
          v68[1] = xmmword_260853F90;
          *&v68[2] = 0;
          BYTE8(v68[2]) = 1;
          PCString::PCString(&v64, "Diagonal Right");
          PCString::set(&v69, &v64);
          PCString::~PCString(&v64);
          std::vector<LightingStyleLight>::push_back[abi:ne200100](&v70, &v65);
          goto LABEL_26;
        case 0xA:
          v44 = PCColorSpaceCache::cgRec709Linear(this, a2);
          PCColor::PCColor(&v66, 0.0, 0.0, 0.0, v44);
          memset(v68, 0, 41);
          v67 = 0u;
          PCString::PCString(&v69, "");
          LODWORD(v65.var0) = 1;
          LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v45);
          *&v68[0] = 0;
          v67 = 0x4010000000000000uLL;
          *(v68 + 8) = xmmword_260853F00;
          *(&v68[1] + 1) = 0;
          *&v68[2] = 0;
          BYTE8(v68[2]) = 1;
          PCString::PCString(&v64, "Top");
          PCString::set(&v69, &v64);
          PCString::~PCString(&v64);
          std::vector<LightingStyleLight>::push_back[abi:ne200100](&v70, &v65);
          LODWORD(v65.var0) = 1;
          LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v46);
          v67 = 0x4010000000000000uLL;
          *&v68[0] = 0;
          *(v68 + 8) = xmmword_260853F10;
          *(&v68[1] + 8) = xmmword_260853F30;
          BYTE8(v68[2]) = 1;
          PCString::PCString(&v64, "Left");
          PCString::set(&v69, &v64);
          PCString::~PCString(&v64);
          std::vector<LightingStyleLight>::push_back[abi:ne200100](&v70, &v65);
          goto LABEL_26;
        case 0xB:
          v15 = PCColorSpaceCache::cgRec709Linear(this, a2);
          PCColor::PCColor(&v66, 0.0, 0.0, 0.0, v15);
          memset(v68, 0, 41);
          v67 = 0u;
          PCString::PCString(&v69, "");
          LODWORD(v65.var0) = 1;
          LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v16);
          *&v68[0] = 0;
          v67 = 0x4010000000000000uLL;
          *(v68 + 8) = xmmword_260853F00;
          *(&v68[1] + 1) = 0;
          *&v68[2] = 0;
          BYTE8(v68[2]) = 1;
          PCString::PCString(&v64, "Top");
          PCString::set(&v69, &v64);
          PCString::~PCString(&v64);
          std::vector<LightingStyleLight>::push_back[abi:ne200100](&v70, &v65);
          LODWORD(v65.var0) = 1;
          LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v17);
          v67 = 0x4010000000000000uLL;
          *&v68[0] = 0;
          *(v68 + 8) = xmmword_260853F10;
          *(&v68[1] + 8) = xmmword_260853F20;
          BYTE8(v68[2]) = 1;
          PCString::PCString(&v64, "Right");
          PCString::set(&v69, &v64);
          PCString::~PCString(&v64);
          std::vector<LightingStyleLight>::push_back[abi:ne200100](&v70, &v65);
          goto LABEL_26;
      }

      goto LABEL_45;
    }

    if (this == 6)
    {
      v18 = PCColorSpaceCache::cgRec709Linear(this, a2);
      PCColor::PCColor(&v66, 0.0, 0.0, 0.0, v18);
      memset(v68, 0, 41);
      v67 = 0u;
      PCString::PCString(&v69, "");
      LODWORD(v65.var0) = 1;
      LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v19);
      v67 = xmmword_260853FF0;
      v68[0] = xmmword_260854000;
      *&v68[2] = 0;
      v68[1] = 0x4004F1A6E0000000uLL;
      BYTE8(v68[2]) = 0;
      PCString::PCString(&v64, "Back Bottom");
      PCString::set(&v69, &v64);
      PCString::~PCString(&v64);
      std::vector<LightingStyleLight>::push_back[abi:ne200100](&v70, &v65);
      LODWORD(v65.var0) = 1;
      LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v20);
      v67 = xmmword_260853FF0;
      v68[0] = xmmword_260854010;
      v68[1] = xmmword_260854020;
      *&v68[2] = 0xC005CF4420000000;
      BYTE8(v68[2]) = 0;
      PCString::PCString(&v64, "Back Left");
      PCString::set(&v69, &v64);
      PCString::~PCString(&v64);
      std::vector<LightingStyleLight>::push_back[abi:ne200100](&v70, &v65);
      LODWORD(v65.var0) = 1;
      LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v21);
      v67 = xmmword_260853FF0;
      v68[0] = xmmword_260854010;
      v68[1] = xmmword_260854030;
      *&v68[2] = 0xC00BE22520000000;
      BYTE8(v68[2]) = 0;
      PCString::PCString(&v64, "Back Right");
      PCString::set(&v69, &v64);
      PCString::~PCString(&v64);
      std::vector<LightingStyleLight>::push_back[abi:ne200100](&v70, &v65);
      LODWORD(v65.var0) = 1;
      LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v22);
      v67 = xmmword_260853FF0;
      v68[0] = xmmword_260854010;
      v68[1] = 0x400C5F4020000000uLL;
      *&v68[2] = 0;
      BYTE8(v68[2]) = 0;
      PCString::PCString(&v64, "Back Top");
      PCString::set(&v69, &v64);
      PCString::~PCString(&v64);
      std::vector<LightingStyleLight>::push_back[abi:ne200100](&v70, &v65);
      goto LABEL_26;
    }

    if (this == 7)
    {
      v36 = PCColorSpaceCache::cgRec709Linear(this, a2);
      PCColor::PCColor(&v66, 0.0, 0.0, 0.0, v36);
      memset(v68, 0, 41);
      v67 = 0u;
      PCString::PCString(&v69, "");
      LODWORD(v65.var0) = 1;
      LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v37);
      v67 = xmmword_260853F40;
      v68[0] = xmmword_260853F50;
      v68[1] = xmmword_260853F60;
      *&v68[2] = 0x406073B060000000;
      BYTE8(v68[2]) = 0;
      PCString::PCString(&v64, "Front");
      PCString::set(&v69, &v64);
      PCString::~PCString(&v64);
      std::vector<LightingStyleLight>::push_back[abi:ne200100](&v70, &v65);
      LODWORD(v65.var0) = 1;
      LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v38);
      v67 = xmmword_260853FD0;
      v68[0] = xmmword_260853FE0;
      v68[1] = 0x3FF8DA7E40000000uLL;
      *&v68[2] = 0;
      BYTE8(v68[2]) = 1;
      PCString::PCString(&v64, "Bottom");
    }

    else
    {
      v9 = PCColorSpaceCache::cgRec709Linear(this, a2);
      PCColor::PCColor(&v66, 0.0, 0.0, 0.0, v9);
      memset(v68, 0, 41);
      v67 = 0u;
      PCString::PCString(&v69, "");
      LODWORD(v65.var0) = 1;
      LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v10);
      v67 = xmmword_260853F40;
      v68[0] = xmmword_260853F50;
      v68[1] = xmmword_260853F60;
      *&v68[2] = 0x406073B060000000;
      BYTE8(v68[2]) = 0;
      PCString::PCString(&v64, "Front");
      PCString::set(&v69, &v64);
      PCString::~PCString(&v64);
      std::vector<LightingStyleLight>::push_back[abi:ne200100](&v70, &v65);
      LODWORD(v65.var0) = 1;
      LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v11);
      v67 = xmmword_260853FA0;
      v68[0] = xmmword_260853FB0;
      v68[1] = xmmword_260853FC0;
      *&v68[2] = 0;
      BYTE8(v68[2]) = 1;
      PCString::PCString(&v64, "Diagonal Left");
    }

LABEL_11:
    PCString::set(&v69, &v64);
    PCString::~PCString(&v64);
    std::vector<LightingStyleLight>::push_back[abi:ne200100](&v70, &v65);
    goto LABEL_26;
  }

  if (this > 2)
  {
    if (this == 3)
    {
      v23 = PCColorSpaceCache::cgRec709Linear(this, a2);
      PCColor::PCColor(&v66, 0.0, 0.0, 0.0, v23);
      memset(v68, 0, 41);
      v67 = 0u;
      PCString::PCString(&v69, "");
      LODWORD(v65.var0) = 1;
      LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v24);
      v67 = xmmword_260854080;
      v68[0] = xmmword_260854140;
      v68[1] = xmmword_2608540A0;
      *&v68[2] = 0x3FA6571860000000;
      BYTE8(v68[2]) = 0;
      PCString::PCString(&v64, "Fill Front");
      PCString::set(&v69, &v64);
      PCString::~PCString(&v64);
      std::vector<LightingStyleLight>::push_back[abi:ne200100](&v70, &v65);
      LODWORD(v65.var0) = 1;
      LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v25);
      v67 = xmmword_260854150;
      v68[0] = xmmword_260854160;
      v68[1] = xmmword_260854170;
      *&v68[2] = 0x3FB57254E0000000;
      BYTE8(v68[2]) = 1;
      PCString::PCString(&v64, "Key Left - Casts Shadows");
      PCString::set(&v69, &v64);
      PCString::~PCString(&v64);
      std::vector<LightingStyleLight>::push_back[abi:ne200100](&v70, &v65);
      LODWORD(v65.var0) = 1;
      LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v26);
      v67 = xmmword_260854180;
      v68[0] = xmmword_260854190;
      v68[1] = xmmword_2608541A0;
      *&v68[2] = 0x3FB90562E0000000;
      BYTE8(v68[2]) = 0;
      PCString::PCString(&v64, "Fill Right");
      PCString::set(&v69, &v64);
      PCString::~PCString(&v64);
      std::vector<LightingStyleLight>::push_back[abi:ne200100](&v70, &v65);
      LODWORD(v65.var0) = 1;
      LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v27);
      v67 = xmmword_260854110;
      v68[0] = xmmword_260854120;
      v68[1] = xmmword_260854130;
      *&v68[2] = 0;
      BYTE8(v68[2]) = 0;
      PCString::PCString(&v64, "Fill Back");
      PCString::set(&v69, &v64);
      PCString::~PCString(&v64);
      std::vector<LightingStyleLight>::push_back[abi:ne200100](&v70, &v65);
      goto LABEL_26;
    }

    if (this == 4)
    {
      v39 = PCColorSpaceCache::cgRec709Linear(this, a2);
      PCColor::PCColor(&v66, 0.0, 0.0, 0.0, v39);
      memset(v68, 0, 41);
      v67 = 0u;
      PCString::PCString(&v69, "");
      LODWORD(v65.var0) = 1;
      LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v40);
      v67 = xmmword_260854080;
      v68[0] = xmmword_260854090;
      v68[1] = xmmword_2608540A0;
      *&v68[2] = 0x3FA6571860000000;
      BYTE8(v68[2]) = 0;
      PCString::PCString(&v64, "Fill Front");
      PCString::set(&v69, &v64);
      PCString::~PCString(&v64);
      std::vector<LightingStyleLight>::push_back[abi:ne200100](&v70, &v65);
      LODWORD(v65.var0) = 1;
      LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v41);
      v67 = xmmword_2608540B0;
      v68[0] = xmmword_2608540C0;
      v68[1] = xmmword_2608540D0;
      *&v68[2] = 0x3FB90562E0000000;
      BYTE8(v68[2]) = 0;
      PCString::PCString(&v64, "Fill Left");
      PCString::set(&v69, &v64);
      PCString::~PCString(&v64);
      std::vector<LightingStyleLight>::push_back[abi:ne200100](&v70, &v65);
      LODWORD(v65.var0) = 1;
      LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v42);
      v67 = xmmword_2608540E0;
      v68[0] = xmmword_2608540F0;
      v68[1] = xmmword_260854100;
      *&v68[2] = 0x3FB57254E0000000;
      BYTE8(v68[2]) = 1;
      PCString::PCString(&v64, "Key Right - Casts Shadows");
      PCString::set(&v69, &v64);
      PCString::~PCString(&v64);
      std::vector<LightingStyleLight>::push_back[abi:ne200100](&v70, &v65);
      LODWORD(v65.var0) = 1;
      LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v43);
      v67 = xmmword_260854110;
      v68[0] = xmmword_260854120;
      v68[1] = xmmword_260854130;
      *&v68[2] = 0;
      BYTE8(v68[2]) = 0;
      PCString::PCString(&v64, "Fill Back");
    }

    else
    {
      v12 = PCColorSpaceCache::cgRec709Linear(this, a2);
      PCColor::PCColor(&v66, 0.0, 0.0, 0.0, v12);
      memset(v68, 0, 41);
      v67 = 0u;
      PCString::PCString(&v69, "");
      LODWORD(v65.var0) = 1;
      LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v13);
      v67 = xmmword_260854040;
      v68[0] = xmmword_260854050;
      v68[1] = xmmword_260853F60;
      *&v68[2] = 0x406073B060000000;
      BYTE8(v68[2]) = 0;
      PCString::PCString(&v64, "Front");
      PCString::set(&v69, &v64);
      PCString::~PCString(&v64);
      std::vector<LightingStyleLight>::push_back[abi:ne200100](&v70, &v65);
      LODWORD(v65.var0) = 1;
      LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v14);
      v67 = xmmword_260854060;
      v68[0] = xmmword_260854070;
      v68[1] = 0xBFF8DA7E40000000;
      *&v68[2] = 0;
      BYTE8(v68[2]) = 1;
      PCString::PCString(&v64, "Top");
    }

    goto LABEL_11;
  }

  if (!this)
  {
    goto LABEL_28;
  }

  if (this != 1)
  {
    if (this == 2)
    {
      v4 = PCColorSpaceCache::cgRec709Linear(this, a2);
      PCColor::PCColor(&v66, 0.0, 0.0, 0.0, v4);
      memset(v68, 0, 41);
      v67 = 0u;
      PCString::PCString(&v69, "");
      LODWORD(v65.var0) = 1;
      LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v5);
      v67 = xmmword_2608541B0;
      v68[0] = xmmword_2608541C0;
      v68[1] = xmmword_2608541D0;
      *&v68[2] = 0x3FA2C40A20000000;
      BYTE8(v68[2]) = 0;
      PCString::PCString(&v64, "Key Front");
      PCString::set(&v69, &v64);
      PCString::~PCString(&v64);
      std::vector<LightingStyleLight>::push_back[abi:ne200100](&v70, &v65);
      LODWORD(v65.var0) = 1;
      LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v6);
      v67 = xmmword_2608541E0;
      v68[0] = xmmword_2608540C0;
      v68[1] = xmmword_2608541F0;
      *&v68[2] = 0x3FB5E4B6A0000000;
      BYTE8(v68[2]) = 1;
      PCString::PCString(&v64, "Fill Left - Casts Shadows");
      PCString::set(&v69, &v64);
      PCString::~PCString(&v64);
      std::vector<LightingStyleLight>::push_back[abi:ne200100](&v70, &v65);
      LODWORD(v65.var0) = 1;
      LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v7);
      v67 = xmmword_260854200;
      v68[0] = xmmword_260854210;
      v68[1] = xmmword_260854220;
      *&v68[2] = 0x3FB41B2F80000000;
      BYTE8(v68[2]) = 1;
      PCString::PCString(&v64, "Fill Right - Casts Shadows");
      PCString::set(&v69, &v64);
      PCString::~PCString(&v64);
      std::vector<LightingStyleLight>::push_back[abi:ne200100](&v70, &v65);
      LODWORD(v65.var0) = 1;
      LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v8);
      v67 = xmmword_260854230;
      v68[0] = xmmword_260854120;
      v68[1] = xmmword_260854240;
      *&v68[2] = 0;
      BYTE8(v68[2]) = 0;
      PCString::PCString(&v64, "Back Kick");
      PCString::set(&v69, &v64);
      PCString::~PCString(&v64);
      std::vector<LightingStyleLight>::push_back[abi:ne200100](&v70, &v65);
LABEL_26:
      PCString::~PCString(&v69);
      goto LABEL_27;
    }

LABEL_45:
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v65, "not implemented yet");
    PCString::PCString(&v64, "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/CompositorObject/OZLightingStyle.cpp");
    PCException::PCException(exception, &v65, &v64, 444);
    *exception = &unk_2871F6178;
  }

  v31 = PCColorSpaceCache::cgRec709Linear(this, a2);
  PCColor::PCColor(&v66, 0.0, 0.0, 0.0, v31);
  memset(v68, 0, 41);
  v67 = 0u;
  PCString::PCString(&v69, "");
  LODWORD(v65.var0) = 1;
  LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v32);
  v67 = xmmword_260854250;
  v68[0] = xmmword_260854260;
  v68[1] = xmmword_260854270;
  *&v68[2] = 0x3FB0FA8320000000;
  BYTE8(v68[2]) = 1;
  PCString::PCString(&v64, "Key Center - Casts Shadows");
  PCString::set(&v69, &v64);
  PCString::~PCString(&v64);
  std::vector<LightingStyleLight>::push_back[abi:ne200100](&v70, &v65);
  LODWORD(v65.var0) = 1;
  LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v33);
  v67 = xmmword_260854280;
  v68[0] = xmmword_260854290;
  v68[1] = xmmword_2608542A0;
  *&v68[2] = 0xBF81DF46A0000000;
  BYTE8(v68[2]) = 0;
  PCString::PCString(&v64, "Fill Left");
  PCString::set(&v69, &v64);
  PCString::~PCString(&v64);
  std::vector<LightingStyleLight>::push_back[abi:ne200100](&v70, &v65);
  LODWORD(v65.var0) = 1;
  LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v34);
  v67 = xmmword_2608542B0;
  v68[0] = xmmword_2608542C0;
  v68[1] = xmmword_2608542D0;
  *&v68[2] = 0xBF93A8CDC0000000;
  BYTE8(v68[2]) = 0;
  PCString::PCString(&v64, "Fill Right");
  PCString::set(&v69, &v64);
  PCString::~PCString(&v64);
  std::vector<LightingStyleLight>::push_back[abi:ne200100](&v70, &v65);
  LODWORD(v65.var0) = 1;
  LightingStyleLight::setColor(&v65, 1.0, 1.0, 1.0, v35);
  v67 = xmmword_2608542E0;
  v68[0] = xmmword_2608542F0;
  v68[1] = xmmword_260854300;
  *&v68[2] = 0;
  BYTE8(v68[2]) = 0;
  PCString::PCString(&v64, "Fill Back");
  PCString::set(&v69, &v64);
  PCString::~PCString(&v64);
  PCString::~PCString(&v69);
LABEL_27:
  PCCFRef<CGColorSpace *>::~PCCFRef(&v66.var1._obj);
LABEL_28:
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v47 = v70;
  if (v71 != v70)
  {
    v48 = 0;
    v49 = 0;
    v50 = MEMORY[0x277CC08F0];
    do
    {
      PCURL::PCURL(&v65, @"Light Name");
      v51 = OZLight::create(&v65, 0);
      PCString::~PCString(&v65);
      (*(*(v51 + 16) + 120))(v51 + 16, v47 + v48 + 128, 0);
      (*(*(v51 + 6624) + 712))(v51 + 6624, v50, 0, *(v47 + v48));
      (*(*(v51 + 6880) + 840))(v51 + 6880, v50, v47 + v48 + 8, 0);
      (*(*(v51 + 7888) + 712))(v51 + 7888, v50, 0, *(v47 + v48 + 64));
      OZTransformNode::setTranslation(v51, *(v47 + v48 + 72), *(v47 + v48 + 80), *(v47 + v48 + 88), v50);
      OZTransformNode::setRotation(v51, *(v47 + v48 + 96), *(v47 + v48 + 104), *(v47 + v48 + 112), v50);
      OZFolderLightShadow::hasShadows((v51 + 8776), v50, *(v47 + v48 + 120));
      v53 = *(a3 + 8);
      v52 = *(a3 + 16);
      if (v53 >= v52)
      {
        v55 = (v53 - *a3) >> 3;
        if ((v55 + 1) >> 61)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v56 = v52 - *a3;
        v57 = v56 >> 2;
        if (v56 >> 2 <= (v55 + 1))
        {
          v57 = v55 + 1;
        }

        if (v56 >= 0x7FFFFFFFFFFFFFF8)
        {
          v58 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v58 = v57;
        }

        if (v58)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a3, v58);
        }

        v59 = (8 * v55);
        *v59 = v51;
        v54 = 8 * v55 + 8;
        v60 = *(a3 + 8) - *a3;
        v61 = v59 - v60;
        memcpy(v59 - v60, *a3, v60);
        v62 = *a3;
        *a3 = v61;
        *(a3 + 8) = v54;
        *(a3 + 16) = 0;
        if (v62)
        {
          operator delete(v62);
        }
      }

      else
      {
        *v53 = v51;
        v54 = (v53 + 1);
      }

      *(a3 + 8) = v54;
      ++v49;
      v47 = v70;
      v48 += 136;
    }

    while (v49 < 0xF0F0F0F0F0F0F0F1 * ((v71 - v70) >> 3));
  }

  v65.var0 = &v70;
  std::vector<LightingStyleLight>::__destroy_vector::operator()[abi:ne200100](&v65);
}

void sub_260215C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, PCString a13, PCString a14)
{
  PCString::~PCString(&a13);
  PCString::~PCString(&a14);
  if (v15)
  {
    __cxa_free_exception(v14);
  }

  a14.var0 = (v16 - 112);
  std::vector<LightingStyleLight>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

CGColorSpace **LightingStyleLight::setColor(LightingStyleLight *this, float a2, float a3, float a4, uint64_t a5)
{
  v9 = PCColorSpaceCache::cgRec709Linear(this, a5);
  PCColor::PCColor(&v15, a2, a3, a4, v9);
  v10 = *&v15.var0.var1[1];
  *(this + 8) = *&v15.var0.var0;
  *(this + 24) = v10;
  *(this + 40) = *&v15.var0.var1[3];
  v11 = *(this + 7);
  obj = v15.var1._obj;
  if (v11)
  {
    v13 = v11 == v15.var1._obj;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    PCCFRefTraits<CGColorSpace *>::release(v11);
    obj = v15.var1._obj;
  }

  *(this + 7) = obj;
  v15.var1._obj = 0;
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v15.var1._obj);
}

uint64_t std::vector<LightingStyleLight>::push_back[abi:ne200100](unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<LightingStyleLight>::__emplace_back_slow_path<LightingStyleLight const&>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<LightingStyleLight>>::construct[abi:ne200100]<LightingStyleLight,LightingStyleLight const&,0>(a1, a1[1], a2);
    result = v3 + 136;
    a1[1] = v3 + 136;
  }

  a1[1] = result;
  return result;
}

void OZLightingStyle::getLightSet(uint64_t *__return_ptr a1@<X8>, OZLightingStyle *this@<X0>, const FxColorDescription *a3@<X1>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2871F25A8;
  *(a1 + 24) = 0;
  OZLightingStyle::getLights(this, a3, &v14);
  v5 = v14;
  v6 = v15;
  if (((v15 - v14) >> 3) >= 1)
  {
    v7 = 0;
    v8 = ((v15 - v14) >> 3) & 0x7FFFFFFF;
    do
    {
      OZLight::setLightWorkingColorDescription(v14[v7], a3);
      OZRenderState::OZRenderState(&v13);
      OZLight::buildLiLight(v11, v14[v7], &v13);
      v12 = 1;
      LiLightSet::add(a1, v11);
      LiLight::~LiLight(v11);
      ++v7;
    }

    while (v8 != v7);
    v5 = v14;
    v6 = v15;
  }

  if (v6 != v5)
  {
    v9 = 0;
    do
    {
      v10 = v5[v9];
      if (v10)
      {
        (*(*v10 + 8))(v5[v9]);
        v5 = v14;
        v6 = v15;
      }

      ++v9;
    }

    while (v9 < (v6 - v5) >> 3);
  }

  if (v5)
  {
    v15 = v5;
    operator delete(v5);
  }
}

void std::vector<LightingStyleLight>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<LightingStyleLight>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

CGColorSpace **std::vector<LightingStyleLight>::__base_destruct_at_end[abi:ne200100](CGColorSpace **result, CGColorSpace *a2)
{
  v3 = result;
  for (i = result[1]; i != a2; i = (i - 136))
  {
    PCString::~PCString(i - 1);
    result = PCCFRef<CGColorSpace *>::~PCCFRef(i - 10);
  }

  v3[1] = a2;
  return result;
}

uint64_t std::vector<LightingStyleLight>::__emplace_back_slow_path<LightingStyleLight const&>(unint64_t *a1, uint64_t a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1E1E1E1E1E1E1E1)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v6 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<LightingStyleLight>>(a1, v6);
  }

  v13 = 0;
  v14 = 136 * v2;
  std::allocator_traits<std::allocator<LightingStyleLight>>::construct[abi:ne200100]<LightingStyleLight,LightingStyleLight const&,0>(a1, 136 * v2, a2);
  v15 = 136 * v2 + 136;
  v7 = a1[1];
  v8 = 136 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<LightingStyleLight>,LightingStyleLight*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<LightingStyleLight>::~__split_buffer(&v13);
  return v12;
}

void sub_2602162DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<LightingStyleLight>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator_traits<std::allocator<LightingStyleLight>>::construct[abi:ne200100]<LightingStyleLight,LightingStyleLight const&,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  v5 = *(a3 + 8);
  v6 = *(a3 + 24);
  *(a2 + 40) = *(a3 + 40);
  *(a2 + 24) = v6;
  *(a2 + 8) = v5;
  v7 = *(a3 + 56);
  *(a2 + 56) = v7;
  if (v7)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v7);
  }

  *(a2 + 64) = *(a3 + 64);
  *(a2 + 80) = *(a3 + 80);
  *(a2 + 96) = *(a3 + 96);
  *(a2 + 112) = *(a3 + 112);
  *(a2 + 120) = *(a3 + 120);
  PCString::PCString((a2 + 128), (a3 + 128));
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<LightingStyleLight>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<LightingStyleLight>,LightingStyleLight*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<LightingStyleLight>>::construct[abi:ne200100]<LightingStyleLight,LightingStyleLight const&,0>(a1, a4, v7);
      v7 += 136;
      a4 = v12 + 136;
      v12 += 136;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      PCString::~PCString((v5 + 128));
      PCCFRef<CGColorSpace *>::~PCCFRef((v5 + 56));
      v5 += 136;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<LightingStyleLight>,LightingStyleLight*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<LightingStyleLight>,LightingStyleLight*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<LightingStyleLight>,LightingStyleLight*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

CGColorSpace **std::_AllocatorDestroyRangeReverse<std::allocator<LightingStyleLight>,LightingStyleLight*>::operator()[abi:ne200100](CGColorSpace **result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 136)
  {
    PCString::~PCString((v3 - 8));
    result = PCCFRef<CGColorSpace *>::~PCCFRef((v3 - 80));
  }

  return result;
}

CGColorSpace **std::__split_buffer<LightingStyleLight>::~__split_buffer(CGColorSpace **a1)
{
  std::__split_buffer<LightingStyleLight>::__destruct_at_end[abi:ne200100](a1, a1[1]);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

CGColorSpace **std::__split_buffer<LightingStyleLight>::__destruct_at_end[abi:ne200100](CGColorSpace **result, CGColorSpace *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v4[2] = (v2 - 136);
      PCString::~PCString(v2 - 1);
      result = PCCFRef<CGColorSpace *>::~PCCFRef(v2 - 10);
      v2 = v4[2];
    }

    while (v2 != a2);
  }

  return result;
}

void sub_2602174E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(va);
  _Unwind_Resume(a1);
}

void sub_2602177B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, id);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  ProCore_Impl::PCNSRefImpl::release(va);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(va1);
  ProCore_Impl::PCNSRefImpl::release(v3);
  _Unwind_Resume(a1);
}

void sub_260217980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

unint64_t folderIsParameterType(unint64_t result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

void sub_260217ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, OZLocking *a12, uint64_t a13, void *__p, uint64_t a15)
{
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&a12);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_260218154(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2602182A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26021879C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26021896C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ProCore_Impl::PCNSRefImpl::release(va);
  _Unwind_Resume(a1);
}

void sub_260218B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  ProCore_Impl::PCNSRefImpl::release(va);
  _Unwind_Resume(a1);
}

void sub_260218C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(va);
  _Unwind_Resume(a1);
}

void sub_260218D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(va);
  _Unwind_Resume(a1);
}

void sub_260218DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(va);
  _Unwind_Resume(a1);
}

void sub_260218F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(va);
  _Unwind_Resume(a1);
}

void sub_260219088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_2602192F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_260219544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_2602197EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_2602199FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_26021A0A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_26021A338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_26021A5B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, PCString a12)
{
  PCString::~PCString(&a12);
  MEMORY[0x2666E9F00](v12, 0x10E1C409BAC03F7);
  _Unwind_Resume(a1);
}

void sub_26021A81C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_26021AA7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_26021ACE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, OZLocking *a13)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(v13);
  OZFxRenderContextAgentSentry::~OZFxRenderContextAgentSentry(&a9);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&a13);
  _Unwind_Resume(a1);
}

void sub_26021AECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  PCCFRef<CGColorSpace *>::~PCCFRef((v13 + 32));
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

void sub_26021B06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  PCCFRef<CGColorSpace *>::~PCCFRef((v9 + 32));
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

void sub_26021B884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_26021BA74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_26021BD40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_26021BFF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, uint64_t a11, PCString a12)
{
  PCString::~PCString(&a10);
  PCString::~PCString(&a12);
  MEMORY[0x2666E9F00](v12, v13);
  _Unwind_Resume(a1);
}

void sub_26021C230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

uint64_t interpolateCustomParameter(NSData *a1, NSData *a2, float a3, void *a4)
{
  if (!a4)
  {
    return 0;
  }

  [a4 getBytes:&v7 length:16];
  {
    return TXParagraphStyleFolder_Factory::createInstance(v5, v7);
  }

  else
  {
    return 0;
  }
}

uint64_t compareCustomParameter(NSData *a1, NSData *a2, void *a3)
{
  if (!a3)
  {
    return 0;
  }

  [a3 getBytes:v6 length:16];
  {
    return OZChannelBase::isObjectRef(v4);
  }

  else
  {
    return 0;
  }
}

void sub_26021CA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(va);
  _Unwind_Resume(a1);
}

void sub_26021CCCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, PCString a12)
{
  PCString::~PCString(&a12);
  MEMORY[0x2666E9F00](v12, v13);
  _Unwind_Resume(a1);
}

void sub_26021CEEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_26021D0FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_26021D330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_26021D500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_26021D700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  _Unwind_Resume(a1);
}

void sub_26021E230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, OZLocking *);
  v17 = va_arg(va1, void);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(va);
  OZRenderParams::~OZRenderParams(va1);
  ProCore_Impl::PCNSRefImpl::release((v13 - 88));
  _Unwind_Resume(a1);
}

void sub_26021E864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  OZRenderParams::~OZRenderParams(va);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel((v50 - 144));
  ProCore_Impl::PCNSRefImpl::release((v50 - 104));
  _Unwind_Resume(a1);
}

void sub_26021F43C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, CGColorSpace *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, OZLocking *a51, uint64_t a52, char a53)
{
  if (a19)
  {
    (*(*a19 + 24))(a19, a2, a3, a4, a5, a6, a7, a8);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&a41);
  if (a48)
  {
    (*(*a48 + 24))(a48);
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&a51);
  LiAgent::~LiAgent(&a53);
  OZFxRenderContextAgentSentry::~OZFxRenderContextAgentSentry(&STACK[0x330]);
  PCSharedCount::~PCSharedCount(&STACK[0x348]);
  OZRenderParams::~OZRenderParams(&STACK[0x370]);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel((v54 - 168));
  ProCore_Impl::PCNSRefImpl::release((v54 - 128));
  setUseLiEdgeTextureNodeCache(v53);
  _Unwind_Resume(a1);
}

void sub_26021F6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ProCore_Impl::PCNSRefImpl::release(va);
  _Unwind_Resume(a1);
}

void sub_26021F910(void *a1)
{
  objc_begin_catch(a1);
  [v1 error];
  NSLog(&cfstr_UnableToUnarch_3.isa);
  objc_end_catch();
  JUMPOUT(0x26021F8C4);
}

void sub_26021F968(_Unwind_Exception *a1)
{
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel((v1 - 88));
  ProCore_Impl::PCNSRefImpl::release((v1 - 72));
  _Unwind_Resume(a1);
}

void sub_26021F97C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  ProCore_Impl::PCNSRefImpl::release((v21 - 72));
  _Unwind_Resume(a1);
}

void sub_26021FA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(va);
  _Unwind_Resume(a1);
}

void sub_26021FC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  ProCore_Impl::PCNSRefImpl::release(va);
  _Unwind_Resume(a1);
}

void sub_26021FD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  ProCore_Impl::PCNSRefImpl::release(va);
  _Unwind_Resume(a1);
}

void sub_260220180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, CGColorSpace *a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef((v27 + 32));
  PCCFRef<CGColorSpace *>::~PCCFRef(&a27);
  ProCore_Impl::PCNSRefImpl::release((v28 - 104));
  _Unwind_Resume(a1);
}

void sub_260220344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  ProCore_Impl::PCNSRefImpl::release(va);
  _Unwind_Resume(a1);
}

void sub_2602205B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ProCore_Impl::PCNSRefImpl::release(va);
  _Unwind_Resume(a1);
}

void sub_260220694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ProCore_Impl::PCNSRefImpl::release(va);
  _Unwind_Resume(a1);
}

void sub_260220738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ProCore_Impl::PCNSRefImpl::release(va);
  _Unwind_Resume(a1);
}

void sub_260220900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, PCString a12)
{
  PCString::~PCString(&a12);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel((v12 - 32));
  _Unwind_Resume(a1);
}

void sub_260220928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  JUMPOUT(0x260220920);
}

void sub_2602218E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, PCString a9)
{
  PCString::~PCString(&a9);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel((v9 - 104));
  ProCore_Impl::PCNSRefImpl::release((v9 - 88));
  _Unwind_Resume(a1);
}

void sub_260221AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(va);
  _Unwind_Resume(a1);
}

void sub_260221DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  JUMPOUT(0x260221DF4);
}

void sub_260221DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, OZLocking *);
  v10 = va_arg(va1, void);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(va);
  ProCore_Impl::PCNSRefImpl::release(va1);
  _Unwind_Resume(a1);
}

void sub_260222070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  JUMPOUT(0x260222090);
}

void sub_260222084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(va);
  ProCore_Impl::PCNSRefImpl::release((v17 - 56));
  _Unwind_Resume(a1);
}

void sub_26022290C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ProCore_Impl::PCNSRefImpl::release(va);
  _Unwind_Resume(a1);
}

void sub_260222CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  ProCore_Impl::PCNSRefImpl::release(va);
  _Unwind_Resume(a1);
}

void sub_260222E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ProCore_Impl::PCNSRefImpl::release(va);
  _Unwind_Resume(a1);
}

void sub_260222FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ProCore_Impl::PCNSRefImpl::release(va);
  _Unwind_Resume(a1);
}

void sub_260223100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  ProCore_Impl::PCNSRefImpl::release(va);
  _Unwind_Resume(a1);
}

void sub_260223624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(va);
  _Unwind_Resume(a1);
}

void sub_260223B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_260223E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ProCore_Impl::PCNSRefImpl::release(va);
  _Unwind_Resume(a1);
}

void sub_260224008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v9.var0 = va_arg(va1, PC_Sp_counted_base *);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  PCSharedCount::~PCSharedCount((v7 - 56));
  PCSharedCount::~PCSharedCount(v6 + 1);
  Render360GroupAsEquirectSentry::~Render360GroupAsEquirectSentry(va);
  OZRenderGraphState::~OZRenderGraphState(va1);
  PCSharedCount::~PCSharedCount(v5);
  _Unwind_Resume(a1);
}

void sub_26022445C(_Unwind_Exception *a1)
{
  PCCFRef<CGColorSpace *>::~PCCFRef((v1 - 168));
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel((v1 - 96));
  _Unwind_Resume(a1);
}

void sub_2602245DC(void *a1)
{
  MEMORY[0x2666E9F00](v1, 0xC400A2AC0F1);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2602245CCLL);
}

void sub_260224B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(va);
  _Unwind_Resume(a1);
}

void sub_260225564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ProCore_Impl::PCNSRefImpl::release(va);
  _Unwind_Resume(a1);
}

uint64_t std::deque<BOOL>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 2048;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 4096;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<unsigned long *>::~__split_buffer(a1);
}

void OZFxPlugRenderContextManager::OZFxPlugRenderContextManager(OZFxPlugRenderContextManager *this)
{
  this->_vptr$OZFxPlugRenderContextManager = &unk_2872B5170;
  PCColorDescription::PCColorDescription(&this->_workingColorDescription._pcColorDesc);
  this->_workingColorDescription._isPremultiplied = 1;
  this->_blendingGamma = PCRenderModel::getDefaultBlendingGamma(v2);
  this->_contexts.__tree_.__size_ = 0;
  this->_contexts.__tree_.__end_node_.__left_ = 0;
  this->_contexts.__tree_.__begin_node_ = &this->_contexts.__tree_.__end_node_;
  this->_contextLock._lock._os_unfair_lock_opaque = 0;
}

void std::deque<OZChannelFolder *>::push_back(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    std::deque<OZChannelFolder *>::__add_back_capacity(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  result[5] = v7 + 1;
}

void std::deque<OZChannelFolder *>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<objc_class * {__strong}>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<PCStreamElement **>::emplace_back<PCStreamElement **&>(a1, &v9);
}

void sub_260225DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::deque<BOOL>::push_back(unint64_t *result, _BYTE *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 9) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    std::deque<BOOL>::__add_back_capacity(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 9) & 0x7FFFFFFFFFFFF8)) + (v8 & 0xFFF)) = *a2;
  result[5] = v7 + 1;
}

void std::deque<BOOL>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1000;
  v3 = v1 - 4096;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(a1, &v9);
}

void sub_26022604C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<unsigned int,ParameterTransactionHelpers>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ParameterTransactionHelpers>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ParameterTransactionHelpers>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void OZARPlaneAnchorElement::OZARPlaneAnchorElement(OZARPlaneAnchorElement *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZARAnchorElement::OZARAnchorElement(this, a2, a3, a4);
  *v5 = &unk_2872B36A0;
  v5[2] = &unk_2872B3FD8;
  v5[6] = &unk_2872B4230;
  v5[816] = &unk_2872B4288;
  PCString::PCString(&v7, "Plane Folder");
  OZChannelFolder::OZChannelFolder((this + 24424), &v7, (this + 448), 0x190u, 0, 0);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "None;Wall;Floor;Ceiling;Table;Seat;Window;Door");
  PCString::PCString(&v6, "Plane Classification");
  OZChannelEnum::OZChannelEnum((this + 24552), 0, &v7, &v6, (this + 24424), 0x191u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "Any;Horizontal;Vertical");
  PCString::PCString(&v6, "Plane Alignment");
  OZChannelEnum::OZChannelEnum((this + 24808), 0, &v7, &v6, (this + 24424), 0x192u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "Plane Width");
  OZChannelDouble::OZChannelDouble((this + 25064), 100, &v7, (this + 24424), 0x194u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "Plane Height");
  OZChannelDouble::OZChannelDouble((this + 25216), 100, &v7, (this + 24424), 0x195u, 0, 0, 0);
  PCString::~PCString(&v7);
}

void sub_2602263A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a12);
  OZChannel::~OZChannel((v12 + v16));
  OZChannelEnum::~OZChannelEnum((v12 + v15));
  OZChannelEnum::~OZChannelEnum((v12 + v14));
  OZChannelFolder::~OZChannelFolder((v12 + v13));
  OZARAnchorElement::~OZARAnchorElement(v12);
  _Unwind_Resume(a1);
}

void OZARPlaneAnchorElement::OZARPlaneAnchorElement(OZARPlaneAnchorElement *this, const OZARPlaneAnchorElement *a2, uint64_t a3)
{
  OZARAnchorElement::OZARAnchorElement(this, a2, a3);
  *v5 = &unk_2872B36A0;
  *(v5 + 16) = &unk_2872B3FD8;
  *(v5 + 48) = &unk_2872B4230;
  *(v5 + 6528) = &unk_2872B4288;
  OZChannelFolder::OZChannelFolder((v5 + 24424), (a2 + 24424), (this + 448));
  OZChannelEnum::OZChannelEnum((this + 24552), (a2 + 24552), (this + 24424));
  OZChannelEnum::OZChannelEnum((this + 24808), (a2 + 24808), (this + 24424));
  OZChannel::OZChannel((this + 25064), (a2 + 25064), (this + 24424));
  *(this + 3133) = &unk_287245C60;
  *(this + 3135) = &unk_287245FC0;
  OZChannel::OZChannel((this + 25216), (a2 + 25216), (this + 24424));
  *(this + 3152) = &unk_287245C60;
  *(this + 3154) = &unk_287245FC0;
}

void sub_260226610(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v2);
  OZChannelEnum::~OZChannelEnum((v1 + v5));
  OZChannelEnum::~OZChannelEnum((v1 + v4));
  OZChannelFolder::~OZChannelFolder((v1 + v3));
  OZARAnchorElement::~OZARAnchorElement(v1);
  _Unwind_Resume(a1);
}

void OZARPlaneAnchorElement::~OZARPlaneAnchorElement(OZARPlaneAnchorElement *this)
{
  *this = &unk_2872B36A0;
  *(this + 2) = &unk_2872B3FD8;
  *(this + 6) = &unk_2872B4230;
  *(this + 816) = &unk_2872B4288;
  OZChannel::~OZChannel((this + 25216));
  OZChannel::~OZChannel((this + 25064));
  OZChannelEnum::~OZChannelEnum(this + 3101);
  OZChannelEnum::~OZChannelEnum(this + 3069);
  OZChannelFolder::~OZChannelFolder((this + 24424));

  OZARAnchorElement::~OZARAnchorElement(this);
}

{
  OZARPlaneAnchorElement::~OZARPlaneAnchorElement(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZARPlaneAnchorElement::~OZARPlaneAnchorElement(OZARPlaneAnchorElement *this)
{
  OZARPlaneAnchorElement::~OZARPlaneAnchorElement((this - 16));
}

{
  OZARPlaneAnchorElement::~OZARPlaneAnchorElement((this - 48));
}

{
  OZARPlaneAnchorElement::~OZARPlaneAnchorElement((this - 6528));
}

{
  OZARPlaneAnchorElement::~OZARPlaneAnchorElement((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZARPlaneAnchorElement::~OZARPlaneAnchorElement((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZARPlaneAnchorElement::~OZARPlaneAnchorElement((this - 6528));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZARPlaneAnchorElement::setPlaneSize(uint64_t a1, const CMTime *a2, double *a3)
{
  OZChannel::setValue((a1 + 25064), a2, *a3, 0);
  v6 = a3[1];

  return OZChannel::setValue((a1 + 25216), a2, v6, 0);
}

void sub_260226A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(va);
  _Unwind_Resume(a1);
}

void sub_260226AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(va);
  _Unwind_Resume(a1);
}

void sub_260226BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(va);
  _Unwind_Resume(a1);
}

void sub_260227030()
{
  v1 = *(v0 - 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x26022701CLL);
}

void sub_26022722C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  JUMPOUT(0x260227218);
}

void sub_2602274FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  ProCore_Impl::PCNSRefImpl::release((v15 - 48));
  ProCore_Impl::PCNSRefImpl::release((v15 - 40));
  _Unwind_Resume(a1);
}

void sub_260227590()
{
  v1 = *(v0 - 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x260227570);
}

void sub_2602277A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, id a15)
{
  ProCore_Impl::PCNSRefImpl::release(&a15);
  ProCore_Impl::PCNSRefImpl::release((v15 - 40));
  _Unwind_Resume(a1);
}

void sub_26022782C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  JUMPOUT(0x26022780CLL);
}

void sub_260227A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, id);
  ProCore_Impl::PCNSRefImpl::release(va);
  ProCore_Impl::PCNSRefImpl::release(va1);
  _Unwind_Resume(a1);
}

void sub_260227AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  JUMPOUT(0x260227A84);
}

void sub_260227C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  JUMPOUT(0x260227BF8);
}

void sub_260227EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  JUMPOUT(0x260227EA8);
}

void sub_2602281D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, PCString a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25, id a26)
{
  ProCore_Impl::PCNSRefImpl::release(&a25);
  ProCore_Impl::PCNSRefImpl::release(&a26);
  _Unwind_Resume(a1);
}

void sub_260228264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  JUMPOUT(0x260228244);
}

void sub_260228530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, OZLocking *a19, uint64_t a20, PCString a21)
{
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&a19);
  ProCore_Impl::PCNSRefImpl::release((v21 - 48));
  ProCore_Impl::PCNSRefImpl::release((v21 - 40));
  _Unwind_Resume(a1);
}

void sub_2602285D4()
{
  if (*(v0 - 56))
  {
    JUMPOUT(0x2602285E0);
  }

  JUMPOUT(0x2602285B0);
}

void sub_2602288A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  ProCore_Impl::PCNSRefImpl::release(va);
  _Unwind_Resume(a1);
}

void sub_260228914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  JUMPOUT(0x260228900);
}

void sub_260228BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, OZLocking *a19, uint64_t a20, PCString a21)
{
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&a19);
  ProCore_Impl::PCNSRefImpl::release((v21 - 40));
  _Unwind_Resume(a1);
}

void sub_260228F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  ProCore_Impl::PCNSRefImpl::release(va);
  _Unwind_Resume(a1);
}

void sub_260228FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  JUMPOUT(0x260228F98);
}

void sub_260229A24()
{
  v1 = *(v0 - 120);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x260229A1CLL);
}

void sub_260229D2C(_Unwind_Exception *a1)
{
  ProCore_Impl::PCNSRefImpl::release((v1 - 56));
  ProCore_Impl::PCNSRefImpl::release((v1 - 48));
  ProCore_Impl::PCNSRefImpl::release((v1 - 40));
  _Unwind_Resume(a1);
}

void sub_26022A2F0(_Unwind_Exception *a1)
{
  ProCore_Impl::PCNSRefImpl::release((v1 - 128));
  ProCore_Impl::PCNSRefImpl::release((v1 - 120));
  _Unwind_Resume(a1);
}

void sub_26022A380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  JUMPOUT(0x26022A360);
}

void sub_26022A6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, id);
  ProCore_Impl::PCNSRefImpl::release(va);
  ProCore_Impl::PCNSRefImpl::release(va1);
  _Unwind_Resume(a1);
}

void sub_26022A768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  JUMPOUT(0x26022A748);
}

void sub_26022AA04(_Unwind_Exception *a1)
{
  ProCore_Impl::PCNSRefImpl::release((v1 - 64));
  ProCore_Impl::PCNSRefImpl::release((v1 - 56));
  _Unwind_Resume(a1);
}

void sub_26022AD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  ProCore_Impl::PCNSRefImpl::release(va);
  _Unwind_Resume(a1);
}

void sub_26022B06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(va);
  ProCore_Impl::PCNSRefImpl::release((v11 - 48));
  ProCore_Impl::PCNSRefImpl::release((v11 - 40));
  _Unwind_Resume(a1);
}

void sub_26022B3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  ProCore_Impl::PCNSRefImpl::release(va);
  _Unwind_Resume(a1);
}

void sub_26022B678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(va);
  _Unwind_Resume(a1);
}

uint64_t OZFxPlug_setPixelTransformToRestrictInputSizeForFilter(__n128 *a1, uint64_t a2, int a3, double *a4)
{
  if (a4)
  {
    *a4 = 1.0;
  }

  result = 0;
  v7 = *(a2 + 16);
  if (v7 != 0.0)
  {
    v8 = *(a2 + 24);
    if (v8 != 0.0)
    {
      if (a3)
      {
        v22 = 0uLL;
        v23.f64[0] = 0.0;
        if (OZFxPlug_GetScale(a1, &v22))
        {
          v7 = v7 * v22.f64[0];
          v8 = v8 * v22.f64[1];
        }
      }

      v9 = v7 + -4000.0;
      if (v7 <= 4000.0)
      {
        v9 = 0.0;
      }

      v10 = v8 + -4000.0;
      if (v8 <= 4000.0)
      {
        v10 = 0.0;
      }

      if (v9 >= v10)
      {
        v11 = v9;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0.0)
      {
        return 0;
      }

      else
      {
        if (v9 >= v10)
        {
          v12 = v7;
        }

        else
        {
          v12 = v8;
        }

        v13 = a1[10].n128_u64[0];
        v14 = *(v13 + 48);
        v16 = *v13;
        v15 = *(v13 + 16);
        v17 = 1.0 / (v12 / 4000.0);
        v24 = *(v13 + 32);
        v25 = v14;
        v22 = v16;
        v23 = v15;
        v18 = *(v13 + 112);
        v20 = *(v13 + 64);
        v19 = *(v13 + 80);
        v28 = *(v13 + 96);
        v29 = v18;
        v26 = v20;
        v27 = v19;
        if (v17 != 1.0)
        {
          v22 = vmulq_n_f64(v22, v17);
          v23 = vmulq_n_f64(v23, v17);
          v24 = vmulq_n_f64(v24, v17);
          v25 = vmulq_n_f64(v25, v17);
          v26 = vmulq_n_f64(v26, v17);
          v27 = vmulq_n_f64(v27, v17);
        }

        v21 = 1.0 / (v12 / 4000.0);
        LiAgent::setPixelTransform(a1, &v22);
        if (a4)
        {
          *a4 = v21;
        }

        return 1;
      }
    }
  }

  return result;
}

BOOL OZFxPlug_GetScale(__n128 *a1, uint64_t a2)
{
  v16 = 0uLL;
  v17 = 0.0;
  if (LiAgent::haveROI(a1))
  {
    LiAgent::getROI(v15, a1);
    v16.f64[0] = (v15[0].n128_u32[0] + v15[0].n128_u32[2] / 2);
    v16.f64[1] = (v15[0].n128_u32[1] + v15[0].n128_u32[3] / 2);
    v17 = 0.0;
  }

  LiAgent::getInversePixelTransform(a1, 0.0, v15);
  v13 = 0u;
  v14 = 0u;
  PCMatrix44Tmpl<double>::transform<double>(v15[0].n128_f64, v16.f64, v13.f64);
  v4 = fabs(*(&v14 + 1));
  if (v4 >= 0.0000001)
  {
    v16 = vmulq_n_f64(v13, 1.0 / *(&v14 + 1));
    v17 = 1.0 / *(&v14 + 1) * *&v14;
    __asm { FMOV            V0.2D, #1.0 }

    v11 = _Q0;
    v12 = 0;
    getScale(a1[10].n128_u64[0], v16.f64, &v11, a2, 0);
  }

  return v4 >= 0.0000001;
}

uint64_t OZFxPlug_setPixelTransformToRestrictInputSizeForTemporalAPI(__n128 *a1, uint64_t a2, int a3, double *a4)
{
  if (a4)
  {
    *a4 = 1.0;
  }

  result = 0;
  v7 = *(a2 + 16);
  if (v7 != 0.0)
  {
    v8 = *(a2 + 24);
    if (v8 != 0.0)
    {
      if (a3)
      {
        v22 = 0uLL;
        v23.f64[0] = 0.0;
        if (OZFxPlug_GetScale(a1, &v22))
        {
          v7 = v7 * v22.f64[0];
          v8 = v8 * v22.f64[1];
        }
      }

      v9 = v7 + -9000.0;
      if (v7 <= 9000.0)
      {
        v9 = 0.0;
      }

      v10 = v8 + -9000.0;
      if (v8 <= 9000.0)
      {
        v10 = 0.0;
      }

      if (v9 >= v10)
      {
        v11 = v9;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0.0)
      {
        return 0;
      }

      else
      {
        if (v9 >= v10)
        {
          v12 = v7;
        }

        else
        {
          v12 = v8;
        }

        v13 = a1[10].n128_u64[0];
        v14 = *(v13 + 48);
        v16 = *v13;
        v15 = *(v13 + 16);
        v17 = 1.0 / (v12 / 9000.0);
        v24 = *(v13 + 32);
        v25 = v14;
        v22 = v16;
        v23 = v15;
        v18 = *(v13 + 112);
        v20 = *(v13 + 64);
        v19 = *(v13 + 80);
        v28 = *(v13 + 96);
        v29 = v18;
        v26 = v20;
        v27 = v19;
        if (v17 != 1.0)
        {
          v22 = vmulq_n_f64(v22, v17);
          v23 = vmulq_n_f64(v23, v17);
          v24 = vmulq_n_f64(v24, v17);
          v25 = vmulq_n_f64(v25, v17);
          v26 = vmulq_n_f64(v26, v17);
          v27 = vmulq_n_f64(v27, v17);
        }

        v21 = 1.0 / (v12 / 9000.0);
        LiAgent::setPixelTransform(a1, &v22);
        if (a4)
        {
          *a4 = v21;
        }

        return 1;
      }
    }
  }

  return result;
}

uint64_t OZFxPlug_IsSpecialLayer(const OZSceneNode *a1, int a2, int a3)
{
  v3 = *(a1 + 1);
  v4 = *(v3 + 8);
  if (a2 > 5 || a3 > 11)
  {
    v18 = *(v3 + 8);
    IsTextLayer = OZFxPlug_IsTextLayer(a1);
    v6 = 1;
    if (IsTextLayer)
    {
      return v6 & 1;
    }

    v4 = v18;
    v12 = vaddvq_s32(vbicq_s8(xmmword_260347A70, vceqq_s32(v18, xmmword_260853DB0)));
    v13 = vaddvq_s32(vbicq_s8(xmmword_260347A70, vceqq_s32(v18, xmmword_260853DC0)));
    v14 = vaddvq_s32(vbicq_s8(xmmword_260347A70, vceqq_s32(v18, xmmword_260850780))) & 0xF;
    v9 = (vaddvq_s32(vbicq_s8(xmmword_260347A70, vceqq_s32(v18, xmmword_260850770))) & 0xF) == 0 || v14 == 0 || (v12 & 0xF) == 0;
    v10 = v13 & 0xF;
    goto LABEL_17;
  }

  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v4, xmmword_2603473A0)))) & 1) == 0)
  {
    v6 = 1;
    return v6 & 1;
  }

  v5 = vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(v3 + 24), xmmword_260347A90))));
  v6 = 1;
  if (v5)
  {
    v7 = vaddvq_s32(vbicq_s8(xmmword_260347A70, vceqq_s32(v4, xmmword_260853DC0)));
    v8 = vaddvq_s32(vbicq_s8(xmmword_260347A70, vceqq_s32(v4, xmmword_260853DB0))) & 0xF;
    v9 = (vaddvq_s32(vbicq_s8(xmmword_260347A70, vceqq_s32(v4, xmmword_260850770))) & 0xF) == 0 || v8 == 0;
    v10 = v7 & 0xF;
LABEL_17:
    if (!v9 && v10 != 0)
    {
      v6 = vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v4, xmmword_26084F780)))) ^ 1;
    }
  }

  return v6 & 1;
}

uint64_t OZFxPlug_EmitterThatNeedsResampling(OZSceneNode *a1)
{
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(*(a1 + 1) + 8), xmmword_260853DB0)))))
  {
    return 0;
  }

  v3 = *a1;
  if (result)
  {
    v4 = result;
    result = (*(v3 + 272))(a1);
    if (result)
    {
      v5 = result;
      OZExportSettings::OZExportSettings(v7);
      SceneSettings = OZScene::getSceneSettings(v5, v7);
      if (v7[44] == 1 && ((*(*v4 + 248))(v4, SceneSettings) & 1) == 0)
      {
        OZExportSettings::~OZExportSettings(v7);
        return 1;
      }

      OZExportSettings::~OZExportSettings(v7);
      return 0;
    }
  }

  return result;
}

BOOL OZFxPlug_IsCloneTextSceneNode(const OZSceneNode *a1)
{
  result = 0;
  if (a1)
  {
    if (v1)
    {
      SourceNode = OZCloneGenerator::getSourceNode(v1);
      if (SourceNode)
      {
        if (v3)
        {
          v4 = v3;
          if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(*((*(*v3 + 672))(v3) + 8) + 8), xmmword_2603473A0)))) & 1) == 0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(*((*(*v4 + 672))(v4) + 8) + 24), xmmword_260347A90)))) & 1) == 0)
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t OZFxPlug_InputWillBeScaledBasedOnChannel(OZSceneNode *a1, int a2, int a3)
{
  result = OZFxPlug_IsSpecialLayer(a1, a2, a3);
  if (result)
  {
    return !OZFxPlug_IsTextLayer(a1);
  }

  return result;
}

uint64_t OZFxPlug_DepthFromFxDepth(uint64_t a1)
{
  if (!a1)
  {
    return 8;
  }

  if (a1 != 3)
  {
    if (a1 == 2)
    {
      return 16;
    }

    NSLog(&cfstr_FxplugRequeste.isa, a1);
    switch(a1)
    {
      case 32:
        NSLog(&cfstr_Requested32Did.isa);
        break;
      case 16:
        NSLog(&cfstr_Requested16Did.isa);
        return 16;
      case 8:
        NSLog(&cfstr_Requested8DidY.isa);
        return 8;
    }
  }

  return 32;
}

uint64_t OZFxPlug_FxDepthFromDepth(int a1)
{
  if (a1 == 32)
  {
    return 3;
  }

  else
  {
    return 2 * (a1 == 16);
  }
}

uint64_t OZFxPlug_ChannelOrderFromFxDepth(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = 13;
  }

  else
  {
    v1 = 3;
  }

  if (a1 == 3)
  {
    return 16;
  }

  else
  {
    return v1;
  }
}

void *OZFxPlug_CallFrameSetup(uint64_t a1, void *a2, _OWORD *a3, __int128 *a4, _BYTE *a5, _BYTE *a6)
{
  if (a4)
  {
    v8 = a3[1];
    v18[0] = *a3;
    v18[1] = v8;
    v18[2] = a3[2];
    v9 = a4[3];
    v15 = a4[2];
    v16 = v9;
    v17 = *(a4 + 8);
    v10 = a4[1];
    v13 = *a4;
    v14 = v10;
    result = [a2 frameSetup:v18 inputInfo:&v13 hardware:a5 software:a6];
    if (result)
    {
      return result;
    }
  }

  else
  {
    v12 = a3[1];
    v13 = *a3;
    v14 = v12;
    v15 = a3[2];
    result = [a2 frameSetup:&v13 hardware:a5 software:a6];
    if (result)
    {
      return result;
    }
  }

  *a5 = 0;
  *a6 = 0;
  return result;
}

uint64_t OZFxPlug_CallRender(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7)
{
  PGSetCurrentContextSentry::PGSetCurrentContextSentry(&v20.var4);
  PCTimer::PCTimer(&v20);
  LogFxPlugRenderTimeEnabled = LiRenderingTechnology::getLogFxPlugRenderTimeEnabled((a7 + 1316));
  if (LogFxPlugRenderTimeEnabled)
  {
    PCTimer::start(&v20);
  }

  v13 = a6[1];
  v19[0] = *a6;
  v19[1] = v13;
  v19[2] = a6[2];
  if (a5)
  {
    v14 = [a2 renderOutput:a4 withInput:a5 withInfo:v19];
  }

  else
  {
    v14 = [a2 renderOutput:a4 withInfo:v19];
  }

  v16 = v14;
  if (LogFxPlugRenderTimeEnabled)
  {
    PCTimer::stop(&v20);
    Seconds = PCTimer::getSeconds(&v20);
    printf("FxPlug Graph Building Time (ms) : %g\n", Seconds * 1000.0);
  }

  OZChannelBase::setRangeName(&v20, v15);
  PGSetCurrentContextSentry::~PGSetCurrentContextSentry(&v20.var4);
  return v16;
}

void sub_26022C24C(_Unwind_Exception *a1, const PCString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, OZChannelBase *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OZChannelBase::setRangeName(&a17, a2);
  PGSetCurrentContextSentry::~PGSetCurrentContextSentry((v17 - 80));
  _Unwind_Resume(a1);
}

void OZFxPlug_CalculateImageInfo(uint64_t *__return_ptr a1@<X8>, id *a2@<X0>, OZSceneNode *lpsrc@<X1>, int a4@<W2>, int a5@<W3>, int a6@<W4>, int a7@<W5>, CMTime *a8)
{
  *a1 = a4;
  a1[1] = a5;
  a1[2] = a6;
  a1[3] = 4;
  if (a7)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = 2;
  if (a7)
  {
    v12 = 0;
  }

  a1[5] = 0;
  a1[6] = v12;
  a1[4] = v11;
  *(a1 + 56) = 1;
  a1[8] = 0x3FF0000000000000;
  if (lpsrc)
  {
  }

  else
  {
    v13 = 0;
  }

  v15 = *a8;
  if (OZFxPlugSharedBase::doesTransformFromLocalToScreenSpace(a2, &v15))
  {
    v14 = *((*(*lpsrc + 272))(lpsrc) + 384);
  }

  else
  {
    if (!v13)
    {
      return;
    }

    v14 = (*(*v13 + 1328))(v13);
  }

  *(a1 + 8) = v14;
  if (v14 == 0.0)
  {
    a1[8] = 0x3FF0000000000000;
  }
}