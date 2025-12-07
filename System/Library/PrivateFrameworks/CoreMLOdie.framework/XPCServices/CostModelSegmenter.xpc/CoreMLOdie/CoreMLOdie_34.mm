uint64_t mlir::ODIE::Compiler::CoreML::SetMemberOp::parse(mlir::ODIE::Compiler::CoreML::SetMemberOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v33 = v35;
  v34 = &_mh_execute_header;
  if (((*(*this + 720))(this, &v33, 1, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_16;
  }

  v24 = 0;
  v25 = 0;
  if (((*(*this + 160))(this) & 1) == 0)
  {
    if (mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(this, &v24))
    {
      goto LABEL_25;
    }

LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  v27 = 0;
  if (!sub_1001D8E8C(this, &v27, 0) || ((*(*this + 168))(this) & 1) == 0)
  {
    goto LABEL_16;
  }

  v5 = v27;
  if (v27)
  {
    v6 = *v27;
    {
      v7 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v8 = *(v6 + 8);
      v9 = *(v6 + 16);
      if (!v9)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_10028243C();
      v7 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v8 = *(v6 + 8);
      v9 = *(v6 + 16);
      if (!v9)
      {
        goto LABEL_23;
      }
    }

    v10 = v8;
    v11 = v9;
    do
    {
      v12 = v11 >> 1;
      v13 = &v10[2 * (v11 >> 1)];
      v15 = *v13;
      v14 = v13 + 2;
      v11 += ~(v11 >> 1);
      if (v15 < v7)
      {
        v10 = v14;
      }

      else
      {
        v11 = v12;
      }
    }

    while (v11);
    if (v10 != &v8[2 * v9] && *v10 == v7)
    {
      v18 = v10[1];
      goto LABEL_24;
    }
  }

LABEL_23:
  v18 = 0;
LABEL_24:
  v24 = v5;
  v25 = v18;
LABEL_25:
  v30 = v32;
  v31 = 0x200000000;
  if ((*(*this + 104))(this) & 1) != 0 && (mlir::AsmParser::parseTypeList(this, &v30) & 1) != 0 && ((*(*this + 496))(this, a2 + 112))
  {
    v27 = v29;
    v28 = 0x600000000;
    if (v34 && v31)
    {
      v19 = v33;
      v20 = v30;
      v21 = 8 * v31 - 8;
      v22 = 32 * v34 - 32;
      while (((*(*this + 728))(this, v19, *v20, &v27) & 1) != 0)
      {
        if (v22)
        {
          v19 += 32;
          ++v20;
          v23 = v21;
          v21 -= 8;
          v22 -= 32;
          if (v23)
          {
            continue;
          }
        }

        goto LABEL_34;
      }

      v16 = 0;
    }

    else
    {
LABEL_34:
      sub_1001D8224(a2, **(*(a2 + 1) + 96), v24);
      mlir::ValueRange::ValueRange(v26, v27, v28);
      mlir::OperationState::addOperands(a2, v26[0], v26[1]);
      v16 = 1;
    }

    if (v27 != v29)
    {
      free(v27);
    }
  }

  else
  {
    v16 = 0;
  }

  if (v30 != v32)
  {
    free(v30);
  }

LABEL_17:
  if (v33 != v35)
  {
    free(v33);
  }

  return v16;
}

uint64_t mlir::ODIE::Compiler::CoreML::SetMemberOp::verifySymbolUses(mlir::Operation **this, mlir::SymbolTableCollection *a2)
{
  Ref = sub_1001D89A4(this);
  if (*(*Ref + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v5 = Ref;
  }

  else
  {
    v5 = 0;
  }

  v82 = v5;
  if (v5)
  {
    Ref = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getRef(&v82);
  }

  v6 = *(*Ref + 136);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  if (v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v8 = Ref;
  }

  else
  {
    v8 = 0;
  }

  v82 = v8;
  if (v7)
  {
    Ref = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(&v82);
  }

  if (*(*Ref + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v9 = Ref;
  }

  else
  {
    v9 = 0;
  }

  v78 = v9;
  if (v9)
  {
    ParentOp = *this;
    do
    {
      ParentOp = *(ParentOp + 2);
      if (!ParentOp)
      {
        break;
      }

      ParentOp = mlir::Block::getParentOp(ParentOp);
      if (!ParentOp)
      {
        break;
      }
    }

    while (*(*(ParentOp + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id);
    v11 = ParentOp;
    v12 = mlir::SymbolTableCollection::lookupSymbolIn(a2, ParentOp, v78);
    if (v12)
    {
      v13 = v12;
      v14 = *(*(v12 + 48) + 16);
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MemberOp,void>::id)
      {
        v15 = v12;
      }

      else
      {
        v15 = 0;
      }

      v75 = v15;
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MemberOp,void>::id)
      {
        v16 = sub_1001D89A4(this);
        if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        v82 = v17;
        if (v17)
        {
          Binds = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getBinds(&v82);
          v20 = v19;
        }

        else
        {
          v20 = 0;
          Binds = 0;
        }

        v53 = *(v13 + 24);
        v54 = *(*this + 3);
        do
        {
          do
          {
            v13 = mlir::Block::getParentOp(*(v13 + 16));
          }

          while (!sub_100181E38(v13));
          v55 = sub_100181E38(v13);
        }

        while (!v13);
        (*(v55 + 16))(&v82);
        v56 = v82;
        v57 = v83;
        v76[0] = *(v15 + 16 * ((*(v15 + 44) >> 23) & 1) + 80);
        Value = mlir::TypeAttr::getValue(v76);
        v76[0] = this;
        v76[1] = &v75;
        v32 = sub_1001D9B88(v53, v54, v56, v57, Binds, v20, Value, v59, sub_100254328, v76);
        v60 = v82;
        if (v82 == &v84)
        {
          return v32;
        }

LABEL_105:
        free(v60);
        return v32;
      }
    }

    else
    {
      v75 = 0;
    }

    RootReference = mlir::SymbolRefAttr::getRootReference(&v78);
    if (mlir::SymbolTableCollection::lookupSymbolIn(a2, v11, RootReference))
    {
      return 1;
    }

    v77 = 257;
    mlir::OpState::emitError(this, v76, &v82);
    if (v82)
    {
      v79 = 3;
      v80 = "could not resolve ";
      v81 = 18;
      v33 = &v79;
      v34 = v85;
      if (v86 >= v87)
      {
        if (v85 <= &v79 && v85 + 24 * v86 > &v79)
        {
          v72 = &v79 - v85;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
          v34 = v85;
          v33 = (v85 + v72);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
          v33 = &v79;
          v34 = v85;
        }
      }

      v35 = &v34[24 * v86];
      v36 = *v33;
      *(v35 + 2) = *(v33 + 2);
      *v35 = v36;
      ++v86;
      if (v82)
      {
        v37 = &v79;
        mlir::DiagnosticArgument::DiagnosticArgument(&v79, v78);
        v38 = v85;
        if (v86 >= v87)
        {
          if (v85 <= &v79 && v85 + 24 * v86 > &v79)
          {
            v73 = &v79 - v85;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
            v38 = v85;
            v37 = (v85 + v73);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
            v37 = &v79;
            v38 = v85;
          }
        }

        v39 = &v38[24 * v86];
        v40 = *v37;
        *(v39 + 2) = *(v37 + 2);
        *v39 = v40;
        v41 = ++v86;
        if (v82)
        {
          v79 = 3;
          v80 = " to a class or import";
          v81 = 21;
          v42 = &v79;
          v43 = v85;
          if (v41 >= v87)
          {
            if (v85 <= &v79 && v85 + 24 * v41 > &v79)
            {
              v74 = &v79 - v85;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v41 + 1, 24);
              v43 = v85;
              v42 = (v85 + v74);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v41 + 1, 24);
              v42 = &v79;
              v43 = v85;
            }
          }

          v44 = &v43[24 * v86];
          v45 = *v42;
          *(v44 + 2) = *(v42 + 2);
          *v44 = v45;
          ++v86;
        }
      }
    }

    v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v82);
    if (v82)
    {
      mlir::InFlightDiagnostic::report(&v82);
    }

    if (v94 == 1)
    {
      if (v93 != &v94)
      {
        free(v93);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v92;
        v48 = __p;
        if (v92 != __p)
        {
          do
          {
            v47 = sub_100052FFC(v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v92 = v46;
        operator delete(v48);
      }

      v49 = v89;
      if (v89)
      {
        v50 = v90;
        v51 = v89;
        if (v90 != v89)
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
LABEL_102:
          v51 = v89;
          goto LABEL_103;
        }

        goto LABEL_103;
      }

      goto LABEL_104;
    }

    return v32;
  }

  v21 = *sub_1001D89A4(this);
  {
    v22 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    if (!v24)
    {
      goto LABEL_83;
    }
  }

  else
  {
    sub_10028A028();
    v22 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    if (!v24)
    {
      goto LABEL_83;
    }
  }

  v25 = v23;
  v26 = v24;
  do
  {
    v27 = v26 >> 1;
    v28 = &v25[2 * (v26 >> 1)];
    v30 = *v28;
    v29 = v28 + 2;
    v26 += ~(v26 >> 1);
    if (v30 < v22)
    {
      v25 = v29;
    }

    else
    {
      v26 = v27;
    }
  }

  while (v26);
  if (v25 != &v23[2 * v24] && *v25 == v22 && v25[1])
  {
    return 1;
  }

LABEL_83:
  v77 = 257;
  mlir::OpState::emitError(this, v76, &v82);
  if (v82)
  {
    v79 = 3;
    v80 = "expected a parameter attribute if the callee is not resolved";
    v81 = 60;
    v61 = &v79;
    v62 = v85;
    if (v86 >= v87)
    {
      if (v85 <= &v79 && v85 + 24 * v86 > &v79)
      {
        v71 = &v79 - v85;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
        v62 = v85;
        v61 = (v85 + v71);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
        v61 = &v79;
        v62 = v85;
      }
    }

    v63 = &v62[24 * v86];
    v64 = *v61;
    *(v63 + 2) = *(v61 + 2);
    *v63 = v64;
    ++v86;
  }

  v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v82);
  if (v82)
  {
    mlir::InFlightDiagnostic::report(&v82);
  }

  if (v94 == 1)
  {
    if (v93 != &v94)
    {
      free(v93);
    }

    v65 = __p;
    if (__p)
    {
      v66 = v92;
      v67 = __p;
      if (v92 != __p)
      {
        do
        {
          v66 = sub_100052FFC(v66 - 1);
        }

        while (v66 != v65);
        v67 = __p;
      }

      v92 = v65;
      operator delete(v67);
    }

    v49 = v89;
    if (v89)
    {
      v68 = v90;
      v51 = v89;
      if (v90 != v89)
      {
        do
        {
          v69 = *--v68;
          *v68 = 0;
          if (v69)
          {
            operator delete[]();
          }
        }

        while (v68 != v49);
        goto LABEL_102;
      }

LABEL_103:
      v90 = v49;
      operator delete(v51);
    }

LABEL_104:
    v60 = v85;
    if (v85 == v88)
    {
      return v32;
    }

    goto LABEL_105;
  }

  return v32;
}

void mlir::ODIE::Compiler::CoreML::FuncOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v4 = *this;
  v5 = (*(*this + 11) >> 23) & 1;
  Value = *(*this + 2 * v5 + 9);
  LOBYTE(v17) = Value != 0;
  if (Value)
  {
    v6 = (*(*a2 + 16))(a2);
    v7 = v6[4];
    if (v6[3] == v7)
    {
      llvm::raw_ostream::write(v6, " ", 1uLL);
    }

    else
    {
      *v7 = 32;
      ++v6[4];
    }

    v8 = (*(*a2 + 16))(a2);
    v9 = v8[4];
    if ((v8[3] - v9) > 5)
    {
      *(v9 + 4) = 28274;
      *v9 = 1702131813;
      v8[4] += 6;
    }

    else
    {
      llvm::raw_ostream::write(v8, "extern", 6uLL);
    }

    mlir::ODIE::Compiler::CoreML::ExternAttr::print(&Value, a2);
    v4 = *this;
    v5 = (*(*this + 11) >> 23) & 1;
  }

  if (*(v4 + 2 * v5 + 11))
  {
    v10 = (*(*a2 + 16))(a2);
    v11 = v10[4];
    if ((v10[3] - v11) > 8)
    {
      *(v11 + 8) = 101;
      *v11 = *" noinline";
      v10[4] += 9;
    }

    else
    {
      llvm::raw_ostream::write(v10, " noinline", 9uLL);
    }
  }

  v12 = *this;
  v13 = sub_10024FEEC(*this);
  v15 = *(*(*(*this + 6) + 96) + 8);
  Value = mlir::StringAttr::getValue(&v15);
  v17 = v14;
  sub_1001DB394(v12, v13, &Value, 1uLL, a2);
}

void sub_1001DB394(mlir::Operation *a1, uint64_t a2, const void *a3, unint64_t a4, uint64_t a5)
{
  v40 = a1;
  v41 = a2;
  v43 = v45;
  v44 = 0x300000000;
  if (a4 >= 4)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, a4, 16);
    v8 = v44;
    v9 = v43;
LABEL_5:
    memcpy(&v9[16 * v8], a3, 16 * a4);
    v10 = v44;
    goto LABEL_6;
  }

  if (a4)
  {
    v8 = 0;
    v9 = v45;
    goto LABEL_5;
  }

  v10 = 0;
LABEL_6:
  LODWORD(v44) = v10 + a4;
  v11 = (*(*a5 + 16))(a5);
  v12 = v11[4];
  if (v11[3] == v12)
  {
    llvm::raw_ostream::write(v11, " ", 1uLL);
  }

  else
  {
    *v12 = 32;
    ++v11[4];
  }

  v42[0] = mlir::FunctionOpInterface::getNameAttr(&v40);
  Value = mlir::StringAttr::getValue(v42);
  (*(*a5 + 88))(a5, Value, v14);
  v15 = v44;
  if (v44 >= HIDWORD(v44))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, v44 + 1, 16);
    v15 = v44;
  }

  v16 = v43 + 16 * v15;
  *v16 = "sym_name";
  v16[1] = 8;
  LODWORD(v44) = v44 + 1;
  v17 = v40;
  if (sub_100181E38(v40) && v17)
  {
    v18 = sub_100181E38(v17);
    (*(v18 + 32))(v18, v17, a5);
    v19 = v44;
    if (v44 >= HIDWORD(v44))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, v44 + 1, 16);
      v19 = v44;
    }

    v20 = v43 + 16 * v19;
    *v20 = "param_decls";
    v20[1] = 11;
    LODWORD(v44) = v44 + 1;
  }

  FunctionType = mlir::FunctionOpInterface::getFunctionType(&v40);
  v21 = v40;
  v22 = v41;
  Inputs = mlir::FunctionType::getInputs(&FunctionType);
  v25 = v24;
  Results = mlir::FunctionType::getResults(&FunctionType);
  v28 = v27;
  v42[0] = v21;
  v42[1] = v22;
  mlir::TypeRange::TypeRange(v47, Inputs, v25);
  ArgAttrsAttr = mlir::FunctionOpInterface::getArgAttrsAttr(v42);
  mlir::TypeRange::TypeRange(v46, Results, v28);
  ResAttrsAttr = mlir::FunctionOpInterface::getResAttrsAttr(v42);
  mlir::call_interface_impl::printFunctionSignature(a5, v47[0], v47[1], ArgAttrsAttr, 0, v46[0], v46[1], ResAttrsAttr, (((v42[0] + 16 * ((*(v42[0] + 44) >> 23) & 1) + ((*(v42[0] + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v42[0] + 40)), 0);
  v31 = v44;
  v32 = v44 + 3;
  if (v32 > HIDWORD(v44))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, v32, 16);
    v31 = v44;
  }

  v33 = v43 + 16 * v31;
  *v33 = off_1002BDE40;
  v33[1] = *&off_1002BDE50;
  v33[2] = off_1002BDE60;
  LODWORD(v44) = v44 + 3;
  v42[0] = mlir::Operation::getAttrDictionary(v40);
  v34 = mlir::DictionaryAttr::getValue(v42);
  (*(*a5 + 200))(a5, v34, v35, v43, v44);
  v36 = (*(*a5 + 16))(a5);
  v37 = v36[4];
  if (v36[3] == v37)
  {
    llvm::raw_ostream::write(v36, " ", 1uLL);
  }

  else
  {
    *v37 = 32;
    ++v36[4];
  }

  v38 = (((v40 + 16 * ((*(v40 + 11) >> 23) & 1) + ((*(v40 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v40 + 10));
  if (*v38 != v38)
  {
    (*(*a5 + 224))(a5);
  }

  if (v43 != v45)
  {
    free(v43);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::parse(mlir::ODIE::Compiler::CoreML::FuncOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  if ((*(*this + 408))(this, "extern", 6))
  {
    result = mlir::ODIE::Compiler::CoreML::ExternAttr::parse(this);
    if (!result)
    {
      return result;
    }

    mlir::NamedAttribute::NamedAttribute(&v10, *(*(*(a2 + 1) + 96) + 8), result);
    mlir::NamedAttrList::push_back(a2 + 112, v10, v11);
  }

  if ((*(*this + 408))(this, "noinline", 8))
  {
    v6 = *(*(*(a2 + 1) + 96) + 24);
    v7 = (*(*this + 32))(this);
    UnitAttr = mlir::Builder::getUnitAttr(v7, v8);
    mlir::NamedAttribute::NamedAttribute(&v10, v6, UnitAttr);
    mlir::NamedAttrList::push_back(a2 + 112, v10, v11);
  }

  return sub_1001DB994(this, a2, llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>::callback_fn<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>, mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::FuncOp>::parseParameterList);
}

BOOL sub_1001DB994(mlir::AsmParser *a1, uint64_t a2, uint64_t (*a3)(uint64_t, mlir::AsmParser *, uint64_t), uint64_t a4)
{
  v106 = 0;
  v8 = (*(*a1 + 40))(a1);
  if (!sub_1002782F8(a1))
  {
    v113 = 257;
    (*(*a1 + 24))(&v127, a1, v8, &v110);
    if (v127)
    {
      LODWORD(v124) = 3;
      v125 = "expected valid symbol name.";
      v126[0] = 27;
      v21 = &v124;
      v22 = v129;
      if (v130 >= v131)
      {
        if (v129 <= &v124 && v129 + 24 * v130 > &v124)
        {
          v97 = &v124 - v129;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v130 + 1, 24);
          v22 = v129;
          v21 = (v129 + v97);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v130 + 1, 24);
          v21 = &v124;
          v22 = v129;
        }
      }

      v23 = &v22[24 * v130];
      v24 = *v21;
      *(v23 + 2) = v21[2];
      *v23 = v24;
      ++v130;
    }

    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v127);
    if (v127)
    {
      mlir::InFlightDiagnostic::report(&v127);
    }

    if (v138 == 1)
    {
      if (v137 != &v138)
      {
        free(v137);
      }

      v26 = __p;
      if (__p)
      {
        v27 = v136;
        v28 = __p;
        if (v136 != __p)
        {
          do
          {
            v27 = sub_100052FFC(v27 - 1);
          }

          while (v27 != v26);
          v28 = __p;
        }

        v136 = v26;
        operator delete(v28);
      }

      v29 = v133;
      if (v133)
      {
        v30 = v134;
        v31 = v133;
        if (v134 != v133)
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
          v31 = v133;
        }

        v134 = v29;
        operator delete(v31);
      }

      v72 = v129;
      if (v129 != v132)
      {
        goto LABEL_134;
      }
    }

    return v25;
  }

  Context = mlir::Attribute::getContext(a2);
  LOWORD(v130) = 261;
  v127 = "sym_name";
  v128 = 8;
  v11 = mlir::StringAttr::get(Context, &v127, v10);
  mlir::NamedAttribute::NamedAttribute(&v110, v11, v106);
  mlir::NamedAttrList::push_back(a2 + 112, v110, v111);
  {
    sub_100283EC0();
  }

  v12 = *(a2 + 8);
  v13 = *(v12 + 32);
  v14 = *(v12 + 40);
  if (v14)
  {
    v15 = *(v12 + 32);
    v16 = v14;
    do
    {
      v17 = v16 >> 1;
      v18 = &v15[2 * (v16 >> 1)];
      v20 = *v18;
      v19 = v18 + 2;
      v16 += ~(v16 >> 1);
      if (v20 < mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,void>::resolveTypeID(void)::id)
      {
        v15 = v19;
      }

      else
      {
        v16 = v17;
      }
    }

    while (v16);
    if (v15 != (v13 + 16 * v14) && *v15 == mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,void>::resolveTypeID(void)::id && v15[1] && (a3(a4, a1, a2) & 1) == 0)
    {
      return 0;
    }
  }

  v124 = v126;
  v125 = &_mh_execute_header;
  v105 = 0;
  v121 = v123;
  v122 = 0x600000000;
  v118 = v120;
  v119 = 0x600000000;
  v33 = (*(*a1 + 40))(a1);
  if (mlir::function_interface_impl::parseFunctionSignatureWithArguments(a1, 0, &v124, &v105, &v121, &v118))
  {
    v34 = (*(*a1 + 32))(a1);
    v35 = v124;
    v36 = v125;
    v37 = v118;
    v38 = v119;
    v39 = mlir::AsmParser::getContext(a1);
    LOWORD(v130) = 262;
    v127 = "arg_attrs";
    v128 = 9;
    v41 = mlir::StringAttr::get(v39, &v127, v40);
    v42 = mlir::AsmParser::getContext(a1);
    v113 = 262;
    v110 = "res_attrs";
    v111 = 9;
    v44 = mlir::StringAttr::get(v42, &v110, v43);
    mlir::call_interface_impl::addArgAndResultAttrs(v34, a2, v35, v36, v37, v38, v41, v44);
    v115 = v117;
    v116 = 0x600000000;
    v45 = v125;
    if (v125 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v117, v125, 8);
      v45 = v125;
    }

    if (v45)
    {
      v46 = v116;
      v47 = (v124 + 32);
      v48 = v45 << 6;
      do
      {
        v49 = *v47;
        if (v46 >= HIDWORD(v116))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v117, v46 + 1, 8);
          v46 = v116;
        }

        *(v115 + v46) = v49;
        v46 = v116 + 1;
        LODWORD(v116) = v116 + 1;
        v47 += 8;
        v48 -= 64;
      }

      while (v48);
    }

    v61 = (*(*a1 + 32))(a1);
    mlir::TypeRange::TypeRange(&v127, v115, v116);
    mlir::TypeRange::TypeRange(&v110, v121, v122);
    FunctionType = mlir::Builder::getFunctionType(v61, v127, v128, v110, v111);
    if (FunctionType)
    {
      v63 = mlir::TypeAttr::get(FunctionType);
      v64 = mlir::Attribute::getContext(a2);
      LOWORD(v130) = 261;
      v127 = "function_type";
      v128 = 13;
      v66 = mlir::StringAttr::get(v64, &v127, v65);
      mlir::NamedAttribute::NamedAttribute(&v110, v66, v63);
      mlir::NamedAttrList::push_back(a2 + 112, v110, v111);
      v110 = v112;
      v111 = 0x400000000;
      v114 = 4;
      v67 = (*(*a1 + 40))(a1);
      if ((*(*a1 + 496))(a1, &v110))
      {
        Attrs = mlir::NamedAttrList::getAttrs(&v110);
        v70 = v68;
        *(a2 + 192) = 0;
        v71 = *(a2 + 120);
        if (v68 + v71 > *(a2 + 124))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), v68 + v71, 16);
          LODWORD(v71) = *(a2 + 120);
        }

        if (v70)
        {
          memcpy((*(a2 + 112) + 16 * v71), Attrs, 16 * v70);
          LODWORD(v71) = *(a2 + 120);
        }

        *(a2 + 120) = v71 + v70;
        mlir::OperationState::addRegion(a2);
      }

      v104 = 257;
      (*(*a1 + 24))(&v127, a1, v67, &v101);
      if (v127)
      {
        v107 = 3;
        v108 = "failed to parse the attribute dictionary";
        v109 = 40;
        v84 = &v107;
        v85 = v129;
        if (v130 >= v131)
        {
          if (v129 <= &v107 && v129 + 24 * v130 > &v107)
          {
            v100 = &v107 - v129;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v130 + 1, 24);
            v85 = v129;
            v84 = (v129 + v100);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v130 + 1, 24);
            v84 = &v107;
            v85 = v129;
          }
        }

        v86 = &v85[24 * v130];
        v87 = *v84;
        *(v86 + 2) = *(v84 + 2);
        *v86 = v87;
        ++v130;
      }

      v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v127);
      if (v127)
      {
        mlir::InFlightDiagnostic::report(&v127);
      }

      if (v138 == 1)
      {
        if (v137 != &v138)
        {
          free(v137);
        }

        v88 = __p;
        if (__p)
        {
          v89 = v136;
          v90 = __p;
          if (v136 != __p)
          {
            do
            {
              v89 = sub_100052FFC(v89 - 1);
            }

            while (v89 != v88);
            v90 = __p;
          }

          v136 = v88;
          operator delete(v90);
        }

        v91 = v133;
        if (v133)
        {
          v92 = v134;
          v93 = v133;
          if (v134 != v133)
          {
            do
            {
              v94 = *--v92;
              *v92 = 0;
              if (v94)
              {
                operator delete[]();
              }
            }

            while (v92 != v91);
            v93 = v133;
          }

          v134 = v91;
          operator delete(v93);
        }

        if (v129 != v132)
        {
          free(v129);
        }
      }

      if (v110 != v112)
      {
        free(v110);
      }
    }

    else
    {
      v113 = 257;
      (*(*a1 + 24))(&v127, a1, v33, &v110);
      if (v127)
      {
        v101 = 3;
        v102 = "failed to construct function type";
        v103 = 33;
        v73 = &v101;
        v74 = v129;
        if (v130 >= v131)
        {
          if (v129 <= &v101 && v129 + 24 * v130 > &v101)
          {
            v99 = &v101 - v129;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v130 + 1, 24);
            v74 = v129;
            v73 = (v129 + v99);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v130 + 1, 24);
            v73 = &v101;
            v74 = v129;
          }
        }

        v75 = &v74[24 * v130];
        v76 = *v73;
        *(v75 + 2) = *(v73 + 2);
        *v75 = v76;
        ++v130;
      }

      v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v127);
      if (v127)
      {
        mlir::InFlightDiagnostic::report(&v127);
      }

      if (v138 == 1)
      {
        if (v137 != &v138)
        {
          free(v137);
        }

        v77 = __p;
        if (__p)
        {
          v78 = v136;
          v79 = __p;
          if (v136 != __p)
          {
            do
            {
              v78 = sub_100052FFC(v78 - 1);
            }

            while (v78 != v77);
            v79 = __p;
          }

          v136 = v77;
          operator delete(v79);
        }

        v80 = v133;
        if (v133)
        {
          v81 = v134;
          v82 = v133;
          if (v134 != v133)
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
            v82 = v133;
          }

          v134 = v80;
          operator delete(v82);
        }

        if (v129 != v132)
        {
          free(v129);
        }
      }
    }

    v95 = v115;
    if (v115 != v117)
    {
LABEL_128:
      free(v95);
    }
  }

  else
  {
    v113 = 257;
    (*(*a1 + 24))(&v127, a1, v33, &v110);
    if (v127)
    {
      LODWORD(v115) = 3;
      v116 = "failed to parse the function signature";
      v117[0] = 38;
      v50 = &v115;
      v51 = v129;
      if (v130 >= v131)
      {
        if (v129 <= &v115 && v129 + 24 * v130 > &v115)
        {
          v98 = &v115 - v129;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v130 + 1, 24);
          v51 = v129;
          v50 = (v129 + v98);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v132, v130 + 1, 24);
          v50 = &v115;
          v51 = v129;
        }
      }

      v52 = &v51[24 * v130];
      v53 = *v50;
      *(v52 + 2) = v50[2];
      *v52 = v53;
      ++v130;
    }

    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v127);
    if (v127)
    {
      mlir::InFlightDiagnostic::report(&v127);
    }

    if (v138 == 1)
    {
      if (v137 != &v138)
      {
        free(v137);
      }

      v54 = __p;
      if (__p)
      {
        v55 = v136;
        v56 = __p;
        if (v136 != __p)
        {
          do
          {
            v55 = sub_100052FFC(v55 - 1);
          }

          while (v55 != v54);
          v56 = __p;
        }

        v136 = v54;
        operator delete(v56);
      }

      v57 = v133;
      if (v133)
      {
        v58 = v134;
        v59 = v133;
        if (v134 != v133)
        {
          do
          {
            v60 = *--v58;
            *v58 = 0;
            if (v60)
            {
              operator delete[]();
            }
          }

          while (v58 != v57);
          v59 = v133;
        }

        v134 = v57;
        operator delete(v59);
      }

      v95 = v129;
      if (v129 != v132)
      {
        goto LABEL_128;
      }
    }
  }

  if (v118 != v120)
  {
    free(v118);
  }

  if (v121 != v123)
  {
    free(v121);
  }

  v72 = v124;
  if (v124 != v126)
  {
LABEL_134:
    free(v72);
  }

  return v25;
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::FuncOp>::parseParameterList(const char *a1, mlir::Attribute *a2)
{
  v16 = v18;
  v17 = 0x600000000;
  v12 = a1;
  v13 = &v16;
  if ((*(*a1 + 392))(a1, 7))
  {
    v4 = (*(*a1 + 32))(a1);
    v5 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*v4, v16, v17);
    Context = mlir::Attribute::getContext(a2);
    v14 = 261;
    v12 = "param_decls";
    v13 = 11;
    v8 = mlir::StringAttr::get(Context, &v12, v7);
    mlir::NamedAttribute::NamedAttribute(v15, v8, v5);
    mlir::NamedAttrList::push_back(a2 + 112, v15[0], v15[1]);
    v9 = 1;
    v10 = v16;
    if (v16 == v18)
    {
      return v9;
    }

    goto LABEL_5;
  }

  v9 = 0;
  v10 = v16;
  if (v16 != v18)
  {
LABEL_5:
    free(v10);
  }

  return v9;
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::specialize(mlir::ForwardIterator **a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (!*a1)
  {
    if (sub_1001D6658(0, 0, a2, a3))
    {
      goto LABEL_3;
    }

    return 0;
  }

  v7 = sub_100181E38(*a1);
  if (!sub_1001D6658(v6, v7, a2, a3))
  {
    return 0;
  }

LABEL_3:
  v8 = *a1;
  v9 = *a1 + 64;
  v27 = *(v9 + 16 * ((*(*a1 + 11) >> 23) & 1) + 32);
  mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::getValue(&v27);
  v27 = v29;
  v28 = 0x600000000;
  v26 = *(v9 + 16 * ((*(v8 + 44) >> 23) & 1) + 32);
  Value = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::getValue(&v26);
  if (v11)
  {
    v12 = Value;
    v13 = 8 * v11;
    do
    {
      v26 = *v12;
      Name = mlir::ODIE::Compiler::CoreML::ParamDeclAttr::getName(&v26);
      v16 = mlir::StringAttr::getValue(&Name);
      v18 = v17;
      v19 = llvm::StringMapImpl::hash(v16, v17);
      Key = llvm::StringMapImpl::FindKey(a2, v16, v18, v19);
      if (Key == -1 || Key == *(a2 + 8))
      {
        v14 = v26;
        v15 = v28;
        if (v28 >= HIDWORD(v28))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v28 + 1, 8);
          v15 = v28;
        }

        *(v27 + v15) = v14;
        LODWORD(v28) = v28 + 1;
      }

      ++v12;
      v13 -= 8;
    }

    while (v13);
  }

  v21 = v27;
  v22 = v28;
  Context = mlir::Attribute::getContext((v8 + 24));
  *(v9 + 16 * ((*(v8 + 44) >> 23) & 1) + 32) = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(Context, v21, v22);
  if (v27 != v29)
  {
    free(v27);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::verifySufficientMatch(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v46 = a2;
  v47 = v2;
  v59 = *(v2 + 16 * ((*(v2 + 44) >> 23) & 1) + 80);
  Value = mlir::TypeAttr::getValue(&v59);
  sub_100194338(&v47, &v62);
  v4 = sub_1001E5280(&v46);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v45 = v5;
  if (v5)
  {
    mlir::ODIE::Compiler::CoreML::ParamBindAttr::getBinds(&v45);
    if (v6 != v63)
    {
      mlir::emitError(*(v46 + 24), &v48);
      if (v48)
      {
        LODWORD(v59) = 3;
        v60 = "not enough parameters provided by ";
        v61 = 34;
        v26 = &v59;
        v27 = v49;
        if (v50 >= v51)
        {
          if (v49 <= &v59 && v49 + 24 * v50 > &v59)
          {
            v42 = &v59 - v49;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
            v27 = v49;
            v26 = (v49 + v42);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
            v26 = &v59;
            v27 = v49;
          }
        }

        v28 = &v27[24 * v50];
        v29 = *v26;
        *(v28 + 2) = v26[2];
        *v28 = v29;
        ++v50;
        if (v48)
        {
          v30 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, v45);
          v31 = v49;
          if (v50 >= v51)
          {
            if (v49 <= &v59 && v49 + 24 * v50 > &v59)
            {
              v44 = &v59 - v49;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
              v31 = v49;
              v30 = (v49 + v44);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
              v30 = &v59;
              v31 = v49;
            }
          }

          v32 = &v31[24 * v50];
          v33 = *v30;
          *(v32 + 2) = v30[2];
          *v32 = v33;
          ++v50;
        }
      }

      sub_100062C04(&v59, &v48);
      if (v48)
      {
        mlir::InFlightDiagnostic::report(&v48);
      }

      if (v58 == 1)
      {
        if (v57 != &v58)
        {
          free(v57);
        }

        v34 = __p;
        if (__p)
        {
          v35 = v56;
          v36 = __p;
          if (v56 != __p)
          {
            do
            {
              v35 = sub_100052FFC(v35 - 1);
            }

            while (v35 != v34);
            v36 = __p;
          }

          v56 = v34;
          operator delete(v36);
        }

        v37 = v53;
        if (v53)
        {
          v38 = v54;
          v39 = v53;
          if (v54 != v53)
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
            v39 = v53;
          }

          v54 = v37;
          operator delete(v39);
        }

        if (v49 != v52)
        {
          free(v49);
        }
      }

      mlir::Diagnostic::attachNote(&v60, *(v47 + 24), 1);
    }

    v7 = v6;
    v8 = *(v47 + 24);
    v9 = *(v46 + 24);
    v10 = v62;
    Binds = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getBinds(&v45);
    v59 = &v46;
    v60 = &v47;
    v14 = sub_1001D9B88(v8, v9, v10, v7, Binds, v12, Value, v13, sub_100288E58, &v59);
  }

  else
  {
    if (v63)
    {
      mlir::emitError(*(v46 + 24), &v48);
      if (v48)
      {
        LODWORD(v59) = 3;
        v60 = "no bindings provided";
        v61 = 20;
        v15 = &v59;
        v16 = v49;
        if (v50 >= v51)
        {
          if (v49 <= &v59 && v49 + 24 * v50 > &v59)
          {
            v43 = &v59 - v49;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
            v16 = v49;
            v15 = (v49 + v43);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
            v15 = &v59;
            v16 = v49;
          }
        }

        v17 = &v16[24 * v50];
        v18 = *v15;
        *(v17 + 2) = v15[2];
        *v17 = v18;
        ++v50;
      }

      sub_100062C04(&v59, &v48);
      if (v48)
      {
        mlir::InFlightDiagnostic::report(&v48);
      }

      if (v58 == 1)
      {
        if (v57 != &v58)
        {
          free(v57);
        }

        v19 = __p;
        if (__p)
        {
          v20 = v56;
          v21 = __p;
          if (v56 != __p)
          {
            do
            {
              v20 = sub_100052FFC(v20 - 1);
            }

            while (v20 != v19);
            v21 = __p;
          }

          v56 = v19;
          operator delete(v21);
        }

        v22 = v53;
        if (v53)
        {
          v23 = v54;
          v24 = v53;
          if (v54 != v53)
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
            v24 = v53;
          }

          v54 = v22;
          operator delete(v24);
        }

        if (v49 != v52)
        {
          free(v49);
        }
      }

      mlir::Diagnostic::attachNote(&v60, *(v47 + 24), 1);
    }

    v14 = 1;
  }

  if (v62 != &v64)
  {
    free(v62);
  }

  return v14;
}

BOOL mlir::ODIE::Compiler::CoreML::FuncOp::canDiscardOnUseEmpty(mlir::ODIE::Compiler::CoreML::FuncOp *this)
{
  v1 = *(*this + 44);
  v2 = *this + 64 + 16 * ((v1 >> 23) & 1);
  v3 = (((v2 + ((v1 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40));
  return *v3 != v3 && *(v2 + 8) == 0;
}

void mlir::ODIE::Compiler::CoreML::FuncOp::getInputIntents(mlir::ODIE::Compiler::CoreML::FuncOp *this@<X0>, mlir::SymbolTableCollection *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *this;
  if (*this)
  {
    v5 = a2;
    v6 = sub_10024FEEC(*this);
    a2 = v5;
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  sub_1001DD554(a3, a2, v4, v7);
}

void sub_1001DD554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  mlir::FunctionOpInterface::getArgumentTypes(&v35);
  v7 = v6;
  v8 = v6;
  v44 = v46;
  v45 = 0x600000000;
  if (v6 < 7uLL)
  {
    if (!v6)
    {
      goto LABEL_6;
    }

    v10 = 8 * v6;
    v9 = v46;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v6, 8);
    v9 = v44;
    v10 = 8 * v8;
  }

  bzero(v9, v10);
LABEL_6:
  LODWORD(v45) = v7;
  mlir::FunctionOpInterface::getArgumentTypes(&v35);
  if (v11)
  {
    for (i = 0; i < v13; ++i)
    {
      __src = mlir::function_interface_impl::getArgAttrDict(v35, v36, i);
      if (__src)
      {
        v14 = mlir::DictionaryAttr::get(&__src, "coreml.intent", 0xDuLL);
        if (v14)
        {
          if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id)
          {
            *(v44 + i) = v14;
          }
        }
      }

      mlir::FunctionOpInterface::getArgumentTypes(&v35);
    }
  }

  v15 = v45;
  __dst = v43;
  v42 = 0x600000000;
  if (v45 < 7)
  {
    if (!v45)
    {
      goto LABEL_18;
    }

    v17 = 8 * v45;
    v16 = v43;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v43, v45, 8);
    v16 = __dst;
    v17 = 8 * v15;
  }

  bzero(v16, v17);
LABEL_18:
  LODWORD(v42) = v15;
  v18 = v35;
  v19 = (((v35 + 16 * ((*(v35 + 44) >> 23) & 1) + ((*(v35 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v35 + 40));
  if (*v19 == v19)
  {
    goto LABEL_36;
  }

  v20 = v19[1];
  if (v20)
  {
    v21 = v20 - 8;
  }

  else
  {
    v21 = 0;
  }

  sub_1001E3060(&__src, a2, v21);
  if (v40 == 1)
  {
    v22 = v38;
    v23 = v42;
    if (v42 >= v38)
    {
      if (v38)
      {
        memmove(__dst, __src, 8 * v38);
      }

      goto LABEL_32;
    }

    if (HIDWORD(v42) >= v38)
    {
      if (v42)
      {
        memmove(__dst, __src, 8 * v42);
        v24 = v38 - v23;
        if (v38 == v23)
        {
LABEL_32:
          LODWORD(v42) = v22;
          if ((v40 & 1) != 0 && __src != &v39)
          {
            free(__src);
          }

          goto LABEL_35;
        }
      }

      else
      {
        v23 = 0;
        v24 = v38;
        if (!v38)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      LODWORD(v42) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v43, v38, 8);
      v23 = 0;
      v24 = v38;
      if (!v38)
      {
        goto LABEL_32;
      }
    }

    memcpy(__dst + 8 * v23, __src + 8 * v23, 8 * v24);
    goto LABEL_32;
  }

LABEL_35:
  v18 = v35;
LABEL_36:
  Context = mlir::Attribute::getContext((v18 + 24));
  v26 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(Context, 3uLL);
  v27 = v45;
  if (!v45)
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    goto LABEL_48;
  }

  v28 = v44;
  v29 = __dst;
  do
  {
    if (!*v28)
    {
      v30 = *v29;
      if (!*v29)
      {
        v30 = v26;
      }

      *v28 = v30;
    }

    ++v29;
    ++v28;
    --v27;
  }

  while (v27);
  v31 = v45;
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  if (!v31 || &v44 == a1)
  {
LABEL_48:
    *(a1 + 64) = 1;
    v33 = __dst;
    if (__dst == v43)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (v44 == v46)
  {
    v34 = v31;
    if (v31 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v31, 8), (v34 = v45) != 0))
    {
      memcpy(*a1, v44, 8 * v34);
    }

    *(a1 + 8) = v31;
  }

  else
  {
    *a1 = v44;
    v32 = HIDWORD(v45);
    *(a1 + 8) = v31;
    *(a1 + 12) = v32;
    v44 = v46;
    HIDWORD(v45) = 0;
  }

  LODWORD(v45) = 0;
  *(a1 + 64) = 1;
  v33 = __dst;
  if (__dst != v43)
  {
LABEL_49:
    free(v33);
  }

LABEL_50:
  if (v44 != v46)
  {
    free(v44);
  }
}

void mlir::ODIE::Compiler::CoreML::FuncOp::getOutputIntents(unsigned int **this@<X0>, mlir::SymbolTableCollection *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *this;
  if (*this)
  {
    v5 = a2;
    v6 = sub_10024FEEC(*this);
    a2 = v5;
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  sub_1001DD9B8(a3, a2, v4, v7);
}

void sub_1001DD9B8(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  mlir::FunctionOpInterface::getResultTypes(&v34);
  v7 = v6;
  v8 = v6;
  __src = v45;
  v44 = 0x600000000;
  if (v6 < 7uLL)
  {
    if (!v6)
    {
      goto LABEL_6;
    }

    v10 = 8 * v6;
    v9 = v45;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v45, v6, 8);
    v9 = __src;
    v10 = 8 * v8;
  }

  bzero(v9, v10);
LABEL_6:
  LODWORD(v44) = v7;
  mlir::FunctionOpInterface::getResultTypes(&v34);
  if (v11)
  {
    for (i = 0; i < v13; ++i)
    {
      ResultAttrDict = mlir::function_interface_impl::getResultAttrDict(v34, v35, i);
      if (ResultAttrDict)
      {
        v14 = mlir::DictionaryAttr::get(&ResultAttrDict, "coreml.intent", 0xDuLL);
        if (v14)
        {
          if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id)
          {
            *(__src + i) = v14;
          }
        }
      }

      mlir::FunctionOpInterface::getResultTypes(&v34);
    }
  }

  v15 = v44;
  __dst = v42;
  v41 = 0x600000000;
  if (v44 < 7)
  {
    if (!v44)
    {
      goto LABEL_18;
    }

    v17 = 8 * v44;
    v16 = v42;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v42, v44, 8);
    v16 = __dst;
    v17 = 8 * v15;
  }

  bzero(v16, v17);
LABEL_18:
  LODWORD(v41) = v15;
  v18 = (((&v34[4 * ((v34[11] >> 23) & 1) + 17] + ((v34[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v34[10]);
  if (*v18 != v18)
  {
    v29 = v18[1];
    if (v29)
    {
      v30 = (v29 - 8);
    }

    else
    {
      v30 = 0;
    }

    sub_1002866F0(&ResultAttrDict, a2, v30);
    if (v39 != 1)
    {
      goto LABEL_57;
    }

    v31 = v37;
    v32 = v41;
    if (v41 >= v37)
    {
      if (v37)
      {
        memmove(__dst, ResultAttrDict, 8 * v37);
      }

      goto LABEL_54;
    }

    if (HIDWORD(v41) >= v37)
    {
      if (v41)
      {
        memmove(__dst, ResultAttrDict, 8 * v41);
        goto LABEL_52;
      }
    }

    else
    {
      LODWORD(v41) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v42, v37, 8);
    }

    v32 = 0;
LABEL_52:
    if (v37 != v32)
    {
      memcpy(__dst + 8 * v32, ResultAttrDict + 8 * v32, 8 * (v37 - v32));
    }

LABEL_54:
    LODWORD(v41) = v31;
    if ((v39 & 1) != 0 && ResultAttrDict != &v38)
    {
      free(ResultAttrDict);
    }

LABEL_57:
    Context = mlir::Attribute::getContext((v34 + 6));
    v20 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(Context, 0);
    v21 = v44;
    if (v44)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

  v19 = mlir::Attribute::getContext((v34 + 6));
  v20 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(v19, 0);
  v21 = v44;
  if (v44)
  {
LABEL_20:
    v22 = __src;
    v23 = __dst;
    do
    {
      if (!*v22)
      {
        v24 = *v23;
        if (!*v23)
        {
          v24 = v20;
        }

        *v22 = v24;
      }

      ++v23;
      ++v22;
      --v21;
    }

    while (v21);
    v25 = v44;
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    if (v25 && &__src != a1)
    {
      if (__src == v45)
      {
        v27 = v25;
        if (v25 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v25, 8), (v27 = v44) != 0))
        {
          memcpy(*a1, __src, 8 * v27);
        }

        *(a1 + 8) = v25;
      }

      else
      {
        *a1 = __src;
        v26 = HIDWORD(v44);
        *(a1 + 8) = v25;
        *(a1 + 12) = v26;
        __src = v45;
        HIDWORD(v44) = 0;
      }

      LODWORD(v44) = 0;
    }

    *(a1 + 64) = 1;
    v28 = __dst;
    if (__dst != v42)
    {
      goto LABEL_36;
    }

    goto LABEL_37;
  }

LABEL_58:
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  *(a1 + 64) = 1;
  v28 = __dst;
  if (__dst != v42)
  {
LABEL_36:
    free(v28);
  }

LABEL_37:
  if (__src != v45)
  {
    free(__src);
  }
}

void mlir::ODIE::Compiler::CoreML::GraphOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 13))
  {
LABEL_4:
    if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] - v5 <= 7uLL)
  {
    llvm::raw_ostream::write(v4, " private", 8uLL);
    goto LABEL_4;
  }

  *v5 = 0x6574617669727020;
  v4[4] += 8;
  if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9))
  {
    goto LABEL_9;
  }

LABEL_7:
  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if ((v6[3] - v7) > 0xB)
  {
    *(v7 + 8) = 1702521196;
    *v7 = *" externalize";
    v6[4] += 12;
    if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 11))
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  llvm::raw_ostream::write(v6, " externalize", 0xCuLL);
LABEL_9:
  if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 11))
  {
    goto LABEL_15;
  }

LABEL_12:
  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if ((v8[3] - v9) > 8)
  {
    *(v9 + 8) = 101;
    *v9 = *" noinline";
    v8[4] += 9;
  }

  else
  {
    llvm::raw_ostream::write(v8, " noinline", 9uLL);
  }

LABEL_15:
  v10 = *this;
  v11 = sub_10024FEEC(*this);
  v17 = *(*(*(*this + 6) + 96) + 40);
  v18[0] = mlir::StringAttr::getValue(&v17);
  v18[1] = v12;
  v16 = *(*(*(*this + 6) + 96) + 8);
  v18[2] = mlir::StringAttr::getValue(&v16);
  v18[3] = v13;
  v15 = *(*(*(*this + 6) + 96) + 24);
  v18[4] = mlir::StringAttr::getValue(&v15);
  v18[5] = v14;
  v18[6] = "sym_visibility";
  v18[7] = 14;
  sub_1001DB394(v10, v11, v18, 4uLL, a2);
}

BOOL mlir::ODIE::Compiler::CoreML::GraphOp::parse(mlir::ODIE::Compiler::CoreML::GraphOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v14 = 0;
  v15 = 0;
  v16 = off_1002BDD38;
  v17 = *&off_1002BDD48;
  for (i = off_1002BDD58; ((*(*this + 424))(this, &v14, &v16, 3) & 1) != 0; i = off_1002BDD58)
  {
    v9 = *(*(a2 + 1) + 96);
    if (v15 == 11)
    {
      if (*v14 == 0x6C616E7265747865 && *(v14 + 3) == 0x657A696C616E7265)
      {
        v11 = v9 + 1;
        goto LABEL_22;
      }
    }

    else if (v15 == 8)
    {
      if (*v14 == 0x656E696C6E696F6ELL)
      {
        v11 = v9 + 3;
        goto LABEL_22;
      }
    }

    else if (v15 == 7 && *v14 == 1986622064 && *(v14 + 3) == 1702125942)
    {
      v11 = v9 + 5;
LABEL_22:
      v5 = *v11;
      goto LABEL_5;
    }

    v5 = 0;
LABEL_5:
    v6 = (*(*this + 32))(this);
    UnitAttr = mlir::Builder::getUnitAttr(v6, v7);
    mlir::NamedAttribute::NamedAttribute(&v16, v5, UnitAttr);
    mlir::NamedAttrList::push_back(a2 + 112, v16, *(&v16 + 1));
    v16 = off_1002BDD38;
    v17 = *&off_1002BDD48;
  }

  return sub_1001DB994(this, a2, llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>::callback_fn<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>, mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::GraphOp>::parseParameterList);
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::GraphOp>::parseParameterList(const char *a1, mlir::Attribute *a2)
{
  v16 = v18;
  v17 = 0x600000000;
  v12 = a1;
  v13 = &v16;
  if ((*(*a1 + 392))(a1, 7))
  {
    v4 = (*(*a1 + 32))(a1);
    v5 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*v4, v16, v17);
    Context = mlir::Attribute::getContext(a2);
    v14 = 261;
    v12 = "param_decls";
    v13 = 11;
    v8 = mlir::StringAttr::get(Context, &v12, v7);
    mlir::NamedAttribute::NamedAttribute(v15, v8, v5);
    mlir::NamedAttrList::push_back(a2 + 112, v15[0], v15[1]);
    v9 = 1;
    v10 = v16;
    if (v16 == v18)
    {
      return v9;
    }

    goto LABEL_5;
  }

  v9 = 0;
  v10 = v16;
  if (v16 != v18)
  {
LABEL_5:
    free(v10);
  }

  return v9;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::setVisibility(uint64_t result, int a2, BOOL a3)
{
  if (a2 == 2)
  {
    llvm::report_fatal_error("GraphOp has no concept of 'nested' visibility", 1, a3);
  }

  v3 = *result + 16 * ((*(*result + 44) >> 23) & 1);
  if (a2 == 1)
  {
    Context = mlir::Attribute::getContext((*result + 24));
    result = mlir::Builder::getUnitAttr(&Context, v4);
    *(v3 + 104) = result;
  }

  else
  {
    *(v3 + 104) = 0;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::setPrivate(mlir::ODIE::Compiler::CoreML::GraphOp *this)
{
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  Context = mlir::Attribute::getContext((*this + 24));
  result = mlir::Builder::getUnitAttr(&Context, v2);
  *(v1 + 104) = result;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::verifySufficientMatch(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v46 = a2;
  v47 = v2;
  v59 = *(v2 + 16 * ((*(v2 + 44) >> 23) & 1) + 80);
  Value = mlir::TypeAttr::getValue(&v59);
  sub_10019AF18(&v47, &v62);
  v4 = sub_1001E72C4(&v46);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v45 = v5;
  if (v5)
  {
    mlir::ODIE::Compiler::CoreML::ParamBindAttr::getBinds(&v45);
    if (v6 != v63)
    {
      mlir::emitError(*(v46 + 24), &v48);
      if (v48)
      {
        LODWORD(v59) = 3;
        v60 = "not enough parameters provided by ";
        v61 = 34;
        v26 = &v59;
        v27 = v49;
        if (v50 >= v51)
        {
          if (v49 <= &v59 && v49 + 24 * v50 > &v59)
          {
            v42 = &v59 - v49;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
            v27 = v49;
            v26 = (v49 + v42);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
            v26 = &v59;
            v27 = v49;
          }
        }

        v28 = &v27[24 * v50];
        v29 = *v26;
        *(v28 + 2) = v26[2];
        *v28 = v29;
        ++v50;
        if (v48)
        {
          v30 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, v45);
          v31 = v49;
          if (v50 >= v51)
          {
            if (v49 <= &v59 && v49 + 24 * v50 > &v59)
            {
              v44 = &v59 - v49;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
              v31 = v49;
              v30 = (v49 + v44);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
              v30 = &v59;
              v31 = v49;
            }
          }

          v32 = &v31[24 * v50];
          v33 = *v30;
          *(v32 + 2) = v30[2];
          *v32 = v33;
          ++v50;
        }
      }

      sub_100062C04(&v59, &v48);
      if (v48)
      {
        mlir::InFlightDiagnostic::report(&v48);
      }

      if (v58 == 1)
      {
        if (v57 != &v58)
        {
          free(v57);
        }

        v34 = __p;
        if (__p)
        {
          v35 = v56;
          v36 = __p;
          if (v56 != __p)
          {
            do
            {
              v35 = sub_100052FFC(v35 - 1);
            }

            while (v35 != v34);
            v36 = __p;
          }

          v56 = v34;
          operator delete(v36);
        }

        v37 = v53;
        if (v53)
        {
          v38 = v54;
          v39 = v53;
          if (v54 != v53)
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
            v39 = v53;
          }

          v54 = v37;
          operator delete(v39);
        }

        if (v49 != v52)
        {
          free(v49);
        }
      }

      mlir::Diagnostic::attachNote(&v60, *(v47 + 24), 1);
    }

    v7 = v6;
    v8 = *(v47 + 24);
    v9 = *(v46 + 24);
    v10 = v62;
    Binds = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getBinds(&v45);
    v59 = &v46;
    v60 = &v47;
    v14 = sub_1001D9B88(v8, v9, v10, v7, Binds, v12, Value, v13, sub_10028966C, &v59);
  }

  else
  {
    if (v63)
    {
      mlir::emitError(*(v46 + 24), &v48);
      if (v48)
      {
        LODWORD(v59) = 3;
        v60 = "no bindings provided";
        v61 = 20;
        v15 = &v59;
        v16 = v49;
        if (v50 >= v51)
        {
          if (v49 <= &v59 && v49 + 24 * v50 > &v59)
          {
            v43 = &v59 - v49;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
            v16 = v49;
            v15 = (v49 + v43);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
            v15 = &v59;
            v16 = v49;
          }
        }

        v17 = &v16[24 * v50];
        v18 = *v15;
        *(v17 + 2) = v15[2];
        *v17 = v18;
        ++v50;
      }

      sub_100062C04(&v59, &v48);
      if (v48)
      {
        mlir::InFlightDiagnostic::report(&v48);
      }

      if (v58 == 1)
      {
        if (v57 != &v58)
        {
          free(v57);
        }

        v19 = __p;
        if (__p)
        {
          v20 = v56;
          v21 = __p;
          if (v56 != __p)
          {
            do
            {
              v20 = sub_100052FFC(v20 - 1);
            }

            while (v20 != v19);
            v21 = __p;
          }

          v56 = v19;
          operator delete(v21);
        }

        v22 = v53;
        if (v53)
        {
          v23 = v54;
          v24 = v53;
          if (v54 != v53)
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
            v24 = v53;
          }

          v54 = v22;
          operator delete(v24);
        }

        if (v49 != v52)
        {
          free(v49);
        }
      }

      mlir::Diagnostic::attachNote(&v60, *(v47 + 24), 1);
    }

    v14 = 1;
  }

  if (v62 != &v64)
  {
    free(v62);
  }

  return v14;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::verify(mlir::Operation **this)
{
  v2 = *this;
  if (*(*this + 47) && (InherentAttr = mlir::Operation::getInherentAttr(*this, "sym_visibility", 14), (v4 & 1) != 0))
  {
    if (InherentAttr)
    {
LABEL_4:
      LOWORD(v186) = 257;
      mlir::OpState::emitError(this, &v184, &Value);
      if (Value)
      {
        LODWORD(v200) = 3;
        v201 = "graphs do not allow the default symbol visibility attr";
        v202[0] = 54;
        v5 = &v200;
        v6 = v205;
        if (v206 >= v207)
        {
          if (v205 <= &v200 && v205 + 24 * v206 > &v200)
          {
            v166 = &v200 - v205;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v206 + 1, 24);
            v6 = v205;
            v5 = (v205 + v166);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v206 + 1, 24);
            v5 = &v200;
            v6 = v205;
          }
        }

        v7 = &v6[24 * v206];
        v8 = *v5;
        *(v7 + 2) = v5[2];
        *v7 = v8;
        ++v206;
      }

      Results = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v214 != 1)
      {
        return Results;
      }

      if (v213 != &v214)
      {
        free(v213);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v212;
        v12 = __p;
        if (v212 != __p)
        {
          do
          {
            v11 = sub_100052FFC(v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v212 = v10;
        operator delete(v12);
      }

      v13 = v209;
      if (!v209)
      {
        goto LABEL_93;
      }

      v14 = v210;
      v15 = v209;
      if (v210 == v209)
      {
        goto LABEL_92;
      }

      do
      {
        v16 = *--v14;
        *v14 = 0;
        if (v16)
        {
          operator delete[]();
        }
      }

      while (v14 != v13);
      goto LABEL_91;
    }
  }

  else if (mlir::DictionaryAttr::contains(v2 + 56, "sym_visibility", 0xEuLL))
  {
    goto LABEL_4;
  }

  v17 = *this;
  v18 = *(*this + 11);
  v19 = *this + 16 * ((v18 >> 23) & 1) + 64;
  if (*(v19 + 5))
  {
    if (*(v19 + 1))
    {
      LOWORD(v186) = 257;
      mlir::OpState::emitError(this, &v184, &Value);
      if (Value)
      {
        LODWORD(v200) = 3;
        v201 = "graphs marked 'externalize' must not be private";
        v202[0] = 47;
        v20 = &v200;
        v21 = v205;
        if (v206 >= v207)
        {
          if (v205 <= &v200 && v205 + 24 * v206 > &v200)
          {
            v167 = &v200 - v205;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v206 + 1, 24);
            v21 = v205;
            v20 = (v205 + v167);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v206 + 1, 24);
            v20 = &v200;
            v21 = v205;
          }
        }

        v22 = &v21[24 * v206];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v206;
      }

      Results = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v214 != 1)
      {
        return Results;
      }

      if (v213 != &v214)
      {
        free(v213);
      }

      v24 = __p;
      if (__p)
      {
        v25 = v212;
        v26 = __p;
        if (v212 != __p)
        {
          do
          {
            v25 = sub_100052FFC(v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v212 = v24;
        operator delete(v26);
      }

      v13 = v209;
      if (!v209)
      {
        goto LABEL_93;
      }

      v27 = v210;
      v15 = v209;
      if (v210 == v209)
      {
        goto LABEL_92;
      }

      do
      {
        v28 = *--v27;
        *v27 = 0;
        if (v28)
        {
          operator delete[]();
        }
      }

      while (v27 != v13);
      goto LABEL_91;
    }

    v29 = (v18 >> 21) & 0x7F8;
    v30 = 32 * *(v17 + 10);
LABEL_66:
    v40 = ((&v19[v29 + 7] & 0xFFFFFFFFFFFFFFF8) + v30);
    if (*v40 == v40)
    {
      return 1;
    }

    v41 = v40[1];
    if (v41)
    {
      v42 = (v41 - 8);
    }

    else
    {
      v42 = 0;
    }

    if (!mlir::Block::mightHaveTerminator(v42) || (mlir::Block::getTerminator(v42), *(*(v43 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OutputOp,void>::id))
    {
      LOWORD(v186) = 257;
      mlir::OpState::emitError(this, &v184, &Value);
      if (Value)
      {
        LODWORD(v200) = 3;
        v201 = "expected the 'coreml.output' terminator";
        v202[0] = 39;
        v44 = &v200;
        v45 = v205;
        if (v206 >= v207)
        {
          if (v205 <= &v200 && v205 + 24 * v206 > &v200)
          {
            v168 = &v200 - v205;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v206 + 1, 24);
            v45 = v205;
            v44 = (v205 + v168);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v206 + 1, 24);
            v44 = &v200;
            v45 = v205;
          }
        }

        v46 = &v45[24 * v206];
        v47 = *v44;
        *(v46 + 2) = v44[2];
        *v46 = v47;
        ++v206;
      }

      Results = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v214 != 1)
      {
        return Results;
      }

      if (v213 != &v214)
      {
        free(v213);
      }

      v48 = __p;
      if (__p)
      {
        v49 = v212;
        v50 = __p;
        if (v212 != __p)
        {
          do
          {
            v49 = sub_100052FFC(v49 - 1);
          }

          while (v49 != v48);
          v50 = __p;
        }

        v212 = v48;
        operator delete(v50);
      }

      v13 = v209;
      if (!v209)
      {
        goto LABEL_93;
      }

      v51 = v210;
      v15 = v209;
      if (v210 == v209)
      {
        goto LABEL_92;
      }

      do
      {
        v52 = *--v51;
        *v51 = 0;
        if (v52)
        {
          operator delete[]();
        }
      }

      while (v51 != v13);
      goto LABEL_91;
    }

    mlir::Block::getTerminator(v42);
    v56 = v55;
    if ((*(v55 + 46) & 0x80) != 0)
    {
      v57 = *(v55 + 72);
      v58 = *(v55 + 68);
    }

    else
    {
      v57 = 0;
      v58 = 0;
    }

    *&v184 = v57;
    *(&v184 + 1) = v58;
    mlir::OperandRange::getTypes(&v184, &Value);
    v200 = v202;
    v201 = 0x600000000;
    v59 = Value;
    v60 = v204;
    v61 = v205;
    v62 = v205 - v204;
    if (v205 - v204 < 7)
    {
      v63 = 0;
      v64 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v200, v202, v205 - v204, 8);
      v63 = v201;
      v64 = v201;
    }

    if (v61 != v60)
    {
      v65 = &v200[v63];
      v66 = (v59 + 32 * v60 + 24);
      v67 = v62;
      do
      {
        v68 = *v66;
        v66 += 4;
        *v65++ = *(v68 + 8) & 0xFFFFFFFFFFFFFFF8;
        --v67;
      }

      while (v67);
      v64 = v201;
    }

    LODWORD(v201) = v64 + v62;
    Value = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 10);
    Value = mlir::TypeAttr::getValue(&Value);
    Results = mlir::FunctionType::getResults(&Value);
    v70 = v69;
    v197 = v199;
    v198 = 0x600000000;
    v71 = (8 * v69) >> 3;
    if (v71 < 7)
    {
      v72 = 0;
      v73 = v199;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v199, v71, 8);
      v72 = v198;
      v73 = v197;
    }

    if (v70)
    {
      memcpy(&v73[v72], Results, 8 * v70);
      v72 = v198;
      v73 = v197;
    }

    v74 = (v72 + v70);
    LODWORD(v198) = v74;
    v75 = v201;
    if (v201 == v74)
    {
      if (v74)
      {
        v76 = v200;
        v77 = &v200[v201];
        do
        {
          v183[0] = sub_100140050(*v76);
          v183[1] = v78;
          v79 = sub_100140050(*v73);
          v182[0] = v79;
          v182[1] = v80;
          if (v183[0])
          {
            v81 = v79 == 0;
          }

          else
          {
            v81 = 1;
          }

          if (!v81 && *(*v183[0] + 136) == *(*v79 + 136))
          {
            mlir::ShapedType::getShape(v183);
            v83 = v82;
            mlir::ShapedType::getShape(v182);
            if (v83 != v84)
            {
              goto LABEL_158;
            }

            Results = mlir::ShapedType::getShape(v183);
            v86 = v85;
            Shape = mlir::ShapedType::getShape(v182);
            if (v86)
            {
              v88 = 8 * v86;
              while (*Shape == 0x8000000000000000 || *Shape == *Results)
              {
                Results += 8;
                ++Shape;
                v88 -= 8;
                if (!v88)
                {
                  goto LABEL_120;
                }
              }

LABEL_158:
              LOWORD(v186) = 257;
              mlir::OpState::emitError(this, &v184, &Value);
              if (Value)
              {
                LODWORD(v184) = 3;
                *(&v184 + 1) = "expected ";
                *&v185 = 9;
                v115 = &v184;
                v116 = v205;
                if (v206 >= v207)
                {
                  if (v205 <= &v184 && v205 + 24 * v206 > &v184)
                  {
                    v173 = &v184 - v205;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v206 + 1, 24);
                    v116 = v205;
                    v115 = v205 + v173;
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v206 + 1, 24);
                    v115 = &v184;
                    v116 = v205;
                  }
                }

                v117 = &v116[24 * v206];
                v118 = *v115;
                *(v117 + 2) = *(v115 + 2);
                *v117 = v118;
                ++v206;
                if (Value)
                {
                  v119 = &v184;
                  mlir::DiagnosticArgument::DiagnosticArgument(&v184, v182[0]);
                  v120 = v205;
                  if (v206 >= v207)
                  {
                    if (v205 <= &v184 && v205 + 24 * v206 > &v184)
                    {
                      v175 = &v184 - v205;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v206 + 1, 24);
                      v120 = v205;
                      v119 = v205 + v175;
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v206 + 1, 24);
                      v119 = &v184;
                      v120 = v205;
                    }
                  }

                  v121 = &v120[24 * v206];
                  v122 = *v119;
                  *(v121 + 2) = *(v119 + 2);
                  *v121 = v122;
                  v123 = ++v206;
                  if (Value)
                  {
                    LODWORD(v184) = 3;
                    *(&v184 + 1) = ", got ";
                    *&v185 = 6;
                    v124 = &v184;
                    v125 = v205;
                    if (v123 >= v207)
                    {
                      if (v205 <= &v184 && v205 + 24 * v123 > &v184)
                      {
                        v177 = &v184 - v205;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v123 + 1, 24);
                        v125 = v205;
                        v124 = v205 + v177;
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v123 + 1, 24);
                        v124 = &v184;
                        v125 = v205;
                      }
                    }

                    v126 = &v125[24 * v206];
                    v127 = *v124;
                    *(v126 + 2) = *(v124 + 2);
                    *v126 = v127;
                    ++v206;
                    if (Value)
                    {
                      v128 = &v184;
                      mlir::DiagnosticArgument::DiagnosticArgument(&v184, v183[0]);
                      v129 = v205;
                      if (v206 >= v207)
                      {
                        if (v205 <= &v184 && v205 + 24 * v206 > &v184)
                        {
                          v179 = &v184 - v205;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v206 + 1, 24);
                          v129 = v205;
                          v128 = v205 + v179;
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v206 + 1, 24);
                          v128 = &v184;
                          v129 = v205;
                        }
                      }

                      v130 = &v129[24 * v206];
                      v131 = *v128;
                      *(v130 + 2) = *(v128 + 2);
                      *v130 = v131;
                      ++v206;
                    }
                  }
                }
              }

              Results = &Value;
              sub_100062C04(&v184, &Value);
              if (Value)
              {
                mlir::InFlightDiagnostic::report(&Value);
              }

              if (v214 != 1)
              {
                goto LABEL_212;
              }

              if (v213 != &v214)
              {
                free(v213);
              }

              Results = __p;
              if (__p)
              {
                v132 = v212;
                v133 = __p;
                if (v212 != __p)
                {
                  do
                  {
                    v132 = sub_100052FFC(v132 - 1);
                  }

                  while (v132 != Results);
                  v133 = __p;
                }

                v212 = Results;
                operator delete(v133);
              }

              v111 = v209;
              if (!v209)
              {
                goto LABEL_210;
              }

              v134 = v210;
              v113 = v209;
              if (v210 == v209)
              {
                goto LABEL_209;
              }

              Results = 0x1000C8077774924;
              do
              {
                v135 = *--v134;
                *v134 = 0;
                if (v135)
                {
                  operator delete[]();
                }
              }

              while (v134 != v111);
LABEL_208:
              v113 = v209;
              goto LABEL_209;
            }
          }

          else if (*v76 != *v73)
          {
            LOWORD(v186) = 257;
            mlir::OpState::emitError(this, &v184, &Value);
            if (Value)
            {
              LODWORD(v184) = 3;
              *(&v184 + 1) = "expected type ";
              *&v185 = 14;
              v136 = &v184;
              v137 = v205;
              if (v206 >= v207)
              {
                if (v205 <= &v184 && v205 + 24 * v206 > &v184)
                {
                  v176 = &v184 - v205;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v206 + 1, 24);
                  v137 = v205;
                  v136 = v205 + v176;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v206 + 1, 24);
                  v136 = &v184;
                  v137 = v205;
                }
              }

              v138 = &v137[24 * v206];
              v139 = *v136;
              *(v138 + 2) = *(v136 + 2);
              *v138 = v139;
              ++v206;
              if (Value)
              {
                v140 = &v184;
                mlir::DiagnosticArgument::DiagnosticArgument(&v184, *v73);
                v141 = v205;
                if (v206 >= v207)
                {
                  if (v205 <= &v184 && v205 + 24 * v206 > &v184)
                  {
                    v178 = &v184 - v205;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v206 + 1, 24);
                    v141 = v205;
                    v140 = v205 + v178;
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v206 + 1, 24);
                    v140 = &v184;
                    v141 = v205;
                  }
                }

                v142 = &v141[24 * v206];
                v143 = *v140;
                *(v142 + 2) = *(v140 + 2);
                *v142 = v143;
                v144 = ++v206;
                if (Value)
                {
                  LODWORD(v184) = 3;
                  *(&v184 + 1) = ", got ";
                  *&v185 = 6;
                  v145 = &v184;
                  v146 = v205;
                  if (v144 >= v207)
                  {
                    if (v205 <= &v184 && v205 + 24 * v144 > &v184)
                    {
                      v180 = &v184 - v205;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v144 + 1, 24);
                      v146 = v205;
                      v145 = v205 + v180;
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v144 + 1, 24);
                      v145 = &v184;
                      v146 = v205;
                    }
                  }

                  v147 = &v146[24 * v206];
                  v148 = *v145;
                  *(v147 + 2) = *(v145 + 2);
                  *v147 = v148;
                  ++v206;
                  if (Value)
                  {
                    v149 = &v184;
                    mlir::DiagnosticArgument::DiagnosticArgument(&v184, *v76);
                    v150 = v205;
                    if (v206 >= v207)
                    {
                      if (v205 <= &v184 && v205 + 24 * v206 > &v184)
                      {
                        v181 = &v184 - v205;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v206 + 1, 24);
                        v150 = v205;
                        v149 = v205 + v181;
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v206 + 1, 24);
                        v149 = &v184;
                        v150 = v205;
                      }
                    }

                    v151 = &v150[24 * v206];
                    v152 = *v149;
                    *(v151 + 2) = *(v149 + 2);
                    *v151 = v152;
                    ++v206;
                  }
                }
              }
            }

            Results = &Value;
            sub_100062C04(&v184, &Value);
            if (Value)
            {
              mlir::InFlightDiagnostic::report(&Value);
            }

            if (v214 != 1)
            {
              goto LABEL_212;
            }

            if (v213 != &v214)
            {
              free(v213);
            }

            Results = __p;
            if (__p)
            {
              v153 = v212;
              v154 = __p;
              if (v212 != __p)
              {
                do
                {
                  v153 = sub_100052FFC(v153 - 1);
                }

                while (v153 != Results);
                v154 = __p;
              }

              v212 = Results;
              operator delete(v154);
            }

            v111 = v209;
            if (!v209)
            {
              goto LABEL_210;
            }

            v155 = v210;
            v113 = v209;
            if (v210 == v209)
            {
              goto LABEL_209;
            }

            Results = 0x1000C8077774924;
            do
            {
              v156 = *--v155;
              *v155 = 0;
              if (v156)
              {
                operator delete[]();
              }
            }

            while (v155 != v111);
            goto LABEL_208;
          }

LABEL_120:
          ++v76;
          ++v73;
        }

        while (v76 != v77);
      }

      v195 = 0u;
      v196 = 0u;
      v193 = 0u;
      v194 = 0u;
      v191 = 0u;
      v192 = 0u;
      v189 = 0u;
      v190 = 0u;
      v187 = 0u;
      v188 = 0u;
      v185 = 0u;
      v186 = 0u;
      v184 = 0u;
    }

    else
    {
      LOWORD(v186) = 257;
      mlir::OpState::emitError(this, &v184, &Value);
      if (Value)
      {
        LODWORD(v184) = 3;
        *(&v184 + 1) = "expected ";
        *&v185 = 9;
        v90 = &v184;
        v91 = v205;
        if (v206 >= v207)
        {
          if (v205 <= &v184 && v205 + 24 * v206 > &v184)
          {
            v170 = &v184 - v205;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v206 + 1, 24);
            v91 = v205;
            v90 = v205 + v170;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v206 + 1, 24);
            v90 = &v184;
            v91 = v205;
          }
        }

        v92 = &v91[24 * v206];
        v93 = *v90;
        *(v92 + 2) = *(v90 + 2);
        *v92 = v93;
        v94 = ++v206;
        if (Value)
        {
          LODWORD(v184) = 5;
          *(&v184 + 1) = v74;
          v95 = &v184;
          v96 = v205;
          if (v94 >= v207)
          {
            if (v205 <= &v184 && v205 + 24 * v94 > &v184)
            {
              v171 = &v184 - v205;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v94 + 1, 24);
              v96 = v205;
              v95 = v205 + v171;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v94 + 1, 24);
              v95 = &v184;
              v96 = v205;
            }
          }

          v97 = &v96[24 * v206];
          v98 = *v95;
          *(v97 + 2) = *(v95 + 2);
          *v97 = v98;
          v99 = ++v206;
          if (Value)
          {
            LODWORD(v184) = 3;
            *(&v184 + 1) = " results, got ";
            *&v185 = 14;
            v100 = &v184;
            v101 = v205;
            if (v99 >= v207)
            {
              if (v205 <= &v184 && v205 + 24 * v99 > &v184)
              {
                v172 = &v184 - v205;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v99 + 1, 24);
                v101 = v205;
                v100 = v205 + v172;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v99 + 1, 24);
                v100 = &v184;
                v101 = v205;
              }
            }

            v102 = &v101[24 * v206];
            v103 = *v100;
            *(v102 + 2) = *(v100 + 2);
            *v102 = v103;
            v104 = ++v206;
            if (Value)
            {
              LODWORD(v184) = 5;
              *(&v184 + 1) = v75;
              v105 = &v184;
              v106 = v205;
              if (v104 >= v207)
              {
                if (v205 <= &v184 && v205 + 24 * v104 > &v184)
                {
                  v174 = &v184 - v205;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v104 + 1, 24);
                  v106 = v205;
                  v105 = v205 + v174;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v104 + 1, 24);
                  v105 = &v184;
                  v106 = v205;
                }
              }

              v107 = &v106[24 * v206];
              v108 = *v105;
              *(v107 + 2) = *(v105 + 2);
              *v107 = v108;
              ++v206;
            }
          }
        }
      }

      Results = &Value;
      sub_100062C04(&v184, &Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v214 == 1)
      {
        if (v213 != &v214)
        {
          free(v213);
        }

        Results = __p;
        if (__p)
        {
          v109 = v212;
          v110 = __p;
          if (v212 != __p)
          {
            do
            {
              v109 = sub_100052FFC(v109 - 1);
            }

            while (v109 != Results);
            v110 = __p;
          }

          v212 = Results;
          operator delete(v110);
        }

        v111 = v209;
        if (v209)
        {
          v112 = v210;
          v113 = v209;
          if (v210 != v209)
          {
            Results = 0x1000C8077774924;
            do
            {
              v114 = *--v112;
              *v112 = 0;
              if (v114)
              {
                operator delete[]();
              }
            }

            while (v112 != v111);
            goto LABEL_208;
          }

LABEL_209:
          v210 = v111;
          operator delete(v113);
        }

LABEL_210:
        if (v205 != v208)
        {
          free(v205);
        }
      }
    }

LABEL_212:
    v157 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v184);
    if (!v157)
    {
      Results = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v184);
    }

    if (v184)
    {
      mlir::InFlightDiagnostic::report(&v184);
    }

    if (BYTE8(v196) == 1)
    {
      sub_100052F18(&v184 + 1);
      if (!v157)
      {
LABEL_218:
        v158 = v197;
        if (v197 == v199)
        {
          goto LABEL_220;
        }

        goto LABEL_219;
      }
    }

    else if (!v157)
    {
      goto LABEL_218;
    }

    v159 = sub_1001E08B0(this);
    mlir::TypeRange::TypeRange(&Value, v159, v160);
    v161 = sub_1001E08F8(this);
    mlir::TypeRange::TypeRange(&v184, v161, v162);
    if (sub_1001E07DC(Value, v204, v184, *(&v184 + 1)))
    {
      v163 = sub_1001E0B84(this);
      mlir::ValueRange::ValueRange(&Value, v163, v164);
      if ((*(v56 + 46) & 0x80) != 0)
      {
        mlir::ValueRange::ValueRange(&v184, *(v56 + 72), *(v56 + 68));
        if (sub_1001E0940(Value, v204, v184, *(&v184 + 1)))
        {
          goto LABEL_226;
        }
      }

      else
      {
        mlir::ValueRange::ValueRange(&v184, 0, 0);
        if (sub_1001E0940(Value, v204, v184, *(&v184 + 1)))
        {
LABEL_226:
          Results = 1;
          v158 = v197;
          if (v197 == v199)
          {
            goto LABEL_220;
          }

          goto LABEL_219;
        }
      }

      LOWORD(v186) = 257;
      mlir::OpState::emitError(this, &v184, &Value);
      sub_100081F48(&Value, "order of token outputs does not match order of handle inputs");
    }

    else
    {
      LOWORD(v186) = 257;
      mlir::OpState::emitError(this, &v184, &Value);
      sub_100081F48(&Value, "number of handle inputs must match number of token outputs");
    }

    Results = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v165);
    sub_100059A74(&Value);
    v158 = v197;
    if (v197 == v199)
    {
LABEL_220:
      v53 = v200;
      if (v200 == v202)
      {
        return Results;
      }

      goto LABEL_94;
    }

LABEL_219:
    free(v158);
    goto LABEL_220;
  }

  v29 = (v18 >> 21) & 0x7F8;
  v30 = 32 * *(v17 + 10);
  if (*(v30 + (&v19[v29 + 7] & 0xFFFFFFFFFFFFFFF8)) != v30 + (&v19[v29 + 7] & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_66;
  }

  LOWORD(v186) = 257;
  mlir::OpState::emitError(this, &v184, &Value);
  if (Value)
  {
    LODWORD(v200) = 3;
    v201 = "non-private graphs must have a body";
    v202[0] = 35;
    v31 = &v200;
    v32 = v205;
    if (v206 >= v207)
    {
      if (v205 <= &v200 && v205 + 24 * v206 > &v200)
      {
        v169 = &v200 - v205;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v206 + 1, 24);
        v32 = v205;
        v31 = (v205 + v169);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v205, v208, v206 + 1, 24);
        v31 = &v200;
        v32 = v205;
      }
    }

    v33 = &v32[24 * v206];
    v34 = *v31;
    *(v33 + 2) = v31[2];
    *v33 = v34;
    ++v206;
  }

  Results = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v214 != 1)
  {
    return Results;
  }

  if (v213 != &v214)
  {
    free(v213);
  }

  v35 = __p;
  if (__p)
  {
    v36 = v212;
    v37 = __p;
    if (v212 != __p)
    {
      do
      {
        v36 = sub_100052FFC(v36 - 1);
      }

      while (v36 != v35);
      v37 = __p;
    }

    v212 = v35;
    operator delete(v37);
  }

  v13 = v209;
  if (v209)
  {
    v38 = v210;
    v15 = v209;
    if (v210 == v209)
    {
LABEL_92:
      v210 = v13;
      operator delete(v15);
      goto LABEL_93;
    }

    do
    {
      v39 = *--v38;
      *v38 = 0;
      if (v39)
      {
        operator delete[]();
      }
    }

    while (v38 != v13);
LABEL_91:
    v15 = v209;
    goto LABEL_92;
  }

LABEL_93:
  v53 = v205;
  if (v205 != v208)
  {
LABEL_94:
    free(v53);
  }

  return Results;
}

BOOL sub_1001E07DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v8 = 0;
    v10 = 0;
    if (!a4)
    {
      return v8 == v10;
    }

    goto LABEL_9;
  }

  v8 = 0;
  for (i = 0; i != a2; ++i)
  {
    if (*(*mlir::TypeRange::dereference_iterator(a1, i) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id)
    {
      ++v8;
    }
  }

  v10 = 0;
  if (a4)
  {
LABEL_9:
    v11 = 0;
    do
    {
      if (*(*mlir::TypeRange::dereference_iterator(a3, v11) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
      {
        ++v10;
      }

      ++v11;
    }

    while (a4 != v11);
  }

  return v8 == v10;
}

uint64_t sub_1001E08B0(uint64_t a1)
{
  Value = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80);
  Value = mlir::TypeAttr::getValue(&Value);
  return mlir::FunctionType::getInputs(&Value);
}

uint64_t sub_1001E08F8(uint64_t a1)
{
  Value = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80);
  Value = mlir::TypeAttr::getValue(&Value);
  return mlir::FunctionType::getResults(&Value);
}

uint64_t sub_1001E0940(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v21 = a1;
  *&v22 = a1;
  *(&v22 + 1) = a2;
  if (a2)
  {
    v7 = 0;
    do
    {
      if (*(*(*(mlir::ValueRange::dereference_iterator(&v21, v7) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id)
      {
        break;
      }

      v7 = *(&v21 + 1) + 1;
      *(&v21 + 1) = v7;
    }

    while (v7 != *(&v22 + 1));
  }

  v17 = v21;
  v18 = v22;
  v19 = v23;
  v21 = a3;
  *&v22 = a3;
  *(&v22 + 1) = a4;
  if (a4)
  {
    v8 = 0;
    do
    {
      if (*(*(*(mlir::ValueRange::dereference_iterator(&v21, v8) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
      {
        break;
      }

      v8 = *(&v21 + 1) + 1;
      *(&v21 + 1) = v8;
    }

    while (v8 != *(&v22 + 1));
  }

  *&v20[24] = v22;
  *&v20[8] = v21;
  v21 = v17;
  v22 = v18;
  v9 = *(&v17 + 1);
  *&v20[40] = v23;
  *v20 = v19;
  v23 = *v20;
  v24 = *&v20[16];
  v25 = *&v20[32];
  if (*(&v17 + 1) != a2)
  {
    while (v24 != a4)
    {
      v11 = mlir::ValueRange::dereference_iterator(&v21, v9);
      v12 = mlir::ValueRange::dereference_iterator(&v23 + 1, v24);
      HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v12);
      if (HandleForToken)
      {
        v14 = HandleForToken == v11;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        return 0;
      }

      do
      {
        v15 = *(&v21 + 1) + 1;
        *(&v21 + 1) = v15;
      }

      while (v15 != *(&v22 + 1) && *(*(*(mlir::ValueRange::dereference_iterator(&v21, v15) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id);
      do
      {
        v16 = v24 + 1;
        *&v24 = v16;
      }

      while (v16 != v25 && *(*(*(mlir::ValueRange::dereference_iterator(&v23 + 1, v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id);
      v9 = *(&v21 + 1);
      if (*(&v21 + 1) == a2)
      {
        return 1;
      }
    }
  }

  return 1;
}

uint64_t sub_1001E0B84(uint64_t a1)
{
  v1 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
  if (*v1 == v1)
  {
    return 0;
  }

  v2 = v1[1];
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  return *(v3 + 48);
}

void mlir::ODIE::Compiler::CoreML::GraphOp::getInputIntents(mlir::ODIE::Compiler::CoreML::GraphOp *this@<X0>, mlir::SymbolTableCollection *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *this;
  if (*this)
  {
    v5 = a2;
    v6 = sub_10024FEEC(*this);
    a2 = v5;
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  sub_1001DD554(a3, a2, v4, v7);
}

void mlir::ODIE::Compiler::CoreML::GraphOp::getOutputIntents(unsigned int **this@<X0>, mlir::SymbolTableCollection *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *this;
  if (*this)
  {
    v5 = a2;
    v6 = sub_10024FEEC(*this);
    a2 = v5;
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  sub_1001DD9B8(a3, a2, v4, v7);
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::specialize(mlir::ForwardIterator **a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (!*a1)
  {
    if (sub_1001D6658(0, 0, a2, a3))
    {
      goto LABEL_3;
    }

    return 0;
  }

  v7 = sub_100181E38(*a1);
  if (!sub_1001D6658(v6, v7, a2, a3))
  {
    return 0;
  }

LABEL_3:
  v8 = *a1;
  v9 = *a1 + 64;
  v27 = *(v9 + 16 * ((*(*a1 + 11) >> 23) & 1) + 32);
  mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::getValue(&v27);
  v27 = v29;
  v28 = 0x600000000;
  v26 = *(v9 + 16 * ((*(v8 + 44) >> 23) & 1) + 32);
  Value = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::getValue(&v26);
  if (v11)
  {
    v12 = Value;
    v13 = 8 * v11;
    do
    {
      v26 = *v12;
      Name = mlir::ODIE::Compiler::CoreML::ParamDeclAttr::getName(&v26);
      v16 = mlir::StringAttr::getValue(&Name);
      v18 = v17;
      v19 = llvm::StringMapImpl::hash(v16, v17);
      Key = llvm::StringMapImpl::FindKey(a2, v16, v18, v19);
      if (Key == -1 || Key == *(a2 + 8))
      {
        v14 = v26;
        v15 = v28;
        if (v28 >= HIDWORD(v28))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v28 + 1, 8);
          v15 = v28;
        }

        *(v27 + v15) = v14;
        LODWORD(v28) = v28 + 1;
      }

      ++v12;
      v13 -= 8;
    }

    while (v13);
  }

  v21 = v27;
  v22 = v28;
  Context = mlir::Attribute::getContext((v8 + 24));
  *(v9 + 16 * ((*(v8 + 44) >> 23) & 1) + 32) = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(Context, v21, v22);
  if (v27 != v29)
  {
    free(v27);
  }

  return 1;
}

BOOL mlir::ODIE::Compiler::CoreML::GraphOp::readProperties(uint64_t a1, mlir::Attribute *a2)
{
  mlir::ODIE::Compiler::CoreML::CoreMLDialectVersion::get(a1, v7);
  v4 = *(a2 + 32);
  if (!v4)
  {
    operator new();
  }

  if (!sub_1001E1040(a1, *(a2 + 32)) || !sub_1001E14EC(a1, v4 + 1) || !sub_1001E1998(a1, v4 + 2) || !sub_1001E14EC(a1, v4 + 3))
  {
    return 0;
  }

  if (v7[1])
  {
    if (!sub_1001D69EC(a1, v4 + 4))
    {
      return 0;
    }
  }

  else
  {
    Context = mlir::Attribute::getContext(a2);
    v4[4] = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(Context, 0, 0);
  }

  if (sub_1001E14EC(a1, v4 + 5) && sub_1001E1040(a1, v4 + 6))
  {
    return sub_10010FB18(a1, v4 + 7);
  }

  return 0;
}

BOOL sub_1001E1040(uint64_t a1, uint64_t *a2)
{
  v31 = 0;
  if (((*(*a1 + 56))(a1, &v31) & 1) == 0)
  {
    return 0;
  }

  v4 = v31;
  if (!v31)
  {
    return 1;
  }

  v5 = *(*v31 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    return 1;
  }

  v30[16] = 257;
  (*(*a1 + 16))(&v36, a1, v30);
  if (v36)
  {
    LODWORD(v32) = 3;
    v33 = "expected ";
    v34 = 9;
    v6 = &v32;
    v7 = v38;
    if (v39 >= v40)
    {
      if (v38 <= &v32 && v38 + 24 * v39 > &v32)
      {
        v27 = &v32 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v7 = v38;
        v6 = (v38 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v6 = &v32;
        v7 = v38;
      }
    }

    v8 = &v7[24 * v39];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v39;
  }

  {
    if (v36)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_10028A0B0();
    if (v36)
    {
LABEL_11:
      v35 = 261;
      v32 = llvm::getTypeName<mlir::ArrayAttr>(void)::Name;
      v33 = unk_1002C2E00;
      mlir::Diagnostic::operator<<(&v37, &v32);
      if (v36)
      {
        LODWORD(v32) = 3;
        v33 = ", but got: ";
        v34 = 11;
        v10 = &v32;
        v11 = v38;
        if (v39 >= v40)
        {
          if (v38 <= &v32 && v38 + 24 * v39 > &v32)
          {
            v28 = &v32 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v11 = v38;
            v10 = (v38 + v28);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v10 = &v32;
            v11 = v38;
          }
        }

        v12 = &v11[24 * v39];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v39;
        if (v36)
        {
          v14 = &v32;
          mlir::DiagnosticArgument::DiagnosticArgument(&v32, v31);
          v15 = v38;
          if (v39 >= v40)
          {
            if (v38 <= &v32 && v38 + 24 * v39 > &v32)
            {
              v29 = &v32 - v38;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
              v15 = v38;
              v14 = (v38 + v29);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
              v14 = &v32;
              v15 = v38;
            }
          }

          v16 = &v15[24 * v39];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v39;
        }
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
  v19 = result;
  if (v36)
  {
    mlir::InFlightDiagnostic::report(&v36);
    result = v19;
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
      result = v19;
    }

    v20 = __p;
    if (__p)
    {
      v21 = v45;
      v22 = __p;
      if (v45 != __p)
      {
        do
        {
          v21 = sub_100052FFC(v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v45 = v20;
      operator delete(v22);
      result = v19;
    }

    v23 = v42;
    if (v42)
    {
      v24 = v43;
      v25 = v42;
      if (v43 != v42)
      {
        do
        {
          v26 = *--v24;
          *v24 = 0;
          if (v26)
          {
            operator delete[]();
          }
        }

        while (v24 != v23);
        v25 = v42;
      }

      v43 = v23;
      operator delete(v25);
      result = v19;
    }

    if (v38 != v41)
    {
      free(v38);
      return v19;
    }
  }

  return result;
}

BOOL sub_1001E14EC(uint64_t a1, uint64_t *a2)
{
  v31 = 0;
  if (((*(*a1 + 56))(a1, &v31) & 1) == 0)
  {
    return 0;
  }

  v4 = v31;
  if (!v31)
  {
    return 1;
  }

  v5 = *(*v31 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    return 1;
  }

  v30[16] = 257;
  (*(*a1 + 16))(&v36, a1, v30);
  if (v36)
  {
    LODWORD(v32) = 3;
    v33 = "expected ";
    v34 = 9;
    v6 = &v32;
    v7 = v38;
    if (v39 >= v40)
    {
      if (v38 <= &v32 && v38 + 24 * v39 > &v32)
      {
        v27 = &v32 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v7 = v38;
        v6 = (v38 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v6 = &v32;
        v7 = v38;
      }
    }

    v8 = &v7[24 * v39];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v39;
  }

  {
    if (v36)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_10028A0F0();
    if (v36)
    {
LABEL_11:
      v35 = 261;
      v32 = llvm::getTypeName<mlir::UnitAttr>(void)::Name;
      v33 = *algn_1002C2E18;
      mlir::Diagnostic::operator<<(&v37, &v32);
      if (v36)
      {
        LODWORD(v32) = 3;
        v33 = ", but got: ";
        v34 = 11;
        v10 = &v32;
        v11 = v38;
        if (v39 >= v40)
        {
          if (v38 <= &v32 && v38 + 24 * v39 > &v32)
          {
            v28 = &v32 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v11 = v38;
            v10 = (v38 + v28);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v10 = &v32;
            v11 = v38;
          }
        }

        v12 = &v11[24 * v39];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v39;
        if (v36)
        {
          v14 = &v32;
          mlir::DiagnosticArgument::DiagnosticArgument(&v32, v31);
          v15 = v38;
          if (v39 >= v40)
          {
            if (v38 <= &v32 && v38 + 24 * v39 > &v32)
            {
              v29 = &v32 - v38;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
              v15 = v38;
              v14 = (v38 + v29);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
              v14 = &v32;
              v15 = v38;
            }
          }

          v16 = &v15[24 * v39];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v39;
        }
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
  v19 = result;
  if (v36)
  {
    mlir::InFlightDiagnostic::report(&v36);
    result = v19;
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
      result = v19;
    }

    v20 = __p;
    if (__p)
    {
      v21 = v45;
      v22 = __p;
      if (v45 != __p)
      {
        do
        {
          v21 = sub_100052FFC(v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v45 = v20;
      operator delete(v22);
      result = v19;
    }

    v23 = v42;
    if (v42)
    {
      v24 = v43;
      v25 = v42;
      if (v43 != v42)
      {
        do
        {
          v26 = *--v24;
          *v24 = 0;
          if (v26)
          {
            operator delete[]();
          }
        }

        while (v24 != v23);
        v25 = v42;
      }

      v43 = v23;
      operator delete(v25);
      result = v19;
    }

    if (v38 != v41)
    {
      free(v38);
      return v19;
    }
  }

  return result;
}

BOOL sub_1001E1998(uint64_t a1, uint64_t *a2)
{
  v31 = 0;
  if (((*(*a1 + 48))(a1, &v31) & 1) == 0)
  {
    return 0;
  }

  v4 = v31;
  v5 = *(*v31 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    return 1;
  }

  v30[16] = 257;
  (*(*a1 + 16))(&v36, a1, v30);
  if (v36)
  {
    LODWORD(v32) = 3;
    v33 = "expected ";
    v34 = 9;
    v6 = &v32;
    v7 = v38;
    if (v39 >= v40)
    {
      if (v38 <= &v32 && v38 + 24 * v39 > &v32)
      {
        v27 = &v32 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v7 = v38;
        v6 = (v38 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v6 = &v32;
        v7 = v38;
      }
    }

    v8 = &v7[24 * v39];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v39;
  }

  {
    if (v36)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_10028A130();
    if (v36)
    {
LABEL_10:
      v35 = 261;
      v32 = llvm::getTypeName<mlir::TypeAttr>(void)::Name;
      v33 = unk_1002C2E30;
      mlir::Diagnostic::operator<<(&v37, &v32);
      if (v36)
      {
        LODWORD(v32) = 3;
        v33 = ", but got: ";
        v34 = 11;
        v10 = &v32;
        v11 = v38;
        if (v39 >= v40)
        {
          if (v38 <= &v32 && v38 + 24 * v39 > &v32)
          {
            v28 = &v32 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v11 = v38;
            v10 = (v38 + v28);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v10 = &v32;
            v11 = v38;
          }
        }

        v12 = &v11[24 * v39];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v39;
        if (v36)
        {
          v14 = &v32;
          mlir::DiagnosticArgument::DiagnosticArgument(&v32, v31);
          v15 = v38;
          if (v39 >= v40)
          {
            if (v38 <= &v32 && v38 + 24 * v39 > &v32)
            {
              v29 = &v32 - v38;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
              v15 = v38;
              v14 = (v38 + v29);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
              v14 = &v32;
              v15 = v38;
            }
          }

          v16 = &v15[24 * v39];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v39;
        }
      }
    }
  }

  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
  if (v36)
  {
    mlir::InFlightDiagnostic::report(&v36);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v45;
      v21 = __p;
      if (v45 != __p)
      {
        do
        {
          v20 = sub_100052FFC(v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v45 = v19;
      operator delete(v21);
    }

    v22 = v42;
    if (v42)
    {
      v23 = v43;
      v24 = v42;
      if (v43 != v42)
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
        v24 = v42;
      }

      v43 = v22;
      operator delete(v24);
    }

    if (v38 != v41)
    {
      free(v38);
    }
  }

  return v18;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 24))(a2, v3[9]);
  (*(*a2 + 16))(a2, v3[10]);
  (*(*a2 + 24))(a2, v3[11]);
  (*(*a2 + 16))(a2, v3[12]);
  (*(*a2 + 24))(a2, v3[13]);
  (*(*a2 + 24))(a2, v3[14]);
  v4 = v3[15];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

BOOL mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::verify(mlir::Operation **this)
{
  v1 = (((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10));
  if (*v1 == v1)
  {
    return 1;
  }

  v3 = v1[1];
  v4 = v3 ? (v3 - 8) : 0;
  if (!mlir::Block::mightHaveTerminator(v4))
  {
    return 1;
  }

  v5 = *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 8);
  if (v5)
  {
    v6 = (v5 - 8);
  }

  else
  {
    v6 = 0;
  }

  mlir::Block::getTerminator(v6);
  v8 = v7;
  v9 = *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 8);
  if (v9)
  {
    v10 = v9 - 8;
  }

  else
  {
    v10 = 0;
  }

  mlir::ValueRange::ValueRange(&Context, *(v10 + 48), (*(v10 + 56) - *(v10 + 48)) >> 3);
  if ((*(v8 + 46) & 0x80) != 0)
  {
    mlir::ValueRange::ValueRange(&v129, *(v8 + 72), *(v8 + 68));
    if (sub_1001E0940(Context, v133, v129, v130))
    {
      goto LABEL_14;
    }
  }

  else
  {
    mlir::ValueRange::ValueRange(&v129, 0, 0);
    if (sub_1001E0940(Context, v133, v129, v130))
    {
LABEL_14:
      ArrayAttr = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
      if (!ArrayAttr)
      {
        Context = mlir::Attribute::getContext((*this + 24));
        ArrayAttr = mlir::Builder::getArrayAttr(&Context, 0, 0);
      }

      Context = ArrayAttr;
      mlir::ArrayAttr::getValue(&Context);
      v13 = v12;
      v14 = *this;
      v15 = *(*this + 11);
      if ((v15 & 0x800000) != 0)
      {
        v16 = *(v14 + 68);
        v17 = *(v14 + 16 * ((v15 >> 23) & 1) + 80);
        if (v17)
        {
LABEL_19:
          Context = v17;
          mlir::ArrayAttr::getValue(&Context);
          v19 = *this;
          v20 = *(*this + 9);
          if (v13 && v13 != v16)
          {
            v131 = 257;
            mlir::OpState::emitError(this, &v129, &Context);
            if (Context)
            {
              v126 = 3;
              v127 = "expected number of argument attrs (";
              v128 = 35;
              v21 = &v126;
              v22 = v134;
              if (v135 >= v136)
              {
                if (v134 <= &v126 && v134 + 24 * v135 > &v126)
                {
                  v114 = &v126 - v134;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, v137, v135 + 1, 24);
                  v22 = v134;
                  v21 = (v134 + v114);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, v137, v135 + 1, 24);
                  v21 = &v126;
                  v22 = v134;
                }
              }

              v23 = &v22[24 * v135];
              v24 = *v21;
              *(v23 + 2) = *(v21 + 2);
              *v23 = v24;
              v25 = ++v135;
              if (Context)
              {
                v126 = 5;
                v127 = v13;
                v26 = &v126;
                v27 = v134;
                if (v25 >= v136)
                {
                  if (v134 <= &v126 && v134 + 24 * v25 > &v126)
                  {
                    v115 = &v126 - v134;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, v137, v25 + 1, 24);
                    v27 = v134;
                    v26 = (v134 + v115);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, v137, v25 + 1, 24);
                    v26 = &v126;
                    v27 = v134;
                  }
                }

                v28 = &v27[24 * v135];
                v29 = *v26;
                *(v28 + 2) = *(v26 + 2);
                *v28 = v29;
                v30 = ++v135;
                if (Context)
                {
                  v126 = 3;
                  v127 = ") to match number of inputs (";
                  v128 = 29;
                  v31 = &v126;
                  v32 = v134;
                  if (v30 >= v136)
                  {
                    if (v134 <= &v126 && v134 + 24 * v30 > &v126)
                    {
                      v117 = &v126 - v134;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, v137, v30 + 1, 24);
                      v32 = v134;
                      v31 = (v134 + v117);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, v137, v30 + 1, 24);
                      v31 = &v126;
                      v32 = v134;
                    }
                  }

                  v33 = &v32[24 * v135];
                  v34 = *v31;
                  *(v33 + 2) = *(v31 + 2);
                  *v33 = v34;
                  v35 = ++v135;
                  if (Context)
                  {
                    v126 = 5;
                    v127 = v16;
                    v36 = &v126;
                    v37 = v134;
                    if (v35 >= v136)
                    {
                      if (v134 <= &v126 && v134 + 24 * v35 > &v126)
                      {
                        v119 = &v126 - v134;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, v137, v35 + 1, 24);
                        v37 = v134;
                        v36 = (v134 + v119);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, v137, v35 + 1, 24);
                        v36 = &v126;
                        v37 = v134;
                      }
                    }

                    v38 = &v37[24 * v135];
                    v39 = *v36;
                    *(v38 + 2) = *(v36 + 2);
                    *v38 = v39;
                    v40 = ++v135;
                    if (Context)
                    {
                      v126 = 3;
                      v127 = ")";
                      v128 = 1;
                      v41 = &v126;
                      v42 = v134;
                      if (v40 >= v136)
                      {
                        if (v134 <= &v126 && v134 + 24 * v40 > &v126)
                        {
                          v121 = &v126 - v134;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, v137, v40 + 1, 24);
                          v42 = v134;
                          v41 = (v134 + v121);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, v137, v40 + 1, 24);
                          v41 = &v126;
                          v42 = v134;
                        }
                      }

                      v43 = &v42[24 * v135];
                      v44 = *v41;
                      *(v43 + 2) = *(v41 + 2);
                      *v43 = v44;
                      ++v135;
                    }
                  }
                }
              }
            }

            result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Context);
            v46 = result;
            if (Context)
            {
              mlir::InFlightDiagnostic::report(&Context);
              result = v46;
            }

            if (v143 != 1)
            {
              return result;
            }

            if (v142 != &v143)
            {
              free(v142);
            }

            v47 = __p;
            if (__p)
            {
              v48 = v141;
              v49 = __p;
              if (v141 != __p)
              {
                do
                {
                  v48 = sub_100052FFC(v48 - 1);
                }

                while (v48 != v47);
                v49 = __p;
              }

              v141 = v47;
              operator delete(v49);
            }

            v50 = v138;
            result = v46;
            if (!v138)
            {
LABEL_130:
              if (v134 != v137)
              {
                free(v134);
                return v46;
              }

              return result;
            }

            v51 = v139;
            v52 = v138;
            if (v139 == v138)
            {
LABEL_129:
              v139 = v50;
              operator delete(v52);
              result = v46;
              goto LABEL_130;
            }

            do
            {
              v53 = *--v51;
              *v51 = 0;
              if (v53)
              {
                operator delete[]();
              }
            }

            while (v51 != v50);
LABEL_128:
            v52 = v138;
            goto LABEL_129;
          }

          if (v18 && v18 != v20)
          {
            v131 = 257;
            v54 = v18;
            mlir::OpState::emitError(this, &v129, &Context);
            if (Context)
            {
              v126 = 3;
              v127 = "expected number of result attrs (";
              v128 = 33;
              v55 = &v126;
              v56 = v134;
              if (v135 >= v136)
              {
                if (v134 <= &v126 && v134 + 24 * v135 > &v126)
                {
                  v116 = &v126 - v134;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, v137, v135 + 1, 24);
                  v56 = v134;
                  v55 = (v134 + v116);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, v137, v135 + 1, 24);
                  v55 = &v126;
                  v56 = v134;
                }
              }

              v57 = &v56[24 * v135];
              v58 = *v55;
              *(v57 + 2) = *(v55 + 2);
              *v57 = v58;
              v59 = ++v135;
              if (Context)
              {
                v126 = 5;
                v127 = v54;
                v60 = &v126;
                v61 = v134;
                if (v59 >= v136)
                {
                  if (v134 <= &v126 && v134 + 24 * v59 > &v126)
                  {
                    v118 = &v126 - v134;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, v137, v59 + 1, 24);
                    v61 = v134;
                    v60 = (v134 + v118);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, v137, v59 + 1, 24);
                    v60 = &v126;
                    v61 = v134;
                  }
                }

                v62 = &v61[24 * v135];
                v63 = *v60;
                *(v62 + 2) = *(v60 + 2);
                *v62 = v63;
                v64 = ++v135;
                if (Context)
                {
                  v126 = 3;
                  v127 = ") to match number of outputs (";
                  v128 = 30;
                  v65 = &v126;
                  v66 = v134;
                  if (v64 >= v136)
                  {
                    if (v134 <= &v126 && v134 + 24 * v64 > &v126)
                    {
                      v120 = &v126 - v134;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, v137, v64 + 1, 24);
                      v66 = v134;
                      v65 = (v134 + v120);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, v137, v64 + 1, 24);
                      v65 = &v126;
                      v66 = v134;
                    }
                  }

                  v67 = &v66[24 * v135];
                  v68 = *v65;
                  *(v67 + 2) = *(v65 + 2);
                  *v67 = v68;
                  v69 = ++v135;
                  if (Context)
                  {
                    v126 = 5;
                    v127 = v20;
                    v70 = &v126;
                    v71 = v134;
                    if (v69 >= v136)
                    {
                      if (v134 <= &v126 && v134 + 24 * v69 > &v126)
                      {
                        v123 = &v126 - v134;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, v137, v69 + 1, 24);
                        v71 = v134;
                        v70 = (v134 + v123);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, v137, v69 + 1, 24);
                        v70 = &v126;
                        v71 = v134;
                      }
                    }

                    v72 = &v71[24 * v135];
                    v73 = *v70;
                    *(v72 + 2) = *(v70 + 2);
                    *v72 = v73;
                    v74 = ++v135;
                    if (Context)
                    {
                      v126 = 3;
                      v127 = ")";
                      v128 = 1;
                      v75 = &v126;
                      v76 = v134;
                      if (v74 >= v136)
                      {
                        if (v134 <= &v126 && v134 + 24 * v74 > &v126)
                        {
                          v124 = &v126 - v134;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, v137, v74 + 1, 24);
                          v76 = v134;
                          v75 = (v134 + v124);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, v137, v74 + 1, 24);
                          v75 = &v126;
                          v76 = v134;
                        }
                      }

                      v77 = &v76[24 * v135];
                      v78 = *v75;
                      *(v77 + 2) = *(v75 + 2);
                      *v77 = v78;
                      ++v135;
                    }
                  }
                }
              }
            }

            result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Context);
            if (Context)
            {
              v79 = result;
              mlir::InFlightDiagnostic::report(&Context);
              result = v79;
            }

            if (v143 == 1)
            {
              v80 = result;
              sub_100052F18(&v133);
              return v80;
            }

            return result;
          }

          v81 = *(v19 + 16 * ((*(v19 + 44) >> 23) & 1) + 64);
          if (!v81)
          {
            Context = mlir::Attribute::getContext((v19 + 24));
            v81 = mlir::Builder::getArrayAttr(&Context, 0, 0);
          }

          v129 = v81;
          Value = mlir::ArrayAttr::getValue(&v129);
          v83 = mlir::ArrayAttr::getValue(&v129);
          v85 = (v83 + 8 * v84);
          v86 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 10);
          if (!v86)
          {
            Context = mlir::Attribute::getContext((*this + 24));
            v86 = mlir::Builder::getArrayAttr(&Context, 0, 0);
          }

          Context = v86;
          v87 = mlir::ArrayAttr::getValue(&Context);
          v88 = mlir::ArrayAttr::getValue(&Context);
          v90 = (v88 + 8 * v89);
          v91 = Value == v85;
          if (Value == v85 && v87 == v90)
          {
            return 1;
          }

          while (1)
          {
            while (!v91)
            {
              v125 = *Value;
              if (mlir::DictionaryAttr::contains(&v125, "coreml.intent", 0xDuLL))
              {
                goto LABEL_85;
              }

              v91 = ++Value == v85;
              if (Value == v85)
              {
                goto LABEL_74;
              }
            }

            if (v87 == v90)
            {
              v125 = 0;
              if (mlir::DictionaryAttr::contains(&v125, "coreml.intent", 0xDuLL))
              {
LABEL_85:
                v131 = 257;
                mlir::OpState::emitError(this, &v129, &Context);
                if (Context)
                {
                  v126 = 3;
                  v127 = "intents cannot be supplied on IsolatedGroupOp; intents are derived from the contained ops";
                  v128 = 89;
                  v92 = &v126;
                  v93 = v134;
                  if (v135 >= v136)
                  {
                    if (v134 <= &v126 && v134 + 24 * v135 > &v126)
                    {
                      v122 = &v126 - v134;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, v137, v135 + 1, 24);
                      v93 = v134;
                      v92 = (v134 + v122);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, v137, v135 + 1, 24);
                      v92 = &v126;
                      v93 = v134;
                    }
                  }

                  v94 = &v93[24 * v135];
                  v95 = *v92;
                  *(v94 + 2) = *(v92 + 2);
                  *v94 = v95;
                  ++v135;
                }

                result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Context);
                v96 = result;
                if (Context)
                {
                  mlir::InFlightDiagnostic::report(&Context);
                  result = v96;
                }

                if (v143)
                {
                  if (v142 != &v143)
                  {
                    free(v142);
                    result = v96;
                  }

                  v97 = __p;
                  if (__p)
                  {
                    v98 = v141;
                    v99 = __p;
                    if (v141 != __p)
                    {
                      do
                      {
                        v98 = sub_100052FFC(v98 - 1);
                      }

                      while (v98 != v97);
                      v99 = __p;
                    }

                    v141 = v97;
                    operator delete(v99);
                    result = v96;
                  }

                  v100 = v138;
                  if (v138)
                  {
                    v101 = v139;
                    v102 = v138;
                    if (v139 != v138)
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
                      v102 = v138;
                    }

                    v139 = v100;
                    operator delete(v102);
                    result = v96;
                  }

                  if (v134 != v137)
                  {
                    free(v134);
                    return v96;
                  }
                }

                return result;
              }
            }

            else
            {
              v125 = *v87;
              if (mlir::DictionaryAttr::contains(&v125, "coreml.intent", 0xDuLL))
              {
                goto LABEL_85;
              }
            }

            ++v87;
            v91 = Value == v85;
            if (Value == v85)
            {
LABEL_74:
              result = 1;
              if (v87 == v90)
              {
                return result;
              }
            }
          }
        }
      }

      else
      {
        v16 = 0;
        v17 = *(v14 + 16 * ((v15 >> 23) & 1) + 80);
        if (v17)
        {
          goto LABEL_19;
        }
      }

      Context = mlir::Attribute::getContext((v14 + 24));
      v17 = mlir::Builder::getArrayAttr(&Context, 0, 0);
      goto LABEL_19;
    }
  }

  v131 = 257;
  mlir::OpState::emitError(this, &v129, &Context);
  if (Context)
  {
    v126 = 3;
    v127 = "order of token outputs does not match order of handle inputs";
    v128 = 60;
    v104 = &v126;
    v105 = v134;
    if (v135 >= v136)
    {
      if (v134 <= &v126 && v134 + 24 * v135 > &v126)
      {
        v113 = &v126 - v134;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, v137, v135 + 1, 24);
        v105 = v134;
        v104 = (v134 + v113);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, v137, v135 + 1, 24);
        v104 = &v126;
        v105 = v134;
      }
    }

    v106 = &v105[24 * v135];
    v107 = *v104;
    *(v106 + 2) = *(v104 + 2);
    *v106 = v107;
    ++v135;
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Context);
  v46 = result;
  if (Context)
  {
    mlir::InFlightDiagnostic::report(&Context);
    result = v46;
  }

  if (v143 == 1)
  {
    if (v142 != &v143)
    {
      free(v142);
    }

    v108 = __p;
    if (__p)
    {
      v109 = v141;
      v110 = __p;
      if (v141 != __p)
      {
        do
        {
          v109 = sub_100052FFC(v109 - 1);
        }

        while (v109 != v108);
        v110 = __p;
      }

      v141 = v108;
      operator delete(v110);
    }

    v50 = v138;
    result = v46;
    if (!v138)
    {
      goto LABEL_130;
    }

    v111 = v139;
    v52 = v138;
    if (v139 == v138)
    {
      goto LABEL_129;
    }

    do
    {
      v112 = *--v111;
      *v111 = 0;
      if (v112)
      {
        operator delete[]();
      }
    }

    while (v111 != v50);
    goto LABEL_128;
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getInputIntents(mlir::ODIE::Compiler::CoreML::IsolatedGroupOp *this@<X0>, mlir::SymbolTableCollection *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v3)
  {
    v4 = v3 - 8;
  }

  else
  {
    v4 = 0;
  }

  sub_1001E3060(a3, a2, v4);
}

void sub_1001E3060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 48);
  v5 = *(a3 + 56);
  v6 = (v5 - v4) >> 3;
  __src = v62;
  v61 = 0x600000000;
  if (v6 < 7uLL)
  {
    if (((v5 - v4) >> 3))
    {
      bzero(v62, 8 * v6);
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v62, ((v5 - v4) >> 3), 8);
    bzero(__src, 8 * v6);
    v4 = *(a3 + 48);
    v5 = *(a3 + 56);
  }

  LODWORD(v61) = v6;
  if (v4 == v5)
  {
LABEL_62:
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    v45 = 1;
    if (!v6 || &__src == a1)
    {
      goto LABEL_74;
    }

    if (__src == v62)
    {
      v48 = v6;
      if (v6 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 8), (v48 = v61) != 0))
      {
        memcpy(*a1, __src, 8 * v48);
      }

      *(a1 + 8) = v6;
    }

    else
    {
      *a1 = __src;
      v46 = HIDWORD(v61);
      *(a1 + 8) = v6;
      *(a1 + 12) = v46;
      __src = v62;
      HIDWORD(v61) = 0;
    }

    LODWORD(v61) = 0;
    *(a1 + 64) = 1;
    v47 = __src;
    if (__src != v62)
    {
      goto LABEL_75;
    }

    return;
  }

  while (1)
  {
    v8 = *v4;
    v55 = 0;
    v9 = *v8;
    if (*v8)
    {
      break;
    }

LABEL_7:
    v4 += 8;
    if (v4 == v5)
    {
      LODWORD(v6) = v61;
      goto LABEL_62;
    }
  }

  while (1)
  {
    v10 = v9[2];
    if (!sub_1002500E0(v10))
    {
      goto LABEL_10;
    }

    v11 = v10 ? sub_1002500E0(v10) : 0;
    if (!v10)
    {
      goto LABEL_10;
    }

    (*v11)(&v75);
    if ((*(v10 + 46) & 0x80) != 0)
    {
      v12 = *(v10 + 72);
      v13 = *(v10 + 68);
      if (v13)
      {
        v14 = 32 * v13;
        v15 = (v12 + 32 * v13);
        while (*(v12 + 3) != v8)
        {
          v12 = (v12 + 32);
          v14 -= 32;
          if (!v14)
          {
            v12 = v15;
            break;
          }
        }
      }

      OperandNumber = mlir::OpOperand::getOperandNumber(v12);
      if (v77 != 1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      OperandNumber = mlir::OpOperand::getOperandNumber(0);
      if (v77 != 1)
      {
        goto LABEL_10;
      }
    }

    v17 = OperandNumber;
    if (v55)
    {
      break;
    }

    v55 = v75[OperandNumber];
    if (v75 != v76)
    {
      goto LABEL_29;
    }

LABEL_10:
    v9 = *v9;
    if (!v9)
    {
      if (v55)
      {
        *(__src + *(*v4 + 24)) = v55;
      }

      goto LABEL_7;
    }
  }

  if (v55 == v75[OperandNumber])
  {
    if (v75 == v76)
    {
      goto LABEL_10;
    }

LABEL_29:
    free(v75);
    goto LABEL_10;
  }

  v53 = "Expected operand ";
  v54 = 259;
  mlir::Operation::emitError(&v63, v10, &v53);
  if (v63)
  {
    mlir::Diagnostic::operator<<(v64, *(*(v10 + 72) + 32 * v17 + 24));
    if (v63)
    {
      LODWORD(v56) = 3;
      v57 = " to have intent ";
      v58 = 16;
      v18 = &v56;
      v19 = v65;
      if (v66 >= v67)
      {
        if (v65 <= &v56 && v65 + 24 * v66 > &v56)
        {
          v49 = &v56 - v65;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
          v19 = v65;
          v18 = (v65 + v49);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
          v18 = &v56;
          v19 = v65;
        }
      }

      v20 = &v19[24 * v66];
      v21 = *v18;
      *(v20 + 2) = v18[2];
      *v20 = v21;
      ++v66;
    }
  }

  Value = mlir::ODIE::Compiler::CoreML::IntentAttr::getValue(&v55);
  v23 = mlir::ODIE::Compiler::CoreML::stringifyIntent(Value);
  if (v63)
  {
    v59 = 261;
    v56 = v23;
    v57 = v24;
    mlir::Diagnostic::operator<<(v64, &v56);
    if (v63)
    {
      LODWORD(v56) = 3;
      v57 = " but got ";
      v58 = 9;
      v25 = &v56;
      v26 = v65;
      if (v66 >= v67)
      {
        if (v65 <= &v56 && v65 + 24 * v66 > &v56)
        {
          v50 = &v56 - v65;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
          v26 = v65;
          v25 = (v65 + v50);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
          v25 = &v56;
          v26 = v65;
        }
      }

      v27 = &v26[24 * v66];
      v28 = *v25;
      *(v27 + 2) = v25[2];
      *v27 = v28;
      ++v66;
      if (v63)
      {
        v29 = &v56;
        mlir::DiagnosticArgument::DiagnosticArgument(&v56, v75[v17]);
        v30 = v65;
        if (v66 >= v67)
        {
          if (v65 <= &v56 && v65 + 24 * v66 > &v56)
          {
            v51 = &v56 - v65;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
            v30 = v65;
            v29 = (v65 + v51);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
            v29 = &v56;
            v30 = v65;
          }
        }

        v31 = &v30[24 * v66];
        v32 = *v29;
        *(v31 + 2) = v29[2];
        *v31 = v32;
        v33 = ++v66;
        if (v63)
        {
          LODWORD(v56) = 3;
          v57 = ".";
          v58 = 1;
          v34 = &v56;
          v35 = v65;
          if (v33 >= v67)
          {
            if (v65 <= &v56 && v65 + 24 * v33 > &v56)
            {
              v52 = &v56 - v65;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v33 + 1, 24);
              v35 = v65;
              v34 = (v65 + v52);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v33 + 1, 24);
              v34 = &v56;
              v35 = v65;
            }
          }

          v36 = &v35[24 * v66];
          v37 = *v34;
          *(v36 + 2) = v34[2];
          *v36 = v37;
          ++v66;
          if (v63)
          {
            mlir::InFlightDiagnostic::report(&v63);
          }
        }
      }
    }
  }

  if (v74 == 1)
  {
    if (v73 != &v74)
    {
      free(v73);
    }

    v38 = __p;
    if (__p)
    {
      v39 = v72;
      v40 = __p;
      if (v72 != __p)
      {
        do
        {
          v39 = sub_100052FFC(v39 - 1);
        }

        while (v39 != v38);
        v40 = __p;
      }

      v72 = v38;
      operator delete(v40);
    }

    v41 = v69;
    if (v69)
    {
      v42 = v70;
      v43 = v69;
      if (v70 != v69)
      {
        do
        {
          v44 = *--v42;
          *v42 = 0;
          if (v44)
          {
            operator delete[]();
          }
        }

        while (v42 != v41);
        v43 = v69;
      }

      v70 = v41;
      operator delete(v43);
    }

    if (v65 != v68)
    {
      free(v65);
    }
  }

  if ((v77 & 1) != 0 && v75 != v76)
  {
    free(v75);
  }

  v45 = 0;
  *a1 = 0;
LABEL_74:
  *(a1 + 64) = v45;
  v47 = __src;
  if (__src != v62)
  {
LABEL_75:
    free(v47);
  }
}

void mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getOutputIntents(mlir::ODIE::Compiler::CoreML::IsolatedGroupOp *this@<X0>, mlir::SymbolTableCollection *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v3)
  {
    v4 = (v3 - 8);
  }

  else
  {
    v4 = 0;
  }

  sub_1002866F0(a3, a2, v4);
}

BOOL mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  result = 0;
  if (sub_10010FB18(a1, v3 + 1))
  {
    mlir::ODIE::Compiler::CoreML::CoreMLDialectVersion::get(a1, v5);
    if (v5[1] < 4uLL || sub_1001E1040(a1, v3) && sub_1001E1040(a1, v3 + 2))
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::writeProperties(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72));
  (*(*a2 + 24))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64));
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80);
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

void sub_1001E39EC(void *a1, mlir::ArrayAttr *a2, unint64_t a3)
{
  v6 = a1 + 2;
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  if (a3 < 7)
  {
    if (!a3)
    {
      *(a1 + 2) = 0;
      return;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, a3, 8);
    v6 = *a1;
  }

  bzero(v6, 8 * a3);
  *(a1 + 2) = a3;
  if (*(a2 + 8) == 1)
  {
    v7 = 0;
    do
    {
      v8 = *(mlir::ArrayAttr::getValue(a2) + 8 * v7);
      if (v8)
      {
        if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
        {
          v8 = 0;
        }

        v10 = v8;
        if (v8)
        {
          v9 = mlir::DictionaryAttr::get(&v10, "coreml.intent", 0xDuLL);
          if (v9)
          {
            if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id)
            {
              *(*a1 + 8 * v7) = v9;
            }
          }
        }
      }

      ++v7;
    }

    while (a3 != v7);
  }
}

void mlir::ODIE::Compiler::CoreML::DelegateOp::getOutputIntents(mlir::ODIE::Compiler::CoreML::DelegateOp *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *this;
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80) != 0;
  __src = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  LOBYTE(v34) = v5;
  sub_1001E39EC(&v36, &__src, *(v4 + 36));
  v6 = *(*this + 36);
  v7 = (*this - 16);
  if (!v6)
  {
    v7 = 0;
  }

  __src = v7;
  v34 = v6;
  mlir::ResultRange::getTypes(&v30, &__src);
  v8 = v30;
  v9 = v31;
  v10 = v32;
  v11 = v36;
  v12 = v37;
  __src = v35;
  v34 = 0x600000000;
  if (!v37 || v31 == v32)
  {
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000000;
    *(a2 + 64) = 1;
    goto LABEL_36;
  }

  v13 = v32 + ~v31;
  if (v13 >= ((v37 - 1) & 0x1FFFFFFFFFFFFFFFuLL))
  {
    v13 = (v37 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  }

  v29 = a2;
  v28 = v13 + 1;
  if (v13 < 6)
  {
    v14 = 0;
    v15 = v35;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v35, v13 + 1, 8);
    v14 = v34;
    v15 = __src;
  }

  v16 = &v15[8 * v14];
  v17 = 8 * v12 - 8;
  do
  {
    v18 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, v9) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    v19 = v18 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id;
    if (v19)
    {
      v20 = 1;
LABEL_20:
      Context = mlir::Attribute::getContext((*this + 24));
      v21 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(Context, v20);
      goto LABEL_21;
    }

    v21 = *v11;
    if (!*v11)
    {
      v20 = 0;
      goto LABEL_20;
    }

LABEL_21:
    *v16++ = v21;
    if (!v17)
    {
      break;
    }

    ++v11;
    v17 -= 8;
    v19 = v10 - 1 == v9++;
  }

  while (!v19);
  v23 = v34;
  *v29 = v29 + 16;
  *(v29 + 8) = 0x600000000;
  v24 = __src;
  v25 = (v23 + v28);
  LODWORD(v34) = v25;
  if (v25 && &__src != v29)
  {
    if (__src == v35)
    {
      v27 = v23 + v28;
      if (v25 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(v29, (v29 + 16), v25, 8), v27 = v34, v24 = __src, v34))
      {
        memcpy(*v29, v24, 8 * v27);
        v24 = __src;
      }

      *(v29 + 8) = v25;
    }

    else
    {
      *v29 = __src;
      v26 = HIDWORD(v34);
      *(v29 + 8) = v25;
      *(v29 + 12) = v26;
      __src = v35;
      HIDWORD(v34) = 0;
      v24 = v35;
    }

    LODWORD(v34) = 0;
  }

  *(v29 + 64) = 1;
  if (v24 != v35)
  {
    free(v24);
  }

LABEL_36:
  if (v36 != &v38)
  {
    free(v36);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::DelegateOp::verify(mlir::Operation **this)
{
  v2 = *this;
  v3 = (*(*this + 11) >> 23) & 1;
  v76 = *(*this + 2 * v3 + 10);
  v77 = v76 != 0;
  if (!v76)
  {
LABEL_4:
    v76 = *(v2 + 2 * v3 + 8);
    v77 = v76 != 0;
    if (!v76)
    {
      return 1;
    }

    mlir::ArrayAttr::getValue(&v76);
    if ((*(*this + 46) & 0x80) != 0)
    {
      if (v5 == *(*this + 17))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }

    v75 = 257;
    mlir::OpState::emitError(this, v74, v81);
    if (v81[0])
    {
      sub_10028A1B4(v81);
      mlir::ArrayAttr::getValue(&v76);
      if (!v81[0])
      {
        goto LABEL_43;
      }
    }

    else
    {
      mlir::ArrayAttr::getValue(&v76);
      if (!v81[0])
      {
        goto LABEL_43;
      }
    }

    v78 = 5;
    v79 = v39;
    v40 = &v78;
    v41 = v82;
    if (v83 >= v84)
    {
      if (v82 <= &v78 && v82 + 24 * v83 > &v78)
      {
        v67 = &v78 - v82;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
        v41 = v82;
        v40 = (v82 + v67);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
        v40 = &v78;
        v41 = v82;
      }
    }

    v42 = &v41[24 * v83];
    v43 = *v40;
    *(v42 + 2) = *(v40 + 2);
    *v42 = v43;
    v44 = ++v83;
    if (v81[0])
    {
      v78 = 3;
      v79 = ") to match number of operands (";
      v80 = 31;
      v45 = &v78;
      v46 = v82;
      if (v44 >= v84)
      {
        if (v82 <= &v78 && v82 + 24 * v44 > &v78)
        {
          v70 = &v78 - v82;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v44 + 1, 24);
          v46 = v82;
          v45 = (v82 + v70);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v44 + 1, 24);
          v45 = &v78;
          v46 = v82;
        }
      }

      v47 = &v46[24 * v83];
      v48 = *v45;
      *(v47 + 2) = *(v45 + 2);
      *v47 = v48;
      ++v83;
    }

LABEL_43:
    if ((*(*this + 46) & 0x80) != 0)
    {
      v49 = *(*this + 17);
      if (!v81[0])
      {
        goto LABEL_49;
      }
    }

    else
    {
      v49 = 0;
      if (!v81[0])
      {
        goto LABEL_49;
      }
    }

    v78 = 5;
    v79 = v49;
    v50 = &v78;
    v51 = v82;
    if (v83 >= v84)
    {
      if (v82 <= &v78 && v82 + 24 * v83 > &v78)
      {
        v68 = &v78 - v82;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
        v51 = v82;
        v50 = (v82 + v68);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
        v50 = &v78;
        v51 = v82;
      }
    }

    v52 = &v51[24 * v83];
    v53 = *v50;
    *(v52 + 2) = *(v50 + 2);
    *v52 = v53;
    v54 = ++v83;
    if (v81[0])
    {
      v78 = 3;
      v79 = ")";
      v80 = 1;
      v55 = &v78;
      v56 = v82;
      if (v54 >= v84)
      {
        if (v82 <= &v78 && v82 + 24 * v54 > &v78)
        {
          v71 = &v78 - v82;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v54 + 1, 24);
          v56 = v82;
          v55 = (v82 + v71);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v54 + 1, 24);
          v55 = &v78;
          v56 = v82;
        }
      }

      v57 = &v56[24 * v83];
      v58 = *v55;
      *(v57 + 2) = *(v55 + 2);
      *v57 = v58;
      ++v83;
    }

LABEL_49:
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v81);
    if (v81[0])
    {
      mlir::InFlightDiagnostic::report(v81);
    }

    if (v91 == 1)
    {
      if (v90 != &v91)
      {
        free(v90);
      }

      v59 = __p;
      if (__p)
      {
        v60 = v89;
        v61 = __p;
        if (v89 != __p)
        {
          do
          {
            v60 = sub_100052FFC(v60 - 1);
          }

          while (v60 != v59);
          v61 = __p;
        }

        v89 = v59;
        operator delete(v61);
      }

      v35 = v86;
      if (!v86)
      {
        goto LABEL_67;
      }

      v62 = v87;
      v37 = v86;
      if (v87 == v86)
      {
LABEL_66:
        v87 = v35;
        operator delete(v37);
LABEL_67:
        if (v82 != v85)
        {
          free(v82);
        }

        return v6;
      }

      do
      {
        v63 = *--v62;
        *v62 = 0;
        if (v63)
        {
          operator delete[]();
        }
      }

      while (v62 != v35);
LABEL_65:
      v37 = v86;
      goto LABEL_66;
    }

    return v6;
  }

  mlir::ArrayAttr::getValue(&v76);
  v2 = *this;
  if (v4 == *(*this + 9))
  {
    v3 = (*(v2 + 11) >> 23) & 1;
    goto LABEL_4;
  }

  v75 = 257;
  mlir::OpState::emitError(this, v74, v81);
  if (v81[0])
  {
    v78 = 3;
    v79 = "expected number of result attrs (";
    v80 = 33;
    v7 = &v78;
    v8 = v82;
    if (v83 >= v84)
    {
      if (v82 <= &v78 && v82 + 24 * v83 > &v78)
      {
        v65 = &v78 - v82;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
        v8 = v82;
        v7 = (v82 + v65);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
        v7 = &v78;
        v8 = v82;
      }
    }

    v9 = &v8[24 * v83];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    ++v83;
  }

  mlir::ArrayAttr::getValue(&v76);
  if (v81[0])
  {
    v78 = 5;
    v79 = v11;
    v12 = &v78;
    v13 = v82;
    if (v83 >= v84)
    {
      if (v82 <= &v78 && v82 + 24 * v83 > &v78)
      {
        v66 = &v78 - v82;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
        v13 = v82;
        v12 = (v82 + v66);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
        v12 = &v78;
        v13 = v82;
      }
    }

    v14 = &v13[24 * v83];
    v15 = *v12;
    *(v14 + 2) = *(v12 + 2);
    *v14 = v15;
    v16 = ++v83;
    if (v81[0])
    {
      v78 = 3;
      v79 = ") to match number of results (";
      v80 = 30;
      v17 = &v78;
      v18 = v82;
      if (v16 >= v84)
      {
        if (v82 <= &v78 && v82 + 24 * v16 > &v78)
        {
          v69 = &v78 - v82;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v16 + 1, 24);
          v18 = v82;
          v17 = (v82 + v69);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v16 + 1, 24);
          v17 = &v78;
          v18 = v82;
        }
      }

      v19 = &v18[24 * v83];
      v20 = *v17;
      *(v19 + 2) = *(v17 + 2);
      *v19 = v20;
      v21 = ++v83;
      if (v81[0])
      {
        v22 = *(*this + 9);
        v78 = 5;
        v79 = v22;
        v23 = &v78;
        v24 = v82;
        if (v21 >= v84)
        {
          if (v82 <= &v78 && v82 + 24 * v21 > &v78)
          {
            v72 = &v78 - v82;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v21 + 1, 24);
            v24 = v82;
            v23 = (v82 + v72);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v21 + 1, 24);
            v23 = &v78;
            v24 = v82;
          }
        }

        v25 = &v24[24 * v83];
        v26 = *v23;
        *(v25 + 2) = *(v23 + 2);
        *v25 = v26;
        v27 = ++v83;
        if (v81[0])
        {
          v78 = 3;
          v79 = ")";
          v80 = 1;
          v28 = &v78;
          v29 = v82;
          if (v27 >= v84)
          {
            if (v82 <= &v78 && v82 + 24 * v27 > &v78)
            {
              v73 = &v78 - v82;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v27 + 1, 24);
              v29 = v82;
              v28 = (v82 + v73);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v27 + 1, 24);
              v28 = &v78;
              v29 = v82;
            }
          }

          v30 = &v29[24 * v83];
          v31 = *v28;
          *(v30 + 2) = *(v28 + 2);
          *v30 = v31;
          ++v83;
        }
      }
    }
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v81);
  if (v81[0])
  {
    mlir::InFlightDiagnostic::report(v81);
  }

  if (v91 == 1)
  {
    if (v90 != &v91)
    {
      free(v90);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v89;
      v34 = __p;
      if (v89 != __p)
      {
        do
        {
          v33 = sub_100052FFC(v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v89 = v32;
      operator delete(v34);
    }

    v35 = v86;
    if (!v86)
    {
      goto LABEL_67;
    }

    v36 = v87;
    v37 = v86;
    if (v87 == v86)
    {
      goto LABEL_66;
    }

    do
    {
      v38 = *--v36;
      *v36 = 0;
      if (v38)
      {
        operator delete[]();
      }
    }

    while (v36 != v35);
    goto LABEL_65;
  }

  return v6;
}

BOOL mlir::ODIE::Compiler::CoreML::DelegateOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  result = 0;
  if (sub_10010FB18(a1, v3 + 1) && sub_1001E4948(a1, v3 + 3))
  {
    mlir::ODIE::Compiler::CoreML::CoreMLDialectVersion::get(a1, v5);
    if (v5[1] < 4uLL || sub_1001E1040(a1, v3) && sub_1001E1040(a1, v3 + 2))
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_1001E4948(uint64_t a1, uint64_t *a2)
{
  v31 = 0;
  if (((*(*a1 + 48))(a1, &v31) & 1) == 0)
  {
    return 0;
  }

  v4 = v31;
  if (mlir::detail::DenseArrayAttrImpl<signed char>::classof(v31))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v30[16] = 257;
  (*(*a1 + 16))(&v36, a1, v30);
  if (v36)
  {
    LODWORD(v32) = 3;
    v33 = "expected ";
    v34 = 9;
    v7 = &v32;
    v8 = v38;
    if (v39 >= v40)
    {
      if (v38 <= &v32 && v38 + 24 * v39 > &v32)
      {
        v27 = &v32 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v8 = v38;
        v7 = (v38 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v7 = &v32;
        v8 = v38;
      }
    }

    v9 = &v8[24 * v39];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v39;
  }

  {
    if (v36)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_10028A2B0();
    if (v36)
    {
LABEL_14:
      v35 = 261;
      v32 = llvm::getTypeName<mlir::detail::DenseArrayAttrImpl<signed char>>(void)::Name;
      v33 = *algn_1002C2E98;
      mlir::Diagnostic::operator<<(&v37, &v32);
      if (v36)
      {
        LODWORD(v32) = 3;
        v33 = ", but got: ";
        v34 = 11;
        v11 = &v32;
        v12 = v38;
        if (v39 >= v40)
        {
          if (v38 <= &v32 && v38 + 24 * v39 > &v32)
          {
            v28 = &v32 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v12 = v38;
            v11 = (v38 + v28);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v11 = &v32;
            v12 = v38;
          }
        }

        v13 = &v12[24 * v39];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v39;
        if (v36)
        {
          v15 = &v32;
          mlir::DiagnosticArgument::DiagnosticArgument(&v32, v31);
          v16 = v38;
          if (v39 >= v40)
          {
            if (v38 <= &v32 && v38 + 24 * v39 > &v32)
            {
              v29 = &v32 - v38;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
              v16 = v38;
              v15 = (v38 + v29);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
              v15 = &v32;
              v16 = v38;
            }
          }

          v17 = &v16[24 * v39];
          v18 = *v15;
          *(v17 + 2) = v15[2];
          *v17 = v18;
          ++v39;
        }
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
  v19 = result;
  if (v36)
  {
    mlir::InFlightDiagnostic::report(&v36);
    result = v19;
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
      result = v19;
    }

    v20 = __p;
    if (__p)
    {
      v21 = v45;
      v22 = __p;
      if (v45 != __p)
      {
        do
        {
          v21 = sub_100052FFC(v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v45 = v20;
      operator delete(v22);
      result = v19;
    }

    v23 = v42;
    if (v42)
    {
      v24 = v43;
      v25 = v42;
      if (v43 != v42)
      {
        do
        {
          v26 = *--v24;
          *v24 = 0;
          if (v26)
          {
            operator delete[]();
          }
        }

        while (v24 != v23);
        v25 = v42;
      }

      v43 = v23;
      operator delete(v25);
      result = v19;
    }

    if (v38 != v41)
    {
      free(v38);
      return v19;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::DelegateOp::writeProperties(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72));
  (*(*a2 + 16))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 88));
  (*(*a2 + 24))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64));
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80);
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

unint64_t *sub_1001E4F08(unint64_t *a1, void *a2)
{
  mlir::ValueRange::ValueRange(v4, *a2 + 32 * a2[1], a2[3] - a2[1]);
  mlir::TypeRange::TypeRange(a1, v4[0], v4[1]);
  return a1;
}

unint64_t *sub_1001E4F84(unint64_t *a1, uint64_t *a2)
{
  NextResultAtOffset = *a2;
  v4 = a2[1];
  v5 = a2[3];
  if (v4)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(*a2, a2[1]);
  }

  mlir::ValueRange::ValueRange(v7, NextResultAtOffset, v5 - v4);
  mlir::TypeRange::TypeRange(a1, v7[0], v7[1]);
  return a1;
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::verify(mlir::Operation **this)
{
  v22[0] = sub_1001E5280(this);
  v22[1] = v2;
  if (*(*mlir::TypedAttr::getType(v22) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id)
  {
    return 1;
  }

  v18 = 257;
  mlir::OpState::emitError(this, v17, v22);
  if (v22[0])
  {
    v19 = 3;
    v21 = 45;
    v3 = &v19;
    v4 = v23;
    if (v24 >= v25)
    {
      if (v23 <= &v19 && v23 + 24 * v24 > &v19)
      {
        v16 = &v19 - v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v4 = v23;
        v3 = (v23 + v16);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v3 = &v19;
        v4 = v23;
      }
    }

    v5 = &v4[24 * v24];
    v6 = *v3;
    *(v5 + 2) = *(v3 + 2);
    *v5 = v6;
    ++v24;
  }

  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
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

  return v7;
}

void *sub_1001E5280(uint64_t a1)
{
  result = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80);
  if (result)
  {
    v2 = *result;
    {
      v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      v12 = v2;
      v13 = result;
      sub_1002855B8();
      result = v13;
      v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v4 = *(v12 + 8);
      v5 = *(v12 + 16);
      if (!v5)
      {
        return result;
      }
    }

    v6 = v4;
    v7 = v5;
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[2 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 2;
      v7 += ~(v7 >> 1);
      if (v11 < v3)
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::verifySymbolUses(mlir::ODIE::Compiler::CoreML::CallOp *this, mlir::SymbolTableCollection *a2)
{
  Ref = sub_1001E5280(this);
  if (*(*Ref + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v5 = Ref;
  }

  else
  {
    v5 = 0;
  }

  v47[0] = v5;
  if (v5)
  {
    Ref = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getRef(v47);
  }

  v6 = *(*Ref + 136);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  if (v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v8 = Ref;
  }

  else
  {
    v8 = 0;
  }

  v47[0] = v8;
  if (v7)
  {
    Ref = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(v47);
  }

  if (*(*Ref + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v9 = Ref;
  }

  else
  {
    v9 = 0;
  }

  v45 = v9;
  if (v9)
  {
    v46[0] = mlir::ODIE::Compiler::CoreML::CallOp::lookupCallee(this, a2);
    ParentOp = *this;
    if (v46[0])
    {
      if (!*(ParentOp + 16 * ((*(ParentOp + 44) >> 23) & 1) + 72))
      {
        return mlir::ODIE::Compiler::CoreML::FuncOp::verifySufficientMatch(v46, *this);
      }

      return 1;
    }

    do
    {
      ParentOp = *(ParentOp + 16);
      if (!ParentOp)
      {
        break;
      }

      ParentOp = mlir::Block::getParentOp(ParentOp);
      if (!ParentOp)
      {
        break;
      }
    }

    while (*(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id);
    v22 = ParentOp;
    RootReference = mlir::SymbolRefAttr::getRootReference(&v45);
    v24 = mlir::SymbolTableCollection::lookupSymbolIn(a2, v22, RootReference);
    if (!v24 || *(*(v24 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImportOp,void>::id)
    {
      v44 = 259;
      mlir::OpState::emitOpError(v47, this, v43);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
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

        v25 = __p;
        if (__p)
        {
          v26 = v55;
          v27 = __p;
          if (v55 != __p)
          {
            do
            {
              v26 = sub_100052FFC(v26 - 1);
            }

            while (v26 != v25);
            v27 = __p;
          }

          v55 = v25;
          operator delete(v27);
        }

        v28 = v52;
        if (!v52)
        {
          goto LABEL_74;
        }

        v29 = v53;
        v30 = v52;
        if (v53 == v52)
        {
LABEL_73:
          v53 = v28;
          operator delete(v30);
LABEL_74:
          if (v48 != v51)
          {
            free(v48);
          }

          return v11;
        }

        do
        {
          v31 = *--v29;
          *v29 = 0;
          if (v31)
          {
            operator delete[]();
          }
        }

        while (v29 != v28);
LABEL_72:
        v30 = v52;
        goto LABEL_73;
      }

      return v11;
    }

    return 1;
  }

  v12 = *sub_1001E5280(this);
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (!v15)
    {
      goto LABEL_53;
    }
  }

  else
  {
    sub_10028A028();
    v13 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (!v15)
    {
      goto LABEL_53;
    }
  }

  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 != &v14[2 * v15] && *v16 == v13 && v16[1])
  {
    return 1;
  }

LABEL_53:
  v44 = 257;
  mlir::OpState::emitError(this, v43, v47);
  if (v47[0])
  {
    LODWORD(v46[0]) = 3;
    v46[1] = "expected a parameter attribute if the callee is not resolved";
    v46[2] = 60;
    v32 = v46;
    v33 = v48;
    if (v49 >= v50)
    {
      if (v48 <= v46 && v48 + 24 * v49 > v46)
      {
        v42 = v46 - v48;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
        v33 = v48;
        v32 = (v48 + v42);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
        v32 = v46;
        v33 = v48;
      }
    }

    v34 = &v33[24 * v49];
    v35 = *v32;
    *(v34 + 2) = v32[2];
    *v34 = v35;
    ++v49;
  }

  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
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

    v36 = __p;
    if (__p)
    {
      v37 = v55;
      v38 = __p;
      if (v55 != __p)
      {
        do
        {
          v37 = sub_100052FFC(v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v55 = v36;
      operator delete(v38);
    }

    v28 = v52;
    if (!v52)
    {
      goto LABEL_74;
    }

    v39 = v53;
    v30 = v52;
    if (v53 == v52)
    {
      goto LABEL_73;
    }

    do
    {
      v40 = *--v39;
      *v39 = 0;
      if (v40)
      {
        operator delete[]();
      }
    }

    while (v39 != v28);
    goto LABEL_72;
  }

  return v11;
}

void *mlir::ODIE::Compiler::CoreML::CallOp::getResolvedCallee(mlir::ODIE::Compiler::CoreML::CallOp *this)
{
  result = sub_1001E5280(this);
  if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v2 = result;
  }

  else
  {
    v2 = 0;
  }

  v6 = v2;
  if (v2)
  {
    result = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getRef(&v6);
  }

  v3 = *(*result + 136);
  v4 = v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  if (v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v4)
  {
    result = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(&v6);
  }

  if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    return 0;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::lookupCallee(mlir::ODIE::Compiler::CoreML::CallOp *this, mlir::SymbolTableCollection *a2)
{
  Ref = sub_1001E5280(this);
  if (*(*Ref + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v5 = Ref;
  }

  else
  {
    v5 = 0;
  }

  v16 = v5;
  if (v5)
  {
    Ref = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getRef(&v16);
  }

  v6 = *(*Ref + 136);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  if (v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v8 = Ref;
  }

  else
  {
    v8 = 0;
  }

  v16 = v8;
  if (v7)
  {
    Ref = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(&v16);
  }

  if (*(*Ref + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v9 = Ref;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = *this;
  if (a2)
  {
    while (1)
    {
      v11 = *(v10 + 16);
      if (!v11)
      {
        break;
      }

      ParentOp = mlir::Block::getParentOp(v11);
      v10 = ParentOp;
      if (!ParentOp || *(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
      {
        result = mlir::SymbolTableCollection::lookupSymbolIn(a2, ParentOp, v9);
        if (result)
        {
          goto LABEL_31;
        }

        return result;
      }
    }

    result = mlir::SymbolTableCollection::lookupSymbolIn(a2, 0, v9);
    if (result)
    {
      goto LABEL_31;
    }
  }

  else
  {
    while (1)
    {
      v14 = *(v10 + 16);
      if (!v14)
      {
        break;
      }

      v15 = mlir::Block::getParentOp(v14);
      v10 = v15;
      if (!v15 || *(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
      {
        goto LABEL_30;
      }
    }

    v10 = 0;
LABEL_30:
    result = mlir::SymbolTable::lookupSymbolIn(v10, v9);
LABEL_31:
    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FuncOp,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::parse(mlir::ODIE::Compiler::CoreML::CallOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  if ((*(*this + 408))(this, "shim", 4))
  {
    v5 = *(*(*(a2 + 1) + 96) + 8);
    v6 = (*(*this + 32))(this);
    UnitAttr = mlir::Builder::getUnitAttr(v6, v7);
    mlir::NamedAttribute::NamedAttribute(&v49, v5, UnitAttr);
    mlir::NamedAttrList::push_back(a2 + 112, v49, v50);
  }

  v31 = 0;
  v32 = 0;
  if (((*(*this + 160))(this) & 1) == 0)
  {
    if (mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(this, &v31))
    {
      goto LABEL_23;
    }

    return 0;
  }

  v49 = 0;
  if (!sub_1001D8E8C(this, &v49, 0) || ((*(*this + 168))(this) & 1) == 0)
  {
    return 0;
  }

  v9 = v49;
  if (v49)
  {
    v10 = *v49;
    {
      v11 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      if (!v13)
      {
        goto LABEL_21;
      }
    }

    else
    {
      sub_10028243C();
      v11 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      if (!v13)
      {
        goto LABEL_21;
      }
    }

    v14 = v12;
    v15 = v13;
    do
    {
      v16 = v15 >> 1;
      v17 = &v14[2 * (v15 >> 1)];
      v19 = *v17;
      v18 = v17 + 2;
      v15 += ~(v15 >> 1);
      if (v19 < v11)
      {
        v14 = v18;
      }

      else
      {
        v15 = v16;
      }
    }

    while (v15);
    if (v14 != &v12[2 * v13] && *v14 == v11)
    {
      v21 = v14[1];
      goto LABEL_22;
    }
  }

LABEL_21:
  v21 = 0;
LABEL_22:
  v31 = v9;
  v32 = v21;
LABEL_23:
  v53 = &_mh_execute_header;
  v49 = v51;
  v50 = 0x400000000;
  v51[8] = 4;
  v52 = v54;
  v46 = v48;
  v47 = 0x600000000;
  v43 = v45;
  v44 = 0x600000000;
  v40 = v42;
  v41 = 0x600000000;
  v37 = v39;
  v38 = 0x600000000;
  if ((*(*this + 720))(this, &v52, 1, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 488))(this, &v49) & 1) != 0 && ((*(*this + 104))(this) & 1) != 0 && (mlir::call_interface_impl::parseFunctionSignature(this, &v46, &v40, &v43, &v37, 1))
  {
    v34 = v36;
    v35 = 0x600000000;
    if (v53 && v47)
    {
      v22 = v52;
      v23 = v46;
      v24 = 8 * v47 - 8;
      v25 = 32 * v53 - 32;
      while (((*(*this + 728))(this, v22, *v23, &v34) & 1) != 0)
      {
        if (v25)
        {
          v22 += 32;
          ++v23;
          v26 = v24;
          v24 -= 8;
          v25 -= 32;
          if (v26)
          {
            continue;
          }
        }

        goto LABEL_33;
      }

      v20 = 0;
    }

    else
    {
LABEL_33:
      sub_1001D8224(a2, *(*(*(a2 + 1) + 96) + 16), v31);
      mlir::ValueRange::ValueRange(v33, v34, v35);
      mlir::OperationState::addOperands(a2, v33[0], v33[1]);
      sub_1001D4484(a2, v43, v44);
      Attrs = mlir::NamedAttrList::getAttrs(&v49);
      sub_1001E602C(a2, Attrs, v28);
      v29 = (*(*this + 32))(this);
      mlir::call_interface_impl::addArgAndResultAttrs(v29, a2, v40, v41, v37, v38, **(*(a2 + 1) + 96), *(*(*(a2 + 1) + 96) + 24));
      v20 = 1;
    }

    if (v34 != v36)
    {
      free(v34);
    }
  }

  else
  {
    v20 = 0;
  }

  if (v37 != v39)
  {
    free(v37);
  }

  if (v40 != v42)
  {
    free(v40);
  }

  if (v43 != v45)
  {
    free(v43);
  }

  if (v46 != v48)
  {
    free(v46);
  }

  if (v49 != v51)
  {
    free(v49);
  }

  if (v52 != v54)
  {
    free(v52);
  }

  return v20;
}

void sub_1001E602C(void *result, const void *a2, uint64_t a3)
{
  result[24] = 0;
  v5 = *(result + 30);
  v6 = a3 + v5;
  if (v6 > *(result + 31))
  {
    v7 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod((result + 14), result + 16, v6, 16);
    a2 = v7;
    LODWORD(v5) = *(result + 30);
  }

  if (a3)
  {
    memcpy((result[14] + 16 * v5), a2, 16 * a3);
    LODWORD(v5) = *(result + 30);
  }

  *(result + 30) = v5 + a3;
}

void mlir::ODIE::Compiler::CoreML::CallOp::getInputIntents(mlir::SymbolTable **this@<X0>, llvm **a2@<X1>, _BYTE *a3@<X8>)
{
  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v22;
  }

  Ref = sub_1001E5280(this);
  if (*(*Ref + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v7 = Ref;
  }

  else
  {
    v7 = 0;
  }

  v24 = v7;
  if (v7)
  {
    Ref = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getRef(&v24);
  }

  v8 = *(*Ref + 136);
  v9 = v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  if (v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v10 = Ref;
  }

  else
  {
    v10 = 0;
  }

  v24 = v10;
  if (v9)
  {
    if (*(*mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(&v24) + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      goto LABEL_21;
    }
  }

  else if (*(*Ref + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    goto LABEL_21;
  }

  v11 = *this;
  if (v11)
  {
    v12 = sub_10017F728(v11);
    v13 = mlir::call_interface_impl::resolveCallable(v11, v12, v5);
    if (v13)
    {
      goto LABEL_18;
    }

LABEL_21:
    *a3 = 0;
    a3[64] = 0;
    v16 = v23;
    v17 = v22[0];
    if (!v23)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  v13 = mlir::call_interface_impl::resolveCallable(0, 0, v5);
  if (!v13)
  {
    goto LABEL_21;
  }

LABEL_18:
  v14 = v13;
  v15 = sub_1002500E0(v13);
  (*v15)(v15, v14, v5);
  v16 = v23;
  v17 = v22[0];
  if (!v23)
  {
LABEL_19:
    v18 = 0;
    goto LABEL_28;
  }

LABEL_22:
  v19 = (v17 + 8);
  v20 = 16 * v16;
  do
  {
    if ((*(v19 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v21 = *v19;
      *v19 = 0;
      if (v21)
      {
        llvm::deallocate_buffer(*(v21 + 8), (16 * *(v21 + 24)), 8uLL);
        operator delete();
      }
    }

    v19 += 2;
    v20 -= 16;
  }

  while (v20);
  v17 = v22[0];
  v18 = (16 * v23);
LABEL_28:
  llvm::deallocate_buffer(v17, v18, 8uLL);
}

void mlir::ODIE::Compiler::CoreML::CallOp::getOutputIntents(mlir::SymbolTable **this@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *this;
  if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9))
  {
    __src = 0;
    v43 = 0;
    LODWORD(v44[0]) = 0;
    if (a2)
    {
      p_src = a2;
    }

    else
    {
      p_src = &__src;
    }

    Ref = sub_1001E5280(this);
    if (*(*Ref + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
    {
      v17 = Ref;
    }

    else
    {
      v17 = 0;
    }

    v41 = v17;
    if (v17)
    {
      Ref = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getRef(&v41);
    }

    v18 = *(*Ref + 136);
    v19 = v18 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
    if (v18 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
    {
      v20 = Ref;
    }

    else
    {
      v20 = 0;
    }

    v41 = v20;
    if (v19)
    {
      if (*(*mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(&v41) + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
      {
        goto LABEL_39;
      }
    }

    else if (*(*Ref + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      goto LABEL_39;
    }

    v25 = *this;
    if (v25)
    {
      v26 = sub_10017F728(v25);
      v27 = mlir::call_interface_impl::resolveCallable(v25, v26, p_src);
      if (v27)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v27 = mlir::call_interface_impl::resolveCallable(0, 0, p_src);
      if (v27)
      {
LABEL_30:
        v28 = v27;
        v29 = sub_1002500E0(v27);
        (*(v29 + 8))(v29, v28, p_src);
        v30 = LODWORD(v44[0]);
        v31 = __src;
        if (!LODWORD(v44[0]))
        {
LABEL_31:
          v32 = 0;
LABEL_46:
          llvm::deallocate_buffer(v31, v32, 8uLL);
          return;
        }

LABEL_40:
        v34 = (v31 + 8);
        v35 = 16 * v30;
        do
        {
          if ((*(v34 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            v36 = *v34;
            *v34 = 0;
            if (v36)
            {
              llvm::deallocate_buffer(*(v36 + 8), (16 * *(v36 + 24)), 8uLL);
              operator delete();
            }
          }

          v34 += 2;
          v35 -= 16;
        }

        while (v35);
        v31 = __src;
        v32 = (16 * LODWORD(v44[0]));
        goto LABEL_46;
      }
    }

LABEL_39:
    *a3 = 0;
    *(a3 + 64) = 0;
    v30 = LODWORD(v44[0]);
    v31 = __src;
    if (!LODWORD(v44[0]))
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  v5 = *(v4 + 9);
  Context = mlir::Attribute::getContext((v4 + 24));
  v7 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(Context, 0);
  v8 = v7;
  __src = v44;
  v43 = 0x600000000;
  if (v5 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v44, v5, 8);
    v9 = (__src + 8 * (v5 & 0xFFFFFFFC));
    v10 = v5 & 3;
    v11 = vdupq_n_s64(v8);
    v12 = (__src + 16);
    v13 = v5 & 0xFFFFFFFC;
    do
    {
      v12[-1] = v11;
      *v12 = v11;
      v12 += 2;
      v13 -= 4;
    }

    while (v13);
    if ((v5 & 0xFFFFFFFC) != v5)
    {
      do
      {
        *v9++ = v8;
        --v10;
      }

      while (v10);
    }

    goto LABEL_53;
  }

  if (v5)
  {
    v21 = vdupq_n_s64(v5 - 1);
    v22 = v5 + 1;
    v23 = vmovn_s64(vcgeq_u64(v21, xmmword_10028FC40));
    if (v23.i8[0])
    {
      v44[0] = v7;
      v24 = v22 & 0xE;
      if ((v23.i8[4] & 1) == 0)
      {
LABEL_25:
        if (v24 == 2)
        {
          goto LABEL_53;
        }

LABEL_34:
        v33 = vmovn_s64(vcgtq_u64(v21, xmmword_10028FCF0));
        if (v33.i8[0])
        {
          v44[2] = v7;
          if ((v33.i8[4] & 1) == 0)
          {
LABEL_36:
            if (v24 == 4)
            {
              goto LABEL_53;
            }

LABEL_49:
            v37 = vmovn_s64(vcgtq_u64(v21, xmmword_10028FD00));
            if (v37.i8[0])
            {
              v44[4] = v7;
            }

            if (v37.i8[4])
            {
              v44[5] = v7;
            }

            goto LABEL_53;
          }
        }

        else if ((v33.i8[4] & 1) == 0)
        {
          goto LABEL_36;
        }

        v44[3] = v7;
        if (v24 == 4)
        {
          goto LABEL_53;
        }

        goto LABEL_49;
      }
    }

    else
    {
      v24 = v22 & 0xE;
      if ((v23.i8[4] & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v44[1] = v7;
    if (v24 == 2)
    {
      goto LABEL_53;
    }

    goto LABEL_34;
  }

LABEL_53:
  LODWORD(v43) = v5;
  *a3 = a3 + 16;
  *(a3 + 8) = 0x600000000;
  v38 = __src;
  if (v5 && &__src != a3)
  {
    if (__src == v44)
    {
      v40 = v5;
      if (v5 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v5, 8), v40 = v43, v38 = __src, v43))
      {
        memcpy(*a3, v38, 8 * v40);
        v38 = __src;
      }

      *(a3 + 8) = v5;
    }

    else
    {
      *a3 = __src;
      v39 = HIDWORD(v43);
      *(a3 + 8) = v5;
      *(a3 + 12) = v39;
      __src = v44;
      HIDWORD(v43) = 0;
      v38 = v44;
    }

    LODWORD(v43) = 0;
  }

  *(a3 + 64) = 1;
  if (v38 != v44)
  {
    free(v38);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::CallOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  mlir::ODIE::Compiler::CoreML::CoreMLDialectVersion::get(a1, &v5);
  if (v6 < 5)
  {
    if (v6 == 3)
    {
      return sub_1001E6818(a1, v3 + 2);
    }

    if (v6 != 4)
    {
      return 1;
    }

    if (!sub_1001E1040(a1, v3) || !sub_1001E6818(a1, v3 + 2))
    {
      return 0;
    }
  }

  else if (!sub_1001E6818(a1, v3 + 2) || v6 >= 6 && !sub_1001E14EC(a1, v3 + 1) || !sub_1001E1040(a1, v3))
  {
    return 0;
  }

  return sub_1001E1040(a1, v3 + 4);
}

BOOL sub_1001E6818(uint64_t a1, void *a2)
{
  v31 = 0;
  if (((*(*a1 + 48))(a1, &v31) & 1) == 0)
  {
    return 0;
  }

  v4 = sub_100062D0C(v31);
  *a2 = v4;
  a2[1] = v5;
  if (v4)
  {
    return 1;
  }

  v30[16] = 257;
  (*(*a1 + 16))(&v36, a1, v30);
  if (v36)
  {
    LODWORD(v32) = 3;
    v33 = "expected ";
    v34 = 9;
    v7 = &v32;
    v8 = v38;
    if (v39 >= v40)
    {
      if (v38 <= &v32 && v38 + 24 * v39 > &v32)
      {
        v27 = &v32 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v8 = v38;
        v7 = (v38 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v7 = &v32;
        v8 = v38;
      }
    }

    v9 = &v8[24 * v39];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v39;
  }

  {
    if (v36)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_10028A334();
    if (v36)
    {
LABEL_11:
      v35 = 261;
      v32 = llvm::getTypeName<mlir::TypedAttr>(void)::Name;
      v33 = unk_1002C0E10;
      mlir::Diagnostic::operator<<(&v37, &v32);
      if (v36)
      {
        LODWORD(v32) = 3;
        v33 = ", but got: ";
        v34 = 11;
        v11 = &v32;
        v12 = v38;
        if (v39 >= v40)
        {
          if (v38 <= &v32 && v38 + 24 * v39 > &v32)
          {
            v28 = &v32 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v12 = v38;
            v11 = (v38 + v28);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v11 = &v32;
            v12 = v38;
          }
        }

        v13 = &v12[24 * v39];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v39;
        if (v36)
        {
          v15 = &v32;
          mlir::DiagnosticArgument::DiagnosticArgument(&v32, v31);
          v16 = v38;
          if (v39 >= v40)
          {
            if (v38 <= &v32 && v38 + 24 * v39 > &v32)
            {
              v29 = &v32 - v38;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
              v16 = v38;
              v15 = (v38 + v29);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
              v15 = &v32;
              v16 = v38;
            }
          }

          v17 = &v16[24 * v39];
          v18 = *v15;
          *(v17 + 2) = v15[2];
          *v17 = v18;
          ++v39;
        }
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
  v19 = result;
  if (v36)
  {
    mlir::InFlightDiagnostic::report(&v36);
    result = v19;
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
      result = v19;
    }

    v20 = __p;
    if (__p)
    {
      v21 = v45;
      v22 = __p;
      if (v45 != __p)
      {
        do
        {
          v21 = sub_100052FFC(v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v45 = v20;
      operator delete(v22);
      result = v19;
    }

    v23 = v42;
    if (v42)
    {
      v24 = v43;
      v25 = v42;
      if (v43 != v42)
      {
        do
        {
          v26 = *--v24;
          *v24 = 0;
          if (v26)
          {
            operator delete[]();
          }
        }

        while (v24 != v23);
        v25 = v42;
      }

      v43 = v23;
      operator delete(v25);
      result = v19;
    }

    if (v38 != v41)
    {
      free(v38);
      return v19;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::writeProperties(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80));
  (*(*a2 + 24))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72));
  (*(*a2 + 24))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64));
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 96);
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::parse(mlir::ODIE::Compiler::CoreML::InvokeOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v28 = 0;
  v29 = 0;
  if (((*(*this + 160))(this, a2, a3) & 1) == 0)
  {
    if (mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(this, &v28))
    {
      goto LABEL_21;
    }

    return 0;
  }

  v46[0] = 0;
  if (!sub_1001D8E8C(this, v46, 0) || ((*(*this + 168))(this) & 1) == 0)
  {
    return 0;
  }

  v5 = v46[0];
  if (v46[0])
  {
    v6 = *v46[0];
    {
      v7 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v8 = *(v6 + 8);
      v9 = *(v6 + 16);
      if (!v9)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_10028243C();
      v7 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v8 = *(v6 + 8);
      v9 = *(v6 + 16);
      if (!v9)
      {
        goto LABEL_19;
      }
    }

    v10 = v8;
    v11 = v9;
    do
    {
      v12 = v11 >> 1;
      v13 = &v10[2 * (v11 >> 1)];
      v15 = *v13;
      v14 = v13 + 2;
      v11 += ~(v11 >> 1);
      if (v15 < v7)
      {
        v10 = v14;
      }

      else
      {
        v11 = v12;
      }
    }

    while (v11);
    if (v10 != &v8[2 * v9] && *v10 == v7)
    {
      v17 = v10[1];
      goto LABEL_20;
    }
  }

LABEL_19:
  v17 = 0;
LABEL_20:
  v28 = v5;
  v29 = v17;
LABEL_21:
  v49 = &_mh_execute_header;
  v46[0] = v47;
  v46[1] = 0x400000000;
  v47[8] = 4;
  v48 = v50;
  v43 = v45;
  v44 = 0x600000000;
  v40 = v42;
  v41 = 0x600000000;
  v37 = v39;
  v38 = 0x600000000;
  v34 = v36;
  v35 = 0x600000000;
  if ((*(*this + 720))(this, &v48, 1, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 488))(this, v46) & 1) != 0 && ((*(*this + 104))(this) & 1) != 0 && (mlir::call_interface_impl::parseFunctionSignature(this, &v43, &v37, &v40, &v34, 1))
  {
    v27 = a2;
    v31 = v33;
    v32 = 0x600000000;
    if (v49 && v44)
    {
      v18 = v48;
      v19 = v43;
      v20 = 8 * v44 - 8;
      v21 = 32 * v49 - 32;
      while (((*(*this + 728))(this, v18, *v19, &v31) & 1) != 0)
      {
        if (v21)
        {
          v18 += 32;
          ++v19;
          v22 = v20;
          v20 -= 8;
          v21 -= 32;
          if (v22)
          {
            continue;
          }
        }

        goto LABEL_31;
      }

      v16 = 0;
    }

    else
    {
LABEL_31:
      sub_1001D8224(v27, *(*(*(v27 + 1) + 96) + 8), v28);
      mlir::ValueRange::ValueRange(v30, v31, v32);
      mlir::OperationState::addOperands(v27, v30[0], v30[1]);
      sub_1001D4484(v27, v40, v41);
      Attrs = mlir::NamedAttrList::getAttrs(v46);
      sub_1001E602C(v27, Attrs, v24);
      v25 = (*(*this + 32))(this);
      mlir::call_interface_impl::addArgAndResultAttrs(v25, v27, v37, v38, v34, v35, **(*(v27 + 1) + 96), *(*(*(v27 + 1) + 96) + 16));
      v16 = 1;
    }

    if (v31 != v33)
    {
      free(v31);
    }
  }

  else
  {
    v16 = 0;
  }

  if (v34 != v36)
  {
    free(v34);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  if (v40 != v42)
  {
    free(v40);
  }

  if (v43 != v45)
  {
    free(v43);
  }

  if (v46[0] != v47)
  {
    free(v46[0]);
  }

  if (v48 != v50)
  {
    free(v48);
  }

  return v16;
}

void *sub_1001E72C4(uint64_t a1)
{
  result = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72);
  if (result)
  {
    v2 = *result;
    {
      v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      v12 = v2;
      v13 = result;
      sub_1002855B8();
      result = v13;
      v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v4 = *(v12 + 8);
      v5 = *(v12 + 16);
      if (!v5)
      {
        return result;
      }
    }

    v6 = v4;
    v7 = v5;
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[2 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 2;
      v7 += ~(v7 >> 1);
      if (v11 < v3)
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::InvokeOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  mlir::ODIE::Compiler::CoreML::CoreMLDialectVersion::get(a1, &v19);
  if (v20 >= 5)
  {
    return sub_1001E6818(a1, v3 + 1) && sub_1001E1040(a1, v3) && sub_1001E1040(a1, v3 + 3);
  }

  if (v20 - 3 <= 1)
  {
    return sub_1001E6818(a1, v3 + 1);
  }

  v18 = 0;
  if (!sub_1001E7614(a1, &v18))
  {
    return 0;
  }

  v5 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v18);
  if (!v5)
  {
    v3[1] = 0;
    v3[2] = 0;
    return 1;
  }

  v6 = *v5;
  {
    v7 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (!v9)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v16 = v5;
    sub_10028243C();
    v5 = v16;
    v7 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (!v9)
    {
      goto LABEL_27;
    }
  }

  v10 = v8;
  v11 = v9;
  do
  {
    v12 = v11 >> 1;
    v13 = &v10[2 * (v11 >> 1)];
    v15 = *v13;
    v14 = v13 + 2;
    v11 += ~(v11 >> 1);
    if (v15 < v7)
    {
      v10 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  while (v11);
  if (v10 != &v8[2 * v9] && *v10 == v7)
  {
    v17 = v10[1];
    goto LABEL_29;
  }

LABEL_27:
  v17 = 0;
LABEL_29:
  v3[1] = v5;
  v3[2] = v17;
  return 1;
}

BOOL sub_1001E7614(uint64_t a1, uint64_t *a2)
{
  v31 = 0;
  if (((*(*a1 + 48))(a1, &v31) & 1) == 0)
  {
    return 0;
  }

  v4 = v31;
  v5 = *(*v31 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    return 1;
  }

  v30[16] = 257;
  (*(*a1 + 16))(&v36, a1, v30);
  if (v36)
  {
    LODWORD(v32) = 3;
    v33 = "expected ";
    v34 = 9;
    v6 = &v32;
    v7 = v38;
    if (v39 >= v40)
    {
      if (v38 <= &v32 && v38 + 24 * v39 > &v32)
      {
        v27 = &v32 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v7 = v38;
        v6 = (v38 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v6 = &v32;
        v7 = v38;
      }
    }

    v8 = &v7[24 * v39];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v39;
  }

  {
    if (v36)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_10028A3B8();
    if (v36)
    {
LABEL_10:
      v35 = 261;
      v32 = llvm::getTypeName<mlir::SymbolRefAttr>(void)::Name;
      v33 = unk_1002C2F00;
      mlir::Diagnostic::operator<<(&v37, &v32);
      if (v36)
      {
        LODWORD(v32) = 3;
        v33 = ", but got: ";
        v34 = 11;
        v10 = &v32;
        v11 = v38;
        if (v39 >= v40)
        {
          if (v38 <= &v32 && v38 + 24 * v39 > &v32)
          {
            v28 = &v32 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v11 = v38;
            v10 = (v38 + v28);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v10 = &v32;
            v11 = v38;
          }
        }

        v12 = &v11[24 * v39];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v39;
        if (v36)
        {
          v14 = &v32;
          mlir::DiagnosticArgument::DiagnosticArgument(&v32, v31);
          v15 = v38;
          if (v39 >= v40)
          {
            if (v38 <= &v32 && v38 + 24 * v39 > &v32)
            {
              v29 = &v32 - v38;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
              v15 = v38;
              v14 = (v38 + v29);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
              v14 = &v32;
              v15 = v38;
            }
          }

          v16 = &v15[24 * v39];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v39;
        }
      }
    }
  }

  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
  if (v36)
  {
    mlir::InFlightDiagnostic::report(&v36);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v45;
      v21 = __p;
      if (v45 != __p)
      {
        do
        {
          v20 = sub_100052FFC(v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v45 = v19;
      operator delete(v21);
    }

    v22 = v42;
    if (v42)
    {
      v23 = v43;
      v24 = v42;
      if (v43 != v42)
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
        v24 = v42;
      }

      v43 = v22;
      operator delete(v24);
    }

    if (v38 != v41)
    {
      free(v38);
    }
  }

  return v18;
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 16))(a2, v3[9]);
  (*(*a2 + 24))(a2, v3[8]);
  v4 = v3[11];
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

void *mlir::ODIE::Compiler::CoreML::InvokeOp::getResolvedCallee(mlir::ODIE::Compiler::CoreML::InvokeOp *this)
{
  result = sub_1001E72C4(this);
  if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v2 = result;
  }

  else
  {
    v2 = 0;
  }

  v6 = v2;
  if (v2)
  {
    result = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getRef(&v6);
  }

  v3 = *(*result + 136);
  v4 = v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  if (v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v4)
  {
    result = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(&v6);
  }

  if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    return 0;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::resolveCallee(mlir::ODIE::Compiler::CoreML::InvokeOp *this, mlir::SymbolTableCollection *a2)
{
  Ref = sub_1001E72C4(this);
  if (*(*Ref + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v5 = Ref;
  }

  else
  {
    v5 = 0;
  }

  v16 = v5;
  if (v5)
  {
    Ref = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getRef(&v16);
  }

  v6 = *(*Ref + 136);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  if (v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v8 = Ref;
  }

  else
  {
    v8 = 0;
  }

  v16 = v8;
  if (v7)
  {
    Ref = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(&v16);
  }

  if (*(*Ref + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v9 = Ref;
  }

  else
  {
    v9 = 0;
  }

  v16 = v9;
  if (!v9)
  {
    return 0;
  }

  v10 = *this;
  while (1)
  {
    v11 = sub_1002502D4(v10);
    if (!v11)
    {
      break;
    }

    v10 = v11;
    result = mlir::SymbolTableCollection::lookupSymbolIn(a2, v11, v9);
    if (result)
    {
      return result;
    }
  }

  v13 = *this;
  RootReference = mlir::SymbolRefAttr::getRootReference(&v16);
  v15 = mlir::SymbolRefAttr::get(RootReference);
  do
  {
    result = sub_1002502D4(v13);
    if (!result)
    {
      break;
    }

    v13 = result;
    result = mlir::SymbolTableCollection::lookupSymbolIn(a2, result, v15);
  }

  while (!result);
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::verifySymbolUses(mlir::ODIE::Compiler::CoreML::InvokeOp *this, mlir::SymbolTableCollection *a2)
{
  Ref = sub_1001E72C4(this);
  if (*(*Ref + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v5 = Ref;
  }

  else
  {
    v5 = 0;
  }

  v48[0] = v5;
  if (v5)
  {
    Ref = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getRef(v48);
  }

  v6 = *(*Ref + 136);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  if (v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v8 = Ref;
  }

  else
  {
    v8 = 0;
  }

  v48[0] = v8;
  if (v7)
  {
    if (*(*mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(v48) + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      goto LABEL_25;
    }
  }

  else if (*(*Ref + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    goto LABEL_25;
  }

  v9 = *sub_1001E72C4(this);
  {
    v10 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (!v12)
    {
      goto LABEL_25;
    }
  }

  else
  {
    sub_10028A028();
    v10 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (!v12)
    {
      goto LABEL_25;
    }
  }

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
  if (v13 != &v11[2 * v12] && *v13 == v10 && v13[1])
  {
    return 1;
  }

LABEL_25:
  v19 = mlir::ODIE::Compiler::CoreML::InvokeOp::resolveCallee(this, a2);
  if (v19)
  {
    v20 = *(*(v19 + 48) + 16);
    if (v20 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    v48[0] = v21;
    if (v20 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
    {
      return mlir::ODIE::Compiler::CoreML::GraphOp::verifySufficientMatch(v48, *this);
    }

    if (v20 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImportOp,void>::id)
    {
      return 1;
    }
  }

  v43 = "could not resolve the callee ";
  v44 = 259;
  mlir::OpState::emitOpError(v48, this, &v43);
  v22 = sub_1001E72C4(this);
  if (v48[0])
  {
    v23 = &v45;
    mlir::DiagnosticArgument::DiagnosticArgument(&v45, v22);
    v24 = v49;
    if (v50 >= v51)
    {
      if (v49 <= &v45 && v49 + 24 * v50 > &v45)
      {
        v41 = &v45 - v49;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
        v24 = v49;
        v23 = (v49 + v41);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
        v23 = &v45;
        v24 = v49;
      }
    }

    v25 = &v24[24 * v50];
    v26 = *v23;
    *(v25 + 2) = *(v23 + 2);
    *v25 = v26;
    v27 = ++v50;
    if (v48[0])
    {
      v45 = 3;
      v47 = 41;
      v28 = &v45;
      v29 = v49;
      if (v27 >= v51)
      {
        if (v49 <= &v45 && v49 + 24 * v27 > &v45)
        {
          v42 = &v45 - v49;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v27 + 1, 24);
          v29 = v49;
          v28 = (v49 + v42);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v27 + 1, 24);
          v28 = &v45;
          v29 = v49;
        }
      }

      v30 = &v29[24 * v50];
      v31 = *v28;
      *(v30 + 2) = *(v28 + 2);
      *v30 = v31;
      ++v50;
    }
  }

  v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
  if (v48[0])
  {
    mlir::InFlightDiagnostic::report(v48);
  }

  if (v58 == 1)
  {
    if (v57 != &v58)
    {
      free(v57);
    }

    v33 = __p;
    if (__p)
    {
      v34 = v56;
      v35 = __p;
      if (v56 != __p)
      {
        do
        {
          v34 = sub_100052FFC(v34 - 1);
        }

        while (v34 != v33);
        v35 = __p;
      }

      v56 = v33;
      operator delete(v35);
    }

    v36 = v53;
    if (v53)
    {
      v37 = v54;
      v38 = v53;
      if (v54 != v53)
      {
        do
        {
          v39 = *--v37;
          *v37 = 0;
          if (v39)
          {
            operator delete[]();
          }
        }

        while (v37 != v36);
        v38 = v53;
      }

      v54 = v36;
      operator delete(v38);
    }

    if (v49 != v52)
    {
      free(v49);
    }
  }

  return v32;
}