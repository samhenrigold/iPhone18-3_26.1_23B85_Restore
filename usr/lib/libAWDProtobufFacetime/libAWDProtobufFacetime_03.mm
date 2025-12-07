void awd::metrics::AvcSidecarVideoStream::CheckTypeAndMergeFrom(awd::metrics::AvcSidecarVideoStream *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::AvcSidecarVideoStream::CheckTypeAndMergeFrom();
  }

  awd::metrics::AvcSidecarVideoStream::MergeFrom(this, lpsrc);
}

void awd::metrics::AvcSidecarVideoStream::CopyFrom(awd::metrics::AvcSidecarVideoStream *this, const awd::metrics::AvcSidecarVideoStream *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::AvcSidecarVideoStream::MergeFrom(this, a2);
  }
}

double awd::metrics::AvcSidecarVideoStream::Swap(awd::metrics::AvcSidecarVideoStream *this, awd::metrics::AvcSidecarVideoStream *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 5);
    v7 = *(this + 6);
    v8 = *(a2 + 6);
    *(this + 5) = *(a2 + 5);
    *(this + 6) = v8;
    *(a2 + 5) = v6;
    *(a2 + 6) = v7;
    v9 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v9;
    v10 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v10;
    v11 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v11;
    v12 = *(this + 10);
    v13 = *(this + 11);
    v14 = *(a2 + 11);
    *(this + 10) = *(a2 + 10);
    *(this + 11) = v14;
    *(a2 + 10) = v12;
    *(a2 + 11) = v13;
    v15 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v15;
    v16 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v16;
    v17 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v17;
    v18 = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v18;
    v19 = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v19;
    v20 = *(this + 22);
    v21 = *(this + 23);
    v22 = *(a2 + 23);
    *(this + 22) = *(a2 + 22);
    *(this + 23) = v22;
    v23 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v23;
    v24 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v24;
    v25 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v25;
    v26 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v26;
    v27 = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v27;
    result = *(a2 + 24);
    *(a2 + 22) = v20;
    *(a2 + 23) = v21;
    v29 = *(this + 24);
    *(this + 24) = result;
    *(a2 + 24) = v29;
    LODWORD(v20) = *(this + 51);
    *(this + 51) = *(a2 + 51);
    *(a2 + 51) = v20;
    LODWORD(v20) = *(this + 50);
    *(this + 50) = *(a2 + 50);
    *(a2 + 50) = v20;
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::FaceTimeAudioTierReport_AudioTierCounter>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::RTCSessionEndMetric_InterfaceStats>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::FaceTimeCallAggregatedReport_SegmentStats>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE31CB8, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

_DWORD *wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(_DWORD *result, int a2)
{
  v2 = result[3];
  if (v2 < a2)
  {
    v3 = 2 * v2;
    if (v3 <= a2)
    {
      v3 = a2;
    }

    if (v3 <= 4)
    {
      v3 = 4;
    }

    result[3] = v3;
    operator new[]();
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::FaceTimeAudioTierReport_AudioTierCounter>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A1D0);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::RTCSessionEndMetric_InterfaceStats>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A1D0);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::FaceTimeCallAggregatedReport_SegmentStats>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A1D0);
  }

  return result;
}

_DWORD *wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(_DWORD *result, int a2)
{
  v2 = result[3];
  if (v2 < a2)
  {
    v3 = 2 * v2;
    if (v3 <= a2)
    {
      v3 = a2;
    }

    if (v3 <= 4)
    {
      v3 = 4;
    }

    result[3] = v3;
    operator new[]();
  }

  return result;
}

uint64_t awd::metrics::protobuf_ShutdownFile_HomeKitNetworking_2eproto(awd::metrics *this)
{
  result = awd::metrics::HomeKitIPCameraNetworkStatistics::default_instance_;
  if (awd::metrics::HomeKitIPCameraNetworkStatistics::default_instance_)
  {
    return (*(*awd::metrics::HomeKitIPCameraNetworkStatistics::default_instance_ + 8))();
  }

  return result;
}

void awd::metrics::protobuf_AddDesc_HomeKitNetworking_2eproto(awd::metrics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((awd::metrics::protobuf_AddDesc_HomeKitNetworking_2eproto(void)::already_here & 1) == 0)
  {
    awd::metrics::protobuf_AddDesc_HomeKitNetworking_2eproto(void)::already_here = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "codegen/cpp/HomeKitNetworking.pb.cc", a4);
    operator new();
  }
}

double awd::metrics::HomeKitIPCameraNetworkStatistics::HomeKitIPCameraNetworkStatistics(awd::metrics::HomeKitIPCameraNetworkStatistics *this)
{
  *this = &unk_2A1D4E548;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  v2 = MEMORY[0x29EDC9758];
  *(this + 104) = 0u;
  *(this + 15) = v2;
  *(this + 16) = 0;
  *(this + 34) = 0;
  return result;
}

{
  *this = &unk_2A1D4E548;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  v2 = MEMORY[0x29EDC9758];
  *(this + 104) = 0u;
  *(this + 15) = v2;
  *(this + 16) = 0;
  *(this + 34) = 0;
  return result;
}

double awd::metrics::HomeKitIPCameraNetworkStatistics::SharedCtor(awd::metrics::HomeKitIPCameraNetworkStatistics *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 15) = MEMORY[0x29EDC9758];
  *(this + 16) = 0;
  *(this + 34) = 0;
  return result;
}

awd::metrics::HomeKitIPCameraNetworkStatistics *awd::metrics::HomeKitIPCameraNetworkStatistics::HomeKitIPCameraNetworkStatistics(awd::metrics::HomeKitIPCameraNetworkStatistics *this, const awd::metrics::HomeKitIPCameraNetworkStatistics *a2)
{
  *this = &unk_2A1D4E548;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = MEMORY[0x29EDC9758];
  *(this + 16) = 0;
  *(this + 34) = 0;
  awd::metrics::HomeKitIPCameraNetworkStatistics::MergeFrom(this, a2);
  return this;
}

void sub_2963F3890(_Unwind_Exception *a1)
{
  v7 = *(v1 + 13);
  if (v7)
  {
    MEMORY[0x29C25A1D0](v7, 0x1000C8052888210);
  }

  awd::metrics::HomeKitIPCameraNetworkStatistics::HomeKitIPCameraNetworkStatistics(v5, v4, v3, v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::HomeKitIPCameraNetworkStatistics::MergeFrom(awd::metrics::HomeKitIPCameraNetworkStatistics *this, const awd::metrics::HomeKitIPCameraNetworkStatistics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  v4 = *(a2 + 12);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 10, *(this + 12) + v4);
    memcpy((*(this + 5) + 4 * *(this + 12)), *(a2 + 5), 4 * *(a2 + 12));
    *(this + 12) += *(a2 + 12);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 14, *(this + 16) + v5);
    memcpy((*(this + 7) + 4 * *(this + 16)), *(a2 + 7), 4 * *(a2 + 16));
    *(this + 16) += *(a2 + 16);
  }

  v6 = *(a2 + 20);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 18, *(this + 20) + v6);
    memcpy((*(this + 9) + 4 * *(this + 20)), *(a2 + 9), 4 * *(a2 + 20));
    *(this + 20) += *(a2 + 20);
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 22, *(this + 24) + v7);
    memcpy((*(this + 11) + 4 * *(this + 24)), *(a2 + 11), 4 * *(a2 + 24));
    *(this + 24) += *(a2 + 24);
  }

  v8 = *(a2 + 28);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 26, *(this + 28) + v8);
    memcpy((*(this + 13) + 4 * *(this + 28)), *(a2 + 13), 4 * *(a2 + 28));
    *(this + 28) += *(a2 + 28);
  }

  v9 = *(a2 + 34);
  if (!v9)
  {
    goto LABEL_22;
  }

  if (v9)
  {
    v14 = *(a2 + 1);
    *(this + 34) |= 1u;
    *(this + 1) = v14;
    v9 = *(a2 + 34);
    if ((v9 & 2) == 0)
    {
LABEL_16:
      if ((v9 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_32;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(a2 + 4);
  *(this + 34) |= 2u;
  *(this + 4) = v15;
  v9 = *(a2 + 34);
  if ((v9 & 4) == 0)
  {
LABEL_17:
    if ((v9 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  v16 = *(a2 + 5);
  *(this + 34) |= 4u;
  *(this + 5) = v16;
  v9 = *(a2 + 34);
  if ((v9 & 8) == 0)
  {
LABEL_18:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_19;
    }

LABEL_34:
    v18 = *(a2 + 7);
    *(this + 34) |= 0x10u;
    *(this + 7) = v18;
    v9 = *(a2 + 34);
    if ((v9 & 0x20) == 0)
    {
LABEL_20:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    goto LABEL_35;
  }

LABEL_33:
  v17 = *(a2 + 6);
  *(this + 34) |= 8u;
  *(this + 6) = v17;
  v9 = *(a2 + 34);
  if ((v9 & 0x10) != 0)
  {
    goto LABEL_34;
  }

LABEL_19:
  if ((v9 & 0x20) == 0)
  {
    goto LABEL_20;
  }

LABEL_35:
  v19 = *(a2 + 8);
  *(this + 34) |= 0x20u;
  *(this + 8) = v19;
  v9 = *(a2 + 34);
  if ((v9 & 0x40) != 0)
  {
LABEL_21:
    v10 = *(a2 + 9);
    *(this + 34) |= 0x40u;
    *(this + 9) = v10;
    v9 = *(a2 + 34);
  }

LABEL_22:
  if ((v9 & 0xFF000) != 0)
  {
    if ((v9 & 0x1000) != 0)
    {
      v11 = *(a2 + 15);
      *(this + 34) |= 0x1000u;
      v12 = *(this + 15);
      if (v12 == MEMORY[0x29EDC9758])
      {
        operator new();
      }

      std::string::operator=(v12, v11);
      v9 = *(a2 + 34);
    }

    if ((v9 & 0x2000) != 0)
    {
      v13 = *(a2 + 32);
      *(this + 34) |= 0x2000u;
      *(this + 32) = v13;
    }
  }
}

void sub_2963F3C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::HomeKitIPCameraNetworkStatistics::~HomeKitIPCameraNetworkStatistics(awd::metrics::HomeKitIPCameraNetworkStatistics *this)
{
  *this = &unk_2A1D4E548;
  awd::metrics::HomeKitIPCameraNetworkStatistics::SharedDtor(this);
  v2 = *(this + 13);
  if (v2)
  {
    MEMORY[0x29C25A1D0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 11);
  if (v3)
  {
    MEMORY[0x29C25A1D0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 9);
  if (v4)
  {
    MEMORY[0x29C25A1D0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 7);
  if (v5)
  {
    MEMORY[0x29C25A1D0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 5);
  if (v6)
  {
    MEMORY[0x29C25A1D0](v6, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::HomeKitIPCameraNetworkStatistics::~HomeKitIPCameraNetworkStatistics(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::HomeKitIPCameraNetworkStatistics::SharedDtor(uint64_t this)
{
  v1 = *(this + 120);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C25A1F0);
  }

  return this;
}

uint64_t awd::metrics::HomeKitIPCameraNetworkStatistics::default_instance(awd::metrics::HomeKitIPCameraNetworkStatistics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::HomeKitIPCameraNetworkStatistics::default_instance_;
  if (!awd::metrics::HomeKitIPCameraNetworkStatistics::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_HomeKitNetworking_2eproto(0, a2, a3, a4);
    return awd::metrics::HomeKitIPCameraNetworkStatistics::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::HomeKitIPCameraNetworkStatistics::Clear(uint64_t this)
{
  v1 = *(this + 136);
  if (v1)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF000) != 0)
  {
    if ((v1 & 0x1000) != 0)
    {
      v2 = *(this + 120);
      if (v2 != MEMORY[0x29EDC9758])
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    *(this + 128) = 0;
  }

  *(this + 48) = 0;
  *(this + 64) = 0;
  *(this + 80) = 0;
  *(this + 96) = 0;
  *(this + 112) = 0;
  *(this + 136) = 0;
  return this;
}

uint64_t awd::metrics::HomeKitIPCameraNetworkStatistics::MergePartialFromCodedStream(awd::metrics::HomeKitIPCameraNetworkStatistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x29EDC9758];
LABEL_2:
  while (2)
  {
    v6 = *(a2 + 1);
    if (v6 >= *(a2 + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v6 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v8 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 34) |= 1u;
        if (v12 < v9 && *v12 == 16)
        {
          v19 = v12 + 1;
          *(a2 + 1) = v19;
          goto LABEL_62;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v19 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_62:
        if (v19 >= v9 || (v27 = *v19, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v27;
          v28 = v19 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 34) |= 2u;
        if (v28 >= v9 || *v28 != 24)
        {
          continue;
        }

        v17 = v28 + 1;
        *(a2 + 1) = v17;
LABEL_70:
        if (v17 >= v9 || (v29 = *v17, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v30 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v29;
          v30 = v17 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 34) |= 4u;
        if (v30 >= v9 || *v30 != 32)
        {
          continue;
        }

        v18 = v30 + 1;
        *(a2 + 1) = v18;
LABEL_78:
        if (v18 >= v9 || (v31 = *v18, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v32 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v31;
          v32 = v18 + 1;
          *(a2 + 1) = v32;
        }

        *(this + 34) |= 8u;
        if (v32 >= v9 || *v32 != 40)
        {
          continue;
        }

        v16 = v32 + 1;
        *(a2 + 1) = v16;
LABEL_86:
        if (v16 >= v9 || (v33 = *v16, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v34 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v33;
          v34 = v16 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 34) |= 0x10u;
        if (v34 >= v9 || *v34 != 48)
        {
          continue;
        }

        v20 = v34 + 1;
        *(a2 + 1) = v20;
LABEL_94:
        if (v20 >= v9 || (v35 = *v20, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v36 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v35;
          v36 = v20 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 34) |= 0x20u;
        if (v36 >= v9 || *v36 != 56)
        {
          continue;
        }

        v21 = v36 + 1;
        *(a2 + 1) = v21;
LABEL_102:
        if (v21 >= v9 || (v37 = *v21, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v38 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v37;
          v38 = (v21 + 1);
          *(a2 + 1) = v38;
        }

        *(this + 34) |= 0x40u;
        if (v38 >= v9)
        {
          continue;
        }

        v39 = *v38;
        goto LABEL_109;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v17 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_70;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v18 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_78;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v16 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_86;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v20 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_94;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v21 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_102;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          if (v8 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 5);
            if (!result)
            {
              return result;
            }

            goto LABEL_128;
          }

          goto LABEL_47;
        }

        v24 = *(a2 + 1);
        v9 = *(a2 + 2);
        while (1)
        {
          v97 = 0;
          if (v24 >= v9 || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v97))
            {
              return 0;
            }
          }

          else
          {
            v97 = *v24;
            *(a2 + 1) = v24 + 1;
          }

          v40 = *(this + 12);
          if (v40 == *(this + 13))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 10, v40 + 1);
            v40 = *(this + 12);
          }

          v41 = v97;
          v42 = *(this + 5);
          *(this + 12) = v40 + 1;
          *(v42 + 4 * v40) = v41;
          v43 = *(this + 13) - *(this + 12);
          if (v43 >= 1)
          {
            v44 = v43 + 1;
            do
            {
              v45 = *(a2 + 1);
              v46 = *(a2 + 2);
              if (v45 >= v46 || *v45 != 64)
              {
                break;
              }

              *(a2 + 1) = v45 + 1;
              if ((v45 + 1) >= v46 || v45[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v97))
                {
                  return 0;
                }
              }

              else
              {
                v97 = v45[1];
                *(a2 + 1) = v45 + 2;
              }

              v47 = *(this + 12);
              if (v47 >= *(this + 13))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v98);
                v47 = *(this + 12);
              }

              v48 = v97;
              v49 = *(this + 5);
              *(this + 12) = v47 + 1;
              *(v49 + 4 * v47) = v48;
              --v44;
            }

            while (v44 > 1);
          }

LABEL_128:
          v38 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v38 >= v9)
          {
            goto LABEL_2;
          }

          v39 = *v38;
          if (v39 == 72)
          {
            goto LABEL_130;
          }

LABEL_109:
          if (v39 != 64)
          {
            goto LABEL_2;
          }

          v24 = (v38 + 1);
          *(a2 + 1) = v24;
        }

      case 9u:
        if ((TagFallback & 7) != 0)
        {
          if (v8 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 7);
            if (!result)
            {
              return result;
            }

            goto LABEL_148;
          }

          goto LABEL_47;
        }

        v26 = *(a2 + 1);
        v9 = *(a2 + 2);
        while (1)
        {
          v97 = 0;
          if (v26 >= v9 || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v97))
            {
              return 0;
            }
          }

          else
          {
            v97 = *v26;
            *(a2 + 1) = v26 + 1;
          }

          v50 = *(this + 16);
          if (v50 == *(this + 17))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 14, v50 + 1);
            v50 = *(this + 16);
          }

          v51 = v97;
          v52 = *(this + 7);
          *(this + 16) = v50 + 1;
          *(v52 + 4 * v50) = v51;
          v53 = *(this + 17) - *(this + 16);
          if (v53 >= 1)
          {
            v54 = v53 + 1;
            do
            {
              v55 = *(a2 + 1);
              v56 = *(a2 + 2);
              if (v55 >= v56 || *v55 != 72)
              {
                break;
              }

              *(a2 + 1) = v55 + 1;
              if ((v55 + 1) >= v56 || v55[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v97))
                {
                  return 0;
                }
              }

              else
              {
                v97 = v55[1];
                *(a2 + 1) = v55 + 2;
              }

              v57 = *(this + 16);
              if (v57 >= *(this + 17))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v98);
                v57 = *(this + 16);
              }

              v58 = v97;
              v59 = *(this + 7);
              *(this + 16) = v57 + 1;
              *(v59 + 4 * v57) = v58;
              --v54;
            }

            while (v54 > 1);
          }

LABEL_148:
          v38 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v38 >= v9)
          {
            goto LABEL_2;
          }

          v60 = *v38;
          if (v60 == 80)
          {
            goto LABEL_152;
          }

          if (v60 != 72)
          {
            goto LABEL_2;
          }

LABEL_130:
          v26 = (v38 + 1);
          *(a2 + 1) = v26;
        }

      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          if (v8 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 9);
            if (!result)
            {
              return result;
            }

            goto LABEL_170;
          }

          goto LABEL_47;
        }

        v23 = *(a2 + 1);
        v9 = *(a2 + 2);
        while (1)
        {
          v97 = 0;
          if (v23 >= v9 || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v97))
            {
              return 0;
            }
          }

          else
          {
            v97 = *v23;
            *(a2 + 1) = v23 + 1;
          }

          v61 = *(this + 20);
          if (v61 == *(this + 21))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 18, v61 + 1);
            v61 = *(this + 20);
          }

          v62 = v97;
          v63 = *(this + 9);
          *(this + 20) = v61 + 1;
          *(v63 + 4 * v61) = v62;
          v64 = *(this + 21) - *(this + 20);
          if (v64 >= 1)
          {
            v65 = v64 + 1;
            do
            {
              v66 = *(a2 + 1);
              v67 = *(a2 + 2);
              if (v66 >= v67 || *v66 != 80)
              {
                break;
              }

              *(a2 + 1) = v66 + 1;
              if ((v66 + 1) >= v67 || v66[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v97))
                {
                  return 0;
                }
              }

              else
              {
                v97 = v66[1];
                *(a2 + 1) = v66 + 2;
              }

              v68 = *(this + 20);
              if (v68 >= *(this + 21))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v98);
                v68 = *(this + 20);
              }

              v69 = v97;
              v70 = *(this + 9);
              *(this + 20) = v68 + 1;
              *(v70 + 4 * v68) = v69;
              --v65;
            }

            while (v65 > 1);
          }

LABEL_170:
          v38 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v38 >= v9)
          {
            goto LABEL_2;
          }

          v71 = *v38;
          if (v71 == 88)
          {
            goto LABEL_174;
          }

          if (v71 != 80)
          {
            goto LABEL_2;
          }

LABEL_152:
          v23 = (v38 + 1);
          *(a2 + 1) = v23;
        }

      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          if (v8 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 11);
            if (!result)
            {
              return result;
            }

            goto LABEL_192;
          }

          goto LABEL_47;
        }

        v25 = *(a2 + 1);
        v9 = *(a2 + 2);
        while (1)
        {
          v97 = 0;
          if (v25 >= v9 || *v25 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v97))
            {
              return 0;
            }
          }

          else
          {
            v97 = *v25;
            *(a2 + 1) = v25 + 1;
          }

          v72 = *(this + 24);
          if (v72 == *(this + 25))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 22, v72 + 1);
            v72 = *(this + 24);
          }

          v73 = v97;
          v74 = *(this + 11);
          *(this + 24) = v72 + 1;
          *(v74 + 4 * v72) = v73;
          v75 = *(this + 25) - *(this + 24);
          if (v75 >= 1)
          {
            v76 = v75 + 1;
            do
            {
              v77 = *(a2 + 1);
              v78 = *(a2 + 2);
              if (v77 >= v78 || *v77 != 88)
              {
                break;
              }

              *(a2 + 1) = v77 + 1;
              if ((v77 + 1) >= v78 || v77[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v97))
                {
                  return 0;
                }
              }

              else
              {
                v97 = v77[1];
                *(a2 + 1) = v77 + 2;
              }

              v79 = *(this + 24);
              if (v79 >= *(this + 25))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v98);
                v79 = *(this + 24);
              }

              v80 = v97;
              v81 = *(this + 11);
              *(this + 24) = v79 + 1;
              *(v81 + 4 * v79) = v80;
              --v76;
            }

            while (v76 > 1);
          }

LABEL_192:
          v38 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v38 >= v9)
          {
            goto LABEL_2;
          }

          v82 = *v38;
          if (v82 == 96)
          {
            goto LABEL_196;
          }

          if (v82 != 88)
          {
            goto LABEL_2;
          }

LABEL_174:
          v25 = (v38 + 1);
          *(a2 + 1) = v25;
        }

      case 0xCu:
        if ((TagFallback & 7) == 0)
        {
          v22 = *(a2 + 1);
          v9 = *(a2 + 2);
          while (1)
          {
            v97 = 0;
            if (v22 >= v9 || *v22 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v97))
              {
                return 0;
              }
            }

            else
            {
              v97 = *v22;
              *(a2 + 1) = v22 + 1;
            }

            v83 = *(this + 28);
            if (v83 == *(this + 29))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 26, v83 + 1);
              v83 = *(this + 28);
            }

            v84 = v97;
            v85 = *(this + 13);
            *(this + 28) = v83 + 1;
            *(v85 + 4 * v83) = v84;
            v86 = *(this + 29) - *(this + 28);
            if (v86 >= 1)
            {
              v87 = v86 + 1;
              do
              {
                v88 = *(a2 + 1);
                v89 = *(a2 + 2);
                if (v88 >= v89 || *v88 != 96)
                {
                  break;
                }

                *(a2 + 1) = v88 + 1;
                if ((v88 + 1) >= v89 || v88[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v97))
                  {
                    return 0;
                  }
                }

                else
                {
                  v97 = v88[1];
                  *(a2 + 1) = v88 + 2;
                }

                v90 = *(this + 28);
                if (v90 >= *(this + 29))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v98);
                  v90 = *(this + 28);
                }

                v91 = v97;
                v92 = *(this + 13);
                *(this + 28) = v90 + 1;
                *(v92 + 4 * v90) = v91;
                --v87;
              }

              while (v87 > 1);
            }

LABEL_214:
            v38 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v38 >= v9)
            {
              goto LABEL_2;
            }

            v93 = *v38;
            if (v93 == 106)
            {
              *(a2 + 1) = v38 + 1;
LABEL_219:
              *(this + 34) |= 0x1000u;
              if (*(this + 15) == v5)
              {
                operator new();
              }

              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
              if (!result)
              {
                return result;
              }

              v94 = *(a2 + 1);
              v13 = *(a2 + 2);
              if (v13 - v94 >= 2 && *v94 == 152 && v94[1] == 6)
              {
                v14 = (v94 + 2);
                *(a2 + 1) = v14;
LABEL_226:
                if (v14 >= v13 || (v95 = *v14, v95 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 32);
                  if (!result)
                  {
                    return result;
                  }

                  v96 = *(a2 + 1);
                  v13 = *(a2 + 2);
                }

                else
                {
                  *(this + 32) = v95;
                  v96 = v14 + 1;
                  *(a2 + 1) = v96;
                }

                *(this + 34) |= 0x2000u;
                if (v96 == v13 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                {
                  *(a2 + 8) = 0;
                  result = 1;
                  *(a2 + 36) = 1;
                  return result;
                }
              }

              goto LABEL_2;
            }

            if (v93 != 96)
            {
              goto LABEL_2;
            }

LABEL_196:
            v22 = (v38 + 1);
            *(a2 + 1) = v22;
          }
        }

        if (v8 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 13);
          if (!result)
          {
            return result;
          }

          goto LABEL_214;
        }

LABEL_47:
        if (v8 != 4)
        {
          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
      case 0xDu:
        if (v8 == 2)
        {
          goto LABEL_219;
        }

        goto LABEL_47;
      default:
        if (TagFallback >> 3 != 99 || (TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_226;
    }
  }
}

void sub_2963F4AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::HomeKitIPCameraNetworkStatistics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 136);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 136);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  if ((*(v5 + 136) & 0x40) != 0)
  {
LABEL_8:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  }

LABEL_9:
  if (*(v5 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(*(v5 + 40) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 48));
  }

  if (*(v5 + 64) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(*(v5 + 56) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 64));
  }

  if (*(v5 + 80) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(*(v5 + 72) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 80));
  }

  if (*(v5 + 96) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(*(v5 + 88) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 96));
  }

  if (*(v5 + 112) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(*(v5 + 104) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 112));
  }

  v12 = *(v5 + 136);
  if ((v12 & 0x1000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v12 = *(v5 + 136);
  }

  if ((v12 & 0x2000) != 0)
  {
    v13 = *(v5 + 128);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x63, v13, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::HomeKitIPCameraNetworkStatistics::ByteSize(awd::metrics::HomeKitIPCameraNetworkStatistics *this, unint64_t a2)
{
  v3 = *(this + 34);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_37;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 34);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(this + 4);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 34);
  }

  else
  {
    v6 = 2;
  }

  v4 += v6;
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v7 = *(this + 5);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v3 = *(this + 34);
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
    if ((v3 & 8) == 0)
    {
LABEL_13:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_25;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(this + 6);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v3 = *(this + 34);
  }

  else
  {
    v10 = 2;
  }

  v4 += v10;
  if ((v3 & 0x10) == 0)
  {
LABEL_14:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_25:
  v11 = *(this + 7);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v3 = *(this + 34);
  }

  else
  {
    v12 = 2;
  }

  v4 += v12;
  if ((v3 & 0x20) == 0)
  {
LABEL_15:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

LABEL_29:
  v13 = *(this + 8);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = *(this + 34);
  }

  else
  {
    v14 = 2;
  }

  v4 += v14;
  if ((v3 & 0x40) != 0)
  {
LABEL_33:
    v15 = *(this + 9);
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
      v3 = *(this + 34);
    }

    else
    {
      v16 = 2;
    }

    v4 += v16;
  }

LABEL_37:
  if ((v3 & 0xFF000) != 0)
  {
    if ((v3 & 0x1000) != 0)
    {
      v17 = *(this + 15);
      v18 = *(v17 + 23);
      v19 = v18;
      v20 = *(v17 + 8);
      if ((v18 & 0x80u) == 0)
      {
        v21 = *(v17 + 23);
      }

      else
      {
        v21 = v20;
      }

      if (v21 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
        v18 = *(v17 + 23);
        v20 = *(v17 + 8);
        v3 = *(this + 34);
        v19 = *(v17 + 23);
      }

      else
      {
        v22 = 1;
      }

      if (v19 < 0)
      {
        v18 = v20;
      }

      v4 += v22 + v18 + 1;
    }

    if ((v3 & 0x2000) != 0)
    {
      v23 = *(this + 32);
      if (v23 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 2;
      }

      else
      {
        v24 = 3;
      }

      v4 += v24;
    }
  }

  v25 = *(this + 12);
  if (v25 < 1)
  {
    v27 = 0;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    do
    {
      v28 = *(*(this + 5) + 4 * v26);
      if (v28 >= 0x80)
      {
        v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28);
        v25 = *(this + 12);
      }

      else
      {
        v29 = 1;
      }

      v27 += v29;
      ++v26;
    }

    while (v26 < v25);
  }

  v51 = v25;
  v30 = *(this + 16);
  if (v30 < 1)
  {
    v32 = 0;
  }

  else
  {
    v31 = 0;
    v32 = 0;
    do
    {
      v33 = *(*(this + 7) + 4 * v31);
      if (v33 >= 0x80)
      {
        v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
        v30 = *(this + 16);
      }

      else
      {
        v34 = 1;
      }

      v32 += v34;
      ++v31;
    }

    while (v31 < v30);
  }

  v35 = *(this + 20);
  if (v35 < 1)
  {
    v37 = 0;
  }

  else
  {
    v36 = 0;
    v37 = 0;
    do
    {
      v38 = *(*(this + 9) + 4 * v36);
      if (v38 >= 0x80)
      {
        v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38);
        v35 = *(this + 20);
      }

      else
      {
        v39 = 1;
      }

      v37 += v39;
      ++v36;
    }

    while (v36 < v35);
  }

  v40 = *(this + 24);
  if (v40 < 1)
  {
    v42 = 0;
  }

  else
  {
    v41 = 0;
    v42 = 0;
    do
    {
      v43 = *(*(this + 11) + 4 * v41);
      if (v43 >= 0x80)
      {
        v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43);
        v40 = *(this + 24);
      }

      else
      {
        v44 = 1;
      }

      v42 += v44;
      ++v41;
    }

    while (v41 < v40);
  }

  v52 = v4;
  v45 = *(this + 28);
  if (v45 < 1)
  {
    v47 = 0;
  }

  else
  {
    v46 = 0;
    v47 = 0;
    do
    {
      v48 = *(*(this + 13) + 4 * v46);
      if (v48 >= 0x80)
      {
        v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48);
        v45 = *(this + 28);
      }

      else
      {
        v49 = 1;
      }

      v47 += v49;
      ++v46;
    }

    while (v46 < v45);
  }

  result = (v27 + v52 + v51 + v32 + v30 + v37 + v35 + v42 + v40 + v47 + v45);
  *(this + 33) = result;
  return result;
}

void awd::metrics::HomeKitIPCameraNetworkStatistics::CheckTypeAndMergeFrom(awd::metrics::HomeKitIPCameraNetworkStatistics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::HomeKitIPCameraNetworkStatistics::CheckTypeAndMergeFrom();
  }

  awd::metrics::HomeKitIPCameraNetworkStatistics::MergeFrom(this, lpsrc);
}

void awd::metrics::HomeKitIPCameraNetworkStatistics::CopyFrom(awd::metrics::HomeKitIPCameraNetworkStatistics *this, const awd::metrics::HomeKitIPCameraNetworkStatistics *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::HomeKitIPCameraNetworkStatistics::MergeFrom(this, a2);
  }
}

double awd::metrics::HomeKitIPCameraNetworkStatistics::Swap(awd::metrics::HomeKitIPCameraNetworkStatistics *this, awd::metrics::HomeKitIPCameraNetworkStatistics *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
    v3 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    v4 = *(a2 + 6);
    *(a2 + 5) = v3;
    v5 = *(this + 6);
    *(this + 6) = v4;
    *(a2 + 6) = v5;
    v6 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    v7 = *(a2 + 8);
    *(a2 + 7) = v6;
    v8 = *(this + 8);
    *(this + 8) = v7;
    *(a2 + 8) = v8;
    v9 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    v10 = *(a2 + 10);
    *(a2 + 9) = v9;
    v11 = *(this + 10);
    *(this + 10) = v10;
    *(a2 + 10) = v11;
    v12 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    v13 = *(a2 + 12);
    *(a2 + 11) = v12;
    v14 = *(this + 12);
    *(this + 12) = v13;
    *(a2 + 12) = v14;
    v15 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    result = *(a2 + 14);
    *(a2 + 13) = v15;
    v17 = *(this + 14);
    *(this + 14) = result;
    *(a2 + 14) = v17;
    v18 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v18;
    LODWORD(v18) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v18;
    LODWORD(v18) = *(this + 34);
    *(this + 34) = *(a2 + 34);
    *(a2 + 34) = v18;
    LODWORD(v18) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v18;
  }

  return result;
}

uint64_t awd::metrics::FaceTimeBasebandStats::FaceTimeBasebandStats(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = OUTLINED_FUNCTION_0(a1);
  if (v6)
  {
    MEMORY[0x29C25A1D0](v6, v3);
  }

  if (*a2)
  {
    MEMORY[0x29C25A1D0](*a2, v3);
  }

  result = *a3;
  if (*a3)
  {

    JUMPOUT(0x29C25A1D0);
  }

  return result;
}

uint64_t awd::metrics::FaceTimeVideoStatus::FaceTimeVideoStatus(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = OUTLINED_FUNCTION_0(a1);
  if (v6)
  {
    MEMORY[0x29C25A1D0](v6, v3);
  }

  if (*a2)
  {
    MEMORY[0x29C25A1D0](*a2, v3);
  }

  result = *a3;
  if (*a3)
  {

    JUMPOUT(0x29C25A1D0);
  }

  return result;
}

uint64_t awd::metrics::FaceTimeCallAggregatedReport::FaceTimeCallAggregatedReport(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v8 = OUTLINED_FUNCTION_0(a1);
  if (v8)
  {
    MEMORY[0x29C25A1D0](v8, v4);
  }

  if (*a2)
  {
    MEMORY[0x29C25A1D0](*a2, v4);
  }

  if (*a3)
  {
    MEMORY[0x29C25A1D0](*a3, v4);
  }

  result = *a4;
  if (*a4)
  {

    JUMPOUT(0x29C25A1D0);
  }

  return result;
}

uint64_t awd::metrics::HomeKitIPCameraNetworkStatistics::HomeKitIPCameraNetworkStatistics(uint64_t *a1, void *a2, void *a3, uint64_t *a4)
{
  v7 = *a1;
  if (v7)
  {
    MEMORY[0x29C25A1D0](v7, 0x1000C8052888210);
  }

  if (*a2)
  {
    MEMORY[0x29C25A1D0](*a2, 0x1000C8052888210);
  }

  if (*a3)
  {
    MEMORY[0x29C25A1D0](*a3, 0x1000C8052888210);
  }

  result = *a4;
  if (*a4)
  {

    JUMPOUT(0x29C25A1D0);
  }

  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}