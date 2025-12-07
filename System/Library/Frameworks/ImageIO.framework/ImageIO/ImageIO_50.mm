void sub_186170704(void *a1)
{
  __cxa_begin_catch(a1);
  *(v1 + 96) = 0;
  (*(*v2 + 56))(v2);
  __cxa_rethrow();
}

void PSD_MetaHandler::WriteTempFile(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = v4[29];
  v6 = v4[34];
  v7 = v4[35];
  v8 = v4[36];
  v9 = (*(*v5 + 24))(v5);
  if (v9)
  {
    v11 = v9;
    if ((*(a1 + 96) & 1) == 0)
    {
      ExportPhotoData(1246774599, a1 + 80, *(a1 + 192), *(a1 + 184), a1 + 104, v10);
      TXMPMeta<std::string>::SerializeToBuffer(a1 + 80, a1 + 56, 64, 0);
    }

    v12 = (a1 + 56);
    TXMPMeta<std::string>::SerializeToBuffer(a1 + 80, a1 + 56, 64, 0);
    *(a1 + 32) = -1;
    v13 = *(a1 + 79);
    if (v13 < 0)
    {
      v13 = *(a1 + 64);
    }

    *(a1 + 40) = v13;
    FillPacketInfo((a1 + 56), a1 + 32);
    v14 = *(a1 + 79);
    if ((v14 & 0x8000000000000000) != 0)
    {
      v12 = *(a1 + 56);
      v14 = *(a1 + 64);
    }

    PSIR_FileWriter::SetImgRsrc((a1 + 104), 0x424u, v12, v14);
    (*(*v5 + 16))(v5, 26, 0);
    v29 = 0;
    (**v5)(v5, &v29, 4, 0);
    v15 = bswap32(v29);
    (*(*v5 + 16))(v5, v15, 1);
    v28 = 0;
    (**v5)(v5, &v28, 4, 0);
    v28 = bswap32(v28);
    v16 = v15 + v28 + 34;
    v17 = v11 - v16;
    if (v8)
    {
      XMP_ProgressTracker::BeginWork(v8, (v15 + 30.0) + v17);
    }

    (*(*v5 + 16))(v5, 0, 0);
    (*(*a2 + 32))(a2, 0);
    XIO::Copy(v5, a2, 26, 0, 0, v18, v19);
    (*(*v5 + 16))(v5, 4, 1);
    (*(*a2 + 8))(a2, &v29, 4);
    XIO::Copy(v5, a2, v15, 0, 0, v20, v21);
    PSIR_FileWriter::UpdateFileResources(a1 + 104, v5, a2, v6, v7, v8, v22);
    (*(*v5 + 16))(v5, v16, 0);
    (*(*a2 + 16))(a2, 0, 2);
    XIO::Copy(v5, a2, v17, 0, 0, v23, v24);
    *(a1 + 23) = 0;
    if (v8)
    {
      XMP_ProgressTracker::WorkComplete(v8, v25, v26, v27);
    }
  }
}

void PSD_MetaHandler::UpdateFile()
{
  __assert_rtn("UpdateFile", "PSD_Handler.cpp", 319, "this->xmpPacket.size() == (size_t)oldPacketLength");
}

{
  __assert_rtn("UpdateFile", "PSD_Handler.cpp", 273, "! doSafeUpdate");
}

uint64_t AdobeXMPCore_Int::IErrorNotifier_I::GetErrorNotifier(AdobeXMPCore_Int::IErrorNotifier_I *this)
{
  if (AdobeXMPCore_Int::sErrorNotifier(void)::onceToken != -1)
  {
    AdobeXMPCore_Int::IErrorNotifier_I::GetErrorNotifier();
  }

  return *AdobeXMPCore_Int::gErrorNotifier;
}

uint64_t AdobeXMPCore_Int::IErrorNotifier_I::SetErrorNotifier(uint64_t ErrorNotifier)
{
  if (AdobeXMPCore_Int::sErrorNotifier(void)::onceToken != -1)
  {
    AdobeXMPCore_Int::IErrorNotifier_I::GetErrorNotifier();
  }

  v2 = *AdobeXMPCore_Int::gErrorNotifier;
  if (ErrorNotifier)
  {
    *AdobeXMPCore_Int::gErrorNotifier = ErrorNotifier;
  }

  else
  {
    if (AdobeXMPCore_Int::sDefaultErrorNotifier(void)::onceToken != -1)
    {
      AdobeXMPCore_Int::IErrorNotifier_I::SetErrorNotifier();
    }

    v3 = AdobeXMPCore_Int::gDefaultErrorNotifier;
    if (AdobeXMPCore_Int::gDefaultErrorNotifier)
    {
      v3 = AdobeXMPCore_Int::gDefaultErrorNotifier + *(*AdobeXMPCore_Int::gDefaultErrorNotifier - 48);
    }

    *AdobeXMPCore_Int::gErrorNotifier = v3;
  }

  return v2;
}

uint64_t AdobeXMPCommon::IErrorNotifier_v1::notify(AdobeXMPCommon::IErrorNotifier_v1 *this, const AdobeXMPCommon::IError_v1 *a2, unsigned int *a3)
{
  *a3 = 0;
  AdobeXMPCommon::IError_v1::MakeShared(&v7, a2);
  v6 = v7;
  v4 = (**this)(this, &v6);
  if (*(&v6 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v6 + 1));
  }

  return v4;
}

void sub_186170E64(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __cxa_begin_catch(a1);
  *v10 = 1;
  __cxa_end_catch();
  JUMPOUT(0x186170E50);
}

unsigned __int8 *FillPacketInfo(unsigned __int8 *result, uint64_t a2)
{
  v2 = result[23];
  if (v2 >= 0)
  {
    v3 = result;
  }

  else
  {
    v3 = *result;
  }

  if (v2 >= 0)
  {
    v4 = result[23];
  }

  else
  {
    v4 = *(result + 2);
  }

  if (!v4)
  {
    return result;
  }

  v6 = v4 - 1;
  if (v4 == 1)
  {
    goto LABEL_9;
  }

  v8 = *v3;
  if (v4 <= 3)
  {
    if (!*v3)
    {
      goto LABEL_21;
    }

    if (v3[1])
    {
      if (*v3 != -2)
      {
        if (*v3 == -257)
        {
          v7 = 3;
        }

        else
        {
          v7 = 0;
        }

        goto LABEL_31;
      }

LABEL_21:
      v7 = 2;
      goto LABEL_31;
    }

LABEL_30:
    v7 = 3;
    goto LABEL_31;
  }

  v9 = v3[1];
  if (v8 == 255)
  {
    if (v9 != 254)
    {
      goto LABEL_26;
    }

LABEL_28:
    if (!v3[2] && !v3[3])
    {
      v7 = 5;
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v8 == 254)
  {
    if (v9 == 255)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    goto LABEL_31;
  }

  if (*v3)
  {
    if (v3[1])
    {
LABEL_9:
      v7 = 0;
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (v3[1])
  {
    goto LABEL_21;
  }

  if (v3[2] != 254)
  {
    if (!v3[2])
    {
      if (v3[3])
      {
        v7 = 4;
      }

      else
      {
        v7 = 1;
      }

      goto LABEL_31;
    }

LABEL_26:
    v7 = 1;
    goto LABEL_31;
  }

  if (v3[3] == 255)
  {
    v7 = 4;
  }

  else
  {
    v7 = 1;
  }

LABEL_31:
  v10 = 0;
  *(a2 + 16) = v7;
  v11 = v7 & 6;
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  while (1)
  {
    v13 = v10;
    v14 = v6 + v10;
    if (!(v6 + v10))
    {
      break;
    }

    --v10;
    if (v3[v14] == 60)
    {
      result = &v3[v14];
      goto LABEL_38;
    }
  }

  result = v3;
  if (*v3 != 60)
  {
    return result;
  }

LABEL_38:
  if (1 - v13 >= 18 * v12)
  {
    result = memcmp(result, kPacketTrailiers[v12 >> 1], 13 * v12);
    if (!result)
    {
      *(a2 + 18) = 1;
      if (v3[16 * v12 - 1 + v4 - v12 + v13] == 119)
      {
        *(a2 + 17) = 1;
      }

      if (v4 + v13 - 1 >= v12)
      {
        v15 = 0;
        while (v3[v6 + v13 + v15] != 62)
        {
          v16 = v6 - v12 + v13 + v15;
          v15 -= v12;
          if (v16 < v12)
          {
            return result;
          }
        }

        *(a2 + 12) = -(v12 + v15);
      }
    }
  }

  return result;
}

uint64_t XMPFileHandler::GetFileModDate(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 17) & 0x19) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    v6 = "Base implementation of GetFileModDate only for typical embedding handlers";
    goto LABEL_12;
  }

  v2 = *(a1 + 8);
  v3 = (v2 + 368);
  if (*(v2 + 391) < 0)
  {
    if (!*(v2 + 376))
    {
LABEL_11:
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 9;
      v6 = "GetFileModDate cannot be used with client-provided I/O";
LABEL_12:
      exception[1] = v6;
      *(exception + 16) = 0;
    }

    v3 = *v3;
  }

  else if (!*(v2 + 391))
  {
    goto LABEL_11;
  }

  return Host_IO::GetModifyDate(v3, a2);
}

void XMPFileHandler::FillMetadataFiles(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 17) & 0x19) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    v6 = "Base implementation of FillMetadataFiles only for typical embedding handlers";
    goto LABEL_12;
  }

  v3 = *(a1 + 8);
  v4 = (v3 + 368);
  if (*(v3 + 391) < 0)
  {
    if (!*(v3 + 376))
    {
LABEL_11:
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 9;
      v6 = "FillMetadataFiles cannot be used with client-provided I/O";
LABEL_12:
      exception[1] = v6;
      *(exception + 16) = 0;
    }

    v4 = *v4;
  }

  else if (!*(v3 + 391))
  {
    goto LABEL_11;
  }

  std::string::basic_string[abi:fe200100]<0>(__p, v4);
  std::vector<std::string>::push_back[abi:fe200100](a2, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_186171230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::push_back[abi:fe200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18.__end_cap_.__value_ = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::string>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18.__end_ = v16;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = v16;
    v18.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v7 = v4 + 24;
  }

  *(a1 + 8) = v7;
}

void XMPFileHandler::FillAssociatedResources(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 17) & 0x19) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    v6 = "GetAssociatedResources is not implemented for this file format";
    goto LABEL_12;
  }

  v3 = *(a1 + 8);
  v4 = (v3 + 368);
  if (*(v3 + 391) < 0)
  {
    if (!*(v3 + 376))
    {
LABEL_11:
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 9;
      v6 = "GetAssociatedResources cannot be used with client-provided I/O";
LABEL_12:
      exception[1] = v6;
      *(exception + 16) = 0;
    }

    v4 = *v4;
  }

  else if (!*(v3 + 391))
  {
    goto LABEL_11;
  }

  std::string::basic_string[abi:fe200100]<0>(__p, v4);
  std::vector<std::string>::push_back[abi:fe200100](a2, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_186171448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XMPFileHandler::IsMetadataWritable(XMPFileHandler *this)
{
  if ((*(this + 17) & 0x19) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    v5 = "IsMetadataWritable is not implemented for this file format";
    goto LABEL_10;
  }

  v1 = *(this + 1);
  v2 = (v1 + 368);
  if (*(v1 + 391) < 0)
  {
    if (!*(v1 + 376))
    {
LABEL_9:
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 9;
      v5 = "IsMetadataWritable cannot be used with client-provided I/O";
LABEL_10:
      exception[1] = v5;
      *(exception + 16) = 0;
    }

    v2 = *v2;
  }

  else if (!*(v1 + 391))
  {
    goto LABEL_9;
  }

  return Host_IO::Writable(v2, 0);
}

void sub_186171500(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1861714ACLL);
}

void XMPFileHandler::ProcessXMP(XMPFileHandler *this)
{
  if (*(this + 21) == 1 && (*(this + 22) & 1) == 0)
  {
    if ((*(this + 16) & 0x10) != 0)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 9;
      exception[1] = "Reconciling file handlers must implement ProcessXMP";
      *(exception + 16) = 0;
    }

    TXMPUtils<std::string>::RemoveProperties(this + 80, 0, 0, 1);
    v2 = *(this + 79);
    if (v2 < 0)
    {
      v3 = *(this + 7);
      v2 = *(this + 8);
    }

    else
    {
      v3 = this + 56;
    }

    TXMPMeta<std::string>::ParseFromBuffer(this + 80, v3, v2, 0);
    *(this + 22) = 1;
  }
}

void AdobeXMPCore_Int::ClientDOMParserWrapperImpl::ClientDOMParserWrapperImpl(void *a1, uint64_t a2)
{
  v3 = (a1 + 2);
  *a1 = off_1EF4FE838;
  a1[6] = &off_1EF4FE980;
  a1[2] = &off_1EF4FE160;
  a1[13] = &unk_1EF4FE558;
  *(a1 + unk_1EF4FE078 + 16) = off_1EF4FE2B8;
  *(a1 + *(a1[2] - 312) + 16) = &off_1EF4FE400;
  *(a1 + *(a1[2] - 320) + 16) = &unk_1EF4FE558;
  AdobeXMPCore_Int::ConfigurableImpl::ConfigurableImpl((a1 + 6), off_1EF4FD9F0);
  a1[14] = 0;
  a1[15] = 0;
  a1[13] = off_1EF4FF0C8;
  AdobeXMPCore_Int::DOMParserImpl::DOMParserImpl(v3, off_1EF4FD928);
}

void sub_186171A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  AdobeXMPCore_Int::DOMParserImpl::~DOMParserImpl(v18, off_1EF4FD928);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v16, off_1EF4FDA08);
  AdobeXMPCore_Int::ConfigurableImpl::~ConfigurableImpl(v17, off_1EF4FD9F0);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::ClientDOMParserWrapperImpl::ParseAsNode(AdobeXMPCore_Int::ClientDOMParserWrapperImpl *this@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = 0;
  v8 = 0;
  v5 = (*(**(this + 1) + 56))(*(this + 1), a2, a3, this + *(*this - 72), AdobeXMPCore_Int::ReportErrorAndContinueABISafe, &v9, &v8);
  if (!v9)
  {
    if (!v8)
    {
      (**&v5[*(*v5 - 56)])(&v5[*(*v5 - 56)]);
      std::shared_ptr<AdobeXMPCore::INode_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::INode_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(a4, v5, AdobeXMPCommon::ISharedObject::Release, 0);
    }

    v10 = 0uLL;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  AdobeXMPCommon::IError_v1::MakeShared(&v10, v9);
  v7 = v10;
  (*(*(v9 + *(*v9 - 56)) + 8))(v9 + *(*v9 - 56));
  exception = __cxa_allocate_exception(0x10uLL);
  *exception = v7;
}

void sub_186171DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  v14 = *(v12 - 24);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::ClientDOMParserWrapperImpl::~ClientDOMParserWrapperImpl(AdobeXMPCore_Int::ClientDOMParserWrapperImpl *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 48)) = a2[1];
  *(this + *(*this - 56)) = a2[2];
  *(this + *(*this - 64)) = a2[3];
  *(this + *(*this - 72)) = a2[4];
  *(this + *(*this - 80)) = a2[5];
  *(this + *(*this - 88)) = a2[6];
  *(this + *(*this - 96)) = a2[7];
  *(this + *(*this - 104)) = a2[8];
  *(this + *(*this - 112)) = a2[9];
  *(this + *(*this - 120)) = a2[10];
  v4 = *(this + 1);
  if (v4)
  {
    (*(*v4 + 32))(v4);
    *(this + 1) = 0;
  }
}

void AdobeXMPCore_Int::ClientDOMParserWrapperImpl::~ClientDOMParserWrapperImpl(AdobeXMPCore_Int::ClientDOMParserWrapperImpl *this)
{
  AdobeXMPCore_Int::DOMParserImpl::~DOMParserImpl((v2 + 16), off_1EF4FD928);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 104), off_1EF4FDA08);
  AdobeXMPCore_Int::ConfigurableImpl::~ConfigurableImpl((this + 48), off_1EF4FD9F0);
}

{
  AdobeXMPCore_Int::ClientDOMParserWrapperImpl::~ClientDOMParserWrapperImpl(this);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::ClientDOMParserWrapperImpl::~ClientDOMParserWrapperImpl(void *a1)
{
  AdobeXMPCore_Int::ClientDOMParserWrapperImpl::~ClientDOMParserWrapperImpl((a1 + *(*a1 - 208)));
}

{
  AdobeXMPCore_Int::ClientDOMParserWrapperImpl::~ClientDOMParserWrapperImpl((a1 + *(*a1 - 208)));

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::ClientDOMParserWrapperImpl::~ClientDOMParserWrapperImpl(AdobeXMPCore_Int::ClientDOMParserWrapperImpl *this)
{
  AdobeXMPCore_Int::ClientDOMParserWrapperImpl::~ClientDOMParserWrapperImpl((this + *(*this - 48)));
}

{
  AdobeXMPCore_Int::ClientDOMParserWrapperImpl::~ClientDOMParserWrapperImpl((this + *(*this - 48)));

  JUMPOUT(0x186602850);
}

uint64_t AdobeXMPCore_Int::ClientDOMParserWrapperImpl::ValidateValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v7 = 0;
  result = (*(**(a1 + 8) + 80))(*(a1 + 8), a2, a3, a4, &v8, &v7);
  if (v8)
  {
    AdobeXMPCommon::IError_v1::MakeShared(&v9, v8);
    v6 = v9;
    (*(*(v8 + *(*v8 - 56)) + 8))(v8 + *(*v8 - 56));
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = v6;
  }

  if (v7)
  {
    v9 = 0uLL;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  return result;
}

void sub_186172560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  v14 = *(v12 - 24);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ReconcileUtils::IsASCII(ReconcileUtils *this, char *a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a2 - 1;
  do
  {
    v4 = *this;
    this = (this + 1);
    v3 = v4;
    v5 = v4 >= 0;
    v7 = v2-- != 0;
  }

  while ((v3 & 0x80000000) == 0 && v7);
  return v5;
}

uint64_t ReconcileUtils::IsUTF8(ReconcileUtils *this, uint64_t a2)
{
  if (a2 >= 1)
  {
    v2 = (this + a2);
    do
    {
      v3 = *this;
      if (v3 < 0)
      {
        v5 = 0;
        v6 = -5;
        v4 = this;
        do
        {
          v7 = v5;
          v4 = (v4 + 1);
          LOBYTE(v3) = 2 * v3;
          ++v6;
          --v5;
        }

        while ((v3 & 0x80) != 0);
        v8 = 0;
        if (v6 < 0xFFFFFFFFFFFFFFFDLL || v4 > v2)
        {
          return v8;
        }

        v9 = this + 1;
        while (v7)
        {
          v10 = *v9++;
          ++v7;
          if ((v10 & 0xC0) != 0x80)
          {
            return 0;
          }
        }
      }

      else
      {
        v4 = (this + 1);
      }

      this = v4;
    }

    while (v4 < v2);
  }

  return 1;
}

void ReconcileUtils::UTF8ToLocal(const UInt8 *a1, CFIndex a2, std::string *this)
{
  std::string::erase(this, 0, 0xFFFFFFFFFFFFFFFFLL);
  if (!a2)
  {
LABEL_5:

    JUMPOUT(0x186602530);
  }

  v6 = 0;
  while ((a1[v6] & 0x80000000) == 0)
  {
    if (a2 == ++v6)
    {
      goto LABEL_5;
    }
  }

  SystemEncoding = CFStringGetSystemEncoding();

  ReconcileUtils::IOSConvertEncoding(0x8000100u, SystemEncoding, a1, a2, this);
}

void ReconcileUtils::IOSConvertEncoding(CFStringEncoding a1, CFStringEncoding a2, const UInt8 *a3, CFIndex a4, std::string *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1 != -1 && a2 != -1)
  {
    if (CFStringIsEncodingAvailable(a1))
    {
      if (CFStringIsEncodingAvailable(a2))
      {
        v10 = CFStringCreateWithBytesNoCopy(0, a3, a4, a1, 0, *MEMORY[0x1E695E498]);
        if (v10)
        {
          v11 = v10;
          Length = CFStringGetLength(v10);
          if (Length >= 1)
          {
            v13 = Length;
            v14 = 0;
            do
            {
              bzero(buffer, 0x3E8uLL);
              __n = 0;
              v21.location = v14;
              v21.length = v13;
              Bytes = CFStringGetBytes(v11, v21, a2, 0, 0, buffer, 1000, &__n);
              if (!Bytes)
              {
                break;
              }

              v16 = Bytes;
              std::string::append(a5, buffer, __n);
              v14 += v16;
              v17 = v13 <= v16;
              v13 -= v16;
            }

            while (!v17);
          }

          CFRelease(v11);
        }
      }
    }
  }
}

void ReconcileUtils::LocalToUTF8(const UInt8 *a1, CFIndex a2, std::string *this)
{
  std::string::erase(this, 0, 0xFFFFFFFFFFFFFFFFLL);
  if (!a2)
  {
LABEL_5:

    JUMPOUT(0x186602530);
  }

  v6 = 0;
  while ((a1[v6] & 0x80000000) == 0)
  {
    if (a2 == ++v6)
    {
      goto LABEL_5;
    }
  }

  SystemEncoding = CFStringGetSystemEncoding();

  ReconcileUtils::IOSConvertEncoding(SystemEncoding, 0x8000100u, a1, a2, this);
}

uint64_t XMLParserAdapter::NotifyClient(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  result = *(a1 + 232);
  if (result)
  {
    return GenericErrorCallback::NotifyClient(result, a2, a3, 0);
  }

  return result;
}

char *AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::IPathSegment_v1 const,AdobeXMPCore::IPathSegment_v1 const*,char const*,unsigned long long,unsigned long long>(void (*a1)(char **__return_ptr, uint64_t, uint64_t, uint64_t), void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a2 = 0;
  v10 = 0;
  v11 = 0;
  a1(&v10, a5, a6, a7);
  v7 = (*(*&v10[*(*v10 - 56)] + 16))(&v10[*(*v10 - 56)]);
  (*(*v7 + 40))(v7);
  v8 = v10;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v11);
  }

  return v8;
}

char *AdobeXMPCore_Int::CoreObjectFactoryImpl::CreateArrayNode(AdobeXMPCore_Int::CoreObjectFactoryImpl *this, int a2, const char *a3, uint64_t a4, const char *a5, uint64_t a6, const AdobeXMPCommon::IError_v1 **a7)
{
  switch(a2)
  {
    case 1:
      v9 = AdobeXMPCore::IArrayNode_v1::CreateUnorderedArrayNode;
      v10 = a7;
      v11 = 50;
      return AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::IArrayNode_v1,AdobeXMPCore::IArrayNode_v1*,char const*,unsigned long long,char const*,unsigned long long>(v9, v10, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/CoreObjectFactoryImpl.cpp", v11, a3, a4, a5, a6);
    case 4:
      v9 = AdobeXMPCore::IArrayNode_v1::CreateAlternativeArrayNode;
      v10 = a7;
      v11 = 55;
      return AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::IArrayNode_v1,AdobeXMPCore::IArrayNode_v1*,char const*,unsigned long long,char const*,unsigned long long>(v9, v10, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/CoreObjectFactoryImpl.cpp", v11, a3, a4, a5, a6);
    case 2:
      v9 = AdobeXMPCore::IArrayNode_v1::CreateOrderedArrayNode;
      v10 = a7;
      v11 = 45;
      return AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::IArrayNode_v1,AdobeXMPCore::IArrayNode_v1*,char const*,unsigned long long,char const*,unsigned long long>(v9, v10, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/CoreObjectFactoryImpl.cpp", v11, a3, a4, a5, a6);
  }

  return 0;
}

char *AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::IArrayNode_v1,AdobeXMPCore::IArrayNode_v1*,char const*,unsigned long long,char const*,unsigned long long>(void (*a1)(char **__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a2 = 0;
  v11 = 0;
  v12 = 0;
  a1(&v11, a5, a6, a7, a8);
  v8 = (*(*&v11[*(*v11 - 56)] + 16))(&v11[*(*v11 - 56)]);
  (*(*v8 + 40))(v8);
  v9 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  return v9;
}

char *AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::IMetadata_v1,AdobeXMPCore::IMetadata_v1*>(void (*a1)(char **__return_ptr), void *a2)
{
  *a2 = 0;
  v5 = 0;
  v6 = 0;
  a1(&v5);
  v2 = (*(*&v5[*(*v5 - 56)] + 16))(&v5[*(*v5 - 56)]);
  (*(*v2 + 40))(v2);
  v3 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }

  return v3;
}

char *AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::INameSpacePrefixMap_v1,AdobeXMPCore::INameSpacePrefixMap_v1*>(void (*a1)(char **__return_ptr), void *a2)
{
  *a2 = 0;
  v5 = 0;
  v6 = 0;
  a1(&v5);
  v2 = (*(*&v5[*(*v5 - 56)] + 16))(&v5[*(*v5 - 56)]);
  (*(*v2 + 40))(v2);
  v3 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }

  return v3;
}

char *AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::IPath_v1,AdobeXMPCore::IPath_v1*>(void (*a1)(char **__return_ptr), void *a2)
{
  *a2 = 0;
  v5 = 0;
  v6 = 0;
  a1(&v5);
  v2 = (*(*&v5[*(*v5 - 56)] + 16))(&v5[*(*v5 - 56)]);
  (*(*v2 + 40))(v2);
  v3 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }

  return v3;
}

char *AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::IPathSegment_v1 const,AdobeXMPCore::IPathSegment_v1 const*,char const*,unsigned long long,char const*,unsigned long long>(void (*a1)(char **__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a2 = 0;
  v11 = 0;
  v12 = 0;
  a1(&v11, a5, a6, a7, a8);
  v8 = (*(*&v11[*(*v11 - 56)] + 16))(&v11[*(*v11 - 56)]);
  (*(*v8 + 40))(v8);
  v9 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  return v9;
}

char *AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::IPathSegment_v1 const,AdobeXMPCore::IPathSegment_v1 const*,char const*,unsigned long long,char const*,unsigned long long,char const*,unsigned long long>(void (*a1)(char **__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *a2 = 0;
  v13 = 0;
  v14 = 0;
  a1(&v13, a5, a6, a7, a8, a9, a10);
  v10 = (*(*&v13[*(*v13 - 56)] + 16))(&v13[*(*v13 - 56)]);
  (*(*v10 + 40))(v10);
  v11 = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  return v11;
}

char *AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::ISimpleNode_v1,AdobeXMPCore::ISimpleNode_v1*,char const*,unsigned long long,char const*,unsigned long long,char const*,unsigned long long>(void (*a1)(char **__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *a2 = 0;
  v13 = 0;
  v14 = 0;
  a1(&v13, a5, a6, a7, a8, a9, a10);
  v10 = (*(*&v13[*(*v13 - 56)] + 16))(&v13[*(*v13 - 56)]);
  (*(*v10 + 40))(v10);
  v11 = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  return v11;
}

char *AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::IStructureNode_v1,AdobeXMPCore::IStructureNode_v1*,char const*,unsigned long long,char const*,unsigned long long>(void (*a1)(char **__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a2 = 0;
  v11 = 0;
  v12 = 0;
  a1(&v11, a5, a6, a7, a8);
  v8 = (*(*&v11[*(*v11 - 56)] + 16))(&v11[*(*v11 - 56)]);
  (*(*v8 + 40))(v8);
  v9 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  return v9;
}

char *AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::ICoreConfigurationManager_v1,AdobeXMPCore::ICoreConfigurationManager_v1*>(void (*a1)(char **__return_ptr), void *a2)
{
  *a2 = 0;
  v5 = 0;
  v6 = 0;
  a1(&v5);
  v2 = (*(*&v5[*(*v5 - 56)] + 16))(&v5[*(*v5 - 56)]);
  (*(*v2 + 40))(v2);
  v3 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }

  return v3;
}

char *AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::IDOMImplementationRegistry_v1,AdobeXMPCore::IDOMImplementationRegistry_v1*>(void (*a1)(char **__return_ptr), void *a2)
{
  *a2 = 0;
  v5 = 0;
  v6 = 0;
  a1(&v5);
  v2 = (*(*&v5[*(*v5 - 56)] + 16))(&v5[*(*v5 - 56)]);
  (*(*v2 + 40))(v2);
  v3 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }

  return v3;
}

char *AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::INameSpacePrefixMap_v1 const,AdobeXMPCore::INameSpacePrefixMap_v1 const*>(void (*a1)(char **__return_ptr), void *a2)
{
  *a2 = 0;
  v5 = 0;
  v6 = 0;
  a1(&v5);
  v2 = (*(*&v5[*(*v5 - 56)] + 16))(&v5[*(*v5 - 56)]);
  (*(*v2 + 40))(v2);
  v3 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }

  return v3;
}

char *AdobeXMPCore_Int::CoreObjectFactoryImpl::ParsePath(AdobeXMPCore_Int::CoreObjectFactoryImpl *this, AdobeXMPCore::INameSpacePrefixMap_v1 *a2, uint64_t a3, const AdobeXMPCore::INameSpacePrefixMap_v1 *a4, const AdobeXMPCommon::IError_v1 **a5)
{
  AdobeXMPCore::INameSpacePrefixMap_v1::MakeShared(&v11, a4, a2);
  v10 = v11;
  v8 = AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::IPath_v1,AdobeXMPCore::IPath_v1*,char const*,unsigned long long,std::shared_ptr<AdobeXMPCore::INameSpacePrefixMap_v1 const> const&>(AdobeXMPCore::IPath_v1::ParsePath, a5, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/CoreObjectFactoryImpl.cpp", 122, a2, a3, &v10);
  if (*(&v10 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v10 + 1));
  }

  return v8;
}

char *AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::IPath_v1,AdobeXMPCore::IPath_v1*,char const*,unsigned long long,std::shared_ptr<AdobeXMPCore::INameSpacePrefixMap_v1 const> const&>(void (*a1)(char **__return_ptr, uint64_t, uint64_t, uint64_t), void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a2 = 0;
  v10 = 0;
  v11 = 0;
  a1(&v10, a5, a6, a7);
  v7 = (*(*&v10[*(*v10 - 56)] + 16))(&v10[*(*v10 - 56)]);
  (*(*v7 + 40))(v7);
  v8 = v10;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v11);
  }

  return v8;
}

uint64_t AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore_Int::IError_I,AdobeXMPCommon::IError_v1 *,AdobeXMPCommon::IError_v1::eErrorDomain,unsigned int,AdobeXMPCommon::IError_v1::eErrorSeverity>(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t), void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a2 = 0;
  v10 = 0;
  v11 = 0;
  a1(&v10, a5, a6, a7);
  v7 = (*(*v10 + 16))(v10);
  (*(*v7 + 40))(v7);
  if (v10)
  {
    v8 = v10 + *(*v10 - 304);
  }

  else
  {
    v8 = 0;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v11);
  }

  return v8;
}

char *AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCommon::IUTF8String_v1,AdobeXMPCommon::IUTF8String_v1*,char const*,unsigned long long>(void (*a1)(char **__return_ptr, uint64_t, uint64_t), void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a2 = 0;
  v9 = 0;
  v10 = 0;
  a1(&v9, a5, a6);
  v6 = (*(*&v9[*(*v9 - 56)] + 16))(&v9[*(*v9 - 56)]);
  (*(*v6 + 40))(v6);
  v7 = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
  }

  return v7;
}

void AdobeXMPCore_Int::CoreObjectFactoryImpl::ConvertXMPMetatoIMetadata(int a1, AdobeXMPCore_Int::IMetadataConverterUtils_I *this, void *a3)
{
  *a3 = 0;
  v3[0] = 0;
  v3[1] = 0;
  AdobeXMPCore_Int::IMetadataConverterUtils_I::convertXMPMetatoIMetadata(v3);
}

void AdobeXMPCore_Int::CoreObjectFactoryImpl::ConvertIMetadatatoXMPMeta(AdobeXMPCore_Int::CoreObjectFactoryImpl *this, AdobeXMPCore::IMetadata_v1 *a2, const AdobeXMPCommon::IError_v1 **a3)
{
  v3[0] = 0;
  v3[1] = 0;
  AdobeXMPCore_Int::IMetadataConverterUtils_I::convertIMetadatatoXMPMeta(a2, v3);
}

void AdobeXMPCore_Int::ReturnRawPointerFromSharedPointer<AdobeXMPCore::IPathSegment_v1 const,AdobeXMPCore::IPathSegment_v1 const*,char const*,unsigned long long,unsigned long long>(void *a1)
{
  v2 = OUTLINED_FUNCTION_3(a1);
  v4 = *v2;
  v3 = v2[1];
  if (v3)
  {
    OUTLINED_FUNCTION_1_20();
  }

  __cxa_begin_catch(v1);
  OUTLINED_FUNCTION_2_18();
  v6 = (*(v5 + 200))(v4);
  v7 = OUTLINED_FUNCTION_1_21(v6);
  v9 = OUTLINED_FUNCTION_0_37(v7, *(v8 - 56));
  (*(v10 + 16))(v9);
  OUTLINED_FUNCTION_0_0();
  (*(v11 + 40))();
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCommon::IConfigurationManager_v1,unsigned int,BOOL,AdobeXMPCommon::IErrorNotifier_v1 *>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0;
  v8 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v8 + a4);
  }

  return (a4)(v8, a8, a3);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCommon::IConfigurationManager_v1,unsigned int,BOOL>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  *a1 = 0;
  v5 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v5 + a4);
  }

  return a4(v5);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCommon::IConfigurationManager_v1,unsigned int,BOOL>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  *a1 = 0;
  v5 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v5 + a4);
  }

  return a4(v5);
}

void *AdobeXMPCore_Int::IConfigurationManager_I::GetInterfacePointerInternal(void *this, uint64_t a2, int a3, int a4)
{
  if (a2 == 0x6E436F6E664D6772)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x6E436F6E664D6772, a3, exception);
      }

      return (this + *(*this - 128));
    }
  }

  else
  {
    if (a4)
    {
      v5 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x6E436F6E664D6772, a2, v5);
    }

    return 0;
  }

  return this;
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IConfigurationManager_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

void XMPMeta::SerializeToBuffer(uint64_t a1, std::string *this, unsigned int a3, unsigned int a4, const char *a5, char *a6, int a7)
{
  v198 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 7;
    v19 = "XMP_Enforce failed: (rdfString != 0) in /Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/XMPMeta-Serialize.cpp at line 1212";
    goto LABEL_378;
  }

  if (!a5 || (v8 = a6) == 0)
  {
    XMPMeta::SerializeToBuffer();
  }

  std::string::erase(this, 0, 0xFFFFFFFFFFFFFFFFLL);
  if ((a3 & 7) != 0)
  {
    if ((a3 & 2) != 0)
    {
      if ((a3 & 4) != 0)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 103;
        v19 = "Can't use both _XMP_UTF16_Bit and _XMP_UTF32_Bit";
        goto LABEL_378;
      }

      v14 = 2;
    }

    else
    {
      if ((a3 & 4) == 0)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 103;
        v19 = "Can't use _XMP_LittleEndian_Bit by itself";
        goto LABEL_378;
      }

      v14 = 4;
    }
  }

  else
  {
    v14 = 1;
  }

  v15 = " ";
  if ((a3 & 0x800) != 0)
  {
    v8 = "";
  }

  else
  {
    if (*a5)
    {
      v16 = a5;
    }

    else
    {
      v16 = "\n";
    }

    v17 = "   ";
    if ((a3 & 0x40) != 0)
    {
      v17 = " ";
    }

    if (!*v8)
    {
      v8 = v17;
    }

    v15 = v16;
  }

  v182 = a3 & 7;
  if ((a3 & 0x200) == 0)
  {
    if ((a3 & 0x20) != 0)
    {
      if ((a3 & 0x110) != 0)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 103;
        v19 = "Inconsistent options for read-only packet";
        goto LABEL_378;
      }
    }

    else if ((a3 & 0x10) != 0)
    {
      if ((a3 & 0x100) != 0)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 103;
        v19 = "Inconsistent options for non-packet serialize";
        goto LABEL_378;
      }
    }

    else
    {
      if ((a3 & 0x1000) == 0)
      {
        if (a4)
        {
          if (a4 >> 28)
          {
            exception = __cxa_allocate_exception(0x18uLL);
            *exception = 103;
            v19 = "Outrageously large padding size";
LABEL_378:
            exception[1] = v19;
            *(exception + 16) = 0;
          }

          if ((a3 & 0x100) == 0)
          {
            goto LABEL_372;
          }
        }

        else
        {
          a4 = v14 << 11;
          if ((a3 & 0x100) == 0)
          {
LABEL_372:
            v181 = a4;
            goto LABEL_38;
          }
        }

        if (((*(*a1 + 112))(a1, "http://ns.adobe.com/xap/1.0/", "Thumbnails") & 1) == 0)
        {
          a4 += 10000 * v14;
        }

        goto LABEL_372;
      }

      if ((a3 & 0x2000) != 0)
      {
LABEL_383:
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 103;
        v19 = "Inconsistent options for x:xmpmeta serialize";
        goto LABEL_378;
      }
    }

    v181 = 0;
    goto LABEL_38;
  }

  if ((a3 & 0x110) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 103;
    v19 = "Inconsistent options for exact size serialize";
    goto LABEL_378;
  }

  v181 = a4;
  if (((v14 - 1) & a4) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 103;
    v19 = "Exact size must be a multiple of the Unicode element";
    goto LABEL_378;
  }

LABEL_38:
  v185 = a3;
  v184 = v15;
  memset(&v186, 0, sizeof(v186));
  v20 = strlen(v8);
  v21 = 6 * a7 * v20 + 326;
  v22 = *(a1 + 296);
  v23 = *(a1 + 304) - v22;
  if (v23)
  {
    v24 = v20;
    v25 = v23 >> 3;
    v26 = *(a1 + 263);
    if ((v26 & 0x80u) != 0)
    {
      v26 = *(a1 + 248);
    }

    if (v25 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v25;
    }

    v28 = v26 + 2 * (a7 + 2) * v20 + 47;
    do
    {
      v29 = *v22++;
      v21 += v28 + EstimateRDFSize(v29, a7 + 2, v24);
      --v27;
    }

    while (v27);
  }

  memset(&v191, 0, sizeof(v191));
  std::string::erase(this, 0, 0xFFFFFFFFFFFFFFFFLL);
  v30 = v185;
  std::string::reserve(&v191, v21 + (v21 >> 2));
  std::string::append(&v191, "<rdf:RDF xmlns:rdf=http://www.w3.org/1999/02/22-rdf-syntax-ns#>");
  std::string::append(&v191, v184);
  if ((v185 & 0x40) != 0)
  {
    StartOuterRDFDescription(a1 + 224, &v191, v184, v8, a7);
    v43 = *(a1 + 304) - *(a1 + 296);
    if (!v43)
    {
      goto LABEL_69;
    }

    v44 = 0;
    v45 = v43 >> 3;
    v46 = 1;
    do
    {
      v47 = *(a1 + 296);
      if (v44 >= (*(a1 + 304) - v47) >> 3)
      {
        goto LABEL_382;
      }

      SerializeCompactRDFAttrProps(*(v47 + 8 * v44), &v191, v184, v8, a7 + 3);
      v46 &= v48;
      ++v44;
    }

    while (v45 != v44);
    if ((v46 & 1) == 0)
    {
      std::string::append(&v191, ">");
      std::string::append(&v191, v184);
      v49 = *(a1 + 304) - *(a1 + 296);
      if (v49)
      {
        v50 = 0;
        v51 = v49 >> 3;
        do
        {
          v52 = *(a1 + 296);
          if (v50 >= (*(a1 + 304) - v52) >> 3)
          {
            goto LABEL_382;
          }

          SerializeCompactRDFElemProps(*(v52 + 8 * v50++), &v191, v184, v8, a7 + 3);
        }

        while (v51 != v50);
      }

      if (a7 < -1)
      {
        v42 = "</rdf:Description>";
        v30 = v185;
      }

      else
      {
        v53 = a7 + 3;
        v42 = "</rdf:Description>";
        v30 = v185;
        do
        {
          std::string::append(&v191, v8);
          --v53;
        }

        while (v53 > 1);
      }
    }

    else
    {
LABEL_69:
      v42 = "/>";
    }
  }

  else
  {
    StartOuterRDFDescription(a1 + 224, &v191, v184, v8, a7);
    if (*(a1 + 304) == *(a1 + 296))
    {
      v42 = "/>";
    }

    else
    {
      std::string::append(&v191, ">");
      std::string::append(&v191, v184);
      v31 = *(a1 + 304) - *(a1 + 296);
      if (v31)
      {
        v32 = 0;
        v33 = v31 >> 3;
        if (v33 <= 1)
        {
          v33 = 1;
        }

        v183 = v33;
        while (1)
        {
          v34 = *(a1 + 296);
          if (v32 >= (*(a1 + 304) - v34) >> 3)
          {
            goto LABEL_382;
          }

          v35 = *(v34 + 8 * v32);
          v36 = *(v35 + 80) - *(v35 + 72);
          if (v36)
          {
            break;
          }

LABEL_59:
          ++v32;
          v30 = v185;
          if (v32 == v183)
          {
            goto LABEL_60;
          }
        }

        v37 = 0;
        v38 = v36 >> 3;
        if (v38 <= 1)
        {
          v39 = 1;
        }

        else
        {
          v39 = v38;
        }

        while (1)
        {
          v40 = *(v35 + 72);
          if (v37 >= (*(v35 + 80) - v40) >> 3)
          {
            goto LABEL_382;
          }

          SerializeCanonicalRDFProperty(*(v40 + 8 * v37++), &v191, v184, v8, (a7 + 3), (v185 >> 7) & 1, 0);
          if (v39 == v37)
          {
            goto LABEL_59;
          }
        }
      }

LABEL_60:
      if (a7 < -1)
      {
        v42 = "</rdf:Description>";
      }

      else
      {
        v41 = a7 + 3;
        v42 = "</rdf:Description>";
        do
        {
          std::string::append(&v191, v8);
          --v41;
        }

        while (v41 > 1);
      }
    }
  }

  std::string::append(&v191, v42);
  std::string::append(&v191, v184);
  if ((a7 & 0x80000000) == 0)
  {
    v54 = a7 + 2;
    do
    {
      std::string::append(&v191, v8);
      --v54;
    }

    while (v54 > 1);
  }

  std::string::append(&v191, "</rdf:RDF>");
  v55 = a7 + 1;
  if ((v30 & 0x10) == 0)
  {
    if (a7 >= 1)
    {
      v56 = a7 + 1;
      do
      {
        std::string::append(this, v8);
        --v56;
      }

      while (v56 > 1);
    }

    std::string::append(this, "<?xpacket begin=﻿ id=W5M0MpCehiHzreSzNTczkc9d?>");
    std::string::append(this, v184);
  }

  if ((v30 & 0x1000) != 0)
  {
    goto LABEL_122;
  }

  if (a7 >= 1)
  {
    v57 = a7 + 1;
    do
    {
      std::string::append(this, v8);
      --v57;
    }

    while (v57 > 1);
  }

  std::string::append(this, "<x:xmpmeta xmlns:x=adobe:ns:meta/ x:xmptk=");
  std::string::append(this, "XMP Core 6.0.0");
  memset(&v190, 0, sizeof(v190));
  *v196 = 0;
  v197 = 0;
  if ((v30 & 0x2000) != 0)
  {
    memset(&v195, 0, sizeof(v195));
    MD5Init(&v195);
    if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v58 = &v191;
    }

    else
    {
      v58 = v191.__r_.__value_.__r.__words[0];
    }

    if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v59 = HIBYTE(v191.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v59 = v191.__r_.__value_.__r.__words[1];
    }

    MD5Update(&v195, v58, v59);
    MD5Final(v196, &v195);
    v60 = 0;
    v194 = 0;
    *__s = 0u;
    v193 = 0u;
    v61 = v196;
    do
    {
      v62 = *v61++;
      v63 = &__s[v60];
      *v63 = a0123456789abcd[v62 >> 4];
      v63[1] = a0123456789abcd[v62 & 0xF];
      v60 += 2;
    }

    while (v60 != 32);
    LOBYTE(v194) = 0;
    std::string::append(&v190, __s);
    std::string::append(this, " rdfhash=");
    if ((v190.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v190.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v190.__r_.__value_.__l.__size_;
    }

    v188 = 0;
    v189 = 0;
    __p = 0;
    std::string::basic_string[abi:fe200100](&__p, size + 1);
    if (v189 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (size)
    {
      if ((v190.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v66 = &v190;
      }

      else
      {
        v66 = v190.__r_.__value_.__r.__words[0];
      }

      memmove(p_p, v66, size);
    }

    *&p_p[size] = 34;
    if (v189 >= 0)
    {
      v67 = &__p;
    }

    else
    {
      v67 = __p;
    }

    if (v189 >= 0)
    {
      v68 = HIBYTE(v189);
    }

    else
    {
      v68 = v188;
    }

    std::string::append(this, v67, v68);
    if (SHIBYTE(v189) < 0)
    {
      operator delete(__p);
    }

    std::string::append(this, " merged=0");
  }

  std::string::append(this, ">");
  std::string::append(this, v184);
  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v190.__r_.__value_.__l.__data_);
    if ((a7 & 0x80000000) == 0)
    {
LABEL_123:
      v69 = a7 + 2;
      do
      {
        std::string::append(this, v8);
        --v69;
      }

      while (v69 > 1);
    }
  }

  else
  {
LABEL_122:
    if ((a7 & 0x80000000) == 0)
    {
      goto LABEL_123;
    }
  }

  if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v70 = &v191;
  }

  else
  {
    v70 = v191.__r_.__value_.__r.__words[0];
  }

  if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v71 = HIBYTE(v191.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v71 = v191.__r_.__value_.__l.__size_;
  }

  std::string::append(this, v70, v71);
  std::string::append(this, v184);
  if ((v30 & 0x1000) == 0)
  {
    if (a7 >= 1)
    {
      v72 = a7 + 1;
      do
      {
        std::string::append(this, v8);
        --v72;
      }

      while (v72 > 1);
    }

    std::string::append(this, "</x:xmpmeta>");
    std::string::append(this, v184);
  }

  std::string::erase(&v186, 0, 0xFFFFFFFFFFFFFFFFLL);
  if ((v30 & 0x10) == 0)
  {
    v73 = strlen(v8);
    std::string::reserve(&v186, v73 * a7 + 19);
    if (a7 >= 1)
    {
      do
      {
        std::string::append(&v186, v8);
        --v55;
      }

      while (v55 > 1);
    }

    std::string::append(&v186, "<?xpacket end=w?>");
    if ((v30 & 0x20) != 0)
    {
      v74 = HIBYTE(v186.__r_.__value_.__r.__words[2]);
      if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v74 = v186.__r_.__value_.__l.__size_;
      }

      if (v74 <= 3)
      {
        goto LABEL_382;
      }

      v75 = &v186;
      if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v75 = v186.__r_.__value_.__r.__words[0];
      }

      v75->__r_.__value_.__s.__data_[v74 - 4] = 114;
    }
  }

  if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v191.__r_.__value_.__l.__data_);
  }

  v76 = v181;
  if (v182)
  {
    memset(&v195, 0, 24);
    memset(__s, 0, sizeof(__s));
    *&v193 = 0;
    if ((v30 & 2) != 0)
    {
      memset(&v191, 0, sizeof(v191));
      std::string::basic_string[abi:fe200100]<0>(&v191, "  ");
      if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v88 = &v191;
      }

      else
      {
        v88 = v191.__r_.__value_.__r.__words[0];
      }

      v88->__r_.__value_.__s.__data_[0] = 0;
      v89 = *v195.count;
      v90 = *v195.state;
      *v195.state = *&this->__r_.__value_.__l.__data_;
      *v195.count = *(&this->__r_.__value_.__l + 2);
      v91 = *v195.count;
      *&this->__r_.__value_.__l.__data_ = v90;
      this->__r_.__value_.__r.__words[2] = v89;
      if (v91 >= 0)
      {
        v92 = &v195;
      }

      else
      {
        v92 = *v195.state;
      }

      if (v91 >= 0)
      {
        v93 = HIBYTE(v91);
      }

      else
      {
        v93 = *&v195.state[2];
      }

      ToUTF16(v92, v93, this, (v30 & 1) == 0, v85, v86, v87);
      v97 = *v195.count;
      v98 = *v195.state;
      *v195.state = *&v186.__r_.__value_.__l.__data_;
      v99 = v186.__r_.__value_.__r.__words[2];
      *v195.count = *(&v186.__r_.__value_.__l + 2);
      *&v186.__r_.__value_.__l.__data_ = v98;
      v186.__r_.__value_.__r.__words[2] = v97;
      if (v99 >= 0)
      {
        v100 = &v195;
      }

      else
      {
        v100 = *v195.state;
      }

      if (v99 >= 0)
      {
        v101 = HIBYTE(v99);
      }

      else
      {
        v101 = *&v195.state[2];
      }

      ToUTF16(v100, v101, &v186, (v30 & 1) == 0, v94, v95, v96);
      if ((v30 & 0x200) != 0)
      {
        v102 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
        if ((v102 & 0x8000000000000000) != 0)
        {
          v102 = this->__r_.__value_.__l.__size_;
        }

        v103 = HIBYTE(v186.__r_.__value_.__r.__words[2]);
        if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v103 = v186.__r_.__value_.__l.__size_;
        }

        v104 = v103 + v102;
        if (v104 > v181)
        {
          v179 = __cxa_allocate_exception(0x18uLL);
          *v179 = 107;
          v179[1] = "Can't fit into specified packet size";
          *(v179 + 16) = 0;
        }

        v76 = v181 - v104;
      }

      MEMORY[0x186602520](&v195, v184);
      if ((v195.count[1] & 0x80000000) == 0)
      {
        v108 = &v195;
      }

      else
      {
        v108 = *v195.state;
      }

      if ((v195.count[1] & 0x80000000) == 0)
      {
        v109 = HIBYTE(v195.count[1]);
      }

      else
      {
        v109 = *&v195.state[2];
      }

      ToUTF16(v108, v109, __s, (v30 & 1) == 0, v105, v106, v107);
      v110 = BYTE7(v193);
      if (SBYTE7(v193) < 0)
      {
        v110 = *&__s[8];
      }

      if (v110 <= v76)
      {
        v121 = v76 - v110;
        for (i = v110 + 200; i <= v121; v121 = (v121 - i))
        {
          for (j = 101; j > 1; --j)
          {
            if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v124 = &v191;
            }

            else
            {
              v124 = v191.__r_.__value_.__r.__words[0];
            }

            if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v125 = HIBYTE(v191.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v125 = v191.__r_.__value_.__l.__size_;
            }

            std::string::append(this, v124, v125);
          }

          if ((SBYTE7(v193) & 0x80u) == 0)
          {
            v126 = __s;
          }

          else
          {
            v126 = *__s;
          }

          if ((SBYTE7(v193) & 0x80u) == 0)
          {
            v127 = BYTE7(v193);
          }

          else
          {
            v127 = *&__s[8];
          }

          std::string::append(this, v126, v127);
        }

        if (v121 >= 2)
        {
          v128 = (v121 >> 1) + 1;
          do
          {
            if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v129 = &v191;
            }

            else
            {
              v129 = v191.__r_.__value_.__r.__words[0];
            }

            if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v130 = HIBYTE(v191.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v130 = v191.__r_.__value_.__l.__size_;
            }

            std::string::append(this, v129, v130);
            --v128;
          }

          while (v128 > 1);
        }

        if ((SBYTE7(v193) & 0x80u) == 0)
        {
          v131 = __s;
        }

        else
        {
          v131 = *__s;
        }

        if ((SBYTE7(v193) & 0x80u) == 0)
        {
          v132 = BYTE7(v193);
        }

        else
        {
          v132 = *&__s[8];
        }

        std::string::append(this, v131, v132);
      }

      else if (v76 >= 2)
      {
        v111 = (v76 >> 1) + 1;
        do
        {
          if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v112 = &v191;
          }

          else
          {
            v112 = v191.__r_.__value_.__r.__words[0];
          }

          if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v113 = HIBYTE(v191.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v113 = v191.__r_.__value_.__l.__size_;
          }

          std::string::append(this, v112, v113);
          --v111;
        }

        while (v111 > 1);
      }

      if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v133 = &v186;
      }

      else
      {
        v133 = v186.__r_.__value_.__r.__words[0];
      }

      if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v134 = HIBYTE(v186.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v134 = v186.__r_.__value_.__l.__size_;
      }

      goto LABEL_360;
    }

    memset(&v191, 0, sizeof(v191));
    std::string::basic_string[abi:fe200100]<0>(&v191, "    ");
    if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v191.__r_.__value_.__l.__size_ < 2)
      {
        goto LABEL_382;
      }

      v80 = v191.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (HIBYTE(v191.__r_.__value_.__r.__words[2]) <= 1u)
      {
        goto LABEL_382;
      }

      v80 = &v191;
    }

    v80->__r_.__value_.__s.__data_[2] = 0;
    if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!v191.__r_.__value_.__l.__size_)
      {
        goto LABEL_382;
      }

      v135 = v191.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!*(&v191.__r_.__value_.__s + 23))
      {
        goto LABEL_382;
      }

      v135 = &v191;
    }

    v135->__r_.__value_.__s.__data_[1] = 0;
    v136 = v191.__r_.__value_.__r.__words[0];
    v137 = &v191;
    if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v136 = &v191;
    }

    v136->__r_.__value_.__s.__data_[0] = 0;
    if ((v30 & 1) == 0)
    {
      goto LABEL_284;
    }

    if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v137 = v191.__r_.__value_.__r.__words[0];
    }

    v137->__r_.__value_.__s.__data_[0] = 32;
    if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v191.__r_.__value_.__l.__size_ < 3)
      {
        goto LABEL_382;
      }

      v138 = v191.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (HIBYTE(v191.__r_.__value_.__r.__words[2]) <= 2u)
      {
        goto LABEL_382;
      }

      v138 = &v191;
    }

    v138->__r_.__value_.__s.__data_[3] = 0;
    if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v191.__r_.__value_.__l.__size_ < 2)
      {
        goto LABEL_382;
      }

      v139 = v191.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (HIBYTE(v191.__r_.__value_.__r.__words[2]) <= 1u)
      {
        goto LABEL_382;
      }

      v139 = &v191;
    }

    v139->__r_.__value_.__s.__data_[2] = 0;
    if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v191.__r_.__value_.__l.__size_)
      {
        v140 = v191.__r_.__value_.__r.__words[0];
        goto LABEL_283;
      }
    }

    else if (*(&v191.__r_.__value_.__s + 23))
    {
      v140 = &v191;
LABEL_283:
      v140->__r_.__value_.__s.__data_[1] = 0;
LABEL_284:
      v141 = *v195.count;
      v142 = *v195.state;
      *v195.state = *&this->__r_.__value_.__l.__data_;
      *v195.count = *(&this->__r_.__value_.__l + 2);
      v143 = *v195.count;
      *&this->__r_.__value_.__l.__data_ = v142;
      this->__r_.__value_.__r.__words[2] = v141;
      if (v143 >= 0)
      {
        v144 = &v195;
      }

      else
      {
        v144 = *v195.state;
      }

      if (v143 >= 0)
      {
        v145 = HIBYTE(v143);
      }

      else
      {
        v145 = *&v195.state[2];
      }

      ToUTF32(v144, v145, this, (v30 & 1) == 0, v77, v78, v79);
      v149 = *v195.count;
      v150 = *v195.state;
      *v195.state = *&v186.__r_.__value_.__l.__data_;
      v151 = v186.__r_.__value_.__r.__words[2];
      *v195.count = *(&v186.__r_.__value_.__l + 2);
      *&v186.__r_.__value_.__l.__data_ = v150;
      v186.__r_.__value_.__r.__words[2] = v149;
      if (v151 >= 0)
      {
        v152 = &v195;
      }

      else
      {
        v152 = *v195.state;
      }

      if (v151 >= 0)
      {
        v153 = HIBYTE(v151);
      }

      else
      {
        v153 = *&v195.state[2];
      }

      ToUTF32(v152, v153, &v186, (v30 & 1) == 0, v146, v147, v148);
      if ((v30 & 0x200) != 0)
      {
        v154 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
        if ((v154 & 0x8000000000000000) != 0)
        {
          v154 = this->__r_.__value_.__l.__size_;
        }

        v155 = HIBYTE(v186.__r_.__value_.__r.__words[2]);
        if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v155 = v186.__r_.__value_.__l.__size_;
        }

        v156 = v155 + v154;
        if (v156 > v181)
        {
          v180 = __cxa_allocate_exception(0x18uLL);
          *v180 = 107;
          v180[1] = "Can't fit into specified packet size";
          *(v180 + 16) = 0;
        }

        v76 = v181 - v156;
      }

      MEMORY[0x186602520](&v195, v184);
      if ((v195.count[1] & 0x80000000) == 0)
      {
        v160 = &v195;
      }

      else
      {
        v160 = *v195.state;
      }

      if ((v195.count[1] & 0x80000000) == 0)
      {
        v161 = HIBYTE(v195.count[1]);
      }

      else
      {
        v161 = *&v195.state[2];
      }

      ToUTF32(v160, v161, __s, (v30 & 1) == 0, v157, v158, v159);
      v162 = BYTE7(v193);
      if (SBYTE7(v193) < 0)
      {
        v162 = *&__s[8];
      }

      if (v162 <= v76)
      {
        v166 = v76 - v162;
        for (k = v162 + 400; k <= v166; v166 = (v166 - k))
        {
          for (m = 101; m > 1; --m)
          {
            if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v169 = &v191;
            }

            else
            {
              v169 = v191.__r_.__value_.__r.__words[0];
            }

            if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v170 = HIBYTE(v191.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v170 = v191.__r_.__value_.__l.__size_;
            }

            std::string::append(this, v169, v170);
          }

          if ((SBYTE7(v193) & 0x80u) == 0)
          {
            v171 = __s;
          }

          else
          {
            v171 = *__s;
          }

          if ((SBYTE7(v193) & 0x80u) == 0)
          {
            v172 = BYTE7(v193);
          }

          else
          {
            v172 = *&__s[8];
          }

          std::string::append(this, v171, v172);
        }

        if (v166 >= 4)
        {
          v173 = (v166 >> 2) + 1;
          do
          {
            if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v174 = &v191;
            }

            else
            {
              v174 = v191.__r_.__value_.__r.__words[0];
            }

            if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v175 = HIBYTE(v191.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v175 = v191.__r_.__value_.__l.__size_;
            }

            std::string::append(this, v174, v175);
            --v173;
          }

          while (v173 > 1);
        }

        if ((SBYTE7(v193) & 0x80u) == 0)
        {
          v176 = __s;
        }

        else
        {
          v176 = *__s;
        }

        if ((SBYTE7(v193) & 0x80u) == 0)
        {
          v177 = BYTE7(v193);
        }

        else
        {
          v177 = *&__s[8];
        }

        std::string::append(this, v176, v177);
      }

      else if (v76 >= 4)
      {
        v163 = (v76 >> 2) + 1;
        do
        {
          if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v164 = &v191;
          }

          else
          {
            v164 = v191.__r_.__value_.__r.__words[0];
          }

          if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v165 = HIBYTE(v191.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v165 = v191.__r_.__value_.__l.__size_;
          }

          std::string::append(this, v164, v165);
          --v163;
        }

        while (v163 > 1);
      }

      if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v133 = &v186;
      }

      else
      {
        v133 = v186.__r_.__value_.__r.__words[0];
      }

      if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v134 = HIBYTE(v186.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v134 = v186.__r_.__value_.__l.__size_;
      }

LABEL_360:
      std::string::append(this, v133, v134);
      if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v191.__r_.__value_.__l.__data_);
      }

      if (SBYTE7(v193) < 0)
      {
        operator delete(*__s);
      }

      if (SHIBYTE(v195.count[1]) < 0)
      {
        operator delete(*v195.state);
      }

      goto LABEL_366;
    }

LABEL_382:
    __break(1u);
    goto LABEL_383;
  }

  if ((v30 & 0x200) != 0)
  {
    v81 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v81 & 0x8000000000000000) != 0)
    {
      v81 = this->__r_.__value_.__l.__size_;
    }

    v82 = HIBYTE(v186.__r_.__value_.__r.__words[2]);
    if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v82 = v186.__r_.__value_.__l.__size_;
    }

    v83 = v82 + v81;
    if (v83 > v181)
    {
      v178 = __cxa_allocate_exception(0x18uLL);
      *v178 = 107;
      v178[1] = "Can't fit into specified packet size";
      *(v178 + 16) = 0;
    }

    v76 = v181 - v83;
  }

  v84 = strlen(v184);
  if (v84 <= v76)
  {
    v114 = v76 - v84;
    v115 = v84 + 100;
    if (v84 + 100 <= v114)
    {
      v116 = v76 - 2 * v84 - 100;
      v117 = -100 - v84;
      do
      {
        v118 = v116;
        std::string::append(this, 0x64uLL, 32);
        std::string::append(this, v184);
        v116 = v118 + v117;
      }

      while (v115 <= v118);
      v114 = v118;
    }

    std::string::append(this, v114, 32);
    std::string::append(this, v184);
  }

  else
  {
    std::string::append(this, v76, 32);
  }

  if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v119 = &v186;
  }

  else
  {
    v119 = v186.__r_.__value_.__r.__words[0];
  }

  if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v120 = HIBYTE(v186.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v120 = v186.__r_.__value_.__l.__size_;
  }

  std::string::append(this, v119, v120);
LABEL_366:
  if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v186.__r_.__value_.__l.__data_);
  }
}

void sub_18617623C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (*(v39 - 233) < 0)
  {
    operator delete(*(v39 - 256));
  }

  if (*(v39 - 185) < 0)
  {
    operator delete(*(v39 - 208));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

unint64_t EstimateRDFSize(const XMP_Node *a1, unsigned int a2, unint64_t a3)
{
  LODWORD(v4) = a2;
  v6 = *(a1 + 39);
  if (v6 < 0)
  {
    v6 = *(a1 + 3);
  }

  v7 = 2 * (v6 + a2 * a3) + 8;
  v9 = *(a1 + 12);
  v8 = *(a1 + 13);
  if (v9 != v8)
  {
    v10 = v8 - v9;
    v7 += 2 * a3 * (a2 + 1 + (a2 + 2)) + 64;
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    do
    {
      v12 = *v9++;
      v7 += EstimateRDFSize(v12, v4, a3);
      --v11;
    }

    while (v11);
    LODWORD(v4) = v4 + 2;
  }

  v13 = *(a1 + 2);
  if ((v13 & 0x100) != 0)
  {
    v4 = (v4 + 1);
    v7 += 2 * a3 * v4 + 38;
  }

  else if ((v13 & 0x200) != 0)
  {
    v7 += 2 * a3 * (v4 + 1) + 20 * ((*(a1 + 10) - *(a1 + 9)) >> 3) + 22;
    LODWORD(v4) = v4 + 2;
  }

  else if ((v13 & 0x80000000) == 0)
  {
    v14 = *(a1 + 63);
    if (v14 < 0)
    {
      v14 = *(a1 + 6);
    }

    v7 += v14;
  }

  v16 = a1 + 72;
  v15 = *(a1 + 9);
  v17 = *(v16 + 1) - v15;
  if (v17)
  {
    v18 = v17 >> 3;
    if (v18 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v18;
    }

    do
    {
      v20 = *v15++;
      v7 += EstimateRDFSize(v20, v4 + 1, a3);
      --v19;
    }

    while (v19);
  }

  return v7;
}

void StartOuterRDFDescription(uint64_t a1, std::string *this, const std::string::value_type *a3, std::string::value_type *__s, int a5)
{
  if (a5 >= -1)
  {
    v10 = a5 + 3;
    do
    {
      std::string::append(this, __s);
      --v10;
    }

    while (v10 > 1);
  }

  std::string::append(this, "<rdf:Description rdf:about=");
  std::string::push_back(this, 34);
  v11 = *(a1 + 39);
  if (v11 >= 0)
  {
    v12 = (a1 + 16);
  }

  else
  {
    v12 = *(a1 + 16);
  }

  if (v11 >= 0)
  {
    v13 = *(a1 + 39);
  }

  else
  {
    v13 = *(a1 + 24);
  }

  std::string::append(this, v12, v13);
  std::string::push_back(this, 34);
  memset(&v18, 0, sizeof(v18));
  std::string::reserve(&v18, 0x190uLL);
  MEMORY[0x186602520](&v18, ":xml:rdf:");
  v14 = *(a1 + 80) - *(a1 + 72);
  if (v14)
  {
    v15 = 0;
    v16 = v14 >> 3;
    while (1)
    {
      v17 = *(a1 + 72);
      if (v15 >= (*(a1 + 80) - v17) >> 3)
      {
        break;
      }

      DeclareUsedNamespaces(*(v17 + 8 * v15++), &v18, this, a3, __s, (a5 + 4));
      if (v16 == v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1861765F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SerializeCompactRDFAttrProps(uint64_t a1, std::string *a2, const std::string::value_type *a3, const std::string::value_type *a4, int a5)
{
  v5 = *(a1 + 80) - *(a1 + 72);
  if (v5)
  {
    v10 = 0;
    v11 = v5 >> 3;
    v12 = a5 + 1;
    while (1)
    {
      v13 = *(a1 + 72);
      if (v10 >= (*(a1 + 80) - v13) >> 3)
      {
        break;
      }

      v14 = *(v13 + 8 * v10);
      if (CanBeRDFAttrProp(v14))
      {
        std::string::append(a2, a3);
        v15 = v12;
        if (a5 >= 1)
        {
          do
          {
            std::string::append(a2, a4);
            --v15;
          }

          while (v15 > 1);
        }

        v18 = *(v14 + 2);
        v17 = v14 + 16;
        v16 = v18;
        v19 = v17[23];
        if (v19 >= 0)
        {
          v20 = v17;
        }

        else
        {
          v20 = v16;
        }

        if (v19 >= 0)
        {
          v21 = *(v17 + 23);
        }

        else
        {
          v21 = *(v17 + 1);
        }

        std::string::append(a2, v20, v21);
        std::string::append(a2, "=");
        AppendNodeValue(a2, (v17 + 24), 1);
        std::string::push_back(a2, 34);
      }

      if (++v10 == v11)
      {
        return;
      }
    }

    __break(1u);
  }
}

std::string *SerializeCompactRDFElemProps(std::string *result, std::string *a2, const std::string::value_type *a3, std::string::value_type *a4, int a5)
{
  v5 = result[3].__r_.__value_.__l.__size_ - result[3].__r_.__value_.__r.__words[0];
  if (!v5)
  {
    return result;
  }

  v6 = a5;
  v9 = result;
  v10 = 0;
  v60 = v5 >> 3;
  v62 = a5 + 1;
  v54 = a5 + 2;
  v56 = result;
  do
  {
    data = v9[3].__r_.__value_.__l.__data_;
    if (v10 >= (v9[3].__r_.__value_.__l.__size_ - data) >> 3)
    {
      goto LABEL_98;
    }

    v12 = *&data[8 * v10];
    result = CanBeRDFAttrProp(v12);
    if (result)
    {
      goto LABEL_90;
    }

    v13 = (v12 + 16);
    if (*(v12 + 39) < 0)
    {
      v13 = *v13;
    }

    v58 = *(v12 + 8);
    if (*v13 == 91)
    {
      v13 = "rdf:li";
    }

    __s = v13;
    if (v6 >= 1)
    {
      v14 = v62;
      do
      {
        std::string::append(a2, a4);
        --v14;
      }

      while (v14 > 1);
    }

    v59 = v10;
    std::string::push_back(a2, 60);
    std::string::append(a2, __s);
    v15 = *(v12 + 104) - *(v12 + 96);
    if (!v15)
    {
      v18 = 0;
      goto LABEL_50;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = v15 >> 3;
    if (v19 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19;
    }

    do
    {
      v21 = *(v12 + 96);
      if (v17 >= (*(v12 + 104) - v21) >> 3)
      {
        goto LABEL_98;
      }

      v22 = *(v21 + 8 * v17);
      v23 = (v22 + 16);
      if (*(v22 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v63, *(v22 + 16), *(v22 + 24));
      }

      else
      {
        *&v63.__r_.__value_.__l.__data_ = *v23;
        v63.__r_.__value_.__r.__words[2] = *(v22 + 32);
      }

      v24 = IsRDFAttrQualifier(&v63);
      v25 = v24;
      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
        if (!v25)
        {
LABEL_26:
          v16 = 1;
          goto LABEL_43;
        }
      }

      else if (!v24)
      {
        goto LABEL_26;
      }

      v26 = *(v22 + 39);
      if (v26 < 0)
      {
        if (*(v22 + 24) == 12)
        {
          v27 = *v23;
LABEL_29:
          v28 = *v27;
          v29 = *(v27 + 2);
          v31 = v28 == 0x6F7365723A666472 && v29 == 1701016181;
          v18 |= v31;
        }
      }

      else
      {
        v27 = (v22 + 16);
        if (v26 == 12)
        {
          goto LABEL_29;
        }
      }

      std::string::push_back(a2, 32);
      v32 = *(v22 + 39);
      if (v32 >= 0)
      {
        v33 = (v22 + 16);
      }

      else
      {
        v33 = *(v22 + 16);
      }

      if (v32 >= 0)
      {
        v34 = *(v22 + 39);
      }

      else
      {
        v34 = *(v22 + 24);
      }

      std::string::append(a2, v33, v34);
      std::string::append(a2, "=");
      AppendNodeValue(a2, v22 + 40, 1);
      std::string::push_back(a2, 34);
LABEL_43:
      ++v17;
    }

    while (v20 != v17);
    v6 = a5;
    if (v16)
    {
      std::string::append(a2, " rdf:parseType=Resource>");
      v35 = a3;
      std::string::append(a2, a3);
      SerializeCanonicalRDFProperty(v12, a2, a3, a4, v62, 0, 1);
      v36 = (*(v12 + 104) - *(v12 + 96)) >> 3;
      v37 = (*(v12 + 8) >> 6) & 1;
      v9 = v56;
      v10 = v59;
      if (v36 <= v37)
      {
        goto LABEL_69;
      }

      while (1)
      {
        v38 = *(v12 + 96);
        if (v37 >= (*(v12 + 104) - v38) >> 3)
        {
          break;
        }

        SerializeCanonicalRDFProperty(*(v38 + 8 * v37++), a2, a3, a4, v62, 0, 0);
        if (v36 == v37)
        {
          goto LABEL_69;
        }
      }

LABEL_98:
      __break(1u);
LABEL_99:
      SerializeCompactRDFElemProps();
    }

LABEL_50:
    v39 = (v58 & 0x1F00);
    if ((v58 & 0x1F00) == 0)
    {
      if ((*(v12 + 8) & 2) != 0)
      {
        std::string::append(a2, " rdf:resource=");
        AppendNodeValue(a2, v12 + 40, 1);
        v49 = a2;
        v50 = "/>";
LABEL_87:
        std::string::append(v49, v50);
        v35 = a3;
        goto LABEL_88;
      }

      v47 = *(v12 + 63);
      v9 = v56;
      v35 = a3;
      v10 = v59;
      if (v47 < 0)
      {
        v47 = *(v12 + 48);
      }

      if (!v47)
      {
        std::string::append(a2, "/>");
        goto LABEL_89;
      }

      std::string::push_back(a2, 62);
      AppendNodeValue(a2, v12 + 40, 0);
LABEL_72:
      std::string::append(a2, "</");
      std::string::append(a2, __s);
      std::string::push_back(a2, 62);
      goto LABEL_89;
    }

    if ((v58 & 0x200) != 0)
    {
      std::string::push_back(a2, 62);
      v35 = a3;
      std::string::append(a2, a3);
      EmitRDFArrayTag(v39, a2, a3, a4, v62, (*(v12 + 80) - *(v12 + 72)) >> 3, 1);
      if ((*(v12 + 9) & 0x10) != 0)
      {
        NormalizeLangArray(v12);
      }

      SerializeCompactRDFElemProps(v12, a2, a3, a4, v54);
      EmitRDFArrayTag(v39, a2, a3, a4, v62, (*(v12 + 80) - *(v12 + 72)) >> 3, 0);
      v9 = v56;
      v10 = v59;
LABEL_69:
      if (v6 >= 1)
      {
        v48 = v62;
        do
        {
          std::string::append(a2, a4);
          --v48;
        }

        while (v48 > 1);
      }

      goto LABEL_72;
    }

    if ((v58 & 0x100) == 0)
    {
      goto LABEL_99;
    }

    v41 = *(v12 + 72);
    v40 = *(v12 + 80);
    if (v40 == v41)
    {
LABEL_86:
      v49 = a2;
      v50 = " rdf:parseType=Resource/>";
      goto LABEL_87;
    }

    LOBYTE(v42) = 0;
    v43 = 0;
    v44 = (v40 - v41) >> 3;
    v45 = *(v12 + 72);
    while (1)
    {
      v46 = CanBeRDFAttrProp(*v45);
      if (!v46)
      {
        break;
      }

      if (v42)
      {
        goto LABEL_74;
      }

LABEL_59:
      v42 = !v46;
      ++v45;
      v43 = v46;
      if (!--v44)
      {
        goto LABEL_75;
      }
    }

    if (!v43)
    {
      goto LABEL_59;
    }

LABEL_74:
    LOBYTE(v46) = 1;
    v42 = 1;
LABEL_75:
    if ((v18 & v42) == 1)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 202;
      exception[1] = "Can't mix rdf:resource qualifier and element fields";
      *(exception + 16) = 0;
    }

    v6 = a5;
    if (v40 == v41)
    {
      goto LABEL_86;
    }

    if (v42)
    {
      v9 = v56;
      v35 = a3;
      v10 = v59;
      if (v46)
      {
        std::string::push_back(a2, 62);
        std::string::append(a2, a3);
        if (a5 < 0)
        {
          std::string::append(a2, "<rdf:Description");
          SerializeCompactRDFAttrProps(v12, a2, a3, a4, v54);
          std::string::append(a2, ">");
          std::string::append(a2, a3);
          SerializeCompactRDFElemProps(v12, a2, a3, a4, v62);
        }

        else
        {
          v51 = v54;
          do
          {
            std::string::append(a2, a4);
            --v51;
          }

          while (v51 > 1);
          std::string::append(a2, "<rdf:Description");
          SerializeCompactRDFAttrProps(v12, a2, a3, a4, v54);
          std::string::append(a2, ">");
          std::string::append(a2, a3);
          SerializeCompactRDFElemProps(v12, a2, a3, a4, v62);
          if ((a5 & 0x80000000) == 0)
          {
            v52 = v54;
            do
            {
              std::string::append(a2, a4);
              --v52;
            }

            while (v52 > 1);
          }
        }

        std::string::append(a2, "</rdf:Description>");
        std::string::append(a2, a3);
      }

      else
      {
        std::string::append(a2, " rdf:parseType=Resource>");
        std::string::append(a2, a3);
        SerializeCompactRDFElemProps(v12, a2, a3, a4, v62);
      }

      goto LABEL_69;
    }

    v35 = a3;
    SerializeCompactRDFAttrProps(v12, a2, a3, a4, v62);
    std::string::append(a2, "/>");
LABEL_88:
    v9 = v56;
    v10 = v59;
LABEL_89:
    result = std::string::append(a2, v35);
LABEL_90:
    ++v10;
  }

  while (v10 != v60);
  return result;
}

void DeclareUsedNamespaces(uint64_t result, std::string *a2, std::string *a3, const std::string::value_type *a4, const std::string::value_type *a5, uint64_t a6)
{
  v12 = *(result + 8);
  if (v12 < 0)
  {
    v18 = (result + 40);
    if (*(result + 63) < 0)
    {
      v18 = *v18;
    }

    v19 = (result + 16);
    if (*(result + 39) < 0)
    {
      v19 = *v19;
    }

    DeclareOneNamespace(v18, v19, a2, a3, a4, a5, a6);
  }

  else if ((v12 & 0x100) != 0)
  {
    v13 = *(result + 80) - *(result + 72);
    if (v13)
    {
      v14 = 0;
      v15 = v13 >> 3;
      if (v15 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      do
      {
        v17 = *(result + 72);
        if (v14 >= (*(result + 80) - v17) >> 3)
        {
          goto LABEL_28;
        }

        DeclareElemNamespace((*(v17 + 8 * v14++) + 16), a2, a3, a4, a5, a6);
      }

      while (v16 != v14);
    }
  }

  v20 = *(result + 80) - *(result + 72);
  if (v20)
  {
    v21 = 0;
    v22 = v20 >> 3;
    if (v22 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    do
    {
      v24 = *(result + 72);
      if (v21 >= (*(result + 80) - v24) >> 3)
      {
        goto LABEL_28;
      }

      DeclareUsedNamespaces(*(v24 + 8 * v21++), a2, a3, a4, a5, a6);
    }

    while (v23 != v21);
  }

  v25 = *(result + 104) - *(result + 96);
  if (v25)
  {
    v26 = 0;
    v27 = v25 >> 3;
    if (v27 <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = v27;
    }

    while (1)
    {
      v29 = *(result + 96);
      if (v26 >= (*(result + 104) - v29) >> 3)
      {
        break;
      }

      v30 = *(v29 + 8 * v26);
      DeclareElemNamespace((v30 + 16), a2, a3, a4, a5, a6);
      DeclareUsedNamespaces(v30, a2, a3, a4, a5, a6);
      if (v28 == ++v26)
      {
        return;
      }
    }

LABEL_28:
    __break(1u);
  }
}

void DeclareOneNamespace(const std::string::value_type *a1, const std::string::value_type *a2, std::string *a3, std::string *a4, const std::string::value_type *a5, const std::string::value_type *a6, int a7)
{
  memset(&v32, 0, sizeof(v32));
  std::string::basic_string[abi:fe200100]<0>(&v32, ":");
  std::string::append(&v32, a1);
  size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = a3->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a3->__r_.__value_.__l.__size_;
  }

  v14 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v32;
  }

  else
  {
    v15 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v32.__r_.__value_.__l.__size_;
  }

  if (v16)
  {
    v28 = a2;
    v29 = a1;
    if (size >= v16)
    {
      v22 = v13 + size;
      v23 = v15->__r_.__value_.__s.__data_[0];
      v24 = v13;
      do
      {
        v25 = size - v16;
        if (v25 == -1)
        {
          break;
        }

        v26 = memchr(v24, v23, v25 + 1);
        if (!v26)
        {
          break;
        }

        v27 = v26;
        if (!memcmp(v26, v15, v16))
        {
          if (v27 != v22 && v27 - v13 != -1)
          {
            goto LABEL_33;
          }

          break;
        }

        v24 = (v27 + 1);
        size = v22 - (v27 + 1);
      }

      while (size >= v16);
    }

    std::string::append(a4, a5);
    if (a7 >= 1)
    {
      v17 = a7 + 1;
      do
      {
        std::string::append(a4, a6);
        --v17;
      }

      while (v17 > 1);
    }

    std::string::append(a4, "xmlns:");
    std::string::append(a4, v29);
    v18 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
    v19 = v18;
    if ((v18 & 0x80u) != 0)
    {
      v18 = a4->__r_.__value_.__l.__size_;
    }

    if (!v18)
    {
      __break(1u);
      return;
    }

    if (v19 >= 0)
    {
      v20 = a4;
    }

    else
    {
      v20 = a4->__r_.__value_.__r.__words[0];
    }

    v21 = v20 + v18;
    if (*(v21 - 1) == 58)
    {
      *(v21 - 1) = 61;
    }

    else
    {
      std::string::push_back(a4, 61);
    }

    std::string::push_back(a4, 34);
    std::string::append(a4, v28);
    std::string::push_back(a4, 34);
    std::string::append(a3, v29);
    v14 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

LABEL_33:
  if (v14 < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

void sub_186177234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DeclareElemNamespace(const std::string *a1, std::string *a2, std::string *a3, const std::string::value_type *a4, const std::string::value_type *a5, int a6)
{
  v12 = std::string::find(a1, 58, 0);
  if (v12 != -1)
  {
    memset(&v17, 0, sizeof(v17));
    std::string::basic_string(&v17, a1, 0, v12 + 1, &v16);
    v16 = 0;
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v17;
    }

    else
    {
      v13 = v17.__r_.__value_.__r.__words[0];
    }

    if ((XMP_NamespaceTable::GetURI(sRegisteredNamespaces, v13, &v16, 0) & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 7;
      exception[1] = "XMP_Enforce failed: (nsFound) in /Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/XMPMeta-Serialize.cpp at line 191";
      *(exception + 16) = 0;
    }

    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v17;
    }

    else
    {
      v14 = v17.__r_.__value_.__r.__words[0];
    }

    DeclareOneNamespace(v14, v16, a2, a3, a4, a5, a6);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }
}

void sub_186177388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL CanBeRDFAttrProp(const XMP_Node *a1)
{
  v1 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v1 = *v1;
  }

  if (*v1 == 91 || *(a1 + 12) != *(a1 + 13))
  {
    return 0;
  }

  if ((*(a1 + 2) & 2) != 0)
  {
    return 0;
  }

  return (*(a1 + 2) & 0x1F00) == 0;
}

std::string *AppendNodeValue(std::string *this, uint64_t a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3 >= 1)
  {
    v6 = this;
    v7 = &v4[v3];
    do
    {
      v8 = 0;
      while (1)
      {
        v9 = v4[v8];
        if (v9 == 34 && a3 != 0)
        {
          std::string::append(v6, v4, v8);
          v13 = v6;
          v14 = "&quot;";
LABEL_34:
          this = std::string::append(v13, v14);
          goto LABEL_35;
        }

        if (v9 < 0x20u)
        {
          break;
        }

        v11 = v4[v8];
        if (v11 <= 0x3E && ((1 << v9) & 0x5000004000000000) != 0)
        {
          std::string::append(v6, v4, v8);
          switch(v11)
          {
            case '<':
              v13 = v6;
              v14 = "&lt;";
              break;
            case '>':
              v13 = v6;
              v14 = "&gt;";
              break;
            case '&':
              v13 = v6;
              v14 = "&amp;";
              break;
            default:
              AppendNodeValue();
          }

          goto LABEL_34;
        }

        if (&v4[++v8] >= v7)
        {
          this = std::string::append(v6, v4, v8);
          v4 += v8;
          goto LABEL_36;
        }
      }

      std::string::append(v6, v4, v8);
      if (v9 - 9 >= 2 && v9 != 13)
      {
        AppendNodeValue();
      }

      v18 = 0;
      v17 = 0;
      strcpy(__s, "&#xn;");
      __s[3] = a0123456789abcd[v9];
      this = std::string::append(v6, __s, 5uLL);
LABEL_35:
      v4 += v8 + 1;
LABEL_36:
      ;
    }

    while (v4 < v7);
  }

  return this;
}

BOOL IsRDFAttrQualifier(const void ***a1)
{
  v2 = *(a1 + 23);
  v3 = "xml:lang";
  v4 = 1;
  v5 = 1u;
  do
  {
    v6 = strlen(v3);
    v7 = v6;
    if ((v2 & 0x80) != 0)
    {
      if (v6 != a1[1])
      {
        goto LABEL_9;
      }

      if (v6 == -1)
      {
        std::string::__throw_out_of_range[abi:fe200100]();
      }

      v8 = *a1;
    }

    else
    {
      v8 = a1;
      if (v7 != v2)
      {
        goto LABEL_9;
      }
    }

    if (!memcmp(v8, v3, v7))
    {
      return v4;
    }

LABEL_9:
    v3 = sAttrQualifiers[v5];
    v4 = *v3 != 0;
    ++v5;
  }

  while (v5 != 6);
  return v4;
}

std::string *SerializeCanonicalRDFProperty(uint64_t a1, std::string *a2, const std::string::value_type *a3, std::string::value_type *a4, uint64_t a5, unsigned int a6, char a7)
{
  v7 = a5;
  v12 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v12 = *v12;
  }

  if (a7)
  {
    v13 = "rdf:value";
  }

  else if (*v12 == 91)
  {
    v13 = "rdf:li";
  }

  else
  {
    v13 = v12;
  }

  v91 = *(a1 + 8);
  if (a5 >= 1)
  {
    v14 = a5 + 1;
    do
    {
      std::string::append(a2, a4);
      --v14;
    }

    while (v14 > 1);
  }

  std::string::push_back(a2, 60);
  v92 = v13;
  std::string::append(a2, v13);
  v15 = *(a1 + 104) - *(a1 + 96);
  if (!v15)
  {
    v17 = 0;
    goto LABEL_54;
  }

  v89 = v7;
  v90 = a3;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = v15 >> 3;
  if (v19 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19;
  }

  do
  {
    v21 = *(a1 + 96);
    if (v18 >= (*(a1 + 104) - v21) >> 3)
    {
      goto LABEL_158;
    }

    v22 = *(v21 + 8 * v18);
    v23 = (v22 + 16);
    if (*(v22 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v96, *(v22 + 16), *(v22 + 24));
    }

    else
    {
      *&v96.__r_.__value_.__l.__data_ = *v23;
      v96.__r_.__value_.__r.__words[2] = *(v22 + 32);
    }

    v24 = IsRDFAttrQualifier(&v96);
    v25 = v24;
    if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v96.__r_.__value_.__l.__data_);
      if (!v25)
      {
LABEL_25:
        v16 = 1;
        goto LABEL_43;
      }
    }

    else if (!v24)
    {
      goto LABEL_25;
    }

    v26 = *(v22 + 39);
    if (v26 < 0)
    {
      if (*(v22 + 24) != 12)
      {
        goto LABEL_35;
      }

      v27 = *v23;
    }

    else
    {
      v27 = (v22 + 16);
      if (v26 != 12)
      {
        goto LABEL_35;
      }
    }

    v28 = *v27;
    v29 = *(v27 + 2);
    v31 = v28 == 0x6F7365723A666472 && v29 == 1701016181;
    v17 |= v31;
LABEL_35:
    if ((a7 & 1) == 0)
    {
      std::string::push_back(a2, 32);
      v32 = *(v22 + 39);
      if (v32 >= 0)
      {
        v33 = (v22 + 16);
      }

      else
      {
        v33 = *(v22 + 16);
      }

      if (v32 >= 0)
      {
        v34 = *(v22 + 39);
      }

      else
      {
        v34 = *(v22 + 24);
      }

      std::string::append(a2, v33, v34);
      std::string::append(a2, "=");
      AppendNodeValue(a2, v22 + 40, 1);
      std::string::push_back(a2, 34);
    }

LABEL_43:
    ++v18;
  }

  while (v20 != v18);
  a3 = v90;
  if (v16)
  {
    v7 = v89;
    if ((a7 & 1) == 0)
    {
      if ((v17 & 1) == 0)
      {
        if (a6)
        {
          std::string::push_back(a2, 62);
          std::string::append(a2, v90);
          if ((v89 & 0x80000000) != 0)
          {
            v36 = "<rdf:Description>";
          }

          else
          {
            v35 = v89 + 2;
            v36 = "<rdf:Description>";
            do
            {
              std::string::append(a2, a4);
              --v35;
            }

            while (v35 > 1);
          }

          LODWORD(v7) = v89 + 1;
        }

        else
        {
          v36 = " rdf:parseType=Resource>";
        }

        std::string::append(a2, v36);
        std::string::append(a2, v90);
        SerializeCanonicalRDFProperty(a1, a2, v90, a4, (v7 + 1), a6, 1);
        v67 = *(a1 + 104) - *(a1 + 96);
        if (v67)
        {
          v68 = 0;
          v69 = v67 >> 3;
          if (v69 <= 1)
          {
            v70 = 1;
          }

          else
          {
            v70 = v69;
          }

          v71 = v7;
          while (1)
          {
            v72 = *(a1 + 96);
            if (v68 >= (*(a1 + 104) - v72) >> 3)
            {
              goto LABEL_158;
            }

            v73 = *(v72 + 8 * v68);
            if (*(v73 + 39) < 0)
            {
              std::string::__init_copy_ctor_external(&v95, *(v73 + 16), *(v73 + 24));
            }

            else
            {
              v95 = *(v73 + 16);
            }

            v74 = IsRDFAttrQualifier(&v95);
            v75 = v74;
            if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
            {
              break;
            }

            if (!v74)
            {
              goto LABEL_122;
            }

LABEL_123:
            ++v68;
            LODWORD(v7) = v71;
            if (v70 == v68)
            {
              goto LABEL_127;
            }
          }

          operator delete(v95.__r_.__value_.__l.__data_);
          if (v75)
          {
            goto LABEL_123;
          }

LABEL_122:
          SerializeCanonicalRDFProperty(v73, a2, v90, a4, (v71 + 1), a6, 0);
          goto LABEL_123;
        }

LABEL_127:
        if (a6)
        {
          v76 = v7 - 1;
          if (v7 >= 1)
          {
            v77 = v7 + 1;
            do
            {
              std::string::append(a2, a4);
              --v77;
            }

            while (v77 > 1);
          }

          goto LABEL_131;
        }

        goto LABEL_132;
      }

      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 202;
      v88 = "Can't mix rdf:resource and general qualifiers";
LABEL_162:
      exception[1] = v88;
      *(exception + 16) = 0;
    }
  }

  else
  {
    v7 = v89;
  }

LABEL_54:
  v37 = (v91 & 0x1F00);
  if ((v91 & 0x1F00) == 0)
  {
    if ((*(a1 + 8) & 2) != 0)
    {
      std::string::append(a2, " rdf:resource=");
      AppendNodeValue(a2, a1 + 40, 1);
      v64 = "/>";
      goto LABEL_99;
    }

    v56 = *(a1 + 63);
    if (v56 < 0)
    {
      v56 = *(a1 + 48);
    }

    v57 = v92;
    if (!v56)
    {
      goto LABEL_97;
    }

    std::string::push_back(a2, 62);
    AppendNodeValue(a2, a1 + 40, 0);
    goto LABEL_136;
  }

  if ((v91 & 0x200) != 0)
  {
    std::string::push_back(a2, 62);
    std::string::append(a2, a3);
    EmitRDFArrayTag(v37, a2, a3, a4, v7 + 1, (*(a1 + 80) - *(a1 + 72)) >> 3, 1);
    if ((*(a1 + 9) & 0x10) != 0)
    {
      NormalizeLangArray(a1);
    }

    v58 = *(a1 + 80);
    v59 = v58 - *(a1 + 72);
    if (v59)
    {
      v60 = 0;
      if ((v59 >> 3) <= 1)
      {
        v61 = 1;
      }

      else
      {
        v61 = v59 >> 3;
      }

      do
      {
        v62 = *(a1 + 72);
        if (v60 >= (*(a1 + 80) - v62) >> 3)
        {
          goto LABEL_158;
        }

        SerializeCanonicalRDFProperty(*(v62 + 8 * v60++), a2, a3, a4, (v7 + 2), a6, 0);
      }

      while (v61 != v60);
      v58 = *(a1 + 72);
      v63 = *(a1 + 80);
    }

    else
    {
      v63 = *(a1 + 80);
    }

    EmitRDFArrayTag(v37, a2, a3, a4, v7 + 1, (v63 - v58) >> 3, 0);
    goto LABEL_132;
  }

  if ((v17 & 1) == 0)
  {
    v57 = v92;
    if ((v91 & 0x100) == 0)
    {
      SerializeCanonicalRDFProperty();
    }

    if (*(a1 + 80) == *(a1 + 72))
    {
      if ((a6 & 1) == 0)
      {
        v64 = " rdf:parseType=Resource/>";
        goto LABEL_99;
      }

      std::string::push_back(a2, 62);
      std::string::append(a2, a3);
      if ((v7 & 0x80000000) == 0)
      {
        v80 = v7 + 2;
        do
        {
          std::string::append(a2, a4);
          --v80;
        }

        while (v80 > 1);
      }

      std::string::append(a2, "<rdf:Description/>");
      std::string::append(a2, a3);
    }

    else
    {
      if (a6)
      {
        std::string::push_back(a2, 62);
        std::string::append(a2, a3);
        if ((v7 & 0x80000000) != 0)
        {
          v66 = "<rdf:Description>";
        }

        else
        {
          v65 = v7 + 2;
          v66 = "<rdf:Description>";
          do
          {
            std::string::append(a2, a4);
            --v65;
          }

          while (v65 > 1);
        }

        LODWORD(v7) = v7 + 1;
      }

      else
      {
        v66 = " rdf:parseType=Resource>";
      }

      std::string::append(a2, v66);
      std::string::append(a2, a3);
      v81 = *(a1 + 80) - *(a1 + 72);
      if (v81)
      {
        v82 = 0;
        v83 = v81 >> 3;
        if (v83 <= 1)
        {
          v84 = 1;
        }

        else
        {
          v84 = v83;
        }

        while (1)
        {
          v85 = *(a1 + 72);
          if (v82 >= (*(a1 + 80) - v85) >> 3)
          {
            break;
          }

          SerializeCanonicalRDFProperty(*(v85 + 8 * v82++), a2, a3, a4, (v7 + 1), a6, 0);
          if (v84 == v82)
          {
            goto LABEL_153;
          }
        }

LABEL_158:
        __break(1u);
LABEL_159:
        SerializeCanonicalRDFProperty();
      }

LABEL_153:
      if (a6)
      {
        v76 = v7 - 1;
        if (v7 >= 1)
        {
          v86 = v7 + 1;
          do
          {
            std::string::append(a2, a4);
            --v86;
          }

          while (v86 > 1);
        }

LABEL_131:
        std::string::append(a2, "</rdf:Description>");
        std::string::append(a2, a3);
        LODWORD(v7) = v76;
      }

LABEL_132:
      v57 = v92;
    }

    if (v7 >= 1)
    {
      v78 = v7 + 1;
      do
      {
        std::string::append(a2, a4);
        --v78;
      }

      while (v78 > 1);
    }

LABEL_136:
    std::string::append(a2, "</");
    std::string::append(a2, v57);
    std::string::push_back(a2, 62);
    return std::string::append(a2, a3);
  }

  if ((v91 & 0x100) == 0)
  {
    goto LABEL_159;
  }

  v38 = *(a1 + 80) - *(a1 + 72);
  if (v38)
  {
    v39 = 0;
    v40 = v38 >> 3;
    if (v40 <= 1)
    {
      v41 = 1;
    }

    else
    {
      v41 = v40;
    }

    v42 = v7 + 2;
    while (1)
    {
      v43 = *(a1 + 72);
      if (v39 >= (*(a1 + 80) - v43) >> 3)
      {
        goto LABEL_158;
      }

      v44 = *(v43 + 8 * v39);
      if (!CanBeRDFAttrProp(v44))
      {
        break;
      }

      std::string::append(a2, a3);
      v45 = v7;
      if ((v7 & 0x80000000) == 0)
      {
        v46 = v42;
        do
        {
          std::string::append(a2, a4);
          --v46;
        }

        while (v46 > 1);
      }

      std::string::push_back(a2, 32);
      v47 = *(v44 + 39);
      if (v47 >= 0)
      {
        v48 = (v44 + 16);
      }

      else
      {
        v48 = *(v44 + 16);
      }

      if (v47 >= 0)
      {
        v49 = *(v44 + 39);
      }

      else
      {
        v49 = *(v44 + 24);
      }

      std::string::append(a2, v48, v49);
      std::string::append(a2, "=");
      v52 = *(v44 + 40);
      v51 = v44 + 40;
      v50 = v52;
      v53 = *(v51 + 23);
      if (v53 >= 0)
      {
        v54 = v51;
      }

      else
      {
        v54 = v50;
      }

      if (v53 >= 0)
      {
        v55 = *(v51 + 23);
      }

      else
      {
        v55 = *(v51 + 8);
      }

      std::string::append(a2, v54, v55);
      std::string::push_back(a2, 34);
      ++v39;
      v7 = v45;
      if (v39 == v41)
      {
        goto LABEL_97;
      }
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 202;
    v88 = "Can't mix rdf:resource and complex fields";
    goto LABEL_162;
  }

LABEL_97:
  v64 = "/>";
LABEL_99:
  std::string::append(a2, v64);
  return std::string::append(a2, a3);
}

std::string *EmitRDFArrayTag(std::string *result, std::string *this, const std::string::value_type *a3, std::string::value_type *__s, int a5, int a6, int a7)
{
  v12 = result;
  if (a6 || a7)
  {
    if (a5 >= 1)
    {
      v13 = a5 + 1;
      do
      {
        std::string::append(this, __s);
        --v13;
      }

      while (v13 > 1);
    }

    if (a7)
    {
      v14 = "<rdf:";
    }

    else
    {
      v14 = "</rdf:";
    }

    std::string::append(this, v14);
    v15 = "Seq";
    if ((v12 & 0x400) == 0)
    {
      v15 = "Bag";
    }

    if ((v12 & 0x800) != 0)
    {
      v16 = "Alt";
    }

    else
    {
      v16 = v15;
    }

    std::string::append(this, v16);
    if (!a6 && (a7 & 1) != 0)
    {
      std::string::push_back(this, 47);
    }

    std::string::push_back(this, 62);

    return std::string::append(this, a3);
  }

  return result;
}

void AppendNodeValue()
{
  __assert_rtn("AppendNodeValue", "XMPMeta-Serialize.cpp", 334, "ch == '&'");
}

{
  __assert_rtn("AppendNodeValue", "XMPMeta-Serialize.cpp", 318, "(ch == ((char)0x09)) || (ch == ((char)0x0A)) || (ch == ((char)0x0D))");
}

void SerializeCanonicalRDFProperty()
{
  __assert_rtn("SerializeCanonicalRDFProperty", "XMPMeta-Serialize.cpp", 596, "propForm & kXMP_PropValueIsStruct");
}

{
  __assert_rtn("SerializeCanonicalRDFProperty", "XMPMeta-Serialize.cpp", 637, "propForm & kXMP_PropValueIsStruct");
}

uint64_t DumpClearString(uint64_t result, uint64_t (*a2)(uint64_t, unsigned __int8 *, uint64_t), uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  *__str = 0;
  v19 = 0;
  v20 = 0;
  v4 = *(result + 23);
  v5 = v4;
  v6 = result + v4;
  if (v5 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = *result + *(result + 8);
  }

  if (v5 >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v8 < v7)
  {
    result = 0;
    v10 = v8;
    do
    {
      do
      {
        if (*v10 <= 31 && (*v10 - 9) > 1u)
        {
          break;
        }

        ++v10;
      }

      while (v10 < v7);
      if (v8 != v10)
      {
        result = a2(a3, v8, (v10 - v8));
      }

      if (result)
      {
        break;
      }

      if (v10 >= v7)
      {
LABEL_32:
        result = 0;
      }

      else
      {
        v12 = v7 - v10;
        v13 = 1;
        while (1)
        {
          if (*v10 > 31 || *v10 - 9 < 2)
          {
            if (v13)
            {
              goto LABEL_32;
            }

            goto LABEL_34;
          }

          v15 = (v13 & 1) != 0 ? 60 : 32;
          v17 = v15;
          result = a2(a3, &v17, 1);
          if (result)
          {
            break;
          }

          snprintf(__str, 0x14uLL, "%.2X", *v10);
          v16 = strlen(__str);
          result = a2(a3, __str, v16);
          if (result)
          {
            return result;
          }

          v13 = 0;
          ++v10;
          if (!--v12)
          {
            goto LABEL_34;
          }
        }

        if (v13)
        {
          goto LABEL_35;
        }

LABEL_34:
        result = a2(a3, ">", 1);
        if (result)
        {
          return result;
        }
      }

LABEL_35:
      v8 = v10;
    }

    while (v10 < v7);
  }

  return result;
}

void XMP_NamespaceTable::XMP_NamespaceTable(XMP_NamespaceTable *this, const XMP_NamespaceTable *a2)
{
  *this = &unk_1EF4FD088;
  XMP_ReadWriteLock::XMP_ReadWriteLock((this + 8));
  *(this + 31) = 0;
  *(this + 30) = this + 248;
  *(this + 28) = 0;
  *(this + 27) = this + 224;
  *(this + 29) = 0;
  *(this + 32) = 0;
  v4 = (a2 + 8);
  XMP_ReadWriteLock::Acquire((a2 + 8), 0);
  if (this != a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(this + 27, *(a2 + 27), a2 + 28);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(this + 30, *(a2 + 30), a2 + 31);
  }

  XMP_AutoLock::~XMP_AutoLock(&v4);
}

void sub_18617841C(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v3, *v5);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v2, *v4);
  XMP_ReadWriteLock::~XMP_ReadWriteLock(v1);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string,std::string>::pair[abi:fe200100]<std::string&,std::string&,0>(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_1861784D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          std::string::operator=((v8 + 7), (v9 + 7));
          v16 = 0;
          leaf_high = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_leaf_high(v5, &v16, v15 + 4);
          std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__insert_node_at(v5, v16, leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:fe200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_multi<std::pair<std::string const,std::string> const&>(v5);
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_leaf_high(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!std::less<std::string>::operator()[abi:fe200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:fe200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1, v2);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_multi<std::pair<std::string const,std::string> const&>(uint64_t **a1)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string const,std::string> const&>();
}

void sub_186178824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:fe200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:fe200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:fe200100]<std::pair<std::string const,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::string>::pair[abi:fe200100](std::string *this, __int128 *a2)
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

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_186178974(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::pair<std::string const,std::string>::pair[abi:fe200100]<std::string,std::string,0>(std::string *this, __int128 *a2)
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

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_186178A08(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void XMP_ReadWriteLock::Acquire()
{
  __assert_rtn("Acquire", "XMP_LibUtils.cpp", 92, "! this->beingWritten");
}

{
  __assert_rtn("Acquire", "XMP_LibUtils.cpp", 88, "this->lockCount == 0");
}

uint64_t *AdobeXMPCommon::IError_v1::MakeShared@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  if (this)
  {
    operator new();
  }

  *a1 = 0;
  a1[1] = 0;
  return this;
}

void AdobeXMPCommon::IErrorProxy::~IErrorProxy(AdobeXMPCommon::IErrorProxy *this)
{
}

{

  JUMPOUT(0x186602850);
}

uint64_t *AdobeXMPCommon::IErrorProxy::GetNextError@<X0>(AdobeXMPCommon::IErrorProxy *this@<X0>, uint64_t *a2@<X8>)
{
  v6 = 0;
  v3 = (*(**(this + 1) + 256))(*(this + 1), &v6);
  if (v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v6, exception);
  }

  return AdobeXMPCommon::IError_v1::MakeShared(a2, v3);
}

uint64_t *AdobeXMPCommon::IErrorProxy::SetNextError@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v9 = 0;
  v4 = *(a1 + 8);
  if (*a2)
  {
    v5 = (*(**a2 + 200))(*a2);
  }

  else
  {
    v5 = 0;
  }

  v6 = (*(*v4 + 264))(v4, v5, &v9);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v9, exception);
  }

  return AdobeXMPCommon::IError_v1::MakeShared(a3, v6);
}

uint64_t AdobeXMPCommon::IErrorProxy::GetInterfacePointer(AdobeXMPCommon::IErrorProxy *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 1);
  if (v3)
  {
    v4 = v3 + *(*v3 - 64);
  }

  else
  {
    v4 = 0;
  }

  return AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IVersionable,void *,void *,unsigned long long,unsigned int>(v4, AdobeXMPCommon::IVersionable::getInterfacePointer, 0, a2, a3);
}

void virtual thunk toAdobeXMPCommon::IErrorProxy::~IErrorProxy(AdobeXMPCommon::IErrorProxy *this)
{
}

{

  JUMPOUT(0x186602850);
}

uint64_t virtual thunk toAdobeXMPCommon::IErrorProxy::GetInterfacePointer(AdobeXMPCommon::IErrorProxy *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + *(*this - 32) + 8);
  if (v3)
  {
    v4 = v3 + *(*v3 - 64);
  }

  else
  {
    v4 = 0;
  }

  return AdobeXMPCommon::CallSafeFunction<AdobeXMPCommon::IVersionable,void *,void *,unsigned long long,unsigned int>(v4, AdobeXMPCommon::IVersionable::getInterfacePointer, 0, a2, a3);
}

void AdobeXMPCommon::IErrorProxy::~IErrorProxy(AdobeXMPCommon::IErrorProxy *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 304)) = a2[1];
  *(this + *(*this - 56)) = a2[2];
  *(this + *(*this - 64)) = a2[3];
  v3 = *(this + 1) + *(**(this + 1) - 56);
  (*(*v3 + 8))(v3);
}

uint64_t AdobeXMPCommon::CallConstSafeFunction<AdobeXMPCommon::IError_v1,unsigned int,unsigned int>(uint64_t a1, uint64_t (*a2)(void *, AdobeXMPCommon::IError_v1 **), uint64_t a3)
{
  v3 = a2;
  v7 = 0;
  v4 = (a1 + (a3 >> 1));
  if (a3)
  {
    v3 = *(*v4 + a2);
  }

  result = v3(v4, &v7);
  if (v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v7, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::CallConstSafeFunction<AdobeXMPCommon::IError_v1,AdobeXMPCommon::IError_v1::eErrorDomain,unsigned int>(uint64_t a1, uint64_t (*a2)(void *, AdobeXMPCommon::IError_v1 **), uint64_t a3)
{
  v3 = a2;
  v7 = 0;
  v4 = (a1 + (a3 >> 1));
  if (a3)
  {
    v3 = *(*v4 + a2);
  }

  result = v3(v4, &v7);
  if (v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v7, exception);
  }

  return result;
}

uint64_t AdobeXMPCommon::CallConstSafeFunction<AdobeXMPCommon::IError_v1,AdobeXMPCommon::IError_v1::eErrorSeverity,unsigned int>(uint64_t a1, uint64_t (*a2)(void *, AdobeXMPCommon::IError_v1 **), uint64_t a3)
{
  v3 = a2;
  v7 = 0;
  v4 = (a1 + (a3 >> 1));
  if (a3)
  {
    v3 = *(*v4 + a2);
  }

  LODWORD(result) = v3(v4, &v7);
  if (v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v7, exception);
  }

  return result;
}

double AdobeXMPCommon::CallConstSafeFunctionReturningPointer<AdobeXMPCommon::IError_v1,AdobeXMPCommon::IUTF8String_v1 const*,AdobeXMPCommon::IUTF8String_v1 const>@<D0>(uint64_t a1@<X0>, uint64_t (*a2)(void *, AdobeXMPCommon::IError_v1 **)@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v4 = a2;
  v10 = 0;
  v6 = (a1 + (a3 >> 1));
  if (a3)
  {
    v4 = *(*v6 + a2);
  }

  v7 = v4(v6, &v10);
  if (v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v10, exception);
  }

  AdobeXMPCommon::IUTF8String_v1::MakeShared(v7, &v11);
  result = *&v11;
  *a4 = v11;
  return result;
}

double AdobeXMPCommon::CallConstSafeFunctionReturningPointer<AdobeXMPCommon::IError_v1,AdobeXMPCommon::IUTF8String_v1 const*,AdobeXMPCommon::IUTF8String_v1 const,unsigned long long>@<D0>(uint64_t a1@<X0>, uint64_t (*a2)(void *, uint64_t, AdobeXMPCommon::IError_v1 **)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v5 = a2;
  v11 = 0;
  v7 = (a1 + (a3 >> 1));
  if (a3)
  {
    v5 = *(*v7 + a2);
  }

  v8 = v5(v7, a4, &v11);
  if (v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    AdobeXMPCommon::IError_v1::MakeShared(v11, exception);
  }

  AdobeXMPCommon::IUTF8String_v1::MakeShared(v8, &v12);
  result = *&v12;
  *a5 = v12;
  return result;
}

void std::shared_ptr<AdobeXMPCommon::IError_v1>::shared_ptr[abi:fe200100]<AdobeXMPCommon::IErrorProxy,0>(void *a1, void *a2)
{
  if (a2)
  {
    v2 = a2 + *(*a2 - 304);
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
  operator new();
}

void sub_186179B34(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::shared_ptr[abi:fe200100]<AdobeXMPCommon::IUTF8StringProxy,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<AdobeXMPCommon::IErrorProxy *,std::shared_ptr<AdobeXMPCommon::IError_v1>::__shared_ptr_default_delete<AdobeXMPCommon::IError_v1,AdobeXMPCommon::IErrorProxy>,std::allocator<AdobeXMPCommon::IErrorProxy>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCommon::IErrorProxy *,std::shared_ptr<AdobeXMPCommon::IError_v1>::__shared_ptr_default_delete<AdobeXMPCommon::IError_v1,AdobeXMPCommon::IErrorProxy>,std::allocator<AdobeXMPCommon::IErrorProxy>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCommon::IErrorProxy *,std::shared_ptr<AdobeXMPCommon::IError_v1>::__shared_ptr_default_delete<AdobeXMPCommon::IError_v1,AdobeXMPCommon::IErrorProxy>,std::allocator<AdobeXMPCommon::IErrorProxy>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *AdobeXMPCore_Int::IPath_I::GetInterfacePointerInternal(void *this, uint64_t a2, int a3, int a4)
{
  if (a2 == 0x6350617468202020)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x6350617468202020, a3, exception);
      }

      return (this + *(*this - 200));
    }
  }

  else
  {
    if (a4)
    {
      v5 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x6350617468202020, a2, v5);
    }

    return 0;
  }

  return this;
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IPath_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t AdobeXMPCore_Int::IPath_I::registerNameSpacePrefixMap(AdobeXMPCore_Int::IPath_I *this, const AdobeXMPCore::INameSpacePrefixMap_v1 *a2, const AdobeXMPCommon::IError_v1 **a3)
{
  v5 = *(*this - 200);
  AdobeXMPCore::INameSpacePrefixMap_v1::MakeShared(&v9, a2, a2);
  v8 = v9;
  v6 = AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IPath_v1,AdobeXMPCore::INameSpacePrefixMap_v1 const*,AdobeXMPCore::INameSpacePrefixMap_v1 const,std::shared_ptr<AdobeXMPCore::INameSpacePrefixMap_v1 const> const&>(a3, this + v5, AdobeXMPCore::IPath_v1::RegisterNameSpacePrefixMap, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/IPath_I.cpp", 54, &v8);
  if (*(&v8 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v8 + 1));
  }

  return v6;
}

void sub_186179FC0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IPath_v1,AdobeXMPCore::INameSpacePrefixMap_v1 const*,AdobeXMPCore::INameSpacePrefixMap_v1 const,std::shared_ptr<AdobeXMPCore::INameSpacePrefixMap_v1 const> const&>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v11 = 0;
  v12 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  a3(&v11, v7, a7);
  if (v11)
  {
    v8 = (*(*&v11[*(*v11 - 56)] + 16))(&v11[*(*v11 - 56)]);
    (*(*v8 + 40))(v8);
    v9 = (*(*&v11[*(*v11 - 64)] + 16))(&v11[*(*v11 - 64)], 0x634E5350724D6170, 1);
  }

  else
  {
    v9 = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  return v9;
}

void sub_18617A148(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18617A12CLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::IPath_I::serialize(AdobeXMPCore_Int::IPath_I *this, const AdobeXMPCore::INameSpacePrefixMap_v1 *a2, const AdobeXMPCommon::IError_v1 **a3)
{
  v5 = *(*this - 200);
  AdobeXMPCore::INameSpacePrefixMap_v1::MakeShared(&v9, a2, a2);
  v8 = v9;
  v6 = AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IPath_v1,AdobeXMPCommon::IUTF8String_v1 *,AdobeXMPCommon::IUTF8String_v1,std::shared_ptr<AdobeXMPCore::INameSpacePrefixMap_v1 const> const&>(a3, this + v5, AdobeXMPCore::IPath_v1::Serialize, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/IPath_I.cpp", 59, &v8);
  if (*(&v8 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v8 + 1));
  }

  return v6;
}

void sub_18617A3A0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IPath_v1,AdobeXMPCommon::IUTF8String_v1 *,AdobeXMPCommon::IUTF8String_v1,std::shared_ptr<AdobeXMPCore::INameSpacePrefixMap_v1 const> const&>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v11 = 0;
  v12 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  a3(&v11, v7, a7);
  if (v11)
  {
    v8 = (*(*&v11[*(*v11 - 56)] + 16))(&v11[*(*v11 - 56)]);
    (*(*v8 + 40))(v8);
    v9 = (*(*&v11[*(*v11 - 64)] + 16))(&v11[*(*v11 - 64)], 0x6E55544638537472, 1);
  }

  else
  {
    v9 = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  return v9;
}

void sub_18617A528(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18617A50CLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

void AdobeXMPCore_Int::IPath_I::appendPathSegment(AdobeXMPCore_Int::IPath_I *this, const AdobeXMPCore::IPathSegment_v1 *a2, const AdobeXMPCommon::IError_v1 **a3)
{
  v5 = *(*this - 200);
  AdobeXMPCore::IPathSegment_v1::MakeShared(a2, a2, &v7);
  v6 = v7;
  AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::IPath_v1,std::shared_ptr<AdobeXMPCore::IPathSegment_v1 const> const&>(a3, this + v5, AdobeXMPCore::IPath_v1::AppendPathSegment, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/IPath_I.cpp", 64, &v6);
  if (*(&v6 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v6 + 1));
  }
}

void sub_18617A778(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::IPath_v1,std::shared_ptr<AdobeXMPCore::IPathSegment_v1 const> const&>(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  return a3(v7, a7);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IPath_v1,AdobeXMPCore::IPathSegment_v1 const*,AdobeXMPCore::IPathSegment_v1 const,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v11 = 0;
  v12 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  a3(&v11, v7, a7);
  if (v11)
  {
    v8 = (*(*&v11[*(*v11 - 56)] + 16))(&v11[*(*v11 - 56)]);
    (*(*v8 + 40))(v8);
    v9 = (*(*&v11[*(*v11 - 64)] + 16))(&v11[*(*v11 - 64)], 0x6350617468536567, 1);
  }

  else
  {
    v9 = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  return v9;
}

void sub_18617AAB8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18617AA9CLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IPath_v1,AdobeXMPCore::IPathSegment_v1 const*,AdobeXMPCore::IPathSegment_v1 const,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v11 = 0;
  v12 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  a3(&v11, v7, a7);
  if (v11)
  {
    v8 = (*(*&v11[*(*v11 - 56)] + 16))(&v11[*(*v11 - 56)]);
    (*(*v8 + 40))(v8);
    v9 = (*(*&v11[*(*v11 - 64)] + 16))(&v11[*(*v11 - 64)], 0x6350617468536567, 1);
  }

  else
  {
    v9 = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  return v9;
}

void sub_18617AE34(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18617AE18);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IPath_v1,AdobeXMPCore::IPath_v1*,AdobeXMPCore::IPath_v1,unsigned long long,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  *a1 = 0;
  v13 = 0;
  v14 = 0;
  v9 = (a2 + (a4 >> 1));
  if (a4)
  {
    v8 = *(*v9 + a3);
  }

  v8(&v13, v9, a7, a8);
  if (v13)
  {
    v10 = (*(*&v13[*(*v13 - 56)] + 16))(&v13[*(*v13 - 56)]);
    (*(*v10 + 40))(v10);
    v11 = (*(*&v13[*(*v13 - 64)] + 16))(&v13[*(*v13 - 64)], 0x6350617468202020, 1);
  }

  else
  {
    v11 = 0;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  return v11;
}

void sub_18617B1BC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18617B1A0);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

std::string *XIO::SplitLeafName(std::string *this, std::string *a2)
{
  v3 = this;
  v4 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v4 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
    if (!size)
    {
LABEL_9:
      std::string::erase(a2, 0, 0xFFFFFFFFFFFFFFFFLL);
      v8 = v3;
      v9 = 0;
LABEL_44:

      return std::string::erase(v8, v9, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (!*(&this->__r_.__value_.__s + 23))
    {
      goto LABEL_9;
    }
  }

  v6 = size - 1;
  if (size == 1)
  {
    v7 = this;
    if ((v4 & 0x80000000) != 0)
    {
      v7 = this->__r_.__value_.__r.__words[0];
    }

    if (v7->__r_.__value_.__s.__data_[0] == 47)
    {
      goto LABEL_9;
    }
  }

  if ((v4 & 0x80000000) != 0)
  {
    v10 = this->__r_.__value_.__l.__size_;
  }

  else
  {
    v10 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (v10 < v6)
  {
LABEL_47:
    __break(1u);
    return this;
  }

  v11 = this;
  if ((v4 & 0x80000000) != 0)
  {
    v11 = this->__r_.__value_.__r.__words[0];
  }

  if (v11->__r_.__value_.__s.__data_[v6] == 47)
  {
    this = std::string::erase(this, v6, 0xFFFFFFFFFFFFFFFFLL);
    LOBYTE(v4) = *(&v3->__r_.__value_.__s + 23);
  }

  v12 = size - 2;
  if (v12)
  {
    while (1)
    {
      v13 = v4;
      if ((v4 & 0x80) != 0)
      {
        v13 = v3->__r_.__value_.__l.__size_;
      }

      if (v13 < v12)
      {
        goto LABEL_47;
      }

      v14 = v3;
      if ((v4 & 0x80) != 0)
      {
        v14 = v3->__r_.__value_.__r.__words[0];
      }

      v15 = v14->__r_.__value_.__s.__data_[v12];
      v16 = v15 == 47;
      v17 = v15 != 47;
      if (!v16)
      {
        if (--v12)
        {
          continue;
        }
      }

      if ((v4 & 0x80) != 0)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }
  }

  v17 = 1;
  if ((v4 & 0x80) != 0)
  {
LABEL_29:
    v18 = v3->__r_.__value_.__l.__size_;
  }

  else
  {
LABEL_27:
    v18 = v4;
  }

  if (v18 < v12)
  {
    goto LABEL_47;
  }

  v19 = v3;
  if ((v4 & 0x80) != 0)
  {
    v19 = v3->__r_.__value_.__r.__words[0];
  }

  if (v19->__r_.__value_.__s.__data_[v12] == 47)
  {
    v20 = v12 + 1;
    if ((v4 & 0x80) != 0)
    {
      v21 = v3->__r_.__value_.__l.__size_;
    }

    else
    {
      v21 = v4;
    }

    if (v21 >= v20)
    {
      v25 = v3;
      if ((v4 & 0x80) != 0)
      {
        v25 = v3->__r_.__value_.__r.__words[0];
      }

      MEMORY[0x186602520](a2, v25 + v20);
      v8 = v3;
      v9 = v12;
      goto LABEL_44;
    }

    goto LABEL_47;
  }

  if (v17)
  {
    this = std::string::erase(a2, 0, 0xFFFFFFFFFFFFFFFFLL);
    v22 = a2->__r_.__value_.__r.__words[2];
    v23 = *&a2->__r_.__value_.__l.__data_;
    v24 = v3->__r_.__value_.__r.__words[2];
    *&a2->__r_.__value_.__l.__data_ = *&v3->__r_.__value_.__l.__data_;
    a2->__r_.__value_.__r.__words[2] = v24;
    *&v3->__r_.__value_.__l.__data_ = v23;
    v3->__r_.__value_.__r.__words[2] = v22;
  }

  return this;
}

std::string *XIO::SplitFileExtension(std::string *a1, std::string *this, int a3)
{
  result = std::string::erase(this, 0, 0xFFFFFFFFFFFFFFFFLL);
  v7 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v7 < 0)
  {
    size = a1->__r_.__value_.__l.__size_;
    if (!size)
    {
      return result;
    }
  }

  else
  {
    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (!*(&a1->__r_.__value_.__s + 23))
    {
      return result;
    }
  }

  v9 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  v10 = size - 1;
  do
  {
    v11 = v10;
    if (!v10)
    {
      break;
    }

    v12 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if ((v7 & 0x80000000) != 0)
    {
      v12 = a1->__r_.__value_.__l.__size_;
    }

    if (v12 < v11)
    {
      goto LABEL_49;
    }

    v13 = a1;
    if ((v7 & 0x80000000) != 0)
    {
      v13 = a1->__r_.__value_.__r.__words[0];
    }

    v14 = v13->__r_.__value_.__s.__data_[v11];
    v10 = v11 - 1;
  }

  while (v14 != 46);
  v15 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v7 & 0x80000000) != 0)
  {
    v15 = a1->__r_.__value_.__l.__size_;
  }

  if (v15 < v11)
  {
    goto LABEL_49;
  }

  v16 = a1;
  if ((v7 & 0x80000000) != 0)
  {
    v16 = a1->__r_.__value_.__r.__words[0];
  }

  if (v16->__r_.__value_.__s.__data_[v11] == 46)
  {
    if ((v7 & 0x80000000) != 0)
    {
      v9 = a1->__r_.__value_.__l.__size_;
    }

    if (v9 >= v11 + 1)
    {
      v17 = a1;
      if ((v7 & 0x80000000) != 0)
      {
        v17 = a1->__r_.__value_.__r.__words[0];
      }

      result = MEMORY[0x186602520](this, &v17->__r_.__value_.__l.__data_ + v11 + 1);
      if (!a3)
      {
        goto LABEL_46;
      }

      v18 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
      if ((v18 & 0x8000000000000000) != 0)
      {
        v18 = this->__r_.__value_.__l.__size_;
        if (!v18)
        {
LABEL_46:

          return std::string::erase(a1, v11, 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      else if (!*(&this->__r_.__value_.__s + 23))
      {
        goto LABEL_46;
      }

      v19 = 0;
      while (1)
      {
        v20 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
        v21 = v20 < 0 ? this->__r_.__value_.__l.__size_ : SHIBYTE(this->__r_.__value_.__r.__words[2]);
        if (v21 < v19)
        {
          break;
        }

        v22 = this;
        if ((v20 & 0x80000000) != 0)
        {
          v22 = this->__r_.__value_.__r.__words[0];
        }

        if (v22->__r_.__value_.__s.__data_[v19] - 65 <= 0x19)
        {
          if ((v20 & 0x80000000) != 0)
          {
            v23 = this->__r_.__value_.__l.__size_;
          }

          else
          {
            v23 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
          }

          if (v23 < v19)
          {
            break;
          }

          v24 = this;
          if ((v20 & 0x80000000) != 0)
          {
            v24 = this->__r_.__value_.__r.__words[0];
          }

          v24->__r_.__value_.__s.__data_[v19] += 32;
        }

        if (v18 == ++v19)
        {
          goto LABEL_46;
        }
      }
    }

LABEL_49:
    __break(1u);
  }

  return result;
}

void XIO::Copy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6, a7);
  v21 = *MEMORY[0x1E69E9840];
  if (v9 >= 1)
  {
    v12 = v11;
    v13 = v10;
    v14 = v9;
    v15 = v8;
    v16 = v7;
    bzero(v20, 0x10000uLL);
    do
    {
      if (v13 && v13(v12))
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 12;
        exception[1] = "XIO::Copy, user abort";
        *(exception + 16) = 0;
      }

      if (v14 >= 0x10000)
      {
        v17 = 0x10000;
      }

      else
      {
        v17 = v14;
      }

      (**v16)(v16, v20, v17, 1);
      (*(*v15 + 8))(v15, v20, v17);
      v18 = v14 <= v17;
      v14 -= v17;
    }

    while (!v18);
  }
}

uint64_t XMP_ProgressTracker::XMP_ProgressTracker(uint64_t result, __int128 *a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 1065353216;
  *(result + 28) = 0;
  *(result + 32) = 0;
  *(result + 36) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  if (*(a2 + 1))
  {
    if (!*a2)
    {
      XMP_ProgressTracker::XMP_ProgressTracker();
    }

    v2 = *a2;
    *(result + 13) = *(a2 + 13);
    *result = v2;
    if (*(result + 24) < 0.0)
    {
      *(result + 24) = 1065353216;
    }
  }

  return result;
}

void XMP_ProgressTracker::BeginWork(XMP_ProgressTracker *this, float a2)
{
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  *(this + 9) = a2;
  *(this + 10) = 0;
  *(this + 32) = 1;
  v3 = PerfUtils::NoteThisMoment();
  *(this + 6) = v3;
  *(this + 7) = v3;
  if (*(this + 28) == 1)
  {

    XMP_ProgressTracker::NotifyClient(this, 1, v4, v5, v6);
  }
}

void XMP_ProgressTracker::NotifyClient(XMP_ProgressTracker *this, int a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6 = *(this + 1);
  if (v6)
  {
    v7 = *this;
    if (!*this)
    {
      XMP_ProgressTracker::NotifyClient();
    }

    if (*(this + 9) < 0.0 || (v8 = *(this + 10), v8 < 0.0) || *(this + 6) < 0.0)
    {
      XMP_ProgressTracker::NotifyClient();
    }

    if (a2)
    {
      if (v8 <= 0.0)
      {
        a3.n128_u64[0] = 0;
        a4.n128_u64[0] = 0;
      }

      else
      {
        v9 = *(this + 6);
        v10 = PerfUtils::NoteThisMoment();
        a3.n128_f64[0] = PerfUtils::GetElapsedSeconds(v9, v10);
        a3.n128_f32[0] = a3.n128_f64[0];
        v7 = *this;
        v6 = *(this + 1);
        a4.n128_u32[0] = 1.0;
      }

      v15 = *(this + 2);
      a5.n128_u64[0] = 0;
    }

    else
    {
      v11 = PerfUtils::NoteThisMoment();
      a3.n128_f64[0] = PerfUtils::GetElapsedSeconds(*(this + 7), v11);
      a3.n128_f32[0] = a3.n128_f64[0];
      if (*(this + 6) > a3.n128_f32[0])
      {
        return;
      }

      v12 = *(this + 9);
      a5.n128_u64[0] = 0;
      if (v12 <= 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v13 = *(this + 10);
        v14 = 0.0;
        if (v13 > 0.0)
        {
          if ((v13 / v12) <= 1.0)
          {
            v14 = v13 / v12;
          }

          else
          {
            v14 = 1.0;
          }

          a3.n128_f64[0] = PerfUtils::GetElapsedSeconds(*(this + 6), v11);
          a3.n128_f32[0] = a3.n128_f64[0];
          a5.n128_f32[0] = (1.0 - v14) * (a3.n128_f32[0] / v14);
        }
      }

      *(this + 7) = v11;
      v7 = *this;
      v6 = *(this + 1);
      v15 = *(this + 2);
      a4.n128_f32[0] = v14;
    }

    if (!v7(v6, v15, a3, a4, a5))
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 16;
      exception[1] = "Abort signaled by progress reporting callback";
      *(exception + 16) = 0;
    }
  }
}

float XMP_ProgressTracker::AddTotalWork(XMP_ProgressTracker *this, float a2)
{
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  result = a2 + *(this + 9);
  *(this + 9) = result;
  return result;
}

float XMP_ProgressTracker::AddWorkDone(XMP_ProgressTracker *this, __n128 a2, __n128 a3, __n128 a4)
{
  a3.n128_u32[1] = 0;
  if (a2.n128_f32[0] < 0.0)
  {
    a2.n128_f32[0] = 0.0;
  }

  a3.n128_u32[0] = *(this + 10);
  a2.n128_f32[0] = a2.n128_f32[0] + a3.n128_f32[0];
  *(this + 10) = a2.n128_u32[0];
  XMP_ProgressTracker::NotifyClient(this, 0, a2, a3, a4);
  return result;
}

void XMP_ProgressTracker::WorkComplete(XMP_ProgressTracker *this, __n128 _Q0, __n128 a3, __n128 a4)
{
  _Q0.n128_u32[0] = *(this + 9);
  if (_Q0.n128_f32[0] == 0.0)
  {
    __asm { FMOV            V0.2S, #1.0 }

    *(this + 36) = _Q0.n128_u64[0];
  }

  else
  {
    *(this + 10) = _Q0.n128_u32[0];
    if (_Q0.n128_f32[0] <= 0.0)
    {
      XMP_ProgressTracker::WorkComplete();
    }
  }

  XMP_ProgressTracker::NotifyClient(this, *(this + 28), _Q0, a3, a4);
  *(this + 32) = 0;
}

void XMP_ProgressTracker::NotifyClient()
{
  __assert_rtn("NotifyClient", "XMP_ProgressTracker.cpp", 126, "(this->totalWork >= 0.0) && (this->workDone >= 0.0) && (this->cbInfo.interval >= 0.0)");
}

{
  __assert_rtn("NotifyClient", "XMP_ProgressTracker.cpp", 125, "this->cbInfo.wrapperProc != 0");
}

void sub_18617C15C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AdobeXMPCore_Int::RDFDOMSerializerImpl::ValidateValue(uint64_t a1, void *a2, int a3, void *a4)
{
  if (*a2 == qword_1EA8DB710 && (a3 != 2 || (*a4 <= 0x20uLL ? (v4 = ((1 << *a4) & 0x100010100) == 0) : (v4 = 1), v4)))
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

uint64_t virtual thunk toAdobeXMPCore_Int::RDFDOMSerializerImpl::ValidateValue(uint64_t a1, void *a2, int a3, void *a4)
{
  if (*a2 == qword_1EA8DB710 && (a3 != 2 || (*a4 <= 0x20uLL ? (v4 = ((1 << *a4) & 0x100010100) == 0) : (v4 = 1), v4)))
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

void AdobeXMPCore_Int::RDFDOMSerializerImpl::SerializeInternal(void x0_0, void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = 0;
  v9 = 0;
  AdobeXMPCore_Int::IMetadataConverterUtils_I::convertIMetadatatoXMPMeta(a1, a2, a7);
}

void sub_18617C348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::RDFDOMSerializerImpl::~RDFDOMSerializerImpl(AdobeXMPCore_Int::RDFDOMSerializerImpl *this)
{
  AdobeXMPCore_Int::DOMSerializerImpl::~DOMSerializerImpl((this + 8), off_1EF500080);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 88), off_1EF500160);
  AdobeXMPCore_Int::ConfigurableImpl::~ConfigurableImpl((this + 32), off_1EF500148);
}

{
  AdobeXMPCore_Int::RDFDOMSerializerImpl::~RDFDOMSerializerImpl(this);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::RDFDOMSerializerImpl::~RDFDOMSerializerImpl(void *a1)
{
  AdobeXMPCore_Int::RDFDOMSerializerImpl::~RDFDOMSerializerImpl((a1 + *(*a1 - 208)));
}

{
  AdobeXMPCore_Int::RDFDOMSerializerImpl::~RDFDOMSerializerImpl((a1 + *(*a1 - 208)));

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::RDFDOMSerializerImpl::~RDFDOMSerializerImpl(AdobeXMPCore_Int::RDFDOMSerializerImpl *this)
{
  AdobeXMPCore_Int::RDFDOMSerializerImpl::~RDFDOMSerializerImpl((this + *(*this - 48)));
}

{
  AdobeXMPCore_Int::RDFDOMSerializerImpl::~RDFDOMSerializerImpl((this + *(*this - 48)));

  JUMPOUT(0x186602850);
}

uint64_t PSIR_MemoryReader::GetImgRsrc(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v3 = a1 + 32;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 == v3 || *(v6 + 32) > a2)
  {
    return 0;
  }

  if (a3)
  {
    v11 = *(v6 + 40);
    *(a3 + 16) = *(v6 + 56);
    *a3 = v11;
  }

  return 1;
}

void PSIR_MemoryReader::ParseMemoryResources(void **this, char *a2, unsigned int a3, char a4)
{
  if (*(this + 8) == 1)
  {
    free(this[2]);
  }

  v9 = this + 4;
  v8 = this[4];
  *(this + 8) = 0;
  this[2] = 0;
  *(this + 3) = 0;
  std::__tree<unsigned long long>::destroy((this + 3), v8);
  this[4] = 0;
  this[5] = 0;
  this[3] = this + 4;
  if (a3)
  {
    if (a4)
    {
      if (a3 >= 0x6400001)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 209;
        v27 = "Outrageous length for memory-based PSIR";
      }

      else
      {
        v10 = a3;
        v11 = malloc_type_malloc(a3, 0x100004077774924uLL);
        this[2] = v11;
        if (v11)
        {
          memcpy(v11, a2, a3);
          *(this + 8) = 1;
          a2 = this[2];
LABEL_10:
          *(this + 3) = a3;
          for (i = &a2[v10]; a2 <= i - 12; a2 = v15 + ((v17 + 1) & 0xFFFFFFFE))
          {
            v13 = &a2[((a2[6] + 2) & 0x1FE) + 6];
            if (v13 > i - 1)
            {
              break;
            }

            v16 = *v13;
            v15 = v13 + 1;
            v14 = v16;
            v17 = bswap32(v16);
            if (v17 > a3 || v15 > &i[-v17])
            {
              break;
            }

            if (*a2 == 1296646712)
            {
              v19 = bswap32(*(a2 + 2)) >> 16;
              v20 = v15 - *(this + 4);
              v21 = *v9;
              if (!*v9)
              {
                goto LABEL_26;
              }

              v22 = this + 4;
              do
              {
                v23 = *(v21 + 16);
                v24 = v23 >= v19;
                v25 = v23 < v19;
                if (v24)
                {
                  v22 = v21;
                }

                v21 = v21[v25];
              }

              while (v21);
              if (v22 != v9 && v19 >= *(v22 + 16))
              {
                if (v14)
                {
                  if (!*(v22 + 11))
                  {
                    *(v22 + 20) = v19;
                    *(v22 + 21) = 0;
                    *(v22 + 11) = v17;
                    v22[6] = v15;
                    *(v22 + 14) = v20;
                  }
                }
              }

              else
              {
LABEL_26:
                LOWORD(v28) = v19;
                DWORD2(v28) = v19;
                HIDWORD(v28) = v17;
                v29 = v15;
                v30 = v20;
                v31 = 0;
                std::__tree<std::__value_type<unsigned short,PSIR_Manager::ImgRsrcInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,PSIR_Manager::ImgRsrcInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,PSIR_Manager::ImgRsrcInfo>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,PSIR_Manager::ImgRsrcInfo>>(this + 3, this + 4, &v28, &v28);
              }
            }
          }

          return;
        }

        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 15;
        v27 = "Out of memory";
      }

      exception[1] = v27;
      *(exception + 16) = 0;
    }

    this[2] = a2;
    if (this[1])
    {
      PSIR_MemoryReader::ParseMemoryResources();
    }

    v10 = a3;
    goto LABEL_10;
  }
}

void PSIR_MemoryReader::SetImgRsrc(PSIR_MemoryReader *this, unsigned __int16 a2, const void *a3)
{
  exception = __cxa_allocate_exception(0x18uLL);
  *exception = 9;
  exception[1] = "Not appropriate for PSIR_Reader";
  *(exception + 16) = 0;
}

void PSIR_MemoryReader::DeleteImgRsrc(PSIR_MemoryReader *this)
{
  exception = __cxa_allocate_exception(0x18uLL);
  *exception = 9;
  exception[1] = "Not appropriate for PSIR_Reader";
  *(exception + 16) = 0;
}

void PSIR_MemoryReader::ParseFileResources()
{
  exception = __cxa_allocate_exception(0x18uLL);
  *exception = 9;
  exception[1] = "Not appropriate for PSIR_Reader";
  *(exception + 16) = 0;
}

uint64_t PSIR_MemoryReader::UpdateMemoryResources(PSIR_MemoryReader *this, void **a2)
{
  if (a2)
  {
    *a2 = *(this + 2);
  }

  return *(this + 3);
}

void PSIR_MemoryReader::UpdateFileResources()
{
  exception = __cxa_allocate_exception(0x18uLL);
  *exception = 9;
  exception[1] = "Not appropriate for PSIR_Reader";
  *(exception + 16) = 0;
}

void PSIR_MemoryReader::~PSIR_MemoryReader(void **this)
{
  PSIR_MemoryReader::~PSIR_MemoryReader(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF501808;
  if (*(this + 8) == 1)
  {
    free(this[2]);
  }

  std::__tree<unsigned long long>::destroy((this + 3), this[4]);
}

uint64_t std::__tree<std::__value_type<unsigned short,PSIR_Manager::ImgRsrcInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,PSIR_Manager::ImgRsrcInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,PSIR_Manager::ImgRsrcInfo>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,PSIR_Manager::ImgRsrcInfo>>(uint64_t **a1, uint64_t *a2, unsigned __int16 *a3, _OWORD *a4)
{
  v6 = 0;
  v7 = 0;
  v4 = *std::__tree<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,TIFF_FileWriter::InternalTagInfo>>>::__find_equal<unsigned short>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void WXMPUtils_ComposeArrayItemPath_1(char *a1, char *a2, int a3, uint64_t a4, void (*a5)(uint64_t, std::string *, uint64_t), void *a6)
{
  *a6 = 0;
  if (!a1 || !*a1)
  {
    v10 = "Empty schema namespace URI";
    v11 = 101;
    goto LABEL_18;
  }

  if (!a2 || !*a2)
  {
    v10 = "Empty array name";
    v11 = 102;
LABEL_18:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v11;
    exception[1] = v10;
    *(exception + 16) = 0;
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ComposeArrayItemPath(a1, a2, a3, &__p);
  if (a4)
  {
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
      v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = LODWORD(__p.__r_.__value_.__r.__words[1]);
    }

    a5(a4, p_p, v9);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_18617CB10(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 3)
  {
    v18 = __cxa_begin_catch(a1);
    *(v15 + 32) = *v18;
    v19 = *(v18 + 1);
    if (!v19)
    {
      v19 = "";
    }

    *v15 = v19;
    *(v15 + 8) = "XMP";
  }

  else
  {
    v20 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v15 + 32) = 13;
      v21 = (*(*v20 + 16))(v20);
      v22 = "";
      if (v21)
      {
        v22 = v21;
      }
    }

    else
    {
      *(v15 + 32) = 14;
      v22 = "Caught unknown exception";
    }

    *v15 = v22;
  }

  __cxa_end_catch();
  JUMPOUT(0x18617CAB8);
}

void WXMPUtils_ComposeStructFieldPath_1(char *a1, char *a2, char *a3, _BYTE *a4, uint64_t a5, void (*a6)(uint64_t, std::string *, uint64_t), void *a7)
{
  *a7 = 0;
  if (!a1 || !*a1)
  {
    v11 = "Empty schema namespace URI";
LABEL_23:
    v12 = 101;
    goto LABEL_26;
  }

  if (!a2 || !*a2)
  {
    v11 = "Empty struct name";
LABEL_25:
    v12 = 102;
LABEL_26:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v12;
    exception[1] = v11;
    *(exception + 16) = 0;
  }

  if (!a3 || !*a3)
  {
    v11 = "Empty field namespace URI";
    goto LABEL_23;
  }

  if (!a4 || !*a4)
  {
    v11 = "Empty field name";
    goto LABEL_25;
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ComposeStructFieldPath(a1, a2, a3, a4, &__p);
  if (a5)
  {
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
      v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v10 = LODWORD(__p.__r_.__value_.__r.__words[1]);
    }

    a6(a5, p_p, v10);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_18617CCEC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 3)
  {
    v18 = __cxa_begin_catch(a1);
    *(v15 + 32) = *v18;
    v19 = *(v18 + 1);
    if (!v19)
    {
      v19 = "";
    }

    *v15 = v19;
    *(v15 + 8) = "XMP";
  }

  else
  {
    v20 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v15 + 32) = 13;
      v21 = (*(*v20 + 16))(v20);
      v22 = "";
      if (v21)
      {
        v22 = v21;
      }
    }

    else
    {
      *(v15 + 32) = 14;
      v22 = "Caught unknown exception";
    }

    *v15 = v22;
  }

  __cxa_end_catch();
  JUMPOUT(0x18617CC7CLL);
}

void WXMPUtils_ConvertFromFloat_1(const char *a1, uint64_t a2, void (*a3)(uint64_t, std::string *, uint64_t), void *a4, double a5)
{
  *a4 = 0;
  if (!a1)
  {
    a1 = "";
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ConvertFromFloat(a1, &__p, a5);
  if (a2)
  {
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
      v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v8 = LODWORD(__p.__r_.__value_.__r.__words[1]);
    }

    a3(a2, p_p, v8);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_18617CE4C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 3)
  {
    v19 = __cxa_begin_catch(a1);
    *(v15 + 32) = *v19;
    v20 = *(v19 + 1);
    if (!v20)
    {
      v20 = v16;
    }

    *(v15 + 8) = "XMP";
  }

  else
  {
    v21 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v15 + 32) = 13;
      v22 = (*(*v21 + 16))(v21);
      if (v22)
      {
        v20 = v22;
      }

      else
      {
        v20 = v16;
      }
    }

    else
    {
      *(v15 + 32) = 14;
      v20 = "Caught unknown exception";
    }
  }

  *v15 = v20;
  __cxa_end_catch();
  JUMPOUT(0x18617CE38);
}

uint64_t WXMPUtils_ConvertToBool_1(XMPUtils *a1, uint64_t a2)
{
  *a2 = 0;
  if (!a1 || !*a1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = "Empty string value";
    *(exception + 16) = 0;
  }

  result = XMPUtils::ConvertToBool(a1, a2);
  *(a2 + 32) = result;
  return result;
}

void sub_18617CF64(void *a1, int a2)
{
  if (a2 == 3)
  {
    v4 = __cxa_begin_catch(a1);
    *(v2 + 32) = *v4;
    v5 = *(v4 + 1);
    if (!v5)
    {
      v5 = "";
    }

    *v2 = v5;
    *(v2 + 8) = "XMP";
  }

  else
  {
    v6 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v2 + 32) = 13;
      v7 = (*(*v6 + 16))(v6);
      v8 = "";
      if (v7)
      {
        v8 = v7;
      }
    }

    else
    {
      *(v2 + 32) = 14;
      v8 = "Caught unknown exception";
    }

    *v2 = v8;
  }

  __cxa_end_catch();
}

uint64_t WXMPUtils_ConvertToDate_1(char *a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = "Null output date";
    *(exception + 16) = 0;
  }

  return XMPUtils::ConvertToDate(a1, a2);
}

uint64_t WXMPUtils_ConvertToUTCTime_1(uint64_t a1, void *a2)
{
  *a2 = 0;
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = "Null output date";
    *(exception + 16) = 0;
  }

  return XMPUtils::ConvertToUTCTime(a1);
}

void WXMPUtils_PackageForJPEG_1(const std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void *, uint64_t), void *a6)
{
  *a6 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  memset(&v19, 0, sizeof(v19));
  memset(&__p, 0, sizeof(__p));
  v17 = &a1->__r_.__value_.__r.__words[2];
  XMP_ReadWriteLock::Acquire(&a1->__r_.__value_.__r.__words[2], 0);
  XMPUtils::PackageForJPEG(a1, &v20, &v19, &__p);
  if (a2)
  {
    if (v22 >= 0)
    {
      v11 = &v20;
    }

    else
    {
      v11 = v20;
    }

    if (v22 >= 0)
    {
      v12 = HIBYTE(v22);
    }

    else
    {
      v12 = v21;
    }

    a5(a2, v11, v12);
  }

  if (a3)
  {
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v19;
    }

    else
    {
      v13 = v19.__r_.__value_.__r.__words[0];
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = LODWORD(v19.__r_.__value_.__r.__words[1]);
    }

    a5(a3, v13, v14);
  }

  if (a4)
  {
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
      v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v16 = LODWORD(__p.__r_.__value_.__r.__words[1]);
    }

    a5(a4, p_p, v16);
  }

  XMP_AutoLock::~XMP_AutoLock(&v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v20);
  }
}

void sub_18617D398(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a2 == 3)
  {
    v30 = __cxa_begin_catch(a1);
    *(v27 + 32) = *v30;
    v31 = *(v30 + 1);
    if (!v31)
    {
      v31 = "";
    }

    *v27 = v31;
    *(v27 + 8) = "XMP";
  }

  else
  {
    v32 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v27 + 32) = 13;
      v33 = (*(*v32 + 16))(v32);
      v34 = "";
      if (v33)
      {
        v34 = v33;
      }
    }

    else
    {
      *(v27 + 32) = 14;
      v34 = "Caught unknown exception";
    }

    *v27 = v34;
  }

  __cxa_end_catch();
  JUMPOUT(0x18617D380);
}

void WXMPUtils_MergeFromJPEG_1(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  if (!a1)
  {
    v7 = "Output XMP pointer is null";
    goto LABEL_6;
  }

  if (a1 == a2)
  {
    v7 = "Full and extended XMP pointers match";
LABEL_6:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = v7;
    *(exception + 16) = 0;
  }

  v10 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  v9 = (a2 + 16);
  XMP_ReadWriteLock::Acquire((a2 + 16), 0);
  XMPUtils::MergeFromJPEG(a1, a2, v5, v6);
  XMP_AutoLock::~XMP_AutoLock(&v9);
  XMP_AutoLock::~XMP_AutoLock(&v10);
}

void sub_18617D54C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, XMP_ReadWriteLock *a10)
{
  XMP_AutoLock::~XMP_AutoLock(&a9);
  XMP_AutoLock::~XMP_AutoLock(&a10);
  if (a2 == 3)
  {
    v13 = __cxa_begin_catch(a1);
    *(v10 + 32) = *v13;
    v14 = *(v13 + 1);
    if (!v14)
    {
      v14 = "";
    }

    *v10 = v14;
    *(v10 + 8) = "XMP";
  }

  else
  {
    v15 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v10 + 32) = 13;
      v16 = (*(*v15 + 16))(v15);
      v17 = "";
      if (v16)
      {
        v17 = v16;
      }
    }

    else
    {
      *(v10 + 32) = 14;
      v17 = "Caught unknown exception";
    }

    *v10 = v17;
  }

  __cxa_end_catch();
  JUMPOUT(0x18617D4F8);
}

void WXMPUtils_CatenateArrayItems_1(uint64_t a1, char *a2, _BYTE *a3, char *a4, const char *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, std::string *, uint64_t), void *a9)
{
  *a9 = 0;
  if (!a2 || !*a2)
  {
    v21 = "Empty schema namespace URI";
    v22 = 101;
    goto LABEL_24;
  }

  if (!a3 || !*a3)
  {
    v21 = "Empty array name";
    v22 = 102;
LABEL_24:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v22;
    exception[1] = v21;
    *(exception + 16) = 0;
  }

  memset(&__p, 0, sizeof(__p));
  v24 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 0);
  if (a5)
  {
    v17 = a5;
  }

  else
  {
    v17 = "";
  }

  if (a4)
  {
    v18 = a4;
  }

  else
  {
    v18 = "; ";
  }

  XMPUtils::CatenateArrayItems(a1, a2, a3, v18, v17, a6, &__p);
  if (a7)
  {
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
      v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v20 = LODWORD(__p.__r_.__value_.__r.__words[1]);
    }

    a8(a7, p_p, v20);
  }

  XMP_AutoLock::~XMP_AutoLock(&v24);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_18617D780(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2 == 3)
  {
    v17 = __cxa_begin_catch(a1);
    *(v15 + 32) = *v17;
    v18 = *(v17 + 1);
    if (!v18)
    {
      v18 = "";
    }

    *v15 = v18;
    *(v15 + 8) = "XMP";
  }

  else
  {
    v19 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v15 + 32) = 13;
      v20 = (*(*v19 + 16))(v19);
      v21 = "";
      if (v20)
      {
        v21 = v20;
      }
    }

    else
    {
      *(v15 + 32) = 14;
      v21 = "Caught unknown exception";
    }

    *v15 = v21;
  }

  __cxa_end_catch();
  JUMPOUT(0x18617D71CLL);
}

void WXMPUtils_SeparateArrayItems_1(uint64_t a1, XMPMeta *a2, char *a3, const char *a4, char *a5, void *a6)
{
  *a6 = 0;
  if (!a1)
  {
    v13 = "Output XMP pointer is null";
    v14 = 4;
LABEL_13:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v14;
    exception[1] = v13;
    *(exception + 16) = 0;
  }

  if (!a2 || !*a2)
  {
    v13 = "Empty schema namespace URI";
    v14 = 101;
    goto LABEL_13;
  }

  if (!a3 || !*a3)
  {
    v13 = "Empty array name";
    v14 = 102;
    goto LABEL_13;
  }

  v16 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  if (a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = "";
  }

  XMPUtils::SeparateArrayItems(a1, a2, a3, a4, v12, v11);
  XMP_AutoLock::~XMP_AutoLock(&v16);
}

void sub_18617D950(void *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  XMP_AutoLock::~XMP_AutoLock(va);
  if (a2 == 3)
  {
    v7 = __cxa_begin_catch(a1);
    *(v4 + 32) = *v7;
    v8 = *(v7 + 1);
    if (!v8)
    {
      v8 = "";
    }

    *v4 = v8;
    *(v4 + 8) = "XMP";
  }

  else
  {
    v9 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v4 + 32) = 13;
      v10 = (*(*v9 + 16))(v9);
      v11 = "";
      if (v10)
      {
        v11 = v10;
      }
    }

    else
    {
      *(v4 + 32) = 14;
      v11 = "Caught unknown exception";
    }

    *v4 = v11;
  }

  __cxa_end_catch();
  JUMPOUT(0x18617D8E4);
}

void WXMPUtils_RemoveProperties_1(uint64_t a1, XMPMeta *a2, char *a3, const char *a4, void *a5)
{
  *a5 = 0;
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = "Output XMP pointer is null";
    *(exception + 16) = 0;
  }

  v12 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = "";
  }

  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = "";
  }

  XMPUtils::RemoveProperties(a1, v10, v9, a4);
  XMP_AutoLock::~XMP_AutoLock(&v12);
}

void sub_18617DAD4(void *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  XMP_AutoLock::~XMP_AutoLock(va);
  if (a2 == 3)
  {
    v7 = __cxa_begin_catch(a1);
    *(v4 + 32) = *v7;
    v8 = *(v7 + 1);
    if (!v8)
    {
      v8 = "";
    }

    *v4 = v8;
    *(v4 + 8) = "XMP";
  }

  else
  {
    v9 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v4 + 32) = 13;
      v10 = (*(*v9 + 16))(v9);
      v11 = "";
      if (v10)
      {
        v11 = v10;
      }
    }

    else
    {
      *(v4 + 32) = 14;
      v11 = "Caught unknown exception";
    }

    *v4 = v11;
  }

  __cxa_end_catch();
  JUMPOUT(0x18617DA88);
}

void WXMPUtils_DuplicateSubtree_1(uint64_t a1, uint64_t a2, XMPMeta *a3, char *a4, char *a5, char *a6, const char *a7, void *a8)
{
  *a8 = 0;
  if (!a2)
  {
    v15 = "Output XMP pointer is null";
    v16 = 4;
LABEL_18:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = v16;
    exception[1] = v15;
    *(exception + 16) = 0;
  }

  if (!a3 || !*a3)
  {
    v15 = "Empty source schema URI";
    v16 = 101;
    goto LABEL_18;
  }

  if (!a4 || !*a4)
  {
    v15 = "Empty source root name";
    v16 = 102;
    goto LABEL_18;
  }

  if (a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = a3;
  }

  if (a6)
  {
    v14 = a6;
  }

  else
  {
    v14 = a4;
  }

  v19 = 0;
  if (a1 != a2)
  {
    v19 = (a1 + 16);
    XMP_ReadWriteLock::Acquire((a1 + 16), 0);
  }

  v18 = (a2 + 16);
  XMP_ReadWriteLock::Acquire((a2 + 16), 1);
  XMPUtils::DuplicateSubtree(a1, a2, a3, a4, v13, v14, a7);
  XMP_AutoLock::~XMP_AutoLock(&v18);
  XMP_AutoLock::~XMP_AutoLock(&v19);
}

void sub_18617DCCC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2 == 3)
  {
    v12 = __cxa_begin_catch(a1);
    *(v10 + 32) = *v12;
    v13 = *(v12 + 1);
    if (!v13)
    {
      v13 = "";
    }

    *v10 = v13;
    *(v10 + 8) = "XMP";
  }

  else
  {
    v14 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v10 + 32) = 13;
      v15 = (*(*v14 + 16))(v14);
      v16 = "";
      if (v15)
      {
        v16 = v15;
      }
    }

    else
    {
      *(v10 + 32) = 14;
      v16 = "Caught unknown exception";
    }

    *v10 = v16;
  }

  __cxa_end_catch();
  JUMPOUT(0x18617DC5CLL);
}

void *AdobeXMPCore_Int::IStructureNode_I::GetInterfacePointerInternal(void *this, uint64_t a2, uint64_t a3, int a4)
{
  if (a2 == 0x635374724E6F6465)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        v8 = a3;
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x635374724E6F6465, v8, exception);
      }

      return (this + *(*this - 792));
    }
  }

  else
  {
    this = AdobeXMPCore_Int::ICompositeNode_I::GetInterfacePointerInternal((this + *(*this - 800)), a2, a3, 0);
    if (this)
    {
      v6 = 1;
    }

    else
    {
      v6 = a4 == 0;
    }

    if (!v6)
    {
      v7 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x635374724E6F6465, a2, v7);
    }
  }

  return this;
}

void *virtual thunk toAdobeXMPCore_Int::IStructureNode_I::GetInterfacePointer(AdobeXMPCore_Int::IStructureNode_I *this, uint64_t a2, uint64_t a3)
{
  return AdobeXMPCore_Int::IStructureNode_I::GetInterfacePointerInternal((this + *(*this - 32)), a2, a3, 1);
}

{
  return AdobeXMPCore_Int::IStructureNode_I::GetInterfacePointerInternal((this + *(*this - 720)), a2, a3, 1);
}

{
  return AdobeXMPCore_Int::IStructureNode_I::GetInterfacePointerInternal((this + *(*this - 600)), a2, a3, 1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IStructureNode_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t virtual thunk toAdobeXMPCore_Int::IStructureNode_I::getInterfacePointer(AdobeXMPCore_Int::IStructureNode_I *this, uint64_t a2, unsigned int a3, const AdobeXMPCommon::IError_v1 **a4)
{
  return AdobeXMPCore_Int::IStructureNode_I::getInterfacePointer((this + *(*this - 40)), a2, a3, a4);
}

{
  return AdobeXMPCore_Int::IStructureNode_I::getInterfacePointer((this + *(*this - 728)), a2, a3, a4);
}

{
  return AdobeXMPCore_Int::IStructureNode_I::getInterfacePointer((this + *(*this - 656)), a2, a3, a4);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IStructureNode_v1,AdobeXMPCore::INode_v1 *,AdobeXMPCore::INode_v1,char const*,unsigned long long,char const*,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a3;
  *a1 = 0;
  v15 = 0;
  v16 = 0;
  v11 = (a2 + (a4 >> 1));
  if (a4)
  {
    v10 = *(*v11 + a3);
  }

  (v10)(&v15, v11, a7, a8, a9, a10, a6);
  if (v15)
  {
    v12 = (*(*&v15[*(*v15 - 56)] + 16))(&v15[*(*v15 - 56)]);
    (*(*v12 + 40))(v12);
    v13 = (*(*&v15[*(*v15 - 64)] + 16))(&v15[*(*v15 - 64)], 0x634E6F6465202020, 1);
  }

  else
  {
    v13 = 0;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v16);
  }

  return v13;
}

void sub_18617E374(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18617E358);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCore::IStructureNode_v1,unsigned int,AdobeXMPCore::INode_v1::eNodeType,char const*,unsigned long long,char const*,unsigned long long>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a4;
  *a1 = 0;
  v12 = (a2 + (a5 >> 1));
  if (a5)
  {
    v11 = *(*v12 + a4);
  }

  return (v11)(v12, a8, a9, a10, a11, a6, a7);
}

void AdobeXMPCore_Int::IStructureNode_I::insertNode(AdobeXMPCore_Int::IStructureNode_I *this, AdobeXMPCore::INode_v1 *a2, const AdobeXMPCommon::IError_v1 **a3)
{
  v5 = *(*this - 792);
  AdobeXMPCore::INode_v1::MakeShared(&v6, a2, a2);
  AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::IStructureNode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&>(a3, this + v5, AdobeXMPCore::IStructureNode_v1::InsertNode, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/IStructureNode_I.cpp", 65, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v7);
  }
}

void sub_18617E800(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::IStructureNode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&>(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  return a3(v7, a7);
}

uint64_t AdobeXMPCore_Int::IStructureNode_I::replaceNode(AdobeXMPCore_Int::IStructureNode_I *this, AdobeXMPCore::INode_v1 *a2, const AdobeXMPCommon::IError_v1 **a3)
{
  v5 = *(*this - 792);
  AdobeXMPCore::INode_v1::MakeShared(&v8, a2, a2);
  v6 = AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IStructureNode_v1,AdobeXMPCore::INode_v1 *,AdobeXMPCore::INode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&>(a3, this + v5, AdobeXMPCore::IStructureNode_v1::ReplaceNode, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/IStructureNode_I.cpp", 75, &v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_18617EB00(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IStructureNode_v1,AdobeXMPCore::INode_v1 *,AdobeXMPCore::INode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v11 = 0;
  v12 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  a3(&v11, v7, a7);
  if (v11)
  {
    v8 = (*(*&v11[*(*v11 - 56)] + 16))(&v11[*(*v11 - 56)]);
    (*(*v8 + 40))(v8);
    v9 = (*(*&v11[*(*v11 - 64)] + 16))(&v11[*(*v11 - 64)], 0x634E6F6465202020, 1);
  }

  else
  {
    v9 = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  return v9;
}

void sub_18617EC88(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18617EC6CLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

void *AdobeXMPCore_Int::ICoreConfigurationManager_I::GetInterfacePointerInternal(void *this, uint64_t a2, int a3, int a4)
{
  if (a2 == 0x63436F6E664D6772)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x63436F6E664D6772, a3, exception);
      }

      return (this + *(*this - 152));
    }
  }

  else
  {
    this = AdobeXMPCore_Int::IConfigurationManager_I::GetInterfacePointerInternal((this + *(*this - 160)), a2, a3, 0);
    if (this)
    {
      v6 = 1;
    }

    else
    {
      v6 = a4 == 0;
    }

    if (!v6)
    {
      v7 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x63436F6E664D6772, a2, v7);
    }
  }

  return this;
}

void *virtual thunk toAdobeXMPCore_Int::ICoreConfigurationManager_I::GetInterfacePointer(AdobeXMPCore_Int::ICoreConfigurationManager_I *this, uint64_t a2, int a3)
{
  return AdobeXMPCore_Int::ICoreConfigurationManager_I::GetInterfacePointerInternal((this + *(*this - 32)), a2, a3, 1);
}

{
  return AdobeXMPCore_Int::ICoreConfigurationManager_I::GetInterfacePointerInternal((this + *(*this - 144)), a2, a3, 1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::ICoreConfigurationManager_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t virtual thunk toAdobeXMPCore_Int::ICoreConfigurationManager_I::getInterfacePointer(AdobeXMPCore_Int::ICoreConfigurationManager_I *this, uint64_t a2, unsigned int a3, const AdobeXMPCommon::IError_v1 **a4)
{
  return AdobeXMPCore_Int::ICoreConfigurationManager_I::getInterfacePointer((this + *(*this - 40)), a2, a3, a4);
}

{
  return AdobeXMPCore_Int::ICoreConfigurationManager_I::getInterfacePointer((this + *(*this - 152)), a2, a3, a4);
}

void *AdobeXMPCore_Int::IDOMParser_I::GetInterfacePointerInternal(void *this, uint64_t a2, int a3, int a4)
{
  if (a2 == 0x63444F4D50727372)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x63444F4D50727372, a3, exception);
      }

      return (this + *(*this - 304));
    }
  }

  else
  {
    if (a4)
    {
      v5 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x63444F4D50727372, a2, v5);
    }

    return 0;
  }

  return this;
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IDOMParser_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IDOMParser_v1,AdobeXMPCore::IDOMParser_v1*,AdobeXMPCore::IDOMParser_v1>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *), uint64_t a4)
{
  *a1 = 0;
  v8 = 0;
  v9 = 0;
  v4 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v4 + a3);
  }

  a3(&v8, v4);
  if (v8)
  {
    v5 = (*(*&v8[*(*v8 - 224)] + 16))(&v8[*(*v8 - 224)]);
    (*(*v5 + 40))(v5);
    v6 = (*(*&v8[*(*v8 - 232)] + 16))(&v8[*(*v8 - 232)], 0x63444F4D50727372, 1);
  }

  else
  {
    v6 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_18617F6E4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18617F6C8);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IDOMParser_v1,AdobeXMPCore::IMetadata_v1 *,AdobeXMPCore::IMetadata_v1,char const*,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  *a1 = 0;
  v13 = 0;
  v14 = 0;
  v9 = (a2 + (a4 >> 1));
  if (a4)
  {
    v8 = *(*v9 + a3);
  }

  v8(&v13, v9, a7, a8);
  if (v13)
  {
    v10 = (*(*&v13[*(*v13 - 56)] + 16))(&v13[*(*v13 - 56)]);
    (*(*v10 + 40))(v10);
    v11 = (*(*&v13[*(*v13 - 64)] + 16))(&v13[*(*v13 - 64)], 0x634D657461646174, 1);
  }

  else
  {
    v11 = 0;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  return v11;
}

void sub_18617FA70(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18617FA54);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

void AdobeXMPCore_Int::IDOMParser_I::parseWithSpecificAction(AdobeXMPCore_Int::IDOMParser_I *this, AdobeXMPCore::INode_v1 *a2, uint64_t a3, unsigned int a4, AdobeXMPCore::INode_v1 *a5, const AdobeXMPCommon::IError_v1 **a6)
{
  v11 = 0;
  v12 = 0;
  AdobeXMPCore::INode_v1::MakeShared(&v11, a5, a2);
  AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::IDOMParser_v1,char const*,unsigned long long,AdobeXMPCore::IDOMParser_v1::eActionType,std::shared_ptr<AdobeXMPCore::INode_v1> &>(a6, this + *(*this - 304), AdobeXMPCore::IDOMParser_v1::ParseWithSpecificAction, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/IDOMParser_I.cpp", 63, a2, a3, a4, &v11);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }
}

void sub_18617FCE4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::IDOMParser_v1,char const*,unsigned long long,AdobeXMPCore::IDOMParser_v1::eActionType,std::shared_ptr<AdobeXMPCore::INode_v1> &>(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t, void, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10)
{
  v10 = a3;
  *a1 = 0;
  v11 = (a2 + (a4 >> 1));
  if (a4)
  {
    v10 = *(*v11 + a3);
  }

  return (v10)(v11, a7, a8, a9, a10, a6);
}

void AdobeXMPCore_Int::MetadataImpl::MetadataImpl(AdobeXMPCore_Int::MetadataImpl *this)
{
  *(this + 26) = &unk_1EF506868;
  *this = &unk_1EF506090;
  *(this + 4) = off_1EF506338;
  *(this + unk_1EF506048) = &unk_1EF506398;
  *this = &unk_1EF505A48;
  *(this + unk_1EF505A08) = off_1EF505D50;
  *(this + *(*this - 72)) = &unk_1EF505DB0;
  *this = &unk_1EF505360;
  *(this + unk_1EF505328) = &unk_1EF505360;
  *(this + *(*this - 64)) = off_1EF5056A0;
  *(this + *(*this - 72)) = &unk_1EF505700;
  *(this + 23) = &unk_1EF509BF0;
  *(this + 10) = &unk_1EF5093F0;
  *this = &unk_1EF509860;
  *(this + 4) = off_1EF509A80;
  *(this + 26) = &unk_1EF509B68;
  *(this + unk_1EF5091C8 + 80) = &unk_1EF509AE0;
  *(this + *(*(this + 10) - 560) + 80) = &unk_1EF509B68;
  *(this + 9) = &unk_1EF508368;
  *this = &unk_1EF5088A0;
  *(this + 4) = off_1EF508B48;
  *(this + 26) = &unk_1EF509118;
  *(this + unk_1EF5080B0 + 72) = &unk_1EF508DF8;
  *(this + *(*(this + 9) - 704) + 72) = &unk_1EF509090;
  *(this + *(*(this + 9) - 712) + 72) = &unk_1EF509118;
  *(this + 5) = &unk_1EF506BF8;
  *this = &unk_1EF507208;
  *(this + 4) = off_1EF507510;
  *(this + 26) = &unk_1EF508048;
  *(this + unk_1EF5068D8 + 40) = &unk_1EF507808;
  *(this + *(*(this + 5) - 808) + 40) = &unk_1EF507D28;
  *(this + *(*(this + 5) - 816) + 40) = &unk_1EF507FC0;
  *(this + *(*(this + 5) - 824) + 40) = &unk_1EF508048;
  *this = &unk_1EF503AE8;
  *(this + unk_1EF5038C8) = &unk_1EF503AE8;
  *(this + *(*this - 56)) = &unk_1EF503AE8;
  *(this + *(*this - 64)) = off_1EF503E38;
  *(this + *(*this - 72)) = &unk_1EF504FC8;
  *(this + *(*this - 864)) = &unk_1EF5041B0;
  *(this + *(*this - 872)) = &unk_1EF504788;
  *(this + *(*this - 880)) = &unk_1EF504CA8;
  *(this + *(*this - 888)) = &unk_1EF504F40;
  *(this + *(*this - 896)) = &unk_1EF504FC8;
  *(this + 23) = off_1EF50D270;
  *(this + 24) = 0;
  *this = off_1EF50D2D0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 25) = 0;
  *(this + 26) = off_1EF50D358;
  AdobeXMPCore_Int::NodeImpl::NodeImpl((this + 80), off_1EF5036D8, "http://metadata", 0xF, "_metadata_", 0xA);
}

void sub_1861807D4(_Unwind_Exception *a1)
{
  AdobeXMPCore_Int::StructureNodeImpl::~StructureNodeImpl(v4, &off_1EF5035F0);
  AdobeXMPCore_Int::NodeImpl::~NodeImpl(v3, off_1EF5036D8);
  AdobeXMPCore_Int::ThreadSafeImpl::~ThreadSafeImpl(v1, off_1EF503740);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v2, off_1EF503728);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::MetadataImpl::GetAboutURI(AdobeXMPCore_Int::MetadataImpl *this@<X0>, void *a2@<X8>)
{
  memset(v5, 0, sizeof(v5));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v5, this + *(*this - 960) + 8, 0);
  v4 = *(this + 2);
  *a2 = *(this + 1);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v5);
}

void AdobeXMPCore_Int::MetadataImpl::SetAboutURI(AdobeXMPCore_Int::MetadataImpl *this, const char *a2)
{
  memset(v5, 0, sizeof(v5));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v5, this + *(*this - 960) + 8, 1);
  (*(**(this + 1) + 56))(&v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v5);
}

void sub_186180964(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  __cxa_call_unexpected(a1);
}

void AdobeXMPCore_Int::MetadataImpl::ClearContents(AdobeXMPCore_Int::MetadataImpl *this)
{
  AdobeXMPCore_Int::StructureNodeImpl::ClearContents((this + *(*this - 928)));
  memset(v2, 0, sizeof(v2));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v2, this + *(*this - 960) + 8, 1);
  (*(**(this + 1) + 200))(*(this + 1));
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v2);
}

void virtual thunk toAdobeXMPCore_Int::MetadataImpl::ClearContents(AdobeXMPCore_Int::MetadataImpl *this)
{
  AdobeXMPCore_Int::MetadataImpl::ClearContents((this + *(*this - 912)));
}

{
  AdobeXMPCore_Int::MetadataImpl::ClearContents((this + *(*this - 696)));
}

void AdobeXMPCore_Int::MetadataImpl::CloneContents()
{
  v2 = 0;
  v3 = 0;
  AdobeXMPCore::IMetadata_v1::CreateMetadata();
}

void sub_186180DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void virtual thunk toAdobeXMPCore_Int::MetadataImpl::CloneContents()
{
  AdobeXMPCore_Int::MetadataImpl::CloneContents();
}

{
  AdobeXMPCore_Int::MetadataImpl::CloneContents();
}

void AdobeXMPCore_Int::MetadataImpl::EnableFeature(AdobeXMPCore_Int::MetadataImpl *this, char *a2, size_t a3)
{
  memset(&__dst, 0, sizeof(__dst));
  std::string::basic_string[abi:fe200100](&__dst, a2, a3);
  if (!std::string::compare(&__dst, "alias"))
  {
    *(this + 24) = 1;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void AdobeXMPCore_Int::MetadataImpl::DisableFeature(AdobeXMPCore_Int::MetadataImpl *this, char *a2, size_t a3)
{
  memset(&__dst, 0, sizeof(__dst));
  std::string::basic_string[abi:fe200100](&__dst, a2, a3);
  if (!std::string::compare(&__dst, "alias"))
  {
    *(this + 24) = 0;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void AdobeXMPCore_Int::IsNodeAlias(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = 0;
  v4 = 0;
  AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String();
}

void sub_186181350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a22);
  }

  v24 = *(v22 - 48);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v24);
  }

  _Unwind_Resume(exception_object);
}

void *AdobeXMPCore_Int::HandleConstAlias(void *a1, AdobeXMPCore::INode_v1 **a2, char **a3, uint64_t *a4)
{
  v5 = *a3;
  if (*a3 == a3[1])
  {
    __p = 0;
    v56 = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  if ((*(v5 + 6) & 0x80000000) == 0)
  {
    return 0;
  }

  v56 = 0;
  v57 = 0;
  __p = 0;
  if (v5[23] < 0)
  {
    v5 = *v5;
  }

  result = std::string::basic_string[abi:fe200100]<0>(&__p, v5);
  v11 = *a3;
  if ((a3[1] - *a3) > 0x20)
  {
    v12 = (v11 + 4);
    v13 = *(v11 + 55);
    if (v13 < 0)
    {
      v14 = v11[4];
      v13 = v11[5];
    }

    else
    {
      v14 = (v11 + 4);
    }

    if (v13 < 1)
    {
      goto LABEL_24;
    }

    v15 = &v14[v13];
    v16 = v14;
    while (1)
    {
      v17 = memchr(v16, 58, v13);
      if (!v17)
      {
        goto LABEL_24;
      }

      if (*v17 == 58)
      {
        break;
      }

      v16 = v17 + 1;
      v13 = v15 - v16;
      if (v15 - v16 < 1)
      {
        goto LABEL_24;
      }
    }

    if (v17 == v15 || v17 - v14 == -1)
    {
LABEL_24:
      __assert_rtn("HandleConstAlias", "MetadataImpl.cpp", 141, "colonPos != std::string::npos");
    }

    memset(&v54, 0, sizeof(v54));
    std::string::basic_string(&v54, v12, v17 - v14 + 1, 0xFFFFFFFFFFFFFFFFLL, &v53);
    (*(*(*a1 + *(**a1 - 792)) + 648))(&v53);
    v18 = v53;
    v53 = 0uLL;
    v19 = a2[1];
    *a2 = v18;
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v19);
      if (*(&v53 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v53 + 1));
      }

      v20 = *a2;
      if (!*a2)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v20 = v18;
      if (!v18)
      {
        goto LABEL_88;
      }
    }

    if (a3[1] - *a3 == 64)
    {
      goto LABEL_27;
    }

    result = (*(*v20 + 40))(v20);
    if (result != 2)
    {
      v46 = "destNode->GetNodeType() == INode::kNTArray";
      v47 = 148;
      goto LABEL_98;
    }

    v21 = *a3;
    if ((a3[1] - *a3) > 0x40)
    {
      v22 = (v21 + 8);
      v23 = *(v21 + 22);
      if (v23 == 5)
      {
        if (*(v21 + 87) < 0 && v21[9] == 23)
        {
          v25 = *v22;
          v26 = *v25;
          v27 = v25[1];
          v28 = *(v25 + 15);
          v29 = v26 == 0x616C3A6C6D783F5BLL && v27 == 0x65642D78223D676ELL;
          if (v29 && v28 == 0x5D22746C75616665)
          {
            if (*a2 && (*(**a2 + 40))(*a2) == 2)
            {
              v53 = 0uLL;
              (*(**a2 + 248))(&v51);
              (*(*(v51 + *(*v51 - 688)) + 552))(&v53);
              if (v52)
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](v52);
              }

              v31 = 1;
              do
              {
                v6 = v53 != 0;
                if (!v53)
                {
                  break;
                }

                v51 = 0;
                v52 = 0;
                (*(*v53 + 48))(&v51);
                v50 = 0uLL;
                AdobeXMPCore::INode_v1::GetSimpleQualifier(&v50, v51);
                (*(*v50 + 504))(&v48);
                v32 = v48;
                v33 = (*(*v48 + 208))(v48);
                v34 = (*(*v32 + 160))(v32, 0, v33, "x-default", -1);
                if (v49)
                {
                  std::__shared_weak_count::__release_shared[abi:fe200100](v49);
                }

                if (v34)
                {
                  if (*(&v50 + 1))
                  {
                    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v50 + 1));
                  }

                  (*(*v53 + 56))(&v50);
                  v35 = v50;
                  v50 = 0uLL;
                  v36 = *(&v53 + 1);
                  v53 = v35;
                  if (v36)
                  {
                    std::__shared_weak_count::__release_shared[abi:fe200100](v36);
                    if (*(&v50 + 1))
                    {
                      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v50 + 1));
                    }
                  }

                  ++v31;
                  v37 = 1;
                }

                else
                {
                  v39 = v51;
                  v38 = v52;
                  if (v52)
                  {
                    atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v40 = a2[1];
                  *a2 = v39;
                  a2[1] = v38;
                  if (v40)
                  {
                    std::__shared_weak_count::__release_shared[abi:fe200100](v40);
                  }

                  if (*a4)
                  {
                    *a4 = v31;
                  }

                  if (*(&v50 + 1))
                  {
                    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v50 + 1));
                  }

                  v37 = 0;
                }

                if (v52)
                {
                  std::__shared_weak_count::__release_shared[abi:fe200100](v52);
                }
              }

              while ((v37 & 1) != 0);
              if (*(&v53 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](*(&v53 + 1));
              }

              goto LABEL_89;
            }

            goto LABEL_88;
          }
        }

        v46 = "expandedXPath[ 2 ].step == [?xml:lang=\\x-default\\]";
        v47 = 160;
LABEL_98:
        __assert_rtn("HandleConstAlias", "MetadataImpl.cpp", v47, v46);
      }

      if (v23 == 3)
      {
        v24 = *(v21 + 87);
        if (v24 < 0)
        {
          if (v21[9] != 3)
          {
LABEL_97:
            v46 = "expandedXPath[ 2 ].step == [1]";
            v47 = 151;
            goto LABEL_98;
          }

          v22 = *v22;
        }

        else if (v24 != 3)
        {
          goto LABEL_97;
        }

        v41 = *v22;
        v42 = *(v22 + 2);
        if (v41 != 12635 || v42 != 93)
        {
          goto LABEL_97;
        }

        (*(**a2 + 248))(&v51);
        (*(*v51 + 656))(&v53);
        v44 = v53;
        v53 = 0uLL;
        v45 = a2[1];
        *a2 = v44;
        if (v45)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v45);
          if (*(&v53 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v53 + 1));
          }
        }

        if (v52)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v52);
        }

        if (*a2)
        {
          if (*a4)
          {
            v6 = 1;
            *a4 = 1;
            goto LABEL_89;
          }

LABEL_27:
          v6 = 1;
LABEL_89:
          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v57) < 0)
          {
            operator delete(__p);
          }

          return v6;
        }
      }

LABEL_88:
      v6 = 0;
      goto LABEL_89;
    }
  }

  __break(1u);
  return result;
}

void sub_186181CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_186181DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::MetadataImpl::ReplaceNode(_BYTE *a1@<X0>, char **a2@<X1>, void *a3@<X8>)
{
  if (a1[24] == 1)
  {
    memset(v11, 0, sizeof(v11));
    v9 = 0u;
    v10 = 0u;
    (*(**a2 + 88))(&v8);
    (*(**a2 + 72))(&v7);
    v9 = v8;
    if (*(&v8 + 1))
    {
      atomic_fetch_add_explicit((*(&v8 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v10 = v7;
    if (*(&v7 + 1))
    {
      atomic_fetch_add_explicit((*(&v7 + 1) + 8), 1uLL, memory_order_relaxed);
      if (*(&v7 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v7 + 1));
      }
    }

    if (*(&v8 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v8 + 1));
    }

    (*(**a2 + 88))(&v8);
    v4 = (*(*v8 + 192))(v8);
    (*(**a2 + 72))(&v7);
    v5 = (*(*v7 + 192))(v7);
    AdobeXMPCore_Int::IsNodeAlias(v4, v5, v11);
  }

  v6 = &a1[*(*a1 - 928)];

  AdobeXMPCore_Int::StructureNodeImpl::ReplaceNode(v6, a2, a3);
}

void sub_186182684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, void **a19)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  AdobeXMPCore_Int::StructureNodeImpl::QualifiedName::~QualifiedName(&a19);
  a19 = (v19 - 88);
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a19);
  _Unwind_Resume(a1);
}

void sub_186182734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  JUMPOUT(0x18618271CLL);
}

void *AdobeXMPCore_Int::HandleNonConstAlias(char **a1, char **a2, uint64_t *a3, void *a4, void *a5)
{
  std::shared_ptr<AdobeXMPCore::INode_v1>::operator=[abi:fe200100]<AdobeXMPCore::ISimpleNode_v1,0>(a3, a1);
  if (*a5 && (*(**a5 + 40))(*a5) == 1)
  {
    (*(**a5 + 232))(&v84);
    (*(*v84.__r_.__value_.__l.__data_ + 504))(&v85);
    v11 = v85;
    v10 = v86;
    v85 = 0;
    v86 = 0;
    if (v84.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v84.__r_.__value_.__l.__size_);
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = *a2;
  if (a2[1] == *a2)
  {
    v85 = 0;
    v86 = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  if ((*(v12 + 6) & 0x80000000) != 0)
  {
    v86 = 0;
    v87 = 0;
    v85 = 0;
    if (v12[23] < 0)
    {
      v12 = *v12;
    }

    result = std::string::basic_string[abi:fe200100]<0>(&v85, v12);
    v15 = *a2;
    if ((a2[1] - *a2) <= 0x20)
    {
      __break(1u);
      return result;
    }

    v16 = (v15 + 4);
    v17 = *(v15 + 55);
    if (v17 < 0)
    {
      v18 = v15[4];
      v17 = v15[5];
    }

    else
    {
      v18 = (v15 + 4);
    }

    if (v17 < 1)
    {
      goto LABEL_29;
    }

    v19 = &v18[v17];
    v20 = v18;
    while (1)
    {
      v21 = memchr(v20, 58, v17);
      if (!v21)
      {
        goto LABEL_29;
      }

      if (*v21 == 58)
      {
        break;
      }

      v20 = v21 + 1;
      v17 = v19 - v20;
      if (v19 - v20 < 1)
      {
        goto LABEL_29;
      }
    }

    if (v21 == v19 || v21 - v18 == -1)
    {
LABEL_29:
      __assert_rtn("HandleNonConstAlias", "MetadataImpl.cpp", 224, "colonPos != std::string::npos");
    }

    memset(&v84, 0, sizeof(v84));
    std::string::basic_string(&v84, v16, v21 - v18 + 1, 0xFFFFFFFFFFFFFFFFLL, &v83);
    (*(*&(*a1)[*(**a1 - 792)] + 648))(&v83);
    v22 = *(&v83 + 1);
    v23 = *a2;
    v24 = (a2[1] - *a2) >> 5;
    if (v24 == 2)
    {
      if (!v83)
      {
        v83 = 0uLL;
        v80 = 0;
        v81 = 0;
        AdobeXMPCore_Int::CreateTerminalNode(&v82, 0, &v80);
        v50 = v82;
        v82 = 0uLL;
        v51 = *(&v83 + 1);
        v83 = v50;
        if (v51)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v51);
          if (*(&v82 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v82 + 1));
          }
        }

        if (v83)
        {
          if (v11)
          {
            (*(*v83 + 232))(&v82);
            v52 = v82;
            v53 = (*(*v11 + 192))(v11);
            v54 = (*(*v11 + 208))(v11);
            (*(*v52 + 512))(v52, v53, v54);
            if (*(&v82 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](*(&v82 + 1));
            }
          }

          v55 = *a3;
          v56 = *a1;
          if (*a1)
          {
            v57 = &v56[*(*v56 - 544)];
          }

          else
          {
            v57 = 0;
          }

          if (v55 == v57)
          {
            (*(*&v56[*(*v56 - 792)] + 656))(&v56[*(*v56 - 792)], &v83);
          }

          else
          {
            (*(*v55 + 240))(&v82);
            (*(*(v82 + *(*v82 - 688)) + 520))(v82 + *(*v82 - 688), &v83);
            if (*(&v82 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](*(&v82 + 1));
            }
          }

          v71 = *(&v83 + 1);
          v70 = v83;
          if (*(&v83 + 1))
          {
            atomic_fetch_add_explicit((*(&v83 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v72 = a3[1];
          *a3 = v70;
          a3[1] = v71;
          if (v72)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v72);
            v70 = *a3;
          }

          v13 = v70 != 0;
        }

        else
        {
          v13 = 0;
        }

        if (*(&v83 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v83 + 1));
        }

        goto LABEL_142;
      }

      goto LABEL_141;
    }

    if (v24 != 3)
    {
      v73 = "expandedXPath.size() == 3";
      v74 = 246;
      goto LABEL_151;
    }

    v25 = (v23 + 8);
    v26 = *(v23 + 22);
    if (v26 == 5)
    {
      v75 = *(&v83 + 1);
      if ((*(v23 + 87) & 0x80000000) == 0 || v23[9] != 23 || ((v28 = *v25, v29 = *v28, v30 = v28[1], v31 = *(v28 + 15), v29 == 0x616C3A6C6D783F5BLL) ? (v32 = v30 == 0x65642D78223D676ELL) : (v32 = 0), v32 ? (v33 = v31 == 0x5D22746C75616665) : (v33 = 0), !v33))
      {
        v73 = "expandedXPath[ 2 ].step == [?xml:lang=\\x-default\\]";
        v74 = 272;
        goto LABEL_151;
      }

      (*(*&(*a1)[*(**a1 - 792)] + 648))(&v83);
      v34 = v83;
      v83 = 0uLL;
      v35 = a3[1];
      *a3 = v34;
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v35);
        if (*(&v83 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v83 + 1));
        }
      }

      v83 = 0uLL;
      v82 = 0uLL;
      AdobeXMPCore_Int::CreateTerminalNode(&v83, 4608, &v82);
      v36 = &(*a1)[*(**a1 - 688)];
      (*(*v36 + 520))(v36, &v83);
      v38 = *(&v83 + 1);
      v37 = v83;
      if (*(&v83 + 1))
      {
        atomic_fetch_add_explicit((*(&v83 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v39 = a3[1];
      *a3 = v37;
      a3[1] = v38;
      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v39);
        v37 = *a3;
      }

      v82 = 0uLL;
      (*(*v37 + 248))(&v80);
      (*(*(v80 + *(*v80 - 688)) + 552))(&v82);
      if (v81)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v81);
      }

      v40 = 1;
      do
      {
        if (!v82)
        {
          v80 = 0;
          v81 = 0;
          AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode();
        }

        v80 = 0;
        v81 = 0;
        (*(*v82 + 48))(&v80);
        v79 = 0uLL;
        (*(*v80 + 128))(&v79);
        if ((*(*v79 + 40))(v79) != 1)
        {
          goto LABEL_63;
        }

        (*(*v79 + 232))(&v76);
        (*(*v76 + 504))(&v78);
        v41 = v78;
        v42 = (*(*v78 + 208))(v78);
        v43 = (*(*v41 + 160))(v41, 0, v42, "x-default", -1);
        if (*(&v78 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v78 + 1));
        }

        if (v77)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v77);
        }

        if (!v43)
        {
          v48 = v80;
          v47 = v81;
          if (v81)
          {
            atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v49 = a3[1];
          *a3 = v48;
          a3[1] = v47;
          if (v49)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v49);
          }

          v46 = 0;
          if (*a4)
          {
            *a4 = v40;
          }
        }

        else
        {
LABEL_63:
          (*(*v82 + 56))(&v78);
          v44 = v78;
          v78 = 0uLL;
          v45 = *(&v82 + 1);
          v82 = v44;
          if (v45)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v45);
            if (*(&v78 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](*(&v78 + 1));
            }
          }

          ++v40;
          v46 = 1;
        }

        if (*(&v79 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v79 + 1));
        }

        if (v81)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v81);
        }
      }

      while ((v46 & 1) != 0);
      if (*(&v82 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v82 + 1));
      }

      v22 = v75;
      if (*(&v83 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v83 + 1));
      }
    }

    else
    {
      if (v26 != 3)
      {
        v13 = 0;
LABEL_142:
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v22);
        }

        if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v84.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v87) < 0)
        {
          operator delete(v85);
        }

        goto LABEL_9;
      }

      v27 = *(v23 + 87);
      if (v27 < 0)
      {
        if (v23[9] != 3)
        {
LABEL_150:
          v73 = "expandedXPath[ 2 ].step == [1]";
          v74 = 248;
LABEL_151:
          __assert_rtn("HandleNonConstAlias", "MetadataImpl.cpp", v74, v73);
        }

        v25 = *v25;
      }

      else if (v27 != 3)
      {
        goto LABEL_150;
      }

      v58 = *v25;
      v59 = *(v25 + 2);
      if (v58 != 12635 || v59 != 93)
      {
        goto LABEL_150;
      }

      (*(*&(*a1)[*(**a1 - 792)] + 648))(&v83);
      v61 = v83;
      v83 = 0uLL;
      v62 = a3[1];
      *a3 = v61;
      if (v62)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v62);
        if (*(&v83 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v83 + 1));
        }

        v63 = *a3;
      }

      else
      {
        v63 = v61;
      }

      if (!v63)
      {
        v83 = 0uLL;
        v82 = 0uLL;
        AdobeXMPCore_Int::CreateTerminalNode(&v83, 1536, &v82);
        v64 = &(*a1)[*(**a1 - 688)];
        (*(*v64 + 520))(v64, &v83);
        v65 = v83;
        if (*(&v83 + 1))
        {
          atomic_fetch_add_explicit((*(&v83 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v66 = a3[1];
        *a3 = v65;
        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v66);
        }

        if (*(&v83 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v83 + 1));
        }

        v63 = *a3;
      }

      (*(*v63 + 248))(&v82);
      (*(*v82 + 656))(&v83);
      v67 = v83;
      if (*(&v83 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v83 + 1));
      }

      if (*(&v82 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v82 + 1));
      }

      if (!v67)
      {
        v83 = 0uLL;
        AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode();
      }

      (*(**a3 + 248))(&v82);
      (*(*v82 + 656))(&v83);
      v68 = v83;
      v83 = 0uLL;
      v69 = a3[1];
      *a3 = v68;
      if (v69)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v69);
        if (*(&v83 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v83 + 1));
        }
      }

      if (*(&v82 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v82 + 1));
      }

      if (*a4)
      {
        v13 = 1;
        *a4 = 1;
        goto LABEL_142;
      }
    }

LABEL_141:
    v13 = 1;
    goto LABEL_142;
  }

  v13 = 0;
LABEL_9:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
  }

  return v13;
}

void sub_186183C74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a22);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 89) < 0)
  {
    operator delete(*(v29 - 112));
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v28);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::MetadataImpl::InsertNode(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24) == 1)
  {
    v3 = *a2;
    if (*a2)
    {
      memset(v9, 0, sizeof(v9));
      (*(*v3 + 88))(&v7);
      v4 = (*(*v7 + 192))(v7);
      (*(**a2 + 72))(&v8);
      v5 = (*(*v8 + 192))(v8);
      AdobeXMPCore_Int::IsNodeAlias(v4, v5, v9);
    }
  }

  else
  {
    v6 = (a1 + *(*a1 - 928));

    AdobeXMPCore_Int::StructureNodeImpl::InsertNode(v6, a2);
  }
}

void sub_186184154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&a14);
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a19);
  }

  a14 = (v19 - 56);
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a14);
  _Unwind_Resume(a1);
}