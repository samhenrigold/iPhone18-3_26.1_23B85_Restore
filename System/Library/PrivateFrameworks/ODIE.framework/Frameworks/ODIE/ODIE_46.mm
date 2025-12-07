_BYTE **std::unique_ptr<llvm::ToolOutputFile>::~unique_ptr[abi:nn200100](_BYTE **a1, uint64_t a2, BOOL a3)
{
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    if (v4[128] == 1)
    {
      llvm::raw_fd_ostream::~raw_fd_ostream((v4 + 32));
    }

    llvm::CleanupInstaller::~CleanupInstaller(v4, a2, a3);
    MEMORY[0x25F891040]();
  }

  return a1;
}

uint64_t createDirectoryOrPrintErr(const void *a1, std::string::size_type a2)
{
  v17 = 261;
  v16.__r_.__value_.__r.__words[0] = a1;
  v16.__r_.__value_.__l.__size_ = a2;
  directory = llvm::sys::fs::create_directory(&v16, 1, 0x1F8u);
  *&v18.__val_ = directory;
  v18.__cat_ = v5;
  if (!directory)
  {
    return 1;
  }

  v6 = llvm::errs(directory);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 0x1EuLL)
  {
    qmemcpy(v7, "Error while creating directory ", 31);
    *(v6 + 4) += 31;
  }

  else
  {
    v6 = llvm::raw_ostream::write(v6, "Error while creating directory ", 0x1FuLL);
  }

  v9 = llvm::raw_ostream::operator<<(v6, a1, a2);
  v10 = v9;
  v11 = *(v9 + 4);
  if (*(v9 + 3) - v11 > 1uLL)
  {
    *v11 = 8250;
    *(v9 + 4) += 2;
  }

  else
  {
    v10 = llvm::raw_ostream::write(v9, ": ", 2uLL);
  }

  std::error_code::message(&v16, &v18);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v16;
  }

  else
  {
    v12 = v16.__r_.__value_.__r.__words[0];
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  v14 = llvm::raw_ostream::write(v10, v12, size);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, "\n", 1uLL);
  }

  else
  {
    *v15 = 10;
    ++*(v14 + 4);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return 0;
}

void llvm::SmallVectorTemplateBase<std::pair<std::string,llvm::StringRef>,false>::growAndEmplaceBack<std::string&,llvm::StringRef>(uint64_t a1, __int128 *a2, _OWORD *a3)
{
  v11 = 0;
  v6 = a1 + 16;
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 40, &v11);
  v8 = &v7[40 * *(a1 + 8)];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v8, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(v8 + 2) = *(a2 + 2);
    *v8 = v9;
  }

  *(v8 + 24) = *a3;
  llvm::SmallVectorTemplateBase<std::pair<std::string,llvm::StringRef>,false>::moveElementsForGrow(a1, v7);
  v10 = v11;
  if (*a1 != v6)
  {
    free(*a1);
  }

  *a1 = v7;
  ++*(a1 + 8);
  *(a1 + 12) = v10;
}

void llvm::SmallVectorTemplateBase<std::pair<std::string,llvm::StringRef>,false>::moveElementsForGrow(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *a1;
    v4 = *a1 + 40 * v2;
    do
    {
      v5 = *v3;
      *(a2 + 16) = *(v3 + 2);
      *a2 = v5;
      *(v3 + 1) = 0;
      *(v3 + 2) = 0;
      *v3 = 0;
      *(a2 + 24) = *(v3 + 24);
      a2 += 40;
      v3 = (v3 + 40);
    }

    while (v3 != v4);
    v6 = *(a1 + 2);
    if (v6)
    {
      v7 = *a1 + 40 * v6 - 17;
      v8 = -40 * v6;
      v9 = v7;
      do
      {
        v10 = *v9;
        v9 -= 40;
        if (v10 < 0)
        {
          operator delete(*(v7 - 23));
        }

        v7 = v9;
        v8 += 40;
      }

      while (v8);
    }
  }
}

unsigned __int8 *llvm::support::detail::provider_format_adapter<llvm::iterator_range<unsigned int *>>::format(uint64_t a1, llvm::StringRef *a2, unsigned __int8 *a3, unsigned int *a4)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v14 = a3;
  v15 = a4;
  v7 = llvm::format_provider<llvm::iterator_range<unsigned int *>,void>::consumeOneOption(&v14, 0x24u, ", ");
  v9 = v8;
  result = llvm::format_provider<llvm::iterator_range<unsigned int *>,void>::consumeOneOption(&v14, 0x40u, &byte_25D0A27DF);
  v12 = result;
  v13 = v11;
  if (v5 != v6)
  {
    v14 = &unk_286E846F0;
    v15 = v5;
    result = llvm::format_provider<unsigned int,void>::format(v5++, a2, result, v11);
  }

  for (; v5 != v6; ++v5)
  {
    llvm::raw_ostream::operator<<(a2, v7, v9);
    v14 = &unk_286E846F0;
    v15 = v5;
    result = llvm::format_provider<unsigned int,void>::format(v5, a2, v12, v13);
  }

  return result;
}

uint64_t llvm::format_provider<llvm::iterator_range<unsigned int *>,void>::consumeOneOption(unsigned __int8 **a1, unsigned __int8 a2, uint64_t a3)
{
  v4 = a1[1];
  if (v4)
  {
    v6 = *a1;
    if (**a1 == a2)
    {
      v7 = (v6 + 1);
      v8 = (v4 - 1);
      *a1 = (v6 + 1);
      a1[1] = v4 - 1;
      if (v4 != 1)
      {
        v9 = 0;
        while (1)
        {
          v10 = off_2799BDDC8[v9];
          if (*v7 == *v10)
          {
            break;
          }

          if (++v9 == 3)
          {
            return a3;
          }
        }

        v11 = memchr((v6 + 1), v10[1], v8);
        v12 = v11 - v7;
        if (v11)
        {
          v13 = v12 == -1;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          a3 = v6 + 2;
          if (v8 >= v12 + 1)
          {
            v14 = v12 + 1;
          }

          else
          {
            v14 = v8;
          }

          *a1 = &v7[v14];
          a1[1] = (v8 - v14);
        }
      }
    }
  }

  return a3;
}

uint64_t llvm::SmallVector<std::pair<std::string,llvm::StringRef>,1u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 40 * v3 - 17;
    v5 = -40 * v3;
    v6 = v4;
    do
    {
      v7 = *v6;
      v6 -= 40;
      if (v7 < 0)
      {
        operator delete(*(v4 - 23));
      }

      v4 = v6;
      v5 += 40;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

void mlir::PassExecutionAction::print(mlir::PassExecutionAction *this, llvm::raw_ostream *a2)
{
  v4 = (*(**(this + 4) + 16))(*(this + 4));
  v6 = v5;
  v7 = (*(*this + 32))(this);
  if ((*v7 & 6) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = *v7 & 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(v8 + 48);
  v10[1] = 38;
  v10[2] = v15;
  v10[3] = 3;
  v11 = 1;
  v12[0] = &unk_286E84828;
  v12[1] = &mlir::PassExecutionAction::tag;
  v13[0] = &unk_286E84750;
  v13[1] = v4;
  v13[2] = v6;
  v14[0] = &unk_286E84858;
  v14[1] = v9;
  v15[0] = v12;
  v15[1] = v13;
  v15[2] = v14;
  llvm::formatv_object_base::format(v10, a2);
}

uint64_t mlir::Pass::initializeOptions(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, void ***), uint64_t a5)
{
  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  v15 = 0;
  v19 = 0;
  v10 = 1;
  v20 = 1;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v14 = &unk_286E79D28;
  v21 = v22;
  llvm::raw_ostream::SetUnbuffered(&v14);
  if ((mlir::detail::PassOptions::parseFromString(a1 + 144, a2, a3, &v14) & 1) == 0)
  {
    v13 = 260;
    v12 = v22;
    v10 = a4(a5, &v12);
  }

  llvm::raw_ostream::~raw_ostream(&v14);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  return v10;
}

void mlir::Pass::printAsTextualPipeline(mlir::Pass *this, llvm::raw_ostream *a2)
{
  v4 = *(this + 1);
  v5 = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID();
  if (this && v4 == v5)
  {
    v6 = *(this + 86);
    if (v6)
    {
      v7 = *(this + 42);
      mlir::OpPassManager::printAsTextualPipeline(v7, a2);
      if (v6 != 1)
      {
        v8 = v7 + 1;
        v9 = 8 * v6 - 8;
        do
        {
          v10 = *(a2 + 4);
          if (*(a2 + 3) == v10)
          {
            llvm::raw_ostream::write(a2, ",", 1uLL);
          }

          else
          {
            *v10 = 44;
            ++*(a2 + 4);
          }

          mlir::OpPassManager::printAsTextualPipeline(v8++, a2);
          v9 -= 8;
        }

        while (v9);
      }
    }
  }

  else
  {
    v11 = (*(*this + 32))(this);
    if (v12)
    {
      llvm::raw_ostream::operator<<(a2, v11, v12);
    }

    else
    {
      v13 = *(a2 + 4);
      if (*(a2 + 3) - v13 > 7uLL)
      {
        *v13 = 0x3C6E776F6E6B6E75;
        *(a2 + 4) += 8;
        v14 = a2;
      }

      else
      {
        v14 = llvm::raw_ostream::write(a2, "unknown<", 8uLL);
      }

      v15 = (*(*this + 16))(this);
      v17 = llvm::raw_ostream::operator<<(v14, v15, v16);
      v18 = *(v17 + 4);
      if (*(v17 + 3) == v18)
      {
        llvm::raw_ostream::write(v17, ">", 1uLL);
      }

      else
      {
        *v18 = 62;
        ++*(v17 + 4);
      }
    }

    mlir::detail::PassOptions::print((this + 144), a2);
  }
}

uint64_t *std::vector<std::unique_ptr<mlir::Pass>>::push_back[abi:nn200100](uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<std::unique_ptr<mlir::Pass>>::__throw_length_error[abi:nn200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v17[4] = v3;
    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<mlir::Pass>>>(v12);
    }

    v13 = (8 * (v9 >> 3));
    v14 = *a2;
    *a2 = 0;
    *v13 = v14;
    v7 = v13 + 1;
    memcpy(0, v8, v9);
    v15 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v16 = v3[2];
    v3[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::unique_ptr<mlir::Pass>>::~__split_buffer(v17);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

void *std::vector<std::unique_ptr<mlir::Pass>>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t mlir::detail::OpPassManagerImpl::addPass(uint64_t result, uint64_t **a2)
{
  v3 = result;
  v4 = *(result + 23);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (*(result + 23))
    {
      goto LABEL_3;
    }

LABEL_16:
    v6 = *a2;
    goto LABEL_17;
  }

  if (!*(result + 8))
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v4 >= 0)
  {
    v5 = *(result + 23);
  }

  else
  {
    result = *result;
    v5 = *(v3 + 8);
  }

  v6 = *a2;
  if ((*a2)[4])
  {
    v8 = v6[2];
    v7 = v6[3];
    if (v5 != v7 || v5 && (result = memcmp(result, v6[2], v5), result))
    {
      if (*(v3 + 68))
      {
        v41 = "Can't add pass '";
        v42 = 259;
        v26 = (*(*v6 + 16))(v6);
        v40 = 261;
        v39[0] = v26;
        v39[1] = v27;
        llvm::operator+(&v41, v39, v43);
        v37 = "' restricted to '";
        v38 = 259;
        llvm::operator+(v43, &v37, v44);
        v36 = 261;
        v35[0] = v8;
        v35[1] = v7;
        llvm::operator+(v44, v35, v45);
        v33 = "' on a PassManager intended to run on '";
        v34 = 259;
        llvm::operator+(v45, &v33, v46);
        v32 = 261;
        v31[0] = mlir::detail::OpPassManagerImpl::getOpAnchorName(v3);
        v31[1] = v28;
        llvm::operator+(v46, v31, v47);
        v29 = "', did you intend to nest?";
        v30 = 259;
        llvm::operator+(v47, &v29, v49);
        llvm::report_fatal_error(v49, 1);
      }

      v9 = mlir::detail::OpPassManagerImpl::nest(v3);
      v10 = *a2;
      *a2 = 0;
      v48 = v10;
      mlir::OpPassManager::addPass(v9, &v48);
      result = v48;
      if (v48)
      {
        v11 = *(*v48 + 8);

        return v11();
      }

      return result;
    }
  }

LABEL_17:
  v13 = *(v3 + 48);
  v12 = *(v3 + 56);
  if (v13 >= v12)
  {
    v15 = *(v3 + 40);
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<std::unique_ptr<mlir::Pass>>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    v49[4] = v3 + 40;
    if (v20)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<mlir::Pass>>>(v20);
    }

    v21 = v17;
    v22 = (8 * v17);
    *a2 = 0;
    v23 = &v22[-v21];
    *v22 = v6;
    v14 = v22 + 1;
    memcpy(v23, v15, v16);
    v24 = *(v3 + 40);
    *(v3 + 40) = v23;
    *(v3 + 48) = v14;
    v25 = *(v3 + 56);
    *(v3 + 56) = 0;
    v49[2] = v24;
    v49[3] = v25;
    v49[0] = v24;
    v49[1] = v24;
    result = std::__split_buffer<std::unique_ptr<mlir::Pass>>::~__split_buffer(v49);
  }

  else
  {
    *a2 = 0;
    *v13 = v6;
    v14 = v13 + 8;
  }

  *(v3 + 48) = v14;
  return result;
}

uint64_t *mlir::OpPassManager::addPass(uint64_t *a1, uint64_t **a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = 0;
  v6 = v3;
  mlir::detail::OpPassManagerImpl::addPass(v2, &v6);
  result = v6;
  if (v6)
  {
    v5 = *(*v6 + 8);

    return v5();
  }

  return result;
}

const char *mlir::detail::OpPassManagerImpl::getOpAnchorName(const char *this)
{
  v1 = this[23];
  if ((v1 & 0x8000000000000000) == 0)
  {
    if (this[23])
    {
      goto LABEL_3;
    }

    return "any";
  }

  if (!*(this + 1))
  {
    return "any";
  }

LABEL_3:
  if (v1 < 0)
  {
    return *this;
  }

  return this;
}

uint64_t mlir::detail::OpPassManagerImpl::finalizePassList(mlir::detail::OpPassManagerImpl *this, mlir::MLIRContext *a2)
{
  v2 = a2;
  v90 = *MEMORY[0x277D85DE8];
  v3 = *(this + 5);
  v83 = *(this + 6);
  if (v3 == v83)
  {
    goto LABEL_99;
  }

  v4 = 0;
  do
  {
    v5 = *v3;
    v6 = *(*v3 + 8);
    v7 = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID();
    v84 = v5;
    if (v5)
    {
      v8 = v6 == v7;
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      if (!v4)
      {
        goto LABEL_93;
      }

      v9 = *(v4 + 344);
      if (!v9)
      {
LABEL_12:
        v4 = 0;
        goto LABEL_93;
      }

      v10 = *(v4 + 336);
      v11 = 8 * v9;
      while (mlir::detail::OpPassManagerImpl::finalizePassList(*v10, v2))
      {
        ++v10;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_12;
        }
      }

      return 0;
    }

    if (!v4)
    {
      v4 = v5;
      goto LABEL_93;
    }

    v12 = *(v5 + 344);
    v82 = v3;
    if (v12)
    {
      v13 = 8 * v12;
      v14 = *(v5 + 336);
      while (1)
      {
        v15 = *(*v14 + 23);
        if (v15 < 0)
        {
          v15 = *(*v14 + 1);
        }

        if (!v15)
        {
          break;
        }

        ++v14;
        v13 -= 8;
        if (!v13)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v14 = *(v5 + 336);
    }

    if (v14 != (*(v5 + 336) + 8 * v12))
    {
      v16 = *(v4 + 344);
      if (v16)
      {
        v17 = *(v4 + 336);
        v18 = 8 * v16;
        while (1)
        {
          OpName = mlir::detail::OpPassManagerImpl::getOpName(*v17, v2);
          if (v20 & 1) == 0 || (mlir::detail::OpPassManagerImpl::canScheduleOn(*v14, v2, OpName))
          {
            break;
          }

          ++v17;
          v18 -= 8;
          if (!v18)
          {
            goto LABEL_29;
          }
        }

LABEL_92:
        v4 = v84;
        v3 = v82;
        goto LABEL_93;
      }
    }

LABEL_29:
    v21 = *(v4 + 344);
    if (v21)
    {
      v22 = 8 * v21;
      v23 = *(v4 + 336);
      while (1)
      {
        v24 = *(*v23 + 23);
        if (v24 < 0)
        {
          v24 = *(*v23 + 1);
        }

        if (!v24)
        {
          break;
        }

        ++v23;
        v22 -= 8;
        if (!v22)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      v23 = *(v4 + 336);
    }

    if (v23 != (*(v4 + 336) + 8 * v21))
    {
      v25 = *(v84 + 344);
      if (!v25)
      {
        goto LABEL_88;
      }

      v26 = *(v84 + 336);
      v27 = 8 * v25;
      do
      {
        v28 = mlir::detail::OpPassManagerImpl::getOpName(*v26, v2);
        if (v29 & 1) == 0 || (mlir::detail::OpPassManagerImpl::canScheduleOn(*v23, v2, v28))
        {
          goto LABEL_92;
        }

        ++v26;
        v27 -= 8;
      }

      while (v27);
    }

LABEL_43:
    v30 = *(v84 + 344);
    if (!v30)
    {
      goto LABEL_88;
    }

    v31 = *(v84 + 336);
    v32 = &v31[v30];
    do
    {
      v33 = *v31;
      v34 = *(*v31 + 23);
      if (v34 < 0)
      {
        if (!*(v33 + 8))
        {
LABEL_54:
          v35 = "any";
          v36 = 3;
          goto LABEL_55;
        }
      }

      else if (!*(*v31 + 23))
      {
        goto LABEL_54;
      }

      if (v34 >= 0)
      {
        v35 = *v31;
      }

      else
      {
        v35 = *v33;
      }

      if (v34 >= 0)
      {
        v36 = *(*v31 + 23);
      }

      else
      {
        v36 = *(v33 + 8);
      }

LABEL_55:
      v37 = *(v4 + 336);
      v38 = *(v4 + 344);
      if (v38)
      {
        v39 = 8 * v38;
        v40 = *(v4 + 336);
        while (1)
        {
          v41 = *v40;
          v42 = (*v40)[23];
          if (v42 < 0)
          {
            if (*(v41 + 1))
            {
LABEL_59:
              v43 = *(v41 + 1);
              if (v42 >= 0)
              {
                v43 = (*v40)[23];
              }

              if (v43 == v36)
              {
                if (v42 >= 0)
                {
                  v44 = *v40;
                }

                else
                {
                  v44 = *v41;
                }

                if (!v36)
                {
                  goto LABEL_74;
                }

                v45 = v36;
                goto LABEL_70;
              }

              goto LABEL_71;
            }
          }

          else if ((*v40)[23])
          {
            goto LABEL_59;
          }

          if (v36 == 3)
          {
            v44 = "any";
            v45 = 3;
LABEL_70:
            if (!memcmp(v44, v35, v45))
            {
              goto LABEL_74;
            }
          }

LABEL_71:
          ++v40;
          v39 -= 8;
          if (!v39)
          {
            goto LABEL_79;
          }
        }
      }

      v40 = *(v4 + 336);
LABEL_74:
      if (v40 == (v37 + 8 * v38) || v40 == 0)
      {
LABEL_79:
        llvm::SmallVectorImpl<mlir::OpPassManager>::emplace_back<mlir::OpPassManager>(v4 + 336, v31);
      }

      else
      {
        v49 = *(v33 + 40);
        v47 = *(v33 + 48);
        v48 = (v33 + 40);
        if (v49 != v47)
        {
          v50 = *v40;
          do
          {
            std::vector<std::unique_ptr<mlir::Pass>>::push_back[abi:nn200100](v50 + 5, v49++);
          }

          while (v49 != v47);
        }

        std::vector<std::unique_ptr<mlir::Pass>>::clear[abi:nn200100](v48);
      }

      ++v31;
    }

    while (v31 != v32);
    v51 = *(v84 + 344);
    v2 = a2;
    if (v51)
    {
      v52 = -8 * v51;
      v53 = (*(v84 + 336) + 8 * v51 - 8);
      do
      {
        std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100](v53--, 0);
        v52 += 8;
      }

      while (v52);
    }

LABEL_88:
    *(v84 + 344) = 0;
    v54 = *(v4 + 344);
    if (v54 >= 2)
    {
      qsort(*(v4 + 336), v54, 8uLL, mlir::detail::OpToOpPassAdaptor::tryMergeInto(mlir::MLIRContext *,mlir::detail::OpToOpPassAdaptor&)::$_2::__invoke);
    }

    v3 = v82;
    v55 = *v82;
    *v82 = 0;
    if (v55)
    {
      (*(*v55 + 8))(v55);
    }

LABEL_93:
    ++v3;
  }

  while (v3 != v83);
  if (v4)
  {
    v56 = *(v4 + 344);
    if (v56)
    {
      v57 = *(v4 + 336);
      v58 = 8 * v56;
      while (mlir::detail::OpPassManagerImpl::finalizePassList(*v57, v2))
      {
        ++v57;
        v58 -= 8;
        if (!v58)
        {
          goto LABEL_99;
        }
      }

      return 0;
    }
  }

LABEL_99:
  v59 = *(this + 5);
  v60 = *(this + 6);
  if (v59 != v60)
  {
    while (*v59)
    {
      if (++v59 == v60)
      {
        goto LABEL_118;
      }
    }

    if (v59 != v60)
    {
      v62 = v59 + 1;
      if (v59 + 1 != v60)
      {
        do
        {
          v63 = *v62;
          if (*v62)
          {
            *v62 = 0;
            v64 = *v59;
            *v59 = v63;
            if (v64)
            {
              (*(*v64 + 8))(v64);
            }

            ++v59;
          }

          ++v62;
        }

        while (v62 != v60);
        v60 = *(this + 6);
      }
    }
  }

  if (v59 != v60)
  {
    while (v60 != v59)
    {
      v66 = *--v60;
      v65 = v66;
      *v60 = 0;
      if (v66)
      {
        (*(*v65 + 8))(v65);
      }
    }

    *(this + 6) = v59;
  }

LABEL_118:
  v67 = mlir::detail::OpPassManagerImpl::getOpName(this, v2);
  if ((v68 & 1) == 0)
  {
    return 1;
  }

  v69 = *(this + 5);
  v70 = *(this + 6);
  if (v69 == v70)
  {
    return 1;
  }

  v71 = v67;
  v72 = v2;
  v73 = *(v67 + 16);
  while (v73 == &mlir::detail::TypeIDResolver<void,void>::id || ((*(**v69 + 72))(*v69, v71) & 1) != 0)
  {
    if (++v69 == v70)
    {
      return 1;
    }
  }

  v75 = *(*v72 + 616);
  v87 = 257;
  emitDiag(v75, 2, &v85, &v88);
  if (v88)
  {
    mlir::Diagnostic::operator<<<26ul>(v89, "unable to schedule pass '");
  }

  v76 = (*(**v69 + 16))();
  if (v88)
  {
    v87 = 261;
    v85 = v76;
    v86 = v77;
    mlir::Diagnostic::operator<<(v89, &v85);
    if (v88)
    {
      mlir::Diagnostic::operator<<<40ul>(v89, "' on a PassManager intended to run on '");
    }
  }

  v78 = *(this + 23);
  if (v78 < 0)
  {
    if (*(this + 1))
    {
      goto LABEL_133;
    }

    goto LABEL_137;
  }

  if (!*(this + 23))
  {
LABEL_137:
    v79 = "any";
    v78 = 3;
    goto LABEL_138;
  }

LABEL_133:
  v79 = *this;
  if (v78 < 0)
  {
    v78 = *(this + 1);
  }

  else
  {
    v79 = this;
  }

LABEL_138:
  if (v88)
  {
    v87 = 261;
    v85 = v79;
    v86 = v78;
    mlir::Diagnostic::operator<<(v89, &v85);
    if (v88)
    {
      mlir::Diagnostic::operator<<<3ul>(v89, "'!");
    }
  }

  v61 = (v89[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v88);
  return v61;
}

uint64_t mlir::detail::OpPassManagerImpl::getOpName(mlir::detail::OpPassManagerImpl *this, mlir::MLIRContext *a2)
{
  v4 = *(this + 23);
  if (v4 < 0)
  {
    if (!*(this + 1))
    {
      return *(this + 3);
    }
  }

  else if (!*(this + 23))
  {
    return *(this + 3);
  }

  if ((*(this + 32) & 1) == 0)
  {
    if (v4 >= 0)
    {
      v5 = this;
    }

    else
    {
      v5 = *this;
    }

    if (v4 >= 0)
    {
      v6 = *(this + 23);
    }

    else
    {
      v6 = *(this + 1);
    }

    mlir::OperationName::OperationName(&v9, v5, v6, a2);
    v7 = v9;
    if ((*(this + 32) & 1) == 0)
    {
      *(this + 32) = 1;
    }

    *(this + 3) = v7;
  }

  return *(this + 3);
}

uint64_t mlir::detail::OpPassManagerImpl::canScheduleOn(mlir::detail::OpPassManagerImpl *a1, mlir::MLIRContext *a2, void *a3)
{
  OpName = mlir::detail::OpPassManagerImpl::getOpName(a1, a2);
  if (v6)
  {
    return OpName == a3;
  }

  v8 = a3[2];
  if (v8 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  if (v8 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    return 0;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
  result = (*(*a3 + 32))(a3, v10);
  if (result)
  {
    v11 = *(a1 + 5);
    v12 = *(a1 + 6);
    if (v11 == v12)
    {
      return 1;
    }

    else
    {
      v13 = v11 + 8;
      do
      {
        result = (*(**(v13 - 8) + 72))(*(v13 - 8), v9);
        if (result)
        {
          v14 = v13 == v12;
        }

        else
        {
          v14 = 1;
        }

        v13 += 8;
      }

      while (!v14);
    }
  }

  return result;
}

llvm::raw_ostream *printAsTextualPipeline(llvm::raw_ostream *a1, const void *a2, size_t a3, mlir::Pass ***a4)
{
  result = llvm::raw_ostream::operator<<(a1, a2, a3);
  v7 = *(result + 4);
  if (*(result + 3) == v7)
  {
    result = llvm::raw_ostream::write(result, "(", 1uLL);
  }

  else
  {
    *v7 = 40;
    ++*(result + 4);
  }

  v8 = *a4;
  v9 = a4[1];
  if (*a4 != v9)
  {
    v11 = *v8;
    v10 = v8 + 1;
    for (result = mlir::Pass::printAsTextualPipeline(v11, a1); v10 != v9; result = mlir::Pass::printAsTextualPipeline(v13, a1))
    {
      v12 = *(a1 + 4);
      if (*(a1 + 3) == v12)
      {
        llvm::raw_ostream::write(a1, ",", 1uLL);
      }

      else
      {
        *v12 = 44;
        ++*(a1 + 4);
      }

      v13 = *v10++;
    }
  }

  v14 = *(a1 + 4);
  if (*(a1 + 3) == v14)
  {

    return llvm::raw_ostream::write(a1, ")", 1uLL);
  }

  else
  {
    *v14 = 41;
    ++*(a1 + 4);
  }

  return result;
}

llvm::raw_ostream *mlir::OpPassManager::printAsTextualPipeline(const char **this, llvm::raw_ostream *a2)
{
  v5 = *this;
  v6 = (*this)[23];
  if (v6 < 0)
  {
    if (*(v5 + 1))
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = "any";
    v8 = 3;
    goto LABEL_11;
  }

  if (!(*this)[23])
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 0)
  {
    v7 = *this;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = (*this)[23];
  }

  else
  {
    v8 = *(v5 + 1);
  }

LABEL_11:
  v12[2] = v2;
  v12[3] = v3;
  v10 = *(v5 + 5);
  v9 = *(v5 + 6);
  v12[0] = v10;
  v12[1] = v9;
  return printAsTextualPipeline(a2, v7, v8, v12);
}

uint64_t mlir::OpPassManager::initialize(mlir::OpPassManager *this, mlir::MLIRContext *a2, unsigned int a3)
{
  v3 = *this;
  if (*(*this + 64) == a3)
  {
    return 1;
  }

  *(v3 + 64) = a3;
  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  if (v5 == v6)
  {
    return 1;
  }

  while (1)
  {
    v8 = *v5;
    v9 = *(*v5 + 8);
    v10 = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID();
    if (v8 && v9 == v10)
    {
      break;
    }

    if (((*(*v8 + 64))(v8, a2) & 1) == 0)
    {
      return 0;
    }

LABEL_13:
    if (++v5 == v6)
    {
      return 1;
    }
  }

  v12 = *(v8 + 344);
  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v8 + 336);
  v14 = 8 * v12;
  while ((mlir::OpPassManager::initialize(v13, a2, a3) & 1) != 0)
  {
    v13 = (v13 + 8);
    v14 -= 8;
    if (!v14)
    {
      goto LABEL_13;
    }
  }

  return 0;
}

unint64_t mlir::OpPassManager::hash(mlir::OpPassManager *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v1 = *(*this + 40);
  v2 = *(*this + 48);
  if (v1 == v2)
  {
    return 0;
  }

  do
  {
    v3 = *v1;
    v4 = *(*v1 + 8);
    v5 = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID();
    if (v3)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v7 = *(v3 + 344);
      if (v7)
      {
        v8 = *(v3 + 336);
        v9 = 8 * v7;
        do
        {
          v11 = mlir::OpPassManager::hash(v8);
          v18 = 0u;
          v19 = 0u;
          v16 = 0u;
          v17 = 0u;
          v14 = 0u;
          v15 = 0u;
          v13 = 0u;
          v20 = 0;
          v21 = 0xFF51AFD7ED558CCDLL;
          llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(&v13, 0, &v13, &v17, &v12, &v11);
          v8 = (v8 + 8);
          v9 -= 8;
        }

        while (v9);
      }
    }

    else
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v21 = 0xFF51AFD7ED558CCDLL;
      *&v13 = v12;
      *(&v13 + 1) = v3;
      v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v13, 0, &v14, &v17);
    }

    ++v1;
  }

  while (v1 != v2);
  return v12;
}

BOOL mlir::detail::OpToOpPassAdaptor::run(uint64_t a1, void ***this, uint64_t a3, char a4, int a5)
{
  v5 = this;
  v52 = *MEMORY[0x277D85DE8];
  v46 = a1;
  v47 = a3;
  v45 = this;
  v44 = a4;
  v43 = a5;
  v6 = this[6];
  if (v6[2] == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v42 = 257;
    mlir::Operation::emitOpError(&v49, this, v41);
    if (v49)
    {
      mlir::Diagnostic::operator<<<55ul>(v50, "trying to schedule a pass on an unregistered operation");
    }

    goto LABEL_26;
  }

  v7 = a3;
  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
  if (((*(*v6 + 4))(v6, v9) & 1) == 0)
  {
    v42 = 257;
    mlir::Operation::emitOpError(&v49, v5, v41);
    if (v49)
    {
      mlir::Diagnostic::operator<<<76ul>(v50, "trying to schedule a pass on an operation not marked as 'IsolatedFromAbove'");
    }

    goto LABEL_26;
  }

  if (*(*(v5 + 6) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v5 + 6);
  }

  if (((*(*a1 + 72))(a1, v10) & 1) == 0)
  {
    v42 = 257;
    mlir::Operation::emitOpError(&v49, v5, v41);
    if (v49)
    {
      mlir::Diagnostic::operator<<<54ul>(v50, "trying to schedule a pass on an unsupported operation");
    }

LABEL_26:
    v20 = v51;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v49);
    return !v20;
  }

  v11 = *(v7 + 72);
  v12 = v11 & 0xFFFFFFFFFFFFFFF8;
  if ((v11 & 4) == 0 && v12)
  {
    do
    {
      v13 = *(v12 + 72);
      v12 = v13 & 0xFFFFFFFFFFFFFFF8;
    }

    while ((v13 & 4) == 0 && v12);
  }

  v40 = v12;
  {
    v15 = *llvm::get_threadid(void)::Self();
  }

  else
  {
    llvm::get_threadid(void)::$_0::operator()();
    v36 = llvm::get_threadid(void)::Self();
    *v36 = v37;
  }

  v39[0] = v15;
  v39[1] = a1;
  v49 = &v45;
  v50[0] = &v43;
  v50[1] = &v47;
  v50[2] = &v44;
  v50[3] = &v40;
  v50[4] = v39;
  if (*(a1 + 112) == 1 && (*(a1 + 76) & 1) == 0)
  {
    free(*(a1 + 56));
    v5 = v45;
    v7 = v47;
    v12 = v40;
  }

  *(a1 + 40) = v5 & 0xFFFFFFFFFFFFFFFBLL;
  *(a1 + 48) = v7;
  *(a1 + 56) = a1 + 80;
  *(a1 + 64) = 2;
  *(a1 + 72) = 0;
  *(a1 + 76) = 1;
  *(a1 + 96) = llvm::function_ref<llvm::LogicalResult ()(mlir::OpPassManager &,mlir::Operation *)>::callback_fn<mlir::detail::OpToOpPassAdaptor::run(mlir::Pass *,mlir::Operation *,mlir::AnalysisManager,BOOL,unsigned int)::$_0>;
  *(a1 + 104) = &v49;
  *(a1 + 112) = 1;
  if (v12)
  {
    v16 = *v12;
    std::recursive_mutex::lock(*v12);
    v17 = *(*v12 + 72);
    v18 = *(*v12 + 80);
    while (v17 != v18)
    {
      v19 = *v17++;
      (*(*v19 + 32))(v19, a1, v5);
    }

    std::recursive_mutex::unlock(v16);
    v5 = v45;
  }

  v38 = 0;
  v22 = *(***(v5 + 3) + 32);
  v41[0] = &v46;
  v41[1] = &v44;
  v41[2] = &v38;
  v48 = v5 & 0xFFFFFFFFFFFFFFF9;
  if (*(*v22 + 24))
  {
    mlir::MLIRContext::executeActionInternal<mlir::PassExecutionAction,mlir::Pass &>(*v22, llvm::function_ref<void ()(void)>::callback_fn<mlir::detail::OpToOpPassAdaptor::run(mlir::Pass *,mlir::Operation *,mlir::AnalysisManager,BOOL,unsigned int)::$_1>, v41, &v48, 1, a1);
  }

  else
  {
    llvm::function_ref<void ()(void)>::callback_fn<mlir::detail::OpToOpPassAdaptor::run(mlir::Pass *,mlir::Operation *,mlir::AnalysisManager,BOOL,unsigned int)::$_1>(v41);
  }

  mlir::detail::NestedAnalysisMap::invalidate(v47, (v46 + 56));
  if (!v38 && v44 == 1)
  {
    v23 = *(v46 + 8);
    v24 = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID();
    v25 = v46;
    v26 = mlir::detail::TypeIDResolver<mlir::detail::PreservedAnalyses::AllAnalysesType,void>::resolveTypeID();
    if (!llvm::SmallPtrSetImplBase::contains_imp((v25 + 56), v26))
    {
      LOBYTE(v41[0]) = v23 != v24;
    }
  }

  v27 = v40;
  if (v40)
  {
    v28 = v38;
    v30 = v45;
    v29 = v46;
    v31 = *v40;
    std::recursive_mutex::lock(*v40);
    v33 = *(*v27)[1].__m_.__opaque;
    v32 = *&(*v27)[1].__m_.__opaque[8];
    if (v28)
    {
      while (v32 != v33)
      {
        v34 = *(v32 - 8);
        v32 -= 8;
        (*(*v34 + 48))(v34, v29, v30);
      }
    }

    else
    {
      while (v32 != v33)
      {
        v35 = *(v32 - 8);
        v32 -= 8;
        (*(*v35 + 40))(v35, v29, v30);
      }
    }

    std::recursive_mutex::unlock(v31);
  }

  v20 = v38;
  return !v20;
}

uint64_t mlir::detail::OpToOpPassAdaptor::runPipeline(mlir::detail::OpPassManagerImpl **a1, mlir::Operation *this, uint64_t a3, char a4, int a5, std::recursive_mutex **a6, uint64_t a7)
{
  if (a6)
  {
    OpName = mlir::detail::OpPassManagerImpl::getOpName(*a1, *(***(this + 3) + 32));
    mlir::PassInstrumentor::runBeforePipeline(a6, OpName, v15, a7);
  }

  v16 = *(*a1 + 5);
  v17 = *(*a1 + 6);
  while (v16 != v17)
  {
    if (!mlir::detail::OpToOpPassAdaptor::run(*v16, this, a3, a4, a5))
    {
      v20 = 0;
      goto LABEL_11;
    }

    ++v16;
  }

  if (a6)
  {
    v18 = mlir::detail::OpPassManagerImpl::getOpName(*a1, *(***(this + 3) + 32));
    mlir::PassInstrumentor::runAfterPipeline(a6, v18, v19, a7);
  }

  v20 = 1;
LABEL_11:
  llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::clear((a3 + 32));
  llvm::SmallVectorImpl<std::pair<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>>>::clear((a3 + 56));
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::clear(a3);
  return v20;
}

void mlir::PassInstrumentor::runBeforePipeline(std::recursive_mutex **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  std::recursive_mutex::lock(*a1);
  v9 = *a1;
  v10 = *(*a1)[1].__m_.__opaque;
  v11 = *&v9[1].__m_.__opaque[8];
  while (v10 != v11)
  {
    v12 = *v10++;
    (*(*v12 + 16))(v12, a2, a3, a4);
  }

  std::recursive_mutex::unlock(v8);
}

void mlir::PassInstrumentor::runAfterPipeline(std::recursive_mutex **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  std::recursive_mutex::lock(*a1);
  v10 = *(*a1)[1].__m_.__opaque;
  for (i = *&(*a1)[1].__m_.__opaque[8]; i != v10; i -= 8)
  {
    v11 = *(i - 8);
    (*(*v11 + 24))(v11, a2, a3, a4);
  }

  std::recursive_mutex::unlock(v8);
}

uint64_t mlir::detail::OpToOpPassAdaptor::OpToOpPassAdaptor(uint64_t a1, uint64_t *a2)
{
  v4 = mlir::PassWrapper<mlir::detail::OpToOpPassAdaptor,mlir::OperationPass<void>>::PassWrapper(a1);
  *v4 = &unk_286E847B8;
  v4[42] = v4 + 44;
  v4[43] = 0x100000000;
  v4[45] = v4 + 47;
  v4[46] = 0x800000000;
  llvm::SmallVectorImpl<mlir::OpPassManager>::emplace_back<mlir::OpPassManager>((v4 + 42), a2);
  return a1;
}

uint64_t mlir::PassWrapper<mlir::detail::OpToOpPassAdaptor,mlir::OperationPass<void>>::PassWrapper(uint64_t a1)
{
  *(a1 + 8) = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID();
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 192;
  *(a1 + 184) = 0x400000000;
  *(a1 + 224) = a1 + 240;
  *(a1 + 232) = 0x400000000;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0x1000000000;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0;
  *a1 = &unk_286E84888;
  return a1;
}

uint64_t *llvm::SmallVectorImpl<mlir::OpPassManager>::emplace_back<mlir::OpPassManager>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<mlir::OpPassManager,false>::growAndEmplaceBack<mlir::OpPassManager>(a1, a2);
  }

  else
  {
    v4 = (*a1 + 8 * v3);
    *v4 = 0;
    v5 = *a2;
    *a2 = 0;
    std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100](v4, v5);
    v6 = *(a1 + 8) + 1;
    *(a1 + 8) = v6;
    return (*a1 + 8 * v6 - 8);
  }
}

uint64_t mlir::detail::OpToOpPassAdaptor::getDependentDialects(uint64_t result, uint64_t a2)
{
  v2 = *(result + 344);
  if (v2)
  {
    v4 = *(result + 336);
    v5 = v4 + 8 * v2;
    do
    {
      v6 = *(*v4 + 40);
      v7 = *(*v4 + 48);
      while (v6 != v7)
      {
        v8 = *v6++;
        result = (*(*v8 + 24))(v8, a2);
      }

      v4 += 8;
    }

    while (v4 != v5);
  }

  return result;
}

void mlir::detail::OpToOpPassAdaptor::getAdaptorName(mlir::detail::OpToOpPassAdaptor *this@<X0>, void *a2@<X8>)
{
  v24 = 0;
  v28 = 0;
  v29 = 1;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v23 = &unk_286E79D28;
  v30 = std::string::basic_string[abi:nn200100]<0>(a2, "Pipeline Collection : [");
  llvm::raw_ostream::SetUnbuffered(&v23);
  v3 = *(this + 86);
  if (!v3)
  {
    goto LABEL_40;
  }

  v4 = *(this + 42);
  v5 = v27;
  if (v27 >= v26)
  {
    llvm::raw_ostream::write(&v23, 39);
  }

  else
  {
    v27 = (v27 + 1);
    *v5 = 39;
  }

  v6 = *v4;
  v7 = (*v4)[23];
  if (v7 < 0)
  {
    if (*(v6 + 1))
    {
      goto LABEL_7;
    }

LABEL_14:
    v8 = "any";
    v9 = 3;
    goto LABEL_15;
  }

  if (!(*v4)[23])
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v7 >= 0)
  {
    v8 = *v4;
  }

  else
  {
    v8 = *v6;
  }

  if (v7 >= 0)
  {
    v9 = (*v4)[23];
  }

  else
  {
    v9 = *(v6 + 1);
  }

LABEL_15:
  v10 = llvm::raw_ostream::operator<<(&v23, v8, v9);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 39);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 39;
  }

  if (v3 != 1)
  {
    v12 = 8 * v3;
    v13 = v4 + 1;
    for (i = v12 - 8; i; i -= 8)
    {
      if (v26 - v27 > 1)
      {
        *v27 = 8236;
        v15 = ++v27;
      }

      else
      {
        llvm::raw_ostream::write(&v23, ", ", 2uLL);
        v15 = v27;
      }

      if (v15 >= v26)
      {
        llvm::raw_ostream::write(&v23, 39);
      }

      else
      {
        v27 = v15 + 1;
        *v15 = 39;
      }

      v16 = *v13;
      v17 = (*v13)[23];
      if (v17 < 0)
      {
        if (*(v16 + 1))
        {
LABEL_28:
          if (v17 >= 0)
          {
            v18 = *v13;
          }

          else
          {
            v18 = *v16;
          }

          if (v17 >= 0)
          {
            v19 = (*v13)[23];
          }

          else
          {
            v19 = *(v16 + 1);
          }

          goto LABEL_36;
        }
      }

      else if ((*v13)[23])
      {
        goto LABEL_28;
      }

      v18 = "any";
      v19 = 3;
LABEL_36:
      v20 = llvm::raw_ostream::operator<<(&v23, v18, v19);
      v21 = *(v20 + 4);
      if (v21 >= *(v20 + 3))
      {
        llvm::raw_ostream::write(v20, 39);
      }

      else
      {
        *(v20 + 4) = v21 + 1;
        *v21 = 39;
      }

      ++v13;
    }
  }

LABEL_40:
  v22 = v27;
  if (v27 >= v26)
  {
    llvm::raw_ostream::write(&v23, 93);
  }

  else
  {
    v27 = (v27 + 1);
    *v22 = 93;
  }

  llvm::raw_ostream::~raw_ostream(&v23);
}

uint64_t mlir::AnalysisManager::nest(mlir::AnalysisManager *this, mlir::Operation *a2)
{
  v2 = a2;
  v17[4] = *MEMORY[0x277D85DE8];
  v4 = *(*this + 24);
  v5 = *(a2 + 2);
  if (v5)
  {
    v5 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v5)
    {
      v5 = *(v5 + 16);
    }
  }

  if (v4 == v5)
  {

    return mlir::AnalysisManager::nestImmediate(this, a2);
  }

  else
  {
    v15 = v17;
    v16 = 0x400000000;
    do
    {
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v15, v2);
      v6 = *(v2 + 2);
      if (v6 && (v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v2 = *(v7 + 16);
      }

      else
      {
        v2 = 0;
      }
    }

    while (v2 != v4);
    v8 = *this;
    v14 = v8;
    v9 = v15;
    if (v16)
    {
      v10 = 8 * v16;
      v11 = v15 - 8;
      do
      {
        v12 = mlir::AnalysisManager::nestImmediate(&v14, *&v11[v10]);
        v14 = v12;
        v10 -= 8;
      }

      while (v10);
      v8 = v12;
      v9 = v15;
    }

    if (v9 != v17)
    {
      free(v9);
    }

    return v8;
  }
}

void mlir::PassManager::~PassManager(mlir::PassManager *this)
{
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    mlir::detail::PassCrashReproducerGenerator::~PassCrashReproducerGenerator(v2);
    MEMORY[0x25F891040]();
  }

  std::unique_ptr<mlir::PassInstrumentor>::reset[abi:nn200100](this + 3, 0);
  std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100](this, 0);
}

uint64_t mlir::PassManager::run(mlir::PassManager *this, mlir::Operation *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = *(this + 1);
  OpName = mlir::detail::OpPassManagerImpl::getOpName(*this, v4);
  if ((v6 & 1) == 0 || *(a2 + 6) == OpName)
  {
    v28 = 0u;
    v27 = &v28;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32[0] = &v33;
    v32[1] = 0;
    mlir::DialectRegistry::insert<mlir::BuiltinDialect>(&v27);
    v11 = *(*this + 40);
    v12 = *(*this + 48);
    while (v11 != v12)
    {
      v13 = *v11++;
      (*(*v13 + 24))(v13, &v27);
    }

    mlir::MLIRContext::appendDialectRegistry(v4, &v27);
    v15 = v27;
    if (v27 != &v28)
    {
      do
      {
        v16 = *(v15 + 55);
        if (v16 >= 0)
        {
          v17 = v15 + 4;
        }

        else
        {
          v17 = v15[4];
        }

        if (v16 >= 0)
        {
          v18 = *(v15 + 55);
        }

        else
        {
          v18 = v15[5];
        }

        mlir::MLIRContext::getOrLoadDialect(v4, v17, v18, v14);
        v19 = v15[1];
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = v15[2];
            v21 = *v20 == v15;
            v15 = v20;
          }

          while (!v21);
        }

        v15 = v20;
      }

      while (v20 != &v28);
    }

    if (mlir::detail::OpPassManagerImpl::finalizePassList(*this, v4))
    {
      RegistryHash = mlir::MLIRContext::getRegistryHash(v4);
      v23 = mlir::OpPassManager::hash(this);
      if (RegistryHash == *(this + 5) && v23 == *(this + 6))
      {
        goto LABEL_31;
      }

      if (mlir::OpPassManager::initialize(this, v4, *(*this + 64) + 1))
      {
        *(this + 5) = RegistryHash;
LABEL_31:
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v37 = 0;
        v38 = 0;
        v36 = a2;
        v39 = 0;
        v40[0] = &v41;
        v40[1] = 0;
        v24 = *(this + 4);
        v41 = *(this + 3) | 4;
        if (v24)
        {
          mlir::PassManager::runWithCrashRecovery(this, a2, &v33);
        }

        v25 = mlir::detail::OpToOpPassAdaptor::runPipeline(this, a2, &v33, (*(this + 56) & 2) != 0, *(*this + 64), 0, 0);
        if (*(this + 20) == 1)
        {
          mlir::PassManager::dumpStatistics(this);
        }

        llvm::SmallVector<std::pair<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>>,0u>::~SmallVector(v40);
        MEMORY[0x25F891030](v37, 8);
        llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::destroyAll(&v33);
        MEMORY[0x25F891030](v33, 8);
        goto LABEL_45;
      }
    }

    v25 = 0;
LABEL_45:
    llvm::SmallVector<std::pair<mlir::TypeID,std::unique_ptr<mlir::DialectExtensionBase>>,0u>::~SmallVector(v32);
    MEMORY[0x25F891030](v29, 8);
    std::__tree<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>>>::destroy(&v27, v28);
    return v25;
  }

  v7 = *(a2 + 3);
  LOWORD(v30) = 257;
  emitDiag(v7, 2, &v27, &v33);
  if (v33)
  {
    mlir::Diagnostic::operator<<<12ul>(&v34, "can't run '");
  }

  v8 = *this;
  v9 = *(*this + 23);
  if (v9 < 0)
  {
    if (v8[1])
    {
LABEL_7:
      v10 = v8[1];
      if (v9 < 0)
      {
        v8 = *v8;
        v9 = v10;
      }

      goto LABEL_36;
    }
  }

  else if (*(*this + 23))
  {
    goto LABEL_7;
  }

  v8 = "any";
  v9 = 3;
LABEL_36:
  if (v33)
  {
    LOWORD(v30) = 261;
    v27 = v8;
    *&v28 = v9;
    mlir::Diagnostic::operator<<(&v34, &v27);
    if (v33)
    {
      mlir::Diagnostic::operator<<<20ul>(&v34, "' pass manager on '");
      if (v33)
      {
        mlir::Diagnostic::operator<<(&v34, *(a2 + 6));
        if (v33)
        {
          mlir::Diagnostic::operator<<<5ul>(&v34, "' op");
        }
      }
    }
  }

  v25 = (v42 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
  return v25;
}

uint64_t mlir::PassManager::addInstrumentation(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    operator new();
  }

  v3 = *a2;
  *a2 = 0;
  v6 = v3;
  mlir::PassInstrumentor::addInstrumentation(v2, &v6);
  result = v6;
  if (v6)
  {
    v5 = *(*v6 + 8);

    return v5();
  }

  return result;
}

void mlir::PassInstrumentor::addInstrumentation(std::recursive_mutex **a1, uint64_t *a2)
{
  v4 = *a1;
  std::recursive_mutex::lock(*a1);
  v5 = *a1;
  v7 = *&(*a1)[1].__m_.__opaque[8];
  v6 = *&(*a1)[1].__m_.__opaque[16];
  if (v7 >= v6)
  {
    v10 = *v5[1].__m_.__opaque;
    v11 = v7 - v10;
    v12 = (v7 - v10) >> 3;
    v13 = v12 + 1;
    if ((v12 + 1) >> 61)
    {
      std::vector<std::unique_ptr<mlir::PassInstrumentation>>::__throw_length_error[abi:nn200100]();
    }

    v14 = v6 - v10;
    if (v14 >> 2 > v13)
    {
      v13 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (!(v15 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v16 = v12;
    v17 = (8 * v12);
    v18 = *a2;
    *a2 = 0;
    v19 = &v17[-v16];
    *v17 = v18;
    v9 = v17 + 1;
    memcpy(v19, v10, v11);
    *v5[1].__m_.__opaque = v19;
    *&v5[1].__m_.__opaque[8] = v9;
    *&v5[1].__m_.__opaque[16] = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    v8 = *a2;
    *a2 = 0;
    *v7 = v8;
    v9 = v7 + 8;
  }

  *&v5[1].__m_.__opaque[8] = v9;

  std::recursive_mutex::unlock(v4);
}

uint64_t mlir::AnalysisManager::nestImmediate(mlir::AnalysisManager *this, mlir::Operation *a2)
{
  v5 = a2;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::try_emplace<>(*this, &v5, &v3);
  if (v4 == 1)
  {
    operator new();
  }

  return *(v3 + 8);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::try_emplace<>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::LookupBucketFor<mlir::Operation *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::InsertIntoBucketImpl<mlir::Operation *>(a1, a2, v10);
    v7 = result;
    *result = *a2;
    *(result + 8) = 0;
    v8 = 1;
  }

  v9 = *a1 + 16 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  return result;
}

void mlir::detail::NestedAnalysisMap::invalidate(uint64_t a1, const llvm::SmallPtrSetImplBase *a2)
{
  v32[7] = *MEMORY[0x277D85DE8];
  v4 = mlir::detail::TypeIDResolver<mlir::detail::PreservedAnalyses::AllAnalysesType,void>::resolveTypeID();
  if (!llvm::SmallPtrSetImplBase::contains_imp(a2, v4))
  {
    llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v28, v32, a2);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    if (v6)
    {
      v7 = 16 * v6;
      v8 = *(a1 + 56);
      do
      {
        if ((*(**(v5 + 1) + 16))(*(v5 + 1), &v28))
        {
          v9 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::doFind<mlir::TypeID>((a1 + 32), v5);
          if (v9)
          {
            *v9 = -8192;
            *(a1 + 40) = vadd_s32(*(a1 + 40), 0x1FFFFFFFFLL);
          }
        }

        else
        {
          if (v5 != v8)
          {
            *v8 = *v5;
            v10 = *(v5 + 1);
            *(v5 + 1) = 0;
            v11 = *(v8 + 1);
            *(v8 + 1) = v10;
            if (v11)
            {
              (*(*v11 + 8))(v11);
            }

            v12 = *(a1 + 56);
            v27 = 0;
            v13 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::LookupBucketFor<mlir::TypeID>((a1 + 32), v8, &v27);
            v14 = v27;
            if ((v13 & 1) == 0)
            {
              v14 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::InsertIntoBucketImpl<mlir::TypeID>(a1 + 32, v8, v27);
              *v14 = *v8;
              *(v14 + 2) = 0;
            }

            *(v14 + 2) = &v8[-v12] >> 4;
          }

          v8 += 16;
        }

        v5 += 16;
        v7 -= 16;
      }

      while (v7);
      v5 = *(a1 + 56);
      v15 = *(a1 + 64);
    }

    else
    {
      v15 = 0;
      v8 = *(a1 + 56);
    }

    v16 = &v5[16 * v15];
    if (v16 != v8)
    {
      do
      {
        v17 = *(v16 - 1);
        *(v16 - 1) = 0;
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }

        v16 -= 16;
      }

      while (v16 != v8);
      v5 = *(a1 + 56);
    }

    *(a1 + 64) = (v8 - v5) >> 4;
    if ((v31 & 0x100000000) == 0)
    {
      free(v28);
    }

    if (*(a2 + 3) == *(a2 + 4))
    {

      llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::clear(a1);
    }

    else
    {
      v28 = &v31;
      v30 = 8;
      v31 = a1;
      v18 = 1;
      do
      {
        v19 = *(v28 + --v18);
        v29 = v18;
        if (*(v19 + 8))
        {
          v20 = *v19;
          v21 = *(v19 + 16);
          if (v21)
          {
            v22 = 16 * v21;
            v23 = v20;
            while ((*v23 | 0x1000) == 0xFFFFFFFFFFFFF000)
            {
              v23 += 2;
              v22 -= 16;
              if (!v22)
              {
                goto LABEL_45;
              }
            }
          }

          else
          {
            v23 = v20;
          }

          v24 = &v20[2 * v21];
          if (v23 != v24)
          {
LABEL_37:
            mlir::detail::NestedAnalysisMap::invalidate(v23[1], a2);
            v25 = v23[1];
            if (*(v25 + 8))
            {
              v26 = v29;
              if (v29 >= v30)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, &v31, v29 + 1, 8);
                v26 = v29;
              }

              *(v28 + v26) = v25;
              ++v29;
            }

            while (1)
            {
              v23 += 2;
              if (v23 == v24)
              {
                break;
              }

              if ((*v23 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                if (v23 != v24)
                {
                  goto LABEL_37;
                }

                break;
              }
            }

            v18 = v29;
          }
        }

LABEL_45:
        ;
      }

      while (v18);
      if (v28 != &v31)
      {
        free(v28);
      }
    }
  }
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::clear(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 2);
  if (!result[1])
  {
    return result;
  }

  v3 = *(result + 4);
  if (v3 <= 4 * v2 || v3 < 0x41)
  {
    if (!v3)
    {
LABEL_23:
      v1[1] = 0;
      return result;
    }

    v10 = 16 * v3;
    v11 = (*result + 8);
    while (1)
    {
      v12 = *(v11 - 1);
      if (v12 == -8192)
      {
        goto LABEL_21;
      }

      if (v12 != -4096)
      {
        break;
      }

LABEL_22:
      v11 += 2;
      v10 -= 16;
      if (!v10)
      {
        goto LABEL_23;
      }
    }

    result = std::unique_ptr<mlir::detail::NestedAnalysisMap>::reset[abi:nn200100](v11, 0);
LABEL_21:
    *(v11 - 1) = -4096;
    goto LABEL_22;
  }

  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::destroyAll(result);
  if (!v2)
  {
    if (*(v1 + 4))
    {
      result = MEMORY[0x25F891030](*v1, 8);
      *v1 = 0;
      v1[1] = 0;
      *(v1 + 4) = 0;
      return result;
    }

    goto LABEL_23;
  }

  v4 = 1 << (33 - __clz(v2 - 1));
  if (v4 <= 64)
  {
    v5 = 64;
  }

  else
  {
    v5 = v4;
  }

  if (v5 == *(v1 + 4))
  {
    v6 = 0;
    v1[1] = 0;
    v7 = vdupq_n_s64((v5 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL);
    v8 = (*v1 + 16);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
      if (v9.i8[0])
      {
        *(v8 - 2) = -4096;
      }

      if (v9.i8[4])
      {
        *v8 = -4096;
      }

      v6 += 2;
      v8 += 4;
    }

    while (((v5 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL) - ((v5 - 1) & 1) + 2 != v6);
  }

  else
  {
    MEMORY[0x25F891030](*v1, 8);
    v13 = (4 * v5 / 3 + 1) | ((4 * v5 / 3 + 1) >> 1);
    v14 = v13 | (v13 >> 2) | ((v13 | (v13 >> 2)) >> 4);
    LODWORD(v14) = (((v14 | (v14 >> 8)) >> 16) | v14 | (v14 >> 8)) + 1;
    *(v1 + 4) = v14;
    result = llvm::allocate_buffer((16 * v14), 8uLL);
    *v1 = result;
    v1[1] = 0;
    v15 = *(v1 + 4);
    if (v15)
    {
      v16 = 0;
      v17 = v15 + 0xFFFFFFFFFFFFFFFLL;
      v18 = v17 & 0xFFFFFFFFFFFFFFFLL;
      v19 = (v17 & 0xFFFFFFFFFFFFFFFLL) - (v17 & 1) + 2;
      v20 = vdupq_n_s64(v18);
      v21 = result + 2;
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(vdupq_n_s64(v16), xmmword_25D0A0500)));
        if (v22.i8[0])
        {
          *(v21 - 2) = -4096;
        }

        if (v22.i8[4])
        {
          *v21 = -4096;
        }

        v16 += 2;
        v21 += 4;
      }

      while (v19 != v16);
    }
  }

  return result;
}

void mlir::PassInstrumentor::~PassInstrumentor(std::recursive_mutex **this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    v2 = (v1 + 72);
    std::vector<std::unique_ptr<mlir::PassInstrumentation>>::__destroy_vector::operator()[abi:nn200100](&v2);
    std::recursive_mutex::~recursive_mutex(v1);
    MEMORY[0x25F891040]();
  }
}

void mlir::PassInstrumentor::runBeforeAnalysis(std::recursive_mutex **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  std::recursive_mutex::lock(*a1);
  v11 = *a1;
  v12 = *(*a1)[1].__m_.__opaque;
  v13 = *&v11[1].__m_.__opaque[8];
  while (v12 != v13)
  {
    v14 = *v12++;
    (*(*v14 + 56))(v14, a2, a3, a4, a5);
  }

  std::recursive_mutex::unlock(v10);
}

void mlir::PassInstrumentor::runAfterAnalysis(std::recursive_mutex **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  std::recursive_mutex::lock(*a1);
  v12 = *(*a1)[1].__m_.__opaque;
  for (i = *&(*a1)[1].__m_.__opaque[8]; i != v12; i -= 8)
  {
    v13 = *(i - 8);
    (*(*v13 + 64))(v13, a2, a3, a4, a5);
  }

  std::recursive_mutex::unlock(v10);
}

void mlir::detail::OpToOpPassAdaptor::~OpToOpPassAdaptor(char **this)
{
  *this = &unk_286E847B8;
  llvm::SmallVector<llvm::SmallVector<mlir::OpPassManager,1u>,8u>::~SmallVector(this + 45);
  llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(this + 42);

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_286E847B8;
  llvm::SmallVector<llvm::SmallVector<mlir::OpPassManager,1u>,8u>::~SmallVector(this + 45);
  llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(this + 42);
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::PassWrapper<mlir::detail::OpToOpPassAdaptor,mlir::OperationPass<void>>::getName()
{
  {
    llvm::getTypeName<mlir::detail::OpToOpPassAdaptor>(void)::Name = llvm::detail::getTypeNameImpl<mlir::detail::OpToOpPassAdaptor>();
    *algn_27FC19498 = v1;
  }

  return llvm::getTypeName<mlir::detail::OpToOpPassAdaptor>(void)::Name;
}

llvm::raw_ostream *llvm::support::detail::provider_format_adapter<llvm::StringLiteral const&>::format(uint64_t a1, llvm::raw_ostream *a2, uint64_t a3, unint64_t *a4)
{
  v5 = *(a1 + 8);
  if (a4)
  {
    v11 = 0;
    v12 = a3;
    v13 = a4;
    v6 = llvm::consumeUnsignedInteger(&v12, 0xA, &v11, a4);
    if (v13)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    if (v7)
    {
      v8 = -1;
    }

    else
    {
      v8 = v11;
    }
  }

  else
  {
    v8 = -1;
  }

  if (*(v5 + 8) >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v5 + 8);
  }

  return llvm::raw_ostream::operator<<(a2, *v5, v9);
}

uint64_t mlir::detail::OpPassManagerImpl::OpPassManagerImpl(uint64_t a1, _BYTE *a2, const void *a3, int a4)
{
  v8[0] = a2;
  v8[1] = a3;
  if (a3 == 3 && (*a2 == 28257 ? (v6 = a2[2] == 121) : (v6 = 0), v6))
  {
    std::string::basic_string[abi:nn200100]<0>(a1, "");
  }

  else
  {
    llvm::StringRef::str(v8, a1);
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = a4;
  return a1;
}

__guard mlir::detail::TypeIDResolver<mlir::detail::PreservedAnalyses::AllAnalysesType,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::detail::PreservedAnalyses::AllAnalysesType>();
      mlir::detail::TypeIDResolver<mlir::detail::PreservedAnalyses::AllAnalysesType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[149];
}

uint64_t llvm::getTypeName<mlir::detail::PreservedAnalyses::AllAnalysesType>()
{
  {
    llvm::getTypeName<mlir::detail::PreservedAnalyses::AllAnalysesType>(void)::Name = llvm::detail::getTypeNameImpl<mlir::detail::PreservedAnalyses::AllAnalysesType>();
    unk_27FC194C0 = v1;
  }

  return llvm::getTypeName<mlir::detail::PreservedAnalyses::AllAnalysesType>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::detail::PreservedAnalyses::AllAnalysesType>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::detail::PreservedAnalyses::AllAnalysesType]";
  v6 = 110;
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

uint64_t mlir::detail::OpToOpPassAdaptor::tryMergeInto(mlir::MLIRContext *,mlir::detail::OpToOpPassAdaptor&)::$_2::__invoke(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 23);
  if ((v3 & 0x8000000000000000) == 0)
  {
    if (*(*a1 + 23))
    {
      goto LABEL_3;
    }

    return 1;
  }

  if (!v2[1])
  {
    return 1;
  }

LABEL_3:
  v4 = v2[1];
  if (v3 < 0)
  {
    v2 = *v2;
    v3 = v4;
  }

  v10[0] = v2;
  v10[1] = v3;
  v11 = 1;
  v5 = *a2;
  v6 = *(*a2 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    if (*(v5 + 8))
    {
      goto LABEL_7;
    }

    return 0xFFFFFFFFLL;
  }

  if (!*(*a2 + 23))
  {
    return 0xFFFFFFFFLL;
  }

LABEL_7:
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *a2;
  }

  else
  {
    v7 = *v5;
  }

  if ((v6 & 0x80000000) == 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = *(v5 + 8);
  }

  return llvm::StringRef::compare(v10, v7, v8);
}

char ***llvm::SmallVector<std::pair<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>>,0u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = v2 - 1;
    v5 = 2 * v3;
    do
    {
      v6 = v4[v5];
      v4[v5] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v5 -= 2;
    }

    while (v5 * 8);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::destroyAll(uint64_t *result)
{
  v1 = *(result + 4);
  if (v1)
  {
    v2 = 16 * v1;
    v3 = (*result + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        result = std::unique_ptr<mlir::detail::NestedAnalysisMap>::reset[abi:nn200100](v3, 0);
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }

  return result;
}

char **llvm::SmallVector<llvm::SmallVector<mlir::OpPassManager,1u>,8u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = &v2[24 * v3 - 24];
    do
    {
      v5 = llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(v5) - 3;
      v4 += 24;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

char **llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = -8 * v3;
    v5 = &v2[8 * v3 - 8];
    do
    {
      std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100](v5--, 0);
      v4 += 8;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<mlir::Pass>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<mlir::Pass>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = (v2 + 40);
    std::vector<std::unique_ptr<mlir::Pass>>::__destroy_vector::operator()[abi:nn200100](&v3);
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    return MEMORY[0x25F891040](v2, 0x1032C402C5CA452);
  }

  return result;
}

void std::vector<std::unique_ptr<mlir::Pass>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<mlir::Pass>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

std::string *mlir::detail::OpPassManagerImpl::OpPassManagerImpl(std::string *this, const mlir::detail::OpPassManagerImpl *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 24);
  this[1].__r_.__value_.__r.__words[2] = 0;
  *&this[1].__r_.__value_.__l.__data_ = v5;
  this[2].__r_.__value_.__r.__words[0] = 0;
  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
  v6 = *(a2 + 5);
  v7 = *(a2 + 6);
  while (v6 != v7)
  {
    v8 = *v6 + 144;
    (*(**v6 + 80))(&v11);
    mlir::detail::PassOptions::copyOptionValuesFrom(v11 + 144, v8);
    *(v11 + 328) = *v6;
    std::vector<std::unique_ptr<mlir::Pass>>::push_back[abi:nn200100](&this[1].__r_.__value_.__r.__words[2], &v11);
    v9 = v11;
    v11 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v6 += 8;
  }

  return this;
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(mlir::OpPassManager &,mlir::Operation *)>::callback_fn<mlir::detail::OpToOpPassAdaptor::run(mlir::Pass *,mlir::Operation *,mlir::AnalysisManager,BOOL,unsigned int)::$_0>(uint64_t a1, mlir::detail::OpPassManagerImpl **a2, mlir::Operation *this)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = **a1;
  if (v6 != this)
  {
    v7 = this;
    while (1)
    {
      v8 = *(v7 + 2);
      if (!v8)
      {
        break;
      }

      v9 = *(v8 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (!v9)
      {
        break;
      }

      v7 = *(v9 + 16);
      if (v7 == v6 || v7 == 0)
      {
        if (v7)
        {
          goto LABEL_11;
        }

        break;
      }
    }

    v20 = 257;
    mlir::Operation::emitOpError(&v21, this, &v19);
    if (v21)
    {
      mlir::Diagnostic::operator<<<123ul>(v22, "Trying to schedule a dynamic pipeline on an operation that isn't nested under the current operation the pass is processing");
    }

    v13 = (v22[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
    return v13;
  }

LABEL_11:
  if ((mlir::detail::OpPassManagerImpl::finalizePassList(*a2, *(***(this + 3) + 32)) & 1) == 0 || !mlir::OpPassManager::initialize(a2, *(***(this + 3) + 32), **(a1 + 8)))
  {
    return 0;
  }

  v11 = *(a1 + 16);
  if (**a1 == this)
  {
    v12 = *v11;
  }

  else
  {
    v12 = mlir::AnalysisManager::nest(v11, this);
  }

  v15 = **(a1 + 24);
  v16 = **(a1 + 8);
  v17 = **(a1 + 32);
  v18 = *(a1 + 40);

  return mlir::detail::OpToOpPassAdaptor::runPipeline(a2, this, v12, v15, v16, v17, v18);
}

uint64_t mlir::Diagnostic::operator<<<123ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

void mlir::MLIRContext::executeActionInternal<mlir::PassExecutionAction,mlir::Pass &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[1] = &mlir::PassExecutionAction::resolveTypeID(void)::id;
  v6[2] = a4;
  v6[3] = a5;
  v6[4] = a6;
  v6[0] = &unk_286E84780;
  std::function<void ()(llvm::function_ref<void ()(void)>,mlir::tracing::Action const&)>::operator()(a1, a2, a3, v6);
}

void llvm::function_ref<void ()(void)>::callback_fn<mlir::detail::OpToOpPassAdaptor::run(mlir::Pass *,mlir::Operation *,mlir::AnalysisManager,BOOL,unsigned int)::$_1>(uint64_t **a1)
{
  v1 = a1;
  v169[4] = *MEMORY[0x277D85DE8];
  v2 = **a1;
  v3 = *(v2 + 8);
  v4 = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID();
  if (v2)
  {
    v5 = v3 == v4;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    (*(***v1 + 56))(**v1);
    goto LABEL_174;
  }

  v140 = v1;
  v149 = *(***((*(v2 + 40) & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
  v151 = v2;
  v6 = *v149;
  v7 = v2;
  if (*(*v149 + 41) != 1)
  {
    v150 = *v1[1];
    v13 = *(v2 + 48);
    v169[0] = v13;
    {
      v15 = *llvm::get_threadid(void)::Self();
    }

    else
    {
      llvm::get_threadid(void)::$_0::operator()();
      v136 = llvm::get_threadid(void)::Self();
      *v136 = v137;
    }

    v16 = v2;
    p_p = v15;
    v153 = v2;
    v17 = *(v13 + 72);
    v18 = v17 & 0xFFFFFFFFFFFFFFF8;
    if ((v17 & 4) == 0 && v18)
    {
      do
      {
        v19 = *(v18 + 72);
        v18 = v19 & 0xFFFFFFFFFFFFFFF8;
      }

      while ((v19 & 4) == 0 && v18);
    }

    v20 = *(v2 + 40) & 0xFFFFFFFFFFFFFFF8;
    v21 = *(v20 + 44);
    v22 = v21 & 0x7FFFFF;
    if ((v21 & 0x7FFFFF) != 0)
    {
      v23 = ((v20 + 16 * ((v21 >> 23) & 1) + ((v21 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v20 + 40);
      v144 = v23 + 24 * v22;
      do
      {
        v24 = *(v23 + 8);
        for (i = v23; v24 != i; v23 = i)
        {
          v25 = v24 - 8;
          if (!v24)
          {
            v25 = 0;
          }

          v26 = v25 + 32;
          v27 = *(v25 + 40);
          if (v27 != v25 + 32)
          {
            do
            {
              v28 = *(v16 + 336);
              v29 = *(v16 + 344);
              if (v29)
              {
                v30 = *(v27 + 48);
                v31 = *(***(v27 + 24) + 32);
                v32 = 8 * v29;
                v33 = *(v16 + 336);
                while ((mlir::detail::OpPassManagerImpl::canScheduleOn(*v33, v31, v30) & 1) == 0)
                {
                  ++v33;
                  v32 -= 8;
                  if (!v32)
                  {
                    goto LABEL_38;
                  }
                }
              }

              else
              {
                v33 = *(v16 + 336);
              }

              if (v33 != (v28 + 8 * v29) && v33 != 0)
              {
                v35 = *(*v33 + 16);
                v36 = mlir::AnalysisManager::nest(v169, v27);
                if ((mlir::detail::OpToOpPassAdaptor::runPipeline(v33, v27, v36, v150, v35, v18, &p_p) & 1) == 0)
                {
                  *(v151 + 40) |= 4uLL;
                }
              }

LABEL_38:
              v27 = *(v27 + 8);
              v16 = v151;
            }

            while (v27 != v26);
          }

          v24 = *(v24 + 8);
        }

        v23 += 24;
      }

      while (v23 != v144);
    }

    v1 = v140;
    goto LABEL_174;
  }

  v165 = *v1[1];
  v8 = *(v2 + 48);
  v164 = v8;
  if (!*(v2 + 368))
  {
    goto LABEL_42;
  }

  v9 = *(v2 + 360);
  v10 = *(v9 + 2);
  if (v10 != *(v2 + 344))
  {
    goto LABEL_42;
  }

  if (v10)
  {
    v11 = *v9;
    v12 = *(v2 + 336);
    while (*(*v11 + 48) - *(*v11 + 40) == *(*v12 + 48) - *(*v12 + 40))
    {
      v12 += 8;
      v11 += 8;
      if (!--v10)
      {
        goto LABEL_72;
      }
    }

LABEL_42:
    v37 = (*(**(v6 + 48) + 40))(*(v6 + 48));
    v38 = v37;
    v39 = v37;
    if (*(v7 + 372) >= v37)
    {
      v48 = *(v7 + 368);
      if (v48 >= v37)
      {
        v49 = v37;
      }

      else
      {
        v49 = *(v7 + 368);
      }

      if (v49)
      {
        v50 = *(v7 + 360);
        do
        {
          v50 = llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(v50, v7 + 336) + 24;
          --v49;
        }

        while (v49);
        v48 = *(v7 + 368);
      }

      v51 = v48 - v39;
      if (v48 >= v39)
      {
        if (v48 > v39)
        {
          v54 = 3 * v48;
          v55 = 24 * v39 - 8 * v54;
          v56 = (*(v151 + 360) + 8 * v54 - 24);
          do
          {
            v56 = llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(v56) - 3;
            v55 += 24;
          }

          while (v55);
        }
      }

      else
      {
        v52 = (*(v151 + 360) + 24 * v48);
        do
        {
          *v52 = v52 + 2;
          v52[1] = 0x100000000;
          if (*(v151 + 344))
          {
            v52 = llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(v52, v151 + 336);
          }

          v52 += 3;
        }

        while (!__CFADD__(v51++, 1));
      }

      v7 = v151;
      *(v151 + 368) = v38;
    }

    else
    {
      p_p = 0;
      v40 = (v7 + 376);
      v41 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(v7 + 360, (v7 + 376), v37, 24, &p_p);
      v42 = v41;
      do
      {
        *v41 = v41 + 2;
        v41[1] = 0x100000000;
        if (*(v7 + 344))
        {
          v41 = llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(v41, v7 + 336);
        }

        v41 += 3;
        --v39;
      }

      while (v39);
      v43 = *(v7 + 360);
      v44 = *(v7 + 368);
      if (v44)
      {
        v45 = -24 * v44;
        v46 = &v43[24 * v44 - 24];
        do
        {
          v46 = llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(v46) - 3;
          v45 += 24;
        }

        while (v45);
        v43 = *(v7 + 360);
      }

      v47 = p_p;
      if (v43 != v40)
      {
        free(v43);
      }

      *(v151 + 360) = v42;
      *(v151 + 372) = v47;
      v7 = v151;
      *(v151 + 368) = v38;
    }
  }

LABEL_72:
  v57 = *(v7 + 40) & 0xFFFFFFFFFFFFFFF8;
  v58 = *(v57 + 44);
  if ((v58 & 0x7FFFFF) != 0)
  {
    v59 = 0;
    v145 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = (((v57 + 16 * ((v58 >> 23) & 1) + ((v58 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v57 + 40));
    v141 = &v64[3 * (v58 & 0x7FFFFF)];
    while (1)
    {
      v142 = v64;
      v147 = v60;
      if (*v64 != v64)
      {
        for (j = v64[1]; j != v64; j = j[1])
        {
          v66 = (j - 1);
          if (!j)
          {
            v66 = 0;
          }

          if (v66[4] != (v66 + 4))
          {
            break;
          }
        }

        if (j != v64)
        {
          v67 = j - 1;
          if (!j)
          {
            v67 = 0;
          }

          v68 = v67[5];
          p_p = v64;
          v153 = j;
          v154 = v68;
          if (v68)
          {
            break;
          }
        }
      }

LABEL_142:
      v64 = v142 + 3;
      v60 = v147;
      if (v142 + 3 == v141)
      {
        v8 = v164;
        goto LABEL_145;
      }
    }

    while (1)
    {
      v69 = *(v68 + 6);
      v163[0] = 0;
      v70 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::optional<unsigned int>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::optional<unsigned int>>>,mlir::OperationName,std::optional<unsigned int>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::optional<unsigned int>>>::LookupBucketFor<mlir::OperationName>(v61, v59, v69, v163);
      v71 = v163[0];
      if ((v70 & 1) == 0)
      {
        break;
      }

LABEL_102:
      if (*(v71 + 12) == 1)
      {
        v87 = mlir::AnalysisManager::nest(&v164, v68);
        v88 = v63;
        v89 = v61;
        v90 = v88 - v62;
        v91 = 0xAAAAAAAAAAAAAAABLL * ((v88 - v62) >> 3);
        v92 = v91 + 1;
        if (v91 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo,std::allocator<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo>>::__throw_length_error[abi:nn200100]();
        }

        v93 = v62;
        if (0x5555555555555556 * (-v62 >> 3) > v92)
        {
          v92 = 0x5555555555555556 * (-v62 >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v62 >> 3) >= 0x555555555555555)
        {
          v94 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v94 = v92;
        }

        if (v94)
        {
          if (v94 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v95 = 24 * v91;
        *v95 = v71[2];
        *(v95 + 8) = v68;
        *(v95 + 16) = v87;
        memcpy((24 * v91 + 24 * (v90 / -24)), v93, v90);
        if (v93)
        {
          operator delete(v93);
        }

        v62 = 24 * v91 + 24 * (v90 / -24);
        v61 = v89;
        v63 = 24 * v91 + 24;
        v7 = v151;
      }

      mlir::Region::OpIterator::operator++(&p_p);
      v68 = v154;
      if (!v154)
      {
        goto LABEL_142;
      }
    }

    __p = v163[0];
    v72 = v147;
    v73 = v145;
    if (4 * v147 + 4 >= (3 * v59))
    {
      v74 = 2 * v59;
    }

    else
    {
      v74 = v59;
      if (v59 - v145 + ~v147 > v59 >> 3)
      {
        v75 = v59;
        v76 = v61;
LABEL_89:
        v77 = *v71 != -4096;
        *v71 = v69;
        *(v71 + 8) = 0;
        *(v71 + 12) = 0;
        v78 = *(v7 + 336);
        v79 = *(v7 + 344);
        v145 = v73 - v77;
        v147 = v72 + 1;
        if (v79)
        {
          v80 = v76;
          v143 = v63;
          v81 = v75;
          v82 = v62;
          v83 = *(v68 + 6);
          v84 = 8 * v79;
          v85 = v78;
          while ((mlir::detail::OpPassManagerImpl::canScheduleOn(*v85, v149, v83) & 1) == 0)
          {
            ++v85;
            v84 -= 8;
            if (!v84)
            {
              v61 = v80;
              v59 = v81;
              v62 = v82;
              v7 = v151;
              v63 = v143;
              goto LABEL_102;
            }
          }

          v62 = v82;
          v75 = v81;
          v63 = v143;
          v76 = v80;
          v7 = v151;
        }

        else
        {
          v85 = *(v7 + 336);
        }

        if (v85 != &v78[v79] && v85)
        {
          v86 = *(v7 + 336);
          if ((v71[3] & 1) == 0)
          {
            *(v71 + 12) = 1;
          }

          v71[2] = (v85 - v86) >> 3;
        }

        v61 = v76;
        v59 = v75;
        goto LABEL_102;
      }
    }

    v96 = (v74 - 1) | ((v74 - 1) >> 1);
    v97 = v96 | (v96 >> 2) | ((v96 | (v96 >> 2)) >> 4);
    v98 = ((v97 | (v97 >> 8)) >> 16) | v97 | (v97 >> 8);
    if ((v98 + 1) > 0x40)
    {
      v75 = (v98 + 1);
    }

    else
    {
      v75 = 64;
    }

    buffer = llvm::allocate_buffer((16 * v75), 8uLL);
    v148 = buffer;
    if (v61)
    {
      v100 = 0;
      v101 = (v75 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL;
      v102 = v101 - ((v75 + 0xFFFFFFFFFFFFFFFLL) & 1) + 2;
      v103 = vdupq_n_s64(v101);
      v104 = buffer + 2;
      do
      {
        v105 = vmovn_s64(vcgeq_u64(v103, vorrq_s8(vdupq_n_s64(v100), xmmword_25D0A0500)));
        if (v105.i8[0])
        {
          *(v104 - 2) = -4096;
        }

        if (v105.i8[4])
        {
          *v104 = -4096;
        }

        v100 += 2;
        v104 += 4;
      }

      while (v102 != v100);
      v106 = 0;
      if (v59)
      {
        v107 = 16 * v59;
        v108 = v61;
        do
        {
          v109 = *v108;
          if ((*v108 | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            v169[0] = 0;
            v110 = v106;
            llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::optional<unsigned int>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::optional<unsigned int>>>,mlir::OperationName,std::optional<unsigned int>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::optional<unsigned int>>>::LookupBucketFor<mlir::OperationName>(v148, v75, v109, v169);
            v111 = v169[0];
            *v169[0] = *v108;
            *(v111 + 8) = v108[1];
            v106 = v110 + 1;
          }

          v108 += 2;
          v107 -= 16;
        }

        while (v107);
      }

      v72 = v106;
      MEMORY[0x25F891030](v61, 8);
    }

    else
    {
      v112 = 0;
      v113 = (v75 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL;
      v114 = v113 - ((v75 + 0xFFFFFFFFFFFFFFFLL) & 1) + 2;
      v115 = vdupq_n_s64(v113);
      v116 = buffer + 2;
      do
      {
        v117 = vmovn_s64(vcgeq_u64(v115, vorrq_s8(vdupq_n_s64(v112), xmmword_25D0A0500)));
        if (v117.i8[0])
        {
          *(v116 - 2) = -4096;
        }

        if (v117.i8[4])
        {
          *v116 = -4096;
        }

        v112 += 2;
        v116 += 4;
      }

      while (v114 != v112);
      v72 = 0;
    }

    llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::optional<unsigned int>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::optional<unsigned int>>>,mlir::OperationName,std::optional<unsigned int>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::optional<unsigned int>>>::LookupBucketFor<mlir::OperationName>(v148, v75, v69, &__p);
    v76 = v148;
    v73 = 0;
    v71 = __p;
    goto LABEL_89;
  }

  v61 = 0;
  v63 = 0;
  v62 = 0;
LABEL_145:
  {
    v119 = *llvm::get_threadid(void)::Self();
  }

  else
  {
    llvm::get_threadid(void)::$_0::operator()();
    v138 = llvm::get_threadid(void)::Self();
    *v138 = v139;
  }

  v163[0] = v119;
  v163[1] = v151;
  v120 = *(v8 + 72);
  v121 = v120 & 0xFFFFFFFFFFFFFFF8;
  if ((v120 & 4) == 0 && v121)
  {
    do
    {
      v122 = *(v121 + 72);
      v121 = v122 & 0xFFFFFFFFFFFFFFF8;
    }

    while ((v122 & 4) == 0 && v121);
  }

  v161 = 0;
  v162 = v121;
  v123 = *(v151 + 368);
  __p = 0;
  v160 = 0;
  if (v123)
  {
    operator new();
  }

  v158 = 0;
  p_p = &__p;
  v153 = v151;
  v154 = &v165;
  v155 = &v162;
  v156 = v163;
  v157 = &v158;
  p_p_p = &p_p;
  v168 = v62;
  v124 = v63;
  v125 = -1431655765 * ((v63 - v62) >> 3);
  v167 = v125;
  if (v125)
  {
    if (v125 != 1 && (*(*v149 + 41) & 1) != 0)
    {
      operator new();
    }

    if (v62 != v124)
    {
      v126 = v62;
      do
      {
        v127 = p_p_p;
        v128 = p_p_p[1];
        v129 = **p_p_p;
        v130 = (*p_p_p)[1];
        if (v129 == v130)
        {
          v132 = **p_p_p;
        }

        else
        {
          while (1)
          {
            v131 = 0;
            atomic_compare_exchange_strong(v129, &v131, 1u);
            if (!v131)
            {
              break;
            }

            if (++v129 == v130)
            {
              LODWORD(v129) = v130;
              break;
            }
          }

          LODWORD(v132) = v129;
          v129 = **v127;
        }

        v133 = (v132 - v129);
        v134 = (*(v128[45] + 3 * v133) + 8 * *v126);
        if ((mlir::detail::OpToOpPassAdaptor::runPipeline(v134, *(v126 + 1), *(v126 + 2), *v127[2], *(*v134 + 16), *v127[3], v127[4]) & 1) == 0)
        {
          atomic_store(1u, v127[5]);
        }

        atomic_store(0, **v127 + v133);
        v126 = v168 + 6;
        v168 = v126;
      }

      while (v126 != v124);
    }
  }

  v135 = atomic_load(&v158);
  if (v135)
  {
    *(v151 + 40) |= 4uLL;
  }

  v1 = v140;
  if (__p)
  {
    v160 = __p;
    operator delete(__p);
  }

  MEMORY[0x25F891030](v61, 8);
  if (v62)
  {
    operator delete(v62);
  }

LABEL_174:
  *v1[2] = (*(**v1 + 40) & 4) != 0;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::clear(uint64_t *result)
{
  if (result[1])
  {
    v1 = *(result + 4);
    if (v1 <= 4 * *(result + 2) || v1 < 0x41)
    {
      if (v1)
      {
        v2 = 0;
        v3 = v1 + 0xFFFFFFFFFFFFFFFLL;
        v4 = v3 & 0xFFFFFFFFFFFFFFFLL;
        v5 = (v3 & 0xFFFFFFFFFFFFFFFLL) - (v3 & 1) + 2;
        v6 = vdupq_n_s64(v4);
        v7 = (*result + 16);
        do
        {
          v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(vdupq_n_s64(v2), xmmword_25D0A0500)));
          if (v8.i8[0])
          {
            *(v7 - 2) = -4096;
          }

          if (v8.i8[4])
          {
            *v7 = -4096;
          }

          v2 += 2;
          v7 += 4;
        }

        while (v5 != v2);
      }

      result[1] = 0;
    }

    else
    {
      return llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::shrink_and_clear(result);
    }
  }

  return result;
}

unsigned int *llvm::SmallVectorImpl<std::pair<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>>>::clear(unsigned int *result)
{
  v1 = result;
  v2 = result[2];
  if (v2)
  {
    v3 = *result - 8;
    v4 = 16 * v2;
    do
    {
      result = *(v3 + v4);
      *(v3 + v4) = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      v4 -= 16;
    }

    while (v4);
  }

  v1[2] = 0;
  return result;
}

uint64_t *llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::shrink_and_clear(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  v3 = *(result + 2);
  v4 = 1 << (33 - __clz(v3 - 1));
  if (v4 <= 64)
  {
    v4 = 64;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == v2)
  {
    result[1] = 0;
    if (v2)
    {
      v6 = 0;
      v7 = v2 + 0xFFFFFFFFFFFFFFFLL;
      v8 = v7 & 0xFFFFFFFFFFFFFFFLL;
      v9 = (v7 & 0xFFFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
      v10 = vdupq_n_s64(v8);
      v11 = (*result + 16);
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
        if (v12.i8[0])
        {
          *(v11 - 2) = -4096;
        }

        if (v12.i8[4])
        {
          *v11 = -4096;
        }

        v6 += 2;
        v11 += 4;
      }

      while (v9 != v6);
    }
  }

  else
  {
    result = MEMORY[0x25F891030](*result, 8);
    if (v5)
    {
      v13 = (4 * v5 / 3u + 1) | ((4 * v5 / 3u + 1) >> 1);
      v14 = v13 | (v13 >> 2) | ((v13 | (v13 >> 2)) >> 4);
      LODWORD(v14) = (((v14 | (v14 >> 8)) >> 16) | v14 | (v14 >> 8)) + 1;
      *(v1 + 4) = v14;
      result = llvm::allocate_buffer((16 * v14), 8uLL);
      *v1 = result;
      v1[1] = 0;
      v15 = *(v1 + 4);
      if (v15)
      {
        v16 = 0;
        v17 = v15 + 0xFFFFFFFFFFFFFFFLL;
        v18 = v17 & 0xFFFFFFFFFFFFFFFLL;
        v19 = (v17 & 0xFFFFFFFFFFFFFFFLL) - (v17 & 1) + 2;
        v20 = vdupq_n_s64(v18);
        v21 = result + 2;
        do
        {
          v22 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(vdupq_n_s64(v16), xmmword_25D0A0500)));
          if (v22.i8[0])
          {
            *(v21 - 2) = -4096;
          }

          if (v22.i8[4])
          {
            *v21 = -4096;
          }

          v16 += 2;
          v21 += 4;
        }

        while (v19 != v16);
      }
    }

    else
    {
      *v1 = 0;
      v1[1] = 0;
      *(v1 + 4) = 0;
    }
  }

  return result;
}

uint64_t *llvm::SmallVectorTemplateBase<mlir::OpPassManager,false>::growAndEmplaceBack<mlir::OpPassManager>(uint64_t a1, uint64_t *a2)
{
  v11 = 0;
  v4 = a1 + 16;
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v11);
  v6 = &v5[*(a1 + 8)];
  *v6 = 0;
  v7 = *a2;
  *a2 = 0;
  std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100](v6, v7);
  llvm::SmallVectorTemplateBase<mlir::OpPassManager,false>::moveElementsForGrow(a1, v5);
  v8 = v11;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v5;
  v9 = *(a1 + 8) + 1;
  *(a1 + 8) = v9;
  *(a1 + 12) = v8;
  return &v5[v9 - 1];
}

uint64_t *llvm::SmallVectorTemplateBase<mlir::OpPassManager,false>::moveElementsForGrow(uint64_t *result, uint64_t *a2)
{
  v2 = *(result + 2);
  if (v2)
  {
    v3 = a2;
    v4 = result;
    v5 = *result;
    v6 = 8 * v2;
    v7 = a2;
    do
    {
      *v7++ = 0;
      v8 = *v5;
      *v5++ = 0;
      result = std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100](v3, v8);
      v3 = v7;
      v6 -= 8;
    }

    while (v6);
    v9 = *(v4 + 2);
    if (v9)
    {
      v10 = -8 * v9;
      v11 = (*v4 + 8 * v9 - 8);
      do
      {
        result = std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100](v11--, 0);
        v10 += 8;
      }

      while (v10);
    }
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        mlir::OpPassManager::operator=(*a1, *a2);
      }

      v11 = *a1;
      for (i = (*a1 + 8 * v5); i != v11; std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100](i, 0))
      {
        --i;
      }
    }

    else
    {
      if (*(a1 + 12) >= v4)
      {
        if (v5)
        {
          mlir::OpPassManager::operator=(*a1, *a2);
        }
      }

      else
      {
        if (v5)
        {
          v6 = -8 * v5;
          v7 = (*a1 + 8 * v5 - 8);
          do
          {
            std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100](v7--, 0);
            v6 += 8;
          }

          while (v6);
        }

        *(a1 + 8) = 0;
        llvm::SmallVectorTemplateBase<mlir::OpPassManager,false>::grow(a1, v4);
      }

      if (*(a2 + 8))
      {
        v8 = *a1;
        v9 = *a2;
        **a1 = 0;
        mlir::OpPassManager::operator=(v8, v9);
      }
    }

    *(a1 + 8) = v4;
  }

  return a1;
}

void llvm::SmallVectorTemplateBase<mlir::OpPassManager,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v6);
  llvm::SmallVectorTemplateBase<mlir::OpPassManager,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::optional<unsigned int>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::optional<unsigned int>>>,mlir::OperationName,std::optional<unsigned int>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::optional<unsigned int>>>::LookupBucketFor<mlir::OperationName>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

__n128 std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,void mlir::parallelForEach<std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0>(mlir::MLIRContext *,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0 &&)::{lambda(std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>&&)#1}>(mlir::MLIRContext *,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0 &)::{lambda(void)#1},std::allocator<llvm>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E848F8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,void mlir::parallelForEach<std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0>(mlir::MLIRContext *,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0 &&)::{lambda(std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>&&)#1}>(mlir::MLIRContext *,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0 &)::{lambda(void)#1},std::allocator<llvm>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = atomic_load(*(a1 + 8));
  if ((v1 & 1) == 0)
  {
    do
    {
      add = atomic_fetch_add(*(a1 + 16), 1u);
      if (add >= **(a1 + 24))
      {
        break;
      }

      mlir::detail::ParallelDiagnosticHandlerImpl::setOrderIDForThread(**(a1 + 32), add);
      v4 = **(a1 + 48);
      v5 = **(a1 + 40);
      v6 = v5[1];
      v7 = **v5;
      v8 = (*v5)[1];
      if (v7 == v8)
      {
        v10 = **v5;
      }

      else
      {
        while (1)
        {
          v9 = 0;
          atomic_compare_exchange_strong(v7, &v9, 1u);
          if (!v9)
          {
            break;
          }

          if (++v7 == v8)
          {
            LODWORD(v7) = v8;
            break;
          }
        }

        LODWORD(v10) = v7;
        v7 = **v5;
      }

      v11 = 24 * add;
      v12 = (v10 - v7);
      v13 = (*&v6[45][24 * v12] + 8 * *(v4 + v11));
      if ((mlir::detail::OpToOpPassAdaptor::runPipeline(v13, *(v4 + v11 + 8), *(v4 + v11 + 16), *v5[2], *(*v13 + 16), *v5[3], v5[4]) & 1) == 0)
      {
        atomic_store(1u, v5[5]);
      }

      atomic_store(0, &(**v5)[v12]);
      mlir::detail::ParallelDiagnosticHandlerImpl::eraseOrderIDForThread(**(a1 + 32));
      v14 = atomic_load(*(a1 + 8));
    }

    while ((v14 & 1) == 0);
  }
}

std::recursive_mutex **std::unique_ptr<mlir::PassInstrumentor>::reset[abi:nn200100](std::recursive_mutex ***a1, std::recursive_mutex **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    mlir::PassInstrumentor::~PassInstrumentor(result);

    JUMPOUT(0x25F891040);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::LookupBucketFor<mlir::Operation *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
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
        v7 = (v4 + 16 * (v13 & v5));
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
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::InsertIntoBucketImpl<mlir::Operation *>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::LookupBucketFor<mlir::Operation *>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 2;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = (v4 + 8);
      v19 = 16 * v3;
      do
      {
        if ((*(v18 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::LookupBucketFor<mlir::Operation *>(a1, v18 - 1, &v30);
          *v30 = *(v18 - 1);
          v20 = v30;
          v21 = *v18;
          *v18 = 0;
          v20[1] = v21;
          ++*(a1 + 8);
          std::unique_ptr<mlir::detail::NestedAnalysisMap>::reset[abi:nn200100](v18, 0);
        }

        v18 += 2;
        v19 -= 16;
      }

      while (v19);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 2;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t *std::unique_ptr<mlir::detail::NestedAnalysisMap>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    llvm::SmallVector<std::pair<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>>,0u>::~SmallVector((v2 + 56));
    MEMORY[0x25F891030](*(v2 + 32), 8);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>,mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::destroyAll(v2);
    MEMORY[0x25F891030](*v2, 8);

    JUMPOUT(0x25F891040);
  }

  return result;
}

void std::vector<std::unique_ptr<mlir::PassInstrumentation>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<mlir::PassInstrumentation>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<mlir::PassInstrumentation>>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t mlir::detail::RecoveryReproducerContext::RecoveryReproducerContext(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v9;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  *(a1 + 24) = mlir::Operation::clone(a3, 3);
  *(a1 + 32) = a4;
  *(a1 + 40) = *(**(***(a3 + 24) + 32) + 41) ^ 1;
  *(a1 + 41) = a5;
  mlir::detail::RecoveryReproducerContext::enable(a1);
  return a1;
}

void mlir::detail::RecoveryReproducerContext::enable(mlir::detail::RecoveryReproducerContext *this)
{
  if (!atomic_load_explicit(qword_27FC1EE10, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27FC1EE10, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
  }

  v2 = qword_27FC1EE10[0];
  std::recursive_mutex::lock(qword_27FC1EE10[0]);
  if (!atomic_load_explicit(&qword_27FC1EE28, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27FC1EE28, llvm::object_creator<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call, llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call);
  }

  if (!*(qword_27FC1EE28 + 32))
  {
    llvm::CrashRecoveryContext::Enable(v3);
  }

  if ((atomic_load_explicit(&_MergedGlobals_25, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_25))
  {
    llvm::sys::AddSignalHandler(mlir::detail::RecoveryReproducerContext::crashHandler, 0, v12);
    __cxa_guard_release(&_MergedGlobals_25);
  }

  if (!atomic_load_explicit(&qword_27FC1EE28, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27FC1EE28, llvm::object_creator<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call, llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call);
  }

  v4 = qword_27FC1EE28;
  v13 = this;
  if (*(qword_27FC1EE28 + 8))
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>,mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v14, qword_27FC1EE28, &v13);
    if (v14[16] == 1)
    {
      llvm::SmallVectorTemplateBase<mlir::detail::RecoveryReproducerContext *,true>::push_back(v4 + 24, this);
    }
  }

  else
  {
    v5 = (qword_27FC1EE28 + 24);
    v6 = *(qword_27FC1EE28 + 32);
    if (v6)
    {
      v7 = 8 * v6;
      v8 = *(qword_27FC1EE28 + 24);
      while (*v8 != this)
      {
        ++v8;
        v7 -= 8;
        if (!v7)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v8 = *(qword_27FC1EE28 + 24);
    }

    if (v8 == (*(qword_27FC1EE28 + 24) + 8 * v6))
    {
LABEL_20:
      llvm::SmallVectorTemplateBase<mlir::detail::RecoveryReproducerContext *,true>::push_back(qword_27FC1EE28 + 24, this);
      v9 = *(v4 + 32);
      if (v9 >= 2)
      {
        v10 = *v5;
        v11 = 8 * v9;
        do
        {
          llvm::DenseMapBase<llvm::DenseMap<mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>,mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v14, v4, v10++);
          v11 -= 8;
        }

        while (v11);
      }
    }
  }

  std::recursive_mutex::unlock(v2);
}

void mlir::detail::RecoveryReproducerContext::~RecoveryReproducerContext(mlir::detail::RecoveryReproducerContext *this)
{
  v2 = *(this + 3);
  if (*(v2 + 2))
  {
    *(v2 + 2) = 0;
    v4 = *v2;
    v3 = *(v2 + 1);
    *v3 = *v2;
    *(v4 + 8) = v3;
    *v2 = 0;
    *(v2 + 1) = 0;
  }

  mlir::Operation::destroy(v2);
  mlir::detail::RecoveryReproducerContext::disable(this);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void mlir::detail::RecoveryReproducerContext::disable(mlir::detail::RecoveryReproducerContext *this)
{
  if (!atomic_load_explicit(qword_27FC1EE10, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27FC1EE10, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
  }

  v2 = qword_27FC1EE10[0];
  std::recursive_mutex::lock(qword_27FC1EE10[0]);
  if (!atomic_load_explicit(&qword_27FC1EE28, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27FC1EE28, llvm::object_creator<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call, llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call);
  }

  v4 = qword_27FC1EE28;
  v5 = *(qword_27FC1EE28 + 8);
  if (v5)
  {
    v6 = *(qword_27FC1EE28 + 16);
    if (!v6)
    {
      goto LABEL_25;
    }

    v7 = *qword_27FC1EE28;
    v8 = v6 - 1;
    v9 = (v6 - 1) & ((this >> 4) ^ (this >> 9));
    v10 = *(*qword_27FC1EE28 + 8 * v9);
    if (v10 == this)
    {
LABEL_8:
      *(v7 + 8 * v9) = -8192;
      v11 = v5 - 1;
      v14 = *(v4 + 32);
      v13 = (v4 + 32);
      v12 = v14;
      v15 = *(v13 - 5) + 1;
      *(v13 - 6) = v11;
      *(v13 - 5) = v15;
      v3 = *(v13 - 1);
      v16 = &v3[v14];
      if (v14)
      {
        v17 = 8 * v12;
        while (*v3 != this)
        {
          ++v3;
          v17 -= 8;
          if (!v17)
          {
            v3 = v16;
            break;
          }
        }
      }

      v18 = v3 + 1;
      v19 = v16 - (v3 + 1);
      if (v16 == v3 + 1)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v22 = 1;
    while (v10 != -4096)
    {
      v23 = v9 + v22++;
      v9 = v23 & v8;
      v10 = *(v7 + 8 * v9);
      if (v10 == this)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v13 = (qword_27FC1EE28 + 32);
    v12 = *(qword_27FC1EE28 + 32);
    if (*(qword_27FC1EE28 + 32))
    {
      v20 = 8 * v12;
      v3 = *(qword_27FC1EE28 + 24);
      while (*v3 != this)
      {
        ++v3;
        v20 -= 8;
        if (!v20)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v3 = *(qword_27FC1EE28 + 24);
    }

    v21 = *(qword_27FC1EE28 + 24) + 8 * v12;
    if (v3 != v21)
    {
      v18 = v3 + 1;
      v19 = v21 - (v3 + 1);
      if (v21 == v3 + 1)
      {
LABEL_24:
        *v13 = v12 - 1;
        goto LABEL_25;
      }

LABEL_23:
      v3 = memmove(v3, v18, v19);
      LODWORD(v12) = *v13;
      goto LABEL_24;
    }
  }

LABEL_25:
  if (!atomic_load_explicit(&qword_27FC1EE28, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27FC1EE28, llvm::object_creator<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call, llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call);
  }

  if (!*(qword_27FC1EE28 + 32))
  {
    llvm::CrashRecoveryContext::Disable(v3);
  }

  std::recursive_mutex::unlock(v2);
}

void appendReproducer(uint64_t a1, mlir::Operation *a2, uint64_t a3, mlir::detail::AsmStateImpl *a4, char a5, char a6)
{
  v47 = a5;
  v46 = a6;
  v39 = 0;
  v43 = 0;
  v44 = 1;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v38 = &unk_286E79D28;
  v45 = a1;
  llvm::raw_ostream::SetUnbuffered(&v38);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v9 = *(a3 + 24);
  if (v9)
  {
    (*(*v9 + 48))(&v34);
    v10 = v34;
    v11 = v41 - v42;
    if (v34)
    {
      if (v11 > 0x18)
      {
        v42 += 25;
        v12 = &v38;
      }

      else
      {
        v10 = v34;
      }

      v14 = (*(*v10 + 16))(v10);
      v16 = llvm::raw_ostream::operator<<(v12, v14, v15);
      v17 = *(v16 + 4);
      if (*(v16 + 3) == v17)
      {
      }

      else
      {
        *v17 = 96;
        ++*(v16 + 4);
      }

      v18 = *(*(a2 + 6) + 8);
      v20 = *(v18 + 16);
      v19 = *(v18 + 24);
      v30 = 773;
      v29[0] = v20;
      v29[1] = v19;
      v29[2] = "(";
      v31[0] = v29;
      v31[2] = a4;
      v32 = 1026;
      *&v26 = v31;
      v27 = ")";
      v28 = 770;
      llvm::Twine::str(&v26, &__p);
      mlir::OpPrintingFlags::OpPrintingFlags(&v26);
      mlir::AsmState::AsmState(v31, a2, &v26, 0, 0);
    }

    if (v11 > 0x1F)
    {
      qmemcpy(v42, "failed to create output stream: ", 32);
      v42 += 32;
      v13 = &v38;
    }

    else
    {
      v13 = llvm::raw_ostream::write(&v38, "failed to create output stream: ", 0x20uLL);
    }

    if (v37 >= 0)
    {
      v21 = &v35;
    }

    else
    {
      v21 = v35;
    }

    if (v37 >= 0)
    {
      v22 = HIBYTE(v37);
    }

    else
    {
      v22 = v36;
    }

    llvm::raw_ostream::write(v13, v21, v22);
    v23 = v34;
    v34 = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v35);
    }

    llvm::raw_ostream::~raw_ostream(&v38);
  }

  else
  {
    v24 = std::__throw_bad_function_call[abi:nn200100]();
    mlir::detail::RecoveryReproducerContext::crashHandler(v24, v25);
  }
}

void mlir::detail::RecoveryReproducerContext::crashHandler(mlir::detail::RecoveryReproducerContext *this, void *a2)
{
  v12[25] = *MEMORY[0x277D85DE8];
  if (!atomic_load_explicit(&qword_27FC1EE28, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&qword_27FC1EE28, llvm::object_creator<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call, llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call);
  }

  v2 = *(qword_27FC1EE28 + 32);
  if (v2)
  {
    v3 = *(qword_27FC1EE28 + 24);
    v4 = 8 * v2;
    do
    {
      v5 = *v3;
      __p[0] = 0;
      __p[1] = 0;
      v8 = 0;
      appendReproducer(__p, *(v5 + 24), *(v5 + 32), v5, *(v5 + 40), *(v5 + 41));
      v6 = *(*(v5 + 24) + 24);
      v10 = 257;
      emitDiag(v6, 2, v9, &v11);
      if (v11)
      {
        mlir::Diagnostic::operator<<<54ul>(v12, "A signal was caught while processing the MLIR module:");
        if (v11)
        {
          v10 = 260;
          v9[0] = __p;
          mlir::Diagnostic::operator<<(v12, v9);
          if (v11)
          {
            mlir::Diagnostic::operator<<<25ul>(v12, "; marking pass as failed");
          }
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
      if (SHIBYTE(v8) < 0)
      {
        operator delete(__p[0]);
      }

      ++v3;
      v4 -= 8;
    }

    while (v4);
  }
}

void mlir::detail::PassCrashReproducerGenerator::~PassCrashReproducerGenerator(mlir::detail::PassCrashReproducerGenerator *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    v2 = *(v1 + 128);
    if (v2 != (v1 + 144))
    {
      free(v2);
    }

    MEMORY[0x25F891030](*(v1 + 104), 8);
    llvm::SmallVector<std::unique_ptr<mlir::detail::RecoveryReproducerContext>,6u>::~SmallVector((v1 + 40));
    v3 = std::__function::__value_func<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)>::~__value_func[abi:nn200100](v1);
    MEMORY[0x25F891040](v3, 0x10A0C40A8F89FB5);
  }
}

void mlir::detail::PassCrashReproducerGenerator::finalize(uint64_t *a1, uint64_t a2, char a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 48);
  if (v4)
  {
    if ((a3 & 1) == 0)
    {
      v8 = *(a2 + 24);
      v18 = 257;
      emitDiag(v8, 2, v16, &v14);
      if (v14)
      {
        mlir::Diagnostic::operator<<<67ul>(v15, "Failures have been detected while processing an MLIR pass pipeline");
      }

      mlir::InFlightDiagnostic::InFlightDiagnostic(v16, &v14);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
      v9 = *a1;
      if (*(*a1 + 32))
      {
        v10 = *(*(v9 + 40) + 8 * *(v9 + 48) - 8);
        __p = 0;
        v12 = 0;
        v13 = 0;
        appendReproducer(&__p, *(v10 + 24), *(v10 + 32), v10, *(v10 + 40), *(v10 + 41));
        mlir::Diagnostic::attachNote(v17, 0, 0);
      }

      __p = 0;
      v12 = 0;
      v13 = 0;
      appendReproducer(&__p, *(**(v9 + 40) + 24), *(**(v9 + 40) + 32), **(v9 + 40), *(**(v9 + 40) + 40), *(**(v9 + 40) + 41));
      mlir::Diagnostic::attachNote(v17, 0, 0);
    }

    v5 = -8 * v4;
    v6 = (*(v3 + 40) + 8 * v4 - 8);
    do
    {
      v6 = std::unique_ptr<mlir::detail::RecoveryReproducerContext>::~unique_ptr[abi:nn200100](v6) - 1;
      v5 += 8;
    }

    while (v5);
    *(v3 + 48) = 0;
  }
}

mlir::SymbolOpInterface *formatPassOpReproducerMessage(uint64_t a1, uint64_t a2, mlir::SymbolOpInterface *a3)
{
  v7 = (*(*a2 + 16))(a2);
  v24 = 261;
  v22 = v7;
  v23 = v8;
  v9 = mlir::Diagnostic::operator<<(v6, &v22);
  v11 = mlir::Diagnostic::operator<<<2ul>(v10, "'");
  v12 = mlir::Diagnostic::operator<<(v11, *(a3 + 6));
  mlir::Diagnostic::operator<<<12ul>(v12, "' operation");
  result = llvm::DefaultDoCastIfPossible<mlir::SymbolOpInterface,mlir::Operation *,llvm::CastInfo<mlir::SymbolOpInterface,mlir::Operation *,void>>::doCastIfPossible(a3, v13);
  if (result)
  {
    v16 = result;
    v17 = v15;
    v18 = mlir::Diagnostic::operator<<<4ul>(a1, ": @");
    v19 = (*v17)(v17, v16);
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);
    v24 = 261;
    v22 = v20;
    v23 = v21;
    return mlir::Diagnostic::operator<<(v18, &v22);
  }

  return result;
}

mlir::detail::RecoveryReproducerContext **std::unique_ptr<mlir::detail::RecoveryReproducerContext>::~unique_ptr[abi:nn200100](mlir::detail::RecoveryReproducerContext **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    mlir::detail::RecoveryReproducerContext::~RecoveryReproducerContext(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

void mlir::PassManager::runWithCrashRecovery(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v15 = a2;
  v16 = a3;
  v4 = a1[4];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v7 = (*(a1 + 56) >> 1) & 1;
  llvm::CrashRecoveryContext::Enable(a1);
  v8 = *v4;
  *(v8 + 144) = v7;
  if ((*(v8 + 32) & 1) == 0)
  {
    v26 = 0uLL;
    v27 = 0;
    LODWORD(v19) = 0;
    v23 = 0;
    v24 = 1;
    v21 = 0;
    v22 = 0;
    v20 = 0;
    v18 = &unk_286E79D28;
    v25 = &v26;
    llvm::raw_ostream::SetUnbuffered(&v18);
    if (v5 != v6)
    {
      v10 = *v5;
      v9 = v5 + 1;
      mlir::Pass::printAsTextualPipeline(v10, &v18);
      while (v9 != v6)
      {
        if ((v21 - v22) > 1)
        {
          *v22++ = 8236;
        }

        else
        {
          llvm::raw_ostream::write(&v18, ", ", 2uLL);
        }

        v11 = *v9++;
        mlir::Pass::printAsTextualPipeline(v11, &v18);
      }
    }

    operator new();
  }

  v17 = 0;
  HIDWORD(v20) = 0;
  LOBYTE(v21) = 0;
  v18 = 0;
  v19 = 0;
  LOBYTE(v20) = 0;
  __p[0] = &v17;
  __p[1] = a1;
  v13 = &v15;
  v14 = &v16;
  llvm::CrashRecoveryContext::RunSafelyOnThread(&v18, llvm::function_ref<void ()(void)>::callback_fn<mlir::PassManager::runWithCrashRecovery(mlir::Operation *,mlir::AnalysisManager)::$_0>, __p, 0);
}

void makeReproducerStreamFactory(const void *a1, const void *a2)
{
  v5[0] = a1;
  v5[1] = a2;
  llvm::StringRef::str(v5, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v3, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v3 = __p;
  }

  operator new();
}

void mlir::PassManager::enableCrashReproducerGeneration(uint64_t a1, uint64_t a2, _BOOL4 a3)
{
  if (a3 && *(**(a1 + 8) + 41) == 1)
  {
    llvm::report_fatal_error("Local crash reproduction can't be setup on a pass-manager without disabling multi-threading first.", 1, a3);
  }

  operator new();
}

uint64_t mlir::AsmResourcePrinter::fromCallable<appendReproducer(std::string &,mlir::Operation *,std::function<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)> const&,std::string const&,BOOL,BOOL)::$_0>(llvm::StringRef,appendReproducer(std::string &,mlir::Operation *,std::function<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)> const&,std::string const&,BOOL,BOOL)::$_0 &&)::Printer::~Printer(uint64_t a1)
{
  *a1 = &unk_286E77200;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void mlir::AsmResourcePrinter::fromCallable<appendReproducer(std::string &,mlir::Operation *,std::function<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)> const&,std::string const&,BOOL,BOOL)::$_0>(llvm::StringRef,appendReproducer(std::string &,mlir::Operation *,std::function<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)> const&,std::string const&,BOOL,BOOL)::$_0 &&)::Printer::~Printer(uint64_t a1)
{
  *a1 = &unk_286E77200;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x25F891040);
}

uint64_t mlir::AsmResourcePrinter::fromCallable<appendReproducer(std::string &,mlir::Operation *,std::function<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)> const&,std::string const&,BOOL,BOOL)::$_0>(llvm::StringRef,appendReproducer(std::string &,mlir::Operation *,std::function<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)> const&,std::string const&,BOOL,BOOL)::$_0 &&)::Printer::buildResources(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = v5[1];
  }

  (*(*a3 + 24))(a3, "pipeline", 8, v7, v8);
  (*(*a3 + 16))(a3, "disable_threading", 17, **(a1 + 40));
  v9 = **(a1 + 48);
  v10 = *(*a3 + 16);

  return v10(a3, "verify_each", 11, v9);
}

uint64_t std::__function::__func<makeReproducerStreamFactory(llvm::StringRef)::$_0,std::allocator<makeReproducerStreamFactory(llvm::StringRef)::$_0>,std::unique_ptr<mlir::ReproducerStream> ()(std::string &)>::~__func(uint64_t a1)
{
  *a1 = &unk_286E849D8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<makeReproducerStreamFactory(llvm::StringRef)::$_0,std::allocator<makeReproducerStreamFactory(llvm::StringRef)::$_0>,std::unique_ptr<mlir::ReproducerStream> ()(std::string &)>::~__func(uint64_t a1)
{
  *a1 = &unk_286E849D8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x25F891040);
}

void std::__function::__func<makeReproducerStreamFactory(llvm::StringRef)::$_0,std::allocator<makeReproducerStreamFactory(llvm::StringRef)::$_0>,std::unique_ptr<mlir::ReproducerStream> ()(std::string &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_286E849D8;
  v2 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v3 = *(a1 + 8);
    v2->__r_.__value_.__r.__words[2] = *(a1 + 24);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

void std::__function::__func<makeReproducerStreamFactory(llvm::StringRef)::$_0,std::allocator<makeReproducerStreamFactory(llvm::StringRef)::$_0>,std::unique_ptr<mlir::ReproducerStream> ()(std::string &)>::destroy(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void std::__function::__func<makeReproducerStreamFactory(llvm::StringRef)::$_0,std::allocator<makeReproducerStreamFactory(llvm::StringRef)::$_0>,std::unique_ptr<mlir::ReproducerStream> ()(std::string &)>::destroy_deallocate(void **__p)
{
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

void std::__function::__func<makeReproducerStreamFactory(llvm::StringRef)::$_0,std::allocator<makeReproducerStreamFactory(llvm::StringRef)::$_0>,std::unique_ptr<mlir::ReproducerStream> ()(std::string &)>::operator()(uint64_t a1)
{
  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  v6 = *(v3 + 23);
  if (v6 >= 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (v6 >= 0)
  {
    v8 = *(v3 + 23);
  }

  else
  {
    v8 = *(v3 + 8);
  }

  mlir::openOutputFile(v7, v8);
}

void anonymous namespace::FileReproducerStream::~FileReproducerStream(_anonymous_namespace_::FileReproducerStream *this, uint64_t a2, BOOL a3)
{
  *this = &unk_286E84A20;
  *(*(this + 1) + 24) = 1;
  std::unique_ptr<llvm::ToolOutputFile>::~unique_ptr[abi:nn200100](this + 1, a2, a3);
}

{
  *this = &unk_286E84A20;
  *(*(this + 1) + 24) = 1;
  std::unique_ptr<llvm::ToolOutputFile>::~unique_ptr[abi:nn200100](this + 1, a2, a3);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FileReproducerStream::description(_anonymous_namespace_::FileReproducerStream *this)
{
  v1 = *(this + 1);
  if (v1[23] >= 0)
  {
    return *(this + 1);
  }

  else
  {
    return *v1;
  }
}

void llvm::SmallVectorTemplateBase<mlir::detail::RecoveryReproducerContext *,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>,mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>::try_emplace<llvm::detail::DenseSetEmpty&>(uint64_t a1, void *a2, uint64_t *a3)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>,mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>::LookupBucketFor<mlir::detail::RecoveryReproducerContext *>(*a2, *(a2 + 4), *a3, &v12);
  v7 = v12;
  v8 = *(a2 + 4);
  if (result)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v13 = v12;
  v10 = *(a2 + 2);
  if (4 * v10 + 4 >= 3 * v8)
  {
    v8 *= 2;
    goto LABEL_10;
  }

  if (v8 + ~v10 - *(a2 + 3) <= v8 >> 3)
  {
LABEL_10:
    llvm::DenseMap<mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>::grow(a2, v8);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>,mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>::LookupBucketFor<mlir::detail::RecoveryReproducerContext *>(*a2, *(a2 + 4), *a3, &v13);
    v10 = *(a2 + 2);
    v7 = v13;
  }

  *(a2 + 2) = v10 + 1;
  if (*v7 != -4096)
  {
    --*(a2 + 3);
  }

  *v7 = *a3;
  v8 = *(a2 + 4);
  v9 = 1;
LABEL_8:
  v11 = *a2 + 8 * v8;
  *a1 = v7;
  *(a1 + 8) = v11;
  *(a1 + 16) = v9;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>,mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>::LookupBucketFor<mlir::detail::RecoveryReproducerContext *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 8 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 8 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

uint64_t *llvm::DenseMap<mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((8 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
      v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 1;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 1) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 2;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 8 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>,mlir::detail::RecoveryReproducerContext *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>,llvm::detail::DenseSetPair<mlir::detail::RecoveryReproducerContext *>>::LookupBucketFor<mlir::detail::RecoveryReproducerContext *>(*a1, *(a1 + 16), v20, &v29);
          *v29 = *v19;
          ++*(a1 + 8);
        }

        ++v19;
        v18 -= 8;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = v21 + 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 & 0x1FFFFFFFFFFFFFFFLL;
    v25 = (v23 & 0x1FFFFFFFFFFFFFFFLL) - (v23 & 1) + 2;
    v26 = vdupq_n_s64(v24);
    v27 = result + 1;
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v22), xmmword_25D0A0500)));
      if (v28.i8[0])
      {
        *(v27 - 1) = -4096;
      }

      if (v28.i8[4])
      {
        *v27 = -4096;
      }

      v22 += 2;
      v27 += 2;
    }

    while (v25 != v22);
  }

  return result;
}

void *llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[3];
    if (v2 != v1 + 5)
    {
      free(v2);
    }

    MEMORY[0x25F891030](*v1, 8);

    JUMPOUT(0x25F891040);
  }

  return result;
}

uint64_t std::__function::__value_func<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

char ***llvm::SmallVector<std::unique_ptr<mlir::detail::RecoveryReproducerContext>,6u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = -8 * v3;
    v5 = &v2[v3 - 1];
    do
    {
      v5 = std::unique_ptr<mlir::detail::RecoveryReproducerContext>::~unique_ptr[abi:nn200100](v5) - 1;
      v4 += 8;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>,std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>::clear(uint64_t **a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *(a1 + 4);
    if (v3 > 4 * v2 && v3 >= 0x41)
    {
      v4 = 1 << (33 - __clz(v2 - 1));
      if (v4 <= 64)
      {
        v5 = 64;
      }

      else
      {
        v5 = v4;
      }

      goto LABEL_10;
    }

LABEL_12:
    if (v3)
    {
      v8 = *a1;
      v9 = &(*a1)[2 * v3];
      do
      {
        *v8 = -4096;
        v8[1] = -4096;
        v8 += 2;
      }

      while (v8 != v9);
    }

    a1[1] = 0;
    return;
  }

  if (!*(a1 + 3))
  {
    return;
  }

  v3 = *(a1 + 4);
  if (v3 <= 0x40)
  {
    goto LABEL_12;
  }

  v5 = 0;
LABEL_10:
  if (v5 == v3)
  {
    a1[1] = 0;
    buffer = *a1;
    v7 = 16 * v3;
LABEL_20:

    memset_pattern16(buffer, &unk_25D0A07E0, v7);
    return;
  }

  MEMORY[0x25F891030](*a1, 8);
  if (!v5)
  {
    *a1 = 0;
    a1[1] = 0;
    *(a1 + 4) = 0;
    return;
  }

  v10 = (4 * v5 / 3u + 1) | ((4 * v5 / 3u + 1) >> 1);
  v11 = v10 | (v10 >> 2) | ((v10 | (v10 >> 2)) >> 4);
  LODWORD(v11) = (((v11 | (v11 >> 8)) >> 16) | v11 | (v11 >> 8)) + 1;
  *(a1 + 4) = v11;
  buffer = llvm::allocate_buffer((16 * v11), 8uLL);
  *a1 = buffer;
  a1[1] = 0;
  v12 = *(a1 + 4);
  if (v12)
  {
    v7 = 16 * v12;
    goto LABEL_20;
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>,std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>::LookupBucketFor<std::pair<mlir::Pass *,mlir::Operation *>>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v5 = 0xBF58476D1CE4E5B9 * ((a4 >> 4) ^ (a4 >> 9) | (((a3 >> 4) ^ (a3 >> 9)) << 32));
    v6 = a2 - 1;
    v7 = (a2 - 1) & ((v5 >> 31) ^ v5);
    v8 = (a1 + 16 * v7);
    v9 = *v8;
    v10 = v8[1];
    if (*v8 == a3 && v10 == a4)
    {
      v12 = 1;
    }

    else
    {
      v14 = 0;
      v15 = 1;
      while (v9 != -4096 || v10 != -4096)
      {
        if (v14)
        {
          v16 = 0;
        }

        else
        {
          v16 = v10 == -8192;
        }

        if (v16 && v9 == -8192)
        {
          v14 = v8;
        }

        v18 = v7 + v15++;
        v7 = v18 & v6;
        v8 = (a1 + 16 * (v18 & v6));
        v9 = *v8;
        v10 = v8[1];
        v12 = 1;
        if (*v8 == a3 && v10 == a4)
        {
          goto LABEL_9;
        }
      }

      v12 = 0;
      if (v14)
      {
        v8 = v14;
      }
    }
  }

  else
  {
    v8 = 0;
    v12 = 0;
  }

LABEL_9:
  *a5 = v8;
  return v12;
}

void llvm::DenseMap<std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>::grow(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      memset_pattern16(buffer, &unk_25D0A07E0, 16 * v10);
    }

    if (v3)
    {
      v11 = 16 * v3;
      v12 = (v4 + 8);
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        if ((v13 != -4096 || v14 != -4096) && (v13 != -8192 || v14 != -8192))
        {
          v17 = 0;
          llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>,std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>::LookupBucketFor<std::pair<mlir::Pass *,mlir::Operation *>>(*a1, *(a1 + 16), v13, v14, &v17);
          v15 = v17;
          *v17 = *(v12 - 1);
          v15[1] = *v12;
          ++*(a1 + 8);
        }

        v12 += 2;
        v11 -= 16;
      }

      while (v11);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v16 = *(a1 + 16);
  if (v16)
  {

    memset_pattern16(buffer, &unk_25D0A07E0, 16 * v16);
  }
}

unint64_t llvm::SmallVectorTemplateCommon<std::unique_ptr<mlir::detail::RecoveryReproducerContext>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::detail::RecoveryReproducerContext>,false>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    if (*a1 <= a2 && *a1 + 8 * v3 > a2)
    {
      v6 = a2 - *a1;
      llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::detail::RecoveryReproducerContext>,false>::grow(a1, v3 + 1);
      return *a1 + v6;
    }

    else
    {
      llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::detail::RecoveryReproducerContext>,false>::grow(a1, v3 + 1);
    }
  }

  return v2;
}

void llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::detail::RecoveryReproducerContext>,false>::grow(uint64_t a1, unint64_t a2)
{
  v14 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v14);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = 8 * v6;
    v8 = v4;
    v9 = *a1;
    do
    {
      v10 = *v9;
      *v9++ = 0;
      *v8++ = v10;
      v7 -= 8;
    }

    while (v7);
    v11 = -8 * v6;
    v12 = &v5[v6 - 1];
    do
    {
      v12 = std::unique_ptr<mlir::detail::RecoveryReproducerContext>::~unique_ptr[abi:nn200100](v12) - 1;
      v11 += 8;
    }

    while (v11);
    v5 = *a1;
  }

  v13 = v14;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v13;
}

uint64_t llvm::function_ref<void ()(void)>::callback_fn<mlir::PassManager::runWithCrashRecovery(mlir::Operation *,mlir::AnalysisManager)::$_0>(uint64_t a1)
{
  result = mlir::detail::OpToOpPassAdaptor::runPipeline(*(a1 + 8), **(a1 + 16), **(a1 + 24), (*(*(a1 + 8) + 56) & 2) != 0, *(**(a1 + 8) + 64), 0, 0);
  **a1 = result;
  return result;
}

mlir::detail::PassCrashReproducerGenerator *std::unique_ptr<mlir::detail::PassCrashReproducerGenerator>::reset[abi:nn200100](mlir::detail::PassCrashReproducerGenerator **a1, mlir::detail::PassCrashReproducerGenerator *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    mlir::detail::PassCrashReproducerGenerator::~PassCrashReproducerGenerator(result);

    JUMPOUT(0x25F891040);
  }

  return result;
}

void anonymous namespace::CrashReproducerInstrumentation::runBeforePass(_anonymous_namespace_::CrashReproducerInstrumentation *this, mlir::Pass *a2, mlir::Operation *a3)
{
  v36[6] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 1);
  if (v6 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID())
  {
    return;
  }

  v7 = *(this + 1);
  v8 = *v7;
  v10 = (*v7 + 104);
  v9 = *v10;
  v24 = 0;
  if ((llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>,std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>::LookupBucketFor<std::pair<mlir::Pass *,mlir::Operation *>>(v9, *(v8 + 120), a2, a3, &v24) & 1) == 0)
  {
    v11 = v24;
    v12 = *(v8 + 120);
    v34 = v24;
    v13 = *(v8 + 112);
    if (4 * v13 + 4 >= 3 * v12)
    {
      v12 *= 2;
    }

    else if (v12 + ~v13 - *(v8 + 116) > v12 >> 3)
    {
      goto LABEL_5;
    }

    llvm::DenseMap<std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>::grow(v10, v12);
    llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>,std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>::LookupBucketFor<std::pair<mlir::Pass *,mlir::Operation *>>(*(v8 + 104), *(v8 + 120), a2, a3, &v34);
    v13 = *(v8 + 112);
    v11 = v34;
LABEL_5:
    *(v8 + 112) = v13 + 1;
    if (*v11 != -4096 || v11[1] != -4096)
    {
      --*(v8 + 116);
    }

    *v11 = a2;
    v11[1] = a3;
    v14 = *(v8 + 136);
    if (v14 >= *(v8 + 140))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v8 + 128, (v8 + 144), v14 + 1, 16);
      LODWORD(v14) = *(v8 + 136);
    }

    v15 = (*(v8 + 128) + 16 * v14);
    *v15 = a2;
    v15[1] = a3;
    ++*(v8 + 136);
  }

  v16 = *v7;
  if (*(*v7 + 32) == 1)
  {
    v17 = *(v16 + 48);
    if (v17)
    {
      mlir::detail::RecoveryReproducerContext::disable(*(*(v16 + 40) + 8 * v17 - 8));
    }

    v34 = v36;
    v35 = 0x600000000;
    for (i = *(a3 + 2); i; a3 = v20)
    {
      v19 = *(i + 24) & 0xFFFFFFFFFFFFFFF8;
      if (!v19)
      {
        break;
      }

      v20 = *(v19 + 16);
      if (!v20)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<mlir::OperationName,true>::push_back(&v34, *(a3 + 6));
      i = *(v20 + 2);
    }

    __p[0] = 0;
    __p[1] = 0;
    v33 = 0;
    v25 = 0;
    v29 = 0;
    v30 = 1;
    v27 = 0;
    v28 = 0;
    v26 = 0;
    v24 = &unk_286E79D28;
    v31 = __p;
    llvm::raw_ostream::SetUnbuffered(&v24);
    if (v35)
    {
      v21 = 8 * v35;
      v22 = v34 - 8;
      do
      {
        llvm::raw_ostream::operator<<(&v24, *(*(*&v22[v21] + 8) + 16), *(*(*&v22[v21] + 8) + 24));
        if (v27 == v28)
        {
          llvm::raw_ostream::write(&v24, "(", 1uLL);
        }

        else
        {
          *v28++ = 40;
        }

        v21 -= 8;
      }

      while (v21);
    }

    mlir::Pass::printAsTextualPipeline(a2, &v24);
    for (j = v35; j; --j)
    {
      if (v27 == v28)
      {
        llvm::raw_ostream::write(&v24, ")", 1uLL);
      }

      else
      {
        *v28++ = 41;
      }
    }

    operator new();
  }
}

void anonymous namespace::CrashReproducerInstrumentation::runAfterPass(_anonymous_namespace_::CrashReproducerInstrumentation *this, mlir::Pass *a2, mlir::Operation *a3)
{
  v6 = *(a2 + 1);
  if (v6 != mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID())
  {
    v7 = *(this + 1);
    v8 = *v7;
    v9 = (*v7)[15].i32[0];
    if (v9)
    {
      v10 = v8[13];
      v11 = 0xBF58476D1CE4E5B9 * ((a3 >> 4) ^ (a3 >> 9) | (((a2 >> 4) ^ (a2 >> 9)) << 32));
      v12 = v9 - 1;
      v13 = v12 & ((v11 >> 31) ^ v11);
      v14 = (*&v10 + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      if (*v14 == a2 && v15 == a3)
      {
LABEL_8:
        *v14 = -8192;
        v14[1] = -8192;
        v8[14] = vadd_s32(v8[14], 0x1FFFFFFFFLL);
        v18 = v8[16];
        v19 = v8[17].u32[0];
        v20 = (*&v18 + 16 * v19);
        if (v19)
        {
          v21 = 16 * v19;
          while (**&v18 != a2 || *(*&v18 + 8) != a3)
          {
            *&v18 += 16;
            v21 -= 16;
            if (!v21)
            {
              v18 = v20;
              break;
            }
          }
        }

        v23 = (*&v18 + 16);
        if (*&v18 + 16 != *&v20)
        {
          v24 = *&v20 - *&v18 - 16;
          do
          {
            v25 = v23[1];
            *(v23 - 2) = *v23;
            *(v23 - 1) = v25;
            v23 += 2;
            v24 -= 16;
          }

          while (v24);
        }

        v8[17].i32[0] = v19 - 1;
      }

      else
      {
        v29 = 1;
        while (v16 != -4096 || v15 != -4096)
        {
          v30 = v13 + v29++;
          v13 = v30 & v12;
          v14 = (*&v10 + 16 * v13);
          v16 = *v14;
          v15 = v14[1];
          if (*v14 == a2 && v15 == a3)
          {
            goto LABEL_8;
          }
        }
      }
    }

    if (v8[4].i8[0] == 1)
    {
      v26 = v8[6].i32[0] - 1;
      v8[6].i32[0] = v26;
      std::unique_ptr<mlir::detail::RecoveryReproducerContext>::~unique_ptr[abi:nn200100]((*&v8[5] + 8 * v26));
      v27 = (*v7)[6].u32[0];
      if (v27)
      {
        v28 = *(*&(*v7)[5] + 8 * v27 - 8);

        mlir::detail::RecoveryReproducerContext::enable(v28);
      }
    }
  }
}

void anonymous namespace::CrashReproducerInstrumentation::runAfterPassFailed(_anonymous_namespace_::CrashReproducerInstrumentation *this, mlir::Pass *a2, mlir::Operation *a3)
{
  if ((*(this + 16) & 1) == 0)
  {
    *(this + 16) = 1;
    mlir::detail::PassCrashReproducerGenerator::finalize(*(this + 1), a3, 0);
  }
}

uint64_t mlir::applyPassManagerCLOptions(mlir *this, mlir::PassManager *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if (!atomic_load(options))
  {
    return 0;
  }

  if (!atomic_load_explicit(options, memory_order_acquire))
  {
  }

  if (*(options[0] + 8))
  {
    if (!atomic_load_explicit(options, memory_order_acquire))
    {
    }

    v4 = *(options[0] + 143);
    if (v4 >= 0)
    {
      v5 = (options[0] + 120);
    }

    else
    {
      v5 = *(options[0] + 120);
    }

    if (v4 >= 0)
    {
      v6 = *(options[0] + 143);
    }

    else
    {
      v6 = *(options[0] + 128);
    }

    if (!atomic_load_explicit(options, memory_order_acquire))
    {
    }

    mlir::PassManager::enableCrashReproducerGeneration(this, v5, v6, *(options[0] + 344));
  }

  if (!atomic_load_explicit(options, memory_order_acquire))
  {
  }

  if (*(options[0] + 1688) == 1)
  {
    if (!atomic_load_explicit(options, memory_order_acquire))
    {
    }

    *(this + 4) = *(options[0] + 1872);
    *(this + 20) = 1;
  }

  if (!atomic_load_explicit(options, memory_order_acquire))
  {
  }

  if (*(options[0] + 1280) == 1)
  {
    v7 = **(this + 1);
    if (*(v7 + 41) == 1)
    {
      v8 = *(v7 + 616);
      v30 = 257;
      emitDiag(v8, 2, v28, &v22);
      if (v22)
      {
        mlir::Diagnostic::operator<<<101ul>(&v22 + 8, "IR print for module scope can't be setup on a pass-manager without disabling multi-threading first.\n");
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
      return 0;
    }
  }

  if (!atomic_load_explicit(options, memory_order_acquire))
  {
  }

  v10 = options[0];
  v29 = 0;
  v27 = 0;
  if (*(options[0] + 544) == 1)
  {
    *&v22 = &unk_286E84AA8;
LABEL_36:
    v23 = &v22;
    std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::swap[abi:nn200100](&v22, v28);
    std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::~__value_func[abi:nn200100](&v22);
    goto LABEL_37;
  }

  if (*(*(options[0] + 408) + 8))
  {
    *&v22 = &unk_286E84AF0;
    *(&v22 + 1) = options[0];
    goto LABEL_36;
  }

LABEL_37:
  if ((*(v10 + 728) & 1) != 0 || *(v10 + 1096) == 1)
  {
    *&v22 = &unk_286E84B38;
LABEL_40:
    v23 = &v22;
    std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::swap[abi:nn200100](&v22, v26);
    std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::~__value_func[abi:nn200100](&v22);
    goto LABEL_41;
  }

  if (*(*(v10 + 416) + 8))
  {
    *&v22 = &unk_286E84B80;
    *(&v22 + 1) = v10;
    goto LABEL_40;
  }

LABEL_41:
  if (v29 | v27)
  {
    if ((*(v10 + 1487) & 0x8000000000000000) != 0)
    {
      if (*(v10 + 1472))
      {
LABEL_44:
        v11 = (v10 + 1464);
        std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::__value_func[abi:nn200100](v25, v28);
        std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::__value_func[abi:nn200100](v24, v26);
        v12 = *(v10 + 1280);
        v13 = *(v10 + 912);
        v14 = *(v10 + 1096);
        v15 = *(v10 + 1487);
        if (v15 < 0)
        {
          v11 = *(v10 + 1464);
        }

        if (v15 >= 0)
        {
          v16 = *(v10 + 1487);
        }

        else
        {
          v16 = *(v10 + 1472);
        }

        mlir::OpPrintingFlags::OpPrintingFlags(&v22);
        mlir::PassManager::enableIRPrintingToFileTree(this, v25, v24, v12, v13, v14, v11, v16, &v22);
      }
    }

    else if (*(v10 + 1487))
    {
      goto LABEL_44;
    }

    std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::__value_func[abi:nn200100](v25, v28);
    v17 = std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::__value_func[abi:nn200100](v24, v26);
    v18 = *(v10 + 1280);
    v19 = *(v10 + 912);
    v20 = *(v10 + 1096);
    v21 = llvm::errs(v17);
    mlir::OpPrintingFlags::OpPrintingFlags(&v22);
    mlir::PassManager::enableIRPrinting(this, v25, v24, v18, v19, v20, v21, &v22);
  }

  std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::~__value_func[abi:nn200100](v26);
  std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::~__value_func[abi:nn200100](v28);
  return 1;
}

void *std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::swap[abi:nn200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

uint64_t std::__function::__func<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_1,std::allocator<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_1>,BOOL ()(mlir::Pass *,mlir::Operation *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E84AF0;
  a2[1] = v2;
  return result;
}

BOOL std::__function::__func<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_1,std::allocator<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_1>,BOOL ()(mlir::Pass *,mlir::Operation *)>::operator()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = (*(**a2 + 32))(*a2);
  v7 = mlir::PassInfo::lookup(v3, v4, v5, v6);
  if (!v7)
  {
    return 0;
  }

  v8 = *(v2 + 408);
  v9 = *(v8 + 120);
  v10 = *(v8 + 128);
  if (v9 == v10)
  {
    return 0;
  }

  v11 = v9 + 24;
  do
  {
    v12 = *(v11 - 24) == v7;
    v13 = *(v11 - 24) == v7 || v11 == v10;
    v11 += 24;
  }

  while (!v13);
  return v12;
}

uint64_t std::__function::__func<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_3,std::allocator<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_3>,BOOL ()(mlir::Pass *,mlir::Operation *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E84B80;
  a2[1] = v2;
  return result;
}

BOOL std::__function::__func<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_3,std::allocator<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_3>,BOOL ()(mlir::Pass *,mlir::Operation *)>::operator()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = (*(**a2 + 32))(*a2);
  v7 = mlir::PassInfo::lookup(v3, v4, v5, v6);
  if (!v7)
  {
    return 0;
  }

  v8 = *(v2 + 416);
  v9 = *(v8 + 120);
  v10 = *(v8 + 128);
  if (v9 == v10)
  {
    return 0;
  }

  v11 = v9 + 24;
  do
  {
    v12 = *(v11 - 24) == v7;
    v13 = *(v11 - 24) == v7 || v11 == v10;
    v11 += 24;
  }

  while (!v13);
  return v12;
}

uint64_t llvm::object_deleter<anonymous namespace::PassManagerOptions>::call(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = (result + 1752);
    *(result + 1752) = &unk_286E84BC8;
    std::__function::__value_func<void ()(mlir::PassDisplayMode const&)>::~__value_func[abi:nn200100](result + 2312);
    *(v1 + 1896) = &unk_286E84C70;
    v3 = *(v1 + 1912);
    if (v3 != (v1 + 1928))
    {
      free(v3);
    }

    llvm::cl::Option::~Option(v2);
    *(v1 + 1568) = &unk_286E79348;
    std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](v1 + 1720);
    llvm::cl::Option::~Option((v1 + 1568));
    *(v1 + 1344) = &unk_286E792E0;
    std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](v1 + 1536);
    *(v1 + 1488) = &unk_286E75E90;
    if (*(v1 + 1519) < 0)
    {
      operator delete(*(v1 + 1496));
    }

    if (*(v1 + 1487) < 0)
    {
      operator delete(*(v1 + 1464));
    }

    llvm::cl::Option::~Option((v1 + 1344));
    *(v1 + 1160) = &unk_286E79348;
    std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](v1 + 1312);
    llvm::cl::Option::~Option((v1 + 1160));
    *(v1 + 976) = &unk_286E79348;
    std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](v1 + 1128);
    llvm::cl::Option::~Option((v1 + 976));
    *(v1 + 792) = &unk_286E79348;
    std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](v1 + 944);
    llvm::cl::Option::~Option((v1 + 792));
    *(v1 + 608) = &unk_286E79348;
    std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](v1 + 760);
    llvm::cl::Option::~Option((v1 + 608));
    *(v1 + 424) = &unk_286E79348;
    std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](v1 + 576);
    llvm::cl::Option::~Option((v1 + 424));
    std::unique_ptr<mlir::detail::PassPipelineCLParserImpl>::~unique_ptr[abi:nn200100]((v1 + 416));
    std::unique_ptr<mlir::detail::PassPipelineCLParserImpl>::~unique_ptr[abi:nn200100]((v1 + 408));
    *(v1 + 224) = &unk_286E79348;
    std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](v1 + 376);
    llvm::cl::Option::~Option((v1 + 224));
    *v1 = &unk_286E792E0;
    std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](v1 + 192);
    *(v1 + 144) = &unk_286E75E90;
    if (*(v1 + 175) < 0)
    {
      operator delete(*(v1 + 152));
    }

    if (*(v1 + 143) < 0)
    {
      operator delete(*(v1 + 120));
    }

    llvm::cl::Option::~Option(v1);

    JUMPOUT(0x25F891040);
  }

  return result;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [27],llvm::cl::desc,llvm::cl::initializer<BOOL>>(uint64_t a1, const char *a2, _OWORD *a3, _BYTE **a4)
{
  v8 = llvm::cl::Option::Option(a1, 0, 0);
  *(v8 + 120) = 0;
  *(v8 + 128) = &unk_286E76000;
  *(v8 + 136) = 0;
  *v8 = &unk_286E79348;
  *(v8 + 144) = &unk_286E79090;
  *(v8 + 152) = &unk_286E76020;
  *(v8 + 176) = v8 + 152;
  v9 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v9, v10, v11, v12);
  *(a1 + 32) = *a3;
  v13 = *a4;
  *(a1 + 120) = **a4;
  *(a1 + 137) = 1;
  *(a1 + 136) = *v13;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t llvm::cl::opt<mlir::PassDisplayMode,false,llvm::cl::parser<mlir::PassDisplayMode>>::handleOccurrence(uint64_t a1, __int16 a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v7 = a1;
  v18 = 0;
  v8 = *(*(a1 + 152) + 24);
  if (v8)
  {
    a3 = a5;
  }

  if (v8)
  {
    a4 = a6;
  }

  v11 = *(a1 + 168);
  if (v11)
  {
    v12 = *(a1 + 160);
    while (1)
    {
      if (*(v12 + 8) == a4)
      {
        if (!a4)
        {
          break;
        }

        a1 = memcmp(*v12, a3, a4);
        if (!a1)
        {
          break;
        }
      }

      v12 += 48;
      if (!--v11)
      {
        goto LABEL_13;
      }
    }

    v15 = *(v12 + 40);
    v18 = v15;
  }

  else
  {
LABEL_13:
    v20 = 1283;
    v19[0] = "Cannot find option named '";
    v19[2] = a3;
    v19[3] = a4;
    v21[0] = v19;
    v21[2] = "'!";
    v22 = 770;
    v13 = llvm::errs(a1);
    if (llvm::cl::Option::error(v7, v21, 0, 0, v13))
    {
      return 1;
    }

    v15 = 0;
  }

  *(v7 + 120) = v15;
  *(v7 + 12) = a2;
  v16 = *(v7 + 584);
  if (v16)
  {
    (*(*v16 + 48))(v16, &v18);
    return 0;
  }

  else
  {
    v17 = std::__throw_bad_function_call[abi:nn200100]();
    return llvm::cl::opt<mlir::PassDisplayMode,false,llvm::cl::parser<mlir::PassDisplayMode>>::getValueExpectedFlagDefault(v17);
  }
}

uint64_t llvm::cl::opt<mlir::PassDisplayMode,false,llvm::cl::parser<mlir::PassDisplayMode>>::getValueExpectedFlagDefault(uint64_t a1)
{
  if (*(*(a1 + 152) + 24))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

void llvm::cl::opt<mlir::PassDisplayMode,false,llvm::cl::parser<mlir::PassDisplayMode>>::~opt(uint64_t a1)
{
  *a1 = &unk_286E84BC8;
  std::__function::__value_func<void ()(mlir::PassDisplayMode const&)>::~__value_func[abi:nn200100](a1 + 560);
  *(a1 + 144) = &unk_286E84C70;
  v2 = *(a1 + 160);
  if (v2 != (a1 + 176))
  {
    free(v2);
  }

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_286E84BC8;
  std::__function::__value_func<void ()(mlir::PassDisplayMode const&)>::~__value_func[abi:nn200100](a1 + 560);
  *(a1 + 144) = &unk_286E84C70;
  v2 = *(a1 + 160);
  if (v2 != (a1 + 176))
  {
    free(v2);
  }

  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x25F891040);
}

llvm::raw_ostream *llvm::cl::opt<mlir::PassDisplayMode,false,llvm::cl::parser<mlir::PassDisplayMode>>::printOptionValue(llvm::raw_ostream *result, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(result + 140) != 1 || *(result + 34) != *(result + 30))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(result + 30);
    v6 = &unk_286E84C30;
    v8 = 1;
    v7 = v5;
    return llvm::cl::generic_parser_base::printGenericOptionDiff((result + 144), result, &v6, (result + 128), a2);
  }

  return result;
}

uint64_t llvm::cl::opt<mlir::PassDisplayMode,false,llvm::cl::parser<mlir::PassDisplayMode>>::setDefault(uint64_t result)
{
  if (*(result + 140) == 1)
  {
    v1 = *(result + 136);
  }

  else
  {
    v1 = 0;
  }

  *(result + 120) = v1;
  return result;
}

void *llvm::cl::parser<mlir::PassDisplayMode>::~parser(void *a1)
{
  *a1 = &unk_286E84C70;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  return a1;
}

void llvm::cl::parser<mlir::PassDisplayMode>::~parser(void *a1)
{
  *a1 = &unk_286E84C70;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

void llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::PassDisplayMode>::OptionInfo,false>::grow(uint64_t a1, unint64_t a2)
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
      *(v9 + 4) = &unk_286E84C50;
      v11 = *(v5 + 10);
      v9[44] = v5[44];
      *(v9 + 10) = v11;
      *(v9 + 4) = &unk_286E84C30;
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

uint64_t std::__function::__value_func<void ()(mlir::PassDisplayMode const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void mlir::PassRegistryEntry::printHelpStr(mlir::PassRegistryEntry *this, uint64_t a2)
{
  v4 = *(this + 23);
  if (v4 >= 0)
  {
    v5 = this;
  }

  else
  {
    v5 = *this;
  }

  if (v4 >= 0)
  {
    v6 = *(this + 23);
  }

  else
  {
    v6 = *(this + 1);
  }

  v7 = *(this + 47);
  if (v7 >= 0)
  {
    v8 = this + 24;
  }

  else
  {
    v8 = *(this + 3);
  }

  if (v7 >= 0)
  {
    v9 = *(this + 47);
  }

  else
  {
    v9 = *(this + 4);
  }

  v10 = llvm::outs(this);
  llvm::raw_ostream::write(v10, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, 6uLL);
  v11 = *(v10 + 4);
  if (*(v10 + 3) - v11 > 1uLL)
  {
    *v11 = 11565;
    *(v10 + 4) += 2;
  }

  else
  {
    v10 = llvm::raw_ostream::write(v10, "--", 2uLL);
  }

  v15 = v5;
  v16 = v6;
  v17 = a2 - 10;
  v18 = 1;
  llvm::raw_ostream::operator<<(v10, &v15);
  v12 = *(v10 + 4);
  if (*(v10 + 3) - v12 > 3uLL)
  {
    *v12 = 538976301;
    *(v10 + 4) += 4;
  }

  else
  {
    v10 = llvm::raw_ostream::write(v10, "-   ", 4uLL);
  }

  v13 = llvm::raw_ostream::operator<<(v10, v8, v9);
  v14 = *(v13 + 4);
  if (v14 >= *(v13 + 3))
  {
    llvm::raw_ostream::write(v13, 10);
  }

  else
  {
    *(v13 + 4) = v14 + 1;
    *v14 = 10;
  }

  v15 = 6;
  v16 = a2;
  std::function<void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::operator()(*(this + 13), llvm::function_ref<void ()(mlir::detail::PassOptions const&)>::callback_fn<mlir::PassRegistryEntry::printHelpStr(unsigned long,unsigned long)::$_0>, &v15);
}

void std::function<void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = a2;
  v9[1] = a3;
  if (a1)
  {
    (*(*a1 + 48))(a1, v9);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    mlir::registerPassPipeline(v3, v4, v5, v6, v7, v8);
  }
}

void mlir::registerPassPipeline(void *a1, size_t a2, void *a3, size_t a4, uint64_t a5, uint64_t a6)
{
  v33 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::__value_func[abi:nn200100](v23, a6);
  if (v24)
  {
    if (v24 == v23)
    {
      v32 = v31;
      (*(*v24 + 24))();
    }

    else
    {
      v32 = v24;
      v24 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  mlir::PassRegistryEntry::PassRegistryEntry(__dst, a1, a2, a3, a4, a5, v31);
  std::__function::__value_func<void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::~__value_func[abi:nn200100](v31);
  std::__function::__value_func<void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::~__value_func[abi:nn200100](v23);
  if (!atomic_load_explicit(qword_27FC1EE70, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27FC1EE70, llvm::object_creator<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call);
  }

  v13 = qword_27FC1EE70[0];
  v14 = llvm::xxh3_64bits(a1, a2, v11, v12);
  v15 = llvm::StringMapImpl::LookupBucketFor(v13, a1, a2, v14);
  v16 = *v13;
  v17 = *(*v13 + 8 * v15);
  if (v17)
  {
    if (v17 != -8)
    {
      goto LABEL_20;
    }

    --*(v13 + 4);
  }

  buffer = llvm::allocate_buffer((a2 + 121), 8uLL);
  v19 = buffer;
  v20 = buffer + 15;
  if (a2)
  {
    memcpy(buffer + 15, a1, a2);
  }

  *(v20 + a2) = 0;
  *v19 = a2;
  v21 = (v19 + 1);
  if (SHIBYTE(v26) < 0)
  {
    std::string::__init_copy_ctor_external(v21, __dst[0], __dst[1]);
  }

  else
  {
    *&v21->__r_.__value_.__l.__data_ = *__dst;
    v19[3] = v26;
  }

  if (SHIBYTE(v28) < 0)
  {
    std::string::__init_copy_ctor_external((v19 + 4), __p, *(&__p + 1));
  }

  else
  {
    *(v19 + 2) = __p;
    v19[6] = v28;
  }

  std::__function::__value_func<llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::__value_func[abi:nn200100]((v19 + 7), v29);
  std::__function::__value_func<void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::__value_func[abi:nn200100]((v19 + 11), v30);
  *(v16 + 8 * v15) = v19;
  ++*(v13 + 3);
  llvm::StringMapImpl::RehashTable(v13, v15, v22);
LABEL_20:
  std::__function::__value_func<void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::~__value_func[abi:nn200100](v30);
  std::__function::__value_func<llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::~__value_func[abi:nn200100](v29);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(__dst[0]);
  }
}

void *mlir::PassRegistryEntry::PassRegistryEntry(void *__dst, void *__src, size_t __len, void *a4, size_t a5, uint64_t a6, uint64_t a7)
{
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_14;
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  *(__dst + __len) = 0;
  if (a5 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_14:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a5 >= 0x17)
  {
    operator new();
  }

  v14 = __dst + 3;
  *(__dst + 47) = a5;
  if (a5)
  {
    memmove(v14, a4, a5);
  }

  *(v14 + a5) = 0;
  std::__function::__value_func<llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::__value_func[abi:nn200100]((__dst + 6), a6);
  std::__function::__value_func<void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::__value_func[abi:nn200100]((__dst + 10), a7);
  return __dst;
}

void mlir::registerPass(uint64_t a1)
{
  v14[5] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  if (v2)
  {
    (*(*v2 + 48))(&v8);
    (*(*v8 + 32))(v8);
    if (v3)
    {
      (*(*v8 + 40))(v8);
      std::__function::__value_func<std::unique_ptr<mlir::Pass> ()(void)>::__value_func[abi:nn200100](__dst, a1);
      operator new();
    }
  }

  else
  {
    std::__throw_bad_function_call[abi:nn200100]();
  }

  v12 = "Trying to register '";
  v13 = 259;
  v4 = (*(*v8 + 16))(v8);
  v11 = 261;
  v10[0] = v4;
  v10[1] = v5;
  llvm::operator+(&v12, v10, v14);
  v7 = 259;
  llvm::operator+(v14, &v6, __dst);
  llvm::report_fatal_error(__dst, 1);
}

uint64_t mlir::PassInfo::lookup(unsigned __int8 *a1, unint64_t a2, const unsigned __int8 *a3, unint64_t a4)
{
  if (!atomic_load_explicit(_MergedGlobals_26, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(_MergedGlobals_26, llvm::object_creator<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call);
  }

  v6 = _MergedGlobals_26[0];
  v7 = llvm::xxh3_64bits(a1, a2, a3, a4);
  Key = llvm::StringMapImpl::FindKey(v6, a1, a2, v7);
  if (Key == -1)
  {
    v9 = *(v6 + 8);
  }

  else
  {
    v9 = Key;
  }

  v10 = (*v6 + 8 * v9);
  if (!atomic_load_explicit(_MergedGlobals_26, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(_MergedGlobals_26, llvm::object_creator<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call);
  }

  if ((*_MergedGlobals_26[0] + 8 * *(_MergedGlobals_26[0] + 8)) == v10)
  {
    return 0;
  }

  else
  {
    return *v10 + 8;
  }
}

uint64_t mlir::PassPipelineInfo::lookup(unsigned __int8 *a1, unint64_t a2, const unsigned __int8 *a3, unint64_t a4)
{
  if (!atomic_load_explicit(qword_27FC1EE70, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27FC1EE70, llvm::object_creator<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call);
  }

  v6 = qword_27FC1EE70[0];
  v7 = llvm::xxh3_64bits(a1, a2, a3, a4);
  Key = llvm::StringMapImpl::FindKey(v6, a1, a2, v7);
  if (Key == -1)
  {
    v9 = *(v6 + 8);
  }

  else
  {
    v9 = Key;
  }

  v10 = (*v6 + 8 * v9);
  if (!atomic_load_explicit(qword_27FC1EE70, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27FC1EE70, llvm::object_creator<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call);
  }

  if ((*qword_27FC1EE70[0] + 8 * *(qword_27FC1EE70[0] + 8)) == v10)
  {
    return 0;
  }

  else
  {
    return *v10 + 8;
  }
}

uint64_t mlir::detail::pass_options::parseCommaSeparatedList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t), uint64_t a7)
{
  v20 = a4;
  v21 = a5;
  if (!a5)
  {
    return 1;
  }

  v8 = a5;
  Char = findChar(a4, a5, 0, 0x2Cu);
  if (Char == -1)
  {
LABEL_9:
    ArgAndUpdateOptions = extractArgAndUpdateOptions(&v20, v8);

    return a6(a7, ArgAndUpdateOptions, v16);
  }

  else
  {
    v10 = Char;
    while (1)
    {
      v11 = extractArgAndUpdateOptions(&v20, v10);
      if ((a6(a7, v11, v12) & 1) == 0)
      {
        return 0;
      }

      v13 = v21;
      v14 = v21 != 0;
      if (v21)
      {
        v15 = v20 + 1;
      }

      else
      {
        v15 = v20;
      }

      v8 = v21 - v14;
      v20 = v15;
      v21 -= v14;
      v10 = findChar(v15, v13 - v14, 0, 0x2Cu);
      if (v10 == -1)
      {
        goto LABEL_9;
      }
    }
  }
}

unint64_t findChar(uint64_t a1, unint64_t a2, unint64_t Char, unsigned __int8 a4)
{
  if (a2 > Char)
  {
    v6 = a4;
    while (1)
    {
      v7 = *(a1 + Char);
      if (v7 == v6)
      {
        return Char;
      }

      if (*(a1 + Char) <= 0x27u)
      {
        if (v7 == 34)
        {
          v14 = Char + 1;
          v10 = a2 >= Char + 1;
          v11 = a2 - (Char + 1);
          if (v11 == 0 || !v10)
          {
            return -1;
          }

          v12 = (a1 + v14);
          v13 = 34;
LABEL_20:
          v15 = memchr(v12, v13, v11);
          if (!v15)
          {
            return -1;
          }

          Char = v15 - a1;
LABEL_22:
          if (Char == -1)
          {
            return Char;
          }

          goto LABEL_23;
        }

        if (v7 == 39)
        {
          v9 = Char + 1;
          v10 = a2 >= Char + 1;
          v11 = a2 - (Char + 1);
          if (v11 == 0 || !v10)
          {
            return -1;
          }

          v12 = (a1 + v9);
          v13 = 39;
          goto LABEL_20;
        }
      }

      else
      {
        switch(v7)
        {
          case '{':
            v8 = 125;
            goto LABEL_16;
          case '[':
            v8 = 93;
            goto LABEL_16;
          case '(':
            v8 = 41;
LABEL_16:
            Char = findChar(a1, a2, Char + 1, v8);
            goto LABEL_22;
        }
      }

LABEL_23:
      if (++Char >= a2)
      {
        return -1;
      }
    }
  }

  return -1;
}

unsigned __int8 *extractArgAndUpdateOptions(llvm::StringRef *a1, unint64_t a2)
{
  v4 = *(a1 + 1);
  if (v4 >= a2)
  {
    v4 = a2;
  }

  v21 = *a1;
  v22 = v4;
  v5 = llvm::StringRef::trim(&v21, " \t\n\v\f\r", 6);
  v7 = v6;
  v9 = *a1;
  v8 = *(a1 + 1);
  if (v8 >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = *(a1 + 1);
  }

  v11 = v9 + v10;
  v12 = v8 - v10;
  v21 = (v9 + v10);
  v22 = v8 - v10;
  first_not_of = llvm::StringRef::find_first_not_of(&v21, " \t\n\v\f\r", 6, 0);
  if (first_not_of >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = first_not_of;
  }

  *a1 = v11 + v14;
  *(a1 + 1) = v12 - v14;
  if (v7 >= 2)
  {
    v15 = 0;
    v20 = 572663591;
    v16 = *v5;
    do
    {
      if (v16 == *(&v20 + v15) && v5[v7 - 1] == *(&v20 + v15 + 1))
      {
        v21 = v5 + 1;
        v22 = v7 - 2;
        return llvm::StringRef::trim(&v21, " \t\n\v\f\r", 6);
      }

      v15 += 2;
    }

    while (v15 != 4);
    if (v16 == 123)
    {
      Char = findChar(v5, v7, 1uLL, 0x7Du);
      v18 = Char;
      if (Char == v7 - 1)
      {
        if (Char >= v7 - 2)
        {
          v18 = v7 - 2;
        }

        v21 = v5 + 1;
        v22 = v18;
        return llvm::StringRef::trim(&v21, " \t\n\v\f\r", 6);
      }
    }
  }

  return v5;
}

uint64_t mlir::detail::PassOptions::copyOptionValuesFrom(uint64_t result, uint64_t a2)
{
  v2 = *(result + 168);
  v3 = *(result + 160);
  if (v3 != v2)
  {
    v4 = *(a2 + 160);
    v5 = *(a2 + 168);
    if (v4 != v5)
    {
      v6 = v4 + 8;
      v7 = v3 + 8;
      do
      {
        result = (*(**(v7 - 8) + 40))(*(v7 - 8), *(v6 - 8));
        if (v7 == v2)
        {
          break;
        }

        v7 += 8;
        v8 = v6 == v5;
        v6 += 8;
      }

      while (!v8);
    }
  }

  return result;
}

uint64_t mlir::detail::PassOptions::parseFromString(uint64_t a1, uint64_t a2, unint64_t a3, llvm::raw_ostream *a4)
{
  if (!a3)
  {
    return 1;
  }

  v5 = a3;
  while (1)
  {
    v8 = 0;
    v46 = a2;
    v47 = v5;
    do
    {
      v9 = *(a2 + v8);
      if (v9 == 61)
      {
        ArgAndUpdateOptions = extractArgAndUpdateOptions(&v46, v8);
        v13 = v16;
        v17 = v47;
        v18 = v47 != 0;
        if (v47)
        {
          v19 = v46 + 1;
        }

        else
        {
          v19 = v46;
        }

        v20 = v47 - v18;
        v46 = v19;
        v47 -= v18;
        if (v17 < 2)
        {
          v21 = 0;
LABEL_57:
          v15 = extractArgAndUpdateOptions(&v46, v21);
          v14 = v38;
          goto LABEL_58;
        }

        v21 = 0;
        while (1)
        {
          v22 = *(v19 + v21);
          switch(v22)
          {
            case '""':
              v34 = v21 + 1;
              if (v20 > v21 + 1)
              {
                v35 = 34;
LABEL_50:
                v36 = memchr((v19 + v34), v35, v20 - v34);
                if (&v36[-v19] != -1 && v36 != 0)
                {
                  v21 = &v36[-v19];
                }
              }

              break;
            case '\'':
              v34 = v21 + 1;
              if (v20 > v21 + 1)
              {
                v35 = 39;
                goto LABEL_50;
              }

              break;
            case ' ':
              goto LABEL_57;
            default:
              v23 = (v21 + 1);
              v24 = v22 != 123 || v23 == v20;
              if (!v24)
              {
                v25 = 1;
                do
                {
                  v26 = v23[v19];
                  if (v26 > 0x7A)
                  {
                    if (v26 == 123)
                    {
                      ++v25;
                    }

                    else if (v26 == 125 && !--v25)
                    {
                      goto LABEL_55;
                    }
                  }

                  else if (v26 == 34)
                  {
                    v29 = v20 - (v21 + 2);
                    if (v20 > v21 + 2)
                    {
                      v30 = (v19 + v21 + 2);
                      v31 = 34;
LABEL_37:
                      v32 = memchr(v30, v31, v29);
                      if (&v32[-v19] != -1 && v32 != 0)
                      {
                        v23 = &v32[-v19];
                      }
                    }
                  }

                  else
                  {
                    v24 = v26 == 39;
                    v27 = v21 + 2;
                    if (v24 && v20 > v27)
                    {
                      v29 = v20 - v27;
                      v30 = (v19 + v27);
                      v31 = 39;
                      goto LABEL_37;
                    }
                  }

                  v21 = v23++;
                }

                while (v23 != v20);
              }

              break;
          }

LABEL_55:
          if (++v21 == v20)
          {
            v21 = v20;
            goto LABEL_57;
          }
        }
      }

      if (v9 == 32)
      {
        goto LABEL_8;
      }

      ++v8;
    }

    while (v5 != v8);
    v8 = v5;
LABEL_8:
    ArgAndUpdateOptions = extractArgAndUpdateOptions(&v46, v8);
    v13 = v12;
    v14 = 0;
    v15 = 0;
LABEL_58:
    a2 = v46;
    v5 = v47;
    if (v13)
    {
      break;
    }

LABEL_61:
    if (!v5)
    {
      return 1;
    }
  }

  v39 = llvm::StringMap<llvm::cl::Option *,llvm::MallocAllocator>::find(a1 + 128, ArgAndUpdateOptions, v13, v10);
  if (*(a1 + 128) + 8 * *(a1 + 136) == v39)
  {
    v42 = *(a4 + 4);
    if (*(a4 + 3) - v42 > 0x25uLL)
    {
      qmemcpy(v42, "<Pass-Options-Parser>: no such option ", 38);
      *(a4 + 4) += 38;
    }

    else
    {
      a4 = llvm::raw_ostream::write(a4, "<Pass-Options-Parser>: no such option ", 0x26uLL);
    }

    v43 = llvm::raw_ostream::operator<<(a4, ArgAndUpdateOptions, v13);
    v44 = v43;
    v45 = *(v43 + 4);
    if (*(v43 + 3) == v45)
    {
      llvm::raw_ostream::write(v43, "\n", 1uLL);
      return 0;
    }

    result = 0;
    *v45 = 10;
    ++*(v44 + 4);
  }

  else
  {
    v40 = *(*v39 + 8);
    LODWORD(v46) = 0;
    if ((ProvideOption(v40, *(v40 + 16), *(v40 + 24), v15, v14, 0, 0, &v46) & 1) == 0)
    {
      goto LABEL_61;
    }

    return 0;
  }

  return result;
}

void mlir::detail::PassOptions::print(mlir::detail::PassOptions *this, llvm::raw_ostream *a2)
{
  v15[4] = *MEMORY[0x277D85DE8];
  if (*(this + 35))
  {
    v3 = *(this + 20);
    v4 = *(this + 21);
    __base = v15;
    __nel = 0x400000000;
    llvm::SmallVectorImpl<mlir::detail::PassOptions::OptionBase *>::append<std::__wrap_iter<mlir::detail::PassOptions::OptionBase * const*>,void>(&__base, v3, v4);
    if (__nel >= 2)
    {
      qsort(__base, __nel, 8uLL, mlir::detail::PassOptions::print(llvm::raw_ostream &)const::$_0::__invoke);
    }

    v5 = *(a2 + 4);
    if (v5 >= *(a2 + 3))
    {
      llvm::raw_ostream::write(a2, 123);
    }

    else
    {
      *(a2 + 4) = v5 + 1;
      *v5 = 123;
    }

    v6 = __nel;
    if (__nel)
    {
      v7 = __base;
      (*(**__base + 24))(*__base, a2);
      if (v6 != 1)
      {
        v8 = (v7 + 8);
        v9 = 8 * v6 - 8;
        do
        {
          v10 = *(a2 + 4);
          if (*(a2 + 3) == v10)
          {
            llvm::raw_ostream::write(a2, " ", 1uLL);
          }

          else
          {
            *v10 = 32;
            ++*(a2 + 4);
          }

          v11 = *v8++;
          (*(*v11 + 24))(v11, a2);
          v9 -= 8;
        }

        while (v9);
      }
    }

    v12 = *(a2 + 4);
    if (v12 >= *(a2 + 3))
    {
      llvm::raw_ostream::write(a2, 125);
    }

    else
    {
      *(a2 + 4) = v12 + 1;
      *v12 = 125;
    }

    if (__base != v15)
    {
      free(__base);
    }
  }
}

uint64_t *mlir::parsePassPipeline@<X0>(uint64_t *a1@<X0>, size_t a2@<X1>, llvm::raw_ostream *a3@<X2>, _BYTE *a4@<X8>)
{
  v14 = a1;
  v15 = a2;
  result = llvm::StringRef::trim(&v14, " \t\n\v\f\r", 6);
  v14 = result;
  v15 = v7;
  if (v7)
  {
    v8 = result;
    v9 = v7;
    result = memchr(result, 40, v7);
    v10 = (result ? result - v8 : -1);
    if (v10 + 1 >= 2 && *(v8 + v9 - 1) == 41)
    {
      v15 = v9 - 1;
      if (v9 - 1 <= v10)
      {
        v11 = (v9 - 1);
      }

      else
      {
        v11 = (result - v8);
      }

      v13[0] = v8;
      v13[1] = v11;
      llvm::StringRef::find_last_not_of(v13, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
      operator new();
    }
  }

  v12 = *(a3 + 4);
  if (*(a3 + 3) - v12 > 0x5EuLL)
  {
    qmemcpy(v12, "expected pass pipeline to be wrapped with the anchor operation type, e.g. 'builtin.module(...)'", 95);
    *(a3 + 4) += 95;
  }

  else
  {
    result = llvm::raw_ostream::write(a3, "expected pass pipeline to be wrapped with the anchor operation type, e.g. 'builtin.module(...)'", 0x5FuLL);
  }

  *a4 = 0;
  a4[8] = 0;
  return result;
}

BOOL llvm::cl::OptionValue<mlir::OpPassManager>::compare(uint64_t a1, const char **a2)
{
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v21 = 0;
  v25 = 0;
  v26 = 1;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v20 = &unk_286E79D28;
  v27 = &v31;
  llvm::raw_ostream::SetUnbuffered(&v20);
  mlir::OpPassManager::printAsTextualPipeline(*(a1 + 8), &v20);
  v13 = 0;
  v17 = 0;
  v18 = 1;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v12 = &unk_286E79D28;
  v19 = &v28;
  llvm::raw_ostream::SetUnbuffered(&v12);
  mlir::OpPassManager::printAsTextualPipeline(a2, &v12);
  llvm::raw_ostream::~raw_ostream(&v12);
  llvm::raw_ostream::~raw_ostream(&v20);
  v4 = 0;
  v5 = HIBYTE(v33);
  if (v33 >= 0)
  {
    v6 = HIBYTE(v33);
  }

  else
  {
    v6 = v32;
  }

  v7 = HIBYTE(v30);
  v8 = SHIBYTE(v30);
  if (v30 < 0)
  {
    v7 = v29;
  }

  if (v6 != v7)
  {
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    operator delete(v28);
    if ((v33 & 0x8000000000000000) == 0)
    {
      return v4;
    }

LABEL_18:
    operator delete(v31);
    return v4;
  }

  if (v33 >= 0)
  {
    v10 = &v31;
  }

  else
  {
    v10 = v31;
  }

  if (v30 >= 0)
  {
    v11 = &v28;
  }

  else
  {
    v11 = v28;
  }

  v4 = memcmp(v10, v11, v6) == 0;
  if (v8 < 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  if (v5 < 0)
  {
    goto LABEL_18;
  }

  return v4;
}

uint64_t llvm::cl::parser<mlir::OpPassManager>::parse(llvm *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, size_t a6, uint64_t a7)
{
  v9 = llvm::errs(a1);
  mlir::parsePassPipeline(a5, a6, v9, &v11);
  if (v12 == 1)
  {
    operator new();
  }

  return v12 ^ 1u;
}

uint64_t mlir::parsePassPipeline(char *a1, unint64_t a2, uint64_t *a3, llvm::raw_ostream *a4)
{
  v5 = a3;
  v84 = *MEMORY[0x277D85DE8];
  v69 = 0;
  v70 = 0;
  v71 = 0;
  if (!a2)
  {
    v59 = 0;
    v60 = 0;
    goto LABEL_81;
  }

  v6 = a2;
  v75 = 0;
  memset(v74, 0, sizeof(v74));
  v83 = 261;
  *&v81 = "MLIR Textual PassPipeline Parser";
  *(&v81 + 1) = 32;
  v79[0] = &v81;
  v8 = operator new(24, v79);
  *v8 = &unk_286E796E0;
  *(v8 + 1) = a1;
  *(v8 + 2) = &a1[v6];
  v82[0] = 0;
  v81 = v8;
  std::vector<llvm::SourceMgr::SrcBuffer>::push_back[abi:nn200100](v74, &v81);
  llvm::SourceMgr::SrcBuffer::~SrcBuffer(&v81);
  v72 = v74;
  v73 = a4;
  v67 = a4;
  v76 = a1;
  v77 = v6;
  *&v81 = v82;
  v82[0] = &v69;
  v9 = 1;
  v10 = " \t\n\v\f\r";
  *(&v81 + 1) = 0x400000001;
  for (i = v82; ; i = v81)
  {
    v12 = i[v9 - 1];
    first_of = llvm::StringRef::find_first_of(&v76, ",(){", 4, 0);
    v14 = first_of;
    if (v6 >= first_of)
    {
      v15 = first_of;
    }

    else
    {
      v15 = v6;
    }

    v79[0] = a1;
    v79[1] = v15;
    v16 = v10;
    v17 = llvm::StringRef::trim(v79, v10, 6);
    v21 = *(v12 + 8);
    v20 = *(v12 + 16);
    if (v21 >= v20)
    {
      v23 = *v12;
      v24 = (v21 - *v12) >> 6;
      v25 = v24 + 1;
      if ((v24 + 1) >> 58)
      {
      }

      v26 = v20 - v23;
      if (v26 >> 5 > v25)
      {
        v25 = v26 >> 5;
      }

      if (v26 >= 0x7FFFFFFFFFFFFFC0)
      {
        v27 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        if (!(v27 >> 58))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v28 = (v21 - *v12) >> 6;
      v29 = v24 << 6;
      *v29 = v17;
      *(v29 + 8) = v18;
      *(v29 + 16) = 0u;
      *(v29 + 32) = 0u;
      *(v29 + 48) = 0u;
      v30 = v29 - (v28 << 6);
      if (v23 != v21)
      {
        v31 = v23;
        v32 = v30;
        do
        {
          v33 = *v31;
          v34 = *(v31 + 1);
          *(v32 + 32) = v31[4];
          *v32 = v33;
          *(v32 + 16) = v34;
          *(v32 + 48) = 0;
          *(v32 + 56) = 0;
          *(v32 + 40) = *(v31 + 5);
          *(v32 + 56) = v31[7];
          v31[5] = 0;
          v31[6] = 0;
          v31[7] = 0;
          v31 += 8;
          v32 += 64;
        }

        while (v31 != v21);
        do
        {
          v78 = v23 + 5;
          v23 += 8;
        }

        while (v23 != v21);
        v23 = *v12;
      }

      v22 = v29 + 64;
      *v12 = v30;
      *(v12 + 8) = v29 + 64;
      *(v12 + 16) = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v21 = v17;
      *(v21 + 8) = v18;
      *(v21 + 16) = 0u;
      *(v21 + 32) = 0u;
      v22 = v21 + 64;
      *(v21 + 48) = 0u;
    }

    v10 = v16;
    *(v12 + 8) = v22;
    if (v14 == -1)
    {
      goto LABEL_84;
    }

    v35 = v77 >= v14 ? v14 : v77;
    v36 = &v76[v35];
    v37 = v77 - v35;
    v76 = v36;
    v38 = *v36;
    if (v38 != 40)
    {
      break;
    }

    if (v77 <= v14)
    {
      a1 = v36;
    }

    else
    {
      a1 = v36 + 1;
    }

    v6 = (__PAIR128__(v37, v14) - v77) >> 64;
    v76 = a1;
    v77 = v6;
    v44 = *(v12 + 8);
    v45 = DWORD2(v81);
    if (DWORD2(v81) >= HIDWORD(v81))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v82, DWORD2(v81) + 1, 8);
      v45 = DWORD2(v81);
    }

    *(v81 + 8 * v45) = v44 - 24;
    v9 = ++DWORD2(v81);
LABEL_69:
    ;
  }

  if (v38 != 123)
  {
    goto LABEL_58;
  }

  if (v77 <= v14)
  {
    v39 = v36;
  }

  else
  {
    v39 = v36 + 1;
  }

  v40 = (__PAIR128__(v37, v14) - v77) >> 64;
  if (!v40)
  {
LABEL_71:
    v61 = "missing closing '}' while processing pass options";
    v36 = v39 - 1;
    goto LABEL_73;
  }

  v41 = 0;
  v42 = 1;
  while (1)
  {
    v43 = v39[v41];
    if (v43 != 125)
    {
      if (v43 == 123)
      {
        ++v42;
      }

      goto LABEL_40;
    }

    if (!--v42)
    {
      break;
    }

LABEL_40:
    if (v40 == ++v41)
    {
      goto LABEL_71;
    }
  }

  if (v40 >= v41)
  {
    v46 = v41;
  }

  else
  {
    v46 = v40;
  }

  v47 = *(v12 + 8);
  *(v47 - 48) = v39;
  *(v47 - 40) = v46;
  if (v40 >= v41 + 1)
  {
    v48 = v41 + 1;
  }

  else
  {
    v48 = v40;
  }

  v49 = &v39[v48];
  v50 = v40 - v48;
  v76 = &v39[v48];
  v77 = v40 - v48;
  first_not_of = llvm::StringRef::find_first_not_of(&v76, v16, 6, 0);
  if (first_not_of >= v50)
  {
    v52 = v50;
  }

  else
  {
    v52 = first_not_of;
  }

  v36 = &v49[v52];
  v37 = v50 - v52;
  v76 = v36;
LABEL_58:
  if (!v37)
  {
LABEL_84:
    v66 = DWORD2(v81);
LABEL_85:
    LOBYTE(v53) = 1;
    a4 = v67;
    v5 = a3;
    if (v66 >= 2)
    {
      v79[0] = "encountered unbalanced parentheses while parsing pipeline";
      v80 = 259;
      llvm::SourceMgr::PrintMessage(v72, v73, v76, 0, v79, 0, 0, v19, 0, 0, 1);
      LOBYTE(v53) = 0;
    }

    goto LABEL_76;
  }

  v53 = DWORD2(v81) - 1;
  while (1)
  {
    v54 = *v36;
    if (v54 != 41)
    {
      break;
    }

    v55 = v36 + 1;
    v56 = v37 - 1;
    v76 = v36 + 1;
    v77 = v37 - 1;
    if (!v53)
    {
      v79[0] = "encountered extra closing ')' creating unbalanced parentheses while parsing pipeline";
      v80 = 259;
      llvm::SourceMgr::PrintMessage(v72, v73, v36, 0, v79, 0, 0, v19, 0, 0, 1);
      goto LABEL_75;
    }

    DWORD2(v81) = v53;
    v57 = llvm::StringRef::find_first_not_of(&v76, v16, 6, 0);
    if (v57 >= v56)
    {
      v58 = v56;
    }

    else
    {
      v58 = v57;
    }

    v36 = &v55[v58];
    --v53;
    v37 = v56 - v58;
    v76 = v36;
    v77 = v37;
    if (!v37)
    {
      v66 = v53 + 1;
      goto LABEL_85;
    }
  }

  if (v54 == 44)
  {
    a1 = v36 + 1;
    v6 = v37 - 1;
    v76 = v36 + 1;
    v77 = v37 - 1;
    v9 = v53 + 1;
    goto LABEL_69;
  }

  v61 = "expected ',' after parsing pipeline";
LABEL_73:
  v79[0] = v61;
  v80 = 259;
  llvm::SourceMgr::PrintMessage(v72, v73, v36, 0, v79, 0, 0, v19, 0, 0, 1);
  LOBYTE(v53) = 0;
LABEL_75:
  a4 = v67;
  v5 = a3;
LABEL_76:
  if (v81 != v82)
  {
    free(v81);
  }

  if (v53)
  {
    llvm::SourceMgr::~SourceMgr(v74);
    if (v62)
    {
      v60 = v69;
      v59 = v70;
LABEL_81:
      *&v74[0] = a4;
      v63 = *(*v5 + 68);
      *(*v5 + 68) = 1;
      *(*v5 + 68) = v63;
      v62 = v64 & 1;
    }
  }

  else
  {
    llvm::SourceMgr::~SourceMgr(v74);
    v62 = 0;
  }

  *&v74[0] = &v69;
  return v62;
}

llvm::cl::Option **std::unique_ptr<mlir::detail::PassPipelineCLParserImpl>::~unique_ptr[abi:nn200100](llvm::cl::Option **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MEMORY[0x25F891040]();
  }

  return a1;
}

void llvm::SmallVectorTemplateBase<mlir::PassRegistryEntry *,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

void *std::__function::__func<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::~__func(void *a1)
{
  *a1 = &unk_286E84D38;
  std::__function::__value_func<std::unique_ptr<mlir::Pass> ()(void)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void std::__function::__func<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::~__func(void *a1)
{
  *a1 = &unk_286E84D38;
  std::__function::__value_func<std::unique_ptr<mlir::Pass> ()(void)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x25F891040);
}

void std::__function::__func<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<std::unique_ptr<mlir::Pass> ()(void)>::~__value_func[abi:nn200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    v25 = std::__throw_bad_function_call[abi:nn200100]();
    return std::__function::__value_func<llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::__value_func[abi:nn200100](v25, v26);
  }

  v6 = *a3;
  v7 = a3[1];
  v8 = *a4;
  v9 = *(a4 + 8);
  (*(*v4 + 48))(&v39);
  v10 = (*(*v39 + 48))(v39, v6, v7, v8, v9);
  v11 = *a2;
  v12 = *(*a2 + 23);
  if ((v12 & 0x8000000000000000) == 0)
  {
    if (*(*a2 + 23))
    {
      goto LABEL_4;
    }

LABEL_21:
    v15 = v39;
    goto LABEL_22;
  }

  if (!*(v11 + 8))
  {
    goto LABEL_21;
  }

LABEL_4:
  if (v12 >= 0)
  {
    v13 = *a2;
  }

  else
  {
    v13 = *v11;
  }

  if (v12 >= 0)
  {
    v14 = *(*a2 + 23);
  }

  else
  {
    v14 = *(v11 + 8);
  }

  v15 = v39;
  if (*(v11 + 68) != 1 || (*(v39 + 32) & 1) == 0 || v14 == *(v39 + 24) && (!v14 || !memcmp(v13, *(v39 + 16), v14)))
  {
LABEL_22:
    v39 = 0;
    v37[0] = v15;
    mlir::OpPassManager::addPass(a2, v37);
    if (v37[0])
    {
      (*(*v37[0] + 8))(v37[0]);
    }

    goto LABEL_24;
  }

  v16 = (*(*v15 + 16))(v15);
  v27[0] = "Can't add pass '";
  v27[2] = v16;
  v27[3] = v17;
  v28 = 1283;
  v29[0] = v27;
  v29[2] = "' restricted to '";
  v30 = 770;
  v18 = *(v39 + 16);
  v19 = *(v39 + 24);
  v31[0] = v29;
  v31[2] = v18;
  v31[3] = v19;
  v32 = 1282;
  v33[0] = v31;
  v33[2] = "' on a PassManager intended to run on '";
  v34 = 770;
  v20 = *a2;
  v21 = *(*a2 + 23);
  if (v21 < 0)
  {
    if (*(v20 + 1))
    {
LABEL_17:
      v22 = *(v20 + 1);
      if (v21 < 0)
      {
        v20 = *v20;
        v21 = v22;
      }

      goto LABEL_29;
    }
  }

  else if (*(*a2 + 23))
  {
    goto LABEL_17;
  }

  v20 = "any";
  v21 = 3;
LABEL_29:
  v35[0] = v33;
  v35[2] = v20;
  v35[3] = v21;
  v36 = 1282;
  v37[0] = v35;
  v37[2] = "', did you intend to nest?";
  v38 = 770;
  v10 = v8(v9, v37);
LABEL_24:
  v23 = v39;
  v39 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  return v10;
}

uint64_t std::__function::__value_func<llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t mlir::detail::PassOptions::print(llvm::raw_ostream &)const::$_0::__invoke(void *a1, void *a2)
{
  v6 = *((*(**a1 + 32))(*a1) + 16);
  v4 = (*(**a2 + 32))(*a2, v3);
  return llvm::StringRef::compare(&v6, *(v4 + 16), *(v4 + 24));
}

uint64_t mlir::detail::PassOptions::printHelp(unsigned long,unsigned long)const::$_0::__invoke(void *a1, void *a2)
{
  v6 = *((*(**a1 + 32))(*a1) + 16);
  v4 = (*(**a2 + 32))(*a2, v3);
  return llvm::StringRef::compare(&v6, *(v4 + 16), *(v4 + 24));
}

uint64_t anonymous namespace::TextualPipeline::resolvePipelineElements(uint64_t a1, uint64_t a2, const unsigned __int8 *a3, unint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  v7 = a2 << 6;
  while (1)
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    if (v8 == v9)
    {
      break;
    }

    {
      return 0;
    }

LABEL_9:
    a1 += 64;
    v7 -= 64;
    if (!v7)
    {
      return 1;
    }
  }

  v10 = mlir::PassPipelineInfo::lookup(*a1, *(a1 + 8), a3, a4);
  *(a1 + 32) = v10;
  if (v10)
  {
    goto LABEL_9;
  }

  v11 = mlir::PassInfo::lookup(*a1, *(a1 + 8), a3, a4);
  *(a1 + 32) = v11;
  if (v11)
  {
    goto LABEL_9;
  }

  v12 = *a1;
  v13 = *(a1 + 8);
  v16 = 1283;
  v15[0] = "'";
  v15[2] = v12;
  v15[3] = v13;
  v17 = v15;
  v18 = "' does not refer to a registered pass or pass pipeline";
  v19 = 770;
  if ((a3)(a4))
  {
    goto LABEL_9;
  }

  return 0;
}

void std::vector<anonymous namespace::TextualPipeline::PipelineElement>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 64;
        v7 = (v4 - 24);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(char const*,llvm::Twine)>::callback_fn<anonymous namespace::TextualPipeline::initialize(llvm::StringRef,llvm::raw_ostream &)::$_0>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v11 = *(a3 + 32);
  llvm::SourceMgr::PrintMessage(*a1, *(a1 + 8), a2, 0, v10, 0, 0, a8, 0, 0, 1);
  return 0;
}

uint64_t anonymous namespace::TextualPipeline::addToPipeline(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, void *), uint64_t a5)
{
  if (!a2)
  {
    return 1;
  }

  v8 = (a1 + 24);
  v9 = a2 << 6;
  do
  {
    v10 = v8[1];
    if (!v10)
    {
      mlir::detail::OpPassManagerImpl::nest(*a3);
    }

    if ((std::function<llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::operator()(v10 + 48, a3, *(v8 - 1), *v8, a4, a5) & 1) == 0)
    {
      v15 = 1283;
      v14[2] = *(v8 - 3);
      v14[3] = *(v8 - 2);
      v16[0] = v14;
      v17 = 770;
      v12 = *(v8 - 1);
      v11 = *v8;
      v18[0] = v16;
      v18[2] = v12;
      v18[3] = v11;
      v19 = 1282;
      v20[0] = v18;
      v21 = 770;
      return a4(a5, v20);
    }

    v8 += 8;
    v9 -= 64;
  }

  while (v9);
  return 1;
}

uint64_t std::__function::__value_func<void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::unique_ptr<mlir::Pass> ()(void)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t llvm::object_deleter<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 12))
    {
      v2 = *(result + 8);
      if (v2)
      {
        v3 = 0;
        v4 = 8 * v2;
        do
        {
          v5 = *(*v1 + v3);
          if (v5 != -8 && v5 != 0)
          {
            std::__function::__value_func<void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::~__value_func[abi:nn200100](v5 + 88);
            std::__function::__value_func<llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::~__value_func[abi:nn200100](v5 + 56);
            if (*(v5 + 55) < 0)
            {
              operator delete(*(v5 + 32));
            }

            if (*(v5 + 31) < 0)
            {
              operator delete(*(v5 + 8));
            }

            MEMORY[0x25F891030](v5, 8);
          }

          v3 += 8;
        }

        while (v4 != v3);
      }
    }

    free(*v1);

    JUMPOUT(0x25F891040);
  }

  return result;
}

void llvm::function_ref<void ()(mlir::detail::PassOptions const&)>::callback_fn<mlir::PassRegistryEntry::printHelpStr(unsigned long,unsigned long)::$_0>(size_t *a1, uint64_t a2)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 160);
  v4 = *(a2 + 168);
  __base = v16;
  __nel = 0x400000000;
  llvm::SmallVectorImpl<mlir::detail::PassOptions::OptionBase *>::append<std::__wrap_iter<mlir::detail::PassOptions::OptionBase * const*>,void>(&__base, v5, v4);
  v7 = __nel;
  if (__nel >= 2)
  {
    qsort(__base, __nel, 8uLL, mlir::detail::PassOptions::printHelp(unsigned long,unsigned long)const::$_0::__invoke);
    v7 = __nel;
  }

  v8 = __base;
  if (v7)
  {
    v9 = v3 - v2;
    v10 = 8 * v7;
    do
    {
      v11 = *v8++;
      v12 = llvm::outs(v6);
      llvm::raw_ostream::indent(v12, v2);
      v13 = (*(*v11 + 32))(v11);
      v6 = (*(*v13 + 48))(v13, v9);
      v10 -= 8;
    }

    while (v10);
    v8 = __base;
  }

  if (v8 != v16)
  {
    free(v8);
  }
}

uint64_t **llvm::function_ref<void ()(mlir::detail::PassOptions const&)>::callback_fn<mlir::PassRegistryEntry::getOptionWidth(void)::$_0>(uint64_t **result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 160);
  v4 = *(a2 + 168);
  if (v3 == v4)
  {
    v8 = 2;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *v3++;
      v7 = (*(*v6 + 32))(v6);
      result = (*(*v7 + 40))(v7);
      if (v5 <= result)
      {
        v5 = result;
      }
    }

    while (v3 != v4);
    v8 = v5 + 2;
  }

  **v2 = v8;
  return result;
}

uint64_t llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 12))
    {
      v2 = *(result + 8);
      if (v2)
      {
        v3 = 0;
        v4 = 8 * v2;
        do
        {
          v5 = *(*v1 + v3);
          if (v5 != -8 && v5 != 0)
          {
            std::__function::__value_func<void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::~__value_func[abi:nn200100](v5 + 88);
            std::__function::__value_func<llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::~__value_func[abi:nn200100](v5 + 56);
            if (*(v5 + 55) < 0)
            {
              operator delete(*(v5 + 32));
            }

            if (*(v5 + 31) < 0)
            {
              operator delete(*(v5 + 8));
            }

            MEMORY[0x25F891030](v5, 8);
          }

          v3 += 8;
        }

        while (v4 != v3);
      }
    }

    free(*v1);

    JUMPOUT(0x25F891040);
  }

  return result;
}

void *std::__function::__func<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::~__func(void *a1)
{
  *a1 = &unk_286E84D80;
  std::__function::__value_func<std::unique_ptr<mlir::Pass> ()(void)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void std::__function::__func<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::~__func(void *a1)
{
  *a1 = &unk_286E84D80;
  std::__function::__value_func<std::unique_ptr<mlir::Pass> ()(void)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x25F891040);
}

void std::__function::__func<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<std::unique_ptr<mlir::Pass> ()(void)>::~__value_func[abi:nn200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    llvm::object_creator<llvm::StringMap<mlir::TypeID,llvm::MallocAllocator>>::call();
  }

  v4 = *a2;
  v3 = *(a2 + 8);
  (*(*v2 + 48))(&v6);
  v4(v3, v6 + 144);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t llvm::object_deleter<llvm::StringMap<mlir::TypeID,llvm::MallocAllocator>>::call(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 12))
    {
      v2 = *(result + 8);
      if (v2)
      {
        v3 = 0;
        v4 = 8 * v2;
        do
        {
          v5 = *(*v1 + v3);
          if (v5 != -8 && v5 != 0)
          {
            MEMORY[0x25F891030]();
          }

          v3 += 8;
        }

        while (v4 != v3);
      }
    }

    free(*v1);

    JUMPOUT(0x25F891040);
  }

  return result;
}

void llvm::SmallVectorImpl<mlir::detail::PassOptions::OptionBase *>::append<std::__wrap_iter<mlir::detail::PassOptions::OptionBase * const*>,void>(uint64_t a1, char *a2, char *a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - a2) >> 3);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    LODWORD(v7) = *(a1 + 8);
  }

  if (a3 != v4)
  {
    v9 = (*a1 + 8 * v7);
    do
    {
      v10 = *v4;
      v4 += 8;
      *v9++ = v10;
    }

    while (v4 != a3);
  }

  *(a1 + 8) = v7 + (v6 >> 3);
}

uint64_t **std::unique_ptr<mlir::OpPassManager>::reset[abi:nn200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<mlir::detail::OpPassManagerImpl>::reset[abi:nn200100](v2, 0);

    JUMPOUT(0x25F891040);
  }

  return result;
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>::callback_fn<mlir::parsePassPipeline(llvm::StringRef,mlir::OpPassManager &,llvm::raw_ostream &)::$_0>(llvm::raw_ostream **a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v2;
  v7 = *(a2 + 32);
  v3 = *a1;
  llvm::Twine::print(v6, *a1);
  v4 = *(v3 + 4);
  if (*(v3 + 3) == v4)
  {
    llvm::raw_ostream::write(v3, "\n", 1uLL);
  }

  else
  {
    *v4 = 10;
    ++*(v3 + 4);
  }

  return 0;
}

uint64_t mlir::detail::PassPipelineCLParserImpl::PassPipelineCLParserImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = llvm::cl::Option::Option(a1, 1, 0);
  *(v12 + 152) = 0u;
  *(v12 + 136) = 0u;
  *(v12 + 120) = 0u;
  *(v12 + 168) = 0;
  *v12 = &unk_286E84DC8;
  *(v12 + 176) = 0;
  *(v12 + 184) = 0u;
  *(v12 + 216) = v12 + 232;
  v13 = (v12 + 216);
  *(v12 + 224) = 0x800000000;
  *(v12 + 200) = &unk_286E84E30;
  *(v12 + 208) = v12;
  *(v12 + 744) = 0;
  *(v12 + 752) = &unk_286E84ED0;
  *(v12 + 776) = v12 + 752;
  llvm::cl::Option::setArgStr(v12, a2, a3, v14, v15, v16);
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  llvm::cl::Option::addArgument(a1);
  if (!atomic_load_explicit(_MergedGlobals_26, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(_MergedGlobals_26, llvm::object_creator<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call);
  }

  v17 = *(_MergedGlobals_26[0] + 8);
  if (v17)
  {
      ;
    }
  }

  else
  {
    i = *_MergedGlobals_26[0];
  }

  v20 = *_MergedGlobals_26[0] + 8 * v17;
  if (i != v20)
  {
    v21 = *i;
    do
    {
      v24 = *(v21 + 8);
      v22 = v21 + 8;
      v23 = v24;
      v25 = *(v22 + 23);
      if (v25 >= 0)
      {
        v26 = v22;
      }

      else
      {
        v26 = v23;
      }

      if (v25 >= 0)
      {
        v27 = *(v22 + 23);
      }

      else
      {
        v27 = *(v22 + 8);
      }

      v28 = *(v22 + 47);
      v29 = v22 + 24;
      if (v28 < 0)
      {
        v29 = *(v22 + 24);
      }

      if (v28 < 0)
      {
        v28 = *(v22 + 32);
      }

      v48 = v26;
      v49 = v27;
      v50 = v29;
      v51 = v28;
      v52 = &unk_286E84F18;
      v53 = v22;
      v54 = 0;
      v55 = 0;
      llvm::cl::AddLiteralOption(*(a1 + 208), v26, v27);
      do
      {
        v30 = i[1];
        ++i;
        v21 = v30;
        if (v30)
        {
          v31 = v21 == -8;
        }

        else
        {
          v31 = 1;
        }
      }

      while (v31);
    }

    while (i != v20);
  }

  if ((*(a1 + 744) & 1) == 0)
  {
    if (!atomic_load_explicit(qword_27FC1EE70, memory_order_acquire))
    {
      llvm::ManagedStaticBase::RegisterManagedStatic(qword_27FC1EE70, llvm::object_creator<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call);
    }

    v32 = *(qword_27FC1EE70[0] + 8);
    if (v32)
    {
        ;
      }
    }

    else
    {
      j = *qword_27FC1EE70[0];
    }

    v35 = *qword_27FC1EE70[0] + 8 * v32;
    if (j != v35)
    {
      v36 = *j;
      do
      {
        v39 = *(v36 + 8);
        v37 = v36 + 8;
        v38 = v39;
        v40 = *(v37 + 23);
        if (v40 >= 0)
        {
          v41 = v37;
        }

        else
        {
          v41 = v38;
        }

        if (v40 >= 0)
        {
          v42 = *(v37 + 23);
        }

        else
        {
          v42 = *(v37 + 8);
        }

        v43 = *(v37 + 47);
        v44 = v37 + 24;
        if (v43 < 0)
        {
          v44 = *(v37 + 24);
        }

        if (v43 < 0)
        {
          v43 = *(v37 + 32);
        }

        v48 = v41;
        v49 = v42;
        v50 = v44;
        v51 = v43;
        v52 = &unk_286E84F18;
        v53 = v37;
        v54 = 0;
        v55 = 0;
        llvm::cl::AddLiteralOption(*(a1 + 208), v41, v42);
        do
        {
          v45 = j[1];
          ++j;
          v36 = v45;
          if (v45)
          {
            v46 = v36 == -8;
          }

          else
          {
            v46 = 1;
          }
        }

        while (v46);
      }

      while (j != v35);
    }
  }

  *(a1 + 744) = a6;
  *(a1 + 10) = *(a1 + 10) & 0xFFE7 | 8;
  return a1;
}

uint64_t llvm::cl::list<anonymous namespace::PassArgData,BOOL,anonymous namespace::PassNameParser>::handleOccurrence(uint64_t a1, int a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v9 = a1;
  v32 = 0uLL;
  v33 = 0;
  if (*(a1 + 168) == 1)
  {
    *(a1 + 184) = *(a1 + 176);
    *(a1 + 128) = *(a1 + 120);
    *(a1 + 168) = 0;
  }

  v10 = *(*(a1 + 208) + 24);
  if (v10)
  {
    a3 = a5;
  }

  if (v10)
  {
    a4 = a6;
  }

  v13 = *(a1 + 224);
  if (v13)
  {
    v14 = *(a1 + 216);
    while (1)
    {
      if (*(v14 + 8) == a4)
      {
        if (!a4)
        {
          break;
        }

        a1 = memcmp(*v14, a3, a4);
        if (!a1)
        {
          break;
        }
      }

      v14 += 64;
      if (!--v13)
      {
        goto LABEL_15;
      }
    }

    *&v32 = *(v14 + 40);
  }

  else
  {
LABEL_15:
    v35 = 1283;
    v34[0] = "Cannot find option named '";
    v34[2] = a3;
    v34[3] = a4;
    v36[0] = v34;
    v36[2] = "'!";
    v37 = 770;
    v15 = llvm::errs(a1);
    if (llvm::cl::Option::error(v9, v36, 0, 0, v15))
    {
      return 1;
    }
  }

  *(&v32 + 1) = a5;
  v33 = a6;
  *(v9 + 12) = a2;
  v18 = *(v9 + 184);
  v17 = *(v9 + 192);
  if (v18 >= v17)
  {
    v20 = *(v9 + 176);
    v21 = v18 - v20;
    v22 = (v18 - v20) >> 2;
    v23 = v22 + 1;
    if ((v22 + 1) >> 62)
    {
      goto LABEL_32;
    }

    v24 = v17 - v20;
    if (v24 >> 1 > v23)
    {
      v23 = v24 >> 1;
    }

    v25 = v24 >= 0x7FFFFFFFFFFFFFFCLL;
    v26 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v25)
    {
      v26 = v23;
    }

    if (v26)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v9 + 176, v26);
    }

    v27 = (v18 - v20) >> 2;
    v28 = (4 * v22);
    v29 = (4 * v22 - 4 * v27);
    *v28 = a2;
    v19 = v28 + 1;
    memcpy(v29, v20, v21);
    v30 = *(v9 + 176);
    *(v9 + 176) = v29;
    *(v9 + 184) = v19;
    *(v9 + 192) = 0;
    if (v30)
    {
      operator delete(v30);
    }
  }

  else
  {
    *v18 = a2;
    v19 = v18 + 4;
  }

  *(v9 + 184) = v19;
  v31 = *(v9 + 776);
  if (!v31)
  {
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_32:
    std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
  }

  (*(*v31 + 48))(v31, &v32);
  return 0;
}