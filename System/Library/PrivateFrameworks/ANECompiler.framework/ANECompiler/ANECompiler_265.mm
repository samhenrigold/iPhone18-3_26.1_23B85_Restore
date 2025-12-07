BOOL mlir::anec::isCompatibleWithFamily(mlir::anec *a1, mlir::Operation *a2)
{
  v2 = a2;
  OpMinimumFamily = mlir::anec::getOpMinimumFamily(a1, a2);
  return (OpMinimumFamily & 0x100000000) == 0 || OpMinimumFamily <= v2;
}

void mlir::anec::fillZinIrCommonInfo(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  mlir::anec::computeOpKeyString(&__str, a1);
  std::string::operator=((a2 + 8), &__str);
  *(a2 + 32) = a3;
  v12 = (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v62.__r_.__value_.__r.__words[0] = v12;
  v62.__r_.__value_.__l.__size_ = v13;
  isSplat = mlir::ElementsAttr::isSplat(&v62);
  v57 = a3;
  v56 = a1;
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v15 = *(a1 + 68);
    if (v15)
    {
      v16 = 0;
      v17 = (*(a1 + 72) + 24);
      v58 = a4;
      v59 = a6;
      do
      {
        if ((a6 & (v16 >= a5)) != 0)
        {
          break;
        }

        v18 = a6;
        v19 = *v17;
        if (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a4 + 488), &v60))
        {
          if (!std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a4 + 488), &v60))
          {
            v62.__r_.__value_.__s.__data_[0] = 0;
            v63 = 0;
            std::__throw_bad_optional_access[abi:nn200100]();
LABEL_91:
            abort();
          }

          v20 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a4 + 488), &v60);
          if (!v20)
          {
            goto LABEL_91;
          }

          if (*(v20 + 63) < 0)
          {
            std::string::__init_copy_ctor_external(&v62, v20[5], v20[6]);
          }

          else
          {
            v62 = *(v20 + 5);
          }

          v63 = 1;
          std::string::operator=(&v60, &v62);
          if (v63 == 1 && SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v62.__r_.__value_.__l.__data_);
          }
        }

        v21 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v21)
        {
          v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
        }

        else
        {
          v22 = 0;
        }

        v62.__r_.__value_.__r.__words[0] = v21;
        v62.__r_.__value_.__l.__size_ = v22;
        if (isSplat != mlir::ElementsAttr::isSplat(&v62))
        {
          isSplat = 0;
        }

        v24 = *(a2 + 48);
        v23 = *(a2 + 56);
        if (v24 >= v23)
        {
          v26 = v15;
          v27 = a5;
          v28 = *(a2 + 40);
          v29 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v28) >> 3) + 1;
          if (v29 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
          }

          v30 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v28) >> 3);
          if (2 * v30 > v29)
          {
            v29 = 2 * v30;
          }

          if (v30 >= 0x555555555555555)
          {
            v31 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v31 = v29;
          }

          if (v31)
          {
            if (v31 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
          }

          v33 = (8 * ((v24 - v28) >> 3));
          if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v33, v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
          }

          else
          {
            *&v33->__r_.__value_.__l.__data_ = *&v60.__r_.__value_.__l.__data_;
            *(8 * ((v24 - v28) >> 3) + 0x10) = *(&v60.__r_.__value_.__l + 2);
          }

          v32 = v33 + 1;
          v34 = *(a2 + 40);
          v35 = *(a2 + 48) - v34;
          v36 = v33 - v35;
          memcpy(v36, v34, v35);
          *(a2 + 40) = v36;
          *(a2 + 48) = v32;
          *(a2 + 56) = 0;
          if (v34)
          {
            operator delete(v34);
          }

          a5 = v27;
          v15 = v26;
          a4 = v58;
          a6 = v59;
        }

        else
        {
          if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(*(a2 + 48), v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
          }

          else
          {
            v25 = *&v60.__r_.__value_.__l.__data_;
            *(v24 + 16) = *(&v60.__r_.__value_.__l + 2);
            *v24 = v25;
          }

          v32 = (v24 + 24);
          a6 = v18;
        }

        *(a2 + 48) = v32;
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        ++v16;
        v17 += 4;
      }

      while (v15 != v16);
    }
  }

  if (isSplat)
  {
    v37 = *(*isSplat + 136);
    v38 = v56;
    if (v37 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v62.__r_.__value_.__r.__words[0] = isSplat;
      Width = mlir::IntegerType::getWidth(&v62);
      if (Width == 16)
      {
        if (mlir::IntegerType::getSignedness(&v62) == 2)
        {
          v40 = 10;
        }

        else
        {
          v40 = 9;
        }
      }

      else if (Width == 8)
      {
        if (mlir::IntegerType::getSignedness(&v62) == 2)
        {
          v40 = 2;
        }

        else
        {
          v40 = 1;
        }
      }

      else
      {
        v40 = 0;
      }
    }

    else
    {
      if (v37 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
      {
        v39 = 11;
      }

      else
      {
        v39 = 0;
      }

      if (v37 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
      {
        v40 = 3;
      }

      else
      {
        v40 = v39;
      }
    }
  }

  else
  {
    v40 = 0;
    v38 = v56;
  }

  *(a2 + 64) = v40;
  *&v62.__r_.__value_.__l.__data_ = 0uLL;
  if (*(*(v38 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::RingBufferWriter,void>::id)
  {
    v41 = (*(*(*(v38 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v41)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v41 = (*(v38 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v41)
    {
LABEL_56:
      v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
      goto LABEL_59;
    }
  }

  v42 = 0;
LABEL_59:
  v62.__r_.__value_.__r.__words[0] = v41;
  v62.__r_.__value_.__l.__size_ = v42;
  v43 = mlir::ElementsAttr::isSplat(&v62);
  v44 = *(*v43 + 136);
  if (v44 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v60.__r_.__value_.__r.__words[0] = v43;
    v47 = mlir::IntegerType::getWidth(&v60);
    v45 = v57;
    if (v47 == 16)
    {
      if (mlir::IntegerType::getSignedness(&v60) == 2)
      {
        v46 = 10;
      }

      else
      {
        v46 = 9;
      }
    }

    else if (v47 == 8)
    {
      if (mlir::IntegerType::getSignedness(&v60) == 2)
      {
        v46 = 2;
      }

      else
      {
        v46 = 1;
      }
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v45 = v57;
    if (v44 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
    {
      v46 = 3;
    }

    else if (v44 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
    {
      v46 = 11;
    }

    else
    {
      v46 = 0;
    }
  }

  *(a2 + 68) = v46;
  if ((v45 - 23) > 0xFFFFFFFD)
  {
    v52 = 0;
  }

  else
  {
    mlir::ShapedType::getShape(&v62);
    IndexFromDim = mlir::anec::getIndexFromDim(1, v49);
    if ((v51 & 1) == 0)
    {
      v53 = std::__throw_bad_optional_access[abi:nn200100]();
      return;
    }

    v52 = *(mlir::ShapedType::getShape(&v62) + 8 * IndexFromDim);
  }

  *(a2 + 72) = v52;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

BOOL mlir::anec::Broadcast::addOpToNetwork(uint64_t **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::Broadcast::getZinIrUnitInfo();
  }

  v13 = "network should not be nullptr";
  v14 = 259;
  mlir::OpState::emitError(this, &v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v4 = __p;
    if (__p)
    {
      v5 = v21;
      v6 = __p;
      if (v21 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v21 = v4;
      operator delete(v6);
    }

    v7 = v18;
    if (v18)
    {
      v8 = v19;
      v9 = v18;
      if (v19 != v18)
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
        v9 = v18;
      }

      v19 = v7;
      operator delete(v9);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

void mlir::anec::ANECIRNetwork::AddUnit(void *a1, __int128 *a2)
{
  v3 = a1[53];
  v4 = a1[54];
  if (v3 >= v4)
  {
    v7 = a1[52];
    v8 = (v3 - v7) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v12 + 16);
    v14 = a1[52];
    v15 = a1[53] - v14;
    v16 = v12 - v15;
    memcpy((v12 - v15), v14, v15);
    a1[52] = v16;
    a1[53] = v6;
    a1[54] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  a1[53] = v6;
}

uint64_t mlir::anec::Convolution::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = a3;
  v101 = *MEMORY[0x1E69E9840];
  v94 = a6;
  LOBYTE(v95) = 0;
  v96 = 0;
  v97 = a7;
  v98 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v94);
    if (v96 == 1)
    {
      v96 = 0;
    }

    mlir::OperationName::OperationName(&v95, "anec.convolution", 16, Context);
    v96 = 1;
    a1 = v15;
  }

  v99 = a4;
  v100 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (v13)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if (!mlir::anec::ConvolutionAdaptor::verify(&v94, v18))
  {
    return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "invalid conv attributes");
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  if (!v19)
  {
    v78 = 0;
    v79 = 0;
    return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "input must be a ShapedType");
  }

  v20 = v19;
  v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  v78 = v20;
  v79 = v21;
  mlir::ShapedType::getShape(&v78);
  if (v22 >= 6)
  {
    return mlir::emitOptionalError<char const(&)[41]>(a2, v13, "input must be a tensor of rank 4 or 5");
  }

  Shape = mlir::ShapedType::getShape(&v78);
  v92[0] = v93;
  v92[1] = 0x300000000;
  Value = mlir::AffineMapAttr::getValue(&v94);
  v26 = mlir::DictionaryAttr::end(&v94);
  v27 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), v26, *(*(v95 + 96) + 72));
  mlir::getValues<unsigned long>(v27, v92);
  v90[0] = v91;
  v90[1] = 0x300000000;
  v28 = mlir::AffineMapAttr::getValue(&v94);
  v29 = mlir::DictionaryAttr::end(&v94);
  v30 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v28, (v29 - 32), *(*(v95 + 96) + 8));
  mlir::getValues<unsigned long>(v30, v90);
  v88[0] = v89;
  v88[1] = 0x600000000;
  v31 = mlir::AffineMapAttr::getValue(&v94);
  v32 = mlir::DictionaryAttr::end(&v94);
  v33 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v31 + 16), (v32 - 16), *(*(v95 + 96) + 56));
  mlir::getValues<unsigned long>(v33, v88);
  v34 = mlir::TypeRange::dereference_iterator(a9, 1);
  v35 = v34;
  if (v34)
  {
    v34 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v34 + 8);
  }

  v77[0] = v35;
  v77[1] = v34;
  v36 = mlir::ShapedType::getShape(v77);
  mlir::ShapedType::getShape(v77);
  if (v37 < 6)
  {
    mlir::ShapedType::getShape(v77);
    if (v38 == 4)
    {
      v39 = -1;
    }

    else
    {
      v39 = 4;
    }

    Groups = mlir::anec::detail::ConvolutionGenericAdaptorBase::getGroups(&v94);
    mlir::ShapedType::getShape(&v78);
    IndexFromDim = mlir::anec::getIndexFromDim(1, v40);
    if (v42)
    {
      v75 = Shape[IndexFromDim];
      if (v75 % Groups)
      {
        v81 = "input channels {0} should be divisible by groups {1}";
        v82 = 52;
        v83[0] = v87;
        v83[1] = 2;
        v84 = 1;
        v85[0] = &unk_1F1A177C0;
        v85[1] = &v75;
        v86[0] = &unk_1F1A177C0;
        v86[1] = &Groups;
        v87[0] = v85;
        v87[1] = v86;
LABEL_30:
        result = mlir::emitOptionalError<llvm::formatv_object<std::tuple<llvm::support::detail::provider_format_adapter<long long &>,llvm::support::detail::provider_format_adapter<unsigned long long &>>>>(a2, v13, &v81);
        goto LABEL_31;
      }

      v43 = mlir::AffineMapAttr::getValue(&v94);
      v44 = mlir::DictionaryAttr::end(&v94);
      v45 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v43, (v44 - 48), **(v95 + 96));
      if (v45 && *(*v45 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        v46 = v36[1] * *v36;
      }

      else
      {
        v46 = *v36;
      }

      v74 = v46;
      if (v46 % Groups)
      {
        llvm::formatv<long long &,long long &>(&v81, "output channels {0} should be divisible by groups {1}", 1, &v74, &Groups);
        goto LABEL_30;
      }

      mlir::ShapedType::getShape(&v78);
      mlir::anec::getIndexFromDim(1, v48);
      if (v49)
      {
        if (v36[1] * Groups == v75)
        {
          mlir::ShapedType::getShape(&v78);
          v51 = mlir::anec::getIndexFromDim(3, v50);
          if (v52)
          {
            v53 = v51;
            mlir::ShapedType::getShape(&v78);
            v55 = mlir::anec::getIndexFromDim(4, v54);
            if (v56)
            {
              v57 = v90[0];
              v58 = (*(v88[0] + 2) + Shape[v53] + *(v88[0] + 3) - v36[2] + v57[1] - 1 - (v57[1] - 1) * v36[2]) / *(v92[0] + 1) + 1;
              v59 = (*(v88[0] + 4) + Shape[v55] + *(v88[0] + 5) - v36[3] + v57[2] - 1 - (v57[2] - 1) * v36[3]) / *(v92[0] + 2) + 1;
              v60 = *Shape;
              mlir::ShapedType::getShape(&v78);
              v62 = mlir::anec::getIndexFromDim(2, v61);
              if (v63)
              {
                v64 = (*v88[0] + Shape[v62] + *(v88[0] + 1) - v36[v39] + *v90[0] - 1 - (*v90[0] - 1) * v36[v39]) / *v92[0] + 1;
              }

              else
              {
                v64 = 0;
              }

              v80[0] = v60;
              v80[1] = v46;
              v80[2] = v58;
              v80[3] = v59;
              llvm::SmallVector<unsigned long long,6u>::SmallVector(&v81, v80, 4);
              if (v64)
              {
                v80[0] = v64;
                llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v81, v81 + 8, v80);
              }

              v66 = v81;
              v67 = v82;
              isSplat = mlir::ElementsAttr::isSplat(&v78);
              v69 = mlir::MemRefType::get(v66, v67, isSplat, 0, 0, 0);
              llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v69);
              if (v81 != v83)
              {
                free(v81);
              }

              result = 1;
              goto LABEL_31;
            }
          }
        }

        else if (v13)
        {
          llvm::formatv<long long const&,long long &,long long &>(v80, "Filter shape Cin {0} * groups {1} must match input Cin {2}", 1, (v36 + 1), &Groups, &v75);
          v73 = 263;
          v72 = v80;
          mlir::emitError(a2, &v72, &v81);
          v65 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v81);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v81);
          result = v65;
          goto LABEL_31;
        }
      }
    }

    v70 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::anec::ConvolutionAdaptor::verify(v70, v71);
  }

  result = mlir::emitOptionalError<char const(&)[39]>(a2, v13, "filter must be a tensor of rank 4 or 5");
LABEL_31:
  v47 = result;
  if (v88[0] != v89)
  {
    free(v88[0]);
    result = v47;
  }

  if (v90[0] != v91)
  {
    free(v90[0]);
    result = v47;
  }

  if (v92[0] != v93)
  {
    free(v92[0]);
    return v47;
  }

  return result;
}

BOOL mlir::anec::ConvolutionAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v157 = *MEMORY[0x1E69E9840];
  v144 = *a1;
  Value = mlir::AffineMapAttr::getValue(&v144);
  if (Value == mlir::DictionaryAttr::end(&v144))
  {
LABEL_7:
    v141 = "'anec.convolution' op requires attribute 'dilation'";
    v143 = 259;
    mlir::emitError(a2, &v141, &v147);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
    if (v147)
    {
      mlir::InFlightDiagnostic::report(&v147);
    }

    if (v156 != 1)
    {
      return v6;
    }

    if (v155 != &v156)
    {
      free(v155);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v154;
      v9 = __p;
      if (v154 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v154 = v7;
      operator delete(v9);
    }

    v10 = v151;
    if (!v151)
    {
      goto LABEL_120;
    }

    v11 = v152;
    v12 = v151;
    if (v152 == v151)
    {
      goto LABEL_119;
    }

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
    goto LABEL_118;
  }

  v5 = 0;
  while (ZinCompressedFootprintInfo::GetCompressedBytes(Value) != *(*(a1[1] + 96) + 8))
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == **(a1[1] + 96))
    {
      v5 = Value[1];
    }

    Value += 2;
    if (Value == mlir::DictionaryAttr::end(&v144))
    {
      goto LABEL_7;
    }
  }

  v15 = Value[1];
  if (Value == mlir::DictionaryAttr::end(&v144))
  {
LABEL_37:
    v141 = "'anec.convolution' op requires attribute 'padding'";
    v143 = 259;
    mlir::emitError(a2, &v141, &v147);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
    if (v147)
    {
      mlir::InFlightDiagnostic::report(&v147);
    }

    if (v156 != 1)
    {
      return v6;
    }

    if (v155 != &v156)
    {
      free(v155);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v154;
      v23 = __p;
      if (v154 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v154 = v21;
      operator delete(v23);
    }

    v10 = v151;
    if (!v151)
    {
      goto LABEL_120;
    }

    v24 = v152;
    v12 = v151;
    if (v152 == v151)
    {
      goto LABEL_119;
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

    while (v24 != v10);
    goto LABEL_118;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  while (ZinCompressedFootprintInfo::GetCompressedBytes(Value) != *(*(a1[1] + 96) + 56))
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 16))
    {
      v16 = Value[1];
    }

    else if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 24))
    {
      v17 = Value[1];
    }

    else if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 32))
    {
      v18 = Value[1];
    }

    else if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 40))
    {
      v19 = Value[1];
    }

    else if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 48))
    {
      v20 = Value[1];
    }

    Value += 2;
    if (Value == mlir::DictionaryAttr::end(&v144))
    {
      goto LABEL_37;
    }
  }

  v120 = v20;
  v121 = Value[1];
  if (Value == mlir::DictionaryAttr::end(&v144))
  {
LABEL_59:
    v141 = "'anec.convolution' op requires attribute 'stride'";
    v143 = 259;
    mlir::emitError(a2, &v141, &v147);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
    if (v147)
    {
      mlir::InFlightDiagnostic::report(&v147);
    }

    if (v156 != 1)
    {
      return v6;
    }

    if (v155 != &v156)
    {
      free(v155);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v154;
      v30 = __p;
      if (v154 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v154 = v28;
      operator delete(v30);
    }

    v10 = v151;
    if (!v151)
    {
      goto LABEL_120;
    }

    v31 = v152;
    v12 = v151;
    if (v152 == v151)
    {
      goto LABEL_119;
    }

    do
    {
      v33 = *--v31;
      v32 = v33;
      *v31 = 0;
      if (v33)
      {
        MEMORY[0x1AC55A040](v32, 0x1000C8077774924);
      }
    }

    while (v31 != v10);
LABEL_118:
    v12 = v151;
    goto LABEL_119;
  }

  v27 = 0;
  while (ZinCompressedFootprintInfo::GetCompressedBytes(Value) != *(*(a1[1] + 96) + 72))
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 64))
    {
      v27 = Value[1];
    }

    Value += 2;
    if (Value == mlir::DictionaryAttr::end(&v144))
    {
      goto LABEL_59;
    }
  }

  v34 = Value[1];
  if (v34)
  {
    if (!mlir::DenseIntElementsAttr::classof(Value[1]))
    {
      goto LABEL_102;
    }

    v35 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v34 + 8);
    v141 = v34;
    v142 = v35;
    Type = mlir::ElementsAttr::getType(&v141);
    v37 = Type;
    if (Type)
    {
      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    v147 = v37;
    v148 = Type;
    Shape = mlir::ShapedType::getShape(&v147);
    v145 = 3;
    if (v39 != 1 || *Shape != v145 || (v135 = v34, v139 = mlir::ArrayAttr::getValue(&v135), v140 = v40, isSplat = mlir::ElementsAttr::isSplat(&v139), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
    {
LABEL_102:
      v141 = "'anec.convolution' op attribute 'stride' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      v143 = 259;
      mlir::emitError(a2, &v141, &v147);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
      if (v147)
      {
        mlir::InFlightDiagnostic::report(&v147);
      }

      if (v156 != 1)
      {
        return v6;
      }

      if (v155 != &v156)
      {
        free(v155);
      }

      v55 = __p;
      if (__p)
      {
        v56 = v154;
        v57 = __p;
        if (v154 != __p)
        {
          do
          {
            v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
          }

          while (v56 != v55);
          v57 = __p;
        }

        v154 = v55;
        operator delete(v57);
      }

      v10 = v151;
      if (v151)
      {
        v58 = v152;
        v12 = v151;
        if (v152 != v151)
        {
          do
          {
            v60 = *--v58;
            v59 = v60;
            *v58 = 0;
            if (v60)
            {
              MEMORY[0x1AC55A040](v59, 0x1000C8077774924);
            }
          }

          while (v58 != v10);
          goto LABEL_118;
        }

LABEL_119:
        v152 = v10;
        operator delete(v12);
      }

LABEL_120:
      if (v149 != &v150)
      {
        free(v149);
      }

      return v6;
    }
  }

  if (!v15)
  {
    goto LABEL_193;
  }

  if (mlir::DenseIntElementsAttr::classof(v15))
  {
    v41 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v15 + 8);
    v141 = v15;
    v142 = v41;
    v42 = mlir::ElementsAttr::getType(&v141);
    v43 = v42;
    if (v42)
    {
      v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8);
    }

    v147 = v43;
    v148 = v42;
    v44 = mlir::ShapedType::getShape(&v147);
    v145 = 3;
    if (v45 == 1 && *v44 == v145)
    {
      v135 = v15;
      v139 = mlir::ArrayAttr::getValue(&v135);
      v140 = v46;
      isSplat = mlir::ElementsAttr::isSplat(&v139);
      if (mlir::Type::isUnsignedInteger(&isSplat, 64))
      {
LABEL_193:
        if (!v121)
        {
          goto LABEL_97;
        }

        if (mlir::DenseIntElementsAttr::classof(v121))
        {
          v47 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v121 + 8);
          v141 = v121;
          v142 = v47;
          v48 = mlir::ElementsAttr::getType(&v141);
          v49 = v48;
          if (v48)
          {
            v48 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v48 + 8);
          }

          v147 = v49;
          v148 = v48;
          v50 = mlir::ShapedType::getShape(&v147);
          v145 = 6;
          if (v51 == 1 && *v50 == v145)
          {
            v135 = v121;
            v139 = mlir::ArrayAttr::getValue(&v135);
            v140 = v52;
            isSplat = mlir::ElementsAttr::isSplat(&v139);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
LABEL_97:
              if (v27 && (mlir::anec::PaddingModeAttr::classof(v27) & 1) == 0)
              {
                v54 = "'anec.convolution' op attribute 'padding_mode' failed to satisfy constraint: valid PaddingMode";
                goto LABEL_128;
              }

              if (v16)
              {
                v53 = v120;
                if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v141 = v16, v147 = mlir::AffineMapAttr::getValue(&v141), !mlir::Type::isUnsignedInteger(&v147, 64)))
                {
                  v54 = "'anec.convolution' op attribute 'groups' failed to satisfy constraint: 64-bit unsigned integer attribute";
LABEL_128:
                  v141 = v54;
                  v143 = 259;
                  mlir::emitError(a2, &v141, &v147);
                  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v147);
                  return v6;
                }
              }

              else
              {
                v53 = v120;
              }

              if (!v5 || *(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
              {
                if (!v19)
                {
                  goto LABEL_194;
                }

                if (!mlir::DenseFPElementsAttr::classof(v19))
                {
                  goto LABEL_187;
                }

                v62 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v19 + 8);
                v141 = v19;
                v142 = v62;
                v63 = mlir::ElementsAttr::getType(&v141);
                v64 = v63;
                if (v63)
                {
                  v63 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v63 + 8);
                }

                v147 = v64;
                v148 = v63;
                mlir::ShapedType::getShape(&v147);
                if (v65)
                {
                  v66 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v19 + 8);
                  v145 = v19;
                  v146 = v66;
                  v67 = mlir::ElementsAttr::getType(&v145);
                  v68 = v67;
                  if (v67)
                  {
                    v67 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v67 + 8);
                  }

                  v139 = v68;
                  v140 = v67;
                  mlir::ShapedType::getShape(&v139);
                  v53 = v120;
                  if (v69 != 1)
                  {
                    v70 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v19 + 8);
                    v135 = v19;
                    v136 = v70;
                    v71 = mlir::ElementsAttr::getType(&v135);
                    v72 = v71;
                    if (v71)
                    {
                      v71 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v71 + 8);
                    }

                    isSplat = v72;
                    v138 = v71;
                    mlir::ShapedType::getShape(&isSplat);
                    v53 = v120;
                    if (v73 != 4)
                    {
                      goto LABEL_187;
                    }
                  }
                }

                v129[0] = v19;
                v133 = mlir::ArrayAttr::getValue(v129);
                v134 = v74;
                v130[0] = mlir::ElementsAttr::isSplat(&v133);
                if (mlir::Type::isF16(v130) || (v127[0] = v19, v131 = mlir::ArrayAttr::getValue(v127), v132 = v75, v128[0] = mlir::ElementsAttr::isSplat(&v131), mlir::Type::isF32(v128)))
                {
LABEL_194:
                  if (!v53)
                  {
                    goto LABEL_195;
                  }

                  if (!mlir::DenseIntElementsAttr::classof(v53))
                  {
                    goto LABEL_188;
                  }

                  v76 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v53 + 8);
                  v141 = v53;
                  v142 = v76;
                  v77 = mlir::ElementsAttr::getType(&v141);
                  v78 = v77;
                  if (v77)
                  {
                    v77 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v77 + 8);
                  }

                  v147 = v78;
                  v148 = v77;
                  mlir::ShapedType::getShape(&v147);
                  v79 = v120;
                  if (v80)
                  {
                    v81 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v120 + 8);
                    v145 = v120;
                    v146 = v81;
                    v82 = mlir::ElementsAttr::getType(&v145);
                    v83 = v82;
                    if (v82)
                    {
                      v82 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v82 + 8);
                    }

                    v139 = v83;
                    v140 = v82;
                    mlir::ShapedType::getShape(&v139);
                    v79 = v120;
                    if (v84 != 1)
                    {
                      v85 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v120 + 8);
                      v135 = v120;
                      v136 = v85;
                      v86 = mlir::ElementsAttr::getType(&v135);
                      v87 = v86;
                      if (v86)
                      {
                        v86 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v86 + 8);
                      }

                      isSplat = v87;
                      v138 = v86;
                      mlir::ShapedType::getShape(&isSplat);
                      v79 = v120;
                      if (v88 != 4)
                      {
                        goto LABEL_188;
                      }
                    }
                  }

                  v129[0] = v79;
                  v133 = mlir::ArrayAttr::getValue(v129);
                  v134 = v89;
                  v130[0] = mlir::ElementsAttr::isSplat(&v133);
                  if (mlir::Type::isSignedInteger(v130, 8) || (v127[0] = v79, v131 = mlir::ArrayAttr::getValue(v127), v132 = v90, v128[0] = mlir::ElementsAttr::isSplat(&v131), mlir::Type::isUnsignedInteger(v128, 8)))
                  {
LABEL_195:
                    if (!v18)
                    {
                      goto LABEL_185;
                    }

                    if (!mlir::DenseElementsAttr::classof(v18))
                    {
                      goto LABEL_189;
                    }

                    v91 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                    v141 = v18;
                    v142 = v91;
                    v92 = mlir::ElementsAttr::getType(&v141);
                    v93 = v92;
                    if (v92)
                    {
                      v92 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v92 + 8);
                    }

                    v147 = v93;
                    v148 = v92;
                    mlir::ShapedType::getShape(&v147);
                    if (v94)
                    {
                      v95 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                      v145 = v18;
                      v146 = v95;
                      v96 = mlir::ElementsAttr::getType(&v145);
                      v97 = v96;
                      if (v96)
                      {
                        v96 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v96 + 8);
                      }

                      v139 = v97;
                      v140 = v96;
                      mlir::ShapedType::getShape(&v139);
                      if (v98 != 1)
                      {
                        v99 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                        v135 = v18;
                        v136 = v99;
                        v100 = mlir::ElementsAttr::getType(&v135);
                        v101 = v100;
                        if (v100)
                        {
                          v100 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v100 + 8);
                        }

                        isSplat = v101;
                        v138 = v100;
                        mlir::ShapedType::getShape(&isSplat);
                        if (v102 != 2)
                        {
                          v103 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                          v131 = v18;
                          v132 = v103;
                          v104 = mlir::ElementsAttr::getType(&v131);
                          v105 = v104;
                          if (v104)
                          {
                            v104 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v104 + 8);
                          }

                          v133 = v105;
                          v134 = v104;
                          mlir::ShapedType::getShape(&v133);
                          if (v106 != 3)
                          {
                            v107 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                            v129[0] = v18;
                            v129[1] = v107;
                            v108 = mlir::ElementsAttr::getType(v129);
                            v109 = v108;
                            if (v108)
                            {
                              v108 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v108 + 8);
                            }

                            v130[0] = v109;
                            v130[1] = v108;
                            mlir::ShapedType::getShape(v130);
                            if (v110 != 4)
                            {
                              v111 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                              v127[0] = v18;
                              v127[1] = v111;
                              v112 = mlir::ElementsAttr::getType(v127);
                              v113 = v112;
                              if (v112)
                              {
                                v112 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v112 + 8);
                              }

                              v128[0] = v113;
                              v128[1] = v112;
                              mlir::ShapedType::getShape(v128);
                              if (v114 != 5)
                              {
                                v115 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                                v125[0] = v18;
                                v125[1] = v115;
                                v116 = mlir::ElementsAttr::getType(v125);
                                v117 = v116;
                                if (v116)
                                {
                                  v116 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v116 + 8);
                                }

                                v126[0] = v117;
                                v126[1] = v116;
                                mlir::ShapedType::getShape(v126);
                                if (v118 != 6)
                                {
                                  goto LABEL_189;
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    v122 = v18;
                    v123[0] = mlir::ArrayAttr::getValue(&v122);
                    v123[1] = v119;
                    v124 = mlir::ElementsAttr::isSplat(v123);
                    if (mlir::Type::isF16(&v124))
                    {
LABEL_185:
                      if (!v17 || *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
                      {
                        return 1;
                      }

                      v54 = "'anec.convolution' op attribute 'kernel_mutable_palettized_LUT' failed to satisfy constraint: dictionary of named attribute values";
                    }

                    else
                    {
LABEL_189:
                      v54 = "'anec.convolution' op attribute 'kernel_palettized_LUT' failed to satisfy constraint: dense elements attribute for palettized LUT of rank 0/1/2/3/4/5/6";
                    }
                  }

                  else
                  {
LABEL_188:
                    v54 = "'anec.convolution' op attribute 'kernel_zero_point' failed to satisfy constraint: si8 or ui8 elements attribute of rank 0/1/4";
                  }
                }

                else
                {
LABEL_187:
                  v54 = "'anec.convolution' op attribute 'kernel_scale' failed to satisfy constraint: f16 or f32 elements attribute of rank 0/1/4";
                }
              }

              else
              {
                v54 = "'anec.convolution' op attribute 'channel_wise' failed to satisfy constraint: unit attribute";
              }

              goto LABEL_128;
            }
          }
        }

        v54 = "'anec.convolution' op attribute 'padding' failed to satisfy constraint: ui64 elements attribute of shape {6}";
        goto LABEL_128;
      }
    }
  }

  v141 = "'anec.convolution' op attribute 'dilation' failed to satisfy constraint: ui64 elements attribute of shape {3}";
  v143 = 259;
  mlir::emitError(a2, &v141, &v147);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
  if (v147)
  {
    mlir::InFlightDiagnostic::report(&v147);
  }

  if (v156 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v148);
  }

  return v6;
}

BOOL mlir::emitOptionalError<char const(&)[39]>(uint64_t a1, char a2, char *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, v15);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, a3);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v4);
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v5;
}

uint64_t *mlir::anec::detail::ConvolutionGenericAdaptorBase::getGroups(mlir::anec::detail::ConvolutionGenericAdaptorBase *this)
{
  Value = mlir::AffineMapAttr::getValue(this);
  v3 = mlir::DictionaryAttr::end(this);
  v4 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 - 32), *(*(*(this + 1) + 96) + 16));
  if (v4)
  {
    if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v10 = v5;
  mlir::IntegerAttr::getValue(&v10, &v8);
  if (v9 <= 0x40)
  {
    return v8;
  }

  v6 = *v8;
  MEMORY[0x1AC55A040]();
  return v6;
}

uint64_t mlir::anec::anonymous namespace::defaultMixedDataTypesIsCompatibleReturnType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  v8 = 0;
  while (1)
  {
    if (a4 == v8)
    {
      return 1;
    }

    v9 = mlir::TypeRange::dereference_iterator(a1, v8);
    v10 = mlir::TypeRange::dereference_iterator(a3, v8);
    if (v9)
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
      v20 = v9;
      v21 = v11;
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v20 = 0;
      v21 = 0;
      if (!v10)
      {
LABEL_8:
        v12 = 0;
        goto LABEL_9;
      }
    }

    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
LABEL_9:
    v19[0] = v10;
    v19[1] = v12;
    if (!mlir::ElementsAttr::getShapedType(&v20))
    {
      return 0;
    }

    if (!mlir::ElementsAttr::getShapedType(v19))
    {
      return 0;
    }

    Shape = mlir::ShapedType::getShape(&v20);
    v15 = v14;
    v16 = mlir::ShapedType::getShape(v19);
    if (v15 != v17 || memcmp(Shape, v16, 8 * v15))
    {
      return 0;
    }

    if (a2 == ++v8)
    {
      return 1;
    }
  }
}

BOOL mlir::anec::Convolution::addOpToNetwork(mlir::Operation **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = *this;
  v57 = *this;
  if (a2)
  {
    v6 = *(v3 + 9);
    v7 = *(v6 + 24);
    v8 = *(v6 + 56);
    if (*(v3 + 9))
    {
      v9 = v3 - 16;
    }

    else
    {
      v9 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
    v64[0] = mlir::Operation::getAttrDictionary(v3);
    Value = mlir::ArrayAttr::getValue(v64);
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v11 = mlir::ArrayAttr::getValue(v64);
    v13 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v11 + 16 * v12 - 32), *(*(*(v57 + 6) + 96) + 16));
    if (v13)
    {
      if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v58[0] = v14;
    mlir::IntegerAttr::getValue(v58, v64);
    if (LODWORD(v64[1]) > 0x40)
    {
      MEMORY[0x1AC55A040]();
    }

    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v24 = mlir::ArrayAttr::getValue(v64);
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v25 = mlir::ArrayAttr::getValue(v64);
    mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v24, (v25 + 16 * v26 - 48), **(*(v57 + 6) + 96));
    v62[0] = v63;
    v62[1] = 0x200000000;
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v27 = mlir::ArrayAttr::getValue(v64);
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v28 = mlir::ArrayAttr::getValue(v64);
    v30 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v27 + 32), (v28 + 16 * v29), *(*(*(v57 + 6) + 96) + 72));
    mlir::getValues<unsigned long>(v30, v62);
    __src[0] = v61;
    __src[1] = 0x200000000;
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v31 = mlir::ArrayAttr::getValue(v64);
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v32 = mlir::ArrayAttr::getValue(v64);
    v34 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v31, (v32 + 16 * v33 - 32), *(*(*(v57 + 6) + 96) + 8));
    mlir::getValues<unsigned long>(v34, __src);
    v58[0] = v59;
    v58[1] = 0x400000000;
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v35 = mlir::ArrayAttr::getValue(v64);
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v36 = mlir::ArrayAttr::getValue(v64);
    v38 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v35 + 16), (v36 + 16 * v37 - 16), *(*(*(v57 + 6) + 96) + 56));
    mlir::getValues<unsigned long>(v38, v58);
    v39 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v39)
    {
      v40 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v39 + 8);
    }

    else
    {
      v40 = 0;
    }

    v55[0] = v39;
    v55[1] = v40;
    mlir::ShapedType::getShape(v55);
    v41 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v41)
    {
      v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
    }

    else
    {
      v42 = 0;
    }

    v54[0] = v41;
    v54[1] = v42;
    mlir::ShapedType::getShape(v54);
    v43 = (v8[1] & 0xFFFFFFFFFFFFFFF8);
    if (v43)
    {
      v44 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v43 + 8);
    }

    else
    {
      v44 = 0;
    }

    v53[0] = v43;
    v53[1] = v44;
    mlir::ShapedType::getShape(v53);
    v52[0] = 0;
    v52[1] = 0;
    v48 = v52;
    v64[0] = v8;
    DefiningOp = mlir::Value::getDefiningOp(v64);
    if (DefiningOp)
    {
      mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v48, DefiningOp);
    }

    v50 = 0;
    v51 = 0;
    v49 = 0;
    v15 = 0;
    {
      operator new();
    }

    if (v58[0] != v59)
    {
      free(v58[0]);
    }

    if (__src[0] != v61)
    {
      free(__src[0]);
    }

    v46 = v62[0];
    if (v62[0] != v63)
    {
LABEL_50:
      free(v46);
    }
  }

  else
  {
    v58[0] = "network should not be nullptr";
    v59[8] = 259;
    mlir::Operation::emitError(v3, v58, v64);
    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
    if (v64[0])
    {
      mlir::InFlightDiagnostic::report(v64);
    }

    if (v72 == 1)
    {
      if (v71 != &v72)
      {
        free(v71);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v70;
        v18 = __p;
        if (v70 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v70 = v16;
        operator delete(v18);
      }

      v19 = v67;
      if (v67)
      {
        v20 = v68;
        v21 = v67;
        if (v68 != v67)
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
          v21 = v67;
        }

        v68 = v19;
        operator delete(v21);
      }

      v46 = v65;
      if (v65 != &v66)
      {
        goto LABEL_50;
      }
    }
  }

  return v15;
}

uint64_t mlir::anec::findDilatedConvTiles(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12)
{
  v12 = 1;
  if (a3)
  {
    v14 = a3;
  }

  else
  {
    v13 = a3;
    do
    {
      v14 = v13 >> 1;
      ++v12;
      v15 = v13;
      v13 >>= 1;
    }

    while ((v15 & 2) == 0);
  }

  if (0xAAAAAAAAAAAAAAABLL * v14 + 0x2AAAAAAAAAAAAAAALL <= 0x5555555555555554)
  {
    v16 = 1;
    do
    {
      v14 /= 3;
      ++v16;
    }

    while ((0x2AAAAAAAAAAAAAAALL - 0x5555555555555555 * v14) < 0x5555555555555555);
  }

  else
  {
    v16 = 1;
  }

  v17 = 1;
  if (a4)
  {
    v19 = a4;
  }

  else
  {
    v18 = a4;
    do
    {
      v19 = v18 >> 1;
      ++v17;
      v20 = v18;
      v18 >>= 1;
    }

    while ((v20 & 2) == 0);
  }

  if (0xAAAAAAAAAAAAAAABLL * v19 + 0x2AAAAAAAAAAAAAAALL <= 0x5555555555555554)
  {
    v21 = 1;
    do
    {
      v19 /= 3;
      ++v21;
    }

    while ((0x2AAAAAAAAAAAAAAALL - 0x5555555555555555 * v19) < 0x5555555555555555);
  }

  else
  {
    v21 = 1;
  }

  v22 = 0;
  v23 = a5 - 1;
  v24 = a6 - 1;
  v25 = this - 1;
  v26 = a2 - 1;
  v48 = -1;
  do
  {
    v27 = (&unk_1A7600F70 + 16 * v22);
    v28 = *v27;
    v29 = v27[1];
    v30 = 1;
    v31 = 1;
    do
    {
      if (v16)
      {
        v32 = 0;
        v33 = -1;
        v34 = 1;
        v35 = v30;
        do
        {
          v36 = v12;
          for (i = v34; v36; --v36)
          {
            if (i > v30 && (v33 == -1 || ((v25 + i) / i + v29 - 1) / v29 * v29 * i - this <= v33))
            {
              v33 = ((v25 + i) / i + v29 - 1) / v29 * v29 * i - this;
              v35 = i;
            }

            i *= 2;
          }

          ++v32;
          v34 *= 3;
        }

        while (v32 != v16);
      }

      else
      {
        v35 = v30;
      }

      v38 = a7 + a7 * a3 / v35 * v23;
      v39 = v38 + v38 * a4 / v31 * v24;
      if (v35 * v31 > 8)
      {
        v39 /= 2;
      }

      if (v39 < 65537)
      {
        v43 = v31;
        goto LABEL_50;
      }

      v40 = 0;
      v41 = -1;
      v42 = 1;
      v43 = v31;
      do
      {
        v44 = v17;
        v45 = v42;
        do
        {
          if (v45 > v31 && (v41 == -1 || ((v26 + v45) / v45 + v28 - 1) / v28 * v28 * v45 - a2 <= v41))
          {
            v41 = ((v26 + v45) / v45 + v28 - 1) / v28 * v28 * v45 - a2;
            v43 = v45;
          }

          v45 *= 2;
          --v44;
        }

        while (v44);
        ++v40;
        v42 *= 3;
      }

      while (v40 != v21);
      v46 = v38 + v38 * a4 / v43 * v24;
      if (v43 * v35 > 8)
      {
        v46 /= 2;
      }

      if (v41 == -1)
      {
        break;
      }

      v30 = v35;
      v31 = v43;
    }

    while (v46 >= 65537);
    if (v46 >= 65537)
    {
      goto LABEL_21;
    }

LABEL_50:
    if (v48 == -1 || v35 * v28 * v43 * ((v28 + (v26 + v43) / v43 - 1) / v28) * ((v25 + v35) / v35 + v29 - 1) / v29 * v29 - a2 * this < v48)
    {
      *a8 = v29;
      *a9 = v28;
      *a10 = v35;
      v48 = v35 * v28 * v43 * ((v28 + (v26 + v43) / v43 - 1) / v28) * ((v25 + v35) / v35 + v29 - 1) / v29 * v29 - a2 * this;
      *a11 = v43;
    }

LABEL_21:
    ++v22;
  }

  while (v22 != 4);
  return this;
}

float mlir::anec::Convolution::getExecutionCost(mlir::Operation **a1, uint64_t a2)
{
  v159[6] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(*a1 + 9);
  v5 = (*(*(v4 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
    v3 = *a1;
    v4 = *(*a1 + 9);
  }

  else
  {
    v6 = 0;
  }

  v153[0] = v5;
  v153[1] = v6;
  v7 = (*(*(v4 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v3 = *a1;
  }

  else
  {
    v8 = 0;
  }

  v152[0] = v7;
  v152[1] = v8;
  v9 = *(v3 + 9);
  v10 = v3 - 16;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v151[0] = v12;
  v151[1] = v13;
  Shape = mlir::ShapedType::getShape(v153);
  v15 = mlir::ShapedType::getShape(v152);
  v17 = v16;
  v18 = mlir::ShapedType::getShape(v151);
  v138 = *v15;
  v19 = &v15[v17];
  v143 = *(v19 - 2);
  v144 = *(v19 - 1);
  isSplat = mlir::ElementsAttr::isSplat(v152);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
  mlir::ShapedType::getShape(v153);
  IndexFromDim = mlir::anec::getIndexFromDim(0, v21);
  if ((v23 & 1) == 0 || (v24 = IndexFromDim, v140 = a1, mlir::ShapedType::getShape(v153), v26 = mlir::anec::getIndexFromDim(1, v25), (v27 & 1) == 0) || (v28 = v26, mlir::ShapedType::getShape(v153), v30 = mlir::anec::getIndexFromDim(3, v29), (v31 & 1) == 0) || (v32 = v30, mlir::ShapedType::getShape(v153), v34 = mlir::anec::getIndexFromDim(4, v33), (v35 & 1) == 0))
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v137 = *(Shape + 8 * v24);
  v36 = *(Shape + 8 * v28);
  v37 = *(v18 + 8 * v32);
  v142 = *(v18 + 8 * v34);
  mlir::ShapedType::getShape(v153);
  v39 = mlir::anec::getIndexFromDim(2, v38);
  if (v40)
  {
    v139 = *(v18 + 8 * v39);
    v41 = *(v19 - 2);
    v143 = *(v19 - 3);
    v144 = *(v19 - 2);
  }

  else
  {
    v139 = 1;
    v41 = 1;
  }

  v147 = IntOrFloatBitWidth >> 3;
  isSplat = v159;
  v158 = 0xC00000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v43 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v45 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v43 + 16 * v44 - 32), *(*(*(*a1 + 6) + 96) + 8));
  mlir::getValues<int>(v45, &isSplat);
  if (v158)
  {
    v46 = *isSplat;
    if (v158 == 1)
    {
      v47 = 1;
      v48 = 1;
    }

    else
    {
      v47 = isSplat[1];
      if (v158 < 3)
      {
        v48 = 1;
      }

      else
      {
        v48 = isSplat[2];
      }
    }
  }

  else
  {
    v47 = 1;
    v46 = 1;
    v48 = 1;
  }

  v49 = v48;
  v50 = v46 * (v41 - 1) + 1;
  GroupsAttr = mlir::anec::Convolution::getGroupsAttr(v140);
  mlir::IntegerAttr::getValue(&GroupsAttr, &AttrDictionary);
  if (v155 > 0x40)
  {
    v51 = *AttrDictionary;
    MEMORY[0x1AC55A040]();
  }

  else
  {
    v51 = AttrDictionary;
  }

  v146 = v143 - 1;
  v52 = v50;
  if (v37 <= 0)
  {
    v53 = -(-v37 & 7);
  }

  else
  {
    v53 = v37 & 7;
  }

  v54 = v53 == 0;
  v55 = v37 - v53 + 8;
  v57 = v139 < 9 && v37 < 9;
  if (v57 && v142 < 9 || v54)
  {
    v58 = v37;
  }

  else
  {
    v58 = v55;
  }

  if (v47 > 5 || v49 > 5)
  {
    v141 = v52;
    GroupsAttr = 8;
    v150 = 16;
    v148 = 1;
    v149 = 1;
    mlir::anec::findDilatedConvTiles(v142, v37, v49, v47, v144, v143, v36, &GroupsAttr, &v150, &v149, &v148, v136);
    v59 = v37;
    v60 = v148;
    v61 = v149;
    v62 = v49 / v149;
    v63 = (v142 + v149 - 1) / v149;
    v64 = (v59 + v148 - 1) / v148;
    v65 = v62 * (v144 - 1) + 1;
    v66 = (v47 / v148) * v146 + 1;
    v67 = v36 / v51;
    v68 = v41;
    if (v149 == 1)
    {
      v69 = 0.0;
      if (v148 == 1)
      {
LABEL_58:
        v88 = 0x10000 / (v141 * v147 * v65 * v67 * v66);
        if (v88 <= 1)
        {
          v88 = 1;
        }

        if (v88 >= 8)
        {
          v88 = 8;
        }

        v89 = 16 * v88;
        v90 = v138 / (16 * v88);
        v91 = v61 * v137 * v60 * ((v63 + GroupsAttr - 1) / GroupsAttr) * ((v64 + v150 - 1) / v150);
        v92 = v143 * v144 * v68 * v67;
        v93 = (v92 * 16 * v88 * v91 * v90) << 9;
        v94 = (v91 * v90) << 8;
        if (v138 != v90 * v89)
        {
          v95 = v138 - v89 * v90;
          v96 = v95 + 15;
          v97 = v95 + 30;
          if (v96 >= 0)
          {
            v97 = v96;
          }

          v93 += 32 * v92 * (v97 >> 4) * (v91 << 8);
          v94 += v91 << 8;
        }

        v98 = (v94 * v67);
        AttrDictionary = mlir::ElementsAttr::isSplat(v151);
        v99 = mlir::Type::getIntOrFloatBitWidth(&AttrDictionary) >> 3;
        v100 = mlir::ShapedType::getShape(v151);
        v102 = v98 + (mlir::ShapedType::getNumElements(v100, v101) * v99);
        v103 = mlir::ElementsAttr::isSplat(v153);
        if (v102 <= 2097200.0)
        {
          v102 = 0.0;
        }

        AttrDictionary = v103;
        v104 = *(a2 + 40) * 1.0e12;
        isF16 = mlir::Type::isF16(&AttrDictionary);
        v106 = v104 + v104;
        if (isF16)
        {
          v106 = v104;
        }

        v107 = (v93 / v106) / 0.65;
        if (v107 < (v102 / (*(a2 + 44) * 1000000000.0)))
        {
          v107 = v102 / (*(a2 + 44) * 1000000000.0);
        }

        v108 = v69 + v107;
        goto LABEL_73;
      }
    }

    v70 = (v59 + v148 - 1) / v148;
    if (v149 == 1)
    {
      v74 = 0;
      if (v148 == 1)
      {
LABEL_51:
        AttrDictionary = mlir::ElementsAttr::isSplat(v151);
        v78 = mlir::Type::getIntOrFloatBitWidth(&AttrDictionary);
        v79 = mlir::ShapedType::getShape(v151);
        v81 = v74 + mlir::ShapedType::getNumElements(v79, v80) * ((v78 >> 2) & 0x3FFFFFFE);
        v82 = v81;
        v83 = mlir::ElementsAttr::isSplat(v153);
        if (v81 <= 0x200000)
        {
          v82 = 0.0;
        }

        AttrDictionary = v83;
        v84 = *(a2 + 40) * 1.0e12;
        v85 = mlir::Type::isF16(&AttrDictionary);
        v86 = v84 + v84;
        if (v85)
        {
          v86 = v84;
        }

        v87 = (0.0 / v86) / 0.65;
        if (v87 < (v82 / (*(a2 + 44) * 1000000000.0)))
        {
          v87 = v82 / (*(a2 + 44) * 1000000000.0);
        }

        v69 = v87 + 0.0;
        v64 = v70;
        goto LABEL_58;
      }
    }

    else
    {
      AttrDictionary = mlir::ElementsAttr::isSplat(v153);
      v71 = mlir::Type::getIntOrFloatBitWidth(&AttrDictionary);
      v72 = mlir::ShapedType::getShape(v153);
      v74 = mlir::ShapedType::getNumElements(v72, v73) * ((v71 >> 2) & 0x3FFFFFFE);
      if (v60 == 1)
      {
        goto LABEL_51;
      }
    }

    AttrDictionary = mlir::ElementsAttr::isSplat(v153);
    v75 = mlir::Type::getIntOrFloatBitWidth(&AttrDictionary);
    v76 = mlir::ShapedType::getShape(v153);
    v74 += mlir::ShapedType::getNumElements(v76, v77) * ((v75 >> 2) & 0x3FFFFFFE);
    goto LABEL_51;
  }

  v110 = v146 * v47 + 1;
  if (v49 == 1)
  {
    v111 = (v144 - 1) * v49 + 1;
  }

  else
  {
    v36 *= v49;
    v51 *= v49;
    v111 = v144;
  }

  if ((v143 * v144 * v147 * v41 * (v36 / v51)) <= 0x8000)
  {
    v118 = v110 == v143 && v111 == v144;
    v112 = 0.0;
    if (!v118 && (v110 * v52 * v111 * (v36 / v51) * v147) > 0x8000)
    {
      v119 = v144 * v52;
      do
      {
        if (v112 == 0.0)
        {
          AttrDictionary = mlir::ElementsAttr::isSplat(v153);
          v122 = mlir::Type::getIntOrFloatBitWidth(&AttrDictionary) >> 3;
          v123 = mlir::ShapedType::getShape(v153);
          v125 = mlir::ShapedType::getNumElements(v123, v124) * v122;
          AttrDictionary = mlir::ElementsAttr::isSplat(v151);
          v126 = mlir::Type::getIntOrFloatBitWidth(&AttrDictionary) >> 3;
          v127 = mlir::ShapedType::getShape(v151);
          v129 = 2 * (v125 + mlir::ShapedType::getNumElements(v127, v128) * v126);
          v130 = v129;
          v131 = mlir::ElementsAttr::isSplat(v153);
          if (v129 <= 0x200000)
          {
            v130 = 0.0;
          }

          AttrDictionary = v131;
          v132 = *(a2 + 40) * 1.0e12;
          v133 = mlir::Type::isF16(&AttrDictionary);
          v134 = v132 + v132;
          if (v133)
          {
            v134 = v132;
          }

          v135 = (0.0 / v134) / 0.65;
          if (v135 >= (v130 / (*(a2 + 44) * 1000000000.0)))
          {
            v112 = v135;
          }

          else
          {
            v112 = v130 / (*(a2 + 44) * 1000000000.0);
          }
        }

        if (v47)
        {
          if (v47 != 3 * (v47 / 3))
          {
            break;
          }

          v120 = 2;
          v121 = 3;
          v47 /= 3;
          v36 *= 3;
          v51 *= 3;
        }

        else
        {
          v47 >>= 1;
          v36 *= 2;
          v120 = 1;
          v121 = 2;
          v51 *= 2;
        }

        v58 = (v58 + v120) / v121;
      }

      while (((v119 * (v36 / v51) + v119 * (v36 / v51) * v146 * v47) * v147) > 0x8000);
    }
  }

  else
  {
    v112 = 0.0;
  }

  v113 = *v140;
  v114 = mlir::ElementsAttr::isSplat(v153);
  v108 = v112 + v115;
  AttrDictionary = mlir::ElementsAttr::isSplat(v153);
  if (((v142 * v37 * v139 * (mlir::Type::getIntOrFloatBitWidth(&AttrDictionary) >> 3)) & 0x7FFFF) == 0 && v36 >= v138 && v36 >= 64)
  {
    v108 = v108 + v108;
  }

LABEL_73:
  if (isSplat != v159)
  {
    free(isSplat);
  }

  return v108;
}

void *mlir::getValues<int>(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v12, a1, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v14);
  for (result = mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v10, a1, NumElements); v13 != v11; ++v13)
  {
    result = mlir::DenseElementsAttr::IntElementIterator::operator*(v12, &v8);
    if (v9 > 0x40)
    {
      v6 = *v8;
    }

    else if (v9)
    {
      v6 = (v8 << -v9) >> -v9;
    }

    else
    {
      LODWORD(v6) = 0;
    }

    v7 = *(a2 + 8);
    if (v7 >= *(a2 + 12))
    {
      result = llvm::SmallVectorTemplateBase<int,true>::push_back(a2, v6);
    }

    else
    {
      *(*a2 + 4 * v7) = v6;
      ++*(a2 + 8);
    }

    if (v9 >= 0x41)
    {
      result = v8;
      if (v8)
      {
        result = MEMORY[0x1AC55A040](v8, 0x1000C8000313F17);
      }
    }
  }

  return result;
}

uint64_t *mlir::anec::Convolution::getGroups(mlir::Operation **this)
{
  GroupsAttr = mlir::anec::Convolution::getGroupsAttr(this);
  mlir::IntegerAttr::getValue(&GroupsAttr, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v1 = *v3;
  MEMORY[0x1AC55A040]();
  return v1;
}

BOOL mlir::anec::Linear::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v55 = *MEMORY[0x1E69E9840];
  v48 = a6;
  LOBYTE(v49) = 0;
  v50 = 0;
  v51 = a7;
  v52 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v48);
    if (v50 == 1)
    {
      v50 = 0;
    }

    mlir::OperationName::OperationName(&v49, "anec.linear", 11, Context);
    v50 = 1;
    a1 = v15;
  }

  v53 = a4;
  v54 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if (!mlir::anec::LinearAdaptor::verify(&v48, v18))
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v44[0] = v20;
  v44[1] = v19;
  Shape = mlir::ShapedType::getShape(v44);
  v23 = v22;
  v24 = mlir::TypeRange::dereference_iterator(a9, 1);
  v25 = v24;
  if (v24)
  {
    v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
  }

  v43[0] = v25;
  v43[1] = v24;
  v26 = *(mlir::ShapedType::getShape(v43) + 8);
  mlir::ShapedType::getShape(v44);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v27);
  if ((v29 & 1) == 0)
  {
    v41 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::anec::LinearAdaptor::verify(v41, v42);
  }

  v30 = IndexFromDim;
  v45 = v47;
  v46 = 0x600000000;
  v31 = (8 * v23) >> 3;
  if (v31 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v47, v31, 8);
    v32 = v46;
    v33 = v45;
    v34 = 8 * v23;
    if (!v23)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v32 = 0;
  v33 = v47;
  v34 = 8 * v23;
  if (v23)
  {
LABEL_19:
    memcpy(v33 + 8 * v32, Shape, v34);
    v32 = v46;
    v33 = v45;
  }

LABEL_20:
  v36 = (v32 + (v34 >> 3));
  LODWORD(v46) = v32 + (v34 >> 3);
  *(v33 + v30) = v26;
  isSplat = mlir::ElementsAttr::isSplat(v44);
  v38 = mlir::MemRefType::get(v33, v36, isSplat, 0, 0, 0);
  v39 = *(a11 + 8);
  if (v39 >= *(a11 + 12))
  {
    v40 = v38;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v39 + 1, 8);
    v38 = v40;
    LODWORD(v39) = *(a11 + 8);
  }

  *(*a11 + 8 * v39) = v38;
  ++*(a11 + 8);
  if (v45 != v47)
  {
    free(v45);
  }

  return 1;
}

BOOL mlir::anec::LinearAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v112 = *MEMORY[0x1E69E9840];
  v101 = *a1;
  Value = mlir::AffineMapAttr::getValue(&v101);
  if (Value == mlir::DictionaryAttr::end(&v101))
  {
    v5 = 0;
    v7 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == **(a1[1] + 96))
      {
        v5 = *(Value + 1);
      }

      else if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 8))
      {
        v6 = *(Value + 1);
      }

      else if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 16))
      {
        v7 = *(Value + 1);
      }

      Value = (Value + 16);
    }

    while (Value != mlir::DictionaryAttr::end(&v101));
    if (v6)
    {
      if (!mlir::DenseFPElementsAttr::classof(v6))
      {
        goto LABEL_20;
      }

      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v6 + 8);
      v90 = v6;
      v91 = v8;
      Type = mlir::ElementsAttr::getType(&v90);
      v10 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      v102 = v10;
      v103 = Type;
      mlir::ShapedType::getShape(&v102);
      if (v11)
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v6 + 8);
        v97 = v6;
        v98 = v12;
        v13 = mlir::ElementsAttr::getType(&v97);
        v14 = v13;
        if (v13)
        {
          v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
        }

        v99 = v14;
        v100 = v13;
        mlir::ShapedType::getShape(&v99);
        if (v15 != 1)
        {
          goto LABEL_20;
        }
      }

      v88[0] = v6;
      v95 = mlir::ArrayAttr::getValue(v88);
      v96 = v16;
      v89[0] = mlir::ElementsAttr::isSplat(&v95);
      if (!mlir::Type::isF16(v89))
      {
        v86[0] = v6;
        v93 = mlir::ArrayAttr::getValue(v86);
        v94 = v17;
        v87[0] = mlir::ElementsAttr::isSplat(&v93);
        if (!mlir::Type::isF32(v87))
        {
LABEL_20:
          v90 = "'anec.linear' op attribute 'kernel_scale' failed to satisfy constraint: f16 or f32 elements attribute of rank 0/1";
          v92 = 259;
          mlir::emitError(a2, &v90, &v102);
          v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v102);
          if (v102)
          {
            mlir::InFlightDiagnostic::report(&v102);
          }

          if (v111 == 1)
          {
            if (v110 != &v111)
            {
              free(v110);
            }

            v19 = __p;
            if (__p)
            {
              v20 = v109;
              v21 = __p;
              if (v109 != __p)
              {
                do
                {
                  v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
                }

                while (v20 != v19);
                v21 = __p;
              }

              v109 = v19;
              operator delete(v21);
            }

            v22 = v106;
            if (!v106)
            {
              goto LABEL_106;
            }

            v23 = v107;
            v24 = v106;
            if (v107 == v106)
            {
LABEL_105:
              v107 = v22;
              operator delete(v24);
LABEL_106:
              if (v104 != &v105)
              {
                free(v104);
              }

              return v18;
            }

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
LABEL_104:
            v24 = v106;
            goto LABEL_105;
          }

          return v18;
        }
      }
    }
  }

  if (!v7)
  {
    goto LABEL_111;
  }

  if (!mlir::DenseIntElementsAttr::classof(v7))
  {
    goto LABEL_72;
  }

  v27 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
  v90 = v7;
  v91 = v27;
  v28 = mlir::ElementsAttr::getType(&v90);
  v29 = v28;
  if (v28)
  {
    v28 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v28 + 8);
  }

  v102 = v29;
  v103 = v28;
  mlir::ShapedType::getShape(&v102);
  if (v30)
  {
    v31 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    v97 = v7;
    v98 = v31;
    v32 = mlir::ElementsAttr::getType(&v97);
    v33 = v32;
    if (v32)
    {
      v32 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v32 + 8);
    }

    v99 = v33;
    v100 = v32;
    mlir::ShapedType::getShape(&v99);
    if (v34 != 1)
    {
      goto LABEL_72;
    }
  }

  v88[0] = v7;
  v95 = mlir::ArrayAttr::getValue(v88);
  v96 = v35;
  v89[0] = mlir::ElementsAttr::isSplat(&v95);
  if (mlir::Type::isSignedInteger(v89, 8) || (v86[0] = v7, v93 = mlir::ArrayAttr::getValue(v86), v94 = v36, v87[0] = mlir::ElementsAttr::isSplat(&v93), mlir::Type::isUnsignedInteger(v87, 8)))
  {
LABEL_111:
    if (!v5)
    {
      return 1;
    }

    if (mlir::DenseElementsAttr::classof(v5))
    {
      v37 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
      v90 = v5;
      v91 = v37;
      v38 = mlir::ElementsAttr::getType(&v90);
      v39 = v38;
      if (v38)
      {
        v38 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v38 + 8);
      }

      v102 = v39;
      v103 = v38;
      mlir::ShapedType::getShape(&v102);
      if (!v40)
      {
        goto LABEL_112;
      }

      v41 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
      v97 = v5;
      v98 = v41;
      v42 = mlir::ElementsAttr::getType(&v97);
      v43 = v42;
      if (v42)
      {
        v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8);
      }

      v99 = v43;
      v100 = v42;
      mlir::ShapedType::getShape(&v99);
      if (v44 == 1)
      {
        goto LABEL_112;
      }

      v45 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
      v93 = v5;
      v94 = v45;
      v46 = mlir::ElementsAttr::getType(&v93);
      v47 = v46;
      if (v46)
      {
        v46 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v46 + 8);
      }

      v95 = v47;
      v96 = v46;
      mlir::ShapedType::getShape(&v95);
      if (v48 == 2)
      {
        goto LABEL_112;
      }

      v49 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
      v88[0] = v5;
      v88[1] = v49;
      v50 = mlir::ElementsAttr::getType(v88);
      v51 = v50;
      if (v50)
      {
        v50 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v50 + 8);
      }

      v89[0] = v51;
      v89[1] = v50;
      mlir::ShapedType::getShape(v89);
      if (v52 == 3)
      {
        goto LABEL_112;
      }

      v53 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
      v86[0] = v5;
      v86[1] = v53;
      v54 = mlir::ElementsAttr::getType(v86);
      v55 = v54;
      if (v54)
      {
        v54 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v54 + 8);
      }

      v87[0] = v55;
      v87[1] = v54;
      mlir::ShapedType::getShape(v87);
      if (v56 == 4)
      {
        goto LABEL_112;
      }

      v57 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
      v84[0] = v5;
      v84[1] = v57;
      v58 = mlir::ElementsAttr::getType(v84);
      v59 = v58;
      if (v58)
      {
        v58 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v58 + 8);
      }

      v85[0] = v59;
      v85[1] = v58;
      mlir::ShapedType::getShape(v85);
      if (v60 == 5)
      {
        goto LABEL_112;
      }

      v61 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
      v82[0] = v5;
      v82[1] = v61;
      v62 = mlir::ElementsAttr::getType(v82);
      v63 = v62;
      if (v62)
      {
        v62 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v62 + 8);
      }

      v83[0] = v63;
      v83[1] = v62;
      mlir::ShapedType::getShape(v83);
      if (v64 == 6)
      {
LABEL_112:
        v79 = v5;
        v80[0] = mlir::ArrayAttr::getValue(&v79);
        v80[1] = v65;
        isSplat = mlir::ElementsAttr::isSplat(v80);
        if (mlir::Type::isF16(&isSplat))
        {
          return 1;
        }
      }
    }

    v90 = "'anec.linear' op attribute 'kernel_lut' failed to satisfy constraint: dense elements attribute for palettized LUT of rank 0/1/2/3/4/5/6";
    v92 = 259;
    mlir::emitError(a2, &v90, &v102);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v102);
    if (v102)
    {
      mlir::InFlightDiagnostic::report(&v102);
    }

    if (v111 == 1)
    {
      if (v110 != &v111)
      {
        free(v110);
      }

      v72 = __p;
      if (__p)
      {
        v73 = v109;
        v74 = __p;
        if (v109 != __p)
        {
          do
          {
            v73 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v73 - 1);
          }

          while (v73 != v72);
          v74 = __p;
        }

        v109 = v72;
        operator delete(v74);
      }

      v22 = v106;
      if (!v106)
      {
        goto LABEL_106;
      }

      v75 = v107;
      v24 = v106;
      if (v107 == v106)
      {
        goto LABEL_105;
      }

      do
      {
        v77 = *--v75;
        v76 = v77;
        *v75 = 0;
        if (v77)
        {
          MEMORY[0x1AC55A040](v76, 0x1000C8077774924);
        }
      }

      while (v75 != v22);
      goto LABEL_104;
    }
  }

  else
  {
LABEL_72:
    v90 = "'anec.linear' op attribute 'kernel_zero_point' failed to satisfy constraint: si8 or ui8 elements attribute of rank 0/1";
    v92 = 259;
    mlir::emitError(a2, &v90, &v102);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v102);
    if (v102)
    {
      mlir::InFlightDiagnostic::report(&v102);
    }

    if (v111 == 1)
    {
      if (v110 != &v111)
      {
        free(v110);
      }

      v66 = __p;
      if (__p)
      {
        v67 = v109;
        v68 = __p;
        if (v109 != __p)
        {
          do
          {
            v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
          }

          while (v67 != v66);
          v68 = __p;
        }

        v109 = v66;
        operator delete(v68);
      }

      v22 = v106;
      if (!v106)
      {
        goto LABEL_106;
      }

      v69 = v107;
      v24 = v106;
      if (v107 == v106)
      {
        goto LABEL_105;
      }

      do
      {
        v71 = *--v69;
        v70 = v71;
        *v69 = 0;
        if (v71)
        {
          MEMORY[0x1AC55A040](v70, 0x1000C8077774924);
        }
      }

      while (v69 != v22);
      goto LABEL_104;
    }
  }

  return v18;
}

uint64_t mlir::anec::Linear::addOpToNetwork(mlir::anec::Linear *this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = *this;
  if (a2)
  {
    v7 = *(v4 + 72);
    v8 = *(v7 + 24);
    v9 = *(v7 + 56);
    if (*(v4 + 36))
    {
      v10 = v4 - 16;
    }

    else
    {
      v10 = 0;
    }

    v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v11)
    {
      v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
    }

    else
    {
      v12 = 0;
    }

    v32[0] = v11;
    v32[1] = v12;
    mlir::ShapedType::getShape(v32);
    v21 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v21)
    {
      v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
    }

    else
    {
      v22 = 0;
    }

    v31[0] = v21;
    v31[1] = v22;
    mlir::ShapedType::getShape(v31);
    v23 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v23)
    {
      v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v23 + 8);
    }

    else
    {
      v24 = 0;
    }

    v30[0] = v23;
    v30[1] = v24;
    mlir::ShapedType::getShape(v30);
    v28 = 0;
    v29 = 0;
    v27 = 0;
    result = 0;
    if (v25)
    {
      operator new();
    }
  }

  else
  {
    v33 = "network should not be nullptr";
    v34 = 259;
    mlir::Operation::emitError(v4, &v33, &v35);
    if (v35)
    {
      mlir::InFlightDiagnostic::report(&v35);
    }

    if (v43 == 1)
    {
      if (v42 != &v43)
      {
        free(v42);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v41;
        v15 = __p;
        if (v41 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v41 = v13;
        operator delete(v15);
      }

      v16 = v38;
      if (v38)
      {
        v17 = v39;
        v18 = v38;
        if (v39 != v38)
        {
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
          v18 = v38;
        }

        v39 = v16;
        operator delete(v18);
      }

      if (v36 != &v37)
      {
        free(v36);
      }
    }

    return 0;
  }

  return result;
}

uint64_t mlir::anec::Deconvolution::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v98 = *MEMORY[0x1E69E9840];
  v91 = a6;
  LOBYTE(v92) = 0;
  v93 = 0;
  v94 = a7;
  v95 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v91);
    if (v93 == 1)
    {
      v93 = 0;
    }

    mlir::OperationName::OperationName(&v92, "anec.deconvolution", 18, Context);
    v93 = 1;
    a1 = v15;
  }

  v96 = a4;
  v97 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if (!mlir::anec::DeconvolutionAdaptor::verify(&v91, v18))
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8))
  {
    v74 = 0;
    v75 = 0;
    return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "input must be a ShapedType");
  }

  v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  v74 = v19;
  v75 = v20;
  if (!v19)
  {
    return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "input must be a ShapedType");
  }

  Shape = mlir::ShapedType::getShape(&v74);
  if (v22 >= 6)
  {
    return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "input tensor rank of 4 or 5 are supported");
  }

  v24 = Shape;
  v89[0] = v90;
  v89[1] = 0x300000000;
  Value = mlir::AffineMapAttr::getValue(&v91);
  v26 = mlir::DictionaryAttr::end(&v91);
  v27 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), v26, *(*(v92 + 96) + 72));
  mlir::getValues<unsigned long>(v27, v89);
  v87[0] = v88;
  v87[1] = 0x300000000;
  v28 = mlir::AffineMapAttr::getValue(&v91);
  v29 = mlir::DictionaryAttr::end(&v91);
  v30 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v28, (v29 - 32), *(*(v92 + 96) + 8));
  mlir::getValues<unsigned long>(v30, v87);
  v85[0] = v86;
  v85[1] = 0x600000000;
  v31 = mlir::AffineMapAttr::getValue(&v91);
  v32 = mlir::DictionaryAttr::end(&v91);
  v33 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v31 + 16), (v32 - 16), *(*(v92 + 96) + 56));
  mlir::getValues<unsigned long>(v33, v85);
  v34 = mlir::TypeRange::dereference_iterator(a9, 1);
  v35 = v34;
  if (v34)
  {
    v34 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v34 + 8);
  }

  v73[0] = v35;
  v73[1] = v34;
  v36 = mlir::ShapedType::getShape(v73);
  mlir::ShapedType::getShape(v73);
  if (v37 < 6)
  {
    Groups = mlir::anec::detail::ConvolutionGenericAdaptorBase::getGroups(&v91);
    v72 = Groups;
    mlir::ShapedType::getShape(&v74);
    IndexFromDim = mlir::anec::getIndexFromDim(1, v39);
    if (v41)
    {
      v71 = v24[IndexFromDim];
      if (v71 % Groups)
      {
        v77 = "input channels {0} should be divisible by groups {1}";
        v78 = 52;
        v79 = v84;
        v80 = 2;
        LOBYTE(v81) = 1;
        v82[0] = &unk_1F1A177C0;
        v82[1] = &v71;
        v83[0] = &unk_1F1A177C0;
        v83[1] = &v72;
        v84[0] = v82;
        v84[1] = v83;
        result = mlir::emitOptionalError<llvm::formatv_object<std::tuple<llvm::support::detail::provider_format_adapter<long long &>,llvm::support::detail::provider_format_adapter<unsigned long long &>>>>(a2, a3, &v77);
        goto LABEL_38;
      }

      v42 = v36[1];
      mlir::ShapedType::getShape(&v74);
      v44 = mlir::anec::getIndexFromDim(3, v43);
      if (v45)
      {
        v46 = v44;
        mlir::ShapedType::getShape(&v74);
        v48 = mlir::anec::getIndexFromDim(4, v47);
        if (v49)
        {
          v50 = v48;
          v70 = v42 * Groups;
          mlir::ShapedType::getShape(v73);
          v52 = v51;
          v53 = *(v85[0] + 2) + *(v89[0] + 1) * v24[v46] + *(v85[0] + 3) - v36[2] + 1;
          v54 = *(v85[0] + 4) + *(v89[0] + 2) * v24[v50] + *(v85[0] + 5) - v36[3] + 1;
          v55 = *v24;
          mlir::ShapedType::getShape(&v74);
          v57 = mlir::anec::getIndexFromDim(2, v56);
          if (v58)
          {
            v59 = 4;
            if (v52 == 4)
            {
              v59 = 0x1FFFFFFFFFFFFFFFLL;
            }

            v60 = *v85[0] + *v89[0] * v24[v57] + *(v85[0] + 1) - v36[v59] + 1;
          }

          else
          {
            v60 = 0;
          }

          v77 = &v79;
          v79 = v55;
          v80 = v70;
          v81 = v53;
          v82[0] = v54;
          v78 = 0x600000004;
          if (v60)
          {
            v76 = v60;
            llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v77, &v80, &v76);
            v61 = v77;
            v62 = v78;
          }

          else
          {
            v62 = 4;
            v61 = &v79;
          }

          isSplat = mlir::ElementsAttr::isSplat(&v74);
          v64 = mlir::MemRefType::get(v61, v62, isSplat, 0, 0, 0);
          v65 = *(a11 + 8);
          if (v65 >= *(a11 + 12))
          {
            v67 = v64;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v65 + 1, 8);
            v64 = v67;
            LODWORD(v65) = *(a11 + 8);
          }

          *(*a11 + 8 * v65) = v64;
          ++*(a11 + 8);
          if (v77 != &v79)
          {
            free(v77);
          }

          result = 1;
          goto LABEL_38;
        }
      }
    }

    v68 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::anec::DeconvolutionAdaptor::verify(v68, v69);
  }

  result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "filter must be a tensor of rank 4 or 5");
LABEL_38:
  v66 = result;
  if (v85[0] != v86)
  {
    free(v85[0]);
    result = v66;
  }

  if (v87[0] != v88)
  {
    free(v87[0]);
    result = v66;
  }

  if (v89[0] != v90)
  {
    free(v89[0]);
    return v66;
  }

  return result;
}

BOOL mlir::anec::DeconvolutionAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v157 = *MEMORY[0x1E69E9840];
  v144 = *a1;
  Value = mlir::AffineMapAttr::getValue(&v144);
  if (Value == mlir::DictionaryAttr::end(&v144))
  {
LABEL_7:
    v141 = "'anec.deconvolution' op requires attribute 'dilation'";
    v143 = 259;
    mlir::emitError(a2, &v141, &v147);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
    if (v147)
    {
      mlir::InFlightDiagnostic::report(&v147);
    }

    if (v156 != 1)
    {
      return v6;
    }

    if (v155 != &v156)
    {
      free(v155);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v154;
      v9 = __p;
      if (v154 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v154 = v7;
      operator delete(v9);
    }

    v10 = v151;
    if (!v151)
    {
      goto LABEL_120;
    }

    v11 = v152;
    v12 = v151;
    if (v152 == v151)
    {
      goto LABEL_119;
    }

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
    goto LABEL_118;
  }

  v5 = 0;
  while (ZinCompressedFootprintInfo::GetCompressedBytes(Value) != *(*(a1[1] + 96) + 8))
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == **(a1[1] + 96))
    {
      v5 = Value[1];
    }

    Value += 2;
    if (Value == mlir::DictionaryAttr::end(&v144))
    {
      goto LABEL_7;
    }
  }

  v15 = Value[1];
  if (Value == mlir::DictionaryAttr::end(&v144))
  {
LABEL_37:
    v141 = "'anec.deconvolution' op requires attribute 'padding'";
    v143 = 259;
    mlir::emitError(a2, &v141, &v147);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
    if (v147)
    {
      mlir::InFlightDiagnostic::report(&v147);
    }

    if (v156 != 1)
    {
      return v6;
    }

    if (v155 != &v156)
    {
      free(v155);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v154;
      v23 = __p;
      if (v154 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v154 = v21;
      operator delete(v23);
    }

    v10 = v151;
    if (!v151)
    {
      goto LABEL_120;
    }

    v24 = v152;
    v12 = v151;
    if (v152 == v151)
    {
      goto LABEL_119;
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

    while (v24 != v10);
    goto LABEL_118;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  while (ZinCompressedFootprintInfo::GetCompressedBytes(Value) != *(*(a1[1] + 96) + 56))
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 16))
    {
      v16 = Value[1];
    }

    else if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 24))
    {
      v17 = Value[1];
    }

    else if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 32))
    {
      v18 = Value[1];
    }

    else if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 40))
    {
      v19 = Value[1];
    }

    else if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 48))
    {
      v20 = Value[1];
    }

    Value += 2;
    if (Value == mlir::DictionaryAttr::end(&v144))
    {
      goto LABEL_37;
    }
  }

  v120 = v20;
  v121 = Value[1];
  if (Value == mlir::DictionaryAttr::end(&v144))
  {
LABEL_59:
    v141 = "'anec.deconvolution' op requires attribute 'stride'";
    v143 = 259;
    mlir::emitError(a2, &v141, &v147);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
    if (v147)
    {
      mlir::InFlightDiagnostic::report(&v147);
    }

    if (v156 != 1)
    {
      return v6;
    }

    if (v155 != &v156)
    {
      free(v155);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v154;
      v30 = __p;
      if (v154 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v154 = v28;
      operator delete(v30);
    }

    v10 = v151;
    if (!v151)
    {
      goto LABEL_120;
    }

    v31 = v152;
    v12 = v151;
    if (v152 == v151)
    {
      goto LABEL_119;
    }

    do
    {
      v33 = *--v31;
      v32 = v33;
      *v31 = 0;
      if (v33)
      {
        MEMORY[0x1AC55A040](v32, 0x1000C8077774924);
      }
    }

    while (v31 != v10);
LABEL_118:
    v12 = v151;
    goto LABEL_119;
  }

  v27 = 0;
  while (ZinCompressedFootprintInfo::GetCompressedBytes(Value) != *(*(a1[1] + 96) + 72))
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 64))
    {
      v27 = Value[1];
    }

    Value += 2;
    if (Value == mlir::DictionaryAttr::end(&v144))
    {
      goto LABEL_59;
    }
  }

  v34 = Value[1];
  if (v34)
  {
    if (!mlir::DenseIntElementsAttr::classof(Value[1]))
    {
      goto LABEL_102;
    }

    v35 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v34 + 8);
    v141 = v34;
    v142 = v35;
    Type = mlir::ElementsAttr::getType(&v141);
    v37 = Type;
    if (Type)
    {
      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    v147 = v37;
    v148 = Type;
    Shape = mlir::ShapedType::getShape(&v147);
    v145 = 3;
    if (v39 != 1 || *Shape != v145 || (v135 = v34, v139 = mlir::ArrayAttr::getValue(&v135), v140 = v40, isSplat = mlir::ElementsAttr::isSplat(&v139), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
    {
LABEL_102:
      v141 = "'anec.deconvolution' op attribute 'stride' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      v143 = 259;
      mlir::emitError(a2, &v141, &v147);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
      if (v147)
      {
        mlir::InFlightDiagnostic::report(&v147);
      }

      if (v156 != 1)
      {
        return v6;
      }

      if (v155 != &v156)
      {
        free(v155);
      }

      v55 = __p;
      if (__p)
      {
        v56 = v154;
        v57 = __p;
        if (v154 != __p)
        {
          do
          {
            v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
          }

          while (v56 != v55);
          v57 = __p;
        }

        v154 = v55;
        operator delete(v57);
      }

      v10 = v151;
      if (v151)
      {
        v58 = v152;
        v12 = v151;
        if (v152 != v151)
        {
          do
          {
            v60 = *--v58;
            v59 = v60;
            *v58 = 0;
            if (v60)
            {
              MEMORY[0x1AC55A040](v59, 0x1000C8077774924);
            }
          }

          while (v58 != v10);
          goto LABEL_118;
        }

LABEL_119:
        v152 = v10;
        operator delete(v12);
      }

LABEL_120:
      if (v149 != &v150)
      {
        free(v149);
      }

      return v6;
    }
  }

  if (!v15)
  {
    goto LABEL_193;
  }

  if (mlir::DenseIntElementsAttr::classof(v15))
  {
    v41 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v15 + 8);
    v141 = v15;
    v142 = v41;
    v42 = mlir::ElementsAttr::getType(&v141);
    v43 = v42;
    if (v42)
    {
      v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8);
    }

    v147 = v43;
    v148 = v42;
    v44 = mlir::ShapedType::getShape(&v147);
    v145 = 3;
    if (v45 == 1 && *v44 == v145)
    {
      v135 = v15;
      v139 = mlir::ArrayAttr::getValue(&v135);
      v140 = v46;
      isSplat = mlir::ElementsAttr::isSplat(&v139);
      if (mlir::Type::isUnsignedInteger(&isSplat, 64))
      {
LABEL_193:
        if (!v121)
        {
          goto LABEL_97;
        }

        if (mlir::DenseIntElementsAttr::classof(v121))
        {
          v47 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v121 + 8);
          v141 = v121;
          v142 = v47;
          v48 = mlir::ElementsAttr::getType(&v141);
          v49 = v48;
          if (v48)
          {
            v48 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v48 + 8);
          }

          v147 = v49;
          v148 = v48;
          v50 = mlir::ShapedType::getShape(&v147);
          v145 = 6;
          if (v51 == 1 && *v50 == v145)
          {
            v135 = v121;
            v139 = mlir::ArrayAttr::getValue(&v135);
            v140 = v52;
            isSplat = mlir::ElementsAttr::isSplat(&v139);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
LABEL_97:
              if (v27 && (mlir::anec::PaddingModeAttr::classof(v27) & 1) == 0)
              {
                v54 = "'anec.deconvolution' op attribute 'padding_mode' failed to satisfy constraint: valid PaddingMode";
                goto LABEL_128;
              }

              if (v16)
              {
                v53 = v120;
                if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v141 = v16, v147 = mlir::AffineMapAttr::getValue(&v141), !mlir::Type::isUnsignedInteger(&v147, 64)))
                {
                  v54 = "'anec.deconvolution' op attribute 'groups' failed to satisfy constraint: 64-bit unsigned integer attribute";
LABEL_128:
                  v141 = v54;
                  v143 = 259;
                  mlir::emitError(a2, &v141, &v147);
                  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v147);
                  return v6;
                }
              }

              else
              {
                v53 = v120;
              }

              if (!v5 || *(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
              {
                if (!v19)
                {
                  goto LABEL_194;
                }

                if (!mlir::DenseFPElementsAttr::classof(v19))
                {
                  goto LABEL_187;
                }

                v62 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v19 + 8);
                v141 = v19;
                v142 = v62;
                v63 = mlir::ElementsAttr::getType(&v141);
                v64 = v63;
                if (v63)
                {
                  v63 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v63 + 8);
                }

                v147 = v64;
                v148 = v63;
                mlir::ShapedType::getShape(&v147);
                if (v65)
                {
                  v66 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v19 + 8);
                  v145 = v19;
                  v146 = v66;
                  v67 = mlir::ElementsAttr::getType(&v145);
                  v68 = v67;
                  if (v67)
                  {
                    v67 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v67 + 8);
                  }

                  v139 = v68;
                  v140 = v67;
                  mlir::ShapedType::getShape(&v139);
                  v53 = v120;
                  if (v69 != 1)
                  {
                    v70 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v19 + 8);
                    v135 = v19;
                    v136 = v70;
                    v71 = mlir::ElementsAttr::getType(&v135);
                    v72 = v71;
                    if (v71)
                    {
                      v71 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v71 + 8);
                    }

                    isSplat = v72;
                    v138 = v71;
                    mlir::ShapedType::getShape(&isSplat);
                    v53 = v120;
                    if (v73 != 4)
                    {
                      goto LABEL_187;
                    }
                  }
                }

                v129[0] = v19;
                v133 = mlir::ArrayAttr::getValue(v129);
                v134 = v74;
                v130[0] = mlir::ElementsAttr::isSplat(&v133);
                if (mlir::Type::isF16(v130) || (v127[0] = v19, v131 = mlir::ArrayAttr::getValue(v127), v132 = v75, v128[0] = mlir::ElementsAttr::isSplat(&v131), mlir::Type::isF32(v128)))
                {
LABEL_194:
                  if (!v53)
                  {
                    goto LABEL_195;
                  }

                  if (!mlir::DenseIntElementsAttr::classof(v53))
                  {
                    goto LABEL_188;
                  }

                  v76 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v53 + 8);
                  v141 = v53;
                  v142 = v76;
                  v77 = mlir::ElementsAttr::getType(&v141);
                  v78 = v77;
                  if (v77)
                  {
                    v77 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v77 + 8);
                  }

                  v147 = v78;
                  v148 = v77;
                  mlir::ShapedType::getShape(&v147);
                  v79 = v120;
                  if (v80)
                  {
                    v81 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v120 + 8);
                    v145 = v120;
                    v146 = v81;
                    v82 = mlir::ElementsAttr::getType(&v145);
                    v83 = v82;
                    if (v82)
                    {
                      v82 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v82 + 8);
                    }

                    v139 = v83;
                    v140 = v82;
                    mlir::ShapedType::getShape(&v139);
                    v79 = v120;
                    if (v84 != 1)
                    {
                      v85 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v120 + 8);
                      v135 = v120;
                      v136 = v85;
                      v86 = mlir::ElementsAttr::getType(&v135);
                      v87 = v86;
                      if (v86)
                      {
                        v86 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v86 + 8);
                      }

                      isSplat = v87;
                      v138 = v86;
                      mlir::ShapedType::getShape(&isSplat);
                      v79 = v120;
                      if (v88 != 4)
                      {
                        goto LABEL_188;
                      }
                    }
                  }

                  v129[0] = v79;
                  v133 = mlir::ArrayAttr::getValue(v129);
                  v134 = v89;
                  v130[0] = mlir::ElementsAttr::isSplat(&v133);
                  if (mlir::Type::isSignedInteger(v130, 8) || (v127[0] = v79, v131 = mlir::ArrayAttr::getValue(v127), v132 = v90, v128[0] = mlir::ElementsAttr::isSplat(&v131), mlir::Type::isUnsignedInteger(v128, 8)))
                  {
LABEL_195:
                    if (!v18)
                    {
                      goto LABEL_185;
                    }

                    if (!mlir::DenseElementsAttr::classof(v18))
                    {
                      goto LABEL_189;
                    }

                    v91 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                    v141 = v18;
                    v142 = v91;
                    v92 = mlir::ElementsAttr::getType(&v141);
                    v93 = v92;
                    if (v92)
                    {
                      v92 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v92 + 8);
                    }

                    v147 = v93;
                    v148 = v92;
                    mlir::ShapedType::getShape(&v147);
                    if (v94)
                    {
                      v95 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                      v145 = v18;
                      v146 = v95;
                      v96 = mlir::ElementsAttr::getType(&v145);
                      v97 = v96;
                      if (v96)
                      {
                        v96 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v96 + 8);
                      }

                      v139 = v97;
                      v140 = v96;
                      mlir::ShapedType::getShape(&v139);
                      if (v98 != 1)
                      {
                        v99 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                        v135 = v18;
                        v136 = v99;
                        v100 = mlir::ElementsAttr::getType(&v135);
                        v101 = v100;
                        if (v100)
                        {
                          v100 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v100 + 8);
                        }

                        isSplat = v101;
                        v138 = v100;
                        mlir::ShapedType::getShape(&isSplat);
                        if (v102 != 2)
                        {
                          v103 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                          v131 = v18;
                          v132 = v103;
                          v104 = mlir::ElementsAttr::getType(&v131);
                          v105 = v104;
                          if (v104)
                          {
                            v104 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v104 + 8);
                          }

                          v133 = v105;
                          v134 = v104;
                          mlir::ShapedType::getShape(&v133);
                          if (v106 != 3)
                          {
                            v107 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                            v129[0] = v18;
                            v129[1] = v107;
                            v108 = mlir::ElementsAttr::getType(v129);
                            v109 = v108;
                            if (v108)
                            {
                              v108 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v108 + 8);
                            }

                            v130[0] = v109;
                            v130[1] = v108;
                            mlir::ShapedType::getShape(v130);
                            if (v110 != 4)
                            {
                              v111 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                              v127[0] = v18;
                              v127[1] = v111;
                              v112 = mlir::ElementsAttr::getType(v127);
                              v113 = v112;
                              if (v112)
                              {
                                v112 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v112 + 8);
                              }

                              v128[0] = v113;
                              v128[1] = v112;
                              mlir::ShapedType::getShape(v128);
                              if (v114 != 5)
                              {
                                v115 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                                v125[0] = v18;
                                v125[1] = v115;
                                v116 = mlir::ElementsAttr::getType(v125);
                                v117 = v116;
                                if (v116)
                                {
                                  v116 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v116 + 8);
                                }

                                v126[0] = v117;
                                v126[1] = v116;
                                mlir::ShapedType::getShape(v126);
                                if (v118 != 6)
                                {
                                  goto LABEL_189;
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    v122 = v18;
                    v123[0] = mlir::ArrayAttr::getValue(&v122);
                    v123[1] = v119;
                    v124 = mlir::ElementsAttr::isSplat(v123);
                    if (mlir::Type::isF16(&v124))
                    {
LABEL_185:
                      if (!v17 || *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
                      {
                        return 1;
                      }

                      v54 = "'anec.deconvolution' op attribute 'kernel_mutable_palettized_LUT' failed to satisfy constraint: dictionary of named attribute values";
                    }

                    else
                    {
LABEL_189:
                      v54 = "'anec.deconvolution' op attribute 'kernel_palettized_LUT' failed to satisfy constraint: dense elements attribute for palettized LUT of rank 0/1/2/3/4/5/6";
                    }
                  }

                  else
                  {
LABEL_188:
                    v54 = "'anec.deconvolution' op attribute 'kernel_zero_point' failed to satisfy constraint: si8 or ui8 elements attribute of rank 0/1/4";
                  }
                }

                else
                {
LABEL_187:
                  v54 = "'anec.deconvolution' op attribute 'kernel_scale' failed to satisfy constraint: f16 or f32 elements attribute of rank 0/1/4";
                }
              }

              else
              {
                v54 = "'anec.deconvolution' op attribute 'channel_wise' failed to satisfy constraint: unit attribute";
              }

              goto LABEL_128;
            }
          }
        }

        v54 = "'anec.deconvolution' op attribute 'padding' failed to satisfy constraint: ui64 elements attribute of shape {6}";
        goto LABEL_128;
      }
    }
  }

  v141 = "'anec.deconvolution' op attribute 'dilation' failed to satisfy constraint: ui64 elements attribute of shape {3}";
  v143 = 259;
  mlir::emitError(a2, &v141, &v147);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
  if (v147)
  {
    mlir::InFlightDiagnostic::report(&v147);
  }

  if (v156 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v148);
  }

  return v6;
}

BOOL mlir::anec::Deconvolution::addOpToNetwork(mlir::Operation **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = *this;
  v57 = *this;
  if (a2)
  {
    v6 = *(v3 + 9);
    v7 = *(v6 + 24);
    v8 = *(v6 + 56);
    if (*(v3 + 9))
    {
      v9 = v3 - 16;
    }

    else
    {
      v9 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
    v64[0] = mlir::Operation::getAttrDictionary(v3);
    Value = mlir::ArrayAttr::getValue(v64);
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v11 = mlir::ArrayAttr::getValue(v64);
    v13 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v11 + 16 * v12 - 32), *(*(*(v57 + 6) + 96) + 16));
    if (v13)
    {
      if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v58[0] = v14;
    mlir::IntegerAttr::getValue(v58, v64);
    if (LODWORD(v64[1]) > 0x40)
    {
      MEMORY[0x1AC55A040]();
    }

    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v24 = mlir::ArrayAttr::getValue(v64);
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v25 = mlir::ArrayAttr::getValue(v64);
    mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v24, (v25 + 16 * v26 - 48), **(*(v57 + 6) + 96));
    v62[0] = v63;
    v62[1] = 0x200000000;
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v27 = mlir::ArrayAttr::getValue(v64);
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v28 = mlir::ArrayAttr::getValue(v64);
    v30 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v27 + 32), (v28 + 16 * v29), *(*(*(v57 + 6) + 96) + 72));
    mlir::getValues<unsigned long>(v30, v62);
    __src[0] = v61;
    __src[1] = 0x200000000;
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v31 = mlir::ArrayAttr::getValue(v64);
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v32 = mlir::ArrayAttr::getValue(v64);
    v34 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v31, (v32 + 16 * v33 - 32), *(*(*(v57 + 6) + 96) + 8));
    mlir::getValues<unsigned long>(v34, __src);
    v58[0] = v59;
    v58[1] = 0x400000000;
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v35 = mlir::ArrayAttr::getValue(v64);
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v36 = mlir::ArrayAttr::getValue(v64);
    v38 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v35 + 16), (v36 + 16 * v37 - 16), *(*(*(v57 + 6) + 96) + 56));
    mlir::getValues<unsigned long>(v38, v58);
    v39 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v39)
    {
      v40 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v39 + 8);
    }

    else
    {
      v40 = 0;
    }

    v55[0] = v39;
    v55[1] = v40;
    mlir::ShapedType::getShape(v55);
    v41 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v41)
    {
      v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
    }

    else
    {
      v42 = 0;
    }

    v54[0] = v41;
    v54[1] = v42;
    mlir::ShapedType::getShape(v54);
    v43 = (v8[1] & 0xFFFFFFFFFFFFFFF8);
    if (v43)
    {
      v44 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v43 + 8);
    }

    else
    {
      v44 = 0;
    }

    v53[0] = v43;
    v53[1] = v44;
    mlir::ShapedType::getShape(v53);
    v52[0] = 0;
    v52[1] = 0;
    v48 = v52;
    v64[0] = v8;
    DefiningOp = mlir::Value::getDefiningOp(v64);
    if (DefiningOp)
    {
      mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v48, DefiningOp);
    }

    v50 = 0;
    v51 = 0;
    v49 = 0;
    v15 = 0;
    {
      operator new();
    }

    if (v58[0] != v59)
    {
      free(v58[0]);
    }

    if (__src[0] != v61)
    {
      free(__src[0]);
    }

    v46 = v62[0];
    if (v62[0] != v63)
    {
LABEL_50:
      free(v46);
    }
  }

  else
  {
    v58[0] = "network should not be nullptr";
    v59[8] = 259;
    mlir::Operation::emitError(v3, v58, v64);
    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
    if (v64[0])
    {
      mlir::InFlightDiagnostic::report(v64);
    }

    if (v72 == 1)
    {
      if (v71 != &v72)
      {
        free(v71);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v70;
        v18 = __p;
        if (v70 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v70 = v16;
        operator delete(v18);
      }

      v19 = v67;
      if (v67)
      {
        v20 = v68;
        v21 = v67;
        if (v68 != v67)
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
          v21 = v67;
        }

        v68 = v19;
        operator delete(v21);
      }

      v46 = v65;
      if (v65 != &v66)
      {
        goto LABEL_50;
      }
    }
  }

  return v15;
}

void mlir::anec::Deconvolution::getExecutionCost(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *a1;
  v14 = *(*a1 + 72);
  v15 = (*(*(v14 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
    v13 = *a1;
    v14 = *(*a1 + 72);
  }

  else
  {
    v16 = 0;
  }

  v46[0] = v15;
  v46[1] = v16;
  v17 = (*(*(v14 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
    v13 = *a1;
  }

  else
  {
    v18 = 0;
  }

  v45[0] = v17;
  v45[1] = v18;
  v19 = *(v13 + 36);
  v20 = v13 - 16;
  if (v19)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v21, 0);
  v23 = 0;
  v24 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v24)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
  }

  v44[0] = v24;
  v44[1] = v23;
  mlir::ShapedType::getShape(v46);
  mlir::ShapedType::getShape(v45);
  mlir::ShapedType::getShape(v44);
  mlir::ShapedType::getShape(v46);
  mlir::anec::getIndexFromDim(0, v25);
  if (v26 & 1) != 0 && (mlir::ShapedType::getShape(v46), mlir::anec::getIndexFromDim(1, v27), (v28) && (mlir::ShapedType::getShape(v46), mlir::anec::getIndexFromDim(3, v29), (v30) && (mlir::ShapedType::getShape(v46), mlir::anec::getIndexFromDim(4, v31), (v32))
  {
    mlir::ShapedType::getShape(v46);
    mlir::anec::getIndexFromDim(2, v33);
    v34 = *a1;
    isSplat = mlir::ElementsAttr::isSplat(v46);
  }

  else
  {
    v36 = std::__throw_bad_optional_access[abi:nn200100]();
    mlir::anec::inferElementwiseReturnTypes(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11);
  }
}

uint64_t mlir::anec::inferElementwiseReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v47[4] = *MEMORY[0x1E69E9840];
  v13 = mlir::TypeRange::dereference_iterator(a9, 0);
  v14 = v13;
  if (v13)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  __src = v14;
  v46 = v13;
  Shape = mlir::ShapedType::getShape(&__src);
  v17 = v15;
  __src = v47;
  v46 = 0x400000000;
  v18 = (8 * v15) >> 3;
  if (v18 < 5)
  {
    v19 = 0;
    v20 = 8 * v15;
    if (!v15)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v47, v18, 8);
  v19 = v46;
  v20 = 8 * v17;
  if (v17)
  {
LABEL_7:
    memcpy(__src + 8 * v19, Shape, v20);
    v19 = v46;
  }

LABEL_8:
  v42 = v44;
  v43 = 0x400000000;
  v21 = v19 + (v20 >> 3);
  LODWORD(v46) = v21;
  if (!v21)
  {
    goto LABEL_15;
  }

  if (v21 < 5)
  {
    v23 = v44;
    v22 = v21;
    goto LABEL_13;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v21, 8);
  v22 = v46;
  if (v46)
  {
    v23 = v42;
LABEL_13:
    memcpy(v23, __src, 8 * v22);
  }

  LODWORD(v43) = v21;
LABEL_15:
  if (a10 != 1)
  {
    v40 = a5;
    v24 = 1;
    while (1)
    {
      v25 = mlir::TypeRange::dereference_iterator(a9, v24);
      v26 = v25;
      v27 = __src;
      v28 = v46;
      if (v25)
      {
        v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
      }

      v41[0] = v26;
      v41[1] = v25;
      v29 = mlir::ShapedType::getShape(v41);
      if ((mlir::OpTrait::util::getBroadcastedShape(v27, v28, v29, v30, &v42) & 1) == 0)
      {
        MostDefinedTypeForANE = mlir::getMostDefinedTypeForANE(a4, v40);
        goto LABEL_34;
      }

      v31 = v43;
      v32 = v46;
      if (v46 >= v43)
      {
        if (v43)
        {
          memmove(__src, v42, 8 * v43);
        }

        goto LABEL_17;
      }

      if (HIDWORD(v46) >= v43)
      {
        if (v46)
        {
          memmove(__src, v42, 8 * v46);
          goto LABEL_29;
        }
      }

      else
      {
        LODWORD(v46) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v47, v43, 8);
      }

      v32 = 0;
LABEL_29:
      if (v43 != v32)
      {
        memcpy(__src + 8 * v32, v42 + 8 * v32, 8 * (v43 - v32));
      }

LABEL_17:
      LODWORD(v46) = v31;
      if (a10 == ++v24)
      {
        LODWORD(v21) = v43;
        break;
      }
    }
  }

  v34 = v42;
  v35 = mlir::TypeRange::dereference_iterator(a9, 0);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v35);
  MostDefinedTypeForANE = mlir::MemRefType::get(v34, v21, ElementTypeOrSelf, 0, 0, 0);
LABEL_34:
  v37 = *(a11 + 8);
  if (v37 >= *(a11 + 12))
  {
    v39 = MostDefinedTypeForANE;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v37 + 1, 8);
    MostDefinedTypeForANE = v39;
    v37 = *(a11 + 8);
  }

  *(*a11 + 8 * v37) = MostDefinedTypeForANE;
  ++*(a11 + 8);
  if (v42 != v44)
  {
    free(v42);
  }

  if (__src != v47)
  {
    free(__src);
  }

  return 1;
}

uint64_t mlir::anec::inferElementwiseCompareReturnTypes(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v48[4] = *MEMORY[0x1E69E9840];
  v14 = mlir::TypeRange::dereference_iterator(a9, 0);
  v15 = v14;
  if (v14)
  {
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  __src = v15;
  v47 = v14;
  Shape = mlir::ShapedType::getShape(&__src);
  v18 = v16;
  __src = v48;
  v47 = 0x400000000;
  v19 = (8 * v16) >> 3;
  if (v19 < 5)
  {
    v20 = 0;
    v21 = 8 * v16;
    if (!v16)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v48, v19, 8);
  v20 = v47;
  v21 = 8 * v18;
  if (v18)
  {
LABEL_7:
    memcpy(__src + 8 * v20, Shape, v21);
    v20 = v47;
  }

LABEL_8:
  v43 = v45;
  v44 = 0x400000000;
  v22 = v20 + (v21 >> 3);
  LODWORD(v47) = v22;
  if (!v22)
  {
    goto LABEL_15;
  }

  if (v22 < 5)
  {
    v24 = v45;
    v23 = v22;
    goto LABEL_13;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, v22, 8);
  v23 = v47;
  if (v47)
  {
    v24 = v43;
LABEL_13:
    memcpy(v24, __src, 8 * v23);
  }

  LODWORD(v44) = v22;
LABEL_15:
  if (a10 != 1)
  {
    v40 = a4;
    v41 = a5;
    v25 = 1;
    while (1)
    {
      v26 = mlir::TypeRange::dereference_iterator(a9, v25);
      v27 = v26;
      v28 = __src;
      v29 = v47;
      if (v26)
      {
        v26 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v26 + 8);
      }

      v42[0] = v27;
      v42[1] = v26;
      v30 = mlir::ShapedType::getShape(v42);
      if ((mlir::OpTrait::util::getBroadcastedShape(v28, v29, v30, v31, &v43) & 1) == 0)
      {
        MostDefinedTypeForANE = mlir::getMostDefinedTypeForANE(v40, v41);
        goto LABEL_34;
      }

      v32 = v44;
      v33 = v47;
      if (v47 >= v44)
      {
        if (v44)
        {
          memmove(__src, v43, 8 * v44);
        }

        goto LABEL_17;
      }

      if (HIDWORD(v47) >= v44)
      {
        if (v47)
        {
          memmove(__src, v43, 8 * v47);
          goto LABEL_29;
        }
      }

      else
      {
        LODWORD(v47) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v48, v44, 8);
      }

      v33 = 0;
LABEL_29:
      if (v44 != v33)
      {
        memcpy(__src + 8 * v33, v43 + 8 * v33, 8 * (v44 - v33));
      }

LABEL_17:
      LODWORD(v47) = v32;
      if (a10 == ++v25)
      {
        LODWORD(v22) = v44;
        break;
      }
    }
  }

  v35 = v43;
  v36 = mlir::IntegerType::get(a1, 8u, 1u);
  MostDefinedTypeForANE = mlir::MemRefType::get(v35, v22, v36, 0, 0, 0);
LABEL_34:
  v37 = *(a11 + 8);
  if (v37 >= *(a11 + 12))
  {
    v39 = MostDefinedTypeForANE;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v37 + 1, 8);
    MostDefinedTypeForANE = v39;
    v37 = *(a11 + 8);
  }

  *(*a11 + 8 * v37) = MostDefinedTypeForANE;
  ++*(a11 + 8);
  if (v43 != v45)
  {
    free(v43);
  }

  if (__src != v48)
  {
    free(__src);
  }

  return 1;
}

uint64_t mlir::anec::ElementwiseAdd::canonicalize(uint64_t a1, mlir::Float16Type **a2)
{
  v89 = *MEMORY[0x1E69E9840];
  v86 = 0;
  v84 = 0;
  v85 = 0;
  v83[0] = &v86;
  v83[1] = &v85;
  if (*(*(a1 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id && (*(a1 + 46) & 0x80) != 0 && *(a1 + 68) == 2)
  {
    v8 = mlir::detail::matchOperandOrValueAtIndex<mlir::detail::RecursivePatternMatcherBinder<mlir::anec::MatMul,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>(a1, 0, v83);
    v87[0] = *(*(a1 + 72) + 56);
    DefiningOp = mlir::Value::getDefiningOp(v87);
    if (DefiningOp)
    {
      if (((*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id) & v8) != 0)
      {
        v81 = v85;
        v82 = v84;
        v80 = DefiningOp;
        mlir::anec::MatMul::getBias(v87, &v82);
        if (v88 == 1)
        {
          v11 = v87[1];
          if (llvm::APFloatBase::PPCDoubleDouble(v10) == v11)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v87[1]);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&v87[1]);
          }

          operator new();
        }

        if (*(v82 + 9))
        {
          v12 = v82 - 16;
        }

        else
        {
          v12 = 0;
        }

        v13 = *mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
        if (!v13 || *v13)
        {
          operator new();
        }

        v79[0] = mlir::mps::ConstantOp::getAsAttribute(&v81);
        v79[1] = v17;
        v78[0] = mlir::mps::ConstantOp::getAsAttribute(&v80);
        v78[1] = v18;
        Type = mlir::ElementsAttr::getType(v79);
        v20 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v77[0] = v20;
        v77[1] = Type;
        v21 = mlir::ElementsAttr::getType(v78);
        v22 = v21;
        if (v21)
        {
          v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
        }

        v76[0] = v22;
        v76[1] = v21;
        mlir::ShapedType::getShape(v77);
        v24 = v23;
        mlir::ShapedType::getShape(v76);
        if (v24 != v25 || (ElementTypeOrSelf = mlir::getElementTypeOrSelf(v77[0]), ElementTypeOrSelf != mlir::getElementTypeOrSelf(v76[0])))
        {
          operator new();
        }

        Shape = mlir::ShapedType::getShape(v77);
        v69 = v28;
        v29 = mlir::ShapedType::getShape(v76);
        mlir::ShapedType::getShape(v77);
        IndexFromDim = mlir::anec::getIndexFromDim(4, v30);
        v33 = v32;
        mlir::ShapedType::getShape(v76);
        v35 = mlir::anec::getIndexFromDim(4, v34);
        v37 = v36;
        mlir::ShapedType::getShape(v77);
        v39 = mlir::anec::getIndexFromDim(1, v38);
        if ((v33 & 1) != 0 && (v37 & 1) != 0 && (v40 & 1) != 0 && IndexFromDim == v35)
        {
          v41 = v39;
          mlir::ShapedType::getShape(v77);
          if (v42)
          {
            v43 = 0;
            while (1)
            {
              v45 = IndexFromDim == v43 ? Shape[IndexFromDim] : 1;
              if (*(v29 + 8 * v43) != v45)
              {
                break;
              }

              if (v41 != v43 && IndexFromDim != v43 && Shape[v43] != 1)
              {
                v46 = "unsupported kernel shape";
                goto LABEL_55;
              }

              ++v43;
              mlir::ShapedType::getShape(v77);
              if (v43 == v44)
              {
                goto LABEL_50;
              }
            }

            v46 = "unsupported bias shape";
          }

          else
          {
LABEL_50:
            mlir::ShapedType::getShape(v77);
            if (IndexFromDim == v47 - 1 && (mlir::ElementsAttr::isSplat(v79) & 1) == 0 && !mlir::ElementsAttr::isSplat(v78))
            {
              llvm::SmallVector<long long,4u>::SmallVector<long long,void>(v87, Shape, v69);
              v48 = v87[0];
              ++*(v87[0] + 8 * v41);
              v49 = LODWORD(v87[1]);
              v50 = mlir::getElementTypeOrSelf(v77[0]);
              v51 = mlir::RankedTensorType::get(v48, v49, v50, 0);
              BufferTensorAttr = mlir::mps::getBufferTensorAttr(v51);
              ElementsAttrRawData = mlir::getElementsAttrRawData(v79[0]);
              v54 = v53;
              v55 = mlir::getElementsAttrRawData(v78[0]);
              v57 = v56;
              MutableRawData = mlir::mps::MPSBufferTensorAttr::getMutableRawData(&BufferTensorAttr);
              memcpy(MutableRawData, ElementsAttrRawData, v54);
              memcpy(&MutableRawData[v54], v55, v57);
              v59 = v87[0];
              v60 = LODWORD(v87[1]);
              v61 = mlir::getElementTypeOrSelf((*(v81 - 8) & 0xFFFFFFFFFFFFFFF8));
              v74 = mlir::MemRefType::get(v59, v60, v61, 0, 0, 0);
              v73 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::Type,mlir::mps::MPSBufferTensorAttr &>((a2 + 1), *(v81 + 24), &v74, &BufferTensorAttr);
              F16Type = mlir::Builder::getF16Type(a2 + 1, v62);
              v64.n128_u64[0] = 1.0;
              FloatAttr = mlir::Builder::getFloatAttr(v64, (a2 + 1), F16Type);
              v65 = *(a1 + 24);
              __p[0] = *(*(v82 + 9) + 24);
              v66 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::detail::TypedValue<mlir::MemRefType>,mlir::mps::ConstantOp &,mlir::FloatAttr &>(a2 + 1, v65, __p, &v73, &FloatAttr);
              v67 = mlir::verify(v66, 1);
              v68 = *a2;
              if (v67)
              {
                (*(v68 + 1))(a2, a1, v66);
                matched = 1;
              }

              else
              {
                (*(v68 + 2))(a2, v66);
                (*(*a2 + 2))(a2, v73);
                std::string::basic_string[abi:nn200100]<0>(__p, "validation failed");
                matched = mlir::logMatchFailure(__p, *(a1 + 24), a2);
                if (v71 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (v87[0] != &v87[2])
              {
                free(v87[0]);
              }

LABEL_25:
              if ((matched & 1) == 0)
              {
              }

              return 1;
            }

            v46 = "unsupported concatenation dimension";
          }

LABEL_55:
          v15 = std::string::basic_string[abi:nn200100]<0>(v87, v46);
          v14 = *(a1 + 24);
        }

        else
        {
          HIBYTE(v87[2]) = 15;
          strcpy(v87, "cannot get axes");
          v14 = *(a1 + 24);
          v15 = v87;
        }

        matched = mlir::logMatchFailure(v15, v14, a2);
        if (SHIBYTE(v87[2]) < 0)
        {
          operator delete(v87[0]);
        }

        goto LABEL_25;
      }
    }
  }

  strcpy(v87, "does not match pattern");
  HIBYTE(v87[2]) = 22;
  v4 = mlir::logMatchFailure(v87, *(a1 + 24), a2);
  if (SHIBYTE(v87[2]) < 0)
  {
    v7 = v4;
    operator delete(v87[0]);
    if (v7)
    {
      return 1;
    }
  }

  else if (v4)
  {
    return 1;
  }
}

uint64_t mlir::anec::anonymous namespace::canonicalizeElementwiseToGOC(mlir::anec::_anonymous_namespace_ *this, mlir::Float16Type **a2, mlir::PatternRewriter *a3)
{
  v106[5] = *MEMORY[0x1E69E9840];
  RawElementsAttr = 0;
  v91 = 0;
  v5 = *(*(this + 9) + 56);
  v98 = &RawElementsAttr;
  v101 = v5;
  DefiningOp = mlir::Value::getDefiningOp(&v101);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v98, DefiningOp))
  {
    v7 = *(this + 9);
    v8 = *(v7 + 24);
    v89 = v8;
    v9 = v7 + 56;
    v10 = 1;
  }

  else
  {
    v11 = *(*(this + 9) + 24);
    v98 = &RawElementsAttr;
    v101 = v11;
    v12 = mlir::Value::getDefiningOp(&v101);
    if (!v12 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v98, v12))
    {
      return 0;
    }

    v10 = 0;
    v13 = *(this + 9);
    v8 = *(v13 + 56);
    v89 = v8;
    v9 = v13 + 24;
  }

  v14 = (*(*v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v14)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  v87 = v14;
  v88 = v15;
  mlir::ShapedType::getShape(&v87);
  mlir::anec::getIndexFromDim(1, v16);
  if (v17)
  {
    if ((mlir::ElementsAttr::isSplat(&RawElementsAttr) & 1) == 0 && !mlir::anec::allElementsOnAxis(v87, v88, 1))
    {
      return 0;
    }

    v18 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
    v19 = v18 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8) : 0;
    v86[0] = v18;
    v86[1] = v19;
    v20 = (*(this - 1) & 0xFFFFFFFFFFFFFFF8);
    v21 = v20 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8) : 0;
    v85[0] = v20;
    v85[1] = v21;
    Shape = mlir::ShapedType::getShape(v86);
    v24 = v23;
    v25 = mlir::ShapedType::getShape(v85);
    if (v24 != v26 || memcmp(Shape, v25, 8 * v24))
    {
      return 0;
    }

    v29 = mlir::ShapedType::getShape(&v87);
    v31 = v30;
    v104 = v106;
    v105 = 0x500000000;
    v32 = (8 * v30) >> 3;
    if (v32 < 6)
    {
      v33 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v32, 8);
      v33 = v105;
    }

    if (v31)
    {
      memcpy(v104 + 8 * v33, v29, 8 * v31);
      v33 = v105;
    }

    LODWORD(v105) = v33 + v31;
    if (!mlir::ElementsAttr::isSplat(&RawElementsAttr))
    {
LABEL_49:
      v44 = v104;
      v45 = v105;
      F16Type = mlir::Builder::getF16Type(a2 + 1, v34);
      v84 = mlir::MemRefType::get(v44, v45, F16Type, 0, 0, 0);
      Type = mlir::ElementsAttr::getType(&RawElementsAttr);
      if (*(*mlir::getElementTypeOrSelf(Type) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        v101 = v103;
        v102 = 0xC00000000;
        mlir::getIntValues<float>(RawElementsAttr, v91, &v101, 0);
        v54 = v104;
        v55 = v105;
        F32Type = mlir::Builder::getF32Type(a2 + 1, v56);
        v58 = mlir::RankedTensorType::get(v54, v55, F32Type, 0);
        RawElementsAttr = mlir::createRawElementsAttr(v58, v101, 4 * v102);
        v91 = v59;
        if (v101 != v103)
        {
          free(v101);
        }
      }

      else if (mlir::ElementsAttr::isSplat(&RawElementsAttr))
      {
        v101 = RawElementsAttr;
        v48 = v104;
        v49 = v105;
        ElementTypeOrSelf = mlir::getElementTypeOrSelf(RawElementsAttr);
        v51 = mlir::RankedTensorType::get(v48, v49, ElementTypeOrSelf, 0);
        v52 = v51;
        if (v51)
        {
          v53 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v51 + 8);
        }

        else
        {
          v53 = 0;
        }

        v60 = mlir::DenseElementsAttr::reshape(&v101, v52, v53);
        v61 = v60;
        if (v60)
        {
          v60 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v60 + 8);
        }

        RawElementsAttr = v61;
        v91 = v60;
      }

      v83 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a2 + 1), *(this + 3), &v84, &RawElementsAttr);
      v62 = v104;
      v63 = v105;
      v65 = mlir::Builder::getF32Type(a2 + 1, v64);
      v66 = mlir::RankedTensorType::get(v62, v63, v65, 0);
      v101 = v103;
      v103[0] = 0;
      v102 = 0xC00000001;
      v98 = v100;
      v100[0] = 1065353216;
      v99 = 0xC00000001;
      v95 = v97;
      *v97 = -1082130432;
      v96 = 0xC00000001;
      v67 = *(this + 3);
      v93 = mlir::createRawElementsAttr(v66, v97, 4uLL);
      v94 = v68;
      v80 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a2 + 1), v67, &v84, &v93) - 16;
      v69 = *(this + 3);
      v93 = mlir::createRawElementsAttr(v66, v101, 4 * v102);
      v94 = v70;
      v82 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a2 + 1), v69, &v84, &v93) - 16;
      v71 = *(this + 3);
      v93 = mlir::createRawElementsAttr(v66, v98, 4 * v99);
      v94 = v72;
      v81 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a2 + 1), v71, &v84, &v93) - 16;
      v73 = *(*(this + 6) + 16);
      if (v73 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id)
      {
        v74 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::mps::ConstantOp &>((a2 + 1), *(this + 3), v85, &v89, &v81, &v83);
      }

      else
      {
        if (v73 != &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMult,void>::id)
        {
          if (v73 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseSub,void>::id)
          {
            v79 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &>((a2 + 1), *(this + 3), v85, &v89, &v80, &v82) - 16;
            v75 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::mps::ConstantOp &>((a2 + 1), *(this + 3), v85, &v79, &v81, &v83) - 16;
            v79 = v75;
            if (v10)
            {
              v75 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &>((a2 + 1), *(this + 3), v85, &v79, &v80, &v82) - 16;
              v79 = v75;
            }

            v92 = v75;
            v27 = 1;
            mlir::ValueRange::ValueRange(&v93, &v92, 1uLL);
            (**a2)(a2, this, v93, v94);
          }

          else
          {
            v27 = 0;
          }

          goto LABEL_66;
        }

        v74 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::Value &,mlir::mps::ConstantOp &,mlir::Value &>((a2 + 1), *(this + 3), v85, &v89, &v83, &v82);
      }

      (*(*a2 + 1))(a2, this, v74);
      v27 = 1;
LABEL_66:
      if (v95 != v97)
      {
        free(v95);
      }

      if (v98 != v100)
      {
        free(v98);
      }

      if (v101 != v103)
      {
        free(v101);
      }

      goto LABEL_72;
    }

    v35 = mlir::ShapedType::getShape(v86);
    if (mlir::ShapedType::getNumElements(v35, v36) != 1)
    {
      v37 = mlir::ShapedType::getShape(v86);
      NumElements = mlir::ShapedType::getNumElements(v37, v38);
      if (NumElements < mlir::ElementsAttr::getNumElements(RawElementsAttr, v91))
      {
        v27 = 0;
LABEL_72:
        if (v104 != v106)
        {
          free(v104);
        }

        return v27;
      }
    }

    mlir::ShapedType::getShape(v86);
    v40 = v34;
    v101 = v103;
    HIDWORD(v102) = 5;
    if (v34 < 6)
    {
      if (v34)
      {
        memset_pattern16(v103, &unk_1A75989B0, 8 * v34);
      }

      v41 = v103;
    }

    else
    {
      LODWORD(v102) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v103, v34, 8);
      v41 = v101;
      memset_pattern16(v101, &unk_1A75989B0, 8 * v40);
    }

    LODWORD(v102) = v40;
    v42 = v105;
    if (v105 >= v40)
    {
      if (v40)
      {
        memmove(v104, v41, 8 * v40);
      }

      goto LABEL_47;
    }

    if (HIDWORD(v105) >= v40)
    {
      if (v105)
      {
        memmove(v104, v41, 8 * v105);
        goto LABEL_45;
      }
    }

    else
    {
      LODWORD(v105) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v40, 8);
    }

    v42 = 0;
LABEL_45:
    v43 = v102 - v42;
    if (v43)
    {
      memcpy(v104 + 8 * v42, &v101[8 * v42], 8 * v43);
    }

LABEL_47:
    LODWORD(v105) = v40;
    if (v101 != v103)
    {
      free(v101);
    }

    goto LABEL_49;
  }

  v76 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::anec::ElementwiseSub::canonicalize(v76, v77, v78);
}

uint64_t mlir::anec::ElementwiseMax::canonicalize(uint64_t a1, mlir::Float16Type **a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v4 = *(*(a1 + 72) + 56);
  v19 = &v17;
  __p = v4;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::DenseFPElementsAttr>::match(&v19, DefiningOp) || !mlir::DenseElementsAttr::isSplat(&v17) || (*(a1 + 36) ? (v6 = a1 - 16) : (v6 = 0), (*(*(*(a1 + 72) + 24) + 8) ^ *(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8)) >= 8))
  {
    operator new();
  }

  v18 = *(*(a1 + 72) + 24);
  v7 = mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v17, &__p);
  v8 = llvm::APFloatBase::IEEEhalf(v7);
  LOBYTE(v19) = 0;
  v9 = llvm::APFloat::convert(&__p, v8, 1u, &v19);
  v10 = v22;
  v12 = llvm::APFloatBase::PPCDoubleDouble(v9);
  if (v12 == v10)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v20, v10);
  }

  llvm::detail::IEEEFloat::IEEEFloat(v20, v10, 0, v11);
  if (v12 == v20[0])
  {
    llvm::detail::DoubleAPFloat::makeLargest(v20, 0, v13, v14);
  }

  else
  {
    llvm::detail::IEEEFloat::makeLargest(v20, 0);
  }

  v15 = mlir::OpBuilder::create<mlir::anec::ClampedRelu,mlir::Value &,llvm::APFloat &,llvm::APFloat>(a2 + 1, *(a1 + 24), &v18, &__p, &v19);
  (*(*a2 + 1))(a2, a1, v15);
  if (v12 == v20[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v20);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v20);
  }

  if (v12 == v22)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v22);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v22);
  }

  return 1;
}

uint64_t mlir::anec::ElementwiseMin::canonicalize(uint64_t a1, mlir::Float16Type **a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v4 = *(*(a1 + 72) + 56);
  v19 = &v17;
  __p = v4;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::DenseFPElementsAttr>::match(&v19, DefiningOp) || !mlir::DenseElementsAttr::isSplat(&v17) || (*(a1 + 36) ? (v6 = a1 - 16) : (v6 = 0), (*(*(*(a1 + 72) + 24) + 8) ^ *(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8)) >= 8))
  {
    operator new();
  }

  v18 = *(*(a1 + 72) + 24);
  v7 = mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v17, &__p);
  v8 = llvm::APFloatBase::IEEEhalf(v7);
  LOBYTE(v19) = 0;
  v9 = llvm::APFloat::convert(&__p, v8, 1u, &v19);
  v10 = v22;
  v12 = llvm::APFloatBase::PPCDoubleDouble(v9);
  if (v12 == v10)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v20, v10);
  }

  llvm::detail::IEEEFloat::IEEEFloat(v20, v10, 0, v11);
  if (v12 == v20[0])
  {
    llvm::detail::DoubleAPFloat::makeLargest(v20, 1, v13, v14);
  }

  else
  {
    llvm::detail::IEEEFloat::makeLargest(v20, 1);
  }

  v15 = mlir::OpBuilder::create<mlir::anec::ClampedRelu,mlir::Value &,llvm::APFloat,llvm::APFloat&>(a2 + 1, *(a1 + 24), &v18, &v19, &__p);
  (*(*a2 + 1))(a2, a1, v15);
  if (v12 == v20[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v20);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v20);
  }

  if (v12 == v22)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v22);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v22);
  }

  return 1;
}

BOOL mlir::anec::Ceil::addOpToNetwork(mlir::anec::Ceil *this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = *this;
  if (a2)
  {
    v5 = *(*(v3 + 72) + 24);
    if (*(v3 + 36))
    {
      v6 = v3 - 16;
    }

    else
    {
      v6 = 0;
    }

    mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
    mlir::anec::computeOpKeyString(v19, v3);
    if (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a2 + 61, &v18))
    {
      if (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a2 + 61, &v18))
      {
        v7 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a2 + 61, &v18);
        if (v7)
        {
          if (*(v7 + 63) < 0)
          {
            std::string::__init_copy_ctor_external(&__str, v7[5], v7[6]);
          }

          else
          {
            __str = *(v7 + 5);
          }

          LOBYTE(v23) = 1;
          std::string::operator=(&v18, &__str);
          if (v23 == 1 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          goto LABEL_30;
        }
      }

      else
      {
        __str.__r_.__value_.__s.__data_[0] = 0;
        LOBYTE(v23) = 0;
        std::__throw_bad_optional_access[abi:nn200100]();
      }

      abort();
    }

LABEL_30:
    operator new();
  }

  v20 = "network should not be nullptr";
  v21 = 259;
  mlir::Operation::emitError(v3, &v20, &__str);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__str);
  if (__str.__r_.__value_.__r.__words[0])
  {
    mlir::InFlightDiagnostic::report(&__str);
  }

  if (v30 == 1)
  {
    if (v29 != &v30)
    {
      free(v29);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v28;
      v11 = __p;
      if (v28 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v28 = v9;
      operator delete(v11);
    }

    v12 = v25;
    if (v25)
    {
      v13 = v26;
      v14 = v25;
      if (v26 != v25)
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
        v14 = v25;
      }

      v26 = v12;
      operator delete(v14);
    }

    if (v23 != &v24)
    {
      free(v23);
    }
  }

  return v8;
}

float mlir::anec::Ceil::getExecutionCost(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v9 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v9);
  if (!DefiningOp)
  {
    goto LABEL_8;
  }

  v5 = 0.0;
  if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id)
  {
    while (1)
    {
      v6 = *(*(DefiningOp + 48) + 16);
      if (v6 != &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
      {
        break;
      }

      v8 = *(*(DefiningOp + 72) + 24);
      DefiningOp = mlir::Value::getDefiningOp(&v8);
      if (!DefiningOp)
      {
        goto LABEL_8;
      }
    }

    if (v6 != &mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id)
    {
LABEL_8:
      mlir::anec::Ceil::getExecutionCost(v3, a2, &v8);
      return *&v8;
    }
  }

  return v5;
}

BOOL mlir::anec::ElementwiseAbs::addOpToNetwork(mlir::anec::_anonymous_namespace_ **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
  }

  v13 = "network should not be nullptr";
  v14 = 259;
  mlir::OpState::emitError(this, &v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v4 = __p;
    if (__p)
    {
      v5 = v21;
      v6 = __p;
      if (v21 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v21 = v4;
      operator delete(v6);
    }

    v7 = v18;
    if (v18)
    {
      v8 = v19;
      v9 = v18;
      if (v19 != v18)
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
        v9 = v18;
      }

      v19 = v7;
      operator delete(v9);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

unint64_t mlir::anec::Rsqrt::fold(mlir::Operation **a1, uint64_t a2)
{
  v24[3] = *MEMORY[0x1E69E9840];
  v3 = **(a2 + 40);
  if (v3)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v3 + 8))
    {
      v4 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v3 + 8);
      v21 = v3;
      v22 = v4;
      mlir::mps::CPUNDArray::CPUNDArray(&v20, v3, v4);
      Type = mlir::ElementsAttr::getType(&v21);
      v6 = Type;
      if (Type)
      {
        v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      else
      {
        v7 = 0;
      }

      mlir::mps::CPUNDArray::CPUNDArray(v19, v6, v7, 0);
      v18[0] = mlir::Operation::getAttrDictionary(*a1);
      Value = mlir::ArrayAttr::getValue(v18);
      v18[0] = mlir::Operation::getAttrDictionary(*a1);
      v9 = mlir::ArrayAttr::getValue(v18);
      v18[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v9 + 16 * v10), **(*(*a1 + 6) + 96));
      mlir::FloatAttr::getValue(&v23, v18);
      v14 = llvm::APFloat::convertToDouble(&v23, v11, v12, v13);
      v15 = mlir::mps::CPUNDArrayArithmeticUnaryKernel::CPUNDArrayArithmeticUnaryKernel(v18, 6, v14);
      v16 = v24[0];
      if (llvm::APFloatBase::PPCDoubleDouble(v15) == v16)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v24);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v24);
      }

      operator new();
    }

    v3 = 0;
  }

  v21 = v3;
  v22 = 0;
  return 0;
}

uint64_t mlir::anec::ScaledElementWise::inferPromotedReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v51[2] = *MEMORY[0x1E69E9840];
  v45[0] = a4;
  v45[1] = a5;
  v42 = v44;
  v43 = 0x600000000;
  v51[0] = a4;
  v51[1] = a5;
  if (a5 < 2)
  {
    goto LABEL_38;
  }

  v11 = (*(mlir::ValueRange::dereference_iterator(v51, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
    v48 = v11;
    v49 = v12;
    Shape = mlir::ShapedType::getShape(&v48);
    v15 = v14;
  }

  else
  {
    v15 = 0;
    Shape = 0;
  }

  v16 = (*(mlir::ValueRange::dereference_iterator(v51, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v16)
  {
    goto LABEL_38;
  }

  v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
  v48 = v16;
  v49 = v17;
  v18 = mlir::ShapedType::getShape(&v48);
  if (v15 < 4 || v19 < 4)
  {
    goto LABEL_38;
  }

  if (v15 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v15;
  }

  v21 = v18;
  v22 = Shape;
  v23 = v19;
  mlir::anec::validateAndBroadcastShapes(mlir::ValueRange,llvm::SmallVector<long long,6u> &)::$_1::operator()(v22, v15, v20, &v48);
  mlir::anec::validateAndBroadcastShapes(mlir::ValueRange,llvm::SmallVector<long long,6u> &)::$_1::operator()(v21, v23, v20, &v46);
  v24 = v43;
  if (v20 != v43)
  {
    if (v20 >= v43)
    {
      if (v20 > HIDWORD(v43))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v20, 8);
        v24 = v43;
      }

      if (v20 != v24)
      {
        bzero(v42 + 8 * v24, 8 * (v20 - v24));
      }
    }

    LODWORD(v43) = v20;
  }

  v25 = 0;
  v26 = v46;
  v27 = v48;
  v28 = v42;
  do
  {
    v29 = v27[v25];
    v30 = v26[v25];
    v32 = v29 == 1 || v29 == v30 || v30 == 1;
    v33 = !v32;
    if (!v32)
    {
      break;
    }

    if (v29 <= v30)
    {
      v29 = v26[v25];
    }

    v28[v25++] = v29;
  }

  while (v20 != v25);
  if (v26 != &v47)
  {
    free(v26);
    v27 = v48;
  }

  if (v27 != &v50)
  {
    free(v27);
  }

  if ((v33 & 1) == 0)
  {
    v36 = (*(mlir::ValueRange::dereference_iterator(v45, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v36)
    {
      v37 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v36 + 8);
    }

    else
    {
      v37 = 0;
    }

    v48 = v36;
    v49 = v37;
    isSplat = mlir::ElementsAttr::isSplat(&v48);
    v39 = mlir::MemRefType::get(v42, v43, isSplat, 0, 0, 0);
    v40 = *(a11 + 8);
    if (v40 >= *(a11 + 12))
    {
      v41 = v39;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v40 + 1, 8);
      v39 = v41;
      LODWORD(v40) = *(a11 + 8);
    }

    *(*a11 + 8 * v40) = v39;
    ++*(a11 + 8);
    v34 = 1;
  }

  else
  {
LABEL_38:
    v34 = 0;
  }

  if (v42 != v44)
  {
    free(v42);
  }

  return v34;
}

uint64_t mlir::anec::anonymous namespace::defaultIsCompatibleReturnType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  v8 = 0;
  while (1)
  {
    if (a4 == v8)
    {
      return 1;
    }

    v9 = mlir::TypeRange::dereference_iterator(a1, v8);
    v10 = mlir::TypeRange::dereference_iterator(a3, v8);
    if (v9)
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
      v21 = v9;
      v22 = v11;
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v21 = 0;
      v22 = 0;
      if (!v10)
      {
LABEL_8:
        v12 = 0;
        goto LABEL_9;
      }
    }

    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
LABEL_9:
    v20[0] = v10;
    v20[1] = v12;
    if (!mlir::ElementsAttr::getShapedType(&v21))
    {
      return 0;
    }

    if (!mlir::ElementsAttr::getShapedType(v20))
    {
      return 0;
    }

    Shape = mlir::ShapedType::getShape(&v21);
    v15 = v14;
    v16 = mlir::ShapedType::getShape(v20);
    if (v15 != v17)
    {
      return 0;
    }

    if (memcmp(Shape, v16, 8 * v15))
    {
      return 0;
    }

    isSplat = mlir::ElementsAttr::isSplat(&v21);
    if (isSplat != mlir::ElementsAttr::isSplat(v20))
    {
      return 0;
    }

    if (a2 == ++v8)
    {
      return 1;
    }
  }
}

uint64_t mlir::anec::ScaledElementWise::getMode(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
  return mlir::OpaqueAttr::getAttrData(&AttrDictionary);
}

BOOL mlir::anec::inferPoolOpReturnTypes(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49[6] = *MEMORY[0x1E69E9840];
  v14 = mlir::TypeRange::dereference_iterator(a7, 0);
  v15 = v14;
  if (v14)
  {
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  v38[0] = v15;
  v38[1] = v14;
  mlir::ShapedType::getShape(v38);
  if (!v16)
  {
    return mlir::emitOptionalError<char const(&)[41]>(a1, a2, "input must be a rank 4 tensor of shape [N, Cin, H, W]or rank 5 tensor of shape [N, D, Cin, H, W]");
  }

  Shape = mlir::ShapedType::getShape(v38);
  v48[0] = v49;
  v48[1] = 0x600000000;
  mlir::getValues<unsigned long>(a4, v48);
  v46[0] = v47;
  v46[1] = 0x600000000;
  mlir::getValues<unsigned long>(a5, v46);
  v44[0] = v45;
  v44[1] = 0x600000000;
  mlir::getValues<unsigned long>(a6, v44);
  mlir::ShapedType::getShape(v38);
  v19 = v18;
  mlir::ShapedType::getShape(v38);
  v21 = v20;
  mlir::ShapedType::getShape(v38);
  v23 = v22;
  mlir::ShapedType::getShape(v38);
  v25 = v24;
  mlir::ShapedType::getShape(v38);
  v26 = v48[0];
  v27 = (*v26 + Shape[v25 - 2] + v26[1] - *v46[0] + *v44[0]) / *v44[0];
  v29 = Shape[v23 - 3];
  v30 = (v26[2] + Shape[v28 - 1] + v26[3] - *(v46[0] + 1) + *(v44[0] + 1)) / *(v44[0] + 1);
  if (v19 == 5)
  {
    v31 = (*(v48[0] + 4) + Shape[v21 - 4] + *(v48[0] + 5) - *(v46[0] + 2) + *(v44[0] + 2)) / *(v44[0] + 2);
    v39 = *Shape;
    v40 = v31;
    v41 = v29;
    v42 = v27;
    v43 = v30;
    isSplat = mlir::ElementsAttr::isSplat(v38);
    v33 = 5;
  }

  else
  {
    v39 = *Shape;
    v40 = v29;
    v41 = v27;
    v42 = v30;
    isSplat = mlir::ElementsAttr::isSplat(v38);
    v33 = 4;
  }

  v35 = mlir::MemRefType::get(&v39, v33, isSplat, 0, 0, 0);
  v36 = *(a9 + 8);
  if (v36 >= *(a9 + 12))
  {
    v37 = v35;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a9, (a9 + 16), v36 + 1, 8);
    v35 = v37;
    LODWORD(v36) = *(a9 + 8);
  }

  *(*a9 + 8 * v36) = v35;
  ++*(a9 + 8);
  if (v44[0] != v45)
  {
    free(v44[0]);
  }

  if (v46[0] != v47)
  {
    free(v46[0]);
  }

  if (v48[0] != v49)
  {
    free(v48[0]);
  }

  return 1;
}

BOOL mlir::anec::MaxPool::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v30 = a6;
  LOBYTE(v31) = 0;
  v32 = 0;
  v33 = a7;
  v34 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(&v31, "anec.max_pool", 13, Context);
    v32 = 1;
    a1 = v15;
  }

  v35 = a4;
  v36 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if (!mlir::anec::MaxPoolAdaptor::verify(&v30, v18))
  {
    return 0;
  }

  v37[0] = v35;
  v37[1] = 0;
  mlir::ValueRange::dereference_iterator(v37, 0);
  Value = mlir::AffineMapAttr::getValue(&v30);
  v20 = mlir::DictionaryAttr::end(&v30);
  v21 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v20 - 16), *(*(v31 + 96) + 8));
  v22 = mlir::AffineMapAttr::getValue(&v30);
  v23 = mlir::DictionaryAttr::end(&v30);
  v24 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v22, (v23 - 32), **(v31 + 96));
  v25 = mlir::AffineMapAttr::getValue(&v30);
  v26 = mlir::DictionaryAttr::end(&v30);
  v27 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v25 + 32), v26, *(*(v31 + 96) + 16));
  return mlir::anec::inferPoolOpReturnTypes(a2, a3, v28, v21, v24, v27, a9, a10, a11);
}

BOOL mlir::anec::MaxPoolAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v61 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v61); i != mlir::DictionaryAttr::end(&v61); i += 2)
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      v14 = i[1];
      while (i != mlir::DictionaryAttr::end(&v61))
      {
        if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 8))
        {
          v21 = i[1];
          while (1)
          {
            if (i == mlir::DictionaryAttr::end(&v61))
            {
              v58 = "'anec.max_pool' op requires attribute 'stride'";
              v60 = 259;
              mlir::emitError(a2, &v58, &v63);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
              if (v63)
              {
                mlir::InFlightDiagnostic::report(&v63);
              }

              if (v72 != 1)
              {
                return v5;
              }

              if (v71 != &v72)
              {
                free(v71);
              }

              v22 = __p;
              if (__p)
              {
                v23 = v70;
                v24 = __p;
                if (v70 != __p)
                {
                  do
                  {
                    v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
                  }

                  while (v23 != v22);
                  v24 = __p;
                }

                v70 = v22;
                operator delete(v24);
              }

              v9 = v67;
              if (!v67)
              {
                goto LABEL_101;
              }

              v25 = v68;
              v11 = v67;
              if (v68 == v67)
              {
                goto LABEL_100;
              }

              do
              {
                v27 = *--v25;
                v26 = v27;
                *v25 = 0;
                if (v27)
                {
                  MEMORY[0x1AC55A040](v26, 0x1000C8077774924);
                }
              }

              while (v25 != v9);
              goto LABEL_99;
            }

            if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 16))
            {
              break;
            }

            i += 2;
          }

          v28 = i[1];
          if (!v28)
          {
            goto LABEL_111;
          }

          if (mlir::DenseIntElementsAttr::classof(i[1]))
          {
            v29 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v28 + 8);
            v58 = v28;
            v59 = v29;
            Type = mlir::ElementsAttr::getType(&v58);
            v31 = Type;
            if (Type)
            {
              Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
            }

            v63 = v31;
            v64 = Type;
            Shape = mlir::ShapedType::getShape(&v63);
            v62 = 3;
            if (v33 == 1 && *Shape == v62)
            {
              v54 = v28;
              Value = mlir::ArrayAttr::getValue(&v54);
              v56 = v34;
              isSplat = mlir::ElementsAttr::isSplat(&Value);
              if (mlir::Type::isUnsignedInteger(&isSplat, 64))
              {
LABEL_111:
                if (!v21)
                {
                  goto LABEL_112;
                }

                if (!mlir::DenseIntElementsAttr::classof(v21))
                {
                  goto LABEL_104;
                }

                v35 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v21 + 8);
                v58 = v21;
                v59 = v35;
                v36 = mlir::ElementsAttr::getType(&v58);
                v37 = v36;
                if (v36)
                {
                  v36 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v36 + 8);
                }

                v63 = v37;
                v64 = v36;
                v38 = mlir::ShapedType::getShape(&v63);
                v62 = 6;
                if (v39 == 1 && *v38 == v62 && (v54 = v21, Value = mlir::ArrayAttr::getValue(&v54), v56 = v40, isSplat = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(&isSplat, 64)))
                {
LABEL_112:
                  if (!v14)
                  {
                    return 1;
                  }

                  if (!mlir::DenseIntElementsAttr::classof(v14))
                  {
                    goto LABEL_108;
                  }

                  v41 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
                  v58 = v14;
                  v59 = v41;
                  v42 = mlir::ElementsAttr::getType(&v58);
                  v43 = v42;
                  if (v42)
                  {
                    v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8);
                  }

                  v63 = v43;
                  v64 = v42;
                  v44 = mlir::ShapedType::getShape(&v63);
                  v62 = 3;
                  if (v45 == 1 && *v44 == v62 && (v54 = v14, Value = mlir::ArrayAttr::getValue(&v54), v56 = v46, isSplat = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(&isSplat, 64)))
                  {
                    return 1;
                  }

                  else
                  {
LABEL_108:
                    v58 = "'anec.max_pool' op attribute 'ksize' failed to satisfy constraint: ui64 elements attribute of shape {3}";
                    v60 = 259;
                    mlir::emitError(a2, &v58, &v63);
                    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
                    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v63);
                  }
                }

                else
                {
LABEL_104:
                  v58 = "'anec.max_pool' op attribute 'padding' failed to satisfy constraint: ui64 elements attribute of shape {6}";
                  v60 = 259;
                  mlir::emitError(a2, &v58, &v63);
                  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
                  if (v63)
                  {
                    mlir::InFlightDiagnostic::report(&v63);
                  }

                  if (v72 == 1)
                  {
                    mlir::Diagnostic::~Diagnostic(&v64);
                  }
                }

                return v5;
              }
            }
          }

          v58 = "'anec.max_pool' op attribute 'stride' failed to satisfy constraint: ui64 elements attribute of shape {3}";
          v60 = 259;
          mlir::emitError(a2, &v58, &v63);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
          if (v63)
          {
            mlir::InFlightDiagnostic::report(&v63);
          }

          if (v72 != 1)
          {
            return v5;
          }

          if (v71 != &v72)
          {
            free(v71);
          }

          v47 = __p;
          if (__p)
          {
            v48 = v70;
            v49 = __p;
            if (v70 != __p)
            {
              do
              {
                v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
              }

              while (v48 != v47);
              v49 = __p;
            }

            v70 = v47;
            operator delete(v49);
          }

          v9 = v67;
          if (!v67)
          {
            goto LABEL_101;
          }

          v50 = v68;
          v11 = v67;
          if (v68 == v67)
          {
            goto LABEL_100;
          }

          do
          {
            v52 = *--v50;
            v51 = v52;
            *v50 = 0;
            if (v52)
            {
              MEMORY[0x1AC55A040](v51, 0x1000C8077774924);
            }
          }

          while (v50 != v9);
          goto LABEL_99;
        }

        i += 2;
      }

      v58 = "'anec.max_pool' op requires attribute 'padding'";
      v60 = 259;
      mlir::emitError(a2, &v58, &v63);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
      if (v63)
      {
        mlir::InFlightDiagnostic::report(&v63);
      }

      if (v72 != 1)
      {
        return v5;
      }

      if (v71 != &v72)
      {
        free(v71);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v70;
        v17 = __p;
        if (v70 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v70 = v15;
        operator delete(v17);
      }

      v9 = v67;
      if (!v67)
      {
        goto LABEL_101;
      }

      v18 = v68;
      v11 = v67;
      if (v68 == v67)
      {
        goto LABEL_100;
      }

      do
      {
        v20 = *--v18;
        v19 = v20;
        *v18 = 0;
        if (v20)
        {
          MEMORY[0x1AC55A040](v19, 0x1000C8077774924);
        }
      }

      while (v18 != v9);
LABEL_99:
      v11 = v67;
      goto LABEL_100;
    }
  }

  v58 = "'anec.max_pool' op requires attribute 'ksize'";
  v60 = 259;
  mlir::emitError(a2, &v58, &v63);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
  if (v63)
  {
    mlir::InFlightDiagnostic::report(&v63);
  }

  if (v72 == 1)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v70;
      v8 = __p;
      if (v70 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v70 = v6;
      operator delete(v8);
    }

    v9 = v67;
    if (v67)
    {
      v10 = v68;
      v11 = v67;
      if (v68 != v67)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        goto LABEL_99;
      }

LABEL_100:
      v68 = v9;
      operator delete(v11);
    }

LABEL_101:
    if (v65 != &v66)
    {
      free(v65);
    }
  }

  return v5;
}

BOOL mlir::anec::AveragePool::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v30 = a6;
  LOBYTE(v31) = 0;
  v32 = 0;
  v33 = a7;
  v34 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(&v31, "anec.average_pool", 17, Context);
    v32 = 1;
    a1 = v15;
  }

  v35 = a4;
  v36 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if (!mlir::anec::AveragePoolAdaptor::verify(&v30, v18))
  {
    return 0;
  }

  v37[0] = v35;
  v37[1] = 0;
  mlir::ValueRange::dereference_iterator(v37, 0);
  Value = mlir::AffineMapAttr::getValue(&v30);
  v20 = mlir::DictionaryAttr::end(&v30);
  v21 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v20 - 16), *(*(v31 + 96) + 16));
  v22 = mlir::AffineMapAttr::getValue(&v30);
  v23 = mlir::DictionaryAttr::end(&v30);
  v24 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v22, (v23 - 32), *(*(v31 + 96) + 8));
  v25 = mlir::AffineMapAttr::getValue(&v30);
  v26 = mlir::DictionaryAttr::end(&v30);
  v27 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v25 + 32), v26, *(*(v31 + 96) + 24));
  return mlir::anec::inferPoolOpReturnTypes(a2, a3, v28, v21, v24, v27, a9, a10, a11);
}

BOOL mlir::anec::AveragePoolAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v75 = *MEMORY[0x1E69E9840];
  v63 = *a1;
  Value = mlir::AffineMapAttr::getValue(&v63);
  if (Value != mlir::DictionaryAttr::end(&v63))
  {
    v5 = 0;
    while (ZinCompressedFootprintInfo::GetCompressedBytes(Value) != *(*(a1[1] + 96) + 8))
    {
      if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == **(a1[1] + 96))
      {
        v5 = Value[1];
      }

      Value += 2;
      if (Value == mlir::DictionaryAttr::end(&v63))
      {
        goto LABEL_7;
      }
    }

    v15 = Value[1];
    while (Value != mlir::DictionaryAttr::end(&v63))
    {
      if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 16))
      {
        v22 = Value[1];
        while (1)
        {
          if (Value == mlir::DictionaryAttr::end(&v63))
          {
            v60 = "'anec.average_pool' op requires attribute 'stride'";
            v62 = 259;
            mlir::emitError(a2, &v60, &v65);
            v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
            if (v65)
            {
              mlir::InFlightDiagnostic::report(&v65);
            }

            if (v74 != 1)
            {
              return v6;
            }

            if (v73 != &v74)
            {
              free(v73);
            }

            v23 = __p;
            if (__p)
            {
              v24 = v72;
              v25 = __p;
              if (v72 != __p)
              {
                do
                {
                  v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
                }

                while (v24 != v23);
                v25 = __p;
              }

              v72 = v23;
              operator delete(v25);
            }

            v10 = v69;
            if (!v69)
            {
              goto LABEL_105;
            }

            v26 = v70;
            v12 = v69;
            if (v70 == v69)
            {
              goto LABEL_104;
            }

            do
            {
              v28 = *--v26;
              v27 = v28;
              *v26 = 0;
              if (v28)
              {
                MEMORY[0x1AC55A040](v27, 0x1000C8077774924);
              }
            }

            while (v26 != v10);
            goto LABEL_103;
          }

          if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 24))
          {
            break;
          }

          Value += 2;
        }

        v29 = Value[1];
        if (!v29)
        {
          goto LABEL_117;
        }

        if (mlir::DenseIntElementsAttr::classof(Value[1]))
        {
          v30 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v29 + 8);
          v60 = v29;
          v61 = v30;
          Type = mlir::ElementsAttr::getType(&v60);
          v32 = Type;
          if (Type)
          {
            Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
          }

          v65 = v32;
          v66 = Type;
          Shape = mlir::ShapedType::getShape(&v65);
          v64 = 3;
          if (v34 == 1 && *Shape == v64)
          {
            v56 = v29;
            v57 = mlir::ArrayAttr::getValue(&v56);
            v58 = v35;
            isSplat = mlir::ElementsAttr::isSplat(&v57);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
LABEL_117:
              if (!v22)
              {
                goto LABEL_118;
              }

              if (!mlir::DenseIntElementsAttr::classof(v22))
              {
                goto LABEL_108;
              }

              v36 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v22 + 8);
              v60 = v22;
              v61 = v36;
              v37 = mlir::ElementsAttr::getType(&v60);
              v38 = v37;
              if (v37)
              {
                v37 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v37 + 8);
              }

              v65 = v38;
              v66 = v37;
              v39 = mlir::ShapedType::getShape(&v65);
              v64 = 6;
              if (v40 == 1 && *v39 == v64 && (v56 = v22, v57 = mlir::ArrayAttr::getValue(&v56), v58 = v41, isSplat = mlir::ElementsAttr::isSplat(&v57), mlir::Type::isUnsignedInteger(&isSplat, 64)))
              {
LABEL_118:
                if (v15)
                {
                  if (!mlir::DenseIntElementsAttr::classof(v15))
                  {
                    goto LABEL_112;
                  }

                  v42 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v15 + 8);
                  v60 = v15;
                  v61 = v42;
                  v43 = mlir::ElementsAttr::getType(&v60);
                  v44 = v43;
                  if (v43)
                  {
                    v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v43 + 8);
                  }

                  v65 = v44;
                  v66 = v43;
                  v45 = mlir::ShapedType::getShape(&v65);
                  v64 = 3;
                  if (v46 != 1 || *v45 != v64 || (v56 = v15, v57 = mlir::ArrayAttr::getValue(&v56), v58 = v47, isSplat = mlir::ElementsAttr::isSplat(&v57), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
                  {
LABEL_112:
                    v48 = "'anec.average_pool' op attribute 'ksize' failed to satisfy constraint: ui64 elements attribute of shape {3}";
                    goto LABEL_113;
                  }
                }

                if (v5 && *(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
                {
                  v48 = "'anec.average_pool' op attribute 'inc_pad' failed to satisfy constraint: unit attribute";
LABEL_113:
                  v60 = v48;
                  v62 = 259;
                  mlir::emitError(a2, &v60, &v65);
                  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v65);
                  return v6;
                }

                return 1;
              }

              else
              {
LABEL_108:
                v60 = "'anec.average_pool' op attribute 'padding' failed to satisfy constraint: ui64 elements attribute of shape {6}";
                v62 = 259;
                mlir::emitError(a2, &v60, &v65);
                v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
                if (v65)
                {
                  mlir::InFlightDiagnostic::report(&v65);
                }

                if (v74 == 1)
                {
                  mlir::Diagnostic::~Diagnostic(&v66);
                }
              }

              return v6;
            }
          }
        }

        v60 = "'anec.average_pool' op attribute 'stride' failed to satisfy constraint: ui64 elements attribute of shape {3}";
        v62 = 259;
        mlir::emitError(a2, &v60, &v65);
        v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
        if (v65)
        {
          mlir::InFlightDiagnostic::report(&v65);
        }

        if (v74 != 1)
        {
          return v6;
        }

        if (v73 != &v74)
        {
          free(v73);
        }

        v49 = __p;
        if (__p)
        {
          v50 = v72;
          v51 = __p;
          if (v72 != __p)
          {
            do
            {
              v50 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v50 - 1);
            }

            while (v50 != v49);
            v51 = __p;
          }

          v72 = v49;
          operator delete(v51);
        }

        v10 = v69;
        if (!v69)
        {
          goto LABEL_105;
        }

        v52 = v70;
        v12 = v69;
        if (v70 == v69)
        {
          goto LABEL_104;
        }

        do
        {
          v54 = *--v52;
          v53 = v54;
          *v52 = 0;
          if (v54)
          {
            MEMORY[0x1AC55A040](v53, 0x1000C8077774924);
          }
        }

        while (v52 != v10);
        goto LABEL_103;
      }

      Value += 2;
    }

    v60 = "'anec.average_pool' op requires attribute 'padding'";
    v62 = 259;
    mlir::emitError(a2, &v60, &v65);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
    if (v65)
    {
      mlir::InFlightDiagnostic::report(&v65);
    }

    if (v74 != 1)
    {
      return v6;
    }

    if (v73 != &v74)
    {
      free(v73);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v72;
      v18 = __p;
      if (v72 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v72 = v16;
      operator delete(v18);
    }

    v10 = v69;
    if (!v69)
    {
      goto LABEL_105;
    }

    v19 = v70;
    v12 = v69;
    if (v70 == v69)
    {
      goto LABEL_104;
    }

    do
    {
      v21 = *--v19;
      v20 = v21;
      *v19 = 0;
      if (v21)
      {
        MEMORY[0x1AC55A040](v20, 0x1000C8077774924);
      }
    }

    while (v19 != v10);
    goto LABEL_103;
  }

LABEL_7:
  v60 = "'anec.average_pool' op requires attribute 'ksize'";
  v62 = 259;
  mlir::emitError(a2, &v60, &v65);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
  if (v65)
  {
    mlir::InFlightDiagnostic::report(&v65);
  }

  if (v74 == 1)
  {
    if (v73 != &v74)
    {
      free(v73);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v72;
      v9 = __p;
      if (v72 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v72 = v7;
      operator delete(v9);
    }

    v10 = v69;
    if (!v69)
    {
      goto LABEL_105;
    }

    v11 = v70;
    v12 = v69;
    if (v70 == v69)
    {
LABEL_104:
      v70 = v10;
      operator delete(v12);
LABEL_105:
      if (v67 != &v68)
      {
        free(v67);
      }

      return v6;
    }

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
LABEL_103:
    v12 = v69;
    goto LABEL_104;
  }

  return v6;
}

BOOL mlir::anec::L2NormPool::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v30 = a6;
  LOBYTE(v31) = 0;
  v32 = 0;
  v33 = a7;
  v34 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(&v31, "anec.l2norm_pool", 16, Context);
    v32 = 1;
    a1 = v15;
  }

  v35 = a4;
  v36 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if (!mlir::anec::L2NormPoolAdaptor::verify(&v30, v18))
  {
    return 0;
  }

  v37[0] = v35;
  v37[1] = 0;
  mlir::ValueRange::dereference_iterator(v37, 0);
  Value = mlir::AffineMapAttr::getValue(&v30);
  v20 = mlir::DictionaryAttr::end(&v30);
  v21 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v20 - 16), *(*(v31 + 96) + 8));
  v22 = mlir::AffineMapAttr::getValue(&v30);
  v23 = mlir::DictionaryAttr::end(&v30);
  v24 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v22, (v23 - 32), **(v31 + 96));
  v25 = mlir::AffineMapAttr::getValue(&v30);
  v26 = mlir::DictionaryAttr::end(&v30);
  v27 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v25 + 32), v26, *(*(v31 + 96) + 16));
  return mlir::anec::inferPoolOpReturnTypes(a2, a3, v28, v21, v24, v27, a9, a10, a11);
}

BOOL mlir::anec::L2NormPoolAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v61 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v61); i != mlir::DictionaryAttr::end(&v61); i += 2)
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      v14 = i[1];
      while (i != mlir::DictionaryAttr::end(&v61))
      {
        if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 8))
        {
          v21 = i[1];
          while (1)
          {
            if (i == mlir::DictionaryAttr::end(&v61))
            {
              v58 = "'anec.l2norm_pool' op requires attribute 'stride'";
              v60 = 259;
              mlir::emitError(a2, &v58, &v63);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
              if (v63)
              {
                mlir::InFlightDiagnostic::report(&v63);
              }

              if (v72 != 1)
              {
                return v5;
              }

              if (v71 != &v72)
              {
                free(v71);
              }

              v22 = __p;
              if (__p)
              {
                v23 = v70;
                v24 = __p;
                if (v70 != __p)
                {
                  do
                  {
                    v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
                  }

                  while (v23 != v22);
                  v24 = __p;
                }

                v70 = v22;
                operator delete(v24);
              }

              v9 = v67;
              if (!v67)
              {
                goto LABEL_101;
              }

              v25 = v68;
              v11 = v67;
              if (v68 == v67)
              {
                goto LABEL_100;
              }

              do
              {
                v27 = *--v25;
                v26 = v27;
                *v25 = 0;
                if (v27)
                {
                  MEMORY[0x1AC55A040](v26, 0x1000C8077774924);
                }
              }

              while (v25 != v9);
              goto LABEL_99;
            }

            if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 16))
            {
              break;
            }

            i += 2;
          }

          v28 = i[1];
          if (!v28)
          {
            goto LABEL_111;
          }

          if (mlir::DenseIntElementsAttr::classof(i[1]))
          {
            v29 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v28 + 8);
            v58 = v28;
            v59 = v29;
            Type = mlir::ElementsAttr::getType(&v58);
            v31 = Type;
            if (Type)
            {
              Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
            }

            v63 = v31;
            v64 = Type;
            Shape = mlir::ShapedType::getShape(&v63);
            v62 = 3;
            if (v33 == 1 && *Shape == v62)
            {
              v54 = v28;
              Value = mlir::ArrayAttr::getValue(&v54);
              v56 = v34;
              isSplat = mlir::ElementsAttr::isSplat(&Value);
              if (mlir::Type::isUnsignedInteger(&isSplat, 64))
              {
LABEL_111:
                if (!v21)
                {
                  goto LABEL_112;
                }

                if (!mlir::DenseIntElementsAttr::classof(v21))
                {
                  goto LABEL_104;
                }

                v35 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v21 + 8);
                v58 = v21;
                v59 = v35;
                v36 = mlir::ElementsAttr::getType(&v58);
                v37 = v36;
                if (v36)
                {
                  v36 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v36 + 8);
                }

                v63 = v37;
                v64 = v36;
                v38 = mlir::ShapedType::getShape(&v63);
                v62 = 6;
                if (v39 == 1 && *v38 == v62 && (v54 = v21, Value = mlir::ArrayAttr::getValue(&v54), v56 = v40, isSplat = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(&isSplat, 64)))
                {
LABEL_112:
                  if (!v14)
                  {
                    return 1;
                  }

                  if (!mlir::DenseIntElementsAttr::classof(v14))
                  {
                    goto LABEL_108;
                  }

                  v41 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
                  v58 = v14;
                  v59 = v41;
                  v42 = mlir::ElementsAttr::getType(&v58);
                  v43 = v42;
                  if (v42)
                  {
                    v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8);
                  }

                  v63 = v43;
                  v64 = v42;
                  v44 = mlir::ShapedType::getShape(&v63);
                  v62 = 3;
                  if (v45 == 1 && *v44 == v62 && (v54 = v14, Value = mlir::ArrayAttr::getValue(&v54), v56 = v46, isSplat = mlir::ElementsAttr::isSplat(&Value), mlir::Type::isUnsignedInteger(&isSplat, 64)))
                  {
                    return 1;
                  }

                  else
                  {
LABEL_108:
                    v58 = "'anec.l2norm_pool' op attribute 'ksize' failed to satisfy constraint: ui64 elements attribute of shape {3}";
                    v60 = 259;
                    mlir::emitError(a2, &v58, &v63);
                    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
                    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v63);
                  }
                }

                else
                {
LABEL_104:
                  v58 = "'anec.l2norm_pool' op attribute 'padding' failed to satisfy constraint: ui64 elements attribute of shape {6}";
                  v60 = 259;
                  mlir::emitError(a2, &v58, &v63);
                  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
                  if (v63)
                  {
                    mlir::InFlightDiagnostic::report(&v63);
                  }

                  if (v72 == 1)
                  {
                    mlir::Diagnostic::~Diagnostic(&v64);
                  }
                }

                return v5;
              }
            }
          }

          v58 = "'anec.l2norm_pool' op attribute 'stride' failed to satisfy constraint: ui64 elements attribute of shape {3}";
          v60 = 259;
          mlir::emitError(a2, &v58, &v63);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
          if (v63)
          {
            mlir::InFlightDiagnostic::report(&v63);
          }

          if (v72 != 1)
          {
            return v5;
          }

          if (v71 != &v72)
          {
            free(v71);
          }

          v47 = __p;
          if (__p)
          {
            v48 = v70;
            v49 = __p;
            if (v70 != __p)
            {
              do
              {
                v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
              }

              while (v48 != v47);
              v49 = __p;
            }

            v70 = v47;
            operator delete(v49);
          }

          v9 = v67;
          if (!v67)
          {
            goto LABEL_101;
          }

          v50 = v68;
          v11 = v67;
          if (v68 == v67)
          {
            goto LABEL_100;
          }

          do
          {
            v52 = *--v50;
            v51 = v52;
            *v50 = 0;
            if (v52)
            {
              MEMORY[0x1AC55A040](v51, 0x1000C8077774924);
            }
          }

          while (v50 != v9);
          goto LABEL_99;
        }

        i += 2;
      }

      v58 = "'anec.l2norm_pool' op requires attribute 'padding'";
      v60 = 259;
      mlir::emitError(a2, &v58, &v63);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
      if (v63)
      {
        mlir::InFlightDiagnostic::report(&v63);
      }

      if (v72 != 1)
      {
        return v5;
      }

      if (v71 != &v72)
      {
        free(v71);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v70;
        v17 = __p;
        if (v70 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v70 = v15;
        operator delete(v17);
      }

      v9 = v67;
      if (!v67)
      {
        goto LABEL_101;
      }

      v18 = v68;
      v11 = v67;
      if (v68 == v67)
      {
        goto LABEL_100;
      }

      do
      {
        v20 = *--v18;
        v19 = v20;
        *v18 = 0;
        if (v20)
        {
          MEMORY[0x1AC55A040](v19, 0x1000C8077774924);
        }
      }

      while (v18 != v9);
LABEL_99:
      v11 = v67;
      goto LABEL_100;
    }
  }

  v58 = "'anec.l2norm_pool' op requires attribute 'ksize'";
  v60 = 259;
  mlir::emitError(a2, &v58, &v63);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
  if (v63)
  {
    mlir::InFlightDiagnostic::report(&v63);
  }

  if (v72 == 1)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v70;
      v8 = __p;
      if (v70 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v70 = v6;
      operator delete(v8);
    }

    v9 = v67;
    if (v67)
    {
      v10 = v68;
      v11 = v67;
      if (v68 != v67)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        goto LABEL_99;
      }

LABEL_100:
      v68 = v9;
      operator delete(v11);
    }

LABEL_101:
    if (v65 != &v66)
    {
      free(v65);
    }
  }

  return v5;
}

void mlir::anec::AveragePool::addOpToNetwork(mlir::anec::AveragePool *this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v4 = *this;
  v21[0] = 0;
  v21[1] = 0;
  mlir::anec::computeOpKeyString(__p, v4);
  v5 = *(*(v4 + 72) + 24);
  if (*(v4 + 36))
  {
    v6 = v4 - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(v4);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v4);
  v9 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v11 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v9 + 16 * v10 - 16), *(*(*(v4 + 48) + 96) + 16));
  AttrDictionary = mlir::Operation::getAttrDictionary(v4);
  v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v4);
  v13 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v15 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v12 + 32), (v13 + 16 * v14), *(*(*(v4 + 48) + 96) + 24));
  AttrDictionary = mlir::Operation::getAttrDictionary(v4);
  v16 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v4);
  v17 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v19 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v16, (v17 + 16 * v18 - 32), *(*(*(v4 + 48) + 96) + 8));
  mlir::anec::addPoolOpCommon(v4, a2, 1, __p, v5, NextResultAtOffset, v11, v15, v19, v21);
}

void mlir::anec::MaxPool::addOpToNetwork(mlir::anec::MaxPool *this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v4 = *this;
  v21[0] = 0;
  v21[1] = 0;
  mlir::anec::computeOpKeyString(__p, v4);
  v5 = *(*(v4 + 72) + 24);
  if (*(v4 + 36))
  {
    v6 = v4 - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(v4);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v4);
  v9 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v11 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v9 + 16 * v10 - 16), *(*(*(v4 + 48) + 96) + 8));
  AttrDictionary = mlir::Operation::getAttrDictionary(v4);
  v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v4);
  v13 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v15 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v12 + 32), (v13 + 16 * v14), *(*(*(v4 + 48) + 96) + 16));
  AttrDictionary = mlir::Operation::getAttrDictionary(v4);
  v16 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v4);
  v17 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v19 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v16, (v17 + 16 * v18 - 32), **(*(v4 + 48) + 96));
  mlir::anec::addPoolOpCommon(v4, a2, 0, __p, v5, NextResultAtOffset, v11, v15, v19, v21);
}

void mlir::anec::L2NormPool::addOpToNetwork(mlir::anec::L2NormPool *this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v4 = *this;
  v21[0] = 0;
  v21[1] = 0;
  mlir::anec::computeOpKeyString(__p, v4);
  v5 = *(*(v4 + 72) + 24);
  if (*(v4 + 36))
  {
    v6 = v4 - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(v4);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v4);
  v9 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v11 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v9 + 16 * v10 - 16), *(*(*(v4 + 48) + 96) + 8));
  AttrDictionary = mlir::Operation::getAttrDictionary(v4);
  v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v4);
  v13 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v15 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v12 + 32), (v13 + 16 * v14), *(*(*(v4 + 48) + 96) + 16));
  AttrDictionary = mlir::Operation::getAttrDictionary(v4);
  v16 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v4);
  v17 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v19 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v16, (v17 + 16 * v18 - 32), **(*(v4 + 48) + 96));
  mlir::anec::addPoolOpCommon(v4, a2, 2, __p, v5, NextResultAtOffset, v11, v15, v19, v21);
}

BOOL mlir::anec::inferReductionOpReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v44[6] = *MEMORY[0x1E69E9840];
  v34 = a6;
  v13 = mlir::TypeRange::dereference_iterator(a9, 0);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8))
  {
    v32 = 0;
    v33 = 0;
    return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "input type must be ranked shaped type");
  }

  v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  v32 = v13;
  v33 = v14;
  if (!v13 || (mlir::ElementsAttr::getShapedType(&v32) & 1) == 0)
  {
    return mlir::emitOptionalError<char const(&)[41]>(a2, a3, "input type must be ranked shaped type");
  }

  v42 = v44;
  v43 = 0x600000000;
  v15 = mlir::DictionaryAttr::get(&v34, "axes", 4uLL);
  v31 = v15;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v39, v15, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v31);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v35, v15, NumElements);
  for (; v41[0] != v36; ++v41[0])
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v39, &v37);
    if (v38 >= 0x41)
    {
      v25 = v37;
    }

    else
    {
      v25 = &v37;
    }

    v26 = *v25;
    v27 = v43;
    if (v43 >= HIDWORD(v43))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v43 + 1, 8);
      v27 = v43;
    }

    *(v42 + v27) = v26;
    LODWORD(v43) = v43 + 1;
    if (v38 >= 0x41 && v37)
    {
      MEMORY[0x1AC55A040](v37, 0x1000C8000313F17);
    }
  }

  v39 = v41;
  v40 = 0x600000000;
  Shape = mlir::ShapedType::getShape(&v32);
  if (mlir::inferReductionOpReturnShape(a2, a3, Shape, v18, v42, v43, 1, &v39))
  {
    v19 = v39;
    v20 = v40;
    isSplat = mlir::ElementsAttr::isSplat(&v32);
    v22 = mlir::MemRefType::get(v19, v20, isSplat, 0, 0, 0);
    v23 = *(a11 + 8);
    if (v23 >= *(a11 + 12))
    {
      v30 = v22;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v23 + 1, 8);
      v22 = v30;
      LODWORD(v23) = *(a11 + 8);
    }

    *(*a11 + 8 * v23) = v22;
    ++*(a11 + 8);
    result = 1;
  }

  else
  {
    result = 0;
  }

  if (v39 != v41)
  {
    v28 = result;
    free(v39);
    result = v28;
  }

  if (v42 != v44)
  {
    v29 = result;
    free(v42);
    return v29;
  }

  return result;
}

BOOL mlir::anec::ReduceAvg::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = a6;
  LOBYTE(v27) = 0;
  v28 = 0;
  v29 = a7;
  v30 = a8;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v26);
    if (v28 == 1)
    {
      v28 = 0;
    }

    mlir::OperationName::OperationName(&v27, "anec.reduce_avg", 15, Context);
    v28 = 1;
    a1 = v16;
  }

  v31 = a4;
  v32 = a5;
  v18 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v19 = a2;
  }

  else
  {
    v19 = v18;
  }

  v20 = mlir::anec::ReduceAvgAdaptor::verify(&v26, v19);
  return v20 && mlir::anec::inferReductionOpReturnTypes(v20, a2, a3, v21, v22, a6, v23, v24, a9, a10, a11);
}

BOOL mlir::anec::ReduceAvgAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v38 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v38); i != mlir::DictionaryAttr::end(&v38); i += 2)
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v36[0] = v14;
        v36[1] = v15;
        Type = mlir::ElementsAttr::getType(v36);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v39[0] = v17;
        v39[1] = Type;
        mlir::ShapedType::getShape(v39);
        if (!v18)
        {
          goto LABEL_55;
        }

        v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v34[0] = v14;
        v34[1] = v19;
        v20 = mlir::ElementsAttr::getType(v34);
        v21 = v20;
        if (v20)
        {
          v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
        }

        v35[0] = v21;
        v35[1] = v20;
        mlir::ShapedType::getShape(v35);
        if (v22 == 1)
        {
LABEL_55:
          if (mlir::hasUniqueValues(v14))
          {
            v31 = v14;
            v32[0] = mlir::ArrayAttr::getValue(&v31);
            v32[1] = v23;
            isSplat = mlir::ElementsAttr::isSplat(v32);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
              return 1;
            }
          }
        }
      }

      v36[0] = "'anec.reduce_avg' op attribute 'axes' failed to satisfy constraint: ui64 unique elements attribute of ranks 0/1";
      v37 = 259;
      mlir::emitError(a2, v36, v39);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
      if (v39[0])
      {
        mlir::InFlightDiagnostic::report(v39);
      }

      if (v47 == 1)
      {
        if (v46 != &v47)
        {
          free(v46);
        }

        v24 = __p;
        if (__p)
        {
          v25 = v45;
          v26 = __p;
          if (v45 != __p)
          {
            do
            {
              v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
            }

            while (v25 != v24);
            v26 = __p;
          }

          v45 = v24;
          operator delete(v26);
        }

        v9 = v42;
        if (v42)
        {
          v27 = v43;
          v11 = v42;
          if (v43 != v42)
          {
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

            while (v27 != v9);
            goto LABEL_48;
          }

          goto LABEL_49;
        }

        goto LABEL_50;
      }

      return v5;
    }
  }

  v36[0] = "'anec.reduce_avg' op requires attribute 'axes'";
  v37 = 259;
  mlir::emitError(a2, v36, v39);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
  if (v39[0])
  {
    mlir::InFlightDiagnostic::report(v39);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v45;
      v8 = __p;
      if (v45 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v45 = v6;
      operator delete(v8);
    }

    v9 = v42;
    if (v42)
    {
      v10 = v43;
      v11 = v42;
      if (v43 != v42)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
LABEL_48:
        v11 = v42;
      }

LABEL_49:
      v43 = v9;
      operator delete(v11);
    }

LABEL_50:
    if (v40 != &v41)
    {
      free(v40);
    }
  }

  return v5;
}

BOOL mlir::anec::ReduceAvg::addOpToNetwork(mlir::anec **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    mlir::anec::getReductionZinIrUnitInfo();
  }

  v13 = "network should not be nullptr";
  v14 = 259;
  mlir::OpState::emitError(this, &v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v4 = __p;
    if (__p)
    {
      v5 = v21;
      v6 = __p;
      if (v21 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v21 = v4;
      operator delete(v6);
    }

    v7 = v18;
    if (v18)
    {
      v8 = v19;
      v9 = v18;
      if (v19 != v18)
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
        v9 = v18;
      }

      v19 = v7;
      operator delete(v9);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

BOOL mlir::anec::ReduceMax::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = a6;
  LOBYTE(v27) = 0;
  v28 = 0;
  v29 = a7;
  v30 = a8;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v26);
    if (v28 == 1)
    {
      v28 = 0;
    }

    mlir::OperationName::OperationName(&v27, "anec.reduce_max", 15, Context);
    v28 = 1;
    a1 = v16;
  }

  v31 = a4;
  v32 = a5;
  v18 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v19 = a2;
  }

  else
  {
    v19 = v18;
  }

  v20 = mlir::anec::ReduceMaxAdaptor::verify(&v26, v19);
  return v20 && mlir::anec::inferReductionOpReturnTypes(v20, a2, a3, v21, v22, a6, v23, v24, a9, a10, a11);
}

BOOL mlir::anec::ReduceMaxAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v38 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v38); i != mlir::DictionaryAttr::end(&v38); i += 2)
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v36[0] = v14;
        v36[1] = v15;
        Type = mlir::ElementsAttr::getType(v36);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v39[0] = v17;
        v39[1] = Type;
        mlir::ShapedType::getShape(v39);
        if (!v18)
        {
          goto LABEL_55;
        }

        v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v34[0] = v14;
        v34[1] = v19;
        v20 = mlir::ElementsAttr::getType(v34);
        v21 = v20;
        if (v20)
        {
          v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
        }

        v35[0] = v21;
        v35[1] = v20;
        mlir::ShapedType::getShape(v35);
        if (v22 == 1)
        {
LABEL_55:
          if (mlir::hasUniqueValues(v14))
          {
            v31 = v14;
            v32[0] = mlir::ArrayAttr::getValue(&v31);
            v32[1] = v23;
            isSplat = mlir::ElementsAttr::isSplat(v32);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
              return 1;
            }
          }
        }
      }

      v36[0] = "'anec.reduce_max' op attribute 'axes' failed to satisfy constraint: ui64 unique elements attribute of ranks 0/1";
      v37 = 259;
      mlir::emitError(a2, v36, v39);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
      if (v39[0])
      {
        mlir::InFlightDiagnostic::report(v39);
      }

      if (v47 == 1)
      {
        if (v46 != &v47)
        {
          free(v46);
        }

        v24 = __p;
        if (__p)
        {
          v25 = v45;
          v26 = __p;
          if (v45 != __p)
          {
            do
            {
              v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
            }

            while (v25 != v24);
            v26 = __p;
          }

          v45 = v24;
          operator delete(v26);
        }

        v9 = v42;
        if (v42)
        {
          v27 = v43;
          v11 = v42;
          if (v43 != v42)
          {
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

            while (v27 != v9);
            goto LABEL_48;
          }

          goto LABEL_49;
        }

        goto LABEL_50;
      }

      return v5;
    }
  }

  v36[0] = "'anec.reduce_max' op requires attribute 'axes'";
  v37 = 259;
  mlir::emitError(a2, v36, v39);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
  if (v39[0])
  {
    mlir::InFlightDiagnostic::report(v39);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v45;
      v8 = __p;
      if (v45 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v45 = v6;
      operator delete(v8);
    }

    v9 = v42;
    if (v42)
    {
      v10 = v43;
      v11 = v42;
      if (v43 != v42)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
LABEL_48:
        v11 = v42;
      }

LABEL_49:
      v43 = v9;
      operator delete(v11);
    }

LABEL_50:
    if (v40 != &v41)
    {
      free(v40);
    }
  }

  return v5;
}

BOOL mlir::anec::ReduceMin::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = a6;
  LOBYTE(v27) = 0;
  v28 = 0;
  v29 = a7;
  v30 = a8;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v26);
    if (v28 == 1)
    {
      v28 = 0;
    }

    mlir::OperationName::OperationName(&v27, "anec.reduce_min", 15, Context);
    v28 = 1;
    a1 = v16;
  }

  v31 = a4;
  v32 = a5;
  v18 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v19 = a2;
  }

  else
  {
    v19 = v18;
  }

  v20 = mlir::anec::ReduceMinAdaptor::verify(&v26, v19);
  return v20 && mlir::anec::inferReductionOpReturnTypes(v20, a2, a3, v21, v22, a6, v23, v24, a9, a10, a11);
}

BOOL mlir::anec::ReduceMinAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v38 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v38); i != mlir::DictionaryAttr::end(&v38); i += 2)
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v36[0] = v14;
        v36[1] = v15;
        Type = mlir::ElementsAttr::getType(v36);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v39[0] = v17;
        v39[1] = Type;
        mlir::ShapedType::getShape(v39);
        if (!v18)
        {
          goto LABEL_55;
        }

        v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v34[0] = v14;
        v34[1] = v19;
        v20 = mlir::ElementsAttr::getType(v34);
        v21 = v20;
        if (v20)
        {
          v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
        }

        v35[0] = v21;
        v35[1] = v20;
        mlir::ShapedType::getShape(v35);
        if (v22 == 1)
        {
LABEL_55:
          if (mlir::hasUniqueValues(v14))
          {
            v31 = v14;
            v32[0] = mlir::ArrayAttr::getValue(&v31);
            v32[1] = v23;
            isSplat = mlir::ElementsAttr::isSplat(v32);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
              return 1;
            }
          }
        }
      }

      v36[0] = "'anec.reduce_min' op attribute 'axes' failed to satisfy constraint: ui64 unique elements attribute of ranks 0/1";
      v37 = 259;
      mlir::emitError(a2, v36, v39);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
      if (v39[0])
      {
        mlir::InFlightDiagnostic::report(v39);
      }

      if (v47 == 1)
      {
        if (v46 != &v47)
        {
          free(v46);
        }

        v24 = __p;
        if (__p)
        {
          v25 = v45;
          v26 = __p;
          if (v45 != __p)
          {
            do
            {
              v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
            }

            while (v25 != v24);
            v26 = __p;
          }

          v45 = v24;
          operator delete(v26);
        }

        v9 = v42;
        if (v42)
        {
          v27 = v43;
          v11 = v42;
          if (v43 != v42)
          {
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

            while (v27 != v9);
            goto LABEL_48;
          }

          goto LABEL_49;
        }

        goto LABEL_50;
      }

      return v5;
    }
  }

  v36[0] = "'anec.reduce_min' op requires attribute 'axes'";
  v37 = 259;
  mlir::emitError(a2, v36, v39);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
  if (v39[0])
  {
    mlir::InFlightDiagnostic::report(v39);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v45;
      v8 = __p;
      if (v45 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v45 = v6;
      operator delete(v8);
    }

    v9 = v42;
    if (v42)
    {
      v10 = v43;
      v11 = v42;
      if (v43 != v42)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
LABEL_48:
        v11 = v42;
      }

LABEL_49:
      v43 = v9;
      operator delete(v11);
    }

LABEL_50:
    if (v40 != &v41)
    {
      free(v40);
    }
  }

  return v5;
}

BOOL mlir::anec::ReduceSum::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = a6;
  LOBYTE(v27) = 0;
  v28 = 0;
  v29 = a7;
  v30 = a8;
  if (a6)
  {
    v16 = a1;
    Context = mlir::Attribute::getContext(&v26);
    if (v28 == 1)
    {
      v28 = 0;
    }

    mlir::OperationName::OperationName(&v27, "anec.reduce_sum", 15, Context);
    v28 = 1;
    a1 = v16;
  }

  v31 = a4;
  v32 = a5;
  v18 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v19 = a2;
  }

  else
  {
    v19 = v18;
  }

  v20 = mlir::anec::ReduceSumAdaptor::verify(&v26, v19);
  return v20 && mlir::anec::inferReductionOpReturnTypes(v20, a2, a3, v21, v22, a6, v23, v24, a9, a10, a11);
}

BOOL mlir::anec::ReduceSumAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v38 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v38); i != mlir::DictionaryAttr::end(&v38); i += 2)
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      v14 = i[1];
      if (!v14)
      {
        return 1;
      }

      if (mlir::DenseIntElementsAttr::classof(i[1]))
      {
        v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v36[0] = v14;
        v36[1] = v15;
        Type = mlir::ElementsAttr::getType(v36);
        v17 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v39[0] = v17;
        v39[1] = Type;
        mlir::ShapedType::getShape(v39);
        if (!v18)
        {
          goto LABEL_55;
        }

        v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
        v34[0] = v14;
        v34[1] = v19;
        v20 = mlir::ElementsAttr::getType(v34);
        v21 = v20;
        if (v20)
        {
          v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
        }

        v35[0] = v21;
        v35[1] = v20;
        mlir::ShapedType::getShape(v35);
        if (v22 == 1)
        {
LABEL_55:
          if (mlir::hasUniqueValues(v14))
          {
            v31 = v14;
            v32[0] = mlir::ArrayAttr::getValue(&v31);
            v32[1] = v23;
            isSplat = mlir::ElementsAttr::isSplat(v32);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
              return 1;
            }
          }
        }
      }

      v36[0] = "'anec.reduce_sum' op attribute 'axes' failed to satisfy constraint: ui64 unique elements attribute of ranks 0/1";
      v37 = 259;
      mlir::emitError(a2, v36, v39);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
      if (v39[0])
      {
        mlir::InFlightDiagnostic::report(v39);
      }

      if (v47 == 1)
      {
        if (v46 != &v47)
        {
          free(v46);
        }

        v24 = __p;
        if (__p)
        {
          v25 = v45;
          v26 = __p;
          if (v45 != __p)
          {
            do
            {
              v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
            }

            while (v25 != v24);
            v26 = __p;
          }

          v45 = v24;
          operator delete(v26);
        }

        v9 = v42;
        if (v42)
        {
          v27 = v43;
          v11 = v42;
          if (v43 != v42)
          {
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

            while (v27 != v9);
            goto LABEL_48;
          }

          goto LABEL_49;
        }

        goto LABEL_50;
      }

      return v5;
    }
  }

  v36[0] = "'anec.reduce_sum' op requires attribute 'axes'";
  v37 = 259;
  mlir::emitError(a2, v36, v39);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
  if (v39[0])
  {
    mlir::InFlightDiagnostic::report(v39);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v45;
      v8 = __p;
      if (v45 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v45 = v6;
      operator delete(v8);
    }

    v9 = v42;
    if (v42)
    {
      v10 = v43;
      v11 = v42;
      if (v43 != v42)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
LABEL_48:
        v11 = v42;
      }

LABEL_49:
      v43 = v9;
      operator delete(v11);
    }

LABEL_50:
    if (v40 != &v41)
    {
      free(v40);
    }
  }

  return v5;
}

BOOL mlir::anec::GOC::mutateOpForReshapeSwap(uint64_t a1, const void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v57[5] = *MEMORY[0x1E69E9840];
  if (!a5)
  {
LABEL_5:
    v9 = (*(*(*(*a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v9)
    {
      v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
    }

    else
    {
      v10 = 0;
    }

    v55 = v9;
    v56 = v10;
    Shape = mlir::ShapedType::getShape(&v55);
    if (mlir::ShapedType::getNumElements(Shape, v13) == 1)
    {
      v14 = (*(*(*(*a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
      v15 = v14 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8) : 0;
      v52 = v14;
      v53 = v15;
      v16 = mlir::ShapedType::getShape(&v52);
      if (mlir::ShapedType::getNumElements(v16, v17) == 1)
      {
        return 1;
      }
    }

    v18 = (*(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v18)
    {
      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    }

    else
    {
      v19 = 0;
    }

    v52 = v18;
    v53 = v19;
    v21 = mlir::ShapedType::getShape(&v52);
    v22 = v20;
    v55 = v57;
    v56 = 0x500000000;
    v23 = (8 * v20) >> 3;
    if (v23 < 6)
    {
      v24 = 0;
      v25 = 8 * v20;
      if (!v20)
      {
        goto LABEL_23;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v57, v23, 8);
      v24 = v56;
      v25 = 8 * v22;
      if (!v22)
      {
LABEL_23:
        v26 = v24 + (v25 >> 3);
        LODWORD(v56) = v26;
        if (v26 <= 4)
        {
          llvm::SmallVectorImpl<long long>::insert(&v55, v55, 5 - v26, 1uLL);
        }

        v52 = v54;
        v53 = 0x500000000;
        v27 = (8 * a3) >> 3;
        if (v27 < 6)
        {
          v28 = 0;
          v29 = 8 * a3;
          if (!a3)
          {
LABEL_30:
            v30 = v28 + (v29 >> 3);
            LODWORD(v53) = v30;
            if (v30 <= 4)
            {
              llvm::SmallVectorImpl<long long>::insert(&v52, v52, 5 - v30, 1uLL);
            }

            IndexFromDim = mlir::anec::getIndexFromDim(1, v56);
            if ((v32 & 1) == 0)
            {
              v45 = std::__throw_bad_optional_access[abi:nn200100]();
              mlir::anec::GOC::addOpToNetwork(v45, v46, v47);
            }

            v33 = IndexFromDim;
            memset_pattern16(&v48, &unk_1A75989B0, 0x20uLL);
            v34 = v55;
            v35 = v48;
            if (v56 && v53)
            {
              v36 = 0;
              v37 = v50;
              v38 = v51;
              v39 = v49;
              v40 = 8 * v53 - 8;
              v41 = 8 * v56 - 8;
              do
              {
                if (v36 >= v33)
                {
                  if (v36 > v33)
                  {
                    v37 *= *(v55 + v36);
                    v50 = v37;
                    v38 *= *(v52 + v36);
                    v51 = v38;
                  }
                }

                else
                {
                  v35 *= *(v55 + v36);
                  v48 = v35;
                  v39 *= *(v52 + v36);
                  v49 = v39;
                }

                if (!v41)
                {
                  break;
                }

                ++v36;
                v42 = v40;
                v40 -= 8;
                v41 -= 8;
              }

              while (v42);
            }

            else
            {
              v39 = v49;
              v37 = v50;
              v38 = v51;
            }

            v11 = v35 == v39 && v37 == v38;
            if (v52 != v54)
            {
              free(v52);
              v34 = v55;
            }

            if (v34 != v57)
            {
              free(v34);
            }

            return v11;
          }
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v54, v27, 8);
          v28 = v53;
          v29 = 8 * a3;
          if (!a3)
          {
            goto LABEL_30;
          }
        }

        memcpy(v52 + 8 * v28, a2, v29);
        v28 = v53;
        goto LABEL_30;
      }
    }

    memcpy(v55 + 8 * v24, v21, v25);
    v24 = v56;
    goto LABEL_23;
  }

  v8 = 8 * a5;
  while (!*a4)
  {
    ++a4;
    v8 -= 8;
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  return 0;
}

void mlir::anec::GOC::addOpToNetwork(mlir::anec **this, mlir::anec::ANECIRNetwork *a2, mlir::anec::ANECIRWeightSerializer *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  __p[0] = *(*(*this + 9) + 56);
  DefiningOp = mlir::Value::getDefiningOp(__p);
  mlir::anec::ANECIRWeightSerializer::lookupConstant(a3, DefiningOp);
  __p[0] = *(*(*this + 9) + 88);
  v6 = mlir::Value::getDefiningOp(__p);
  mlir::anec::ANECIRWeightSerializer::lookupConstant(a3, v6);
  mlir::anec::computeOpKeyString(__p, *this);
  operator new();
}

void mlir::anec::ANECIRUnit::AddInput(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v12 = a3;
  v5 = *(a1 + 72);
  v6 = *(a1 + 64);
  p_p = &__p;
  if (v5 >= *(a1 + 76))
  {
    if (v6 <= &__p && v6 + 32 * v5 > &__p)
    {
      v10 = &__p - v6;
      llvm::SmallVectorTemplateBase<std::pair<std::string,mlir::anec::ANECIRDataType>,false>::grow(a1 + 64, v5 + 1);
      v6 = *(a1 + 64);
      p_p = &v10[v6];
    }

    else
    {
      llvm::SmallVectorTemplateBase<std::pair<std::string,mlir::anec::ANECIRDataType>,false>::grow(a1 + 64, v5 + 1);
      v6 = *(a1 + 64);
      p_p = &__p;
    }
  }

  v8 = v6 + 32 * *(a1 + 72);
  v9 = *&p_p->__r_.__value_.__l.__data_;
  *(v8 + 16) = *(&p_p->__r_.__value_.__l + 2);
  *v8 = v9;
  p_p->__r_.__value_.__l.__size_ = 0;
  p_p->__r_.__value_.__r.__words[2] = 0;
  p_p->__r_.__value_.__r.__words[0] = 0;
  *(v8 + 24) = p_p[1].__r_.__value_.__l.__data_;
  ++*(a1 + 72);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void mlir::anec::GOC::getExecutionCost(uint64_t *a1, uint64_t a2)
{
  v13 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v13);
  if (!DefiningOp)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v5 = *(*(DefiningOp + 48) + 16);
    if (v5 != &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
    {
      break;
    }

    v12[0] = *(*(DefiningOp + 72) + 24);
    DefiningOp = mlir::Value::getDefiningOp(v12);
    if (!DefiningOp)
    {
      goto LABEL_6;
    }
  }

  if (v5 != &mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id)
  {
LABEL_6:
    v6 = (*(v13 + 8) & 0xFFFFFFFFFFFFFFF8);
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
    if (v7)
    {
      v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
    }

    else
    {
      v6 = 0;
    }

    v12[0] = v6;
    v12[1] = v7;
    Shape = mlir::ShapedType::getShape(v12);
    mlir::ShapedType::getNumElements(Shape, v9);
    v10 = *a1;
    isSplat = mlir::ElementsAttr::isSplat(v12);
  }
}

uint64_t mlir::anec::GOC::fold(uint64_t a1, uint64_t a2)
{
  v26[3] = *MEMORY[0x1E69E9840];
  v4 = *(*(*(*a1 + 72) + 24) + 8);
  if (*(*a1 + 36))
  {
    v5 = *a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  result = 0;
  if ((*(NextResultAtOffset + 8) ^ v4) <= 7)
  {
    v8 = *(*(a2 + 40) + 8);
    if (mlir::DenseFPElementsAttr::classof(v8))
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v24 = v9;
    v10 = *(*(a2 + 40) + 16);
    if (mlir::DenseFPElementsAttr::classof(v10))
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v23 = v11;
    if (!v9 || !mlir::DenseElementsAttr::isSplat(&v24))
    {
      return 0;
    }

    mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v24, v25);
    v15 = llvm::APFloat::convertToFloat(v25, v12, v13, v14);
    v16 = v26[0];
    v18 = llvm::APFloatBase::PPCDoubleDouble(v17);
    if (v18 == v16)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v26);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v26);
    }

    result = 0;
    if (v15 == 1.0)
    {
      if (v11)
      {
        if (mlir::DenseElementsAttr::isSplat(&v23))
        {
          mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v23, v25);
          v22 = llvm::APFloat::convertToFloat(v25, v19, v20, v21);
          if (v18 == v26[0])
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(v26);
            if (v22 != 0.0)
            {
              return 0;
            }
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(v26);
            if (v22 != 0.0)
            {
              return 0;
            }
          }

          return *(*(*a1 + 72) + 24) | 4;
        }

        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::anec::Softmax::mutateOpForReshapeSwap(mlir::Operation **a1, const void *a2, uint64_t a3)
{
  v80[5] = *MEMORY[0x1E69E9840];
  v6 = (*(*(*(*a1 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v78 = v6;
  v79 = v7;
  mlir::ShapedType::getShape(&v78);
  v9 = v8;
  v78 = v80;
  v79 = 0x500000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v11 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v13 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v11 + 16 * v12), **(*(*a1 + 6) + 96));
  mlir::getValues<long long>(v13, &v78);
  v14 = v79;
  if (v79)
  {
    v15 = v78;
    v16 = (v79 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v17 = v78;
    if (v16 <= 2)
    {
      goto LABEL_9;
    }

    v18 = v16 + 1;
    v19 = vdupq_n_s64(v9);
    v17 = v78 + 8 * (v18 & 0x3FFFFFFFFFFFFFFCLL);
    v20 = (v78 + 16);
    v21 = vdupq_n_s64(5uLL);
    v22 = v18 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v23 = vaddq_s64(vsubq_s64(*v20, v19), v21);
      v20[-1] = vaddq_s64(vsubq_s64(v20[-1], v19), v21);
      *v20 = v23;
      v20 += 2;
      v22 -= 4;
    }

    while (v22);
    if (v18 != (v18 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_9:
      v24 = &v15[8 * v14];
      do
      {
        *v17 = *v17 - v9 + 5;
        v17 += 8;
      }

      while (v17 != v24);
    }
  }

  v25 = (*(*(*(*a1 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v25)
  {
    v26 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
  }

  else
  {
    v26 = 0;
  }

  v72 = v25;
  v73 = v26;
  Shape = mlir::ShapedType::getShape(&v72);
  v29 = v27;
  AttrDictionary = v77;
  v76 = 0x500000000;
  v30 = (8 * v27) >> 3;
  if (v30 < 6)
  {
    v31 = 0;
    v32 = 8 * v27;
    if (!v27)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&AttrDictionary, v77, v30, 8);
  v31 = v76;
  v32 = 8 * v29;
  if (v29)
  {
LABEL_18:
    memcpy(AttrDictionary + 8 * v31, Shape, v32);
    v31 = v76;
  }

LABEL_19:
  v33 = v31 + (v32 >> 3);
  LODWORD(v76) = v33;
  if (v33 < 5)
  {
    llvm::SmallVectorImpl<long long>::insert(&AttrDictionary, AttrDictionary, 5 - v33, 1uLL);
  }

  v72 = v74;
  v73 = 0x500000000;
  v34 = (8 * a3) >> 3;
  if (v34 < 6)
  {
    v35 = 0;
    v36 = 8 * a3;
    if (!a3)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v74, v34, 8);
  v35 = v73;
  v36 = 8 * a3;
  if (a3)
  {
LABEL_25:
    memcpy(v72 + 8 * v35, a2, v36);
    v35 = v73;
  }

LABEL_26:
  v37 = v35 + (v36 >> 3);
  LODWORD(v73) = v37;
  if (v37 <= 4)
  {
    llvm::SmallVectorImpl<long long>::insert(&v72, v72, 5 - v37, 1uLL);
  }

  if (!v79)
  {
    v39 = 0;
    v40 = 4;
    goto LABEL_40;
  }

  v38 = (v79 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v38 > 2)
  {
    v42 = v38 + 1;
    v43 = (v38 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v41 = (v78 + 8 * v43);
    v44 = (v78 + 16);
    v45 = vdupq_n_s64(4uLL);
    v46 = 0uLL;
    v47 = v43;
    v48 = v45;
    v49 = 0uLL;
    do
    {
      v50 = v44[-1];
      v45 = vbslq_s8(vcgtq_s64(v45, v50), v50, v45);
      v48 = vbslq_s8(vcgtq_s64(v48, *v44), *v44, v48);
      v46 = vbslq_s8(vcgtq_s64(v46, v50), v46, v50);
      v49 = vbslq_s8(vcgtq_s64(v49, *v44), v49, *v44);
      v44 += 2;
      v47 -= 4;
    }

    while (v47);
    v51 = vbslq_s8(vcgtq_s64(v48, v45), v45, v48);
    v52 = vextq_s8(v51, v51, 8uLL).u64[0];
    v40 = vbsl_s8(vcgtd_s64(v52, v51.i64[0]), *v51.i8, v52);
    v53 = vbslq_s8(vcgtq_s64(v46, v49), v46, v49);
    v54 = vextq_s8(v53, v53, 8uLL).u64[0];
    v39 = vbsl_s8(vcgtd_s64(v53.i64[0], v54), *v53.i8, v54);
    if (v42 == v43)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v39 = 0;
    v40 = 4;
    v41 = v78;
  }

  do
  {
    v56 = *v41++;
    v55 = v56;
    if (*&v56 < *&v40)
    {
      v40 = v55;
    }

    if (*&v39 <= *&v55)
    {
      v39 = v55;
    }
  }

  while (v41 != (v78 + 8 * v79));
LABEL_40:
  memset_pattern16(&v68, &unk_1A75989B0, 0x20uLL);
  v57 = AttrDictionary;
  v58 = v68;
  if (v76 && v73)
  {
    v59 = 0;
    v60 = v70;
    v61 = v71;
    v62 = v69;
    v63 = 8 * v73 - 8;
    v64 = 8 * v76 - 8;
    do
    {
      if (v59 >= *&v40)
      {
        if (v59 > *&v39)
        {
          v60 *= *(AttrDictionary + v59);
          v70 = v60;
          v61 *= *(v72 + v59);
          v71 = v61;
        }
      }

      else
      {
        v58 *= *(AttrDictionary + v59);
        v68 = v58;
        v62 *= *(v72 + v59);
        v69 = v62;
      }

      if (!v64)
      {
        break;
      }

      ++v59;
      v65 = v63;
      v63 -= 8;
      v64 -= 8;
    }

    while (v65);
  }

  else
  {
    v62 = v69;
    v60 = v70;
    v61 = v71;
  }

  if (v72 != v74)
  {
    free(v72);
    v57 = AttrDictionary;
  }

  if (v57 != v77)
  {
    free(v57);
  }

  if (v78 != v80)
  {
    free(v78);
  }

  return v58 == v62 && v60 == v61;
}