void anonymous namespace::EncodingReader::emitError<llvm::Twine>(uint64_t a1, uint64_t a2, const char **a3)
{
  v23 = *MEMORY[0x1E69E9840];
  mlir::emitError(a2, &v13);
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
            MEMORY[0x1AC55A040](v11, 0x1000C8077774924);
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

void anonymous namespace::EncodingReader::emitError<char const(&)[10],llvm::StringRef &,char const(&)[44]>(uint64_t a1, uint64_t a2, const char **a3)
{
  v23 = *MEMORY[0x1E69E9840];
  mlir::emitError(a2, &v13);
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
            MEMORY[0x1AC55A040](v11, 0x1000C8077774924);
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

void anonymous namespace::EncodingReader::emitError<char const(&)[33],llvm::StringRef &,char const(&)[19],llvm::StringRef>(uint64_t a1, uint64_t a2, const char **a3, const char **a4)
{
  v25 = *MEMORY[0x1E69E9840];
  mlir::emitError(a2, &v15);
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
            MEMORY[0x1AC55A040](v13, 0x1000C8077774924);
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

uint64_t mlir::Diagnostic::append<char const(&)[33],llvm::StringRef &,char const(&)[19],llvm::StringRef>(uint64_t a1, char *__s, const char **a3, char *a4, const char **a5)
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

uint64_t mlir::Diagnostic::append<char const(&)[19],llvm::StringRef>(uint64_t a1, char *__s, const char **a3)
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

uint64_t anonymous namespace::AttrTypeReader::resolveType(_anonymous_namespace_::AttrTypeReader *this, unint64_t a2)
{
  v87 = *MEMORY[0x1E69E9840];
  if (*(this + 22) <= a2)
  {
    mlir::emitError(*(this + 17), &v75);
    if (v75)
    {
      LODWORD(v68) = 3;
      v69 = "invalid ";
      *&v70 = 8;
      v19 = &v68;
      v20 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v68 && v77 + 24 * v78 > &v68)
        {
          v57 = &v68 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v20 = v77;
          v19 = (v77 + v57);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v19 = &v68;
          v20 = v77;
        }
      }

      v21 = &v20[24 * v78];
      v22 = *v19;
      *(v21 + 2) = v19[2];
      *v21 = v22;
      ++v78;
      if (v75)
      {
        LOWORD(v71) = 261;
        v68 = "Type";
        v69 = 4;
        mlir::Diagnostic::operator<<(&v76, &v68);
        if (v75)
        {
          LODWORD(v68) = 3;
          v69 = " index: ";
          *&v70 = 8;
          v23 = &v68;
          v24 = v77;
          if (v78 >= v79)
          {
            if (v77 <= &v68 && v77 + 24 * v78 > &v68)
            {
              v58 = &v68 - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v24 = v77;
              v23 = (v77 + v58);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v23 = &v68;
              v24 = v77;
            }
          }

          v25 = &v24[24 * v78];
          v26 = *v23;
          *(v25 + 2) = v23[2];
          *v25 = v26;
          v27 = ++v78;
          if (v75)
          {
            LODWORD(v68) = 5;
            v69 = a2;
            v28 = &v68;
            v29 = v77;
            if (v27 >= v79)
            {
              if (v77 <= &v68 && v77 + 24 * v27 > &v68)
              {
                v59 = &v68 - v77;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v27 + 1, 24);
                v29 = v77;
                v28 = (v77 + v59);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v27 + 1, 24);
                v28 = &v68;
                v29 = v77;
              }
            }

            v30 = &v29[24 * v78];
            v31 = *v28;
            *(v30 + 2) = v28[2];
            *v30 = v31;
            ++v78;
            if (v75)
            {
              mlir::InFlightDiagnostic::report(&v75);
            }
          }
        }
      }
    }

    if (v86 != 1)
    {
      return 0;
    }

    if (v85 != &v86)
    {
      free(v85);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v84;
      v34 = __p;
      if (v84 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v84 = v32;
      operator delete(v34);
    }

    v35 = v81;
    if (!v81)
    {
      goto LABEL_78;
    }

    v36 = v82;
    v37 = v81;
    if (v82 == v81)
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
        MEMORY[0x1AC55A040](v38, 0x1000C8077774924);
      }
    }

    while (v36 != v35);
    goto LABEL_76;
  }

  v3 = *(this + 10) + 40 * a2;
  v4 = *v3;
  if (!*v3)
  {
    v6 = (this + 136);
    v5 = *(this + 17);
    v65 = *(v3 + 24);
    v66 = v65;
    v67 = v5;
    if (*(v3 + 16) != 1)
    {
      v68 = "Type";
      v69 = 4;
      v60 = 0;
      v61 = 0;
      {
        v74 = 0;
        Context = mlir::Attribute::getContext(v6);
        mlir::parseType(v60, v61, Context, &v74, 1);
      }

      return 0;
    }

    v7 = *(this + 2);
    v8 = *(this + 18);
    v68 = &unk_1F19F9CC8;
    v69 = this;
    v70 = *this;
    v71 = v7;
    v72 = &v65;
    v73 = v8;
    v10 = *(v3 + 8);
    v11 = mlir::Attribute::getContext((this + 136));
    {
      return 0;
    }

    v12 = *(this + 19);
    v13 = *(v12 + 120);
    if (v13)
    {
      v14 = *(v12 + 112);
      v15 = 8 * v13;
      while (((*(**v14 + 16))(*v14, &v68, *(*(v3 + 8) + 24), *(*(v3 + 8) + 32), v3) & 1) != 0)
      {
        if (*v3)
        {
          goto LABEL_59;
        }

        v65 = *(v3 + 24);
        v66 = v65;
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
    v16 = *(v3 + 8);
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (*(*v17 + 24))(v17, &v68);
      *v3 = v18;
      if (!v18)
      {
        return 0;
      }
    }

    else
    {
      v41 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v75);
      if (v75)
      {
        mlir::InFlightDiagnostic::report(&v75);
      }

      if (v86 == 1)
      {
        if (v85 != &v86)
        {
          free(v85);
        }

        v42 = __p;
        if (__p)
        {
          v43 = v84;
          v44 = __p;
          if (v84 != __p)
          {
            do
            {
              v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
            }

            while (v43 != v42);
            v44 = __p;
          }

          v84 = v42;
          operator delete(v44);
        }

        v45 = v81;
        if (v81)
        {
          v46 = v82;
          v47 = v81;
          if (v82 != v81)
          {
            do
            {
              v49 = *--v46;
              v48 = v49;
              *v46 = 0;
              if (v49)
              {
                MEMORY[0x1AC55A040](v48, 0x1000C8077774924);
              }
            }

            while (v46 != v45);
            v47 = v81;
          }

          v82 = v45;
          operator delete(v47);
        }

        if (v77 != v80)
        {
          free(v77);
        }
      }

      if (!v41)
      {
        return 0;
      }
    }

LABEL_59:
    if (v66 == v65 + *(&v65 + 1))
    {
      return *v3;
    }

    v64 = 1283;
    v60 = "unexpected trailing bytes after ";
    v62 = "Type";
    v63 = 4;
    v68 = &v60;
    *&v70 = " entry";
    LOWORD(v71) = 770;
    if (v75)
    {
      mlir::InFlightDiagnostic::report(&v75);
    }

    if (v86 != 1)
    {
      return 0;
    }

    if (v85 != &v86)
    {
      free(v85);
    }

    v50 = __p;
    if (__p)
    {
      v51 = v84;
      v52 = __p;
      if (v84 != __p)
      {
        do
        {
          v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
        }

        while (v51 != v50);
        v52 = __p;
      }

      v84 = v50;
      operator delete(v52);
    }

    v35 = v81;
    if (!v81)
    {
LABEL_78:
      if (v77 != v80)
      {
        free(v77);
      }

      return 0;
    }

    v53 = v82;
    v37 = v81;
    if (v82 == v81)
    {
LABEL_77:
      v82 = v35;
      operator delete(v37);
      goto LABEL_78;
    }

    do
    {
      v55 = *--v53;
      v54 = v55;
      *v53 = 0;
      if (v55)
      {
        MEMORY[0x1AC55A040](v54, 0x1000C8077774924);
      }
    }

    while (v53 != v35);
LABEL_76:
    v37 = v81;
    goto LABEL_77;
  }

  return v4;
}

BOOL anonymous namespace::EncodingReader::parseByte<BOOL>(void *a1, BOOL *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = a1[2];
  if (v2 == (*a1 + a1[1]))
  {
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
    if (v13[0])
    {
      mlir::InFlightDiagnostic::report(v13);
    }

    if (v21 == 1)
    {
      if (v20 != &v21)
      {
        free(v20);
      }

      v4 = __p;
      if (__p)
      {
        v5 = v19;
        v6 = __p;
        if (v19 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v19 = v4;
        operator delete(v6);
      }

      v7 = v16;
      if (v16)
      {
        v8 = v17;
        v9 = v16;
        if (v17 != v16)
        {
          do
          {
            v11 = *--v8;
            v10 = v11;
            *v8 = 0;
            if (v11)
            {
              MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
            }
          }

          while (v8 != v7);
          v9 = v16;
        }

        v17 = v7;
        operator delete(v9);
      }

      if (v14 != &v15)
      {
        free(v14);
      }
    }
  }

  else
  {
    a1[2] = v2 + 1;
    *a2 = *v2 != 0;
    return 1;
  }

  return v3;
}

BOOL anonymous namespace::EncodingReader::parseByte<mlir::AsmResourceEntryKind>(void *a1, _DWORD *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = a1[2];
  if (v2 == (*a1 + a1[1]))
  {
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
    if (v13[0])
    {
      mlir::InFlightDiagnostic::report(v13);
    }

    if (v21 == 1)
    {
      if (v20 != &v21)
      {
        free(v20);
      }

      v4 = __p;
      if (__p)
      {
        v5 = v19;
        v6 = __p;
        if (v19 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v19 = v4;
        operator delete(v6);
      }

      v7 = v16;
      if (v16)
      {
        v8 = v17;
        v9 = v16;
        if (v17 != v16)
        {
          do
          {
            v11 = *--v8;
            v10 = v11;
            *v8 = 0;
            if (v11)
            {
              MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
            }
          }

          while (v8 != v7);
          v9 = v16;
        }

        v17 = v7;
        operator delete(v9);
      }

      if (v14 != &v15)
      {
        free(v14);
      }
    }
  }

  else
  {
    a1[2] = v2 + 1;
    *a2 = *v2;
    return 1;
  }

  return v3;
}

void anonymous namespace::EncodingReader::emitError<char const(&)[46],llvm::StringRef &,char const(&)[2]>(uint64_t a1, uint64_t a2, const char **a3)
{
  v23 = *MEMORY[0x1E69E9840];
  mlir::emitError(a2, &v13);
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
            MEMORY[0x1AC55A040](v11, 0x1000C8077774924);
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

double anonymous namespace::ParsedResourceEntry::parseAsString@<D0>(_anonymous_namespace_::ParsedResourceEntry *this@<X0>, uint64_t a2@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  if (*(this + 6) == 2)
  {
    __src = 0uLL;
    v4 = *(this + 4);
    v5 = *(this + 5);
    *&__dst = 0;
    {
      if (__src)
      {
        v7 = *(&__src + 1);
        if (*(&__src + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
        {
          std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
        }

        if (*(&__src + 1) >= 0x17uLL)
        {
          operator new();
        }

        HIBYTE(v33) = BYTE8(__src);
        if (*(&__src + 1))
        {
          memmove(&__dst, __src, *(&__src + 1));
        }

        *(&__dst + v7) = 0;
      }

      else
      {
        __dst = 0uLL;
        v33 = 0;
      }

      *&v6 = __dst;
      *a2 = __dst;
      *(a2 + 16) = v33;
      *(a2 + 24) = 1;
    }

    else
    {
      *a2 = 0;
      *(a2 + 24) = 0;
    }

    return *&v6;
  }

  mlir::emitError(*(*(this + 4) + 24), &__dst);
  if (__dst)
  {
    LODWORD(__src) = 3;
    *(&__src + 1) = "expected a string resource entry, but found a ";
    v30 = 46;
    p_src = &__src;
    v9 = v34;
    if (v35 >= v36)
    {
      if (v34 <= &__src && v34 + 24 * v35 > &__src)
      {
        v26 = &__src - v34;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
        v9 = v34;
        p_src = (v34 + v26);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
        p_src = &__src;
        v9 = v34;
      }
    }

    v10 = &v9[24 * v35];
    v11 = *p_src;
    *(v10 + 2) = *(p_src + 2);
    *v10 = v11;
    ++v35;
  }

  v12 = mlir::toString(*(this + 6));
  if (!__dst || (v31 = 261, *&__src = v12, *(&__src + 1) = v13, mlir::Diagnostic::operator<<(&__dst + 8, &__src), !__dst))
  {
    *a2 = 0;
    *(a2 + 24) = 0;
    if (v43 != 1)
    {
      return *&v6;
    }

    goto LABEL_21;
  }

  LODWORD(__src) = 3;
  *(&__src + 1) = " entry instead";
  v30 = 14;
  v14 = &__src;
  v15 = v34;
  if (v35 >= v36)
  {
    if (v34 <= &__src && v34 + 24 * v35 > &__src)
    {
      v27 = &__src - v34;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
      v15 = v34;
      v14 = (v34 + v27);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
      v14 = &__src;
      v15 = v34;
    }
  }

  v16 = &v15[24 * v35];
  v6 = *v14;
  *(v16 + 2) = *(v14 + 2);
  *v16 = v6;
  ++v35;
  v17 = __dst;
  *a2 = 0;
  *(a2 + 24) = 0;
  if (v17)
  {
    mlir::InFlightDiagnostic::report(&__dst);
  }

  if (v43 == 1)
  {
LABEL_21:
    if (v42 != &v43)
    {
      free(v42);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v41;
      v20 = __p;
      if (v41 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v41 = v18;
      operator delete(v20);
    }

    v21 = v38;
    if (v38)
    {
      v22 = v39;
      v23 = v38;
      if (v39 != v38)
      {
        do
        {
          v25 = *--v22;
          v24 = v25;
          *v22 = 0;
          if (v25)
          {
            MEMORY[0x1AC55A040](v24, 0x1000C8077774924);
          }
        }

        while (v22 != v21);
        v23 = v38;
      }

      v39 = v21;
      operator delete(v23);
    }

    if (v34 != v37)
    {
      free(v34);
    }
  }

  return *&v6;
}

void anonymous namespace::ParsedResourceEntry::parseAsBlob(uint64_t a1@<X0>, void (*a2)(void **__return_ptr, uint64_t, void *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    mlir::emitError(*(*(a1 + 32) + 24), __dst);
    if (__dst[0])
    {
      v62.n128_u32[0] = 3;
      v62.n128_u64[1] = "expected a blob resource entry, but found a ";
      v63 = 44;
      v6 = &v62;
      v7 = v52.n128_u64[0];
      if (v52.n128_u32[2] >= v52.n128_u32[3])
      {
        if (v52.n128_u64[0] <= &v62 && v52.n128_u64[0] + 24 * v52.n128_u32[2] > &v62)
        {
          v42 = &v62 - v52.n128_u64[0];
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, &v53, v52.n128_u32[2] + 1, 24);
          v7 = v52.n128_u64[0];
          v6 = &v42[v52.n128_u64[0]];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, &v53, v52.n128_u32[2] + 1, 24);
          v6 = &v62;
          v7 = v52.n128_u64[0];
        }
      }

      v8 = v7 + 24 * v52.n128_u32[2];
      v9 = *v6;
      *(v8 + 16) = v6[1].n128_u64[0];
      *v8 = v9;
      ++v52.n128_u32[2];
    }

    v10 = mlir::toString(*(a1 + 24));
    if (__dst[0] && (v65 = 261, v62.n128_u64[0] = v10, v62.n128_u64[1] = v11, mlir::Diagnostic::operator<<(&__dst[1], &v62), __dst[0]))
    {
      v62.n128_u32[0] = 3;
      v62.n128_u64[1] = " entry instead";
      v63 = 14;
      v12 = &v62;
      v13 = v52.n128_u64[0];
      if (v52.n128_u32[2] >= v52.n128_u32[3])
      {
        if (v52.n128_u64[0] <= &v62 && v52.n128_u64[0] + 24 * v52.n128_u32[2] > &v62)
        {
          v43 = &v62 - v52.n128_u64[0];
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, &v53, v52.n128_u32[2] + 1, 24);
          v13 = v52.n128_u64[0];
          v12 = &v43[v52.n128_u64[0]];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, &v53, v52.n128_u32[2] + 1, 24);
          v12 = &v62;
          v13 = v52.n128_u64[0];
        }
      }

      v14 = v13 + 24 * v52.n128_u32[2];
      v15 = *v12;
      *(v14 + 16) = v12[1].n128_u64[0];
      *v14 = v15;
      ++v52.n128_u32[2];
      v16 = __dst[0];
      *a4 = 0;
      *(a4 + 64) = 0;
      if (v16)
      {
        mlir::InFlightDiagnostic::report(__dst);
      }

      if (v61 != 1)
      {
        return;
      }
    }

    else
    {
      *a4 = 0;
      *(a4 + 64) = 0;
      if (v61 != 1)
      {
        return;
      }
    }

    if (v60 != &v61)
    {
      free(v60);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v59;
      v19 = __p;
      if (v59 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v59 = v17;
      operator delete(v19);
    }

    v20 = v56;
    if (v56)
    {
      v21 = v57;
      v22 = v56;
      if (v57 != v56)
      {
        do
        {
          v24 = *--v21;
          v23 = v24;
          *v21 = 0;
          if (v24)
          {
            MEMORY[0x1AC55A040](v23, 0x1000C8077774924);
          }
        }

        while (v21 != v20);
        v22 = v56;
      }

      v57 = v20;
      operator delete(v22);
    }

    if (v52.n128_u64[0] != &v53)
    {
      free(v52.n128_u64[0]);
    }

    return;
  }

  __src = 0;
  v46 = 0;
  *v44 = 0;
  v27 = *(a1 + 32);
  {
    *a4 = 0;
    *(a4 + 64) = 0;
    return;
  }

  v29 = *(a1 + 48);
  v30 = *v29;
  if (*v29)
  {
    v31 = __src;
    v32 = v46;
    v33 = *(v29 + 8);
    if (v33)
    {
      atomic_fetch_add_explicit(v33 + 1, 1uLL, memory_order_relaxed);
    }

    v47 = v30;
    v48 = v33;
    off_1EE7055A8(&v62);
    (*((v64 & 0xFFFFFFFFFFFFFFF8) + 16))(&v47);
    v34 = v64;
    v49 = 0;
    __dst[0] = v31;
    __dst[1] = v32;
    v51 = v28;
    v54 = v64;
    if (v64 <= 7)
    {
      v35 = 0;
      v55 = 0;
      *a4 = *__dst;
      *(a4 + 16) = v51;
      *(a4 + 48) = v34;
      goto LABEL_54;
    }

    if ((~v64 & 6) != 0)
    {
      v52 = v62;
      v53 = v63;
      v55 = 0;
      *a4 = *__dst;
      *(a4 + 16) = v51;
      *(a4 + 48) = v34;
      v36 = (a4 + 48);
    }

    else
    {
      (*((v64 & 0xFFFFFFFFFFFFFFF8) + 8))(&v52, &v62);
      (*((v54 & 0xFFFFFFFFFFFFFFF8) + 16))(&v62);
      v35 = 0;
      v55 = 0;
      *a4 = *__dst;
      v34 = v54;
      *(a4 + 16) = v51;
      *(a4 + 48) = v34;
      v36 = (a4 + 48);
      if (v34 < 8)
      {
        goto LABEL_54;
      }
    }

    if ((v34 & 2) != 0 && (v34 & 4) != 0)
    {
      v39 = (*((v34 & 0xFFFFFFFFFFFFFFF8) + 8))((a4 + 24), &v52);
      (*((*v36 & 0xFFFFFFFFFFFFFFF8) + 16))(&v52, v39);
      v35 = v55;
    }

    else
    {
      v35 = 0;
      *(a4 + 24) = v52;
      *(a4 + 40) = v53;
    }

    v54 = 0;
LABEL_54:
    *(a4 + 56) = v35;
    *(a4 + 64) = 1;
    v40 = v49;
    if (v49 >= 8)
    {
      if ((v49 & 4) != 0)
      {
        if ((v49 & 2) != 0)
        {
          v41 = &v47;
        }

        else
        {
          v41 = v47;
        }

        (*((v49 & 0xFFFFFFFFFFFFFFF8) + 16))(v41);
      }

      if ((v40 & 2) == 0)
      {
        llvm::deallocate_buffer(v47, v48);
      }
    }

    return;
  }

  v37 = v46;
  a2(__dst, a3, v46, v28);
  memcpy(__dst[0], __src, v37);
  *a4 = *__dst;
  v38 = v54;
  *(a4 + 16) = v51;
  *(a4 + 48) = v38;
  if (v38 >= 8)
  {
    if ((v38 & 2) != 0 && (v38 & 4) != 0)
    {
      (*((v38 & 0xFFFFFFFFFFFFFFF8) + 8))(a4 + 24, &v52);
      (*((*(a4 + 48) & 0xFFFFFFFFFFFFFFF8) + 16))(&v52);
    }

    else
    {
      *(a4 + 24) = v52;
      *(a4 + 40) = v53;
    }
  }

  *(a4 + 56) = v55;
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
  v65 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 24);
  (*(***a1 + 32))(v47);
  if (v48)
  {
    (*(***a1 + 40))(&v53);
    v9 = llvm::StringMapImpl::hash(a2, a3, v7, v8);
    v10 = llvm::StringMap<std::string,llvm::MallocAllocator>::try_emplace_with_hash<>((v6 + 64), a2, a3, v9);
    v11 = *v10;
    if (*(*v10 + 31) < 0)
    {
      operator delete(*(v11 + 8));
    }

    v12 = v53;
    *(v11 + 24) = v54;
    *(v11 + 8) = v12;
    v13 = *(v6 + 8);
    v14 = *v6;
    v15 = v47;
    if (v13 >= *(v6 + 12))
    {
      if (v14 <= v47 && v14 + 24 * v13 > v47)
      {
        v43 = v47 - v14;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (v6 + 16), v13 + 1, 24);
        v14 = *v6;
        v15 = &v43[*v6];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (v6 + 16), v13 + 1, 24);
        v14 = *v6;
        v15 = v47;
      }
    }

    v16 = v14 + 24 * *(v6 + 8);
    v17 = *v15;
    *(v16 + 16) = *(v15 + 2);
    *v16 = v17;
    ++*(v6 + 8);
    return 1;
  }

  else
  {
    mlir::emitError(*(*(a1 + 8) + 24), &v53);
    if (v53)
    {
      LODWORD(v49) = 3;
      v50 = "unknown 'resource' key '";
      v51 = 24;
      v19 = &v49;
      v20 = v55;
      if (v56 >= v57)
      {
        if (v55 <= &v49 && v55 + 24 * v56 > &v49)
        {
          v44 = &v49 - v55;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
          v20 = v55;
          v19 = (v55 + v44);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
          v19 = &v49;
          v20 = v55;
        }
      }

      v21 = &v20[24 * v56];
      v22 = *v19;
      *(v21 + 2) = v19[2];
      *v21 = v22;
      ++v56;
      if (v53)
      {
        v52 = 261;
        v49 = a2;
        v50 = a3;
        mlir::Diagnostic::operator<<(&v53 + 8, &v49);
        if (v53)
        {
          LODWORD(v49) = 3;
          v50 = "' for dialect '";
          v51 = 15;
          v23 = &v49;
          v24 = v55;
          if (v56 >= v57)
          {
            if (v55 <= &v49 && v55 + 24 * v56 > &v49)
            {
              v45 = &v49 - v55;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
              v24 = v55;
              v23 = (v55 + v45);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
              v23 = &v49;
              v24 = v55;
            }
          }

          v25 = &v24[24 * v56];
          v26 = *v23;
          *(v25 + 2) = v23[2];
          *v25 = v26;
          ++v56;
          if (v53)
          {
            v27 = ***(a1 + 16);
            v52 = 261;
            v29 = *(v27 + 24);
            v28 = *(v27 + 32);
            v49 = v29;
            v50 = v28;
            mlir::Diagnostic::operator<<(&v53 + 8, &v49);
            if (v53)
            {
              LODWORD(v49) = 3;
              v50 = "'";
              v51 = 1;
              v30 = &v49;
              v31 = v55;
              if (v56 >= v57)
              {
                if (v55 <= &v49 && v55 + 24 * v56 > &v49)
                {
                  v46 = &v49 - v55;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
                  v31 = v55;
                  v30 = (v55 + v46);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
                  v30 = &v49;
                  v31 = v55;
                }
              }

              v32 = &v31[24 * v56];
              v33 = *v30;
              *(v32 + 2) = v30[2];
              *v32 = v33;
              ++v56;
            }
          }
        }
      }
    }

    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v53);
    if (v53)
    {
      mlir::InFlightDiagnostic::report(&v53);
    }

    if (v64 == 1)
    {
      if (v63 != &v64)
      {
        free(v63);
      }

      v34 = __p;
      if (__p)
      {
        v35 = v62;
        v36 = __p;
        if (v62 != __p)
        {
          do
          {
            v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
          }

          while (v35 != v34);
          v36 = __p;
        }

        v62 = v34;
        operator delete(v36);
      }

      v37 = v59;
      if (v59)
      {
        v38 = v60;
        v39 = v59;
        if (v60 != v59)
        {
          do
          {
            v41 = *--v38;
            v40 = v41;
            *v38 = 0;
            if (v41)
            {
              MEMORY[0x1AC55A040](v40, 0x1000C8077774924);
            }
          }

          while (v38 != v37);
          v39 = v59;
        }

        v60 = v37;
        operator delete(v39);
      }

      if (v55 != v58)
      {
        free(v55);
      }
    }
  }

  return v18;
}

uint64_t *llvm::StringMap<std::string,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
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
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
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
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
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
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t mlir::BytecodeReader::Impl::parseAttribute<mlir::LocationAttr>(uint64_t a1, _anonymous_namespace_::EncodingReader *this, uint64_t *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v27 = 0;
  {
    return 0;
  }

  v26 = result;
  if (result)
  {
    v7 = result;
    if (mlir::LocationAttr::classof(result))
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    *a3 = v8;
    if (v8)
    {
      return 1;
    }

    else
    {
      v27 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::LocationAttr]";
      v28 = 68;
      v9 = llvm::StringRef::find(&v27, "DesiredTypeName = ", 0x12uLL, 0);
      if (v28 >= v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = v28;
      }

      v11 = v27 + v10;
      v12 = v28 - v10;
      if (v28 - v10 >= 0x12)
      {
        v13 = 18;
      }

      else
      {
        v13 = v28 - v10;
      }

      v14 = (v11 + v13);
      v15 = (v12 - v13);
      if (v15 >= v15 - 1)
      {
        --v15;
      }

      v25[0] = v14;
      v25[1] = v15;
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v27);
      v16 = result;
      if (v27)
      {
        mlir::InFlightDiagnostic::report(&v27);
        result = v16;
      }

      if (v36 == 1)
      {
        if (v35 != &v36)
        {
          free(v35);
          result = v16;
        }

        v17 = __p;
        if (__p)
        {
          v18 = v34;
          v19 = __p;
          if (v34 != __p)
          {
            do
            {
              v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
            }

            while (v18 != v17);
            v19 = __p;
          }

          v34 = v17;
          operator delete(v19);
          result = v16;
        }

        v20 = v31;
        if (v31)
        {
          v21 = v32;
          v22 = v31;
          if (v32 != v31)
          {
            do
            {
              v24 = *--v21;
              v23 = v24;
              *v21 = 0;
              if (v24)
              {
                MEMORY[0x1AC55A040](v23, 0x1000C8077774924);
              }
            }

            while (v21 != v20);
            v22 = v31;
          }

          v32 = v20;
          operator delete(v22);
          result = v16;
        }

        if (v29 != &v30)
        {
          free(v29);
          return v16;
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

  v26[7] = v2;
  v26[8] = v3;
  v26[0] = 0;
  v5 = (a1 + 16);
  v6 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, v26);
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
              MEMORY[0x1AC55A070]();
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
  v25 = v26[0];
  if (v7 != v5)
  {
    free(v7);
  }

  *a1 = v6;
  *(a1 + 12) = v25;
}

BOOL mlir::BytecodeReader::Impl::defineValues(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    mlir::emitError(a2, &v53);
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
              MEMORY[0x1AC55A040](v15, 0x1000C8077774924);
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
              MEMORY[0x1AC55A040](v38, 0x1000C8077774924);
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

void anonymous namespace::EncodingReader::emitError<char const(&)[29],llvm::StringRef,char const(&)[12],mlir::Attribute &>(uint64_t a1, uint64_t a2, const char **a3, uint64_t *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  mlir::emitError(a2, &v15);
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
            MEMORY[0x1AC55A040](v13, 0x1000C8077774924);
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

uint64_t mlir::Diagnostic::append<char const(&)[29],llvm::StringRef,char const(&)[12],mlir::Attribute &>(uint64_t a1, char *__s, const char **a3, char *a4, uint64_t *a5)
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
  v24 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v24);
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
      MEMORY[0x1AC55A070]();
    }

    v9 -= 8;
  }

  while (v9);
  v6 = *a1;
LABEL_19:
  v23 = v24;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v4;
  *(a1 + 12) = v23;
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

void mlir::BytecodeReader::Impl::~Impl(llvm **this)
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
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
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

  v17 = a1;
  if (v4)
  {
    if (v4 <= 0x492492492492492)
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v5 = 56 * v1;
  __p = 0;
  v14 = v5;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *v5 = 0u;
  *(v5 + 48) = 0;
  *(v5 + 24) = v5 + 40;
  *(v5 + 36) = 4;
  v15 = 56 * v1 + 56;
  v16 = 0;
  std::vector<mlir::BytecodeReader::Impl::ValueScope>::__swap_out_circular_buffer(a1, &__p);
  v6 = a1[1];
  v7 = v14;
  while (1)
  {
    v8 = v15;
    if (v15 == v7)
    {
      break;
    }

    v9 = (v15 - 56);
    v15 -= 56;
    v10 = *(v8 - 32);
    if (v10 != (v8 - 16))
    {
      free(v10);
    }

    v11 = *v9;
    if (*v9)
    {
      *(v8 - 48) = v11;
      operator delete(v11);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
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
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
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

  v21 = a1;
  if (v7)
  {
    if (!(v7 >> 57))
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v8 = v2 << 7;
  __p = 0;
  v18 = v8;
  v20 = 0;
  *v8 = *a2;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 40) = v8 + 56;
  *(v8 + 48) = 0x600000000;
  if (*(a2 + 48))
  {
    llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v8 + 40, (a2 + 40));
  }

  *(v8 + 104) = *(a2 + 104);
  *(v8 + 120) = *(a2 + 120);
  v19 = v8 + 128;
  std::vector<mlir::BytecodeReader::Impl::RegionReadState>::__swap_out_circular_buffer(a1, &__p);
  v11 = a1[1];
  v12 = v18;
  for (i = v19; v19 != v12; i = v19)
  {
    v19 = i - 128;
    v14 = *(i - 88);
    if (v14 != (i - 72))
    {
      free(v14);
    }

    v15 = *(i - 104);
    *(i - 104) = 0;
    if (v15)
    {
      MEMORY[0x1AC55A070](v15, 0x1070C401CF53446);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

uint64_t *std::vector<mlir::BytecodeReader::Impl::RegionReadState>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = *result;
  v5 = result[1];
  v6 = a2[1] + *result - v5;
  if (v5 != *result)
  {
    v7 = 0;
    do
    {
      v9 = v4 + v7;
      v10 = v6 + v7;
      v11 = *(v4 + v7);
      *(v10 + 16) = *(v4 + v7 + 16);
      *v10 = v11;
      v12 = *(v4 + v7 + 24);
      *(v4 + v7 + 24) = 0;
      *(v10 + 24) = v12;
      *(v10 + 32) = *(v4 + v7 + 32);
      *(v6 + v7 + 40) = v6 + v7 + 56;
      *(v10 + 48) = 0x600000000;
      if (*(v4 + v7 + 48))
      {
        llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v6 + v7 + 40, (v9 + 40));
      }

      v8 = *(v9 + 104);
      *(v10 + 120) = *(v9 + 120);
      *(v10 + 104) = v8;
      v7 += 128;
    }

    while (v9 + 128 != v5);
    v13 = (v4 + 56);
    do
    {
      v15 = *(v13 - 2);
      if (v13 != v15)
      {
        free(v15);
      }

      result = *(v13 - 4);
      *(v13 - 4) = 0;
      if (result)
      {
        result = MEMORY[0x1AC55A070](result, 0x1070C401CF53446);
      }

      v14 = (v13 + 9);
      v13 += 16;
    }

    while (v14 != v5);
  }

  a2[1] = v6;
  v16 = *v3;
  *v3 = v6;
  v3[1] = v16;
  a2[1] = v16;
  v17 = v3[1];
  v3[1] = a2[2];
  a2[2] = v17;
  v18 = v3[2];
  v3[2] = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
  return result;
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

uint64_t mlir::Diagnostic::append<char const(&)[30],std::string>(uint64_t a1, char *__s, const char *a3)
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
  v14 = 0uLL;
  v4 = *a1;
  v3 = a1[1];
  if (*(*a1 + 248) <= 4uLL)
  {
    v15 = 0;
    {
      v5 = resolveEntry<llvm::SmallVector<llvm::StringRef,3u> const,llvm::StringRef>(v3[3], *(v4 + 536), *(v4 + 544), v15, &v14, "string", 6);
      v6 = 0;
      v7 = 0;
      result = 0;
      if (!v5)
      {
        return result;
      }

      goto LABEL_8;
    }

    return 0;
  }

  v15 = 0;
  {
    return 0;
  }

  v9 = v15;
  if (!resolveEntry<llvm::SmallVector<llvm::StringRef,3u> const,llvm::StringRef>(v3[3], *(v4 + 536), *(v4 + 544), (v15 >> 1), &v14, "string", 6))
  {
    return 0;
  }

  v6 = v9 & 1;
  v7 = 1;
LABEL_8:
  v10 = v14;
  v11 = v6 | (v7 << 8);
  v12 = *(v4 + 368);
  if (v12 >= *(v4 + 372))
  {
  }

  else
  {
    v13 = *(v4 + 360) + 48 * v12;
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = a2;
    *(v13 + 24) = v10;
    *(v13 + 40) = v11;
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
  return llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>((v3 + 704), &v8, &v7, v6);
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 4);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = v5 - 1;
  v8 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v9 = *result + 16 * v8;
  v10 = *v9;
  if (*a2 != *v9)
  {
    v13 = 0;
    v14 = 1;
    while (v10 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v10 == -8192;
      }

      if (v15)
      {
        v13 = v9;
      }

      v16 = v8 + v14++;
      v8 = v16 & v7;
      v9 = v6 + 16 * (v16 & v7);
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v9 = v13;
    }

LABEL_5:
    v20 = v9;
    v12 = *(result + 2);
    if (4 * v12 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v12 - *(result + 3) > v5 >> 3)
    {
      *(result + 2) = v12 + 1;
      if (*v9 == -4096)
      {
LABEL_9:
        *v9 = *a2;
        *(v9 + 8) = *a3;
        v6 = *result;
        v5 = *(result + 4);
        v11 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a4;
    v19 = a3;
    llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v9 = v20;
    ++*(v17 + 8);
    if (*v9 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v11 = 0;
LABEL_10:
  *a4 = v9;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v11;
  return result;
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

const char *llvm::getTypeName<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsMutable>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::StorageUserTrait::IsMutable<Empty>]";
  v6 = 98;
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

uint64_t mlir::Operation::getDiscardableAttrDictionary(mlir::Operation *this)
{
  v16[6] = *MEMORY[0x1E69E9840];
  if (*(this + 47))
  {
    return *(this + 7);
  }

  Context = mlir::Attribute::getContext((this + 24));
  mlir::Operation::getDiscardableAttrs(v5, this);
  v12[0] = v5[0];
  v12[1] = v5[1];
  v13 = v6;
  v10[0] = v7;
  v10[1] = v8;
  v11 = v9;
  v14 = v16;
  v15 = 0x300000000;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<llvm::filter_iterator_impl<mlir::NamedAttribute const*,mlir::Operation::getDiscardableAttrs(void)::{lambda(mlir::NamedAttribute)#1},std::bidirectional_iterator_tag>,void>(&v14, v12, v10);
  result = mlir::DictionaryAttr::get(Context, v14, v15);
  if (v14 != v16)
  {
    v4 = result;
    free(v14);
    return v4;
  }

  return result;
}

uint64_t *mlir::Operation::getDiscardableAttrs@<X0>(uint64_t **__return_ptr a1@<X8>, mlir::Operation *this@<X0>)
{
  v4 = *(this + 6);
  if (*(v4 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    result = mlir::ArrayAttr::getValue((this + 56));
    v8 = result;
    v10 = &result[2 * v14];
    v5 = 0;
    if (!v14)
    {
LABEL_17:
      v6 = 0;
      goto LABEL_18;
    }

    v11 = this + 44;
LABEL_15:
    v15 = v8[1];
    *&v16 = *v8;
    *(&v16 + 1) = v15;
    if (!v11[3])
    {
      result = ZinCompressedFootprintInfo::GetCompressedBytes(&v16);
    }

    goto LABEL_17;
  }

  v5 = *(v4 + 96);
  v6 = *(v4 + 104);
  result = mlir::ArrayAttr::getValue((this + 56));
  v8 = result;
  v10 = &result[2 * v9];
  if (!v9)
  {
    goto LABEL_18;
  }

  v11 = this + 44;
  if (!v6)
  {
    goto LABEL_15;
  }

  v12 = 8 * v6;
  while (1)
  {
    v16 = *v8;
    if (*(this + 47))
    {
      break;
    }

    result = ZinCompressedFootprintInfo::GetCompressedBytes(&v16);
    v13 = 0;
    while (v5[v13 / 8] != result)
    {
      v13 += 8;
      if (v12 == v13)
      {
        goto LABEL_18;
      }
    }

    if (v12 == v13)
    {
      break;
    }

    v8 += 2;
    if (v8 == v10)
    {
      v8 = v10;
      break;
    }
  }

LABEL_18:
  *a1 = v8;
  a1[1] = v10;
  a1[2] = this;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v10;
  a1[6] = v10;
  a1[7] = this;
  a1[8] = v5;
  a1[9] = v6;
  return result;
}

void llvm::SmallVectorImpl<mlir::NamedAttribute>::append<llvm::filter_iterator_impl<mlir::NamedAttribute const*,mlir::Operation::getDiscardableAttrs(void)::{lambda(mlir::NamedAttribute)#1},std::bidirectional_iterator_tag>,void>(uint64_t result, __int128 **a2, __int128 **a3)
{
  v6 = *a2;
  v7 = *a3;
  if (*a2 == *a3)
  {
    v11 = 0;
  }

  else
  {
    v8 = a2[4];
    v9 = a2[1];
    v10 = a2[2];
    v11 = 0;
    if (v8)
    {
      v12 = a2[3];
      v13 = 8 * v8;
      do
      {
        do
        {
          if (++v6 == v9)
          {
            break;
          }

          v32 = *v6;
          if (*(v10 + 47))
          {
            break;
          }

          CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(&v32);
          v15 = v13;
          v16 = v12;
          while (*v16 != CompressedBytes)
          {
            v16 = (v16 + 8);
            v15 -= 8;
            if (!v15)
            {
              goto LABEL_10;
            }
          }
        }

        while (v15);
LABEL_10:
        ++v11;
      }

      while (v6 != v7);
    }

    else
    {
      v29 = v6 + 1;
      do
      {
        if (v29 != v9)
        {
          v32 = *v29;
          if (!*(v10 + 47))
          {
            ZinCompressedFootprintInfo::GetCompressedBytes(&v32);
          }
        }

        ++v11;
        v30 = v29++ == v7;
      }

      while (!v30);
    }
  }

  v17 = v11 + *(result + 8);
  if (v17 > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v17, 16);
  }

  v18 = *a2;
  v19 = *a3;
  if (*a2 != v19)
  {
    v20 = (*result + 16 * *(result + 8));
    v21 = a2[4];
    v22 = a2[1];
    v23 = a2[2];
    if (v21)
    {
      v24 = a2[3];
      v25 = 8 * v21;
      do
      {
        *v20 = *v18;
        do
        {
          if (++v18 == v22)
          {
            break;
          }

          v32 = *v18;
          if (*(v23 + 47))
          {
            break;
          }

          v26 = ZinCompressedFootprintInfo::GetCompressedBytes(&v32);
          v27 = v25;
          v28 = v24;
          while (*v28 != v26)
          {
            v28 = (v28 + 8);
            v27 -= 8;
            if (!v27)
            {
              goto LABEL_18;
            }
          }
        }

        while (v27);
LABEL_18:
        ++v20;
      }

      while (v18 != v19);
    }

    else
    {
      v31 = v18 + 1;
      do
      {
        *v20 = *(v31 - 1);
        if (v31 != v22)
        {
          v32 = *v31;
          if (!*(v23 + 47))
          {
            ZinCompressedFootprintInfo::GetCompressedBytes(&v32);
          }
        }

        ++v20;
        v30 = v31++ == v19;
      }

      while (!v30);
    }
  }

  *(result + 8) += v11;
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<char const>(llvm::hashing::detail *a1, uint64_t a2)
{
  v4 = a2 - a1;
  if (v4 > 0x40)
  {
    v6 = *(a1 + 1);
    v7 = *(a1 + 6);
    v8 = *(a1 + 7);
    v9 = (0xB492B66FBE98F273 * __ROR8__(v6 - 0x73D22641534B4D52, 37)) ^ 0xF7ACCA5326449396;
    v10 = *(a1 + 5);
    v11 = v10 - 0x4B6D499041670D8DLL * __ROR8__(v7 - 0x414BFF9ED66A691CLL, 42) - 0x7323D61940A0DA1FLL;
    v12 = *a1 + 0x298DF016A9F64655;
    v13 = *(a1 + 2);
    v14 = *(a1 + 3);
    v15 = v12 + v6 + v13;
    v16 = 0x544962662A7EE1A4;
    v17 = __ROR8__(v15, 44) + v12 + __ROR8__(v9 + v12 + v14 - 0xAE502812AB8D92, 21);
    v18 = v15 + v14;
    v19 = *(a1 + 4) + 0x4BF62CB950C3753ALL;
    v20 = v10 + v7 + v19;
    v21 = __ROR8__(v20, 44) + v19 + __ROR8__(v11 + v13 + v19 + v8, 21);
    v22 = v20 + v8;
    v23 = (v4 & 0xFFFFFFFFFFFFFFC0) - 64;
    if ((v4 & 0xFFFFFFFFFFFFFFC0) == 0x40)
    {
      v24 = v9;
      if ((v4 & 0x3F) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v25 = (a1 + 120);
      do
      {
        v26 = *(v25 - 6);
        v27 = v11 + v18 + v16 + v26;
        v28 = *(v25 - 1);
        v29 = *(v25 - 2);
        v11 = v29 + v18 - 0x4B6D499041670D8DLL * __ROR8__(v11 + v17 + v28, 42);
        v30 = v9 + v22;
        v31 = *(v25 - 7) - 0x4B6D499041670D8DLL * v17;
        v32 = *(v25 - 5);
        v33 = *(v25 - 4);
        v34 = v31 + v26 + v32;
        v24 = (0xB492B66FBE98F273 * __ROR8__(v27, 37)) ^ v21;
        v17 = __ROR8__(v34, 44) + v31 + __ROR8__(v24 + v22 + v31 + v33, 21);
        v16 = 0xB492B66FBE98F273 * __ROR8__(v30, 33);
        v18 = v34 + v33;
        v35 = v16 + v21 + *(v25 - 3);
        v36 = v29 + v28 + v35;
        v21 = __ROR8__(v11 + v32 + v35 + *v25, 21) + v35 + __ROR8__(v36, 44);
        v22 = v36 + *v25;
        v25 += 8;
        v9 = v24;
        v23 -= 64;
      }

      while (v23);
      if ((v4 & 0x3F) == 0)
      {
        goto LABEL_12;
      }
    }

    v37 = *(a2 - 56);
    v39 = *(a2 - 16);
    v38 = *(a2 - 8);
    v40 = v24 + v22;
    v41 = (0xB492B66FBE98F273 * __ROR8__(v11 + v18 + v16 + v37, 37)) ^ v21;
    v43 = *(a2 - 32);
    v42 = *(a2 - 24);
    v11 = v42 + v18 - 0x4B6D499041670D8DLL * __ROR8__(v11 + v17 + v39, 42);
    v44 = v41 + v22;
    v45 = *(a2 - 64) - 0x4B6D499041670D8DLL * v17;
    v48 = a2 - 48;
    v46 = *(a2 - 48);
    v47 = *(v48 + 8);
    v49 = v45 + v37 + v46;
    v16 = 0xB492B66FBE98F273 * __ROR8__(v40, 33);
    v17 = __ROR8__(v49, 44) + v45 + __ROR8__(v44 + v45 + v47, 21);
    v18 = v49 + v47;
    v50 = v16 + v21 + v43;
    v51 = v42 + v39 + v50;
    v21 = __ROR8__(v11 + v46 + v50 + v38, 21) + v50 + __ROR8__(v51, 44);
    v22 = v51 + v38;
    v24 = v41;
LABEL_12:
    v52 = 0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v17 ^ v21)) >> 47) ^ (0x9DDFEA08EB382D69 * (v17 ^ v21)));
    v53 = v16 - 0x4B6D499041670D8DLL * (v4 ^ (v4 >> 47)) - 0x622015F714C7D297 * (v52 ^ (v52 >> 47));
    v54 = 0x9DDFEA08EB382D69 * ((v24 - 0x4B6D499041670D8DLL * (v11 ^ (v11 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v18 ^ v22)) >> 47) ^ (0x9DDFEA08EB382D69 * (v18 ^ v22)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v18 ^ v22)) >> 47) ^ (0x9DDFEA08EB382D69 * (v18 ^ v22)))) >> 47))) ^ v53);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v53 ^ (v54 >> 47) ^ v54)) ^ ((0x9DDFEA08EB382D69 * (v53 ^ (v54 >> 47) ^ v54)) >> 47));
  }

  return llvm::hashing::detail::hash_short(a1, v4, 0xFF51AFD7ED558CCDLL);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = *a1 + 16 * v6;
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 8;
    }

    v11 = 0;
    v12 = 1;
    while (v8 != -4096)
    {
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = v8 == -8192;
      }

      if (v13)
      {
        v11 = v7;
      }

      v14 = v6 + v12++;
      v6 = v14 & v5;
      v7 = *a1 + 16 * (v14 & v5);
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 8;
      }
    }

    if (v11)
    {
      v7 = v11;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  v10 = *(a1 + 8);
  if (4 * v10 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v10 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
LABEL_24:
    v16 = a1;
    llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::LookupBucketFor<mlir::Value>(v16, v15, &v17);
    a1 = v16;
    a2 = v15;
    v7 = v17;
    ++*(v16 + 8);
    if (*v7 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v10 + 1;
  if (*v7 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v7 = *a2;
  *(v7 + 8) = 0;
  return v7 + 8;
}

void *llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = 0;
      v17 = v4;
      do
      {
        v24 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = 0x9DDFEA08EB382D69 * ((8 * *v17 - 0xAE502812AA7333) ^ HIDWORD(*v17));
          v26 = 0x9DDFEA08EB382D69 * (HIDWORD(v24) ^ (v25 >> 47) ^ v25);
          LODWORD(v25) = -348639895 * ((v26 >> 47) ^ v26);
          v27 = *(a1 + 16) - 1;
          v28 = v27 & v25;
          v23 = &result[2 * v28];
          v29 = *v23;
          if (v24 != *v23)
          {
            v30 = 0;
            v31 = 1;
            while (v29 != -4096)
            {
              if (v30)
              {
                v32 = 0;
              }

              else
              {
                v32 = v29 == -8192;
              }

              if (v32)
              {
                v30 = v23;
              }

              v33 = v28 + v31++;
              v28 = v33 & v27;
              v23 = &result[2 * (v33 & v27)];
              v29 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_24;
              }
            }

            if (v30)
            {
              v23 = v30;
            }
          }

LABEL_24:
          *v23 = v24;
          *(v23 + 2) = *(v17 + 2);
          *(a1 + 8) = ++v16;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -4096;
      *v20 = -4096;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = *a1 + 16 * v4;
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 8;
    }

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
      v4 = v12 & v3;
      v5 = *a1 + 16 * (v12 & v3);
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 8;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  *(v5 + 8) = 0;
  return v5 + 8;
}

uint64_t llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(uint64_t a1)
{
  if (*(a1 + 24))
  {
    llvm::deallocate_buffer(**(a1 + 16), 0x1000);
  }

  v2 = *(a1 + 64);
  if (*(a1 + 72))
  {
    llvm::deallocate_buffer(*v2, *(v2 + 8));
  }

  if (v2 != a1 + 80)
  {
    free(*(a1 + 64));
  }

  v3 = *(a1 + 16);
  if (v3 != (a1 + 32))
  {
    free(v3);
  }

  return a1;
}

char *llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmResourcePrinter>,false>::growAndEmplaceBack<std::unique_ptr<mlir::AsmResourcePrinter>>(uint64_t a1, uint64_t *a2)
{
  v27 = 0;
  v4 = (a1 + 16);
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v27);
  v6 = *(a1 + 8);
  v7 = 8 * v6;
  v8 = *a2;
  *a2 = 0;
  *&v5[8 * v6] = v8;
  v9 = *a1;
  v10 = *a1;
  if (!v6)
  {
    goto LABEL_18;
  }

  v11 = (v6 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v11 < 0xB)
  {
    v12 = v5;
    do
    {
LABEL_12:
      v21 = *v10;
      *v10 = 0;
      v10 += 8;
      *v12 = v21;
      v12 += 8;
    }

    while (v10 != &v9[v7]);
    goto LABEL_13;
  }

  v13 = v9 >= &v5[v7] || v5 >= &v9[v7];
  v12 = v5;
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = v11 + 1;
  v15 = 8 * (v14 & 0x3FFFFFFFFFFFFFFCLL);
  v12 = &v5[v15];
  v10 = &v9[v15];
  v16 = (v9 + 16);
  v17 = v5 + 16;
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
  if (v14 != (v14 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_12;
  }

LABEL_13:
  v22 = v9 - 8;
  do
  {
    v23 = *&v22[v7];
    *&v22[v7] = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v7 -= 8;
  }

  while (v7);
  v10 = *a1;
LABEL_18:
  v24 = v27;
  if (v10 != v4)
  {
    free(v10);
  }

  *a1 = v5;
  v25 = *(a1 + 8) + 1;
  *(a1 + 8) = v25;
  *(a1 + 12) = v24;
  return &v5[8 * v25 - 8];
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>,mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 4);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v8 = (*result + 24 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v13 = 0;
    v14 = 1;
    while (v9 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v9 == -8192;
      }

      if (v15)
      {
        v13 = v8;
      }

      v16 = v7 + v14++;
      v7 = v16 & v6;
      v8 = (v5 + 24 * (v16 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v8 = v13;
    }

LABEL_5:
    v19 = v8;
    v11 = *(result + 2);
    if (4 * v11 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v11 - *(result + 3) > v4 >> 3)
    {
      *(result + 2) = v11 + 1;
      if (*v8 == -4096)
      {
LABEL_9:
        v12 = *a2;
        v8[2] = a2[2];
        *v8 = v12;
        v5 = *result;
        v4 = *(result + 4);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a3;
    llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::LookupBucketFor<mlir::Attribute>(v17, a2, &v19);
    result = v17;
    a3 = v18;
    v8 = v19;
    ++*(v17 + 2);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 24 * v4;
  *(a3 + 16) = v10;
  return result;
}

int64x2_t *llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 24 * v10 - 24;
    if (v11 >= 0x48)
    {
      v16 = v11 / 0x18 + 1;
      v12 = (result + 24 * (v16 & 0x1FFFFFFFFFFFFFFCLL));
      v17 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v18 = result;
      v19 = v16 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        *v18 = v17;
        v18[1] = xmmword_1A75D9A90;
        v18[4] = xmmword_1A75D9A90;
        v18[5] = xmmword_1A75D9A80;
        v18[2] = xmmword_1A75D9A80;
        v18[3] = v17;
        v18 += 6;
        v19 -= 4;
      }

      while (v19);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFCLL))
      {
LABEL_16:
        if (v3)
        {
          v21 = v4;
          do
          {
            v29 = *v21;
            if ((*v21 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              v30 = *(a1 + 16) - 1;
              v31 = v30 & ((v29 >> 4) ^ (v29 >> 9));
              v27 = (*a1 + 24 * v31);
              v32 = *v27;
              if (v29 != *v27)
              {
                v33 = 0;
                v34 = 1;
                while (v32 != -4096)
                {
                  if (v33)
                  {
                    v35 = 0;
                  }

                  else
                  {
                    v35 = v32 == -8192;
                  }

                  if (v35)
                  {
                    v33 = v27;
                  }

                  v36 = v31 + v34++;
                  v31 = v36 & v30;
                  v27 = (*a1 + 24 * (v36 & v30));
                  v32 = *v27;
                  if (v29 == *v27)
                  {
                    goto LABEL_26;
                  }
                }

                if (v33)
                {
                  v27 = v33;
                }
              }

LABEL_26:
              v28 = *v21;
              v27[2] = *(v21 + 2);
              *v27 = v28;
              ++*(a1 + 8);
            }

            v21 = (v21 + 24);
          }

          while (v21 != (v4 + 24 * v3));
        }

        llvm::deallocate_buffer(v4, (24 * v3));
      }
    }

    else
    {
      v12 = result;
    }

    v20 = (result + 24 * v10);
    do
    {
      v12->i64[0] = -4096;
      v12->i64[1] = -4096;
      v12[1].i64[0] = 0;
      v12 = (v12 + 24);
    }

    while (v12 != v20);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 24 * v13 - 24;
    if (v14 < 0x48)
    {
      v15 = result;
LABEL_21:
      v26 = (result + 24 * v13);
      do
      {
        v15->i64[0] = -4096;
        v15->i64[1] = -4096;
        v15[1].i64[0] = 0;
        v15 = (v15 + 24);
      }

      while (v15 != v26);
      return result;
    }

    v22 = v14 / 0x18 + 1;
    v15 = (result + 24 * (v22 & 0x1FFFFFFFFFFFFFFCLL));
    v23 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v24 = result;
    v25 = v22 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      *v24 = v23;
      v24[1] = xmmword_1A75D9A90;
      v24[4] = xmmword_1A75D9A90;
      v24[5] = xmmword_1A75D9A80;
      v24[2] = xmmword_1A75D9A80;
      v24[3] = v23;
      v24 += 6;
      v25 -= 4;
    }

    while (v25);
    if (v22 != (v22 & 0x1FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_21;
    }
  }

  return result;
}

uint64_t mlir::call_interface_impl::resolveCallable(mlir::SymbolTable *a1, uint64_t (**a2)(void, uint64_t), uint64_t a3)
{
  v5 = (*a2)(a2, a1);
  v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
  v8 = v5 & 0xFFFFFFFFFFFFFFF8 & (v5 << 61 >> 63);
  if (v8)
  {
    return mlir::Value::getDefiningOp(&v8);
  }

  if (a3)
  {

    return mlir::SymbolTableCollection::lookupNearestSymbolFrom(a3, a1, v6);
  }

  else
  {

    return mlir::SymbolTable::lookupNearestSymbolFrom(a1, v6);
  }
}

BOOL mlir::complex::ConstantOp::isBuildableWith(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  v20 = v2;
  if (v2)
  {
    v3 = *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id ? a2 : 0;
    v19 = v3;
    if (v3)
    {
      mlir::ArrayAttr::getValue(&v20);
      if (v4 == 2)
      {
        Value = mlir::AffineMapAttr::getValue(&v19);
        v6 = mlir::ArrayAttr::getValue(&v20);
        v7 = *v6;
        v8 = *(**v6 + 136);
        if (v8 != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
        {
          v7 = 0;
        }

        v18 = v7;
        if (v8 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
        {
          v15 = *(mlir::ArrayAttr::getValue(&v20) + 8);
          v16 = *(*v15 + 136);
          if (v16 != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
          {
            v15 = 0;
          }

          v17 = v15;
          if (v16 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && mlir::AffineMapAttr::getValue(&v18) == Value)
          {
            return mlir::AffineMapAttr::getValue(&v17) == Value;
          }
        }

        else
        {
          v9 = mlir::ArrayAttr::getValue(&v20);
          v10 = *v9;
          v11 = *(**v9 + 136);
          if (v11 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v10 = 0;
          }

          v18 = v10;
          if (v11 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v12 = *(mlir::ArrayAttr::getValue(&v20) + 8);
            v13 = *(*v12 + 136);
            if (v13 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
            {
              v12 = 0;
            }

            v17 = v12;
            if (v13 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && mlir::AffineMapAttr::getValue(&v18) == Value)
            {
              return mlir::AffineMapAttr::getValue(&v17) == Value;
            }
          }
        }
      }
    }
  }

  return 0;
}

BOOL mlir::complex::ConstantOp::verify(uint64_t **this)
{
  v93 = *MEMORY[0x1E69E9840];
  v78 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  mlir::ArrayAttr::getValue(&v78);
  if (v2 == 2)
  {
    v82[0] = *(*this - 1) & 0xFFFFFFFFFFFFFFF8;
    Value = mlir::AffineMapAttr::getValue(v82);
    v4 = *(**mlir::ArrayAttr::getValue(&v78) + 136);
    v5 = v4 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
    if (v5 && ((v6 = *(**(mlir::ArrayAttr::getValue(&v78) + 8) + 136), v6 != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id) ? (v7 = v6 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id) : (v7 = 1), v7))
    {
      v8 = mlir::ArrayAttr::getValue(&v78);
      v75[0] = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v8);
      v75[1] = v9;
      v10 = mlir::ArrayAttr::getValue(&v78);
      v74[0] = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*(v10 + 8));
      v74[1] = v11;
      if (Value == mlir::FunctionOpInterface::getFunctionType(v75) && Value == mlir::FunctionOpInterface::getFunctionType(v74))
      {
        return 1;
      }

      v77 = 257;
      mlir::OpState::emitOpError(this, v76, v82);
      if (v82[0])
      {
        v79 = 3;
        v80 = "requires attribute's element types (";
        v81 = 36;
        v27 = &v79;
        v28 = v83;
        if (v84 >= v85)
        {
          if (v83 <= &v79 && v83 + 24 * v84 > &v79)
          {
            v67 = &v79 - v83;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v28 = v83;
            v27 = (v83 + v67);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v27 = &v79;
            v28 = v83;
          }
        }

        v29 = &v28[24 * v84];
        v30 = *v27;
        *(v29 + 2) = *(v27 + 2);
        *v29 = v30;
        ++v84;
      }

      FunctionType = mlir::FunctionOpInterface::getFunctionType(v75);
      if (v82[0])
      {
        v32 = &v79;
        mlir::DiagnosticArgument::DiagnosticArgument(&v79, FunctionType);
        v33 = v83;
        if (v84 >= v85)
        {
          if (v83 <= &v79 && v83 + 24 * v84 > &v79)
          {
            v68 = &v79 - v83;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v33 = v83;
            v32 = (v83 + v68);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v32 = &v79;
            v33 = v83;
          }
        }

        v34 = &v33[24 * v84];
        v35 = *v32;
        *(v34 + 2) = *(v32 + 2);
        *v34 = v35;
        v36 = ++v84;
        if (v82[0])
        {
          v79 = 3;
          v80 = ", ";
          v81 = 2;
          v37 = &v79;
          v38 = v83;
          if (v36 >= v85)
          {
            if (v83 <= &v79 && v83 + 24 * v36 > &v79)
            {
              v70 = &v79 - v83;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v36 + 1, 24);
              v38 = v83;
              v37 = (v83 + v70);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v36 + 1, 24);
              v37 = &v79;
              v38 = v83;
            }
          }

          v39 = &v38[24 * v84];
          v40 = *v37;
          *(v39 + 2) = *(v37 + 2);
          *v39 = v40;
          ++v84;
        }
      }

      v41 = mlir::FunctionOpInterface::getFunctionType(v74);
      if (v82[0])
      {
        v42 = &v79;
        mlir::DiagnosticArgument::DiagnosticArgument(&v79, v41);
        v43 = v83;
        if (v84 >= v85)
        {
          if (v83 <= &v79 && v83 + 24 * v84 > &v79)
          {
            v69 = &v79 - v83;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v43 = v83;
            v42 = (v83 + v69);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v42 = &v79;
            v43 = v83;
          }
        }

        v44 = &v43[24 * v84];
        v45 = *v42;
        *(v44 + 2) = *(v42 + 2);
        *v44 = v45;
        v46 = ++v84;
        if (v82[0])
        {
          v79 = 3;
          v80 = ") to match the element type of the op's return type (";
          v81 = 53;
          v47 = &v79;
          v48 = v83;
          if (v46 >= v85)
          {
            if (v83 <= &v79 && v83 + 24 * v46 > &v79)
            {
              v71 = &v79 - v83;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v46 + 1, 24);
              v48 = v83;
              v47 = (v83 + v71);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v46 + 1, 24);
              v47 = &v79;
              v48 = v83;
            }
          }

          v49 = &v48[24 * v84];
          v50 = *v47;
          *(v49 + 2) = *(v47 + 2);
          *v49 = v50;
          ++v84;
          if (v82[0])
          {
            v51 = &v79;
            mlir::DiagnosticArgument::DiagnosticArgument(&v79, Value);
            v52 = v83;
            if (v84 >= v85)
            {
              if (v83 <= &v79 && v83 + 24 * v84 > &v79)
              {
                v72 = &v79 - v83;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
                v52 = v83;
                v51 = (v83 + v72);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
                v51 = &v79;
                v52 = v83;
              }
            }

            v53 = &v52[24 * v84];
            v54 = *v51;
            *(v53 + 2) = *(v51 + 2);
            *v53 = v54;
            v55 = ++v84;
            if (v82[0])
            {
              v79 = 3;
              v80 = ")";
              v81 = 1;
              v56 = &v79;
              v57 = v83;
              if (v55 >= v85)
              {
                if (v83 <= &v79 && v83 + 24 * v55 > &v79)
                {
                  v73 = &v79 - v83;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v55 + 1, 24);
                  v57 = v83;
                  v56 = (v83 + v73);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v55 + 1, 24);
                  v56 = &v79;
                  v57 = v83;
                }
              }

              v58 = &v57[24 * v84];
              v59 = *v56;
              *(v58 + 2) = *(v56 + 2);
              *v58 = v59;
              ++v84;
            }
          }
        }
      }

      v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v82);
      if (v82[0])
      {
        mlir::InFlightDiagnostic::report(v82);
      }

      if (v92 == 1)
      {
        if (v91 != &v92)
        {
          free(v91);
        }

        v60 = __p;
        if (__p)
        {
          v61 = v90;
          v62 = __p;
          if (v90 != __p)
          {
            do
            {
              v61 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v61 - 1);
            }

            while (v61 != v60);
            v62 = __p;
          }

          v90 = v60;
          operator delete(v62);
        }

        v16 = v87;
        if (!v87)
        {
          goto LABEL_82;
        }

        v63 = v88;
        v18 = v87;
        if (v88 == v87)
        {
          goto LABEL_81;
        }

        do
        {
          v65 = *--v63;
          v64 = v65;
          *v63 = 0;
          if (v65)
          {
            MEMORY[0x1AC55A040](v64, 0x1000C8077774924);
          }
        }

        while (v63 != v16);
        goto LABEL_80;
      }
    }

    else
    {
      v76[0] = "requires attribute's elements to be float or integer attributes";
      v77 = 259;
      mlir::OpState::emitOpError(this, v76, v82);
      v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v82);
      if (v82[0])
      {
        mlir::InFlightDiagnostic::report(v82);
      }

      if (v92 == 1)
      {
        if (v91 != &v92)
        {
          free(v91);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v90;
          v23 = __p;
          if (v90 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v90 = v21;
          operator delete(v23);
        }

        v16 = v87;
        if (!v87)
        {
          goto LABEL_82;
        }

        v24 = v88;
        v18 = v87;
        if (v88 == v87)
        {
LABEL_81:
          v88 = v16;
          operator delete(v18);
LABEL_82:
          if (v83 != v86)
          {
            free(v83);
          }

          return v12;
        }

        do
        {
          v26 = *--v24;
          v25 = v26;
          *v24 = 0;
          if (v26)
          {
            MEMORY[0x1AC55A040](v25, 0x1000C8077774924);
          }
        }

        while (v24 != v16);
LABEL_80:
        v18 = v87;
        goto LABEL_81;
      }
    }
  }

  else
  {
    v76[0] = "requires 'value' to be a complex constant, represented as array of two values";
    v77 = 259;
    mlir::OpState::emitOpError(this, v76, v82);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v82);
    if (v82[0])
    {
      mlir::InFlightDiagnostic::report(v82);
    }

    if (v92 == 1)
    {
      if (v91 != &v92)
      {
        free(v91);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v90;
        v15 = __p;
        if (v90 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v90 = v13;
        operator delete(v15);
      }

      v16 = v87;
      if (!v87)
      {
        goto LABEL_82;
      }

      v17 = v88;
      v18 = v87;
      if (v88 == v87)
      {
        goto LABEL_81;
      }

      do
      {
        v20 = *--v17;
        v19 = v20;
        *v17 = 0;
        if (v20)
        {
          MEMORY[0x1AC55A040](v19, 0x1000C8077774924);
        }
      }

      while (v17 != v16);
      goto LABEL_80;
    }
  }

  return v12;
}

uint64_t mlir::complex::BitcastOp::fold(uint64_t a1)
{
  v1 = *(*(*a1 + 72) + 24);
  v2 = *(*a1 - 8) ^ *(v1 + 8);
  v3 = v1 | 4;
  if (v2 >= 8)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

BOOL mlir::complex::BitcastOp::verify(uint64_t **this)
{
  v51 = *MEMORY[0x1E69E9840];
  v1 = *this;
  v41 = *(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v40 = *(v1 - 1) & 0xFFFFFFFFFFFFFFF8;
  if (v41 == v40)
  {
    return 1;
  }

  if (!mlir::Type::isIntOrFloat(&v41) && *(*v41 + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v38[0] = "operand must be int/float/complex";
    v39 = 259;
    mlir::OpState::emitOpError(this, v38, v42);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
    if (v42[0])
    {
      mlir::InFlightDiagnostic::report(v42);
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v48;
        v7 = __p;
        if (v48 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v48 = v5;
        operator delete(v7);
      }

      v8 = v45;
      if (!v45)
      {
        goto LABEL_83;
      }

      v9 = v46;
      v10 = v45;
      if (v46 == v45)
      {
LABEL_82:
        v46 = v8;
        operator delete(v10);
LABEL_83:
        if (v43 != &v44)
        {
          free(v43);
        }

        return v2;
      }

      do
      {
        v12 = *--v9;
        v11 = v12;
        *v9 = 0;
        if (v12)
        {
          MEMORY[0x1AC55A040](v11, 0x1000C8077774924);
        }
      }

      while (v9 != v8);
LABEL_81:
      v10 = v45;
      goto LABEL_82;
    }

    return v2;
  }

  isIntOrFloat = mlir::Type::isIntOrFloat(&v40);
  v14 = v40;
  v15 = *(*v40 + 136);
  if (isIntOrFloat)
  {
    v16 = v41;
    v17 = *(*v41 + 136);
    if ((v17 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id) != (v15 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id))
    {
      if (v15 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

LABEL_65:
    v38[0] = "requires that either input or output has a complex type";
    v39 = 259;
    mlir::OpState::emitOpError(this, v38, v42);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
    if (v42[0])
    {
      mlir::InFlightDiagnostic::report(v42);
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
      }

      v32 = __p;
      if (__p)
      {
        v33 = v48;
        v34 = __p;
        if (v48 != __p)
        {
          do
          {
            v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v48 = v32;
        operator delete(v34);
      }

      v8 = v45;
      if (!v45)
      {
        goto LABEL_83;
      }

      v35 = v46;
      v10 = v45;
      if (v46 == v45)
      {
        goto LABEL_82;
      }

      do
      {
        v37 = *--v35;
        v36 = v37;
        *v35 = 0;
        if (v37)
        {
          MEMORY[0x1AC55A040](v36, 0x1000C8077774924);
        }
      }

      while (v35 != v8);
      goto LABEL_81;
    }

    return v2;
  }

  if (v15 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v38[0] = "result must be int/float/complex";
    v39 = 259;
    mlir::OpState::emitOpError(this, v38, v42);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
    if (v42[0])
    {
      mlir::InFlightDiagnostic::report(v42);
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v48;
        v20 = __p;
        if (v48 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v48 = v18;
        operator delete(v20);
      }

      v8 = v45;
      if (!v45)
      {
        goto LABEL_83;
      }

      v21 = v46;
      v10 = v45;
      if (v46 == v45)
      {
        goto LABEL_82;
      }

      do
      {
        v23 = *--v21;
        v22 = v23;
        *v21 = 0;
        if (v23)
        {
          MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
        }
      }

      while (v21 != v8);
      goto LABEL_81;
    }

    return v2;
  }

  v16 = v41;
  if (*(*v41 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    goto LABEL_65;
  }

LABEL_44:
  v40 = v16;
  v41 = v14;
  v16 = v14;
  v17 = &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
LABEL_45:
  if (v17 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v24 = v16;
  }

  else
  {
    v24 = 0;
  }

  v38[0] = v24;
  v42[0] = mlir::AffineMapAttr::getValue(v38);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v42);
  if (mlir::Type::getIntOrFloatBitWidth(&v40) == 2 * IntOrFloatBitWidth)
  {
    return 1;
  }

  v38[0] = "casting bitwidths do not match";
  v39 = 259;
  mlir::OpState::emitOpError(this, v38, v42);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
  if (v42[0])
  {
    mlir::InFlightDiagnostic::report(v42);
  }

  if (v50 == 1)
  {
    if (v49 != &v50)
    {
      free(v49);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v48;
      v28 = __p;
      if (v48 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v48 = v26;
      operator delete(v28);
    }

    v8 = v45;
    if (!v45)
    {
      goto LABEL_83;
    }

    v29 = v46;
    v10 = v45;
    if (v46 == v45)
    {
      goto LABEL_82;
    }

    do
    {
      v31 = *--v29;
      v30 = v31;
      *v29 = 0;
      if (v31)
      {
        MEMORY[0x1AC55A040](v30, 0x1000C8077774924);
      }
    }

    while (v29 != v8);
    goto LABEL_81;
  }

  return v2;
}

uint64_t mlir::complex::CreateOp::fold(uint64_t a1)
{
  v5 = *(*(*a1 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v5);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::ReOp,void>::id)
    {
      v3 = result;
      v5 = *(*(*a1 + 72) + 56);
      result = mlir::Value::getDefiningOp(&v5);
      if (result)
      {
        if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::ImOp,void>::id)
        {
          v4 = *(*(v3 + 72) + 24);
          if (v4 == *(*(result + 72) + 24))
          {
            return v4 | 4;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t mlir::complex::ImOp::fold(uint64_t a1, uint64_t a2)
{
  v2 = **(a2 + 48);
  if (v2)
  {
    v3 = *(*v2 + 136);
    if (v3 != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v2 = 0;
    }

    v8 = v2;
    if (v3 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v4 = a1;
      mlir::ArrayAttr::getValue(&v8);
      a1 = v4;
      if (v5 == 2)
      {
        return *(mlir::ArrayAttr::getValue(&v8) + 8) & 0xFFFFFFFFFFFFFFFBLL;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v7 = *(*(*a1 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v7);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::CreateOp,void>::id)
    {
      return *(*(result + 72) + 56) | 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t mlir::complex::ReOp::fold(uint64_t a1, uint64_t a2)
{
  v2 = **(a2 + 48);
  if (v2)
  {
    v3 = *(*v2 + 136);
    if (v3 != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v2 = 0;
    }

    v8 = v2;
    if (v3 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v4 = a1;
      mlir::ArrayAttr::getValue(&v8);
      a1 = v4;
      if (v5 == 2)
      {
        return *mlir::ArrayAttr::getValue(&v8) & 0xFFFFFFFFFFFFFFFBLL;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v7 = *(*(*a1 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v7);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::CreateOp,void>::id)
    {
      return *(*(result + 72) + 24) | 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::complex::AddOp::fold(uint64_t *a1)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v20 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v20);
  if (!DefiningOp)
  {
    v20 = *(*(*a1 + 72) + 56);
    v5 = mlir::Value::getDefiningOp(&v20);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_9:
    v6 = *a1;
    goto LABEL_10;
  }

  v3 = *a1;
  if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::SubOp,void>::id)
  {
    v4 = *(DefiningOp + 72);
    if (*(*(v3 + 72) + 56) == *(v4 + 56))
    {
      goto LABEL_7;
    }
  }

  v20 = *(*(v3 + 72) + 56);
  v5 = mlir::Value::getDefiningOp(&v20);
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_5:
  v6 = *a1;
  if (*(*(v5 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::SubOp,void>::id || (v4 = *(v5 + 72), *(*(v6 + 72) + 24) != *(v4 + 56)))
  {
LABEL_10:
    v20 = *(*(v6 + 72) + 56);
    result = mlir::Value::getDefiningOp(&v20);
    if (!result)
    {
      return result;
    }

    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::ConstantOp,void>::id)
    {
      return 0;
    }

    v17 = *(result + 16 * ((*(result + 44) >> 23) & 1) + 64);
    v16 = *mlir::ArrayAttr::getValue(&v17);
    Value = mlir::FloatAttr::getValue(&v20, &v16);
    v10 = v21[0];
    v11 = llvm::APFloatBase::PPCDoubleDouble(Value);
    v12 = v21[1];
    if (v11 != v10)
    {
      v12 = &v20;
    }

    if ((*(v12 + 28) & 7) == 3)
    {
      v15 = *(mlir::ArrayAttr::getValue(&v17) + 8);
      mlir::FloatAttr::getValue(&v18, &v15);
      v13 = v19[1];
      if (v11 != v19[0])
      {
        v13 = &v18;
      }

      v14 = (*(v13 + 28) & 7) == 3;
      if (v11 != v19[0])
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v19);
        if (v11 == v21[0])
        {
          goto LABEL_20;
        }

LABEL_23:
        llvm::detail::IEEEFloat::~IEEEFloat(v21);
        if (!v14)
        {
          return 0;
        }

        goto LABEL_24;
      }

      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v19);
      if (v11 != v21[0])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v14 = 0;
      if (v11 != v10)
      {
        goto LABEL_23;
      }
    }

LABEL_20:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v21);
    if (!v14)
    {
      return 0;
    }

LABEL_24:
    v7 = *(*(*a1 + 72) + 24);
    return v7 | 4;
  }

LABEL_7:
  v7 = *(v4 + 24);
  return v7 | 4;
}

uint64_t mlir::complex::SubOp::fold(uint64_t *a1)
{
  v19[3] = *MEMORY[0x1E69E9840];
  v18 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v18);
  if (!DefiningOp)
  {
    v3 = *a1;
    goto LABEL_6;
  }

  v3 = *a1;
  if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::AddOp,void>::id || (v4 = *(DefiningOp + 72), *(*(v3 + 72) + 56) != *(v4 + 56)))
  {
LABEL_6:
    v18 = *(*(v3 + 72) + 56);
    result = mlir::Value::getDefiningOp(&v18);
    if (!result)
    {
      return result;
    }

    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::ConstantOp,void>::id)
    {
      return 0;
    }

    v15 = *(result + 16 * ((*(result + 44) >> 23) & 1) + 64);
    v14 = *mlir::ArrayAttr::getValue(&v15);
    Value = mlir::FloatAttr::getValue(&v18, &v14);
    v8 = v19[0];
    v9 = llvm::APFloatBase::PPCDoubleDouble(Value);
    v10 = v19[1];
    if (v9 != v8)
    {
      v10 = &v18;
    }

    if ((*(v10 + 28) & 7) == 3)
    {
      v13 = *(mlir::ArrayAttr::getValue(&v15) + 8);
      mlir::FloatAttr::getValue(&v16, &v13);
      v11 = v17[1];
      if (v9 != v17[0])
      {
        v11 = &v16;
      }

      v12 = (*(v11 + 28) & 7) == 3;
      if (v9 != v17[0])
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v17);
        if (v9 == v19[0])
        {
          goto LABEL_16;
        }

LABEL_19:
        llvm::detail::IEEEFloat::~IEEEFloat(v19);
        if (!v12)
        {
          return 0;
        }

        goto LABEL_20;
      }

      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v17);
      if (v9 != v19[0])
      {
        goto LABEL_19;
      }
    }

    else
    {
      v12 = 0;
      if (v9 != v8)
      {
        goto LABEL_19;
      }
    }

LABEL_16:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v19);
    if (!v12)
    {
      return 0;
    }

LABEL_20:
    v5 = *(*(*a1 + 72) + 24);
    return v5 | 4;
  }

  v5 = *(v4 + 24);
  return v5 | 4;
}

uint64_t mlir::complex::NegOp::fold(uint64_t a1)
{
  v2 = *(*(*a1 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v2);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::NegOp,void>::id)
    {
      return *(*(result + 72) + 24) | 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::complex::LogOp::fold(uint64_t a1)
{
  v2 = *(*(*a1 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v2);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::ExpOp,void>::id)
    {
      return *(*(result + 72) + 24) | 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::complex::ExpOp::fold(uint64_t a1)
{
  v2 = *(*(*a1 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v2);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::LogOp,void>::id)
    {
      return *(*(result + 72) + 24) | 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::complex::ConjOp::fold(uint64_t a1)
{
  v2 = *(*(*a1 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v2);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::ConjOp,void>::id)
    {
      return *(*(result + 72) + 24) | 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::complex::MulOp::fold(uint64_t a1)
{
  v18[3] = *MEMORY[0x1E69E9840];
  v17 = *(*(*a1 + 72) + 56);
  result = mlir::Value::getDefiningOp(&v17);
  if (result)
  {
    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::ConstantOp,void>::id)
    {
      return 0;
    }

    v12 = *(result + 16 * ((*(result + 44) >> 23) & 1) + 64);
    v15 = *mlir::ArrayAttr::getValue(&v12);
    mlir::FloatAttr::getValue(&v17, &v15);
    v13 = *(mlir::ArrayAttr::getValue(&v12) + 8);
    Value = mlir::FloatAttr::getValue(&v15, &v13);
    v4 = v16[0];
    v6 = llvm::APFloatBase::PPCDoubleDouble(Value);
    v7 = v16[1];
    if (v6 != v4)
    {
      v7 = &v15;
    }

    if ((*(v7 + 28) & 7) != 3)
    {
      goto LABEL_18;
    }

    if (v6 == v18[0])
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v14, v18[0], 1);
    }

    llvm::detail::IEEEFloat::IEEEFloat(v14, v18[0], 1, v5);
    if (v6 == v18[0])
    {
      v10 = llvm::detail::DoubleAPFloat::compare(v18, v14, v8, v9);
      if (v6 != v14[0])
      {
LABEL_11:
        llvm::detail::IEEEFloat::~IEEEFloat(v14);
        if (v10 == 1)
        {
          goto LABEL_12;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v10 = llvm::detail::IEEEFloat::compare(v18, v14, v8, v9);
      if (v6 != v14[0])
      {
        goto LABEL_11;
      }
    }

    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v14);
    if (v10 == 1)
    {
LABEL_12:
      v11 = *(*(*a1 + 72) + 24) | 4;
      if (v6 == v16[0])
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }

LABEL_18:
    v11 = 0;
    if (v6 == v16[0])
    {
LABEL_13:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v16);
      if (v6 == v18[0])
      {
LABEL_14:
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v18);
        return v11;
      }

LABEL_20:
      llvm::detail::IEEEFloat::~IEEEFloat(v18);
      return v11;
    }

LABEL_19:
    llvm::detail::IEEEFloat::~IEEEFloat(v16);
    if (v6 == v18[0])
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  return result;
}

uint64_t mlir::complex::DivOp::fold(uint64_t a1, uint64_t a2)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v2 = *(*(a2 + 48) + 8);
  if (!v2)
  {
    return 0;
  }

  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v2 = 0;
  }

  v15 = v2;
  if (!v2)
  {
    return 0;
  }

  mlir::ArrayAttr::getValue(&v15);
  if (v4 != 2)
  {
    return 0;
  }

  v18 = *mlir::ArrayAttr::getValue(&v15);
  mlir::FloatAttr::getValue(&v20, &v18);
  v16 = *(mlir::ArrayAttr::getValue(&v15) + 8);
  Value = mlir::FloatAttr::getValue(&v18, &v16);
  v6 = v19[0];
  v8 = llvm::APFloatBase::PPCDoubleDouble(Value);
  v9 = v19[1];
  if (v8 != v6)
  {
    v9 = &v18;
  }

  if ((*(v9 + 28) & 7) != 3)
  {
    goto LABEL_20;
  }

  if (v8 == v21[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v17, v21[0], 1);
  }

  llvm::detail::IEEEFloat::IEEEFloat(v17, v21[0], 1, v7);
  if (v8 == v21[0])
  {
    v12 = llvm::detail::DoubleAPFloat::compare(v21, v17, v10, v11);
    if (v8 != v17[0])
    {
LABEL_12:
      llvm::detail::IEEEFloat::~IEEEFloat(v17);
      if (v12 == 1)
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v12 = llvm::detail::IEEEFloat::compare(v21, v17, v10, v11);
    if (v8 != v17[0])
    {
      goto LABEL_12;
    }
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v17);
  if (v12 == 1)
  {
LABEL_13:
    v13 = *(*(*a1 + 72) + 24) | 4;
    if (v8 == v19[0])
    {
      goto LABEL_14;
    }

LABEL_21:
    llvm::detail::IEEEFloat::~IEEEFloat(v19);
    if (v8 == v21[0])
    {
      goto LABEL_15;
    }

LABEL_22:
    llvm::detail::IEEEFloat::~IEEEFloat(v21);
    return v13;
  }

LABEL_20:
  v13 = 0;
  if (v8 != v19[0])
  {
    goto LABEL_21;
  }

LABEL_14:
  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v19);
  if (v8 != v21[0])
  {
    goto LABEL_22;
  }

LABEL_15:
  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v21);
  return v13;
}

BOOL mlir::complex::AbsOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v2);
}

uint64_t mlir::complex::AbsOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v15[0] = a4;
  v15[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (*(a11 + 12))
      {
        v12 = 0;
LABEL_6:
        bzero((*a11 + 8 * v12), 8 - 8 * v12);
        goto LABEL_7;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), 1uLL, 8);
      v12 = *(a11 + 8);
      if (v12 != 1)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    *(a11 + 8) = 1;
  }

  v14 = *(mlir::ValueRange::dereference_iterator(v15, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  **a11 = mlir::AffineMapAttr::getValue(&v14);
  return 1;
}

BOOL mlir::complex::AbsOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v20[0] = v2;
  if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
  {
    return 0;
  }

  v4 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  if (!mlir::complex::__mlir_ods_local_type_constraint_ComplexOps2(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
  {
    return 0;
  }

  v20[0] = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  Value = mlir::AffineMapAttr::getValue(v20);
  if (*(*this + 9))
  {
    v7 = *this - 16;
  }

  else
  {
    v7 = 0;
  }

  if (Value == (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 1;
  }

  v18 = "failed to verify that complex element type matches result type";
  v19 = 259;
  mlir::OpState::emitOpError(this, &v18, v20);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  v9 = result;
  if (v20[0])
  {
    mlir::InFlightDiagnostic::report(v20);
    result = v9;
  }

  if (v28 == 1)
  {
    if (v27 != &v28)
    {
      free(v27);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v26;
      v12 = __p;
      if (v26 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v26 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v23;
    if (v23)
    {
      v14 = v24;
      v15 = v23;
      if (v24 != v23)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v23;
      }

      v24 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v21 != &v22)
    {
      free(v21);
      return v9;
    }
  }

  return result;
}

BOOL mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(mlir::Operation *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v73 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    goto LABEL_2;
  }

  v34 = a3;
  v35 = a4;
  v36 = a1;
  v62[0] = a2;
  v37 = *(*mlir::AffineMapAttr::getValue(v62) + 136);
  if (v37 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return 1;
  }

  v25 = 1;
  if (v37 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id)
  {
    a1 = v36;
    a4 = v35;
    a3 = v34;
    if (v37 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
LABEL_2:
      v58 = 261;
      v57[0] = a3;
      v57[1] = a4;
      mlir::Operation::emitOpError(a1, v57, v62);
      if (v62[0])
      {
        v59 = 3;
        v60 = " #";
        v61 = 2;
        v7 = &v59;
        v8 = v63;
        if (v64 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v64 > &v59)
          {
            v53 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v8 = v63;
            v7 = (v63 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v7 = &v59;
            v8 = v63;
          }
        }

        v9 = &v8[24 * v64];
        v10 = *v7;
        *(v9 + 2) = *(v7 + 2);
        *v9 = v10;
        v11 = ++v64;
        if (v62[0])
        {
          v59 = 5;
          v60 = a5;
          v12 = &v59;
          v13 = v63;
          if (v11 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v11 > &v59)
            {
              v54 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v11 + 1, 24);
              v13 = v63;
              v12 = (v63 + v54);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v11 + 1, 24);
              v12 = &v59;
              v13 = v63;
            }
          }

          v14 = &v13[24 * v64];
          v15 = *v12;
          *(v14 + 2) = *(v12 + 2);
          *v14 = v15;
          v16 = ++v64;
          if (v62[0])
          {
            v59 = 3;
            v60 = " must be complex type with floating-point elements, but got ";
            v61 = 60;
            v17 = &v59;
            v18 = v63;
            if (v16 >= v65)
            {
              if (v63 <= &v59 && v63 + 24 * v16 > &v59)
              {
                v55 = &v59 - v63;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v16 + 1, 24);
                v18 = v63;
                v17 = (v63 + v55);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v16 + 1, 24);
                v17 = &v59;
                v18 = v63;
              }
            }

            v19 = &v18[24 * v64];
            v20 = *v17;
            *(v19 + 2) = *(v17 + 2);
            *v19 = v20;
            ++v64;
            if (v62[0])
            {
              v21 = &v59;
              mlir::DiagnosticArgument::DiagnosticArgument(&v59, a2);
              v22 = v63;
              if (v64 >= v65)
              {
                if (v63 <= &v59 && v63 + 24 * v64 > &v59)
                {
                  v56 = &v59 - v63;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
                  v22 = v63;
                  v21 = (v63 + v56);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
                  v21 = &v59;
                  v22 = v63;
                }
              }

              v23 = &v22[24 * v64];
              v24 = *v21;
              *(v23 + 2) = *(v21 + 2);
              *v23 = v24;
              ++v64;
            }
          }
        }
      }

      v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
      if (v62[0])
      {
        mlir::InFlightDiagnostic::report(v62);
      }

      if (v72 == 1)
      {
        if (v71 != &v72)
        {
          free(v71);
        }

        v26 = __p;
        if (__p)
        {
          v27 = v70;
          v28 = __p;
          if (v70 != __p)
          {
            do
            {
              v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
            }

            while (v27 != v26);
            v28 = __p;
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
              v33 = *--v30;
              v32 = v33;
              *v30 = 0;
              if (v33)
              {
                MEMORY[0x1AC55A040](v32, 0x1000C8077774924);
              }
            }

            while (v30 != v29);
            v31 = v67;
          }

          v68 = v29;
          operator delete(v31);
        }

        if (v63 != v66)
        {
          free(v63);
        }
      }
    }
  }

  return v25;
}

BOOL mlir::complex::__mlir_ods_local_type_constraint_ComplexOps2(mlir::Operation *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = *(*a2 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v5 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    v48 = 261;
    v47[0] = a3;
    v47[1] = a4;
    mlir::Operation::emitOpError(a1, v47, v52);
    if (v52[0])
    {
      v49 = 3;
      v50 = " #";
      v51 = 2;
      v14 = &v49;
      v15 = v53;
      if (v54 >= v55)
      {
        if (v53 <= &v49 && v53 + 24 * v54 > &v49)
        {
          v43 = &v49 - v53;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v54 + 1, 24);
          v15 = v53;
          v14 = (v53 + v43);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v54 + 1, 24);
          v14 = &v49;
          v15 = v53;
        }

        v17 = a2;
        v16 = a5;
      }

      else
      {
        v16 = a5;
        v17 = a2;
      }

      v18 = &v15[24 * v54];
      v19 = *v14;
      *(v18 + 2) = *(v14 + 2);
      *v18 = v19;
      v20 = ++v54;
      if (v52[0])
      {
        v49 = 5;
        v50 = v16;
        v21 = &v49;
        v22 = v53;
        if (v20 >= v55)
        {
          if (v53 <= &v49 && v53 + 24 * v20 > &v49)
          {
            v44 = &v49 - v53;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v20 + 1, 24);
            v22 = v53;
            v21 = (v53 + v44);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v20 + 1, 24);
            v21 = &v49;
            v22 = v53;
          }

          v17 = a2;
        }

        v23 = &v22[24 * v54];
        v24 = *v21;
        *(v23 + 2) = *(v21 + 2);
        *v23 = v24;
        v25 = ++v54;
        if (v52[0])
        {
          v49 = 3;
          v50 = " must be floating-point, but got ";
          v51 = 33;
          v26 = &v49;
          v27 = v53;
          if (v25 >= v55)
          {
            if (v53 <= &v49 && v53 + 24 * v25 > &v49)
            {
              v45 = &v49 - v53;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v25 + 1, 24);
              v27 = v53;
              v26 = (v53 + v45);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v25 + 1, 24);
              v26 = &v49;
              v27 = v53;
            }

            v17 = a2;
          }

          v28 = &v27[24 * v54];
          v29 = *v26;
          *(v28 + 2) = *(v26 + 2);
          *v28 = v29;
          ++v54;
          if (v52[0])
          {
            v30 = &v49;
            mlir::DiagnosticArgument::DiagnosticArgument(&v49, v17);
            v31 = v53;
            if (v54 >= v55)
            {
              if (v53 <= &v49 && v53 + 24 * v54 > &v49)
              {
                v46 = &v49 - v53;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v54 + 1, 24);
                v31 = v53;
                v30 = (v53 + v46);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v54 + 1, 24);
                v30 = &v49;
                v31 = v53;
              }
            }

            v32 = &v31[24 * v54];
            v33 = *v30;
            *(v32 + 2) = *(v30 + 2);
            *v32 = v33;
            ++v54;
          }
        }
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v52);
    v34 = result;
    if (v52[0])
    {
      mlir::InFlightDiagnostic::report(v52);
      result = v34;
    }

    if (v62 == 1)
    {
      if (v61 != &v62)
      {
        free(v61);
        result = v34;
      }

      v35 = __p;
      if (__p)
      {
        v36 = v60;
        v37 = __p;
        if (v60 != __p)
        {
          do
          {
            v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
          }

          while (v36 != v35);
          v37 = __p;
        }

        v60 = v35;
        operator delete(v37);
        result = v34;
      }

      v38 = v57;
      if (v57)
      {
        v39 = v58;
        v40 = v57;
        if (v58 != v57)
        {
          do
          {
            v42 = *--v39;
            v41 = v42;
            *v39 = 0;
            if (v42)
            {
              MEMORY[0x1AC55A040](v41, 0x1000C8077774924);
            }
          }

          while (v39 != v38);
          v40 = v57;
        }

        v58 = v38;
        operator delete(v40);
        result = v34;
      }

      if (v53 != v56)
      {
        free(v53);
        return v34;
      }
    }
  }

  return result;
}

BOOL mlir::complex::AbsOp::parse(uint64_t a1, uint64_t a2)
{
  v42[26] = *MEMORY[0x1E69E9840];
  memset(v40, 0, sizeof(v40));
  v41 = 0;
  v39[0] = v40;
  v39[1] = 1;
  v37 = 0;
  v38 = 0;
  v35 = &v37;
  v36 = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v40, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 408))(a1, "fastmath", 8) & 1) == 0)
  {
    goto LABEL_8;
  }

  if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v38, 0))
  {
    return 0;
  }

  if (v38)
  {
    v5 = *(a2 + 256);
    if (!v5)
    {
      operator new();
    }

    *v5 = v38;
  }

LABEL_8:
  v32[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  v42[0] = a1;
  v42[1] = v32;
  v42[2] = a2;
  v7 = mlir::NamedAttrList::get(a2 + 112, **(v6 + 96));
  if (v7)
  {
    if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v7, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::AbsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v42))
    {
      return 0;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v42[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(a1, v42))
  {
    return 0;
  }

  v37 = v42[0];
  v31 = v35;
  if (v36)
  {
    v8 = 8 * v36;
    v9 = v35;
    while (1)
    {
      v10 = *v9;
      v34 = v10;
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        break;
      }

      v42[0] = v10;
      v11 = *(*mlir::AffineMapAttr::getValue(v42) + 136);
      v12 = v11 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
      v13 = v12 || v11 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
      v14 = v13 || v11 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
      v15 = v14 || v11 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
      v16 = v15 || v11 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
      v17 = v16 || v11 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
      v18 = v17 || v11 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
      v19 = v18 || v11 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
      v20 = v19 || v11 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
      v21 = v20 || v11 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
      v22 = v21 || v11 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
      v23 = v22 || v11 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
      v24 = v23 || v11 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
      v25 = v24 || v11 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
      if (!v25 && v11 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
      {
        break;
      }

      ++v9;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_66;
      }
    }

    v26 = (*(*a1 + 16))(a1);
    v33 = 257;
    (*(*a1 + 24))(v42, a1, v26, v32);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v42, "'complex' must be complex type with floating-point elements, but got ");
    mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v27, &v34);
    v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v42);
    return v29;
  }

  else
  {
LABEL_66:
    v32[0] = *v31;
    v42[0] = mlir::AffineMapAttr::getValue(v32);
    mlir::OperationState::addTypes(a2, v42, 1);
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v39, &v35, v4, a2 + 16);
  }
}

void mlir::complex::AbsOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v29[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  Context = mlir::Attribute::getContext((*this + 24));
  if (v6 != mlir::arith::FastMathFlagsAttr::get(Context, 0))
  {
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
    if (v10[3] - v11 > 7uLL)
    {
      *v11 = 0x6874616D74736166;
      v10[4] += 8;
    }

    else
    {
      llvm::raw_ostream::write(v10, "fastmath", 8uLL);
    }

    v27 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
    if (((*(*a2 + 56))(a2) & 1) == 0)
    {
      v12 = (*(*a2 + 16))(a2);
      v13 = (*(*v12 + 80))(v12) + v12[4] - v12[2];
      mlir::arith::FastMathFlagsAttr::print(&v27, a2);
      if (v13 == (*(*v12 + 80))(v12) + v12[4] - v12[2])
      {
        (*(*a2 + 40))(a2, v27);
      }
    }
  }

  v27 = v29;
  v29[0] = "fastmath";
  v29[1] = 8;
  v28 = 0x200000001;
  v14 = mlir::Attribute::getContext((*this + 24));
  v15 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v15 && v15 == mlir::arith::FastMathFlagsAttr::get(v14, 0))
  {
    v16 = v28;
    if (v28 >= HIDWORD(v28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v28 + 1, 16);
      v16 = v28;
    }

    v17 = v27 + 16 * v16;
    *v17 = "fastmath";
    v17[1] = 8;
    LODWORD(v28) = v28 + 1;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v19, v27, v28);
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
    llvm::raw_ostream::write(v22, ":", 1uLL);
  }

  else
  {
    *v23 = 58;
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v27 != v29)
  {
    free(v27);
  }
}