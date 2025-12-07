uint64_t mlir::DialectInterfaceCollection<mlir::DialectFoldInterface>::DialectInterfaceCollection(void *a1, mlir::MLIRContext *a2)
{
  {
    mlir::Dialect::getRegisteredInterface<mlir::DialectFoldInterface>();
  }

  v4 = mlir::detail::TypeIDResolver<mlir::DialectFoldInterface,void>::resolveTypeID(void)::id;
  v6[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DialectFoldInterface]";
  v6[1] = 76;
  llvm::StringRef::find(v6, "DesiredTypeName = ", 0x12uLL, 0);
  result = mlir::detail::DialectInterfaceCollectionBase::DialectInterfaceCollectionBase(a1, a2, v4);
  *a1 = &unk_1F5B00738;
  return result;
}

void sub_1DFD1C028(void *__p)
{

  operator delete(__p);
}

uint64_t mlir::mps::createUnreachableFunctionRemovalPass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x338uLL);
  *v5 = &unk_1F5B00758;
  std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string const*,std::string const*>((v5 + 59), *a1, (*a1 + 24 * *(a1 + 8)), 0xAAAAAAAAAAAAAAABLL * ((24 * *(a1 + 8)) >> 3));
  v4[600] = 1;
  v7 = *(a1 + 16);
  v6 = a1 + 16;
  v4[744] = v7;
  v8 = *(v4 + 100);
  if (v8)
  {
    result = (*(*v8 + 48))(v8, v6);
    *a2 = v4;
  }

  else
  {
    v10 = std::__throw_bad_function_call[abi:nn200100]();
  }

  return result;
}

uint64_t mlir::mps::MPSUnreachableFunctionRemovalBase<mlir::mps::anonymous namespace::UnreachableFunctionRemovalPass>::MPSUnreachableFunctionRemovalBase(uint64_t a1)
{
  *(a1 + 16) = "builtin.module";
  *(a1 + 24) = 14;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = a1 + 200;
  *(a1 + 192) = 0x400000000;
  *(a1 + 232) = a1 + 248;
  *(a1 + 240) = 0x400000000;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x1000000000;
  *(a1 + 336) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *a1 = &unk_1F5B007C8;
  *&v4 = "Comma seperated list of entry functions";
  *(&v4 + 1) = 39;
  v2 = (a1 + 152);
  *&v6 = "entry-points";
  *(&v6 + 1) = 12;
  v5[0] = (a1 + 152);
  v5[1] = 0;
  llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::list<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>(a1 + 344, &v6, v5, &v4);
  *(a1 + 600) = 0;
  *(a1 + 344) = &unk_1F5B008F8;
  *(a1 + 592) = &unk_1F5B00978;
  *(a1 + 608) = &unk_1F5B3E560;
  v5[0] = (a1 + 592);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a1 + 312, v5);
  *(a1 + 344) = &unk_1F5B00838;
  *(a1 + 592) = &unk_1F5B008B8;
  *&v6 = "Whether to leave unreachable funcops marked externalize.";
  *(&v6 + 1) = 56;
  LOBYTE(v4) = 0;
  v5[0] = &v4;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 616, v2, "leave-externalize-func-ops", 26, &v6, v5);
  *(a1 + 616) = &unk_1F5AFB130;
  *(a1 + 808) = &unk_1F5AFB1B0;
  return a1;
}

void mlir::mps::anonymous namespace::UnreachableFunctionRemovalPass::~UnreachableFunctionRemovalPass(mlir::mps::_anonymous_namespace_::UnreachableFunctionRemovalPass *this)
{
  *this = &unk_1F5B007C8;
  *(this + 77) = &unk_1F5B3E720;
  v2 = this + 776;
  v3 = *(this + 100);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 77) = &unk_1F5B3E1D8;
  v4 = *(this + 89);
  if (v4 != *(this + 88))
  {
    free(v4);
  }

  v5 = *(this + 85);
  if (v5 != this + 696)
  {
    free(v5);
  }

  llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(this + 43);
  *this = &unk_1F5B01A70;
  v6 = *(this + 39);
  if (v6)
  {
    *(this + 40) = v6;
    operator delete(v6);
  }

  if (*(this + 73))
  {
    v7 = *(this + 72);
    if (v7)
    {
      v8 = 0;
      do
      {
        v9 = *(*(this + 35) + v8);
        if (v9 != -8 && v9 != 0)
        {
          llvm::deallocate_buffer(v9, (*v9 + 17));
        }

        v8 += 8;
      }

      while (8 * v7 != v8);
    }
  }

  free(*(this + 35));
  v11 = *(this + 29);
  if (v11 != this + 248)
  {
    free(v11);
  }

  v12 = *(this + 23);
  if (v12 != this + 200)
  {
    free(v12);
  }

  v13 = *(this + 16);
  if (v13)
  {
    *(this + 17) = v13;
    operator delete(v13);
  }

  if (*(this + 120) == 1)
  {
    v14 = *(this + 8);
    if (v14 != *(this + 7))
    {
      free(v14);
    }
  }
}

{

  operator delete(v1);
}

void *mlir::mps::MPSUnreachableFunctionRemovalBase<mlir::mps::anonymous namespace::UnreachableFunctionRemovalPass>::getDependentDialects(int a1, uint64_t ***a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5AFAFA8;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::func::FuncDialect,void>::id, "func", 4uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFAE60;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mps::MPSDialect,void>::id, "mps", 3uLL, v4);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void *mlir::mps::anonymous namespace::UnreachableFunctionRemovalPass::runOnOperation(void *this)
{
  v1 = this;
  v2 = this[5];
  if (this[59] != this[60])
  {
    v3 = v2 & 0xFFFFFFFFFFFFFFF8;
    v73 = 0;
    v74 = 0;
    v75 = 0x1000000000;
    __p.__r_.__value_.__r.__words[0] = &v73;
    __src[0] = &__p;
    mlir::detail::walk<mlir::ForwardIterator>((v2 & 0xFFFFFFFFFFFFFFF8), _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_3mps12_GLOBAL__N_130UnreachableFunctionRemovalPass25eraseUnreachableFunctionsENS1_8ModuleOpEEUlNS1_4func6FuncOpEE_SG_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_, __src, 1);
    v71[0] = 0;
    v71[1] = 0;
    v72 = 0;
    if (v74)
    {
        ;
      }
    }

    else
    {
      i = v73;
    }

    if (i != &v73[v74])
    {
      v70 = *(*i + 8);
      __src[0] = 0;
      __src[1] = 0;
      LODWORD(v66) = 0;
      __p.__r_.__value_.__r.__words[0] = &v73;
      __p.__r_.__value_.__l.__size_ = __src;
      v68[0] = &__p;
      mlir::detail::walk<mlir::ForwardIterator>(v70, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_3mps12_GLOBAL__N_130UnreachableFunctionRemovalPass25eraseUnreachableFunctionsENS1_8ModuleOpEEUlNSB_6CallOpEE_SF_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESO_E4typeES3_OT1_EUlS3_E_EEvlS3_, v68, 1);
      v8 = llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>>>,mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>>>::operator[](v71, &v70);
      if (__src != v8)
      {
        llvm::deallocate_buffer(*v8, (8 * *(v8 + 4)));
      }

      llvm::deallocate_buffer(__src[0], (8 * v66));
    }

    v68[0] = 0;
    v68[1] = 0;
    v69 = 0;
    v66 = 0u;
    v67 = 0u;
    *__src = 0u;
    v9 = v1[59];
    v10 = v1[60];
    if (v9 == v10)
    {
      goto LABEL_78;
    }

    while (1)
    {
      if (*(v9 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v9, *(v9 + 1));
      }

      else
      {
        v11 = *v9;
        __p.__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&__p.__r_.__value_.__l.__data_ = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v14 = llvm::StringMapImpl::hash(p_p, size, v4, v5);
      Key = llvm::StringMapImpl::FindKey(&v73, p_p, size, v14);
      v16 = Key == -1 || Key == v74;
      v17 = v16;
      if (v16)
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v18 = __src[1];
        v19 = v73[Key];
        if (v66 == __src[1])
        {
          v20 = 0;
        }

        else
        {
          v20 = ((v66 - __src[1]) << 6) - 1;
        }

        v21 = *(&v67 + 1) + v67;
        if (v20 == *(&v67 + 1) + v67)
        {
          std::deque<mlir::func::FuncOp>::__add_back_capacity(__src);
          v18 = __src[1];
          v21 = *(&v67 + 1) + v67;
        }

        *(*&v18[(v21 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v21 & 0x1FF)) = *(v19 + 8);
        ++*(&v67 + 1);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_42:
          operator delete(__p.__r_.__value_.__l.__data_);
          if (v17)
          {
            goto LABEL_116;
          }

          goto LABEL_43;
        }
      }

      if (v17)
      {
        goto LABEL_116;
      }

LABEL_43:
      v9 = (v9 + 24);
      if (v9 == v10)
      {
        v22 = *(&v67 + 1);
        if (*(&v67 + 1))
        {
          while (2)
          {
            v23 = ((v66 - __src[1]) << 6) - 1;
            if (v66 == __src[1])
            {
              v23 = 0;
            }

            v70 = *(*(__src[1] + (((v67 + v22 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v67 + v22 - 1) & 0x1FF));
            *(&v67 + 1) = v22 - 1;
            if (v23 - (v22 + v67) + 1 >= 0x400)
            {
              operator delete(*(v66 - 8));
              *&v66 = v66 - 8;
            }

            llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseSetPair<mlir::func::FuncOp>>,mlir::func::FuncOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseSetPair<mlir::func::FuncOp>>::try_emplace<llvm::detail::DenseSetEmpty&>(v68, &v70, &__p);
            if ((__p.__r_.__value_.__s.__data_[16] & 1) == 0)
            {
              goto LABEL_46;
            }

            if (v72)
            {
              v24 = 0x9DDFEA08EB382D69 * ((8 * v70 - 0xAE502812AA7333) ^ (v70 >> 32));
              v25 = 0x9DDFEA08EB382D69 * ((v70 >> 32) ^ (v24 >> 47) ^ v24);
              v26 = (-348639895 * ((v25 >> 47) ^ v25)) & (v72 - 1);
              v27 = *(v71[0] + 4 * v26);
              if (v70 != v27)
              {
                v28 = 1;
                while (v27 != -4096)
                {
                  v29 = v26 + v28++;
                  v26 = v29 & (v72 - 1);
                  v27 = *(v71[0] + 4 * v26);
                  if (v70 == v27)
                  {
                    goto LABEL_60;
                  }
                }

                goto LABEL_59;
              }
            }

            else
            {
LABEL_59:
              v26 = v72;
            }

LABEL_60:
            v30 = v71[0] + 32 * v26;
            if (*(v30 + 4))
            {
              v31 = *(v30 + 1);
              v32 = *(v30 + 6);
              if (v32)
              {
                v33 = 8 * v32;
                v34 = v31;
                while ((*v34 | 0x1000) == 0xFFFFFFFFFFFFF000)
                {
                  ++v34;
                  v33 -= 8;
                  if (!v33)
                  {
                    goto LABEL_46;
                  }
                }
              }

              else
              {
                v34 = v31;
              }

              v35 = &v31[v32];
              v22 = *(&v67 + 1);
LABEL_68:
              if (v34 != v35)
              {
                v36 = __src[1];
                v37 = *v34;
                if (v66 == __src[1])
                {
                  v38 = 0;
                }

                else
                {
                  v38 = ((v66 - __src[1]) << 6) - 1;
                }

                v39 = v67 + v22;
                if (v38 == v39)
                {
                  std::deque<mlir::func::FuncOp>::__add_back_capacity(__src);
                  v36 = __src[1];
                  v39 = *(&v67 + 1) + v67;
                }

                *(*&v36[(v39 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v39 & 0x1FF)) = v37;
                v22 = ++*(&v67 + 1);
                while (++v34 != v35)
                {
                  if ((*v34 | 0x1000) != 0xFFFFFFFFFFFFF000)
                  {
                    goto LABEL_68;
                  }
                }
              }

              goto LABEL_47;
            }

LABEL_46:
            v22 = *(&v67 + 1);
LABEL_47:
            if (!v22)
            {
              break;
            }

            continue;
          }
        }

LABEL_78:
        *&__p.__r_.__value_.__r.__words[1] = mlir::Attribute::getContext((v3 + 24));
        v63 = 0;
        v64 = 0;
        __p.__r_.__value_.__r.__words[0] = &unk_1F5AFAFF0;
        if (v74)
        {
            ;
          }
        }

        else
        {
          j = v73;
        }

        v42 = &v73[v74];
        if (j != v42)
        {
          v43 = *j;
          do
          {
            v44 = *(v43 + 8);
            if (v69)
            {
              v45 = 0x9DDFEA08EB382D69 * ((8 * *(v43 + 8) - 0xAE502812AA7333) ^ HIDWORD(*(v43 + 8)));
              v46 = 0x9DDFEA08EB382D69 * (HIDWORD(v44) ^ (v45 >> 47) ^ v45);
              v47 = (-348639895 * ((v46 >> 47) ^ v46)) & (v69 - 1);
              v48 = *(v68[0] + v47);
              if (v48 == v44)
              {
LABEL_92:
                if (v47 != v69)
                {
                  goto LABEL_105;
                }
              }

              else
              {
                v55 = 1;
                while (v48 != -4096)
                {
                  v56 = v47 + v55++;
                  v47 = v56 & (v69 - 1);
                  v48 = *(v68[0] + v47);
                  if (v48 == v44)
                  {
                    goto LABEL_92;
                  }
                }
              }
            }

            if (*(v1 + 744) != 1)
            {
              goto LABEL_104;
            }

            if (*(v44 + 47) && (v76.var0 = "externalize", v76.var1 = 11, InherentAttr = mlir::Operation::getInherentAttr(v44, v76), (v50 & 1) != 0))
            {
              if (InherentAttr)
              {
                goto LABEL_105;
              }
            }

            else
            {
              v77.var0 = "externalize";
              v77.var1 = 11;
              if (mlir::DictionaryAttr::contains((v44 + 56), v77))
              {
                goto LABEL_105;
              }
            }

            if (*(v44 + 47) && (v78.var0 = "neutron.isIndependentAdapter", v78.var1 = 28, v51 = mlir::Operation::getInherentAttr(v44, v78), (v52 & 1) != 0))
            {
              if (!v51)
              {
                goto LABEL_104;
              }
            }

            else
            {
              v79.var0 = "neutron.isIndependentAdapter";
              v79.var1 = 28;
              if ((mlir::DictionaryAttr::contains((v44 + 56), v79) & 1) == 0)
              {
LABEL_104:
                mlir::RewriterBase::eraseOp(&__p, v44);
                goto LABEL_105;
              }
            }

            do
            {
LABEL_105:
              v53 = j[1];
              ++j;
              v43 = v53;
              if (v53)
              {
                v54 = v43 == -8;
              }

              else
              {
                v54 = 1;
              }
            }

            while (v54);
          }

          while (j != v42);
        }

        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
LABEL_116:
        v57 = __src[1];
        v58 = v66;
        *(&v67 + 1) = 0;
        v59 = (v66 - __src[1]) >> 3;
        if (v59 >= 3)
        {
          do
          {
            operator delete(*v57);
            v58 = v66;
            v57 = (__src[1] + 8);
            __src[1] = v57;
            v59 = (v66 - v57) >> 3;
          }

          while (v59 > 2);
        }

        if (v59 == 1)
        {
          v60 = 256;
LABEL_122:
          *&v67 = v60;
        }

        else if (v59 == 2)
        {
          v60 = 512;
          goto LABEL_122;
        }

        if (v57 != v58)
        {
          do
          {
            v61 = *v57++;
            operator delete(v61);
          }

          while (v57 != v58);
          if (v66 != __src[1])
          {
            *&v66 = v66 + ((__src[1] - v66 + 7) & 0xFFFFFFFFFFFFFFF8);
          }
        }

        if (__src[0])
        {
          operator delete(__src[0]);
        }

        llvm::deallocate_buffer(v68[0], (8 * v69));
      }
    }
  }

  this[5] = v2 | 4;
  return this;
}

uint64_t mlir::mps::MPSUnreachableFunctionRemovalBase<mlir::mps::anonymous namespace::UnreachableFunctionRemovalPass>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x338uLL);
  v5 = *(a1 + 8);
  *(v4 + 1) = *(a1 + 16);
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 1) = v5;
  v4[40] = 0;
  v4[120] = 0;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 10) = 0u;
  *(v4 + 22) = 0;
  *(v4 + 23) = v4 + 200;
  *(v4 + 24) = 0x400000000;
  *(v4 + 29) = v4 + 248;
  *(v4 + 30) = 0x400000000;
  *(v4 + 35) = 0;
  *(v4 + 36) = 0;
  *(v4 + 74) = 0;
  *(v4 + 75) = 16;
  *(v4 + 19) = 0u;
  *(v4 + 20) = 0u;
  *(v4 + 42) = 0;
  *v4 = &unk_1F5B007C8;
  *&v7 = "Comma seperated list of entry functions";
  *(&v7 + 1) = 39;
  *&v9 = "entry-points";
  *(&v9 + 1) = 12;
  v8[0] = v4 + 152;
  v8[1] = 0;
  llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::list<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>((v4 + 344), &v9, v8, &v7);
  v4[600] = 0;
  *(v4 + 43) = &unk_1F5B008F8;
  *(v4 + 74) = &unk_1F5B00978;
  *(v4 + 76) = &unk_1F5B3E560;
  v8[0] = v4 + 592;
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((v4 + 312), v8);
  *(v4 + 43) = &unk_1F5B00838;
  *(v4 + 74) = &unk_1F5B008B8;
  *&v9 = "Whether to leave unreachable funcops marked externalize.";
  *(&v9 + 1) = 56;
  LOBYTE(v7) = 0;
  v8[0] = &v7;
  result = mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((v4 + 616), v4 + 152, "leave-externalize-func-ops", 26, &v9, v8);
  *(v4 + 77) = &unk_1F5AFB130;
  *(v4 + 101) = &unk_1F5AFB1B0;
  *v4 = &unk_1F5B00758;
  *a2 = v4;
  return result;
}

void std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string const*,std::string const*>(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v5 = __str;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = *(a1 + 8);
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v8);
        v11 = *a1;
      }

      *(a1 + 8) = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v9;
    }

    if (a4 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_42;
    }

    v22 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
    v23 = 2 * v22;
    if (2 * v22 <= a4)
    {
      v23 = a4;
    }

    v24 = v22 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v23;
    if (v24 > 0xAAAAAAAAAAAAAAALL)
    {
LABEL_42:
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v25 = v24;
    v8 = operator new(24 * v24);
    *a1 = v8;
    *(a1 + 8) = v8;
    *(a1 + 16) = &v8[v25];
    while (v5 != a3)
    {
      if (SHIBYTE(v5->__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v8, v5->__r_.__value_.__l.__data_, v5->__r_.__value_.__l.__size_);
      }

      else
      {
        *&v8->__r_.__value_.__l.__data_ = *&v5->__r_.__value_.__l.__data_;
        v8->__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      }

      ++v5;
      ++v8;
    }

LABEL_24:
    *(a1 + 8) = v8;
    return;
  }

  v13 = *(a1 + 8);
  v14 = v13 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v5++);
      }

      while (v5 != a3);
      v13 = *(a1 + 8);
    }

    while (v13 != v8)
    {
      v21 = *(v13 - 1);
      v13 -= 3;
      if (v21 < 0)
      {
        operator delete(*v13);
      }
    }

    goto LABEL_24;
  }

  v15 = (__str + v14);
  if (v13 != v8)
  {
    do
    {
      std::string::operator=(v8++, v5++);
      v14 -= 24;
    }

    while (v14);
    v13 = *(a1 + 8);
  }

  v16 = v13;
  if (v15 != a3)
  {
    v17 = 0;
    do
    {
      v18 = &v15[v17 / 0x18];
      v19 = &v13[v17 / 8];
      if (SHIBYTE(v15[v17 / 0x18].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v19, v18->__r_.__value_.__l.__data_, v18->__r_.__value_.__l.__size_);
      }

      else
      {
        v20 = *&v18->__r_.__value_.__l.__data_;
        v19->__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
        *&v19->__r_.__value_.__l.__data_ = v20;
      }

      v17 += 24;
    }

    while (&v15[v17 / 0x18] != a3);
    v16 = &v13[v17 / 8];
  }

  *(a1 + 8) = v16;
}

size_t **_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_3mps12_GLOBAL__N_130UnreachableFunctionRemovalPass25eraseUnreachableFunctionsENS1_8ModuleOpEEUlNS1_4func6FuncOpEE_SG_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_(size_t **result, mlir::SymbolTable *this)
{
  if (this)
  {
    if (*(*(this + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      v12[5] = v2;
      v12[6] = v3;
      v4 = **result;
      v12[0] = mlir::SymbolTable::getSymbolName(this, this);
      AttrData = mlir::OpaqueAttr::getAttrData(v12);
      v8 = v7;
      v11 = llvm::StringMapImpl::hash(AttrData, v7, v9, v10);
      result = llvm::StringMap<mlir::func::FuncOp,llvm::MallocAllocator>::try_emplace_with_hash<>(v4, AttrData, v8, v11);
      (*result)[1] = this;
    }
  }

  return result;
}

size_t **llvm::StringMap<mlir::func::FuncOp,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, const void *a2, size_t a3, uint64_t a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  i = (*a1 + 8 * v7);
  v9 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v9)
  {
    while (!v9 || v9 == -8)
    {
      v10 = i[1];
      ++i;
      v9 = v10;
    }

    return i;
  }

  buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
  v12 = buffer;
  v13 = (buffer + 2);
  if (a3)
  {
    memcpy(buffer + 2, a2, a3);
  }

  v13[a3] = 0;
  *v12 = a3;
  v12[1] = 0;
  *i = v12;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t *_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_3mps12_GLOBAL__N_130UnreachableFunctionRemovalPass25eraseUnreachableFunctionsENS1_8ModuleOpEEUlNSB_6CallOpEE_SF_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESO_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t *result, uint64_t a2)
{
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CallOp,void>::id)
  {
    v16 = v2;
    v17 = v3;
    v4 = *result;
    v14 = a2;
    SymbolName = mlir::mps::CallOp::getSymbolName(&v14);
    v7 = v6;
    v8 = *v4;
    v11 = llvm::StringMapImpl::hash(SymbolName, v6, v9, v10);
    result = llvm::StringMapImpl::FindKey(v8, SymbolName, v7, v11);
    if (result == -1)
    {
      v12 = *(v8 + 2);
    }

    else
    {
      v12 = result;
    }

    v13 = *v8 + 8 * v12;
    if (v13 != **v4 + 8 * *(*v4 + 2))
    {
      return llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseSetPair<mlir::func::FuncOp>>,mlir::func::FuncOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseSetPair<mlir::func::FuncOp>>::try_emplace<llvm::detail::DenseSetEmpty&>(v4[1], (*v13 + 8), v15);
    }
  }

  return result;
}

void std::deque<mlir::func::FuncOp>::__add_back_capacity(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 >= 0x200;
  v4 = v2 - 512;
  if (v3)
  {
    *(a1 + 32) = v4;
    goto LABEL_4;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 8);
  v9 = v7 - v8;
  v10 = &v6[-*a1];
  if (v7 - v8 < v10)
  {
    if (v6 != v7)
    {
      v24 = operator new(0x1000uLL);
      return;
    }

    v24 = operator new(0x1000uLL);
LABEL_4:
    v5 = *(a1 + 8);
    v24 = *v5;
    *(a1 + 8) = v5 + 1;
    return;
  }

  v11 = v10 >> 2;
  if (v6 == *a1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  v28 = a1;
  if (v12 >> 61)
  {
    goto LABEL_29;
  }

  v13 = 8 * v12;
  v14 = operator new(8 * v12);
  v15 = &v14[v9];
  v24 = v14;
  v25 = &v14[v9];
  v16 = &v14[v13];
  v27 = &v14[v13];
  v17 = operator new(0x1000uLL);
  if (v9 == v13)
  {
    if (v9 >= 1)
    {
      v15 -= ((v9 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
      v25 = v15;
      goto LABEL_21;
    }

    if (v7 == v8)
    {
      v18 = 1;
    }

    else
    {
      v18 = v9 >> 2;
    }

    if (!(v18 >> 61))
    {
      v19 = v17;
      v20 = operator new(8 * v18);
      v15 = &v20[8 * (v18 >> 2)];
      v16 = &v20[8 * v18];
      v24 = v20;
      v25 = v15;
      v27 = v16;
      operator delete(v14);
      v8 = *(a1 + 8);
      v7 = *(a1 + 16);
      v14 = v20;
      v17 = v19;
      goto LABEL_21;
    }

LABEL_29:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

LABEL_21:
  *v15 = v17;
  v21 = v15 + 8;
  v26 = v15 + 8;
  if (v7 != v8)
  {
    do
    {
      v7 -= 8;
      v8 = *(a1 + 8);
    }

    while (v7 != v8);
    v14 = v24;
    v15 = v25;
    v7 = *(a1 + 16);
    v21 = v26;
    v16 = v27;
  }

  v22 = *a1;
  *a1 = v14;
  *(a1 + 8) = v15;
  v24 = v22;
  v25 = v8;
  v23 = *(a1 + 24);
  *(a1 + 16) = v21;
  *(a1 + 24) = v16;
  v26 = v7;
  v27 = v23;
  if (v7 != v8)
  {
    v26 = &v7[(v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8];
  }

  if (v22)
  {
    operator delete(v22);
  }
}

void mlir::mpsx::createGPURegionParallelEncodePass(void *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x308uLL);
  bzero(v4 + 32, 0x2E8uLL);
  *(v4 + 2) = "builtin.module";
  *(v4 + 3) = 14;
  v4[32] = 1;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 10) = 0u;
  *(v4 + 22) = 0;
  *(v4 + 23) = v4 + 200;
  *(v4 + 49) = 4;
  *(v4 + 29) = v4 + 248;
  *(v4 + 61) = 4;
  *(v4 + 35) = 0;
  *(v4 + 36) = 0;
  *(v4 + 37) = 0x1000000000;
  *(v4 + 19) = 0u;
  *(v4 + 20) = 0u;
  *(v4 + 42) = 0;
  *v4 = &unk_1F5B00AD8;
  *&v15 = "The minimum number of operations each region will have in order to create parallel regions.";
  *(&v15 + 1) = 91;
  v13 = 1;
  v14 = &v13;
  mlir::detail::PassOptions::Option<unsigned long long,llvm::cl::parser<unsigned long long>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>((v4 + 344), v4 + 152, "minimum-number-of-ops-per-region", 32, &v15, &v14);
  *(v4 + 43) = &unk_1F5B00B48;
  *(v4 + 68) = &unk_1F5B00BC8;
  *&v15 = "The maximum number of parallel regions to create.";
  *(&v15 + 1) = 49;
  v13 = 2;
  v14 = &v13;
  mlir::detail::PassOptions::Option<unsigned long long,llvm::cl::parser<unsigned long long>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>((v4 + 560), v4 + 152, "maximum-number-of-parallel-regions", 34, &v15, &v14);
  *(v4 + 70) = &unk_1F5B00B48;
  *(v4 + 95) = &unk_1F5B00BC8;
  *v4 = &unk_1F5B00A68;
  *(v4 + 59) = *a1;
  v5 = *(v4 + 67);
  if (v5 && ((*(*v5 + 48))(v5, a1), v7 = a1[1], v6 = a1 + 1, *(v4 + 86) = v7, (v8 = *(v4 + 94)) != 0))
  {
    (*(*v8 + 48))(v8, v6);
    *a2 = v4;
  }

  else
  {
    v9 = std::__throw_bad_function_call[abi:nn200100]();
  }
}

void mlir::mpsx::anonymous namespace::GPURegionParallelEncodePass::~GPURegionParallelEncodePass(mlir::mpsx::_anonymous_namespace_::GPURegionParallelEncodePass *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_1F5B00AD8;
  *(this + 70) = &unk_1F5B00CC8;
  v5 = this + 728;
  v6 = *(this + 94);
  if (v6 == v5)
  {
    (*(*v6 + 32))(v6, a2, a3, a4);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6, a2, a3, a4);
  }

  *(this + 70) = &unk_1F5B3E1D8;
  v7 = *(this + 82);
  if (v7 != *(this + 81))
  {
    free(v7);
  }

  v8 = *(this + 78);
  if (v8 != this + 640)
  {
    free(v8);
  }

  *(this + 43) = &unk_1F5B00CC8;
  v9 = *(this + 67);
  if (v9 == (this + 512))
  {
    (*(*v9 + 32))(v9);
  }

  else if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  *(this + 43) = &unk_1F5B3E1D8;
  v10 = *(this + 55);
  if (v10 != *(this + 54))
  {
    free(v10);
  }

  v11 = *(this + 51);
  if (v11 != this + 424)
  {
    free(v11);
  }

  *this = &unk_1F5B01A70;
  v12 = *(this + 39);
  if (v12)
  {
    *(this + 40) = v12;
    operator delete(v12);
  }

  if (*(this + 73))
  {
    v13 = *(this + 72);
    if (v13)
    {
      v14 = 0;
      do
      {
        v15 = *(*(this + 35) + v14);
        if (v15 != -8 && v15 != 0)
        {
          llvm::deallocate_buffer(v15, (*v15 + 17));
        }

        v14 += 8;
      }

      while (8 * v13 != v14);
    }
  }

  free(*(this + 35));
  v17 = *(this + 29);
  if (v17 != this + 248)
  {
    free(v17);
  }

  v18 = *(this + 23);
  if (v18 != this + 200)
  {
    free(v18);
  }

  v19 = *(this + 16);
  if (v19)
  {
    *(this + 17) = v19;
    operator delete(v19);
  }

  if (*(this + 120) == 1)
  {
    v20 = *(this + 8);
    if (v20 != *(this + 7))
    {
      free(v20);
    }
  }
}

{

  operator delete(v4);
}

void *mlir::mpsx::MPSXGPURegionParallelEncodeBase<mlir::mpsx::anonymous namespace::GPURegionParallelEncodePass>::getDependentDialects(int a1, uint64_t ***a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5AFAE60;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mps::MPSDialect,void>::id, "mps", 3uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFAEA8;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mpsx::MPSXDialect,void>::id, "mpsx", 4uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFB318;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mps_spi::MPSSPIDialect,void>::id, "mps_spi", 7uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFCC40;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::placement::PlacementDialect,void>::id, "placement", 9uLL, v4);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void mlir::mpsx::anonymous namespace::GPURegionParallelEncodePass::runOnOperation(mlir::mpsx::_anonymous_namespace_::GPURegionParallelEncodePass *this)
{
  v64[72] = *MEMORY[0x1E69E9840];
  v49 = v51;
  v50 = 0x600000000;
  v2 = *(this + 5);
  v62 = this;
  v63 = &v49;
  v59 = &v62;
  mlir::detail::walk<mlir::ForwardIterator>((v2 & 0xFFFFFFFFFFFFFFF8), _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4mpsx12_GLOBAL__N_127GPURegionParallelEncodePass14runOnOperationEvE3__0NSB_5GPUOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v59, 1);
  if (v50)
  {
    v3 = v49;
    while (1)
    {
      v4 = *v3;
      v48 = *v3;
      if (*(this + 86) >= 2uLL)
      {
        v5 = *(((v4 + 16 * ((*(v4 + 11) >> 23) & 1) + ((*(v4 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v4 + 10) + 8);
        v6 = v5 - 8;
        if (!v5)
        {
          v6 = 0;
        }

        v7 = *(v6 + 40);
        v8 = v6 + 32;
        if (v7 == v8)
        {
          v9 = 0;
        }

        else
        {
          v9 = 0;
          do
          {
            ++v9;
            v7 = *(v7 + 8);
          }

          while (v7 != v8);
        }

        if (v9 >= *(this + 59))
        {
          break;
        }
      }

      if (++v3 == (v49 + 8 * v50))
      {
        goto LABEL_90;
      }
    }

    if (v4)
    {
      mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v4);
    }

    mlir::mps::ConstantRuntimeAnalysis::ConstantRuntimeAnalysis(v46, v4);
    v10 = *(((v48 + 16 * ((*(v48 + 11) >> 23) & 1) + ((*(v48 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v48 + 10) + 8);
    if (v10)
    {
      v11 = (v10 - 8);
    }

    else
    {
      v11 = 0;
    }

    mlir::Block::getTerminator(v11);
    v45 = v12;
    v62 = v64;
    v63 = 0x800000000;
    v59 = &v45;
    v60 = v46;
    v61[0] = &v48;
    v61[1] = &v62;
    if (!v63)
    {
      v39 = v62;
      goto LABEL_87;
    }

    v59 = v61;
    v60 = 0x800000000;
    v13 = v62;
    v14 = 72 * v63;
    while (1)
    {
      v16 = *v13;
      if (!*v13)
      {
        if (*(this + 59) <= v13[4] >> 1)
        {
          v16 = 0;
          v17 = v60;
          if (v60)
          {
            goto LABEL_37;
          }

          goto LABEL_29;
        }

        v16 = 1;
        *v13 = 1;
      }

      v17 = v60;
      if (v60)
      {
        goto LABEL_37;
      }

LABEL_29:
      LODWORD(v55) = v16;
      v56 = v58;
      v57 = 0x600000000;
      if (HIDWORD(v60))
      {
        v18 = 0;
      }

      else
      {
        v18 = v60;
        v16 = v55;
      }

      v19 = v59 + 72 * v18;
      *v19 = v16;
      *(v19 + 2) = 0x600000000;
      *(v19 + 1) = v19 + 24;
      v20 = (v19 + 8);
      if (v57)
      {
        llvm::SmallVectorImpl<unsigned long long>::operator=(v20, &v56);
      }

      v17 = v60 + 1;
      LODWORD(v60) = v60 + 1;
      if (v56 != v58)
      {
        free(v56);
        v17 = v60;
      }

      v16 = *v13;
LABEL_37:
      v21 = v59;
      v22 = (v59 + 72 * v17);
      if (*(v22 - 18) == v16)
      {
        v23 = *(v13 + 1);
        v24 = v13[4];
        v25 = *(v22 - 14);
        if (v25 + v24 > *(v22 - 13))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod((v22 - 16), v22 - 12, v25 + v24, 8);
          LODWORD(v25) = *(v22 - 14);
        }

        if (v24)
        {
          memcpy((*(v22 - 8) + 8 * v25), v23, 8 * v24);
          LODWORD(v25) = *(v22 - 14);
        }

        *(v22 - 14) = v25 + v24;
        goto LABEL_24;
      }

      v26 = v13;
      if (v17 >= HIDWORD(v60))
      {
        if (v59 <= v13 && v22 > v13)
        {
          v31 = v13 - v59;
          v21 = v59;
          v26 = (v59 + v31);
        }

        else
        {
          v21 = v59;
          v26 = v13;
        }
      }

      v27 = &v21[72 * v60];
      *v27 = *v26;
      v28 = v27 + 3;
      v27[1] = v27 + 3;
      v27[2] = 0x600000000;
      v29 = *(v26 + 4);
      if (v27 != v26 && v29 != 0)
      {
        if (v29 >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod((v27 + 1), v27 + 3, *(v26 + 4), 8);
          v15 = *(v26 + 4);
          if (v15)
          {
            v28 = v27[1];
LABEL_21:
            memcpy(v28, v26[1], 8 * v15);
          }

          *(v27 + 4) = v29;
          goto LABEL_23;
        }

        v15 = *(v26 + 4);
        goto LABEL_21;
      }

LABEL_23:
      LODWORD(v60) = v60 + 1;
LABEL_24:
      v13 += 18;
      v14 -= 72;
      if (!v14)
      {
        if (v60 == 1)
        {
          v32 = v59;
          if (*v59 == 1)
          {
            v33 = 1;
            goto LABEL_74;
          }
        }

        memset(&v44[2], 0, 24);
        v44[0] = &unk_1F5AFAFF0;
        v44[1] = mlir::Attribute::getContext((v48 + 24));
        if (v60)
        {
          if (*v59)
          {
          }

          v34 = *(v59 + 4);
          v35 = *(this + 86);
          v36 = v34 / v35;
          v37 = *(this + 59);
          if (v34 / v35 < v37)
          {
            v35 = v34 / v37;
            v36 = v34 / (v34 / v37);
          }

          if (v34 % v35)
          {
            v38 = v36 + 1;
          }

          else
          {
            v38 = v36;
          }
        }

        v52 = &v54;
        v53 = 0x100000000;
        v55 = &v48;
        v56 = v46;
        v57 = &v52;
        if (v53)
        {
        }

        if (v52 != &v54)
        {
          free(v52);
        }

        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
        v32 = v59;
        v33 = v60;
        if (v60)
        {
LABEL_74:
          v40 = &v32[72 * v33 - 64];
          v41 = -72 * v33;
          do
          {
            if (v40 + 2 != *v40)
            {
              free(*v40);
            }

            v40 -= 9;
            v41 += 72;
          }

          while (v41);
          v32 = v59;
        }

        if (v32 != v61)
        {
          free(v32);
        }

        v39 = v62;
        if (v63)
        {
          v42 = (v62 + 72 * v63 - 64);
          v43 = -72 * v63;
          do
          {
            if (v42 + 2 != *v42)
            {
              free(*v42);
            }

            v42 -= 9;
            v43 += 72;
          }

          while (v43);
          v39 = v62;
        }

LABEL_87:
        if (v39 != v64)
        {
          free(v39);
        }

        llvm::deallocate_buffer(v46[0], (8 * v47));
      }
    }
  }

LABEL_90:
  if (v49 != v51)
  {
    free(v49);
  }
}

uint64_t mlir::mpsx::MPSXGPURegionParallelEncodeBase<mlir::mpsx::anonymous namespace::GPURegionParallelEncodePass>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x308uLL);
  v5 = *(a1 + 8);
  *(v4 + 1) = *(a1 + 16);
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 1) = v5;
  v4[40] = 0;
  v4[120] = 0;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 10) = 0u;
  *(v4 + 22) = 0;
  *(v4 + 23) = v4 + 200;
  *(v4 + 24) = 0x400000000;
  *(v4 + 29) = v4 + 248;
  *(v4 + 30) = 0x400000000;
  *(v4 + 35) = 0;
  *(v4 + 36) = 0;
  *(v4 + 74) = 0;
  *(v4 + 75) = 16;
  *(v4 + 19) = 0u;
  *(v4 + 20) = 0u;
  *(v4 + 42) = 0;
  *v4 = &unk_1F5B00AD8;
  *&v9 = "The minimum number of operations each region will have in order to create parallel regions.";
  *(&v9 + 1) = 91;
  v7 = 1;
  v8 = &v7;
  mlir::detail::PassOptions::Option<unsigned long long,llvm::cl::parser<unsigned long long>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>((v4 + 344), v4 + 152, "minimum-number-of-ops-per-region", 32, &v9, &v8);
  *(v4 + 43) = &unk_1F5B00B48;
  *(v4 + 68) = &unk_1F5B00BC8;
  *&v9 = "The maximum number of parallel regions to create.";
  *(&v9 + 1) = 49;
  v7 = 2;
  v8 = &v7;
  result = mlir::detail::PassOptions::Option<unsigned long long,llvm::cl::parser<unsigned long long>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>((v4 + 560), v4 + 152, "maximum-number-of-parallel-regions", 34, &v9, &v8);
  *(v4 + 70) = &unk_1F5B00B48;
  *(v4 + 95) = &unk_1F5B00BC8;
  *v4 = &unk_1F5B00A68;
  *a2 = v4;
  return result;
}

uint64_t mlir::detail::PassOptions::Option<unsigned long long,llvm::cl::parser<unsigned long long>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _OWORD *a5, int **a6)
{
  v16 = *MEMORY[0x1E69E9840];
  v10[0] = a3;
  v10[1] = a4;
  v13 = a2;
  v14 = 0;
  v8 = llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<int>>(a1, v10, &v13, a5, a6);
  *(v8 + 208) = 0;
  *v8 = &unk_1F5B00C08;
  *(v8 + 200) = &unk_1F5B00C88;
  v13 = (v8 + 200);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((a2 + 160), &v13);
  v11[0] = &unk_1F5B00D98;
  v11[1] = a1;
  v15 = &v13;
  v12 = v11;
  v13 = &unk_1F5B00D98;
  v14 = a1;
  std::__function::__value_func<void ()(unsigned long long const&)>::swap[abi:nn200100](&v13, a1 + 168);
  if (v15 == &v13)
  {
    (*(*v15 + 4))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 5))();
  }

  if (v12 == v11)
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))();
  }

  return a1;
}

uint64_t llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::handleOccurrence(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = 0;
  result = llvm::cl::parser<unsigned long long>::parse(a1 + 160, a1, a3, a4, a5, a6, &v11);
  if ((result & 1) == 0)
  {
    v9 = result;
    *(a1 + 128) = v11;
    *(a1 + 12) = a2;
    v10 = *(a1 + 192);
    if (v10)
    {
      (*(*v10 + 48))(v10, &v11);
      return v9;
    }

    else
    {
      std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::getValueExpectedFlagDefault();
    }
  }

  return result;
}

void *mlir::Pass::Option<unsigned long long,llvm::cl::parser<unsigned long long>>::~Option(void *a1)
{
  *a1 = &unk_1F5B00CC8;
  v2 = a1 + 21;
  v3 = a1[24];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_1F5B3E1D8;
  v4 = a1[12];
  if (v4 != a1[11])
  {
    free(v4);
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void mlir::Pass::Option<unsigned long long,llvm::cl::parser<unsigned long long>>::~Option(char *__p)
{
  *__p = &unk_1F5B00CC8;
  v2 = __p + 168;
  v3 = *(__p + 24);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *__p = &unk_1F5B3E1D8;
  v4 = *(__p + 12);
  if (v4 != *(__p + 11))
  {
    free(v4);
  }

  v5 = *(__p + 8);
  if (v5 != __p + 80)
  {
    free(v5);
  }

  operator delete(__p);
}

void llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::printOptionValue(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 || *(result + 152) != 1 || *(result + 144) != *(result + 128))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(result + 128);
    v6 = *(result + 144);
    v8 = *(result + 152);
    v7[0] = &unk_1F5B00D30;
    v7[1] = v6;
    llvm::cl::parser<unsigned long>::printOptionDiff((result + 160), result, v5, v7, a2);
  }
}

uint64_t llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::setDefault(uint64_t result)
{
  if (*(result + 152) == 1)
  {
    *(result + 128) = *(result + 144);
  }

  else
  {
    *(result + 128) = 0;
  }

  return result;
}

llvm::raw_ostream *mlir::detail::PassOptions::Option<unsigned long long,llvm::cl::parser<unsigned long long>>::print(void *a1, llvm::raw_ostream *this)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(this + 4);
  if (v5 <= *(this + 3) - v6)
  {
    if (v5)
    {
      v8 = v5;
      memcpy(v6, v4, v5);
      v6 = (*(this + 4) + v8);
      *(this + 4) = v6;
    }

    v7 = this;
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
  }

  if (v6 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 61);
  }

  else
  {
    *(v7 + 4) = v6 + 1;
    *v6 = 61;
  }

  v9 = a1[16];

  return llvm::raw_ostream::operator<<(this, v9);
}

uint64_t mlir::detail::PassOptions::Option<unsigned long long,llvm::cl::parser<unsigned long long>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result + 128) = *(a2 - 72);
  *(result + 208) = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::Pass::Option<unsigned long long,llvm::cl::parser<unsigned long long>>::~Option(uint64_t a1)
{
  *(a1 - 200) = &unk_1F5B00CC8;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(a1 - 200) = &unk_1F5B3E1D8;
  v4 = *(a1 - 104);
  if (v4 != *(a1 - 112))
  {
    free(v4);
  }

  v5 = *(a1 - 136);
  if (v5 != (a1 - 120))
  {

    free(v5);
  }
}

{
  v2 = (a1 - 200);
  *(a1 - 200) = &unk_1F5B00CC8;
  v3 = a1 - 32;
  v4 = *(a1 - 8);
  if (v4 == v3)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  *(a1 - 200) = &unk_1F5B3E1D8;
  v5 = *(a1 - 104);
  if (v5 != *(a1 - 112))
  {
    free(v5);
  }

  v6 = *(a1 - 136);
  if (v6 != (a1 - 120))
  {
    free(v6);
  }

  operator delete(v2);
}

llvm::raw_ostream *non-virtual thunk tomlir::detail::PassOptions::Option<unsigned long long,llvm::cl::parser<unsigned long long>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = *(a1 - 184);
  v5 = *(a1 - 176);
  v6 = *(this + 4);
  if (v5 <= *(this + 3) - v6)
  {
    if (v5)
    {
      v8 = v5;
      memcpy(v6, v4, v5);
      v6 = (*(this + 4) + v8);
      *(this + 4) = v6;
    }

    v7 = this;
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
  }

  if (v6 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 61);
  }

  else
  {
    *(v7 + 4) = v6 + 1;
    *v6 = 61;
  }

  v9 = *(a1 - 72);

  return llvm::raw_ostream::operator<<(this, v9);
}

uint64_t non-virtual thunk tomlir::detail::PassOptions::Option<unsigned long long,llvm::cl::parser<unsigned long long>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result - 72) = *(a2 - 72);
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<int>>(uint64_t a1, uint64_t *a2, char **a3, _OWORD *a4, int **a5)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v10 = (a1 + 80);
  *(a1 + 64) = a1 + 80;
  v11 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v16 = *(a1 + 72);
  if (v16 >= *(a1 + 76))
  {
    v19 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v10, v16 + 1, 8);
    GeneralCategory = v19;
    LODWORD(v16) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v16) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 136) = &unk_1F5B00D30;
  *a1 = &unk_1F5B00CC8;
  *(a1 + 160) = &unk_1F5B3E500;
  *(a1 + 168) = &unk_1F5B00D50;
  *(a1 + 192) = a1 + 168;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1], v13, v14, v15);
  llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(a3, a1);
  *(a1 + 32) = *a4;
  v17 = **a5;
  *(a1 + 128) = v17;
  *(a1 + 152) = 1;
  *(a1 + 144) = v17;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void *mlir::detail::PassOptions::Option<unsigned long long,llvm::cl::parser<unsigned long long>>::~Option(void *a1)
{
  *a1 = &unk_1F5B00CC8;
  v2 = a1 + 21;
  v3 = a1[24];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_1F5B3E1D8;
  v4 = a1[12];
  if (v4 != a1[11])
  {
    free(v4);
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void mlir::detail::PassOptions::Option<unsigned long long,llvm::cl::parser<unsigned long long>>::~Option(char *__p)
{
  *__p = &unk_1F5B00CC8;
  v2 = __p + 168;
  v3 = *(__p + 24);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *__p = &unk_1F5B3E1D8;
  v4 = *(__p + 12);
  if (v4 != *(__p + 11))
  {
    free(v4);
  }

  v5 = *(__p + 8);
  if (v5 != __p + 80)
  {
    free(v5);
  }

  operator delete(__p);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<unsigned long long,llvm::cl::parser<unsigned long long>>::~Option(uint64_t a1)
{
  *(a1 - 200) = &unk_1F5B00CC8;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(a1 - 200) = &unk_1F5B3E1D8;
  v4 = *(a1 - 104);
  if (v4 != *(a1 - 112))
  {
    free(v4);
  }

  v5 = *(a1 - 136);
  if (v5 != (a1 - 120))
  {

    free(v5);
  }
}

{
  mlir::detail::PassOptions::Option<unsigned long long,llvm::cl::parser<unsigned long long>>::~Option((a1 - 200));
}

void *llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::~opt(void *a1)
{
  *a1 = &unk_1F5B00CC8;
  v2 = a1 + 21;
  v3 = a1[24];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_1F5B3E1D8;
  v4 = a1[12];
  if (v4 != a1[11])
  {
    free(v4);
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::~opt(char *__p)
{
  *__p = &unk_1F5B00CC8;
  v2 = __p + 168;
  v3 = *(__p + 24);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *__p = &unk_1F5B3E1D8;
  v4 = *(__p + 12);
  if (v4 != *(__p + 11))
  {
    free(v4);
  }

  v5 = *(__p + 8);
  if (v5 != __p + 80)
  {
    free(v5);
  }

  operator delete(__p);
}

void *std::__function::__func<llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::{lambda(unsigned long long const&)#1},std::allocator<llvm::cl::opt<unsigned long long,false,llvm::cl::parser<unsigned long long>>::{lambda(unsigned long long const&)#1}>,void ()(unsigned long long const&)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B00D50;
  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned long long const&)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v7);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v7[0] + 24))(v7, v5);
        result = (*(v7[0] + 32))(v7);
        goto LABEL_10;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
LABEL_10:
    *(v5 + 24) = v5;
  }

  return result;
}

void *_ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIyN4llvm2cl6parserIyEEEC1IJNS7_4descENS7_11initializerIiEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKyEE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B00D98;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIyN4llvm2cl6parserIyEEEC1IJNS7_4descENS7_11initializerIiEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKyEE7__cloneEPNS0_6__baseISS_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B00D98;
  a2[1] = v2;
  return result;
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4mpsx12_GLOBAL__N_127GPURegionParallelEncodePass14runOnOperationEvE3__0NSB_5GPUOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t **result, uint64_t a2)
{
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id)
  {
    v2 = *result;
    v3 = **result;
    ParentOp = *(a2 + 16);
    if (ParentOp)
    {
      v5 = a2;
      ParentOp = mlir::Block::getParentOp(ParentOp);
      a2 = v5;
    }

    if (ParentOp == (*(v3 + 40) & 0xFFFFFFFFFFFFFFF8))
    {
      v6 = v2[1];
      v7 = *(v6 + 8);
      if (v7 >= *(v6 + 12))
      {
        v8 = a2;
        v9 = v6;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (v6 + 16), v7 + 1, 8);
        v6 = v9;
        a2 = v8;
        LODWORD(v7) = *(v9 + 8);
      }

      *(*v6 + 8 * v7) = a2;
      ++*(v6 + 8);
    }
  }
}

void mlir::mpsx::anonymous namespace::anonymous namespace::outlineRegion(uint64_t a1, mlir::SymbolTable *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v56[15] = *MEMORY[0x1E69E9840];
  v41 = a6;
  v42 = a2;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v54 = v56;
  v55 = 0xA00000000;
  if (!a4)
  {
    goto LABEL_32;
  }

  v10 = a3;
  v11 = &a3[a4];
  while (1)
  {
    v12 = *v10;
    v52 = 0u;
    v53 = 0u;
    __p = 0u;
    std::deque<mlir::func::FuncOp>::__add_back_capacity(&__p);
    v13 = *(&v53 + 1);
    *(*(*(&__p + 1) + (((v53 + *(&v53 + 1)) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v53 + *(&v53 + 1)) & 0x1FF)) = v12;
    v14 = v13 + 1;
    if (v13 != -1)
    {
      break;
    }

LABEL_5:
    v15 = *(&__p + 1);
    v16 = v52;
    *(&v53 + 1) = 0;
    v17 = (v52 - *(&__p + 1)) >> 3;
    if (v17 >= 3)
    {
      do
      {
        operator delete(*v15);
        v16 = v52;
        v15 = (*(&__p + 1) + 8);
        *(&__p + 1) = v15;
        v17 = (v52 - v15) >> 3;
      }

      while (v17 > 2);
    }

    if (v17 == 1)
    {
      v18 = 256;
    }

    else
    {
      if (v17 != 2)
      {
        goto LABEL_24;
      }

      v18 = 512;
    }

    *&v53 = v18;
LABEL_24:
    if (v15 != v16)
    {
      do
      {
        v24 = *v15++;
        operator delete(v24);
      }

      while (v15 != v16);
      if (v52 != *(&__p + 1))
      {
        *&v52 = v52 + ((*(&__p + 1) - v52 + 7) & 0xFFFFFFFFFFFFFFF8);
      }
    }

    if (__p)
    {
      operator delete(__p);
    }

    if (++v10 == v11)
    {
      if (HIDWORD(v55) < v39)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v54, v56, v39, 8);
      }

LABEL_32:
      *&__p = &v38;
      *(&__p + 1) = &v54;
      *&__p = &v52;
      *(&__p + 1) = 0xA00000000;
      v50[0] = 1;
      v50[1] = -4096;
      v50[2] = -4096;
      v50[3] = -4096;
      v50[4] = -4096;
      v25 = v54;
      v26 = v55;
      if (v55)
      {
        v27 = 8 * v55;
        do
        {
          v28 = *v25++;
          v47 = v50;
          v48 = &v38;
          v49[0] = &v42;
          v49[1] = &__p;
          v27 -= 8;
        }

        while (v27);
        v25 = v54;
        v26 = v55;
      }

      v46[4] = -4096;
      v47 = v49;
      v48 = 0xA00000000;
      v46[0] = 1;
      v46[1] = -4096;
      v46[2] = -4096;
      v46[3] = -4096;
      if (!v26)
      {
        *v43 = v45;
        *v44 = 0x600000000;
        v32 = a1;
        goto LABEL_52;
      }

      v29 = 8 * v26;
      do
      {
        v30 = *v25;
        {
          v37[0] = v46;
          v37[1] = &v38;
          v37[2] = &v42;
          v37[3] = &v47;
        }

        ++v25;
        v29 -= 8;
      }

      while (v29);
      v31 = v55;
      *v43 = v45;
      *v44 = 0x600000000;
      if (v55 < 7)
      {
        v26 = 0;
        v32 = a1;
        if (!v55)
        {
          goto LABEL_52;
        }
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v43, v45, v55, 8);
        v31 = v55;
        v26 = v44[0];
        v32 = a1;
        if (!v55)
        {
          goto LABEL_52;
        }
      }

      v33 = v54;
      v34 = 8 * v31;
      do
      {
        v35 = *(*v33 + 24);
        if (v26 >= v44[1])
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v43, v45, v26 + 1, 8);
          v26 = v44[0];
        }

        *(*v43 + 8 * v26) = v35;
        v26 = ++v44[0];
        ++v33;
        v34 -= 8;
      }

      while (v34);
LABEL_52:
      mlir::FusedLoc::get(*v43, v26, 0, *(v32 + 8));
    }
  }

  while (1)
  {
    v19 = *(*(*(&__p + 1) + ((v53 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v53 & 0x1FF));
    v37[0] = v19;
    *(&v53 + 1) = v14 - 1;
    *&v53 = v53 + 1;
    if (v53 >= 0x400)
    {
      operator delete(**(&__p + 1));
      *(&__p + 1) += 8;
      *&v53 = v53 - 512;
      v19 = v37[0];
    }

    if (v40)
    {
      v20 = ((v19 >> 4) ^ (v19 >> 9)) & (v40 - 1);
      v21 = *(v38 + 8 * v20);
      if (v21 == v19)
      {
LABEL_16:
        if (v20 != v40)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v22 = 1;
        while (v21 != -4096)
        {
          v23 = v20 + v22++;
          v20 = v23 & (v40 - 1);
          v21 = *(v38 + 8 * v20);
          if (v21 == v19)
          {
            goto LABEL_16;
          }
        }
      }
    }

    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v38, v37, &v47);
    v47 = &v42;
    v48 = a5;
    v49[0] = &__p;
LABEL_11:
    v14 = *(&v53 + 1);
    if (!*(&v53 + 1))
    {
      goto LABEL_5;
    }
  }
}

void sub_1DFD20A10(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, llvm *a33, uint64_t a34, int a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a40 != v68)
  {
    free(a40);
  }

  if (a48 != v67)
  {
    free(a48);
  }

  if (a56 != a14)
  {
    free(a56);
  }

  if ((a64 & 1) == 0)
  {
    llvm::deallocate_buffer(a65, (8 * a66));
  }

  if (a67 != a11)
  {
    free(a67);
  }

  if ((STACK[0x228] & 1) == 0)
  {
    llvm::deallocate_buffer(STACK[0x230], (8 * LODWORD(STACK[0x238])));
  }

  if (STACK[0x250] != a12)
  {
    free(STACK[0x250]);
  }

  v70 = *(v69 - 256);
  if (v70 != a15)
  {
    free(v70);
  }

  llvm::deallocate_buffer(a33, (8 * a35));
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::mpsx::anonymous namespace::GPURegionParallelEncodePass::convert(mlir::mpsx::GPUOp,BOOL *)::$_0>(uint64_t a1, uint64_t a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  {
    ParentOp = *(a2 + 16);
    if (ParentOp)
    {
      ParentOp = mlir::Block::getParentOp(ParentOp);
    }

    if (ParentOp == **(a1 + 16))
    {
      if (mlir::OpInterface<mlir::MPSRuntimeDynamicEncodeOpInterface,mlir::detail::MPSRuntimeDynamicEncodeOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
      {
        v20 = a2;
        InterfaceFor = mlir::OpInterface<mlir::MPSRuntimeDynamicEncodeOpInterface,mlir::detail::MPSRuntimeDynamicEncodeOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
        if (a2)
        {
          EntrySuccessorOperands = mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v20, *(a1 + 8));
LABEL_11:
          v6 = *(a1 + 24);
          v7 = *(v6 + 8);
          if (!v7)
          {
            LODWORD(v20) = EntrySuccessorOperands;
            InterfaceFor = v23;
            v22 = 0x600000000;
            if (*(v6 + 12))
            {
              v8 = 0;
              v9 = EntrySuccessorOperands;
            }

            else
            {
              v8 = *(v6 + 8);
              v9 = v20;
            }

            v10 = *v6 + 72 * v8;
            *v10 = v9;
            *(v10 + 16) = 0x600000000;
            *(v10 + 8) = v10 + 24;
            v11 = v10 + 8;
            if (v22)
            {
              llvm::SmallVectorImpl<unsigned long long>::operator=(v11, &InterfaceFor);
            }

            ++*(v6 + 8);
            if (InterfaceFor != v23)
            {
              free(InterfaceFor);
            }

            v6 = *(a1 + 24);
            v7 = *(v6 + 8);
          }

          v12 = *v6;
          v13 = *v6 + 72 * v7;
          if (*(v13 - 72) == EntrySuccessorOperands)
          {
            v14 = *(v13 - 56);
            if (v14 >= *(v13 - 52))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(v13 - 64, (v13 - 48), v14 + 1, 8);
              LODWORD(v14) = *(v13 - 56);
            }

            *(*(v13 - 64) + 8 * v14) = a2;
            ++*(v13 - 56);
          }

          else
          {
            v15 = v7;
            LODWORD(v20) = EntrySuccessorOperands;
            v16 = &v20;
            InterfaceFor = v23;
            v23[0] = a2;
            v22 = 0x600000001;
            if (v15 >= *(v6 + 12))
            {
              if (v12 <= &v20 && v13 > &v20)
              {
                v19 = &v20 - v12;
                v12 = *v6;
                v16 = &v19[*v6];
              }

              else
              {
                v12 = *v6;
                v16 = &v20;
              }
            }

            v17 = v12 + 72 * *(v6 + 8);
            *v17 = *v16;
            *(v17 + 16) = 0x600000000;
            *(v17 + 8) = v17 + 24;
            v18 = v17 + 8;
            if (*(v16 + 4))
            {
              llvm::SmallVectorImpl<unsigned long long>::operator=(v18, v16 + 1);
            }

            ++*(v6 + 8);
            if (InterfaceFor != v23)
            {
              free(InterfaceFor);
            }
          }

          return;
        }
      }

      else
      {
        v20 = 0;
        InterfaceFor = 0;
      }

      EntrySuccessorOperands = 1;
      goto LABEL_11;
    }
  }
}

BOOL mlir::mpsx::anonymous namespace::anonymous namespace::shouldDuplicateOp(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*(a2 + 36))
  {
    {
      mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    }

    if (((*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
    {
      v7 = *(a2 + 36);
      if (v7)
      {
        v8 = a2 - 16;
      }

      else
      {
        v8 = 0;
      }

      if (!v7)
      {
        return 1;
      }

      v9 = 0;
      while (1)
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, v9);
        if (!mlir::mps::ConstantRuntimeAnalysis::isConstant(a1, NextResultAtOffset))
        {
          break;
        }

        if (v7 == ++v9)
        {
          return 1;
        }
      }
    }
  }

  v4 = *(*(a2 + 48) + 16);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::VariableFromTensorOp,void>::id)
  {
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::mpsx::VarHandleOp,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::mps::ReadVariableOp,void>::id)
  {
    return 1;
  }

  if (v4 != &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(a2 + 72) + 24));
  if (*(*ElementTypeOrSelf + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 1;
  }

  return mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf) != 4;
}

void llvm::SmallVectorTemplateBase<mlir::mpsx::anonymous namespace::anonymous namespace::RegionInfo,false>::grow(uint64_t *a1, unint64_t a2)
{
  v15 = 0;
  v3 = a1 + 2;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, a2, 72, &v15);
  v5 = *a1;
  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = 0;
    v8 = &v5[9 * v6];
    do
    {
      v9 = &v4[v7 * 8];
      v10 = &v5[v7];
      *v9 = v5[v7];
      *(v9 + 2) = 0x600000000;
      *(v9 + 1) = &v4[v7 * 8 + 24];
      if (LODWORD(v5[v7 + 2]))
      {
        llvm::SmallVectorImpl<unsigned long long>::operator=(&v4[v7 * 8 + 8], v10 + 1);
      }

      v7 += 9;
    }

    while (v10 + 9 != v8);
    v5 = *a1;
    v11 = *(a1 + 2);
    if (v11)
    {
      v12 = &v5[9 * v11 - 8];
      v13 = -72 * v11;
      do
      {
        if (v12 + 2 != *v12)
        {
          free(*v12);
        }

        v12 -= 9;
        v13 += 72;
      }

      while (v13);
      v5 = *a1;
    }
  }

  v14 = v15;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 3) = v14;
}

char *mlir::OpBuilder::create<mlir::mpsx::GPUOp,std::string &,mlir::IRMapping &,llvm::SmallVector<mlir::Value,10u> &,llvm::SmallVector<mlir::Type,6u> &,llvm::SmallVector<mlir::Value,10u> &,llvm::SmallVector<mlir::Type,6u> &,llvm::SmallVector<mlir::Operation *,10u> &,llvm::ArrayRef<mlir::NamedAttribute>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t ***a3, mlir::IRMapping *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v33[5] = *MEMORY[0x1E69E9840];
  v28 = a2;
  Context = mlir::Attribute::getContext(&v28);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::GPUOp,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(v31, v33, v32);
  }

  mlir::OperationState::OperationState(v31, a2, v19);
  v21 = *(a3 + 23);
  v22 = a3[1];
  if (v21 < 0)
  {
    a3 = *a3;
  }

  if (v21 >= 0)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  mlir::ValueRange::ValueRange(v33, *a5, *(a5 + 8));
  mlir::ValueRange::ValueRange(v32, *a6, *(a6 + 8));
  mlir::ValueRange::ValueRange(v30, *a7, *(a7 + 8));
  mlir::ValueRange::ValueRange(v29, *a8, *(a8 + 8));
  mlir::mpsx::CPUOp::build(a1, v31, a3, v23, a4, v33[0], v33[1], v24, v32[0], v32[1], v30[0], v30[1], v29[0], v29[1], *a9, *(a9 + 8), *a10, *(a10 + 8));
  v25 = mlir::OpBuilder::create(a1, v31);
  if (*(*(v25 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  mlir::OperationState::~OperationState(v31);
  return v26;
}

char *mlir::OpBuilder::create<mlir::placement::RegionCall,mlir::mpsx::GPUOp &,mlir::placement::RegionType,llvm::SmallVector<mlir::Value,10u> &>(mlir::MLIRContext **a1, uint64_t a2, mlir::SymbolRefAttr **a3, unsigned int *a4, uint64_t a5)
{
  v21[5] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::placement::RegionCall,mlir::Operation *&,mlir::placement::RegionType,mlir::ValueRange &>(v20, v21, v19);
  }

  mlir::OperationState::OperationState(v20, a2, v11);
  v13 = *a3;
  v14 = *a4;
  mlir::ValueRange::ValueRange(v21, *a5, *(a5 + 8));
  mlir::placement::RegionCall::build(a1, v20, v13, v14, v21[0], v21[1]);
  v15 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v16;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::mpsx::anonymous namespace::anonymous namespace::outlineRegion(mlir::RewriterBase &,mlir::mpsx::GPUOp,llvm::ArrayRef<mlir::Operation *>,mlir::mps::ConstantRuntimeAnalysis &,unsigned long long,BOOL,BOOL)::$_1>(uint64_t *result, uint64_t a2)
{
  v2 = *(*result + 16);
  if (v2)
  {
    v3 = **result;
    v4 = (v2 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v5 = *(v3 + 8 * v4);
    if (v5 == a2)
    {
LABEL_3:
      if (v4 != v2)
      {
        v6 = result[1];
        v7 = *(v6 + 8);
        if (v7 >= *(v6 + 12))
        {
          v10 = a2;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (v6 + 16), v7 + 1, 8);
          a2 = v10;
          LODWORD(v7) = *(v6 + 8);
        }

        *(*v6 + 8 * v7) = a2;
        ++*(v6 + 8);
      }
    }

    else
    {
      v8 = 1;
      while (v5 != -4096)
      {
        v9 = v4 + v8++;
        v4 = v9 & (v2 - 1);
        v5 = *(v3 + 8 * v4);
        if (v5 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }
}

mlir::Block *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::mpsx::anonymous namespace::anonymous namespace::outlineRegion(mlir::RewriterBase &,mlir::mpsx::GPUOp,llvm::ArrayRef<mlir::Operation *>,mlir::mps::ConstantRuntimeAnalysis &,unsigned long long,BOOL,BOOL)::$_3>(mlir::Block *result, uint64_t a2)
{
  v2 = *(a2 + 36);
  v3 = (a2 - 16);
  if (!v2)
  {
    v3 = 0;
  }

  v33 = v3;
  if (v2)
  {
    v4 = result;
    v5 = 0;
    while (1)
    {
      result = mlir::detail::OpResultImpl::getNextResultAtOffset(v33, v5);
      v34 = result;
      v6 = *result;
      if (*result)
      {
        break;
      }

LABEL_5:
      if (++v5 == v2)
      {
        return result;
      }
    }

    while (1)
    {
      v8 = *v4;
      v9 = (*v4 + 2);
      v10 = **v4;
      if (v10)
      {
        v11 = 4;
      }

      else
      {
        v9 = *(v8 + 1);
        v11 = v8[4];
        if (!v11)
        {
          v12 = 0;
          v13 = 0;
LABEL_14:
          v7 = (v9 + 8 * v13);
          goto LABEL_19;
        }
      }

      v14 = 0x9DDFEA08EB382D69 * ((8 * v34 - 0xAE502812AA7333) ^ HIDWORD(v34));
      v15 = 0x9DDFEA08EB382D69 * (HIDWORD(v34) ^ (v14 >> 47) ^ v14);
      LODWORD(v14) = -348639895 * ((v15 >> 47) ^ v15);
      v16 = v11 - 1;
      v17 = v14 & (v11 - 1);
      v18 = *(v9 + 8 * v17);
      if (v34 != v18)
      {
        v29 = 1;
        while (v18 != -4096)
        {
          v30 = v17 + v29++;
          v17 = v30 & v16;
          v18 = *(v9 + 8 * v17);
          if (v34 == v18)
          {
            goto LABEL_17;
          }
        }

        if (v10)
        {
          v7 = v8 + 10;
LABEL_9:
          if (v7 != v8 + 10)
          {
            goto LABEL_10;
          }

          goto LABEL_20;
        }

        v9 = *(v8 + 1);
        v12 = v8[4];
        v13 = v12;
        goto LABEL_14;
      }

LABEL_17:
      v7 = (v9 + 8 * v17);
      if (v10)
      {
        goto LABEL_9;
      }

      v9 = *(v8 + 1);
      v12 = v8[4];
LABEL_19:
      if (v7 != (v9 + 8 * v12))
      {
        goto LABEL_10;
      }

LABEL_20:
      ParentOp = *(v6 + 2);
      v20 = v4[1];
      v21 = *v4[2];
      if (v21 == ParentOp)
      {
        ParentOp = 0;
      }

      else
      {
        while (1)
        {
          result = *(ParentOp + 16);
          if (result)
          {
            result = mlir::Block::getParentOp(result);
          }

          if (result == v21)
          {
            break;
          }

          v22 = *(ParentOp + 16);
          ParentOp = 0;
          if (v22)
          {
            ParentOp = mlir::Block::getParentOp(v22);
          }
        }
      }

      v23 = v20[4];
      if (!v23)
      {
        goto LABEL_30;
      }

      v24 = ((ParentOp >> 4) ^ (ParentOp >> 9)) & (v23 - 1);
      v25 = *(*v20 + 8 * v24);
      if (v25 != ParentOp)
      {
        v31 = 1;
        while (v25 != -4096)
        {
          v32 = v24 + v31++;
          v24 = v32 & (v23 - 1);
          v25 = *(*v20 + 8 * v24);
          if (v25 == ParentOp)
          {
            goto LABEL_29;
          }
        }

LABEL_30:
        v26 = v4[3];
        v27 = v34;
        v28 = v26[2];
        if (v28 >= v26[3])
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v4[3], v26 + 4, v28 + 1, 8);
          v28 = v26[2];
        }

        *(*v26 + 8 * v28) = v27;
        ++v26[2];
        result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(*v4, &v34, v35);
        goto LABEL_10;
      }

LABEL_29:
      if (v24 == v23)
      {
        goto LABEL_30;
      }

LABEL_10:
      v6 = *v6;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

int32x2_t *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::mpsx::anonymous namespace::anonymous namespace::outlineRegion(mlir::RewriterBase &,mlir::mpsx::GPUOp,llvm::ArrayRef<mlir::Operation *>,mlir::mps::ConstantRuntimeAnalysis &,unsigned long long,BOOL,BOOL)::$_7>(int32x2_t *result, uint64_t a2)
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

  if (v2)
  {
    v4 = result;
    for (i = 0; i != v2; ++i)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, i);
      result = mlir::mps::ConstantRuntimeAnalysis::erase(*v4, NextResultAtOffset);
    }
  }

  return result;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::mpsx::anonymous namespace::GPURegionParallelEncodePass::convert(mlir::mpsx::GPUOp,BOOL *)::$_1>(uint64_t a1, uint64_t a2)
{
  ParentOp = *(a2 + 16);
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  {
    v5 = *(a2 + 36);
    v6 = v5 ? a2 - 16 : 0;
    v17.n128_u64[0] = v6;
    v17.n128_u64[1] = v5;
    mlir::ResultRange::use_begin(&v17, &v18);
    v7 = *(a2 + 36);
    v8 = v7 ? a2 - 16 : 0;
    v17.n128_u64[0] = v8;
    v17.n128_u64[1] = v7;
    mlir::ResultRange::use_end(&v17, v15);
    v9 = v19;
    v10 = v16;
    if (v19 != v16)
    {
      while (1)
      {
        v11 = *(v9 + 16);
        {
          v14 = v11;
          v11 = v14;
        }

        if ((*(**(v11 + 48) + 32))(*(v11 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id))
        {
          break;
        }

        mlir::ResultRange::UseIterator::operator++(&v18);
        v9 = v19;
        if (v19 == v10)
        {
          return;
        }
      }

      v12 = *(a1 + 16);
      v13 = *(v12 + 8);
      if (v13 >= *(v12 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (v12 + 16), v13 + 1, 8);
        LODWORD(v13) = *(v12 + 8);
      }

      *(*v12 + 8 * v13) = a2;
      ++*(v12 + 8);
    }
  }
}

void *mlir::mpsx::EntryPoint::EntryPoint(void *__dst, const void *a2, size_t __len, const void *a4, uint64_t a5)
{
  if (!a2)
  {
    *__dst = 0;
    __dst[1] = 0;
    __dst[2] = 0;
    goto LABEL_13;
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (__len | 7) + 1;
    }

    v11 = a2;
    v12 = operator new(v10);
    a2 = v11;
    v9 = v12;
    __dst[1] = __len;
    __dst[2] = v10 | 0x8000000000000000;
    *__dst = v12;
  }

  else
  {
    *(__dst + 23) = __len;
    v9 = __dst;
    if (!__len)
    {
      goto LABEL_12;
    }
  }

  memmove(v9, a2, __len);
LABEL_12:
  *(v9 + __len) = 0;
LABEL_13:
  __dst[3] = __dst + 5;
  __dst[4] = 0x400000000;
  v13 = (8 * a5) >> 3;
  if (v13 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((__dst + 3), __dst + 5, v13, 8);
    v14 = *(__dst + 8);
    v15 = 8 * a5;
    if (!a5)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v14 = 0;
  v15 = 8 * a5;
  if (a5)
  {
LABEL_17:
    memcpy((__dst[3] + 8 * v14), a4, v15);
    v14 = *(__dst + 8);
  }

LABEL_18:
  *(__dst + 8) = v14 + (v15 >> 3);
  return __dst;
}

void mlir::mpsx::convertToMultiEntryModule(mlir::Block **a1@<X0>, __int128 *a2@<X1>, const unsigned __int8 *a3@<X2>, uint64_t a4@<X8>, unint64_t a5@<X3>)
{
  v5 = a2;
  v194 = *MEMORY[0x1E69E9840];
  v169 = 0;
  v170 = 0;
  v168 = &v169;
  v7 = (a2 + 72 * a3);
  if (!a3)
  {
    goto LABEL_27;
  }

  v8 = a3;
  v9 = a2;
  do
  {
    v10 = v169;
    v11 = &v169;
    v12 = &v169;
    if (!v169)
    {
      goto LABEL_13;
    }

    v12 = &v169;
    while (1)
    {
      while (1)
      {
        v11 = v10;
        {
          break;
        }

        v10 = *v11;
        v12 = v11;
        if (!*v11)
        {
          goto LABEL_13;
        }
      }

      {
        break;
      }

      v12 = v11 + 1;
      v10 = v11[1];
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    if (!*v12)
    {
LABEL_13:
      v13 = operator new(0x68uLL);
      v14 = v13;
      v15 = (v13 + 32);
      if (*(v9 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((v13 + 32), *v9, *(v9 + 1));
      }

      else
      {
        v16 = *v9;
        *(v13 + 6) = *(v9 + 2);
        *v15 = v16;
      }

      v17 = v14 + 9;
      v14[7] = (v14 + 9);
      v14[8] = 0x400000000;
      if (v15 == v9)
      {
        goto LABEL_24;
      }

      v18 = *(v9 + 8);
      if (!*(v9 + 8))
      {
        goto LABEL_24;
      }

      if (v18 < 5)
      {
        v19 = *(v9 + 8);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod((v14 + 7), v14 + 9, *(v9 + 8), 8);
        v19 = *(v9 + 8);
        if (!v19)
        {
LABEL_23:
          *(v14 + 16) = v18;
LABEL_24:
          *v14 = 0;
          v14[1] = 0;
          v14[2] = v11;
          *v12 = v14;
          if (*v168)
          {
            v168 = *v168;
            v14 = *v12;
          }

          std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v169, v14);
          ++v170;
          goto LABEL_4;
        }

        v17 = v14[7];
      }

      memcpy(v17, *(v9 + 3), 8 * v19);
      goto LABEL_23;
    }

LABEL_4:
    v9 = (v9 + 72);
  }

  while (v9 != v7);
  a3 = v8;
  if (v8 != v170)
  {
    LOWORD(v176) = 257;
    mlir::Operation::emitOpError(a1, &v172, &FunctionType);
    if (FunctionType)
    {
      LODWORD(v163.__r_.__value_.__l.__data_) = 3;
      v163.__r_.__value_.__l.__size_ = "Entry points are not unique";
      v163.__r_.__value_.__r.__words[2] = 27;
      v70 = &v163;
      v71 = v184;
      v72 = a4;
      if (v185 >= v186)
      {
        if (v184 <= &v163 && v184 + 24 * v185 > &v163)
        {
          v147 = &v163 - v184;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v184, v187, v185 + 1, 24);
          v71 = v184;
          v70 = (v184 + v147);
          v72 = a4;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v184, v187, v185 + 1, 24);
          v70 = &v163;
          v71 = v184;
        }
      }

      v73 = &v71[24 * v185];
      v74 = *&v70->__r_.__value_.__l.__data_;
      *(v73 + 2) = *(&v70->__r_.__value_.__l + 2);
      *v73 = v74;
      ++v185;
      v75 = FunctionType;
      *v72 = 0;
      v72[48] = 0;
      if (v75)
      {
        mlir::InFlightDiagnostic::report(&FunctionType);
      }
    }

    else
    {
      *a4 = 0;
      *(a4 + 48) = 0;
    }

    if (v193 == 1)
    {
      if (v192 != &v193)
      {
        free(v192);
      }

      v78 = v190;
      if (v190)
      {
        v79 = v191;
        v80 = v190;
        if (v191 != v190)
        {
          do
          {
            v79 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v79 - 1);
          }

          while (v79 != v78);
          v80 = v190;
        }

        v191 = v78;
        operator delete(v80);
      }

      v81 = v188;
      if (v188)
      {
        v82 = v189;
        v83 = v188;
        if (v189 != v188)
        {
          do
          {
            v85 = *--v82;
            v84 = v85;
            *v82 = 0;
            if (v85)
            {
              operator delete[](v84);
            }
          }

          while (v82 != v81);
          v83 = v188;
        }

        v189 = v81;
        operator delete(v83);
      }

      v138 = v184;
      if (v184 != v187)
      {
        goto LABEL_206;
      }
    }

    goto LABEL_207;
  }

LABEL_27:
  v154 = a3;
  v165 = 0;
  v166 = 0;
  v167 = 0x1000000000;
  v20 = v168;
  if (v168 == &v169)
  {
LABEL_64:
    v160[0] = mlir::Attribute::getContext((a1 + 3));
    v160[1] = 0;
    v161 = 0;
    v162 = 0;
    v159[0] = 0;
    v159[1] = 0;
    v158[1] = v159;
    v48 = v168;
    if (v168 != &v169)
    {
      v49 = 0;
      v50 = *(v168 + 55);
      if (v50 >= 0)
      {
        v51 = (v168 + 4);
      }

      else
      {
        v51 = v168[4];
      }

      if (v50 >= 0)
      {
        v52 = *(v168 + 55);
      }

      else
      {
        v52 = v168[5];
      }

      v53 = llvm::StringMapImpl::hash(v51, v52, v46, v47);
      Key = llvm::StringMapImpl::FindKey(&v165, v51, v52, v53);
      v55 = Key;
      if (Key == -1)
      {
        v55 = v166;
      }

      v158[0] = *(*(v165 + v55) + 8);
      memset(&__p, 0, sizeof(__p));
      while (1)
      {
        v56 = v49;
        v57 = *(v48 + 55);
        v58 = v48[4];
        if (v57 >= 0)
        {
          v58 = (v48 + 4);
        }

        if (v57 < 0)
        {
          v57 = v48[5];
        }

        v172 = v58;
        v173 = v57;
        v174 = "_";
        LOWORD(v176) = 773;
        v171 = v49;
        FunctionType = &v172;
        v183 = &v171;
        LOWORD(v185) = 3330;
        llvm::Twine::str(&FunctionType, &v163);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v163;
        if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = v163.__r_.__value_.__r.__words[0];
        }

        if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = SHIBYTE(v163.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v163.__r_.__value_.__l.__size_;
        }

        Context = mlir::Attribute::getContext((a1 + 3));
        LOWORD(v185) = 261;
        FunctionType = p_p;
        v182 = size;
        v62 = mlir::StringAttr::get(Context, &FunctionType);
        v63 = mlir::SymbolTable::lookupSymbolIn(a1, v62);
        if (v63)
        {
          v49 = v56 + 1;
          if (*(*(v63 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
          {
            continue;
          }
        }

        v64 = mlir::Attribute::getContext((a1 + 3));
        mlir::ValueRange::ValueRange(&FunctionType, v48[7], *(v48 + 16));
        v163.__r_.__value_.__r.__words[0] = mlir::func::FuncOp::getFunctionType(v158);
        Results = mlir::FunctionType::getResults(&v163);
        mlir::ValueRange::ValueRange(&v172, Results, v66);
        v156 = mlir::FunctionType::get(v64, FunctionType, v182, v172, v173);
        v67 = *(v158[0] + 2);
        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
        v161 = v67;
        v162 = v68;
        v69 = mlir::OpBuilder::create<mlir::func::FuncOp,std::string &,mlir::FunctionType &>(v160, *(v158[0] + 3), &__p, &v156);
        v172 = 0;
        v173 = 0;
        LODWORD(v174) = 0;
        v175 = 0;
        v176 = 0;
        v177 = 0;
        v178 = 0;
        v179 = 0;
        v180 = 0;
        mlir::func::FuncOp::cloneInto(v158, v69, &v172);
      }
    }

    FunctionType = &v183;
    v182 = 0x400000000;
    if (v154 < 5)
    {
      v76 = v7;
      if (!v154)
      {
        v77 = v182;
LABEL_191:
        *a4 = a4 + 16;
        *(a4 + 8) = 0x400000000;
        if (v77)
        {
          llvm::SmallVectorImpl<unsigned long long>::operator=(a4, &FunctionType);
        }

        *(a4 + 48) = 1;
        if (FunctionType != &v183)
        {
          free(FunctionType);
        }

        goto LABEL_196;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&FunctionType, &v183, v154, 8);
      v76 = v7;
    }

    do
    {
      v139 = v159[0];
      if (!v159[0])
      {
        goto LABEL_208;
      }

      v140 = v159;
      while (1)
      {
        while (1)
        {
          v141 = v139;
          {
            break;
          }

          v139 = *v141;
          v140 = v141;
          if (!*v141)
          {
            goto LABEL_208;
          }
        }

        {
          break;
        }

        v139 = v141[1];
        v140 = v141 + 1;
        if (!v139)
        {
          goto LABEL_208;
        }
      }

      if (!*v140)
      {
LABEL_208:
        abort();
      }

      v142 = *(*v140 + 13);
      v143 = v182;
      if (v182 >= HIDWORD(v182))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&FunctionType, &v183, v182 + 1, 8);
        v143 = v182;
      }

      *(FunctionType + v143) = v142;
      v77 = v182 + 1;
      LODWORD(v182) = v182 + 1;
      v5 = (v5 + 72);
    }

    while (v5 != v76);
    goto LABEL_191;
  }

  while (2)
  {
    v21 = *(v20 + 55);
    if (v21 >= 0)
    {
      v22 = (v20 + 4);
    }

    else
    {
      v22 = v20[4];
    }

    if (v21 >= 0)
    {
      v23 = *(v20 + 55);
    }

    else
    {
      v23 = v20[5];
    }

    v24 = llvm::StringMapImpl::hash(v22, v23, a3, a5);
    v25 = llvm::StringMapImpl::FindKey(&v165, v22, v23, v24);
    if (v25 != -1 && v25 != v166)
    {
LABEL_58:
      v44 = v20[1];
      if (v44)
      {
        do
        {
          v45 = v44;
          v44 = *v44;
        }

        while (v44);
      }

      else
      {
        do
        {
          v45 = v20[2];
          v33 = *v45 == v20;
          v20 = v45;
        }

        while (!v33);
      }

      v20 = v45;
      if (v45 == &v169)
      {
        goto LABEL_64;
      }

      continue;
    }

    break;
  }

  v26 = *(v20 + 55);
  if (v26 >= 0)
  {
    v27 = v20 + 4;
  }

  else
  {
    v27 = v20[4];
  }

  if (v26 >= 0)
  {
    v28 = *(v20 + 55);
  }

  else
  {
    v28 = v20[5];
  }

  v29 = mlir::Attribute::getContext((a1 + 3));
  LOWORD(v185) = 261;
  FunctionType = v27;
  v182 = v28;
  v30 = mlir::StringAttr::get(v29, &FunctionType);
  v31 = mlir::SymbolTable::lookupSymbolIn(a1, v30);
  if (v31)
  {
    v32 = *(*(v31 + 6) + 16);
    v33 = v32 == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id;
    if (v32 == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      v34 = v31;
    }

    else
    {
      v34 = 0;
    }

    v160[0] = v34;
    if (!v33)
    {
      goto LABEL_113;
    }

    v35 = *(v20 + 16);
    FunctionType = mlir::func::FuncOp::getFunctionType(v160);
    mlir::FunctionType::getInputs(&FunctionType);
    if (v38 != v35)
    {
      v164 = 257;
      mlir::Operation::emitOpError(a1, &v163, &FunctionType);
      v103 = a4;
      if (FunctionType)
      {
        LODWORD(v172) = 3;
        v173 = "Invalid number of types provided for function ";
        v174 = 46;
        v104 = &v172;
        v105 = v184;
        if (v185 >= v186)
        {
          if (v184 <= &v172 && v184 + 24 * v185 > &v172)
          {
            v149 = &v172 - v184;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v184, v187, v185 + 1, 24);
            v105 = v184;
            v104 = (v184 + v149);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v184, v187, v185 + 1, 24);
            v104 = &v172;
            v105 = v184;
          }

          v103 = a4;
        }

        v106 = &v105[24 * v185];
        v107 = *v104;
        *(v106 + 2) = v104[2];
        *v106 = v107;
        ++v185;
        if (FunctionType)
        {
          v108 = *(v20 + 55);
          v109 = v108 < 0;
          if (v108 < 0)
          {
            v108 = v20[5];
          }

          if (v109)
          {
            v110 = v20[4];
          }

          else
          {
            v110 = (v20 + 4);
          }

          LOWORD(v176) = 261;
          v172 = v110;
          v173 = v108;
          mlir::Diagnostic::operator<<(&v182, &v172);
          if (FunctionType)
          {
            LODWORD(v172) = 3;
            v173 = ", expected ";
            v174 = 11;
            v111 = &v172;
            v112 = v184;
            if (v185 >= v186)
            {
              if (v184 <= &v172 && v184 + 24 * v185 > &v172)
              {
                v152 = &v172 - v184;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v184, v187, v185 + 1, 24);
                v112 = v184;
                v111 = (v184 + v152);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v184, v187, v185 + 1, 24);
                v111 = &v172;
                v112 = v184;
              }

              v103 = a4;
            }

            v113 = &v112[24 * v185];
            v114 = *v111;
            *(v113 + 2) = v111[2];
            *v113 = v114;
            ++v185;
          }
        }
      }

      v171 = mlir::func::FuncOp::getFunctionType(v160);
      mlir::FunctionType::getInputs(&v171);
      if (!FunctionType)
      {
        goto LABEL_157;
      }

      LODWORD(v172) = 5;
      v173 = v115;
      v116 = &v172;
      v117 = v184;
      if (v185 >= v186)
      {
        if (v184 <= &v172 && v184 + 24 * v185 > &v172)
        {
          v150 = &v172 - v184;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v184, v187, v185 + 1, 24);
          v117 = v184;
          v116 = (v184 + v150);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v184, v187, v185 + 1, 24);
          v116 = &v172;
          v117 = v184;
        }

        v103 = a4;
      }

      v118 = &v117[24 * v185];
      v119 = *v116;
      *(v118 + 2) = v116[2];
      *v118 = v119;
      v120 = ++v185;
      if (!FunctionType)
      {
        goto LABEL_157;
      }

      LODWORD(v172) = 3;
      v173 = ", but got ";
      v174 = 10;
      v121 = &v172;
      v122 = v184;
      if (v120 >= v186)
      {
        if (v184 <= &v172 && v184 + 24 * v120 > &v172)
        {
          v151 = &v172 - v184;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v184, v187, v120 + 1, 24);
          v122 = v184;
          v121 = (v184 + v151);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v184, v187, v120 + 1, 24);
          v121 = &v172;
          v122 = v184;
        }

        v103 = a4;
      }

      v123 = &v122[24 * v185];
      v124 = *v121;
      *(v123 + 2) = v121[2];
      *v123 = v124;
      v125 = ++v185;
      if (FunctionType)
      {
        v126 = *(v20 + 16);
        LODWORD(v172) = 5;
        v173 = v126;
        v127 = &v172;
        v128 = v184;
        if (v125 >= v186)
        {
          if (v184 <= &v172 && v184 + 24 * v125 > &v172)
          {
            v153 = &v172 - v184;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v184, v187, v125 + 1, 24);
            v128 = v184;
            v127 = (v184 + v153);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v184, v187, v125 + 1, 24);
            v127 = &v172;
            v128 = v184;
          }

          v103 = a4;
        }

        v129 = &v128[24 * v185];
        v130 = *v127;
        *(v129 + 2) = v127[2];
        *v129 = v130;
        ++v185;
        v131 = FunctionType;
        *v103 = 0;
        v103[48] = 0;
        if (v131)
        {
          mlir::InFlightDiagnostic::report(&FunctionType);
        }
      }

      else
      {
LABEL_157:
        *v103 = 0;
        v103[48] = 0;
      }

      if (v193 == 1)
      {
        if (v192 != &v193)
        {
          free(v192);
        }

        v132 = v190;
        if (v190)
        {
          v133 = v191;
          v134 = v190;
          if (v191 != v190)
          {
            do
            {
              v133 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v133 - 1);
            }

            while (v133 != v132);
            v134 = v190;
          }

          v191 = v132;
          operator delete(v134);
        }

        v98 = v188;
        if (!v188)
        {
          goto LABEL_178;
        }

        v135 = v189;
        v100 = v188;
        if (v189 == v188)
        {
LABEL_177:
          v189 = v98;
          operator delete(v100);
LABEL_178:
          if (v184 != v187)
          {
            free(v184);
          }

          goto LABEL_196;
        }

        do
        {
          v137 = *--v135;
          v136 = v137;
          *v135 = 0;
          if (v137)
          {
            operator delete[](v136);
          }
        }

        while (v135 != v98);
LABEL_176:
        v100 = v188;
        goto LABEL_177;
      }

      goto LABEL_196;
    }

    v39 = *(v20 + 55);
    if (v39 >= 0)
    {
      v40 = (v20 + 4);
    }

    else
    {
      v40 = v20[4];
    }

    if (v39 >= 0)
    {
      v41 = *(v20 + 55);
    }

    else
    {
      v41 = v20[5];
    }

    v42 = llvm::StringMapImpl::hash(v40, v41, v36, v37);
    v43 = llvm::StringMap<mlir::func::FuncOp,llvm::MallocAllocator>::try_emplace_with_hash<>(&v165, v40, v41, v42);
    (*v43)[1] = v160[0];
    goto LABEL_58;
  }

  v160[0] = 0;
LABEL_113:
  v164 = 257;
  mlir::Operation::emitOpError(a1, &v163, &FunctionType);
  v86 = a4;
  if (!FunctionType)
  {
    goto LABEL_123;
  }

  LODWORD(v172) = 3;
  v173 = "Could not locate function named ";
  v174 = 32;
  v87 = &v172;
  v88 = v184;
  if (v185 >= v186)
  {
    if (v184 <= &v172 && v184 + 24 * v185 > &v172)
    {
      v148 = &v172 - v184;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v184, v187, v185 + 1, 24);
      v88 = v184;
      v87 = (v184 + v148);
      v86 = a4;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v184, v187, v185 + 1, 24);
      v87 = &v172;
      v88 = v184;
    }
  }

  v89 = &v88[24 * v185];
  v90 = *v87;
  *(v89 + 2) = v87[2];
  *v89 = v90;
  ++v185;
  if (FunctionType)
  {
    v91 = *(v20 + 55);
    v92 = v91 < 0;
    if (v91 < 0)
    {
      v91 = v20[5];
    }

    if (v92)
    {
      v93 = v20[4];
    }

    else
    {
      v93 = (v20 + 4);
    }

    LOWORD(v176) = 261;
    v172 = v93;
    v173 = v91;
    mlir::Diagnostic::operator<<(&v182, &v172);
    v94 = FunctionType;
    *v86 = 0;
    v86[48] = 0;
    if (v94)
    {
      mlir::InFlightDiagnostic::report(&FunctionType);
    }
  }

  else
  {
LABEL_123:
    *v86 = 0;
    v86[48] = 0;
  }

  if (v193 == 1)
  {
    if (v192 != &v193)
    {
      free(v192);
    }

    v95 = v190;
    if (v190)
    {
      v96 = v191;
      v97 = v190;
      if (v191 != v190)
      {
        do
        {
          v96 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v96 - 1);
        }

        while (v96 != v95);
        v97 = v190;
      }

      v191 = v95;
      operator delete(v97);
    }

    v98 = v188;
    if (!v188)
    {
      goto LABEL_178;
    }

    v99 = v189;
    v100 = v188;
    if (v189 == v188)
    {
      goto LABEL_177;
    }

    do
    {
      v102 = *--v99;
      v101 = v102;
      *v99 = 0;
      if (v102)
      {
        operator delete[](v101);
      }
    }

    while (v99 != v98);
    goto LABEL_176;
  }

LABEL_196:
  if (HIDWORD(v166) && v166)
  {
    v144 = 0;
    do
    {
      v145 = *(v165 + v144);
      if (v145 != -8 && v145 != 0)
      {
        llvm::deallocate_buffer(v145, (*v145 + 17));
      }

      v144 += 8;
    }

    while (8 * v166 != v144);
  }

  v138 = v165;
LABEL_206:
  free(v138);
LABEL_207:
}

char *mlir::OpBuilder::create<mlir::func::FuncOp,std::string &,mlir::FunctionType &>(mlir::StringAttr **a1, uint64_t a2, size_t a3, uint64_t *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::func::FuncOp,std::string &,mlir::FunctionType &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *(a3 + 23);
  if (v12 >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = *a3;
  }

  if (v12 >= 0)
  {
    v14 = *(a3 + 23);
  }

  else
  {
    v14 = *(a3 + 8);
  }

  mlir::func::FuncOp::build(a1, v21, v13, v14, *a4, 0, 0, v11, 0, 0);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

uint64_t mlir::mpsx::getPerFuncOpANEFileSymbols@<X0>(mlir::mpsx *this@<X0>, ModuleOp a2@<0:X1>, uint64_t a3@<X8>)
{
  v4[1] = a3;
  v5 = this;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4[0] = &v5;
  v6 = v4;
  return mlir::detail::walk<mlir::ForwardIterator>(this, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4mpsx26getPerFuncOpANEFileSymbolsENS1_8ModuleOpEE3__0NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v6, 1);
}

uint64_t mlir::mpsx::getPerFuncOpGPUReadDataFromFileOps@<X0>(mlir::mpsx *this@<X0>, ModuleOp a2@<0:X1>, uint64_t a3@<X8>)
{
  v4[1] = a3;
  v5 = this;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4[0] = &v5;
  v6 = v4;
  return mlir::detail::walk<mlir::ForwardIterator>(this, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4mpsx34getPerFuncOpGPUReadDataFromFileOpsENS1_8ModuleOpEE3__0NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v6, 1);
}

void std::__tree<mlir::mpsx::EntryPoint,mlir::mpsx::anonymous namespace::CompareEntryPoints,std::allocator<mlir::mpsx::EntryPoint>>::destroy(char *a1)
{
  if (a1)
  {
    v2 = *(a1 + 7);
    if (v2 != a1 + 72)
    {
      free(v2);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t mlir::mpsx::anonymous namespace::CompareEntryPoints::operator()(void *a1, void *a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (!v8)
  {
    goto LABEL_17;
  }

  if (v6 < 0)
  {
    a2 = *a2;
  }

  if (v4 < 0)
  {
    a1 = *a1;
  }

  v9 = memcmp(a1, a2, v8);
  if (v9)
  {
    return ((v9 >> 31) | 1u) >> 31;
  }

LABEL_17:
  if (v5 == v7)
  {
    v11 = *(v3 + 8);
    v12 = *(v2 + 8);
    if (v11 == v12)
    {
      if (v11)
      {
        v13 = v2[3];
        v14 = v3[3];
        v15 = v11;
        v16 = &v14[v15];
        v17 = &v13[v15];
        while (v13 != v17)
        {
          v19 = *v14;
          if (*v14)
          {
            v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
          }

          else
          {
            v20 = 0;
          }

          v37[0] = v19;
          v37[1] = v20;
          v21 = *v13;
          if (*v13)
          {
            v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
          }

          else
          {
            v22 = 0;
          }

          v36[0] = v21;
          v36[1] = v22;
          ArgOperands = mlir::CallOpInterface::getArgOperands(v37);
          v24 = mlir::CallOpInterface::getArgOperands(v36);
          if (!ArgOperands || !v24)
          {
            return (ArgOperands ^ 1) & v24;
          }

          mlir::CallableOpInterface::getArgAttrsAttr(v37);
          v26 = v25;
          mlir::CallableOpInterface::getArgAttrsAttr(v36);
          v28 = v27;
          mlir::CallableOpInterface::getArgAttrsAttr(v37);
          if (v26 != v28)
          {
            v34 = v29;
            mlir::CallableOpInterface::getArgAttrsAttr(v36);
            return v34 < v35;
          }

          if (v29)
          {
            for (i = 0; i != v33; ++i)
            {
              v31 = *(mlir::CallableOpInterface::getArgAttrsAttr(v37) + 8 * i);
              v32 = *(mlir::CallableOpInterface::getArgAttrsAttr(v36) + 8 * i);
              if (v31 != v32)
              {
                return v31 < v32;
              }

              mlir::CallableOpInterface::getArgAttrsAttr(v37);
            }
          }

          result = 0;
          ++v14;
          ++v13;
          if (v14 == v16)
          {
            return result;
          }
        }
      }

      return 0;
    }

    else
    {
      return v11 < v12;
    }
  }

  else
  {
    if (v5 < v7)
    {
      v18 = -1;
    }

    else
    {
      v18 = 1;
    }

    return v18 >> 31;
  }
}

__int128 **_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4mpsx26getPerFuncOpANEFileSymbolsENS1_8ModuleOpEE3__0NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_(__int128 **result, mlir::ForwardIterator *a2)
{
  if (a2)
  {
    if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      v7[1] = v2;
      v7[2] = v3;
      v4 = **result;
      v5 = &v6;
      v6 = a2;
      v7[0] = &v4;
      return mlir::detail::walk<mlir::ForwardIterator>(a2, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZNS1_4mpsx26getPerFuncOpANEFileSymbolsENS1_8ModuleOpEENK3__0clENS1_4func6FuncOpEEUlNS1_9placement10RegionCallEE_SH_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESQ_E4typeES3_OT1_EUlS3_E_EEvlS3_, v7, 1);
    }
  }

  return result;
}

mlir::ForwardIterator *_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZNS1_4mpsx26getPerFuncOpANEFileSymbolsENS1_8ModuleOpEENK3__0clENS1_4func6FuncOpEEUlNS1_9placement10RegionCallEE_SH_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESQ_E4typeES3_OT1_EUlS3_E_EEvlS3_(mlir::ForwardIterator *result, mlir::Operation *a2)
{
  if (a2)
  {
    if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id)
    {
      v36[9] = v2;
      v36[10] = v3;
      v4 = *result;
      v32 = a2;
      result = mlir::placement::RegionCall::getRegionType(&v32);
      if (result == 1)
      {
        v5 = *v4;
        Callee = mlir::placement::RegionCall::getCallee(&v32);
        v8 = v7;
        v9 = *v5;
        Context = mlir::Attribute::getContext((v9 + 6));
        v35 = 261;
        *&v33 = Callee;
        *(&v33 + 1) = v8;
        v11 = mlir::StringAttr::get(Context, &v33);
        result = mlir::SymbolTable::lookupSymbolIn(v9, v11);
        if (result)
        {
          v12 = *(*(result + 6) + 16);
          v13 = v12 == &mlir::detail::TypeIDResolver<mlir::mpsx::ANEOp,void>::id;
          v14 = v12 == &mlir::detail::TypeIDResolver<mlir::mpsx::ANEOp,void>::id ? result : 0;
          v31 = v14;
          if (v13)
          {
            v15 = (((result + 16 * ((*(result + 11) >> 23) & 1) + ((*(result + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(result + 10));
            if (*v15 == v15)
            {
              result = mlir::mpsx::ANEOp::getReadDataFromFileInfos(&v31);
              *&v33 = result;
              BYTE8(v33) = v16;
              if (v16)
              {
                Value = mlir::ArrayAttr::getValue(&v33);
                result = mlir::ArrayAttr::getValue(&v33);
                for (i = result + 8 * v18; Value != i; Value += 8)
                {
                  v36[0] = *Value;
                  v27 = llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>>>,mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>>>::operator[](*(v4 + 8), *(v4 + 16));
                  v28 = llvm::DenseMapBase<llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>,mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>::operator[](v27, &v32);
                  v37.var0 = "mpsx.readDataFromFileSymbol";
                  v37.var1 = 27;
                  v29 = mlir::DictionaryAttr::get(v36, v37);
                  if (v29)
                  {
                    if (*(*v29 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
                    {
                      v20 = v29;
                    }

                    else
                    {
                      v20 = 0;
                    }
                  }

                  else
                  {
                    v20 = 0;
                  }

                  v30 = v20;
                  AttrData = mlir::OpaqueAttr::getAttrData(&v30);
                  v23 = v22;
                  v26 = llvm::StringMapImpl::hash(AttrData, v22, v24, v25);
                  result = llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::try_emplace_with_hash<>(v28, AttrData, v23, v26);
                }
              }
            }

            else
            {
              v33 = *(v4 + 8);
              v34 = &v32;
              v36[0] = &v33;
              return mlir::detail::walk<mlir::ForwardIterator>(result, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZZNS1_4mpsx26getPerFuncOpANEFileSymbolsENS1_8ModuleOpEENK3__0clENS1_4func6FuncOpEENKUlNS1_9placement10RegionCallEE_clESH_EUlNS1_3mps18ReadDataFromFileOpEE_SK_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueEST_E4typeES3_OT1_EUlS3_E_EEvlS3_, v36, 1);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>>>,mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    v5 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)))) & (v2 - 1);
    v6 = *a1 + 32 * v5;
    v7 = *v6;
    if (*a2 == *v6)
    {
      return v6 + 8;
    }

    v8 = 0;
    v9 = 1;
    while (v7 != -4096)
    {
      if (v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = v7 == -8192;
      }

      if (v10)
      {
        v8 = v6;
      }

      v11 = v5 + v9++;
      v5 = v11 & (v2 - 1);
      v6 = *a1 + 32 * v5;
      v7 = *v6;
      if (*a2 == *v6)
      {
        return v6 + 8;
      }
    }

    if (v8)
    {
      v6 = v8;
    }
  }

  else
  {
    v6 = 0;
  }

  v17 = v6;
  v12 = *(a1 + 8);
  if (4 * v12 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
LABEL_24:
    v16 = a1;
    llvm::DenseMap<mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>>>,mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>>>::LookupBucketFor<mlir::func::FuncOp>(v16, v15, &v17);
    a1 = v16;
    a2 = v15;
    v12 = *(v16 + 8);
    v6 = v17;
    goto LABEL_15;
  }

  if (v2 + ~v12 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
    goto LABEL_24;
  }

LABEL_15:
  *(a1 + 8) = v12 + 1;
  if (*v6 != -4096)
  {
    --*(a1 + 12);
  }

  v13 = *a2;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = v13;
  *(v6 + 24) = 0;
  return v6 + 8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>,mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    v5 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)))) & (v2 - 1);
    v6 = *a1 + 32 * v5;
    v7 = *v6;
    if (*a2 == *v6)
    {
      return v6 + 8;
    }

    v8 = 0;
    v9 = 1;
    while (v7 != -4096)
    {
      if (v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = v7 == -8192;
      }

      if (v10)
      {
        v8 = v6;
      }

      v11 = v5 + v9++;
      v5 = v11 & (v2 - 1);
      v6 = *a1 + 32 * v5;
      v7 = *v6;
      if (*a2 == *v6)
      {
        return v6 + 8;
      }
    }

    if (v8)
    {
      v6 = v8;
    }
  }

  else
  {
    v6 = 0;
  }

  v16 = v6;
  v12 = *(a1 + 8);
  if (4 * v12 + 4 >= 3 * v2)
  {
    v14 = a2;
    v2 *= 2;
LABEL_24:
    v15 = a1;
    llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>>>,mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>>>::LookupBucketFor<mlir::func::FuncOp>(v15, v14, &v16);
    a1 = v15;
    a2 = v14;
    v12 = *(v15 + 8);
    v6 = v16;
    goto LABEL_15;
  }

  if (v2 + ~v12 - *(a1 + 12) <= v2 >> 3)
  {
    v14 = a2;
    goto LABEL_24;
  }

LABEL_15:
  *(a1 + 8) = v12 + 1;
  if (*v6 != -4096)
  {
    --*(a1 + 12);
  }

  *v6 = *a2;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 28) = 8;
  return v6 + 8;
}

void *llvm::DenseMap<mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(32 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v11 = (32 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>>>,mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>>>::moveFromOldBuckets(a1, v4, &v11[v4], v10);

    llvm::deallocate_buffer(v4, v11);
  }

  *(a1 + 8) = 0;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = (v12 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v13)
    {
      v14 = v13 + 1;
      v15 = (v13 + 1) & 0xFFFFFFFFFFFFFFELL;
      v16 = &result[4 * v15];
      v17 = result + 4;
      v18 = v15;
      do
      {
        *(v17 - 4) = -4096;
        *v17 = -4096;
        v17 += 8;
        v18 -= 2;
      }

      while (v18);
      if (v14 == v15)
      {
        return result;
      }
    }

    else
    {
      v16 = result;
    }

    v19 = &result[4 * v12];
    do
    {
      *v16 = -4096;
      v16 += 4;
    }

    while (v16 != v19);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>>>,mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v4 = a2;
  *(result + 8) = 0;
  v5 = *(result + 16);
  if (v5)
  {
    v6 = *result;
    v7 = (v5 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v7)
    {
      v8 = v7 + 1;
      v9 = (v7 + 1) & 0xFFFFFFFFFFFFFFELL;
      v10 = &v6[4 * v9];
      v11 = v6 + 4;
      v12 = v9;
      do
      {
        *(v11 - 4) = -4096;
        *v11 = -4096;
        v11 += 8;
        v12 -= 2;
      }

      while (v12);
      if (v8 == v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = *result;
    }

    v13 = &v6[4 * v5];
    do
    {
      *v10 = -4096;
      v10 += 4;
    }

    while (v10 != v13);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v16 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v17 = 0x9DDFEA08EB382D69 * ((8 * *v4 - 0xAE502812AA7333) ^ HIDWORD(*v4));
        v18 = 0x9DDFEA08EB382D69 * (HIDWORD(v16) ^ (v17 >> 47) ^ v17);
        LODWORD(v17) = -348639895 * ((v18 >> 47) ^ v18);
        v19 = *(result + 16) - 1;
        v20 = v19 & v17;
        v21 = *result + 32 * v20;
        v22 = *v21;
        if (v16 != *v21)
        {
          v31 = 0;
          v32 = 1;
          while (v22 != -4096)
          {
            if (v31)
            {
              v33 = 0;
            }

            else
            {
              v33 = v22 == -8192;
            }

            if (v33)
            {
              v31 = v21;
            }

            v34 = v20 + v32++;
            v20 = v34 & v19;
            v21 = *result + 32 * v20;
            v22 = *v21;
            if (v16 == *v21)
            {
              goto LABEL_17;
            }
          }

          if (v31)
          {
            v21 = v31;
          }
        }

LABEL_17:
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *v21 = v16;
        *(v21 + 24) = 0;
        *(v21 + 8) = v4[1];
        v4[1] = 0;
        *(v21 + 16) = *(v4 + 4);
        *(v4 + 4) = 0;
        v23 = *(v21 + 20);
        *(v21 + 20) = *(v4 + 5);
        *(v4 + 5) = v23;
        v24 = *(v21 + 24);
        *(v21 + 24) = *(v4 + 6);
        *(v4 + 6) = v24;
        ++*(result + 8);
        if (v24)
        {
          v25 = 0;
          v26 = 32 * v24;
          do
          {
            if ((*v25 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              if (*(v25 + 20))
              {
                v27 = *(v25 + 16);
                if (v27)
                {
                  v28 = 0;
                  do
                  {
                    v29 = *(*(v25 + 8) + v28);
                    if (v29 != -8 && v29 != 0)
                    {
                      llvm::deallocate_buffer(v29, (*v29 + 9));
                    }

                    v28 += 8;
                  }

                  while (8 * v27 != v28);
                }
              }

              free(*(v25 + 8));
            }

            v25 += 32;
          }

          while (v25 != v26);
          v14 = v4[1];
          v15 = (32 * *(v4 + 6));
        }

        else
        {
          v15 = 0;
          v14 = 0;
        }

        llvm::deallocate_buffer(v14, v15);
      }

      v4 += 4;
    }

    while (v4 != a3);
  }

  return result;
}

void *llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(32 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = (32 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>,mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0xFFFFFFFFFFFFFFELL;
      v15 = &result[4 * v14];
      v16 = result + 4;
      v17 = v14;
      do
      {
        *(v16 - 4) = -4096;
        *v16 = -4096;
        v16 += 8;
        v17 -= 2;
      }

      while (v17);
      if (v13 == v14)
      {
        return result;
      }
    }

    else
    {
      v15 = result;
    }

    v18 = &result[4 * v11];
    do
    {
      *v15 = -4096;
      v15 += 4;
    }

    while (v15 != v18);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>,mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>::moveFromOldBuckets(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  *(result + 8) = 0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *result;
    v5 = (v3 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v5)
    {
      v6 = v5 + 1;
      v7 = (v5 + 1) & 0xFFFFFFFFFFFFFFELL;
      v8 = &v4[4 * v7];
      v9 = v4 + 4;
      v10 = v7;
      do
      {
        *(v9 - 4) = -4096;
        *v9 = -4096;
        v9 += 8;
        v10 -= 2;
      }

      while (v10);
      if (v6 == v7)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v8 = *result;
    }

    v11 = &v4[4 * v3];
    do
    {
      *v8 = -4096;
      v8 += 4;
    }

    while (v8 != v11);
  }

LABEL_10:
  while (a2 != a3)
  {
    v13 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
      v15 = 0x9DDFEA08EB382D69 * (HIDWORD(v13) ^ (v14 >> 47) ^ v14);
      LODWORD(v14) = -348639895 * ((v15 >> 47) ^ v15);
      v16 = *(result + 16) - 1;
      v17 = v16 & v14;
      v12 = *result + 32 * v17;
      v18 = *v12;
      if (v13 != *v12)
      {
        v19 = 0;
        v20 = 1;
        while (v18 != -4096)
        {
          if (v19)
          {
            v21 = 0;
          }

          else
          {
            v21 = v18 == -8192;
          }

          if (v21)
          {
            v19 = v12;
          }

          v22 = v17 + v20++;
          v17 = v22 & v16;
          v12 = *result + 32 * v17;
          v18 = *v12;
          if (v13 == *v12)
          {
            goto LABEL_14;
          }
        }

        if (v19)
        {
          v12 = v19;
        }
      }

LABEL_14:
      *v12 = v13;
      *(v12 + 8) = a2[1];
      *(v12 + 16) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *(a2 + 6) = 0;
      ++*(result + 8);
    }

    a2 += 4;
  }

  return result;
}

uint64_t *_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZZNS1_4mpsx26getPerFuncOpANEFileSymbolsENS1_8ModuleOpEENK3__0clENS1_4func6FuncOpEENKUlNS1_9placement10RegionCallEE_clESH_EUlNS1_3mps18ReadDataFromFileOpEE_SK_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueEST_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t *result, uint64_t a2)
{
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id)
  {
    v15[5] = v2;
    v15[6] = v3;
    v4 = *result;
    v15[0] = a2;
    result = mlir::pdl::OperationOp::getOpName(&v12, v15);
    if (v14 == 1)
    {
      v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>>>,mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>>>::operator[](*v4, *(v4 + 8));
      v6 = llvm::DenseMapBase<llvm::DenseMap<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>,mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::placement::RegionCall,void>,llvm::detail::DenseMapPair<mlir::placement::RegionCall,llvm::StringSet<llvm::MallocAllocator>>>::operator[](v5, *(v4 + 16));
      mlir::pdl::OperationOp::getOpName(&v12, v15);
      v7 = v12;
      v8 = v13;
      v11 = llvm::StringMapImpl::hash(v12, v13, v9, v10);
      return llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::try_emplace_with_hash<>(v6, v7, v8, v11);
    }
  }

  return result;
}

void **_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4mpsx34getPerFuncOpGPUReadDataFromFileOpsENS1_8ModuleOpEE3__0NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_(void **result, uint64_t a2)
{
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v28[4] = v5;
    v28[5] = v4;
    v28[6] = v3;
    v28[7] = v2;
    v28[8] = v6;
    v28[9] = v7;
    v8 = *result;
    v27 = a2;
    __src[0] = 0;
    __src[1] = 0;
    v26 = 0;
    v23 = 0u;
    v24 = 0u;
    *__p = 0u;
    std::deque<mlir::func::FuncOp>::__add_back_capacity(__p);
    v10 = *(&v24 + 1);
    *(*(__p[1] + (((*(&v24 + 1) + v24) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v24 + 1) + v24) & 0x1FF)) = a2;
    v20[0] = 0;
    v20[1] = 0;
    v21 = 0;
    v11 = v10 + 1;
    *(&v24 + 1) = v10 + 1;
    if (v10 == -1)
    {
LABEL_4:
      v12 = llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::DenseSet<mlir::mps::ReadDataFromFileOp,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::mps::ReadDataFromFileOp,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>>>>,mlir::func::FuncOp,llvm::DenseSet<mlir::mps::ReadDataFromFileOp,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::mps::ReadDataFromFileOp,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>>>>::operator[](v8[1], &v27);
      if (__src != v12)
      {
        llvm::deallocate_buffer(*v12, (8 * *(v12 + 4)));
      }

      llvm::deallocate_buffer(v20[0], (8 * v21));
    }

    while (1)
    {
      v13 = ((v23 - __p[1]) << 6) - 1;
      if (v23 == __p[1])
      {
        v13 = 0;
      }

      v14 = *(*(__p[1] + (((v24 + v11 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v24 + v11 - 1) & 0x1FF));
      v19 = v14;
      *(&v24 + 1) = v11 - 1;
      if (v13 - (v11 + v24) + 1 >= 0x400)
      {
        operator delete(*(v23 - 8));
        *&v23 = v23 - 8;
        v14 = v19;
      }

      if (v21)
      {
        v15 = ((v14 >> 4) ^ (v14 >> 9)) & (v21 - 1);
        v16 = *(v20[0] + v15);
        if (v16 == v14)
        {
LABEL_15:
          if (v15 != v21)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v17 = 1;
          while (v16 != -4096)
          {
            v18 = v15 + v17++;
            v15 = v18 & (v21 - 1);
            v16 = *(v20[0] + v15);
            if (v16 == v14)
            {
              goto LABEL_15;
            }
          }
        }
      }

      llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v20, &v19, v28);
      v28[0] = *v8;
      v28[1] = __p;
      v28[2] = __src;
      mlir::detail::walk<mlir::ForwardIterator>(v19, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::mpsx::getPerFuncOpGPUReadDataFromFileOps(mlir::ModuleOp)::$_0::operator() const(mlir::func::FuncOp)::{lambda(mlir::Operation *)#1}>, v28, 1);
LABEL_8:
      v11 = *(&v24 + 1);
      if (!*(&v24 + 1))
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::DenseSet<mlir::mps::ReadDataFromFileOp,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::mps::ReadDataFromFileOp,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>>>>,mlir::func::FuncOp,llvm::DenseSet<mlir::mps::ReadDataFromFileOp,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::mps::ReadDataFromFileOp,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    v5 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)))) & (v2 - 1);
    v6 = (*a1 + 32 * v5);
    v7 = *v6;
    if (*a2 == *v6)
    {
      return v6 + 1;
    }

    v8 = 0;
    v9 = 1;
    while (v7 != -4096)
    {
      if (v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = v7 == -8192;
      }

      if (v10)
      {
        v8 = v6;
      }

      v11 = v5 + v9++;
      v5 = v11 & (v2 - 1);
      v6 = (*a1 + 32 * v5);
      v7 = *v6;
      if (*a2 == *v6)
      {
        return v6 + 1;
      }
    }

    if (v8)
    {
      v6 = v8;
    }
  }

  else
  {
    v6 = 0;
  }

  v16 = v6;
  v12 = *(a1 + 8);
  if (4 * v12 + 4 >= 3 * v2)
  {
    v14 = a2;
    v2 *= 2;
LABEL_24:
    v15 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>>>,mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>>>,mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>>>::LookupBucketFor<mlir::func::FuncOp>(v15, v14, &v16);
    a1 = v15;
    a2 = v14;
    v12 = *(v15 + 8);
    v6 = v16;
    goto LABEL_15;
  }

  if (v2 + ~v12 - *(a1 + 12) <= v2 >> 3)
  {
    v14 = a2;
    goto LABEL_24;
  }

LABEL_15:
  *(a1 + 8) = v12 + 1;
  if (*v6 != -4096)
  {
    --*(a1 + 12);
  }

  *v6 = *a2;
  v6[1] = 0;
  v6[2] = 0;
  v6[3] = 0;
  return v6 + 1;
}

uint64_t *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::mpsx::getPerFuncOpGPUReadDataFromFileOps(mlir::ModuleOp)::$_0::operator() const(mlir::func::FuncOp)::{lambda(mlir::Operation *)#1}>(uint64_t *result, mlir::Operation *a2)
{
  v2 = result;
  v3 = *(*(a2 + 6) + 16);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v21 = v4;
  if (v4)
  {
    result = mlir::placement::RegionCall::getRegionType(&v21);
    if (result != 1)
    {
      v5 = *v2;
      Callee = mlir::placement::RegionCall::getCallee(&v21);
      v8 = v7;
      v9 = *v5;
      Context = mlir::Attribute::getContext((v9 + 6));
      v23 = 261;
      v22[0] = Callee;
      v22[1] = v8;
      v11 = mlir::StringAttr::get(Context, v22);
      result = mlir::SymbolTable::lookupSymbolIn(v9, v11);
      if (result)
      {
        v12 = v2[1];
        v13 = v12[2];
        v14 = v12[1];
        if (v13 == v14)
        {
          v15 = 0;
        }

        else
        {
          v15 = ((v13 - v14) << 6) - 1;
        }

        v16 = v12[5];
        v17 = v16 + v12[4];
        if (v15 == v17)
        {
          v18 = result;
          std::deque<mlir::func::FuncOp>::__add_back_capacity(v12);
          result = v18;
          v14 = v12[1];
          v16 = v12[5];
          v17 = v12[4] + v16;
        }

        *(*(v14 + ((v17 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v17 & 0x1FF)) = result;
        v12[5] = v16 + 1;
      }
    }
  }

  else
  {
    if (v3 == &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id)
    {
      v19 = a2;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    if (v19)
    {
      return llvm::DenseMapBase<llvm::DenseMap<mlir::mps::ReadDataFromFileOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>,llvm::detail::DenseSetPair<mlir::mps::ReadDataFromFileOp>>,mlir::mps::ReadDataFromFileOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::mps::ReadDataFromFileOp,void>,llvm::detail::DenseSetPair<mlir::mps::ReadDataFromFileOp>>::try_emplace<llvm::detail::DenseSetEmpty&>(result[2], &v20, v22);
    }
  }

  return result;
}

mlir::Operation **mlir::mpsx::FuncValidation::create(mlir::mpsx::FuncValidation *this, mlir::Operation *a2, mlir::Operation *a3)
{
  v29 = a3;
  v30 = a2;
  v3 = *(this + 4);
  if (v3)
  {
    v4 = v3 - 1;
    v5 = (v3 - 1) & (((0xBF58476D1CE4E5B9 * a3) >> 31) ^ (484763065 * a3));
    v6 = (*this + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      goto LABEL_18;
    }

    v8 = 0;
    v9 = 1;
    while (v7 != -1)
    {
      if (v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = (v7 + 2) == 0;
      }

      if (v10)
      {
        v8 = v6;
      }

      v11 = v5 + v9++;
      v5 = v11 & v4;
      v6 = (*this + 16 * (v11 & v4));
      v7 = *v6;
      if (*v6 == a3)
      {
        goto LABEL_18;
      }
    }

    if (v8)
    {
      v6 = v8;
    }
  }

  else
  {
    v6 = 0;
  }

  v31 = v6;
  v12 = *(this + 2);
  if (4 * v12 + 4 >= 3 * v3)
  {
    v26 = a2;
    v3 *= 2;
LABEL_45:
    v28 = this;
    llvm::DenseMap<unsigned long long,mlir::Operation *,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::Operation *>>::grow(this, v3);
    llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::LookupBucketFor<unsigned long long>(v28, &v29, &v31);
    this = v28;
    v12 = *(v28 + 2);
    v6 = v31;
    a2 = v26;
    goto LABEL_15;
  }

  if (v3 + ~v12 - *(this + 3) <= v3 >> 3)
  {
    v26 = a2;
    goto LABEL_45;
  }

LABEL_15:
  *(this + 2) = v12 + 1;
  if (*v6 != -1)
  {
    --*(this + 3);
  }

  *v6 = v29;
  v6[1] = 0;
LABEL_18:
  v6[1] = a2;
  v14 = (this + 24);
  v13 = *(this + 3);
  v15 = *(this + 10);
  if (v15)
  {
    v16 = v15 - 1;
    v17 = ((a2 >> 4) ^ (a2 >> 9)) & (v15 - 1);
    v18 = (v13 + 40 * v17);
    v19 = *v18;
    if (*v18 == a2)
    {
      return v18 + 1;
    }

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
      v18 = (v13 + 40 * (v23 & v16));
      v19 = *v18;
      if (*v18 == a2)
      {
        return v18 + 1;
      }
    }

    if (v20)
    {
      v18 = v20;
    }
  }

  else
  {
    v18 = 0;
  }

  v31 = v18;
  v24 = *(this + 8);
  if (4 * v24 + 4 >= 3 * v15)
  {
    v27 = this;
    v15 *= 2;
LABEL_47:
    llvm::DenseMap<mlir::Operation *,mlir::mpsx::OpValidation,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::mpsx::OpValidation>>::grow(this + 24, v15);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::mpsx::OpValidation,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::mpsx::OpValidation>>,mlir::Operation *,mlir::mpsx::OpValidation,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::mpsx::OpValidation>>::LookupBucketFor<mlir::Operation *>(v14, &v30, &v31);
    this = v27;
    v24 = *(v27 + 8);
    v18 = v31;
    goto LABEL_32;
  }

  if (v15 + ~v24 - *(this + 9) <= v15 >> 3)
  {
    v27 = this;
    goto LABEL_47;
  }

LABEL_32:
  *(this + 8) = v24 + 1;
  if (*v18 != -4096)
  {
    --*(this + 9);
  }

  *v18 = v30;
  *(v18 + 1) = 0u;
  *(v18 + 3) = 0u;
  return v18 + 1;
}

uint64_t mlir::mpsx::createANERegionFormationPass@<X0>(mlir::mpsx *this@<X0>, void *a2@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = operator new(0xCD0uLL);
  *(v5 + 118) = *this;
  v6 = *(v5 + 117);
  if (!v6)
  {
    goto LABEL_28;
  }

  (*(*v6 + 48))(v6, this);
  v4[1088] = *(this + 7);
  v7 = *(v4 + 143);
  if (!v7)
  {
    goto LABEL_28;
  }

  (*(*v7 + 48))(v7, this + 7);
  v4[1296] = *(this + 4);
  v8 = *(v4 + 169);
  if (!v8)
  {
    goto LABEL_28;
  }

  (*(*v8 + 48))(v8, this + 4);
  v4[1712] = *(this + 5);
  v9 = *(v4 + 221);
  if (!v9)
  {
    goto LABEL_28;
  }

  (*(*v9 + 48))(v9, this + 5);
  v4[1504] = *(this + 6);
  v10 = *(v4 + 195);
  if (!v10)
  {
    goto LABEL_28;
  }

  (*(*v10 + 48))(v10, this + 6);
  v11 = *(this + 2);
  *(v4 + 480) = v11;
  v20[0] = v11;
  v12 = *(v4 + 247);
  if (!v12)
  {
    goto LABEL_28;
  }

  (*(*v12 + 48))(v12, v20);
  std::string::operator=(v4 + 106, (this + 16));
  v13 = *(v4 + 330);
  if (!v13)
  {
    goto LABEL_28;
  }

  (*(*v13 + 48))(v13, this + 16);
  v4[2336] = *(this + 40);
  v14 = *(v4 + 299);
  if (!v14)
  {
    goto LABEL_28;
  }

  (*(*v14 + 48))(v14, this + 40);
  *(v4 + 393) = *(this + 17);
  std::string::operator=((v4 + 3152), this + 2);
  if (*(this + 96) == 1)
  {
    if (v4[3200] == 1)
    {
      *(v4 + 398) = *(this + 10);
      *(v4 + 798) = *(this + 22);
    }

    else
    {
      *(v4 + 397) = &unk_1F5B01218;
      *(v4 + 398) = *(this + 10);
      *(v4 + 798) = *(this + 22);
      v4[3200] = 1;
    }
  }

  if (*(this + 128) != 1)
  {
LABEL_16:
    v15 = *(this + 21);
    if (v15)
    {
      goto LABEL_17;
    }

LABEL_20:
    v21 = 0;
    goto LABEL_22;
  }

  if (v4[3232] == 1)
  {
    *(v4 + 402) = *(this + 14);
    *(v4 + 806) = *(this + 30);
    goto LABEL_16;
  }

  *(v4 + 401) = &unk_1F5B01238;
  *(v4 + 402) = *(this + 14);
  *(v4 + 806) = *(this + 30);
  v4[3232] = 1;
  v15 = *(this + 21);
  if (!v15)
  {
    goto LABEL_20;
  }

LABEL_17:
  if (v15 == (this + 144))
  {
    v21 = v20;
    (*(*v15 + 24))(v15, v20);
  }

  else
  {
    v21 = (*(*v15 + 16))(v15);
  }

LABEL_22:
  std::__function::__value_func<__CFDictionary const* ()(__CFDictionary const*)>::swap[abi:nn200100](v20, (v4 + 3240));
  if (v21 == v20)
  {
    (*(*v21 + 32))(v21);
  }

  else if (v21)
  {
    (*(*v21 + 40))();
  }

  v4[3272] = *(this + 176);
  std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string const*,std::string const*>((v4 + 2792), *(this + 23), *(this + 24), 0xAAAAAAAAAAAAAAABLL * ((*(this + 24) - *(this + 23)) >> 3));
  v4[2920] = 1;
  v17 = *(this + 208);
  v16 = this + 208;
  v4[3064] = v17;
  v18 = *(v4 + 390);
  if (!v18)
  {
LABEL_28:
    std::__throw_bad_function_call[abi:nn200100]();
  }

  result = (*(*v18 + 48))(v18, v16);
  *a2 = v4;
  return result;
}

CFDictionaryRef mlir::mpsx::getCFResourceInfosForANEC(uint64_t a1)
{
  v1 = a1;
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 12);
  v3 = operator new[](8 * v2);
  bzero(v3, 8 * v2);
  v4 = operator new[](8 * v2);
  bzero(v4, 8 * v2);
  v5 = *(v1 + 8);
  if (v5)
  {
      ;
    }
  }

  else
  {
    i = *v1;
  }

  v8 = *MEMORY[0x1E695E480];
  v26 = *v1 + 8 * v5;
  if (i != v26)
  {
    v24 = v1;
    v9 = 0;
    bytesDeallocator = *MEMORY[0x1E695E498];
    v10 = *i;
    while (1)
    {
      v11 = *v10;
      if (*v10 >= 0x7FFFFFFFFFFFFFF8uLL)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      if (v11 >= 0x17)
      {
        if ((v11 | 7) == 0x17)
        {
          v13 = 25;
        }

        else
        {
          v13 = (v11 | 7) + 1;
        }

        p_dst = operator new(v13);
        *(&__dst + 1) = v11;
        v30 = v13 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v30) = *v10;
        p_dst = &__dst;
        if (!v11)
        {
          goto LABEL_21;
        }
      }

      memmove(p_dst, (v10 + 32), v11);
LABEL_21:
      *(p_dst + v11) = 0;
      if (v30 >= 0)
      {
        v14 = &__dst;
      }

      else
      {
        v14 = __dst;
      }

      v15 = CFStringCreateWithCString(v8, v14, 0x8000100u);
      if (SHIBYTE(v30) < 0)
      {
        operator delete(__dst);
      }

      *(v3 + v9) = v15;
      v16 = CFDataCreateWithBytesNoCopy(0, *(v10 + 8), *(v10 + 16), bytesDeallocator);
      valuePtr = *(v10 + 24);
      v17 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
      __dst = xmmword_1E86D3478;
      values[0] = v16;
      values[1] = v17;
      v18 = CFDictionaryCreate(v8, &__dst, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFRelease(v16);
      CFRelease(v17);
      *(v4 + v9) = v18;
      do
      {
        v19 = i[1];
        ++i;
        v10 = v19;
        if (v19)
        {
          v20 = v10 == -8;
        }

        else
        {
          v20 = 1;
        }
      }

      while (v20);
      ++v9;
      if (i == v26)
      {
        v1 = v24;
        v2 = *(v24 + 12);
        break;
      }
    }
  }

  v21 = CFDictionaryCreate(v8, v3, v4, v2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (*(v1 + 12))
  {
    v22 = 0;
    do
    {
      CFRelease(*(v3 + v22));
      CFRelease(*(v4 + v22++));
    }

    while (v22 != *(v1 + 12));
  }

  operator delete[](v4);
  operator delete[](v3);
  return v21;
}

mlir::Operation **llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::mpsx::FuncValidation::FuncValidation(mlir::func::FuncOp)::$_0>(mlir::Operation **result, mlir::Operation *a2)
{
  if (**result != a2)
  {
    v2 = result[1];
    v3 = result[2];
    v4 = (*v3)++;
    return mlir::mpsx::FuncValidation::create(v2, a2, v4);
  }

  return result;
}

void *llvm::DenseMap<unsigned long long,mlir::Operation *,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::Operation *>>::grow(uint64_t a1, int a2)
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
        goto LABEL_41;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -1;
        *v13 = -1;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -1;
          v10 += 2;
        }

        while (v10 != &result[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v25 = *v17;
        if (*v17 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v26 = v16 & (((0xBF58476D1CE4E5B9 * v25) >> 31) ^ (484763065 * v25));
          v23 = (*a1 + 16 * v26);
          v27 = *v23;
          if (v25 != *v23)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -1)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -2;
              }

              if (v30)
              {
                v28 = v23;
              }

              v31 = v26 + v29++;
              v26 = v31 & v16;
              v23 = (*a1 + 16 * (v31 & v16));
              v27 = *v23;
              if (v25 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v28)
            {
              v23 = v28;
            }
          }

LABEL_23:
          v24 = *(v17 + 1);
          *v23 = v25;
          v23[1] = v24;
          *(a1 + 8) = ++v15;
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
      goto LABEL_18;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -1;
      *v20 = -1;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_18:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -1;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::mpsx::OpValidation,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::mpsx::OpValidation>>,mlir::Operation *,mlir::mpsx::OpValidation,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::mpsx::OpValidation>>::LookupBucketFor<mlir::Operation *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 40 * v6);
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
        v7 = (v4 + 40 * (v13 & v5));
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

void *llvm::DenseMap<mlir::Operation *,mlir::mpsx::OpValidation,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::mpsx::OpValidation>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(40 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v11 = 5 * v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::mpsx::OpValidation,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::mpsx::OpValidation>>,mlir::Operation *,mlir::mpsx::OpValidation,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::mpsx::OpValidation>>::moveFromOldBuckets(a1, v4, &v4[v11], v10);

    llvm::deallocate_buffer(v4, (v11 * 8));
  }

  *(a1 + 8) = 0;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = 40 * v12 - 40;
    if (v13 < 0x28)
    {
      v14 = result;
LABEL_14:
      v18 = &result[5 * v12];
      do
      {
        *v14 = -4096;
        v14 += 5;
      }

      while (v14 != v18);
      return result;
    }

    v15 = v13 / 0x28 + 1;
    v14 = &result[5 * (v15 & 0xFFFFFFFFFFFFFFELL)];
    v16 = result;
    v17 = v15 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v16 = -4096;
      v16[5] = -4096;
      v16 += 10;
      v17 -= 2;
    }

    while (v17);
    if (v15 != (v15 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::mpsx::OpValidation,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::mpsx::OpValidation>>,mlir::Operation *,mlir::mpsx::OpValidation,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::mpsx::OpValidation>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v4 = a2;
  *(result + 8) = 0;
  v5 = *(result + 16);
  if (v5)
  {
    v6 = *result;
    v7 = 40 * v5 - 40;
    if (v7 < 0x28)
    {
      v8 = *result;
LABEL_7:
      v12 = &v6[5 * v5];
      do
      {
        *v8 = -4096;
        v8 += 5;
      }

      while (v8 != v12);
      goto LABEL_9;
    }

    v9 = v7 / 0x28 + 1;
    v8 = &v6[5 * (v9 & 0xFFFFFFFFFFFFFFELL)];
    v10 = *result;
    v11 = v9 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v10 = -4096;
      v10[5] = -4096;
      v10 += 10;
      v11 -= 2;
    }

    while (v11);
    if (v9 != (v9 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      v16 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v17 = *(result + 16) - 1;
        v18 = v17 & ((v16 >> 4) ^ (v16 >> 9));
        v13 = *result + 40 * v18;
        v19 = *v13;
        if (v16 != *v13)
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
              v20 = v13;
            }

            v23 = v18 + v21++;
            v18 = v23 & v17;
            v13 = *result + 40 * (v23 & v17);
            v19 = *v13;
            if (v16 == *v13)
            {
              goto LABEL_13;
            }
          }

          if (v20)
          {
            v13 = v20;
          }
        }

LABEL_13:
        *v13 = v16;
        *(v13 + 8) = *(v4 + 8);
        *(v13 + 32) = 0;
        *(v13 + 16) = 0;
        *(v13 + 24) = 0;
        *(v13 + 16) = v4[2];
        v4[2] = 0;
        *(v13 + 24) = *(v4 + 6);
        *(v4 + 6) = 0;
        v14 = *(v13 + 28);
        *(v13 + 28) = *(v4 + 7);
        *(v4 + 7) = v14;
        v15 = *(v13 + 32);
        *(v13 + 32) = *(v4 + 8);
        *(v4 + 8) = v15;
        ++*(result + 8);
        llvm::deallocate_buffer(0, (8 * v15));
      }

      v4 += 5;
    }

    while (v4 != a3);
  }

  return result;
}

llvm::StringMapImpl ***_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4mpsx16ModuleValidationC1ENS1_8ModuleOpEE3__0NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESO_E4typeES3_OT1_EUlS3_E_EEvlS3_(llvm::StringMapImpl ***result, mlir::ForwardIterator *a2)
{
  if (a2 && *(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v35[1] = v5;
    v35[2] = v4;
    v35[3] = v3;
    v35[4] = v2;
    v35[5] = v6;
    v35[6] = v7;
    v8 = *result;
    v33 = a2;
    v9 = *v8;
    SymName = mlir::func::FuncOp::getSymName(&v33);
    v12 = v11;
    v34 = 0;
    v35[0] = v33;
    v22[0] = 0;
    v22[1] = 0;
    v23 = 0;
    v24[0] = 0;
    v24[1] = 0;
    v25 = 0;
    v26 = v35;
    v27 = v22;
    v28[0] = &v34;
    mlir::detail::walk<mlir::ForwardIterator>(v33, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::mpsx::FuncValidation::FuncValidation(mlir::func::FuncOp)::$_0>, &v26, 1);
    v26 = SymName;
    v27 = v12;
    v28[0] = v22[0];
    v13 = v22[1];
    *v22 = 0u;
    v28[1] = v13;
    v29 = v23;
    v23 = 0;
    v30 = v24[0];
    v14 = v24[1];
    *v24 = 0u;
    v31 = v14;
    v32 = v25;
    v25 = 0;
    v17 = llvm::StringMapImpl::hash(SymName, v12, v15, v16);
    llvm::StringMap<mlir::mpsx::FuncValidation,llvm::MallocAllocator>::try_emplace_with_hash<mlir::mpsx::FuncValidation>(v9, SymName, v12, v17, v28);
    v18 = v30;
    if (v32)
    {
      v19 = (v30 + 32);
      v20 = 40 * v32;
      do
      {
        if ((*(v19 - 4) | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          llvm::deallocate_buffer(*(v19 - 2), (8 * *v19));
        }

        v19 += 10;
        v20 -= 40;
      }

      while (v20);
      v18 = v30;
      v21 = 40 * v32;
    }

    else
    {
      v21 = 0;
    }

    llvm::deallocate_buffer(v18, v21);
  }

  return result;
}

uint64_t *llvm::StringMap<mlir::mpsx::FuncValidation,llvm::MallocAllocator>::try_emplace_with_hash<mlir::mpsx::FuncValidation>(llvm::StringMapImpl *a1, const void *a2, size_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  i = (*a1 + 8 * v9);
  v11 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v11)
  {
    while (!v11 || v11 == -8)
    {
      v12 = i[1];
      ++i;
      v11 = v12;
    }

    return i;
  }

  buffer = llvm::allocate_buffer(a3 + 57, 8uLL);
  v14 = buffer;
  v15 = buffer + 56;
  if (a3)
  {
    memcpy(buffer + 56, a2, a3);
  }

  v15[a3] = 0;
  v16 = *a5;
  *v14 = a3;
  *(v14 + 1) = v16;
  v17 = a5[1];
  *a5 = 0u;
  *(v14 + 2) = v17;
  *(v14 + 6) = *(a5 + 4);
  *(a5 + 4) = 0;
  *(v14 + 4) = a5[3];
  v18 = a5[4];
  *(a5 + 3) = 0u;
  *(v14 + 5) = v18;
  *(v14 + 12) = *(a5 + 10);
  *(a5 + 10) = 0;
  *i = v14;
  ++*(a1 + 3);
    ;
  }

  return i;
}

mlir::mpsx::_anonymous_namespace_::ANERegionFormationPass *mlir::mpsx::anonymous namespace::ANERegionFormationPass::ANERegionFormationPass(mlir::mpsx::_anonymous_namespace_::ANERegionFormationPass *this)
{
  v12 = *MEMORY[0x1E69E9840];
  *(this + 2) = "builtin.module";
  *(this + 3) = 14;
  *(this + 32) = 1;
  *(this + 40) = 0;
  *(this + 120) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 22) = 0;
  *(this + 23) = this + 200;
  *(this + 24) = 0x400000000;
  *(this + 29) = this + 248;
  *(this + 30) = 0x400000000;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 37) = 0x1000000000;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 42) = 0;
  *this = &unk_1F5B00E50;
  v2 = this + 344;
  *&v8 = "The family to target for ANEC region formation (default A12).";
  *(&v8 + 1) = 61;
  v7 = 0;
  *&v6 = &v7;
  *&v9 = &v10;
  *(&v9 + 1) = 0x400000000;
  llvm::SmallVectorBase<unsigned int>::grow_pod(&v9, &v10, 8uLL, 40);
  v3 = DWORD2(v9);
  v4 = v9 + 40 * DWORD2(v9);
  *v4 = "A12";
  *(v4 + 8) = 3;
  *(v4 + 16) = 0;
  *(v4 + 24) = "A12 family";
  *(v4 + 32) = 10;
  *(v4 + 40) = "A13";
  *(v4 + 48) = 3;
  *(v4 + 56) = 1;
  *(v4 + 64) = "A13 family";
  *(v4 + 72) = 10;
  *(v4 + 80) = "A14";
  *(v4 + 88) = 3;
  *(v4 + 96) = 2;
  *(v4 + 104) = "A14 family";
  *(v4 + 112) = 10;
  *(v4 + 120) = "A15";
  *(v4 + 128) = 3;
  *(v4 + 136) = 3;
  *(v4 + 144) = "A15 family";
  *(v4 + 152) = 10;
  *(v4 + 160) = "A16";
  *(v4 + 168) = 3;
  *(v4 + 176) = 4;
  *(v4 + 184) = "A16 family";
  *(v4 + 192) = 10;
  *(v4 + 200) = "A17";
  *(v4 + 208) = 3;
  *(v4 + 216) = 5;
  *(v4 + 224) = "A17 family";
  *(v4 + 232) = 10;
  *(v4 + 240) = "A18";
  *(v4 + 248) = 3;
  *(v4 + 256) = 6;
  *(v4 + 264) = "A18 family";
  *(v4 + 272) = 10;
  *(v4 + 280) = "A11Legacy";
  *(v4 + 288) = 9;
  *(v4 + 296) = 7;
  *(v4 + 304) = "A11 Legacy family";
  *(v4 + 312) = 17;
  DWORD2(v9) = v3 + 8;
  mlir::detail::PassOptions::Option<mlir::anec::Family,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::Option<llvm::cl::desc,llvm::cl::initializer<mlir::anec::Family>,llvm::cl::ValuesClass>(v2, this + 152, "target-family", 13, &v8, &v6, &v9);
  *(this + 43) = &unk_1F5B00EC0;
  *(this + 118) = &unk_1F5B00F40;
  if (v9 != &v10)
  {
    free(v9);
  }

  *&v9 = "If device hints cannot be followed then compilation has failed.";
  *(&v9 + 1) = 63;
  LOBYTE(v6) = 0;
  *&v8 = &v6;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(this + 960, this + 152, "strict-hints", 12, &v9, &v8);
  *(this + 120) = &unk_1F5AFB130;
  *(this + 144) = &unk_1F5AFB1B0;
  *&v9 = "If true, placement uses the cost model.";
  *(&v9 + 1) = 39;
  LOBYTE(v6) = 0;
  *&v8 = &v6;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(this + 1168, this + 152, "use-cost-model", 14, &v9, &v8);
  *(this + 146) = &unk_1F5AFB130;
  *(this + 170) = &unk_1F5AFB1B0;
  *&v9 = "If true, everything will be placed on the host. (requires use-cost-model)";
  *(&v9 + 1) = 73;
  LOBYTE(v6) = 0;
  *&v8 = &v6;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(this + 1376, this + 152, "force-host-placement", 20, &v9, &v8);
  *(this + 172) = &unk_1F5AFB130;
  *(this + 196) = &unk_1F5AFB1B0;
  *&v9 = "If true, everything will be placed on the ane if possible. (requires use-cost-model)";
  *(&v9 + 1) = 84;
  LOBYTE(v6) = 0;
  *&v8 = &v6;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(this + 1584, this + 152, "force-ane-placement", 19, &v9, &v8);
  *(this + 198) = &unk_1F5AFB130;
  *(this + 222) = &unk_1F5AFB1B0;
  *&v9 = "The number of gpu cores.";
  *(&v9 + 1) = 24;
  LODWORD(v6) = 1;
  *&v8 = &v6;
  mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(this + 1792, this + 152, "gpu-core-count", 14, &v9, &v8);
  *(this + 224) = &unk_1F5AFEE68;
  *(this + 248) = &unk_1F5AFEEE8;
  *&v9 = "If true, print a report of which ops failed to be placed on ANE.";
  *(&v9 + 1) = 64;
  LOBYTE(v6) = 0;
  *&v8 = &v6;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(this + 2000, this + 152, "print-placement-report", 22, &v9, &v8);
  *(this + 250) = &unk_1F5AFB130;
  *(this + 274) = &unk_1F5AFB1B0;
  *&v9 = "If true, failing to perform ANE Compiler validation will result in compilation failure.";
  *(&v9 + 1) = 87;
  LOBYTE(v6) = 0;
  *&v8 = &v6;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(this + 2208, this + 152, "failed-anec-validation-is-failure", 33, &v9, &v8);
  *(this + 276) = &unk_1F5AFB130;
  *(this + 300) = &unk_1F5AFB1B0;
  *&v9 = "Postfix appended to the name of the ANE regions created.";
  *(&v9 + 1) = 56;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(this + 2416, this + 152, "region-name-postfix", 19, &v9);
  *(this + 302) = &unk_1F5AFC930;
  *(this + 331) = &unk_1F5AFC9B0;
  *&v6 = "Comma seperated list of main functions";
  *(&v6 + 1) = 38;
  *&v9 = "main-function-names";
  *(&v9 + 1) = 19;
  v8 = this + 152;
  llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::list<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>(this + 2664, &v9, &v8, &v6);
  *(this + 2920) = 0;
  *(this + 333) = &unk_1F5B008F8;
  *(this + 364) = &unk_1F5B00978;
  *(this + 366) = &unk_1F5B3E560;
  *&v8 = this + 2912;
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](this + 312, &v8);
  *(this + 333) = &unk_1F5B00838;
  *(this + 364) = &unk_1F5B008B8;
  *&v9 = "If true, and multiple ANE regions can be created in a function, will apply the cost model to not place regions of ops on the ANE.";
  *(&v9 + 1) = 129;
  LOBYTE(v6) = 1;
  *&v8 = &v6;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(this + 2936, this + 152, "reduce-multi-region-greedy-placement", 36, &v9, &v8);
  *(this + 367) = &unk_1F5AFB130;
  *(this + 391) = &unk_1F5AFB1B0;
  *this = &unk_1F5B00DE0;
  *(this + 3200) = 0;
  *(this + 3208) = 0;
  *(this + 3232) = 0;
  *(this + 408) = 0;
  *(this + 3144) = 0u;
  *(this + 3160) = 0u;
  *(this + 3176) = 0;
  mlir::getMPSVersionFromANEC(&v9);
  if (*(this + 3200) == v11)
  {
    if (*(this + 3200))
    {
      *(this + 398) = *(&v9 + 1);
      *(this + 798) = v10;
    }
  }

  else if (*(this + 3200))
  {
    *(this + 3200) = 0;
  }

  else
  {
    *(this + 397) = &unk_1F5B01218;
    *(this + 398) = *(&v9 + 1);
    *(this + 798) = v10;
    *(this + 3200) = 1;
  }

  mlir::getMPSSPIVersionFromANEC(&v9);
  if (*(this + 3232) == v11)
  {
    if (*(this + 3232))
    {
      *(this + 402) = *(&v9 + 1);
      *(this + 806) = v10;
    }
  }

  else if (*(this + 3232))
  {
    *(this + 3232) = 0;
  }

  else
  {
    *(this + 401) = &unk_1F5B01238;
    *(this + 402) = *(&v9 + 1);
    *(this + 806) = v10;
    *(this + 3232) = 1;
  }

  return this;
}

void mlir::mpsx::anonymous namespace::ANERegionFormationPass::~ANERegionFormationPass(mlir::mpsx::_anonymous_namespace_::ANERegionFormationPass *this)
{
  *this = &unk_1F5B00DE0;
  v2 = this + 3240;
  v3 = *(this + 408);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    if ((*(this + 3175) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  if (*(this + 3175) < 0)
  {
LABEL_9:
    operator delete(*(this + 394));
  }

LABEL_5:
  *this = &unk_1F5B00E50;
  *(this + 367) = &unk_1F5B3E720;
  v4 = *(this + 390);
  if (v4 == (this + 3096))
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  *(this + 367) = &unk_1F5B3E1D8;
  v5 = *(this + 379);
  if (v5 != *(this + 378))
  {
    free(v5);
  }

  v6 = *(this + 375);
  if (v6 != this + 3016)
  {
    free(v6);
  }

  llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(this + 333);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 2416);
  *(this + 276) = &unk_1F5B3E720;
  v7 = *(this + 299);
  if (v7 == (this + 2368))
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))(v7);
  }

  *(this + 276) = &unk_1F5B3E1D8;
  v8 = *(this + 288);
  if (v8 != *(this + 287))
  {
    free(v8);
  }

  v9 = *(this + 284);
  if (v9 != this + 2288)
  {
    free(v9);
  }

  *(this + 250) = &unk_1F5B3E720;
  v10 = *(this + 273);
  if (v10 == (this + 2160))
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  *(this + 250) = &unk_1F5B3E1D8;
  v11 = *(this + 262);
  if (v11 != *(this + 261))
  {
    free(v11);
  }

  v12 = *(this + 258);
  if (v12 != this + 2080)
  {
    free(v12);
  }

  *(this + 224) = &unk_1F5B3E5A8;
  v13 = *(this + 247);
  if (v13 == (this + 1952))
  {
    (*(*v13 + 32))(v13);
  }

  else if (v13)
  {
    (*(*v13 + 40))(v13);
  }

  *(this + 224) = &unk_1F5B3E1D8;
  v14 = *(this + 236);
  if (v14 != *(this + 235))
  {
    free(v14);
  }

  v15 = *(this + 232);
  if (v15 != this + 1872)
  {
    free(v15);
  }

  *(this + 198) = &unk_1F5B3E720;
  v16 = *(this + 221);
  if (v16 == (this + 1744))
  {
    (*(*v16 + 32))(v16);
  }

  else if (v16)
  {
    (*(*v16 + 40))(v16);
  }

  *(this + 198) = &unk_1F5B3E1D8;
  v17 = *(this + 210);
  if (v17 != *(this + 209))
  {
    free(v17);
  }

  v18 = *(this + 206);
  if (v18 != this + 1664)
  {
    free(v18);
  }

  *(this + 172) = &unk_1F5B3E720;
  v19 = *(this + 195);
  if (v19 == (this + 1536))
  {
    (*(*v19 + 32))(v19);
  }

  else if (v19)
  {
    (*(*v19 + 40))(v19);
  }

  *(this + 172) = &unk_1F5B3E1D8;
  v20 = *(this + 184);
  if (v20 != *(this + 183))
  {
    free(v20);
  }

  v21 = *(this + 180);
  if (v21 != this + 1456)
  {
    free(v21);
  }

  *(this + 146) = &unk_1F5B3E720;
  v22 = *(this + 169);
  if (v22 == (this + 1328))
  {
    (*(*v22 + 32))(v22);
  }

  else if (v22)
  {
    (*(*v22 + 40))(v22);
  }

  *(this + 146) = &unk_1F5B3E1D8;
  v23 = *(this + 158);
  if (v23 != *(this + 157))
  {
    free(v23);
  }

  v24 = *(this + 154);
  if (v24 != this + 1248)
  {
    free(v24);
  }

  *(this + 120) = &unk_1F5B3E720;
  v25 = *(this + 143);
  if (v25 == (this + 1120))
  {
    (*(*v25 + 32))(v25);
  }

  else if (v25)
  {
    (*(*v25 + 40))(v25);
  }

  *(this + 120) = &unk_1F5B3E1D8;
  v26 = *(this + 132);
  if (v26 != *(this + 131))
  {
    free(v26);
  }

  v27 = *(this + 128);
  if (v27 != this + 1040)
  {
    free(v27);
  }

  mlir::detail::PassOptions::Option<mlir::anec::Family,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::~Option(this + 43);
  *this = &unk_1F5B01A70;
  v28 = *(this + 39);
  if (v28)
  {
    *(this + 40) = v28;
    operator delete(v28);
  }

  if (*(this + 73))
  {
    v29 = *(this + 72);
    if (v29)
    {
      v30 = 0;
      do
      {
        v31 = *(*(this + 35) + v30);
        if (v31 != -8 && v31 != 0)
        {
          llvm::deallocate_buffer(v31, (*v31 + 17));
        }

        v30 += 8;
      }

      while (8 * v29 != v30);
    }
  }

  free(*(this + 35));
  v33 = *(this + 29);
  if (v33 != this + 248)
  {
    free(v33);
  }

  v34 = *(this + 23);
  if (v34 != this + 200)
  {
    free(v34);
  }

  v35 = *(this + 16);
  if (v35)
  {
    *(this + 17) = v35;
    operator delete(v35);
  }

  if (*(this + 120) == 1)
  {
    v36 = *(this + 8);
    if (v36 != *(this + 7))
    {
      free(v36);
    }
  }
}

{

  operator delete(v1);
}

void *mlir::mpsx::ANERegionFormationPassBase<mlir::mpsx::anonymous namespace::ANERegionFormationPass>::getDependentDialects(int a1, uint64_t ***a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5AFCC40;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::placement::PlacementDialect,void>::id, "placement", 9uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFAEA8;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mpsx::MPSXDialect,void>::id, "mpsx", 4uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFAE60;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mps::MPSDialect,void>::id, "mps", 3uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFB318;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mps_spi::MPSSPIDialect,void>::id, "mps_spi", 7uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AF27A8;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::memref::MemRefDialect,void>::id, "memref", 6uLL, v4);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void mlir::mpsx::anonymous namespace::ANERegionFormationPass::runOnOperation(mlir::mpsx::_anonymous_namespace_::ANERegionFormationPass *this)
{
  v144 = *MEMORY[0x1E69E9840];
  mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  mlir::getDeviceInfo(*(this + 118), *(this + 480), v65);
  v63 = 0;
  v61 = *(this + 1712);
  v62 = *(this + 1504);
  v64 = v65;
  Context = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  v130[2] = 0;
  v130[0] = &unk_1F5AFD7B0;
  v130[1] = 0;
  v131 = 0;
  v137 = 0;
  v136 = 0;
  v132 = v134;
  v133 = 0;
  v134[1] = 0;
  v134[0] = 0;
  v135 = 0;
  v138 = 0x1000000000;
  v139 = 0;
  v140 = 0;
  v141 = 0x2800000000;
  v142 = 0;
  v143 = Context;
  v83 = &v85;
  v85 = "func";
  *&v86[0] = 4;
  v84 = 0x200000001;
  mlir::ConversionTarget::setDialectAction(v130, &v85, 1, 2uLL);
  if (v83 != &v85)
  {
    free(v83);
  }

  v83 = &v85;
  v85 = "memref";
  *&v86[0] = 6;
  v84 = 0x200000001;
  mlir::ConversionTarget::setDialectAction(v130, &v85, 1, 2uLL);
  if (v83 != &v85)
  {
    free(v83);
  }

  v3 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v59 = 0;
  v60 = 0;
  v58[0] = mlir::Attribute::getContext((v3 + 24));
  v58[1] = 0;
  v4 = *(v3 + 16);
  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  v59 = v4;
  v60 = v8;
  v57 = 0;
  if (*(this + 393))
  {
    v9 = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
    memset(&v108[8], 0, 32);
    *v108 = v9;
    v109 = &v111;
    v110 = 0x600000000;
    v113 = 0;
    v112 = 0;
    v114 = 0;
    *&v116 = 0;
    v115 = 0;
    *(&v116 + 1) = 0x2800000000;
    v117 = 0;
    *&v118 = 0;
    *(&v118 + 1) = 0x2800000000;
    v50 = 0;
    v49 = 0;
    v11 = mlir::ANEProperties::createFromModule((*(this + 5) & 0xFFFFFFFFFFFFFFF8), v10);
    v49 = v11;
    v50 = BYTE2(v11);
    v12 = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
    mlir::ScopedANEProperties::ScopedANEProperties(v48, v12, &v49);
    v106 = 0;
    v107 = 0u;
    v102 = 0;
    memset(v98, 0, sizeof(v98));
    v96 = 0;
    v92 = 0;
    memset(v94, 0, sizeof(v94));
    memset(v90, 0, sizeof(v90));
    v89 = 0u;
    memset(v88, 0, sizeof(v88));
    v87 = 0u;
    memset(v86, 0, sizeof(v86));
    v83 = &unk_1F5AFD910;
    v84 = v86;
    v85 = 0x400000000;
    *&v87 = v88;
    HIDWORD(v87) = 2;
    *&v89 = v90;
    HIDWORD(v89) = 2;
    v91 = v94;
    v93 = 2;
    v95 = v98;
    v97 = 2;
    v100 = 0;
    v99 = 0;
    v101 = 0;
    v104 = 0;
    v103 = 0;
    v105 = 0;
    llvm::sys::RWMutexImpl::RWMutexImpl(&v107);
    *(&v107 + 1) = 0;
    v83 = &unk_1F5B01258;
    v78 = &unk_1F5B01278;
    *&v80.f64[1] = &v78;
    mlir::TypeConverter::registerConversion(&v83, &v78, v13, v14);
    if (*&v80.f64[1] == &v78)
    {
      (*(**&v80.f64[1] + 32))(*&v80.f64[1]);
    }

    else if (*&v80.f64[1])
    {
      (*(**&v80.f64[1] + 40))();
    }

    v78 = &unk_1F5B012C0;
    *&v80.f64[1] = &v78;
    mlir::TypeConverter::registerConversion(&v83, &v78, v15, v16);
    if (*&v80.f64[1] == &v78)
    {
      (*(**&v80.f64[1] + 32))(*&v80.f64[1]);
    }

    else if (*&v80.f64[1])
    {
      (*(**&v80.f64[1] + 40))();
    }

    *__p = *v108;
    v67 = *&v108[16];
    memset(&v108[8], 0, 32);
    v68 = *&v108[32];
    v69[0] = &v70;
    v69[1] = 0x600000000;
    if (v110)
    {
      llvm::SmallVectorImpl<std::unique_ptr<mlir::PDLPatternConfigSet>>::operator=(v69, &v109);
    }

    v71 = v112;
    v112 = 0;
    v72 = v113;
    v113 = 0;
    v73 = v114;
    v114 = 0;
    v75 = v116;
    v33 = v115;
    v115 = 0;
    *&v116 = 0;
    DWORD2(v116) = 0;
    v74 = v33;
    v76 = v117;
    v77 = v118;
    v117 = 0;
    *&v118 = 0;
    DWORD2(v118) = 0;
    v79 = v58;
    v34.f64[0] = NAN;
    v34.f64[1] = NAN;
    v80 = vnegq_f64(v34);
    v81 = 0;
    v78 = &unk_1F5B01308;
    mlir::ConversionTarget::ConversionTarget(&v82, v130, v31, v32);
  }

  if (*(this + 3200) != 1 || *(this + 3232) != 1)
  {
LABEL_45:
    if (*(this + 2336) == 1)
    {
      v78 = (*(this + 5) & 0xFFFFFFFFFFFFFFF8);
      v83 = "missing module validation information";
      WORD4(v86[0]) = 259;
      mlir::OpState::emitOpError(&v78, &v83, v119);
      if (v119[0])
      {
        mlir::InFlightDiagnostic::report(v119);
      }

      if (v127 == 1)
      {
        if (v126 != &v127)
        {
          free(v126);
        }

        v35 = v124;
        if (v124)
        {
          v36 = v125;
          v37 = v124;
          if (v125 != v124)
          {
            do
            {
              v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
            }

            while (v36 != v35);
            v37 = v124;
          }

          v125 = v35;
          operator delete(v37);
        }

        v38 = v122;
        if (v122)
        {
          v39 = v123;
          v40 = v122;
          if (v123 != v122)
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
            v40 = v122;
          }

          v123 = v38;
          operator delete(v40);
        }

        if (v120 != &v121)
        {
          free(v120);
        }
      }

      *(this + 5) |= 4uLL;
    }

    v43 = v57;
    v57 = 0;
    if (v43)
    {
      if (*(v43 + 12))
      {
        v44 = *(v43 + 8);
        if (v44)
        {
          v45 = 0;
          do
          {
            v46 = *(*v43 + v45);
            if (v46 != -8 && v46 != 0)
            {
              llvm::StringMapEntry<mlir::mpsx::FuncValidation>::Destroy<llvm::MallocAllocator>(v46, v43, v6, v7);
            }

            v45 += 8;
          }

          while (8 * v44 != v45);
        }
      }

      free(*v43);
      operator delete(v43);
    }

    mlir::ConversionTarget::~ConversionTarget(v130, v5, v6, v7);
  }

  v17 = *(this + 5);
  v18 = *(this + 398);
  v54 = &unk_1F5B01218;
  v55 = v18;
  v56 = *(this + 798);
  v19 = *(this + 402);
  v51 = &unk_1F5B01238;
  v52 = v19;
  v53 = *(this + 806);
  if (*(this + 3175) >= 0)
  {
    v20 = *(this + 3175);
  }

  else
  {
    v20 = *(this + 395);
  }

  v21 = *(this + 408);
  if (v21)
  {
    if (v21 != (this + 3240))
    {
      v129 = (*(*v21 + 16))(v21);
      if (v20)
      {
        goto LABEL_17;
      }

      goto LABEL_40;
    }

    v129 = v128;
    (*(*v21 + 24))(v21, v128);
    if (!v20)
    {
LABEL_40:
      if (v129 == v128)
      {
        (*(*v129 + 32))(v129);
      }

      else if (v129)
      {
        (*(*v129 + 40))();
      }

      goto LABEL_45;
    }
  }

  else
  {
    v129 = 0;
    if (!v20)
    {
      goto LABEL_40;
    }
  }

LABEL_17:
  v22 = operator new(0x18uLL);
  *v22 = 0;
  v22[1] = 0;
  v22[2] = 0x3800000000;
  v78 = v22;
  v83 = &v78;
  v23 = mlir::detail::walk<mlir::ForwardIterator>((v17 & 0xFFFFFFFFFFFFFFF8), _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4mpsx16ModuleValidationC1ENS1_8ModuleOpEE3__0NS1_4func6FuncOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESO_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v83, 1);
  v26 = v57;
  v57 = v22;
  if (v26)
  {
    if (*(v26 + 12))
    {
      v27 = *(v26 + 8);
      if (v27)
      {
        v28 = 0;
        do
        {
          v29 = *(*v26 + v28);
          if (v29 != -8 && v29 != 0)
          {
            llvm::StringMapEntry<mlir::mpsx::FuncValidation>::Destroy<llvm::MallocAllocator>(v29, v26, v24, v25);
          }

          v28 += 8;
        }

        while (8 * v27 != v28);
      }
    }

    free(*v26);
    operator delete(v26);
  }

  mlir::Operation::CloneOptions::all(v23);
  mlir::Operation::clone();
}

uint64_t mlir::mpsx::ANERegionFormationPassBase<mlir::mpsx::anonymous namespace::ANERegionFormationPass>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14[20] = *MEMORY[0x1E69E9840];
  v4 = operator new(0xCD0uLL);
  v5 = *(a1 + 8);
  *(v4 + 1) = *(a1 + 16);
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 1) = v5;
  v4[40] = 0;
  v4[120] = 0;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 10) = 0u;
  *(v4 + 22) = 0;
  *(v4 + 23) = v4 + 200;
  *(v4 + 24) = 0x400000000;
  *(v4 + 29) = v4 + 248;
  *(v4 + 30) = 0x400000000;
  *(v4 + 35) = 0;
  *(v4 + 36) = 0;
  *(v4 + 74) = 0;
  *(v4 + 75) = 16;
  *(v4 + 19) = 0u;
  *(v4 + 20) = 0u;
  *(v4 + 42) = 0;
  *v4 = &unk_1F5B00E50;
  *&v12 = "The family to target for ANEC region formation (default A12).";
  *(&v12 + 1) = 61;
  v11 = 0;
  *&v10 = &v11;
  *&v13 = v14;
  *(&v13 + 1) = 0x400000000;
  llvm::SmallVectorBase<unsigned int>::grow_pod(&v13, v14, 8uLL, 40);
  v6 = DWORD2(v13);
  v7 = v13 + 40 * DWORD2(v13);
  *v7 = "A12";
  *(v7 + 8) = 3;
  *(v7 + 16) = 0;
  *(v7 + 24) = "A12 family";
  *(v7 + 32) = 10;
  *(v7 + 40) = "A13";
  *(v7 + 48) = 3;
  *(v7 + 56) = 1;
  *(v7 + 64) = "A13 family";
  *(v7 + 72) = 10;
  *(v7 + 80) = "A14";
  *(v7 + 88) = 3;
  *(v7 + 96) = 2;
  *(v7 + 104) = "A14 family";
  *(v7 + 112) = 10;
  *(v7 + 120) = "A15";
  *(v7 + 128) = 3;
  *(v7 + 136) = 3;
  *(v7 + 144) = "A15 family";
  *(v7 + 152) = 10;
  *(v7 + 160) = "A16";
  *(v7 + 168) = 3;
  *(v7 + 176) = 4;
  *(v7 + 184) = "A16 family";
  *(v7 + 192) = 10;
  *(v7 + 200) = "A17";
  *(v7 + 208) = 3;
  *(v7 + 216) = 5;
  *(v7 + 224) = "A17 family";
  *(v7 + 232) = 10;
  *(v7 + 240) = "A18";
  *(v7 + 248) = 3;
  *(v7 + 256) = 6;
  *(v7 + 264) = "A18 family";
  *(v7 + 272) = 10;
  *(v7 + 280) = "A11Legacy";
  *(v7 + 288) = 9;
  *(v7 + 296) = 7;
  *(v7 + 304) = "A11 Legacy family";
  *(v7 + 312) = 17;
  DWORD2(v13) = v6 + 8;
  mlir::detail::PassOptions::Option<mlir::anec::Family,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::Option<llvm::cl::desc,llvm::cl::initializer<mlir::anec::Family>,llvm::cl::ValuesClass>((v4 + 344), v4 + 152, "target-family", 13, &v12, &v10, &v13);
  *(v4 + 43) = &unk_1F5B00EC0;
  *(v4 + 118) = &unk_1F5B00F40;
  if (v13 != v14)
  {
    free(v13);
  }

  *&v13 = "If device hints cannot be followed then compilation has failed.";
  *(&v13 + 1) = 63;
  LOBYTE(v10) = 0;
  *&v12 = &v10;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((v4 + 960), v4 + 152, "strict-hints", 12, &v13, &v12);
  *(v4 + 120) = &unk_1F5AFB130;
  *(v4 + 144) = &unk_1F5AFB1B0;
  *&v13 = "If true, placement uses the cost model.";
  *(&v13 + 1) = 39;
  LOBYTE(v10) = 0;
  *&v12 = &v10;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((v4 + 1168), v4 + 152, "use-cost-model", 14, &v13, &v12);
  *(v4 + 146) = &unk_1F5AFB130;
  *(v4 + 170) = &unk_1F5AFB1B0;
  *&v13 = "If true, everything will be placed on the host. (requires use-cost-model)";
  *(&v13 + 1) = 73;
  LOBYTE(v10) = 0;
  *&v12 = &v10;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((v4 + 1376), v4 + 152, "force-host-placement", 20, &v13, &v12);
  *(v4 + 172) = &unk_1F5AFB130;
  *(v4 + 196) = &unk_1F5AFB1B0;
  *&v13 = "If true, everything will be placed on the ane if possible. (requires use-cost-model)";
  *(&v13 + 1) = 84;
  LOBYTE(v10) = 0;
  *&v12 = &v10;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((v4 + 1584), v4 + 152, "force-ane-placement", 19, &v13, &v12);
  *(v4 + 198) = &unk_1F5AFB130;
  *(v4 + 222) = &unk_1F5AFB1B0;
  *&v13 = "The number of gpu cores.";
  *(&v13 + 1) = 24;
  LODWORD(v10) = 1;
  *&v12 = &v10;
  mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>((v4 + 1792), v4 + 152, "gpu-core-count", 14, &v13, &v12);
  *(v4 + 224) = &unk_1F5AFEE68;
  *(v4 + 248) = &unk_1F5AFEEE8;
  *&v13 = "If true, print a report of which ops failed to be placed on ANE.";
  *(&v13 + 1) = 64;
  LOBYTE(v10) = 0;
  *&v12 = &v10;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((v4 + 2000), v4 + 152, "print-placement-report", 22, &v13, &v12);
  *(v4 + 250) = &unk_1F5AFB130;
  *(v4 + 274) = &unk_1F5AFB1B0;
  *&v13 = "If true, failing to perform ANE Compiler validation will result in compilation failure.";
  *(&v13 + 1) = 87;
  LOBYTE(v10) = 0;
  *&v12 = &v10;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((v4 + 2208), v4 + 152, "failed-anec-validation-is-failure", 33, &v13, &v12);
  *(v4 + 276) = &unk_1F5AFB130;
  *(v4 + 300) = &unk_1F5AFB1B0;
  *&v13 = "Postfix appended to the name of the ANE regions created.";
  *(&v13 + 1) = 56;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 2416), v4 + 152, "region-name-postfix", 19, &v13);
  *(v4 + 302) = &unk_1F5AFC930;
  *(v4 + 331) = &unk_1F5AFC9B0;
  *&v10 = "Comma seperated list of main functions";
  *(&v10 + 1) = 38;
  *&v13 = "main-function-names";
  *(&v13 + 1) = 19;
  v12 = (v4 + 152);
  llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::list<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>((v4 + 2664), &v13, &v12, &v10);
  v4[2920] = 0;
  *(v4 + 333) = &unk_1F5B008F8;
  *(v4 + 364) = &unk_1F5B00978;
  *(v4 + 366) = &unk_1F5B3E560;
  *&v12 = v4 + 2912;
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((v4 + 312), &v12);
  *(v4 + 333) = &unk_1F5B00838;
  *(v4 + 364) = &unk_1F5B008B8;
  *&v13 = "If true, and multiple ANE regions can be created in a function, will apply the cost model to not place regions of ops on the ANE.";
  *(&v13 + 1) = 129;
  LOBYTE(v10) = 1;
  *&v12 = &v10;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((v4 + 2936), v4 + 152, "reduce-multi-region-greedy-placement", 36, &v13, &v12);
  *(v4 + 367) = &unk_1F5AFB130;
  *(v4 + 391) = &unk_1F5AFB1B0;
  *v4 = &unk_1F5B00DE0;
  *(v4 + 393) = *(a1 + 3144);
  v8 = (v4 + 3152);
  if (*(a1 + 3175) < 0)
  {
    std::string::__init_copy_ctor_external(v8, *(a1 + 3152), *(a1 + 3160));
  }

  else
  {
    *&v8->__r_.__value_.__l.__data_ = *(a1 + 3152);
    *(v4 + 396) = *(a1 + 3168);
  }

  v4[3176] = 0;
  v4[3200] = 0;
  if (*(a1 + 3200) == 1)
  {
    *(v4 + 397) = &unk_1F5B01218;
    *(v4 + 398) = *(a1 + 3184);
    *(v4 + 798) = *(a1 + 3192);
    v4[3200] = 1;
  }

  v4[3208] = 0;
  v4[3232] = 0;
  if (*(a1 + 3232) == 1)
  {
    *(v4 + 401) = &unk_1F5B01238;
    *(v4 + 402) = *(a1 + 3216);
    *(v4 + 806) = *(a1 + 3224);
    v4[3232] = 1;
  }

  result = *(a1 + 3264);
  if (result)
  {
    if (result == a1 + 3240)
    {
      *(v4 + 408) = v4 + 3240;
      result = (*(*result + 24))(result);
    }

    else
    {
      result = (*(*result + 16))(result);
      *(v4 + 408) = result;
    }
  }

  else
  {
    *(v4 + 408) = 0;
  }

  v4[3272] = *(a1 + 3272);
  *a2 = v4;
  return result;
}

uint64_t mlir::detail::PassOptions::Option<mlir::anec::Family,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::Option<llvm::cl::desc,llvm::cl::initializer<mlir::anec::Family>,llvm::cl::ValuesClass>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _OWORD *a5, int **a6, uint64_t *a7)
{
  v17 = *MEMORY[0x1E69E9840];
  v11[0] = a3;
  v11[1] = a4;
  v14 = a2;
  v15 = 0;
  v9 = llvm::cl::opt<mlir::anec::Family,false,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<mlir::anec::Family>,llvm::cl::ValuesClass>(a1, v11, &v14, a5, a6, a7);
  *(v9 + 608) = 0;
  *v9 = &unk_1F5B00F80;
  *(v9 + 600) = &unk_1F5B01000;
  v14 = (v9 + 600);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((a2 + 160), &v14);
  v12[0] = &unk_1F5B011D0;
  v12[1] = a1;
  v16 = &v14;
  v13 = v12;
  v14 = &unk_1F5B011D0;
  v15 = a1;
  std::__function::__value_func<void ()(mlir::anec::Family const&)>::swap[abi:nn200100](&v14, a1 + 568);
  if (v16 == &v14)
  {
    (*(*v16 + 4))(v16);
  }

  else if (v16)
  {
    (*(*v16 + 5))();
  }

  if (v13 == v12)
  {
    (*(*v13 + 32))(v13);
  }

  else if (v13)
  {
    (*(*v13 + 40))();
  }

  return a1;
}

uint64_t llvm::cl::opt<mlir::anec::Family,false,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::handleOccurrence(uint64_t a1, __int16 a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v12 = 0;
  result = llvm::cl::parser<mlir::mps::ConstantAttributeConversionType>::parse(a1 + 152, a1, a3, a4, a5, a6, &v12);
  if ((result & 1) == 0)
  {
    v9 = result;
    *(a1 + 128) = v12;
    *(a1 + 12) = a2;
    v10 = *(a1 + 592);
    if (v10)
    {
      (*(*v10 + 48))(v10, &v12);
      return v9;
    }

    else
    {
      v11 = std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::opt<mlir::anec::Family,false,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::getValueExpectedFlagDefault(v11);
    }
  }

  return result;
}

uint64_t llvm::cl::opt<mlir::anec::Family,false,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::getValueExpectedFlagDefault(uint64_t a1)
{
  if (*(*(a1 + 160) + 24))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

void mlir::Pass::Option<mlir::anec::Family,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::~Option(void *a1)
{
  v1 = mlir::detail::PassOptions::Option<mlir::anec::Family,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::~Option(a1);

  operator delete(v1);
}

llvm::raw_ostream *llvm::cl::opt<mlir::anec::Family,false,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::printOptionValue(llvm::raw_ostream *result, unint64_t a2, char a3)
{
  if ((a3 & 1) != 0 || *(result + 148) != 1 || *(result + 36) != *(result + 32))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(result + 32);
    v6 = &unk_1F5B010A8;
    v8 = 1;
    v7 = v5;
    return llvm::cl::generic_parser_base::printGenericOptionDiff((result + 152), result, &v6, (result + 136), a2);
  }

  return result;
}

uint64_t llvm::cl::opt<mlir::anec::Family,false,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::setDefault(uint64_t result)
{
  if (*(result + 148) == 1)
  {
    *(result + 128) = *(result + 144);
  }

  else
  {
    *(result + 128) = 0;
  }

  return result;
}

uint64_t llvm::cl::opt<mlir::anec::Family,false,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::getExtraOptionNames(uint64_t result, uint64_t a2)
{
  if (!*(*(result + 160) + 24))
  {
    v3 = result + 152;
    result = (*(*(result + 152) + 16))(result + 152);
    if (result)
    {
      v4 = result;
      v5 = 0;
      do
      {
        result = (*(*v3 + 24))(v3, v5);
        v7 = *(a2 + 8);
        if (v7 >= *(a2 + 12))
        {
          v9 = v6;
          v10 = result;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v7 + 1, 16);
          v6 = v9;
          result = v10;
          v7 = *(a2 + 8);
        }

        v8 = (*a2 + 16 * v7);
        *v8 = result;
        v8[1] = v6;
        ++*(a2 + 8);
        v5 = (v5 + 1);
      }

      while (v4 != v5);
    }
  }

  return result;
}

void *mlir::detail::PassOptions::Option<mlir::anec::Family,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(this + 4);
  if (v5 <= *(this + 3) - v6)
  {
    if (v5)
    {
      v8 = v5;
      memcpy(v6, v4, v5);
      v6 = (*(this + 4) + v8);
      *(this + 4) = v6;
    }

    v7 = this;
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
  }

  if (v6 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 61);
  }

  else
  {
    *(v7 + 4) = v6 + 1;
    *v6 = 61;
  }

    ;
  }

  v10 = *(i - 44);
  v11 = *(i - 36);
  result = *(this + 4);
  if (v11 <= *(this + 3) - result)
  {
    if (v11)
    {
      v13 = *(i - 36);
      result = memcpy(result, v10, v11);
      *(this + 4) += v13;
    }
  }

  else
  {

    return llvm::raw_ostream::write(this, v10, v11);
  }

  return result;
}

uint64_t mlir::detail::PassOptions::Option<mlir::anec::Family,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result + 128) = *(a2 - 472);
  *(result + 608) = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::Pass::Option<mlir::anec::Family,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::~Option(uint64_t a1)
{
  v1 = mlir::detail::PassOptions::Option<mlir::anec::Family,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::~Option((a1 - 600));

  operator delete(v1);
}

uint64_t non-virtual thunk tomlir::detail::PassOptions::Option<mlir::anec::Family,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result - 472) = *(a2 - 472);
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t llvm::cl::opt<mlir::anec::Family,false,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<mlir::anec::Family>,llvm::cl::ValuesClass>(uint64_t a1, uint64_t *a2, char **a3, _OWORD *a4, int **a5, uint64_t *a6)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v12 = (a1 + 80);
  *(a1 + 64) = a1 + 80;
  v13 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v18 = *(a1 + 72);
  if (v18 >= *(a1 + 76))
  {
    v24 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v12, v18 + 1, 8);
    GeneralCategory = v24;
    LODWORD(v18) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v18) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F5B010A8;
  *(a1 + 144) = 0;
  *a1 = &unk_1F5B01040;
  *(a1 + 160) = a1;
  *(a1 + 168) = a1 + 184;
  *(a1 + 176) = 0x800000000;
  *(a1 + 152) = &unk_1F5B010E8;
  *(a1 + 568) = &unk_1F5B01188;
  *(a1 + 592) = a1 + 568;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1], v15, v16, v17);
  llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(a3, a1);
  *(a1 + 32) = *a4;
  v19 = **a5;
  *(a1 + 128) = v19;
  *(a1 + 148) = 1;
  *(a1 + 144) = v19;
  v20 = *(a6 + 2);
  if (v20)
  {
    v21 = *a6;
    v22 = v21 + 40 * v20;
    do
    {
      llvm::cl::parser<mlir::anec::Family>::addLiteralOption<int>(a1 + 152, *v21, *(v21 + 8), (v21 + 16), *(v21 + 24), *(v21 + 32));
      v21 += 40;
    }

    while (v21 != v22);
  }

  llvm::cl::Option::addArgument(a1);
  return a1;
}

void mlir::detail::PassOptions::Option<mlir::anec::Family,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::~Option(void *a1)
{
  v1 = mlir::detail::PassOptions::Option<mlir::anec::Family,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::~Option(a1);

  operator delete(v1);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<mlir::anec::Family,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::~Option(uint64_t a1)
{
  v1 = mlir::detail::PassOptions::Option<mlir::anec::Family,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::~Option((a1 - 600));

  operator delete(v1);
}

void *llvm::cl::opt<mlir::anec::Family,false,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::~opt(void *a1)
{
  *a1 = &unk_1F5B01040;
  v2 = a1 + 71;
  v3 = a1[74];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  a1[19] = &unk_1F5B01138;
  v4 = a1[21];
  if (v4 != a1 + 23)
  {
    free(v4);
  }

  *a1 = &unk_1F5B3E1D8;
  v5 = a1[12];
  if (v5 != a1[11])
  {
    free(v5);
  }

  v6 = a1[8];
  if (v6 != a1 + 10)
  {
    free(v6);
  }

  return a1;
}

void llvm::cl::opt<mlir::anec::Family,false,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::~opt(char *__p)
{
  *__p = &unk_1F5B01040;
  v2 = __p + 568;
  v3 = *(__p + 74);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(__p + 19) = &unk_1F5B01138;
  v4 = *(__p + 21);
  if (v4 != __p + 184)
  {
    free(v4);
  }

  *__p = &unk_1F5B3E1D8;
  v5 = *(__p + 12);
  if (v5 != *(__p + 11))
  {
    free(v5);
  }

  v6 = *(__p + 8);
  if (v6 != __p + 80)
  {
    free(v6);
  }

  operator delete(__p);
}

void *mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>::~GenericOptionParser(void *result)
{
  *result = &unk_1F5B01138;
  v1 = result[2];
  if (v1 != result + 4)
  {
    v2 = result;
    free(v1);
    return v2;
  }

  return result;
}

void mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>::~GenericOptionParser(void *a1)
{
  *a1 = &unk_1F5B01138;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    v3 = a1;
    free(v2);
    a1 = v3;
  }

  operator delete(a1);
}

void *llvm::cl::parser<mlir::anec::Family>::~parser(void *result)
{
  *result = &unk_1F5B01138;
  v1 = result[2];
  if (v1 != result + 4)
  {
    v2 = result;
    free(v1);
    return v2;
  }

  return result;
}

void llvm::cl::parser<mlir::anec::Family>::~parser(void *a1)
{
  *a1 = &unk_1F5B01138;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    v3 = a1;
    free(v2);
    a1 = v3;
  }

  operator delete(a1);
}

void *std::__function::__func<llvm::cl::opt<mlir::anec::Family,false,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::{lambda(mlir::anec::Family const&)#1},std::allocator<llvm::cl::opt<mlir::anec::Family,false,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::{lambda(mlir::anec::Family const&)#1}>,void ()(mlir::anec::Family const&)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B01188;
  return result;
}

uint64_t llvm::cl::parser<mlir::anec::Family>::addLiteralOption<int>(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6 = *a4;
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a5;
  v19[3] = a6;
  v7 = v19;
  v19[4] = &unk_1F5B010A8;
  v21 = 1;
  v20 = v6;
  v9 = (a1 + 16);
  v8 = *(a1 + 16);
  v10 = *(a1 + 24);
  if (v10 >= *(a1 + 28))
  {
    v15 = a1;
    v16 = a2;
    v17 = a3;
    if (v8 <= v19 && v8 + 48 * v10 > v19)
    {
      v18 = v19 - v8;
      llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::anec::Family>::OptionInfo,false>::grow(a1 + 16, v10 + 1);
      v8 = *v9;
      v7 = &v18[*v9];
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::anec::Family>::OptionInfo,false>::grow(a1 + 16, v10 + 1);
      v8 = *v9;
      v7 = v19;
    }

    a3 = v17;
    a2 = v16;
    a1 = v15;
  }

  v11 = v8 + 48 * *(a1 + 24);
  v12 = *(v7 + 1);
  *v11 = *v7;
  *(v11 + 16) = v12;
  *(v11 + 32) = &unk_1F5B010C8;
  v13 = *(v7 + 10);
  *(v11 + 44) = v7[44];
  *(v11 + 40) = v13;
  *(v11 + 32) = &unk_1F5B010A8;
  ++*(a1 + 24);
  return llvm::cl::AddLiteralOption(*(a1 + 8), a2, a3);
}

void llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::anec::Family>::OptionInfo,false>::grow(uint64_t a1, unint64_t a2)
{
  v13 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 48, &v13);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[48 * v6];
    v8 = v4 + 32;
    v9 = v4;
    do
    {
      v10 = *(v5 + 1);
      *v9 = *v5;
      *(v9 + 1) = v10;
      *(v9 + 4) = &unk_1F5B010C8;
      v11 = *(v5 + 10);
      v9[44] = v5[44];
      *(v9 + 10) = v11;
      *(v9 + 4) = &unk_1F5B010A8;
      v9 += 48;
      v5 += 48;
      v8 += 48;
    }

    while (v5 != v7);
    v5 = *a1;
  }

  v12 = v13;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v12;
}

uint64_t std::__function::__value_func<void ()(mlir::anec::Family const&)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v7);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v7[0] + 24))(v7, v5);
        result = (*(v7[0] + 32))(v7);
        goto LABEL_10;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
LABEL_10:
    *(v5 + 24) = v5;
  }

  return result;
}

void *_ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS2_4anec6FamilyENS4_19GenericOptionParserIS7_EEEC1IJN4llvm2cl4descENSD_11initializerIS7_EENSD_11ValuesClassEEEERS4_NSC_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISQ_EEFvRKS7_EE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B011D0;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS2_4anec6FamilyENS4_19GenericOptionParserIS7_EEEC1IJN4llvm2cl4descENSD_11initializerIS7_EENSD_11ValuesClassEEEERS4_NSC_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISQ_EEFvRKS7_EE7__cloneEPNS0_6__baseISV_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B011D0;
  a2[1] = v2;
  return result;
}

void *mlir::detail::PassOptions::Option<mlir::anec::Family,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::~Option(void *a1)
{
  *a1 = &unk_1F5B01040;
  v2 = a1 + 71;
  v3 = a1[74];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  a1[19] = &unk_1F5B01138;
  v4 = a1[21];
  if (v4 != a1 + 23)
  {
    free(v4);
  }

  *a1 = &unk_1F5B3E1D8;
  v5 = a1[12];
  if (v5 != a1[11])
  {
    free(v5);
  }

  v6 = a1[8];
  if (v6 != a1 + 10)
  {
    free(v6);
  }

  return a1;
}

void mlir::mpsx::anonymous namespace::ANERegionOpCreator::~ANERegionOpCreator(mlir::mpsx::_anonymous_namespace_::ANERegionOpCreator *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_1F5B01308;
  if (*(this + 77))
  {
    v5 = *(this + 76);
    if (v5)
    {
      v6 = 0;
      do
      {
        v7 = *(*(this + 37) + v6);
        if (v7 != -8 && v7 != 0)
        {
          llvm::deallocate_buffer(v7, (*v7 + 9));
        }

        v6 += 8;
      }

      while (8 * v5 != v6);
    }
  }

  free(*(this + 37));
  if (*(this + 295) < 0)
  {
    operator delete(*(this + 34));
  }

  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](this + 216);
  mlir::ConversionTarget::~ConversionTarget((this + 40), v9, v10, v11);
}

{
}

void llvm::StringMapEntry<mlir::mpsx::FuncValidation>::Destroy<llvm::MallocAllocator>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = (v6 + 32);
    v8 = 40 * v5;
    do
    {
      if ((*(v7 - 4) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        llvm::deallocate_buffer(*(v7 - 2), (8 * *v7));
      }

      v7 += 10;
      v8 -= 40;
    }

    while (v8);
    v6 = *(a1 + 32);
    v9 = 40 * *(a1 + 48);
  }

  else
  {
    v9 = 0;
  }

  llvm::deallocate_buffer(v6, v9);
}

void sub_1DFD2B170(int a1, int a2, int a3, unint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  llvm::deallocate_buffer(v14, (v15 + 57));
}

llvm::StringMapImpl *llvm::StringMap<mlir::mps::MPSResourceInfo,llvm::MallocAllocator>::StringMap(llvm::StringMapImpl *this, uint64_t *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0x2000000000;
  if (*(a2 + 3))
  {
    llvm::StringMapImpl::init(this, *(a2 + 2));
    v4 = *this;
    v5 = *(this + 2);
    v6 = *a2;
    *(this + 12) = *(a2 + 12);
    if (v5)
    {
      v7 = 0;
      v17 = v4 + 8 * v5 + 8;
      v8 = v6 + 8 * v5 + 8;
      do
      {
        v9 = *(*a2 + 8 * v7);
        if (v9)
        {
          v10 = v9 == -8;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          *(*this + 8 * v7) = v9;
        }

        else
        {
          v11 = *v9;
          buffer = llvm::allocate_buffer(*v9 + 33, 8uLL);
          v13 = buffer;
          v14 = buffer + 32;
          if (v11)
          {
            memcpy(buffer + 32, (v9 + 32), v11);
          }

          v14[v11] = 0;
          *v13 = v11;
          v15 = *(v9 + 8);
          *(v13 + 3) = *(v9 + 24);
          *(v13 + 8) = v15;
          *(*this + 8 * v7) = v13;
          *(v17 + 4 * v7) = *(v8 + 4 * v7);
        }

        ++v7;
      }

      while (v5 != v7);
    }
  }

  return this;
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4mpsx12_GLOBAL__N_127getModuleValidationFromANECERNSt3__110unique_ptrINSB_16ModuleValidationENSD_14default_deleteISF_EEEENS1_8ModuleOpENS1_4anec6FamilyENS1_3mps17MPSDialectVersionENS1_7mps_spi20MPSSPIDialectVersionENS_9StringRefENSD_8functionIFPK14__CFDictionarySV_EEEbE3__0NS1_4func6FuncOpEvEENSD_9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueES17_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t ***a1, mlir::ForwardIterator *a2)
{
  if (!a2 || *(*(a2 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    return;
  }

  v2 = *a1;
  v29 = a2;
  v3 = **v2;
  __dst = a2;
  SymName = mlir::func::FuncOp::getSymName(&__dst);
  v6 = v5;
  v9 = llvm::StringMapImpl::hash(SymName, v5, v7, v8);
  Key = llvm::StringMapImpl::FindKey(v3, SymName, v6, v9);
  if (Key == -1 || Key == *(v3 + 8))
  {
    v11 = 0;
  }

  else
  {
    v11 = *(*v3 + 8 * Key) + 8;
  }

  v28 = v11;
  v12 = mlir::func::FuncOp::getSymName(&v29);
  if (v12)
  {
    v14 = v13;
    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v15 = v12;
    if (v13 >= 0x17)
    {
      if ((v13 | 7) == 0x17)
      {
        v18 = 25;
      }

      else
      {
        v18 = (v13 | 7) + 1;
      }

      p_dst = operator new(v18);
      v22 = v14;
      v23 = (v18 | 0x8000000000000000);
      __dst = p_dst;
    }

    else
    {
      HIBYTE(v23) = v13;
      p_dst = &__dst;
      if (!v13)
      {
LABEL_18:
        *(p_dst + v14) = 0;
        if (SHIBYTE(v23) >= 0)
        {
          v17 = &__dst;
        }

        else
        {
          v17 = __dst;
        }

        goto LABEL_21;
      }
    }

    memmove(p_dst, v15, v14);
    goto LABEL_18;
  }

  __dst = 0;
  v22 = 0;
  v17 = &__dst;
  v23 = 0;
LABEL_21:
  v19 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v17, 0x8000100u);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__dst);
  }

  value = 0;
  if (CFDictionaryGetValueIfPresent(*v2[1], v19, &value))
  {
    v20 = CFGetTypeID(value);
    if (v20 == CFDictionaryGetTypeID())
    {
      v25 = 0;
      v26 = value;
      __dst = &v29;
      v22 = &v28;
      v23 = &v25;
      v24 = &v26;
    }
  }

  CFRelease(v19);
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::mpsx::anonymous namespace::getModuleValidationFromANEC(std::unique_ptr<mlir::mpsx::ModuleValidation> &,mlir::ModuleOp,mlir::anec::Family,mlir::mps::MPSDialectVersion,mlir::mps_spi::MPSSPIDialectVersion,llvm::StringRef,std::function<__CFDictionary const* ()(__CFDictionary const*)>,BOOL)::$_0::operator() const(mlir::func::FuncOp)::{lambda(mlir::Operation *)#1}>(uint64_t a1, uint64_t a2)
{
  if (**a1 == a2)
  {
    return;
  }

  v2 = **(a1 + 8);
  v3 = *(v2 + 24);
  v4 = *(v2 + 40);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v6 = (v3 + 40 * v5);
  v7 = *v6;
  if (*v6 != a2)
  {
    v8 = 1;
    while (v7 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & (v4 - 1);
      v6 = (v3 + 40 * v5);
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    v6 = (v3 + 40 * v4);
  }

LABEL_9:
  if (v6 == (v3 + 40 * v4))
  {
    v10 = 0;
  }

  else
  {
    v10 = (v6 + 1);
  }

  v11 = *(a1 + 16);
  v12 = (*v11)++;
  std::to_string(&v20, v12);
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v20;
  }

  else
  {
    v14 = v20.__r_.__value_.__r.__words[0];
  }

  v15 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v14, 0x8000100u);
  value = 0;
  if (CFDictionaryGetValueIfPresent(**(a1 + 24), v15, &value))
  {
    v16 = CFGetTypeID(value);
    if (v16 == CFDictionaryGetTypeID())
    {
      cf = 0;
      if (CFDictionaryGetValueIfPresent(value, @"support", &cf))
      {
        v17 = CFGetTypeID(cf);
        if (v17 == CFBooleanGetTypeID())
        {
          *v10 = CFBooleanGetValue(cf) != 0;
        }
      }
    }
  }

  CFRelease(v15);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }
}

uint64_t mlir::mpsx::anonymous namespace::ANERegionTypeConverter::canonicalizeType(uint64_t result)
{
  if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v6[3] = v1;
    v6[4] = v2;
    v6[0] = result;
    if (mlir::Type::getIntOrFloatBitWidth(v6) > 7 || mlir::Type::getIntOrFloatBitWidth(v6) == 4)
    {
      if (mlir::IntegerType::getSignedness(v6))
      {
        return v6[0];
      }

      Context = mlir::Attribute::getContext(v6);
      Width = mlir::IntegerType::getWidth(v6);
      v5 = Context;
    }

    else
    {
      v5 = mlir::Attribute::getContext(v6);
      Width = 8;
    }

    return mlir::IntegerType::get(v5, Width, 1u);
  }

  return result;
}

uint64_t mlir::mpsx::anonymous namespace::ANERegionTypeConverter::tensorToMemRef(uint64_t a1)
{
  v12 = a1;
  ElementType = mlir::TensorType::getElementType(&v12);
  if (!mlir::TensorType::hasRank(&v12))
  {
    return mlir::UnrankedMemRefType::get(v2, 0);
  }

  LOBYTE(v13[0]) = 0;
  v14 = 0;
  v3 = mlir::TensorType::cloneWith(&v12, v13, v2);
  if (v3)
  {
    v4 = v3;
    v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
    v3 = v4;
  }

  else
  {
    v5 = 0;
  }

  v13[0] = mlir::getRankPromotionTypeForANE(v3, v5);
  v13[1] = v7;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v13);
  v10 = v9;
  isSplat = mlir::ElementsAttr::isSplat(v13);
  return mlir::MemRefType::get(ArgAttrsAttr, v10, isSplat, 0, 0, 0);
}

void sub_1DFD2B7FC(void *__p)
{

  operator delete(__p);
}

void *_ZNKSt3__110__function6__funcIZNK4mlir13TypeConverter12wrapCallbackINS2_4TypeEZNKS3_12wrapCallbackIS5_PFS5_S5_EEENS_9enable_ifIXsr3stdE14is_invocable_vIT0_T_EENS_8functionIFNS_8optionalIN4llvm13LogicalResultEEES5_RNSE_15SmallVectorImplIS5_EEEEEE4typeEOSA_EUlS5_SJ_E_EENS9_IXsr3stdE14is_invocable_vISA_SB_SJ_EESL_E4typeESO_EUlS5_SJ_E_NS_9allocatorISS_EESK_E7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B01278;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir13TypeConverter12wrapCallbackINS2_4TypeEZNKS3_12wrapCallbackIS5_PFS5_S5_EEENS_9enable_ifIXsr3stdE14is_invocable_vIT0_T_EENS_8functionIFNS_8optionalIN4llvm13LogicalResultEEES5_RNSE_15SmallVectorImplIS5_EEEEEE4typeEOSA_EUlS5_SJ_E_EENS9_IXsr3stdE14is_invocable_vISA_SB_SJ_EESL_E4typeESO_EUlS5_SJ_E_NS_9allocatorISS_EESK_E7__cloneEPNS0_6__baseISK_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B01278;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir13TypeConverter12wrapCallbackINS2_4TypeEZNKS3_12wrapCallbackIS5_PFS5_S5_EEENS_9enable_ifIXsr3stdE14is_invocable_vIT0_T_EENS_8functionIFNS_8optionalIN4llvm13LogicalResultEEES5_RNSE_15SmallVectorImplIS5_EEEEEE4typeEOSA_EUlS5_SJ_E_EENS9_IXsr3stdE14is_invocable_vISA_SB_SJ_EESL_E4typeESO_EUlS5_SJ_E_NS_9allocatorISS_EESK_EclEOS5_SJ_(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*a2)
  {
    return 0;
  }

  v4 = (*(a1 + 8))();
  if (v4)
  {
    v5 = *(a3 + 8);
    if (v5 >= *(a3 + 12))
    {
      v7 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v5 + 1, 8);
      v4 = v7;
      LODWORD(v5) = *(a3 + 8);
    }

    *(*a3 + 8 * v5) = v4;
    ++*(a3 + 8);
  }

  return (v4 != 0) | 0x100u;
}

void *_ZNKSt3__110__function6__funcIZNK4mlir13TypeConverter12wrapCallbackINS2_10TensorTypeEZNKS3_12wrapCallbackIS5_PFNS_8optionalINS2_4TypeEEES5_EEENS_9enable_ifIXsr3stdE14is_invocable_vIT0_T_EENS_8functionIFNS7_IN4llvm13LogicalResultEEES8_RNSG_15SmallVectorImplIS8_EEEEEE4typeEOSD_EUlS5_SL_E_EENSC_IXsr3stdE14is_invocable_vISD_SE_SL_EESN_E4typeESQ_EUlS8_SL_E_NS_9allocatorISU_EESM_E7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B012C0;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir13TypeConverter12wrapCallbackINS2_10TensorTypeEZNKS3_12wrapCallbackIS5_PFNS_8optionalINS2_4TypeEEES5_EEENS_9enable_ifIXsr3stdE14is_invocable_vIT0_T_EENS_8functionIFNS7_IN4llvm13LogicalResultEEES8_RNSG_15SmallVectorImplIS8_EEEEEE4typeEOSD_EUlS5_SL_E_EENSC_IXsr3stdE14is_invocable_vISD_SE_SL_EESN_E4typeESQ_EUlS8_SL_E_NS_9allocatorISU_EESM_E7__cloneEPNS0_6__baseISM_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B012C0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir13TypeConverter12wrapCallbackINS2_10TensorTypeEZNKS3_12wrapCallbackIS5_PFNS_8optionalINS2_4TypeEEES5_EEENS_9enable_ifIXsr3stdE14is_invocable_vIT0_T_EENS_8functionIFNS7_IN4llvm13LogicalResultEEES8_RNSG_15SmallVectorImplIS8_EEEEEE4typeEOSD_EUlS5_SL_E_EENSC_IXsr3stdE14is_invocable_vISD_SE_SL_EESN_E4typeESQ_EUlS8_SL_E_NS_9allocatorISU_EESM_EclEOS8_SL_(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = *(**a2 + 136);
  v4 = v3 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (v4 && (v6 = (*(a1 + 8))(), (v7 & 1) != 0))
  {
    if (v6)
    {
      v8 = a3;
      v9 = a3[2];
      if (v9 >= a3[3])
      {
        v13 = v6;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 4, v9 + 1, 8);
        v6 = v13;
        v8 = a3;
        LODWORD(v9) = a3[2];
      }

      *(*v8 + 8 * v9) = v6;
      ++v8[2];
    }

    v10 = v6 != 0;
    v11 = 1;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  return v10 | (v11 << 8);
}

uint64_t llvm::SmallVectorImpl<std::unique_ptr<mlir::PDLPatternConfigSet>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a2 != a2 + 16)
    {
      llvm::SmallVectorImpl<std::unique_ptr<mlir::PDLPatternConfigSet>>::assignRemote(a1, a2);
      return a1;
    }

    v5 = *(a2 + 8);
    v6 = *(a1 + 8);
    if (v6 >= v5)
    {
      v16 = *a1;
      if (v5)
      {
        v17 = &v4[8 * v5];
        do
        {
          v18 = *v4;
          *v4 = 0;
          v19 = *v16;
          *v16 = v18;
          if (v19)
          {
            v20 = *v19;
            v21 = *(v19 + 2);
            if (v21)
            {
              v22 = 8 * v21;
              v23 = v20 - 8;
              do
              {
                v24 = *&v23[v22];
                *&v23[v22] = 0;
                if (v24)
                {
                  (*(*v24 + 8))(v24);
                }

                v22 -= 8;
              }

              while (v22);
              v20 = *v19;
            }

            if (v20 != v19 + 16)
            {
              free(v20);
            }

            operator delete(v19);
          }

          v4 += 8;
          ++v16;
        }

        while (v4 != v17);
        v25 = *a1;
        v6 = *(a1 + 8);
      }

      else
      {
        v25 = *a1;
      }

      v62 = &v25[v6];
      while (v62 != v16)
      {
        v64 = *--v62;
        v63 = v64;
        *v62 = 0;
        if (v64)
        {
          v65 = *v63;
          v66 = v63[2];
          if (v66)
          {
            v67 = 8 * v66;
            v68 = (v65 - 2);
            do
            {
              v69 = *&v68[v67];
              *&v68[v67] = 0;
              if (v69)
              {
                (*(*v69 + 8))(v69);
              }

              v67 -= 8;
            }

            while (v67);
            v65 = *v63;
          }

          if (v65 != v63 + 4)
          {
            free(v65);
          }

          operator delete(v63);
        }
      }

      *(a1 + 8) = v5;
      v70 = *(a2 + 8);
      if (v70)
      {
        v71 = *a2;
        v72 = (*a2 + 8 * v70);
        do
        {
          v74 = *(v72 - 1);
          v72 -= 8;
          v73 = v74;
          *v72 = 0;
          if (v74)
          {
            v75 = *v73;
            v76 = v73[2];
            if (v76)
            {
              v77 = 8 * v76;
              v78 = (v75 - 2);
              do
              {
                v79 = *&v78[v77];
                *&v78[v77] = 0;
                if (v79)
                {
                  (*(*v79 + 8))(v79);
                }

                v77 -= 8;
              }

              while (v77);
              v75 = *v73;
            }

            if (v75 != v73 + 4)
            {
              free(v75);
            }

            operator delete(v73);
          }
        }

        while (v72 != v71);
      }

      goto LABEL_96;
    }

    if (*(a1 + 12) >= v5)
    {
      if (v6)
      {
        v26 = &v4[8 * v6];
        v27 = *a1;
        do
        {
          v28 = *v4;
          *v4 = 0;
          v29 = *v27;
          *v27 = v28;
          if (v29)
          {
            v30 = *v29;
            v31 = *(v29 + 2);
            if (v31)
            {
              v32 = 8 * v31;
              v33 = v30 - 8;
              do
              {
                v34 = *&v33[v32];
                *&v33[v32] = 0;
                if (v34)
                {
                  (*(*v34 + 8))(v34);
                }

                v32 -= 8;
              }

              while (v32);
              v30 = *v29;
            }

            if (v30 != v29 + 16)
            {
              free(v30);
            }

            operator delete(v29);
          }

          v4 += 8;
          ++v27;
        }

        while (v4 != v26);
        goto LABEL_48;
      }
    }

    else
    {
      if (v6)
      {
        v7 = *a1;
        v8 = (*a1 + 8 * v6);
        do
        {
          v10 = *--v8;
          v9 = v10;
          *v8 = 0;
          if (v10)
          {
            v11 = *v9;
            v12 = v9[2];
            if (v12)
            {
              v13 = 8 * v12;
              v14 = (v11 - 2);
              do
              {
                v15 = *&v14[v13];
                *&v14[v13] = 0;
                if (v15)
                {
                  (*(*v15 + 8))(v15);
                }

                v13 -= 8;
              }

              while (v13);
              v11 = *v9;
            }

            if (v11 != v9 + 4)
            {
              free(v11);
            }

            operator delete(v9);
          }
        }

        while (v8 != v7);
      }

      *(a1 + 8) = 0;
      llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::PDLPatternConfigSet>,false>::grow(a1, v5);
    }

    v6 = 0;
LABEL_48:
    v35 = *a2;
    v36 = *(a2 + 8);
    if (v6 != v36)
    {
      v37 = *a1;
      v38 = 8 * v6;
      v39 = (*a1 + 8 * v6);
      v40 = &v35[8 * v6];
      v41 = v36;
      v42 = 8 * v36 - 8 * v6 - 8;
      if (v42 < 0x78 || v40 < &v37[v41] && v39 < &v35[v41 * 8])
      {
        goto LABEL_55;
      }

      v43 = (v42 >> 3) + 1;
      v44 = 8 * (v43 & 0x3FFFFFFFFFFFFFFCLL);
      v39 += v44;
      v40 += v44;
      v45 = v38 + 16;
      v46 = &v35[v38 + 16];
      v47 = (v37 + v45);
      v48 = v43 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v49 = *(v46 - 1);
        v50 = *v46;
        *(v46 - 1) = 0uLL;
        *v46 = 0uLL;
        *(v47 - 1) = v49;
        *v47 = v50;
        v46 += 32;
        v47 += 2;
        v48 -= 4;
      }

      while (v48);
      if (v43 != (v43 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_55:
        v51 = &v35[8 * v36];
        do
        {
          v52 = *v40;
          *v40 = 0;
          v40 += 8;
          *v39 = v52;
          v39 += 8;
        }

        while (v40 != v51);
      }
    }

    *(a1 + 8) = v5;
    v53 = *(a2 + 8);
    if (v53)
    {
      v54 = &v35[8 * v53];
      do
      {
        v56 = *(v54 - 1);
        v54 -= 8;
        v55 = v56;
        *v54 = 0;
        if (v56)
        {
          v57 = *v55;
          v58 = v55[2];
          if (v58)
          {
            v59 = 8 * v58;
            v60 = (v57 - 2);
            do
            {
              v61 = *&v60[v59];
              *&v60[v59] = 0;
              if (v61)
              {
                (*(*v61 + 8))(v61);
              }

              v59 -= 8;
            }

            while (v59);
            v57 = *v55;
          }

          if (v57 != v55 + 4)
          {
            free(v57);
          }

          operator delete(v55);
        }
      }

      while (v54 != v35);
    }

LABEL_96:
    *(a2 + 8) = 0;
  }

  return a1;
}

double llvm::SmallVectorImpl<std::unique_ptr<mlir::PDLPatternConfigSet>>::assignRemote(char ***a1, char **a2)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  if (v5)
  {
    v6 = &v4[v5];
    do
    {
      v8 = *--v6;
      v7 = v8;
      *v6 = 0;
      if (v8)
      {
        v9 = *v7;
        v10 = v7[2];
        if (v10)
        {
          v11 = 8 * v10;
          v12 = (v9 - 2);
          do
          {
            v13 = *&v12[v11];
            *&v12[v11] = 0;
            if (v13)
            {
              (*(*v13 + 8))(v13);
            }

            v11 -= 8;
          }

          while (v11);
          v9 = *v7;
        }

        if (v9 != v7 + 4)
        {
          free(v9);
        }

        operator delete(v7);
      }
    }

    while (v6 != v4);
    v4 = *a1;
  }

  if (v4 != (a1 + 2))
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 1);
  *(a1 + 1) = result;
  *a2 = (a2 + 2);
  a2[1] = 0;
  return result;
}

void llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::PDLPatternConfigSet>,false>::grow(uint64_t a1, unint64_t a2)
{
  v29 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v29);
  v5 = *a1;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_26;
  }

  v8 = &v5[8 * v7];
  v9 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v9 >= 0xB)
  {
    v11 = 8 * v7;
    v12 = v5 >= &v4[v11] || v4 >= &v5[v11];
    v10 = v4;
    if (v12)
    {
      v13 = v9 + 1;
      v14 = 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL);
      v10 = &v4[v14];
      v6 = &v5[v14];
      v15 = (v5 + 16);
      v16 = v4 + 16;
      v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v18 = *(v15 - 1);
        v19 = *v15;
        *(v15 - 1) = 0uLL;
        *v15 = 0uLL;
        *(v16 - 1) = v18;
        *v16 = v19;
        v15 += 2;
        v16 += 2;
        v17 -= 4;
      }

      while (v17);
      if (v13 == (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v10 = v4;
  }

  do
  {
    v20 = *v6;
    *v6 = 0;
    v6 += 8;
    *v10 = v20;
    v10 += 8;
  }

  while (v6 != v8);
  do
  {
LABEL_16:
    v22 = *(v8 - 1);
    v8 -= 8;
    v21 = v22;
    *v8 = 0;
    if (v22)
    {
      v23 = *v21;
      v24 = v21[2];
      if (v24)
      {
        v25 = 8 * v24;
        v26 = (v23 - 2);
        do
        {
          v27 = *&v26[v25];
          *&v26[v25] = 0;
          if (v27)
          {
            (*(*v27 + 8))(v27);
          }

          v25 -= 8;
        }

        while (v25);
        v23 = *v21;
      }

      if (v23 != v21 + 4)
      {
        free(v23);
      }

      operator delete(v21);
    }
  }

  while (v8 != v5);
  v6 = *a1;
LABEL_26:
  v28 = v29;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v4;
  *(a1 + 12) = v28;
}

uint64_t mlir::mpsx::anonymous namespace::ANERegionOpCreator::getMarkAttrID(mlir::StringAttr ***this)
{
  v1 = this[1];
  v3 = "ANE_region";
  v4 = 259;
  return mlir::Builder::getStringAttr(v1, &v3);
}

uint64_t mlir::mpsx::anonymous namespace::ANERegionOpCreator::isOpCompatible(uint64_t a1, mlir::Operation *this, uint64_t *a3)
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = *(this + 2);
  if (!v5)
  {
    goto LABEL_7;
  }

  ParentOp = mlir::Block::getParentOp(v5);
  if (!ParentOp)
  {
    goto LABEL_7;
  }

  v8 = *(*(ParentOp + 48) + 16);
  v9 = v8 == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id;
  v10 = v8 == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id ? ParentOp : 0;
  v65 = v10;
  if (!v9)
  {
    goto LABEL_7;
  }

  if (*(a1 + 308))
  {
    SymName = mlir::func::FuncOp::getSymName(&v65);
    v20 = v19;
    v23 = llvm::StringMapImpl::hash(SymName, v19, v21, v22);
    if (llvm::StringMapImpl::FindKey((a1 + 296), SymName, v20, v23) == -1)
    {
      goto LABEL_7;
    }

    ParentOp = v65;
  }

  v24 = *(a1 + 208);
  v64[0] = ParentOp;
  v25 = mlir::func::FuncOp::getSymName(v64);
  v27 = v26;
  v30 = llvm::StringMapImpl::hash(v25, v26, v28, v29);
  Key = llvm::StringMapImpl::FindKey(v24, v25, v27, v30);
  if (Key == -1 || Key == *(v24 + 8))
  {
    goto LABEL_7;
  }

  v32 = *(*v24 + 8 * Key);
  v33 = *(v32 + 32);
  v34 = *(v32 + 48);
  if (v34)
  {
    v35 = v34 - 1;
    v36 = (v34 - 1) & ((this >> 4) ^ (this >> 9));
    v37 = v33 + 40 * v36;
    v38 = *v37;
    v39 = a3;
    if (*v37 == this)
    {
      goto LABEL_33;
    }

    v40 = 1;
    while (v38 != -4096)
    {
      v41 = v36 + v40++;
      v36 = v41 & v35;
      v37 = v33 + 40 * (v41 & v35);
      v38 = *v37;
      v39 = a3;
      if (*v37 == this)
      {
        goto LABEL_33;
      }
    }
  }

  v37 = v33 + 40 * v34;
  v39 = a3;
LABEL_33:
  if (v37 == v33 + 40 * v34 || *(v37 + 8) != 1)
  {
    goto LABEL_7;
  }

  if (*(v37 + 24))
  {
    if (!v39)
    {
      goto LABEL_7;
    }

    v42 = *(v37 + 16);
    v43 = *(v37 + 32);
    if (v43)
    {
      v44 = 8 * v43;
      v45 = v42;
      while ((*v45 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        ++v45;
        v44 -= 8;
        if (!v44)
        {
          goto LABEL_56;
        }
      }
    }

    else
    {
      v45 = *(v37 + 16);
    }

    v46 = &v42[v43];
    if (v45 != v46)
    {
      v47 = *(v39 + 4);
      if (!v47)
      {
        goto LABEL_7;
      }

      v48 = *v39;
      v49 = v47 - 1;
      v50 = *v45;
LABEL_46:
      v51 = ((v50 >> 4) ^ (v50 >> 9)) & v49;
      v52 = *(v48 + 8 * v51);
      if (v52 != v50)
      {
        v53 = 1;
        while (v52 != -4096)
        {
          v54 = v51 + v53++;
          v51 = v54 & v49;
          v52 = *(v48 + 8 * v51);
          if (v52 == v50)
          {
            goto LABEL_47;
          }
        }

        goto LABEL_7;
      }

LABEL_47:
      if (v51 == v47)
      {
        goto LABEL_7;
      }

      while (++v45 != v46)
      {
        v50 = *v45;
        if ((*v45 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          if (v45 != v46)
          {
            goto LABEL_46;
          }

          break;
        }
      }
    }
  }

LABEL_56:
  if ((*(this + 46) & 0x80) == 0)
  {
    goto LABEL_65;
  }

  v55 = *(this + 17);
  if (!v55)
  {
    goto LABEL_65;
  }

  v56 = v55 - 1;
  v57 = (*(this + 9) + 24);
  do
  {
    v58 = *v57;
    v57 += 4;
    v61 = v56-- != 0;
  }

  while ((v59 & 1) != 0 && v61);
  if (v59)
  {
LABEL_65:
    v62 = *(this + 9);
    v63 = this - 16;
    if (!v62)
    {
      v63 = 0;
    }

    v64[0] = v63;
    v64[1] = v62;
    if (!*(this + 47))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_7:
  v11 = 0;
  if (!*(this + 47))
  {
LABEL_9:
    v69.var0 = "device_hint";
    v69.var1 = 11;
    InherentAttr = mlir::DictionaryAttr::get((this + 56), v69);
    goto LABEL_10;
  }

LABEL_8:
  v68.var0 = "device_hint";
  v68.var1 = 11;
  InherentAttr = mlir::Operation::getInherentAttr(this, v68);
  if ((v13 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (InherentAttr)
  {
    v14 = *(*InherentAttr + 136);
    v15 = v14 == &mlir::detail::TypeIDResolver<mlir::mps::DeviceHintAttr,void>::id;
    v16 = v14 == &mlir::detail::TypeIDResolver<mlir::mps::DeviceHintAttr,void>::id ? InherentAttr : 0;
    v65 = v16;
    if (v15)
    {
      if (!mlir::arith::FastMathFlagsAttr::getValue(&v65) && !(v11 & 1 | ((*(a1 + 260) & 1) == 0)))
      {
      }

      if (mlir::arith::FastMathFlagsAttr::getValue(&v65))
      {
        return 0;
      }
    }
  }

  return v11;
}