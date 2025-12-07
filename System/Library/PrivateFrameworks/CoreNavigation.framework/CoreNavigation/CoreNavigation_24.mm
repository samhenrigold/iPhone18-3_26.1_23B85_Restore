void CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity *a2)
{
  v3 = this;
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v23);
  }

  v4 = *(a2 + 23);
  if (!v4)
  {
    goto LABEL_21;
  }

  if (v4)
  {
    v5 = *(a2 + 2);
    this = CoreNavigation::CLP::LogEntry::PrivateData::DominantMotionModeType_IsValid(v5);
    if ((this & 1) == 0)
    {
      __assert_rtn("set_type", "CoreNavigationCLPPrivateDataShared.pb.h", 17827, "::CoreNavigation::CLP::LogEntry::PrivateData::DominantMotionModeType_IsValid(value)");
    }

    *(v3 + 23) |= 1u;
    *(v3 + 2) = v5;
    v4 = *(a2 + 23);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(a2 + 3);
    if (v6 >= 4)
    {
      __assert_rtn("set_confidence", "CoreNavigationCLPPrivateDataShared.pb.h", 17850, "::CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity_ConfidenceType_IsValid(value)");
    }

    *(v3 + 23) |= 2u;
    *(v3 + 3) = v6;
    v4 = *(a2 + 23);
  }

  if ((v4 & 4) != 0)
  {
    v7 = *(a2 + 4);
    if (v7 >= 3)
    {
      __assert_rtn("set_mounted_state", "CoreNavigationCLPPrivateDataShared.pb.h", 17873, "::CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity_MountedStateType_IsValid(value)");
    }

    *(v3 + 23) |= 4u;
    *(v3 + 4) = v7;
    v4 = *(a2 + 23);
  }

  if ((v4 & 8) != 0)
  {
    v8 = *(a2 + 5);
    if (v8 >= 4)
    {
      __assert_rtn("set_mounted_confidence", "CoreNavigationCLPPrivateDataShared.pb.h", 17896, "::CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity_ConfidenceType_IsValid(value)");
    }

    *(v3 + 23) |= 8u;
    *(v3 + 5) = v8;
    v4 = *(a2 + 23);
  }

  if ((v4 & 0x10) == 0)
  {
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_18;
    }

LABEL_53:
    v21 = *(a2 + 6);
    *(v3 + 23) |= 0x20u;
    *(v3 + 6) = v21;
    v4 = *(a2 + 23);
    if ((v4 & 0x40) == 0)
    {
LABEL_19:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    goto LABEL_54;
  }

  v20 = *(a2 + 28);
  *(v3 + 23) |= 0x10u;
  *(v3 + 28) = v20;
  v4 = *(a2 + 23);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_18:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_19;
  }

LABEL_54:
  v22 = *(a2 + 4);
  *(v3 + 23) |= 0x40u;
  *(v3 + 4) = v22;
  v4 = *(a2 + 23);
  if ((v4 & 0x80) != 0)
  {
LABEL_20:
    v9 = *(a2 + 29);
    *(v3 + 23) |= 0x80u;
    *(v3 + 29) = v9;
    v4 = *(a2 + 23);
  }

LABEL_21:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v10 = *(a2 + 12);
    if (v10 >= 4)
    {
      __assert_rtn("set_exit_state", "CoreNavigationCLPPrivateDataShared.pb.h", 18007, "::CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity_VehicleExitStateType_IsValid(value)");
    }

    *(v3 + 23) |= 0x100u;
    *(v3 + 12) = v10;
    v4 = *(a2 + 23);
  }

  if ((v4 & 0x200) != 0)
  {
    v11 = *(a2 + 5);
    *(v3 + 23) |= 0x200u;
    *(v3 + 5) = v11;
    v4 = *(a2 + 23);
    if ((v4 & 0x400) == 0)
    {
LABEL_27:
      if ((v4 & 0x800) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_35;
    }
  }

  else if ((v4 & 0x400) == 0)
  {
    goto LABEL_27;
  }

  v12 = *(a2 + 7);
  *(v3 + 23) |= 0x400u;
  *(v3 + 7) = v12;
  v4 = *(a2 + 23);
  if ((v4 & 0x800) == 0)
  {
LABEL_28:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_37;
  }

LABEL_35:
  v13 = *(a2 + 13);
  this = CoreNavigation::CLP::LogEntry::PrivateData::DominantMotionModeType_IsValid(v13);
  if ((this & 1) == 0)
  {
    __assert_rtn("set_raw_type", "CoreNavigationCLPPrivateDataShared.pb.h", 18074, "::CoreNavigation::CLP::LogEntry::PrivateData::DominantMotionModeType_IsValid(value)");
  }

  *(v3 + 23) |= 0x800u;
  *(v3 + 13) = v13;
  v4 = *(a2 + 23);
  if ((v4 & 0x1000) == 0)
  {
LABEL_29:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_39;
  }

LABEL_37:
  v14 = *(a2 + 18);
  if (v14 >= 4)
  {
    __assert_rtn("set_raw_confidence", "CoreNavigationCLPPrivateDataShared.pb.h", 18097, "::CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity_ConfidenceType_IsValid(value)");
  }

  *(v3 + 23) |= 0x1000u;
  *(v3 + 18) = v14;
  v4 = *(a2 + 23);
  if ((v4 & 0x2000) == 0)
  {
LABEL_30:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_44;
  }

LABEL_39:
  *(v3 + 23) |= 0x2000u;
  v15 = *(v3 + 8);
  if (!v15)
  {
    operator new();
  }

  v16 = *(a2 + 8);
  if (!v16)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::default_instance_ + 64);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v15, v16);
  v4 = *(a2 + 23);
  if ((v4 & 0x4000) == 0)
  {
LABEL_31:
    if ((v4 & 0x8000) == 0)
    {
      return;
    }

    goto LABEL_49;
  }

LABEL_44:
  *(v3 + 23) |= 0x4000u;
  v17 = *(v3 + 10);
  if (!v17)
  {
    operator new();
  }

  v18 = *(a2 + 10);
  if (!v18)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v18 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::default_instance_ + 80);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v17, v18);
  if ((*(a2 + 23) & 0x8000) != 0)
  {
LABEL_49:
    v19 = *(a2 + 19);
    if (v19 >= 6)
    {
      __assert_rtn("set_vehicular_confidence", "CoreNavigationCLPPrivateDataShared.pb.h", 18204, "::CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity_VehicularConfidenceType_IsValid(value)");
    }

    *(v3 + 23) |= 0x8000u;
    *(v3 + 19) = v19;
  }
}

void sub_1D0CCAF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::~MotionActivity(CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity *this)
{
  *this = &unk_1F4CD9FF0;
  CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::~MotionActivity(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::default_instance_ != this)
  {
    v2 = *(this + 8);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 10);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::Clear(uint64_t this)
{
  v1 = *(this + 92);
  if (v1)
  {
    *(this + 32) = 0;
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 22) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 72) = 0;
    *(this + 48) = 0;
    *(this + 56) = 0;
    *(this + 40) = 0;
    if ((v1 & 0x2000) != 0)
    {
      v2 = *(this + 64);
      if (v2)
      {
        if (*(v2 + 36))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 36) = 0;
        v1 = *(this + 92);
      }
    }

    if ((v1 & 0x4000) != 0)
    {
      v3 = *(this + 80);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
      }
    }

    *(this + 76) = 0;
  }

  *(this + 92) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (2)
  {
    v5 = *(a2 + 1);
    if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
      *(a2 + 1) = v5 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v67[0] = 0;
        v8 = *(a2 + 1);
        if (v8 >= *(a2 + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v67);
          if (!result)
          {
            return result;
          }

          v9 = v67[0];
        }

        else
        {
          *(a2 + 1) = v8 + 1;
        }

        if (CoreNavigation::CLP::LogEntry::PrivateData::DominantMotionModeType_IsValid(v9))
        {
          *(this + 23) |= 1u;
          *(this + 2) = v9;
        }

        v28 = *(a2 + 1);
        v24 = *(a2 + 2);
        if (v28 < v24 && *v28 == 16)
        {
          v25 = v28 + 1;
          *(a2 + 1) = v25;
          goto LABEL_51;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v25 = *(a2 + 1);
        v24 = *(a2 + 2);
LABEL_51:
        v67[0] = 0;
        if (v25 >= v24 || (v29 = *v25, (v29 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v67);
          if (!result)
          {
            return result;
          }

          v29 = v67[0];
        }

        else
        {
          *(a2 + 1) = v25 + 1;
        }

        if (v29 <= 3)
        {
          *(this + 23) |= 2u;
          *(this + 3) = v29;
        }

        v30 = *(a2 + 1);
        v16 = *(a2 + 2);
        if (v30 >= v16 || *v30 != 24)
        {
          continue;
        }

        v17 = v30 + 1;
        *(a2 + 1) = v17;
LABEL_61:
        v67[0] = 0;
        if (v17 >= v16 || (v31 = *v17, (v31 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v67);
          if (!result)
          {
            return result;
          }

          v31 = v67[0];
        }

        else
        {
          *(a2 + 1) = v17 + 1;
        }

        if (v31 <= 2)
        {
          *(this + 23) |= 4u;
          *(this + 4) = v31;
        }

        v32 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v32 >= v20 || *v32 != 32)
        {
          continue;
        }

        v21 = v32 + 1;
        *(a2 + 1) = v21;
LABEL_71:
        v67[0] = 0;
        if (v21 >= v20 || (v33 = *v21, (v33 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v67);
          if (!result)
          {
            return result;
          }

          v33 = v67[0];
        }

        else
        {
          *(a2 + 1) = v21 + 1;
        }

        if (v33 <= 3)
        {
          *(this + 23) |= 8u;
          *(this + 5) = v33;
        }

        v34 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v34 >= v12 || *v34 != 40)
        {
          continue;
        }

        v13 = v34 + 1;
        *(a2 + 1) = v13;
LABEL_81:
        v67[0] = 0;
        if (v13 >= v12 || (v35 = *v13, (v35 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v67);
          if (!result)
          {
            return result;
          }

          v35 = v67[0];
          v36 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v36 = v13 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 28) = v35 != 0;
        *(this + 23) |= 0x10u;
        if (v36 >= v12 || *v36 != 53)
        {
          continue;
        }

        *(a2 + 1) = v36 + 1;
LABEL_89:
        v67[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v67) & 1) == 0)
        {
          return 0;
        }

        *(this + 6) = v67[0];
        *(this + 23) |= 0x20u;
        v37 = *(a2 + 1);
        if (v37 >= *(a2 + 2) || *v37 != 57)
        {
          continue;
        }

        *(a2 + 1) = v37 + 1;
LABEL_93:
        *v67 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v67) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v67;
        *(this + 23) |= 0x40u;
        v38 = *(a2 + 1);
        v22 = *(a2 + 2);
        if (v38 >= v22 || *v38 != 64)
        {
          continue;
        }

        v23 = v38 + 1;
        *(a2 + 1) = v23;
LABEL_97:
        v67[0] = 0;
        if (v23 >= v22 || (v39 = *v23, (v39 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v67);
          if (!result)
          {
            return result;
          }

          v39 = v67[0];
          v40 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          v40 = v23 + 1;
          *(a2 + 1) = v40;
        }

        *(this + 29) = v39 != 0;
        *(this + 23) |= 0x80u;
        if (v40 >= v22 || *v40 != 72)
        {
          continue;
        }

        v26 = v40 + 1;
        *(a2 + 1) = v26;
LABEL_105:
        v67[0] = 0;
        if (v26 >= v22 || (v41 = *v26, (v41 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v67);
          if (!result)
          {
            return result;
          }

          v41 = v67[0];
        }

        else
        {
          *(a2 + 1) = v26 + 1;
        }

        if (v41 <= 3)
        {
          *(this + 23) |= 0x100u;
          *(this + 12) = v41;
        }

        v42 = *(a2 + 1);
        if (v42 >= *(a2 + 2) || *v42 != 81)
        {
          continue;
        }

        *(a2 + 1) = v42 + 1;
LABEL_115:
        *v67 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v67) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = *v67;
        *(this + 23) |= 0x200u;
        v43 = *(a2 + 1);
        if (v43 >= *(a2 + 2) || *v43 != 89)
        {
          continue;
        }

        *(a2 + 1) = v43 + 1;
LABEL_119:
        *v67 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v67) & 1) == 0)
        {
          return 0;
        }

        *(this + 7) = *v67;
        *(this + 23) |= 0x400u;
        v44 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v44 >= v10 || *v44 != 96)
        {
          continue;
        }

        v11 = v44 + 1;
        *(a2 + 1) = v11;
LABEL_123:
        v67[0] = 0;
        if (v11 >= v10 || (v45 = *v11, (v45 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v67);
          if (!result)
          {
            return result;
          }

          v45 = v67[0];
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (CoreNavigation::CLP::LogEntry::PrivateData::DominantMotionModeType_IsValid(v45))
        {
          *(this + 23) |= 0x800u;
          *(this + 13) = v45;
        }

        v46 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v46 >= v14 || *v46 != 104)
        {
          continue;
        }

        v15 = v46 + 1;
        *(a2 + 1) = v15;
LABEL_133:
        v67[0] = 0;
        if (v15 >= v14 || (v47 = *v15, (v47 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v67);
          if (!result)
          {
            return result;
          }

          v47 = v67[0];
        }

        else
        {
          *(a2 + 1) = v15 + 1;
        }

        if (v47 <= 3)
        {
          *(this + 23) |= 0x1000u;
          *(this + 18) = v47;
        }

        v48 = *(a2 + 1);
        if (v48 >= *(a2 + 2) || *v48 != 114)
        {
          continue;
        }

        *(a2 + 1) = v48 + 1;
LABEL_143:
        *(this + 23) |= 0x2000u;
        v49 = *(this + 8);
        if (!v49)
        {
          operator new();
        }

        v67[0] = 0;
        v50 = *(a2 + 1);
        if (v50 >= *(a2 + 2) || *v50 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v67))
          {
            return 0;
          }
        }

        else
        {
          v67[0] = *v50;
          *(a2 + 1) = v50 + 1;
        }

        v51 = *(a2 + 14);
        v52 = *(a2 + 15);
        *(a2 + 14) = v51 + 1;
        if (v51 >= v52)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v49, a2, v53) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v54 = *(a2 + 14);
        v55 = __OFSUB__(v54, 1);
        v56 = v54 - 1;
        if (v56 < 0 == v55)
        {
          *(a2 + 14) = v56;
        }

        v57 = *(a2 + 1);
        if (v57 >= *(a2 + 2) || *v57 != 122)
        {
          continue;
        }

        *(a2 + 1) = v57 + 1;
LABEL_157:
        *(this + 23) |= 0x4000u;
        v58 = *(this + 10);
        if (!v58)
        {
          operator new();
        }

        v67[0] = 0;
        v59 = *(a2 + 1);
        if (v59 >= *(a2 + 2) || *v59 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v67))
          {
            return 0;
          }
        }

        else
        {
          v67[0] = *v59;
          *(a2 + 1) = v59 + 1;
        }

        v60 = *(a2 + 14);
        v61 = *(a2 + 15);
        *(a2 + 14) = v60 + 1;
        if (v60 < v61)
        {
          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v58, a2, v62))
          {
            if (*(a2 + 36) == 1)
            {
              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v63 = *(a2 + 14);
              v55 = __OFSUB__(v63, 1);
              v64 = v63 - 1;
              if (v64 < 0 == v55)
              {
                *(a2 + 14) = v64;
              }

              v65 = *(a2 + 1);
              v18 = *(a2 + 2);
              if (v18 - v65 > 1 && *v65 == 128 && v65[1] == 1)
              {
                v19 = (v65 + 2);
                *(a2 + 1) = v19;
LABEL_172:
                v67[0] = 0;
                if (v19 >= v18 || (v66 = *v19, (v66 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v67);
                  if (!result)
                  {
                    return result;
                  }

                  v66 = v67[0];
                }

                else
                {
                  *(a2 + 1) = v19 + 1;
                }

                if (v66 <= 5)
                {
                  *(this + 23) |= 0x8000u;
                  *(this + 19) = v66;
                }

                if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                {
                  *(a2 + 8) = 0;
                  result = 1;
                  *(a2 + 36) = 1;
                  return result;
                }
              }

              continue;
            }
          }
        }

        return 0;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_61;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v21 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_71;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_81;
      case 6u:
        if (v7 == 5)
        {
          goto LABEL_89;
        }

        goto LABEL_40;
      case 7u:
        if (v7 == 1)
        {
          goto LABEL_93;
        }

        goto LABEL_40;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_97;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v26 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_105;
      case 0xAu:
        if (v7 == 1)
        {
          goto LABEL_115;
        }

        goto LABEL_40;
      case 0xBu:
        if (v7 == 1)
        {
          goto LABEL_119;
        }

        goto LABEL_40;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_123;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_133;
      case 0xEu:
        if (v7 == 2)
        {
          goto LABEL_143;
        }

        goto LABEL_40;
      case 0xFu:
        if (v7 == 2)
        {
          goto LABEL_157;
        }

        goto LABEL_40;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_172;
      default:
LABEL_40:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

CoreNavigation::CLP::LogEntry::PrivateData *CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::SerializeWithCachedSizes(CoreNavigation::CLP::LogEntry::PrivateData *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 23);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 2), a2, a4);
    v6 = *(v5 + 23);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 3), a2, a4);
  v6 = *(v5 + 23);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 4), a2, a4);
  v6 = *(v5 + 23);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 5), a2, a4);
  v6 = *(v5 + 23);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 23);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 6), a3);
  v6 = *(v5 + 23);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 4), a3);
  v6 = *(v5 + 23);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 29), a2, a4);
  v6 = *(v5 + 23);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 12), a2, a4);
  v6 = *(v5 + 23);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 5), a3);
  v6 = *(v5 + 23);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 7), a3);
  v6 = *(v5 + 23);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, *(v5 + 13), a2, a4);
  v6 = *(v5 + 23);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xD, *(v5 + 18), a2, a4);
  v6 = *(v5 + 23);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_31:
  v7 = *(v5 + 8);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::default_instance_ + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v7, a2, a4);
  v6 = *(v5 + 23);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      return this;
    }

    goto LABEL_37;
  }

LABEL_34:
  v8 = *(v5 + 10);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::default_instance_ + 80);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, v8, a2, a4);
  if ((*(v5 + 23) & 0x8000) != 0)
  {
LABEL_37:
    v9 = *(v5 + 19);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x10, v9, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity *this, unsigned int a2)
{
  v2 = this;
  v3 = *(this + 23);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_39;
  }

  if (v3)
  {
    this = *(this + 2);
    if ((this & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (this >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
      v4 = this + 1;
      v3 = *(v2 + 23);
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  this = *(v2 + 3);
  if ((this & 0x80000000) != 0)
  {
    v6 = 11;
  }

  else if (this >= 0x80)
  {
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
    v6 = this + 1;
    v3 = *(v2 + 23);
  }

  else
  {
    v6 = 2;
  }

  v4 += v6;
LABEL_19:
  if ((v3 & 4) != 0)
  {
    this = *(v2 + 4);
    if ((this & 0x80000000) != 0)
    {
      v7 = 11;
    }

    else if (this >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
      v7 = this + 1;
      v3 = *(v2 + 23);
    }

    else
    {
      v7 = 2;
    }

    v4 += v7;
    if ((v3 & 8) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  if ((v3 & 8) != 0)
  {
LABEL_28:
    this = *(v2 + 5);
    if ((this & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (this >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
      v8 = this + 1;
      v3 = *(v2 + 23);
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
  }

LABEL_34:
  v9 = ((v3 >> 3) & 2) + v4;
  if ((v3 & 0x20) != 0)
  {
    v9 += 5;
  }

  if ((v3 & 0x40) != 0)
  {
    v9 += 9;
  }

  v5 = v9 + ((v3 >> 6) & 2);
LABEL_39:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_96;
  }

  if ((v3 & 0x100) != 0)
  {
    this = *(v2 + 12);
    if ((this & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (this >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
      v10 = this + 1;
      v3 = *(v2 + 23);
    }

    else
    {
      v10 = 2;
    }

    LODWORD(v5) = v10 + v5;
  }

  v11 = v5 + 9;
  if ((v3 & 0x200) == 0)
  {
    v11 = v5;
  }

  if ((v3 & 0x400) != 0)
  {
    v5 = v11 + 9;
  }

  else
  {
    v5 = v11;
  }

  if ((v3 & 0x800) != 0)
  {
    this = *(v2 + 13);
    if ((this & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else if (this >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
      v12 = this + 1;
      v3 = *(v2 + 23);
    }

    else
    {
      v12 = 2;
    }

    v5 = (v12 + v5);
    if ((v3 & 0x1000) == 0)
    {
LABEL_54:
      if ((v3 & 0x2000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_70;
    }
  }

  else if ((v3 & 0x1000) == 0)
  {
    goto LABEL_54;
  }

  this = *(v2 + 18);
  if ((this & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else if (this >= 0x80)
  {
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
    v13 = this + 1;
    v3 = *(v2 + 23);
  }

  else
  {
    v13 = 2;
  }

  v5 = (v13 + v5);
  if ((v3 & 0x2000) == 0)
  {
LABEL_55:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_80;
  }

LABEL_70:
  v14 = *(v2 + 8);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::default_instance_ + 64);
  }

  v15 = *(v14 + 36);
  v16 = (v15 << 31 >> 31) & 9;
  if ((v15 & 2) != 0)
  {
    v16 += 9;
  }

  if ((v15 & 4) != 0)
  {
    v16 += 9;
  }

  if (*(v14 + 36))
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  *(v14 + 32) = v17;
  v5 = (v5 + v17 + 2);
  v3 = *(v2 + 23);
  if ((v3 & 0x4000) == 0)
  {
LABEL_56:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_90;
  }

LABEL_80:
  v18 = *(v2 + 10);
  if (!v18)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v18 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::default_instance_ + 80);
  }

  v19 = *(v18 + 36);
  v20 = (v19 << 31 >> 31) & 9;
  if ((v19 & 2) != 0)
  {
    v20 += 9;
  }

  if ((v19 & 4) != 0)
  {
    v20 += 9;
  }

  if (*(v18 + 36))
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  *(v18 + 32) = v21;
  v5 = (v5 + v21 + 2);
  if ((*(v2 + 23) & 0x8000) != 0)
  {
LABEL_90:
    v22 = *(v2 + 19);
    if ((v22 & 0x80000000) != 0)
    {
      v23 = 12;
    }

    else if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 2;
    }

    else
    {
      v23 = 3;
    }

    v5 = (v23 + v5);
  }

LABEL_96:
  *(v2 + 22) = v5;
  return v5;
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::Swap(CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity *this, CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    LOBYTE(v5) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v5;
    v6 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v6;
    v7 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v7;
    LOBYTE(v5) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v5;
    v8 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v8;
    v9 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v9;
    result = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = result;
    v11 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v11;
    v12 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v12;
    v13 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v13;
    v14 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v14;
    LODWORD(v14) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v14;
    LODWORD(v14) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v14;
    LODWORD(v14) = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v14;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionState::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::MotionState *CoreNavigation::CLP::LogEntry::PrivateData::MotionState::MotionState(CoreNavigation::CLP::LogEntry::PrivateData::MotionState *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionState *a2)
{
  *this = &unk_1F4CDA068;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::MotionState::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionState::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionState *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      *(this + 8) |= 1u;
      v5 = *(this + 1);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 1);
      if (!v6)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v5, v6);
      v4 = *(a2 + 8);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 6);
    *(this + 8) |= 2u;
    *(this + 6) = v7;
    if ((*(a2 + 8) & 4) == 0)
    {
      return;
    }

LABEL_14:
    *(this + 8) |= 4u;
    v8 = *(this + 2);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::MergeFrom(v8, v9);
  }
}

void sub_1D0CCC468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionState::~MotionState(CoreNavigation::CLP::LogEntry::PrivateData::MotionState *this)
{
  *this = &unk_1F4CDA068;
  CoreNavigation::CLP::LogEntry::PrivateData::MotionState::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::MotionState::~MotionState(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionState::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::MotionState *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionState::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 32);
  if (v2)
  {
    if (*(this + 32))
    {
      v3 = *(this + 8);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(this + 32);
      }
    }

    *(this + 24) = 0;
    if ((v2 & 4) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::Clear(this);
      }
    }
  }

  *(v1 + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::MotionState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if (v8 == 2)
        {
          v13 = *(this + 8);
          goto LABEL_39;
        }

        goto LABEL_18;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 2)
      {
        goto LABEL_18;
      }

      *(this + 8) |= 1u;
      v9 = *(this + 1);
      if (!v9)
      {
        operator new();
      }

      v32 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32))
        {
          return 0;
        }
      }

      else
      {
        v32 = *v10;
        *(a2 + 1) = v10 + 1;
      }

      v14 = *(a2 + 14);
      v15 = *(a2 + 15);
      *(a2 + 14) = v14 + 1;
      if (v14 >= v15)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v9, a2, v16) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v17 = *(a2 + 14);
      v18 = __OFSUB__(v17, 1);
      v19 = v17 - 1;
      if (v19 < 0 == v18)
      {
        *(a2 + 14) = v19;
      }

      v20 = *(a2 + 1);
      v11 = *(a2 + 2);
      if (v20 < v11 && *v20 == 16)
      {
        v12 = v20 + 1;
        *(a2 + 1) = v12;
LABEL_31:
        v31 = 0;
        if (v12 >= v11 || (v21 = *v12, (v21 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31);
          if (!result)
          {
            return result;
          }

          v21 = v31;
          v22 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v22 = v12 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 6) = v21;
        v13 = *(this + 8) | 2;
        *(this + 8) = v13;
        if (v22 < v11 && *v22 == 26)
        {
          *(a2 + 1) = v22 + 1;
LABEL_39:
          *(this + 8) = v13 | 4;
          v24 = *(this + 2);
          if (!v24)
          {
            operator new();
          }

          v33 = 0;
          v25 = *(a2 + 1);
          if (v25 >= *(a2 + 2) || *v25 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33))
            {
              return 0;
            }
          }

          else
          {
            v33 = *v25;
            *(a2 + 1) = v25 + 1;
          }

          v26 = *(a2 + 14);
          v27 = *(a2 + 15);
          *(a2 + 14) = v26 + 1;
          if (v26 >= v27)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::MergePartialFromCodedStream(v24, a2, v28) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v29 = *(a2 + 14);
          v18 = __OFSUB__(v29, 1);
          v30 = v29 - 1;
          if (v30 < 0 == v18)
          {
            *(a2 + 14) = v30;
          }

          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v12 = *(a2 + 1);
      v11 = *(a2 + 2);
      goto LABEL_31;
    }

LABEL_18:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 24), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_9;
  }

  v7 = *(this + 8);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_9:
  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionState::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::MotionState *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_28;
  }

  if (*(this + 32))
  {
    v5 = *(this + 1);
    if (!v5)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 8);
    }

    v6 = *(v5 + 36);
    if (*(v5 + 36))
    {
      v7 = (v6 << 31 >> 31) & 9;
      if ((v6 & 2) != 0)
      {
        v7 += 9;
      }

      if ((v6 & 4) != 0)
      {
        v6 = v7 + 9;
      }

      else
      {
        v6 = v7;
      }
    }

    *(v5 + 32) = v6;
    v4 = (v6 + 2);
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  v8 = *(this + 6);
  if ((v8 & 0x80000000) != 0)
  {
    v9 = 11;
  }

  else if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v9 = 2;
  }

  v4 = (v9 + v4);
LABEL_21:
  if ((v3 & 4) != 0)
  {
    v10 = *(this + 2);
    if (!v10)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
    }

    v11 = CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::ByteSize(v10, a2);
    v12 = v11;
    if (v11 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
    }

    else
    {
      v13 = 1;
    }

    v4 = (v4 + v12 + v13 + 1);
  }

LABEL_28:
  *(this + 7) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionState::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::MotionState::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionState::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionState *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::MotionState::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionState::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::MotionState *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate *CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::WorkoutUpdate(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate *this, const CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate *a2)
{
  *this = &unk_1F4CDA0E0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate *this, const CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate *a2)
{
  v3 = this;
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 4);
      this = CoreNavigation::CLP::LogEntry::PrivateData::DominantMotionModeType_IsValid(v5);
      if ((this & 1) == 0)
      {
        __assert_rtn("set_activity_type", "CoreNavigationCLPPrivateDataShared.pb.h", 18341, "::CoreNavigation::CLP::LogEntry::PrivateData::DominantMotionModeType_IsValid(value)");
      }

      *(v3 + 9) |= 1u;
      *(v3 + 4) = v5;
      v4 = *(a2 + 9);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(v3 + 9) |= 2u;
      *(v3 + 1) = v6;
      v4 = *(a2 + 9);
      if ((v4 & 4) == 0)
      {
LABEL_9:
        if ((v4 & 8) == 0)
        {
          return;
        }

        goto LABEL_17;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    *(v3 + 9) |= 4u;
    v7 = *(v3 + 3);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 3);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::default_instance_ + 24);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v7, v8);
    if ((*(a2 + 9) & 8) != 0)
    {
LABEL_17:
      v9 = *(a2 + 5);
      if ((CoreNavigation::CLP::LogEntry::PrivateData::DominantMotionModeType_IsValid(v9) & 1) == 0)
      {
        __assert_rtn("set_predicted_workout_type", "CoreNavigationCLPPrivateDataShared.pb.h", 18428, "::CoreNavigation::CLP::LogEntry::PrivateData::DominantMotionModeType_IsValid(value)");
      }

      *(v3 + 9) |= 8u;
      *(v3 + 5) = v9;
    }
  }
}

void sub_1D0CCCFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::~WorkoutUpdate(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate *this)
{
  *this = &unk_1F4CDA0E0;
  CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::~WorkoutUpdate(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::default_instance_ != this)
  {
    v2 = *(this + 3);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::Clear(uint64_t this)
{
  v1 = *(this + 36);
  if (v1)
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
    if ((v1 & 4) != 0)
    {
      v2 = *(this + 24);
      if (v2)
      {
        if (*(v2 + 36))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 36) = 0;
      }
    }

    *(this + 20) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          v5 = *(a2 + 1);
          if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
            *(a2 + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 <= 2)
          {
            break;
          }

          if (v7 == 3)
          {
            if (v8 == 2)
            {
              v13 = *(this + 9);
              goto LABEL_35;
            }
          }

          else if (v7 == 4 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_49;
          }

LABEL_20:
          if (v8 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_20;
        }

        v27[0] = 0;
        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v27);
          if (!result)
          {
            return result;
          }

          v12 = v27[0];
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (CoreNavigation::CLP::LogEntry::PrivateData::DominantMotionModeType_IsValid(v12))
        {
          *(this + 9) |= 1u;
          *(this + 4) = v12;
        }

        v15 = *(a2 + 1);
        if (v15 < *(a2 + 2) && *v15 == 17)
        {
          *(a2 + 1) = v15 + 1;
          goto LABEL_31;
        }
      }

      if (v7 != 2 || v8 != 1)
      {
        goto LABEL_20;
      }

LABEL_31:
      *v27 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = *v27;
      v13 = *(this + 9) | 2;
      *(this + 9) = v13;
      v16 = *(a2 + 1);
    }

    while (v16 >= *(a2 + 2) || *v16 != 26);
    *(a2 + 1) = v16 + 1;
LABEL_35:
    *(this + 9) = v13 | 4;
    v17 = *(this + 3);
    if (!v17)
    {
      operator new();
    }

    v27[0] = 0;
    v18 = *(a2 + 1);
    if (v18 >= *(a2 + 2) || *v18 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v27))
      {
        return 0;
      }
    }

    else
    {
      v27[0] = *v18;
      *(a2 + 1) = v18 + 1;
    }

    v19 = *(a2 + 14);
    v20 = *(a2 + 15);
    *(a2 + 14) = v19 + 1;
    if (v19 >= v20)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v17, a2, v21) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v22 = *(a2 + 14);
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (v24 < 0 == v23)
    {
      *(a2 + 14) = v24;
    }

    v25 = *(a2 + 1);
    v9 = *(a2 + 2);
    if (v25 < v9 && *v25 == 32)
    {
      v10 = v25 + 1;
      *(a2 + 1) = v10;
LABEL_49:
      v27[0] = 0;
      if (v10 >= v9 || (v26 = *v10, (v26 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v27);
        if (!result)
        {
          return result;
        }

        v26 = v27[0];
      }

      else
      {
        *(a2 + 1) = v10 + 1;
      }

      if (CoreNavigation::CLP::LogEntry::PrivateData::DominantMotionModeType_IsValid(v26))
      {
        *(this + 9) |= 8u;
        *(this + 5) = v26;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }
  }
}

CoreNavigation::CLP::LogEntry::PrivateData *CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::SerializeWithCachedSizes(CoreNavigation::CLP::LogEntry::PrivateData *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 9);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 4), a2, a4);
    v6 = *(v5 + 9);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 1), a3);
  v6 = *(v5 + 9);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_8:
  v7 = *(v5 + 3);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
  if ((*(v5 + 9) & 8) != 0)
  {
LABEL_11:
    v8 = *(v5 + 5);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, v8, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate *this, unsigned int a2)
{
  v2 = this;
  LOBYTE(v3) = *(this + 36);
  if (v3)
  {
    if (*(this + 36))
    {
      this = *(this + 4);
      if ((this & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (this >= 0x80)
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
        v4 = this + 1;
        v3 = *(v2 + 9);
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 4) != 0)
    {
      v6 = *(v2 + 3);
      if (!v6)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::default_instance_ + 24);
      }

      v7 = *(v6 + 36);
      if (*(v6 + 36))
      {
        v8 = (v7 << 31 >> 31) & 9;
        if ((v7 & 2) != 0)
        {
          v8 += 9;
        }

        if ((v7 & 4) != 0)
        {
          v7 = v8 + 9;
        }

        else
        {
          v7 = v8;
        }
      }

      *(v6 + 32) = v7;
      v5 = (v5 + v7 + 2);
      v3 = *(v2 + 9);
    }

    if ((v3 & 8) != 0)
    {
      v9 = *(v2 + 5);
      if ((v9 & 0x80000000) != 0)
      {
        v10 = 11;
      }

      else if (v9 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      }

      else
      {
        v10 = 2;
      }

      v5 = (v10 + v5);
    }
  }

  else
  {
    v5 = 0;
  }

  *(v2 + 8) = v5;
  return v5;
}

void CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate *this, const CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::Swap(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate *this, CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    result = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = result;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
    LODWORD(v4) = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    LODWORD(v4) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v4;
    LODWORD(v4) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v4;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver *CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::MotionStateObserver(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver *a2)
{
  *this = &unk_1F4CDA158;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      *(this + 8) |= 1u;
      v5 = *(this + 1);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 1);
      if (!v6)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v5, v6);
      v4 = *(a2 + 8);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 6);
    *(this + 8) |= 2u;
    *(this + 6) = v7;
    if ((*(a2 + 8) & 4) == 0)
    {
      return;
    }

LABEL_14:
    *(this + 8) |= 4u;
    v8 = *(this + 2);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::MergeFrom(v8, v9);
  }
}

void sub_1D0CCDA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::~MotionStateObserver(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver *this)
{
  *this = &unk_1F4CDA158;
  CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::~MotionStateObserver(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 32);
  if (v2)
  {
    if (*(this + 32))
    {
      v3 = *(this + 8);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(this + 32);
      }
    }

    *(this + 24) = 0;
    if ((v2 & 4) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::Clear(this);
      }
    }
  }

  *(v1 + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if (v8 == 2)
        {
          v13 = *(this + 8);
          goto LABEL_39;
        }

        goto LABEL_18;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 2)
      {
        goto LABEL_18;
      }

      *(this + 8) |= 1u;
      v9 = *(this + 1);
      if (!v9)
      {
        operator new();
      }

      v32 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32))
        {
          return 0;
        }
      }

      else
      {
        v32 = *v10;
        *(a2 + 1) = v10 + 1;
      }

      v14 = *(a2 + 14);
      v15 = *(a2 + 15);
      *(a2 + 14) = v14 + 1;
      if (v14 >= v15)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v9, a2, v16) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v17 = *(a2 + 14);
      v18 = __OFSUB__(v17, 1);
      v19 = v17 - 1;
      if (v19 < 0 == v18)
      {
        *(a2 + 14) = v19;
      }

      v20 = *(a2 + 1);
      v11 = *(a2 + 2);
      if (v20 < v11 && *v20 == 16)
      {
        v12 = v20 + 1;
        *(a2 + 1) = v12;
LABEL_31:
        v31 = 0;
        if (v12 >= v11 || (v21 = *v12, (v21 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31);
          if (!result)
          {
            return result;
          }

          v21 = v31;
          v22 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v22 = v12 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 6) = v21;
        v13 = *(this + 8) | 2;
        *(this + 8) = v13;
        if (v22 < v11 && *v22 == 26)
        {
          *(a2 + 1) = v22 + 1;
LABEL_39:
          *(this + 8) = v13 | 4;
          v24 = *(this + 2);
          if (!v24)
          {
            operator new();
          }

          v33 = 0;
          v25 = *(a2 + 1);
          if (v25 >= *(a2 + 2) || *v25 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33))
            {
              return 0;
            }
          }

          else
          {
            v33 = *v25;
            *(a2 + 1) = v25 + 1;
          }

          v26 = *(a2 + 14);
          v27 = *(a2 + 15);
          *(a2 + 14) = v26 + 1;
          if (v26 >= v27)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::MergePartialFromCodedStream(v24, a2, v28) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v29 = *(a2 + 14);
          v18 = __OFSUB__(v29, 1);
          v30 = v29 - 1;
          if (v30 < 0 == v18)
          {
            *(a2 + 14) = v30;
          }

          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v12 = *(a2 + 1);
      v11 = *(a2 + 2);
      goto LABEL_31;
    }

LABEL_18:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 24), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_9;
  }

  v7 = *(this + 8);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_9:
  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_28;
  }

  if (*(this + 32))
  {
    v5 = *(this + 1);
    if (!v5)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 8);
    }

    v6 = *(v5 + 36);
    if (*(v5 + 36))
    {
      v7 = (v6 << 31 >> 31) & 9;
      if ((v6 & 2) != 0)
      {
        v7 += 9;
      }

      if ((v6 & 4) != 0)
      {
        v6 = v7 + 9;
      }

      else
      {
        v6 = v7;
      }
    }

    *(v5 + 32) = v6;
    v4 = (v6 + 2);
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  v8 = *(this + 6);
  if ((v8 & 0x80000000) != 0)
  {
    v9 = 11;
  }

  else if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v9 = 2;
  }

  v4 = (v9 + v4);
LABEL_21:
  if ((v3 & 4) != 0)
  {
    v10 = *(this + 2);
    if (!v10)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
    }

    v11 = CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::ByteSize(v10, a2);
    v12 = v11;
    if (v11 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
    }

    else
    {
      v13 = 1;
    }

    v4 = (v4 + v12 + v13 + 1);
  }

LABEL_28:
  *(this + 7) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x1E69E5958];
  *(this + 8) = MEMORY[0x1E69E5958];
  *(this + 16) = v1;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings *CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings::WorkoutSettings(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings *this, const CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings *a2)
{
  v3 = MEMORY[0x1E69E5958];
  *this = &unk_1F4CDA1D0;
  *(this + 1) = v3;
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings *this, const CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (!v4)
  {
    return;
  }

  v5 = MEMORY[0x1E69E5958];
  if (*(a2 + 40))
  {
    v6 = *(a2 + 1);
    *(this + 10) |= 1u;
    v7 = *(this + 1);
    if (v7 == v5)
    {
      operator new();
    }

    std::string::operator=(v7, v6);
    v4 = *(a2 + 10);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_16:
      v10 = *(a2 + 6);
      if (v10 >= 0x43)
      {
        __assert_rtn("set_workout_type", "CoreNavigationCLPPrivateDataShared.pb.h", 18705, "::CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings_WorkoutType_IsValid(value)");
      }

      *(this + 10) |= 4u;
      *(this + 6) = v10;
      v4 = *(a2 + 10);
      if ((v4 & 8) == 0)
      {
LABEL_8:
        if ((v4 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  else if ((*(a2 + 40) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 2);
  *(this + 10) |= 2u;
  v9 = *(this + 2);
  if (v9 == v5)
  {
    operator new();
  }

  std::string::operator=(v9, v8);
  v4 = *(a2 + 10);
  if ((v4 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v4 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_18:
  v11 = *(a2 + 7);
  if (v11 >= 5)
  {
    __assert_rtn("set_workout_location_type", "CoreNavigationCLPPrivateDataShared.pb.h", 18728, "::CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings_WorkoutLocationType_IsValid(value)");
  }

  *(this + 10) |= 8u;
  *(this + 7) = v11;
  if ((*(a2 + 10) & 0x10) != 0)
  {
LABEL_20:
    v12 = *(a2 + 8);
    if (v12 >= 3)
    {
      __assert_rtn("set_workout_mode", "CoreNavigationCLPPrivateDataShared.pb.h", 18751, "::CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings_WorkoutMode_IsValid(value)");
    }

    *(this + 10) |= 0x10u;
    *(this + 8) = v12;
  }
}

void sub_1D0CCE668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings::~WorkoutSettings(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings *this)
{
  *this = &unk_1F4CDA1D0;
  CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings::~WorkoutSettings(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings *this)
{
  v1 = this;
  v2 = *(this + 1);
  v3 = MEMORY[0x1E69E5958];
  if (v2 != MEMORY[0x1E69E5958] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x1D387ECA0](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 2);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x1D387ECA0](v5, 0x1012C40EC159624);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings::Clear(uint64_t this)
{
  if (*(this + 40))
  {
    v1 = MEMORY[0x1E69E5958];
    if (*(this + 40))
    {
      v2 = *(this + 8);
      if (v2 != MEMORY[0x1E69E5958])
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

    if ((*(this + 40) & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3 != v1)
      {
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    *(this + 24) = 0;
    *(this + 32) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x1E69E5958];
  while (1)
  {
    while (1)
    {
      while (1)
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

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 != 1)
        {
          if (v8 != 2 || v9 != 2)
          {
            goto LABEL_22;
          }

          goto LABEL_31;
        }

        if (v9 != 2)
        {
          goto LABEL_22;
        }

        *(this + 10) |= 1u;
        if (*(this + 1) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v16 = *(a2 + 1);
        if (v16 < *(a2 + 2) && *v16 == 18)
        {
          *(a2 + 1) = v16 + 1;
LABEL_31:
          *(this + 10) |= 2u;
          if (*(this + 2) == v5)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v17 = *(a2 + 1);
          v12 = *(a2 + 2);
          if (v17 < v12 && *v17 == 24)
          {
            v13 = v17 + 1;
            *(a2 + 1) = v13;
LABEL_37:
            v26 = 0;
            if (v13 >= v12 || (v18 = *v13, (v18 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26);
              if (!result)
              {
                return result;
              }

              v18 = v26;
            }

            else
            {
              *(a2 + 1) = v13 + 1;
            }

            if (v18 <= 0x42)
            {
              *(this + 10) |= 4u;
              *(this + 6) = v18;
            }

            v19 = *(a2 + 1);
            v14 = *(a2 + 2);
            if (v19 < v14 && *v19 == 32)
            {
              v15 = v19 + 1;
              *(a2 + 1) = v15;
              goto LABEL_47;
            }
          }
        }
      }

      if (v8 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_37;
      }

      if (v8 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_22;
      }

      v15 = *(a2 + 1);
      v14 = *(a2 + 2);
LABEL_47:
      v25 = 0;
      if (v15 >= v14 || (v20 = *v15, (v20 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
        if (!result)
        {
          return result;
        }

        v20 = v25;
      }

      else
      {
        *(a2 + 1) = v15 + 1;
      }

      if (v20 <= 4)
      {
        *(this + 10) |= 8u;
        *(this + 7) = v20;
      }

      v21 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v21 < v10 && *v21 == 40)
      {
        v11 = v21 + 1;
        *(a2 + 1) = v11;
LABEL_57:
        v24 = 0;
        if (v11 >= v10 || (v22 = *v11, (v22 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
          if (!result)
          {
            return result;
          }

          v22 = v24;
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v22 <= 2)
        {
          *(this + 10) |= 0x10u;
          *(this + 8) = v22;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 5 && (TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_57;
    }

LABEL_22:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

unsigned int *CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[10];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = v5[10];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = v5[10];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, v5[7], a2, a4);
    if ((v5[10] & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v5[6], a2, a4);
  v6 = v5[10];
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v7 = v5[8];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_46;
  }

  if ((*(this + 40) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v5 = *(this + 1);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v3 = *(this + 10);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 2;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v4 = (v10 + v6);
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v12 = *(this + 2);
    v13 = *(v12 + 23);
    v14 = v13;
    v15 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = v15;
    }

    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v3 = *(this + 10);
      v14 = *(v12 + 23);
    }

    else
    {
      v17 = 1;
    }

    if (v14 < 0)
    {
      v13 = v15;
    }

    v4 = (v4 + v17 + v13 + 1);
  }

LABEL_24:
  if ((v3 & 4) != 0)
  {
    v18 = *(this + 6);
    if ((v18 & 0x80000000) != 0)
    {
      v19 = 11;
    }

    else if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v3 = *(this + 10);
    }

    else
    {
      v19 = 2;
    }

    v4 = (v19 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_26:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_40;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_26;
  }

  v20 = *(this + 7);
  if ((v20 & 0x80000000) != 0)
  {
    v21 = 11;
  }

  else if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v3 = *(this + 10);
  }

  else
  {
    v21 = 2;
  }

  v4 = (v21 + v4);
  if ((v3 & 0x10) != 0)
  {
LABEL_40:
    v22 = *(this + 8);
    if ((v22 & 0x80000000) != 0)
    {
      v23 = 11;
    }

    else if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    }

    else
    {
      v23 = 2;
    }

    v4 = (v23 + v4);
  }

LABEL_46:
  *(this + 9) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings *this, const CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v3;
    LODWORD(v3) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v3;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent *this)
{
  result = 0.0;
  *(this + 36) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent *CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::WorkoutEvent(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent *this, const CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent *a2)
{
  *this = &unk_1F4CDA248;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent *this, const CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 48))
  {
    *(this + 12) |= 1u;
    v5 = *(this + 1);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 1);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v5, v6);
    v4 = *(a2 + 12);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_20:
      v9 = *(a2 + 10);
      if (v9 >= 0x13)
      {
        __assert_rtn("set_event_type", "CoreNavigationCLPPrivateDataShared.pb.h", 18862, "::CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent_EventType_IsValid(value)");
      }

      *(this + 12) |= 4u;
      *(this + 10) = v9;
      v4 = *(a2 + 12);
      if ((v4 & 8) == 0)
      {
LABEL_8:
        if ((v4 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_27;
      }

      goto LABEL_22;
    }
  }

  else if ((*(a2 + 48) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 12) |= 2u;
  v7 = *(this + 2);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 2);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 16);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v7, v8);
  v4 = *(a2 + 12);
  if ((v4 & 4) != 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  if ((v4 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_22:
  *(this + 12) |= 8u;
  v10 = *(this + 3);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 3);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 24);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v10, v11);
  if ((*(a2 + 12) & 0x10) != 0)
  {
LABEL_27:
    *(this + 12) |= 0x10u;
    v12 = *(this + 4);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 4);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 32);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings::MergeFrom(v12, v13);
  }
}

void sub_1D0CCF3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::~WorkoutEvent(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent *this)
{
  *this = &unk_1F4CDA248;
  CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::~WorkoutEvent(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 3);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 4);
    if (v5)
    {
      v6 = *(*v5 + 8);

      v6();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 48);
  if (v2)
  {
    if (*(this + 48))
    {
      v3 = *(this + 8);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(this + 48);
      }
    }

    if ((v2 & 2) != 0)
    {
      v4 = *(this + 16);
      if (v4)
      {
        if (*(v4 + 36))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 36) = 0;
        v2 = *(this + 48);
      }
    }

    *(this + 40) = 0;
    if ((v2 & 8) != 0)
    {
      v5 = *(this + 24);
      if (v5)
      {
        if (*(v5 + 36))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
        }

        *(v5 + 36) = 0;
        v2 = *(this + 48);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      this = *(this + 32);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings::Clear(this);
      }
    }
  }

  *(v1 + 48) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_52;
        }

        if (v7 == 4)
        {
          if (v8 != 2)
          {
            goto LABEL_21;
          }

LABEL_62:
          *(this + 12) |= 8u;
          v31 = *(this + 3);
          if (!v31)
          {
            operator new();
          }

          v46 = 0;
          v32 = *(a2 + 1);
          if (v32 >= *(a2 + 2) || *v32 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46))
            {
              return 0;
            }
          }

          else
          {
            v46 = *v32;
            *(a2 + 1) = v32 + 1;
          }

          v33 = *(a2 + 14);
          v34 = *(a2 + 15);
          *(a2 + 14) = v33 + 1;
          if (v33 >= v34)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v31, a2, v35) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v36 = *(a2 + 14);
          v17 = __OFSUB__(v36, 1);
          v37 = v36 - 1;
          if (v37 < 0 == v17)
          {
            *(a2 + 14) = v37;
          }

          v38 = *(a2 + 1);
          if (v38 < *(a2 + 2) && *v38 == 42)
          {
            *(a2 + 1) = v38 + 1;
            goto LABEL_76;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 2)
          {
            goto LABEL_21;
          }

LABEL_76:
          *(this + 12) |= 0x10u;
          v39 = *(this + 4);
          if (!v39)
          {
            operator new();
          }

          v46 = 0;
          v40 = *(a2 + 1);
          if (v40 >= *(a2 + 2) || *v40 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46))
            {
              return 0;
            }
          }

          else
          {
            v46 = *v40;
            *(a2 + 1) = v40 + 1;
          }

          v41 = *(a2 + 14);
          v42 = *(a2 + 15);
          *(a2 + 14) = v41 + 1;
          if (v41 >= v42)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings::MergePartialFromCodedStream(v39, a2, v43) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v44 = *(a2 + 14);
          v17 = __OFSUB__(v44, 1);
          v45 = v44 - 1;
          if (v45 < 0 == v17)
          {
            *(a2 + 14) = v45;
          }

          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_21;
      }

      *(this + 12) |= 1u;
      v11 = *(this + 1);
      if (!v11)
      {
        operator new();
      }

      v46 = 0;
      v12 = *(a2 + 1);
      if (v12 >= *(a2 + 2) || *v12 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46))
        {
          return 0;
        }
      }

      else
      {
        v46 = *v12;
        *(a2 + 1) = v12 + 1;
      }

      v13 = *(a2 + 14);
      v14 = *(a2 + 15);
      *(a2 + 14) = v13 + 1;
      if (v13 >= v14)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v11, a2, v15) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v16 = *(a2 + 14);
      v17 = __OFSUB__(v16, 1);
      v18 = v16 - 1;
      if (v18 < 0 == v17)
      {
        *(a2 + 14) = v18;
      }

      v19 = *(a2 + 1);
      if (v19 < *(a2 + 2) && *v19 == 18)
      {
        *(a2 + 1) = v19 + 1;
LABEL_38:
        *(this + 12) |= 2u;
        v20 = *(this + 2);
        if (!v20)
        {
          operator new();
        }

        v46 = 0;
        v21 = *(a2 + 1);
        if (v21 >= *(a2 + 2) || *v21 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46))
          {
            return 0;
          }
        }

        else
        {
          v46 = *v21;
          *(a2 + 1) = v21 + 1;
        }

        v22 = *(a2 + 14);
        v23 = *(a2 + 15);
        *(a2 + 14) = v22 + 1;
        if (v22 >= v23)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v20, a2, v24) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v25 = *(a2 + 14);
        v17 = __OFSUB__(v25, 1);
        v26 = v25 - 1;
        if (v26 < 0 == v17)
        {
          *(a2 + 14) = v26;
        }

        v27 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v27 < v9 && *v27 == 24)
        {
          v10 = v27 + 1;
          *(a2 + 1) = v10;
LABEL_52:
          v46 = 0;
          if (v10 >= v9 || (v28 = *v10, (v28 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46);
            if (!result)
            {
              return result;
            }

            v28 = v46;
          }

          else
          {
            *(a2 + 1) = v10 + 1;
          }

          if (v28 <= 0x12)
          {
            *(this + 12) |= 4u;
            *(this + 10) = v28;
          }

          v30 = *(a2 + 1);
          if (v30 < *(a2 + 2) && *v30 == 34)
          {
            *(a2 + 1) = v30 + 1;
            goto LABEL_62;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 2)
    {
      goto LABEL_38;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 48);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 40), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_14:
  v9 = *(v5 + 24);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  if ((*(v5 + 48) & 0x10) != 0)
  {
LABEL_17:
    v10 = *(v5 + 32);
    if (!v10)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 32);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent *this, unsigned int a2)
{
  v2 = this;
  LOBYTE(v3) = *(this + 48);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_49;
  }

  if ((*(this + 48) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 48) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 8);
  }

  v6 = *(v5 + 36);
  if (*(v5 + 36))
  {
    v7 = (v6 << 31 >> 31) & 9;
    if ((v6 & 2) != 0)
    {
      v7 += 9;
    }

    if ((v6 & 4) != 0)
    {
      v6 = v7 + 9;
    }

    else
    {
      v6 = v7;
    }
  }

  *(v5 + 32) = v6;
  v4 = (v6 + 2);
  v3 = *(v2 + 12);
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v8 = *(v2 + 2);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 16);
    }

    v9 = *(v8 + 36);
    if (*(v8 + 36))
    {
      v10 = (v9 << 31 >> 31) & 9;
      if ((v9 & 2) != 0)
      {
        v10 += 9;
      }

      if ((v9 & 4) != 0)
      {
        v9 = v10 + 9;
      }

      else
      {
        v9 = v10;
      }
    }

    *(v8 + 32) = v9;
    v4 = (v4 + v9 + 2);
    v3 = *(v2 + 12);
  }

LABEL_24:
  if ((v3 & 4) != 0)
  {
    this = *(v2 + 10);
    if ((this & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (this >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
      v11 = this + 1;
      v3 = *(v2 + 12);
    }

    else
    {
      v11 = 2;
    }

    v4 = (v11 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_26:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_43;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_26;
  }

  v12 = *(v2 + 3);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 24);
  }

  v13 = *(v12 + 36);
  if (*(v12 + 36))
  {
    v14 = (v13 << 31 >> 31) & 9;
    if ((v13 & 2) != 0)
    {
      v14 += 9;
    }

    if ((v13 & 4) != 0)
    {
      v13 = v14 + 9;
    }

    else
    {
      v13 = v14;
    }
  }

  *(v12 + 32) = v13;
  v4 = (v4 + v13 + 2);
  if ((*(v2 + 12) & 0x10) != 0)
  {
LABEL_43:
    v15 = *(v2 + 4);
    if (!v15)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 32);
    }

    v16 = CoreNavigation::CLP::LogEntry::PrivateData::WorkoutSettings::ByteSize(v15, a2);
    v17 = v16;
    if (v16 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
    }

    else
    {
      v18 = 1;
    }

    v4 = (v4 + v17 + v18 + 1);
  }

LABEL_49:
  *(v2 + 11) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent *this, const CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v5;
    LODWORD(v5) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v5;
    LODWORD(v5) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v5;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator *CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::MotionStateMediator(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator *a2)
{
  *this = &unk_1F4CDA2C0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      *(this + 8) |= 1u;
      v5 = *(this + 1);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 1);
      if (!v6)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v5, v6);
      v4 = *(a2 + 8);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 6);
    *(this + 8) |= 2u;
    *(this + 6) = v7;
    if ((*(a2 + 8) & 4) == 0)
    {
      return;
    }

LABEL_14:
    *(this + 8) |= 4u;
    v8 = *(this + 2);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::MergeFrom(v8, v9);
  }
}

void sub_1D0CD0320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::~MotionStateMediator(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator *this)
{
  *this = &unk_1F4CDA2C0;
  CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::~MotionStateMediator(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 32);
  if (v2)
  {
    if (*(this + 32))
    {
      v3 = *(this + 8);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(this + 32);
      }
    }

    *(this + 24) = 0;
    if ((v2 & 4) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::Clear(this);
      }
    }
  }

  *(v1 + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if (v8 == 2)
        {
          v13 = *(this + 8);
          goto LABEL_39;
        }

        goto LABEL_18;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 2)
      {
        goto LABEL_18;
      }

      *(this + 8) |= 1u;
      v9 = *(this + 1);
      if (!v9)
      {
        operator new();
      }

      v32 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32))
        {
          return 0;
        }
      }

      else
      {
        v32 = *v10;
        *(a2 + 1) = v10 + 1;
      }

      v14 = *(a2 + 14);
      v15 = *(a2 + 15);
      *(a2 + 14) = v14 + 1;
      if (v14 >= v15)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v9, a2, v16) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v17 = *(a2 + 14);
      v18 = __OFSUB__(v17, 1);
      v19 = v17 - 1;
      if (v19 < 0 == v18)
      {
        *(a2 + 14) = v19;
      }

      v20 = *(a2 + 1);
      v11 = *(a2 + 2);
      if (v20 < v11 && *v20 == 16)
      {
        v12 = v20 + 1;
        *(a2 + 1) = v12;
LABEL_31:
        v31 = 0;
        if (v12 >= v11 || (v21 = *v12, (v21 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31);
          if (!result)
          {
            return result;
          }

          v21 = v31;
          v22 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v22 = v12 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 6) = v21;
        v13 = *(this + 8) | 2;
        *(this + 8) = v13;
        if (v22 < v11 && *v22 == 26)
        {
          *(a2 + 1) = v22 + 1;
LABEL_39:
          *(this + 8) = v13 | 4;
          v24 = *(this + 2);
          if (!v24)
          {
            operator new();
          }

          v33 = 0;
          v25 = *(a2 + 1);
          if (v25 >= *(a2 + 2) || *v25 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33))
            {
              return 0;
            }
          }

          else
          {
            v33 = *v25;
            *(a2 + 1) = v25 + 1;
          }

          v26 = *(a2 + 14);
          v27 = *(a2 + 15);
          *(a2 + 14) = v26 + 1;
          if (v26 >= v27)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::MergePartialFromCodedStream(v24, a2, v28) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v29 = *(a2 + 14);
          v18 = __OFSUB__(v29, 1);
          v30 = v29 - 1;
          if (v30 < 0 == v18)
          {
            *(a2 + 14) = v30;
          }

          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v12 = *(a2 + 1);
      v11 = *(a2 + 2);
      goto LABEL_31;
    }

LABEL_18:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 24), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_9;
  }

  v7 = *(this + 8);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_9:
  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_28;
  }

  if (*(this + 32))
  {
    v5 = *(this + 1);
    if (!v5)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 8);
    }

    v6 = *(v5 + 36);
    if (*(v5 + 36))
    {
      v7 = (v6 << 31 >> 31) & 9;
      if ((v6 & 2) != 0)
      {
        v7 += 9;
      }

      if ((v6 & 4) != 0)
      {
        v6 = v7 + 9;
      }

      else
      {
        v6 = v7;
      }
    }

    *(v5 + 32) = v6;
    v4 = (v6 + 2);
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  v8 = *(this + 6);
  if ((v8 & 0x80000000) != 0)
  {
    v9 = 11;
  }

  else if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v9 = 2;
  }

  v4 = (v9 + v4);
LABEL_21:
  if ((v3 & 4) != 0)
  {
    v10 = *(this + 2);
    if (!v10)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    v11 = CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::ByteSize(v10, a2);
    v12 = v11;
    if (v11 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
    }

    else
    {
      v13 = 1;
    }

    v4 = (v4 + v12 + v13 + 1);
  }

LABEL_28:
  *(this + 7) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity::SharedCtor(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity *CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity::MediatedMotionActivity(CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity *this, const CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity *a2)
{
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDA338;
  *(this + 24) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity *this, const CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 1);
      *(this + 8) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 8);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 8) |= 2u;
    v7 = *(this + 2);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 2);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity::default_instance_ + 16);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::MergeFrom(v7, v8);
    if ((*(a2 + 8) & 4) != 0)
    {
LABEL_7:
      v5 = *(a2 + 24);
      *(this + 8) |= 4u;
      *(this + 24) = v5;
    }
  }
}

void sub_1D0CD0E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity::~MediatedMotionActivity(CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity *this)
{
  *this = &unk_1F4CDA338;
  CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity::~MediatedMotionActivity(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity::default_instance_ != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 32);
  if (v2)
  {
    *(this + 8) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::Clear(this);
      }
    }

    *(v1 + 24) = 0;
  }

  *(v1 + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if ((TagFallback & 7) == 0)
        {
          v14 = *(a2 + 1);
          v13 = *(a2 + 2);
          goto LABEL_35;
        }

LABEL_22:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 1)
      {
        goto LABEL_22;
      }

      *v25 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = *v25;
      v9 = *(this + 8) | 1;
      *(this + 8) = v9;
      v10 = *(a2 + 1);
      if (v10 < *(a2 + 2) && *v10 == 18)
      {
        *(a2 + 1) = v10 + 1;
        goto LABEL_16;
      }
    }

    if (v8 != 2)
    {
      goto LABEL_22;
    }

    v9 = *(this + 8);
LABEL_16:
    *(this + 8) = v9 | 2;
    v11 = *(this + 2);
    if (!v11)
    {
      operator new();
    }

    v25[0] = 0;
    v12 = *(a2 + 1);
    if (v12 >= *(a2 + 2) || *v12 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v25))
      {
        return 0;
      }
    }

    else
    {
      v25[0] = *v12;
      *(a2 + 1) = v12 + 1;
    }

    v15 = *(a2 + 14);
    v16 = *(a2 + 15);
    *(a2 + 14) = v15 + 1;
    if (v15 >= v16)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::MergePartialFromCodedStream(v11, a2, v17) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v18 = *(a2 + 14);
    v19 = __OFSUB__(v18, 1);
    v20 = v18 - 1;
    if (v20 < 0 == v19)
    {
      *(a2 + 14) = v20;
    }

    v21 = *(a2 + 1);
    v13 = *(a2 + 2);
    if (v21 < v13 && *v21 == 24)
    {
      v14 = v21 + 1;
      *(a2 + 1) = v14;
LABEL_35:
      v25[0] = 0;
      if (v14 >= v13 || (v22 = *v14, (v22 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v25);
        if (!result)
        {
          return result;
        }

        v22 = v25[0];
        v23 = *(a2 + 1);
        v13 = *(a2 + 2);
      }

      else
      {
        v23 = v14 + 1;
        *(a2 + 1) = v23;
      }

      *(this + 24) = v22 != 0;
      *(this + 8) |= 4u;
      if (v23 == v13 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  if ((*(v5 + 32) & 4) != 0)
  {
LABEL_9:
    v8 = *(v5 + 24);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, v8, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity *this, unsigned int a2)
{
  v3 = *(this + 8);
  if (v3)
  {
    v4 = ((v3 << 31) >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v5 = *(this + 2);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
        v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity::default_instance_ + 16);
      }

      v6 = CoreNavigation::CLP::LogEntry::PrivateData::MotionActivity::ByteSize(v5, a2);
      v7 = v6;
      if (v6 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
      }

      else
      {
        v8 = 1;
      }

      v4 += v7 + v8 + 1;
      v3 = *(this + 8);
    }

    result = ((v3 >> 1) & 2) + v4;
  }

  else
  {
    result = 0;
  }

  *(this + 7) = result;
  return result;
}

void CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity *this, const CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity::Swap(CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity *this, CoreNavigation::CLP::LogEntry::PrivateData::MediatedMotionActivity *a2)
{
  if (a2 != this)
  {
    result = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = result;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    LOBYTE(v3) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v3;
    LODWORD(v3) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v3;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics *this)
{
  *(this + 14) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics *CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics::BodyMetrics(CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics *this, const CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics *a2)
{
  *this = &unk_1F4CDA3B0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics::MergeFrom(this, a2);
  return this;
}

float CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics *this, const CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v5 = *(a2 + 14);
  if (!v5)
  {
    goto LABEL_15;
  }

  if (v5)
  {
    v6 = *(a2 + 2);
    if (v6 >= 3)
    {
      __assert_rtn("set_gender", "CoreNavigationCLPPrivateDataShared.pb.h", 19173, "::CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics_NatalimeterGenderType_IsValid(value)");
    }

    *(this + 14) |= 1u;
    *(this + 2) = v6;
    v5 = *(a2 + 14);
  }

  if ((v5 & 2) != 0)
  {
    result = *(a2 + 3);
    *(this + 14) |= 2u;
    *(this + 3) = result;
    v5 = *(a2 + 14);
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_9;
  }

  result = *(a2 + 4);
  *(this + 14) |= 4u;
  *(this + 4) = result;
  v5 = *(a2 + 14);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = *(a2 + 5);
  *(this + 14) |= 8u;
  *(this + 5) = result;
  v5 = *(a2 + 14);
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_28:
    result = *(a2 + 7);
    *(this + 14) |= 0x20u;
    *(this + 7) = result;
    v5 = *(a2 + 14);
    if ((v5 & 0x40) == 0)
    {
LABEL_13:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_27:
  result = *(a2 + 6);
  *(this + 14) |= 0x10u;
  *(this + 6) = result;
  v5 = *(a2 + 14);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_12:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_29:
  result = *(a2 + 8);
  *(this + 14) |= 0x40u;
  *(this + 8) = result;
  v5 = *(a2 + 14);
  if ((v5 & 0x80) != 0)
  {
LABEL_14:
    result = *(a2 + 9);
    *(this + 14) |= 0x80u;
    *(this + 9) = result;
    v5 = *(a2 + 14);
  }

LABEL_15:
  if ((v5 & 0xFF00) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      result = *(a2 + 10);
      *(this + 14) |= 0x100u;
      *(this + 10) = result;
      v5 = *(a2 + 14);
    }

    if ((v5 & 0x200) != 0)
    {
      v7 = *(a2 + 11);
      if (v7 >= 8)
      {
        __assert_rtn("set_condition", "CoreNavigationCLPPrivateDataShared.pb.h", 19372, "::CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics_UserConditionType_IsValid(value)");
      }

      *(this + 14) |= 0x200u;
      *(this + 11) = v7;
      v5 = *(a2 + 14);
    }

    if ((v5 & 0x400) != 0)
    {
      result = *(a2 + 12);
      *(this + 14) |= 0x400u;
      *(this + 12) = result;
    }
  }

  return result;
}

void sub_1D0CD1870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics::~BodyMetrics(CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics *this)
{
  *this = &unk_1F4CDA3B0;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics::~BodyMetrics(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics::Clear(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 40) = 0;
    *(this + 48) = 0;
  }

  *(this + 56) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(a2 + 1);
          if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
            *(a2 + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 > 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 2)
          {
            if (v7 != 1)
            {
              if (v7 != 2 || v8 != 5)
              {
                goto LABEL_43;
              }

              goto LABEL_53;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v25 = 0;
            v9 = *(a2 + 1);
            if (v9 >= *(a2 + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
              if (!result)
              {
                return result;
              }

              v10 = v25;
            }

            else
            {
              *(a2 + 1) = v9 + 1;
            }

            if (v10 <= 2)
            {
              *(this + 14) |= 1u;
              *(this + 2) = v10;
            }

            v14 = *(a2 + 1);
            if (v14 < *(a2 + 2) && *v14 == 21)
            {
              *(a2 + 1) = v14 + 1;
LABEL_53:
              v25 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v25) & 1) == 0)
              {
                return 0;
              }

              *(this + 3) = v25;
              *(this + 14) |= 2u;
              v15 = *(a2 + 1);
              if (v15 < *(a2 + 2) && *v15 == 29)
              {
                *(a2 + 1) = v15 + 1;
LABEL_57:
                v25 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v25) & 1) == 0)
                {
                  return 0;
                }

                *(this + 4) = v25;
                *(this + 14) |= 4u;
                v16 = *(a2 + 1);
                if (v16 < *(a2 + 2) && *v16 == 37)
                {
                  *(a2 + 1) = v16 + 1;
                  goto LABEL_61;
                }
              }
            }
          }

          else
          {
            if (v7 == 3)
            {
              if (v8 != 5)
              {
                goto LABEL_43;
              }

              goto LABEL_57;
            }

            if (v7 != 4)
            {
              if (v7 != 5 || v8 != 5)
              {
                goto LABEL_43;
              }

              goto LABEL_65;
            }

            if (v8 != 5)
            {
              goto LABEL_43;
            }

LABEL_61:
            v25 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v25) & 1) == 0)
            {
              return 0;
            }

            *(this + 5) = v25;
            *(this + 14) |= 8u;
            v17 = *(a2 + 1);
            if (v17 < *(a2 + 2) && *v17 == 45)
            {
              *(a2 + 1) = v17 + 1;
LABEL_65:
              v25 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v25) & 1) == 0)
              {
                return 0;
              }

              *(this + 6) = v25;
              *(this + 14) |= 0x10u;
              v18 = *(a2 + 1);
              if (v18 < *(a2 + 2) && *v18 == 53)
              {
                *(a2 + 1) = v18 + 1;
LABEL_69:
                v25 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v25) & 1) == 0)
                {
                  return 0;
                }

                *(this + 7) = v25;
                *(this + 14) |= 0x20u;
                v19 = *(a2 + 1);
                if (v19 < *(a2 + 2) && *v19 == 61)
                {
                  *(a2 + 1) = v19 + 1;
                  goto LABEL_73;
                }
              }
            }
          }
        }

        if (TagFallback >> 3 <= 8)
        {
          break;
        }

        if (v7 == 9)
        {
          if (v8 != 5)
          {
            goto LABEL_43;
          }

LABEL_81:
          v25 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v25) & 1) == 0)
          {
            return 0;
          }

          *(this + 10) = v25;
          *(this + 14) |= 0x100u;
          v22 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v22 < v11 && *v22 == 80)
          {
            v12 = v22 + 1;
            *(a2 + 1) = v12;
LABEL_85:
            v25 = 0;
            if (v12 >= v11 || (v23 = *v12, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
              if (!result)
              {
                return result;
              }

              v23 = v25;
            }

            else
            {
              *(a2 + 1) = v12 + 1;
            }

            if (v23 <= 7)
            {
              *(this + 14) |= 0x200u;
              *(this + 11) = v23;
            }

            v24 = *(a2 + 1);
            if (v24 < *(a2 + 2) && *v24 == 93)
            {
              *(a2 + 1) = v24 + 1;
              goto LABEL_95;
            }
          }
        }

        else
        {
          if (v7 == 10)
          {
            if ((TagFallback & 7) == 0)
            {
              v12 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_85;
            }

            goto LABEL_43;
          }

          if (v7 != 11 || v8 != 5)
          {
            goto LABEL_43;
          }

LABEL_95:
          v25 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v25) & 1) == 0)
          {
            return 0;
          }

          *(this + 12) = v25;
          *(this + 14) |= 0x400u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v7 == 6)
      {
        if (v8 != 5)
        {
          goto LABEL_43;
        }

        goto LABEL_69;
      }

      if (v7 != 7)
      {
        break;
      }

      if (v8 != 5)
      {
        goto LABEL_43;
      }

LABEL_73:
      v25 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v25) & 1) == 0)
      {
        return 0;
      }

      *(this + 8) = v25;
      *(this + 14) |= 0x40u;
      v20 = *(a2 + 1);
      if (v20 < *(a2 + 2) && *v20 == 69)
      {
        *(a2 + 1) = v20 + 1;
LABEL_77:
        v25 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v25) & 1) == 0)
        {
          return 0;
        }

        *(this + 9) = v25;
        *(this + 14) |= 0x80u;
        v21 = *(a2 + 1);
        if (v21 < *(a2 + 2) && *v21 == 77)
        {
          *(a2 + 1) = v21 + 1;
          goto LABEL_81;
        }
      }
    }

    if (v7 == 8 && v8 == 5)
    {
      goto LABEL_77;
    }

LABEL_43:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 56);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 12), a3);
  v6 = *(v5 + 56);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 16), a3);
  v6 = *(v5 + 56);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 20), a3);
  v6 = *(v5 + 56);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 24), a3);
  v6 = *(v5 + 56);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 28), a3);
  v6 = *(v5 + 56);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 32), a3);
  v6 = *(v5 + 56);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, *(v5 + 36), a3);
  v6 = *(v5 + 56);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 44), a2, a4);
    if ((*(v5 + 56) & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(9, a2, *(v5 + 40), a3);
  v6 = *(v5 + 56);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v6 & 0x400) == 0)
  {
    return this;
  }

LABEL_23:
  v7 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xB, a2, v7, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics *this, unsigned int a2)
{
  v3 = *(this + 14);
  if (v3)
  {
    if (v3)
    {
      v6 = *(this + 2);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
        v3 = *(this + 14);
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x20) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x40) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x80) != 0)
    {
      result = v4 + 5;
    }

    else
    {
      result = v4;
    }
  }

  else
  {
    result = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v7 = result + 5;
    }

    else
    {
      v7 = result;
    }

    if ((v3 & 0x200) != 0)
    {
      v8 = *(this + 11);
      if ((v8 & 0x80000000) != 0)
      {
        v9 = 11;
      }

      else if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
        v3 = *(this + 14);
      }

      else
      {
        v9 = 2;
      }

      v7 += v9;
    }

    if ((v3 & 0x400) != 0)
    {
      result = v7 + 5;
    }

    else
    {
      result = v7;
    }
  }

  *(this + 13) = result;
  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics *this, const CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics::Swap(CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics *this, CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v6;
    v7 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v7;
    v8 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v8;
    v9 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v9;
    v10 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v10;
    v11 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v11;
    result = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = result;
    v13 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v13;
    v14 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v14;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry *CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::Natalimetry(CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry *this, const CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry *a2)
{
  *this = &unk_1F4CDA428;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::MergeFrom(this, a2);
  return this;
}

float CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry *this, const CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      *(this + 8) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::default_instance_ + 8);
      }

      v4 = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v6, v7);
      v5 = *(a2 + 8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return *&v4;
        }

LABEL_14:
        *(this + 8) |= 4u;
        v9 = *(this + 2);
        if (!v9)
        {
          operator new();
        }

        v10 = *(a2 + 2);
        if (!v10)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
          v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::default_instance_ + 16);
        }

        *&v4 = CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics::MergeFrom(v9, v10);
        return *&v4;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 6);
    *(this + 8) |= 2u;
    *(this + 6) = v8;
    if ((*(a2 + 8) & 4) == 0)
    {
      return *&v4;
    }

    goto LABEL_14;
  }

  return *&v4;
}

void sub_1D0CD25A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::~Natalimetry(CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry *this)
{
  *this = &unk_1F4CDA428;
  CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::~Natalimetry(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 32);
  if (v1)
  {
    if (*(this + 32))
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(v2 + 36))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 36) = 0;
        v1 = *(this + 32);
      }
    }

    *(this + 24) = 0;
    if ((v1 & 4) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        v4 = *(v3 + 56);
        if (v4)
        {
          *(v3 + 24) = 0u;
          *(v3 + 8) = 0u;
        }

        if ((v4 & 0xFF00) != 0)
        {
          *(v3 + 40) = 0;
          *(v3 + 48) = 0;
        }

        *(v3 + 56) = 0;
      }
    }
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if (v8 == 2)
        {
          v13 = *(this + 8);
          goto LABEL_39;
        }

        goto LABEL_18;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 2)
      {
        goto LABEL_18;
      }

      *(this + 8) |= 1u;
      v9 = *(this + 1);
      if (!v9)
      {
        operator new();
      }

      v32 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32))
        {
          return 0;
        }
      }

      else
      {
        v32 = *v10;
        *(a2 + 1) = v10 + 1;
      }

      v14 = *(a2 + 14);
      v15 = *(a2 + 15);
      *(a2 + 14) = v14 + 1;
      if (v14 >= v15)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v9, a2, v16) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v17 = *(a2 + 14);
      v18 = __OFSUB__(v17, 1);
      v19 = v17 - 1;
      if (v19 < 0 == v18)
      {
        *(a2 + 14) = v19;
      }

      v20 = *(a2 + 1);
      v11 = *(a2 + 2);
      if (v20 < v11 && *v20 == 16)
      {
        v12 = v20 + 1;
        *(a2 + 1) = v12;
LABEL_31:
        v31 = 0;
        if (v12 >= v11 || (v21 = *v12, (v21 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31);
          if (!result)
          {
            return result;
          }

          v21 = v31;
          v22 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v22 = v12 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 6) = v21;
        v13 = *(this + 8) | 2;
        *(this + 8) = v13;
        if (v22 < v11 && *v22 == 26)
        {
          *(a2 + 1) = v22 + 1;
LABEL_39:
          *(this + 8) = v13 | 4;
          v24 = *(this + 2);
          if (!v24)
          {
            operator new();
          }

          v33 = 0;
          v25 = *(a2 + 1);
          if (v25 >= *(a2 + 2) || *v25 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33))
            {
              return 0;
            }
          }

          else
          {
            v33 = *v25;
            *(a2 + 1) = v25 + 1;
          }

          v26 = *(a2 + 14);
          v27 = *(a2 + 15);
          *(a2 + 14) = v26 + 1;
          if (v26 >= v27)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics::MergePartialFromCodedStream(v24, a2, v28) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v29 = *(a2 + 14);
          v18 = __OFSUB__(v29, 1);
          v30 = v29 - 1;
          if (v30 < 0 == v18)
          {
            *(a2 + 14) = v30;
          }

          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v12 = *(a2 + 1);
      v11 = *(a2 + 2);
      goto LABEL_31;
    }

LABEL_18:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 24), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_9;
  }

  v7 = *(this + 8);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_9:
  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::default_instance_ + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_28;
  }

  if (*(this + 32))
  {
    v5 = *(this + 1);
    if (!v5)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::default_instance_ + 8);
    }

    v6 = *(v5 + 36);
    if (*(v5 + 36))
    {
      v7 = (v6 << 31 >> 31) & 9;
      if ((v6 & 2) != 0)
      {
        v7 += 9;
      }

      if ((v6 & 4) != 0)
      {
        v6 = v7 + 9;
      }

      else
      {
        v6 = v7;
      }
    }

    *(v5 + 32) = v6;
    v4 = (v6 + 2);
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  v8 = *(this + 6);
  if ((v8 & 0x80000000) != 0)
  {
    v9 = 11;
  }

  else if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v9 = 2;
  }

  v4 = (v9 + v4);
LABEL_21:
  if ((v3 & 4) != 0)
  {
    v10 = *(this + 2);
    if (!v10)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::default_instance_ + 16);
    }

    v11 = CoreNavigation::CLP::LogEntry::PrivateData::BodyMetrics::ByteSize(v10, a2);
    v12 = v11;
    if (v11 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
    }

    else
    {
      v13 = 1;
    }

    v4 = (v4 + v12 + v13 + 1);
  }

LABEL_28:
  *(this + 7) = v4;
  return v4;
}

float CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry *this, const CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Timer::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::Timer *CoreNavigation::CLP::LogEntry::PrivateData::Timer::Timer(CoreNavigation::CLP::LogEntry::PrivateData::Timer *this, const CoreNavigation::CLP::LogEntry::PrivateData::Timer *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDA4A0;
  CoreNavigation::CLP::LogEntry::PrivateData::Timer::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::Timer::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Timer *this, const CoreNavigation::CLP::LogEntry::PrivateData::Timer *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (*(a2 + 20))
  {
    *(this + 5) |= 1u;
    v5 = *(this + 1);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 1);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::Timer::default_instance_ + 8);
    }

    return CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v5, v6);
  }

  return result;
}

void sub_1D0CD3038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Timer::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    v1 = *(this + 8);
    if (v1)
    {
      if (*(v1 + 36))
      {
        *(v1 + 8) = 0;
        *(v1 + 16) = 0;
        *(v1 + 24) = 0;
      }

      *(v1 + 36) = 0;
    }
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Timer::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 20))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::Timer::default_instance_ + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Timer::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::Timer *this)
{
  if (*(this + 20))
  {
    v3 = *(this + 1);
    if (!v3)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v3 = *(CoreNavigation::CLP::LogEntry::PrivateData::Timer::default_instance_ + 8);
    }

    v4 = *(v3 + 36);
    if (*(v3 + 36))
    {
      v5 = (v4 << 31 >> 31) & 9;
      if ((v4 & 2) != 0)
      {
        v5 += 9;
      }

      if ((v4 & 4) != 0)
      {
        v4 = v5 + 9;
      }

      else
      {
        v4 = v5;
      }
    }

    *(v3 + 32) = v4;
    result = (v4 + 2);
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::Timer::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::Timer *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::Timer::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::Timer::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::Timer *this, const CoreNavigation::CLP::LogEntry::PrivateData::Timer *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::Timer::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Timer::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::Timer *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel *CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::DigitalElevationModel(CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel *this, const CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel *a2)
{
  *this = &unk_1F4CDA518;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::MergeFrom(this, a2);
  return this;
}

float CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel *this, const CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v5) = *(a2 + 52);
  if (!v5)
  {
    return *&v4;
  }

  if (*(a2 + 52))
  {
    *(this + 13) |= 1u;
    v7 = *(this + 1);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 1);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::default_instance_ + 8);
    }

    v4 = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v7, v8);
    v5 = *(a2 + 13);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }
  }

  else if ((*(a2 + 52) & 2) == 0)
  {
    goto LABEL_6;
  }

  v4 = *(a2 + 2);
  *(this + 13) |= 2u;
  *(this + 2) = v4;
  v5 = *(a2 + 13);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v4 = *(a2 + 3);
  *(this + 13) |= 4u;
  *(this + 3) = v4;
  v5 = *(a2 + 13);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  LODWORD(v4) = *(a2 + 8);
  *(this + 13) |= 8u;
  *(this + 8) = LODWORD(v4);
  v5 = *(a2 + 13);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_22:
    LODWORD(v4) = *(a2 + 10);
    *(this + 13) |= 0x20u;
    *(this + 10) = LODWORD(v4);
    if ((*(a2 + 13) & 0x40) != 0)
    {
      goto LABEL_11;
    }

    return *&v4;
  }

LABEL_21:
  LODWORD(v4) = *(a2 + 9);
  *(this + 13) |= 0x10u;
  *(this + 9) = LODWORD(v4);
  v5 = *(a2 + 13);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v5 & 0x40) != 0)
  {
LABEL_11:
    v6 = *(a2 + 11);
    *(this + 13) |= 0x40u;
    *(this + 11) = v6;
  }

  return *&v4;
}

void sub_1D0CD35A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::~DigitalElevationModel(CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel *this)
{
  *this = &unk_1F4CDA518;
  CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::~DigitalElevationModel(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::Clear(uint64_t this)
{
  if (*(this + 52))
  {
    if (*(this + 52))
    {
      v1 = *(this + 8);
      if (v1)
      {
        if (*(v1 + 36))
        {
          *(v1 + 8) = 0;
          *(v1 + 16) = 0;
          *(v1 + 24) = 0;
        }

        *(v1 + 36) = 0;
      }
    }

    *(this + 16) = 0u;
    *(this + 32) = 0u;
  }

  *(this + 52) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 3)
        {
          break;
        }

        if (TagFallback >> 3 > 5)
        {
          if (v7 == 6)
          {
            if (v8 == 5)
            {
              goto LABEL_60;
            }
          }

          else if (v7 == 7 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_64;
          }

          goto LABEL_32;
        }

        if (v7 == 4)
        {
          if (v8 != 5)
          {
            goto LABEL_32;
          }

LABEL_52:
          v28[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v28) & 1) == 0)
          {
            return 0;
          }

          *(this + 8) = v28[0];
          *(this + 13) |= 8u;
          v22 = *(a2 + 1);
          if (v22 < *(a2 + 2) && *v22 == 45)
          {
            *(a2 + 1) = v22 + 1;
LABEL_56:
            v28[0] = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v28) & 1) == 0)
            {
              return 0;
            }

            *(this + 9) = v28[0];
            *(this + 13) |= 0x10u;
            v23 = *(a2 + 1);
            if (v23 < *(a2 + 2) && *v23 == 53)
            {
              *(a2 + 1) = v23 + 1;
LABEL_60:
              v28[0] = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v28) & 1) == 0)
              {
                return 0;
              }

              *(this + 10) = v28[0];
              *(this + 13) |= 0x20u;
              v24 = *(a2 + 1);
              v9 = *(a2 + 2);
              if (v24 < v9 && *v24 == 56)
              {
                v10 = v24 + 1;
                *(a2 + 1) = v10;
LABEL_64:
                v28[0] = 0;
                if (v10 >= v9 || (v25 = *v10, (v25 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v28);
                  if (!result)
                  {
                    return result;
                  }

                  v25 = v28[0];
                  v26 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                else
                {
                  v26 = v10 + 1;
                  *(a2 + 1) = v26;
                }

                *(this + 11) = v25;
                *(this + 13) |= 0x40u;
                if (v26 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                {
                  *(a2 + 8) = 0;
                  result = 1;
                  *(a2 + 36) = 1;
                  return result;
                }
              }
            }
          }
        }

        else
        {
          if (v7 == 5 && v8 == 5)
          {
            goto LABEL_56;
          }

LABEL_32:
          if (v8 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }
        }
      }

      if (v7 == 1)
      {
        break;
      }

      if (v7 != 2)
      {
        if (v7 != 3 || v8 != 1)
        {
          goto LABEL_32;
        }

        goto LABEL_48;
      }

      if (v8 != 1)
      {
        goto LABEL_32;
      }

LABEL_44:
      *v28 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v28) & 1) == 0)
      {
        return 0;
      }

      *(this + 2) = *v28;
      *(this + 13) |= 2u;
      v20 = *(a2 + 1);
      if (v20 < *(a2 + 2) && *v20 == 25)
      {
        *(a2 + 1) = v20 + 1;
LABEL_48:
        *v28 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v28) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v28;
        *(this + 13) |= 4u;
        v21 = *(a2 + 1);
        if (v21 < *(a2 + 2) && *v21 == 37)
        {
          *(a2 + 1) = v21 + 1;
          goto LABEL_52;
        }
      }
    }

    if (v8 != 2)
    {
      goto LABEL_32;
    }

    *(this + 13) |= 1u;
    v11 = *(this + 1);
    if (!v11)
    {
      operator new();
    }

    v28[0] = 0;
    v12 = *(a2 + 1);
    if (v12 >= *(a2 + 2) || *v12 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v28))
      {
        return 0;
      }
    }

    else
    {
      v28[0] = *v12;
      *(a2 + 1) = v12 + 1;
    }

    v13 = *(a2 + 14);
    v14 = *(a2 + 15);
    *(a2 + 14) = v13 + 1;
    if (v13 >= v14)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v11, a2, v15) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v16 = *(a2 + 14);
    v17 = __OFSUB__(v16, 1);
    v18 = v16 - 1;
    if (v18 < 0 == v17)
    {
      *(a2 + 14) = v18;
    }

    v19 = *(a2 + 1);
    if (v19 < *(a2 + 2) && *v19 == 17)
    {
      *(a2 + 1) = v19 + 1;
      goto LABEL_44;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 52);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 52);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 52);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 40), a3);
    if ((*(v5 + 52) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 36), a3);
  v6 = *(v5 + 52);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return this;
  }

LABEL_17:
  v8 = *(v5 + 44);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 52);
  if (v3)
  {
    if (*(this + 52))
    {
      v6 = *(this + 1);
      if (!v6)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::default_instance_ + 8);
      }

      v7 = *(v6 + 36);
      if (*(v6 + 36))
      {
        v8 = (v7 << 31 >> 31) & 9;
        if ((v7 & 2) != 0)
        {
          v8 += 9;
        }

        if ((v7 & 4) != 0)
        {
          v7 = v8 + 9;
        }

        else
        {
          v7 = v8;
        }
      }

      *(v6 + 32) = v7;
      v4 = v7 + 2;
      v3 = *(this + 13);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x20) != 0)
    {
      v5 = v4 + 5;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 0x40) != 0)
    {
      v9 = *(this + 11);
      if ((v9 & 0x80000000) != 0)
      {
        v10 = 11;
      }

      else if (v9 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      }

      else
      {
        v10 = 2;
      }

      v5 = (v10 + v5);
    }
  }

  else
  {
    v5 = 0;
  }

  *(this + 12) = v5;
  return v5;
}

float CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel *this, const CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::Swap(CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel *this, CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel *a2)
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
    LODWORD(v4) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v4;
    LODWORD(v4) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v4;
    result = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = result;
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v2;
    LODWORD(v2) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel *this)
{
  result = 0.0;
  *(this + 84) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel *CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::DirectionOfTravel(CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel *this, const CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel *a2)
{
  *this = &unk_1F4CDA590;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 84) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel *this, const CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    *(this + 24) |= 1u;
    v7 = *(this + 1);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 1);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v7, v8);
    v4 = *(a2 + 24);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_28;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 2);
  *(this + 24) |= 2u;
  *(this + 2) = v9;
  v4 = *(a2 + 24);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  v10 = *(a2 + 3);
  *(this + 24) |= 4u;
  *(this + 3) = v10;
  v4 = *(a2 + 24);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  v11 = *(a2 + 4);
  *(this + 24) |= 8u;
  *(this + 4) = v11;
  v4 = *(a2 + 24);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_31:
    v13 = *(a2 + 6);
    *(this + 24) |= 0x20u;
    *(this + 6) = v13;
    v4 = *(a2 + 24);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_30:
  v12 = *(a2 + 5);
  *(this + 24) |= 0x10u;
  *(this + 5) = v12;
  v4 = *(a2 + 24);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_31;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_32:
  v14 = *(a2 + 7);
  *(this + 24) |= 0x40u;
  *(this + 7) = v14;
  v4 = *(a2 + 24);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 8);
    *(this + 24) |= 0x80u;
    *(this + 8) = v5;
    v4 = *(a2 + 24);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v15 = *(a2 + 9);
    *(this + 24) |= 0x100u;
    *(this + 9) = v15;
    v4 = *(a2 + 24);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_36;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(a2 + 10);
  *(this + 24) |= 0x200u;
  *(this + 10) = v16;
  v4 = *(a2 + 24);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  v17 = *(a2 + 88);
  *(this + 24) |= 0x400u;
  *(this + 88) = v17;
  v4 = *(a2 + 24);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  v18 = *(a2 + 89);
  *(this + 24) |= 0x800u;
  *(this + 89) = v18;
  v4 = *(a2 + 24);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_20;
  }

LABEL_38:
  v19 = *(a2 + 90);
  *(this + 24) |= 0x1000u;
  *(this + 90) = v19;
  if ((*(a2 + 24) & 0x2000) == 0)
  {
    return;
  }

LABEL_20:
  v6 = *(a2 + 91);
  *(this + 24) |= 0x2000u;
  *(this + 91) = v6;
}

void sub_1D0CD4308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::~DirectionOfTravel(CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel *this)
{
  *this = &unk_1F4CDA590;
  CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::~DirectionOfTravel(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::Clear(uint64_t this)
{
  v1 = *(this + 96);
  if (v1)
  {
    if (v1)
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(v2 + 36))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 36) = 0;
        v1 = *(this + 96);
      }
    }

    *(this + 64) = 0;
    *(this + 32) = 0u;
    *(this + 48) = 0u;
    *(this + 16) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 72) = 0;
    *(this + 80) = 0;
    *(this + 88) = 0;
  }

  *(this + 96) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (2)
  {
    v5 = *(a2 + 1);
    if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
      *(a2 + 1) = v5 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        *(this + 24) |= 1u;
        v8 = *(this + 1);
        if (!v8)
        {
          operator new();
        }

        v40[0] = 0;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v40))
          {
            return 0;
          }
        }

        else
        {
          v40[0] = *v9;
          *(a2 + 1) = v9 + 1;
        }

        v15 = *(a2 + 14);
        v16 = *(a2 + 15);
        *(a2 + 14) = v15 + 1;
        if (v15 >= v16)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v8, a2, v17) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v18 = *(a2 + 14);
        v19 = __OFSUB__(v18, 1);
        v20 = v18 - 1;
        if (v20 < 0 == v19)
        {
          *(a2 + 14) = v20;
        }

        v21 = *(a2 + 1);
        if (v21 >= *(a2 + 2) || *v21 != 17)
        {
          continue;
        }

        *(a2 + 1) = v21 + 1;
        goto LABEL_50;
      case 2u:
        if (v7 != 1)
        {
          goto LABEL_38;
        }

LABEL_50:
        *v40 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v40) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v40;
        *(this + 24) |= 2u;
        v22 = *(a2 + 1);
        if (v22 >= *(a2 + 2) || *v22 != 25)
        {
          continue;
        }

        *(a2 + 1) = v22 + 1;
LABEL_54:
        *v40 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v40) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v40;
        *(this + 24) |= 4u;
        v23 = *(a2 + 1);
        if (v23 >= *(a2 + 2) || *v23 != 33)
        {
          continue;
        }

        *(a2 + 1) = v23 + 1;
LABEL_58:
        *v40 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v40) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v40;
        *(this + 24) |= 8u;
        v24 = *(a2 + 1);
        if (v24 >= *(a2 + 2) || *v24 != 41)
        {
          continue;
        }

        *(a2 + 1) = v24 + 1;
LABEL_62:
        *v40 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v40) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = *v40;
        *(this + 24) |= 0x10u;
        v25 = *(a2 + 1);
        if (v25 >= *(a2 + 2) || *v25 != 49)
        {
          continue;
        }

        *(a2 + 1) = v25 + 1;
LABEL_66:
        *v40 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v40) & 1) == 0)
        {
          return 0;
        }

        *(this + 6) = *v40;
        *(this + 24) |= 0x20u;
        v26 = *(a2 + 1);
        if (v26 >= *(a2 + 2) || *v26 != 57)
        {
          continue;
        }

        *(a2 + 1) = v26 + 1;
LABEL_70:
        *v40 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v40) & 1) == 0)
        {
          return 0;
        }

        *(this + 7) = *v40;
        *(this + 24) |= 0x40u;
        v27 = *(a2 + 1);
        if (v27 >= *(a2 + 2) || *v27 != 65)
        {
          continue;
        }

        *(a2 + 1) = v27 + 1;
LABEL_74:
        *v40 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v40) & 1) == 0)
        {
          return 0;
        }

        *(this + 8) = *v40;
        *(this + 24) |= 0x80u;
        v28 = *(a2 + 1);
        if (v28 >= *(a2 + 2) || *v28 != 73)
        {
          continue;
        }

        *(a2 + 1) = v28 + 1;
LABEL_78:
        *v40 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v40) & 1) == 0)
        {
          return 0;
        }

        *(this + 9) = *v40;
        *(this + 24) |= 0x100u;
        v29 = *(a2 + 1);
        if (v29 >= *(a2 + 2) || *v29 != 81)
        {
          continue;
        }

        *(a2 + 1) = v29 + 1;
LABEL_82:
        *v40 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v40))
        {
          *(this + 10) = *v40;
          *(this + 24) |= 0x200u;
          v30 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v30 < v10 && *v30 == 88)
          {
            v14 = v30 + 1;
            *(a2 + 1) = v14;
LABEL_86:
            v40[0] = 0;
            if (v14 >= v10 || (v31 = *v14, (v31 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v40);
              if (!result)
              {
                return result;
              }

              v31 = v40[0];
              v32 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              v32 = v14 + 1;
              *(a2 + 1) = v32;
            }

            *(this + 88) = v31 != 0;
            *(this + 24) |= 0x400u;
            if (v32 < v10 && *v32 == 96)
            {
              v11 = v32 + 1;
              *(a2 + 1) = v11;
LABEL_94:
              v40[0] = 0;
              if (v11 >= v10 || (v34 = *v11, (v34 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v40);
                if (!result)
                {
                  return result;
                }

                v34 = v40[0];
                v35 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                v35 = v11 + 1;
                *(a2 + 1) = v35;
              }

              *(this + 89) = v34 != 0;
              *(this + 24) |= 0x800u;
              if (v35 < v10 && *v35 == 104)
              {
                v12 = v35 + 1;
                *(a2 + 1) = v12;
LABEL_102:
                v40[0] = 0;
                if (v12 >= v10 || (v36 = *v12, (v36 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v40);
                  if (!result)
                  {
                    return result;
                  }

                  v36 = v40[0];
                  v37 = *(a2 + 1);
                  v10 = *(a2 + 2);
                }

                else
                {
                  v37 = v12 + 1;
                  *(a2 + 1) = v37;
                }

                *(this + 90) = v36 != 0;
                *(this + 24) |= 0x1000u;
                if (v37 < v10 && *v37 == 112)
                {
                  v13 = v37 + 1;
                  *(a2 + 1) = v13;
LABEL_110:
                  v40[0] = 0;
                  if (v13 >= v10 || (v38 = *v13, (v38 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v40);
                    if (!result)
                    {
                      return result;
                    }

                    v38 = v40[0];
                    v39 = *(a2 + 1);
                    v10 = *(a2 + 2);
                  }

                  else
                  {
                    v39 = v13 + 1;
                    *(a2 + 1) = v39;
                  }

                  *(this + 91) = v38 != 0;
                  *(this + 24) |= 0x2000u;
                  if (v39 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                  {
                    *(a2 + 8) = 0;
                    result = 1;
                    *(a2 + 36) = 1;
                    return result;
                  }
                }
              }
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if (v7 == 1)
        {
          goto LABEL_54;
        }

        goto LABEL_38;
      case 4u:
        if (v7 == 1)
        {
          goto LABEL_58;
        }

        goto LABEL_38;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_62;
        }

        goto LABEL_38;
      case 6u:
        if (v7 == 1)
        {
          goto LABEL_66;
        }

        goto LABEL_38;
      case 7u:
        if (v7 == 1)
        {
          goto LABEL_70;
        }

        goto LABEL_38;
      case 8u:
        if (v7 == 1)
        {
          goto LABEL_74;
        }

        goto LABEL_38;
      case 9u:
        if (v7 != 1)
        {
          goto LABEL_38;
        }

        goto LABEL_78;
      case 0xAu:
        if (v7 == 1)
        {
          goto LABEL_82;
        }

        goto LABEL_38;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v14 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_86;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_94;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v12 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_102;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v13 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_110;
      default:
LABEL_38:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 96);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 96);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 96);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 96);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 80), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xB, *(v5 + 88), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_30:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xD, *(v5 + 90), a2, a4);
    if ((*(v5 + 96) & 0x2000) == 0)
    {
      return this;
    }

    goto LABEL_31;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xC, *(v5 + 89), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_30;
  }

LABEL_14:
  if ((v6 & 0x2000) == 0)
  {
    return this;
  }

LABEL_31:
  v8 = *(v5 + 91);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xE, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    if (v2)
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::default_instance_ + 8);
      }

      v6 = *(v5 + 36);
      if (*(v5 + 36))
      {
        v7 = (v6 << 31 >> 31) & 9;
        if ((v6 & 2) != 0)
        {
          v7 += 9;
        }

        if ((v6 & 4) != 0)
        {
          v6 = v7 + 9;
        }

        else
        {
          v6 = v7;
        }
      }

      *(v5 + 32) = v6;
      v3 = v6 + 2;
      v2 = *(this + 24);
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 4) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 8) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x10) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x20) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x40) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x80) != 0)
    {
      result = v3 + 9;
    }

    else
    {
      result = v3;
    }
  }

  else
  {
    result = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    v8 = result + 9;
    if ((v2 & 0x100) == 0)
    {
      v8 = result;
    }

    if ((v2 & 0x200) != 0)
    {
      v8 += 9;
    }

    v9.i64[0] = 0x200000002;
    v9.i64[1] = 0x200000002;
    result = (vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_1D0E7A2F0), v9)) + v8);
  }

  *(this + 23) = result;
  return result;
}

void CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::MergeFrom(this, lpsrc);
}