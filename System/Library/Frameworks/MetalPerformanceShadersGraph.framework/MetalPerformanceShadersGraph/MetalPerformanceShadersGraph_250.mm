void sub_1E0850800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E085230C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<void *,void *>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void *>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void *>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void *>>>::find<void *>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
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
    v7 = (*&v2 - 1) & v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    if (v6.u32[0] < 2uLL)
    {
      v10 = *&v2 - 1;
      while (1)
      {
        v11 = result[1];
        if (v5 == v11)
        {
          if (result[2] == a2)
          {
            return result;
          }
        }

        else if ((v11 & v10) != v7)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v12 = result[1];
      if (v5 == v12)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v12 >= *&v2)
        {
          v12 %= *&v2;
        }

        if (v12 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void sub_1E0852E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0852E7CLL);
}

void sub_1E0852E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0852E7CLL);
  }

  JUMPOUT(0x1E0852E38);
}

void sub_1E08533BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0853420);
}

void sub_1E0853410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0853420);
  }

  JUMPOUT(0x1E08533DCLL);
}

void sub_1E0854F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E08554A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if ((a18 & 0x80000000) == 0)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

char *mlir::OpBuilder::create<mlir::mps::StridedSliceUpdateOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,unsigned int &,unsigned int &,unsigned int &,BOOL>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, unsigned int *a8, unsigned int *a9, unsigned int *a10, char *a11)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v20 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::StridedSliceUpdateOp,void>::id, Context);
  if ((v21 & 1) == 0)
  {
    v29 = 1283;
    v28[2] = "mps.strided_slice_update";
    v28[3] = 24;
    v27 = 259;
    llvm::operator+(v28, &v26, v30);
    llvm::report_fatal_error(v30, 1);
  }

  mlir::OperationState::OperationState(v31, a2, v20);
  mlir::mps::StridedSliceUpdateOp::build(a1, v31, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, *a11);
  v22 = mlir::OpBuilder::create(a1, v31);
  if (*(*(v22 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceUpdateOp,void>::id)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  mlir::OperationState::~OperationState(v31);
  return v23;
}

void sub_1E085572C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0855740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E0855DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(a11);

    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1E0855DDCLL);
}

void sub_1E0855DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a13) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);

  if ((SHIBYTE(a13) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0855E24);
}

void sub_1E0855E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    JUMPOUT(0x1E0855E24);
  }

  JUMPOUT(0x1E0855DDCLL);
}

void sub_1E0856448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14)
{
  if (v18)
  {
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void sub_1E08568E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a13) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);

  if ((SHIBYTE(a13) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E085694CLL);
}

void sub_1E085693C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    JUMPOUT(0x1E085694CLL);
  }

  JUMPOUT(0x1E0856904);
}

void sub_1E0857504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(a11);

    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1E0857538);
}

void sub_1E0857518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a13) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);

  if ((SHIBYTE(a13) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0857580);
}

void sub_1E0857570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    JUMPOUT(0x1E0857580);
  }

  JUMPOUT(0x1E0857538);
}

void sub_1E0858F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0858FBCLL);
}

void sub_1E0858FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0858FBCLL);
  }

  JUMPOUT(0x1E0858F78);
}

void sub_1E0859B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0859B7CLL);
}

void sub_1E0859B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0859B7CLL);
  }

  JUMPOUT(0x1E0859B38);
}

void sub_1E0859E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0859E84);
}

void sub_1E0859E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0859E84);
  }

  JUMPOUT(0x1E0859E40);
}

void sub_1E085A4E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E085A54CLL);
}

void sub_1E085A53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E085A54CLL);
  }

  JUMPOUT(0x1E085A508);
}

void sub_1E085A7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E085A860);
}

void sub_1E085A850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E085A860);
  }

  JUMPOUT(0x1E085A81CLL);
}

void sub_1E085ABC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E085B0A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38)
{
  mlir::OperationState::~OperationState(&a38);

  _Unwind_Resume(a1);
}

void sub_1E085B694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38)
{
  mlir::OperationState::~OperationState(&a38);

  _Unwind_Resume(a1);
}

void sub_1E085BA60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  mlir::OperationState::~OperationState(&a40);

  _Unwind_Resume(a1);
}

void sub_1E085BD98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E085BDFCLL);
}

void sub_1E085BDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E085BDFCLL);
  }

  JUMPOUT(0x1E085BDB8);
}

void sub_1E085C294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E085C7B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E085CF08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, void *a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
    v27 = a22;
    if (!a22)
    {
LABEL_3:
      v28 = a25;
      if (!a25)
      {
LABEL_8:

        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(v28);
      goto LABEL_8;
    }
  }

  else
  {
    v27 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  operator delete(v27);
  v28 = a25;
  if (!a25)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_1E085D7EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (a19)
  {
    operator delete(a19);
    v27 = a22;
    if (!a22)
    {
LABEL_3:
      v28 = __p;
      if (!__p)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v27 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  operator delete(v27);
  v28 = __p;
  if (!__p)
  {
LABEL_5:

    _Unwind_Resume(a1);
  }

LABEL_4:
  operator delete(v28);
  goto LABEL_5;
}

void sub_1E085E0B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, void *a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
    v27 = a22;
    if (!a22)
    {
LABEL_3:
      v28 = a25;
      if (!a25)
      {
LABEL_8:

        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(v28);
      goto LABEL_8;
    }
  }

  else
  {
    v27 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  operator delete(v27);
  v28 = a25;
  if (!a25)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_1E085EB38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v12)
  {
    operator delete(v12);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E085F2E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
    v19 = a12;
    if (!a12)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v19 = a12;
    if (!a12)
    {
LABEL_6:

      _Unwind_Resume(a1);
    }
  }

  operator delete(v19);
  goto LABEL_6;
}

void sub_1E08601D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_1E08606F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_1E0861640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (v12)
  {
    operator delete(v12);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E0861D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v14)
  {
    operator delete(v14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E08628A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v14)
  {
    operator delete(v14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E0862FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v14)
  {
    operator delete(v14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E0863550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E08647BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(a9);

    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1E08647F0);
}

void sub_1E08647D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0864834);
}

void sub_1E0864824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0864834);
  }

  JUMPOUT(0x1E08647F0);
}

void sub_1E0864C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0864CA4);
}

void sub_1E0864C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E0864CA4);
  }

  JUMPOUT(0x1E0864C60);
}

void sub_1E0865508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E086556CLL);
}

void sub_1E086555C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E086556CLL);
  }

  JUMPOUT(0x1E0865528);
}

GPU::RegionCallOpHandler *GPU::RegionCallOpHandler::RegionCallOpHandler(GPU::RegionCallOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B52360;
  *(v5 + 15) = 0;
  v8 = *(v5 + 3);
  RegionType = mlir::placement::RegionCall::getRegionType(&v8);
  switch(RegionType)
  {
    case 0:
      operator new();
    case 1:
      operator new();
    case 2:
      operator new();
  }

  if (!*(this + 15) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return this;
}

void sub_1E08656D0(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x1E12E5B90](v3, 0xA1C40E1112DF6);
  v5 = *(v1 + 15);
  *(v1 + 15) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

void GPU::RegionCallOpHandler::~RegionCallOpHandler(GPU::RegionCallOpHandler *this)
{
  *this = &unk_1F5B52360;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B52360;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::RegionReturnOpHandler::~RegionReturnOpHandler(GPU::RegionReturnOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

EmitterViewerSPI::ReturnOpHandler *EmitterViewerSPI::ReturnOpHandler::ReturnOpHandler(EmitterViewerSPI::ReturnOpHandler *this, EmitViewerSPI *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = 0;
  *this = &unk_1F5B52430;
  v23 = *(*(a3 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v23);
  v7 = strlen(AttrData);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v22 = v7;
  if (v7)
  {
    memmove(&__dst, AttrData, v7);
  }

  *(&__dst + v8) = 0;
  if (v22 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v20 = [MEMORY[0x1E696AEC0] stringWithCString:p_dst encoding:4];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0;
  for (i = 24; (*(a3 + 46) & 0x80) != 0; i += 32)
  {
    if (v11 >= *(a3 + 17))
    {
      break;
    }

    v13 = *(*(a3 + 9) + i);
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ret%d", v11];
    v15 = EmitViewerSPI::emitNodeInputPort(a2, v14, v13);
    [v10 addObject:v15];

    ++v11;
  }

  v16 = *(a2 + 22);
  v17 = [MPSGraphViewerNodeSPI alloc];
  v18 = [(MPSGraphViewerNodeSPI *)v17 initWithType:v20 inputs:v10 outputs:MEMORY[0x1E695E0F0] properties:MEMORY[0x1E695E0F0] regions:MEMORY[0x1E695E0F0]];
  [v16 addObject:v18];

  if (v22 < 0)
  {
    operator delete(__dst);
  }

  return this;
}

void sub_1E0865B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

mlir::Operation **GPU::VarHandleOpHandler::VarHandleOpHandler(mlir::Operation **this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B52460;
  *(v5 + 15) = 0;
  v6 = objc_alloc(MEMORY[0x1E6974740]);
  v7 = [*(this[2] + 6) metalDevice];
  v8 = [v6 initWithDevice:v7];
  v9 = this[1];
  this[1] = v8;

  v10 = getVariableHandleName(this[3]);
  v11 = this[15];
  this[15] = v10;

  return this;
}

id getVariableHandleName(mlir::Operation *a1)
{
  v12 = a1;
  v1 = MEMORY[0x1E696AEC0];
  Identifier = mlir::mpsx::VarHandleOp::getIdentifier(&v12);
  if (Identifier)
  {
    v4 = v3;
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v3 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v11) = v3;
    if (v3)
    {
      memmove(&__p, Identifier, v3);
    }

    *(&__p + v4) = 0;
    if (v11 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }
  }

  else
  {
    __p = 0;
    v10 = 0;
    p_p = &__p;
    v11 = 0;
  }

  v6 = [v1 stringWithUTF8String:{p_p, __p, v10, v11}];
  if (SHIBYTE(v11) < 0)
  {
    v7 = v6;
    operator delete(__p);
    v6 = v7;
  }

  return v6;
}

void sub_1E0865DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GPU::VarHandleOpHandler::encodeOp(GPU::VarHandleOpHandler *this, void **a2)
{
  v4 = *(this + 3);
  v5 = *(v4 + 36);
  v6 = v4 - 16;
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  WeakRetained = objc_loadWeakRetained((*(this + 2) + 56));
  v10 = [WeakRetained[3] objectForKeyedSubscript:*(this + 15)];
  v16 = [v10 variable];

  v11 = [*(*(this + 2) + 48) metalDevice];
  v12 = [v16 mpsNDArrayWithDevice:v11];

  if (!v12 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v13 = (*(**(this + 2) + 48))(*(this + 2), NextResultAtOffset, 0);
  v14 = *(this + 2);
  v15 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  GPURegionRuntime::copyNDArrayToTarget(v14, v15, a2[1], this + 1, v12, v13, NextResultAtOffset, 0);
}

GPU::VariableFromTensorOpHandler *GPU::VariableFromTensorOpHandler::VariableFromTensorOpHandler(GPU::VariableFromTensorOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4) = &unk_1F5B524B0;
  v5 = objc_alloc(MEMORY[0x1E6974740]);
  v6 = [*(*(this + 2) + 48) metalDevice];
  v7 = [v5 initWithDevice:v6];
  v8 = *(this + 1);
  *(this + 1) = v7;

  return this;
}

void GPU::VariableFromTensorOpHandler::encodeOp(GPU::VariableFromTensorOpHandler *this, void **a2)
{
  v4 = *(this + 3);
  if (*(v4 + 36))
  {
    v5 = v4 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  v11 = (*(**(this + 2) + 48))(*(this + 2), *(*(v4 + 72) + 24), 0);
  v7 = [v11 mpsndarray];
  v8 = (*(**(this + 2) + 48))(*(this + 2), NextResultAtOffset, 0);
  v9 = *(this + 2);
  v10 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  GPURegionRuntime::copyNDArrayToTarget(v9, v10, a2[1], this + 1, v7, v8, NextResultAtOffset, 0);
}

id *GPU::ReadVariableOpHandler::ReadVariableOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B52500;
  *(v5 + 15) = 0;
  v6 = objc_alloc(MEMORY[0x1E6974740]);
  v7 = [*(this[2] + 6) metalDevice];
  v8 = [v6 initWithDevice:v7];
  v9 = this[1];
  this[1] = v8;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  v14 = *(*(this[3] + 9) + 24);
  if (*(*(mlir::Value::getDefiningOp(&v14) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::VarHandleOp,void>::id)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v14);
    v10 = getVariableHandleName(DefiningOp);
  }

  else
  {
    v10 = 0;
  }

  v12 = this[15];
  this[15] = v10;

  return this;
}

void GPU::ReadVariableOpHandler::encodeOp(GPU::ReadVariableOpHandler *this, void **a2)
{
  v4 = *(this + 3);
  v5 = *(*(v4 + 72) + 24);
  v6 = *(v4 + 36);
  v7 = v4 - 16;
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  if (*(this + 15))
  {
    WeakRetained = objc_loadWeakRetained((*(this + 2) + 56));
    v11 = [WeakRetained[3] objectForKeyedSubscript:*(this + 15)];

    v12 = [*(*(this + 2) + 128) objectForKeyedSubscript:v11];
    v20 = [v12 mpsndarray];
  }

  else
  {
    v20 = 0;
  }

  v13 = (*(**(this + 2) + 48))(*(this + 2), NextResultAtOffset, 0);
  if (v20)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_16;
    }

    v14 = v20;
    v15 = [v14 readCount];
    v16 = *NextResultAtOffset;
    if (*NextResultAtOffset)
    {
      v17 = 0;
      do
      {
        ++v17;
        v16 = *v16;
      }

      while (v16);
      v16 = v17;
    }

    [v14 setReadCount:v16 + v15];
    v20 = v14;
  }

  else
  {
    v14 = (*(**(this + 2) + 48))(*(this + 2), v5, 0);
    v20 = [v14 mpsndarray];
  }

LABEL_16:
  v18 = *(this + 2);
  v19 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  GPURegionRuntime::copyNDArrayToTarget(v18, v19, a2[1], this + 1, v20, v13, NextResultAtOffset, 0);
}

GPU::AssignVariableOpHandler *GPU::AssignVariableOpHandler::AssignVariableOpHandler(GPU::AssignVariableOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B52550;
  *(v5 + 15) = 0;
  v6 = objc_alloc(MEMORY[0x1E6974740]);
  v7 = [*(*(this + 2) + 48) metalDevice];
  v8 = [v6 initWithDevice:v7];
  v9 = *(this + 1);
  *(this + 1) = v8;

  v18 = *(*(*(this + 3) + 72) + 24);
  if (*(*(mlir::Value::getDefiningOp(&v18) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::VarHandleOp,void>::id)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v18);
    v16 = getVariableHandleName(DefiningOp);
    v12 = *(this + 15);
    *(this + 15) = v16;
  }

  else
  {
    v10 = *(this + 15);
    *(this + 15) = 0;

    v11 = objc_alloc(MEMORY[0x1E6974740]);
    v12 = [*(*(this + 2) + 48) metalDevice];
    v13 = [v11 initWithDevice:v12];
    v14 = *(this + 1);
    *(this + 1) = v13;
  }

  return this;
}

void GPU::AssignVariableOpHandler::encodeNDArrayOp(GPU::AssignVariableOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v28 = a3;
  v5 = *(this + 3);
  v6 = (*(**(this + 2) + 48))(*(this + 2), *(*(v5 + 72) + 56), 0);
  v7 = [v6 mpsndarray];
  if (*(this + 15))
  {
    WeakRetained = objc_loadWeakRetained((*(this + 2) + 56));
    v9 = [WeakRetained[3] objectForKeyedSubscript:*(this + 15)];

    v10 = [*(*(this + 2) + 128) objectForKeyedSubscript:v9];
    v11 = [v10 mpsndarray];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        MPSDecrementReadCount(v11);
      }
    }

    v12 = [v7 numberOfDimensions];
    v13 = [v9 shape];
    v14 = [v13 count];

    if (v12 == v14)
    {
      v15 = v7;
    }

    else
    {
      v23 = [v7 descriptor];
      v24 = [v9 shape];
      [v23 reshapeWithShape:v24];

      if (*(v7 + *MEMORY[0x1E69744E8]) == 1)
      {
        v25 = v7;
        [v25 setReadCount:{objc_msgSend(v25, "readCount") + 1}];
      }

      v26 = *(a2 + 1);
      v27 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      v15 = [v7 safeArrayViewWithCommandBuffer:v26 computeEncoder:v27 descriptor:v23 aliasing:0];

      if (!v15 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    [*(*(this + 2) + 128) setObject:v6 forKey:v9];
  }

  else
  {
    v16 = (*(**(this + 2) + 48))(*(this + 2), *(*(v5 + 72) + 24), 0);
    v17 = [v16 mpsndarray];

    if (v7 != v17)
    {
      v18 = *(this + 1);
      v19 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      v20 = *(a2 + 1);
      v29[0] = v7;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      v22 = [v16 mpsndarray];
      [v18 encodeToMPSCommandEncoder:v19 commandBuffer:v20 sourceArrays:v21 resultState:0 destinationArray:v22 kernelDAGObject:0];
    }

    v15 = v7;
  }
}

void GPU::VarHandleOpHandler::~VarHandleOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::VariableFromTensorOpHandler::~VariableFromTensorOpHandler(GPU::VariableFromTensorOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::ReadVariableOpHandler::~ReadVariableOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::AssignVariableOpHandler::~AssignVariableOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

id *GPU::CallOpHandler::CallOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v6 = &unk_1F5B52600;
  *(v6 + 120) = 0;
  *(v6 + 16) = 0;
  v7 = (v6 + 128);
  *(v6 + 17) = 0;
  *(v6 + 18) = 0;
  v8 = *(a3 + 9);
  if (v8)
  {
    v9 = a3 - 16;
  }

  else
  {
    v9 = 0;
  }

  if (!v8)
  {
LABEL_18:
    v16 = 1;
    goto LABEL_19;
  }

  v10 = 0;
  while (1)
  {
    v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, v10) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8))
    {
      __dst = 0;
      v30 = 0;
      goto LABEL_6;
    }

    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
    __dst = v11;
    v30 = v12;
    if (v11)
    {
      if (!mlir::CallOpInterface::getArgOperands(&__dst))
      {
        goto LABEL_17;
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&__dst);
      if (v14)
      {
        break;
      }
    }

LABEL_6:
    if (++v10 == v8)
    {
      goto LABEL_18;
    }
  }

  v15 = 8 * v14;
  while (*ArgAttrsAttr != 0x8000000000000000)
  {
    ++ArgAttrsAttr;
    v15 -= 8;
    if (!v15)
    {
      goto LABEL_6;
    }
  }

LABEL_17:
  v16 = 0;
LABEL_19:
  *(this + 120) = v16;
  objc_storeStrong(v7, this[1]);
  v17 = objc_opt_new();
  v18 = this[17];
  this[17] = v17;

  [this[17] setDisableSynchronizeResults:1];
  v32 = this[3];
  v19 = MEMORY[0x1E696AEC0];
  SymbolName = mlir::mps::CallOp::getSymbolName(&v32);
  if (SymbolName)
  {
    v22 = v20;
    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v20 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v31) = v20;
    if (v20)
    {
      memmove(&__dst, SymbolName, v20);
    }

    *(&__dst + v22) = 0;
    if (v31 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }
  }

  else
  {
    __dst = 0;
    v30 = 0;
    p_dst = &__dst;
    v31 = 0;
  }

  v24 = [v19 stringWithUTF8String:p_dst];
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__dst);
  }

  v25 = [*(this[2] + 10) objectForKeyedSubscript:v24];
  v26 = this[18];
  this[18] = v25;

  if (!this[18] && MTLReportFailureTypeEnabled())
  {
    v28 = v24;
    MTLReportFailure();
  }

  [this[18] initializeFuncNamesInOriginalModule];
  if (*(this[18] + 904) == 1 && *(this[18] + 111) >= 2uLL)
  {
    [this[17] setEntryFunctionName:v24];
  }

  return this;
}

void sub_1E0867114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  GPU::BaseOpHandler::~BaseOpHandler(v16);
  _Unwind_Resume(a1);
}

void GPU::CallOpHandler::encodeOp(GPU::CallOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v4 = *(this + 3);
  v57 = v4;
  if ((*(v4 + 46) & 0x80) != 0)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(v4 + 68)];
    if ((*(v4 + 46) & 0x80) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    if ((*(v4 + 46) & 0x80) == 0)
    {
      goto LABEL_6;
    }
  }

  v6 = *(v4 + 68);
  if (v6)
  {
    v7 = 0;
    v8 = 24;
    do
    {
      v9 = (*(**(this + 2) + 48))(*(this + 2), *(*(v57 + 72) + v8), 0);
      [v5 setObject:v9 atIndexedSubscript:v7];

      ++v7;
      v8 += 32;
    }

    while (v6 != v7);
  }

LABEL_6:
  (**a2)(a2);
  v53 = v5;
  if (*(this + 120) == 1)
  {
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(*(this + 3) + 36)];
    v11 = *(this + 3);
    v12 = *(v11 + 36);
    v13 = v11 - 16;
    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v12)
    {
      for (i = 0; i != v12; ++i)
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, i);
        v17 = (*(**(this + 2) + 80))(*(this + 2), NextResultAtOffset, *(a2 + 1), 0, 0, 1);
        [v10 addObject:v17];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v18 = [*(this + 18) encodeToCommandBuffer:*(a2 + 1) inputsArray:v5 resultsArray:v10 executionDescriptor:*(this + 17)];

  (**a2)(a2);
  if ((*(this + 120) & 1) == 0)
  {
    v19 = MEMORY[0x1E696AEC0];
    v52 = v18;
    SymbolName = mlir::mps::CallOp::getSymbolName(&v57);
    if (SymbolName)
    {
      v22 = v20;
      if (v20 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v20 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v59) = v20;
      if (v20)
      {
        memmove(&__dst, SymbolName, v20);
      }

      *(&__dst + v22) = 0;
      if (v59 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }
    }

    else
    {
      __dst = 0uLL;
      p_dst = &__dst;
      v59 = 0;
    }

    v24 = [v19 stringWithUTF8String:p_dst];
    if (SHIBYTE(v59) < 0)
    {
      operator delete(__dst);
    }

    v51 = v24;
    [v18 count];
    v25 = [v18 count];
    if (v25 != *(v57 + 36) && MTLReportFailureTypeEnabled())
    {
      v50 = v24;
      MTLReportFailure();
    }

    v26 = v57;
    if (*(v57 + 36))
    {
      v27 = 0;
      do
      {
        v28 = v26 - 24 * (v27 - 5) - 96;
        v29 = (v26 - 16 * (v27 + 1));
        if (v27 <= 5)
        {
          v30 = v29;
        }

        else
        {
          v30 = v28;
        }

        v31 = [v18 objectAtIndexedSubscript:{v27, v50}];
        v32 = *(*(*(this + 2) + 592) + 32);
        if ((*(*v32 + 24))(v32, v30))
        {
          goto LABEL_53;
        }

        v33 = (v30[1] & 0xFFFFFFFFFFFFFFF8);
        if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v33 + 8))
        {
          v34 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v33 + 8);
          *&__dst = v33;
          *(&__dst + 1) = v34;
          if (v33)
          {
            if (!mlir::CallOpInterface::getArgOperands(&__dst))
            {
              goto LABEL_46;
            }

            ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&__dst);
            if (v36)
            {
              v37 = 8 * v36;
              while (*ArgAttrsAttr != 0x8000000000000000)
              {
                ++ArgAttrsAttr;
                v37 -= 8;
                if (!v37)
                {
                  goto LABEL_53;
                }
              }

LABEL_46:
              v38 = (v30[1] & 0xFFFFFFFFFFFFFFF8);
              if (v38)
              {
                v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v38 + 8);
                if (v39)
                {
                  v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v38 + 8);
                }

                else
                {
                  v38 = 0;
                }
              }

              else
              {
                v39 = 0;
              }

              v56[0] = v38;
              v56[1] = v39;
              v40 = [v31 shape];
              MPSShapeToVector<unsigned long long>(v40, &__p);

              *&__dst = __p;
              *(&__dst + 1) = (v55 - __p) >> 3;
              LOBYTE(v59) = 1;
              isSplat = mlir::ElementsAttr::isSplat(v56);
              v42 = mlir::ShapedType::cloneWith(v56, &__dst, isSplat);
              v43 = *(this + 2);
              v61 = v42;
              v62 = v30;
              v60 = *(mlir::Value::getParentRegion(&v62) + 2);
              *&__dst = &v60;
              v44 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((v43 + 288), &v60, &std::piecewise_construct, &__dst);
              *&__dst = v62;
              std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(v44 + 3, &__dst, &__dst, &v61);
              if (__p)
              {
                v55 = __p;
                operator delete(__p);
              }
            }
          }
        }

        else
        {
          __dst = 0uLL;
        }

LABEL_53:
        v45 = (*(**(this + 2) + 48))(*(this + 2), v30, 0);
        v46 = *(this + 2);
        v47 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
        v48 = *(a2 + 1);
        v49 = [v31 mpsndarray];
        GPURegionRuntime::copyNDArrayToTarget(v46, v47, v48, this + 16, v49, v45, v30, 0);

        ++v27;
        v26 = v57;
        v18 = v52;
        v5 = v53;
      }

      while (v27 != *(v57 + 36));
    }
  }
}

void sub_1E0867780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void GPU::CallOpHandler::~CallOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void sub_1E08685EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  mlir::OperationState::~OperationState(&a38);

  _Unwind_Resume(a1);
}

void sub_1E0868770(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t MPSSymbolTable::getLocationByInsertingOp<mlir::mps::LocalConvolutionOp>(llvm::StringMapImpl *a1, mlir::StringAttr **a2, std::string *a3, unsigned int a4, void *a5)
{
  v9 = a5;
  v26 = 260;
  v25[0] = a3;
  StringAttr = mlir::Builder::getStringAttr(a2, v25);
  v13 = mlir::FileLineColLoc::get(StringAttr, a4, 0);
  if (v9)
  {
    v14 = [v9 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v15;
    if (v15)
    {
      memmove(&__dst, v14, v15);
    }

    v17 = &__dst + v16;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 21;
    qmemcpy(&__dst, "mps.local_convolution", 21);
    v17 = &__dst.__r_.__value_.__s.__data_[21];
  }

  *v17 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a1, &__dst, &__p, v11, v12);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v19 = 1;
  HIBYTE(v26) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v25[0] = p_p;
    v19 = 3;
  }

  LOBYTE(v26) = v19;
  v20 = mlir::Builder::getStringAttr(a2, v25);
  v21 = mlir::NameLoc::get(v20, v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_18:
    operator delete(__dst.__r_.__value_.__l.__data_);
    goto LABEL_16;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_18;
  }

LABEL_16:

  return v21;
}

void sub_1E086944C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

uint64_t getKernelSizeFromShape(void *a1, uint64_t **a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v12[0] = 2;
  IntegerType = mlir::Builder::getIntegerType(a2, 64, 0);
  v5 = mlir::RankedTensorType::get(v12, 1, IntegerType, 0);
  v6 = v5;
  if (v5)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 objectAtIndexedSubscript:1];
  v12[0] = [v8 unsignedLongValue];
  v9 = [v3 objectAtIndexedSubscript:0];
  v12[1] = [v9 unsignedLongValue];
  v10 = mlir::DenseElementsAttr::getFromRawBuffer(v6, v7, v12, 16);

  return v10;
}

uint64_t GPU::BaseReductionOpHandler<mlir::mps::ReductionMaxOp,(MPSNDArrayReductionOperation)1>::BaseReductionOpHandler(uint64_t a1, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4) = &unk_1F5B52668;
  v12 = a3;
  v6 = objc_alloc(MEMORY[0x1E6974840]);
  v7 = [*(*(a1 + 16) + 48) metalDevice];
  if (mlir::mps::StridedSliceOp::getEndIsSize(&v12))
  {
    v8 = 3;
  }

  else
  {
    v8 = 1;
  }

  v9 = [v6 initWithDevice:v7 axis:0 operation:v8];
  v10 = *(a1 + 8);
  *(a1 + 8) = v9;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  return a1;
}

uint64_t GPU::BaseReductionOpHandler<mlir::mps::ReductionMinOp,(MPSNDArrayReductionOperation)0>::BaseReductionOpHandler(uint64_t a1, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4) = &unk_1F5B526B8;
  v12 = a3;
  v6 = objc_alloc(MEMORY[0x1E6974840]);
  v7 = [*(*(a1 + 16) + 48) metalDevice];
  if (mlir::mps::StridedSliceOp::getEndIsSize(&v12))
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 initWithDevice:v7 axis:0 operation:v8];
  v10 = *(a1 + 8);
  *(a1 + 8) = v9;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  return a1;
}

uint64_t GPU::BaseReductionOpHandler<mlir::mps::ReductionSumOp,(MPSNDArrayReductionOperation)4>::BaseReductionOpHandler(uint64_t a1, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4) = &unk_1F5B52CC8;
  v5 = objc_alloc(MEMORY[0x1E6974840]);
  v6 = [*(*(a1 + 16) + 48) metalDevice];
  v7 = [v5 initWithDevice:v6 axis:0 operation:4];
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  return a1;
}

uint64_t GPU::BaseReductionOpHandler<mlir::mps::ReductionProdOp,(MPSNDArrayReductionOperation)5>::BaseReductionOpHandler(uint64_t a1, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4) = &unk_1F5B52D18;
  v5 = objc_alloc(MEMORY[0x1E6974840]);
  v6 = [*(*(a1 + 16) + 48) metalDevice];
  v7 = [v5 initWithDevice:v6 axis:0 operation:5];
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  return a1;
}

uint64_t GPU::BaseReductionOpHandler<mlir::mps::ReductionAndOp,(MPSNDArrayReductionOperation)8>::BaseReductionOpHandler(uint64_t a1, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4) = &unk_1F5B52D68;
  v5 = objc_alloc(MEMORY[0x1E6974840]);
  v6 = [*(*(a1 + 16) + 48) metalDevice];
  v7 = [v5 initWithDevice:v6 axis:0 operation:8];
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  return a1;
}

uint64_t GPU::BaseReductionOpHandler<mlir::mps::ReductionOrOp,(MPSNDArrayReductionOperation)9>::BaseReductionOpHandler(uint64_t a1, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4) = &unk_1F5B52DB8;
  v5 = objc_alloc(MEMORY[0x1E6974840]);
  v6 = [*(*(a1 + 16) + 48) metalDevice];
  v7 = [v5 initWithDevice:v6 axis:0 operation:9];
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  return a1;
}

uint64_t GPU::BaseReductionOpHandler<mlir::mps::ReductionArgMinOp,(MPSNDArrayReductionOperation)6>::BaseReductionOpHandler(uint64_t a1, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4) = &unk_1F5B52E08;
  v5 = objc_alloc(MEMORY[0x1E6974840]);
  v6 = [*(*(a1 + 16) + 48) metalDevice];
  v7 = [v5 initWithDevice:v6 axis:0 operation:6];
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  return a1;
}

uint64_t GPU::BaseReductionOpHandler<mlir::mps::ReductionArgMaxOp,(MPSNDArrayReductionOperation)7>::BaseReductionOpHandler(uint64_t a1, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4) = &unk_1F5B52E58;
  v5 = objc_alloc(MEMORY[0x1E6974840]);
  v6 = [*(*(a1 + 16) + 48) metalDevice];
  v7 = [v5 initWithDevice:v6 axis:0 operation:7];
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  return a1;
}

id *GPU::RMSNormOpHandler::RMSNormOpHandler(id *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v6 = &unk_1F5B52988;
  *(v6 + 15) = 0;
  *(v6 + 128) = 0;
  v7 = objc_alloc(MEMORY[0x1E6974890]);
  v8 = [a2[6] metalDevice];
  v9 = [v7 initWithDevice:v8 axis:0 epsilon:0.0];

  objc_storeStrong(this + 1, v9);
  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  v10 = this[3];
  this[15] = v10;
  v14 = *(v10[9] + 56);
  DefiningOp = mlir::Value::getDefiningOp(&v14);
  if (!DefiningOp)
  {
    *(this + 128) = 0;
    if (*(this + 40) != 1)
    {
      goto LABEL_9;
    }

LABEL_8:
    GPU::RMSNormOpHandler::setAxes(this, 0);
    goto LABEL_9;
  }

  v12 = *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id;
  *(this + 128) = v12;
  if (v12)
  {
    GPU::RMSNormOpHandler::setEpsilon(this, 0);
  }

  if (*(this + 40) == 1)
  {
    goto LABEL_8;
  }

LABEL_9:

  return this;
}

void sub_1E086A978(_Unwind_Exception *a1)
{
  v3 = v2;

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

void GPU::RMSNormOpHandler::setEpsilon(GPU::RMSNormOpHandler *this, GPU::EncodeDescriptor *a2)
{
  GPURegionRuntime::waitAndReadFPTensorData(*(this + 2), a2, *(*(*(this + 15) + 72) + 56), &__p);
  if (v5 - __p != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  LODWORD(v3) = *__p;
  [*(this + 1) setEpsilon:v3];
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_1E086AA5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GPU::RMSNormOpHandler::setAxes(GPU::RMSNormOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v18 = *(this + 1);
  v4 = *(*(this + 15) + 72);
  v5 = *(v4 + 24);
  v6 = *(v4 + 88);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  StaticType = GPURegionRuntime::getStaticType(*(this + 2), v5);
  v9 = StaticType;
  if (StaticType)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    v10 = 0;
  }

  __p = v9;
  v21 = v10;
  mlir::CallableOpInterface::getArgAttrsAttr(&__p);
  v12 = v11;
  if (v6)
  {
    GPURegionRuntime::waitAndReadIntTensorData(*(this + 2), a2, v6, &__p);
    v13 = v21;
    v14 = v18;
  }

  else
  {
    __p = 0;
    v21 = 0;
    v22 = 0;
    v14 = v18;
    if (v11)
    {
      operator new();
    }

    v13 = 0;
  }

  v15 = __p;
  if (__p != v13)
  {
    do
    {
      if (*v15 >= 0)
      {
        v16 = v12;
      }

      else
      {
        v16 = 0;
      }

      v17 = [MEMORY[0x1E696AD98] numberWithInteger:{v16 + ~*v15, v18}];
      [v7 addObject:v17];

      ++v15;
    }

    while (v15 != v13);
    v14 = v18;
    v15 = __p;
  }

  if (v15)
  {
    v21 = v15;
    operator delete(v15);
    v14 = v18;
  }

  [v14 setAxes:{v7, v18}];
}

void sub_1E086AD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    JUMPOUT(0x1E086AD40);
  }

  JUMPOUT(0x1E086AD44);
}

void GPU::RMSNormOpHandler::encodeNDArrayOp(GPU::RMSNormOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((*(this + 128) & 1) == 0)
  {
    GPU::RMSNormOpHandler::setEpsilon(this, a2);
  }

  if ((*(this + 40) & 1) == 0)
  {
    GPU::RMSNormOpHandler::setAxes(this, a2);
  }

  v6 = *(*(*(this + 15) + 72) + 24);
  v7 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v8 = (*(**(this + 2) + 48))(*(this + 2), v6, 0);
  v9 = [v7 mpsndarray];
  v10 = [v8 mpsndarray];
  v11 = *(this + 1);
  if (*(this + 4))
  {
    mlir::Block::getParentOp(*(*(this + 3) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(this + 3) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v12 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(this + 4), *(this + 2));
    v13 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v14 = *(a2 + 1);
    v15 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 4));
    [v11 encodeToMPSCommandEncoder:v13 commandBuffer:v14 sourceArrays:v12 resultState:0 destinationArray:v9 kernelDAGObject:v15];
  }

  else
  {
    if ((!v9 || !v10) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v16 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v17 = *(a2 + 1);
    v19[0] = v10;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [v11 encodeToMPSCommandEncoder:v16 commandBuffer:v17 sourceArrays:v18 resultState:0 destinationArray:v9 kernelDAGObject:0];
  }
}

char *GPU::RMSNormOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 2)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 2u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

id *GPU::SoftmaxOpHandler::SoftmaxOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4) = &unk_1F5B529D8;
  v5 = objc_alloc(MEMORY[0x1E6974898]);
  v6 = [*(this[2] + 6) metalDevice];
  v7 = [v5 initWithDevice:v6 axis:0];
  v8 = this[1];
  this[1] = v7;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  return this;
}

void GPU::SoftmaxOpHandler::encodeNDArrayOp(GPU::SoftmaxOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(this + 3);
  v7 = *(*(v6 + 72) + 24);
  v29 = v5;
  v31 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v30 = (*(**(this + 2) + 48))(*(this + 2), v7, 0);
  v33 = [v31 mpsndarray];
  v32 = [v30 mpsndarray];
  v34 = *(this + 1);
  v8 = *(*(v6 + 72) + 56);
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  StaticType = GPURegionRuntime::getStaticType(*(this + 2), v7);
  v11 = StaticType;
  if (StaticType)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    v12 = 0;
  }

  __p = v11;
  v36 = v12;
  mlir::CallableOpInterface::getArgAttrsAttr(&__p);
  v14 = v13;
  if (v8)
  {
    GPURegionRuntime::waitAndReadIntTensorData(*(this + 2), a2, v8, &__p);
    v15 = v36;
  }

  else
  {
    __p = 0;
    v36 = 0;
    v37 = 0;
    if (v13)
    {
      operator new();
    }

    v15 = 0;
  }

  v16 = __p;
  if (__p == v15)
  {
    v20 = a2;
    v17 = v31;
    if (!__p)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v17 = v31;
  do
  {
    if (*v16 >= 0)
    {
      v18 = v14;
    }

    else
    {
      v18 = 0;
    }

    v19 = [MEMORY[0x1E696AD98] numberWithInteger:v18 + ~*v16];
    [v9 addObject:v19];

    ++v16;
  }

  while (v16 != v15);
  v16 = __p;
  v20 = a2;
  if (__p)
  {
LABEL_13:
    v36 = v16;
    operator delete(v16);
  }

LABEL_14:
  [v9 count];
  if ([v9 count] != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v21 = [v9 objectAtIndexedSubscript:0];
  [v34 setAxis:{objc_msgSend(v21, "unsignedIntegerValue")}];

  if (*(this + 4))
  {
    mlir::Block::getParentOp(*(*(this + 3) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(this + 3) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v22 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(this + 4), *(this + 2));
    v23 = GPU::EncodeDescriptor::getcomputeEncoder(v20);
    v24 = *(v20 + 1);
    v25 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 4));
    [v34 encodeToMPSCommandEncoder:v23 commandBuffer:v24 sourceArrays:v22 resultState:0 destinationArray:v33 kernelDAGObject:v25];
  }

  else
  {
    if ((!v33 || !v32) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v26 = GPU::EncodeDescriptor::getcomputeEncoder(v20);
    v27 = *(v20 + 1);
    v38[0] = v32;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
    [v34 encodeToMPSCommandEncoder:v26 commandBuffer:v27 sourceArrays:v28 resultState:0 destinationArray:v33 kernelDAGObject:0];
  }
}

uint64_t GPU::BaseReductionLikeOpHandler<mlir::mps_spi::RMSNormOp>::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  result = MPSKernelDAG::unaryCoreOp();
  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::RMSNormOpHandler::~RMSNormOpHandler(GPU::RMSNormOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::BaseReductionLikeOpHandler<mlir::mps::SoftmaxOp>::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  result = MPSKernelDAG::unaryCoreOp();
  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::SoftmaxOpHandler::~SoftmaxOpHandler(GPU::SoftmaxOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

char *GPU::BaseReductionLikeOpHandler<mlir::mps::SoftmaxOp>::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 1)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 1u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::BaseReductionOpHandler<mlir::mps::ReductionMaxOp,(MPSNDArrayReductionOperation)1>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v36 = *(a1 + 24);
  v32 = v5;
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v36, 0);
  v7 = *(*(v36 + 72) + 32 * ODSOperandIndexAndLength + 24);
  v31 = [v5 objectAtIndexedSubscript:0];
  v30 = (*(**(a1 + 16) + 48))(*(a1 + 16), v7, 0);
  v33 = [v30 mpsndarray];
  v34 = [v31 mpsndarray];
  v35 = *(a1 + 8);
  v8 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v36, 1u);
  if ((*(v36 + 46) & 0x80) != 0)
  {
    v9 = *(v36 + 72);
    v10 = v8;
    if (HIDWORD(v8) + v8 == v8)
    {
LABEL_3:
      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v10 = v8;
    if (HIDWORD(v8) + v8 == v8)
    {
      goto LABEL_3;
    }
  }

  v11 = *(v9 + 32 * v10 + 24);
LABEL_6:
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  StaticType = GPURegionRuntime::getStaticType(*(a1 + 16), v7);
  v14 = StaticType;
  if (StaticType)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    v15 = 0;
  }

  __p = v14;
  v38 = v15;
  mlir::CallableOpInterface::getArgAttrsAttr(&__p);
  v17 = v16;
  if (v11)
  {
    GPURegionRuntime::waitAndReadIntTensorData(*(a1 + 16), a2, v11, &__p);
    v18 = v38;
  }

  else
  {
    __p = 0;
    v38 = 0;
    v39 = 0;
    if (v16)
    {
      operator new();
    }

    v18 = 0;
  }

  v19 = __p;
  if (__p == v18)
  {
    v21 = v31;
    v20 = v32;
    v22 = a2;
    if (__p)
    {
LABEL_18:
      v38 = v19;
      operator delete(v19);
    }
  }

  else
  {
    v21 = v31;
    v20 = v32;
    v22 = a2;
    do
    {
      if (*v19 >= 0)
      {
        v23 = v17;
      }

      else
      {
        v23 = 0;
      }

      v24 = [MEMORY[0x1E696AD98] numberWithInteger:v23 + ~*v19];
      [v12 addObject:v24];

      ++v19;
    }

    while (v19 != v18);
    v19 = __p;
    if (__p)
    {
      goto LABEL_18;
    }
  }

  [v35 setAxes:v12];

  if (*(a1 + 32))
  {
    mlir::Block::getParentOp(*(*(a1 + 24) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(a1 + 24) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v25 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(a1 + 32), *(a1 + 16));
    v26 = GPU::EncodeDescriptor::getcomputeEncoder(v22);
    v27 = *(v22 + 1);
    v28 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(a1 + 32));
    [v35 encodeToMPSCommandEncoder:v26 commandBuffer:v27 sourceArrays:v25 resultState:0 destinationArray:v34 kernelDAGObject:v28];
  }

  else
  {
    if (!v33 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v25 = GPU::EncodeDescriptor::getcomputeEncoder(v22);
    v29 = *(v22 + 1);
    v40[0] = v33;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    [v35 encodeToMPSCommandEncoder:v25 commandBuffer:v29 sourceArrays:v26 destinationArray:v34];
  }
}

uint64_t GPU::BaseReductionLikeOpHandler<mlir::mps::ReductionMaxOp>::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v9, 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 32 * ODSOperandIndexAndLength + 24), 0);
  result = MPSKernelDAG::unaryCoreOp();
  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::BaseReductionOpHandler<mlir::mps::ReductionMaxOp,(MPSNDArrayReductionOperation)1>::~BaseReductionOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

char *GPU::BaseReductionLikeOpHandler<mlir::mps::ReductionMaxOp>::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 1)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 1u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::BaseReductionOpHandler<mlir::mps::ReductionMinOp,(MPSNDArrayReductionOperation)0>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v36 = *(a1 + 24);
  v32 = v5;
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v36, 0);
  v7 = *(*(v36 + 72) + 32 * ODSOperandIndexAndLength + 24);
  v31 = [v5 objectAtIndexedSubscript:0];
  v30 = (*(**(a1 + 16) + 48))(*(a1 + 16), v7, 0);
  v33 = [v30 mpsndarray];
  v34 = [v31 mpsndarray];
  v35 = *(a1 + 8);
  v8 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v36, 1u);
  if ((*(v36 + 46) & 0x80) != 0)
  {
    v9 = *(v36 + 72);
    v10 = v8;
    if (HIDWORD(v8) + v8 == v8)
    {
LABEL_3:
      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v10 = v8;
    if (HIDWORD(v8) + v8 == v8)
    {
      goto LABEL_3;
    }
  }

  v11 = *(v9 + 32 * v10 + 24);
LABEL_6:
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  StaticType = GPURegionRuntime::getStaticType(*(a1 + 16), v7);
  v14 = StaticType;
  if (StaticType)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    v15 = 0;
  }

  __p = v14;
  v38 = v15;
  mlir::CallableOpInterface::getArgAttrsAttr(&__p);
  v17 = v16;
  if (v11)
  {
    GPURegionRuntime::waitAndReadIntTensorData(*(a1 + 16), a2, v11, &__p);
    v18 = v38;
  }

  else
  {
    __p = 0;
    v38 = 0;
    v39 = 0;
    if (v16)
    {
      operator new();
    }

    v18 = 0;
  }

  v19 = __p;
  if (__p == v18)
  {
    v21 = v31;
    v20 = v32;
    v22 = a2;
    if (__p)
    {
LABEL_18:
      v38 = v19;
      operator delete(v19);
    }
  }

  else
  {
    v21 = v31;
    v20 = v32;
    v22 = a2;
    do
    {
      if (*v19 >= 0)
      {
        v23 = v17;
      }

      else
      {
        v23 = 0;
      }

      v24 = [MEMORY[0x1E696AD98] numberWithInteger:v23 + ~*v19];
      [v12 addObject:v24];

      ++v19;
    }

    while (v19 != v18);
    v19 = __p;
    if (__p)
    {
      goto LABEL_18;
    }
  }

  [v35 setAxes:v12];

  if (*(a1 + 32))
  {
    mlir::Block::getParentOp(*(*(a1 + 24) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(a1 + 24) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v25 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(a1 + 32), *(a1 + 16));
    v26 = GPU::EncodeDescriptor::getcomputeEncoder(v22);
    v27 = *(v22 + 1);
    v28 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(a1 + 32));
    [v35 encodeToMPSCommandEncoder:v26 commandBuffer:v27 sourceArrays:v25 resultState:0 destinationArray:v34 kernelDAGObject:v28];
  }

  else
  {
    if (!v33 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v25 = GPU::EncodeDescriptor::getcomputeEncoder(v22);
    v29 = *(v22 + 1);
    v40[0] = v33;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    [v35 encodeToMPSCommandEncoder:v25 commandBuffer:v29 sourceArrays:v26 destinationArray:v34];
  }
}

uint64_t GPU::BaseReductionLikeOpHandler<mlir::mps::ReductionMinOp>::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v9, 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 32 * ODSOperandIndexAndLength + 24), 0);
  result = MPSKernelDAG::unaryCoreOp();
  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::BaseReductionOpHandler<mlir::mps::ReductionMinOp,(MPSNDArrayReductionOperation)0>::~BaseReductionOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

char *GPU::BaseReductionLikeOpHandler<mlir::mps::ReductionMinOp>::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 1)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 1u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::BaseReductionOpHandler<mlir::mps::ReductionSumOp,(MPSNDArrayReductionOperation)4>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v36 = *(a1 + 24);
  v32 = v5;
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v36, 0);
  v7 = *(*(v36 + 72) + 32 * ODSOperandIndexAndLength + 24);
  v31 = [v5 objectAtIndexedSubscript:0];
  v30 = (*(**(a1 + 16) + 48))(*(a1 + 16), v7, 0);
  v33 = [v30 mpsndarray];
  v34 = [v31 mpsndarray];
  v35 = *(a1 + 8);
  v8 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v36, 1u);
  if ((*(v36 + 46) & 0x80) != 0)
  {
    v9 = *(v36 + 72);
    v10 = v8;
    if (HIDWORD(v8) + v8 == v8)
    {
LABEL_3:
      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v10 = v8;
    if (HIDWORD(v8) + v8 == v8)
    {
      goto LABEL_3;
    }
  }

  v11 = *(v9 + 32 * v10 + 24);
LABEL_6:
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  StaticType = GPURegionRuntime::getStaticType(*(a1 + 16), v7);
  v14 = StaticType;
  if (StaticType)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    v15 = 0;
  }

  __p = v14;
  v38 = v15;
  mlir::CallableOpInterface::getArgAttrsAttr(&__p);
  v17 = v16;
  if (v11)
  {
    GPURegionRuntime::waitAndReadIntTensorData(*(a1 + 16), a2, v11, &__p);
    v18 = v38;
  }

  else
  {
    __p = 0;
    v38 = 0;
    v39 = 0;
    if (v16)
    {
      operator new();
    }

    v18 = 0;
  }

  v19 = __p;
  if (__p == v18)
  {
    v21 = v31;
    v20 = v32;
    v22 = a2;
    if (__p)
    {
LABEL_18:
      v38 = v19;
      operator delete(v19);
    }
  }

  else
  {
    v21 = v31;
    v20 = v32;
    v22 = a2;
    do
    {
      if (*v19 >= 0)
      {
        v23 = v17;
      }

      else
      {
        v23 = 0;
      }

      v24 = [MEMORY[0x1E696AD98] numberWithInteger:v23 + ~*v19];
      [v12 addObject:v24];

      ++v19;
    }

    while (v19 != v18);
    v19 = __p;
    if (__p)
    {
      goto LABEL_18;
    }
  }

  [v35 setAxes:v12];

  if (*(a1 + 32))
  {
    mlir::Block::getParentOp(*(*(a1 + 24) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(a1 + 24) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v25 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(a1 + 32), *(a1 + 16));
    v26 = GPU::EncodeDescriptor::getcomputeEncoder(v22);
    v27 = *(v22 + 1);
    v28 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(a1 + 32));
    [v35 encodeToMPSCommandEncoder:v26 commandBuffer:v27 sourceArrays:v25 resultState:0 destinationArray:v34 kernelDAGObject:v28];
  }

  else
  {
    if (!v33 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v25 = GPU::EncodeDescriptor::getcomputeEncoder(v22);
    v29 = *(v22 + 1);
    v40[0] = v33;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    [v35 encodeToMPSCommandEncoder:v25 commandBuffer:v29 sourceArrays:v26 destinationArray:v34];
  }
}

uint64_t GPU::BaseReductionLikeOpHandler<mlir::mps::ReductionSumOp>::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v9, 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 32 * ODSOperandIndexAndLength + 24), 0);
  result = MPSKernelDAG::unaryCoreOp();
  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::ReductionSumOpHandler::~ReductionSumOpHandler(GPU::ReductionSumOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

char *GPU::BaseReductionLikeOpHandler<mlir::mps::ReductionSumOp>::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 1)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 1u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::ReductionMaxOpHandler::~ReductionMaxOpHandler(GPU::ReductionMaxOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::ReductionMinOpHandler::~ReductionMinOpHandler(GPU::ReductionMinOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::BaseReductionOpHandler<mlir::mps::ReductionProdOp,(MPSNDArrayReductionOperation)5>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v36 = *(a1 + 24);
  v32 = v5;
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v36, 0);
  v7 = *(*(v36 + 72) + 32 * ODSOperandIndexAndLength + 24);
  v31 = [v5 objectAtIndexedSubscript:0];
  v30 = (*(**(a1 + 16) + 48))(*(a1 + 16), v7, 0);
  v33 = [v30 mpsndarray];
  v34 = [v31 mpsndarray];
  v35 = *(a1 + 8);
  v8 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v36, 1u);
  if ((*(v36 + 46) & 0x80) != 0)
  {
    v9 = *(v36 + 72);
    v10 = v8;
    if (HIDWORD(v8) + v8 == v8)
    {
LABEL_3:
      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v10 = v8;
    if (HIDWORD(v8) + v8 == v8)
    {
      goto LABEL_3;
    }
  }

  v11 = *(v9 + 32 * v10 + 24);
LABEL_6:
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  StaticType = GPURegionRuntime::getStaticType(*(a1 + 16), v7);
  v14 = StaticType;
  if (StaticType)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    v15 = 0;
  }

  __p = v14;
  v38 = v15;
  mlir::CallableOpInterface::getArgAttrsAttr(&__p);
  v17 = v16;
  if (v11)
  {
    GPURegionRuntime::waitAndReadIntTensorData(*(a1 + 16), a2, v11, &__p);
    v18 = v38;
  }

  else
  {
    __p = 0;
    v38 = 0;
    v39 = 0;
    if (v16)
    {
      operator new();
    }

    v18 = 0;
  }

  v19 = __p;
  if (__p == v18)
  {
    v21 = v31;
    v20 = v32;
    v22 = a2;
    if (__p)
    {
LABEL_18:
      v38 = v19;
      operator delete(v19);
    }
  }

  else
  {
    v21 = v31;
    v20 = v32;
    v22 = a2;
    do
    {
      if (*v19 >= 0)
      {
        v23 = v17;
      }

      else
      {
        v23 = 0;
      }

      v24 = [MEMORY[0x1E696AD98] numberWithInteger:v23 + ~*v19];
      [v12 addObject:v24];

      ++v19;
    }

    while (v19 != v18);
    v19 = __p;
    if (__p)
    {
      goto LABEL_18;
    }
  }

  [v35 setAxes:v12];

  if (*(a1 + 32))
  {
    mlir::Block::getParentOp(*(*(a1 + 24) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(a1 + 24) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v25 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(a1 + 32), *(a1 + 16));
    v26 = GPU::EncodeDescriptor::getcomputeEncoder(v22);
    v27 = *(v22 + 1);
    v28 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(a1 + 32));
    [v35 encodeToMPSCommandEncoder:v26 commandBuffer:v27 sourceArrays:v25 resultState:0 destinationArray:v34 kernelDAGObject:v28];
  }

  else
  {
    if (!v33 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v25 = GPU::EncodeDescriptor::getcomputeEncoder(v22);
    v29 = *(v22 + 1);
    v40[0] = v33;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    [v35 encodeToMPSCommandEncoder:v25 commandBuffer:v29 sourceArrays:v26 destinationArray:v34];
  }
}

uint64_t GPU::BaseReductionLikeOpHandler<mlir::mps::ReductionProdOp>::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v9, 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 32 * ODSOperandIndexAndLength + 24), 0);
  result = MPSKernelDAG::unaryCoreOp();
  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::ReductionProdOpHandler::~ReductionProdOpHandler(GPU::ReductionProdOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

char *GPU::BaseReductionLikeOpHandler<mlir::mps::ReductionProdOp>::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 1)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 1u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::BaseReductionOpHandler<mlir::mps::ReductionAndOp,(MPSNDArrayReductionOperation)8>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v36 = *(a1 + 24);
  v32 = v5;
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v36, 0);
  v7 = *(*(v36 + 72) + 32 * ODSOperandIndexAndLength + 24);
  v31 = [v5 objectAtIndexedSubscript:0];
  v30 = (*(**(a1 + 16) + 48))(*(a1 + 16), v7, 0);
  v33 = [v30 mpsndarray];
  v34 = [v31 mpsndarray];
  v35 = *(a1 + 8);
  v8 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v36, 1u);
  if ((*(v36 + 46) & 0x80) != 0)
  {
    v9 = *(v36 + 72);
    v10 = v8;
    if (HIDWORD(v8) + v8 == v8)
    {
LABEL_3:
      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v10 = v8;
    if (HIDWORD(v8) + v8 == v8)
    {
      goto LABEL_3;
    }
  }

  v11 = *(v9 + 32 * v10 + 24);
LABEL_6:
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  StaticType = GPURegionRuntime::getStaticType(*(a1 + 16), v7);
  v14 = StaticType;
  if (StaticType)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    v15 = 0;
  }

  __p = v14;
  v38 = v15;
  mlir::CallableOpInterface::getArgAttrsAttr(&__p);
  v17 = v16;
  if (v11)
  {
    GPURegionRuntime::waitAndReadIntTensorData(*(a1 + 16), a2, v11, &__p);
    v18 = v38;
  }

  else
  {
    __p = 0;
    v38 = 0;
    v39 = 0;
    if (v16)
    {
      operator new();
    }

    v18 = 0;
  }

  v19 = __p;
  if (__p == v18)
  {
    v21 = v31;
    v20 = v32;
    v22 = a2;
    if (__p)
    {
LABEL_18:
      v38 = v19;
      operator delete(v19);
    }
  }

  else
  {
    v21 = v31;
    v20 = v32;
    v22 = a2;
    do
    {
      if (*v19 >= 0)
      {
        v23 = v17;
      }

      else
      {
        v23 = 0;
      }

      v24 = [MEMORY[0x1E696AD98] numberWithInteger:v23 + ~*v19];
      [v12 addObject:v24];

      ++v19;
    }

    while (v19 != v18);
    v19 = __p;
    if (__p)
    {
      goto LABEL_18;
    }
  }

  [v35 setAxes:v12];

  if (*(a1 + 32))
  {
    mlir::Block::getParentOp(*(*(a1 + 24) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(a1 + 24) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v25 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(a1 + 32), *(a1 + 16));
    v26 = GPU::EncodeDescriptor::getcomputeEncoder(v22);
    v27 = *(v22 + 1);
    v28 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(a1 + 32));
    [v35 encodeToMPSCommandEncoder:v26 commandBuffer:v27 sourceArrays:v25 resultState:0 destinationArray:v34 kernelDAGObject:v28];
  }

  else
  {
    if (!v33 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v25 = GPU::EncodeDescriptor::getcomputeEncoder(v22);
    v29 = *(v22 + 1);
    v40[0] = v33;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    [v35 encodeToMPSCommandEncoder:v25 commandBuffer:v29 sourceArrays:v26 destinationArray:v34];
  }
}

uint64_t GPU::BaseReductionLikeOpHandler<mlir::mps::ReductionAndOp>::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v9, 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 32 * ODSOperandIndexAndLength + 24), 0);
  result = MPSKernelDAG::unaryCoreOp();
  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::ReductionAndOpHandler::~ReductionAndOpHandler(GPU::ReductionAndOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

char *GPU::BaseReductionLikeOpHandler<mlir::mps::ReductionAndOp>::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 1)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 1u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::BaseReductionOpHandler<mlir::mps::ReductionOrOp,(MPSNDArrayReductionOperation)9>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v36 = *(a1 + 24);
  v32 = v5;
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v36, 0);
  v7 = *(*(v36 + 72) + 32 * ODSOperandIndexAndLength + 24);
  v31 = [v5 objectAtIndexedSubscript:0];
  v30 = (*(**(a1 + 16) + 48))(*(a1 + 16), v7, 0);
  v33 = [v30 mpsndarray];
  v34 = [v31 mpsndarray];
  v35 = *(a1 + 8);
  v8 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v36, 1u);
  if ((*(v36 + 46) & 0x80) != 0)
  {
    v9 = *(v36 + 72);
    v10 = v8;
    if (HIDWORD(v8) + v8 == v8)
    {
LABEL_3:
      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v10 = v8;
    if (HIDWORD(v8) + v8 == v8)
    {
      goto LABEL_3;
    }
  }

  v11 = *(v9 + 32 * v10 + 24);
LABEL_6:
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  StaticType = GPURegionRuntime::getStaticType(*(a1 + 16), v7);
  v14 = StaticType;
  if (StaticType)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    v15 = 0;
  }

  __p = v14;
  v38 = v15;
  mlir::CallableOpInterface::getArgAttrsAttr(&__p);
  v17 = v16;
  if (v11)
  {
    GPURegionRuntime::waitAndReadIntTensorData(*(a1 + 16), a2, v11, &__p);
    v18 = v38;
  }

  else
  {
    __p = 0;
    v38 = 0;
    v39 = 0;
    if (v16)
    {
      operator new();
    }

    v18 = 0;
  }

  v19 = __p;
  if (__p == v18)
  {
    v21 = v31;
    v20 = v32;
    v22 = a2;
    if (__p)
    {
LABEL_18:
      v38 = v19;
      operator delete(v19);
    }
  }

  else
  {
    v21 = v31;
    v20 = v32;
    v22 = a2;
    do
    {
      if (*v19 >= 0)
      {
        v23 = v17;
      }

      else
      {
        v23 = 0;
      }

      v24 = [MEMORY[0x1E696AD98] numberWithInteger:v23 + ~*v19];
      [v12 addObject:v24];

      ++v19;
    }

    while (v19 != v18);
    v19 = __p;
    if (__p)
    {
      goto LABEL_18;
    }
  }

  [v35 setAxes:v12];

  if (*(a1 + 32))
  {
    mlir::Block::getParentOp(*(*(a1 + 24) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(a1 + 24) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v25 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(a1 + 32), *(a1 + 16));
    v26 = GPU::EncodeDescriptor::getcomputeEncoder(v22);
    v27 = *(v22 + 1);
    v28 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(a1 + 32));
    [v35 encodeToMPSCommandEncoder:v26 commandBuffer:v27 sourceArrays:v25 resultState:0 destinationArray:v34 kernelDAGObject:v28];
  }

  else
  {
    if (!v33 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v25 = GPU::EncodeDescriptor::getcomputeEncoder(v22);
    v29 = *(v22 + 1);
    v40[0] = v33;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    [v35 encodeToMPSCommandEncoder:v25 commandBuffer:v29 sourceArrays:v26 destinationArray:v34];
  }
}

uint64_t GPU::BaseReductionLikeOpHandler<mlir::mps::ReductionOrOp>::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v9, 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 32 * ODSOperandIndexAndLength + 24), 0);
  result = MPSKernelDAG::unaryCoreOp();
  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::ReductionOrOpHandler::~ReductionOrOpHandler(GPU::ReductionOrOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

char *GPU::BaseReductionLikeOpHandler<mlir::mps::ReductionOrOp>::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 1)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 1u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::BaseReductionOpHandler<mlir::mps::ReductionArgMinOp,(MPSNDArrayReductionOperation)6>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v36 = *(a1 + 24);
  v32 = v5;
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v36, 0);
  v7 = *(*(v36 + 72) + 32 * ODSOperandIndexAndLength + 24);
  v31 = [v5 objectAtIndexedSubscript:0];
  v30 = (*(**(a1 + 16) + 48))(*(a1 + 16), v7, 0);
  v33 = [v30 mpsndarray];
  v34 = [v31 mpsndarray];
  v35 = *(a1 + 8);
  v8 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v36, 1u);
  if ((*(v36 + 46) & 0x80) != 0)
  {
    v9 = *(v36 + 72);
    v10 = v8;
    if (HIDWORD(v8) + v8 == v8)
    {
LABEL_3:
      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v10 = v8;
    if (HIDWORD(v8) + v8 == v8)
    {
      goto LABEL_3;
    }
  }

  v11 = *(v9 + 32 * v10 + 24);
LABEL_6:
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  StaticType = GPURegionRuntime::getStaticType(*(a1 + 16), v7);
  v14 = StaticType;
  if (StaticType)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    v15 = 0;
  }

  __p = v14;
  v38 = v15;
  mlir::CallableOpInterface::getArgAttrsAttr(&__p);
  v17 = v16;
  if (v11)
  {
    GPURegionRuntime::waitAndReadIntTensorData(*(a1 + 16), a2, v11, &__p);
    v18 = v38;
  }

  else
  {
    __p = 0;
    v38 = 0;
    v39 = 0;
    if (v16)
    {
      operator new();
    }

    v18 = 0;
  }

  v19 = __p;
  if (__p == v18)
  {
    v21 = v31;
    v20 = v32;
    v22 = a2;
    if (__p)
    {
LABEL_18:
      v38 = v19;
      operator delete(v19);
    }
  }

  else
  {
    v21 = v31;
    v20 = v32;
    v22 = a2;
    do
    {
      if (*v19 >= 0)
      {
        v23 = v17;
      }

      else
      {
        v23 = 0;
      }

      v24 = [MEMORY[0x1E696AD98] numberWithInteger:v23 + ~*v19];
      [v12 addObject:v24];

      ++v19;
    }

    while (v19 != v18);
    v19 = __p;
    if (__p)
    {
      goto LABEL_18;
    }
  }

  [v35 setAxes:v12];

  if (*(a1 + 32))
  {
    mlir::Block::getParentOp(*(*(a1 + 24) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(a1 + 24) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v25 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(a1 + 32), *(a1 + 16));
    v26 = GPU::EncodeDescriptor::getcomputeEncoder(v22);
    v27 = *(v22 + 1);
    v28 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(a1 + 32));
    [v35 encodeToMPSCommandEncoder:v26 commandBuffer:v27 sourceArrays:v25 resultState:0 destinationArray:v34 kernelDAGObject:v28];
  }

  else
  {
    if (!v33 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v25 = GPU::EncodeDescriptor::getcomputeEncoder(v22);
    v29 = *(v22 + 1);
    v40[0] = v33;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    [v35 encodeToMPSCommandEncoder:v25 commandBuffer:v29 sourceArrays:v26 destinationArray:v34];
  }
}

uint64_t GPU::BaseReductionLikeOpHandler<mlir::mps::ReductionArgMinOp>::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v9, 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 32 * ODSOperandIndexAndLength + 24), 0);
  result = MPSKernelDAG::unaryCoreOp();
  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::ReductionArgMinOpHandler::~ReductionArgMinOpHandler(GPU::ReductionArgMinOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

char *GPU::BaseReductionLikeOpHandler<mlir::mps::ReductionArgMinOp>::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 1)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 1u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::BaseReductionOpHandler<mlir::mps::ReductionArgMaxOp,(MPSNDArrayReductionOperation)7>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v36 = *(a1 + 24);
  v32 = v5;
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v36, 0);
  v7 = *(*(v36 + 72) + 32 * ODSOperandIndexAndLength + 24);
  v31 = [v5 objectAtIndexedSubscript:0];
  v30 = (*(**(a1 + 16) + 48))(*(a1 + 16), v7, 0);
  v33 = [v30 mpsndarray];
  v34 = [v31 mpsndarray];
  v35 = *(a1 + 8);
  v8 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v36, 1u);
  if ((*(v36 + 46) & 0x80) != 0)
  {
    v9 = *(v36 + 72);
    v10 = v8;
    if (HIDWORD(v8) + v8 == v8)
    {
LABEL_3:
      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v10 = v8;
    if (HIDWORD(v8) + v8 == v8)
    {
      goto LABEL_3;
    }
  }

  v11 = *(v9 + 32 * v10 + 24);
LABEL_6:
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  StaticType = GPURegionRuntime::getStaticType(*(a1 + 16), v7);
  v14 = StaticType;
  if (StaticType)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    v15 = 0;
  }

  __p = v14;
  v38 = v15;
  mlir::CallableOpInterface::getArgAttrsAttr(&__p);
  v17 = v16;
  if (v11)
  {
    GPURegionRuntime::waitAndReadIntTensorData(*(a1 + 16), a2, v11, &__p);
    v18 = v38;
  }

  else
  {
    __p = 0;
    v38 = 0;
    v39 = 0;
    if (v16)
    {
      operator new();
    }

    v18 = 0;
  }

  v19 = __p;
  if (__p == v18)
  {
    v21 = v31;
    v20 = v32;
    v22 = a2;
    if (__p)
    {
LABEL_18:
      v38 = v19;
      operator delete(v19);
    }
  }

  else
  {
    v21 = v31;
    v20 = v32;
    v22 = a2;
    do
    {
      if (*v19 >= 0)
      {
        v23 = v17;
      }

      else
      {
        v23 = 0;
      }

      v24 = [MEMORY[0x1E696AD98] numberWithInteger:v23 + ~*v19];
      [v12 addObject:v24];

      ++v19;
    }

    while (v19 != v18);
    v19 = __p;
    if (__p)
    {
      goto LABEL_18;
    }
  }

  [v35 setAxes:v12];

  if (*(a1 + 32))
  {
    mlir::Block::getParentOp(*(*(a1 + 24) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(a1 + 24) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v25 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(a1 + 32), *(a1 + 16));
    v26 = GPU::EncodeDescriptor::getcomputeEncoder(v22);
    v27 = *(v22 + 1);
    v28 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(a1 + 32));
    [v35 encodeToMPSCommandEncoder:v26 commandBuffer:v27 sourceArrays:v25 resultState:0 destinationArray:v34 kernelDAGObject:v28];
  }

  else
  {
    if (!v33 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v25 = GPU::EncodeDescriptor::getcomputeEncoder(v22);
    v29 = *(v22 + 1);
    v40[0] = v33;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    [v35 encodeToMPSCommandEncoder:v25 commandBuffer:v29 sourceArrays:v26 destinationArray:v34];
  }
}

uint64_t GPU::BaseReductionLikeOpHandler<mlir::mps::ReductionArgMaxOp>::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 24);
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v9, 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v9 + 72) + 32 * ODSOperandIndexAndLength + 24), 0);
  result = MPSKernelDAG::unaryCoreOp();
  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::ReductionArgMaxOpHandler::~ReductionArgMaxOpHandler(GPU::ReductionArgMaxOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

char *GPU::BaseReductionLikeOpHandler<mlir::mps::ReductionArgMaxOp>::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 1)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 1u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::BaseReductionOpHandler<mlir::mps::ReductionSumOp,(MPSNDArrayReductionOperation)4>::~BaseReductionOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::BaseReductionOpHandler<mlir::mps::ReductionProdOp,(MPSNDArrayReductionOperation)5>::~BaseReductionOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::BaseReductionOpHandler<mlir::mps::ReductionAndOp,(MPSNDArrayReductionOperation)8>::~BaseReductionOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::BaseReductionOpHandler<mlir::mps::ReductionOrOp,(MPSNDArrayReductionOperation)9>::~BaseReductionOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::BaseReductionOpHandler<mlir::mps::ReductionArgMinOp,(MPSNDArrayReductionOperation)6>::~BaseReductionOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::BaseReductionOpHandler<mlir::mps::ReductionArgMaxOp,(MPSNDArrayReductionOperation)7>::~BaseReductionOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

id *GPU::SortOpHandler::SortOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B52EA8;
  *(v5 + 15) = 0;
  v6 = (v5 + 120);
  *(v5 + 16) = 0;
  v7 = objc_alloc(MEMORY[0x1E6974880]);
  v8 = [*(this[2] + 6) metalDevice];
  v9 = [v7 initWithDevice:v8];
  v10 = this[1];
  this[1] = v9;

  v11 = objc_alloc(MEMORY[0x1E6974698]);
  v12 = [*(this[2] + 6) metalDevice];
  v13 = [v11 initWithDevice:v12];
  v14 = *v6;
  *v6 = v13;

  v15 = objc_alloc(MEMORY[0x1E6974718]);
  v16 = [*(this[2] + 6) metalDevice];
  v17 = [v15 initWithDevice:v16];
  v18 = this[16];
  this[16] = v17;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  [*v6 setOptions:{objc_msgSend(*v6, "options") | 1}];
  [this[16] setOptions:{objc_msgSend(this[16], "options") | 1}];
  return this;
}

void sub_1E086F30C(_Unwind_Exception *a1)
{
  v3 = v2;

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

void GPU::SortOpHandler::encodeOp(GPU::SortOpHandler *this, void **a2)
{
  v69[1] = *MEMORY[0x1E69E9840];
  GPU::BaseOpHandler::_inferJITOutputTypes(this, a2);
  v4 = *(this + 3);
  v5 = *(v4 + 36);
  v6 = *(v4 + 36) == 0;
  v7 = v4 - 16;
  if (v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
  if (!v6)
  {
    v10 = 0;
    do
    {
      if (*mlir::detail::OpResultImpl::getNextResultAtOffset(v8, v10))
      {
        (*(**(this + 2) + 80))(*(this + 2));
      }

      else
      {
        [MEMORY[0x1E695DFB0] null];
      }
      v11 = ;
      [v9 addObject:v11];

      ++v10;
    }

    while (v5 != v10);
  }

  v66 = *(this + 3);
  v12 = *(v66 + 72);
  v13 = *(v12 + 24);
  v14 = *(v12 + 56);
  v62 = v9;
  v15 = *(v66 - 16);
  v16 = *(v66 - 32);
  v58 = (*(**(this + 2) + 48))(*(this + 2), v13, 0);
  v17 = [v58 mpsndarray];
  v64 = *(this + 1);
  v18 = *(this + 15);
  v63 = v17;
  v60 = v18;
  Axis = RuntimeUtils::getAxis(*(this + 2), a2, v14, [v17 numberOfDimensions]);
  v20 = [v17 numberOfDimensions];
  if (Axis >= 0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v59 = v21 + ~Axis;
  [v64 setAxis:?];
  [v18 setAxis:v59];
  [v64 setDescending:mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v66)];
  [v18 setDescending:mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v66)];
  if (*(this + 4))
  {
    mlir::Block::getParentOp(*(*(this + 3) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(this + 3) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v61 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(this + 4), *(this + 2));
    if (v15 && v16)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    else if (!v15)
    {
      v22 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      v27 = a2[1];
      v24 = [v62 objectAtIndexedSubscript:1];
      v25 = [v24 mpsndarray];
      v26 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 4));
      [v60 encodeToMPSCommandEncoder:v22 commandBuffer:v27 sourceArrays:v61 resultState:0 destinationArray:v25 kernelDAGObject:v26];
      goto LABEL_49;
    }

    v22 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v23 = a2[1];
    v24 = [v62 objectAtIndexedSubscript:0];
    v25 = [v24 mpsndarray];
    v26 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 4));
    [v64 encodeToMPSCommandEncoder:v22 commandBuffer:v23 sourceArrays:v61 resultState:0 destinationArray:v25 kernelDAGObject:v26];
LABEL_49:

    goto LABEL_50;
  }

  if (!v17)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

LABEL_31:
    if (!v16)
    {
      goto LABEL_52;
    }

    goto LABEL_32;
  }

  if (!v15 || !v16)
  {
    goto LABEL_31;
  }

  if (*(v17 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v17 setReadCount:{objc_msgSend(v17, "readCount") + 1}];
  }

LABEL_32:
  v28 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v29 = a2[1];
  v69[0] = v17;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:1];
  v31 = [v62 objectAtIndexedSubscript:1];
  v32 = [v31 mpsndarray];
  [v60 encodeToMPSCommandEncoder:v28 commandBuffer:v29 sourceArrays:v30 destinationArray:v32];

  v18 = v60;
  if (v15 != 0 && v16 != 0)
  {
    v61 = v63;
    v33 = [v62 objectAtIndexedSubscript:1];
    v57 = [v33 mpsndarray];

    v34 = [v62 objectAtIndexedSubscript:0];
    v24 = [v34 mpsndarray];

    if (v57)
    {
      v35 = v63 != 0;
    }

    else
    {
      v35 = 0;
    }

    if (!v35 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v25 = [v61 descriptor];
    v26 = [v57 descriptor];
    v55 = [v24 descriptor];
    v50 = [v55 numberOfDimensions];
    if (v59)
    {
      [v25 transposeDimension:0 withDimension:?];
      [v26 transposeDimension:0 withDimension:v59];
      [v55 transposeDimension:0 withDimension:v59];
      v36 = a2[1];
      v37 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      v38 = [v61 safeArrayViewWithCommandBuffer:v36 computeEncoder:v37 descriptor:v25 aliasing:1];

      v61 = v38;
      if (*(v24 + *MEMORY[0x1E69744E8]) == 1)
      {
        [v24 setReadCount:{objc_msgSend(v24, "readCount") + 1}];
      }

      v39 = a2[1];
      v40 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      v41 = [v24 safeArrayViewWithCommandBuffer:v39 computeEncoder:v40 descriptor:v55 aliasing:1];

      v24 = v41;
    }

    v42 = [v26 getShape];
    v53 = RuntimeUtils::expandShape(v42, [v42 count], 1);
    v54 = *(*(this + 2) + 416);
    v65 = 0;
    if (*(v57 + *MEMORY[0x1E69744E8]) == 1)
    {
      [v57 setReadCount:{objc_msgSend(v57, "readCount") + 1}];
    }

    v43 = v57;
    v22 = v43;
    v56 = v43;
    if (v59)
    {
      v56 = [v43 arrayViewWithDescriptor:v26];
    }

    v44 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v52 = GPU::doReshapeWithFallBack(v56, v53, v54, v44, a2[1], &v65, 1);

    [*(this + 16) setBatchDimensions:v51 - 1];
    v45 = *(this + 16);
    v46 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v47 = a2[1];
    v68[0] = v61;
    v68[1] = v52;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
    [v45 encodeToMPSCommandEncoder:v46 commandBuffer:v47 sourceArrays:v48 destinationArray:v24];

    if (v59 && *(v24 + *MEMORY[0x1E69744E8]) == 1)
    {
      [v24 setReadCount:{objc_msgSend(v24, "readCount") - 1}];
    }

    goto LABEL_49;
  }

LABEL_52:
  if (!v15)
  {
    goto LABEL_51;
  }

  v61 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v49 = a2[1];
  v67 = v63;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
  v24 = [v62 objectAtIndexedSubscript:0];
  v25 = [v24 mpsndarray];
  [v64 encodeToMPSCommandEncoder:v61 commandBuffer:v49 sourceArrays:v22 destinationArray:v25];
LABEL_50:

  v18 = v60;
LABEL_51:
}

char *GPU::SortOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 1)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 1u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

uint64_t GPU::SortOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  result = MPSKernelDAG::unaryCoreOp();
  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::SortOpHandler::~SortOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void *EmitterObjC::SpaceToDepth2DGenericOpHandler<mlir::mps::DepthToSpace2DOp,true>::SpaceToDepth2DGenericOpHandler(void *a1, id *a2, uint64_t a3)
{
  a1[1] = a2;
  a1[2] = a3;
  *a1 = &unk_1F5B52FA0;
  v40 = a3;
  v6 = *(*(a3 + 72) + 24);
  if (*(a3 + 36))
  {
    v7 = a3 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  v9 = *(a3 + 72);
  v10 = v9[7];
  v11 = v9[11];
  v12 = v9[15];
  Index = mlir::pdl::ResultOp::getIndex(&v40);
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v40);
  v30 = MEMORY[0x1E696AEC0];
  v15 = v38;
  (*(*a2 + 4))(v38, a2, NextResultAtOffset);
  if (v39 < 0)
  {
    v15 = v38[0];
  }

  v37 = v6;
  __p.__r_.__value_.__r.__words[0] = &v37;
  v16 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v37, &std::piecewise_construct, &__p);
  v17 = v16 + 3;
  if (*(v16 + 47) < 0)
  {
    v17 = *v17;
  }

  v36 = v10;
  __p.__r_.__value_.__r.__words[0] = &v36;
  v18 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v36, &std::piecewise_construct, &__p);
  v19 = v18 + 3;
  if (*(v18 + 47) < 0)
  {
    v19 = *v19;
  }

  v35 = v11;
  __p.__r_.__value_.__r.__words[0] = &v35;
  v20 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v35, &std::piecewise_construct, &__p);
  v21 = v20 + 3;
  if (*(v20 + 47) < 0)
  {
    v21 = *v21;
  }

  v34 = v12;
  __p.__r_.__value_.__r.__words[0] = &v34;
  v22 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v34, &std::piecewise_construct, &__p);
  v23 = v22 + 3;
  if (*(v22 + 47) < 0)
  {
    v23 = *v23;
  }

  v32 = 0;
  LOBYTE(v31) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v31, &__p);
  v24 = "NO";
  if (IsSize)
  {
    v24 = "YES";
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v26 = [v30 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph                   %s:%s\n                widthAxisTensor:%s\n               heightAxisTensor:%s\n                depthAxisTensor:%s\n                      blockSize:%u\n           usePixelShuffleOrder:%s\n                           name:%s]\n    ", v15, "depthToSpace2DTensor", v17, v19, v21, v23, Index, v24, p_p];;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    operator delete(v31);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_25:
    operator delete(v38[0]);
    goto LABEL_22;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v32 < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v39 < 0)
  {
    goto LABEL_25;
  }

LABEL_22:
  v27 = [a2[27] stringByAppendingString:v26];
  v28 = a2[27];
  a2[27] = v27;

  return a1;
}

void sub_1E08702B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      if (*(v30 - 105) < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  if (*(v30 - 105) < 0)
  {
LABEL_4:
    operator delete(*(v30 - 128));
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  _Unwind_Resume(exception_object);
}

void *EmitterObjC::SpaceToDepth2DGenericOpHandler<mlir::mps::SpaceToDepth2DOp,false>::SpaceToDepth2DGenericOpHandler(void *a1, id *a2, uint64_t a3)
{
  a1[1] = a2;
  a1[2] = a3;
  *a1 = &unk_1F5B52FB8;
  v40 = a3;
  v6 = *(*(a3 + 72) + 24);
  if (*(a3 + 36))
  {
    v7 = a3 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  v9 = *(a3 + 72);
  v10 = v9[7];
  v11 = v9[11];
  v12 = v9[15];
  Index = mlir::pdl::ResultOp::getIndex(&v40);
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v40);
  v30 = MEMORY[0x1E696AEC0];
  v15 = v38;
  (*(*a2 + 4))(v38, a2, NextResultAtOffset);
  if (v39 < 0)
  {
    v15 = v38[0];
  }

  v37 = v6;
  __p.__r_.__value_.__r.__words[0] = &v37;
  v16 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v37, &std::piecewise_construct, &__p);
  v17 = v16 + 3;
  if (*(v16 + 47) < 0)
  {
    v17 = *v17;
  }

  v36 = v10;
  __p.__r_.__value_.__r.__words[0] = &v36;
  v18 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v36, &std::piecewise_construct, &__p);
  v19 = v18 + 3;
  if (*(v18 + 47) < 0)
  {
    v19 = *v19;
  }

  v35 = v11;
  __p.__r_.__value_.__r.__words[0] = &v35;
  v20 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v35, &std::piecewise_construct, &__p);
  v21 = v20 + 3;
  if (*(v20 + 47) < 0)
  {
    v21 = *v21;
  }

  v34 = v12;
  __p.__r_.__value_.__r.__words[0] = &v34;
  v22 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v34, &std::piecewise_construct, &__p);
  v23 = v22 + 3;
  if (*(v22 + 47) < 0)
  {
    v23 = *v23;
  }

  v32 = 0;
  LOBYTE(v31) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v31, &__p);
  v24 = "NO";
  if (IsSize)
  {
    v24 = "YES";
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v26 = [v30 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph                   %s:%s\n                widthAxisTensor:%s\n               heightAxisTensor:%s\n                depthAxisTensor:%s\n                      blockSize:%u\n           usePixelShuffleOrder:%s\n                           name:%s]\n    ", v15, "spaceToDepth2DTensor", v17, v19, v21, v23, Index, v24, p_p];;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    operator delete(v31);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_25:
    operator delete(v38[0]);
    goto LABEL_22;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v32 < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v39 < 0)
  {
    goto LABEL_25;
  }

LABEL_22:
  v27 = [a2[27] stringByAppendingString:v26];
  v28 = a2[27];
  a2[27] = v27;

  return a1;
}

void sub_1E087064C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      if (*(v30 - 105) < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  if (*(v30 - 105) < 0)
  {
LABEL_4:
    operator delete(*(v30 - 128));
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  _Unwind_Resume(exception_object);
}

id *GPU::SingleGateRNNOpHandler::SingleGateRNNOpHandler(id *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v6 = &unk_1F5B52FD0;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 19) = 0;
  v7 = objc_alloc(MEMORY[0x1E6974740]);
  v8 = [a2[6] metalDevice];
  v9 = [v7 initWithDevice:v8];
  v10 = this[1];
  this[1] = v9;

  v11 = objc_alloc(MEMORY[0x1E6974788]);
  v12 = [a2[6] metalDevice];
  v13 = [v11 initWithDevice:v12 sourceCount:2];
  v14 = this[19];
  this[19] = v13;

  [this[19] setBeta:0.0];
  v15 = this[15];
  this[15] = 0;

  v16 = this[16];
  this[16] = 0;

  v17 = this[17];
  this[17] = 0;

  v18 = this[18];
  this[18] = 0;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  [this[19] setOptions:{objc_msgSend(this[19], "options") | 1}];
  return this;
}

void sub_1E087083C(_Unwind_Exception *a1)
{
  v3 = v2;

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

void GPU::SingleGateRNNOpHandler::encodeNDArrayOp(GPU::SingleGateRNNOpHandler *this, id *a2, NSArray *a3)
{
  v41[11] = *MEMORY[0x1E69E9840];
  v32 = a3;
  v41[0] = *(this + 3);
  ODSOperandIndexAndLength = mlir::pdl::OperationOp::getODSOperandIndexAndLength(v41, 0);
  v6 = *(*(v41[0] + 72) + 32 * ODSOperandIndexAndLength + 24);
  v7 = mlir::pdl::OperationOp::getODSOperandIndexAndLength(v41, 1u);
  v8 = *(*(v41[0] + 72) + 32 * v7 + 24);
  v9 = mlir::pdl::OperationOp::getODSOperandIndexAndLength(v41, 2u);
  if ((*(v41[0] + 46) & 0x80) != 0)
  {
    v10 = *(v41[0] + 72);
    v11 = v9;
    if (HIDWORD(v9) + v9 == v9)
    {
LABEL_3:
      v12 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    v11 = v9;
    if (HIDWORD(v9) + v9 == v9)
    {
      goto LABEL_3;
    }
  }

  v12 = *(v10 + 32 * v11 + 24);
LABEL_6:
  v13 = mlir::pdl::OperationOp::getODSOperandIndexAndLength(v41, 3u);
  if ((*(v41[0] + 46) & 0x80) != 0)
  {
    v14 = *(v41[0] + 72);
    v39 = this;
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
LABEL_8:
      v16 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v14 = 0;
    v39 = this;
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
      goto LABEL_8;
    }
  }

  v16 = *(v14 + 32 * v15 + 24);
LABEL_11:
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(v41);
  v37 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v38 = a2[1];
  *(v39 + 1);
  v18 = (*(**(v39 + 2) + 48))(*(v39 + 2), v6, 0);
  v36 = [v18 mpsndarray];

  v19 = (*(**(v39 + 2) + 48))(*(v39 + 2), v8, 0);
  v31 = [v19 mpsndarray];

  if (v12)
  {
    v20 = (*(**(v39 + 2) + 48))(*(v39 + 2), v12, 0);
    [v20 mpsndarray];

    v21 = v36;
    if (!v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v21 = v36;
    if (!v16)
    {
LABEL_15:
      [(NSArray *)v32 objectAtIndexedSubscript:0];
      v23 = [objc_claimAutoreleasedReturnValue() mpsndarray];
      v24 = v23;
      v35 = v23;
      if ((!v21 || !v23) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (IsSize)
      {
        [(NSArray *)v32 count];
        if ([(NSArray *)v32 count]<= 1 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        v25 = [(NSArray *)v32 objectAtIndexedSubscript:1];
        v30 = [v25 mpsndarray];

        if (v30)
        {
          v24 = v35;
          if (v30[*MEMORY[0x1E69744E8]] != 1 || [v30 readCount])
          {
            v34 = 1;
            goto LABEL_27;
          }

          v34 = 0;
        }

        else
        {
          v34 = 1;
        }

        v24 = v35;
      }

      else
      {
        v34 = 0;
      }

LABEL_27:
      v29 = [v31 descriptor];
      [v29 transposeDimension:0 withDimension:1];
      v33 = [v31 safeArrayViewWithCommandBuffer:v38 computeEncoder:v37 descriptor:v29 aliasing:1];
      v26 = [v24 descriptor];
      v27 = v26;
      if (v26)
      {
        objc_msgSend_getShapeVector(v26);
      }

      else
      {
        v40 = 0;
      }

      StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(v41);
      GPU::SingleGateRNNOpHandler::_getKernelDAGObject(v39, v12 != 0, v33, v36, 0, v40, StorageType, v34, 0);
    }
  }

  v22 = (*(**(v39 + 2) + 48))(*(v39 + 2), v16, 0);
  [v22 mpsndarray];

  v21 = v36;
  goto LABEL_15;
}

void GPU::SingleGateRNNOpHandler::_getKernelDAGObject(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, char a8, unsigned __int8 a9)
{
  a3;
  a4;
  v12 = a5;
  if ((a6[1] - *a6) >= 0)
  {
    operator new();
  }

  std::vector<long>::__throw_length_error[abi:ne200100]();
}

void sub_1E087215C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  v19 = *(v17 - 112);
  if (v19)
  {
    *(v17 - 104) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

id GPU::getSlice(id *this, GPU::EncodeDescriptor *a2, MPSNDArray *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  if (v11)
  {
    v12 = GPU::EncodeDescriptor::getcomputeEncoder(this);
    v13 = this[1];
    v14 = [(GPU::EncodeDescriptor *)v11 descriptor];
    v15 = v14;
    if (*(v11 + *MEMORY[0x1E69744F0]) > a3)
    {
      v16 = v11 + *MEMORY[0x1E6974510];
      v20 = *(v11 + *MEMORY[0x1E69744D8]);
      [v14 sliceDimension:a3 withSubrange:{*&v16[4 * (*(&v20 | a3 & 0xF) & 0xF)] + a5, a6, v20}];
    }

    v17 = [(GPU::EncodeDescriptor *)v11 safeArrayViewWithCommandBuffer:v13 computeEncoder:v12 descriptor:v15 aliasing:1];
    v18 = v17;
    if (*(v17 + *MEMORY[0x1E69744E8]) == 1)
    {
      [v17 setReadCount:{objc_msgSend(v17, "readCount") + a4}];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t GPU::activationToDAGTensor(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        MPSKernelDAG::constantOp();
        MPSKernelDAG::negativeOp();
        MPSKernelDAG::exponentOp();
        MPSKernelDAG::additionOp();

        return MPSKernelDAG::reciprocalOp();
      case 4:
        MPSKernelDAG::constantOp();
        MPSKernelDAG::constantOp();
        MPSKernelDAG::constantOp();
        MPSKernelDAG::constantOp();
        MPSKernelDAG::multiplicationOp();
        MPSKernelDAG::additionOp();

        return MPSKernelDAG::clampOp();
      case 5:
        MPSKernelDAG::constantOp();
        MPSKernelDAG::constantOp();
        MPSKernelDAG::multiplicationOp();
        MPSKernelDAG::tanhOp();

        return MPSKernelDAG::multiplicationOp();
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      MPSKernelDAG::constantOp();

      return MPSKernelDAG::maximumOp();
    }

    else if (a1 == 2)
    {

      return MPSKernelDAG::tanhOp();
    }
  }

  else
  {
    return a5;
  }

  return result;
}

id *GPU::SingleGateRNNGradientOpHandler::SingleGateRNNGradientOpHandler(id *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v6 = &unk_1F5B53020;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 19) = 0;
  v7 = objc_alloc(MEMORY[0x1E6974740]);
  v8 = [a2[6] metalDevice];
  v9 = [v7 initWithDevice:v8];
  v10 = this[1];
  this[1] = v9;

  v11 = objc_alloc(MEMORY[0x1E6974788]);
  v12 = [a2[6] metalDevice];
  v13 = [v11 initWithDevice:v12 sourceCount:2];
  v14 = this[19];
  this[19] = v13;

  [this[19] setBeta:0.0];
  v15 = this[15];
  this[15] = 0;

  v16 = this[16];
  this[16] = 0;

  v17 = this[17];
  this[17] = 0;

  v18 = this[18];
  this[18] = 0;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  [this[19] setOptions:{objc_msgSend(this[19], "options") | 1}];
  return this;
}

void sub_1E087294C(_Unwind_Exception *a1)
{
  v3 = v2;

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

void GPU::SingleGateRNNGradientOpHandler::encodeNDArrayOp(GPU::SingleGateRNNGradientOpHandler *this, id *a2, NSArray *a3)
{
  v37[28] = *MEMORY[0x1E69E9840];
  v32 = a3;
  v34 = this;
  v37[0] = *(this + 3);
  ODSOperandIndexAndLength = mlir::pdl::OperationOp::getODSOperandIndexAndLength(v37, 0);
  v6 = *(*(v37[0] + 72) + 32 * ODSOperandIndexAndLength + 24);
  v7 = mlir::pdl::OperationOp::getODSOperandIndexAndLength(v37, 1u);
  v8 = *(*(v37[0] + 72) + 32 * v7 + 24);
  v9 = mlir::pdl::OperationOp::getODSOperandIndexAndLength(v37, 2u);
  v10 = *(*(v37[0] + 72) + 32 * v9 + 24);
  v11 = mlir::pdl::OperationOp::getODSOperandIndexAndLength(v37, 3u);
  if ((*(v37[0] + 46) & 0x80) != 0)
  {
    v12 = *(v37[0] + 72);
    v13 = v11;
    if (HIDWORD(v11) + v11 == v11)
    {
LABEL_3:
      v14 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    v13 = v11;
    if (HIDWORD(v11) + v11 == v11)
    {
      goto LABEL_3;
    }
  }

  v14 = *(v12 + 32 * v13 + 24);
LABEL_6:
  v15 = mlir::pdl::OperationOp::getODSOperandIndexAndLength(v37, 4u);
  if ((*(v37[0] + 46) & 0x80) != 0)
  {
    v16 = *(v37[0] + 72);
    v17 = v15;
    if (HIDWORD(v15) + v15 == v15)
    {
LABEL_8:
      v18 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v16 = 0;
    v17 = v15;
    if (HIDWORD(v15) + v15 == v15)
    {
      goto LABEL_8;
    }
  }

  v18 = *(v16 + 32 * v17 + 24);
LABEL_11:
  mlir::mps::StridedSliceOp::getEndIsSize(v37);
  GPU::EncodeDescriptor::getcomputeEncoder(a2);
  objc_claimAutoreleasedReturnValue();
  a2[1];
  *(v34 + 1);
  v19 = (*(**(v34 + 2) + 48))(*(v34 + 2), v6, 0);
  v35 = [v19 mpsndarray];

  v20 = (*(**(v34 + 2) + 48))(*(v34 + 2), v8, 0);
  v33 = [v20 mpsndarray];

  if (v14)
  {
    v21 = (*(**(v34 + 2) + 48))(*(v34 + 2), v14, 0);
    [v21 mpsndarray];

    if (v18)
    {
LABEL_13:
      v22 = (*(**(v34 + 2) + 48))(*(v34 + 2), v18, 0);
      v30 = [v22 mpsndarray];

      goto LABEL_16;
    }
  }

  else if (v18)
  {
    goto LABEL_13;
  }

  v30 = 0;
LABEL_16:
  v23 = (*(**(v34 + 2) + 48))(*(v34 + 2), v10, 0);
  v31 = [v23 mpsndarray];

  v24 = [(NSArray *)v32 objectAtIndexedSubscript:0];
  v25 = [v24 mpsndarray];
  v26 = v25;
  if ((!v35 || !v25) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [(NSArray *)v32 objectAtIndexedSubscript:1];
  [objc_claimAutoreleasedReturnValue() mpsndarray];
  if (!objc_claimAutoreleasedReturnValue() && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v27 = [v26 descriptor];
  v28 = v27;
  if (v27)
  {
    objc_msgSend_getShapeVector(v27);
  }

  else
  {
    v36 = 0;
  }

  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(v37);
  GPU::SingleGateRNNGradientOpHandler::_getGradKernelDAGObject(v34, v33, v35, v31, v30, v36, StorageType, 0);
}

void sub_1E08744EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, void *a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, _Unwind_Exception *exception_objecta, void *a37, void *a38)
{
  std::unique_ptr<std::vector<long> const,std::default_delete<std::vector<long> const>>::~unique_ptr[abi:ne200100](&STACK[0x2D8]);

  _Unwind_Resume(a1);
}

void GPU::SingleGateRNNGradientOpHandler::_getGradKernelDAGObject(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, int a8)
{
  a2;
  v12 = a3;
  a4;
  v13 = a5;
  if ((a6[1] - *a6) >= 0)
  {
    operator new();
  }

  std::vector<long>::__throw_length_error[abi:ne200100]();
}

void sub_1E08750D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  v18 = *(v16 - 112);
  if (v18)
  {
    *(v16 - 104) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t GPU::activationGradientToDAGTensor(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        MPSKernelDAG::constantOp();
        MPSKernelDAG::negativeOp();
        MPSKernelDAG::exponentOp();
        MPSKernelDAG::additionOp();
        MPSKernelDAG::reciprocalOp();
        MPSKernelDAG::subtractionOp();
        break;
      case 4:
        MPSKernelDAG::constantOp();
        MPSKernelDAG::constantOp();
        MPSKernelDAG::constantOp();
        MPSKernelDAG::absoluteOp();
        MPSKernelDAG::greaterThanOp();

        return MPSKernelDAG::selectOp();
      case 5:
        MPSKernelDAG::constantOp();
        MPSKernelDAG::constantOp();
        MPSKernelDAG::multiplicationOp();
        MPSKernelDAG::tanhOp();
        MPSKernelDAG::squareOp();
        MPSKernelDAG::constantOp();
        MPSKernelDAG::subtractionOp();
        break;
      default:
        return 0;
    }

    return MPSKernelDAG::multiplicationOp();
  }

  if (a1)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        MPSKernelDAG::tanhOp();
        MPSKernelDAG::squareOp();
        MPSKernelDAG::constantOp();

        return MPSKernelDAG::subtractionOp();
      }

      return 0;
    }

    MPSKernelDAG::constantOp();
    v9 = MPSKernelDAG::maximumOp();

    return MEMORY[0x1EEDCDF98](a2, v9, a3, a4, "drelu");
  }

  else
  {

    return MPSKernelDAG::constantOp();
  }
}

id *GPU::LSTMOpHandler::LSTMOpHandler(id *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v6 = &unk_1F5B53070;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  v7 = objc_alloc(MEMORY[0x1E6974740]);
  v8 = [a2[6] metalDevice];
  v9 = [v7 initWithDevice:v8];
  v10 = this[1];
  this[1] = v9;

  v11 = objc_alloc(MEMORY[0x1E6974788]);
  v12 = [a2[6] metalDevice];
  v13 = [v11 initWithDevice:v12 sourceCount:2];
  v14 = this[20];
  this[20] = v13;

  [this[20] setBeta:0.0];
  v15 = this[15];
  this[15] = 0;

  v16 = this[16];
  this[16] = 0;

  v17 = this[17];
  this[17] = 0;

  v18 = this[18];
  this[18] = 0;

  v19 = this[19];
  this[19] = 0;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  [this[20] setOptions:{objc_msgSend(this[20], "options") | 1}];
  return this;
}

void sub_1E0875840(_Unwind_Exception *a1)
{
  v3 = v2;

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

void GPU::LSTMOpHandler::encodeNDArrayOp(GPU::LSTMOpHandler *this, id *a2, NSArray *a3)
{
  v68[27] = *MEMORY[0x1E69E9840];
  v55 = a3;
  v66 = this;
  v68[0] = *(this + 3);
  ODSOperandIndexAndLength = mlir::mps::GRUOp::getODSOperandIndexAndLength(v68, 0);
  v5 = *(*(v68[0] + 72) + 32 * ODSOperandIndexAndLength + 24);
  v6 = mlir::mps::GRUOp::getODSOperandIndexAndLength(v68, 1u);
  v7 = *(*(v68[0] + 72) + 32 * v6 + 24);
  v8 = mlir::mps::GRUOp::getODSOperandIndexAndLength(v68, 2u);
  if ((*(v68[0] + 46) & 0x80) != 0)
  {
    v9 = *(v68[0] + 72);
    v10 = v8;
    if (HIDWORD(v8) + v8 == v8)
    {
LABEL_3:
      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v10 = v8;
    if (HIDWORD(v8) + v8 == v8)
    {
      goto LABEL_3;
    }
  }

  v11 = *(v9 + 32 * v10 + 24);
LABEL_6:
  v12 = mlir::mps::GRUOp::getODSOperandIndexAndLength(v68, 3u);
  if ((*(v68[0] + 46) & 0x80) != 0)
  {
    v13 = *(v68[0] + 72);
    v14 = v12;
    if (HIDWORD(v12) + v12 == v12)
    {
LABEL_8:
      v15 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v13 = 0;
    v14 = v12;
    if (HIDWORD(v12) + v12 == v12)
    {
      goto LABEL_8;
    }
  }

  v15 = *(v13 + 32 * v14 + 24);
LABEL_11:
  v16 = mlir::mps::GRUOp::getODSOperandIndexAndLength(v68, 4u);
  if ((*(v68[0] + 46) & 0x80) != 0)
  {
    v17 = *(v68[0] + 72);
    v18 = v16;
    if (HIDWORD(v16) + v16 == v16)
    {
LABEL_13:
      v19 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v17 = 0;
    v18 = v16;
    if (HIDWORD(v16) + v16 == v16)
    {
      goto LABEL_13;
    }
  }

  v19 = *(v17 + 32 * v18 + 24);
LABEL_16:
  v20 = mlir::mps::GRUOp::getODSOperandIndexAndLength(v68, 5u);
  if ((*(v68[0] + 46) & 0x80) != 0)
  {
    v21 = *(v68[0] + 72);
    v22 = v20;
    if (HIDWORD(v20) + v20 == v20)
    {
LABEL_18:
      v23 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v21 = 0;
    v22 = v20;
    if (HIDWORD(v20) + v20 == v20)
    {
      goto LABEL_18;
    }
  }

  v23 = *(v21 + 32 * v22 + 24);
LABEL_21:
  v24 = mlir::mps::GRUOp::getODSOperandIndexAndLength(v68, 6u);
  if ((*(v68[0] + 46) & 0x80) != 0)
  {
    v25 = *(v68[0] + 72);
    v26 = v24;
    if (HIDWORD(v24) + v24 == v24)
    {
LABEL_23:
      v27 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v25 = 0;
    v26 = v24;
    if (HIDWORD(v24) + v24 == v24)
    {
      goto LABEL_23;
    }
  }

  v27 = *(v25 + 32 * v26 + 24);
LABEL_26:
  Training = mlir::mps::GRUOp::getTraining(v68);
  v61 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v62 = a2[1];
  *(v66 + 1);
  v29 = (*(**(v66 + 2) + 48))(*(v66 + 2), v5, 0);
  v64 = [v29 mpsndarray];

  v30 = (*(**(v66 + 2) + 48))(*(v66 + 2), v7, 0);
  v54 = [v30 mpsndarray];

  if (v11)
  {
    v31 = (*(**(v66 + 2) + 48))(*(v66 + 2), v11, 0);
    [v31 mpsndarray];

    if (v15)
    {
      goto LABEL_28;
    }
  }

  else if (v15)
  {
LABEL_28:
    v32 = (*(**(v66 + 2) + 48))(*(v66 + 2), v15, 0);
    [v32 mpsndarray];

    if (v19)
    {
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  if (v19)
  {
LABEL_29:
    v33 = (*(**(v66 + 2) + 48))(*(v66 + 2), v19, 0);
    v57 = [v33 mpsndarray];

    if (v23)
    {
      goto LABEL_30;
    }

    goto LABEL_35;
  }

LABEL_34:
  v57 = 0;
  if (v23)
  {
LABEL_30:
    v34 = (*(**(v66 + 2) + 48))(*(v66 + 2), v23, 0);
    [v34 mpsndarray];

    if (v27)
    {
LABEL_31:
      v35 = (*(**(v66 + 2) + 48))(*(v66 + 2), v27, 0);
      v65 = [v35 mpsndarray];

      goto LABEL_37;
    }

LABEL_36:
    v65 = 0;
LABEL_37:
    v53 = [(NSArray *)v55 objectAtIndexedSubscript:0];
    v52 = [(NSArray *)v55 objectAtIndexedSubscript:1];
    v56 = [v53 mpsndarray];
    v58 = [v52 mpsndarray];
    if ((!v64 || !v56 || !v58) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (Training)
    {
      [(NSArray *)v55 count];
      if ([(NSArray *)v55 count]<= 1 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v36 = [(NSArray *)v55 objectAtIndexedSubscript:2];
      v63 = [v36 mpsndarray];

      if (!v63 || v63[*MEMORY[0x1E69744E8]] != 1 || [v63 readCount])
      {
        v37 = v58;
        if (!v58)
        {
          goto LABEL_53;
        }

        goto LABEL_47;
      }
    }

    v37 = v58;
    if (!v58)
    {
      goto LABEL_53;
    }

LABEL_47:
    if (v37[*MEMORY[0x1E69744E8]] == 1 && ![v37 readCount])
    {
      v38 = [v58 descriptor];
      [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:v62 descriptor:v38];
      objc_claimAutoreleasedReturnValue();
    }

LABEL_53:
    v51 = [v54 descriptor];
    [v51 transposeDimension:0 withDimension:1];
    v60 = [v54 safeArrayViewWithCommandBuffer:v62 computeEncoder:v61 descriptor:v51 aliasing:1];
    v39 = [v56 descriptor];
    v40 = v39;
    if (v39)
    {
      objc_msgSend_getShapeVector(v39);
    }

    else
    {
      v67 = 0;
    }

    mlir::mps::LSTMOp::getGateLayout(v68);
    if (!v11 && *(*v67 + 16) < 2uLL)
    {
      PaddingStyle = mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(v68);
      Layout = mlir::mps::SampleGridOp::getLayout(v68);
      WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(v68);
      v49 = mlir::mps::Conv3DOp::getPaddingStyle(v68);
      StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(v68);
      GPU::LSTMOpHandler::_getLSTMKernelDAGObject(v66, 1u, v60, v64, v57, v65, v67, PaddingStyle, Layout, WeightsLayout, v49, StorageType);
    }

    v41 = mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(v68);
    v42 = mlir::mps::SampleGridOp::getLayout(v68);
    v43 = mlir::mps::Conv3DOp::getWeightsLayout(v68);
    v44 = mlir::mps::Conv3DOp::getPaddingStyle(v68);
    v45 = mlir::mps::MaterializeSparseTensorOp::getStorageType(v68);
    GPU::LSTMOpHandler::_getLSTMKernelDAGObject(v66, 0, v60, v64, v57, v65, v67, v41, v42, v43, v44, v45);
  }

LABEL_35:
  if (v27)
  {
    goto LABEL_31;
  }

  goto LABEL_36;
}

void sub_1E08774F4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, void *a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  STACK[0x238] = a1;

  _Unwind_Resume(STACK[0x238]);
}

void GPU::LSTMOpHandler::_getLSTMKernelDAGObject(uint64_t a1, unsigned int a2, void *a3, void *a4, void *a5, void *a6, void *a7, int a8, int a9, int a10, int a11, int a12)
{
  v16 = a3;
  v17 = a4;
  a5;
  v18 = a6;
  if ((a7[1] - *a7) >= 0)
  {
    operator new();
  }

  std::vector<long>::__throw_length_error[abi:ne200100]();
}

void sub_1E0878124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void ___ZN3GPU13LSTMOpHandler15encodeNDArrayOpEPNS_16EncodeDescriptorEP7NSArray_block_invoke(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v19[3] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a1[4];
  v14 = a1[5];
  v17 = a1 + 6;
  v15 = a1[6];
  v16 = v17[1];
  v19[0] = v9;
  v19[1] = v10;
  v19[2] = v11;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  [v13 encodeToMPSCommandEncoder:v14 commandBuffer:v15 sourceArrays:v18 resultState:0 destinationArray:v12 kernelDAGObject:*(v16 + 144)];
}

id *GPU::LSTMGradientOpHandler::LSTMGradientOpHandler(id *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v6 = &unk_1F5B530C0;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 31) = 0;
  v7 = objc_alloc(MEMORY[0x1E6974740]);
  v8 = [a2[6] metalDevice];
  v9 = [v7 initWithDevice:v8];
  v10 = this[1];
  this[1] = v9;

  v11 = objc_alloc(MEMORY[0x1E6974788]);
  v12 = [a2[6] metalDevice];
  v13 = [v11 initWithDevice:v12 sourceCount:2];
  v14 = this[30];
  this[30] = v13;

  [this[30] setBeta:0.0];
  v15 = objc_alloc(MEMORY[0x1E6974840]);
  v16 = [a2[6] metalDevice];
  v17 = [v15 initWithDevice:v16 axis:0 operation:4];
  v18 = this[31];
  this[31] = v17;

  [this[31] setAxes:&unk_1F5B77C30];
  v19 = this[15];
  this[15] = 0;

  v20 = this[16];
  this[16] = 0;

  v21 = this[17];
  this[17] = 0;

  v22 = this[18];
  this[18] = 0;

  v23 = this[19];
  this[19] = 0;

  v24 = this[20];
  this[20] = 0;

  v25 = this[21];
  this[21] = 0;

  v26 = this[22];
  this[22] = 0;

  v27 = this[23];
  this[23] = 0;

  v28 = this[24];
  this[24] = 0;

  v29 = this[25];
  this[25] = 0;

  v30 = this[26];
  this[26] = 0;

  v31 = this[27];
  this[27] = 0;

  v32 = this[28];
  this[28] = 0;

  v33 = this[29];
  this[29] = 0;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  [this[30] setOptions:{objc_msgSend(this[30], "options") | 1}];
  [this[31] setOptions:{objc_msgSend(this[31], "options") | 1}];
  return this;
}

void GPU::LSTMGradientOpHandler::encodeNDArrayOp(GPU::LSTMGradientOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v72 = *MEMORY[0x1E69E9840];
  v59 = a3;
  v69 = *(this + 3);
  ODSOperandIndexAndLength = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v69, 0);
  v6 = *(*(v69 + 72) + 32 * ODSOperandIndexAndLength + 24);
  v7 = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v69, 9u);
  if ((*(v69 + 46) & 0x80) != 0)
  {
    v8 = *(v69 + 72);
    v9 = v7;
    if (HIDWORD(v7) + v7 == v7)
    {
LABEL_3:
      v10 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    v9 = v7;
    if (HIDWORD(v7) + v7 == v7)
    {
      goto LABEL_3;
    }
  }

  v10 = *(v8 + 32 * v9 + 24);
LABEL_6:
  v11 = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v69, 3u);
  v12 = *(*(v69 + 72) + 32 * v11 + 24);
  v13 = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v69, 1u);
  v14 = *(*(v69 + 72) + 32 * v13 + 24);
  v15 = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v69, 2u);
  v16 = *(*(v69 + 72) + 32 * v15 + 24);
  v17 = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v69, 4u);
  if ((*(v69 + 46) & 0x80) != 0)
  {
    v18 = *(v69 + 72);
    v19 = v17;
    if (HIDWORD(v17) + v17 == v17)
    {
LABEL_8:
      v20 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v18 = 0;
    v19 = v17;
    if (HIDWORD(v17) + v17 == v17)
    {
      goto LABEL_8;
    }
  }

  v20 = *(v18 + 32 * v19 + 24);
LABEL_11:
  v21 = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v69, 5u);
  if ((*(v69 + 46) & 0x80) != 0)
  {
    v22 = *(v69 + 72);
    v23 = v21;
    if (HIDWORD(v21) + v21 == v21)
    {
LABEL_13:
      v24 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v22 = 0;
    v23 = v21;
    if (HIDWORD(v21) + v21 == v21)
    {
      goto LABEL_13;
    }
  }

  v24 = *(v22 + 32 * v23 + 24);
LABEL_16:
  v25 = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v69, 6u);
  v65 = v20;
  if ((*(v69 + 46) & 0x80) != 0)
  {
    v26 = *(v69 + 72);
    v27 = v25;
    if (HIDWORD(v25) + v25 == v25)
    {
LABEL_18:
      v28 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v26 = 0;
    v27 = v25;
    if (HIDWORD(v25) + v25 == v25)
    {
      goto LABEL_18;
    }
  }

  v28 = *(v26 + 32 * v27 + 24);
LABEL_21:
  v29 = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v69, 7u);
  if ((*(v69 + 46) & 0x80) != 0)
  {
    v30 = *(v69 + 72);
    v60 = a2;
    v31 = v29;
    if (HIDWORD(v29) + v29 == v29)
    {
LABEL_23:
      v32 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v30 = 0;
    v60 = a2;
    v31 = v29;
    if (HIDWORD(v29) + v29 == v29)
    {
      goto LABEL_23;
    }
  }

  v32 = *(v30 + 32 * v31 + 24);
LABEL_26:
  v33 = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v69, 8u);
  if ((*(v69 + 46) & 0x80) != 0)
  {
    v34 = *(v69 + 72);
    v35 = v33;
    if (HIDWORD(v33) + v33 == v33)
    {
LABEL_28:
      v64 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    v34 = 0;
    v35 = v33;
    if (HIDWORD(v33) + v33 == v33)
    {
      goto LABEL_28;
    }
  }

  v64 = *(v34 + 32 * v35 + 24);
LABEL_31:
  GPU::EncodeDescriptor::getcomputeEncoder(v60);
  objc_claimAutoreleasedReturnValue();
  v67 = *(v60 + 1);
  *(this + 1);
  v36 = (*(**(this + 2) + 48))(*(this + 2), v6, 0);
  v66 = this;
  v63 = [v36 mpsndarray];

  v37 = (*(**(v66 + 2) + 48))(*(v66 + 2), v14, 0);
  v62 = [v37 mpsndarray];

  v38 = (*(**(v66 + 2) + 48))(*(v66 + 2), v16, 0);
  [v38 mpsndarray];
  objc_claimAutoreleasedReturnValue();

  v39 = (*(**(v66 + 2) + 48))(*(v66 + 2), v12, 0);
  [v39 mpsndarray];
  objc_claimAutoreleasedReturnValue();

  if (v10)
  {
    v40 = (*(**(this + 2) + 48))(*(this + 2), v10, 0);
    [v40 mpsndarray];

    v41 = this;
    v42 = v65;
    if (v65)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v41 = this;
    v42 = v65;
    if (v65)
    {
LABEL_33:
      v43 = (*(**(v41 + 2) + 48))(*(v41 + 2), v42, 0);
      [v43 mpsndarray];

      v41 = this;
      if (v24)
      {
        goto LABEL_34;
      }

      goto LABEL_40;
    }
  }

  if (v24)
  {
LABEL_34:
    v44 = (*(**(v41 + 2) + 48))(*(v41 + 2), v24, 0);
    [v44 mpsndarray];

    v41 = this;
    if (v28)
    {
      goto LABEL_35;
    }

    goto LABEL_41;
  }

LABEL_40:
  if (v28)
  {
LABEL_35:
    v45 = (*(**(v41 + 2) + 48))(*(v41 + 2), v28, 0);
    v61 = [v45 mpsndarray];

    v41 = this;
    if (v32)
    {
      goto LABEL_36;
    }

    goto LABEL_42;
  }

LABEL_41:
  v61 = 0;
  if (v32)
  {
LABEL_36:
    v46 = (*(**(v41 + 2) + 48))(*(v41 + 2), v32, 0);
    [v46 mpsndarray];

    v41 = this;
    v47 = v67;
    v48 = v64;
    if (!v64)
    {
      goto LABEL_43;
    }

    goto LABEL_37;
  }

LABEL_42:
  v47 = v67;
  v48 = v64;
  if (!v64)
  {
LABEL_43:
    [(NSArray *)v59 objectAtIndexedSubscript:0];
    v58 = [objc_claimAutoreleasedReturnValue() mpsndarray];
    if ((!v63 || !v58) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    [(NSArray *)v59 objectAtIndexedSubscript:1];
    [objc_claimAutoreleasedReturnValue() mpsndarray];
    if (!objc_claimAutoreleasedReturnValue() && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    [(NSArray *)v59 objectAtIndexedSubscript:2];
    v56 = [objc_claimAutoreleasedReturnValue() mpsndarray];
    if (!v56 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    [(NSArray *)v59 objectAtIndexedSubscript:3];
    v57 = [objc_claimAutoreleasedReturnValue() mpsndarray];
    if (!v57 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v56)
    {
      if (*(v56 + *MEMORY[0x1E69744E8]) == 1 && ![v56 readCount])
      {
        v51 = [v56 descriptor];
        [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:v47 descriptor:v51];
        objc_claimAutoreleasedReturnValue();

        v47 = v67;
        v50 = v57;
        if (!v57)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v50 = v57;
        if (!v57)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      v50 = v57;
      if (!v57)
      {
        goto LABEL_60;
      }
    }

    if (v50[*MEMORY[0x1E69744E8]] == 1 && ![v50 readCount])
    {
      v52 = [v57 descriptor];
      [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:v47 descriptor:v52];
      objc_claimAutoreleasedReturnValue();
    }

LABEL_60:
    if ([(NSArray *)v59 count]== 5)
    {
      v53 = [(NSArray *)v59 objectAtIndexedSubscript:4];
      [v53 mpsndarray];
      if (!objc_claimAutoreleasedReturnValue() && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    v54 = [v58 descriptor];
    v55 = v54;
    if (v54)
    {
      objc_msgSend_getShapeVector(v54);
    }

    else
    {
      v68 = 0;
    }

    mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(&v69);
    mlir::mps::SampleGridOp::getLayout(&v69);
    mlir::mps::StencilOp::getPaddingStyle(&v69);
    mlir::mps::Conv3DOp::getPaddingStyle(&v69);
    mlir::mps::MaterializeSparseTensorOp::getStorageType(&v69);
    v62;
    v63;
    v61;
    v70 = 0uLL;
    v71 = 0;
    if ((v68[1] - *v68) >= 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

LABEL_37:
  v49 = (*(**(v41 + 2) + 48))(*(v41 + 2), v48, 0);
  [v49 mpsndarray];

  v47 = v67;
  goto LABEL_43;
}

void sub_1E087CB48(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, void *a63)
{
  STACK[0x298] = a1;

  _Unwind_Resume(STACK[0x298]);
}

id *GPU::GRUOpHandler::GRUOpHandler(id *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v6 = &unk_1F5B53110;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  v7 = objc_alloc(MEMORY[0x1E6974740]);
  v8 = [a2[6] metalDevice];
  v9 = [v7 initWithDevice:v8];
  v10 = this[1];
  this[1] = v9;

  v11 = objc_alloc(MEMORY[0x1E6974788]);
  v12 = [a2[6] metalDevice];
  v13 = [v11 initWithDevice:v12 sourceCount:2];
  v14 = this[26];
  this[26] = v13;

  [this[26] setBeta:0.0];
  v15 = this[15];
  this[15] = 0;

  v16 = this[16];
  this[16] = 0;

  v17 = this[17];
  this[17] = 0;

  v18 = this[18];
  this[18] = 0;

  v19 = this[19];
  this[19] = 0;

  v20 = this[20];
  this[20] = 0;

  v21 = this[21];
  this[21] = 0;

  v22 = this[22];
  this[22] = 0;

  v23 = this[23];
  this[23] = 0;

  v24 = this[24];
  this[24] = 0;

  v25 = this[25];
  this[25] = 0;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  [this[26] setOptions:{objc_msgSend(this[26], "options") | 1}];
  return this;
}

void sub_1E087D990(_Unwind_Exception *a1)
{
  v3 = v2;

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

void GPU::GRUOpHandler::encodeNDArrayOp(GPU::GRUOpHandler *this, id *a2, NSArray *a3)
{
  v267 = *MEMORY[0x1E69E9840];
  v188 = a3;
  v239 = *(this + 3);
  ODSOperandIndexAndLength = mlir::mps::GRUOp::getODSOperandIndexAndLength(&v239, 0);
  v6 = *(*(v239 + 72) + 32 * ODSOperandIndexAndLength + 24);
  v7 = mlir::mps::GRUOp::getODSOperandIndexAndLength(&v239, 1u);
  v8 = *(*(v239 + 72) + 32 * v7 + 24);
  v9 = mlir::mps::GRUOp::getODSOperandIndexAndLength(&v239, 2u);
  if ((*(v239 + 46) & 0x80) != 0)
  {
    v10 = *(v239 + 72);
    v11 = v9;
    if (HIDWORD(v9) + v9 == v9)
    {
LABEL_3:
      v12 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    v11 = v9;
    if (HIDWORD(v9) + v9 == v9)
    {
      goto LABEL_3;
    }
  }

  v12 = *(v10 + 32 * v11 + 24);
LABEL_6:
  v13 = mlir::mps::GRUOp::getODSOperandIndexAndLength(&v239, 3u);
  if ((*(v239 + 46) & 0x80) != 0)
  {
    v14 = *(v239 + 72);
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
LABEL_8:
      v16 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v14 = 0;
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
      goto LABEL_8;
    }
  }

  v16 = *(v14 + 32 * v15 + 24);
LABEL_11:
  Training = mlir::mps::GRUOp::getTraining(&v239);
  ResetAfter = mlir::mps::GRUOp::getResetAfter(&v239);
  mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v239);
  v18 = mlir::mps::GRUOp::getODSOperandIndexAndLength(&v239, 4u);
  if ((*(v239 + 46) & 0x80) != 0)
  {
    v19 = *(v239 + 72);
    v234 = this;
    v20 = v18;
    if (HIDWORD(v18) + v18 == v18)
    {
LABEL_13:
      v21 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v19 = 0;
    v234 = this;
    v20 = v18;
    if (HIDWORD(v18) + v18 == v18)
    {
      goto LABEL_13;
    }
  }

  v21 = *(v19 + 32 * v20 + 24);
LABEL_16:
  v232 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v217 = a2;
  v233 = a2[1];
  v221 = *(v234 + 1);
  v22 = (*(**(v234 + 2) + 48))(*(v234 + 2), v6, 0);
  v184 = [v22 mpsndarray];

  v23 = (*(**(v234 + 2) + 48))(*(v234 + 2), v8, 0);
  v185 = [v23 mpsndarray];

  if (v12)
  {
    v24 = (*(**(v234 + 2) + 48))(*(v234 + 2), v12, 0);
    v182 = [v24 mpsndarray];

    if (v16)
    {
      goto LABEL_18;
    }

LABEL_21:
    v177 = 0;
    if (v21)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  v182 = 0;
  if (!v16)
  {
    goto LABEL_21;
  }

LABEL_18:
  v25 = (*(**(v234 + 2) + 48))(*(v234 + 2), v16, 0);
  v177 = [v25 mpsndarray];

  if (v21)
  {
LABEL_19:
    v26 = (*(**(v234 + 2) + 48))(*(v234 + 2), v21, 0);
    v187 = [v26 mpsndarray];

    goto LABEL_23;
  }

LABEL_22:
  v187 = 0;
LABEL_23:
  v175 = [(NSArray *)v188 objectAtIndexedSubscript:0];
  v186 = [v175 mpsndarray];
  if ((!v184 || !v186) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (Training)
  {
    [(NSArray *)v188 count];
    if ([(NSArray *)v188 count]<= 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v27 = [(NSArray *)v188 objectAtIndexedSubscript:1];
    v28 = [v27 mpsndarray];

    v29 = v28;
    if (!v28 || v28[*MEMORY[0x1E69744E8]] != 1 || [v28 readCount])
    {
      v211 = 1;
      goto LABEL_33;
    }
  }

  v29 = 0;
  v211 = 0;
LABEL_33:
  [v185 descriptor];
  v176 = v212 = v29;
  [v176 transposeDimension:0 withDimension:1];
  v178 = [v185 safeArrayViewWithCommandBuffer:v233 computeEncoder:v232 descriptor:v176 aliasing:1];
  v30 = [v186 descriptor];
  v31 = v30;
  if (v30)
  {
    objc_msgSend_getShapeVector(v30);
  }

  else
  {
    v238 = 0;
  }

  mlir::mps::Conv3DOp::getWeightsLayout(&v239);
  mlir::mps::Conv3DOp::getPaddingStyle(&v239);
  mlir::mps::LSTMOp::getGateLayout(&v239);
  v223 = v178;
  v193 = v184;
  v183 = v177;
  if (!*(v234 + 15))
  {
    v265 = 0uLL;
    v266 = 0;
    v32 = v238[1];
    if (v32 != *v238)
    {
      if (((v32 - *v238) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    MEMORY[0x10] = 1;
    MEMORY[0] *= 2;
    MEMORY[0] *= 3;
    v33 = [v223 descriptor];
    v34 = v33;
    if (v33)
    {
      objc_msgSend_getShapeVector(v33);
    }

    else
    {
      v240 = 0;
    }

    v35 = v240[1];
    if (v35 != *v240)
    {
      if (((v35 - *v240) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v263 = 0uLL;
    v264 = 0;
    if ((v240[1] - *v240) >= 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if ((*(v234 + 40) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v213 = *(*v238 + 2);
  v36 = !ResetAfter;
  if (!v212)
  {
    v36 = 1;
  }

  if ((v36 & 1) == 0)
  {
    v37 = v193;
    v38 = v37;
    if (v37 && *(v37 + *MEMORY[0x1E69744E8]) == 1)
    {
      [(GPU::EncodeDescriptor *)v37 setReadCount:[(GPU::EncodeDescriptor *)v37 readCount]+ 1];
    }
  }

  v39 = v186;
  v40 = v39;
  if (v39 && *(v39 + *MEMORY[0x1E69744E8]) == 1)
  {
    [(GPU::EncodeDescriptor *)v39 setReadCount:[(GPU::EncodeDescriptor *)v39 readCount]+ 2];
  }

  __src = v40;

  if (ResetAfter)
  {
    v41 = 2;
  }

  else
  {
    v41 = 1;
  }

  v42 = v212;
  v43 = v42;
  if (v42 && *(v42 + *MEMORY[0x1E69744E8]) == 1)
  {
    [(GPU::EncodeDescriptor *)v42 setReadCount:[(GPU::EncodeDescriptor *)v42 readCount]+ v41];
  }

  v209 = v43;

  v44 = v223;
  v45 = v44;
  if (v44 && 100 * v213 && (*(v44 + *MEMORY[0x1E69744E8]) & 1) != 0)
  {
    [(GPU::EncodeDescriptor *)v44 setReadCount:[(GPU::EncodeDescriptor *)v44 readCount]+ 100 * v213];
  }

  v196 = v45;

  v229 = GPU::getSlice(v217, __src, 2, 20 * v213, 0, 1);
  v228 = GPU::getSlice(v217, __src, 2, 20 * v213, 0, 1);
  v46 = MEMORY[0x1E69744C8];
  v265 = xmmword_1E09ABAA8;
  v266 = 1;
  v263 = xmmword_1E09ABAA8;
  v264 = 1;
  v47 = MEMORY[0x1E6974508];
  v48 = MEMORY[0x1E69744D8];
  v49 = (v193 + *MEMORY[0x1E6974508]);
  v50 = v193 + *MEMORY[0x1E69744D8];
  v51 = *v49;
  v52 = v49[1];
  v53 = v49[2];
  v54 = v49[3];
  LOBYTE(v49) = *v50;
  v237[2] = v53;
  v237[3] = v54;
  v237[0] = v51;
  v237[1] = v52;
  *&v265 = *(v237 + (v49 & 0xF));
  *&v263 = v265;
  v55 = v50[1] & 0xF;
  v236[2] = v53;
  v236[3] = v54;
  v236[0] = v51;
  v236[1] = v52;
  *(&v265 + 1) = *(v236 + v55);
  v56 = v265 / 3uLL;
  *&v263 = v56;
  *(&v263 + 1) = *(&v265 + 1);
  v179 = [MEMORY[0x1E6974490] descriptorWithDataType:*(v193 + *MEMORY[0x1E69744C8]) dimensionCount:3 dimensionSizes:&v265];
  [v179 setPreferPackedRows:1];
  v180 = [MEMORY[0x1E6974490] descriptorWithDataType:*(v193 + *v46) dimensionCount:3 dimensionSizes:&v263];
  [v180 setPreferPackedRows:1];
  if (v212)
  {
    v57 = GPU::getSlice(v217, v209, 2, 50 * v213, 0, 1);
    v58 = v57;
    if (ResetAfter)
    {
      *(v57 + *v47 + 4 * (*(v57 + *v48) & 0xF)) = 3 * v56;
      v181 = GPU::getSlice(v217, v209, 0, 1, 3 * v56, v56);
      goto LABEL_76;
    }
  }

  else
  {
    v59 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:v233 descriptor:v179];
    *&v59[*MEMORY[0x1E6974558]] = 50 * v213;
    v58 = v59;
  }

  v181 = 0;
LABEL_76:
  v215 = v58;
  Layout = mlir::mps::SampleGridOp::getLayout(&v239);
  v61 = v196;
  if (Layout == 1)
  {
    v62 = 0;
    v203 = 1;
    v63 = v56;
  }

  else
  {
    if (Layout == 2)
    {
      v62 = 0;
      v203 = 0;
      v63 = 2 * v56;
      v64 = v56;
      goto LABEL_82;
    }

    v63 = 0;
    v203 = 1;
    v62 = v56;
  }

  v64 = 2 * v56;
LABEL_82:
  v65 = 10 * v213;
  v220 = GPU::getSlice(v217, v58, 0, 10 * v213, v62, v56);
  v225 = GPU::getSlice(v217, v58, 0, 10 * v213, v63, v56);
  v224 = GPU::getSlice(v217, v58, 0, 10 * v213, v64, v56);
  if (v203)
  {
    v216 = GPU::getSlice(v217, v58, 0, v65, 0, 2 * v56);

    v192 = GPU::getSlice(v217, v196, 0, v65, 0, 2 * v56);

    v61 = v196;
  }

  else
  {
    v192 = 0;
    v216 = 0;
  }

  v191 = GPU::getSlice(v217, v61, 0, v65, v62, v56);
  v190 = GPU::getSlice(v217, v61, 0, v65, v63, v56);
  v195 = GPU::getSlice(v217, v61, 0, v65, v64, v56);
  v66 = GPU::getSlice(v217, v193, 2, 4 * v213, 0, 1);
  v227 = GPU::getSlice(v217, v66, 0, v65, v62, v56);
  v230 = GPU::getSlice(v217, v66, 0, v65, v63, v56);
  v231 = GPU::getSlice(v217, v66, 0, v65, v64, v56);
  if (v203)
  {
    v222 = GPU::getSlice(v217, v66, 0, v65, 0, 2 * v56);
  }

  else
  {
    v222 = 0;
  }

  if (v212 != 0 && ResetAfter)
  {
    v189 = GPU::getSlice(v217, v193, 0, 0, v64, v56);
  }

  else
  {
    v189 = 0;
  }

  v67 = GPU::getSlice(v217, v182, 2, v65, 0, 1);
  v68 = GPU::getSlice(v217, v187, 1, v65, 0, 1);
  v208 = v68;
  if ((ResetAfter | v211) == 1)
  {
    v69 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:v233 descriptor:v180];
    *&v69[*MEMORY[0x1E6974558]] = 50;
    v202 = v69;

    v70 = v209;
    v71 = 0x1E695D000;
    if (!v213)
    {
LABEL_93:
      v72 = v67;
      goto LABEL_167;
    }
  }

  else
  {
    v202 = v220;
    v71 = 0x1E695D000uLL;
    v70 = v209;
    if (!v213)
    {
      goto LABEL_93;
    }
  }

  v73 = 0;
  v206 = __src + 2;
  v218 = (v66 + 2);
  v74 = v70 + 2;
  v194 = v58 + 2;
  v75 = ResetAfter;
  if (!v68)
  {
    v75 = 0;
  }

  v197 = v75;
  v76 = MEMORY[0x1E6974510];
  do
  {
    v77 = __src;
    v78 = v77;
    if (v229)
    {
      v79 = *v76;
      v80 = *v48;
      v81 = __src;
      if (__src)
      {
        v81 = *(v77 + 4 * (v206[v80] & 0xF) + v79);
      }

      *&v229[4 * (v229[v80 + 2] & 0xF) + v79] = v81 + v73;
    }

    v82 = v66;
    v83 = v82;
    if (v227)
    {
      v84 = *v76;
      v85 = *v48;
      if (v66)
      {
        v86 = *(v82 + 4 * (*(v218 + v85) & 0xF) + v84);
      }

      else
      {
        v86 = 0;
      }

      *&v227[4 * (v227[v85 + 2] & 0xF) + v84] = v86 + v73;
    }

    v87 = v83;
    v88 = v87;
    if (v230)
    {
      v89 = *v76;
      v90 = *v48;
      if (v66)
      {
        v91 = *(v87 + 4 * (*(v218 + v90) & 0xF) + v89);
      }

      else
      {
        v91 = 0;
      }

      *&v230[4 * (v230[v90 + 2] & 0xF) + v89] = v91 + v73;
    }

    v92 = v88;
    v93 = v92;
    if (v231)
    {
      v94 = *v76;
      v95 = *v48;
      if (v66)
      {
        v96 = *(v92 + 4 * (*(v218 + v95) & 0xF) + v94);
      }

      else
      {
        v96 = 0;
      }

      *&v231[4 * (v231[v95 + 2] & 0xF) + v94] = v96 + v73;
    }

    v97 = v93;
    if (v222)
    {
      v98 = *v76;
      v99 = *v48;
      if (v66)
      {
        v100 = *(v97 + 4 * (*(v218 + v99) & 0xF) + v98);
      }

      else
      {
        v100 = 0;
      }

      *&v222[4 * (v222[v99 + 2] & 0xF) + v98] = v100 + v73;
    }

    if (v212)
    {
      v101 = v209;
      v102 = v101;
      if (v220)
      {
        *&v220[4 * (v220[*v48 + 2] & 0xF) + *v76] = v73 + *(v101 + 4 * (v74[*v48] & 0xF) + *v76);
      }

      v103 = v102;
      v104 = v103;
      if (v225)
      {
        *&v225[4 * (v225[*v48 + 2] & 0xF) + *v76] = v73 + *(v103 + 4 * (v74[*v48] & 0xF) + *v76);
      }

      v105 = v104;
      v106 = v105;
      if (v224)
      {
        *&v224[4 * (v224[*v48 + 2] & 0xF) + *v76] = v73 + *(v105 + 4 * (v74[*v48] & 0xF) + *v76);
      }

      v107 = v106;
      v108 = v107;
      if (v216)
      {
        *&v216[4 * (v216[*v48 + 2] & 0xF) + *v76] = v73 + *(v107 + 4 * (v74[*v48] & 0xF) + *v76);
      }

      v109 = v108;
      if (v215)
      {
        *&v215[4 * (v194[*v48] & 0xF) + *v76] = v73 + *&v109[4 * (v74[*v48] & 0xF) + *v76];
      }
    }

    if (v67)
    {
      v110 = *(v234 + 26);
      if (ResetAfter)
      {
        v262[0] = v67;
        v262[1] = v196;
        v111 = [*(v71 + 3784) arrayWithObjects:v262 count:2];
        [v110 encodeToMPSCommandEncoder:v232 commandBuffer:v233 sourceArrays:v111 resultState:0 destinationArray:v215 kernelDAGObject:0];

        if (v211)
        {
          if (v203)
          {
            v261[0] = v216;
            v261[1] = v222;
            v112 = [*(v71 + 3784) arrayWithObjects:v261 count:2];
            [v221 encodeToMPSCommandEncoder:v232 commandBuffer:v233 sourceArrays:v112 resultState:0 destinationArray:v216 kernelDAGObject:*(v234 + 23)];
          }

          else
          {
            v260[0] = v225;
            v260[1] = v230;
            v126 = [*(v71 + 3784) arrayWithObjects:v260 count:2];
            [v221 encodeToMPSCommandEncoder:v232 commandBuffer:v233 sourceArrays:v126 resultState:0 destinationArray:v225 kernelDAGObject:*(v234 + 24)];

            v259[0] = v220;
            v259[1] = v227;
            v112 = [*(v71 + 3784) arrayWithObjects:v259 count:2];
            [v221 encodeToMPSCommandEncoder:v232 commandBuffer:v233 sourceArrays:v112 resultState:0 destinationArray:v220 kernelDAGObject:*(v234 + 24)];
          }

          if (v208)
          {
            v258[0] = v224;
            v258[1] = v208;
            v127 = [*(v71 + 3784) arrayWithObjects:v258 count:2];
            [v221 encodeToMPSCommandEncoder:v232 commandBuffer:v233 sourceArrays:v127 resultState:0 destinationArray:v224 kernelDAGObject:*(v234 + 25)];
          }

          v257[0] = v224;
          v257[1] = v220;
          v257[2] = v231;
          v257[3] = v67;
          v257[4] = v225;
          v120 = [*(v71 + 3784) arrayWithObjects:v257 count:5];
          [v221 encodeToMPSCommandEncoder:v232 commandBuffer:v233 sourceArrays:v120 resultState:0 destinationArray:v229 kernelDAGObject:*(v234 + 19)];
        }

        else
        {
          v256[0] = v224;
          v256[1] = v220;
          v256[2] = v227;
          v256[3] = v231;
          v256[4] = v67;
          v256[5] = v225;
          v256[6] = v230;
          v120 = [*(v71 + 3784) arrayWithObjects:v256 count:7];
          if (v208)
          {
            v255[0] = v224;
            v255[1] = v208;
            v255[2] = v220;
            v255[3] = v227;
            v255[4] = v231;
            v255[5] = v67;
            v255[6] = v225;
            v255[7] = v230;
            v121 = [*(v71 + 3784) arrayWithObjects:v255 count:8];

            v120 = v121;
          }

          [v221 encodeToMPSCommandEncoder:v232 commandBuffer:v233 sourceArrays:v120 resultState:0 destinationArray:v229 kernelDAGObject:*(v234 + 20)];
        }
      }

      else
      {
        if (v203)
        {
          v254[0] = v67;
          v254[1] = v192;
          v254[2] = v222;
          v114 = [*(v71 + 3784) arrayWithObjects:v254 count:3];
          [v110 encodeToMPSCommandEncoder:v232 commandBuffer:v233 sourceArrays:v114 resultState:0 destinationArray:v216 kernelDAGObject:*(v234 + 15)];
        }

        else
        {
          v253[0] = v67;
          v253[1] = v191;
          v253[2] = v227;
          v115 = [*(v71 + 3784) arrayWithObjects:v253 count:3];
          [v110 encodeToMPSCommandEncoder:v232 commandBuffer:v233 sourceArrays:v115 resultState:0 destinationArray:v220 kernelDAGObject:*(v234 + 16)];

          v116 = *(v234 + 26);
          v252[0] = v67;
          v252[1] = v190;
          v252[2] = v230;
          v114 = [*(v71 + 3784) arrayWithObjects:v252 count:3];
          [v116 encodeToMPSCommandEncoder:v232 commandBuffer:v233 sourceArrays:v114 resultState:0 destinationArray:v225 kernelDAGObject:*(v234 + 16)];
        }

        v251[0] = v67;
        v251[1] = v220;
        v117 = [*(v71 + 3784) arrayWithObjects:v251 count:2];
        [v221 encodeToMPSCommandEncoder:v232 commandBuffer:v233 sourceArrays:v117 resultState:0 destinationArray:v202 kernelDAGObject:*(v234 + 17)];

        v118 = *(v234 + 26);
        if (v211)
        {
          v249[0] = v202;
          v249[1] = v195;
          v249[2] = v231;
          v119 = [*(v71 + 3784) arrayWithObjects:v249 count:3];
          [v118 encodeToMPSCommandEncoder:v232 commandBuffer:v233 sourceArrays:v119 resultState:0 destinationArray:v224 kernelDAGObject:*(v234 + 16)];

          v248[0] = v224;
          v248[1] = v67;
          v248[2] = v225;
          v120 = [*(v71 + 3784) arrayWithObjects:v248 count:3];
          [v221 encodeToMPSCommandEncoder:v232 commandBuffer:v233 sourceArrays:v120 resultState:0 destinationArray:v229 kernelDAGObject:*(v234 + 19)];
        }

        else
        {
          v250[0] = v202;
          v250[1] = v195;
          v250[2] = v231;
          v250[3] = v225;
          v250[4] = v67;
          v120 = [*(v71 + 3784) arrayWithObjects:v250 count:5];
          [v118 encodeToMPSCommandEncoder:v232 commandBuffer:v233 sourceArrays:v120 resultState:0 destinationArray:v229 kernelDAGObject:*(v234 + 18)];
        }
      }
    }

    else
    {
      if (v211)
      {
        if (v203)
        {
          v247 = v222;
          v113 = [*(v71 + 3784) arrayWithObjects:&v247 count:1];
          [v221 encodeToMPSCommandEncoder:v232 commandBuffer:v233 sourceArrays:v113 resultState:0 destinationArray:v216 kernelDAGObject:0];
        }

        else
        {
          v246 = v227;
          v122 = [*(v71 + 3784) arrayWithObjects:&v246 count:1];
          [v221 encodeToMPSCommandEncoder:v232 commandBuffer:v233 sourceArrays:v122 resultState:0 destinationArray:v220 kernelDAGObject:0];

          v245 = v230;
          v113 = [*(v71 + 3784) arrayWithObjects:&v245 count:1];
          [v221 encodeToMPSCommandEncoder:v232 commandBuffer:v233 sourceArrays:v113 resultState:0 destinationArray:v225 kernelDAGObject:0];
        }

        if (v197)
        {
          v123 = *(v234 + 26);
          v244[0] = v208;
          v244[1] = v195;
          v124 = [*(v71 + 3784) arrayWithObjects:v244 count:2];
          [v123 encodeToMPSCommandEncoder:v232 commandBuffer:v233 sourceArrays:v124 resultState:0 destinationArray:v224 kernelDAGObject:0];
        }

        else
        {
          [v221 encodeToMPSCommandEncoder:v232 commandBuffer:v233 sourceArrays:MEMORY[0x1E695E0F0] resultState:0 destinationArray:v224 kernelDAGObject:*(v234 + 22)];
        }
      }

      v243[0] = v230;
      v243[1] = v231;
      v120 = [*(v71 + 3784) arrayWithObjects:v243 count:2];
      if (v197)
      {
        v242[0] = v230;
        v242[1] = v231;
        v242[2] = v227;
        v242[3] = v208;
        v125 = [*(v71 + 3784) arrayWithObjects:v242 count:4];

        v120 = v125;
      }

      [v221 encodeToMPSCommandEncoder:v232 commandBuffer:v233 sourceArrays:v120 resultState:0 destinationArray:v229 kernelDAGObject:*(v234 + 21)];
    }

    v128 = v78;
    if (v228)
    {
      v129 = *v76;
      v130 = *v48;
      v131 = __src;
      if (__src)
      {
        v131 = *(v128 + 4 * (v206[v130] & 0xF) + v129);
      }

      *&v228[4 * (v228[v130 + 2] & 0xF) + v129] = v131 + v73;
    }

    v72 = v228;
    ++v73;
    v67 = v72;
  }

  while (v213 != v73);
LABEL_167:
  if (v189)
  {
    v241 = v189;
    v132 = [*(v71 + 3784) arrayWithObjects:&v241 count:1];
    [v221 encodeToMPSCommandEncoder:v232 commandBuffer:v233 sourceArrays:v132 resultState:0 destinationArray:v181 kernelDAGObject:0];
  }

  v133 = v229;
  v134 = v133;
  if (v133 && v133[*MEMORY[0x1E69744E8]] == 1)
  {
    [v133 setReadCount:0];
  }

  v199 = v134;

  v135 = v215;
  v136 = v135;
  if (v135 && v135[*MEMORY[0x1E69744E8]] == 1)
  {
    [v135 setReadCount:0];
  }

  v204 = v136;

  v137 = v220;
  v138 = v137;
  if (v137 && v137[*MEMORY[0x1E69744E8]] == 1)
  {
    [v137 setReadCount:0];
  }

  v139 = v225;
  v140 = v139;
  if (v139 && *(v139 + *MEMORY[0x1E69744E8]) == 1)
  {
    [(GPU *)v139 setReadCount:0];
  }

  v219 = v140;

  v141 = v224;
  v142 = v141;
  if (v141 && v141[*MEMORY[0x1E69744E8]] == 1)
  {
    [v141 setReadCount:0];
  }

  v214 = v142;

  v143 = v216;
  v144 = v143;
  if (v143 && v143[*MEMORY[0x1E69744E8]] == 1)
  {
    [v143 setReadCount:0];
  }

  v207 = v144;

  v145 = v66;
  v146 = v145;
  if (v145 && *(v145 + *MEMORY[0x1E69744E8]) == 1)
  {
    [(GPU::EncodeDescriptor *)v145 setReadCount:0];
  }

  v235 = v146;

  v147 = v196;
  v148 = v147;
  if (v196 && *(v147 + *MEMORY[0x1E69744E8]) == 1)
  {
    [(GPU::EncodeDescriptor *)v147 setReadCount:0];
  }

  v198 = v148;

  v149 = v192;
  v150 = v149;
  if (v149 && *(v149 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v149 setReadCount:0];
  }

  v200 = v150;

  v151 = v195;
  v152 = v151;
  if (v151 && *(v151 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v151 setReadCount:0];
  }

  v201 = v152;

  v153 = v227;
  v154 = v153;
  if (v153 && v153[*MEMORY[0x1E69744E8]] == 1)
  {
    [v153 setReadCount:0];
  }

  v205 = v154;

  v155 = v230;
  v156 = v155;
  if (v155 && v155[*MEMORY[0x1E69744E8]] == 1)
  {
    [v155 setReadCount:0];
  }

  v157 = v156;

  v158 = v231;
  v159 = v158;
  if (v158 && v158[*MEMORY[0x1E69744E8]] == 1)
  {
    [v158 setReadCount:0];
  }

  v160 = v222;
  v161 = v160;
  if (v160 && v160[*MEMORY[0x1E69744E8]] == 1)
  {
    [v160 setReadCount:0];
  }

  v162 = v72;
  v163 = v162;
  if (v162 && v162[*MEMORY[0x1E69744E8]] == 1)
  {
    [v162 setReadCount:0];
  }

  v164 = v208;
  v165 = v164;
  if (v164 && *(v164 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v164 setReadCount:0];
  }

  v166 = v189;
  v167 = v166;
  if (v189 && *(v166 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v166 setReadCount:0];
  }

  v168 = v167;

  v169 = v181;
  v170 = v169;
  if (v169 && *(v169 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v169 setReadCount:0];
  }

  if ((ResetAfter & v211) == 1)
  {
    v171 = v202;
    v172 = v171;
    if (v171 && v171[*MEMORY[0x1E69744E8]] == 1)
    {
      [v171 setReadCount:0];
    }
  }

  v173 = v238;
  v238 = 0;
  if (v173)
  {
    v174 = *v173;
    if (*v173)
    {
      v173[1] = v174;
      operator delete(v174);
    }

    MEMORY[0x1E12E5B90](v173, 0x10C402FEFCB83);
  }
}

void sub_1E08807E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, void *__p, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::unique_ptr<std::vector<long> const,std::default_delete<std::vector<long> const>>::~unique_ptr[abi:ne200100](&STACK[0x268]);

  _Unwind_Resume(a1);
}

id *GPU::GRUGradientOpHandler::GRUGradientOpHandler(id *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v6 = &unk_1F5B53160;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  v7 = objc_alloc(MEMORY[0x1E6974740]);
  v8 = [a2[6] metalDevice];
  v9 = [v7 initWithDevice:v8];
  v10 = this[1];
  this[1] = v9;

  v11 = objc_alloc(MEMORY[0x1E6974788]);
  v12 = [a2[6] metalDevice];
  v13 = [v11 initWithDevice:v12 sourceCount:2];
  v14 = this[25];
  this[25] = v13;

  [this[25] setBeta:0.0];
  v15 = objc_alloc(MEMORY[0x1E6974840]);
  v16 = [a2[6] metalDevice];
  v17 = [v15 initWithDevice:v16 axis:0 operation:4];
  v18 = this[26];
  this[26] = v17;

  [this[26] setAxes:&unk_1F5B77C48];
  v19 = this[15];
  this[15] = 0;

  v20 = this[16];
  this[16] = 0;

  v21 = this[17];
  this[17] = 0;

  v22 = this[18];
  this[18] = 0;

  v23 = this[19];
  this[19] = 0;

  v24 = this[20];
  this[20] = 0;

  v25 = this[21];
  this[21] = 0;

  v26 = this[22];
  this[22] = 0;

  v27 = this[23];
  this[23] = 0;

  v28 = this[24];
  this[24] = 0;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  [this[25] setOptions:{objc_msgSend(this[25], "options") | 1}];
  [this[26] setOptions:{objc_msgSend(this[26], "options") | 1}];
  return this;
}

void GPU::GRUGradientOpHandler::encodeNDArrayOp(GPU::GRUGradientOpHandler *this, id *a2, NSArray *a3)
{
  v437 = *MEMORY[0x1E69E9840];
  v314 = a3;
  v408 = *(this + 3);
  ODSOperandIndexAndLength = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v408, 0);
  v5 = *(*(v408 + 72) + 32 * ODSOperandIndexAndLength + 24);
  v6 = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v408, 1u);
  v7 = *(*(v408 + 72) + 32 * v6 + 24);
  v8 = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v408, 2u);
  v9 = *(*(v408 + 72) + 32 * v8 + 24);
  v10 = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v408, 4u);
  if ((*(v408 + 46) & 0x80) != 0)
  {
    v11 = *(v408 + 72);
    v12 = v10;
    if (HIDWORD(v10) + v10 == v10)
    {
LABEL_3:
      v13 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    v12 = v10;
    if (HIDWORD(v10) + v10 == v10)
    {
      goto LABEL_3;
    }
  }

  v13 = *(v11 + 32 * v12 + 24);
LABEL_6:
  v14 = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v408, 3u);
  v15 = *(*(v408 + 72) + 32 * v14 + 24);
  v16 = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v408, 5u);
  if ((*(v408 + 46) & 0x80) != 0)
  {
    v17 = *(v408 + 72);
    v18 = v16;
    if (HIDWORD(v16) + v16 == v16)
    {
LABEL_8:
      v19 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v17 = 0;
    v18 = v16;
    if (HIDWORD(v16) + v16 == v16)
    {
      goto LABEL_8;
    }
  }

  v19 = *(v17 + 32 * v18 + 24);
LABEL_11:
  ResetAfter = mlir::mps::GRUOp::getResetAfter(&v408);
  mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v408);
  v20 = mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(&v408, 6u);
  if ((*(v408 + 46) & 0x80) != 0)
  {
    v21 = *(v408 + 72);
    v385 = this;
    v22 = v20;
    if (HIDWORD(v20) + v20 == v20)
    {
LABEL_13:
      v23 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v21 = 0;
    v385 = this;
    v22 = v20;
    if (HIDWORD(v20) + v20 == v20)
    {
      goto LABEL_13;
    }
  }

  v23 = *(v21 + 32 * v22 + 24);
LABEL_16:
  v393 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v396 = a2[1];
  v390 = *(v385 + 1);
  v24 = (*(**(v385 + 2) + 48))(*(v385 + 2), v5, 0);
  v309 = [v24 mpsndarray];

  v25 = (*(**(v385 + 2) + 48))(*(v385 + 2), v7, 0);
  v298 = [v25 mpsndarray];

  v26 = (*(**(v385 + 2) + 48))(*(v385 + 2), v9, 0);
  v359 = [v26 mpsndarray];

  if (v13)
  {
    v27 = (*(**(v385 + 2) + 48))(*(v385 + 2), v13, 0);
    v306 = [v27 mpsndarray];

    if (v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v306 = 0;
    if (v15)
    {
LABEL_18:
      v28 = (*(**(v385 + 2) + 48))(*(v385 + 2), v15, 0);
      v296 = [v28 mpsndarray];

      if (v19)
      {
        goto LABEL_19;
      }

LABEL_23:
      v297 = 0;
      if (v23)
      {
        goto LABEL_20;
      }

      goto LABEL_24;
    }
  }

  v296 = 0;
  if (!v19)
  {
    goto LABEL_23;
  }

LABEL_19:
  v29 = (*(**(v385 + 2) + 48))(*(v385 + 2), v19, 0);
  v297 = [v29 mpsndarray];

  if (v23)
  {
LABEL_20:
    v30 = (*(**(v385 + 2) + 48))(*(v385 + 2), v23, 0);
    v295 = [v30 mpsndarray];

    goto LABEL_25;
  }

LABEL_24:
  v295 = 0;
LABEL_25:
  v292 = [(NSArray *)v314 objectAtIndexedSubscript:0];
  v312 = [v292 mpsndarray];
  if ((!v309 || !v312) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v293 = [(NSArray *)v314 objectAtIndexedSubscript:1];
  v307 = [v293 mpsndarray];
  if (!v307 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v294 = [(NSArray *)v314 objectAtIndexedSubscript:2];
  v308 = [v294 mpsndarray];
  if (!v308 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ([(NSArray *)v314 count]== 4 && ResetAfter)
  {
    v31 = [(NSArray *)v314 objectAtIndexedSubscript:3];
    v32 = [v31 mpsndarray];
    if (!v32 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  else
  {
    v32 = 0;
  }

  v302 = v32;
  v33 = [v312 descriptor];
  v34 = v33;
  if (v33)
  {
    objc_msgSend_getShapeVector(v33);
  }

  else
  {
    v407 = 0;
  }

  mlir::mps::StencilOp::getPaddingStyle(&v408);
  mlir::mps::Conv3DOp::getPaddingStyle(&v408);
  mlir::mps::LSTMOp::getGateLayout(&v408);
  v313 = v298;
  v379 = v309;
  v35 = v297;
  v388 = (v385 + 120);
  if (!*(v385 + 15))
  {
    if (v407[1] - *v407 >= 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if ((*(v385 + 40) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v366 = *(*v407 + 2);
  v36 = v307;
  v37 = v36;
  if (v307 && *(v36 + *MEMORY[0x1E69744E8]) == 1)
  {
    [(GPU::EncodeDescriptor *)v36 setReadCount:[(GPU::EncodeDescriptor *)v36 readCount]+ 4];
  }

  v310 = v37;

  v38 = v312;
  v39 = v38;
  if (v38 && *(v38 + *MEMORY[0x1E69744E8]) == 1)
  {
    [(GPU::EncodeDescriptor *)v38 setReadCount:[(GPU::EncodeDescriptor *)v38 readCount]+ 5];
  }

  v381 = v39;

  v40 = v308;
  v41 = v40;
  if (v308 && *(v40 + *MEMORY[0x1E69744E8]) == 1)
  {
    [(GPU::EncodeDescriptor *)v40 setReadCount:[(GPU::EncodeDescriptor *)v40 readCount]+ 1];
  }

  v305 = v41;

  v42 = v296;
  v43 = v42;
  if (v42 && *(v42 + *MEMORY[0x1E69744E8]) == 1)
  {
    [(GPU::EncodeDescriptor *)v42 setReadCount:[(GPU::EncodeDescriptor *)v42 readCount]+ 1];
  }

  v357 = v43;

  v44 = v379;
  v45 = v44;
  if (v44 && *(v44 + *MEMORY[0x1E69744E8]) == 1)
  {
    [(GPU::EncodeDescriptor *)v44 setReadCount:[(GPU::EncodeDescriptor *)v44 readCount]+ 1];
  }

  v368 = v45;

  v46 = v35;
  v47 = v46;
  if (v46 && v366 != 1 && (*(v46 + *MEMORY[0x1E69744E8]) & 1) != 0)
  {
    [v46 setReadCount:{objc_msgSend(v46, "readCount") + v366 - 1}];
  }

  v320 = v366 - 1;
  v285 = v47;

  v48 = v295;
  v49 = v48;
  if (v48 && *(v48 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v48 setReadCount:{objc_msgSend(v48, "readCount") - 1}];
  }

  v284 = v49;

  v50 = 100 * v366;
  v350 = GPU::getSlice(a2, v381, 2, 100 * v366 + 4, 0, 1);
  v311 = GPU::getSlice(a2, v313, 2, 100 * v366 + 4, 0, 1);
  v349 = GPU::getSlice(a2, v306, 2, 100 * v366 + 4, 0, 1);
  v51 = *(v350 + 4 * (*(v350 + *MEMORY[0x1E69744D8]) & 0xF) + *MEMORY[0x1E6974508]);
  Layout = mlir::mps::SampleGridOp::getLayout(&v408);
  v53 = v51 / 3uLL;
  v315 = v53;
  v54 = 2 * v53;
  if (Layout == 1)
  {
    v56 = 0;
    v351 = 1;
    v58 = 2 * v53;
    v57 = v51 / 3uLL;
    v59 = v57;
    v55 = a2;
  }

  else
  {
    v55 = a2;
    if (Layout == 2)
    {
      v351 = 0;
      v56 = 0;
      v57 = v51 / 3uLL;
      v58 = v57;
      v59 = 2 * v53;
    }

    else
    {
      v59 = 0;
      v351 = 1;
      v58 = 2 * v53;
      v57 = v51 / 3uLL;
      v56 = v57;
    }
  }

  __p = GPU::getSlice(v55, v350, 0, v50, v59, v57);
  v372 = GPU::getSlice(v55, v350, 0, v50, v56, v57);
  v384 = GPU::getSlice(v55, v350, 0, v50, v58, v57);
  v365 = GPU::getSlice(v55, v350, 0, v50, 0, v54);
  v291 = GPU::getSlice(v55, v381, 0, v50, v59, v315);
  v290 = GPU::getSlice(v55, v381, 0, v50, v56, v315);
  v289 = GPU::getSlice(v55, v381, 0, v50, v58, v315);
  v288 = GPU::getSlice(v55, v381, 0, v50, 0, v54);
  v60 = 10 * v366;
  if (v351)
  {
    v324 = GPU::getSlice(a2, v311, 1, 10 * v366, 0, v54);
  }

  else
  {
    v324 = 0;
  }

  v322 = GPU::getSlice(a2, v311, 1, v60, v56, v315);
  v323 = GPU::getSlice(a2, v311, 1, v60, v59, v315);
  v348 = GPU::getSlice(a2, v311, 1, v60, v58, v315);
  if (v351)
  {
    v301 = GPU::getSlice(a2, v310, 1, v60, 0, v54);
  }

  else
  {
    v301 = 0;
  }

  v300 = GPU::getSlice(a2, v310, 1, v60, v56, v315);
  v299 = GPU::getSlice(a2, v310, 1, v60, v59, v315);
  v303 = GPU::getSlice(a2, v310, 1, v60, v58, v315);
  v61 = GPU::getSlice(a2, v359, 2, 4, 0, 1);
  v62 = v59;
  v63 = v315;
  v371 = v61;
  v383 = GPU::getSlice(a2, v61, 0, v50, v62, v315);
  v387 = GPU::getSlice(a2, v61, 0, v50, v56, v315);
  v380 = GPU::getSlice(a2, v61, 0, v50, v58, v315);
  if (ResetAfter)
  {
    v364 = GPU::getSlice(a2, v61, 0, v50, 3 * v315, v315);

    v63 = v315;
  }

  else
  {
    v364 = 0;
  }

  v374 = GPU::getSlice(a2, v368, 2, v60, v320, 1);
  v358 = GPU::getSlice(a2, v357, 2, v60, v320, 1);
  v369 = GPU::getSlice(a2, v305, 2, v50, 0, 1);
  v391 = GPU::getSlice(a2, v368, 2, v60, v320, 1);
  v435 = xmmword_1E09ABAA8;
  v436 = 1;
  v64 = (v368 + *MEMORY[0x1E6974508]);
  v65 = v368 + *MEMORY[0x1E69744D8];
  v66 = *v64;
  v67 = v64[1];
  v68 = v64[2];
  v69 = v64[3];
  LOBYTE(v64) = *v65;
  v399[2] = v68;
  v399[3] = v69;
  v399[0] = v66;
  v399[1] = v67;
  *&v435 = *(v399 + (v64 & 0xF));
  v70 = v65[1] & 0xF;
  v398[2] = v68;
  v398[3] = v69;
  v398[0] = v66;
  v398[1] = v67;
  *(&v435 + 1) = *(v398 + v70);
  v71 = v65[2] & 0xF;
  v397[2] = v68;
  v397[3] = v69;
  v397[0] = v66;
  v397[1] = v67;
  v436 = *(v397 + v71);
  *&v435 = v63;
  v304 = [MEMORY[0x1E6974490] descriptorWithDataType:*(v368 + *MEMORY[0x1E69744C8]) dimensionCount:3 dimensionSizes:&v435];
  [v304 setPreferPackedRows:1];
  v436 = 1;
  v286 = [MEMORY[0x1E6974490] descriptorWithDataType:*(v368 + *MEMORY[0x1E69744C8]) dimensionCount:3 dimensionSizes:&v435];
  [v286 setPreferPackedRows:1];
  v72 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:v396 descriptor:v286];
  v73 = v72;
  if (v72 && v60 != -10 && (*(v72 + *MEMORY[0x1E69744E8]) & 1) != 0)
  {
    [v72 setReadCount:{objc_msgSend(v72, "readCount") + v60 + 10}];
  }

  v370 = v73;

  v74 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:v396 descriptor:v304];
  *&v74[*MEMORY[0x1E6974558]] = 50;
  v356 = v74;

  v75 = GPU::getSlice(a2, v356, 2, v60, v320, 1);
  v382 = v75;
  if ((v320 & 0x8000000000000000) == 0)
  {
    v76 = 0;
    v362 = v381 + 2;
    v340 = v368 + 2;
    v345 = (v374 + 2);
    v353 = (v371 + 2);
    v328 = v75 + 2;
    v317 = v357 + 2;
    v325 = v358 + 2;
    v342 = v366 - 2;
    v394 = v366 - 1;
    while (1)
    {
      v77 = v381;
      v78 = v77;
      v79 = *MEMORY[0x1E6974510];
      v80 = *MEMORY[0x1E69744D8];
      if (v381)
      {
        v81 = *(v77 + 4 * (v362[v80] & 0xF) + v79);
      }

      else
      {
        v81 = 0;
      }

      *(v350 + 4 * (*(v350 + v80 + 2) & 0xF) + v79) = v394 + v76 + v81;

      v82 = v368;
      v83 = v82;
      if (v374)
      {
        v84 = *MEMORY[0x1E6974510];
        v85 = *MEMORY[0x1E69744D8];
        v86 = v368;
        if (v368)
        {
          v86 = *(v82 + 4 * (v340[v85] & 0xF) + v84);
        }

        *&v374[4 * (*(v345 + v85) & 0xF) + v84] = v394 + v76 + v86;
      }

      if (!v76)
      {
        v87 = v83;
        if (v391)
        {
          v88 = *MEMORY[0x1E6974510];
          v89 = *MEMORY[0x1E69744D8];
          v90 = v368;
          if (v368)
          {
            v90 = *(v87 + 4 * (v340[v89] & 0xF) + v88);
          }

          *&v391[4 * (v391[v89 + 2] & 0xF) + v88] = v90 + v320;
        }
      }

      v91 = v78;
      v92 = v91;
      v93 = v381;
      if (__p)
      {
        v94 = *MEMORY[0x1E6974510];
        v95 = *MEMORY[0x1E69744D8];
        if (v381)
        {
          v93 = *(v91 + 4 * (v362[v95] & 0xF) + v94);
        }

        *&__p[4 * (__p[v95 + 2] & 0xF) + v94] = v394 + v76 + v93;
      }

      v96 = v92;
      v97 = v96;
      if (v372)
      {
        v98 = *MEMORY[0x1E6974510];
        v99 = *MEMORY[0x1E69744D8];
        v100 = v381;
        if (v381)
        {
          v100 = *(v96 + 4 * (v362[v99] & 0xF) + v98);
        }

        *&v372[4 * (v372[v99 + 2] & 0xF) + v98] = v394 + v76 + v100;
      }

      v101 = v97;
      v102 = v101;
      if (v384)
      {
        v103 = *MEMORY[0x1E6974510];
        v104 = *MEMORY[0x1E69744D8];
        v105 = v381;
        if (v381)
        {
          v105 = *(v101 + 4 * (v362[v104] & 0xF) + v103);
        }

        *&v384[4 * (v384[v104 + 2] & 0xF) + v103] = v394 + v76 + v105;
      }

      v106 = v102;
      if (v365)
      {
        v107 = *MEMORY[0x1E6974510];
        v108 = *MEMORY[0x1E69744D8];
        v109 = v381;
        if (v381)
        {
          v109 = *&v106[4 * (v362[v108] & 0xF) + v107];
        }

        *&v365[4 * (v365[v108 + 2] & 0xF) + v107] = v394 + v76 + v109;
      }

      v110 = v371;
      v111 = v110;
      if (v383)
      {
        v112 = *MEMORY[0x1E6974510];
        v113 = *MEMORY[0x1E69744D8];
        v114 = v371;
        if (v371)
        {
          v114 = *(v110 + 4 * (*(v353 + v113) & 0xF) + v112);
        }

        *&v383[4 * (v383[v113 + 2] & 0xF) + v112] = v394 + v76 + v114;
      }

      v115 = v111;
      v116 = v115;
      if (v387)
      {
        v117 = *MEMORY[0x1E6974510];
        v118 = *MEMORY[0x1E69744D8];
        v119 = v371;
        if (v371)
        {
          v119 = *(v115 + 4 * (*(v353 + v118) & 0xF) + v117);
        }

        *&v387[4 * (v387[v118 + 2] & 0xF) + v117] = v394 + v76 + v119;
      }

      v120 = v116;
      if (v380)
      {
        v121 = *MEMORY[0x1E6974510];
        v122 = *MEMORY[0x1E69744D8];
        v123 = v371;
        if (v371)
        {
          v123 = *(v120 + 4 * (*(v353 + v122) & 0xF) + v121);
        }

        *(v380 + 4 * (*(v380 + v122 + 2) & 0xF) + v121) = v394 + v76 + v123;
      }

      v124 = v356;
      if (v382)
      {
        *&v382[4 * (*(v328 + *MEMORY[0x1E69744D8]) & 0xF) + *MEMORY[0x1E6974510]] = v394 + v76 + *(v124 + 4 * (*(v356 + *MEMORY[0x1E69744D8] + 2) & 0xF) + *MEMORY[0x1E6974510]);
      }

      v125 = v359;
      if (v364)
      {
        v126 = *MEMORY[0x1E6974510];
        v127 = *MEMORY[0x1E69744D8];
        v128 = v359;
        if (v359)
        {
          v128 = *(v125 + 4 * (*(v359 + v127 + 2) & 0xF) + v126);
        }

        *&v364[4 * (v364[v127 + 2] & 0xF) + v126] = v394 + v76 + v128;
      }

      v129 = v358;
      if (v366 + v76 == 1)
      {
        v375 = v349;
        v130 = v129;
      }

      else
      {
        v130 = v357;
        if (v358)
        {
          v131 = *MEMORY[0x1E6974510];
          v132 = *MEMORY[0x1E69744D8];
          if (v357)
          {
            v133 = *(v130 + 4 * (v317[v132] & 0xF) + v131);
          }

          else
          {
            v133 = 0;
          }

          *(v129 + 4 * (v325[v132] & 0xF) + v131) = v342 + v76 + v133;
          v375 = v129;
        }

        else
        {
          v375 = 0;
        }
      }

      v431[0] = v391;
      v431[1] = v380;
      v431[2] = v383;
      v134 = [MEMORY[0x1E695DEC8] arrayWithObjects:v431 count:3];
      if (ResetAfter)
      {
        v430[0] = v391;
        v430[1] = v380;
        v430[2] = v383;
        v430[3] = v387;
        v430[4] = v364;
        v135 = [MEMORY[0x1E695DEC8] arrayWithObjects:v430 count:5];

        v134 = v135;
      }

      [v390 encodeToMPSCommandEncoder:v393 commandBuffer:v396 sourceArrays:v134 resultState:0 destinationArray:v384 kernelDAGObject:*v388];
      v136 = v134;
      v137 = v136;
      if (v375)
      {
        v138 = [v136 arrayByAddingObject:?];

        v139 = v138;
      }

      else
      {
        v139 = v136;
      }

      v140 = v139;
      [v390 encodeToMPSCommandEncoder:v393 commandBuffer:v396 sourceArrays:? resultState:? destinationArray:? kernelDAGObject:?];
      if (ResetAfter)
      {
        v428[0] = v384;
        v428[1] = v387;
        v141 = [MEMORY[0x1E695DEC8] arrayWithObjects:v428 count:2];
        [v390 encodeToMPSCommandEncoder:v393 commandBuffer:v396 sourceArrays:v141 resultState:0 destinationArray:v382 kernelDAGObject:*(v385 + 22)];
        v142 = v384;
        v143 = v380;
      }

      else
      {
        v144 = *(v385 + 25);
        v429[0] = v384;
        v429[1] = v348;
        v141 = [MEMORY[0x1E695DEC8] arrayWithObjects:v429 count:2];
        v145 = v144;
        v142 = v382;
        [v145 encodeToMPSCommandEncoder:v393 commandBuffer:v396 sourceArrays:v141 resultState:0 destinationArray:v382 kernelDAGObject:0];
        v143 = v375;
      }

      v146 = v143;
      v147 = v142;
      v360 = v146;
      if (v146)
      {
        v427[0] = v387;
        v148 = v147;
        v427[1] = v147;
        v427[2] = v146;
        v149 = [MEMORY[0x1E695DEC8] arrayWithObjects:v427 count:3];
        v150 = 3;
      }

      else
      {
        v426[0] = v387;
        v148 = v147;
        v426[1] = v147;
        v149 = [MEMORY[0x1E695DEC8] arrayWithObjects:v426 count:2];
        v150 = 4;
      }

      v151 = v149;

      [v390 encodeToMPSCommandEncoder:v393 commandBuffer:v396 sourceArrays:v151 resultState:0 destinationArray:v372 kernelDAGObject:v388[v150]];
      v152 = *(v385 + 25);
      if (v351)
      {
        v425[0] = v365;
        v425[1] = v324;
        v153 = [MEMORY[0x1E695DEC8] arrayWithObjects:v425 count:2];
        [v152 encodeToMPSCommandEncoder:v393 commandBuffer:v396 sourceArrays:v153 resultState:0 destinationArray:v370 kernelDAGObject:0];
      }

      else
      {
        v424[0] = __p;
        v424[1] = v323;
        v154 = [MEMORY[0x1E695DEC8] arrayWithObjects:v424 count:2];
        [v152 encodeToMPSCommandEncoder:v393 commandBuffer:v396 sourceArrays:v154 resultState:0 destinationArray:v370 kernelDAGObject:0];

        v155 = *(v385 + 25);
        v423[0] = v372;
        v423[1] = v322;
        v423[2] = v369;
        v153 = [MEMORY[0x1E695DEC8] arrayWithObjects:v423 count:3];
        [v155 encodeToMPSCommandEncoder:v393 commandBuffer:v396 sourceArrays:v153 resultState:0 destinationArray:v370 kernelDAGObject:*(v385 + 24)];
      }

      if (v366 + v76 == 1)
      {
        v160 = 5;
        if (!ResetAfter)
        {
          goto LABEL_163;
        }
      }

      else
      {
        v156 = v83;
        if (v374)
        {
          v157 = *MEMORY[0x1E6974510];
          v158 = *MEMORY[0x1E69744D8];
          v159 = v368;
          if (v368)
          {
            v159 = *(v156 + 4 * (v340[v158] & 0xF) + v157);
          }

          *&v374[4 * (*(v345 + v158) & 0xF) + v157] = v342 + v76 + v159;
        }

        v160 = 6;
        if (!ResetAfter)
        {
LABEL_163:
          v421[0] = v370;
          v421[1] = v382;
          v421[2] = v391;
          v421[3] = v383;
          v421[4] = v387;
          v164 = [MEMORY[0x1E695DEC8] arrayWithObjects:v421 count:5];
          v165 = v164;
          if (v366 + v76 != 1)
          {
            v166 = [v164 arrayByAddingObject:v374];

            v165 = v166;
          }

          [v390 encodeToMPSCommandEncoder:v393 commandBuffer:v396 sourceArrays:v165 resultState:0 destinationArray:v369 kernelDAGObject:v388[v160]];

          v167 = v349;
          if (v366 + v76 != 1)
          {
            v168 = v357;
            if (v358)
            {
              v169 = *MEMORY[0x1E6974510];
              v170 = *MEMORY[0x1E69744D8];
              v171 = v357;
              if (v357)
              {
                v171 = *(v168 + 4 * (v317[v170] & 0xF) + v169);
              }

              *(v129 + 4 * (v325[v170] & 0xF) + v169) = v342 + v76 + v171;
            }

            v167 = v129;
          }

          v172 = v167;
          v173 = v172;
          if (v172)
          {
            v420[0] = v172;
            v420[1] = v387;
            v174 = [MEMORY[0x1E695DEC8] arrayWithObjects:v420 count:2];
            [v390 encodeToMPSCommandEncoder:v393 commandBuffer:v396 sourceArrays:v174 resultState:0 destinationArray:v382 kernelDAGObject:*(v385 + 22)];

            v162 = v173;
          }

          else
          {
            [v390 encodeToMPSCommandEncoder:v393 commandBuffer:v396 sourceArrays:MEMORY[0x1E695E0F0] resultState:0 destinationArray:v382 kernelDAGObject:*(v385 + 23)];
            v162 = 0;
          }

          goto LABEL_174;
        }
      }

      v422[0] = v370;
      v422[1] = v382;
      v422[2] = v391;
      v422[3] = v383;
      v422[4] = v348;
      v161 = [MEMORY[0x1E695DEC8] arrayWithObjects:v422 count:5];
      v162 = v161;
      if (v366 + v76 != 1)
      {
        v163 = [v161 arrayByAddingObject:v374];

        v162 = v163;
      }

      [*(v385 + 25) encodeToMPSCommandEncoder:v393 commandBuffer:v396 sourceArrays:v162 resultState:0 destinationArray:v369 kernelDAGObject:v388[v160]];
LABEL_174:

      if (!v76)
      {
        v175 = v391;
        v176 = v175;
        if (v175 && v175[*MEMORY[0x1E69744E8]] == 1)
        {
          [v175 setReadCount:0];
        }
      }

      v177 = v369;

      --v76;
      v391 = v177;
      if (v366 + v76 <= 0)
      {
        goto LABEL_182;
      }
    }
  }

  v177 = v391;
LABEL_182:
  v433 = 1;
  v434 = 1;
  v432 = v315;
  v178 = v366;
  if (!v349)
  {
    v178 = v366 - 1;
  }

  v433 = *(v359 + 4 * (*(v359 + *MEMORY[0x1E69744D8] + 1) & 0xF) + *MEMORY[0x1E6974508]);
  v434 = v178;
  v354 = v291;
  v179 = v290;
  v180 = v289;
  v346 = v288;
  v389 = GPU::getSlice(a2, v357, 2, 10, 0, v320);
  if (v349)
  {
    v181 = [MEMORY[0x1E6974490] descriptorWithDataType:*(v359 + *MEMORY[0x1E69744C8]) dimensionCount:3 dimensionSizes:&v432];
    [v181 setPreferPackedRows:1];
    v361 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:v396 descriptor:v181];

    [(GPU::EncodeDescriptor *)v361 setReadCount:3];
    v182 = GPU::getSlice(a2, v361, 2, 0, 0, 1);
    v419 = v349;
    v183 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v419 count:1];
    [v390 encodeToMPSCommandEncoder:v393 commandBuffer:v396 sourceArrays:v183 resultState:0 destinationArray:v182 kernelDAGObject:0];

    v184 = GPU::getSlice(a2, v361, 2, 0, 1, v320);
    v418 = v389;
    v185 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v418 count:1];
    [v390 encodeToMPSCommandEncoder:v393 commandBuffer:v396 sourceArrays:v185 resultState:0 destinationArray:v184 kernelDAGObject:0];

    v186 = v182;
    v187 = v186;
    if (v186 && *(v186 + *MEMORY[0x1E69744E8]) == 1)
    {
      [v186 setReadCount:0];
    }

    v188 = v184;
    v189 = v188;
    if (v188 && *(v188 + *MEMORY[0x1E69744E8]) == 1)
    {
      [v188 setReadCount:0];
    }

    v343 = v179;
    v344 = v354;
    v339 = v346;
    v341 = v180;
  }

  else
  {
    v344 = GPU::getSlice(a2, v354, 2, 0, 1, v320);

    v343 = GPU::getSlice(a2, v179, 2, 0, 1, v320);

    v341 = GPU::getSlice(a2, v180, 2, 0, 1, v320);

    v339 = GPU::getSlice(a2, v346, 2, 0, 1, v320);
    v181 = v346;
    v361 = v389;
  }

  v403[0] = MEMORY[0x1E69E9820];
  v403[1] = 3221225472;
  v403[2] = ___ZN3GPU20GRUGradientOpHandler15encodeNDArrayOpEPNS_16EncodeDescriptorEP7NSArray_block_invoke;
  v403[3] = &unk_1E86D4DA8;
  v337 = v390;
  v404 = v337;
  v190 = v393;
  v405 = v190;
  v191 = v396;
  v406 = v191;
  v395 = MEMORY[0x1E12E6580](v403);
  v400[0] = MEMORY[0x1E69E9820];
  v400[1] = 3221225472;
  v400[2] = ___ZN3GPU20GRUGradientOpHandler15encodeNDArrayOpEPNS_16EncodeDescriptorEP7NSArray_block_invoke_2;
  v400[3] = &unk_1E86D4DD0;
  v376 = v191;
  v401 = v376;
  v367 = v190;
  v402 = v367;
  v363 = MEMORY[0x1E12E6580](v400);
  v417[0] = v432;
  v417[1] = v434 * v433;
  v417[2] = 1;
  v192 = (v395)[2](v395, v361, 3, v417);
  v193 = v192;
  v392 = v192;
  if (v192 && *(v192 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v192 setReadCount:{objc_msgSend(v192, "readCount") + 10}];
  }

  v416[0] = v432;
  v416[1] = v434 * v433;
  v416[2] = 1;
  v415[0] = 2 * v432;
  v415[1] = v434 * v433;
  v415[2] = 1;
  v194 = v395[2];
  if (v351)
  {
    v195 = v194(v395, v346, 3, v415);
    v196 = (v363)[2](v363, v195, 0, 1);
    v197 = *(v385 + 25);
    v414[0] = v196;
    v414[1] = v392;
    v198 = [MEMORY[0x1E695DEC8] arrayWithObjects:v414 count:2];
    [v197 encodeToMPSCommandEncoder:v367 commandBuffer:v376 sourceArrays:v198 resultState:0 destinationArray:v301 kernelDAGObject:0];
  }

  else
  {
    v195 = v194(v395, v179, 3, v416);
    v196 = (v363)[2](v363, v195, 0, 1);
    v199 = *(v385 + 25);
    v413[0] = v196;
    v413[1] = v392;
    v200 = [MEMORY[0x1E695DEC8] arrayWithObjects:v413 count:2];
    [v199 encodeToMPSCommandEncoder:v367 commandBuffer:v376 sourceArrays:v200 resultState:0 destinationArray:v300 kernelDAGObject:0];

    v198 = (v395)[2](v395, v354, 3, v416);
    v201 = (v363)[2](v363, v198, 0, 1);
    v202 = *(v385 + 25);
    v412[0] = v201;
    v412[1] = v392;
    v203 = [MEMORY[0x1E695DEC8] arrayWithObjects:v412 count:2];
    [v202 encodeToMPSCommandEncoder:v367 commandBuffer:v376 sourceArrays:v203 resultState:0 destinationArray:v299 kernelDAGObject:0];
  }

  v204 = (v395)[2](v395, v356, 3, v416);
  v205 = v204;
  v352 = v204;
  if (v204 && *(v204 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v204 setReadCount:{objc_msgSend(v204, "readCount") + 1}];
  }

  if (ResetAfter)
  {
    v206 = (v363)[2](v363, v352, 0, 1);
    v207 = *(v385 + 25);
    v411[0] = v206;
    v411[1] = v392;
    v208 = [MEMORY[0x1E695DEC8] arrayWithObjects:v411 count:2];
    [v207 encodeToMPSCommandEncoder:v367 commandBuffer:v376 sourceArrays:v208 resultState:0 destinationArray:v303 kernelDAGObject:0];

    if (!v302)
    {
      goto LABEL_207;
    }

    v209 = *(v385 + 26);
    v410 = v352;
    v210 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v410 count:1];
    [v209 encodeToMPSCommandEncoder:v367 commandBuffer:v376 sourceArrays:v210 resultState:0 destinationArray:v302 kernelDAGObject:0];
  }

  else
  {
    v206 = (v395)[2](v395, v180, 3, v416);
    v210 = (v363)[2](v363, v206, 0, 1);
    v211 = *(v385 + 25);
    v409[0] = v210;
    v409[1] = v352;
    v212 = [MEMORY[0x1E695DEC8] arrayWithObjects:v409 count:2];
    [v211 encodeToMPSCommandEncoder:v367 commandBuffer:v376 sourceArrays:v212 resultState:0 destinationArray:v303 kernelDAGObject:0];
  }

LABEL_207:
  v213 = v350;
  v214 = v213;
  if (*(v213 + *MEMORY[0x1E69744E8]) == 1)
  {
    [(GPU::EncodeDescriptor *)v213 setReadCount:0];
  }

  v378 = v214;

  v215 = v311;
  v216 = v215;
  if (v215 && *(v215 + *MEMORY[0x1E69744E8]) == 1)
  {
    [(GPU::EncodeDescriptor *)v215 setReadCount:0];
  }

  v335 = v216;

  v217 = __p;
  v218 = v217;
  if (v217 && v217[*MEMORY[0x1E69744E8]] == 1)
  {
    [v217 setReadCount:0];
  }

  v386 = v218;

  v219 = v372;
  v220 = v219;
  if (v219 && v219[*MEMORY[0x1E69744E8]] == 1)
  {
    [v219 setReadCount:0];
  }

  v336 = v220;

  v221 = v384;
  v222 = v221;
  if (v221 && v221[*MEMORY[0x1E69744E8]] == 1)
  {
    [v221 setReadCount:0];
  }

  v334 = v222;

  v223 = v365;
  v224 = v223;
  if (v223 && v223[*MEMORY[0x1E69744E8]] == 1)
  {
    [v223 setReadCount:0];
  }

  v333 = v224;

  v225 = v354;
  v226 = v225;
  if (v225 && *(v225 + *MEMORY[0x1E69744E8]) == 1)
  {
    [(GPU::EncodeDescriptor *)v225 setReadCount:0];
  }

  v355 = v226;

  v227 = v179;
  v228 = v227;
  if (v227 && *(v227 + *MEMORY[0x1E69744E8]) == 1)
  {
    [(GPU::EncodeDescriptor *)v227 setReadCount:0];
  }

  v332 = v228;

  v229 = v180;
  v230 = v229;
  if (v229 && *(v229 + *MEMORY[0x1E69744E8]) == 1)
  {
    [(GPU::EncodeDescriptor *)v229 setReadCount:0];
  }

  v331 = v230;

  v231 = v346;
  v232 = v231;
  if (v231 && *(v231 + *MEMORY[0x1E69744E8]) == 1)
  {
    [(GPU::EncodeDescriptor *)v231 setReadCount:0];
  }

  v347 = v232;

  v233 = v324;
  v234 = v233;
  if (v233 && *(v233 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v233 setReadCount:0];
  }

  v330 = v234;

  v235 = v322;
  v236 = v235;
  if (v235 && *(v235 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v235 setReadCount:0];
  }

  v329 = v236;

  v237 = v323;
  v238 = v237;
  if (v237 && *(v237 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v237 setReadCount:0];
  }

  v327 = v238;

  v239 = v348;
  v240 = v239;
  if (v239 && *(v239 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v239 setReadCount:0];
  }

  v326 = v240;

  v241 = v301;
  v242 = v241;
  if (v241 && *(v241 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v241 setReadCount:0];
  }

  v321 = v242;

  v243 = v300;
  v244 = v243;
  if (v243 && *(v243 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v243 setReadCount:0];
  }

  v319 = v244;

  v245 = v299;
  v246 = v245;
  if (v245 && *(v245 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v245 setReadCount:0];
  }

  v318 = v246;

  v247 = v303;
  v248 = v247;
  if (v247 && *(v247 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v247 setReadCount:0];
  }

  v316 = v248;

  v249 = v371;
  v250 = v249;
  if (v249 && *(v249 + *MEMORY[0x1E69744E8]) == 1)
  {
    [(GPU::EncodeDescriptor *)v249 setReadCount:0];
  }

  v287 = v250;

  v251 = v383;
  v252 = v251;
  if (v251 && v251[*MEMORY[0x1E69744E8]] == 1)
  {
    [v251 setReadCount:0];
  }

  v282 = v252;

  v253 = v387;
  v254 = v253;
  if (v253 && v253[*MEMORY[0x1E69744E8]] == 1)
  {
    [v253 setReadCount:0];
  }

  v281 = v254;

  v255 = v380;
  v256 = v255;
  if (v255 && *(v255 + *MEMORY[0x1E69744E8]) == 1)
  {
    [(GPU::EncodeDescriptor *)v255 setReadCount:0];
  }

  v279 = v256;

  v257 = v374;
  v258 = v257;
  if (v257 && v257[*MEMORY[0x1E69744E8]] == 1)
  {
    [v257 setReadCount:{0, v279}];
  }

  v283 = v258;

  v259 = v358;
  v260 = v259;
  if (v259 && v259[*MEMORY[0x1E69744E8]] == 1)
  {
    [v259 setReadCount:0];
  }

  v280 = v260;

  v261 = v364;
  v262 = v261;
  if (v261 && v261[*MEMORY[0x1E69744E8]] == 1)
  {
    [v261 setReadCount:0];
  }

  v263 = v369;
  v264 = v263;
  if (v263 && *(v263 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v263 setReadCount:0];
  }

  v265 = v356;
  v266 = v265;
  if (v265 && *(v265 + *MEMORY[0x1E69744E8]) == 1)
  {
    [(GPU::EncodeDescriptor *)v265 setReadCount:0];
  }

  v267 = v370;
  v268 = v267;
  if (v370 && *(v267 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v267 setReadCount:0];
  }

  v269 = v382;
  v270 = v269;
  if (v269 && v269[*MEMORY[0x1E69744E8]] == 1)
  {
    [v269 setReadCount:0];
  }

  v271 = v392;
  v272 = v271;
  if (v392 && *(v271 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v271 setReadCount:0];
  }

  v273 = v389;
  v274 = v273;
  if (v273 && *(v273 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v273 setReadCount:0];
  }

  v275 = v349;
  v276 = v275;
  if (v349 && *(v275 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v275 setReadCount:0];
  }

  v277 = v407;
  v407 = 0;
  if (v277)
  {
    v278 = *v277;
    if (*v277)
    {
      v277[1] = v278;
      operator delete(v278);
    }

    MEMORY[0x1E12E5B90](v277, 0x10C402FEFCB83);
  }
}

void sub_1E0884F28(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, void *a38, void *a39, void *a40, uint64_t a41, uint64_t a42, void *a43, void *a44, void *a45)
{
  STACK[0x2C0] = a1;

  std::unique_ptr<std::vector<long> const,std::default_delete<std::vector<long> const>>::~unique_ptr[abi:ne200100](&STACK[0x430]);
  _Unwind_Resume(STACK[0x2C0]);
}

id ___ZN3GPU20GRUGradientOpHandler15encodeNDArrayOpEPNS_16EncodeDescriptorEP7NSArray_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = [*(a1 + 32) reshapeWithCommandEncoder:*(a1 + 40) commandBuffer:*(a1 + 48) sourceArray:v7 dimensionCount:a3 dimensionSizes:a4 destinationArray:0];
  if (!v8)
  {
    v9 = [MEMORY[0x1E6974490] descriptorWithDataType:*&v7[*MEMORY[0x1E69744C8]] dimensionCount:a3 dimensionSizes:a4];
    v8 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:*(a1 + 48) descriptor:v9];
    v10 = [*(a1 + 32) reshapeWithCommandEncoder:*(a1 + 40) commandBuffer:*(a1 + 48) sourceArray:v7 dimensionCount:a3 dimensionSizes:a4 destinationArray:v8];
  }

  return v8;
}

id ___ZN3GPU20GRUGradientOpHandler15encodeNDArrayOpEPNS_16EncodeDescriptorEP7NSArray_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = [v7 descriptor];
  [v8 transposeDimension:a3 withDimension:a4];
  v9 = [v7 safeArrayViewWithCommandBuffer:*(a1 + 32) computeEncoder:*(a1 + 40) descriptor:v8 aliasing:1];

  return v9;
}

void GPU::SingleGateRNNOpHandler::~SingleGateRNNOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::SingleGateRNNGradientOpHandler::~SingleGateRNNGradientOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::LSTMOpHandler::~LSTMOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::LSTMGradientOpHandler::~LSTMGradientOpHandler(id *this)
{
  GPU::LSTMGradientOpHandler::~LSTMGradientOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

void GPU::GRUOpHandler::~GRUOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::GRUGradientOpHandler::~GRUGradientOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void sub_1E088A2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, void *a21, void *a22)
{
  _Block_object_dispose((v22 - 120), 8);

  _Unwind_Resume(a1);
}

void sub_1E088B284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  _Block_object_dispose(&a22, 8);
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__4(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1E088BA58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void GPU::GetCoordOpHandler::postInitializeHook(GPU::GetCoordOpHandler *this)
{
  if (*(this + 40) == 1 && !*(this + 4))
  {
    v2 = *(this + 3);
    if (*(v2 + 36))
    {
      v3 = v2 - 16;
    }

    else
    {
      v3 = 0;
    }

    v4 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v4)
    {
      v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
      v17 = v4;
      v18 = v5;
      mlir::CallableOpInterface::getArgAttrsAttr(&v17);
      v7 = 8 * v6;
      if (!(8 * v6))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v17 = 0;
      v18 = 0;
      mlir::CallableOpInterface::getArgAttrsAttr(&v17);
      v7 = 8 * v8;
      if (!(8 * v8))
      {
LABEL_8:
        __p = 0;
        v15 = 0;
        v16 = 0;
        if (*(v2 + 36))
        {
          v10 = v2 - 16;
        }

        else
        {
          v10 = 0;
        }

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
        MPSDataType = getMPSDataType((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
        v13 = GPU::GetCoordOpHandler::_getKernelDAGObject(this, CoordAxis, &__p, MPSDataType);
        if (__p)
        {
          v15 = __p;
          operator delete(__p);
        }

        return;
      }
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }
}

void sub_1E088BEC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (!v11)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v11);
  _Unwind_Resume(exception_object);
}

unint64_t GPU::anonymous namespace::getCoordAxis(void *a1, uint64_t a2, uint64_t a3)
{
  __p = 0;
  v15 = 0;
  p_p = &__p;
  v17 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v17);
  if (DefiningOp)
  {
    if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&p_p, DefiningOp))
    {
      SingleInt = mlir::getSingleIntValue<long long>(__p, v15);
      v8 = SingleInt & 0xFFFFFFFFFFFFFF00;
      v9 = SingleInt;
      if (!a1)
      {
        return -1;
      }
    }

    else
    {
      v8 = 0;
      LOBYTE(DefiningOp) = 0;
      v9 = 0;
      if (!a1)
      {
        return -1;
      }
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    if (!a1)
    {
      return -1;
    }
  }

  if (DefiningOp)
  {
    return v9 | v8;
  }

  v11 = a1[1] & 0xFFFFFFFFFFFFFFF8;
  if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v11 = 0;
  }

  v17 = v11;
  if (!v11 || (mlir::ArrayAttr::getValue(&v17), v12 < 1) || *mlir::ArrayAttr::getValue(&v17))
  {
    GPURegionRuntime::waitAndReadIntTensorData(a2, a3, a1, &__p);
    v13 = *__p;
    v15 = __p;
    operator delete(__p);
    return v13;
  }

  return -1;
}