Overlay::UsdZipFileWriterWrapper *Overlay::UsdZipFileWriterWrapper::UsdZipFileWriterWrapper(Overlay::UsdZipFileWriterWrapper *this)
{
  sub_29B08C6DC(this);
  return this;
}

{
  sub_29B08C6DC(this);
  return this;
}

void Overlay::UsdZipFileWriterWrapper::CreateNew(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29B08C6DC(a2);
  pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::CreateNew(a1, &v6);
  sub_29B08C7F4(&v6, &v7);
  v4 = v7;
  v7 = 0uLL;
  v5 = a2[1];
  *a2 = v4;
  if (v5)
  {
    sub_29A014BEC(v5);
    if (*(&v7 + 1))
    {
      sub_29A014BEC(*(&v7 + 1));
    }
  }

  pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::~UsdZipFileWriter(&v6);
}

void sub_29B08C6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::~UsdZipFileWriter(va);
  v5 = *(v3 + 8);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  _Unwind_Resume(a1);
}

void *sub_29B08C6DC@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x20uLL);
  result = sub_29B08C728(v2);
  *a1 = v2 + 3;
  a1[1] = v2;
  return result;
}

void *sub_29B08C728(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20B4950;
  pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::UsdZipFileWriter(a1 + 3);
  return a1;
}

void sub_29B08C7A4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20B4950;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B08C7F4@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x20uLL);
  result = sub_29B08C850(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *sub_29B08C850(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20B4950;
  pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::UsdZipFileWriter(a1 + 3, a2);
  return a1;
}

uint64_t Overlay::UsdShadeTokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758C38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758C38))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
    if (!v2)
    {
      v2 = sub_29A7CFC64(&pxrInternal__aapl__pxrReserved__::UsdShadeTokens);
    }

    qword_2A1758C30 = v2;
    __cxa_guard_release(&qword_2A1758C38);
  }

  return qword_2A1758C30;
}

uint64_t Overlay::UsdUITokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758C48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758C48))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdUITokens);
    if (!v2)
    {
      v2 = sub_29A8809C8(&pxrInternal__aapl__pxrReserved__::UsdUITokens);
    }

    qword_2A1758C40 = v2;
    __cxa_guard_release(&qword_2A1758C48);
  }

  return qword_2A1758C40;
}

uint64_t Overlay::UsdPhysicsTokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758C58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758C58))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdPhysicsTokens);
    if (!v2)
    {
      v2 = sub_29A8B48EC(&pxrInternal__aapl__pxrReserved__::UsdPhysicsTokens);
    }

    qword_2A1758C50 = v2;
    __cxa_guard_release(&qword_2A1758C58);
  }

  return qword_2A1758C50;
}

uint64_t Overlay::UsdProcTokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758C68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758C68))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdProcTokens);
    if (!v2)
    {
      v2 = sub_29A814F7C(&pxrInternal__aapl__pxrReserved__::UsdProcTokens);
    }

    qword_2A1758C60 = v2;
    __cxa_guard_release(&qword_2A1758C68);
  }

  return qword_2A1758C60;
}

uint64_t Overlay::UsdSkelTokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758C78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758C78))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
    if (!v2)
    {
      v2 = sub_29A8564F4(&pxrInternal__aapl__pxrReserved__::UsdSkelTokens);
    }

    qword_2A1758C70 = v2;
    __cxa_guard_release(&qword_2A1758C78);
  }

  return qword_2A1758C70;
}

uint64_t Overlay::UsdHydraTokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758C88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758C88))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdHydraTokens);
    if (!v2)
    {
      v2 = sub_29A820488(&pxrInternal__aapl__pxrReserved__::UsdHydraTokens);
    }

    qword_2A1758C80 = v2;
    __cxa_guard_release(&qword_2A1758C88);
  }

  return qword_2A1758C80;
}

uint64_t Overlay::UsdMediaTokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758C98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758C98))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdMediaTokens);
    if (!v2)
    {
      v2 = sub_29A7CA080(&pxrInternal__aapl__pxrReserved__::UsdMediaTokens);
    }

    qword_2A1758C90 = v2;
    __cxa_guard_release(&qword_2A1758C98);
  }

  return qword_2A1758C90;
}

uint64_t Overlay::UsdTokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758CA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758CA8))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdTokens);
    if (!v2)
    {
      v2 = sub_29A4AAA94(&pxrInternal__aapl__pxrReserved__::UsdTokens);
    }

    qword_2A1758CA0 = v2;
    __cxa_guard_release(&qword_2A1758CA8);
  }

  return qword_2A1758CA0;
}

uint64_t Overlay::UsdLuxTokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758CB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758CB8))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    if (!v2)
    {
      v2 = sub_29A7FD4DC(&pxrInternal__aapl__pxrReserved__::UsdLuxTokens);
    }

    qword_2A1758CB0 = v2;
    __cxa_guard_release(&qword_2A1758CB8);
  }

  return qword_2A1758CB0;
}

uint64_t Overlay::UsdGeomTokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758CC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758CC8))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v2)
    {
      v2 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    qword_2A1758CC0 = v2;
    __cxa_guard_release(&qword_2A1758CC8);
  }

  return qword_2A1758CC0;
}

uint64_t Overlay::UsdVolTokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758CD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758CD8))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
    if (!v2)
    {
      v2 = sub_29A7C4498(&pxrInternal__aapl__pxrReserved__::UsdVolTokens);
    }

    qword_2A1758CD0 = v2;
    __cxa_guard_release(&qword_2A1758CD8);
  }

  return qword_2A1758CD0;
}

uint64_t Overlay::UsdRenderTokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758CE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758CE8))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
    if (!v2)
    {
      v2 = sub_29A816EDC(&pxrInternal__aapl__pxrReserved__::UsdRenderTokens);
    }

    qword_2A1758CE0 = v2;
    __cxa_guard_release(&qword_2A1758CE8);
  }

  return qword_2A1758CE0;
}

uint64_t Overlay::KindTokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758CF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758CF8))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::KindTokens);
    if (!v2)
    {
      v2 = sub_29A1D8548(&pxrInternal__aapl__pxrReserved__::KindTokens);
    }

    qword_2A1758CF0 = v2;
    __cxa_guard_release(&qword_2A1758CF8);
  }

  return qword_2A1758CF0;
}

uint64_t Overlay::HgiTokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758D08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758D08))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiTokens);
    if (!v2)
    {
      v2 = sub_29AB8834C(&pxrInternal__aapl__pxrReserved__::HgiTokens);
    }

    qword_2A1758D00 = v2;
    __cxa_guard_release(&qword_2A1758D08);
  }

  return qword_2A1758D00;
}

uint64_t Overlay::HdxColorCorrectionTokens(Overlay *this)
{
  if ((atomic_load_explicit(&qword_2A1758D18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1758D18))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTokens);
    if (!v2)
    {
      v2 = sub_29AECDE6C(&pxrInternal__aapl__pxrReserved__::HdxColorCorrectionTokens);
    }

    qword_2A1758D10 = v2;
    __cxa_guard_release(&qword_2A1758D18);
  }

  return qword_2A1758D10;
}

uint64_t Overlay::HdAovTokens(Overlay *this)
{
  if ((atomic_load_explicit(qword_2A1758D28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_2A1758D28))
  {
    v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    if (!v2)
    {
      v2 = sub_29ABC1C90(&pxrInternal__aapl__pxrReserved__::HdAovTokens);
    }

    qword_2A1758D20 = v2;
    __cxa_guard_release(qword_2A1758D28);
  }

  return qword_2A1758D20;
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdSchemaBase *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdTyped *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdUIBackdrop *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdRenderVar *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdRenderSettingsBase *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdRenderSettings *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdRenderProduct *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdRenderPass *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdSkelBlendShape *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdSkelAnimation *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomSubset *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomImageable *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomXformable *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdVolFieldBase *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdVolFieldAsset *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdVolOpenVDBAsset *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdVolField3DAsset *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdMediaSpatialAudio *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomXform *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomCamera *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomBoundable *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdProcGenerativeProcedural *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdSkelRoot *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomPointInstancer *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomGprim *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdVolVolume *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomSphere *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomPointBased *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomTetMesh *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomPoints *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomNurbsPatch *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomMesh *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomCurves *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomNurbsCurves *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomHermiteCurves *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomBasisCurves *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomPlane *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomCylinder_1 *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomCylinder *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomCube *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomCone *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomCapsule_1 *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomCapsule *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxBoundableLightBase *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxSphereLight *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxRectLight *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxPortalLight *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxDiskLight *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxCylinderLight *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxPluginLight *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxNonboundableLightBase *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxGeometryLight *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxDomeLight_1 *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxDomeLight *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxDistantLight *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxLightFilter *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxPluginLightFilter *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomScope *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsJoint *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsSphericalJoint *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsRevoluteJoint *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsPrismaticJoint *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsFixedJoint *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsDistanceJoint *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsScene *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsCollisionGroup *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdShadeShader *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdShadeMaterial *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdUISceneGraphPrimAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdUINodeGraphNodeAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdMediaAssetPreviewsAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdHydraGenerativeProceduralAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdModelAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdCollectionAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdClipsAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomXformCommonAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomVisibilityAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomMotionAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdGeomModelAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsRigidBodyAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsMeshCollisionAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsMaterialAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsMassAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsLimitAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsFilteredPairsAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsDriveAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsCollisionAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdPhysicsArticulationRootAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxVolumeLightAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxShapingAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxShadowAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxMeshLightAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxListAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxLightListAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdLuxLightAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdShadeNodeDefAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdShadeCoordSysAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

uint64_t Overlay::__convertToBool(Overlay *this, const pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI *a2)
{
  v2 = *(this + 1);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(*this + 32))();
  }
}

BOOL Overlay::__operatorLess(uint64_t a1, uint64_t a2)
{
  v3 = sub_29A0ECB5C(a1);
  return v3 < sub_29A0ECB5C(a2);
}

{
  v3 = sub_29A0ECB5C(a1);
  return v3 < sub_29A0ECB5C(a2);
}

{
  v3 = sub_29A0ECB5C(a1);
  return v3 < sub_29A0ECB5C(a2);
}

{
  v3 = sub_29A0ECB5C(a1);
  return v3 < sub_29A0ECB5C(a2);
}

{
  v3 = sub_29A0ECB5C(a1);
  return v3 < sub_29A0ECB5C(a2);
}

{
  v3 = sub_29A0ECB5C(a1);
  return v3 < sub_29A0ECB5C(a2);
}

{
  v3 = sub_29A0ECB5C(a1);
  return v3 < sub_29A0ECB5C(a2);
}

{
  v3 = sub_29A0ECB5C(a1);
  return v3 < sub_29A0ECB5C(a2);
}

BOOL Overlay::__operatorLess(void *a1, void *a2)
{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

{
  return *a1 < *a2;
}

uint64_t sub_29B08EF70(uint64_t a1, uint64_t a2)
{
  sub_29A1F0334(a1, v6);
  sub_29A1F0334(a2, v5);
  v3 = sub_29A99F8C4(v6[0], v6[1], v5[0], v5[1], &v7);
  v8 = v5;
  sub_29A124AB0(&v8);
  v5[0] = v6;
  sub_29A124AB0(v5);
  return v3;
}

void sub_29B08EFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  *(v12 - 24) = &a9;
  sub_29A124AB0((v12 - 24));
  a9 = &a12;
  sub_29A124AB0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29B08F024(uint64_t a1, uint64_t a2)
{
  sub_29A46D468(a1, v6);
  sub_29A46D468(a2, v5);
  v3 = sub_29A1C5C4C(v6[0], v6[1], v5[0], v5[1], &v7);
  v8 = v5;
  sub_29A012C90(&v8);
  v5[0] = v6;
  sub_29A012C90(v5);
  return v3;
}

void sub_29B08F0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  *(v12 - 24) = &a9;
  sub_29A012C90((v12 - 24));
  a9 = &a12;
  sub_29A012C90(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29B08F0D8(uint64_t *a1, uint64_t *a2)
{
  result = sub_29A1EF368(a1);
  if (result)
  {
    result = sub_29A1EF368(a2);
    if (result)
    {
      v5 = (*(**a2 + 48))();
      return sub_29B08F264(a1, v5) >> 31;
    }
  }

  return result;
}

uint64_t sub_29B08F14C(uint64_t *a1, uint64_t *a2)
{
  result = sub_29A1EF994(a1);
  if (result)
  {
    result = sub_29A1EF994(a2);
    if (result)
    {
      v5 = (*(**a2 + 48))();
      return sub_29B08F530(a1, v5) >> 31;
    }
  }

  return result;
}

BOOL Overlay::__operatorLess(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a1 == *a2)
  {
    return a1[1] < a2[1];
  }

  return 0;
}

uint64_t sub_29B08F264(uint64_t *a1, void *a2)
{
  if (*((*(**a1 + 48))(*a1) + 16) < a2[2])
  {
    return 0xFFFFFFFFLL;
  }

  if (*((*(**a1 + 48))() + 16) <= a2[2])
  {
    if (*a1)
    {
      (*(**a1 + 24))(&v9);
    }

    else
    {
      v9 = 0;
    }

    pxrInternal__aapl__pxrReserved__::SdfRelocatesMapProxyValuePolicy::CanonicalizeType(&v9, a2, &v10);
    pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v9);
    v5 = (*(**a1 + 48))();
    v6 = *a1;
    v7 = *v5;
    if (v6)
    {
      v6 = (*(*v6 + 48))(v6);
    }

    sub_29B08F48C(v7, v6 + 1, v10);
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  return 1;
}

void sub_29B08F464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void *sub_29B08F48C(void *result, void *a2, void *a3)
{
  if (result != a2)
  {
    while (1)
    {
      v4 = *(result + 28) == *(a3 + 28) && *(result + 36) == *(a3 + 36);
      if (!v4)
      {
        break;
      }

      v5 = result[1];
      v6 = result;
      if (v5)
      {
        do
        {
          result = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          result = v6[2];
          v4 = *result == v6;
          v6 = result;
        }

        while (!v4);
      }

      v7 = a3[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = a3[2];
          v4 = *v8 == a3;
          a3 = v8;
        }

        while (!v4);
      }

      a3 = v8;
      if (result == a2)
      {
        return a2;
      }
    }
  }

  return result;
}

uint64_t sub_29B08F530(uint64_t *a1, void *a2)
{
  if (*((*(**a1 + 48))(*a1) + 16) < a2[2])
  {
    return 0xFFFFFFFFLL;
  }

  if (*((*(**a1 + 48))() + 16) > a2[2])
  {
    return 1;
  }

  if (*a1)
  {
    (*(**a1 + 24))(&v50);
  }

  else
  {
    v50 = 0;
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v50);
  v5 = (*(**a1 + 48))(*a1);
  v6 = *a1;
  v7 = *v5;
  if (v6)
  {
    v6 = (*(*v6 + 48))(v6);
  }

  v8 = sub_29B08F844(v7, v6 + 1, *a2, &v51);
  v10 = v8;
  v11 = v9;
  v12 = *(v9 + 55);
  v13 = *(v8 + 55);
  if (v13 >= 0)
  {
    v14 = *(v8 + 55);
  }

  else
  {
    v14 = v8[5];
  }

  if (v13 >= 0)
  {
    v15 = v8 + 4;
  }

  else
  {
    v15 = v8[4];
  }

  if (v12 >= 0)
  {
    v16 = *(v9 + 55);
  }

  else
  {
    v16 = *(v9 + 40);
  }

  if (v12 >= 0)
  {
    v17 = (v9 + 32);
  }

  else
  {
    v17 = *(v9 + 32);
  }

  if (v16 >= v14)
  {
    v18 = v14;
  }

  else
  {
    v18 = v16;
  }

  v19 = memcmp(v15, v17, v18);
  v20 = v14 < v16;
  if (v19)
  {
    v20 = v19 < 0;
  }

  if (v20)
  {
    return 0xFFFFFFFFLL;
  }

  v21 = memcmp(v17, v15, v18);
  v22 = v16 < v14;
  if (v21)
  {
    v22 = v21 < 0;
  }

  if (!v22)
  {
    v23 = *(v11 + 79);
    v24 = *(v10 + 79);
    if (v24 >= 0)
    {
      v25 = *(v10 + 79);
    }

    else
    {
      v25 = v10[8];
    }

    if (v24 >= 0)
    {
      v26 = v10 + 7;
    }

    else
    {
      v26 = v10[7];
    }

    if (v23 >= 0)
    {
      v27 = *(v11 + 79);
    }

    else
    {
      v27 = *(v11 + 64);
    }

    if (v23 >= 0)
    {
      v28 = (v11 + 56);
    }

    else
    {
      v28 = *(v11 + 56);
    }

    if (v27 >= v25)
    {
      v29 = v25;
    }

    else
    {
      v29 = v27;
    }

    v30 = memcmp(v26, v28, v29);
    v31 = v25 < v27;
    if (v30)
    {
      v31 = v30 < 0;
    }

    if (v31)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v32 = v16 < v14;
  v33 = memcmp(v17, v15, v18);
  v34 = v33 < 0;
  if (!v33)
  {
    v34 = v32;
  }

  if (v34)
  {
    return 1;
  }

  v37 = v10[7];
  v36 = v10 + 7;
  v35 = v37;
  v38 = *(v36 + 23);
  v41 = *(v11 + 56);
  v40 = v11 + 56;
  v39 = v41;
  v42 = *(v40 + 23);
  v43 = v42 >= 0 ? *(v40 + 23) : *(v40 + 8);
  v44 = (v42 >= 0 ? v40 : v39);
  v45 = v38 >= 0 ? *(v36 + 23) : v36[1];
  v46 = v38 >= 0 ? v36 : v35;
  v47 = v45 >= v43 ? v43 : v45;
  v48 = memcmp(v44, v46, v47);
  v49 = v43 < v45;
  if (v48)
  {
    return v48 < 0;
  }

  return v49;
}

void *sub_29B08F844(void *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = a1;
  if (a1 != a2)
  {
    while (sub_29A1B0B38(a4, (v4 + 4), (a3 + 4)))
    {
      v8 = v4[1];
      v9 = v4;
      if (v8)
      {
        do
        {
          v4 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v4 = v9[2];
          v10 = *v4 == v9;
          v9 = v4;
        }

        while (!v10);
      }

      v11 = a3[1];
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
          v12 = a3[2];
          v10 = *v12 == a3;
          a3 = v12;
        }

        while (!v10);
      }

      a3 = v12;
      if (v4 == a2)
      {
        return a2;
      }
    }
  }

  return v4;
}

void Overlay::__to_string(unsigned int *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::ArchMemAdviceDontNeed";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::ArchMemAdviceRandomAccess";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::ArchMemAdviceNormal";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::ArchMemAdviceWillNeed";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::ArchMemAdvice(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::ArchFileAdviceDontNeed";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::ArchFileAdviceRandomAccess";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::ArchFileAdviceNormal";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::ArchFileAdviceWillNeed";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::ArchFileAdvice(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::ArchProtectReadWrite";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::ArchProtectReadWriteCopy";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::ArchProtectNoAccess";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::ArchProtectReadOnly";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::ArchMemoryProtection(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 8:
      v4 = "PXR_NS::TfType::MANUFACTURABLE";
      goto LABEL_7;
    case 2:
      v4 = "PXR_NS::TfType::CONCRETE";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::TfType::ABSTRACT";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::TfType::LegacyFlags(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::TfMallocTag::CallTree::BOTH";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::TfMallocTag::CallTree::CALLSITES";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::TfMallocTag::CallTree::TREE";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::TfMallocTag::CallTree::PrintSetting(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::GfCamera::Orthographic";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::GfCamera::Perspective";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::GfCamera::Projection(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::GfCamera::FOVVertical";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::GfCamera::FOVHorizontal";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::GfCamera::FOVDirection(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::GfFrustum::Perspective";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::GfFrustum::Orthographic";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::GfFrustum::ProjectionType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::GfNumericCastNaN";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::GfNumericCastNegOverflow";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::GfNumericCastPosOverflow";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::GfNumericCastFailureType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 2)
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::JsValue::ObjectType";
        goto LABEL_21;
      case 1:
        v4 = "PXR_NS::JsValue::ArrayType";
        goto LABEL_21;
      case 2:
        v4 = "PXR_NS::JsValue::StringType";
        goto LABEL_21;
    }
  }

  else
  {
    if (v3 <= 4)
    {
      if (v3 == 3)
      {
        v4 = "PXR_NS::JsValue::BoolType";
      }

      else
      {
        v4 = "PXR_NS::JsValue::IntType";
      }

LABEL_21:

      sub_29A008E78(a2, v4);
      return;
    }

    if (v3 == 5)
    {
      v4 = "PXR_NS::JsValue::RealType";
      goto LABEL_21;
    }

    if (v3 == 6)
    {
      v4 = "PXR_NS::JsValue::NullType";
      goto LABEL_21;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::JsValue::Type(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::SdfSpecifierClass";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::SdfNumSpecifiers";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::SdfSpecifierDef";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::SdfSpecifierOver";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::SdfSpecifier(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::SdfNumPermissions";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::SdfPermissionPrivate";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::SdfPermissionPublic";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::SdfPermission(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::SdfNumVariabilities";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::SdfVariabilityUniform";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::SdfVariabilityVarying";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::SdfVariability(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::SdfAuthoringErrorUnrecognizedSpecType";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::SdfAuthoringErrorUnrecognizedFields";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::SdfAuthoringError(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = "PXR_NS::SdfListOpTypeOrdered";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::SdfListOpTypePrepended";
        goto LABEL_19;
      case 5:
        v4 = "PXR_NS::SdfListOpTypeAppended";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::SdfListOpTypeExplicit";
        goto LABEL_19;
      case 1:
        v4 = "PXR_NS::SdfListOpTypeAdded";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::SdfListOpTypeDeleted";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::SdfListOpType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 2)
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::SdfPathExpression::Complement";
        goto LABEL_21;
      case 1:
        v4 = "PXR_NS::SdfPathExpression::ImpliedUnion";
        goto LABEL_21;
      case 2:
        v4 = "PXR_NS::SdfPathExpression::Union";
        goto LABEL_21;
    }
  }

  else
  {
    if (v3 <= 4)
    {
      if (v3 == 3)
      {
        v4 = "PXR_NS::SdfPathExpression::Intersection";
      }

      else
      {
        v4 = "PXR_NS::SdfPathExpression::Difference";
      }

LABEL_21:

      sub_29A008E78(a2, v4);
      return;
    }

    if (v3 == 5)
    {
      v4 = "PXR_NS::SdfPathExpression::ExpressionRef";
      goto LABEL_21;
    }

    if (v3 == 6)
    {
      v4 = "PXR_NS::SdfPathExpression::Pattern";
      goto LABEL_21;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::SdfPathExpression::Op(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::SdfPredicateExpression::FnCall::ParenCall";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::SdfPredicateExpression::FnCall::ColonCall";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::SdfPredicateExpression::FnCall::BareCall";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::SdfPredicateExpression::FnCall::Kind(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v4 = "PXR_NS::SdfPredicateExpression::Call";
      goto LABEL_12;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::SdfPredicateExpression::Not";
      goto LABEL_12;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v4 = "PXR_NS::SdfPredicateExpression::ImpliedAnd";
        goto LABEL_12;
      case 3:
        v4 = "PXR_NS::SdfPredicateExpression::And";
        goto LABEL_12;
      case 4:
        v4 = "PXR_NS::SdfPredicateExpression::Or";
LABEL_12:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::SdfPredicateExpression::Op(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::SdfNamespaceEditDetail::Okay";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::SdfNamespaceEditDetail::Unbatched";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::SdfNamespaceEditDetail::Error";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::SdfNamespaceEditDetail::Result(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::SdfPredicateFunctionResult::MayVaryOverDescendants";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::SdfPredicateFunctionResult::ConstantOverDescendants";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::SdfPredicateFunctionResult::Constancy(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::NdrNumVersionFilters";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::NdrVersionFilterAllVersions";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::NdrVersionFilterDefaultOnly";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::NdrVersionFilter(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 == 6)
      {
        v4 = "PXR_NS::PcpArcTypeSpecialize";
        goto LABEL_18;
      }

      if (v3 == 7)
      {
        v4 = "PXR_NS::PcpNumArcTypes";
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    if (v3 == 4)
    {
      v4 = "PXR_NS::PcpArcTypeReference";
    }

    else
    {
      v4 = "PXR_NS::PcpArcTypePayload";
    }

LABEL_18:

    sub_29A008E78(a2, v4);
    return;
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::PcpArcTypeVariant";
    }

    else
    {
      v4 = "PXR_NS::PcpArcTypeRelocate";
    }

    goto LABEL_18;
  }

  if (!v3)
  {
    v4 = "PXR_NS::PcpArcTypeRoot";
    goto LABEL_18;
  }

  if (v3 == 1)
  {
    v4 = "PXR_NS::PcpArcTypeInherit";
    goto LABEL_18;
  }

LABEL_21:
  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::PcpArcType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 4)
  {
    if (v3 <= 6)
    {
      if (v3 == 5)
      {
        v4 = "PXR_NS::PcpRangeTypeSpecialize";
      }

      else
      {
        v4 = "PXR_NS::PcpRangeTypeAll";
      }

LABEL_22:

      sub_29A008E78(a2, v4);
      return;
    }

    switch(v3)
    {
      case 7:
        v4 = "PXR_NS::PcpRangeTypeWeakerThanRoot";
        goto LABEL_22;
      case 8:
        v4 = "PXR_NS::PcpRangeTypeStrongerThanPayload";
        goto LABEL_22;
      case 9:
        v4 = "PXR_NS::PcpRangeTypeInvalid";
        goto LABEL_22;
    }
  }

  else
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        v4 = "PXR_NS::PcpRangeTypeVariant";
      }

      else if (v3 == 3)
      {
        v4 = "PXR_NS::PcpRangeTypeReference";
      }

      else
      {
        v4 = "PXR_NS::PcpRangeTypePayload";
      }

      goto LABEL_22;
    }

    if (!v3)
    {
      v4 = "PXR_NS::PcpRangeTypeRoot";
      goto LABEL_22;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::PcpRangeTypeInherit";
      goto LABEL_22;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::PcpRangeType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 7)
  {
    if (v3 <= 31)
    {
      if (v3 == 8)
      {
        v4 = "PXR_NS::PcpDependencyTypeAncestral";
        goto LABEL_24;
      }

      if (v3 == 16)
      {
        v4 = "PXR_NS::PcpDependencyTypeVirtual";
        goto LABEL_24;
      }
    }

    else
    {
      switch(v3)
      {
        case ' ':
          v4 = "PXR_NS::PcpDependencyTypeNonVirtual";
          goto LABEL_24;
        case '/':
          v4 = "PXR_NS::PcpDependencyTypeAnyNonVirtual";
          goto LABEL_24;
        case '?':
          v4 = "PXR_NS::PcpDependencyTypeAnyIncludingVirtual";
          goto LABEL_24;
      }
    }
  }

  else if (v3 <= 1)
  {
    if (!v3)
    {
      v4 = "PXR_NS::PcpDependencyTypeNone";
      goto LABEL_24;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::PcpDependencyTypeRoot";
      goto LABEL_24;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v4 = "PXR_NS::PcpDependencyTypePurelyDirect";
        goto LABEL_24;
      case 4:
        v4 = "PXR_NS::PcpDependencyTypePartlyDirect";
        goto LABEL_24;
      case 6:
        v4 = "PXR_NS::PcpDependencyTypeDirect";
LABEL_24:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::PcpDependencyType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 0:
      v4 = "PXR_NS::PcpErrorType_ArcCycle";
      goto LABEL_37;
    case 1:
      v4 = "PXR_NS::PcpErrorType_ArcPermissionDenied";
      goto LABEL_37;
    case 3:
      v4 = "PXR_NS::PcpErrorType_IndexCapacityExceeded";
      goto LABEL_37;
    case 4:
      v4 = "PXR_NS::PcpErrorType_ArcCapacityExceeded";
      goto LABEL_37;
    case 5:
      v4 = "PXR_NS::PcpErrorType_ArcNamespaceDepthCapacityExceeded";
      goto LABEL_37;
    case 6:
      v4 = "PXR_NS::PcpErrorType_InconsistentPropertyType";
      goto LABEL_37;
    case 7:
      v4 = "PXR_NS::PcpErrorType_InconsistentAttributeType";
      goto LABEL_37;
    case 8:
      v4 = "PXR_NS::PcpErrorType_InconsistentAttributeVariability";
      goto LABEL_37;
    case 9:
      v4 = "PXR_NS::PcpErrorType_InternalAssetPath";
      goto LABEL_37;
    case 10:
      v4 = "PXR_NS::PcpErrorType_InvalidPrimPath";
      goto LABEL_37;
    case 11:
      v4 = "PXR_NS::PcpErrorType_InvalidAssetPath";
      goto LABEL_37;
    case 12:
      v4 = "PXR_NS::PcpErrorType_InvalidInstanceTargetPath";
      goto LABEL_37;
    case 13:
      v4 = "PXR_NS::PcpErrorType_InvalidExternalTargetPath";
      goto LABEL_37;
    case 14:
      v4 = "PXR_NS::PcpErrorType_InvalidTargetPath";
      goto LABEL_37;
    case 15:
      v4 = "PXR_NS::PcpErrorType_InvalidReferenceOffset";
      goto LABEL_37;
    case 16:
      v4 = "PXR_NS::PcpErrorType_InvalidSublayerOffset";
      goto LABEL_37;
    case 17:
      v4 = "PXR_NS::PcpErrorType_InvalidSublayerOwnership";
      goto LABEL_37;
    case 18:
      v4 = "PXR_NS::PcpErrorType_InvalidSublayerPath";
      goto LABEL_37;
    case 19:
      v4 = "PXR_NS::PcpErrorType_InvalidVariantSelection";
      goto LABEL_37;
    case 20:
      v4 = "PXR_NS::PcpErrorType_MutedAssetPath";
      goto LABEL_37;
    case 21:
      v4 = "PXR_NS::PcpErrorType_InvalidAuthoredRelocation";
      goto LABEL_37;
    case 22:
      v4 = "PXR_NS::PcpErrorType_InvalidConflictingRelocation";
      goto LABEL_37;
    case 23:
      v4 = "PXR_NS::PcpErrorType_InvalidSameTargetRelocations";
      goto LABEL_37;
    case 24:
      v4 = "PXR_NS::PcpErrorType_OpinionAtRelocationSource";
      goto LABEL_37;
    case 25:
      v4 = "PXR_NS::PcpErrorType_PrimPermissionDenied";
      goto LABEL_37;
    case 26:
      v4 = "PXR_NS::PcpErrorType_PropertyPermissionDenied";
      goto LABEL_37;
    case 27:
      v4 = "PXR_NS::PcpErrorType_SublayerCycle";
      goto LABEL_37;
    case 28:
      v4 = "PXR_NS::PcpErrorType_TargetPermissionDenied";
      goto LABEL_37;
    case 29:
      v4 = "PXR_NS::PcpErrorType_UnresolvedPrimPath";
      goto LABEL_37;
    case 30:
      v4 = "PXR_NS::PcpErrorType_VariableExpressionError";
LABEL_37:

      sub_29A008E78(a2, v4);
      break;
    default:
      std::to_string(&v9, v3);
      v5 = std::string::insert(&v9, 0, "PXR_NS::PcpErrorType(rawValue: ");
      v6 = *&v5->__r_.__value_.__l.__data_;
      v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v10.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      v7 = std::string::append(&v10, ")");
      v8 = *&v7->__r_.__value_.__l.__data_;
      a2[2] = *(&v7->__r_.__value_.__l + 2);
      *a2 = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

      break;
  }
}

{
  v3 = *a1;
  if (v3 == 2)
  {
    v4 = "PXR_NS::PcpCacheChanges::TargetTypeRelationshipTarget";
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = "PXR_NS::PcpCacheChanges::TargetTypeConnection";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::PcpCacheChanges::TargetType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = "PXR_NS::PcpNamespaceEdits::EditReference";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::PcpNamespaceEdits::EditPayload";
        goto LABEL_19;
      case 5:
        v4 = "PXR_NS::PcpNamespaceEdits::EditRelocate";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::PcpNamespaceEdits::EditPath";
        goto LABEL_19;
      case 1:
        v4 = "PXR_NS::PcpNamespaceEdits::EditInherit";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::PcpNamespaceEdits::EditSpecializes";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::PcpNamespaceEdits::EditType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::UsdListPositionFrontOfAppendList";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::UsdListPositionBackOfAppendList";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::UsdListPositionFrontOfPrependList";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::UsdListPositionBackOfPrependList";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdListPosition(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::UsdLoadWithoutDescendants";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::UsdLoadWithDescendants";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdLoadPolicy(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = "PXR_NS::UsdTypeAttribute";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::UsdTypeRelationship";
        goto LABEL_19;
      case 5:
        v4 = "PXR_NS::Usd_NumObjTypes";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::UsdTypeObject";
        goto LABEL_19;
      case 1:
        v4 = "PXR_NS::UsdTypePrim";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::UsdTypeProperty";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdObjType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::UsdStage::LoadNone";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::UsdStage::LoadAll";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdStage::InitialLoadSet(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::UsdInterpolationTypeLinear";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::UsdInterpolationTypeHeld";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdInterpolationType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::UsdStageLoadRules::NoneRule";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::UsdStageLoadRules::OnlyRule";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::UsdStageLoadRules::AllRule";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdStageLoadRules::Rule(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v4 = "PXR_NS::UsdResolveInfoSourceNone";
      goto LABEL_12;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::UsdResolveInfoSourceFallback";
      goto LABEL_12;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v4 = "PXR_NS::UsdResolveInfoSourceDefault";
        goto LABEL_12;
      case 3:
        v4 = "PXR_NS::UsdResolveInfoSourceTimeSamples";
        goto LABEL_12;
      case 4:
        v4 = "PXR_NS::UsdResolveInfoSourceValueClips";
LABEL_12:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdResolveInfoSource(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::UsdModelAPI::KindValidationModelHierarchy";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::UsdModelAPI::KindValidationNone";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdModelAPI::KindValidation(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::Usd_NoBlock";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::UsdBlockStageCachePopulation";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::UsdBlockStageCaches";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdStageCacheContextBlockType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 0:
      v4 = "PXR_NS::UsdGeomXformOp::TypeInvalid";
      goto LABEL_16;
    case 4:
      v4 = "PXR_NS::UsdGeomXformOp::TypeTranslate";
      goto LABEL_16;
    case 8:
      v4 = "PXR_NS::UsdGeomXformOp::TypeScale";
      goto LABEL_16;
    case 9:
      v4 = "PXR_NS::UsdGeomXformOp::TypeRotateX";
      goto LABEL_16;
    case 10:
      v4 = "PXR_NS::UsdGeomXformOp::TypeRotateY";
      goto LABEL_16;
    case 11:
      v4 = "PXR_NS::UsdGeomXformOp::TypeRotateZ";
      goto LABEL_16;
    case 12:
      v4 = "PXR_NS::UsdGeomXformOp::TypeRotateXYZ";
      goto LABEL_16;
    case 13:
      v4 = "PXR_NS::UsdGeomXformOp::TypeRotateXZY";
      goto LABEL_16;
    case 14:
      v4 = "PXR_NS::UsdGeomXformOp::TypeRotateYXZ";
      goto LABEL_16;
    case 15:
      v4 = "PXR_NS::UsdGeomXformOp::TypeRotateYZX";
      goto LABEL_16;
    case 16:
      v4 = "PXR_NS::UsdGeomXformOp::TypeRotateZXY";
      goto LABEL_16;
    case 17:
      v4 = "PXR_NS::UsdGeomXformOp::TypeRotateZYX";
      goto LABEL_16;
    case 18:
      v4 = "PXR_NS::UsdGeomXformOp::TypeOrient";
      goto LABEL_16;
    case 19:
      v4 = "PXR_NS::UsdGeomXformOp::TypeTransform";
LABEL_16:

      sub_29A008E78(a2, v4);
      break;
    default:
      std::to_string(&v9, v3);
      v5 = std::string::insert(&v9, 0, "PXR_NS::UsdGeomXformOp::Type(rawValue: ");
      v6 = *&v5->__r_.__value_.__l.__data_;
      v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v10.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      v7 = std::string::append(&v10, ")");
      v8 = *&v7->__r_.__value_.__l.__data_;
      a2[2] = *(&v7->__r_.__value_.__l + 2);
      *a2 = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

      break;
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::UsdGeomXformOp::PrecisionHalf";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::UsdGeomXformOp::PrecisionFloat";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::UsdGeomXformOp::PrecisionDouble";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdGeomXformOp::Precision(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::UsdGeomPointInstancer::ExcludeProtoXform";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::UsdGeomPointInstancer::IncludeProtoXform";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdGeomPointInstancer::ProtoXformInclusion(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::UsdGeomPointInstancer::IgnoreMask";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::UsdGeomPointInstancer::ApplyMask";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdGeomPointInstancer::MaskApplication(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = "PXR_NS::UsdGeomXformCommonAPI::RotationOrderYZX";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::UsdGeomXformCommonAPI::RotationOrderZXY";
        goto LABEL_19;
      case 5:
        v4 = "PXR_NS::UsdGeomXformCommonAPI::RotationOrderZYX";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::UsdGeomXformCommonAPI::RotationOrderXYZ";
        goto LABEL_19;
      case 1:
        v4 = "PXR_NS::UsdGeomXformCommonAPI::RotationOrderXZY";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::UsdGeomXformCommonAPI::RotationOrderYXZ";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdGeomXformCommonAPI::RotationOrder(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v4 = "PXR_NS::UsdGeomXformCommonAPI::OpNone";
      goto LABEL_12;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::UsdGeomXformCommonAPI::OpTranslate";
      goto LABEL_12;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v4 = "PXR_NS::UsdGeomXformCommonAPI::OpPivot";
        goto LABEL_12;
      case 4:
        v4 = "PXR_NS::UsdGeomXformCommonAPI::OpRotate";
        goto LABEL_12;
      case 8:
        v4 = "PXR_NS::UsdGeomXformCommonAPI::OpScale";
LABEL_12:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdGeomXformCommonAPI::OpFlags(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::UsdShadeConnectableAPIBehavior::DerivedContainerNodes";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::UsdShadeConnectableAPIBehavior::BasicNodes";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdShadeConnectableAPIBehavior::ConnectableNodeTypes(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::UsdLuxLightListAPI::ComputeModeIgnoreCache";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::UsdLuxLightListAPI::ComputeModeConsultModelHierarchyCache";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdLuxLightListAPI::ComputeMode(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::UsdLuxListAPI::ComputeModeIgnoreCache";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::UsdLuxListAPI::ComputeModeConsultModelHierarchyCache";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdLuxListAPI::ComputeMode(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 8)
  {
    if (v3 <= 17)
    {
      if (v3 == 9)
      {
        v4 = "PXR_NS::UsdSkelBakeSkinningParms::ModifiesPoints";
        goto LABEL_24;
      }

      if (v3 == 16)
      {
        v4 = "PXR_NS::UsdSkelBakeSkinningParms::DeformNormalsWithBlendShapes";
        goto LABEL_24;
      }
    }

    else
    {
      switch(v3)
      {
        case 0x12:
          v4 = "PXR_NS::UsdSkelBakeSkinningParms::ModifiesNormals";
          goto LABEL_24;
        case 0x18:
          v4 = "PXR_NS::UsdSkelBakeSkinningParms::DeformWithBlendShapes";
          goto LABEL_24;
        case 0x1F:
          v4 = "PXR_NS::UsdSkelBakeSkinningParms::DeformAll";
          goto LABEL_24;
      }
    }
  }

  else if (v3 <= 3)
  {
    if (v3 == 1)
    {
      v4 = "PXR_NS::UsdSkelBakeSkinningParms::DeformPointsWithSkinning";
      goto LABEL_24;
    }

    if (v3 == 2)
    {
      v4 = "PXR_NS::UsdSkelBakeSkinningParms::DeformNormalsWithSkinning";
      goto LABEL_24;
    }
  }

  else
  {
    switch(v3)
    {
      case 4:
        v4 = "PXR_NS::UsdSkelBakeSkinningParms::DeformXformWithSkinning";
        goto LABEL_24;
      case 7:
        v4 = "PXR_NS::UsdSkelBakeSkinningParms::DeformWithSkinning";
        goto LABEL_24;
      case 8:
        v4 = "PXR_NS::UsdSkelBakeSkinningParms::DeformPointsWithBlendShapes";
LABEL_24:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdSkelBakeSkinningParms::DeformationFlags(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::GarchGLDebugWindow::MyButton3";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::GarchGLDebugWindow::MyButton2";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::GarchGLDebugWindow::MyButton1";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::GarchGLDebugWindow::Buttons(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::GarchGLDebugWindow::Alt";
      goto LABEL_15;
    }

    if (v3 == 4)
    {
      v4 = "PXR_NS::GarchGLDebugWindow::Ctrl";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::GarchGLDebugWindow::NoModifiers";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::GarchGLDebugWindow::Shift";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::GarchGLDebugWindow::ModifierKeys(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::HioAddressDimensionW";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::HioAddressDimensionV";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::HioAddressDimensionU";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HioAddressDimension(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v4 = "PXR_NS::HioAddressModeClampToEdge";
      goto LABEL_12;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HioAddressModeMirrorClampToEdge";
      goto LABEL_12;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v4 = "PXR_NS::HioAddressModeRepeat";
        goto LABEL_12;
      case 3:
        v4 = "PXR_NS::HioAddressModeMirrorRepeat";
        goto LABEL_12;
      case 4:
        v4 = "PXR_NS::HioAddressModeClampToBorderColor";
LABEL_12:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HioAddressMode(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 4)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        v4 = "PXR_NS::HioTypeSignedByte";
      }

      else if (v3 == 3)
      {
        v4 = "PXR_NS::HioTypeUnsignedShort";
      }

      else
      {
        v4 = "PXR_NS::HioTypeSignedShort";
      }

LABEL_24:

      sub_29A008E78(a2, v4);
      return;
    }

    if (!v3)
    {
      v4 = "PXR_NS::HioTypeUnsignedByte";
      goto LABEL_24;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HioTypeUnsignedByteSRGB";
      goto LABEL_24;
    }
  }

  else
  {
    if (v3 <= 7)
    {
      if (v3 == 5)
      {
        v4 = "PXR_NS::HioTypeUnsignedInt";
      }

      else if (v3 == 6)
      {
        v4 = "PXR_NS::HioTypeInt";
      }

      else
      {
        v4 = "PXR_NS::HioTypeHalfFloat";
      }

      goto LABEL_24;
    }

    switch(v3)
    {
      case 8:
        v4 = "PXR_NS::HioTypeFloat";
        goto LABEL_24;
      case 9:
        v4 = "PXR_NS::HioTypeDouble";
        goto LABEL_24;
      case 0xA:
        v4 = "PXR_NS::HioTypeCount";
        goto LABEL_24;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HioType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::HioGlslfxConfig::RoleColor";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HioGlslfxConfig::RoleNone";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HioGlslfxConfig::Role(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v4 = "PXR_NS::CameraUtilMatchVertically";
      goto LABEL_12;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::CameraUtilMatchHorizontally";
      goto LABEL_12;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v4 = "PXR_NS::CameraUtilFit";
        goto LABEL_12;
      case 3:
        v4 = "PXR_NS::CameraUtilCrop";
        goto LABEL_12;
      case 4:
        v4 = "PXR_NS::CameraUtilDontConform";
LABEL_12:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::CameraUtilConformWindowPolicy(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 511)
  {
    if (v3 < 0x2000)
    {
      if (v3 > 2047)
      {
        if (v3 == 2048)
        {
          v4 = "PXR_NS::HgiDeviceCapabilitiesBitsConservativeRaster";
          goto LABEL_44;
        }

        if (v3 == 4096)
        {
          v4 = "PXR_NS::HgiDeviceCapabilitiesBitsStencilReadback";
          goto LABEL_44;
        }
      }

      else
      {
        if (v3 == 512)
        {
          v4 = "PXR_NS::HgiDeviceCapabilitiesBitsDepthRangeMinusOnetoOne";
          goto LABEL_44;
        }

        if (v3 == 1024)
        {
          v4 = "PXR_NS::HgiDeviceCapabilitiesBitsCppShaderPadding";
          goto LABEL_44;
        }
      }
    }

    else if (v3 < 0x8000)
    {
      if (v3 == 0x2000)
      {
        v4 = "PXR_NS::HgiDeviceCapabilitiesBitsCustomDepthRange";
        goto LABEL_44;
      }

      if (v3 == 0x4000)
      {
        v4 = "PXR_NS::HgiDeviceCapabilitiesBitsMetalTessellation";
        goto LABEL_44;
      }
    }

    else
    {
      switch(v3)
      {
        case 0x8000:
          v4 = "PXR_NS::HgiDeviceCapabilitiesBitsBasePrimitiveOffset";
          goto LABEL_44;
        case 0x10000:
          v4 = "PXR_NS::HgiDeviceCapabilitiesBitsPrimitiveIdEmulation";
          goto LABEL_44;
        case 0x20000:
          v4 = "PXR_NS::HgiDeviceCapabilitiesBitsIndirectCommandBuffers";
          goto LABEL_44;
      }
    }
  }

  else if (v3 <= 15)
  {
    if (v3 > 3)
    {
      if (v3 == 4)
      {
        v4 = "PXR_NS::HgiDeviceCapabilitiesBitsConcurrentDispatch";
        goto LABEL_44;
      }

      if (v3 == 8)
      {
        v4 = "PXR_NS::HgiDeviceCapabilitiesBitsUnifiedMemory";
        goto LABEL_44;
      }
    }

    else
    {
      if (v3 == 1)
      {
        v4 = "PXR_NS::HgiDeviceCapabilitiesBitsPresentation";
        goto LABEL_44;
      }

      if (v3 == 2)
      {
        v4 = "PXR_NS::HgiDeviceCapabilitiesBitsBindlessBuffers";
        goto LABEL_44;
      }
    }
  }

  else if (v3 <= 63)
  {
    if (v3 == 16)
    {
      v4 = "PXR_NS::HgiDeviceCapabilitiesBitsBuiltinBarycentrics";
      goto LABEL_44;
    }

    if (v3 == 32)
    {
      v4 = "PXR_NS::HgiDeviceCapabilitiesBitsShaderDrawParameters";
      goto LABEL_44;
    }
  }

  else
  {
    switch(v3)
    {
      case 0x40:
        v4 = "PXR_NS::HgiDeviceCapabilitiesBitsMultiDrawIndirect";
        goto LABEL_44;
      case 0x80:
        v4 = "PXR_NS::HgiDeviceCapabilitiesBitsBindlessTextures";
        goto LABEL_44;
      case 0x100:
        v4 = "PXR_NS::HgiDeviceCapabilitiesBitsShaderDoublePrecision";
LABEL_44:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiDeviceCapabilitiesBits(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = "PXR_NS::HgiTextureType1DArray";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::HgiTextureType2DArray";
        goto LABEL_19;
      case 5:
        v4 = "PXR_NS::HgiTextureTypeCount";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::HgiTextureType1D";
        goto LABEL_19;
      case 1:
        v4 = "PXR_NS::HgiTextureType2D";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::HgiTextureType3D";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiTextureType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 7)
  {
    switch(v3)
    {
      case 8:
        v4 = "PXR_NS::HgiTextureUsageBitsShaderRead";
        goto LABEL_19;
      case 0x10:
        v4 = "PXR_NS::HgiTextureUsageBitsShaderWrite";
        goto LABEL_19;
      case 0x20:
        v4 = "PXR_NS::HgiTextureUsageCustomBitsBegin";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 1:
        v4 = "PXR_NS::HgiTextureUsageBitsColorTarget";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::HgiTextureUsageBitsDepthTarget";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::HgiTextureUsageBitsStencilTarget";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiTextureUsageBits(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = "PXR_NS::HgiSamplerAddressModeMirrorRepeat";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::HgiSamplerAddressModeClampToBorderColor";
        goto LABEL_19;
      case 5:
        v4 = "PXR_NS::HgiSamplerAddressModeCount";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::HgiSamplerAddressModeClampToEdge";
        goto LABEL_19;
      case 1:
        v4 = "PXR_NS::HgiSamplerAddressModeMirrorClampToEdge";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::HgiSamplerAddressModeRepeat";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiSamplerAddressMode(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::HgiSamplerFilterCount";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::HgiSamplerFilterLinear";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::HgiSamplerFilterNearest";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiSamplerFilter(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::HgiMipFilterLinear";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::HgiMipFilterCount";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::HgiMipFilterNotMipmapped";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HgiMipFilterNearest";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiMipFilter(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::HgiBorderColorOpaqueWhite";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::HgiBorderColorCount";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::HgiBorderColorTransparentBlack";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HgiBorderColorOpaqueBlack";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiBorderColor(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 7)
  {
    switch(v3)
    {
      case 8:
        v4 = "PXR_NS::HgiSampleCount8";
        goto LABEL_19;
      case 0x10:
        v4 = "PXR_NS::HgiSampleCount16";
        goto LABEL_19;
      case 0x11:
        v4 = "PXR_NS::HgiSampleCountEnd";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 1:
        v4 = "PXR_NS::HgiSampleCount1";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::HgiSampleCount2";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::HgiSampleCount4";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiSampleCount(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::HgiAttachmentLoadOpLoad";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::HgiAttachmentLoadOpCount";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::HgiAttachmentLoadOpDontCare";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HgiAttachmentLoadOpClear";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiAttachmentLoadOp(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::HgiAttachmentStoreOpCount";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::HgiAttachmentStoreOpStore";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::HgiAttachmentStoreOpDontCare";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiAttachmentStoreOp(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 7)
  {
    switch(v3)
    {
      case 8:
        v4 = "PXR_NS::HgiBufferUsageStorage";
        goto LABEL_19;
      case 0x10:
        v4 = "PXR_NS::HgiBufferUsageIndirect";
        goto LABEL_19;
      case 0x20:
        v4 = "PXR_NS::HgiBufferUsageCustomBitsBegin";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 1:
        v4 = "PXR_NS::HgiBufferUsageUniform";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::HgiBufferUsageIndex32";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::HgiBufferUsageVertex";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiBufferUsageBits(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 15)
  {
    if (v3 > 3)
    {
      if (v3 == 4)
      {
        v4 = "PXR_NS::HgiShaderStageCompute";
        goto LABEL_22;
      }

      if (v3 == 8)
      {
        v4 = "PXR_NS::HgiShaderStageTessellationControl";
        goto LABEL_22;
      }
    }

    else
    {
      if (v3 == 1)
      {
        v4 = "PXR_NS::HgiShaderStageVertex";
        goto LABEL_22;
      }

      if (v3 == 2)
      {
        v4 = "PXR_NS::HgiShaderStageFragment";
        goto LABEL_22;
      }
    }
  }

  else if (v3 <= 63)
  {
    if (v3 == 16)
    {
      v4 = "PXR_NS::HgiShaderStageTessellationEval";
      goto LABEL_22;
    }

    if (v3 == 32)
    {
      v4 = "PXR_NS::HgiShaderStageGeometry";
      goto LABEL_22;
    }
  }

  else
  {
    switch(v3)
    {
      case 0x40:
        v4 = "PXR_NS::HgiShaderStagePostTessellationControl";
        goto LABEL_22;
      case 0x80:
        v4 = "PXR_NS::HgiShaderStagePostTessellationVertex";
        goto LABEL_22;
      case 0x100:
        v4 = "PXR_NS::HgiShaderStageCustomBitsBegin";
LABEL_22:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiShaderStageBits(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 == 6)
      {
        v4 = "PXR_NS::HgiBindResourceTypeTessFactors";
        goto LABEL_18;
      }

      if (v3 == 7)
      {
        v4 = "PXR_NS::HgiBindResourceTypeCount";
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    if (v3 == 4)
    {
      v4 = "PXR_NS::HgiBindResourceTypeUniformBuffer";
    }

    else
    {
      v4 = "PXR_NS::HgiBindResourceTypeStorageBuffer";
    }

LABEL_18:

    sub_29A008E78(a2, v4);
    return;
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::HgiBindResourceTypeCombinedSamplerImage";
    }

    else
    {
      v4 = "PXR_NS::HgiBindResourceTypeStorageImage";
    }

    goto LABEL_18;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HgiBindResourceTypeSampler";
    goto LABEL_18;
  }

  if (v3 == 1)
  {
    v4 = "PXR_NS::HgiBindResourceTypeSampledImage";
    goto LABEL_18;
  }

LABEL_21:
  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiBindResourceType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::HgiPolygonModePoint";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::HgiPolygonModeCount";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::HgiPolygonModeFill";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HgiPolygonModeLine";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiPolygonMode(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v4 = "PXR_NS::HgiCullModeNone";
      goto LABEL_12;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HgiCullModeFront";
      goto LABEL_12;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v4 = "PXR_NS::HgiCullModeBack";
        goto LABEL_12;
      case 3:
        v4 = "PXR_NS::HgiCullModeFrontAndBack";
        goto LABEL_12;
      case 4:
        v4 = "PXR_NS::HgiCullModeCount";
LABEL_12:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiCullMode(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::HgiWindingCount";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::HgiWindingCounterClockwise";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::HgiWindingClockwise";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiWinding(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = "PXR_NS::HgiBlendOpMin";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::HgiBlendOpMax";
        goto LABEL_19;
      case 5:
        v4 = "PXR_NS::HgiBlendOpCount";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::HgiBlendOpAdd";
        goto LABEL_19;
      case 1:
        v4 = "PXR_NS::HgiBlendOpSubtract";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::HgiBlendOpReverseSubtract";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiBlendOp(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      v4 = "PXR_NS::HgiColorMaskBlue";
      goto LABEL_15;
    }

    if (v3 == 8)
    {
      v4 = "PXR_NS::HgiColorMaskAlpha";
      goto LABEL_15;
    }
  }

  else
  {
    if (v3 == 1)
    {
      v4 = "PXR_NS::HgiColorMaskRed";
      goto LABEL_15;
    }

    if (v3 == 2)
    {
      v4 = "PXR_NS::HgiColorMaskGreen";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiColorMaskBits(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 3)
  {
    if (v3 <= 1)
    {
      if (!v3)
      {
        v4 = "PXR_NS::HgiCompareFunctionNever";
        goto LABEL_20;
      }

      if (v3 == 1)
      {
        v4 = "PXR_NS::HgiCompareFunctionLess";
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    if (v3 == 2)
    {
      v4 = "PXR_NS::HgiCompareFunctionEqual";
    }

    else
    {
      v4 = "PXR_NS::HgiCompareFunctionLEqual";
    }

LABEL_20:

    sub_29A008E78(a2, v4);
    return;
  }

  if (v3 <= 5)
  {
    if (v3 == 4)
    {
      v4 = "PXR_NS::HgiCompareFunctionGreater";
    }

    else
    {
      v4 = "PXR_NS::HgiCompareFunctionNotEqual";
    }

    goto LABEL_20;
  }

  switch(v3)
  {
    case 6:
      v4 = "PXR_NS::HgiCompareFunctionGEqual";
      goto LABEL_20;
    case 7:
      v4 = "PXR_NS::HgiCompareFunctionAlways";
      goto LABEL_20;
    case 8:
      v4 = "PXR_NS::HgiCompareFunctionCount";
      goto LABEL_20;
  }

LABEL_23:
  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiCompareFunction(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 3)
  {
    if (v3 <= 1)
    {
      if (!v3)
      {
        v4 = "PXR_NS::HgiStencilOpKeep";
        goto LABEL_20;
      }

      if (v3 == 1)
      {
        v4 = "PXR_NS::HgiStencilOpZero";
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    if (v3 == 2)
    {
      v4 = "PXR_NS::HgiStencilOpReplace";
    }

    else
    {
      v4 = "PXR_NS::HgiStencilOpIncrementClamp";
    }

LABEL_20:

    sub_29A008E78(a2, v4);
    return;
  }

  if (v3 <= 5)
  {
    if (v3 == 4)
    {
      v4 = "PXR_NS::HgiStencilOpDecrementClamp";
    }

    else
    {
      v4 = "PXR_NS::HgiStencilOpInvert";
    }

    goto LABEL_20;
  }

  switch(v3)
  {
    case 6:
      v4 = "PXR_NS::HgiStencilOpIncrementWrap";
      goto LABEL_20;
    case 7:
      v4 = "PXR_NS::HgiStencilOpDecrementWrap";
      goto LABEL_20;
    case 8:
      v4 = "PXR_NS::HgiStencilOpCount";
      goto LABEL_20;
  }

LABEL_23:
  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiStencilOp(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 2)
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::HgiComponentSwizzleZero";
        goto LABEL_21;
      case 1:
        v4 = "PXR_NS::HgiComponentSwizzleOne";
        goto LABEL_21;
      case 2:
        v4 = "PXR_NS::HgiComponentSwizzleR";
        goto LABEL_21;
    }
  }

  else
  {
    if (v3 <= 4)
    {
      if (v3 == 3)
      {
        v4 = "PXR_NS::HgiComponentSwizzleG";
      }

      else
      {
        v4 = "PXR_NS::HgiComponentSwizzleB";
      }

LABEL_21:

      sub_29A008E78(a2, v4);
      return;
    }

    if (v3 == 5)
    {
      v4 = "PXR_NS::HgiComponentSwizzleA";
      goto LABEL_21;
    }

    if (v3 == 6)
    {
      v4 = "PXR_NS::HgiComponentSwizzleCount";
      goto LABEL_21;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiComponentSwizzle(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 2)
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::HgiPrimitiveTypePointList";
        goto LABEL_21;
      case 1:
        v4 = "PXR_NS::HgiPrimitiveTypeLineList";
        goto LABEL_21;
      case 2:
        v4 = "PXR_NS::HgiPrimitiveTypeLineStrip";
        goto LABEL_21;
    }
  }

  else
  {
    if (v3 <= 4)
    {
      if (v3 == 3)
      {
        v4 = "PXR_NS::HgiPrimitiveTypeTriangleList";
      }

      else
      {
        v4 = "PXR_NS::HgiPrimitiveTypePatchList";
      }

LABEL_21:

      sub_29A008E78(a2, v4);
      return;
    }

    if (v3 == 5)
    {
      v4 = "PXR_NS::HgiPrimitiveTypeLineListWithAdjacency";
      goto LABEL_21;
    }

    if (v3 == 6)
    {
      v4 = "PXR_NS::HgiPrimitiveTypeCount";
      goto LABEL_21;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiPrimitiveType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 2)
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::HgiVertexBufferStepFunctionConstant";
        goto LABEL_21;
      case 1:
        v4 = "PXR_NS::HgiVertexBufferStepFunctionPerVertex";
        goto LABEL_21;
      case 2:
        v4 = "PXR_NS::HgiVertexBufferStepFunctionPerInstance";
        goto LABEL_21;
    }
  }

  else
  {
    if (v3 <= 4)
    {
      if (v3 == 3)
      {
        v4 = "PXR_NS::HgiVertexBufferStepFunctionPerPatch";
      }

      else
      {
        v4 = "PXR_NS::HgiVertexBufferStepFunctionPerPatchControlPoint";
      }

LABEL_21:

      sub_29A008E78(a2, v4);
      return;
    }

    if (v3 == 5)
    {
      v4 = "PXR_NS::HgiVertexBufferStepFunctionPerDrawCommand";
      goto LABEL_21;
    }

    if (v3 == 6)
    {
      v4 = "PXR_NS::HgiVertexBufferStepFunctionCount";
      goto LABEL_21;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiVertexBufferStepFunction(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::HgiSubmitWaitTypeWaitUntilCompleted";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HgiSubmitWaitTypeNoWait";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiSubmitWaitType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::HgiMemoryBarrierAll";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HgiMemoryBarrierNone";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiMemoryBarrierBits(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v4 = "PXR_NS::HgiBindingTypeValue";
      goto LABEL_12;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HgiBindingTypeUniformValue";
      goto LABEL_12;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v4 = "PXR_NS::HgiBindingTypeArray";
        goto LABEL_12;
      case 3:
        v4 = "PXR_NS::HgiBindingTypeUniformArray";
        goto LABEL_12;
      case 4:
        v4 = "PXR_NS::HgiBindingTypePointer";
LABEL_12:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiBindingType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::HgiInterpolationNoPerspective";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::HgiInterpolationFlat";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::HgiInterpolationDefault";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiInterpolationType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::HgiSamplingSample";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::HgiSamplingCentroid";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::HgiSamplingDefault";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiSamplingType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::HgiStoragePatch";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HgiStorageDefault";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiStorageType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::HgiShaderTextureTypeArrayTexture";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::HgiShaderTextureTypeShadowTexture";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::HgiShaderTextureTypeTexture";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiShaderTextureType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::HgiComputeDispatchConcurrent";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HgiComputeDispatchSerial";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiComputeDispatch(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::HgiTessellationState::Isoline";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::HgiTessellationState::Quad";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::HgiTessellationState::Triangle";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiTessellationState::PatchType(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::HgiTessellationState::TessVertex";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::HgiTessellationState::TessControl";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::HgiTessellationState::Constant";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiTessellationState::TessFactorMode(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 27)
  {
    if (v3 == 26)
    {
      v4 = "PXR_NS::HgiMetalArgumentIndexICB";
      goto LABEL_12;
    }

    if (v3 == 27)
    {
      v4 = "PXR_NS::HgiMetalArgumentIndexConstants";
      goto LABEL_12;
    }
  }

  else
  {
    switch(v3)
    {
      case 0x1C:
        v4 = "PXR_NS::HgiMetalArgumentIndexSamplers";
        goto LABEL_12;
      case 0x1D:
        v4 = "PXR_NS::HgiMetalArgumentIndexTextures";
        goto LABEL_12;
      case 0x1E:
        v4 = "PXR_NS::HgiMetalArgumentIndexBuffers";
LABEL_12:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HgiMetalArgumentIndex(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  HIDWORD(v5) = v3;
  LODWORD(v5) = v3;
  v4 = v5 >> 9;
  if (v4 > 3)
  {
    if (v4 > 5)
    {
      if (v4 == 6)
      {
        v6 = "PXR_NS::HgiMetalArgumentOffsetConstants";
        goto LABEL_18;
      }

      if (v4 == 8)
      {
        v6 = "PXR_NS::HgiMetalArgumentOffsetSize";
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    if (v4 == 4)
    {
      v6 = "PXR_NS::HgiMetalArgumentOffsetTextureVS";
    }

    else
    {
      v6 = "PXR_NS::HgiMetalArgumentOffsetTextureFS";
    }

LABEL_18:

    sub_29A008E78(a2, v6);
    return;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v6 = "PXR_NS::HgiMetalArgumentOffsetSamplerVS";
    }

    else
    {
      v6 = "PXR_NS::HgiMetalArgumentOffsetSamplerFS";
    }

    goto LABEL_18;
  }

  if (!v4)
  {
    v6 = "PXR_NS::HgiMetalArgumentOffsetBufferVS";
    goto LABEL_18;
  }

  if (v4 == 1)
  {
    v6 = "PXR_NS::HgiMetalArgumentOffsetBufferFS";
    goto LABEL_18;
  }

LABEL_21:
  std::to_string(&v11, v3);
  v7 = std::string::insert(&v11, 0, "PXR_NS::HgiMetalArgumentOffset(rawValue: ");
  v8 = *&v7->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v12, ")");
  v10 = *&v9->__r_.__value_.__l.__data_;
  a2[2] = *(&v9->__r_.__value_.__l + 2);
  *a2 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = "PXR_NS::HdWrapMirror";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::HdWrapNoOpinion";
        goto LABEL_19;
      case 5:
        v4 = "PXR_NS::HdWrapLegacyNoOpinionFallbackRepeat";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::HdWrapClamp";
        goto LABEL_19;
      case 1:
        v4 = "PXR_NS::HdWrapRepeat";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::HdWrapBlack";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdWrap(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = "PXR_NS::HdMinFilterLinearMipmapNearest";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::HdMinFilterNearestMipmapLinear";
        goto LABEL_19;
      case 5:
        v4 = "PXR_NS::HdMinFilterLinearMipmapLinear";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::HdMinFilterNearest";
        goto LABEL_19;
      case 1:
        v4 = "PXR_NS::HdMinFilterLinear";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::HdMinFilterNearestMipmapNearest";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdMinFilter(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::HdMagFilterLinear";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HdMagFilterNearest";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdMagFilter(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::HdBorderColorOpaqueWhite";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::HdBorderColorOpaqueBlack";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::HdBorderColorTransparentBlack";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdBorderColor(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 3)
  {
    if (v3 <= 1)
    {
      if (!v3)
      {
        v4 = "PXR_NS::HdCmpFuncNever";
        goto LABEL_20;
      }

      if (v3 == 1)
      {
        v4 = "PXR_NS::HdCmpFuncLess";
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    if (v3 == 2)
    {
      v4 = "PXR_NS::HdCmpFuncEqual";
    }

    else
    {
      v4 = "PXR_NS::HdCmpFuncLEqual";
    }

LABEL_20:

    sub_29A008E78(a2, v4);
    return;
  }

  if (v3 <= 5)
  {
    if (v3 == 4)
    {
      v4 = "PXR_NS::HdCmpFuncGreater";
    }

    else
    {
      v4 = "PXR_NS::HdCmpFuncNotEqual";
    }

    goto LABEL_20;
  }

  switch(v3)
  {
    case 6:
      v4 = "PXR_NS::HdCmpFuncGEqual";
      goto LABEL_20;
    case 7:
      v4 = "PXR_NS::HdCmpFuncAlways";
      goto LABEL_20;
    case 8:
      v4 = "PXR_NS::HdCmpFuncLast";
      goto LABEL_20;
  }

LABEL_23:
  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdCompareFunction(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 3)
  {
    if (v3 <= 1)
    {
      if (!v3)
      {
        v4 = "PXR_NS::HdStencilOpKeep";
        goto LABEL_20;
      }

      if (v3 == 1)
      {
        v4 = "PXR_NS::HdStencilOpZero";
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    if (v3 == 2)
    {
      v4 = "PXR_NS::HdStencilOpReplace";
    }

    else
    {
      v4 = "PXR_NS::HdStencilOpIncrement";
    }

LABEL_20:

    sub_29A008E78(a2, v4);
    return;
  }

  if (v3 <= 5)
  {
    if (v3 == 4)
    {
      v4 = "PXR_NS::HdStencilOpIncrementWrap";
    }

    else
    {
      v4 = "PXR_NS::HdStencilOpDecrement";
    }

    goto LABEL_20;
  }

  switch(v3)
  {
    case 6:
      v4 = "PXR_NS::HdStencilOpDecrementWrap";
      goto LABEL_20;
    case 7:
      v4 = "PXR_NS::HdStencilOpInvert";
      goto LABEL_20;
    case 8:
      v4 = "PXR_NS::HdStencilOpLast";
      goto LABEL_20;
  }

LABEL_23:
  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdStencilOp(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = "PXR_NS::HdBlendOpMin";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::HdBlendOpMax";
        goto LABEL_19;
      case 5:
        v4 = "PXR_NS::HdBlendOpLast";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::HdBlendOpAdd";
        goto LABEL_19;
      case 1:
        v4 = "PXR_NS::HdBlendOpSubtract";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::HdBlendOpReverseSubtract";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdBlendOp(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = "PXR_NS::HdCullStyleFront";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::HdCullStyleBackUnlessDoubleSided";
        goto LABEL_19;
      case 5:
        v4 = "PXR_NS::HdCullStyleFrontUnlessDoubleSided";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::HdCullStyleDontCare";
        goto LABEL_19;
      case 1:
        v4 = "PXR_NS::HdCullStyleNothing";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::HdCullStyleBack";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdCullStyle(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::HdPolygonModeLine";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HdPolygonModeFill";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdPolygonMode(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 == 6)
      {
        v4 = "PXR_NS::HdMeshGeomStyleHullEdgeOnSurf";
        goto LABEL_18;
      }

      if (v3 == 7)
      {
        v4 = "PXR_NS::HdMeshGeomStylePoints";
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    if (v3 == 4)
    {
      v4 = "PXR_NS::HdMeshGeomStyleHull";
    }

    else
    {
      v4 = "PXR_NS::HdMeshGeomStyleHullEdgeOnly";
    }

LABEL_18:

    sub_29A008E78(a2, v4);
    return;
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::HdMeshGeomStyleEdgeOnly";
    }

    else
    {
      v4 = "PXR_NS::HdMeshGeomStyleEdgeOnSurf";
    }

    goto LABEL_18;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HdMeshGeomStyleInvalid";
    goto LABEL_18;
  }

  if (v3 == 1)
  {
    v4 = "PXR_NS::HdMeshGeomStyleSurf";
    goto LABEL_18;
  }

LABEL_21:
  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdMeshGeomStyle(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::HdBasisCurvesGeomStylePatch";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::HdBasisCurvesGeomStylePoints";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::HdBasisCurvesGeomStyleInvalid";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HdBasisCurvesGeomStyleWire";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdBasisCurvesGeomStyle(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::HdPointsGeomStylePoints";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HdPointsGeomStyleInvalid";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdPointsGeomStyle(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 2)
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::HdInterpolationConstant";
        goto LABEL_21;
      case 1:
        v4 = "PXR_NS::HdInterpolationUniform";
        goto LABEL_21;
      case 2:
        v4 = "PXR_NS::HdInterpolationVarying";
        goto LABEL_21;
    }
  }

  else
  {
    if (v3 <= 4)
    {
      if (v3 == 3)
      {
        v4 = "PXR_NS::HdInterpolationVertex";
      }

      else
      {
        v4 = "PXR_NS::HdInterpolationFaceVarying";
      }

LABEL_21:

      sub_29A008E78(a2, v4);
      return;
    }

    if (v3 == 5)
    {
      v4 = "PXR_NS::HdInterpolationInstance";
      goto LABEL_21;
    }

    if (v3 == 6)
    {
      v4 = "PXR_NS::HdInterpolationCount";
      goto LABEL_21;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdInterpolation(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::HdDepthPriorityCount";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::HdDepthPriorityFarthest";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::HdDepthPriorityNearest";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdDepthPriority(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 7)
  {
    switch(v3)
    {
      case 8:
        v4 = "PXR_NS::HdBufferArrayUsageHintBitsStorage";
        goto LABEL_19;
      case 0x10:
        v4 = "PXR_NS::HdBufferArrayUsageHintBitsVertex";
        goto LABEL_19;
      case 0x20:
        v4 = "PXR_NS::HdBufferArrayUsageHintBitsIndex";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 1:
        v4 = "PXR_NS::HdBufferArrayUsageHintBitsImmutable";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::HdBufferArrayUsageHintBitsSizeVarying";
        goto LABEL_19;
      case 4:
        v4 = "PXR_NS::HdBufferArrayUsageHintBitsUniform";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdBufferArrayUsageHintBits(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3)
  {
    std::to_string(&v8, v3);
    v4 = std::string::insert(&v8, 0, "PXR_NS::HdGeomSubset::Type(rawValue: ");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v9.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v9.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = std::string::append(&v9, ")");
    v7 = *&v6->__r_.__value_.__l.__data_;
    a2[2] = *(&v6->__r_.__value_.__l + 2);
    *a2 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    sub_29A008E78(a2, "PXR_NS::HdGeomSubset::TypeFaceSet");
  }
}

{
  v3 = *a1;
  if (v3 > 3)
  {
    switch(v3)
    {
      case 4:
        v4 = "PXR_NS::HdCamera::DirtyClipPlanes";
        goto LABEL_19;
      case 8:
        v4 = "PXR_NS::HdCamera::DirtyWindowPolicy";
        goto LABEL_19;
      case 0xF:
        v4 = "PXR_NS::HdCamera::AllDirty";
        goto LABEL_19;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        v4 = "PXR_NS::HdCamera::Clean";
        goto LABEL_19;
      case 1:
        v4 = "PXR_NS::HdCamera::DirtyTransform";
        goto LABEL_19;
      case 2:
        v4 = "PXR_NS::HdCamera::DirtyParams";
LABEL_19:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdCamera::DirtyBits(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::HdCamera::Orthographic";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HdCamera::Perspective";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdCamera::Projection(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::HdCollectionExpressionEvaluator::ShallowestMatchesAndAllDescendants";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::HdCollectionExpressionEvaluator::ShallowestMatches";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::HdCollectionExpressionEvaluator::MatchAll";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdCollectionExpressionEvaluator::MatchKind(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::HdCoordSys::DirtyTransform";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::HdCoordSys::AllDirty";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::HdCoordSys::Clean";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HdCoordSys::DirtyName";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdCoordSys::DirtyBits(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::HdField::DirtyParams";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::HdField::AllDirty";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::HdField::Clean";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HdField::DirtyTransform";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdField::DirtyBits(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 7)
  {
    if (v3 >= 0x10000)
    {
      if (v3 == 0x10000)
      {
        v4 = "PXR_NS::HdLight::DirtyInstancer";
        goto LABEL_20;
      }

      if (v3 == 65567)
      {
        v4 = "PXR_NS::HdLight::AllDirty";
        goto LABEL_20;
      }
    }

    else
    {
      if (v3 == 8)
      {
        v4 = "PXR_NS::HdLight::DirtyCollection";
        goto LABEL_20;
      }

      if (v3 == 16)
      {
        v4 = "PXR_NS::HdLight::DirtyResource";
        goto LABEL_20;
      }
    }
  }

  else if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::HdLight::DirtyParams";
      goto LABEL_20;
    }

    if (v3 == 4)
    {
      v4 = "PXR_NS::HdLight::DirtyShadowParams";
      goto LABEL_20;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::HdLight::Clean";
      goto LABEL_20;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HdLight::DirtyTransform";
LABEL_20:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdLight::DirtyBits(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::HdRenderBuffer::DirtyDescription";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::HdRenderBuffer::Clean";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdRenderBuffer::DirtyBits(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::HdGpGenerativeProcedural::ContinuingWithNewChanges";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::HdGpGenerativeProcedural::FinishedWithNewChanges";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::HdGpGenerativeProcedural::Continuing";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HdGpGenerativeProcedural::Finished";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdGpGenerativeProcedural::AsyncState(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 0xFFFF)
  {

    sub_29A008E78(a2, "PXR_NS::HdStBinding::NOT_EXIST");
  }

  else
  {
    std::to_string(&v8, v3);
    v4 = std::string::insert(&v8, 0, "PXR_NS::HdStBinding::Location(rawValue: ");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v9.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v9.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = std::string::append(&v9, ")");
    v7 = *&v6->__r_.__value_.__l.__data_;
    a2[2] = *(&v6->__r_.__value_.__l + 2);
    *a2 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }
}

{
  v3 = *a1;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v4 = "PXR_NS::HdStComputeQueueZero";
      goto LABEL_12;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::HdStComputeQueueOne";
      goto LABEL_12;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v4 = "PXR_NS::HdStComputeQueueTwo";
        goto LABEL_12;
      case 3:
        v4 = "PXR_NS::HdStComputeQueueThree";
        goto LABEL_12;
      case 4:
        v4 = "PXR_NS::HdStComputeQueueCount";
LABEL_12:

        sub_29A008E78(a2, v4);
        return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::HdStComputeQueue(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  switch(v3)
  {
    case 2:
      v4 = "PXR_NS::UsdImagingPrimAdapter::RepresentedByAncestor";
      goto LABEL_7;
    case 1:
      v4 = "PXR_NS::UsdImagingPrimAdapter::RepresentsSelfAndDescendents";
      goto LABEL_7;
    case 0:
      v4 = "PXR_NS::UsdImagingPrimAdapter::RepresentsSelf";
LABEL_7:

      sub_29A008E78(a2, v4);
      return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdImagingPrimAdapter::PopulationMode(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "PXR_NS::UsdImagingGLRendererSetting::TYPE_FLOAT";
      goto LABEL_15;
    }

    if (v3 == 3)
    {
      v4 = "PXR_NS::UsdImagingGLRendererSetting::TYPE_STRING";
      goto LABEL_15;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = "PXR_NS::UsdImagingGLRendererSetting::TYPE_FLAG";
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = "PXR_NS::UsdImagingGLRendererSetting::TYPE_INT";
LABEL_15:

      sub_29A008E78(a2, v4);
      return;
    }
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::UsdImagingGLRendererSetting::Type(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 <= 3)
  {
    if (v3 <= 1)
    {
      if (!v3)
      {
        v4 = "PXR_NS::SdfLengthUnitMillimeter";
        goto LABEL_20;
      }

      if (v3 == 1)
      {
        v4 = "PXR_NS::SdfLengthUnitCentimeter";
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    if (v3 == 2)
    {
      v4 = "PXR_NS::SdfLengthUnitDecimeter";
    }

    else
    {
      v4 = "PXR_NS::SdfLengthUnitMeter";
    }

LABEL_20:

    sub_29A008E78(a2, v4);
    return;
  }

  if (v3 <= 5)
  {
    if (v3 == 4)
    {
      v4 = "PXR_NS::SdfLengthUnitKilometer";
    }

    else
    {
      v4 = "PXR_NS::SdfLengthUnitInch";
    }

    goto LABEL_20;
  }

  switch(v3)
  {
    case 6:
      v4 = "PXR_NS::SdfLengthUnitFoot";
      goto LABEL_20;
    case 7:
      v4 = "PXR_NS::SdfLengthUnitYard";
      goto LABEL_20;
    case 8:
      v4 = "PXR_NS::SdfLengthUnitMile";
      goto LABEL_20;
  }

LABEL_23:
  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::SdfLengthUnit(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::SdfAngularUnitRadians";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::SdfAngularUnitDegrees";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::SdfAngularUnit(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = "PXR_NS::SdfDimensionlessUnitDefault";
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = "PXR_NS::SdfDimensionlessUnitPercent";
LABEL_5:

    sub_29A008E78(a2, v4);
    return;
  }

  std::to_string(&v9, v3);
  v5 = std::string::insert(&v9, 0, "PXR_NS::SdfDimensionlessUnit(rawValue: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v10, ")");
  v8 = *&v7->__r_.__value_.__l.__data_;
  a2[2] = *(&v7->__r_.__value_.__l + 2);
  *a2 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_29B08FA2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B08FB7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B08FCCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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