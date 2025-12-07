void health::FormatterParameters<0ul,health::FileExtent &,health::FileExtent const&>::formatOptionsAtIndex<health::FileExtent &,health::FileExtent const&>(uint64_t a1)
{
  if (a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v1 = exception;
    if (a1 == 1)
    {
      std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    }

    else
    {
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
    }
  }

  else
  {
    v1 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v1, "Requested parameter is not an FormatOptions instance.");
  }

  __cxa_throw(v1, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void health::FormatString<long long const&,unsigned long const&>(std::string *a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a3;
  v3[1] = a2;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<long long const&,unsigned long const&>("({0}, {1})", a1, 0, v3);
}

void sub_228D43E14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void health::FormatImplementation<long long const&,unsigned long const&>(std::string *a1, std::string *a2, std::string::size_type a3, void *a4)
{
  v53 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (!a1->__r_.__value_.__s.__data_[0])
  {

    std::string::resize(a2, a3, 0);
    return;
  }

  v9 = 0;
  v10 = 0;
  v11 = a1;
  while (v6 != 123)
  {
LABEL_6:
    v53 = &v11->__r_.__value_.__s.__data_[1];
    v6 = v11->__r_.__value_.__s.__data_[1];
    --v9;
    v11 = (v11 + 1);
    if (!v6)
    {
      std::string::resize(a2, a3 - v9, 0);
      if (v9)
      {

        health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
      }

      return;
    }
  }

  v12 = v11->__r_.__value_.__s.__data_[1];
  if (v12 == 123)
  {
    v10 = 1;
    v11 = (v11 + 1);
    goto LABEL_6;
  }

  if (v12 == 42)
  {
    v53 = &v11->__r_.__value_.__s.__data_[2];
    v41 = v11->__r_.__value_.__s.__data_[2];
    if ((v41 - 48) > 9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
    }

    else
    {
      v42 = 0;
      v43 = &v11->__r_.__value_.__s.__data_[3];
      do
      {
        v53 = v43;
        v42 = (v41 & 0xF) + 10 * v42;
        v44 = *v43++;
        LOBYTE(v41) = v44;
      }

      while ((v44 - 58) >= 0xFFFFFFF6);
      v53 = v43;
      if (*(v43 - 1) == 125)
      {
        health::FormatterParameters<0ul,long long const&,unsigned long const&>::formatOptionsAtIndex<long long const&,unsigned long const&>(v42);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_102;
  }

  health::FormatOptions::FormatOptions(&v46, &v53);
  v13 = v53;
  if (v47)
  {
    if (v47 == 1)
    {
      v14 = *a4;
      v54[1] = 0;
      v55 = 0;
      v54[0] = 0;
      std::ostringstream::basic_ostringstream[abi:ne200100](&v58);
      v15 = v58;
      if (v48 == 1)
      {
        *(&v60[1].__locale_ + *(v58 - 24)) = v49;
      }

      if (v50 == 1)
      {
        *(&v60[0].__locale_ + *(v15 - 24)) = v51;
      }

      v16 = (&v58 + *(v15 - 24));
      v17 = __c;
      if (v16[1].__fmtflags_ == -1)
      {
        std::ios_base::getloc(v16);
        v18 = std::locale::use_facet(v56, MEMORY[0x277D82680]);
        (v18->__vftable[2].~facet_0)(v18, 32);
        std::locale::~locale(v56);
      }

      v16[1].__fmtflags_ = v17;
      MEMORY[0x22AAC83C0](&v58, *v14);
      std::ostringstream::str[abi:ne200100](&v58, v56);
      *v54 = *&v56[0].__locale_;
      v55 = v57;
      v58 = *MEMORY[0x277D82828];
      *(&v58 + *(v58 - 24)) = *(MEMORY[0x277D82828] + 24);
      v59 = MEMORY[0x277D82878] + 16;
      if (v62 < 0)
      {
        operator delete(__p);
      }

      v59 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v60);
      std::ostream::~ostream();
      MEMORY[0x22AAC8550](v63);
      v19 = SHIBYTE(v55);
      if (v55 >= 0)
      {
        v20 = HIBYTE(v55);
      }

      else
      {
        v20 = v54[1];
      }

      v21 = v49;
      if (v49 <= v20)
      {
        v21 = v20;
      }

      if (v48)
      {
        v22 = v21;
      }

      else
      {
        v22 = v20;
      }

      goto LABEL_49;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_102:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v23 = a4[1];
  v54[1] = 0;
  v55 = 0;
  v54[0] = 0;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v58);
  v24 = v58;
  if (v48 == 1)
  {
    *(&v60[1].__locale_ + *(v58 - 24)) = v49;
  }

  if (v50 == 1)
  {
    *(&v60[0].__locale_ + *(v24 - 24)) = v51;
  }

  v25 = (&v58 + *(v24 - 24));
  v26 = __c;
  if (v25[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v25);
    v27 = std::locale::use_facet(v56, MEMORY[0x277D82680]);
    (v27->__vftable[2].~facet_0)(v27, 32);
    std::locale::~locale(v56);
  }

  v25[1].__fmtflags_ = v26;
  MEMORY[0x22AAC83E0](&v58, *v23);
  std::ostringstream::str[abi:ne200100](&v58, v56);
  *v54 = *&v56[0].__locale_;
  v55 = v57;
  v58 = *MEMORY[0x277D82828];
  *(&v58 + *(v58 - 24)) = *(MEMORY[0x277D82828] + 24);
  v59 = MEMORY[0x277D82878] + 16;
  if (v62 < 0)
  {
    operator delete(__p);
  }

  v59 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v60);
  std::ostream::~ostream();
  MEMORY[0x22AAC8550](v63);
  v19 = SHIBYTE(v55);
  if (v55 >= 0)
  {
    v20 = HIBYTE(v55);
  }

  else
  {
    v20 = v54[1];
  }

  v28 = v49;
  if (v49 <= v20)
  {
    v28 = v20;
  }

  if (v48)
  {
    v22 = v28;
  }

  else
  {
    v22 = v20;
  }

LABEL_49:
  health::FormatImplementation<long long const&,unsigned long const&>(v13, a2, v22 + a3 - v9, a4);
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = a2;
  }

  else
  {
    v29 = a2->__r_.__value_.__r.__words[0];
  }

  v30 = v29 + a3 - v9;
  if (v48 == 1 && (v31 = v49 - v20, v49 > v20))
  {
    if (v46)
    {
      if (v46 != 1)
      {
        if (v46 == 2)
        {
          memset(v30, __c, v49 - v20);
          if (v20)
          {
            if (v19 >= 0)
            {
              v32 = v54;
            }

            else
            {
              v32 = v54[0];
            }

            v33 = &v30[v31];
            goto LABEL_67;
          }
        }

        goto LABEL_68;
      }

      if (v31 >= 2)
      {
        if (v31 >> 1 <= 1)
        {
          v34 = 1;
        }

        else
        {
          v34 = v31 >> 1;
        }

        memset(v30, __c, v34);
        v30 += v34;
      }

      v35 = v31 - (v31 >> 1);
      if (v20)
      {
        if (v19 >= 0)
        {
          v36 = v54;
        }

        else
        {
          v36 = v54[0];
        }

        memmove(v30, v36, v20);
      }

      if (v35 <= 1)
      {
        v37 = 1;
      }

      else
      {
        v37 = v35;
      }

      v38 = __c;
      v39 = &v30[v20];
    }

    else
    {
      if (v20)
      {
        if (v19 >= 0)
        {
          v40 = v54;
        }

        else
        {
          v40 = v54[0];
        }

        memmove(v30, v40, v20);
      }

      v38 = __c;
      v39 = &v30[v20];
      v37 = v31;
    }

    memset(v39, v38, v37);
    if (v19 < 0)
    {
LABEL_69:
      operator delete(v54[0]);
    }
  }

  else
  {
    if (v20)
    {
      if (v19 >= 0)
      {
        v32 = v54;
      }

      else
      {
        v32 = v54[0];
      }

      v33 = v29 + a3 - v9;
LABEL_67:
      memmove(v33, v32, v20);
    }

LABEL_68:
    if (v19 < 0)
    {
      goto LABEL_69;
    }
  }

  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,long long const&,unsigned long const&>::formatOptionsAtIndex<long long const&,unsigned long const&>(uint64_t a1)
{
  if (a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v1 = exception;
    if (a1 == 1)
    {
      std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    }

    else
    {
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
    }
  }

  else
  {
    v1 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v1, "Requested parameter is not an FormatOptions instance.");
  }

  __cxa_throw(v1, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<health::FileExtent>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void health::FormatImplementation<health::FileExtent &,health::FileExtent &>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t *a4)
{
  v27 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (!a1->__r_.__value_.__s.__data_[0])
  {

    std::string::resize(a2, a3, 0);
    return;
  }

  v9 = 0;
  v10 = 0;
  v11 = a1;
  while (v6 != 123)
  {
LABEL_6:
    v27 = &v11->__r_.__value_.__s.__data_[1];
    v6 = v11->__r_.__value_.__s.__data_[1];
    --v9;
    v11 = (v11 + 1);
    if (!v6)
    {
      std::string::resize(a2, a3 - v9, 0);
      if (v9)
      {

        health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
      }

      return;
    }
  }

  v12 = v11->__r_.__value_.__s.__data_[1];
  if (v12 == 123)
  {
    v10 = 1;
    v11 = (v11 + 1);
    goto LABEL_6;
  }

  if (v12 == 42)
  {
    v27 = &v11->__r_.__value_.__s.__data_[2];
    v18 = v11->__r_.__value_.__s.__data_[2];
    if ((v18 - 48) > 9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
    }

    else
    {
      v19 = 0;
      v20 = &v11->__r_.__value_.__s.__data_[3];
      do
      {
        v27 = v20;
        v19 = (v18 & 0xF) + 10 * v19;
        v21 = *v20++;
        LOBYTE(v18) = v21;
      }

      while ((v21 - 58) >= 0xFFFFFFF6);
      v27 = v20;
      if (*(v20 - 1) == 125)
      {
        health::FormatterParameters<0ul,health::FileExtent &,health::FileExtent &>::formatOptionsAtIndex<health::FileExtent &,health::FileExtent &>(v19);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_45;
  }

  health::FormatOptions::FormatOptions(v23, &v27);
  v13 = v27;
  if (v24)
  {
    if (v24 == 1)
    {
      health::FormatString<long long const&,unsigned long const&>(&__p, *a4, *a4 + 8);
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v15 = v26;
      if (v26 <= size)
      {
        v15 = size;
      }

      if (v25)
      {
        size = v15;
      }

      goto LABEL_30;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_45:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  health::FormatString<long long const&,unsigned long const&>(&__p, a4[1], a4[1] + 8);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v16 = v26;
  if (v26 <= size)
  {
    v16 = size;
  }

  if (v25)
  {
    size = v16;
  }

LABEL_30:
  health::FormatImplementation<health::FileExtent &,health::FileExtent &>(v13, a2, size + a3 - v9, a4);
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = a2->__r_.__value_.__r.__words[0];
  }

  health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(v23, v17 + a3 - v9, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,health::FileExtent &,health::FileExtent &>::formatOptionsAtIndex<health::FileExtent &,health::FileExtent &>(uint64_t a1)
{
  if (a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v1 = exception;
    if (a1 == 1)
    {
      std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    }

    else
    {
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
    }
  }

  else
  {
    v1 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v1, "Requested parameter is not an FormatOptions instance.");
  }

  __cxa_throw(v1, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t health::BTree<health::BlockAccessFile::ReadTransaction::FreeSpaceMapReadConfiguration>::_enumerateAllValues<health::BlockAccessFile::ReadTransaction::_enumerateFreeSpaceBlocks(std::function<void ()(health::FileExtent const&)>)::$_0>(uint64_t result, uint64_t a2, int a3, uint64_t *a4)
{
  v6 = result;
  v7 = *(a2 + 1632);
  v8 = **(result + 8);
  if (*(a2 + 1776))
  {
    v9 = 0;
    do
    {
      if (v7 != v8)
      {
        v10 = *(v6 + 8);
        v11 = health::StaticArray<unsigned long long,18ul>::operator[](a2 + 1632, v9);
        bzero(v26, 0x6F2uLL);
        health::TransactionalFile::ReadTransaction::readObjectAtOffset<health::BTreeNode<unsigned long long,health::BlockAccessFile::FreeSpaceList,unsigned long long,17>>(**(v10 + 8), v26, *v11);
        health::BTree<health::BlockAccessFile::ReadTransaction::FreeSpaceMapReadConfiguration>::_enumerateAllValues<health::BlockAccessFile::ReadTransaction::_enumerateFreeSpaceBlocks(std::function<void ()(health::FileExtent const&)>)::$_0>(v6, v26, a3 + 1, a4);
      }

      v12 = *health::StaticArray<health::BTreeNode<unsigned long long,health::BlockAccessFile::FreeSpaceList,unsigned long long,17>::ValueEntry,17ul>::operator[](a2, v9);
      v13 = health::StaticArray<health::BTreeNode<unsigned long long,health::BlockAccessFile::FreeSpaceList,unsigned long long,17>::ValueEntry,17ul>::operator[](a2, v9);
      v14 = 0;
      v15 = a4[1];
      do
      {
        result = health::StaticArray<unsigned long long,10ul>::operator[](v13 + 8, v14);
        if (*result)
        {
          v16 = *a4;
          *&v26[0] = *result;
          *(&v26[0] + 1) = v12;
          v17 = *(v16 + 24);
          if (!v17)
          {
LABEL_23:
            std::__throw_bad_function_call[abi:ne200100]();
          }

          result = (*(*v17 + 48))(v17, v26);
        }

        ++v14;
      }

      while (v14 != 10);
      v18 = *(v13 + 88);
      if (v18)
      {
        do
        {
          v27 = 0;
          memset(v26, 0, sizeof(v26));
          health::TransactionalFile::ReadTransaction::readObjectAtOffset<health::BlockAccessFile::FreeSpaceList>(*v15, v26, v18);
          for (i = 0; i != 10; ++i)
          {
            result = health::StaticArray<unsigned long long,10ul>::operator[](v26, i);
            if (*result)
            {
              v20 = *a4;
              v28[0] = *result;
              v28[1] = v12;
              v21 = *(v20 + 24);
              if (!v21)
              {
                goto LABEL_23;
              }

              result = (*(*v21 + 48))(v21, v28);
            }
          }

          v18 = v27;
        }

        while (v27);
      }

      ++v9;
      v22 = *(a2 + 1776);
    }

    while (v9 < v22);
  }

  else
  {
    v22 = 0;
  }

  if (v7 != v8)
  {
    v23 = *(v6 + 8);
    v24 = health::StaticArray<unsigned long long,18ul>::operator[](a2 + 1632, v22);
    bzero(v26, 0x6F2uLL);
    health::TransactionalFile::ReadTransaction::readObjectAtOffset<health::BTreeNode<unsigned long long,health::BlockAccessFile::FreeSpaceList,unsigned long long,17>>(**(v23 + 8), v26, *v24);
    return health::BTree<health::BlockAccessFile::ReadTransaction::FreeSpaceMapReadConfiguration>::_enumerateAllValues<health::BlockAccessFile::ReadTransaction::_enumerateFreeSpaceBlocks(std::function<void ()(health::FileExtent const&)>)::$_0>(v6, v26, a3 + 1, a4);
  }

  return result;
}

uint64_t health::TransactionalFile::ReadTransaction::readObjectAtOffset<health::BlockAccessFile::FreeSpaceList>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = 88;
  v13[0] = v15;
  v13[1] = v15;
  v13[2] = 88;
  health::RawBuffer::RawBuffer(v12, v15, 88);
  v8 = a1 + 8;
  v6 = *(a1 + 8);
  v7 = *(v8 + 8);
  health::RawBuffer::RawBuffer(v14, v12[0], v12[1]);
  health::TransactionalFile::_readBufferAtOffset(v7, v6, v14, a3);
  for (i = 0; i != 10; ++i)
  {
    v10 = health::StaticArray<unsigned long long,10ul>::operator[](a2, i);
    v14[0] = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(v13, v14);
    *v10 = v14[0];
  }

  v14[0] = 0;
  health::DeserializationBuffer::extractRaw<unsigned long long>(v13, v14);
  *(a2 + 80) = v14[0];
  result = v16;
  v16 = 0;
  if (result)
  {
    return MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  return result;
}

void sub_228D44F14(_Unwind_Exception *a1)
{
  v2 = STACK[0x438];
  STACK[0x438] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

uint64_t health::BlockAccessFile::WriteTransaction::updateObject<health::ByteRange<void const,unsigned long long>>(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v9 = (a4 + 8);
  v8 = *(a4 + 8);
  health::SmartBuffer::SmartBuffer(v15, v8);
  if (v17 <= 0x3FF)
  {
    v10 = v15;
  }

  else
  {
    v10 = v16;
  }

  v14[0] = v10;
  v14[1] = v10;
  v14[2] = v8;
  health::SerializationBuffer::appendBytes(v14, *a4, *v9);
  if (v17 <= 0x3FF)
  {
    v11 = v15;
  }

  else
  {
    v11 = v16;
  }

  health::RawBuffer::RawBuffer(v13, v11, v17);
  health::BlockAccessFile::WriteTransaction::updateBlock(a1, a2, a3, v13);
  result = v16;
  v16 = 0;
  if (result)
  {
    return MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  return result;
}

void sub_228D4504C(_Unwind_Exception *a1)
{
  v2 = STACK[0x428];
  STACK[0x428] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

void *health::SerializationBuffer::appendBytes(health::SerializationBuffer *this, const void *__src, size_t __n)
{
  if (*(this + 2) < __n)
  {
    v5 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v11, "length <= _length");
    std::string::basic_string[abi:ne200100]<0>(v10, "appendBytes");
    std::string::basic_string[abi:ne200100]<0>(v9, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDEncoder.h");
    health::FormatString<>("Append would overflow serialization buffer.", &__p);
    health::_HDAssertImplementation<std::out_of_range>(v5, v11, v10, v9, 43, &__p);
  }

  result = memcpy(*(this + 1), __src, __n);
  v7 = *(this + 2) - __n;
  *(this + 1) += __n;
  *(this + 2) = v7;
  return result;
}

void sub_228D45190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

__n128 std::deque<health::BlockPointer>::push_back(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<health::BlockPointer>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

void std::deque<health::BlockPointer>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<statistics::Interval>>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<health::BlockPointer *>::emplace_back<health::BlockPointer *&>(a1, &v9);
}

void sub_228D45408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__split_buffer<health::BlockPointer *>::emplace_back<health::BlockPointer *&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<statistics::Interval>>>(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<health::BlockPointer *>::emplace_front<health::BlockPointer *>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<statistics::Interval>>>(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__split_buffer<health::BlockPointer *>::emplace_back<health::BlockPointer *>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<statistics::Interval>>>(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<health::BlockPointer *>::emplace_front<health::BlockPointer *&>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<statistics::Interval>>>(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

uint64_t std::deque<health::BlockPointer>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x100)
  {
    a2 = 1;
  }

  if (v2 < 0x200)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }

  return v4 ^ 1u;
}

uint64_t HDCloudSyncCodableAttachmentReferenceTombstonesReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HDCloudSyncCodableAttachmentReferenceTombstone);
        [a1 addAttachmentReferenceTombstone:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HDCloudSyncCodableAttachmentReferenceTombstoneReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableFHIRCredentialReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v35) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35 & 0x7F) << v5;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            *(a1 + 84) |= 2u;
            v35 = 0;
            v19 = [a2 position] + 8;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v35 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v30 = v35;
            v31 = 16;
            goto LABEL_65;
          }

          if (v13 == 7)
          {
            *(a1 + 84) |= 1u;
            v35 = 0;
            v17 = [a2 position] + 8;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v35 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v30 = v35;
            v31 = 8;
LABEL_65:
            *(a1 + v31) = v30;
            goto LABEL_66;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v21 = 0;
              v22 = 0;
              v23 = 0;
              *(a1 + 84) |= 4u;
              while (1)
              {
                LOBYTE(v35) = 0;
                v24 = [a2 position] + 1;
                if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
                {
                  v26 = [a2 data];
                  [v26 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v23 |= (v35 & 0x7F) << v21;
                if ((v35 & 0x80) == 0)
                {
                  break;
                }

                v21 += 7;
                v11 = v22++ >= 9;
                if (v11)
                {
                  LOBYTE(v27) = 0;
                  goto LABEL_60;
                }
              }

              v27 = (v23 != 0) & ~[a2 hasError];
LABEL_60:
              *(a1 + 80) = v27;
              goto LABEL_66;
            case 9:
              v16 = objc_alloc_init(HDCodableMessageVersion);
              objc_storeStrong((a1 + 40), v16);
              v35 = 0;
              v36 = 0;
              if (!PBReaderPlaceMark() || !HDCodableMessageVersionReadFrom(v16, a2))
              {
LABEL_68:

                return 0;
              }

              goto LABEL_56;
            case 0xA:
              v16 = objc_alloc_init(HDCodableSyncIdentity);
              objc_storeStrong((a1 + 72), v16);
              v35 = 0;
              v36 = 0;
              if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v16, a2))
              {
                goto LABEL_68;
              }

LABEL_56:
              PBReaderRecallMark();

              goto LABEL_66;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadData();
          v15 = 32;
          goto LABEL_53;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadData();
          v15 = 24;
          goto LABEL_53;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadString();
            v15 = 64;
            goto LABEL_53;
          case 4:
            v14 = PBReaderReadString();
            v15 = 56;
            goto LABEL_53;
          case 5:
            v14 = PBReaderReadString();
            v15 = 48;
LABEL_53:
            v28 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_66;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_66:
      v33 = [a2 position];
    }

    while (v33 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableOnboardingCompletionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v49[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v49 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v49[0] & 0x7F) << v5;
        if ((v49[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        break;
      }

      if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v15 = PBReaderReadString();
          v16 = 40;
          goto LABEL_59;
        }

        if (v13 == 6)
        {
          *(a1 + 76) |= 4u;
          v49[0] = 0;
          v19 = [a2 position] + 8;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:v49 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v44 = v49[0];
          v45 = 24;
LABEL_86:
          *(a1 + v45) = v44;
          goto LABEL_87;
        }

LABEL_69:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_87;
      }

      if (v13 == 7)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 76) |= 0x10u;
        while (1)
        {
          LOBYTE(v49[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v49[0] & 0x7F) << v28;
          if ((v49[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            LOBYTE(v34) = 0;
            goto LABEL_76;
          }
        }

        v34 = (v30 != 0) & ~[a2 hasError];
LABEL_76:
        *(a1 + 72) = v34;
        goto LABEL_87;
      }

      if (v13 == 8)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 76) |= 2u;
        while (1)
        {
          LOBYTE(v49[0]) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v49[0] & 0x7F) << v36;
          if ((v49[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_80;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v38;
        }

LABEL_80:
        v42 = 16;
LABEL_81:
        *(a1 + v42) = v27;
        goto LABEL_87;
      }

      if (v13 != 9)
      {
        goto LABEL_69;
      }

      v14 = objc_alloc_init(HDCodableSyncIdentity);
      objc_storeStrong((a1 + 56), v14);
      v49[0] = 0;
      v49[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_87:
      v47 = [a2 position];
      if (v47 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 76) |= 8u;
        while (1)
        {
          LOBYTE(v49[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v49[0] & 0x7F) << v21;
          if ((v49[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_74;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_74:
        v42 = 32;
        goto LABEL_81;
      }

      if (v13 == 4)
      {
        *(a1 + 76) |= 1u;
        v49[0] = 0;
        v17 = [a2 position] + 8;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
        {
          v43 = [a2 data];
          [v43 getBytes:v49 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v44 = v49[0];
        v45 = 8;
        goto LABEL_86;
      }
    }

    else
    {
      if (v13 == 1)
      {
        v15 = PBReaderReadData();
        v16 = 64;
        goto LABEL_59;
      }

      if (v13 == 2)
      {
        v15 = PBReaderReadString();
        v16 = 48;
LABEL_59:
        v35 = *(a1 + v16);
        *(a1 + v16) = v15;

        goto LABEL_87;
      }
    }

    goto LABEL_69;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _HDMakeSleepStagesInfo@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  a2[2] = 0x7FFFFFFFFFFFFFFFLL;
  return result;
}

double HDStatisticsSleepStages::splitSampleAtTime@<D0>(double *a1@<X0>, double *a2@<X8>, int a3@<W1>, double a4@<D0>)
{
  HDRawQuantitySample::splitAtTime(a1, a3, a2, a4);
  result = *a1;
  *a2 = *a1;
  a2[5] = result;
  return result;
}

void HDStatisticsSleepStages::splitSampleAtTime(__n128 *a1, __n128 *a2, int a3, __n128 a4)
{
  v6 = a1->n128_u64[0];
  HDRawQuantitySample::splitAtTime(a1, a2, a3, a4);
  a1->n128_u64[0] = v6;
  a2->n128_u64[0] = v6;
}

double HDStatisticsSleepStages::addSample(HDStatisticsSleepStages *this, const HDRawQuantitySample *a2, int a3)
{
  if (a3)
  {
    ++*this;
  }

  var1 = a2->var1;
  v4 = (this + 24 * a2->var0);
  v5 = v4[3];
  v6 = *(v4 + 4);
  var2 = a2->var2;
  v8 = *(this + 1);
  if (v8 < v6)
  {
    v6 = v8 + 1;
    *(this + 1) = v8 + 1;
  }

  result = v5 + var2 - var1;
  v4[3] = result;
  *(v4 + 4) = v6;
  return result;
}

uint64_t HDStatisticsSleepStages::prevailingSleepStage(HDStatisticsSleepStages *this)
{
  v1 = (this + 32);
  v2 = 0.0;
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = 144;
  result = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v6 = *(v1 - 1);
    if (v6 > 2.22507386e-308 && v6 >= v2)
    {
      if (v6 <= v2)
      {
        if (*v1 < v3)
        {
          result = *(v1 - 2);
          v2 = *(v1 - 1);
          v3 = *v1;
        }
      }

      else
      {
        result = *(v1 - 2);
        v3 = *v1;
        v2 = *(v1 - 1);
      }
    }

    v1 += 3;
    v4 -= 24;
  }

  while (v4);
  return result;
}

void HDStatisticsSleepStages::unarchive(HDStatisticsSleepStages *this, const statistics::Statistics *a2)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "Unarchiving sleep stage statistics is not currently supported.");
  __cxa_throw(exception, off_278612E88, MEMORY[0x277D82610]);
}

std::logic_error *std::invalid_argument::invalid_argument[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828F8] + 16);
  return result;
}

void HDStatisticsSleepStages::archive(HDStatisticsSleepStages *this)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "Archiving sleep stage statistics is not currently supported.");
  __cxa_throw(exception, off_278612E88, MEMORY[0x277D82610]);
}

uint64_t HDCodableWorkoutZonesReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HDCodableSample);
        objc_storeStrong((a1 + 8), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableSampleReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadData();
    v13 = *(a1 + 16);
    *(a1 + 16) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableTinkerEndToEndCloudSyncRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_228D58C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__115(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228D59FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v31 - 184), 8);
  _Block_object_dispose((v31 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__116(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCloudSyncCodableStoreReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v62) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v62 & 0x7F) << v5;
        if ((v62 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 19)
      {
        if (v13 <= 3)
        {
          switch(v13)
          {
            case 1:
              v23 = PBReaderReadString();
              v24 = 32;
              goto LABEL_106;
            case 2:
              v23 = PBReaderReadString();
              v24 = 40;
              goto LABEL_106;
            case 3:
              v25 = 0;
              v26 = 0;
              v27 = 0;
              *(a1 + 116) |= 1u;
              while (1)
              {
                LOBYTE(v62) = 0;
                v28 = [a2 position] + 1;
                if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
                {
                  v30 = [a2 data];
                  [v30 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v27 |= (v62 & 0x7F) << v25;
                if ((v62 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                v11 = v26++ >= 9;
                if (v11)
                {
                  v31 = 0;
                  goto LABEL_128;
                }
              }

              if ([a2 hasError])
              {
                v31 = 0;
              }

              else
              {
                v31 = v27;
              }

LABEL_128:
              *(a1 + 8) = v31;
              goto LABEL_129;
          }
        }

        else
        {
          if (v13 <= 5)
          {
            if (v13 == 4)
            {
              v21 = objc_alloc_init(HDCodableSyncIdentity);
              v22 = 96;
            }

            else
            {
              v21 = objc_alloc_init(HDCodableSyncIdentity);
              v22 = 48;
            }

            objc_storeStrong((a1 + v22), v21);
            v62 = 0;
            v63 = 0;
            if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v21, a2))
            {
LABEL_131:

              return 0;
            }

            goto LABEL_72;
          }

          if (v13 == 6)
          {
            v38 = 0;
            v39 = 0;
            v40 = 0;
            *(a1 + 116) |= 0x20u;
            while (1)
            {
              LOBYTE(v62) = 0;
              v41 = [a2 position] + 1;
              if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
              {
                v43 = [a2 data];
                [v43 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v40 |= (v62 & 0x7F) << v38;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v11 = v39++ >= 9;
              if (v11)
              {
                LOBYTE(v44) = 0;
                goto LABEL_116;
              }
            }

            v44 = (v40 != 0) & ~[a2 hasError];
LABEL_116:
            v59 = 113;
            goto LABEL_119;
          }

          if (v13 == 10)
          {
            v23 = PBReaderReadData();
            v24 = 80;
LABEL_106:
            v57 = *(a1 + v24);
            *(a1 + v24) = v23;

            goto LABEL_129;
          }
        }
      }

      else if (v13 > 39)
      {
        if (v13 <= 41)
        {
          if (v13 == 40)
          {
            v23 = PBReaderReadString();
            v24 = 104;
          }

          else
          {
            v23 = PBReaderReadString();
            v24 = 56;
          }

          goto LABEL_106;
        }

        if (v13 == 42)
        {
          v23 = PBReaderReadString();
          v24 = 24;
          goto LABEL_106;
        }

        if (v13 == 50)
        {
          v21 = objc_alloc_init(HDCloudSyncCodableShardPredicate);
          objc_storeStrong((a1 + 72), v21);
          v62 = 0;
          v63 = 0;
          if (!PBReaderPlaceMark() || !HDCloudSyncCodableShardPredicateReadFrom(v21, a2))
          {
            goto LABEL_131;
          }

LABEL_72:
          PBReaderRecallMark();

          goto LABEL_129;
        }
      }

      else if (v13 > 29)
      {
        if (v13 == 30)
        {
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 116) |= 8u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              v56 = [a2 data];
              [v56 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v53 |= (v62 & 0x7F) << v51;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v11 = v52++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_123;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v53;
          }

LABEL_123:
          v58 = 88;
          goto LABEL_124;
        }

        if (v13 == 31)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 116) |= 4u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v34 |= (v62 & 0x7F) << v32;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v11 = v33++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_114;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v34;
          }

LABEL_114:
          v58 = 64;
          goto LABEL_124;
        }
      }

      else
      {
        if (v13 == 20)
        {
          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 116) |= 0x10u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v48 = [a2 position] + 1;
            if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
            {
              v50 = [a2 data];
              [v50 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v47 |= (v62 & 0x7F) << v45;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v11 = v46++ >= 9;
            if (v11)
            {
              LOBYTE(v44) = 0;
              goto LABEL_118;
            }
          }

          v44 = (v47 != 0) & ~[a2 hasError];
LABEL_118:
          v59 = 112;
LABEL_119:
          *(a1 + v59) = v44;
          goto LABEL_129;
        }

        if (v13 == 21)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 116) |= 2u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v62 & 0x7F) << v14;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_110;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_110:
          v58 = 16;
LABEL_124:
          *(a1 + v58) = v20;
          goto LABEL_129;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_129:
      v60 = [a2 position];
    }

    while (v60 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableNotificationInstructionCriteriaReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v23 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        *(a1 + 32) |= 1u;
        v22 = 0;
        v17 = [a2 position] + 8;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v22 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v22;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 24;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_30;
          }

          v14 = PBReaderReadString();
          v15 = 16;
        }

        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_30:
      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy__117(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableActivityStatisticsQuantityInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v29) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 != 3)
      {
        if (v13 != 4)
        {
LABEL_28:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(a1 + 40) |= 4u;
        v29 = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v24 = v29;
        v25 = 24;
        goto LABEL_40;
      }

      v21 = PBReaderReadString();
      v22 = *(a1 + 32);
      *(a1 + 32) = v21;

LABEL_41:
      v28 = [a2 position];
      if (v28 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      *(a1 + 40) |= 2u;
      v29 = 0;
      v19 = [a2 position] + 8;
      if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v24 = v29;
      v25 = 16;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_28;
      }

      *(a1 + 40) |= 1u;
      v29 = 0;
      v14 = [a2 position] + 8;
      if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
      {
        v23 = [a2 data];
        [v23 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v24 = v29;
      v25 = 8;
    }

LABEL_40:
    *(a1 + v25) = v24;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableSyncIdentityReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = PBReaderReadString();
        v15 = &OBJC_IVAR___HDCodableSyncIdentity__instanceDiscriminator;
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadData();
        v15 = &OBJC_IVAR___HDCodableSyncIdentity__hardwareIdentifier;
LABEL_23:
        v16 = *v15;
        v17 = *(a1 + v16);
        *(a1 + v16) = v14;

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v18 = [a2 position];
      if (v18 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadData();
    v15 = &OBJC_IVAR___HDCodableSyncIdentity__databaseIdentifier;
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

void sub_228D61A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HDFitnessFriendAchievementEntityPredicateForFriendUUID(uint64_t a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = _HDSQLiteValueForUUID();
  v3 = [v1 predicateWithProperty:@"friend_uuid" equalToValue:v2];

  return v3;
}

void sub_228D6201C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_228D62A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__118(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228D62FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228D63204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_228D63390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228D63C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_228D63E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_228D640E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_228D6450C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_228D64728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_228D649BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_228D64DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_228D6523C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_228D65674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_228D67DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228D69EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__119(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228D6A2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__120(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _HDPredicateForOwnerAndType(void *a1, void *a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D10B18];
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  v6 = [v4 numberWithLongLong:{objc_msgSend(a1, "persistentID")}];
  v7 = [v3 predicateWithProperty:@"owner_id" equalToValue:v6];

  v8 = MEMORY[0x277D10B18];
  v9 = MEMORY[0x277CCABB0];
  v10 = [v5 code];

  v11 = [v9 numberWithInteger:v10];
  v12 = [v8 predicateWithProperty:@"quantity_type" equalToValue:v11];

  v13 = MEMORY[0x277D10B20];
  v17[0] = v7;
  v17[1] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v15 = [v13 predicateMatchingAllPredicates:v14];

  return v15;
}

void sub_228D6A754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromHDQuantitySeriesBuilderTaskServerState(unint64_t a1)
{
  if (a1 >= 0xA)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown state (%ld)", a1];
  }

  else
  {
    v2 = off_2786242E0[a1];
  }

  return v2;
}

__n128 HDQuantitySampleAttenuationEngineSplit@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *(a1 + 8);
  result = *(a2 + 8);
  *(a3 + 8) = result;
  v4 = *(a2 + 24);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 24) = v4;
  return result;
}

uint64_t *HDStatisticsDiscrete::splitSampleAtTime@<X0>(uint64_t *result@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = *(result + 1);
  v5 = *(result + 2);
  v6 = result[3];
  v7 = *(result + 32);
  v8 = 0;
  v9 = *(result + 33);
  if ((v7 & 1) == 0)
  {
    v11 = 0;
    v12 = 0;
LABEL_9:
    v13 = *(result + 32);
    v14 = 0.0;
    a4 = 0.0;
    v7 = 0;
    goto LABEL_13;
  }

  v10 = v4 <= a4;
  if (a2)
  {
    v10 = v4 < a4;
  }

  if (v10)
  {
    v11 = 0;
    v12 = 0;
    if (v5 > a4)
    {
      v5 = a4;
    }

    goto LABEL_9;
  }

  v13 = 0;
  if (v4 >= a4)
  {
    a4 = *(result + 1);
  }

  v11 = *(result + 33);
  v12 = result[3];
  v8 = result[2];
  v14 = *result;
LABEL_13:
  *a3 = *result;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = v13;
  *(a3 + 33) = v9;
  *(a3 + 34) = *(result + 34);
  *(a3 + 38) = *(result + 19);
  *(a3 + 40) = v14;
  *(a3 + 48) = a4;
  *(a3 + 56) = v8;
  *(a3 + 64) = v12;
  *(a3 + 72) = v7;
  *(a3 + 73) = v11;
  return result;
}

double *HDStatisticsDiscrete::splitSampleAtTime(double *result, uint64_t a2, int a3, double a4)
{
  if (result[4])
  {
    v4 = result[1];
    v5 = v4 <= a4;
    if (a3)
    {
      v5 = v4 < a4;
    }

    if (v5)
    {
      *(a2 + 32) = 0;
      if (result[2] <= a4)
      {
        a4 = result[2];
      }

      result[2] = a4;
    }

    else
    {
      v6 = *result;
      v7 = *(result + 1);
      *(a2 + 32) = *(result + 16);
      *a2 = v6;
      *(a2 + 16) = v7;
      if (result[1] >= a4)
      {
        a4 = result[1];
      }

      *(a2 + 8) = a4;
      *(result + 32) = 0;
    }
  }

  else
  {
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t HDStatisticsDiscrete::applyMaskToSample(uint64_t result, double **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = *(result + 8);
    while (v4 >= *v2)
    {
      if (v4 < v2[1])
      {
        *(result + 32) = 0;
        return result;
      }

      v2 += 2;
      if (v2 == v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t HDStatisticsDiscrete::addSample(uint64_t this, const HDRawQuantitySample *a2)
{
  v2 = *(this + 24);
  if (v2)
  {
    var0 = *(this + 16);
    if (var0 >= a2->var0)
    {
      var0 = a2->var0;
    }

    *(this + 16) = var0;
    v4 = *(this + 8);
    if (a2->var0 >= v4)
    {
      v4 = a2->var0;
    }

    v5 = v2 + 1;
    *this = *this + (a2->var0 - *this) / v5;
    *(this + 8) = v4;
  }

  else
  {
    v6 = a2->var0;
    *(this + 8) = a2->var0;
    *(this + 16) = v6;
    *this = v6;
    v5 = 1;
  }

  *(this + 24) = v5;
  return this;
}

__n128 HDStatisticsDiscrete::updateMostRecentSample(__n128 *this, const HDRawQuantitySample *a2)
{
  if (!this[4].n128_u8[0] || (result.n128_u64[0] = this[2].n128_u64[1], result.n128_f64[0] <= a2->var1))
  {
    result = *&a2->var0;
    v3 = *&a2->var2;
    this[4].n128_u16[0] = *&a2->var4;
    this[2] = result;
    this[3] = v3;
  }

  return result;
}

double HDStatisticsDiscrete::unarchive@<D0>(HDStatisticsDiscrete *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 24) = *(this + 3);
  *a2 = vextq_s8(*(this + 88), *(this + 88), 8uLL);
  result = *(this + 13);
  *(a2 + 16) = result;
  v3 = *(this + 14);
  if (v3)
  {
    result = *(v3 + 8);
    v4 = *(v3 + 16);
    *(a2 + 32) = vextq_s8(*(v3 + 24), *(v3 + 24), 8uLL);
    *(a2 + 48) = result;
    *(a2 + 56) = v4;
    *(a2 + 64) = 1;
  }

  return result;
}

void HDStatisticsDiscrete::archive(int8x16_t *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  *(a2 + 112) = 0;
  v4 = (a2 + 112);
  *(a2 + 160) = 0;
  *a2 = &unk_283BE6208;
  *(a2 + 8) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v5 = this[1].i64[1];
  *(a2 + 16) = 0;
  *(a2 + 24) = v5;
  *(a2 + 88) = vextq_s8(*this, *this, 8uLL);
  v6 = this[1].i64[0];
  *(a2 + 204) = 225;
  *(a2 + 104) = v6;
  statistics::Statistics::makeMostRecentDatum(a2);
  v7 = &unk_283BEB0A8;
  v12 = 127;
  v9 = vextq_s8(this[2], this[2], 8uLL);
  v8 = this[3];
  v10 = 0;
  v11 = 0;
  statistics::RawQuantitySample::operator=(*v4, &v7);
  PB::Base::~Base(&v7);
}

uint64_t HDCodableLocationSeriesReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v33) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(HDCodableSample);
          objc_storeStrong((a1 + 24), v14);
          v33 = 0;
          v34 = 0;
          if (!PBReaderPlaceMark() || !HDCodableSampleReadFrom(v14, a2))
          {
LABEL_57:

            return 0;
          }

          goto LABEL_47;
        }

        if (v13 == 2)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            LOBYTE(v33) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v33 & 0x7F) << v15;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_53;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_53:
          v30 = 33;
          goto LABEL_54;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v22 = PBReaderReadData();
            v23 = *(a1 + 8);
            *(a1 + 8) = v22;

            goto LABEL_55;
          case 4:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 36) |= 1u;
            while (1)
            {
              LOBYTE(v33) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v33 & 0x7F) << v24;
              if ((v33 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                LOBYTE(v21) = 0;
                goto LABEL_51;
              }
            }

            v21 = (v26 != 0) & ~[a2 hasError];
LABEL_51:
            v30 = 32;
LABEL_54:
            *(a1 + v30) = v21;
            goto LABEL_55;
          case 0xA:
            v14 = objc_alloc_init(HDCodableLocationDatum);
            [a1 addLocationData:v14];
            v33 = 0;
            v34 = 0;
            if (!PBReaderPlaceMark() || !HDCodableLocationDatumReadFrom(v14, a2))
            {
              goto LABEL_57;
            }

LABEL_47:
            PBReaderRecallMark();

            goto LABEL_55;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_55:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_228D73D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__121(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableClinicalDeletedAccountReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v29) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v24 = PBReaderReadData();
          v25 = *(a1 + 32);
          *(a1 + 32) = v24;

          goto LABEL_50;
        }

        if (v13 == 2)
        {
          *(a1 + 48) |= 1u;
          v29 = 0;
          v15 = [a2 position] + 8;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v29;
          goto LABEL_50;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(HDCodableMessageVersion);
            objc_storeStrong((a1 + 24), v14);
            v29 = 0;
            v30 = 0;
            if (!PBReaderPlaceMark() || !HDCodableMessageVersionReadFrom(v14, a2))
            {
LABEL_52:

              return 0;
            }

            goto LABEL_31;
          case 4:
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 48) |= 2u;
            while (1)
            {
              LOBYTE(v29) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v29 & 0x7F) << v17;
              if ((v29 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_47;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v19;
            }

LABEL_47:
            *(a1 + 16) = v23;
            goto LABEL_50;
          case 5:
            v14 = objc_alloc_init(HDCodableSyncIdentity);
            objc_storeStrong((a1 + 40), v14);
            v29 = 0;
            v30 = 0;
            if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v14, a2))
            {
              goto LABEL_52;
            }

LABEL_31:
            PBReaderRecallMark();

            goto LABEL_50;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_50:
      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _HDAddDeviceContextTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeUncachedSQL:@"CREATE TABLE IF NOT EXISTS device_context (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{sync_identity_id INTEGER NOT NULL UNIQUE REFERENCES sync_identities(ROWID) ON DELETE CASCADE, device_type INTEGER NOT NULL, currentOS_name TEXT NOT NULL, currentOS_version TEXT NOT NULL, product_type_name TEXT NOT NULL, date_modified REAL NOT NULL)", a4}] ^ 1;

  return v6;
}

uint64_t _HDAddUnprotectedDeviceKeyValueStorageTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeUncachedSQL:@"CREATE TABLE IF NOT EXISTS kv_device_storage (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{sync_identity_id INTEGER NOT NULL, device_record_id INTEGER NOT NULL REFERENCES device_context(ROWID) ON DELETE CASCADE, domain TEXT NOT NULL, key TEXT NOT NULL, value BLOB NOT NULL, date_modified REAL NOT NULL)", a4}] ^ 1;

  return v6;
}

uint64_t _HDAddIsMirroringToWorkoutSessionTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF778 error:a4] ^ 1;

  return v6;
}

uint64_t _HDMigrateCycleTrackingOvulationConfirmationNotificationStateKeyValueDomainCategory(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = _HDKeyValueDomainCategoryMigrationStatement(@"key_value", @"com.apple.private.health.menstrual-cycles.ovulation-confirmation-notification-state", 0, 1, 0);
  v7 = [v5 unprotectedDatabase];

  v8 = [v7 executeUncachedSQL:v6 error:a4] ^ 1;
  return v8;
}

uint64_t _HDMigrateCycleTrackingUnconfirmedDeviationNotificationStateKeyValueDomainCategory(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = _HDKeyValueDomainCategoryMigrationStatement(@"key_value", @"com.apple.private.health.menstrual-cycles.unconfirmed-deviation-notification-state", 0, 1, 0);
  v7 = [v5 unprotectedDatabase];

  v8 = [v7 executeUncachedSQL:v6 error:a4] ^ 1;
  return v8;
}

uint64_t _HDMigrateCycleTrackingUpdatedFertileWindowNotificationFireDateKeyValueDomainCategory(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = _HDKeyValueDomainCategoryMigrationStatement(@"key_value", @"com.apple.private.health.menstrual-cycles", 0, 1, &unk_283CAF850);
  v7 = [v5 unprotectedDatabase];

  v8 = [v7 executeUncachedSQL:v6 error:a4] ^ 1;
  return v8;
}

uint64_t _HDAddChildSyncIdentityTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF7A8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDResetAnchorsForAssociationsForNanoSync(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [a1 behavior];
  v8 = [v7 isAppleWatch];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v6 unprotectedDatabase];
    v9 = [v10 executeSQLStatements:&unk_283CAF7C0 error:a4] ^ 1;
  }

  return v9;
}

uint64_t _HDAddNotificationInstructionsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  LODWORD(a4) = [v5 executeSQLStatements:&unk_283CAF790 error:a4];

  return a4 ^ 1;
}

uint64_t _HDAddTableForCloudSyncRequests(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF7D8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddFirstActivityConfigToWorkoutSessionsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF7F0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDResetLocalDeviceSource(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v8 = [v6 behavior];
  if ([v8 isiPad])
  {
  }

  else
  {
    v9 = [v6 behavior];
    v10 = [v9 isRealityDevice];

    if (!v10)
    {
      v12 = 0;
      goto LABEL_6;
    }
  }

  v11 = [v7 unprotectedDatabase];
  v12 = [v11 executeSQLStatements:&unk_283CAF808 error:a4] ^ 1;

LABEL_6:
  return v12;
}

uint64_t _HDAddAdditionalColumnsToCloudSyncRequests(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  LODWORD(a4) = [v5 executeSQLStatements:&unk_283CAF820 error:a4];

  return a4 ^ 1;
}

uint64_t _HDAddLinkCollectionDataColumnToUDCTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  if ([v5 executeUncachedSQL:@"ALTER TABLE user_domain_concepts ADD COLUMN link_collection_data BLOB" error:a4])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___HDAddLinkCollectionDataColumnToUDCTable_block_invoke;
    v8[3] = &unk_278614098;
    v9 = v5;
    v6 = [v9 executeUncachedSQL:@"SELECT udc_id FROM user_domain_concepts WHERE udc_id IN (SELECT DISTINCT udc_id FROM user_domain_concept_links)" error:a4 bindingHandler:0 enumerationHandler:v8] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t _HDAddProtectedDeviceKeyValueStorageTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeUncachedSQL:@"CREATE TABLE IF NOT EXISTS secure_kv_device_storage (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{sync_identity_id INTEGER NOT NULL, domain TEXT NOT NULL, key TEXT NOT NULL, value BLOB NOT NULL, date_modified REAL NOT NULL)", a4}] ^ 1;

  return v6;
}

uint64_t _HDAddWorkoutZonesSamplesTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeUncachedSQL:@"CREATE TABLE IF NOT EXISTS workout_zones_samples (data_id INTEGER PRIMARY KEY AUTOINCREMENT error:{zones BLOB NOT NULL)", a4}] ^ 1;

  return v6;
}

uint64_t _HDAddWorkoutZonesAssociationsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeUncachedSQL:@"CREATE TABLE IF NOT EXISTS workout_zones_associations (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{workout_id INTEGER NOT NULL REFERENCES workouts(data_id), zones_sample_id INTEGER NOT NULL REFERENCES workout_zones_samples(data_id), sync_provenance INTEGER, sync_identity INTEGER NOT NULL, UNIQUE(workout_id, zones_sample_id));", a4}] ^ 1;

  return v6;
}

uint64_t _HDMigrateCycleTrackingKeyValueDomainCategory(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = _HDKeyValueDomainCategoryMigrationStatement(@"key_value_secure", @"com.apple.private.health.menstrual-cycles", 100, 105, &unk_283CAF838);
  v7 = [v5 protectedDatabase];

  v8 = [v7 executeUncachedSQL:v6 error:a4] ^ 1;
  return v8;
}

uint64_t _HDAddHashedMedicationIdentifierToMedicationDoseEventTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v7 = [v5 protectedDatabase];
  v8 = [v7 executeSQLStatements:&unk_283CAF868 error:a4];

  if (v8)
  {
    v19 = 0;
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = ___HDAddHashedMedicationIdentifierToMedicationDoseEventTable_block_invoke;
    v17 = &unk_278614098;
    v18 = v6;
    v9 = [v18 executeUncachedSQL:@"SELECT DISTINCT medication_identifier FROM medication_dose_event_samples_new" error:&v19 bindingHandler:0 enumerationHandler:&v14];
    v10 = v19;
    if (v9)
    {
      v11 = [v5 protectedDatabase];
      v12 = [v11 executeSQLStatements:&unk_283CAF880 error:a4] ^ 1;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

uint64_t _HDAddStateOfMindSamplesTables(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF8B0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddScoredAssessmentSamplesTables(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF8C8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDRemoveOnDeleteCascadeFromAssociationsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAF898 error:a4] ^ 1;

  return v6;
}

uint64_t _HDMigrateClinicalAccountSyncAnchors(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v8 = [v7 protectedDatabase];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = ___HDMigrateClinicalAccountSyncAnchors_block_invoke;
  v42[3] = &unk_278614620;
  v42[4] = &v43;
  v9 = [v8 executeUncachedSQL:@"SELECT MAX(sync_anchor) FROM clinical_accounts" error:a4 bindingHandler:0 enumerationHandler:v42];

  if (v9)
  {
    v44[3] += 10000;
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x2020000000;
    v41[3] = 0;
    v10 = [v7 protectedDatabase];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = ___HDMigrateClinicalAccountSyncAnchors_block_invoke_2;
    v40[3] = &unk_278614620;
    v40[4] = v41;
    v11 = [v10 executeUncachedSQL:@"SELECT MAX(ROWID) FROM clinical_credentials" error:a4 bindingHandler:0 enumerationHandler:v40];

    if (v11 & 1) != 0 && ([v7 protectedDatabase], v12 = objc_claimAutoreleasedReturnValue(), v39[0] = MEMORY[0x277D85DD0], v39[1] = 3221225472, v39[2] = ___HDMigrateClinicalAccountSyncAnchors_block_invoke_3, v39[3] = &unk_2786140E8, v39[4] = v41, v13 = objc_msgSend(v12, "executeUncachedSQL:error:bindingHandler:enumerationHandler:", @"UPDATE clinical_credentials SET ROWID = ROWID + ?", a4, v39, 0), v12, (v13) && (objc_msgSend(v7, "protectedDatabase"), v14 = objc_claimAutoreleasedReturnValue(), v38[0] = MEMORY[0x277D85DD0], v38[1] = 3221225472, v38[2] = ___HDMigrateClinicalAccountSyncAnchors_block_invoke_4, v38[3] = &unk_2786140E8, v38[4] = v41, v15 = objc_msgSend(v14, "executeUncachedSQL:error:bindingHandler:enumerationHandler:", @"UPDATE clinical_accounts SET credential_id = credential_id + ? WHERE credential_id IS NOT NULL", a4, v38, 0), v14, (v15) && (objc_msgSend(v7, "protectedDatabase"), v16 = objc_claimAutoreleasedReturnValue(), v37[0] = MEMORY[0x277D85DD0], v37[1] = 3221225472, v37[2] = ___HDMigrateClinicalAccountSyncAnchors_block_invoke_5, v37[3] = &unk_2786140E8, v37[4] = &v43, v17 = objc_msgSend(v16, "executeUncachedSQL:error:bindingHandler:enumerationHandler:", @"UPDATE clinical_accounts SET sync_anchor = sync_anchor + ?", a4, v37, 0), v16, (v17))
    {
      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v36 = 0;
      v18 = [v7 protectedDatabase];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = ___HDMigrateClinicalAccountSyncAnchors_block_invoke_6;
      v32[3] = &unk_278614620;
      v32[4] = &v33;
      v19 = [v18 executeUncachedSQL:@"SELECT MAX(sync_anchor) FROM clinical_accounts" error:a4 bindingHandler:0 enumerationHandler:v32];

      if ((v19 & 1) == 0 || (v20 = [v6 fetchLegacySyncIdentity:v7 error:a4], v20 == -1))
      {
        v26 = 1;
      }

      else
      {
        v21 = v34[3];
        if (v21 <= 0x2710)
        {
          v21 = 10000;
        }

        v34[3] = v21 + 1;
        v22 = [MEMORY[0x277CBEAA8] date];
        v23 = [v7 protectedDatabase];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = ___HDMigrateClinicalAccountSyncAnchors_block_invoke_7;
        v28[3] = &unk_278624510;
        v30 = &v33;
        v24 = v22;
        v29 = v24;
        v31 = v20;
        v25 = [v23 executeUncachedSQL:@"INSERT INTO key_value_secure (category error:domain bindingHandler:key enumerationHandler:{value, provenance, mod_date, sync_identity) values (100, 'com.apple.health.records.syncanchors', 'ClinicalAccountNextSyncAnchor', ?, 0, ?, ?)", a4, v28, 0}];

        v26 = v25 ^ 1u;
      }

      _Block_object_dispose(&v33, 8);
    }

    else
    {
      v26 = 1;
    }

    _Block_object_dispose(v41, 8);
  }

  else
  {
    v26 = 1;
  }

  _Block_object_dispose(&v43, 8);

  return v26;
}

void sub_228D78118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v21 - 184), 8);
  _Block_object_dispose((v21 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t _HDMigrateClinicalGatewaySyncAnchors(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v8 = [v7 protectedDatabase];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = ___HDMigrateClinicalGatewaySyncAnchors_block_invoke;
  v32[3] = &unk_278614620;
  v32[4] = &v33;
  v9 = [v8 executeUncachedSQL:@"SELECT MAX(sync_anchor) FROM clinical_gateways" error:a4 bindingHandler:0 enumerationHandler:v32];

  if (v9 & 1) != 0 && (v34[3] += 10000, [v7 protectedDatabase], v10 = objc_claimAutoreleasedReturnValue(), v31[0] = MEMORY[0x277D85DD0], v31[1] = 3221225472, v31[2] = ___HDMigrateClinicalGatewaySyncAnchors_block_invoke_2, v31[3] = &unk_2786140E8, v31[4] = &v33, v11 = objc_msgSend(v10, "executeUncachedSQL:error:bindingHandler:enumerationHandler:", @"UPDATE clinical_gateways SET sync_anchor = sync_anchor + ?", a4, v31, 0), v10, (v11))
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v12 = [v7 protectedDatabase];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = ___HDMigrateClinicalGatewaySyncAnchors_block_invoke_3;
    v26[3] = &unk_278614620;
    v26[4] = &v27;
    v13 = [v12 executeUncachedSQL:@"SELECT MAX(sync_anchor) FROM clinical_gateways" error:a4 bindingHandler:0 enumerationHandler:v26];

    if ((v13 & 1) == 0 || (v14 = [v6 fetchLegacySyncIdentity:v7 error:a4], v14 == -1))
    {
      v20 = 1;
    }

    else
    {
      v15 = v28[3];
      if (v15 <= 0x2710)
      {
        v15 = 10000;
      }

      v28[3] = v15 + 1;
      v16 = [MEMORY[0x277CBEAA8] date];
      v17 = [v7 protectedDatabase];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = ___HDMigrateClinicalGatewaySyncAnchors_block_invoke_4;
      v22[3] = &unk_278624510;
      v24 = &v27;
      v18 = v16;
      v23 = v18;
      v25 = v14;
      v19 = [v17 executeUncachedSQL:@"INSERT INTO key_value_secure (category error:domain bindingHandler:key enumerationHandler:{value, provenance, mod_date, sync_identity) values (100, 'com.apple.health.records.syncanchors', 'ClinicalGatewayNextSyncAnchor', ?, 0, ?, ?)", a4, v22, 0}];

      v20 = v19 ^ 1u;
    }

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v20 = 1;
  }

  _Block_object_dispose(&v33, 8);

  return v20;
}

void sub_228D7847C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t _HDMigrateOriginalResources(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v31[3] = 0;
  v8 = [v7 protectedDatabase];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = ___HDMigrateOriginalResources_block_invoke;
  v30[3] = &unk_278614620;
  v30[4] = v31;
  v9 = [v8 executeUncachedSQL:@"SELECT MAX(ROWID) FROM original_fhir_resources" error:a4 bindingHandler:0 enumerationHandler:v30];

  if (v9 & 1) != 0 && ([v7 protectedDatabase], v10 = objc_claimAutoreleasedReturnValue(), v29[0] = MEMORY[0x277D85DD0], v29[1] = 3221225472, v29[2] = ___HDMigrateOriginalResources_block_invoke_2, v29[3] = &unk_2786140E8, v29[4] = v31, v11 = objc_msgSend(v10, "executeUncachedSQL:error:bindingHandler:enumerationHandler:", @"UPDATE original_fhir_resources SET ROWID = ROWID + ?", a4, v29, 0), v10, (v11) && (objc_msgSend(v7, "protectedDatabase"), v12 = objc_claimAutoreleasedReturnValue(), v28[0] = MEMORY[0x277D85DD0], v28[1] = 3221225472, v28[2] = ___HDMigrateOriginalResources_block_invoke_3, v28[3] = &unk_2786140E8, v28[4] = v31, v13 = objc_msgSend(v12, "executeUncachedSQL:error:bindingHandler:enumerationHandler:", @"UPDATE clinical_record_samples SET original_fhir_resource_ROWID = original_fhir_resource_ROWID + ? WHERE original_fhir_resource_ROWID IS NOT NULL", a4, v28, 0), v12, (v13) && (objc_msgSend(v7, "protectedDatabase"), v14 = objc_claimAutoreleasedReturnValue(), v27[0] = MEMORY[0x277D85DD0], v27[1] = 3221225472, v27[2] = ___HDMigrateOriginalResources_block_invoke_4, v27[3] = &unk_2786140E8, v27[4] = v31, v15 = objc_msgSend(v14, "executeUncachedSQL:error:bindingHandler:enumerationHandler:", @"UPDATE medical_records SET original_fhir_resource_ROWID = original_fhir_resource_ROWID + ? WHERE original_fhir_resource_ROWID IS NOT NULL", a4, v27, 0), v14, (v15) && (objc_msgSend(v7, "protectedDatabase"), v16 = objc_claimAutoreleasedReturnValue(), v26[0] = MEMORY[0x277D85DD0], v26[1] = 3221225472, v26[2] = ___HDMigrateOriginalResources_block_invoke_5, v26[3] = &unk_2786140E8, v26[4] = v31, v17 = objc_msgSend(v16, "executeUncachedSQL:error:bindingHandler:enumerationHandler:", @"UPDATE original_fhir_resources_last_seen SET resource_id = resource_id + ?", a4, v26, 0), v16, (v17) && (objc_msgSend(v7, "protectedDatabase"), v18 = objc_claimAutoreleasedReturnValue(), v25[0] = MEMORY[0x277D85DD0], v25[1] = 3221225472, v25[2] = ___HDMigrateOriginalResources_block_invoke_6, v25[3] = &unk_2786140E8, v25[4] = v31, v19 = objc_msgSend(v18, "executeUncachedSQL:error:bindingHandler:enumerationHandler:", @"UPDATE clinical_accounts SET last_extracted_rowid = last_extracted_rowid + ? WHERE last_extracted_rowid IS NOT NULL AND last_extracted_rowid > 0", a4, v25, 0), v18, (v19))
  {
    v20 = [v7 protectedDatabase];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = ___HDMigrateOriginalResources_block_invoke_7;
    v24[3] = &unk_2786140E8;
    v24[4] = v31;
    v21 = [v20 executeUncachedSQL:@"UPDATE clinical_accounts SET last_submitted_rowid = last_submitted_rowid + ? WHERE last_submitted_rowid IS NOT NULL AND last_submitted_rowid > 0" error:a4 bindingHandler:v24 enumerationHandler:0];

    v22 = v21 ^ 1u;
  }

  else
  {
    v22 = 1;
  }

  _Block_object_dispose(v31, 8);

  return v22;
}

uint64_t _HDMigrateOriginalSignedClinicalDataRecords(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  v8 = [v7 protectedDatabase];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = ___HDMigrateOriginalSignedClinicalDataRecords_block_invoke;
  v21[3] = &unk_278614620;
  v21[4] = v22;
  v9 = [v8 executeUncachedSQL:@"SELECT MAX(ROWID) FROM original_signed_clinical_data_records" error:a4 bindingHandler:0 enumerationHandler:v21];

  if (v9 & 1) != 0 && ([v7 protectedDatabase], v10 = objc_claimAutoreleasedReturnValue(), v20[0] = MEMORY[0x277D85DD0], v20[1] = 3221225472, v20[2] = ___HDMigrateOriginalSignedClinicalDataRecords_block_invoke_2, v20[3] = &unk_2786140E8, v20[4] = v22, v11 = objc_msgSend(v10, "executeUncachedSQL:error:bindingHandler:enumerationHandler:", @"UPDATE original_signed_clinical_data_records SET ROWID = ROWID + ?", a4, v20, 0), v10, (v11) && (objc_msgSend(v7, "protectedDatabase"), v12 = objc_claimAutoreleasedReturnValue(), v19[0] = MEMORY[0x277D85DD0], v19[1] = 3221225472, v19[2] = ___HDMigrateOriginalSignedClinicalDataRecords_block_invoke_3, v19[3] = &unk_2786140E8, v19[4] = v22, v13 = objc_msgSend(v12, "executeUncachedSQL:error:bindingHandler:enumerationHandler:", @"UPDATE clinical_record_samples SET original_signed_clinical_data_rowid = original_signed_clinical_data_rowid + ? WHERE original_signed_clinical_data_rowid IS NOT NULL", a4, v19, 0), v12, (v13))
  {
    v14 = [v7 protectedDatabase];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = ___HDMigrateOriginalSignedClinicalDataRecords_block_invoke_4;
    v18[3] = &unk_2786140E8;
    v18[4] = v22;
    v15 = [v14 executeUncachedSQL:@"UPDATE medical_records SET original_signed_clinical_data_rowid = original_signed_clinical_data_rowid + ? WHERE original_signed_clinical_data_rowid IS NOT NULL" error:a4 bindingHandler:v18 enumerationHandler:0];

    v16 = v15 ^ 1u;
  }

  else
  {
    v16 = 1;
  }

  _Block_object_dispose(v22, 8);

  return v16;
}

id _HDKeyValueDomainCategoryMigrationStatement(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a1;
  v11 = [a5 hk_map:&__block_literal_global_421];
  v12 = [v11 componentsJoinedByString:{@", "}];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT OR IGNORE INTO %@ (value, key, domain, category, provenance, mod_date, sync_identity)", v10];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT value, key, domain, %ld, provenance, mod_date, sync_identity FROM %@", a4, v10];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"WHERE domain = '%@' AND category = %ld", v9, a3];

  if (v12)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@" AND key in (%@)", v12];
  }

  else
  {
    v16 = &stru_283BF39C8;
  }

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %@%@", v13, v14, v15, v16];

  return v17;
}

void sub_228D79AC8(_Unwind_Exception *a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228D7C6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, ...)
{
  va_start(va, a43);

  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__122(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228D7D6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);

  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_228D7E024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  _Block_object_dispose(&a26, 8);

  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v41 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_228D7ED68(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_228D7FD3C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_228D80F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);

  _Unwind_Resume(a1);
}

void sub_228D81514(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_228D8175C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__123(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228D82DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, id);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_228D83808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);

  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_228D83E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_228D843E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_228D84678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_228D85900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228D85B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_228D87D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);

  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v41 - 232), 8);
  _Block_object_dispose((v41 - 200), 8);

  _Unwind_Resume(a1);
}

void __cxx_global_array_dtor_1()
{
  v0 = &off_27D8686C8;
  v1 = -120;
  do
  {

    v0 -= 3;
    v1 += 24;
  }

  while (v1);
}

void health::HDDemangleSymbol(const char *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v4 = __cxa_demangle(a1, 0, 0, 0);
  if (v4)
  {
    std::string::basic_string[abi:ne200100]<0>(a2, v4);

    JUMPOUT(0x22AAC8590);
  }

  if (v2[23] < 0)
  {
    v5 = *v2;
    v6 = *(v2 + 1);

    std::string::__init_copy_ctor_external(a2, v5, v6);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *v2;
    a2->__r_.__value_.__r.__words[2] = *(v2 + 2);
  }
}

void health::HDRegexReplace(std::sub_match<const char *> **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v6 = *(a1 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v7 = *a1;
    v6 = a1[1];
  }

  else
  {
    v7 = a1;
  }

  v8 = v7 + v6;
  *v77 = v7;
  *&v77[8] = v7 + v6;
  *&v77[16] = a2;
  *&v77[24] = 0;
  *&v79 = 0;
  *&v78[48] = 0;
  BYTE8(v79) = 0;
  v80 = 0uLL;
  LOBYTE(v81) = 0;
  BYTE8(v81) = 0;
  v82 = 0;
  memset(v78, 0, 41);
  memset(v72, 0, 17);
  *&v72[24] = 0;
  *&v72[32] = 0;
  LOBYTE(v73) = 0;
  BYTE8(v73) = 0;
  *&v74 = 0;
  memset(__p, 0, 41);
  std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a2, v7, (v7 + v6), __p, 0);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v78, v7, v8, __p, 0);
  if (*__p)
  {
    operator delete(*__p);
  }

  *__p = *v77;
  *&__p[12] = *&v77[12];
  *&__p[40] = 0;
  *v72 = 0;
  *&__p[32] = 0;
  std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__init_with_size[abi:ne200100]<std::sub_match<std::__wrap_iter<char const*>>*,std::sub_match<std::__wrap_iter<char const*>>*>(&__p[32], *v78, *&v78[8], 0xAAAAAAAAAAAAAAABLL * ((*&v78[8] - *v78) >> 3));
  v73 = v79;
  v74 = v80;
  v75 = v81;
  v76 = v82;
  *&v72[8] = *&v78[24];
  *&v72[24] = *&v78[40];
  v9 = *&__p[32];
  v10 = *&__p[40];
  while (*&__p[40] != *&__p[32])
  {
    memset(v84, 0, 24);
    std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__init_with_size[abi:ne200100]<std::sub_match<std::__wrap_iter<char const*>>*,std::sub_match<std::__wrap_iter<char const*>>*>(v84, v9, v10, 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3));
    v85 = v73;
    v86 = v74;
    v87 = v75;
    v88 = v76;
    *&v84[24] = *&v72[8];
    *&v84[40] = *&v72[24];
    v61 = 0;
    v62 = 0;
    v11 = *v84;
    v12 = *&v84[8];
    v60 = 0;
    std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__init_with_size[abi:ne200100]<std::sub_match<std::__wrap_iter<char const*>>*,std::sub_match<std::__wrap_iter<char const*>>*>(&v60, *v84, *&v84[8], 0xAAAAAAAAAAAAAAABLL * ((*&v84[8] - *v84) >> 3));
    v65 = v73;
    v66 = v74;
    v67 = v75;
    v68 = v76;
    v63 = *&v72[8];
    v64 = *&v72[24];
    v13 = *(a3 + 24);
    if (!v13)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v13 + 48))(v69);
    if (v60)
    {
      v61 = v60;
      operator delete(v60);
    }

    if (v12 == v11)
    {
      v14 = &v84[24];
    }

    else
    {
      v14 = v11;
    }

    v15 = *v14;
    v16 = *(a4 + 23);
    if ((v16 & 0x80u) == 0)
    {
      v17 = a4;
    }

    else
    {
      v17 = *a4;
    }

    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a4 + 8);
    }

    std::string::__insert_with_size<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a4, v17 + v16, v7, v15, v15 - v7);
    v18 = *(a4 + 23);
    v20 = *a4;
    v19 = *(a4 + 8);
    if (v18 >= 0)
    {
      v21 = a4;
    }

    else
    {
      v21 = *a4;
    }

    if (v18 >= 0)
    {
      v22 = *(a4 + 23);
    }

    else
    {
      v22 = *(a4 + 8);
    }

    v23 = v21 + v22;
    if ((v70 & 0x80u) == 0)
    {
      v24 = v69;
    }

    else
    {
      v24 = v69[0];
    }

    if ((v70 & 0x80u) == 0)
    {
      v25 = v70;
    }

    else
    {
      v25 = v69[1];
    }

    if (v18 < 0)
    {
      if (!v25)
      {
        goto LABEL_56;
      }

      v26 = v23 - v20;
      if (v20 > v24 || v20 + v19 + 1 <= v24)
      {
        v27 = (*(a4 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v27 - v19 >= v25)
        {
          goto LABEL_49;
        }

LABEL_35:
        std::string::__grow_by(a4, v27, v19 + v25 - v27, v19, v26, 0, v25);
        *(a4 + 8) = v19 + v25;
        v20 = *a4;
LABEL_52:
        v31 = v19 + v25;
        if (*(a4 + 23) < 0)
        {
          *(a4 + 8) = v31;
        }

        else
        {
          *(a4 + 23) = v31 & 0x7F;
        }

        *(v20 + v31) = 0;
        memmove((v20 + v26), v24, v25);
        goto LABEL_56;
      }
    }

    else
    {
      if (!v25)
      {
        goto LABEL_56;
      }

      v26 = v23 - a4;
      if (v24 < a4 || a4 + 1 + v18 <= v24)
      {
        v19 = *(a4 + 23);
        v20 = a4;
        v27 = 22;
        if (22 - v18 < v25)
        {
          goto LABEL_35;
        }

LABEL_49:
        if (v19 == v26)
        {
          v19 = v26;
        }

        else
        {
          memmove((v20 + v26 + v25), (v20 + v26), v19 - v26);
        }

        goto LABEL_52;
      }
    }

    v28 = 0;
    memset(&v83, 0, sizeof(v83));
    do
    {
      std::string::push_back(&v83, *(v24 + v28++));
    }

    while (v25 != v28);
    size = HIBYTE(v83.__r_.__value_.__r.__words[2]);
    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &v83;
    }

    else
    {
      v30 = v83.__r_.__value_.__r.__words[0];
    }

    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v83.__r_.__value_.__l.__size_;
    }

    std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a4, v25, v26, v30, v30 + size);
    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }

LABEL_56:
    v32 = *v84;
    v33 = &v84[32];
    if (*&v84[8] != *v84)
    {
      v33 = (*v84 + 8);
    }

    v7 = *v33;
    if ((v70 & 0x80000000) == 0)
    {
      if (!*v84)
      {
        goto LABEL_61;
      }

LABEL_60:
      operator delete(v32);
      goto LABEL_61;
    }

    operator delete(v69[0]);
    if (v32)
    {
      goto LABEL_60;
    }

LABEL_61:
    v52 = 0;
    v53 = 0;
    v51 = 0;
    v35 = *&__p[32];
    v34 = *&__p[40];
    std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__init_with_size[abi:ne200100]<std::sub_match<std::__wrap_iter<char const*>>*,std::sub_match<std::__wrap_iter<char const*>>*>(&v51, *&__p[32], *&__p[40], 0xAAAAAAAAAAAAAAABLL * ((*&__p[40] - *&__p[32]) >> 3));
    v56 = v73;
    v57 = v74;
    v58 = v75;
    v54 = *&v72[8];
    v59 = v76;
    v55 = *&v72[24];
    v36 = *&__p[24];
    v37 = *&__p[24] | 0x800;
    *&__p[24] |= 0x800u;
    if (v34 == v35)
    {
      v38 = &v72[8];
    }

    else
    {
      v38 = v35;
    }

    v39 = v35 + 1;
    if (v34 == v35)
    {
      v39 = &v72[16];
    }

    v40 = *v39;
    v41 = *&__p[8];
    if (*v38 == *v39)
    {
      if (*&__p[8] == v40)
      {
        if (v35)
        {
          v45 = v35;
          goto LABEL_83;
        }

LABEL_84:
        BYTE8(v75) = 0;
        *&__p[32] = 0u;
        memset(v72, 0, 25);
        *&v72[32] = 0;
        *&v73 = 0;
        BYTE8(v73) = 0;
        v74 = 0uLL;
        LOBYTE(v75) = 0;
        v76 = 0;
        goto LABEL_85;
      }

      *&v84[48] = 0;
      *&v85 = 0;
      BYTE8(v85) = 0;
      v86 = 0uLL;
      LOBYTE(v87) = 0;
      BYTE8(v87) = 0;
      v88 = 0;
      memset(v84, 0, 41);
      v44 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(*&__p[16], v40, *&__p[8], v84, v36 | 0x860u);
      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&__p[32], v40, v41, v84, 1);
      if (*v84)
      {
        operator delete(*v84);
      }

      if (v44)
      {
        goto LABEL_85;
      }

      v42 = (&v40->first + 1);
      v37 = *&__p[24];
      v41 = *&__p[8];
    }

    else
    {
      v42 = *v39;
    }

    *&__p[24] = v37 | 0x80;
    *&v84[48] = 0;
    *&v85 = 0;
    BYTE8(v85) = 0;
    v86 = 0uLL;
    LOBYTE(v87) = 0;
    BYTE8(v87) = 0;
    v88 = 0;
    memset(v84, 0, 41);
    v43 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(*&__p[16], v42, v41, v84, v37 | 0x80u);
    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&__p[32], v42, v41, v84, (v37 & 0x800) != 0);
    if (*v84)
    {
      operator delete(*v84);
    }

    if ((v43 & 1) == 0)
    {
      v45 = *&__p[32];
      if (!*&__p[32])
      {
        goto LABEL_84;
      }

LABEL_83:
      operator delete(v45);
      goto LABEL_84;
    }

    *&v72[32] = v40;
    BYTE8(v73) = v73 != v40;
LABEL_85:
    if (v51)
    {
      v52 = v51;
      operator delete(v51);
    }

    v9 = *&__p[32];
    v10 = *&__p[40];
  }

  if (v9)
  {
    operator delete(v9);
  }

  v46 = *(a4 + 23);
  if ((v46 & 0x80u) == 0)
  {
    v47 = a4;
  }

  else
  {
    v47 = *a4;
  }

  if ((v46 & 0x80u) != 0)
  {
    v46 = *(a4 + 8);
  }

  v48 = a1;
  v49 = *(a1 + 23);
  if ((v49 & 0x8000000000000000) != 0)
  {
    v48 = *a1;
    v49 = a1[1];
  }

  std::string::__insert_with_size<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a4, v47 + v46, v7, (v48 + v49), v48 + v49 - v7);
  if (*v78)
  {
    operator delete(*v78);
  }
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this);
}

void std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__init_with_size[abi:ne200100]<std::sub_match<std::__wrap_iter<char const*>>*,std::sub_match<std::__wrap_iter<char const*>>*>(uint64_t result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<std::__wrap_iter<char const*>>>>(a4);
    }

    std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
  }
}

void sub_228D89098(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<std::__wrap_iter<char const*>>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::string::__insert_with_size<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(std::string *this, uint64_t a2, std::string *a3, std::string *a4, std::string::size_type __n_add)
{
  v7 = a3;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    if (!__n_add)
    {
      return;
    }

    v10 = this->__r_.__value_.__r.__words[0];
    size = this->__r_.__value_.__l.__size_;
  }

  else
  {
    if (!__n_add)
    {
      return;
    }

    v10 = this;
  }

  v11 = a2 - v10;
  if (v10 > a3 || (&v10->__r_.__value_.__l.__data_ + size + 1) <= a3)
  {

    std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(this, __n_add, v11, a3, a4);
  }

  else
  {
    memset(&v16, 0, sizeof(v16));
    if (a3 == a4)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }

    else
    {
      do
      {
        std::string::push_back(&v16, *v7++);
      }

      while (v7 != a4);
      v14 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
      v12 = v16.__r_.__value_.__l.__size_;
      v13 = v16.__r_.__value_.__r.__words[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v15 = &v16;
    }

    else
    {
      v15 = v13;
    }

    if ((v14 & 0x80u) == 0)
    {
      v12 = v14;
    }

    std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(this, __n_add, v11, v15, v15 + v12);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }
}

void sub_228D89240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(std::string *this, std::string::size_type __n_add, std::string::size_type __n_copy, _BYTE *a4, _BYTE *a5)
{
  v9 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v11 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v11 - size >= __n_add)
    {
      v12 = this->__r_.__value_.__r.__words[0];
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 22;
    v12 = this;
    if (22 - size >= __n_add)
    {
LABEL_7:
      v13 = size - __n_copy;
      if (size == __n_copy)
      {
        size = __n_copy;
      }

      else
      {
        memmove(v12 + __n_copy + __n_add, v12 + __n_copy, v13);
      }

      goto LABEL_10;
    }
  }

  std::string::__grow_by(this, v11, size + __n_add - v11, size, __n_copy, 0, __n_add);
  v9->__r_.__value_.__l.__size_ = size + __n_add;
  v12 = v9->__r_.__value_.__r.__words[0];
LABEL_10:
  v14 = size + __n_add;
  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9->__r_.__value_.__l.__size_ = v14;
  }

  else
  {
    *(&v9->__r_.__value_.__s + 23) = v14 & 0x7F;
  }

  v12->__r_.__value_.__s.__data_[v14] = 0;
  if (a5 != a4)
  {
    memmove(v12 + __n_copy, a4, a5 - a4);
  }

  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v9->__r_.__value_.__r.__words[0];
  }

  return v9 + __n_copy;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(uint64_t a1, std::sub_match<const char *> *a2, std::sub_match<const char *> *a3, std::vector<std::csub_match> *this, unsigned int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  v10 = *(a1 + 28);
  this[1].__begin_ = a3;
  v11 = &this[1];
  this[1].__end_ = a3;
  LOBYTE(this[1].__end_cap_.__value_) = 0;
  std::vector<std::sub_match<char const*>>::assign(this, (v10 + 1), &this[1]);
  this[2].__begin_ = a2;
  this[2].__end_ = a2;
  LOBYTE(this[2].__end_cap_.__value_) = 0;
  *&this[3].__begin_ = v11->std::pair<const char *, const char *>;
  LOBYTE(this[3].__end_cap_.__value_) = this[1].__end_cap_.__value_;
  if ((v9 & 0x800) == 0)
  {
    this[4].__end_ = a2;
  }

  LOBYTE(this[4].__begin_) = 1;
  if (!std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, this, v9, (v9 & 0x800) == 0))
  {
    if (a2 == a3 || (v9 & 0x40) != 0)
    {
      goto LABEL_18;
    }

    v18 = &a2->first + 1;
    if (v18 != a3)
    {
      do
      {
        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
        v19 = std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v18, a3, this, v9 | 0x80, 0);
        begin = this->__begin_;
        end = this->__end_;
        if (v19)
        {
          goto LABEL_8;
        }

        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3), v11);
      }

      while (++v18 != a3);
    }

    std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
    if (!std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v18, a3, this, v9 | 0x80, 0))
    {
LABEL_18:
      result = 0;
      this->__end_ = this->__begin_;
      return result;
    }
  }

  begin = this->__begin_;
  end = this->__end_;
LABEL_8:
  if (end == begin)
  {
    v14 = v11;
  }

  else
  {
    v14 = begin;
  }

  first = v14->first;
  this[2].__end_ = v14->first;
  LOBYTE(this[2].__end_cap_.__value_) = this[2].__begin_ != first;
  second = v14->second;
  this[3].__begin_ = second;
  LOBYTE(this[3].__end_cap_.__value_) = second != this[3].__end_;
  return 1;
}

void std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v5 = a4[6];
  v6 = a4[1] - *a4;
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 - *a1;
  v11 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
  v12 = v7 - v11;
  if (v7 <= v11)
  {
    if (v7 < v11)
    {
      v8 = v9 + v6;
      a1[1] = v9 + v6;
    }
  }

  else
  {
    v13 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 3) < v12)
    {
      if (v7 <= 0xAAAAAAAAAAAAAAALL)
      {
        v14 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v9) >> 3);
        v15 = 2 * v14;
        if (2 * v14 <= v7)
        {
          v15 = v7;
        }

        if (v14 >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v15;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<std::__wrap_iter<char const*>>>>(v16);
      }

      std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
    }

    v17 = v8 + 24 * v12;
    v18 = 24 * v7 - 8 * (v10 >> 3);
    do
    {
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      v8 += 24;
      v18 -= 24;
    }

    while (v18);
    a1[1] = v17;
    v8 = v17;
  }

  v19 = *a1;
  if (v8 == *a1)
  {
    v22 = a2 - v5;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = a2 - v5;
    v24 = *a4;
    v23 = a4[1];
    do
    {
      v25 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v24) >> 3);
      v26 = (v24 + v20);
      if (v25 <= v21)
      {
        v27 = a4 + 3;
      }

      else
      {
        v27 = v26;
      }

      *(v19 + v20) = v22 + *v27;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v21)
      {
        v28 = a4 + 3;
      }

      else
      {
        v28 = (*a4 + v20);
      }

      *(*a1 + v20 + 8) = v22 + v28[1];
      v24 = *a4;
      v23 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v23 - *a4) >> 3) <= v21)
      {
        v29 = a4 + 3;
      }

      else
      {
        v29 = (*a4 + v20);
      }

      v30 = *(v29 + 16);
      v19 = *a1;
      v31 = a1[1];
      *(*a1 + v20 + 16) = v30;
      ++v21;
      v20 += 24;
    }

    while (v21 < 0xAAAAAAAAAAAAAAABLL * ((v31 - v19) >> 3));
  }

  a1[3] = a3;
  a1[4] = a3;
  *(a1 + 40) = 0;
  v32 = v22 + a4[6];
  a1[6] = v32;
  a1[7] = v22 + a4[7];
  *(a1 + 64) = *(a4 + 64);
  a1[9] = v22 + a4[9];
  a1[10] = v22 + a4[10];
  *(a1 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    a1[13] = v32;
  }

  *(a1 + 96) = *(a4 + 96);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, uint64_t a5, char a6)
{
  v7 = a5;
  v10 = a2;
  if ((*(a1 + 24) & 0x1F0) == 0)
  {

    return std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
  }

  if (!*(a1 + 28))
  {
    memset(v118, 0, 48);
    v63 = *(a1 + 40);
    if (!v63)
    {
LABEL_186:
      std::deque<std::__state<char>>::~deque[abi:ne200100](v118);
      return v63;
    }

    *v122 = 0;
    memset(&v122[8], 0, 32);
    v123 = 0uLL;
    memset(v124, 0, 37);
    std::deque<std::__state<char>>::push_back(v118, v122);
    if (v124[0])
    {
      operator delete(v124[0]);
    }

    if (*&v122[32])
    {
      operator delete(*&v122[32]);
    }

    v112 = a4;
    v64 = *&v118[8];
    v65 = *&v118[40] + *&v118[32] - 1;
    v66 = v65 / 0x2A;
    v67 = *(*&v118[8] + 8 * (v65 / 0x2A));
    v68 = 3 * (v65 % 0x2A);
    v69 = v67 + 32 * v68;
    *v69 = 0;
    *(v69 + 8) = v10;
    *(*(v64 + 8 * v66) + 32 * v68 + 16) = v10;
    *(*(v64 + 8 * v66) + 32 * v68 + 24) = a3;
    std::vector<std::pair<unsigned long,char const*>>::resize((*(v64 + 8 * v66) + 32 * v68 + 56), *(a1 + 32));
    v114 = 0;
    v70 = 0;
    v113 = 0;
    v71 = *&v118[40];
    v72 = *&v118[8];
    v73 = *&v118[40] + *&v118[32] - 1;
    v74 = v73 / 0x2A;
    v75 = 3 * (v73 % 0x2A);
    *(*(*&v118[8] + 8 * v74) + 32 * v75 + 80) = v63;
    v117 = (a3 - v10);
    v76 = *(v72 + 8 * v74) + 32 * v75;
    *(v76 + 88) = v7;
    *(v76 + 92) = a6;
    while (1)
    {
      if ((++v70 & 0xFFF) == 0 && (v70 >> 12) >= v117)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
      }

      v78 = *(*&v118[8] + 8 * ((v71 + *&v118[32] - 1) / 0x2AuLL)) + 96 * ((v71 + *&v118[32] - 1) % 0x2AuLL);
      v80 = (v78 + 80);
      v79 = *(v78 + 80);
      if (v79)
      {
        (*(*v79 + 16))(v79, v78);
      }

      v81 = *v78;
      if (*v78 <= -995)
      {
        switch(v81)
        {
          case -1000:
            v86 = *(v78 + 16);
            v88 = (v7 & 0x1000) == 0 || v86 == a3;
            v89 = v86 != v10 || (v7 & 0x20) == 0;
            if (!v89 || !v88)
            {
              goto LABEL_181;
            }

            v90 = &v86[-*(v78 + 8)];
            v91 = v113;
            if (v113 <= v90)
            {
              v91 = v90;
            }

            if ((v114 & 1) == 0)
            {
              v91 = v90;
            }

            if (v91 == v117)
            {
              v92 = *&v118[8];
              v93 = *&v118[16];
              if (*&v118[16] == *&v118[8])
              {
                v93 = *&v118[8];
              }

              else
              {
                v94 = v7;
                v95 = v10;
                v96 = (*&v118[8] + 8 * (*&v118[32] / 0x2AuLL));
                v97 = (*v96 + 96 * (*&v118[32] % 0x2AuLL));
                v98 = *(*&v118[8] + 8 * ((*&v118[40] + *&v118[32]) / 0x2AuLL)) + 96 * ((*&v118[40] + *&v118[32]) % 0x2AuLL);
                if (v97 != v98)
                {
                  do
                  {
                    std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v97);
                    v97 += 12;
                    if ((v97 - *v96) == 4032)
                    {
                      v99 = v96[1];
                      ++v96;
                      v97 = v99;
                    }
                  }

                  while (v97 != v98);
                  v92 = *&v118[8];
                  v93 = *&v118[16];
                }

                v10 = v95;
                v7 = v94;
              }

              *&v118[40] = 0;
              v102 = (v93 - v92) >> 3;
              if (v102 >= 3)
              {
                do
                {
                  operator delete(*v92);
                  v92 = (*&v118[8] + 8);
                  *&v118[8] = v92;
                  v102 = (*&v118[16] - v92) >> 3;
                }

                while (v102 > 2);
              }

              if (v102 == 1)
              {
                v103 = 21;
LABEL_172:
                *&v118[32] = v103;
              }

              else if (v102 == 2)
              {
                v103 = 42;
                goto LABEL_172;
              }

              v114 = 1;
              v113 = v117;
              break;
            }

            v113 = v91;
            std::deque<std::__state<char>>::pop_back(v118);
            v114 = 1;
            break;
          case -999:
            break;
          case -995:
            v82 = *&v118[32];
            v83 = *&v118[8];
            v84 = *&v118[16];
            if (!*&v118[32])
            {
              v85 = 42 * ((*&v118[16] - *&v118[8]) >> 3) - 1;
              if (*&v118[16] == *&v118[8])
              {
                v85 = 0;
              }

              if ((v85 - *&v118[40]) < 0x2A)
              {
                if (*&v118[16] - *&v118[8] < *&v118[24] - *v118)
                {
                  if (*&v118[8] != *v118)
                  {
                    operator new();
                  }

                  operator new();
                }

                if (*&v118[24] == *v118)
                {
                  v104 = 1;
                }

                else
                {
                  v104 = (*&v118[24] - *v118) >> 2;
                }

                *&v122[32] = v118;
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>>>(v104);
              }

              *&v118[32] = 42;
              *v122 = *(*&v118[16] - 8);
              *&v118[16] -= 8;
              std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(v118, v122);
              v82 = *&v118[32];
              v83 = *&v118[8];
              v84 = *&v118[16];
            }

            v105 = (v83 + 8 * (v82 / 0x2A));
            v106 = *v105 + 96 * (v82 % 0x2A);
            if (v84 == v83)
            {
              v107 = 0;
            }

            else
            {
              v107 = v106;
            }

            if (v107 == *v105)
            {
              v107 = *(v105 - 1) + 4032;
            }

            v108 = *(v78 + 16);
            *(v107 - 96) = *v78;
            *(v107 - 80) = v108;
            *(v107 - 56) = 0;
            *(v107 - 48) = 0;
            *(v107 - 64) = 0;
            *(v107 - 64) = *(v78 + 32);
            *(v107 - 48) = *(v78 + 48);
            *(v78 + 32) = 0;
            *(v78 + 40) = 0;
            *(v78 + 48) = 0;
            *(v107 - 40) = 0;
            *(v107 - 32) = 0;
            *(v107 - 24) = 0;
            *(v107 - 40) = *(v78 + 56);
            *(v107 - 24) = *(v78 + 72);
            *(v78 + 56) = 0;
            *(v78 + 64) = 0;
            *(v78 + 72) = 0;
            v109 = *v80;
            *(v107 - 11) = *(v78 + 85);
            *(v107 - 16) = v109;
            *&v118[32] = vaddq_s64(*&v118[32], xmmword_22916DDB0);
            goto LABEL_181;
          default:
            goto LABEL_189;
        }
      }

      else
      {
        if (v81 > -993)
        {
          if (v81 == -992)
          {
            v100 = *(v78 + 16);
            *v122 = *v78;
            *&v122[16] = v100;
            v123 = 0uLL;
            *&v122[32] = 0;
            std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v122[32], *(v78 + 32), *(v78 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v78 + 40) - *(v78 + 32)) >> 3));
            memset(v124, 0, 24);
            std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(v124, *(v78 + 56), *(v78 + 64), (*(v78 + 64) - *(v78 + 56)) >> 4);
            v101 = *v80;
            *(&v124[3] + 5) = *(v78 + 85);
            v124[3] = v101;
            (*(**(v78 + 80) + 24))(*(v78 + 80), 1, v78);
            (*(*v124[3] + 24))(v124[3], 0, v122);
            std::deque<std::__state<char>>::push_back(v118, v122);
            if (v124[0])
            {
              v124[1] = v124[0];
              operator delete(v124[0]);
            }

            if (*&v122[32])
            {
              *&v123 = *&v122[32];
              operator delete(*&v122[32]);
            }
          }

          else if (v81 != -991)
          {
LABEL_189:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
          }

          goto LABEL_182;
        }

        if (v81 != -994)
        {
          if (v81 != -993)
          {
            goto LABEL_189;
          }

LABEL_181:
          std::deque<std::__state<char>>::pop_back(v118);
        }
      }

LABEL_182:
      v71 = *&v118[40];
      if (!*&v118[40])
      {
        if (v114)
        {
          v110 = *v112;
          *v110 = v10;
          *(v110 + 8) = &v113[v10];
          v63 = 1;
          *(v110 + 16) = 1;
        }

        else
        {
          v63 = 0;
        }

        goto LABEL_186;
      }
    }
  }

  v12 = a5;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  *v122 = 0;
  memset(&v122[8], 0, 32);
  v123 = 0u;
  memset(v124, 0, 37);
  v13 = *(a1 + 40);
  if (!v13)
  {
LABEL_94:
    v63 = 0;
    goto LABEL_95;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v118 = 0;
  memset(&v118[8], 0, 48);
  *__p = 0uLL;
  memset(v120, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v125, v118);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v118[32])
  {
    operator delete(*&v118[32]);
  }

  v111 = a4;
  v14 = v126;
  *(v126 - 24) = 0;
  *(v14 - 11) = v10;
  *(v14 - 10) = v10;
  v115 = v10;
  *(v14 - 9) = a3;
  std::vector<std::sub_match<char const*>>::resize((v14 - 16), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v126 - 10), *(a1 + 32));
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v116 = a3;
  v18 = (a3 - v115);
  v19 = v126;
  *(v126 - 2) = v13;
  *(v19 - 2) = v12;
  *(v19 - 4) = a6;
  do
  {
    v20 = (++v17 & 0xFFF) != 0 || (v17 >> 12) < v18;
    if (!v20)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v22 = v19 - 4;
    v21 = *(v19 - 2);
    v23 = v19 - 24;
    if (v21)
    {
      (*(*v21 + 16))(v21, v19 - 24);
    }

    v24 = *v23;
    if (*v23 > -994)
    {
      switch(v24)
      {
        case -993:
          goto LABEL_40;
        case -992:
          v37 = *(v19 - 5);
          *v118 = *v23;
          *&v118[16] = v37;
          memset(&v118[32], 0, 24);
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v118[32], *(v19 - 8), *(v19 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v19 - 7) - *(v19 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v120[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v19 - 5), *(v19 - 4), (*(v19 - 4) - *(v19 - 5)) >> 4);
          v38 = *v22;
          *(&v120[1] + 5) = *(v19 - 11);
          v120[1] = v38;
          (*(**v22 + 24))(*v22, 1, v19 - 24);
          (*(*v120[1] + 24))(v120[1], 0, v118);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v125, v118);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v118[32])
          {
            *&v118[40] = *&v118[32];
            operator delete(*&v118[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_188:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
      }
    }

    else
    {
      if ((v24 + 995) < 2)
      {
        goto LABEL_45;
      }

      if (v24 != -1000)
      {
        goto LABEL_188;
      }

      v25 = *(v19 - 10);
      if ((v12 & 0x20) != 0 && v25 == v115 || (v12 & 0x1000) != 0 && v25 != v116)
      {
LABEL_40:
        v36 = (v126 - 24);
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v126 - 12);
        v126 = v36;
        goto LABEL_45;
      }

      v26 = &v25[-*(v19 - 11)];
      if ((v16 & (v15 >= v26)) == 0)
      {
        v27 = *(v19 - 5);
        *v122 = *v23;
        *&v122[16] = v27;
        if (v122 != v23)
        {
          v29 = *(v19 - 8);
          v28 = *(v19 - 7);
          v30 = v28 - v29;
          v31 = *(&v123 + 1);
          v32 = *&v122[32];
          if (*(&v123 + 1) - *&v122[32] < v28 - v29)
          {
            if (*&v122[32])
            {
              *&v123 = *&v122[32];
              operator delete(*&v122[32]);
              v31 = 0;
              *&v122[32] = 0;
              v123 = 0uLL;
            }

            v33 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 3);
            if (v33 <= 0xAAAAAAAAAAAAAAALL)
            {
              v34 = 0xAAAAAAAAAAAAAAABLL * (v31 >> 3);
              if (2 * v34 > v33)
              {
                v33 = 2 * v34;
              }

              if (v34 >= 0x555555555555555)
              {
                v35 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v35 = v33;
              }

              if (v35 <= 0xAAAAAAAAAAAAAAALL)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<std::__wrap_iter<char const*>>>>(v35);
              }
            }

            std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
          }

          v39 = v123;
          if (v123 - *&v122[32] >= v30)
          {
            while (v29 != v28)
            {
              *v32 = *v29;
              *(v32 + 16) = *(v29 + 16);
              v29 += 24;
              v32 += 24;
            }
          }

          else
          {
            v40 = (v29 + v123 - *&v122[32]);
            if (v123 != *&v122[32])
            {
              do
              {
                *v32 = *v29;
                *(v32 + 16) = *(v29 + 16);
                v29 += 24;
                v32 += 24;
              }

              while (v29 != v40);
            }

            if (v40 == v28)
            {
              v32 = v39;
            }

            else
            {
              v32 = v39;
              do
              {
                v41 = *v40;
                *(v39 + 16) = *(v40 + 2);
                *v39 = v41;
                v39 += 24;
                v40 = (v40 + 24);
                v32 += 24;
              }

              while (v40 != v28);
            }
          }

          *&v123 = v32;
          v43 = *(v19 - 5);
          v42 = *(v19 - 4);
          v44 = v42 - v43;
          v45 = v124[2];
          v46 = v124[0];
          if ((v124[2] - v124[0]) < (v42 - v43))
          {
            if (v124[0])
            {
              v124[1] = v124[0];
              operator delete(v124[0]);
              v45 = 0;
              memset(v124, 0, 24);
            }

            v47 = v44 >> 4;
            if (!((v44 >> 4) >> 60))
            {
              if (v45 >> 3 > v47)
              {
                v47 = v45 >> 3;
              }

              if (v45 >= 0x7FFFFFFFFFFFFFF0)
              {
                v48 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v48 = v47;
              }

              if (!(v48 >> 60))
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(v48);
              }
            }

            std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
          }

          v49 = v124[1];
          if ((v124[1] - v124[0]) >= v44)
          {
            while (v43 != v42)
            {
              *v46 = *v43;
              v46[1] = *(v43 + 1);
              v43 += 16;
              v46 += 2;
            }
          }

          else
          {
            v50 = &v43[v124[1] - v124[0]];
            if (v124[1] != v124[0])
            {
              do
              {
                *v46 = *v43;
                v46[1] = *(v43 + 1);
                v43 += 16;
                v46 += 2;
              }

              while (v43 != v50);
            }

            if (v50 == v42)
            {
              v46 = v49;
            }

            else
            {
              v46 = v49;
              do
              {
                v51 = *v50;
                v50 += 16;
                *v49++ = v51;
                v46 += 2;
              }

              while (v50 != v42);
            }
          }

          v124[1] = v46;
        }

        v52 = *v22;
        *(&v124[3] + 5) = *(v22 + 5);
        v124[3] = v52;
        v15 = v26;
      }

      v53 = v126;
      if (v15 == v18)
      {
        v54 = v125;
        while (v53 != v54)
        {
          v53 -= 12;
          std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v53);
        }

        v126 = v54;
        v16 = 1;
        v15 = v18;
      }

      else
      {
        v55 = (v126 - 24);
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v126 - 12);
        v126 = v55;
        v16 = 1;
      }
    }

LABEL_45:
    v19 = v126;
  }

  while (v125 != v126);
  if ((v16 & 1) == 0)
  {
    goto LABEL_94;
  }

  v57 = *v111;
  *v57 = v115;
  *(v57 + 8) = &v15[v115];
  *(v57 + 16) = 1;
  if (v123 != *&v122[32])
  {
    v58 = 0xAAAAAAAAAAAAAAABLL * ((v123 - *&v122[32]) >> 3);
    v59 = (*&v122[32] + 16);
    v60 = 1;
    do
    {
      v61 = v57 + 24 * v60;
      *v61 = *(v59 - 1);
      v62 = *v59;
      v59 += 24;
      *(v61 + 16) = v62;
      v20 = v58 > v60++;
    }

    while (v20);
  }

  v63 = 1;
LABEL_95:
  if (v124[0])
  {
    v124[1] = v124[0];
    operator delete(v124[0]);
  }

  if (*&v122[32])
  {
    *&v123 = *&v122[32];
    operator delete(*&v122[32]);
  }

  *v122 = &v125;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v122);
  return v63;
}

void sub_228D8A7DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  operator delete(v38);
  if (__p)
  {
    operator delete(__p);
  }

  std::deque<std::__state<char>>::~deque[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (__n <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= __n)
      {
        v8 = __n;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](this, v9);
    }

    std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v11 >= __n)
  {
    v12 = __n;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v12)
  {
    v13 = __u->std::pair<const char *, const char *>;
    matched = __u->matched;
    v15 = begin;
    do
    {
      v15->std::pair<const char *, const char *> = v13;
      v15->matched = matched;
      ++v15;
      --v12;
    }

    while (v12);
  }

  if (__n <= v11)
  {
    this->__end_ = &begin[__n];
  }

  else
  {
    v16 = &end[__n - v11];
    v17 = 24 * __n - 8 * ((end - begin) >> 3);
    do
    {
      v18 = __u->std::pair<const char *, const char *>;
      *&end->matched = *&__u->matched;
      end->std::pair<const char *, const char *> = v18;
      ++end;
      v17 -= 24;
    }

    while (v17);
    this->__end_ = v16;
  }
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v42;
  *(v42 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 16), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v42 - 10), *(a1 + 32));
  v14 = v42;
  *(v42 - 2) = v6;
  *(v14 - 2) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v17 = v14 - 4;
    v16 = *(v14 - 2);
    v18 = v14 - 24;
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 24);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 5);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v36[32], *(v14 - 8), *(v14 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 7) - *(v14 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v14 - 5), *(v14 - 4), (*(v14 - 4) - *(v14 - 5)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 24);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v42;
    ++v15;
    if (v41 == v42)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 10);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = (v42 - 24);
    std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v42 - 12);
    v42 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 8);
  v28 = *(v14 - 7) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v41;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v36);
  return v24;
}

void sub_228D8AD64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__state<char>::~__state(&a11);
  a11 = v16 - 112;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void std::vector<std::__state<char>>::push_back[abi:ne200100](void **a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
    v9 = v8 + 1;
    if (v8 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x155555555555555)
    {
      v11 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = *(a2 + 16);
    v13 = 96 * v8;
    *v13 = *a2;
    *(v13 + 16) = v12;
    *(v13 + 32) = *(a2 + 32);
    *(v13 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(v13 + 56) = *(a2 + 56);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v14 = *(a2 + 72);
    v15 = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(v13 + 85) = *(a2 + 85);
    *(v13 + 72) = v14;
    *(v13 + 80) = v15;
    v16 = *a1;
    v17 = a1[1];
    v18 = (v13 + *a1 - v17);
    if (*a1 != v17)
    {
      v19 = *a1;
      v20 = (v13 + *a1 - v17);
      do
      {
        v21 = *(v19 + 1);
        *v20 = *v19;
        *(v20 + 1) = v21;
        *(v20 + 5) = 0;
        *(v20 + 6) = 0;
        *(v20 + 2) = *(v19 + 2);
        *(v20 + 6) = *(v19 + 6);
        *(v19 + 4) = 0;
        *(v19 + 5) = 0;
        *(v19 + 6) = 0;
        *(v20 + 8) = 0;
        *(v20 + 9) = 0;
        *(v20 + 56) = *(v19 + 56);
        *(v20 + 9) = *(v19 + 9);
        *(v19 + 7) = 0;
        *(v19 + 8) = 0;
        *(v19 + 9) = 0;
        v22 = *(v19 + 10);
        *(v20 + 85) = *(v19 + 85);
        *(v20 + 10) = v22;
        v19 += 96;
        v20 += 96;
      }

      while (v19 != v17);
      do
      {
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v16);
        v16 += 12;
      }

      while (v16 != v17);
      v16 = *a1;
    }

    v7 = (v13 + 96);
    *a1 = v18;
    a1[1] = v7;
    a1[2] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 1) = v5;
    *(v3 + 5) = 0;
    *(v3 + 6) = 0;
    *(v3 + 4) = 0;
    *(v3 + 2) = *(a2 + 32);
    *(v3 + 6) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 7) = 0;
    *(v3 + 8) = 0;
    *(v3 + 9) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 9) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v6 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 10) = v6;
    v7 = v3 + 96;
  }

  a1[1] = v7;
}

void *std::__state<char>::~__state(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::vector<std::sub_match<char const*>>::resize(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __sz, std::vector<std::csub_match>::const_reference __x)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  v7 = __sz - v6;
  if (__sz <= v6)
  {
    if (__sz < v6)
    {
      this->__end_ = &begin[__sz];
    }
  }

  else
  {
    value = this->__end_cap_.__value_;
    if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) < v7)
    {
      if (__sz <= 0xAAAAAAAAAAAAAAALL)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
        v10 = 2 * v9;
        if (2 * v9 <= __sz)
        {
          v10 = __sz;
        }

        if (v9 >= 0x555555555555555)
        {
          v11 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v11 = v10;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<std::__wrap_iter<char const*>>>>(v11);
      }

      std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
    }

    v12 = &end[v7];
    v13 = 24 * __sz - 8 * (v5 >> 3);
    do
    {
      v14 = __x->std::pair<const char *, const char *>;
      *&end->matched = *&__x->matched;
      end->std::pair<const char *, const char *> = v14;
      ++end;
      v13 -= 24;
    }

    while (v13);
    this->__end_ = v12;
  }
}

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 60))
      {
        v8 = value - begin;
        v9 = v8 >> 3;
        if (v8 >> 3 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(v10);
      }

      std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
    }

    bzero(this->__end_, 16 * v6);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x22AAC82B0](exception, 12);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x22AAC82B0](exception, 16);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__destroy_at[abi:ne200100]<std::__state<char>,0>(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_228D8B47C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<std::__wrap_iter<char const*>>>>(a2);
  }

  std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_228D8B540(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(a2);
  }

  std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
}

void std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 std::deque<std::__state<char>>::push_back(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = v5 - v4;
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = 42 * ((v5 - v4) >> 3) - 1;
  }

  v8 = a1[4];
  v9 = a1[5] + v8;
  if (v7 == v9)
  {
    if (v8 < 0x2A)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v6 < v11)
      {
        if (v10 != v5)
        {
          operator new();
        }

        operator new();
      }

      if (v10 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 >> 2;
      }

      v17[4] = a1;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>>>(v12);
    }

    a1[4] = v8 - 42;
    v17[0] = *v4;
    a1[1] = (v4 + 1);
    std::__split_buffer<std::__thread_id *>::emplace_back<std::__thread_id *&>(a1, v17);
    v4 = a1[1];
    v9 = a1[5] + a1[4];
  }

  v13 = v4[v9 / 0x2A] + 96 * (v9 % 0x2A);
  v14 = *(a2 + 16);
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 32) = 0;
  *(v13 + 32) = *(a2 + 32);
  *(v13 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  result = *(a2 + 56);
  *(v13 + 56) = result;
  *(v13 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v16 = *(a2 + 80);
  *(v13 + 85) = *(a2 + 85);
  *(v13 + 80) = v16;
  ++a1[5];
  return result;
}

void sub_228D8B91C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  operator delete(v10);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::deque<std::__state<char>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  std::__destroy_at[abi:ne200100]<std::__state<char>,0>((*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
  v3 = a1[2];
  v4 = v3 == a1[1];
  v5 = 42 * ((v3 - a1[1]) >> 3) - 1;
  v7 = a1[4];
  v6 = a1[5];
  a1[5] = v6 - 1;
  if (v4)
  {
    v5 = 0;
  }

  if ((v5 - (v6 + v7) - 83) <= 0xFFFFFFFFFFFFFFABLL)
  {
    operator delete(*(v3 - 8));
    a1[2] -= 8;
  }
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>>>(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

uint64_t std::deque<std::__state<char>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x2A];
    v7 = *v6 + 96 * (v5 % 0x2A);
    v8 = v3[(*(a1 + 40) + v5) / 0x2A] + 96 * ((*(a1 + 40) + v5) % 0x2A);
    if (v7 != v8)
    {
      do
      {
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 42;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(void *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  *(__dst + 23) = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  *(v4 + v5) = 0;
  return __dst;
}

void std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](std::regex_traits<char> *a1, char *a2, int a3)
{
  v6 = std::regex_traits<char>::regex_traits(a1);
  LODWORD(v6[1].__loc_.__locale_) = a3;
  *(&v6[1].__loc_.__locale_ + 4) = 0u;
  *(&v6[1].__col_ + 4) = 0u;
  HIDWORD(v6[2].__ct_) = 0;
  v7 = strlen(a2);
  std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(a1, a2, &a2[v7]);
}

void sub_228D8BDAC(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

std::regex_traits<char> *__cdecl std::regex_traits<char>::regex_traits(std::regex_traits<char> *this)
{
  v2 = MEMORY[0x22AAC8500]();
  this->__ct_ = std::locale::use_facet(v2, MEMORY[0x277D82680]);
  this->__col_ = std::locale::use_facet(&this->__loc_, MEMORY[0x277D826A0]);
  return this;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x22AAC82B0](exception, 17);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3)
  {
    do
    {
      if (*v7 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = ++v7;
      do
      {
        v11 = v7;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
      }

      while (v7 != v11);
      if (v11 == v10)
      {
        operator new();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v11 != a3);
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
      ++v3;
    }

    if (v3 != a3)
    {
      do
      {
        v6 = v3;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(this, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
        ++v3;
      }
    }

    if (v3 != a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  while (v8 != a3 && *v8 == 124)
  {
    v9 = a1->__end_;
    v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, v8 + 1, a3);
    if (v10 == v8 + 1)
    {
      goto LABEL_8;
    }

    v8 = v10;
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
  }

  return v8;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_grep<char const*>(std::basic_regex<char> *a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, __s, v8);
  if (v8 != a3)
  {
    ++v8;
  }

  while (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = a1->__end_;
    if (v10 == v8)
    {
      operator new();
    }

    std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, v8, v10);
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v11);
    if (v10 == a3)
    {
      v8 = v10;
    }

    else
    {
      v8 = v10 + 1;
    }
  }

  return v8;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<char const*>(std::basic_regex<char> *a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, __s, v8);
  if (v8 != a3)
  {
    ++v8;
  }

  while (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = a1->__end_;
    if (v10 == v8)
    {
      operator new();
    }

    std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v8, v10);
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v11);
    if (v10 == a3)
    {
      v8 = v10;
    }

    else
    {
      v8 = v10 + 1;
    }
  }

  return v8;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x22AAC82B0](exception, 14);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_228D8C750(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x22AAC8590);
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void (__cdecl ***std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x22AAC8590);
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }
}

{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }

  JUMPOUT(0x22AAC8590);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = *a2;
  if (v6 > 0x5B)
  {
    if (v6 != 92)
    {
      if (v6 != 94)
      {
        goto LABEL_65;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
      return a2 + 1;
    }

    if (a2 + 1 != a3)
    {
      v11 = a2[1];
      if (v11 == 66)
      {
        v12 = 1;
        goto LABEL_56;
      }

      if (v11 == 98)
      {
        v12 = 0;
LABEL_56:
        std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(this, v12);
        return a2 + 2;
      }
    }

    end = this->__end_;
    marked_count = this->__marked_count_;
    goto LABEL_37;
  }

  if (v6 == 36)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
    return a2 + 1;
  }

  if (v6 != 40)
  {
    goto LABEL_65;
  }

  if (a2 + 1 == a3 || a2[1] != 63 || a2 + 2 == a3)
  {
    goto LABEL_22;
  }

  v7 = a2[2];
  if (v7 == 33)
  {
    std::regex_traits<char>::regex_traits(&v38.__traits_);
    memset(&v38.__flags_, 0, 40);
    v38.__flags_ = this->__flags_;
    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v38, a2 + 3, a3);
    v29 = v38.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v38, 1, this->__marked_count_);
    this->__marked_count_ += v29;
    if (v8 == a3 || *v8 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_63;
  }

  if (v7 != 61)
  {
LABEL_22:
    end = this->__end_;
    marked_count = this->__marked_count_;
LABEL_23:
    if (a2 + 1 == a3)
    {
      goto LABEL_100;
    }

    if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
    {
      p_open_count = &this->__open_count_;
      ++this->__open_count_;
      v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, a2 + 3, a3);
      if (v16 == a3)
      {
        goto LABEL_100;
      }

      v17 = v16;
      if (*v16 != 41)
      {
        goto LABEL_100;
      }
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
      v18 = this->__marked_count_;
      p_open_count = &this->__open_count_;
      ++this->__open_count_;
      v19 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, a2 + 1, a3);
      if (v19 == a3 || (v17 = v19, *v19 != 41))
      {
LABEL_100:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, v18);
    }

    --*p_open_count;
    v20 = v17 + 1;
LABEL_34:
    result = a2;
    if (v20 == a2)
    {
      return result;
    }

    goto LABEL_95;
  }

  std::regex_traits<char>::regex_traits(&v38.__traits_);
  memset(&v38.__flags_, 0, 40);
  v38.__flags_ = this->__flags_;
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v38, a2 + 3, a3);
  v9 = v38.__marked_count_;
  std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v38, 0, this->__marked_count_);
  this->__marked_count_ += v9;
  if (v8 == a3 || *v8 != 41)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_63:
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v38.__traits_.__loc_);
  result = v8 + 1;
  if (v8 + 1 != a2)
  {
    return result;
  }

  v6 = *a2;
LABEL_65:
  end = this->__end_;
  marked_count = this->__marked_count_;
  if (v6 > 62)
  {
    v30 = (v6 - 92);
    if (v30 > 0x21)
    {
LABEL_74:
      if (v6 != 91)
      {
        if (v6 == 63)
        {
          goto LABEL_99;
        }

        goto LABEL_82;
      }

      v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
      goto LABEL_34;
    }

    if (((1 << (v6 - 92)) & 0x300000006) != 0)
    {
      return a2;
    }

    if (v6 != 92)
    {
      if (v30 == 31)
      {
        goto LABEL_99;
      }

      goto LABEL_74;
    }

LABEL_37:
    v21 = a2 + 1;
    if (a2 + 1 == a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    v22 = *v21;
    if (v22 == 48)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, 0);
LABEL_94:
      v20 = a2 + 2;
      goto LABEL_95;
    }

    if ((v22 - 49) <= 8)
    {
      v23 = (v22 - 48);
      v20 = a2 + 2;
      if (a2 + 2 != a3)
      {
        while (1)
        {
          v24 = *v20;
          if ((v24 - 48) > 9)
          {
            break;
          }

          if (v23 >= 0x19999999)
          {
            goto LABEL_101;
          }

          v23 = v24 + 10 * v23 - 48;
          if (++v20 == a3)
          {
            v20 = a3;
            break;
          }
        }

        if (!v23)
        {
          goto LABEL_101;
        }
      }

      if (v23 > marked_count)
      {
LABEL_101:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(this, v23);
      if (v20 != v21)
      {
        goto LABEL_34;
      }

      v22 = *v21;
    }

    if (v22 > 99)
    {
      if (v22 == 119)
      {
        v25 = this;
        v26 = 0;
        goto LABEL_86;
      }

      if (v22 == 115)
      {
        v35 = this;
        v36 = 0;
LABEL_92:
        started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v35, v36);
        v32 = started->__mask_ | 0x4000;
        goto LABEL_93;
      }

      if (v22 != 100)
      {
        goto LABEL_87;
      }

      v27 = this;
      v28 = 0;
    }

    else
    {
      if (v22 != 68)
      {
        if (v22 != 83)
        {
          if (v22 == 87)
          {
            v25 = this;
            v26 = 1;
LABEL_86:
            v33 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v25, v26);
            v33->__mask_ |= 0x500u;
            std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v33, 95);
            goto LABEL_94;
          }

LABEL_87:
          v34 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(this, a2 + 1, a3, 0);
          if (v34 == v21)
          {
            v20 = a2;
          }

          else
          {
            v20 = v34;
          }

          goto LABEL_34;
        }

        v35 = this;
        v36 = 1;
        goto LABEL_92;
      }

      v27 = this;
      v28 = 1;
    }

    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v27, v28);
    v32 = started->__mask_ | 0x400;
LABEL_93:
    started->__mask_ = v32;
    goto LABEL_94;
  }

  if (v6 > 40)
  {
    if (v6 != 41)
    {
      if (v6 == 46)
      {
        operator new();
      }

      if ((v6 - 42) < 2)
      {
LABEL_99:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
      }

      goto LABEL_82;
    }

    return a2;
  }

  if (v6 == 36)
  {
    return a2;
  }

  if (v6 == 40)
  {
    goto LABEL_23;
  }

LABEL_82:
  std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v6);
  v20 = a2 + 1;
LABEL_95:
  v37 = this->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(this, v20, a3, end, marked_count + 1, v37);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a6;
  v7 = a5;
  v10 = a1;
  v11 = *(a1 + 24) & 0x1F0;
  v12 = *a2;
  if (v12 > 0x3E)
  {
    if (v12 == 63)
    {
      v13 = a2 + 1;
      if (v11)
      {
        v20 = 1;
      }

      else
      {
        v20 = v13 == a3;
      }

      if (!v20 && *v13 == 63)
      {
        v13 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v18 = 1;
        goto LABEL_33;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_45;
    }

    if (v12 != 123)
    {
      return a2;
    }

    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(a2 + 1, a3, &__max);
    if (v16 != v15)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v13 = v16 + 1;
            if (!v11 && v13 != a3 && *v13 == 63)
            {
              v13 = v16 + 2;
              v14 = __max;
              a5 = v7;
              a6 = v6;
              a1 = v10;
              v18 = __max;
LABEL_33:
              v21 = __s;
              v22 = 0;
LABEL_46:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
              return v13;
            }

            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            v18 = __max;
LABEL_45:
            v21 = __s;
            v22 = 1;
            goto LABEL_46;
          }

          goto LABEL_58;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_58;
        }

        if (*v23 == 125)
        {
          v13 = v16 + 2;
          if (!v11 && v13 != a3 && *v13 == 63)
          {
            v13 = v16 + 3;
            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            goto LABEL_26;
          }

          v14 = __max;
          a5 = v7;
          a6 = v6;
          a1 = v10;
LABEL_36:
          v18 = -1;
          goto LABEL_45;
        }

        v27 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v16 + 1, a3, &v27);
        if (v25 != v23 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = __max;
          if (v27 >= __max)
          {
            v13 = v25 + 1;
            v22 = 1;
            if (!v11 && v13 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v13 = v25 + 2;
              }
            }

            a5 = v7;
            a6 = v6;
            a1 = v10;
            v21 = __s;
            goto LABEL_46;
          }

          goto LABEL_58;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

LABEL_58:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v12 == 42)
  {
    v13 = a2 + 1;
    if (v11)
    {
      v19 = 1;
    }

    else
    {
      v19 = v13 == a3;
    }

    if (!v19 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_26;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_36;
  }

  if (v12 == 43)
  {
    v13 = a2 + 1;
    if (!v11 && v13 != a3 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_26:
      v18 = -1;
      goto LABEL_33;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_36;
  }

  return a2;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x22AAC82B0](exception, 6);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x22AAC8590);
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x22AAC8590);
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_283BEA848;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_283BEA848;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x22AAC8590);
}

uint64_t std::__word_boundary<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_283BEA890;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_283BEA890;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x22AAC8590);
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  memset(&v22, 0, 17);
  v23 = 0;
  v24 = 0;
  memset(&__p, 0, sizeof(__p));
  v4 = (*(a1 + 44) + 1);
  v5 = *(a2 + 16);
  v18.first = *(a2 + 24);
  v18.second = v18.first;
  v18.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v4, &v18);
  v19 = v5;
  v20 = v5;
  v21 = 0;
  v22 = v18;
  v24 = v5;
  v23 = 1;
  v6 = *(a2 + 16);
  if (v6 == *(a2 + 8))
  {
    v7 = *(a2 + 92);
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 84) == std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v6, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v7))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    begin = __p.__begin_;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  begin = __p.__begin_;
  v9 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  if (v9 < 2)
  {
LABEL_10:
    if (!begin)
    {
      return;
    }

    goto LABEL_11;
  }

  v10 = *(a1 + 80);
  v11 = *(a2 + 32);
  v12 = 2;
  v13 = 1;
  do
  {
    v14 = &begin[v13];
    v15 = v11 + 24 * v10;
    *v15 = v14->std::pair<const char *, const char *>;
    *(v15 + 16) = v14->matched;
    v13 = v12;
    ++v10;
  }

  while (v9 > v12++);
LABEL_11:

  operator delete(begin);
}

void sub_228D8DEC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_240;
    }

    v5 = a2[1] == 94 ? a2 + 2 : a2 + 1;
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_240;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v5 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](started, 93);
      ++v5;
    }

    if (v5 != a3)
    {
      v90 = a3 - 4;
      while (1)
      {
        v8 = v5;
        if (v5 == a3)
        {
          goto LABEL_147;
        }

        v9 = *v5;
        v8 = v5;
        if (v9 == 93)
        {
          goto LABEL_147;
        }

        v10 = 0;
        __p[0] = 0;
        __p[1] = 0;
        v98 = 0;
        v11 = 0;
        v8 = v5;
        if (v5 + 1 != a3 && v9 == 91)
        {
          v12 = v5[1];
          switch(v12)
          {
            case '.':
              v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v5 + 2, a3, __p);
              v11 = HIBYTE(v98);
              v10 = __p[1];
              break;
            case ':':
              if (a3 - (v5 + 2) < 2)
              {
                goto LABEL_239;
              }

              for (i = 0; v5[i + 2] != 58 || v5[i + 3] != 93; ++i)
              {
                if (v90 - v5 == i)
                {
                  goto LABEL_239;
                }
              }

              v23 = &v5[i + 2];
              if (v23 == a3)
              {
LABEL_239:
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
              }

              v24 = *(a1 + 24);
              std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(&__dst, v5 + 2, v23, i);
              end_high = HIBYTE(__dst.__end_);
              if (SHIBYTE(__dst.__end_) >= 0)
              {
                p_dst = &__dst;
              }

              else
              {
                p_dst = __dst.__first_;
              }

              if (SHIBYTE(__dst.__end_) < 0)
              {
                end_high = __dst.__begin_;
              }

              (*(**(a1 + 8) + 48))(*(a1 + 8), p_dst, end_high + p_dst);
              if (SHIBYTE(__dst.__end_) >= 0)
              {
                first = &__dst;
              }

              else
              {
                first = __dst.__first_;
              }

              classname = std::__get_classname(first, v24 & 1);
              if (SHIBYTE(__dst.__end_) < 0)
              {
                operator delete(__dst.__first_);
              }

              if (!classname)
              {
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
              }

              v29 = 0;
              *(v7 + 160) |= classname;
              v18 = &v5[i + 4];
              goto LABEL_143;
            case '=':
              if (a3 - (v5 + 2) < 2)
              {
                goto LABEL_239;
              }

              v13 = v90 - v5;
              v14 = v5 + 2;
              for (j = v5 + 2; ; v14 = j)
              {
                v16 = *j++;
                if (v16 == 61 && *j == 93)
                {
                  break;
                }

                if (!v13)
                {
                  goto LABEL_239;
                }

                --v13;
              }

              if (v14 == a3)
              {
                goto LABEL_239;
              }

              std::regex_traits<char>::__lookup_collatename<char const*>(__src, a1, v5 + 2, v14);
              v21 = SHIBYTE(v102);
              if ((SHIBYTE(v102) & 0x8000000000000000) != 0)
              {
                v21 = __src[1];
                if (!__src[1])
                {
LABEL_241:
                  std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
                }

                v22 = __src[0];
              }

              else
              {
                if (!HIBYTE(v102))
                {
                  goto LABEL_241;
                }

                v22 = __src;
              }

              std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(&__dst, v22, v22 + v21, v21);
              (*(**(a1 + 16) + 32))(__s);
              v31 = HIBYTE(v100);
              if (v100 < 0)
              {
                v31 = __s[1];
              }

              v32 = (v7 + 136);
              if (v31 != 1)
              {
                if (v31 == 12)
                {
                  v33 = __s;
                  if (v100 < 0)
                  {
                    v33 = __s[0];
                  }

                  *(v33 + 11) = *(v33 + 3);
                }

                else if (SHIBYTE(v100) < 0)
                {
                  *__s[0] = 0;
                  __s[1] = 0;
                }

                else
                {
                  LOBYTE(__s[0]) = 0;
                  HIBYTE(v100) = 0;
                }
              }

              if (SHIBYTE(__dst.__end_) < 0)
              {
                operator delete(__dst.__first_);
                v32 = (v7 + 136);
              }

              v39 = HIBYTE(v100);
              if (v100 < 0)
              {
                v39 = __s[1];
              }

              if (v39)
              {
                v41 = *(v7 + 144);
                v40 = *(v7 + 152);
                if (v41 >= v40)
                {
                  v45 = *v32;
                  v46 = v32;
                  v47 = 0xAAAAAAAAAAAAAAABLL * ((v41 - *v32) >> 3);
                  v48 = v47 + 1;
                  if (v47 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
                  }

                  v49 = 0xAAAAAAAAAAAAAAABLL * ((v40 - v45) >> 3);
                  if (2 * v49 > v48)
                  {
                    v48 = 2 * v49;
                  }

                  if (v49 >= 0x555555555555555)
                  {
                    v50 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v50 = v48;
                  }

                  __dst.__end_cap_.__value_ = v46;
                  if (v50)
                  {
                    if (v50 <= 0xAAAAAAAAAAAAAAALL)
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  begin = (24 * v47);
                  __dst.__first_ = 0;
                  __dst.__begin_ = (24 * v47);
                  value = 0;
                  __dst.__end_ = (24 * v47);
                  __dst.__end_cap_.__value_ = 0;
                  if (v100 < 0)
                  {
                    std::string::__init_copy_ctor_external(begin, __s[0], __s[1]);
                    begin = __dst.__begin_;
                    end = __dst.__end_;
                    value = __dst.__end_cap_.__value_;
                  }

                  else
                  {
                    *&begin->__r_.__value_.__l.__data_ = *__s;
                    *(24 * v47 + 0x10) = v100;
                    end = (24 * v47);
                  }

                  v52 = end + 1;
                  v56 = *(v7 + 136);
                  v57 = *(v7 + 144) - v56;
                  v58 = begin - v57;
                  memcpy(begin - v57, v56, v57);
                  v59 = *(v7 + 136);
                  *(v7 + 136) = v58;
                  *(v7 + 144) = v52;
                  v60 = *(v7 + 152);
                  *(v7 + 152) = value;
                  __dst.__end_ = v59;
                  __dst.__end_cap_.__value_ = v60;
                  __dst.__first_ = v59;
                  __dst.__begin_ = v59;
                  std::__split_buffer<std::string>::~__split_buffer(&__dst);
                }

                else
                {
                  if (SHIBYTE(v100) < 0)
                  {
                    std::string::__init_copy_ctor_external(*(v7 + 144), __s[0], __s[1]);
                  }

                  else
                  {
                    v42 = *__s;
                    *(v41 + 16) = v100;
                    *v41 = v42;
                  }

                  v52 = (v41 + 24);
                  *(v7 + 144) = v41 + 24;
                }

                *(v7 + 144) = v52;
              }

              else
              {
                v43 = HIBYTE(v102);
                if (SHIBYTE(v102) < 0)
                {
                  v43 = __src[1];
                }

                if (v43 == 2)
                {
                  v51 = __src;
                  if (SHIBYTE(v102) < 0)
                  {
                    v51 = __src[0];
                  }

                  std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, *v51, *(v51 + 1));
                }

                else
                {
                  if (v43 != 1)
                  {
                    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
                  }

                  v44 = __src;
                  if (SHIBYTE(v102) < 0)
                  {
                    v44 = __src[0];
                  }

                  std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, *v44);
                }
              }

              if (SHIBYTE(v100) < 0)
              {
                operator delete(__s[0]);
              }

              if (SHIBYTE(v102) < 0)
              {
                operator delete(__src[0]);
              }

              v29 = 0;
              v18 = (v14 + 2);
LABEL_143:
              v37 = v5;
              goto LABEL_144;
            default:
              v10 = 0;
              v11 = 0;
              v8 = v5;
              break;
          }
        }

        v18 = (*(a1 + 24) & 0x1F0);
        if (v11 >= 0)
        {
          v10 = v11;
        }

        if (!v10)
        {
          if ((*(a1 + 24) & 0x1B0 | 0x40) == 0x40)
          {
            v19 = *v8;
            if (v19 == 92)
            {
              if ((*(a1 + 24) & 0x1F0) != 0)
              {
                v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v8 + 1, a3, __p);
              }

              else
              {
                v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v8 + 1, a3, __p, v7);
              }

              v8 = v20;
              goto LABEL_76;
            }
          }

          else
          {
            LOBYTE(v19) = *v8;
          }

          if (v11 < 0)
          {
            v30 = __p[0];
            __p[1] = 1;
          }

          else
          {
            HIBYTE(v98) = 1;
            v30 = __p;
          }

          *v30 = v19;
          *(v30 + 1) = 0;
          ++v8;
        }

LABEL_76:
        if (v8 != a3)
        {
          v34 = *v8;
          if (v34 != 93)
          {
            v36 = v8 + 1;
            if (v8 + 1 != a3 && v34 == 45 && *v36 != 93)
            {
              v95[0] = 0;
              v95[1] = 0;
              v96 = 0;
              v37 = v8 + 2;
              if (v8 + 2 != a3 && *v36 == 91 && *v37 == 46)
              {
                v38 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v8 + 3, a3, v95);
                goto LABEL_152;
              }

              if ((v18 | 0x40) == 0x40)
              {
                LODWORD(v36) = *v36;
                if (v36 == 92)
                {
                  if (v18)
                  {
                    v38 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v8 + 2, a3, v95);
                  }

                  else
                  {
                    v38 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v8 + 2, a3, v95, v7);
                  }

LABEL_152:
                  v37 = v38;
LABEL_153:
                  v18 = &__dst;
                  *v93 = *__p;
                  v94 = v98;
                  __p[1] = 0;
                  v98 = 0;
                  *v91 = *v95;
                  v92 = v96;
                  v95[0] = 0;
                  v95[1] = 0;
                  v96 = 0;
                  __p[0] = 0;
                  if (*(v7 + 170) == 1)
                  {
                    if (*(v7 + 169) == 1)
                    {
                      v62 = v93[1];
                      if (SHIBYTE(v94) >= 0)
                      {
                        v62 = SHIBYTE(v94);
                      }

                      if (v62)
                      {
                        v63 = 0;
                        v64 = SHIBYTE(v94) >> 63;
                        do
                        {
                          if (v64)
                          {
                            v65 = v93[0];
                          }

                          else
                          {
                            v65 = v93;
                          }

                          v66 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(v65 + v63));
                          if (SHIBYTE(v94) >= 0)
                          {
                            v67 = v93;
                          }

                          else
                          {
                            v67 = v93[0];
                          }

                          *(v67 + v63++) = v66;
                          v68 = SHIBYTE(v94);
                          v64 = SHIBYTE(v94) >> 63;
                          if (SHIBYTE(v94) < 0)
                          {
                            v68 = v93[1];
                          }
                        }

                        while (v63 < v68);
                      }

                      v69 = v91[1];
                      if (v92 >= 0)
                      {
                        v69 = SHIBYTE(v92);
                      }

                      if (v69)
                      {
                        v70 = 0;
                        v71 = SHIBYTE(v92) >> 63;
                        do
                        {
                          if (v71)
                          {
                            v72 = v91[0];
                          }

                          else
                          {
                            v72 = v91;
                          }

                          v73 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(v72 + v70));
                          if (v92 >= 0)
                          {
                            v74 = v91;
                          }

                          else
                          {
                            v74 = v91[0];
                          }

                          *(v74 + v70++) = v73;
                          v75 = SHIBYTE(v92);
                          v71 = SHIBYTE(v92) >> 63;
                          if (v92 < 0)
                          {
                            v75 = v91[1];
                          }
                        }

                        while (v70 < v75);
                      }
                    }

                    v76 = HIBYTE(v94);
                    if (SHIBYTE(v94) >= 0)
                    {
                      v77 = v93;
                    }

                    else
                    {
                      v77 = v93[0];
                    }

                    if (SHIBYTE(v94) < 0)
                    {
                      v76 = v93[1];
                    }

                    std::regex_traits<char>::transform<std::__wrap_iter<char *>>(__src, v7 + 16, v77, &v76[v77]);
                    v78 = HIBYTE(v92);
                    if (v92 >= 0)
                    {
                      v79 = v91;
                    }

                    else
                    {
                      v79 = v91[0];
                    }

                    if (v92 < 0)
                    {
                      v78 = v91[1];
                    }

                    std::regex_traits<char>::transform<std::__wrap_iter<char *>>(__s, v7 + 16, v79, &v78[v79]);
                    *&__dst.__first_ = *__src;
                    __dst.__end_ = v102;
                    __src[1] = 0;
                    v102 = 0;
                    __dst.__end_cap_ = *__s;
                    v104 = v100;
                    __s[0] = 0;
                    __s[1] = 0;
                    v100 = 0;
                    __src[0] = 0;
                    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((v7 + 88), &__dst);
                    if (SHIBYTE(v104) < 0)
                    {
                      operator delete(__dst.__end_cap_.__value_);
                    }

                    if (SHIBYTE(__dst.__end_) < 0)
                    {
                      operator delete(__dst.__first_);
                    }

                    if (SHIBYTE(v100) < 0)
                    {
                      operator delete(__s[0]);
                    }

                    if (SHIBYTE(v102) < 0)
                    {
                      v80 = __src[0];
                      goto LABEL_223;
                    }
                  }

                  else
                  {
                    v81 = HIBYTE(v94);
                    if (SHIBYTE(v94) < 0)
                    {
                      v81 = v93[1];
                    }

                    if (v81 != 1)
                    {
                      goto LABEL_243;
                    }

                    v82 = HIBYTE(v92);
                    if (v92 < 0)
                    {
                      v82 = v91[1];
                    }

                    if (v82 != 1)
                    {
LABEL_243:
                      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>();
                    }

                    if (*(v7 + 169) == 1)
                    {
                      if (SHIBYTE(v94) >= 0)
                      {
                        v83 = v93;
                      }

                      else
                      {
                        v83 = v93[0];
                      }

                      v84 = (*(**(v7 + 24) + 40))(*(v7 + 24), *v83);
                      if (SHIBYTE(v94) >= 0)
                      {
                        v85 = v93;
                      }

                      else
                      {
                        v85 = v93[0];
                      }

                      *v85 = v84;
                      if (v92 >= 0)
                      {
                        v86 = v91;
                      }

                      else
                      {
                        v86 = v91[0];
                      }

                      v87 = (*(**(v7 + 24) + 40))(*(v7 + 24), *v86);
                      if (v92 >= 0)
                      {
                        v88 = v91;
                      }

                      else
                      {
                        v88 = v91[0];
                      }

                      *v88 = v87;
                    }

                    *&__dst.__first_ = *v93;
                    __dst.__end_ = v94;
                    v93[0] = 0;
                    v93[1] = 0;
                    v94 = 0;
                    __dst.__end_cap_ = *v91;
                    v104 = v92;
                    v91[0] = 0;
                    v91[1] = 0;
                    v92 = 0;
                    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((v7 + 88), &__dst);
                    if (SHIBYTE(v104) < 0)
                    {
                      operator delete(__dst.__end_cap_.__value_);
                    }

                    if (SHIBYTE(__dst.__end_) < 0)
                    {
                      v80 = __dst.__first_;
LABEL_223:
                      operator delete(v80);
                    }
                  }

                  if (SHIBYTE(v92) < 0)
                  {
                    operator delete(v91[0]);
                  }

                  if (SHIBYTE(v94) < 0)
                  {
                    operator delete(v93[0]);
                  }

                  if (SHIBYTE(v96) < 0)
                  {
                    operator delete(v95[0]);
                  }

                  v29 = 1;
LABEL_144:
                  if (SHIBYTE(v98) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  v8 = v37;
                  if ((v29 & 1) == 0)
                  {
                    goto LABEL_148;
                  }

                  goto LABEL_147;
                }
              }

              else
              {
                LOBYTE(v36) = *v36;
              }

              HIBYTE(v96) = 1;
              LOWORD(v95[0]) = v36;
              goto LABEL_153;
            }
          }
        }

        if (SHIBYTE(v98) < 0)
        {
          if (__p[1])
          {
            if (__p[1] == 1)
            {
              v35 = __p[0];
LABEL_85:
              std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, *v35);
LABEL_95:
              v29 = 1;
              v37 = v8;
              goto LABEL_144;
            }

            v35 = __p[0];
LABEL_94:
            std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, *v35, v35[1]);
            goto LABEL_95;
          }

          operator delete(__p[0]);
        }

        else if (HIBYTE(v98))
        {
          v35 = __p;
          if (HIBYTE(v98) == 1)
          {
            goto LABEL_85;
          }

          goto LABEL_94;
        }

LABEL_147:
        v18 = v8;
LABEL_148:
        v61 = v18 == v5;
        v5 = v18;
        if (v61)
        {
          goto LABEL_232;
        }
      }
    }

    v18 = v5;
LABEL_232:
    if (v18 == a3)
    {
      goto LABEL_240;
    }

    if (LOBYTE(v18->__first_) == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, 45);
      v18 = (v18 + 1);
    }

    if (v18 == a3 || LOBYTE(v18->__first_) != 93)
    {
LABEL_240:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return &v18->__first_ + 1;
  }

  return a2;
}

void sub_228D8EAB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  *(v48 + 144) = v49;
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(std::basic_regex<char> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(std::basic_regex<char> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x22AAC82B0](exception, 11);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void (__cdecl ***std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x22AAC8590);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x22AAC82B0](exception, 3);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 > 0x71)
  {
    if (*a2 <= 0x74u)
    {
      if (v5 == 114)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v18 = 13;
          goto LABEL_91;
        }

        v17 = 13;
      }

      else
      {
        if (v5 != 116)
        {
          goto LABEL_73;
        }

        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v18 = 9;
          goto LABEL_91;
        }

        v17 = 9;
      }
    }

    else
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_99;
        }

        v9 = a2[1];
        if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38 && (v9 | 0x20u) - 97 >= 6)
        {
          goto LABEL_99;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_99;
        }

        v10 = *v4;
        v11 = -48;
        if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
        {
          v10 |= 0x20u;
          if ((v10 - 97) >= 6)
          {
            goto LABEL_99;
          }

          v11 = -87;
        }

        v6 = 16 * (v11 + v10);
LABEL_45:
        if (v4 + 1 == a3)
        {
          goto LABEL_99;
        }

        v12 = v4[1];
        v13 = -48;
        if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
        {
          v12 |= 0x20u;
          if ((v12 - 97) >= 6)
          {
            goto LABEL_99;
          }

          v13 = -87;
        }

        if (v4 + 2 != a3)
        {
          v14 = v4[2];
          v15 = -48;
          if ((v14 & 0xF8) == 0x30 || (v14 & 0xFE) == 0x38)
          {
            goto LABEL_55;
          }

          v14 |= 0x20u;
          if ((v14 - 97) < 6)
          {
            v15 = -87;
LABEL_55:
            v16 = v14 + 16 * (v6 + v13 + v12) + v15;
            if (a4)
            {
              if (*(a4 + 23) < 0)
              {
                a4[1] = 1;
                a4 = *a4;
              }

              else
              {
                *(a4 + 23) = 1;
              }

              *a4 = v16;
              *(a4 + 1) = 0;
            }

            else
            {
              std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v16);
            }

            v4 += 3;
            return v4;
          }
        }

LABEL_99:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
      }

      if (v5 != 118)
      {
        if (v5 == 120)
        {
          v6 = 0;
          goto LABEL_45;
        }

LABEL_73:
        v17 = v5;
        if ((v5 & 0x80000000) == 0 && (a1->__traits_.__ct_->__tab_[v5] & 0x500) != 0)
        {
          goto LABEL_99;
        }

        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v5;
          *(a4 + 1) = 0;
          return ++v4;
        }

        goto LABEL_78;
      }

      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v18 = 11;
LABEL_91:
        *a4 = v18;
        return ++v4;
      }

      v17 = 11;
    }

LABEL_78:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v17);
    return ++v4;
  }

  if (*a2 > 0x65u)
  {
    if (v5 == 102)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v18 = 12;
        goto LABEL_91;
      }

      v17 = 12;
    }

    else
    {
      if (v5 != 110)
      {
        goto LABEL_73;
      }

      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v18 = 10;
        goto LABEL_91;
      }

      v17 = 10;
    }

    goto LABEL_78;
  }

  if (v5 == 48)
  {
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return ++v4;
    }

    v17 = 0;
    goto LABEL_78;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_99;
    }

    goto LABEL_73;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_99;
  }

  v7 = a2[1];
  if (((v7 & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_99;
  }

  v8 = v7 & 0x1F;
  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = v8;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  }

  v4 += 2;
  return v4;
}