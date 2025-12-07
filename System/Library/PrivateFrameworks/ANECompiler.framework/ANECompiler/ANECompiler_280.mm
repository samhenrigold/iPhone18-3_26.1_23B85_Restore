uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<llvm::LogicalResult mlir::anec::anonymous namespace::WriteMultiFunctionPass::writeMultiFunctionPlists<mlir::anec::A13>(mlir::ModuleOp)::{lambda(mlir::Operation *)#2}>(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 47) || (result = mlir::Operation::getInherentAttr(a2, "name", 4), (v4 & 1) == 0))
  {
    result = mlir::DictionaryAttr::contains(a2 + 56, "name", 4uLL);
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (result)
  {
LABEL_6:
    Context = mlir::Attribute::getContext((a2 + 24));
    v8 = 261;
    v7[0] = "name";
    v7[1] = 4;
    v6 = mlir::StringAttr::get(Context, v7);
    return mlir::Operation::removeAttr(a2, v6);
  }

  return result;
}

double mlir::Region::getOps<mlir::anec::A14>@<D0>(uint64_t *__return_ptr a1@<X8>, mlir::Region *a2@<X0>)
{
  mlir::Region::OpIterator::OpIterator(&v17, a2, 1);
  mlir::Region::OpIterator::OpIterator(&v13, a2, 0);
  *&v11[8] = v17;
  v4 = v14[0];
  *v11 = v14[0];
  v10 = v13;
  *&v11[24] = v18;
  v12 = mlir::detail::op_filter_iterator<mlir::anec::A14,mlir::Region::OpIterator>::filter;
  if (v14[0] != v18)
  {
    do
    {
      v5 = v12;
      ZinIrHalH13g::~ZinIrHalH13g(v4);
      if (v5())
      {
        break;
      }

      mlir::Region::OpIterator::operator++(&v10);
      v4 = *v11;
    }

    while (*v11 != *&v11[24]);
  }

  v13 = v10;
  *v14 = *v11;
  v15 = *&v11[16];
  v16 = v12;
  *v11 = v18;
  *&v11[8] = v17;
  *&v11[24] = v18;
  v12 = mlir::detail::op_filter_iterator<mlir::anec::A14,mlir::Region::OpIterator>::filter;
  v6 = *v11;
  *(a1 + 4) = v17;
  *(a1 + 5) = v6;
  *(a1 + 6) = *&v11[16];
  v7 = v12;
  v8 = *v14;
  *a1 = v13;
  *(a1 + 1) = v8;
  result = *&v15;
  *(a1 + 2) = v15;
  a1[6] = v16;
  a1[7] = mlir::detail::op_iterator<mlir::anec::A14,mlir::Region::OpIterator>::unwrap;
  a1[14] = v7;
  a1[15] = mlir::detail::op_iterator<mlir::anec::A14,mlir::Region::OpIterator>::unwrap;
  return result;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<llvm::LogicalResult mlir::anec::anonymous namespace::WriteMultiFunctionPass::writeMultiFunctionPlists<mlir::anec::A14>(mlir::ModuleOp)::{lambda(mlir::Operation *)#1}>(uint64_t *a1, uint64_t a2)
{
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id)
  {
    v4 = *a1;
    v30 = a2;
    memset(&__p, 0, sizeof(__p));
    mlir::pdl::OperationOp::getOpName(&v30, &__dst);
    if (__dst.__r_.__value_.__s.__data_[16] != 1)
    {
LABEL_15:
      Name = mlir::pdl_interp::ApplyRewriteOp::getName(&v30);
      if (!Name)
      {
        size = 0;
        v10 = 0;
        v11 = 0;
        memset(&v28, 0, sizeof(v28));
        goto LABEL_24;
      }

      v8 = v7;
      if (v7 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v7 >= 0x17)
        {
          operator new();
        }

        *(&v28.__pn_.__r_.__value_.__s + 23) = v7;
        if (v7)
        {
          memmove(&v28, Name, v7);
        }

        v28.__pn_.__r_.__value_.__s.__data_[v8] = 0;
        v11 = HIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]);
        size = v28.__pn_.__r_.__value_.__l.__size_;
        v10 = v28.__pn_.__r_.__value_.__r.__words[0];
LABEL_24:
        memset(&v27, 0, sizeof(v27));
        if ((v11 & 0x80u) == 0)
        {
          v12 = &v28;
        }

        else
        {
          v12 = v10;
        }

        if ((v11 & 0x80u) == 0)
        {
          size = v11;
        }

        std::string::append[abi:nn200100]<char const*,0>(&v27.__pn_, &v12->__pn_, (&v12->__pn_ + size));
        if (!std::__fs::filesystem::path::__root_directory(&v27).__size_)
        {
          memset(&__len, 0, sizeof(__len));
          v13 = *(v4 + 495);
          if (v13 >= 0)
          {
            v14 = (v4 + 472);
          }

          else
          {
            v14 = *(v4 + 472);
          }

          if (v13 >= 0)
          {
            v15 = *(v4 + 495);
          }

          else
          {
            v15 = *(v4 + 480);
          }

          std::string::append[abi:nn200100]<char const*,0>(&__len, v14, (v14 + v15));
          std::__fs::filesystem::operator/[abi:nn200100](&v27, &__len, &__dst);
          if (SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v27.__pn_.__r_.__value_.__l.__data_);
          }

          v27.__pn_ = __dst;
          *(&__dst.__r_.__value_.__s + 23) = 0;
          __dst.__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__len.__r_.__value_.__l.__data_);
          }
        }

        v16 = a1[1];
        std::__fs::filesystem::__weakly_canonical(&__dst, &v27, 0);
        std::__fs::filesystem::__weakly_canonical(&__len, v16, 0);
        std::__fs::filesystem::path::lexically_relative(&v26, &__dst, &__len);
        if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__len.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_42;
          }
        }

        else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_42:
        v17 = *a1[2];
        if (SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__dst, v27.__pn_.__r_.__value_.__l.__data_, v27.__pn_.__r_.__value_.__l.__size_);
          if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          __dst = v27.__pn_;
          if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_44:
            __len = v26.__pn_;
            goto LABEL_49;
          }
        }

        std::string::__init_copy_ctor_external(&__len, v26.__pn_.__r_.__value_.__l.__data_, v26.__pn_.__r_.__value_.__l.__size_);
LABEL_49:
        mlir::anec::ANECIRNetwork::addWeightFileInfo(v17, &__dst, &__len, &__p);
        if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__len.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_51:
            if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_52;
            }

            goto LABEL_82;
          }
        }

        else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

        operator delete(__dst.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_52:
          if ((SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_53;
          }

          goto LABEL_83;
        }

LABEL_82:
        operator delete(v26.__pn_.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_53:
          if ((SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_54;
          }

          goto LABEL_84;
        }

LABEL_83:
        operator delete(v27.__pn_.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_54:
          if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_55;
          }

LABEL_85:
          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
          goto LABEL_55;
        }

LABEL_84:
        operator delete(v28.__pn_.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_85;
      }

LABEL_86:
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    mlir::pdl::OperationOp::getOpName(&v30, &__len);
    if (__len.__r_.__value_.__r.__words[0])
    {
      v5 = __len.__r_.__value_.__l.__size_;
      if (__len.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_86;
      }

      if (__len.__r_.__value_.__l.__size_ >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = __len.__r_.__value_.__s.__data_[8];
      if (__len.__r_.__value_.__l.__size_)
      {
        memmove(&__dst, __len.__r_.__value_.__l.__data_, __len.__r_.__value_.__l.__size_);
      }

      __dst.__r_.__value_.__s.__data_[v5] = 0;
      if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
      if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_14:
        __p.__pn_ = __dst;
        goto LABEL_15;
      }
    }

    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    goto LABEL_14;
  }

LABEL_55:
  {
    mlir::collect_regions::detail::verifyShouldAddToQueue();
  }

  if (!(*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return;
  }

  v18 = a1[3];
  memset(&v28, 0, sizeof(v28));
  v19 = *(v18 + 23);
  if (v19 >= 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = *v18;
  }

  if (v19 >= 0)
  {
    v21 = *(v18 + 23);
  }

  else
  {
    v21 = *(v18 + 8);
  }

  std::string::append[abi:nn200100]<char const*,0>(&v28.__pn_, v20, (v20 + v21));
  v22 = a1[1];
  std::__fs::filesystem::__weakly_canonical(&__dst, &v28, 0);
  std::__fs::filesystem::__weakly_canonical(&__len, v22, 0);
  std::__fs::filesystem::path::lexically_relative(&__p, &__dst, &__len);
  if ((SHIBYTE(__len.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_70:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

LABEL_71:
    operator delete(v28.__pn_.__r_.__value_.__l.__data_);
    goto LABEL_67;
  }

  operator delete(__len.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_70;
  }

LABEL_66:
  if (SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_71;
  }

LABEL_67:
  v23 = a1[2];
  v24 = a1[3];
  v25 = *v23;
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__dst, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = __p.__pn_;
  }

  *(&__len.__r_.__value_.__s + 23) = 0;
  __len.__r_.__value_.__s.__data_[0] = 0;
  mlir::anec::ANECIRNetwork::addWeightFileInfo(v25, v24, &__dst, &__len);
  if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__len.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_75:
      if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_79:
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_75;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_79;
  }
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<llvm::LogicalResult mlir::anec::anonymous namespace::WriteMultiFunctionPass::writeMultiFunctionPlists<mlir::anec::A14>(mlir::ModuleOp)::{lambda(mlir::Operation *)#2}>(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 47) || (result = mlir::Operation::getInherentAttr(a2, "name", 4), (v4 & 1) == 0))
  {
    result = mlir::DictionaryAttr::contains(a2 + 56, "name", 4uLL);
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (result)
  {
LABEL_6:
    Context = mlir::Attribute::getContext((a2 + 24));
    v8 = 261;
    v7[0] = "name";
    v7[1] = 4;
    v6 = mlir::StringAttr::get(Context, v7);
    return mlir::Operation::removeAttr(a2, v6);
  }

  return result;
}

double mlir::Region::getOps<mlir::anec::A15>@<D0>(uint64_t *__return_ptr a1@<X8>, mlir::Region *a2@<X0>)
{
  mlir::Region::OpIterator::OpIterator(&v17, a2, 1);
  mlir::Region::OpIterator::OpIterator(&v13, a2, 0);
  *&v11[8] = v17;
  v4 = v14[0];
  *v11 = v14[0];
  v10 = v13;
  *&v11[24] = v18;
  v12 = mlir::detail::op_filter_iterator<mlir::anec::A15,mlir::Region::OpIterator>::filter;
  if (v14[0] != v18)
  {
    do
    {
      v5 = v12;
      ZinIrHalH13g::~ZinIrHalH13g(v4);
      if (v5())
      {
        break;
      }

      mlir::Region::OpIterator::operator++(&v10);
      v4 = *v11;
    }

    while (*v11 != *&v11[24]);
  }

  v13 = v10;
  *v14 = *v11;
  v15 = *&v11[16];
  v16 = v12;
  *v11 = v18;
  *&v11[8] = v17;
  *&v11[24] = v18;
  v12 = mlir::detail::op_filter_iterator<mlir::anec::A15,mlir::Region::OpIterator>::filter;
  v6 = *v11;
  *(a1 + 4) = v17;
  *(a1 + 5) = v6;
  *(a1 + 6) = *&v11[16];
  v7 = v12;
  v8 = *v14;
  *a1 = v13;
  *(a1 + 1) = v8;
  result = *&v15;
  *(a1 + 2) = v15;
  a1[6] = v16;
  a1[7] = mlir::detail::op_iterator<mlir::anec::A15,mlir::Region::OpIterator>::unwrap;
  a1[14] = v7;
  a1[15] = mlir::detail::op_iterator<mlir::anec::A15,mlir::Region::OpIterator>::unwrap;
  return result;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<llvm::LogicalResult mlir::anec::anonymous namespace::WriteMultiFunctionPass::writeMultiFunctionPlists<mlir::anec::A15>(mlir::ModuleOp)::{lambda(mlir::Operation *)#1}>(uint64_t *a1, uint64_t a2)
{
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id)
  {
    v4 = *a1;
    v30 = a2;
    memset(&__p, 0, sizeof(__p));
    mlir::pdl::OperationOp::getOpName(&v30, &__dst);
    if (__dst.__r_.__value_.__s.__data_[16] != 1)
    {
LABEL_15:
      Name = mlir::pdl_interp::ApplyRewriteOp::getName(&v30);
      if (!Name)
      {
        size = 0;
        v10 = 0;
        v11 = 0;
        memset(&v28, 0, sizeof(v28));
        goto LABEL_24;
      }

      v8 = v7;
      if (v7 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v7 >= 0x17)
        {
          operator new();
        }

        *(&v28.__pn_.__r_.__value_.__s + 23) = v7;
        if (v7)
        {
          memmove(&v28, Name, v7);
        }

        v28.__pn_.__r_.__value_.__s.__data_[v8] = 0;
        v11 = HIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]);
        size = v28.__pn_.__r_.__value_.__l.__size_;
        v10 = v28.__pn_.__r_.__value_.__r.__words[0];
LABEL_24:
        memset(&v27, 0, sizeof(v27));
        if ((v11 & 0x80u) == 0)
        {
          v12 = &v28;
        }

        else
        {
          v12 = v10;
        }

        if ((v11 & 0x80u) == 0)
        {
          size = v11;
        }

        std::string::append[abi:nn200100]<char const*,0>(&v27.__pn_, &v12->__pn_, (&v12->__pn_ + size));
        if (!std::__fs::filesystem::path::__root_directory(&v27).__size_)
        {
          memset(&__len, 0, sizeof(__len));
          v13 = *(v4 + 495);
          if (v13 >= 0)
          {
            v14 = (v4 + 472);
          }

          else
          {
            v14 = *(v4 + 472);
          }

          if (v13 >= 0)
          {
            v15 = *(v4 + 495);
          }

          else
          {
            v15 = *(v4 + 480);
          }

          std::string::append[abi:nn200100]<char const*,0>(&__len, v14, (v14 + v15));
          std::__fs::filesystem::operator/[abi:nn200100](&v27, &__len, &__dst);
          if (SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v27.__pn_.__r_.__value_.__l.__data_);
          }

          v27.__pn_ = __dst;
          *(&__dst.__r_.__value_.__s + 23) = 0;
          __dst.__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__len.__r_.__value_.__l.__data_);
          }
        }

        v16 = a1[1];
        std::__fs::filesystem::__weakly_canonical(&__dst, &v27, 0);
        std::__fs::filesystem::__weakly_canonical(&__len, v16, 0);
        std::__fs::filesystem::path::lexically_relative(&v26, &__dst, &__len);
        if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__len.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_42;
          }
        }

        else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_42:
        v17 = *a1[2];
        if (SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__dst, v27.__pn_.__r_.__value_.__l.__data_, v27.__pn_.__r_.__value_.__l.__size_);
          if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          __dst = v27.__pn_;
          if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_44:
            __len = v26.__pn_;
            goto LABEL_49;
          }
        }

        std::string::__init_copy_ctor_external(&__len, v26.__pn_.__r_.__value_.__l.__data_, v26.__pn_.__r_.__value_.__l.__size_);
LABEL_49:
        mlir::anec::ANECIRNetwork::addWeightFileInfo(v17, &__dst, &__len, &__p);
        if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__len.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_51:
            if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_52;
            }

            goto LABEL_82;
          }
        }

        else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

        operator delete(__dst.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_52:
          if ((SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_53;
          }

          goto LABEL_83;
        }

LABEL_82:
        operator delete(v26.__pn_.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_53:
          if ((SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_54;
          }

          goto LABEL_84;
        }

LABEL_83:
        operator delete(v27.__pn_.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_54:
          if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_55;
          }

LABEL_85:
          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
          goto LABEL_55;
        }

LABEL_84:
        operator delete(v28.__pn_.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_85;
      }

LABEL_86:
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    mlir::pdl::OperationOp::getOpName(&v30, &__len);
    if (__len.__r_.__value_.__r.__words[0])
    {
      v5 = __len.__r_.__value_.__l.__size_;
      if (__len.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_86;
      }

      if (__len.__r_.__value_.__l.__size_ >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = __len.__r_.__value_.__s.__data_[8];
      if (__len.__r_.__value_.__l.__size_)
      {
        memmove(&__dst, __len.__r_.__value_.__l.__data_, __len.__r_.__value_.__l.__size_);
      }

      __dst.__r_.__value_.__s.__data_[v5] = 0;
      if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
      if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_14:
        __p.__pn_ = __dst;
        goto LABEL_15;
      }
    }

    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    goto LABEL_14;
  }

LABEL_55:
  {
    mlir::collect_regions::detail::verifyShouldAddToQueue();
  }

  if (!(*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return;
  }

  v18 = a1[3];
  memset(&v28, 0, sizeof(v28));
  v19 = *(v18 + 23);
  if (v19 >= 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = *v18;
  }

  if (v19 >= 0)
  {
    v21 = *(v18 + 23);
  }

  else
  {
    v21 = *(v18 + 8);
  }

  std::string::append[abi:nn200100]<char const*,0>(&v28.__pn_, v20, (v20 + v21));
  v22 = a1[1];
  std::__fs::filesystem::__weakly_canonical(&__dst, &v28, 0);
  std::__fs::filesystem::__weakly_canonical(&__len, v22, 0);
  std::__fs::filesystem::path::lexically_relative(&__p, &__dst, &__len);
  if ((SHIBYTE(__len.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_70:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

LABEL_71:
    operator delete(v28.__pn_.__r_.__value_.__l.__data_);
    goto LABEL_67;
  }

  operator delete(__len.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_70;
  }

LABEL_66:
  if (SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_71;
  }

LABEL_67:
  v23 = a1[2];
  v24 = a1[3];
  v25 = *v23;
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__dst, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = __p.__pn_;
  }

  *(&__len.__r_.__value_.__s + 23) = 0;
  __len.__r_.__value_.__s.__data_[0] = 0;
  mlir::anec::ANECIRNetwork::addWeightFileInfo(v25, v24, &__dst, &__len);
  if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__len.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_75:
      if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_79:
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_75;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_79;
  }
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<llvm::LogicalResult mlir::anec::anonymous namespace::WriteMultiFunctionPass::writeMultiFunctionPlists<mlir::anec::A15>(mlir::ModuleOp)::{lambda(mlir::Operation *)#2}>(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 47) || (result = mlir::Operation::getInherentAttr(a2, "name", 4), (v4 & 1) == 0))
  {
    result = mlir::DictionaryAttr::contains(a2 + 56, "name", 4uLL);
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (result)
  {
LABEL_6:
    Context = mlir::Attribute::getContext((a2 + 24));
    v8 = 261;
    v7[0] = "name";
    v7[1] = 4;
    v6 = mlir::StringAttr::get(Context, v7);
    return mlir::Operation::removeAttr(a2, v6);
  }

  return result;
}

double mlir::Region::getOps<mlir::anec::A16>@<D0>(uint64_t *__return_ptr a1@<X8>, mlir::Region *a2@<X0>)
{
  mlir::Region::OpIterator::OpIterator(&v17, a2, 1);
  mlir::Region::OpIterator::OpIterator(&v13, a2, 0);
  *&v11[8] = v17;
  v4 = v14[0];
  *v11 = v14[0];
  v10 = v13;
  *&v11[24] = v18;
  v12 = mlir::detail::op_filter_iterator<mlir::anec::A16,mlir::Region::OpIterator>::filter;
  if (v14[0] != v18)
  {
    do
    {
      v5 = v12;
      ZinIrHalH13g::~ZinIrHalH13g(v4);
      if (v5())
      {
        break;
      }

      mlir::Region::OpIterator::operator++(&v10);
      v4 = *v11;
    }

    while (*v11 != *&v11[24]);
  }

  v13 = v10;
  *v14 = *v11;
  v15 = *&v11[16];
  v16 = v12;
  *v11 = v18;
  *&v11[8] = v17;
  *&v11[24] = v18;
  v12 = mlir::detail::op_filter_iterator<mlir::anec::A16,mlir::Region::OpIterator>::filter;
  v6 = *v11;
  *(a1 + 4) = v17;
  *(a1 + 5) = v6;
  *(a1 + 6) = *&v11[16];
  v7 = v12;
  v8 = *v14;
  *a1 = v13;
  *(a1 + 1) = v8;
  result = *&v15;
  *(a1 + 2) = v15;
  a1[6] = v16;
  a1[7] = mlir::detail::op_iterator<mlir::anec::A16,mlir::Region::OpIterator>::unwrap;
  a1[14] = v7;
  a1[15] = mlir::detail::op_iterator<mlir::anec::A16,mlir::Region::OpIterator>::unwrap;
  return result;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<llvm::LogicalResult mlir::anec::anonymous namespace::WriteMultiFunctionPass::writeMultiFunctionPlists<mlir::anec::A16>(mlir::ModuleOp)::{lambda(mlir::Operation *)#1}>(uint64_t *a1, uint64_t a2)
{
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id)
  {
    v4 = *a1;
    v30 = a2;
    memset(&__p, 0, sizeof(__p));
    mlir::pdl::OperationOp::getOpName(&v30, &__dst);
    if (__dst.__r_.__value_.__s.__data_[16] != 1)
    {
LABEL_15:
      Name = mlir::pdl_interp::ApplyRewriteOp::getName(&v30);
      if (!Name)
      {
        size = 0;
        v10 = 0;
        v11 = 0;
        memset(&v28, 0, sizeof(v28));
        goto LABEL_24;
      }

      v8 = v7;
      if (v7 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v7 >= 0x17)
        {
          operator new();
        }

        *(&v28.__pn_.__r_.__value_.__s + 23) = v7;
        if (v7)
        {
          memmove(&v28, Name, v7);
        }

        v28.__pn_.__r_.__value_.__s.__data_[v8] = 0;
        v11 = HIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]);
        size = v28.__pn_.__r_.__value_.__l.__size_;
        v10 = v28.__pn_.__r_.__value_.__r.__words[0];
LABEL_24:
        memset(&v27, 0, sizeof(v27));
        if ((v11 & 0x80u) == 0)
        {
          v12 = &v28;
        }

        else
        {
          v12 = v10;
        }

        if ((v11 & 0x80u) == 0)
        {
          size = v11;
        }

        std::string::append[abi:nn200100]<char const*,0>(&v27.__pn_, &v12->__pn_, (&v12->__pn_ + size));
        if (!std::__fs::filesystem::path::__root_directory(&v27).__size_)
        {
          memset(&__len, 0, sizeof(__len));
          v13 = *(v4 + 495);
          if (v13 >= 0)
          {
            v14 = (v4 + 472);
          }

          else
          {
            v14 = *(v4 + 472);
          }

          if (v13 >= 0)
          {
            v15 = *(v4 + 495);
          }

          else
          {
            v15 = *(v4 + 480);
          }

          std::string::append[abi:nn200100]<char const*,0>(&__len, v14, (v14 + v15));
          std::__fs::filesystem::operator/[abi:nn200100](&v27, &__len, &__dst);
          if (SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v27.__pn_.__r_.__value_.__l.__data_);
          }

          v27.__pn_ = __dst;
          *(&__dst.__r_.__value_.__s + 23) = 0;
          __dst.__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__len.__r_.__value_.__l.__data_);
          }
        }

        v16 = a1[1];
        std::__fs::filesystem::__weakly_canonical(&__dst, &v27, 0);
        std::__fs::filesystem::__weakly_canonical(&__len, v16, 0);
        std::__fs::filesystem::path::lexically_relative(&v26, &__dst, &__len);
        if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__len.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_42;
          }
        }

        else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_42:
        v17 = *a1[2];
        if (SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__dst, v27.__pn_.__r_.__value_.__l.__data_, v27.__pn_.__r_.__value_.__l.__size_);
          if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          __dst = v27.__pn_;
          if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_44:
            __len = v26.__pn_;
            goto LABEL_49;
          }
        }

        std::string::__init_copy_ctor_external(&__len, v26.__pn_.__r_.__value_.__l.__data_, v26.__pn_.__r_.__value_.__l.__size_);
LABEL_49:
        mlir::anec::ANECIRNetwork::addWeightFileInfo(v17, &__dst, &__len, &__p);
        if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__len.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_51:
            if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_52;
            }

            goto LABEL_82;
          }
        }

        else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

        operator delete(__dst.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_52:
          if ((SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_53;
          }

          goto LABEL_83;
        }

LABEL_82:
        operator delete(v26.__pn_.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_53:
          if ((SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_54;
          }

          goto LABEL_84;
        }

LABEL_83:
        operator delete(v27.__pn_.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_54:
          if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_55;
          }

LABEL_85:
          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
          goto LABEL_55;
        }

LABEL_84:
        operator delete(v28.__pn_.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_85;
      }

LABEL_86:
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    mlir::pdl::OperationOp::getOpName(&v30, &__len);
    if (__len.__r_.__value_.__r.__words[0])
    {
      v5 = __len.__r_.__value_.__l.__size_;
      if (__len.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_86;
      }

      if (__len.__r_.__value_.__l.__size_ >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = __len.__r_.__value_.__s.__data_[8];
      if (__len.__r_.__value_.__l.__size_)
      {
        memmove(&__dst, __len.__r_.__value_.__l.__data_, __len.__r_.__value_.__l.__size_);
      }

      __dst.__r_.__value_.__s.__data_[v5] = 0;
      if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
      if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_14:
        __p.__pn_ = __dst;
        goto LABEL_15;
      }
    }

    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    goto LABEL_14;
  }

LABEL_55:
  {
    mlir::collect_regions::detail::verifyShouldAddToQueue();
  }

  if (!(*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return;
  }

  v18 = a1[3];
  memset(&v28, 0, sizeof(v28));
  v19 = *(v18 + 23);
  if (v19 >= 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = *v18;
  }

  if (v19 >= 0)
  {
    v21 = *(v18 + 23);
  }

  else
  {
    v21 = *(v18 + 8);
  }

  std::string::append[abi:nn200100]<char const*,0>(&v28.__pn_, v20, (v20 + v21));
  v22 = a1[1];
  std::__fs::filesystem::__weakly_canonical(&__dst, &v28, 0);
  std::__fs::filesystem::__weakly_canonical(&__len, v22, 0);
  std::__fs::filesystem::path::lexically_relative(&__p, &__dst, &__len);
  if ((SHIBYTE(__len.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_70:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

LABEL_71:
    operator delete(v28.__pn_.__r_.__value_.__l.__data_);
    goto LABEL_67;
  }

  operator delete(__len.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_70;
  }

LABEL_66:
  if (SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_71;
  }

LABEL_67:
  v23 = a1[2];
  v24 = a1[3];
  v25 = *v23;
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__dst, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = __p.__pn_;
  }

  *(&__len.__r_.__value_.__s + 23) = 0;
  __len.__r_.__value_.__s.__data_[0] = 0;
  mlir::anec::ANECIRNetwork::addWeightFileInfo(v25, v24, &__dst, &__len);
  if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__len.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_75:
      if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_79:
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_75;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_79;
  }
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<llvm::LogicalResult mlir::anec::anonymous namespace::WriteMultiFunctionPass::writeMultiFunctionPlists<mlir::anec::A16>(mlir::ModuleOp)::{lambda(mlir::Operation *)#2}>(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 47) || (result = mlir::Operation::getInherentAttr(a2, "name", 4), (v4 & 1) == 0))
  {
    result = mlir::DictionaryAttr::contains(a2 + 56, "name", 4uLL);
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (result)
  {
LABEL_6:
    Context = mlir::Attribute::getContext((a2 + 24));
    v8 = 261;
    v7[0] = "name";
    v7[1] = 4;
    v6 = mlir::StringAttr::get(Context, v7);
    return mlir::Operation::removeAttr(a2, v6);
  }

  return result;
}

double mlir::Region::getOps<mlir::anec::A17>@<D0>(uint64_t *__return_ptr a1@<X8>, mlir::Region *a2@<X0>)
{
  mlir::Region::OpIterator::OpIterator(&v17, a2, 1);
  mlir::Region::OpIterator::OpIterator(&v13, a2, 0);
  *&v11[8] = v17;
  v4 = v14[0];
  *v11 = v14[0];
  v10 = v13;
  *&v11[24] = v18;
  v12 = mlir::detail::op_filter_iterator<mlir::anec::A17,mlir::Region::OpIterator>::filter;
  if (v14[0] != v18)
  {
    do
    {
      v5 = v12;
      ZinIrHalH13g::~ZinIrHalH13g(v4);
      if (v5())
      {
        break;
      }

      mlir::Region::OpIterator::operator++(&v10);
      v4 = *v11;
    }

    while (*v11 != *&v11[24]);
  }

  v13 = v10;
  *v14 = *v11;
  v15 = *&v11[16];
  v16 = v12;
  *v11 = v18;
  *&v11[8] = v17;
  *&v11[24] = v18;
  v12 = mlir::detail::op_filter_iterator<mlir::anec::A17,mlir::Region::OpIterator>::filter;
  v6 = *v11;
  *(a1 + 4) = v17;
  *(a1 + 5) = v6;
  *(a1 + 6) = *&v11[16];
  v7 = v12;
  v8 = *v14;
  *a1 = v13;
  *(a1 + 1) = v8;
  result = *&v15;
  *(a1 + 2) = v15;
  a1[6] = v16;
  a1[7] = mlir::detail::op_iterator<mlir::anec::A17,mlir::Region::OpIterator>::unwrap;
  a1[14] = v7;
  a1[15] = mlir::detail::op_iterator<mlir::anec::A17,mlir::Region::OpIterator>::unwrap;
  return result;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<llvm::LogicalResult mlir::anec::anonymous namespace::WriteMultiFunctionPass::writeMultiFunctionPlists<mlir::anec::A17>(mlir::ModuleOp)::{lambda(mlir::Operation *)#1}>(uint64_t *a1, uint64_t a2)
{
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id)
  {
    v4 = *a1;
    v30 = a2;
    memset(&__p, 0, sizeof(__p));
    mlir::pdl::OperationOp::getOpName(&v30, &__dst);
    if (__dst.__r_.__value_.__s.__data_[16] != 1)
    {
LABEL_15:
      Name = mlir::pdl_interp::ApplyRewriteOp::getName(&v30);
      if (!Name)
      {
        size = 0;
        v10 = 0;
        v11 = 0;
        memset(&v28, 0, sizeof(v28));
        goto LABEL_24;
      }

      v8 = v7;
      if (v7 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v7 >= 0x17)
        {
          operator new();
        }

        *(&v28.__pn_.__r_.__value_.__s + 23) = v7;
        if (v7)
        {
          memmove(&v28, Name, v7);
        }

        v28.__pn_.__r_.__value_.__s.__data_[v8] = 0;
        v11 = HIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]);
        size = v28.__pn_.__r_.__value_.__l.__size_;
        v10 = v28.__pn_.__r_.__value_.__r.__words[0];
LABEL_24:
        memset(&v27, 0, sizeof(v27));
        if ((v11 & 0x80u) == 0)
        {
          v12 = &v28;
        }

        else
        {
          v12 = v10;
        }

        if ((v11 & 0x80u) == 0)
        {
          size = v11;
        }

        std::string::append[abi:nn200100]<char const*,0>(&v27.__pn_, &v12->__pn_, (&v12->__pn_ + size));
        if (!std::__fs::filesystem::path::__root_directory(&v27).__size_)
        {
          memset(&__len, 0, sizeof(__len));
          v13 = *(v4 + 495);
          if (v13 >= 0)
          {
            v14 = (v4 + 472);
          }

          else
          {
            v14 = *(v4 + 472);
          }

          if (v13 >= 0)
          {
            v15 = *(v4 + 495);
          }

          else
          {
            v15 = *(v4 + 480);
          }

          std::string::append[abi:nn200100]<char const*,0>(&__len, v14, (v14 + v15));
          std::__fs::filesystem::operator/[abi:nn200100](&v27, &__len, &__dst);
          if (SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v27.__pn_.__r_.__value_.__l.__data_);
          }

          v27.__pn_ = __dst;
          *(&__dst.__r_.__value_.__s + 23) = 0;
          __dst.__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__len.__r_.__value_.__l.__data_);
          }
        }

        v16 = a1[1];
        std::__fs::filesystem::__weakly_canonical(&__dst, &v27, 0);
        std::__fs::filesystem::__weakly_canonical(&__len, v16, 0);
        std::__fs::filesystem::path::lexically_relative(&v26, &__dst, &__len);
        if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__len.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_42;
          }
        }

        else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_42:
        v17 = *a1[2];
        if (SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__dst, v27.__pn_.__r_.__value_.__l.__data_, v27.__pn_.__r_.__value_.__l.__size_);
          if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          __dst = v27.__pn_;
          if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_44:
            __len = v26.__pn_;
            goto LABEL_49;
          }
        }

        std::string::__init_copy_ctor_external(&__len, v26.__pn_.__r_.__value_.__l.__data_, v26.__pn_.__r_.__value_.__l.__size_);
LABEL_49:
        mlir::anec::ANECIRNetwork::addWeightFileInfo(v17, &__dst, &__len, &__p);
        if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__len.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_51:
            if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_52;
            }

            goto LABEL_82;
          }
        }

        else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

        operator delete(__dst.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_52:
          if ((SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_53;
          }

          goto LABEL_83;
        }

LABEL_82:
        operator delete(v26.__pn_.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_53:
          if ((SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_54;
          }

          goto LABEL_84;
        }

LABEL_83:
        operator delete(v27.__pn_.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_54:
          if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_55;
          }

LABEL_85:
          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
          goto LABEL_55;
        }

LABEL_84:
        operator delete(v28.__pn_.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_85;
      }

LABEL_86:
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    mlir::pdl::OperationOp::getOpName(&v30, &__len);
    if (__len.__r_.__value_.__r.__words[0])
    {
      v5 = __len.__r_.__value_.__l.__size_;
      if (__len.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_86;
      }

      if (__len.__r_.__value_.__l.__size_ >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = __len.__r_.__value_.__s.__data_[8];
      if (__len.__r_.__value_.__l.__size_)
      {
        memmove(&__dst, __len.__r_.__value_.__l.__data_, __len.__r_.__value_.__l.__size_);
      }

      __dst.__r_.__value_.__s.__data_[v5] = 0;
      if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
      if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_14:
        __p.__pn_ = __dst;
        goto LABEL_15;
      }
    }

    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    goto LABEL_14;
  }

LABEL_55:
  {
    mlir::collect_regions::detail::verifyShouldAddToQueue();
  }

  if (!(*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return;
  }

  v18 = a1[3];
  memset(&v28, 0, sizeof(v28));
  v19 = *(v18 + 23);
  if (v19 >= 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = *v18;
  }

  if (v19 >= 0)
  {
    v21 = *(v18 + 23);
  }

  else
  {
    v21 = *(v18 + 8);
  }

  std::string::append[abi:nn200100]<char const*,0>(&v28.__pn_, v20, (v20 + v21));
  v22 = a1[1];
  std::__fs::filesystem::__weakly_canonical(&__dst, &v28, 0);
  std::__fs::filesystem::__weakly_canonical(&__len, v22, 0);
  std::__fs::filesystem::path::lexically_relative(&__p, &__dst, &__len);
  if ((SHIBYTE(__len.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_70:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

LABEL_71:
    operator delete(v28.__pn_.__r_.__value_.__l.__data_);
    goto LABEL_67;
  }

  operator delete(__len.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_70;
  }

LABEL_66:
  if (SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_71;
  }

LABEL_67:
  v23 = a1[2];
  v24 = a1[3];
  v25 = *v23;
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__dst, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = __p.__pn_;
  }

  *(&__len.__r_.__value_.__s + 23) = 0;
  __len.__r_.__value_.__s.__data_[0] = 0;
  mlir::anec::ANECIRNetwork::addWeightFileInfo(v25, v24, &__dst, &__len);
  if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__len.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_75:
      if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_79:
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_75;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_79;
  }
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<llvm::LogicalResult mlir::anec::anonymous namespace::WriteMultiFunctionPass::writeMultiFunctionPlists<mlir::anec::A17>(mlir::ModuleOp)::{lambda(mlir::Operation *)#2}>(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 47) || (result = mlir::Operation::getInherentAttr(a2, "name", 4), (v4 & 1) == 0))
  {
    result = mlir::DictionaryAttr::contains(a2 + 56, "name", 4uLL);
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (result)
  {
LABEL_6:
    Context = mlir::Attribute::getContext((a2 + 24));
    v8 = 261;
    v7[0] = "name";
    v7[1] = 4;
    v6 = mlir::StringAttr::get(Context, v7);
    return mlir::Operation::removeAttr(a2, v6);
  }

  return result;
}

double mlir::Region::getOps<mlir::anec::A18>@<D0>(uint64_t *__return_ptr a1@<X8>, mlir::Region *a2@<X0>)
{
  mlir::Region::OpIterator::OpIterator(&v17, a2, 1);
  mlir::Region::OpIterator::OpIterator(&v13, a2, 0);
  *&v11[8] = v17;
  v4 = v14[0];
  *v11 = v14[0];
  v10 = v13;
  *&v11[24] = v18;
  v12 = mlir::detail::op_filter_iterator<mlir::anec::A18,mlir::Region::OpIterator>::filter;
  if (v14[0] != v18)
  {
    do
    {
      v5 = v12;
      ZinIrHalH13g::~ZinIrHalH13g(v4);
      if (v5())
      {
        break;
      }

      mlir::Region::OpIterator::operator++(&v10);
      v4 = *v11;
    }

    while (*v11 != *&v11[24]);
  }

  v13 = v10;
  *v14 = *v11;
  v15 = *&v11[16];
  v16 = v12;
  *v11 = v18;
  *&v11[8] = v17;
  *&v11[24] = v18;
  v12 = mlir::detail::op_filter_iterator<mlir::anec::A18,mlir::Region::OpIterator>::filter;
  v6 = *v11;
  *(a1 + 4) = v17;
  *(a1 + 5) = v6;
  *(a1 + 6) = *&v11[16];
  v7 = v12;
  v8 = *v14;
  *a1 = v13;
  *(a1 + 1) = v8;
  result = *&v15;
  *(a1 + 2) = v15;
  a1[6] = v16;
  a1[7] = mlir::detail::op_iterator<mlir::anec::A18,mlir::Region::OpIterator>::unwrap;
  a1[14] = v7;
  a1[15] = mlir::detail::op_iterator<mlir::anec::A18,mlir::Region::OpIterator>::unwrap;
  return result;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<llvm::LogicalResult mlir::anec::anonymous namespace::WriteMultiFunctionPass::writeMultiFunctionPlists<mlir::anec::A18>(mlir::ModuleOp)::{lambda(mlir::Operation *)#1}>(uint64_t *a1, uint64_t a2)
{
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id)
  {
    v4 = *a1;
    v30 = a2;
    memset(&__p, 0, sizeof(__p));
    mlir::pdl::OperationOp::getOpName(&v30, &__dst);
    if (__dst.__r_.__value_.__s.__data_[16] != 1)
    {
LABEL_15:
      Name = mlir::pdl_interp::ApplyRewriteOp::getName(&v30);
      if (!Name)
      {
        size = 0;
        v10 = 0;
        v11 = 0;
        memset(&v28, 0, sizeof(v28));
        goto LABEL_24;
      }

      v8 = v7;
      if (v7 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v7 >= 0x17)
        {
          operator new();
        }

        *(&v28.__pn_.__r_.__value_.__s + 23) = v7;
        if (v7)
        {
          memmove(&v28, Name, v7);
        }

        v28.__pn_.__r_.__value_.__s.__data_[v8] = 0;
        v11 = HIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]);
        size = v28.__pn_.__r_.__value_.__l.__size_;
        v10 = v28.__pn_.__r_.__value_.__r.__words[0];
LABEL_24:
        memset(&v27, 0, sizeof(v27));
        if ((v11 & 0x80u) == 0)
        {
          v12 = &v28;
        }

        else
        {
          v12 = v10;
        }

        if ((v11 & 0x80u) == 0)
        {
          size = v11;
        }

        std::string::append[abi:nn200100]<char const*,0>(&v27.__pn_, &v12->__pn_, (&v12->__pn_ + size));
        if (!std::__fs::filesystem::path::__root_directory(&v27).__size_)
        {
          memset(&__len, 0, sizeof(__len));
          v13 = *(v4 + 495);
          if (v13 >= 0)
          {
            v14 = (v4 + 472);
          }

          else
          {
            v14 = *(v4 + 472);
          }

          if (v13 >= 0)
          {
            v15 = *(v4 + 495);
          }

          else
          {
            v15 = *(v4 + 480);
          }

          std::string::append[abi:nn200100]<char const*,0>(&__len, v14, (v14 + v15));
          std::__fs::filesystem::operator/[abi:nn200100](&v27, &__len, &__dst);
          if (SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v27.__pn_.__r_.__value_.__l.__data_);
          }

          v27.__pn_ = __dst;
          *(&__dst.__r_.__value_.__s + 23) = 0;
          __dst.__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__len.__r_.__value_.__l.__data_);
          }
        }

        v16 = a1[1];
        std::__fs::filesystem::__weakly_canonical(&__dst, &v27, 0);
        std::__fs::filesystem::__weakly_canonical(&__len, v16, 0);
        std::__fs::filesystem::path::lexically_relative(&v26, &__dst, &__len);
        if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__len.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_42;
          }
        }

        else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_42:
        v17 = *a1[2];
        if (SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__dst, v27.__pn_.__r_.__value_.__l.__data_, v27.__pn_.__r_.__value_.__l.__size_);
          if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          __dst = v27.__pn_;
          if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_44:
            __len = v26.__pn_;
            goto LABEL_49;
          }
        }

        std::string::__init_copy_ctor_external(&__len, v26.__pn_.__r_.__value_.__l.__data_, v26.__pn_.__r_.__value_.__l.__size_);
LABEL_49:
        mlir::anec::ANECIRNetwork::addWeightFileInfo(v17, &__dst, &__len, &__p);
        if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__len.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_51:
            if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_52;
            }

            goto LABEL_82;
          }
        }

        else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

        operator delete(__dst.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_52:
          if ((SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_53;
          }

          goto LABEL_83;
        }

LABEL_82:
        operator delete(v26.__pn_.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_53:
          if ((SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_54;
          }

          goto LABEL_84;
        }

LABEL_83:
        operator delete(v27.__pn_.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_54:
          if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_55;
          }

LABEL_85:
          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
          goto LABEL_55;
        }

LABEL_84:
        operator delete(v28.__pn_.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_85;
      }

LABEL_86:
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    mlir::pdl::OperationOp::getOpName(&v30, &__len);
    if (__len.__r_.__value_.__r.__words[0])
    {
      v5 = __len.__r_.__value_.__l.__size_;
      if (__len.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_86;
      }

      if (__len.__r_.__value_.__l.__size_ >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = __len.__r_.__value_.__s.__data_[8];
      if (__len.__r_.__value_.__l.__size_)
      {
        memmove(&__dst, __len.__r_.__value_.__l.__data_, __len.__r_.__value_.__l.__size_);
      }

      __dst.__r_.__value_.__s.__data_[v5] = 0;
      if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
      if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_14:
        __p.__pn_ = __dst;
        goto LABEL_15;
      }
    }

    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    goto LABEL_14;
  }

LABEL_55:
  {
    mlir::collect_regions::detail::verifyShouldAddToQueue();
  }

  if (!(*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return;
  }

  v18 = a1[3];
  memset(&v28, 0, sizeof(v28));
  v19 = *(v18 + 23);
  if (v19 >= 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = *v18;
  }

  if (v19 >= 0)
  {
    v21 = *(v18 + 23);
  }

  else
  {
    v21 = *(v18 + 8);
  }

  std::string::append[abi:nn200100]<char const*,0>(&v28.__pn_, v20, (v20 + v21));
  v22 = a1[1];
  std::__fs::filesystem::__weakly_canonical(&__dst, &v28, 0);
  std::__fs::filesystem::__weakly_canonical(&__len, v22, 0);
  std::__fs::filesystem::path::lexically_relative(&__p, &__dst, &__len);
  if ((SHIBYTE(__len.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_70:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

LABEL_71:
    operator delete(v28.__pn_.__r_.__value_.__l.__data_);
    goto LABEL_67;
  }

  operator delete(__len.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_70;
  }

LABEL_66:
  if (SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_71;
  }

LABEL_67:
  v23 = a1[2];
  v24 = a1[3];
  v25 = *v23;
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__dst, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = __p.__pn_;
  }

  *(&__len.__r_.__value_.__s + 23) = 0;
  __len.__r_.__value_.__s.__data_[0] = 0;
  mlir::anec::ANECIRNetwork::addWeightFileInfo(v25, v24, &__dst, &__len);
  if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__len.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_75:
      if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_79:
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_75;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_79;
  }
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<llvm::LogicalResult mlir::anec::anonymous namespace::WriteMultiFunctionPass::writeMultiFunctionPlists<mlir::anec::A18>(mlir::ModuleOp)::{lambda(mlir::Operation *)#2}>(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 47) || (result = mlir::Operation::getInherentAttr(a2, "name", 4), (v4 & 1) == 0))
  {
    result = mlir::DictionaryAttr::contains(a2 + 56, "name", 4uLL);
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (result)
  {
LABEL_6:
    Context = mlir::Attribute::getContext((a2 + 24));
    v8 = 261;
    v7[0] = "name";
    v7[1] = 4;
    v6 = mlir::StringAttr::get(Context, v7);
    return mlir::Operation::removeAttr(a2, v6);
  }

  return result;
}

double mlir::Region::getOps<mlir::anec::A11Legacy>@<D0>(uint64_t *__return_ptr a1@<X8>, mlir::Region *a2@<X0>)
{
  mlir::Region::OpIterator::OpIterator(&v17, a2, 1);
  mlir::Region::OpIterator::OpIterator(&v13, a2, 0);
  *&v11[8] = v17;
  v4 = v14[0];
  *v11 = v14[0];
  v10 = v13;
  *&v11[24] = v18;
  v12 = mlir::detail::op_filter_iterator<mlir::anec::A11Legacy,mlir::Region::OpIterator>::filter;
  if (v14[0] != v18)
  {
    do
    {
      v5 = v12;
      ZinIrHalH13g::~ZinIrHalH13g(v4);
      if (v5())
      {
        break;
      }

      mlir::Region::OpIterator::operator++(&v10);
      v4 = *v11;
    }

    while (*v11 != *&v11[24]);
  }

  v13 = v10;
  *v14 = *v11;
  v15 = *&v11[16];
  v16 = v12;
  *v11 = v18;
  *&v11[8] = v17;
  *&v11[24] = v18;
  v12 = mlir::detail::op_filter_iterator<mlir::anec::A11Legacy,mlir::Region::OpIterator>::filter;
  v6 = *v11;
  *(a1 + 4) = v17;
  *(a1 + 5) = v6;
  *(a1 + 6) = *&v11[16];
  v7 = v12;
  v8 = *v14;
  *a1 = v13;
  *(a1 + 1) = v8;
  result = *&v15;
  *(a1 + 2) = v15;
  a1[6] = v16;
  a1[7] = mlir::detail::op_iterator<mlir::anec::A11Legacy,mlir::Region::OpIterator>::unwrap;
  a1[14] = v7;
  a1[15] = mlir::detail::op_iterator<mlir::anec::A11Legacy,mlir::Region::OpIterator>::unwrap;
  return result;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<llvm::LogicalResult mlir::anec::anonymous namespace::WriteMultiFunctionPass::writeMultiFunctionPlists<mlir::anec::A11Legacy>(mlir::ModuleOp)::{lambda(mlir::Operation *)#1}>(uint64_t *a1, uint64_t a2)
{
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id)
  {
    v4 = *a1;
    v30 = a2;
    memset(&__p, 0, sizeof(__p));
    mlir::pdl::OperationOp::getOpName(&v30, &__dst);
    if (__dst.__r_.__value_.__s.__data_[16] != 1)
    {
LABEL_15:
      Name = mlir::pdl_interp::ApplyRewriteOp::getName(&v30);
      if (!Name)
      {
        size = 0;
        v10 = 0;
        v11 = 0;
        memset(&v28, 0, sizeof(v28));
        goto LABEL_24;
      }

      v8 = v7;
      if (v7 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v7 >= 0x17)
        {
          operator new();
        }

        *(&v28.__pn_.__r_.__value_.__s + 23) = v7;
        if (v7)
        {
          memmove(&v28, Name, v7);
        }

        v28.__pn_.__r_.__value_.__s.__data_[v8] = 0;
        v11 = HIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]);
        size = v28.__pn_.__r_.__value_.__l.__size_;
        v10 = v28.__pn_.__r_.__value_.__r.__words[0];
LABEL_24:
        memset(&v27, 0, sizeof(v27));
        if ((v11 & 0x80u) == 0)
        {
          v12 = &v28;
        }

        else
        {
          v12 = v10;
        }

        if ((v11 & 0x80u) == 0)
        {
          size = v11;
        }

        std::string::append[abi:nn200100]<char const*,0>(&v27.__pn_, &v12->__pn_, (&v12->__pn_ + size));
        if (!std::__fs::filesystem::path::__root_directory(&v27).__size_)
        {
          memset(&__len, 0, sizeof(__len));
          v13 = *(v4 + 495);
          if (v13 >= 0)
          {
            v14 = (v4 + 472);
          }

          else
          {
            v14 = *(v4 + 472);
          }

          if (v13 >= 0)
          {
            v15 = *(v4 + 495);
          }

          else
          {
            v15 = *(v4 + 480);
          }

          std::string::append[abi:nn200100]<char const*,0>(&__len, v14, (v14 + v15));
          std::__fs::filesystem::operator/[abi:nn200100](&v27, &__len, &__dst);
          if (SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v27.__pn_.__r_.__value_.__l.__data_);
          }

          v27.__pn_ = __dst;
          *(&__dst.__r_.__value_.__s + 23) = 0;
          __dst.__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__len.__r_.__value_.__l.__data_);
          }
        }

        v16 = a1[1];
        std::__fs::filesystem::__weakly_canonical(&__dst, &v27, 0);
        std::__fs::filesystem::__weakly_canonical(&__len, v16, 0);
        std::__fs::filesystem::path::lexically_relative(&v26, &__dst, &__len);
        if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__len.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_42;
          }
        }

        else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_42:
        v17 = *a1[2];
        if (SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__dst, v27.__pn_.__r_.__value_.__l.__data_, v27.__pn_.__r_.__value_.__l.__size_);
          if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          __dst = v27.__pn_;
          if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_44:
            __len = v26.__pn_;
            goto LABEL_49;
          }
        }

        std::string::__init_copy_ctor_external(&__len, v26.__pn_.__r_.__value_.__l.__data_, v26.__pn_.__r_.__value_.__l.__size_);
LABEL_49:
        mlir::anec::ANECIRNetwork::addWeightFileInfo(v17, &__dst, &__len, &__p);
        if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__len.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_51:
            if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_52;
            }

            goto LABEL_82;
          }
        }

        else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

        operator delete(__dst.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_52:
          if ((SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_53;
          }

          goto LABEL_83;
        }

LABEL_82:
        operator delete(v26.__pn_.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_53:
          if ((SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_54;
          }

          goto LABEL_84;
        }

LABEL_83:
        operator delete(v27.__pn_.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_54:
          if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_55;
          }

LABEL_85:
          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
          goto LABEL_55;
        }

LABEL_84:
        operator delete(v28.__pn_.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_85;
      }

LABEL_86:
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    mlir::pdl::OperationOp::getOpName(&v30, &__len);
    if (__len.__r_.__value_.__r.__words[0])
    {
      v5 = __len.__r_.__value_.__l.__size_;
      if (__len.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_86;
      }

      if (__len.__r_.__value_.__l.__size_ >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = __len.__r_.__value_.__s.__data_[8];
      if (__len.__r_.__value_.__l.__size_)
      {
        memmove(&__dst, __len.__r_.__value_.__l.__data_, __len.__r_.__value_.__l.__size_);
      }

      __dst.__r_.__value_.__s.__data_[v5] = 0;
      if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
      if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_14:
        __p.__pn_ = __dst;
        goto LABEL_15;
      }
    }

    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    goto LABEL_14;
  }

LABEL_55:
  {
    mlir::collect_regions::detail::verifyShouldAddToQueue();
  }

  if (!(*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return;
  }

  v18 = a1[3];
  memset(&v28, 0, sizeof(v28));
  v19 = *(v18 + 23);
  if (v19 >= 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = *v18;
  }

  if (v19 >= 0)
  {
    v21 = *(v18 + 23);
  }

  else
  {
    v21 = *(v18 + 8);
  }

  std::string::append[abi:nn200100]<char const*,0>(&v28.__pn_, v20, (v20 + v21));
  v22 = a1[1];
  std::__fs::filesystem::__weakly_canonical(&__dst, &v28, 0);
  std::__fs::filesystem::__weakly_canonical(&__len, v22, 0);
  std::__fs::filesystem::path::lexically_relative(&__p, &__dst, &__len);
  if ((SHIBYTE(__len.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_70:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

LABEL_71:
    operator delete(v28.__pn_.__r_.__value_.__l.__data_);
    goto LABEL_67;
  }

  operator delete(__len.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_70;
  }

LABEL_66:
  if (SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_71;
  }

LABEL_67:
  v23 = a1[2];
  v24 = a1[3];
  v25 = *v23;
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__dst, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = __p.__pn_;
  }

  *(&__len.__r_.__value_.__s + 23) = 0;
  __len.__r_.__value_.__s.__data_[0] = 0;
  mlir::anec::ANECIRNetwork::addWeightFileInfo(v25, v24, &__dst, &__len);
  if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__len.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_75:
      if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_79:
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_75;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_79;
  }
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<llvm::LogicalResult mlir::anec::anonymous namespace::WriteMultiFunctionPass::writeMultiFunctionPlists<mlir::anec::A11Legacy>(mlir::ModuleOp)::{lambda(mlir::Operation *)#2}>(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 47) || (result = mlir::Operation::getInherentAttr(a2, "name", 4), (v4 & 1) == 0))
  {
    result = mlir::DictionaryAttr::contains(a2 + 56, "name", 4uLL);
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (result)
  {
LABEL_6:
    Context = mlir::Attribute::getContext((a2 + 24));
    v8 = 261;
    v7[0] = "name";
    v7[1] = 4;
    v6 = mlir::StringAttr::get(Context, v7);
    return mlir::Operation::removeAttr(a2, v6);
  }

  return result;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::anec::getRegionConversionInfo(mlir::Operation *,mlir::anec::ANECIRWeightSerializer &,std::shared_ptr<mlir::anec::RegionConversionInfo> &,llvm::DenseMap<long long,std::shared_ptr<mlir::anec::ANECIRConstant>,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseMapPair<long long,std::shared_ptr<mlir::anec::ANECIRConstant>>> &)::$_0>(uint64_t **a1, uint64_t a2)
{
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id)
  {
    goto LABEL_25;
  }

  v14 = a2;
  memset(&__p, 0, sizeof(__p));
  mlir::pdl::OperationOp::getOpName(&v14, &__dst);
  if (__dst.__r_.__value_.__s.__data_[16] == 1)
  {
    mlir::pdl::OperationOp::getOpName(&v14, &__src);
    if (__src)
    {
      v4 = __len;
      if (__len > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_38;
      }

      if (__len >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = __len;
      if (__len)
      {
        memmove(&__dst, __src, __len);
      }

      __dst.__r_.__value_.__s.__data_[v4] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
    }

    __p = __dst;
  }

  Name = mlir::pdl_interp::ApplyRewriteOp::getName(&v14);
  if (Name)
  {
    v7 = v6;
    if (v6 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v6 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v6;
      if (v6)
      {
        memmove(&__dst, Name, v6);
      }

      __dst.__r_.__value_.__s.__data_[v7] = 0;
      goto LABEL_23;
    }

LABEL_38:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  memset(&__dst, 0, sizeof(__dst));
LABEL_23:
  mlir::anec::ANECIRNetwork::addWeightFileInfo(**a1, &__dst, &__dst, &__p);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_25:
  {
    mlir::collect_regions::detail::verifyShouldAddToQueue();
  }

  if ((*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    v8 = a1[1];
    if (*(v8 + 103) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v8[10], v8[11]);
    }

    else
    {
      __p = *(v8 + 10);
    }

    v9 = **a1;
    *(&__dst.__r_.__value_.__s + 23) = 0;
    __dst.__r_.__value_.__s.__data_[0] = 0;
    mlir::anec::ANECIRNetwork::addWeightFileInfo(v9, &__p, &__p, &__dst);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_35:
      operator delete(__p.__r_.__value_.__l.__data_);
      return;
    }

    operator delete(__dst.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_35;
    }
  }
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::anec::getRegionConversionInfo(mlir::Operation *,mlir::anec::ANECIRWeightSerializer &,std::shared_ptr<mlir::anec::RegionConversionInfo> &,llvm::DenseMap<long long,std::shared_ptr<mlir::anec::ANECIRConstant>,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseMapPair<long long,std::shared_ptr<mlir::anec::ANECIRConstant>>> &)::$_1>(uint64_t a1, char *a2)
{
  {
    llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_7>();
  }

  if (!(*(**(a2 + 6) + 32))(*(a2 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    goto LABEL_51;
  }

  if (mlir::anec::ANECIRWeightSerializer::hasConstant(*a1, a2))
  {
    v5 = *(a1 + 8);
    v6 = mlir::anec::ANECIRWeightSerializer::lookupConstant(*a1, a2);
    v7 = *(v5 + 16);
    if (v7)
    {
      v8 = v7 - 1;
      v9 = (37 * v6) & v8;
      v10 = *(*v5 + 24 * v9);
      if (v6 == v10)
      {
LABEL_7:
        v11 = mlir::anec::ANECIRWeightSerializer::lookupConstant(*a1, a2);
        v12 = *(a1 + 8);
        v13 = **(a1 + 16);
        v14 = *v12;
        v15 = *(v12 + 4);
        if (v15)
        {
          v16 = (v15 - 1) & (37 * v11);
          v17 = (v14 + 24 * v16);
          v18 = *v17;
          if (v11 == *v17)
          {
            goto LABEL_14;
          }

          v19 = 1;
          while (v18 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v20 = v16 + v19++;
            v16 = v20 & (v15 - 1);
            v17 = (v14 + 24 * v16);
            v18 = *v17;
            if (v11 == *v17)
            {
              goto LABEL_14;
            }
          }
        }

        v17 = (v14 + 24 * v15);
LABEL_14:
        v21 = (v17 + 1);
        v22 = *(v13 + 72);
        v23 = *(v13 + 64);
        if (v22 >= *(v13 + 76))
        {
          v53 = v11;
          if (v23 <= v21 && v23 + 16 * v22 > v21)
          {
            v52 = &v21[-v23];
            llvm::SmallVectorTemplateBase<std::shared_ptr<mlir::anec::FunctionConversionInfo>,false>::grow(v13 + 64, v22 + 1);
            v23 = *(v13 + 64);
            v21 = &v52[v23];
          }

          else
          {
            llvm::SmallVectorTemplateBase<std::shared_ptr<mlir::anec::FunctionConversionInfo>,false>::grow(v13 + 64, v22 + 1);
            v23 = *(v13 + 64);
          }

          v11 = v53;
        }

        v24 = *(v13 + 72);
        v25 = *v21;
        *(v23 + 16 * v24) = *v21;
        if (*(&v25 + 1))
        {
          atomic_fetch_add_explicit((*(&v25 + 1) + 8), 1uLL, memory_order_relaxed);
          LODWORD(v24) = *(v13 + 72);
        }

        *(v13 + 72) = v24 + 1;
        v26 = *(a1 + 8);
        v27 = *v26;
        v28 = *(v26 + 4);
        if (v28)
        {
          v29 = (v28 - 1) & (37 * v11);
          v30 = (v27 + 24 * v29);
          v31 = *v30;
          if (v11 == *v30)
          {
LABEL_24:
            v34 = v30[1];
            if (*(v34 + 31) < 0)
            {
              std::string::__init_copy_ctor_external(&v56, *(v34 + 8), *(v34 + 16));
            }

            else
            {
              v35 = *(v34 + 8);
              v56.__r_.__value_.__r.__words[2] = *(v34 + 24);
              *&v56.__r_.__value_.__l.__data_ = v35;
            }

            Context = mlir::Attribute::getContext((a2 + 24));
            size = SHIBYTE(v56.__r_.__value_.__r.__words[2]);
            v38 = &v56;
            if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v38 = v56.__r_.__value_.__r.__words[0];
            }

            if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = v56.__r_.__value_.__l.__size_;
            }

            v55 = 261;
            v54[0] = v38;
            v54[1] = size;
            v39 = mlir::StringAttr::get(Context, v54);
            v40 = mlir::Attribute::getContext((a2 + 24));
            v60 = 261;
            v57 = "name";
            v58 = 4;
            v41 = mlir::StringAttr::get(v40, &v57);
            mlir::Operation::setAttr(a2, v41, v39);
            if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v56.__r_.__value_.__l.__data_);
            }

            goto LABEL_51;
          }

          v32 = 1;
          while (v31 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v33 = v29 + v32++;
            v29 = v33 & (v28 - 1);
            v30 = (v27 + 24 * v29);
            v31 = *v30;
            if (v11 == *v30)
            {
              goto LABEL_24;
            }
          }
        }

        v30 = (v27 + 24 * v28);
        goto LABEL_24;
      }

      v42 = 1;
      while (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v43 = v9 + v42++;
        v9 = v43 & v8;
        v10 = *(*v5 + 24 * v9);
        if (v6 == v10)
        {
          goto LABEL_7;
        }
      }
    }
  }

  {
    return;
  }

  v44 = mlir::anec::ANECIRWeightSerializer::lookupConstant(*a1, a2);
  v45 = *(**(a1 + 24) + 448);
  if (v45 != *(**(a1 + 24) + 440))
  {
    v46 = *(v45 - 16);
    v47 = *(v45 - 8);
    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v46 && *(v46 + 40) == v44)
    {
      v48 = *(a1 + 8);
      v57 = v44;
      v58 = v46;
      v59 = v47;
      if (v47)
      {
        atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      llvm::DenseMapBase<llvm::DenseMap<long long,std::shared_ptr<mlir::anec::ANECIRConstant>,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseMapPair<long long,std::shared_ptr<mlir::anec::ANECIRConstant>>>,long long,std::shared_ptr<mlir::anec::ANECIRConstant>,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseMapPair<long long,std::shared_ptr<mlir::anec::ANECIRConstant>>>::try_emplace<std::shared_ptr<mlir::anec::ANECIRConstant>>(v48, &v57, &v58, v54);
      v49 = v59;
      if (v59 && !atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v49->__on_zero_shared)(v49);
        std::__shared_weak_count::__release_weak(v49);
      }
    }

    if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v47->__on_zero_shared)(v47);
      std::__shared_weak_count::__release_weak(v47);
    }
  }

LABEL_51:
  if (*(*(a2 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::anec::RegionReturn,void>::id)
  {
    if (mlir::OpInterface<mlir::anec::PlistGeneratorInterface,mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits>::getInterfaceFor(a2))
    {
      InterfaceFor = mlir::OpInterface<mlir::anec::PlistGeneratorInterface,mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits>::getInterfaceFor(a2);
      v57 = a2;
      v58 = InterfaceFor;
      if (a2)
      {
        mlir::ExternalFoldInterface::externalFold(&v57, **(a1 + 24), *a1);
      }
    }

    else
    {
      v57 = 0;
      v58 = 0;
    }
  }
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<long long,std::shared_ptr<mlir::anec::ANECIRConstant>,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseMapPair<long long,std::shared_ptr<mlir::anec::ANECIRConstant>>>,long long,std::shared_ptr<mlir::anec::ANECIRConstant>,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseMapPair<long long,std::shared_ptr<mlir::anec::ANECIRConstant>>>::try_emplace<std::shared_ptr<mlir::anec::ANECIRConstant>>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 4);
  if (v5)
  {
    v6 = *result;
    v7 = v5 - 1;
    v8 = (37 * *a2) & (v5 - 1);
    v9 = *result + 24 * v8;
    v10 = *v9;
    if (*a2 == *v9)
    {
LABEL_3:
      v11 = 0;
      goto LABEL_10;
    }

    v13 = 0;
    v14 = 1;
    while (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v10 == 0x8000000000000000;
      }

      if (v15)
      {
        v13 = v9;
      }

      v16 = v8 + v14++;
      v8 = v16 & v7;
      v9 = v6 + 24 * (v16 & v7);
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
  }

  else
  {
    v9 = 0;
  }

  v20 = v9;
  v12 = *(result + 2);
  if (4 * v12 + 4 >= 3 * v5)
  {
    v5 *= 2;
    goto LABEL_24;
  }

  if (v5 + ~v12 - *(result + 3) <= v5 >> 3)
  {
LABEL_24:
    v17 = result;
    v18 = a4;
    v19 = a3;
    llvm::DenseMap<long long,std::shared_ptr<mlir::anec::ANECIRConstant>,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseMapPair<long long,std::shared_ptr<mlir::anec::ANECIRConstant>>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<long long,std::shared_ptr<mlir::anec::ANECIRConstant>,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseMapPair<long long,std::shared_ptr<mlir::anec::ANECIRConstant>>>,long long,std::shared_ptr<mlir::anec::ANECIRConstant>,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseMapPair<long long,std::shared_ptr<mlir::anec::ANECIRConstant>>>::LookupBucketFor<long long>(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v12 = *(v17 + 2);
    v9 = v20;
  }

  *(result + 2) = v12 + 1;
  if (*v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    --*(result + 3);
  }

  *v9 = *a2;
  *(v9 + 8) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  v6 = *result;
  v5 = *(result + 4);
  v11 = 1;
LABEL_10:
  *a4 = v9;
  *(a4 + 8) = v6 + 24 * v5;
  *(a4 + 16) = v11;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<long long,std::shared_ptr<mlir::anec::ANECIRConstant>,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseMapPair<long long,std::shared_ptr<mlir::anec::ANECIRConstant>>>,long long,std::shared_ptr<mlir::anec::ANECIRConstant>,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseMapPair<long long,std::shared_ptr<mlir::anec::ANECIRConstant>>>::LookupBucketFor<long long>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = *a2;
    v6 = v3 - 1;
    v7 = (37 * *a2) & (v3 - 1);
    v8 = (*a1 + 24 * v7);
    v9 = *v8;
    if (*a2 == *v8)
    {
      result = 1;
      *a3 = v8;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      result = 1;
      while (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v11)
        {
          v13 = 0;
        }

        else
        {
          v13 = v9 == 0x8000000000000000;
        }

        if (v13)
        {
          v11 = v8;
        }

        v14 = v7 + v12++;
        v7 = v14 & v6;
        v8 = (v4 + 24 * (v14 & v6));
        v9 = *v8;
        if (v5 == *v8)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v11)
      {
        v8 = v11;
      }

      *a3 = v8;
    }
  }

  else
  {
    v8 = 0;
    result = 0;
LABEL_5:
    *a3 = v8;
  }

  return result;
}

void *llvm::DenseMap<long long,std::shared_ptr<mlir::anec::ANECIRConstant>,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseMapPair<long long,std::shared_ptr<mlir::anec::ANECIRConstant>>>::grow(uint64_t a1, int a2)
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
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = &result[3 * (v16 & 0x1FFFFFFFFFFFFFFELL)];
      v17 = result;
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = 0x7FFFFFFFFFFFFFFFLL;
        v17[3] = 0x7FFFFFFFFFFFFFFFLL;
        v17 += 6;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_16:
        if (v3)
        {
          v20 = v4;
          do
          {
            v26 = *v20;
            if ((*v20 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
            {
              v27 = *(a1 + 16) - 1;
              v28 = v27 & (37 * v26);
              v25 = *a1 + 24 * v28;
              v29 = *v25;
              if (v26 != *v25)
              {
                v30 = 0;
                v31 = 1;
                while (v29 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  if (v30)
                  {
                    v32 = 0;
                  }

                  else
                  {
                    v32 = v29 == 0x8000000000000000;
                  }

                  if (v32)
                  {
                    v30 = v25;
                  }

                  v33 = v28 + v31++;
                  v28 = v33 & v27;
                  v25 = *a1 + 24 * (v33 & v27);
                  v29 = *v25;
                  if (v26 == *v25)
                  {
                    goto LABEL_26;
                  }
                }

                if (v30)
                {
                  v25 = v30;
                }
              }

LABEL_26:
              *v25 = v26;
              *(v25 + 8) = *(v20 + 8);
              *(v20 + 1) = 0;
              *(v20 + 2) = 0;
              ++*(a1 + 8);
            }

            v20 = (v20 + 24);
          }

          while (v20 != (v4 + 24 * v3));
        }

        llvm::deallocate_buffer(v4, (24 * v3));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = &result[3 * v10];
    do
    {
      *v12 = 0x7FFFFFFFFFFFFFFFLL;
      v12 += 3;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 24 * v13 - 24;
    if (v14 < 0x18)
    {
      v15 = result;
LABEL_21:
      v24 = &result[3 * v13];
      do
      {
        *v15 = 0x7FFFFFFFFFFFFFFFLL;
        v15 += 3;
      }

      while (v15 != v24);
      return result;
    }

    v21 = v14 / 0x18 + 1;
    v15 = &result[3 * (v21 & 0x1FFFFFFFFFFFFFFELL)];
    v22 = result;
    v23 = v21 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v22 = 0x7FFFFFFFFFFFFFFFLL;
      v22[3] = 0x7FFFFFFFFFFFFFFFLL;
      v22 += 6;
      v23 -= 2;
    }

    while (v23);
    if (v21 != (v21 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_21;
    }
  }

  return result;
}

void *llvm::DenseMap<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>,mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>::moveFromOldBuckets(a1, v4, &v10[v4]);

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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>,mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = a2;
  *(result + 8) = 0;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *result;
    v6 = (v4 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v6)
    {
      v7 = v6 + 1;
      v8 = (v6 + 1) & 0xFFFFFFFFFFFFFFELL;
      v9 = &v5[4 * v8];
      v10 = v5 + 4;
      v11 = v8;
      do
      {
        *(v10 - 4) = -4096;
        *v10 = -4096;
        v10 += 8;
        v11 -= 2;
      }

      while (v11);
      if (v7 == v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = *result;
    }

    v12 = &v5[4 * v4];
    do
    {
      *v9 = -4096;
      v9 += 4;
    }

    while (v9 != v12);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v16 = *v3;
      if ((*v3 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v17 = *(result + 16) - 1;
        v18 = v17 & ((v16 >> 4) ^ (v16 >> 9));
        v13 = *result + 32 * v18;
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
            v13 = *result + 32 * v18;
            v19 = *v13;
            if (v16 == *v13)
            {
              goto LABEL_14;
            }
          }

          if (v20)
          {
            v13 = v20;
          }
        }

LABEL_14:
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
        *v13 = v16;
        *(v13 + 24) = 0;
        *(v13 + 8) = v3[1];
        v3[1] = 0;
        *(v13 + 16) = *(v3 + 4);
        *(v3 + 4) = 0;
        v14 = *(v13 + 20);
        *(v13 + 20) = *(v3 + 5);
        *(v3 + 5) = v14;
        v15 = *(v13 + 24);
        *(v13 + 24) = *(v3 + 6);
        *(v3 + 6) = v15;
        ++*(result + 8);
        llvm::deallocate_buffer(0, (8 * v15));
      }

      v3 += 4;
    }

    while (v3 != a3);
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<unsigned long,std::string,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::string>>,unsigned long,std::string,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::string>>::try_emplace<std::string>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 4);
  if (v5)
  {
    v6 = *result;
    v7 = (v5 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v8 = *result + 32 * v7;
    v9 = *v8;
    if (*a2 == *v8)
    {
LABEL_3:
      v10 = 0;
      goto LABEL_10;
    }

    v13 = 0;
    v14 = 1;
    while (v9 != -1)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v9 == -2;
      }

      if (v15)
      {
        v13 = v8;
      }

      v16 = v7 + v14++;
      v7 = v16 & (v5 - 1);
      v8 = v6 + 32 * v7;
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
  }

  else
  {
    v8 = 0;
  }

  v20 = v8;
  v11 = *(result + 2);
  if (4 * v11 + 4 >= 3 * v5)
  {
    v5 *= 2;
    goto LABEL_24;
  }

  if (v5 + ~v11 - *(result + 3) <= v5 >> 3)
  {
LABEL_24:
    v17 = result;
    v18 = a4;
    v19 = a3;
    llvm::DenseMap<unsigned long,std::string,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::string>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<unsigned long,std::string,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::string>>,unsigned long,std::string,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::string>>::LookupBucketFor<unsigned long>(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v11 = *(v17 + 8);
    v8 = v20;
  }

  *(result + 2) = v11 + 1;
  if (*v8 != -1)
  {
    --*(result + 3);
  }

  *v8 = *a2;
  v12 = *a3;
  *(v8 + 24) = *(a3 + 2);
  *(v8 + 8) = v12;
  *(a3 + 8) = 0uLL;
  *a3 = 0;
  v6 = *result;
  v5 = *(result + 4);
  v10 = 1;
LABEL_10:
  *a4 = v8;
  *(a4 + 8) = v6 + 32 * v5;
  *(a4 + 16) = v10;
  return result;
}

uint64_t mlir::silc::getMeshOrLookup(uint64_t a1, uint64_t a2)
{
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id)
  {
    v17[5] = v2;
    v17[6] = v3;
    v16 = a2;
    LeafReference = mlir::SymbolRefAttr::getLeafReference(&v16);
    AttrData = mlir::OpaqueAttr::getAttrData(&LeafReference);
    v7 = v6;
    Context = mlir::Attribute::getContext((a1 + 24));
    v9 = mlir::SymbolRefAttr::get(Context, AttrData, v7);
    v10 = mlir::SymbolTable::lookupNearestSymbolFrom(a1, v9);
    if (v10 && ((v11 = *(*(v10 + 48) + 16), v12 = v11 == &mlir::detail::TypeIDResolver<mlir::silc::SilcMeshOp,void>::id, v11 != &mlir::detail::TypeIDResolver<mlir::silc::SilcMeshOp,void>::id) ? (v13 = 0) : (v13 = v10), v17[0] = v13, v12))
    {
      return mlir::pdl::OperationOp::getAttributeValueNames(v17);
    }

    else
    {
      return 0;
    }
  }

  return a2;
}

uint64_t mlir::silc::ShardingAttr::getMesh(mlir::silc::ShardingAttr *this, mlir::Operation *a2)
{
  Value = mlir::AffineMapAttr::getValue(this);

  return mlir::silc::getMeshOrLookup(a2, Value);
}

void mlir::silc::ShardingAttr::getMeshVector(uint64_t *__return_ptr a1@<X8>, mlir::ArrayAttr *this@<X1>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  Value = mlir::ArrayAttr::getValue(this);
  if (v4)
  {
    v5 = Value;
    v6 = 8 * v4;
    do
    {
      v7 = *v5++;
      v9 = v7;
      Size = mlir::silc::MeshAxisAttr::getSize(&v9);
      std::vector<mlir::PatternBenefit>::push_back[abi:nn200100](a1, &Size);
      v6 -= 8;
    }

    while (v6);
  }
}

void mlir::silc::ShardingAttr::getMeshVector(uint64_t *__return_ptr a1@<X8>, mlir::silc::ShardingAttr *this@<X0>, mlir::Operation *a3@<X1>)
{
  Value = mlir::AffineMapAttr::getValue(this);
  MeshOrLookup = mlir::silc::getMeshOrLookup(a3, Value);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v6 = mlir::ArrayAttr::getValue(&MeshOrLookup);
  if (v7)
  {
    v8 = v6;
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      v13 = v10;
      Size = mlir::silc::MeshAxisAttr::getSize(&v13);
      std::vector<mlir::PatternBenefit>::push_back[abi:nn200100](a1, &Size);
      v9 -= 8;
    }

    while (v9);
  }
}

void *mlir::silc::ShardingAttr::getMeshAxesVector@<X0>(mlir::OpaqueAttr *a1@<X0>, mlir::ArrayAttr *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = mlir::OpaqueAttr::getAttrData(a1);
  if (v5)
  {
    v6 = 0;
    v27 = &result[v5];
    do
    {
      v28 = result;
      v31 = *result;
      Value = mlir::ArrayAttr::getValue(&v31);
      if (v8)
      {
        v9 = Value;
        v10 = (Value + 8 * v8);
        do
        {
          while (1)
          {
            v30 = *v9;
            v11 = mlir::ArrayAttr::getValue(&v30);
            v13 = v12;
            v14 = mlir::ArrayAttr::getValue(a2);
            if (v15)
            {
              v16 = v14;
              v17 = 8 * v15;
              v18 = 0;
              if (v13)
              {
                while (1)
                {
                  v32 = *(v16 + 8 * v18);
                  v25 = mlir::ArrayAttr::getValue(&v32);
                  if (v26 == v13 && !memcmp(v25, v11, v13))
                  {
                    break;
                  }

                  ++v18;
                  v17 -= 8;
                  if (!v17)
                  {
                    goto LABEL_11;
                  }
                }
              }

              else
              {
                while (1)
                {
                  v32 = *(v16 + 8 * v18);
                  mlir::ArrayAttr::getValue(&v32);
                  if (!v19)
                  {
                    break;
                  }

                  ++v18;
                  v17 -= 8;
                  if (!v17)
                  {
                    goto LABEL_11;
                  }
                }
              }
            }

            else
            {
LABEL_11:
              LOWORD(v18) = -1;
            }

            v20 = a3[2];
            if (v6 >= v20)
            {
              break;
            }

            *v6 = v18;
            v6 += 2;
            a3[1] = v6;
            if (++v9 == v10)
            {
              goto LABEL_3;
            }
          }

          v21 = v6;
          v22 = v6 >> 1;
          if (v6 >> 1 <= -2)
          {
            *a3 = 0;
            std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
          }

          if (v20 <= v22 + 1)
          {
            v23 = v22 + 1;
          }

          else
          {
            v23 = a3[2];
          }

          if (v20 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v24 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v23;
          }

          if (v24)
          {
            if ((v24 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            *a3 = 0;
            std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
          }

          *(2 * v22) = v18;
          v6 = 2 * v22 + 2;
          memcpy(0, 0, v21);
          a3[1] = v6;
          a3[2] = 0;
          a3[1] = v6;
          ++v9;
        }

        while (v9 != v10);
      }

LABEL_3:
      *a3 = 0;
      result = v28 + 1;
    }

    while (v28 + 1 != v27);
  }

  return result;
}

uint64_t *mlir::silc::ShardingAttr::getMeshAxesVector@<X0>(uint64_t *__return_ptr a1@<X8>, mlir::silc::ShardingAttr *this@<X0>, mlir::Operation *a3@<X1>)
{
  Value = mlir::AffineMapAttr::getValue(this);
  MeshOrLookup = mlir::silc::getMeshOrLookup(a3, Value);
  return mlir::silc::ShardingAttr::getMeshAxesVector(this, &MeshOrLookup, a1);
}

void mlir::silc::ShardingAttr::getTensorAxesVector(uint64_t *__return_ptr a1@<X8>, mlir::silc::ShardingAttr *this@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  AttrData = mlir::OpaqueAttr::getAttrData(this);
  if (v4)
  {
    v5 = AttrData;
    v6 = 0;
    v7 = 0;
    v16 = (AttrData + 8 * v4);
    do
    {
      v17 = *v5;
      mlir::ArrayAttr::getValue(&v17);
      if (v8)
      {
        v9 = 8 * v8;
        do
        {
          while (1)
          {
            v10 = a1[2];
            if (v6 >= v10)
            {
              break;
            }

            *v6 = v7;
            v6 += 2;
            a1[1] = v6;
            v9 -= 8;
            if (!v9)
            {
              goto LABEL_3;
            }
          }

          v11 = v6;
          v12 = v6 >> 1;
          if (v12 <= -2)
          {
            *a1 = 0;
            std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
          }

          if (v10 <= v12 + 1)
          {
            v13 = v12 + 1;
          }

          else
          {
            v13 = a1[2];
          }

          if (v10 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v14 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v13;
          }

          if (v14)
          {
            if ((v14 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            *a1 = 0;
            std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
          }

          v15 = (2 * v12);
          *v15 = v7;
          v6 = (v15 + 1);
          memcpy(0, 0, v11);
          a1[1] = v6;
          a1[2] = 0;
          a1[1] = v6;
          v9 -= 8;
        }

        while (v9);
      }

LABEL_3:
      *a1 = 0;
      ++v7;
      ++v5;
    }

    while (v5 != v16);
  }
}

uint64_t mlir::silc::ShardingAttr::inflateRank(mlir::silc::ShardingAttr *this, int a2, int a3)
{
  mlir::OpaqueAttr::getAttrData(this);
  if (a3)
  {
    v6 = 5;
  }

  else
  {
    v6 = 4;
  }

  if (v5 < v6)
  {
    Context = mlir::Attribute::getContext(this);
    mlir::silc::TensorAxisRefAttr::get(Context, 0, 0);
    operator new();
  }

  return *this;
}

uint64_t mlir::silc::parseSilcMeshOrRef(mlir::silc *this, mlir::AsmParser *a2, mlir::Attribute *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = (*(*this + 408))(this, "mesh", 4);
  Context = mlir::AsmParser::getContext(this);
  if (v5)
  {
    mlir::MLIRContext::getOrLoadDialect(Context, "silc", 4);
    v33[0] = 0;
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::MeshAttr>(this, v33, 0))
    {
      v7 = (*(*this + 40))(this);
      v30[0] = "failed to parse MeshAttr";
      v31 = 259;
      (*(*this + 24))(v33, this, v7, v30);
      v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
      if (v33[0])
      {
        mlir::InFlightDiagnostic::report(v33);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v9 = __p;
        if (__p)
        {
          v10 = v41;
          v11 = __p;
          if (v41 != __p)
          {
            do
            {
              v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
            }

            while (v10 != v9);
            v11 = __p;
          }

          v41 = v9;
          operator delete(v11);
        }

        v12 = v38;
        if (!v38)
        {
          goto LABEL_42;
        }

        v13 = v39;
        v14 = v38;
        if (v39 == v38)
        {
LABEL_41:
          v39 = v12;
          operator delete(v14);
LABEL_42:
          if (v34 != v37)
          {
            free(v34);
          }

          return v8;
        }

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
LABEL_40:
        v14 = v38;
        goto LABEL_41;
      }

      return v8;
    }

LABEL_20:
    *a2 = v33[0];
    return 1;
  }

  mlir::MLIRContext::getOrLoadDialect(Context, "builtin", 7);
  v33[0] = 0;
  if (mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(this, v33, 0))
  {
    goto LABEL_20;
  }

  v17 = (*(*this + 40))(this);
  v30[0] = "expecting MeshAttr or FlatSymbolRefAttr, got: ";
  v31 = 259;
  (*(*this + 24))(v33, this, v17, v30);
  if (v33[0])
  {
    v18 = v32;
    mlir::DiagnosticArgument::DiagnosticArgument(v32, *a2);
    v19 = v34;
    if (v35 >= v36)
    {
      if (v34 <= v32 && v34 + 24 * v35 > v32)
      {
        v29 = v32 - v34;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
        v19 = v34;
        v18 = v34 + v29;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
        v18 = v32;
        v19 = v34;
      }
    }

    v20 = &v19[24 * v35];
    v21 = *v18;
    *(v20 + 2) = *(v18 + 2);
    *v20 = v21;
    ++v35;
  }

  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
  if (v33[0])
  {
    mlir::InFlightDiagnostic::report(v33);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v41;
      v24 = __p;
      if (v41 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v41 = v22;
      operator delete(v24);
    }

    v12 = v38;
    if (!v38)
    {
      goto LABEL_42;
    }

    v25 = v39;
    v14 = v38;
    if (v39 == v38)
    {
      goto LABEL_41;
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

    while (v25 != v12);
    goto LABEL_40;
  }

  return v8;
}

uint64_t mlir::silc::printSilcMeshOrRef(mlir::AsmPrinter *a1, uint64_t a2)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  v4 = *a1;
  if (v3)
  {
    v5 = (*(v4 + 16))(a1);
    v6 = v5[4];
    if (v5[3] - v6 > 3uLL)
    {
      *v6 = 1752393069;
      v5[4] += 4;
    }

    else
    {
      llvm::raw_ostream::write(v5, "mesh", 4uLL);
    }

    v11 = v3;
    result = (*(*a1 + 56))(a1, v3);
    if ((result & 1) == 0)
    {
      v9 = (*(*a1 + 16))(a1);
      v10 = (*(*v9 + 80))(v9) + v9[4] - v9[2];
      mlir::silc::MeshAttr::print(&v11, a1);
      result = (*(*v9 + 80))(v9);
      if (v10 == result + v9[4] - v9[2])
      {
        return (*(*a1 + 40))(a1, v11);
      }
    }
  }

  else
  {
    v7 = *(v4 + 40);

    return v7();
  }

  return result;
}

BOOL mlir::silc::MeshAxisAttr::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    return 1;
  }

  a1(v29, a2);
  if (v29[0])
  {
    v26 = 3;
    v27 = "axis size must be at least 1, got: ";
    v28 = 35;
    v6 = &v26;
    v7 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v26 && v30 + 24 * v31 > &v26)
      {
        v24 = &v26 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v7 = v30;
        v6 = (v30 + v24);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v6 = &v26;
        v7 = v30;
      }
    }

    v8 = &v7[24 * v31];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    v10 = ++v31;
    if (v29[0])
    {
      v26 = 5;
      v27 = 0;
      v11 = &v26;
      v12 = v30;
      if (v10 >= v32)
      {
        if (v30 <= &v26 && v30 + 24 * v10 > &v26)
        {
          v25 = &v26 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v10 + 1, 24);
          v12 = v30;
          v11 = (v30 + v25);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v10 + 1, 24);
          v11 = &v26;
          v12 = v30;
        }
      }

      v13 = &v12[24 * v31];
      v14 = *v11;
      *(v13 + 2) = *(v11 + 2);
      *v13 = v14;
      ++v31;
    }
  }

  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
  if (v29[0])
  {
    mlir::InFlightDiagnostic::report(v29);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v37;
      v17 = __p;
      if (v37 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v37 = v15;
      operator delete(v17);
    }

    v18 = v34;
    if (v34)
    {
      v19 = v35;
      v20 = v34;
      if (v35 != v34)
      {
        do
        {
          v22 = *--v19;
          v21 = v22;
          *v19 = 0;
          if (v22)
          {
            MEMORY[0x1AC55A040](v21, 0x1000C8077774924);
          }
        }

        while (v19 != v18);
        v20 = v34;
      }

      v35 = v18;
      operator delete(v20);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }

  return v5;
}

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::MeshAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  v21[0] = a1;
  if (((*(*a1 + 448))(a1, &v20, a3, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4silc8MeshAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v21) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v18 = "invalid kind of attribute specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v6, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v9 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v9;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
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
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v9;
    }
  }

  return result;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4silc8MeshAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2, uint64_t a3)
{
  v4 = mlir::silc::MeshAttr::parse(*a1);
  *a2 = v4;
  return v4 != 0;
}

const char *llvm::getTypeName<mlir::silc::CollectiveCommunicationInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::CollectiveCommunicationInterface]";
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

void mlir::silc::SilcDialect::SilcDialect(mlir::silc::SilcDialect *this, mlir::MLIRContext *a2)
{
  v2 = mlir::Dialect::Dialect(this, "silc", 4, a2, &mlir::detail::TypeIDResolver<mlir::silc::SilcDialect,void>::id);
  *v2 = &unk_1F1A35358;
  mlir::RegisteredOperationName::insert<mlir::silc::SilcAllGatherOp>(v2);
}

void sub_1A73B3614()
{

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::detail::StorageUserBase<mlir::silc::MeshAxisAttr,mlir::Attribute,mlir::silc::detail::MeshAxisAttrStorage,mlir::detail::AttributeUniquer>::getChecked<llvm::StringRef,unsigned short>(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, llvm::hashing::detail *a4, uint64_t a5, int a6)
{
  v6 = a6;
  v21 = *MEMORY[0x1E69E9840];
  if (!mlir::silc::MeshAxisAttr::verify(a1, a2, a4, a5, a6))
  {
    return 0;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a3);
  v15[0] = &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisAttr,void>::id;
  v15[1] = a3;
  v19[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail19MeshAxisAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_12MeshAxisAttrEJRNS_9StringRefERtEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v19[1] = v15;
  v17[0] = a4;
  v17[1] = a5;
  v18 = v6;
  v11 = llvm::hash_value(a4, a5);
  *&v20 = v11;
  WORD4(v20) = v6;
  v12 = __ROR8__(*(&v20 + 2) + 10, 10);
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v12)));
  v16 = v17;
  *&v20 = v17;
  *(&v20 + 1) = v19;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisAttr,void>::id, (-348639895 * ((v13 >> 47) ^ v13)) ^ (v11 >> 16), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::MeshAxisAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisAttrStorage,llvm::StringRef &,unsigned short &>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisAttrStorage *)>,mlir::TypeID,llvm::StringRef &,unsigned short &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::MeshAxisAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisAttrStorage,llvm::StringRef &,unsigned short &>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisAttrStorage *)>,mlir::TypeID,llvm::StringRef &,unsigned short &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v20);
}

uint64_t mlir::silc::MeshAxisAttr::parse(mlir::AsmParser *a1)
{
  v53[2] = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  v2 = (*(*a1 + 40))(a1);
  LOBYTE(v31) = 0;
  v34 = 0;
  __p = 0;
  v29 = 0uLL;
  if (!mlir::AsmParser::parseString(a1, &__p))
  {
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p);
    }

    v8 = (*(*a1 + 40))(a1);
    v30 = 259;
    (*(*a1 + 24))(v44, a1, v8, &__p);
    if (v44[0])
    {
      mlir::InFlightDiagnostic::report(v44);
    }

    if (v52 != 1)
    {
      goto LABEL_50;
    }

    if (v51 != &v52)
    {
      free(v51);
    }

    v9 = v49;
    if (v49)
    {
      v10 = v50;
      v11 = v49;
      if (v50 != v49)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = v49;
      }

      v50 = v9;
      operator delete(v11);
    }

    v12 = v47;
    if (v47)
    {
      v13 = v48;
      v14 = v47;
      if (v48 != v47)
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
        v14 = v47;
      }

      v48 = v12;
      operator delete(v14);
    }

    v26 = v45;
    if (v45 == &v46)
    {
LABEL_50:
      v7 = 0;
      if (v34 != 1)
      {
        return v7;
      }

      goto LABEL_51;
    }

LABEL_49:
    free(v26);
    goto LABEL_50;
  }

  *(v53 + 7) = *(&v29 + 7);
  v53[0] = v29;
  v31 = __p;
  *v32 = v29;
  *&v32[7] = *(v53 + 7);
  v33 = HIBYTE(v29);
  v34 = 1;
  if (((*(*a1 + 136))(a1) & 1) == 0)
  {
    goto LABEL_50;
  }

  LOWORD(__p) = 0;
  if ((mlir::AsmParser::parseInteger<unsigned short>(a1, &__p) & 1) == 0)
  {
    v17 = (*(*a1 + 40))(a1);
    v30 = 259;
    (*(*a1 + 24))(v35, a1, v17, &__p);
    if (v35[0])
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 != 1)
    {
      goto LABEL_50;
    }

    if (v42 != &v43)
    {
      free(v42);
    }

    v18 = v40;
    if (v40)
    {
      v19 = v41;
      v20 = v40;
      if (v41 != v40)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = v40;
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

    v26 = v36;
    if (v36 == &v37)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v3 = __p;
  Context = mlir::AsmParser::getContext(a1);
  if (v33 >= 0)
  {
    v5 = &v31;
  }

  else
  {
    v5 = v31;
  }

  if (v33 >= 0)
  {
    v6 = v33;
  }

  else
  {
    v6 = *v32;
  }

  v53[0] = v2;
  __p = a1;
  *&v29 = v53;
  v7 = mlir::detail::StorageUserBase<mlir::silc::MeshAxisAttr,mlir::Attribute,mlir::silc::detail::MeshAxisAttrStorage,mlir::detail::AttributeUniquer>::getChecked<llvm::StringRef,unsigned short>(_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4silc12MeshAxisAttrEJPNS1_11MLIRContextENS_9StringRefEtEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l, &__p, Context, v5, v6, v3);
  if (v34 == 1)
  {
LABEL_51:
    if (v33 < 0)
    {
      operator delete(v31);
    }
  }

  return v7;
}

llvm::raw_ostream *mlir::silc::MeshAxisAttr::print(mlir::silc::MeshAxisAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  (*(*a2 + 80))(a2, *(*this + 8), *(*this + 16));
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "=", 1uLL);
  }

  else
  {
    *v5 = 61;
    ++v4[4];
  }

  v6 = *(*this + 24);
  v7 = (*(*a2 + 16))(a2);

  return llvm::raw_ostream::operator<<(v7, v6);
}

uint64_t mlir::silc::MeshAttr::parse(mlir::AsmParser *a1)
{
  v72 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v68) = 0;
  v71 = 0;
  LOBYTE(v64) = 0;
  v67 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_65;
  }

  mlir::FieldParser<llvm::SmallVector<mlir::silc::MeshAxisAttr,6u>,llvm::SmallVector<mlir::silc::MeshAxisAttr,6u>>::parse(a1, &__src);
  if (v71 == v63)
  {
    if (v71)
    {
      v2 = __src;
      if (__src != v61)
      {
        if (v68 != v70)
        {
          free(v68);
          v2 = __src;
        }

        v68 = v2;
        v69 = v60;
        __src = v61;
        v60 = 0;
        if (v63 != 1)
        {
          goto LABEL_29;
        }

LABEL_27:
        if (__src != v61)
        {
          free(__src);
        }

        goto LABEL_29;
      }

      v4 = v60;
      v5 = v69;
      if (v69 >= v60)
      {
        if (v60)
        {
          memmove(v68, __src, 8 * v60);
        }

LABEL_81:
        LODWORD(v69) = v4;
        LODWORD(v60) = 0;
        if (v63 != 1)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

      if (HIDWORD(v69) >= v60)
      {
        if (v69)
        {
          memmove(v68, __src, 8 * v69);
          goto LABEL_79;
        }
      }

      else
      {
        LODWORD(v69) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v70, v60, 8);
      }

      v5 = 0;
LABEL_79:
      if (v60 != v5)
      {
        memcpy(&v68[8 * v5], __src + 8 * v5, 8 * (v60 - v5));
      }

      goto LABEL_81;
    }

LABEL_26:
    if (v63 != 1)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (!v71)
  {
    v68 = v70;
    v69 = 0x600000000;
    v3 = v60;
    if (v60)
    {
      if (__src == v61)
      {
        v6 = v60;
        if (v60 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v70, v60, 8), (v6 = v60) != 0))
        {
          memcpy(v68, __src, 8 * v6);
        }

        LODWORD(v69) = v3;
      }

      else
      {
        v68 = __src;
        v69 = v60;
        __src = v61;
        HIDWORD(v60) = 0;
      }

      LODWORD(v60) = 0;
    }

    v71 = 1;
    goto LABEL_26;
  }

  if (v68 != v70)
  {
    free(v68);
  }

  v71 = 0;
  if (v63 == 1)
  {
    goto LABEL_27;
  }

LABEL_29:
  v7 = *a1;
  if ((v71 & 1) == 0)
  {
    v13 = (*(v7 + 40))(a1);
    v62 = 259;
    (*(*a1 + 24))(v50, a1, v13, &__src);
    if (v50[0])
    {
      mlir::InFlightDiagnostic::report(v50);
    }

    if (v58 == 1)
    {
      if (v57 != &v58)
      {
        free(v57);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v56;
        v16 = __p;
        if (v56 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v56 = v14;
        operator delete(v16);
      }

      v17 = v53;
      if (v53)
      {
        v18 = v54;
        v19 = v53;
        if (v54 != v53)
        {
          do
          {
            v21 = *--v18;
            v20 = v21;
            *v18 = 0;
            if (v21)
            {
              MEMORY[0x1AC55A040](v20, 0x1000C8077774924);
            }
          }

          while (v18 != v17);
          v19 = v53;
        }

        v54 = v17;
        operator delete(v19);
      }

      if (v51 != &v52)
      {
        free(v51);
      }
    }

    goto LABEL_65;
  }

  if ((*(v7 + 128))(a1))
  {
    v62 = 257;
    if (((*(*a1 + 400))(a1, "device_ids", 10, &__src) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) == 0 || ((*(*a1 + 312))(a1) & 1) == 0)
    {
      goto LABEL_65;
    }

    mlir::FieldParser<llvm::SmallVector<long long,6u>,llvm::SmallVector<long long,6u>>::parse(a1, &__src);
    llvm::FailureOr<llvm::SmallVector<long long,6u>>::operator=(&v64, &__src);
    if (v63 == 1 && __src != v61)
    {
      free(__src);
    }

    v8 = *a1;
    if ((v67 & 1) == 0)
    {
      v34 = (*(v8 + 40))(a1);
      v62 = 259;
      (*(*a1 + 24))(v49, a1, v34, &__src);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v49);
      goto LABEL_65;
    }

    if (((*(v8 + 328))(a1) & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
LABEL_65:
    ParametricStorageTypeImpl = 0;
    goto LABEL_66;
  }

  Context = mlir::AsmParser::getContext(a1);
  v46 = v48;
  v47 = 0x600000000;
  __src = v61;
  v60 = 0x600000000;
  if (v71 == 1)
  {
    v10 = v69;
    if (v69)
    {
      if (v69 < 7)
      {
        v12 = v61;
        v11 = v69;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v61, v69, 8);
        v11 = v69;
        if (!v69)
        {
LABEL_85:
          LODWORD(v60) = v10;
          v24 = __src;
          goto LABEL_86;
        }

        v12 = __src;
      }

      memcpy(v12, v68, 8 * v11);
      goto LABEL_85;
    }
  }

  v10 = 0;
  v24 = v61;
LABEL_86:
  v40 = v42;
  v41 = 0x600000000;
  v43 = v45;
  v44 = 0x600000000;
  if (v67 == 1)
  {
    v25 = v65;
    if (v65)
    {
      if (v65 < 7)
      {
        v27 = v45;
        v26 = v65;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, v65, 8);
        v26 = v65;
        if (!v65)
        {
LABEL_94:
          LODWORD(v44) = v25;
          v28 = v43;
          goto LABEL_95;
        }

        v27 = v43;
      }

      memcpy(v27, v64, 8 * v26);
      goto LABEL_94;
    }
  }

  v25 = 0;
  v28 = v45;
LABEL_95:
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v35[0] = &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id;
  v35[1] = Context;
  v39[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail15MeshAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_8MeshAttrEJNS_8ArrayRefINS2_12MeshAxisAttrEEENSD_IxEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS5_;
  v39[1] = v35;
  v38[0] = v24;
  v38[1] = v10;
  v38[2] = v28;
  v38[3] = v25;
  v30 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(v24, &v24[2 * v10]);
  v31 = llvm::hashing::detail::hash_combine_range_impl<char const>(v28, v28 + 8 * v25);
  v32 = __ROR8__(v31 + 16, 16);
  v33 = 0x9DDFEA08EB382D69 * (v32 ^ ((0x9DDFEA08EB382D69 * (v30 ^ 0xFF51AFD7ED558CCDLL ^ v32)) >> 47) ^ (0x9DDFEA08EB382D69 * (v30 ^ 0xFF51AFD7ED558CCDLL ^ v32)));
  v36[0] = v38;
  v36[1] = v39;
  v37 = v38;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id, (-348639895 * ((v33 >> 47) ^ v33)) ^ v31, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::MeshAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisAttr>,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::silc::detail::MeshAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisAttr>,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v37, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::MeshAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisAttr>,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::silc::detail::MeshAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisAttr>,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v36);
  if (v43 != v45)
  {
    free(v43);
  }

  if (v40 != v42)
  {
    free(v40);
  }

  if (__src != v61)
  {
    free(__src);
  }

  if (v46 != v48)
  {
    free(v46);
  }

LABEL_66:
  if (v67 == 1 && v64 != &v66)
  {
    free(v64);
  }

  if (v71 == 1 && v68 != v70)
  {
    free(v68);
  }

  return ParametricStorageTypeImpl;
}

void mlir::FieldParser<llvm::SmallVector<mlir::silc::MeshAxisAttr,6u>,llvm::SmallVector<mlir::silc::MeshAxisAttr,6u>>::parse(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10[6] = *MEMORY[0x1E69E9840];
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

void mlir::FieldParser<llvm::SmallVector<long long,6u>,llvm::SmallVector<long long,6u>>::parse(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10[6] = *MEMORY[0x1E69E9840];
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

uint64_t llvm::FailureOr<llvm::SmallVector<long long,6u>>::operator=(uint64_t result, uint64_t a2)
{
  if (*(result + 64) == *(a2 + 64))
  {
    if (*(result + 64))
    {
      v2 = result;
      llvm::SmallVectorImpl<mlir::Value>::operator=(result, a2);
      return v2;
    }
  }

  else if (*(result + 64))
  {
    if (*result != result + 16)
    {
      v3 = result;
      free(*result);
      result = v3;
    }

    *(result + 64) = 0;
  }

  else
  {
    *result = result + 16;
    *(result + 8) = 0x600000000;
    if (*(a2 + 8))
    {
      v4 = result;
      llvm::SmallVectorImpl<mlir::Value>::operator=(result, a2);
      result = v4;
    }

    *(result + 64) = 1;
  }

  return result;
}

llvm::raw_ostream *mlir::silc::MeshAttr::print(mlir::silc::MeshAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] != v5)
  {
    *v5 = 60;
    ++v4[4];
    v6 = *this;
    v7 = *(*this + 16);
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  llvm::raw_ostream::write(v4, "<", 1uLL);
  v6 = *this;
  v7 = *(*this + 16);
  if (v7)
  {
LABEL_3:
    v8 = *(v6 + 8);
    v9 = (*(*a2 + 16))(a2);
    v26[0] = ", ";
    v26[1] = 2;
    llvm::interleave<mlir::silc::MeshAxisAttr const*,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::MeshAxisAttr,(void *)0>(llvm::ArrayRef<mlir::silc::MeshAxisAttr>)::{lambda(mlir::silc::MeshAxisAttr)#1},void llvm::interleave<llvm::ArrayRef<mlir::silc::MeshAxisAttr>,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::MeshAxisAttr,(void *)0>(llvm::ArrayRef<mlir::silc::MeshAxisAttr>)::{lambda(mlir::silc::MeshAxisAttr)#1},llvm::raw_ostream,mlir::silc::MeshAxisAttr const>(mlir::silc::MeshAxisAttr const&,llvm::raw_ostream &,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::MeshAxisAttr,(void *)0>(llvm::ArrayRef<mlir::silc::MeshAxisAttr>)::{lambda(mlir::silc::MeshAxisAttr)#1},llvm::StringRef const&)::{lambda(void)#1},void>(v8, (v8 + 8 * v7), a2, v9, v26);
    v6 = *this;
  }

LABEL_4:
  if (*(v6 + 32))
  {
    v10 = (*(*a2 + 16))(a2);
    v11 = v10[4];
    if (v10[3] == v11)
    {
      llvm::raw_ostream::write(v10, ",", 1uLL);
    }

    else
    {
      *v11 = 44;
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

    v14 = (*(*a2 + 16))(a2);
    v15 = v14[4];
    if ((v14[3] - v15) > 9)
    {
      *(v15 + 8) = 29540;
      *v15 = *"device_ids";
      v14[4] += 10;
    }

    else
    {
      llvm::raw_ostream::write(v14, "device_ids", 0xAuLL);
    }

    v16 = (*(*a2 + 16))(a2);
    v17 = v16[4];
    if (v16[3] == v17)
    {
      llvm::raw_ostream::write(v16, "=", 1uLL);
    }

    else
    {
      *v17 = 61;
      ++v16[4];
    }

    v18 = (*(*a2 + 16))(a2);
    v19 = v18[4];
    if (v18[3] == v19)
    {
      llvm::raw_ostream::write(v18, "[", 1uLL);
      v20 = *this;
      v21 = *(*this + 32);
      if (!v21)
      {
LABEL_22:
        v22 = (*(*a2 + 16))(a2);
        v23 = v22[4];
        if (v22[3] == v23)
        {
          llvm::raw_ostream::write(v22, "]", 1uLL);
        }

        else
        {
          *v23 = 93;
          ++v22[4];
        }

        goto LABEL_27;
      }
    }

    else
    {
      *v19 = 91;
      ++v18[4];
      v20 = *this;
      v21 = *(*this + 32);
      if (!v21)
      {
        goto LABEL_22;
      }
    }

    mlir::AsmPrinter::printStrippedAttrOrType<llvm::ArrayRef<long long>,(void *)0>(a2, *(v20 + 24), v21);
    goto LABEL_22;
  }

LABEL_27:
  result = (*(*a2 + 16))(a2);
  v25 = *(result + 4);
  if (*(result + 3) == v25)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v25 = 62;
  ++*(result + 4);
  return result;
}

llvm::raw_ostream *mlir::AsmPrinter::printStrippedAttrOrType<llvm::ArrayRef<long long>,(void *)0>(llvm::raw_ostream *result, int64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = result;
    v6 = (*(*result + 16))(result);
    result = llvm::raw_ostream::operator<<(v6, *a2);
    if (a3 != 1)
    {
      v7 = 8 * a3;
      v8 = a2 + 1;
      v9 = v7 - 8;
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
        v9 -= 8;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t mlir::silc::MeshAxisRefAttr::parse(mlir::AsmParser *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v24) = 0;
  v27 = 0;
  __p = 0;
  v22 = 0uLL;
  if (mlir::AsmParser::parseString(a1, &__p))
  {
    *(&v40 + 7) = *(&v22 + 7);
    *&v40 = v22;
    v24 = __p;
    *v25 = v22;
    *&v25[7] = *(&v40 + 7);
    v26 = HIBYTE(v22);
    v27 = 1;
    Context = mlir::AsmParser::getContext(a1);
    v3 = Context;
    if (v26 >= 0)
    {
      v4 = &v24;
    }

    else
    {
      v4 = v24;
    }

    if (v26 >= 0)
    {
      v5 = v26;
    }

    else
    {
      v5 = *v25;
    }

    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v28[0] = &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisRefAttr,void>::id;
    v28[1] = v3;
    __p = _ZN4llvm12function_refIFvPN4mlir4silc6detail22MeshAxisRefAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15MeshAxisRefAttrEJNS_9StringRefEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    *&v22 = v28;
    *&v40 = v4;
    *(&v40 + 1) = v5;
    v7 = llvm::hash_value(v4, v5);
    v8 = HIDWORD(v7) ^ 0xFF51AFD7ED558CCDLL;
    v9 = 0x9DDFEA08EB382D69 * ((8 * v7 + 8) ^ v8);
    v29[1] = &__p;
    v30 = &v40;
    v29[0] = &v40;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisRefAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::MeshAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisRefAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisRefAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v30, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::MeshAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisRefAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisRefAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v29);
    if (v27 != 1)
    {
      return result;
    }

LABEL_33:
    if (v26 < 0)
    {
      v20 = result;
      operator delete(v24);
      return v20;
    }

    return result;
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }

  v11 = (*(*a1 + 40))(a1);
  v23 = 259;
  (*(*a1 + 24))(v31, a1, v11, &__p);
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

    v12 = v36;
    if (v36)
    {
      v13 = v37;
      v14 = v36;
      if (v37 != v36)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = v36;
      }

      v37 = v12;
      operator delete(v14);
    }

    v15 = v34;
    if (v34)
    {
      v16 = v35;
      v17 = v34;
      if (v35 != v34)
      {
        do
        {
          v19 = *--v16;
          v18 = v19;
          *v16 = 0;
          if (v19)
          {
            MEMORY[0x1AC55A040](v18, 0x1000C8077774924);
          }
        }

        while (v16 != v15);
        v17 = v34;
      }

      v35 = v15;
      operator delete(v17);
    }

    if (v32 != &v33)
    {
      free(v32);
    }
  }

  result = 0;
  if (v27 == 1)
  {
    goto LABEL_33;
  }

  return result;
}

uint64_t mlir::silc::TensorAxisRefAttr::get(mlir::MLIRContext *a1, _DWORD *a2, uint64_t a3)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id;
  v11[1] = a1;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail24TensorAxisRefAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17TensorAxisRefAttrEJNS_8ArrayRefINS2_15MeshAxisRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v15[1] = v11;
  v14[0] = a2;
  v14[1] = a3;
  v7 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(a2, &a2[2 * a3]);
  v8 = HIDWORD(v7) ^ 0xFF51AFD7ED558CCDLL;
  v9 = 0x9DDFEA08EB382D69 * ((8 * v7 + 8) ^ v8);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::TensorAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::TensorAxisRefAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::TensorAxisRefAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::TensorAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::TensorAxisRefAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::TensorAxisRefAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::silc::TensorAxisRefAttr::parse(mlir::AsmParser *a1)
{
  v54 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v50) = 0;
  v53 = 0;
  if (((*(*a1 + 72))(a1) & 1) == 0)
  {
    goto LABEL_68;
  }

  if (((*(*a1 + 96))(a1) & 1) == 0)
  {
    mlir::FieldParser<llvm::SmallVector<mlir::silc::MeshAxisRefAttr,6u>,llvm::SmallVector<mlir::silc::MeshAxisRefAttr,6u>>::parse(a1, &v46);
    if (v53 == v49)
    {
      if (v53)
      {
        v6 = v46;
        if (v46 != v48)
        {
          if (v50 != v52)
          {
            free(v50);
            v6 = v46;
          }

          v50 = v6;
          v51 = v47;
          v46 = v48;
          v47 = 0;
          if (v49 != 1)
          {
            goto LABEL_45;
          }

          goto LABEL_43;
        }

        v14 = v47;
        v15 = v51;
        if (v51 >= v47)
        {
          if (v47)
          {
            memmove(v50, v46, 8 * v47);
          }

LABEL_79:
          LODWORD(v51) = v14;
          LODWORD(v47) = 0;
          if (v49 != 1)
          {
            goto LABEL_45;
          }

          goto LABEL_43;
        }

        if (HIDWORD(v51) >= v47)
        {
          if (v51)
          {
            memmove(v50, v46, 8 * v51);
            goto LABEL_77;
          }
        }

        else
        {
          LODWORD(v51) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v52, v47, 8);
        }

        v15 = 0;
LABEL_77:
        v28 = v47 - v15;
        if (v28)
        {
          memcpy(&v50[8 * v15], &v46[8 * v15], 8 * v28);
        }

        goto LABEL_79;
      }
    }

    else
    {
      if (v53)
      {
        if (v50 != v52)
        {
          free(v50);
        }

        v53 = 0;
        if (v49 != 1)
        {
LABEL_45:
          v17 = *a1;
          if (v53)
          {
            if ((*(v17 + 88))(a1))
            {
              goto LABEL_3;
            }
          }

          else
          {
            v18 = (*(v17 + 40))(a1);
            v48[8] = 259;
            (*(*a1 + 24))(v37, a1, v18, &v46);
            if (v37[0])
            {
              mlir::InFlightDiagnostic::report(v37);
            }

            if (v45 == 1)
            {
              if (v44 != &v45)
              {
                free(v44);
              }

              v19 = __p;
              if (__p)
              {
                v20 = v43;
                v21 = __p;
                if (v43 != __p)
                {
                  do
                  {
                    v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
                  }

                  while (v20 != v19);
                  v21 = __p;
                }

                v43 = v19;
                operator delete(v21);
              }

              v22 = v40;
              if (v40)
              {
                v23 = v41;
                v24 = v40;
                if (v41 != v40)
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
                  v24 = v40;
                }

                v41 = v22;
                operator delete(v24);
              }

              if (v38 != &v39)
              {
                free(v38);
              }
            }
          }

LABEL_68:
          ParametricStorageTypeImpl = 0;
          if (v53 != 1)
          {
            return ParametricStorageTypeImpl;
          }

          goto LABEL_69;
        }

LABEL_43:
        if (v46 != v48)
        {
          free(v46);
        }

        goto LABEL_45;
      }

      v50 = v52;
      v51 = 0x600000000;
      v8 = v47;
      if (v47)
      {
        if (v46 == v48)
        {
          v16 = v47;
          if (v47 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v52, v47, 8), (v16 = v47) != 0))
          {
            memcpy(v50, v46, 8 * v16);
          }

          LODWORD(v51) = v8;
        }

        else
        {
          v50 = v46;
          v51 = v47;
          v46 = v48;
          HIDWORD(v47) = 0;
        }

        LODWORD(v47) = 0;
      }

      v53 = 1;
    }

    if (v49 != 1)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

LABEL_3:
  Context = mlir::AsmParser::getContext(a1);
  v34 = v36;
  v35 = 0x600000000;
  v46 = v48;
  v47 = 0x600000000;
  if (v53 != 1 || (v3 = v51, !v51))
  {
    v3 = 0;
    v7 = v48;
    goto LABEL_27;
  }

  if (v51 < 7)
  {
    v5 = v48;
    v4 = v51;
    goto LABEL_25;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v48, v51, 8);
  v4 = v51;
  if (v51)
  {
    v5 = v46;
LABEL_25:
    memcpy(v5, v50, 8 * v4);
  }

  LODWORD(v47) = v3;
  v7 = v46;
LABEL_27:
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v29[0] = &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id;
  v29[1] = Context;
  v33[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail24TensorAxisRefAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17TensorAxisRefAttrEJNS_8ArrayRefINS2_15MeshAxisRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v33[1] = v29;
  v32[0] = v7;
  v32[1] = v3;
  v10 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(v7, &v7[8 * v3]);
  v11 = HIDWORD(v10) ^ 0xFF51AFD7ED558CCDLL;
  v12 = 0x9DDFEA08EB382D69 * ((8 * v10 + 8) ^ v11);
  v30[0] = v32;
  v30[1] = v33;
  v31 = v32;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 32) >> 15) ^ (-348639895 * (v11 ^ (v12 >> 47) ^ v12))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::TensorAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::TensorAxisRefAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::TensorAxisRefAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v31, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::TensorAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::TensorAxisRefAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::TensorAxisRefAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v30);
  if (v46 != v48)
  {
    free(v46);
  }

  if (v34 != v36)
  {
    free(v34);
  }

  if (v53 == 1)
  {
LABEL_69:
    if (v50 != v52)
    {
      free(v50);
    }
  }

  return ParametricStorageTypeImpl;
}

void mlir::FieldParser<llvm::SmallVector<mlir::silc::MeshAxisRefAttr,6u>,llvm::SmallVector<mlir::silc::MeshAxisRefAttr,6u>>::parse(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10[6] = *MEMORY[0x1E69E9840];
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

llvm::raw_ostream *mlir::silc::TensorAxisRefAttr::print(mlir::silc::TensorAxisRefAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "{", 1uLL);
    v6 = *this;
    v7 = *(*this + 16);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *v5 = 123;
    ++v4[4];
    v6 = *this;
    v7 = *(*this + 16);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  v8 = *(v6 + 8);
  v9 = (*(*a2 + 16))(a2);
  mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::MeshAxisRefAttr,(void *)0>(a2, *v8);
  if (v7 != 1)
  {
    v10 = v8 + 1;
    v11 = 8 * v7 - 8;
    do
    {
      while (1)
      {
        v13 = v9[4];
        if (v9[3] - v13 > 1uLL)
        {
          break;
        }

        llvm::raw_ostream::write(v9, ", ", 2uLL);
        v12 = *v10++;
        mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::MeshAxisRefAttr,(void *)0>(a2, v12);
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_10;
        }
      }

      *v13 = 8236;
      v9[4] += 2;
      v14 = *v10++;
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::MeshAxisRefAttr,(void *)0>(a2, v14);
      v11 -= 8;
    }

    while (v11);
  }

LABEL_10:
  result = (*(*a2 + 16))(a2);
  v16 = *(result + 4);
  if (*(result + 3) == v16)
  {

    return llvm::raw_ostream::write(result, "}", 1uLL);
  }

  else
  {
    *v16 = 125;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::silc::ShardingAttr::get(mlir::MLIRContext *a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id;
  v13[1] = a1;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail19ShardingAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_12ShardingAttrEJNS1_9AttributeENS_8ArrayRefINS2_17TensorAxisRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS5_;
  v17[1] = v13;
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v9 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(a3, &a3[2 * a4]);
  v10 = __ROR8__(v9 + 16, 16);
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ (a2 >> 4) ^ (a2 >> 9) ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ (a2 >> 4) ^ (a2 >> 9) ^ 0xFF51AFD7ED558CCDLL)));
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id, (-348639895 * ((v11 >> 47) ^ v11)) ^ v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::ShardingAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ShardingAttrStorage,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::ShardingAttrStorage *)>,mlir::TypeID,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::ShardingAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ShardingAttrStorage,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::ShardingAttrStorage *)>,mlir::TypeID,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

uint64_t mlir::detail::StorageUserBase<mlir::silc::ShardingAttr,mlir::Attribute,mlir::silc::detail::ShardingAttrStorage,mlir::detail::AttributeUniquer>::getChecked<mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>>(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, uint64_t a4, _DWORD *a5, uint64_t a6)
{
  if ((mlir::silc::ShardingAttr::verifyInvariantsImpl(a1, a2, a4) & 1) == 0)
  {
    return 0;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a3);
  v15[0] = &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id;
  v15[1] = a3;
  v19[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail19ShardingAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_12ShardingAttrEJRNS1_9AttributeERNS_8ArrayRefINS2_17TensorAxisRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS5_;
  v19[1] = v15;
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v11 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(a5, &a5[2 * a6]);
  v12 = __ROR8__(v11 + 16, 16);
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v12 ^ (a4 >> 4) ^ (a4 >> 9) ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ (a4 >> 4) ^ (a4 >> 9) ^ 0xFF51AFD7ED558CCDLL)));
  v16[0] = v18;
  v16[1] = v19;
  v17 = v18;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id, (-348639895 * ((v13 >> 47) ^ v13)) ^ v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::ShardingAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ShardingAttrStorage,mlir::Attribute &,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &>(llvm::function_ref<void ()(mlir::silc::detail::ShardingAttrStorage *)>,mlir::TypeID,mlir::Attribute &,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::ShardingAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ShardingAttrStorage,mlir::Attribute &,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &>(llvm::function_ref<void ()(mlir::silc::detail::ShardingAttrStorage *)>,mlir::TypeID,mlir::Attribute &,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
}

uint64_t mlir::silc::ShardingAttr::verifyInvariantsImpl(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = *(*a3 + 136);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id)
  {
    return 1;
  }

  v6 = v3 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id ? a3 : 0;
  v25[0] = v6;
  if (v6)
  {
    mlir::OpaqueAttr::getAttrData(v25);
    if (!v7)
    {
      return 1;
    }
  }

  a1(v25, a2);
  if (v25[0])
  {
    v22 = 3;
    v23 = "failed to verify 'mesh': mesh attr or flat mesh symbol reference attr";
    v24 = 69;
    v8 = &v22;
    v9 = v26;
    if (v27 >= v28)
    {
      if (v26 <= &v22 && v26 + 24 * v27 > &v22)
      {
        v21 = &v22 - v26;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v29, v27 + 1, 24);
        v9 = v26;
        v8 = (v26 + v21);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v29, v27 + 1, 24);
        v8 = &v22;
        v9 = v26;
      }
    }

    v10 = &v9[24 * v27];
    v11 = *v8;
    *(v10 + 2) = *(v8 + 2);
    *v10 = v11;
    ++v27;
    if (v25[0])
    {
      mlir::InFlightDiagnostic::report(v25);
    }
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v33;
      v14 = __p;
      if (v33 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v33 = v12;
      operator delete(v14);
    }

    v15 = v30;
    if (v30)
    {
      v16 = v31;
      v17 = v30;
      if (v31 != v30)
      {
        do
        {
          v19 = *--v16;
          v18 = v19;
          *v16 = 0;
          if (v19)
          {
            MEMORY[0x1AC55A040](v18, 0x1000C8077774924);
          }
        }

        while (v16 != v15);
        v17 = v30;
      }

      v31 = v15;
      operator delete(v17);
    }

    if (v26 != v29)
    {
      free(v26);
    }
  }

  return 0;
}

uint64_t mlir::silc::ShardingAttr::parse(mlir::AsmParser *a1)
{
  v45 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  v2 = (*(*a1 + 40))(a1);
  LOBYTE(v21) = 0;
  v22 = 0;
  LOBYTE(v42[0]) = 0;
  v44 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_32;
  }

  v3 = (*(*a1 + 40))(a1);
  v21 = 0;
  v22 = 1;
  if ((mlir::silc::parseSilcMeshOrRef(a1, &v21, v4) & 1) == 0)
  {
    goto LABEL_32;
  }

  if ((v22 & 1) == 0)
  {
    v28 = "custom parser failed to parse parameter 'mesh'";
    v31 = 259;
    (*(*a1 + 24))(v33, a1, v3, &v28);
    if (v33[0])
    {
      mlir::InFlightDiagnostic::report(v33);
    }

    if (v41 == 1)
    {
      if (v40 != &v41)
      {
        free(v40);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v39;
        v12 = __p;
        if (v39 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v39 = v10;
        operator delete(v12);
      }

      v13 = v36;
      if (v36)
      {
        v14 = v37;
        v15 = v36;
        if (v37 != v36)
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
          v15 = v36;
        }

        v37 = v13;
        operator delete(v15);
      }

      if (v34 != &v35)
      {
        free(v34);
      }
    }

    goto LABEL_32;
  }

  v31 = 257;
  if (((*(*a1 + 400))(a1, "with", 4, &v28) & 1) == 0 || ((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_32;
  }

  if (((*(*a1 + 336))(a1) & 1) == 0)
  {
    mlir::FieldParser<llvm::SmallVector<mlir::silc::TensorAxisRefAttr,6u>,llvm::SmallVector<mlir::silc::TensorAxisRefAttr,6u>>::parse(a1, &v28);
    llvm::FailureOr<llvm::SmallVector<mlir::silc::TensorAxisRefAttr,6u>>::operator=(v42, &v28);
    if (v32 == 1 && v28 != v30)
    {
      free(v28);
    }

    v19 = *a1;
    if ((v44 & 1) == 0)
    {
      v20 = (*(v19 + 40))(a1);
      v31 = 259;
      (*(*a1 + 24))(v27, a1, v20, &v28);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v27);
      goto LABEL_32;
    }

    if (((*(v19 + 328))(a1) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
LABEL_32:
    result = 0;
    goto LABEL_33;
  }

  Context = mlir::AsmParser::getContext(a1);
  v6 = v21;
  v25[0] = v26;
  v25[1] = 0x600000000;
  std::optional<llvm::SmallVector<mlir::silc::TensorAxisRefAttr,6u>>::value_or[abi:nn200100]<llvm::SmallVector<mlir::silc::TensorAxisRefAttr,6u>>(v42, v25, &v28);
  v23[0] = a1;
  v23[1] = &v24;
  v24 = v2;
  result = mlir::detail::StorageUserBase<mlir::silc::ShardingAttr,mlir::Attribute,mlir::silc::detail::ShardingAttrStorage,mlir::detail::AttributeUniquer>::getChecked<mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>>(_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4silc12ShardingAttrEJPNS1_11MLIRContextENS1_9AttributeENS_8ArrayRefINS8_17TensorAxisRefAttrEEEEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l, v23, Context, v6, v28, v29);
  if (v28 != v30)
  {
    v8 = result;
    free(v28);
    result = v8;
  }

  if (v25[0] != v26)
  {
    v9 = result;
    free(v25[0]);
    result = v9;
  }

LABEL_33:
  if (v44 == 1 && v42[0] != &v43)
  {
    v18 = result;
    free(v42[0]);
    return v18;
  }

  return result;
}

void mlir::FieldParser<llvm::SmallVector<mlir::silc::TensorAxisRefAttr,6u>,llvm::SmallVector<mlir::silc::TensorAxisRefAttr,6u>>::parse(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10[6] = *MEMORY[0x1E69E9840];
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

uint64_t llvm::FailureOr<llvm::SmallVector<mlir::silc::TensorAxisRefAttr,6u>>::operator=(uint64_t result, uint64_t a2)
{
  if (*(result + 64) == *(a2 + 64))
  {
    if (*(result + 64))
    {
      v2 = result;
      llvm::SmallVectorImpl<llvm::SMLoc>::operator=(result, a2);
      return v2;
    }
  }

  else if (*(result + 64))
  {
    if (*result != result + 16)
    {
      v3 = result;
      free(*result);
      result = v3;
    }

    *(result + 64) = 0;
  }

  else
  {
    *result = result + 16;
    *(result + 8) = 0x600000000;
    if (*(a2 + 8))
    {
      v4 = result;
      llvm::SmallVectorImpl<llvm::SMLoc>::operator=(result, a2);
      result = v4;
    }

    *(result + 64) = 1;
  }

  return result;
}

void std::optional<llvm::SmallVector<mlir::silc::TensorAxisRefAttr,6u>>::value_or[abi:nn200100]<llvm::SmallVector<mlir::silc::TensorAxisRefAttr,6u>>(const void **result@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  v3 = *(result + 64);
  v4 = a3 + 2;
  *a3 = a3 + 2;
  a3[1] = 0x600000000;
  if (v3 == 1)
  {
    if (a3 != result)
    {
      v5 = *(result + 2);
      if (v5)
      {
        if (v5 < 7)
        {
          v6 = a3;
          v8 = *(result + 2);
        }

        else
        {
          v6 = a3;
          v7 = result;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 2, v5, 8);
          v8 = *(v7 + 2);
          if (!v8)
          {
LABEL_13:
            *(v6 + 2) = v5;
            return;
          }

          result = v7;
          v4 = *v6;
        }

        memcpy(v4, *result, 8 * v8);
        goto LABEL_13;
      }
    }
  }

  else if (*(a2 + 8))
  {

    llvm::SmallVectorImpl<llvm::SMLoc>::operator=(a3, a2);
  }
}

llvm::raw_ostream *mlir::silc::ShardingAttr::print(mlir::silc::ShardingAttr *this, mlir::AsmPrinter *a2)
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

  mlir::silc::printSilcMeshOrRef(a2, *(*this + 8));
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
  v11 = v10[4];
  if (v10[3] == v11)
  {
    llvm::raw_ostream::write(v10, " ", 1uLL);
  }

  else
  {
    *v11 = 32;
    ++v10[4];
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if (v12[3] != v13)
  {
    *v13 = 91;
    ++v12[4];
    v14 = *this;
    v15 = *(*this + 24);
    if (!v15)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  llvm::raw_ostream::write(v12, "[", 1uLL);
  v14 = *this;
  v15 = *(*this + 24);
  if (v15)
  {
LABEL_15:
    v16 = *(v14 + 16);
    v17 = (*(*a2 + 16))(a2);
    v22[0] = ", ";
    v22[1] = 2;
    llvm::interleave<mlir::silc::TensorAxisRefAttr const*,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::TensorAxisRefAttr,(void *)0>(llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>)::{lambda(mlir::silc::TensorAxisRefAttr)#1},void llvm::interleave<llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::TensorAxisRefAttr,(void *)0>(llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>)::{lambda(mlir::silc::TensorAxisRefAttr)#1},llvm::raw_ostream,mlir::silc::TensorAxisRefAttr const>(mlir::silc::TensorAxisRefAttr const&,llvm::raw_ostream &,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::TensorAxisRefAttr,(void *)0>(llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>)::{lambda(mlir::silc::TensorAxisRefAttr)#1},llvm::StringRef const&)::{lambda(void)#1},void>(v16, (v16 + 8 * v15), a2, v17, v22);
  }

LABEL_16:
  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if (v18[3] == v19)
  {
    llvm::raw_ostream::write(v18, "]", 1uLL);
  }

  else
  {
    *v19 = 93;
    ++v18[4];
  }

  result = (*(*a2 + 16))(a2);
  v21 = *(result + 4);
  if (*(result + 3) == v21)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v21 = 62;
  ++*(result + 4);
  return result;
}

uint64_t mlir::silc::ReductionKindAttr::parse(mlir::AsmParser *a1)
{
  v127 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  v2 = (*(*a1 + 40))(a1);
  v101 = 0;
  v102 = 0;
  if (mlir::AsmParser::parseKeyword(a1, &v101))
  {
    v3 = mlir::silc::symbolizeReductionKind(v101, v102);
    if ((v3 & 0x100000000) != 0)
    {
      v71 = v3;
      v72 = v3;
      Context = mlir::AsmParser::getContext(a1);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      v103 = &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id;
      v104 = Context;
      v116[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail24ReductionKindAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17ReductionKindAttrEJNS2_13ReductionKindEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
      v116[1] = &v103;
      v106 = v72;
      v75 = 0x9DDFEA08EB382D69 * (((8 * v72) | 4) ^ v71 ^ 0xFF51AFD7ED558CCDLL);
      v76 = 0x9DDFEA08EB382D69 * (v71 ^ 0xFF51AFD7ED558CCDLL ^ (v75 >> 47) ^ v75);
      v101 = &v106;
      v99[0] = &v106;
      v99[1] = v116;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id, -348639895 * ((v76 >> 47) ^ v76), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::ReductionKindAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ReductionKindAttrStorage,mlir::silc::ReductionKind>(llvm::function_ref<void ()(mlir::silc::detail::ReductionKindAttrStorage *)>,mlir::TypeID,mlir::silc::ReductionKind &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v101, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::ReductionKindAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ReductionKindAttrStorage,mlir::silc::ReductionKind>(llvm::function_ref<void ()(mlir::silc::detail::ReductionKindAttrStorage *)>,mlir::TypeID,mlir::silc::ReductionKind &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v99);
    }

    v100 = 257;
    (*(*a1 + 24))(v116, a1, v2, v99);
    if (v116[0])
    {
      LODWORD(v103) = 3;
      v104 = "expected ";
      v105 = 9;
      v4 = &v103;
      v5 = v117;
      if (v118 >= v119)
      {
        if (v117 <= &v103 && v117 + 24 * v118 > &v103)
        {
          v87 = &v103 - v117;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v120, v118 + 1, 24);
          v5 = v117;
          v4 = (v117 + v87);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v120, v118 + 1, 24);
          v4 = &v103;
          v5 = v117;
        }
      }

      v6 = &v5[24 * v118];
      v7 = *v4;
      *(v6 + 2) = v4[2];
      *v6 = v7;
      v8 = ++v118;
      if (v116[0])
      {
        LODWORD(v103) = 3;
        v104 = "::mlir::silc::ReductionKind";
        v105 = 27;
        v9 = &v103;
        v10 = v117;
        if (v8 >= v119)
        {
          if (v117 <= &v103 && v117 + 24 * v8 > &v103)
          {
            v88 = &v103 - v117;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v120, v8 + 1, 24);
            v10 = v117;
            v9 = (v117 + v88);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v120, v8 + 1, 24);
            v9 = &v103;
            v10 = v117;
          }
        }

        v11 = &v10[24 * v118];
        v12 = *v9;
        *(v11 + 2) = v9[2];
        *v11 = v12;
        v13 = ++v118;
        if (v116[0])
        {
          LODWORD(v103) = 3;
          v104 = " to be one of: ";
          v105 = 15;
          v14 = &v103;
          v15 = v117;
          if (v13 >= v119)
          {
            if (v117 <= &v103 && v117 + 24 * v13 > &v103)
            {
              v89 = &v103 - v117;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v120, v13 + 1, 24);
              v15 = v117;
              v14 = (v117 + v89);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v120, v13 + 1, 24);
              v14 = &v103;
              v15 = v117;
            }
          }

          v16 = &v15[24 * v118];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          v18 = ++v118;
          if (v116[0])
          {
            LODWORD(v103) = 3;
            v104 = "sum";
            v105 = 3;
            v19 = &v103;
            v20 = v117;
            if (v18 >= v119)
            {
              if (v117 <= &v103 && v117 + 24 * v18 > &v103)
              {
                v90 = &v103 - v117;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v120, v18 + 1, 24);
                v20 = v117;
                v19 = (v117 + v90);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v120, v18 + 1, 24);
                v19 = &v103;
                v20 = v117;
              }
            }

            v21 = &v20[24 * v118];
            v22 = *v19;
            *(v21 + 2) = v19[2];
            *v21 = v22;
            v23 = ++v118;
            if (v116[0])
            {
              LODWORD(v103) = 3;
              v104 = ", ";
              v105 = 2;
              v24 = &v103;
              v25 = v117;
              if (v23 >= v119)
              {
                if (v117 <= &v103 && v117 + 24 * v23 > &v103)
                {
                  v91 = &v103 - v117;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v120, v23 + 1, 24);
                  v25 = v117;
                  v24 = (v117 + v91);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v120, v23 + 1, 24);
                  v24 = &v103;
                  v25 = v117;
                }
              }

              v26 = &v25[24 * v118];
              v27 = *v24;
              *(v26 + 2) = v24[2];
              *v26 = v27;
              v28 = ++v118;
              if (v116[0])
              {
                LODWORD(v103) = 3;
                v104 = "max";
                v105 = 3;
                v29 = &v103;
                v30 = v117;
                if (v28 >= v119)
                {
                  if (v117 <= &v103 && v117 + 24 * v28 > &v103)
                  {
                    v92 = &v103 - v117;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v120, v28 + 1, 24);
                    v30 = v117;
                    v29 = (v117 + v92);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v120, v28 + 1, 24);
                    v29 = &v103;
                    v30 = v117;
                  }
                }

                v31 = &v30[24 * v118];
                v32 = *v29;
                *(v31 + 2) = v29[2];
                *v31 = v32;
                v33 = ++v118;
                if (v116[0])
                {
                  LODWORD(v103) = 3;
                  v104 = ", ";
                  v105 = 2;
                  v34 = &v103;
                  v35 = v117;
                  if (v33 >= v119)
                  {
                    if (v117 <= &v103 && v117 + 24 * v33 > &v103)
                    {
                      v93 = &v103 - v117;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v120, v33 + 1, 24);
                      v35 = v117;
                      v34 = (v117 + v93);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v120, v33 + 1, 24);
                      v34 = &v103;
                      v35 = v117;
                    }
                  }

                  v36 = &v35[24 * v118];
                  v37 = *v34;
                  *(v36 + 2) = v34[2];
                  *v36 = v37;
                  v38 = ++v118;
                  if (v116[0])
                  {
                    LODWORD(v103) = 3;
                    v104 = "min";
                    v105 = 3;
                    v39 = &v103;
                    v40 = v117;
                    if (v38 >= v119)
                    {
                      if (v117 <= &v103 && v117 + 24 * v38 > &v103)
                      {
                        v94 = &v103 - v117;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v120, v38 + 1, 24);
                        v40 = v117;
                        v39 = (v117 + v94);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v120, v38 + 1, 24);
                        v39 = &v103;
                        v40 = v117;
                      }
                    }

                    v41 = &v40[24 * v118];
                    v42 = *v39;
                    *(v41 + 2) = v39[2];
                    *v41 = v42;
                    v43 = ++v118;
                    if (v116[0])
                    {
                      LODWORD(v103) = 3;
                      v104 = ", ";
                      v105 = 2;
                      v44 = &v103;
                      v45 = v117;
                      if (v43 >= v119)
                      {
                        if (v117 <= &v103 && v117 + 24 * v43 > &v103)
                        {
                          v95 = &v103 - v117;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v120, v43 + 1, 24);
                          v45 = v117;
                          v44 = (v117 + v95);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v120, v43 + 1, 24);
                          v44 = &v103;
                          v45 = v117;
                        }
                      }

                      v46 = &v45[24 * v118];
                      v47 = *v44;
                      *(v46 + 2) = v44[2];
                      *v46 = v47;
                      v48 = ++v118;
                      if (v116[0])
                      {
                        LODWORD(v103) = 3;
                        v104 = "product";
                        v105 = 7;
                        v49 = &v103;
                        v50 = v117;
                        if (v48 >= v119)
                        {
                          if (v117 <= &v103 && v117 + 24 * v48 > &v103)
                          {
                            v96 = &v103 - v117;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v120, v48 + 1, 24);
                            v50 = v117;
                            v49 = (v117 + v96);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v120, v48 + 1, 24);
                            v49 = &v103;
                            v50 = v117;
                          }
                        }

                        v51 = &v50[24 * v118];
                        v52 = *v49;
                        *(v51 + 2) = v49[2];
                        *v51 = v52;
                        v53 = ++v118;
                        if (v116[0])
                        {
                          LODWORD(v103) = 3;
                          v104 = ", ";
                          v105 = 2;
                          v54 = &v103;
                          v55 = v117;
                          if (v53 >= v119)
                          {
                            if (v117 <= &v103 && v117 + 24 * v53 > &v103)
                            {
                              v97 = &v103 - v117;
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v120, v53 + 1, 24);
                              v55 = v117;
                              v54 = (v117 + v97);
                            }

                            else
                            {
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v120, v53 + 1, 24);
                              v54 = &v103;
                              v55 = v117;
                            }
                          }

                          v56 = &v55[24 * v118];
                          v57 = *v54;
                          *(v56 + 2) = v54[2];
                          *v56 = v57;
                          v58 = ++v118;
                          if (v116[0])
                          {
                            LODWORD(v103) = 3;
                            v104 = "mean";
                            v105 = 4;
                            v59 = &v103;
                            v60 = v117;
                            if (v58 >= v119)
                            {
                              if (v117 <= &v103 && v117 + 24 * v58 > &v103)
                              {
                                v98 = &v103 - v117;
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v120, v58 + 1, 24);
                                v60 = v117;
                                v59 = (v117 + v98);
                              }

                              else
                              {
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v120, v58 + 1, 24);
                                v59 = &v103;
                                v60 = v117;
                              }
                            }

                            v61 = &v60[24 * v118];
                            v62 = *v59;
                            *(v61 + 2) = v59[2];
                            *v61 = v62;
                            ++v118;
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

    mlir::InFlightDiagnostic::operator llvm::LogicalResult(v116);
    if (v116[0])
    {
      mlir::InFlightDiagnostic::report(v116);
    }

    if (v126 == 1)
    {
      if (v125 != &v126)
      {
        free(v125);
      }

      v63 = __p;
      if (__p)
      {
        v64 = v124;
        v65 = __p;
        if (v124 != __p)
        {
          do
          {
            v64 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v64 - 1);
          }

          while (v64 != v63);
          v65 = __p;
        }

        v124 = v63;
        operator delete(v65);
      }

      v66 = v121;
      if (v121)
      {
        v67 = v122;
        v68 = v121;
        if (v122 != v121)
        {
          do
          {
            v70 = *--v67;
            v69 = v70;
            *v67 = 0;
            if (v70)
            {
              MEMORY[0x1AC55A040](v69, 0x1000C8077774924);
            }
          }

          while (v67 != v66);
          v68 = v121;
        }

        v122 = v66;
        operator delete(v68);
      }

      if (v117 != v120)
      {
        free(v117);
      }
    }
  }

  v78 = (*(*a1 + 40))(a1);
  LOWORD(v118) = 259;
  (*(*a1 + 24))(v107, a1, v78, v116);
  if (v107[0])
  {
    mlir::InFlightDiagnostic::report(v107);
  }

  if (v115 == 1)
  {
    if (v114 != &v115)
    {
      free(v114);
    }

    v79 = v112;
    if (v112)
    {
      v80 = v113;
      v81 = v112;
      if (v113 != v112)
      {
        do
        {
          v80 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v80 - 1);
        }

        while (v80 != v79);
        v81 = v112;
      }

      v113 = v79;
      operator delete(v81);
    }

    v82 = v110;
    if (v110)
    {
      v83 = v111;
      v84 = v110;
      if (v111 != v110)
      {
        do
        {
          v86 = *--v83;
          v85 = v86;
          *v83 = 0;
          if (v86)
          {
            MEMORY[0x1AC55A040](v85, 0x1000C8077774924);
          }
        }

        while (v83 != v82);
        v84 = v110;
      }

      v111 = v82;
      operator delete(v84);
    }

    if (v108 != &v109)
    {
      free(v108);
    }
  }

  return 0;
}

void **mlir::silc::ReductionKindAttr::print(mlir::silc::ReductionKindAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
    v6 = *(*this + 8);
    if (v6 > 2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
    v6 = *(*this + 8);
    if (v6 > 2)
    {
LABEL_3:
      switch(v6)
      {
        case 3:
          v7 = 0;
          v8 = "min";
          v9 = 3;
          goto LABEL_15;
        case 4:
          v7 = 0;
          v8 = "product";
          v9 = 7;
          goto LABEL_15;
        case 5:
          v7 = 0;
          v8 = "mean";
          v9 = 4;
          goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  if (v6 == 1)
  {
    v7 = 0;
    v8 = "sum";
    v9 = 3;
    goto LABEL_15;
  }

  if (v6 == 2)
  {
    v7 = 0;
    v8 = "max";
    v9 = 3;
    goto LABEL_15;
  }

LABEL_14:
  v9 = 0;
  v8 = "";
  v7 = 1;
LABEL_15:
  result = (*(*a2 + 16))(a2);
  if (v9 <= result[3] - result[4])
  {
    if ((v7 & 1) == 0)
    {
      v11 = result;
      result = memcpy(result[4], v8, v9);
      v11[4] = v11[4] + v9;
    }
  }

  else
  {

    return llvm::raw_ostream::write(result, v8, v9);
  }

  return result;
}

uint64_t mlir::silc::SilcDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 40))(a2);
  v46 = a2;
  v5 = (*(*a2 + 40))(a2);
  BYTE2(v50) = 0;
  v48 = 0;
  v49 = 0;
  v47 = v5;
  LOBYTE(v50) = 0;
  if (((*(*a2 + 640))(a2, &v48) & 1) == 0)
  {
    v6 = 0;
    if ((v50 & 0x10000) != 0)
    {
      LOWORD(v50) = 256;
      v42 = "mesh_axis";
      v7 = 0;
      v8 = 0;
      if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v46) & 0x100) != 0)
      {
        return v6;
      }
    }

    else
    {
      LOWORD(v50) = 256;
      BYTE2(v50) = 1;
      v7 = 0;
      v8 = 0;
      if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v46) & 0x100) != 0)
      {
        return v6;
      }
    }

    goto LABEL_64;
  }

  v42 = "mesh_axis";
  v43 = 9;
  if ((v50 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v7 = v49;
  if (v49)
  {
    if (v49 == 9 && *v48 == 0x6978615F6873656DLL && *(v48 + 8) == 115)
    {
      v13 = mlir::silc::MeshAxisAttr::parse(a2);
      goto LABEL_60;
    }

    v42 = "mesh";
    v43 = 4;
    goto LABEL_15;
  }

  (*(*v46 + 648))(v46, &v42, 1);
  v42 = "mesh";
  v43 = 4;
  if ((v50 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v7 = v49;
  if (v49)
  {
LABEL_15:
    if (v7 == 4 && *v48 == 1752393069)
    {
      v13 = mlir::silc::MeshAttr::parse(a2);
      goto LABEL_60;
    }

    v42 = "mesh_axis_ref";
    v43 = 13;
    if (v7)
    {
      goto LABEL_18;
    }

LABEL_46:
    (*(*v46 + 648))(v46, &v42, 1);
    v42 = "tensor_axis_ref";
    v43 = 15;
    if ((v50 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v7 = v49;
    if (v49)
    {
      goto LABEL_24;
    }

    goto LABEL_48;
  }

  (*(*v46 + 648))(v46, &v42, 1);
  v42 = "mesh_axis_ref";
  v43 = 13;
  if ((v50 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v7 = v49;
  if (!v49)
  {
    goto LABEL_46;
  }

LABEL_18:
  if (v7 == 13 && *v48 == 0x6978615F6873656DLL && *(v48 + 5) == 0x6665725F73697861)
  {
    v13 = mlir::silc::MeshAxisRefAttr::parse(a2);
    goto LABEL_60;
  }

  v42 = "tensor_axis_ref";
  v43 = 15;
  if (v7)
  {
LABEL_24:
    if (v7 == 15 && *v48 == 0x615F726F736E6574 && *(v48 + 7) == 0x6665725F73697861)
    {
      v13 = mlir::silc::TensorAxisRefAttr::parse(a2);
      goto LABEL_60;
    }

    v42 = "sharding";
    v43 = 8;
    if (v7)
    {
LABEL_30:
      if (v7 != 8 || *v48 != 0x676E696472616873)
      {
        v42 = "reduction_kind";
        v43 = 14;
        if (v7)
        {
          goto LABEL_33;
        }

        goto LABEL_52;
      }

      v13 = mlir::silc::ShardingAttr::parse(a2);
LABEL_60:
      v6 = v13;
      LOBYTE(v50) = v13 != 0;
      *(&v50 + 1) = 257;
      v7 = 0;
      v8 = 0;
      if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v46) & 0x100) != 0)
      {
        return v6;
      }

      goto LABEL_64;
    }

    goto LABEL_50;
  }

LABEL_48:
  (*(*v46 + 648))(v46, &v42, 1);
  v42 = "sharding";
  v43 = 8;
  if ((v50 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v7 = v49;
  if (v49)
  {
    goto LABEL_30;
  }

LABEL_50:
  (*(*v46 + 648))(v46, &v42, 1);
  v42 = "reduction_kind";
  v43 = 14;
  if ((v50 & 0x10000) != 0)
  {
LABEL_3:
    v6 = 0;
    v7 = 0;
    v8 = 0;
    if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v46) & 0x100) != 0)
    {
      return v6;
    }

    goto LABEL_64;
  }

  v7 = v49;
  if (v49)
  {
LABEL_33:
    if (v7 != 14 || (*v48 == 0x6F69746375646572 ? (v12 = *(v48 + 6) == 0x646E696B5F6E6F69) : (v12 = 0), !v12))
    {
LABEL_63:
      v6 = 0;
      v8 = v48;
      LOWORD(v50) = 0;
      BYTE2(v50) = 1;
      if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v46) & 0x100) != 0)
      {
        return v6;
      }

      goto LABEL_64;
    }

    v13 = mlir::silc::ReductionKindAttr::parse(a2);
    goto LABEL_60;
  }

LABEL_52:
  (*(*v46 + 648))(v46, &v42, 1);
  if ((v50 & 0x10000) == 0)
  {
    v7 = v49;
    goto LABEL_63;
  }

  v7 = 0;
  v8 = 0;
  v6 = 0;
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v46) & 0x100) != 0)
  {
    return v6;
  }

LABEL_64:
  v41 = 257;
  (*(*a2 + 24))(&v46, a2, v4, v40);
  if (v46)
  {
    LODWORD(v42) = 3;
    v44 = 19;
    v14 = &v42;
    v15 = v49;
    if (v50 >= v51)
    {
      if (v49 <= &v42 && v49 + 24 * v50 > &v42)
      {
        v37 = &v42 - v49;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
        v15 = v49;
        v14 = (v49 + v37);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
        v14 = &v42;
        v15 = v49;
      }
    }

    v16 = &v15[24 * v50];
    v17 = *v14;
    *(v16 + 2) = v14[2];
    *v16 = v17;
    ++v50;
    if (v46)
    {
      v45 = 261;
      v42 = v8;
      v43 = v7;
      mlir::Diagnostic::operator<<(&v47, &v42);
      if (v46)
      {
        LODWORD(v42) = 3;
        v44 = 14;
        v18 = &v42;
        v19 = v49;
        if (v50 >= v51)
        {
          if (v49 <= &v42 && v49 + 24 * v50 > &v42)
          {
            v38 = &v42 - v49;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
            v19 = v49;
            v18 = (v49 + v38);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
            v18 = &v42;
            v19 = v49;
          }
        }

        v20 = &v19[24 * v50];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v50;
        if (v46)
        {
          v22 = *(a1 + 8);
          v23 = *(a1 + 16);
          v45 = 261;
          v42 = v22;
          v43 = v23;
          mlir::Diagnostic::operator<<(&v47, &v42);
          if (v46)
          {
            LODWORD(v42) = 3;
            v44 = 1;
            v24 = &v42;
            v25 = v49;
            if (v50 >= v51)
            {
              if (v49 <= &v42 && v49 + 24 * v50 > &v42)
              {
                v39 = &v42 - v49;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
                v25 = v49;
                v24 = (v49 + v39);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
                v24 = &v42;
                v25 = v49;
              }
            }

            v26 = &v25[24 * v50];
            v27 = *v24;
            *(v26 + 2) = v24[2];
            *v26 = v27;
            ++v50;
            if (v46)
            {
              mlir::InFlightDiagnostic::report(&v46);
            }
          }
        }
      }
    }
  }

  if (v58 == 1)
  {
    if (v57 != &v58)
    {
      free(v57);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v56;
      v30 = __p;
      if (v56 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v56 = v28;
      operator delete(v30);
    }

    v31 = v53;
    if (v53)
    {
      v32 = v54;
      v33 = v53;
      if (v54 != v53)
      {
        do
        {
          v35 = *--v32;
          v34 = v35;
          *v32 = 0;
          if (v35)
          {
            MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
          }
        }

        while (v32 != v31);
        v33 = v53;
      }

      v54 = v31;
      operator delete(v33);
    }

    if (v49 != v52)
    {
      free(v49);
    }
  }

  return 0;
}

void mlir::silc::SilcDialect::printAttribute(uint64_t a1, uint64_t a2, mlir::AsmPrinter *a3)
{
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisAttr,void>::id)
  {
    v17 = a2;
    v5 = (*(*a3 + 16))(a3);
    v6 = v5[4];
    if ((v5[3] - v6) > 8)
    {
      *(v6 + 8) = 115;
      *v6 = *"mesh_axis";
      v5[4] += 9;
    }

    else
    {
      llvm::raw_ostream::write(v5, "mesh_axis", 9uLL);
    }

    mlir::silc::MeshAxisAttr::print(&v17, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id)
  {
    v17 = a2;
    v7 = (*(*a3 + 16))(a3);
    v8 = v7[4];
    if (v7[3] - v8 > 3uLL)
    {
      *v8 = 1752393069;
      v7[4] += 4;
    }

    else
    {
      llvm::raw_ostream::write(v7, "mesh", 4uLL);
    }

    mlir::silc::MeshAttr::print(&v17, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisRefAttr,void>::id)
  {
    v17 = a2;
    v9 = (*(*a3 + 16))(a3);
    v10 = v9[4];
    if (v9[3] - v10 > 0xCuLL)
    {
      qmemcpy(v10, "mesh_axis_ref", 13);
      v9[4] += 13;
    }

    else
    {
      llvm::raw_ostream::write(v9, "mesh_axis_ref", 0xDuLL);
    }

    mlir::Attribute::getContext(&v17);
    (*(*a3 + 80))(a3, *(v17 + 8), *(v17 + 16));
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id)
  {
    v17 = a2;
    v11 = (*(*a3 + 16))(a3);
    v12 = v11[4];
    if (v11[3] - v12 > 0xEuLL)
    {
      qmemcpy(v12, "tensor_axis_ref", 15);
      v11[4] += 15;
    }

    else
    {
      llvm::raw_ostream::write(v11, "tensor_axis_ref", 0xFuLL);
    }

    mlir::silc::TensorAxisRefAttr::print(&v17, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id)
  {
    v17 = a2;
    v13 = (*(*a3 + 16))(a3);
    v14 = v13[4];
    if (v13[3] - v14 > 7uLL)
    {
      *v14 = 0x676E696472616873;
      v13[4] += 8;
    }

    else
    {
      llvm::raw_ostream::write(v13, "sharding", 8uLL);
    }

    mlir::silc::ShardingAttr::print(&v17, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id)
  {
    v17 = a2;
    v15 = (*(*a3 + 16))(a3);
    v16 = v15[4];
    if (v15[3] - v16 > 0xDuLL)
    {
      qmemcpy(v16, "reduction_kind", 14);
      v15[4] += 14;
    }

    else
    {
      llvm::raw_ostream::write(v15, "reduction_kind", 0xEuLL);
    }

    mlir::silc::ReductionKindAttr::print(&v17, a3);
  }
}

uint64_t mlir::silc::symbolizeReductionKind(unsigned __int16 *a1, uint64_t a2)
{
  if (a2 == 7)
  {
    if (*a1 == 1685025392 && *(a1 + 3) == 1952675172)
    {
      return 0x100000004;
    }

    return 0;
  }

  if (a2 == 4)
  {
    if (*a1 == 1851876717)
    {
      return 0x100000005;
    }

    else
    {
      return 0;
    }
  }

  if (a2 != 3)
  {
    return 0;
  }

  if (*a1 == 30067 && *(a1 + 2) == 109)
  {
    return 0x100000001;
  }

  result = 0x100000002;
  v5 = *a1;
  v6 = a1;
  v7 = *(a1 + 2);
  if (v5 != 24941 || v7 != 120)
  {
    v9 = *v6;
    v10 = *(v6 + 2);
    if (v9 == 26989 && v10 == 110)
    {
      return 0x100000003;
    }

    return 0;
  }

  return result;
}

BOOL mlir::AsmParser::parseString(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 264))(a1, a2))
  {
    return 1;
  }

  v15 = "expected string";
  v16 = 259;
  (*(*a1 + 24))(v17, a1, v4, &v15);
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
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
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

  return v5;
}

uint64_t _ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4silc12MeshAxisAttrEJPNS1_11MLIRContextENS_9StringRefEtEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1[1];
  v5 = 257;
  return (*(*v1 + 24))(v1, v2, v4);
}

uint64_t _ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4silc12ShardingAttrEJPNS1_11MLIRContextENS1_9AttributeENS_8ArrayRefINS8_17TensorAxisRefAttrEEEEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1[1];
  v5 = 257;
  return (*(*v1 + 24))(v1, v2, v4);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllGatherOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::silc::SilcAllGatherOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllGatherOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllGatherOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllGatherOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllGatherOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllGatherOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t *mlir::RegisteredOperationName::Model<mlir::silc::SilcAllGatherOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::silc::SilcAllGatherOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::silc::SilcAllGatherOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::silc::SilcAllGatherOp::populateInherentAttrs(Context, v6, a3);
}

void mlir::RegisteredOperationName::Model<mlir::silc::SilcAllGatherOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllGatherOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::silc::SilcAllGatherOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllGatherOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllGatherOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllGatherOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllGatherOp>::writeProperties;
  {
    v13 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllGatherOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllGatherOp>>();
    v3 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::silc::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::silc::SilcAllGatherOp>::addOpToNetwork;
  {
    v14 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllGatherOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllGatherOp>>();
    v5 = v14;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::silc::PlistGeneratorInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v7 = v6;
  *v6 = mlir::silc::detail::BufferizationInterfaceInterfaceTraits::Model<mlir::silc::SilcAllGatherOp>::isConverted;
  {
    v15 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllGatherOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllGatherOp>>();
    v7 = v15;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::silc::BufferizationInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v9 = v8;
  *v8 = mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllGatherOp>::verifySymbolUses;
  {
    v16 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllGatherOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllGatherOp>>();
    v9 = v16;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id, v9);
  v10 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v10 = mlir::silc::detail::CollectiveCommunicationInterfaceInterfaceTraits::Model<mlir::silc::SilcAllGatherOp>::getResultSharding;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllGatherOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllGatherOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::silc::CollectiveCommunicationInterface,void>::resolveTypeID(void)::id, v10);
  v11 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v11 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllGatherOp>::getAsmResultNames;
  v11[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllGatherOp>::getAsmBlockArgumentNames;
  v11[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllGatherOp>::getAsmBlockNames;
  v11[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllGatherOp>::getDefaultDialect;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllGatherOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllGatherOp>>();
  }

  v12 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v12, v11);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>(uint64_t a1)
{
  {
    v90 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    a1 = v90;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v79 = v1;
    v91 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v1 = v79;
    a1 = v91;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v80 = v1;
    v92 = a1;
    v69 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v2 = v69;
    v1 = v80;
    a1 = v92;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v81 = v1;
    v93 = a1;
    v60 = v3;
    v70 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v3 = v60;
    v2 = v70;
    v1 = v81;
    a1 = v93;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v82 = v1;
    v94 = a1;
    v61 = v3;
    v71 = v2;
    v52 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v4 = v52;
    v3 = v61;
    v2 = v71;
    v1 = v82;
    a1 = v94;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v83 = v1;
    v95 = a1;
    v62 = v3;
    v72 = v2;
    v53 = v4;
    v45 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v5 = v45;
    v4 = v53;
    v3 = v62;
    v2 = v72;
    v1 = v83;
    a1 = v95;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v84 = v1;
    v96 = a1;
    v63 = v3;
    v73 = v2;
    v54 = v4;
    v39 = v6;
    v46 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v6 = v39;
    v5 = v46;
    v4 = v54;
    v3 = v63;
    v2 = v73;
    v1 = v84;
    a1 = v96;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v85 = v1;
    v97 = a1;
    v64 = v3;
    v74 = v2;
    v55 = v4;
    v40 = v6;
    v47 = v5;
    v34 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v7 = v34;
    v6 = v40;
    v5 = v47;
    v4 = v55;
    v3 = v64;
    v2 = v74;
    v1 = v85;
    a1 = v97;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::silc::PlistGeneratorInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::silc::PlistGeneratorInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v86 = v1;
    v98 = a1;
    v65 = v3;
    v75 = v2;
    v56 = v4;
    v41 = v6;
    v48 = v5;
    v30 = v8;
    v35 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v8 = v30;
    v7 = v35;
    v6 = v41;
    v5 = v48;
    v4 = v56;
    v3 = v65;
    v2 = v75;
    v1 = v86;
    a1 = v98;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::silc::BufferizationInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::silc::BufferizationInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v87 = v1;
    v99 = a1;
    v66 = v3;
    v76 = v2;
    v57 = v4;
    v42 = v6;
    v49 = v5;
    v31 = v8;
    v36 = v7;
    v27 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v9 = v27;
    v8 = v31;
    v7 = v36;
    v6 = v42;
    v5 = v49;
    v4 = v57;
    v3 = v66;
    v2 = v76;
    v1 = v87;
    a1 = v99;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v88 = v1;
    v100 = a1;
    v67 = v3;
    v77 = v2;
    v58 = v4;
    v43 = v6;
    v50 = v5;
    v32 = v8;
    v37 = v7;
    v25 = v10;
    v28 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v10 = v25;
    v9 = v28;
    v8 = v32;
    v7 = v37;
    v6 = v43;
    v5 = v50;
    v4 = v58;
    v3 = v67;
    v2 = v77;
    v1 = v88;
    a1 = v100;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::silc::CollectiveCommunicationInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::silc::CollectiveCommunicationInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v89 = v1;
    v101 = a1;
    v68 = v3;
    v78 = v2;
    v59 = v4;
    v44 = v6;
    v51 = v5;
    v33 = v8;
    v38 = v7;
    v26 = v10;
    v29 = v9;
    v24 = v11;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v11 = v24;
    v10 = v26;
    v9 = v29;
    v8 = v33;
    v7 = v38;
    v6 = v44;
    v5 = v51;
    v4 = v59;
    v3 = v68;
    v2 = v78;
    v1 = v89;
    a1 = v101;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::silc::PlistGeneratorInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::silc::PlistGeneratorInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::PlistGeneratorInterface::Trait<Empty>]";
  v6 = 99;
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

const char *llvm::getTypeName<mlir::silc::BufferizationInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::silc::BufferizationInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::BufferizationInterface::Trait<Empty>]";
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

const char *llvm::getTypeName<mlir::silc::CollectiveCommunicationInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::silc::CollectiveCommunicationInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::CollectiveCommunicationInterface::Trait<Empty>]";
  v6 = 108;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::silc::SilcAllGatherOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0 || (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  return mlir::silc::SilcAllGatherOp::verifyInvariantsImpl(&v7) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllReduceOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllReduceOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllReduceOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllReduceOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllReduceOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void *mlir::RegisteredOperationName::Model<mlir::silc::SilcAllReduceOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::silc::SilcAllReduceOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::silc::SilcAllReduceOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::silc::SilcAllReduceOp::populateInherentAttrs(Context, v6, a3);
}

void mlir::RegisteredOperationName::Model<mlir::silc::SilcAllReduceOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    *(a3 + 16) = *(a4 + 2);
    *a3 = v4;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllReduceOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::silc::SilcAllReduceOp::getPropertiesAsAttr(Context, v4);
}

__n128 mlir::RegisteredOperationName::Model<mlir::silc::SilcAllReduceOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::silc::SilcAllReduceOp>::compareProperties(uint64_t a1, void *a2, void *a3)
{
  if (*a3 != *a2)
  {
    return 0;
  }

  if (a3[1] == a2[1])
  {
    return a3[2] == a2[2];
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllReduceOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllReduceOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllReduceOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllReduceOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllReduceOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllReduceOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllReduceOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllReduceOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllReduceOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllReduceOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllReduceOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllReduceOp>::writeProperties;
  {
    v9 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllGatherOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllGatherOp>>();
    v3 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllReduceOp>::verifySymbolUses;
  {
    v10 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllGatherOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllGatherOp>>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::silc::detail::BufferizationInterfaceInterfaceTraits::Model<mlir::silc::SilcAllReduceOp>::isConverted;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllGatherOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllGatherOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::silc::BufferizationInterface,void>::resolveTypeID(void)::id, v6);
  v7 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v7 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllReduceOp>::getAsmResultNames;
  v7[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllReduceOp>::getAsmBlockArgumentNames;
  v7[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllReduceOp>::getAsmBlockNames;
  v7[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllReduceOp>::getDefaultDialect;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllGatherOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllGatherOp>>();
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>(uint64_t a1)
{
  {
    v65 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    a1 = v65;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v56 = v1;
    v66 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v1 = v56;
    a1 = v66;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v57 = v1;
    v67 = a1;
    v48 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v2 = v48;
    v1 = v57;
    a1 = v67;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v58 = v1;
    v68 = a1;
    v41 = v3;
    v49 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v3 = v41;
    v2 = v49;
    v1 = v58;
    a1 = v68;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v59 = v1;
    v69 = a1;
    v42 = v3;
    v50 = v2;
    v35 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v4 = v35;
    v3 = v42;
    v2 = v50;
    v1 = v59;
    a1 = v69;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v60 = v1;
    v70 = a1;
    v43 = v3;
    v51 = v2;
    v30 = v5;
    v36 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v5 = v30;
    v4 = v36;
    v3 = v43;
    v2 = v51;
    v1 = v60;
    a1 = v70;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v61 = v1;
    v71 = a1;
    v44 = v3;
    v52 = v2;
    v31 = v5;
    v37 = v4;
    v26 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v6 = v26;
    v5 = v31;
    v4 = v37;
    v3 = v44;
    v2 = v52;
    v1 = v61;
    a1 = v71;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v62 = v1;
    v72 = a1;
    v45 = v3;
    v53 = v2;
    v32 = v5;
    v38 = v4;
    v23 = v7;
    v27 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v7 = v23;
    v6 = v27;
    v5 = v32;
    v4 = v38;
    v3 = v45;
    v2 = v53;
    v1 = v62;
    a1 = v72;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v63 = v1;
    v73 = a1;
    v46 = v3;
    v54 = v2;
    v33 = v5;
    v39 = v4;
    v24 = v7;
    v28 = v6;
    v21 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    v1 = v63;
    a1 = v73;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::silc::BufferizationInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::silc::BufferizationInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v64 = v1;
    v74 = a1;
    v47 = v3;
    v55 = v2;
    v34 = v5;
    v40 = v4;
    v25 = v7;
    v29 = v6;
    v20 = v9;
    v22 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v9 = v20;
    v8 = v22;
    v7 = v25;
    v6 = v29;
    v5 = v34;
    v4 = v40;
    v3 = v47;
    v2 = v55;
    v1 = v64;
    a1 = v74;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::silc::SilcAllReduceOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0 || (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  return mlir::silc::SilcAllReduceOp::verifyInvariantsImpl(&v7) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllSliceOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllSliceOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllSliceOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllSliceOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllSliceOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllSliceOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllSliceOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllSliceOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllSliceOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllSliceOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllSliceOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllSliceOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllSliceOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllSliceOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllSliceOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllSliceOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllSliceOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllSliceOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllSliceOp>::writeProperties;
  {
    v13 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllGatherOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllGatherOp>>();
    v3 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::silc::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::silc::SilcAllSliceOp>::addOpToNetwork;
  {
    v14 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllGatherOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllGatherOp>>();
    v5 = v14;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::silc::PlistGeneratorInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v7 = v6;
  *v6 = mlir::silc::detail::BufferizationInterfaceInterfaceTraits::Model<mlir::silc::SilcAllSliceOp>::isConverted;
  {
    v15 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllGatherOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllGatherOp>>();
    v7 = v15;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::silc::BufferizationInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v9 = v8;
  *v8 = mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllSliceOp>::verifySymbolUses;
  {
    v16 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllGatherOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllGatherOp>>();
    v9 = v16;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id, v9);
  v10 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v10 = mlir::silc::detail::CollectiveCommunicationInterfaceInterfaceTraits::Model<mlir::silc::SilcAllSliceOp>::getResultSharding;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllGatherOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllGatherOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::silc::CollectiveCommunicationInterface,void>::resolveTypeID(void)::id, v10);
  v11 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v11 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllSliceOp>::getAsmResultNames;
  v11[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllSliceOp>::getAsmBlockArgumentNames;
  v11[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllSliceOp>::getAsmBlockNames;
  v11[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllSliceOp>::getDefaultDialect;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllGatherOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllGatherOp>>();
  }

  v12 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v12, v11);
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::silc::SilcAllGatherOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0 || (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  return mlir::silc::SilcAllGatherOp::verifyInvariantsImpl(&v7) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcMeshOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcMeshOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcMeshOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcMeshOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcMeshOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t *mlir::RegisteredOperationName::Model<mlir::silc::SilcMeshOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::silc::SilcMeshOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::silc::SilcMeshOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::silc::SilcMeshOp::populateInherentAttrs(Context, v6, a3);
}

void mlir::RegisteredOperationName::Model<mlir::silc::SilcMeshOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcMeshOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::silc::SilcMeshOp::getPropertiesAsAttr(Context, v4);
}

__n128 mlir::RegisteredOperationName::Model<mlir::silc::SilcMeshOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcMeshOp>,mlir::OpTrait::ZeroResults<mlir::silc::SilcMeshOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcMeshOp>,mlir::OpTrait::ZeroOperands<mlir::silc::SilcMeshOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcMeshOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcMeshOp>,mlir::SymbolOpInterface::Trait<mlir::silc::SilcMeshOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::writeProperties;
  {
    v4 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllGatherOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllGatherOp>>();
    v3 = v4;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x80uLL, 0x800408754F03FuLL);
  v3 = v2;
  *v2 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::getNameAttr;
  v2[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::setName;
  v2[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::getVisibility;
  v2[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::isNested;
  v2[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::isPrivate;
  v2[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::isPublic;
  v2[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::setVisibility;
  v2[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::setNested;
  v2[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::setPrivate;
  v2[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::setPublic;
  v2[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::getSymbolUses;
  v2[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::symbolKnownUseEmpty;
  v2[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::replaceAllSymbolUses;
  v2[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::isOptionalSymbol;
  v2[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::canDiscardOnUseEmpty;
  v2[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::isDeclaration;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::setName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v8 = 261;
  v7[0] = "sym_name";
  v7[1] = 8;
  v6 = mlir::StringAttr::get(Context, v7);
  mlir::Operation::setAttr(a2, v6, a3);
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::silc::SilcMeshOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v8 = a1;
  if (!mlir::silc::SilcMeshOp::verifyInvariantsImpl(&v8) || !mlir::detail::SymbolOpInterfaceTrait<mlir::silc::SilcMeshOp>::verifyTrait(a1, v6))
  {
    return 0;
  }

  v8 = a1;
  return mlir::silc::SilcMeshOp::verify(&v8) & 1;
}