uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_34;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v19[0] = 0;
        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v19);
          if (!result)
          {
            return result;
          }

          v12 = v19[0];
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v12 <= 0xC)
        {
          *(this + 11) |= 1u;
          *(this + 6) = v12;
        }

        v14 = *(a2 + 1);
        if (v14 < *(a2 + 2) && *v14 == 17)
        {
          *(a2 + 1) = v14 + 1;
LABEL_34:
          *v19 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v19) & 1) == 0)
          {
            return 0;
          }

          *(this + 1) = *v19;
          *(this + 11) |= 2u;
          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 25)
          {
            *(a2 + 1) = v15 + 1;
LABEL_38:
            *v19 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v19) & 1) == 0)
            {
              return 0;
            }

            *(this + 2) = *v19;
            *(this + 11) |= 4u;
            v16 = *(a2 + 1);
            if (v16 < *(a2 + 2) && *v16 == 33)
            {
              *(a2 + 1) = v16 + 1;
              goto LABEL_42;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 1)
        {
          goto LABEL_21;
        }

        goto LABEL_38;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_21;
      }

LABEL_42:
      *v19 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v19) & 1) == 0)
      {
        return 0;
      }

      *(this + 4) = *v19;
      *(this + 11) |= 8u;
      v17 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v17 < v9 && *v17 == 40)
      {
        v10 = v17 + 1;
        *(a2 + 1) = v10;
LABEL_46:
        v19[0] = 0;
        if (v10 >= v9 || (v18 = *v10, (v18 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v19);
          if (!result)
          {
            return result;
          }

          v18 = v19[0];
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v18 <= 2)
        {
          *(this + 11) |= 0x10u;
          *(this + 7) = v18;
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

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_46;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (v8 != 5)
          {
            goto LABEL_20;
          }

LABEL_34:
          v15[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v15) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v15[0];
          *(this + 8) |= 4u;
          v14 = *(a2 + 1);
          if (v14 < *(a2 + 2) && *v14 == 37)
          {
            *(a2 + 1) = v14 + 1;
            goto LABEL_38;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 5)
          {
            goto LABEL_20;
          }

LABEL_38:
          v15[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v15) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v15[0];
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

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v15[0] = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v15);
        if (!result)
        {
          return result;
        }

        v10 = v15[0];
      }

      else
      {
        *(a2 + 1) = v9 + 1;
      }

      if (v10 <= 0xC)
      {
        *(this + 8) |= 1u;
        *(this + 4) = v10;
      }

      v12 = *(a2 + 1);
      if (v12 < *(a2 + 2) && *v12 == 17)
      {
        *(a2 + 1) = v12 + 1;
LABEL_30:
        *v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v15) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = *v15;
        *(this + 8) |= 2u;
        v13 = *(a2 + 1);
        if (v13 < *(a2 + 2) && *v13 == 29)
        {
          *(a2 + 1) = v13 + 1;
          goto LABEL_34;
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_30;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (v8 != 2)
          {
            goto LABEL_21;
          }

          goto LABEL_52;
        }

        if (v7 == 4)
        {
          if (v8 != 2)
          {
            goto LABEL_21;
          }

LABEL_66:
          *(this + 13) |= 8u;
          v34 = *(this + 4);
          if (!v34)
          {
            operator new();
          }

          v50 = 0;
          v35 = *(a2 + 1);
          if (v35 >= *(a2 + 2) || *v35 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
            {
              return 0;
            }
          }

          else
          {
            v50 = *v35;
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::MergePartialFromCodedStream(v34, a2, v38) || *(a2 + 36) != 1)
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
          if (v41 < *(a2 + 2) && *v41 == 42)
          {
            *(a2 + 1) = v41 + 1;
            goto LABEL_80;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 2)
          {
            goto LABEL_21;
          }

LABEL_80:
          *(this + 13) |= 0x10u;
          v42 = *(this + 5);
          if (!v42)
          {
            operator new();
          }

          v50 = 0;
          v43 = *(a2 + 1);
          if (v43 >= *(a2 + 2) || *v43 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
            {
              return 0;
            }
          }

          else
          {
            v50 = *v43;
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::MergePartialFromCodedStream(v42, a2, v46) || *(a2 + 36) != 1)
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

      *(this + 13) |= 1u;
      v9 = *(this + 1);
      if (!v9)
      {
        operator new();
      }

      v50 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
        {
          return 0;
        }
      }

      else
      {
        v50 = *v10;
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
      if (!CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::MergePartialFromCodedStream(v9, a2, v13) || *(a2 + 36) != 1)
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
      if (v17 < *(a2 + 2) && *v17 == 18)
      {
        *(a2 + 1) = v17 + 1;
LABEL_38:
        *(this + 13) |= 2u;
        v18 = *(this + 2);
        if (!v18)
        {
          operator new();
        }

        v50 = 0;
        v19 = *(a2 + 1);
        if (v19 >= *(a2 + 2) || *v19 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
          {
            return 0;
          }
        }

        else
        {
          v50 = *v19;
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
        if (!CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::MergePartialFromCodedStream(v18, a2, v22) || *(a2 + 36) != 1)
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
        if (v25 < *(a2 + 2) && *v25 == 26)
        {
          *(a2 + 1) = v25 + 1;
LABEL_52:
          *(this + 13) |= 4u;
          v26 = *(this + 3);
          if (!v26)
          {
            operator new();
          }

          v50 = 0;
          v27 = *(a2 + 1);
          if (v27 >= *(a2 + 2) || *v27 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
            {
              return 0;
            }
          }

          else
          {
            v50 = *v27;
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::MergePartialFromCodedStream(v26, a2, v30) || *(a2 + 36) != 1)
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
          if (v33 < *(a2 + 2) && *v33 == 34)
          {
            *(a2 + 1) = v33 + 1;
            goto LABEL_66;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        break;
      }

      if (v7 == 2)
      {
        if (v8 != 2)
        {
          goto LABEL_16;
        }

        v13 = *(this + 8);
LABEL_24:
        *(this + 8) = v13 | 2;
        v15 = *(this + 1);
        if (!v15)
        {
          operator new();
        }

        v31 = 0;
        v16 = *(a2 + 1);
        if (v16 >= *(a2 + 2) || *v16 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31))
          {
            return 0;
          }
        }

        else
        {
          v31 = *v16;
          *(a2 + 1) = v16 + 1;
        }

        v17 = *(a2 + 14);
        v18 = *(a2 + 15);
        *(a2 + 14) = v17 + 1;
        if (v17 >= v18)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::MergePartialFromCodedStream(v15, a2, v19) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v20 = *(a2 + 14);
        v21 = __OFSUB__(v20, 1);
        v22 = v20 - 1;
        if (v22 < 0 == v21)
        {
          *(a2 + 14) = v22;
        }

        v23 = *(a2 + 1);
        if (v23 < *(a2 + 2) && *v23 == 26)
        {
          *(a2 + 1) = v23 + 1;
LABEL_38:
          *(this + 8) |= 4u;
          v24 = *(this + 2);
          if (!v24)
          {
            operator new();
          }

          v32 = 0;
          v25 = *(a2 + 1);
          if (v25 >= *(a2 + 2) || *v25 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32))
            {
              return 0;
            }
          }

          else
          {
            v32 = *v25;
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion::MergePartialFromCodedStream(v24, a2, v28) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v29 = *(a2 + 14);
          v21 = __OFSUB__(v29, 1);
          v30 = v29 - 1;
          if (v30 < 0 == v21)
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

      else
      {
        if (v7 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_16;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        v13 = *(this + 8) | 1;
        *(this + 8) = v13;
        if (v12 < v9 && *v12 == 18)
        {
          *(a2 + 1) = v12 + 1;
          goto LABEL_24;
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_38;
    }

LABEL_16:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if (v8 == 2)
          {
            goto LABEL_34;
          }

LABEL_16:
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

        if (v7 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_16;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 7) |= 1u;
        if (v12 < v9 && *v12 == 16)
        {
          v13 = v12 + 1;
          *(a2 + 1) = v13;
          goto LABEL_24;
        }
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v13 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_24:
      v25 = 0;
      if (v13 >= v9 || (v15 = *v13, (v15 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
        if (!result)
        {
          return result;
        }

        v15 = v25;
      }

      else
      {
        *(a2 + 1) = v13 + 1;
      }

      if (v15 <= 4)
      {
        *(this + 7) |= 2u;
        *(this + 3) = v15;
      }

      v16 = *(a2 + 1);
    }

    while (v16 >= *(a2 + 2) || *v16 != 26);
    *(a2 + 1) = v16 + 1;
LABEL_34:
    *(this + 7) |= 4u;
    v17 = *(this + 2);
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
    if (!CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange::MergePartialFromCodedStream(v17, a2, v21) || *(a2 + 36) != 1)
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

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (v8 != 1)
          {
            goto LABEL_20;
          }

LABEL_32:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v16) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v16;
          *(this + 11) |= 4u;
          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 33)
          {
            *(a2 + 1) = v15 + 1;
            goto LABEL_36;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 1)
          {
            goto LABEL_20;
          }

LABEL_36:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v16) & 1) == 0)
          {
            return 0;
          }

          *(this + 4) = v16;
          *(this + 11) |= 8u;
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

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
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

      *(this + 11) |= 1u;
      if (v12 < v9 && *v12 == 17)
      {
        *(a2 + 1) = v12 + 1;
LABEL_28:
        v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v16) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v16;
        *(this + 11) |= 2u;
        v14 = *(a2 + 1);
        if (v14 < *(a2 + 2) && *v14 == 25)
        {
          *(a2 + 1) = v14 + 1;
          goto LABEL_32;
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_28;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
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
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v7 != 1)
          {
            if (v7 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_21;
            }

            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_32;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v12 >= v9 || (v13 = *v12, v13 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v14 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v13;
            v14 = v12 + 1;
            *(a2 + 1) = v14;
          }

          *(this + 10) |= 1u;
          if (v14 < v9 && *v14 == 16)
          {
            v10 = v14 + 1;
            *(a2 + 1) = v10;
LABEL_32:
            if (v10 >= v9 || (v16 = *v10, v16 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
              if (!result)
              {
                return result;
              }

              v17 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 3) = v16;
              v17 = v10 + 1;
              *(a2 + 1) = v17;
            }

            *(this + 10) |= 2u;
            if (v17 < v9 && *v17 == 24)
            {
              v11 = v17 + 1;
              *(a2 + 1) = v11;
              goto LABEL_40;
            }
          }
        }

        if (v7 != 3)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v11 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_40:
        v36 = 0;
        if (v11 >= v9 || (v18 = *v11, (v18 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
          if (!result)
          {
            return result;
          }

          v18 = v36;
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v18 <= 5)
        {
          *(this + 10) |= 4u;
          *(this + 8) = v18;
        }

        v19 = *(a2 + 1);
        if (v19 < *(a2 + 2) && *v19 == 34)
        {
          *(a2 + 1) = v19 + 1;
LABEL_50:
          *(this + 10) |= 8u;
          v20 = *(this + 2);
          if (!v20)
          {
            operator new();
          }

          v37 = 0;
          v21 = *(a2 + 1);
          if (v21 >= *(a2 + 2) || *v21 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37))
            {
              return 0;
            }
          }

          else
          {
            v37 = *v21;
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergePartialFromCodedStream(v20, a2, v24) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v25 = *(a2 + 14);
          v26 = __OFSUB__(v25, 1);
          v27 = v25 - 1;
          if (v27 < 0 == v26)
          {
            *(a2 + 14) = v27;
          }

          v28 = *(a2 + 1);
          if (v28 < *(a2 + 2) && *v28 == 42)
          {
            *(a2 + 1) = v28 + 1;
            goto LABEL_64;
          }
        }
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 == 2)
      {
        goto LABEL_50;
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

    if (v7 != 5 || v8 != 2)
    {
      goto LABEL_21;
    }

LABEL_64:
    *(this + 10) |= 0x10u;
    v29 = *(this + 3);
    if (!v29)
    {
      operator new();
    }

    v38 = 0;
    v30 = *(a2 + 1);
    if (v30 >= *(a2 + 2) || *v30 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v38))
      {
        return 0;
      }
    }

    else
    {
      v38 = *v30;
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
    if (!CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergePartialFromCodedStream(v29, a2, v33) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v34 = *(a2 + 14);
    v26 = __OFSUB__(v34, 1);
    v35 = v34 - 1;
    if (v35 < 0 == v26)
    {
      *(a2 + 14) = v35;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 7) |= 1u;
      if (v11 < v8 && *v11 == 17)
      {
        *(a2 + 1) = v11 + 1;
LABEL_21:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v13) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v13;
        *(this + 7) |= 2u;
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
      goto LABEL_21;
    }

LABEL_13:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
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

          if (v7 == 4)
          {
            if (v8 == 2)
            {
              goto LABEL_62;
            }

            goto LABEL_26;
          }

          if (v7 == 5)
          {
            if (v8 != 2)
            {
              goto LABEL_26;
            }

LABEL_76:
            *(this + 14) |= 0x10u;
            v40 = *(this + 4);
            if (!v40)
            {
              operator new();
            }

            v55 = 0;
            v41 = *(a2 + 1);
            if (v41 >= *(a2 + 2) || *v41 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v55))
              {
                return 0;
              }
            }

            else
            {
              v55 = *v41;
              *(a2 + 1) = v41 + 1;
            }

            v42 = *(a2 + 14);
            v43 = *(a2 + 15);
            *(a2 + 14) = v42 + 1;
            if (v42 >= v43)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(v40, a2, v44) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v45 = *(a2 + 14);
            v21 = __OFSUB__(v45, 1);
            v46 = v45 - 1;
            if (v46 < 0 == v21)
            {
              *(a2 + 14) = v46;
            }

            v47 = *(a2 + 1);
            if (v47 < *(a2 + 2) && *v47 == 50)
            {
              *(a2 + 1) = v47 + 1;
              goto LABEL_90;
            }
          }

          else
          {
            if (v7 != 6 || v8 != 2)
            {
              goto LABEL_26;
            }

LABEL_90:
            *(this + 14) |= 0x20u;
            v48 = *(this + 5);
            if (!v48)
            {
              operator new();
            }

            v55 = 0;
            v49 = *(a2 + 1);
            if (v49 >= *(a2 + 2) || *v49 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v55))
              {
                return 0;
              }
            }

            else
            {
              v55 = *v49;
              *(a2 + 1) = v49 + 1;
            }

            v50 = *(a2 + 14);
            v51 = *(a2 + 15);
            *(a2 + 14) = v50 + 1;
            if (v50 >= v51)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(v48, a2, v52) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v53 = *(a2 + 14);
            v21 = __OFSUB__(v53, 1);
            v54 = v53 - 1;
            if (v54 < 0 == v21)
            {
              *(a2 + 14) = v54;
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

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        v13 = *(this + 14) | 1;
        *(this + 14) = v13;
        if (v12 < v9 && *v12 == 18)
        {
          *(a2 + 1) = v12 + 1;
          goto LABEL_34;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_26;
      }

      v13 = *(this + 14);
LABEL_34:
      *(this + 14) = v13 | 2;
      v15 = *(this + 1);
      if (!v15)
      {
        operator new();
      }

      v55 = 0;
      v16 = *(a2 + 1);
      if (v16 >= *(a2 + 2) || *v16 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v55))
        {
          return 0;
        }
      }

      else
      {
        v55 = *v16;
        *(a2 + 1) = v16 + 1;
      }

      v17 = *(a2 + 14);
      v18 = *(a2 + 15);
      *(a2 + 14) = v17 + 1;
      if (v17 >= v18)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::MergePartialFromCodedStream(v15, a2, v19) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v20 = *(a2 + 14);
      v21 = __OFSUB__(v20, 1);
      v22 = v20 - 1;
      if (v22 < 0 == v21)
      {
        *(a2 + 14) = v22;
      }

      v23 = *(a2 + 1);
      if (v23 < *(a2 + 2) && *v23 == 26)
      {
        *(a2 + 1) = v23 + 1;
LABEL_48:
        *(this + 14) |= 4u;
        v24 = *(this + 2);
        if (!v24)
        {
          operator new();
        }

        v55 = 0;
        v25 = *(a2 + 1);
        if (v25 >= *(a2 + 2) || *v25 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v55))
          {
            return 0;
          }
        }

        else
        {
          v55 = *v25;
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
        if (!CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(v24, a2, v28) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v29 = *(a2 + 14);
        v21 = __OFSUB__(v29, 1);
        v30 = v29 - 1;
        if (v30 < 0 == v21)
        {
          *(a2 + 14) = v30;
        }

        v31 = *(a2 + 1);
        if (v31 < *(a2 + 2) && *v31 == 34)
        {
          *(a2 + 1) = v31 + 1;
LABEL_62:
          *(this + 14) |= 8u;
          v32 = *(this + 3);
          if (!v32)
          {
            operator new();
          }

          v55 = 0;
          v33 = *(a2 + 1);
          if (v33 >= *(a2 + 2) || *v33 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v55))
            {
              return 0;
            }
          }

          else
          {
            v55 = *v33;
            *(a2 + 1) = v33 + 1;
          }

          v34 = *(a2 + 14);
          v35 = *(a2 + 15);
          *(a2 + 14) = v34 + 1;
          if (v34 >= v35)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(v32, a2, v36) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v37 = *(a2 + 14);
          v21 = __OFSUB__(v37, 1);
          v38 = v37 - 1;
          if (v38 < 0 == v21)
          {
            *(a2 + 14) = v38;
          }

          v39 = *(a2 + 1);
          if (v39 < *(a2 + 2) && *v39 == 42)
          {
            *(a2 + 1) = v39 + 1;
            goto LABEL_76;
          }
        }
      }
    }

    if (v7 == 3 && v8 == 2)
    {
      goto LABEL_48;
    }

LABEL_26:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 == 3)
      {
        if (v8 == 1)
        {
          goto LABEL_28;
        }

        goto LABEL_16;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
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

      *(this + 9) |= 1u;
      if (v12 < v9 && *v12 == 17)
      {
        *(a2 + 1) = v12 + 1;
LABEL_24:
        v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v15) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v15;
        *(this + 9) |= 2u;
        v14 = *(a2 + 1);
        if (v14 < *(a2 + 2) && *v14 == 25)
        {
          *(a2 + 1) = v14 + 1;
LABEL_28:
          v15 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v15) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v15;
          *(this + 9) |= 4u;
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

    if (v8 == 1)
    {
      goto LABEL_24;
    }

LABEL_16:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
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
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v7 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_20;
            }

            v11 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v11 >= v10 || (v12 = *v11, v12 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
              if (!result)
              {
                return result;
              }

              v13 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 8) = v12;
              v13 = v11 + 1;
              *(a2 + 1) = v13;
            }

            v9 = *(this + 10) | 1;
            *(this + 10) = v9;
            if (v13 < v10 && *v13 == 18)
            {
              *(a2 + 1) = v13 + 1;
              goto LABEL_28;
            }
          }

          else
          {
            if (v7 != 2 || v8 != 2)
            {
              goto LABEL_20;
            }

            v9 = *(this + 10);
LABEL_28:
            *(this + 10) = v9 | 2;
            v15 = *(this + 1);
            if (!v15)
            {
              operator new();
            }

            v39 = 0;
            v16 = *(a2 + 1);
            if (v16 >= *(a2 + 2) || *v16 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39))
              {
                return 0;
              }
            }

            else
            {
              v39 = *v16;
              *(a2 + 1) = v16 + 1;
            }

            v17 = *(a2 + 14);
            v18 = *(a2 + 15);
            *(a2 + 14) = v17 + 1;
            if (v17 >= v18)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::MergePartialFromCodedStream(v15, a2, v19) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v20 = *(a2 + 14);
            v21 = __OFSUB__(v20, 1);
            v22 = v20 - 1;
            if (v22 < 0 == v21)
            {
              *(a2 + 14) = v22;
            }

            v23 = *(a2 + 1);
            if (v23 < *(a2 + 2) && *v23 == 26)
            {
              *(a2 + 1) = v23 + 1;
              goto LABEL_42;
            }
          }
        }

        if (v7 != 3)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_20;
        }

LABEL_42:
        *(this + 10) |= 4u;
        v24 = *(this + 2);
        if (!v24)
        {
          operator new();
        }

        v40 = 0;
        v25 = *(a2 + 1);
        if (v25 >= *(a2 + 2) || *v25 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40))
          {
            return 0;
          }
        }

        else
        {
          v40 = *v25;
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
        if (!CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(v24, a2, v28) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v29 = *(a2 + 14);
        v21 = __OFSUB__(v29, 1);
        v30 = v29 - 1;
        if (v30 < 0 == v21)
        {
          *(a2 + 14) = v30;
        }

        v31 = *(a2 + 1);
        if (v31 < *(a2 + 2) && *v31 == 34)
        {
          *(a2 + 1) = v31 + 1;
          goto LABEL_56;
        }
      }

      if (v7 != 4 || v8 != 2)
      {
        break;
      }

LABEL_56:
      *(this + 10) |= 8u;
      v32 = *(this + 3);
      if (!v32)
      {
        operator new();
      }

      v41 = 0;
      v33 = *(a2 + 1);
      if (v33 >= *(a2 + 2) || *v33 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v41))
        {
          return 0;
        }
      }

      else
      {
        v41 = *v33;
        *(a2 + 1) = v33 + 1;
      }

      v34 = *(a2 + 14);
      v35 = *(a2 + 15);
      *(a2 + 14) = v34 + 1;
      if (v34 >= v35)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(v32, a2, v36) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v37 = *(a2 + 14);
      v21 = __OFSUB__(v37, 1);
      v38 = v37 - 1;
      if (v38 < 0 == v21)
      {
        *(a2 + 14) = v38;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
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
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      if ((TagFallback & 7) == 0)
      {
        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_28;
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

    if (TagFallback >> 3 != 1 || v7 != 2)
    {
      goto LABEL_15;
    }

    *(this + 6) |= 1u;
    v8 = *(this + 1);
    if (!v8)
    {
      operator new();
    }

    v22 = 0;
    v9 = *(a2 + 1);
    if (v9 >= *(a2 + 2) || *v9 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22))
      {
        return 0;
      }
    }

    else
    {
      v22 = *v9;
      *(a2 + 1) = v9 + 1;
    }

    v12 = *(a2 + 14);
    v13 = *(a2 + 15);
    *(a2 + 14) = v12 + 1;
    if (v12 >= v13)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(v8, a2, v14) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v15 = *(a2 + 14);
    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (v17 < 0 == v16)
    {
      *(a2 + 14) = v17;
    }

    v18 = *(a2 + 1);
    v10 = *(a2 + 2);
    if (v18 < v10 && *v18 == 16)
    {
      v11 = v18 + 1;
      *(a2 + 1) = v11;
LABEL_28:
      if (v11 >= v10 || (v19 = *v11, v19 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v20 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v19;
        v20 = v11 + 1;
        *(a2 + 1) = v20;
      }

      *(this + 6) |= 2u;
      if (v20 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 4)
        {
          break;
        }

        if (TagFallback >> 3 > 2)
        {
          if (v7 != 3)
          {
            if (v7 != 4 || v8 != 5)
            {
              goto LABEL_37;
            }

            goto LABEL_53;
          }

          if (v8 != 5)
          {
            goto LABEL_37;
          }

LABEL_49:
          v21 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v21;
          *(this + 13) |= 4u;
          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 37)
          {
            *(a2 + 1) = v15 + 1;
LABEL_53:
            v21 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
            {
              return 0;
            }

            *(this + 6) = v21;
            *(this + 13) |= 8u;
            v16 = *(a2 + 1);
            if (v16 < *(a2 + 2) && *v16 == 45)
            {
              *(a2 + 1) = v16 + 1;
LABEL_57:
              v21 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
              {
                return 0;
              }

              *(this + 7) = v21;
              *(this + 13) |= 0x10u;
              v17 = *(a2 + 1);
              if (v17 < *(a2 + 2) && *v17 == 53)
              {
                *(a2 + 1) = v17 + 1;
LABEL_61:
                v21 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
                {
                  return 0;
                }

                *(this + 8) = v21;
                *(this + 13) |= 0x20u;
                v18 = *(a2 + 1);
                if (v18 < *(a2 + 2) && *v18 == 61)
                {
                  *(a2 + 1) = v18 + 1;
LABEL_65:
                  v21 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
                  {
                    return 0;
                  }

                  *(this + 9) = v21;
                  *(this + 13) |= 0x40u;
                  v19 = *(a2 + 1);
                  if (v19 < *(a2 + 2) && *v19 == 69)
                  {
                    *(a2 + 1) = v19 + 1;
                    goto LABEL_69;
                  }
                }
              }
            }
          }
        }

        else
        {
          if (v7 != 1)
          {
            if (v7 != 2 || v8 != 5)
            {
              goto LABEL_37;
            }

            goto LABEL_45;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_37;
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

          *(this + 13) |= 1u;
          if (v12 < v9 && *v12 == 21)
          {
            *(a2 + 1) = v12 + 1;
LABEL_45:
            v21 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
            {
              return 0;
            }

            *(this + 4) = v21;
            *(this + 13) |= 2u;
            v14 = *(a2 + 1);
            if (v14 < *(a2 + 2) && *v14 == 29)
            {
              *(a2 + 1) = v14 + 1;
              goto LABEL_49;
            }
          }
        }
      }

      if (TagFallback >> 3 <= 6)
      {
        break;
      }

      if (v7 == 7)
      {
        if (v8 != 5)
        {
          goto LABEL_37;
        }

        goto LABEL_65;
      }

      if (v7 == 8)
      {
        if (v8 != 5)
        {
          goto LABEL_37;
        }

LABEL_69:
        v21 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
        {
          return 0;
        }

        *(this + 10) = v21;
        *(this + 13) |= 0x80u;
        v20 = *(a2 + 1);
        if (v20 < *(a2 + 2) && *v20 == 77)
        {
          *(a2 + 1) = v20 + 1;
          goto LABEL_73;
        }
      }

      else
      {
        if (v7 != 9 || v8 != 5)
        {
          goto LABEL_37;
        }

LABEL_73:
        v21 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
        {
          return 0;
        }

        *(this + 11) = v21;
        *(this + 13) |= 0x100u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5)
    {
      if (v8 != 5)
      {
        goto LABEL_37;
      }

      goto LABEL_57;
    }

    if (v7 == 6 && v8 == 5)
    {
      goto LABEL_61;
    }

LABEL_37:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t raven::ConvertProtobufToGnssMeasDataEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *a2, raven::GnssMeasurementDataEvent *a3, int8x16_t a4, int8x16_t a5)
{
  v7 = *(this + 33);
  a4.i64[0] = *(this + 10);
  a5.i64[0] = 0;
  if ((v7 & 0x20) == 0)
  {
    *a4.i64 = 0.0;
  }

  if ((v7 & 0x40) != 0 && *a4.i64 > 0.0 && (v10 = *(this + 11), v10 > 0.0))
  {
    v194 = 0uLL;
    CNTimeSpan::SetTimeSpan(&v194, 0, a4, a5);
    *(a2 + 8) = v194;
    *(a2 + 13) = v10;
  }

  else
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }

    v8 = *(this + 1);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 8);
    }

    if ((*(v8 + 36) & 4) == 0)
    {
LABEL_8:
      LOWORD(v194) = 12;
      v210[0] = 3;
      cnprint::CNPrinter::Print(&v194, v210, "MRCC mach continuous time not present", *a4.i64);
      return 0;
    }

    v12 = *(this + 1);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 8);
    }

    a4.i64[0] = *(v12 + 24);
    v194 = 0uLL;
    CNTimeSpan::SetTimeSpan(&v194, 0, a4, a5);
    *(a2 + 8) = v194;
    *(a2 + 13) = 0;
  }

  v191 = this;
  if ((*(this + 132) & 2) != 0)
  {
    v13 = *(this + 2);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v11);
      v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 16);
    }

    if ((*(v13 + 44) & 1) == 0)
    {
      goto LABEL_48;
    }

    v14 = *(v13 + 8);
    if (!v14)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v11);
      v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::default_instance_ + 8);
    }

    v15 = *(v14 + 44);
    if (v15)
    {
      *(a2 + 14) = *(v14 + 8);
    }

    if ((v15 & 2) == 0)
    {
      goto LABEL_32;
    }

    v16 = *(v14 + 16);
    if (!v16)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v11);
      v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::Clock::default_instance_ + 16);
    }

    v17 = v16[8];
    if ((v17 & 4) != 0)
    {
      *(a2 + 32) = v16[4];
      if ((v17 & 2) == 0)
      {
LABEL_29:
        if ((v17 & 8) == 0)
        {
          goto LABEL_30;
        }

LABEL_443:
        *(a2 + 33) = v16[5];
        if (v17)
        {
LABEL_31:
          *(a2 + 30) = v16[2];
        }

LABEL_32:
        if ((*(v14 + 44) & 4) != 0)
        {
          v18 = *(v14 + 24);
          if (!v18)
          {
            CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v11);
            v18 = *(CoreNavigation::CLP::LogEntry::PrivateData::Clock::default_instance_ + 24);
          }

          v19 = *(v18 + 52);
          if (v19)
          {
            *(a2 + 17) = *(v18 + 8);
          }

          if ((v19 & 2) != 0)
          {
            *(a2 + 18) = *(v18 + 16);
          }
        }

        if ((*(v14 + 44) & 8) == 0)
        {
          goto LABEL_48;
        }

        v20 = *(v14 + 32);
        if (!v20)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v11);
          v20 = *(CoreNavigation::CLP::LogEntry::PrivateData::Clock::default_instance_ + 32);
        }

        v21 = *(v20 + 40);
        if ((v21 & 8) != 0)
        {
          *(a2 + 21) = *(v20 + 24);
          if ((v21 & 1) == 0)
          {
LABEL_44:
            if ((v21 & 0x10) == 0)
            {
              goto LABEL_45;
            }

            goto LABEL_447;
          }
        }

        else if ((v21 & 1) == 0)
        {
          goto LABEL_44;
        }

        *(a2 + 19) = *(v20 + 8);
        if ((v21 & 0x10) == 0)
        {
LABEL_45:
          if ((v21 & 4) == 0)
          {
            goto LABEL_46;
          }

LABEL_448:
          *(a2 + 41) = *(v20 + 20);
          if ((v21 & 2) != 0)
          {
LABEL_47:
            *(a2 + 40) = *(v20 + 16);
          }

LABEL_48:
          v22 = *(v13 + 24);
          if (v22)
          {
            v23 = *(v13 + 16);
            v24 = 0x147AE147AE147AELL;
            v25 = (a2 + 184);
            v192 = vdupq_n_s64(0x7FF8000000000000uLL);
            v189 = &v23[v22];
            while (1)
            {
              v26 = *v23;
              LODWORD(v194) = 0;
              WORD2(v194) = 32512;
              DWORD2(v194) = 0;
              WORD6(v194) = 0;
              v195 = -1;
              __p[0] = -1;
              __p[1] = -1;
              v197 = 0x7FF8000000000000;
              v198 = NAN;
              v199 = 0;
              v200 = v192;
              LOBYTE(v201[0]) = 0;
              *(v201 + 8) = v192;
              BYTE8(v201[1]) = 0;
              v202 = v192;
              LOWORD(v203) = 1;
              BYTE8(v203) = 0;
              LOBYTE(v204) = 0;
              BYTE8(v204) = 0;
              v205[0] = 0;
              *&v205[8] = v192;
              v206[0] = 1;
              *&v206[8] = 0;
              *&v206[16] = 2143289344;
              *&v206[20] = 0;
              v27 = *(v26 + 112);
              if (v27)
              {
                v28 = *(v26 + 8);
                if (!v28)
                {
                  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
                  v28 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 8);
                }

                v11 = raven::ConvertProtobufToGnssId(v28, &v194);
                if (!v11)
                {
LABEL_439:
                  v187 = *&v206[8];
                  *&v206[8] = 0;
                  if (v187)
                  {
                    MEMORY[0x1D387ECA0](v187, 0x1000C4041240993);
                  }

                  return 0;
                }

                v27 = *(v26 + 112);
              }

              if ((v27 & 2) != 0)
              {
                v30 = *(v26 + 16);
                if (!v30)
                {
                  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v11);
                  v30 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 16);
                }

                v31 = *(v30 + 96);
                if (v31)
                {
                  *v210 = *(v30 + 88);
                  v11 = raven::ConvertProtobufToGnssBand(v210, &v194 + 8);
                  v31 = *(v30 + 96);
                }

                if ((v31 & 2) != 0)
                {
                  v45 = *(v30 + 8);
                  if (!v45)
                  {
                    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v11);
                    v45 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 8);
                  }

                  v46 = *(v45 + 16);
                  if ((v46 & 2) != 0)
                  {
                    BYTE10(v194) = *(v45 + 9);
                    if ((v46 & 4) != 0)
                    {
                      goto LABEL_171;
                    }

LABEL_122:
                    if ((v46 & 1) == 0)
                    {
                      goto LABEL_123;
                    }

LABEL_172:
                    BYTE9(v194) = *(v45 + 8);
                    if ((v46 & 8) == 0)
                    {
                      goto LABEL_56;
                    }
                  }

                  else
                  {
                    if ((v46 & 4) == 0)
                    {
                      goto LABEL_122;
                    }

LABEL_171:
                    BYTE11(v194) = *(v45 + 10);
                    if (v46)
                    {
                      goto LABEL_172;
                    }

LABEL_123:
                    if ((v46 & 8) == 0)
                    {
                      goto LABEL_56;
                    }
                  }

                  BYTE12(v194) = *(v45 + 11);
                  goto LABEL_56;
                }

                if ((v31 & 4) != 0)
                {
                  goto LABEL_439;
                }

                if ((v31 & 8) != 0)
                {
                  v67 = *(v30 + 24);
                  if (!v67)
                  {
                    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v11);
                    v67 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 24);
                  }

                  v68 = *(v67 + 16);
                  if ((v68 & 4) != 0)
                  {
                    BYTE11(v194) = *(v67 + 10);
                    if ((v68 & 2) == 0)
                    {
                      goto LABEL_178;
                    }
                  }

                  else if ((v68 & 2) == 0)
                  {
LABEL_178:
                    if ((v68 & 8) == 0)
                    {
                      goto LABEL_192;
                    }

LABEL_191:
                    BYTE12(v194) = *(v67 + 11);
                    goto LABEL_192;
                  }

                  BYTE10(v194) = *(v67 + 9);
                  if ((v68 & 8) == 0)
                  {
                    goto LABEL_192;
                  }

                  goto LABEL_191;
                }

                if ((v31 & 0x10) != 0)
                {
                  v69 = *(v30 + 32);
                  if (!v69)
                  {
                    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v11);
                    v69 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 32);
                  }

                  v70 = *(v69 + 20);
                  if (v70)
                  {
                    BYTE9(v194) = *(v69 + 8);
                    if ((v70 & 4) != 0)
                    {
                      goto LABEL_204;
                    }

LABEL_185:
                    if ((v70 & 8) == 0)
                    {
                      goto LABEL_186;
                    }

LABEL_205:
                    BYTE12(v194) = *(v69 + 11);
                    if ((v70 & 2) != 0)
                    {
                      goto LABEL_206;
                    }

LABEL_187:
                    if ((v70 & 0x10) == 0)
                    {
                      goto LABEL_56;
                    }
                  }

                  else
                  {
                    if ((v70 & 4) == 0)
                    {
                      goto LABEL_185;
                    }

LABEL_204:
                    BYTE11(v194) = *(v69 + 10);
                    if ((v70 & 8) != 0)
                    {
                      goto LABEL_205;
                    }

LABEL_186:
                    if ((v70 & 2) == 0)
                    {
                      goto LABEL_187;
                    }

LABEL_206:
                    BYTE10(v194) = *(v69 + 9);
                    if ((v70 & 0x10) == 0)
                    {
                      goto LABEL_56;
                    }
                  }

                  BYTE13(v194) = *(v69 + 12);
                  goto LABEL_56;
                }

                if ((v31 & 0x20) != 0)
                {
                  if (BYTE8(v194) == 5)
                  {
                    v75 = *(v30 + 40);
                    if (!v75)
                    {
                      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v11);
                      v75 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 40);
                    }

                    v76 = *(v75 + 16);
                    if (v76)
                    {
                      BYTE9(v194) = *(v75 + 8);
                      if ((v76 & 8) == 0)
                      {
                        goto LABEL_219;
                      }
                    }

                    else if ((v76 & 8) == 0)
                    {
LABEL_219:
                      if ((v76 & 4) == 0)
                      {
                        goto LABEL_56;
                      }

                      goto LABEL_233;
                    }

                    BYTE11(v194) = *(v75 + 11);
                    if ((v76 & 4) == 0)
                    {
                      goto LABEL_56;
                    }

LABEL_233:
                    v77 = *(v75 + 10);
LABEL_234:
                    BYTE10(v194) = v77;
                    goto LABEL_56;
                  }

                  if (BYTE8(v194) != 4)
                  {
                    goto LABEL_439;
                  }

                  v71 = *(v30 + 40);
                  if (!v71)
                  {
                    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v11);
                    v71 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 40);
                  }

                  v72 = *(v71 + 16);
                  if ((v72 & 2) != 0)
                  {
                    BYTE10(v194) = *(v71 + 9);
                    if (v72)
                    {
                      goto LABEL_236;
                    }

LABEL_200:
                    if ((v72 & 8) == 0)
                    {
                      goto LABEL_201;
                    }

LABEL_237:
                    BYTE12(v194) = *(v71 + 11);
                    if ((v72 & 4) == 0)
                    {
                      goto LABEL_56;
                    }
                  }

                  else
                  {
                    if ((v72 & 1) == 0)
                    {
                      goto LABEL_200;
                    }

LABEL_236:
                    BYTE9(v194) = *(v71 + 8);
                    if ((v72 & 8) != 0)
                    {
                      goto LABEL_237;
                    }

LABEL_201:
                    if ((v72 & 4) == 0)
                    {
                      goto LABEL_56;
                    }
                  }

                  BYTE11(v194) = *(v71 + 10);
                  goto LABEL_56;
                }

                if ((v31 & 0x40) != 0)
                {
                  v73 = *(v30 + 48);
                  if (!v73)
                  {
                    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v11);
                    v73 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 48);
                  }

                  v74 = *(v73 + 16);
                  if ((v74 & 4) != 0)
                  {
                    BYTE11(v194) = *(v73 + 10);
                    if ((v74 & 8) != 0)
                    {
                      goto LABEL_228;
                    }

LABEL_212:
                    if ((v74 & 1) == 0)
                    {
                      goto LABEL_213;
                    }

LABEL_229:
                    BYTE9(v194) = *(v73 + 8);
                    if ((v74 & 2) == 0)
                    {
                      goto LABEL_56;
                    }
                  }

                  else
                  {
                    if ((v74 & 8) == 0)
                    {
                      goto LABEL_212;
                    }

LABEL_228:
                    BYTE12(v194) = *(v73 + 11);
                    if (v74)
                    {
                      goto LABEL_229;
                    }

LABEL_213:
                    if ((v74 & 2) == 0)
                    {
                      goto LABEL_56;
                    }
                  }

                  v77 = *(v73 + 9);
                  goto LABEL_234;
                }

                if ((v31 & 0x80) != 0)
                {
                  v67 = *(v30 + 56);
                  if (!v67)
                  {
                    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v11);
                    v67 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 56);
                  }

                  v68 = *(v67 + 16);
                  if ((v68 & 8) != 0)
                  {
                    BYTE12(v194) = *(v67 + 11);
                    if ((v68 & 4) != 0)
                    {
                      goto LABEL_243;
                    }

LABEL_225:
                    if ((v68 & 2) != 0)
                    {
LABEL_244:
                      BYTE10(v194) = *(v67 + 9);
                    }
                  }

                  else
                  {
                    if ((v68 & 4) == 0)
                    {
                      goto LABEL_225;
                    }

LABEL_243:
                    BYTE11(v194) = *(v67 + 10);
                    if ((v68 & 2) != 0)
                    {
                      goto LABEL_244;
                    }
                  }

LABEL_192:
                  if (v68)
                  {
                    BYTE9(v194) = *(v67 + 8);
                  }

                  goto LABEL_56;
                }

                if ((v31 & 0x100) != 0)
                {
                  v78 = *(v30 + 64);
                  if (!v78)
                  {
                    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
                    v78 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 64);
                  }

                  v11 = sub_1D0C31EE8(v78, &v194 + 9);
                }

                else
                {
                  if ((v31 & 0x200) != 0)
                  {
                    v67 = *(v30 + 72);
                    if (!v67)
                    {
                      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v11);
                      v67 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 72);
                    }

                    v68 = *(v67 + 16);
                    if ((v68 & 2) != 0)
                    {
                      BYTE10(v194) = *(v67 + 9);
                    }

                    if ((v68 & 4) != 0)
                    {
                      BYTE11(v194) = *(v67 + 10);
                    }

                    goto LABEL_192;
                  }

                  if ((v31 & 0x400) == 0)
                  {
                    goto LABEL_439;
                  }

                  v32 = *(v30 + 80);
                  if (!v32)
                  {
                    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
                    v32 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 80);
                  }

                  v11 = sub_1D0DEA0B0(v32, &v194 + 9);
                }
              }

LABEL_56:
              v29 = *(v26 + 112);
              if ((v29 & 4) != 0)
              {
                v195 = *(v26 + 24);
                if ((v29 & 8) == 0)
                {
LABEL_58:
                  if ((v29 & 0x10) == 0)
                  {
                    goto LABEL_59;
                  }

                  goto LABEL_80;
                }
              }

              else if ((v29 & 8) == 0)
              {
                goto LABEL_58;
              }

              __p[0] = *(v26 + 32);
              if ((v29 & 0x10) == 0)
              {
LABEL_59:
                if ((v29 & 0x20) == 0)
                {
                  goto LABEL_91;
                }

                goto LABEL_81;
              }

LABEL_80:
              __p[1] = *(v26 + 40);
              if ((v29 & 0x20) == 0)
              {
                goto LABEL_91;
              }

LABEL_81:
              v33 = *(v26 + 48);
              if (!v33)
              {
                CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v11);
                v33 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 48);
              }

              v34 = *(v33 + 32);
              if (v34)
              {
                v197 = *(v33 + 8);
              }

              if ((v34 & 2) != 0)
              {
                v35 = *(v33 + 16);
                if (v35 < 1.17549435e-38 || v35 > 3.40282347e38)
                {
                  goto LABEL_439;
                }

                v36 = v35;
                v198 = v36;
              }

              if ((v34 & 4) != 0)
              {
                v199 = *(v33 + 24);
              }

LABEL_91:
              if ((*(v26 + 112) & 0x40) != 0)
              {
                v37 = *(v26 + 56);
                if (!v37)
                {
                  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v11);
                  v37 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 56);
                }

                v38 = *(v37 + 32);
                if ((~v38 & 3) != 0)
                {
                  goto LABEL_439;
                }

                v200 = *(v37 + 8);
                if ((v38 & 4) != 0)
                {
                  LOBYTE(v201[0]) = *(v37 + 24);
                }
              }

              if ((*(v26 + 113) & 8) != 0)
              {
                v39 = *(v26 + 88);
                if (!v39)
                {
                  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v11);
                  v39 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 88);
                }

                v40 = *(v39 + 32);
                if ((~v40 & 3) != 0)
                {
                  goto LABEL_439;
                }

                *(v201 + 8) = *(v39 + 8);
                if ((v40 & 4) != 0)
                {
                  BYTE8(v201[1]) = *(v39 + 24);
                }
              }

              if ((*(v26 + 113) & 0x20) != 0)
              {
                v41 = *(v26 + 96);
                if (!v41)
                {
                  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v11);
                  v41 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 96);
                }

                v42 = *(v41 + 32);
                if ((~v42 & 7) != 0)
                {
                  goto LABEL_439;
                }

                v202 = *(v41 + 8);
                LOBYTE(v203) = *(v41 + 24);
                if ((v42 & 8) != 0)
                {
                  BYTE1(v203) = *(v41 + 25);
                }
              }

              if ((*(v26 + 112) & 0x80) != 0)
              {
                v43 = *(v26 + 64);
                if (!v43)
                {
                  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v11);
                  v43 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 64);
                }

                v44 = *(v43 + 48);
                if ((v44 & 0x10) != 0)
                {
                  v206[0] = *(v43 + 40);
                  if ((v44 & 2) != 0)
                  {
                    goto LABEL_126;
                  }

LABEL_114:
                  if ((v44 & 1) == 0)
                  {
                    goto LABEL_115;
                  }

LABEL_127:
                  *(&v203 + 1) = *(v43 + 8);
                  LOBYTE(v204) = 1;
                  v44 = *(v43 + 48);
                  if ((v44 & 4) != 0)
                  {
                    goto LABEL_128;
                  }

LABEL_116:
                  if ((v44 & 8) == 0)
                  {
                    goto LABEL_131;
                  }
                }

                else
                {
                  if ((v44 & 2) == 0)
                  {
                    goto LABEL_114;
                  }

LABEL_126:
                  *(&v204 + 1) = *(v43 + 16);
                  v205[0] = 1;
                  v44 = *(v43 + 48);
                  if (v44)
                  {
                    goto LABEL_127;
                  }

LABEL_115:
                  if ((v44 & 4) == 0)
                  {
                    goto LABEL_116;
                  }

LABEL_128:
                  *&v205[8] = *(v43 + 24);
                  if ((v44 & 8) == 0)
                  {
                    goto LABEL_131;
                  }
                }

                if (*(v43 + 32) < 1.0e10)
                {
                  *&v205[16] = *(v43 + 32);
                }
              }

LABEL_131:
              if (*(v26 + 113))
              {
                operator new();
              }

              v47 = *(v26 + 112);
              if ((v47 & 0x200) != 0)
              {
                *&v206[16] = *(v26 + 80);
                if ((v47 & 0x400) == 0)
                {
LABEL_135:
                  if ((v47 & 0x1000) == 0)
                  {
                    goto LABEL_136;
                  }

                  goto LABEL_144;
                }
              }

              else if ((v47 & 0x400) == 0)
              {
                goto LABEL_135;
              }

              v49 = *(v26 + 84);
              if (v49 == 4)
              {
                v50 = 2;
              }

              else
              {
                v50 = v49 == 3;
              }

              v206[20] = v50;
              if ((v47 & 0x1000) == 0)
              {
LABEL_136:
                v48 = (v200.i64[1] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && *&v200.i64[1] < 10000.0 || (LODWORD(v198) & 0x7FFFFFFFu) <= 0x7F7FFFFF && v198 < 90000.0;
                goto LABEL_145;
              }

LABEL_144:
              v48 = *(v26 + 104);
LABEL_145:
              v206[21] = v48;
              v52 = *(a2 + 24);
              v51 = *(a2 + 25);
              if (v52 >= v51)
              {
                v54 = 0x8F5C28F5C28F5C29 * ((v52 - *v25) >> 3);
                v55 = v54 + 1;
                if (v54 + 1 > v24)
                {
                  sub_1D0C5663C();
                }

                v56 = 0x8F5C28F5C28F5C29 * ((v51 - *v25) >> 3);
                if (2 * v56 > v55)
                {
                  v55 = 2 * v56;
                }

                if (v56 >= 0xA3D70A3D70A3D7)
                {
                  v57 = v24;
                }

                else
                {
                  v57 = v55;
                }

                v211 = a2 + 184;
                if (v57)
                {
                  sub_1D0C31C98(a2 + 184, v57);
                }

                v58 = v24;
                *v210 = 0;
                *&v210[8] = 200 * v54;
                *&v210[16] = 200 * v54;
                *&v210[24] = 0;
                sub_1D0C31D68(200 * v54, &v194);
                *&v210[16] += 200;
                v59 = *(a2 + 23);
                v60 = *(a2 + 24);
                v212[0] = a2 + 184;
                v212[1] = &v214;
                v212[2] = &v215;
                v213 = 0;
                v61 = v59;
                v62 = *&v210[8] + v59 - v60;
                v214 = v62;
                v215 = v62;
                v63 = v62;
                if (v59 == v60)
                {
                  v213 = 1;
                }

                else
                {
                  do
                  {
                    sub_1D0C31D68(v63, v61);
                    v61 += 200;
                    v63 = v215 + 200;
                    v215 += 200;
                  }

                  while (v61 != v60);
                  v213 = 1;
                  do
                  {
                    v64 = *(v59 + 184);
                    *(v59 + 184) = 0;
                    if (v64)
                    {
                      MEMORY[0x1D387ECA0](v64, 0x1000C4041240993);
                    }

                    v59 += 200;
                  }

                  while (v59 != v60);
                }

                sub_1D0C31D30(v212);
                v65 = *(a2 + 23);
                *(a2 + 23) = v62;
                v66 = *(a2 + 25);
                v188 = *&v210[16];
                *(a2 + 12) = *&v210[16];
                *&v210[16] = v65;
                *&v210[24] = v66;
                *v210 = v65;
                *&v210[8] = v65;
                sub_1D0C31E64(v210);
                v53 = v188;
                v24 = v58;
              }

              else
              {
                sub_1D0C31D68(*(a2 + 24), &v194);
                v53 = v52 + 200;
                *(a2 + 24) = v52 + 200;
              }

              *(a2 + 24) = v53;
              v11 = *&v206[8];
              *&v206[8] = 0;
              if (v11)
              {
                v11 = MEMORY[0x1D387ECA0](v11, 0x1000C4041240993);
              }

              if (++v23 == v189)
              {
                goto LABEL_251;
              }
            }
          }

          goto LABEL_251;
        }

LABEL_447:
        *(a2 + 44) = *(v20 + 32);
        if ((v21 & 4) == 0)
        {
LABEL_46:
          if ((v21 & 2) == 0)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        }

        goto LABEL_448;
      }
    }

    else if ((v17 & 2) == 0)
    {
      goto LABEL_29;
    }

    *(a2 + 31) = v16[3];
    if ((v17 & 8) == 0)
    {
LABEL_30:
      if ((v17 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    goto LABEL_443;
  }

LABEL_251:
  if ((*(v191 + 132) & 0x80) != 0)
  {
    operator new();
  }

  v79 = *(v191 + 8);
  if (!v79)
  {
LABEL_407:
    v169 = (a2 + 232);
    v170 = *(v191 + 14);
    if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 31) - *(a2 + 29)) >> 3) < v170)
    {
      if ((v170 & 0x80000000) == 0)
      {
        sub_1D0C32158(a2 + 232, v170);
      }

LABEL_458:
      sub_1D0C5663C();
    }

    v171 = *(v191 + 14);
    if (v171)
    {
      v172 = *(v191 + 6);
      v173 = *(a2 + 30);
      v174 = 8 * v171;
      do
      {
        v175 = *v172;
        *v210 = *(*v172 + 16);
        v11 = raven::ConvertProtobufToGnssBand(v210, &v194);
        *(&v194 + 1) = *(v175 + 8);
        LODWORD(v195) = *(v175 + 20);
        v176 = *(a2 + 31);
        if (v173 >= v176)
        {
          v178 = 0xAAAAAAAAAAAAAAABLL * ((v173 - *v169) >> 3);
          v179 = v178 + 1;
          if (v178 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_458;
          }

          v180 = 0xAAAAAAAAAAAAAAABLL * ((v176 - *v169) >> 3);
          if (2 * v180 > v179)
          {
            v179 = 2 * v180;
          }

          if (v180 >= 0x555555555555555)
          {
            v181 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v181 = v179;
          }

          if (v181)
          {
            sub_1D0C32158(a2 + 232, v181);
          }

          v182 = 8 * ((v173 - *v169) >> 3);
          *v182 = v194;
          *(v182 + 16) = v195;
          v173 = 24 * v178 + 24;
          v183 = *(a2 + 29);
          v184 = *(a2 + 30) - v183;
          v185 = 24 * v178 - v184;
          memcpy((v182 - v184), v183, v184);
          v11 = *(a2 + 29);
          *(a2 + 29) = v185;
          *(a2 + 30) = v173;
          *(a2 + 31) = 0;
          if (v11)
          {
            operator delete(v11);
          }
        }

        else
        {
          v177 = v194;
          *(v173 + 16) = v195;
          *v173 = v177;
          v173 += 24;
        }

        *(a2 + 30) = v173;
        ++v172;
        v174 -= 8;
      }

      while (v174);
    }

    if ((*(v191 + 132) & 0x10) != 0)
    {
      v186 = *(v191 + 9);
      if (!v186)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v11);
        v186 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 72);
      }

      if (*(v186 + 52))
      {
        operator new();
      }

      if ((*(v186 + 52) & 4) != 0)
      {
        operator new();
      }

      if ((*(v186 + 52) & 8) != 0)
      {
        operator new();
      }

      if ((*(v186 + 52) & 2) != 0)
      {
        operator new();
      }

      if ((*(v186 + 52) & 0x10) != 0)
      {
        operator new();
      }
    }

    return 1;
  }

  v80 = *(v191 + 3);
  v190 = &v80[v79];
  v193 = vdupq_n_s64(0x7FF8000000000000uLL);
  while (1)
  {
    v81 = *v80;
    LODWORD(v194) = 0;
    WORD2(v194) = 32512;
    *(&v194 + 1) = 0x7FF8000000000000;
    LOBYTE(v195) = 0;
    LOBYTE(__p[0]) = 0;
    LOBYTE(v198) = 0;
    v200.i8[0] = 0;
    v205[16] = 0;
    *v206 = v193;
    *&v206[16] = v193;
    *&v206[32] = 2143289344;
    *&v206[36] = 0;
    *&v206[44] = 0;
    v208 = 0;
    v207 = 0uLL;
    v209 = 0;
    v82 = *(v81 + 172);
    if (v82)
    {
      v83 = *(v81 + 8);
      if (!v83)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
        v83 = *(CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 8);
      }

      v11 = raven::ConvertProtobufToGnssId(v83, &v194);
      if (!v11)
      {
        goto LABEL_452;
      }

      v82 = *(v81 + 172);
    }

    if ((v82 & 4) != 0)
    {
      v84 = *(v81 + 56) - 1;
      if (v84 > 5)
      {
        goto LABEL_452;
      }

      LOBYTE(v195) = 0x30404020100uLL >> (8 * v84);
    }

    v85 = *(v81 + 32);
    if (v85 < 1)
    {
      v87 = 0.0;
      if ((v82 & 2) == 0)
      {
        goto LABEL_452;
      }
    }

    else
    {
      if (LOBYTE(v198) == 1)
      {
        v11 = __p[0];
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      __p[1] = 0;
      v197 = 0;
      __p[0] = 0;
      LOBYTE(v198) = 1;
      v86 = *(v81 + 32);
      if (v86)
      {
        if ((v86 & 0x80000000) == 0)
        {
          sub_1D0C31F40(__p, v86);
        }

        sub_1D0C5663C();
      }

      v87 = *__p[0];
      v88 = (__p[1] - __p[0]) >> 5;
      if (v88 >= 2)
      {
        v89 = (__p[0] + 32);
        for (i = 1; i != v88; ++i)
        {
          v91 = *v89;
          v89 += 4;
          v87 = v87 + (v91 - v87) / i;
        }
      }

      v82 = *(v81 + 172);
      if ((v82 & 2) == 0)
      {
        goto LABEL_281;
      }
    }

    if ((*(v81 + 16) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v87 = *(v81 + 16);
    }

    if (v85 <= 0 && (*(v81 + 16) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      goto LABEL_452;
    }

LABEL_281:
    *(&v194 + 1) = v87;
    if ((v82 & 0x8000) == 0)
    {
      goto LABEL_304;
    }

    v92 = *(v81 + 128);
    if (!v92)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v11);
      v92 = *(CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 128);
    }

    v200 = v193;
    memset(v201, 0, sizeof(v201));
    v202 = 0u;
    v203 = 0u;
    v204 = 0u;
    *v205 = 0u;
    v205[16] = 1;
    v200 = *(v92 + 8);
    v93 = *(v92 + 32);
    v94 = *(v92 + 48);
    v95 = *(v92 + 64);
    if (v93 != 4 || v94 != 4)
    {
      goto LABEL_451;
    }

    if (v95 != 4)
    {
      break;
    }

    v96 = *(v92 + 24);
    v97 = v96[1];
    v201[0] = *v96;
    v201[1] = v97;
    v98 = *(v92 + 48);
    if (v98 <= 0)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v210);
      v98 = *(v92 + 48);
    }

    v99 = *(v92 + 40);
    v100 = *v99;
    if (v98 <= 1)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v210);
      v99 = *(v92 + 40);
      v98 = *(v92 + 48);
    }

    v101 = v99[1];
    if (v98 <= 2)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v210);
      v98 = *(v92 + 48);
      v99 = *(v92 + 40);
    }

    v102 = v99[2];
    if (v98 <= 3)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v210);
      v99 = *(v92 + 40);
    }

    v103 = v99[3];
    v202.i64[0] = v100;
    v202.i64[1] = v101;
    *&v203 = v102;
    *(&v203 + 1) = v103;
    v104 = *(v92 + 64);
    if (v104 <= 0)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v210);
      v104 = *(v92 + 64);
    }

    v105 = *(v92 + 56);
    v106 = *v105;
    if (v104 <= 1)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v210);
      v105 = *(v92 + 56);
      v104 = *(v92 + 64);
    }

    v107 = v105[1];
    if (v104 <= 2)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v210);
      v104 = *(v92 + 64);
      v105 = *(v92 + 56);
    }

    v108 = v105[2];
    if (v104 <= 3)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v210);
      v105 = *(v92 + 56);
    }

    v109 = v105[3];
    *&v204 = v106;
    *(&v204 + 1) = v107;
    *v205 = v108;
    *&v205[8] = v109;
    v82 = *(v81 + 172);
LABEL_304:
    *v206 = *(v81 + 48);
    *&v206[8] = *(v81 + 64);
    if ((v82 & 0x200000) == 0 || (v110 = *(v81 + 152), (v110 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000))
    {
      v110 = 0;
    }

    *&v206[24] = v110;
    v111 = *(v81 + 60);
    if (COERCE__INT64(fabs(v111)) >= 0x7FF0000000000000)
    {
      *v210 = 12;
      LOBYTE(v212[0]) = 4;
      cnprint::CNPrinter::Print(v210, v212, "NaN range_accuracy_position_m");
      v111 = 0.0;
    }

    v112 = *(v81 + 80);
    if (COERCE__INT64(fabs(v112)) >= 0x7FF0000000000000)
    {
      *v210 = 12;
      LOBYTE(v212[0]) = 4;
      cnprint::CNPrinter::Print(v210, v212, "NaN range_accuracy_clock_ns");
      v112 = 0.0;
    }

    v113 = hypot(v111, v112 * 0.299792458);
    *&v206[32] = v113;
    v114 = *(v81 + 172);
    if ((v114 & 0x200) != 0)
    {
      v115 = *(v81 + 84) - 1;
      if (v115 > 3)
      {
        goto LABEL_452;
      }

      v206[36] = 0x2010000u >> (8 * v115);
    }

    if ((v114 & 0x10000) != 0)
    {
      v116 = *(v81 + 136) - 1;
      if (v116 > 3)
      {
        goto LABEL_452;
      }

      v206[37] = 0x2010000u >> (8 * v116);
    }

    if ((v114 & 0x400) != 0)
    {
      v117 = *(v81 + 88) - 1;
      if (v117 > 3)
      {
        goto LABEL_452;
      }

      v206[38] = 0x2010000u >> (8 * v117);
    }

    if ((v114 & 0x20000) != 0)
    {
      v118 = *(v81 + 140) - 1;
      if (v118 > 3)
      {
        goto LABEL_452;
      }

      v206[39] = 0x2010000u >> (8 * v118);
    }

    if ((v114 & 0x800) != 0)
    {
      v119 = *(v81 + 92) - 1;
      if (v119 > 3)
      {
        goto LABEL_452;
      }

      v206[40] = 0x2010000u >> (8 * v119);
    }

    if ((v114 & 0x40000) != 0)
    {
      v120 = *(v81 + 144) - 1;
      if (v120 > 3)
      {
        goto LABEL_452;
      }

      v206[41] = 0x2010000u >> (8 * v120);
    }

    if ((v114 & 0x1000) != 0)
    {
      v121 = *(v81 + 96) - 1;
      if (v121 > 3)
      {
        goto LABEL_452;
      }

      v206[42] = 0x2010000u >> (8 * v121);
    }

    if ((v114 & 0x80000) != 0)
    {
      v122 = *(v81 + 148) - 1;
      if (v122 > 3)
      {
        goto LABEL_452;
      }

      v206[43] = 0x2010000u >> (8 * v122);
    }

    if ((v114 & 0x2000) != 0)
    {
      v123 = *(v81 + 100) - 1;
      if (v123 > 3)
      {
        goto LABEL_452;
      }

      v206[44] = 0x2010000u >> (8 * v123);
    }

    if ((v114 & 0x100000) != 0)
    {
      v124 = *(v81 + 160) - 1;
      if (v124 > 3)
      {
        goto LABEL_452;
      }

      v206[45] = 0x2010000u >> (8 * v124);
    }

    v125 = *(v81 + 112);
    if (0xCCCCCCCCCCCCCCCDLL * ((v208 - v207) >> 3) < v125)
    {
      if ((v125 & 0x80000000) == 0)
      {
        sub_1D0C31F88(&v207, v125);
      }

      sub_1D0C5663C();
    }

    v126 = *(v81 + 112);
    if (v126)
    {
      v127 = *(v81 + 104);
      v128 = 8 * v126;
      do
      {
        v129 = *v127;
        v210[0] = 0;
        *&v210[8] = v193;
        *&v210[24] = 0x7FF8000000000000;
        LOBYTE(v211) = 0;
        v130 = *(v129 + 44);
        if (v130)
        {
          LODWORD(v212[0]) = *(v129 + 24);
          v11 = raven::ConvertProtobufToGnssBand(v212, v210);
          v131 = *(v129 + 8);
          if (v131 >= 0 && ((v131 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (v131 - 1) <= 0xFFFFFFFFFFFFELL)
          {
            *&v210[8] = *(v129 + 8);
          }

          v134 = *(v129 + 16);
          if (v134 >= 0 && ((v134 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (v134 - 1) <= 0xFFFFFFFFFFFFELL)
          {
            *&v210[16] = *(v129 + 16);
          }

          *&v210[24] = *(v129 + 32);
          if ((v130 & 0x10) != 0)
          {
            v137 = *(v129 + 28);
            if (v137 == 1)
            {
              v138 = 1;
            }

            else
            {
              v138 = 2 * (v137 == 2);
            }

            LOBYTE(v211) = v138;
          }
        }

        v139 = *(&v207 + 1);
        if (*(&v207 + 1) >= v208)
        {
          v141 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v207 + 1) - v207) >> 3);
          v142 = v141 + 1;
          if (v141 + 1 > 0x666666666666666)
          {
            sub_1D0C5663C();
          }

          if (0x999999999999999ALL * ((v208 - v207) >> 3) > v142)
          {
            v142 = 0x999999999999999ALL * ((v208 - v207) >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v208 - v207) >> 3) >= 0x333333333333333)
          {
            v143 = 0x666666666666666;
          }

          else
          {
            v143 = v142;
          }

          if (v143)
          {
            sub_1D0C31F88(&v207, v143);
          }

          v144 = 8 * ((*(&v207 + 1) - v207) >> 3);
          *v144 = *v210;
          *(v144 + 16) = *&v210[16];
          *(v144 + 32) = v211;
          v140 = 40 * v141 + 40;
          v145 = 40 * v141 - (*(&v207 + 1) - v207);
          memcpy((v144 - (*(&v207 + 1) - v207)), v207, *(&v207 + 1) - v207);
          v11 = v207;
          *&v207 = v145;
          *(&v207 + 1) = v140;
          v208 = 0;
          if (v11)
          {
            operator delete(v11);
          }
        }

        else
        {
          **(&v207 + 1) = *v210;
          *(v139 + 16) = *&v210[16];
          *(v139 + 32) = v211;
          v140 = v139 + 40;
        }

        *(&v207 + 1) = v140;
        ++v127;
        v128 -= 8;
      }

      while (v128);
    }

    v146 = *(a2 + 27);
    v147 = *(a2 + 28);
    if (v146 >= v147)
    {
      v157 = *(a2 + 26);
      v158 = (v146 - v157) >> 8;
      v159 = v158 + 1;
      if ((v158 + 1) >> 56)
      {
        sub_1D0C5663C();
      }

      v160 = v147 - v157;
      if (v160 >> 7 > v159)
      {
        v159 = v160 >> 7;
      }

      if (v160 >= 0x7FFFFFFFFFFFFF00)
      {
        v161 = 0xFFFFFFFFFFFFFFLL;
      }

      else
      {
        v161 = v159;
      }

      if (v161)
      {
        sub_1D0C31FE0(a2 + 208, v161);
      }

      v162 = v158 << 8;
      sub_1D0C32028(v158 << 8, &v194);
      v163 = *(a2 + 26);
      v164 = *(a2 + 27);
      v165 = ((v158 << 8) + v163 - v164);
      if (v164 != v163)
      {
        v166 = v80;
        v167 = v162 + v163 - v164;
        v168 = *(a2 + 26);
        do
        {
          sub_1D0C32028(v167, v168);
          v168 += 16;
          v167 += 256;
        }

        while (v168 != v164);
        v80 = v166;
        do
        {
          sub_1D0C320F4(v163);
          v163 += 16;
        }

        while (v163 != v164);
        v163 = *(a2 + 26);
      }

      *(a2 + 26) = v165;
      *(a2 + 27) = v162 + 256;
      *(a2 + 28) = 0;
      if (v163)
      {
        operator delete(v163);
      }

      v11 = v207;
      *(a2 + 27) = v162 + 256;
      if (v11)
      {
        *(&v207 + 1) = v11;
        operator delete(v11);
      }
    }

    else
    {
      v148 = v194;
      *(v146 + 16) = v195;
      *v146 = v148;
      *(v146 + 24) = 0;
      *(v146 + 48) = 0;
      if (LOBYTE(v198) == 1)
      {
        *(v146 + 24) = 0;
        *(v146 + 32) = 0;
        *(v146 + 40) = 0;
        *(v146 + 24) = *__p;
        *(v146 + 40) = v197;
        __p[0] = 0;
        __p[1] = 0;
        v197 = 0;
        *(v146 + 48) = 1;
      }

      v149 = v200;
      v150 = v201[0];
      v151 = v201[1];
      *(v146 + 104) = v202;
      *(v146 + 88) = v151;
      *(v146 + 72) = v150;
      *(v146 + 56) = v149;
      v152 = v203;
      v153 = v204;
      v154 = *v205;
      *(v146 + 168) = *&v205[16];
      *(v146 + 152) = v154;
      *(v146 + 136) = v153;
      *(v146 + 120) = v152;
      v155 = *v206;
      v156 = *&v206[16];
      *(v146 + 206) = *&v206[30];
      *(v146 + 176) = v155;
      *(v146 + 192) = v156;
      *(v146 + 224) = 0;
      *(v146 + 232) = 0;
      *(v146 + 240) = 0;
      *(v146 + 224) = v207;
      *(v146 + 240) = v208;
      v207 = 0uLL;
      v208 = 0;
      *(v146 + 248) = v209;
      *(a2 + 27) = v146 + 256;
    }

    if (LOBYTE(v198) == 1)
    {
      v11 = __p[0];
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    if (++v80 == v190)
    {
      goto LABEL_407;
    }
  }

  v94 = 4;
LABEL_451:
  *v210 = 12;
  LOBYTE(v212[0]) = 4;
  cnprint::CNPrinter::Print(v210, v212, "invalid position coefficient size,%d,%d,%d", v93, v94, v95);
LABEL_452:
  if (v207)
  {
    *(&v207 + 1) = v207;
    operator delete(v207);
  }

  if (LOBYTE(v198) == 1 && __p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1D0C3166C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage((v21 - 232));
  sub_1D0DEA16C(va);
  _Unwind_Resume(a1);
}

void raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *a2, raven::GnssMeasurementDataEvent *a3, double a4, int8x16_t a5)
{
  v7 = 0uLL;
  v6 = &unk_1F4CEDFD0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0uLL;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = xmmword_1D0E87BD0;
  v17 = -1;
  v5.i64[0] = 0x3F0000003FLL;
  v5.i64[1] = 0x3F0000003FLL;
  v18 = vnegq_f32(v5);
  v19 = vdupq_n_s64(0x7FF8000000000000uLL);
  v20 = 0x8000000000000000;
  v21 = vneg_f32(0x3F0000003FLL);
  v22 = 0x7FF8000000000000;
  v23 = 2143289344;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  if (raven::ConvertProtobufToGnssMeasDataEvent(a2, &v6, a3, 0, a5))
  {
    operator new();
  }

  raven::GnssMeasurementDataEvent::~GnssMeasurementDataEvent(&v6);
}

void sub_1D0C31A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(v10 - 64);
  if (v12)
  {
    sub_1D0B7CAB8(v12);
  }

  sub_1D0B7CAB8(v9);
  raven::GnssMeasurementDataEvent::~GnssMeasurementDataEvent(&a9);
  _Unwind_Resume(a1);
}

uint64_t raven::ConvertProtobufToGnssId(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *(a1 + 16);
    if ((v4 - 1) > 0x3F || ((1 << (v4 - 1)) & 0x800000008000808BLL) == 0)
    {
      v4 = 0;
    }

    *a2 = v4;
  }

  if ((v3 & 2) == 0)
  {
    return 1;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(a1);
    v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::SvId::default_instance_ + 8);
  }

  v7 = *(v6 + 44);
  if (v7)
  {
    v9 = *(v6 + 16);
    goto LABEL_24;
  }

  if ((v7 & 0x10) != 0)
  {
    v9 = *(v6 + 28);
    goto LABEL_24;
  }

  if ((v7 & 0x20) != 0)
  {
    v9 = *(v6 + 32);
    goto LABEL_24;
  }

  if ((v7 & 2) != 0)
  {
    v10 = *(v6 + 8);
    if (!v10)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(a1);
      v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::default_instance_ + 8);
    }

    v11 = *(v10 + 24);
    if (v11)
    {
      v12 = *(v10 + 16);
      if (v12 != v12)
      {
        return 0;
      }

      *(a2 + 5) = v12;
      v11 = *(v10 + 24);
    }

    if ((v11 & 2) == 0)
    {
      return 1;
    }

    v13 = *(v10 + 8);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(a1);
      v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::default_instance_ + 8);
    }

    if ((*(v13 + 20) & 1) == 0)
    {
      return 1;
    }

    v14 = *(v10 + 8);
    if (!v14)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(a1);
      v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::default_instance_ + 8);
    }

    v9 = *(v14 + 8);
LABEL_24:
    if (v9 <= 0xFF)
    {
LABEL_26:
      *(a2 + 4) = v9;
      return 1;
    }

    return 0;
  }

  if ((v7 & 4) != 0)
  {
    v9 = *(v6 + 20);
    goto LABEL_24;
  }

  if ((v7 & 8) != 0)
  {
    v9 = *(v6 + 24);
    goto LABEL_24;
  }

  result = 0;
  if ((v7 & 0x40) != 0)
  {
    v9 = *(v6 + 36);
    if (v9 <= 0xFF)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t raven::ConvertProtobufToGnssBand(_DWORD *a1, _BYTE *a2)
{
  v2 = *a1 - 2;
  if (v2 > 0xA)
  {
    v3 = 0;
  }

  else
  {
    v3 = byte_1D0E9C950[v2];
  }

  *a2 = v3;
  return 1;
}

void sub_1D0C31C98(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x147AE147AE147AFLL)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t sub_1D0C31D30(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1D0DD048C(a1);
  }

  return a1;
}

uint64_t sub_1D0C31D68(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 8) = v2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  v4 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v4;
  v5 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v5;
  v6 = *(a2 + 128);
  v7 = *(a2 + 144);
  v8 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v7;
  *(a1 + 160) = v8;
  *(a1 + 128) = v6;
  if (*(a2 + 184))
  {
    operator new();
  }

  *(a1 + 184) = 0;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 196) = *(a2 + 196);
  return a1;
}

uint64_t sub_1D0C31E64(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 200;
    v4 = *(v2 - 16);
    *(v2 - 16) = 0;
    if (v4)
    {
      MEMORY[0x1D387ECA0](v4, 0x1000C4041240993);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 200;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1D0C31EE8(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 24);
  if ((v2 & 0x200) != 0)
  {
    a2[4] = *(result + 17);
    if ((v2 & 0x10) == 0)
    {
LABEL_3:
      if ((v2 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  a2[1] = *(result + 12);
  if ((v2 & 0x100) == 0)
  {
LABEL_4:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  a2[3] = *(result + 16);
  if ((v2 & 0x40) == 0)
  {
LABEL_5:
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_11:
    *a2 = *(result + 9);
    return result;
  }

LABEL_10:
  a2[2] = *(result + 14);
  if ((v2 & 2) != 0)
  {
    goto LABEL_11;
  }

  return result;
}

void sub_1D0C31F40(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1D0C54BE8();
}

void sub_1D0C31F88(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

void sub_1D0C31FE0(uint64_t a1, unint64_t a2)
{
  if (!HIBYTE(a2))
  {
    operator new();
  }

  sub_1D0C54BE8();
}

__n128 sub_1D0C32028(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v2;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a2 + 24) = 0uLL;
    *(a2 + 5) = 0;
    *(a1 + 48) = 1;
  }

  v3 = *(a2 + 56);
  v4 = *(a2 + 72);
  v5 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v5;
  *(a1 + 72) = v4;
  *(a1 + 56) = v3;
  v6 = *(a2 + 120);
  v7 = *(a2 + 136);
  v8 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 21);
  *(a1 + 152) = v8;
  *(a1 + 136) = v7;
  *(a1 + 120) = v6;
  v9 = a2[11];
  v10 = a2[12];
  *(a1 + 206) = *(a2 + 206);
  *(a1 + 176) = v9;
  *(a1 + 192) = v10;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0;
  result = a2[14];
  *(a1 + 224) = result;
  *(a1 + 240) = *(a2 + 30);
  a2[14] = 0uLL;
  *(a2 + 30) = 0;
  *(a1 + 248) = *(a2 + 62);
  return result;
}

void sub_1D0C320F4(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (v2)
  {
    *(a1 + 232) = v2;
    operator delete(v2);
  }

  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      *(a1 + 32) = v3;

      operator delete(v3);
    }
  }
}

void sub_1D0C32158(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

void *sub_1D0C321B0(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  a1[8] = *(a2 + 64);
  *(a1 + 2) = v3;
  *(a1 + 3) = v4;
  *(a1 + 1) = v2;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  v5 = *(a2 + 72);
  v6 = *(a2 + 80);
  if (v6 != v5)
  {
    v7 = 0x8F5C28F5C28F5C29 * ((v6 - v5) >> 3);
    if (v7 < 0x147AE147AE147AFLL)
    {
      sub_1D0C31C98((a1 + 9), v7);
    }

    sub_1D0C5663C();
  }

  a1[12] = 0;
  a1[13] = 0;
  a1[14] = 0;
  v8 = *(a2 + 96);
  v9 = *(a2 + 104);
  v10 = v9 - v8;
  if (v9 != v8)
  {
    if (!((v10 >> 8) >> 56))
    {
      sub_1D0C31FE0((a1 + 12), v10 >> 8);
    }

    sub_1D0C5663C();
  }

  a1[15] = 0;
  a1[16] = 0;
  a1[17] = 0;
  v12 = *(a2 + 120);
  v11 = *(a2 + 128);
  if (v11 != v12)
  {
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v12) >> 3);
    if (v13 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_1D0C32158((a1 + 15), v13);
    }

    sub_1D0C5663C();
  }

  if (*(a2 + 144))
  {
    operator new();
  }

  a1[18] = 0;
  if (*(a2 + 152))
  {
    operator new();
  }

  a1[19] = 0;
  if (*(a2 + 160))
  {
    operator new();
  }

  a1[20] = 0;
  if (*(a2 + 168))
  {
    operator new();
  }

  a1[21] = 0;
  if (*(a2 + 176))
  {
    operator new();
  }

  a1[22] = 0;
  a1[23] = *(a2 + 184);
  v14 = *(a2 + 192);
  a1[24] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1D0C325CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v8 = v5[21];
  v5[21] = 0;
  if (v8)
  {
    MEMORY[0x1D387ECA0](v8, 0x1000C4095D96C66, a3);
  }

  v9 = v5[20];
  v5[20] = 0;
  if (v9)
  {
    MEMORY[0x1D387ECA0](v9, 0x1000C4095D96C66, a3);
  }

  v10 = v5[19];
  v5[19] = 0;
  if (v10)
  {
    MEMORY[0x1D387ECA0](v10, 0x1000C40D315E998, a3);
  }

  v11 = v5[18];
  v5[18] = 0;
  if (v11)
  {
    MEMORY[0x1D387ECA0](v11, 0x1000C4079AA8B5ELL, a3);
  }

  v12 = *v6;
  if (*v6)
  {
    v5[16] = v12;
    operator delete(v12);
  }

  sub_1D0C48174(va);
  sub_1D0C48234(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1D0C32708(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_1D0C3279C(a1, a2);
  return a1;
}

void sub_1D0C32738(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0C32760(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_1D0C31F40(a1, a2);
  }

  sub_1D0C5663C();
}

uint64_t *sub_1D0C3279C(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_1D0C327F0(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 5);
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t *sub_1D0C327F0(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1D0C32760(result, a4);
  }

  return result;
}

void sub_1D0C32850(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0C3286C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_1D0C31F88(a1, a2);
  }

  sub_1D0C5663C();
}

uint64_t *sub_1D0C328B8(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1D0C3286C(result, a4);
  }

  return result;
}

void sub_1D0C32918(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0C32934(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 32);
      if (v5)
      {
        *(v3 - 24) = v5;
        operator delete(v5);
      }

      if (*(v3 - 208) == 1)
      {
        v6 = *(v3 - 232);
        if (v6)
        {
          *(v3 - 224) = v6;
          operator delete(v6);
        }
      }

      v3 -= 256;
    }
  }

  return a1;
}

void sub_1D0C329EC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  if (*(a3 + 8) == 1)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    LOWORD(v49) = 3;
    LOBYTE(v65[0]) = 5;
    cnprint::CNPrinter::Print(&v49, v65, "Attempted to access type of uninitialized GenericEvent.");
    v5 = MEMORY[0x1E69E54A8];
  }

  {
    v6 = *(a3 + 16);
    if (v6)
    {
      v7 = (*(*v6 + 16))(v6);
    }

    else
    {
      v7 = MEMORY[0x1E69E54A8];
    }

    v10 = (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v10 != (off_1F4CEF088 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v10, (off_1F4CEF088 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *&v49 = 0;
      std::bad_cast::bad_cast(&v49);
      *&v49 = &unk_1F4CE4880;
      sub_1D0DC7F8C(&v49);
    }

    v11 = *(a3 + 16);
    v24 = &unk_1F4CEDFD0;
    v13 = *(v11 + 32);
    v12 = *(v11 + 48);
    v25 = *(v11 + 16);
    v26 = v13;
    v27 = v12;
    v14 = *(v11 + 64);
    v15 = *(v11 + 80);
    v16 = *(v11 + 96);
    *&v30[16] = *(v11 + 112);
    v29 = v15;
    *v30 = v16;
    v28 = v14;
    sub_1D0C321B0(&v31, v11 + 120);
  }

  else
  {
    LOWORD(v65[0]) = 3;
    LOBYTE(__p[0]) = 5;
    if (*(a3 + 8) == 1)
    {
      v8 = *(a3 + 24);
    }

    else
    {
      LOWORD(v49) = 3;
      LOBYTE(v83[0]) = 5;
      cnprint::CNPrinter::Print(&v49, v83, "Attempted to access type of uninitialized GenericEvent.");
      v8 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(v65, __p, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEF088 & 0x7FFFFFFFFFFFFFFFLL));
    v26 = 0uLL;
    v29 = 0uLL;
    v36 = 0u;
    v25 = 0uLL;
    v24 = &unk_1F4CEDFD0;
    v27 = 0uLL;
    v28 = 0uLL;
    *v30 = 0;
    *&v30[8] = xmmword_1D0E87BD0;
    v31 = -1;
    v9.i64[0] = 0x3F0000003FLL;
    v9.i64[1] = 0x3F0000003FLL;
    v32 = vnegq_f32(v9);
    v33 = vdupq_n_s64(0x7FF8000000000000uLL);
    v34 = 0x8000000000000000;
    v35 = vneg_f32(0x3F0000003FLL);
    *&v36 = 0x7FF8000000000000;
    DWORD2(v36) = 2143289344;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
  }

  if (*(v4 + 224) == 1)
  {
    v49 = *(v4 + 112);
    raven::GnssMeasurementPreprocessor::UpdateCurrentFrameworkTime((v4 + 232), &v49);
    if (raven::GnssMeasurementPreprocessor::HandleEvent((v4 + 232), &v24) == 1)
    {
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v88 = 0;
      v89 = 0;
      v90 = 0;
      v91 = 0;
      memset(v92, 0, sizeof(v92));
      v93 = 0;
      v83[1] = 0;
      v83[2] = 0;
      v83[0] = &unk_1F4CEF598;
      v84 = 0;
      if (raven::GnssMeasurementPreprocessor::GetPreprocessedGnssMeasurements((v4 + 232), v83))
      {
        sub_1D0C4499C(v4, v83);
      }

      v65[2] = 0;
      v65[0] = &unk_1F4CEE9A8;
      v65[1] = 0;
      v66 = 0;
      v68 = 0;
      v67 = 0;
      v69 = 0;
      v71 = 0;
      v70 = 0;
      v72 = 0;
      v74 = 0;
      v73 = 0;
      v75 = 0x7FF8000000000000;
      v76 = 0;
      v77 = 0u;
      v78 = 0u;
      v79 = 0;
      v82 = 0;
      v80 = 0;
      v81 = 0;
      if (raven::GnssMeasurementPreprocessor::GetGpsUTCParametersEvent((v4 + 232), v65))
      {
        sub_1D0B9B7B4(v4, v65);
      }

      *(&v49 + 1) = 0;
      v50 = 0.0;
      *&v49 = &unk_1F4CEE030;
      LOBYTE(v51) = 0;
      *(&v51 + 1) = 0;
      *&v52 = 0;
      BYTE8(v52) = 0;
      v53 = 0uLL;
      LOBYTE(v54) = 0;
      *(&v54 + 1) = 0;
      v55 = 0;
      v56 = 0x7FF8000000000000;
      v57 = 0;
      v58 = 0;
      v59 = &unk_1F4CD5A50;
      v60 = 0u;
      v61 = 0u;
      v62 = xmmword_1D0E76640;
      v63 = xmmword_1D0E76650;
      v64 = 0;
      if (raven::GnssMeasurementPreprocessor::GetKlobucharParametersEvent((v4 + 232), &v49))
      {
        v18 = *(v4 + 112);
        v17 = *(v4 + 120);
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        *(&v49 + 1) = v18;
        v50 = v17;
        v55 = 0;
        v56 = 0x7FF8000000000000;
        v48 = 12;
        v47 = 2;
        sub_1D0B751F4(__p, "KlobucharParametersEvent");
        if (v46 >= 0)
        {
          v19 = __p;
        }

        else
        {
          v19 = __p[0];
        }

        cnprint::CNPrinter::Print(&v48, &v47, "t,%.3lf,RavenGnssPreprocessorActiveObject, Raising event - %s.", v18 + v17, v19);
        if (v46 < 0)
        {
          operator delete(__p[0]);
        }

        sub_1D0C47D0C(v4, &v49);
      }

      v83[0] = &unk_1F4CEF598;
      *&v49 = &v92[4];
      sub_1D0BBBD80(&v49);
    }

    else
    {
      LOWORD(v65[0]) = 12;
      LOBYTE(v83[0]) = 2;
      v20 = v24[2](&v24);
      v22 = v21;
      (v24[3])(&v49, &v24);
      if (v50 >= 0.0)
      {
        v23 = &v49;
      }

      else
      {
        v23 = v49;
      }

      cnprint::CNPrinter::Print(v65, v83, "t,%.3lf,RavenGnssPreprocessorActiveObject Failed to handle event - %s.", v22 + v20, v23);
      if (SHIBYTE(v50) < 0)
      {
        operator delete(v49);
      }
    }
  }

  raven::GnssMeasurementDataEvent::~GnssMeasurementDataEvent(&v24);
}

void sub_1D0C32FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, std::exception a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  *(v64 - 168) = v63;
  a58.__vftable = (v64 - 72);
  sub_1D0BBBD80(&a58);
  raven::GnssMeasurementDataEvent::~GnssMeasurementDataEvent(&a12);
  _Unwind_Resume(a1);
}

uint64_t raven::GnssMeasurementPreprocessor::HandleEvent(raven::GnssMeasurementPreprocessor *this, const raven::GnssMeasurementDataEvent *a2)
{
  LogLevel = cnprint::CNPrinter::GetLogLevel(this);
  if (LogLevel <= 1)
  {
    *v182 = 12;
    v165[0] = 1;
    cnprint::CNPrinter::Print(v182, v165, "#gmp,HandleEvent(GNSS),Received msmt data");
  }

  if (*this)
  {
    if (*(this + 2296) == 1)
    {
      v5 = *(a2 + 14);
      if (*(this + 282) == *(this + 288) + v5)
      {
        *v182 = 12;
        v165[0] = 4;
        cnprint::CNPrinter::Print(v182, v165, "#gmp,HandleEvent(GNSS),dropped due to repeated HW clock %llu", v5);
        return 15;
      }
    }

    *(this + 16) = 0;
    memset(&v182[8], 0, 112);
    *v182 = &unk_1F4CEF598;
    *(this + 2) = 0u;
    *(this + 3) = 0u;
    v7 = *&v182[40];
    v8 = *&v182[56];
    v9 = *&v182[72];
    *(this + 14) = *&v182[88];
    *(this + 5) = v8;
    *(this + 6) = v9;
    *(this + 4) = v7;
    if (this + 24 != v182)
    {
      sub_1D0BBD668(this + 15, 0, 0, 0);
    }

    *v182 = &unk_1F4CEF598;
    *v165 = &v182[96];
    sub_1D0BBBD80(v165);
    v12 = *(a2 + 37);
    if (v12 && *(v12 + 80) == 1)
    {
      v13 = *(this + 520);
      if ((v13 & 1) == 0)
      {
        *(v187 + 8) = 0u;
        *&v182[104] = 0;
        memset(&v182[8], 0, 88);
        *v182 = &unk_1F4CEE030;
        *&v182[40] = 0;
        v182[48] = 0;
        *&v182[96] = 0x7FF8000000000000;
        *&v182[112] = 0;
        v183 = &unk_1F4CD5A50;
        v184 = 0u;
        v185 = 0u;
        v186 = xmmword_1D0E76640;
        v187[0] = xmmword_1D0E76650;
        if (v13)
        {
          v14 = *&v182[56];
          v15 = *&v182[88];
          *(this + 392) = *&v182[72];
          *(this + 408) = v15;
          *(this + 424) = *&v182[104];
          v16 = *&v182[24];
          *(this + 328) = *&v182[8];
          *(this + 344) = v16;
          *(this + 360) = *&v182[40];
          *(this + 376) = v14;
          if ((this + 440) != &v183)
          {
            *(this + 28) = 0u;
            *(this + 29) = 0u;
            *(this + 30) = xmmword_1D0E76640;
            *(this + 31) = xmmword_1D0E76650;
            *(this + 512) = 0;
          }
        }

        else
        {
          *(this + 40) = &unk_1F4CEE030;
          v17 = *&v182[56];
          v18 = *&v182[88];
          *(this + 392) = *&v182[72];
          *(this + 408) = v18;
          *(this + 424) = *&v182[104];
          v19 = *&v182[24];
          *(this + 328) = *&v182[8];
          *(this + 344) = v19;
          *(this + 360) = *&v182[40];
          *(this + 376) = v17;
          *(this + 55) = &unk_1F4CD5A50;
          *(this + 28) = 0uLL;
          *(this + 29) = 0uLL;
          *(this + 30) = xmmword_1D0E76640;
          *(this + 31) = xmmword_1D0E76650;
          *(this + 512) = 0;
          *(this + 520) = 1;
        }
      }

      v20 = *(a2 + 24);
      *(this + 328) = *(a2 + 8);
      *(this + 344) = v20;
      v21 = *(a2 + 40);
      v22 = *(a2 + 56);
      v23 = *(a2 + 88);
      *(this + 392) = *(a2 + 72);
      *(this + 408) = v23;
      *(this + 360) = v21;
      *(this + 376) = v22;
      v24 = *(a2 + 37);
      *v182 = &unk_1F4CD5A50;
      v25 = *(v24 + 16);
      *&v182[8] = v25;
      if (this + 440 != v182)
      {
        v26 = *(v24 + 80);
        v27 = *(v24 + 72);
        *(this + 56) = v25;
        v28 = *(v24 + 40);
        v29 = *(v24 + 56);
        *(this + 456) = *(v24 + 24);
        *(this + 472) = v28;
        *(this + 488) = v29;
        *(this + 63) = v27;
        *(this + 512) = v26;
      }

      v30 = sub_1D0C345C8(v182, *v24 * 0.000000001);
      *(this + 424) = *v182;
      if (cnprint::CNPrinter::GetLogLevel(v30) <= 1)
      {
        *v182 = 12;
        v165[0] = 1;
        v31 = (*(*(this + 40) + 16))(this + 320);
        *v33.i64 = v32;
        *v34.i64 = v31;
        v35 = v32 + v31;
        v36 = sub_1D0C34690(this + 106, v33, v34);
        cnprint::CNPrinter::Print(v182, v165, "#gmp,t,%.3lf,Klobuchar parameters received and valid,decode_time_s,%.3lf", v35, v37 + v36);
      }
    }

    if (*(*(this + 1) + 840) == 1)
    {
      raven::GnssMeasurementPreprocessor::UpdateMeasurementPropagationTimeUsingDwellEndTimes(this, a2);
    }

    else
    {
      *(this + 288) = 0;
    }

    if ((raven::GnssReceiverBandCorrectionsManager::InjectVendorCorrections(this + 1280, a2 + 29, this + 137, a2 + 32, this + 888, this + 977, v10, v11) & 1) == 0)
    {
      *v182 = 12;
      v165[0] = 4;
      cnprint::CNPrinter::Print(v182, v165, "#gmp,Receiver band correction update failed");
      return 3;
    }

    if ((raven::GnssSvDatabase::UpdateTimeConversionInfo(this + 984, a2 + 32) & 1) == 0)
    {
      *v182 = 12;
      v6 = 4;
      v165[0] = 4;
      cnprint::CNPrinter::Print(v182, v165, "#gmp,Time conversion information update failed");
      return v6;
    }

    v181 = 0;
    if ((raven::GnssSvDatabase::UpdateSvInfo(this + 984, a2 + 26, &v181) & 1) == 0)
    {
      *v182 = 12;
      v165[0] = 4;
      cnprint::CNPrinter::Print(v182, v165, "#gmp,SV info update failed");
      return 5;
    }

    *&v182[8] = 0;
    *&v182[16] = 0;
    *v182 = &v182[8];
    v179[0] = 0;
    v179[1] = 0;
    v178 = v179;
    v180 = 1;
    sub_1D0C371AC(0);
    v160 = a2;
    v38 = *(a2 + 23);
    v159 = (a2 + 184);
    v39 = *(a2 + 24);
    while (v38 != v39)
    {
      *&v182[23] = 0;
      v182[0] = 0;
      *&v182[28] = -1;
      v40 = *(v38 + 8);
      v41 = v40 > 9;
      v42 = (1 << v40) & 0x2BB;
      v43 = v41 || v42 == 0;
      if (v43)
      {
        if ((*(*(this + 1) + 3808) & 1) != 0 || !*(v38 + 197))
        {
          if (*(v38 + 197))
          {
LABEL_35:
            if (raven::GnssMeasurementPreprocessor::GetCNSatIDFromGnssId(this, v38, v182))
            {
              v44 = v179[0];
              if (!v179[0])
              {
LABEL_46:
                operator new();
              }

              while (1)
              {
                while (1)
                {
                  v45 = v44;
                  v46 = v44[56];
                  v47 = *(v45 + 15);
                  v48 = v47 < *&v182[28];
                  if (v46 != v182[24])
                  {
                    v48 = v46 < v182[24];
                  }

                  if (!v48)
                  {
                    break;
                  }

                  v44 = *v45;
                  if (!*v45)
                  {
                    goto LABEL_46;
                  }
                }

                v49 = v47 > *&v182[28];
                v43 = v46 == v182[24];
                v50 = v46 > v182[24];
                if (v43)
                {
                  v50 = v49;
                }

                if (!v50)
                {
                  break;
                }

                v44 = *(v45 + 1);
                if (!v44)
                {
                  goto LABEL_46;
                }
              }
            }
          }
        }

        else if (*(v38 + 196) != 1)
        {
          goto LABEL_35;
        }
      }

      else if (*(v38 + 197))
      {
        goto LABEL_35;
      }

      if ((v182[23] & 0x80000000) != 0)
      {
        operator delete(*v182);
      }

      v38 += 200;
    }

    v51 = a2;
    if ((raven::GnssSvDatabase::PopulateGnssSvData((this + 984), &v178, this + 15, this + 248) & 1) == 0)
    {
      *v182 = 12;
      v165[0] = 3;
      cnprint::CNPrinter::Print(v182, v165, "#gmp,Populate Gnss Sv Data failed");
      v6 = 6;
      goto LABEL_75;
    }

    v52 = *(a2 + 56);
    *&v182[32] = *(a2 + 40);
    *&v182[48] = v52;
    v53 = *(a2 + 88);
    *&v182[64] = *(a2 + 72);
    *&v182[80] = v53;
    v55 = *(a2 + 24);
    *v182 = *(a2 + 8);
    v54.i64[1] = *&v182[8];
    *&v182[16] = v55;
    *v54.i64 = *(this + 288) * 0.000000001;
    *v165 = 0uLL;
    *v56.i64 = CNTimeSpan::SetTimeSpan(v165, 0, v54, v55);
    *v182 = CNTimeSpan::operator+(v182, v165, v56, v57);
    *&v182[8] = v58;
    raven::PopulateAllTimeFields(v182, a2 + 8, v59, v60);
    v61 = *&v182[48];
    *(this + 184) = *&v182[32];
    *(this + 200) = v61;
    v62 = *&v182[80];
    *(this + 216) = *&v182[64];
    *(this + 232) = v62;
    v63 = *&v182[16];
    *(this + 152) = *v182;
    *(this + 168) = v63;
    v177[0] = 0;
    v177[1] = 0;
    v176 = v177;
    v64 = *(this + 15);
    v65 = *(this + 16);
    while (v64 != v65)
    {
      v66 = *v64;
      if (*v64)
      {
        *v165 = *v64;
        sub_1D0C39F20(&v176, *(v66 + 24), *(v66 + 28), v165)[8] = v66;
      }

      v64 += 2;
    }

    if (*(this + 729) != 1 || (*(this + 730) & 1) == 0 || (*(this + 808) & 1) == 0)
    {
      *v165 = 12;
      LOBYTE(v162) = 3;
      cnprint::CNPrinter::Print(v165, &v162, "#gmp,No valid last position");
      v6 = 7;
      goto LABEL_74;
    }

    if ((raven::GnssMeasurementPreprocessor::UpdateCurrentDayAndWeek(this, a2 + 32) & 1) == 0)
    {
      *v165 = 12;
      LOBYTE(v162) = 4;
      cnprint::CNPrinter::Print(v165, &v162, "#gmp,Could not update current day and week");
      v6 = 8;
      goto LABEL_74;
    }

    LOBYTE(v174) = 0;
    v175 = 0;
    v69 = *(this + 288) + *(a2 + 14);
    if (*(this + 2296) != 1)
    {
      goto LABEL_79;
    }

    v70 = *(this + 282);
    if (v69 < v70)
    {
      *v165 = 12;
      LOBYTE(v162) = 4;
      cnprint::CNPrinter::Print(v165, &v162, "#gmp,HW clock reset detected,last,%llu,current,%llu", v70, v69);
      v71 = 0;
      v72 = 1;
      goto LABEL_82;
    }

    if (v70)
    {
      v72 = 0;
      v67 = (v69 - v70) * 0.000000001;
      v174 = v67;
      v71 = 1;
      v175 = 1;
    }

    else
    {
LABEL_79:
      v71 = 0;
      v72 = 0;
    }

LABEL_82:
    v173 = 0uLL;
    if ((raven::GnssMeasurementPreprocessor::EstimateCoarseReceiverTaiTime(this, a2 + 112, &v176, &v173, v67, v68) & 1) == 0)
    {
      v87 = *(this + 2296);
      if (v87 != 1 || !v71)
      {
        *v165 = 12;
        LOBYTE(v162) = 3;
        cnprint::CNPrinter::Print(v165, &v162, "#gmp,Could not estimate coarse receiver TAI time,last times set,%d,HW clock diff set,%d", v87, v71);
        v6 = 9;
        goto LABEL_74;
      }

      *v165 = 12;
      LOBYTE(v162) = 2;
      cnprint::CNPrinter::Print(v165, &v162, "#gmp,Fell back to propagation for coarse receiver TAI time");
      if ((*(this + 2296) & 1) == 0)
      {
        sub_1D0C42F28();
      }

      *v88.i64 = v174;
      *v165 = 0uLL;
      *v90.i64 = CNTimeSpan::SetTimeSpan(v165, 0, v88, v89);
      v173.i64[0] = CNTimeSpan::operator+(this + 278, v165, v90, v91);
      v173.i64[1] = v92;
    }

    v157 = v72;
    v158 = (this + 2224);
    v74 = (*(*a2 + 16))(a2);
    v76 = v75;
    v77 = v75;
    *v165 = 0x3CuLL;
    v80 = CNTimeSpan::operator+(this + 289, v165, v78, v79);
    v83 = v81;
    if ((v74 || (*&v76 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && (v80 || (*&v81 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v74 != v80)
    {
      if (v74 <= v80)
      {
LABEL_89:
        if ((v181 & 1) == 0)
        {
          goto LABEL_106;
        }
      }
    }

    else if (v77 < v81)
    {
      goto LABEL_89;
    }

    v170 = 0;
    v171 = 0;
    v172 = 0;
    *v165 = 0;
    memset(&v165[8], 0, 32);
    v166 = 0;
    v167 = 0;
    v168 = 0;
    v169 = 0;
    LOBYTE(v162) = 0;
    v164 = 0;
    raven::GnssSvDatabase::PopulateGnssSvData((this + 984), &v162, &v170, v165);
    if (v164 == 1)
    {
      sub_1D0C371AC(*(&v162 + 1));
    }

    *(&v162 + 1) = 0;
    v163 = 0;
    *&v162 = &v162 + 8;
    v84 = v170;
    v85 = v171;
    while (v84 != v85)
    {
      v86 = *v84;
      if (*v84)
      {
        v188[0] = *v84;
        sub_1D0C39F20(&v162, *(v86 + 24), *(v86 + 7), v188)[8] = v86;
      }

      v84 += 2;
    }

    LOWORD(v188[0]) = 12;
    v161 = 2;
    v93 = (*(*v160 + 16))(v160);
    cnprint::CNPrinter::Print(v188, &v161, "#gmp,Recomputing active GLONASS satellites,current-time,%lf,last-time,%lf,re-eval-needed,%i", v94 + v93, *(this + 290) + *(this + 289), v181);
    if (raven::GnssSvDatabase::RecomputeActiveGlonassSlots(this + 123, this + 528, &v162, &v173))
    {
      *(this + 289) = (*(*v160 + 16))(v160);
      *(this + 290) = v95;
    }

    else
    {
      LOWORD(v188[0]) = 12;
      v161 = 3;
      cnprint::CNPrinter::Print(v188, &v161, "#gmp,Could not compute active GLONASS satellites");
    }

    sub_1D0C371AC(*(&v162 + 1));
    *v165 = &v170;
    sub_1D0BBBD80(v165);
LABEL_106:
    LOBYTE(v162) = 0;
    v96 = raven::GnssMeasurementPreprocessor::DetermineNearestReceiverTaiTimeMillisecond(this, v160 + 112, &v176, &v173, &v162, v83, v82);
    if (v96)
    {
      if (v162)
      {
        v99 = 0;
LABEL_123:
        v108 = *(*(this + 1) + 3840);
        if (v108)
        {
          if (cnprint::CNPrinter::GetLogLevel(v96) <= 1)
          {
            *v165 = 12;
            LOBYTE(v162) = 1;
            cnprint::CNPrinter::Print(v165, &v162, "#gmp,Introducing artificial GNSS time offset of %d ms", v108);
          }

          v110.i64[0] = 0x3F50624DD2F1A9FCLL;
          *v109.i64 = v108 * 0.001;
          *v165 = 0uLL;
          *v111.i64 = CNTimeSpan::SetTimeSpan(v165, 0, v109, v110);
          v173.i64[0] = CNTimeSpan::operator+(&v173, v165, v111, v112);
          v173.i64[1] = v113;
        }

        v114 = raven::GnssMeasurementPreprocessor::ComputeSvElevAzimLosSpeed(this, this + 15, &v173, v99 & 1);
        if ((v114 & 1) == 0)
        {
          v6 = 12;
          if (cnprint::CNPrinter::GetLogLevel(v114) <= 1)
          {
            *v165 = 12;
            LOBYTE(v162) = 1;
            v123 = (*(*v51 + 16))(v51);
            cnprint::CNPrinter::Print(v165, &v162, "#gmp,Could not derive augmented SV data,t,%.3lf", v124 + v123);
          }

          goto LABEL_74;
        }

        v162 = 0uLL;
        if (raven::GnssMeasurementPreprocessor::PopulateGnssMeasurements(this, v159, &v173, &v176, v182, &v174, v99 & 1, &v162, v115, v116))
        {
          v117 = raven::GnssMeasurementPreprocessor::OrderGnssMeasurements(this, (this + 120));
          if ((v117 & 1) == 0)
          {
            if (cnprint::CNPrinter::GetLogLevel(v117) <= 1)
            {
              *v165 = 12;
              LOBYTE(v170) = 1;
              v125 = (*(*v160 + 16))(v160);
              cnprint::CNPrinter::Print(v165, &v170, "#gmp,Could not order GNSS measurements,t,%.3lf", v126 + v125);
            }

            v6 = 13;
            goto LABEL_74;
          }

          v119 = *v182;
          *(this + 2) = *v182;
          v120 = *(this + 15);
          v121 = *(this + 16);
          while (v120 != v121)
          {
            if (*v120)
            {
              if (raven::GNSSPreprocessedMeasurementsChecker::CanSvAndMeasurementDataBeIncluded(*v120, *(this + 1)))
              {
                ++*(this + 29);
              }

              else
              {
                v122 = v120[1];
                *v120 = 0;
                v120[1] = 0;
                if (v122)
                {
                  sub_1D0B7CAB8(v122);
                }
              }
            }

            v120 += 2;
          }

          if (*(this + 2296))
          {
            v127 = CNTimeSpan::operator-(v182, this + 283, v119, v118);
            if ((*(this + 88) & 1) == 0)
            {
              *(this + 88) = 1;
            }

            *v129.i64 = v128 + v127;
            *(this + 10) = v129.i64[0];
            v131 = 1;
            if (v71)
            {
              *v130.i64 = v127;
              *v132.i64 = CNTimeSpan::operator-(&v162, this + 280, v129, v130);
              *v134.i64 = v133 + *v132.i64;
              *(this + 8) = v174;
              v135 = (this + 64);
              *(this + 6) = v133 + *v132.i64;
              *(this + 56) = 1;
              *(this + 72) = v175;
              v136 = CNTimeSpan::operator-(&v173, v158, v134, v132);
              if ((*(this + 72) & 1) == 0)
              {
                sub_1D0C42F28();
              }

              v138 = v137 + v136;
              v139 = *v135;
              v140 = fabs(*v135 * 0.00002);
              if (vabdd_f64(v138, *v135) >= v140)
              {
                if (cnprint::CNPrinter::GetLogLevel(v136) <= 1)
                {
                  *v165 = 12;
                  LOBYTE(v170) = 1;
                  v155 = (*(*v160 + 16))(v160);
                  cnprint::CNPrinter::Print(v165, &v170, "#gmp,t,%.3lf,hw clock and tai rx time mismatch,hw_clock_diff_sec,%.8lf,full_tai_rx_time_diff_sec,%.8lf,mismatch_sec,%.8lf,threshold_sec,%.8lf", v156 + v155, v139, v138, v138 - v139, v140);
                }
              }

              else
              {
                v131 = 0;
              }
            }
          }

          else
          {
            v131 = 1;
          }

          v141 = sub_1D0C44868(v160 + 112);
          if (v141 && *(v160 + 30) > 8.44 && *(v160 + 31) > 2.86)
          {
            v142 = this + 112;
            v143 = *(this + 112);
            *(this + 6) = *(v160 + 120);
            if (v143)
            {
LABEL_159:
              if ((v131 | v99))
              {
LABEL_160:
                if (*(this + 56) == 1)
                {
                  *(this + 56) = 0;
                }

                v145 = 0;
                *(this + 112) = 0;
                goto LABEL_168;
              }

              if (*(this + 2296) == 1)
              {
                if ((v157 | *(this + 2280)))
                {
                  goto LABEL_160;
                }
              }

              else if (v157)
              {
                goto LABEL_160;
              }

              v145 = 1;
LABEL_168:
              v146 = *(v160 + 13);
              if (v146 < 0.0 || v146 > 0.2)
              {
                *v165 = 12;
                LOBYTE(v170) = 3;
                cnprint::CNPrinter::Print(v165, &v170, "#gmp,Throwing away GNSS measurements due to raven time uncertainty,time,%.2f,unc,%.2f", *(v160 + 2) + *(v160 + 1), v146);
                v6 = 14;
              }

              else
              {
                if (*(this + 2296) == 1 && v146 >= 0.0 && v146 < 0.2 && (v147 = *(this + 286), v147 >= 0.0) && v147 < 0.2)
                {
                  if (v145)
                  {
                    v148 = (v146 * v146 + v147 * v147) * 9.0e-12 * 1000000000.0 * 1000000000.0;
                    *(this + 27) = *(this + 27) + v148;
                  }
                }

                else if (v145)
                {
                  *(this + 112) = 0;
                }

                if (cnprint::CNPrinter::GetLogLevel(v141) <= 1)
                {
                  *v165 = 12;
                  LOBYTE(v170) = 1;
                  v149 = *(this + 8) * 1000.0;
                  if (!*(this + 72))
                  {
                    v149 = -1.0;
                  }

                  v150 = *(this + 10) * 1000.0;
                  if (!*(this + 88))
                  {
                    v150 = -1.0;
                  }

                  v151 = *(this + 6) * 1000.0;
                  if (!*(this + 56))
                  {
                    v151 = -1.0;
                  }

                  cnprint::CNPrinter::Print(v165, &v170, "#gmp,Preprocessed meas avail,t,%.1f,Elapsed millisec since last report,HW,%.2f,Raven,%.2f,TAI,%.2f,continuous clock,%d", *(this + 5) + *(this + 4), v149, v150, v151, *(this + 112));
                }

                v152 = v162;
                *v165 = v173;
                *&v165[16] = v162;
                v153 = *(v160 + 13);
                v154 = *(this + 2296);
                *v158 = v173;
                *(this + 140) = v152;
                *(this + 282) = v69;
                *(this + 2264) = *v182;
                *(this + 2280) = v99 & 1;
                *(this + 286) = v153;
                if ((v154 & 1) == 0)
                {
                  *(this + 2296) = 1;
                }

                v6 = 1;
                *(this + 16) = 1;
              }

              goto LABEL_74;
            }
          }

          else
          {
            v142 = this + 112;
            v144 = *(this + 112);
            *(this + 6) = xmmword_1D0EA1120;
            if (v144)
            {
              goto LABEL_159;
            }
          }

          *v142 = 1;
          goto LABEL_159;
        }

        *v165 = 12;
        LOBYTE(v170) = 4;
        cnprint::CNPrinter::Print(v165, &v170, "#gmp,Could not populate GNSS measurements");
        v6 = 11;
LABEL_74:
        sub_1D0C371AC(v177[0]);
LABEL_75:
        if (v180 == 1)
        {
          sub_1D0C371AC(v179[0]);
        }

        return v6;
      }

      if (*(this + 2296) != 1 || (*(this + 2280) & 1) != 0)
      {
        v99 = 1;
        goto LABEL_123;
      }

      if (v71)
      {
        *v97.i64 = v174;
        *v165 = 0uLL;
        *v105.i64 = CNTimeSpan::SetTimeSpan(v165, 0, v97, v98);
        v96 = CNTimeSpan::operator+(v158, v165, v105, v106);
        v99 = 0;
        v173.i64[0] = v96;
        v173.i64[1] = v107;
      }

      else
      {
        v99 = 1;
      }
    }

    else
    {
      if (*(this + 2296) != 1 || !v71)
      {
        *v165 = 12;
        LOBYTE(v170) = 3;
        cnprint::CNPrinter::Print(v165, &v170, "#gmp,Could not determine nearest receiver TAI millisecond");
        v6 = 10;
        goto LABEL_74;
      }

      *v165 = 12;
      LOBYTE(v170) = 2;
      cnprint::CNPrinter::Print(v165, &v170, "#gmp,DetermineNearestReceiverTaiTimeMillisecond, fell back to propagation");
      if ((*(this + 2296) & 1) == 0)
      {
        sub_1D0C42F28();
      }

      *v100.i64 = v174;
      *v165 = 0uLL;
      *v102.i64 = CNTimeSpan::SetTimeSpan(v165, 0, v100, v101);
      v96 = CNTimeSpan::operator+(v158, v165, v102, v103);
      v173.i64[0] = v96;
      v173.i64[1] = v104;
      v99 = *(this + 2280);
    }

    v51 = v160;
    goto LABEL_123;
  }

  if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
  {
    *v182 = 12;
    v165[0] = 1;
    cnprint::CNPrinter::Print(v182, v165, "#gmp,HandleEvent(GNSS),not configured");
  }

  return 2;
}

void sub_1D0C34484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char *a40, uint64_t a41, uint64_t a42, char *a43, uint64_t a44, char a45)
{
  sub_1D0C371AC(a40);
  if (a45 == 1)
  {
    sub_1D0C371AC(a43);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0C345C8(uint64_t a1, double a2)
{
  if ((*&a2 <= -1 || ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&a2 - 1) >= 0xFFFFFFFFFFFFFLL && (*&a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = 5;
    v9 = 4;
    cnprint::CNPrinter::Print(&v10, &v9, "Invalid GPS time %.3lf constructed from double", a2);
  }

  v7 = vcvtmd_s64_f64(a2 / 604800.0);
  *a1 = v7;
  *(a1 + 8) = a2 + v7 * -604800.0;
  return a1;
}

uint64_t sub_1D0C34690(int *a1, int8x16_t a2, int8x16_t a3)
{
  a2.i64[0] = *(a1 + 1);
  v3 = vcvtmd_s64_f64(*a2.i64) + 604800 * *a1;
  *a3.i64 = floor(*a2.i64);
  *a2.i64 = *a2.i64 - *a3.i64;
  v5[0] = 0;
  v5[1] = 0;
  CNTimeSpan::SetTimeSpan(v5, v3, a2, a3);
  return v5[0];
}

uint64_t raven::GnssReceiverBandCorrectionsManager::InjectVendorCorrections(uint64_t a1, unsigned __int8 **a2, int8x16_t *a3, uint64_t *a4, unsigned __int8 *a5, unsigned __int8 *a6, int8x16_t a7, int8x16_t a8)
{
  if (!*a1)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      LOWORD(v45) = 12;
      v44 = 1;
      cnprint::CNPrinter::Print(&v45, &v44, "#rxbc,UpdateReceiverBandCorrections,not configured");
    }

    return 0;
  }

  v40 = a4;
  v10 = *a2;
  v9 = a2[1];
  if (*a2 != v9)
  {
    v11 = (a1 + 16);
    do
    {
      v12 = *v10;
      if (*v10 && (*(v10 + 1) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && ((*(v10 + 4) & 0x7FFFFFFFu) <= 0x7F7FFFFF ? (v13 = *(v10 + 4) < 100.0) : (v13 = 0), v13))
      {
        if (*(*a1 + 547) == 1)
        {
          v24 = *v10;
          v25 = *(v10 + 2);
          v26 = -*(v10 + 1);
          v45 = v10;
          v27 = sub_1D0C34AEC(a1 + 8, v10, &std::piecewise_construct, &v45);
          v27[5] = v24;
          *(v27 + 6) = v26;
          *(v27 + 14) = v25;
        }

        else
        {
          v45 = v10;
          v28 = sub_1D0C34AEC(a1 + 8, v10, &std::piecewise_construct, &v45);
          a7 = *v10;
          *(v28 + 14) = *(v10 + 4);
          *(v28 + 5) = a7;
        }
      }

      else
      {
        v14 = *v11;
        if (*v11)
        {
          v15 = (a1 + 16);
          v16 = *v11;
          do
          {
            v17 = *(v16 + 32);
            v18 = v17 >= v12;
            v19 = v17 < v12;
            if (v18)
            {
              v15 = v16;
            }

            v16 = v16[v19];
          }

          while (v16);
          if (v15 != v11 && *(v15 + 32) <= v12)
          {
            v20 = v15[1];
            v21 = v15;
            if (v20)
            {
              do
              {
                v22 = v20;
                v20 = *v20;
              }

              while (v20);
            }

            else
            {
              do
              {
                v22 = v21[2];
                v23 = *v22 == v21;
                v21 = v22;
              }

              while (!v23);
            }

            if (*(a1 + 8) == v15)
            {
              *(a1 + 8) = v22;
            }

            --*(a1 + 24);
            sub_1D0D4B3C4(v14, v15);
            operator delete(v15);
            v12 = *v10;
          }
        }

        if (v12 && (*(v10 + 1) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(v10 + 4) & 0x7FFFFFFFu) < 0x7F800000)
        {
          LOWORD(v45) = 12;
          v44 = 2;
          cnprint::CNPrinter::Print(&v45, &v44, "#rxbc,rx_band_correction for band %d: uncertainty %.1f ns too high, ignoring and clearing cache");
        }

        else
        {
          LOWORD(v45) = 12;
          v44 = 2;
          cnprint::CNPrinter::Print(&v45, &v44, "#rxbc,Invalid rx_band_correction for band %d, ignoring and clearing cache");
        }
      }

      v10 += 24;
    }

    while (v10 != v9);
  }

  v29 = *(a1 + 40);
  if (v29)
  {
    raven::MinnesotaRfModelCompensator::FeedVendorCorrections(v29, a1 + 8, a3, a5, a6);
  }

  v30 = *(a1 + 32);
  if (v30 && (raven::GnssReceiverBandCorrectionsFilter::TickFilterAndOverwriteCorrections(v30, (a1 + 8), a3, a5, a6, a7, a8) & 1) == 0)
  {
    LOWORD(v45) = 12;
    v44 = 4;
    cnprint::CNPrinter::Print(&v45, &v44, "#rxbc,Updating filtered Rx band corrections failed");
    return 0;
  }

  if (*(*a1 + 548) == 1)
  {
    raven::GnssReceiverBandCorrectionsManager::RemoveConstellationClockOffset((a1 + 8), v40);
  }

  v31 = *(a1 + 8);
  if (v31 != (a1 + 16))
  {
    do
    {
      v32 = *(a1 + 40);
      if (v32)
      {
        raven::MinnesotaRfModelCompensator::OverwriteWithInternalEstimate(v32, v31 + 40);
      }

      v33 = 0.0;
      if (*(*a1 + 2562) != 1 || *(a1 + 880) != 1 || *(a1 + 152) != 1)
      {
        goto LABEL_54;
      }

      v34 = v31[40];
      v35 = (a1 + 256);
      v36 = (a1 + 888);
      if (v34 != 2)
      {
        if (v34 == 6)
        {
          v35 = (a1 + 272);
          v36 = (a1 + 904);
        }

        else
        {
          v35 = (a1 + 264);
          v36 = (a1 + 896);
          if (v34 != 8)
          {
            goto LABEL_54;
          }
        }
      }

      v33 = *v35;
      *v36 = *v35;
LABEL_54:
      *(v31 + 6) = *(v31 + 6) - v33;
      v37 = *(v31 + 1);
      if (v37)
      {
        do
        {
          v38 = v37;
          v37 = *v37;
        }

        while (v37);
      }

      else
      {
        do
        {
          v38 = *(v31 + 2);
          v23 = *v38 == v31;
          v31 = v38;
        }

        while (!v23);
      }

      v31 = v38;
    }

    while (v38 != (a1 + 16));
  }

  return 1;
}

uint64_t *sub_1D0C34AEC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _BYTE **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t raven::GnssReceiverBandCorrectionsFilter::TickFilterAndOverwriteCorrections(uint64_t *a1, void *a2, int8x16_t *a3, unsigned __int8 *a4, unsigned __int8 *a5, int8x16_t a6, int8x16_t a7)
{
  v9 = a1[5];
  v10 = *(v9 + 568);
  a7.i64[0] = *(v9 + 792);
  v11 = fabs(*a7.i64);
  v12 = 0.0;
  if (fabs(v10) >= 2.22044605e-16 && v11 >= 2.22044605e-16)
  {
    v12 = 1.0 / ((1.0 / *a7.i64 / v10 - 1.0 / *a7.i64) * 6.28318531);
  }

  if (fabs(v12) < 2.22044605e-16)
  {
    LOWORD(v71) = 12;
    v70 = 4;
    cnprint::CNPrinter::Print(&v71, &v70, "#rxbc,Invalid receiver band correction LPF parameters,alpha,%.4f,sampling_freq,%.2f", a4);
    return 0;
  }

  v15 = a2 + 1;
  v16 = *a2;
  if (*a2 == a2 + 1)
  {
LABEL_77:
    v42 = a1[2];
    if (!v42)
    {
      return 1;
    }

    a6.i64[0] = 0x3F847AE147AE147BLL;
    v43 = 0.01 / v12;
    while (1)
    {
      *a7.i64 = CNTimeSpan::operator-(a3, (v42 + 224), a6, a7);
      *a6.i64 = v44 + *a7.i64;
      if (v44 + *a7.i64 >= 0.0 && *a6.i64 <= 10.0)
      {
        v46 = *(v42 + 216);
        if (v46 > 9)
        {
          break;
        }
      }

      if (*a6.i64 <= v43)
      {
LABEL_118:
        v42 = *v42;
        if (!v42)
        {
          return 1;
        }
      }

      else
      {
        v42 = sub_1D0E1F4D4(a1, v42);
        if (!v42)
        {
          return 1;
        }
      }
    }

    if (*(v42 + 240))
    {
      v47 = 208;
    }

    else
    {
      v47 = 96;
    }

    if (*(v42 + 240))
    {
      v48 = 160;
    }

    else
    {
      v48 = 48;
    }

    v49 = *(v42 + 16);
    v50 = *(v42 + v48);
    a6.i64[0] = *(v42 + v47);
    v51 = *a6.i64;
    v52 = *v15;
    if (*v15)
    {
      v53 = v15;
      do
      {
        v54 = *(v52 + 32);
        v33 = v54 >= v49;
        v55 = v54 < v49;
        if (v33)
        {
          v53 = v52;
        }

        v52 = *(v52 + 8 * v55);
      }

      while (v52);
      if (v53 != v15 && v49 >= *(v53 + 32))
      {
        a6.i32[0] = *(v53 + 14);
        if (*a6.i32 > 20.0 && (v46 < 0x64 || *a6.i32 < v51))
        {
          goto LABEL_118;
        }
      }
    }

    if (!*(v42 + 16) || (v50 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (LODWORD(v51) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      goto LABEL_118;
    }

    if (*(a1[5] + 550) != 1)
    {
LABEL_117:
      *&v71 = v42 + 16;
      v60 = sub_1D0C34AEC(a2, (v42 + 16), &std::piecewise_construct, &v71);
      *(v60 + 40) = v49;
      *(v60 + 41) = LODWORD(v71);
      *(v60 + 11) = *(&v71 + 3);
      v60[6] = v50;
      *(v60 + 14) = v51;
      goto LABEL_118;
    }

    v56 = *a5;
    if ((v56 - 3) >= 2)
    {
      v58 = 1.0;
      if (v56 != 2)
      {
        goto LABEL_116;
      }

      v57 = *a4;
      if (v57 >= 0xA)
      {
        goto LABEL_116;
      }

      v59 = &unk_1D0EA216C;
    }

    else
    {
      v57 = *a4;
      v58 = 0.5;
      if (v57 > 9)
      {
LABEL_116:
        v51 = v58 * v51;
        goto LABEL_117;
      }

      v59 = &unk_1D0EA2194;
    }

    v58 = v59[v57];
    goto LABEL_116;
  }

  v18 = ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v12 >= 0.0;
  v66 = v18;
  while (1)
  {
    if (*(v16 + 40))
    {
      v19 = (v16 + 6);
      if ((v16[6] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        *a7.i64 = fabs(*(v16 + 6));
        v20 = *(v16 + 14);
        v21 = (LODWORD(v20) & 0x7FFFFFFFu) > 0x7F7FFFFF || *a7.i64 < 2.22044605e-16;
        v22 = !v21 && v20 < 20.0;
        if (v22 && v20 > 0.0)
        {
          break;
        }
      }
    }

LABEL_71:
    v39 = v16[1];
    if (v39)
    {
      do
      {
        v40 = v39;
        v39 = *v39;
      }

      while (v39);
    }

    else
    {
      do
      {
        v40 = v16[2];
        v41 = *v40 == v16;
        v16 = v40;
      }

      while (!v41);
    }

    v16 = v40;
    if (v40 == v15)
    {
      goto LABEL_77;
    }
  }

  v23 = *(v16 + 32);
  v24 = a1[1];
  if (!*&v24)
  {
    goto LABEL_44;
  }

  v25 = vcnt_s8(v24);
  v25.i16[0] = vaddlv_u8(v25);
  if (v25.u32[0] > 1uLL)
  {
    v26 = *(v16 + 32);
    if (*&v24 <= v23)
    {
      v26 = v23 % a1[1];
    }
  }

  else
  {
    v26 = (v24.i32[0] - 1) & v23;
  }

  v27 = *(*a1 + 8 * v26);
  if (!v27 || (v28 = *v27) == 0)
  {
LABEL_44:
    operator new();
  }

  while (1)
  {
    v29 = v28->u64[1];
    if (v29 == v23)
    {
      break;
    }

    if (v25.u32[0] > 1uLL)
    {
      if (v29 >= *&v24)
      {
        v29 %= *&v24;
      }
    }

    else
    {
      v29 &= *&v24 - 1;
    }

    if (v29 != v26)
    {
      goto LABEL_44;
    }

LABEL_43:
    v28 = v28->i64[0];
    if (!v28)
    {
      goto LABEL_44;
    }
  }

  if (v28[1].u8[0] != v23)
  {
    goto LABEL_43;
  }

  v30 = v28[13].u32[2];
  if (v30 > 0xBB7)
  {
    if (v28[15].i8[0])
    {
      if ((v28[7].i8[8] & 1) == 0)
      {
        sub_1D0E1F420(a1, *(v16 + 32));
        LOWORD(v71) = 12;
        v70 = 4;
        cnprint::CNPrinter::Print(&v71, &v70, "#rxbc,Could not add sample to receiver band correction LPF,sample_value,%.4f", v65);
        return 0;
      }

      if ((v28[9].i8[0] & 1) == 0)
      {
        v28[9].i8[0] = 1;
        v31 = *v19;
LABEL_63:
        *v28[10].i64 = v31;
        if (v28[10].i8[8] != 1)
        {
          sub_1D0E1F420(a1, *(v16 + 32));
          LOWORD(v71) = 12;
          v70 = 4;
          cnprint::CNPrinter::Print(&v71, &v70, "#rxbc,Could not add sample to receiver band correction uncertainty LPF,sample_value,%.4f", v64);
          return 0;
        }

        v38 = *(v16 + 14);
        if (v28[12].i8[0] == 1)
        {
          a7.i64[0] = v28[12].i64[1];
          v38 = (1.0 - *a7.i64) * *v28[13].i64 + *a7.i64 * v38;
        }

        else
        {
          v28[12].i8[0] = 1;
        }

        *v28[13].i64 = v38;
LABEL_68:
        if (v30 != -1)
        {
          v28[13].i32[2] = v30 + 1;
        }

        a6 = *a3;
        v28[14] = *a3;
        goto LABEL_71;
      }
    }

    else
    {
      v32 = *(a1[5] + 792);
      if (!v66 || (*&v32 > -1 ? (v33 = ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) : (v33 = 1), v33 ? (v34 = (*&v32 - 1) >= 0xFFFFFFFFFFFFFLL) : (v34 = 0), v34))
      {
        sub_1D0E1F420(a1, *(v16 + 32));
        LOWORD(v71) = 12;
        v70 = 4;
        cnprint::CNPrinter::Print(&v71, &v70, "#rxbc,Error in configuring receiver band correction LPF,lpf_cutoff_frequency,%.4f,signal_sample_frequency,%.4f", v62);
        return 0;
      }

      *v28[8].i64 = v12;
      *&v28[8].i64[1] = v32;
      v28[7].i8[8] = 1;
      *v28[11].i64 = v12;
      *&v28[11].i64[1] = v32;
      *&v35 = 1.0 / v32 / (1.0 / (v12 * 6.28318531) + 1.0 / v32);
      v28[10].i8[8] = 1;
      v36 = v28[3].i64[0];
      v28[9].i8[0] = 1;
      v28[9].i64[1] = v35;
      v28[10].i64[0] = v36;
      v37 = v28[6].i64[0];
      v28[12].i8[0] = 1;
      v28[12].i64[1] = v35;
      v28[13].i64[0] = v37;
      v28[15].i8[0] = 1;
    }

    a7.i64[0] = v28[9].i64[1];
    v31 = (1.0 - *a7.i64) * *v28[10].i64 + *a7.i64 * *v19;
    goto LABEL_63;
  }

  if (sub_1D0B8954C(&v28[1].i64[1], v16 + 6, 1.0 / (*(v16 + 14) * *(v16 + 14))))
  {
    sub_1D0E1F420(a1, *(v16 + 32));
    LOWORD(v71) = 12;
    v70 = 4;
    cnprint::CNPrinter::Print(&v71, &v70, "#rxbc,Could not add receiver band correction to weighted average filter,weight,%.4f,corr_value,%.4f", v61);
  }

  else
  {
    v71 = *(v16 + 14);
    if (!sub_1D0B8954C(&v28[4].i64[1], &v71, 1.0))
    {
      v30 = v28[13].u32[2];
      goto LABEL_68;
    }

    sub_1D0E1F420(a1, *(v16 + 32));
    LOWORD(v71) = 12;
    v70 = 4;
    cnprint::CNPrinter::Print(&v71, &v70, "#rxbc,Could not add receiver band correction uncertainty to weighted average filter,uncertainty,%.4f", v63);
  }

  return 0;
}

BOOL sub_1D0C3562C(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && sub_1D0C35C6C(v2))
  {
    return 1;
  }

  v3 = a1[1];
  if (v3)
  {
    if (*v3 && *(v3 + 2) < 0x5B5u || *(v3 + 8) && (*(v3 + 16) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      return 1;
    }
  }

  v4 = a1[2];
  if (v4)
  {
    if (*v4 || *(v4 + 8) && (*(v4 + 16) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(v4 + 24) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      return 1;
    }
  }

  v5 = a1[3];
  if (v5)
  {
    if (*v5 || *(v5 + 8) && (*(v5 + 16) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(v5 + 24) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      return 1;
    }
  }

  v6 = a1[4];
  if (!v6)
  {
    return 0;
  }

  if (*v6)
  {
    return 1;
  }

  return *(v6 + 8) && (*(v6 + 16) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(v6 + 24) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
}

uint64_t raven::GnssSvDatabase::UpdateTimeConversionInfo(uint64_t a1, uint64_t *a2)
{
  if (!sub_1D0C35C1C(a2))
  {
    goto LABEL_26;
  }

  v4 = *a2;
  if (sub_1D0C35C6C(*a2) && *(v4 + 8) != -32768)
  {
    v5 = *(v4 + 10);
    if (*(v4 + 16))
    {
      if ((v5 != 2) == (*(v4 + 24) != -32768))
      {
        goto LABEL_15;
      }
    }

    else if (v5 == 2)
    {
      goto LABEL_15;
    }

    v6 = *a2;
    if (*(*a2 + 8) != -32768)
    {
      v7 = *(v6 + 10);
      if (*(v6 + 16))
      {
        if ((v7 != 2) == (*(v6 + 24) != -32768))
        {
          goto LABEL_15;
        }

LABEL_13:
        v8 = *(a1 + 144);
        v9 = *(*a2 + 24);
        *(a1 + 120) = *(*a2 + 8);
        *(a1 + 136) = v9;
        if ((v8 & 1) == 0)
        {
          *(a1 + 144) = 1;
        }

        goto LABEL_15;
      }

      if (v7 != 2)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_15:
  v10 = *a2;
  if (sub_1D0C35C6C(*a2))
  {
    if (v10[4])
    {
      if ((v10[5] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v10[6] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v10[7] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v11 = *a2;
        if (*(*a2 + 32))
        {
          if ((v11[5] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v11[6] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v11[7] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v12 = *(a1 + 112);
            v13 = *(*a2 + 48);
            *(a1 + 80) = *(*a2 + 32);
            *(a1 + 96) = v13;
            if ((v12 & 1) == 0)
            {
              *(a1 + 112) = 1;
            }
          }
        }
      }
    }
  }

LABEL_26:
  if (!sub_1D0C35D08(a2))
  {
    goto LABEL_37;
  }

  v14 = a2[1];
  if (*v14 && *(v14 + 2) < 0x5B5u)
  {
    if (!*(v14 + 8))
    {
      goto LABEL_37;
    }

    v15 = *(v14 + 16);
  }

  else
  {
    if (!*(v14 + 8))
    {
      goto LABEL_37;
    }

    v15 = *(v14 + 16);
    if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_37;
    }
  }

  if (fabs(v15) != INFINITY && (*&v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v16 = *(a1 + 168);
    *(a1 + 152) = *(v14 + 8);
    if ((v16 & 1) == 0)
    {
      *(a1 + 168) = 1;
    }
  }

LABEL_37:
  if (!sub_1D0C35D78(a2))
  {
    goto LABEL_48;
  }

  v17 = a2[3];
  v18 = v17 + 8;
  v19 = *(v17 + 8);
  if (*v17)
  {
    if (!v19 || (*(v17 + 16) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_48;
    }

    v20 = *(v17 + 24);
  }

  else
  {
    if (!v19)
    {
      goto LABEL_48;
    }

    if ((*(v17 + 16) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_48;
    }

    v20 = *(v17 + 24);
    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_48;
    }
  }

  if (fabs(v20) != INFINITY)
  {
    v21 = *(a1 + 224);
    v22 = *(v18 + 16);
    *(a1 + 200) = *v18;
    *(a1 + 216) = v22;
    if ((v21 & 1) == 0)
    {
      *(a1 + 224) = 1;
    }
  }

LABEL_48:
  if (!sub_1D0C35DF0(a2))
  {
    goto LABEL_59;
  }

  v23 = a2[2];
  v24 = v23 + 8;
  v25 = *(v23 + 8);
  if (*v23)
  {
    if (!v25 || (*(v23 + 16) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_59;
    }

    v26 = *(v23 + 24);
  }

  else
  {
    if (!v25)
    {
      goto LABEL_59;
    }

    if ((*(v23 + 16) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_59;
    }

    v26 = *(v23 + 24);
    if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_59;
    }
  }

  if (fabs(v26) != INFINITY)
  {
    v27 = *(a1 + 256);
    v28 = *(v24 + 16);
    *(a1 + 232) = *v24;
    *(a1 + 248) = v28;
    if ((v27 & 1) == 0)
    {
      *(a1 + 256) = 1;
    }
  }

LABEL_59:
  if (!sub_1D0C35E68(a2))
  {
    goto LABEL_70;
  }

  v29 = a2[4];
  v30 = *(v29 + 8);
  if (*v29)
  {
    if (!v30 || (*(v29 + 16) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_70;
    }

    v31 = *(v29 + 24);
  }

  else
  {
    if (!v30)
    {
      goto LABEL_70;
    }

    if ((*(v29 + 16) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_70;
    }

    v31 = *(v29 + 24);
    if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_70;
    }
  }

  if (fabs(v31) != INFINITY)
  {
    v32 = *(a1 + 288);
    v33 = *(v29 + 24);
    *(a1 + 264) = *(v29 + 8);
    *(a1 + 280) = v33;
    if ((v32 & 1) == 0)
    {
      *(a1 + 288) = 1;
    }
  }

LABEL_70:
  if ((*(a1 + 144) & 1) == 0)
  {
    v40 = 12;
    v39 = 3;
    cnprint::CNPrinter::Print(&v40, &v39, "#svdb,No GPS leap second information present");
  }

  if ((*(a1 + 112) & 1) == 0)
  {
    v38 = 12;
    v37 = 3;
    cnprint::CNPrinter::Print(&v38, &v37, "#svdb,No GPS to UTC conversion information present");
  }

  if ((*(a1 + 168) & 1) == 0)
  {
    v36 = 12;
    v35 = 3;
    cnprint::CNPrinter::Print(&v36, &v35, "#svdb,No GLONASS to GPS time conversion information present");
  }

  return 1;
}

BOOL sub_1D0C35C1C(uint64_t *a1)
{
  if (!sub_1D0C3562C(a1))
  {
    return 0;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  return sub_1D0C35C6C(v2);
}

BOOL sub_1D0C35C6C(uint64_t a1)
{
  if (*a1)
  {
    return 1;
  }

  if (*(a1 + 8) != -32768)
  {
    v2 = *(a1 + 10);
    if (*(a1 + 16))
    {
      if ((v2 != 2) == (*(a1 + 24) != -32768))
      {
        return *(a1 + 32) && (*(a1 + 40) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 48) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 56) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      }

      return 1;
    }

    if (v2 != 2)
    {
      return 1;
    }
  }

  return *(a1 + 32) && (*(a1 + 40) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 48) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 56) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
}

BOOL sub_1D0C35D08(uint64_t *a1)
{
  result = sub_1D0C3562C(a1);
  if (result)
  {
    v3 = a1[1];
    if (!v3)
    {
      return 0;
    }

    if (*v3 && *(v3 + 2) < 0x5B5u)
    {
      return 1;
    }

    return *(v3 + 8) && (*(v3 + 16) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  }

  return result;
}

BOOL sub_1D0C35D78(uint64_t *a1)
{
  result = sub_1D0C3562C(a1);
  if (result)
  {
    v3 = a1[3];
    if (!v3)
    {
      return 0;
    }

    if (*v3)
    {
      return 1;
    }

    return *(v3 + 8) && (*(v3 + 16) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(v3 + 24) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  }

  return result;
}

BOOL sub_1D0C35DF0(uint64_t *a1)
{
  result = sub_1D0C3562C(a1);
  if (result)
  {
    v3 = a1[2];
    if (!v3)
    {
      return 0;
    }

    if (*v3)
    {
      return 1;
    }

    return *(v3 + 8) && (*(v3 + 16) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(v3 + 24) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  }

  return result;
}

BOOL sub_1D0C35E68(uint64_t *a1)
{
  result = sub_1D0C3562C(a1);
  if (result)
  {
    v3 = a1[4];
    if (!v3)
    {
      return 0;
    }

    if (*v3)
    {
      return 1;
    }

    return *(v3 + 8) && (*(v3 + 16) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(v3 + 24) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  }

  return result;
}

uint64_t raven::GnssSvDatabase::UpdateSvInfo(uint64_t a1, __int128 **a2, _BYTE *a3)
{
  *a3 = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    goto LABEL_117;
  }

  v6 = a1 + 8;
  v81 = (a1 + 56);
  v7 = (a1 + 32);
  do
  {
    sub_1D0B751F4(v89, &unk_1D0ED80C5);
    v91 = 0;
    v92 = -1;
    if ((sub_1D0C369C4(v4, v89) & 1) == 0)
    {
      LOWORD(__p[0]) = 12;
      LOBYTE(v84) = 4;
      sub_1D0D49EE8(v4, v87);
      v30 = v87;
      if (v88 < 0)
      {
        v30 = v87[0];
      }

      cnprint::CNPrinter::Print(__p, &v84, "#svdb,Could not form id,SV,%s", v30);
      if (SHIBYTE(v88) < 0)
      {
        operator delete(v87[0]);
      }

      goto LABEL_89;
    }

    if (*v4 != 2)
    {
      goto LABEL_36;
    }

    v8 = sub_1D0C36A78(a1, v89);
    v9 = v8;
    if (v6 == v8)
    {
      goto LABEL_31;
    }

    if (*(v8 + 69) == *(v4 + 5))
    {
      goto LABEL_30;
    }

    LOWORD(v84) = 12;
    LOBYTE(v83) = 2;
    sub_1D0D49EE8(v4, v87);
    v10 = SHIBYTE(v88);
    v11 = v87[0];
    sub_1D0D49EE8(v9 + 64, __p);
    v12 = v87;
    if (v10 < 0)
    {
      v12 = v11;
    }

    v13 = __p;
    if (v86 < 0)
    {
      v13 = __p[0];
    }

    cnprint::CNPrinter::Print(&v84, &v83, "#svdb,changing fcn,new,%s,old,%s,", v12, v13);
    if (v86 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v88) < 0)
    {
      operator delete(v87[0]);
    }

    v14 = *(v9 + 69);
    v15 = *v7;
    if (!*v7)
    {
      goto LABEL_22;
    }

    v16 = *(v9 + 68);
    v17 = (a1 + 32);
    while (1)
    {
      v18 = *(v15 + 7);
      if (v18 <= v14)
      {
        break;
      }

      v17 = v15;
LABEL_21:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_22;
      }
    }

    if (v18 < v14)
    {
      ++v15;
      goto LABEL_21;
    }

    v74 = *v15;
    v75 = v15;
    if (*v15)
    {
      v75 = v15;
      do
      {
        if (*(v74 + 7) >= v14)
        {
          v75 = v74;
        }

        v74 = v74[*(v74 + 7) < v14];
      }

      while (v74);
    }

    for (i = v15[1]; i; i = *(i + 8 * (*(i + 28) <= v14)))
    {
      if (*(i + 28) > v14)
      {
        v17 = i;
      }
    }

    if (v75 != v17)
    {
      while (*(v75 + 8) != v16)
      {
        v77 = v75[1];
        if (v77)
        {
          do
          {
            v78 = v77;
            v77 = *v77;
          }

          while (v77);
        }

        else
        {
          do
          {
            v78 = v75[2];
            v32 = *v78 == v75;
            v75 = v78;
          }

          while (!v32);
        }

        v75 = v78;
        if (v78 == v17)
        {
          goto LABEL_22;
        }
      }

      LOWORD(v87[0]) = 12;
      LOBYTE(__p[0]) = 2;
      cnprint::CNPrinter::Print(v87, __p, "#svdb,removing frequency-to-slot mapping,freq,%i,slot,%i", *(v75 + 7), v16);
      sub_1D0D4B370((a1 + 24), v75);
      operator delete(v75);
    }

LABEL_22:
    v19 = *v81;
    if (*v81)
    {
      v20 = v81;
      do
      {
        if (*(v19 + 28) >= v14)
        {
          v20 = v19;
        }

        v19 = *(v19 + 8 * (*(v19 + 28) < v14));
      }

      while (v19);
      if (v20 != v81)
      {
        v21 = *(v20 + 7);
        if (v21 <= v14)
        {
          LOWORD(v87[0]) = 12;
          LOBYTE(__p[0]) = 2;
          cnprint::CNPrinter::Print(v87, __p, "#svdb,removing active frequency-to-slot mapping,freq,%i,slot,%i", v21, *(v20 + 8));
          sub_1D0D4B73C((a1 + 48), v14);
        }
      }
    }

LABEL_30:
    if (*(v9 + 69) != *(v4 + 5))
    {
LABEL_31:
      LOWORD(__p[0]) = 12;
      LOBYTE(v84) = 2;
      sub_1D0D49EE8(v4, v87);
      v22 = v87;
      if (v88 < 0)
      {
        v22 = v87[0];
      }

      cnprint::CNPrinter::Print(__p, &v84, "#svdb,New SV added to frequency-to-slot mapping,%s", v22);
      if (SHIBYTE(v88) < 0)
      {
        operator delete(v87[0]);
      }

      operator new();
    }

LABEL_36:
    v84 = 0;
    v23 = sub_1D0C36A78(a1, v89);
    v24 = v23;
    if (v6 == v23)
    {
      goto LABEL_62;
    }

    v25 = *(v4 + 8);
    v26 = *(v23 + 72);
    v27 = v25 - v26;
    if (v25 - v26 < -6.0e10)
    {
      LOWORD(__p[0]) = 12;
      LOBYTE(v83) = 4;
      sub_1D0D49EE8(v4, v87);
      v28 = v87;
      if (v88 < 0)
      {
        v28 = v87[0];
      }

      cnprint::CNPrinter::Print(__p, &v83, "#svdb,Incoming t0,%.3f,is less than stored by threshold %.3f,Stored,%.3f,SV,%s", v25 * 0.000000001, -60.0, v26 * 0.000000001, v28);
      if (SHIBYTE(v88) < 0)
      {
        operator delete(v87[0]);
      }
    }

    if (*(a1 + 72) != 1)
    {
      goto LABEL_62;
    }

    if (*(v24 + 64) == 8 && raven::GnssSvDatabase::AggregateHealthL5((v24 + 64)))
    {
      if (fabs(v27) < 1000000.0)
      {
        v29 = 0;
        goto LABEL_57;
      }

LABEL_62:
      v46 = *(v4 + 224);
      if (v46 == *(v4 + 232) || !*v46 || (*(v46 + 8) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v6 != v24)
        {
          goto LABEL_66;
        }

LABEL_85:
        v87[0] = v89;
        v64 = sub_1D0C36B00(a1, v91, v92, v87);
        v65 = *v4;
        *(v64 + 80) = *(v4 + 16);
        *(v64 + 4) = v65;
        sub_1D0C36CAC(v64 + 11, (v4 + 24));
        v66 = *(v4 + 56);
        v67 = *(v4 + 72);
        v68 = *(v4 + 88);
        *(v64 + 21) = *(v4 + 104);
        *(v64 + 19) = v68;
        *(v64 + 17) = v67;
        *(v64 + 15) = v66;
        v69 = *(v4 + 120);
        v70 = *(v4 + 136);
        v71 = *(v4 + 152);
        *(v64 + 232) = *(v4 + 168);
        *(v64 + 27) = v71;
        *(v64 + 25) = v70;
        *(v64 + 23) = v69;
        v72 = *(v4 + 176);
        v73 = *(v4 + 192);
        *(v64 + 270) = *(v4 + 206);
        *(v64 + 15) = v72;
        *(v64 + 16) = v73;
        if (v64 + 8 != v4)
        {
          sub_1D0C36E20(v64 + 36, *(v4 + 224), *(v4 + 232), 0xCCCCCCCCCCCCCCCDLL * ((*(v4 + 232) - *(v4 + 224)) >> 3));
        }

        *(v64 + 78) = *(v4 + 248);
        goto LABEL_88;
      }

      v63 = (*(v46 + 16) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      if (v6 == v24 || v63)
      {
        goto LABEL_85;
      }

LABEL_66:
      v47 = *(v24 + 288);
      v48 = *(v24 + 296);
      if (v47 == v48 || !*v47 || (v47[1] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v47[2] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || *(v24 + 312) > 179)
      {
        goto LABEL_85;
      }

      v87[0] = 0;
      v87[1] = 0;
      v88 = 0;
      sub_1D0C328B8(v87, v47, v48, 0xCCCCCCCCCCCCCCCDLL * ((v48 - v47) >> 3));
      v49 = *(v24 + 312);
      v50 = *(v4 + 16);
      *(v24 + 64) = *v4;
      *(v24 + 80) = v50;
      sub_1D0C36CAC((v24 + 88), (v4 + 24));
      v51 = *(v4 + 56);
      v52 = *(v4 + 72);
      v53 = *(v4 + 88);
      *(v24 + 168) = *(v4 + 104);
      *(v24 + 152) = v53;
      *(v24 + 136) = v52;
      *(v24 + 120) = v51;
      v54 = *(v4 + 120);
      v55 = *(v4 + 136);
      v56 = *(v4 + 152);
      *(v24 + 232) = *(v4 + 168);
      *(v24 + 216) = v56;
      *(v24 + 200) = v55;
      *(v24 + 184) = v54;
      v57 = *(v4 + 176);
      v58 = *(v4 + 192);
      *(v24 + 270) = *(v4 + 206);
      *(v24 + 240) = v57;
      *(v24 + 256) = v58;
      if (v24 + 64 != v4)
      {
        sub_1D0C36E20((v24 + 288), *(v4 + 224), *(v4 + 232), 0xCCCCCCCCCCCCCCCDLL * ((*(v4 + 232) - *(v4 + 224)) >> 3));
      }

      *(v24 + 312) = *(v4 + 248);
      v59 = *(v24 + 288);
      if (v59)
      {
        *(v24 + 296) = v59;
        operator delete(v59);
        *(v24 + 288) = 0;
        *(v24 + 296) = 0;
        *(v24 + 304) = 0;
      }

      v60 = v49 + 1;
      *(v24 + 288) = *v87;
      *(v24 + 304) = v88;
      v87[1] = 0;
      v88 = 0;
      v87[0] = 0;
      *(v24 + 312) = v60;
      if (!cnprint::CNPrinter::GetLogLevel(v59))
      {
        v83 = 12;
        v82 = 0;
        sub_1D0D49EE8(v4, __p);
        v61 = __p;
        if (v86 < 0)
        {
          v61 = __p[0];
        }

        cnprint::CNPrinter::Print(&v83, &v82, "#svdb,Filled SvBandCorr gap,SV,%s,age,%d", v61, v60);
        if (v86 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v62 = v87[0];
      if (v87[0])
      {
        v87[1] = v87[0];
LABEL_82:
        operator delete(v62);
      }
    }

    else
    {
      if (*v4 != 8)
      {
        goto LABEL_62;
      }

      v31 = raven::GnssSvDatabase::AggregateHealthL5(v4);
      v32 = fabs(v27) >= 1000000.0 || v31 == 0;
      if (v32)
      {
        goto LABEL_62;
      }

      v29 = 1;
LABEL_57:
      raven::GnssSvDatabase::MergeMultiFreqInfoSplitBetweenTwoIndications((v24 + 64), v4, v87);
      v33 = v87[0];
      v87[0] = 0;
      sub_1D0C36F80(&v84, v33);
      v34 = sub_1D0C36F80(v87, 0);
      v35 = v84;
      if (v84)
      {
        v87[0] = v89;
        v36 = sub_1D0C36B00(a1, v91, v92, v87);
        v37 = *v35;
        *(v36 + 80) = *(v35 + 16);
        *(v36 + 4) = v37;
        sub_1D0C36CAC(v36 + 11, (v35 + 24));
        v38 = *(v35 + 56);
        v39 = *(v35 + 72);
        v40 = *(v35 + 88);
        *(v36 + 21) = *(v35 + 104);
        *(v36 + 19) = v40;
        *(v36 + 17) = v39;
        *(v36 + 15) = v38;
        v41 = *(v35 + 120);
        v42 = *(v35 + 136);
        v43 = *(v35 + 152);
        *(v36 + 232) = *(v35 + 168);
        *(v36 + 27) = v43;
        *(v36 + 25) = v42;
        *(v36 + 23) = v41;
        v44 = *(v35 + 176);
        v45 = *(v35 + 192);
        *(v36 + 270) = *(v35 + 206);
        *(v36 + 15) = v44;
        *(v36 + 16) = v45;
        if (v36 + 8 != v35)
        {
          sub_1D0C36E20(v36 + 36, *(v35 + 224), *(v35 + 232), 0xCCCCCCCCCCCCCCCDLL * ((*(v35 + 232) - *(v35 + 224)) >> 3));
        }

        *(v36 + 78) = *(v35 + 248);
        goto LABEL_88;
      }

      if (v29)
      {
        goto LABEL_62;
      }

      if (cnprint::CNPrinter::GetLogLevel(v34) <= 1)
      {
        LOWORD(__p[0]) = 12;
        LOBYTE(v83) = 1;
        sub_1D0D49EE8(v4, v87);
        v79 = v87;
        if (v88 < 0)
        {
          v79 = v87[0];
        }

        cnprint::CNPrinter::Print(__p, &v83, "#svdb,MergeSplitInfo,Ignored incoming ephemeris which could not be merged,SV,%s,t0,%.3f", v79, *(v4 + 8) * 0.000000001);
        if (SHIBYTE(v88) < 0)
        {
          v62 = v87[0];
          goto LABEL_82;
        }
      }
    }

LABEL_88:
    sub_1D0C36F80(&v84, 0);
LABEL_89:
    if (v90 < 0)
    {
      operator delete(v89[0]);
    }

    v4 += 256;
  }

  while (v4 != v5);
LABEL_117:
  if (!*(a1 + 16))
  {
    LOWORD(v89[0]) = 12;
    LOBYTE(v87[0]) = 3;
    cnprint::CNPrinter::Print(v89, v87, "#svdb,No SV data is currently available");
  }

  return 1;
}

void sub_1D0C368DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_1D0C36F80(&a17, 0);
  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0C369C4(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1 > 7)
  {
    switch(v3)
    {
      case 8:
        LOBYTE(v3) = 3;
        break;
      case 16:
        LOBYTE(v3) = 5;
        break;
      case 64:
        LOBYTE(v3) = 6;
        break;
      default:
LABEL_12:
        v5 = 0;
        result = 0;
        *(a2 + 24) = 0;
        goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v3 == 1)
  {
    result = 1;
    *(a2 + 24) = 1;
    *(a2 + 28) = 0;
    v5 = *(a1 + 4);
LABEL_18:
    *(a2 + 28) = v5;
    return result;
  }

  if (v3 != 2)
  {
    if (v3 != 4)
    {
      goto LABEL_12;
    }

LABEL_16:
    *(a2 + 24) = v3;
    *(a2 + 28) = 0;
    v5 = *(a1 + 4);
    goto LABEL_17;
  }

  result = 0;
  *(a2 + 24) = 2;
  *(a2 + 28) = 0;
  v5 = *(a1 + 4);
  if ((v5 - 1) < 0x18)
  {
LABEL_17:
    result = 1;
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1D0C36A78(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *(a2 + 24);
  v6 = *(a2 + 28);
  v7 = v2;
  do
  {
    v8 = *(v3 + 56);
    if (v8 == v5)
    {
      v9 = v6 < *(v3 + 60);
    }

    else
    {
      v9 = v5 < v8;
    }

    v10 = !v9;
    if (v9)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v7 = v3;
    }

    v3 = *(v3 + v11);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v12 = *(v7 + 56);
  v13 = *(v7 + 60) < v6;
  v14 = v5 == v12 ? v13 : v12 < v5;
  if (v14 == 1)
  {
    return v2;
  }

  return v7;
}

uint64_t *sub_1D0C36B00(uint64_t **a1, unsigned __int8 a2, int a3, __int128 **a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_11:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v4;
      v6 = *(v4 + 56);
      v7 = *(v5 + 15);
      v8 = v7 < a3;
      if (v6 != a2)
      {
        v8 = v6 < a2;
      }

      if (!v8)
      {
        break;
      }

      v4 = *v5;
      if (!*v5)
      {
        goto LABEL_11;
      }
    }

    v9 = v7 > a3;
    v10 = v6 == a2;
    v11 = v6 > a2;
    if (v10)
    {
      v11 = v9;
    }

    if (!v11)
    {
      return v5;
    }

    v4 = v5[1];
    if (!v4)
    {
      goto LABEL_11;
    }
  }
}

void sub_1D0C36CAC(uint64_t *a1, const void **a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *a2;
      v4 = a2[1];
      v5 = v4 - *a2;
      v6 = a1[2];
      v7 = *a1;
      if (v6 - *a1 < v5)
      {
        v8 = v5 >> 5;
        if (v7)
        {
          a1[1] = v7;
          operator delete(v7);
          v6 = 0;
          *a1 = 0;
          a1[1] = 0;
          a1[2] = 0;
        }

        if (!(v8 >> 59))
        {
          v9 = v6 >> 4;
          if (v6 >> 4 <= v8)
          {
            v9 = v5 >> 5;
          }

          if (v6 >= 0x7FFFFFFFFFFFFFE0)
          {
            v10 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v10 = v9;
          }

          sub_1D0C32760(a1, v10);
        }

        sub_1D0C5663C();
      }

      v12 = a1[1];
      v13 = v12 - v7;
      if (v12 - v7 >= v5)
      {
        if (v4 != v3)
        {
          memmove(v7, v3, v5);
        }

        v15 = &v7[v5];
      }

      else
      {
        v14 = &v3[v13];
        if (v12 != v7)
        {
          memmove(*a1, *a2, v13);
          v12 = a1[1];
        }

        if (v4 != v14)
        {
          memmove(v12, v14, v4 - v14);
        }

        v15 = &v12[v4 - v14];
      }

      a1[1] = v15;
    }
  }

  else if (*(a1 + 24))
  {
    v11 = *a1;
    if (*a1)
    {
      a1[1] = v11;
      operator delete(v11);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    sub_1D0C327F0(a1, *a2, a2[1], (a2[1] - *a2) >> 5);
    *(a1 + 24) = 1;
  }
}

uint64_t *sub_1D0C36E20(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x666666666666666)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x333333333333333)
      {
        v11 = 0x666666666666666;
      }

      else
      {
        v11 = v10;
      }

      sub_1D0C3286C(v6, v11);
    }

    sub_1D0C5663C();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v8) >> 3) >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17 - 7);
    }

    v16 = &v8[v17];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13 - 7);
      v12 = v6[1];
    }

    v15 = (a3 - v14);
    if (a3 != v14)
    {
      result = memmove(v12, v14, (v15 - 7));
    }

    v16 = &v15[v12];
  }

  v6[1] = v16;
  return result;
}

uint64_t *sub_1D0C36F80(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 224);
    if (v3)
    {
      *(v2 + 232) = v3;
      operator delete(v3);
    }

    if (*(v2 + 48) == 1)
    {
      v4 = *(v2 + 24);
      if (v4)
      {
        *(v2 + 32) = v4;
        operator delete(v4);
      }
    }

    JUMPOUT(0x1D387ECA0);
  }

  return result;
}

uint64_t raven::GnssMeasurementPreprocessor::GetCNSatIDFromGnssId(cnprint::CNPrinter *a1, unint64_t *a2, uint64_t a3)
{
  if ((*a1 & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      LOBYTE(v14) = 1;
      cnprint::CNPrinter::Print(__p, &v14, "#gmp,GetCNSatIDFromGnssId,not configured");
    }

    return 0;
  }

  v14 = *a2;
  if (v14 == 2)
  {
    v3 = (v14 >> 16) >> 24;
    v4 = *(a1 + 130);
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = (a1 + 1040);
    v6 = *(a1 + 130);
    do
    {
      if (v6[7] >= v3)
      {
        v5 = v6;
      }

      v6 = *&v6[2 * (v6[7] < v3)];
    }

    while (v6);
    if (v5 == (a1 + 1040) || v5[7] > v3)
    {
LABEL_10:
      LOBYTE(v13) = 3;
      cnprint::CNPrinter::Print(__p, &v13, "#gmp,Slot number for frequency could not be found in active list,freq,%i");
      return 0;
    }

    while (1)
    {
      while (1)
      {
        v7 = *(v4 + 7);
        if (v7 <= v3)
        {
          break;
        }

        v4 = *v4;
        if (!v4)
        {
          goto LABEL_17;
        }
      }

      if (v7 >= v3)
      {
        break;
      }

      v4 = v4[1];
      if (!v4)
      {
LABEL_17:
        sub_1D0C543A8("map::at:  key not found");
      }
    }

    BYTE4(v14) = *(v4 + 8);
  }

  if ((sub_1D0C369C4(&v14, a3) & 1) == 0)
  {
    v13 = 12;
    v12 = 4;
    sub_1D0D49EE8(&v14, __p);
    if (v11 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    cnprint::CNPrinter::Print(&v13, &v12, "#gmp,Could not fill in CN sat ID for SV,SV,%s", v9);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return 1;
}

void sub_1D0C37190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0C371AC(char *a1)
{
  if (a1)
  {
    sub_1D0C371AC(*a1);
    sub_1D0C371AC(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t raven::GnssSvDatabase::PopulateGnssUTCParametersWithGps(raven::GnssSvDatabase *this, cnnavigation::GNSSUTCParameters *a2, double a3, int8x16_t a4)
{
  v4 = *(this + 112);
  v5 = *(this + 144);
  if (v4 == 1 && (v5 & 1) != 0)
  {
    *(a2 + 33) = 0;
    *(a2 + 50) = 0u;
    *(a2 + 34) = 0u;
    *(a2 + 18) = 0u;
    *(a2 + 2) = 0u;
    *a2 = 257;
    *&v8 = *(this + 10) / 1000000000.0;
    v15 = 0uLL;
    CNTimeSpan::SetTimeSpan(&v15, 0, v8, a4);
    *(a2 + 24) = v15;
    v9 = *(this + 88);
    v10 = vdivq_f64(v9, vdupq_n_s64(0x41CDCD6500000000uLL));
    *(a2 + 8) = v10;
    v11 = *(this + 60);
    *(a2 + 10) = v11;
    if (v11 == -32768 || (v12 = *(this + 16)) == 0 || *(this + 122) != 2 || (v13 = *(this + 68), v13 == 0x8000))
    {
      *(a2 + 16) = v11;
    }

    else
    {
      *(a2 + 16) = v13;
      *v10.i64 = v12 / 1000000000.0;
      v15 = 0uLL;
      CNTimeSpan::SetTimeSpan(&v15, 0, v10, v9);
      *(a2 + 3) = v15;
    }

    return 1;
  }

  else
  {
    LOWORD(v15) = 12;
    v16 = 3;
    cnprint::CNPrinter::Print(&v15, &v16, "#svdb,Could not populate GPS to UTC conversion parameters,subsecond,%i,leapsecond,%i", v4, v5);
    return 0;
  }
}

uint64_t raven::GnssSvDatabase::PopulateGnssSvData(raven::GnssSvDatabase *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *v26 = 0;
  v29 = 0;
  v36 = 0;
  v43 = 0;
  v50 = 0;
  memset(&v26[8], 0, 36);
  v27 = 0uLL;
  v28 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v46 = 0;
  v45 = 0u;
  v44 = 0u;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v51 = 0u;
  v52 = 0u;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v25 = raven::GnssSvDatabase::PopulateGnssUtcParameters(a1, v26);
  if (!v25)
  {
    return v25;
  }

  v8 = v27;
  *(a4 + 32) = *&v26[32];
  *(a4 + 48) = v8;
  *(a4 + 64) = v28;
  v9 = *&v26[16];
  *a4 = *v26;
  *(a4 + 16) = v9;
  sub_1D0BCA40C(a3);
  v12 = *a1;
  v10 = (a1 + 8);
  v11 = v12;
  if (v12 == v10)
  {
    return v25;
  }

  do
  {
    if (*(a2 + 24) != 1)
    {
      goto LABEL_24;
    }

    sub_1D0B751F4(&v61, &unk_1D0ED80C5);
    v63 = 0;
    v64 = -1;
    if ((sub_1D0C369C4((v11 + 8), &v61) & 1) == 0)
    {
      v60 = 12;
      v59 = 4;
      sub_1D0D49EE8((v11 + 8), v57);
      v20 = v57;
      if (v58 < 0)
      {
        v20 = v57[0];
      }

      cnprint::CNPrinter::Print(&v60, &v59, "#svdb,Unexpected failure to convert to CN id,%s", v20);
      if (v58 < 0)
      {
        operator delete(v57[0]);
      }

LABEL_19:
      v21 = 0;
      goto LABEL_20;
    }

    v13 = *(a2 + 8);
    if (!v13)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v14 = *(v13 + 56);
      v15 = v14 < v63;
      v16 = *(v13 + 15);
      if (v63 == v14)
      {
        v15 = v16 < v64;
      }

      if (v15)
      {
        goto LABEL_13;
      }

      v17 = v64 < v16;
      v18 = v63 == v14;
      v19 = v63 < v14;
      if (v18)
      {
        v19 = v17;
      }

      if (!v19)
      {
        break;
      }

      ++v13;
LABEL_13:
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_19;
      }
    }

    v21 = 1;
LABEL_20:
    if (v62 < 0)
    {
      operator delete(v61);
      if (!v21)
      {
        goto LABEL_25;
      }

LABEL_24:
      operator new();
    }

    if (v21)
    {
      goto LABEL_24;
    }

LABEL_25:
    v22 = v11[1];
    if (v22)
    {
      do
      {
        v23 = v22;
        v22 = *v22;
      }

      while (v22);
    }

    else
    {
      do
      {
        v23 = v11[2];
        v18 = *v23 == v11;
        v11 = v23;
      }

      while (!v18);
    }

    v11 = v23;
  }

  while (v23 != v10);
  return v25;
}

uint64_t raven::GnssSvDatabase::PopulateGnssUtcParameters(raven::GnssSvDatabase *a1, uint64_t a2)
{
  memset(v20, 0, 46);
  memset(&v18[47], 0, 46);
  memset(&v18[32], 0, 42);
  memset(&v18[16], 0, 42);
  memset(v18, 0, 42);
  v19 = 0uLL;
  *a2 = 0;
  v2 = *(v20 + 4);
  v3 = *(&v20[2] + 4);
  *(a2 + 28) = *(&v20[3] + 6);
  *(a2 + 18) = v3;
  *(a2 + 2) = v2;
  *(a2 + 44) = 0;
  v4 = v20[0];
  *(a2 + 48) = v19;
  *(a2 + 64) = v4;
  *(a2 + 68) = 0;
  *(a2 + 72) = 0;
  v5 = (a2 + 72);
  v6 = *&v18[48];
  v7 = *&v18[52];
  *(a2 + 100) = *(&v18[54] + 2);
  *(a2 + 90) = v7;
  *(a2 + 74) = v6;
  *(a2 + 116) = 0;
  *(a2 + 120) = 0uLL;
  *(a2 + 136) = LOBYTE(v18[47]);
  *(a2 + 144) = 0;
  v8 = (a2 + 144);
  *(a2 + 172) = *(&v18[38] + 2);
  *(a2 + 162) = *&v18[36];
  *(a2 + 146) = *&v18[32];
  *(a2 + 188) = 0;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  v9 = a2 + 216;
  *(a2 + 192) = 0uLL;
  *(a2 + 212) = 0;
  *(a2 + 244) = *(&v18[22] + 2);
  *(a2 + 234) = *&v18[20];
  *(a2 + 218) = *&v18[16];
  *(a2 + 260) = 0;
  *(a2 + 264) = 0uLL;
  *(a2 + 280) = 0;
  *(a2 + 284) = 0;
  *(a2 + 288) = 0;
  *(a2 + 316) = *(&v18[6] + 2);
  *(a2 + 306) = *&v18[4];
  *(a2 + 290) = *v18;
  *(a2 + 332) = 0;
  *(a2 + 336) = 0uLL;
  *(a2 + 352) = 0;
  *(a2 + 356) = 0;
  v10 = *(a1 + 112);
  v11 = *(a1 + 144);
  if (v10 == 1 && (v11 & 1) != 0)
  {
    raven::GnssSvDatabase::PopulateGnssUTCParametersWithGps(a1, a2, 0.0, *&v18[4]);
    raven::GnssSvDatabase::PopulateGnssUTCParametersWithGlonass(a1, v5, v14, v15);
    raven::GnssSvDatabase::PopulateGnssUTCParametersWithGalileo(a1, v8);
    raven::GnssSvDatabase::PopulateGnssUTCParametersWithBeiDou(a1, v9, v16);
    if (*(a1 + 73) == 1)
    {
      raven::GnssSvDatabase::PopulateGnssUTCParametersWithNavic(a1, (v9 + 72));
    }

    *(a2 + 160) = 0;
    *(a2 + 88) = 0;
    *(a2 + 16) = 0;
    *(a2 + 232) = 0;
    result = 1;
    *(a2 + 304) = 0;
  }

  else
  {
    WORD2(v20[0]) = 12;
    LOBYTE(v18[48]) = 3;
    cnprint::CNPrinter::Print((v20 + 4), &v18[48], "#svdb,Cannot populate Sv Data,no time conversion from GPS to UTC,Subsecond,%i,Leapsecond,%i", v10, v11);
    return 0;
  }

  return result;
}

BOOL raven::GnssSvDatabase::PopulateGnssUTCParametersWithGlonass(raven::GnssSvDatabase *this, cnnavigation::GNSSUTCParameters *a2, double a3, int8x16_t a4)
{
  if ((*(this + 144) & 1) == 0)
  {
    LOWORD(v15) = 12;
    v16 = 3;
    cnprint::CNPrinter::Print(&v15, &v16, "#svdb,Failed to populate Glonass to UTC conversion parameters due to no leap second info", a3, *a4.i64);
    return 0;
  }

  v6 = *(this + 112);
  if (v6 == 1 && *(this + 168) == 1)
  {
    *a2 = 512;
    *(a2 + 2) = 0u;
    *(a2 + 18) = 0u;
    *(a2 + 34) = 0u;
    *(a2 + 50) = 0u;
    *(a2 + 33) = 0;
    result = raven::GnssSvDatabase::ConvertGpsWholeSecondTimeToGlonassTime(this, (a2 + 24), *(this + 10) / 1000000000.0);
    if (!result)
    {
      return result;
    }

    *(a2 + 1) = (*(this + 11) + *(this + 20)) / 1000000000.0;
    v8 = *(this + 12) / 1000000000.0;
  }

  else
  {
    v9 = *(this + 192);
    if (v9 != 1)
    {
      LOWORD(v15) = 12;
      v16 = 3;
      cnprint::CNPrinter::Print(&v15, &v16, "#svdb,Failed to populate Glonass to UTC conversion parameters,gps-to-utc,%i,glonass-to-gps,%i,glonass-to-utc,%i", v6, *(this + 168), v9);
      result = 0;
      goto LABEL_19;
    }

    *a2 = 512;
    *(a2 + 2) = 0u;
    *(a2 + 18) = 0u;
    *(a2 + 34) = 0u;
    *(a2 + 50) = 0u;
    *(a2 + 33) = 0;
    *&v10 = *(this + 22) / 1000000000.0;
    v15 = 0uLL;
    CNTimeSpan::SetTimeSpan(&v15, 0, v10, a4);
    *(a2 + 24) = v15;
    *(a2 + 1) = *(this + 23) / 1000000000.0;
    v8 = 0.0;
  }

  *(a2 + 2) = v8;
  v11 = *(this + 60);
  v12 = v11 - 10;
  *(a2 + 10) = v11 - 10;
  if (v11 != -32768)
  {
    v13 = *(this + 16);
    if (v13)
    {
      if (*(this + 122) == 2)
      {
        v14 = *(this + 68);
        if (v14 != 0x8000)
        {
          *(a2 + 16) = v14 - 10;
          if (raven::GnssSvDatabase::ConvertGpsWholeSecondTimeToGlonassTime(this, a2 + 3, v13 / 1000000000.0))
          {
            goto LABEL_17;
          }

          return 0;
        }
      }
    }
  }

  *(a2 + 16) = v12;
LABEL_17:
  result = 1;
LABEL_19:
  *a2 = result;
  return result;
}

BOOL raven::GnssSvDatabase::ConvertGpsWholeSecondTimeToGlonassTime(uint64_t a1, __int128 *a2, long double a3)
{
  v3 = *(a1 + 144);
  if (a3 >= 0.0 && (v3 & 1) != 0)
  {
    v5 = *(a1 + 120);
    if (v5 != 0x8000)
    {
      v6 = *(a1 + 128);
      if (v6)
      {
        if (*(a1 + 122) == 2 && *(a1 + 136) != 0x8000 && v6 / 1000000000.0 <= a3)
        {
          LOWORD(v5) = *(a1 + 136);
        }
      }
    }

    v21 = 0u;
    v22 = 0u;
    v24 = 0;
    v25 = 0;
    v20 = 513;
    v23 = v5 - 10;
    v26 = v23;
    v7 = (a3 / 604800.0);
    v8 = fmod(a3, 604800.0);
    v9.i64[0] = 0xC1212319A1CAC083;
    *v10.i64 = v8 + -561548.816;
    v27 = 0;
    v28 = 0.0;
    CNTimeSpan::SetTimeSpan(&v27, 604800 * (v7 - 1042), v10, v9);
    v18 = 1;
    v19 = 0.0;
    v11 = cnnavigation::TAITime::ToGLONASSTime(&v27, &v20, &v18);
    v14 = v11 == 0;
    if (v11)
    {
      LOWORD(v16) = 12;
      v17 = 4;
      cnprint::CNPrinter::Print(&v16, &v17, "#svdb,ConvertGpsWholeSecondTimeToGlonassTime,Failed to convert TAI time to GLONASS time,tai-time,%.3lf", v28 + v27);
    }

    else
    {
      *v13.i64 = v19;
      *v12.i64 = v19 + (v18 - 1) * 86400.0;
      v16 = 0uLL;
      CNTimeSpan::SetTimeSpan(&v16, 0, v12, v13);
      *a2 = v16;
    }
  }

  else
  {
    v20 = 12;
    LOBYTE(v18) = 3;
    cnprint::CNPrinter::Print(&v20, &v18, "#svdb,Could not converge GPS whole second time to Glonass time,leapsecond,%i,gps-time,%.3lf", v3, a3);
    return 0;
  }

  return v14;
}

uint64_t cnnavigation::TAITime::ToGLONASSTime(uint64_t a1, cnnavigation::GNSSUTCParameters *this, uint64_t a3)
{
  *a3 = 0x80000000;
  *(a3 + 8) = 0x7FF8000000000000;
  IsValid = cnnavigation::GNSSUTCParameters::IsValid(this);
  result = 0xFFFFFFFFLL;
  if (IsValid && *(this + 1) == 2)
  {
    v10 = *a1 / 86400;
    *v7.i64 = *(a1 + 8) + (*a1 - 86400 * v10) + 53935.816 - (*(this + 10) - 3);
    v11 = vcvtmd_s64_f64(*v7.i64 / 86400.0);
    v12 = v11 + v10;
    *v8.i64 = v11;
    *v7.i64 = *v7.i64 - v11 * 86400.0;
    *a3 = v12 + 1462;
    *(a3 + 8) = v7.i64[0];
    v25 = 0;
    v26 = 0;
    CNTimeSpan::SetTimeSpan(&v25, 86400 * (v12 + 1461), v7, v8);
    v13 = sub_1D0B7CF88(&v25, this + 6);
    v16 = *(a3 + 8);
    if (v13)
    {
      v17 = *(this + 16) - *(this + 10);
      *v14.i64 = v17;
      v16 = v16 - v17;
      *(a3 + 8) = v16;
      v24[0] = v17;
      v24[1] = 0;
      v25 = CNTimeSpan::operator+(&v25, v24, v14, v15);
      v26 = v18;
    }

    v19 = *(this + 1);
    v20 = *(this + 2);
    v21 = CNTimeSpan::operator-(&v25, this + 3, v14, v15);
    result = 0;
    v23 = v16 + v19 + v20 * (v22 + v21);
    LODWORD(v21) = vcvtmd_s64_f64(v23 / 86400.0);
    *a3 += v21;
    *(a3 + 8) = v23 - v21 * 86400.0;
  }

  return result;
}

uint64_t raven::GnssSvDatabase::PopulateGnssUTCParametersWithGalileo(raven::GnssSvDatabase *this, cnnavigation::GNSSUTCParameters *a2)
{
  v3 = *(this + 144);
  v4 = *(this + 112);
  if (v3 == 1 && (v4 & 1) != 0 && (*(this + 224) & 1) != 0)
  {
    *a2 = 768;
    *(a2 + 2) = 0u;
    *(a2 + 18) = 0u;
    *(a2 + 34) = 0u;
    *(a2 + 50) = 0u;
    *(a2 + 33) = 0;
    v6 = *(this + 25) / 1000000000.0;
    LODWORD(v24[0]) = vcvtmd_s64_f64(v6 / 604800.0);
    v24[1] = v6 + SLODWORD(v24[0]) * -604800.0;
    v28 = 0;
    v27 = 0u;
    memset(v26, 0, sizeof(v26));
    cnnavigation::TAITime::TAITime(v25, v24, v26);
    LOWORD(v26[0]) = 0;
    memset(v26 + 8, 0, 36);
    v27 = 0uLL;
    LODWORD(v28) = 0;
    v7 = cnnavigation::TAITime::ToGalileoTime(v25, v26);
    *v9.i64 = floor(v8);
    *v10.i64 = v8 - *v9.i64;
    v26[0] = 0uLL;
    CNTimeSpan::SetTimeSpan(v26, vcvtmd_s64_f64(v8) + 604800 * v7, v10, v9);
    *(a2 + 24) = v26[0];
    v11 = *(this + 12);
    v12.f64[0] = *(this + 26) + *(this + 11) + v11 * 0.0;
    v12.f64[1] = v11 + *(this + 27);
    *(a2 + 8) = vdivq_f64(v12, vdupq_n_s64(0x41CDCD6500000000uLL));
    v13 = *(this + 60);
    *(a2 + 10) = v13;
    if (v13 == -32768 || (v14 = *(this + 16)) == 0 || *(this + 122) != 2 || (v15 = *(this + 68), v15 == 0x8000))
    {
      *(a2 + 16) = v13;
    }

    else
    {
      *(a2 + 16) = v15;
      sub_1D0C345C8(v23, v14 / 1000000000.0);
      cnnavigation::TAITime::TAITime(v24, v23, v16, v17);
      LOWORD(v26[0]) = 0;
      memset(v26 + 8, 0, 36);
      v27 = 0uLL;
      LODWORD(v28) = 0;
      v18 = cnnavigation::TAITime::ToGalileoTime(v24, v26);
      *v20.i64 = floor(v19);
      *v21.i64 = v19 - *v20.i64;
      v26[0] = 0uLL;
      CNTimeSpan::SetTimeSpan(v26, vcvtmd_s64_f64(v19) + 604800 * v18, v21, v20);
      *(a2 + 3) = v26[0];
    }

    result = 1;
    *a2 = 1;
  }

  else
  {
    LOWORD(v26[0]) = 12;
    LOBYTE(v25[0]) = 3;
    cnprint::CNPrinter::Print(v26, v25, "#svdb,Failed to populate Galileo to UTC conversion parameters,gps-leap-second,%i,gps-to-utc,%i,galileo-to-gps,%i", v3, v4, *(this + 224));
    return 0;
  }

  return result;
}

uint64_t cnnavigation::TAITime::ToGalileoTime(cnnavigation::TAITime *this, const cnnavigation::GNSSUTCParameters *a2)
{
  v3 = *this / 604800;
  v4 = *(this + 1) + (*this - 604800 * v3) + 561548.816;
  v5 = vcvtmd_s64_f64(v4 / 604800.0);
  v6 = v4 - v5 * 604800.0;
  v7 = v3 + v5 + 18;
  if (cnnavigation::GNSSUTCParameters::IsValid(a2) && *(a2 + 1) == 3)
  {
    v17[0] = 0;
    v17[1] = 0;
    *v8.i64 = v6;
    *v10.i64 = CNTimeSpan::SetTimeSpan(v17, 604800 * v7, v8, v9);
    v11 = *(a2 + 1);
    v12 = *(a2 + 2);
    v14 = CNTimeSpan::operator-(v17, a2 + 3, v10, v13);
    v7 += vcvtmd_s64_f64((v6 + v11 + v12 * (v15 + v14)) / 604800.0);
  }

  return v7;
}

uint64_t raven::GnssSvDatabase::PopulateGnssUTCParametersWithBeiDou(raven::GnssSvDatabase *this, cnnavigation::GNSSUTCParameters *a2, int8x16_t a3)
{
  v3 = *(this + 144);
  v4 = *(this + 112);
  if (v3 == 1 && (v4 & 1) != 0)
  {
    v7 = 0uLL;
    a3.i64[0] = 0;
    v8 = 0uLL;
    if (*(this + 256) == 1)
    {
      v8 = *(this + 15);
      *a3.i64 = *(this + 29);
    }

    v21 = v8;
    *a2 = 1024;
    *(a2 + 2) = 0uLL;
    *(a2 + 18) = 0uLL;
    *(a2 + 34) = 0uLL;
    *(a2 + 50) = 0uLL;
    *(a2 + 33) = 0;
    *a3.i64 = *a3.i64 / 1000000000.0;
    v9 = vcvtmd_s64_f64(*a3.i64 / 604800.0);
    *a3.i64 = *a3.i64 + v9 * -604800.0;
    v10 = vcvtmd_s64_f64(*a3.i64) + 604800 * v9;
    *v7.i64 = floor(*a3.i64);
    *a3.i64 = *a3.i64 - *v7.i64;
    *v25 = 0;
    *&v25[8] = 0;
    CNTimeSpan::SetTimeSpan(v25, v10, a3, v7);
    *(a2 + 24) = *v25;
    *(a2 + 8) = vdivq_f64(vaddq_f64(v21, *(this + 88)), vdupq_n_s64(0x41CDCD6500000000uLL));
    v11 = *(this + 60);
    *(a2 + 10) = v11;
    if (v11 == -32768 || (v12 = *(this + 16)) == 0 || *(this + 122) != 2 || (v13 = *(this + 68), v13 == 0x8000))
    {
      *(a2 + 16) = v11;
    }

    else
    {
      *(a2 + 16) = v13;
      sub_1D0C345C8(v22, v12 / 1000000000.0);
      v14.i64[0] = 0xC1212319A1CAC083;
      *v15.i64 = v23 + -561548.816;
      v24[0] = 0;
      v24[1] = 0;
      CNTimeSpan::SetTimeSpan(v24, 604800 * (*v22 - 1042), v15, v14);
      *v25 = 0;
      memset(&v25[8], 0, 32);
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v16 = cnnavigation::TAITime::ToBeiDouTime(v24, v25);
      *v18.i64 = floor(v17);
      *v19.i64 = v17 - *v18.i64;
      *v25 = 0;
      *&v25[8] = 0;
      CNTimeSpan::SetTimeSpan(v25, vcvtmd_s64_f64(v17) + 604800 * v16, v19, v18);
      *(a2 + 3) = *v25;
    }

    result = 1;
    *a2 = 1;
  }

  else
  {
    *v25 = 12;
    v22[0] = 3;
    cnprint::CNPrinter::Print(v25, v22, "#svdb,Failed to populate BeiDou-to-UTC conversion parameters,gps-leap-second,%i,gps-to-utc,%i", v3, v4);
    return 0;
  }

  return result;
}

uint64_t raven::GnssSvDatabase::PopulateGnssSvDataForOneSv(uint64_t a1, uint64_t a2, cnnavigation::GNSSUTCParameters *a3, uint64_t a4)
{
  if ((sub_1D0C369C4(a2, a4) & 1) == 0)
  {
    v20 = 12;
    v19 = 4;
    sub_1D0D49EE8(a2, __p);
    if (v18 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    cnprint::CNPrinter::Print(&v20, &v19, "#svdb,Unexpected inability to convert to CNSatId,SV,%s", v10);
    goto LABEL_15;
  }

  std::string::operator=((a4 + 40), a4);
  v7 = *(a4 + 24);
  *(a4 + 64) = v7;
  *(a4 + 248) = *(a2 + 208);
  *(a4 + 256) = *(a2 + 16);
  if (v7 > 3u)
  {
    if (v7 == 4)
    {
      a3 = (a3 + 216);
      IsValid = cnnavigation::GNSSUTCParameters::IsValid(a3);
      if (!IsValid)
      {
        v20 = 12;
        v19 = 3;
        sub_1D0D49EE8(a2, __p);
        if (v18 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        cnprint::CNPrinter::Print(&v20, &v19, "#svdb,BDS Conversion to UTC not available,SV,%s", v13);
        goto LABEL_15;
      }

      goto LABEL_41;
    }

    if (v7 == 6)
    {
      a3 = (a3 + 288);
      IsValid = cnnavigation::GNSSUTCParameters::IsValid(a3);
      if (!IsValid)
      {
        v20 = 12;
        v19 = 3;
        sub_1D0D49EE8(a2, __p);
        if (v18 >= 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = __p[0];
        }

        cnprint::CNPrinter::Print(&v20, &v19, "#svdb,Navic Conversion to UTC not available,SV,%s", v16);
        goto LABEL_15;
      }

      goto LABEL_41;
    }

    if (v7 != 5)
    {
      goto LABEL_31;
    }

LABEL_21:
    IsValid = cnnavigation::GNSSUTCParameters::IsValid(a3);
    if (!IsValid)
    {
      v20 = 12;
      v19 = 3;
      sub_1D0D49EE8(a2, __p);
      if (v18 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      cnprint::CNPrinter::Print(&v20, &v19, "#svdb,GPS/QZSS Conversion to UTC not available,SV,%s", v12);
      goto LABEL_15;
    }

    goto LABEL_41;
  }

  if (v7 == 1)
  {
    goto LABEL_21;
  }

  if (v7 == 2)
  {
    a3 = (a3 + 72);
    IsValid = cnnavigation::GNSSUTCParameters::IsValid(a3);
    if (!IsValid)
    {
      v20 = 12;
      v19 = 3;
      sub_1D0D49EE8(a2, __p);
      if (v18 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      cnprint::CNPrinter::Print(&v20, &v19, "#svdb,GLONASS Conversion to UTC not available,SV,%s", v15);
      goto LABEL_15;
    }

    goto LABEL_41;
  }

  if (v7 != 3)
  {
LABEL_31:
    v20 = 12;
    v19 = 4;
    sub_1D0D49EE8(a2, __p);
    if (v18 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    cnprint::CNPrinter::Print(&v20, &v19, "#svdb,Unhandled SV type,SV,%s", v14);
    goto LABEL_15;
  }

  a3 = (a3 + 144);
  IsValid = cnnavigation::GNSSUTCParameters::IsValid(a3);
  if (!IsValid)
  {
    v20 = 12;
    v19 = 3;
    sub_1D0D49EE8(a2, __p);
    if (v18 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    cnprint::CNPrinter::Print(&v20, &v19, "#svdb,Galileo Conversion to UTC not available,SV,%s", v9);
LABEL_15:
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

LABEL_41:
  if (*(a2 + 48) == 1)
  {

    return raven::GnssSvDatabase::PopulateEphemFromAnchorPoints(IsValid, a2, a3, a4);
  }

  else
  {

    return raven::GnssSvDatabase::PopulateEphemFromPolynomial(IsValid, a2, a3, a4);
  }
}