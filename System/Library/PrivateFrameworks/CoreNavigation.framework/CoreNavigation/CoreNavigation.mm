uint64_t cnlogging::details::CNProtobufStreamChecksum::adler32(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = 0;
  v4 = (*a1 + a2);
  v5 = 1;
  do
  {
    v6 = *v4++;
    v5 = (v5 + v6) % 0xFFF1;
    v3 = (v5 + v3) % 0xFFF1;
    --a3;
  }

  while (a3);
  return v5 | (v3 << 16);
}

CoreNavigation::CLP::LogEntry::LogEntry *CoreNavigation::CLP::LogEntry::LogEntry::LogEntry(CoreNavigation::CLP::LogEntry::LogEntry *this)
{
  *this = &unk_1F4CD9480;
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::ExtensionSet((this + 8));
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture *CoreNavigation::CLP::LogEntry::LogEntry::Clear(CoreNavigation::CLP::LogEntry::LogEntry *this)
{
  result = wireless_diagnostics::google::protobuf::internal::ExtensionSet::Clear((this + 8));
  LOBYTE(v3) = *(this + 52);
  if (v3)
  {
    if (*(this + 52))
    {
      v4 = *(this + 4);
      if (v4)
      {
        if (*(v4 + 44))
        {
          *(v4 + 24) = 0u;
          *(v4 + 8) = 0u;
        }

        *(v4 + 44) = 0;
        v3 = *(this + 13);
      }
    }

    if ((v3 & 2) != 0)
    {
      result = *(this + 5);
      if (result)
      {
        result = CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::Clear(result);
      }
    }
  }

  *(this + 13) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::LogEntry::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::LogEntry *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v4 = this;
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, (v6 & 0x80000000) != 0))
      {
        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        v6 = this;
        *(a2 + 8) = this;
        if (!this)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        if (!v6)
        {
          return 1;
        }
      }

      v7 = v6 & 7;
      if (v6 >> 3 == 4)
      {
        break;
      }

      if (v6 >> 3 != 1 || v7 != 2)
      {
        goto LABEL_16;
      }

      *(v4 + 13) |= 1u;
      v8 = *(v4 + 4);
      if (!v8)
      {
        operator new();
      }

      v25 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25))
        {
          return 0;
        }
      }

      else
      {
        v25 = *v9;
        *(a2 + 1) = v9 + 1;
      }

      v10 = *(a2 + 14);
      v11 = *(a2 + 15);
      *(a2 + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::MergePartialFromCodedStream(v8, a2, v12) || *(a2 + 36) != 1)
      {
        return 0;
      }

      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v13 = *(a2 + 14);
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v15 < 0 == v14)
      {
        *(a2 + 14) = v15;
      }

      v16 = *(a2 + 1);
      if (v16 < *(a2 + 2) && *v16 == 34)
      {
        *(a2 + 1) = v16 + 1;
LABEL_31:
        *(v4 + 13) |= 2u;
        v17 = *(v4 + 5);
        if (!v17)
        {
          operator new();
        }

        v26 = 0;
        v18 = *(a2 + 1);
        if (v18 >= *(a2 + 2) || *v18 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26))
          {
            return 0;
          }
        }

        else
        {
          v26 = *v18;
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
        if (!CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::MergePartialFromCodedStream(v17, a2, v21) || *(a2 + 36) != 1)
        {
          return 0;
        }

        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v22 = *(a2 + 14);
        v14 = __OFSUB__(v22, 1);
        v23 = v22 - 1;
        if (v23 < 0 == v14)
        {
          *(a2 + 14) = v23;
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

    if (v7 == 2)
    {
      goto LABEL_31;
    }

LABEL_16:
    if (v7 == 4)
    {
      return 1;
    }

    if ((v6 & 0xFFFFFFF8) == 0x10)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      this = wireless_diagnostics::google::protobuf::internal::ExtensionSet::ParseField((v4 + 8), v6, a2, CoreNavigation::CLP::LogEntry::LogEntry::default_instance_);
      if ((this & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, v6);
      if ((this & 1) == 0)
      {
        return 0;
      }
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
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
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if (v8 == 1)
          {
            goto LABEL_28;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_32;
        }

        goto LABEL_25;
      }

      if (v7 != 1)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_25;
      }

      v17 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v17) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v17;
      *(this + 11) |= 1u;
      v11 = *(a2 + 1);
      if (v11 < *(a2 + 2) && *v11 == 17)
      {
        *(a2 + 1) = v11 + 1;
LABEL_20:
        v17 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v17) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v17;
        *(this + 11) |= 2u;
        v12 = *(a2 + 1);
        if (v12 < *(a2 + 2) && *v12 == 25)
        {
          *(a2 + 1) = v12 + 1;
LABEL_28:
          v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v17) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v17;
          *(this + 11) |= 4u;
          v13 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v13 < v9 && *v13 == 32)
          {
            v10 = v13 + 1;
            *(a2 + 1) = v10;
LABEL_32:
            v17 = 0;
            if (v10 >= v9 || (v14 = *v10, (v14 & 0x8000000000000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v17);
              if (!result)
              {
                return result;
              }

              v14 = v17;
              v15 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v15 = v10 + 1;
              *(a2 + 1) = v15;
            }

            *(this + 4) = v14;
            *(this + 11) |= 8u;
            if (v15 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_20;
    }

LABEL_25:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 <= 0x3E7)
        {
          switch(v7)
          {
            case 1u:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              *(this + 79) |= 1u;
              v9 = *(this + 1);
              if (!v9)
              {
                operator new();
              }

              v314 = 0;
              v10 = *(a2 + 1);
              if (v10 >= *(a2 + 2) || *v10 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v10;
                *(a2 + 1) = v10 + 1;
              }

              v11 = *(a2 + 14);
              v12 = *(a2 + 15);
              *(a2 + 14) = v11 + 1;
              if (v11 >= v12)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::Accel::MergePartialFromCodedStream(v9, a2, v13) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v14 = *(a2 + 14);
              v15 = __OFSUB__(v14, 1);
              v16 = v14 - 1;
              if (v16 < 0 == v15)
              {
                *(a2 + 14) = v16;
              }

              v17 = *(a2 + 1);
              if (v17 >= *(a2 + 2) || *v17 != 18)
              {
                continue;
              }

              *(a2 + 1) = v17 + 1;
LABEL_106:
              *(this + 79) |= 2u;
              v18 = *(this + 2);
              if (!v18)
              {
                operator new();
              }

              v314 = 0;
              v19 = *(a2 + 1);
              if (v19 >= *(a2 + 2) || *v19 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v19;
                *(a2 + 1) = v19 + 1;
              }

              v20 = *(a2 + 14);
              v21 = *(a2 + 15);
              *(a2 + 14) = v20 + 1;
              if (v20 >= v21)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::Gyro::MergePartialFromCodedStream(v18, a2, v22) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v23 = *(a2 + 14);
              v15 = __OFSUB__(v23, 1);
              v24 = v23 - 1;
              if (v24 < 0 == v15)
              {
                *(a2 + 14) = v24;
              }

              v25 = *(a2 + 1);
              if (v25 >= *(a2 + 2) || *v25 != 26)
              {
                continue;
              }

              *(a2 + 1) = v25 + 1;
LABEL_120:
              *(this + 79) |= 4u;
              v26 = *(this + 3);
              if (!v26)
              {
                operator new();
              }

              v314 = 0;
              v27 = *(a2 + 1);
              if (v27 >= *(a2 + 2) || *v27 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v27;
                *(a2 + 1) = v27 + 1;
              }

              v28 = *(a2 + 14);
              v29 = *(a2 + 15);
              *(a2 + 14) = v28 + 1;
              if (v28 >= v29)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::Baro::MergePartialFromCodedStream(v26, a2, v30) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v31 = *(a2 + 14);
              v15 = __OFSUB__(v31, 1);
              v32 = v31 - 1;
              if (v32 < 0 == v15)
              {
                *(a2 + 14) = v32;
              }

              v33 = *(a2 + 1);
              if (v33 >= *(a2 + 2) || *v33 != 34)
              {
                continue;
              }

              *(a2 + 1) = v33 + 1;
LABEL_134:
              *(this + 79) |= 8u;
              v34 = *(this + 4);
              if (!v34)
              {
                operator new();
              }

              v314 = 0;
              v35 = *(a2 + 1);
              if (v35 >= *(a2 + 2) || *v35 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v35;
                *(a2 + 1) = v35 + 1;
              }

              v36 = *(a2 + 14);
              v37 = *(a2 + 15);
              *(a2 + 14) = v36 + 1;
              if (v36 >= v37)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::Location::MergePartialFromCodedStream(v34, a2, v38) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v39 = *(a2 + 14);
              v15 = __OFSUB__(v39, 1);
              v40 = v39 - 1;
              if (v40 < 0 == v15)
              {
                *(a2 + 14) = v40;
              }

              v41 = *(a2 + 1);
              if (v41 >= *(a2 + 2) || *v41 != 42)
              {
                continue;
              }

              *(a2 + 1) = v41 + 1;
LABEL_148:
              *(this + 79) |= 0x10u;
              v42 = *(this + 5);
              if (!v42)
              {
                operator new();
              }

              v314 = 0;
              v43 = *(a2 + 1);
              if (v43 >= *(a2 + 2) || *v43 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v43;
                *(a2 + 1) = v43 + 1;
              }

              v44 = *(a2 + 14);
              v45 = *(a2 + 15);
              *(a2 + 14) = v44 + 1;
              if (v44 >= v45)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::MotionState::MergePartialFromCodedStream(v42, a2, v46) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v47 = *(a2 + 14);
              v15 = __OFSUB__(v47, 1);
              v48 = v47 - 1;
              if (v48 < 0 == v15)
              {
                *(a2 + 14) = v48;
              }

              v49 = *(a2 + 1);
              if (v49 >= *(a2 + 2) || *v49 != 50)
              {
                continue;
              }

              *(a2 + 1) = v49 + 1;
LABEL_162:
              *(this + 79) |= 0x20u;
              v50 = *(this + 6);
              if (!v50)
              {
                operator new();
              }

              v314 = 0;
              v51 = *(a2 + 1);
              if (v51 >= *(a2 + 2) || *v51 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v51;
                *(a2 + 1) = v51 + 1;
              }

              v52 = *(a2 + 14);
              v53 = *(a2 + 15);
              *(a2 + 14) = v52 + 1;
              if (v52 >= v53)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::MergePartialFromCodedStream(v50, a2, v54) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v55 = *(a2 + 14);
              v15 = __OFSUB__(v55, 1);
              v56 = v55 - 1;
              if (v56 < 0 == v15)
              {
                *(a2 + 14) = v56;
              }

              v57 = *(a2 + 1);
              if (v57 >= *(a2 + 2) || *v57 != 58)
              {
                continue;
              }

              *(a2 + 1) = v57 + 1;
LABEL_176:
              *(this + 79) |= 0x40u;
              v58 = *(this + 7);
              if (!v58)
              {
                operator new();
              }

              v314 = 0;
              v59 = *(a2 + 1);
              if (v59 >= *(a2 + 2) || *v59 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v59;
                *(a2 + 1) = v59 + 1;
              }

              v60 = *(a2 + 14);
              v61 = *(a2 + 15);
              *(a2 + 14) = v60 + 1;
              if (v60 >= v61)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::MergePartialFromCodedStream(v58, a2, v62) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v63 = *(a2 + 14);
              v15 = __OFSUB__(v63, 1);
              v64 = v63 - 1;
              if (v64 < 0 == v15)
              {
                *(a2 + 14) = v64;
              }

              v65 = *(a2 + 1);
              if (v65 >= *(a2 + 2) || *v65 != 66)
              {
                continue;
              }

              *(a2 + 1) = v65 + 1;
LABEL_190:
              *(this + 79) |= 0x80u;
              v66 = *(this + 8);
              if (!v66)
              {
                operator new();
              }

              v314 = 0;
              v67 = *(a2 + 1);
              if (v67 >= *(a2 + 2) || *v67 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v67;
                *(a2 + 1) = v67 + 1;
              }

              v68 = *(a2 + 14);
              v69 = *(a2 + 15);
              *(a2 + 14) = v68 + 1;
              if (v68 >= v69)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::Timer::MergePartialFromCodedStream(v66, a2, v70) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v71 = *(a2 + 14);
              v15 = __OFSUB__(v71, 1);
              v72 = v71 - 1;
              if (v72 < 0 == v15)
              {
                *(a2 + 14) = v72;
              }

              v73 = *(a2 + 1);
              if (v73 >= *(a2 + 2) || *v73 != 74)
              {
                continue;
              }

              *(a2 + 1) = v73 + 1;
LABEL_204:
              *(this + 79) |= 0x100u;
              v74 = *(this + 9);
              if (!v74)
              {
                operator new();
              }

              v314 = 0;
              v75 = *(a2 + 1);
              if (v75 >= *(a2 + 2) || *v75 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v75;
                *(a2 + 1) = v75 + 1;
              }

              v76 = *(a2 + 14);
              v77 = *(a2 + 15);
              *(a2 + 14) = v76 + 1;
              if (v76 >= v77)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::MergePartialFromCodedStream(v74, a2, v78) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v79 = *(a2 + 14);
              v15 = __OFSUB__(v79, 1);
              v80 = v79 - 1;
              if (v80 < 0 == v15)
              {
                *(a2 + 14) = v80;
              }

              v81 = *(a2 + 1);
              if (v81 >= *(a2 + 2) || *v81 != 82)
              {
                continue;
              }

              *(a2 + 1) = v81 + 1;
LABEL_218:
              *(this + 79) |= 0x200u;
              v82 = *(this + 10);
              if (!v82)
              {
                operator new();
              }

              v314 = 0;
              v83 = *(a2 + 1);
              if (v83 >= *(a2 + 2) || *v83 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v83;
                *(a2 + 1) = v83 + 1;
              }

              v84 = *(a2 + 14);
              v85 = *(a2 + 15);
              *(a2 + 14) = v84 + 1;
              if (v84 >= v85)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::MapVector::MergePartialFromCodedStream(v82, a2, v86) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v87 = *(a2 + 14);
              v15 = __OFSUB__(v87, 1);
              v88 = v87 - 1;
              if (v88 < 0 == v15)
              {
                *(a2 + 14) = v88;
              }

              v89 = *(a2 + 1);
              if (v89 >= *(a2 + 2) || *v89 != 90)
              {
                continue;
              }

              *(a2 + 1) = v89 + 1;
LABEL_232:
              *(this + 79) |= 0x400u;
              v90 = *(this + 11);
              if (!v90)
              {
                operator new();
              }

              v314 = 0;
              v91 = *(a2 + 1);
              if (v91 >= *(a2 + 2) || *v91 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v91;
                *(a2 + 1) = v91 + 1;
              }

              v92 = *(a2 + 14);
              v93 = *(a2 + 15);
              *(a2 + 14) = v92 + 1;
              if (v92 >= v93)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::MergePartialFromCodedStream(v90, a2, v94) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v95 = *(a2 + 14);
              v15 = __OFSUB__(v95, 1);
              v96 = v95 - 1;
              if (v96 < 0 == v15)
              {
                *(a2 + 14) = v96;
              }

              v97 = *(a2 + 1);
              if (v97 >= *(a2 + 2) || *v97 != 98)
              {
                continue;
              }

              *(a2 + 1) = v97 + 1;
LABEL_246:
              *(this + 79) |= 0x800u;
              v98 = *(this + 12);
              if (!v98)
              {
                operator new();
              }

              v314 = 0;
              v99 = *(a2 + 1);
              if (v99 >= *(a2 + 2) || *v99 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v99;
                *(a2 + 1) = v99 + 1;
              }

              v100 = *(a2 + 14);
              v101 = *(a2 + 15);
              *(a2 + 14) = v100 + 1;
              if (v100 >= v101)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::MergePartialFromCodedStream(v98, a2, v102) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v103 = *(a2 + 14);
              v15 = __OFSUB__(v103, 1);
              v104 = v103 - 1;
              if (v104 < 0 == v15)
              {
                *(a2 + 14) = v104;
              }

              v105 = *(a2 + 1);
              if (v105 >= *(a2 + 2) || *v105 != 106)
              {
                continue;
              }

              *(a2 + 1) = v105 + 1;
LABEL_260:
              *(this + 79) |= 0x1000u;
              v106 = *(this + 13);
              if (!v106)
              {
                operator new();
              }

              v314 = 0;
              v107 = *(a2 + 1);
              if (v107 >= *(a2 + 2) || *v107 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v107;
                *(a2 + 1) = v107 + 1;
              }

              v108 = *(a2 + 14);
              v109 = *(a2 + 15);
              *(a2 + 14) = v108 + 1;
              if (v108 >= v109)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergePartialFromCodedStream(v106, a2, v110) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v111 = *(a2 + 14);
              v15 = __OFSUB__(v111, 1);
              v112 = v111 - 1;
              if (v112 < 0 == v15)
              {
                *(a2 + 14) = v112;
              }

              v113 = *(a2 + 1);
              if (v113 >= *(a2 + 2) || *v113 != 114)
              {
                continue;
              }

              *(a2 + 1) = v113 + 1;
LABEL_274:
              *(this + 79) |= 0x2000u;
              v114 = *(this + 14);
              if (!v114)
              {
                operator new();
              }

              v314 = 0;
              v115 = *(a2 + 1);
              if (v115 >= *(a2 + 2) || *v115 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v115;
                *(a2 + 1) = v115 + 1;
              }

              v116 = *(a2 + 14);
              v117 = *(a2 + 15);
              *(a2 + 14) = v116 + 1;
              if (v116 >= v117)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::MergePartialFromCodedStream(v114, a2, v118) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v119 = *(a2 + 14);
              v15 = __OFSUB__(v119, 1);
              v120 = v119 - 1;
              if (v120 < 0 == v15)
              {
                *(a2 + 14) = v120;
              }

              v121 = *(a2 + 1);
              if (v121 >= *(a2 + 2) || *v121 != 122)
              {
                continue;
              }

              *(a2 + 1) = v121 + 1;
LABEL_288:
              *(this + 79) |= 0x4000u;
              v122 = *(this + 15);
              if (!v122)
              {
                operator new();
              }

              v314 = 0;
              v123 = *(a2 + 1);
              if (v123 >= *(a2 + 2) || *v123 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v123;
                *(a2 + 1) = v123 + 1;
              }

              v124 = *(a2 + 14);
              v125 = *(a2 + 15);
              *(a2 + 14) = v124 + 1;
              if (v124 >= v125)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::Reset::MergePartialFromCodedStream(v122, a2, v126) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v127 = *(a2 + 14);
              v15 = __OFSUB__(v127, 1);
              v128 = v127 - 1;
              if (v128 < 0 == v15)
              {
                *(a2 + 14) = v128;
              }

              v129 = *(a2 + 1);
              if (*(a2 + 4) - v129 <= 1 || *v129 != 130 || v129[1] != 1)
              {
                continue;
              }

              *(a2 + 1) = v129 + 2;
LABEL_303:
              *(this + 79) |= 0x8000u;
              v130 = *(this + 16);
              if (!v130)
              {
                operator new();
              }

              v314 = 0;
              v131 = *(a2 + 1);
              if (v131 >= *(a2 + 2) || *v131 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v131;
                *(a2 + 1) = v131 + 1;
              }

              v132 = *(a2 + 14);
              v133 = *(a2 + 15);
              *(a2 + 14) = v132 + 1;
              if (v132 >= v133)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::StepCount::MergePartialFromCodedStream(v130, a2, v134) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v135 = *(a2 + 14);
              v15 = __OFSUB__(v135, 1);
              v136 = v135 - 1;
              if (v136 < 0 == v15)
              {
                *(a2 + 14) = v136;
              }

              v137 = *(a2 + 1);
              if (*(a2 + 4) - v137 <= 1 || *v137 != 154 || v137[1] != 1)
              {
                continue;
              }

              *(a2 + 1) = v137 + 2;
LABEL_318:
              *(this + 79) |= 0x10000u;
              v138 = *(this + 17);
              if (!v138)
              {
                operator new();
              }

              v314 = 0;
              v139 = *(a2 + 1);
              if (v139 >= *(a2 + 2) || *v139 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v139;
                *(a2 + 1) = v139 + 1;
              }

              v140 = *(a2 + 14);
              v141 = *(a2 + 15);
              *(a2 + 14) = v140 + 1;
              if (v140 >= v141)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::MergePartialFromCodedStream(v138, a2, v142) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v143 = *(a2 + 14);
              v15 = __OFSUB__(v143, 1);
              v144 = v143 - 1;
              if (v144 < 0 == v15)
              {
                *(a2 + 14) = v144;
              }

              v145 = *(a2 + 1);
              if (*(a2 + 4) - v145 <= 1 || *v145 != 170 || v145[1] != 1)
              {
                continue;
              }

              *(a2 + 1) = v145 + 2;
LABEL_333:
              *(this + 79) |= 0x20000u;
              v146 = *(this + 18);
              if (!v146)
              {
                operator new();
              }

              v314 = 0;
              v147 = *(a2 + 1);
              if (v147 >= *(a2 + 2) || *v147 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v147;
                *(a2 + 1) = v147 + 1;
              }

              v148 = *(a2 + 14);
              v149 = *(a2 + 15);
              *(a2 + 14) = v148 + 1;
              if (v148 >= v149)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::MergePartialFromCodedStream(v146, a2, v150) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v151 = *(a2 + 14);
              v15 = __OFSUB__(v151, 1);
              v152 = v151 - 1;
              if (v152 < 0 == v15)
              {
                *(a2 + 14) = v152;
              }

              v153 = *(a2 + 1);
              if (*(a2 + 4) - v153 <= 1 || *v153 != 178 || v153[1] != 1)
              {
                continue;
              }

              *(a2 + 1) = v153 + 2;
LABEL_348:
              *(this + 79) |= 0x40000u;
              v154 = *(this + 19);
              if (!v154)
              {
                operator new();
              }

              v314 = 0;
              v155 = *(a2 + 1);
              if (v155 >= *(a2 + 2) || *v155 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v155;
                *(a2 + 1) = v155 + 1;
              }

              v156 = *(a2 + 14);
              v157 = *(a2 + 15);
              *(a2 + 14) = v156 + 1;
              if (v156 >= v157)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::MergePartialFromCodedStream(v154, a2, v158) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v159 = *(a2 + 14);
              v15 = __OFSUB__(v159, 1);
              v160 = v159 - 1;
              if (v160 < 0 == v15)
              {
                *(a2 + 14) = v160;
              }

              v161 = *(a2 + 1);
              if (*(a2 + 4) - v161 <= 1 || *v161 != 186 || v161[1] != 1)
              {
                continue;
              }

              *(a2 + 1) = v161 + 2;
LABEL_363:
              *(this + 79) |= 0x80000u;
              v162 = *(this + 20);
              if (!v162)
              {
                operator new();
              }

              v314 = 0;
              v163 = *(a2 + 1);
              if (v163 >= *(a2 + 2) || *v163 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v163;
                *(a2 + 1) = v163 + 1;
              }

              v164 = *(a2 + 14);
              v165 = *(a2 + 15);
              *(a2 + 14) = v164 + 1;
              if (v164 >= v165)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::MergePartialFromCodedStream(v162, a2, v166) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v167 = *(a2 + 14);
              v15 = __OFSUB__(v167, 1);
              v168 = v167 - 1;
              if (v168 < 0 == v15)
              {
                *(a2 + 14) = v168;
              }

              v169 = *(a2 + 1);
              if (*(a2 + 4) - v169 <= 1 || *v169 != 194 || v169[1] != 1)
              {
                continue;
              }

              *(a2 + 1) = v169 + 2;
LABEL_378:
              *(this + 79) |= 0x100000u;
              v170 = *(this + 21);
              if (!v170)
              {
                operator new();
              }

              v314 = 0;
              v171 = *(a2 + 1);
              if (v171 >= *(a2 + 2) || *v171 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v171;
                *(a2 + 1) = v171 + 1;
              }

              v172 = *(a2 + 14);
              v173 = *(a2 + 15);
              *(a2 + 14) = v172 + 1;
              if (v172 >= v173)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::MergePartialFromCodedStream(v170, a2, v174) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v175 = *(a2 + 14);
              v15 = __OFSUB__(v175, 1);
              v176 = v175 - 1;
              if (v176 < 0 == v15)
              {
                *(a2 + 14) = v176;
              }

              v177 = *(a2 + 1);
              if (*(a2 + 4) - v177 <= 1 || *v177 != 202 || v177[1] != 1)
              {
                continue;
              }

              *(a2 + 1) = v177 + 2;
LABEL_393:
              *(this + 79) |= 0x200000u;
              v178 = *(this + 22);
              if (!v178)
              {
                operator new();
              }

              v314 = 0;
              v179 = *(a2 + 1);
              if (v179 >= *(a2 + 2) || *v179 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v179;
                *(a2 + 1) = v179 + 1;
              }

              v180 = *(a2 + 14);
              v181 = *(a2 + 15);
              *(a2 + 14) = v180 + 1;
              if (v180 >= v181)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::MergePartialFromCodedStream(v178, a2, v182) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v183 = *(a2 + 14);
              v15 = __OFSUB__(v183, 1);
              v184 = v183 - 1;
              if (v184 < 0 == v15)
              {
                *(a2 + 14) = v184;
              }

              v185 = *(a2 + 1);
              if (*(a2 + 4) - v185 <= 1 || *v185 != 210 || v185[1] != 1)
              {
                continue;
              }

              *(a2 + 1) = v185 + 2;
LABEL_408:
              *(this + 79) |= 0x400000u;
              v186 = *(this + 23);
              if (!v186)
              {
                operator new();
              }

              v314 = 0;
              v187 = *(a2 + 1);
              if (v187 >= *(a2 + 2) || *v187 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v187;
                *(a2 + 1) = v187 + 1;
              }

              v188 = *(a2 + 14);
              v189 = *(a2 + 15);
              *(a2 + 14) = v188 + 1;
              if (v188 >= v189)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::Compass::MergePartialFromCodedStream(v186, a2, v190) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v191 = *(a2 + 14);
              v15 = __OFSUB__(v191, 1);
              v192 = v191 - 1;
              if (v192 < 0 == v15)
              {
                *(a2 + 14) = v192;
              }

              v193 = *(a2 + 1);
              if (*(a2 + 4) - v193 <= 1 || *v193 != 218 || v193[1] != 1)
              {
                continue;
              }

              *(a2 + 1) = v193 + 2;
LABEL_423:
              *(this + 79) |= 0x800000u;
              v194 = *(this + 24);
              if (!v194)
              {
                operator new();
              }

              v314 = 0;
              v195 = *(a2 + 1);
              if (v195 >= *(a2 + 2) || *v195 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v195;
                *(a2 + 1) = v195 + 1;
              }

              v196 = *(a2 + 14);
              v197 = *(a2 + 15);
              *(a2 + 14) = v196 + 1;
              if (v196 >= v197)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::MergePartialFromCodedStream(v194, a2, v198) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v199 = *(a2 + 14);
              v15 = __OFSUB__(v199, 1);
              v200 = v199 - 1;
              if (v200 < 0 == v15)
              {
                *(a2 + 14) = v200;
              }

              v201 = *(a2 + 1);
              if (*(a2 + 4) - v201 <= 1 || *v201 != 226 || v201[1] != 1)
              {
                continue;
              }

              *(a2 + 1) = v201 + 2;
LABEL_438:
              *(this + 79) |= 0x1000000u;
              v202 = *(this + 25);
              if (!v202)
              {
                operator new();
              }

              v314 = 0;
              v203 = *(a2 + 1);
              if (v203 >= *(a2 + 2) || *v203 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v203;
                *(a2 + 1) = v203 + 1;
              }

              v204 = *(a2 + 14);
              v205 = *(a2 + 15);
              *(a2 + 14) = v204 + 1;
              if (v204 >= v205)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::MergePartialFromCodedStream(v202, a2, v206) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v207 = *(a2 + 14);
              v15 = __OFSUB__(v207, 1);
              v208 = v207 - 1;
              if (v208 < 0 == v15)
              {
                *(a2 + 14) = v208;
              }

              v209 = *(a2 + 1);
              if (*(a2 + 4) - v209 <= 1 || *v209 != 234 || v209[1] != 1)
              {
                continue;
              }

              *(a2 + 1) = v209 + 2;
LABEL_453:
              *(this + 79) |= 0x2000000u;
              v210 = *(this + 26);
              if (!v210)
              {
                operator new();
              }

              v314 = 0;
              v211 = *(a2 + 1);
              if (v211 >= *(a2 + 2) || *v211 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v211;
                *(a2 + 1) = v211 + 1;
              }

              v212 = *(a2 + 14);
              v213 = *(a2 + 15);
              *(a2 + 14) = v212 + 1;
              if (v212 >= v213)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::MergePartialFromCodedStream(v210, a2, v214) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v215 = *(a2 + 14);
              v15 = __OFSUB__(v215, 1);
              v216 = v215 - 1;
              if (v216 < 0 == v15)
              {
                *(a2 + 14) = v216;
              }

              v217 = *(a2 + 1);
              if (*(a2 + 4) - v217 <= 1 || *v217 != 242 || v217[1] != 1)
              {
                continue;
              }

              *(a2 + 1) = v217 + 2;
LABEL_468:
              *(this + 79) |= 0x4000000u;
              v218 = *(this + 27);
              if (!v218)
              {
                operator new();
              }

              v314 = 0;
              v219 = *(a2 + 1);
              if (v219 >= *(a2 + 2) || *v219 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v219;
                *(a2 + 1) = v219 + 1;
              }

              v220 = *(a2 + 14);
              v221 = *(a2 + 15);
              *(a2 + 14) = v220 + 1;
              if (v220 >= v221)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::MergePartialFromCodedStream(v218, a2, v222) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v223 = *(a2 + 14);
              v15 = __OFSUB__(v223, 1);
              v224 = v223 - 1;
              if (v224 < 0 == v15)
              {
                *(a2 + 14) = v224;
              }

              v225 = *(a2 + 1);
              if (*(a2 + 4) - v225 <= 1 || *v225 != 250 || v225[1] != 1)
              {
                continue;
              }

              *(a2 + 1) = v225 + 2;
LABEL_483:
              *(this + 79) |= 0x8000000u;
              v226 = *(this + 28);
              if (!v226)
              {
                operator new();
              }

              v314 = 0;
              v227 = *(a2 + 1);
              if (v227 >= *(a2 + 2) || *v227 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v227;
                *(a2 + 1) = v227 + 1;
              }

              v228 = *(a2 + 14);
              v229 = *(a2 + 15);
              *(a2 + 14) = v228 + 1;
              if (v228 >= v229)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::WatchState::MergePartialFromCodedStream(v226, a2, v230) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v231 = *(a2 + 14);
              v15 = __OFSUB__(v231, 1);
              v232 = v231 - 1;
              if (v232 < 0 == v15)
              {
                *(a2 + 14) = v232;
              }

              v233 = *(a2 + 1);
              if (*(a2 + 4) - v233 <= 1 || *v233 != 130 || v233[1] != 2)
              {
                continue;
              }

              *(a2 + 1) = v233 + 2;
LABEL_498:
              *(this + 79) |= 0x10000000u;
              v234 = *(this + 29);
              if (!v234)
              {
                operator new();
              }

              v314 = 0;
              v235 = *(a2 + 1);
              if (v235 >= *(a2 + 2) || *v235 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v235;
                *(a2 + 1) = v235 + 1;
              }

              v236 = *(a2 + 14);
              v237 = *(a2 + 15);
              *(a2 + 14) = v236 + 1;
              if (v236 >= v237)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::MergePartialFromCodedStream(v234, a2, v238) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v239 = *(a2 + 14);
              v15 = __OFSUB__(v239, 1);
              v240 = v239 - 1;
              if (v240 < 0 == v15)
              {
                *(a2 + 14) = v240;
              }

              v241 = *(a2 + 1);
              if (*(a2 + 4) - v241 <= 1 || *v241 != 138 || v241[1] != 2)
              {
                continue;
              }

              *(a2 + 1) = v241 + 2;
LABEL_513:
              *(this + 79) |= 0x20000000u;
              v242 = *(this + 30);
              if (!v242)
              {
                operator new();
              }

              v314 = 0;
              v243 = *(a2 + 1);
              if (v243 >= *(a2 + 2) || *v243 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v243;
                *(a2 + 1) = v243 + 1;
              }

              v244 = *(a2 + 14);
              v245 = *(a2 + 15);
              *(a2 + 14) = v244 + 1;
              if (v244 >= v245)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::MergePartialFromCodedStream(v242, a2, v246) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v247 = *(a2 + 14);
              v15 = __OFSUB__(v247, 1);
              v248 = v247 - 1;
              if (v248 < 0 == v15)
              {
                *(a2 + 14) = v248;
              }

              v249 = *(a2 + 1);
              if (*(a2 + 4) - v249 <= 1 || *v249 != 146 || v249[1] != 2)
              {
                continue;
              }

              *(a2 + 1) = v249 + 2;
LABEL_528:
              *(this + 79) |= 0x40000000u;
              v250 = *(this + 31);
              if (!v250)
              {
                operator new();
              }

              v314 = 0;
              v251 = *(a2 + 1);
              if (v251 >= *(a2 + 2) || *v251 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v251;
                *(a2 + 1) = v251 + 1;
              }

              v252 = *(a2 + 14);
              v253 = *(a2 + 15);
              *(a2 + 14) = v252 + 1;
              if (v252 >= v253)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::MergePartialFromCodedStream(v250, a2, v254) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v255 = *(a2 + 14);
              v15 = __OFSUB__(v255, 1);
              v256 = v255 - 1;
              if (v256 < 0 == v15)
              {
                *(a2 + 14) = v256;
              }

              v257 = *(a2 + 1);
              if (*(a2 + 4) - v257 <= 1 || *v257 != 154 || v257[1] != 2)
              {
                continue;
              }

              *(a2 + 1) = v257 + 2;
LABEL_543:
              *(this + 79) |= 0x80000000;
              v258 = *(this + 32);
              if (!v258)
              {
                operator new();
              }

              v314 = 0;
              v259 = *(a2 + 1);
              if (v259 >= *(a2 + 2) || *v259 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
                {
                  return 0;
                }
              }

              else
              {
                v314 = *v259;
                *(a2 + 1) = v259 + 1;
              }

              v260 = *(a2 + 14);
              v261 = *(a2 + 15);
              *(a2 + 14) = v260 + 1;
              if (v260 >= v261)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate::MergePartialFromCodedStream(v258, a2, v262) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v263 = *(a2 + 14);
              v15 = __OFSUB__(v263, 1);
              v264 = v263 - 1;
              if (v264 < 0 == v15)
              {
                *(a2 + 14) = v264;
              }

              v265 = *(a2 + 1);
              if (*(a2 + 4) - v265 <= 1 || *v265 != 194 || v265[1] != 62)
              {
                continue;
              }

              *(a2 + 1) = v265 + 2;
              break;
            case 2u:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_106;
            case 3u:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_120;
            case 4u:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_134;
            case 5u:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_148;
            case 6u:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_162;
            case 7u:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_176;
            case 8u:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_190;
            case 9u:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_204;
            case 0xAu:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_218;
            case 0xBu:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_232;
            case 0xCu:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_246;
            case 0xDu:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_260;
            case 0xEu:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_274;
            case 0xFu:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_288;
            case 0x10u:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_303;
            case 0x13u:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_318;
            case 0x15u:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_333;
            case 0x16u:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_348;
            case 0x17u:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_363;
            case 0x18u:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_378;
            case 0x19u:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_393;
            case 0x1Au:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_408;
            case 0x1Bu:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_423;
            case 0x1Cu:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_438;
            case 0x1Du:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_453;
            case 0x1Eu:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_468;
            case 0x1Fu:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_483;
            case 0x20u:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_498;
            case 0x21u:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_513;
            case 0x22u:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_528;
            case 0x23u:
              if (v8 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_543;
            default:
              goto LABEL_94;
          }

          goto LABEL_558;
        }

        if (TagFallback >> 3 <= 0x3F1)
        {
          break;
        }

        if (v7 == 1010)
        {
          if (v8 != 2)
          {
            goto LABEL_94;
          }

LABEL_603:
          *(this + 80) |= 8u;
          v290 = *(this + 36);
          if (!v290)
          {
            operator new();
          }

          v314 = 0;
          v291 = *(a2 + 1);
          if (v291 >= *(a2 + 2) || *v291 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
            {
              return 0;
            }
          }

          else
          {
            v314 = *v291;
            *(a2 + 1) = v291 + 1;
          }

          v292 = *(a2 + 14);
          v293 = *(a2 + 15);
          *(a2 + 14) = v292 + 1;
          if (v292 >= v293)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::MergePartialFromCodedStream(v290, a2, v294) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v295 = *(a2 + 14);
          v15 = __OFSUB__(v295, 1);
          v296 = v295 - 1;
          if (v296 < 0 == v15)
          {
            *(a2 + 14) = v296;
          }

          v297 = *(a2 + 1);
          if (*(a2 + 4) - v297 > 1 && *v297 == 178 && v297[1] == 63)
          {
            *(a2 + 1) = v297 + 2;
LABEL_618:
            *(this + 80) |= 0x10u;
            v298 = *(this + 37);
            if (!v298)
            {
              operator new();
            }

            v314 = 0;
            v299 = *(a2 + 1);
            if (v299 >= *(a2 + 2) || *v299 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
              {
                return 0;
              }
            }

            else
            {
              v314 = *v299;
              *(a2 + 1) = v299 + 1;
            }

            v300 = *(a2 + 14);
            v301 = *(a2 + 15);
            *(a2 + 14) = v300 + 1;
            if (v300 >= v301)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::MergePartialFromCodedStream(v298, a2, v302) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v303 = *(a2 + 14);
            v15 = __OFSUB__(v303, 1);
            v304 = v303 - 1;
            if (v304 < 0 == v15)
            {
              *(a2 + 14) = v304;
            }

            v305 = *(a2 + 1);
            if (*(a2 + 4) - v305 > 1 && *v305 == 194 && v305[1] == 63)
            {
              *(a2 + 1) = v305 + 2;
              goto LABEL_633;
            }
          }
        }

        else
        {
          if (v7 == 1014)
          {
            if (v8 == 2)
            {
              goto LABEL_618;
            }

            goto LABEL_94;
          }

          if (v7 != 1016 || v8 != 2)
          {
            goto LABEL_94;
          }

LABEL_633:
          *(this + 80) |= 0x20u;
          v306 = *(this + 38);
          if (!v306)
          {
            operator new();
          }

          v314 = 0;
          v307 = *(a2 + 1);
          if (v307 >= *(a2 + 2) || *v307 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
            {
              return 0;
            }
          }

          else
          {
            v314 = *v307;
            *(a2 + 1) = v307 + 1;
          }

          v308 = *(a2 + 14);
          v309 = *(a2 + 15);
          *(a2 + 14) = v308 + 1;
          if (v308 >= v309)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::MergePartialFromCodedStream(v306, a2, v310) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v311 = *(a2 + 14);
          v15 = __OFSUB__(v311, 1);
          v312 = v311 - 1;
          if (v312 < 0 == v15)
          {
            *(a2 + 14) = v312;
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

      if (v7 != 1000)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_94;
      }

LABEL_558:
      *(this + 80) |= 1u;
      v266 = *(this + 33);
      if (!v266)
      {
        operator new();
      }

      v314 = 0;
      v267 = *(a2 + 1);
      if (v267 >= *(a2 + 2) || *v267 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
        {
          return 0;
        }
      }

      else
      {
        v314 = *v267;
        *(a2 + 1) = v267 + 1;
      }

      v268 = *(a2 + 14);
      v269 = *(a2 + 15);
      *(a2 + 14) = v268 + 1;
      if (v268 >= v269)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::MergePartialFromCodedStream(v266, a2, v270) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v271 = *(a2 + 14);
      v15 = __OFSUB__(v271, 1);
      v272 = v271 - 1;
      if (v272 < 0 == v15)
      {
        *(a2 + 14) = v272;
      }

      v273 = *(a2 + 1);
      if (*(a2 + 4) - v273 > 1 && *v273 == 242 && v273[1] == 62)
      {
        *(a2 + 1) = v273 + 2;
LABEL_573:
        *(this + 80) |= 2u;
        v274 = *(this + 34);
        if (!v274)
        {
          operator new();
        }

        v314 = 0;
        v275 = *(a2 + 1);
        if (v275 >= *(a2 + 2) || *v275 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
          {
            return 0;
          }
        }

        else
        {
          v314 = *v275;
          *(a2 + 1) = v275 + 1;
        }

        v276 = *(a2 + 14);
        v277 = *(a2 + 15);
        *(a2 + 14) = v276 + 1;
        if (v276 >= v277)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::Raven::LogEntry::MergePartialFromCodedStream(v274, a2, v278) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v279 = *(a2 + 14);
        v15 = __OFSUB__(v279, 1);
        v280 = v279 - 1;
        if (v280 < 0 == v15)
        {
          *(a2 + 14) = v280;
        }

        v281 = *(a2 + 1);
        if (*(a2 + 4) - v281 > 1 && *v281 == 250 && v281[1] == 62)
        {
          *(a2 + 1) = v281 + 2;
LABEL_588:
          *(this + 80) |= 4u;
          v282 = *(this + 35);
          if (!v282)
          {
            operator new();
          }

          v314 = 0;
          v283 = *(a2 + 1);
          if (v283 >= *(a2 + 2) || *v283 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v314))
            {
              return 0;
            }
          }

          else
          {
            v314 = *v283;
            *(a2 + 1) = v283 + 1;
          }

          v284 = *(a2 + 14);
          v285 = *(a2 + 15);
          *(a2 + 14) = v284 + 1;
          if (v284 >= v285)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Vision::LogEntry::MergePartialFromCodedStream(v282, a2, v286) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v287 = *(a2 + 14);
          v15 = __OFSUB__(v287, 1);
          v288 = v287 - 1;
          if (v288 < 0 == v15)
          {
            *(a2 + 14) = v288;
          }

          v289 = *(a2 + 1);
          if (*(a2 + 4) - v289 > 1 && *v289 == 146 && v289[1] == 63)
          {
            *(a2 + 1) = v289 + 2;
            goto LABEL_603;
          }
        }
      }
    }

    if (v7 == 1006)
    {
      if (v8 == 2)
      {
        goto LABEL_573;
      }
    }

    else if (v7 == 1007 && v8 == 2)
    {
      goto LABEL_588;
    }

LABEL_94:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v8 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v12;
        *(this + 9) |= 4u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 1)
      {
        goto LABEL_20;
      }

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v12;
      *(this + 9) |= 1u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 17)
      {
        *(a2 + 1) = v9 + 1;
LABEL_15:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v12;
        *(this + 9) |= 2u;
        v10 = *(a2 + 1);
        if (v10 < *(a2 + 2) && *v10 == 25)
        {
          *(a2 + 1) = v10 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v8 == 1)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

double CNTimeSpan::SetTimeSpan(CNTimeSpan *this, uint64_t a2, int8x16_t a3, int8x16_t a4)
{
  if ((a3.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    if (a2 == 0x8000000000000000 && *a3.i64 > 0.0 || a2 == 0x7FFFFFFFFFFFFFFFLL && *a3.i64 < 0.0)
    {
      *this = 0;
      *(this + 1) = 0x7FF8000000000000;
      return *a3.i64;
    }

    *this = 0;
LABEL_16:
    *(this + 1) = a3.i64[0];
    return *a3.i64;
  }

  if (fabs(*a3.i64) > 9.22337204e18)
  {
    *this = 0;
    a4.i64[0] = 0x7FF0000000000000;
    v4.f64[0] = NAN;
    v4.f64[1] = NAN;
    a3.i64[0] = vbslq_s8(vnegq_f64(v4), a4, a3).u64[0];
    goto LABEL_16;
  }

  *a4.i64 = trunc(*a3.i64);
  v5 = a2 + *a3.i64;
  *this = v5;
  if (__OFADD__(a2, *a3.i64))
  {
    *this = 0;
    a3.i64[0] = 0x7FF0000000000000;
    v6.f64[0] = NAN;
    v6.f64[1] = NAN;
    a3.i64[0] = vbslq_s8(vnegq_f64(v6), a3, a4).u64[0];
    goto LABEL_16;
  }

  *a3.i64 = *a3.i64 - *a4.i64;
  *(this + 1) = a3.i64[0];
  if (v5 >= 1 && *a3.i64 < 0.0)
  {
    *this = v5 - 1;
    v7 = 1.0;
LABEL_20:
    *a3.i64 = *a3.i64 + v7;
    *(this + 1) = a3.i64[0];
    return *a3.i64;
  }

  if (v5 < 0 && *a3.i64 > 0.0)
  {
    *this = v5 + 1;
    v7 = -1.0;
    goto LABEL_20;
  }

  return *a3.i64;
}

void *sub_1D0B751F4(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D0C537F0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

uint64_t CNTimeSpan::operator-(void *a1, void *a2, int8x16_t a3, int8x16_t a4)
{
  a3.i64[0] = a1[1];
  a4.i64[0] = a2[1];
  v6 = __OFSUB__(*a1, *a2);
  v7 = *a1 - *a2;
  if (v6)
  {
    return 0;
  }

  v9[2] = v4;
  v9[3] = v5;
  *a3.i64 = *a3.i64 - *a4.i64;
  v9[0] = 0;
  v9[1] = 0;
  CNTimeSpan::SetTimeSpan(v9, v7, a3, a4);
  return v9[0];
}

uint64_t trackrun::TrackRunSupervisor::RaiseEventsFrom(trackrun::TrackRunSupervisor *a1, uint64_t a2)
{
  CoreNavigation::CLP::LogEntry::LogEntry::LogEntry(v10);
  if (wireless_diagnostics::google::protobuf::MessageLite::ParseFromString())
  {
    v6 = trackrun::TrackRunSupervisor::RaiseEventsFrom(a1, v10, v3, v4, v5);
  }

  else
  {
    v9 = 13;
    v8 = 4;
    cnprint::CNPrinter::Print(&v9, &v8, "Failed to parse incoming LogEntry");
    v6 = 0;
  }

  CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(v10);
  return v6;
}

void sub_1D0B753B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Location::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::Location *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    v5 = *(a2 + 1);
    if (v5 < *(a2 + 2))
    {
      TagFallback = *v5;
      if ((TagFallback & 0x80000000) == 0)
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }

        goto LABEL_6;
      }
    }

    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
    *(a2 + 8) = TagFallback;
    if (!TagFallback)
    {
      return 1;
    }

LABEL_6:
    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v7 != 2)
        {
          goto LABEL_36;
        }

        *(this + 25) |= 1u;
        v8 = *(this + 1);
        if (!v8)
        {
          operator new();
        }

        v91[0] = 0;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v91))
          {
            return 0;
          }
        }

        else
        {
          v91[0] = *v9;
          *(a2 + 1) = v9 + 1;
        }

        v19 = *(a2 + 14);
        v20 = *(a2 + 15);
        *(a2 + 14) = v19 + 1;
        if (v19 >= v20)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v8, a2, v21) || *(a2 + 36) != 1)
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
        v15 = *(a2 + 2);
        if (v25 >= v15 || *v25 != 16)
        {
          continue;
        }

        v16 = v25 + 1;
        *(a2 + 1) = v16;
        goto LABEL_48;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
LABEL_48:
        v91[0] = 0;
        if (v16 >= v15 || (v26 = *v16, (v26 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v91);
          if (!result)
          {
            return result;
          }

          v26 = v91[0];
          v27 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          v27 = v16 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 8) = v26;
        v12 = *(this + 25) | 2;
        *(this + 25) = v12;
        if (v27 >= v15 || *v27 != 26)
        {
          continue;
        }

        *(a2 + 1) = v27 + 1;
LABEL_56:
        *(this + 25) = v12 | 4;
        v29 = *(this + 2);
        if (!v29)
        {
          operator new();
        }

        v91[0] = 0;
        v30 = *(a2 + 1);
        if (v30 >= *(a2 + 2) || *v30 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v91))
          {
            return 0;
          }
        }

        else
        {
          v91[0] = *v30;
          *(a2 + 1) = v30 + 1;
        }

        v31 = *(a2 + 14);
        v32 = *(a2 + 15);
        *(a2 + 14) = v31 + 1;
        if (v31 >= v32)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::MergePartialFromCodedStream(v29, a2, v33) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v34 = *(a2 + 14);
        v23 = __OFSUB__(v34, 1);
        v35 = v34 - 1;
        if (v35 < 0 == v23)
        {
          *(a2 + 14) = v35;
        }

        v36 = *(a2 + 1);
        if (v36 >= *(a2 + 2) || *v36 != 34)
        {
          continue;
        }

        *(a2 + 1) = v36 + 1;
LABEL_70:
        *(this + 25) |= 8u;
        v37 = *(this + 3);
        if (!v37)
        {
          operator new();
        }

        v91[0] = 0;
        v38 = *(a2 + 1);
        if (v38 >= *(a2 + 2) || *v38 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v91))
          {
            return 0;
          }
        }

        else
        {
          v91[0] = *v38;
          *(a2 + 1) = v38 + 1;
        }

        v39 = *(a2 + 14);
        v40 = *(a2 + 15);
        *(a2 + 14) = v39 + 1;
        if (v39 >= v40)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::MergePartialFromCodedStream(v37, a2, v41) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v42 = *(a2 + 14);
        v23 = __OFSUB__(v42, 1);
        v43 = v42 - 1;
        if (v43 < 0 == v23)
        {
          *(a2 + 14) = v43;
        }

        v44 = *(a2 + 1);
        if (v44 >= *(a2 + 2) || *v44 != 42)
        {
          continue;
        }

        *(a2 + 1) = v44 + 1;
LABEL_84:
        *(this + 25) |= 0x10u;
        v45 = *(this + 5);
        if (!v45)
        {
          operator new();
        }

        v91[0] = 0;
        v46 = *(a2 + 1);
        if (v46 >= *(a2 + 2) || *v46 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v91))
          {
            return 0;
          }
        }

        else
        {
          v91[0] = *v46;
          *(a2 + 1) = v46 + 1;
        }

        v47 = *(a2 + 14);
        v48 = *(a2 + 15);
        *(a2 + 14) = v47 + 1;
        if (v47 >= v48)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus::MergePartialFromCodedStream(v45, a2, v49) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v50 = *(a2 + 14);
        v23 = __OFSUB__(v50, 1);
        v51 = v50 - 1;
        if (v51 < 0 == v23)
        {
          *(a2 + 14) = v51;
        }

        v52 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v52 >= v17 || *v52 != 48)
        {
          continue;
        }

        v18 = v52 + 1;
        *(a2 + 1) = v18;
LABEL_98:
        v91[0] = 0;
        if (v18 >= v17 || (v53 = *v18, (v53 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v91);
          if (!result)
          {
            return result;
          }

          v53 = v91[0];
          v54 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          v54 = v18 + 1;
          *(a2 + 1) = v54;
        }

        *(this + 36) = v53 != 0;
        *(this + 25) |= 0x20u;
        if (v54 >= v17 || *v54 != 57)
        {
          continue;
        }

        *(a2 + 1) = v54 + 1;
LABEL_106:
        *v91 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v91) & 1) == 0)
        {
          return 0;
        }

        *(this + 6) = *v91;
        *(this + 25) |= 0x40u;
        v55 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v55 >= v13 || *v55 != 64)
        {
          continue;
        }

        v14 = v55 + 1;
        *(a2 + 1) = v14;
LABEL_110:
        v91[0] = 0;
        if (v14 >= v13 || (v56 = *v14, (v56 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v91);
          if (!result)
          {
            return result;
          }

          v56 = v91[0];
        }

        else
        {
          *(a2 + 1) = v14 + 1;
        }

        if (v56 <= 2)
        {
          *(this + 25) |= 0x80u;
          *(this + 18) = v56;
        }

        v57 = *(a2 + 1);
        if (v57 >= *(a2 + 2) || *v57 != 74)
        {
          continue;
        }

        *(a2 + 1) = v57 + 1;
LABEL_120:
        *(this + 25) |= 0x100u;
        v58 = *(this + 7);
        if (!v58)
        {
          operator new();
        }

        v91[0] = 0;
        v59 = *(a2 + 1);
        if (v59 >= *(a2 + 2) || *v59 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v91))
          {
            return 0;
          }
        }

        else
        {
          v91[0] = *v59;
          *(a2 + 1) = v59 + 1;
        }

        v60 = *(a2 + 14);
        v61 = *(a2 + 15);
        *(a2 + 14) = v60 + 1;
        if (v60 >= v61)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed::MergePartialFromCodedStream(v58, a2, v62) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v63 = *(a2 + 14);
        v23 = __OFSUB__(v63, 1);
        v64 = v63 - 1;
        if (v64 < 0 == v23)
        {
          *(a2 + 14) = v64;
        }

        v65 = *(a2 + 1);
        if (v65 >= *(a2 + 2) || *v65 != 82)
        {
          continue;
        }

        *(a2 + 1) = v65 + 1;
LABEL_134:
        *(this + 25) |= 0x200u;
        v66 = *(this + 8);
        if (!v66)
        {
          operator new();
        }

        v91[0] = 0;
        v67 = *(a2 + 1);
        if (v67 >= *(a2 + 2) || *v67 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v91))
          {
            return 0;
          }
        }

        else
        {
          v91[0] = *v67;
          *(a2 + 1) = v67 + 1;
        }

        v68 = *(a2 + 14);
        v69 = *(a2 + 15);
        *(a2 + 14) = v68 + 1;
        if (v68 >= v69)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading::MergePartialFromCodedStream(v66, a2, v70) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v71 = *(a2 + 14);
        v23 = __OFSUB__(v71, 1);
        v72 = v71 - 1;
        if (v72 < 0 == v23)
        {
          *(a2 + 14) = v72;
        }

        v73 = *(a2 + 1);
        if (v73 >= *(a2 + 2) || *v73 != 90)
        {
          continue;
        }

        *(a2 + 1) = v73 + 1;
LABEL_148:
        *(this + 25) |= 0x400u;
        v74 = *(this + 10);
        if (!v74)
        {
          operator new();
        }

        v91[0] = 0;
        v75 = *(a2 + 1);
        if (v75 >= *(a2 + 2) || *v75 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v91))
          {
            return 0;
          }
        }

        else
        {
          v91[0] = *v75;
          *(a2 + 1) = v75 + 1;
        }

        v76 = *(a2 + 14);
        v77 = *(a2 + 15);
        *(a2 + 14) = v76 + 1;
        if (v76 >= v77)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::MergePartialFromCodedStream(v74, a2, v78) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v79 = *(a2 + 14);
        v23 = __OFSUB__(v79, 1);
        v80 = v79 - 1;
        if (v80 < 0 == v23)
        {
          *(a2 + 14) = v80;
        }

        v81 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v81 >= v10 || *v81 != 96)
        {
          continue;
        }

        v11 = v81 + 1;
        *(a2 + 1) = v11;
LABEL_162:
        v91[0] = 0;
        if (v11 >= v10 || (v82 = *v11, (v82 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v91);
          if (!result)
          {
            return result;
          }

          v82 = v91[0];
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v82 <= 2)
        {
          *(this + 25) |= 0x800u;
          *(this + 19) = v82;
        }

        v83 = *(a2 + 1);
        if (v83 >= *(a2 + 2) || *v83 != 106)
        {
          continue;
        }

        *(a2 + 1) = v83 + 1;
LABEL_172:
        *(this + 25) |= 0x1000u;
        v84 = *(this + 11);
        if (!v84)
        {
          operator new();
        }

        v91[0] = 0;
        v85 = *(a2 + 1);
        if (v85 >= *(a2 + 2) || *v85 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v91))
          {
            return 0;
          }
        }

        else
        {
          v91[0] = *v85;
          *(a2 + 1) = v85 + 1;
        }

        v86 = *(a2 + 14);
        v87 = *(a2 + 15);
        *(a2 + 14) = v86 + 1;
        if (v86 >= v87)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed::MergePartialFromCodedStream(v84, a2, v88) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v89 = *(a2 + 14);
        v23 = __OFSUB__(v89, 1);
        v90 = v89 - 1;
        if (v90 < 0 == v23)
        {
          *(a2 + 14) = v90;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }

        break;
      case 3u:
        if (v7 != 2)
        {
          goto LABEL_36;
        }

        v12 = *(this + 25);
        goto LABEL_56;
      case 4u:
        if (v7 == 2)
        {
          goto LABEL_70;
        }

        goto LABEL_36;
      case 5u:
        if (v7 == 2)
        {
          goto LABEL_84;
        }

        goto LABEL_36;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_98;
      case 7u:
        if (v7 == 1)
        {
          goto LABEL_106;
        }

        goto LABEL_36;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_110;
      case 9u:
        if (v7 != 2)
        {
          goto LABEL_36;
        }

        goto LABEL_120;
      case 0xAu:
        if (v7 == 2)
        {
          goto LABEL_134;
        }

        goto LABEL_36;
      case 0xBu:
        if (v7 == 2)
        {
          goto LABEL_148;
        }

        goto LABEL_36;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_162;
      case 0xDu:
        if (v7 == 2)
        {
          goto LABEL_172;
        }

        goto LABEL_36;
      default:
LABEL_36:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_52;
        }

        v74[0] = 0;
        v8 = *(a2 + 1);
        if (v8 >= *(a2 + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v74);
          if (!result)
          {
            return result;
          }

          v9 = v74[0];
        }

        else
        {
          *(a2 + 1) = v8 + 1;
        }

        if (v9 < 3 || v9 == 0xFFFF)
        {
          *(this + 38) |= 1u;
          *(this + 12) = v9;
        }

        v27 = *(a2 + 1);
        if (v27 < *(a2 + 2) && *v27 == 18)
        {
          *(a2 + 1) = v27 + 1;
          goto LABEL_67;
        }

        continue;
      case 2u:
        if (v7 != 2)
        {
          goto LABEL_52;
        }

LABEL_67:
        *(this + 38) |= 2u;
        v28 = *(this + 1);
        if (!v28)
        {
          operator new();
        }

        v74[0] = 0;
        v29 = *(a2 + 1);
        if (v29 >= *(a2 + 2) || *v29 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v74))
          {
            return 0;
          }
        }

        else
        {
          v74[0] = *v29;
          *(a2 + 1) = v29 + 1;
        }

        v30 = *(a2 + 14);
        v31 = *(a2 + 15);
        *(a2 + 14) = v30 + 1;
        if (v30 >= v31)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::MergePartialFromCodedStream(v28, a2, v32) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v33 = *(a2 + 14);
        v34 = __OFSUB__(v33, 1);
        v35 = v33 - 1;
        if (v35 < 0 == v34)
        {
          *(a2 + 14) = v35;
        }

        v36 = *(a2 + 1);
        if (v36 >= *(a2 + 2) || *v36 != 25)
        {
          continue;
        }

        *(a2 + 1) = v36 + 1;
LABEL_81:
        *v74 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v74) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v74;
        *(this + 38) |= 4u;
        v37 = *(a2 + 1);
        if (v37 >= *(a2 + 2) || *v37 != 33)
        {
          continue;
        }

        *(a2 + 1) = v37 + 1;
LABEL_85:
        *v74 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v74) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v74;
        *(this + 38) |= 8u;
        v38 = *(a2 + 1);
        if (v38 >= *(a2 + 2) || *v38 != 41)
        {
          continue;
        }

        *(a2 + 1) = v38 + 1;
LABEL_89:
        *v74 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v74) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v74;
        *(this + 38) |= 0x10u;
        v39 = *(a2 + 1);
        if (v39 >= *(a2 + 2) || *v39 != 49)
        {
          continue;
        }

        *(a2 + 1) = v39 + 1;
LABEL_93:
        *v74 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v74) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = *v74;
        *(this + 38) |= 0x20u;
        v40 = *(a2 + 1);
        if (v40 >= *(a2 + 2) || *v40 != 57)
        {
          continue;
        }

        *(a2 + 1) = v40 + 1;
LABEL_97:
        *v74 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v74) & 1) == 0)
        {
          return 0;
        }

        *(this + 7) = *v74;
        *(this + 38) |= 0x40u;
        v41 = *(a2 + 1);
        if (v41 >= *(a2 + 2) || *v41 != 65)
        {
          continue;
        }

        *(a2 + 1) = v41 + 1;
LABEL_101:
        *v74 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v74) & 1) == 0)
        {
          return 0;
        }

        *(this + 8) = *v74;
        *(this + 38) |= 0x80u;
        v42 = *(a2 + 1);
        if (v42 >= *(a2 + 2) || *v42 != 73)
        {
          continue;
        }

        *(a2 + 1) = v42 + 1;
LABEL_105:
        *v74 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v74) & 1) == 0)
        {
          return 0;
        }

        *(this + 9) = *v74;
        *(this + 38) |= 0x100u;
        v43 = *(a2 + 1);
        if (v43 >= *(a2 + 2) || *v43 != 81)
        {
          continue;
        }

        *(a2 + 1) = v43 + 1;
LABEL_109:
        *v74 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v74) & 1) == 0)
        {
          return 0;
        }

        *(this + 10) = *v74;
        *(this + 38) |= 0x200u;
        v44 = *(a2 + 1);
        v21 = *(a2 + 2);
        if (v44 >= v21 || *v44 != 88)
        {
          continue;
        }

        v22 = v44 + 1;
        *(a2 + 1) = v22;
LABEL_113:
        v74[0] = 0;
        if (v22 >= v21 || (v45 = *v22, (v45 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v74);
          if (!result)
          {
            return result;
          }

          v45 = v74[0];
          v46 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          v46 = v22 + 1;
          *(a2 + 1) = v46;
        }

        *(this + 13) = v45;
        *(this + 38) |= 0x400u;
        if (v46 >= v21 || *v46 != 97)
        {
          continue;
        }

        *(a2 + 1) = v46 + 1;
LABEL_121:
        *v74 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v74) & 1) == 0)
        {
          return 0;
        }

        *(this + 11) = *v74;
        *(this + 38) |= 0x800u;
        v47 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v47 >= v12 || *v47 != 104)
        {
          continue;
        }

        v13 = v47 + 1;
        *(a2 + 1) = v13;
LABEL_125:
        v74[0] = 0;
        if (v13 >= v12 || (v48 = *v13, (v48 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v74);
          if (!result)
          {
            return result;
          }

          v48 = v74[0];
        }

        else
        {
          *(a2 + 1) = v13 + 1;
        }

        if (v48 <= 0xD)
        {
          *(this + 38) |= 0x1000u;
          *(this + 26) = v48;
        }

        v49 = *(a2 + 1);
        if (v49 >= *(a2 + 2) || *v49 != 114)
        {
          continue;
        }

        *(a2 + 1) = v49 + 1;
LABEL_135:
        *(this + 38) |= 0x2000u;
        v50 = *(this + 12);
        if (!v50)
        {
          operator new();
        }

        v74[0] = 0;
        v51 = *(a2 + 1);
        if (v51 >= *(a2 + 2) || *v51 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v74))
          {
            return 0;
          }
        }

        else
        {
          v74[0] = *v51;
          *(a2 + 1) = v51 + 1;
        }

        v52 = *(a2 + 14);
        v53 = *(a2 + 15);
        *(a2 + 14) = v52 + 1;
        if (v52 >= v53)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::MergePartialFromCodedStream(v50, a2, v54) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v55 = *(a2 + 14);
        v34 = __OFSUB__(v55, 1);
        v56 = v55 - 1;
        if (v56 < 0 == v34)
        {
          *(a2 + 14) = v56;
        }

        v57 = *(a2 + 1);
        if (v57 >= *(a2 + 2) || *v57 != 121)
        {
          continue;
        }

        *(a2 + 1) = v57 + 1;
LABEL_149:
        *v74 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v74) & 1) == 0)
        {
          return 0;
        }

        *(this + 14) = *v74;
        *(this + 38) |= 0x4000u;
        v58 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v10 - v58 < 2 || *v58 != 128 || v58[1] != 1)
        {
          continue;
        }

        v14 = (v58 + 2);
        *(a2 + 1) = v14;
LABEL_154:
        v74[0] = 0;
        if (v14 >= v10 || (v59 = *v14, (v59 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v74);
          if (!result)
          {
            return result;
          }

          v59 = v74[0];
          v60 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v60 = (v14 + 1);
          *(a2 + 1) = v60;
        }

        *(this + 27) = v59;
        *(this + 38) |= 0x8000u;
        if (v10 - v60 < 2 || *v60 != 136 || v60[1] != 1)
        {
          continue;
        }

        v11 = (v60 + 2);
        *(a2 + 1) = v11;
LABEL_163:
        v74[0] = 0;
        if (v11 >= v10 || (v61 = *v11, (v61 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v74);
          if (!result)
          {
            return result;
          }

          v61 = v74[0];
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v61 - 25 <= 0x32 && ((1 << (v61 - 25)) & 0x4000002000001) != 0 || v61 + 1 < 2)
        {
          *(this + 38) |= 0x10000u;
          *(this + 30) = v61;
        }

        v64 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v15 - v64 < 2 || *v64 != 144 || v64[1] != 1)
        {
          continue;
        }

        v16 = (v64 + 2);
        *(a2 + 1) = v16;
LABEL_180:
        v74[0] = 0;
        if (v16 >= v15 || (v65 = *v16, (v65 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v74);
          if (!result)
          {
            return result;
          }

          v65 = v74[0];
        }

        else
        {
          *(a2 + 1) = v16 + 1;
        }

        if (v65 <= 2)
        {
          *(this + 38) |= 0x20000u;
          *(this + 31) = v65;
        }

        v66 = *(a2 + 1);
        v19 = *(a2 + 2);
        if (v19 - v66 < 2 || *v66 != 152 || v66[1] != 1)
        {
          continue;
        }

        v20 = (v66 + 2);
        *(a2 + 1) = v20;
LABEL_191:
        v74[0] = 0;
        if (v20 >= v19 || (v67 = *v20, (v67 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v74);
          if (!result)
          {
            return result;
          }

          v67 = v74[0];
        }

        else
        {
          *(a2 + 1) = v20 + 1;
        }

        if (v67 <= 2)
        {
          *(this + 38) |= 0x40000u;
          *(this + 32) = v67;
        }

        v68 = *(a2 + 1);
        v23 = *(a2 + 2);
        if (v23 - v68 < 2 || *v68 != 160 || v68[1] != 1)
        {
          continue;
        }

        v24 = (v68 + 2);
        *(a2 + 1) = v24;
LABEL_202:
        v74[0] = 0;
        if (v24 >= v23 || (v69 = *v24, (v69 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v74);
          if (!result)
          {
            return result;
          }

          v69 = v74[0];
        }

        else
        {
          *(a2 + 1) = v24 + 1;
        }

        if (v69 + 1 <= 7)
        {
          *(this + 38) |= 0x80000u;
          *(this + 33) = v69;
        }

        v70 = *(a2 + 1);
        if (*(a2 + 4) - v70 < 2 || *v70 != 169 || v70[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v70 + 2;
LABEL_213:
        *v74 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v74))
        {
          *(this + 17) = *v74;
          *(this + 38) |= 0x100000u;
          v71 = *(a2 + 1);
          v17 = *(a2 + 2);
          if (v17 - v71 >= 2 && *v71 == 176 && v71[1] == 1)
          {
            v18 = (v71 + 2);
            *(a2 + 1) = v18;
LABEL_218:
            v74[0] = 0;
            if (v18 >= v17 || (v72 = *v18, (v72 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v74);
              if (!result)
              {
                return result;
              }

              v72 = v74[0];
              v73 = *(a2 + 1);
              v17 = *(a2 + 2);
            }

            else
            {
              v73 = v18 + 1;
              *(a2 + 1) = v73;
            }

            *(this + 144) = v72 != 0;
            *(this + 38) |= 0x200000u;
            if (v73 == v17 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if (v7 == 1)
        {
          goto LABEL_81;
        }

        goto LABEL_52;
      case 4u:
        if (v7 == 1)
        {
          goto LABEL_85;
        }

        goto LABEL_52;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_89;
        }

        goto LABEL_52;
      case 6u:
        if (v7 == 1)
        {
          goto LABEL_93;
        }

        goto LABEL_52;
      case 7u:
        if (v7 == 1)
        {
          goto LABEL_97;
        }

        goto LABEL_52;
      case 8u:
        if (v7 == 1)
        {
          goto LABEL_101;
        }

        goto LABEL_52;
      case 9u:
        if (v7 == 1)
        {
          goto LABEL_105;
        }

        goto LABEL_52;
      case 0xAu:
        if (v7 == 1)
        {
          goto LABEL_109;
        }

        goto LABEL_52;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v22 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_113;
      case 0xCu:
        if (v7 == 1)
        {
          goto LABEL_121;
        }

        goto LABEL_52;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_125;
      case 0xEu:
        if (v7 == 2)
        {
          goto LABEL_135;
        }

        goto LABEL_52;
      case 0xFu:
        if (v7 == 1)
        {
          goto LABEL_149;
        }

        goto LABEL_52;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v14 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_154;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_163;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_180;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v20 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_191;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_202;
      case 0x15u:
        if (v7 == 1)
        {
          goto LABEL_213;
        }

        goto LABEL_52;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_218;
      default:
LABEL_52:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v7 != 1)
        {
          goto LABEL_14;
        }

LABEL_17:
        v10 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v10) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v10;
        *(this + 7) |= 2u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v7 != 1)
      {
        break;
      }

      v10 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v10) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v10;
      *(this + 7) |= 1u;
      v8 = *(a2 + 1);
      if (v8 < *(a2 + 2) && *v8 == 17)
      {
        *(a2 + 1) = v8 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
LABEL_1:
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
        if (v7 != 1)
        {
          goto LABEL_154;
        }

        *v178 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = *v178;
        *(this + 91) |= 1u;
        v8 = *(a2 + 1);
        if (v8 >= *(a2 + 2) || *v8 != 17)
        {
          continue;
        }

        *(a2 + 1) = v8 + 1;
        goto LABEL_67;
      case 2u:
        if (v7 != 1)
        {
          goto LABEL_154;
        }

LABEL_67:
        *v178 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v178;
        *(this + 91) |= 2u;
        v28 = *(a2 + 1);
        if (v28 >= *(a2 + 2) || *v28 != 25)
        {
          continue;
        }

        *(a2 + 1) = v28 + 1;
LABEL_71:
        *v178 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v178;
        *(this + 91) |= 4u;
        v29 = *(a2 + 1);
        if (v29 >= *(a2 + 2) || *v29 != 33)
        {
          continue;
        }

        *(a2 + 1) = v29 + 1;
LABEL_75:
        *v178 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v178;
        *(this + 91) |= 8u;
        v30 = *(a2 + 1);
        if (v30 >= *(a2 + 2) || *v30 != 41)
        {
          continue;
        }

        *(a2 + 1) = v30 + 1;
LABEL_79:
        *v178 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = *v178;
        *(this + 91) |= 0x10u;
        v31 = *(a2 + 1);
        if (v31 >= *(a2 + 2) || *v31 != 53)
        {
          continue;
        }

        *(a2 + 1) = v31 + 1;
LABEL_92:
        v178[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 12) = v178[0];
        *(this + 91) |= 0x20u;
        v32 = *(a2 + 1);
        if (v32 >= *(a2 + 2) || *v32 != 61)
        {
          continue;
        }

        *(a2 + 1) = v32 + 1;
LABEL_101:
        v178[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 13) = v178[0];
        *(this + 91) |= 0x40u;
        v36 = *(a2 + 1);
        if (v36 >= *(a2 + 2) || *v36 != 69)
        {
          continue;
        }

        *(a2 + 1) = v36 + 1;
LABEL_105:
        v178[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 14) = v178[0];
        *(this + 91) |= 0x80u;
        v37 = *(a2 + 1);
        v25 = *(a2 + 2);
        if (v37 >= v25 || *v37 != 72)
        {
          continue;
        }

        v38 = v37 + 1;
        *(a2 + 1) = v38;
LABEL_115:
        v178[0] = 0;
        if (v38 >= v25 || (v40 = *v38, (v40 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v178);
          if (!result)
          {
            return result;
          }

          v40 = v178[0];
          v41 = *(a2 + 1);
          v25 = *(a2 + 2);
        }

        else
        {
          v41 = v38 + 1;
          *(a2 + 1) = v41;
        }

        *(this + 112) = v40 != 0;
        *(this + 91) |= 0x100u;
        if (v41 >= v25 || *v41 != 80)
        {
          continue;
        }

        v26 = v41 + 1;
        *(a2 + 1) = v26;
LABEL_163:
        v178[0] = 0;
        if (v26 >= v25 || (v59 = *v26, (v59 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v178);
          if (!result)
          {
            return result;
          }

          v59 = v178[0];
        }

        else
        {
          *(a2 + 1) = v26 + 1;
        }

        if (v59 <= 3)
        {
          *(this + 91) |= 0x200u;
          *(this + 15) = v59;
        }

        v60 = *(a2 + 1);
        if (v60 >= *(a2 + 2) || *v60 != 90)
        {
          continue;
        }

        *(a2 + 1) = v60 + 1;
LABEL_173:
        *(this + 91) |= 0x400u;
        v61 = *(this + 8);
        if (!v61)
        {
          operator new();
        }

        v178[0] = 0;
        v62 = *(a2 + 1);
        if (v62 >= *(a2 + 2) || *v62 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v178))
          {
            return 0;
          }
        }

        else
        {
          v178[0] = *v62;
          *(a2 + 1) = v62 + 1;
        }

        v63 = *(a2 + 14);
        v64 = *(a2 + 15);
        *(a2 + 14) = v63 + 1;
        if (v63 >= v64)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::MergePartialFromCodedStream(v61, a2, v65) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v66 = *(a2 + 14);
        v67 = __OFSUB__(v66, 1);
        v68 = v66 - 1;
        if (v68 < 0 == v67)
        {
          *(a2 + 14) = v68;
        }

        v69 = *(a2 + 1);
        if (v69 >= *(a2 + 2) || *v69 != 97)
        {
          continue;
        }

        *(a2 + 1) = v69 + 1;
LABEL_187:
        *v178 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 9) = *v178;
        *(this + 91) |= 0x800u;
        v70 = *(a2 + 1);
        v18 = *(a2 + 2);
        if (v70 >= v18 || *v70 != 104)
        {
          continue;
        }

        v24 = v70 + 1;
        *(a2 + 1) = v24;
LABEL_191:
        v178[0] = 0;
        if (v24 >= v18 || (v71 = *v24, (v71 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v178);
          if (!result)
          {
            return result;
          }

          v71 = v178[0];
          v72 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          v72 = v24 + 1;
          *(a2 + 1) = v72;
        }

        *(this + 20) = v71;
        *(this + 91) |= 0x1000u;
        if (v72 >= v18 || *v72 != 112)
        {
          continue;
        }

        v35 = v72 + 1;
        *(a2 + 1) = v35;
LABEL_199:
        v178[0] = 0;
        if (v35 >= v18 || (v73 = *v35, (v73 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v178);
          if (!result)
          {
            return result;
          }

          v73 = v178[0];
          v74 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          v74 = v35 + 1;
          *(a2 + 1) = v74;
        }

        *(this + 21) = v73;
        *(this + 91) |= 0x2000u;
        if (v74 >= v18 || *v74 != 120)
        {
          continue;
        }

        v19 = v74 + 1;
        *(a2 + 1) = v19;
LABEL_207:
        v178[0] = 0;
        if (v19 >= v18 || (v75 = *v19, (v75 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v178);
          if (!result)
          {
            return result;
          }

          v75 = v178[0];
          v76 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          v76 = (v19 + 1);
          *(a2 + 1) = v76;
        }

        *(this + 113) = v75 != 0;
        v27 = *(this + 91) | 0x4000;
        *(this + 91) = v27;
        if (v18 - v76 < 2 || *v76 != 130 || v76[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v76 + 2;
LABEL_216:
        *(this + 91) = v27 | 0x8000;
        v77 = *(this + 11);
        if (!v77)
        {
          operator new();
        }

        v178[0] = 0;
        v78 = *(a2 + 1);
        if (v78 >= *(a2 + 2) || *v78 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v178))
          {
            return 0;
          }
        }

        else
        {
          v178[0] = *v78;
          *(a2 + 1) = v78 + 1;
        }

        v79 = *(a2 + 14);
        v80 = *(a2 + 15);
        *(a2 + 14) = v79 + 1;
        if (v79 >= v80)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::PressureSample::MergePartialFromCodedStream(v77, a2, v81) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v82 = *(a2 + 14);
        v67 = __OFSUB__(v82, 1);
        v83 = v82 - 1;
        if (v83 < 0 == v67)
        {
          *(a2 + 14) = v83;
        }

        v84 = *(a2 + 1);
        v16 = *(a2 + 2);
        if (v16 - v84 <= 1 || *v84 != 136 || v84[1] != 1)
        {
          continue;
        }

        v17 = (v84 + 2);
        *(a2 + 1) = v17;
LABEL_231:
        v178[0] = 0;
        if (v17 >= v16 || (v85 = *v17, (v85 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v178);
          if (!result)
          {
            return result;
          }

          v85 = v178[0];
        }

        else
        {
          *(a2 + 1) = v17 + 1;
        }

        if (v85 + 1 <= 3)
        {
          *(this + 91) |= 0x10000u;
          *(this + 24) = v85;
        }

        v86 = *(a2 + 1);
        if (*(a2 + 4) - v86 < 2 || *v86 != 149 || v86[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v86 + 2;
LABEL_242:
        v178[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 25) = v178[0];
        v39 = *(this + 91) | 0x20000;
        *(this + 91) = v39;
        v87 = *(a2 + 1);
        if (*(a2 + 4) - v87 < 2 || *v87 != 154 || v87[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v87 + 2;
LABEL_247:
        *(this + 91) = v39 | 0x40000;
        v88 = *(this + 13);
        if (!v88)
        {
          operator new();
        }

        v178[0] = 0;
        v89 = *(a2 + 1);
        if (v89 >= *(a2 + 2) || *v89 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v178))
          {
            return 0;
          }
        }

        else
        {
          v178[0] = *v89;
          *(a2 + 1) = v89 + 1;
        }

        v90 = *(a2 + 14);
        v91 = *(a2 + 15);
        *(a2 + 14) = v90 + 1;
        if (v90 >= v91)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::MergePartialFromCodedStream(v88, a2, v92) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v93 = *(a2 + 14);
        v67 = __OFSUB__(v93, 1);
        v94 = v93 - 1;
        if (v94 < 0 == v67)
        {
          *(a2 + 14) = v94;
        }

        v95 = *(a2 + 1);
        if (*(a2 + 4) - v95 <= 1 || *v95 != 161 || v95[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v95 + 2;
LABEL_262:
        *v178 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 15) = *v178;
        *(this + 91) |= 0x80000u;
        v96 = *(a2 + 1);
        if (*(a2 + 4) - v96 < 2 || *v96 != 169 || v96[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v96 + 2;
LABEL_267:
        *v178 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 16) = *v178;
        *(this + 91) |= 0x100000u;
        v97 = *(a2 + 1);
        v33 = *(a2 + 2);
        if (v33 - v97 < 2 || *v97 != 176 || v97[1] != 1)
        {
          continue;
        }

        v34 = (v97 + 2);
        *(a2 + 1) = v34;
LABEL_272:
        v178[0] = 0;
        if (v34 >= v33 || (v98 = *v34, (v98 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v178);
          if (!result)
          {
            return result;
          }

          v98 = v178[0];
        }

        else
        {
          *(a2 + 1) = v34 + 1;
        }

        if (v98 <= 2)
        {
          *(this + 91) |= 0x200000u;
          *(this + 29) = v98;
        }

        v99 = *(a2 + 1);
        v44 = *(a2 + 2);
        if (v44 - v99 < 2 || *v99 != 184 || v99[1] != 1)
        {
          continue;
        }

        v45 = (v99 + 2);
        *(a2 + 1) = v45;
LABEL_283:
        v178[0] = 0;
        if (v45 >= v44 || (v100 = *v45, (v100 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v178);
          if (!result)
          {
            return result;
          }

          v100 = v178[0];
          v101 = *(a2 + 1);
          v44 = *(a2 + 2);
        }

        else
        {
          v101 = (v45 + 1);
          *(a2 + 1) = v101;
        }

        *(this + 114) = v100 != 0;
        v48 = *(this + 91) | 0x400000;
        *(this + 91) = v48;
        if (v44 - v101 < 2 || *v101 != 194 || v101[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v101 + 2;
LABEL_292:
        *(this + 91) = v48 | 0x800000;
        v102 = *(this + 17);
        if (!v102)
        {
          operator new();
        }

        v178[0] = 0;
        v103 = *(a2 + 1);
        if (v103 >= *(a2 + 2) || *v103 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v178))
          {
            return 0;
          }
        }

        else
        {
          v178[0] = *v103;
          *(a2 + 1) = v103 + 1;
        }

        v104 = *(a2 + 14);
        v105 = *(a2 + 15);
        *(a2 + 14) = v104 + 1;
        if (v104 >= v105)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData::MergePartialFromCodedStream(v102, a2, v106) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v107 = *(a2 + 14);
        v67 = __OFSUB__(v107, 1);
        v108 = v107 - 1;
        if (v108 < 0 == v67)
        {
          *(a2 + 14) = v108;
        }

        v109 = *(a2 + 1);
        if (*(a2 + 4) - v109 <= 1 || *v109 != 201 || v109[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v109 + 2;
LABEL_307:
        *v178 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 18) = *v178;
        *(this + 91) |= 0x1000000u;
        v110 = *(a2 + 1);
        if (*(a2 + 4) - v110 < 2 || *v110 != 209 || v110[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v110 + 2;
LABEL_312:
        *v178 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 19) = *v178;
        *(this + 91) |= 0x2000000u;
        v111 = *(a2 + 1);
        if (*(a2 + 4) - v111 < 2 || *v111 != 217 || v111[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v111 + 2;
LABEL_317:
        *v178 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 20) = *v178;
        *(this + 91) |= 0x4000000u;
        v112 = *(a2 + 1);
        if (*(a2 + 4) - v112 < 2 || *v112 != 225 || v112[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v112 + 2;
LABEL_322:
        *v178 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 21) = *v178;
        *(this + 91) |= 0x8000000u;
        v113 = *(a2 + 1);
        if (*(a2 + 4) - v113 < 2 || *v113 != 233 || v113[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v113 + 2;
LABEL_327:
        *v178 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 22) = *v178;
        *(this + 91) |= 0x10000000u;
        v114 = *(a2 + 1);
        if (*(a2 + 4) - v114 < 2 || *v114 != 241 || v114[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v114 + 2;
LABEL_332:
        *v178 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 23) = *v178;
        *(this + 91) |= 0x20000000u;
        v115 = *(a2 + 1);
        v42 = *(a2 + 2);
        if (v42 - v115 < 2 || *v115 != 248 || v115[1] != 1)
        {
          continue;
        }

        v43 = (v115 + 2);
        *(a2 + 1) = v43;
LABEL_337:
        v178[0] = 0;
        if (v43 >= v42 || (v116 = *v43, (v116 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v178);
          if (!result)
          {
            return result;
          }

          v116 = v178[0];
          v117 = *(a2 + 1);
          v42 = *(a2 + 2);
        }

        else
        {
          v117 = (v43 + 1);
          *(a2 + 1) = v117;
        }

        *(this + 115) = v116 != 0;
        *(this + 91) |= 0x40000000u;
        if (v42 - v117 < 2 || *v117 != 129 || v117[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v117 + 2;
LABEL_346:
        *v178 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 24) = *v178;
        *(this + 91) |= 0x80000000;
        v118 = *(a2 + 1);
        if (*(a2 + 4) - v118 < 2 || *v118 != 137 || v118[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v118 + 2;
LABEL_351:
        *v178 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 25) = *v178;
        *(this + 92) |= 1u;
        v119 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v20 - v119 < 2 || *v119 != 144 || v119[1] != 2)
        {
          continue;
        }

        v21 = (v119 + 2);
        *(a2 + 1) = v21;
LABEL_356:
        v178[0] = 0;
        if (v21 >= v20 || (v120 = *v21, (v120 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v178);
          if (!result)
          {
            return result;
          }

          v120 = v178[0];
          v121 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          v121 = (v21 + 1);
          *(a2 + 1) = v121;
        }

        *(this + 276) = v120 != 0;
        v15 = *(this + 92) | 2;
        *(this + 92) = v15;
        if (v20 - v121 < 2 || *v121 != 154 || v121[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v121 + 2;
LABEL_365:
        *(this + 92) = v15 | 4;
        v122 = *(this + 26);
        if (!v122)
        {
          operator new();
        }

        v178[0] = 0;
        v123 = *(a2 + 1);
        if (v123 >= *(a2 + 2) || *v123 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v178))
          {
            return 0;
          }
        }

        else
        {
          v178[0] = *v123;
          *(a2 + 1) = v123 + 1;
        }

        v124 = *(a2 + 14);
        v125 = *(a2 + 15);
        *(a2 + 14) = v124 + 1;
        if (v124 >= v125)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::MergePartialFromCodedStream(v122, a2, v126) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v127 = *(a2 + 14);
        v67 = __OFSUB__(v127, 1);
        v128 = v127 - 1;
        if (v128 < 0 == v67)
        {
          *(a2 + 14) = v128;
        }

        v129 = *(a2 + 1);
        if (*(a2 + 4) - v129 <= 1 || *v129 != 161 || v129[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v129 + 2;
LABEL_380:
        *v178 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 27) = *v178;
        *(this + 92) |= 8u;
        v130 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v13 - v130 < 2 || *v130 != 168 || v130[1] != 2)
        {
          continue;
        }

        v14 = (v130 + 2);
        *(a2 + 1) = v14;
LABEL_385:
        v178[0] = 0;
        if (v14 >= v13 || (v131 = *v14, (v131 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v178);
          if (!result)
          {
            return result;
          }

          v131 = v178[0];
        }

        else
        {
          *(a2 + 1) = v14 + 1;
        }

        if (v131 <= 2)
        {
          *(this + 92) |= 0x10u;
          *(this + 68) = v131;
        }

        v132 = *(a2 + 1);
        if (*(a2 + 4) - v132 < 2 || *v132 != 177 || v132[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v132 + 2;
LABEL_396:
        *v178 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 28) = *v178;
        *(this + 92) |= 0x20u;
        v133 = *(a2 + 1);
        if (*(a2 + 4) - v133 < 2 || *v133 != 185 || v133[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v133 + 2;
LABEL_401:
        *v178 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 29) = *v178;
        *(this + 92) |= 0x40u;
        v134 = *(a2 + 1);
        if (*(a2 + 4) - v134 < 2 || *v134 != 193 || v134[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v134 + 2;
LABEL_406:
        *v178 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 30) = *v178;
        *(this + 92) |= 0x80u;
        v135 = *(a2 + 1);
        if (*(a2 + 4) - v135 < 2 || *v135 != 201 || v135[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v135 + 2;
LABEL_411:
        *v178 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 31) = *v178;
        *(this + 92) |= 0x100u;
        v136 = *(a2 + 1);
        if (*(a2 + 4) - v136 < 2 || *v136 != 209 || v136[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v136 + 2;
LABEL_416:
        *v178 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 32) = *v178;
        *(this + 92) |= 0x200u;
        v137 = *(a2 + 1);
        v46 = *(a2 + 2);
        if (v46 - v137 < 2 || *v137 != 216 || v137[1] != 2)
        {
          continue;
        }

        v47 = (v137 + 2);
        *(a2 + 1) = v47;
LABEL_421:
        v178[0] = 0;
        if (v47 >= v46 || (v138 = *v47, (v138 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v178);
          if (!result)
          {
            return result;
          }

          v138 = v178[0];
          v139 = *(a2 + 1);
          v46 = *(a2 + 2);
        }

        else
        {
          v139 = (v47 + 1);
          *(a2 + 1) = v139;
        }

        *(this + 277) = v138 != 0;
        *(this + 92) |= 0x400u;
        if (v46 - v139 < 2 || *v139 != 225 || v139[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v139 + 2;
LABEL_430:
        *v178 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 33) = *v178;
        *(this + 92) |= 0x800u;
        v140 = *(a2 + 1);
        if (*(a2 + 4) - v140 < 2 || *v140 != 233 || v140[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v140 + 2;
LABEL_435:
        *v178 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 35) = *v178;
        *(this + 92) |= 0x1000u;
        v141 = *(a2 + 1);
        if (*(a2 + 4) - v141 < 2 || *v141 != 242)
        {
          continue;
        }

        while (1)
        {
          if (v141[1] != 2)
          {
            goto LABEL_1;
          }

          *(a2 + 1) = v141 + 2;
LABEL_545:
          v167 = *(this + 74);
          v168 = *(this + 75);
          if (v167 >= v168)
          {
            if (v168 == *(this + 76))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 288));
              v168 = *(this + 75);
            }

            *(this + 75) = v168 + 1;
            operator new();
          }

          v169 = *(this + 36);
          *(this + 74) = v167 + 1;
          v170 = *(v169 + 8 * v167);
          v178[0] = 0;
          v171 = *(a2 + 1);
          if (v171 >= *(a2 + 2) || *v171 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v178))
            {
              return 0;
            }
          }

          else
          {
            v178[0] = *v171;
            *(a2 + 1) = v171 + 1;
          }

          v172 = *(a2 + 14);
          v173 = *(a2 + 15);
          *(a2 + 14) = v172 + 1;
          if (v172 >= v173)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo::MergePartialFromCodedStream(v170, a2, v174) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v175 = *(a2 + 14);
          v67 = __OFSUB__(v175, 1);
          v176 = v175 - 1;
          if (v176 < 0 == v67)
          {
            *(a2 + 14) = v176;
          }

          v141 = *(a2 + 1);
          v54 = *(a2 + 2);
          if (v54 - v141 <= 1)
          {
            goto LABEL_1;
          }

          v177 = *v141;
          if (v177 == 248)
          {
            break;
          }

          if (v177 != 242)
          {
            goto LABEL_1;
          }
        }

        if (v141[1] != 2)
        {
          continue;
        }

        v53 = (v141 + 2);
        *(a2 + 1) = v53;
LABEL_150:
        v178[0] = 0;
        if (v53 >= v54 || (v55 = *v53, (v55 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v178);
          if (!result)
          {
            return result;
          }

          v55 = v178[0];
        }

        else
        {
          *(a2 + 1) = v53 + 1;
        }

        if (v55 <= 2)
        {
          *(this + 92) |= 0x4000u;
          *(this + 78) = v55;
        }

        v142 = *(a2 + 1);
        if (*(a2 + 4) - v142 < 2 || *v142 != 130 || v142[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v142 + 2;
LABEL_447:
        *(this + 92) |= 0x8000u;
        v143 = *(this + 40);
        if (!v143)
        {
          operator new();
        }

        v178[0] = 0;
        v144 = *(a2 + 1);
        if (v144 >= *(a2 + 2) || *v144 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v178))
          {
            return 0;
          }
        }

        else
        {
          v178[0] = *v144;
          *(a2 + 1) = v144 + 1;
        }

        v145 = *(a2 + 14);
        v146 = *(a2 + 15);
        *(a2 + 14) = v145 + 1;
        if (v145 >= v146)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo::MergePartialFromCodedStream(v143, a2, v147) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v148 = *(a2 + 14);
        v67 = __OFSUB__(v148, 1);
        v149 = v148 - 1;
        if (v149 < 0 == v67)
        {
          *(a2 + 14) = v149;
        }

        v150 = *(a2 + 1);
        v22 = *(a2 + 2);
        if (v22 - v150 <= 1 || *v150 != 136 || v150[1] != 3)
        {
          continue;
        }

        v23 = (v150 + 2);
        *(a2 + 1) = v23;
LABEL_462:
        v178[0] = 0;
        if (v23 >= v22 || (v151 = *v23, (v151 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v178);
          if (!result)
          {
            return result;
          }

          v151 = v178[0];
        }

        else
        {
          *(a2 + 1) = v23 + 1;
        }

        if (v151 <= 2)
        {
          *(this + 92) |= 0x10000u;
          *(this + 79) = v151;
        }

        v152 = *(a2 + 1);
        if (*(a2 + 4) - v152 < 2 || *v152 != 145 || v152[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v152 + 2;
LABEL_473:
        *v178 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v178) & 1) == 0)
        {
          return 0;
        }

        *(this + 41) = *v178;
        *(this + 92) |= 0x20000u;
        v153 = *(a2 + 1);
        if (*(a2 + 4) - v153 < 2 || *v153 != 153 || v153[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v153 + 2;
LABEL_478:
        *v178 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v178))
        {
          *(this + 42) = *v178;
          *(this + 92) |= 0x40000u;
          v154 = *(a2 + 1);
          v56 = *(a2 + 2);
          if (v56 - v154 >= 2 && *v154 == 160 && v154[1] == 3)
          {
            v57 = (v154 + 2);
            *(a2 + 1) = v57;
LABEL_483:
            v178[0] = 0;
            if (v57 >= v56 || (v155 = *v57, (v155 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v178);
              if (!result)
              {
                return result;
              }

              v155 = v178[0];
            }

            else
            {
              *(a2 + 1) = v57 + 1;
            }

            if (v155 <= 3)
            {
              *(this + 92) |= 0x80000u;
              *(this + 86) = v155;
            }

            v156 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v9 - v156 >= 2 && *v156 == 168 && v156[1] == 3)
            {
              v52 = (v156 + 2);
              *(a2 + 1) = v52;
LABEL_494:
              v178[0] = 0;
              if (v52 >= v9 || (v157 = *v52, (v157 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v178);
                if (!result)
                {
                  return result;
                }

                v157 = v178[0];
                v158 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                v158 = (v52 + 1);
                *(a2 + 1) = v158;
              }

              *(this + 278) = v157 != 0;
              *(this + 92) |= 0x100000u;
              if (v9 - v158 >= 2 && *v158 == 176 && v158[1] == 3)
              {
                v10 = (v158 + 2);
                *(a2 + 1) = v10;
LABEL_503:
                v178[0] = 0;
                if (v10 >= v9 || (v159 = *v10, (v159 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v178);
                  if (!result)
                  {
                    return result;
                  }

                  v159 = v178[0];
                }

                else
                {
                  *(a2 + 1) = v10 + 1;
                }

                if (v159 <= 2)
                {
                  *(this + 92) |= 0x200000u;
                  *(this + 87) = v159;
                }

                v160 = *(a2 + 1);
                v49 = *(a2 + 2);
                if (v49 - v160 >= 2 && *v160 == 184 && v160[1] == 3)
                {
                  v50 = (v160 + 2);
                  *(a2 + 1) = v50;
LABEL_514:
                  v178[0] = 0;
                  if (v50 >= v49 || (v161 = *v50, (v161 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v178);
                    if (!result)
                    {
                      return result;
                    }

                    v161 = v178[0];
                  }

                  else
                  {
                    *(a2 + 1) = v50 + 1;
                  }

                  if (v161 <= 4)
                  {
                    *(this + 92) |= 0x400000u;
                    *(this + 88) = v161;
                  }

                  v162 = *(a2 + 1);
                  v11 = *(a2 + 2);
                  if (v11 - v162 >= 2 && *v162 == 192 && v162[1] == 3)
                  {
                    v51 = (v162 + 2);
                    *(a2 + 1) = v51;
LABEL_525:
                    v178[0] = 0;
                    if (v51 >= v11 || (v163 = *v51, (v163 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v178);
                      if (!result)
                      {
                        return result;
                      }

                      v163 = v178[0];
                      v164 = *(a2 + 1);
                      v11 = *(a2 + 2);
                    }

                    else
                    {
                      v164 = (v51 + 1);
                      *(a2 + 1) = v164;
                    }

                    *(this + 279) = v163 != 0;
                    *(this + 92) |= 0x800000u;
                    if (v11 - v164 >= 2 && *v164 == 200 && v164[1] == 3)
                    {
                      v12 = (v164 + 2);
                      *(a2 + 1) = v12;
LABEL_534:
                      v178[0] = 0;
                      if (v12 >= v11 || (v165 = *v12, (v165 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v178);
                        if (!result)
                        {
                          return result;
                        }

                        v165 = v178[0];
                        v166 = *(a2 + 1);
                        v11 = *(a2 + 2);
                      }

                      else
                      {
                        v166 = v12 + 1;
                        *(a2 + 1) = v166;
                      }

                      *(this + 356) = v165 != 0;
                      *(this + 92) |= 0x1000000u;
                      if (v166 == v11 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if (v7 == 1)
        {
          goto LABEL_71;
        }

        goto LABEL_154;
      case 4u:
        if (v7 == 1)
        {
          goto LABEL_75;
        }

        goto LABEL_154;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_79;
        }

        goto LABEL_154;
      case 6u:
        if (v7 == 5)
        {
          goto LABEL_92;
        }

        goto LABEL_154;
      case 7u:
        if (v7 == 5)
        {
          goto LABEL_101;
        }

        goto LABEL_154;
      case 8u:
        if (v7 == 5)
        {
          goto LABEL_105;
        }

        goto LABEL_154;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v38 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_115;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v26 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_163;
      case 0xBu:
        if (v7 == 2)
        {
          goto LABEL_173;
        }

        goto LABEL_154;
      case 0xCu:
        if (v7 == 1)
        {
          goto LABEL_187;
        }

        goto LABEL_154;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v24 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_191;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v35 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_199;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_207;
      case 0x10u:
        if (v7 != 2)
        {
          goto LABEL_154;
        }

        v27 = *(this + 91);
        goto LABEL_216;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_231;
      case 0x12u:
        if (v7 == 5)
        {
          goto LABEL_242;
        }

        goto LABEL_154;
      case 0x13u:
        if (v7 != 2)
        {
          goto LABEL_154;
        }

        v39 = *(this + 91);
        goto LABEL_247;
      case 0x14u:
        if (v7 == 1)
        {
          goto LABEL_262;
        }

        goto LABEL_154;
      case 0x15u:
        if (v7 == 1)
        {
          goto LABEL_267;
        }

        goto LABEL_154;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v34 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_272;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v45 = *(a2 + 1);
        v44 = *(a2 + 2);
        goto LABEL_283;
      case 0x18u:
        if (v7 != 2)
        {
          goto LABEL_154;
        }

        v48 = *(this + 91);
        goto LABEL_292;
      case 0x19u:
        if (v7 == 1)
        {
          goto LABEL_307;
        }

        goto LABEL_154;
      case 0x1Au:
        if (v7 == 1)
        {
          goto LABEL_312;
        }

        goto LABEL_154;
      case 0x1Bu:
        if (v7 == 1)
        {
          goto LABEL_317;
        }

        goto LABEL_154;
      case 0x1Cu:
        if (v7 == 1)
        {
          goto LABEL_322;
        }

        goto LABEL_154;
      case 0x1Du:
        if (v7 == 1)
        {
          goto LABEL_327;
        }

        goto LABEL_154;
      case 0x1Eu:
        if (v7 == 1)
        {
          goto LABEL_332;
        }

        goto LABEL_154;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v43 = *(a2 + 1);
        v42 = *(a2 + 2);
        goto LABEL_337;
      case 0x20u:
        if (v7 == 1)
        {
          goto LABEL_346;
        }

        goto LABEL_154;
      case 0x21u:
        if (v7 == 1)
        {
          goto LABEL_351;
        }

        goto LABEL_154;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v21 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_356;
      case 0x23u:
        if (v7 != 2)
        {
          goto LABEL_154;
        }

        v15 = *(this + 92);
        goto LABEL_365;
      case 0x24u:
        if (v7 == 1)
        {
          goto LABEL_380;
        }

        goto LABEL_154;
      case 0x25u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_385;
      case 0x26u:
        if (v7 == 1)
        {
          goto LABEL_396;
        }

        goto LABEL_154;
      case 0x27u:
        if (v7 == 1)
        {
          goto LABEL_401;
        }

        goto LABEL_154;
      case 0x28u:
        if (v7 == 1)
        {
          goto LABEL_406;
        }

        goto LABEL_154;
      case 0x29u:
        if (v7 == 1)
        {
          goto LABEL_411;
        }

        goto LABEL_154;
      case 0x2Au:
        if (v7 == 1)
        {
          goto LABEL_416;
        }

        goto LABEL_154;
      case 0x2Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v47 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_421;
      case 0x2Cu:
        if (v7 == 1)
        {
          goto LABEL_430;
        }

        goto LABEL_154;
      case 0x2Du:
        if (v7 == 1)
        {
          goto LABEL_435;
        }

        goto LABEL_154;
      case 0x2Eu:
        if (v7 == 2)
        {
          goto LABEL_545;
        }

        goto LABEL_154;
      case 0x2Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v53 = *(a2 + 1);
        v54 = *(a2 + 2);
        goto LABEL_150;
      case 0x30u:
        if (v7 == 2)
        {
          goto LABEL_447;
        }

        goto LABEL_154;
      case 0x31u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_462;
      case 0x32u:
        if (v7 == 1)
        {
          goto LABEL_473;
        }

        goto LABEL_154;
      case 0x33u:
        if (v7 == 1)
        {
          goto LABEL_478;
        }

        goto LABEL_154;
      case 0x34u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v57 = *(a2 + 1);
        v56 = *(a2 + 2);
        goto LABEL_483;
      case 0x35u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v52 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_494;
      case 0x36u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_503;
      case 0x37u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v50 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_514;
      case 0x38u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v51 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_525;
      case 0x39u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_534;
      default:
LABEL_154:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PressureSample::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::PressureSample *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v7 != 1)
        {
          goto LABEL_14;
        }

LABEL_17:
        v10 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v10) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v10;
        *(this + 7) |= 2u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v7 != 1)
      {
        break;
      }

      v10 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v10) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v10;
      *(this + 7) |= 1u;
      v8 = *(a2 + 1);
      if (v8 < *(a2 + 2) && *v8 == 17)
      {
        *(a2 + 1) = v8 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        if (v7 != 3)
        {
          if (v7 == 4 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_37;
          }

          goto LABEL_25;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_25;
        }

        v13 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_29:
        v19[0] = 0;
        if (v13 >= v9 || (v14 = *v13, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v19);
          if (!result)
          {
            return result;
          }

          v14 = v19[0];
          v15 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 24) = v14 != 0;
        *(this + 8) |= 4u;
        if (v15 < v9 && *v15 == 32)
        {
          v10 = v15 + 1;
          *(a2 + 1) = v10;
LABEL_37:
          v19[0] = 0;
          if (v10 >= v9 || (v17 = *v10, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v19);
            if (!result)
            {
              return result;
            }

            v17 = v19[0];
            v18 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            v18 = v10 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 25) = v17 != 0;
          *(this + 8) |= 8u;
          if (v18 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

      if (v8 != 1)
      {
        goto LABEL_25;
      }

      *v19 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v19) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = *v19;
      *(this + 8) |= 1u;
      v11 = *(a2 + 1);
      if (v11 < *(a2 + 2) && *v11 == 17)
      {
        *(a2 + 1) = v11 + 1;
LABEL_20:
        *v19 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v19) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v19;
        *(this + 8) |= 2u;
        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v12 < v9 && *v12 == 24)
        {
          v13 = v12 + 1;
          *(a2 + 1) = v13;
          goto LABEL_29;
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_20;
    }

LABEL_25:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
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
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if (v8 == 1)
          {
            goto LABEL_28;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_32;
        }

        goto LABEL_25;
      }

      if (v7 != 1)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_25;
      }

      *v16 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v16) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = *v16;
      *(this + 10) |= 1u;
      v11 = *(a2 + 1);
      if (v11 < *(a2 + 2) && *v11 == 17)
      {
        *(a2 + 1) = v11 + 1;
LABEL_20:
        *v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v16) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v16;
        *(this + 10) |= 2u;
        v12 = *(a2 + 1);
        if (v12 < *(a2 + 2) && *v12 == 25)
        {
          *(a2 + 1) = v12 + 1;
LABEL_28:
          *v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v16) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = *v16;
          *(this + 10) |= 4u;
          v13 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v13 < v9 && *v13 == 32)
          {
            v10 = v13 + 1;
            *(a2 + 1) = v10;
LABEL_32:
            v16[0] = 0;
            if (v10 >= v9 || (v14 = *v10, (v14 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v16);
              if (!result)
              {
                return result;
              }

              v14 = v16[0];
            }

            else
            {
              *(a2 + 1) = v10 + 1;
            }

            if (v14 + 1 <= 3)
            {
              *(this + 10) |= 8u;
              *(this + 8) = v14;
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
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_20;
    }

LABEL_25:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v15 = 0;
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
        if (!result)
        {
          return result;
        }

        v8 = v15;
      }

      else
      {
        *(a2 + 1) = v7 + 1;
      }

      if (v8 <= 0xD)
      {
        *(this + 5) |= 1u;
        *(this + 2) = v8;
      }

      v11 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v11 < v9 && *v11 == 16)
      {
        v10 = v11 + 1;
        *(a2 + 1) = v10;
LABEL_24:
        v16 = 0;
        if (v10 >= v9 || (v12 = *v10, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v16);
          if (!result)
          {
            return result;
          }

          v12 = v16;
          v13 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v13 = v10 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 12) = v12 != 0;
        *(this + 5) |= 2u;
        if (v13 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_24;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (v8 == 1)
          {
            goto LABEL_28;
          }

          goto LABEL_25;
        }

        if (v7 != 4 || v8 != 1)
        {
          goto LABEL_25;
        }

LABEL_32:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v13) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = v13;
        *(this + 11) |= 8u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_25;
      }

      v13 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v13) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v13;
      *(this + 11) |= 1u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 17)
      {
        *(a2 + 1) = v9 + 1;
LABEL_20:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v13) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v13;
        *(this + 11) |= 2u;
        v10 = *(a2 + 1);
        if (v10 < *(a2 + 2) && *v10 == 25)
        {
          *(a2 + 1) = v10 + 1;
LABEL_28:
          v13 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v13) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v13;
          *(this + 11) |= 4u;
          v11 = *(a2 + 1);
          if (v11 < *(a2 + 2) && *v11 == 33)
          {
            *(a2 + 1) = v11 + 1;
            goto LABEL_32;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_20;
    }

LABEL_25:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x1E69E5958];
  do
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

      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v8 != 1)
      {
        goto LABEL_15;
      }

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v12;
      v9 = *(this + 7) | 1;
      *(this + 7) = v9;
      v10 = *(a2 + 1);
      if (v10 < *(a2 + 2) && *v10 == 18)
      {
        *(a2 + 1) = v10 + 1;
LABEL_19:
        *(this + 7) = v9 | 2;
        if (*(this + 2) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
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

    if (v8 == 2)
    {
      v9 = *(this + 7);
      goto LABEL_19;
    }

LABEL_15:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v8 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v12;
        *(this + 9) |= 4u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 1)
      {
        goto LABEL_20;
      }

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v12;
      *(this + 9) |= 1u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 17)
      {
        *(a2 + 1) = v9 + 1;
LABEL_15:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v12;
        *(this + 9) |= 2u;
        v10 = *(a2 + 1);
        if (v10 < *(a2 + 2) && *v10 == 25)
        {
          *(a2 + 1) = v10 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v8 == 1)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t trackrun::TrackRunSupervisor::RaiseEventsFrom(trackrun::TrackRunSupervisor *this, const CoreNavigation::CLP::LogEntry::LogEntry *a2, trackrun::GEOMapRunningTrackDataEvent *a3, int8x16_t a4, int8x16_t a5)
{
  v6 = this;
  v7 = *(a2 + 5);
  v8 = v7;
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v7 = *(a2 + 5);
  }

  if ((*(v8 + 320) & 2) == 0)
  {
    goto LABEL_9;
  }

  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
  }

  v9 = *(v7 + 272);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 272);
  }

  v7 = *(a2 + 5);
  if ((*(v9 + 28) & 2) != 0)
  {
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v11 = *(v7 + 272);
    if (!v11)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 272);
    }

    v12 = *(v11 + 16);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenLogEntry_2eproto(this);
      v12 = *(CoreNavigation::CLP::LogEntry::Raven::LogEntry::default_instance_ + 16);
    }

    trackrun::TrackRunSupervisor::RaiseEventsFrom(v6, v12);
    v7 = *(a2 + 5);
    v10 = 1;
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  v13 = v7;
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v13 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v7 = *(a2 + 5);
  }

  if ((*(v13 + 319) & 4) != 0)
  {
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v14 = *(v7 + 216);
    if (!v14)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 216);
    }

    trackrun::TrackRunSupervisor::RaiseEventsFrom(v6, v14, a3, a4, a5);
    v7 = *(a2 + 5);
    v10 = 2;
  }

  v15 = v7;
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v15 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v7 = *(a2 + 5);
  }

  if ((*(v15 + 316) & 8) != 0)
  {
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v16 = *(v7 + 32);
    if (!v16)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 32);
    }

    this = trackrun::TrackRunSupervisor::RaiseEventsFrom(v6, v16, a3, *a4.i64, a5);
    v7 = *(a2 + 5);
    v10 = 3;
  }

  v17 = v7;
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v17 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v7 = *(a2 + 5);
  }

  if ((*(v17 + 316) & 0x10) != 0)
  {
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v18 = *(v7 + 40);
    if (!v18)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v18 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 40);
    }

    trackrun::TrackRunSupervisor::RaiseEventsFrom(v6, v18, a3, a4, a5);
    v7 = *(a2 + 5);
    v10 = 4;
  }

  v19 = v7;
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v19 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v7 = *(a2 + 5);
  }

  if ((*(v19 + 319) & 0x10) != 0)
  {
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v20 = *(v7 + 232);
    if (!v20)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v20 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 232);
    }

    trackrun::TrackRunSupervisor::RaiseEventsFrom(v6, v20);
    v7 = *(a2 + 5);
    v10 = 5;
  }

  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
  }

  if ((*(v7 + 317) & 8) != 0)
  {
    v21 = *(a2 + 5);
    if (!v21)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v21 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    if (!*(v21 + 96))
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    }

    v10 = 8;
  }

  v22 = *(a2 + 5);
  if (!v22)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v22 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
  }

  if ((*(v22 + 317) & 0x80) != 0)
  {
    v23 = *(a2 + 5);
    if (!v23)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v23 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    if (!*(v23 + 128))
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    }

    v10 = 9;
  }

  v24 = *(a2 + 5);
  v25 = v24;
  if (!v24)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v25 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v24 = *(a2 + 5);
  }

  if ((*(v25 + 320) & 8) != 0)
  {
    if (!v24)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v24 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v26 = *(v24 + 288);
    if (!v26)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v26 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 288);
    }

    v24 = *(a2 + 5);
    if (*(v26 + 20))
    {
      if (!v24)
      {
        CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
        v24 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
      }

      v27 = *(v24 + 288);
      if (!v27)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
        v27 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 288);
      }

      v28 = *(v27 + 8);
      if (!v28)
      {
        CoreNavigation::CLP::LogEntry::TropicalSavanna::protobuf_AddDesc_CoreNavigationCLPTropicalSavannaLogEntry_2eproto(this);
        v28 = *(CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::default_instance_ + 8);
      }

      trackrun::TrackRunSupervisor::RaiseEventsFrom(v6, v28, a3, a4, a5);
      v24 = *(a2 + 5);
      v10 = 10;
    }
  }

  v29 = v24;
  if (!v24)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v29 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v24 = *(a2 + 5);
  }

  if ((*(v29 + 319) & 0x20) != 0)
  {
    if (!v24)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v24 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v30 = *(v24 + 240);
    if (!v30)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v30 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 240);
    }

    trackrun::TrackRunSupervisor::RaiseEventsFrom(v6, v30);
    v24 = *(a2 + 5);
    v10 = 11;
  }

  v31 = v24;
  if (!v24)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v31 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v24 = *(a2 + 5);
  }

  if ((*(v31 + 319) & 8) != 0)
  {
    if (!v24)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v24 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v32 = *(v24 + 224);
    if (!v32)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v32 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 224);
    }

    trackrun::TrackRunSupervisor::RaiseEventsFrom(v6, v32, a3, a4, a5);
    v24 = *(a2 + 5);
    v10 = 12;
  }

  if (!v24)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v24 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
  }

  if ((*(v24 + 317) & 0x40) != 0)
  {
    cnframework::Supervisor::Reset(v6);
    return 7;
  }

  return v10;
}

uint64_t trackrun::TrackRunSupervisor::RaiseEventsFrom(trackrun::TrackRunSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::Location *a2, trackrun::PositionEvent *a3, double a4, int8x16_t a5)
{
  v6 = &unk_1F4CF0C98;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v11 = 0uLL;
  v12 = 0;
  memset(v16, 0, sizeof(v16));
  v17 = vdupq_n_s64(0x7FF8000000000000uLL);
  v18 = v17;
  v19 = v17;
  v20 = v17;
  v21 = 0x7FF8000000000000;
  LOWORD(v22[0]) = 0;
  *&v22[1] = v17;
  v22[3] = 0x7FF8000000000000;
  result = trackrun::ConvertProtobufToPositionEvent(a2, &v6, a3, v17, a5);
  if (result)
  {
    operator new();
  }

  return result;
}

void sub_1D0B7A2D0(_Unwind_Exception *a1)
{
  v4 = *(v2 - 64);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  sub_1D0B7CAB8(v1);
  _Unwind_Resume(a1);
}

uint64_t trackrun::ConvertProtobufToPositionEvent(trackrun *this, const CoreNavigation::CLP::LogEntry::PrivateData::Location *a2, trackrun::PositionEvent *a3, int8x16_t a4, int8x16_t a5)
{
  v67[0] = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  if ((*(this + 100) & 1) == 0)
  {
    goto LABEL_31;
  }

  v7 = *(this + 1);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 8);
  }

  v8 = trackrun::ConvertProtobufToTrackRunTime(v7, v67, 0, a4, a5);
  if (!v8)
  {
    goto LABEL_31;
  }

  v11 = *(this + 3);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v8);
    v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
  }

  if ((*(v11 + 366) & 0x10) != 0)
  {
    v12 = *(this + 3);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v8);
      v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
    }

    v9.i64[0] = *(v12 + 128);
    v65 = 0uLL;
    CNTimeSpan::SetTimeSpan(&v65, 0, v9, v10);
    v13 = v65;
    *(a2 + 1) = v65;
    *(a2 + 8) = 1;
    v15 = trackrun::PopulateAllTimeFields(a2 + 8, v67, v13, v14);
    v18 = *(this + 2);
    if (!v18)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
      v18 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    if ((*(v18 + 153) & 0x10) != 0)
    {
      v21 = *(this + 2);
      if (!v21)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
        v21 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
      }

      v15 = trackrun::ConvertProtobufToLocationType(*(v21 + 104));
      *(a2 + 104) = v15;
      if ((v15 - 12) < 2)
      {
        goto LABEL_31;
      }

      if (v15 == 9 || v15 == 1)
      {
        v22 = *(this + 3);
        if (!v22)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
          v22 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
        }

        if ((*(v22 + 364) & 8) != 0)
        {
          v23 = *(this + 3);
          if (!v23)
          {
            CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
            v23 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
          }

          v16.i64[0] = *(v23 + 32);
          goto LABEL_36;
        }
      }
    }

    else
    {
      *(a2 + 104) = 0;
    }

    v19 = *(this + 2);
    if (!v19)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
      v19 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    if ((*(v19 + 153) & 2) == 0)
    {
      v20 = 0;
      goto LABEL_37;
    }

    v26 = *(this + 2);
    if (!v26)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
      v26 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    v16.i64[0] = *(v26 + 80);
LABEL_36:
    v65 = 0uLL;
    CNTimeSpan::SetTimeSpan(&v65, 0, v16, v17);
    *(a2 + 40) = v65;
    v20 = 1;
LABEL_37:
    *(a2 + 32) = v20;
    v27 = *(a2 + 24);
    *(a2 + 56) = *(a2 + 8);
    *(a2 + 72) = v27;
    *(a2 + 88) = *(a2 + 40);
    v28 = *(this + 2);
    if (!v28)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
      v28 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    if (*(v28 + 16) <= 0.0)
    {
      goto LABEL_43;
    }

    v29 = *(this + 2);
    if (!v29)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
      v29 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    if ((*(v29 + 16) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_43:
      *(a2 + 105) = 0;
      *(a2 + 14) = 0;
      *(a2 + 15) = 0;
      goto LABEL_44;
    }

    v49 = *(this + 2);
    if (!v49)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
      v49 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    v50 = *(v49 + 8);
    if (!v50)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
      v50 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::default_instance_ + 8);
    }

    if (fabs(*(v50 + 8)) >= 2.22044605e-16)
    {
      *(a2 + 14) = 0;
      v54 = (a2 + 112);
      *(a2 + 105) = 1;
      *(a2 + 15) = 0;
    }

    else
    {
      v51 = *(this + 2);
      if (!v51)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
        v51 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
      }

      v52 = *(v51 + 8);
      if (!v52)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
        v52 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::default_instance_ + 8);
      }

      v53 = fabs(*(v52 + 16));
      *(a2 + 14) = 0;
      v54 = (a2 + 112);
      *(a2 + 105) = v53 >= 2.22044605e-16;
      *(a2 + 15) = 0;
      if (v53 < 2.22044605e-16)
      {
LABEL_44:
        v30 = *(this + 2);
        if (!v30)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
          v30 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
        }

        if (*(v30 + 32) <= 0.0)
        {
          *(a2 + 106) = 0;
          v37 = 0;
          v38 = 128;
        }

        else
        {
          v31 = *(this + 2);
          if (!v31)
          {
            CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
            v31 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
          }

          v32 = *(v31 + 32) & 0x7FFFFFFFFFFFFFFFLL;
          *(a2 + 106) = v32 < 0x7FF0000000000000;
          *(a2 + 16) = 0;
          if (v32 > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_59:
            v39 = *(this + 3);
            if (!v39)
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
              v39 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
            }

            if ((*(v39 + 364) & 1) == 0)
            {
              goto LABEL_83;
            }

            v40 = *(this + 3);
            if (!v40)
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
              v40 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
            }

            if ((*(v40 + 364) & 2) == 0)
            {
              goto LABEL_83;
            }

            v41 = *(this + 3);
            if (!v41)
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
              v41 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
            }

            if ((*(v41 + 364) & 4) == 0)
            {
              goto LABEL_83;
            }

            v42 = *(this + 3);
            if (!v42)
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
              v42 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
            }

            if ((*(v42 + 8) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_83;
            }

            v43 = *(this + 3);
            if (!v43)
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
              v43 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
            }

            if ((*(v43 + 16) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_83;
            }

            v44 = *(this + 3);
            if (!v44)
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
              v44 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
            }

            if ((*(v44 + 24) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_83;
            }

            v45 = *(this + 3);
            if (!v45)
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
              v45 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
            }

            if (*(v45 + 8) < 0.0)
            {
              goto LABEL_83;
            }

            v46 = *(this + 3);
            if (!v46)
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
              v46 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
            }

            if (*(v46 + 16) < 0.0)
            {
LABEL_83:
              *(a2 + 184) = 0;
              goto LABEL_84;
            }

            v62 = *(this + 3);
            if (!v62)
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
              v62 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
            }

            v63 = *(v62 + 24);
            *(a2 + 184) = v63 > 0.0;
            if (v63 <= 0.0)
            {
LABEL_84:
              v47 = *(this + 2);
              if (v47)
              {
                *(a2 + 19) = v47[8];
              }

              else
              {
                CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
                v47 = *(this + 2);
                *(a2 + 19) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16) + 64);
                if (!v47)
                {
                  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v48);
                  v47 = *(this + 2);
                  *(a2 + 21) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16) + 40);
                  if (!v47)
                  {
                    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v55);
                    v47 = *(this + 2);
                    *(a2 + 22) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16) + 56);
                    if (!v47)
                    {
                      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v56);
                      v47 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
                    }

                    goto LABEL_89;
                  }

LABEL_88:
                  *(a2 + 22) = v47[7];
LABEL_89:
                  *(a2 + 20) = v47[9];
                  v24 = *(a2 + 105);
                  return v24 & 1;
                }
              }

              *(a2 + 21) = v47[5];
              goto LABEL_88;
            }

            v64 = *(this + 3);
            if (v64)
            {
              *(a2 + 24) = v64[1];
            }

            else
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
              v64 = *(this + 3);
              *(a2 + 24) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24) + 8);
              if (!v64)
              {
                CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
                v64 = *(this + 3);
                *(a2 + 25) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24) + 16);
                if (!v64)
                {
                  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
                  v64 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
                }

                goto LABEL_123;
              }
            }

            *(a2 + 25) = v64[2];
LABEL_123:
            *(a2 + 26) = v64[3];
            goto LABEL_84;
          }

          v33 = *(this + 2);
          if (!v33)
          {
            CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
            v33 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
          }

          v34 = *(v33 + 24);
          v35 = *(this + 3);
          if (!v35)
          {
            CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
            v35 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
          }

          *(a2 + 16) = v34 + *(v35 + 100);
          v36 = *(this + 2);
          if (!v36)
          {
            CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
            v36 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
          }

          v37 = *(v36 + 32);
          v38 = 144;
        }

        *(a2 + v38) = v37;
        goto LABEL_59;
      }
    }

    v57 = *(this + 2);
    if (!v57)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
      v57 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    v58 = *(v57 + 8);
    if (!v58)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
      v58 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::default_instance_ + 8);
    }

    *v54 = *(v58 + 8);
    v59 = *(this + 2);
    if (!v59)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
      v59 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    v60 = *(v59 + 8);
    if (!v60)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
      v60 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::default_instance_ + 8);
    }

    *(a2 + 15) = *(v60 + 16);
    v61 = *(this + 2);
    if (!v61)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
      v61 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    *(a2 + 17) = *(v61 + 16);
    goto LABEL_44;
  }

  if (cnprint::CNPrinter::GetLogLevel(v8) <= 1)
  {
    LOWORD(v65) = 13;
    v66 = 1;
    cnprint::CNPrinter::Print(&v65, &v66, "location private does not have mach continuous time for position event");
  }

LABEL_31:
  v24 = 0;
  return v24 & 1;
}

uint64_t trackrun::ConvertProtobufToTrackRunTime(uint64_t a1, uint64_t a2, char a3, int8x16_t a4, int8x16_t a5)
{
  v5 = *(a1 + 36);
  if ((v5 & 4) != 0)
  {
    a4.i64[0] = *(a1 + 24);
    v13 = 0uLL;
    CNTimeSpan::SetTimeSpan(&v13, 0, a4, a5);
    v10.i64[1] = *(&v13 + 1);
    *(a2 + 8) = v13;
    *a2 = 1;
    if (a3 & 1) != 0 && (*(a1 + 36))
    {
      v10.i64[0] = *(a1 + 8);
      v13 = 0uLL;
      CNTimeSpan::SetTimeSpan(&v13, 0, v10, v9);
      *(a2 + 32) = v13;
      *(a2 + 24) = 1;
    }

    else
    {
      *(a2 + 24) = 0;
    }
  }

  else
  {
    LOWORD(v13) = 13;
    v12 = 3;
    cnprint::CNPrinter::Print(&v13, &v12, "ConvertProtobufToTrackRunTime,mach continuous time not present", *a4.i64, *a5.i64);
  }

  return (v5 >> 2) & 1;
}

{
  v5 = *(a1 + 36);
  if ((v5 & 4) != 0)
  {
    a4.i64[0] = *(a1 + 24);
    v13 = 0uLL;
    CNTimeSpan::SetTimeSpan(&v13, 0, a4, a5);
    v10.i64[1] = *(&v13 + 1);
    *(a2 + 8) = v13;
    *a2 = 1;
    if (a3 & 1) != 0 && (*(a1 + 36))
    {
      v10.i64[0] = *(a1 + 8);
      v13 = 0uLL;
      CNTimeSpan::SetTimeSpan(&v13, 0, v10, v9);
      *(a2 + 32) = v13;
      *(a2 + 24) = 1;
    }

    else
    {
      *(a2 + 24) = 0;
    }
  }

  else
  {
    LOWORD(v13) = 13;
    v12 = 3;
    cnprint::CNPrinter::Print(&v13, &v12, "ConvertProtobufToTrackRunTime,mach continuous time not present", *a4.i64, *a5.i64);
  }

  return (v5 >> 2) & 1;
}

uint64_t trackrun::PopulateAllTimeFields(uint64_t a1, uint64_t a2, int8x16_t a3, int8x16_t a4)
{
  result = CNTimeSpan::operator-((a1 + 8), (a2 + 8), a3, a4);
  v11[0] = result;
  v11[1] = v9;
  if (*(a2 + 24) == 1)
  {
    result = CNTimeSpan::operator+((a2 + 32), v11, v7, v8);
    *(a1 + 32) = result;
    *(a1 + 40) = v10;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t trackrun::ConvertProtobufToLocationType(unsigned int a1)
{
  if (a1 >= 0xE)
  {
    return 1;
  }

  else
  {
    return a1;
  }
}

uint64_t raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *a1, uint64_t a2)
{
  CoreNavigation::CLP::LogEntry::LogEntry::LogEntry(v11);
  if (wireless_diagnostics::google::protobuf::MessageLite::ParseFromString())
  {
    v7 = raven::RavenSupervisor::RaiseEventsFrom(a1, v11, v3, v4, v5, v6);
  }

  else
  {
    v10 = 12;
    v9 = 4;
    cnprint::CNPrinter::Print(&v10, &v9, "Failed to parse incoming LogEntry");
    v7 = 0;
  }

  CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(v11);
  return v7;
}

void sub_1D0B7ACF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(va);
  _Unwind_Resume(a1);
}

uint64_t raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::LogEntry *a2, raven::AccelerometerEvent *a3, raven::RavenGnssAssistanceFileEvent *a4, int8x16_t a5, int8x16_t a6)
{
  v7 = this;
  v8 = this + 4096;
  if (*(this + 8190) != 1)
  {
    goto LABEL_5;
  }

  v9 = *(a2 + 5);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
  }

  if (*(v9 + 316))
  {
    v11 = *(a2 + 5);
    if (!v11)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v11 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v12 = *(v11 + 8);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 8);
    }

    this = raven::RavenSupervisor::RaiseEventsFrom(v7, v12, a3, *a5.i64, a6);
    v10 = 1;
  }

  else
  {
LABEL_5:
    v10 = 0;
  }

  v13 = *(a2 + 5);
  v14 = v13;
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v14 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v13 = *(a2 + 5);
  }

  if ((*(v14 + 318) & 0x10) != 0)
  {
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v13 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v15 = *(v13 + 168);
    if (!v15)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 168);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v7, v15, a3, *a5.i64, a6);
    v13 = *(a2 + 5);
    v10 = 2;
  }

  v16 = v13;
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v16 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v13 = *(a2 + 5);
  }

  if ((*(v16 + 316) & 4) != 0)
  {
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v13 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v17 = *(v13 + 24);
    if (!v17)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v17 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 24);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v7, v17, a3, *a5.i64, a6);
    v13 = *(a2 + 5);
    v10 = 4;
  }

  v18 = v13;
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v18 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v13 = *(a2 + 5);
  }

  if (*(v18 + 317))
  {
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v13 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v19 = *(v13 + 72);
    if (!v19)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v19 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 72);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v7, v19, a3, a5, a6);
    v13 = *(a2 + 5);
    v10 = 5;
  }

  v20 = v13;
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v20 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v13 = *(a2 + 5);
  }

  if ((*(v20 + 318) & 0x80) != 0)
  {
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v13 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v21 = *(v13 + 192);
    if (!v21)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v21 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 192);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v7, v21, a3, *a5.i64, a6);
    v13 = *(a2 + 5);
    v10 = 6;
  }

  v22 = v13;
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v22 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v13 = *(a2 + 5);
  }

  if (*(v22 + 318))
  {
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v13 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v23 = *(v13 + 136);
    if (!v23)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v23 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 136);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v7, v23, a3, *a5.i64, a6);
    v13 = *(a2 + 5);
    v10 = 7;
  }

  v24 = v13;
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v24 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v13 = *(a2 + 5);
  }

  if ((*(v24 + 319) & 2) != 0)
  {
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v13 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v25 = *(v13 + 208);
    if (!v25)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v25 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 208);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v7, v25, a3, *a5.i64, a6);
    v13 = *(a2 + 5);
    v10 = 8;
  }

  v26 = v13;
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v26 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v13 = *(a2 + 5);
  }

  if (*(v26 + 319))
  {
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v13 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v27 = *(v13 + 200);
    if (!v27)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v27 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 200);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v7, v27, a3, *a5.i64, a6);
    v13 = *(a2 + 5);
    v10 = 9;
  }

  v28 = v13;
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v28 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v13 = *(a2 + 5);
  }

  if ((*(v28 + 317) & 0x10) != 0)
  {
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v13 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v29 = *(v13 + 104);
    if (!v29)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v29 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 104);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v7, v29, a3, *a5.i64, a6);
    v13 = *(a2 + 5);
    v10 = 10;
  }

  if (v8[4094] == 1)
  {
    v30 = v13;
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v30 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
      v13 = *(a2 + 5);
    }

    if ((*(v30 + 316) & 2) != 0)
    {
      if (!v13)
      {
        CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
        v13 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
      }

      v31 = *(v13 + 16);
      if (!v31)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
        v31 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 16);
      }

      this = raven::RavenSupervisor::RaiseEventsFrom(v7, v31, a3, *a5.i64, a6);
      v13 = *(a2 + 5);
      v10 = 11;
    }
  }

  v32 = v13;
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v32 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v13 = *(a2 + 5);
  }

  if ((*(v32 + 316) & 8) != 0)
  {
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v13 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v33 = *(v13 + 32);
    if (!v33)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v33 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 32);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v7, v33, a3, *a5.i64, a6);
    v13 = *(a2 + 5);
    v10 = 12;
  }

  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v13 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
  }

  if ((*(v13 + 317) & 0x20) != 0)
  {
    v34 = *(a2 + 5);
    if (!v34)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v34 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    if (!*(v34 + 112))
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    }

    v10 = 13;
  }

  v35 = *(a2 + 5);
  v36 = v35;
  if (!v35)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v36 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v35 = *(a2 + 5);
  }

  if ((*(v36 + 318) & 0x20) != 0)
  {
    if (!v35)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v35 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v37 = *(v35 + 176);
    if (!v37)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v37 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 176);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v7, v37, a3, a5, a6);
    v35 = *(a2 + 5);
    v10 = 15;
  }

  v38 = v35;
  if (!v35)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v38 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v35 = *(a2 + 5);
  }

  if ((*(v38 + 317) & 2) != 0)
  {
    if (!v35)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v35 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v39 = *(v35 + 80);
    if (!v39)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v39 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 80);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v7, v39, a3, *a5.i64, a6);
    v35 = *(a2 + 5);
    v10 = 16;
  }

  v40 = v35;
  if (!v35)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v40 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v35 = *(a2 + 5);
  }

  if ((*(v40 + 316) & 0x10) != 0)
  {
    if (!v35)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v35 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v41 = *(v35 + 40);
    if (!v41)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v41 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 40);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v7, v41, a3, a5, a6);
    v35 = *(a2 + 5);
    v10 = 17;
  }

  v42 = v35;
  if (!v35)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v42 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v35 = *(a2 + 5);
  }

  if ((*(v42 + 316) & 0x20) != 0)
  {
    if (!v35)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v35 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v43 = *(v35 + 48);
    if (!v43)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v43 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 48);
    }

    this = raven::RavenSupervisor::RaiseEventsFrom(v7, v43, a3);
    v35 = *(a2 + 5);
    v10 = 18;
  }

  v44 = v35;
  if (!v35)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v44 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v35 = *(a2 + 5);
  }

  if ((*(v44 + 319) & 0x10) != 0)
  {
    if (!v35)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v35 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v45 = *(v35 + 232);
    if (!v45)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v45 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 232);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v7, v45, a3);
    v35 = *(a2 + 5);
    v10 = 19;
  }

  v46 = v35;
  if (!v35)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v46 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v35 = *(a2 + 5);
  }

  if ((*(v46 + 316) & 0x40) != 0)
  {
    if (!v35)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v35 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v47 = *(v35 + 56);
    if (!v47)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v47 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 56);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v7, v47, a3, a5, a6);
    v35 = *(a2 + 5);
    v10 = 20;
  }

  v48 = v35;
  if (!v35)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v48 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v35 = *(a2 + 5);
  }

  if ((*(v48 + 317) & 8) != 0)
  {
    if (!v35)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v35 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v49 = *(v35 + 96);
    if (!v49)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v49 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 96);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v7, v49, a3, a5, a6);
    v35 = *(a2 + 5);
    v10 = 23;
  }

  v50 = v35;
  if (!v35)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v50 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v35 = *(a2 + 5);
  }

  if ((*(v50 + 317) & 0x80) != 0)
  {
    if (!v35)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v35 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v51 = *(v35 + 128);
    if (!v51)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v51 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 128);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v7, v51, a3);
    v35 = *(a2 + 5);
    v10 = 24;
  }

  v52 = v35;
  if (!v35)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v52 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v35 = *(a2 + 5);
  }

  if ((*(v52 + 320) & 0x20) != 0)
  {
    if (!v35)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v35 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v53 = *(v35 + 304);
    if (!v53)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v53 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 304);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v7, v53);
  }

  v54 = v35;
  if (!v35)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v54 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v35 = *(a2 + 5);
  }

  if ((*(v54 + 316) & 0x80) != 0)
  {
    if (!v35)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v35 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v55 = *(v35 + 64);
    if (!v55)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v55 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 64);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v7, v55, a3, a5, a6);
    v35 = *(a2 + 5);
    v10 = 25;
  }

  v56 = v35;
  if (!v35)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v56 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v35 = *(a2 + 5);
  }

  if ((*(v56 + 318) & 2) != 0)
  {
    if (!v35)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v35 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v57 = *(v35 + 144);
    if (!v57)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v57 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 144);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v7, v57, a3, *a5.i64, a6);
    v35 = *(a2 + 5);
    v10 = 26;
  }

  v58 = v35;
  if (!v35)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v58 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v35 = *(a2 + 5);
  }

  if ((*(v58 + 318) & 8) != 0)
  {
    if (!v35)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v35 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v59 = *(v35 + 160);
    if (!v59)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v59 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 160);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v7, v59, a3, *a5.i64, a6);
    v35 = *(a2 + 5);
    v10 = 27;
  }

  if (!v35)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v35 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
  }

  if ((*(v35 + 320) & 4) != 0)
  {
    v60 = *(a2 + 5);
    if (!v60)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v60 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v61 = *(v60 + 280);
    if (!v61)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v61 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 280);
    }

    v62 = *(a2 + 4);
    if (!v62)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v62 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 32);
    }

    v63 = *(v61 + 40);
    if (v63)
    {
      v71 = *(v61 + 32);
      raven::RavenSupervisor::RaiseEventsFrom(v7, &v71, v62, a5, a6);
      v63 = *(v61 + 40);
      v10 = 3;
      if ((v63 & 2) == 0)
      {
LABEL_207:
        if ((v63 & 8) == 0)
        {
          goto LABEL_220;
        }

        goto LABEL_215;
      }
    }

    else if ((v63 & 2) == 0)
    {
      goto LABEL_207;
    }

    if (v8[4082] == 1)
    {
      v64 = *(v61 + 8);
      if (!v64)
      {
        CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionLogEntry_2eproto(this);
        v64 = *(CoreNavigation::CLP::LogEntry::Vision::LogEntry::default_instance_ + 8);
      }

      raven::RavenSupervisor::RaiseEventsFrom(v7, v64);
      v63 = *(v61 + 40);
    }

    v10 = 28;
    if ((v63 & 8) != 0)
    {
LABEL_215:
      if (v8[4083] == 1)
      {
        v65 = *(v61 + 24);
        if (!v65)
        {
          CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionLogEntry_2eproto(this);
          v65 = *(CoreNavigation::CLP::LogEntry::Vision::LogEntry::default_instance_ + 24);
        }

        raven::RavenSupervisor::RaiseEventsFrom(v7, v65, v62);
      }

      v10 = 29;
    }
  }

LABEL_220:
  v66 = *(a2 + 5);
  v67 = v66;
  if (!v66)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v67 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v66 = *(a2 + 5);
  }

  if ((*(v67 + 319) & 0x40) != 0)
  {
    if (!v66)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v66 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v68 = *(v66 + 248);
    if (!v68)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v68 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 248);
    }

    v69 = *(a2 + 4);
    if (!v69)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v69 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 32);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v7, v68, v69, a4);
    v66 = *(a2 + 5);
    v10 = 30;
  }

  if (!v66)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v66 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
  }

  if ((*(v66 + 317) & 0x40) != 0)
  {
    cnframework::Supervisor::Reset(v7);
    return 22;
  }

  return v10;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Accel::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::Accel *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v7 != 2)
      {
        goto LABEL_15;
      }

      *(this + 11) |= 1u;
      v8 = *(this + 1);
      if (!v8)
      {
        operator new();
      }

      v29 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29))
        {
          return 0;
        }
      }

      else
      {
        v29 = *v9;
        *(a2 + 1) = v9 + 1;
      }

      v10 = *(a2 + 14);
      v11 = *(a2 + 15);
      *(a2 + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v8, a2, v12) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v13 = *(a2 + 14);
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v15 < 0 == v14)
      {
        *(a2 + 14) = v15;
      }

      v16 = *(a2 + 1);
      if (v16 < *(a2 + 2) && *v16 == 18)
      {
        do
        {
          *(a2 + 1) = v16 + 1;
LABEL_27:
          v17 = *(this + 7);
          v18 = *(this + 6);
          if (v18 >= v17)
          {
            if (v17 == *(this + 8))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
              v17 = *(this + 7);
            }

            *(this + 7) = v17 + 1;
            operator new();
          }

          v19 = *(this + 2);
          *(this + 6) = v18 + 1;
          v20 = *(v19 + 8 * v18);
          v30 = 0;
          v21 = *(a2 + 1);
          if (v21 >= *(a2 + 2) || *v21 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
            {
              return 0;
            }
          }

          else
          {
            v30 = *v21;
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::MergePartialFromCodedStream(v20, a2, v24) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v25 = *(a2 + 14);
          v14 = __OFSUB__(v25, 1);
          v26 = v25 - 1;
          if (v26 < 0 == v14)
          {
            *(a2 + 14) = v26;
          }

          v16 = *(a2 + 1);
          v27 = *(a2 + 2);
        }

        while (v16 < v27 && *v16 == 18);
        if (v16 == v27 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 2)
    {
      goto LABEL_27;
    }

LABEL_15:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::AccelSample *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (v8 != 5)
          {
            goto LABEL_22;
          }

LABEL_38:
          v21 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v21;
          *(this + 8) |= 4u;
          v19 = *(a2 + 1);
          if (v19 < *(a2 + 2) && *v19 == 37)
          {
            *(a2 + 1) = v19 + 1;
            goto LABEL_42;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 5)
          {
            goto LABEL_22;
          }

LABEL_42:
          v21 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v21;
          *(this + 8) |= 8u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v7 == 1)
      {
        break;
      }

      if (v7 == 2 && v8 == 5)
      {
        goto LABEL_34;
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

    if (v8 != 2)
    {
      goto LABEL_22;
    }

    *(this + 8) |= 1u;
    v9 = *(this + 1);
    if (!v9)
    {
      operator new();
    }

    v21 = 0;
    v10 = *(a2 + 1);
    if (v10 >= *(a2 + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21))
      {
        return 0;
      }
    }

    else
    {
      v21 = *v10;
      *(a2 + 1) = v10 + 1;
    }

    v11 = *(a2 + 14);
    v12 = *(a2 + 15);
    *(a2 + 14) = v11 + 1;
    if (v11 >= v12)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v9, a2, v13) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v14 = *(a2 + 14);
    v15 = __OFSUB__(v14, 1);
    v16 = v14 - 1;
    if (v16 < 0 == v15)
    {
      *(a2 + 14) = v16;
    }

    v17 = *(a2 + 1);
    if (v17 < *(a2 + 2) && *v17 == 21)
    {
      *(a2 + 1) = v17 + 1;
LABEL_34:
      v21 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
      {
        return 0;
      }

      *(this + 4) = v21;
      *(this + 8) |= 2u;
      v18 = *(a2 + 1);
      if (v18 < *(a2 + 2) && *v18 == 29)
      {
        *(a2 + 1) = v18 + 1;
        goto LABEL_38;
      }
    }
  }
}

uint64_t raven::ConvertProtobufToRavenTime(uint64_t a1, uint64_t a2, char a3, int8x16_t a4, int8x16_t a5)
{
  v5 = *(a1 + 36);
  if ((v5 & 4) != 0)
  {
    a4.i64[0] = *(a1 + 24);
    v13 = 0uLL;
    CNTimeSpan::SetTimeSpan(&v13, 0, a4, a5);
    v10.i64[1] = *(&v13 + 1);
    *a2 = v13;
    if (a3 & 1) != 0 && (*(a1 + 36))
    {
      v10.i64[0] = *(a1 + 8);
      v13 = 0uLL;
      CNTimeSpan::SetTimeSpan(&v13, 0, v10, v9);
      *(a2 + 24) = v13;
      *(a2 + 16) = 1;
    }

    else
    {
      *(a2 + 16) = 0;
    }
  }

  else
  {
    LOWORD(v13) = 12;
    v12 = 3;
    cnprint::CNPrinter::Print(&v13, &v12, "ConvertProtobufToRavenTime,mach continuous time not present", *a4.i64, *a5.i64);
  }

  return (v5 >> 2) & 1;
}

uint64_t raven::RavenSupervisor::RaiseEventsFrom(uint64_t this, const CoreNavigation::CLP::LogEntry::PrivateData::Accel *a2, raven::AccelerometerEvent *a3, double a4, int8x16_t a5)
{
  LODWORD(v5) = *(a2 + 6);
  if (v5 >= 1)
  {
    v7 = this;
    v8 = 0;
    v10 = vdupq_n_s64(0x7FF8000000000000uLL);
    do
    {
      v11[0] = &unk_1F4CEEEB0;
      v11[1] = 0;
      v11[2] = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v9 = v10;
      v21 = v10;
      v22 = v10;
      v23 = 0;
      v24 = 0x7FF8000000000000;
      v25 = 0;
      if (v8 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v26);
      }

      this = raven::ConvertProtobufToAccelerometerEvent(*(*(a2 + 2) + 8 * v8), v11, a3, v9, a5);
      if (this)
      {
        sub_1D0B7C294(v7, v11);
      }

      ++v8;
      v5 = *(a2 + 6);
    }

    while (v8 < v5);
  }

  return this;
}