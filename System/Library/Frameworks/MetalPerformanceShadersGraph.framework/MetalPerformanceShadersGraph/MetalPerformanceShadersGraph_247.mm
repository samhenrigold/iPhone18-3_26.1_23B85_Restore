void sub_1E07FE398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a24 < 0)
  {
    operator delete(a19);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      if (a32 < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a13);
  if (a32 < 0)
  {
LABEL_4:
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  _Unwind_Resume(exception_object);
}

EmitterObjC::PermuteOpHandler *EmitterObjC::PermuteOpHandler::PermuteOpHandler(EmitterObjC::PermuteOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  v78[4] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B50A50;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

  v64 = *(*(v4 + 9) + 24);
  if (*(v4 + 9))
  {
    v5 = v4 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  v6 = *(*(v4 + 9) + 56);
  *(&v73.__r_.__value_.__s + 23) = 2;
  strcpy(&v73, "@[");
  v76 = v78;
  v77 = 0x400000000;
  if ((mlir::matchConstantWithIntVector<long long>(v6, &v76) & 1) == 0)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v13 = MEMORY[0x1E696AEC0];
    v14 = &v72;
    (*(*a2 + 32))(&v72, a2, NextResultAtOffset);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = v72.__r_.__value_.__r.__words[0];
    }

    v75.__r_.__value_.__r.__words[0] = v64;
    v71.__r_.__value_.__r.__words[0] = &v75;
    v15 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v75, &std::piecewise_construct, &v71);
    v16 = v15 + 3;
    if (*(v15 + 47) < 0)
    {
      v16 = *v16;
    }

    v67 = 0;
    LOBYTE(__p) = 0;
    EmitObjC::emitTensorName(a2, NextResultAtOffset, &__p, &v71);
    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v71;
    }

    else
    {
      v17 = v71.__r_.__value_.__r.__words[0];
    }

    v18 = [v13 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph transposeTensor:%s\n                   permute:%s\n                      name:%s]\n    ", v14, v16, &v73, v17];;
    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
      if ((v67 & 0x80000000) == 0)
      {
LABEL_30:
        if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_31:
          **(a2 + 39) = 1;
          v19 = [*(a2 + 27) stringByAppendingString:v18];
          v20 = *(a2 + 27);
          *(a2 + 27) = v19;

          goto LABEL_153;
        }

LABEL_35:
        operator delete(v72.__r_.__value_.__l.__data_);
        goto LABEL_31;
      }
    }

    else if ((v67 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    operator delete(__p);
    if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_35;
  }

  v7 = v77;
  if (!v77)
  {
    v12 = 2;
    goto LABEL_76;
  }

  v72.__r_.__value_.__r.__words[2] = 0x300000000000000;
  *&v72.__r_.__value_.__l.__data_ = 0x405B40uLL;
  std::to_string(&v71, *v76);
  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v71;
  }

  else
  {
    v8 = v71.__r_.__value_.__r.__words[0];
  }

  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v71.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v71.__r_.__value_.__l.__size_;
  }

  v10 = std::string::append(&v72, v8, size);
  v11 = v10->__r_.__value_.__r.__words[0];
  v75.__r_.__value_.__r.__words[0] = v10->__r_.__value_.__l.__size_;
  *(v75.__r_.__value_.__r.__words + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
  v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
  v10->__r_.__value_.__r.__words[0] = 0;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v73.__r_.__value_.__r.__words[0] = v11;
  *(&v73.__r_.__value_.__r.__words[1] + 7) = *(v75.__r_.__value_.__r.__words + 7);
  v73.__r_.__value_.__l.__size_ = v75.__r_.__value_.__r.__words[0];
  *(&v73.__r_.__value_.__s + 23) = v12;
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_17:
      if (v77 < 2)
      {
        goto LABEL_75;
      }

      goto LABEL_38;
    }
  }

  else if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(v72.__r_.__value_.__l.__data_);
  if (v77 >= 2)
  {
LABEL_38:
    v21 = 1;
    while (1)
    {
      v22 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = v73.__r_.__value_.__l.__size_;
      }

      if (v12 + 2 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 + 2 >= 0x17)
      {
        operator new();
      }

      memset(&v72, 0, sizeof(v72));
      *(&v72.__r_.__value_.__s + 23) = v12 + 2;
      if (v12)
      {
        if (v22 >= 0)
        {
          v23 = &v73;
        }

        else
        {
          v23 = v11;
        }

        memmove(&v72, v23, v12);
      }

      strcpy(&v72 + v12, ", ");
      if (v22 < 0)
      {
        operator delete(v11);
      }

      v73 = v72;
      v24 = SHIBYTE(v72.__r_.__value_.__r.__words[2]);
      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v25 = v73.__r_.__value_.__l.__size_;
      }

      if (v25 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v25 + 1 >= 0x17)
      {
        operator new();
      }

      memset(&v72, 0, sizeof(v72));
      *(&v72.__r_.__value_.__s + 23) = v25 + 1;
      if (v25)
      {
        if (v24 >= 0)
        {
          v26 = &v73;
        }

        else
        {
          v26 = v73.__r_.__value_.__r.__words[0];
        }

        memmove(&v72, v26, v25);
      }

      *(&v72.__r_.__value_.__l.__data_ + v25) = 64;
      std::to_string(&v71, v76[v21]);
      if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &v71;
      }

      else
      {
        v27 = v71.__r_.__value_.__r.__words[0];
      }

      if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v28 = v71.__r_.__value_.__l.__size_;
      }

      v29 = std::string::append(&v72, v27, v28);
      v11 = v29->__r_.__value_.__r.__words[0];
      v75.__r_.__value_.__r.__words[0] = v29->__r_.__value_.__l.__size_;
      *(v75.__r_.__value_.__r.__words + 7) = *(&v29->__r_.__value_.__r.__words[1] + 7);
      v12 = HIBYTE(v29->__r_.__value_.__r.__words[2]);
      v29->__r_.__value_.__r.__words[0] = 0;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      if (v24 < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      v73.__r_.__value_.__r.__words[0] = v11;
      v73.__r_.__value_.__l.__size_ = v75.__r_.__value_.__r.__words[0];
      *(&v73.__r_.__value_.__r.__words[1] + 7) = *(v75.__r_.__value_.__r.__words + 7);
      *(&v73.__r_.__value_.__s + 23) = v12;
      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_40;
        }

LABEL_74:
        operator delete(v72.__r_.__value_.__l.__data_);
        if (++v21 >= v77)
        {
          break;
        }
      }

      else
      {
        if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_74;
        }

LABEL_40:
        if (++v21 >= v77)
        {
          break;
        }
      }
    }
  }

LABEL_75:
  v7 = v73.__r_.__value_.__l.__size_;
LABEL_76:
  if ((v12 & 0x80u) == 0)
  {
    v30 = v12;
  }

  else
  {
    v30 = v7;
  }

  if (v30 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v30 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v72, 0, sizeof(v72));
  *(&v72.__r_.__value_.__s + 23) = v30 + 1;
  if (v30)
  {
    if ((v12 & 0x80u) == 0)
    {
      v31 = &v73;
    }

    else
    {
      v31 = v73.__r_.__value_.__r.__words[0];
    }

    memmove(&v72, v31, v30);
  }

  *(&v72.__r_.__value_.__l.__data_ + v30) = 93;
  if (v12 < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  v73 = v72;
  v32 = (*(v64 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v32)
  {
    v33 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v32 + 8);
  }

  else
  {
    v33 = 0;
  }

  v70[0] = v32;
  v70[1] = v33;
  if (mlir::CallOpInterface::getArgOperands(v70))
  {
    v34 = v77;
    mlir::CallableOpInterface::getArgAttrsAttr(v70);
    if (v35 == v34)
    {
      mlir::CallableOpInterface::getArgAttrsAttr(v70);
      if (v36)
      {
        if (!(v36 >> 62))
        {
          operator new();
        }

        std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
      }

      if (v77)
      {
        v37 = 0;
        while (1)
        {
          v38 = *(4 * v37);
          *(4 * v37) = MEMORY[0];
          MEMORY[0] = v38;
          memset(&v72, 0, sizeof(v72));
          if (v37)
          {
            break;
          }

          *v74 = v64;
          v75.__r_.__value_.__r.__words[0] = v74;
          v45 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, v74, &std::piecewise_construct, &v75);
          if (*(v45 + 47) < 0)
          {
            std::string::__init_copy_ctor_external(&v71, v45[3], v45[4]);
          }

          else
          {
            v71 = *(v45 + 1);
          }

LABEL_118:
          if (v37 < v77 - 1)
          {
            (*(*a2 + 32))(&v69, a2, NextResultAtOffset);
            v46 = std::string::append(&v69, "permute");
            v47 = *&v46->__r_.__value_.__l.__data_;
            v75.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
            *&v75.__r_.__value_.__l.__data_ = v47;
            v46->__r_.__value_.__l.__size_ = 0;
            v46->__r_.__value_.__r.__words[2] = 0;
            v46->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v68, v37);
            if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v48 = &v68;
            }

            else
            {
              v48 = v68.__r_.__value_.__r.__words[0];
            }

            if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v49 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v49 = v68.__r_.__value_.__l.__size_;
            }

            v50 = std::string::append(&v75, v48, v49);
            v51 = v50->__r_.__value_.__r.__words[0];
            *v74 = v50->__r_.__value_.__l.__size_;
            *&v74[7] = *(&v50->__r_.__value_.__r.__words[1] + 7);
            v52 = HIBYTE(v50->__r_.__value_.__r.__words[2]);
            v50->__r_.__value_.__l.__size_ = 0;
            v50->__r_.__value_.__r.__words[2] = 0;
            v50->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v72.__r_.__value_.__l.__data_);
            }

            v72.__r_.__value_.__r.__words[0] = v51;
            v72.__r_.__value_.__l.__size_ = *v74;
            *(&v72.__r_.__value_.__r.__words[1] + 7) = *&v74[7];
            *(&v72.__r_.__value_.__s + 23) = v52;
            if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v68.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_129;
              }
            }

            else if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_129:
              if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_137;
              }

LABEL_136:
              operator delete(v69.__r_.__value_.__l.__data_);
              goto LABEL_137;
            }

            operator delete(v75.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_137;
            }

            goto LABEL_136;
          }

          (*(*a2 + 32))(&v75, a2, NextResultAtOffset);
          if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v72.__r_.__value_.__l.__data_);
          }

          v72 = v75;
LABEL_137:
          v53 = MEMORY[0x1E696AEC0];
          if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v54 = &v72;
          }

          else
          {
            v54 = v72.__r_.__value_.__r.__words[0];
          }

          if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v55 = &v71;
          }

          else
          {
            v55 = v71.__r_.__value_.__r.__words[0];
          }

          std::operator+<char>();
          v56 = std::string::append(&v69, "");
          v57 = *&v56->__r_.__value_.__l.__data_;
          v75.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
          *&v75.__r_.__value_.__l.__data_ = v57;
          v56->__r_.__value_.__l.__size_ = 0;
          v56->__r_.__value_.__r.__words[2] = 0;
          v56->__r_.__value_.__r.__words[0] = 0;
          v58 = &v75;
          if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v58 = v75.__r_.__value_.__r.__words[0];
          }

          v59 = [v53 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph transposeTensor:%s\n                 dimension:%ld\n             withDimension:%ld\n                      name:%s]\n                    ", v54, v55, v37, 0, v58];;
          if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v75.__r_.__value_.__l.__data_);
            if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_152:
              operator delete(v69.__r_.__value_.__l.__data_);
            }
          }

          else if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_152;
          }

          v60 = [*(a2 + 27) stringByAppendingString:v59];
          v61 = *(a2 + 27);
          *(a2 + 27) = v60;

          if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v71.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_100;
            }

LABEL_149:
            operator delete(v72.__r_.__value_.__l.__data_);
            if (++v37 >= v77)
            {
              goto LABEL_153;
            }
          }

          else
          {
            if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_149;
            }

LABEL_100:
            if (++v37 >= v77)
            {
              goto LABEL_153;
            }
          }
        }

        (*(*a2 + 32))(&v69, a2, NextResultAtOffset);
        v39 = std::string::append(&v69, "permute");
        v40 = *&v39->__r_.__value_.__l.__data_;
        v75.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
        *&v75.__r_.__value_.__l.__data_ = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v68, v37 - 1);
        if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v41 = &v68;
        }

        else
        {
          v41 = v68.__r_.__value_.__r.__words[0];
        }

        if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v42 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v42 = v68.__r_.__value_.__l.__size_;
        }

        v43 = std::string::append(&v75, v41, v42);
        v44 = *&v43->__r_.__value_.__l.__data_;
        v71.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
        *&v71.__r_.__value_.__l.__data_ = v44;
        v43->__r_.__value_.__l.__size_ = 0;
        v43->__r_.__value_.__r.__words[2] = 0;
        v43->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v68.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_110:
            if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_118;
            }

LABEL_116:
            operator delete(v69.__r_.__value_.__l.__data_);
            goto LABEL_118;
          }
        }

        else if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_110;
        }

        operator delete(v75.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_118;
        }

        goto LABEL_116;
      }
    }
  }

LABEL_153:
  if (v76 != v78)
  {
    free(v76);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1E07FF04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  v54 = *(v52 - 152);
  if (v54 != a17)
  {
    free(v54);
  }

  if (*(v52 - 201) < 0)
  {
    operator delete(*(v52 - 224));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

EmitterObjC::TransposeOpHandler *EmitterObjC::TransposeOpHandler::TransposeOpHandler(EmitterObjC::TransposeOpHandler *this, id *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B50A68;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  if (*(v5 + 9))
  {
    v7 = v5 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  v9 = *(*(v5 + 9) + 56);
  v35 = 0;
  v36 = 0;
  v38 = &v35;
  __p.__r_.__value_.__r.__words[0] = v9;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v38, DefiningOp) & 1) != 0 && (SingleInt = mlir::getSingleIntValue<long long>(v35, v36), (v12 & 1) != 0))
  {
    v13 = SingleInt;
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v13 = -1;
  }

  v14 = *(*(v5 + 9) + 88);
  v35 = 0;
  v36 = 0;
  v38 = &v35;
  __p.__r_.__value_.__r.__words[0] = v14;
  v15 = mlir::Value::getDefiningOp(&__p);
  if (v15 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v38, v15) & 1) != 0 && (v16 = mlir::getSingleIntValue<long long>(v35, v36), (v17 & 1) != 0))
  {
    v18 = v16;
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v18 = -1;
  }

  v19 = *(*(v5 + 9) + 56);
  v35 = 0;
  v36 = 0;
  v38 = &v35;
  __p.__r_.__value_.__r.__words[0] = v19;
  v20 = mlir::Value::getDefiningOp(&__p);
  if (v20 && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v38, v20) && (v21 = mlir::getSingleIntValue<long long>(v35, v36), (v22 & 1) != 0))
  {
    v13 = v21;
  }

  else if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v23 = MEMORY[0x1E696AEC0];
  v24 = &v35;
  (*(*a2 + 4))(&v35, a2, NextResultAtOffset);
  if (v37 < 0)
  {
    v24 = v35;
  }

  v38 = v6;
  __p.__r_.__value_.__r.__words[0] = &v38;
  v25 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v38, &std::piecewise_construct, &__p);
  v26 = v25 + 3;
  if (*(v25 + 47) < 0)
  {
    v26 = *v26;
  }

  v33 = 0;
  LOBYTE(v32) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v32, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v28 = [v23 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph transposeTensor:%s\n                 dimension:%lld\n             withDimension:%lld\n                      name:%s]\n    ", v24, v26, v13, v18, p_p];;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

LABEL_39:
    operator delete(v32);
    if ((v37 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_40:
    operator delete(v35);
    goto LABEL_37;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v33 < 0)
  {
    goto LABEL_39;
  }

LABEL_36:
  if (v37 < 0)
  {
    goto LABEL_40;
  }

LABEL_37:
  v29 = [a2[27] stringByAppendingString:v28];
  v30 = a2[27];
  a2[27] = v29;

  return this;
}

void sub_1E07FF5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(a20);
    if ((a19 & 0x80000000) == 0)
    {
LABEL_3:
      if (a31 < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a19 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a14);
  if (a31 < 0)
  {
LABEL_4:
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  _Unwind_Resume(exception_object);
}

void EmitterObjC::getConstantAxes(void *a1, uint64_t a2)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v6 = v8;
  v7 = 0x400000000;
  mlir::matchConstantWithIntVector<int>(a2, &v6);
  if ((mlir::matchConstantWithIntVector<int>(a2, &v6) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v7)
  {
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    goto LABEL_4;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v4 = v7;
  v5 = v6;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (v4)
  {
LABEL_4:
    operator new();
  }

  if (v5 != v8)
  {
    free(v5);
  }
}

void sub_1E07FF7B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10 != v10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

EmitterObjC::ConcatOpHandler *EmitterObjC::ConcatOpHandler::ConcatOpHandler(EmitterObjC::ConcatOpHandler *this, id *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B50A80;
  v47 = a3;
  mlir::mps::ConcatOp::getODSOperandIndexAndLength(&v47, 0);
  ODSOperandIndexAndLength = mlir::mps::ConcatOp::getODSOperandIndexAndLength(&v47, 0);
  v7 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
  if (v7 != ODSOperandIndexAndLength)
  {
    if (!((v7 - ODSOperandIndexAndLength) >> 61))
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v8 = mlir::mps::ConcatOp::getODSOperandIndexAndLength(&v47, 1u);
  v9 = *(*(v47 + 9) + 32 * v8 + 24);
  if (*(v47 + 9))
  {
    v10 = v47 - 16;
  }

  else
  {
    v10 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
  EmitterObjC::getConstantAxes(v46, v9);
  v12 = v46[0];
  if ((v46[1] - v46[0]) != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v39 = *v12;
  v43 = MEMORY[0];
  __p.__r_.__value_.__r.__words[0] = &v43;
  v13 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v43, &std::piecewise_construct, &__p);
  v14 = (v13 + 3);
  if (*(v13 + 47) < 0)
  {
    v14 = *v14;
  }

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

  __dst.__r_.__value_.__s.__data_[v16] = 0;
  v17 = std::string::insert(&__dst, 0, "@[");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v45.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v45.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v19 = 8;
  do
  {
    v20 = *v19;
    std::string::append(&v45, ", ");
    __p.__r_.__value_.__r.__words[0] = v20;
    __dst.__r_.__value_.__r.__words[0] = &__p;
    v21 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &__p, &std::piecewise_construct, &__dst);
    v22 = (v21 + 3);
    if (*(v21 + 47) < 0)
    {
      v22 = *v22;
    }

    std::string::append(&v45, v22);
    v19 += 8;
  }

  while (v19);
  std::string::append(&v45, "]");
  if (*(a3 + 47) && (v48.var0 = "interleave", v48.var1 = 10, InherentAttr = mlir::Operation::getInherentAttr(a3, v48), (v24 & 1) != 0))
  {
    v25 = InherentAttr != 0;
  }

  else
  {
    v49.var0 = "interleave";
    v49.var1 = 10;
    v25 = mlir::DictionaryAttr::contains((a3 + 56), v49);
  }

  v26 = MEMORY[0x1E696AEC0];
  (*(*a2 + 4))(&__dst, a2, NextResultAtOffset);
  v27 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  v28 = __dst.__r_.__value_.__r.__words[0];
  v29 = SHIBYTE(v45.__r_.__value_.__r.__words[2]);
  v30 = v45.__r_.__value_.__r.__words[0];
  v41 = 0;
  LOBYTE(v40) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v40, &__p);
  v31 = "NO";
  if (v25)
  {
    v31 = "YES";
  }

  v32 = &v45;
  if (v29 < 0)
  {
    v32 = v30;
  }

  p_dst = &__dst;
  if (v27 < 0)
  {
    p_dst = v28;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v35 = [v26 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph concatTensors:%s\n               dimension:%d\n              interleave:%s\n                    name:%s]\n    ", p_dst, v32, v39, v31, p_p];;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v41 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_45:
    operator delete(v40);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_46;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v41 < 0)
  {
    goto LABEL_45;
  }

LABEL_38:
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

LABEL_46:
  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_39:
  v36 = [a2[27] stringByAppendingString:v35];
  v37 = a2[27];
  a2[27] = v36;

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (v46[0])
  {
    operator delete(v46[0]);
  }

  operator delete(0);
  return this;
}

void sub_1E07FFD40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (v41)
  {
    operator delete(v41);
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!__p)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

EmitterObjC::PadOpHandler *EmitterObjC::PadOpHandler::PadOpHandler(EmitterObjC::PadOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  v83[6] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B50A98;
  v72 = a3;
  v5 = *(*(a3 + 9) + 24);
  if (*(a3 + 9))
  {
    v6 = a3 - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  v8 = *(a3 + 9);
  v9 = *(v8 + 56);
  v10 = *(v8 + 88);
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v72);
  v79 = &v81;
  v80 = 0x400000000;
  mlir::matchConstantWithIntVector<long long>(v9, &v79);
  if ((mlir::matchConstantWithIntVector<long long>(v9, &v79) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v80 <= 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  std::to_string(&v82, *v79);
  v12 = std::string::insert(&v82, 0, "@[@");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v71.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v71.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  std::to_string(&v82, v79[1]);
  v14 = std::string::insert(&v82, 0, "@[@");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v70.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v70.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
    if (v80 < 3)
    {
      goto LABEL_35;
    }

    goto LABEL_12;
  }

  if (v80 >= 3)
  {
LABEL_12:
    v16 = 0;
    while (1)
    {
      std::to_string(&v69, v79[v16 + 2]);
      v18 = std::string::insert(&v69, 0, ", @");
      v19 = *&v18->__r_.__value_.__l.__data_;
      v82.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&v82.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v82;
      }

      else
      {
        v20 = v82.__r_.__value_.__r.__words[0];
      }

      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v82.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v82.__r_.__value_.__l.__size_;
      }

      std::string::append(&v71, v20, size);
      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
        if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_34:
          operator delete(v69.__r_.__value_.__l.__data_);
        }
      }

      else if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_34;
      }

      std::to_string(&v69, v79[v16 + 3]);
      v22 = std::string::insert(&v69, 0, ", @");
      v23 = *&v22->__r_.__value_.__l.__data_;
      v82.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
      *&v82.__r_.__value_.__l.__data_ = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v82;
      }

      else
      {
        v24 = v82.__r_.__value_.__r.__words[0];
      }

      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v25 = v82.__r_.__value_.__l.__size_;
      }

      std::string::append(&v70, v24, v25);
      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_31:
        operator delete(v69.__r_.__value_.__l.__data_);
        v26 = v16 + 4;
        v16 += 2;
        if (v26 >= v80)
        {
          break;
        }
      }

      else
      {
        if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_31;
        }

LABEL_14:
        v17 = v16 + 4;
        v16 += 2;
        if (v17 >= v80)
        {
          break;
        }
      }
    }
  }

LABEL_35:
  std::string::append(&v71, "]");
  std::string::append(&v70, "]");
  memset(&v69, 0, sizeof(v69));
  if (*(*mlir::getElementTypeOrSelf(v10) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    *&v82.__r_.__value_.__l.__data_ = 0uLL;
    v78[0] = &v82;
    __p[0] = v10;
    DefiningOp = mlir::Value::getDefiningOp(__p);
    if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v78, DefiningOp))
    {
      SingleInt = mlir::getSingleIntValue<long long>(v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
      if (v36)
      {
LABEL_61:
        std::to_string(&v82, SingleInt);
        goto LABEL_132;
      }
    }

    else
    {
      SingleInt = 0;
    }

    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    goto LABEL_61;
  }

  v73 = 0uLL;
  __p[0] = &v73;
  v82.__r_.__value_.__r.__words[0] = v10;
  v27 = mlir::Value::getDefiningOp(&v82);
  if (!v27 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(__p, v27) || (v76 = v73, v75[0] = mlir::CallOpInterface::getArgOperands(&v76), v75[1] = v28, ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v75), mlir::ShapedType::getNumElements(ArgAttrsAttr, v30) != 1) || (v82.__r_.__value_.__r.__words[0] = mlir::CallOpInterface::getArgOperands(&v76), v82.__r_.__value_.__l.__size_ = v31, v32 = *(*mlir::ElementsAttr::isSplat(&v82) + 136), v32 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id) && v32 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v32 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    _D8 = 0.0;
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    goto LABEL_131;
  }

  v74 = 0.0;
  *__p = v76;
  Type = mlir::ElementsAttr::getType(__p);
  v38 = Type;
  if (Type)
  {
    v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  else
  {
    v39 = 0;
  }

  v78[0] = v38;
  v78[1] = v39;
  isSplat = mlir::ElementsAttr::isSplat(v78);
  v40 = mlir::ElementsAttr::isSplat(__p);
  ElementsAttrRawData = mlir::getElementsAttrRawData(__p[0]);
  v43 = v42;
  NumElements = mlir::ElementsAttr::getNumElements(__p[0], __p[1]);
  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    v46 = NumElements - 1;
    if (NumElements >= 1)
    {
      if (v40)
      {
        v46 = 0;
      }

      LOBYTE(v45) = ElementsAttrRawData[v46];
      _D8 = v45;
      goto LABEL_131;
    }
  }

  else if (mlir::Type::isInteger(&isSplat, 8))
  {
    v47 = NumElements - 1;
    if (NumElements >= 1)
    {
      if (v40)
      {
        v47 = 0;
      }

      _D8 = ElementsAttrRawData[v47];
      goto LABEL_131;
    }
  }

  else if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    v49 = NumElements - 1;
    if (NumElements >= 1)
    {
      if (v40)
      {
        v49 = 0;
      }

      LOWORD(v48) = *&ElementsAttrRawData[2 * v49];
      _D8 = v48;
      goto LABEL_131;
    }
  }

  else if (mlir::Type::isInteger(&isSplat, 16))
  {
    v51 = NumElements - 1;
    if (NumElements >= 1)
    {
      if (v40)
      {
        v51 = 0;
      }

      v50.i16[0] = *&ElementsAttrRawData[2 * v51];
      _D8 = vmovl_s16(v50).i32[0];
      goto LABEL_131;
    }
  }

  else if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    v53 = NumElements - 1;
    if (NumElements >= 1)
    {
      if (v40)
      {
        v53 = 0;
      }

      LODWORD(v52) = *&ElementsAttrRawData[4 * v53];
      _D8 = v52;
      goto LABEL_131;
    }
  }

  else if (mlir::Type::isInteger(&isSplat, 32))
  {
    v54 = NumElements - 1;
    if (NumElements >= 1)
    {
      if (v40)
      {
        v54 = 0;
      }

      _D8 = *&ElementsAttrRawData[4 * v54];
      goto LABEL_131;
    }
  }

  else if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    v55 = NumElements - 1;
    if (NumElements >= 1)
    {
      if (v40)
      {
        v55 = 0;
      }

      _D8 = *&ElementsAttrRawData[8 * v55];
      goto LABEL_131;
    }
  }

  else if (mlir::Type::isInteger(&isSplat, 64))
  {
    v56 = NumElements - 1;
    if (NumElements >= 1)
    {
      if (v40)
      {
        v56 = 0;
      }

      _D8 = *&ElementsAttrRawData[8 * v56];
      goto LABEL_131;
    }
  }

  else if (mlir::Type::isF16(&isSplat))
  {
    v57 = NumElements - 1;
    if (NumElements >= 1)
    {
      if (v40)
      {
        v57 = 0;
      }

      _H0 = *&ElementsAttrRawData[2 * v57];
      __asm { FCVT            D8, H0 }

      goto LABEL_131;
    }
  }

  else if (mlir::Type::isF32(&isSplat))
  {
    if (NumElements >= 1)
    {
      if (v40)
      {
        _D8 = *ElementsAttrRawData;
      }

      else
      {
        _D8 = *&ElementsAttrRawData[4 * NumElements - 4];
      }

      goto LABEL_131;
    }
  }

  else if (mlir::Type::isF64(&isSplat))
  {
    if (NumElements >= 1)
    {
      if (v40)
      {
        _D8 = *ElementsAttrRawData;
      }

      else
      {
        _D8 = *&ElementsAttrRawData[8 * NumElements - 8];
      }

      goto LABEL_131;
    }
  }

  else
  {
    if (!mlir::Type::isBF16(&isSplat))
    {
      if (mlir::Type::isInteger(&isSplat, 1))
      {
        if (v40)
        {
          v64 = 1;
        }

        else
        {
          v64 = NumElements;
        }

        llvm::SmallVector<char,40u>::SmallVector(&v82, v64);
        mlir::detail::unpackBooleanData(ElementsAttrRawData, v43, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
        if (NumElements < 1)
        {
          _D8 = 0.0;
        }

        else
        {
          v65 = (v82.__r_.__value_.__r.__words[0] + NumElements - 1);
          if (v40)
          {
            v65 = v82.__r_.__value_.__r.__words[0];
          }

          _D8 = *v65;
        }

        if (v82.__r_.__value_.__l.__data_ != v83)
        {
          free(v82.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        mlir::Type::getIntOrFloatBitWidth(&isSplat);
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
        mlir::detail::unpackQuantizedData<double>(ElementsAttrRawData, v43, &v74, NumElements, IntOrFloatBitWidth);
        _D8 = v74;
      }

      goto LABEL_131;
    }

    v63 = NumElements - 1;
    if (NumElements >= 1)
    {
      if (v40)
      {
        v63 = 0;
      }

      _D8 = COERCE_FLOAT(*&ElementsAttrRawData[2 * v63] << 16);
      goto LABEL_131;
    }
  }

  _D8 = 0.0;
LABEL_131:
  std::to_string(&v82, _D8);
LABEL_132:
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  v69 = v82;
  (*(*a2 + 32))(&v82, a2, NextResultAtOffset);
  v78[0] = v5;
  __p[0] = v78;
  if (*(std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, v78, &std::piecewise_construct, __p) + 47) < 0)
  {
    if (StorageType <= 1)
    {
      goto LABEL_136;
    }
  }

  else if (StorageType <= 1)
  {
LABEL_136:
    if (!StorageType)
    {
      operator new();
    }

    if (StorageType == 1)
    {
      operator new();
    }

    goto LABEL_159;
  }

  if (StorageType == 2)
  {
    operator new();
  }

  if (StorageType == 3)
  {
    operator new();
  }

LABEL_159:
  MTLReportFailureTypeEnabled();
  result = MTLReportFailure();
  __break(1u);
  return result;
}

void sub_1E0800B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  v54 = *(v52 - 192);
  if (v54 != (v52 - 168))
  {
    free(v54);
  }

  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  v55 = *(v52 - 240);
  if (v55 == a19)
  {
    _Unwind_Resume(exception_object);
  }

  free(v55);
  _Unwind_Resume(exception_object);
}

EmitterObjC::SqueezeOpHandler *EmitterObjC::SqueezeOpHandler::SqueezeOpHandler(EmitterObjC::SqueezeOpHandler *this, id *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B50AB0;
  v40 = a3;
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v40, 0);
  v7 = *(*(v40 + 9) + 32 * ODSOperandIndexAndLength + 24);
  if (*(v40 + 9))
  {
    v8 = v40 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  v10 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v40, 1u);
  if ((*(v40 + 46) & 0x80) == 0)
  {
    v11 = 0;
    v12 = v10;
    if (HIDWORD(v10) + v10 == v10)
    {
      goto LABEL_6;
    }

LABEL_8:
    v13 = *(v11 + 32 * v12 + 24);
    goto LABEL_9;
  }

  v11 = *(v40 + 9);
  v12 = v10;
  if (HIDWORD(v10) + v10 != v10)
  {
    goto LABEL_8;
  }

LABEL_6:
  v13 = 0;
LABEL_9:
  if ((*(a3 + 46) & 0x80) != 0 && *(a3 + 17) == 1)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = v38;
    (*(*a2 + 4))(v38, a2, NextResultAtOffset);
    if (v39 < 0)
    {
      v15 = v38[0];
    }

    v37 = v7;
    __p.__r_.__value_.__r.__words[0] = &v37;
    v16 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v37, &std::piecewise_construct, &__p);
    v17 = v16 + 3;
    if (*(v16 + 47) < 0)
    {
      v17 = *v17;
    }

    v35 = 0;
    LOBYTE(v34) = 0;
    EmitObjC::emitTensorName(a2, NextResultAtOffset, &v34, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v19 = [v14 stringWithFormat:@"\n        MPSGraphTensor *%s = \n        [graph squeezeTensor:%s\n                        name:%s]\n        ", v15, v17, p_p];;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    v27 = v34;
  }

  else
  {
    v20 = MEMORY[0x1E696AEC0];
    v21 = v38;
    (*(*a2 + 4))(v38, a2, NextResultAtOffset);
    if (v39 < 0)
    {
      v21 = v38[0];
    }

    v37 = v7;
    __p.__r_.__value_.__r.__words[0] = &v37;
    v22 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v37, &std::piecewise_construct, &__p);
    v23 = v22 + 3;
    if (*(v22 + 47) < 0)
    {
      v23 = *v23;
    }

    v33 = v13;
    __p.__r_.__value_.__r.__words[0] = &v33;
    v24 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v33, &std::piecewise_construct, &__p);
    v25 = v24 + 3;
    if (*(v24 + 47) < 0)
    {
      v25 = *v25;
    }

    v32 = 0;
    LOBYTE(v31) = 0;
    EmitObjC::emitTensorName(a2, NextResultAtOffset, &v31, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &__p;
    }

    else
    {
      v26 = __p.__r_.__value_.__r.__words[0];
    }

    v19 = [v20 stringWithFormat:@"\n        MPSGraphTensor *%s = \n        [graph squeezeTensor:%s\n                  axesTensor:%s\n                        name:%s]\n        ", v21, v23, v25, v26];;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v32 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    v27 = v31;
  }

  operator delete(v27);
LABEL_38:
  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  v28 = [a2[27] stringByAppendingString:v19];
  v29 = a2[27];
  a2[27] = v28;

  return this;
}

void sub_1E080105C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, _Unwind_Exception *exception_objecta, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(exception_objecta);
  }

  if (*(v31 - 81) < 0)
  {
    operator delete(*(v31 - 104));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

EmitterObjC::CropOpHandler *EmitterObjC::CropOpHandler::CropOpHandler(EmitterObjC::CropOpHandler *this, id *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B50AC8;
  v6 = *(*(a3 + 9) + 24);
  if (*(a3 + 9))
  {
    v7 = a3 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  v9 = *(a3 + 9);
  v10 = v9[11];
  v11 = v9[15];
  EmitterObjC::getConstantAxes(v57, v9[7]);
  v12 = v57[0];
  v45 = v57[0];
  if (v57[1] - v57[0] != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v13 = *v12;
  EmitterObjC::getConstantAxes(v56, v10);
  v14 = v56[0];
  v44 = v56[0];
  if (v56[1] - v56[0] != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v15 = *v14;
  EmitterObjC::getConstantAxes(v55, v11);
  v16 = v55[0];
  v43 = v55[0];
  if (v55[1] - v55[0] != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v17 = *v16;
  v18 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
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
  if (mlir::CallOpInterface::getArgOperands(&v52))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v52);
    if (!v21)
    {
LABEL_15:
      v23 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v23)
      {
        v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v23 + 8);
      }

      else
      {
        v24 = 0;
      }

      v52 = v23;
      v53 = v24;
      v42 = v17;
      v32 = v15;
      v33 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v52) + 8 * v13);
      v34 = MEMORY[0x1E696AEC0];
      v35 = &v52;
      (*(*a2 + 4))(&v52, a2, NextResultAtOffset);
      if (v54 < 0)
      {
        v35 = v52;
      }

      v51 = v6;
      __p.__r_.__value_.__r.__words[0] = &v51;
      v36 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v51, &std::piecewise_construct, &__p);
      v37 = v36 + 3;
      if (*(v36 + 47) < 0)
      {
        v37 = *v37;
      }

      v49 = 0;
      LOBYTE(v48) = 0;
      EmitObjC::emitTensorName(a2, NextResultAtOffset, &v48, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v30 = [v34 stringWithFormat:@"\n        MPSGraphTensor *%s = \n        [graph sliceTensor:%s\n                 dimension:%d\n                     start:%d\n                    length:%lld\n                      name:%s]\n        ", v35, v37, v13, v32, v33 - (v42 + v32), p_p];;
      v31 = v45;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((v49 & 0x80000000) == 0)
        {
          goto LABEL_40;
        }
      }

      else if ((v49 & 0x80000000) == 0)
      {
        goto LABEL_40;
      }

      operator delete(v48);
      if ((v54 & 0x80000000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    v22 = 8 * v21;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v22 -= 8;
      if (!v22)
      {
        goto LABEL_15;
      }
    }
  }

  v25 = MEMORY[0x1E696AEC0];
  v26 = &v52;
  (*(*a2 + 4))(&v52, a2, NextResultAtOffset);
  if (v54 < 0)
  {
    v26 = v52;
  }

  v51 = v6;
  __p.__r_.__value_.__r.__words[0] = &v51;
  v27 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v51, &std::piecewise_construct, &__p);
  v28 = v27 + 3;
  if (*(v27 + 47) < 0)
  {
    v28 = *v28;
  }

  v47 = 0;
  LOBYTE(v46) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v46, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &__p;
  }

  else
  {
    v29 = __p.__r_.__value_.__r.__words[0];
  }

  v30 = [v25 stringWithFormat:@"\n        MPSGraphTensor *%s = \n        [graph cropTensor:%s\n                dimension:%d\n            amount_before:%d\n             amount_after:%d\n                     name:%s]\n        ", v26, v28, v13, v15, v17, v29];;
  v31 = v45;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v47 < 0)
    {
      goto LABEL_28;
    }
  }

  else if (v47 < 0)
  {
LABEL_28:
    operator delete(v46);
    if (v54 < 0)
    {
      goto LABEL_41;
    }

    goto LABEL_42;
  }

LABEL_40:
  if (v54 < 0)
  {
LABEL_41:
    operator delete(v52);
  }

LABEL_42:
  v39 = [a2[27] stringByAppendingString:v30];
  v40 = a2[27];
  a2[27] = v39;

  operator delete(v43);
  operator delete(v44);
  operator delete(v31);
  return this;
}

void sub_1E0801594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, void *a17, void *a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (__p)
  {
    operator delete(__p);
    if (!a17)
    {
LABEL_3:
      if (!a18)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!a17)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  if (!a18)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a18);
  _Unwind_Resume(exception_object);
}

EmitterObjC::SliceOpHandler *EmitterObjC::SliceOpHandler::SliceOpHandler(EmitterObjC::SliceOpHandler *this, id *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B50AE0;
  v6 = *(*(a3 + 9) + 24);
  if (*(a3 + 9))
  {
    v7 = a3 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  v9 = *(*(a3 + 9) + 56);
  v36 = 0;
  v37 = 0;
  v39 = &v36;
  __p.__r_.__value_.__r.__words[0] = v9;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v39, DefiningOp) & 1) != 0 && (SingleInt = mlir::getSingleIntValue<long long>(v36, v37), (v12 & 1) != 0))
  {
    v13 = SingleInt;
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v13 = -1;
  }

  v14 = *(*(a3 + 9) + 88);
  v36 = 0;
  v37 = 0;
  v39 = &v36;
  __p.__r_.__value_.__r.__words[0] = v14;
  v15 = mlir::Value::getDefiningOp(&__p);
  if (v15 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v39, v15) & 1) != 0 && (v16 = mlir::getSingleIntValue<long long>(v36, v37), (v17 & 1) != 0))
  {
    v18 = v16;
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v18 = -1;
  }

  v19 = *(*(a3 + 9) + 120);
  v36 = 0;
  v37 = 0;
  v39 = &v36;
  __p.__r_.__value_.__r.__words[0] = v19;
  v20 = mlir::Value::getDefiningOp(&__p);
  if (v20 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v39, v20) & 1) != 0 && (v21 = mlir::getSingleIntValue<long long>(v36, v37), (v22 & 1) != 0))
  {
    v23 = v21;
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v23 = -1;
  }

  v24 = MEMORY[0x1E696AEC0];
  v25 = &v36;
  (*(*a2 + 4))(&v36, a2, NextResultAtOffset);
  if (v38 < 0)
  {
    v25 = v36;
  }

  v39 = v6;
  __p.__r_.__value_.__r.__words[0] = &v39;
  v26 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v39, &std::piecewise_construct, &__p);
  v27 = v26 + 3;
  if (*(v26 + 47) < 0)
  {
    v27 = *v27;
  }

  v34 = 0;
  LOBYTE(v33) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v33, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v29 = [v24 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph sliceTensor:%s\n             dimension:%lld\n                 start:%lld\n                length:%lld\n                  name:%s]\n    ", v25, v27, v13, v18, v23, p_p];;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_37:
    operator delete(v33);
    if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    operator delete(v36);
    goto LABEL_35;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v34 < 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  if (v38 < 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  v30 = [a2[27] stringByAppendingString:v29];
  v31 = a2[27];
  a2[27] = v30;

  return this;
}

void sub_1E0801A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a27 < 0)
  {
    operator delete(a22);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if (a33 < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if (a33 < 0)
  {
LABEL_4:
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  _Unwind_Resume(exception_object);
}

EmitterObjC::ReinterpretCastOpHandler *EmitterObjC::ReinterpretCastOpHandler::ReinterpretCastOpHandler(EmitterObjC::ReinterpretCastOpHandler *this, id *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B50AF8;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReinterpretCastOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  v7 = *(v5 + 9);
  v8 = v5 - 16;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  MPSDataType = getMPSDataType((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
  v12 = MEMORY[0x1E696AEC0];
  v13 = v30;
  (*(*a2 + 4))(v30, a2, NextResultAtOffset);
  if (v31 < 0)
  {
    v13 = v30[0];
  }

  v29 = v6;
  v27[0] = &v29;
  v14 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v29, &std::piecewise_construct, v27);
  v15 = v14 + 3;
  if (*(v14 + 47) < 0)
  {
    v15 = *v15;
  }

  EmitterObjC::emitMPSDataType(v27, MPSDataType);
  v16 = v28;
  v17 = v27[0];
  v25 = 0;
  LOBYTE(v24) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v24, &__p);
  v18 = v27;
  if (v16 < 0)
  {
    v18 = v17;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v20 = [v12 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph reinterpretCastTensor:%s\n                          toType:%s\n                            name:%s]\n    ", v13, v15, v18, p_p];;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v25 & 0x80000000) == 0)
    {
LABEL_18:
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_23:
      operator delete(v27[0]);
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

LABEL_24:
      operator delete(v30[0]);
      goto LABEL_20;
    }
  }

  else if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  operator delete(v24);
  if (v28 < 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  if (v31 < 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  v21 = [a2[27] stringByAppendingString:v20];
  v22 = a2[27];
  a2[27] = v21;

  return this;
}

void sub_1E0801CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a19 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a31 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a19 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a14);
  if ((a31 & 0x80000000) == 0)
  {
LABEL_4:
    if (*(v31 - 81) < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a26);
  if (*(v31 - 81) < 0)
  {
LABEL_5:
    operator delete(*(v31 - 104));
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  _Unwind_Resume(exception_object);
}

EmitterObjC::GatherOpHandler *EmitterObjC::GatherOpHandler::GatherOpHandler(EmitterObjC::GatherOpHandler *this, id *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B50B10;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::GatherOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v35 = v5;
  v6 = *(v5 + 9);
  v7 = v6[7];
  v8 = v6[3];
  v9 = v6[11];
  v32 = 0;
  v33 = 0;
  v36 = &v32;
  __p.__r_.__value_.__r.__words[0] = v9;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v36, DefiningOp) & 1) != 0 && (SingleInt = mlir::getSingleIntValue<long long>(v32, v33), (v12 & 1) != 0))
  {
    v13 = SingleInt;
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v13 = -1;
  }

  Count = mlir::pdl_interp::CheckOperandCountOp::getCount(&v35);
  if (*(v35 + 9))
  {
    v15 = v35 - 16;
  }

  else
  {
    v15 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
  getMPSDataType((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
  v17 = MEMORY[0x1E696AEC0];
  v18 = &v32;
  (*(*a2 + 4))(&v32, a2, NextResultAtOffset);
  if (v34 < 0)
  {
    v18 = v32;
  }

  v36 = v8;
  __p.__r_.__value_.__r.__words[0] = &v36;
  v19 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v36, &std::piecewise_construct, &__p);
  v20 = v19 + 3;
  if (*(v19 + 47) < 0)
  {
    v20 = *v20;
  }

  v31 = v7;
  __p.__r_.__value_.__r.__words[0] = &v31;
  v21 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v31, &std::piecewise_construct, &__p);
  v22 = v21 + 3;
  if (*(v21 + 47) < 0)
  {
    v22 = *v22;
  }

  v29 = 0;
  LOBYTE(v28) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v28, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v24 = [v17 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph gatherWithUpdatesTensor:%s\n                     indicesTensor:%s\n                              axis:%lld\n                   batchDimensions:%d\n                            name:%s]\n    ", v18, v20, v22, v13, Count, p_p];;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_28:
    operator delete(v28);
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_29:
    operator delete(v32);
    goto LABEL_26;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v29 < 0)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (v34 < 0)
  {
    goto LABEL_29;
  }

LABEL_26:
  v25 = [a2[27] stringByAppendingString:v24];
  v26 = a2[27];
  a2[27] = v25;

  return this;
}

void sub_1E0802054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a26 < 0)
  {
    operator delete(a21);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      if (a33 < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  if (a33 < 0)
  {
LABEL_4:
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  _Unwind_Resume(exception_object);
}

EmitterObjC::SwishOpHandler *EmitterObjC::SwishOpHandler::SwishOpHandler(EmitterObjC::SwishOpHandler *this, id *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B50B28;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SwishOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  v7 = *(v5 + 9);
  v8 = v5 - 16;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  (*(*a2 + 4))(&v37, a2, NextResultAtOffset);
  v11 = std::string::append(&v37, "_swish");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v39 = v11->__r_.__value_.__r.__words[2];
  v38 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  v13 = MEMORY[0x1E696AEC0];
  if (v39 >= 0)
  {
    v14 = &v38;
  }

  else
  {
    v14 = v38;
  }

  v36 = v6;
  v37.__r_.__value_.__r.__words[0] = &v36;
  v15 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v36, &std::piecewise_construct, &v37);
  v16 = v15 + 3;
  if (*(v15 + 47) < 0)
  {
    v16 = *v16;
  }

  std::operator+<char>();
  v17 = std::string::append(&v35, "");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = &v37;
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v19 = v37.__r_.__value_.__r.__words[0];
  }

  v20 = [v13 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph sigmoidWithTensor:%s\n                        name:%s]\n        ", v14, v16, v19];;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }
  }

  else if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  operator delete(v35.__r_.__value_.__l.__data_);
LABEL_18:
  v21 = [a2[27] stringByAppendingString:v20];
  v22 = a2[27];
  a2[27] = v21;

  v23 = MEMORY[0x1E696AEC0];
  v24 = &v37;
  (*(*a2 + 4))(&v37, a2, NextResultAtOffset);
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v24 = v37.__r_.__value_.__r.__words[0];
  }

  if (v39 >= 0)
  {
    v25 = &v38;
  }

  else
  {
    v25 = v38;
  }

  v36 = v6;
  v35.__r_.__value_.__r.__words[0] = &v36;
  v26 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v36, &std::piecewise_construct, &v35);
  v27 = v26 + 3;
  if (*(v26 + 47) < 0)
  {
    v27 = *v27;
  }

  v34 = 0;
  LOBYTE(__p) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &__p, &v35);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &v35;
  }

  else
  {
    v28 = v35.__r_.__value_.__r.__words[0];
  }

  v29 = [v23 stringWithFormat:@"\n        MPSGraphTensor *%s = \n            [graph multiplicationWithPrimaryTensor:%s\n                                   secondaryTensor:%s\n                                              name:%s]\n        ", v24, v25, v27, v28];;
  if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_37:
    operator delete(__p);
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_38;
  }

  operator delete(v35.__r_.__value_.__l.__data_);
  if (v34 < 0)
  {
    goto LABEL_37;
  }

LABEL_30:
  if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_31;
  }

LABEL_38:
  operator delete(v37.__r_.__value_.__l.__data_);
LABEL_31:
  v30 = [a2[27] stringByAppendingString:v29];
  v31 = a2[27];
  a2[27] = v30;

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38);
  }

  return this;
}

void sub_1E080244C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  _Unwind_Resume(a1);
}

void sub_1E0802524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    JUMPOUT(0x1E0802518);
  }

  JUMPOUT(0x1E080251CLL);
}

EmitterObjC::VariableFromTensorOpHandler *EmitterObjC::VariableFromTensorOpHandler::VariableFromTensorOpHandler(EmitterObjC::VariableFromTensorOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B50B40;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::VariableFromTensorOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  v7 = *(v5 + 9);
  v8 = v5 - 16;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  v11 = MEMORY[0x1E696AEC0];
  v12 = __p;
  (*(*a2 + 32))(__p, a2, NextResultAtOffset);
  if (v21 < 0)
  {
    v12 = __p[0];
  }

  v19 = v6;
  v22 = &v19;
  v13 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v19, &std::piecewise_construct, &v22);
  v14 = v13 + 3;
  if (*(v13 + 47) < 0)
  {
    v14 = *v14;
  }

  v15 = [v11 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph  varFromTensorWithTensor:%s\n                               name:%s]\n    ", v12, v14, "nil"];;
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  **(a2 + 39) = 1;
  v16 = [*(a2 + 27) stringByAppendingString:v15];
  v17 = *(a2 + 27);
  *(a2 + 27) = v16;

  return this;
}

void sub_1E08026D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

EmitterObjC::TileOpHandler *EmitterObjC::TileOpHandler::TileOpHandler(EmitterObjC::TileOpHandler *this, id *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B50B58;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::TileOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  v7 = *(v5 + 9);
  v8 = v5 - 16;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  v35 = v6;
  v11 = getMPSShapeFromMLIR(v6);
  v36 = NextResultAtOffset;
  v12 = getMPSShapeFromMLIR(NextResultAtOffset);
  *(&v40.__r_.__value_.__s + 23) = 3;
  LODWORD(v40.__r_.__value_.__l.__data_) = 4217664;
  if ([v11 count])
  {
    v13 = [v11 objectAtIndexedSubscript:0];
    v14 = [v13 integerValue];

    v15 = [v12 objectAtIndexedSubscript:0];
    v16 = [v15 integerValue];

    v17 = [MEMORY[0x1E696AD98] numberWithInteger:v16 / v14];
    v18 = [v17 stringValue];

    std::string::append(&v40, [v18 UTF8String]);
    for (i = 1; [v11 count] > i; ++i)
    {
      std::string::append(&v40, ", @");
      v20 = [v11 objectAtIndexedSubscript:i];
      v21 = [v20 integerValue];

      v22 = [v12 objectAtIndexedSubscript:i];
      v23 = [v22 integerValue];

      v24 = [MEMORY[0x1E696AD98] numberWithInteger:v23 / v21];
      v25 = [v24 stringValue];

      std::string::append(&v40, [v25 UTF8String]);
    }
  }

  std::string::append(&v40, "]");
  v26 = MEMORY[0x1E696AEC0];
  v27 = __p;
  (*(*a2 + 4))(__p, a2, v36);
  if (v39 < 0)
  {
    v27 = __p[0];
  }

  v37 = v35;
  v41 = &v37;
  v28 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v37, &std::piecewise_construct, &v41);
  v29 = v28 + 3;
  if (*(v28 + 47) < 0)
  {
    v29 = *v29;
  }

  v30 = &v40;
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v30 = v40.__r_.__value_.__r.__words[0];
  }

  v31 = [v26 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph  tileTensor:%s\n\t    withMultiplier:%s\n\t\t\t\t  name:%s]\n    ", v27, v29, v30, "nil"];;
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  v32 = [a2[27] stringByAppendingString:v31];
  v33 = a2[27];
  a2[27] = v32;

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1E0802A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id *GPU::FFTOpHandler::FFTOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4) = &unk_1F5B50CD8;
  v14 = a3;
  Layout = mlir::mps::SampleGridOp::getLayout(&v14);
  if (Layout == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = Layout == 1;
  }

  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v14);
  v9 = objc_alloc(MEMORY[0x1E6974710]);
  v10 = [*(this[2] + 6) metalDevice];
  v11 = [v9 initWithDevice:v10 axesMask:0 scale:v7 scalingMode:InferredResultTypes inverse:1.0];
  v12 = this[1];
  this[1] = v11;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  return this;
}

void GPU::FFTOpHandler::encodeNDArrayOp(GPU::FFTOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v62[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(this + 3);
  v6 = *(*(v5 + 72) + 24);
  v55 = v4;
  v56 = *(this + 1);
  v57 = [(NSArray *)v4 objectAtIndexedSubscript:0];
  StaticType = GPURegionRuntime::getStaticType(*(this + 2), v6);
  v8 = StaticType;
  if (StaticType)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    v9 = 0;
  }

  __p = v8;
  v60 = v9;
  mlir::CallableOpInterface::getArgAttrsAttr(&__p);
  v11 = v10;
  v12 = *(*(v5 + 72) + 56);
  v53 = v6;
  if (v12)
  {
    GPURegionRuntime::waitAndReadIntTensorData(*(this + 2), a2, v12, &__p);
    v13 = v60;
  }

  else
  {
    __p = 0;
    v60 = 0;
    v61 = 0;
    v13 = 0;
    if (v10)
    {
      v19 = 0;
      do
      {
        if (v13 < v61)
        {
          *v13 = v19;
          v13 += 8;
        }

        else
        {
          v20 = __p;
          v21 = v13 - __p;
          v22 = (v13 - __p) >> 3;
          v23 = v22 + 1;
          if ((v22 + 1) >> 61)
          {
            std::vector<long>::__throw_length_error[abi:ne200100]();
          }

          v24 = v61 - __p;
          if ((v61 - __p) >> 2 > v23)
          {
            v23 = v24 >> 2;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFF8)
          {
            v25 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            if (!(v25 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v26 = v22;
          v27 = (8 * v22);
          v28 = &v27[-v26];
          *v27 = v19;
          v13 = (v27 + 1);
          memcpy(v28, v20, v21);
          __p = v28;
          v60 = v13;
          v61 = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        v60 = v13;
        ++v19;
      }

      while (v11 != v19);
    }
  }

  if (__p == v13)
  {
    v17 = 0;
    v15 = v56;
    v16 = v57;
    goto LABEL_33;
  }

  v14 = v13 - __p - 8;
  v15 = v56;
  v16 = v57;
  if (v14 > 0x37)
  {
    v29 = (v14 >> 3) + 1;
    v30 = vdupq_n_s64(v11);
    v18 = (__p + 8 * (v29 & 0x3FFFFFFFFFFFFFF8));
    v31 = (__p + 32);
    v32 = 0uLL;
    v33.i64[0] = 0x100000001;
    v33.i64[1] = 0x100000001;
    v34 = v29 & 0x3FFFFFFFFFFFFFF8;
    v35 = 0uLL;
    do
    {
      v37 = v31[-2];
      v36 = v31[-1];
      v39 = *v31;
      v38 = v31[1];
      v31 += 4;
      v32 = vorrq_s8(vshlq_u32(v33, vuzp1q_s32(vaddq_s64(vandq_s8(vcgezq_s64(v37), v30), vmvnq_s8(v37)), vaddq_s64(vandq_s8(vcgezq_s64(v36), v30), vmvnq_s8(v36)))), v32);
      v35 = vorrq_s8(vshlq_u32(v33, vuzp1q_s32(vaddq_s64(vandq_s8(vcgezq_s64(v39), v30), vmvnq_s8(v39)), vaddq_s64(vandq_s8(vcgezq_s64(v38), v30), vmvnq_s8(v38)))), v35);
      v34 -= 8;
    }

    while (v34);
    v40 = vorrq_s8(v35, v32);
    *v40.i8 = vorr_s8(*v40.i8, *&vextq_s8(v40, v40, 8uLL));
    v17 = (v40.i32[0] | v40.i32[1]);
    if (v29 == (v29 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_33;
    }
  }

  else
  {
    LODWORD(v17) = 0;
    v18 = __p;
  }

  do
  {
    v41 = *v18++;
    v42 = ~v41;
    if (v41 >= 0)
    {
      v43 = v11;
    }

    else
    {
      v43 = 0;
    }

    v17 = (1 << (v43 + v42)) | v17;
  }

  while (v18 != v13);
LABEL_33:
  [v15 setAxesMask:{v17, v53}];
  if (*(this + 4))
  {
    mlir::Block::getParentOp(*(*(this + 3) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(this + 3) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v44 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(this + 4), *(this + 2));
    v45 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v46 = *(a2 + 1);
    v47 = [v16 mpsndarray];
    v48 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 4));
    [v15 encodeToMPSCommandEncoder:v45 commandBuffer:v46 sourceArrays:v44 resultState:0 destinationArray:v47 kernelDAGObject:v48];
  }

  else
  {
    v44 = (*(**(this + 2) + 48))(*(this + 2), v54, 0);
    v45 = [v16 mpsndarray];
    v49 = [v44 mpsndarray];
    v47 = v49;
    if ((!v45 || !v49) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(this + 4) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v48 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v50 = *(a2 + 1);
    v62[0] = v47;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:1];
    v52 = [v16 mpsndarray];
    [v15 encodeToMPSCommandEncoder:v48 commandBuffer:v50 sourceArrays:v51 resultState:0 destinationArray:v52 kernelDAGObject:0];
  }

  if (__p)
  {
    v60 = __p;
    operator delete(__p);
  }
}

void sub_1E0803154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char *GPU::FFTOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
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

id *GPU::FFT_RToCOpHandler::FFT_RToCOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4) = &unk_1F5B50D28;
  v14 = a3;
  Layout = mlir::mps::SampleGridOp::getLayout(&v14);
  if (Layout == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = Layout == 1;
  }

  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v14);
  v9 = objc_alloc(MEMORY[0x1E6974710]);
  v10 = [*(this[2] + 6) metalDevice];
  v11 = [v9 initWithDevice:v10 axesMask:0 scale:v7 scalingMode:InferredResultTypes inverse:1.0];
  v12 = this[1];
  this[1] = v11;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  return this;
}

void GPU::FFT_RToCOpHandler::encodeNDArrayOp(GPU::FFT_RToCOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v62[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(this + 3);
  v6 = *(*(v5 + 72) + 24);
  v55 = v4;
  v56 = *(this + 1);
  v57 = [(NSArray *)v4 objectAtIndexedSubscript:0];
  StaticType = GPURegionRuntime::getStaticType(*(this + 2), v6);
  v8 = StaticType;
  if (StaticType)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    v9 = 0;
  }

  __p = v8;
  v60 = v9;
  mlir::CallableOpInterface::getArgAttrsAttr(&__p);
  v11 = v10;
  v12 = *(*(v5 + 72) + 56);
  v53 = v6;
  if (v12)
  {
    GPURegionRuntime::waitAndReadIntTensorData(*(this + 2), a2, v12, &__p);
    v13 = v60;
  }

  else
  {
    __p = 0;
    v60 = 0;
    v61 = 0;
    v13 = 0;
    if (v10)
    {
      v19 = 0;
      do
      {
        if (v13 < v61)
        {
          *v13 = v19;
          v13 += 8;
        }

        else
        {
          v20 = __p;
          v21 = v13 - __p;
          v22 = (v13 - __p) >> 3;
          v23 = v22 + 1;
          if ((v22 + 1) >> 61)
          {
            std::vector<long>::__throw_length_error[abi:ne200100]();
          }

          v24 = v61 - __p;
          if ((v61 - __p) >> 2 > v23)
          {
            v23 = v24 >> 2;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFF8)
          {
            v25 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            if (!(v25 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v26 = v22;
          v27 = (8 * v22);
          v28 = &v27[-v26];
          *v27 = v19;
          v13 = (v27 + 1);
          memcpy(v28, v20, v21);
          __p = v28;
          v60 = v13;
          v61 = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        v60 = v13;
        ++v19;
      }

      while (v11 != v19);
    }
  }

  if (__p == v13)
  {
    v17 = 0;
    v15 = v56;
    v16 = v57;
    goto LABEL_33;
  }

  v14 = v13 - __p - 8;
  v15 = v56;
  v16 = v57;
  if (v14 > 0x37)
  {
    v29 = (v14 >> 3) + 1;
    v30 = vdupq_n_s64(v11);
    v18 = (__p + 8 * (v29 & 0x3FFFFFFFFFFFFFF8));
    v31 = (__p + 32);
    v32 = 0uLL;
    v33.i64[0] = 0x100000001;
    v33.i64[1] = 0x100000001;
    v34 = v29 & 0x3FFFFFFFFFFFFFF8;
    v35 = 0uLL;
    do
    {
      v37 = v31[-2];
      v36 = v31[-1];
      v39 = *v31;
      v38 = v31[1];
      v31 += 4;
      v32 = vorrq_s8(vshlq_u32(v33, vuzp1q_s32(vaddq_s64(vandq_s8(vcgezq_s64(v37), v30), vmvnq_s8(v37)), vaddq_s64(vandq_s8(vcgezq_s64(v36), v30), vmvnq_s8(v36)))), v32);
      v35 = vorrq_s8(vshlq_u32(v33, vuzp1q_s32(vaddq_s64(vandq_s8(vcgezq_s64(v39), v30), vmvnq_s8(v39)), vaddq_s64(vandq_s8(vcgezq_s64(v38), v30), vmvnq_s8(v38)))), v35);
      v34 -= 8;
    }

    while (v34);
    v40 = vorrq_s8(v35, v32);
    *v40.i8 = vorr_s8(*v40.i8, *&vextq_s8(v40, v40, 8uLL));
    v17 = (v40.i32[0] | v40.i32[1]);
    if (v29 == (v29 & 0x3FFFFFFFFFFFFFF8))
    {
      goto LABEL_33;
    }
  }

  else
  {
    LODWORD(v17) = 0;
    v18 = __p;
  }

  do
  {
    v41 = *v18++;
    v42 = ~v41;
    if (v41 >= 0)
    {
      v43 = v11;
    }

    else
    {
      v43 = 0;
    }

    v17 = (1 << (v43 + v42)) | v17;
  }

  while (v18 != v13);
LABEL_33:
  [v15 setAxesMask:{v17, v53}];
  if (*(this + 4))
  {
    mlir::Block::getParentOp(*(*(this + 3) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(this + 3) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v44 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(this + 4), *(this + 2));
    v45 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v46 = *(a2 + 1);
    v47 = [v16 mpsndarray];
    v48 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 4));
    [v15 encodeToMPSCommandEncoder:v45 commandBuffer:v46 sourceArrays:v44 resultState:0 destinationArray:v47 kernelDAGObject:v48];
  }

  else
  {
    v44 = (*(**(this + 2) + 48))(*(this + 2), v54, 0);
    v45 = [v16 mpsndarray];
    v49 = [v44 mpsndarray];
    v47 = v49;
    if ((!v45 || !v49) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(this + 4) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v48 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v50 = *(a2 + 1);
    v62[0] = v47;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:1];
    v52 = [v16 mpsndarray];
    [v15 encodeToMPSCommandEncoder:v48 commandBuffer:v50 sourceArrays:v51 resultState:0 destinationArray:v52 kernelDAGObject:0];
  }

  if (__p)
  {
    v60 = __p;
    operator delete(__p);
  }
}

void sub_1E08038C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char *GPU::FFT_RToCOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
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

id *GPU::FFT_CToROpHandler::FFT_CToROpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v6 = &unk_1F5B50D78;
  *(v6 + 16) = 0;
  *(v6 + 17) = 0;
  *(v6 + 15) = 0;
  v21 = a3;
  GateLayout = mlir::mps::LSTMOp::getGateLayout(&v21);
  if (GateLayout == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = GateLayout == 1;
  }

  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v21);
  v10 = objc_alloc(MEMORY[0x1E6974710]);
  v11 = [*(this[2] + 6) metalDevice];
  v12 = [v10 initWithDevice:v11 axesMask:0 scale:v8 scalingMode:InferredResultTypes inverse:1.0];
  v13 = this[1];
  this[1] = v12;

  v14 = objc_alloc(MEMORY[0x1E6974740]);
  v15 = [*(this[2] + 6) metalDevice];
  v16 = [v14 initWithDevice:v15];
  v17 = this[17];
  this[17] = v16;

  v18 = this[15];
  this[15] = 0;

  v19 = this[16];
  this[16] = 0;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  return this;
}

void GPU::FFT_CToROpHandler::encodeNDArrayOp(GPU::FFT_CToROpHandler *this, id *a2, NSArray *a3)
{
  v106[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(this + 3);
  v7 = *(*(v6 + 72) + 24);
  v92 = *(this + 1);
  v85 = v5;
  v88 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  StaticType = GPURegionRuntime::getStaticType(*(this + 2), v7);
  v9 = StaticType;
  if (StaticType)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    v10 = 0;
  }

  v102[0] = v9;
  v102[1] = v10;
  mlir::CallableOpInterface::getArgAttrsAttr(v102);
  v12 = v11;
  v13 = *(*(v6 + 72) + 56);
  v94 = this;
  v95 = v7;
  if (v13)
  {
    GPURegionRuntime::waitAndReadIntTensorData(*(this + 2), a2, v13, &v99);
    v14 = v100;
  }

  else
  {
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v14 = 0;
    if (v11)
    {
      v22 = 0;
      do
      {
        if (v14 < v101)
        {
          *v14 = v22;
          v14 += 8;
        }

        else
        {
          v23 = v99;
          v24 = v14 - v99;
          v25 = (v14 - v99) >> 3;
          v26 = v25 + 1;
          if ((v25 + 1) >> 61)
          {
            std::vector<long>::__throw_length_error[abi:ne200100]();
          }

          v27 = v101 - v99;
          if ((v101 - v99) >> 2 > v26)
          {
            v26 = v27 >> 2;
          }

          if (v27 >= 0x7FFFFFFFFFFFFFF8)
          {
            v28 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            if (!(v28 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v29 = (v14 - v99) >> 3;
          v30 = (8 * v25);
          v31 = (8 * v25 - 8 * v29);
          *v30 = v22;
          v14 = (v30 + 1);
          memcpy(v31, v23, v24);
          v99 = v31;
          v100 = v14;
          v101 = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        v100 = v14;
        ++v22;
      }

      while (v12 != v22);
    }
  }

  v15 = v12 - 1;
  v16 = v99;
  if (v99 == v14)
  {
    v17 = 0;
  }

  else
  {
    LODWORD(v17) = 0;
    do
    {
      v19 = *v16++;
      v18 = v19;
      if (v19 >= 0)
      {
        v20 = v12;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20 + ~v18;
      v17 = (1 << v21) | v17;
      if (v21 < v15)
      {
        v15 = v21;
      }
    }

    while (v16 != v14);
  }

  [v92 setAxesMask:v17];
  v90 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v93 = a2[1];
  v32 = (*(**(v94 + 2) + 48))(*(v94 + 2), v95, 0);
  v96 = [v32 mpsndarray];

  v33 = [v88 mpsndarray];
  v34 = v33;
  if (v96)
  {
    v35 = v33 == 0;
  }

  else
  {
    v35 = 1;
  }

  v91 = v33;
  if (v35 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v36 = [v34 descriptor];
  v37 = v36;
  if (v36)
  {
    objc_msgSend_getShapeVector(v36);
  }

  else
  {
    v98 = 0;
  }

  v38 = [v96 descriptor];
  v39 = v38;
  if (v38)
  {
    objc_msgSend_getShapeVector(v38);
  }

  else
  {
    v97 = 0;
  }

  v40 = v97;
  v41 = *(v94 + 15);
  if (!v41)
  {
    goto LABEL_51;
  }

  v42 = *(***(***([v41 graph] + 56) + 8) + 16);
  v44 = *v42;
  v43 = v42[1];
  if (v43 != v44)
  {
    if (((v43 - v44) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_96;
  }

  if (*(v97 + 8) == *v97 && !memcmp(0, *v97, 0))
  {
    v81 = *(***(***([*(v94 + 15) graph] + 56) + 24) + 16);
    v83 = *v81;
    v82 = v81[1];
    if (v82 != v83)
    {
      if (((v82 - v83) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v45 = *(v98 + 8) == *v98 && memcmp(0, *v98, 0) == 0;
    v40 = v97;
  }

  else
  {
    v45 = 0;
  }

  if (v45)
  {
    v89 = *(v94 + 15);
  }

  else
  {
LABEL_51:
    v46 = *(v40 + 8) - *v40;
    if (v46 != *(v98 + 8) - *v98 || !memcmp(*v40, *v98, *(v40 + 8) - *v40))
    {
      v89 = 0;
    }

    else
    {
      if (v15 < (v46 >> 3))
      {
        if ((v46 & 0x8000000000000000) == 0)
        {
          operator new();
        }

LABEL_96:
        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      v89 = 0;
    }
  }

  v47 = *(v94 + 16);
  if (!v47)
  {
    goto LABEL_64;
  }

  v48 = *(***(***([v47 graph] + 56) + 24) + 16);
  v50 = *v48;
  v49 = v48[1];
  if (v49 != v50)
  {
    if (((v49 - v50) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if (*(v98 + 8) != *v98)
  {
LABEL_64:
    operator new();
  }

  v87 = *(v94 + 16);
  if (v89)
  {
    if (1 << v15 == v17)
    {
      v51 = v96;
    }

    else
    {
      v52 = MEMORY[0x1E6974490];
      v53 = *&v96[*MEMORY[0x1E69744C8]];
      v54 = [v96 descriptor];
      v55 = [v54 getShape];
      v56 = [v52 descriptorWithDataType:v53 shape:v55];

      v51 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:v93 descriptor:v56];
      [v92 setAxesMask:v17 & ~(1 << v15)];
      v106[0] = v96;
      v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:1];
      [v92 encodeToMPSCommandEncoder:v90 commandBuffer:v93 sourceArrays:v57 resultState:0 destinationArray:v51 kernelDAGObject:0];

      [v92 setAxesMask:(1 << v15)];
    }

    v58 = MEMORY[0x1E6974490];
    v59 = *&v51[*MEMORY[0x1E69744C8]];
    v60 = [v91 descriptor];
    v61 = [v60 getShape];
    v84 = [v58 descriptorWithDataType:v59 shape:v61];

    v62 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:v93 descriptor:v84];
    v63 = v62;
    v64 = MEMORY[0x1E6974558];
    if (v62)
    {
      *&v62[*MEMORY[0x1E6974558]] = 3;
    }

    v86 = [v62 descriptor];
    v65 = [v63 descriptor];
    v66 = v15;
    v67 = *(*v40 + 8 * v15);
    v68 = *(*v98 + 8 * v15);
    [v86 sliceDimension:v15 withSubrange:{0, v67}];
    v69 = v68 - v67;
    [v65 sliceDimension:v15 withSubrange:{v67, v69}];
    v70 = [v51 descriptor];
    [v70 sliceDimension:v66 withSubrange:{1, v69}];
    if (v51[*MEMORY[0x1E69744E8]] == 1)
    {
      ++*&v51[*v64];
    }

    v71 = [v51 safeArrayViewWithCommandBuffer:v93 descriptor:v70 aliasing:1];
    v72 = [v63 safeArrayViewWithCommandBuffer:v93 descriptor:v86 aliasing:1];
    v73 = [v63 safeArrayViewWithCommandBuffer:v93 descriptor:v65 aliasing:1];
    v74 = *(v94 + 17);
    v105 = v51;
    v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:1];
    [v74 encodeToMPSCommandEncoder:v90 commandBuffer:v93 sourceArrays:v75 resultState:0 destinationArray:v72 kernelDAGObject:0];

    v76 = *(v94 + 17);
    v104 = v71;
    v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:1];
    [v76 encodeToMPSCommandEncoder:v90 commandBuffer:v93 sourceArrays:v77 resultState:0 destinationArray:v73 kernelDAGObject:v89];

    v96 = v63;
    [v72 setReadCount:0];
    [v73 setReadCount:0];
  }

  v103 = v96;
  v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v103 count:1];
  [v92 encodeToMPSCommandEncoder:v90 commandBuffer:v93 sourceArrays:v78 resultState:0 destinationArray:v91 kernelDAGObject:v87];

  if (v97)
  {
    v79 = *v97;
    if (*v97)
    {
      *(v97 + 8) = v79;
      operator delete(v79);
    }

    MEMORY[0x1E12E5B90](v97, 0x10C402FEFCB83);
  }

  if (v98)
  {
    v80 = *v98;
    if (*v98)
    {
      *(v98 + 8) = v80;
      operator delete(v80);
    }

    MEMORY[0x1E12E5B90](v98, 0x10C402FEFCB83);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }
}

void sub_1E0804970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, void *a21, char a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char *GPU::FFT_CToROpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
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

uint64_t GPU::FFTOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  result = MPSKernelDAG::unaryCoreOp();
  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::FFTOpHandler::~FFTOpHandler(GPU::FFTOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::FFT_RToCOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  result = MPSKernelDAG::unaryCoreOp();
  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::FFT_RToCOpHandler::~FFT_RToCOpHandler(GPU::FFT_RToCOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::FFT_CToROpHandler::~FFT_CToROpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void sub_1E08062EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  v18 = v14;

  _Unwind_Resume(a1);
}

void sub_1E08067FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, char a54)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E0807034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, char a54)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E08076C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, char a50)
{
  operator delete(v51);
  operator delete(a18);
  operator delete(a19);

  _Unwind_Resume(a1);
}

void sub_1E0807A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  v18 = v14;

  _Unwind_Resume(a1);
}

void sub_1E0808058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, char a50)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E0808980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, char a50)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

EmitterObjC::MatMulOpHandler *EmitterObjC::MatMulOpHandler::MatMulOpHandler(EmitterObjC::MatMulOpHandler *this, id *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B50E10;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v67 = v5;
  v6 = *(v5 + 9);
  v7 = *(v6 + 24);
  v8 = *(v6 + 56);
  LODWORD(v6) = *(v5 + 9);
  v9 = v5 - 16;
  if (v6)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
  IsNegated = mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v67);
  TransposeRhs = mlir::mps::MatMulOp::getTransposeRhs(&v67);
  if (IsNegated)
  {
    v11 = MEMORY[0x1E696AEC0];
    v60[0] = v7;
    v66.__r_.__value_.__r.__words[0] = v60;
    v12 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, v60, &std::piecewise_construct, &v66);
    v13 = v12 + 3;
    if (*(v12 + 47) < 0)
    {
      v13 = *v13;
    }

    v56[0] = v7;
    v66.__r_.__value_.__r.__words[0] = v56;
    v14 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, v56, &std::piecewise_construct, &v66);
    v15 = v14 + 3;
    if (*(v14 + 47) < 0)
    {
      v15 = *v15;
    }

    v65 = 13;
    strcpy(v64, "_transposeLHS");
    EmitObjC::emitTensorName(a2, v7, v64, &v66);
    if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v66;
    }

    else
    {
      v16 = v66.__r_.__value_.__r.__words[0];
    }

    v17 = [v11 stringWithFormat:@"\n    MPSGraphTensor *%s_transposeLHS = \n    [graph transposeTensor:%s\n                 dimension:%d\n             withDimension:%d\n                      name:%s]\n    ", v13, v15, 0xFFFFFFFFLL, 4294967294, v16];;
    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v66.__r_.__value_.__l.__data_);
      if ((v65 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else if ((v65 & 0x80000000) == 0)
    {
LABEL_17:
      v18 = [a2[27] stringByAppendingString:v17];
      v19 = a2[27];
      a2[27] = v18;

      goto LABEL_18;
    }

    operator delete(v64[0]);
    goto LABEL_17;
  }

LABEL_18:
  if (!TransposeRhs)
  {
    goto LABEL_29;
  }

  v20 = MEMORY[0x1E696AEC0];
  v60[0] = v8;
  v66.__r_.__value_.__r.__words[0] = v60;
  v21 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, v60, &std::piecewise_construct, &v66);
  v22 = v21 + 3;
  if (*(v21 + 47) < 0)
  {
    v22 = *v22;
  }

  v56[0] = v8;
  v66.__r_.__value_.__r.__words[0] = v56;
  v23 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, v56, &std::piecewise_construct, &v66);
  v24 = v23 + 3;
  if (*(v23 + 47) < 0)
  {
    v24 = *v24;
  }

  v63 = 13;
  strcpy(v62, "_transposeRHS");
  EmitObjC::emitTensorName(a2, v8, v62, &v66);
  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v66;
  }

  else
  {
    v25 = v66.__r_.__value_.__r.__words[0];
  }

  v26 = [v20 stringWithFormat:@"\n    MPSGraphTensor *%s_transposeRHS = \n    [graph transposeTensor:%s\n                 dimension:%d\n             withDimension:%d\n                      name:%s]\n    ", v22, v24, 0xFFFFFFFFLL, 4294967294, v25];;
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
    if ((v63 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_81:
    operator delete(v62[0]);
    goto LABEL_28;
  }

  if (v63 < 0)
  {
    goto LABEL_81;
  }

LABEL_28:
  v27 = [a2[27] stringByAppendingString:v26];
  v28 = a2[27];
  a2[27] = v27;

LABEL_29:
  v29 = MEMORY[0x1E696AEC0];
  v30 = &v66;
  (*(*a2 + 4))(&v66, a2, NextResultAtOffset);
  if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v30 = v66.__r_.__value_.__r.__words[0];
  }

  if (!IsNegated)
  {
    v58 = v7;
    v60[0] = &v58;
    v34 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v58, &std::piecewise_construct, v60);
    v35 = (v34 + 3);
    if (*(v34 + 47) < 0)
    {
      v35 = *v35;
      if (TransposeRhs)
      {
        goto LABEL_40;
      }
    }

    else if (TransposeRhs)
    {
      goto LABEL_40;
    }

LABEL_55:
    v54 = v8;
    v56[0] = &v54;
    v40 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v54, &std::piecewise_construct, v56);
    v41 = (v40 + 3);
    if (*(v40 + 47) < 0)
    {
      v41 = *v41;
    }

    goto LABEL_65;
  }

  v59 = v7;
  v56[0] = &v59;
  v31 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v59, &std::piecewise_construct, v56);
  v32 = *(v31 + 47);
  if (v32 >= 0)
  {
    v33 = *(v31 + 47);
  }

  else
  {
    v33 = v31[4];
  }

  if (v33 + 13 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v33 + 13 >= 0x17)
  {
    operator new();
  }

  v60[1] = 0;
  v61 = 0;
  v60[0] = 0;
  HIBYTE(v61) = v33 + 13;
  if (v33)
  {
    if ((v32 & 0x80u) == 0)
    {
      v39 = v31 + 3;
    }

    else
    {
      v39 = v31[3];
    }

    memmove(v60, v39, v33);
  }

  strcpy(v60 + v33, "_transposeLHS");
  if (v61 >= 0)
  {
    v35 = v60;
  }

  else
  {
    v35 = v60[0];
  }

  if (!TransposeRhs)
  {
    goto LABEL_55;
  }

LABEL_40:
  v55 = v8;
  __p.__r_.__value_.__r.__words[0] = &v55;
  v36 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v55, &std::piecewise_construct, &__p);
  v37 = *(v36 + 47);
  if (v37 >= 0)
  {
    v38 = *(v36 + 47);
  }

  else
  {
    v38 = v36[4];
  }

  if (v38 + 13 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v38 + 13 >= 0x17)
  {
    operator new();
  }

  v56[1] = 0;
  v57 = 0;
  v56[0] = 0;
  HIBYTE(v57) = v38 + 13;
  if (v38)
  {
    if ((v37 & 0x80u) == 0)
    {
      v42 = v36 + 3;
    }

    else
    {
      v42 = v36[3];
    }

    memmove(v56, v42, v38);
  }

  strcpy(v56 + v38, "_transposeRHS");
  if (v57 >= 0)
  {
    v41 = v56;
  }

  else
  {
    v41 = v56[0];
  }

LABEL_65:
  v52 = 0;
  LOBYTE(v51) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v51, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v44 = [v29 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph matrixMultiplicationWithPrimaryTensor:%s\n                                 secondaryTensor:%s\n                                            name:%s]\n    ", v30, v35, v41, p_p];;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v52 & 0x80000000) == 0)
    {
LABEL_70:
      if (!TransposeRhs)
      {
        goto LABEL_75;
      }

      goto LABEL_74;
    }
  }

  else if ((v52 & 0x80000000) == 0)
  {
    goto LABEL_70;
  }

  operator delete(v51);
  if (!TransposeRhs)
  {
    goto LABEL_75;
  }

LABEL_74:
  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56[0]);
    if (!IsNegated)
    {
      goto LABEL_85;
    }

    goto LABEL_76;
  }

LABEL_75:
  if (!IsNegated)
  {
    goto LABEL_85;
  }

LABEL_76:
  if (SHIBYTE(v61) < 0)
  {
    operator delete(v60[0]);
  }

LABEL_85:
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  v45 = [a2[27] stringByAppendingString:v44];
  v46 = a2[27];
  a2[27] = v45;

  return this;
}

void sub_1E080B044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a16 && a45 < 0)
  {
    operator delete(__p);
  }

  if (*(v45 - 105) < 0)
  {
    operator delete(*(v45 - 128));
  }

  _Unwind_Resume(exception_object);
}

int64_t RuntimeUtils::getAxis(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  v7 = &v8;
  v10 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v7, DefiningOp) & 1) != 0)
  {
    SingleInt = mlir::getSingleIntValue<long long>(v8, v9);
    if (v5)
    {
      return (a2 & (SingleInt >> 63)) + SingleInt;
    }
  }

  else
  {
    SingleInt = 0;
  }

  if (!MTLReportFailureTypeEnabled())
  {
    return (a2 & (SingleInt >> 63)) + SingleInt;
  }

  MTLReportFailure();
  return (a2 & (SingleInt >> 63)) + SingleInt;
}

uint64_t RuntimeUtils::getAxis(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  GPURegionRuntime::waitAndReadIntTensorData(a1, a2, a3, &__p);
  v5 = __p;
  if (__p != v10)
  {
    while (*v5 == *__p)
    {
      if (++v5 == v10)
      {
        goto LABEL_7;
      }
    }

    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

LABEL_7:
  v6 = *__p;
  v7 = a4 & (*__p >> 63);
  v10 = __p;
  operator delete(__p);
  return v7 + v6;
}

void sub_1E080B2F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id RuntimeUtils::expandShape(void *a1, uint64_t a2, uint64_t a3)
{
  for (i = [a1 mutableCopy]; a3; --a3)
  {
    [i insertObject:&unk_1F5B75A10 atIndex:a2];
  }

  return i;
}

id RuntimeUtils::convertNDArrayLayout(unsigned int a1, unsigned int a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v30 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if ((a1 & 0xFFFFFFFE) == 2 && (a2 & 0xFFFFFFFE) != 2 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v16 = [v12 descriptor];
  v17 = [v16 numberOfDimensions];
  if (a2 >= 7)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

LABEL_12:
    if (a1 > 6)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v18 = v17;
  v19 = qword_1E09AA790[a2];
  if (v19 <= v17)
  {
    goto LABEL_12;
  }

  v27 = v14;
  v20 = 0;
  memset(v29, 0, sizeof(v29));
  do
  {
    if (v20 >= v18)
    {
      v21 = 1;
    }

    else
    {
      [v16 sliceRangeForDimension:v20];
    }

    *(v29 + v20++) = v21;
  }

  while (v19 != v20);
  [v16 reshapeWithDimensionCount:v19 dimensionSizes:v29];
  if (a1 > 6)
  {
LABEL_17:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    goto LABEL_21;
  }

LABEL_13:
  if (((1 << a1) & 0x55) == 0)
  {
    if (((1 << a1) & 0x22) != 0)
    {
      v22 = 0;
    }

    else
    {
      [v16 transposeDimension:0 withDimension:3];
      v22 = 1;
    }

    [v16 transposeDimension:v22 withDimension:{2, v27}];
    [v16 transposeDimension:0 withDimension:1];
  }

LABEL_21:
  if (a2 > 6)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  else if (((1 << a2) & 0x55) == 0)
  {
    if (((1 << a2) & 0x22) != 0)
    {
      v23 = 2;
      [v16 transposeDimension:0 withDimension:2];
      v24 = 1;
    }

    else
    {
      [v16 transposeDimension:0 withDimension:3];
      [v16 transposeDimension:1 withDimension:2];
      v23 = 3;
      v24 = 2;
    }

    [v16 transposeDimension:v24 withDimension:{v23, v27}];
  }

  if (v13)
  {
    [v12 arrayViewWithCommandBuffer:v15 computeEncoder:v14 descriptor:v16 destinationArray:v13 aliasing:a5];
  }

  else
  {
    [v12 safeArrayViewWithCommandBuffer:v15 computeEncoder:v14 descriptor:v16 aliasing:a5];
  }
  v25 = ;

  return v25;
}

void RuntimeUtils::getAxes(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v19[5] = *MEMORY[0x1E69E9840];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v16 = 0uLL;
  if (a1)
  {
    v17[0] = &v16;
    v18[0] = a1;
    DefiningOp = mlir::Value::getDefiningOp(v18);
    if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v17, DefiningOp))
    {
      if (mlir::ElementsAttr::isSplat(&v16))
      {
        *v18 = v16;
        if (mlir::ElementsAttr::isSplat(v18) && (v17[0] = mlir::CallOpInterface::getArgOperands(v18), v17[1] = v6, *(*mlir::ElementsAttr::isSplat(v17) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
        {
          v17[0] = 0;
          mlir::copyElementsAttrData<long long>(v18[0], v18[1], v17, 0);
          v9 = v17[0] & 0xFFFFFFFFFFFFFF00;
          v8 = LOBYTE(v17[0]);
          v7 = 1;
        }

        else
        {
          v7 = 0;
          v8 = 0;
          v9 = 0;
        }

        v14 = v9 | v8;
        v15 = v7;
        std::vector<long long>::push_back[abi:ne200100](a3, &v14);
      }

      else
      {
        v18[0] = v19;
        v18[1] = 0x400000000;
        mlir::getIntValues<long long>(v16, *(&v16 + 1), v18, 1);
        v12 = v18[0];
        if (LODWORD(v18[1]))
        {
          v13 = 8 * LODWORD(v18[1]);
          do
          {
            v17[0] = *v12;
            std::vector<long long>::push_back[abi:ne200100](a3, v17);
            ++v12;
            v13 -= 8;
          }

          while (v13);
          v12 = v18[0];
        }

        if (v12 != v19)
        {
          free(v12);
        }
      }
    }

    else
    {
      v10 = (a1[1] & 0xFFFFFFFFFFFFFFF8);
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v10 = 0;
      }

      v18[0] = v10;
      if ((!v10 || *mlir::ArrayAttr::getValue(v18)) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  else
  {
    v18[0] = 0;
    if (a2)
    {
      do
      {
        std::vector<long long>::push_back[abi:ne200100](a3, v18);
        ++v18[0];
      }

      while (v18[0] != a2);
    }
  }
}

void sub_1E080B960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  if (a15 == v16)
  {
    v18 = *v15;
    if (!*v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    free(a15);
    v18 = *v15;
    if (!*v15)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  *(v15 + 8) = v18;
  operator delete(v18);
  _Unwind_Resume(exception_object);
}

void sub_1E080CE04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E080D1D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E080D654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
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
  JUMPOUT(0x1E080D6BCLL);
}

void sub_1E080D6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    JUMPOUT(0x1E080D6BCLL);
  }

  JUMPOUT(0x1E080D674);
}

void sub_1E080E5B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E08107FC(_Unwind_Exception *a1)
{
  if (v2)
  {

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void GPU::SparseDenseMatMulOpHandler::encodeNDArrayOp(GPU::SparseDenseMatMulOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v38[4] = *MEMORY[0x1E69E9840];
  v36 = a3;
  v5 = *(this + 2);
  v37 = *(this + 3);
  v6 = *(v37 + 9);
  v7 = v6[7];
  v8 = v6[11];
  v9 = v6[19];
  v10 = (*(*v5 + 48))(v5, v6[3], 0);
  v11 = [v10 mpsndarray];

  v12 = (*(**(this + 2) + 48))(*(this + 2), v7, 0);
  v13 = [v12 mpsndarray];

  v14 = (*(**(this + 2) + 48))(*(this + 2), v8, 0);
  v15 = [v14 mpsndarray];

  v16 = (*(**(this + 2) + 48))(*(this + 2), v9, 0);
  v17 = [v16 mpsndarray];

  v18 = [(NSArray *)v36 objectAtIndexedSubscript:0];
  v19 = [v18 mpsndarray];
  v20 = v19;
  if (v17)
  {
    v21 = v11 == 0;
  }

  else
  {
    v21 = 1;
  }

  v24 = v21 || v13 == 0 || v15 == 0 || v19 == 0;
  if (v24 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v25 = GPU::SparseDenseMatMulOpHandler::_kernel;
  if (!GPU::SparseDenseMatMulOpHandler::_kernel)
  {
    v26 = objc_alloc(MEMORY[0x1E6974790]);
    v27 = [*(*(this + 2) + 48) metalDevice];
    v28 = [v26 initWithDevice:v27 sourceCount:4];
    v29 = GPU::SparseDenseMatMulOpHandler::_kernel;
    GPU::SparseDenseMatMulOpHandler::_kernel = v28;

    [GPU::SparseDenseMatMulOpHandler::_kernel setDenseSparse:0];
    v25 = GPU::SparseDenseMatMulOpHandler::_kernel;
  }

  v30 = v25;
  mlir::mpsx::SparseDenseMatMulOp::getTransposeRhs(&v37);
  if (mlir::mpsx::SparseDenseMatMulOp::getTransposeRhs(&v37) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [v30 setTransposeSparse:mlir::mpsx::SparseDenseMatMulOp::getTransposeLhs(&v37)];
  StorageType = mlir::mpsx::SparseDenseMatMulOp::getStorageType(&v37);
  if (StorageType >= 3)
  {
    MTLReportFailureTypeEnabled();
    MTLReportFailure();
  }

  else
  {
    v32 = dword_1E09AA814[StorageType];
  }

  [v30 setSparseFormat:v32];
  v33 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v34 = *(a2 + 1);
  v38[0] = v11;
  v38[1] = v13;
  v38[2] = v15;
  v38[3] = v17;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
  [v30 encodeToMPSCommandEncoder:v33 commandBuffer:v34 sourceArrays:v35 destinationArray:v20];
}

void GPU::MaterializeSparseTensorOpHandler::encodeNDArrayOp(GPU::MaterializeSparseTensorOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v36[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v35 = *(this + 3);
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v35, 0);
  v7 = *(*(v35 + 72) + 32 * ODSOperandIndexAndLength + 24);
  v8 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v35, 1u);
  v9 = *(*(v35 + 72) + 32 * v8 + 24);
  v10 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v35, 1u);
  v11 = *(*(v35 + 72) + 32 * v10 + 56);
  v12 = (*(**(this + 2) + 48))(*(this + 2), v7, 0);
  v13 = [v12 mpsndarray];

  v14 = (*(**(this + 2) + 48))(*(this + 2), v9, 0);
  v15 = [v14 mpsndarray];

  v16 = (*(**(this + 2) + 48))(*(this + 2), v11, 0);
  v17 = [v16 mpsndarray];

  v18 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v19 = [v18 mpsndarray];
  v20 = v19;
  if (v13)
  {
    v21 = v15 == 0;
  }

  else
  {
    v21 = 1;
  }

  v23 = v21 || v17 == 0 || v19 == 0;
  if (v23 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v24 = GPU::MaterializeSparseTensorOpHandler::_kernel;
  if (!GPU::MaterializeSparseTensorOpHandler::_kernel)
  {
    v25 = objc_alloc(MEMORY[0x1E6974780]);
    v26 = [*(*(this + 2) + 48) metalDevice];
    v27 = [v25 initWithDevice:v26 sourceCount:3];
    v28 = GPU::MaterializeSparseTensorOpHandler::_kernel;
    GPU::MaterializeSparseTensorOpHandler::_kernel = v27;

    v24 = GPU::MaterializeSparseTensorOpHandler::_kernel;
  }

  v29 = v24;
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v35);
  if (StorageType >= 3)
  {
    MTLReportFailureTypeEnabled();
    MTLReportFailure();
  }

  else
  {
    v31 = dword_1E09AA814[StorageType];
  }

  [v29 setSparseFormat:v31];
  v32 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v33 = *(a2 + 1);
  v36[0] = v13;
  v36[1] = v15;
  v36[2] = v17;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
  [v29 encodeToMPSCommandEncoder:v32 commandBuffer:v33 sourceArrays:v34 destinationArray:v20];
}

void GPU::SparseDenseMatMulOpHandler::~SparseDenseMatMulOpHandler(GPU::SparseDenseMatMulOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MaterializeSparseTensorOpHandler::~MaterializeSparseTensorOpHandler(GPU::MaterializeSparseTensorOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t MILToMLIRRewriter::MILToMLIRRewriter(uint64_t a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t **a4, char a5)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 24) = 0u;
  v47 = (a1 + 24);
  *(a1 + 16) = a4;
  *(a1 + 40) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 1065353216;
  *(a1 + 104) = 0u;
  v46 = (a1 + 104);
  *(a1 + 120) = 0u;
  *(a1 + 136) = 1065353216;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 1065353216;
  *(a1 + 184) = a3;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  UnknownLoc = mlir::Builder::getUnknownLoc((a1 + 184), a2);
  *(a1 + 224) = UnknownLoc;
  *(a1 + 232) = a5;
  *(a1 + 240) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  __p.__r_.__value_.__s.__data_[16] = 0;
  *(a1 + 216) = mlir::ModuleOp::create(UnknownLoc, &__p);
  v10 = *a4;
  v9 = a4[1];
  v11 = v47;
  if (*a4 != v9)
  {
    v48 = a4[1];
    do
    {
      v12 = *v10;
      v13 = (*v10 + 8);
      std::__hash_table<std::__hash_value_type<std::string,MILToMLIRRewritePattern const&>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MILToMLIRRewritePattern const&>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MILToMLIRRewritePattern const&>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MILToMLIRRewritePattern const&>>>::find<std::string>(v11, v13);
      if (std::__hash_table<std::__hash_value_type<std::string,MILToMLIRRewritePattern const&>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MILToMLIRRewritePattern const&>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MILToMLIRRewritePattern const&>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MILToMLIRRewritePattern const&>>>::find<std::string>(v11, v13) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*(v12 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v12 + 8), *(v12 + 16));
      }

      else
      {
        v14 = *v13;
        __p.__r_.__value_.__r.__words[2] = v13[2];
        *&__p.__r_.__value_.__l.__data_ = v14;
      }

      v52 = v12;
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
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v17 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&pn, p_p, size);
      v18 = v17;
      v19 = *(a1 + 32);
      if (!*&v19)
      {
        goto LABEL_55;
      }

      v20 = vcnt_s8(v19);
      v20.i16[0] = vaddlv_u8(v20);
      if (v20.u32[0] > 1uLL)
      {
        v21 = v17;
        if (v17 >= *&v19)
        {
          v21 = v17 % *&v19;
        }
      }

      else
      {
        v21 = (*&v19 - 1) & v17;
      }

      v22 = *(*v11 + 8 * v21);
      if (!v22 || (v23 = *v22) == 0)
      {
LABEL_55:
        operator new();
      }

      v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v25 = __p.__r_.__value_.__l.__size_;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &__p;
      }

      else
      {
        v26 = __p.__r_.__value_.__r.__words[0];
      }

      if (v20.u32[0] < 2uLL)
      {
        while (1)
        {
          v27 = v23[1];
          if (v27 == v18)
          {
            v28 = *(v23 + 39);
            v29 = v28;
            if (v28 < 0)
            {
              v28 = v23[3];
            }

            if (v28 == v25)
            {
              v30 = v29 >= 0 ? (v23 + 2) : v23[2];
              if (!memcmp(v30, v26, v25))
              {
                v11 = v47;
                v9 = v48;
                if (v24 < 0)
                {
                  goto LABEL_3;
                }

                goto LABEL_4;
              }
            }
          }

          else if ((v27 & (*&v19 - 1)) != v21)
          {
            goto LABEL_55;
          }

          v23 = *v23;
          if (!v23)
          {
            goto LABEL_55;
          }
        }
      }

      while (1)
      {
        v31 = v23[1];
        if (v31 == v18)
        {
          break;
        }

        if (v31 >= *&v19)
        {
          v31 %= *&v19;
        }

        if (v31 != v21)
        {
          goto LABEL_55;
        }

LABEL_43:
        v23 = *v23;
        if (!v23)
        {
          goto LABEL_55;
        }
      }

      v32 = *(v23 + 39);
      v33 = v32;
      if (v32 < 0)
      {
        v32 = v23[3];
      }

      if (v32 != v25)
      {
        goto LABEL_43;
      }

      v34 = v33 >= 0 ? (v23 + 2) : v23[2];
      if (memcmp(v34, v26, v25))
      {
        goto LABEL_43;
      }

      v11 = v47;
      if (v24 < 0)
      {
LABEL_3:
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_4:
      ++v10;
    }

    while (v10 != v9);
  }

  MIL::Attributes::BlobFileMutabilityInfo::Make();
  v37 = *(MIL::Attributes::BlobFileMutabilityInfo::GetAllPaths(v50) + 16);
  if (v37)
  {
    while (1)
    {
      v38 = v37[5];
      memset(&__p, 0, sizeof(__p));
      v39 = *(v37 + 63);
      if (v39 >= 0)
      {
        v40 = (v37 + 5);
      }

      else
      {
        v40 = v38;
      }

      v41 = v37[6];
      if (v39 >= 0)
      {
        v41 = *(v37 + 63);
      }

      std::string::append[abi:ne200100]<char const*,0>(&__p, v40, (v40 + v41));
      if (std::__fs::filesystem::path::__root_directory(&__p).__size_)
      {
        if (*(v37 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(&pn, v37[5], v37[6]);
        }

        else
        {
          pn = *(v37 + 5);
        }
      }

      else
      {
        std::__fs::filesystem::__absolute(&v49, &__p, 0);
        if (SHIBYTE(v49.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&pn, v49.__pn_.__r_.__value_.__l.__data_, v49.__pn_.__r_.__value_.__l.__size_);
          if (SHIBYTE(v49.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v49.__pn_.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          pn = v49.__pn_;
        }
      }

      v49.__pn_.__r_.__value_.__r.__words[0] = &pn;
      v42 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v46, &pn, &std::piecewise_construct, &v49);
      std::string::operator=((v42 + 40), (v37 + 2));
      if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(pn.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_63;
        }

LABEL_79:
        operator delete(__p.__r_.__value_.__l.__data_);
        v37 = *v37;
        if (!v37)
        {
          break;
        }
      }

      else
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_79;
        }

LABEL_63:
        v37 = *v37;
        if (!v37)
        {
          break;
        }
      }
    }
  }

  v43 = v50;
  v50 = 0;
  if (v43)
  {
    v44 = MEMORY[0x1E12E5010](v43, v35, v36);
    MEMORY[0x1E12E5B90](v44, 0x20C4093837F09);
  }

  return a1;
}

void sub_1E081219C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  std::unordered_map<std::string,MPSMLIROps>::~unordered_map[abi:ne200100](a10);
  std::unordered_map<std::string,std::string>::~unordered_map[abi:ne200100](a13);
  std::unordered_map<std::string,std::vector<mlir::Value>>::~unordered_map[abi:ne200100](a11);
  std::unordered_map<std::string,MPSMLIROps>::~unordered_map[abi:ne200100](v29);
  _Unwind_Resume(a1);
}

uint64_t MILToMLIRRewriter::getLocationForOp(mlir::StringAttr **this, const MIL::IROperation *a2)
{
  v4 = *(this + 232);
  Location = MIL::IRObject::GetLocation(a2);
  v6 = *Location;
  v7 = __dynamic_cast(Location, MEMORY[0x1E69AD5D0], MEMORY[0x1E69AD5A0], 0);
  memset(&v30, 0, sizeof(v30));
  if (v7)
  {
    v8 = v7;
    v9 = (*(*v7 + 48))(v7);
    v10 = (*(*v8 + 32))(v8);
    v11 = (*(*v8 + 40))(v8);
    std::string::operator=(&v30, v11);
    size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v30.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
LABEL_11:
      MEMORY[0x1E12E55D0](&v30, "<unknown>");
    }
  }

  else
  {
    (*(v6 + 24))(&v25, Location);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    v10 = 0;
    v9 = 0;
    v30 = v25;
    v13 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = v30.__r_.__value_.__l.__size_;
    }

    if (!v13)
    {
      goto LABEL_11;
    }
  }

  if (!v4)
  {
    v26 = 260;
    v25.__r_.__value_.__r.__words[0] = &v30;
    StringAttr = mlir::Builder::getStringAttr(this + 23, &v25);
    result = mlir::FileLineColLoc::get(StringAttr, v9, v10);
    goto LABEL_24;
  }

  (*(*a2 + 16))(&v27, a2);
  v14 = std::string::append(&v27, " - ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v30;
  }

  else
  {
    v16 = v30.__r_.__value_.__r.__words[0];
  }

  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v30.__r_.__value_.__l.__size_;
  }

  v18 = std::string::append(&v25, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v29 = v18->__r_.__value_.__r.__words[2];
  *__p = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }
  }

  else if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(v27.__r_.__value_.__l.__data_);
LABEL_21:
  v26 = 260;
  v25.__r_.__value_.__r.__words[0] = __p;
  v20 = mlir::Builder::getStringAttr(this + 23, &v25);
  result = mlir::FileLineColLoc::get(v20, v9, v10);
  if (SHIBYTE(v29) < 0)
  {
    v22 = result;
    operator delete(__p[0]);
    result = v22;
  }

LABEL_24:
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    v24 = result;
    operator delete(v30.__r_.__value_.__l.__data_);
    return v24;
  }

  return result;
}

void sub_1E081259C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

  _Unwind_Resume(exception_object);
}

void MILToMLIRRewriter::rewrite(MILToMLIRRewriter *this@<X0>, void *a2@<X8>)
{
  v4 = *((*(**this + 72))(*this) + 16);
  if (v4)
  {
    while (1)
    {
      v5 = MILToMLIRRewriter::rewrite(this, v4[5], (v4 + 2));
      if (!v5)
      {
        break;
      }

      v6 = *(((*(this + 27) + 16 * ((*(*(this + 27) + 44) >> 23) & 1) + ((*(*(this + 27) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(this + 27) + 40) + 8);
      if (v6)
      {
        v7 = v6 - 8;
      }

      else
      {
        v7 = 0;
      }

      llvm::ilist_traits<mlir::Operation>::addNodeToList(v7 + 32, v5);
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v8 = *(v7 + 32);
      *v9 = v8;
      v9[1] = v7 + 32;
      *(v8 + 8) = v9;
      *(v7 + 32) = v9;
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v4 = *v4;
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v20);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "Failed to rewrite function ", 27);
    v11 = *(v4 + 39);
    if (v11 >= 0)
    {
      v12 = (v4 + 2);
    }

    else
    {
      v12 = v4[2];
    }

    if (v11 >= 0)
    {
      v13 = *(v4 + 39);
    }

    else
    {
      v13 = v4[3];
    }

    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ".", 1);
    std::stringbuf::str();
    if (!*(this + 30) && MTLReportFailureTypeEnabled())
    {
      if (v19 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:p_p];
      MTLReportFailure();
    }

    if (v19 < 0)
    {
      operator delete(__p);
    }

    *a2 = 0;
    v20[0] = *MEMORY[0x1E69E54D8];
    v16 = *(MEMORY[0x1E69E54D8] + 72);
    *(v20 + *(v20[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v21 = v16;
    v22 = MEMORY[0x1E69E5548] + 16;
    if (v24 < 0)
    {
      operator delete(v23[7].__locale_);
    }

    v22 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v23);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v25);
  }

  else
  {
LABEL_7:
    *a2 = *(this + 27);
  }
}

void sub_1E0812914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
    _Unwind_Resume(a1);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

mlir::mps *MILToMLIRRewriter::rewrite(uint64_t a1, uint64_t a2, size_t a3)
{
  v158 = *MEMORY[0x1E69E9840];
  v141 = 0;
  v142 = 0;
  v143 = 0;
  v138 = 0;
  v139 = 0;
  v140 = 0;
  v135 = 0;
  v136 = 0;
  v137 = 0;
  v5 = (*(*a2 + 128))(a2);
  v7 = v5 + 1;
  v6 = *v5;
  if (*v5 != v5 + 1)
  {
    while (1)
    {
      getMLIRTypes(&__p, v6[7], *(a1 + 8));
      std::vector<mlir::Type>::__insert_with_size[abi:ne200100]<std::__wrap_iter<mlir::Type*>,std::__wrap_iter<mlir::Type*>>(&v141, v142, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3);
      v8 = v139;
      if (v139 >= v140)
      {
        v9 = std::vector<std::vector<mlir::Type>>::__emplace_back_slow_path<std::vector<mlir::Type> const&>(&v138, &__p);
      }

      else
      {
        *v139 = 0;
        v8[1] = 0;
        v8[2] = 0;
        if (__p.__r_.__value_.__l.__size_ != __p.__r_.__value_.__r.__words[0])
        {
          if (((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
        }

        v9 = v8 + 3;
      }

      v139 = v9;
      v10 = v136;
      if (v136 < v137)
      {
        break;
      }

      v136 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v135, (v6 + 4));
      v12 = __p.__r_.__value_.__r.__words[0];
      if (__p.__r_.__value_.__r.__words[0])
      {
        goto LABEL_15;
      }

LABEL_16:
      v13 = v6[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v6[2];
          v15 = *v14 == v6;
          v6 = v14;
        }

        while (!v15);
      }

      v6 = v14;
      if (v14 == v7)
      {
        v16 = v141;
        v17 = v142;
        goto LABEL_26;
      }
    }

    if (*(v6 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(v136, v6[4], v6[5]);
      v136 = v10 + 1;
      v12 = __p.__r_.__value_.__r.__words[0];
      if (!__p.__r_.__value_.__r.__words[0])
      {
        goto LABEL_16;
      }
    }

    else
    {
      v11 = *(v6 + 2);
      v136->__r_.__value_.__r.__words[2] = v6[6];
      *&v10->__r_.__value_.__l.__data_ = v11;
      v136 = v10 + 1;
      v12 = __p.__r_.__value_.__r.__words[0];
      if (!__p.__r_.__value_.__r.__words[0])
      {
        goto LABEL_16;
      }
    }

LABEL_15:
    __p.__r_.__value_.__l.__size_ = v12;
    operator delete(v12);
    goto LABEL_16;
  }

  v17 = 0;
  v16 = 0;
LABEL_26:
  mlir::ValueRange::ValueRange(&__p, v16, (v17 - v16) >> 3);
  mlir::ValueRange::ValueRange(&v150, 0, 0);
  FunctionType = mlir::Builder::getFunctionType((a1 + 184), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, v150, v151);
  v19 = *(a3 + 23);
  if (v19 >= 0)
  {
    v20 = a3;
  }

  else
  {
    v20 = *a3;
  }

  if (v19 >= 0)
  {
    v21 = *(a3 + 23);
  }

  else
  {
    v21 = *(a3 + 8);
  }

  v134 = mlir::func::FuncOp::create(*(a1 + 224), v20, v21, FunctionType, 0, 0);
  v22 = mlir::detail::FunctionOpInterfaceTrait<mlir::func::FuncOp>::addEntryBlock(&v134);
  v23 = *(v22 + 5);
  *(a1 + 200) = v22;
  *(a1 + 208) = v23;
  v24 = 0xAAAAAAAAAAAAAAABLL * ((v136 - v135) >> 3);
  v126 = a1;
  if (v24 >= 1)
  {
    v25 = 0;
    v123 = v24 & 0x7FFFFFFF;
    do
    {
      v26 = (*(v138 + 3 * v25 + 1) - *(v138 + 3 * v25)) >> 3;
      if (v26 > 0)
      {
        operator new();
      }

      __p.__r_.__value_.__r.__words[0] = v135 + 24 * v25;
      v27 = std::__hash_table<std::__hash_value_type<std::string,std::vector<mlir::Value>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<mlir::Value>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<mlir::Value>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<mlir::Value>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 64), __p.__r_.__value_.__l.__data_, &std::piecewise_construct, &__p);
      std::vector<mlir::Value>::__assign_with_size[abi:ne200100]<mlir::Value*,mlir::Value*>(v27 + 5, 0, 0, 0);
      ++v25;
    }

    while (v25 != v123);
  }

  theDict = *(a1 + 240);
  v28 = (*(*a2 + 40))(a2);
  v29 = (*(*v28 + 56))(v28);
  v121 = (*v29)[1];
  if (**v29 == v121)
  {
    goto LABEL_144;
  }

  v30 = **v29;
  v119 = *(MEMORY[0x1E69E54D8] + 64);
  v120 = *MEMORY[0x1E69E54D8];
  v118 = *(MEMORY[0x1E69E54D8] + 72);
  do
  {
    v124 = v30;
    v31 = *v30;
    v32 = (*(**v30 + 56))(*v30);
    if (*(v32 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v133, *v32, *(v32 + 8));
    }

    else
    {
      v33 = *v32;
      v133.__r_.__value_.__r.__words[2] = *(v32 + 16);
      *&v133.__r_.__value_.__l.__data_ = v33;
    }

    v125 = v31;
    v34 = 0;
    v152 = 6;
    strcpy(&v150, "ios16.");
    v155 = 6;
    strcpy(&v153, "ios17.");
    v157 = 6;
    strcpy(v156, "ios18.");
    do
    {
      while (1)
      {
        v36 = &(&v150)[v34];
        if (*(&v152 + v34 * 8) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *v36, v36[1]);
        }

        else
        {
          __p = *v36;
        }

        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v38 = HIBYTE(v133.__r_.__value_.__r.__words[2]);
        if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v39 = &v133;
        }

        else
        {
          v38 = v133.__r_.__value_.__l.__size_;
          v39 = v133.__r_.__value_.__r.__words[0];
        }

        if (v38 >= size)
        {
          v40 = size;
        }

        else
        {
          v40 = v38;
        }

        if (v40 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v40 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v40;
        if (v40)
        {
          memmove(&__dst, v39, v40);
        }

        v41 = 0;
        __dst.__r_.__value_.__s.__data_[v40] = 0;
        v42 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v43 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v43 = __dst.__r_.__value_.__l.__size_;
        }

        v35 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v44 = __p.__r_.__value_.__l.__size_;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        if (v43 == v44)
        {
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          v41 = memcmp(p_dst, p_p, v43) == 0;
          if ((v42 & 0x80000000) == 0)
          {
LABEL_81:
            if (!v41)
            {
              goto LABEL_46;
            }

LABEL_82:
            if ((v35 & 0x80u) == 0)
            {
              v47 = v35;
            }

            else
            {
              v47 = __p.__r_.__value_.__l.__size_;
            }

            v48 = SHIBYTE(v133.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(v133.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
            {
              v48 = v133.__r_.__value_.__l.__size_;
              if (v133.__r_.__value_.__l.__size_ < v47)
              {
LABEL_232:
                std::string::__throw_out_of_range[abi:ne200100]();
              }

              v49 = v133.__r_.__value_.__r.__words[0];
              v50 = v133.__r_.__value_.__l.__size_ - v47;
              if (v133.__r_.__value_.__l.__size_ - v47 > 0x7FFFFFFFFFFFFFF7)
              {
LABEL_231:
                std::string::__throw_length_error[abi:ne200100]();
              }
            }

            else
            {
              if (v47 > SHIBYTE(v133.__r_.__value_.__r.__words[2]))
              {
                goto LABEL_232;
              }

              v49 = &v133;
              v50 = SHIBYTE(v133.__r_.__value_.__r.__words[2]) - v47;
              if (v50 > 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_231;
              }
            }

            if (v50 >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = v50;
            if (v48 == v47)
            {
              __dst.__r_.__value_.__s.__data_[v50] = 0;
              if ((SHIBYTE(v133.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_45:
                v133 = __dst;
                LOBYTE(v35) = *(&__p.__r_.__value_.__s + 23);
                goto LABEL_46;
              }
            }

            else
            {
              memmove(&__dst, v49 + v47, v50);
              __dst.__r_.__value_.__s.__data_[v50] = 0;
              if ((SHIBYTE(v133.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_45;
              }
            }

            operator delete(v133.__r_.__value_.__l.__data_);
            goto LABEL_45;
          }
        }

        else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }

        operator delete(__dst.__r_.__value_.__l.__data_);
        v35 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if (v41)
        {
          goto LABEL_82;
        }

LABEL_46:
        if ((v35 & 0x80) != 0)
        {
          break;
        }

        v34 += 3;
        if (v34 == 9)
        {
          goto LABEL_99;
        }
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      v34 += 3;
    }

    while (v34 != 9);
LABEL_99:
    a1 = v126;
    v51 = std::__hash_table<std::__hash_value_type<std::string,MILToMLIRRewritePattern const&>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MILToMLIRRewritePattern const&>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MILToMLIRRewritePattern const&>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MILToMLIRRewritePattern const&>>>::find<std::string>((v126 + 24), &v133);
    if (!v51)
    {
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__p);
      v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__r.__words[2], "Missing pattern to rewrite MIL op ", 34);
      if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = &v133;
      }

      else
      {
        v54 = v133.__r_.__value_.__r.__words[0];
      }

      if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v55 = HIBYTE(v133.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v55 = v133.__r_.__value_.__l.__size_;
      }

      v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v54, v55);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, ".", 1);
      std::stringbuf::str();
      MILToMLIRRewriter::notifyFailure(v126, v125, &__dst);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = v120;
      *(__p.__r_.__value_.__r.__words + *(v120 - 24)) = v119;
      __p.__r_.__value_.__r.__words[2] = v118;
      v145 = MEMORY[0x1E69E5548] + 16;
      v57 = v148;
      if (theDict)
      {
        if (v148 < 0)
        {
          operator delete(v147);
        }

        v145 = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(v146);
        std::iostream::~basic_iostream();
        MEMORY[0x1E12E5AA0](v149);
        v58 = 1;
        if (v157 < 0)
        {
          goto LABEL_131;
        }

LABEL_139:
        if (v155 < 0)
        {
          goto LABEL_132;
        }

LABEL_140:
        if ((v152 & 0x80000000) == 0)
        {
          goto LABEL_141;
        }

LABEL_133:
        operator delete(v150);
        if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_134;
        }

LABEL_142:
        if (v58)
        {
          goto LABEL_143;
        }

LABEL_170:
        v79 = 0;
        v73 = v135;
        if (v135)
        {
          goto LABEL_160;
        }

LABEL_171:
        v75 = v138;
        if (v138)
        {
          goto LABEL_172;
        }

        goto LABEL_162;
      }

LABEL_128:
      if (v57 < 0)
      {
        operator delete(v147);
      }

      v145 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v146);
      std::iostream::~basic_iostream();
      MEMORY[0x1E12E5AA0](v149);
      v58 = 0;
      if (v157 < 0)
      {
        goto LABEL_131;
      }

      goto LABEL_139;
    }

    if (((*(*v51[5] + 16))(v51[5], v125, v126) & 1) == 0)
    {
      if (theDict)
      {
        goto LABEL_138;
      }

      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__p);
      v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__r.__words[2], "Failed to rewrite MIL op ", 25);
      if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v60 = &v133;
      }

      else
      {
        v60 = v133.__r_.__value_.__r.__words[0];
      }

      if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v61 = HIBYTE(v133.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v61 = v133.__r_.__value_.__l.__size_;
      }

      v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, v60, v61);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, ".", 1);
      std::stringbuf::str();
      MILToMLIRRewriter::notifyFailure(v126, v125, &__dst);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = v120;
      *(__p.__r_.__value_.__r.__words + *(v120 - 24)) = v119;
      __p.__r_.__value_.__r.__words[2] = v118;
      v145 = MEMORY[0x1E69E5548] + 16;
      v57 = v148;
      goto LABEL_128;
    }

    if (!theDict)
    {
      goto LABEL_138;
    }

    *(&__p.__r_.__value_.__s + 23) = 5;
    strcpy(&__p, "milId");
    Attribute = MIL::IRObject::TryGetAttribute();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v63 = Attribute;
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!v63)
      {
        goto LABEL_138;
      }

LABEL_137:
      v64 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:MIL::IRValue::GetScalar<unsigned long long>()];
      CFDictionarySetValue(theDict, v64, &unk_1F5B780D8);
      CFRelease(v64);
      CFRelease(&unk_1F5B780D8);
      goto LABEL_138;
    }

    if (Attribute)
    {
      goto LABEL_137;
    }

LABEL_138:
    v58 = 1;
    if ((v157 & 0x80000000) == 0)
    {
      goto LABEL_139;
    }

LABEL_131:
    operator delete(v156[0]);
    if ((v155 & 0x80000000) == 0)
    {
      goto LABEL_140;
    }

LABEL_132:
    operator delete(v153);
    if (v152 < 0)
    {
      goto LABEL_133;
    }

LABEL_141:
    if ((SHIBYTE(v133.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_142;
    }

LABEL_134:
    operator delete(v133.__r_.__value_.__l.__data_);
    if ((v58 & 1) == 0)
    {
      goto LABEL_170;
    }

LABEL_143:
    v30 = v124 + 2;
  }

  while (v124 + 2 != v121);
LABEL_144:
  memset(&v133, 0, sizeof(v133));
  v65 = (*(*a2 + 40))(a2);
  v66 = (*(*v65 + 88))(v65);
  v67 = *v66;
  v68 = v66[1];
  if (*v66 != v68)
  {
    do
    {
      if (*(v67 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v67, *(v67 + 1));
      }

      else
      {
        v69 = *v67;
        __p.__r_.__value_.__r.__words[2] = *(v67 + 2);
        *&__p.__r_.__value_.__l.__data_ = v69;
      }

      v70 = std::__hash_table<std::__hash_value_type<std::string,std::vector<mlir::Value>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<mlir::Value>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<mlir::Value>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<mlir::Value>>>>::find<std::string>((a1 + 64), &__p);
      if (!v70)
      {
        operator new();
      }

      v72 = v70[5];
      v71 = v70[6];
      if (v71 != v72)
      {
        if (((v71 - v72) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v67 = (v67 + 24);
    }

    while (v67 != v68);
  }

  mlir::OpBuilder::create<mlir::func::ReturnOp,std::vector<mlir::Value> &>((a1 + 184), *(a1 + 224), &v133);
  __dst.__r_.__value_.__r.__words[0] = mlir::func::FuncOp::getFunctionType(&v134);
  Inputs = mlir::FunctionType::getInputs(&__dst);
  mlir::ValueRange::ValueRange(&__p, Inputs, v86);
  mlir::ValueRange::ValueRange(&v150, 0, 0);
  v87 = mlir::Builder::getFunctionType((a1 + 184), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, v150, v151);
  v88 = v134;
  if (v134)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v134);
  }

  else
  {
    InterfaceFor = 0;
  }

  mlir::function_interface_impl::setFunctionType(v88, InterfaceFor, v87);
  mlir::mps::inferTypes(v134, v90);
  v91 = v135;
  v92 = v136;
  if (v135 != v136)
  {
    v93 = 0;
    while (1)
    {
      if (SHIBYTE(v91->__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__dst, v91->__r_.__value_.__l.__data_, v91->__r_.__value_.__l.__size_);
      }

      else
      {
        v94 = *&v91->__r_.__value_.__l.__data_;
        __dst.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&__dst.__r_.__value_.__l.__data_ = v94;
      }

      *(&v128.__r_.__value_.__s + 23) = 3;
      LODWORD(v128.__r_.__value_.__l.__data_) = 7565421;
      v95 = std::string::append(&v128, ".arg");
      v96 = *&v95->__r_.__value_.__l.__data_;
      v129.__r_.__value_.__r.__words[2] = v95->__r_.__value_.__r.__words[2];
      *&v129.__r_.__value_.__l.__data_ = v96;
      v95->__r_.__value_.__l.__size_ = 0;
      v95->__r_.__value_.__r.__words[2] = 0;
      v95->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v127, v93);
      if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v97 = &v127;
      }

      else
      {
        v97 = v127.__r_.__value_.__r.__words[0];
      }

      if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v98 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v98 = v127.__r_.__value_.__l.__size_;
      }

      v99 = std::string::append(&v129, v97, v98);
      v100 = *&v99->__r_.__value_.__l.__data_;
      v131 = v99->__r_.__value_.__r.__words[2];
      *v130 = v100;
      v99->__r_.__value_.__l.__size_ = 0;
      v99->__r_.__value_.__r.__words[2] = 0;
      v99->__r_.__value_.__r.__words[0] = 0;
      LOWORD(v146[0].__locale_) = 260;
      __p.__r_.__value_.__r.__words[0] = v130;
      StringAttr = mlir::Builder::getStringAttr((v126 + 184), &__p);
      v154 = 260;
      v150 = &__dst;
      v102 = mlir::Builder::getStringAttr((v126 + 184), &v150);
      mlir::function_interface_impl::setArgAttr<mlir::func::FuncOp>(v134, v93, StringAttr, v102);
      if (SHIBYTE(v131) < 0)
      {
        operator delete(v130[0]);
        if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_202;
        }

LABEL_198:
        if ((SHIBYTE(v129.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_199;
        }

LABEL_203:
        operator delete(v129.__r_.__value_.__l.__data_);
        if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_185;
        }

LABEL_204:
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_186;
        }

LABEL_205:
        operator delete(__dst.__r_.__value_.__l.__data_);
        ++v91;
        v93 = (v93 + 1);
        if (v91 == v92)
        {
          break;
        }
      }

      else
      {
        if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_198;
        }

LABEL_202:
        operator delete(v127.__r_.__value_.__l.__data_);
        if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_203;
        }

LABEL_199:
        if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_204;
        }

LABEL_185:
        operator delete(v128.__r_.__value_.__l.__data_);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_205;
        }

LABEL_186:
        ++v91;
        v93 = (v93 + 1);
        if (v91 == v92)
        {
          break;
        }
      }
    }
  }

  v103 = (*(*a2 + 40))(a2);
  v104 = (*(*v103 + 88))(v103);
  v105 = *v104;
  v106 = v104[1];
  if (*v104 != v106)
  {
    v107 = 0;
    while (1)
    {
      if (*(v105 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__dst, *v105, *(v105 + 1));
      }

      else
      {
        v108 = *v105;
        __dst.__r_.__value_.__r.__words[2] = *(v105 + 2);
        *&__dst.__r_.__value_.__l.__data_ = v108;
      }

      *(&v128.__r_.__value_.__s + 23) = 3;
      LODWORD(v128.__r_.__value_.__l.__data_) = 7565421;
      v109 = std::string::append(&v128, ".output");
      v110 = *&v109->__r_.__value_.__l.__data_;
      v129.__r_.__value_.__r.__words[2] = v109->__r_.__value_.__r.__words[2];
      *&v129.__r_.__value_.__l.__data_ = v110;
      v109->__r_.__value_.__l.__size_ = 0;
      v109->__r_.__value_.__r.__words[2] = 0;
      v109->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v127, v107);
      if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v111 = &v127;
      }

      else
      {
        v111 = v127.__r_.__value_.__r.__words[0];
      }

      if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v112 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v112 = v127.__r_.__value_.__l.__size_;
      }

      v113 = std::string::append(&v129, v111, v112);
      v114 = *&v113->__r_.__value_.__l.__data_;
      v131 = v113->__r_.__value_.__r.__words[2];
      *v130 = v114;
      v113->__r_.__value_.__l.__size_ = 0;
      v113->__r_.__value_.__r.__words[2] = 0;
      v113->__r_.__value_.__r.__words[0] = 0;
      LOWORD(v146[0].__locale_) = 260;
      __p.__r_.__value_.__r.__words[0] = v130;
      v115 = mlir::Builder::getStringAttr((v126 + 184), &__p);
      v154 = 260;
      v150 = &__dst;
      v116 = mlir::Builder::getStringAttr((v126 + 184), &v150);
      mlir::function_interface_impl::setResultAttr<mlir::func::FuncOp>(v134, v107, v115, v116);
      if (SHIBYTE(v131) < 0)
      {
        operator delete(v130[0]);
        if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_225;
        }

LABEL_221:
        if ((SHIBYTE(v129.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_222;
        }

LABEL_226:
        operator delete(v129.__r_.__value_.__l.__data_);
        if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_208;
        }

LABEL_227:
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_209;
        }

LABEL_228:
        operator delete(__dst.__r_.__value_.__l.__data_);
        v105 = (v105 + 24);
        ++v107;
        if (v105 == v106)
        {
          break;
        }
      }

      else
      {
        if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_221;
        }

LABEL_225:
        operator delete(v127.__r_.__value_.__l.__data_);
        if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_226;
        }

LABEL_222:
        if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_227;
        }

LABEL_208:
        operator delete(v128.__r_.__value_.__l.__data_);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_228;
        }

LABEL_209:
        v105 = (v105 + 24);
        ++v107;
        if (v105 == v106)
        {
          break;
        }
      }
    }
  }

  v79 = v134;
  if (v133.__r_.__value_.__r.__words[0])
  {
    v133.__r_.__value_.__l.__size_ = v133.__r_.__value_.__r.__words[0];
    operator delete(v133.__r_.__value_.__l.__data_);
  }

  v73 = v135;
  if (!v135)
  {
    goto LABEL_171;
  }

LABEL_160:
  v74 = v136;
  if (v136 != v73)
  {
    do
    {
      v78 = SHIBYTE(v74[-1].__r_.__value_.__r.__words[2]);
      --v74;
      if (v78 < 0)
      {
        operator delete(v74->__r_.__value_.__l.__data_);
      }
    }

    while (v74 != v73);
    v136 = v73;
    operator delete(v135);
    v75 = v138;
    if (v138)
    {
      goto LABEL_172;
    }

LABEL_162:
    v76 = v141;
    if (!v141)
    {
      return v79;
    }

LABEL_163:
    v142 = v76;
    operator delete(v76);
    return v79;
  }

  v136 = v73;
  operator delete(v73);
  v75 = v138;
  if (!v138)
  {
    goto LABEL_162;
  }

LABEL_172:
  v80 = v139;
  v81 = v75;
  if (v139 != v75)
  {
    v82 = v139;
    do
    {
      v84 = *(v82 - 3);
      v82 -= 3;
      v83 = v84;
      if (v84)
      {
        *(v80 - 2) = v83;
        operator delete(v83);
      }

      v80 = v82;
    }

    while (v82 != v75);
    v81 = v138;
  }

  v139 = v75;
  operator delete(v81);
  v76 = v141;
  if (v141)
  {
    goto LABEL_163;
  }

  return v79;
}

void sub_1E08140F4(_Unwind_Exception *a1)
{
  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
    if ((*(v1 - 121) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v1 - 121) & 0x80000000) == 0)
  {
LABEL_3:
    if (*(v1 - 145) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  operator delete(*(v1 - 144));
  if (*(v1 - 145) < 0)
  {
LABEL_4:
    operator delete(*(v1 - 168));
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    operator delete(v3);
LABEL_10:
    std::vector<std::string>::~vector[abi:ne200100](&v5);
    std::vector<std::vector<mlir::Type>>::~vector[abi:ne200100](&v6);
    if (!v7)
    {
      _Unwind_Resume(a1);
    }

    v8 = v7;
    operator delete(v7);
    _Unwind_Resume(a1);
  }

LABEL_8:
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_1E0814354(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a58 < 0)
  {
    operator delete(__p);
  }

  if (*(v58 - 97) < 0)
  {
    operator delete(*(v58 - 120));
    if ((*(v58 - 121) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((*(v58 - 121) & 0x80000000) == 0)
  {
LABEL_5:
    if (*(v58 - 145) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  operator delete(*(v58 - 144));
  if (*(v58 - 145) < 0)
  {
LABEL_6:
    operator delete(*(v58 - 168));
    if (v59 < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

LABEL_10:
  if (v59 < 0)
  {
LABEL_14:
    JUMPOUT(0x1E08143D0);
  }

LABEL_15:
  JUMPOUT(0x1E08143D4);
}

void sub_1E08143C4()
{
  if (v0)
  {
    JUMPOUT(0x1E08143D0);
  }

  JUMPOUT(0x1E08143D4);
}

uint64_t MILToMLIRRewriter::notifyFailure(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 240) || !MTLReportFailureTypeEnabled())
  {
    return 0;
  }

  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
  MTLReportFailure();

  return 0;
}

void MILToMLIRRewriter::validate(MILToMLIRRewriter *this@<X0>, __CFDictionary *a2@<X1>, void *a3@<X8>)
{
  *(this + 30) = a2;
  v5 = *((*(**this + 72))(*this) + 16);
  if (v5)
  {
    while (1)
    {
      v6 = MILToMLIRRewriter::rewrite(this, v5[5], (v5 + 2));
      if (!v6)
      {
        break;
      }

      mlir::Operation::erase(v6, v7);
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_4;
      }
    }

    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v18);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "Failed to validate function ", 28);
    v9 = *(v5 + 39);
    if (v9 >= 0)
    {
      v10 = (v5 + 2);
    }

    else
    {
      v10 = v5[2];
    }

    if (v9 >= 0)
    {
      v11 = *(v5 + 39);
    }

    else
    {
      v11 = v5[3];
    }

    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ".", 1);
    std::stringbuf::str();
    if (!*(this + 30) && MTLReportFailureTypeEnabled())
    {
      if (v17 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:p_p];
      MTLReportFailure();
    }

    if (v17 < 0)
    {
      operator delete(__p);
    }

    *a3 = 0;
    v18[0] = *MEMORY[0x1E69E54D8];
    v14 = *(MEMORY[0x1E69E54D8] + 72);
    *(v18 + *(v18[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v19 = v14;
    v20 = MEMORY[0x1E69E5548] + 16;
    if (v22 < 0)
    {
      operator delete(v21[7].__locale_);
    }

    v20 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v21);
    std::iostream::~basic_iostream();
    MEMORY[0x1E12E5AA0](&v23);
  }

  else
  {
LABEL_4:
    *a3 = *(this + 27);
  }
}

void sub_1E08148B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
    _Unwind_Resume(a1);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

void MILToMLIRRewriter::getOptionalArgValues(MILToMLIRRewriter *this, const MIL::IROperation *a2, const MIL::IROperation *a3, const char *a4)
{
  v8 = (*(*a3 + 160))(a3);
  v9 = strlen(a4);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  v49 = this;
  v51 = a2;
  if (v9 >= 0x17)
  {
    operator new();
  }

  v53 = v9;
  if (v9)
  {
    memcpy(__dst, a4, v9);
    *(&__dst[0].var0.var0 + v10) = 0;
    v14 = *(v8 + 8);
    v11 = v8 + 8;
    v12 = v14;
    if (!v14)
    {
LABEL_46:
      v17 = v11;
      goto LABEL_47;
    }
  }

  else
  {
    LOBYTE(__dst[0].var0.var0) = 0;
    v13 = *(v8 + 8);
    v11 = v8 + 8;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_46;
    }
  }

  if ((v53 & 0x80u) == 0)
  {
    var0 = v53;
  }

  else
  {
    var0 = __dst[1].var0.var0;
  }

  if ((v53 & 0x80u) == 0)
  {
    v16 = __dst;
  }

  else
  {
    v16 = __dst[0].var0.var0;
  }

  v17 = v11;
  do
  {
    v18 = *(v12 + 55);
    if (v18 >= 0)
    {
      v19 = *(v12 + 55);
    }

    else
    {
      v19 = *(v12 + 40);
    }

    if (v18 >= 0)
    {
      v20 = (v12 + 32);
    }

    else
    {
      v20 = *(v12 + 32);
    }

    if (var0 >= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = var0;
    }

    v22 = memcmp(v20, v16, v21);
    v23 = v19 < var0;
    if (v22)
    {
      v23 = v22 < 0;
    }

    v24 = !v23;
    if (v23)
    {
      v25 = 8;
    }

    else
    {
      v25 = 0;
    }

    if (v24)
    {
      v17 = v12;
    }

    v12 = *(v12 + v25);
  }

  while (v12);
  if (v17 == v11)
  {
    goto LABEL_46;
  }

  v26 = *(v17 + 55);
  if (v26 >= 0)
  {
    v27 = *(v17 + 55);
  }

  else
  {
    v27 = *(v17 + 40);
  }

  if (v26 >= 0)
  {
    v28 = (v17 + 32);
  }

  else
  {
    v28 = *(v17 + 32);
  }

  if (v27 >= var0)
  {
    v29 = var0;
  }

  else
  {
    v29 = v27;
  }

  v30 = memcmp(v16, v28, v29);
  v31 = var0 < v27;
  if (v30)
  {
    v31 = v30 < 0;
  }

  if (v31)
  {
    goto LABEL_46;
  }

LABEL_47:
  v32 = (*(*a3 + 160))(a3) + 8;
  v33 = v51;
  if ((v53 & 0x80000000) == 0)
  {
    if (v17 != v32)
    {
      goto LABEL_49;
    }

LABEL_54:
    *v49 = 0;
    *(v49 + 24) = 0;
    return;
  }

  operator delete(__dst[0].var0.var0);
  if (v17 == v32)
  {
    goto LABEL_54;
  }

LABEL_49:
  v34 = strlen(a4);
  if (v34 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v35 = v34;
  if (v34 >= 0x17)
  {
    operator new();
  }

  v53 = v34;
  if (v34)
  {
    memcpy(__dst, a4, v34);
  }

  *(&__dst[0].var0.var0 + v35) = 0;
  v50 = (*(*a3 + 152))(a3, __dst);
  if (v53 < 0)
  {
    operator delete(__dst[0].var0.var0);
    if (v50)
    {
LABEL_59:
      v36 = 0;
      v37 = 0;
      do
      {
        v38 = strlen(a4);
        if (v38 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v39 = v38;
        if (v38 >= 0x17)
        {
          operator new();
        }

        v53 = v38;
        if (v38)
        {
          memcpy(__dst, a4, v38);
        }

        *(&__dst[0].var0.var0 + v39) = 0;
        v40 = (*(*a3 + 120))(a3, __dst, v36);
        v41 = v40;
        if (v53 < 0)
        {
          operator delete(__dst[0].var0.var0);
          if (v41)
          {
LABEL_69:
            v42 = std::__hash_table<std::__hash_value_type<std::string,std::vector<mlir::Value>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<mlir::Value>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<mlir::Value>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<mlir::Value>>>>::find<std::string>(v33 + 8, v41);
            if (v42)
            {
              if (v42[6] - v42[5] >= 0)
              {
                operator new();
              }

              std::vector<long>::__throw_length_error[abi:ne200100]();
            }

            operator new();
          }
        }

        else if (v40)
        {
          goto LABEL_69;
        }

        v43 = strlen(a4);
        if (v43 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v44 = v43;
        if (v43 >= 0x17)
        {
          operator new();
        }

        v53 = v43;
        if (v43)
        {
          memcpy(__dst, a4, v43);
        }

        *(&__dst[0].var0.var0 + v44) = 0;
        v45 = (*(*a3 + 128))(a3, __dst, v36);
        if (v53 < 0)
        {
          operator delete(__dst[0].var0.var0);
        }

        if (!v45)
        {
          operator new();
        }

        __dst[0].var0.var0 = MILToMLIRRewriter::getLocationForOp(v33, a3);
        v46 = MILToMLIRRewriter::materializeConstant(v33, v45, __dst);
        v47 = v37;
        v48 = v37 >> 3;
        if (((v37 >> 3) + 1) >> 61)
        {
          std::vector<long>::__throw_length_error[abi:ne200100]();
        }

        if (v37 >> 3 != -1)
        {
          if (!(((v37 >> 3) + 1) >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v48) = v46;
        v37 = 8 * v48 + 8;
        memcpy(0, 0, v47);
        v33 = v51;
        v36 = (v36 + 1);
      }

      while (v50 != v36);
      goto LABEL_90;
    }
  }

  else if (v50)
  {
    goto LABEL_59;
  }

  v37 = 0;
LABEL_90:
  *v49 = 0;
  *(v49 + 1) = v37;
  *(v49 + 2) = 0;
  *(v49 + 24) = 1;
}

void sub_1E081545C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v45 - 89) < 0)
  {
    operator delete(*(v45 - 112));
    if ((a44 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a18 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a44 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((a18 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a37 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a13);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a30 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a32);
  if ((a30 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a24 & 0x80000000) == 0)
    {
LABEL_14:
      if (v44)
      {
        operator delete(v44);
      }

      _Unwind_Resume(exception_object);
    }

LABEL_13:
    operator delete(a19);
    goto LABEL_14;
  }

LABEL_12:
  operator delete(a25);
  if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

char *MILToMLIRRewriter::materializeConstant(mlir::MLIRContext **this, const MIL::IRValue *a2, Location *a3)
{
  v118[38] = *MEMORY[0x1E69E9840];
  result = (*(*a2 + 40))(a2);
  if (!result)
  {
    return result;
  }

  v7 = (*(*result + 32))(result);
  result = getMLIRType(v7, this[23]);
  v110 = result;
  if (!result)
  {
    return result;
  }

  v8 = result;
  if (v109 != 1)
  {
    goto LABEL_16;
  }

  v9 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(this + 13, __p);
  if (v9)
  {
    if (*(v9 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v103, v9[5], v9[6]);
    }

    else
    {
      v103 = *(v9 + 5);
    }

    v104 = 1;
    var0 = a3->var0.var0;
    v111 = a3->var0.var0;
    Context = mlir::Attribute::getContext(&v111);
    v32 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id, Context);
    if ((v33 & 1) == 0)
    {
      v115 = 1283;
      v114[2] = "mps.read_data_from_file";
      v114[3] = 23;
      v113 = 259;
      llvm::operator+(v114, &v112, &v116);
      llvm::report_fatal_error(&v116, 1);
    }

    mlir::OperationState::OperationState(v118, var0, v32);
    if ((v106 & 0x80u) == 0)
    {
      v34 = __p;
    }

    else
    {
      v34 = __p[0];
    }

    if ((v106 & 0x80u) == 0)
    {
      v35 = v106;
    }

    else
    {
      v35 = __p[1];
    }

    if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = &v103;
    }

    else
    {
      v36 = v103.__r_.__value_.__r.__words[0];
    }

    if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v103.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v103.__r_.__value_.__l.__size_;
    }

    mlir::mps::ReadDataFromFileOp::build(this + 23, v118, v8, v34, v35, v107, v36, size);
    v38 = mlir::OpBuilder::create((this + 23), v118);
    v39 = *(*(v38 + 6) + 16);
    mlir::OperationState::~OperationState(v118);
    if (v39 == &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id)
    {
      v40 = v38;
    }

    else
    {
      v40 = 0;
    }

    result = v40 - 16;
    if (v104 == 1 && SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
    {
      v41 = v40 - 16;
      operator delete(v103.__r_.__value_.__l.__data_);
      result = v41;
    }

LABEL_40:
    if (v109 != 1)
    {
      return result;
    }

    goto LABEL_41;
  }

  if ((v109 & 1) == 0)
  {
LABEL_16:
    result = MILToMLIRRewriter::materializeConstantToAttribute(this, a2);
LABEL_17:
    v116 = result;
    v117 = v29;
    if (result)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

  v10 = v106;
  if ((v106 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v106 & 0x80u) != 0)
  {
    v10 = __p[1];
  }

  v12 = llvm::hashing::detail::hash_combine_range_impl<std::__wrap_iter<char const*>>(v11, v11 + v10);
  v13 = this[19];
  if (!*&v13)
  {
    goto LABEL_85;
  }

  v15 = v107;
  v14 = v108;
  v16 = 0x9DDFEA08EB382D69 * ((8 * v107 - 0xAE502812AA7333) ^ HIDWORD(v107));
  v17 = 0x9DDFEA08EB382D69 * (HIDWORD(v107) ^ (v16 >> 47) ^ v16);
  v18 = v17 ^ (v17 >> 47);
  v19 = 0x9DDFEA08EB382D69 * v18;
  v20 = 0x9DDFEA08EB382D69 * ((8 * v108 - 0xAE502812AA7333) ^ HIDWORD(v108));
  v21 = 0x9DDFEA08EB382D69 * (HIDWORD(v108) ^ (v20 >> 47) ^ v20);
  v22 = 0x86D804B173C04367 * (v21 ^ (v21 >> 47));
  v23 = __ROR8__(0xB492B66FBE98F273 * v12 - 0x9DDFEA08EB382D69 * v18, 43) + 0x6C105E72878303FFLL * v18 + __ROR8__(v22 ^ 0xFF51AFD7ED558CCDLL, 30);
  v24 = 0xB492B66FBE98F273 * v12 - 0xAE502812AA7333 - v22 + __ROR8__(v19 ^ 0xC949D7C7509E6557, 20) + 24;
  v25 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ ((0x9DDFEA08EB382D69 * (v23 ^ v24)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ v24)))) ^ ((0x9DDFEA08EB382D69 * (v24 ^ ((0x9DDFEA08EB382D69 * (v23 ^ v24)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ v24)))) >> 47));
  v26 = vcnt_s8(v13);
  v26.i16[0] = vaddlv_u8(v26);
  if (v26.u32[0] > 1uLL)
  {
    v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ ((0x9DDFEA08EB382D69 * (v23 ^ v24)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ v24)))) ^ ((0x9DDFEA08EB382D69 * (v24 ^ ((0x9DDFEA08EB382D69 * (v23 ^ v24)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ v24)))) >> 47));
    v28 = this + 18;
    if (v25 >= *&v13)
    {
      v27 = v25 % *&v13;
    }
  }

  else
  {
    v27 = v25 & (*&v13 - 1);
    v28 = this + 18;
  }

  v43 = *(*v28 + v27);
  if (!v43)
  {
    goto LABEL_85;
  }

  v44 = *v43;
  if (!*v43)
  {
    goto LABEL_85;
  }

  if ((v106 & 0x80u) == 0)
  {
    v45 = v106;
  }

  else
  {
    v45 = __p[1];
  }

  v46 = __p;
  if ((v106 & 0x80u) != 0)
  {
    v46 = __p[0];
  }

  __s2 = v46;
  v101 = v108;
  if (v26.u32[0] < 2uLL)
  {
    v47 = *&v13 - 1;
    while (1)
    {
      v53 = v44[1];
      if (v25 == v53)
      {
        if (v44[5] == v15 && v44[6] == v14)
        {
          v54 = *(v44 + 39);
          v55 = v54;
          if (v54 < 0)
          {
            v54 = v44[3];
          }

          if (v54 == v45)
          {
            v56 = v55 >= 0 ? (v44 + 2) : v44[2];
            v57 = memcmp(v56, __s2, v45);
            v14 = v101;
            if (!v57)
            {
              goto LABEL_82;
            }
          }
        }
      }

      else if ((v53 & v47) != v27)
      {
        goto LABEL_85;
      }

      v44 = *v44;
      if (!v44)
      {
        goto LABEL_85;
      }
    }
  }

  while (1)
  {
    v48 = v44[1];
    if (v25 == v48)
    {
      break;
    }

    if (v48 >= *&v13)
    {
      v48 %= *&v13;
    }

    if (v48 != v27)
    {
      goto LABEL_85;
    }

LABEL_56:
    v44 = *v44;
    if (!v44)
    {
      goto LABEL_85;
    }
  }

  if (v44[5] != v15 || v44[6] != v14)
  {
    goto LABEL_56;
  }

  v49 = *(v44 + 39);
  v50 = v49;
  if (v49 < 0)
  {
    v49 = v44[3];
  }

  if (v49 != v45)
  {
    goto LABEL_56;
  }

  v51 = v50 >= 0 ? (v44 + 2) : v44[2];
  v52 = memcmp(v51, __s2, v45);
  v14 = v101;
  if (v52)
  {
    goto LABEL_56;
  }

LABEL_82:
  v58 = v44[7];
  if (v58)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v44[7]);
    if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(v8))
    {
      v60 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v58 + 8);
      v61 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
      result = mlir::reshapeElementsAttr(v58, v60, v8, v61);
      goto LABEL_17;
    }
  }

LABEL_85:
  v62 = MILToMLIRRewriter::materializeConstantToAttribute(this, a2);
  v64 = v62;
  if (!v62)
  {
    result = 0;
    if (v109 != 1)
    {
      return result;
    }

    goto LABEL_41;
  }

  v65 = v63;
  if (*(*v62 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
  {
    goto LABEL_139;
  }

  v66 = v106;
  if ((v106 & 0x80u) == 0)
  {
    v67 = __p;
  }

  else
  {
    v67 = __p[0];
  }

  if ((v106 & 0x80u) != 0)
  {
    v66 = __p[1];
  }

  v68 = llvm::hashing::detail::hash_combine_range_impl<std::__wrap_iter<char const*>>(v67, v67 + v66);
  v70 = v107;
  v69 = v108;
  v71 = 0x9DDFEA08EB382D69 * ((8 * v107 - 0xAE502812AA7333) ^ HIDWORD(v107));
  v72 = 0x9DDFEA08EB382D69 * (HIDWORD(v107) ^ (v71 >> 47) ^ v71);
  v73 = v72 ^ (v72 >> 47);
  v74 = 0x9DDFEA08EB382D69 * ((8 * v108 - 0xAE502812AA7333) ^ HIDWORD(v108));
  v75 = 0x9DDFEA08EB382D69 * (HIDWORD(v108) ^ (v74 >> 47) ^ v74);
  v76 = 0x86D804B173C04367 * (v75 ^ (v75 >> 47));
  v77 = 0xFF51AFD7ED558CCDLL - 0x4B6D499041670D8DLL * v68 - v76 + __ROR8__((0x9DDFEA08EB382D69 * v73) ^ 0xC949D7C7509E6557, 20) + 24;
  v78 = 0x9DDFEA08EB382D69 * ((__ROR8__(0xB492B66FBE98F273 * v68 - 0x9DDFEA08EB382D69 * v73, 43) + 0x6C105E72878303FFLL * v73 + __ROR8__(v76 ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v77);
  v79 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v77 ^ (v78 >> 47) ^ v78)) ^ ((0x9DDFEA08EB382D69 * (v77 ^ (v78 >> 47) ^ v78)) >> 47));
  v80 = this[19];
  if (!*&v80)
  {
    goto LABEL_137;
  }

  v81 = vcnt_s8(v80);
  v81.i16[0] = vaddlv_u8(v81);
  if (v81.u32[0] > 1uLL)
  {
    v82 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v77 ^ (v78 >> 47) ^ v78)) ^ ((0x9DDFEA08EB382D69 * (v77 ^ (v78 >> 47) ^ v78)) >> 47));
    if (v79 >= *&v80)
    {
      v82 = v79 % *&v80;
    }
  }

  else
  {
    v82 = v79 & (*&v80 - 1);
  }

  v83 = *(this[18] + v82);
  if (!v83 || (v84 = *v83) == 0)
  {
LABEL_137:
    operator new();
  }

  if ((v106 & 0x80u) == 0)
  {
    v85 = v106;
  }

  else
  {
    v85 = __p[1];
  }

  v86 = __p;
  if ((v106 & 0x80u) != 0)
  {
    v86 = __p[0];
  }

  __s2a = v65;
  v102 = v86;
  if (v81.u32[0] < 2uLL)
  {
    v98 = v108;
    while (1)
    {
      v93 = v84[1];
      if (v93 == v79)
      {
        if (v84[5] == v70 && v84[6] == v69)
        {
          v94 = *(v84 + 39);
          v95 = v94;
          if (v94 < 0)
          {
            v94 = v84[3];
          }

          if (v94 == v85)
          {
            v96 = v95 >= 0 ? (v84 + 2) : v84[2];
            v97 = memcmp(v96, v102, v85);
            v69 = v98;
            if (!v97)
            {
              goto LABEL_138;
            }
          }
        }
      }

      else if ((v93 & (*&v80 - 1)) != v82)
      {
        goto LABEL_137;
      }

      v84 = *v84;
      if (!v84)
      {
        goto LABEL_137;
      }
    }
  }

  while (2)
  {
    v87 = v84[1];
    if (v87 != v79)
    {
      if (v87 >= *&v80)
      {
        v87 %= *&v80;
      }

      if (v87 != v82)
      {
        goto LABEL_137;
      }

      goto LABEL_110;
    }

    if (v84[5] != v70 || v84[6] != v69)
    {
      goto LABEL_110;
    }

    v88 = *(v84 + 39);
    v89 = v88;
    if (v88 < 0)
    {
      v88 = v84[3];
    }

    if (v88 != v85 || (v89 >= 0 ? (v90 = (v84 + 2)) : (v90 = v84[2]), v91 = v69, v92 = memcmp(v90, v102, v85), v69 = v91, v65 = __s2a, v92))
    {
LABEL_110:
      v84 = *v84;
      if (!v84)
      {
        goto LABEL_137;
      }

      continue;
    }

    break;
  }

LABEL_138:
  v84[7] = v64;
LABEL_139:
  v116 = v64;
  v117 = v65;
LABEL_18:
  result = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::RankedTensorType &,mlir::ElementsAttr &>((this + 23), a3->var0.var0, &v110, &v116) - 16;
  if (v109 == 1)
  {
LABEL_41:
    if (v106 < 0)
    {
      v42 = result;
      operator delete(__p[0]);
      return v42;
    }
  }

  return result;
}

void sub_1E08162A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,void *>>>>::~unique_ptr[abi:ne200100](&a47);
  if (a29 == 1 && a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t MILToMLIRRewriter::notifyFailure(uint64_t a1, uint64_t a2, const std::string::value_type *a3)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 240);
  if (v6)
  {
    HIBYTE(v26) = 5;
    strcpy(__p, "milId");
    if (MIL::IRObject::TryGetAttribute())
    {
      v7 = MIL::IRValue::GetScalar<unsigned long long>();
      v28[0] = &unk_1F5B75A40;
      v27[0] = @"support";
      v27[1] = @"errorMsg";
      if (a3[23] >= 0)
      {
        v8 = a3;
      }

      else
      {
        v8 = *a3;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
      v28[1] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];

      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v7];
      v12 = v10;
      CFDictionarySetValue(v6, v11, v12);
      CFRelease(v11);
      CFRelease(v12);
    }
  }

  (*(*a2 + 16))(&v23, a2);
  v13 = std::string::append(&v23, ": ");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = a3[23];
  if (v15 >= 0)
  {
    v16 = a3;
  }

  else
  {
    v16 = *a3;
  }

  if (v15 >= 0)
  {
    v17 = *(a3 + 23);
  }

  else
  {
    v17 = *(a3 + 1);
  }

  v18 = std::string::append(&v24, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v26 = v18->__r_.__value_.__r.__words[2];
  *__p = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (!*(a1 + 240) && MTLReportFailureTypeEnabled())
  {
    if (v26 >= 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v20];
    MTLReportFailure();
  }

  if ((SHIBYTE(v26) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    operator delete(v24.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 0;
    }

LABEL_25:
    operator delete(v23.__r_.__value_.__l.__data_);
    return 0;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_25;
  }

  return 0;
}

void sub_1E08165F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a15 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a10);
      _Unwind_Resume(a1);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t MILToMLIRRewriter::getOptionalArgValue(MILToMLIRRewriter *this, const MIL::IROperation *a2, const char *a3)
{
  MILToMLIRRewriter::getOptionalArgValues(v17, this, a2, a3);
  if (v18 == 1)
  {
    v6 = v17[0];
    if (v17[1] - v17[0] == 8)
    {
LABEL_6:
      v11 = *v6;
      operator delete(v6);
      return v11;
    }

    *(&v13.__r_.__value_.__s + 23) = 10;
    strcpy(&v13, "Parameter ");
    v7 = std::string::append(&v13, a3);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v14, " does not map to a single value.");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v16 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    MILToMLIRRewriter::notifyFailure(this, a2, __p);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_5:
        if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

LABEL_10:
        operator delete(v13.__r_.__value_.__l.__data_);
        goto LABEL_6;
      }
    }

    else if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(v14.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  return 0;
}

void sub_1E081680C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a15 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_4:
    if (!v28)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a10);
  if (!v28)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(v28);
  _Unwind_Resume(exception_object);
}

void MILToMLIRRewriter::getArgValues(uint64_t *__return_ptr a1@<X8>, MILToMLIRRewriter *this@<X0>, const MIL::IROperation *a3@<X1>, const char *a4@<X2>)
{
  MILToMLIRRewriter::getOptionalArgValues(&v6, this, a3, a4);
  v5 = v8;
  if ((v8 & 1) == 0)
  {
    operator new();
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if (v6 && v5)
  {
    operator delete(v6);
  }
}

void sub_1E0816A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(exception_object);
  }

  _Unwind_Resume(a1);
}

uint64_t MILToMLIRRewriter::getArgValue(MILToMLIRRewriter *this, const MIL::IROperation *a2, const char *a3)
{
  MILToMLIRRewriter::getArgValues(v17, this, a2, a3);
  v6 = v17[0];
  if (v17[1] - v17[0] != 8)
  {
    *(&v13.__r_.__value_.__s + 23) = 10;
    strcpy(&v13, "Parameter ");
    v7 = std::string::append(&v13, a3);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v14, " does not map to a single value.");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v16 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    MILToMLIRRewriter::notifyFailure(this, a2, __p);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_4:
        if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }

LABEL_8:
        operator delete(v13.__r_.__value_.__l.__data_);
        goto LABEL_5;
      }
    }

    else if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(v14.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

LABEL_5:
  v11 = *v6;
  operator delete(v6);
  return v11;
}

void sub_1E0816BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a15 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_4:
    if (!v28)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a10);
  if (!v28)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(v28);
  _Unwind_Resume(exception_object);
}

void *MILToMLIRRewriter::materializeConstantToAttribute(mlir::MLIRContext **this, const MIL::IRValue *a2)
{
  v4 = (*(*a2 + 40))(a2);
  if (!v4)
  {
    operator new();
  }

  v5 = (*(*v4 + 32))();
  MLIRType = getMLIRType(v5, this[23]);
  if (MLIRType)
  {
    v7 = MLIRType;
    v8 = (*(*v5 + 88))(v5) - 2;
    result = 0;
    switch(v8)
    {
      case 0:
        MIL::IRValue::AsTensor(a2);
        Data = MIL::IRTensorValue::GetDataView<BOOL>();
        return mlir::createElementsAttr<BOOL>(v7, Data, v11);
      case 1:
        return result;
      case 2:
        MIL::IRValue::AsTensor(a2);
        v19 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
        goto LABEL_27;
      case 3:
        MIL::IRValue::AsTensor(a2);
        v15 = MIL::IRTensorValue::GetDataView<float>();
        goto LABEL_24;
      case 7:
        MIL::IRValue::AsTensor(a2);
        v25 = MIL::IRTensorValue::GetDataView<signed char>();
        goto LABEL_31;
      case 8:
        MIL::IRValue::AsTensor(a2);
        v19 = MIL::IRTensorValue::GetDataView<short>();
        goto LABEL_27;
      case 9:
        MIL::IRValue::AsTensor(a2);
        v15 = MIL::IRTensorValue::GetDataView<int>();
        goto LABEL_24;
      case 11:
        v17 = MIL::IRTensorValue::GetDataView<MIL::Int4>();
        goto LABEL_19;
      case 12:
        MIL::IRValue::AsTensor(a2);
        v25 = MIL::IRTensorValue::GetDataView<unsigned char>();
LABEL_31:
        v29 = v25;
        v30 = v26;
        v27 = v7;
        v28 = v29;
        v14 = v30;
        goto LABEL_29;
      case 13:
        MIL::IRValue::AsTensor(a2);
        v19 = MIL::IRTensorValue::GetDataView<unsigned short>();
LABEL_27:
        v12 = v19;
        v14 = 2 * v20;
        goto LABEL_28;
      case 14:
        MIL::IRValue::AsTensor(a2);
        v15 = MIL::IRTensorValue::GetDataView<unsigned int>();
LABEL_24:
        v12 = v15;
        v14 = 4 * v16;
        goto LABEL_28;
      case 17:
        v12 = MIL::IRTensorValue::GetDataView<MIL::UInt2>();
        v22 = v21 + 3;
        goto LABEL_22;
      case 18:
        v17 = MIL::IRTensorValue::GetDataView<MIL::UInt4>();
LABEL_19:
        v12 = v17;
        v14 = (v18 + 1) >> 1;
        goto LABEL_28;
      case 19:
        v12 = MIL::IRTensorValue::GetDataView<MIL::UInt1>();
        v14 = (v13 + 7) >> 3;
        goto LABEL_28;
      case 20:
        v12 = MIL::IRTensorValue::GetDataView<MIL::UInt3>();
        v14 = (3 * v23 + 7) >> 3;
        goto LABEL_28;
      case 21:
        v12 = MIL::IRTensorValue::GetDataView<MIL::UInt6>();
        v22 = 3 * v24 + 3;
LABEL_22:
        v14 = v22 >> 2;
LABEL_28:
        v27 = v7;
        v28 = v12;
LABEL_29:
        result = mlir::createRawElementsAttr(v27, v28, v14);
        break;
      default:
        operator new();
    }
  }

  else
  {
    v32[23] = 19;
    strcpy(v32, "Unexpected MIL type");
    if (!this[30])
    {
      if (MTLReportFailureTypeEnabled())
      {
        v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v32];
        MTLReportFailure();

        if (v32[23] < 0)
        {
          operator delete(*v32);
        }
      }
    }

    return 0;
  }

  return result;
}

void anonymous namespace::getMILConstantInfo(_anonymous_namespace_ *this, const MIL::IRValue *a2, const MILToMLIRRewriter *a3)
{
  v5 = (*(*a2 + 40))(a2);
  if (!v5)
  {
    goto LABEL_57;
  }

  v6 = v5;
  if (((*(*v5 + 80))() & 1) == 0)
  {
    goto LABEL_57;
  }

  v7 = (*(*v6 + 96))(v6);
  if (!v7)
  {
    goto LABEL_57;
  }

  v8 = v7;
  (*(**a3 + 40))();
  MIL::Blob::TryGetDataOffsetAndByteLength();
  if ((v36 & 1) == 0)
  {
    goto LABEL_57;
  }

  *(&__p.__r_.__value_.__s + 23) = 4;
  strcpy(&__p, "path");
  v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v35, &__p, 4uLL);
  v10 = v8[1];
  if (!*&v10)
  {
    goto LABEL_44;
  }

  v11 = v9;
  v12 = vcnt_s8(v10);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = v9;
    if (v9 >= *&v10)
    {
      v13 = v9 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v9;
  }

  v14 = *(*v8 + 8 * v13);
  if (v14)
  {
    v15 = *v14;
    if (*v14)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (v12.u32[0] < 2uLL)
      {
        v18 = *&v10 - 1;
        while (1)
        {
          v23 = v15[1];
          if (v11 == v23)
          {
            v24 = *(v15 + 39);
            v25 = v24;
            if (v24 < 0)
            {
              v24 = v15[3];
            }

            if (v24 == size)
            {
              v26 = v25 >= 0 ? (v15 + 2) : v15[2];
              if (!memcmp(v26, p_p, size))
              {
                goto LABEL_45;
              }
            }
          }

          else if ((v23 & v18) != v13)
          {
            goto LABEL_44;
          }

          v15 = *v15;
          if (!v15)
          {
            goto LABEL_45;
          }
        }
      }

      do
      {
        v19 = v15[1];
        if (v11 == v19)
        {
          v20 = *(v15 + 39);
          v21 = v20;
          if (v20 < 0)
          {
            v20 = v15[3];
          }

          if (v20 == size)
          {
            v22 = v21 >= 0 ? (v15 + 2) : v15[2];
            if (!memcmp(v22, p_p, size))
            {
              break;
            }
          }
        }

        else
        {
          if (v19 >= *&v10)
          {
            v19 %= *&v10;
          }

          if (v19 != v13)
          {
            goto LABEL_44;
          }
        }

        v15 = *v15;
      }

      while (v15);
    }
  }

  else
  {
LABEL_44:
    v15 = 0;
  }

LABEL_45:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (!v15 || !v15[5])
  {
LABEL_57:
    *this = 0;
    *(this + 40) = 0;
    return;
  }

  MIL::IRValue::GetScalar<std::string>();
  memset(&v34, 0, sizeof(v34));
  v27 = SHIBYTE(v35.__r_.__value_.__r.__words[2]);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &v35;
  }

  else
  {
    v28 = v35.__r_.__value_.__r.__words[0];
  }

  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = v35.__r_.__value_.__l.__size_;
  }

  std::string::append[abi:ne200100]<char const*,0>(&v34.__pn_, v28, (v28 + v27));
  if (std::__fs::filesystem::path::__root_directory(&v34).__size_)
  {
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v33, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
    }

    else
    {
      v33 = v35;
    }
  }

  else
  {
    std::__fs::filesystem::__absolute(&__p, &v34, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v33, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v33 = __p;
    }
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
    v30 = SHIBYTE(v33.__r_.__value_.__r.__words[2]);
    v32 = v37;
    *this = __p;
    *(this + 24) = v32;
    *(this + 40) = 1;
    if (v30 < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v34.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_70;
      }
    }

    else if ((SHIBYTE(v34.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_70;
    }

LABEL_66:
    operator delete(v34.__pn_.__r_.__value_.__l.__data_);
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_71;
    }

    return;
  }

  v29 = v33.__r_.__value_.__r.__words[2];
  v32 = v37;
  *this = *&v33.__r_.__value_.__l.__data_;
  *(this + 2) = v29;
  *(this + 24) = v32;
  *(this + 40) = 1;
  if (SHIBYTE(v34.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_66;
  }

LABEL_70:
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_71:
    operator delete(v35.__r_.__value_.__l.__data_);
  }
}

void sub_1E08174F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
    if ((a35 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((a35 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

  operator delete(a30);
  _Unwind_Resume(a1);
}

char *mlir::OpBuilder::create<mlir::func::ReturnOp,std::vector<mlir::Value> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "func.return";
    v15[3] = 11;
    v14 = 259;
    llvm::operator+(v15, &v13, v18);
    llvm::report_fatal_error(v18, 1);
  }

  mlir::OperationState::OperationState(v17, a2, v7);
  mlir::ValueRange::ValueRange(v18, *a3, (a3[1] - *a3) >> 3);
  mlir::func::ReturnOp::build(a1, v17, v18[0], v18[1]);
  v9 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v10;
}

void sub_1E08176B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E08176C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

uint64_t MILToMLIRRewriter::getMLIRElemType(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    v3 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_3:
      if (v3 != 4)
      {
        if (v3 != 5)
        {
          if (v3 == 6)
          {
            if (LODWORD(__p.__r_.__value_.__l.__data_) != 1953393013 || WORD2(__p.__r_.__value_.__r.__words[0]) != 13873)
            {
LABEL_10:
              if (LODWORD(__p.__r_.__value_.__l.__data_) != 1953393013 || WORD2(__p.__r_.__value_.__r.__words[0]) != 12851)
              {
                if (LODWORD(__p.__r_.__value_.__l.__data_) != 1953393013 || WORD2(__p.__r_.__value_.__r.__words[0]) != 13366)
                {
                  goto LABEL_96;
                }

                goto LABEL_104;
              }

LABEL_99:
              v26 = mlir::IntegerType::get(*(a1 + 184), 0x20u, 2u);
              result = mlir::TypeAttr::get(v26);
              goto LABEL_105;
            }

LABEL_90:
            v20 = mlir::IntegerType::get(*(a1 + 184), 0x10u, 2u);
            result = mlir::TypeAttr::get(v20);
            goto LABEL_105;
          }

LABEL_96:
          if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "fp32"))
          {
            v25 = mlir::Float32Type::get(*(a1 + 184), v24);
            result = mlir::TypeAttr::get(v25);
          }

          else
          {
            result = 0;
          }

          goto LABEL_105;
        }

        if (LODWORD(__p.__r_.__value_.__l.__data_) != 829714025 || __p.__r_.__value_.__s.__data_[4] != 54)
        {
          if (LODWORD(__p.__r_.__value_.__l.__data_) != 863268457 || __p.__r_.__value_.__s.__data_[4] != 50)
          {
            if (LODWORD(__p.__r_.__value_.__l.__data_) != 913600105 || __p.__r_.__value_.__s.__data_[4] != 52)
            {
              if (LODWORD(__p.__r_.__value_.__l.__data_) != 1953393013 || __p.__r_.__value_.__s.__data_[4] != 56)
              {
LABEL_87:
                if (v3 != 4)
                {
                  goto LABEL_96;
                }

LABEL_88:
                if (LODWORD(__p.__r_.__value_.__l.__data_) != 909209702)
                {
                  goto LABEL_96;
                }

LABEL_102:
                v29 = mlir::Float16Type::get(*(a1 + 184), a2);
                result = mlir::TypeAttr::get(v29);
                goto LABEL_105;
              }

LABEL_101:
              v28 = mlir::IntegerType::get(*(a1 + 184), 8u, 2u);
              result = mlir::TypeAttr::get(v28);
              goto LABEL_105;
            }

LABEL_103:
            v30 = mlir::IntegerType::get(*(a1 + 184), 0x40u, 1u);
            result = mlir::TypeAttr::get(v30);
            goto LABEL_105;
          }

LABEL_93:
          v23 = mlir::IntegerType::get(*(a1 + 184), 0x20u, 1u);
          result = mlir::TypeAttr::get(v23);
          goto LABEL_105;
        }

LABEL_75:
        v16 = mlir::IntegerType::get(*(a1 + 184), 0x10u, 1u);
        result = mlir::TypeAttr::get(v16);
        goto LABEL_105;
      }

      if (LODWORD(__p.__r_.__value_.__l.__data_) != 880045673)
      {
        if (LODWORD(__p.__r_.__value_.__l.__data_) != 947154537)
        {
          if (LODWORD(__p.__r_.__value_.__l.__data_) != 1819242338)
          {
            goto LABEL_88;
          }

LABEL_91:
          v21 = mlir::IntegerType::get(*(a1 + 184), 1u, 0);
          result = mlir::TypeAttr::get(v21);
          goto LABEL_105;
        }

LABEL_100:
        v27 = mlir::IntegerType::get(*(a1 + 184), 8u, 1u);
        result = mlir::TypeAttr::get(v27);
        goto LABEL_105;
      }

LABEL_92:
      v22 = mlir::IntegerType::get(*(a1 + 184), 4u, 1u);
      result = mlir::TypeAttr::get(v22);
      goto LABEL_105;
    }
  }

  else
  {
    __p = *a2;
    v3 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  if (__p.__r_.__value_.__l.__size_ == 4)
  {
    switch(*__p.__r_.__value_.__l.__data_)
    {
      case 0x6C6F6F62:
        goto LABEL_91;
      case 0x34746E69:
        goto LABEL_92;
      case 0x38746E69:
        goto LABEL_100;
    }
  }

  else if (__p.__r_.__value_.__l.__size_ == 5)
  {
    if (*__p.__r_.__value_.__l.__data_ == 829714025 && *(__p.__r_.__value_.__r.__words[0] + 4) == 54)
    {
      goto LABEL_75;
    }

    if (*__p.__r_.__value_.__l.__data_ == 863268457 && *(__p.__r_.__value_.__r.__words[0] + 4) == 50)
    {
      goto LABEL_93;
    }

    if (*__p.__r_.__value_.__l.__data_ == 913600105 && *(__p.__r_.__value_.__r.__words[0] + 4) == 52)
    {
      goto LABEL_103;
    }
  }

  if (__p.__r_.__value_.__l.__size_ == 5 && *__p.__r_.__value_.__l.__data_ == 1953393013 && *(__p.__r_.__value_.__r.__words[0] + 4) == 56)
  {
    goto LABEL_101;
  }

  if (__p.__r_.__value_.__l.__size_ == 6)
  {
    if (*__p.__r_.__value_.__l.__data_ == 1953393013 && *(__p.__r_.__value_.__r.__words[0] + 4) == 13873)
    {
      goto LABEL_90;
    }

    if ((v3 & 0x80) == 0)
    {
      if (v3 != 4)
      {
        if (v3 == 6)
        {
          goto LABEL_10;
        }

        goto LABEL_96;
      }

      goto LABEL_88;
    }
  }

  if (__p.__r_.__value_.__l.__size_ == 6 && *__p.__r_.__value_.__l.__data_ == 1953393013 && *(__p.__r_.__value_.__r.__words[0] + 4) == 12851)
  {
    goto LABEL_99;
  }

  if (__p.__r_.__value_.__l.__size_ != 6)
  {
LABEL_94:
    if (__p.__r_.__value_.__l.__size_ != 4 || *__p.__r_.__value_.__l.__data_ != 909209702)
    {
      goto LABEL_96;
    }

    goto LABEL_102;
  }

  if (*__p.__r_.__value_.__l.__data_ != 1953393013 || *(__p.__r_.__value_.__r.__words[0] + 4) != 13366)
  {
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_94;
  }

LABEL_104:
  v31 = mlir::IntegerType::get(*(a1 + 184), 0x40u, 2u);
  result = mlir::TypeAttr::get(v31);
LABEL_105:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v32 = result;
    operator delete(__p.__r_.__value_.__l.__data_);
    return v32;
  }

  return result;
}

void sub_1E0817BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MILToMLIRRewriter::hasMutableConstantAttribute(MILToMLIRRewriter *this, const MIL::IROperation *a2)
{
  (*(*a2 + 16))(&v13, a2);
  v4 = *(MIL::IRObject::GetAttributes(a2) + 16);
  if (!v4)
  {
LABEL_2:
    v5 = 0;
    if (v14 < 0)
    {
      goto LABEL_19;
    }

    return v5;
  }

  while (1)
  {
    if (v12 == 1)
    {
      break;
    }

LABEL_4:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_2;
    }
  }

  v7 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(this + 13, __p);
  if (!v7)
  {
    if ((v12 & 1) != 0 && v11 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_4;
  }

  if (*(v7 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, v7[5], v7[6]);
  }

  else
  {
    v8 = *(v7 + 5);
  }

  v9 = 1;
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (v12 == 1 && v11 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = 1;
  if ((v14 & 0x80000000) == 0)
  {
    return v5;
  }

LABEL_19:
  operator delete(v13);
  return v5;
}

void sub_1E0817D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a22 == 1 && a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v22 - 17) < 0)
  {
    operator delete(*(v22 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<std::string,std::vector<mlir::Value>>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = *(v2 + 5);
      if (v6)
      {
        *(v2 + 6) = v6;
        operator delete(v6);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t std::unordered_map<std::string,std::string>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 63) < 0)
      {
        operator delete(v2[5]);
        if (*(v2 + 39) < 0)
        {
LABEL_10:
          operator delete(v2[2]);
        }
      }

      else if (*(v2 + 39) < 0)
      {
        goto LABEL_10;
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,MILToMLIRRewritePattern const&>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MILToMLIRRewritePattern const&>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MILToMLIRRewritePattern const&>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MILToMLIRRewritePattern const&>>>::find<std::string>(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = *(v2 + 23);
    if (v13 >= 0)
    {
      v14 = *(v2 + 23);
    }

    else
    {
      v14 = v2[1];
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v20 == v8)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v16 == v8)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

void *std::unique_ptr<MIL::Attributes::BlobFileMutabilityInfo>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = MEMORY[0x1E12E5010]();
    MEMORY[0x1E12E5B90](v4, 0x20C4093837F09);
    return v3;
  }

  return v1;
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *a2, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v5 = a3 - a2;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 != a2)
    {
      size = this->__r_.__value_.__l.__size_;
      v9 = this->__r_.__value_.__r.__words[2];
      v6 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v8 = this->__r_.__value_.__r.__words[0];
      v7 = HIBYTE(v9);
      if (this->__r_.__value_.__r.__words[0] > a2)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }

    return this;
  }

  if (a3 == a2)
  {
    return this;
  }

  v6 = 22;
  LOBYTE(v7) = *(&this->__r_.__value_.__s + 23);
  v8 = this;
  if (this > a2)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((&v8->__r_.__value_.__l.__data_ + size + 1) > a2)
  {
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v5 > 0x16)
    {
      operator new();
    }

    v18 = a3 - a2;
    memcpy(__dst, a2, v5);
    *(__dst + v5) = 0;
    if ((v18 & 0x80u) == 0)
    {
      v15 = __dst;
    }

    else
    {
      v15 = __dst[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v16 = v18;
    }

    else
    {
      v16 = __dst[1];
    }

    std::string::append(this, v15, v16);
    if ((v18 & 0x80000000) == 0)
    {
      return this;
    }

    operator delete(__dst[0]);
    return this;
  }

LABEL_11:
  if (v6 - size < v5)
  {
    v10 = a2;
    std::string::__grow_by(this, v6, size + v5 - v6, size, size, 0, 0);
    a2 = v10;
    this->__r_.__value_.__l.__size_ = size;
    LOBYTE(v7) = *(&this->__r_.__value_.__s + 23);
  }

  v11 = this;
  if ((v7 & 0x80) != 0)
  {
    v11 = this->__r_.__value_.__r.__words[0];
  }

  v12 = v11 + size;
  memmove(v11 + size, a2, v5);
  v12[v5] = 0;
  v13 = size + v5;
  if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&this->__r_.__value_.__s + 23) = v13 & 0x7F;
    return this;
  }

  this->__r_.__value_.__l.__size_ = v13;
  return this;
}