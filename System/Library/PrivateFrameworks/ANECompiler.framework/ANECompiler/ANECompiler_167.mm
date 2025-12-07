void mlir::pdl_interp::CheckTypesOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v31[4] = *MEMORY[0x1E69E9840];
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
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if ((v8[3] - v9) > 2)
  {
    *(v9 + 2) = 101;
    *v9 = 29281;
    v8[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v8, "are", 3uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v29 = v31;
  v31[0] = "types";
  v31[1] = 5;
  v30 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v13, v29, v30);
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = v16[4];
  if (v16[3] - v17 > 1uLL)
  {
    *v17 = 15917;
    v16[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v16, "->", 2uLL);
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v20 = v28;
    if (!v28)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v20 = v28;
    if (!v28)
    {
      goto LABEL_24;
    }
  }

  v21 = AttrDictionary;
  (*(*a2 + 176))(a2, *(AttrDictionary + 24));
  v22 = v20 - 1;
  if (v22)
  {
    v23 = (v21 + 56);
    do
    {
      v25 = (*(*a2 + 16))(a2);
      v26 = v25[4];
      if (v25[3] - v26 <= 1uLL)
      {
        llvm::raw_ostream::write(v25, ", ", 2uLL);
      }

      else
      {
        *v26 = 8236;
        v25[4] += 2;
      }

      v24 = *v23;
      v23 += 4;
      (*(*a2 + 176))(a2, v24);
      --v22;
    }

    while (v22);
  }

LABEL_24:
  if (v29 != v31)
  {
    free(v29);
  }
}

uint64_t mlir::pdl_interp::CreateAttributeOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return (*(*a1 + 48))(a1, v2) & 1;
}

void mlir::pdl_interp::CreateAttributeOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id);

  mlir::pdl_interp::CreateAttributeOp::build(SingletonImpl, a2, SingletonImpl, a3);
}

void mlir::pdl_interp::CreateAttributeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 256);
  if (!v6)
  {
    operator new();
  }

  *v6 = a4;
  v7 = *(a2 + 72);
  if (v7 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v7 + 1, 8);
    LODWORD(v7) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v7) = a3;
  ++*(a2 + 72);
}

BOOL mlir::pdl_interp::CreateAttributeOp::verifyInvariantsImpl(uint64_t **this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if ((*this)[2 * ((*(*this + 11) >> 23) & 1) + 8])
  {
    v3 = *(v2 + 9);
    v4 = v2 - 2;
    if (v3)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
    return mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
  }

  else
  {
    v17 = "requires attribute 'value'";
    v18 = 259;
    mlir::OpState::emitOpError(this, &v17, v19);
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
              MEMORY[0x1AC55A040](v14, 0x1000C8077774924);
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

uint64_t mlir::pdl_interp::CreateAttributeOp::parse(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  if (((*(*a1 + 440))(a1, &v10, 0) & 1) == 0)
  {
    return 0;
  }

  if (v10)
  {
    v4 = *(a2 + 256);
    if (!v4)
    {
      operator new();
    }

    *v4 = v10;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 496))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  mlir::NamedAttrList::get(a2 + 112, **(*(a2 + 8) + 96));
  v5 = (*(*a1 + 32))(a1);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v5);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id);
  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v8 + 1, 8);
    LODWORD(v8) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v8) = SingletonImpl;
  ++*(a2 + 72);
  return 1;
}

void mlir::pdl_interp::CreateAttributeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v11[4] = *MEMORY[0x1E69E9840];
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

  (*(*a2 + 40))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v9 = v11;
  v11[0] = "value";
  v11[1] = 5;
  v10 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 200))(a2, Value, v7, v9, v10);
  if (v9 != v11)
  {
    free(v9);
  }
}

BOOL mlir::pdl_interp::CreateOperationOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v87 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v71 = v6;
  if (!v6)
  {
    a3(&v75, a4);
    if (v75)
    {
      v72 = 3;
      v73 = "expected DictionaryAttr to set properties";
      v74 = 41;
      v26 = &v72;
      v27 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v72 && v77 + 24 * v78 > &v72)
        {
          v64 = &v72 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v27 = v77;
          v26 = (v77 + v64);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v26 = &v72;
          v27 = v77;
        }
      }

      v28 = &v27[24 * v78];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v78;
      if (v75)
      {
        mlir::InFlightDiagnostic::report(&v75);
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

    v30 = __p;
    if (__p)
    {
      v31 = v84;
      v32 = __p;
      if (v84 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v84 = v30;
      operator delete(v32);
    }

    v21 = v81;
    if (!v81)
    {
      goto LABEL_70;
    }

    v33 = v82;
    v23 = v81;
    if (v82 == v81)
    {
LABEL_69:
      v82 = v21;
      operator delete(v23);
LABEL_70:
      if (v77 != v80)
      {
        free(v77);
      }

      return 0;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
      }
    }

    while (v33 != v21);
LABEL_68:
    v23 = v81;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v71, "inferredResultTypes", 0x13uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(&v75, a4);
      if (v75)
      {
        v72 = 3;
        v74 = 64;
        v10 = &v72;
        v11 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v65 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v11 = v77;
            v10 = (v77 + v65);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v10 = &v72;
            v11 = v77;
          }
        }

        v12 = &v11[24 * v78];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v78;
        if (v75)
        {
          v14 = &v72;
          mlir::DiagnosticArgument::DiagnosticArgument(&v72, v9);
          v15 = v77;
          if (v78 >= v79)
          {
            if (v77 <= &v72 && v77 + 24 * v78 > &v72)
            {
              v66 = &v72 - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v15 = v77;
              v14 = (v77 + v66);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v14 = &v72;
              v15 = v77;
            }
          }

          v16 = &v15[24 * v78];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v78;
          if (v75)
          {
            mlir::InFlightDiagnostic::report(&v75);
          }
        }
      }

      if ((v86 & 1) == 0)
      {
        return 0;
      }

      if (v85 != &v86)
      {
        free(v85);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v84;
        v20 = __p;
        if (v84 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v84 = v18;
        operator delete(v20);
      }

      v21 = v81;
      if (!v81)
      {
        goto LABEL_70;
      }

      v22 = v82;
      v23 = v81;
      if (v82 == v81)
      {
        goto LABEL_69;
      }

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
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v36 = mlir::DictionaryAttr::get(&v71, "inputAttributeNames", 0x13uLL);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v37 = v36;
      a3(&v75, a4);
      if (v75)
      {
        v72 = 3;
        v74 = 64;
        v38 = &v72;
        v39 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v67 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v39 = v77;
            v38 = (v77 + v67);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v38 = &v72;
            v39 = v77;
          }
        }

        v40 = &v39[24 * v78];
        v41 = *v38;
        *(v40 + 2) = *(v38 + 2);
        *v40 = v41;
        ++v78;
        if (v75)
        {
          v42 = &v72;
          mlir::DiagnosticArgument::DiagnosticArgument(&v72, v37);
          v43 = v77;
          if (v78 >= v79)
          {
            if (v77 <= &v72 && v77 + 24 * v78 > &v72)
            {
              v68 = &v72 - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v43 = v77;
              v42 = (v77 + v68);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v42 = &v72;
              v43 = v77;
            }
          }

          v44 = &v43[24 * v78];
          v45 = *v42;
          *(v44 + 2) = *(v42 + 2);
          *v44 = v45;
          ++v78;
          if (v75)
          {
            mlir::InFlightDiagnostic::report(&v75);
          }
        }
      }

      if ((v86 & 1) == 0)
      {
        return 0;
      }

      if (v85 != &v86)
      {
        free(v85);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v84;
        v48 = __p;
        if (v84 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v84 = v46;
        operator delete(v48);
      }

      v21 = v81;
      if (!v81)
      {
        goto LABEL_70;
      }

      v49 = v82;
      v23 = v81;
      if (v82 == v81)
      {
        goto LABEL_69;
      }

      do
      {
        v51 = *--v49;
        v50 = v51;
        *v49 = 0;
        if (v51)
        {
          MEMORY[0x1AC55A040](v50, 0x1000C8077774924);
        }
      }

      while (v49 != v21);
      goto LABEL_68;
    }

    a1[1] = v36;
  }

  v52 = mlir::DictionaryAttr::get(&v71, "name", 4uLL);
  if (v52)
  {
    if (*(*v52 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v53 = v52;
      a3(&v75, a4);
      if (v75)
      {
        v72 = 3;
        v74 = 49;
        v54 = &v72;
        v55 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v69 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v55 = v77;
            v54 = (v77 + v69);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v54 = &v72;
            v55 = v77;
          }
        }

        v56 = &v55[24 * v78];
        v57 = *v54;
        *(v56 + 2) = *(v54 + 2);
        *v56 = v57;
        ++v78;
        if (v75)
        {
          v58 = &v72;
          mlir::DiagnosticArgument::DiagnosticArgument(&v72, v53);
          v59 = v77;
          if (v78 >= v79)
          {
            if (v77 <= &v72 && v77 + 24 * v78 > &v72)
            {
              v70 = &v72 - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v59 = v77;
              v58 = (v77 + v70);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v58 = &v72;
              v59 = v77;
            }
          }

          v60 = &v59[24 * v78];
          v61 = *v58;
          *(v60 + 2) = *(v58 + 2);
          *v60 = v61;
          ++v78;
          if (v75)
          {
            mlir::InFlightDiagnostic::report(&v75);
          }
        }
      }

      if (v86 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v76);
      }

      return 0;
    }

    a1[2] = v52;
  }

  v62 = mlir::DictionaryAttr::get(&v71, "operandSegmentSizes", 0x13uLL);
  if (!v62)
  {
    v62 = mlir::DictionaryAttr::get(&v71, "operand_segment_sizes", 0x15uLL);
    if (!v62)
    {
      return 1;
    }
  }

  return (mlir::convertFromAttribute(a1 + 3, 3, v62, a3, a4) & 1) != 0;
}

uint64_t mlir::pdl_interp::CreateOperationOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v39[6] = *MEMORY[0x1E69E9840];
  v36 = a1;
  v37 = v39;
  v38 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v36, "inferredResultTypes", 0x13uLL, *a2);
    v6 = v38;
    if (v38 >= HIDWORD(v38))
    {
      v30 = NamedAttr;
      v31 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 16);
      v5 = v31;
      NamedAttr = v30;
      v6 = v38;
    }

    v7 = (v37 + 16 * v6);
    *v7 = NamedAttr;
    v7[1] = v5;
    LODWORD(v38) = v38 + 1;
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = mlir::Builder::getNamedAttr(&v36, "inputAttributeNames", 0x13uLL, v8);
    v11 = v38;
    if (v38 >= HIDWORD(v38))
    {
      v32 = v9;
      v33 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 16);
      v10 = v33;
      v9 = v32;
      v11 = v38;
    }

    v12 = (v37 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    LODWORD(v38) = v38 + 1;
  }

  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v36, "name", 4uLL, v13);
    v16 = v38;
    if (v38 >= HIDWORD(v38))
    {
      v34 = v14;
      v35 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 16);
      v15 = v35;
      v14 = v34;
      v16 = v38;
    }

    v17 = (v37 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    LODWORD(v38) = v38 + 1;
  }

  v18 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 3), 3);
  v19 = mlir::Builder::getNamedAttr(&v36, "operandSegmentSizes", 0x13uLL, v18);
  v21 = v38;
  if (v38 >= HIDWORD(v38))
  {
    v28 = v19;
    v29 = v20;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 16);
    v20 = v29;
    v19 = v28;
    v21 = v38;
  }

  v22 = (v37 + 16 * v21);
  *v22 = v19;
  v22[1] = v20;
  v23 = __CFADD__(v38, 1);
  v24 = (v38 + 1);
  LODWORD(v38) = v38 + 1;
  if (v23)
  {
    DictionaryAttr = 0;
    v26 = v37;
    if (v37 == v39)
    {
      return DictionaryAttr;
    }

    goto LABEL_20;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v36, v37, v24);
  v26 = v37;
  if (v37 != v39)
  {
LABEL_20:
    free(v26);
  }

  return DictionaryAttr;
}

unint64_t mlir::pdl_interp::CreateOperationOp::computePropertiesHash(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = *(a1 + 28);
  v10 = __ROR8__(v9 + 12, 12);
  v11 = 0x9DDFEA08EB382D69 * (a1[3] ^ 0xFF51AFD7ED558CCDLL ^ v10);
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v21 = 0;
  v22 = 0xFF51AFD7ED558CCDLL;
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v18[0] = v3;
  v18[1] = v6;
  v16 = 0;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v16, v19, v20, 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47)));
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v17, v13, v20, v12 ^ v9);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v18, v17, v14, v20);
}

uint64_t mlir::pdl_interp::CreateOperationOp::getInherentAttr(mlir::MLIRContext *a1, void *a2, char *__s1, size_t __n)
{
  if (__n == 4)
  {
    if (!memcmp(__s1, "name", 4uLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n == 21)
  {
    v9 = a1;
    if (!memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return mlir::detail::DenseArrayAttrImpl<int>::get(v9, (a2 + 3), 3);
    }

    return 0;
  }

  if (__n != 19)
  {
    return 0;
  }

  if (*__s1 == 0x6465727265666E69 && *(__s1 + 1) == 0x7954746C75736552 && *(__s1 + 11) == 0x7365707954746C75)
  {
    return *a2;
  }

  if (*__s1 != 0x7474417475706E69 || *(__s1 + 1) != 0x614E657475626972 || *(__s1 + 11) != 0x73656D614E657475)
  {
    v9 = a1;
    if (!memcmp(__s1, "operandSegmentSizes", 0x13uLL))
    {
      return mlir::detail::DenseArrayAttrImpl<int>::get(v9, (a2 + 3), 3);
    }

    return 0;
  }

  return a2[1];
}

uint64_t mlir::pdl_interp::CreateOperationOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 == 4)
  {
    result = memcmp(__s1, "name", 4uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v12 = a4;
        }

        else
        {
          v12 = 0;
        }

        *(v5 + 16) = v12;
      }

      else
      {
        *(v5 + 16) = 0;
      }
    }
  }

  else
  {
    if (a3 == 21)
    {
      result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (a3 != 19)
      {
        return result;
      }

      if (*__s1 == 0x6465727265666E69 && *(__s1 + 1) == 0x7954746C75736552 && *(__s1 + 11) == 0x7365707954746C75)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v13 = a4;
          }

          else
          {
            v13 = 0;
          }

          *result = v13;
        }

        else
        {
          *result = 0;
        }

        return result;
      }

      if (*__s1 == 0x7474417475706E69 && *(__s1 + 1) == 0x614E657475626972 && *(__s1 + 11) == 0x73656D614E657475)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
          {
            v14 = a4;
          }

          else
          {
            v14 = 0;
          }

          *(result + 8) = v14;
        }

        else
        {
          *(result + 8) = 0;
        }

        return result;
      }

      result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
      if (result)
      {
        return result;
      }
    }

    if (a4)
    {
      result = mlir::detail::DenseArrayAttrImpl<int>::classof(a4);
      if (result)
      {
        v10 = a4;
      }

      else
      {
        v10 = 0;
      }

      v15 = v10;
      if (v10)
      {
        result = mlir::AffineBinaryOpExpr::getLHS(&v15);
        if (result == 3)
        {
          result = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v15);
          if (v11)
          {
            return memmove((v5 + 24), result, 4 * v11);
          }
        }
      }
    }
  }

  return result;
}

BOOL mlir::pdl_interp::CreateOperationOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v8, "inferredResultTypes", 0x13, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps4(v9, "inputAttributeNames", 0x13, a3, a4))
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v10, "name", 4, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::pdl_interp::CreateOperationOp::readProperties(uint64_t a1, uint64_t a2)
{
  v10[26] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) || !mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v3 + 1) || !mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 2))
  {
    return 0;
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v9 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v9))
    {
      return 0;
    }

    if (mlir::AffineBinaryOpExpr::getLHS(&v9) >= 4)
    {
      v7 = "size mismatch for operand/result_segment_size";
      v8 = 259;
      (*(*a1 + 16))(v10, a1, &v7);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
      return 0;
    }

    v4 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v9);
    if (v5)
    {
      memmove(v3 + 3, v4, 4 * v5);
    }
  }

  return (*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 6, 3) & 1) != 0;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::pdl_interp::CreateOperationOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = (v4 + 64);
  (*(*a2 + 24))(a2, v6);
  (*(*a2 + 16))(a2, *(v5 + 1));
  (*(*a2 + 16))(a2, *(v5 + 2));
  if ((*(*a2 + 104))(a2) <= 5)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (v5 + 6), 3);
    (*(*a2 + 16))(a2, v8);
  }

  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, v5 + 6, 3);
  }

  return result;
}

__n128 mlir::pdl_interp::CreateOperationOp::build(mlir::MLIRContext **a1, uint64_t a2, size_t a3, size_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13)
{
  v13 = a7;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
  mlir::pdl_interp::CreateOperationOp::build(a1, a2, SingletonImpl, a3, a4, a9, a10, v22, a11, a12, a13, a5, a6, v13);
  return result;
}

void mlir::pdl_interp::CreateOperationOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, size_t a4, size_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, unsigned __int8 a14)
{
  v14 = a7;
  mlir::OperationState::addOperands(a2, a6, a7);
  mlir::OperationState::addOperands(a2, a9, a10);
  mlir::OperationState::addOperands(a2, a12, a13);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  v19[6] = v14;
  v19[7] = a10;
  v19[8] = a13;
  v29 = 261;
  v28[0] = a4;
  v28[1] = a5;
  StringAttr = mlir::Builder::getStringAttr(a1, v28);
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 16) = StringAttr;
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 8) = a11;
  if (a14)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v21);
    v26 = *(a2 + 256);
    if (!v26)
    {
      operator new();
    }

    *v26 = UnitAttr;
    v24 = *(a2 + 72);
    if (v24 >= *(a2 + 76))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v24 = *(a2 + 72);
    if (v24 >= *(a2 + 76))
    {
LABEL_7:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v24 + 1, 8);
      LODWORD(v24) = *(a2 + 72);
    }
  }

  *(*(a2 + 64) + 8 * v24) = a3;
  ++*(a2 + 72);
}

BOOL mlir::pdl_interp::CreateOperationOp::verifyInvariantsImpl(uint64_t **this)
{
  v125 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v5 = v3[8];
  v6 = v3[9];
  v4 = v3 + 8;
  if (!v6)
  {
    v108 = "requires attribute 'inputAttributeNames'";
    v110 = 259;
    mlir::OpState::emitOpError(this, &v108, v114);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v114);
    if (v114[0])
    {
      mlir::InFlightDiagnostic::report(v114);
    }

    if (v124 != 1)
    {
      return v18;
    }

    if (v123 != &v124)
    {
      free(v123);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v122;
      v21 = __p;
      if (v122 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v122 = v19;
      operator delete(v21);
    }

    v22 = v119;
    if (v119)
    {
      v23 = v120;
      v24 = v119;
      if (v120 != v119)
      {
        do
        {
          v26 = *--v23;
          v25 = v26;
          *v23 = 0;
          if (v26)
          {
            MEMORY[0x1AC55A040](v25, 0x1000C8077774924);
          }
        }

        while (v23 != v22);
        goto LABEL_96;
      }

LABEL_97:
      v120 = v22;
      operator delete(v24);
    }

LABEL_98:
    if (v115 != v118)
    {
      free(v115);
    }

    return v18;
  }

  v7 = v4[2];
  if (!v7)
  {
    v108 = "requires attribute 'name'";
    v110 = 259;
    mlir::OpState::emitOpError(this, &v108, v114);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v114);
    if (v114[0])
    {
      mlir::InFlightDiagnostic::report(v114);
    }

    if (v124 != 1)
    {
      return v18;
    }

    if (v123 != &v124)
    {
      free(v123);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v122;
      v29 = __p;
      if (v122 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v122 = v27;
      operator delete(v29);
    }

    v22 = v119;
    if (v119)
    {
      v30 = v120;
      v24 = v119;
      if (v120 != v119)
      {
        do
        {
          v32 = *--v30;
          v31 = v32;
          *v30 = 0;
          if (v32)
          {
            MEMORY[0x1AC55A040](v31, 0x1000C8077774924);
          }
        }

        while (v30 != v22);
LABEL_96:
        v24 = v119;
        goto LABEL_97;
      }

      goto LABEL_97;
    }

    goto LABEL_98;
  }

  v114[0] = v2;
  if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v7, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v114))
  {
    return 0;
  }

  v114[0] = *this;
  if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps4(v6, "inputAttributeNames", 0x13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v114))
  {
    return 0;
  }

  v114[0] = *this;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v5, "inferredResultTypes", 0x13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v114))
  {
    return 0;
  }

  v8 = *(*this + 11);
  v9 = LODWORD((*this)[2 * ((v8 >> 23) & 1) + 11]);
  if ((v8 & 0x800000) != 0)
  {
    v10 = (*this)[9];
    if (v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = 0;
    if (v9)
    {
LABEL_8:
      v11 = 0;
      v12 = v10 + 24;
      while (mlir::pdl::__mlir_ods_local_type_constraint_PDLOps8(*this, *(*v12 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v11))
      {
        ++v11;
        v12 += 32;
        if (v9 == v11)
        {
          goto LABEL_11;
        }
      }

      return 0;
    }
  }

LABEL_11:
  ODSOperands = mlir::memref::ReinterpretCastOp::getODSOperands(this, 1u);
  if (v14)
  {
    v15 = ODSOperands;
    v16 = v14;
    v17 = 0;
    do
    {
      v33 = *(*(v15 + 32 * v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(*v33 + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
      {
        v34 = *this;
        v110 = 261;
        v108 = "operand";
        v109 = 7;
        mlir::Operation::emitOpError(v34, &v108, v114);
        if (v114[0])
        {
          v111 = 3;
          v112 = " #";
          v113 = 2;
          v35 = v115;
          if (v116 >= v117)
          {
            if (v115 <= &v111 && v115 + 24 * v116 > &v111)
            {
              v62 = &v111 - v115;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v116 + 1, 24);
              v35 = v115;
              v36 = (v115 + v62);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v116 + 1, 24);
              v36 = &v111;
              v35 = v115;
            }
          }

          else
          {
            v36 = &v111;
          }

          v37 = &v35[24 * v116];
          v38 = *v36;
          *(v37 + 2) = *(v36 + 2);
          *v37 = v38;
          v39 = ++v116;
          if (v114[0])
          {
            v111 = 5;
            v112 = v9;
            v40 = v115;
            if (v39 >= v117)
            {
              if (v115 <= &v111 && v115 + 24 * v39 > &v111)
              {
                v63 = &v111 - v115;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v39 + 1, 24);
                v40 = v115;
                v41 = (v115 + v63);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v39 + 1, 24);
                v41 = &v111;
                v40 = v115;
              }
            }

            else
            {
              v41 = &v111;
            }

            v42 = &v40[24 * v116];
            v43 = *v41;
            *(v42 + 2) = *(v41 + 2);
            *v42 = v43;
            v44 = ++v116;
            if (v114[0])
            {
              v111 = 3;
              v113 = 65;
              v45 = v115;
              if (v44 >= v117)
              {
                if (v115 <= &v111 && v115 + 24 * v44 > &v111)
                {
                  v64 = &v111 - v115;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v44 + 1, 24);
                  v45 = v115;
                  v46 = (v115 + v64);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v44 + 1, 24);
                  v46 = &v111;
                  v45 = v115;
                }
              }

              else
              {
                v46 = &v111;
              }

              v47 = &v45[24 * v116];
              v48 = *v46;
              *(v47 + 2) = *(v46 + 2);
              *v47 = v48;
              ++v116;
              if (v114[0])
              {
                v49 = &v111;
                mlir::DiagnosticArgument::DiagnosticArgument(&v111, v33);
                v50 = v115;
                if (v116 >= v117)
                {
                  if (v115 <= &v111 && v115 + 24 * v116 > &v111)
                  {
                    v65 = &v111 - v115;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v116 + 1, 24);
                    v50 = v115;
                    v49 = (v115 + v65);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v116 + 1, 24);
                    v49 = &v111;
                    v50 = v115;
                  }
                }

                v51 = &v50[24 * v116];
                v52 = *v49;
                *(v51 + 2) = *(v49 + 2);
                *v51 = v52;
                ++v116;
              }
            }
          }
        }

        v53 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v114);
        if (v114[0])
        {
          mlir::InFlightDiagnostic::report(v114);
        }

        if (v124 == 1)
        {
          if (v123 != &v124)
          {
            free(v123);
          }

          v54 = __p;
          if (__p)
          {
            v55 = v122;
            v56 = __p;
            if (v122 != __p)
            {
              do
              {
                v55 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v55 - 1);
              }

              while (v55 != v54);
              v56 = __p;
            }

            v122 = v54;
            operator delete(v56);
          }

          v57 = v119;
          if (v119)
          {
            v58 = v120;
            v59 = v119;
            if (v120 != v119)
            {
              do
              {
                v61 = *--v58;
                v60 = v61;
                *v58 = 0;
                if (v61)
                {
                  MEMORY[0x1AC55A040](v60, 0x1000C8077774924);
                }
              }

              while (v58 != v57);
              v59 = v119;
            }

            v120 = v57;
            operator delete(v59);
          }

          if (v115 != v118)
          {
            free(v115);
          }
        }

        if (!v53)
        {
          return 0;
        }
      }

      LODWORD(v9) = v9 + 1;
    }

    while (++v17 != v16);
  }

  v66 = mlir::memref::ReinterpretCastOp::getODSOperands(this, 2u);
  if (v67)
  {
    v68 = v66;
    v69 = v67;
    v70 = 0;
    do
    {
      v71 = *(*(v68 + 32 * v70 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v72 = *(*v71 + 136);
      if (v72 != &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
      {
        v73 = *this;
        if (v72 != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id || (v114[0] = *(*(v68 + 32 * v70 + 24) + 8) & 0xFFFFFFFFFFFFFFF8, *(*mlir::AffineMapAttr::getValue(v114) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id))
        {
          v110 = 261;
          v108 = "operand";
          v109 = 7;
          mlir::Operation::emitOpError(v73, &v108, v114);
          if (v114[0])
          {
            v111 = 3;
            v112 = " #";
            v113 = 2;
            v74 = v115;
            if (v116 >= v117)
            {
              if (v115 <= &v111 && v115 + 24 * v116 > &v111)
              {
                v101 = &v111 - v115;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v116 + 1, 24);
                v74 = v115;
                v75 = (v115 + v101);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v116 + 1, 24);
                v75 = &v111;
                v74 = v115;
              }
            }

            else
            {
              v75 = &v111;
            }

            v76 = &v74[24 * v116];
            v77 = *v75;
            *(v76 + 2) = *(v75 + 2);
            *v76 = v77;
            v78 = ++v116;
            if (v114[0])
            {
              v111 = 5;
              v112 = v9;
              v79 = v115;
              if (v78 >= v117)
              {
                if (v115 <= &v111 && v115 + 24 * v78 > &v111)
                {
                  v102 = &v111 - v115;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v78 + 1, 24);
                  v79 = v115;
                  v80 = (v115 + v102);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v78 + 1, 24);
                  v80 = &v111;
                  v79 = v115;
                }
              }

              else
              {
                v80 = &v111;
              }

              v81 = &v79[24 * v116];
              v82 = *v80;
              *(v81 + 2) = *(v80 + 2);
              *v81 = v82;
              v83 = ++v116;
              if (v114[0])
              {
                v111 = 3;
                v113 = 87;
                v84 = v115;
                if (v83 >= v117)
                {
                  if (v115 <= &v111 && v115 + 24 * v83 > &v111)
                  {
                    v103 = &v111 - v115;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v83 + 1, 24);
                    v84 = v115;
                    v85 = (v115 + v103);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v83 + 1, 24);
                    v85 = &v111;
                    v84 = v115;
                  }
                }

                else
                {
                  v85 = &v111;
                }

                v86 = &v84[24 * v116];
                v87 = *v85;
                *(v86 + 2) = *(v85 + 2);
                *v86 = v87;
                ++v116;
                if (v114[0])
                {
                  v88 = &v111;
                  mlir::DiagnosticArgument::DiagnosticArgument(&v111, v71);
                  v89 = v115;
                  if (v116 >= v117)
                  {
                    if (v115 <= &v111 && v115 + 24 * v116 > &v111)
                    {
                      v104 = &v111 - v115;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v116 + 1, 24);
                      v89 = v115;
                      v88 = (v115 + v104);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v116 + 1, 24);
                      v88 = &v111;
                      v89 = v115;
                    }
                  }

                  v90 = &v89[24 * v116];
                  v91 = *v88;
                  *(v90 + 2) = *(v88 + 2);
                  *v90 = v91;
                  ++v116;
                }
              }
            }
          }

          v92 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v114);
          if (v114[0])
          {
            mlir::InFlightDiagnostic::report(v114);
          }

          if (v124 == 1)
          {
            if (v123 != &v124)
            {
              free(v123);
            }

            v93 = __p;
            if (__p)
            {
              v94 = v122;
              v95 = __p;
              if (v122 != __p)
              {
                do
                {
                  v94 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v94 - 1);
                }

                while (v94 != v93);
                v95 = __p;
              }

              v122 = v93;
              operator delete(v95);
            }

            v96 = v119;
            if (v119)
            {
              v97 = v120;
              v98 = v119;
              if (v120 != v119)
              {
                do
                {
                  v100 = *--v97;
                  v99 = v100;
                  *v97 = 0;
                  if (v100)
                  {
                    MEMORY[0x1AC55A040](v99, 0x1000C8077774924);
                  }
                }

                while (v97 != v96);
                v98 = v119;
              }

              v120 = v96;
              operator delete(v98);
            }

            if (v115 != v118)
            {
              free(v115);
            }
          }

          if (!v92)
          {
            return 0;
          }
        }
      }

      LODWORD(v9) = v9 + 1;
    }

    while (++v70 != v69);
  }

  if (*(*this + 9))
  {
    v106 = *this - 2;
  }

  else
  {
    v106 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v106, 0);
  return mlir::pdl::__mlir_ods_local_type_constraint_PDLOps4(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
}

BOOL mlir::pdl_interp::CreateOperationOp::parse(_DWORD *a1, unsigned int *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v45 = v47;
  v46 = 0x400000000;
  v43[0] = &v44;
  v43[1] = 0x100000000;
  v40 = v42;
  v41 = 0x400000000;
  v37 = v39;
  v38 = 0x400000000;
  v35[0] = &v36;
  v35[1] = 0x100000000;
  v4 = (*(*a1 + 32))(a1);
  v6 = mlir::NoneType::get(*v4, v5);
  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v33, v6))
  {
    goto LABEL_43;
  }

  if (v33)
  {
    v7 = *(a2 + 32);
    if (!v7)
    {
      operator new();
    }

    *(v7 + 16) = v33;
  }

  if ((*(*a1 + 288))(a1))
  {
    v8 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, &v45, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v43) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v8 = 0;
  }

  v32 = v8;
  (*(*a1 + 40))(a1);
  v9 = (*(*a1 + 32))(a1);
  v48 = v50;
  v49 = 0x400000000;
  if ((*(*a1 + 80))(a1) & 1) == 0 || (v34[0] = a1, v34[1] = &v48, v34[2] = &v40, ((*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseCreateOperationOpAttributes(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::ArrayAttr &)::$_0>, v34, 0, 0)) && ((*(*a1 + 88))(a1))
  {
    ArrayAttr = mlir::Builder::getArrayAttr(v9, v48, v49);
    v11 = 0;
    v12 = v48;
    if (v48 == v50)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  ArrayAttr = 0;
  v11 = 1;
  v12 = v48;
  if (v48 != v50)
  {
LABEL_17:
    free(v12);
  }

LABEL_18:
  if ((v11 & 1) == 0)
  {
    v13 = *(a2 + 32);
    if (!v13)
    {
      operator new();
    }

    *(v13 + 8) = ArrayAttr;
    v14 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 64))(a1))
    {
      if ((*(*a1 + 160))(a1))
      {
        v51 = 257;
        if (((*(*a1 + 400))(a1, "inferred", 8, &v48) & 1) == 0 || ((*(*a1 + 168))(a1) & 1) == 0)
        {
          goto LABEL_43;
        }

        v15 = (*(*a1 + 32))(a1);
        UnitAttr = mlir::Builder::getUnitAttr(v15, v16);
        if (UnitAttr)
        {
          v18 = *(a2 + 32);
          if (!v18)
          {
            operator new();
          }

          *v18 = UnitAttr;
        }
      }

      else if (((*(*a1 + 280))(a1) & 1) == 0 || ((*(*a1 + 720))(a1, &v37, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 584))(a1, v35) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    v34[0] = (*(*a1 + 40))(a1);
    if ((*(*a1 + 488))(a1, a2 + 28))
    {
      v19 = *(a2 + 1);
      v48 = a1;
      v49 = v34;
      v50[0] = a2;
      if (mlir::pdl_interp::CreateOperationOp::verifyInherentAttrs(v19, (a2 + 28), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CreateOperationOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v48))
      {
        v31 = v14;
        v20 = v46;
        v21 = v41;
        v22 = v38;
        v23 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(a2);
        v23[6] = v20;
        v23[7] = v21;
        v23[8] = v22;
        v24 = (*(*a1 + 32))(a1);
        v48 = mlir::Builder::getType<mlir::pdl::OperationType>(v24);
        v25 = (*(*a1 + 32))(a1);
        v26 = mlir::Builder::getType<mlir::pdl::AttributeType>(v25);
        mlir::OperationState::addTypes(a2, &v48, 1);
        if (mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v45, v43, v32, (a2 + 4)))
        {
          if (!v41)
          {
LABEL_42:
            v29 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v37, v35, v31, (a2 + 4));
            goto LABEL_44;
          }

          v27 = v40;
          v28 = 32 * v41;
          while (((*(*a1 + 728))(a1, v27, v26, a2 + 4) & 1) != 0)
          {
            v27 += 32;
            v28 -= 32;
            if (!v28)
            {
              goto LABEL_42;
            }
          }
        }
      }
    }
  }

LABEL_43:
  v29 = 0;
LABEL_44:
  if (v35[0] != &v36)
  {
    free(v35[0]);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  if (v40 != v42)
  {
    free(v40);
  }

  if (v43[0] != &v44)
  {
    free(v43[0]);
  }

  if (v45 != v47)
  {
    free(v45);
  }

  return v29;
}

void mlir::pdl_interp::CreateRangeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  mlir::OperationState::addOperands(a2, a4, a5);
  v7 = *(a2 + 72);
  if (v7 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v7 + 1, 8);
    LODWORD(v7) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v7) = a3;
  ++*(a2 + 72);
}

BOOL mlir::pdl_interp::CreateRangeOp::parse(uint64_t a1, uint64_t a2)
{
  v18[16] = *MEMORY[0x1E69E9840];
  v16 = v18;
  v17 = 0x400000000;
  v13 = &v15;
  v14 = 0x100000000;
  v11 = 0;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v16, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || v17 && (((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, &v13) & 1) == 0))
  {
    goto LABEL_13;
  }

  mlir::ValueRange::ValueRange(v12, v13, v14);
  if (v12[1])
  {
    v5 = mlir::TypeRange::dereference_iterator(v12[0], 0);
    RangeElementTypeOrSelf = mlir::pdl::getRangeElementTypeOrSelf(v5);
    v11 = mlir::pdl::RangeType::get(RangeElementTypeOrSelf);
  }

  else if (((*(*a1 + 576))(a1, &v11) & 1) == 0)
  {
    goto LABEL_13;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
LABEL_13:
    v8 = 0;
    v9 = v13;
    if (v13 == &v15)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v7 = *(a2 + 72);
  if (v7 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v7 + 1, 8);
    LODWORD(v7) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v7) = v11;
  ++*(a2 + 72);
  v8 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v16, &v13, v4, a2 + 16);
  v9 = v13;
  if (v13 != &v15)
  {
LABEL_14:
    free(v9);
  }

LABEL_15:
  if (v16 != v18)
  {
    free(v16);
  }

  return v8;
}

uint64_t mlir::pdl_interp::CreateTypeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v40 = v6;
  if (!v6)
  {
    a3(v44, a4);
    if (v44[0])
    {
      v41 = 3;
      v42 = "expected DictionaryAttr to set properties";
      v43 = 41;
      v26 = &v41;
      v27 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v37 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v27 = v45;
          v26 = (v45 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v26 = &v41;
          v27 = v45;
        }
      }

      v28 = &v27[24 * v46];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }

    if (v54 != 1)
    {
      return 0;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v52;
      v32 = __p;
      if (v52 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v52 = v30;
      operator delete(v32);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v33 = v50;
    v23 = v49;
    if (v50 == v49)
    {
      goto LABEL_48;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
      }
    }

    while (v33 != v21);
    goto LABEL_47;
  }

  v8 = mlir::DictionaryAttr::get(&v40, "value", 5uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 50;
    v10 = &v41;
    v11 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v38 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v11 = v45;
        v10 = (v45 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v10 = &v41;
        v11 = v45;
      }
    }

    v12 = &v11[24 * v46];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v46;
    if (v44[0])
    {
      v14 = &v41;
      mlir::DiagnosticArgument::DiagnosticArgument(&v41, v9);
      v15 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v39 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v15 = v45;
          v14 = (v45 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v14 = &v41;
          v15 = v45;
        }
      }

      v16 = &v15[24 * v46];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }
  }

  if (v54)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v52;
      v20 = __p;
      if (v52 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v52 = v18;
      operator delete(v20);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v22 = v50;
    v23 = v49;
    if (v50 == v49)
    {
LABEL_48:
      v50 = v21;
      operator delete(v23);
LABEL_49:
      if (v45 != v48)
      {
        free(v45);
      }

      return 0;
    }

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
LABEL_47:
    v23 = v49;
    goto LABEL_48;
  }

  return 0;
}

BOOL mlir::pdl_interp::CreateTypeOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v2);
}

void mlir::pdl_interp::CreateTypeOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);

  mlir::pdl_interp::CreateTypeOp::build(SingletonImpl, a2, SingletonImpl, a3);
}

void mlir::pdl_interp::CreateTypeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 256);
  if (!v6)
  {
    operator new();
  }

  *v6 = a4;
  v7 = *(a2 + 72);
  if (v7 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v7 + 1, 8);
    LODWORD(v7) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v7) = a3;
  ++*(a2 + 72);
}

BOOL mlir::pdl_interp::CreateTypeOp::verifyInvariantsImpl(uint64_t **this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  if (v3)
  {
    v18[0] = v2;
    if (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v3, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18))
    {
      if (*(*this + 9))
      {
        v4 = *this - 2;
      }

      else
      {
        v4 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
      return mlir::pdl::__mlir_ods_local_type_constraint_PDLOps2(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'value'";
    v17 = 259;
    mlir::OpState::emitOpError(this, &v16, v18);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
    if (v18[0])
    {
      mlir::InFlightDiagnostic::report(v18);
    }

    if (v26 == 1)
    {
      if (v25 != &v26)
      {
        free(v25);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v24;
        v9 = __p;
        if (v24 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v24 = v7;
        operator delete(v9);
      }

      v10 = v21;
      if (v21)
      {
        v11 = v22;
        v12 = v21;
        if (v22 != v21)
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
          v12 = v21;
        }

        v22 = v10;
        operator delete(v12);
      }

      if (v19 != &v20)
      {
        free(v19);
      }
    }
  }

  return v6;
}

uint64_t mlir::pdl_interp::CreateTypeOp::parse(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  v4 = (*(*a1 + 32))(a1);
  v6 = mlir::NoneType::get(*v4, v5);
  if (!mlir::AsmParser::parseAttribute<mlir::TypeAttr>(a1, &v17, v6))
  {
    return 0;
  }

  if (v17)
  {
    v7 = *(a2 + 256);
    if (!v7)
    {
      operator new();
    }

    *v7 = v17;
  }

  v16 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v15[0] = a1;
  v15[1] = &v16;
  v15[2] = a2;
  v9 = mlir::NamedAttrList::get(a2 + 112, **(v8 + 96));
  if (v9)
  {
    if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v9, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CreateTypeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v15))
    {
      return 0;
    }
  }

  v10 = (*(*a1 + 32))(a1);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v10);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
  v13 = *(a2 + 72);
  if (v13 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v13 + 1, 8);
    LODWORD(v13) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v13) = SingletonImpl;
  ++*(a2 + 72);
  return 1;
}

void mlir::pdl_interp::CreateTypeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v11[4] = *MEMORY[0x1E69E9840];
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v9 = v11;
  v11[0] = "value";
  v11[1] = 5;
  v10 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v7, v9, v10);
  if (v9 != v11)
  {
    free(v9);
  }
}

BOOL mlir::pdl_interp::CreateTypesOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v2);
}

void mlir::pdl_interp::CreateTypesOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
  v7 = mlir::pdl::RangeType::get(SingletonImpl);

  mlir::pdl_interp::CreateTypesOp::build(v7, a2, v7, a3);
}

void mlir::pdl_interp::CreateTypesOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 256);
  if (!v6)
  {
    operator new();
  }

  *v6 = a4;
  v7 = *(a2 + 72);
  if (v7 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v7 + 1, 8);
    LODWORD(v7) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v7) = a3;
  ++*(a2 + 72);
}

BOOL mlir::pdl_interp::CreateTypesOp::verifyInvariantsImpl(uint64_t **this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  if (v3)
  {
    v18[0] = v2;
    if (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps8(v3, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18))
    {
      if (*(*this + 9))
      {
        v4 = *this - 2;
      }

      else
      {
        v4 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
      return mlir::pdl::__mlir_ods_local_type_constraint_PDLOps6(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'value'";
    v17 = 259;
    mlir::OpState::emitOpError(this, &v16, v18);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
    if (v18[0])
    {
      mlir::InFlightDiagnostic::report(v18);
    }

    if (v26 == 1)
    {
      if (v25 != &v26)
      {
        free(v25);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v24;
        v9 = __p;
        if (v24 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v24 = v7;
        operator delete(v9);
      }

      v10 = v21;
      if (v21)
      {
        v11 = v22;
        v12 = v21;
        if (v22 != v21)
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
          v12 = v21;
        }

        v22 = v10;
        operator delete(v12);
      }

      if (v19 != &v20)
      {
        free(v19);
      }
    }
  }

  return v6;
}

uint64_t mlir::pdl_interp::CreateTypesOp::parse(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  v4 = (*(*a1 + 32))(a1);
  v6 = mlir::NoneType::get(*v4, v5);
  if (!mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v18, v6))
  {
    return 0;
  }

  if (v18)
  {
    v7 = *(a2 + 256);
    if (!v7)
    {
      operator new();
    }

    *v7 = v18;
  }

  v17 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v16[0] = a1;
  v16[1] = &v17;
  v16[2] = a2;
  v9 = mlir::NamedAttrList::get(a2 + 112, **(v8 + 96));
  if (v9)
  {
    if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps8(v9, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CreateTypesOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v16))
    {
      return 0;
    }
  }

  v10 = (*(*a1 + 32))(a1);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v10);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
  v13 = mlir::pdl::RangeType::get(SingletonImpl);
  v14 = *(a2 + 72);
  if (v14 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v14 + 1, 8);
    LODWORD(v14) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v14) = v13;
  ++*(a2 + 72);
  return 1;
}

uint64_t mlir::pdl_interp::EraseOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v8, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v4 = (*(*a1 + 32))(a1);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v4);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
  return (*(*a1 + 728))(a1, v8, SingletonImpl, a2 + 16) & 1;
}

BOOL mlir::pdl_interp::ExtractOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v2);
}

void mlir::pdl_interp::ExtractOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v9 = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  Value = mlir::AffineMapAttr::getValue(&v9);
  mlir::pdl_interp::ExtractOp::build(a1, a2, Value, a3, v4);
}

void mlir::pdl_interp::ExtractOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v13 = a4;
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a5);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *v11 = IntegerAttr;
  v12 = *(a2 + 72);
  if (v12 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v12 + 1, 8);
    LODWORD(v12) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v12) = a3;
  ++*(a2 + 72);
}

uint64_t mlir::pdl_interp::ExtractOp::verifyInvariantsImpl(uint64_t **this)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  if (v3)
  {
    v20 = v2;
    if (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v3, "index", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v20) && mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps11(*this, *(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) && (*(*this + 9) ? (v4 = *this - 2) : (v4 = 0), v5 = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0), mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps2(*this, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0)))
    {
      if (*(*this + 9))
      {
        v6 = *this - 2;
      }

      else
      {
        v6 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
      if (mlir::pdl::RangeType::get(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8) == (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
      {
        return 1;
      }

      else
      {
        v19 = 259;
        mlir::OpState::emitOpError(this, v18, &v20);
        v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v20);
        if (v20)
        {
          mlir::InFlightDiagnostic::report(&v20);
        }

        if (v29 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v21);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v18[0] = "requires attribute 'index'";
    v19 = 259;
    mlir::OpState::emitOpError(this, v18, &v20);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v20);
    if (v20)
    {
      mlir::InFlightDiagnostic::report(&v20);
    }

    if (v29 == 1)
    {
      if (v28 != &v29)
      {
        free(v28);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v27;
        v11 = __p;
        if (v27 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v27 = v9;
        operator delete(v11);
      }

      v12 = v24;
      if (v24)
      {
        v13 = v25;
        v14 = v24;
        if (v25 != v24)
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
          v14 = v24;
        }

        v25 = v12;
        operator delete(v14);
      }

      if (v22 != &v23)
      {
        free(v22);
      }
    }
  }

  return v8;
}

BOOL mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps11(uint64_t *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v60 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    v49[0] = a2;
    v9 = a1;
    Value = mlir::AffineMapAttr::getValue(v49);
    v11 = mlir::pdl::PDLType::classof(Value);
    a1 = v9;
    if (v11)
    {
      return 1;
    }
  }

  v45 = 261;
  v44[0] = a3;
  v44[1] = a4;
  mlir::Operation::emitOpError(a1, v44, v49);
  if (v49[0])
  {
    v46 = 3;
    v47 = " #";
    v48 = 2;
    v13 = &v46;
    v14 = v50;
    if (v51 >= v52)
    {
      if (v50 <= &v46 && v50 + 24 * v51 > &v46)
      {
        v40 = &v46 - v50;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
        v14 = v50;
        v13 = (v50 + v40);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
        v13 = &v46;
        v14 = v50;
      }
    }

    v15 = &v14[24 * v51];
    v16 = *v13;
    *(v15 + 2) = *(v13 + 2);
    *v15 = v16;
    v17 = ++v51;
    if (v49[0])
    {
      v46 = 5;
      v47 = a5;
      v18 = &v46;
      v19 = v50;
      if (v17 >= v52)
      {
        if (v50 <= &v46 && v50 + 24 * v17 > &v46)
        {
          v41 = &v46 - v50;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v17 + 1, 24);
          v19 = v50;
          v18 = (v50 + v41);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v17 + 1, 24);
          v18 = &v46;
          v19 = v50;
        }
      }

      v20 = &v19[24 * v51];
      v21 = *v18;
      *(v20 + 2) = *(v18 + 2);
      *v20 = v21;
      v22 = ++v51;
      if (v49[0])
      {
        v46 = 3;
        v47 = " must be range of pdl type values, but got ";
        v48 = 43;
        v23 = &v46;
        v24 = v50;
        if (v22 >= v52)
        {
          if (v50 <= &v46 && v50 + 24 * v22 > &v46)
          {
            v42 = &v46 - v50;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v22 + 1, 24);
            v24 = v50;
            v23 = (v50 + v42);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v22 + 1, 24);
            v23 = &v46;
            v24 = v50;
          }
        }

        v25 = &v24[24 * v51];
        v26 = *v23;
        *(v25 + 2) = *(v23 + 2);
        *v25 = v26;
        ++v51;
        if (v49[0])
        {
          v27 = &v46;
          mlir::DiagnosticArgument::DiagnosticArgument(&v46, a2);
          v28 = v50;
          if (v51 >= v52)
          {
            if (v50 <= &v46 && v50 + 24 * v51 > &v46)
            {
              v43 = &v46 - v50;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
              v28 = v50;
              v27 = (v50 + v43);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
              v27 = &v46;
              v28 = v50;
            }
          }

          v29 = &v28[24 * v51];
          v30 = *v27;
          *(v29 + 2) = *(v27 + 2);
          *v29 = v30;
          ++v51;
        }
      }
    }
  }

  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
  if (v49[0])
  {
    mlir::InFlightDiagnostic::report(v49);
  }

  if (v59 == 1)
  {
    if (v58 != &v59)
    {
      free(v58);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v57;
      v33 = __p;
      if (v57 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v57 = v31;
      operator delete(v33);
    }

    v34 = v54;
    if (v54)
    {
      v35 = v55;
      v36 = v54;
      if (v55 != v54)
      {
        do
        {
          v38 = *--v35;
          v37 = v38;
          *v35 = 0;
          if (v38)
          {
            MEMORY[0x1AC55A040](v37, 0x1000C8077774924);
          }
        }

        while (v35 != v34);
        v36 = v54;
      }

      v55 = v34;
      operator delete(v36);
    }

    if (v50 != v53)
    {
      free(v50);
    }
  }

  return v12;
}

BOOL mlir::pdl_interp::ExtractOp::parse(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v21 = 0;
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18 = 0;
  v4 = (*(*a1 + 32))(a1);
  IntegerType = mlir::Builder::getIntegerType(v4, 32);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v21, IntegerType))
  {
    return 0;
  }

  if (v21)
  {
    v6 = *(a2 + 256);
    if (!v6)
    {
      operator new();
    }

    *v6 = v21;
  }

  v23 = 257;
  if (((*(*a1 + 400))(a1, "of", 2, v22) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v22[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::pdl::PDLType>(a1, v22))
  {
    return 0;
  }

  v7 = v22[0];
  v18 = v22[0];
  v15[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v22[0] = a1;
  v22[1] = v15;
  v22[2] = a2;
  if (!mlir::pdl_interp::ExtractOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::ExtractOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v22))
  {
    return 0;
  }

  v17 = v7;
  if (mlir::pdl::PDLType::classof(v7))
  {
    mlir::OperationState::addTypes(a2, &v18, 1);
    v9 = mlir::pdl::RangeType::get(v18);
    return (*(*a1 + 728))(a1, v19, v9, a2 + 16) & 1;
  }

  else
  {
    v11 = (*(*a1 + 16))(a1);
    v16 = 257;
    (*(*a1 + 24))(v22, a1, v11, v15);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v22, "'result' must be pdl type, but got ");
    mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v12, &v17);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v22);
    return v14;
  }
}

void mlir::pdl_interp::ExtractOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v25[4] = *MEMORY[0x1E69E9840];
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] - v9 > 1uLL)
  {
    *v9 = 26223;
    v8[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, "of", 2uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
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

  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if (v14[3] == v15)
  {
    llvm::raw_ostream::write(v14, ":", 1uLL);
  }

  else
  {
    *v15 = 58;
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

  if (*(*this + 9))
  {
    v18 = *this - 16;
  }

  else
  {
    v18 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v23 = v25;
  v25[0] = "index";
  v25[1] = 5;
  v24 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v21, v23, v24);
  if (v23 != v25)
  {
    free(v23);
  }
}

uint64_t mlir::pdl_interp::FuncOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v88 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v72 = v6;
  if (!v6)
  {
    a3(&v76, a4);
    if (v76)
    {
      LODWORD(v73) = 3;
      v74 = "expected DictionaryAttr to set properties";
      v75 = 41;
      v26 = &v73;
      v27 = v78;
      if (v79 >= v80)
      {
        if (v78 <= &v73 && v78 + 24 * v79 > &v73)
        {
          v65 = &v73 - v78;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
          v27 = v78;
          v26 = (v78 + v65);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
          v26 = &v73;
          v27 = v78;
        }
      }

      v28 = &v27[24 * v79];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
      ++v79;
      if (v76)
      {
        mlir::InFlightDiagnostic::report(&v76);
      }
    }

    if (v87 != 1)
    {
      return 0;
    }

    if (v86 != &v87)
    {
      free(v86);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v85;
      v32 = __p;
      if (v85 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v85 = v30;
      operator delete(v32);
    }

    v21 = v82;
    if (!v82)
    {
      goto LABEL_70;
    }

    v33 = v83;
    v23 = v82;
    if (v83 == v82)
    {
LABEL_69:
      v83 = v21;
      operator delete(v23);
LABEL_70:
      if (v78 != v81)
      {
        free(v78);
      }

      return 0;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
      }
    }

    while (v33 != v21);
LABEL_68:
    v23 = v82;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v72, "arg_attrs", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v9 = v8;
      a3(&v76, a4);
      if (v76)
      {
        LODWORD(v73) = 3;
        v75 = 54;
        v10 = &v73;
        v11 = v78;
        if (v79 >= v80)
        {
          if (v78 <= &v73 && v78 + 24 * v79 > &v73)
          {
            v66 = &v73 - v78;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v11 = v78;
            v10 = (v78 + v66);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v10 = &v73;
            v11 = v78;
          }
        }

        v12 = &v11[24 * v79];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v79;
        if (v76)
        {
          v14 = &v73;
          mlir::DiagnosticArgument::DiagnosticArgument(&v73, v9);
          v15 = v78;
          if (v79 >= v80)
          {
            if (v78 <= &v73 && v78 + 24 * v79 > &v73)
            {
              v67 = &v73 - v78;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v15 = v78;
              v14 = (v78 + v67);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v14 = &v73;
              v15 = v78;
            }
          }

          v16 = &v15[24 * v79];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v79;
          if (v76)
          {
            mlir::InFlightDiagnostic::report(&v76);
          }
        }
      }

      if ((v87 & 1) == 0)
      {
        return 0;
      }

      if (v86 != &v87)
      {
        free(v86);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v85;
        v20 = __p;
        if (v85 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v85 = v18;
        operator delete(v20);
      }

      v21 = v82;
      if (!v82)
      {
        goto LABEL_70;
      }

      v22 = v83;
      v23 = v82;
      if (v83 == v82)
      {
        goto LABEL_69;
      }

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
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v36 = mlir::DictionaryAttr::get(&v72, "function_type", 0xDuLL);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v37 = v36;
      a3(&v76, a4);
      if (v76)
      {
        LODWORD(v73) = 3;
        v75 = 58;
        v38 = &v73;
        v39 = v78;
        if (v79 >= v80)
        {
          if (v78 <= &v73 && v78 + 24 * v79 > &v73)
          {
            v68 = &v73 - v78;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v39 = v78;
            v38 = (v78 + v68);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v38 = &v73;
            v39 = v78;
          }
        }

        v40 = &v39[24 * v79];
        v41 = *v38;
        *(v40 + 2) = v38[2];
        *v40 = v41;
        ++v79;
        if (v76)
        {
          v42 = &v73;
          mlir::DiagnosticArgument::DiagnosticArgument(&v73, v37);
          v43 = v78;
          if (v79 >= v80)
          {
            if (v78 <= &v73 && v78 + 24 * v79 > &v73)
            {
              v69 = &v73 - v78;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v43 = v78;
              v42 = (v78 + v69);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v42 = &v73;
              v43 = v78;
            }
          }

          v44 = &v43[24 * v79];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
          ++v79;
          if (v76)
          {
            mlir::InFlightDiagnostic::report(&v76);
          }
        }
      }

      if ((v87 & 1) == 0)
      {
        return 0;
      }

      if (v86 != &v87)
      {
        free(v86);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v85;
        v48 = __p;
        if (v85 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v85 = v46;
        operator delete(v48);
      }

      v21 = v82;
      if (!v82)
      {
        goto LABEL_70;
      }

      v49 = v83;
      v23 = v82;
      if (v83 == v82)
      {
        goto LABEL_69;
      }

      do
      {
        v51 = *--v49;
        v50 = v51;
        *v49 = 0;
        if (v51)
        {
          MEMORY[0x1AC55A040](v50, 0x1000C8077774924);
        }
      }

      while (v49 != v21);
      goto LABEL_68;
    }

    a1[1] = v36;
  }

  v53 = mlir::DictionaryAttr::get(&v72, "res_attrs", 9uLL);
  if (v53)
  {
    if (*(*v53 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v54 = v53;
      a3(&v76, a4);
      if (v76)
      {
        LODWORD(v73) = 3;
        v75 = 54;
        v55 = &v73;
        v56 = v78;
        if (v79 >= v80)
        {
          if (v78 <= &v73 && v78 + 24 * v79 > &v73)
          {
            v70 = &v73 - v78;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v56 = v78;
            v55 = (v78 + v70);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v55 = &v73;
            v56 = v78;
          }
        }

        v57 = &v56[24 * v79];
        v58 = *v55;
        *(v57 + 2) = v55[2];
        *v57 = v58;
        ++v79;
        if (v76)
        {
          v59 = &v73;
          mlir::DiagnosticArgument::DiagnosticArgument(&v73, v54);
          v60 = v78;
          if (v79 >= v80)
          {
            if (v78 <= &v73 && v78 + 24 * v79 > &v73)
            {
              v71 = &v73 - v78;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v60 = v78;
              v59 = (v78 + v71);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v59 = &v73;
              v60 = v78;
            }
          }

          v61 = &v60[24 * v79];
          v62 = *v59;
          *(v61 + 2) = v59[2];
          *v61 = v62;
          ++v79;
          if (v76)
          {
            mlir::InFlightDiagnostic::report(&v76);
          }
        }
      }

      if (v87 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v77);
      }

      return 0;
    }

    a1[2] = v53;
  }

  v63 = mlir::DictionaryAttr::get(&v72, "sym_name", 8uLL);
  v73 = v63;
  if (!v63)
  {
    return 1;
  }

  if (*(*v63 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    a1[3] = v63;
    return 1;
  }

  a3(&v76, a4);
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v64, &v73);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v76);
  return 0;
}

uint64_t mlir::pdl_interp::FuncOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v37[6] = *MEMORY[0x1E69E9840];
  v34 = a1;
  v35 = v37;
  v36 = 0x300000000;
  if (!*a2)
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v34, "arg_attrs", 9uLL, *a2);
  v5 = v36;
  if (v36 >= HIDWORD(v36))
  {
    v26 = NamedAttr;
    v27 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
    v4 = v27;
    NamedAttr = v26;
    v5 = v36;
  }

  v6 = (v35 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v36 + 1;
  LODWORD(v36) = v36 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v34, "function_type", 0xDuLL, v8);
    v11 = v36;
    if (v36 >= HIDWORD(v36))
    {
      v28 = v9;
      v29 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
      v10 = v29;
      v9 = v28;
      v11 = v36;
    }

    v12 = (v35 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v34, "res_attrs", 9uLL, v13);
    v16 = v36;
    if (v36 >= HIDWORD(v36))
    {
      v30 = v14;
      v31 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
      v15 = v31;
      v14 = v30;
      v16 = v36;
    }

    v17 = (v35 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v34, "sym_name", 8uLL, v18);
    v21 = v36;
    if (v36 >= HIDWORD(v36))
    {
      v32 = v19;
      v33 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
      v20 = v33;
      v19 = v32;
      v21 = v36;
    }

    v22 = (v35 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    v7 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

  v23 = v35;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v35 == v37)
    {
      return DictionaryAttr;
    }

    goto LABEL_20;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v34, v35, v7);
  v23 = v35;
  if (v35 != v37)
  {
LABEL_20:
    free(v23);
  }

  return DictionaryAttr;
}

unint64_t mlir::pdl_interp::FuncOp::computePropertiesHash(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v10 = HIDWORD(a1[3]);
  v11 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v10);
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v21 = 0;
  v22 = 0xFF51AFD7ED558CCDLL;
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v18[0] = v3;
  v18[1] = v6;
  v16 = 0;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v16, v19, v20, v9);
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v17, v13, v20, v12);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v18, v17, v14, v20);
}

uint64_t mlir::pdl_interp::FuncOp::getInherentAttr(int a1, void *a2, void *__s1, size_t __n)
{
  if (__n == 8)
  {
    if (!memcmp(__s1, "sym_name", 8uLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n == 13)
  {
    if (!memcmp(__s1, "function_type", 0xDuLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n != 9)
  {
    return 0;
  }

  if (*__s1 == 0x727474615F677261 && *(__s1 + 8) == 115)
  {
    return *a2;
  }

  if (memcmp(__s1, "res_attrs", 9uLL))
  {
    return 0;
  }

  return a2[2];
}

uint64_t mlir::pdl_interp::FuncOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  switch(a3)
  {
    case 8:
      result = memcmp(__s1, "sym_name", 8uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v8 = a4;
          }

          else
          {
            v8 = 0;
          }

          v5[3] = v8;
        }

        else
        {
          v5[3] = 0;
        }
      }

      break;
    case 13:
      result = memcmp(__s1, "function_type", 0xDuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
          {
            v7 = a4;
          }

          else
          {
            v7 = 0;
          }

          v5[1] = v7;
        }

        else
        {
          v5[1] = 0;
        }
      }

      break;
    case 9:
      if (*__s1 == 0x727474615F677261 && *(__s1 + 8) == 115)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
          {
            v9 = a4;
          }

          else
          {
            v9 = 0;
          }

          *result = v9;
        }

        else
        {
          *result = 0;
        }
      }

      else
      {
        result = memcmp(__s1, "res_attrs", 9uLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v10 = a4;
            }

            else
            {
              v10 = 0;
            }

            v5[2] = v10;
          }

          else
          {
            v5[2] = 0;
          }
        }
      }

      break;
  }

  return result;
}

BOOL mlir::pdl_interp::FuncOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(v8, "arg_attrs", 9, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(v9, "function_type", 0xD, a3, a4))
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(v10, "res_attrs", 9, a3, a4))
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v11, "sym_name", 8, a3, a4))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL mlir::pdl_interp::FuncOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, a2[32]) && mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 3);
}

BOOL mlir::pdl_interp::FuncOp::verifyInvariantsImpl(uint64_t **this)
{
  v67 = *MEMORY[0x1E69E9840];
  v1 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v3 = v1[8];
  v4 = v1[9];
  v2 = v1 + 8;
  if (v4)
  {
    v5 = v2[3];
    if (v5)
    {
      v7 = v2[2];
      v55 = *this;
      if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v5, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v55))
      {
        return 0;
      }

      v55 = *this;
      if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(v4, "function_type", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v55))
      {
        return 0;
      }

      v55 = *this;
      if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(v3, "arg_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v55))
      {
        return 0;
      }

      v55 = *this;
      if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(v7, "res_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v55))
      {
        return 0;
      }

      v8 = *this;
      v9 = ((&(*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + ((*(*this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
      if (*(v9 + 8) != v9)
      {
        return 1;
      }

      v50[0] = "region #";
      v51 = 259;
      mlir::Operation::emitOpError(v8, v50, &v55);
      if (v55)
      {
        LODWORD(v48[0]) = 5;
        v48[1] = 0;
        v10 = v48;
        v11 = v57;
        if (v58 >= v59)
        {
          if (v57 <= v48 && v57 + 24 * v58 > v48)
          {
            v44 = v48 - v57;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v60, v58 + 1, 24);
            v11 = v57;
            v10 = (v57 + v44);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v60, v58 + 1, 24);
            v10 = v48;
            v11 = v57;
          }
        }

        v12 = &v11[24 * v58];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v58;
        v14 = v55 == 0;
      }

      else
      {
        v14 = 1;
      }

      v47 = 1283;
      v46[0] = " ('";
      v46[2] = "body";
      v46[3] = 4;
      v48[0] = v46;
      v48[2] = "') ";
      v49 = 770;
      if (!v14)
      {
        mlir::Diagnostic::operator<<(&v56, v48);
        if (v55)
        {
          v52 = 3;
          v53 = "failed to verify constraint: region with at least 1 blocks";
          v54 = 58;
          v30 = &v52;
          v31 = v57;
          if (v58 >= v59)
          {
            if (v57 <= &v52 && v57 + 24 * v58 > &v52)
            {
              v45 = &v52 - v57;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v60, v58 + 1, 24);
              v31 = v57;
              v30 = (v57 + v45);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v60, v58 + 1, 24);
              v30 = &v52;
              v31 = v57;
            }
          }

          v32 = &v31[24 * v58];
          v33 = *v30;
          *(v32 + 2) = *(v30 + 2);
          *v32 = v33;
          ++v58;
        }
      }

      v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v55);
      if (v55)
      {
        mlir::InFlightDiagnostic::report(&v55);
      }

      if (v66 == 1)
      {
        if (v65 != &v66)
        {
          free(v65);
        }

        v35 = __p;
        if (__p)
        {
          v36 = v64;
          v37 = __p;
          if (v64 != __p)
          {
            do
            {
              v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
            }

            while (v36 != v35);
            v37 = __p;
          }

          v64 = v35;
          operator delete(v37);
        }

        v38 = v61;
        if (v61)
        {
          v39 = v62;
          v40 = v61;
          if (v62 != v61)
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
            v40 = v61;
          }

          v62 = v38;
          operator delete(v40);
        }

        if (v57 != v60)
        {
          free(v57);
        }
      }

      return v34;
    }

    v50[0] = "requires attribute 'sym_name'";
    v51 = 259;
    mlir::OpState::emitOpError(this, v50, &v55);
    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v55);
    if (v55)
    {
      mlir::InFlightDiagnostic::report(&v55);
    }

    if (v66 == 1)
    {
      if (v65 != &v66)
      {
        free(v65);
      }

      v24 = __p;
      if (__p)
      {
        v25 = v64;
        v26 = __p;
        if (v64 != __p)
        {
          do
          {
            v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v64 = v24;
        operator delete(v26);
      }

      v19 = v61;
      if (!v61)
      {
        goto LABEL_45;
      }

      v27 = v62;
      v21 = v61;
      if (v62 == v61)
      {
LABEL_44:
        v62 = v19;
        operator delete(v21);
LABEL_45:
        if (v57 != v60)
        {
          free(v57);
        }

        return v15;
      }

      do
      {
        v29 = *--v27;
        v28 = v29;
        *v27 = 0;
        if (v29)
        {
          MEMORY[0x1AC55A040](v28, 0x1000C8077774924);
        }
      }

      while (v27 != v19);
LABEL_43:
      v21 = v61;
      goto LABEL_44;
    }
  }

  else
  {
    v50[0] = "requires attribute 'function_type'";
    v51 = 259;
    mlir::OpState::emitOpError(this, v50, &v55);
    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v55);
    if (v55)
    {
      mlir::InFlightDiagnostic::report(&v55);
    }

    if (v66 == 1)
    {
      if (v65 != &v66)
      {
        free(v65);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v64;
        v18 = __p;
        if (v64 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v64 = v16;
        operator delete(v18);
      }

      v19 = v61;
      if (!v61)
      {
        goto LABEL_45;
      }

      v20 = v62;
      v21 = v61;
      if (v62 == v61)
      {
        goto LABEL_44;
      }

      do
      {
        v23 = *--v20;
        v22 = v23;
        *v20 = 0;
        if (v23)
        {
          MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
        }
      }

      while (v20 != v19);
      goto LABEL_43;
    }
  }

  return v15;
}

BOOL mlir::pdl_interp::GetAttributeOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v2);
}

void mlir::pdl_interp::GetAttributeOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5, size_t a6)
{
  v16 = a4;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  v15 = 261;
  v14[0] = a5;
  v14[1] = a6;
  StringAttr = mlir::Builder::getStringAttr(a1, v14);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *v12 = StringAttr;
  v13 = *(a2 + 72);
  if (v13 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v13 + 1, 8);
    LODWORD(v13) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v13) = a3;
  ++*(a2 + 72);
}

BOOL mlir::pdl_interp::GetAttributeOp::verifyInvariantsImpl(uint64_t **this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  if (v3)
  {
    v18[0] = v2;
    if (mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v3, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) && mlir::pdl::__mlir_ods_local_type_constraint_PDLOps4(*this, *(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v4 = *this - 2;
      }

      else
      {
        v4 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
      return mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'name'";
    v17 = 259;
    mlir::OpState::emitOpError(this, &v16, v18);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
    if (v18[0])
    {
      mlir::InFlightDiagnostic::report(v18);
    }

    if (v26 == 1)
    {
      if (v25 != &v26)
      {
        free(v25);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v24;
        v9 = __p;
        if (v24 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v24 = v7;
        operator delete(v9);
      }

      v10 = v21;
      if (v21)
      {
        v11 = v22;
        v12 = v21;
        if (v22 != v21)
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
          v12 = v21;
        }

        v22 = v10;
        operator delete(v12);
      }

      if (v19 != &v20)
      {
        free(v19);
      }
    }
  }

  return v6;
}

uint64_t mlir::pdl_interp::GetAttributeOp::parse(uint64_t a1, uint64_t a2)
{
  v21 = 0;
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v4 = (*(*a1 + 32))(a1);
  v6 = mlir::NoneType::get(*v4, v5);
  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v21, v6))
  {
    return 0;
  }

  if (v21)
  {
    v7 = *(a2 + 256);
    if (!v7)
    {
      operator new();
    }

    *v7 = v21;
  }

  v23 = 257;
  if (((*(*a1 + 400))(a1, "of", 2, v22) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0)
  {
    return 0;
  }

  v18 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v22[0] = a1;
  v22[1] = &v18;
  v22[2] = a2;
  v9 = mlir::NamedAttrList::get(a2 + 112, **(v8 + 96));
  if (v9)
  {
    if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v9, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetAttributeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v22))
    {
      return 0;
    }
  }

  v10 = (*(*a1 + 32))(a1);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v10);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id);
  v13 = (*(*a1 + 32))(a1);
  v14 = mlir::MLIRContext::getTypeUniquer(*v13);
  v15 = mlir::StorageUniquer::getSingletonImpl(v14, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
  v16 = *(a2 + 72);
  if (v16 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v16 + 1, 8);
    LODWORD(v16) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v16) = SingletonImpl;
  ++*(a2 + 72);
  return (*(*a1 + 728))(a1, v19, v15, a2 + 16) & 1;
}

void mlir::pdl_interp::GetAttributeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v17[4] = *MEMORY[0x1E69E9840];
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] - v9 > 1uLL)
  {
    *v9 = 26223;
    v8[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, "of", 2uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v15 = v17;
  v17[0] = "name";
  v17[1] = 4;
  v16 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v13, v15, v16);
  if (v15 != v17)
  {
    free(v15);
  }
}

void mlir::pdl_interp::GetAttributeTypeOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
  v8 = a3;
  mlir::OperationState::addOperands(a2, &v8, 1uLL);
  v7 = *(a2 + 72);
  if (v7 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v7 + 1, 8);
    LODWORD(v7) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v7) = SingletonImpl;
  ++*(a2 + 72);
}

uint64_t mlir::pdl_interp::GetAttributeTypeOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v14 = 257;
  if (((*(*a1 + 400))() & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v12, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v4 = (*(*a1 + 32))(a1);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v4);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
  v7 = (*(*a1 + 32))(a1);
  v8 = mlir::MLIRContext::getTypeUniquer(*v7);
  v9 = mlir::StorageUniquer::getSingletonImpl(v8, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id);
  v10 = *(a2 + 72);
  if (v10 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v10 + 1, 8);
    LODWORD(v10) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v10) = SingletonImpl;
  ++*(a2 + 72);
  return (*(*a1 + 728))(a1, v12, v9, a2 + 16) & 1;
}

void mlir::pdl_interp::GetAttributeTypeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v15[4] = *MEMORY[0x1E69E9840];
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

  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] - v7 > 1uLL)
  {
    *v7 = 26223;
    v6[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v6, "of", 2uLL);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v13 = v15;
  v14 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v11, v13, v14);
  if (v13 != v15)
  {
    free(v13);
  }
}

BOOL mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps12(uint64_t *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = *(*a2 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
  {
    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    v50[0] = a2;
    v8 = a1;
    v9 = a4;
    v10 = a3;
    Value = mlir::AffineMapAttr::getValue(v50);
    a3 = v10;
    a4 = v9;
    v12 = Value;
    a1 = v8;
    if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
    {
      return 1;
    }
  }

  v46 = 261;
  v45[0] = a3;
  v45[1] = a4;
  mlir::Operation::emitOpError(a1, v45, v50);
  if (v50[0])
  {
    v47 = 3;
    v48 = " #";
    v49 = 2;
    v13 = &v47;
    v14 = v51;
    if (v52 >= v53)
    {
      if (v51 <= &v47 && v51 + 24 * v52 > &v47)
      {
        v41 = &v47 - v51;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
        v14 = v51;
        v13 = (v51 + v41);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
        v13 = &v47;
        v14 = v51;
      }
    }

    v15 = &v14[24 * v52];
    v16 = *v13;
    *(v15 + 2) = *(v13 + 2);
    *v15 = v16;
    v17 = ++v52;
    if (v50[0])
    {
      v47 = 5;
      v48 = a5;
      v18 = &v47;
      v19 = v51;
      if (v17 >= v53)
      {
        if (v51 <= &v47 && v51 + 24 * v17 > &v47)
        {
          v42 = &v47 - v51;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v17 + 1, 24);
          v19 = v51;
          v18 = (v51 + v42);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v17 + 1, 24);
          v18 = &v47;
          v19 = v51;
        }
      }

      v20 = &v19[24 * v52];
      v21 = *v18;
      *(v20 + 2) = *(v18 + 2);
      *v20 = v21;
      v22 = ++v52;
      if (v50[0])
      {
        v47 = 3;
        v49 = 77;
        v23 = &v47;
        v24 = v51;
        if (v22 >= v53)
        {
          if (v51 <= &v47 && v51 + 24 * v22 > &v47)
          {
            v43 = &v47 - v51;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v22 + 1, 24);
            v24 = v51;
            v23 = (v51 + v43);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v22 + 1, 24);
            v23 = &v47;
            v24 = v51;
          }
        }

        v25 = &v24[24 * v52];
        v26 = *v23;
        *(v25 + 2) = *(v23 + 2);
        *v25 = v26;
        ++v52;
        if (v50[0])
        {
          v27 = &v47;
          mlir::DiagnosticArgument::DiagnosticArgument(&v47, a2);
          v28 = v51;
          if (v52 >= v53)
          {
            if (v51 <= &v47 && v51 + 24 * v52 > &v47)
            {
              v44 = &v47 - v51;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
              v28 = v51;
              v27 = (v51 + v44);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
              v27 = &v47;
              v28 = v51;
            }
          }

          v29 = &v28[24 * v52];
          v30 = *v27;
          *(v29 + 2) = *(v27 + 2);
          *v29 = v30;
          ++v52;
        }
      }
    }
  }

  v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v50);
  if (v50[0])
  {
    mlir::InFlightDiagnostic::report(v50);
  }

  if (v60 == 1)
  {
    if (v59 != &v60)
    {
      free(v59);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v58;
      v34 = __p;
      if (v58 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v58 = v32;
      operator delete(v34);
    }

    v35 = v55;
    if (v55)
    {
      v36 = v56;
      v37 = v55;
      if (v56 != v55)
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
        v37 = v55;
      }

      v56 = v35;
      operator delete(v37);
    }

    if (v51 != v54)
    {
      free(v51);
    }
  }

  return v31;
}

BOOL mlir::pdl_interp::GetDefiningOpOp::parse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v16[1] = 1;
  v17 = 0;
  v22 = 257;
  if (((*(*a1 + 400))(a1, "of", 2, v21, a5, a6, a7, a8, &v17) & 1) == 0)
  {
    return 0;
  }

  v10 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v21[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::pdl::PDLType>(a1, v21))
  {
    return 0;
  }

  v17 = v21[0];
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v11 = (*(*a1 + 32))(a1);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v11);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
  v14 = *(a2 + 72);
  if (v14 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v14 + 1, 8);
    LODWORD(v14) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v14) = SingletonImpl;
  ++*(a2 + 72);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, v16, v10, a2 + 16);
}

void mlir::pdl_interp::GetDefiningOpOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x1E69E9840];
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

  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] - v7 > 1uLL)
  {
    *v7 = 26223;
    v6[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v6, "of", 2uLL);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if (v12[3] == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++v12[4];
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v19 = v21;
  v20 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v17, v19, v20);
  if (v19 != v21)
  {
    free(v19);
  }
}

BOOL mlir::pdl_interp::GetOperandOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v2);
}

void mlir::pdl_interp::GetOperandOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v13 = a4;
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a5);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *v11 = IntegerAttr;
  v12 = *(a2 + 72);
  if (v12 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v12 + 1, 8);
    LODWORD(v12) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v12) = a3;
  ++*(a2 + 72);
}

BOOL mlir::pdl_interp::GetOperandOp::verifyInvariantsImpl(uint64_t **this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  if (v3)
  {
    v18[0] = v2;
    if (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v3, "index", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) && mlir::pdl::__mlir_ods_local_type_constraint_PDLOps4(*this, *(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v4 = *this - 2;
      }

      else
      {
        v4 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
      return mlir::pdl::__mlir_ods_local_type_constraint_PDLOps5(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'index'";
    v17 = 259;
    mlir::OpState::emitOpError(this, &v16, v18);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
    if (v18[0])
    {
      mlir::InFlightDiagnostic::report(v18);
    }

    if (v26 == 1)
    {
      if (v25 != &v26)
      {
        free(v25);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v24;
        v9 = __p;
        if (v24 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v24 = v7;
        operator delete(v9);
      }

      v10 = v21;
      if (v21)
      {
        v11 = v22;
        v12 = v21;
        if (v22 != v21)
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
          v12 = v21;
        }

        v22 = v10;
        operator delete(v12);
      }

      if (v19 != &v20)
      {
        free(v19);
      }
    }
  }

  return v6;
}

uint64_t mlir::pdl_interp::GetOperandOp::parse(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v4 = (*(*a1 + 32))(a1);
  IntegerType = mlir::Builder::getIntegerType(v4, 32);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v20, IntegerType))
  {
    return 0;
  }

  if (v20)
  {
    v6 = *(a2 + 256);
    if (!v6)
    {
      operator new();
    }

    *v6 = v20;
  }

  v22 = 257;
  if (((*(*a1 + 400))(a1, "of", 2, v21) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v18, 1) & 1) == 0)
  {
    return 0;
  }

  v17 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a2 + 8);
  v21[0] = a1;
  v21[1] = &v17;
  v21[2] = a2;
  v8 = mlir::NamedAttrList::get(a2 + 112, **(v7 + 96));
  if (v8)
  {
    if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v8, "index", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetOperandOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v21))
    {
      return 0;
    }
  }

  v9 = (*(*a1 + 32))(a1);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v9);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
  v12 = (*(*a1 + 32))(a1);
  v13 = mlir::MLIRContext::getTypeUniquer(*v12);
  v14 = mlir::StorageUniquer::getSingletonImpl(v13, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
  v15 = *(a2 + 72);
  if (v15 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v15 + 1, 8);
    LODWORD(v15) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v15) = SingletonImpl;
  ++*(a2 + 72);
  return (*(*a1 + 728))(a1, v18, v14, a2 + 16) & 1;
}

BOOL mlir::pdl_interp::GetOperandsOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, v2);
}

void mlir::pdl_interp::GetOperandsOp::build(uint64_t **I32IntegerAttr, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a5 & 0x100000000) != 0)
  {
    v7 = a2;
    v8 = a4;
    v9 = a3;
    I32IntegerAttr = mlir::Builder::getI32IntegerAttr(I32IntegerAttr, a5);
    a2 = v7;
    a3 = v9;
    a4 = v8;
    v6 = I32IntegerAttr;
  }

  else
  {
    v6 = 0;
  }

  mlir::pdl_interp::GetOperandsOp::build(I32IntegerAttr, a2, a3, a4, v6);
}

void mlir::pdl_interp::GetOperandsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a4;
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  if (a5)
  {
    v8 = *(a2 + 256);
    if (!v8)
    {
      operator new();
    }

    *v8 = a5;
  }

  v9 = *(a2 + 72);
  if (v9 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v9 + 1, 8);
    LODWORD(v9) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v9) = a3;
  ++*(a2 + 72);
}

BOOL mlir::pdl_interp::GetOperandsOp::verifyInvariantsImpl(uint64_t **this)
{
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  v7 = v2;
  if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v3, "index", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v7) || !mlir::pdl::__mlir_ods_local_type_constraint_PDLOps4(*this, *(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v4 = *this - 2;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  return mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps12(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
}

uint64_t mlir::pdl_interp::GetOperandsOp::parse(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14 = 0;
  v4 = (*(*a1 + 32))(a1);
  IntegerType = mlir::Builder::getIntegerType(v4, 32);
  v6 = (*(*a1 + 456))(a1, &v17, IntegerType);
  if ((v6 & 0x100) != 0)
  {
    if ((v6 & 1) == 0)
    {
      return 0;
    }

    if (v17)
    {
      v7 = *(a2 + 256);
      if (!v7)
      {
        operator new();
      }

      *v7 = v17;
    }
  }

  v19 = 257;
  if ((*(*a1 + 400))(a1, "of", 2, v18))
  {
    (*(*a1 + 40))(a1);
    if ((*(*a1 + 704))(a1, v15, 1) & 1) != 0 && ((*(*a1 + 104))(a1))
    {
      v18[0] = 0;
      if (mlir::AsmParser::parseType<mlir::pdl::PDLType>(a1, v18))
      {
        v14 = v18[0];
        v13 = (*(*a1 + 40))(a1);
        if ((*(*a1 + 488))(a1, a2 + 112))
        {
          v8 = *(a2 + 8);
          v18[0] = a1;
          v18[1] = &v13;
          v18[2] = a2;
          v9 = mlir::NamedAttrList::get(a2 + 112, **(v8 + 96));
          if (!v9 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v9, "index", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetOperandsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v18))
          {
            v10 = (*(*a1 + 32))(a1);
            v11 = mlir::Builder::getType<mlir::pdl::OperationType>(v10);
            mlir::OperationState::addTypes(a2, &v14, 1);
            return (*(*a1 + 728))(a1, v15, v11, a2 + 16) & 1;
          }
        }
      }
    }
  }

  return 0;
}

void mlir::pdl_interp::GetOperandsOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v25[4] = *MEMORY[0x1E69E9840];
  if (*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8))
  {
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

    (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] - v9 > 1uLL)
  {
    *v9 = 26223;
    v8[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, "of", 2uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
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

  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if (v14[3] == v15)
  {
    llvm::raw_ostream::write(v14, ":", 1uLL);
  }

  else
  {
    *v15 = 58;
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

  if (*(*this + 9))
  {
    v18 = *this - 16;
  }

  else
  {
    v18 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v23 = v25;
  v25[0] = "index";
  v25[1] = 5;
  v24 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v21, v23, v24);
  if (v23 != v25)
  {
    free(v23);
  }
}

BOOL mlir::pdl_interp::GetResultOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v2);
}

void mlir::pdl_interp::GetResultOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v13 = a4;
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a5);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *v11 = IntegerAttr;
  v12 = *(a2 + 72);
  if (v12 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v12 + 1, 8);
    LODWORD(v12) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v12) = a3;
  ++*(a2 + 72);
}

uint64_t mlir::pdl_interp::GetResultOp::parse(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v4 = (*(*a1 + 32))(a1);
  IntegerType = mlir::Builder::getIntegerType(v4, 32);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v20, IntegerType))
  {
    return 0;
  }

  if (v20)
  {
    v6 = *(a2 + 256);
    if (!v6)
    {
      operator new();
    }

    *v6 = v20;
  }

  v22 = 257;
  if (((*(*a1 + 400))(a1, "of", 2, v21) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v18, 1) & 1) == 0)
  {
    return 0;
  }

  v17 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a2 + 8);
  v21[0] = a1;
  v21[1] = &v17;
  v21[2] = a2;
  v8 = mlir::NamedAttrList::get(a2 + 112, **(v7 + 96));
  if (v8)
  {
    if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v8, "index", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetResultOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v21))
    {
      return 0;
    }
  }

  v9 = (*(*a1 + 32))(a1);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v9);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
  v12 = (*(*a1 + 32))(a1);
  v13 = mlir::MLIRContext::getTypeUniquer(*v12);
  v14 = mlir::StorageUniquer::getSingletonImpl(v13, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
  v15 = *(a2 + 72);
  if (v15 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v15 + 1, 8);
    LODWORD(v15) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v15) = SingletonImpl;
  ++*(a2 + 72);
  return (*(*a1 + 728))(a1, v18, v14, a2 + 16) & 1;
}

BOOL mlir::pdl_interp::GetResultsOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, v2);
}

void mlir::pdl_interp::GetResultsOp::build(uint64_t **I32IntegerAttr, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a5 & 0x100000000) != 0)
  {
    v7 = a2;
    v8 = a4;
    v9 = a3;
    I32IntegerAttr = mlir::Builder::getI32IntegerAttr(I32IntegerAttr, a5);
    a2 = v7;
    a3 = v9;
    a4 = v8;
    v6 = I32IntegerAttr;
  }

  else
  {
    v6 = 0;
  }

  mlir::pdl_interp::GetResultsOp::build(I32IntegerAttr, a2, a3, a4, v6);
}

void mlir::pdl_interp::GetResultsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a4;
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  if (a5)
  {
    v8 = *(a2 + 256);
    if (!v8)
    {
      operator new();
    }

    *v8 = a5;
  }

  v9 = *(a2 + 72);
  if (v9 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v9 + 1, 8);
    LODWORD(v9) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v9) = a3;
  ++*(a2 + 72);
}

void mlir::pdl_interp::GetResultsOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
  v7 = mlir::pdl::RangeType::get(SingletonImpl);

  mlir::pdl_interp::GetResultsOp::build(v7, a2, v7, a3, 0);
}

uint64_t mlir::pdl_interp::GetResultsOp::parse(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14 = 0;
  v4 = (*(*a1 + 32))(a1);
  IntegerType = mlir::Builder::getIntegerType(v4, 32);
  v6 = (*(*a1 + 456))(a1, &v17, IntegerType);
  if ((v6 & 0x100) != 0)
  {
    if ((v6 & 1) == 0)
    {
      return 0;
    }

    if (v17)
    {
      v7 = *(a2 + 256);
      if (!v7)
      {
        operator new();
      }

      *v7 = v17;
    }
  }

  v19 = 257;
  if ((*(*a1 + 400))(a1, "of", 2, v18))
  {
    (*(*a1 + 40))(a1);
    if ((*(*a1 + 704))(a1, v15, 1) & 1) != 0 && ((*(*a1 + 104))(a1))
    {
      v18[0] = 0;
      if (mlir::AsmParser::parseType<mlir::pdl::PDLType>(a1, v18))
      {
        v14 = v18[0];
        v13 = (*(*a1 + 40))(a1);
        if ((*(*a1 + 488))(a1, a2 + 112))
        {
          v8 = *(a2 + 8);
          v18[0] = a1;
          v18[1] = &v13;
          v18[2] = a2;
          v9 = mlir::NamedAttrList::get(a2 + 112, **(v8 + 96));
          if (!v9 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v9, "index", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetResultsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v18))
          {
            v10 = (*(*a1 + 32))(a1);
            v11 = mlir::Builder::getType<mlir::pdl::OperationType>(v10);
            mlir::OperationState::addTypes(a2, &v14, 1);
            return (*(*a1 + 728))(a1, v15, v11, a2 + 16) & 1;
          }
        }
      }
    }
  }

  return 0;
}

void mlir::pdl_interp::GetUsersOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
  v7 = mlir::pdl::RangeType::get(SingletonImpl);
  v9 = a3;
  mlir::OperationState::addOperands(a2, &v9, 1uLL);
  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v8 + 1, 8);
    LODWORD(v8) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v8) = v7;
  ++*(a2 + 72);
}

BOOL mlir::pdl_interp::GetUsersOp::verifyInvariantsImpl(uint64_t **this)
{
  v54 = *MEMORY[0x1E69E9840];
  if (!mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps12(*this, *(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 2 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  v4 = *this;
  v5 = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    v43[0] = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*mlir::AffineMapAttr::getValue(v43) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
    {
      return 1;
    }
  }

  v39 = 261;
  v38[0] = "result";
  v38[1] = 6;
  mlir::Operation::emitOpError(v4, v38, v43);
  if (v43[0])
  {
    v40 = 3;
    v41 = " #";
    v42 = 2;
    v6 = &v40;
    v7 = v44;
    if (v45 >= v46)
    {
      if (v44 <= &v40 && v44 + 24 * v45 > &v40)
      {
        v34 = &v40 - v44;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
        v7 = v44;
        v6 = (v44 + v34);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
        v6 = &v40;
        v7 = v44;
      }
    }

    v8 = &v7[24 * v45];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    v10 = ++v45;
    if (v43[0])
    {
      v40 = 5;
      v41 = 0;
      v11 = &v40;
      v12 = v44;
      if (v10 >= v46)
      {
        if (v44 <= &v40 && v44 + 24 * v10 > &v40)
        {
          v35 = &v40 - v44;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v10 + 1, 24);
          v12 = v44;
          v11 = (v44 + v35);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v10 + 1, 24);
          v11 = &v40;
          v12 = v44;
        }
      }

      v13 = &v12[24 * v45];
      v14 = *v11;
      *(v13 + 2) = *(v11 + 2);
      *v13 = v14;
      v15 = ++v45;
      if (v43[0])
      {
        v40 = 3;
        v42 = 71;
        v16 = &v40;
        v17 = v44;
        if (v15 >= v46)
        {
          if (v44 <= &v40 && v44 + 24 * v15 > &v40)
          {
            v36 = &v40 - v44;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v15 + 1, 24);
            v17 = v44;
            v16 = (v44 + v36);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v15 + 1, 24);
            v16 = &v40;
            v17 = v44;
          }
        }

        v18 = &v17[24 * v45];
        v19 = *v16;
        *(v18 + 2) = *(v16 + 2);
        *v18 = v19;
        ++v45;
        if (v43[0])
        {
          v20 = &v40;
          mlir::DiagnosticArgument::DiagnosticArgument(&v40, v5);
          v21 = v44;
          if (v45 >= v46)
          {
            if (v44 <= &v40 && v44 + 24 * v45 > &v40)
            {
              v37 = &v40 - v44;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
              v21 = v44;
              v20 = (v44 + v37);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
              v20 = &v40;
              v21 = v44;
            }
          }

          v22 = &v21[24 * v45];
          v23 = *v20;
          *(v22 + 2) = *(v20 + 2);
          *v22 = v23;
          ++v45;
        }
      }
    }
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v43);
  if (v43[0])
  {
    mlir::InFlightDiagnostic::report(v43);
  }

  if (v53 == 1)
  {
    if (v52 != &v53)
    {
      free(v52);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v51;
      v27 = __p;
      if (v51 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v51 = v25;
      operator delete(v27);
    }

    v28 = v48;
    if (v48)
    {
      v29 = v49;
      v30 = v48;
      if (v49 != v48)
      {
        do
        {
          v32 = *--v29;
          v31 = v32;
          *v29 = 0;
          if (v32)
          {
            MEMORY[0x1AC55A040](v31, 0x1000C8077774924);
          }
        }

        while (v29 != v28);
        v30 = v48;
      }

      v49 = v28;
      operator delete(v30);
    }

    if (v44 != v47)
    {
      free(v44);
    }
  }

  return v24;
}

BOOL mlir::pdl_interp::GetUsersOp::parse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  v17[1] = 1;
  v18 = 0;
  v23 = 257;
  if (((*(*a1 + 400))(a1, "of", 2, v22, a5, a6, a7, a8, &v18) & 1) == 0)
  {
    return 0;
  }

  v10 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v20, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v22[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::pdl::PDLType>(a1, v22))
  {
    return 0;
  }

  v18 = v22[0];
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v11 = (*(*a1 + 32))(a1);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v11);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
  v14 = mlir::pdl::RangeType::get(SingletonImpl);
  v15 = *(a2 + 72);
  if (v15 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v15 + 1, 8);
    LODWORD(v15) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v15) = v14;
  ++*(a2 + 72);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v17, v10, a2 + 16);
}

void mlir::pdl_interp::GetValueTypeOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
  v8 = SingletonImpl;
  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    v8 = mlir::pdl::RangeType::get(SingletonImpl);
  }

  v10 = a3;
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  v9 = *(a2 + 72);
  if (v9 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v9 + 1, 8);
    LODWORD(v9) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v9) = v8;
  ++*(a2 + 72);
}

BOOL mlir::pdl_interp::GetValueTypeOp::verifyInvariantsImpl(uint64_t **this)
{
  v68 = *MEMORY[0x1E69E9840];
  if (!mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps12(*this, *(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 2 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  v4 = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(*v4 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
  {
    v6 = *this;
    if (v5 != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id || (v57[0] = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, *(*mlir::AffineMapAttr::getValue(v57) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id))
    {
      v53 = 261;
      v52[0] = "result";
      v52[1] = 6;
      mlir::Operation::emitOpError(v6, v52, v57);
      if (v57[0])
      {
        v54 = 3;
        v55 = " #";
        v56 = 2;
        v7 = &v54;
        v8 = v58;
        if (v59 >= v60)
        {
          if (v58 <= &v54 && v58 + 24 * v59 > &v54)
          {
            v48 = &v54 - v58;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
            v8 = v58;
            v7 = (v58 + v48);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
            v7 = &v54;
            v8 = v58;
          }
        }

        v9 = &v8[24 * v59];
        v10 = *v7;
        *(v9 + 2) = *(v7 + 2);
        *v9 = v10;
        v11 = ++v59;
        if (v57[0])
        {
          v54 = 5;
          v55 = 0;
          v12 = &v54;
          v13 = v58;
          if (v11 >= v60)
          {
            if (v58 <= &v54 && v58 + 24 * v11 > &v54)
            {
              v49 = &v54 - v58;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v11 + 1, 24);
              v13 = v58;
              v12 = (v58 + v49);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v11 + 1, 24);
              v12 = &v54;
              v13 = v58;
            }
          }

          v14 = &v13[24 * v59];
          v15 = *v12;
          *(v14 + 2) = *(v12 + 2);
          *v14 = v15;
          v16 = ++v59;
          if (v57[0])
          {
            v54 = 3;
            v56 = 75;
            v17 = &v54;
            v18 = v58;
            if (v16 >= v60)
            {
              if (v58 <= &v54 && v58 + 24 * v16 > &v54)
              {
                v50 = &v54 - v58;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v16 + 1, 24);
                v18 = v58;
                v17 = (v58 + v50);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v16 + 1, 24);
                v17 = &v54;
                v18 = v58;
              }
            }

            v19 = &v18[24 * v59];
            v20 = *v17;
            *(v19 + 2) = *(v17 + 2);
            *v19 = v20;
            ++v59;
            if (v57[0])
            {
              v21 = &v54;
              mlir::DiagnosticArgument::DiagnosticArgument(&v54, v4);
              v22 = v58;
              if (v59 >= v60)
              {
                if (v58 <= &v54 && v58 + 24 * v59 > &v54)
                {
                  v51 = &v54 - v58;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
                  v22 = v58;
                  v21 = (v58 + v51);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
                  v21 = &v54;
                  v22 = v58;
                }
              }

              v23 = &v22[24 * v59];
              v24 = *v21;
              *(v23 + 2) = *(v21 + 2);
              *v23 = v24;
              ++v59;
            }
          }
        }
      }

      v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v57);
      if (v57[0])
      {
        mlir::InFlightDiagnostic::report(v57);
      }

      if (v67 == 1)
      {
        if (v66 != &v67)
        {
          free(v66);
        }

        v26 = __p;
        if (__p)
        {
          v27 = v65;
          v28 = __p;
          if (v65 != __p)
          {
            do
            {
              v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
            }

            while (v27 != v26);
            v28 = __p;
          }

          v65 = v26;
          operator delete(v28);
        }

        v29 = v62;
        if (v62)
        {
          v30 = v63;
          v31 = v62;
          if (v63 != v62)
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
            v31 = v62;
          }

          v63 = v29;
          operator delete(v31);
        }

        if (v58 != v61)
        {
          free(v58);
        }
      }

      if (!v25)
      {
        return 0;
      }
    }
  }

  if (*(*this + 9))
  {
    v34 = *this - 2;
  }

  else
  {
    v34 = 0;
  }

  v57[0] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v34, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  Context = mlir::Attribute::getContext(v57);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
  if (*(*v57[0] + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    SingletonImpl = mlir::pdl::RangeType::get(SingletonImpl);
  }

  if (SingletonImpl == (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 1;
  }

  v53 = 259;
  mlir::OpState::emitOpError(this, v52, v57);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v57);
  v39 = result;
  if (v57[0])
  {
    mlir::InFlightDiagnostic::report(v57);
    result = v39;
  }

  if (v67 == 1)
  {
    if (v66 != &v67)
    {
      free(v66);
      result = v39;
    }

    v40 = __p;
    if (__p)
    {
      v41 = v65;
      v42 = __p;
      if (v65 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v65 = v40;
      operator delete(v42);
      result = v39;
    }

    v43 = v62;
    if (v62)
    {
      v44 = v63;
      v45 = v62;
      if (v63 != v62)
      {
        do
        {
          v47 = *--v44;
          v46 = v47;
          *v44 = 0;
          if (v47)
          {
            MEMORY[0x1AC55A040](v46, 0x1000C8077774924);
          }
        }

        while (v44 != v43);
        v45 = v62;
      }

      v63 = v43;
      operator delete(v45);
      result = v39;
    }

    if (v58 != v61)
    {
      free(v58);
      return v39;
    }
  }

  return result;
}

BOOL mlir::pdl_interp::GetValueTypeOp::parse(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v22 = 257;
  if (((*(*a1 + 400))() & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v21[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::pdl::PDLType>(a1, v21))
  {
    return 0;
  }

  v4 = v21[0];
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v18 = v4;
  v5 = *(*v4 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id && (v21[0] = v4, *(*mlir::AffineMapAttr::getValue(v21) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id))
  {
    v11 = *(a2 + 72);
    if (v11 >= *(a2 + 76))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v11 + 1, 8);
      LODWORD(v11) = *(a2 + 72);
    }

    *(*(a2 + 64) + 8 * v11) = v4;
    ++*(a2 + 72);
    v21[0] = v4;
    Context = mlir::Attribute::getContext(v21);
    TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
    SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
    v15 = SingletonImpl;
    if (*(*v21[0] + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      v15 = mlir::pdl::RangeType::get(SingletonImpl);
    }

    return (*(*a1 + 728))(a1, v19, v15, a2 + 16) & 1;
  }

  else
  {
    v6 = (*(*a1 + 16))(a1);
    v17 = 257;
    (*(*a1 + 24))(v21, a1, v6, v16);
    mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v7, &v18);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v8);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v21);
    return v9;
  }
}

void mlir::pdl_interp::GetValueTypeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v23[4] = *MEMORY[0x1E69E9840];
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

  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] - v7 > 1uLL)
  {
    *v7 = 26223;
    v6[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v6, "of", 2uLL);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if (v12[3] == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++v12[4];
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  if (*(*this + 9))
  {
    v16 = *this - 16;
  }

  else
  {
    v16 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v21 = v23;
  v22 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v19, v21, v22);
  if (v21 != v23)
  {
    free(v21);
  }
}

void mlir::pdl_interp::IsNotNullOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a3;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  v8 = *(a2 + 208);
  if (v8 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, (a2 + 216), v8 + 1, 8);
    LODWORD(v8) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v8) = a4;
  v9 = *(a2 + 212);
  v10 = (*(a2 + 208) + 1);
  *(a2 + 208) = v10;
  if (v10 >= v9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, (a2 + 216), v10 + 1, 8);
    LODWORD(v10) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v10) = a5;
  ++*(a2 + 208);
}

BOOL mlir::pdl_interp::IsNotNullOp::parse(uint64_t a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x1E69E9840];
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11[0] = v12;
  v11[1] = 1;
  v9[1] = 1;
  v10 = 0;
  v9[0] = &v10;
  v15 = v17;
  v16 = 0x200000000;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v12, 1) & 1) != 0 && ((*(*a1 + 104))(a1))
  {
    v14[0] = 0;
    if (mlir::AsmParser::parseType<mlir::pdl::PDLType>(a1, v14))
    {
      v10 = v14[0];
      (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && ((*(*a1 + 56))(a1))
      {
        v14[0] = 0;
        v5 = (*(*a1 + 808))(a1, v14);
        if ((v5 & 0x100) == 0)
        {
LABEL_7:
          mlir::BlockRange::BlockRange(v14, v15, v16);
          mlir::OperationState::addSuccessors(a2, v14[0], v14[1]);
          v6 = mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v11, v9, v4, a2 + 16);
          goto LABEL_16;
        }

        if (v5)
        {
          llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v15, v14);
          while (((*(*a1 + 128))(a1) & 1) != 0)
          {
            if (((*(*a1 + 800))(a1, v14) & 1) == 0)
            {
              goto LABEL_15;
            }

            v7 = v16;
            if (v16 >= HIDWORD(v16))
            {
              llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v15, v14);
            }

            else
            {
              v15[v16] = v14[0];
              LODWORD(v16) = v7 + 1;
            }
          }

          goto LABEL_7;
        }
      }
    }
  }

LABEL_15:
  v6 = 0;
LABEL_16:
  if (v15 != v17)
  {
    free(v15);
  }

  return v6;
}

void mlir::pdl_interp::IsNotNullOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v31[4] = *MEMORY[0x1E69E9840];
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
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++v8[4];
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v29 = v31;
  v30 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v13, v29, v30);
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = v16[4];
  if (v16[3] - v17 > 1uLL)
  {
    *v17 = 15917;
    v16[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v16, "->", 2uLL);
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v20 = v28;
    if (!v28)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v20 = v28;
    if (!v28)
    {
      goto LABEL_24;
    }
  }

  v21 = AttrDictionary;
  (*(*a2 + 176))(a2, *(AttrDictionary + 24));
  v22 = v20 - 1;
  if (v22)
  {
    v23 = (v21 + 56);
    do
    {
      v25 = (*(*a2 + 16))(a2);
      v26 = v25[4];
      if (v25[3] - v26 <= 1uLL)
      {
        llvm::raw_ostream::write(v25, ", ", 2uLL);
      }

      else
      {
        *v26 = 8236;
        v25[4] += 2;
      }

      v24 = *v23;
      v23 += 4;
      (*(*a2 + 176))(a2, v24);
      --v22;
    }

    while (v22);
  }

LABEL_24:
  if (v29 != v31)
  {
    free(v29);
  }
}

unint64_t mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(mlir::pdl_interp::RecordMatchOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 96);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 112);
    v9 = 0uLL;
    v10 = v5;
    v11 = 0uLL;
    do
    {
      v9 = vaddq_s32(v8[-1], v9);
      v11 = vaddq_s32(*v8, v11);
      v8 += 2;
      v10 -= 8;
    }

    while (v10);
    v6 = vaddvq_s32(vaddq_s32(v11, v9));
    if (v5 == a2)
    {
      return v6 | (v4[a2] << 32);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v12 = (16 * v2 + 4 * v5 + *this + 96);
  v13 = a2 - v5;
  do
  {
    v14 = *v12++;
    v6 += v14;
    --v13;
  }

  while (v13);
  return v6 | (v4[a2] << 32);
}

BOOL mlir::pdl_interp::RecordMatchOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v89 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v73 = v6;
  if (!v6)
  {
    a3(&v77, a4);
    if (v77)
    {
      LODWORD(v74) = 3;
      v75 = "expected DictionaryAttr to set properties";
      v76 = 41;
      v26 = &v74;
      v27 = v79;
      if (v80 >= v81)
      {
        if (v79 <= &v74 && v79 + 24 * v80 > &v74)
        {
          v66 = &v74 - v79;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
          v27 = v79;
          v26 = (v79 + v66);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
          v26 = &v74;
          v27 = v79;
        }
      }

      v28 = &v27[24 * v80];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
      ++v80;
      if (v77)
      {
        mlir::InFlightDiagnostic::report(&v77);
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

    v30 = __p;
    if (__p)
    {
      v31 = v86;
      v32 = __p;
      if (v86 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v86 = v30;
      operator delete(v32);
    }

    v21 = v83;
    if (!v83)
    {
      goto LABEL_70;
    }

    v33 = v84;
    v23 = v83;
    if (v84 == v83)
    {
LABEL_69:
      v84 = v21;
      operator delete(v23);
LABEL_70:
      if (v79 != v82)
      {
        free(v79);
      }

      return 0;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
      }
    }

    while (v33 != v21);
LABEL_68:
    v23 = v83;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v73, "benefit", 7uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v9 = v8;
      a3(&v77, a4);
      if (v77)
      {
        LODWORD(v74) = 3;
        v76 = 52;
        v10 = &v74;
        v11 = v79;
        if (v80 >= v81)
        {
          if (v79 <= &v74 && v79 + 24 * v80 > &v74)
          {
            v67 = &v74 - v79;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
            v11 = v79;
            v10 = (v79 + v67);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
            v10 = &v74;
            v11 = v79;
          }
        }

        v12 = &v11[24 * v80];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v80;
        if (v77)
        {
          v14 = &v74;
          mlir::DiagnosticArgument::DiagnosticArgument(&v74, v9);
          v15 = v79;
          if (v80 >= v81)
          {
            if (v79 <= &v74 && v79 + 24 * v80 > &v74)
            {
              v68 = &v74 - v79;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
              v15 = v79;
              v14 = (v79 + v68);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
              v14 = &v74;
              v15 = v79;
            }
          }

          v16 = &v15[24 * v80];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v80;
          if (v77)
          {
            mlir::InFlightDiagnostic::report(&v77);
          }
        }
      }

      if ((v88 & 1) == 0)
      {
        return 0;
      }

      if (v87 != &v88)
      {
        free(v87);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v86;
        v20 = __p;
        if (v86 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v86 = v18;
        operator delete(v20);
      }

      v21 = v83;
      if (!v83)
      {
        goto LABEL_70;
      }

      v22 = v84;
      v23 = v83;
      if (v84 == v83)
      {
        goto LABEL_69;
      }

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
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v36 = mlir::DictionaryAttr::get(&v73, "generatedOps", 0xCuLL);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v37 = v36;
      a3(&v77, a4);
      if (v77)
      {
        LODWORD(v74) = 3;
        v76 = 57;
        v38 = &v74;
        v39 = v79;
        if (v80 >= v81)
        {
          if (v79 <= &v74 && v79 + 24 * v80 > &v74)
          {
            v69 = &v74 - v79;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
            v39 = v79;
            v38 = (v79 + v69);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
            v38 = &v74;
            v39 = v79;
          }
        }

        v40 = &v39[24 * v80];
        v41 = *v38;
        *(v40 + 2) = v38[2];
        *v40 = v41;
        ++v80;
        if (v77)
        {
          v42 = &v74;
          mlir::DiagnosticArgument::DiagnosticArgument(&v74, v37);
          v43 = v79;
          if (v80 >= v81)
          {
            if (v79 <= &v74 && v79 + 24 * v80 > &v74)
            {
              v70 = &v74 - v79;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
              v43 = v79;
              v42 = (v79 + v70);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
              v42 = &v74;
              v43 = v79;
            }
          }

          v44 = &v43[24 * v80];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
          ++v80;
          if (v77)
          {
            mlir::InFlightDiagnostic::report(&v77);
          }
        }
      }

      if ((v88 & 1) == 0)
      {
        return 0;
      }

      if (v87 != &v88)
      {
        free(v87);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v86;
        v48 = __p;
        if (v86 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v86 = v46;
        operator delete(v48);
      }

      v21 = v83;
      if (!v83)
      {
        goto LABEL_70;
      }

      v49 = v84;
      v23 = v83;
      if (v84 == v83)
      {
        goto LABEL_69;
      }

      do
      {
        v51 = *--v49;
        v50 = v51;
        *v49 = 0;
        if (v51)
        {
          MEMORY[0x1AC55A040](v50, 0x1000C8077774924);
        }
      }

      while (v49 != v21);
      goto LABEL_68;
    }

    a1[1] = v36;
  }

  v53 = mlir::DictionaryAttr::get(&v73, "rewriter", 8uLL);
  if (v53)
  {
    if (*(*v53 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      v54 = v53;
      a3(&v77, a4);
      if (v77)
      {
        LODWORD(v74) = 3;
        v76 = 53;
        v55 = &v74;
        v56 = v79;
        if (v80 >= v81)
        {
          if (v79 <= &v74 && v79 + 24 * v80 > &v74)
          {
            v71 = &v74 - v79;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
            v56 = v79;
            v55 = (v79 + v71);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
            v55 = &v74;
            v56 = v79;
          }
        }

        v57 = &v56[24 * v80];
        v58 = *v55;
        *(v57 + 2) = v55[2];
        *v57 = v58;
        ++v80;
        if (v77)
        {
          v59 = &v74;
          mlir::DiagnosticArgument::DiagnosticArgument(&v74, v54);
          v60 = v79;
          if (v80 >= v81)
          {
            if (v79 <= &v74 && v79 + 24 * v80 > &v74)
            {
              v72 = &v74 - v79;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
              v60 = v79;
              v59 = (v79 + v72);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
              v59 = &v74;
              v60 = v79;
            }
          }

          v61 = &v60[24 * v80];
          v62 = *v59;
          *(v61 + 2) = v59[2];
          *v61 = v62;
          ++v80;
          if (v77)
          {
            mlir::InFlightDiagnostic::report(&v77);
          }
        }
      }

      if (v88 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v78);
      }

      return 0;
    }

    a1[2] = v53;
  }

  v63 = mlir::DictionaryAttr::get(&v73, "rootKind", 8uLL);
  v74 = v63;
  if (v63)
  {
    if (*(*v63 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      a3(&v77, a4);
      mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v64, &v74);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v77);
      return 0;
    }

    a1[3] = v63;
  }

  v65 = mlir::DictionaryAttr::get(&v73, "operandSegmentSizes", 0x13uLL);
  if (!v65)
  {
    v65 = mlir::DictionaryAttr::get(&v73, "operand_segment_sizes", 0x15uLL);
    if (!v65)
    {
      return 1;
    }
  }

  return (mlir::convertFromAttribute(a1 + 4, 2, v65, a3, a4) & 1) != 0;
}

uint64_t mlir::pdl_interp::RecordMatchOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v46[6] = *MEMORY[0x1E69E9840];
  v43 = a1;
  v44 = v46;
  v45 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v43, "benefit", 7uLL, *a2);
    v6 = v45;
    if (v45 >= HIDWORD(v45))
    {
      v35 = NamedAttr;
      v36 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v45 + 1, 16);
      v5 = v36;
      NamedAttr = v35;
      v6 = v45;
    }

    v7 = (v44 + 16 * v6);
    *v7 = NamedAttr;
    v7[1] = v5;
    LODWORD(v45) = v45 + 1;
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = mlir::Builder::getNamedAttr(&v43, "generatedOps", 0xCuLL, v8);
    v11 = v45;
    if (v45 >= HIDWORD(v45))
    {
      v37 = v9;
      v38 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v45 + 1, 16);
      v10 = v38;
      v9 = v37;
      v11 = v45;
    }

    v12 = (v44 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    LODWORD(v45) = v45 + 1;
  }

  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v43, "rewriter", 8uLL, v13);
    v16 = v45;
    if (v45 >= HIDWORD(v45))
    {
      v39 = v14;
      v40 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v45 + 1, 16);
      v15 = v40;
      v14 = v39;
      v16 = v45;
    }

    v17 = (v44 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    LODWORD(v45) = v45 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v43, "rootKind", 8uLL, v18);
    v21 = v45;
    if (v45 >= HIDWORD(v45))
    {
      v41 = v19;
      v42 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v45 + 1, 16);
      v20 = v42;
      v19 = v41;
      v21 = v45;
    }

    v22 = (v44 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    LODWORD(v45) = v45 + 1;
  }

  v23 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 4), 2);
  v24 = mlir::Builder::getNamedAttr(&v43, "operandSegmentSizes", 0x13uLL, v23);
  v26 = v45;
  if (v45 >= HIDWORD(v45))
  {
    v33 = v24;
    v34 = v25;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v45 + 1, 16);
    v25 = v34;
    v24 = v33;
    v26 = v45;
  }

  v27 = (v44 + 16 * v26);
  *v27 = v24;
  v27[1] = v25;
  v28 = __CFADD__(v45, 1);
  v29 = (v45 + 1);
  LODWORD(v45) = v45 + 1;
  if (v28)
  {
    DictionaryAttr = 0;
    v31 = v44;
    if (v44 == v46)
    {
      return DictionaryAttr;
    }

    goto LABEL_24;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v43, v44, v29);
  v31 = v44;
  if (v44 != v46)
  {
LABEL_24:
    free(v31);
  }

  return DictionaryAttr;
}

unint64_t mlir::pdl_interp::RecordMatchOp::computePropertiesHash(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(*(a1 + 8));
  v5 = 0x9DDFEA08EB382D69 * ((8 * *(a1 + 8) - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(*(a1 + 16));
  v8 = 0x9DDFEA08EB382D69 * ((8 * *(a1 + 16) - 0xAE502812AA7333) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v10 = HIDWORD(*(a1 + 24));
  v11 = 0x9DDFEA08EB382D69 * ((8 * *(a1 + 24) - 0xAE502812AA7333) ^ v10);
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v13 = *(a1 + 36) ^ 0xFF51AFD7ED558CCDLL;
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ (8 * *(a1 + 32) + 8));
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  v26 = 0;
  v27 = 0xFF51AFD7ED558CCDLL;
  v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) ^ ((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) >> 47));
  v23[0] = v3;
  v23[1] = v6;
  v20 = 0;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v23, &v20, v24, v25, v9);
  v21 = v20;
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v23, &v21, v16, v25, v12);
  v22 = v21;
  v18 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v23, &v22, v17, v25, v15);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v23, v22, v18, v25);
}

uint64_t mlir::pdl_interp::RecordMatchOp::getInherentAttr(mlir::MLIRContext *a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 11)
  {
    if (__n == 12)
    {
      if (!memcmp(__s1, "generatedOps", 0xCuLL))
      {
        return a2[1];
      }
    }

    else if (__n == 19)
    {
      if (!memcmp(__s1, "operandSegmentSizes", 0x13uLL))
      {
        return mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 4), 2);
      }
    }

    else if (__n == 21 && !memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 4), 2);
    }

    return 0;
  }

  if (__n == 7)
  {
    if (*__s1 == 1701733730 && *(__s1 + 3) == 1953064549)
    {
      return *a2;
    }

    return 0;
  }

  if (__n != 8)
  {
    return 0;
  }

  if (memcmp(__s1, "rewriter", 8uLL))
  {
    if (*__s1 == 0x646E694B746F6F72)
    {
      return a2[3];
    }

    return 0;
  }

  return a2[2];
}

uint64_t mlir::pdl_interp::RecordMatchOp::setInherentAttr(uint64_t result, _DWORD *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 <= 11)
  {
    if (a3 == 7)
    {
      if (*__s1 == 1701733730 && *(__s1 + 3) == 1953064549)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v12 = a4;
          }

          else
          {
            v12 = 0;
          }

          *result = v12;
        }

        else
        {
          *result = 0;
        }
      }
    }

    else if (a3 == 8)
    {
      result = memcmp(__s1, "rewriter", 8uLL);
      if (result)
      {
        if (*__s1 == 0x646E694B746F6F72)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
            {
              v7 = a4;
            }

            else
            {
              v7 = 0;
            }

            v5[3] = v7;
          }

          else
          {
            v5[3] = 0;
          }
        }
      }

      else if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          v13 = a4;
        }

        else
        {
          v13 = 0;
        }

        v5[2] = v13;
      }

      else
      {
        v5[2] = 0;
      }
    }
  }

  else if (a3 == 12)
  {
    result = memcmp(__s1, "generatedOps", 0xCuLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }

        v5[1] = v8;
      }

      else
      {
        v5[1] = 0;
      }
    }
  }

  else
  {
    if (a3 == 19)
    {
      result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (a3 != 21)
      {
        return result;
      }

      result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
      if (result)
      {
        return result;
      }
    }

    if (a4)
    {
      result = mlir::detail::DenseArrayAttrImpl<int>::classof(a4);
      if (result)
      {
        v9 = a4;
      }

      else
      {
        v9 = 0;
      }

      v14 = v9;
      if (v9)
      {
        result = mlir::AffineBinaryOpExpr::getLHS(&v14);
        if (result == 2)
        {
          result = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v14);
          if (v10)
          {
            return memmove(v5 + 4, result, 4 * v10);
          }
        }
      }
    }
  }

  return result;
}

void mlir::pdl_interp::RecordMatchOp::populateInherentAttrs(mlir::MLIRContext *a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "benefit", 7uLL, *a2);
  }

  v6 = a2[1];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "generatedOps", 0xCuLL, v6);
  }

  v7 = a2[2];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "rewriter", 8uLL, v7);
  }

  v8 = a2[3];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "rootKind", 8uLL, v8);
  }

  v9 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 4), 2);

  mlir::NamedAttrList::append(a3, "operandSegmentSizes", 0x13uLL, v9);
}

BOOL mlir::pdl_interp::RecordMatchOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps5(v8, "benefit", 7, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps4(v9, "generatedOps", 0xC, a3, a4))
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps11(v10, "rewriter", 8, a3, a4))
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v11, "rootKind", 8, a3, a4))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps11(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    return 1;
  }

  a4(&v31, a5);
  if (v31)
  {
    LODWORD(v27) = 3;
    v28 = "attribute '";
    v29 = 11;
    v7 = &v27;
    v8 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v27 && v33 + 24 * v34 > &v27)
      {
        v25 = &v27 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v8 = v33;
        v7 = (v33 + v25);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v7 = &v27;
        v8 = v33;
      }
    }

    v9 = &v8[24 * v34];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v34;
    if (v31)
    {
      v30 = 261;
      v27 = a2;
      v28 = a3;
      mlir::Diagnostic::operator<<(&v32, &v27);
      if (v31)
      {
        LODWORD(v27) = 3;
        v28 = "' failed to satisfy constraint: symbol reference attribute";
        v29 = 58;
        v11 = &v27;
        v12 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v27 && v33 + 24 * v34 > &v27)
          {
            v26 = &v27 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v12 = v33;
            v11 = (v33 + v26);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v11 = &v27;
            v12 = v33;
          }
        }

        v13 = &v12[24 * v34];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v34;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v40;
      v18 = __p;
      if (v40 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v40 = v16;
      operator delete(v18);
    }

    v19 = v37;
    if (v37)
    {
      v20 = v38;
      v21 = v37;
      if (v38 != v37)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
          }
        }

        while (v20 != v19);
        v21 = v37;
      }

      v38 = v19;
      operator delete(v21);
    }

    if (v33 != v36)
    {
      free(v33);
    }
  }

  return v15;
}

BOOL mlir::pdl_interp::RecordMatchOp::readProperties(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (!mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 1))
  {
    return 0;
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v9 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v9))
    {
      return 0;
    }

    if (mlir::AffineBinaryOpExpr::getLHS(&v9) >= 3)
    {
      v7 = "size mismatch for operand/result_segment_size";
      v8 = 259;
      (*(*a1 + 16))(&v10, a1, &v7);
      if (v10)
      {
        mlir::InFlightDiagnostic::report(&v10);
      }

      if (v11[192] == 1)
      {
        mlir::Diagnostic::~Diagnostic(v11);
      }

      return 0;
    }

    v4 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v9);
    if (v5)
    {
      memmove(v3 + 4, v4, 4 * v5);
    }
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::SymbolRefAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, v3 + 3) && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 8, 2) & 1) != 0);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::SymbolRefAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    return 1;
  }

  v35[16] = 257;
  (*(*a1 + 16))(&v41, a1, v35);
  if (v41)
  {
    LODWORD(v37) = 3;
    v38 = "expected ";
    v39 = 9;
    v6 = &v37;
    v7 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = v43;
        v6 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v6 = &v37;
        v7 = v43;
      }
    }

    v8 = &v7[24 * v44];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::SymbolRefAttr]";
  v38 = 69;
  v10 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v38;
    }

    v12 = 18;
    if (v38 - v11 < 0x12)
    {
      v12 = v38 - v11;
    }

    v13 = v38 - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v40 = 261;
    v37 += v11 + v12;
    v38 = v13;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v14 = &v37;
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v37;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v44;
      if (v41)
      {
        v18 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v19 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = v43;
            v18 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v18 = &v37;
            v19 = v43;
          }
        }

        v20 = &v19[24 * v44];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v44;
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v50;
      v25 = __p;
      if (v50 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v50 = v23;
      operator delete(v25);
    }

    v26 = v47;
    if (v47)
    {
      v27 = v48;
      v28 = v47;
      if (v48 != v47)
      {
        do
        {
          v30 = *--v27;
          v29 = v30;
          *v27 = 0;
          if (v30)
          {
            MEMORY[0x1AC55A040](v29, 0x1000C8077774924);
          }
        }

        while (v27 != v26);
        v28 = v47;
      }

      v48 = v26;
      operator delete(v28);
    }

    if (v43 != v46)
    {
      free(v43);
    }
  }

  return v22;
}

uint64_t mlir::pdl_interp::RecordMatchOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = (v4 + 64);
  (*(*a2 + 16))(a2, v6);
  (*(*a2 + 24))(a2, *(v5 + 1));
  if ((*(*a2 + 104))(a2) <= 5)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (v5 + 8), 2);
    (*(*a2 + 16))(a2, v8);
  }

  (*(*a2 + 16))(a2, *(v5 + 2));
  (*(*a2 + 24))(a2, *(v5 + 3));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, v5 + 8, 2);
  }

  return result;
}

uint64_t mlir::pdl_interp::RecordMatchOp::getRootKind@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 88);
  if (v4)
  {
    this = mlir::OpaqueAttr::getAttrData(&v4);
    *a2 = this;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return this;
}

uint64_t mlir::pdl_interp::RecordMatchOp::getBenefit(mlir::pdl_interp::RecordMatchOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x1AC55A040]();
  return v2;
}

void mlir::pdl_interp::RecordMatchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = a4;
  mlir::OperationState::addOperands(a2, a3, a4);
  mlir::OperationState::addOperands(a2, a5, a6);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 32) = v15 | (a6 << 32);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 16) = a7;
  if (a8)
  {
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *(v22 + 24) = a8;
    if (!a9)
    {
LABEL_5:
      v19 = a10;
      v20 = *(a2 + 256);
      if (v20)
      {
        goto LABEL_6;
      }

LABEL_18:
      operator new();
    }
  }

  else if (!a9)
  {
    goto LABEL_5;
  }

  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 8) = a9;
  v19 = a10;
  v20 = *(a2 + 256);
  if (!v20)
  {
    goto LABEL_18;
  }

LABEL_6:
  *v20 = v19;
  v21 = *(a2 + 208);
  if (v21 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, (a2 + 216), v21 + 1, 8);
    LODWORD(v21) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v21) = a11;
  ++*(a2 + 208);
}

BOOL mlir::pdl_interp::RecordMatchOp::verifyInvariantsImpl(uint64_t **this)
{
  v85 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v6 = v3[8];
  v4 = v3 + 8;
  v5 = v6;
  if (!v6)
  {
    v69[0] = "requires attribute 'benefit'";
    v70 = 259;
    mlir::OpState::emitOpError(this, v69, v74);
    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v74);
    if (v74[0])
    {
      mlir::InFlightDiagnostic::report(v74);
    }

    if (v84 != 1)
    {
      return v15;
    }

    if (v83 != &v84)
    {
      free(v83);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v82;
      v23 = __p;
      if (v82 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v82 = v21;
      operator delete(v23);
    }

    v24 = v79;
    if (v79)
    {
      v25 = v80;
      v26 = v79;
      if (v80 != v79)
      {
        do
        {
          v28 = *--v25;
          v27 = v28;
          *v25 = 0;
          if (v28)
          {
            MEMORY[0x1AC55A040](v27, 0x1000C8077774924);
          }
        }

        while (v25 != v24);
        goto LABEL_46;
      }

LABEL_47:
      v80 = v24;
      operator delete(v26);
    }

LABEL_48:
    if (v75 != v78)
    {
      free(v75);
    }

    return v15;
  }

  v7 = v4[2];
  if (!v7)
  {
    v69[0] = "requires attribute 'rewriter'";
    v70 = 259;
    mlir::OpState::emitOpError(this, v69, v74);
    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v74);
    if (v74[0])
    {
      mlir::InFlightDiagnostic::report(v74);
    }

    if (v84 != 1)
    {
      return v15;
    }

    if (v83 != &v84)
    {
      free(v83);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v82;
      v31 = __p;
      if (v82 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v82 = v29;
      operator delete(v31);
    }

    v24 = v79;
    if (v79)
    {
      v32 = v80;
      v26 = v79;
      if (v80 != v79)
      {
        do
        {
          v34 = *--v32;
          v33 = v34;
          *v32 = 0;
          if (v34)
          {
            MEMORY[0x1AC55A040](v33, 0x1000C8077774924);
          }
        }

        while (v32 != v24);
LABEL_46:
        v26 = v79;
        goto LABEL_47;
      }

      goto LABEL_47;
    }

    goto LABEL_48;
  }

  v8 = v4[1];
  v9 = v4[3];
  v74[0] = v2;
  if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps11(v7, "rewriter", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v74))
  {
    return 0;
  }

  v74[0] = *this;
  if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v9, "rootKind", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v74))
  {
    return 0;
  }

  v74[0] = *this;
  if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps4(v8, "generatedOps", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v74))
  {
    return 0;
  }

  v74[0] = *this;
  if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps5(v5, "benefit", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v74))
  {
    return 0;
  }

  v10 = *(*this + 11);
  v11 = LODWORD((*this)[2 * ((v10 >> 23) & 1) + 12]);
  if ((v10 & 0x800000) != 0)
  {
    v12 = (*this)[9];
    if (v11)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v12 = 0;
  if (!v11)
  {
LABEL_12:
    v15 = 1;
    ODSOperands = mlir::pdl_interp::RecordMatchOp::getODSOperands(this, 1u);
    if (!v17)
    {
      return v15;
    }

    v18 = ODSOperands;
    v19 = v17;
    v20 = 0;
    while (1)
    {
      v35 = *(*(v18 + 32 * v20 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(*v35 + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
      {
        v36 = *this;
        v70 = 261;
        v69[0] = "operand";
        v69[1] = 7;
        mlir::Operation::emitOpError(v36, v69, v74);
        if (v74[0])
        {
          v71 = 3;
          v72 = " #";
          v73 = 2;
          v37 = v75;
          if (v76 >= v77)
          {
            if (v75 <= &v71 && v75 + 24 * v76 > &v71)
            {
              v64 = &v71 - v75;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v76 + 1, 24);
              v37 = v75;
              v38 = (v75 + v64);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v76 + 1, 24);
              v38 = &v71;
              v37 = v75;
            }
          }

          else
          {
            v38 = &v71;
          }

          v39 = &v37[24 * v76];
          v40 = *v38;
          *(v39 + 2) = *(v38 + 2);
          *v39 = v40;
          v41 = ++v76;
          if (v74[0])
          {
            v71 = 5;
            v72 = v11;
            v42 = v75;
            if (v41 >= v77)
            {
              if (v75 <= &v71 && v75 + 24 * v41 > &v71)
              {
                v65 = &v71 - v75;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v41 + 1, 24);
                v42 = v75;
                v43 = (v75 + v65);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v41 + 1, 24);
                v43 = &v71;
                v42 = v75;
              }
            }

            else
            {
              v43 = &v71;
            }

            v44 = &v42[24 * v76];
            v45 = *v43;
            *(v44 + 2) = *(v43 + 2);
            *v44 = v45;
            v46 = ++v76;
            if (v74[0])
            {
              v71 = 3;
              v73 = 67;
              v47 = v75;
              if (v46 >= v77)
              {
                if (v75 <= &v71 && v75 + 24 * v46 > &v71)
                {
                  v66 = &v71 - v75;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v46 + 1, 24);
                  v47 = v75;
                  v48 = (v75 + v66);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v46 + 1, 24);
                  v48 = &v71;
                  v47 = v75;
                }
              }

              else
              {
                v48 = &v71;
              }

              v49 = &v47[24 * v76];
              v50 = *v48;
              *(v49 + 2) = *(v48 + 2);
              *v49 = v50;
              ++v76;
              if (v74[0])
              {
                v51 = &v71;
                mlir::DiagnosticArgument::DiagnosticArgument(&v71, v35);
                v52 = v75;
                if (v76 >= v77)
                {
                  if (v75 <= &v71 && v75 + 24 * v76 > &v71)
                  {
                    v67 = &v71 - v75;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v76 + 1, 24);
                    v52 = v75;
                    v51 = (v75 + v67);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v76 + 1, 24);
                    v51 = &v71;
                    v52 = v75;
                  }
                }

                v53 = &v52[24 * v76];
                v54 = *v51;
                *(v53 + 2) = *(v51 + 2);
                *v53 = v54;
                ++v76;
              }
            }
          }
        }

        v55 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v74);
        if (v74[0])
        {
          mlir::InFlightDiagnostic::report(v74);
        }

        if (v84 == 1)
        {
          if (v83 != &v84)
          {
            free(v83);
          }

          v56 = __p;
          if (__p)
          {
            v57 = v82;
            v58 = __p;
            if (v82 != __p)
            {
              do
              {
                v57 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v57 - 1);
              }

              while (v57 != v56);
              v58 = __p;
            }

            v82 = v56;
            operator delete(v58);
          }

          v59 = v79;
          if (v79)
          {
            v60 = v80;
            v61 = v79;
            if (v80 != v79)
            {
              do
              {
                v63 = *--v60;
                v62 = v63;
                *v60 = 0;
                if (v63)
                {
                  MEMORY[0x1AC55A040](v62, 0x1000C8077774924);
                }
              }

              while (v60 != v59);
              v61 = v79;
            }

            v80 = v59;
            operator delete(v61);
          }

          if (v75 != v78)
          {
            free(v75);
          }
        }

        if (!v55)
        {
          break;
        }
      }

      LODWORD(v11) = v11 + 1;
      ++v20;
      v15 = 1;
      if (v20 == v19)
      {
        return v15;
      }
    }

    return 0;
  }

LABEL_9:
  v13 = 0;
  v14 = v12 + 24;
  while (mlir::pdl::__mlir_ods_local_type_constraint_PDLOps1(*this, *(*v14 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v13))
  {
    ++v13;
    v14 += 32;
    if (v11 == v13)
    {
      goto LABEL_12;
    }
  }

  return 0;
}

uint64_t mlir::pdl_interp::RecordMatchOp::parse(uint64_t a1, void *a2)
{
  v45[16] = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = 0;
  v43 = v45;
  v44 = 0x400000000;
  v41[0] = &v42;
  v41[1] = 0x100000000;
  v32 = 0;
  v33 = 0;
  v38 = v40;
  v39 = 0x400000000;
  v31 = 0;
  v4 = (*(*a1 + 32))(a1);
  v6 = mlir::NoneType::get(*v4, v5);
  if (!mlir::AsmParser::parseAttribute<mlir::SymbolRefAttr>(a1, &v35, v6))
  {
    goto LABEL_51;
  }

  if (v35)
  {
    v7 = a2[32];
    if (!v7)
    {
      operator new();
    }

    *(v7 + 16) = v35;
  }

  if ((*(*a1 + 288))(a1))
  {
    v8 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, &v43, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v41) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v8 = 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_51;
  }

  v37 = 257;
  if (((*(*a1 + 400))(a1, "benefit", 7, v36) & 1) == 0)
  {
    goto LABEL_51;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_51;
  }

  v9 = (*(*a1 + 32))(a1);
  IntegerType = mlir::Builder::getIntegerType(v9, 16);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v34, IntegerType))
  {
    goto LABEL_51;
  }

  if (v34)
  {
    v11 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(a2);
    *v11 = v34;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0)
  {
    goto LABEL_51;
  }

  if ((*(*a1 + 408))(a1, "generatedOps", 12))
  {
    if (((*(*a1 + 280))(a1) & 1) == 0)
    {
      goto LABEL_51;
    }

    v12 = (*(*a1 + 32))(a1);
    v14 = mlir::NoneType::get(*v12, v13);
    if (!mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v33, v14))
    {
      goto LABEL_51;
    }

    if (v33)
    {
      v15 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(a2);
      *(v15 + 8) = v33;
    }

    if (((*(*a1 + 296))(a1) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v37 = 257;
  if (((*(*a1 + 400))(a1, "loc", 3, v36) & 1) == 0)
  {
    goto LABEL_51;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_51;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_51;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v38, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 328))(a1) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
  {
    goto LABEL_51;
  }

  if ((*(*a1 + 128))(a1))
  {
    v37 = 257;
    if (((*(*a1 + 400))(a1, "root", 4, v36) & 1) == 0)
    {
      goto LABEL_51;
    }

    if (((*(*a1 + 280))(a1) & 1) == 0)
    {
      goto LABEL_51;
    }

    v16 = (*(*a1 + 32))(a1);
    v18 = mlir::NoneType::get(*v16, v17);
    if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v32, v18))
    {
      goto LABEL_51;
    }

    if (v32)
    {
      v19 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(a2);
      *(v19 + 24) = v32;
    }

    if (((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v30 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 14) & 1) == 0)
  {
    goto LABEL_51;
  }

  v20 = a2[1];
  v36[0] = a1;
  v36[1] = &v30;
  v36[2] = a2;
  if (!mlir::pdl_interp::RecordMatchOp::verifyInherentAttrs(v20, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::RecordMatchOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v36))
  {
    goto LABEL_51;
  }

  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    goto LABEL_51;
  }

  if (((*(*a1 + 800))(a1, &v31) & 1) == 0)
  {
    goto LABEL_51;
  }

  mlir::OperationState::addSuccessors(a2, v31);
  v21 = v44;
  v22 = v39;
  *(mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(a2) + 32) = v21 | (v22 << 32);
  v23 = (*(*a1 + 32))(a1);
  v24 = mlir::Builder::getType<mlir::pdl::OperationType>(v23);
  if (!mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v43, v41, v8, (a2 + 2)))
  {
    goto LABEL_51;
  }

  if (v39)
  {
    v25 = v38;
    v26 = 32 * v39;
    while (((*(*a1 + 728))(a1, v25, v24, a2 + 2) & 1) != 0)
    {
      v25 += 32;
      v27 = 1;
      v26 -= 32;
      if (!v26)
      {
        goto LABEL_52;
      }
    }

LABEL_51:
    v27 = 0;
LABEL_52:
    v28 = v38;
    if (v38 != v40)
    {
      goto LABEL_53;
    }

    goto LABEL_54;
  }

  v27 = 1;
  v28 = v38;
  if (v38 != v40)
  {
LABEL_53:
    free(v28);
  }

LABEL_54:
  if (v41[0] != &v42)
  {
    free(v41[0]);
  }

  if (v43 != v45)
  {
    free(v43);
  }

  return v27;
}

void mlir::pdl_interp::ReplaceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = a3;
  mlir::OperationState::addOperands(a2, &v8, 1uLL);
  mlir::OperationState::addOperands(a2, a4, a5);
}

BOOL mlir::pdl_interp::ReplaceOp::parse(uint64_t a1, uint64_t a2)
{
  v17[16] = *MEMORY[0x1E69E9840];
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v15 = v17;
  v16 = 0x400000000;
  v13[0] = &v14;
  v13[1] = 0x100000000;
  (*(*a1 + 40))(a1);
  v7 = ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && (v12 = 257, ((*(*a1 + 400))(a1, "with", 4, v11) & 1) != 0) && ((*(*a1 + 280))(a1) & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, &v15, 0, 1, 0xFFFFFFFFLL) & 1) != 0) && (!v16 || ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, v13) & 1) != 0) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0) && (v5 = (*(*a1 + 32))(a1), v6 = mlir::Builder::getType<mlir::pdl::OperationType>(v5), ((*(*a1 + 728))(a1, v9, v6, a2 + 16) & 1) != 0) && mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v15, v13, v4, a2 + 16);
  if (v13[0] != &v14)
  {
    free(v13[0]);
  }

  if (v15 != v17)
  {
    free(v15);
  }

  return v7;
}

void mlir::pdl_interp::ReplaceOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v51 = *MEMORY[0x1E69E9840];
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
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] - v9 > 3uLL)
  {
    *v9 = 1752459639;
    v8[4] += 4;
  }

  else
  {
    llvm::raw_ostream::write(v8, "with", 4uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if (v12[3] != v13)
  {
    *v13 = 40;
    ++v12[4];
    v14 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      goto LABEL_15;
    }

LABEL_21:
    v16 = 0;
    v17 = -1;
    v18 = (*(*a2 + 16))(a2);
LABEL_17:
    v19 = v18;
    (*(*a2 + 160))(a2, *(v16 + 56));
    v20 = v17 - 1;
    if (v20)
    {
      v38 = (v16 + 88);
      do
      {
        v40 = v19[4];
        if (v19[3] - v40 > 1uLL)
        {
          *v40 = 8236;
          v19[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v19, ", ", 2uLL);
        }

        v39 = *v38;
        v38 += 4;
        (*(*a2 + 160))(a2, v39);
        --v20;
      }

      while (v20);
    }

    goto LABEL_18;
  }

  llvm::raw_ostream::write(v12, "(", 1uLL);
  v14 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  v15 = *(v14 + 17);
  if (v15 == 1)
  {
    goto LABEL_33;
  }

  v16 = v14[9];
  v17 = v15 - 1;
  v18 = (*(*a2 + 16))(a2);
  if (v17)
  {
    goto LABEL_17;
  }

LABEL_18:
  v21 = (*(*a2 + 16))(a2);
  v22 = *(v21 + 4);
  if (v22 >= *(v21 + 3))
  {
    llvm::raw_ostream::write(v21, 32);
  }

  else
  {
    *(v21 + 4) = v22 + 1;
    *v22 = 32;
  }

  v23 = (*(*a2 + 16))(a2);
  v24 = v23[4];
  if (v23[3] == v24)
  {
    llvm::raw_ostream::write(v23, ":", 1uLL);
  }

  else
  {
    *v24 = 58;
    ++v23[4];
  }

  v25 = (*(*a2 + 16))(a2);
  v26 = *(v25 + 4);
  if (v26 >= *(v25 + 3))
  {
    llvm::raw_ostream::write(v25, 32);
  }

  else
  {
    *(v25 + 4) = v26 + 1;
    *v26 = 32;
  }

  v27 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v28 = *(v27 + 17);
    v29 = v27[9];
    v30 = v28 - 1;
  }

  else
  {
    v29 = 0;
    v30 = -1;
  }

  v46[0] = v29 + 32;
  v46[1] = v30;
  mlir::OperandRange::getTypes(&v47, v46);
  v31 = v48;
  v32 = v50;
  if (v48 != v50)
  {
    v33 = v47 + 32 * v48;
    (*(*a2 + 32))(a2, *(*(v33 + 3) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v31 + 1 != v32)
    {
      v41 = ~v31 + v32;
      v42 = (v33 + 56);
      do
      {
        v44 = (*(*a2 + 16))(a2);
        v45 = v44[4];
        if (v44[3] - v45 > 1uLL)
        {
          *v45 = 8236;
          v44[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v44, ", ", 2uLL);
        }

        v43 = *v42;
        v42 += 4;
        (*(*a2 + 32))(a2, *(v43 + 8) & 0xFFFFFFFFFFFFFFF8);
        --v41;
      }

      while (v41);
    }
  }

LABEL_33:
  v34 = (*(*a2 + 16))(a2);
  v35 = v34[4];
  if (v34[3] == v35)
  {
    llvm::raw_ostream::write(v34, ")", 1uLL);
  }

  else
  {
    *v35 = 41;
    ++v34[4];
  }

  v47 = &v49;
  v48 = 0x200000000;
  v46[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v46);
  (*(*a2 + 192))(a2, Value, v37, v47, v48);
  if (v47 != &v49)
  {
    free(v47);
  }
}