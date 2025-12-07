void anonymous namespace::EncodingReader::emitError<char const(&)[54]>(uint64_t a1, Location a2, const char *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  mlir::emitError(v21, a2.var0.var0, a2);
  if (v21[0])
  {
    v18 = 3;
    v19 = a3;
    v20 = strlen(a3);
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

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, v21);
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
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
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
          v16 = *--v13;
          v15 = v16;
          *v13 = 0;
          if (v16)
          {
            operator delete[](v15);
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
}

uint64_t llvm::iplist_impl<llvm::simple_ilist<mlir::Operation>,llvm::ilist_traits<mlir::Operation>>::splice(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a4 != a5 && a2 != a5)
  {
    result = llvm::ilist_traits<mlir::Operation>::transferNodesFromList(result, a3, a4, a5);
    v8 = *a5;
    v9 = *a4;
    *(v9 + 8) = a5;
    *a5 = v9;
    v10 = *a2;
    *(v8 + 8) = a2;
    *a4 = v10;
    *(v10 + 8) = a4;
    *a2 = v8;
  }

  return result;
}

uint64_t mlir::BytecodeReader::Impl::parseRegion(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v22 = 0;
  {
    return 0;
  }

  v5 = v22;
  if (!v22)
  {
    return 1;
  }

  v21 = 0;
  {
    return 0;
  }

  *(a2 + 32) = v21;
  *(a2 + 48) = 0;
  if (v5 > *(a2 + 52))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 40, (a2 + 56), v5, 8);
  }

  do
  {
    v8 = operator new(0x48uLL);
    *v8 = 0u;
    v8[1] = 0u;
    *(v8 + 4) = v8 + 2;
    *(v8 + 5) = v8 + 2;
    *(v8 + 7) = 0;
    *(v8 + 8) = 0;
    *(v8 + 6) = 0;
    v9 = *(a2 + 48);
    if (v9 >= *(a2 + 52))
    {
      v7 = v8;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 40, (a2 + 56), v9 + 1, 8);
      v8 = v7;
      v9 = *(a2 + 48);
    }

    *(*(a2 + 40) + 8 * v9) = v8;
    v10 = *(a2 + 48) + 1;
    *(a2 + 48) = v10;
    v11 = *a2;
    v12 = *(*(a2 + 40) + 8 * v10 - 8);
    llvm::ilist_traits<mlir::Block>::addNodeToList(*a2, v12);
    v13 = *v11;
    *(v12 + 8) = *v11;
    *(v12 + 16) = v11;
    v12 += 8;
    *(v13 + 8) = v12;
    *v11 = v12;
    --v5;
  }

  while (v5);
  v14 = *(a1 + 688);
  v15 = v14 - 56;
  v16 = (*(v14 - 48) - *(v14 - 56)) >> 3;
  v17 = *(v14 - 24);
  if (v17 >= *(v14 - 20))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v14 - 32, (v14 - 16), v17 + 1, 4);
    v15 = v14 - 56;
    LODWORD(v17) = *(v14 - 24);
  }

  *(*(v14 - 32) + 4 * v17) = v16;
  ++*(v14 - 24);
  v18 = *(v14 - 56);
  v19 = (*(v14 - 48) - v18) >> 3;
  v20 = *(a2 + 32);
  if (v19 >= v19 + v20)
  {
    if (v19 > v19 + v20)
    {
      *(v14 - 48) = v18 + 8 * (v19 + v20);
    }
  }

  else
  {
    std::vector<mlir::Value>::__append(v15, v20);
  }

  *(a2 + 104) = *(*a2 + 8);
  return mlir::BytecodeReader::Impl::parseBlockHeader(a1, v4, a2);
}

uint64_t mlir::BytecodeReader::Impl::createForwardRef(mlir::BytecodeReader::Impl *this, const mlir::OperationState *a2)
{
  v3 = this + 760;
  if (*(this + 104) == (this + 832))
  {
    v5 = mlir::Operation::create((this + 872), a2);
    llvm::ilist_traits<mlir::Operation>::addNodeToList(this + 760, v5);
    MPSGraphDelegateCompiler.precompilationDescriptor.modify();
    v6 = *(this + 95);
    *v7 = v6;
    v7[1] = v3;
    *(v6 + 8) = v7;
    *(this + 95) = v7;
    MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  }

  else
  {
    MPSGraphDelegateCompiler.precompilationDescriptor.modify();
    mlir::Operation::moveBefore(v4, (this + 728), this + 95);
  }

  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  return v8 - 16;
}

BOOL mlir::readBytecodeFile(_OWORD *a1, AttributeStorage *a2, mlir::UnknownLoc **a3)
{
  v3 = a1[1];
  v9[0] = *a1;
  v9[1] = v3;
  v7 = 0;
  v8 = 0;
  result = readBytecodeFileImpl(v9, a2, a3, &v7);
  v5 = v8;
  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = result;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v6;
    }
  }

  return result;
}

BOOL readBytecodeFileImpl(uint64_t a1, AttributeStorage *a2, mlir::UnknownLoc **a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = mlir::FileLineColLoc::get(*a3, *(a1 + 16), *(a1 + 24), 0, 0);
  if (*(a1 + 8) >= 4uLL && **a1 == 1391414349)
  {
    v18 = *(a1 + 16);
    v22[0] = *a1;
    v22[1] = v18;
    mlir::BytecodeReader::Impl::Impl(v24, v8, a3, 0, v22, a4);
    v19.var0.var0 = a2;
    mlir::BytecodeReader::Impl::read(v24, v19, 0, v20);
    mlir::BytecodeReader::Impl::~Impl(v24);
  }

  *&v22[0] = "input buffer is not an MLIR bytecode file";
  v23 = 259;
  mlir::emitError(v8, v22, v24);
  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
  if (v24[0])
  {
    mlir::InFlightDiagnostic::report(v24);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            operator delete[](v16);
          }
        }

        while (v14 != v13);
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v25 != &v26)
    {
      free(v25);
    }
  }

  return v9;
}

uint64_t mlir::Diagnostic::append<char const(&)[20],unsigned long &,char const(&)[18],unsigned long,char const(&)[8]>(uint64_t a1, char *__s, char **a3, char *a4, char **a5, char *a6)
{
  v12 = strlen(__s);
  v13 = a1;
  v16 = *(a1 + 16);
  v15 = a1 + 16;
  v14 = v16;
  v35 = 3;
  v36 = __s;
  v37 = v12;
  v17 = *(v15 + 8);
  v18 = &v35;
  if (v17 >= *(v15 + 12))
  {
    if (v14 <= &v35 && v14 + 24 * v17 > &v35)
    {
      v31 = &v35 - v14;
      v32 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v13 + 32), v17 + 1, 24);
      v13 = v32;
      v14 = *(v32 + 16);
      v18 = &v31[v14];
    }

    else
    {
      v29 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v13 + 32), v17 + 1, 24);
      v13 = v29;
      v14 = *(v29 + 16);
      v18 = &v35;
    }
  }

  v19 = v14 + 24 * *(v13 + 24);
  v20 = *v18;
  *(v19 + 16) = *(v18 + 2);
  *v19 = v20;
  v21 = *(v13 + 28);
  v22 = (*(v13 + 24) + 1);
  *(v13 + 24) = v22;
  v23 = *a3;
  v35 = 5;
  v36 = v23;
  v24 = *(v13 + 16);
  v25 = &v35;
  if (v22 >= v21)
  {
    if (v24 <= &v35 && v24 + 24 * v22 > &v35)
    {
      v33 = &v35 - v24;
      v34 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v13 + 32), v22 + 1, 24);
      v13 = v34;
      v24 = *(v34 + 16);
      v25 = &v33[v24];
    }

    else
    {
      v30 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v13 + 32), v22 + 1, 24);
      v13 = v30;
      v24 = *(v30 + 16);
      v25 = &v35;
    }
  }

  v26 = v24 + 24 * *(v13 + 24);
  v27 = *v25;
  *(v26 + 16) = *(v25 + 2);
  *v26 = v27;
  ++*(v13 + 24);
  return mlir::Diagnostic::append<char const(&)[18],unsigned long,char const(&)[8]>(v13, a4, a5, a6);
}

uint64_t mlir::Diagnostic::append<char const(&)[18],unsigned long,char const(&)[8]>(uint64_t a1, char *__s, char **a3, char *a4)
{
  v8 = strlen(__s);
  v9 = a1;
  v10 = a1 + 16;
  v11 = *(a1 + 16);
  v19 = 3;
  v20 = __s;
  v21 = v8;
  v12 = *(a1 + 24);
  v13 = &v19;
  if (v12 >= *(a1 + 28))
  {
    if (v11 <= &v19 && v11 + 24 * v12 > &v19)
    {
      v17 = &v19 - v11;
      v18 = v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v10, (v9 + 32), v12 + 1, 24);
      v9 = v18;
      v11 = *(v18 + 16);
      v13 = &v17[v11];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v12 + 1, 24);
      v9 = a1;
      v11 = *(a1 + 16);
      v13 = &v19;
    }
  }

  v14 = v11 + 24 * *(v9 + 24);
  v15 = *v13;
  *(v14 + 16) = *(v13 + 2);
  *v14 = v15;
  ++*(v9 + 24);
  return mlir::Diagnostic::append<unsigned long,char const(&)[8]>(v9, a3, a4);
}

uint64_t mlir::Diagnostic::append<unsigned long,char const(&)[8]>(uint64_t a1, char **a2, char *__s)
{
  v6 = a1 + 16;
  v5 = *(a1 + 16);
  v7 = *a2;
  v21 = 5;
  v22 = v7;
  v8 = *(a1 + 24);
  v9 = &v21;
  if (v8 >= *(a1 + 28))
  {
    if (v5 <= &v21 && v5 + 24 * v8 > &v21)
    {
      v19 = &v21 - v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v5 = *(a1 + 16);
      v9 = &v19[v5];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v5 = *(a1 + 16);
      v9 = &v21;
    }
  }

  v10 = v5 + 24 * *(a1 + 24);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  v12 = (*(a1 + 24) + 1);
  *(a1 + 24) = v12;
  v13 = strlen(__s);
  v21 = 3;
  v22 = __s;
  v23 = v13;
  v14 = *(a1 + 16);
  v15 = &v21;
  if (v12 >= *(a1 + 28))
  {
    if (v14 <= &v21 && v14 + 24 * v12 > &v21)
    {
      v20 = &v21 - v14;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (a1 + 32), v12 + 1, 24);
      v14 = *(a1 + 16);
      v15 = &v20[v14];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (a1 + 32), v12 + 1, 24);
      v14 = *(a1 + 16);
      v15 = &v21;
    }
  }

  v16 = v14 + 24 * *(a1 + 24);
  v17 = *v15;
  *(v16 + 16) = *(v15 + 2);
  *v16 = v17;
  ++*(a1 + 24);
  return a1;
}

BOOL anonymous namespace::EncodingReader::parseByte<unsigned char>(uint64_t a1, _BYTE *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 == (*a1 + *(a1 + 8)))
  {
    v4.var0.var0 = *(a1 + 24);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
    if (v14[0])
    {
      mlir::InFlightDiagnostic::report(v14);
    }

    if (v22 == 1)
    {
      if (v21 != &v22)
      {
        free(v21);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v20;
        v7 = __p;
        if (v20 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v20 = v5;
        operator delete(v7);
      }

      v8 = v17;
      if (v17)
      {
        v9 = v18;
        v10 = v17;
        if (v18 != v17)
        {
          do
          {
            v12 = *--v9;
            v11 = v12;
            *v9 = 0;
            if (v12)
            {
              operator delete[](v11);
            }
          }

          while (v9 != v8);
          v10 = v17;
        }

        v18 = v8;
        operator delete(v10);
      }

      if (v15 != &v16)
      {
        free(v15);
      }
    }
  }

  else
  {
    *(a1 + 16) = v2 + 1;
    *a2 = *v2;
    return 1;
  }

  return v3;
}

BOOL anonymous namespace::EncodingReader::alignTo(_anonymous_namespace_::EncodingReader *this, Location a2)
{
  v81 = *MEMORY[0x1E69E9840];
  v3 = (LODWORD(a2.var0.var0) - 1);
  if ((LODWORD(a2.var0.var0) ^ v3) > v3)
  {
    do
    {
      if ((v3 & *(this + 2)) == 0)
      {
        return 1;
      }

      v58 = 0;
      {
        return 0;
      }

      v4 = v58;
    }

    while (v58 == 203);
    if (v58)
    {
      v5 = 16;
      do
      {
        v70[v5-- - 8] = llvm::hexdigit(unsigned int,BOOL)::LUT[v4 & 0xF];
        v6 = v4 > 0xF;
        v4 >>= 4;
      }

      while (v6);
      v7 = v5 + 1;
      v8 = 16 - v5;
      if ((16 - v5) >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }
    }

    else
    {
      v70[8] = 48;
      v7 = 16;
      v8 = 1;
    }

    if (v8 > 0x16)
    {
      if ((v8 | 7) == 0x17)
      {
        v31 = 25;
      }

      else
      {
        v31 = (v8 | 7) + 1;
      }

      p_dst = operator new(v31);
      __dst.__r_.__value_.__l.__size_ = v8;
      __dst.__r_.__value_.__r.__words[2] = v31 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = p_dst;
      if (v7 == 17)
      {
LABEL_62:
        p_dst->__r_.__value_.__s.__data_[v8] = 0;
        v32 = std::string::insert(&__dst, 0, "expected alignment byte (0xCB), but got: '0x");
        v33 = v32->__r_.__value_.__r.__words[2];
        *&v55.__r_.__value_.__l.__data_ = *&v32->__r_.__value_.__l.__data_;
        v55.__r_.__value_.__r.__words[2] = v33;
        v32->__r_.__value_.__l.__size_ = 0;
        v32->__r_.__value_.__r.__words[2] = 0;
        v32->__r_.__value_.__r.__words[0] = 0;
        v34 = std::string::append(&v55, "'");
        v35 = v34->__r_.__value_.__r.__words[2];
        *v56 = *&v34->__r_.__value_.__l.__data_;
        v57 = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        mlir::emitError(&v69, *(this + 3), v82);
        if (v69)
        {
          v61 = 260;
          v59[0] = v56;
          mlir::Diagnostic::operator<<(v70, v59);
        }

        mlir::InFlightDiagnostic::InFlightDiagnostic(v59, &v69);
        if (v69)
        {
          mlir::InFlightDiagnostic::report(&v69);
        }

        if (v80 == 1)
        {
          if (v79 != &v80)
          {
            free(v79);
          }

          v36 = __p;
          if (__p)
          {
            v37 = v78;
            v38 = __p;
            if (v78 != __p)
            {
              do
              {
                v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
              }

              while (v37 != v36);
              v38 = __p;
            }

            v78 = v36;
            operator delete(v38);
          }

          v39 = v75;
          if (v75)
          {
            v40 = v76;
            v41 = v75;
            if (v76 != v75)
            {
              do
              {
                v43 = *--v40;
                v42 = v43;
                *v40 = 0;
                if (v43)
                {
                  operator delete[](v42);
                }
              }

              while (v40 != v39);
              v41 = v75;
            }

            v76 = v39;
            operator delete(v41);
          }

          if (v71 != v74)
          {
            free(v71);
          }
        }

        v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
        if (v59[0])
        {
          mlir::InFlightDiagnostic::report(v59);
        }

        if (v68 == 1)
        {
          if (v67 != &v68)
          {
            free(v67);
          }

          v44 = v65;
          if (v65)
          {
            v45 = v66;
            v46 = v65;
            if (v66 != v65)
            {
              do
              {
                v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
              }

              while (v45 != v44);
              v46 = v65;
            }

            v66 = v44;
            operator delete(v46);
          }

          v47 = v63;
          if (v63)
          {
            v48 = v64;
            v49 = v63;
            if (v64 != v63)
            {
              do
              {
                v51 = *--v48;
                v50 = v51;
                *v48 = 0;
                if (v51)
                {
                  operator delete[](v50);
                }
              }

              while (v48 != v47);
              v49 = v63;
            }

            v64 = v47;
            operator delete(v49);
          }

          if (v60 != v62)
          {
            free(v60);
          }
        }

        if (SHIBYTE(v57) < 0)
        {
          operator delete(v56[0]);
          if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_108:
            if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              return v22;
            }

LABEL_112:
            operator delete(__dst.__r_.__value_.__l.__data_);
            return v22;
          }
        }

        else if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_108;
        }

        operator delete(v55.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return v22;
        }

        goto LABEL_112;
      }
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v8;
      p_dst = &__dst;
      if (v7 == 17)
      {
        goto LABEL_62;
      }
    }

    memcpy(p_dst, &v70[v7 - 8], v8);
    goto LABEL_62;
  }

  mlir::emitError(&v69, *(this + 3), a2);
  if (v69)
  {
    LODWORD(v59[0]) = 3;
    v59[1] = "expected alignment to be a power-of-two";
    v59[2] = 39;
    v10 = v59;
    v11 = v71;
    if (v72 >= v73)
    {
      if (v71 <= v59 && v71 + 24 * v72 > v59)
      {
        v53 = v59 - v71;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
        v11 = v71;
        v10 = (v71 + v53);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
        v10 = v59;
        v11 = v71;
      }
    }

    v12 = &v11[24 * v72];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    ++v72;
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(v59, &v69);
  if (v69)
  {
    mlir::InFlightDiagnostic::report(&v69);
  }

  if (v80 == 1)
  {
    if (v79 != &v80)
    {
      free(v79);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v78;
      v16 = __p;
      if (v78 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v78 = v14;
      operator delete(v16);
    }

    v17 = v75;
    if (v75)
    {
      v18 = v76;
      v19 = v75;
      if (v76 != v75)
      {
        do
        {
          v21 = *--v18;
          v20 = v21;
          *v18 = 0;
          if (v21)
          {
            operator delete[](v20);
          }
        }

        while (v18 != v17);
        v19 = v75;
      }

      v76 = v17;
      operator delete(v19);
    }

    if (v71 != v74)
    {
      free(v71);
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
  if (v59[0])
  {
    mlir::InFlightDiagnostic::report(v59);
  }

  if (v68 == 1)
  {
    if (v67 != &v68)
    {
      free(v67);
    }

    v23 = v65;
    if (v65)
    {
      v24 = v66;
      v25 = v65;
      if (v66 != v65)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = v65;
      }

      v66 = v23;
      operator delete(v25);
    }

    v26 = v63;
    if (v63)
    {
      v27 = v64;
      v28 = v63;
      if (v64 != v63)
      {
        do
        {
          v30 = *--v27;
          v29 = v30;
          *v27 = 0;
          if (v30)
          {
            operator delete[](v29);
          }
        }

        while (v27 != v26);
        v28 = v63;
      }

      v64 = v26;
      operator delete(v28);
    }

    if (v60 != v62)
    {
      free(v60);
    }
  }

  return v22;
}

BOOL anonymous namespace::EncodingReader::parseBytes(void *a1, char *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v16 = a2;
  v3 = a1[2];
  if (*a1 + a1[1] - v3 >= a2)
  {
    *a3 = v3;
    a3[1] = a2;
    a1[2] += a2;
    return 1;
  }

  else
  {
    v15 = (*a1 + a1[1] - v3);
    v4.var0.var0 = a1[3];
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    if (v17[0])
    {
      mlir::InFlightDiagnostic::report(v17);
    }

    if (v25 == 1)
    {
      if (v24 != &v25)
      {
        free(v24);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v23;
        v8 = __p;
        if (v23 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v23 = v6;
        operator delete(v8);
      }

      v9 = v20;
      if (v20)
      {
        v10 = v21;
        v11 = v20;
        if (v21 != v20)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              operator delete[](v12);
            }
          }

          while (v10 != v9);
          v11 = v20;
        }

        v21 = v9;
        operator delete(v11);
      }

      if (v18 != &v19)
      {
        free(v18);
      }
    }
  }

  return v5;
}

__n128 mlir::Diagnostic::append<char const(&)[21],unsigned int>(uint64_t a1, char *__s, unsigned int *a3)
{
  v6 = strlen(__s);
  v7 = a1;
  v10 = *(a1 + 16);
  v9 = a1 + 16;
  v8 = v10;
  v28 = 3;
  v29 = __s;
  v30 = v6;
  v11 = *(v9 + 8);
  v12 = &v28;
  if (v11 >= *(v9 + 12))
  {
    if (v8 <= &v28 && v8 + 24 * v11 > &v28)
    {
      v24 = &v28 - v8;
      v25 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v11 + 1, 24);
      v7 = v25;
      v8 = *(v25 + 16);
      v12 = &v24[v8];
    }

    else
    {
      v22 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v11 + 1, 24);
      v7 = v22;
      v8 = *(v22 + 16);
      v12 = &v28;
    }
  }

  v13 = v8 + 24 * *(v7 + 24);
  v14 = *v12;
  *(v13 + 16) = *(v12 + 2);
  *v13 = v14;
  v15 = *(v7 + 28);
  v16 = (*(v7 + 24) + 1);
  *(v7 + 24) = v16;
  v17 = *a3;
  v28 = 5;
  v29 = v17;
  v18 = *(v7 + 16);
  v19 = &v28;
  if (v16 >= v15)
  {
    if (v18 <= &v28 && v18 + 24 * v16 > &v28)
    {
      v26 = &v28 - v18;
      v27 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v16 + 1, 24);
      v7 = v27;
      v18 = *(v27 + 16);
      v19 = &v26[v18];
    }

    else
    {
      v23 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v16 + 1, 24);
      v7 = v23;
      v18 = *(v23 + 16);
      v19 = &v28;
    }
  }

  v20 = (v18 + 24 * *(v7 + 24));
  result = *v19;
  v20[1].n128_u64[0] = v19[1].n128_u64[0];
  *v20 = result;
  ++*(v7 + 24);
  return result;
}

void anonymous namespace::EncodingReader::emitError<char const(&)[21],unsigned long &,char const(&)[18],unsigned long,char const(&)[8]>(uint64_t a1, Location a2, char **a3, char **a4)
{
  v25 = *MEMORY[0x1E69E9840];
  mlir::emitError(&v15, a2.var0.var0, a2);
  if (v15)
  {
    mlir::Diagnostic::append<char const(&)[20],unsigned long &,char const(&)[18],unsigned long,char const(&)[8]>(&v16, "attempting to parse ", a3, " bytes when only ", a4, " remain");
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v15);
  if (v15)
  {
    mlir::InFlightDiagnostic::report(&v15);
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            operator delete[](v13);
          }
        }

        while (v11 != v10);
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
    }

    if (v17 != &v18)
    {
      free(v17);
    }
  }
}

BOOL _ZN4llvm12function_refIFNS_13LogicalResultEPN12_GLOBAL__N_115BytecodeDialectEEE11callback_fnIZZNS2_14AttrTypeReader10initializeENS_15MutableArrayRefINSt3__110unique_ptrIS3_NSA_14default_deleteIS3_EEEEEENS_8ArrayRefIhEESH_ENK3__0clIRNS_11SmallVectorINS8_5EntryIN4mlir9AttributeEEELj1EEEEEDaOT_EUlS4_E_EES1_lS4_(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = (*v5)++;
  v7 = *v4;
  v25 = 0;
  {
    return 0;
  }

  v8 = v7 + 40 * v6;
  v9 = v25;
  *(v8 + 16) = v25 & 1;
  v10 = v9 >> 1;
  v25 = v10;
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *v11 + v10;
  if (v13 <= v12[1])
  {
    *(v8 + 24) = *v12 + *v11;
    *(v8 + 32) = v10;
    *(v8 + 8) = a2;
    *v11 = v13;
    return 1;
  }

  else
  {
    v14.var0.var0 = *(*(a1 + 16) + 24);
    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
    if (v26[0])
    {
      mlir::InFlightDiagnostic::report(v26);
    }

    if (v34 == 1)
    {
      if (v33 != &v34)
      {
        free(v33);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v32;
        v18 = __p;
        if (v32 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v32 = v16;
        operator delete(v18);
      }

      v19 = v29;
      if (v29)
      {
        v20 = v30;
        v21 = v29;
        if (v30 != v29)
        {
          do
          {
            v23 = *--v20;
            v22 = v23;
            *v20 = 0;
            if (v23)
            {
              operator delete[](v22);
            }
          }

          while (v20 != v19);
          v21 = v29;
        }

        v30 = v19;
        operator delete(v21);
      }

      if (v27 != &v28)
      {
        free(v27);
      }
    }
  }

  return v15;
}

double mlir::Diagnostic::append<char const(&)[18],unsigned long long &,char const(&)[36],unsigned long long &>(uint64_t a1, char *__s, char **a3, char *a4, char **a5)
{
  v10 = strlen(__s);
  v11 = a1;
  v14 = *(a1 + 16);
  v13 = a1 + 16;
  v12 = v14;
  v33 = 3;
  v34 = __s;
  v35 = v10;
  v15 = *(v13 + 8);
  v16 = &v33;
  if (v15 >= *(v13 + 12))
  {
    if (v12 <= &v33 && v12 + 24 * v15 > &v33)
    {
      v29 = &v33 - v12;
      v30 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v15 + 1, 24);
      v11 = v30;
      v12 = *(v30 + 16);
      v16 = &v29[v12];
    }

    else
    {
      v27 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v15 + 1, 24);
      v11 = v27;
      v12 = *(v27 + 16);
      v16 = &v33;
    }
  }

  v17 = v12 + 24 * *(v11 + 24);
  v18 = *v16;
  *(v17 + 16) = *(v16 + 2);
  *v17 = v18;
  v19 = *(v11 + 28);
  v20 = (*(v11 + 24) + 1);
  *(v11 + 24) = v20;
  v21 = *a3;
  v33 = 5;
  v34 = v21;
  v22 = *(v11 + 16);
  v23 = &v33;
  if (v20 >= v19)
  {
    if (v22 <= &v33 && v22 + 24 * v20 > &v33)
    {
      v31 = &v33 - v22;
      v32 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v20 + 1, 24);
      v11 = v32;
      v22 = *(v32 + 16);
      v23 = &v31[v22];
    }

    else
    {
      v28 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v20 + 1, 24);
      v11 = v28;
      v22 = *(v28 + 16);
      v23 = &v33;
    }
  }

  v24 = v22 + 24 * *(v11 + 24);
  v25 = *v23;
  *(v24 + 16) = *(v23 + 2);
  *v24 = v25;
  ++*(v11 + 24);
  *&result = mlir::Diagnostic::append<char const(&)[36],unsigned long long &>(v11, a4, a5).n128_u64[0];
  return result;
}

__n128 mlir::Diagnostic::append<char const(&)[36],unsigned long long &>(uint64_t a1, char *__s, char **a3)
{
  v6 = strlen(__s);
  v7 = a1;
  v10 = *(a1 + 16);
  v9 = a1 + 16;
  v8 = v10;
  v28 = 3;
  v29 = __s;
  v30 = v6;
  v11 = *(v9 + 8);
  v12 = &v28;
  if (v11 >= *(v9 + 12))
  {
    if (v8 <= &v28 && v8 + 24 * v11 > &v28)
    {
      v24 = &v28 - v8;
      v25 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v11 + 1, 24);
      v7 = v25;
      v8 = *(v25 + 16);
      v12 = &v24[v8];
    }

    else
    {
      v22 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v11 + 1, 24);
      v7 = v22;
      v8 = *(v22 + 16);
      v12 = &v28;
    }
  }

  v13 = v8 + 24 * *(v7 + 24);
  v14 = *v12;
  *(v13 + 16) = *(v12 + 2);
  *v13 = v14;
  v15 = *(v7 + 28);
  v16 = (*(v7 + 24) + 1);
  *(v7 + 24) = v16;
  v17 = *a3;
  v28 = 5;
  v29 = v17;
  v18 = *(v7 + 16);
  v19 = &v28;
  if (v16 >= v15)
  {
    if (v18 <= &v28 && v18 + 24 * v16 > &v28)
    {
      v26 = &v28 - v18;
      v27 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v16 + 1, 24);
      v7 = v27;
      v18 = *(v27 + 16);
      v19 = &v26[v18];
    }

    else
    {
      v23 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v16 + 1, 24);
      v7 = v23;
      v18 = *(v23 + 16);
      v19 = &v28;
    }
  }

  v20 = (v18 + 24 * *(v7 + 24));
  result = *v19;
  v20[1].n128_u64[0] = v19[1].n128_u64[0];
  *v20 = result;
  ++*(v7 + 24);
  return result;
}

BOOL anonymous namespace::EncodingReader::parseBytes(_anonymous_namespace_::EncodingReader *this, size_t __n, unsigned __int8 *__dst)
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = __n;
  v5 = *(this + 2);
  if (*this + *(this + 1) - v5 >= __n)
  {
    memcpy(__dst, v5, __n);
    *(this + 2) += __n;
    return 1;
  }

  else
  {
    v17 = (*this + *(this + 1) - v5);
    v6.var0.var0 = *(this + 3);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
    if (v19[0])
    {
      mlir::InFlightDiagnostic::report(v19);
    }

    if (v27 == 1)
    {
      if (v26 != &v27)
      {
        free(v26);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v25;
        v10 = __p;
        if (v25 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v25 = v8;
        operator delete(v10);
      }

      v11 = v22;
      if (v22)
      {
        v12 = v23;
        v13 = v22;
        if (v23 != v22)
        {
          do
          {
            v15 = *--v12;
            v14 = v15;
            *v12 = 0;
            if (v15)
            {
              operator delete[](v14);
            }
          }

          while (v12 != v11);
          v13 = v22;
        }

        v23 = v11;
        operator delete(v13);
      }

      if (v20 != &v21)
      {
        free(v20);
      }
    }
  }

  return v7;
}

uint64_t anonymous namespace::EncodingReader::parseMultiByteVarInt(_anonymous_namespace_::EncodingReader *this, unint64_t *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = __clz(__rbit32(*a2));
  v5[0] = *a2;
  {
    return 0;
  }

  *a2 = v5[0] >> (v3 + 1);
  return 1;
}

BOOL resolveEntry<llvm::SmallVector<llvm::StringRef,3u> const,llvm::StringRef>(Location a1, uint64_t a2, unsigned int a3, char *a4, _OWORD *a5, const void **a6, const void **a7)
{
  v29 = *MEMORY[0x1E69E9840];
  v19[0] = a6;
  v19[1] = a7;
  v18 = a4;
  if (a3 <= a4)
  {
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (v20[0])
    {
      mlir::InFlightDiagnostic::report(v20);
    }

    if (v28 == 1)
    {
      if (v27 != &v28)
      {
        free(v27);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v26;
        v11 = __p;
        if (v26 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v26 = v9;
        operator delete(v11);
      }

      v12 = v23;
      if (v23)
      {
        v13 = v24;
        v14 = v23;
        if (v24 != v23)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              operator delete[](v15);
            }
          }

          while (v13 != v12);
          v14 = v23;
        }

        v24 = v12;
        operator delete(v14);
      }

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  else
  {
    *a5 = *(a2 + 16 * a4);
    return 1;
  }

  return v7;
}

void anonymous namespace::EncodingReader::emitError<char const(&)[9],llvm::StringRef &,char const(&)[9],unsigned long long &>(uint64_t a1, Location a2, const void ***a3, char **a4)
{
  v25 = *MEMORY[0x1E69E9840];
  mlir::emitError(&v15, a2.var0.var0, a2);
  if (v15)
  {
    mlir::Diagnostic::append<char const(&)[9],llvm::StringRef &,char const(&)[9],unsigned long long &>(&v16, "invalid ", a3, " index: ", a4);
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v15);
  if (v15)
  {
    mlir::InFlightDiagnostic::report(&v15);
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            operator delete[](v13);
          }
        }

        while (v11 != v10);
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
    }

    if (v17 != &v18)
    {
      free(v17);
    }
  }
}

double mlir::Diagnostic::append<char const(&)[9],llvm::StringRef &,char const(&)[9],unsigned long long &>(uint64_t a1, char *__s, const void ***a3, char *a4, char **a5)
{
  v10 = strlen(__s);
  v11 = a1 + 16;
  v12 = *(a1 + 16);
  LODWORD(v20) = 3;
  v21 = __s;
  v22 = v10;
  v13 = *(a1 + 24);
  v14 = &v20;
  if (v13 >= *(a1 + 28))
  {
    if (v12 <= &v20 && v12 + 24 * v13 > &v20)
    {
      v19 = &v20 - v12;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (a1 + 32), v13 + 1, 24);
      v12 = *(a1 + 16);
      v14 = &v19[v12];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (a1 + 32), v13 + 1, 24);
      v12 = *(a1 + 16);
      v14 = &v20;
    }
  }

  v15 = v12 + 24 * *(a1 + 24);
  v16 = *v14;
  *(v15 + 16) = v14[2];
  *v15 = v16;
  ++*(a1 + 24);
  v23 = 261;
  v17 = a3[1];
  v20 = *a3;
  v21 = v17;
  mlir::Diagnostic::operator<<(a1, &v20);
  *&result = mlir::Diagnostic::append<char const(&)[36],unsigned long long &>(a1, a4, a5).n128_u64[0];
  return result;
}

BOOL parseEntry<llvm::MutableArrayRef<std::unique_ptr<anonymous namespace::BytecodeDialect>>,std::unique_ptr<anonymous namespace::BytecodeDialect>*>(AttributeStorage **a1, uint64_t *a2, void *a3, const void **a4, const void **a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v23 = 0;
  {
    return 0;
  }

  v10.var0.var0 = a1[3];
  v11 = *a2;
  v12 = a2[1];
  v25[0] = a4;
  v25[1] = a5;
  v24 = v23;
  if (v12 <= v23)
  {
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
    if (v26[0])
    {
      mlir::InFlightDiagnostic::report(v26);
    }

    if (v34 == 1)
    {
      if (v33 != &v34)
      {
        free(v33);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v32;
        v17 = __p;
        if (v32 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v32 = v15;
        operator delete(v17);
      }

      v18 = v29;
      if (v29)
      {
        v19 = v30;
        v20 = v29;
        if (v30 != v29)
        {
          do
          {
            v22 = *--v19;
            v21 = v22;
            *v19 = 0;
            if (v22)
            {
              operator delete[](v21);
            }
          }

          while (v19 != v18);
          v20 = v29;
        }

        v30 = v18;
        operator delete(v20);
      }

      if (v27 != &v28)
      {
        free(v27);
      }
    }
  }

  else
  {
    *a3 = v11 + 8 * v23;
    return 1;
  }

  return v13;
}

void anonymous namespace::DialectReader::emitError(uint64_t a1@<X0>, Location a2@<X1>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  mlir::emitError(&v13, *(*(a1 + 40) + 24), a2);
  if (v13)
  {
    mlir::Diagnostic::operator<<(&v14, a2.var0.var0);
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a3, &v13);
  if (v13)
  {
    mlir::InFlightDiagnostic::report(&v13);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v20;
      v7 = __p;
      if (v20 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v20 = v5;
      operator delete(v7);
    }

    v8 = v17;
    if (v17)
    {
      v9 = v18;
      v10 = v17;
      if (v18 != v17)
      {
        do
        {
          v12 = *--v9;
          v11 = v12;
          *v9 = 0;
          if (v12)
          {
            operator delete[](v11);
          }
        }

        while (v9 != v8);
        v10 = v17;
      }

      v18 = v8;
      operator delete(v10);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }
}

uint64_t anonymous namespace::DialectReader::getDialectVersion(uint64_t a1, unsigned int *a2, const unsigned __int8 *a3, unint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = llvm::StringMapImpl::hash(a2, a3, a3, a4);
  Key = llvm::StringMapImpl::FindKey(v7, a2, a3, v8);
  if (Key == -1)
  {
    v10 = *(v7 + 8);
  }

  else
  {
    v10 = Key;
  }

  v11 = *v7 + 8 * v10;
  if (v11 == **(a1 + 32) + 8 * *(*(a1 + 32) + 8))
  {
    return 0;
  }

  v12 = *(*v11 + 8);
  v15 = *(*(a1 + 40) + 24);
  Context = mlir::Attribute::getContext(&v15);
  {
    return 0;
  }

  else
  {
    return *(*(*v11 + 8) + 56);
  }
}

BOOL anonymous namespace::DialectReader::readAttribute(_anonymous_namespace_::DialectReader *this, mlir::Attribute *a2)
{
  v3 = *(this + 1);
  v4 = *(this + 5);
  v8 = 0;
  {
    return 0;
  }

  v5.var0.var0 = v8;
  *a2 = v6;
  return v6 != 0;
}

BOOL anonymous namespace::DialectReader::readOptionalAttribute(_anonymous_namespace_::DialectReader *this, mlir::Attribute *a2)
{
  v3 = *(this + 1);
  v4 = *(this + 5);
  v8 = 0;
  {
    return 0;
  }

  if ((v8 & 1) == 0)
  {
    return 1;
  }

  v5.var0.var0 = (v8 >> 1);
  *a2 = v6;
  return v6 != 0;
}

BOOL anonymous namespace::DialectReader::readType(_anonymous_namespace_::DialectReader *this, mlir::Type *a2)
{
  v3 = *(this + 1);
  v4 = *(this + 5);
  v8 = 0;
  {
    return 0;
  }

  v5.var0.var0 = v8;
  *a2 = v6;
  return v6 != 0;
}

uint64_t anonymous namespace::DialectReader::readSignedVarInt(_anonymous_namespace_::EncodingReader **this, unint64_t *a2)
{
  v4 = 0;
  {
    return 0;
  }

  *a2 = -(v4 & 1) ^ (v4 >> 1);
  return 1;
}

void anonymous namespace::DialectReader::readAPIntWithKnownWidth(_anonymous_namespace_::DialectReader *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v19[4] = *MEMORY[0x1E69E9840];
  if (a2 <= 8)
  {
    LOBYTE(v17) = 0;
    {
      v6 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
      if (!v3)
      {
        LOBYTE(v6) = 0;
      }

      v7 = v6 & v17;
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if (a2 <= 0x40)
  {
    v17 = 0;
    {
      v7 = (-(v17 & 1) ^ (v17 >> 1)) & (0xFFFFFFFFFFFFFFFFLL >> -v3);
LABEL_9:
      *(a3 + 8) = v3;
      *a3 = v7;
      *(a3 + 16) = 1;
      return;
    }

    goto LABEL_14;
  }

  v16 = 0;
  {
LABEL_14:
    *a3 = 0;
    *(a3 + 16) = 0;
    return;
  }

  v8 = v16;
  v17 = v19;
  v18 = 0x400000000;
  if (v16)
  {
    if (v16 < 5)
    {
      v9 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v17, v19, v16, 8);
      v9 = v18;
    }

    if (v8 != v9)
    {
      bzero(v17 + 8 * v9, 8 * (v8 - v9));
    }

    v11 = 0;
    LODWORD(v18) = v8;
    while (1)
    {
      v12 = v17;
      {
        break;
      }

      *&v12[v11] = -(*&v12[v11] & 1) ^ (*&v12[v11] >> 1);
      v11 += 8;
      if (!--v8)
      {
        v10 = v18;
        goto LABEL_24;
      }
    }

    *a3 = 0;
    *(a3 + 16) = 0;
    v13 = v17;
    if (v17 != v19)
    {
LABEL_27:
      free(v13);
    }
  }

  else
  {
    v10 = 0;
LABEL_24:
    llvm::APInt::APInt(&v14, v3, v17, v10);
    *(a3 + 8) = v15;
    *a3 = v14;
    *(a3 + 16) = 1;
    v13 = v17;
    if (v17 != v19)
    {
      goto LABEL_27;
    }
  }
}

void anonymous namespace::DialectReader::readAPFloatWithKnownSemantics(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = llvm::APFloatBase::semanticsSizeInBits(a2);
  v7 = (*(*a1 + 88))(&__p, a1, v6);
  if ((v13 & 1) == 0)
  {
    *a3 = 0;
    a3[32] = 0;
    return;
  }

  v9 = llvm::APFloatBase::PPCDoubleDouble(v7);
  if (v9 != a2)
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v14, a2, &__p, v8);
    v10 = (a3 + 8);
    if (v9 != v14.n128_u64[0])
    {
      goto LABEL_4;
    }

LABEL_8:
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v10, &v14);
    a3[32] = 1;
    if (v9 != v14.n128_u64[0])
    {
      goto LABEL_5;
    }

LABEL_9:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v14);
    goto LABEL_10;
  }

  llvm::detail::DoubleAPFloat::DoubleAPFloat(&v14, a2, &__p);
  v10 = (a3 + 8);
  if (v9 == v14.n128_u64[0])
  {
    goto LABEL_8;
  }

LABEL_4:
  llvm::detail::IEEEFloat::IEEEFloat(v10, &v14);
  a3[32] = 1;
  if (v9 == v14.n128_u64[0])
  {
    goto LABEL_9;
  }

LABEL_5:
  llvm::detail::IEEEFloat::~IEEEFloat(&v14);
LABEL_10:
  if ((v13 & 1) != 0 && v12 >= 0x41)
  {
    if (__p)
    {
      operator delete[](__p);
    }
  }
}

BOOL anonymous namespace::DialectReader::readString(_anonymous_namespace_::DialectReader *this, llvm::StringRef *a2)
{
  v3 = *(this + 2);
  v4 = *(this + 5);
  v10 = 0;
  {
    return 0;
  }

  v5 = v10;
  v6.var0.var0 = v4[3];
  v7 = *v3;
  v8 = *(v3 + 8);

  return resolveEntry<llvm::SmallVector<llvm::StringRef,3u> const,llvm::StringRef>(v6, v7, v8, v5, a2, "string", 6);
}

uint64_t anonymous namespace::DialectReader::readBlob(uint64_t a1, void *a2)
{
  v7 = 0;
  v8 = 0;
  v6 = 0;
  {
    return 0;
  }

  v4 = v7;
  *a2 = v6;
  a2[1] = v4;
  return 1;
}

void anonymous namespace::DialectReader::readResourceHandle(_anonymous_namespace_::DialectReader *this@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  v4 = *(this + 5);
  v21 = 0;
  {
    goto LABEL_27;
  }

  v5.var0.var0 = v4[3];
  v6 = *v3;
  v7 = *(v3 + 2);
  v23[0] = "resource handle";
  v23[1] = 15;
  v22 = v21;
  if (v21 >= v7)
  {
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
    if (v24[0])
    {
      mlir::InFlightDiagnostic::report(v24);
    }

    if (v32 == 1)
    {
      if (v31 != &v32)
      {
        free(v31);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v30;
        v14 = __p;
        if (v30 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v30 = v12;
        operator delete(v14);
      }

      v15 = v27;
      if (v27)
      {
        v16 = v28;
        v17 = v27;
        if (v28 != v27)
        {
          do
          {
            v19 = *--v16;
            v18 = v19;
            *v16 = 0;
            if (v19)
            {
              operator delete[](v18);
            }
          }

          while (v16 != v15);
          v17 = v27;
        }

        v28 = v15;
        operator delete(v17);
      }

      if (v25 != &v26)
      {
        free(v25);
      }
    }

    if (v11)
    {
      v9 = 0;
      *&v10 = &mlir::detail::TypeIDResolver<void,void>::id;
      goto LABEL_26;
    }

LABEL_27:
    v20 = 0;
    *a2 = 0;
    goto LABEL_28;
  }

  v8 = (v6 + 24 * v21);
  v9 = *v8;
  v10 = *(v8 + 1);
LABEL_26:
  *a2 = v9;
  *(a2 + 8) = v10;
  v20 = 1;
LABEL_28:
  *(a2 + 24) = v20;
}

uint64_t anonymous namespace::BytecodeDialect::load(uint64_t a1, uint64_t a2, mlir::MLIRContext *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8))
  {
    return 1;
  }

  Dialect = mlir::MLIRContext::getOrLoadDialect(a3, *(a1 + 24), *(a1 + 32));
  if (Dialect)
  {
    *a1 = Dialect;
    *(a1 + 8) = 1;
    v7 = Dialect;
    v8 = mlir::Dialect::getRegisteredInterface<mlir::BytecodeDialectInterface>(Dialect);
    if (v8)
    {
      v8 = mlir::Dialect::getRegisteredInterface<mlir::BytecodeDialectInterface>(v7);
    }

    *(a1 + 16) = v8;
    v9 = *(a1 + 48);
    if (!v9)
    {
      return 1;
    }

LABEL_9:
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = *(a2 + 48);
      v12 = *(*(a2 + 40) + 24);
      v47 = *(a1 + 40);
      v48 = v9;
      v49 = v47;
      v50 = v12;
      v52 = &unk_1F5AF21B0;
      v13 = *(a2 + 24);
      v53 = *(a2 + 8);
      *v54 = v13;
      v55[0] = &v47;
      v55[1] = v11;
      (*(*v10 + 56))(v45);
      v14 = v45[0];
      v45[0] = 0;
      v15 = *(a1 + 56);
      *(a1 + 56) = v14;
      if (v15)
      {
        (*(*v15 + 8))(v15);
        v16 = v45[0];
        v45[0] = 0;
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }

        v14 = *(a1 + 56);
      }

      return v14 != 0;
    }

    v45[0] = "dialect '";
    v46 = 259;
    (*(*a2 + 16))(&v52, a2, v45);
    if (v52)
    {
      v51 = 261;
      v18 = *(a1 + 32);
      v47 = *(a1 + 24);
      v48 = v18;
      mlir::Diagnostic::operator<<(&v53, &v47);
      if (v52)
      {
        LODWORD(v47) = 3;
        v48 = "' does not implement the bytecode interface, but found a version entry";
        v49 = 70;
        v19 = &v47;
        v20 = v54[0];
        if (LODWORD(v54[1]) >= HIDWORD(v54[1]))
        {
          if (v54[0] <= &v47 && v54[0] + 24 * LODWORD(v54[1]) > &v47)
          {
            v43 = &v47 - v54[0];
            llvm::SmallVectorBase<unsigned int>::grow_pod(v54, v55, LODWORD(v54[1]) + 1, 24);
            v20 = v54[0];
            v19 = (v54[0] + v43);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v54, v55, LODWORD(v54[1]) + 1, 24);
            v19 = &v47;
            v20 = v54[0];
          }
        }

        v21 = &v20[24 * LODWORD(v54[1])];
        v22 = *v19;
        *(v21 + 2) = v19[2];
        *v21 = v22;
        ++LODWORD(v54[1]);
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v52);
    v23 = result;
    if (v52)
    {
      mlir::InFlightDiagnostic::report(&v52);
      result = v23;
    }

    if (v61 == 1)
    {
      if (v60 != &v61)
      {
        free(v60);
        result = v23;
      }

      v24 = __p;
      if (__p)
      {
        v25 = v59;
        v26 = __p;
        if (v59 != __p)
        {
          do
          {
            v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v59 = v24;
        operator delete(v26);
        result = v23;
      }

      v27 = v56;
      if (!v56)
      {
        goto LABEL_60;
      }

      v28 = v57;
      v29 = v56;
      if (v57 == v56)
      {
LABEL_59:
        v57 = v27;
        operator delete(v29);
        result = v23;
LABEL_60:
        if (v54[0] != v55)
        {
          free(v54[0]);
          return v23;
        }

        return result;
      }

      do
      {
        v31 = *--v28;
        v30 = v31;
        *v28 = 0;
        if (v31)
        {
          operator delete[](v30);
        }
      }

      while (v28 != v27);
LABEL_58:
      v29 = v56;
      goto LABEL_59;
    }

    return result;
  }

  if (mlir::MLIRContext::allowsUnregisteredDialects(a3))
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    v9 = *(a1 + 48);
    if (v9)
    {
      goto LABEL_9;
    }

    return 1;
  }

  v45[0] = "dialect '";
  v46 = 259;
  (*(*a2 + 16))(&v52, a2, v45);
  if (v52)
  {
    v51 = 261;
    v32 = *(a1 + 32);
    v47 = *(a1 + 24);
    v48 = v32;
    mlir::Diagnostic::operator<<(&v53, &v47);
    if (v52)
    {
      LODWORD(v47) = 3;
      v48 = "' is unknown. If this is intended, please call allowUnregisteredDialects() on the MLIRContext, or use -allow-unregistered-dialect with the MLIR tool used.";
      v49 = 154;
      v33 = &v47;
      v34 = v54[0];
      if (LODWORD(v54[1]) >= HIDWORD(v54[1]))
      {
        if (v54[0] <= &v47 && v54[0] + 24 * LODWORD(v54[1]) > &v47)
        {
          v44 = &v47 - v54[0];
          llvm::SmallVectorBase<unsigned int>::grow_pod(v54, v55, LODWORD(v54[1]) + 1, 24);
          v34 = v54[0];
          v33 = (v54[0] + v44);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v54, v55, LODWORD(v54[1]) + 1, 24);
          v33 = &v47;
          v34 = v54[0];
        }
      }

      v35 = &v34[24 * LODWORD(v54[1])];
      v36 = *v33;
      *(v35 + 2) = v33[2];
      *v35 = v36;
      ++LODWORD(v54[1]);
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v52);
  v23 = result;
  if (v52)
  {
    mlir::InFlightDiagnostic::report(&v52);
    result = v23;
  }

  if (v61 == 1)
  {
    if (v60 != &v61)
    {
      free(v60);
      result = v23;
    }

    v37 = __p;
    if (__p)
    {
      v38 = v59;
      v39 = __p;
      if (v59 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v59 = v37;
      operator delete(v39);
      result = v23;
    }

    v27 = v56;
    if (!v56)
    {
      goto LABEL_60;
    }

    v40 = v57;
    v29 = v56;
    if (v57 == v56)
    {
      goto LABEL_59;
    }

    do
    {
      v42 = *--v40;
      v41 = v42;
      *v40 = 0;
      if (v42)
      {
        operator delete[](v41);
      }
    }

    while (v40 != v27);
    goto LABEL_58;
  }

  return result;
}

uint64_t mlir::Dialect::getRegisteredInterface<mlir::BytecodeDialectInterface>(uint64_t a1)
{
  {
    v1 = *(a1 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    v8 = a1;
    mlir::Dialect::getRegisteredInterface<mlir::BytecodeDialectInterface>();
    a1 = v8;
    v1 = *(v8 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(a1 + 48);
  v3 = ((mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id >> 4) ^ (mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id >> 9)) & (v1 - 1);
  v4 = *(v2 + 16 * v3);
  if (v4 != mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id)
  {
    v6 = 1;
    while (v4 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (v1 - 1);
      v4 = *(v2 + 16 * v3);
      if (v4 == mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

LABEL_4:
  if (v3 == v1)
  {
    return 0;
  }

  return *(v2 + 16 * v3 + 8);
}

const char *llvm::getTypeName<mlir::BytecodeDialectInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::BytecodeDialectInterface]";
  v6 = 80;
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

uint64_t anonymous namespace::AttrTypeReader::resolveAttribute(mlir **this, Location a2)
{
  v89 = *MEMORY[0x1E69E9840];
  if (*(this + 8) <= a2.var0.var0)
  {
    mlir::emitError(&v77, this[17], a2);
    if (v77)
    {
      LODWORD(v70) = 3;
      var0 = "invalid ";
      *&v72 = 8;
      v19 = &v70;
      v20 = v79;
      if (v80 >= v81)
      {
        if (v79 <= &v70 && v79 + 24 * v80 > &v70)
        {
          v59 = &v70 - v79;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
          v20 = v79;
          v19 = (v79 + v59);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
          v19 = &v70;
          v20 = v79;
        }
      }

      v21 = &v20[24 * v80];
      v22 = *v19;
      *(v21 + 2) = v19[2];
      *v21 = v22;
      ++v80;
      if (v77)
      {
        LOWORD(v73) = 261;
        v70 = "Attribute";
        var0 = 9;
        mlir::Diagnostic::operator<<(&v78, &v70);
        if (v77)
        {
          LODWORD(v70) = 3;
          var0 = " index: ";
          *&v72 = 8;
          v23 = &v70;
          v24 = v79;
          if (v80 >= v81)
          {
            if (v79 <= &v70 && v79 + 24 * v80 > &v70)
            {
              v60 = &v70 - v79;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
              v24 = v79;
              v23 = (v79 + v60);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
              v23 = &v70;
              v24 = v79;
            }
          }

          v25 = &v24[24 * v80];
          v26 = *v23;
          *(v25 + 2) = v23[2];
          *v25 = v26;
          v27 = ++v80;
          if (v77)
          {
            LODWORD(v70) = 5;
            var0 = a2.var0.var0;
            v28 = &v70;
            v29 = v79;
            if (v27 >= v81)
            {
              if (v79 <= &v70 && v79 + 24 * v27 > &v70)
              {
                v61 = &v70 - v79;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v27 + 1, 24);
                v29 = v79;
                v28 = (v79 + v61);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v27 + 1, 24);
                v28 = &v70;
                v29 = v79;
              }
            }

            v30 = &v29[24 * v80];
            v31 = *v28;
            *(v30 + 2) = v28[2];
            *v30 = v31;
            ++v80;
            if (v77)
            {
              mlir::InFlightDiagnostic::report(&v77);
            }
          }
        }
      }
    }

    if (v88 != 1)
    {
      return 0;
    }

    if (v87 != &v88)
    {
      free(v87);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v86;
      v34 = __p;
      if (v86 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v86 = v32;
      operator delete(v34);
    }

    v35 = v83;
    if (!v83)
    {
      goto LABEL_78;
    }

    v36 = v84;
    v37 = v83;
    if (v84 == v83)
    {
      goto LABEL_77;
    }

    do
    {
      v39 = *--v36;
      v38 = v39;
      *v36 = 0;
      if (v39)
      {
        operator delete[](v38);
      }
    }

    while (v36 != v35);
    goto LABEL_76;
  }

  v3 = this[3] + 40 * a2.var0.var0;
  v4 = *v3;
  if (!*v3)
  {
    v6 = (this + 17);
    v5 = this[17];
    v67 = *(v3 + 24);
    v68 = v67;
    v69 = v5;
    if (v3[16] != 1)
    {
      v70 = "Attribute";
      var0 = 9;
      v62 = 0;
      v63 = 0;
      {
        v76 = 0;
        Context = mlir::Attribute::getContext(v6);
        mlir::parseAttribute(v62, v63, Context, 0, &v76, 1);
      }

      return 0;
    }

    v7 = this[2];
    v8 = this[18];
    v70 = &unk_1F5AF21B0;
    var0 = this;
    v72 = *this;
    v73 = v7;
    v74 = &v67;
    v75 = v8;
    v10 = *(v3 + 1);
    v11 = mlir::Attribute::getContext((this + 17));
    {
      return 0;
    }

    v12 = this[19];
    v13 = *(v12 + 14);
    if (v13)
    {
      v14 = *(v12 + 6);
      v15 = 8 * v13;
      while (((*(**v14 + 16))(*v14, &v70, *(*(v3 + 1) + 24), *(*(v3 + 1) + 32), v3) & 1) != 0)
      {
        if (*v3)
        {
          goto LABEL_59;
        }

        v67 = *(v3 + 24);
        v68 = v67;
        ++v14;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_10;
        }
      }

      return 0;
    }

LABEL_10:
    v16 = *(v3 + 1);
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (*(*v17 + 16))(v17, &v70);
      *v3 = v18;
      if (!v18)
      {
        return 0;
      }
    }

    else
    {
      v41.var0.var0 = v69;
      v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
      if (v77)
      {
        mlir::InFlightDiagnostic::report(&v77);
      }

      if (v88 == 1)
      {
        if (v87 != &v88)
        {
          free(v87);
        }

        v43 = __p;
        if (__p)
        {
          v44 = v86;
          v45 = __p;
          if (v86 != __p)
          {
            do
            {
              v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
            }

            while (v44 != v43);
            v45 = __p;
          }

          v86 = v43;
          operator delete(v45);
        }

        v46 = v83;
        if (v83)
        {
          v47 = v84;
          v48 = v83;
          if (v84 != v83)
          {
            do
            {
              v50 = *--v47;
              v49 = v50;
              *v47 = 0;
              if (v50)
              {
                operator delete[](v49);
              }
            }

            while (v47 != v46);
            v48 = v83;
          }

          v84 = v46;
          operator delete(v48);
        }

        if (v79 != v82)
        {
          free(v79);
        }
      }

      if (!v42)
      {
        return 0;
      }
    }

LABEL_59:
    if (v68 == v67 + *(&v67 + 1))
    {
      return *v3;
    }

    v66 = 1283;
    v62 = "unexpected trailing bytes after ";
    v64 = "Attribute";
    v65 = 9;
    v70 = &v62;
    *&v72 = " entry";
    LOWORD(v73) = 770;
    v51.var0.var0 = v69;
    if (v77)
    {
      mlir::InFlightDiagnostic::report(&v77);
    }

    if (v88 != 1)
    {
      return 0;
    }

    if (v87 != &v88)
    {
      free(v87);
    }

    v52 = __p;
    if (__p)
    {
      v53 = v86;
      v54 = __p;
      if (v86 != __p)
      {
        do
        {
          v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
        }

        while (v53 != v52);
        v54 = __p;
      }

      v86 = v52;
      operator delete(v54);
    }

    v35 = v83;
    if (!v83)
    {
LABEL_78:
      if (v79 != v82)
      {
        free(v79);
      }

      return 0;
    }

    v55 = v84;
    v37 = v83;
    if (v84 == v83)
    {
LABEL_77:
      v84 = v35;
      operator delete(v37);
      goto LABEL_78;
    }

    do
    {
      v57 = *--v55;
      v56 = v57;
      *v55 = 0;
      if (v57)
      {
        operator delete[](v56);
      }
    }

    while (v55 != v35);
LABEL_76:
    v37 = v83;
    goto LABEL_77;
  }

  return v4;
}

void anonymous namespace::EncodingReader::emitError<llvm::Twine>(uint64_t a1, Location a2, const void ***a3)
{
  v23 = *MEMORY[0x1E69E9840];
  mlir::emitError(&v13, a2.var0.var0, a2);
  if (v13)
  {
    mlir::Diagnostic::operator<<(&v14, a3);
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v13);
  if (v13)
  {
    mlir::InFlightDiagnostic::report(&v13);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v20;
      v7 = __p;
      if (v20 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v20 = v5;
      operator delete(v7);
    }

    v8 = v17;
    if (v17)
    {
      v9 = v18;
      v10 = v17;
      if (v18 != v17)
      {
        do
        {
          v12 = *--v9;
          v11 = v12;
          *v9 = 0;
          if (v12)
          {
            operator delete[](v11);
          }
        }

        while (v9 != v8);
        v10 = v17;
      }

      v18 = v8;
      operator delete(v10);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }
}

void anonymous namespace::EncodingReader::emitError<char const(&)[10],llvm::StringRef &,char const(&)[44]>(uint64_t a1, Location a2, const void ***a3)
{
  v23 = *MEMORY[0x1E69E9840];
  mlir::emitError(&v13, a2.var0.var0, a2);
  if (v13)
  {
    mlir::Diagnostic::append<char const(&)[28],llvm::StringRef &,char const(&)[2]>(&v14, "dialect '", a3, "' does not implement the bytecode interface");
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v13);
  if (v13)
  {
    mlir::InFlightDiagnostic::report(&v13);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v20;
      v7 = __p;
      if (v20 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v20 = v5;
      operator delete(v7);
    }

    v8 = v17;
    if (v17)
    {
      v9 = v18;
      v10 = v17;
      if (v18 != v17)
      {
        do
        {
          v12 = *--v9;
          v11 = v12;
          *v9 = 0;
          if (v12)
          {
            operator delete[](v11);
          }
        }

        while (v9 != v8);
        v10 = v17;
      }

      v18 = v8;
      operator delete(v10);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }
}

void anonymous namespace::EncodingReader::emitError<char const(&)[33],llvm::StringRef &,char const(&)[19],llvm::StringRef>(uint64_t a1, Location a2, const void ***a3, const void ***a4)
{
  v25 = *MEMORY[0x1E69E9840];
  mlir::emitError(&v15, a2.var0.var0, a2);
  if (v15)
  {
    mlir::Diagnostic::append<char const(&)[33],llvm::StringRef &,char const(&)[19],llvm::StringRef>(&v16, "trailing characters found after ", a3, " assembly format: ", a4);
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v15);
  if (v15)
  {
    mlir::InFlightDiagnostic::report(&v15);
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            operator delete[](v13);
          }
        }

        while (v11 != v10);
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
    }

    if (v17 != &v18)
    {
      free(v17);
    }
  }
}

uint64_t mlir::Diagnostic::append<char const(&)[33],llvm::StringRef &,char const(&)[19],llvm::StringRef>(uint64_t a1, char *__s, const void ***a3, char *a4, const void ***a5)
{
  v10 = strlen(__s);
  v11 = a1 + 16;
  v12 = *(a1 + 16);
  LODWORD(v20) = 3;
  v21 = __s;
  v22 = v10;
  v13 = *(a1 + 24);
  v14 = &v20;
  if (v13 >= *(a1 + 28))
  {
    if (v12 <= &v20 && v12 + 24 * v13 > &v20)
    {
      v19 = &v20 - v12;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (a1 + 32), v13 + 1, 24);
      v12 = *(a1 + 16);
      v14 = &v19[v12];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (a1 + 32), v13 + 1, 24);
      v12 = *(a1 + 16);
      v14 = &v20;
    }
  }

  v15 = v12 + 24 * *(a1 + 24);
  v16 = *v14;
  *(v15 + 16) = v14[2];
  *v15 = v16;
  ++*(a1 + 24);
  v23 = 261;
  v17 = a3[1];
  v20 = *a3;
  v21 = v17;
  mlir::Diagnostic::operator<<(a1, &v20);
  return mlir::Diagnostic::append<char const(&)[19],llvm::StringRef>(a1, a4, a5);
}

uint64_t mlir::Diagnostic::append<char const(&)[19],llvm::StringRef>(uint64_t a1, char *__s, const void ***a3)
{
  v6 = strlen(__s);
  v7 = a1 + 16;
  v8 = *(a1 + 16);
  LODWORD(v16) = 3;
  v17 = __s;
  v18 = v6;
  v9 = *(a1 + 24);
  v10 = &v16;
  if (v9 >= *(a1 + 28))
  {
    if (v8 <= &v16 && v8 + 24 * v9 > &v16)
    {
      v15 = &v16 - v8;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (a1 + 32), v9 + 1, 24);
      v8 = *(a1 + 16);
      v10 = &v15[v8];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (a1 + 32), v9 + 1, 24);
      v8 = *(a1 + 16);
      v10 = &v16;
    }
  }

  v11 = v8 + 24 * *(a1 + 24);
  v12 = *v10;
  *(v11 + 16) = v10[2];
  *v11 = v12;
  ++*(a1 + 24);
  v19 = 261;
  v13 = a3[1];
  v16 = *a3;
  v17 = v13;
  mlir::Diagnostic::operator<<(a1, &v16);
  return a1;
}

uint64_t anonymous namespace::AttrTypeReader::resolveType(mlir **this, Location a2)
{
  v89 = *MEMORY[0x1E69E9840];
  if (*(this + 22) <= a2.var0.var0)
  {
    mlir::emitError(&v77, this[17], a2);
    if (v77)
    {
      LODWORD(v70) = 3;
      var0 = "invalid ";
      *&v72 = 8;
      v19 = &v70;
      v20 = v79;
      if (v80 >= v81)
      {
        if (v79 <= &v70 && v79 + 24 * v80 > &v70)
        {
          v59 = &v70 - v79;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
          v20 = v79;
          v19 = (v79 + v59);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
          v19 = &v70;
          v20 = v79;
        }
      }

      v21 = &v20[24 * v80];
      v22 = *v19;
      *(v21 + 2) = v19[2];
      *v21 = v22;
      ++v80;
      if (v77)
      {
        LOWORD(v73) = 261;
        v70 = "Type";
        var0 = 4;
        mlir::Diagnostic::operator<<(&v78, &v70);
        if (v77)
        {
          LODWORD(v70) = 3;
          var0 = " index: ";
          *&v72 = 8;
          v23 = &v70;
          v24 = v79;
          if (v80 >= v81)
          {
            if (v79 <= &v70 && v79 + 24 * v80 > &v70)
            {
              v60 = &v70 - v79;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
              v24 = v79;
              v23 = (v79 + v60);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
              v23 = &v70;
              v24 = v79;
            }
          }

          v25 = &v24[24 * v80];
          v26 = *v23;
          *(v25 + 2) = v23[2];
          *v25 = v26;
          v27 = ++v80;
          if (v77)
          {
            LODWORD(v70) = 5;
            var0 = a2.var0.var0;
            v28 = &v70;
            v29 = v79;
            if (v27 >= v81)
            {
              if (v79 <= &v70 && v79 + 24 * v27 > &v70)
              {
                v61 = &v70 - v79;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v27 + 1, 24);
                v29 = v79;
                v28 = (v79 + v61);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v27 + 1, 24);
                v28 = &v70;
                v29 = v79;
              }
            }

            v30 = &v29[24 * v80];
            v31 = *v28;
            *(v30 + 2) = v28[2];
            *v30 = v31;
            ++v80;
            if (v77)
            {
              mlir::InFlightDiagnostic::report(&v77);
            }
          }
        }
      }
    }

    if (v88 != 1)
    {
      return 0;
    }

    if (v87 != &v88)
    {
      free(v87);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v86;
      v34 = __p;
      if (v86 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v86 = v32;
      operator delete(v34);
    }

    v35 = v83;
    if (!v83)
    {
      goto LABEL_78;
    }

    v36 = v84;
    v37 = v83;
    if (v84 == v83)
    {
      goto LABEL_77;
    }

    do
    {
      v39 = *--v36;
      v38 = v39;
      *v36 = 0;
      if (v39)
      {
        operator delete[](v38);
      }
    }

    while (v36 != v35);
    goto LABEL_76;
  }

  v3 = this[10] + 40 * a2.var0.var0;
  v4 = *v3;
  if (!*v3)
  {
    v6 = (this + 17);
    v5 = this[17];
    v67 = *(v3 + 24);
    v68 = v67;
    v69 = v5;
    if (v3[16] != 1)
    {
      v70 = "Type";
      var0 = 4;
      v62 = 0;
      v63 = 0;
      {
        v76 = 0;
        Context = mlir::Attribute::getContext(v6);
        mlir::parseType(v62, v63, Context, &v76, 1);
      }

      return 0;
    }

    v7 = this[2];
    v8 = this[18];
    v70 = &unk_1F5AF21B0;
    var0 = this;
    v72 = *this;
    v73 = v7;
    v74 = &v67;
    v75 = v8;
    v10 = *(v3 + 1);
    v11 = mlir::Attribute::getContext((this + 17));
    {
      return 0;
    }

    v12 = this[19];
    v13 = *(v12 + 30);
    if (v13)
    {
      v14 = *(v12 + 14);
      v15 = 8 * v13;
      while (((*(**v14 + 16))(*v14, &v70, *(*(v3 + 1) + 24), *(*(v3 + 1) + 32), v3) & 1) != 0)
      {
        if (*v3)
        {
          goto LABEL_59;
        }

        v67 = *(v3 + 24);
        v68 = v67;
        ++v14;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_10;
        }
      }

      return 0;
    }

LABEL_10:
    v16 = *(v3 + 1);
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (*(*v17 + 24))(v17, &v70);
      *v3 = v18;
      if (!v18)
      {
        return 0;
      }
    }

    else
    {
      v41.var0.var0 = v69;
      v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
      if (v77)
      {
        mlir::InFlightDiagnostic::report(&v77);
      }

      if (v88 == 1)
      {
        if (v87 != &v88)
        {
          free(v87);
        }

        v43 = __p;
        if (__p)
        {
          v44 = v86;
          v45 = __p;
          if (v86 != __p)
          {
            do
            {
              v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
            }

            while (v44 != v43);
            v45 = __p;
          }

          v86 = v43;
          operator delete(v45);
        }

        v46 = v83;
        if (v83)
        {
          v47 = v84;
          v48 = v83;
          if (v84 != v83)
          {
            do
            {
              v50 = *--v47;
              v49 = v50;
              *v47 = 0;
              if (v50)
              {
                operator delete[](v49);
              }
            }

            while (v47 != v46);
            v48 = v83;
          }

          v84 = v46;
          operator delete(v48);
        }

        if (v79 != v82)
        {
          free(v79);
        }
      }

      if (!v42)
      {
        return 0;
      }
    }

LABEL_59:
    if (v68 == v67 + *(&v67 + 1))
    {
      return *v3;
    }

    v66 = 1283;
    v62 = "unexpected trailing bytes after ";
    v64 = "Type";
    v65 = 4;
    v70 = &v62;
    *&v72 = " entry";
    LOWORD(v73) = 770;
    v51.var0.var0 = v69;
    if (v77)
    {
      mlir::InFlightDiagnostic::report(&v77);
    }

    if (v88 != 1)
    {
      return 0;
    }

    if (v87 != &v88)
    {
      free(v87);
    }

    v52 = __p;
    if (__p)
    {
      v53 = v86;
      v54 = __p;
      if (v86 != __p)
      {
        do
        {
          v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
        }

        while (v53 != v52);
        v54 = __p;
      }

      v86 = v52;
      operator delete(v54);
    }

    v35 = v83;
    if (!v83)
    {
LABEL_78:
      if (v79 != v82)
      {
        free(v79);
      }

      return 0;
    }

    v55 = v84;
    v37 = v83;
    if (v84 == v83)
    {
LABEL_77:
      v84 = v35;
      operator delete(v37);
      goto LABEL_78;
    }

    do
    {
      v57 = *--v55;
      v56 = v57;
      *v55 = 0;
      if (v57)
      {
        operator delete[](v56);
      }
    }

    while (v55 != v35);
LABEL_76:
    v37 = v83;
    goto LABEL_77;
  }

  return v4;
}

BOOL anonymous namespace::EncodingReader::parseByte<BOOL>(uint64_t a1, BOOL *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 == (*a1 + *(a1 + 8)))
  {
    v4.var0.var0 = *(a1 + 24);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
    if (v14[0])
    {
      mlir::InFlightDiagnostic::report(v14);
    }

    if (v22 == 1)
    {
      if (v21 != &v22)
      {
        free(v21);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v20;
        v7 = __p;
        if (v20 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v20 = v5;
        operator delete(v7);
      }

      v8 = v17;
      if (v17)
      {
        v9 = v18;
        v10 = v17;
        if (v18 != v17)
        {
          do
          {
            v12 = *--v9;
            v11 = v12;
            *v9 = 0;
            if (v12)
            {
              operator delete[](v11);
            }
          }

          while (v9 != v8);
          v10 = v17;
        }

        v18 = v8;
        operator delete(v10);
      }

      if (v15 != &v16)
      {
        free(v15);
      }
    }
  }

  else
  {
    *(a1 + 16) = v2 + 1;
    *a2 = *v2 != 0;
    return 1;
  }

  return v3;
}

BOOL anonymous namespace::EncodingReader::parseByte<mlir::AsmResourceEntryKind>(uint64_t a1, _DWORD *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 == (*a1 + *(a1 + 8)))
  {
    v4.var0.var0 = *(a1 + 24);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
    if (v14[0])
    {
      mlir::InFlightDiagnostic::report(v14);
    }

    if (v22 == 1)
    {
      if (v21 != &v22)
      {
        free(v21);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v20;
        v7 = __p;
        if (v20 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v20 = v5;
        operator delete(v7);
      }

      v8 = v17;
      if (v17)
      {
        v9 = v18;
        v10 = v17;
        if (v18 != v17)
        {
          do
          {
            v12 = *--v9;
            v11 = v12;
            *v9 = 0;
            if (v12)
            {
              operator delete[](v11);
            }
          }

          while (v9 != v8);
          v10 = v17;
        }

        v18 = v8;
        operator delete(v10);
      }

      if (v15 != &v16)
      {
        free(v15);
      }
    }
  }

  else
  {
    *(a1 + 16) = v2 + 1;
    *a2 = *v2;
    return 1;
  }

  return v3;
}

void anonymous namespace::EncodingReader::emitError<char const(&)[46],llvm::StringRef &,char const(&)[2]>(uint64_t a1, Location a2, const void ***a3)
{
  v23 = *MEMORY[0x1E69E9840];
  mlir::emitError(&v13, a2.var0.var0, a2);
  if (v13)
  {
    mlir::Diagnostic::append<char const(&)[28],llvm::StringRef &,char const(&)[2]>(&v14, "unexpected trailing bytes in resource entry '", a3, "'");
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v13);
  if (v13)
  {
    mlir::InFlightDiagnostic::report(&v13);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v20;
      v7 = __p;
      if (v20 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v20 = v5;
      operator delete(v7);
    }

    v8 = v17;
    if (v17)
    {
      v9 = v18;
      v10 = v17;
      if (v18 != v17)
      {
        do
        {
          v12 = *--v9;
          v11 = v12;
          *v9 = 0;
          if (v12)
          {
            operator delete[](v11);
          }
        }

        while (v9 != v8);
        v10 = v17;
      }

      v18 = v8;
      operator delete(v10);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }
}

uint64_t anonymous namespace::ParsedResourceEntry::parseAsBool(_anonymous_namespace_::ParsedResourceEntry *this, Location a2)
{
  v42 = *MEMORY[0x1E69E9840];
  if (*(this + 6) == 1)
  {
    LOBYTE(v30) = 0;
    if (v3)
    {
      v4 = v30;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    mlir::emitError(&v30, *(*(this + 4) + 24), a2);
    if (v30)
    {
      LODWORD(v26) = 3;
      v27 = "expected a BOOL resource entry, but found a ";
      v28 = 44;
      v5 = &v26;
      v6 = v32;
      if (v33 >= v34)
      {
        if (v32 <= &v26 && v32 + 24 * v33 > &v26)
        {
          v24 = &v26 - v32;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
          v6 = v32;
          v5 = (v32 + v24);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
          v5 = &v26;
          v6 = v32;
        }
      }

      v7 = &v6[24 * v33];
      v8 = *v5;
      *(v7 + 2) = v5[2];
      *v7 = v8;
      ++v33;
    }

    v9 = mlir::toString(*(this + 6));
    if (v30)
    {
      v29 = 261;
      v26 = v9;
      v27 = v10;
      mlir::Diagnostic::operator<<(&v31, &v26);
      if (v30)
      {
        LODWORD(v26) = 3;
        v27 = " entry instead";
        v28 = 14;
        v11 = &v26;
        v12 = v32;
        if (v33 >= v34)
        {
          if (v32 <= &v26 && v32 + 24 * v33 > &v26)
          {
            v25 = &v26 - v32;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
            v12 = v32;
            v11 = (v32 + v25);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
            v11 = &v26;
            v12 = v32;
          }
        }

        v13 = &v12[24 * v33];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v33;
        if (v30)
        {
          mlir::InFlightDiagnostic::report(&v30);
        }
      }
    }

    if (v41 == 1)
    {
      if (v40 != &v41)
      {
        free(v40);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v39;
        v17 = __p;
        if (v39 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v39 = v15;
        operator delete(v17);
      }

      v18 = v36;
      if (v36)
      {
        v19 = v37;
        v20 = v36;
        if (v37 != v36)
        {
          do
          {
            v22 = *--v19;
            v21 = v22;
            *v19 = 0;
            if (v22)
            {
              operator delete[](v21);
            }
          }

          while (v19 != v18);
          v20 = v36;
        }

        v37 = v18;
        operator delete(v20);
      }

      if (v32 != v35)
      {
        free(v32);
      }
    }

    v4 = 0;
    v3 = 0;
  }

  return v4 | (v3 << 8);
}

double anonymous namespace::ParsedResourceEntry::parseAsString@<D0>(_anonymous_namespace_::ParsedResourceEntry *this@<X0>, Location a2@<X1>, uint64_t a3@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  if (*(this + 6) != 2)
  {
    mlir::emitError(&__dst, *(*(this + 4) + 24), a2);
    if (__dst)
    {
      LODWORD(__src) = 3;
      *(&__src + 1) = "expected a string resource entry, but found a ";
      v35 = 46;
      p_src = &__src;
      v13 = v39;
      if (v40 >= v41)
      {
        if (v39 <= &__src && v39 + 24 * v40 > &__src)
        {
          v31 = &__src - v39;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
          v13 = v39;
          p_src = (v39 + v31);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
          p_src = &__src;
          v13 = v39;
        }
      }

      v14 = &v13[24 * v40];
      v15 = *p_src;
      *(v14 + 2) = *(p_src + 2);
      *v14 = v15;
      ++v40;
    }

    v16 = mlir::toString(*(this + 6));
    if (__dst && (v36 = 261, *&__src = v16, *(&__src + 1) = v17, mlir::Diagnostic::operator<<(&__dst + 8, &__src), __dst))
    {
      LODWORD(__src) = 3;
      *(&__src + 1) = " entry instead";
      v35 = 14;
      v18 = &__src;
      v19 = v39;
      if (v40 >= v41)
      {
        if (v39 <= &__src && v39 + 24 * v40 > &__src)
        {
          v32 = &__src - v39;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
          v19 = v39;
          v18 = (v39 + v32);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
          v18 = &__src;
          v19 = v39;
        }
      }

      v20 = &v19[24 * v40];
      v7 = *v18;
      *(v20 + 2) = *(v18 + 2);
      *v20 = v7;
      ++v40;
      v21 = __dst;
      *a3 = 0;
      *(a3 + 24) = 0;
      if (v21)
      {
        mlir::InFlightDiagnostic::report(&__dst);
      }

      if (v48 != 1)
      {
        return *&v7;
      }
    }

    else
    {
      *a3 = 0;
      *(a3 + 24) = 0;
      if (v48 != 1)
      {
        return *&v7;
      }
    }

    if (v47 != &v48)
    {
      free(v47);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v46;
      v24 = __p;
      if (v46 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v46 = v22;
      operator delete(v24);
    }

    v25 = v43;
    if (v43)
    {
      v26 = v44;
      v27 = v43;
      if (v44 != v43)
      {
        do
        {
          v29 = *--v26;
          v28 = v29;
          *v26 = 0;
          if (v29)
          {
            operator delete[](v28);
          }
        }

        while (v26 != v25);
        v27 = v43;
      }

      v44 = v25;
      operator delete(v27);
    }

    if (v39 != v42)
    {
      free(v39);
    }

    return *&v7;
  }

  __src = 0uLL;
  v5 = *(this + 4);
  v6 = *(this + 5);
  *&__dst = 0;
  {
    v8.var0.var0 = v5[3];
    if (resolveEntry<llvm::SmallVector<llvm::StringRef,3u> const,llvm::StringRef>(v8, *v6, *(v6 + 8), __dst, &__src, "string", 6))
    {
      v9 = __src;
      if (!__src)
      {
        __dst = 0uLL;
        v38 = 0;
LABEL_46:
        *&v7 = __dst;
        *a3 = __dst;
        *(a3 + 16) = v38;
        *(a3 + 24) = 1;
        return *&v7;
      }

      v10 = *(&__src + 1);
      if (*(&__src + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      if (*(&__src + 1) >= 0x17uLL)
      {
        if ((*(&__src + 1) | 7) == 0x17)
        {
          v30 = 25;
        }

        else
        {
          v30 = (*(&__src + 1) | 7) + 1;
        }

        p_dst = operator new(v30);
        *(&__dst + 1) = v10;
        v38 = v30 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v38) = BYTE8(__src);
        p_dst = &__dst;
        if (!*(&__src + 1))
        {
          goto LABEL_45;
        }
      }

      memmove(p_dst, v9, v10);
LABEL_45:
      *(p_dst + v10) = 0;
      goto LABEL_46;
    }
  }

  *a3 = 0;
  *(a3 + 24) = 0;
  return *&v7;
}

void anonymous namespace::ParsedResourceEntry::parseAsBlob(uint64_t a1@<X0>, Location a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v67 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    mlir::emitError(__dst, *(*(a1 + 32) + 24), a2);
    if (__dst[0])
    {
      v63.n128_u32[0] = 3;
      v63.n128_u64[1] = "expected a blob resource entry, but found a ";
      v64 = 44;
      v6 = &v63;
      v7 = v53.n128_u64[0];
      if (v53.n128_u32[2] >= v53.n128_u32[3])
      {
        if (v53.n128_u64[0] <= &v63 && v53.n128_u64[0] + 24 * v53.n128_u32[2] > &v63)
        {
          v43 = &v63 - v53.n128_u64[0];
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, &v54, v53.n128_u32[2] + 1, 24);
          v7 = v53.n128_u64[0];
          v6 = &v43[v53.n128_u64[0]];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, &v54, v53.n128_u32[2] + 1, 24);
          v6 = &v63;
          v7 = v53.n128_u64[0];
        }
      }

      v8 = v7 + 24 * v53.n128_u32[2];
      v9 = *v6;
      *(v8 + 16) = v6[1].n128_u64[0];
      *v8 = v9;
      ++v53.n128_u32[2];
    }

    v10 = mlir::toString(*(a1 + 24));
    if (__dst[0] && (v66 = 261, v63.n128_u64[0] = v10, v63.n128_u64[1] = v11, mlir::Diagnostic::operator<<(&__dst[1], &v63), __dst[0]))
    {
      v63.n128_u32[0] = 3;
      v63.n128_u64[1] = " entry instead";
      v64 = 14;
      v12 = &v63;
      v13 = v53.n128_u64[0];
      if (v53.n128_u32[2] >= v53.n128_u32[3])
      {
        if (v53.n128_u64[0] <= &v63 && v53.n128_u64[0] + 24 * v53.n128_u32[2] > &v63)
        {
          v44 = &v63 - v53.n128_u64[0];
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, &v54, v53.n128_u32[2] + 1, 24);
          v13 = v53.n128_u64[0];
          v12 = &v44[v53.n128_u64[0]];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, &v54, v53.n128_u32[2] + 1, 24);
          v12 = &v63;
          v13 = v53.n128_u64[0];
        }
      }

      v14 = v13 + 24 * v53.n128_u32[2];
      v15 = *v12;
      *(v14 + 16) = v12[1].n128_u64[0];
      *v14 = v15;
      ++v53.n128_u32[2];
      v16 = __dst[0];
      *a4 = 0;
      *(a4 + 64) = 0;
      if (v16)
      {
        mlir::InFlightDiagnostic::report(__dst);
      }

      if (v62 != 1)
      {
        return;
      }
    }

    else
    {
      *a4 = 0;
      *(a4 + 64) = 0;
      if (v62 != 1)
      {
        return;
      }
    }

    if (v61 != &v62)
    {
      free(v61);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v60;
      v19 = __p;
      if (v60 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v60 = v17;
      operator delete(v19);
    }

    v20 = v57;
    if (v57)
    {
      v21 = v58;
      v22 = v57;
      if (v58 != v57)
      {
        do
        {
          v24 = *--v21;
          v23 = v24;
          *v21 = 0;
          if (v24)
          {
            operator delete[](v23);
          }
        }

        while (v21 != v20);
        v22 = v57;
      }

      v58 = v20;
      operator delete(v22);
    }

    if (v53.n128_u64[0] != &v54)
    {
      free(v53.n128_u64[0]);
    }

    return;
  }

  __src = 0;
  v47 = 0;
  *v45 = 0;
  v27 = *(a1 + 32);
  {
    *a4 = 0;
    *(a4 + 64) = 0;
    return;
  }

  v30 = *(a1 + 48);
  v31 = *v30;
  if (*v30)
  {
    v32 = __src;
    v33 = v47;
    v34 = *(v30 + 8);
    if (v34)
    {
      atomic_fetch_add_explicit(v34 + 1, 1uLL, memory_order_relaxed);
    }

    v48 = v31;
    v49 = v34;
    off_1EED27FD0(&v63);
    (*((v65 & 0xFFFFFFFFFFFFFFF8) + 16))(&v48);
    v35 = v65;
    v50 = 0;
    __dst[0] = v32;
    __dst[1] = v33;
    v52 = v28;
    v55 = v65;
    if (v65 <= 7)
    {
      v36 = 0;
      v56 = 0;
      *a4 = *__dst;
      *(a4 + 16) = v52;
      *(a4 + 48) = v35;
      goto LABEL_54;
    }

    if ((~v65 & 6) != 0)
    {
      v53 = v63;
      v54 = v64;
      v56 = 0;
      *a4 = *__dst;
      *(a4 + 16) = v52;
      *(a4 + 48) = v35;
      v37 = (a4 + 48);
    }

    else
    {
      (*((v65 & 0xFFFFFFFFFFFFFFF8) + 8))(&v53, &v63);
      (*((v55 & 0xFFFFFFFFFFFFFFF8) + 16))(&v63);
      v36 = 0;
      v56 = 0;
      *a4 = *__dst;
      v35 = v55;
      *(a4 + 16) = v52;
      *(a4 + 48) = v35;
      v37 = (a4 + 48);
      if (v35 < 8)
      {
        goto LABEL_54;
      }
    }

    if ((v35 & 2) != 0 && (v35 & 4) != 0)
    {
      v40 = (*((v35 & 0xFFFFFFFFFFFFFFF8) + 8))((a4 + 24), &v53);
      (*((*v37 & 0xFFFFFFFFFFFFFFF8) + 16))(&v53, v40);
      v36 = v56;
    }

    else
    {
      v36 = 0;
      *(a4 + 24) = v53;
      *(a4 + 40) = v54;
    }

    v55 = 0;
LABEL_54:
    *(a4 + 56) = v36;
    *(a4 + 64) = 1;
    v41 = v50;
    if (v50 >= 8)
    {
      if ((v50 & 4) != 0)
      {
        if ((v50 & 2) != 0)
        {
          v42 = &v48;
        }

        else
        {
          v42 = v48;
        }

        (*((v50 & 0xFFFFFFFFFFFFFFF8) + 16))(v42);
      }

      if ((v41 & 2) == 0)
      {
        llvm::deallocate_buffer(v48, v49);
      }
    }

    return;
  }

  v38 = v47;
  (a2.var0.var0)(__dst, a3, v47, v28);
  memcpy(__dst[0], __src, v38);
  *a4 = *__dst;
  v39 = v55;
  *(a4 + 16) = v52;
  *(a4 + 48) = v39;
  if (v39 >= 8)
  {
    if ((v39 & 2) != 0 && (v39 & 4) != 0)
    {
      (*((v39 & 0xFFFFFFFFFFFFFFF8) + 8))(a4 + 24, &v53);
      (*((*(a4 + 48) & 0xFFFFFFFFFFFFFFF8) + 16))(&v53);
    }

    else
    {
      *(a4 + 24) = v53;
      *(a4 + 40) = v54;
    }
  }

  *(a4 + 56) = v56;
  *(a4 + 64) = 1;
}

__n128 llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::MoveImpl<anonymous namespace::ParsedResourceEntry::parseAsBlob(llvm::function_ref<mlir::AsmResourceBlob ()(unsigned long,unsigned long)>)::{lambda(void *,unsigned long,unsigned long)#1}>(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  *a2 = 0uLL;
  return result;
}

void llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::DestroyImpl<anonymous namespace::ParsedResourceEntry::parseAsBlob(llvm::function_ref<mlir::AsmResourceBlob ()(unsigned long,unsigned long)>)::{lambda(void *,unsigned long,unsigned long)#1}>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

BOOL llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>::callback_fn<anonymous namespace::ResourceSectionReader::initialize(mlir::Location,mlir::ParserConfig const&,llvm::MutableArrayRef<std::unique_ptr<anonymous namespace::BytecodeDialect>>,anonymous namespace::StringSectionReader &,llvm::ArrayRef<unsigned char>,llvm::ArrayRef<unsigned char>,anonymous namespace::DialectReader &,std::shared_ptr<llvm::SourceMgr> const&)::$_1>(uint64_t a1, unsigned int *a2, const char *a3)
{
  v66 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 24);
  (*(***a1 + 32))(v48);
  if (v49)
  {
    (*(***a1 + 40))(&v54);
    v10 = llvm::StringMapImpl::hash(a2, a3, v8, v9);
    v11 = llvm::StringMap<std::string,llvm::MallocAllocator>::try_emplace_with_hash<>((v6 + 64), a2, a3, v10);
    v12 = *v11;
    if (*(*v11 + 31) < 0)
    {
      operator delete(*(v12 + 8));
    }

    v13 = v54;
    *(v12 + 24) = v55;
    *(v12 + 8) = v13;
    v14 = *(v6 + 8);
    v15 = *v6;
    v16 = v48;
    if (v14 >= *(v6 + 12))
    {
      if (v15 <= v48 && v15 + 24 * v14 > v48)
      {
        v44 = v48 - v15;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (v6 + 16), v14 + 1, 24);
        v15 = *v6;
        v16 = &v44[*v6];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (v6 + 16), v14 + 1, 24);
        v15 = *v6;
        v16 = v48;
      }
    }

    v17 = v15 + 24 * *(v6 + 8);
    v18 = *v16;
    *(v17 + 16) = *(v16 + 2);
    *v17 = v18;
    ++*(v6 + 8);
    return 1;
  }

  else
  {
    mlir::emitError(&v54, *(*(a1 + 8) + 24), v7);
    if (v54)
    {
      LODWORD(v50) = 3;
      v51 = "unknown 'resource' key '";
      v52 = 24;
      v20 = &v50;
      v21 = v56;
      if (v57 >= v58)
      {
        if (v56 <= &v50 && v56 + 24 * v57 > &v50)
        {
          v45 = &v50 - v56;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
          v21 = v56;
          v20 = (v56 + v45);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
          v20 = &v50;
          v21 = v56;
        }
      }

      v22 = &v21[24 * v57];
      v23 = *v20;
      *(v22 + 2) = v20[2];
      *v22 = v23;
      ++v57;
      if (v54)
      {
        v53 = 261;
        v50 = a2;
        v51 = a3;
        mlir::Diagnostic::operator<<(&v54 + 8, &v50);
        if (v54)
        {
          LODWORD(v50) = 3;
          v51 = "' for dialect '";
          v52 = 15;
          v24 = &v50;
          v25 = v56;
          if (v57 >= v58)
          {
            if (v56 <= &v50 && v56 + 24 * v57 > &v50)
            {
              v46 = &v50 - v56;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
              v25 = v56;
              v24 = (v56 + v46);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
              v24 = &v50;
              v25 = v56;
            }
          }

          v26 = &v25[24 * v57];
          v27 = *v24;
          *(v26 + 2) = v24[2];
          *v26 = v27;
          ++v57;
          if (v54)
          {
            v28 = ***(a1 + 16);
            v53 = 261;
            v30 = *(v28 + 24);
            v29 = *(v28 + 32);
            v50 = v30;
            v51 = v29;
            mlir::Diagnostic::operator<<(&v54 + 8, &v50);
            if (v54)
            {
              LODWORD(v50) = 3;
              v51 = "'";
              v52 = 1;
              v31 = &v50;
              v32 = v56;
              if (v57 >= v58)
              {
                if (v56 <= &v50 && v56 + 24 * v57 > &v50)
                {
                  v47 = &v50 - v56;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
                  v32 = v56;
                  v31 = (v56 + v47);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
                  v31 = &v50;
                  v32 = v56;
                }
              }

              v33 = &v32[24 * v57];
              v34 = *v31;
              *(v33 + 2) = v31[2];
              *v33 = v34;
              ++v57;
            }
          }
        }
      }
    }

    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v54);
    if (v54)
    {
      mlir::InFlightDiagnostic::report(&v54);
    }

    if (v65 == 1)
    {
      if (v64 != &v65)
      {
        free(v64);
      }

      v35 = __p;
      if (__p)
      {
        v36 = v63;
        v37 = __p;
        if (v63 != __p)
        {
          do
          {
            v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
          }

          while (v36 != v35);
          v37 = __p;
        }

        v63 = v35;
        operator delete(v37);
      }

      v38 = v60;
      if (v60)
      {
        v39 = v61;
        v40 = v60;
        if (v61 != v60)
        {
          do
          {
            v42 = *--v39;
            v41 = v42;
            *v39 = 0;
            if (v42)
            {
              operator delete[](v41);
            }
          }

          while (v39 != v38);
          v40 = v60;
        }

        v61 = v38;
        operator delete(v40);
      }

      if (v56 != v59)
      {
        free(v56);
      }
    }
  }

  return v19;
}

uint64_t *llvm::StringMap<std::string,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, const void *a2, size_t a3, uint64_t a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 33, 8uLL);
    v11 = buffer + 4;
    if (a3)
    {
LABEL_4:
      memcpy(v11, a2, a3);
    }
  }

  else
  {
    if (v9)
    {
      while (!v9 || v9 == -8)
      {
        v16 = v8[1];
        ++v8;
        v9 = v16;
      }

      return v8;
    }

    buffer = llvm::allocate_buffer(a3 + 33, 8uLL);
    v11 = buffer + 4;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  *buffer = a3;
  buffer[1] = 0;
  buffer[2] = 0;
  buffer[3] = 0;
  *v8 = buffer;
  ++*(a1 + 3);
  v8 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v7));
  if (*v8)
  {
    v12 = *v8 == -8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    do
    {
      v14 = v8[1];
      ++v8;
      v13 = v14;
      if (v14)
      {
        v15 = v13 == -8;
      }

      else
      {
        v15 = 1;
      }
    }

    while (v15);
  }

  return v8;
}

void std::vector<mlir::Value>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v12 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v12;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v10 = a2;
      v11 = operator new(8 * v9);
      a2 = v10;
    }

    else
    {
      v11 = 0;
    }

    v13 = 8 * a2;
    bzero(&v11[8 * (v6 >> 3)], 8 * a2);
    memcpy(v11, v5, v6);
    *a1 = v11;
    *(a1 + 8) = &v11[8 * (v6 >> 3) + v13];
    *(a1 + 16) = &v11[8 * v9];
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t mlir::BytecodeReader::Impl::parseAttribute<mlir::LocationAttr>(uint64_t a1, AttributeStorage **this, uint64_t *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v29 = 0;
  {
    return 0;
  }

  v6.var0.var0 = v29;
  v28 = result;
  if (result)
  {
    v8 = result;
    if (mlir::LocationAttr::classof(result))
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    *a3 = v9;
    if (v9)
    {
      return 1;
    }

    else
    {
      v29 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::LocationAttr]";
      v30 = 68;
      v10 = llvm::StringRef::find(&v29, "DesiredTypeName = ", 0x12uLL, 0);
      if (v30 >= v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = v30;
      }

      v12 = v29 + v11;
      v13 = v30 - v11;
      if (v30 - v11 >= 0x12)
      {
        v14 = 18;
      }

      else
      {
        v14 = v30 - v11;
      }

      v15 = (v12 + v14);
      v16 = (v13 - v14);
      if (v16 >= (v16 - 1))
      {
        v16 = (v16 - 1);
      }

      v27[0] = v15;
      v27[1] = v16;
      v17.var0.var0 = this[3];
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v29);
      v18 = result;
      if (v29)
      {
        mlir::InFlightDiagnostic::report(&v29);
        result = v18;
      }

      if (v38 == 1)
      {
        if (v37 != &v38)
        {
          free(v37);
          result = v18;
        }

        v19 = __p;
        if (__p)
        {
          v20 = v36;
          v21 = __p;
          if (v36 != __p)
          {
            do
            {
              v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
            }

            while (v20 != v19);
            v21 = __p;
          }

          v36 = v19;
          operator delete(v21);
          result = v18;
        }

        v22 = v33;
        if (v33)
        {
          v23 = v34;
          v24 = v33;
          if (v34 != v33)
          {
            do
            {
              v26 = *--v23;
              v25 = v26;
              *v23 = 0;
              if (v26)
              {
                operator delete[](v25);
              }
            }

            while (v23 != v22);
            v24 = v33;
          }

          v34 = v22;
          operator delete(v24);
          result = v18;
        }

        if (v31 != &v32)
        {
          free(v31);
          return v18;
        }
      }
    }
  }

  return result;
}

void mlir::BytecodeReader::Impl::parseUseListOrderForRange(mlir::BytecodeReader::Impl *this, _anonymous_namespace_::EncodingReader *a2, unint64_t a3)
{
  v40[2] = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v6 = 1;
  v31 = 1;
  if (a3 >= 2)
  {
    {
LABEL_47:
      *this = 0;
      *(this + 24) = 0;
      goto LABEL_48;
    }

    v6 = v31;
    if (!v31)
    {
      goto LABEL_55;
    }
  }

  v7 = 0;
  while (1)
  {
    v30 = 0;
    {
      goto LABEL_47;
    }

    v29 = 0;
    {
      goto LABEL_47;
    }

    v8 = v29;
    v9 = v29 >> 1;
    v29 >>= 1;
    __src = v40;
    v39 = 0x400000000;
    if (v8 < 2)
    {
      v28 = v30;
      __dst = v37;
      v36 = 0x400000000;
      goto LABEL_22;
    }

    do
    {
      __dst = 0;
      {
        *this = 0;
        *(this + 24) = 0;
        if (__src != v40)
        {
          free(__src);
          v22 = v34;
          v23 = v32;
          if (!v34)
          {
LABEL_56:
            v27 = 0;
            goto LABEL_57;
          }

LABEL_49:
          v24 = 48 * v22;
          v25 = v23 + 24;
          do
          {
            if (*(v25 - 6) <= 0xFFFFFFFD)
            {
              v26 = *(v25 - 2);
              if (v25 != v26)
              {
                free(v26);
              }
            }

            v25 += 48;
            v24 -= 48;
          }

          while (v24);
          v23 = v32;
          v27 = 48 * v34;
LABEL_57:
          llvm::deallocate_buffer(v23, v27);
        }

LABEL_48:
        v22 = v34;
        v23 = v32;
        if (!v34)
        {
          goto LABEL_56;
        }

        goto LABEL_49;
      }

      v10 = __dst;
      v11 = v39;
      if (v39 >= HIDWORD(v39))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v40, v39 + 1, 4);
        v11 = v39;
      }

      *(__src + v11) = v10;
      v12 = (v39 + 1);
      LODWORD(v39) = v39 + 1;
      --v9;
    }

    while (v9);
    v28 = v30;
    __dst = v37;
    v36 = 0x400000000;
    if (v12)
    {
      if (__src == v40)
      {
        v13 = v12;
        if (v12 < 5 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v37, v12, 4), (v13 = v39) != 0))
        {
          memcpy(__dst, __src, 4 * v13);
        }

        LODWORD(v36) = v12;
      }

      else
      {
        __dst = __src;
        v36 = __PAIR64__(HIDWORD(v39), v12);
        __src = v40;
        HIDWORD(v39) = 0;
      }

      LODWORD(v39) = 0;
    }

LABEL_22:
    v37[16] = v8 & 1;
    if (!v34)
    {
      v21 = 0;
      goto LABEL_34;
    }

    v14 = (37 * v28) & (v34 - 1);
    v15 = (v32 + 48 * v14);
    v16 = *v15;
    if (v28 != *v15)
    {
      v17 = 0;
      v18 = 1;
      while (v16 != -1)
      {
        if (v17)
        {
          v19 = 0;
        }

        else
        {
          v19 = v16 == -2;
        }

        if (v19)
        {
          v17 = v15;
        }

        v20 = v14 + v18++;
        v14 = v20 & (v34 - 1);
        v15 = (v32 + 48 * v14);
        v16 = *v15;
        if (v28 == *v15)
        {
          goto LABEL_35;
        }
      }

      if (v17)
      {
        v21 = v17;
      }

      else
      {
        v21 = v15;
      }

LABEL_34:
      llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::InsertIntoBucket<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>(&v32, v21, &v28, &__dst);
    }

LABEL_35:
    if (__dst != v37)
    {
      free(__dst);
    }

    if (__src != v40)
    {
      free(__src);
    }

    if (++v7 == v6)
    {
LABEL_55:
      *this = v32;
      *(this + 1) = v33;
      v32 = 0;
      v33 = 0;
      *(this + 4) = v34;
      v34 = 0;
      *(this + 24) = 1;
      v23 = v32;
      goto LABEL_56;
    }
  }
}

void llvm::SmallVectorImpl<std::unique_ptr<mlir::Region>>::reserve(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 12) >= a2)
  {
    return;
  }

  v27[7] = v2;
  v27[8] = v3;
  v27[0] = 0;
  v5 = (a1 + 16);
  v6 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, v27);
  v7 = *a1;
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = (v8 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v10 = 8 * v8;
    if (v9 >= 0xB)
    {
      v13 = v7 >= &v6[v10] || v6 >= &v7[v10];
      v11 = v6;
      v12 = *a1;
      if (v13)
      {
        v14 = v9 + 1;
        v15 = 8 * (v14 & 0x3FFFFFFFFFFFFFFCLL);
        v11 = &v6[v15];
        v12 = &v7[v15];
        v16 = (v7 + 16);
        v17 = v6 + 16;
        v18 = v14 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v19 = *(v16 - 1);
          v20 = *v16;
          *(v16 - 1) = 0uLL;
          *v16 = 0uLL;
          *(v17 - 1) = v19;
          *v17 = v20;
          v16 += 2;
          v17 += 2;
          v18 -= 4;
        }

        while (v18);
        if (v14 == (v14 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_15:
          v23 = v7 - 8;
          do
          {
            v24 = *&v23[v10];
            *&v23[v10] = 0;
            if (v24)
            {
              mlir::Region::~Region(v24);
              operator delete(v25);
            }

            v10 -= 8;
          }

          while (v10);
          v7 = *a1;
          goto LABEL_20;
        }
      }
    }

    else
    {
      v11 = v6;
      v12 = *a1;
    }

    v21 = &v7[8 * v8];
    do
    {
      v22 = *v12;
      *v12 = 0;
      v12 += 8;
      *v11 = v22;
      v11 += 8;
    }

    while (v12 != v21);
    goto LABEL_15;
  }

LABEL_20:
  v26 = v27[0];
  if (v7 != v5)
  {
    free(v7);
  }

  *a1 = v6;
  *(a1 + 12) = v26;
}

BOOL mlir::BytecodeReader::Impl::defineValues(void *a1, Location a2, uint64_t a3, uint64_t a4)
{
  v63 = *MEMORY[0x1E69E9840];
  v52[0] = a3;
  v52[1] = a4;
  v4 = a1[86];
  v5 = *(v4 - 32) + 4 * *(v4 - 24);
  v7 = *(v5 - 4);
  v6 = (v5 - 4);
  v42 = v7 + a4;
  v8 = (*(v4 - 48) - *(v4 - 56)) >> 3;
  if (v8 >= (v7 + a4))
  {
    if (a4)
    {
      v18 = 0;
      v19 = a4;
      do
      {
        v21 = mlir::ValueRange::dereference_iterator(v52, v18);
        v20 = *v6;
        v22 = *(v4 - 56);
        v23 = *(v22 + 8 * v20);
        *(v22 + 8 * v20) = v21;
        v53 = v23;
        if (v23)
        {
          v24 = v21;
          DefiningOp = mlir::Value::getDefiningOp(&v53);
          v26 = v53;
          while (1)
          {
            v27 = *v26;
            if (!*v26)
            {
              break;
            }

            v28 = v27[1];
            if (v28)
            {
              v29 = *v27;
              *v28 = *v27;
              if (v29)
              {
                *(v29 + 8) = v28;
              }
            }

            v27[3] = v24;
            v27[1] = v24;
            v30 = *v24;
            *v27 = *v24;
            if (v30)
            {
              *(v30 + 8) = v27;
            }

            *v24 = v27;
          }

          mlir::Operation::moveBefore(DefiningOp, (a1 + 100), a1 + 104);
          LODWORD(v20) = *v6;
        }

        ++v18;
        *v6 = v20 + 1;
      }

      while (v18 != v19);
    }

    return 1;
  }

  else
  {
    v41 = (v8 - 1);
    mlir::emitError(&v53, a2.var0.var0, a2);
    if (v53)
    {
      mlir::Diagnostic::append<char const(&)[81],unsigned int &,char const(&)[3],unsigned int &,char const(&)[30],unsigned long>(&v54, "value index range was outside of the expected range for the parent region, got [", v6, ", ", &v42, "), but the maximum index was ", &v41);
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(v43, &v53);
    if (v53)
    {
      mlir::InFlightDiagnostic::report(&v53);
    }

    if (v62 == 1)
    {
      if (v61 != &v62)
      {
        free(v61);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v60;
        v11 = __p;
        if (v60 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v60 = v9;
        operator delete(v11);
      }

      v12 = v57;
      if (v57)
      {
        v13 = v58;
        v14 = v57;
        if (v58 != v57)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              operator delete[](v15);
            }
          }

          while (v13 != v12);
          v14 = v57;
        }

        v58 = v12;
        operator delete(v14);
      }

      if (v55 != &v56)
      {
        free(v55);
      }
    }

    v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v43);
    if (v43[0])
    {
      mlir::InFlightDiagnostic::report(v43);
    }

    if (v51 == 1)
    {
      if (v50 != &v51)
      {
        free(v50);
      }

      v32 = v48;
      if (v48)
      {
        v33 = v49;
        v34 = v48;
        if (v49 != v48)
        {
          do
          {
            v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
          }

          while (v33 != v32);
          v34 = v48;
        }

        v49 = v32;
        operator delete(v34);
      }

      v35 = v46;
      if (v46)
      {
        v36 = v47;
        v37 = v46;
        if (v47 != v46)
        {
          do
          {
            v39 = *--v36;
            v38 = v39;
            *v36 = 0;
            if (v39)
            {
              operator delete[](v38);
            }
          }

          while (v36 != v35);
          v37 = v46;
        }

        v47 = v35;
        operator delete(v37);
      }

      if (v44 != &v45)
      {
        free(v44);
      }
    }
  }

  return v31;
}

void anonymous namespace::EncodingReader::emitError<char const(&)[29],llvm::StringRef,char const(&)[12],mlir::Attribute &>(uint64_t a1, Location a2, const void ***a3, uint64_t *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  mlir::emitError(&v15, a2.var0.var0, a2);
  if (v15)
  {
    mlir::Diagnostic::append<char const(&)[29],llvm::StringRef,char const(&)[12],mlir::Attribute &>(&v16, "expected attribute of type: ", a3, ", but got: ", a4);
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v15);
  if (v15)
  {
    mlir::InFlightDiagnostic::report(&v15);
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            operator delete[](v13);
          }
        }

        while (v11 != v10);
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
    }

    if (v17 != &v18)
    {
      free(v17);
    }
  }
}

uint64_t mlir::Diagnostic::append<char const(&)[29],llvm::StringRef,char const(&)[12],mlir::Attribute &>(uint64_t a1, char *__s, const void ***a3, char *a4, uint64_t *a5)
{
  v10 = strlen(__s);
  v11 = a1 + 16;
  v12 = *(a1 + 16);
  LODWORD(v20) = 3;
  v21 = __s;
  v22 = v10;
  v13 = *(a1 + 24);
  v14 = &v20;
  if (v13 >= *(a1 + 28))
  {
    if (v12 <= &v20 && v12 + 24 * v13 > &v20)
    {
      v19 = &v20 - v12;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (a1 + 32), v13 + 1, 24);
      v12 = *(a1 + 16);
      v14 = &v19[v12];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (a1 + 32), v13 + 1, 24);
      v12 = *(a1 + 16);
      v14 = &v20;
    }
  }

  v15 = v12 + 24 * *(a1 + 24);
  v16 = *v14;
  *(v15 + 16) = v14[2];
  *v15 = v16;
  ++*(a1 + 24);
  v23 = 261;
  v17 = a3[1];
  v20 = *a3;
  v21 = v17;
  mlir::Diagnostic::operator<<(a1, &v20);
  return mlir::Diagnostic::append<char const(&)[12],mlir::Attribute &>(a1, a4, a5);
}

uint64_t mlir::Diagnostic::append<char const(&)[12],mlir::Attribute &>(uint64_t a1, char *__s, uint64_t *a3)
{
  v6 = strlen(__s);
  v7 = *(a1 + 16);
  v21 = 3;
  v22 = __s;
  v23 = v6;
  v8 = *(a1 + 24);
  v9 = &v21;
  if (v8 >= *(a1 + 28))
  {
    if (v7 <= &v21 && v7 + 24 * v8 > &v21)
    {
      v19 = &v21 - v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v7 = *(a1 + 16);
      v9 = &v19[v7];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v7 = *(a1 + 16);
      v9 = &v21;
    }
  }

  v10 = v7 + 24 * *(a1 + 24);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  ++*(a1 + 24);
  v12 = *a3;
  v13 = &v21;
  mlir::DiagnosticArgument::DiagnosticArgument(&v21, v12);
  v14 = *(a1 + 24);
  v15 = *(a1 + 16);
  if (v14 >= *(a1 + 28))
  {
    if (v15 <= &v21 && v15 + 24 * v14 > &v21)
    {
      v20 = &v21 - v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v14 + 1, 24);
      v15 = *(a1 + 16);
      v13 = &v20[v15];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v14 + 1, 24);
      v15 = *(a1 + 16);
      v13 = &v21;
    }
  }

  v16 = v15 + 24 * *(a1 + 24);
  v17 = *v13;
  *(v16 + 16) = *(v13 + 2);
  *v16 = v17;
  ++*(a1 + 24);
  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::LookupBucketFor<unsigned int>(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 48 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
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
        v7 = (v4 + 48 * (v13 & v5));
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

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::InsertIntoBucket<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>(uint64_t *a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v5 = a2;
  v12 = a2;
  v6 = *(a1 + 2);
  v7 = *(a1 + 4);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v9 = a3;
    v7 *= 2;
  }

  else
  {
    if (v7 + ~v6 - *(a1 + 3) > v7 >> 3)
    {
      *(a1 + 2) = v6 + 1;
      if (*v5 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v9 = a3;
  }

  v10 = a1;
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::grow(a1, v7);
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::LookupBucketFor<unsigned int>(v10, v9, &v12);
  a1 = v10;
  a3 = v9;
  v11 = *(v10 + 2);
  v5 = v12;
  *(a1 + 2) = v11 + 1;
  if (*v5 != -1)
  {
LABEL_4:
    --*(a1 + 3);
  }

LABEL_5:
  *v5 = *a3;
  *(v5 + 8) = v5 + 24;
  *(v5 + 16) = 0x400000000;
  if (*(a4 + 8))
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(v5 + 8, a4);
  }

  *(v5 + 40) = *(a4 + 32);
  return v5;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(48 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 12 * v3;
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 4));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 48 * v11 - 48;
    if (v12 < 0x30)
    {
      v13 = result;
LABEL_14:
      v17 = &result[12 * v11];
      do
      {
        *v13 = -1;
        v13 += 12;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x30 + 1;
    v13 = &result[12 * (v14 & 0xFFFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v15 = -1;
      v15[12] = -1;
      v15 += 24;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::moveFromOldBuckets(uint64_t a1, int *a2, int *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 48 * v6 - 48;
    if (v8 < 0x30)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[12 * v6];
      do
      {
        *v9 = -1;
        v9 += 12;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x30 + 1;
    v9 = &v7[12 * (v10 & 0xFFFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v11 = -1;
      v11[12] = -1;
      v11 += 24;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if (*v4 <= 0xFFFFFFFD)
      {
        v15 = *(a1 + 16);
        if (v15)
        {
          v16 = v15 - 1;
          v17 = v16 & (37 * v14);
          v18 = *a1 + 48 * v17;
          v19 = *v18;
          if (v14 != *v18)
          {
            v20 = 0;
            v21 = 1;
            while (v19 != -1)
            {
              if (v20)
              {
                v22 = 0;
              }

              else
              {
                v22 = v19 == -2;
              }

              if (v22)
              {
                v20 = v18;
              }

              v23 = v17 + v21++;
              v17 = v23 & v16;
              v18 = *a1 + 48 * v17;
              v19 = *v18;
              if (v14 == *v18)
              {
                goto LABEL_25;
              }
            }

            if (v20)
            {
              v18 = v20;
            }
          }
        }

        else
        {
          v18 = 0;
        }

LABEL_25:
        *v18 = v14;
        *(v18 + 8) = v18 + 24;
        *(v18 + 16) = 0x400000000;
        if (v4[4])
        {
          llvm::SmallVectorImpl<unsigned int>::operator=(v18 + 8, v4 + 1);
        }

        *(v18 + 40) = *(v4 + 40);
        ++*(a1 + 8);
        v24 = *(v4 + 1);
        if (v24 != v4 + 6)
        {
          free(v24);
        }
      }

      v4 += 12;
    }

    while (v4 != a3);
  }
}

void llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::grow(uint64_t a1, unint64_t a2)
{
  v25 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v25);
  v5 = *a1;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v9 = 8 * v7;
  if (v8 < 0xB)
  {
    v10 = v4;
LABEL_12:
    v19 = &v5[8 * v7];
    do
    {
      v20 = *v6;
      *v6 = 0;
      v6 += 8;
      *v10 = v20;
      v10 += 8;
    }

    while (v6 != v19);
    goto LABEL_14;
  }

  v11 = v5 >= &v4[v9] || v4 >= &v5[v9];
  v10 = v4;
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v8 + 1;
  v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
  v10 = &v4[v13];
  v6 = &v5[v13];
  v14 = (v5 + 16);
  v15 = v4 + 16;
  v16 = v12 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v17 = *(v14 - 1);
    v18 = *v14;
    *(v14 - 1) = 0uLL;
    *v14 = 0uLL;
    *(v15 - 1) = v17;
    *v15 = v18;
    v14 += 2;
    v15 += 2;
    v16 -= 4;
  }

  while (v16);
  if (v12 != (v12 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_12;
  }

LABEL_14:
  v21 = v5 - 8;
  do
  {
    v22 = *&v21[v9];
    *&v21[v9] = 0;
    if (v22)
    {
      mlir::Region::~Region(v22);
      operator delete(v23);
    }

    v9 -= 8;
  }

  while (v9);
  v6 = *a1;
LABEL_19:
  v24 = v25;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v4;
  *(a1 + 12) = v24;
}

double mlir::Diagnostic::append<char const(&)[81],unsigned int &,char const(&)[3],unsigned int &,char const(&)[30],unsigned long>(uint64_t a1, char *__s, unsigned int *a3, char *a4, unsigned int *a5, char *a6, char **a7)
{
  v14 = strlen(__s);
  v15 = a1;
  v18 = *(a1 + 16);
  v17 = a1 + 16;
  v16 = v18;
  v37 = 3;
  v38 = __s;
  v39 = v14;
  v19 = *(v17 + 8);
  v20 = &v37;
  if (v19 >= *(v17 + 12))
  {
    if (v16 <= &v37 && v16 + 24 * v19 > &v37)
    {
      v33 = &v37 - v16;
      v34 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v17, (v15 + 32), v19 + 1, 24);
      v15 = v34;
      v16 = *(v34 + 16);
      v20 = &v33[v16];
    }

    else
    {
      v31 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v17, (v15 + 32), v19 + 1, 24);
      v15 = v31;
      v16 = *(v31 + 16);
      v20 = &v37;
    }
  }

  v21 = v16 + 24 * *(v15 + 24);
  v22 = *v20;
  *(v21 + 16) = *(v20 + 2);
  *v21 = v22;
  v23 = *(v15 + 28);
  v24 = (*(v15 + 24) + 1);
  *(v15 + 24) = v24;
  v25 = *a3;
  v37 = 5;
  v38 = v25;
  v26 = *(v15 + 16);
  v27 = &v37;
  if (v24 >= v23)
  {
    if (v26 <= &v37 && v26 + 24 * v24 > &v37)
    {
      v35 = &v37 - v26;
      v36 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v17, (v15 + 32), v24 + 1, 24);
      v15 = v36;
      v26 = *(v36 + 16);
      v27 = &v35[v26];
    }

    else
    {
      v32 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v17, (v15 + 32), v24 + 1, 24);
      v15 = v32;
      v26 = *(v32 + 16);
      v27 = &v37;
    }
  }

  v28 = v26 + 24 * *(v15 + 24);
  v29 = *v27;
  *(v28 + 16) = *(v27 + 2);
  *v28 = v29;
  ++*(v15 + 24);
  return mlir::Diagnostic::append<char const(&)[3],unsigned int &,char const(&)[30],unsigned long>(v15, a4, a5, a6, a7);
}

double mlir::Diagnostic::append<char const(&)[3],unsigned int &,char const(&)[30],unsigned long>(uint64_t a1, char *__s, unsigned int *a3, char *a4, char **a5)
{
  v10 = strlen(__s);
  v11 = a1;
  v14 = *(a1 + 16);
  v13 = a1 + 16;
  v12 = v14;
  v33 = 3;
  v34 = __s;
  v35 = v10;
  v15 = *(v13 + 8);
  v16 = &v33;
  if (v15 >= *(v13 + 12))
  {
    if (v12 <= &v33 && v12 + 24 * v15 > &v33)
    {
      v29 = &v33 - v12;
      v30 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v15 + 1, 24);
      v11 = v30;
      v12 = *(v30 + 16);
      v16 = &v29[v12];
    }

    else
    {
      v27 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v15 + 1, 24);
      v11 = v27;
      v12 = *(v27 + 16);
      v16 = &v33;
    }
  }

  v17 = v12 + 24 * *(v11 + 24);
  v18 = *v16;
  *(v17 + 16) = *(v16 + 2);
  *v17 = v18;
  v19 = *(v11 + 28);
  v20 = (*(v11 + 24) + 1);
  *(v11 + 24) = v20;
  v21 = *a3;
  v33 = 5;
  v34 = v21;
  v22 = *(v11 + 16);
  v23 = &v33;
  if (v20 >= v19)
  {
    if (v22 <= &v33 && v22 + 24 * v20 > &v33)
    {
      v31 = &v33 - v22;
      v32 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v20 + 1, 24);
      v11 = v32;
      v22 = *(v32 + 16);
      v23 = &v31[v22];
    }

    else
    {
      v28 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v20 + 1, 24);
      v11 = v28;
      v22 = *(v28 + 16);
      v23 = &v33;
    }
  }

  v24 = v22 + 24 * *(v11 + 24);
  v25 = *v23;
  *(v24 + 16) = *(v23 + 2);
  *v24 = v25;
  ++*(v11 + 24);
  *&result = mlir::Diagnostic::append<char const(&)[36],unsigned long long &>(v11, a4, a5).n128_u64[0];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::LookupBucketFor<void *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 48 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
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
        v7 = (v4 + 48 * (v13 & v5));
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

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::InsertIntoBucket<void *,mlir::BytecodeReader::Impl::UseListOrderStorage const&>(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a2;
  v15 = a2;
  v6 = *(a1 + 2);
  v7 = *(a1 + 4);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v12 = a3;
    v7 *= 2;
    goto LABEL_16;
  }

  if (v7 + ~v6 - *(a1 + 3) <= v7 >> 3)
  {
    v12 = a3;
LABEL_16:
    v13 = a1;
    llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::LookupBucketFor<void *>(v13, v12, &v15);
    a1 = v13;
    a3 = v12;
    v14 = *(v13 + 2);
    v5 = v15;
    *(a1 + 2) = v14 + 1;
    if (*v5 == -4096)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(a1 + 2) = v6 + 1;
  if (*v5 != -4096)
  {
LABEL_4:
    --*(a1 + 3);
  }

LABEL_5:
  *v5 = *a3;
  v8 = (v5 + 24);
  *(v5 + 8) = v5 + 24;
  *(v5 + 16) = 0x400000000;
  if (v5 + 8 != a4)
  {
    v9 = *(a4 + 8);
    if (v9)
    {
      if (v9 < 5)
      {
        v10 = *(a4 + 8);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v5 + 8, (v5 + 24), *(a4 + 8), 4);
        v10 = *(a4 + 8);
        if (!v10)
        {
LABEL_12:
          *(v5 + 16) = v9;
          goto LABEL_13;
        }

        v8 = *(v5 + 8);
      }

      memcpy(v8, *a4, 4 * v10);
      goto LABEL_12;
    }
  }

LABEL_13:
  *(v5 + 40) = *(a4 + 32);
  return v5;
}

void *llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(48 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 6 * v3;
    llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 48 * v11 - 48;
    if (v12 < 0x30)
    {
      v13 = result;
LABEL_14:
      v17 = &result[6 * v11];
      do
      {
        *v13 = -4096;
        v13 += 6;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x30 + 1;
    v13 = &result[6 * (v14 & 0xFFFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v15 = -4096;
      v15[6] = -4096;
      v15 += 12;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 48 * v6 - 48;
    if (v8 < 0x30)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[6 * v6];
      do
      {
        *v9 = -4096;
        v9 += 6;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x30 + 1;
    v9 = &v7[6 * (v10 & 0xFFFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[6] = -4096;
      v11 += 12;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v15 = *(a1 + 16);
        if (v15)
        {
          v16 = v15 - 1;
          v17 = v16 & ((v14 >> 4) ^ (v14 >> 9));
          v18 = *a1 + 48 * v17;
          v19 = *v18;
          if (v14 != *v18)
          {
            v20 = 0;
            v21 = 1;
            while (v19 != -4096)
            {
              if (v20)
              {
                v22 = 0;
              }

              else
              {
                v22 = v19 == -8192;
              }

              if (v22)
              {
                v20 = v18;
              }

              v23 = v17 + v21++;
              v17 = v23 & v16;
              v18 = *a1 + 48 * v17;
              v19 = *v18;
              if (v14 == *v18)
              {
                goto LABEL_25;
              }
            }

            if (v20)
            {
              v18 = v20;
            }
          }
        }

        else
        {
          v18 = 0;
        }

LABEL_25:
        *v18 = v14;
        *(v18 + 8) = v18 + 24;
        *(v18 + 16) = 0x400000000;
        if (*(v4 + 4))
        {
          llvm::SmallVectorImpl<unsigned int>::operator=(v18 + 8, v4 + 1);
        }

        *(v18 + 40) = *(v4 + 40);
        ++*(a1 + 8);
        v24 = v4[1];
        if (v24 != v4 + 3)
        {
          free(v24);
        }
      }

      v4 += 6;
    }

    while (v4 != a3);
  }
}

uint64_t mlir::BytecodeReader::Impl::Impl(uint64_t a1, mlir::MLIRContext *a2, mlir::UnknownLoc **a3, char a4, _OWORD *a5, uint64_t a6)
{
  v17[2] = *MEMORY[0x1E69E9840];
  *a1 = a3;
  *(a1 + 8) = a2;
  *(a1 + 16) = a4;
  *(a1 + 24) = a1 + 24;
  *(a1 + 32) = a1 + 24;
  *(a1 + 72) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 88) = a1 + 536;
  *(a1 + 96) = a1 + 424;
  *(a1 + 104) = a1 + 336;
  *(a1 + 112) = a1 + 128;
  *(a1 + 120) = 0x100000000;
  *(a1 + 168) = a1 + 184;
  *(a1 + 176) = 0x100000000;
  *(a1 + 224) = a2;
  *(a1 + 232) = a1 + 248;
  *(a1 + 240) = a3;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = a1 + 288;
  *(a1 + 280) = 0x600000000;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0x1000000000;
  *(a1 + 360) = a1 + 376;
  *(a1 + 368) = 0x100000000;
  *(a1 + 424) = a1 + 440;
  *(a1 + 432) = 0x200000000;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0x2000000000;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0;
  *(a1 + 536) = a1 + 552;
  *(a1 + 544) = 0x300000000;
  *(a1 + 600) = 0u;
  *(a1 + 616) = a1 + 632;
  *(a1 + 624) = 0x600000000;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 708) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 760) = a1 + 760;
  *(a1 + 768) = a1 + 760;
  *(a1 + 824) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 832) = a1 + 832;
  *(a1 + 840) = a1 + 832;
  *(a1 + 864) = 0;
  *(a1 + 848) = 0u;
  v10 = mlir::UnknownLoc::get(*a3, a2);
  mlir::ValueRange::ValueRange(v17, 0, 0);
  v14 = mlir::NoneType::get(*a3, v11);
  mlir::ValueRange::ValueRange(v16, &v14, 1uLL);
  mlir::BlockRange::BlockRange(v15, 0, 0);
  mlir::OperationState::OperationState(a1 + 872, v10, "builtin.unrealized_conversion_cast", 34, v17[0], v17[1], v16[0], v16[1], 0, 0, v15[0], v15[1], 0, 0);
  v12 = a5[1];
  *(a1 + 1176) = *a5;
  *(a1 + 1192) = v12;
  *(a1 + 1208) = a6;
  return a1;
}

void mlir::BytecodeReader::Impl::~Impl(void ***this)
{
  mlir::OperationState::~OperationState((this + 109));
  mlir::Block::~Block(this + 100);
  mlir::Block::~Block(this + 91);
  llvm::deallocate_buffer(this[88], (16 * *(this + 180)));
}

void **std::vector<mlir::BytecodeReader::Impl::ValueScope>::__emplace_back_slow_path<>(void ***a1)
{
  v1 = 0x6DB6DB6DB6DB6DB7 * (a1[1] - *a1);
  v2 = v1 + 1;
  if ((v1 + 1) > 0x492492492492492)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * (a1[2] - *a1) > v2)
  {
    v2 = 0xDB6DB6DB6DB6DB6ELL * (a1[2] - *a1);
  }

  if ((0x6DB6DB6DB6DB6DB7 * (a1[2] - *a1)) >= 0x249249249249249)
  {
    v4 = 0x492492492492492;
  }

  else
  {
    v4 = v2;
  }

  v18 = a1;
  if (v4)
  {
    if (v4 > 0x492492492492492)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v5 = operator new(56 * v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = &v5[56 * v1];
  __p = v5;
  v15 = v6;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *v6 = 0u;
  *(v6 + 6) = 0;
  *(v6 + 3) = v6 + 40;
  *(v6 + 9) = 4;
  v16 = v6 + 56;
  v17 = &v5[56 * v4];
  std::vector<mlir::BytecodeReader::Impl::ValueScope>::__swap_out_circular_buffer(a1, &__p);
  v7 = a1[1];
  v8 = v15;
  while (1)
  {
    v9 = v16;
    if (v16 == v8)
    {
      break;
    }

    v10 = (v16 - 56);
    v16 -= 56;
    v11 = *(v9 - 4);
    if (v11 != v9 - 16)
    {
      free(v11);
    }

    v12 = *v10;
    if (*v10)
    {
      *(v9 - 6) = v12;
      operator delete(v12);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void std::vector<mlir::BytecodeReader::Impl::ValueScope>::__swap_out_circular_buffer(void ***a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = (a2[1] + *a1 - v4);
  if (v4 != *a1)
  {
    v7 = 0;
    do
    {
      v8 = &v5[v7];
      v9 = &v6[v7];
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
      *v9 = *&v5[v7];
      v9[2] = v5[v7 + 2];
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      v9[3] = &v6[v7 + 5];
      v6[v7 + 4] = 0x400000000;
      if (LODWORD(v5[v7 + 4]))
      {
        llvm::SmallVectorImpl<unsigned int>::operator=(&v6[v7 + 3], v8 + 3);
      }

      v7 += 7;
    }

    while (v8 + 7 != v4);
    do
    {
      v10 = v5[3];
      if (v5 + 5 != v10)
      {
        free(v10);
      }

      v11 = *v5;
      if (*v5)
      {
        v5[1] = v11;
        operator delete(v11);
      }

      v5 += 7;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v12 = *a1;
  *a1 = v6;
  a1[1] = v12;
  a2[1] = v12;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

uint64_t std::vector<mlir::BytecodeReader::Impl::RegionReadState>::__emplace_back_slow_path<mlir::BytecodeReader::Impl::RegionReadState>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 6 > v3)
  {
    v3 = v6 >> 6;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF80)
  {
    v7 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v22 = a1;
  if (v7)
  {
    if (v7 >> 57)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v8 = operator new(v7 << 7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[128 * v2];
  __p = v8;
  v19 = v9;
  v21 = &v8[128 * v7];
  *v9 = *a2;
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  *(v9 + 8) = *(a2 + 32);
  *(v9 + 5) = v9 + 56;
  *(v9 + 6) = 0x600000000;
  if (*(a2 + 48))
  {
    llvm::SmallVectorImpl<llvm::SMLoc>::operator=((v9 + 40), (a2 + 40));
  }

  *(v9 + 104) = *(a2 + 104);
  v9[120] = *(a2 + 120);
  v20 = v9 + 128;
  std::vector<mlir::BytecodeReader::Impl::RegionReadState>::__swap_out_circular_buffer(a1, &__p);
  v12 = a1[1];
  v13 = v19;
  while (1)
  {
    v14 = v20;
    if (v20 == v13)
    {
      break;
    }

    v20 -= 128;
    v15 = *(v14 - 11);
    if (v15 != v14 - 72)
    {
      free(v15);
    }

    v16 = *(v14 - 13);
    *(v14 - 13) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v12;
}

void std::vector<mlir::BytecodeReader::Impl::RegionReadState>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = 0;
    do
    {
      v9 = v5 + v7;
      v10 = v6 + v7;
      v11 = *(v5 + v7);
      *(v10 + 16) = *(v5 + v7 + 16);
      *v10 = v11;
      v12 = *(v5 + v7 + 24);
      *(v5 + v7 + 24) = 0;
      *(v10 + 24) = v12;
      *(v10 + 32) = *(v5 + v7 + 32);
      *(v6 + v7 + 40) = v6 + v7 + 56;
      *(v10 + 48) = 0x600000000;
      if (*(v5 + v7 + 48))
      {
        llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v6 + v7 + 40, (v9 + 40));
      }

      v8 = *(v9 + 104);
      *(v10 + 120) = *(v9 + 120);
      *(v10 + 104) = v8;
      v7 += 128;
    }

    while (v9 + 128 != v4);
    v13 = (v5 + 56);
    do
    {
      v15 = *(v13 - 2);
      if (v13 != v15)
      {
        free(v15);
      }

      v16 = *(v13 - 4);
      *(v13 - 4) = 0;
      if (v16)
      {
        operator delete(v16);
      }

      v14 = (v13 + 9);
      v13 += 16;
    }

    while (v14 != v4);
  }

  a2[1] = v6;
  v17 = *a1;
  *a1 = v6;
  a1[1] = v17;
  a2[1] = v17;
  v18 = a1[1];
  a1[1] = a2[2];
  a2[2] = v18;
  v19 = a1[2];
  a1[2] = a2[3];
  a2[3] = v19;
  *a2 = a2[1];
}

uint64_t llvm::SmallVectorImpl<unsigned int>::operator=(uint64_t result, const void **a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 != a2 + 2)
    {
      if (*result != result + 16)
      {
        v4 = result;
        v5 = a2;
        free(*result);
        a2 = v5;
        result = v4;
        v2 = *v5;
      }

      *result = v2;
      v6 = a2 + 1;
      *(result + 8) = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
      goto LABEL_17;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 >= v7)
    {
      if (v7)
      {
        v12 = result;
        memmove(*result, *a2, 4 * v7);
        result = v12;
      }

      *(result + 8) = v7;
      goto LABEL_17;
    }

    if (*(result + 12) >= v7)
    {
      if (v8)
      {
        v10 = result;
        v13 = a2;
        memmove(*result, *a2, 4 * v8);
        a2 = v13;
        v11 = *v6 - v8;
        if (!v11)
        {
LABEL_16:
          result = v10;
          *(v10 + 8) = v7;
LABEL_17:
          *v6 = 0;
          return result;
        }
      }

      else
      {
        v10 = result;
        v8 = 0;
        v11 = *v6;
        if (!*v6)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      *(result + 8) = 0;
      v9 = a2;
      v10 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v7, 4);
      a2 = v9;
      v8 = 0;
      v11 = *v6;
      if (!*v6)
      {
        goto LABEL_16;
      }
    }

    memcpy((*v10 + 4 * v8), *a2 + 4 * v8, 4 * v11);
    goto LABEL_16;
  }

  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::CallImpl<mlir::BytecodeReader::Impl::read(mlir::Block *,llvm::function_ref<BOOL ()(mlir::Operation *)>)::$_1>(void *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = mlir::Diagnostic::attachNote(a2, 0, 0);
  v5 = v3 + 16;
  v4 = *(v3 + 16);
  LODWORD(v34) = 3;
  v35 = "in bytecode version ";
  v36 = 20;
  v6 = *(v3 + 24);
  v7 = &v34;
  if (v6 >= *(v3 + 28))
  {
    if (v4 <= &v34 && v4 + 24 * v6 > &v34)
    {
      v28 = &v34 - v4;
      v29 = v3;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v3 + 16, (v3 + 32), v6 + 1, 24);
      v3 = v29;
      v4 = *(v29 + 16);
      v7 = &v28[v4];
    }

    else
    {
      v25 = v3;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v3 + 16, (v3 + 32), v6 + 1, 24);
      v3 = v25;
      v4 = *(v25 + 16);
      v7 = &v34;
    }
  }

  v8 = v4 + 24 * *(v3 + 24);
  v9 = *v7;
  *(v8 + 16) = v7[2];
  *v8 = v9;
  v10 = *(v3 + 28);
  v11 = (*(v3 + 24) + 1);
  *(v3 + 24) = v11;
  v12 = v2[31];
  LODWORD(v34) = 5;
  v35 = v12;
  v13 = *(v3 + 16);
  v14 = &v34;
  if (v11 >= v10)
  {
    if (v13 <= &v34 && v13 + 24 * v11 > &v34)
    {
      v30 = &v34 - v13;
      v31 = v3;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (v3 + 32), v11 + 1, 24);
      v3 = v31;
      v13 = *(v31 + 16);
      v14 = &v30[v13];
    }

    else
    {
      v26 = v3;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (v3 + 32), v11 + 1, 24);
      v3 = v26;
      v13 = *(v26 + 16);
      v14 = &v34;
    }
  }

  v15 = v13 + 24 * *(v3 + 24);
  v16 = *v14;
  *(v15 + 16) = v14[2];
  *v15 = v16;
  v17 = *(v3 + 28);
  v18 = (*(v3 + 24) + 1);
  *(v3 + 24) = v18;
  LODWORD(v34) = 3;
  v35 = " produced by: ";
  v36 = 14;
  v19 = *(v3 + 16);
  v20 = &v34;
  if (v18 >= v17)
  {
    if (v19 <= &v34 && v19 + 24 * v18 > &v34)
    {
      v32 = &v34 - v19;
      v33 = v3;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (v3 + 32), v18 + 1, 24);
      v3 = v33;
      v19 = *(v33 + 16);
      v20 = &v32[v19];
    }

    else
    {
      v27 = v3;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (v3 + 32), v18 + 1, 24);
      v3 = v27;
      v19 = *(v27 + 16);
      v20 = &v34;
    }
  }

  v21 = v19 + 24 * *(v3 + 24);
  v22 = *v20;
  *(v21 + 16) = v20[2];
  *v21 = v22;
  ++*(v3 + 24);
  v37 = 261;
  v23 = v2[33];
  v34 = v2[32];
  v35 = v23;
  mlir::Diagnostic::operator<<(v3, &v34);
  return 0;
}

uint64_t mlir::Diagnostic::append<char const(&)[30],std::string>(uint64_t a1, char *__s, const void **a3)
{
  v6 = strlen(__s);
  v7 = a1 + 16;
  v8 = *(a1 + 16);
  LODWORD(v15[0]) = 3;
  v15[1] = __s;
  v15[2] = v6;
  v9 = *(a1 + 24);
  v10 = v15;
  if (v9 >= *(a1 + 28))
  {
    if (v8 <= v15 && v8 + 24 * v9 > v15)
    {
      v14 = v15 - v8;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (a1 + 32), v9 + 1, 24);
      v8 = *(a1 + 16);
      v10 = &v14[v8];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (a1 + 32), v9 + 1, 24);
      v8 = *(a1 + 16);
      v10 = v15;
    }
  }

  v11 = v8 + 24 * *(a1 + 24);
  v12 = *v10;
  *(v11 + 16) = v10[2];
  *v11 = v12;
  ++*(a1 + 24);
  v16 = 260;
  v15[0] = a3;
  mlir::Diagnostic::operator<<(a1, v15);
  return a1;
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(anonymous namespace::BytecodeDialect *)>::callback_fn<mlir::BytecodeReader::Impl::parseDialectSection(llvm::ArrayRef<unsigned char>)::$_0>(void *a1, uint64_t a2)
{
  v16 = 0uLL;
  v4 = *a1;
  v3 = a1[1];
  if (*(*a1 + 248) <= 4uLL)
  {
    v17 = 0;
    {
      v5.var0.var0 = v3[3];
      v6 = resolveEntry<llvm::SmallVector<llvm::StringRef,3u> const,llvm::StringRef>(v5, *(v4 + 536), *(v4 + 544), v17, &v16, "string", 6);
      v7 = 0;
      v8 = 0;
      result = 0;
      if (!v6)
      {
        return result;
      }

      goto LABEL_8;
    }

    return 0;
  }

  v17 = 0;
  {
    return 0;
  }

  v10 = v17;
  v11.var0.var0 = v3[3];
  if (!resolveEntry<llvm::SmallVector<llvm::StringRef,3u> const,llvm::StringRef>(v11, *(v4 + 536), *(v4 + 544), (v17 >> 1), &v16, "string", 6))
  {
    return 0;
  }

  v7 = v10 & 1;
  v8 = 1;
LABEL_8:
  v12 = v16;
  v13 = v7 | (v8 << 8);
  v14 = *(v4 + 368);
  if (v14 >= *(v4 + 372))
  {
  }

  else
  {
    v15 = *(v4 + 360) + 48 * v14;
    *v15 = 0;
    *(v15 + 8) = 0;
    *(v15 + 16) = a2;
    *(v15 + 24) = v12;
    *(v15 + 40) = v13;
    ++*(v4 + 368);
  }

  return 1;
}

__n128 llvm::SmallVectorTemplateBase<anonymous namespace::BytecodeOperationName,true>::growAndEmplaceBack<anonymous namespace::BytecodeDialect *&,llvm::StringRef &,std::optional<BOOL> &>(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v14[0] = 0;
  v14[8] = 0;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v5 = *(a1 + 2);
  v6 = *a1;
  v7 = v14;
  if (v5 >= *(a1 + 3))
  {
    if (v6 <= v14 && v6 + 48 * v5 > v14)
    {
      v12 = &v14[-v6];
      v13 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v5 + 1, 48);
      a1 = v13;
      v6 = *v13;
      v7 = &v12[*v13];
    }

    else
    {
      v11 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v5 + 1, 48);
      a1 = v11;
      v6 = *v11;
      v7 = v14;
    }
  }

  v8 = v6 + 48 * *(a1 + 2);
  result = *v7;
  v10 = *(v7 + 2);
  *(v8 + 16) = *(v7 + 1);
  *(v8 + 32) = v10;
  *v8 = result;
  ++*(a1 + 2);
  return result;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_2 &,std::pair<unsigned int,unsigned long long> *,false>(unint64_t result, _DWORD *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 > 2)
    {
      break;
    }

    if (v9 < 2)
    {
      return result;
    }

    if (v9 == 2)
    {
      v82 = *(a2 - 1);
      v83 = *(v8 + 8);
      if (v82 > v83)
      {
        v84 = *v8;
        *v8 = *(a2 - 4);
        *(a2 - 4) = v84;
        *(v8 + 8) = v82;
        *(a2 - 1) = v83;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v95 = (v8 + 16);
      v97 = v8 == a2 || v95 == a2;
      if (a4)
      {
        if (!v97)
        {
          v98 = 0;
          v99 = v8;
          do
          {
            v101 = *(v99 + 3);
            v102 = *(v99 + 1);
            v99 = v95;
            if (v101 > v102)
            {
              v103 = *v95;
              v104 = v98;
              do
              {
                v105 = v8 + v104;
                *(v105 + 16) = *(v8 + v104);
                *(v105 + 24) = *(v8 + v104 + 8);
                if (!v104)
                {
                  v100 = v8;
                  goto LABEL_126;
                }

                v104 -= 16;
              }

              while (v101 > *(v105 - 8));
              v100 = v8 + v104 + 16;
LABEL_126:
              *v100 = v103;
              *(v100 + 8) = v101;
            }

            v95 = v99 + 4;
            v98 += 16;
          }

          while (v99 + 4 != a2);
        }
      }

      else if (!v97)
      {
        v142 = (v8 + 24);
        do
        {
          v143 = *(v7 + 24);
          v144 = *(v7 + 8);
          v7 = v95;
          if (v143 > v144)
          {
            v145 = *v95;
            v146 = v142;
            do
            {
              v147 = v146;
              *(v146 - 2) = *(v146 - 6);
              v148 = *(v146 - 2);
              v146 -= 2;
              *v147 = v148;
            }

            while (v143 > *(v147 - 4));
            *(v146 - 2) = v145;
            *v146 = v143;
          }

          v95 = (v7 + 16);
          v142 += 2;
        }

        while ((v7 + 16) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v106 = (v9 - 2) >> 1;
        v107 = v106;
        do
        {
          if (v106 >= v107)
          {
            v109 = (2 * (v107 & 0xFFFFFFFFFFFFFFFLL)) | 1;
            v110 = v8 + 16 * v109;
            if (2 * (v107 & 0xFFFFFFFFFFFFFFFLL) + 2 < v9)
            {
              v108 = *(v110 + 8) > *(v110 + 24);
              v110 += 16 * v108;
              if (v108)
              {
                v109 = 2 * (v107 & 0xFFFFFFFFFFFFFFFLL) + 2;
              }
            }

            v111 = v8 + 16 * v107;
            v112 = *(v110 + 8);
            v113 = *(v111 + 8);
            if (v112 <= v113)
            {
              v114 = *v111;
              do
              {
                v115 = v111;
                v111 = v110;
                *v115 = *v110;
                *(v115 + 8) = v112;
                if (v106 < v109)
                {
                  break;
                }

                v116 = (2 * v109) | 1;
                v110 = v8 + 16 * v116;
                v117 = 2 * v109 + 2;
                if (v117 < v9)
                {
                  result = *(v110 + 24);
                  v108 = *(v110 + 8) > result;
                  v110 += 16 * v108;
                  if (v108)
                  {
                    v116 = v117;
                  }
                }

                v112 = *(v110 + 8);
                v109 = v116;
              }

              while (v112 <= v113);
              *v111 = v114;
              *(v111 + 8) = v113;
            }
          }

          v108 = v107-- <= 0;
        }

        while (!v108);
        do
        {
          v118 = 0;
          v119 = *v8;
          v120 = *(v8 + 8);
          v121 = v8;
          do
          {
            v125 = v121 + 16 * v118;
            v124 = v125 + 16;
            v126 = (2 * v118) | 1;
            v118 = 2 * v118 + 2;
            if (v118 < v9)
            {
              v122 = *(v125 + 24);
              result = *(v125 + 40);
              v123 = v125 + 32;
              if (v122 <= result)
              {
                v118 = v126;
              }

              else
              {
                v124 = v123;
              }
            }

            else
            {
              v118 = v126;
            }

            *v121 = *v124;
            *(v121 + 8) = *(v124 + 8);
            v121 = v124;
          }

          while (v118 <= ((v9 - 2) >> 1));
          if (v124 == a2 - 4)
          {
            *v124 = v119;
            *(v124 + 8) = v120;
          }

          else
          {
            *v124 = *(a2 - 4);
            *(v124 + 8) = *(a2 - 1);
            *(a2 - 4) = v119;
            *(a2 - 1) = v120;
            v127 = (v124 - v8 + 16) >> 4;
            v108 = v127 < 2;
            v128 = v127 - 2;
            if (!v108)
            {
              v129 = v128 >> 1;
              v130 = v8 + 16 * (v128 >> 1);
              v131 = *(v130 + 8);
              v132 = *(v124 + 8);
              if (v131 > v132)
              {
                v133 = *v124;
                do
                {
                  v134 = v124;
                  v124 = v130;
                  *v134 = *v130;
                  *(v134 + 8) = v131;
                  if (!v129)
                  {
                    break;
                  }

                  v129 = (v129 - 1) >> 1;
                  v130 = v8 + 16 * v129;
                  v131 = *(v130 + 8);
                }

                while (v131 > v132);
                *v124 = v133;
                *(v124 + 8) = v132;
              }
            }
          }

          a2 -= 4;
          v108 = v9-- <= 2;
        }

        while (!v108);
      }

      return result;
    }

    v10 = v8 + 16 * (v9 >> 1);
    v11 = *(a2 - 1);
    if (v9 < 0x81)
    {
      v15 = *(v8 + 8);
      v16 = *(v10 + 8);
      if (v15 > v16)
      {
        v17 = *v10;
        if (v11 > v15)
        {
          *v10 = *(a2 - 4);
          *(a2 - 4) = v17;
          *(v10 + 8) = v11;
          goto LABEL_37;
        }

        *v10 = *v8;
        *v8 = v17;
        *(v10 + 8) = v15;
        *(v8 + 8) = v16;
        v37 = *(a2 - 1);
        if (v37 > v16)
        {
          *v8 = *(a2 - 4);
          *(a2 - 4) = v17;
          *(v8 + 8) = v37;
LABEL_37:
          *(a2 - 1) = v16;
        }

LABEL_38:
        --a3;
        v26 = *v8;
        if ((a4 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_39;
      }

      if (v11 <= v15)
      {
        goto LABEL_38;
      }

      v22 = *v8;
      *v8 = *(a2 - 4);
      *(a2 - 4) = v22;
      *(v8 + 8) = v11;
      *(a2 - 1) = v15;
      v23 = *(v8 + 8);
      v24 = *(v10 + 8);
      if (v23 <= v24)
      {
        goto LABEL_38;
      }

      v25 = *v10;
      *v10 = *v8;
      *v8 = v25;
      *(v10 + 8) = v23;
      *(v8 + 8) = v24;
      --a3;
      v26 = *v8;
      if ((a4 & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_39:
      v38 = *(v8 + 8);
LABEL_64:
      v57 = 0;
      do
      {
        v58 = *(v8 + v57 + 24);
        v57 += 16;
      }

      while (v58 > v38);
      v59 = v8 + v57;
      v60 = a2;
      if (v57 == 16)
      {
        v63 = a2;
        while (v59 < v63)
        {
          v61 = v63 - 4;
          v64 = *(v63 - 1);
          v63 -= 4;
          if (v64 > v38)
          {
            goto LABEL_72;
          }
        }

        v61 = v63;
        v8 = v59;
      }

      else
      {
        do
        {
          v61 = v60 - 4;
          v62 = *(v60 - 1);
          v60 -= 4;
        }

        while (v62 <= v38);
LABEL_72:
        v8 = v59;
        if (v59 < v61)
        {
          v65 = v61;
          do
          {
            v66 = *v8;
            *v8 = *v65;
            *v65 = v66;
            v67 = *(v8 + 8);
            *(v8 + 8) = *(v65 + 8);
            *(v65 + 8) = v67;
            do
            {
              v68 = *(v8 + 24);
              v8 += 16;
            }

            while (v68 > v38);
            do
            {
              v69 = *(v65 - 8);
              v65 -= 16;
            }

            while (v69 <= v38);
          }

          while (v8 < v65);
        }
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      *(v8 - 16) = v26;
      *(v8 - 8) = v38;
      if (v59 < v61)
      {
        goto LABEL_83;
      }

      v70 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_2 &,std::pair<unsigned int,unsigned long long> *>(v7, (v8 - 16));
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_2 &,std::pair<unsigned int,unsigned long long> *>(v8, a2);
      if (result)
      {
        a2 = (v8 - 16);
        if (!v70)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v70)
      {
LABEL_83:
        result = std::__introsort<std::_ClassicAlgPolicy,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_2 &,std::pair<unsigned int,unsigned long long> *,false>(v7, (v8 - 16), a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v12 = *(v10 + 8);
      v13 = *(v8 + 8);
      if (v12 <= v13)
      {
        if (v11 > v12)
        {
          v18 = *v10;
          *v10 = *(a2 - 4);
          *(a2 - 4) = v18;
          *(v10 + 8) = v11;
          *(a2 - 1) = v12;
          v19 = *(v10 + 8);
          v20 = *(v8 + 8);
          if (v19 > v20)
          {
            v21 = *v8;
            *v8 = *v10;
            *v10 = v21;
            *(v8 + 8) = v19;
            *(v10 + 8) = v20;
          }
        }
      }

      else
      {
        v14 = *v8;
        if (v11 <= v12)
        {
          *v8 = *v10;
          *v10 = v14;
          *(v8 + 8) = v12;
          *(v10 + 8) = v13;
          v27 = *(a2 - 1);
          if (v27 <= v13)
          {
            goto LABEL_29;
          }

          *v10 = *(a2 - 4);
          *(a2 - 4) = v14;
          *(v10 + 8) = v27;
        }

        else
        {
          *v8 = *(a2 - 4);
          *(a2 - 4) = v14;
          *(v8 + 8) = v11;
        }

        *(a2 - 1) = v13;
      }

LABEL_29:
      v28 = (v10 - 16);
      v29 = *(v10 - 8);
      v30 = *(v8 + 24);
      v31 = *(a2 - 3);
      if (v29 <= v30)
      {
        if (v31 > v29)
        {
          v33 = *v28;
          *v28 = *(a2 - 8);
          *(a2 - 8) = v33;
          *(v10 - 8) = v31;
          *(a2 - 3) = v29;
          v34 = *(v10 - 8);
          v35 = *(v8 + 24);
          if (v34 > v35)
          {
            v36 = *(v8 + 16);
            *(v8 + 16) = *v28;
            *v28 = v36;
            *(v8 + 24) = v34;
            *(v10 - 8) = v35;
          }
        }
      }

      else
      {
        v32 = *(v8 + 16);
        if (v31 <= v29)
        {
          *(v8 + 16) = *v28;
          *v28 = v32;
          *(v8 + 24) = v29;
          *(v10 - 8) = v30;
          v39 = *(a2 - 3);
          if (v39 <= v30)
          {
            goto LABEL_43;
          }

          *v28 = *(a2 - 8);
          *(a2 - 8) = v32;
          *(v10 - 8) = v39;
        }

        else
        {
          *(v8 + 16) = *(a2 - 8);
          *(a2 - 8) = v32;
          *(v8 + 24) = v31;
        }

        *(a2 - 3) = v30;
      }

LABEL_43:
      v40 = *(v10 + 24);
      v41 = *(v8 + 40);
      v42 = *(a2 - 5);
      if (v40 <= v41)
      {
        if (v42 > v40)
        {
          v44 = *(v10 + 16);
          *(v10 + 16) = *(a2 - 12);
          *(a2 - 12) = v44;
          *(v10 + 24) = v42;
          *(a2 - 5) = v40;
          v45 = *(v10 + 24);
          v46 = *(v8 + 40);
          if (v45 > v46)
          {
            v47 = *(v8 + 32);
            *(v8 + 32) = *(v10 + 16);
            *(v10 + 16) = v47;
            *(v8 + 40) = v45;
            *(v10 + 24) = v46;
          }
        }
      }

      else
      {
        v43 = *(v8 + 32);
        if (v42 <= v40)
        {
          *(v8 + 32) = *(v10 + 16);
          *(v10 + 16) = v43;
          *(v8 + 40) = v40;
          *(v10 + 24) = v41;
          v48 = *(a2 - 5);
          if (v48 <= v41)
          {
            goto LABEL_52;
          }

          *(v10 + 16) = *(a2 - 12);
          *(a2 - 12) = v43;
          *(v10 + 24) = v48;
        }

        else
        {
          *(v8 + 32) = *(a2 - 12);
          *(a2 - 12) = v43;
          *(v8 + 40) = v42;
        }

        *(a2 - 5) = v41;
      }

LABEL_52:
      v49 = *(v10 + 8);
      v50 = *(v10 - 8);
      v51 = *(v10 + 24);
      if (v49 <= v50)
      {
        v52 = *v10;
        if (v51 <= v49)
        {
          v50 = *(v10 + 8);
        }

        else
        {
          v53 = *(v10 + 16);
          *v10 = v53;
          *(v10 + 16) = v52;
          *(v10 + 8) = v51;
          *(v10 + 24) = v49;
          if (v51 <= v50)
          {
            v50 = v51;
            v52 = v53;
          }

          else
          {
            v52 = *v28;
            *v28 = v53;
            *v10 = v52;
            *(v10 - 8) = v51;
            *(v10 + 8) = v50;
          }
        }
      }

      else
      {
        v52 = *v28;
        if (v51 <= v49)
        {
          *v28 = *v10;
          *v10 = v52;
          *(v10 - 8) = v49;
          *(v10 + 8) = v50;
          if (v51 > v50)
          {
            v54 = *(v10 + 16);
            *v10 = v54;
            *(v10 + 16) = v52;
            *(v10 + 8) = v51;
            *(v10 + 24) = v50;
            v50 = v51;
            v52 = v54;
          }
        }

        else
        {
          *v28 = *(v10 + 16);
          *(v10 + 16) = v52;
          *(v10 - 8) = v51;
          *(v10 + 24) = v50;
          v52 = *v10;
          v50 = v49;
        }
      }

      v55 = *v8;
      *v8 = v52;
      *v10 = v55;
      v56 = *(v8 + 8);
      *(v8 + 8) = v50;
      *(v10 + 8) = v56;
      --a3;
      v26 = *v8;
      if (a4)
      {
        goto LABEL_39;
      }

LABEL_63:
      v38 = *(v8 + 8);
      if (*(v8 - 8) > v38)
      {
        goto LABEL_64;
      }

      if (v38 <= *(a2 - 1))
      {
        v73 = v8 + 16;
        do
        {
          v8 = v73;
          if (v73 >= a2)
          {
            break;
          }

          v74 = *(v73 + 8);
          v73 += 16;
        }

        while (v38 <= v74);
      }

      else
      {
        v71 = v8;
        do
        {
          v8 = v71 + 16;
          v72 = *(v71 + 24);
          v71 += 16;
        }

        while (v38 <= v72);
      }

      v75 = a2;
      if (v8 < a2)
      {
        v76 = a2;
        do
        {
          v75 = v76 - 4;
          v77 = *(v76 - 1);
          v76 -= 4;
        }

        while (v38 > v77);
      }

      while (v8 < v75)
      {
        v78 = *v8;
        *v8 = *v75;
        *v75 = v78;
        v79 = *(v8 + 8);
        *(v8 + 8) = *(v75 + 1);
        *(v75 + 1) = v79;
        do
        {
          v80 = *(v8 + 24);
          v8 += 16;
        }

        while (v38 <= v80);
        do
        {
          v81 = *(v75 - 1);
          v75 -= 4;
        }

        while (v38 > v81);
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      a4 = 0;
      *(v8 - 16) = v26;
      *(v8 - 8) = v38;
    }
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {
      v89 = (v8 + 24);
      v90 = *(v8 + 24);
      v92 = (v8 + 8);
      v91 = *(v8 + 8);
      v93 = *(v8 + 40);
      if (v90 <= v91)
      {
        if (v93 > v90)
        {
          v139 = *(v8 + 16);
          v140 = *(v8 + 32);
          *(v8 + 16) = v140;
          *(v8 + 32) = v139;
          *(v8 + 24) = v93;
          *(v8 + 40) = v90;
          if (v93 > v91)
          {
            v141 = *v8;
            *v8 = v140;
            *(v8 + 16) = v141;
            goto LABEL_184;
          }

LABEL_185:
          v93 = v90;
        }
      }

      else
      {
        v94 = *v8;
        if (v93 > v90)
        {
          *v8 = *(v8 + 32);
          *(v8 + 32) = v94;
          goto LABEL_183;
        }

        *v8 = *(v8 + 16);
        *(v8 + 16) = v94;
        *(v8 + 8) = v90;
        *(v8 + 24) = v91;
        if (v93 > v91)
        {
          *(v8 + 16) = *(v8 + 32);
          *(v8 + 32) = v94;
          v92 = (v8 + 24);
LABEL_183:
          v89 = (v8 + 40);
          v90 = v91;
LABEL_184:
          *v92 = v93;
          *v89 = v91;
          goto LABEL_185;
        }
      }

      v150 = *(a2 - 1);
      if (v150 > v93)
      {
        v151 = *(v8 + 32);
        *(v8 + 32) = *(a2 - 4);
        *(a2 - 4) = v151;
        *(v8 + 40) = v150;
        *(a2 - 1) = v93;
        v152 = *(v8 + 40);
        v153 = *(v8 + 24);
        if (v152 > v153)
        {
          v154 = *(v8 + 16);
          v155 = *(v8 + 32);
          *(v8 + 16) = v155;
          *(v8 + 32) = v154;
          *(v8 + 24) = v152;
          *(v8 + 40) = v153;
          v156 = *(v8 + 8);
          if (v152 > v156)
          {
            v157 = *v8;
            *v8 = v155;
            *(v8 + 16) = v157;
            *(v8 + 8) = v152;
            *(v8 + 24) = v156;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_2 &,std::pair<unsigned int,unsigned long long> *,0>(v8, (v8 + 16), (v8 + 32), (v8 + 48), a2 - 4);
    }

    goto LABEL_10;
  }

  v85 = *(v8 + 24);
  v86 = *(v8 + 8);
  v87 = *(a2 - 1);
  if (v85 <= v86)
  {
    if (v87 > v85)
    {
      v135 = *(v8 + 16);
      *(v8 + 16) = *(a2 - 4);
      *(a2 - 4) = v135;
      *(v8 + 24) = v87;
      *(a2 - 1) = v85;
      v136 = *(v8 + 24);
      v137 = *(v8 + 8);
      if (v136 > v137)
      {
        v138 = *v8;
        *v8 = *(v8 + 16);
        *(v8 + 16) = v138;
        *(v8 + 8) = v136;
        *(v8 + 24) = v137;
      }
    }
  }

  else
  {
    v88 = *v8;
    if (v87 <= v85)
    {
      *v8 = *(v8 + 16);
      *(v8 + 16) = v88;
      *(v8 + 8) = v85;
      *(v8 + 24) = v86;
      v149 = *(a2 - 1);
      if (v149 <= v86)
      {
        return result;
      }

      *(v8 + 16) = *(a2 - 4);
      *(a2 - 4) = v88;
      *(v8 + 24) = v149;
    }

    else
    {
      *v8 = *(a2 - 4);
      *(a2 - 4) = v88;
      *(v8 + 8) = v87;
    }

    *(a2 - 1) = v86;
  }

  return result;
}

int *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_2 &,std::pair<unsigned int,unsigned long long> *,0>(int *result, int *a2, int *a3, int *a4, int *a5)
{
  v5 = *(a2 + 1);
  v6 = *(result + 1);
  v7 = *(a3 + 1);
  if (v5 > v6)
  {
    v8 = *result;
    if (v7 <= v5)
    {
      *result = *a2;
      *a2 = v8;
      *(result + 1) = v5;
      *(a2 + 1) = v6;
      v5 = *(a3 + 1);
      if (v5 <= v6)
      {
        goto LABEL_11;
      }

      *a2 = *a3;
      *a3 = v8;
      *(a2 + 1) = v5;
    }

    else
    {
      *result = *a3;
      *a3 = v8;
      *(result + 1) = v7;
    }

    *(a3 + 1) = v6;
    v5 = v6;
LABEL_11:
    v13 = *(a4 + 1);
    if (v13 <= v5)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v7 <= v5)
  {
    v5 = *(a3 + 1);
    v13 = *(a4 + 1);
    if (v13 <= v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v9 = *a2;
    *a2 = *a3;
    *a3 = v9;
    *(a2 + 1) = v7;
    *(a3 + 1) = v5;
    v10 = *(a2 + 1);
    v11 = *(result + 1);
    if (v10 <= v11)
    {
      goto LABEL_11;
    }

    v12 = *result;
    *result = *a2;
    *a2 = v12;
    *(result + 1) = v10;
    *(a2 + 1) = v11;
    v5 = *(a3 + 1);
    v13 = *(a4 + 1);
    if (v13 <= v5)
    {
      goto LABEL_16;
    }
  }

LABEL_12:
  v14 = *a3;
  *a3 = *a4;
  *a4 = v14;
  *(a3 + 1) = v13;
  *(a4 + 1) = v5;
  v15 = *(a3 + 1);
  v16 = *(a2 + 1);
  if (v15 > v16)
  {
    v17 = *a2;
    *a2 = *a3;
    *a3 = v17;
    *(a2 + 1) = v15;
    *(a3 + 1) = v16;
    v18 = *(a2 + 1);
    v19 = *(result + 1);
    if (v18 > v19)
    {
      v20 = *result;
      *result = *a2;
      *a2 = v20;
      *(result + 1) = v18;
      *(a2 + 1) = v19;
    }
  }

LABEL_16:
  v21 = *(a5 + 1);
  v22 = *(a4 + 1);
  if (v21 > v22)
  {
    v23 = *a4;
    *a4 = *a5;
    *a5 = v23;
    *(a4 + 1) = v21;
    *(a5 + 1) = v22;
    v24 = *(a4 + 1);
    v25 = *(a3 + 1);
    if (v24 > v25)
    {
      v26 = *a3;
      *a3 = *a4;
      *a4 = v26;
      *(a3 + 1) = v24;
      *(a4 + 1) = v25;
      v27 = *(a3 + 1);
      v28 = *(a2 + 1);
      if (v27 > v28)
      {
        v29 = *a2;
        *a2 = *a3;
        *a3 = v29;
        *(a2 + 1) = v27;
        *(a3 + 1) = v28;
        v30 = *(a2 + 1);
        v31 = *(result + 1);
        if (v30 > v31)
        {
          v32 = *result;
          *result = *a2;
          *a2 = v32;
          *(result + 1) = v30;
          *(a2 + 1) = v31;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_2 &,std::pair<unsigned int,unsigned long long> *>(uint64_t a1, int *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v7 = *(a1 + 24);
      v8 = *(a1 + 8);
      v9 = *(a2 - 1);
      if (v7 <= v8)
      {
        if (v9 <= v7)
        {
          return 1;
        }

        v23 = *(a1 + 16);
        *(a1 + 16) = *(a2 - 4);
        *(a2 - 4) = v23;
        *(a1 + 24) = v9;
        *(a2 - 1) = v7;
        v24 = *(a1 + 24);
        v25 = *(a1 + 8);
        if (v24 <= v25)
        {
          return 1;
        }

        v26 = *a1;
        *a1 = *(a1 + 16);
        *(a1 + 16) = v26;
        *(a1 + 8) = v24;
        *(a1 + 24) = v25;
        return 1;
      }

      else
      {
        v10 = *a1;
        if (v9 <= v7)
        {
          *a1 = *(a1 + 16);
          *(a1 + 16) = v10;
          *(a1 + 8) = v7;
          *(a1 + 24) = v8;
          v33 = *(a2 - 1);
          if (v33 <= v8)
          {
            return 1;
          }

          *(a1 + 16) = *(a2 - 4);
          *(a2 - 4) = v10;
          *(a1 + 24) = v33;
          *(a2 - 1) = v8;
          return 1;
        }

        else
        {
          *a1 = *(a2 - 4);
          *(a2 - 4) = v10;
          *(a1 + 8) = v9;
          *(a2 - 1) = v8;
          return 1;
        }
      }
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_2 &,std::pair<unsigned int,unsigned long long> *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2 - 4);
        return 1;
      }

LABEL_14:
      v11 = *(a1 + 24);
      v13 = (a1 + 8);
      v12 = *(a1 + 8);
      v15 = (a1 + 40);
      v14 = *(a1 + 40);
      if (v11 <= v12)
      {
        if (v14 <= v11)
        {
          goto LABEL_34;
        }

        v27 = *(a1 + 16);
        v28 = *(a1 + 32);
        *(a1 + 16) = v28;
        *(a1 + 32) = v27;
        *(a1 + 24) = v14;
        *(a1 + 40) = v11;
        if (v14 <= v12)
        {
          goto LABEL_34;
        }

        v29 = *a1;
        *a1 = v28;
        *(a1 + 16) = v29;
        v15 = (a1 + 24);
      }

      else
      {
        v16 = *a1;
        if (v14 <= v11)
        {
          *a1 = *(a1 + 16);
          *(a1 + 16) = v16;
          *(a1 + 8) = v11;
          *(a1 + 24) = v12;
          if (v14 <= v12)
          {
LABEL_34:
            v34 = a1 + 48;
            if ((a1 + 48) == a2)
            {
              return 1;
            }

            v35 = 0;
            v36 = 0;
            v37 = a1 + 32;
            while (1)
            {
              v38 = *(v34 + 8);
              if (v38 > *(v37 + 8))
              {
                break;
              }

LABEL_43:
              v37 = v34;
              v35 += 16;
              v34 += 16;
              if (v34 == a2)
              {
                return 1;
              }
            }

            v39 = *v34;
            v40 = v35;
            do
            {
              v41 = a1 + v40;
              *(v41 + 48) = *(a1 + v40 + 32);
              *(v41 + 56) = *(a1 + v40 + 40);
              if (v40 == -32)
              {
                *a1 = v39;
                *(a1 + 8) = v38;
                if (++v36 != 8)
                {
                  goto LABEL_43;
                }

                return v34 + 16 == a2;
              }

              v40 -= 16;
            }

            while (v38 > *(v41 + 24));
            v42 = a1 + v40;
            *(v42 + 48) = v39;
            *(v42 + 56) = v38;
            if (++v36 != 8)
            {
              goto LABEL_43;
            }

            return v34 + 16 == a2;
          }

          *(a1 + 16) = *(a1 + 32);
          *(a1 + 32) = v16;
          v13 = (a1 + 24);
        }

        else
        {
          *a1 = *(a1 + 32);
          *(a1 + 32) = v16;
        }
      }

      *v13 = v14;
      *v15 = v12;
      goto LABEL_34;
    }

    v17 = (a1 + 24);
    v18 = *(a1 + 24);
    v20 = (a1 + 8);
    v19 = *(a1 + 8);
    v21 = *(a1 + 40);
    if (v18 <= v19)
    {
      if (v21 <= v18)
      {
        goto LABEL_50;
      }

      v30 = *(a1 + 16);
      v31 = *(a1 + 32);
      *(a1 + 16) = v31;
      *(a1 + 32) = v30;
      *(a1 + 24) = v21;
      *(a1 + 40) = v18;
      if (v21 <= v19)
      {
        goto LABEL_49;
      }

      v32 = *a1;
      *a1 = v31;
      *(a1 + 16) = v32;
    }

    else
    {
      v22 = *a1;
      if (v21 <= v18)
      {
        *a1 = *(a1 + 16);
        *(a1 + 16) = v22;
        *(a1 + 8) = v18;
        *(a1 + 24) = v19;
        if (v21 <= v19)
        {
          goto LABEL_50;
        }

        *(a1 + 16) = *(a1 + 32);
        *(a1 + 32) = v22;
        v20 = (a1 + 24);
      }

      else
      {
        *a1 = *(a1 + 32);
        *(a1 + 32) = v22;
      }

      v17 = (a1 + 40);
      v18 = v19;
    }

    *v20 = v21;
    *v17 = v19;
LABEL_49:
    v21 = v18;
LABEL_50:
    v43 = *(a2 - 1);
    if (v43 <= v21)
    {
      return 1;
    }

    v44 = *(a1 + 32);
    *(a1 + 32) = *(a2 - 4);
    *(a2 - 4) = v44;
    *(a1 + 40) = v43;
    *(a2 - 1) = v21;
    v45 = *(a1 + 40);
    v46 = *(a1 + 24);
    if (v45 <= v46)
    {
      return 1;
    }

    v47 = *(a1 + 16);
    v48 = *(a1 + 32);
    *(a1 + 16) = v48;
    *(a1 + 32) = v47;
    *(a1 + 24) = v45;
    *(a1 + 40) = v46;
    v49 = *(a1 + 8);
    if (v45 <= v49)
    {
      return 1;
    }

    v50 = *a1;
    *a1 = v48;
    *(a1 + 16) = v50;
    *(a1 + 8) = v45;
    *(a1 + 24) = v49;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
    goto LABEL_14;
  }

  v4 = *(a2 - 1);
  v5 = *(a1 + 8);
  if (v4 <= v5)
  {
    return 1;
  }

  v6 = *a1;
  *a1 = *(a2 - 4);
  *(a2 - 4) = v6;
  *(a1 + 8) = v4;
  *(a2 - 1) = v5;
  return 1;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t *result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 4);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = (37 * *a2) & (v4 - 1);
  v8 = (*result + 4 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v12 = 0;
    v13 = 1;
    while (v9 != -1)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == -2;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 4 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }

LABEL_5:
    v18 = v8;
    v11 = *(result + 2);
    if (4 * v11 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v11 - *(result + 3) > v4 >> 3)
    {
      *(result + 2) = v11 + 1;
      if (*v8 == -1)
      {
LABEL_9:
        *v8 = *a2;
        v5 = *result;
        v4 = *(result + 4);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v16 = result;
    v17 = a3;
    llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 2);
    if (*v8 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 4 * v4;
  *(a3 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 4 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
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
        v7 = (v4 + 4 * (v13 & v5));
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

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

char *llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(4 * v8, 4uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = result;
      memset(result, 255, 4 * v10);
      result = v11;
    }

    if (v3)
    {
      v12 = 0;
      v13 = v4;
      do
      {
        v16 = *v13;
        if (*v13 <= 0xFFFFFFFD)
        {
          v17 = *(a1 + 16) - 1;
          v18 = v17 & (37 * v16);
          v15 = &result[4 * v18];
          v19 = *v15;
          if (v16 != *v15)
          {
            v20 = 0;
            v21 = 1;
            while (v19 != -1)
            {
              if (v20)
              {
                v22 = 0;
              }

              else
              {
                v22 = v19 == -2;
              }

              if (v22)
              {
                v20 = v15;
              }

              v23 = v18 + v21++;
              v18 = v23 & v17;
              v15 = &result[4 * (v23 & v17)];
              v19 = *v15;
              if (v16 == *v15)
              {
                goto LABEL_16;
              }
            }

            if (v20)
            {
              v15 = v20;
            }
          }

LABEL_16:
          *v15 = v16;
          *(a1 + 8) = ++v12;
        }

        v13 = (v13 + 4);
      }

      while (v13 != (v4 + 4 * v3));
    }

    llvm::deallocate_buffer(v4, (4 * v3));
  }

  *(a1 + 8) = 0;
  v14 = *(a1 + 16);
  if (v14)
  {

    return memset(result, 255, 4 * v14);
  }

  return result;
}

uint64_t *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::BytecodeReader::Impl::processUseLists(mlir::Operation *)::$_0>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v8 = a2;
  v4 = (*v2)++;
  v7 = v4;
  return llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::try_emplace<unsigned int const&>((v3 + 704), &v8, &v7, v6);
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Block *)>::callback_fn<mlir::BytecodeReader::Impl::processUseLists(mlir::Operation *)::$_1>(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 56);
  if (v2 == v3)
  {
    return 1;
  }

  v4 = *a1;
  while ((mlir::BytecodeReader::Impl::sortUseListOrder(v4, *v2) & 1) != 0)
  {
    if (++v2 == v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::BytecodeReader::Impl::processUseLists(mlir::Operation *)::$_2>(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 36);
  if (v2)
  {
    v3 = a2 - 16;
  }

  else
  {
    v3 = 0;
  }

  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = *a1;
  while (1)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, v4);
    if ((mlir::BytecodeReader::Impl::sortUseListOrder(v5, NextResultAtOffset) & 1) == 0)
    {
      break;
    }

    if (v2 == ++v4)
    {
      return 1;
    }
  }

  return 0;
}

mlir::BytecodeWriterConfig *mlir::BytecodeWriterConfig::BytecodeWriterConfig(mlir::BytecodeWriterConfig *this, StringRef a2)
{
  var1 = a2.var1;
  var0 = a2.var0;
  v5 = operator new(0xF8uLL);
  *v5 = 6;
  v5[8] = 0;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 4) = 0x1000000000;
  *(v5 + 5) = var0;
  *(v5 + 6) = var1;
  *(v5 + 7) = v5 + 72;
  *(v5 + 8) = 0x600000000;
  *(v5 + 15) = v5 + 136;
  *(v5 + 16) = 0x600000000;
  *(v5 + 23) = v5 + 200;
  *(v5 + 24) = 0x600000000;
  *this = v5;
  return this;
}

void mlir::BytecodeWriterConfig::attachFallbackResourcePrinter(mlir::BytecodeWriterConfig *this, mlir::FallbackAsmResourceMap *a2)
{
  mlir::FallbackAsmResourceMap::getPrinters(&__p, a2);
  v3 = __p;
  v4 = v16;
  if (__p == v16)
  {
    if (__p)
    {
      goto LABEL_11;
    }

    return;
  }

  do
  {
    v5 = *v3;
    *v3 = 0;
    v14 = v5;
    v6 = *this;
    v7 = *(*this + 192);
    if (v7 < *(*this + 196))
    {
      v8 = *(v6 + 184);
      v14 = 0;
      *(v8 + 8 * v7) = v5;
      *(v6 + 192) = v7 + 1;
      v9 = v14;
      v14 = 0;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_7:
      (*(*v9 + 8))(v9);
      goto LABEL_4;
    }

    llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmResourcePrinter>,false>::growAndEmplaceBack<std::unique_ptr<mlir::AsmResourcePrinter>>(v6 + 184, &v14);
    v9 = v14;
    v14 = 0;
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_4:
    ++v3;
  }

  while (v3 != v4);
  v3 = __p;
  if (__p)
  {
LABEL_11:
    v10 = v16;
    v11 = v3;
    if (v16 != v3)
    {
      do
      {
        v13 = *--v10;
        v12 = v13;
        *v10 = 0;
        if (v13)
        {
          (*(*v12 + 8))(v12);
        }
      }

      while (v10 != v3);
      v11 = __p;
    }

    v16 = v3;
    operator delete(v11);
  }
}

mlir::BytecodeWriterConfig *mlir::BytecodeWriterConfig::BytecodeWriterConfig(mlir::BytecodeWriterConfig *a1, mlir::FallbackAsmResourceMap *a2, uint64_t a3, uint64_t a4)
{
  v8 = operator new(0xF8uLL);
  *v8 = 6;
  v8[8] = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 4) = 0x1000000000;
  *(v8 + 5) = a3;
  *(v8 + 6) = a4;
  *(v8 + 7) = v8 + 72;
  *(v8 + 8) = 0x600000000;
  *(v8 + 15) = v8 + 136;
  *(v8 + 16) = 0x600000000;
  *(v8 + 23) = v8 + 200;
  *(v8 + 24) = 0x600000000;
  *a1 = v8;
  mlir::BytecodeWriterConfig::attachFallbackResourcePrinter(a1, a2);
  return a1;
}

void mlir::BytecodeWriterConfig::~BytecodeWriterConfig(mlir::BytecodeWriterConfig::Impl **this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *this;
  *this = 0;
  if (v5)
  {
    mlir::BytecodeWriterConfig::Impl::~Impl(v5, a2, a3, a4);
    operator delete(v6);
  }
}

void mlir::writeBytecodeToFile(mlir *this, mlir::Operation *a2, llvm::raw_ostream *a3, const mlir::BytecodeWriterConfig *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v7 = 0u;
  v9 = v11;
  v10 = 0;
  mlir::bytecode::detail::IRNumberingState::IRNumberingState(v11, this, a3);
  v12 = *a3;
  v14 = 0u;
  __p = 0;
  v15 = &v17;
  v16 = xmmword_1E09700D0;
  v18 = 0u;
  v19 = 0;
  v20 = v11;
  v21 = &v7;
  v22 = v12;
  llvm::deallocate_buffer(v18, (24 * v19));
}

BOOL anonymous namespace::BytecodeWriter::write(_anonymous_namespace_::BytecodeWriter *this, mlir::Block **a2, llvm::raw_ostream *a3)
{
  v535 = *MEMORY[0x1E69E9840];
  *v497 = 0u;
  v498 = 0u;
  *v495 = 0u;
  v496 = 0u;
  *v494 = 0u;
  v499 = 1;
  std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(v494, 0, "ML\xEF\x52duplicate top-level section: ", "\x00duplicate top-level section: ", 4uLL);
  v6 = **(this + 123);
  if (v6 >= 7)
  {
    LOWORD(v513) = 257;
    mlir::Operation::emitError(a2, __s1, __dst);
    if (__dst[0])
    {
      LODWORD(v529) = 3;
      *(&v529 + 1) = "unsupported version requested ";
      v530 = 30;
      v7 = &v529;
      v8 = v521[1];
      if (LODWORD(v521[2]) >= HIDWORD(v521[2]))
      {
        if (v521[1] <= &v529 && v521[1] + 24 * LODWORD(v521[2]) > &v529)
        {
          v476 = &v529 - v521[1];
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v521[1], &v521[3], LODWORD(v521[2]) + 1, 24);
          v8 = v521[1];
          v7 = (v521[1] + v476);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v521[1], &v521[3], LODWORD(v521[2]) + 1, 24);
          v7 = &v529;
          v8 = v521[1];
        }
      }

      v9 = &v8[24 * LODWORD(v521[2])];
      v10 = *v7;
      *(v9 + 2) = *(v7 + 2);
      *v9 = v10;
      v11 = ++LODWORD(v521[2]);
      if (__dst[0])
      {
        v12 = **(this + 123);
        LODWORD(v529) = 2;
        *(&v529 + 1) = v12;
        v13 = &v529;
        v14 = v521[1];
        if (v11 >= HIDWORD(v521[2]))
        {
          if (v521[1] <= &v529 && v521[1] + 24 * v11 > &v529)
          {
            v477 = &v529 - v521[1];
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v521[1], &v521[3], v11 + 1, 24);
            v14 = v521[1];
            v13 = (v521[1] + v477);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v521[1], &v521[3], v11 + 1, 24);
            v13 = &v529;
            v14 = v521[1];
          }
        }

        v15 = &v14[24 * LODWORD(v521[2])];
        v16 = *v13;
        *(v15 + 2) = *(v13 + 2);
        *v15 = v16;
        v17 = ++LODWORD(v521[2]);
        if (__dst[0])
        {
          LODWORD(v529) = 3;
          *(&v529 + 1) = ", must be in range [";
          v530 = 20;
          v18 = &v529;
          v19 = v521[1];
          if (v17 >= HIDWORD(v521[2]))
          {
            if (v521[1] <= &v529 && v521[1] + 24 * v17 > &v529)
            {
              v478 = &v529 - v521[1];
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v521[1], &v521[3], v17 + 1, 24);
              v19 = v521[1];
              v18 = (v521[1] + v478);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v521[1], &v521[3], v17 + 1, 24);
              v18 = &v529;
              v19 = v521[1];
            }
          }

          v20 = &v19[24 * LODWORD(v521[2])];
          v21 = *v18;
          *(v20 + 2) = *(v18 + 2);
          *v20 = v21;
          v22 = ++LODWORD(v521[2]);
          if (__dst[0])
          {
            LODWORD(v529) = 2;
            *(&v529 + 1) = 0;
            v23 = &v529;
            v24 = v521[1];
            if (v22 >= HIDWORD(v521[2]))
            {
              if (v521[1] <= &v529 && v521[1] + 24 * v22 > &v529)
              {
                v479 = &v529 - v521[1];
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v521[1], &v521[3], v22 + 1, 24);
                v24 = v521[1];
                v23 = (v521[1] + v479);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v521[1], &v521[3], v22 + 1, 24);
                v23 = &v529;
                v24 = v521[1];
              }
            }

            v25 = &v24[24 * LODWORD(v521[2])];
            v26 = *v23;
            *(v25 + 2) = *(v23 + 2);
            *v25 = v26;
            v27 = ++LODWORD(v521[2]);
            if (__dst[0])
            {
              LODWORD(v529) = 3;
              *(&v529 + 1) = ", ";
              v530 = 2;
              v28 = &v529;
              v29 = v521[1];
              if (v27 >= HIDWORD(v521[2]))
              {
                if (v521[1] <= &v529 && v521[1] + 24 * v27 > &v529)
                {
                  v480 = &v529 - v521[1];
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v521[1], &v521[3], v27 + 1, 24);
                  v29 = v521[1];
                  v28 = (v521[1] + v480);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v521[1], &v521[3], v27 + 1, 24);
                  v28 = &v529;
                  v29 = v521[1];
                }
              }

              v30 = &v29[24 * LODWORD(v521[2])];
              v31 = *v28;
              *(v30 + 2) = *(v28 + 2);
              *v30 = v31;
              v32 = ++LODWORD(v521[2]);
              if (__dst[0])
              {
                LODWORD(v529) = 2;
                *(&v529 + 1) = 6;
                v33 = &v529;
                v34 = v521[1];
                if (v32 >= HIDWORD(v521[2]))
                {
                  if (v521[1] <= &v529 && v521[1] + 24 * v32 > &v529)
                  {
                    v481 = &v529 - v521[1];
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v521[1], &v521[3], v32 + 1, 24);
                    v34 = v521[1];
                    v33 = (v521[1] + v481);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v521[1], &v521[3], v32 + 1, 24);
                    v33 = &v529;
                    v34 = v521[1];
                  }
                }

                v35 = &v34[24 * LODWORD(v521[2])];
                v36 = *v33;
                *(v35 + 2) = *(v33 + 2);
                *v35 = v36;
                ++LODWORD(v521[2]);
                if (__dst[0])
                {
                  mlir::Diagnostic::operator<<(&__dst[1], 93);
                }
              }
            }
          }
        }
      }
    }

    v37 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__dst);
    if (__dst[0])
    {
      mlir::InFlightDiagnostic::report(__dst);
    }

    if (v528 == 1)
    {
      if (v527 != &v528)
      {
        free(v527);
      }

      v38 = __p;
      if (__p)
      {
        v39 = v526;
        v40 = __p;
        if (v526 != __p)
        {
          do
          {
            v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
          }

          while (v39 != v38);
          v40 = __p;
        }

        v526 = v38;
        operator delete(v40);
      }

      v41 = v523;
      if (!v523)
      {
        goto LABEL_648;
      }

      v42 = v524;
      v43 = v523;
      if (v524 == v523)
      {
LABEL_647:
        v524 = v41;
        operator delete(v43);
LABEL_648:
        if (v521[1] != &v521[3])
        {
          free(v521[1]);
        }

        goto LABEL_650;
      }

      do
      {
        v45 = *--v42;
        v44 = v45;
        *v42 = 0;
        if (v45)
        {
          operator delete[](v44);
        }
      }

      while (v42 != v41);
LABEL_646:
      v43 = v523;
      goto LABEL_647;
    }

    goto LABEL_650;
  }

  v483 = a2;
  v46 = (2 * v6) | 1;
  v47 = v494[1];
  if (v494[1] >= v495[0])
  {
    v49 = v494[0];
    v50 = v494[1] - v494[0];
    v51 = v494[1] - v494[0] + 1;
    if (v51 < 0)
    {
      goto LABEL_689;
    }

    v52 = v495[0] - v494[0];
    if (2 * (v495[0] - v494[0]) > v51)
    {
      v51 = 2 * v52;
    }

    if (v52 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v53 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v53 = v51;
    }

    if (v53)
    {
      v54 = operator new(v53);
    }

    else
    {
      v54 = 0;
    }

    v54[v50] = v46;
    v48 = &v54[v50 + 1];
    memcpy(v54, v49, v50);
    v494[0] = v54;
    v494[1] = v48;
    v495[0] = &v54[v53];
    if (v49)
    {
      operator delete(v49);
    }
  }

  else
  {
    *v494[1] = v46;
    v48 = v47 + 1;
  }

  v494[1] = v48;
  std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(v494, v48, *(*(this + 123) + 40), (*(*(this + 123) + 40) + *(*(this + 123) + 48)), *(*(this + 123) + 48));
  v55 = v494[1];
  v482 = a3;
  if (v494[1] >= v495[0])
  {
    v57 = v494[0];
    v58 = v494[1] - v494[0];
    v59 = v494[1] - v494[0] + 1;
    if (v59 < 0)
    {
      goto LABEL_689;
    }

    v60 = v495[0] - v494[0];
    if (2 * (v495[0] - v494[0]) > v59)
    {
      v59 = 2 * v60;
    }

    if (v60 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v61 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v61 = v59;
    }

    if (v61)
    {
      v62 = operator new(v61);
    }

    else
    {
      v62 = 0;
    }

    v62[v58] = 0;
    v56 = &v62[v58 + 1];
    memcpy(v62, v57, v58);
    v494[0] = v62;
    v494[1] = v56;
    v495[0] = &v62[v61];
    if (v57)
    {
      operator delete(v57);
    }
  }

  else
  {
    *v494[1] = 0;
    v56 = v55 + 1;
  }

  v494[1] = v56;
  memset(v521, 0, sizeof(v521));
  *__dst = 0u;
  v522 = 1;
  v488 = this + 40;
  v63 = *(this + 23);
  v64 = *(this + 48);
  v65 = v63 + 24 * v64;
  if (v64 >= 0x80)
  {
LABEL_68:
    while (1)
    {
      v72 = *(v63 + 16);
      v74 = v73;
      v75 = *(this + 123);
      if (*v75 > 0)
      {
        break;
      }

      if (v73 > 0x7F)
      {
      }

      else
      {
        v81 = (2 * v73) | 1;
        v82 = __dst[1];
        if (__dst[1] >= v521[0])
        {
          v90 = __dst[0];
          v91 = __dst[1] - __dst[0];
          v92 = __dst[1] - __dst[0] + 1;
          if (v92 < 0)
          {
            goto LABEL_689;
          }

          v93 = v521[0] - __dst[0];
          if (2 * (v521[0] - __dst[0]) > v92)
          {
            v92 = 2 * v93;
          }

          if (v93 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v94 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v94 = v92;
          }

          if (v94)
          {
            v95 = operator new(v94);
          }

          else
          {
            v95 = 0;
          }

          v95[v91] = v81;
          memcpy(v95, v90, v91);
          __dst[0] = v95;
          __dst[1] = &v95[v91 + 1];
          v521[0] = &v95[v94];
          if (v90)
          {
            operator delete(v90);
          }

          __dst[1] = &v95[v91 + 1];
        }

        else
        {
          *__dst[1] = v81;
          __dst[1] = v82 + 1;
        }
      }

LABEL_67:
      v63 += 24;
      if (v63 == v65)
      {
        goto LABEL_60;
      }
    }

    *v514 = 0u;
    v515 = 0u;
    *v512 = 0u;
    v513 = 0u;
    *__s1 = 0u;
    v516 = 1;
    v76 = *(v72 + 24);
    if (v76)
    {
      v77 = *v75;
      *&v529 = &unk_1F5AF22D8;
      *(&v529 + 1) = v77;
      v530 = __s1;
      v531 = this + 40;
      v532 = this;
      v533 = v75 + 2;
      (*(*v76 + 48))(v76, &v529);
      v78 = __s1[0];
      v79 = __s1[1] + *(&v515 + 1);
      if (v79 != v78)
      {
        v80 = v514[0];
        if (!v514[0])
        {
          goto LABEL_89;
        }

        goto LABEL_82;
      }
    }

    else
    {
      if ((2 * v74) <= 0x7F)
      {
        v83 = (4 * v74) | 1;
        v84 = __dst[1];
        if (__dst[1] >= v521[0])
        {
          v96 = __dst[0];
          v97 = __dst[1] - __dst[0];
          v98 = __dst[1] - __dst[0] + 1;
          if (v98 < 0)
          {
            goto LABEL_689;
          }

          v99 = v521[0] - __dst[0];
          if (2 * (v521[0] - __dst[0]) > v98)
          {
            v98 = 2 * v99;
          }

          if (v99 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v100 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v100 = v98;
          }

          if (v100)
          {
            v101 = operator new(v100);
          }

          else
          {
            v101 = 0;
          }

          v101[v97] = v83;
          memcpy(v101, v96, v97);
          __dst[0] = v101;
          __dst[1] = &v101[v97 + 1];
          v521[0] = &v101[v100];
          if (v96)
          {
            operator delete(v96);
          }

          __dst[1] = &v101[v97 + 1];
          v80 = v514[0];
          if (!v514[0])
          {
            goto LABEL_89;
          }
        }

        else
        {
          *__dst[1] = v83;
          __dst[1] = v84 + 1;
          v80 = v514[0];
          if (!v514[0])
          {
            goto LABEL_89;
          }
        }

        goto LABEL_82;
      }
    }

    v80 = v514[0];
    if (!v514[0])
    {
LABEL_89:
      if (v512[1])
      {
        *&v513 = v512[1];
        operator delete(v512[1]);
      }

      if (__s1[0])
      {
        __s1[1] = __s1[0];
        operator delete(__s1[0]);
      }

      goto LABEL_67;
    }

LABEL_82:
    v85 = v514[1];
    v86 = v80;
    if (v514[1] != v80)
    {
      v87 = v514[1];
      do
      {
        v89 = *(v87 - 3);
        v87 -= 24;
        v88 = v89;
        if (v89)
        {
          *(v85 - 2) = v88;
          operator delete(v88);
        }

        v85 = v87;
      }

      while (v87 != v80);
      v86 = v514[0];
    }

    v514[1] = v80;
    operator delete(v86);
    goto LABEL_89;
  }

  v66 = operator new(1uLL);
  __dst[0] = v66;
  *v66 = (2 * v64) | 1;
  __dst[1] = v66 + 1;
  v521[0] = v66 + 1;
  if (v64)
  {
    goto LABEL_68;
  }

LABEL_60:
  if (**(this + 123) <= 3)
  {
LABEL_119:
    v70 = *(this + 28);
    v71 = *(this + 29);
    v490 = this;
    if (v70 == v71)
    {
      goto LABEL_240;
    }

    goto LABEL_120;
  }

  v67 = *(this + 29) - *(this + 28);
  if ((v67 >> 3) > 0x7F)
  {
    goto LABEL_119;
  }

  v68 = (2 * (v67 >> 3)) | 1;
  v69 = __dst[1];
  if (__dst[1] < v521[0])
  {
    *__dst[1] = v68;
    __dst[1] = v69 + 1;
    v70 = *(this + 28);
    v71 = *(this + 29);
    v490 = this;
    if (v70 == v71)
    {
      goto LABEL_240;
    }

LABEL_120:
    v487 = v71;
    while (1)
    {
      v102 = v70;
      v103 = *v70;
      v70 += 8;
      v104 = *v103;
      if (v70 != v71)
      {
        while (**v70 == v104)
        {
          v70 += 8;
          if (v70 == v71)
          {
            v70 = v71;
            break;
          }
        }
      }

      v105 = *(v104 + 16);
      if (v105 > 0x7F)
      {
        v108 = v70 - v102;
        v109 = (v70 - v102) >> 3;
        if (v109 > 0x7F)
        {
          goto LABEL_129;
        }
      }

      else
      {
        v106 = (2 * v105) | 1;
        v107 = __dst[1];
        if (__dst[1] >= v521[0])
        {
          v112 = __dst[0];
          v113 = __dst[1] - __dst[0];
          v114 = __dst[1] - __dst[0] + 1;
          if (v114 < 0)
          {
            goto LABEL_689;
          }

          v115 = v521[0] - __dst[0];
          if (2 * (v521[0] - __dst[0]) > v114)
          {
            v114 = 2 * v115;
          }

          if (v115 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v116 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v116 = v114;
          }

          if (v116)
          {
            v117 = operator new(v116);
          }

          else
          {
            v117 = 0;
          }

          v117[v113] = v106;
          v124 = &v117[v113 + 1];
          memcpy(v117, v112, v113);
          __dst[0] = v117;
          __dst[1] = v124;
          v521[0] = &v117[v116];
          if (v112)
          {
            operator delete(v112);
          }

          v71 = v487;
          __dst[1] = v124;
          v108 = v70 - v102;
          v109 = (v70 - v102) >> 3;
          if (v109 > 0x7F)
          {
LABEL_129:
            if (v102 != v70)
            {
              break;
            }

            goto LABEL_121;
          }
        }

        else
        {
          *__dst[1] = v106;
          __dst[1] = v107 + 1;
          v108 = v70 - v102;
          v109 = (v70 - v102) >> 3;
          if (v109 > 0x7F)
          {
            goto LABEL_129;
          }
        }
      }

      v110 = (2 * (v108 >> 3)) | 1;
      v111 = __dst[1];
      if (__dst[1] < v521[0])
      {
        *__dst[1] = v110;
        __dst[1] = v111 + 1;
        if (v102 != v70)
        {
          break;
        }

        goto LABEL_121;
      }

      v118 = __dst[0];
      v119 = __dst[1] - __dst[0];
      v120 = __dst[1] - __dst[0] + 1;
      if (v120 < 0)
      {
        goto LABEL_689;
      }

      v121 = v521[0] - __dst[0];
      if (2 * (v521[0] - __dst[0]) > v120)
      {
        v120 = 2 * v121;
      }

      if (v121 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v122 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v122 = v120;
      }

      if (v122)
      {
        v123 = operator new(v122);
      }

      else
      {
        v123 = 0;
      }

      v123[v119] = v110;
      v125 = &v123[v119 + 1];
      memcpy(v123, v118, v119);
      __dst[0] = v123;
      __dst[1] = v125;
      v521[0] = &v123[v122];
      if (v118)
      {
        operator delete(v118);
      }

      v71 = v487;
      __dst[1] = v125;
      if (v102 != v70)
      {
        break;
      }

LABEL_121:
      if (v70 == v71)
      {
        goto LABEL_240;
      }
    }

    v489 = v70;
    while (1)
    {
      v127 = *v102;
      __s1[0] = *(*(*v102 + 8) + 8);
      __s1[0] = mlir::OpaqueAttr::getAttrData(__s1);
      __s1[1] = v128;
      LOBYTE(v529) = 46;
      v129 = llvm::StringRef::find(__s1, &v529, 1uLL, 0);
      if (v129 == -1)
      {
        v131 = 0;
        v132 = 0;
      }

      else
      {
        if (__s1[1] >= (v129 + 1))
        {
          v130 = (v129 + 1);
        }

        else
        {
          v130 = __s1[1];
        }

        v131 = (__s1[0] + v130);
        v132 = (__s1[1] - v130);
      }

      HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(v131, v132);
      v134 = *(this + 8);
      __s1[0] = v131;
      __s1[1] = __PAIR64__(HashValue, v132);
      LODWORD(v512[0]) = 0;
      v135 = *(this + 4);
      if (v135)
      {
        v491 = v127;
        v136 = 0;
        v137 = *this;
        v529 = xmmword_1E09700E0;
        v138 = (v135 - 1);
        v139 = 1;
        v140 = HashValue & v138;
        v141 = &v137[3 * (HashValue & v138)];
        v142 = *(v141 + 12);
        if (HashValue != v142)
        {
          goto LABEL_181;
        }

LABEL_172:
        v143 = *v141;
        if (*v141 == -2)
        {
          if (__s1[0] != -2)
          {
            goto LABEL_181;
          }

          goto LABEL_188;
        }

        if (v143 == -1)
        {
          if (__s1[0] != -1)
          {
            goto LABEL_181;
          }

LABEL_188:
          this = v490;
          v127 = v491;
          v70 = v489;
          v126 = *(*(v490 + 3) + 24 * *(v141 + 16) + 16);
          if (**(v490 + 123) <= 4)
          {
            goto LABEL_189;
          }

          goto LABEL_201;
        }

        if (LODWORD(__s1[1]) == *(v141 + 8))
        {
          if (!LODWORD(__s1[1]))
          {
            goto LABEL_188;
          }

          v484 = v139;
          v485 = HashValue;
          v144 = v134;
          v145 = v136;
          v146 = v102;
          v147 = v138;
          v148 = v137;
          v149 = v132;
          v150 = v131;
          v151 = v140;
          v152 = memcmp(__s1[0], v143, LODWORD(__s1[1]));
          v140 = v151;
          v131 = v150;
          v132 = v149;
          v137 = v148;
          v138 = v147;
          v102 = v146;
          v136 = v145;
          v134 = v144;
          v153 = v152;
          v139 = v484;
          HashValue = v485;
          v71 = v487;
          if (!v153)
          {
            goto LABEL_188;
          }
        }

LABEL_181:
        while (v142 || *v141 != -1)
        {
          v154 = HashValue;
          v155 = v134;
          v156 = v136;
          v486 = v137;
          v157 = v131;
          v158 = v140;
          isEqual = llvm::DenseMapInfo<llvm::CachedHashStringRef,void>::isEqual(v141, &v529);
          v134 = v155;
          v160 = isEqual;
          HashValue = v154;
          v137 = v486;
          v71 = v487;
          if (v160 && v156 == 0)
          {
            v136 = v141;
          }

          else
          {
            v136 = v156;
          }

          v161 = v158 + v139;
          v131 = v157;
          ++v139;
          v140 = v161 & v138;
          v141 = &v486[3 * (v161 & v138)];
          v142 = *(v141 + 12);
          if (HIDWORD(__s1[1]) == v142)
          {
            goto LABEL_172;
          }
        }

        if (v136)
        {
          v166 = v136;
        }

        else
        {
          v166 = v141;
        }

        this = v490;
        v127 = v491;
        v165 = *(v490 + 4);
        v70 = v489;
      }

      else
      {
        v165 = 0;
        v166 = 0;
      }

      *&v529 = v166;
      v167 = *(this + 2);
      if (4 * v167 + 4 >= 3 * v165)
      {
        v165 *= 2;
      }

      else if (v165 + ~v167 - *(this + 3) > v165 >> 3)
      {
        *(this + 2) = v167 + 1;
        if (!*(v166 + 12))
        {
          goto LABEL_196;
        }

        goto LABEL_197;
      }

      v179 = HashValue;
      v180 = v134;
      llvm::DenseMap<llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>::grow(this, v165);
      llvm::DenseMapBase<llvm::DenseMap<llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>,llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>::LookupBucketFor<llvm::CachedHashStringRef>(this, __s1, &v529);
      v134 = v180;
      LODWORD(HashValue) = v179;
      v166 = v529;
      ++*(this + 2);
      if (!*(v166 + 12))
      {
LABEL_196:
        if (*v166 == -1)
        {
          goto LABEL_198;
        }
      }

LABEL_197:
      --*(this + 3);
LABEL_198:
      *v166 = *__s1;
      *(v166 + 16) = v512[0];
      v168 = *(this + 8);
      *(v166 + 16) = v168;
      if (v168 >= *(this + 9))
      {
        __s1[0] = v131;
        __s1[1] = __PAIR64__(HashValue, v132);
        v512[0] = v134;
        v181 = *(this + 3);
        if (v181 <= __s1 && v181 + 24 * v168 > __s1)
        {
          v186 = __s1 - v181;
          llvm::SmallVectorBase<unsigned int>::grow_pod(this + 24, v488, v168 + 1, 24);
          v182 = *(this + 3);
          v183 = &v186[v182];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(this + 24, v488, v168 + 1, 24);
          v182 = *(this + 3);
          v183 = __s1;
        }

        v184 = v182 + 24 * *(this + 8);
        v185 = *v183;
        *(v184 + 16) = v183[2];
        *v184 = v185;
        v171 = *(this + 8) + 1;
        *(this + 8) = v171;
        v169 = *(this + 3);
      }

      else
      {
        v169 = *(this + 3);
        v170 = v169 + 24 * v168;
        *v170 = v131;
        *(v170 + 8) = v132;
        *(v170 + 12) = HashValue;
        *(v170 + 16) = v134;
        v171 = *(this + 8) + 1;
        *(this + 8) = v171;
      }

      v126 = *(v169 + 24 * v171 - 8);
      if (**(this + 123) <= 4)
      {
LABEL_189:
        if (v126 > 0x7F)
        {
          goto LABEL_162;
        }

        v162 = (2 * v126) | 1;
        v164 = __dst[1];
        v163 = v521[0];
        if (__dst[1] < v521[0])
        {
          goto LABEL_191;
        }

        goto LABEL_203;
      }

LABEL_201:
      if (2 * v126 > 0x7F)
      {
        v126 = (*(v127[1] + 16) != &mlir::detail::TypeIDResolver<void,void>::id) | (2 * v126);
LABEL_162:
        goto LABEL_163;
      }

      v162 = (2 * ((*(v127[1] + 16) != &mlir::detail::TypeIDResolver<void,void>::id) | (2 * v126))) | 1;
      v164 = __dst[1];
      v163 = v521[0];
      if (__dst[1] < v521[0])
      {
LABEL_191:
        *v164 = v162;
        __dst[1] = v164 + 1;
        goto LABEL_163;
      }

LABEL_203:
      v172 = __dst[0];
      v173 = v164 - __dst[0];
      v174 = v164 - __dst[0] + 1;
      if (v174 < 0)
      {
        goto LABEL_689;
      }

      v175 = v163 - __dst[0];
      if (2 * v175 > v174)
      {
        v174 = 2 * v175;
      }

      if (v175 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v176 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v176 = v174;
      }

      if (v176)
      {
        v177 = operator new(v176);
      }

      else
      {
        v177 = 0;
      }

      v177[v173] = v162;
      v178 = &v177[v173 + 1];
      memcpy(v177, v172, v173);
      __dst[0] = v177;
      __dst[1] = v178;
      v521[0] = &v177[v176];
      if (v172)
      {
        operator delete(v172);
      }

      v71 = v487;
      __dst[1] = v178;
LABEL_163:
      v102 += 8;
      if (v102 == v70)
      {
        goto LABEL_121;
      }
    }
  }

  v187 = __dst[0];
  v188 = __dst[1] - __dst[0];
  v189 = __dst[1] - __dst[0] + 1;
  if (v189 < 0)
  {
    goto LABEL_689;
  }

  v190 = v521[0] - __dst[0];
  if (2 * (v521[0] - __dst[0]) > v189)
  {
    v189 = 2 * v190;
  }

  if (v190 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v191 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v191 = v189;
  }

  if (v191)
  {
    v192 = operator new(v191);
  }

  else
  {
    v192 = 0;
  }

  v192[v188] = v68;
  memcpy(v192, v187, v188);
  __dst[0] = v192;
  __dst[1] = &v192[v188 + 1];
  v521[0] = &v192[v191];
  if (v187)
  {
    operator delete(v187);
  }

  __dst[1] = &v192[v188 + 1];
  v70 = *(this + 28);
  v71 = *(this + 29);
  v490 = this;
  if (v70 != v71)
  {
    goto LABEL_120;
  }

LABEL_240:
  v193 = v521[4];
  if (v521[4])
  {
    v194 = v521[5];
    v195 = v521[4];
    if (v521[5] != v521[4])
    {
      v196 = v521[5];
      do
      {
        v198 = *(v196 - 3);
        v196 -= 24;
        v197 = v198;
        if (v198)
        {
          *(v194 - 2) = v197;
          operator delete(v197);
        }

        v194 = v196;
      }

      while (v196 != v193);
      v195 = v521[4];
    }

    v521[5] = v193;
    operator delete(v195);
  }

  if (v521[1])
  {
    v521[2] = v521[1];
    operator delete(v521[1]);
  }

  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

  memset(v521, 0, sizeof(v521));
  *__dst = 0u;
  v522 = 1;
  *v514 = 0u;
  v515 = 0u;
  *v512 = 0u;
  v513 = 0u;
  *__s1 = 0u;
  v516 = 1;
  v199 = *(this + 26) - *(this + 25);
  if ((v199 >> 3) <= 0x7F)
  {
    v200 = (v199 >> 2) | 1;
    v201 = operator new(1uLL);
    __s1[0] = v201;
    *v201 = v200;
    __s1[1] = v201 + 1;
    v512[0] = v201 + 1;
    v202 = *(this + 32) - *(this + 31);
    v203 = v202 >> 3;
    if ((v202 >> 3) > 0x7F)
    {
      goto LABEL_254;
    }

    goto LABEL_361;
  }

  v202 = *(this + 32) - *(this + 31);
  v203 = v202 >> 3;
  if ((v202 >> 3) <= 0x7F)
  {
LABEL_361:
    v271 = (2 * (v202 >> 3)) | 1;
    v272 = __s1[1];
    if (__s1[1] < v512[0])
    {
      *__s1[1] = v271;
      __s1[1] = v272 + 1;
      v205 = *(this + 25);
      v204 = *(this + 26);
      if (v205 != v204)
      {
        goto LABEL_255;
      }

      goto LABEL_363;
    }

    v370 = __s1[0];
    v371 = __s1[1] - __s1[0];
    v372 = __s1[1] - __s1[0] + 1;
    if (v372 >= 0)
    {
      v373 = v512[0] - __s1[0];
      if (2 * (v512[0] - __s1[0]) > v372)
      {
        v372 = 2 * v373;
      }

      if (v373 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v374 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v374 = v372;
      }

      if (v374)
      {
        v375 = operator new(v374);
      }

      else
      {
        v375 = 0;
      }

      v375[v371] = v271;
      memcpy(v375, v370, v371);
      __s1[0] = v375;
      __s1[1] = &v375[v371 + 1];
      v512[0] = &v375[v374];
      if (v370)
      {
        operator delete(v370);
      }

      __s1[1] = &v375[v371 + 1];
      v205 = *(this + 25);
      v204 = *(this + 26);
      if (v205 != v204)
      {
        goto LABEL_255;
      }

      goto LABEL_363;
    }

LABEL_689:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

LABEL_254:
  v205 = *(this + 25);
  v204 = *(this + 26);
  if (v205 != v204)
  {
LABEL_255:
    v206 = 0;
    v492 = v204;
    while (1)
    {
      v208 = v205;
      v209 = *v205;
      v205 += 8;
      v210 = *(v209 + 16);
      if (v205 != v204)
      {
        while (*(*v205 + 16) == v210)
        {
          v205 += 8;
          if (v205 == v204)
          {
            v205 = v204;
            break;
          }
        }
      }

      v211 = *(v210 + 16);
      if (v211 > 0x7F)
      {
        v214 = v205 - v208;
        v215 = (v205 - v208) >> 3;
        if (v215 > 0x7F)
        {
          goto LABEL_265;
        }
      }

      else
      {
        v212 = (2 * v211) | 1;
        v213 = __s1[1];
        if (__s1[1] >= v512[0])
        {
          v218 = __s1[0];
          v219 = __s1[1] - __s1[0];
          v220 = __s1[1] - __s1[0] + 1;
          if (v220 < 0)
          {
            goto LABEL_689;
          }

          v221 = v512[0] - __s1[0];
          if (2 * (v512[0] - __s1[0]) > v220)
          {
            v220 = 2 * v221;
          }

          if (v221 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v222 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v222 = v220;
          }

          if (v222)
          {
            v223 = operator new(v222);
          }

          else
          {
            v223 = 0;
          }

          v223[v219] = v212;
          memcpy(v223, v218, v219);
          __s1[0] = v223;
          __s1[1] = &v223[v219 + 1];
          v512[0] = &v223[v222];
          if (v218)
          {
            operator delete(v218);
          }

          __s1[1] = &v223[v219 + 1];
          v214 = v205 - v208;
          v215 = (v205 - v208) >> 3;
          if (v215 > 0x7F)
          {
LABEL_265:
            if (v208 != v205)
            {
              goto LABEL_299;
            }

            goto LABEL_256;
          }
        }

        else
        {
          *__s1[1] = v212;
          __s1[1] = v213 + 1;
          v214 = v205 - v208;
          v215 = (v205 - v208) >> 3;
          if (v215 > 0x7F)
          {
            goto LABEL_265;
          }
        }
      }

      v216 = (2 * (v214 >> 3)) | 1;
      v217 = __s1[1];
      if (__s1[1] >= v512[0])
      {
        v224 = __s1[0];
        v225 = __s1[1] - __s1[0];
        v226 = __s1[1] - __s1[0] + 1;
        if (v226 < 0)
        {
          goto LABEL_689;
        }

        v227 = v512[0] - __s1[0];
        if (2 * (v512[0] - __s1[0]) > v226)
        {
          v226 = 2 * v227;
        }

        if (v227 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v228 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v228 = v226;
        }

        if (v228)
        {
          v229 = operator new(v228);
        }

        else
        {
          v229 = 0;
        }

        v229[v225] = v216;
        memcpy(v229, v224, v225);
        __s1[0] = v229;
        __s1[1] = &v229[v225 + 1];
        v512[0] = &v229[v228];
        if (v224)
        {
          operator delete(v224);
        }

        __s1[1] = &v229[v225 + 1];
        if (v208 == v205)
        {
          goto LABEL_256;
        }

LABEL_299:
        while (2)
        {
          v230 = *v208;
          v231 = (**v208 & 0xFFFFFFFFFFFFFFF8);
          v232 = *v231;
          {
          }

          v233 = (v232 + 72);
          v234 = *(v232 + 96);
          if ((v234 & 2) == 0)
          {
            v233 = *v233;
          }

          if ((*(v234 & 0xFFFFFFFFFFFFFFF8))(v233, mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID(void)::id))
          {
            goto LABEL_309;
          }

          v235 = *v231;
          {
          }

          v236 = (v235 + 72);
          v237 = *(v235 + 96);
          if ((v237 & 2) == 0)
          {
            v236 = *v236;
          }

          if ((*(v237 & 0xFFFFFFFFFFFFFFF8))(v236, mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID(void)::id))
          {
LABEL_309:
            DWORD2(v529) = 0;
            LOBYTE(v533) = 0;
            HIDWORD(v533) = 1;
            v531 = 0;
            v532 = 0;
            v530 = 0;
            *&v529 = &unk_1F5AF2388;
            v534 = __dst;
            llvm::raw_ostream::SetBufferAndMode(&v529, 0, 0, 0);
            v500 = v231;
            mlir::Attribute::print(&v500, &v529, 0);
            llvm::raw_ostream::~raw_ostream(&v529);
            v238 = __dst[1];
            if (__dst[1] >= v521[0])
            {
              v240 = __dst[0];
              v241 = __dst[1] - __dst[0];
              v242 = __dst[1] - __dst[0] + 1;
              if (v242 < 0)
              {
                goto LABEL_689;
              }

              v243 = v521[0] - __dst[0];
              if (2 * (v521[0] - __dst[0]) > v242)
              {
                v242 = 2 * v243;
              }

              if (v243 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v244 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v244 = v242;
              }

              if (v244)
              {
                v245 = operator new(v244);
              }

              else
              {
                v245 = 0;
              }

              v245[v241] = 0;
              v239 = &v245[v241 + 1];
              memcpy(v245, v240, v241);
              __dst[0] = v245;
              __dst[1] = v239;
              v521[0] = &v245[v244];
              if (v240)
              {
                operator delete(v240);
              }
            }

            else
            {
              *__dst[1] = 0;
              v239 = v238 + 1;
            }

            v253 = 0;
            __dst[1] = v239;
            goto LABEL_345;
          }

          v246 = *(v490 + 123);
          v247 = *v246;
          v500 = &unk_1F5AF22D8;
          v501 = v247;
          v502 = __dst;
          v503 = v488;
          v504 = v490;
          v505 = v246 + 16;
          v248 = *(v246 + 64);
          if (v248)
          {
            v249 = *(v246 + 56);
            v250 = 8 * v248;
            while (1)
            {
              v251 = *v249;
              LOBYTE(v529) = 0;
              LOBYTE(v530) = 0;
              if ((*(*v251 + 16))(v251, v231, &v529, &v500))
              {
                break;
              }

              ++v249;
              v250 -= 8;
              if (!v250)
              {
                goto LABEL_323;
              }
            }

LABEL_325:
            v253 = 1;
          }

          else
          {
LABEL_323:
            v252 = *(v230[2] + 24);
            if (v252 && ((*(*v252 + 32))(v252, v231, &v500) & 1) != 0)
            {
              goto LABEL_325;
            }

            DWORD2(v529) = 0;
            LOBYTE(v533) = 0;
            HIDWORD(v533) = 1;
            v531 = 0;
            v532 = 0;
            v530 = 0;
            *&v529 = &unk_1F5AF2388;
            v534 = __dst;
            llvm::raw_ostream::SetBufferAndMode(&v529, 0, 0, 0);
            v517[0] = v231;
            mlir::Attribute::print(v517, &v529, 0);
            llvm::raw_ostream::~raw_ostream(&v529);
            v254 = __dst[1];
            if (__dst[1] >= v521[0])
            {
              v256 = __dst[0];
              v257 = __dst[1] - __dst[0];
              v258 = __dst[1] - __dst[0] + 1;
              if (v258 < 0)
              {
                goto LABEL_689;
              }

              v259 = v521[0] - __dst[0];
              if (2 * (v521[0] - __dst[0]) > v258)
              {
                v258 = 2 * v259;
              }

              if (v259 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v260 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v260 = v258;
              }

              if (v260)
              {
                v261 = operator new(v260);
              }

              else
              {
                v261 = 0;
              }

              v261[v257] = 0;
              v255 = &v261[v257 + 1];
              memcpy(v261, v256, v257);
              __dst[0] = v261;
              __dst[1] = v255;
              v521[0] = &v261[v260];
              if (v256)
              {
                operator delete(v256);
              }
            }

            else
            {
              *__dst[1] = 0;
              v255 = v254 + 1;
            }

            v253 = 0;
            __dst[1] = v255;
          }

          v239 = __dst[1];
LABEL_345:
          v207 = v521[7] + v239 - __dst[0];
          v262 = v253 & 1 | (2 * (v207 - v206));
          if ((2 * (v207 - v206)) > 0x7F)
          {
          }

          else
          {
            v263 = (2 * v262) | 1;
            v264 = __s1[1];
            if (__s1[1] >= v512[0])
            {
              v265 = __s1[0];
              v266 = __s1[1] - __s1[0];
              v267 = __s1[1] - __s1[0] + 1;
              if (v267 < 0)
              {
                goto LABEL_689;
              }

              v268 = v512[0] - __s1[0];
              if (2 * (v512[0] - __s1[0]) > v267)
              {
                v267 = 2 * v268;
              }

              if (v268 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v269 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v269 = v267;
              }

              if (v269)
              {
                v270 = operator new(v269);
              }

              else
              {
                v270 = 0;
              }

              v270[v266] = v263;
              memcpy(v270, v265, v266);
              __s1[0] = v270;
              __s1[1] = &v270[v266 + 1];
              v512[0] = &v270[v269];
              if (v265)
              {
                operator delete(v265);
              }

              __s1[1] = &v270[v266 + 1];
            }

            else
            {
              *__s1[1] = v263;
              __s1[1] = v264 + 1;
            }
          }

          v208 += 8;
          v206 = v207;
          if (v208 == v205)
          {
            goto LABEL_257;
          }

          continue;
        }
      }

      *__s1[1] = v216;
      __s1[1] = v217 + 1;
      if (v208 != v205)
      {
        goto LABEL_299;
      }

LABEL_256:
      v207 = v206;
LABEL_257:
      v206 = v207;
      v204 = v492;
      if (v205 == v492)
      {
        goto LABEL_364;
      }
    }
  }

LABEL_363:
  v207 = 0;
LABEL_364:
  v274 = *(v490 + 31);
  v273 = *(v490 + 32);
  if (v274 != v273)
  {
    v493 = *(v490 + 32);
    do
    {
      v276 = v274;
      v277 = *v274;
      v274 += 8;
      v278 = *(v277 + 16);
      if (v274 != v273)
      {
        while (*(*v274 + 16) == v278)
        {
          v274 += 8;
          if (v274 == v273)
          {
            v274 = v273;
            break;
          }
        }
      }

      v279 = *(v278 + 16);
      if (v279 > 0x7F)
      {
        v282 = v274 - v276;
        v283 = (v274 - v276) >> 3;
        if (v283 > 0x7F)
        {
          goto LABEL_375;
        }
      }

      else
      {
        v280 = (2 * v279) | 1;
        v281 = __s1[1];
        if (__s1[1] >= v512[0])
        {
          v286 = __s1[0];
          v287 = __s1[1] - __s1[0];
          v288 = __s1[1] - __s1[0] + 1;
          if (v288 < 0)
          {
            goto LABEL_689;
          }

          v289 = v512[0] - __s1[0];
          if (2 * (v512[0] - __s1[0]) > v288)
          {
            v288 = 2 * v289;
          }

          if (v289 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v290 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v290 = v288;
          }

          if (v290)
          {
            v291 = (2 * v279) | 1;
            v292 = operator new(v290);
            v280 = v291;
            v293 = v292;
          }

          else
          {
            v293 = 0;
          }

          v293[v287] = v280;
          memcpy(v293, v286, v287);
          __s1[0] = v293;
          __s1[1] = &v293[v287 + 1];
          v512[0] = &v293[v290];
          if (v286)
          {
            operator delete(v286);
          }

          __s1[1] = &v293[v287 + 1];
          v282 = v274 - v276;
          v283 = (v274 - v276) >> 3;
          if (v283 > 0x7F)
          {
LABEL_375:
            if (v276 != v274)
            {
              goto LABEL_409;
            }

            goto LABEL_366;
          }
        }

        else
        {
          *__s1[1] = v280;
          __s1[1] = v281 + 1;
          v282 = v274 - v276;
          v283 = (v274 - v276) >> 3;
          if (v283 > 0x7F)
          {
            goto LABEL_375;
          }
        }
      }

      v284 = (2 * (v282 >> 3)) | 1;
      v285 = __s1[1];
      if (__s1[1] >= v512[0])
      {
        v294 = __s1[0];
        v295 = __s1[1] - __s1[0];
        v296 = __s1[1] - __s1[0] + 1;
        if (v296 < 0)
        {
          goto LABEL_689;
        }

        v297 = v512[0] - __s1[0];
        if (2 * (v512[0] - __s1[0]) > v296)
        {
          v296 = 2 * v297;
        }

        if (v297 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v298 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v298 = v296;
        }

        if (v298)
        {
          v299 = v284;
          v300 = operator new(v298);
          LOBYTE(v284) = v299;
          v301 = v300;
        }

        else
        {
          v301 = 0;
        }

        v301[v295] = v284;
        memcpy(v301, v294, v295);
        __s1[0] = v301;
        __s1[1] = &v301[v295 + 1];
        v512[0] = &v301[v298];
        if (v294)
        {
          operator delete(v294);
        }

        __s1[1] = &v301[v295 + 1];
        if (v276 == v274)
        {
          goto LABEL_366;
        }

LABEL_409:
        while (2)
        {
          v302 = *v276;
          v303 = (**v276 & 0xFFFFFFFFFFFFFFF8);
          v304 = *v303;
          {
          }

          v305 = (v304 + 72);
          v306 = *(v304 + 96);
          if ((v306 & 2) == 0)
          {
            v305 = *v305;
          }

          if ((*(v306 & 0xFFFFFFFFFFFFFFF8))(v305, mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID(void)::id))
          {
            goto LABEL_419;
          }

          v307 = *v303;
          {
          }

          v308 = (v307 + 72);
          v309 = *(v307 + 96);
          if ((v309 & 2) == 0)
          {
            v308 = *v308;
          }

          if ((*(v309 & 0xFFFFFFFFFFFFFFF8))(v308, mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID(void)::id))
          {
LABEL_419:
            DWORD2(v529) = 0;
            LOBYTE(v533) = 0;
            HIDWORD(v533) = 1;
            v531 = 0;
            v532 = 0;
            v530 = 0;
            *&v529 = &unk_1F5AF2388;
            v534 = __dst;
            llvm::raw_ostream::SetBufferAndMode(&v529, 0, 0, 0);
            v500 = v303;
            mlir::Type::print(&v500, &v529);
            llvm::raw_ostream::~raw_ostream(&v529);
            v310 = __dst[1];
            if (__dst[1] >= v521[0])
            {
              v312 = __dst[0];
              v313 = __dst[1] - __dst[0];
              v314 = __dst[1] - __dst[0] + 1;
              if (v314 < 0)
              {
                goto LABEL_689;
              }

              v315 = v521[0] - __dst[0];
              if (2 * (v521[0] - __dst[0]) > v314)
              {
                v314 = 2 * v315;
              }

              if (v315 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v316 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v316 = v314;
              }

              if (v316)
              {
                v317 = operator new(v316);
              }

              else
              {
                v317 = 0;
              }

              v317[v313] = 0;
              v311 = &v317[v313 + 1];
              memcpy(v317, v312, v313);
              __dst[0] = v317;
              __dst[1] = v311;
              v521[0] = &v317[v316];
              if (v312)
              {
                operator delete(v312);
              }
            }

            else
            {
              *__dst[1] = 0;
              v311 = v310 + 1;
            }

            v325 = 0;
            __dst[1] = v311;
            goto LABEL_455;
          }

          v318 = *(v490 + 123);
          v319 = *v318;
          v500 = &unk_1F5AF22D8;
          v501 = v319;
          v502 = __dst;
          v503 = v488;
          v504 = v490;
          v505 = v318 + 16;
          v320 = *(v318 + 128);
          if (v320)
          {
            v321 = *(v318 + 120);
            v322 = 8 * v320;
            while (1)
            {
              v323 = *v321;
              LOBYTE(v529) = 0;
              LOBYTE(v530) = 0;
              if ((*(*v323 + 16))(v323, v303, &v529, &v500))
              {
                break;
              }

              ++v321;
              v322 -= 8;
              if (!v322)
              {
                goto LABEL_433;
              }
            }

LABEL_435:
            v325 = 1;
          }

          else
          {
LABEL_433:
            v324 = *(v302[2] + 24);
            if (v324 && ((*(*v324 + 40))(v324, v303, &v500) & 1) != 0)
            {
              goto LABEL_435;
            }

            DWORD2(v529) = 0;
            LOBYTE(v533) = 0;
            HIDWORD(v533) = 1;
            v531 = 0;
            v532 = 0;
            v530 = 0;
            *&v529 = &unk_1F5AF2388;
            v534 = __dst;
            llvm::raw_ostream::SetBufferAndMode(&v529, 0, 0, 0);
            v517[0] = v303;
            mlir::Type::print(v517, &v529);
            llvm::raw_ostream::~raw_ostream(&v529);
            v326 = __dst[1];
            if (__dst[1] >= v521[0])
            {
              v328 = __dst[0];
              v329 = __dst[1] - __dst[0];
              v330 = __dst[1] - __dst[0] + 1;
              if (v330 < 0)
              {
                goto LABEL_689;
              }

              v331 = v521[0] - __dst[0];
              if (2 * (v521[0] - __dst[0]) > v330)
              {
                v330 = 2 * v331;
              }

              if (v331 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v332 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v332 = v330;
              }

              if (v332)
              {
                v333 = operator new(v332);
              }

              else
              {
                v333 = 0;
              }

              v333[v329] = 0;
              v327 = &v333[v329 + 1];
              memcpy(v333, v328, v329);
              __dst[0] = v333;
              __dst[1] = v327;
              v521[0] = &v333[v332];
              if (v328)
              {
                operator delete(v328);
              }
            }

            else
            {
              *__dst[1] = 0;
              v327 = v326 + 1;
            }

            v325 = 0;
            __dst[1] = v327;
          }

          v311 = __dst[1];
LABEL_455:
          v275 = v521[7] + v311 - __dst[0];
          v334 = v325 & 1 | (2 * (v275 - v207));
          if ((2 * (v275 - v207)) > 0x7F)
          {
          }

          else
          {
            v335 = (2 * v334) | 1;
            v336 = __s1[1];
            if (__s1[1] >= v512[0])
            {
              v337 = __s1[0];
              v338 = __s1[1] - __s1[0];
              v339 = __s1[1] - __s1[0] + 1;
              if (v339 < 0)
              {
                goto LABEL_689;
              }

              v340 = v512[0] - __s1[0];
              if (2 * (v512[0] - __s1[0]) > v339)
              {
                v339 = 2 * v340;
              }

              if (v340 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v341 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v341 = v339;
              }

              if (v341)
              {
                v342 = operator new(v341);
              }

              else
              {
                v342 = 0;
              }

              v342[v338] = v335;
              memcpy(v342, v337, v338);
              __s1[0] = v342;
              __s1[1] = &v342[v338 + 1];
              v512[0] = &v342[v341];
              if (v337)
              {
                operator delete(v337);
              }

              __s1[1] = &v342[v338 + 1];
            }

            else
            {
              *__s1[1] = v335;
              __s1[1] = v336 + 1;
            }
          }

          v276 += 8;
          v207 = v275;
          if (v276 == v274)
          {
            goto LABEL_367;
          }

          continue;
        }
      }

      *__s1[1] = v284;
      __s1[1] = v285 + 1;
      if (v276 != v274)
      {
        goto LABEL_409;
      }

LABEL_366:
      v275 = v207;
LABEL_367:
      v207 = v275;
      v273 = v493;
    }

    while (v274 != v493);
  }

  v343 = v514[0];
  v344 = v483;
  if (v514[0])
  {
    v345 = v514[1];
    v346 = v514[0];
    if (v514[1] != v514[0])
    {
      v347 = v514[1];
      do
      {
        v349 = *(v347 - 3);
        v347 -= 24;
        v348 = v349;
        if (v349)
        {
          *(v345 - 2) = v348;
          operator delete(v348);
        }

        v345 = v347;
      }

      while (v347 != v343);
      v346 = v514[0];
    }

    v514[1] = v343;
    operator delete(v346);
  }

  if (v512[1])
  {
    *&v513 = v512[1];
    operator delete(v512[1]);
  }

  if (__s1[0])
  {
    __s1[1] = __s1[0];
    operator delete(__s1[0]);
  }

  v350 = v521[4];
  v351 = v490;
  if (v521[4])
  {
    v352 = v521[5];
    v353 = v521[4];
    if (v521[5] != v521[4])
    {
      v354 = v521[5];
      do
      {
        v356 = *(v354 - 3);
        v354 -= 24;
        v355 = v356;
        if (v356)
        {
          *(v352 - 2) = v355;
          operator delete(v355);
        }

        v352 = v354;
      }

      while (v354 != v350);
      v353 = v521[4];
    }

    v521[5] = v350;
    operator delete(v353);
  }

  if (v521[1])
  {
    v521[2] = v521[1];
    operator delete(v521[1]);
  }

  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

  memset(&v521[1], 0, 56);
  v522 = 1;
  v357 = operator new(1uLL);
  __dst[0] = v357;
  *v357 = 5;
  __dst[1] = v357 + 1;
  v521[0] = v357 + 1;
  if (v358)
  {
  }

  v359 = v521[4];
  if (v521[4])
  {
    v360 = v521[5];
    v361 = v521[4];
    if (v521[5] != v521[4])
    {
      v362 = v521[5];
      do
      {
        v364 = *(v362 - 3);
        v362 -= 24;
        v363 = v364;
        if (v364)
        {
          *(v360 - 2) = v363;
          operator delete(v363);
        }

        v360 = v362;
      }

      while (v362 != v359);
      v361 = v521[4];
    }

    v521[5] = v359;
    operator delete(v361);
  }

  if (v521[1])
  {
    v521[2] = v521[1];
    operator delete(v521[1]);
  }

  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

  if (!v358)
  {
    v37 = 0;
    v369 = v497[0];
    if (!v497[0])
    {
      goto LABEL_658;
    }

    goto LABEL_651;
  }

  memset(v521, 0, sizeof(v521));
  *__dst = 0u;
  v522 = 1;
  *v514 = 0u;
  v515 = 0u;
  *v512 = 0u;
  v513 = 0u;
  *__s1 = 0u;
  v516 = 1;
  *&v529 = &v530;
  *(&v529 + 1) = 0x100000000;
  v507 = __dst;
  v508 = &v529;
  v509 = &v510;
  v510 = 0;
  v506[0] = __s1;
  v506[1] = &v529;
  v506[2] = v490;
  v365 = *(v490 + 123);
  v366 = *(v365 + 8);
  v500 = &unk_1F5AF2418;
  v501 = __dst;
  v502 = v490;
  v504 = &v507;
  LOBYTE(v505) = v366;
  v367 = *(v365 + 192);
  if (v367 > 0x7F)
  {
    v365 = *(v490 + 123);
    v367 = *(v365 + 192);
    if (!v367)
    {
      goto LABEL_531;
    }
  }

  else
  {
    v368 = operator new(1uLL);
    __s1[0] = v368;
    *v368 = (2 * v367) | 1;
    __s1[1] = v368 + 1;
    v512[0] = v368 + 1;
    if (!v367)
    {
      goto LABEL_531;
    }
  }

  v376 = *(v365 + 184);
  v377 = 8 * v367;
  do
  {
    DWORD2(v529) = 0;
    (*(**v376 + 16))(*v376, v483, &v500);
    v378 = *v376++;
    v379 = (v378 + 8);
    v380 = *(v378 + 8);
    v381 = *(v378 + 31);
    if (v381 >= 0)
    {
      v382 = v379;
    }

    else
    {
      v382 = v380;
    }

    v383 = *(v379 + 1);
    if (v381 >= 0)
    {
      v384 = v381;
    }

    else
    {
      v384 = v383;
    }

    v377 -= 8;
  }

  while (v377);
LABEL_531:
  v386 = *(v490 + 48);
  if (v386)
  {
    v387 = *(v490 + 23);
    v388 = v387 + 24 * v386;
    do
    {
      v389 = *(v387 + 16);
      v390 = *(v389 + 32);
      if (v390)
      {
        DWORD2(v529) = 0;
        (*(*v390 + 56))(v390, v344, v389 + 40, &v500);
        v391 = *(v389 + 112);
        if (v391)
        {
          v392 = (*(v389 + 104) + 8);
          v393 = 24 * v391;
          do
          {
            if (*(v392[1] + 28) == 1)
            {
              v395 = *v392;
              v396 = v508;
              v397 = v507[1] + v507[9] - *v507;
              v398 = v509;
              v399 = v397 - *v509;
              v400 = *(v508 + 2);
              if (v400 < *(v508 + 3))
              {
                v394 = *v508 + 32 * v400;
                *v394 = *(v392 - 1);
                *(v394 + 8) = v395;
                *(v394 + 16) = 0;
                *(v394 + 24) = v399;
                *(v396 + 8) = v400 + 1;
              }

              else
              {
                v517[0] = *(v392 - 1);
                v517[1] = v395;
                v518 = 0;
                v519 = v399;
                if (*v508 <= v517 && *v508 + 32 * v400 > v517)
                {
                  v405 = v517 - *v508;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(v508, v508 + 1, v400 + 1, 32);
                  v401 = *v396;
                  v402 = &v405[*v396];
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(v508, v508 + 1, v400 + 1, 32);
                  v401 = *v396;
                  v402 = v517;
                }

                v403 = (v401 + 32 * *(v396 + 8));
                v404 = *(v402 + 1);
                *v403 = *v402;
                v403[1] = v404;
                ++*(v396 + 8);
                v398 = v509;
              }

              *v398 = v397;
            }

            v392 += 3;
            v393 -= 24;
          }

          while (v393);
        }

        v351 = v490;
        v344 = v483;
        if (DWORD2(v529))
        {
        }
      }

      v387 += 24;
    }

    while (v387 != v388);
  }

  if (__s1[1] + *(&v515 + 1) != __s1[0])
  {
  }

  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  if (v529 != &v530)
  {
    free(v529);
  }

  v406 = v514[0];
  if (v514[0])
  {
    v407 = v514[1];
    v408 = v514[0];
    if (v514[1] != v514[0])
    {
      v409 = v514[1];
      do
      {
        v411 = *(v409 - 3);
        v409 -= 24;
        v410 = v411;
        if (v411)
        {
          *(v407 - 2) = v410;
          operator delete(v410);
        }

        v407 = v409;
      }

      while (v409 != v406);
      v408 = v514[0];
    }

    v514[1] = v406;
    operator delete(v408);
  }

  if (v512[1])
  {
    *&v513 = v512[1];
    operator delete(v512[1]);
  }

  if (__s1[0])
  {
    __s1[1] = __s1[0];
    operator delete(__s1[0]);
  }

  v412 = v521[4];
  if (v521[4])
  {
    v413 = v521[5];
    v414 = v521[4];
    if (v521[5] != v521[4])
    {
      v415 = v521[5];
      do
      {
        v417 = *(v415 - 3);
        v415 -= 24;
        v416 = v417;
        if (v417)
        {
          *(v413 - 2) = v416;
          operator delete(v416);
        }

        v413 = v415;
      }

      while (v415 != v412);
      v414 = v521[4];
    }

    v521[5] = v412;
    operator delete(v414);
  }

  if (v521[1])
  {
    v521[2] = v521[1];
    operator delete(v521[1]);
  }

  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

  memset(v521, 0, sizeof(v521));
  *__dst = 0u;
  v522 = 1;
  v418 = *(v351 + 8);
  if (v418 > 0x7F)
  {
    v418 = *(v351 + 8);
    if (!v418)
    {
      goto LABEL_614;
    }
  }

  else
  {
    v419 = operator new(1uLL);
    __dst[0] = v419;
    *v419 = (2 * v418) | 1;
    __dst[1] = v419 + 1;
    v521[0] = v419 + 1;
    if (!v418)
    {
      goto LABEL_614;
    }
  }

  v420 = *(v490 + 3) - 16;
  v421 = 24 * v418;
  do
  {
    while (1)
    {
      v422 = (*(v420 + v421) + 1);
      v421 -= 24;
      if (v422 <= 0x7F)
      {
        break;
      }

      if (!v421)
      {
        goto LABEL_598;
      }
    }

    v423 = (2 * v422) | 1;
    v424 = __dst[1];
    if (__dst[1] >= v521[0])
    {
      v426 = __dst[0];
      v427 = __dst[1] - __dst[0];
      v428 = __dst[1] - __dst[0] + 1;
      if (v428 < 0)
      {
        goto LABEL_689;
      }

      v429 = v521[0] - __dst[0];
      if (2 * (v521[0] - __dst[0]) > v428)
      {
        v428 = 2 * v429;
      }

      if (v429 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v430 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v430 = v428;
      }

      if (v430)
      {
        v431 = operator new(v430);
      }

      else
      {
        v431 = 0;
      }

      v431[v427] = v423;
      v425 = &v431[v427 + 1];
      memcpy(v431, v426, v427);
      __dst[0] = v431;
      __dst[1] = v425;
      v521[0] = &v431[v430];
      if (v426)
      {
        operator delete(v426);
      }
    }

    else
    {
      *__dst[1] = v423;
      v425 = v424 + 1;
    }

    __dst[1] = v425;
  }

  while (v421);
LABEL_598:
  v432 = *(v490 + 8);
  if (v432)
  {
    v433 = *(v490 + 3);
    v434 = v433 + 24 * v432;
    v435 = __dst[1];
    do
    {
      std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(__dst, v435, *v433, (*v433 + *(v433 + 8)), *(v433 + 8));
      v436 = __dst[1];
      if (__dst[1] < v521[0])
      {
        *__dst[1] = 0;
        v435 = v436 + 1;
      }

      else
      {
        v437 = __dst[0];
        v438 = __dst[1] - __dst[0];
        v439 = __dst[1] - __dst[0] + 1;
        if (v439 < 0)
        {
          goto LABEL_689;
        }

        v440 = v521[0] - __dst[0];
        if (2 * (v521[0] - __dst[0]) > v439)
        {
          v439 = 2 * v440;
        }

        if (v440 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v441 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v441 = v439;
        }

        if (v441)
        {
          v442 = operator new(v441);
        }

        else
        {
          v442 = 0;
        }

        v442[v438] = 0;
        v435 = &v442[v438 + 1];
        memcpy(v442, v437, v438);
        __dst[0] = v442;
        __dst[1] = v435;
        v521[0] = &v442[v441];
        if (v437)
        {
          operator delete(v437);
        }
      }

      __dst[1] = v435;
      v433 += 24;
    }

    while (v433 != v434);
  }

LABEL_614:
  v443 = v521[4];
  if (v521[4])
  {
    v444 = v521[5];
    v445 = v521[4];
    if (v521[5] != v521[4])
    {
      v446 = v521[5];
      do
      {
        v448 = *(v446 - 3);
        v446 -= 24;
        v447 = v448;
        if (v448)
        {
          *(v444 - 2) = v447;
          operator delete(v447);
        }

        v444 = v446;
      }

      while (v446 != v443);
      v445 = v521[4];
    }

    v521[5] = v443;
    operator delete(v445);
  }

  if (v521[1])
  {
    v521[2] = v521[1];
    operator delete(v521[1]);
  }

  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

  if (**(v490 + 123) < 5)
  {
    if (*(v490 + 124) != *(v490 + 125))
    {
      __s1[0] = "unexpected properties emitted incompatible with bytecode <5";
      LOWORD(v513) = 259;
      mlir::Operation::emitError(v483, __s1, __dst);
      v37 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__dst);
      if (__dst[0])
      {
        mlir::InFlightDiagnostic::report(__dst);
      }

      if (v528 == 1)
      {
        if (v527 != &v528)
        {
          free(v527);
        }

        v453 = __p;
        if (__p)
        {
          v454 = v526;
          v455 = __p;
          if (v526 != __p)
          {
            do
            {
              v454 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v454 - 1);
            }

            while (v454 != v453);
            v455 = __p;
          }

          v526 = v453;
          operator delete(v455);
        }

        v41 = v523;
        if (!v523)
        {
          goto LABEL_648;
        }

        v456 = v524;
        v43 = v523;
        if (v524 == v523)
        {
          goto LABEL_647;
        }

        do
        {
          v458 = *--v456;
          v457 = v458;
          *v456 = 0;
          if (v458)
          {
            operator delete[](v457);
          }
        }

        while (v456 != v41);
        goto LABEL_646;
      }

LABEL_650:
      v369 = v497[0];
      if (!v497[0])
      {
        goto LABEL_658;
      }

      goto LABEL_651;
    }
  }

  else
  {
    memset(v521, 0, sizeof(v521));
    *__dst = 0u;
    v522 = 1;
    v449 = *(v490 + 125);
    v450 = *(v490 + 124);
    v451 = 0xAAAAAAAAAAAAAAABLL * (v449 - v450);
    if (v451 > 0x7F)
    {
      v450 = *(v490 + 124);
      v449 = *(v490 + 125);
    }

    else
    {
      v452 = operator new(1uLL);
      __dst[0] = v452;
      *v452 = (86 * (v449 - v450)) | 1;
      __dst[1] = v452 + 1;
      v521[0] = v452 + 1;
    }

    while (v450 != v449)
    {
      v465 = v450[1];
      if (*v450 != v465)
      {
        std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(__dst, __dst[1], *v450, v465, v465 - *v450);
      }

      v450 += 3;
    }

    v466 = v521[4];
    if (v521[4])
    {
      v467 = v521[5];
      v468 = v521[4];
      if (v521[5] != v521[4])
      {
        v469 = v521[5];
        do
        {
          v471 = *(v469 - 3);
          v469 -= 24;
          v470 = v471;
          if (v471)
          {
            *(v467 - 2) = v470;
            operator delete(v470);
          }

          v467 = v469;
        }

        while (v469 != v466);
        v468 = v521[4];
      }

      v521[5] = v466;
      operator delete(v468);
    }

    if (v521[1])
    {
      v521[2] = v521[1];
      operator delete(v521[1]);
    }

    if (__dst[0])
    {
      __dst[1] = __dst[0];
      operator delete(__dst[0]);
    }
  }

  v472 = v495[1];
  v473 = v496;
  while (v472 != v473)
  {
    v474 = *v472;
    v475 = *(v472 + 1);
    v472 += 16;
    llvm::raw_ostream::write(v482, v474, v475);
  }

  llvm::raw_ostream::write(v482, v494[0], v494[1] - v494[0]);
  v37 = 1;
  v369 = v497[0];
  if (v497[0])
  {
LABEL_651:
    v459 = v497[1];
    v460 = v369;
    if (v497[1] != v369)
    {
      v461 = v497[1];
      do
      {
        v463 = *(v461 - 3);
        v461 -= 24;
        v462 = v463;
        if (v463)
        {
          *(v459 - 2) = v462;
          operator delete(v462);
        }

        v459 = v461;
      }

      while (v461 != v369);
      v460 = v497[0];
    }

    v497[1] = v369;
    operator delete(v460);
  }

LABEL_658:
  if (v495[1])
  {
    *&v496 = v495[1];
    operator delete(v495[1]);
  }

  if (v494[0])
  {
    v494[1] = v494[0];
    operator delete(v494[0]);
  }

  return v37;
}