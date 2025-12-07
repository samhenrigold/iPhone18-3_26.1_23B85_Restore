void sub_10014F988(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002B7A30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10014F9DC(uint64_t a1)
{
  std::recursive_mutex::~recursive_mutex((a1 + 64));
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = &v2[24 * v3 - 24];
    do
    {
      v5 = sub_10014E3C4(v5) - 3;
      v4 += 24;
    }

    while (v4);
    v2 = *(a1 + 24);
  }

  if (v2 != (a1 + 40))
  {

    free(v2);
  }
}

uint64_t sub_10014FA64(uint64_t result, double a2)
{
  *result = a2;
  *(result + 8) = -4096;
  *(result + 48) = -4096;
  *(result + 88) = -4096;
  *(result + 128) = -4096;
  return result;
}

unint64_t mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_1002C50A0, memory_order_acquire) & 1) == 0)
  {
    v7 = a2;
    v6 = a1;
    sub_100282170();
    a1 = v6;
    a2 = v7;
  }

  *&v11 = a1;
  *(&v11 + 1) = a2;
  llvm::sys::RWMutexImpl::lock_shared(&qword_1002C50A8);
  v2 = sub_10007EDD8(&qword_1002C5118, &v11);
  if (!v2 || v2 == qword_1002C5118 + 24 * dword_1002C5128)
  {
    llvm::sys::RWMutexImpl::unlock_shared(&qword_1002C50A8);
    llvm::sys::RWMutexImpl::lock(&qword_1002C50A8);
    v8 = &mlir::detail::TypeIDResolver<void,void>::id;
    sub_100138F80(&qword_1002C5118, &v11, &v8, &v9);
    if (v10)
    {
      qword_1002C5108 += 8;
      if (qword_1002C50B8 && (v5 = (qword_1002C50B8 + 7) & 0xFFFFFFFFFFFFFFF8, v5 + 8 <= qword_1002C50C0))
      {
        qword_1002C50B8 = v5 + 8;
      }

      else
      {
        v5 = sub_10003A984(&qword_1002C50B8, 8, 8, 3);
      }

      *(v9 + 16) = v5;
    }

    else
    {
      v5 = *(v9 + 16);
    }

    llvm::sys::RWMutexImpl::unlock(&qword_1002C50A8);
    return v5;
  }

  else
  {
    v3 = *(v2 + 16);
    llvm::sys::RWMutexImpl::unlock_shared(&qword_1002C50A8);
    return v3;
  }
}

void sub_10014FBE4(uint64_t a1)
{
  llvm::deallocate_buffer(*(a1 + 112), (24 * *(a1 + 128)), 8uLL);
  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = v3 + 16 * v2;
    do
    {
      v5 = *v3;
      v6 = *(v3 + 8);
      v3 += 16;
      llvm::deallocate_buffer(v5, v6, 8uLL);
    }

    while (v3 != v4);
  }

  *(a1 + 88) = 0;
  v7 = *(a1 + 40);
  if (v7)
  {
    *(a1 + 96) = 0;
    v8 = *(a1 + 32);
    v9 = *v8 + 4096;
    *(a1 + 16) = *v8;
    *(a1 + 24) = v9;
    if (v7 != 1)
    {
      v10 = v8 + 1;
      v11 = 8 * v7 - 8;
      v12 = (v8 + 1);
      do
      {
        v13 = ((v10 - *(a1 + 32)) >> 10) & 0x1FFFFFF;
        if (v13 >= 0x1E)
        {
          LOBYTE(v13) = 30;
        }

        v14 = *v12++;
        llvm::deallocate_buffer(v14, (4096 << v13), 8uLL);
        ++v10;
        v11 -= 8;
      }

      while (v11);
    }

    *(a1 + 40) = 1;
  }

  sub_10003EA00(a1 + 16);

  llvm::sys::RWMutexImpl::~RWMutexImpl(a1);
}

void mlir::ODIE::Compiler::CoreML::CoreMLDialect::CoreMLDialect(mlir::ODIE::Compiler::CoreML::CoreMLDialect *this, mlir::MLIRContext *a2)
{
  v2 = mlir::Dialect::Dialect(this, "coreml", 6, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CoreMLDialect,void>::id);
  *v2 = off_1002B7A68;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  mlir::ODIE::Compiler::CoreML::CoreMLDialect::initialize(v2);
}

void mlir::ODIE::Compiler::CoreML::CoreMLDialect::~CoreMLDialect(mlir::ODIE::Compiler::CoreML::CoreMLDialect *this)
{
  *this = off_1002B7A68;
  v2 = this + 96;
  v3 = *(this + 15);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = this;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = this;
  }

  mlir::Dialect::~Dialect(v4);
}

{
  *this = off_1002B7A68;
  v2 = this + 96;
  v3 = *(this + 15);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  mlir::Dialect::~Dialect(this);

  operator delete();
}

uint64_t mlir::ODIE::Compiler::CoreML::CoreMLDialectVersion::get@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(*a1 + 24))(a1, "coreml", 6);
  if (v4)
  {
    v5 = *(result + 8);
    *a2 = off_1002B7AE8;
    a2[1] = v5;
  }

  else
  {
    *a2 = off_1002B7AE8;
    a2[1] = 0;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::flattenSymbolRef(uint64_t a1, uint64_t a2, BOOL a3)
{
  v35 = a1;
  if (!a1)
  {
    sub_100282384(0, a2, a3);
  }

  v33[0] = 0;
  v33[1] = 0;
  v34 = 0;
  v26 = 0;
  v30 = 0;
  v31 = 1;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v25 = &off_1002B45C0;
  v32 = v33;
  llvm::raw_ostream::SetBufferAndMode(&v25, 0, 0, 0);
  v23[0] = mlir::SymbolRefAttr::getRootReference(&v35);
  Value = mlir::StringAttr::getValue(v23);
  v5 = v3;
  if (v3 <= v28 - v29)
  {
    if (v3)
    {
      memcpy(v29, Value, v3);
      v29 += v5;
    }
  }

  else
  {
    llvm::raw_ostream::write(&v25, Value, v3);
  }

  mlir::SymbolRefAttr::getNestedReferences(&v35);
  if (v6)
  {
    if (v28 == v29)
    {
      llvm::raw_ostream::write(&v25, "_", 1uLL);
      NestedReferences = mlir::SymbolRefAttr::getNestedReferences(&v35);
      if (!v8)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *v29++ = 95;
      NestedReferences = mlir::SymbolRefAttr::getNestedReferences(&v35);
      if (!v8)
      {
        goto LABEL_16;
      }
    }

    v9 = NestedReferences;
    v10 = v8;
    v36 = *NestedReferences;
    v23[0] = mlir::SymbolRefAttr::getRootReference(&v36);
    v12 = mlir::StringAttr::getValue(v23);
    v13 = v11;
    if (v11 <= v28 - v29)
    {
      if (v11)
      {
        memcpy(v29, v12, v11);
        v29 += v13;
      }
    }

    else
    {
      llvm::raw_ostream::write(&v25, v12, v11);
    }

    if (v10 != 1)
    {
      v18 = v9 + 1;
      v19 = 8 * v10 - 8;
      do
      {
        if (v28 == v29)
        {
          llvm::raw_ostream::write(&v25, "_", 1uLL);
        }

        else
        {
          *v29++ = 95;
        }

        v36 = *v18;
        v23[0] = mlir::SymbolRefAttr::getRootReference(&v36);
        v21 = mlir::StringAttr::getValue(v23);
        v22 = v20;
        if (v20 > v28 - v29)
        {
          llvm::raw_ostream::write(&v25, v21, v20);
        }

        else if (v20)
        {
          memcpy(v29, v21, v20);
          v29 += v22;
        }

        ++v18;
        v19 -= 8;
      }

      while (v19);
    }
  }

LABEL_16:
  Context = mlir::Attribute::getContext(&v35);
  v24 = 260;
  v23[0] = v33;
  v16 = mlir::StringAttr::get(Context, v23, v15);
  llvm::raw_ostream::~raw_ostream(&v25);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
  }

  return v16;
}

char *mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  result = sub_100062D0C(a3);
  v23[0] = result;
  v23[1] = v10;
  if (result)
  {
    if (mlir::TypedAttr::getType(v23) == a4)
    {
      if (a3)
      {
        v11 = *a3;
        {
          v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v13 = *(v11 + 8);
          v14 = *(v11 + 16);
          if (!v14)
          {
            goto LABEL_18;
          }
        }

        else
        {
          sub_10028243C();
          v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v13 = *(v11 + 8);
          v14 = *(v11 + 16);
          if (!v14)
          {
            goto LABEL_18;
          }
        }

        v15 = v13;
        v16 = v14;
        do
        {
          v17 = v16 >> 1;
          v18 = &v15[2 * (v16 >> 1)];
          v20 = *v18;
          v19 = v18 + 2;
          v16 += ~(v16 >> 1);
          if (v20 < v12)
          {
            v15 = v19;
          }

          else
          {
            v16 = v17;
          }
        }

        while (v16);
        if (v15 != &v13[2 * v14] && *v15 == v12)
        {
          v21 = v15[1];
          goto LABEL_19;
        }
      }

LABEL_18:
      v21 = 0;
LABEL_19:
      v22[0] = a3;
      v22[1] = v21;
      return sub_100150A2C(a2, a5, &v24, v22);
    }

    return 0;
  }

  return result;
}

char *sub_100150A2C(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    sub_100282480(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::ODIE::Compiler::CoreML::ConstantOp::build(a1, v17, *a3, *a4, a4[1]);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

void *mlir::ODIE::Compiler::CoreML::ParamDeclAttr::print(mlir::ODIE::Compiler::CoreML::ParamDeclAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v15 = *(*this + 8);
  Value = mlir::StringAttr::getValue(&v15);
  (*(*a2 + 72))(a2, Value, v7);
  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] - v9 > 1uLL)
  {
    *v9 = 8250;
    v8[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, ": ", 2uLL);
  }

  (*(*a2 + 32))(a2, *(*this + 16));
  v10 = *(*this + 24);
  if (v10)
  {
    v11 = (*(*a2 + 16))(a2);
    v12 = v11[4];
    if ((v11[3] - v12) > 2)
    {
      *(v12 + 2) = 32;
      *v12 = 15648;
      v11[4] += 3;
    }

    else
    {
      llvm::raw_ostream::write(v11, " = ", 3uLL);
    }

    (*(*a2 + 48))(a2, v10);
  }

  result = (*(*a2 + 16))(a2);
  v14 = result[4];
  if (result[3] == v14)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v14 = 62;
  ++result[4];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamDeclAttr::parse(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v22 = 0;
  v20 = 0;
  if ((*(*a1 + 152))(a1) & 1) == 0 || !sub_10015109C(a1) || ((*(*a1 + 576))(a1, &v20) & 1) == 0 || (v18 = 0, v19 = 0, ((*(*a1 + 144))(a1)) && !sub_100151354(a1, &v18, v20) || ((*(*a1 + 168))(a1) & 1) == 0)
  {
    result = 0;
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

  v2 = v18;
  v3 = (*(*a1 + 32))(a1);
  if (!v2)
  {
    v17 = 260;
    v16[0] = __p;
    StringAttr = mlir::Builder::getStringAttr(v3, v16, v4);
    v23 = v20;
    Context = mlir::Type::getContext(&v23);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v24[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id;
    v24[1] = Context;
    v30[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20ParamDeclAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_13ParamDeclAttrEJRNS1_10StringAttrERNS1_4TypeENS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS7_;
    v30[1] = v24;
    v27 = StringAttr;
    v28 = v23;
    v29 = 0;
    v10 = (v28 >> 4) ^ (v28 >> 9);
    v11 = 0xB492B66FBE98F273 * ((StringAttr >> 4) ^ (StringAttr >> 9));
    v12 = __ROR8__(v11 - v10, 43) - 0x3C5A37A36834CED9 * v10 - 0x4AA9CCC802B940A1;
    v13 = v11 + __ROR8__(v10 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA731BLL;
    v14 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v12 ^ v13)) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ v13)));
    v25[0] = &v27;
    v25[1] = v30;
    v26 = &v27;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id, -348639895 * ((v14 >> 47) ^ v14), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type &,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type &,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v26, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type &,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type &,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v25);
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      return result;
    }

LABEL_13:
    v15 = result;
    operator delete(__p[0]);
    return v15;
  }

  v17 = 260;
  v16[0] = __p;
  v5 = mlir::Builder::getStringAttr(v3, v16, v4);
  result = mlir::ODIE::Compiler::CoreML::ParamDeclAttr::get(v5, v18, v19);
  if (SHIBYTE(v22) < 0)
  {
    goto LABEL_13;
  }

  return result;
}

BOOL sub_10015109C(uint64_t a1)
{
  if ((*(*a1 + 432))(a1))
  {
    return 1;
  }

  v3 = (*(*a1 + 40))(a1);
  v18 = 257;
  (*(*a1 + 24))(v22, a1, v3, v17);
  if (v22[0])
  {
    v19 = 3;
    v20 = "expected valid keyword or string";
    v21 = 32;
    v4 = &v19;
    v5 = v23;
    if (v24 >= v25)
    {
      if (v23 <= &v19 && v23 + 24 * v24 > &v19)
      {
        v16 = &v19 - v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v5 = v23;
        v4 = (v23 + v16);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v4 = &v19;
        v5 = v23;
      }
    }

    v6 = &v5[24 * v24];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v24;
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v30;
      v10 = __p;
      if (v30 != __p)
      {
        do
        {
          v9 = sub_100052FFC(v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v30 = v8;
      operator delete(v10);
    }

    v11 = v27;
    if (v27)
    {
      v12 = v28;
      v13 = v27;
      if (v28 != v27)
      {
        do
        {
          v14 = *--v12;
          *v12 = 0;
          if (v14)
          {
            operator delete[]();
          }
        }

        while (v12 != v11);
        v13 = v27;
      }

      v28 = v11;
      operator delete(v13);
    }

    if (v23 != v26)
    {
      free(v23);
    }
  }

  return v2;
}

BOOL sub_100151354(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  if (((*(*a1 + 440))(a1, &v20, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = sub_100062D0C(v20);
  *a2 = v7;
  a2[1] = v8;
  if (v7)
  {
    return 1;
  }

  v18 = "invalid kind of attribute specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v6, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v10 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v10;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v10;
    }

    v11 = __p;
    if (__p)
    {
      v12 = v27;
      v13 = __p;
      if (v27 != __p)
      {
        do
        {
          v12 = sub_100052FFC(v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v27 = v11;
      operator delete(v13);
      result = v10;
    }

    v14 = v24;
    if (v24)
    {
      v15 = v25;
      v16 = v24;
      if (v25 != v24)
      {
        do
        {
          v17 = *--v15;
          *v15 = 0;
          if (v17)
          {
            operator delete[]();
          }
        }

        while (v15 != v14);
        v16 = v24;
      }

      v25 = v14;
      operator delete(v16);
      result = v10;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v10;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamDeclAttr::get(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[0] = a2;
  v14[1] = a3;
  Context = mlir::Attribute::getContext(v14);
  Type = mlir::TypedAttr::getType(v14);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v15[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id;
  v15[1] = Context;
  v19[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20ParamDeclAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_13ParamDeclAttrEJRNS1_10StringAttrENS1_4TypeERNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS7_;
  v19[1] = v15;
  v18[0] = a1;
  v18[1] = Type;
  v18[2] = v14[0];
  v7 = (Type >> 4) ^ (Type >> 9);
  v8 = 0xB492B66FBE98F273 * ((a1 >> 4) ^ (a1 >> 9));
  v9 = 0x9AE16A3B2F90404FLL * ((LODWORD(v14[0]) >> 4) ^ (LODWORD(v14[0]) >> 9));
  v10 = __ROR8__(v7 ^ 0xC949D7C7509E6557, 20);
  v11 = __ROR8__(v8 - v7, 43) - 0x3C5A37A36834CED9 * v7 + __ROR8__(v9 ^ 0xFF51AFD7ED558CCDLL, 30);
  v12 = 0x9DDFEA08EB382D69 * ((v8 + v10 - 0xAE502812AA7333 - v9 + 24) ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v8 + v10 - 0xAE502812AA7333 - v9 + 24))) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ (v8 + v10 - 0xAE502812AA7333 - v9 + 24))));
  v16[0] = v18;
  v16[1] = v19;
  v17 = v18;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
}

void *mlir::ODIE::Compiler::CoreML::ParamRefAttr::print(mlir::ODIE::Compiler::CoreML::ParamRefAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v10 = *(*this + 8);
  Value = mlir::StringAttr::getValue(&v10);
  (*(*a2 + 72))(a2, Value, v7);
  result = (*(*a2 + 16))(a2);
  v9 = result[4];
  if (result[3] == v9)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v9 = 62;
  ++result[4];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamRefAttr::parse(mlir::AsmParser *a1, uint64_t a2)
{
  v18 = 0;
  v19 = a2;
  __p[0] = 0;
  __p[1] = 0;
  if ((*(*a1 + 152))(a1) & 1) != 0 && sub_10015109C(a1) && ((*(*a1 + 168))(a1) & 1) != 0 && (a2 || ((*(*a1 + 576))(a1, &v19)))
  {
    Context = mlir::AsmParser::getContext(a1);
    v5 = (*(*a1 + 32))(a1);
    v16 = 260;
    v15 = __p;
    StringAttr = mlir::Builder::getStringAttr(v5, &v15, v6);
    v8 = v19;
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v20[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id;
    v20[1] = Context;
    v24[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail19ParamRefAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_12ParamRefAttrEJNS1_10StringAttrENS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
    v24[1] = v20;
    v23[0] = StringAttr;
    v23[1] = v8;
    v10 = (v8 >> 4) ^ (v8 >> 9);
    v11 = __ROR8__(v10 + 16, 16);
    v12 = 0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ (StringAttr >> 4) ^ (StringAttr >> 9));
    v22 = v23;
    v21[0] = v23;
    v21[1] = v24;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 32) >> 15) ^ (-348639895 * (v11 ^ (v12 >> 47) ^ v12)))) ^ v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::StringAttr,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v22, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::StringAttr,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v21);
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = 0;
  if (SHIBYTE(v18) < 0)
  {
LABEL_7:
    v14 = result;
    operator delete(__p[0]);
    return v14;
  }

  return result;
}

void *mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(uint64_t a1, uint64_t a2)
{
  if (*(**(a2 + 8) + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v4 = (*(*a1 + 16))(a1);
    v5 = v4[4];
    if (v4[3] == v5)
    {
      llvm::raw_ostream::write(v4, "<", 1uLL);
    }

    else
    {
      *v5 = 60;
      ++v4[4];
    }

    (*(*a1 + 40))(a1, a2);
    goto LABEL_9;
  }

  (*(*a1 + 40))(a1);
  v6 = (*(*a1 + 16))(a1);
  v7 = v6[4];
  if (v6[3] == v7)
  {
    llvm::raw_ostream::write(v6, "<", 1uLL);
    v8 = *(a2 + 32);
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *v7 = 60;
    ++v6[4];
    v8 = *(a2 + 32);
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  v11 = *(a2 + 24);
  sub_1001CE990(a1, *v11);
  if (v8 != 1)
  {
    v12 = &v11[2 * v8];
    v13 = v11 + 2;
    do
    {
      while (1)
      {
        v15 = (*(*a1 + 16))(a1);
        v16 = v15[4];
        if (v15[3] - v16 <= 1uLL)
        {
          break;
        }

        *v16 = 8236;
        v15[4] += 2;
        v14 = *v13;
        v13 += 2;
        sub_1001CE990(a1, v14);
        if (v13 == v12)
        {
          goto LABEL_9;
        }
      }

      llvm::raw_ostream::write(v15, ", ", 2uLL);
      v17 = *v13;
      v13 += 2;
      sub_1001CE990(a1, v17);
    }

    while (v13 != v12);
  }

LABEL_9:
  result = (*(*a1 + 16))(a1);
  v10 = result[4];
  if (result[3] == v10)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v10 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(uint64_t a1, uint64_t *a2)
{
  v16 = 0;
  if (((*(*a1 + 440))(a1, &v16) & 1) == 0)
  {
    return 0;
  }

  if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v4 = v16;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    *a2 = v16;
    return 1;
  }

  v18 = v20;
  v19 = 0x300000000;
  v15[0] = a1;
  v15[1] = &v18;
  if ((*(*a1 + 392))(a1, 7, sub_1001CEB54, v15, 0, 0))
  {
    if (v19)
    {
      v5 = (*(*a1 + 32))(a1);
      TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v5);
      SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id);
      v8 = v18;
      v9 = v19;
      v17 = v4;
      Context = mlir::Attribute::getContext(&v17);
      v11 = mlir::ODIE::Compiler::CoreML::ParamBindAttr::get(Context, v17, SingletonImpl, v8, v9);
    }

    else
    {
      v11 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v4);
    }

    *a2 = v11;
    result = 1;
    v13 = v18;
    if (v18 != v20)
    {
      goto LABEL_15;
    }
  }

  else
  {
    result = 0;
    v13 = v18;
    if (v18 != v20)
    {
LABEL_15:
      v14 = result;
      free(v13);
      return v14;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(uint64_t a1)
{
  v10 = a1;
  Context = mlir::Attribute::getContext(&v10);
  v2 = mlir::Attribute::getContext(&v10);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v2);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  v11[1] = Context;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJRNS1_13SymbolRefAttrENS4_10SymbolTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v15[1] = v11;
  v14[0] = v10;
  v14[1] = SingletonImpl;
  v6 = (SingletonImpl >> 4) ^ (SingletonImpl >> 9);
  v7 = __ROR8__(v6 + 16, 16);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v10 >> 4) ^ (v10 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8)))) ^ v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::SymbolRefAttr &,mlir::ODIE::Compiler::CoreML::SymbolType>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::SymbolRefAttr &,mlir::ODIE::Compiler::CoreML::SymbolType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::SymbolRefAttr &,mlir::ODIE::Compiler::CoreML::SymbolType>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::SymbolRefAttr &,mlir::ODIE::Compiler::CoreML::SymbolType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

{
  v11 = a1;
  Context = mlir::Type::getContext(&v11);
  v2 = mlir::TypeAttr::get(v11);
  v3 = mlir::Type::getContext(&v11);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v3);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v12[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  v12[1] = Context;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJNS1_8TypeAttrENS4_8TypeTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v16[1] = v12;
  v15[0] = v2;
  v15[1] = SingletonImpl;
  v7 = (SingletonImpl >> 4) ^ (SingletonImpl >> 9);
  v8 = __ROR8__(v7 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v2 >> 4) ^ (v2 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v13[0] = v15;
  v13[1] = v16;
  v14 = v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9)))) ^ v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::TypeAttr,mlir::ODIE::Compiler::CoreML::TypeType>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::TypeAttr,mlir::ODIE::Compiler::CoreML::TypeType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::TypeAttr,mlir::ODIE::Compiler::CoreML::TypeType>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::TypeAttr,mlir::ODIE::Compiler::CoreML::TypeType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

void *mlir::ODIE::Compiler::CoreML::ParamBindAttr::print(mlir::ODIE::Compiler::CoreML::ParamBindAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  (*(*a2 + 48))(a2, *(*this + 8));
  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if ((v6[3] - v7) > 2)
  {
    *(v7 + 2) = 91;
    *v7 = 8236;
    v6[4] += 3;
    v8 = *this;
    v9 = *(*this + 32);
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    llvm::raw_ostream::write(v6, ", [", 3uLL);
    v8 = *this;
    v9 = *(*this + 32);
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  v10 = *(v8 + 24);
  sub_1001CE990(a2, *v10);
  if (v9 != 1)
  {
    v11 = &v10[2 * v9];
    v12 = v10 + 2;
    do
    {
      while (1)
      {
        v14 = (*(*a2 + 16))(a2);
        v15 = v14[4];
        if (v14[3] - v15 > 1uLL)
        {
          break;
        }

        llvm::raw_ostream::write(v14, ", ", 2uLL);
        v13 = *v12;
        v12 += 2;
        sub_1001CE990(a2, v13);
        if (v12 == v11)
        {
          goto LABEL_13;
        }
      }

      *v15 = 8236;
      v14[4] += 2;
      v16 = *v12;
      v12 += 2;
      sub_1001CE990(a2, v16);
    }

    while (v12 != v11);
  }

LABEL_13:
  result = (*(*a2 + 16))(a2);
  v18 = result[4];
  if (result[3] - v18 > 1uLL)
  {
    *v18 = 15965;
    result[4] += 2;
  }

  else
  {

    return llvm::raw_ostream::write(result, "]>", 2uLL);
  }

  return result;
}

void *mlir::ODIE::Compiler::CoreML::ParamBindAttr::parse(uint64_t a1, void **a2)
{
  v2 = a2;
  v14 = v16;
  v15 = 0x300000000;
  v10 = 0;
  v11[0] = a1;
  v11[1] = &v14;
  v12 = a2;
  if ((*(*a1 + 152))(a1) & 1) != 0 && ((*(*a1 + 440))(a1, &v10, 0) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 392))(a1, 2, sub_1001CF10C, v11, 0, 0) & 1) != 0 && ((*(*a1 + 168))(a1))
  {
    if (v2)
    {
      goto LABEL_9;
    }

    if ((*(*a1 + 576))(a1, &v12))
    {
      v2 = v12;
LABEL_9:
      v4 = v14;
      v5 = v15;
      v13 = v10;
      Context = mlir::Attribute::getContext(&v13);
      v7 = mlir::ODIE::Compiler::CoreML::ParamBindAttr::get(Context, v13, v2, v4, v5);
      v8 = v14;
      if (v14 == v16)
      {
        return v7;
      }

      goto LABEL_12;
    }
  }

  v7 = 0;
  v8 = v14;
  if (v14 != v16)
  {
LABEL_12:
    free(v8);
  }

  return v7;
}

void *mlir::ODIE::Compiler::CoreML::ParamBindAttr::get(mlir::MLIRContext *a1, uint64_t (*a2)(), void **a3, _DWORD *a4, uint64_t a5)
{
  if (a5)
  {
    if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id || a2 == 0)
    {
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
      v68 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id;
      v69 = a1;
      v77 = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20ParamBindAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_13ParamBindAttrEJRNS1_9AttributeERNS1_4TypeERNS_8ArrayRefINS1_9TypedAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESP_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSR_E_EEvlS7_;
      v78 = &v68;
      v12 = (a2 >> 4) ^ (a2 >> 9);
      v73 = a2;
      v74 = a3;
      v75 = a4;
      v76 = a5;
      v13 = (a3 >> 4) ^ (a3 >> 9);
      v14 = sub_1001CF118(a4, &a4[4 * a5]);
      v15 = 0xB492B66FBE98F273 * v12 + __ROR8__(v13 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x9AE16A3B2F90404FLL * v14 + 24;
      v16 = (__ROR8__(0xB492B66FBE98F273 * v12 - v13, 43) - 0x3C5A37A36834CED9 * v13 + __ROR8__((0x9AE16A3B2F90404FLL * v14) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v15;
      v17 = 0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * v16) >> 47) ^ (0x9DDFEA08EB382D69 * v16));
      v70 = &v73;
      v71 = &v77;
      v72 = &v73;
      result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id, -348639895 * ((v17 >> 47) ^ v17), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v72, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v70);
      if (!result)
      {
        return result;
      }

      v18 = *result;
      {
        v19 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        if (!v21)
        {
          return result;
        }
      }

      else
      {
        v64 = result;
        sub_10028243C();
        result = v64;
        v19 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        if (!v21)
        {
          return result;
        }
      }

      v22 = v20;
      v23 = v21;
      do
      {
        v24 = v23 >> 1;
        v25 = &v22[2 * (v23 >> 1)];
        v27 = *v25;
        v26 = v25 + 2;
        v23 += ~(v23 >> 1);
        if (v27 < v19)
        {
          v22 = v26;
        }

        else
        {
          v23 = v24;
        }
      }

      while (v23);
    }

    else
    {
      v44 = *(a2 + 1);
      v43 = *(a2 + 2);
      v46 = mlir::MLIRContext::getAttributeUniquer(a1);
      v68 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id;
      v69 = a1;
      v77 = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20ParamBindAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_13ParamBindAttrEJNS1_9AttributeENS1_4TypeERNS_8ArrayRefINS1_9TypedAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESN_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSP_E_EEvlS7_;
      v78 = &v68;
      v47 = (v44 >> 4) ^ (v44 >> 9);
      v73 = v44;
      v74 = v43;
      v75 = a4;
      v76 = a5;
      v48 = (v43 >> 4) ^ (v43 >> 9);
      v49 = sub_1001CF118(a4, &a4[4 * a5]);
      v50 = 0xB492B66FBE98F273 * v47 + __ROR8__(v48 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x9AE16A3B2F90404FLL * v49 + 24;
      v51 = (__ROR8__(0xB492B66FBE98F273 * v47 - v48, 43) - 0x3C5A37A36834CED9 * v48 + __ROR8__((0x9AE16A3B2F90404FLL * v49) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v50;
      v52 = 0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * v51) >> 47) ^ (0x9DDFEA08EB382D69 * v51));
      v70 = &v73;
      v71 = &v77;
      v72 = &v73;
      result = mlir::StorageUniquer::getParametricStorageTypeImpl(v46, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id, -348639895 * ((v52 >> 47) ^ v52), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage,mlir::Attribute,mlir::Type,llvm::ArrayRef<mlir::TypedAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::Type,llvm::ArrayRef<mlir::TypedAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v72, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage,mlir::Attribute,mlir::Type,llvm::ArrayRef<mlir::TypedAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::Type,llvm::ArrayRef<mlir::TypedAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v70);
      if (result)
      {
        v54 = *result;
        {
          v55 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v56 = *(v54 + 8);
          v57 = *(v54 + 16);
          if (!v57)
          {
            return result;
          }
        }

        else
        {
          v65 = result;
          sub_10028243C();
          result = v65;
          v55 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v56 = *(v54 + 8);
          v57 = *(v54 + 16);
          if (!v57)
          {
            return result;
          }
        }

        v58 = v56;
        v59 = v57;
        do
        {
          v60 = v59 >> 1;
          v61 = &v58[2 * (v59 >> 1)];
          v63 = *v61;
          v62 = v61 + 2;
          v59 += ~(v59 >> 1);
          if (v63 < v55)
          {
            v58 = v62;
          }

          else
          {
            v59 = v60;
          }
        }

        while (v59);
      }
    }
  }

  else
  {
    result = sub_100062D0C(a2);
    if (!result)
    {
      v67 = a2;
      Context = mlir::Attribute::getContext(&v67);
      v29 = mlir::MLIRContext::getAttributeUniquer(Context);
      v68 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
      v69 = Context;
      v73 = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJRNS1_9AttributeERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
      v74 = &v68;
      v77 = v67;
      v78 = a3;
      v30 = (a3 >> 4) ^ (a3 >> 9);
      v31 = __ROR8__(v30 + 16, 16);
      v32 = 0x9DDFEA08EB382D69 * (v31 ^ 0xFF51AFD7ED558CCDLL ^ (v67 >> 4) ^ (v67 >> 9));
      v70 = &v77;
      v71 = &v73;
      v72 = &v77;
      result = mlir::StorageUniquer::getParametricStorageTypeImpl(v29, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v31 ^ (v32 >> 47) ^ v32)) >> 32) >> 15) ^ (-348639895 * (v31 ^ (v32 >> 47) ^ v32)))) ^ v30, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v72, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v70);
      if (result)
      {
        v33 = *result;
        {
          v34 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v35 = *(v33 + 8);
          v36 = *(v33 + 16);
          if (!v36)
          {
            return result;
          }
        }

        else
        {
          v66 = result;
          sub_10028243C();
          result = v66;
          v34 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v35 = *(v33 + 8);
          v36 = *(v33 + 16);
          if (!v36)
          {
            return result;
          }
        }

        v37 = v35;
        v38 = v36;
        do
        {
          v39 = v38 >> 1;
          v40 = &v37[2 * (v38 >> 1)];
          v42 = *v40;
          v41 = v40 + 2;
          v38 += ~(v38 >> 1);
          if (v42 < v34)
          {
            v37 = v41;
          }

          else
          {
            v38 = v39;
          }
        }

        while (v38);
      }
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  Context = mlir::Attribute::getContext(&v9);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v10[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  v10[1] = Context;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJRNS1_9AttributeERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
  v14[1] = v10;
  v13[0] = v9;
  v13[1] = a2;
  v5 = (a2 >> 4) ^ (a2 >> 9);
  v6 = __ROR8__(v5 + 16, 16);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ 0xFF51AFD7ED558CCDLL ^ (v9 >> 4) ^ (v9 >> 9));
  v11[0] = v13;
  v11[1] = v14;
  v12 = v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)))) ^ v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

{
  v9[0] = a1;
  v9[1] = a2;
  Context = mlir::Attribute::getContext(v9);
  Type = mlir::TypedAttr::getType(v9);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v10[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  v10[1] = Context;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJRNS1_9TypedAttrENS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v14[1] = v10;
  v13[0] = v9[0];
  v13[1] = Type;
  v5 = (Type >> 4) ^ (Type >> 9);
  v6 = __ROR8__(v5 + 16, 16);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (LODWORD(v9[0]) >> 4) ^ (LODWORD(v9[0]) >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v11[0] = v13;
  v11[1] = v14;
  v12 = v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)))) ^ v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::TypedAttr &,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::TypedAttr &,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::TypedAttr &,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::TypedAttr &,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamConstantAttr::parse(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v11 = 0;
  v12 = a2;
  if ((*(*a1 + 152))(a1) & 1) != 0 && ((*(*a1 + 440))(a1, &v11, 0) & 1) != 0 && ((*(*a1 + 168))(a1))
  {
    v4 = *(*v11 + 136);
    if (v4 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v5 = v11;
    }

    else
    {
      v5 = 0;
    }

    v10 = v5;
    if (v4 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      Value = mlir::TypeAttr::getValue(&v10);
      return mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(Value);
    }

    if (v4 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      return mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v11);
    }

    v6 = sub_100062D0C(v11);
    if (v6)
    {
      return mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v6, v7);
    }

    if (v2)
    {
      return mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v11, v2);
    }

    if ((*(*a1 + 576))(a1, &v12))
    {
      v2 = v12;
      return mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v11, v2);
    }
  }

  return 0;
}

void *mlir::ODIE::Compiler::CoreML::ArrayType::print(mlir::ODIE::Compiler::CoreML::ArrayType *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v6 = *(*this + 8);
  if (v6)
  {
    v7 = *(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = v6[1];
    v9 = *(*v8 + 136);
    if (v9 != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v8 = 0;
    }

    v15 = v8;
    if (v9 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      Value = mlir::TypeAttr::getValue(&v15);
      (*(*a2 + 32))(a2, Value);
    }
  }

  else
  {
    (*(*a2 + 40))(a2);
  }

  v11 = (*(*a2 + 16))(a2);
  v12 = v11[4];
  if (v11[3] - v12 > 1uLL)
  {
    *v12 = 8250;
    v11[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v11, ": ", 2uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 24));
  result = (*(*a2 + 16))(a2);
  v14 = result[4];
  if (result[3] == v14)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v14 = 62;
  ++result[4];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ArrayType::parse(mlir::ODIE::Compiler::CoreML::ArrayType *this, mlir::AsmParser *a2)
{
  v43 = 0;
  v44 = 0;
  v42 = (*(*this + 40))(this, a2);
  v41[0] = this;
  v41[1] = &v42;
  if (((*(*this + 152))(this) & 1) == 0 || ((*(*this + 440))(this, &v44, 0) & 1) == 0 || ((*(*this + 104))(this) & 1) == 0 || ((*(*this + 440))(this, &v43, 0) & 1) == 0 || ((*(*this + 168))(this) & 1) == 0)
  {
    return 0;
  }

  v3 = v44;
  if (*(*v44 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v4 = (*(*this + 32))(this);
    v5 = sub_100153554(v4);
    v44 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v3, v5);
  }

  Context = mlir::AsmParser::getContext(this);
  v7 = Context;
  v8 = v44;
  if (!v44)
  {
    goto LABEL_22;
  }

  v9 = *v44;
  {
    v10 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_19:
    v12 = 0;
    v13 = v11;
    goto LABEL_20;
  }

  v37 = v9;
  v39 = Context;
  v35 = v8;
  sub_10028243C();
  v8 = v35;
  v7 = v39;
  v10 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v11 = *(v37 + 8);
  v12 = *(v37 + 16);
  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_11:
  v13 = v11;
  v14 = v12;
  do
  {
    v15 = v14 >> 1;
    v16 = &v13[2 * (v14 >> 1)];
    v18 = *v16;
    v17 = v16 + 2;
    v14 += ~(v14 >> 1);
    if (v18 < v10)
    {
      v13 = v17;
    }

    else
    {
      v14 = v15;
    }
  }

  while (v14);
LABEL_20:
  if (v13 != &v11[2 * v12] && *v13 == v10)
  {
    v20 = v13[1];
    v21 = v43;
    if (!v43)
    {
      goto LABEL_37;
    }

    goto LABEL_23;
  }

LABEL_22:
  v20 = 0;
  v21 = v43;
  if (!v43)
  {
    goto LABEL_37;
  }

LABEL_23:
  v22 = *v21;
  {
    v23 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16);
    if (v25)
    {
      goto LABEL_25;
    }

LABEL_34:
    v25 = 0;
    v26 = v24;
    goto LABEL_35;
  }

  v38 = v20;
  v40 = v7;
  v32 = v8;
  v34 = v21;
  v36 = v22;
  sub_10028243C();
  v21 = v34;
  v20 = v38;
  v7 = v40;
  v8 = v32;
  v23 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v24 = *(v36 + 8);
  v25 = *(v36 + 16);
  if (!v25)
  {
    goto LABEL_34;
  }

LABEL_25:
  v26 = v24;
  v27 = v25;
  do
  {
    v28 = v27 >> 1;
    v29 = &v26[2 * (v27 >> 1)];
    v31 = *v29;
    v30 = v29 + 2;
    v27 += ~(v27 >> 1);
    if (v31 < v23)
    {
      v26 = v30;
    }

    else
    {
      v27 = v28;
    }
  }

  while (v27);
LABEL_35:
  if (v26 != &v24[2 * v25] && *v26 == v23)
  {
    v33 = v26[1];
    return sub_10016194C(sub_1001CFB20, v41, v7, v8, v20, v21, v33);
  }

LABEL_37:
  v33 = 0;
  return sub_10016194C(sub_1001CFB20, v41, v7, v8, v20, v21, v33);
}

uint64_t sub_100153554(mlir::MLIRContext **a1)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);

  return mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id);
}

BOOL mlir::ODIE::Compiler::CoreML::ArrayType::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43[0] = a3;
  v43[1] = a4;
  v42[0] = a5;
  v42[1] = a6;
  if (*(*mlir::TypedAttr::getType(v43) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id)
  {
    if (*(*mlir::TypedAttr::getType(v42) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      return 1;
    }

    a1(v47, a2);
    if (v47[0])
    {
      v44 = 3;
      v45 = "expected a size expression of any integer type, got ";
      v46 = 52;
      v24 = &v44;
      v25 = v48;
      if (v49 >= v50)
      {
        if (v48 <= &v44 && v48 + 24 * v49 > &v44)
        {
          v40 = &v44 - v48;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
          v25 = v48;
          v24 = (v48 + v40);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
          v24 = &v44;
          v25 = v48;
        }
      }

      v26 = &v25[24 * v49];
      v27 = *v24;
      *(v26 + 2) = *(v24 + 2);
      *v26 = v27;
      ++v49;
      if (v47[0])
      {
        v28 = &v44;
        mlir::DiagnosticArgument::DiagnosticArgument(&v44, v42[0]);
        v29 = v48;
        if (v49 >= v50)
        {
          if (v48 <= &v44 && v48 + 24 * v49 > &v44)
          {
            v41 = &v44 - v48;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
            v29 = v48;
            v28 = (v48 + v41);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
            v28 = &v44;
            v29 = v48;
          }
        }

        v30 = &v29[24 * v49];
        v31 = *v28;
        *(v30 + 2) = *(v28 + 2);
        *v30 = v31;
        ++v49;
      }
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
    if (v47[0])
    {
      mlir::InFlightDiagnostic::report(v47);
    }

    if (v57 == 1)
    {
      if (v56 != &v57)
      {
        free(v56);
      }

      v32 = __p;
      if (__p)
      {
        v33 = v55;
        v34 = __p;
        if (v55 != __p)
        {
          do
          {
            v33 = sub_100052FFC(v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v55 = v32;
        operator delete(v34);
      }

      v20 = v52;
      if (!v52)
      {
        goto LABEL_47;
      }

      v35 = v53;
      v22 = v52;
      if (v53 == v52)
      {
        goto LABEL_46;
      }

      do
      {
        v36 = *--v35;
        *v35 = 0;
        if (v36)
        {
          operator delete[]();
        }
      }

      while (v35 != v20);
      goto LABEL_45;
    }
  }

  else
  {
    a1(v47, a2);
    if (v47[0])
    {
      v44 = 3;
      v46 = 56;
      v8 = &v44;
      v9 = v48;
      if (v49 >= v50)
      {
        if (v48 <= &v44 && v48 + 24 * v49 > &v44)
        {
          v38 = &v44 - v48;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
          v9 = v48;
          v8 = (v48 + v38);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
          v8 = &v44;
          v9 = v48;
        }
      }

      v10 = &v9[24 * v49];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      ++v49;
      if (v47[0])
      {
        v12 = &v44;
        mlir::DiagnosticArgument::DiagnosticArgument(&v44, v43[0]);
        v13 = v48;
        if (v49 >= v50)
        {
          if (v48 <= &v44 && v48 + 24 * v49 > &v44)
          {
            v39 = &v44 - v48;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
            v13 = v48;
            v12 = (v48 + v39);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
            v12 = &v44;
            v13 = v48;
          }
        }

        v14 = &v13[24 * v49];
        v15 = *v12;
        *(v14 + 2) = *(v12 + 2);
        *v14 = v15;
        ++v49;
      }
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
    if (v47[0])
    {
      mlir::InFlightDiagnostic::report(v47);
    }

    if (v57 == 1)
    {
      if (v56 != &v57)
      {
        free(v56);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v55;
        v19 = __p;
        if (v55 != __p)
        {
          do
          {
            v18 = sub_100052FFC(v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v55 = v17;
        operator delete(v19);
      }

      v20 = v52;
      if (!v52)
      {
        goto LABEL_47;
      }

      v21 = v53;
      v22 = v52;
      if (v53 == v52)
      {
LABEL_46:
        v53 = v20;
        operator delete(v22);
LABEL_47:
        if (v48 != v51)
        {
          free(v48);
        }

        return v16;
      }

      do
      {
        v23 = *--v21;
        *v21 = 0;
        if (v23)
        {
          operator delete[]();
        }
      }

      while (v21 != v20);
LABEL_45:
      v22 = v52;
      goto LABEL_46;
    }
  }

  return v16;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamRefType::get(mlir::MLIRContext *a1, void *a2, uint64_t a3)
{
  if (a2 && *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v5 = a2[1];
    v6 = *(*v5 + 136);
    if (v6 != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v5 = 0;
    }

    v15[0] = v5;
    if (v6 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      return mlir::TypeAttr::getValue(v15);
    }
  }

  v11 = a1;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(a1);
  v10[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id;
  v10[1] = &v11;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail19ParamRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_12ParamRefTypeEJRNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v15[1] = v10;
  v14[0] = a2;
  v14[1] = a3;
  v8 = 0x9DDFEA08EB382D69 * ((8 * ((a2 >> 4) ^ (a2 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v8 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamRefType::getChecked(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, uint64_t a4, uint64_t a5)
{
  *&v26 = a4;
  *(&v26 + 1) = a5;
  if (*(*mlir::TypedAttr::getType(&v26) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id)
  {
    if (v26)
    {
      v19 = *(*v26 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
    }

    else
    {
      v19 = 0;
    }

    if (!v19)
    {
      goto LABEL_28;
    }

    v20 = *(v26 + 8);
    v21 = *(*v20 + 136);
    if (v21 != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v20 = 0;
    }

    v33[0] = v20;
    if (v21 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      return mlir::TypeAttr::getValue(v33);
    }

    else
    {
LABEL_28:
      v30 = a3;
      TypeUniquer = mlir::MLIRContext::getTypeUniquer(a3);
      v29[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id;
      v29[1] = &v30;
      v33[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail19ParamRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_12ParamRefTypeEJRNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
      v33[1] = v29;
      v27 = v26;
      v23 = 0x9DDFEA08EB382D69 * ((8 * ((v26 >> 4) ^ (v26 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
      v31[0] = &v27;
      v31[1] = v33;
      v32 = &v27;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v23 ^ (v23 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v23 ^ (v23 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v32, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v31);
    }
  }

  else
  {
    a1(v33, a2);
    if (v33[0])
    {
      LODWORD(v27) = 3;
      v28 = 46;
      v8 = &v27;
      v9 = v34;
      if (v35 >= v36)
      {
        if (v34 <= &v27 && v34 + 24 * v35 > &v27)
        {
          v25 = &v27 - v34;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
          v9 = v34;
          v8 = v34 + v25;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
          v8 = &v27;
          v9 = v34;
        }
      }

      v10 = &v9[24 * v35];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      ++v35;
      if (v33[0])
      {
        mlir::InFlightDiagnostic::report(v33);
      }
    }

    if (v43 == 1)
    {
      if (v42 != &v43)
      {
        free(v42);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v41;
        v14 = __p;
        if (v41 != __p)
        {
          do
          {
            v13 = sub_100052FFC(v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v41 = v12;
        operator delete(v14);
      }

      v15 = v38;
      if (v38)
      {
        v16 = v39;
        v17 = v38;
        if (v39 != v38)
        {
          do
          {
            v18 = *--v16;
            *v16 = 0;
            if (v18)
            {
              operator delete[]();
            }
          }

          while (v16 != v15);
          v17 = v38;
        }

        v39 = v15;
        operator delete(v17);
      }

      if (v34 != v37)
      {
        free(v34);
      }
    }

    return 0;
  }
}

void *mlir::ODIE::Compiler::CoreML::SymbolRefType::print(mlir::ODIE::Compiler::CoreML::SymbolRefType *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v6 = *(*this + 8);
  v7 = (*v6)[17];
  if (v6)
  {
    v8 = v7 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if (*(*v6[1] + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v6)
    {
      v9 = v7 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(a2, v6);
      goto LABEL_16;
    }
  }

  (*(*a2 + 40))(a2);
LABEL_16:
  result = (*(*a2 + 16))(a2);
  v11 = result[4];
  if (result[3] == v11)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v11 = 62;
    ++result[4];
  }

  return result;
}

void *mlir::ODIE::Compiler::CoreML::SymbolRefType::parse(mlir::ODIE::Compiler::CoreML::SymbolRefType *this, mlir::AsmParser *a2)
{
  v11 = 0;
  v3 = (*(*this + 40))(this, a2);
  v9[0] = this;
  v9[1] = &v10;
  v10 = v3;
  if (((*(*this + 152))(this) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(this, &v11) & 1) == 0 || ((*(*this + 168))(this) & 1) == 0)
  {
    return 0;
  }

  result = sub_100062D0C(v11);
  if (result)
  {
    v6 = result;
    v7 = v5;
    Context = mlir::AsmParser::getContext(this);
    return sub_100161E7C(sub_1001CFC7C, v9, Context, v6, v7);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::SymbolRefType::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[0] = a3;
  v20[1] = a4;
  if (*(*mlir::TypedAttr::getType(v20) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id)
  {
    return 1;
  }

  a1(v24, a2);
  if (v24[0])
  {
    v21 = 3;
    v23 = 48;
    v6 = &v21;
    v7 = v25;
    if (v26 >= v27)
    {
      if (v25 <= &v21 && v25 + 24 * v26 > &v21)
      {
        v19 = &v21 - v25;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v28, v26 + 1, 24);
        v7 = v25;
        v6 = (v25 + v19);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v28, v26 + 1, 24);
        v6 = &v21;
        v7 = v25;
      }
    }

    v8 = &v7[24 * v26];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v26;
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
  if (v24[0])
  {
    mlir::InFlightDiagnostic::report(v24);
  }

  if (v34 == 1)
  {
    if (v33 != &v34)
    {
      free(v33);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v32;
      v13 = __p;
      if (v32 != __p)
      {
        do
        {
          v12 = sub_100052FFC(v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v32 = v11;
      operator delete(v13);
    }

    v14 = v29;
    if (v29)
    {
      v15 = v30;
      v16 = v29;
      if (v30 != v29)
      {
        do
        {
          v17 = *--v15;
          *v15 = 0;
          if (v17)
          {
            operator delete[]();
          }
        }

        while (v15 != v14);
        v16 = v29;
      }

      v30 = v14;
      operator delete(v16);
    }

    if (v25 != v28)
    {
      free(v25);
    }
  }

  return v10;
}

uint64_t sub_1001544F8(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, _DWORD *a4, uint64_t a5)
{
  if (!mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr::verify(a1, a2, a4, a5))
  {
    return 0;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a3);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr,void>::id;
  v13[1] = a3;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail30TorchLocationExtrasAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_23TorchLocationExtrasAttrEJRNS_8ArrayRefINS1_10StringAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
  v17[1] = v13;
  v16[0] = a4;
  v16[1] = a5;
  v9 = sub_1000D6708(a4, &a4[2 * a5]);
  v10 = HIDWORD(v9) ^ 0xFF51AFD7ED558CCDLL;
  v11 = 0x9DDFEA08EB382D69 * ((8 * v9 + 8) ^ v10);
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 32) >> 15) ^ (-348639895 * (v10 ^ (v11 >> 47) ^ v11))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,llvm::ArrayRef<mlir::StringAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,llvm::ArrayRef<mlir::StringAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

BOOL mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    return 1;
  }

  a1(v21, a2);
  if (v21[0])
  {
    v18 = 3;
    v19 = "stack trace must not be empty";
    v20 = 29;
    v5 = &v18;
    v6 = v22;
    if (v23 >= v24)
    {
      if (v22 <= &v18 && v22 + 24 * v23 > &v18)
      {
        v17 = &v18 - v22;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v6 = v22;
        v5 = (v22 + v17);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v25, v23 + 1, 24);
        v5 = &v18;
        v6 = v22;
      }
    }

    v7 = &v6[24 * v23];
    v8 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v8;
    ++v23;
  }

  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v29;
      v11 = __p;
      if (v29 != __p)
      {
        do
        {
          v10 = sub_100052FFC(v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v29 = v9;
      operator delete(v11);
    }

    v12 = v26;
    if (v26)
    {
      v13 = v27;
      v14 = v26;
      if (v27 != v26)
      {
        do
        {
          v15 = *--v13;
          *v13 = 0;
          if (v15)
          {
            operator delete[]();
          }
        }

        while (v13 != v12);
        v14 = v26;
      }

      v27 = v12;
      operator delete(v14);
    }

    if (v22 != v25)
    {
      free(v22);
    }
  }

  return v4;
}

uint64_t mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr::parse(mlir::AsmParser *a1)
{
  mlir::AsmParser::getContext(a1);
  v2 = (*(*a1 + 40))(a1);
  LOBYTE(v35) = 0;
  v38 = 0;
  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_53;
  }

  sub_100154D44(a1, &v31);
  if (v38 == v34)
  {
    if (v38)
    {
      v3 = v31;
      if (v31 != v33)
      {
        if (v35 != v37)
        {
          free(v35);
          v3 = v31;
        }

        v35 = v3;
        v36 = v32;
        v31 = v33;
        v32 = 0;
        if (v34 != 1)
        {
          goto LABEL_29;
        }

LABEL_27:
        if (v31 != v33)
        {
          free(v31);
        }

        goto LABEL_29;
      }

      v5 = v32;
      v6 = v36;
      if (v36 >= v32)
      {
        if (v32)
        {
          memmove(v35, v31, 8 * v32);
        }

LABEL_64:
        LODWORD(v36) = v5;
        LODWORD(v32) = 0;
        if (v34 != 1)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

      if (HIDWORD(v36) >= v32)
      {
        if (v36)
        {
          memmove(v35, v31, 8 * v36);
          goto LABEL_62;
        }
      }

      else
      {
        LODWORD(v36) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v32, 8);
      }

      v6 = 0;
LABEL_62:
      v20 = v32 - v6;
      if (v20)
      {
        memcpy(&v35[8 * v6], &v31[8 * v6], 8 * v20);
      }

      goto LABEL_64;
    }

LABEL_26:
    if (v34 != 1)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (!v38)
  {
    v35 = v37;
    v36 = 0x600000000;
    v4 = v32;
    if (v32)
    {
      if (v31 == v33)
      {
        v7 = v32;
        if (v32 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v32, 8), (v7 = v32) != 0))
        {
          memcpy(v35, v31, 8 * v7);
        }

        LODWORD(v36) = v4;
      }

      else
      {
        v35 = v31;
        v36 = v32;
        v31 = v33;
        HIDWORD(v32) = 0;
      }

      LODWORD(v32) = 0;
    }

    v38 = 1;
    goto LABEL_26;
  }

  if (v35 != v37)
  {
    free(v35);
  }

  v38 = 0;
  if (v34 == 1)
  {
    goto LABEL_27;
  }

LABEL_29:
  v8 = *a1;
  if ((v38 & 1) == 0)
  {
    v11 = (*(v8 + 40))(a1);
    v33[8] = 259;
    (*(*a1 + 24))(v22, a1, v11, &v31);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v28;
        v14 = __p;
        if (v28 != __p)
        {
          do
          {
            v13 = sub_100052FFC(v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v28 = v12;
        operator delete(v14);
      }

      v15 = v25;
      if (v25)
      {
        v16 = v26;
        v17 = v25;
        if (v26 != v25)
        {
          do
          {
            v18 = *--v16;
            *v16 = 0;
            if (v18)
            {
              operator delete[]();
            }
          }

          while (v16 != v15);
          v17 = v25;
        }

        v26 = v15;
        operator delete(v17);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

LABEL_53:
    result = 0;
    if (v38 != 1)
    {
      return result;
    }

    goto LABEL_54;
  }

  if (((*(v8 + 296))(a1) & 1) == 0)
  {
    goto LABEL_53;
  }

  Context = mlir::AsmParser::getContext(a1);
  v21 = v2;
  v31 = a1;
  v32 = &v21;
  result = sub_1001544F8(_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4ODIE8Compiler6CoreML23TorchLocationExtrasAttrEJPNS1_11MLIRContextENS_8ArrayRefINS1_10StringAttrEEEEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l, &v31, Context, v35, v36);
  if (v38 != 1)
  {
    return result;
  }

LABEL_54:
  if (v35 != v37)
  {
    v19 = result;
    free(v35);
    return v19;
  }

  return result;
}

void sub_100154D44(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __src = v10;
  v9 = 0x600000000;
  if (((*(*a1 + 392))() & 1) == 0)
  {
    v4 = 0;
    *a2 = 0;
    goto LABEL_7;
  }

  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v3 = v9;
  v4 = 1;
  if (!v9 || &__src == a2)
  {
LABEL_7:
    *(a2 + 64) = v4;
    v6 = __src;
    if (__src == v10)
    {
      return;
    }

    goto LABEL_8;
  }

  if (__src == v10)
  {
    v7 = v9;
    if (v9 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v9, 8), (v7 = v9) != 0))
    {
      memcpy(*a2, __src, 8 * v7);
    }

    *(a2 + 8) = v3;
  }

  else
  {
    *a2 = __src;
    v5 = HIDWORD(v9);
    *(a2 + 8) = v3;
    *(a2 + 12) = v5;
    __src = v10;
    HIDWORD(v9) = 0;
  }

  LODWORD(v9) = 0;
  *(a2 + 64) = 1;
  v6 = __src;
  if (__src != v10)
  {
LABEL_8:
    free(v6);
  }
}

void *mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr::print(mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
    v6 = *this;
    v7 = *(*this + 16);
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *v5 = 40;
    ++v4[4];
    v6 = *this;
    v7 = *(*this + 16);
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v8 = *(v6 + 8);
  (*(*a2 + 40))(a2, *v8);
  if (v7 != 1)
  {
    v11 = v8 + 1;
    v12 = 8 * v7 - 8;
    do
    {
      v14 = (*(*a2 + 16))(a2);
      v15 = v14[4];
      if (v14[3] - v15 <= 1uLL)
      {
        llvm::raw_ostream::write(v14, ", ", 2uLL);
      }

      else
      {
        *v15 = 8236;
        v14[4] += 2;
      }

      v13 = *v11++;
      (*(*a2 + 40))(a2, v13);
      v12 -= 8;
    }

    while (v12);
  }

LABEL_6:
  result = (*(*a2 + 16))(a2);
  v10 = result[4];
  if (result[3] == v10)
  {

    return llvm::raw_ostream::write(result, ")", 1uLL);
  }

  else
  {
    *v10 = 41;
    ++result[4];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::get(mlir::MLIRContext *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr,void>::id;
  v13[1] = a1;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail28ODIELocationFrameAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_21ODIELocationFrameAttrEJNS1_10StringAttrESF_NSt3__18optionalINS1_9AttributeEEEEEENSG_9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
  v18[1] = v13;
  v15 = a2;
  v16 = a3;
  v17[0] = a4;
  v17[1] = a5;
  memset(v20, 0, sizeof(v20));
  v21 = 0xFF51AFD7ED558CCDLL;
  v19 = ((a2 >> 4) ^ (a2 >> 9));
  v11 = sub_1001D0068(&v19, 0, v20, &v20[3] + 8, &v16, v17);
  v14 = &v15;
  v19 = &v15;
  *&v20[0] = v18;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr,void>::id, v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::Attribute>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::Attribute>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v19);
}

uint64_t mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::parse(mlir::AsmParser *a1)
{
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 280))(a1))
  {
    v28 = 257;
    if ((*(*a1 + 400))(a1, "method", 6, v27) & 1) != 0 && ((*(*a1 + 136))(a1))
    {
      Context = mlir::AsmParser::getContext(a1);
      mlir::MLIRContext::getOrLoadDialect(Context, "builtin", 7);
      *v27 = 0;
      v3 = sub_1001D02C8(a1, v27, 0);
      v4 = *a1;
      if (!v3)
      {
        v16 = (*(v4 + 40))(a1);
        v28 = 259;
        (*(*a1 + 24))(v31, a1, v16, v27);
        if (v31[0])
        {
          mlir::InFlightDiagnostic::report(v31);
        }

        if (v39 == 1)
        {
          if (v38 != &v39)
          {
            free(v38);
          }

          v17 = __p;
          if (__p)
          {
            v18 = v37;
            v19 = __p;
            if (v37 != __p)
            {
              do
              {
                v18 = sub_100052FFC(v18 - 1);
              }

              while (v18 != v17);
              v19 = __p;
            }

            v37 = v17;
            operator delete(v19);
          }

          v20 = v34;
          if (v34)
          {
            v21 = v35;
            v22 = v34;
            if (v35 != v34)
            {
              do
              {
                v23 = *--v21;
                *v21 = 0;
                if (v23)
                {
                  operator delete[]();
                }
              }

              while (v21 != v20);
              v22 = v34;
            }

            v35 = v20;
            operator delete(v22);
          }

          if (v32 != &v33)
          {
            free(v32);
          }
        }

        return 0;
      }

      v5 = *v27;
      if ((*(v4 + 120))(a1))
      {
        v28 = 257;
        if ((*(*a1 + 400))(a1, "codeSnippet", 11, v27) & 1) != 0 && ((*(*a1 + 136))(a1))
        {
          v6 = sub_100155808(a1);
          v7 = *a1;
          if (v8)
          {
            v9 = v6;
            if (((*(v7 + 120))(a1) & 1) == 0)
            {
              return 0;
            }

            v28 = 257;
            if (((*(*a1 + 400))(a1, "frontendAttribute", 17, v27) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) == 0)
            {
              return 0;
            }

            *v27 = 0;
            v10 = (*(*a1 + 456))(a1, v27, 0);
            v11 = 0;
            v12 = 0;
            v13 = 0;
            if ((v10 & 0x100) == 0)
            {
              goto LABEL_15;
            }

            if (v10)
            {
              v11 = *v27 & 0xFFFFFFFFFFFFFF00;
              v12 = v27[0];
              v13 = 1;
LABEL_15:
              if ((*(*a1 + 296))(a1))
              {
                v14 = mlir::AsmParser::getContext(a1);
                return mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::get(v14, v5, v9, v12 | v11, v13);
              }

              return 0;
            }

            v26 = (*(*a1 + 40))(a1);
            v28 = 259;
            (*(*a1 + 24))(v29, a1, v26, v27);
            v25 = v29;
          }

          else
          {
            v24 = (*(v7 + 40))(a1);
            v28 = 259;
            (*(*a1 + 24))(v30, a1, v24, v27);
            v25 = v30;
          }

          sub_100059A74(v25);
        }
      }
    }
  }

  return 0;
}

uint64_t sub_100155808(mlir::AsmParser *a1)
{
  Context = mlir::AsmParser::getContext(a1);
  mlir::MLIRContext::getOrLoadDialect(Context, "builtin", 7);
  v6 = 0;
  v3 = sub_1001D02C8(a1, &v6, 0);
  v4 = v6;
  if (!v3)
  {
    return 0;
  }

  return v4;
}

void *mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::print(mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++v4[4];
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if ((v6[3] - v7) > 5)
  {
    *(v7 + 4) = 25711;
    *v7 = 1752458605;
    v6[4] += 6;
  }

  else
  {
    llvm::raw_ostream::write(v6, "method", 6uLL);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = v10[4];
  if (v10[3] == v11)
  {
    llvm::raw_ostream::write(v10, "=", 1uLL);
  }

  else
  {
    *v11 = 61;
    ++v10[4];
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if (v14[3] == v15)
  {
    llvm::raw_ostream::write(v14, ",", 1uLL);
  }

  else
  {
    *v15 = 44;
    ++v14[4];
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if ((v18[3] - v19) > 0xA)
  {
    *(v19 + 7) = 1952804976;
    *v19 = *"codeSnippet";
    v18[4] += 11;
  }

  else
  {
    llvm::raw_ostream::write(v18, "codeSnippet", 0xBuLL);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = v22[4];
  if (v22[3] == v23)
  {
    llvm::raw_ostream::write(v22, "=", 1uLL);
  }

  else
  {
    *v23 = 61;
    ++v22[4];
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  (*(*a2 + 40))(a2, *(*this + 16));
  v26 = (*(*a2 + 16))(a2);
  v27 = v26[4];
  if (v26[3] == v27)
  {
    llvm::raw_ostream::write(v26, ",", 1uLL);
  }

  else
  {
    *v27 = 44;
    ++v26[4];
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  v30 = (*(*a2 + 16))(a2);
  v31 = v30[4];
  if ((v30[3] - v31) > 0x10)
  {
    *(v31 + 16) = 101;
    *v31 = *"frontendAttribute";
    v30[4] += 17;
  }

  else
  {
    llvm::raw_ostream::write(v30, "frontendAttribute", 0x11uLL);
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (v33 >= *(v32 + 3))
  {
    llvm::raw_ostream::write(v32, 32);
  }

  else
  {
    *(v32 + 4) = v33 + 1;
    *v33 = 32;
  }

  v34 = (*(*a2 + 16))(a2);
  v35 = v34[4];
  if (v34[3] == v35)
  {
    llvm::raw_ostream::write(v34, "=", 1uLL);
    if (!*(*this + 32))
    {
      goto LABEL_56;
    }
  }

  else
  {
    *v35 = 61;
    ++v34[4];
    if (!*(*this + 32))
    {
      goto LABEL_56;
    }
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (v37 >= *(v36 + 3))
  {
    llvm::raw_ostream::write(v36, 32);
  }

  else
  {
    *(v36 + 4) = v37 + 1;
    *v37 = 32;
  }

  v38 = *this;
  v39 = *(*this + 24);
  v40 = *(v38 + 32);
  v41 = (*(*a2 + 16))(a2);
  if (v40)
  {
    v44 = v39;
    mlir::Attribute::print(&v44, v41, 0);
  }

  else
  {
    llvm::operator<<(v41);
  }

LABEL_56:
  result = (*(*a2 + 16))(a2);
  v43 = result[4];
  if (result[3] == v43)
  {
    return llvm::raw_ostream::write(result, ")", 1uLL);
  }

  *v43 = 41;
  ++result[4];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ExternAttr::parse(mlir::AsmParser *a1)
{
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v23) = 0;
  v26 = 0;
  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_34;
  }

  __p = 0;
  v21 = 0uLL;
  if (!sub_100163AAC(a1, &__p))
  {
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p);
    }

    v11 = (*(*a1 + 40))(a1);
    v22 = 259;
    (*(*a1 + 24))(v30, a1, v11, &__p);
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v12 = v35;
      if (v35)
      {
        v13 = v36;
        v14 = v35;
        if (v36 != v35)
        {
          do
          {
            v13 = sub_100052FFC(v13 - 1);
          }

          while (v13 != v12);
          v14 = v35;
        }

        v36 = v12;
        operator delete(v14);
      }

      v15 = v33;
      if (v33)
      {
        v16 = v34;
        v17 = v33;
        if (v34 != v33)
        {
          do
          {
            v18 = *--v16;
            *v16 = 0;
            if (v18)
            {
              operator delete[]();
            }
          }

          while (v16 != v15);
          v17 = v33;
        }

        v34 = v15;
        operator delete(v17);
      }

      if (v31 != &v32)
      {
        free(v31);
      }
    }

LABEL_34:
    ParametricStorageTypeImpl = 0;
    if (v26 != 1)
    {
      return ParametricStorageTypeImpl;
    }

    goto LABEL_35;
  }

  *(&v39 + 7) = *(&v21 + 7);
  *&v39 = v21;
  v23 = __p;
  *v24 = v21;
  *&v24[7] = *(&v39 + 7);
  v25 = HIBYTE(v21);
  v26 = 1;
  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    goto LABEL_34;
  }

  Context = mlir::AsmParser::getContext(a1);
  v3 = Context;
  if (v25 >= 0)
  {
    v4 = &v23;
  }

  else
  {
    v4 = v23;
  }

  if (v25 >= 0)
  {
    v5 = v25;
  }

  else
  {
    v5 = *v24;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v27[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id;
  v27[1] = v3;
  __p = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail17ExternAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_10ExternAttrEJNS_9StringRefEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  *&v21 = v27;
  *&v39 = v4;
  *(&v39 + 1) = v5;
  v7 = llvm::hash_value(v4, v5);
  v8 = HIDWORD(v7) ^ 0xFF51AFD7ED558CCDLL;
  v9 = 0x9DDFEA08EB382D69 * ((8 * v7 + 8) ^ v8);
  v28[0] = &v39;
  v28[1] = &__p;
  v29 = &v39;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v29, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v28);
  if (v26 == 1)
  {
LABEL_35:
    if (v25 < 0)
    {
      operator delete(v23);
    }
  }

  return ParametricStorageTypeImpl;
}

void *mlir::ODIE::Compiler::CoreML::ExternAttr::print(mlir::ODIE::Compiler::CoreML::ExternAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++v4[4];
  }

  (*(*a2 + 80))(a2, *(*this + 8), *(*this + 16));
  result = (*(*a2 + 16))(a2);
  v7 = result[4];
  if (result[3] == v7)
  {

    return llvm::raw_ostream::write(result, ")", 1uLL);
  }

  else
  {
    *v7 = 41;
    ++result[4];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::get(mlir::MLIRContext *a1, void *a2, uint64_t a3)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id;
  v11[1] = a1;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail25TensorEncodingAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_18TensorEncodingAttrEJNS_8ArrayRefIiEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v15[1] = v11;
  v14[0] = a2;
  v14[1] = a3;
  v7 = sub_10002C76C(a2, a2 + 4 * a3);
  v8 = HIDWORD(v7) ^ 0xFF51AFD7ED558CCDLL;
  v9 = 0x9DDFEA08EB382D69 * ((8 * v7 + 8) ^ v8);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,llvm::ArrayRef<int>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,llvm::ArrayRef<int>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::parse(mlir::AsmParser *a1)
{
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v43) = 0;
  v46 = 0;
  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_53;
  }

  sub_100156B78(a1, &v39);
  if (v46 == v42)
  {
    if (v46)
    {
      v2 = v39;
      if (v39 != v41)
      {
        if (v43 != v45)
        {
          free(v43);
          v2 = v39;
        }

        v43 = v2;
        v44 = v40;
        v39 = v41;
        v40 = 0;
        if (v42 != 1)
        {
          goto LABEL_29;
        }

LABEL_27:
        if (v39 != v41)
        {
          free(v39);
        }

        goto LABEL_29;
      }

      v4 = v40;
      v5 = v44;
      if (v44 >= v40)
      {
        if (v40)
        {
          memmove(v43, v39, 4 * v40);
        }

LABEL_64:
        LODWORD(v44) = v4;
        LODWORD(v40) = 0;
        if (v42 != 1)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

      if (HIDWORD(v44) >= v40)
      {
        if (v44)
        {
          memmove(v43, v39, 4 * v44);
          goto LABEL_62;
        }
      }

      else
      {
        LODWORD(v44) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, v40, 4);
      }

      v5 = 0;
LABEL_62:
      v25 = v40 - v5;
      if (v25)
      {
        memcpy(&v43[4 * v5], &v39[4 * v5], 4 * v25);
      }

      goto LABEL_64;
    }

LABEL_26:
    if (v42 != 1)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (!v46)
  {
    v43 = v45;
    v44 = 0xC00000000;
    v3 = v40;
    if (v40)
    {
      if (v39 == v41)
      {
        v6 = v40;
        if (v40 < 0xD || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, v40, 4), (v6 = v40) != 0))
        {
          memcpy(v43, v39, 4 * v6);
        }

        LODWORD(v44) = v3;
      }

      else
      {
        v43 = v39;
        v44 = v40;
        v39 = v41;
        HIDWORD(v40) = 0;
      }

      LODWORD(v40) = 0;
    }

    v46 = 1;
    goto LABEL_26;
  }

  if (v43 != v45)
  {
    free(v43);
  }

  v46 = 0;
  if (v42 == 1)
  {
    goto LABEL_27;
  }

LABEL_29:
  v7 = *a1;
  if ((v46 & 1) == 0)
  {
    v16 = (*(v7 + 40))(a1);
    v41[8] = 259;
    (*(*a1 + 24))(v30, a1, v16, &v39);
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v36;
        v19 = __p;
        if (v36 != __p)
        {
          do
          {
            v18 = sub_100052FFC(v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v36 = v17;
        operator delete(v19);
      }

      v20 = v33;
      if (v33)
      {
        v21 = v34;
        v22 = v33;
        if (v34 != v33)
        {
          do
          {
            v23 = *--v21;
            *v21 = 0;
            if (v23)
            {
              operator delete[]();
            }
          }

          while (v21 != v20);
          v22 = v33;
        }

        v34 = v20;
        operator delete(v22);
      }

      if (v31 != &v32)
      {
        free(v31);
      }
    }

LABEL_53:
    result = 0;
    if (v46 != 1)
    {
      return result;
    }

    goto LABEL_54;
  }

  if (((*(v7 + 296))(a1) & 1) == 0)
  {
    goto LABEL_53;
  }

  Context = mlir::AsmParser::getContext(a1);
  v9 = v43;
  v10 = v44;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v26[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id;
  v26[1] = Context;
  v39 = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail25TensorEncodingAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_18TensorEncodingAttrEJNS_8ArrayRefIiEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v40 = v26;
  v29[0] = v9;
  v29[1] = v10;
  v12 = sub_10002C76C(v9, &v9[4 * v10]);
  v13 = HIDWORD(v12) ^ 0xFF51AFD7ED558CCDLL;
  v14 = 0x9DDFEA08EB382D69 * ((8 * v12 + 8) ^ v13);
  v27[0] = v29;
  v27[1] = &v39;
  v28 = v29;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) >> 32) >> 15) ^ (-348639895 * (v13 ^ (v14 >> 47) ^ v14))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,llvm::ArrayRef<int>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v28, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,llvm::ArrayRef<int>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v27);
  if (v46 != 1)
  {
    return result;
  }

LABEL_54:
  if (v43 != v45)
  {
    v24 = result;
    free(v43);
    return v24;
  }

  return result;
}

void sub_100156B78(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __src = v10;
  v9 = 0xC00000000;
  if (((*(*a1 + 392))() & 1) == 0)
  {
    v4 = 0;
    *a2 = 0;
    goto LABEL_7;
  }

  *a2 = a2 + 16;
  *(a2 + 8) = 0xC00000000;
  v3 = v9;
  v4 = 1;
  if (!v9 || &__src == a2)
  {
LABEL_7:
    *(a2 + 64) = v4;
    v6 = __src;
    if (__src == v10)
    {
      return;
    }

    goto LABEL_8;
  }

  if (__src == v10)
  {
    v7 = v9;
    if (v9 < 0xD || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v9, 4), (v7 = v9) != 0))
    {
      memcpy(*a2, __src, 4 * v7);
    }

    *(a2 + 8) = v3;
  }

  else
  {
    *a2 = __src;
    v5 = HIDWORD(v9);
    *(a2 + 8) = v3;
    *(a2 + 12) = v5;
    __src = v10;
    HIDWORD(v9) = 0;
  }

  LODWORD(v9) = 0;
  *(a2 + 64) = 1;
  v6 = __src;
  if (__src != v10)
  {
LABEL_8:
    free(v6);
  }
}

void *mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::print(mlir::ODIE::Compiler::CoreML::TensorEncodingAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++v4[4];
  }

  sub_100156E10(a2, *(*this + 8), *(*this + 16));
  result = (*(*a2 + 16))(a2);
  v7 = result[4];
  if (result[3] == v7)
  {

    return llvm::raw_ostream::write(result, ")", 1uLL);
  }

  else
  {
    *v7 = 41;
    ++result[4];
  }

  return result;
}

llvm::raw_ostream *sub_100156E10(llvm::raw_ostream *result, int *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = result;
    v6 = (*(*result + 16))(result);
    result = llvm::raw_ostream::operator<<(v6, *a2);
    if (a3 != 1)
    {
      v7 = 4 * a3;
      v8 = a2 + 1;
      v9 = v7 - 4;
      do
      {
        v12 = (*(*v5 + 16))(v5);
        v13 = v12[4];
        if (v12[3] - v13 <= 1uLL)
        {
          llvm::raw_ostream::write(v12, ", ", 2uLL);
        }

        else
        {
          *v13 = 8236;
          v12[4] += 2;
        }

        v10 = (*(*v5 + 16))(v5);
        v11 = *v8++;
        result = llvm::raw_ostream::operator<<(v10, v11);
        v9 -= 4;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(mlir::MLIRContext *a1, _DWORD *a2, uint64_t a3)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id;
  v11[1] = a1;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail25ParamDeclArrayAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_18ParamDeclArrayAttrEJNS_8ArrayRefINS4_13ParamDeclAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v15[1] = v11;
  v14[0] = a2;
  v14[1] = a3;
  v7 = sub_1000D6708(a2, &a2[2 * a3]);
  v8 = HIDWORD(v7) ^ 0xFF51AFD7ED558CCDLL;
  v9 = 0x9DDFEA08EB382D69 * ((8 * v7 + 8) ^ v8);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::parse(mlir::AsmParser *a1)
{
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v49) = 0;
  v52 = 0;
  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_68;
  }

  if (((*(*a1 + 336))(a1) & 1) == 0)
  {
    sub_1001576B4(a1, &v45);
    if (v52 == v48)
    {
      if (v52)
      {
        v6 = v45;
        if (v45 != v47)
        {
          if (v49 != v51)
          {
            free(v49);
            v6 = v45;
          }

          v49 = v6;
          v50 = v46;
          v45 = v47;
          v46 = 0;
          if (v48 != 1)
          {
            goto LABEL_45;
          }

          goto LABEL_43;
        }

        v14 = v46;
        v15 = v50;
        if (v50 >= v46)
        {
          if (v46)
          {
            memmove(v49, v45, 8 * v46);
          }

LABEL_79:
          LODWORD(v50) = v14;
          LODWORD(v46) = 0;
          if (v48 != 1)
          {
            goto LABEL_45;
          }

          goto LABEL_43;
        }

        if (HIDWORD(v50) >= v46)
        {
          if (v50)
          {
            memmove(v49, v45, 8 * v50);
            goto LABEL_77;
          }
        }

        else
        {
          LODWORD(v50) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v51, v46, 8);
        }

        v15 = 0;
LABEL_77:
        v27 = v46 - v15;
        if (v27)
        {
          memcpy(&v49[8 * v15], &v45[8 * v15], 8 * v27);
        }

        goto LABEL_79;
      }
    }

    else
    {
      if (v52)
      {
        if (v49 != v51)
        {
          free(v49);
        }

        v52 = 0;
        if (v48 != 1)
        {
LABEL_45:
          v17 = *a1;
          if (v52)
          {
            if ((*(v17 + 328))(a1))
            {
              goto LABEL_3;
            }
          }

          else
          {
            v18 = (*(v17 + 40))(a1);
            v47[8] = 259;
            (*(*a1 + 24))(v36, a1, v18, &v45);
            if (v36[0])
            {
              mlir::InFlightDiagnostic::report(v36);
            }

            if (v44 == 1)
            {
              if (v43 != &v44)
              {
                free(v43);
              }

              v19 = __p;
              if (__p)
              {
                v20 = v42;
                v21 = __p;
                if (v42 != __p)
                {
                  do
                  {
                    v20 = sub_100052FFC(v20 - 1);
                  }

                  while (v20 != v19);
                  v21 = __p;
                }

                v42 = v19;
                operator delete(v21);
              }

              v22 = v39;
              if (v39)
              {
                v23 = v40;
                v24 = v39;
                if (v40 != v39)
                {
                  do
                  {
                    v25 = *--v23;
                    *v23 = 0;
                    if (v25)
                    {
                      operator delete[]();
                    }
                  }

                  while (v23 != v22);
                  v24 = v39;
                }

                v40 = v22;
                operator delete(v24);
              }

              if (v37 != &v38)
              {
                free(v37);
              }
            }
          }

LABEL_68:
          ParametricStorageTypeImpl = 0;
          if (v52 != 1)
          {
            return ParametricStorageTypeImpl;
          }

          goto LABEL_69;
        }

LABEL_43:
        if (v45 != v47)
        {
          free(v45);
        }

        goto LABEL_45;
      }

      v49 = v51;
      v50 = 0x600000000;
      v8 = v46;
      if (v46)
      {
        if (v45 == v47)
        {
          v16 = v46;
          if (v46 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v51, v46, 8), (v16 = v46) != 0))
          {
            memcpy(v49, v45, 8 * v16);
          }

          LODWORD(v50) = v8;
        }

        else
        {
          v49 = v45;
          v50 = v46;
          v45 = v47;
          HIDWORD(v46) = 0;
        }

        LODWORD(v46) = 0;
      }

      v52 = 1;
    }

    if (v48 != 1)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

LABEL_3:
  Context = mlir::AsmParser::getContext(a1);
  v33 = v35;
  v34 = 0x600000000;
  v45 = v47;
  v46 = 0x600000000;
  if (v52 != 1 || (v3 = v50, !v50))
  {
    v3 = 0;
    v7 = v47;
    goto LABEL_27;
  }

  if (v50 < 7)
  {
    v5 = v47;
    v4 = v50;
    goto LABEL_25;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v47, v50, 8);
  v4 = v50;
  if (v50)
  {
    v5 = v45;
LABEL_25:
    memcpy(v5, v49, 8 * v4);
  }

  LODWORD(v46) = v3;
  v7 = v45;
LABEL_27:
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v28[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id;
  v28[1] = Context;
  v32[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail25ParamDeclArrayAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_18ParamDeclArrayAttrEJNS_8ArrayRefINS4_13ParamDeclAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v32[1] = v28;
  v31[0] = v7;
  v31[1] = v3;
  v10 = sub_1000D6708(v7, &v7[8 * v3]);
  v11 = HIDWORD(v10) ^ 0xFF51AFD7ED558CCDLL;
  v12 = 0x9DDFEA08EB382D69 * ((8 * v10 + 8) ^ v11);
  v29[0] = v31;
  v29[1] = v32;
  v30 = v31;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 32) >> 15) ^ (-348639895 * (v11 ^ (v12 >> 47) ^ v12))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v30, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v29);
  if (v45 != v47)
  {
    free(v45);
  }

  if (v33 != v35)
  {
    free(v33);
  }

  if (v52 == 1)
  {
LABEL_69:
    if (v49 != v51)
    {
      free(v49);
    }
  }

  return ParametricStorageTypeImpl;
}

void sub_1001576B4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __src = v10;
  v9 = 0x600000000;
  if (((*(*a1 + 392))() & 1) == 0)
  {
    v4 = 0;
    *a2 = 0;
    goto LABEL_7;
  }

  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v3 = v9;
  v4 = 1;
  if (!v9 || &__src == a2)
  {
LABEL_7:
    *(a2 + 64) = v4;
    v6 = __src;
    if (__src == v10)
    {
      return;
    }

    goto LABEL_8;
  }

  if (__src == v10)
  {
    v7 = v9;
    if (v9 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v9, 8), (v7 = v9) != 0))
    {
      memcpy(*a2, __src, 8 * v7);
    }

    *(a2 + 8) = v3;
  }

  else
  {
    *a2 = __src;
    v5 = HIDWORD(v9);
    *(a2 + 8) = v3;
    *(a2 + 12) = v5;
    __src = v10;
    HIDWORD(v9) = 0;
  }

  LODWORD(v9) = 0;
  *(a2 + 64) = 1;
  v6 = __src;
  if (__src != v10)
  {
LABEL_8:
    free(v6);
  }
}

void *mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::print(mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "[", 1uLL);
    v6 = *this;
    v7 = *(*this + 16);
    if (v7)
    {
LABEL_3:
      v8 = *(v6 + 8);
      v9 = (*(*a2 + 16))(a2);
      v12[0] = ", ";
      v12[1] = 2;
      sub_1001D1198(v8, (v8 + 8 * v7), a2, v9, v12);
      result = (*(*a2 + 16))(a2);
      v11 = result[4];
      if (result[3] == v11)
      {
        return llvm::raw_ostream::write(result, "]", 1uLL);
      }

      goto LABEL_7;
    }
  }

  else
  {
    *v5 = 91;
    ++v4[4];
    v6 = *this;
    v7 = *(*this + 16);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  result = (*(*a2 + 16))(a2);
  v11 = result[4];
  if (result[3] != v11)
  {
LABEL_7:
    *v11 = 93;
    ++result[4];
    return result;
  }

  return llvm::raw_ostream::write(result, "]", 1uLL);
}

uint64_t mlir::ODIE::Compiler::CoreML::IntentAttr::get(mlir::MLIRContext *a1, unint64_t a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail17IntentAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_10IntentAttrEJNS4_6IntentEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v12[1] = v8;
  v11 = a2;
  v5 = HIDWORD(a2) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * ((8 * a2 + 8) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage,mlir::ODIE::Compiler::CoreML::Intent>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Intent &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage,mlir::ODIE::Compiler::CoreML::Intent>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Intent &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::ODIE::Compiler::CoreML::IntentAttr::parse(mlir::AsmParser *a1)
{
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = (*(*a1 + 40))(a1);
  v87 = 0;
  v88 = 0;
  if (!sub_100065D14(a1, &v87))
  {
LABEL_47:
    v67 = (*(*a1 + 40))(a1);
    LOWORD(v104) = 259;
    (*(*a1 + 24))(v93, a1, v67, v102);
    if (v93[0])
    {
      mlir::InFlightDiagnostic::report(v93);
    }

    if (v101 == 1)
    {
      if (v100 != &v101)
      {
        free(v100);
      }

      v68 = v98;
      if (v98)
      {
        v69 = v99;
        v70 = v98;
        if (v99 != v98)
        {
          do
          {
            v69 = sub_100052FFC(v69 - 1);
          }

          while (v69 != v68);
          v70 = v98;
        }

        v99 = v68;
        operator delete(v70);
      }

      v71 = v96;
      if (v96)
      {
        v72 = v97;
        v73 = v96;
        if (v97 != v96)
        {
          do
          {
            v74 = *--v72;
            *v72 = 0;
            if (v74)
            {
              operator delete[]();
            }
          }

          while (v72 != v71);
          v73 = v96;
        }

        v97 = v71;
        operator delete(v73);
      }

      if (v94 != &v95)
      {
        free(v94);
      }
    }

    return 0;
  }

  v3 = mlir::ODIE::Compiler::CoreML::symbolizeIntent(v87, v88);
  if ((v4 & 1) == 0)
  {
    v86 = 257;
    (*(*a1 + 24))(v102, a1, v2, v85);
    if (v102[0])
    {
      LODWORD(v89) = 3;
      v90 = "expected ";
      v91 = 9;
      v11 = &v89;
      v12 = v103;
      if (v104 >= v105)
      {
        if (v103 <= &v89 && v103 + 24 * v104 > &v89)
        {
          v75 = &v89 - v103;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v104 + 1, 24);
          v12 = v103;
          v11 = (v103 + v75);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v104 + 1, 24);
          v11 = &v89;
          v12 = v103;
        }
      }

      v13 = &v12[24 * v104];
      v14 = *v11;
      *(v13 + 2) = v11[2];
      *v13 = v14;
      v15 = ++v104;
      if (v102[0])
      {
        LODWORD(v89) = 3;
        v90 = "mlir::ODIE::Compiler::CoreML::Intent";
        v91 = 36;
        v16 = &v89;
        v17 = v103;
        if (v15 >= v105)
        {
          if (v103 <= &v89 && v103 + 24 * v15 > &v89)
          {
            v76 = &v89 - v103;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v15 + 1, 24);
            v17 = v103;
            v16 = (v103 + v76);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v15 + 1, 24);
            v16 = &v89;
            v17 = v103;
          }
        }

        v18 = &v17[24 * v104];
        v19 = *v16;
        *(v18 + 2) = v16[2];
        *v18 = v19;
        v20 = ++v104;
        if (v102[0])
        {
          LODWORD(v89) = 3;
          v90 = " to be one of: ";
          v91 = 15;
          v21 = &v89;
          v22 = v103;
          if (v20 >= v105)
          {
            if (v103 <= &v89 && v103 + 24 * v20 > &v89)
            {
              v77 = &v89 - v103;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v20 + 1, 24);
              v22 = v103;
              v21 = (v103 + v77);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v20 + 1, 24);
              v21 = &v89;
              v22 = v103;
            }
          }

          v23 = &v22[24 * v104];
          v24 = *v21;
          *(v23 + 2) = v21[2];
          *v23 = v24;
          v25 = ++v104;
          if (v102[0])
          {
            LODWORD(v89) = 3;
            v90 = "out";
            v91 = 3;
            v26 = &v89;
            v27 = v103;
            if (v25 >= v105)
            {
              if (v103 <= &v89 && v103 + 24 * v25 > &v89)
              {
                v78 = &v89 - v103;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v25 + 1, 24);
                v27 = v103;
                v26 = (v103 + v78);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v25 + 1, 24);
                v26 = &v89;
                v27 = v103;
              }
            }

            v28 = &v27[24 * v104];
            v29 = *v26;
            *(v28 + 2) = v26[2];
            *v28 = v29;
            v30 = ++v104;
            if (v102[0])
            {
              LODWORD(v89) = 3;
              v90 = ", ";
              v91 = 2;
              v31 = &v89;
              v32 = v103;
              if (v30 >= v105)
              {
                if (v103 <= &v89 && v103 + 24 * v30 > &v89)
                {
                  v79 = &v89 - v103;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v30 + 1, 24);
                  v32 = v103;
                  v31 = (v103 + v79);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v30 + 1, 24);
                  v31 = &v89;
                  v32 = v103;
                }
              }

              v33 = &v32[24 * v104];
              v34 = *v31;
              *(v33 + 2) = v31[2];
              *v33 = v34;
              v35 = ++v104;
              if (v102[0])
              {
                LODWORD(v89) = 3;
                v90 = "inout";
                v91 = 5;
                v36 = &v89;
                v37 = v103;
                if (v35 >= v105)
                {
                  if (v103 <= &v89 && v103 + 24 * v35 > &v89)
                  {
                    v80 = &v89 - v103;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v35 + 1, 24);
                    v37 = v103;
                    v36 = (v103 + v80);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v35 + 1, 24);
                    v36 = &v89;
                    v37 = v103;
                  }
                }

                v38 = &v37[24 * v104];
                v39 = *v36;
                *(v38 + 2) = v36[2];
                *v38 = v39;
                v40 = ++v104;
                if (v102[0])
                {
                  LODWORD(v89) = 3;
                  v90 = ", ";
                  v91 = 2;
                  v41 = &v89;
                  v42 = v103;
                  if (v40 >= v105)
                  {
                    if (v103 <= &v89 && v103 + 24 * v40 > &v89)
                    {
                      v81 = &v89 - v103;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v40 + 1, 24);
                      v42 = v103;
                      v41 = (v103 + v81);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v40 + 1, 24);
                      v41 = &v89;
                      v42 = v103;
                    }
                  }

                  v43 = &v42[24 * v104];
                  v44 = *v41;
                  *(v43 + 2) = v41[2];
                  *v43 = v44;
                  v45 = ++v104;
                  if (v102[0])
                  {
                    LODWORD(v89) = 3;
                    v90 = "return";
                    v91 = 6;
                    v46 = &v89;
                    v47 = v103;
                    if (v45 >= v105)
                    {
                      if (v103 <= &v89 && v103 + 24 * v45 > &v89)
                      {
                        v82 = &v89 - v103;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v45 + 1, 24);
                        v47 = v103;
                        v46 = (v103 + v82);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v45 + 1, 24);
                        v46 = &v89;
                        v47 = v103;
                      }
                    }

                    v48 = &v47[24 * v104];
                    v49 = *v46;
                    *(v48 + 2) = v46[2];
                    *v48 = v49;
                    v50 = ++v104;
                    if (v102[0])
                    {
                      LODWORD(v89) = 3;
                      v90 = ", ";
                      v91 = 2;
                      v51 = &v89;
                      v52 = v103;
                      if (v50 >= v105)
                      {
                        if (v103 <= &v89 && v103 + 24 * v50 > &v89)
                        {
                          v83 = &v89 - v103;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v50 + 1, 24);
                          v52 = v103;
                          v51 = (v103 + v83);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v50 + 1, 24);
                          v51 = &v89;
                          v52 = v103;
                        }
                      }

                      v53 = &v52[24 * v104];
                      v54 = *v51;
                      *(v53 + 2) = v51[2];
                      *v53 = v54;
                      v55 = ++v104;
                      if (v102[0])
                      {
                        LODWORD(v89) = 3;
                        v90 = "in";
                        v91 = 2;
                        v56 = &v89;
                        v57 = v103;
                        if (v55 >= v105)
                        {
                          if (v103 <= &v89 && v103 + 24 * v55 > &v89)
                          {
                            v84 = &v89 - v103;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v55 + 1, 24);
                            v57 = v103;
                            v56 = (v103 + v84);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v55 + 1, 24);
                            v56 = &v89;
                            v57 = v103;
                          }
                        }

                        v58 = &v57[24 * v104];
                        v59 = *v56;
                        *(v58 + 2) = v56[2];
                        *v58 = v59;
                        ++v104;
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

    mlir::InFlightDiagnostic::operator llvm::LogicalResult(v102);
    if (v102[0])
    {
      mlir::InFlightDiagnostic::report(v102);
    }

    if (v112 == 1)
    {
      if (v111 != &v112)
      {
        free(v111);
      }

      v60 = __p;
      if (__p)
      {
        v61 = v110;
        v62 = __p;
        if (v110 != __p)
        {
          do
          {
            v61 = sub_100052FFC(v61 - 1);
          }

          while (v61 != v60);
          v62 = __p;
        }

        v110 = v60;
        operator delete(v62);
      }

      v63 = v107;
      if (v107)
      {
        v64 = v108;
        v65 = v107;
        if (v108 != v107)
        {
          do
          {
            v66 = *--v64;
            *v64 = 0;
            if (v66)
            {
              operator delete[]();
            }
          }

          while (v64 != v63);
          v65 = v107;
        }

        v108 = v63;
        operator delete(v65);
      }

      if (v103 != v106)
      {
        free(v103);
      }
    }

    goto LABEL_47;
  }

  v5 = v3;
  if ((*(*a1 + 168))(a1))
  {
    Context = mlir::AsmParser::getContext(a1);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v89 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id;
    v90 = Context;
    v102[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail17IntentAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_10IntentAttrEJNS4_6IntentEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
    v102[1] = &v89;
    v87 = v5;
    v8 = HIDWORD(v5) ^ 0xFF51AFD7ED558CCDLL;
    v9 = 0x9DDFEA08EB382D69 * ((8 * v5 + 8) ^ v8);
    v92 = &v87;
    v85[0] = &v87;
    v85[1] = v102;
    return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage,mlir::ODIE::Compiler::CoreML::Intent>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Intent &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v92, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage,mlir::ODIE::Compiler::CoreML::Intent>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Intent &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v85);
  }

  return 0;
}

void *mlir::ODIE::Compiler::CoreML::IntentAttr::print(mlir::ODIE::Compiler::CoreML::IntentAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
    v6 = *(*this + 8);
    if (v6 <= 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v5 = 60;
    ++v4[4];
    v6 = *(*this + 8);
    if (v6 <= 1)
    {
LABEL_3:
      if (v6)
      {
        if (v6 == 1)
        {
          v7 = 0;
          v8 = "inout";
          v9 = 5;
          goto LABEL_13;
        }

LABEL_10:
        v9 = 0;
        v8 = "";
        v7 = 1;
        goto LABEL_13;
      }

      v7 = 0;
      v8 = "out";
      v9 = 3;
      goto LABEL_13;
    }
  }

  if (v6 != 2)
  {
    if (v6 == 3)
    {
      v7 = 0;
      v8 = "in";
      v9 = 2;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v7 = 0;
  v8 = "return";
  v9 = 6;
LABEL_13:
  v10 = (*(*a2 + 16))(a2);
  if (v9 <= *(v10 + 24) - *(v10 + 32))
  {
    if ((v7 & 1) == 0)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v8, v9);
      *(v11 + 32) += v9;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v8, v9);
  }

  result = (*(*a2 + 16))(a2);
  v13 = result[4];
  if (result[3] == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++result[4];
  }

  return result;
}

const char *mlir::ODIE::Compiler::CoreML::stringifyIntent(unint64_t a1)
{
  if (a1 > 3)
  {
    return "";
  }

  else
  {
    return (&off_1002BDCF0)[a1];
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::TargetSpecAttr::parse(mlir::AsmParser *a1)
{
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v98) = 0;
  v101 = 0;
  LOBYTE(v94) = 0;
  v97 = 0;
  LOBYTE(__p) = 0;
  v93 = 0;
  if ((*(*a1 + 152))(a1))
  {
    v88 = 0;
    v89 = 0;
    if (!sub_100065D14(a1, &v88))
    {
LABEL_109:
      v26 = (*(*a1 + 40))(a1);
      v144 = "expected a parameter name in struct";
      WORD4(v146) = 259;
      (*(*a1 + 24))(v104, a1, v26, &v144);
      if (v104[0])
      {
        mlir::InFlightDiagnostic::report(v104);
      }

      if (v110 == 1)
      {
        if (v109 != &v110)
        {
          free(v109);
        }

        v27 = v107;
        if (v107)
        {
          v28 = v108;
          v29 = v107;
          if (v108 != v107)
          {
            do
            {
              v28 = sub_100052FFC(v28 - 1);
            }

            while (v28 != v27);
            v29 = v107;
          }

          v108 = v27;
          operator delete(v29);
        }

        v30 = v105;
        if (v105)
        {
          v31 = v106;
          v32 = v105;
          if (v106 != v105)
          {
            do
            {
              v33 = *--v31;
              *v31 = 0;
              if (v33)
              {
                operator delete[]();
              }
            }

            while (v31 != v30);
            v32 = v105;
          }

          v106 = v30;
          operator delete(v32);
        }

        v34 = v104[3];
        v35 = v104;
LABEL_128:
        if (v34 != v35 + 5)
        {
          free(v34);
        }
      }

      goto LABEL_130;
    }

    v84 = 0;
    v85 = 0;
    v4 = 0;
    v5 = 0;
    v81 = 0;
    v82 = 0;
    v6 = 0;
    v87 = 0;
    v7 = 0;
    v8 = 5;
    v86 = v3;
    v83 = v3;
    while (1)
    {
      v9 = v88;
      v10 = v89;
      if (((*(*a1 + 136))(a1) & 1) == 0)
      {
        break;
      }

      if (!(v5 & 1 | (v10 != 6)))
      {
        if (*v9 != 1885958772 || *(v9 + 4) != 25964)
        {
          v10 = 6;
          goto LABEL_212;
        }

        v111 = 0;
        v112 = 0uLL;
        if (sub_100163AAC(a1, &v111))
        {
          v16 = v111;
          *&v156 = v112;
          *(&v156 + 7) = *(&v112 + 7);
          v17 = 1;
          v10 = HIBYTE(v112);
          if (v6 != 1)
          {
            goto LABEL_28;
          }

LABEL_45:
          if (v6)
          {
            if ((v1 & 0x80) != 0)
            {
              operator delete(v98);
            }

            v98 = v16;
            *v99 = v156;
            *&v99[7] = *(&v156 + 7);
            v100 = v10;
            goto LABEL_53;
          }
        }

        else
        {
          if (SHIBYTE(v112) < 0)
          {
            operator delete(v111);
            v17 = 0;
            v16 = 0;
            if (!v6)
            {
              goto LABEL_45;
            }
          }

          else
          {
            v17 = 0;
            v16 = 0;
            if (!v6)
            {
              goto LABEL_45;
            }
          }

LABEL_28:
          if ((v6 & 1) == 0)
          {
            v98 = v16;
            *v99 = v156;
            *&v99[7] = *(&v156 + 7);
            v100 = v10;
            v6 = 1;
            v101 = 1;
            v1 = v10;
            v5 = 1;
            if (!--v8)
            {
              goto LABEL_140;
            }

            goto LABEL_107;
          }

          if ((v1 & 0x80) != 0)
          {
            operator delete(v98);
          }

          v6 = 0;
          v101 = 0;
        }

        if (v17 && (v10 & 0x80) != 0)
        {
          operator delete(v16);
        }

        v10 = v1;
LABEL_53:
        if ((v6 & 1) == 0)
        {
          v47 = (*(*a1 + 40))(a1);
          v114 = 259;
          (*(*a1 + 24))(&v144, a1, v47, &v111);
          if (v144)
          {
            mlir::InFlightDiagnostic::report(&v144);
          }

          if (v155 == 1)
          {
            if (v154 != &v155)
            {
              free(v154);
            }

            v48 = v152;
            if (v152)
            {
              v49 = v153;
              v50 = v152;
              if (v153 != v152)
              {
                do
                {
                  v49 = sub_100052FFC(v49 - 1);
                }

                while (v49 != v48);
                v50 = v152;
              }

              v153 = v48;
              operator delete(v50);
            }

            v51 = v150;
            if (v150)
            {
              v52 = v151;
              v53 = v150;
              if (v151 != v150)
              {
                do
                {
                  v54 = *--v52;
                  *v52 = 0;
                  if (v54)
                  {
                    operator delete[]();
                  }
                }

                while (v52 != v51);
                v53 = v150;
              }

              v151 = v51;
              operator delete(v53);
            }

            v34 = v146;
            v35 = &v144;
            goto LABEL_128;
          }

          break;
        }

        v5 = 1;
        v1 = v10;
        if (!--v8)
        {
          goto LABEL_140;
        }

        goto LABEL_107;
      }

      if (!(v4 & 1 | (v10 != 3)))
      {
        if (*v9 != 28531 || *(v9 + 2) != 99)
        {
          v10 = 3;
          goto LABEL_212;
        }

        v111 = 0;
        v112 = 0uLL;
        if (sub_100163AAC(a1, &v111))
        {
          v19 = v111;
          *&v156 = v112;
          *(&v156 + 7) = *(&v112 + 7);
          v20 = 1;
          v10 = HIBYTE(v112);
          v21 = v87;
          if (v87 != 1)
          {
            goto LABEL_39;
          }

LABEL_69:
          if (v21)
          {
            if ((v86 & 0x80) != 0)
            {
              operator delete(v94);
            }

            v94 = v19;
            *v95 = v156;
            *&v95[7] = *(&v156 + 7);
            v96 = v10;
            goto LABEL_77;
          }
        }

        else
        {
          if (SHIBYTE(v112) < 0)
          {
            operator delete(v111);
          }

          v20 = 0;
          v19 = 0;
          v21 = v87;
          if (!v87)
          {
            goto LABEL_69;
          }

LABEL_39:
          if ((v21 & 1) == 0)
          {
            v94 = v19;
            *v95 = v156;
            *&v95[7] = *(&v156 + 7);
            v96 = v10;
            v87 = 1;
            v97 = 1;
            v86 = v10;
            v4 = 1;
            if (!--v8)
            {
              goto LABEL_140;
            }

            goto LABEL_107;
          }

          if ((v86 & 0x80) != 0)
          {
            operator delete(v94);
          }

          v87 = 0;
          v97 = 0;
        }

        if (v20 && (v10 & 0x80) != 0)
        {
          operator delete(v19);
        }

        v10 = v86;
LABEL_77:
        if ((v87 & 1) == 0)
        {
          v55 = (*(*a1 + 40))(a1);
          v114 = 259;
          (*(*a1 + 24))(v132, a1, v55, &v111);
          if (v132[0])
          {
            mlir::InFlightDiagnostic::report(v132);
          }

          if (v143 == 1)
          {
            if (v142 != &v143)
            {
              free(v142);
            }

            v56 = v140;
            if (v140)
            {
              v57 = v141;
              v58 = v140;
              if (v141 != v140)
              {
                do
                {
                  v57 = sub_100052FFC(v57 - 1);
                }

                while (v57 != v56);
                v58 = v140;
              }

              v141 = v56;
              operator delete(v58);
            }

            v59 = v138;
            if (v138)
            {
              v60 = v139;
              v61 = v138;
              if (v139 != v138)
              {
                do
                {
                  v62 = *--v60;
                  *v60 = 0;
                  if (v62)
                  {
                    operator delete[]();
                  }
                }

                while (v60 != v59);
                v61 = v138;
              }

              v139 = v59;
              operator delete(v61);
            }

            v34 = v134;
            v35 = v132;
            goto LABEL_128;
          }

          break;
        }

        v4 = 1;
        v86 = v10;
        if (!--v8)
        {
          goto LABEL_140;
        }

        goto LABEL_107;
      }

      if (!(BYTE4(v85) & 1 | (v10 != 10)))
      {
        if (*v9 != 0x6F79614C61746164 || *(v9 + 8) != 29813)
        {
          v10 = 10;
          goto LABEL_212;
        }

        Context = mlir::AsmParser::getContext(a1);
        mlir::MLIRContext::getOrLoadDialect(Context, "builtin", 7);
        v111 = 0;
        if (!sub_100163CB0(a1, &v111, 0))
        {
          v63 = (*(*a1 + 40))(a1);
          v114 = 259;
          (*(*a1 + 24))(v125, a1, v63, &v111);
          if (v125[0])
          {
            mlir::InFlightDiagnostic::report(v125);
          }

          if (v131 == 1)
          {
            if (v130 != &v131)
            {
              free(v130);
            }

            v64 = v128;
            if (v128)
            {
              v65 = v129;
              v66 = v128;
              if (v129 != v128)
              {
                do
                {
                  v65 = sub_100052FFC(v65 - 1);
                }

                while (v65 != v64);
                v66 = v128;
              }

              v129 = v64;
              operator delete(v66);
            }

            v67 = v126;
            if (v126)
            {
              v68 = v127;
              v69 = v126;
              if (v127 != v126)
              {
                do
                {
                  v70 = *--v68;
                  *v68 = 0;
                  if (v70)
                  {
                    operator delete[]();
                  }
                }

                while (v68 != v67);
                v69 = v126;
              }

              v127 = v67;
              operator delete(v69);
            }

            v34 = v125[3];
            v35 = v125;
            goto LABEL_128;
          }

          break;
        }

        v84 = v111;
        BYTE4(v85) = 1;
        if (!--v8)
        {
          goto LABEL_140;
        }

        goto LABEL_107;
      }

      if (!(v85 & 1 | (v10 != 15)))
      {
        if (*v9 != 0x65746167656C6564 || *(v9 + 7) != 0x736E6F6974704F65)
        {
          v10 = 15;
          goto LABEL_212;
        }

        v25 = mlir::AsmParser::getContext(a1);
        mlir::MLIRContext::getOrLoadDialect(v25, "builtin", 7);
        v111 = 0;
        if (!sub_100163CB0(a1, &v111, 0))
        {
          v79 = (*(*a1 + 40))(a1);
          v114 = 259;
          (*(*a1 + 24))(&v122, a1, v79, &v111);
          if (v122)
          {
            mlir::InFlightDiagnostic::report(&v122);
          }

          if (v124 != 1)
          {
            break;
          }

          sub_100052F18(&v123);
          ParametricStorageTypeImpl = 0;
          if (v93 == 1)
          {
            goto LABEL_131;
          }

          goto LABEL_133;
        }

        v81 = v111;
        LOBYTE(v85) = 1;
        if (!--v8)
        {
          goto LABEL_140;
        }

        goto LABEL_107;
      }

      if (v82 & 1 | (v10 != 5))
      {
        goto LABEL_212;
      }

      if (*v9 != 1920235621 || *(v9 + 4) != 97)
      {
        v10 = 5;
LABEL_212:
        v71 = (*(*a1 + 40))(a1);
        v102 = "duplicate or unknown struct parameter name: ";
        v103 = 259;
        (*(*a1 + 24))(&v111, a1, v71, &v102);
        if (v111)
        {
          v157 = 261;
          *&v156 = v9;
          *(&v156 + 1) = v10;
          mlir::Diagnostic::operator<<(&v112, &v156);
          if (v111)
          {
            mlir::InFlightDiagnostic::report(&v111);
          }
        }

        if (v120 == 1)
        {
          if (v119 != &v120)
          {
            free(v119);
          }

          v72 = v117;
          if (v117)
          {
            v73 = v118;
            v74 = v117;
            if (v118 != v117)
            {
              do
              {
                v73 = sub_100052FFC(v73 - 1);
              }

              while (v73 != v72);
              v74 = v117;
            }

            v118 = v72;
            operator delete(v74);
          }

          v75 = v115;
          if (v115)
          {
            v76 = v116;
            v77 = v115;
            if (v116 != v115)
            {
              do
              {
                v78 = *--v76;
                *v76 = 0;
                if (v78)
                {
                  operator delete[]();
                }
              }

              while (v76 != v75);
              v77 = v115;
            }

            v116 = v75;
            operator delete(v77);
          }

          v34 = v113;
          v35 = &v111;
          goto LABEL_128;
        }

        break;
      }

      v111 = 0;
      v112 = 0uLL;
      if (sub_100163AAC(a1, &v111))
      {
        v12 = v111;
        *&v156 = v112;
        *(&v156 + 7) = *(&v112 + 7);
        v13 = 1;
        v10 = HIBYTE(v112);
        v14 = v7;
        if (v7 != 1)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (SHIBYTE(v112) < 0)
        {
          operator delete(v111);
        }

        v12 = 0;
        v13 = 0;
        v14 = v7;
        if (v7)
        {
LABEL_17:
          if ((v14 & 1) == 0)
          {
            __p = v12;
            *v91 = v156;
            *&v91[7] = *(&v156 + 7);
            v92 = v10;
            v7 = 1;
            v93 = 1;
            v83 = v10;
            v82 = 1;
            if (!--v8)
            {
              goto LABEL_140;
            }

            goto LABEL_107;
          }

          if ((v83 & 0x80) != 0)
          {
            operator delete(__p);
          }

          v7 = 0;
          v93 = 0;
LABEL_99:
          if (v13 && (v10 & 0x80) != 0)
          {
            operator delete(v12);
          }

          v10 = v83;
          goto LABEL_103;
        }
      }

      if ((v14 & 1) == 0)
      {
        goto LABEL_99;
      }

      if ((v83 & 0x80) != 0)
      {
        operator delete(__p);
      }

      __p = v12;
      *v91 = v156;
      *&v91[7] = *(&v156 + 7);
      v92 = v10;
LABEL_103:
      if ((v7 & 1) == 0)
      {
        v80 = (*(*a1 + 40))(a1);
        v114 = 259;
        (*(*a1 + 24))(v121, a1, v80, &v111);
        sub_100059A74(v121);
        ParametricStorageTypeImpl = 0;
        if (v93 == 1)
        {
          goto LABEL_131;
        }

        goto LABEL_133;
      }

      v82 = 1;
      v83 = v10;
      if (!--v8)
      {
LABEL_140:
        if (((*(*a1 + 168))(a1) & 1) == 0)
        {
          break;
        }

        v38 = mlir::AsmParser::getContext(a1);
        v39 = v38;
        if ((v1 & 0x80u) == 0)
        {
          v40 = &v98;
        }

        else
        {
          v40 = v98;
        }

        if ((v1 & 0x80u) == 0)
        {
          v1 = v1;
        }

        else
        {
          v1 = *v99;
        }

        if ((v86 & 0x80u) == 0)
        {
          v41 = &v94;
        }

        else
        {
          v41 = v94;
        }

        if ((v86 & 0x80u) == 0)
        {
          v42 = v86;
        }

        else
        {
          v42 = *v95;
        }

        if ((v83 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v83 & 0x80u) == 0)
        {
          v44 = v83;
        }

        else
        {
          v44 = *v91;
        }

        AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v38);
        v122 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id;
        v123 = v39;
        v125[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail21TargetSpecAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_14TargetSpecAttrEJNS_9StringRefESF_NS1_14DictionaryAttrESG_SF_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
        v125[1] = &v122;
        v132[0] = v40;
        v132[1] = v1;
        v133 = v41;
        v134 = v42;
        v135 = v84;
        v136 = v81;
        v137[0] = p_p;
        v137[1] = v44;
        memset(v148, 0, sizeof(v148));
        v147 = 0u;
        v146 = 0u;
        v145 = 0u;
        v149 = 0xFF51AFD7ED558CCDLL;
        v144 = llvm::hash_value(v40, v1);
        v46 = sub_1001D1A0C(&v144, 0, &v145, &v148[8], &v133, &v135, &v136, v137);
        v121[0] = v132;
        v144 = v132;
        *&v145 = v125;
        ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id, v46, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr,mlir::DictionaryAttr,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr,mlir::DictionaryAttr,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v121, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr,mlir::DictionaryAttr,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr,mlir::DictionaryAttr,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v144);
        if (v93 == 1)
        {
          goto LABEL_131;
        }

        goto LABEL_133;
      }

LABEL_107:
      if (((*(*a1 + 120))(a1) & 1) == 0)
      {
        break;
      }

      v88 = 0;
      v89 = 0;
      if (!sub_100065D14(a1, &v88))
      {
        goto LABEL_109;
      }
    }
  }

LABEL_130:
  ParametricStorageTypeImpl = 0;
  if (v93 == 1)
  {
LABEL_131:
    if (v92 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_133:
  if (v97 == 1 && v96 < 0)
  {
    operator delete(v94);
  }

  if (v101 == 1 && v100 < 0)
  {
    operator delete(v98);
  }

  return ParametricStorageTypeImpl;
}

void *mlir::ODIE::Compiler::CoreML::TargetSpecAttr::print(mlir::ODIE::Compiler::CoreML::TargetSpecAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if ((v6[3] - v7) > 8)
  {
    *(v7 + 8) = 32;
    *v7 = *"triple = ";
    v6[4] += 9;
  }

  else
  {
    llvm::raw_ostream::write(v6, "triple = ", 9uLL);
  }

  (*(*a2 + 80))(a2, *(*this + 8), *(*this + 16));
  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] - v9 > 1uLL)
  {
    *v9 = 8236;
    v8[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, ", ", 2uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = v10[4];
  if ((v10[3] - v11) > 5)
  {
    *(v11 + 4) = 8253;
    *v11 = 543387507;
    v10[4] += 6;
  }

  else
  {
    llvm::raw_ostream::write(v10, "soc = ", 6uLL);
  }

  (*(*a2 + 80))(a2, *(*this + 24), *(*this + 32));
  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if (v12[3] - v13 > 1uLL)
  {
    *v13 = 8236;
    v12[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v12, ", ", 2uLL);
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if (v14[3] - v15 > 0xCuLL)
  {
    qmemcpy(v15, "dataLayout = ", 13);
    v14[4] += 13;
  }

  else
  {
    llvm::raw_ostream::write(v14, "dataLayout = ", 0xDuLL);
  }

  (*(*a2 + 40))(a2, *(*this + 40));
  v16 = (*(*a2 + 16))(a2);
  v17 = v16[4];
  if (v16[3] - v17 > 1uLL)
  {
    *v17 = 8236;
    v16[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v16, ", ", 2uLL);
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if ((v18[3] - v19) > 0x11)
  {
    *(v19 + 16) = 8253;
    *v19 = *"delegateOptions = ";
    v18[4] += 18;
  }

  else
  {
    llvm::raw_ostream::write(v18, "delegateOptions = ", 0x12uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 48));
  v20 = (*(*a2 + 16))(a2);
  v21 = v20[4];
  if (v20[3] - v21 > 1uLL)
  {
    *v21 = 8236;
    v20[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v20, ", ", 2uLL);
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = v22[4];
  if (v22[3] - v23 > 7uLL)
  {
    *v23 = 0x203D206172747865;
    v22[4] += 8;
  }

  else
  {
    llvm::raw_ostream::write(v22, "extra = ", 8uLL);
  }

  (*(*a2 + 80))(a2, *(*this + 56), *(*this + 64));
  result = (*(*a2 + 16))(a2);
  v25 = result[4];
  if (result[3] == v25)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v25 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ApproximateAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail22ApproximateAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_15ApproximateAttrEJNS4_11ApproximateEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage,mlir::ODIE::Compiler::CoreML::Approximate>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Approximate &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage,mlir::ODIE::Compiler::CoreML::Approximate>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Approximate &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::ODIE::Compiler::CoreML::ApproximateAttr::parse(mlir::AsmParser *a1)
{
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = (*(*a1 + 40))(a1);
  v74 = 0;
  v75 = 0;
  if (!sub_100065D14(a1, &v74))
  {
LABEL_50:
    v51 = (*(*a1 + 40))(a1);
    LOWORD(v91) = 259;
    (*(*a1 + 24))(v80, a1, v51, v89);
    if (v80[0])
    {
      mlir::InFlightDiagnostic::report(v80);
    }

    if (v88 == 1)
    {
      if (v87 != &v88)
      {
        free(v87);
      }

      v52 = v85;
      if (v85)
      {
        v53 = v86;
        v54 = v85;
        if (v86 != v85)
        {
          do
          {
            v53 = sub_100052FFC(v53 - 1);
          }

          while (v53 != v52);
          v54 = v85;
        }

        v86 = v52;
        operator delete(v54);
      }

      v55 = v83;
      if (v83)
      {
        v56 = v84;
        v57 = v83;
        if (v84 != v83)
        {
          do
          {
            v58 = *--v56;
            *v56 = 0;
            if (v58)
            {
              operator delete[]();
            }
          }

          while (v56 != v55);
          v57 = v83;
        }

        v84 = v55;
        operator delete(v57);
      }

      if (v81 != &v82)
      {
        free(v81);
      }
    }

    return 0;
  }

  if (v75 != 7)
  {
    if (v75 == 4)
    {
      if (*v74 == 1701736302)
      {
        v3 = 0;
        if ((*(*a1 + 168))(a1))
        {
          goto LABEL_75;
        }

        return 0;
      }

      if (*v74 == 1752064372)
      {
        v3 = 1;
        if ((*(*a1 + 168))(a1))
        {
          goto LABEL_75;
        }

        return 0;
      }
    }

    goto LABEL_13;
  }

  if (*v74 != 1835493747 || *(v74 + 3) != 1684631405)
  {
LABEL_13:
    v73 = 257;
    (*(*a1 + 24))(v89, a1, v2, v72);
    if (v89[0])
    {
      LODWORD(v76) = 3;
      v77 = "expected ";
      v78 = 9;
      v5 = &v76;
      v6 = v90;
      if (v91 >= v92)
      {
        if (v90 <= &v76 && v90 + 24 * v91 > &v76)
        {
          v64 = &v76 - v90;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
          v6 = v90;
          v5 = (v90 + v64);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
          v5 = &v76;
          v6 = v90;
        }
      }

      v7 = &v6[24 * v91];
      v8 = *v5;
      *(v7 + 2) = v5[2];
      *v7 = v8;
      v9 = ++v91;
      if (v89[0])
      {
        LODWORD(v76) = 3;
        v77 = "mlir::ODIE::Compiler::CoreML::Approximate";
        v78 = 41;
        v10 = &v76;
        v11 = v90;
        if (v9 >= v92)
        {
          if (v90 <= &v76 && v90 + 24 * v9 > &v76)
          {
            v65 = &v76 - v90;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v9 + 1, 24);
            v11 = v90;
            v10 = (v90 + v65);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v9 + 1, 24);
            v10 = &v76;
            v11 = v90;
          }
        }

        v12 = &v11[24 * v91];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        v14 = ++v91;
        if (v89[0])
        {
          LODWORD(v76) = 3;
          v77 = " to be one of: ";
          v78 = 15;
          v15 = &v76;
          v16 = v90;
          if (v14 >= v92)
          {
            if (v90 <= &v76 && v90 + 24 * v14 > &v76)
            {
              v66 = &v76 - v90;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v14 + 1, 24);
              v16 = v90;
              v15 = (v90 + v66);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v14 + 1, 24);
              v15 = &v76;
              v16 = v90;
            }
          }

          v17 = &v16[24 * v91];
          v18 = *v15;
          *(v17 + 2) = v15[2];
          *v17 = v18;
          v19 = ++v91;
          if (v89[0])
          {
            LODWORD(v76) = 3;
            v77 = "none";
            v78 = 4;
            v20 = &v76;
            v21 = v90;
            if (v19 >= v92)
            {
              if (v90 <= &v76 && v90 + 24 * v19 > &v76)
              {
                v67 = &v76 - v90;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v19 + 1, 24);
                v21 = v90;
                v20 = (v90 + v67);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v19 + 1, 24);
                v20 = &v76;
                v21 = v90;
              }
            }

            v22 = &v21[24 * v91];
            v23 = *v20;
            *(v22 + 2) = v20[2];
            *v22 = v23;
            v24 = ++v91;
            if (v89[0])
            {
              LODWORD(v76) = 3;
              v77 = ", ";
              v78 = 2;
              v25 = &v76;
              v26 = v90;
              if (v24 >= v92)
              {
                if (v90 <= &v76 && v90 + 24 * v24 > &v76)
                {
                  v68 = &v76 - v90;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v24 + 1, 24);
                  v26 = v90;
                  v25 = (v90 + v68);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v24 + 1, 24);
                  v25 = &v76;
                  v26 = v90;
                }
              }

              v27 = &v26[24 * v91];
              v28 = *v25;
              *(v27 + 2) = v25[2];
              *v27 = v28;
              v29 = ++v91;
              if (v89[0])
              {
                LODWORD(v76) = 3;
                v77 = "tanh";
                v78 = 4;
                v30 = &v76;
                v31 = v90;
                if (v29 >= v92)
                {
                  if (v90 <= &v76 && v90 + 24 * v29 > &v76)
                  {
                    v69 = &v76 - v90;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v29 + 1, 24);
                    v31 = v90;
                    v30 = (v90 + v69);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v29 + 1, 24);
                    v30 = &v76;
                    v31 = v90;
                  }
                }

                v32 = &v31[24 * v91];
                v33 = *v30;
                *(v32 + 2) = v30[2];
                *v32 = v33;
                v34 = ++v91;
                if (v89[0])
                {
                  LODWORD(v76) = 3;
                  v77 = ", ";
                  v78 = 2;
                  v35 = &v76;
                  v36 = v90;
                  if (v34 >= v92)
                  {
                    if (v90 <= &v76 && v90 + 24 * v34 > &v76)
                    {
                      v70 = &v76 - v90;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v34 + 1, 24);
                      v36 = v90;
                      v35 = (v90 + v70);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v34 + 1, 24);
                      v35 = &v76;
                      v36 = v90;
                    }
                  }

                  v37 = &v36[24 * v91];
                  v38 = *v35;
                  *(v37 + 2) = v35[2];
                  *v37 = v38;
                  v39 = ++v91;
                  if (v89[0])
                  {
                    LODWORD(v76) = 3;
                    v77 = "sigmoid";
                    v78 = 7;
                    v40 = &v76;
                    v41 = v90;
                    if (v39 >= v92)
                    {
                      if (v90 <= &v76 && v90 + 24 * v39 > &v76)
                      {
                        v71 = &v76 - v90;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v39 + 1, 24);
                        v41 = v90;
                        v40 = (v90 + v71);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v39 + 1, 24);
                        v40 = &v76;
                        v41 = v90;
                      }
                    }

                    v42 = &v41[24 * v91];
                    v43 = *v40;
                    *(v42 + 2) = v40[2];
                    *v42 = v43;
                    ++v91;
                  }
                }
              }
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::operator llvm::LogicalResult(v89);
    if (v89[0])
    {
      mlir::InFlightDiagnostic::report(v89);
    }

    if (v99 == 1)
    {
      if (v98 != &v99)
      {
        free(v98);
      }

      v44 = __p;
      if (__p)
      {
        v45 = v97;
        v46 = __p;
        if (v97 != __p)
        {
          do
          {
            v45 = sub_100052FFC(v45 - 1);
          }

          while (v45 != v44);
          v46 = __p;
        }

        v97 = v44;
        operator delete(v46);
      }

      v47 = v94;
      if (v94)
      {
        v48 = v95;
        v49 = v94;
        if (v95 != v94)
        {
          do
          {
            v50 = *--v48;
            *v48 = 0;
            if (v50)
            {
              operator delete[]();
            }
          }

          while (v48 != v47);
          v49 = v94;
        }

        v95 = v47;
        operator delete(v49);
      }

      if (v90 != v93)
      {
        free(v90);
      }
    }

    goto LABEL_50;
  }

  v3 = 2;
  if ((*(*a1 + 168))(a1))
  {
LABEL_75:
    Context = mlir::AsmParser::getContext(a1);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v76 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id;
    v77 = Context;
    v89[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail22ApproximateAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_15ApproximateAttrEJNS4_11ApproximateEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
    v89[1] = &v76;
    v79 = v3;
    v62 = v3 ^ 0xFF51AFD7ED558CCDLL;
    v63 = 0x9DDFEA08EB382D69 * (((8 * v3) | 4) ^ v62);
    v74 = &v79;
    v72[0] = &v79;
    v72[1] = v89;
    return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) >> 32) >> 15) ^ (-348639895 * (v62 ^ (v63 >> 47) ^ v63))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage,mlir::ODIE::Compiler::CoreML::Approximate>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Approximate &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v74, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage,mlir::ODIE::Compiler::CoreML::Approximate>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Approximate &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v72);
  }

  return 0;
}

void *mlir::ODIE::Compiler::CoreML::ApproximateAttr::print(mlir::ODIE::Compiler::CoreML::ApproximateAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] != v5)
  {
    *v5 = 60;
    ++v4[4];
    v6 = *(*this + 8);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_11:
    v7 = 0;
    v9 = "none";
    v8 = 4;
    goto LABEL_13;
  }

  llvm::raw_ostream::write(v4, "<", 1uLL);
  v6 = *(*this + 8);
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v6 == 2)
  {
    v7 = 0;
    v9 = "sigmoid";
    v8 = 7;
  }

  else
  {
    v7 = v6 != 1;
    if (v6 == 1)
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    if (v6 == 1)
    {
      v9 = "tanh";
    }

    else
    {
      v9 = "";
    }
  }

LABEL_13:
  v10 = (*(*a2 + 16))(a2);
  if (v8 <= *(v10 + 24) - *(v10 + 32))
  {
    if (!v7)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v9, v8);
      *(v11 + 32) += v8;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v9, v8);
  }

  result = (*(*a2 + 16))(a2);
  v13 = result[4];
  if (result[3] == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::PaddingModeAttr::parse(mlir::AsmParser *a1)
{
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v98 = 0;
    v99 = 0;
    if (!sub_100065D14(a1, &v98))
    {
LABEL_51:
      v76 = (*(*a1 + 40))(a1);
      LOWORD(v115) = 259;
      (*(*a1 + 24))(v104, a1, v76, v113);
      if (v104[0])
      {
        mlir::InFlightDiagnostic::report(v104);
      }

      if (v112 == 1)
      {
        if (v111 != &v112)
        {
          free(v111);
        }

        v77 = v109;
        if (v109)
        {
          v78 = v110;
          v79 = v109;
          if (v110 != v109)
          {
            do
            {
              v78 = sub_100052FFC(v78 - 1);
            }

            while (v78 != v77);
            v79 = v109;
          }

          v110 = v77;
          operator delete(v79);
        }

        v80 = v107;
        if (v107)
        {
          v81 = v108;
          v82 = v107;
          if (v108 != v107)
          {
            do
            {
              v83 = *--v81;
              *v81 = 0;
              if (v83)
              {
                operator delete[]();
              }
            }

            while (v81 != v80);
            v82 = v107;
          }

          v108 = v80;
          operator delete(v82);
        }

        if (v105 != &v106)
        {
          free(v105);
        }
      }

      return 0;
    }

    v3 = mlir::ODIE::Compiler::CoreML::symbolizePaddingMode(v98, v99);
    if ((v3 & 0x100000000) == 0)
    {
      v97 = 257;
      (*(*a1 + 24))(v113, a1, v2, v96);
      if (v113[0])
      {
        LODWORD(v100) = 3;
        v101 = "expected ";
        v102 = 9;
        v4 = &v100;
        v5 = v114;
        if (v115 >= v116)
        {
          if (v114 <= &v100 && v114 + 24 * v115 > &v100)
          {
            v84 = &v100 - v114;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v115 + 1, 24);
            v5 = v114;
            v4 = (v114 + v84);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v115 + 1, 24);
            v4 = &v100;
            v5 = v114;
          }
        }

        v6 = &v5[24 * v115];
        v7 = *v4;
        *(v6 + 2) = v4[2];
        *v6 = v7;
        v8 = ++v115;
        if (v113[0])
        {
          LODWORD(v100) = 3;
          v101 = "mlir::ODIE::Compiler::CoreML::PaddingMode";
          v102 = 41;
          v9 = &v100;
          v10 = v114;
          if (v8 >= v116)
          {
            if (v114 <= &v100 && v114 + 24 * v8 > &v100)
            {
              v85 = &v100 - v114;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v8 + 1, 24);
              v10 = v114;
              v9 = (v114 + v85);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v8 + 1, 24);
              v9 = &v100;
              v10 = v114;
            }
          }

          v11 = &v10[24 * v115];
          v12 = *v9;
          *(v11 + 2) = v9[2];
          *v11 = v12;
          v13 = ++v115;
          if (v113[0])
          {
            LODWORD(v100) = 3;
            v101 = " to be one of: ";
            v102 = 15;
            v14 = &v100;
            v15 = v114;
            if (v13 >= v116)
            {
              if (v114 <= &v100 && v114 + 24 * v13 > &v100)
              {
                v86 = &v100 - v114;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v13 + 1, 24);
                v15 = v114;
                v14 = (v114 + v86);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v13 + 1, 24);
                v14 = &v100;
                v15 = v114;
              }
            }

            v16 = &v15[24 * v115];
            v17 = *v14;
            *(v16 + 2) = v14[2];
            *v16 = v17;
            v18 = ++v115;
            if (v113[0])
            {
              LODWORD(v100) = 3;
              v101 = "circular";
              v102 = 8;
              v19 = &v100;
              v20 = v114;
              if (v18 >= v116)
              {
                if (v114 <= &v100 && v114 + 24 * v18 > &v100)
                {
                  v87 = &v100 - v114;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v18 + 1, 24);
                  v20 = v114;
                  v19 = (v114 + v87);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v18 + 1, 24);
                  v19 = &v100;
                  v20 = v114;
                }
              }

              v21 = &v20[24 * v115];
              v22 = *v19;
              *(v21 + 2) = v19[2];
              *v21 = v22;
              v23 = ++v115;
              if (v113[0])
              {
                LODWORD(v100) = 3;
                v101 = ", ";
                v102 = 2;
                v24 = &v100;
                v25 = v114;
                if (v23 >= v116)
                {
                  if (v114 <= &v100 && v114 + 24 * v23 > &v100)
                  {
                    v88 = &v100 - v114;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v23 + 1, 24);
                    v25 = v114;
                    v24 = (v114 + v88);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v23 + 1, 24);
                    v24 = &v100;
                    v25 = v114;
                  }
                }

                v26 = &v25[24 * v115];
                v27 = *v24;
                *(v26 + 2) = v24[2];
                *v26 = v27;
                v28 = ++v115;
                if (v113[0])
                {
                  LODWORD(v100) = 3;
                  v101 = "constant";
                  v102 = 8;
                  v29 = &v100;
                  v30 = v114;
                  if (v28 >= v116)
                  {
                    if (v114 <= &v100 && v114 + 24 * v28 > &v100)
                    {
                      v89 = &v100 - v114;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v28 + 1, 24);
                      v30 = v114;
                      v29 = (v114 + v89);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v28 + 1, 24);
                      v29 = &v100;
                      v30 = v114;
                    }
                  }

                  v31 = &v30[24 * v115];
                  v32 = *v29;
                  *(v31 + 2) = v29[2];
                  *v31 = v32;
                  v33 = ++v115;
                  if (v113[0])
                  {
                    LODWORD(v100) = 3;
                    v101 = ", ";
                    v102 = 2;
                    v34 = &v100;
                    v35 = v114;
                    if (v33 >= v116)
                    {
                      if (v114 <= &v100 && v114 + 24 * v33 > &v100)
                      {
                        v90 = &v100 - v114;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v33 + 1, 24);
                        v35 = v114;
                        v34 = (v114 + v90);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v33 + 1, 24);
                        v34 = &v100;
                        v35 = v114;
                      }
                    }

                    v36 = &v35[24 * v115];
                    v37 = *v34;
                    *(v36 + 2) = v34[2];
                    *v36 = v37;
                    v38 = ++v115;
                    if (v113[0])
                    {
                      LODWORD(v100) = 3;
                      v101 = "reflect";
                      v102 = 7;
                      v39 = &v100;
                      v40 = v114;
                      if (v38 >= v116)
                      {
                        if (v114 <= &v100 && v114 + 24 * v38 > &v100)
                        {
                          v91 = &v100 - v114;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v38 + 1, 24);
                          v40 = v114;
                          v39 = (v114 + v91);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v38 + 1, 24);
                          v39 = &v100;
                          v40 = v114;
                        }
                      }

                      v41 = &v40[24 * v115];
                      v42 = *v39;
                      *(v41 + 2) = v39[2];
                      *v41 = v42;
                      v43 = ++v115;
                      if (v113[0])
                      {
                        LODWORD(v100) = 3;
                        v101 = ", ";
                        v102 = 2;
                        v44 = &v100;
                        v45 = v114;
                        if (v43 >= v116)
                        {
                          if (v114 <= &v100 && v114 + 24 * v43 > &v100)
                          {
                            v92 = &v100 - v114;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v43 + 1, 24);
                            v45 = v114;
                            v44 = (v114 + v92);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v43 + 1, 24);
                            v44 = &v100;
                            v45 = v114;
                          }
                        }

                        v46 = &v45[24 * v115];
                        v47 = *v44;
                        *(v46 + 2) = v44[2];
                        *v46 = v47;
                        v48 = ++v115;
                        if (v113[0])
                        {
                          LODWORD(v100) = 3;
                          v101 = "replicate";
                          v102 = 9;
                          v49 = &v100;
                          v50 = v114;
                          if (v48 >= v116)
                          {
                            if (v114 <= &v100 && v114 + 24 * v48 > &v100)
                            {
                              v93 = &v100 - v114;
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v48 + 1, 24);
                              v50 = v114;
                              v49 = (v114 + v93);
                            }

                            else
                            {
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v48 + 1, 24);
                              v49 = &v100;
                              v50 = v114;
                            }
                          }

                          v51 = &v50[24 * v115];
                          v52 = *v49;
                          *(v51 + 2) = v49[2];
                          *v51 = v52;
                          v53 = ++v115;
                          if (v113[0])
                          {
                            LODWORD(v100) = 3;
                            v101 = ", ";
                            v102 = 2;
                            v54 = &v100;
                            v55 = v114;
                            if (v53 >= v116)
                            {
                              if (v114 <= &v100 && v114 + 24 * v53 > &v100)
                              {
                                v94 = &v100 - v114;
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v53 + 1, 24);
                                v55 = v114;
                                v54 = (v114 + v94);
                              }

                              else
                              {
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v53 + 1, 24);
                                v54 = &v100;
                                v55 = v114;
                              }
                            }

                            v56 = &v55[24 * v115];
                            v57 = *v54;
                            *(v56 + 2) = v54[2];
                            *v56 = v57;
                            v58 = ++v115;
                            if (v113[0])
                            {
                              LODWORD(v100) = 3;
                              v101 = "symmetric";
                              v102 = 9;
                              v59 = &v100;
                              v60 = v114;
                              if (v58 >= v116)
                              {
                                if (v114 <= &v100 && v114 + 24 * v58 > &v100)
                                {
                                  v95 = &v100 - v114;
                                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v58 + 1, 24);
                                  v60 = v114;
                                  v59 = (v114 + v95);
                                }

                                else
                                {
                                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v117, v58 + 1, 24);
                                  v59 = &v100;
                                  v60 = v114;
                                }
                              }

                              v61 = &v60[24 * v115];
                              v62 = *v59;
                              *(v61 + 2) = v59[2];
                              *v61 = v62;
                              ++v115;
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
        }
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v113);
      if (v113[0])
      {
        mlir::InFlightDiagnostic::report(v113);
      }

      if (v123 == 1)
      {
        if (v122 != &v123)
        {
          free(v122);
        }

        v63 = __p;
        if (__p)
        {
          v64 = v121;
          v65 = __p;
          if (v121 != __p)
          {
            do
            {
              v64 = sub_100052FFC(v64 - 1);
            }

            while (v64 != v63);
            v65 = __p;
          }

          v121 = v63;
          operator delete(v65);
        }

        v66 = v118;
        if (v118)
        {
          v67 = v119;
          v68 = v118;
          if (v119 != v118)
          {
            do
            {
              v69 = *--v67;
              *v67 = 0;
              if (v69)
              {
                operator delete[]();
              }
            }

            while (v67 != v66);
            v68 = v118;
          }

          v119 = v66;
          operator delete(v68);
        }

        if (v114 != v117)
        {
          free(v114);
        }
      }

      goto LABEL_51;
    }

    v70 = v3;
    if ((*(*a1 + 168))(a1))
    {
      Context = mlir::AsmParser::getContext(a1);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      v100 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,void>::id;
      v101 = Context;
      v113[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail22PaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_15PaddingModeAttrEJNS4_11PaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
      v113[1] = &v100;
      v103 = v70;
      v73 = 0x9DDFEA08EB382D69 * (((8 * v70) | 4) ^ v70 ^ 0xFF51AFD7ED558CCDLL);
      v74 = 0x9DDFEA08EB382D69 * (v70 ^ 0xFF51AFD7ED558CCDLL ^ (v73 >> 47) ^ v73);
      v98 = &v103;
      v96[0] = &v103;
      v96[1] = v113;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,void>::id, -348639895 * ((v74 >> 47) ^ v74), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage,mlir::ODIE::Compiler::CoreML::PaddingMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::PaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v98, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage,mlir::ODIE::Compiler::CoreML::PaddingMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::PaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v96);
    }
  }

  return 0;
}

void *mlir::ODIE::Compiler::CoreML::PaddingModeAttr::print(mlir::ODIE::Compiler::CoreML::PaddingModeAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
    v6 = *(*this + 8);
    if (v6 > 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v5 = 60;
    ++v4[4];
    v6 = *(*this + 8);
    if (v6 > 1)
    {
LABEL_3:
      switch(v6)
      {
        case 2:
          v7 = 0;
          v8 = "reflect";
          v9 = 7;
          goto LABEL_15;
        case 3:
          v7 = 0;
          v8 = "replicate";
          v9 = 9;
          goto LABEL_15;
        case 4:
          v7 = 0;
          v8 = "symmetric";
          v9 = 9;
          goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  if (!v6)
  {
    v7 = 0;
    v8 = "circular";
    v9 = 8;
    goto LABEL_15;
  }

  if (v6 == 1)
  {
    v7 = 0;
    v8 = "constant";
    v9 = 8;
    goto LABEL_15;
  }

LABEL_14:
  v9 = 0;
  v8 = "";
  v7 = 1;
LABEL_15:
  v10 = (*(*a2 + 16))(a2);
  if (v9 <= *(v10 + 24) - *(v10 + 32))
  {
    if ((v7 & 1) == 0)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v8, v9);
      *(v11 + 32) += v9;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v8, v9);
  }

  result = (*(*a2 + 16))(a2);
  v13 = result[4];
  if (result[3] == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++result[4];
  }

  return result;
}

const char *mlir::ODIE::Compiler::CoreML::stringifyPaddingMode(unsigned int a1)
{
  if (a1 > 4)
  {
    return "";
  }

  else
  {
    return (&off_1002BDD10)[a1];
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::InterpolationModeAttr::parse(mlir::AsmParser *a1)
{
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v63 = 0;
    v64 = 0;
    if (!sub_100065D14(a1, &v63))
    {
LABEL_49:
      v42 = (*(*a1 + 40))(a1);
      LOWORD(v80) = 259;
      (*(*a1 + 24))(v69, a1, v42, v78);
      if (v69[0])
      {
        mlir::InFlightDiagnostic::report(v69);
      }

      if (v77 == 1)
      {
        if (v76 != &v77)
        {
          free(v76);
        }

        v43 = v74;
        if (v74)
        {
          v44 = v75;
          v45 = v74;
          if (v75 != v74)
          {
            do
            {
              v44 = sub_100052FFC(v44 - 1);
            }

            while (v44 != v43);
            v45 = v74;
          }

          v75 = v43;
          operator delete(v45);
        }

        v46 = v72;
        if (v72)
        {
          v47 = v73;
          v48 = v72;
          if (v73 != v72)
          {
            do
            {
              v49 = *--v47;
              *v47 = 0;
              if (v49)
              {
                operator delete[]();
              }
            }

            while (v47 != v46);
            v48 = v72;
          }

          v73 = v46;
          operator delete(v48);
        }

        if (v70 != &v71)
        {
          free(v70);
        }
      }

      return 0;
    }

    if (v64 == 16)
    {
      if (*v63 != 0x5F7473657261656ELL || *(v63 + 1) != 0x726F62686769656ELL)
      {
        goto LABEL_16;
      }

      v4 = 1;
      if ((*(*a1 + 168))(a1))
      {
        goto LABEL_72;
      }
    }

    else
    {
      if (v64 != 6 || (*v63 == 1701734764 ? (v3 = *(v63 + 2) == 29281) : (v3 = 0), !v3))
      {
LABEL_16:
        v62 = 257;
        (*(*a1 + 24))(v78, a1, v2, v61);
        if (v78[0])
        {
          LODWORD(v65) = 3;
          v66 = "expected ";
          v67 = 9;
          v6 = &v65;
          v7 = v79;
          if (v80 >= v81)
          {
            if (v79 <= &v65 && v79 + 24 * v80 > &v65)
            {
              v55 = &v65 - v79;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
              v7 = v79;
              v6 = (v79 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
              v6 = &v65;
              v7 = v79;
            }
          }

          v8 = &v7[24 * v80];
          v9 = *v6;
          *(v8 + 2) = v6[2];
          *v8 = v9;
          v10 = ++v80;
          if (v78[0])
          {
            LODWORD(v65) = 3;
            v66 = "mlir::ODIE::Compiler::CoreML::InterpolationMode";
            v67 = 47;
            v11 = &v65;
            v12 = v79;
            if (v10 >= v81)
            {
              if (v79 <= &v65 && v79 + 24 * v10 > &v65)
              {
                v56 = &v65 - v79;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v10 + 1, 24);
                v12 = v79;
                v11 = (v79 + v56);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v10 + 1, 24);
                v11 = &v65;
                v12 = v79;
              }
            }

            v13 = &v12[24 * v80];
            v14 = *v11;
            *(v13 + 2) = v11[2];
            *v13 = v14;
            v15 = ++v80;
            if (v78[0])
            {
              LODWORD(v65) = 3;
              v66 = " to be one of: ";
              v67 = 15;
              v16 = &v65;
              v17 = v79;
              if (v15 >= v81)
              {
                if (v79 <= &v65 && v79 + 24 * v15 > &v65)
                {
                  v57 = &v65 - v79;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v15 + 1, 24);
                  v17 = v79;
                  v16 = (v79 + v57);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v15 + 1, 24);
                  v16 = &v65;
                  v17 = v79;
                }
              }

              v18 = &v17[24 * v80];
              v19 = *v16;
              *(v18 + 2) = v16[2];
              *v18 = v19;
              v20 = ++v80;
              if (v78[0])
              {
                LODWORD(v65) = 3;
                v66 = "linear";
                v67 = 6;
                v21 = &v65;
                v22 = v79;
                if (v20 >= v81)
                {
                  if (v79 <= &v65 && v79 + 24 * v20 > &v65)
                  {
                    v58 = &v65 - v79;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v20 + 1, 24);
                    v22 = v79;
                    v21 = (v79 + v58);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v20 + 1, 24);
                    v21 = &v65;
                    v22 = v79;
                  }
                }

                v23 = &v22[24 * v80];
                v24 = *v21;
                *(v23 + 2) = v21[2];
                *v23 = v24;
                v25 = ++v80;
                if (v78[0])
                {
                  LODWORD(v65) = 3;
                  v66 = ", ";
                  v67 = 2;
                  v26 = &v65;
                  v27 = v79;
                  if (v25 >= v81)
                  {
                    if (v79 <= &v65 && v79 + 24 * v25 > &v65)
                    {
                      v59 = &v65 - v79;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v25 + 1, 24);
                      v27 = v79;
                      v26 = (v79 + v59);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v25 + 1, 24);
                      v26 = &v65;
                      v27 = v79;
                    }
                  }

                  v28 = &v27[24 * v80];
                  v29 = *v26;
                  *(v28 + 2) = v26[2];
                  *v28 = v29;
                  v30 = ++v80;
                  if (v78[0])
                  {
                    LODWORD(v65) = 3;
                    v66 = "nearest_neighbor";
                    v67 = 16;
                    v31 = &v65;
                    v32 = v79;
                    if (v30 >= v81)
                    {
                      if (v79 <= &v65 && v79 + 24 * v30 > &v65)
                      {
                        v60 = &v65 - v79;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v30 + 1, 24);
                        v32 = v79;
                        v31 = (v79 + v60);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v30 + 1, 24);
                        v31 = &v65;
                        v32 = v79;
                      }
                    }

                    v33 = &v32[24 * v80];
                    v34 = *v31;
                    *(v33 + 2) = v31[2];
                    *v33 = v34;
                    ++v80;
                  }
                }
              }
            }
          }
        }

        mlir::InFlightDiagnostic::operator llvm::LogicalResult(v78);
        if (v78[0])
        {
          mlir::InFlightDiagnostic::report(v78);
        }

        if (v88 == 1)
        {
          if (v87 != &v88)
          {
            free(v87);
          }

          v35 = __p;
          if (__p)
          {
            v36 = v86;
            v37 = __p;
            if (v86 != __p)
            {
              do
              {
                v36 = sub_100052FFC(v36 - 1);
              }

              while (v36 != v35);
              v37 = __p;
            }

            v86 = v35;
            operator delete(v37);
          }

          v38 = v83;
          if (v83)
          {
            v39 = v84;
            v40 = v83;
            if (v84 != v83)
            {
              do
              {
                v41 = *--v39;
                *v39 = 0;
                if (v41)
                {
                  operator delete[]();
                }
              }

              while (v39 != v38);
              v40 = v83;
            }

            v84 = v38;
            operator delete(v40);
          }

          if (v79 != v82)
          {
            free(v79);
          }
        }

        goto LABEL_49;
      }

      v4 = 0;
      if ((*(*a1 + 168))(a1))
      {
LABEL_72:
        Context = mlir::AsmParser::getContext(a1);
        AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
        v65 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr,void>::id;
        v66 = Context;
        v78[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail28InterpolationModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_21InterpolationModeAttrEJNS4_17InterpolationModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
        v78[1] = &v65;
        v68 = v4;
        v53 = v4 ^ 0xFF51AFD7ED558CCDLL;
        v54 = 0x9DDFEA08EB382D69 * (((8 * v4) | 4) ^ v53);
        v63 = &v68;
        v61[0] = &v68;
        v61[1] = v78;
        return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v53 ^ (v54 >> 47) ^ v54)) >> 32) >> 15) ^ (-348639895 * (v53 ^ (v54 >> 47) ^ v54))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage,mlir::ODIE::Compiler::CoreML::InterpolationMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::InterpolationMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v63, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage,mlir::ODIE::Compiler::CoreML::InterpolationMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::InterpolationMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v61);
      }
    }
  }

  return 0;
}

void *mlir::ODIE::Compiler::CoreML::InterpolationModeAttr::print(mlir::ODIE::Compiler::CoreML::InterpolationModeAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v6 = *(*this + 8);
  v7 = "";
  v8 = 16;
  if (v6 == 1)
  {
    v7 = "nearest_neighbor";
  }

  else
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v6 != 1;
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = v8;
  }

  else
  {
    v10 = 6;
  }

  if (v6)
  {
    v11 = v7;
  }

  else
  {
    v11 = "linear";
  }

  v12 = (*(*a2 + 16))(a2);
  if (v10 <= *(v12 + 24) - *(v12 + 32))
  {
    if (!v9)
    {
      v13 = v12;
      memcpy(*(v12 + 32), v11, v10);
      *(v13 + 32) += v10;
    }
  }

  else
  {
    llvm::raw_ostream::write(v12, v11, v10);
  }

  result = (*(*a2 + 16))(a2);
  v15 = result[4];
  if (result[3] == v15)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v15 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::SamplingModeAttr::parse(mlir::AsmParser *a1)
{
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v63 = 0;
    v64 = 0;
    if (!sub_100065D14(a1, &v63))
    {
LABEL_49:
      v42 = (*(*a1 + 40))(a1);
      LOWORD(v80) = 259;
      (*(*a1 + 24))(v69, a1, v42, v78);
      if (v69[0])
      {
        mlir::InFlightDiagnostic::report(v69);
      }

      if (v77 == 1)
      {
        if (v76 != &v77)
        {
          free(v76);
        }

        v43 = v74;
        if (v74)
        {
          v44 = v75;
          v45 = v74;
          if (v75 != v74)
          {
            do
            {
              v44 = sub_100052FFC(v44 - 1);
            }

            while (v44 != v43);
            v45 = v74;
          }

          v75 = v43;
          operator delete(v45);
        }

        v46 = v72;
        if (v72)
        {
          v47 = v73;
          v48 = v72;
          if (v73 != v72)
          {
            do
            {
              v49 = *--v47;
              *v47 = 0;
              if (v49)
              {
                operator delete[]();
              }
            }

            while (v47 != v46);
            v48 = v72;
          }

          v73 = v46;
          operator delete(v48);
        }

        if (v70 != &v71)
        {
          free(v70);
        }
      }

      return 0;
    }

    if (v64 == 13)
    {
      if (*v63 != 0x6F635F6E67696C61 || *(v63 + 5) != 0x7372656E726F635FLL)
      {
        goto LABEL_16;
      }

      v4 = 1;
      if ((*(*a1 + 168))(a1))
      {
        goto LABEL_72;
      }
    }

    else
    {
      if (v64 != 10 || (*v63 == 0x7869705F666C6168 ? (v3 = *(v63 + 4) == 27749) : (v3 = 0), !v3))
      {
LABEL_16:
        v62 = 257;
        (*(*a1 + 24))(v78, a1, v2, v61);
        if (v78[0])
        {
          LODWORD(v65) = 3;
          v66 = "expected ";
          v67 = 9;
          v6 = &v65;
          v7 = v79;
          if (v80 >= v81)
          {
            if (v79 <= &v65 && v79 + 24 * v80 > &v65)
            {
              v55 = &v65 - v79;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
              v7 = v79;
              v6 = (v79 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
              v6 = &v65;
              v7 = v79;
            }
          }

          v8 = &v7[24 * v80];
          v9 = *v6;
          *(v8 + 2) = v6[2];
          *v8 = v9;
          v10 = ++v80;
          if (v78[0])
          {
            LODWORD(v65) = 3;
            v66 = "mlir::ODIE::Compiler::CoreML::SamplingMode";
            v67 = 42;
            v11 = &v65;
            v12 = v79;
            if (v10 >= v81)
            {
              if (v79 <= &v65 && v79 + 24 * v10 > &v65)
              {
                v56 = &v65 - v79;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v10 + 1, 24);
                v12 = v79;
                v11 = (v79 + v56);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v10 + 1, 24);
                v11 = &v65;
                v12 = v79;
              }
            }

            v13 = &v12[24 * v80];
            v14 = *v11;
            *(v13 + 2) = v11[2];
            *v13 = v14;
            v15 = ++v80;
            if (v78[0])
            {
              LODWORD(v65) = 3;
              v66 = " to be one of: ";
              v67 = 15;
              v16 = &v65;
              v17 = v79;
              if (v15 >= v81)
              {
                if (v79 <= &v65 && v79 + 24 * v15 > &v65)
                {
                  v57 = &v65 - v79;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v15 + 1, 24);
                  v17 = v79;
                  v16 = (v79 + v57);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v15 + 1, 24);
                  v16 = &v65;
                  v17 = v79;
                }
              }

              v18 = &v17[24 * v80];
              v19 = *v16;
              *(v18 + 2) = v16[2];
              *v18 = v19;
              v20 = ++v80;
              if (v78[0])
              {
                LODWORD(v65) = 3;
                v66 = "half_pixel";
                v67 = 10;
                v21 = &v65;
                v22 = v79;
                if (v20 >= v81)
                {
                  if (v79 <= &v65 && v79 + 24 * v20 > &v65)
                  {
                    v58 = &v65 - v79;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v20 + 1, 24);
                    v22 = v79;
                    v21 = (v79 + v58);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v20 + 1, 24);
                    v21 = &v65;
                    v22 = v79;
                  }
                }

                v23 = &v22[24 * v80];
                v24 = *v21;
                *(v23 + 2) = v21[2];
                *v23 = v24;
                v25 = ++v80;
                if (v78[0])
                {
                  LODWORD(v65) = 3;
                  v66 = ", ";
                  v67 = 2;
                  v26 = &v65;
                  v27 = v79;
                  if (v25 >= v81)
                  {
                    if (v79 <= &v65 && v79 + 24 * v25 > &v65)
                    {
                      v59 = &v65 - v79;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v25 + 1, 24);
                      v27 = v79;
                      v26 = (v79 + v59);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v25 + 1, 24);
                      v26 = &v65;
                      v27 = v79;
                    }
                  }

                  v28 = &v27[24 * v80];
                  v29 = *v26;
                  *(v28 + 2) = v26[2];
                  *v28 = v29;
                  v30 = ++v80;
                  if (v78[0])
                  {
                    LODWORD(v65) = 3;
                    v66 = "align_corners";
                    v67 = 13;
                    v31 = &v65;
                    v32 = v79;
                    if (v30 >= v81)
                    {
                      if (v79 <= &v65 && v79 + 24 * v30 > &v65)
                      {
                        v60 = &v65 - v79;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v30 + 1, 24);
                        v32 = v79;
                        v31 = (v79 + v60);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v30 + 1, 24);
                        v31 = &v65;
                        v32 = v79;
                      }
                    }

                    v33 = &v32[24 * v80];
                    v34 = *v31;
                    *(v33 + 2) = v31[2];
                    *v33 = v34;
                    ++v80;
                  }
                }
              }
            }
          }
        }

        mlir::InFlightDiagnostic::operator llvm::LogicalResult(v78);
        if (v78[0])
        {
          mlir::InFlightDiagnostic::report(v78);
        }

        if (v88 == 1)
        {
          if (v87 != &v88)
          {
            free(v87);
          }

          v35 = __p;
          if (__p)
          {
            v36 = v86;
            v37 = __p;
            if (v86 != __p)
            {
              do
              {
                v36 = sub_100052FFC(v36 - 1);
              }

              while (v36 != v35);
              v37 = __p;
            }

            v86 = v35;
            operator delete(v37);
          }

          v38 = v83;
          if (v83)
          {
            v39 = v84;
            v40 = v83;
            if (v84 != v83)
            {
              do
              {
                v41 = *--v39;
                *v39 = 0;
                if (v41)
                {
                  operator delete[]();
                }
              }

              while (v39 != v38);
              v40 = v83;
            }

            v84 = v38;
            operator delete(v40);
          }

          if (v79 != v82)
          {
            free(v79);
          }
        }

        goto LABEL_49;
      }

      v4 = 0;
      if ((*(*a1 + 168))(a1))
      {
LABEL_72:
        Context = mlir::AsmParser::getContext(a1);
        AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
        v65 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SamplingModeAttr,void>::id;
        v66 = Context;
        v78[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail23SamplingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_16SamplingModeAttrEJNS4_12SamplingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
        v78[1] = &v65;
        v68 = v4;
        v53 = v4 ^ 0xFF51AFD7ED558CCDLL;
        v54 = 0x9DDFEA08EB382D69 * (((8 * v4) | 4) ^ v53);
        v63 = &v68;
        v61[0] = &v68;
        v61[1] = v78;
        return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SamplingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v53 ^ (v54 >> 47) ^ v54)) >> 32) >> 15) ^ (-348639895 * (v53 ^ (v54 >> 47) ^ v54))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SamplingModeAttrStorage,mlir::ODIE::Compiler::CoreML::SamplingMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::SamplingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v63, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SamplingModeAttrStorage,mlir::ODIE::Compiler::CoreML::SamplingMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::SamplingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v61);
      }
    }
  }

  return 0;
}

void *mlir::ODIE::Compiler::CoreML::SamplingModeAttr::print(mlir::ODIE::Compiler::CoreML::SamplingModeAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v6 = *(*this + 8);
  v7 = "";
  v8 = 13;
  if (v6 == 1)
  {
    v7 = "align_corners";
  }

  else
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v6 != 1;
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = v8;
  }

  else
  {
    v10 = 10;
  }

  if (v6)
  {
    v11 = v7;
  }

  else
  {
    v11 = "half_pixel";
  }

  v12 = (*(*a2 + 16))(a2);
  if (v10 <= *(v12 + 24) - *(v12 + 32))
  {
    if (!v9)
    {
      v13 = v12;
      memcpy(*(v12 + 32), v11, v10);
      *(v13 + 32) += v10;
    }
  }

  else
  {
    llvm::raw_ostream::write(v12, v11, v10);
  }

  result = (*(*a2 + 16))(a2);
  v15 = result[4];
  if (result[3] == v15)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v15 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ScatterModeAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterModeAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail22ScatterModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_15ScatterModeAttrEJNS4_11ScatterModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage,mlir::ODIE::Compiler::CoreML::ScatterMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::ScatterMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage,mlir::ODIE::Compiler::CoreML::ScatterMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::ScatterMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::ODIE::Compiler::CoreML::ScatterModeAttr::parse(mlir::AsmParser *a1)
{
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v122 = 0;
    v123 = 0;
    if (!sub_100065D14(a1, &v122))
    {
LABEL_59:
      v96 = (*(*a1 + 40))(a1);
      LOWORD(v139) = 259;
      (*(*a1 + 24))(v128, a1, v96, v137);
      if (v128[0])
      {
        mlir::InFlightDiagnostic::report(v128);
      }

      if (v136 == 1)
      {
        if (v135 != &v136)
        {
          free(v135);
        }

        v97 = v133;
        if (v133)
        {
          v98 = v134;
          v99 = v133;
          if (v134 != v133)
          {
            do
            {
              v98 = sub_100052FFC(v98 - 1);
            }

            while (v98 != v97);
            v99 = v133;
          }

          v134 = v97;
          operator delete(v99);
        }

        v100 = v131;
        if (v131)
        {
          v101 = v132;
          v102 = v131;
          if (v132 != v131)
          {
            do
            {
              v103 = *--v101;
              *v101 = 0;
              if (v103)
              {
                operator delete[]();
              }
            }

            while (v101 != v100);
            v102 = v131;
          }

          v132 = v100;
          operator delete(v102);
        }

        if (v129 != &v130)
        {
          free(v129);
        }
      }

      return 0;
    }

    v3 = mlir::ODIE::Compiler::CoreML::symbolizeScatterMode(v122, v123);
    if ((v3 & 0x100000000) == 0)
    {
      v121 = 257;
      (*(*a1 + 24))(v137, a1, v2, v120);
      if (v137[0])
      {
        LODWORD(v124) = 3;
        v125 = "expected ";
        v126 = 9;
        v4 = &v124;
        v5 = v138;
        if (v139 >= v140)
        {
          if (v138 <= &v124 && v138 + 24 * v139 > &v124)
          {
            v104 = &v124 - v138;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v139 + 1, 24);
            v5 = v138;
            v4 = (v138 + v104);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v139 + 1, 24);
            v4 = &v124;
            v5 = v138;
          }
        }

        v6 = &v5[24 * v139];
        v7 = *v4;
        *(v6 + 2) = v4[2];
        *v6 = v7;
        v8 = ++v139;
        if (v137[0])
        {
          LODWORD(v124) = 3;
          v125 = "mlir::ODIE::Compiler::CoreML::ScatterMode";
          v126 = 41;
          v9 = &v124;
          v10 = v138;
          if (v8 >= v140)
          {
            if (v138 <= &v124 && v138 + 24 * v8 > &v124)
            {
              v105 = &v124 - v138;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v8 + 1, 24);
              v10 = v138;
              v9 = (v138 + v105);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v8 + 1, 24);
              v9 = &v124;
              v10 = v138;
            }
          }

          v11 = &v10[24 * v139];
          v12 = *v9;
          *(v11 + 2) = v9[2];
          *v11 = v12;
          v13 = ++v139;
          if (v137[0])
          {
            LODWORD(v124) = 3;
            v125 = " to be one of: ";
            v126 = 15;
            v14 = &v124;
            v15 = v138;
            if (v13 >= v140)
            {
              if (v138 <= &v124 && v138 + 24 * v13 > &v124)
              {
                v106 = &v124 - v138;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v13 + 1, 24);
                v15 = v138;
                v14 = (v138 + v106);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v13 + 1, 24);
                v14 = &v124;
                v15 = v138;
              }
            }

            v16 = &v15[24 * v139];
            v17 = *v14;
            *(v16 + 2) = v14[2];
            *v16 = v17;
            v18 = ++v139;
            if (v137[0])
            {
              LODWORD(v124) = 3;
              v125 = "update";
              v126 = 6;
              v19 = &v124;
              v20 = v138;
              if (v18 >= v140)
              {
                if (v138 <= &v124 && v138 + 24 * v18 > &v124)
                {
                  v107 = &v124 - v138;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v18 + 1, 24);
                  v20 = v138;
                  v19 = (v138 + v107);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v18 + 1, 24);
                  v19 = &v124;
                  v20 = v138;
                }
              }

              v21 = &v20[24 * v139];
              v22 = *v19;
              *(v21 + 2) = v19[2];
              *v21 = v22;
              v23 = ++v139;
              if (v137[0])
              {
                LODWORD(v124) = 3;
                v125 = ", ";
                v126 = 2;
                v24 = &v124;
                v25 = v138;
                if (v23 >= v140)
                {
                  if (v138 <= &v124 && v138 + 24 * v23 > &v124)
                  {
                    v108 = &v124 - v138;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v23 + 1, 24);
                    v25 = v138;
                    v24 = (v138 + v108);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v23 + 1, 24);
                    v24 = &v124;
                    v25 = v138;
                  }
                }

                v26 = &v25[24 * v139];
                v27 = *v24;
                *(v26 + 2) = v24[2];
                *v26 = v27;
                v28 = ++v139;
                if (v137[0])
                {
                  LODWORD(v124) = 3;
                  v125 = "add";
                  v126 = 3;
                  v29 = &v124;
                  v30 = v138;
                  if (v28 >= v140)
                  {
                    if (v138 <= &v124 && v138 + 24 * v28 > &v124)
                    {
                      v109 = &v124 - v138;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v28 + 1, 24);
                      v30 = v138;
                      v29 = (v138 + v109);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v28 + 1, 24);
                      v29 = &v124;
                      v30 = v138;
                    }
                  }

                  v31 = &v30[24 * v139];
                  v32 = *v29;
                  *(v31 + 2) = v29[2];
                  *v31 = v32;
                  v33 = ++v139;
                  if (v137[0])
                  {
                    LODWORD(v124) = 3;
                    v125 = ", ";
                    v126 = 2;
                    v34 = &v124;
                    v35 = v138;
                    if (v33 >= v140)
                    {
                      if (v138 <= &v124 && v138 + 24 * v33 > &v124)
                      {
                        v110 = &v124 - v138;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v33 + 1, 24);
                        v35 = v138;
                        v34 = (v138 + v110);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v33 + 1, 24);
                        v34 = &v124;
                        v35 = v138;
                      }
                    }

                    v36 = &v35[24 * v139];
                    v37 = *v34;
                    *(v36 + 2) = v34[2];
                    *v36 = v37;
                    v38 = ++v139;
                    if (v137[0])
                    {
                      LODWORD(v124) = 3;
                      v125 = "sub";
                      v126 = 3;
                      v39 = &v124;
                      v40 = v138;
                      if (v38 >= v140)
                      {
                        if (v138 <= &v124 && v138 + 24 * v38 > &v124)
                        {
                          v111 = &v124 - v138;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v38 + 1, 24);
                          v40 = v138;
                          v39 = (v138 + v111);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v38 + 1, 24);
                          v39 = &v124;
                          v40 = v138;
                        }
                      }

                      v41 = &v40[24 * v139];
                      v42 = *v39;
                      *(v41 + 2) = v39[2];
                      *v41 = v42;
                      v43 = ++v139;
                      if (v137[0])
                      {
                        LODWORD(v124) = 3;
                        v125 = ", ";
                        v126 = 2;
                        v44 = &v124;
                        v45 = v138;
                        if (v43 >= v140)
                        {
                          if (v138 <= &v124 && v138 + 24 * v43 > &v124)
                          {
                            v112 = &v124 - v138;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v43 + 1, 24);
                            v45 = v138;
                            v44 = (v138 + v112);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v43 + 1, 24);
                            v44 = &v124;
                            v45 = v138;
                          }
                        }

                        v46 = &v45[24 * v139];
                        v47 = *v44;
                        *(v46 + 2) = v44[2];
                        *v46 = v47;
                        v48 = ++v139;
                        if (v137[0])
                        {
                          LODWORD(v124) = 3;
                          v125 = "mul";
                          v126 = 3;
                          v49 = &v124;
                          v50 = v138;
                          if (v48 >= v140)
                          {
                            if (v138 <= &v124 && v138 + 24 * v48 > &v124)
                            {
                              v113 = &v124 - v138;
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v48 + 1, 24);
                              v50 = v138;
                              v49 = (v138 + v113);
                            }

                            else
                            {
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v48 + 1, 24);
                              v49 = &v124;
                              v50 = v138;
                            }
                          }

                          v51 = &v50[24 * v139];
                          v52 = *v49;
                          *(v51 + 2) = v49[2];
                          *v51 = v52;
                          v53 = ++v139;
                          if (v137[0])
                          {
                            LODWORD(v124) = 3;
                            v125 = ", ";
                            v126 = 2;
                            v54 = &v124;
                            v55 = v138;
                            if (v53 >= v140)
                            {
                              if (v138 <= &v124 && v138 + 24 * v53 > &v124)
                              {
                                v114 = &v124 - v138;
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v53 + 1, 24);
                                v55 = v138;
                                v54 = (v138 + v114);
                              }

                              else
                              {
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v53 + 1, 24);
                                v54 = &v124;
                                v55 = v138;
                              }
                            }

                            v56 = &v55[24 * v139];
                            v57 = *v54;
                            *(v56 + 2) = v54[2];
                            *v56 = v57;
                            v58 = ++v139;
                            if (v137[0])
                            {
                              LODWORD(v124) = 3;
                              v125 = "div";
                              v126 = 3;
                              v59 = &v124;
                              v60 = v138;
                              if (v58 >= v140)
                              {
                                if (v138 <= &v124 && v138 + 24 * v58 > &v124)
                                {
                                  v115 = &v124 - v138;
                                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v58 + 1, 24);
                                  v60 = v138;
                                  v59 = (v138 + v115);
                                }

                                else
                                {
                                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v58 + 1, 24);
                                  v59 = &v124;
                                  v60 = v138;
                                }
                              }

                              v61 = &v60[24 * v139];
                              v62 = *v59;
                              *(v61 + 2) = v59[2];
                              *v61 = v62;
                              v63 = ++v139;
                              if (v137[0])
                              {
                                LODWORD(v124) = 3;
                                v125 = ", ";
                                v126 = 2;
                                v64 = &v124;
                                v65 = v138;
                                if (v63 >= v140)
                                {
                                  if (v138 <= &v124 && v138 + 24 * v63 > &v124)
                                  {
                                    v116 = &v124 - v138;
                                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v63 + 1, 24);
                                    v65 = v138;
                                    v64 = (v138 + v116);
                                  }

                                  else
                                  {
                                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v63 + 1, 24);
                                    v64 = &v124;
                                    v65 = v138;
                                  }
                                }

                                v66 = &v65[24 * v139];
                                v67 = *v64;
                                *(v66 + 2) = v64[2];
                                *v66 = v67;
                                v68 = ++v139;
                                if (v137[0])
                                {
                                  LODWORD(v124) = 3;
                                  v125 = "max";
                                  v126 = 3;
                                  v69 = &v124;
                                  v70 = v138;
                                  if (v68 >= v140)
                                  {
                                    if (v138 <= &v124 && v138 + 24 * v68 > &v124)
                                    {
                                      v117 = &v124 - v138;
                                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v68 + 1, 24);
                                      v70 = v138;
                                      v69 = (v138 + v117);
                                    }

                                    else
                                    {
                                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v68 + 1, 24);
                                      v69 = &v124;
                                      v70 = v138;
                                    }
                                  }

                                  v71 = &v70[24 * v139];
                                  v72 = *v69;
                                  *(v71 + 2) = v69[2];
                                  *v71 = v72;
                                  v73 = ++v139;
                                  if (v137[0])
                                  {
                                    LODWORD(v124) = 3;
                                    v125 = ", ";
                                    v126 = 2;
                                    v74 = &v124;
                                    v75 = v138;
                                    if (v73 >= v140)
                                    {
                                      if (v138 <= &v124 && v138 + 24 * v73 > &v124)
                                      {
                                        v118 = &v124 - v138;
                                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v73 + 1, 24);
                                        v75 = v138;
                                        v74 = (v138 + v118);
                                      }

                                      else
                                      {
                                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v73 + 1, 24);
                                        v74 = &v124;
                                        v75 = v138;
                                      }
                                    }

                                    v76 = &v75[24 * v139];
                                    v77 = *v74;
                                    *(v76 + 2) = v74[2];
                                    *v76 = v77;
                                    v78 = ++v139;
                                    if (v137[0])
                                    {
                                      LODWORD(v124) = 3;
                                      v125 = "min";
                                      v126 = 3;
                                      v79 = &v124;
                                      v80 = v138;
                                      if (v78 >= v140)
                                      {
                                        if (v138 <= &v124 && v138 + 24 * v78 > &v124)
                                        {
                                          v119 = &v124 - v138;
                                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v78 + 1, 24);
                                          v80 = v138;
                                          v79 = (v138 + v119);
                                        }

                                        else
                                        {
                                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v78 + 1, 24);
                                          v79 = &v124;
                                          v80 = v138;
                                        }
                                      }

                                      v81 = &v80[24 * v139];
                                      v82 = *v79;
                                      *(v81 + 2) = v79[2];
                                      *v81 = v82;
                                      ++v139;
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
                }
              }
            }
          }
        }
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v137);
      if (v137[0])
      {
        mlir::InFlightDiagnostic::report(v137);
      }

      if (v147 == 1)
      {
        if (v146 != &v147)
        {
          free(v146);
        }

        v83 = __p;
        if (__p)
        {
          v84 = v145;
          v85 = __p;
          if (v145 != __p)
          {
            do
            {
              v84 = sub_100052FFC(v84 - 1);
            }

            while (v84 != v83);
            v85 = __p;
          }

          v145 = v83;
          operator delete(v85);
        }

        v86 = v142;
        if (v142)
        {
          v87 = v143;
          v88 = v142;
          if (v143 != v142)
          {
            do
            {
              v89 = *--v87;
              *v87 = 0;
              if (v89)
              {
                operator delete[]();
              }
            }

            while (v87 != v86);
            v88 = v142;
          }

          v143 = v86;
          operator delete(v88);
        }

        if (v138 != v141)
        {
          free(v138);
        }
      }

      goto LABEL_59;
    }

    v90 = v3;
    if ((*(*a1 + 168))(a1))
    {
      Context = mlir::AsmParser::getContext(a1);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      v124 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterModeAttr,void>::id;
      v125 = Context;
      v137[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail22ScatterModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_15ScatterModeAttrEJNS4_11ScatterModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
      v137[1] = &v124;
      v127 = v90;
      v93 = 0x9DDFEA08EB382D69 * (((8 * v90) | 4) ^ v90 ^ 0xFF51AFD7ED558CCDLL);
      v94 = 0x9DDFEA08EB382D69 * (v90 ^ 0xFF51AFD7ED558CCDLL ^ (v93 >> 47) ^ v93);
      v122 = &v127;
      v120[0] = &v127;
      v120[1] = v137;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterModeAttr,void>::id, -348639895 * ((v94 >> 47) ^ v94), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage,mlir::ODIE::Compiler::CoreML::ScatterMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::ScatterMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v122, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage,mlir::ODIE::Compiler::CoreML::ScatterMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::ScatterMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v120);
    }
  }

  return 0;
}

void *mlir::ODIE::Compiler::CoreML::ScatterModeAttr::print(mlir::ODIE::Compiler::CoreML::ScatterModeAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
    v6 = *(*this + 8);
    if (v6 > 2)
    {
LABEL_3:
      if (v6 <= 4)
      {
        v7 = 0;
        if (v6 == 3)
        {
          v8 = "mul";
        }

        else
        {
          v8 = "div";
        }

        goto LABEL_19;
      }

      if (v6 == 5)
      {
        v7 = 0;
        v8 = "max";
        goto LABEL_19;
      }

      if (v6 == 6)
      {
        v7 = 0;
        v8 = "min";
        goto LABEL_19;
      }

LABEL_15:
      v9 = 0;
      v8 = "";
      v7 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    *v5 = 60;
    ++v4[4];
    v6 = *(*this + 8);
    if (v6 > 2)
    {
      goto LABEL_3;
    }
  }

  if (!v6)
  {
    v7 = 0;
    v8 = "update";
    v9 = 6;
    goto LABEL_20;
  }

  if (v6 == 1)
  {
    v7 = 0;
    v8 = "add";
    goto LABEL_19;
  }

  if (v6 != 2)
  {
    goto LABEL_15;
  }

  v7 = 0;
  v8 = "sub";
LABEL_19:
  v9 = 3;
LABEL_20:
  v10 = (*(*a2 + 16))(a2);
  if (v9 <= *(v10 + 24) - *(v10 + 32))
  {
    if ((v7 & 1) == 0)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v8, v9);
      *(v11 + 32) += v9;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v8, v9);
  }

  result = (*(*a2 + 16))(a2);
  v13 = result[4];
  if (result[3] == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::FileResourceAttr::get(mlir::MLIRContext *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v18[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FileResourceAttr,void>::id;
  v18[1] = a1;
  v22[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail23FileResourceAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_16FileResourceAttrEJNS1_10ShapedTypeENS1_10StringAttrENS1_11IntegerAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v22[1] = v18;
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  v11 = (a4 >> 4) ^ (a4 >> 9);
  v12 = 0x9AE16A3B2F90404FLL * ((a5 >> 4) ^ (a5 >> 9));
  v13 = __ROR8__(0xB492B66FBE98F273 * ((a2 >> 4) ^ (a2 >> 9)) - v11, 43);
  v14 = __ROR8__(v12 ^ 0xFF51AFD7ED558CCDLL, 30) - 0x3C5A37A36834CED9 * v11;
  v15 = __ROR8__(v11 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v12 - 0x4B6D499041670D8DLL * ((a2 >> 4) ^ (a2 >> 9)) + 24;
  v16 = 0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * ((v14 + v13) ^ v15)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v14 + v13) ^ v15)));
  v19[0] = v21;
  v19[1] = v22;
  v20 = v21;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FileResourceAttr,void>::id, -348639895 * ((v16 >> 47) ^ v16), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage,mlir::ShapedType,mlir::StringAttr,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage *)>,mlir::TypeID,mlir::ShapedType,mlir::StringAttr,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v20, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage,mlir::ShapedType,mlir::StringAttr,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage *)>,mlir::TypeID,mlir::ShapedType,mlir::StringAttr,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v19);
}

uint64_t mlir::ODIE::Compiler::CoreML::FileResourceAttr::parse(mlir::AsmParser *a1, void *a2)
{
  mlir::AsmParser::getContext(a1);
  v4 = (*(*a1 + 40))(a1);
  if (!a2)
  {
    v43[0] = "expected a trailing type";
    v44 = 259;
    (*(*a1 + 24))(v55, a1, v4, v43);
    if (v55[0])
    {
      mlir::InFlightDiagnostic::report(v55);
    }

    if (v63 != 1)
    {
      return 0;
    }

    if (v62 != &v63)
    {
      free(v62);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v61;
      v21 = __p;
      if (v61 != __p)
      {
        do
        {
          v20 = sub_100052FFC(v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v61 = v19;
      operator delete(v21);
    }

    v22 = v58;
    if (v58)
    {
      v23 = v59;
      v24 = v58;
      if (v59 != v58)
      {
        do
        {
          v25 = *--v23;
          *v23 = 0;
          if (v25)
          {
            operator delete[]();
          }
        }

        while (v23 != v22);
        v24 = v58;
      }

      v59 = v22;
      operator delete(v24);
    }

    v41 = v56;
    if (v56 == &v57)
    {
      return 0;
    }

LABEL_69:
    free(v41);
    return 0;
  }

  v5 = sub_10005E890(a2);
  if (!v5)
  {
    v43[0] = "invalid kind of type specified";
    v44 = 259;
    (*(*a1 + 24))(v64, a1, v4, v43);
    if (v64[0])
    {
      mlir::InFlightDiagnostic::report(v64);
    }

    if ((v72 & 1) == 0)
    {
      return 0;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v26 = v69;
    if (v69)
    {
      v27 = v70;
      v28 = v69;
      if (v70 != v69)
      {
        do
        {
          v27 = sub_100052FFC(v27 - 1);
        }

        while (v27 != v26);
        v28 = v69;
      }

      v70 = v26;
      operator delete(v28);
    }

    v29 = v67;
    if (v67)
    {
      v30 = v68;
      v31 = v67;
      if (v68 != v67)
      {
        do
        {
          v32 = *--v30;
          *v30 = 0;
          if (v32)
          {
            operator delete[]();
          }
        }

        while (v30 != v29);
        v31 = v67;
      }

      v68 = v29;
      operator delete(v31);
    }

    v41 = v65;
    if (v65 == &v66)
    {
      return 0;
    }

    goto LABEL_69;
  }

  v7 = v6;
  v8 = v5;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  Context = mlir::AsmParser::getContext(a1);
  mlir::MLIRContext::getOrLoadDialect(Context, "builtin", 7);
  v43[0] = 0;
  v10 = sub_1001D02C8(a1, v43, 0);
  v11 = *a1;
  if (!v10)
  {
    v33 = (*(v11 + 40))(a1);
    v44 = 259;
    (*(*a1 + 24))(v46, a1, v33, v43);
    if (v46[0])
    {
      mlir::InFlightDiagnostic::report(v46);
    }

    if (v54 != 1)
    {
      return 0;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v34 = v51;
    if (v51)
    {
      v35 = v52;
      v36 = v51;
      if (v52 != v51)
      {
        do
        {
          v35 = sub_100052FFC(v35 - 1);
        }

        while (v35 != v34);
        v36 = v51;
      }

      v52 = v34;
      operator delete(v36);
    }

    v37 = v49;
    if (v49)
    {
      v38 = v50;
      v39 = v49;
      if (v50 != v49)
      {
        do
        {
          v40 = *--v38;
          *v38 = 0;
          if (v40)
          {
            operator delete[]();
          }
        }

        while (v38 != v37);
        v39 = v49;
      }

      v50 = v37;
      operator delete(v39);
    }

    v41 = v47;
    if (v47 == &v48)
    {
      return 0;
    }

    goto LABEL_69;
  }

  v12 = v43[0];
  if ((*(v11 + 120))(a1))
  {
    v13 = mlir::AsmParser::getContext(a1);
    mlir::MLIRContext::getOrLoadDialect(v13, "builtin", 7);
    v43[0] = 0;
    v14 = sub_1001D25D0(a1, v43, 0);
    v15 = *a1;
    if (v14)
    {
      v16 = v43[0];
      if ((*(v15 + 168))(a1))
      {
        v17 = mlir::AsmParser::getContext(a1);
        return mlir::ODIE::Compiler::CoreML::FileResourceAttr::get(v17, v8, v7, v12, v16);
      }
    }

    else
    {
      v42 = (*(v15 + 40))(a1);
      v44 = 259;
      (*(*a1 + 24))(v45, a1, v42, v43);
      sub_100059A74(v45);
    }
  }

  return 0;
}

void *mlir::ODIE::Compiler::CoreML::FileResourceAttr::print(mlir::ODIE::Compiler::CoreML::FileResourceAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  (*(*a2 + 40))(a2, *(*this + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++v6[4];
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 40))(a2, *(*this + 32));
  result = (*(*a2 + 16))(a2);
  v11 = result[4];
  if (result[3] == v11)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v11 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::CoreMLDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2, void **a3)
{
  v6 = (*(*a2 + 40))(a2);
  v63 = a2;
  v7 = (*(*a2 + 40))(a2);
  BYTE2(v67) = 0;
  v65 = 0;
  v66 = 0;
  v64 = v7;
  LOBYTE(v67) = 0;
  if (((*(*a2 + 640))(a2, &v65) & 1) == 0)
  {
    v8 = 0;
    if ((v67 & 0x10000) != 0)
    {
      LOWORD(v67) = 256;
      v59 = "torch_location_extras";
      v9 = 0;
      v10 = 0;
      if ((sub_100163F10(&v63) & 0x100) != 0)
      {
        return v8;
      }
    }

    else
    {
      LOWORD(v67) = 256;
      BYTE2(v67) = 1;
      v9 = 0;
      v10 = 0;
      if ((sub_100163F10(&v63) & 0x100) != 0)
      {
        return v8;
      }
    }

    goto LABEL_185;
  }

  v59 = "torch_location_extras";
  v60 = 21;
  if ((v67 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v9 = v66;
  if (v66)
  {
    if (v66 == 21)
    {
      v11 = *v65 == 0x6F6C5F6863726F74 && *(v65 + 8) == 0x655F6E6F69746163;
      if (v11 && *(v65 + 13) == 0x7361727478655F6ELL)
      {
        v21 = mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr::parse(a2);
        goto LABEL_184;
      }
    }

    v59 = "odie_location_frame_attr";
    v60 = 24;
    goto LABEL_18;
  }

  (*(*v63 + 648))(v63, &v59, 1);
  v59 = "odie_location_frame_attr";
  v60 = 24;
  if ((v67 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v9 = v66;
  if (v66)
  {
LABEL_18:
    if (v9 == 24)
    {
      v13 = *v65 == 0x636F6C5F6569646FLL && *(v65 + 8) == 0x72665F6E6F697461;
      if (v13 && *(v65 + 16) == 0x727474615F656D61)
      {
        v21 = mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::parse(a2);
        goto LABEL_184;
      }
    }

    v59 = "extern";
    v60 = 6;
    if (v9)
    {
      goto LABEL_27;
    }

    goto LABEL_63;
  }

  (*(*v63 + 648))(v63, &v59, 1);
  v59 = "extern";
  v60 = 6;
  if ((v67 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v9 = v66;
  if (v66)
  {
LABEL_27:
    if (v9 == 6 && *v65 == 1702131813 && *(v65 + 4) == 28274)
    {
      v21 = mlir::ODIE::Compiler::CoreML::ExternAttr::parse(a2);
      goto LABEL_184;
    }

    v59 = "tensor_encoding";
    v60 = 15;
    if (v9)
    {
      goto LABEL_33;
    }

    goto LABEL_65;
  }

LABEL_63:
  (*(*v63 + 648))(v63, &v59, 1);
  v59 = "tensor_encoding";
  v60 = 15;
  if ((v67 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v9 = v66;
  if (v66)
  {
LABEL_33:
    if (v9 == 15 && *v65 == 0x655F726F736E6574 && *(v65 + 7) == 0x676E69646F636E65)
    {
      v21 = mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::parse(a2);
      goto LABEL_184;
    }

    v59 = "param.decl";
    v60 = 10;
    if (v9)
    {
      goto LABEL_39;
    }

    goto LABEL_67;
  }

LABEL_65:
  (*(*v63 + 648))(v63, &v59, 1);
  v59 = "param.decl";
  v60 = 10;
  if ((v67 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v9 = v66;
  if (v66)
  {
LABEL_39:
    if (v9 == 10 && *v65 == 0x65642E6D61726170 && *(v65 + 8) == 27747)
    {
      v21 = mlir::ODIE::Compiler::CoreML::ParamDeclAttr::parse(a2);
      goto LABEL_184;
    }

    v59 = "param.decl.array";
    v60 = 16;
    if (v9)
    {
      goto LABEL_45;
    }

LABEL_69:
    (*(*v63 + 648))(v63, &v59, 1);
    v59 = "param.ref";
    v60 = 9;
    if ((v67 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v66;
    if (v66)
    {
      goto LABEL_51;
    }

    goto LABEL_71;
  }

LABEL_67:
  (*(*v63 + 648))(v63, &v59, 1);
  v59 = "param.decl.array";
  v60 = 16;
  if ((v67 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v9 = v66;
  if (!v66)
  {
    goto LABEL_69;
  }

LABEL_45:
  if (v9 == 16 && *v65 == 0x65642E6D61726170 && *(v65 + 8) == 0x79617272612E6C63)
  {
    v21 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::parse(a2);
    goto LABEL_184;
  }

  v59 = "param.ref";
  v60 = 9;
  if (v9)
  {
LABEL_51:
    if (v9 == 9 && *v65 == 0x65722E6D61726170 && *(v65 + 8) == 102)
    {
      v21 = mlir::ODIE::Compiler::CoreML::ParamRefAttr::parse(a2, a3);
      goto LABEL_184;
    }

    v59 = "param.bind";
    v60 = 10;
    goto LABEL_73;
  }

LABEL_71:
  (*(*v63 + 648))(v63, &v59, 1);
  v59 = "param.bind";
  v60 = 10;
  if ((v67 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v9 = v66;
LABEL_73:
  if (v9)
  {
    if (v9 == 10 && *v65 == 0x69622E6D61726170 && *(v65 + 8) == 25710)
    {
      v21 = mlir::ODIE::Compiler::CoreML::ParamBindAttr::parse(a2, a3);
      goto LABEL_184;
    }

    v59 = "param.constant";
    v60 = 14;
  }

  else
  {
    (*(*v63 + 648))(v63, &v59, 1);
    v59 = "param.constant";
    v60 = 14;
    if ((v67 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v66;
  }

  if (v9)
  {
    if (v9 == 14 && *v65 == 0x6F632E6D61726170 && *(v65 + 6) == 0x746E6174736E6F63)
    {
      v21 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::parse(a2, a3);
      goto LABEL_184;
    }

    v59 = "intent";
    v60 = 6;
  }

  else
  {
    (*(*v63 + 648))(v63, &v59, 1);
    v59 = "intent";
    v60 = 6;
    if ((v67 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v66;
  }

  if (v9)
  {
    if (v9 == 6 && *v65 == 1702129257 && *(v65 + 4) == 29806)
    {
      v21 = mlir::ODIE::Compiler::CoreML::IntentAttr::parse(a2);
      goto LABEL_184;
    }

    v59 = "target_spec";
    v60 = 11;
  }

  else
  {
    (*(*v63 + 648))(v63, &v59, 1);
    v59 = "target_spec";
    v60 = 11;
    if ((v67 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v66;
  }

  if (v9)
  {
    if (v9 == 11 && *v65 == 0x735F746567726174 && *(v65 + 3) == 0x636570735F746567)
    {
      v21 = mlir::ODIE::Compiler::CoreML::TargetSpecAttr::parse(a2);
      goto LABEL_184;
    }

    v59 = "approximate";
    v60 = 11;
  }

  else
  {
    (*(*v63 + 648))(v63, &v59, 1);
    v59 = "approximate";
    v60 = 11;
    if ((v67 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v66;
  }

  if (v9)
  {
    if (v9 == 11 && *v65 == 0x6D69786F72707061 && *(v65 + 3) == 0x6574616D69786F72)
    {
      v21 = mlir::ODIE::Compiler::CoreML::ApproximateAttr::parse(a2);
      goto LABEL_184;
    }

    v59 = "padding_mode";
    v60 = 12;
  }

  else
  {
    (*(*v63 + 648))(v63, &v59, 1);
    v59 = "padding_mode";
    v60 = 12;
    if ((v67 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v66;
  }

  if (v9)
  {
    if (v9 == 12 && *v65 == 0x5F676E6964646170 && *(v65 + 8) == 1701080941)
    {
      v21 = mlir::ODIE::Compiler::CoreML::PaddingModeAttr::parse(a2);
      goto LABEL_184;
    }

    v59 = "interpolation_mode";
    v60 = 18;
  }

  else
  {
    (*(*v63 + 648))(v63, &v59, 1);
    v59 = "interpolation_mode";
    v60 = 18;
    if ((v67 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v66;
  }

  if (v9)
  {
    if (v9 == 18)
    {
      v27 = *v65 == 0x6C6F707265746E69 && *(v65 + 8) == 0x6F6D5F6E6F697461;
      if (v27 && *(v65 + 16) == 25956)
      {
        v21 = mlir::ODIE::Compiler::CoreML::InterpolationModeAttr::parse(a2);
        goto LABEL_184;
      }
    }

    v59 = "sampling_mode";
    v60 = 13;
  }

  else
  {
    (*(*v63 + 648))(v63, &v59, 1);
    v59 = "sampling_mode";
    v60 = 13;
    if ((v67 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v66;
  }

  if (v9)
  {
    if (v9 == 13 && *v65 == 0x676E696C706D6173 && *(v65 + 5) == 0x65646F6D5F676E69)
    {
      v21 = mlir::ODIE::Compiler::CoreML::SamplingModeAttr::parse(a2);
      goto LABEL_184;
    }

    v59 = "scatter_mode";
    v60 = 12;
  }

  else
  {
    (*(*v63 + 648))(v63, &v59, 1);
    v59 = "scatter_mode";
    v60 = 12;
    if ((v67 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v66;
  }

  if (!v9)
  {
    (*(*v63 + 648))(v63, &v59, 1);
    v59 = "file_resource";
    v60 = 13;
    if ((v67 & 0x10000) == 0)
    {
      v9 = v66;
      goto LABEL_170;
    }

LABEL_3:
    v8 = 0;
    v9 = 0;
    v10 = 0;
    if ((sub_100163F10(&v63) & 0x100) != 0)
    {
      return v8;
    }

    goto LABEL_185;
  }

  if (v9 == 12 && *v65 == 0x5F72657474616373 && *(v65 + 8) == 1701080941)
  {
    v21 = mlir::ODIE::Compiler::CoreML::ScatterModeAttr::parse(a2);
    goto LABEL_184;
  }

  v59 = "file_resource";
  v60 = 13;
LABEL_170:
  if (v9)
  {
    if (v9 != 13)
    {
      goto LABEL_216;
    }

    if (*v65 != 0x7365725F656C6966 || *(v65 + 5) != 0x656372756F736572)
    {
      goto LABEL_216;
    }

    v21 = mlir::ODIE::Compiler::CoreML::FileResourceAttr::parse(a2, a3);
LABEL_184:
    v8 = v21;
    LOBYTE(v67) = v21 != 0;
    *(&v67 + 1) = 257;
    v9 = 0;
    v10 = 0;
    if ((sub_100163F10(&v63) & 0x100) != 0)
    {
      return v8;
    }

    goto LABEL_185;
  }

  (*(*v63 + 648))(v63, &v59, 1);
  if ((v67 & 0x10000) != 0)
  {
    v9 = 0;
    v10 = 0;
    v8 = 0;
    if ((sub_100163F10(&v63) & 0x100) != 0)
    {
      return v8;
    }

    goto LABEL_185;
  }

  v9 = v66;
LABEL_216:
  v8 = 0;
  v10 = v65;
  LOWORD(v67) = 0;
  BYTE2(v67) = 1;
  if ((sub_100163F10(&v63) & 0x100) != 0)
  {
    return v8;
  }

LABEL_185:
  v58 = 257;
  (*(*a2 + 24))(&v63, a2, v6, v57);
  if (v63)
  {
    LODWORD(v59) = 3;
    v61 = 19;
    v32 = &v59;
    v33 = v66;
    if (v67 >= v68)
    {
      if (v66 <= &v59 && v66 + 24 * v67 > &v59)
      {
        v54 = &v59 - v66;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v69, v67 + 1, 24);
        v33 = v66;
        v32 = (v66 + v54);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v69, v67 + 1, 24);
        v32 = &v59;
        v33 = v66;
      }
    }

    v34 = &v33[24 * v67];
    v35 = *v32;
    *(v34 + 2) = v32[2];
    *v34 = v35;
    ++v67;
    if (v63)
    {
      v62 = 261;
      v59 = v10;
      v60 = v9;
      mlir::Diagnostic::operator<<(&v64, &v59);
      if (v63)
      {
        LODWORD(v59) = 3;
        v61 = 14;
        v36 = &v59;
        v37 = v66;
        if (v67 >= v68)
        {
          if (v66 <= &v59 && v66 + 24 * v67 > &v59)
          {
            v55 = &v59 - v66;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v69, v67 + 1, 24);
            v37 = v66;
            v36 = (v66 + v55);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v69, v67 + 1, 24);
            v36 = &v59;
            v37 = v66;
          }
        }

        v38 = &v37[24 * v67];
        v39 = *v36;
        *(v38 + 2) = v36[2];
        *v38 = v39;
        ++v67;
        if (v63)
        {
          v40 = *(a1 + 8);
          v41 = *(a1 + 16);
          v62 = 261;
          v59 = v40;
          v60 = v41;
          mlir::Diagnostic::operator<<(&v64, &v59);
          if (v63)
          {
            LODWORD(v59) = 3;
            v61 = 1;
            v42 = &v59;
            v43 = v66;
            if (v67 >= v68)
            {
              if (v66 <= &v59 && v66 + 24 * v67 > &v59)
              {
                v56 = &v59 - v66;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v69, v67 + 1, 24);
                v43 = v66;
                v42 = (v66 + v56);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v69, v67 + 1, 24);
                v42 = &v59;
                v43 = v66;
              }
            }

            v44 = &v43[24 * v67];
            v45 = *v42;
            *(v44 + 2) = v42[2];
            *v44 = v45;
            ++v67;
            if (v63)
            {
              mlir::InFlightDiagnostic::report(&v63);
            }
          }
        }
      }
    }
  }

  if (v75 == 1)
  {
    if (v74 != &v75)
    {
      free(v74);
    }

    v46 = __p;
    if (__p)
    {
      v47 = v73;
      v48 = __p;
      if (v73 != __p)
      {
        do
        {
          v47 = sub_100052FFC(v47 - 1);
        }

        while (v47 != v46);
        v48 = __p;
      }

      v73 = v46;
      operator delete(v48);
    }

    v49 = v70;
    if (v70)
    {
      v50 = v71;
      v51 = v70;
      if (v71 != v70)
      {
        do
        {
          v52 = *--v50;
          *v50 = 0;
          if (v52)
          {
            operator delete[]();
          }
        }

        while (v50 != v49);
        v51 = v70;
      }

      v71 = v49;
      operator delete(v51);
    }

    if (v66 != v69)
    {
      free(v66);
    }
  }

  return 0;
}