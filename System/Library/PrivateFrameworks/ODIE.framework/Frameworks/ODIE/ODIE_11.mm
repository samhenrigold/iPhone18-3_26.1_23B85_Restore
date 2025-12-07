uint64_t llvm::getTypeName<long>()
{
  if ((atomic_load_explicit(&qword_27FC1D548, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D548))
  {
    qword_27FC1D538 = llvm::detail::getTypeNameImpl<long>();
    unk_27FC1D540 = v1;
    __cxa_guard_release(&qword_27FC1D548);
  }

  return qword_27FC1D538;
}

const char *llvm::detail::getTypeNameImpl<long>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = long]";
  v6 = 66;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::DenseElementsAttr::tryGetValues<long,void>(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*(*a2 + 16) + 8))();
  result = isValidIntOrFloat(v4, 8, 1, 1u);
  if (result)
  {
    v6 = *a2;
    v7 = *(*a2 + 32);
    v8 = *(*a2 + 24);
    v9 = *(*a2 + 8);
    v10 = *(v6 + 16);
    result = (*(v10 + 24))(v10, v9);
    if (v11)
    {
      v12 = 8 * v11;
      v13 = 1;
      do
      {
        v14 = *result;
        result += 8;
        v13 *= v14;
        v12 -= 8;
      }

      while (v12);
    }

    else
    {
      v13 = 1;
    }

    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = v13;
    v15 = 1;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
  }

  else
  {
    v15 = 0;
    *a1 = 0;
  }

  *(a1 + 64) = v15;
  return result;
}

uint64_t mlir::detail::TypeIDResolver<unsigned long,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D558, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D558))
  {
    Type = llvm::getTypeName<unsigned long>();
    qword_27FC1D550 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(Type, v2);
    __cxa_guard_release(&qword_27FC1D558);
  }

  return qword_27FC1D550;
}

uint64_t llvm::getTypeName<unsigned long>()
{
  if ((atomic_load_explicit(&qword_27FC1D570, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D570))
  {
    qword_27FC1D560 = llvm::detail::getTypeNameImpl<unsigned long>();
    *algn_27FC1D568 = v1;
    __cxa_guard_release(&qword_27FC1D570);
  }

  return qword_27FC1D560;
}

const char *llvm::detail::getTypeNameImpl<unsigned long>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = unsigned long]";
  v6 = 75;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::DenseElementsAttr::tryGetValues<unsigned long,void>(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*(*a2 + 16) + 8))();
  result = isValidIntOrFloat(v4, 8, 1, 0);
  if (result)
  {
    v6 = *a2;
    v7 = *(*a2 + 32);
    v8 = *(*a2 + 24);
    v9 = *(*a2 + 8);
    v10 = *(v6 + 16);
    result = (*(v10 + 24))(v10, v9);
    if (v11)
    {
      v12 = 8 * v11;
      v13 = 1;
      do
      {
        v14 = *result;
        result += 8;
        v13 *= v14;
        v12 -= 8;
      }

      while (v12);
    }

    else
    {
      v13 = 1;
    }

    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = v13;
    v15 = 1;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
  }

  else
  {
    v15 = 0;
    *a1 = 0;
  }

  *(a1 + 64) = v15;
  return result;
}

uint64_t mlir::detail::TypeIDResolver<std::complex<unsigned char>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D580, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D580))
  {
    v1 = llvm::getTypeName<std::complex<unsigned char>>();
    qword_27FC1D578 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1D580);
  }

  return qword_27FC1D578;
}

uint64_t llvm::getTypeName<std::complex<unsigned char>>()
{
  if ((atomic_load_explicit(&qword_27FC1D598, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D598))
  {
    qword_27FC1D588 = llvm::detail::getTypeNameImpl<std::complex<unsigned char>>();
    unk_27FC1D590 = v1;
    __cxa_guard_release(&qword_27FC1D598);
  }

  return qword_27FC1D588;
}

const char *llvm::detail::getTypeNameImpl<std::complex<unsigned char>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<unsigned char>]";
  v6 = 89;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned char>,unsigned char,void>(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*(*a2 + 16) + 8))();
  result = isValidIntOrFloat(*(v4 + 8), 1, 1, 0);
  if (result)
  {
    v6 = *a2;
    v7 = *(*a2 + 32);
    v8 = *(*a2 + 24);
    v9 = *(*a2 + 8);
    v10 = *(v6 + 16);
    result = (*(v10 + 24))(v10, v9);
    if (v11)
    {
      v12 = 8 * v11;
      v13 = 1;
      do
      {
        v14 = *result;
        result += 8;
        v13 *= v14;
        v12 -= 8;
      }

      while (v12);
    }

    else
    {
      v13 = 1;
    }

    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = v13;
    v15 = 1;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
  }

  else
  {
    v15 = 0;
    *a1 = 0;
  }

  *(a1 + 64) = v15;
  return result;
}

uint64_t mlir::detail::TypeIDResolver<std::complex<unsigned short>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D5A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D5A8))
  {
    v1 = llvm::getTypeName<std::complex<unsigned short>>();
    qword_27FC1D5A0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1D5A8);
  }

  return qword_27FC1D5A0;
}

uint64_t llvm::getTypeName<std::complex<unsigned short>>()
{
  if ((atomic_load_explicit(&qword_27FC1D5C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D5C0))
  {
    qword_27FC1D5B0 = llvm::detail::getTypeNameImpl<std::complex<unsigned short>>();
    *algn_27FC1D5B8 = v1;
    __cxa_guard_release(&qword_27FC1D5C0);
  }

  return qword_27FC1D5B0;
}

const char *llvm::detail::getTypeNameImpl<std::complex<unsigned short>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<unsigned short>]";
  v6 = 90;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned short>,unsigned short,void>(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*(*a2 + 16) + 8))();
  result = isValidIntOrFloat(*(v4 + 8), 2, 1, 0);
  if (result)
  {
    v6 = *a2;
    v7 = *(*a2 + 32);
    v8 = *(*a2 + 24);
    v9 = *(*a2 + 8);
    v10 = *(v6 + 16);
    result = (*(v10 + 24))(v10, v9);
    if (v11)
    {
      v12 = 8 * v11;
      v13 = 1;
      do
      {
        v14 = *result;
        result += 8;
        v13 *= v14;
        v12 -= 8;
      }

      while (v12);
    }

    else
    {
      v13 = 1;
    }

    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = v13;
    v15 = 1;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
  }

  else
  {
    v15 = 0;
    *a1 = 0;
  }

  *(a1 + 64) = v15;
  return result;
}

uint64_t mlir::detail::TypeIDResolver<std::complex<unsigned int>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D5D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D5D0))
  {
    v1 = llvm::getTypeName<std::complex<unsigned int>>();
    qword_27FC1D5C8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1D5D0);
  }

  return qword_27FC1D5C8;
}

uint64_t llvm::getTypeName<std::complex<unsigned int>>()
{
  if ((atomic_load_explicit(&qword_27FC1D5E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D5E8))
  {
    qword_27FC1D5D8 = llvm::detail::getTypeNameImpl<std::complex<unsigned int>>();
    unk_27FC1D5E0 = v1;
    __cxa_guard_release(&qword_27FC1D5E8);
  }

  return qword_27FC1D5D8;
}

const char *llvm::detail::getTypeNameImpl<std::complex<unsigned int>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<unsigned int>]";
  v6 = 88;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned int>,unsigned int,void>(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*(*a2 + 16) + 8))();
  result = isValidIntOrFloat(*(v4 + 8), 4, 1, 0);
  if (result)
  {
    v6 = *a2;
    v7 = *(*a2 + 32);
    v8 = *(*a2 + 24);
    v9 = *(*a2 + 8);
    v10 = *(v6 + 16);
    result = (*(v10 + 24))(v10, v9);
    if (v11)
    {
      v12 = 8 * v11;
      v13 = 1;
      do
      {
        v14 = *result;
        result += 8;
        v13 *= v14;
        v12 -= 8;
      }

      while (v12);
    }

    else
    {
      v13 = 1;
    }

    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = v13;
    v15 = 1;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
  }

  else
  {
    v15 = 0;
    *a1 = 0;
  }

  *(a1 + 64) = v15;
  return result;
}

uint64_t mlir::detail::TypeIDResolver<std::complex<unsigned long long>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D5F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D5F8))
  {
    v1 = llvm::getTypeName<std::complex<unsigned long long>>();
    qword_27FC1D5F0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1D5F8);
  }

  return qword_27FC1D5F0;
}

uint64_t llvm::getTypeName<std::complex<unsigned long long>>()
{
  if ((atomic_load_explicit(&qword_27FC1D610, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D610))
  {
    qword_27FC1D600 = llvm::detail::getTypeNameImpl<std::complex<unsigned long long>>();
    *algn_27FC1D608 = v1;
    __cxa_guard_release(&qword_27FC1D610);
  }

  return qword_27FC1D600;
}

const char *llvm::detail::getTypeNameImpl<std::complex<unsigned long long>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<unsigned long long>]";
  v6 = 94;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned long long>,unsigned long long,void>(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*(*a2 + 16) + 8))();
  result = isValidIntOrFloat(*(v4 + 8), 8, 1, 0);
  if (result)
  {
    v6 = *a2;
    v7 = *(*a2 + 32);
    v8 = *(*a2 + 24);
    v9 = *(*a2 + 8);
    v10 = *(v6 + 16);
    result = (*(v10 + 24))(v10, v9);
    if (v11)
    {
      v12 = 8 * v11;
      v13 = 1;
      do
      {
        v14 = *result;
        result += 8;
        v13 *= v14;
        v12 -= 8;
      }

      while (v12);
    }

    else
    {
      v13 = 1;
    }

    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = v13;
    v15 = 1;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
  }

  else
  {
    v15 = 0;
    *a1 = 0;
  }

  *(a1 + 64) = v15;
  return result;
}

uint64_t mlir::detail::TypeIDResolver<std::complex<signed char>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D620, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D620))
  {
    v1 = llvm::getTypeName<std::complex<signed char>>();
    qword_27FC1D618 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1D620);
  }

  return qword_27FC1D618;
}

uint64_t llvm::getTypeName<std::complex<signed char>>()
{
  if ((atomic_load_explicit(&qword_27FC1D638, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D638))
  {
    qword_27FC1D628 = llvm::detail::getTypeNameImpl<std::complex<signed char>>();
    unk_27FC1D630 = v1;
    __cxa_guard_release(&qword_27FC1D638);
  }

  return qword_27FC1D628;
}

const char *llvm::detail::getTypeNameImpl<std::complex<signed char>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<signed char>]";
  v6 = 87;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<signed char>,signed char,void>(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*(*a2 + 16) + 8))();
  result = isValidIntOrFloat(*(v4 + 8), 1, 1, 1u);
  if (result)
  {
    v6 = *a2;
    v7 = *(*a2 + 32);
    v8 = *(*a2 + 24);
    v9 = *(*a2 + 8);
    v10 = *(v6 + 16);
    result = (*(v10 + 24))(v10, v9);
    if (v11)
    {
      v12 = 8 * v11;
      v13 = 1;
      do
      {
        v14 = *result;
        result += 8;
        v13 *= v14;
        v12 -= 8;
      }

      while (v12);
    }

    else
    {
      v13 = 1;
    }

    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = v13;
    v15 = 1;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
  }

  else
  {
    v15 = 0;
    *a1 = 0;
  }

  *(a1 + 64) = v15;
  return result;
}

uint64_t mlir::detail::TypeIDResolver<std::complex<short>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D648, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D648))
  {
    v1 = llvm::getTypeName<std::complex<short>>();
    qword_27FC1D640 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1D648);
  }

  return qword_27FC1D640;
}

uint64_t llvm::getTypeName<std::complex<short>>()
{
  if ((atomic_load_explicit(&qword_27FC1D660, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D660))
  {
    qword_27FC1D650 = llvm::detail::getTypeNameImpl<std::complex<short>>();
    *algn_27FC1D658 = v1;
    __cxa_guard_release(&qword_27FC1D660);
  }

  return qword_27FC1D650;
}

const char *llvm::detail::getTypeNameImpl<std::complex<short>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<short>]";
  v6 = 81;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<short>,short,void>(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*(*a2 + 16) + 8))();
  result = isValidIntOrFloat(*(v4 + 8), 2, 1, 1u);
  if (result)
  {
    v6 = *a2;
    v7 = *(*a2 + 32);
    v8 = *(*a2 + 24);
    v9 = *(*a2 + 8);
    v10 = *(v6 + 16);
    result = (*(v10 + 24))(v10, v9);
    if (v11)
    {
      v12 = 8 * v11;
      v13 = 1;
      do
      {
        v14 = *result;
        result += 8;
        v13 *= v14;
        v12 -= 8;
      }

      while (v12);
    }

    else
    {
      v13 = 1;
    }

    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = v13;
    v15 = 1;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
  }

  else
  {
    v15 = 0;
    *a1 = 0;
  }

  *(a1 + 64) = v15;
  return result;
}

uint64_t mlir::detail::TypeIDResolver<std::complex<int>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D670, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D670))
  {
    v1 = llvm::getTypeName<std::complex<int>>();
    qword_27FC1D668 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1D670);
  }

  return qword_27FC1D668;
}

uint64_t llvm::getTypeName<std::complex<int>>()
{
  if ((atomic_load_explicit(&qword_27FC1D688, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D688))
  {
    qword_27FC1D678 = llvm::detail::getTypeNameImpl<std::complex<int>>();
    unk_27FC1D680 = v1;
    __cxa_guard_release(&qword_27FC1D688);
  }

  return qword_27FC1D678;
}

const char *llvm::detail::getTypeNameImpl<std::complex<int>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<int>]";
  v6 = 79;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<int>,int,void>(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*(*a2 + 16) + 8))();
  result = isValidIntOrFloat(*(v4 + 8), 4, 1, 1u);
  if (result)
  {
    v6 = *a2;
    v7 = *(*a2 + 32);
    v8 = *(*a2 + 24);
    v9 = *(*a2 + 8);
    v10 = *(v6 + 16);
    result = (*(v10 + 24))(v10, v9);
    if (v11)
    {
      v12 = 8 * v11;
      v13 = 1;
      do
      {
        v14 = *result;
        result += 8;
        v13 *= v14;
        v12 -= 8;
      }

      while (v12);
    }

    else
    {
      v13 = 1;
    }

    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = v13;
    v15 = 1;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
  }

  else
  {
    v15 = 0;
    *a1 = 0;
  }

  *(a1 + 64) = v15;
  return result;
}

uint64_t mlir::detail::TypeIDResolver<std::complex<long long>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D698, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D698))
  {
    v1 = llvm::getTypeName<std::complex<long long>>();
    qword_27FC1D690 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1D698);
  }

  return qword_27FC1D690;
}

uint64_t llvm::getTypeName<std::complex<long long>>()
{
  if ((atomic_load_explicit(&qword_27FC1D6B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D6B0))
  {
    qword_27FC1D6A0 = llvm::detail::getTypeNameImpl<std::complex<long long>>();
    *algn_27FC1D6A8 = v1;
    __cxa_guard_release(&qword_27FC1D6B0);
  }

  return qword_27FC1D6A0;
}

const char *llvm::detail::getTypeNameImpl<std::complex<long long>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<long long>]";
  v6 = 85;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<long long>,long long,void>(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*(*a2 + 16) + 8))();
  result = isValidIntOrFloat(*(v4 + 8), 8, 1, 1u);
  if (result)
  {
    v6 = *a2;
    v7 = *(*a2 + 32);
    v8 = *(*a2 + 24);
    v9 = *(*a2 + 8);
    v10 = *(v6 + 16);
    result = (*(v10 + 24))(v10, v9);
    if (v11)
    {
      v12 = 8 * v11;
      v13 = 1;
      do
      {
        v14 = *result;
        result += 8;
        v13 *= v14;
        v12 -= 8;
      }

      while (v12);
    }

    else
    {
      v13 = 1;
    }

    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = v13;
    v15 = 1;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
  }

  else
  {
    v15 = 0;
    *a1 = 0;
  }

  *(a1 + 64) = v15;
  return result;
}

uint64_t mlir::detail::TypeIDResolver<float,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D6C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D6C0))
  {
    Type = llvm::getTypeName<float>();
    qword_27FC1D6B8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(Type, v2);
    __cxa_guard_release(&qword_27FC1D6C0);
  }

  return qword_27FC1D6B8;
}

uint64_t llvm::getTypeName<float>()
{
  if ((atomic_load_explicit(&qword_27FC1D6D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D6D8))
  {
    qword_27FC1D6C8 = llvm::detail::getTypeNameImpl<float>();
    unk_27FC1D6D0 = v1;
    __cxa_guard_release(&qword_27FC1D6D8);
  }

  return qword_27FC1D6C8;
}

const char *llvm::detail::getTypeNameImpl<float>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = float]";
  v6 = 67;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::detail::TypeIDResolver<double,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D6E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D6E8))
  {
    Type = llvm::getTypeName<double>();
    qword_27FC1D6E0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(Type, v2);
    __cxa_guard_release(&qword_27FC1D6E8);
  }

  return qword_27FC1D6E0;
}

uint64_t llvm::getTypeName<double>()
{
  if ((atomic_load_explicit(&qword_27FC1D700, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D700))
  {
    qword_27FC1D6F0 = llvm::detail::getTypeNameImpl<double>();
    *algn_27FC1D6F8 = v1;
    __cxa_guard_release(&qword_27FC1D700);
  }

  return qword_27FC1D6F0;
}

const char *llvm::detail::getTypeNameImpl<double>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = double]";
  v6 = 68;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::DenseElementsAttr::tryGetValues<double,void>(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*(*a2 + 16) + 8))();
  result = isValidIntOrFloat(v4, 8, 0, 1u);
  if (result)
  {
    v6 = *a2;
    v7 = *(*a2 + 32);
    v8 = *(*a2 + 24);
    v9 = *(*a2 + 8);
    v10 = *(v6 + 16);
    result = (*(v10 + 24))(v10, v9);
    if (v11)
    {
      v12 = 8 * v11;
      v13 = 1;
      do
      {
        v14 = *result;
        result += 8;
        v13 *= v14;
        v12 -= 8;
      }

      while (v12);
    }

    else
    {
      v13 = 1;
    }

    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = v13;
    v15 = 1;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
  }

  else
  {
    v15 = 0;
    *a1 = 0;
  }

  *(a1 + 64) = v15;
  return result;
}

uint64_t mlir::detail::TypeIDResolver<std::complex<float>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D710, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D710))
  {
    v1 = llvm::getTypeName<std::complex<float>>();
    qword_27FC1D708 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1D710);
  }

  return qword_27FC1D708;
}

uint64_t llvm::getTypeName<std::complex<float>>()
{
  if ((atomic_load_explicit(&qword_27FC1D728, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D728))
  {
    qword_27FC1D718 = llvm::detail::getTypeNameImpl<std::complex<float>>();
    unk_27FC1D720 = v1;
    __cxa_guard_release(&qword_27FC1D728);
  }

  return qword_27FC1D718;
}

const char *llvm::detail::getTypeNameImpl<std::complex<float>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<float>]";
  v6 = 81;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<float>,float,void>(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*(*a2 + 16) + 8))();
  result = isValidIntOrFloat(*(v4 + 8), 4, 0, 1u);
  if (result)
  {
    v6 = *a2;
    v7 = *(*a2 + 32);
    v8 = *(*a2 + 24);
    v9 = *(*a2 + 8);
    v10 = *(v6 + 16);
    result = (*(v10 + 24))(v10, v9);
    if (v11)
    {
      v12 = 8 * v11;
      v13 = 1;
      do
      {
        v14 = *result;
        result += 8;
        v13 *= v14;
        v12 -= 8;
      }

      while (v12);
    }

    else
    {
      v13 = 1;
    }

    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = v13;
    v15 = 1;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
  }

  else
  {
    v15 = 0;
    *a1 = 0;
  }

  *(a1 + 64) = v15;
  return result;
}

uint64_t mlir::detail::TypeIDResolver<std::complex<double>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D738, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D738))
  {
    v1 = llvm::getTypeName<std::complex<double>>();
    qword_27FC1D730 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1D738);
  }

  return qword_27FC1D730;
}

uint64_t llvm::getTypeName<std::complex<double>>()
{
  if ((atomic_load_explicit(&qword_27FC1D750, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D750))
  {
    qword_27FC1D740 = llvm::detail::getTypeNameImpl<std::complex<double>>();
    *algn_27FC1D748 = v1;
    __cxa_guard_release(&qword_27FC1D750);
  }

  return qword_27FC1D740;
}

const char *llvm::detail::getTypeNameImpl<std::complex<double>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<double>]";
  v6 = 82;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<double>,double,void>(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*(*a2 + 16) + 8))();
  result = isValidIntOrFloat(*(v4 + 8), 8, 0, 1u);
  if (result)
  {
    v6 = *a2;
    v7 = *(*a2 + 32);
    v8 = *(*a2 + 24);
    v9 = *(*a2 + 8);
    v10 = *(v6 + 16);
    result = (*(v10 + 24))(v10, v9);
    if (v11)
    {
      v12 = 8 * v11;
      v13 = 1;
      do
      {
        v14 = *result;
        result += 8;
        v13 *= v14;
        v12 -= 8;
      }

      while (v12);
    }

    else
    {
      v13 = 1;
    }

    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = v13;
    v15 = 1;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
  }

  else
  {
    v15 = 0;
    *a1 = 0;
  }

  *(a1 + 64) = v15;
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::Attribute,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::Attribute>();
      mlir::detail::TypeIDResolver<mlir::Attribute,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 1632);
}

uint64_t llvm::getTypeName<mlir::Attribute>()
{
  {
    llvm::getTypeName<mlir::Attribute>(void)::Name = llvm::detail::getTypeNameImpl<mlir::Attribute>();
    *algn_27FC17678 = v1;
  }

  return llvm::getTypeName<mlir::Attribute>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::Attribute>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::Attribute]";
  v6 = 77;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::DenseElementsAttr::AttributeElementIterator,mlir::Attribute>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16) + a2;
  v4[0] = *(a1 + 8);
  v4[1] = v2;
  return mlir::DenseElementsAttr::AttributeElementIterator::operator*(v4);
}

uint64_t mlir::detail::TypeIDResolver<llvm::APInt,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<llvm::APInt>();
      mlir::detail::TypeIDResolver<llvm::APInt,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 1672);
}

uint64_t llvm::getTypeName<llvm::APInt>()
{
  {
    llvm::getTypeName<llvm::APInt>(void)::Name = llvm::detail::getTypeNameImpl<llvm::APInt>();
    unk_27FC176A0 = v1;
  }

  return llvm::getTypeName<llvm::APInt>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<llvm::APInt>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = llvm::APInt]";
  v6 = 73;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::DenseElementsAttr::IntElementIterator,llvm::APInt>::at(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 32);
  v5 = *(a1 + 24) + a2;
  v6 = v3;
  mlir::DenseElementsAttr::IntElementIterator::operator*(&v4, a3);
}

uint64_t mlir::detail::TypeIDResolver<BOOL,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D760, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D760))
  {
    Type = llvm::getTypeName<BOOL>();
    qword_27FC1D758 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(Type, v2);
    __cxa_guard_release(&qword_27FC1D760);
  }

  return qword_27FC1D758;
}

uint64_t llvm::getTypeName<BOOL>()
{
  if ((atomic_load_explicit(&qword_27FC1D778, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D778))
  {
    qword_27FC1D768 = llvm::detail::getTypeNameImpl<BOOL>();
    unk_27FC1D770 = v1;
    __cxa_guard_release(&qword_27FC1D778);
  }

  return qword_27FC1D768;
}

const char *llvm::detail::getTypeNameImpl<BOOL>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = BOOL]";
  v6 = 66;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::DenseElementsAttr::BoolElementIterator,BOOL>::at(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(a1 + 24) + a2;
  }

  return (*(*(a1 + 8) + (v2 >> 3)) >> (v2 & 7)) & 1;
}

uint64_t mlir::detail::TypeIDResolver<std::complex<llvm::APInt>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D788, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D788))
  {
    v1 = llvm::getTypeName<std::complex<llvm::APInt>>();
    qword_27FC1D780 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1D788);
  }

  return qword_27FC1D780;
}

uint64_t llvm::getTypeName<std::complex<llvm::APInt>>()
{
  if ((atomic_load_explicit(&qword_27FC1D7A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D7A0))
  {
    qword_27FC1D790 = llvm::detail::getTypeNameImpl<std::complex<llvm::APInt>>();
    *algn_27FC1D798 = v1;
    __cxa_guard_release(&qword_27FC1D7A0);
  }

  return qword_27FC1D790;
}

const char *llvm::detail::getTypeNameImpl<std::complex<llvm::APInt>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<llvm::APInt>]";
  v6 = 87;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::DenseElementsAttr::ComplexIntElementIterator,std::complex<llvm::APInt>>::at@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  v3 = *(a1 + 32);
  v6 = *(a1 + 24) + a2;
  v7 = v3;
  return mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v5, a3);
}

uint64_t mlir::detail::TypeIDResolver<llvm::APFloat,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<llvm::APFloat>();
      mlir::detail::TypeIDResolver<llvm::APFloat,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 1712);
}

uint64_t llvm::getTypeName<llvm::APFloat>()
{
  {
    llvm::getTypeName<llvm::APFloat>(void)::Name = llvm::detail::getTypeNameImpl<llvm::APFloat>();
    *algn_27FC176C8 = v1;
  }

  return llvm::getTypeName<llvm::APFloat>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<llvm::APFloat>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = llvm::APFloat]";
  v6 = 75;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

llvm::detail::IEEEFloat *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::DenseElementsAttr::FloatElementIterator,llvm::APFloat>::at@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, llvm::detail::IEEEFloat *a3@<X8>)
{
  v5 = *(a1 + 8);
  v3 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = v3 + a2;
  return llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v5, a3);
}

uint64_t mlir::detail::TypeIDResolver<std::complex<llvm::APFloat>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D7B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D7B0))
  {
    v1 = llvm::getTypeName<std::complex<llvm::APFloat>>();
    qword_27FC1D7A8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1D7B0);
  }

  return qword_27FC1D7A8;
}

uint64_t llvm::getTypeName<std::complex<llvm::APFloat>>()
{
  if ((atomic_load_explicit(&qword_27FC1D7C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D7C8))
  {
    qword_27FC1D7B8 = llvm::detail::getTypeNameImpl<std::complex<llvm::APFloat>>();
    unk_27FC1D7C0 = v1;
    __cxa_guard_release(&qword_27FC1D7C8);
  }

  return qword_27FC1D7B8;
}

const char *llvm::detail::getTypeNameImpl<std::complex<llvm::APFloat>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = std::complex<llvm::APFloat>]";
  v6 = 89;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::DenseElementsAttr::ComplexFloatElementIterator,std::complex<llvm::APFloat>>::at(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 24);
  v6 = *(a1 + 32);
  v5 = v3 + a2;
  llvm::mapped_iterator_base<mlir::DenseElementsAttr::ComplexFloatElementIterator,mlir::DenseElementsAttr::ComplexIntElementIterator,std::complex<llvm::APFloat>>::operator*(&v4, a3);
}

BOOL mlir::detail::StorageUserBase<mlir::DenseIntOrFPElementsAttr,mlir::DenseElementsAttr,mlir::detail::DenseIntOrFPElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ElementsAttr::Trait>(void)::Empty>,void>::resolveTypeID();
  return v2 == a1 || v3 == a1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 1752);
}

uint64_t llvm::getTypeName<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>>();
    unk_27FC176F0 = v1;
  }

  return llvm::getTypeName<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::TypedAttr::Trait<Empty>]";
  v6 = 91;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::detail::TypeIDResolver<mlir::ElementsAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ElementsAttr::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D7D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D7D8))
  {
    v1 = llvm::getTypeName<mlir::ElementsAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ElementsAttr::Trait>(void)::Empty>>();
    qword_27FC1D7D0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1D7D8);
  }

  return qword_27FC1D7D0;
}

uint64_t llvm::getTypeName<mlir::ElementsAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ElementsAttr::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1D7F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D7F0))
  {
    qword_27FC1D7E0 = llvm::detail::getTypeNameImpl<mlir::ElementsAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ElementsAttr::Trait>(void)::Empty>>();
    *algn_27FC1D7E8 = v1;
    __cxa_guard_release(&qword_27FC1D7F0);
  }

  return qword_27FC1D7E0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ElementsAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ElementsAttr::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ElementsAttr::Trait<Empty>]";
  v6 = 94;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::AbstractAttribute::get<mlir::DenseStringElementsAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v23[6] = *MEMORY[0x277D85DE8];
  v21 = v23;
  v22 = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::DenseStringElementsAttr>::getType;
  v5 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(&v21, v5, v4);
  v6 = malloc_type_malloc(0x20uLL, 0xE0040DD5D8FE3uLL);
  *v6 = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseStringElementsAttr>::getValuesImpl;
  v6[1] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseStringElementsAttr>::isSplat;
  v6[2] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseStringElementsAttr>::getShapedType;
  v6[3] = 0;
  v7 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
  v8 = v22;
  if (v22)
  {
    v9 = v21;
    v10 = v22;
    do
    {
      v11 = v10 >> 1;
      v12 = &v9[2 * (v10 >> 1)];
      v14 = *v12;
      v13 = v12 + 2;
      v10 += ~(v10 >> 1);
      if (v14 < v7)
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

  else
  {
    v8 = 0;
    v9 = v21;
  }

  if (v9 != &v21[2 * v8] && *v9 == v7)
  {
    v15 = v9[1];
  }

  else
  {
    v15 = 0;
  }

  v6[3] = v15;
  v16 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(&v21, v16, v6);
  *&v19 = mlir::detail::StorageUserBase<mlir::DenseStringElementsAttr,mlir::DenseElementsAttr,mlir::detail::DenseStringElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v20 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, &v21, &v19, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_23DenseStringElementsAttrENS1_17DenseElementsAttrENSB_30DenseStringElementsAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v18, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_23DenseStringElementsAttrENS1_17DenseElementsAttrENSA_30DenseStringElementsAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v17, &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id, "builtin.dense_string_elements", 29);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v19);
  mlir::detail::InterfaceMap::~InterfaceMap(&v21);
}

uint64_t *mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseStringElementsAttr>::getValuesImpl@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  if (mlir::detail::TypeIDResolver<llvm::StringRef,void>::resolveTypeID() == a2)
  {
    result = (*(*(a1 + 16) + 24))();
    if (!v7)
    {
      goto LABEL_6;
    }

    v8 = 8 * v7;
    v9 = 1;
    do
    {
      v10 = *result++;
      v9 *= v10;
      v8 -= 8;
    }

    while (v8);
    if (!v9)
    {
      v11 = 0;
    }

    else
    {
LABEL_6:
      v11 = *(a1 + 32);
      result = (*(*(a1 + 16) + 24))();
      LOBYTE(v9) = *(a1 + 24);
    }

    *a3 = 1;
    *(a3 + 1) = v9;
    *(a3 + 8) = v11;
    *(a3 + 16) = 1;
  }

  else
  {
    result = mlir::detail::TypeIDResolver<mlir::Attribute,void>::resolveTypeID();
    if (result == a2)
    {
      (*(*(a1 + 16) + 24))();
      operator new();
    }

    *a3 = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t mlir::detail::TypeIDResolver<llvm::StringRef,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D800, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D800))
  {
    v1 = llvm::getTypeName<llvm::StringRef>();
    qword_27FC1D7F8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1D800);
  }

  return qword_27FC1D7F8;
}

uint64_t llvm::getTypeName<llvm::StringRef>()
{
  if ((atomic_load_explicit(&qword_27FC1D818, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D818))
  {
    qword_27FC1D808 = llvm::detail::getTypeNameImpl<llvm::StringRef>();
    unk_27FC1D810 = v1;
    __cxa_guard_release(&qword_27FC1D818);
  }

  return qword_27FC1D808;
}

const char *llvm::detail::getTypeNameImpl<llvm::StringRef>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = llvm::StringRef]";
  v6 = 77;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

BOOL mlir::detail::StorageUserBase<mlir::DenseStringElementsAttr,mlir::DenseElementsAttr,mlir::detail::DenseStringElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ElementsAttr::Trait>(void)::Empty>,void>::resolveTypeID();
  return v2 == a1 || v3 == a1;
}

void mlir::AbstractAttribute::get<mlir::DenseResourceElementsAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v23 = v25;
  v24 = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::DenseResourceElementsAttr>::getType;
  v5 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(&v23, v5, v4);
  v6 = malloc_type_malloc(0x20uLL, 0xE0040DD5D8FE3uLL);
  *v6 = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseResourceElementsAttr>::getValuesImpl;
  v6[1] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseResourceElementsAttr>::isSplat;
  v6[2] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseResourceElementsAttr>::getShapedType;
  v6[3] = 0;
  v7 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
  v8 = v24;
  if (v24)
  {
    v9 = v23;
    v10 = v24;
    do
    {
      v11 = v10 >> 1;
      v12 = &v9[2 * (v10 >> 1)];
      v14 = *v12;
      v13 = v12 + 2;
      v10 += ~(v10 >> 1);
      if (v14 < v7)
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

  else
  {
    v8 = 0;
    v9 = v23;
  }

  if (v9 != &v23[2 * v8] && *v9 == v7)
  {
    v15 = v9[1];
  }

  else
  {
    v15 = 0;
  }

  v6[3] = v15;
  v16 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(&v23, v16, v6);
  v17 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v17 = mlir::detail::BlobAttrInterfaceTraits::Model<mlir::DenseResourceElementsAttr>::getData;
  v18 = mlir::detail::TypeIDResolver<mlir::BlobAttr,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(&v23, v18, v17);
  *&v21 = mlir::detail::StorageUserBase<mlir::DenseResourceElementsAttr,mlir::Attribute,mlir::detail::DenseResourceElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait,mlir::BlobAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v22 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, &v23, &v21, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_25DenseResourceElementsAttrES2_NSB_32DenseResourceElementsAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitENS1_8BlobAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v20, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_25DenseResourceElementsAttrES2_NSA_32DenseResourceElementsAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitENS1_8BlobAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v19, &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id, "builtin.dense_resource_elements", 31);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v21);
  mlir::detail::InterfaceMap::~InterfaceMap(&v23);
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  v4 = mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  v5 = (*(v4 + 16))(v4, v1);
  v7 = (*(v6 + 24))(v6, v5);
  if (!v8)
  {
    return 1;
  }

  v9 = 8 * v8;
  v10 = 1;
  do
  {
    v11 = *v7++;
    v10 *= v11;
    v9 -= 8;
  }

  while (v9);
  return v10;
}

uint64_t mlir::detail::BlobAttrInterfaceTraits::Model<mlir::DenseResourceElementsAttr>::getData(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*(v2 + 80) == 1)
  {
    return *(v2 + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::detail::StorageUserBase<mlir::DenseResourceElementsAttr,mlir::Attribute,mlir::detail::DenseResourceElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait,mlir::BlobAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v7[0] = mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[1] = mlir::detail::TypeIDResolver<mlir::ElementsAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ElementsAttr::Trait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::BlobAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::BlobAttr::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v7[2] = v2;
  do
  {
    v4 = v7[v3];
  }

  while (v4 != a1 && v3++ != 2);
  return v4 == a1;
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_25DenseResourceElementsAttrES2_NSB_32DenseResourceElementsAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitENS1_8BlobAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v6 = *(a2 + 8);
  if (v6)
  {
    return a5(a6, v6, a3, a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_25DenseResourceElementsAttrES2_NSA_32DenseResourceElementsAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitENS1_8BlobAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a2 + 40);
  v12[0] = a3;
  v12[1] = a4;
  v11.i64[0] = a5;
  v11.i64[1] = a6;
  v8 = mlir::AttrTypeSubElementHandler<mlir::ShapedType,void>::replace(v6, v7, v12, &v11);
  return mlir::DenseResourceElementsAttr::get(v8, v9, &v13);
}

uint64_t *mlir::AttrTypeSubElementHandler<mlir::ShapedType,void>::replace(uint64_t a1, uint64_t a2, uint64_t a3, int64x2_t *a4)
{
  if (!a1)
  {
    return 0;
  }

  v4 = *a4;
  *a4 = vaddq_s64(*a4, xmmword_25D0A0600);
  v5 = *v4.i64[0];
  if (*v4.i64[0])
  {
    v6 = *v5;
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v6 + 8, v7);
  }

  return v5;
}

void mlir::AbstractAttribute::get<mlir::DictionaryAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::DictionaryAttr,mlir::Attribute,mlir::detail::DictionaryAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DictionaryAttrES2_NSB_21DictionaryAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DictionaryAttrES2_NSA_21DictionaryAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id, "builtin.dictionary", 18);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DictionaryAttrES2_NSB_21DictionaryAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v7 = *(a2 + 8);
    v8 = &v7[2 * v4];
    do
    {
      v9 = v7[1];
      if (*v7)
      {
        result = (a3)(a4);
      }

      if (v9)
      {
        result = a3(a4, v9);
      }

      v7 += 2;
    }

    while (v7 != v8);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DictionaryAttrES2_NSA_21DictionaryAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, __int128 *a3)
{
  v18[6] = *MEMORY[0x277D85DE8];
  v4 = a2[2];
  __src = v18;
  v17 = 0x300000000;
  if (v4)
  {
    v6 = 16 * v4;
    do
    {
      v7 = *a3++;
      *__dst = v7;
      llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::NamedAttribute>(&__src, __dst);
      v6 -= 16;
    }

    while (v6);
    __dst[0] = v15;
    __dst[1] = 0x300000000;
    if (v17)
    {
      llvm::SmallVectorImpl<mlir::NamedAttribute>::operator=(__dst, &__src);
    }
  }

  else
  {
    __dst[0] = v15;
    __dst[1] = 0x300000000;
  }

  if (__src != v18)
  {
    free(__src);
  }

  __src = v18;
  v17 = 0x300000000;
  if (LODWORD(__dst[1]))
  {
    llvm::SmallVectorImpl<mlir::NamedAttribute>::operator=(&__src, __dst);
  }

  if (__dst[0] != v15)
  {
    free(__dst[0]);
  }

  v8 = *(**a2 + 32);
  __dst[0] = v15;
  __dst[1] = 0x300000000;
  v9 = v17;
  if (!v17)
  {
    v9 = 0;
    v11 = v15;
    goto LABEL_21;
  }

  if (v17 < 4)
  {
    v10 = v17;
    v11 = v15;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(__dst, v15, v17, 16);
    v10 = v17;
    v11 = __dst[0];
    if (!v17)
    {
      goto LABEL_20;
    }
  }

  memcpy(v11, __src, 16 * v10);
  v11 = __dst[0];
LABEL_20:
  LODWORD(__dst[1]) = v9;
LABEL_21:
  v12 = mlir::DictionaryAttr::get(v8, v11, v9);
  if (__dst[0] != v15)
  {
    free(__dst[0]);
  }

  if (__src != v18)
  {
    free(__src);
  }

  return v12;
}

uint64_t llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::NamedAttribute>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(a1, *a2, a2[1]);
    v4 = *(a1 + 8);
  }

  else
  {
    *(*a1 + 16 * v3) = *a2;
    v4 = *(a1 + 8) + 1;
    *(a1 + 8) = v4;
  }

  return *a1 + 16 * v4 - 16;
}

void llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6 = *(result + 8);
  if (v6 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v6 + 1, 16);
    LODWORD(v6) = *(result + 8);
  }

  v7 = (*result + 16 * v6);
  *v7 = a2;
  v7[1] = a3;
  ++*(result + 8);
}

uint64_t llvm::SmallVectorImpl<mlir::NamedAttribute>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<mlir::NamedAttribute>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      if (v6)
      {
        memmove(*a1, v4, 16 * v6);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        memmove(*a1, v4, 16 * v7);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 16);
    }

    v7 = 0;
LABEL_12:
    v8 = *(a2 + 8) - v7;
    if (v8)
    {
      memcpy((*a1 + 16 * v7), (*a2 + 16 * v7), 16 * v8);
    }

LABEL_14:
    *(a1 + 8) = v6;
    *(a2 + 8) = 0;
  }

  return a1;
}

double llvm::SmallVectorImpl<mlir::NamedAttribute>::assignRemote(uint64_t a1, uint64_t a2)
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

BOOL mlir::detail::StorageUserBase<mlir::FloatAttr,mlir::Attribute,mlir::detail::FloatAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9FloatAttrES2_NSB_16FloatAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 8);
  llvm::APFloat::Storage::Storage(v9, (a2 + 16));
  if (v8)
  {
    a5(a6);
  }

  llvm::APFloat::Storage::~Storage(v9);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9FloatAttrES2_NSA_16FloatAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9 = *(a2 + 8);
  llvm::APFloat::Storage::Storage(v10, (a2 + 16));
  if (v9)
  {
    v6 = *a5;
  }

  else
  {
    v6 = 0;
  }

  v7 = mlir::FloatAttr::get(v6, v10);
  llvm::APFloat::Storage::~Storage(v10);
  return v7;
}

BOOL mlir::detail::StorageUserBase<mlir::IntegerAttr,mlir::Attribute,mlir::detail::IntegerAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11IntegerAttrES2_NSB_18IntegerAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v6 = *(a2 + 8);
  if (*(a2 + 24) > 0x40u)
  {
    operator new[]();
  }

  if (v6)
  {
    a5(a6, v6, a3, a4);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11IntegerAttrES2_NSA_18IntegerAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD **a5)
{
  v5 = *(a2 + 8);
  v9 = *(a2 + 24);
  if (v9 > 0x40)
  {
    operator new[]();
  }

  v8 = *(a2 + 16);
  if (v5)
  {
    v6 = *a5;
  }

  else
  {
    v6 = 0;
  }

  return mlir::IntegerAttr::get(v6, &v8);
}

uint64_t llvm::function_ref<void ()(mlir::StorageUniquer::BaseStorage *)>::callback_fn<void mlir::StorageUniquer::registerParametricStorageType<mlir::detail::IntegerAttrStorage>(mlir::TypeID)::{lambda(mlir::StorageUniquer::BaseStorage *)#1}>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) >= 0x41u)
  {
    result = *(a2 + 16);
    if (result)
    {
      JUMPOUT(0x25F891010);
    }
  }

  return result;
}

void mlir::AbstractAttribute::get<mlir::IntegerSetAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::IntegerSetAttr,mlir::Attribute,mlir::detail::IntegerSetAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14IntegerSetAttrES2_NSB_21IntegerSetAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14IntegerSetAttrES2_NSA_21IntegerSetAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id, "builtin.integer_set", 19);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void mlir::AbstractAttribute::get<mlir::OpaqueAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::OpaqueAttr>::getType;
  v5 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::OpaqueAttr,mlir::Attribute,mlir::detail::OpaqueAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10OpaqueAttrES2_NSB_17OpaqueAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v7, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10OpaqueAttrES2_NSA_17OpaqueAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id, "builtin.opaque", 14);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

BOOL mlir::detail::StorageUserBase<mlir::OpaqueAttr,mlir::Attribute,mlir::detail::OpaqueAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10OpaqueAttrES2_NSB_17OpaqueAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v7 = *(a2 + 32);
  if (*(a2 + 8))
  {
    v8 = a5;
    a3(a4);
    a5 = v8;
  }

  if (v7)
  {

    (a5)(a6, v7, a3, a4);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10OpaqueAttrES2_NSA_17OpaqueAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, unint64_t **a3, uint64_t a4, uint64_t *a5)
{
  if (*(a2 + 8))
  {
    v7 = *a3;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a2 + 16);
  if (*(a2 + 32))
  {
    v9 = *a5;
  }

  else
  {
    v9 = 0;
  }

  v14[2] = v5;
  v14[3] = v6;
  v13 = v8;
  v10 = *(**v7 + 32);
  v11 = *v10;
  v14[0] = &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id;
  v14[1] = v10;
  return mlir::StorageUniquer::get<mlir::detail::OpaqueAttrStorage,mlir::StringAttr &,llvm::StringRef &,mlir::Type &>((v11 + 560), _ZN4llvm12function_refIFvPN4mlir6detail17OpaqueAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10OpaqueAttrEJRNS1_10StringAttrERNS_9StringRefERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_, v14, v7, &v13, v9);
}

void mlir::AbstractAttribute::get<mlir::SparseElementsAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v23[6] = *MEMORY[0x277D85DE8];
  v21 = v23;
  v22 = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::SparseElementsAttr>::getType;
  v5 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(&v21, v5, v4);
  v6 = malloc_type_malloc(0x20uLL, 0xE0040DD5D8FE3uLL);
  *v6 = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::SparseElementsAttr>::getValuesImpl;
  v6[1] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::SparseElementsAttr>::isSplat;
  v6[2] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::SparseElementsAttr>::getShapedType;
  v6[3] = 0;
  v7 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
  v8 = v22;
  if (v22)
  {
    v9 = v21;
    v10 = v22;
    do
    {
      v11 = v10 >> 1;
      v12 = &v9[2 * (v10 >> 1)];
      v14 = *v12;
      v13 = v12 + 2;
      v10 += ~(v10 >> 1);
      if (v14 < v7)
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

  else
  {
    v8 = 0;
    v9 = v21;
  }

  if (v9 != &v21[2 * v8] && *v9 == v7)
  {
    v15 = v9[1];
  }

  else
  {
    v15 = 0;
  }

  v6[3] = v15;
  v16 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(&v21, v16, v6);
  *&v19 = mlir::detail::StorageUserBase<mlir::SparseElementsAttr,mlir::Attribute,mlir::detail::SparseElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v20 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, &v21, &v19, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18SparseElementsAttrES2_NSB_25SparseElementsAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v18, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18SparseElementsAttrES2_NSA_25SparseElementsAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v17, &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id, "builtin.sparse_elements", 23);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v19);
  mlir::detail::InterfaceMap::~InterfaceMap(&v21);
}

void mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::SparseElementsAttr>::getValuesImpl(uint64_t *a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v22[7] = *MEMORY[0x277D85DE8];
  v17 = a1;
  if (mlir::detail::TypeIDResolver<mlir::Attribute,void>::resolveTypeID() == a2)
  {
    ElementType = mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getElementType(a1);
    v7 = *ElementType;
    v8 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    if (mlir::detail::InterfaceMap::lookup(v7 + 8, v8))
    {
      v9 = mlir::FloatAttr::get(ElementType, 0.0);
    }

    else if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v12 = ElementType[1];
      v13 = *v12;
      v14 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
      if (mlir::detail::InterfaceMap::lookup(v13 + 8, v14))
      {
        v15 = mlir::FloatAttr::get(v12, 0.0);
      }

      else
      {
        v15 = mlir::IntegerAttr::get(v12, 0);
      }

      v16 = *(**ElementType + 32);
      v20[0] = v15;
      v20[1] = v15;
      v9 = mlir::ArrayAttr::get(v16, v20, 2);
    }

    else if (*(*a1[4] + 136) == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id)
    {
      LOWORD(v21) = 257;
      v9 = mlir::StringAttr::get(v20, ElementType);
    }

    else
    {
      v9 = mlir::IntegerAttr::get(ElementType, 0);
    }

    v10 = v9;
    v11 = a1[4];
    (*(*(v11 + 16) + 24))();
    mlir::SparseElementsAttr::getFlattenedSparseIndices(&__p, &v17);
    memset(v22, 0, 24);
    if (v19 != __p)
    {
      std::vector<long>::__vallocate[abi:nn200100](v22, (v19 - __p) >> 3);
    }

    v22[3] = v11;
    v22[4] = 0;
    v22[5] = v10;
    operator new();
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<llvm::APInt,BOOL,unsigned char,unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a3, &v17, a2);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<llvm::APInt,BOOL,unsigned char,unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(_BYTE *a1, uint64_t **a2, uint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  if (mlir::detail::TypeIDResolver<llvm::APInt,void>::resolveTypeID() == a3)
  {
    mlir::SparseElementsAttr::getZeroAPInt(&v18, *a2);
    v28 = (*a2)[4];
    mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v28, __dst);
    if (v26 == 1)
    {
      v6 = __dst[0];
      *v20 = *&__dst[1];
      *&v20[15] = *&__dst[16];
      mlir::SparseElementsAttr::getFlattenedSparseIndices(__p, a2);
      memset(__dst, 0, 24);
      if (*(&__p[0] + 1) != *&__p[0])
      {
        std::vector<long>::__vallocate[abi:nn200100](__dst, (*(&__p[0] + 1) - *&__p[0]) >> 3);
      }

      __dst[24] = v6;
      *&__dst[25] = *v20;
      *&__dst[40] = *&v20[15];
      v24 = v19;
      v23 = v18;
      operator new();
    }

    LOBYTE(v28) = 0;
    LOBYTE(v33) = 0;
    if (v19 >= 0x41 && v18)
    {
      MEMORY[0x25F891010](v18, 0x1000C8000313F17);
    }

    if (v33 == 1)
    {
      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getNumElements(*a2);
      *__dst = v28;
      __dst[8] = 0;
      __dst[40] = 0;
      if (v32[15] == 1)
      {
        std::__function::__value_func<llvm::APInt ()(long)>::__value_func[abi:nn200100](&__dst[8], &v29);
        __dst[40] = 1;
      }

      operator new();
    }

LABEL_105:
    *a1 = 0;
    a1[16] = 0;
    return;
  }

  if (mlir::detail::TypeIDResolver<BOOL,void>::resolveTypeID() == a3)
  {
    v27[0] = (*a2)[4];
    mlir::DenseElementsAttr::tryGetValues<BOOL,void>(v27, __dst);
    if (v24)
    {
      v7 = __dst[0];
      __p[0] = *&__dst[1];
      *(__p + 15) = *&__dst[16];
      mlir::SparseElementsAttr::getFlattenedSparseIndices(v20, a2);
      v29 = 0;
      v30 = 0;
      v28 = 0;
      if (*&v20[8] != *v20)
      {
        std::vector<long>::__vallocate[abi:nn200100](&v28, (*&v20[8] - *v20) >> 3);
      }

      v31 = v7;
      *v32 = __p[0];
      *&v32[15] = *(__p + 15);
      LOBYTE(v33) = 0;
      operator new();
    }

    goto LABEL_105;
  }

  if (mlir::detail::TypeIDResolver<unsigned char,void>::resolveTypeID() == a3)
  {
    v27[0] = (*a2)[4];
    mlir::DenseElementsAttr::tryGetValues<unsigned char,void>(__dst, v27);
    if (v24)
    {
      v8 = __dst[0];
      __p[0] = *&__dst[1];
      *(__p + 15) = *&__dst[16];
      mlir::SparseElementsAttr::getFlattenedSparseIndices(v20, a2);
      v29 = 0;
      v30 = 0;
      v28 = 0;
      if (*&v20[8] != *v20)
      {
        std::vector<long>::__vallocate[abi:nn200100](&v28, (*&v20[8] - *v20) >> 3);
      }

      v31 = v8;
      *v32 = __p[0];
      *&v32[15] = *(__p + 15);
      LOBYTE(v33) = 0;
      operator new();
    }

    goto LABEL_105;
  }

  if (mlir::detail::TypeIDResolver<unsigned short,void>::resolveTypeID() == a3)
  {
    goto LABEL_20;
  }

  if (mlir::detail::TypeIDResolver<unsigned int,void>::resolveTypeID() == a3)
  {
    goto LABEL_28;
  }

  if (mlir::detail::TypeIDResolver<unsigned long long,void>::resolveTypeID() == a3)
  {
    v27[0] = (*a2)[4];
    mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(v27, __dst);
    if (v24)
    {
      v9 = __dst[0];
      __p[0] = *&__dst[1];
      *(__p + 15) = *&__dst[16];
      mlir::SparseElementsAttr::getFlattenedSparseIndices(v20, a2);
      v29 = 0;
      v30 = 0;
      v28 = 0;
      if (*&v20[8] != *v20)
      {
        std::vector<long>::__vallocate[abi:nn200100](&v28, (*&v20[8] - *v20) >> 3);
      }

      v31 = v9;
      *v32 = __p[0];
      *&v32[15] = *(__p + 15);
      v33 = 0;
      operator new();
    }

    goto LABEL_105;
  }

  if (mlir::detail::TypeIDResolver<signed char,void>::resolveTypeID() == a3)
  {
    v27[0] = (*a2)[4];
    mlir::DenseElementsAttr::tryGetValues<signed char,void>(v27, __dst);
    if (v24)
    {
      v10 = __dst[0];
      __p[0] = *&__dst[1];
      *(__p + 15) = *&__dst[16];
      mlir::SparseElementsAttr::getFlattenedSparseIndices(v20, a2);
      v29 = 0;
      v30 = 0;
      v28 = 0;
      if (*&v20[8] != *v20)
      {
        std::vector<long>::__vallocate[abi:nn200100](&v28, (*&v20[8] - *v20) >> 3);
      }

      v31 = v10;
      *v32 = __p[0];
      *&v32[15] = *(__p + 15);
      LOBYTE(v33) = 0;
      operator new();
    }

    goto LABEL_105;
  }

  if (mlir::detail::TypeIDResolver<short,void>::resolveTypeID() == a3)
  {
    goto LABEL_42;
  }

  if (mlir::detail::TypeIDResolver<int,void>::resolveTypeID() == a3)
  {
    goto LABEL_46;
  }

  if (mlir::detail::TypeIDResolver<long long,void>::resolveTypeID() == a3)
  {
    v27[0] = (*a2)[4];
    mlir::DenseElementsAttr::tryGetValues<long long,void>(v27, __dst);
    if (v24)
    {
      v11 = __dst[0];
      __p[0] = *&__dst[1];
      *(__p + 15) = *&__dst[16];
      mlir::SparseElementsAttr::getFlattenedSparseIndices(v20, a2);
      v29 = 0;
      v30 = 0;
      v28 = 0;
      if (*&v20[8] != *v20)
      {
        std::vector<long>::__vallocate[abi:nn200100](&v28, (*&v20[8] - *v20) >> 3);
      }

      v31 = v11;
      *v32 = __p[0];
      *&v32[15] = *(__p + 15);
      v33 = 0;
      operator new();
    }

    goto LABEL_105;
  }

  if (mlir::detail::TypeIDResolver<short,void>::resolveTypeID() == a3)
  {
LABEL_42:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<short>(a1, a2);
    return;
  }

  if (mlir::detail::TypeIDResolver<unsigned short,void>::resolveTypeID() == a3)
  {
LABEL_20:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned short>(a1, a2);
    return;
  }

  if (mlir::detail::TypeIDResolver<int,void>::resolveTypeID() == a3)
  {
LABEL_46:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<int>(a1, a2);
  }

  else
  {
    if (mlir::detail::TypeIDResolver<unsigned int,void>::resolveTypeID() == a3)
    {
LABEL_28:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned int>(a1, a2);
      return;
    }

    if (mlir::detail::TypeIDResolver<long,void>::resolveTypeID() == a3)
    {
      v27[0] = (*a2)[4];
      mlir::DenseElementsAttr::tryGetValues<long,void>(__dst, v27);
      if (v24)
      {
        v12 = __dst[0];
        __p[0] = *&__dst[1];
        *(__p + 15) = *&__dst[16];
        mlir::SparseElementsAttr::getFlattenedSparseIndices(v20, a2);
        v29 = 0;
        v30 = 0;
        v28 = 0;
        if (*&v20[8] != *v20)
        {
          std::vector<long>::__vallocate[abi:nn200100](&v28, (*&v20[8] - *v20) >> 3);
        }

        v31 = v12;
        *v32 = __p[0];
        *&v32[15] = *(__p + 15);
        v33 = 0;
        operator new();
      }

      goto LABEL_105;
    }

    if (mlir::detail::TypeIDResolver<unsigned long,void>::resolveTypeID() == a3)
    {
      v27[0] = (*a2)[4];
      mlir::DenseElementsAttr::tryGetValues<unsigned long,void>(__dst, v27);
      if (v24)
      {
        v13 = __dst[0];
        __p[0] = *&__dst[1];
        *(__p + 15) = *&__dst[16];
        mlir::SparseElementsAttr::getFlattenedSparseIndices(v20, a2);
        v29 = 0;
        v30 = 0;
        v28 = 0;
        if (*&v20[8] != *v20)
        {
          std::vector<long>::__vallocate[abi:nn200100](&v28, (*&v20[8] - *v20) >> 3);
        }

        v31 = v13;
        *v32 = __p[0];
        *&v32[15] = *(__p + 15);
        v33 = 0;
        operator new();
      }

      goto LABEL_105;
    }

    if (mlir::detail::TypeIDResolver<std::complex<llvm::APInt>,void>::resolveTypeID() == a3)
    {
      mlir::SparseElementsAttr::getZeroAPInt(__dst, *a2);
      std::complex<llvm::APInt>::complex[abi:nn200100](&v34, __dst, __dst);
      if (*&__dst[8] >= 0x41u && *__dst)
      {
        MEMORY[0x25F891010](*__dst, 0x1000C8000313F17);
      }

      v28 = (*a2)[4];
      mlir::DenseElementsAttr::tryGetComplexIntValues(__dst, &v28);
      if (v26)
      {
        v14 = __dst[0];
        __p[0] = *&__dst[1];
        *(__p + 15) = *&__dst[16];
        mlir::SparseElementsAttr::getFlattenedSparseIndices(&v18, a2);
        memset(__dst, 0, 24);
        if (v19 != v18)
        {
          std::vector<long>::__vallocate[abi:nn200100](__dst, (v19 - v18) >> 3);
        }

        __dst[24] = v14;
        *&__dst[25] = __p[0];
        *&__dst[40] = *(__p + 15);
        v24 = v35;
        v23 = v34;
        v26 = v37;
        v25 = v36;
        v35 = 0;
        LODWORD(v37) = 0;
        operator new();
      }

      LOBYTE(v28) = 0;
      LOBYTE(v33) = 0;
      if (v37 >= 0x41 && v36)
      {
        MEMORY[0x25F891010](v36, 0x1000C8000313F17);
      }

      if (v35 >= 0x41 && v34)
      {
        MEMORY[0x25F891010](v34, 0x1000C8000313F17);
      }

      if (v33 == 1)
      {
        mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getNumElements(*a2);
        *__dst = v28;
        __dst[8] = 0;
        __dst[40] = 0;
        if (v32[15] == 1)
        {
          std::__function::__value_func<std::complex<llvm::APInt> ()(long)>::__value_func[abi:nn200100](&__dst[8], &v29);
          __dst[40] = 1;
        }

        operator new();
      }

      goto LABEL_105;
    }

    if (mlir::detail::TypeIDResolver<std::complex<unsigned char>,void>::resolveTypeID() == a3)
    {
      v27[0] = (*a2)[4];
      mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned char>,unsigned char,void>(__dst, v27);
      if (v24)
      {
        v15 = __dst[0];
        __p[0] = *&__dst[1];
        *(__p + 15) = *&__dst[16];
        mlir::SparseElementsAttr::getFlattenedSparseIndices(v20, a2);
        v29 = 0;
        v30 = 0;
        v28 = 0;
        if (*&v20[8] != *v20)
        {
          std::vector<long>::__vallocate[abi:nn200100](&v28, (*&v20[8] - *v20) >> 3);
        }

        v31 = v15;
        *v32 = __p[0];
        *&v32[15] = *(__p + 15);
        LOWORD(v33) = 0;
        operator new();
      }

      goto LABEL_105;
    }

    if (mlir::detail::TypeIDResolver<std::complex<unsigned short>,void>::resolveTypeID() == a3)
    {
      v27[0] = (*a2)[4];
      mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned short>,unsigned short,void>(__dst, v27);
      if (v24)
      {
        v16 = __dst[0];
        __p[0] = *&__dst[1];
        *(__p + 15) = *&__dst[16];
        mlir::SparseElementsAttr::getFlattenedSparseIndices(v20, a2);
        v29 = 0;
        v30 = 0;
        v28 = 0;
        if (*&v20[8] != *v20)
        {
          std::vector<long>::__vallocate[abi:nn200100](&v28, (*&v20[8] - *v20) >> 3);
        }

        v31 = v16;
        *v32 = __p[0];
        *&v32[15] = *(__p + 15);
        LODWORD(v33) = 0;
        operator new();
      }

      goto LABEL_105;
    }

    if (mlir::detail::TypeIDResolver<std::complex<unsigned int>,void>::resolveTypeID() == a3)
    {
      v27[0] = (*a2)[4];
      mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned int>,unsigned int,void>(__dst, v27);
      if (v24)
      {
        v17 = __dst[0];
        __p[0] = *&__dst[1];
        *(__p + 15) = *&__dst[16];
        mlir::SparseElementsAttr::getFlattenedSparseIndices(v20, a2);
        v29 = 0;
        v30 = 0;
        v28 = 0;
        if (*&v20[8] != *v20)
        {
          std::vector<long>::__vallocate[abi:nn200100](&v28, (*&v20[8] - *v20) >> 3);
        }

        v31 = v17;
        *v32 = __p[0];
        *&v32[15] = *(__p + 15);
        v33 = 0;
        operator new();
      }

      goto LABEL_105;
    }

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
  }
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getNumElements(uint64_t *a1)
{
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  v4 = mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  v5 = (*(v4 + 16))(v4, a1);
  v7 = (*(v6 + 24))(v6, v5);
  if (!v8)
  {
    return 1;
  }

  v9 = 8 * v8;
  v10 = 1;
  do
  {
    v11 = *v7++;
    v10 *= v11;
    v9 -= 8;
  }

  while (v9);
  return v10;
}

uint64_t *std::vector<long>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<long>::__vallocate[abi:nn200100](a1, (v2 - *a2) >> 3);
  }

  return a1;
}

void std::vector<long>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<long>>(a1, a2);
  }

  std::vector<long>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS2_9AttributeEEEN4llvm9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS5_lEED1Ev(void *a1)
{
  *a1 = &unk_286E77888;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS2_9AttributeEEEN4llvm9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS5_lEED0Ev(void *a1)
{
  *a1 = &unk_286E77888;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS2_9AttributeEEEN4llvm9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS5_lEE7__cloneEPNS0_6__baseIST_EE(__n128 *a1, __n128 *a2)
{
  a2->n128_u64[0] = &unk_286E77888;
  std::vector<long>::vector[abi:nn200100](&a2->n128_i64[1], &a1->n128_u64[1]);
  result = a1[2];
  a2[3].n128_u64[0] = a1[3].n128_u64[0];
  a2[2] = result;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS2_9AttributeEEEN4llvm9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS5_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS2_9AttributeEEEN4llvm9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS5_lEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS2_9AttributeEEEN4llvm9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS5_lEEclEOl(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2] - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return a1[6];
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return a1[6];
    }
  }

  v8 = a1[5] - v4;
  v9[0] = a1[4];
  v9[1] = v8;
  return mlir::DenseElementsAttr::AttributeElementIterator::operator*(v9);
}

uint64_t std::__function::__value_func<mlir::Attribute ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<mlir::Attribute ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<mlir::Attribute ()(long)>,mlir::Attribute>,mlir::Attribute>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E778D0;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<mlir::Attribute ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<mlir::Attribute ()(long)>,mlir::Attribute>,mlir::Attribute>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E778D0;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<mlir::Attribute ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<mlir::Attribute ()(long)>,mlir::Attribute>,mlir::Attribute>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm5APIntEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEED1Ev(v5);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm5APIntEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEED1Ev(uint64_t a1)
{
  *a1 = &unk_286E77900;
  if (*(a1 + 72) >= 0x41u)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      MEMORY[0x25F891010](v2, 0x1000C8000313F17);
    }
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm5APIntEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEED0Ev(uint64_t a1)
{
  *a1 = &unk_286E77900;
  if (*(a1 + 72) >= 0x41u)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      MEMORY[0x25F891010](v2, 0x1000C8000313F17);
    }
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x25F891040);
}

uint64_t *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm5APIntEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E77900;
  result = std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  v6 = *(a1 + 72);
  *(a2 + 72) = v6;
  if (v6 > 0x40)
  {
    operator new[]();
  }

  *(a2 + 64) = *(a1 + 64);
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm5APIntEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE18destroy_deallocateEv(char *a1)
{
  _ZNSt3__110__function12__alloc_funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm5APIntEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE7destroyB8nn200100Ev((a1 + 8));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm5APIntEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEEclEOl(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[1];
  v5 = result[2] - v4;
  if ((v5 & 0x7FFFFFFF8) != 0)
  {
    v6 = 0;
    v7 = -(v5 >> 3);
    while (1)
    {
      v8 = *v4++;
      if (v8 == *a2)
      {
        break;
      }

      if (v7 == --v6)
      {
        goto LABEL_5;
      }
    }

    v11 = *(result + 2);
    v10 = result[7];
    v12 = result[6] - v6;
    v13 = v10;
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v11, a3);
  }

  else
  {
LABEL_5:
    v9 = *(result + 18);
    *(a3 + 8) = v9;
    if (v9 > 0x40)
    {
      operator new[]();
    }

    *a3 = result[8];
  }
}

void _ZNSt3__110__function12__alloc_funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm5APIntEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE7destroyB8nn200100Ev(uint64_t a1)
{
  if (*(a1 + 64) >= 0x41u)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      MEMORY[0x25F891010](v2, 0x1000C8000313F17);
    }
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

uint64_t std::__function::__value_func<llvm::APInt ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<llvm::APInt ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::APInt ()(long)>,llvm::APInt>,llvm::APInt>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E77948;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<llvm::APInt ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::APInt ()(long)>,llvm::APInt>,llvm::APInt>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E77948;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<llvm::APInt ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::APInt ()(long)>,llvm::APInt>,llvm::APInt>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIbEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFblEED1Ev(v5);
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIbEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFblEED1Ev(void *a1)
{
  *a1 = &unk_286E77978;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIbEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFblEED0Ev(void *a1)
{
  *a1 = &unk_286E77978;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIbEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFblEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E77978;
  std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  result = *(a1 + 32);
  *(a2 + 41) = *(a1 + 41);
  *(a2 + 32) = result;
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIbEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFblEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIbEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFblEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIbEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFblEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v8 = 0;
    }

    v7 = (*(*(a1 + 32) + (v8 >> 3)) >> (v8 & 7)) & 1;
  }

  else
  {
LABEL_5:
    LOBYTE(v7) = *(a1 + 56);
  }

  return v7 & 1;
}

uint64_t std::__function::__value_func<BOOL ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<BOOL ()(long)>,BOOL>,BOOL>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E779C0;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<BOOL ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<BOOL ()(long)>,BOOL>,BOOL>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E779C0;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<BOOL ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<BOOL ()(long)>,BOOL>,BOOL>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIhEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFhlEED1Ev(v5);
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIhEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFhlEED1Ev(void *a1)
{
  *a1 = &unk_286E779F0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIhEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFhlEED0Ev(void *a1)
{
  *a1 = &unk_286E779F0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIhEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFhlEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E779F0;
  std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  result = *(a1 + 32);
  *(a2 + 41) = *(a1 + 41);
  *(a2 + 32) = result;
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIhEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFhlEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIhEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFhlEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIhEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFhlEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v8 = 0;
    }

    v7 = (*(a1 + 32) + v8);
  }

  else
  {
LABEL_5:
    v7 = (a1 + 56);
  }

  return *v7;
}

uint64_t std::__function::__value_func<unsigned char ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<unsigned char ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned char ()(long)>,unsigned char>,unsigned char>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E77A38;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<unsigned char ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned char ()(long)>,unsigned char>,unsigned char>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E77A38;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<unsigned char ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned char ()(long)>,unsigned char>,unsigned char>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    (*(*v3 + 48))(v3, &v6);
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned short>(v4, v5);
  }
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned short>(_BYTE *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v7[0] = *(*a2 + 32);
  mlir::DenseElementsAttr::tryGetValues<unsigned short,void>(&v14, v7);
  if (v16)
  {
    v4 = v14;
    v13[0] = *v15;
    *(v13 + 15) = *&v15[15];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(&__p, a2);
    __dst[1] = 0;
    v9 = 0;
    __dst[0] = 0;
    if (v6 != __p)
    {
      std::vector<long>::__vallocate[abi:nn200100](__dst, (v6 - __p) >> 3);
    }

    v10 = v4;
    *v11 = v13[0];
    *&v11[15] = *(v13 + 15);
    v12 = 0;
    operator new();
  }

  *a1 = 0;
  a1[16] = 0;
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implItEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFtlEED1Ev(void *a1)
{
  *a1 = &unk_286E77A68;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implItEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFtlEED0Ev(void *a1)
{
  *a1 = &unk_286E77A68;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implItEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFtlEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E77A68;
  std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  result = *(a1 + 32);
  *(a2 + 42) = *(a1 + 42);
  *(a2 + 32) = result;
  *(a2 + 58) = 0;
  *(a2 + 62) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implItEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFtlEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implItEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFtlEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implItEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFtlEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v8 = 0;
    }

    v7 = (*(a1 + 32) + 2 * v8);
  }

  else
  {
LABEL_5:
    v7 = (a1 + 56);
  }

  return *v7;
}

uint64_t std::__function::__value_func<unsigned short ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<unsigned short ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned short ()(long)>,unsigned short>,unsigned short>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E77AB0;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<unsigned short ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned short ()(long)>,unsigned short>,unsigned short>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E77AB0;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<unsigned short ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned short ()(long)>,unsigned short>,unsigned short>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    (*(*v3 + 48))(v3, &v6);
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned int>(v4, v5);
  }
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned int>(_BYTE *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v7[0] = *(*a2 + 32);
  mlir::DenseElementsAttr::tryGetValues<unsigned int,void>(v7, &v14);
  if (v16)
  {
    v4 = v14;
    v13[0] = *v15;
    *(v13 + 15) = *&v15[15];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(&__p, a2);
    __dst[1] = 0;
    v9 = 0;
    __dst[0] = 0;
    if (v6 != __p)
    {
      std::vector<long>::__vallocate[abi:nn200100](__dst, (v6 - __p) >> 3);
    }

    v10 = v4;
    *v11 = v13[0];
    *&v11[15] = *(v13 + 15);
    v12 = 0;
    operator new();
  }

  *a1 = 0;
  a1[16] = 0;
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIjEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFjlEED1Ev(void *a1)
{
  *a1 = &unk_286E77AE0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIjEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFjlEED0Ev(void *a1)
{
  *a1 = &unk_286E77AE0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIjEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFjlEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E77AE0;
  std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  result = *(a1 + 32);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 32) = result;
  *(a2 + 60) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIjEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFjlEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIjEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFjlEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIjEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFjlEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v8 = 0;
    }

    v7 = (*(a1 + 32) + 4 * v8);
  }

  else
  {
LABEL_5:
    v7 = (a1 + 56);
  }

  return *v7;
}

uint64_t std::__function::__value_func<unsigned int ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<unsigned int ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned int ()(long)>,unsigned int>,unsigned int>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E77B28;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<unsigned int ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned int ()(long)>,unsigned int>,unsigned int>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E77B28;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<unsigned int ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned int ()(long)>,unsigned int>,unsigned int>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIyEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFylEED1Ev(v5);
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIyEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFylEED1Ev(void *a1)
{
  *a1 = &unk_286E77B58;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIyEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFylEED0Ev(void *a1)
{
  *a1 = &unk_286E77B58;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIyEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFylEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E77B58;
  std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIyEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFylEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIyEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFylEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIyEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFylEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v8 = 0;
    }

    v7 = *(a1 + 32) + 8 * v8;
  }

  else
  {
LABEL_5:
    v7 = a1 + 56;
  }

  return *v7;
}

uint64_t std::__function::__value_func<unsigned long long ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<unsigned long long ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned long long ()(long)>,unsigned long long>,unsigned long long>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E77BA0;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<unsigned long long ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned long long ()(long)>,unsigned long long>,unsigned long long>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E77BA0;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<unsigned long long ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned long long ()(long)>,unsigned long long>,unsigned long long>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIaEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFalEED1Ev(v5);
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIaEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFalEED1Ev(void *a1)
{
  *a1 = &unk_286E77BD0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIaEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFalEED0Ev(void *a1)
{
  *a1 = &unk_286E77BD0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIaEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFalEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E77BD0;
  std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  result = *(a1 + 32);
  *(a2 + 41) = *(a1 + 41);
  *(a2 + 32) = result;
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIaEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFalEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIaEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFalEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIaEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFalEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v8 = 0;
    }

    v7 = (*(a1 + 32) + v8);
  }

  else
  {
LABEL_5:
    v7 = (a1 + 56);
  }

  return *v7;
}

uint64_t std::__function::__value_func<signed char ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<signed char ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<signed char ()(long)>,signed char>,signed char>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E77C18;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<signed char ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<signed char ()(long)>,signed char>,signed char>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E77C18;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<signed char ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<signed char ()(long)>,signed char>,signed char>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    (*(*v3 + 48))(v3, &v6);
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<short>(v4, v5);
  }
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<short>(_BYTE *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v7[0] = *(*a2 + 32);
  mlir::DenseElementsAttr::tryGetValues<short,void>(v7, &v14);
  if (v16)
  {
    v4 = v14;
    v13[0] = *v15;
    *(v13 + 15) = *&v15[15];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(&__p, a2);
    __dst[1] = 0;
    v9 = 0;
    __dst[0] = 0;
    if (v6 != __p)
    {
      std::vector<long>::__vallocate[abi:nn200100](__dst, (v6 - __p) >> 3);
    }

    v10 = v4;
    *v11 = v13[0];
    *&v11[15] = *(v13 + 15);
    v12 = 0;
    operator new();
  }

  *a1 = 0;
  a1[16] = 0;
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIsEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFslEED1Ev(void *a1)
{
  *a1 = &unk_286E77C48;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIsEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFslEED0Ev(void *a1)
{
  *a1 = &unk_286E77C48;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIsEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFslEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E77C48;
  std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  result = *(a1 + 32);
  *(a2 + 42) = *(a1 + 42);
  *(a2 + 32) = result;
  *(a2 + 58) = 0;
  *(a2 + 62) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIsEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFslEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIsEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFslEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIsEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFslEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v8 = 0;
    }

    v7 = (*(a1 + 32) + 2 * v8);
  }

  else
  {
LABEL_5:
    v7 = (a1 + 56);
  }

  return *v7;
}

uint64_t std::__function::__value_func<short ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<short ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<short ()(long)>,short>,short>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E77C90;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<short ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<short ()(long)>,short>,short>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E77C90;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<short ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<short ()(long)>,short>,short>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    (*(*v3 + 48))(v3, &v6);
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<int>(v4, v5);
  }
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<int>(_BYTE *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v7[0] = *(*a2 + 32);
  mlir::DenseElementsAttr::tryGetValues<int,void>(v7, &v14);
  if (v16)
  {
    v4 = v14;
    v13[0] = *v15;
    *(v13 + 15) = *&v15[15];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(&__p, a2);
    __dst[1] = 0;
    v9 = 0;
    __dst[0] = 0;
    if (v6 != __p)
    {
      std::vector<long>::__vallocate[abi:nn200100](__dst, (v6 - __p) >> 3);
    }

    v10 = v4;
    *v11 = v13[0];
    *&v11[15] = *(v13 + 15);
    v12 = 0;
    operator new();
  }

  *a1 = 0;
  a1[16] = 0;
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIiEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFilEED1Ev(void *a1)
{
  *a1 = &unk_286E77CC0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIiEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFilEED0Ev(void *a1)
{
  *a1 = &unk_286E77CC0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIiEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFilEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E77CC0;
  std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  result = *(a1 + 32);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 32) = result;
  *(a2 + 60) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIiEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFilEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIiEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFilEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIiEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFilEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v8 = 0;
    }

    v7 = (*(a1 + 32) + 4 * v8);
  }

  else
  {
LABEL_5:
    v7 = (a1 + 56);
  }

  return *v7;
}

uint64_t std::__function::__value_func<int ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<int ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<int ()(long)>,int>,int>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E77D08;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<int ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<int ()(long)>,int>,int>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E77D08;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<int ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<int ()(long)>,int>,int>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIxEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFxlEED1Ev(v5);
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIxEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFxlEED1Ev(void *a1)
{
  *a1 = &unk_286E77D38;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIxEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFxlEED0Ev(void *a1)
{
  *a1 = &unk_286E77D38;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIxEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFxlEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E77D38;
  std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIxEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFxlEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIxEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFxlEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIxEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFxlEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v8 = 0;
    }

    v7 = *(a1 + 32) + 8 * v8;
  }

  else
  {
LABEL_5:
    v7 = a1 + 56;
  }

  return *v7;
}

uint64_t std::__function::__value_func<long long ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<long long ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<long long ()(long)>,long long>,long long>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E77D80;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<long long ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<long long ()(long)>,long long>,long long>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E77D80;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<long long ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<long long ()(long)>,long long>,long long>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIlEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFllEED1Ev(v5);
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIlEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFllEED1Ev(void *a1)
{
  *a1 = &unk_286E77DB0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIlEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFllEED0Ev(void *a1)
{
  *a1 = &unk_286E77DB0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIlEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFllEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E77DB0;
  std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIlEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFllEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIlEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFllEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIlEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFllEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v8 = 0;
    }

    v7 = *(a1 + 32) + 8 * v8;
  }

  else
  {
LABEL_5:
    v7 = a1 + 56;
  }

  return *v7;
}

uint64_t std::__function::__value_func<long ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<long ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<long ()(long)>,long>,long>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E77DF8;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<long ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<long ()(long)>,long>,long>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E77DF8;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<long ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<long ()(long)>,long>,long>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implImEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFmlEED1Ev(v5);
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implImEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFmlEED1Ev(void *a1)
{
  *a1 = &unk_286E77E28;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implImEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFmlEED0Ev(void *a1)
{
  *a1 = &unk_286E77E28;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implImEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFmlEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E77E28;
  std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implImEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFmlEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implImEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFmlEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implImEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFmlEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v8 = 0;
    }

    v7 = *(a1 + 32) + 8 * v8;
  }

  else
  {
LABEL_5:
    v7 = a1 + 56;
  }

  return *v7;
}

uint64_t std::__function::__value_func<unsigned long ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<unsigned long ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned long ()(long)>,unsigned long>,unsigned long>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E77E70;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<unsigned long ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned long ()(long)>,unsigned long>,unsigned long>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E77E70;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<unsigned long ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned long ()(long)>,unsigned long>,unsigned long>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm5APIntEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEED1Ev(v5);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm5APIntEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEED1Ev(uint64_t a1)
{
  *a1 = &unk_286E77EA0;
  if (*(a1 + 88) >= 0x41u)
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      MEMORY[0x25F891010](v2, 0x1000C8000313F17);
    }
  }

  if (*(a1 + 72) >= 0x41u)
  {
    v3 = *(a1 + 64);
    if (v3)
    {
      MEMORY[0x25F891010](v3, 0x1000C8000313F17);
    }
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    operator delete(v4);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm5APIntEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEED0Ev(uint64_t a1)
{
  *a1 = &unk_286E77EA0;
  if (*(a1 + 88) >= 0x41u)
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      MEMORY[0x25F891010](v2, 0x1000C8000313F17);
    }
  }

  if (*(a1 + 72) >= 0x41u)
  {
    v3 = *(a1 + 64);
    if (v3)
    {
      MEMORY[0x25F891010](v3, 0x1000C8000313F17);
    }
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x25F891040);
}

uint64_t *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm5APIntEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEE7__cloneEPNS0_6__baseISV_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E77EA0;
  result = std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  v6 = *(a1 + 72);
  *(a2 + 72) = v6;
  if (v6 > 0x40)
  {
    operator new[]();
  }

  *(a2 + 64) = *(a1 + 64);
  v7 = *(a1 + 88);
  *(a2 + 88) = v7;
  if (v7 > 0x40)
  {
    operator new[]();
  }

  *(a2 + 80) = *(a1 + 80);
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm5APIntEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEE18destroy_deallocateEv(char *a1)
{
  _ZNSt3__110__function12__alloc_funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm5APIntEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEE7destroyB8nn200100Ev((a1 + 8));

  operator delete(a1);
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm5APIntEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEEclEOl@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[1];
  v5 = result[2] - v4;
  if ((v5 & 0x7FFFFFFF8) != 0)
  {
    v6 = 0;
    v7 = -(v5 >> 3);
    while (1)
    {
      v8 = *v4++;
      if (v8 == *a2)
      {
        break;
      }

      if (v7 == --v6)
      {
        goto LABEL_5;
      }
    }

    v12 = *(result + 2);
    v11 = result[7];
    v13 = result[6] - v6;
    v14 = v11;
    return mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v12, a3);
  }

  else
  {
LABEL_5:
    v9 = *(result + 18);
    *(a3 + 8) = v9;
    if (v9 > 0x40)
    {
      operator new[]();
    }

    *a3 = result[8];
    v10 = *(result + 22);
    *(a3 + 24) = v10;
    if (v10 > 0x40)
    {
      operator new[]();
    }

    *(a3 + 16) = result[10];
  }

  return result;
}

void _ZNSt3__110__function12__alloc_funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm5APIntEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEE7destroyB8nn200100Ev(uint64_t a1)
{
  if (*(a1 + 80) >= 0x41u)
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      MEMORY[0x25F891010](v2, 0x1000C8000313F17);
    }
  }

  if (*(a1 + 64) >= 0x41u)
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      MEMORY[0x25F891010](v3, 0x1000C8000313F17);
    }
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;

    operator delete(v4);
  }
}

uint64_t std::__function::__value_func<std::complex<llvm::APInt> ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::complex<llvm::APInt> ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<llvm::APInt> ()(long)>,std::complex<llvm::APInt>>,std::complex<llvm::APInt>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E77EE8;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<std::complex<llvm::APInt> ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<llvm::APInt> ()(long)>,std::complex<llvm::APInt>>,std::complex<llvm::APInt>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E77EE8;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<std::complex<llvm::APInt> ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<llvm::APInt> ()(long)>,std::complex<llvm::APInt>>,std::complex<llvm::APInt>>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIhEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(v5);
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIhEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *a1)
{
  *a1 = &unk_286E77F18;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIhEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_286E77F18;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIhEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E77F18;
  std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  result = *(a1 + 32);
  *(a2 + 42) = *(a1 + 42);
  *(a2 + 32) = result;
  *(a2 + 58) = 0;
  *(a2 + 62) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIhEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIhEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIhEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v8 = 0;
    }

    v7 = (*(a1 + 32) + 2 * v8);
  }

  else
  {
LABEL_5:
    v7 = (a1 + 56);
  }

  return *v7;
}

uint64_t std::__function::__value_func<std::complex<unsigned char> ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::complex<unsigned char> ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned char> ()(long)>,std::complex<unsigned char>>,std::complex<unsigned char>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E77F60;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<std::complex<unsigned char> ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned char> ()(long)>,std::complex<unsigned char>>,std::complex<unsigned char>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E77F60;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<std::complex<unsigned char> ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned char> ()(long)>,std::complex<unsigned char>>,std::complex<unsigned char>>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexItEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(v5);
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexItEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *a1)
{
  *a1 = &unk_286E77F90;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexItEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_286E77F90;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexItEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E77F90;
  std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  result = *(a1 + 32);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 32) = result;
  *(a2 + 60) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexItEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexItEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexItEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v8 = 0;
    }

    v7 = (*(a1 + 32) + 4 * v8);
  }

  else
  {
LABEL_5:
    v7 = (a1 + 56);
  }

  return *v7;
}

uint64_t std::__function::__value_func<std::complex<unsigned short> ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::complex<unsigned short> ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned short> ()(long)>,std::complex<unsigned short>>,std::complex<unsigned short>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E77FD8;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<std::complex<unsigned short> ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned short> ()(long)>,std::complex<unsigned short>>,std::complex<unsigned short>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E77FD8;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<std::complex<unsigned short> ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned short> ()(long)>,std::complex<unsigned short>>,std::complex<unsigned short>>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v7 = v2;
  if (v3)
  {
    (*(*v3 + 48))(v3, &v7);
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(v4, v5, v6);
  }
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(_BYTE *a1, uint64_t *a2, uint64_t a3)
{
  v46 = *MEMORY[0x277D85DE8];
  if (mlir::detail::TypeIDResolver<std::complex<unsigned long long>,void>::resolveTypeID() == a3)
  {
    v42 = *(*a2 + 32);
    mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned long long>,unsigned long long,void>(__dst, &v42);
    if (v26)
    {
      v6 = __dst[0];
      *v22 = *&__dst[1];
      *&v22[15] = *&__dst[16];
      mlir::SparseElementsAttr::getFlattenedSparseIndices(&__p, a2);
      v36 = 0;
      v37 = 0;
      v35 = 0;
      if (v31 != __p)
      {
        std::vector<long>::__vallocate[abi:nn200100](&v35, (v31 - __p) >> 3);
      }

      v38 = v6;
      *v39 = *v22;
      v40 = 0;
      v41 = 0;
      *&v39[15] = *&v22[15];
      operator new();
    }
  }

  else if (mlir::detail::TypeIDResolver<std::complex<signed char>,void>::resolveTypeID() == a3)
  {
    v42 = *(*a2 + 32);
    mlir::DenseElementsAttr::tryGetValues<std::complex<signed char>,signed char,void>(__dst, &v42);
    if (v26)
    {
      v7 = __dst[0];
      *v22 = *&__dst[1];
      *&v22[15] = *&__dst[16];
      mlir::SparseElementsAttr::getFlattenedSparseIndices(&__p, a2);
      v36 = 0;
      v37 = 0;
      v35 = 0;
      if (v31 != __p)
      {
        std::vector<long>::__vallocate[abi:nn200100](&v35, (v31 - __p) >> 3);
      }

      v38 = v7;
      *v39 = *v22;
      *&v39[15] = *&v22[15];
      LOWORD(v40) = 0;
      operator new();
    }
  }

  else if (mlir::detail::TypeIDResolver<std::complex<short>,void>::resolveTypeID() == a3)
  {
    v42 = *(*a2 + 32);
    mlir::DenseElementsAttr::tryGetValues<std::complex<short>,short,void>(__dst, &v42);
    if (v26)
    {
      v8 = __dst[0];
      *v22 = *&__dst[1];
      *&v22[15] = *&__dst[16];
      mlir::SparseElementsAttr::getFlattenedSparseIndices(&__p, a2);
      v36 = 0;
      v37 = 0;
      v35 = 0;
      if (v31 != __p)
      {
        std::vector<long>::__vallocate[abi:nn200100](&v35, (v31 - __p) >> 3);
      }

      v38 = v8;
      *v39 = *v22;
      *&v39[15] = *&v22[15];
      LODWORD(v40) = 0;
      operator new();
    }
  }

  else if (mlir::detail::TypeIDResolver<std::complex<int>,void>::resolveTypeID() == a3)
  {
    v42 = *(*a2 + 32);
    mlir::DenseElementsAttr::tryGetValues<std::complex<int>,int,void>(__dst, &v42);
    if (v26)
    {
      v9 = __dst[0];
      *v22 = *&__dst[1];
      *&v22[15] = *&__dst[16];
      mlir::SparseElementsAttr::getFlattenedSparseIndices(&__p, a2);
      v36 = 0;
      v37 = 0;
      v35 = 0;
      if (v31 != __p)
      {
        std::vector<long>::__vallocate[abi:nn200100](&v35, (v31 - __p) >> 3);
      }

      v38 = v9;
      *v39 = *v22;
      *&v39[15] = *&v22[15];
      v40 = 0;
      operator new();
    }
  }

  else if (mlir::detail::TypeIDResolver<std::complex<long long>,void>::resolveTypeID() == a3)
  {
    v42 = *(*a2 + 32);
    mlir::DenseElementsAttr::tryGetValues<std::complex<long long>,long long,void>(__dst, &v42);
    if (v26)
    {
      v10 = __dst[0];
      *v22 = *&__dst[1];
      *&v22[15] = *&__dst[16];
      mlir::SparseElementsAttr::getFlattenedSparseIndices(&__p, a2);
      v36 = 0;
      v37 = 0;
      v35 = 0;
      if (v31 != __p)
      {
        std::vector<long>::__vallocate[abi:nn200100](&v35, (v31 - __p) >> 3);
      }

      v38 = v10;
      *v39 = *v22;
      v40 = 0;
      v41 = 0;
      *&v39[15] = *&v22[15];
      operator new();
    }
  }

  else if (mlir::detail::TypeIDResolver<llvm::APFloat,void>::resolveTypeID() == a3)
  {
    mlir::SparseElementsAttr::getZeroAPFloat(v22, *a2);
    v35 = *(*a2 + 32);
    mlir::DenseElementsAttr::tryGetFloatValues(__dst, &v35);
    if (v29)
    {
      v11 = __dst[0];
      v23 = *&__dst[1];
      *v24 = *&__dst[17];
      *&v24[15] = *&__dst[32];
      mlir::SparseElementsAttr::getFlattenedSparseIndices(&v20, a2);
      memset(__dst, 0, 24);
      if (v21 != v20)
      {
        std::vector<long>::__vallocate[abi:nn200100](__dst, (v21 - v20) >> 3);
      }

      __dst[24] = v11;
      *&__dst[25] = v23;
      *&__dst[41] = *v24;
      *&__dst[56] = *&v24[15];
      if (*v22 == &llvm::semPPCDoubleDouble)
      {
        v26 = &llvm::semPPCDoubleDouble;
        v27 = *&v22[8];
        *v22 = &llvm::semBogus;
        *&v22[8] = 0;
      }

      else
      {
        v26 = &llvm::semBogus;
        llvm::detail::IEEEFloat::operator=(&v26, v22);
      }

      operator new();
    }

    LOBYTE(v35) = 0;
    LOBYTE(v40) = 0;
    llvm::APFloat::Storage::~Storage(v22);
    if (v40 == 1)
    {
      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getNumElements(*a2);
      *__dst = v35;
      __dst[8] = 0;
      __dst[40] = 0;
      if (v39[15] == 1)
      {
        std::__function::__value_func<llvm::APFloat ()(long)>::__value_func[abi:nn200100](&__dst[8], &v36);
        __dst[40] = 1;
      }

      operator new();
    }
  }

  else if (mlir::detail::TypeIDResolver<float,void>::resolveTypeID() == a3)
  {
    v42 = *(*a2 + 32);
    mlir::DenseElementsAttr::tryGetValues<float,void>(&v42, __dst);
    if (v26)
    {
      v12 = __dst[0];
      *v22 = *&__dst[1];
      *&v22[15] = *&__dst[16];
      mlir::SparseElementsAttr::getFlattenedSparseIndices(&__p, a2);
      v36 = 0;
      v37 = 0;
      v35 = 0;
      if (v31 != __p)
      {
        std::vector<long>::__vallocate[abi:nn200100](&v35, (v31 - __p) >> 3);
      }

      v38 = v12;
      *v39 = *v22;
      *&v39[15] = *&v22[15];
      LODWORD(v40) = 0;
      operator new();
    }
  }

  else if (mlir::detail::TypeIDResolver<double,void>::resolveTypeID() == a3)
  {
    v42 = *(*a2 + 32);
    mlir::DenseElementsAttr::tryGetValues<double,void>(__dst, &v42);
    if (v26)
    {
      v13 = __dst[0];
      *v22 = *&__dst[1];
      *&v22[15] = *&__dst[16];
      mlir::SparseElementsAttr::getFlattenedSparseIndices(&__p, a2);
      v36 = 0;
      v37 = 0;
      v35 = 0;
      if (v31 != __p)
      {
        std::vector<long>::__vallocate[abi:nn200100](&v35, (v31 - __p) >> 3);
      }

      v38 = v13;
      *v39 = *v22;
      *&v39[15] = *&v22[15];
      v40 = 0;
      operator new();
    }
  }

  else if (mlir::detail::TypeIDResolver<std::complex<llvm::APFloat>,void>::resolveTypeID() == a3)
  {
    mlir::SparseElementsAttr::getZeroAPFloat(__dst, *a2);
    llvm::APFloat::Storage::Storage(&v42, __dst);
    llvm::APFloat::Storage::Storage(&v44, __dst);
    llvm::APFloat::Storage::~Storage(__dst);
    v35 = *(*a2 + 32);
    mlir::DenseElementsAttr::tryGetComplexFloatValues(__dst, &v35);
    if (v29)
    {
      v14 = __dst[0];
      v33 = *&__dst[1];
      *v34 = *&__dst[17];
      *&v34[15] = *&__dst[32];
      mlir::SparseElementsAttr::getFlattenedSparseIndices(&v20, a2);
      memset(__dst, 0, 24);
      if (v21 != v20)
      {
        std::vector<long>::__vallocate[abi:nn200100](__dst, (v21 - v20) >> 3);
      }

      __dst[24] = v14;
      *&__dst[25] = v33;
      *&__dst[41] = *v34;
      *&__dst[56] = *&v34[15];
      if (v42 == &llvm::semPPCDoubleDouble)
      {
        v26 = &llvm::semPPCDoubleDouble;
        v27 = v43;
        v42 = &llvm::semBogus;
        v43 = 0;
      }

      else
      {
        v26 = &llvm::semBogus;
        llvm::detail::IEEEFloat::operator=(&v26, &v42);
      }

      if (v44 == &llvm::semPPCDoubleDouble)
      {
        v28 = &llvm::semPPCDoubleDouble;
        v29 = v45;
        v44 = &llvm::semBogus;
        v45 = 0;
      }

      else
      {
        v28 = &llvm::semBogus;
        llvm::detail::IEEEFloat::operator=(&v28, &v44);
      }

      v32 = 0;
      operator new();
    }

    LOBYTE(v35) = 0;
    LOBYTE(v40) = 0;
    llvm::APFloat::Storage::~Storage(&v44);
    llvm::APFloat::Storage::~Storage(&v42);
    if (v40 == 1)
    {
      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getNumElements(*a2);
      *__dst = v35;
      __dst[8] = 0;
      __dst[40] = 0;
      if (v39[15] == 1)
      {
        std::__function::__value_func<std::complex<llvm::APFloat> ()(long)>::__value_func[abi:nn200100](&__dst[8], &v36);
        __dst[40] = 1;
      }

      operator new();
    }
  }

  else if (mlir::detail::TypeIDResolver<std::complex<float>,void>::resolveTypeID() == a3)
  {
    v42 = *(*a2 + 32);
    mlir::DenseElementsAttr::tryGetValues<std::complex<float>,float,void>(__dst, &v42);
    if (v26)
    {
      v15 = __dst[0];
      *v22 = *&__dst[1];
      *&v22[15] = *&__dst[16];
      mlir::SparseElementsAttr::getFlattenedSparseIndices(&__p, a2);
      v36 = 0;
      v37 = 0;
      v35 = 0;
      if (v31 != __p)
      {
        std::vector<long>::__vallocate[abi:nn200100](&v35, (v31 - __p) >> 3);
      }

      v38 = v15;
      *v39 = *v22;
      *&v39[15] = *&v22[15];
      v40 = 0;
      operator new();
    }
  }

  else if (mlir::detail::TypeIDResolver<std::complex<double>,void>::resolveTypeID() == a3)
  {
    v42 = *(*a2 + 32);
    mlir::DenseElementsAttr::tryGetValues<std::complex<double>,double,void>(__dst, &v42);
    if (v26)
    {
      v16 = __dst[0];
      *v22 = *&__dst[1];
      *&v22[15] = *&__dst[16];
      mlir::SparseElementsAttr::getFlattenedSparseIndices(&__p, a2);
      v36 = 0;
      v37 = 0;
      v35 = 0;
      if (v31 != __p)
      {
        std::vector<long>::__vallocate[abi:nn200100](&v35, (v31 - __p) >> 3);
      }

      v38 = v16;
      *v39 = *v22;
      v40 = 0;
      v41 = 0;
      *&v39[15] = *&v22[15];
      operator new();
    }
  }

  else if (mlir::detail::TypeIDResolver<llvm::StringRef,void>::resolveTypeID() == a3)
  {
    v17 = *(*a2 + 32);
    v18 = *(v17 + 32);
    v19 = *(v17 + 24);
    (*(*(v17 + 16) + 24))();
    mlir::SparseElementsAttr::getFlattenedSparseIndices(&__p, a2);
    memset(__dst, 0, 24);
    if (v31 != __p)
    {
      std::vector<long>::__vallocate[abi:nn200100](__dst, (v31 - __p) >> 3);
    }

    *&__dst[24] = v18;
    *&__dst[32] = v19;
    memset(&__dst[40], 0, 24);
    operator new();
  }

  *a1 = 0;
  a1[16] = 0;
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIjEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *a1)
{
  *a1 = &unk_286E78008;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIjEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_286E78008;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIjEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E78008;
  std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIjEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIjEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIjEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v8 = 0;
    }

    v7 = *(a1 + 32) + 8 * v8;
  }

  else
  {
LABEL_5:
    v7 = a1 + 56;
  }

  return *v7;
}

uint64_t std::__function::__value_func<std::complex<unsigned int> ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::complex<unsigned int> ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned int> ()(long)>,std::complex<unsigned int>>,std::complex<unsigned int>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E78050;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<std::complex<unsigned int> ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned int> ()(long)>,std::complex<unsigned int>>,std::complex<unsigned int>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E78050;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<std::complex<unsigned int> ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned int> ()(long)>,std::complex<unsigned int>>,std::complex<unsigned int>>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIyEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(v5);
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIyEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *a1)
{
  *a1 = &unk_286E78080;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIyEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_286E78080;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIyEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E78080;
  std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIyEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIyEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIyEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v8 = 0;
    }

    v7 = *(a1 + 32) + 16 * v8;
  }

  else
  {
LABEL_5:
    v7 = a1 + 56;
  }

  return *v7;
}

uint64_t std::__function::__value_func<std::complex<unsigned long long> ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::complex<unsigned long long> ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned long long> ()(long)>,std::complex<unsigned long long>>,std::complex<unsigned long long>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E780C8;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<std::complex<unsigned long long> ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned long long> ()(long)>,std::complex<unsigned long long>>,std::complex<unsigned long long>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E780C8;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<std::complex<unsigned long long> ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<unsigned long long> ()(long)>,std::complex<unsigned long long>>,std::complex<unsigned long long>>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIaEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(v5);
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIaEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *a1)
{
  *a1 = &unk_286E780F8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIaEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_286E780F8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIaEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E780F8;
  std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  result = *(a1 + 32);
  *(a2 + 42) = *(a1 + 42);
  *(a2 + 32) = result;
  *(a2 + 58) = 0;
  *(a2 + 62) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIaEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIaEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIaEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v8 = 0;
    }

    v7 = (*(a1 + 32) + 2 * v8);
  }

  else
  {
LABEL_5:
    v7 = (a1 + 56);
  }

  return *v7;
}

uint64_t std::__function::__value_func<std::complex<signed char> ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::complex<signed char> ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<signed char> ()(long)>,std::complex<signed char>>,std::complex<signed char>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E78140;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<std::complex<signed char> ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<signed char> ()(long)>,std::complex<signed char>>,std::complex<signed char>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E78140;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<std::complex<signed char> ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<signed char> ()(long)>,std::complex<signed char>>,std::complex<signed char>>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIsEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(v5);
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIsEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *a1)
{
  *a1 = &unk_286E78170;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIsEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_286E78170;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIsEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E78170;
  std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  result = *(a1 + 32);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 32) = result;
  *(a2 + 60) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIsEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIsEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIsEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v8 = 0;
    }

    v7 = (*(a1 + 32) + 4 * v8);
  }

  else
  {
LABEL_5:
    v7 = (a1 + 56);
  }

  return *v7;
}

uint64_t std::__function::__value_func<std::complex<short> ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::complex<short> ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<short> ()(long)>,std::complex<short>>,std::complex<short>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E781B8;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<std::complex<short> ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<short> ()(long)>,std::complex<short>>,std::complex<short>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E781B8;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<std::complex<short> ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<short> ()(long)>,std::complex<short>>,std::complex<short>>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIiEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(v5);
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIiEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *a1)
{
  *a1 = &unk_286E781E8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIiEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_286E781E8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIiEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E781E8;
  std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIiEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIiEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIiEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v8 = 0;
    }

    v7 = *(a1 + 32) + 8 * v8;
  }

  else
  {
LABEL_5:
    v7 = a1 + 56;
  }

  return *v7;
}

uint64_t std::__function::__value_func<std::complex<int> ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::complex<int> ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<int> ()(long)>,std::complex<int>>,std::complex<int>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E78230;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<std::complex<int> ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<int> ()(long)>,std::complex<int>>,std::complex<int>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E78230;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<std::complex<int> ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<int> ()(long)>,std::complex<int>>,std::complex<int>>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIxEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(v5);
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIxEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *a1)
{
  *a1 = &unk_286E78260;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIxEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_286E78260;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIxEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E78260;
  std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIxEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIxEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIxEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v8 = 0;
    }

    v7 = *(a1 + 32) + 16 * v8;
  }

  else
  {
LABEL_5:
    v7 = a1 + 56;
  }

  return *v7;
}

uint64_t std::__function::__value_func<std::complex<long long> ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::complex<long long> ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<long long> ()(long)>,std::complex<long long>>,std::complex<long long>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E782A8;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<std::complex<long long> ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<long long> ()(long)>,std::complex<long long>>,std::complex<long long>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E782A8;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<std::complex<long long> ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<long long> ()(long)>,std::complex<long long>>,std::complex<long long>>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm7APFloatEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEED1Ev(v5);
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm7APFloatEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEED1Ev(void *a1)
{
  *a1 = &unk_286E782D8;
  llvm::APFloat::Storage::~Storage((a1 + 9));
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm7APFloatEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_286E782D8;
  llvm::APFloat::Storage::~Storage((a1 + 9));
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

llvm::detail::IEEEFloat *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm7APFloatEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E782D8;
  std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;

  return llvm::APFloat::Storage::Storage((a2 + 72), (a1 + 72));
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm7APFloatEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE18destroy_deallocateEv(char *a1)
{
  _ZNSt3__110__function12__alloc_funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm7APFloatEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE7destroyB8nn200100Ev((a1 + 8));

  operator delete(a1);
}

llvm::detail::IEEEFloat *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm7APFloatEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEEclEOl@<X0>(uint64_t a1@<X0>, void *a2@<X1>, llvm::detail::IEEEFloat *a3@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16) - v3;
  if ((v4 & 0x7FFFFFFF8) != 0)
  {
    v5 = 0;
    v6 = -(v4 >> 3);
    while (1)
    {
      v7 = *v3++;
      if (v7 == *a2)
      {
        break;
      }

      if (v6 == --v5)
      {
        goto LABEL_5;
      }
    }

    v10 = *(a1 + 32);
    v9 = *(a1 + 48);
    v12 = *(a1 + 56);
    v11 = v9 - v5;
    return llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v10, a3);
  }

  else
  {
LABEL_5:

    return llvm::APFloat::Storage::Storage(a3, (a1 + 72));
  }
}

void _ZNSt3__110__function12__alloc_funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm7APFloatEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE7destroyB8nn200100Ev(uint64_t a1)
{
  llvm::APFloat::Storage::~Storage((a1 + 64));
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;

    operator delete(v2);
  }
}

uint64_t std::__function::__value_func<llvm::APFloat ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<llvm::APFloat ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::APFloat ()(long)>,llvm::APFloat>,llvm::APFloat>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E78320;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<llvm::APFloat ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::APFloat ()(long)>,llvm::APFloat>,llvm::APFloat>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E78320;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<llvm::APFloat ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::APFloat ()(long)>,llvm::APFloat>,llvm::APFloat>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIfEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFflEED1Ev(v5);
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIfEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFflEED1Ev(void *a1)
{
  *a1 = &unk_286E78350;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIfEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFflEED0Ev(void *a1)
{
  *a1 = &unk_286E78350;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIfEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFflEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E78350;
  std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  result = *(a1 + 32);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 32) = result;
  *(a2 + 60) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIfEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFflEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIfEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFflEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

float _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIfEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFflEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v8 = 0;
    }

    v7 = *(a1 + 32) + 4 * v8;
  }

  else
  {
LABEL_5:
    v7 = a1 + 56;
  }

  return *v7;
}

uint64_t std::__function::__value_func<float ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<float ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<float ()(long)>,float>,float>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E78398;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<float ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<float ()(long)>,float>,float>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E78398;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<float ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<float ()(long)>,float>,float>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIdEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFdlEED1Ev(v5);
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIdEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFdlEED1Ev(void *a1)
{
  *a1 = &unk_286E783C8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIdEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFdlEED0Ev(void *a1)
{
  *a1 = &unk_286E783C8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIdEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFdlEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E783C8;
  std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIdEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFdlEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIdEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFdlEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

double _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIdEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFdlEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v8 = 0;
    }

    v7 = *(a1 + 32) + 8 * v8;
  }

  else
  {
LABEL_5:
    v7 = a1 + 56;
  }

  return *v7;
}

uint64_t std::__function::__value_func<double ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<double ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<double ()(long)>,double>,double>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E78410;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<double ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<double ()(long)>,double>,double>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E78410;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<double ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<double ()(long)>,double>,double>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm7APFloatEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEED1Ev(v5);
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm7APFloatEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEED1Ev(void *a1)
{
  *a1 = &unk_286E78440;
  llvm::APFloat::Storage::~Storage((a1 + 12));
  llvm::APFloat::Storage::~Storage((a1 + 9));
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm7APFloatEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEED0Ev(void *a1)
{
  *a1 = &unk_286E78440;
  llvm::APFloat::Storage::~Storage((a1 + 12));
  llvm::APFloat::Storage::~Storage((a1 + 9));
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

llvm::detail::IEEEFloat *_ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm7APFloatEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEE7__cloneEPNS0_6__baseISV_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E78440;
  std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  llvm::APFloat::Storage::Storage((a2 + 72), (a1 + 72));

  return llvm::APFloat::Storage::Storage((a2 + 96), (a1 + 96));
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm7APFloatEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEE18destroy_deallocateEv(char *a1)
{
  _ZNSt3__110__function12__alloc_funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm7APFloatEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEE7destroyB8nn200100Ev((a1 + 8));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm7APFloatEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEEclEOl(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16) - v5;
  if ((v6 & 0x7FFFFFFF8) != 0)
  {
    v7 = 0;
    v8 = -(v6 >> 3);
    while (1)
    {
      v9 = *v5++;
      if (v9 == *a2)
      {
        break;
      }

      if (v8 == --v7)
      {
        goto LABEL_5;
      }
    }

    v11 = *(a1 + 32);
    v10 = *(a1 + 48);
    v13 = *(a1 + 56);
    v12 = v10 - v7;
    llvm::mapped_iterator_base<mlir::DenseElementsAttr::ComplexFloatElementIterator,mlir::DenseElementsAttr::ComplexIntElementIterator,std::complex<llvm::APFloat>>::operator*(&v11, a3);
  }

  else
  {
LABEL_5:
    llvm::APFloat::Storage::Storage(a3, (a1 + 72));

    llvm::APFloat::Storage::Storage((a3 + 24), (a1 + 96));
  }
}

void _ZNSt3__110__function12__alloc_funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIN4llvm7APFloatEEEEENS6_9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISH_EEdeclL_ZNS_7declvalB8nn200100ISD_EEDTclsr3stdE9__declvalISF_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISF_EEEUllE_NS_9allocatorISS_EEFS8_lEE7destroyB8nn200100Ev(uint64_t a1)
{
  llvm::APFloat::Storage::~Storage((a1 + 88));
  llvm::APFloat::Storage::~Storage((a1 + 64));
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;

    operator delete(v2);
  }
}

uint64_t std::__function::__value_func<std::complex<llvm::APFloat> ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::complex<llvm::APFloat> ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<llvm::APFloat> ()(long)>,std::complex<llvm::APFloat>>,std::complex<llvm::APFloat>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E78488;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<std::complex<llvm::APFloat> ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<llvm::APFloat> ()(long)>,std::complex<llvm::APFloat>>,std::complex<llvm::APFloat>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E78488;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<std::complex<llvm::APFloat> ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<llvm::APFloat> ()(long)>,std::complex<llvm::APFloat>>,std::complex<llvm::APFloat>>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIfEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(v5);
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIfEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *a1)
{
  *a1 = &unk_286E784B8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIfEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_286E784B8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIfEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E784B8;
  std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIfEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIfEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

float _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIfEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v8 = 0;
    }

    v7 = *(a1 + 32) + 8 * v8;
  }

  else
  {
LABEL_5:
    v7 = a1 + 56;
  }

  return *v7;
}

uint64_t std::__function::__value_func<std::complex<float> ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::complex<float> ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<float> ()(long)>,std::complex<float>>,std::complex<float>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E78500;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<std::complex<float> ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<float> ()(long)>,std::complex<float>>,std::complex<float>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E78500;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<std::complex<float> ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<float> ()(long)>,std::complex<float>>,std::complex<float>>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIdEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(v5);
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIdEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED1Ev(void *a1)
{
  *a1 = &unk_286E78530;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIdEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_286E78530;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIdEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E78530;
  std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIdEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIdEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

double _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS_7complexIdEEEEN4llvm9FailureOrINS7_15mapped_iteratorINS7_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISG_EEdeclL_ZNS_7declvalB8nn200100ISC_EEDTclsr3stdE9__declvalISE_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISE_EEEUllE_NS_9allocatorISR_EEFS6_lEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v8 = 0;
    }

    v7 = *(a1 + 32) + 16 * v8;
  }

  else
  {
LABEL_5:
    v7 = a1 + 56;
  }

  return *v7;
}

uint64_t std::__function::__value_func<std::complex<double> ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::complex<double> ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<double> ()(long)>,std::complex<double>>,std::complex<double>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E78578;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<std::complex<double> ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<double> ()(long)>,std::complex<double>>,std::complex<double>>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E78578;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<std::complex<double> ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<std::complex<double> ()(long)>,std::complex<double>>,std::complex<double>>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm9StringRefEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEED1Ev(v5);
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm9StringRefEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEED1Ev(void *a1)
{
  *a1 = &unk_286E785A8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm9StringRefEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_286E785A8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm9StringRefEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E785A8;
  std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm9StringRefEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm9StringRefEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm9StringRefEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = -(v3 >> 3);
    while (1)
    {
      v6 = *v2++;
      if (v6 == *a2)
      {
        break;
      }

      if (v5 == --v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v8 = 0;
    }

    v7 = *(a1 + 32) + 16 * v8;
  }

  else
  {
LABEL_5:
    v7 = a1 + 56;
  }

  return *v7;
}

uint64_t std::__function::__value_func<llvm::StringRef ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<llvm::StringRef ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::StringRef ()(long)>,llvm::StringRef>,llvm::StringRef>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E785F0;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<llvm::StringRef ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::StringRef ()(long)>,llvm::StringRef>,llvm::StringRef>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E785F0;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<llvm::StringRef ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::StringRef ()(long)>,llvm::StringRef>,llvm::StringRef>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::StorageUserBase<mlir::SparseElementsAttr,mlir::Attribute,mlir::detail::SparseElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(v5);
}

BOOL mlir::detail::StorageUserBase<mlir::SparseElementsAttr,mlir::Attribute,mlir::detail::SparseElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ElementsAttr::Trait>(void)::Empty>,void>::resolveTypeID();
  return v2 == a1 || v3 == a1;
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18SparseElementsAttrES2_NSB_25SparseElementsAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v8 = a2[3];
  v7 = a2[4];
  if (a2[1])
  {
    a5(a6);
  }

  if (v8)
  {
    a3(a4, v8);
  }

  if (v7)
  {

    a3(a4, v7);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18SparseElementsAttrES2_NSA_25SparseElementsAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  v18.i64[0] = a3;
  v18.i64[1] = a4;
  v17.i64[0] = a5;
  v17.i64[1] = a6;
  v10 = mlir::AttrTypeSubElementHandler<mlir::ShapedType,void>::replace(v6, v7, &v18, &v17);
  if (!v9)
  {
    v13 = 0;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    return mlir::SparseElementsAttr::get(v10, v11, v13, v15);
  }

  v12 = v18.i64[0];
  v18 = vaddq_s64(v18, xmmword_25D0A0600);
  v13 = *v12;
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = v18.i64[0];
  v18 = vaddq_s64(v18, xmmword_25D0A0600);
  v15 = *v14;
  return mlir::SparseElementsAttr::get(v10, v11, v13, v15);
}

void mlir::AbstractAttribute::get<mlir::StridedLayoutAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v4 = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::StridedLayoutAttr>::getAffineMap;
  v4[1] = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::StridedLayoutAttr>::isIdentity;
  v4[2] = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::StridedLayoutAttr>::verifyLayout;
  v5 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::StridedLayoutAttr,mlir::Attribute,mlir::detail::StridedLayoutAttrStorage,mlir::detail::AttributeUniquer,mlir::MemRefLayoutAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_17StridedLayoutAttrES2_NSB_24StridedLayoutAttrStorageENSB_16AttributeUniquerEJNS1_25MemRefLayoutAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v7, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_17StridedLayoutAttrES2_NSA_24StridedLayoutAttrStorageENSA_16AttributeUniquerEJNS1_25MemRefLayoutAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id, "builtin.strided_layout", 22);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

BOOL mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::StridedLayoutAttr>::verifyLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a4 == *(a2 + 24))
  {
    return 1;
  }

  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<49ul>(v9, "expected the number of strides to match the rank");
  }

  v6 = (v9[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  return v6;
}

BOOL mlir::detail::StorageUserBase<mlir::StridedLayoutAttr,mlir::Attribute,mlir::detail::StridedLayoutAttrStorage,mlir::detail::AttributeUniquer,mlir::MemRefLayoutAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_17StridedLayoutAttrES2_NSA_24StridedLayoutAttrStorageENSA_16AttributeUniquerEJNS1_25MemRefLayoutAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(v14, *(&v14 + 1), &v15);
  v19 = &v13;
  v20 = v22;
  v21 = 0x600000000;
  if (v16)
  {
    llvm::SmallVectorImpl<long long>::operator=(&v20, &v15);
  }

  if (v15 != &v17)
  {
    free(v15);
  }

  v7 = *(**a2 + 32);
  v8 = v19;
  v15 = v19;
  v16 = v18;
  v17 = 0x600000000;
  if (v21)
  {
    llvm::SmallVectorImpl<long long>::operator=(&v16, &v20);
    v8 = v15;
    v9 = v16;
    v10 = v17;
  }

  else
  {
    v10 = 0;
    v9 = v18;
  }

  v11 = mlir::StridedLayoutAttr::get(v7, *v8, v9, v10);
  if (v16 != v18)
  {
    free(v16);
  }

  if (v20 != v22)
  {
    free(v20);
  }

  return v11;
}

void mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v7 = v9;
  v8 = 0x600000000;
  if (a2)
  {
    v5 = 8 * a2;
    do
    {
      llvm::SmallVectorImpl<long long>::emplace_back<long long const&>(&v7, a1++);
      v5 -= 8;
    }

    while (v5);
    v6 = v8;
    *a3 = a3 + 2;
    a3[1] = 0x600000000;
    if (v6)
    {
      llvm::SmallVectorImpl<long long>::operator=(a3, &v7);
    }
  }

  else
  {
    *a3 = a3 + 2;
    a3[1] = 0x600000000;
  }

  if (v7 != v9)
  {
    free(v7);
  }
}

uint64_t llvm::SmallVectorImpl<long long>::emplace_back<long long const&>(uint64_t *a1, uint64_t *a2)
{
  v3 = *(a1 + 2);
  if (v3 >= *(a1 + 3))
  {
    llvm::SmallVectorTemplateBase<long long,true>::push_back(a1, *a2);
    v4 = *a1;
    v5 = *(a1 + 2);
  }

  else
  {
    v4 = *a1;
    *(*a1 + 8 * v3) = *a2;
    v5 = v3 + 1;
    *(a1 + 2) = v5;
  }

  return v4 + 8 * v5 - 8;
}

void mlir::AbstractAttribute::get<mlir::StringAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::StringAttr>::getType;
  v5 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::StringAttr,mlir::Attribute,mlir::detail::StringAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10StringAttrES2_NSB_17StringAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v7, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10StringAttrES2_NSA_17StringAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id, "builtin.string", 14);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

BOOL mlir::detail::StorageUserBase<mlir::StringAttr,mlir::Attribute,mlir::detail::StringAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

void mlir::AbstractAttribute::get<mlir::SymbolRefAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::SymbolRefAttr,mlir::Attribute,mlir::detail::SymbolRefAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13SymbolRefAttrES2_NSB_20SymbolRefAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13SymbolRefAttrES2_NSA_20SymbolRefAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, "builtin.symbol_ref", 18);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13SymbolRefAttrES2_NSB_20SymbolRefAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v6 = a2[2];
  v7 = a2[3];
  if (a2[1])
  {
    result = a3(a4);
  }

  if (v7)
  {
    v9 = 8 * v7;
    do
    {
      if (*v6)
      {
        result = a3(a4);
      }

      ++v6;
      v9 -= 8;
    }

    while (v9);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13SymbolRefAttrES2_NSA_20SymbolRefAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4)
{
  v4 = a3;
  if (*(a2 + 8))
  {
    a4 = (a4 - 1);
    v4 = a3 + 1;
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  if (a4 >= *(a2 + 24))
  {
    v6 = *(a2 + 24);
  }

  else
  {
    v6 = a4;
  }

  return mlir::SymbolRefAttr::get(v5, v4, v6, a4);
}

void mlir::AbstractAttribute::get<mlir::TypeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::TypeAttr,mlir::Attribute,mlir::detail::TypeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8TypeAttrES2_NSB_15TypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8TypeAttrES2_NSA_15TypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id, "builtin.type", 12);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8TypeAttrES2_NSB_15TypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v6 = *(a2 + 8);
  if (v6)
  {
    return a5(a6, v6, a3, a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8TypeAttrES2_NSA_15TypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (*(a2 + 8))
  {
    return mlir::TypeAttr::get(*a5);
  }

  else
  {
    return mlir::TypeAttr::get(0);
  }
}

void mlir::AbstractAttribute::get<mlir::UnitAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::UnitAttr,mlir::Attribute,mlir::AttributeStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8UnitAttrES2_NS1_16AttributeStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8UnitAttrES2_NS1_16AttributeStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id, "builtin.unit", 12);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void *mlir::detail::AttributeUniquer::registerAttribute<mlir::UnitAttr>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v5[0] = a1;
  v5[1] = a2;
  v7[0] = _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_8UnitAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v7[1] = v5;
  v6 = v7;
  v10 = a2;
  v3 = *(v2 + 560);
  v9 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::AttributeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::AttributeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v6, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v10, &v9, v8);
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::AttributeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::AttributeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), unint64_t *a2)
{
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8uLL, 3);
  *v3 = 0;
  v4 = **a1;
  if (v4)
  {
    v4((*a1)[1], v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_8UnitAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(void *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(a1[1], *a1);
  *a2 = result;
  return result;
}

void mlir::Dialect::addAttribute<mlir::DistinctAttr>(uint64_t a1)
{
  v8[11] = *MEMORY[0x277D85DE8];
  v2 = mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID();
  mlir::AbstractAttribute::get<mlir::DistinctAttr>(a1, &v6);
  mlir::Dialect::addAttribute(a1, v2, &v6);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v8);
  mlir::detail::InterfaceMap::~InterfaceMap(&v7);
  v3 = *(a1 + 32);
  v4 = mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID();
  mlir::StorageUniquer::registerParametricStorageTypeImpl((*v3 + 560), v4, 0, v5);
}

void mlir::AbstractAttribute::get<mlir::DistinctAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v10, 0, sizeof(v10));
  v9[1] = 0x300000000;
  *&v7 = mlir::detail::StorageUserBase<mlir::DistinctAttr,mlir::Attribute,mlir::detail::DistinctAttrStorage,mlir::detail::DistinctAttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v8 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v9[0] = v10;
  v4 = mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID();
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v9, &v7, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12DistinctAttrES2_NSB_19DistinctAttrStorageENSB_24DistinctAttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v6, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12DistinctAttrES2_NSA_19DistinctAttrStorageENSA_24DistinctAttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v5, v4, "builtin.distinct", 16);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v7);
  mlir::detail::InterfaceMap::~InterfaceMap(v9);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12DistinctAttrES2_NSB_19DistinctAttrStorageENSB_24DistinctAttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (*(a2 + 8))
  {
    return a3(a4);
  }

  return result;
}

void *_ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12DistinctAttrES2_NSA_19DistinctAttrStorageENSA_24DistinctAttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v3 = *a3;
  }

  v4 = *(**a2 + 32);
  v6 = v3;
  return mlir::detail::DistinctAttributeUniquer::get<mlir::DistinctAttr,mlir::Attribute &>(v4, &v6);
}

void llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(unsigned int *result, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = result[2];
  v8 = v7 + ((a3 - __src) >> 4);
  if (v8 > result[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 4, v8, 16);
    LODWORD(v7) = result[2];
  }

  if (__src != a3)
  {
    memcpy((*result + 16 * v7), __src, v6);
    LODWORD(v7) = result[2];
  }

  result[2] = v7 + (v6 >> 4);
}

uint64_t llvm::array_pod_sort_comparator<mlir::NamedAttribute>(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if ((mlir::StringAttr::compare(&v5, *a2) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *a2;
  return mlir::StringAttr::compare(&v5, *a1) >> 31;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v10[0] = a2;
  v10[1] = a3;
  v9[0] = a4;
  v9[1] = a5;
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  v13 = 0;
  v14 = 0xFF51AFD7ED558CCDLL;
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::NamedAttribute>>(v11, v11, v12, a4, a5);
  v8 = v9;
  *&v11[0] = v9;
  *(&v11[0] + 1) = v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*a1, &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::NamedAttribute>>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *a2, char *a3, unint64_t *a4, uint64_t a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v24 = 0;
  if (a5)
  {
    v8 = a4;
    v9 = 0;
    v10 = 16 * a5;
    v11 = &a4[2 * a5];
    while (v9 <= 0x38)
    {
      v12 = v9 + 8;
      v13 = 0xBF58476D1CE4E5B9 * ((*(v8 + 2) >> 4) ^ (*(v8 + 2) >> 9) | (((*v8 >> 4) ^ (*v8 >> 9)) << 32));
      *&__src[v9] = (v13 >> 31) ^ v13;
      v8 += 2;
      v9 += 8;
      v10 -= 16;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    v25[0] = xmmword_25D0A0610;
    v25[1] = xmmword_25D0A0620;
    v25[2] = xmmword_25D0A0630;
    v26 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v25, __src, a3, a4);
    if (v10)
    {
      v15 = 64;
      do
      {
        v16 = 0;
        do
        {
          v17 = v16 + 8;
          v18 = 0xBF58476D1CE4E5B9 * ((*(v8 + 2) >> 4) ^ (*(v8 + 2) >> 9) | (((*v8 >> 4) ^ (*v8 >> 9)) << 32));
          *&__src[v16] = (v18 >> 31) ^ v18;
          v8 += 2;
          if (v8 == v11)
          {
            break;
          }

          v19 = v16 >= 0x31;
          v16 += 8;
        }

        while (!v19);
        std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(__src, &__src[v17], &v28);
        llvm::hashing::detail::hash_state::mix(v25, __src, v20, v21);
        v15 += v17;
      }

      while (v8 != v11);
    }

    else
    {
      v15 = 64;
    }

    v14 = llvm::hashing::detail::hash_state::finalize(v25, v15);
  }

  else
  {
    v12 = 0;
LABEL_7:
    v14 = llvm::hashing::detail::hash_short(__src, v12, 0xFF51AFD7ED558CCDLL);
  }

  v22 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v24, a2, a3, v14);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v24, v22, a3);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 8);
  v4 = **a1;
  v5 = &v3[2 * v2];
  do
  {
    v6 = *v4;
    v7 = v4[1];
    v4 += 2;
    v8 = *v3;
    v9 = v3[1];
    v3 += 2;
    result = v8 == v6 && v9 == v7;
  }

  while (result && v3 != v5);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::DictionaryAttrStorage::construct(a2, **a1, *(*a1 + 8));
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::detail::DictionaryAttrStorage::construct(unint64_t *a1, __int128 *a2, uint64_t a3)
{
  if (a3)
  {
    v6 = 16 * a3;
    v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 16 * a3, 3);
    v8 = v7;
    do
    {
      v9 = *a2++;
      *v8++ = v9;
      v6 -= 16;
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 0x18uLL, 3);
  *result = 0;
  result[1] = v7;
  result[2] = a3;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail21DictionaryAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DictionaryAttrEJRNS_8ArrayRefINS1_14NamedAttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute>>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 8);
  v4 = **a1;
  v5 = &v3[2 * v2];
  do
  {
    v6 = *v4;
    v7 = v4[1];
    v4 += 2;
    v8 = *v3;
    v9 = v3[1];
    v3 += 2;
    result = v8 == v6 && v9 == v7;
  }

  while (result && v3 != v5);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute>>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::DictionaryAttrStorage::construct(a2, **a1, *(*a1 + 8));
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail21DictionaryAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DictionaryAttrEJNS_8ArrayRefINS1_14NamedAttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL mlir::detail::StringAttrStorage::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  if (!v2 || !memcmp(*(a1 + 16), *a2, v2))
  {
    return *(a1 + 8) == *(a2 + 16);
  }

  return 0;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,char const(&)[1],mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,char const(&)[1],mlir::NoneType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t *a1, unint64_t *a2)
{
  v3 = mlir::detail::StringAttrStorage::construct(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}